create table iadmin_customnotice
(
    id               int auto_increment
        primary key,
    title_template   varchar(255) null,
    content_template longtext     null,
    notify_type      varchar(32)  not null,
    create_at        datetime(6)  not null,
    update_at        datetime(6)  not null,
    action           varchar(32)  not null,
    updated_by       varchar(64)  not null,
    version          varchar(32)  not null,
    is_for_task      tinyint(1)   not null
);

INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (1, '『ITSM』${service_type_name}单【${action}】', ' ${message}', 'SMS', '2022-04-04 18:29:33.837562', '2022-04-04 18:29:33.837589', 'SUPERVISE', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (2, '『ITSM』${service_type_name}单【${action}】', '您的需求(${title})已经处理完成，现邀请您为我们的服务进行评价。您的反馈对我们非常重要！感谢回复与建议，祝您工作愉快！
 ${ticket_url}', 'SMS', '2022-04-04 18:29:33.838770', '2022-04-04 18:29:33.838782', 'INVITE', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (3, '『ITSM』${service_type_name}单【${action}】', '您的需求(${title})已经处理完成，现邀请您为我们的服务进行评价。您的反馈对我们非常重要！感谢回复与建议，祝您工作愉快！
 ${ticket_url}', 'SMS', '2022-04-04 18:29:33.840191', '2022-04-04 18:29:33.840205', 'FINISHED', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (4, '『ITSM』${service_type_name}单【${action}】', '
 标题：${title}
  单号：<a href="${ticket_url}">${sn}</a>
 ${message}', 'SMS', '2022-04-04 18:29:33.841437', '2022-04-04 18:29:33.841449', 'TERMINATE', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (5, '『ITSM』${service_type_name}单【${action}】', '
 标题：${title}
  单号：<a href="${ticket_url}">${sn}</a>
 ${message}', 'SMS', '2022-04-04 18:29:33.842620', '2022-04-04 18:29:33.842632', 'SUSPEND', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (6, '『ITSM』${service_type_name}单【${action}】', '
 标题：${title}
  单号：<a href="${ticket_url}">${sn}</a>
 ${message}', 'SMS', '2022-04-04 18:29:33.843802', '2022-04-04 18:29:33.843814', 'UNSUSPEND', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (7, '『ITSM』${service_type_name}单【${action}】', ' 你有一条${service_type_name}工单需要关注
 标题：${title}
 单号：<a href="${ticket_url}">${sn}</a>
 服务目录：${catalog_service_name}
 当前环节：${running_status}', 'SMS', '2022-04-04 18:29:33.845008', '2022-04-04 18:29:33.845020', 'FOLLOW', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (8, '『ITSM』${service_type_name}单【${action}】', '
 标题：${title}
 单号：${sn}
 服务目录：${catalog_service_name}
 当前环节：${running_status}', 'SMS', '2022-04-04 18:29:33.846225', '2022-04-04 18:29:33.846237', 'TRANSITION', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (9, '『ITSM』${service_type_name}单任务【${action}】', '
 标题：${title}
 单号：<a href="${ticket_url}">${sn}</a>
 任务名称：${task_name}
 任务类型：${task_component_type_display}
 任务状态：${task_status_display}
 任务创建人：${task_creator}
 任务创建时间：${task_create_at}
 ${message}', 'SMS', '2022-04-04 18:29:33.847421', '2022-04-04 18:29:33.847433', 'WAITING_FOR_OPERATE', 'system', 'V2', 1);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (10, '『ITSM』${service_type_name}单任务【${action}】', '
 标题：${title}
 单号：<a href="${ticket_url}">${sn}</a>
 任务名称：${task_name}
 任务类型：${task_component_type_display}
 任务状态：${task_status_display}
 任务创建人：${task_creator}
 任务创建时间：${task_create_at}
 ${message}', 'SMS', '2022-04-04 18:29:33.848672', '2022-04-04 18:29:33.848689', 'WAITING_FOR_CONFIRM', 'system', 'V2', 1);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (11, '『ITSM』您关注的单据动态有更新', '
 标题：${title}
 单号：${sn}
 服务：${catalog_service_name}
 当前步骤：${running_status}
 当前处理人：${ticket_current_processors}
 查看详情：${ticket_url}', 'SMS', '2022-04-04 18:29:33.850376', '2022-04-04 18:29:33.850396', 'NOTIFY_FOLLOWER', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (12, '『ITSM』${service_type_name}单【${action}】', ' ${message}', 'WEIXIN', '2022-04-04 18:29:33.851836', '2022-04-04 18:29:33.851850', 'SUPERVISE', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (13, '『ITSM』${service_type_name}单【${action}】', '您的需求(${title})已经处理完成，现邀请您为我们的服务进行评价。您的反馈对我们非常重要！感谢回复与建议，祝您工作愉快！
 ${ticket_url}', 'WEIXIN', '2022-04-04 18:29:33.853039', '2022-04-04 18:29:33.853051', 'INVITE', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (14, '『ITSM』${service_type_name}单【${action}】', '您的需求(${title})已经处理完成，现邀请您为我们的服务进行评价。您的反馈对我们非常重要！感谢回复与建议，祝您工作愉快！
 ${ticket_url}', 'WEIXIN', '2022-04-04 18:29:33.854240', '2022-04-04 18:29:33.854251', 'FINISHED', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (15, '『ITSM』${service_type_name}单【${action}】', '
 标题：${title}
  单号：<a href="${ticket_url}">${sn}</a>
 ${message}', 'WEIXIN', '2022-04-04 18:29:33.855522', '2022-04-04 18:29:33.855535', 'TERMINATE', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (16, '『ITSM』${service_type_name}单【${action}】', '
 标题：${title}
  单号：<a href="${ticket_url}">${sn}</a>
 ${message}', 'WEIXIN', '2022-04-04 18:29:33.856734', '2022-04-04 18:29:33.856745', 'SUSPEND', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (17, '『ITSM』${service_type_name}单【${action}】', '
 标题：${title}
  单号：<a href="${ticket_url}">${sn}</a>
 ${message}', 'WEIXIN', '2022-04-04 18:29:33.857915', '2022-04-04 18:29:33.857926', 'UNSUSPEND', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (18, '『ITSM』${service_type_name}单【${action}】', ' 你有一条${service_type_name}工单需要关注
 标题：${title}
 单号：<a href="${ticket_url}">${sn}</a>
 服务目录：${catalog_service_name}
 当前环节：${running_status}', 'WEIXIN', '2022-04-04 18:29:33.859130', '2022-04-04 18:29:33.859141', 'FOLLOW', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (19, '『ITSM』${service_type_name}单【${action}】', '
 标题：${title}
 单号：<a href="${ticket_url}">${sn}</a>
 服务目录：${catalog_service_name}
 当前环节：${running_status}
 ', 'WEIXIN', '2022-04-04 18:29:33.860314', '2022-04-04 18:29:33.860326', 'TRANSITION', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (20, '『ITSM』${service_type_name}单任务【${action}】', '
 标题：${title}
 单号：<a href="${ticket_url}">${sn}</a>
 任务名称：${task_name}
 任务类型：${task_component_type_display}
 任务状态：${task_status_display}
 任务创建人：${task_creator}
 任务创建时间：${task_create_at}
 ${message}', 'WEIXIN', '2022-04-04 18:29:33.861499', '2022-04-04 18:29:33.861510', 'WAITING_FOR_OPERATE', 'system', 'V2', 1);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (21, '『ITSM』${service_type_name}单任务【${action}】', '
 标题：${title}
 单号：<a href="${ticket_url}">${sn}</a>
 任务名称：${task_name}
 任务类型：${task_component_type_display}
 任务状态：${task_status_display}
 任务创建人：${task_creator}
 任务创建时间：${task_create_at}
 ${message}', 'WEIXIN', '2022-04-04 18:29:33.862682', '2022-04-04 18:29:33.862694', 'WAITING_FOR_CONFIRM', 'system', 'V2', 1);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (22, '『ITSM』您关注的单据动态有更新', '
 标题：${title}
 单号：${sn}
 服务：${catalog_service_name}
 当前步骤：${running_status}
 当前处理人：${ticket_current_processors}
 查看详情：${ticket_url}', 'WEIXIN', '2022-04-04 18:29:33.863873', '2022-04-04 18:29:33.863884', 'NOTIFY_FOLLOWER', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (23, '『ITSM』${service_type_name}单【${action}】', '
<div style="height:650px;">
    <div class="title">
    </div>
    <div class="center">
        <div class="table">
            <div style="font-size：20px; border-bottom：1px solid #dedede">
                <div style="margin：10px 0 10px 20px">
                    <span style="font-weight：bold">【ITSM邀请评价】</span>
                </div>
            </div>
            <div style="margin：30px 0 10px 30px">
                <p>HI,您好！您的需求(${title})已经处理完成，现邀请您为我们的服务进行评价。您的反馈对我们非常重要！感谢回复与建议，祝您工作愉快！</p>
                <p><a href="${ticket_url}">点击查看详情</a></p>
                <br><br>
                <p>如有任何问题，可随时联系ITSM助手。</p>

                <div style="float：right;margin-right：50px">
                    <p>ITSM流程管理服务</p>
                    <span style="float：right">${today_date.year}年${today_date.month}月${today_date.day}日</span>
                </div>
            </div>
        </div>
    </div>
</div>


<style type="text/css">
    body {
        background-color：#f7f7f7;
        margin：0px;
    }

    .logo {
        margin：10px 10px 10px 20px
    }

    .title {
        background-color：#3c96ff;
        width：100%;
        height：52px;
    }

    .center {
        width：96%;
        height：500px;
        margin：auto;
        position：absolute;
        padding：20px;
    }

    .table {
        border：1px solid #dedede;
        width：100%;
        height：550px;
        background-color：white;
    }
</style>
', 'EMAIL', '2022-04-04 18:29:33.865193', '2022-04-04 18:29:33.865207', 'INVITE', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (24, '『ITSM』${service_type_name}单【${action}】', '
<div style="height:650px;">
    <div class="title">
    </div>
    <div class="center">
        <div class="table">
            <div style="font-size：20px; border-bottom：1px solid #dedede">
                <div style="margin：10px 0 10px 20px">
                    <span style="font-weight：bold">【ITSM邀请评价】</span>
                </div>
            </div>
            <div style="margin：30px 0 10px 30px">
                <p>HI,您好！您的需求(${title})已经处理完成，现邀请您为我们的服务进行评价。您的反馈对我们非常重要！感谢回复与建议，祝您工作愉快！</p>
                <p><a href="${ticket_url}">点击查看详情</a></p>
                <br><br>
                <p>如有任何问题，可随时联系ITSM助手。</p>

                <div style="float：right;margin-right：50px">
                    <p>ITSM流程管理服务</p>
                    <span style="float：right">${today_date.year}年${today_date.month}月${today_date.day}日</span>
                </div>
            </div>
        </div>
    </div>
</div>


<style type="text/css">
    body {
        background-color：#f7f7f7;
        margin：0px;
    }

    .logo {
        margin：10px 10px 10px 20px
    }

    .title {
        background-color：#3c96ff;
        width：100%;
        height：52px;
    }

    .center {
        width：96%;
        height：500px;
        margin：auto;
        position：absolute;
        padding：20px;
    }

    .table {
        border：1px solid #dedede;
        width：100%;
        height：550px;
        background-color：white;
    }
</style>
', 'EMAIL', '2022-04-04 18:29:33.866510', '2022-04-04 18:29:33.866523', 'FINISHED', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (25, '『ITSM』${service_type_name}单【${action}】', '
<div style="height:650px;">
    <div class="title">
    </div>
    <div class="center">
        <div class="table">
            <div style="font-size：20px; border-bottom：1px solid #dedede">
                <div style="margin：10px 0 10px 20px">
                    <span style="font-weight：bold">【ITSM通知】</span><span>${service_type_name}</span>
                </div>
            </div>
            <div style="margin：30px 0 10px 30px">
                <p>HI,您好！</p>
                 <span>您有需要关注的单据，请关注</span>
                 <p>标题：${title}</p>
                 <p>单号：${sn}</p>
                 <p>服务目录：${catalog_service_name}</p>
                 <p>当前环节：${running_status}</p>
                 <p>关注信息：${message}</p>
                <p><a href="${ticket_url}">点击查看详情</a></p>
                <br><br>
                <p>如有任何问题，可随时联系ITSM助手。</p>

                <div style="float：right;margin-right：50px">
                    <p>ITSM流程管理服务</p>
                    <span style="float：right">${today_date.year}年${today_date.month}月${today_date.day}日</span>
                </div>
            </div>
        </div>
    </div>
</div>



<style type="text/css">
    body {
        background-color：#f7f7f7;
        margin：0px;
    }

    .logo {
        margin：10px 10px 10px 20px
    }

    .title {
        background-color：#3c96ff;
        width：100%;
        height：52px;
    }

    .center {
        width：96%;
        height：500px;
        margin：auto;
        position：absolute;
        padding：20px;
    }

    .table {
        border：1px solid #dedede;
        width：100%;
        height：550px;
        background-color：white;
    }
</style>
', 'EMAIL', '2022-04-04 18:29:33.867754', '2022-04-04 18:29:33.867765', 'FOLLOW', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (26, '『ITSM』${service_type_name}单【${action}】', '
<div style="height:650px;">
    <div class="title">
    </div>
    <div class="center">
        <div class="table">
            <div style="font-size：20px; border-bottom：1px solid #dedede">
                <div style="margin：10px 0 10px 20px">
                    <span style="font-weight：bold">【ITSM通知】</span><span>${service_type_name}</span>
                </div>
            </div>
            <div style="margin：30px 0 10px 30px">
                <p>您好！您所申请的单据被【${action}！】</p>
                <P>标题：${title}</P>
                <P>单号：${sn}</P>
                <p>服务目录：${catalog_service_name}</p>
                <P>${message}</P>
                <p><a href="${ticket_url}">点击查看详情</a></p>
                <br><br>
                <p>如有任何问题，可随时联系ITSM助手。</p>

                <div style="float：right;margin-right：50px">
                    <p>ITSM流程管理服务</p>
                    <span style="float：right">${today_date.year}年${today_date.month}月${today_date.day}日</span>
                </div>
            </div>
        </div>
    </div>
</div>


<style type="text/css">
    body {
        background-color：#f7f7f7;
        margin：0px;
    }

    .logo {
        margin：10px 10px 10px 20px
    }

    .title {
        background-color：#3c96ff;
        width：100%;
        height：52px;
    }

    .center {
        width：96%;
        height：500px;
        margin：auto;
        position：absolute;
        padding：20px;
    }

    .table {
        border：1px solid #dedede;
        width：100%;
        height：550px;
        background-color：white;
    }
</style>
', 'EMAIL', '2022-04-04 18:29:33.869005', '2022-04-04 18:29:33.869017', 'TERMINATE', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (27, '『ITSM』${service_type_name}单【${action}】', '
<div style="height:650px;">
    <div class="title">
    </div>
    <div class="center">
        <div class="table">
            <div style="font-size：20px; border-bottom：1px solid #dedede">
                <div style="margin：10px 0 10px 20px">
                    <span style="font-weight：bold">【ITSM通知】</span><span>${service_type_name}</span>
                </div>
            </div>
            <div style="margin：30px 0 10px 30px">
                <p>您好！您所申请的单据被【${action}！】</p>
                <P>标题：${title}</P>
                <P>单号：${sn}</P>
                <p>服务目录：${catalog_service_name}</p>
                <P>${message}</P>
                <p><a href="${ticket_url}">点击查看详情</a></p>
                <br><br>
                <p>如有任何问题，可随时联系ITSM助手。</p>

                <div style="float：right;margin-right：50px">
                    <p>ITSM流程管理服务</p>
                    <span style="float：right">${today_date.year}年${today_date.month}月${today_date.day}日</span>
                </div>
            </div>
        </div>
    </div>
</div>


<style type="text/css">
    body {
        background-color：#f7f7f7;
        margin：0px;
    }

    .logo {
        margin：10px 10px 10px 20px
    }

    .title {
        background-color：#3c96ff;
        width：100%;
        height：52px;
    }

    .center {
        width：96%;
        height：500px;
        margin：auto;
        position：absolute;
        padding：20px;
    }

    .table {
        border：1px solid #dedede;
        width：100%;
        height：550px;
        background-color：white;
    }
</style>
', 'EMAIL', '2022-04-04 18:29:33.870283', '2022-04-04 18:29:33.870295', 'SUSPEND', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (28, '『ITSM』${service_type_name}单【${action}】', '
<div style="height:650px;">
    <div class="title">
    </div>
    <div class="center">
        <div class="table">
            <div style="font-size：20px; border-bottom：1px solid #dedede">
                <div style="margin：10px 0 10px 20px">
                    <span style="font-weight：bold">【ITSM通知】</span><span>${service_type_name}</span>
                </div>
            </div>
            <div style="margin：30px 0 10px 30px">
                <p>您好！您所申请的单据被【${action}！】</p>
                <P>标题：${title}</P>
                <P>单号：${sn}</P>
                <p>服务目录：${catalog_service_name}</p>
                <P>${message}</P>
                <p><a href="${ticket_url}">点击查看详情</a></p>
                <br><br>
                <p>如有任何问题，可随时联系ITSM助手。</p>

                <div style="float：right;margin-right：50px">
                    <p>ITSM流程管理服务</p>
                    <span style="float：right">${today_date.year}年${today_date.month}月${today_date.day}日</span>
                </div>
            </div>
        </div>
    </div>
</div>


<style type="text/css">
    body {
        background-color：#f7f7f7;
        margin：0px;
    }

    .logo {
        margin：10px 10px 10px 20px
    }

    .title {
        background-color：#3c96ff;
        width：100%;
        height：52px;
    }

    .center {
        width：96%;
        height：500px;
        margin：auto;
        position：absolute;
        padding：20px;
    }

    .table {
        border：1px solid #dedede;
        width：100%;
        height：550px;
        background-color：white;
    }
</style>
', 'EMAIL', '2022-04-04 18:29:33.871536', '2022-04-04 18:29:33.871548', 'UNSUSPEND', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (29, '『ITSM』${service_type_name}单【${action}】', '
<div style="height:650px;">
    <div class="title">
        <img class="logo"
             src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP4AAAAgCAYAAAAyosUOAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyFpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQyIDc5LjE2MDkyNCwgMjAxNy8wNy8xMy0wMTowNjozOSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo0MjNDNjQ1RUE0NTYxMUU4QUMxNkM3NjM0MTg2MDA1OCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo0MjNDNjQ1RkE0NTYxMUU4QUMxNkM3NjM0MTg2MDA1OCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjQyM0M2NDVDQTQ1NjExRThBQzE2Qzc2MzQxODYwMDU4IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjQyM0M2NDVEQTQ1NjExRThBQzE2Qzc2MzQxODYwMDU4Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+O4N9wgAADFxJREFUeNrsXH2sXEUV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">
    </div>
    <div class="center">
        <div class="table">
            <div style="font-size：20px; border-bottom：1px solid #dedede">
                <div style="margin：10px 0 10px 20px">
                    <span style="font-weight：bold">【ITSM通知】</span><span>${service_type_name}</span>
                </div>
            </div>
            <div style="margin：30px 0 10px 30px">
                <p>HI,您好！</p>
                <p>您有<span style="color：#6eb5fe">1</span>条${service_type_name}单【${action}】</p>

                <p>标题：${title}</p>
                <p>单号：${sn}</p>
                <p>服务目录：${catalog_service_name}</p>
                <p>当前环节：${running_status}</p>

                <p><a href="${ticket_url}">点击查看详情</a></p>
                <br><br>
                <p>如有任何问题，可随时联系ITSM助手。</p>

                <div style="float：right;margin-right：50px">
                    <p>ITSM流程管理服务</p>
                    <span style="float：right">${today_date.year}年${today_date.month}月${today_date.day}日</span>
                </div>
            </div>
        </div>
    </div>
</div>



<style type="text/css">
    body {
        background-color：#f7f7f7;
        margin：0px;
    }

    .logo {
        margin：10px 10px 10px 20px
    }

    .title {
        background-color：#3c96ff;
        width：100%;
        height：52px;
    }

    .center {
        width：96%;
        height：500px;
        margin：auto;
        position：absolute;
        padding：20px;
    }

    .table {
        border：1px solid #dedede;
        width：100%;
        height：550px;
        background-color：white;
    }
</style>
', 'EMAIL', '2022-04-04 18:29:33.872859', '2022-04-04 18:29:33.872871', 'TRANSITION', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (30, '『ITSM』${service_type_name}单【${action}】', '
<div style="height:650px;">
    <div class="title">
        <img class="logo"
             src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP4AAAAgCAYAAAAyosUOAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyFpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQyIDc5LjE2MDkyNCwgMjAxNy8wNy8xMy0wMTowNjozOSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo0MjNDNjQ1RUE0NTYxMUU4QUMxNkM3NjM0MTg2MDA1OCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo0MjNDNjQ1RkE0NTYxMUU4QUMxNkM3NjM0MTg2MDA1OCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjQyM0M2NDVDQTQ1NjExRThBQzE2Qzc2MzQxODYwMDU4IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjQyM0M2NDVEQTQ1NjExRThBQzE2Qzc2MzQxODYwMDU4Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+O4N9wgAADFxJREFUeNrsXH2sXEUV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">
    </div>
    <div class="center">
        <div class="table">
            <div style="font-size：20px; border-bottom：1px solid #dedede">
                <div style="margin：10px 0 10px 20px">
                    <span style="font-weight：bold">【ITSM通知】</span><span>${service_type_name}</span>
                </div>
            </div>
            <div style="margin：30px 0 10px 30px">
                <p>HI,您好！</p>
                <p>${message}</p>

                <p>标题：${title}</p>
                <p>单号：${sn}</p>
                <p>服务目录：${catalog_service_name}</p>
                <p>当前环节：${running_status}</p>
                <p><a href="${ticket_url}">点击查看详情</a></p>
                <br><br>
                <p>如有任何问题，可随时联系ITSM助手。</p>

                <div style="float：right;margin-right：50px">
                    <p>ITSM流程管理服务</p>
                    <span style="float：right">${today_date.year}年${today_date.month}月${today_date.day}日</span>
                </div>
            </div>
        </div>
    </div>
</div>



<style type="text/css">
    body {
        background-color：#f7f7f7;
        margin：0px;
    }

    .logo {
        margin：10px 10px 10px 20px
    }

    .title {
        background-color：#3c96ff;
        width：100%;
        height：52px;
    }

    .center {
        width：96%;
        height：500px;
        margin：auto;
        position：absolute;
        padding：20px;
    }

    .table {
        border：1px solid #dedede;
        width：100%;
        height：550px;
        background-color：white;
    }
</style>
', 'EMAIL', '2022-04-04 18:29:33.874552', '2022-04-04 18:29:33.874564', 'SUPERVISE', 'system', 'V2', 0);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (31, '『ITSM』${service_type_name}单任务【${action}】', '
<div style="height:650px;">
    <div class="title">
        <img class="logo"
             src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP4AAAAgCAYAAAAyosUOAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyFpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQyIDc5LjE2MDkyNCwgMjAxNy8wNy8xMy0wMTowNjozOSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo0MjNDNjQ1RUE0NTYxMUU4QUMxNkM3NjM0MTg2MDA1OCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo0MjNDNjQ1RkE0NTYxMUU4QUMxNkM3NjM0MTg2MDA1OCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjQyM0M2NDVDQTQ1NjExRThBQzE2Qzc2MzQxODYwMDU4IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjQyM0M2NDVEQTQ1NjExRThBQzE2Qzc2MzQxODYwMDU4Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+O4N9wgAADFxJREFUeNrsXH2sXEUV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">
    </div>
    <div class="center">
        <div class="table">
            <div style="font-size：20px; border-bottom：1px solid #dedede">
                <div style="margin：10px 0 10px 20px">
                    <span style="font-weight：bold">【ITSM通知】</span><span>${service_type_name}</span>
                </div>
            </div>
            <div style="margin：30px 0 10px 30px">
                <p>HI,您好！</p>
                <p>您有<span style="color：#6eb5fe">1</span>个${service_type_name}任务【${action}】</p>

                <p>标题：${title}</p>
                <p>单号：${sn}</p>
                <p>服务目录：${catalog_service_name}</p>
                <p>当前环节：${running_status}</p>
                <p>任务名称：${task_name}</p>
                <p>任务类型：${task_component_type_display}</p>
                <p>任务阶段：${task_status_display}</p>
                <p>任务创建人：${task_creator}</p>
                <p>任务创建时间：${task_create_at}</p>

                <p><a href="${ticket_url}">点击查看详情</a></p>
                <br><br>
                <p>如有任何问题，可随时联系ITSM助手。</p>

                <div style="float：right;margin-right：50px">
                    <p>ITSM流程管理服务</p>
                    <span style="float：right">${today_date.year}年${today_date.month}月${today_date.day}日</span>
                </div>
            </div>
        </div>
    </div>
</div>



<style type="text/css">
    body {
        background-color：#f7f7f7;
        margin：0px;
    }

    .logo {
        margin：10px 10px 10px 20px
    }

    .title {
        background-color：#3c96ff;
        width：100%;
        height：52px;
    }

    .center {
        width：96%;
        height：500px;
        margin：auto;
        position：absolute;
        padding：20px;
    }

    .table {
        border：1px solid #dedede;
        width：100%;
        height：550px;
        background-color：white;
    }
</style>
', 'EMAIL', '2022-04-04 18:29:33.875935', '2022-04-04 18:29:33.875949', 'WAITING_FOR_OPERATE', 'system', 'V2', 1);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (32, '『ITSM』${service_type_name}单任务【${action}】', '
<div style="height:650px;">
    <div class="title">
        <img class="logo"
             src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP4AAAAgCAYAAAAyosUOAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyFpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQyIDc5LjE2MDkyNCwgMjAxNy8wNy8xMy0wMTowNjozOSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo0MjNDNjQ1RUE0NTYxMUU4QUMxNkM3NjM0MTg2MDA1OCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo0MjNDNjQ1RkE0NTYxMUU4QUMxNkM3NjM0MTg2MDA1OCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjQyM0M2NDVDQTQ1NjExRThBQzE2Qzc2MzQxODYwMDU4IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjQyM0M2NDVEQTQ1NjExRThBQzE2Qzc2MzQxODYwMDU4Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+O4N9wgAADFxJREFUeNrsXH2sXEUV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">
    </div>
    <div class="center">
        <div class="table">
            <div style="font-size：20px; border-bottom：1px solid #dedede">
                <div style="margin：10px 0 10px 20px">
                    <span style="font-weight：bold">【ITSM通知】</span><span>${service_type_name}</span>
                </div>
            </div>
            <div style="margin：30px 0 10px 30px">
                <p>HI,您好！</p>
                <p>您有<span style="color：#6eb5fe">1</span>个${service_type_name}任务【${action}】</p>

                <p>标题：${title}</p>
                <p>单号：${sn}</p>
                <p>服务目录：${catalog_service_name}</p>
                <p>当前环节：${running_status}</p>
                <p>任务名称：${task_name}</p>
                <p>任务类型：${task_component_type_display}</p>
                <p>任务阶段：${task_status_display}</p>
                <p>任务创建人：${task_creator}</p>
                <p>任务创建时间：${task_create_at}</p>

                <p><a href="${ticket_url}">点击查看详情</a></p>
                <br><br>
                <p>如有任何问题，可随时联系ITSM助手。</p>

                <div style="float：right;margin-right：50px">
                    <p>ITSM流程管理服务</p>
                    <span style="float：right">${today_date.year}年${today_date.month}月${today_date.day}日</span>
                </div>
            </div>
        </div>
    </div>
</div>



<style type="text/css">
    body {
        background-color：#f7f7f7;
        margin：0px;
    }

    .logo {
        margin：10px 10px 10px 20px
    }

    .title {
        background-color：#3c96ff;
        width：100%;
        height：52px;
    }

    .center {
        width：96%;
        height：500px;
        margin：auto;
        position：absolute;
        padding：20px;
    }

    .table {
        border：1px solid #dedede;
        width：100%;
        height：550px;
        background-color：white;
    }
</style>
', 'EMAIL', '2022-04-04 18:29:33.877568', '2022-04-04 18:29:33.877581', 'WAITING_FOR_CONFIRM', 'system', 'V2', 1);
INSERT INTO bk_itsm.iadmin_customnotice (id, title_template, content_template, notify_type, create_at, update_at, action, updated_by, version, is_for_task) VALUES (33, '『ITSM』您关注的单据动态有更新', '
<div style="height:650px;">
    <div class="title">
        <img class="logo"
             src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP4AAAAgCAYAAAAyosUOAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyFpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQyIDc5LjE2MDkyNCwgMjAxNy8wNy8xMy0wMTowNjozOSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo0MjNDNjQ1RUE0NTYxMUU4QUMxNkM3NjM0MTg2MDA1OCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo0MjNDNjQ1RkE0NTYxMUU4QUMxNkM3NjM0MTg2MDA1OCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjQyM0M2NDVDQTQ1NjExRThBQzE2Qzc2MzQxODYwMDU4IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjQyM0M2NDVEQTQ1NjExRThBQzE2Qzc2MzQxODYwMDU4Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+O4N9wgAADFxJREFUeNrsXH2sXEUV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">
    </div>
    <div class="center">
        <div class="table">
            <div style="font-size：20px; border-bottom：1px solid #dedede">
                <div style="margin：10px 0 10px 20px">
                    <span style="font-weight：bold">【ITSM通知】</span>
                </div>
            </div>
            <div style="margin：30px 0 10px 30px">
                <p>HI,您好！</p>
                <p>您关注的单据动态有更新</p>

                <p>标题：${title}</p>
                <p>单号：${sn}</p>
                <p>服务：${catalog_service_name}</p>
                <p>当前步骤：${running_status}</p>
                <p>当前处理人：${ticket_current_processors}</p>
                <p><a href="${ticket_url}">点击查看详情</a></p>
                <br><br>
                <p>如有任何问题，可随时联系ITSM助手。</p>

                <div style="float：right;margin-right：50px">
                    <p>ITSM流程管理服务</p>
                    <span style="float：right">${today_date.year}年${today_date.month}月${today_date.day}日</span>
                </div>
            </div>
        </div>
    </div>
</div>

', 'EMAIL', '2022-04-04 18:29:33.879001', '2022-04-04 18:29:33.879019', 'NOTIFY_FOLLOWER', 'system', 'V2', 0);
