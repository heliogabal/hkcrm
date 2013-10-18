; Use this file to build a full distribution including Drupal core and the
; hkcrmprofile using the following command:
;
; drush make distro.make <target directory>

; hkcrm make file for local development
core = "7.x"
api = "2"

;projects[drupal][version] = "7.x"
;Use Omega8 core instead of Drupal core:
projects[drupal][type] = "core"
projects[drupal][download][type] = "get"
projects[drupal][download][url] = "http://files.aegir.cc/dev/drupal-7.23.1.tar.gz"


; Add Student CRM to the full distribution build.
;projects[student_crm][type] = profile
;projects[student_crm][version] = 1.x-dev
;projects[student_crm][download][type] = git
;projects[student_crm][download][url] = git://github.com/csumb/drupalStudentCRM.git
;projects[student_crm][download][branch] = master

projects[hkcrm][type] = profile
projects[hkcrm][version] = 1.x.dev
projects[hkcrm][download][type] = git
projects[hkcrm][download][url] = git@github.com:heliogabal/hkcrm.git
projects[hkcrm][download][branch] = master

; Profiler Library
libraries[profiler][download][type] = "get"
ibraries[profiler][download][url] = "http://ftp.drupal.org/files/projects/profiler-7.x-2.0-beta1.tar.gz"