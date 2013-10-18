api = 2
core = 7.x

; ************************************************
; ********** OPEN ATRIUM'S DEPENDENCIES **********

; Features Override
projects[features_override][version] = 2.0-rc1
projects[features_override][subdir] = contrib
projects[features_override][type] = module

; Diff
projects[diff][subdir] = contrib
projects[diff][version] = 3.2

; Job Scheduler
projects[job_scheduler][subdir] = contrib
projects[job_scheduler][version] = 2.0-alpha3

; Mail System
projects[mailsystem][subdir] = contrib
projects[mailsystem][version] = 2.34

; HTML Mail
projects[htmlmail][subdir] = contrib
projects[htmlmail][version] = 2.65

; ******** End Open Atrium's Dependencies ********
; ************************************************

; ************************************************
; ************* Open Atrium Plugins RELEASE ******

projects[oa_core][subdir] = contrib
projects[oa_core][version] = 2.0-rc1

projects[oa_discussion][subdir] = contrib
projects[oa_discussion][version] = 2.0-beta3

projects[oa_wiki][subdir] = contrib
projects[oa_wiki][version] = 2.0-beta3

projects[oa_events][subdir] = contrib
projects[oa_events][version] = 2.0-beta4

projects[oa_events_import][subdir] = contrib
projects[oa_events_import][version] = 2.0-beta2

projects[oa_worktracker][subdir] = contrib
projects[oa_worktracker][version] = 1.0-beta1

projects[oa_contextual_tabs][subdir] = contrib
projects[oa_contextual_tabs][version] = 2.0-beta1

projects[oa_notifications][subdir] = contrib
projects[oa_notifications][version] = 2.0-beta2

projects[oa_media][subdir] = contrib
projects[oa_media][version] = 2.0-beta2

projects[oa_subspaces][subdir] = contrib
projects[oa_subspaces][version] = 2.0-beta4

projects[oa_radix][type] = theme
projects[oa_radix][version] = 2.0-rc1

; ********** End Open Atrium's Plugins ***********
; ************************************************

; ************************************************
; ************* Open Atrium Modules **************
; (Modules in distro, not yet their own separate projects)

; ##### oa_markdown #####
; Markdown
projects[markdown][subdir] = contrib
projects[markdown][version] = 1.1

; ##### oa_search #####
; Date Facets
projects[date_facets][subdir] = contrib
projects[date_facets][download][type] = git
projects[date_facets][download][url] = http://git.drupal.org/project/date_facets.git
projects[date_facets][download][branch] = 7.x-1.x
projects[date_facets][download][revision] = a7a35f8

; ##### oa_analytics #####
; Google Analytics
projects[google_analytics][subdir] = contrib
projects[google_analytics][version] = 1.3

; ************************************************
; ******************* PANOPOLY *******************

; Note that makefiles are parsed bottom-up, and that in Drush concurrency might
; interfere with recursion.
; Therefore PANOPOLY needs to be listed AT THE BOTTOM of this makefile,
; so we can patch or update certain projects fetched by Panopoly's makefiles.

; Someday maybe we can turn this on to just inherit Panopoly
;projects[panopoly][type] = profile
;projects[panopoly][version] = 1.0-rc5
; but, Drupal.org does not support recursive profiles
; and also does not support include[]
; so we need to copy the panopoly.make file here

projects[panopoly_core][version] = 1.0-rc5
projects[panopoly_core][subdir] = panopoly
projects[panopoly_core][download][branch] = 7.x-1.x
projects[panopoly_core][download][type] = git
projects[panopoly_core][patch][1837312] = http://drupal.org/files/panopoly_core-panelizer_default_permissions-1837312-26.patch

projects[panopoly_images][version] = 1.0-rc5
projects[panopoly_images][subdir] = panopoly

projects[panopoly_theme][version] = 1.0-rc5
projects[panopoly_theme][subdir] = panopoly

projects[panopoly_magic][version] = 1.0-rc5
projects[panopoly_magic][subdir] = panopoly
projects[panopoly_magic][download][branch] = 7.x-1.x
projects[panopoly_magic][download][type] = git
projects[panopoly_magic][patch][2016527] = http://drupal.org/files/2016643_panopoly_magic_screw_pre_render_with_2016527-5.patch
projects[panopoly_magic][patch][2017159] = http://drupal.org/files/2017159_panopoly_magic_preview_post_render-22.patch

projects[panopoly_widgets][version] = 1.0-rc5
projects[panopoly_widgets][subdir] = panopoly

projects[panopoly_admin][version] = 1.0-rc5
projects[panopoly_admin][subdir] = panopoly
projects[panopoly_admin][download][branch] = 7.x-1.x
projects[panopoly_admin][download][type] = git
projects[panopoly_admin][patch][2071133] = http://drupal.org/files/panopoly_admin-2071133-3.patch

projects[panopoly_users][version] = 1.0-rc5
projects[panopoly_users][subdir] = panopoly

