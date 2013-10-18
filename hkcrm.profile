<?php

if(!function_exists('profiler_v2')) {
  require_once('libraries/profiler/profiler.inc');
}

profiler_v2('hkcrm');

/**
* Implements hook_install_tasks_alter() (Panopoly)
*/
function hkcrm_install_tasks_alter(&$tasks, $install_state) {

  // Magically go one level deeper in solving years of dependency problems
  require_once(drupal_get_path('module', 'panopoly_core') . '/panopoly_core.profile.inc');
  $tasks['install_load_profile']['function'] = 'panopoly_core_install_load_profile';
}

/**
* Implements hook_install_tasks(). (Panopoly)
*/
function hkcrm_install_tasks($install_state) {
  $tasks = array();

  // Add the Panopoly App Server to the Installation Process
  require_once(drupal_get_path('module', 'apps') . '/apps.profile.inc');
  $tasks = $tasks + apps_profile_install_tasks($install_state, array('machine name' => 'panopoly', 'default apps' => array('panopoly_demo')));

  return $tasks;

  return array('profiler_install_profile_complete' => array('display_name' => st('Setting up CRM')),
  'hkcrm_setup_permissions' => array('display_name' => st('Setting up CRM permissions')));
}


/**
 * Final site setup for the install profile.
 */
function hkcrm_setup_permissions(&$install_state) {
  //Give the super admin user the "advisor" role to make contexts happy.
  $user = user_load(1);
  foreach (user_roles() as $rid => $role) {
    if ($role == 'advisor') {
      $user->roles[$rid] = $role;
    }
  }
  user_save($user);

  $advisor = db_select('role', 'r')
             ->fields('r', array('rid'))
             ->condition('name', 'advisor')
             ->execute()
             ->fetchField();

  $advisor_permissions = array('access content',
                               'access course enrollment information',
                               'access guiders',
                               'access student_crm dashboard',
                               'access user profiles',
                               'advise students',
                               'complete crm webforms',
                               'create crm_core_activity entities of bundle note',
                               'create relations',
                               'create tasks for other users',
                               'create webform content',
                               'delete any webform content',
                               'delete relations',
                               'edit any webform content',
                               'edit relations',
                               'maintain own task list',
                               'open and close cases',
                               'track user history',
                               'use text format filtered_html',
                               'view any crm_core_activity entity of bundle note',
                               'view any crm_core_contact entity of bundle student',
                               'view crm dashboard',
                               'view date repeats',
                               'view gpa data',
                               'view hold data');

  if($advisor) {
    foreach($advisor_permissions as $permission) {
      $fields = array('rid' => $advisor,
                       'permission' => $permission,
                       'module' => 'crm_student');
      db_insert('role_permission')
        ->fields($fields)
        ->execute();
    }
  }
}