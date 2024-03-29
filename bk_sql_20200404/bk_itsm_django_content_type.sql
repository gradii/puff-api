create table django_content_type
(
    id        int auto_increment
        primary key,
    app_label varchar(100) not null,
    model     varchar(100) not null,
    constraint django_content_type_app_label_model_76bd3d3b_uniq
        unique (app_label, model)
);

INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (7, 'account', 'user');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (8, 'account', 'userproperty');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (10, 'account', 'userproxy');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (9, 'account', 'verifyinfo');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (43, 'component_framework', 'componentmodel');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (127, 'django_nyt', 'notification');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (125, 'django_nyt', 'notificationtype');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (126, 'django_nyt', 'settings');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (128, 'django_nyt', 'subscription');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (51, 'django_signal_valve', 'signal');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (144, 'djcelery', 'crontabschedule');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (145, 'djcelery', 'intervalschedule');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (146, 'djcelery', 'periodictask');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (147, 'djcelery', 'periodictasks');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (148, 'djcelery', 'taskmeta');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (149, 'djcelery', 'tasksetmeta');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (150, 'djcelery', 'taskstate');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (151, 'djcelery', 'workerstate');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (26, 'engine', 'data');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (40, 'engine', 'datasnapshot');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (37, 'engine', 'functionswitch');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (27, 'engine', 'history');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (28, 'engine', 'historydata');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (41, 'engine', 'multicallbackdata');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (39, 'engine', 'nodecelerytask');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (29, 'engine', 'noderelationship');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (30, 'engine', 'pipelinemodel');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (31, 'engine', 'pipelineprocess');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (32, 'engine', 'processcelerytask');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (33, 'engine', 'processsnapshot');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (38, 'engine', 'schedulecelerytask');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (34, 'engine', 'scheduleservice');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (42, 'engine', 'sendfailedcelerytask');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (35, 'engine', 'status');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (36, 'engine', 'subprocessrelationship');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (11, 'iadmin', 'customnotice');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (14, 'iadmin', 'data');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (13, 'iadmin', 'migratelogs');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (15, 'iadmin', 'releaseversionlog');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (12, 'iadmin', 'systemsettings');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (25, 'log', 'logentry');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (45, 'periodic_task', 'crontabschedule');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (46, 'periodic_task', 'djceleryperiodictask');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (47, 'periodic_task', 'djceleryperiodictasks');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (48, 'periodic_task', 'intervalschedule');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (49, 'periodic_task', 'periodictask');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (50, 'periodic_task', 'periodictaskhistory');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (16, 'pipeline', 'pipelineinstance');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (17, 'pipeline', 'pipelinetemplate');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (24, 'pipeline', 'signal');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (18, 'pipeline', 'snapshot');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (23, 'pipeline', 'templatecurrentversion');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (22, 'pipeline', 'templaterelationship');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (19, 'pipeline', 'templatescheme');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (21, 'pipeline', 'templateversion');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (20, 'pipeline', 'treeinfo');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (113, 'postman', 'remoteapi');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (114, 'postman', 'remoteapiinstance');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (115, 'postman', 'remotesystem');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (124, 'requests_tracker', 'record');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (54, 'role', 'bkuserrole');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (52, 'role', 'roletype');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (53, 'role', 'userrole');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (76, 'service', 'catalogservice');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (77, 'service', 'dictdata');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (75, 'service', 'favorite');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (82, 'service', 'favoriteservice');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (81, 'service', 'oldsla');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (72, 'service', 'propertyrecord');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (78, 'service', 'service');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (79, 'service', 'servicecatalog');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (73, 'service', 'servicecategory');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (74, 'service', 'serviceproperty');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (80, 'service', 'sysdict');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (5, 'sessions', 'session');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (6, 'sites', 'site');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (98, 'sla', 'action');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (99, 'sla', 'actionpolicy');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (100, 'sla', 'day');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (101, 'sla', 'duration');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (102, 'sla', 'prioritymatrix');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (103, 'sla', 'prioritypolicy');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (104, 'sla', 'schedule');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (105, 'sla', 'sla');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (106, 'sla', 'slatimerrule');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (110, 'sla_engine', 'slaactionhistory');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (111, 'sla_engine', 'slaeventlog');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (112, 'sla_engine', 'slatask');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (122, 'task', 'sopstask');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (120, 'task', 'task');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (121, 'task', 'taskfield');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (123, 'task', 'tasklib');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (129, 'thumbnail', 'kvstore');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (70, 'ticket', 'attentionusers');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (68, 'ticket', 'signtask');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (64, 'ticket', 'status');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (67, 'ticket', 'statustransitlog');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (69, 'ticket', 'taskfield');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (55, 'ticket', 'ticket');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (59, 'ticket', 'ticketcomment');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (60, 'ticket', 'ticketcommentinvite');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (56, 'ticket', 'ticketeventlog');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (57, 'ticket', 'ticketfield');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (62, 'ticket', 'ticketfollowernotifylog');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (65, 'ticket', 'ticketglobalvariable');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (71, 'ticket', 'ticketorganization');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (61, 'ticket', 'ticketstatedraft');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (63, 'ticket', 'ticketsupervisenotifylog');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (58, 'ticket', 'tickettemplate');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (66, 'ticket', 'tickettoticket');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (107, 'ticket_status', 'statustransit');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (108, 'ticket_status', 'ticketstatus');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (109, 'ticket_status', 'ticketstatusconfig');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (116, 'trigger', 'action');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (117, 'trigger', 'actionschema');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (118, 'trigger', 'trigger');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (119, 'trigger', 'triggerrule');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (44, 'variable_framework', 'variablemodel');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (143, 'weixin_core', 'bkweixinuser');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (130, 'wiki', 'article');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (131, 'wiki', 'articleforobject');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (132, 'wiki', 'articleplugin');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (133, 'wiki', 'articlerevision');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (134, 'wiki', 'reusableplugin');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (135, 'wiki', 'revisionplugin');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (136, 'wiki', 'revisionpluginrevision');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (137, 'wiki', 'simpleplugin');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (138, 'wiki', 'urlpath');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (139, 'wiki_attachments', 'attachment');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (140, 'wiki_attachments', 'attachmentrevision');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (141, 'wiki_images', 'image');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (142, 'wiki_images', 'imagerevision');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (91, 'workflow', 'condition');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (83, 'workflow', 'defaultfield');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (84, 'workflow', 'field');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (92, 'workflow', 'globalvariable');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (85, 'workflow', 'notify');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (86, 'workflow', 'state');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (93, 'workflow', 'table');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (96, 'workflow', 'taskfieldschema');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (97, 'workflow', 'taskschema');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (94, 'workflow', 'templatefield');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (87, 'workflow', 'transition');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (95, 'workflow', 'trigger');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (88, 'workflow', 'workflow');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (89, 'workflow', 'workflowsnap');
INSERT INTO bk_itsm.django_content_type (id, app_label, model) VALUES (90, 'workflow', 'workflowversion');