projects[panopoly_pages][version] = 1.0-rc5
projects[panopoly_pages][subdir] = panopoly
projects[panopoly_pages][download][branch] = 7.x-1.x
projects[panopoly_pages][download][type] = git
projects[panopoly_pages][patch][2008762] = http://drupal.org/files/2008762-panopoly_pages-missing-depedency-15.patch
projects[panopoly_pages][patch][1837312] = http://drupal.org/files/panopoly_pages-panelizer_default_permissions-1837312-26.patch

projects[panopoly_wysiwyg][version] = 1.0-rc5
projects[panopoly_wysiwyg][subdir] = panopoly

projects[panopoly_search][version] = 1.0-rc5
projects[panopoly_search][subdir] = panopoly

; ***************** End Panopoly *****************
; ************************************************

; crm core prerequisites
projects[views][version] = 3.7
projects[views][subdir] = "contrib"
projects[views_bulk_operations][version] = 3.1
projects[views_bulk_operations][subdir] = "contrib"
projects[views_data_export][version] = 3.0-beta6
projects[views_data_export][subdir] = "contrib"
projects[ctools][version] = 1.3
projects[ctools][subdir] = "contrib"
projects[entity][version] = 1.2
projects[entity][subdir] = "contrib"
projects[entity][patch][] = "https://drupal.org/files/unformatted_replacements-2082407-1.patch"
projects[entityreference][version] = 1.0
projects[entityreference][subdir] = "contrib"
projects[relation][version] = 1.0-rc4
projects[relation][subdir] = "contrib"
projects[token][version] = 1.5
projects[token][subdir] = "contrib"
projects[panels][version] = 3.3
projects[panels][subdir] = "contrib"
projects[rules][version] = 2.5
projects[rules][subdir] = "contrib"
projects[libraries][version] = 2.1
projects[libraries][subdir] = "contrib"

; fields
projects[name][type] = module
projects[name][download][type] = git
projects[name][download][revision] = 81f94b50be6af80d02656896a66692b34f4adf3e
projects[name][download][branch] = 7.x-1.x
projects[name][subdir] = "contrib"
projects[field_group][version] = 1.3
projects[field_group][subdir] = "contrib"
projects[cck_phone][type] = module
projects[cck_phone][download][type] = git
projects[cck_phone][download][revision] = 61ccc9fb055f2eefa29e8d654ec2794ecb32b119
projects[cck_phone][download][branch] = 7.x-1.x
projects[cck_phone][subdir] = "contrib"
projects[link][version] = 1.1
projects[link][subdir] = "contrib"
projects[email][version] = 1.2
projects[email][subdir] = "contrib"
projects[addressfield][version] = 1.0-beta4
projects[addressfield][subdir] = "contrib"
projects[date][version] = 2.6
projects[date][subdir] = "contrib"
projects[select_or_other][version] = 2.20
projects[select_or_other][subdir] = "contrib"

; helper modules
projects[flot][type] = module
projects[flot][subdir] = "contrib"
projects[flot][download][type] = git
projects[flot][download][branch] = 7.x-1.x
projects[flot][download][revision] = 516ecd418878d3a10abd38342862a4fafdf12179
projects[flot][patch][] = "https://drupal.org/files/flot-php54compat_0.patch"
projects[flot][patch][] = "https://drupal.org/files/flot-pie_options-2088021-3.patch"

projects[mailsystem][version] = 2.34
projects[mailsystem][subdir] = "contrib"
projects[mimemail][version] = 1.0-beta1
projects[mimemail][subdir] = "contrib"
projects[admin_menu][version] = 3.0-rc4
projects[admin_menu][subdir] = "contrib"
projects[features][version] = 2.0-rc5
projects[features][subdir] = "contrib"
projects[context][version] = 3.0-rc1
projects[context][subdir] = "contrib"
projects[strongarm][version] = 2.0
projects[strongarm][subdir] = "contrib"

; download crm core modules
projects[crm_core][version] = 0.961
projects[crm_core][subdir] = "contrib"

; download crm core profile
projects[crm_core_profile][version] = 1.0-beta7
projects[crm_core_profile][subdir] = "contrib"

; libraries
libraries[flot][download][type] = get
libraries[flot][download][url] = https://flot.googlecode.com/files/flot-0.7.tar.gz
libraries[flot][destination] = modules/contrib/flot

; sample content
projects[uuid][version] = 1.0-alpha5
projects[uuid][subdir] = "contrib"
projects[uuid_features][version] = 1.0-alpha3
projects[uuid_features][subdir] = "contrib"


; **************** Extra Modules *****************
; ************************************************

projects[module_filter][version] = 1.8
projects[module_filter][subdir] = contrib

projects[admin_menu][version] = "3.0-rc4"
projects[admin_menu][subdir] = "contrib"

projects[admin_views][version] = "1.2"
projects[admin_views][subdir] = "contrib"

projects[fpa][version] = "2.3"
projects[fpa][subdir] = "contrib"

projects[ds][version] = "2.6"
projects[ds][subdir] = "contrib"

projects[views_bulk_operations][version] = "3.1"
projects[views_bulk_operations][subdir] = "contrib"

projects[rules_link][version] = 1.0-beta5
projects[rules_link][subdir] = contrib