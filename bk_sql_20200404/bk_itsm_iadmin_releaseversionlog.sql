create table iadmin_releaseversionlog
(
    id           int auto_increment
        primary key,
    version      varchar(64) not null,
    log          longtext    null,
    lang         varchar(64) not null,
    create_at    date        not null,
    is_latest    tinyint(1)  not null,
    version_size int         not null
);

INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (1, '2.5.8', '<p>【新增】运营数据新版发布</p>
<p>【新增】处理人为空时的异常处理</p>
<p>【新增】标准运维发布场景支持补单</p>
<p>【优化】列表查询速度优化</p>
<p>【优化】组织架构人员显示优化</p>
<p>【优化】导出逻辑优化</p>
<p>【修复】分派转单时的处理人问题</p>
<p>【修复】我的待办显示不准确问题</p>
', 'zh-cn', '2021-03-16', 1, 2508);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (2, '2.5.7', '<p>【新增】标准运维发布场景支持</p>
<p>【新增】权限中心审批场景支持</p>
<p>【新增】redis sentinel支持双密码</p>
<p>【新增】单据首页重构改版</p>
<p>【新增】单据详情重构改版</p>
<p>【新增】前后端国际化合入</p>
<p>【新增】权限中心内置审批流程</p>
<p>【新增】处理人角色增加指定不同人的上级人员</p>
<p>【新增】撤单策略逻辑的优化，支持用户配置撤单规则</p>
<p>【新增】单据详情添加触发器记录显示tab</p>
<p>【修复】产品文档跳转文档中心</p>
<p>【修复】增加内置的流程和服务</p>
<p>【修复】拉取处理人接口根据兼容不传提单人场景</p>
<p>【修复】pipeline切换存储后增加备选</p>
<p>【修复】增加API对接的可见范围配置</p>
<p>【修复】title区分企业版社区版</p>
<p>【修复】帮助信息添加产品文档和问题反馈</p>
<p>【修复】产品文档跳转文档中心</p>
<p>【修复】关注单据鉴权逻辑</p>
<p>【优化】moa申请内容优化</p>
<p>【优化】401时大量报错</p>
<p>【优化】上报权限中心改为内部paas地址</p>
<p>【修复】企业微信机器人发送消息过大时分条</p>
<p>【修复】流程详情接口报错，extra字段超限问题</p>
<p>【修复】提单服务详情接口权限问题</p>
<p>【修复】未启用服务出现在服务入口</p>
<p>【修复】自定义表格数据未回填</p>
<p>【修复】自定义表格必填项未校验</p>
<p>【修复】修复提单页面代提单人字段未显示</p>
<p>【修复】无法取消关联单</p>
<p>【修复】修复首页待我审批数字未刷新</p>
<p>【修复】处理人组织架构时页面卡死</p>
<p>【修复】处理标准运维任务异常</p>
<p>【优化】cmdb角色成员同步机制</p>
<p>【优化】导出功能优化</p>
<p>【修复】线条触发器无法触发</p>
<p>【修复】获取角色成员权限问题</p>
<p>【修复】执行节点任务处理人看不到单据</p>
<p>【修复】节点克隆字段找不到问题</p>
<p>【修复】删除节点无效问题</p>
<p>【优化】选择服务，根据服务提单字段进行导出文档</p>
<p>【新增】日志检索流程初始化部署</p>
<p>【修复】修复因为从堆栈中获取不到函数名报错导致告警发送失败问题</p>
<p>【修复】修复名片不显示</p>
<p>【优化】服务搜索支持大小写</p>
<p>【修复】节点详情未显示当前步骤</p>
', 'zh-cn', '2020-12-30', 0, 2507);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (3, '2.5.6', '<p>【新增】流程配置添加支持权限中心角色</p>
<p>【新增】缓存支持redis配置</p>
<p>【新增】支持权限中心实例搜索</p>
<p>【新增】名片添加部门信息</p>
<p>【新增】增加可见范围第三方系统，调整获取服务列表接口</p>
', 'zh-cn', '2020-10-22', 0, 2506);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (4, '2.5.5', '<p>【优化】新版人员器替换</p>
<p>【优化】基础配置去除组织架构开关</p>
<p>【修复】单独部署的时候migrate报错问题</p>
<p>【修复】流程服务 名称修改</p>
<p>【修复】跨域人员的选择问题</p>
<p>【修复】IAM请求链接默认用BK_PAAS_INNER_HOST</p>
', 'zh-cn', '2020-09-26', 0, 2505);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (5, '2.5.4', '<p>【新增】支持2.4版本权限升级</p>
<p>【优化】提单字段校验提示优化</p>
<p>【优化】关注人和关注单据命名冲突，关注人修改为邮件通知</p>
<p>【优化】单据列表所有单据放开，所有人都能看到</p>
<p>【修复】内置审批流程初始化失败问题修复</p>
<p>【修复】任务失败时缺少查看按钮，任务名称非新建时可以点击查看任务详情</p>
<p>【修复】提交单据的时候，会将上一节点的脏数据传入到当前操作的节点</p>
<p>【修复】工作台缩放后样式错乱</p>
<p>【修复】当前处理步骤显示不完整</p>
<p>【修复】流程里，如果没选择业务，不能看到标准运维模版</p>
<p>【修复】统计数据去掉自动执行的内容</p>
<p>【修复】关注单据失败后前端样式任然显示已关注</p>
<p>【修复】关闭叉号返回首页无效</p>
<p>【修复】创建人授权的时候，如果创建人本身不存在，则不进行关联</p>
<p>【修复】无权限页面会出现很多报错信息</p>
<p>【修复】api 请求参数后面的内容会覆盖前面的内容</p>
<p>【修复】分派后当前步骤未更新</p>
<p>【修复】操作节点无法再次勾选复现框，无法提交</p>
<p>【修复】富文本控件升级，解决加粗无效等小问题</p>
<p>【修复】api 日志信息中名称和处理时间没显示</p>
', 'zh-cn', '2020-09-07', 0, 2504);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (6, '2.5.3', '<p>【修复】 预览流程图的时候提示无权限问题修复</p>
<p>【修复】 新建任务页面未渲染，控制台有报错</p>
', 'zh-cn', '2020-09-01', 0, 2503);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (7, '2.5.2', '<p>【新增】审批节点</p>
', 'zh-cn', '2020-08-20', 0, 2502);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (8, '2.4.4', '<p>【新增】支持2.4版本权限升级</p>
<p>【修复】关注单据失败后前端样式任然显示已关注</p>
<p>【新增】新增字段默认值添加富文本</p>
<p>【新增】api 节点失败处理（重试，忽略）</p>
<p>【新增】关注人按钮，关注人列表</p>
<p>【新增】新增批量审批</p>
<p>【新增】富文本内的链接支持新标签中打开</p>
<p>【优化】处理人组件改为失焦时显示一行，聚焦时显示多行</p>
<p>【优化】如果会签节点或审批节点状态为处理中，则提交按钮显示 loading</p>
<p>【优化】调整标准运维任务重试和创建的逻辑</p>
<p>【优化】快速提单跳转到全局视图我的申请单</p>
<p>【优化】审批条件参数优化</p>
<p>【优化】工单列表和工单详情样式优化</p>
<p>【优化】magicbox 升级到 2.2.1</p>
<p>【优化】节点详情和日志详情样式优化</p>
<p>【优化】pass 平台申请权限会在新浏览器标签中打开</p>
<p>【优化】权限申请通过后，菜单栏刷新未更新权限</p>
<p>【修复】任务执行的时候抛出异常问题修复</p>
<p>【修复】普通任务显示标准运维任务图标</p>
<p>【修复】流程管理员时，流程设计菜单未显示</p>
<p>【修复】流程设计字段列表新增字段后已有顺序被还原</p>
<p>【修复】任务执行的时候用处理人的身份执行标准运维任务</p>
<p>【修复】修复单据列表当前步骤为空</p>
<p>【修复】修复日志详情信息只展示最后一条</p>
<p>【修复】修复关注人通知模版</p>
<p>【修复】修复日志详情处理人字段错误</p>
', 'zh-cn', '2020-08-10', 0, 2404);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (9, '2.5.1', '<p>【新增】支持权限分组</p>
<p>【新增】支持新建关联权限</p>
', 'zh-cn', '2020-07-31', 0, 2501);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (10, '2.5.0', '<p>【新增】权限中心V3接入</p>
<p>【优化】icon 迁移到 iconcool</p>
<p>【优化】标准运维 icon 替换</p>
<p>【优化】全局视图表格优化，添加处理人，筛选条件，自定义表头等；i18n 提取</p>
<p>【优化】时间控件默认显示当前时间</p>
<p>【优化】后台管理菜单 icon 替换</p>
<p>【修复】全局视图当前处理人错误处理</p>
<p>【修复】pass 平台无法打开权限中心</p>
<p>【修复】有默认隐藏字段无法提交</p>
<p>【修复】修复流程设计部署权限问题</p>
<p>【修复】修复 sla 服务协议管理新建，关闭了提醒机制任然存在校验</p>
<p>【修复】修复 /role/users api 没有 role_type 参数</p>
<p>【修复】修复工单详情信息闪烁</p>
', 'zh-cn', '2020-07-02', 0, 2500);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (11, '2.4.2', '<p>【新增】任务模板配置管理</p>
<p>【新增】流程内支持任务组功能</p>
<p>【新增】节点配置去掉动作按钮</p>
<p>【新增】触发器配置管理</p>
<p>【新增】流程中支持触发器功能</p>
<p>【新增】支持流程管理员及负责人的配置管理</p>
<p>【新增】API支持编写沙箱代码</p>
<p>【新增】流程内的公共变量扩展</p>
<p>【新增】系统功能开关丰富</p>
<p>【新增】提供快速提单入口</p>
<p>【修复】修复富文本打包缺陷</p>
', 'zh-cn', '2020-05-26', 0, 2402);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (12, '2.4.1', '<p>【新增】前端组件升级</p>
<p>【新增】节点支持配置动态处理人</p>
<p>【新增】节点支持配置动作按钮</p>
<p>【新增】节点字段支持关联约束</p>
<p>【新增】支持人员配置组织架构（依赖：open_paas_ee&gt;=2.10.26，usermgr_ee&gt;=2.0.5）</p>
<p>【修复】中文名流程导出乱码问题</p>
', 'zh-cn', '2020-03-11', 0, 2401);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (13, '2.3.1', '<p>【新增】SLA管理模块</p>
<p>【新增】基础模型和公共字段</p>
<p>【新增】服务目录排序</p>
<p>【新增】单选人员选择器组件</p>
<p>【新增】通知模板开放配置</p>
<p>【新增】国际化</p>
<p>【新增】母子单功能</p>
<p>【优化】升级开发框架</p>
<p>【优化】升级到Python3</p>
<p>【优化】开放字段Key的编辑</p>
<p>【优化】单据撤回功能可开关</p>
<p>【优化】流程预览功能可开关</p>
<p>【优化】知识库提供目录视图</p>
<p>【优化】单号区分服务</p>
<p>【优化】运营数据查询优化</p>
<p>【数据迁移】字段配置相关数据，需要以管理员身份运行 <a href="http://{host}/helper/db_fix_after_2_3_1/">http://{host}/helper/db_fix_after_2_3_1/</a></p>
', 'zh-cn', '2019-12-27', 0, 2301);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (14, '2.2.28', '<p>[数据迁移] 优化服务目录查询，需要以管理员身份运行 <a href="http://{host}/helper/db_fix_for_service_catalog/">http://{host}/helper/db_fix_for_service_catalog/</a></p>
', 'zh-cn', '2020-04-27', 0, 2228);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (15, '2.2.27', '<p>[新增] 表格字段支持具体某一列的必填校验</p>
<p>[修复] 并行节点或分支条件不存在时默认分支无法进入问题</p>
<p>[修复] API字段还原报错问题</p>
<p>[修复] 首页状态图表展示不正确问题</p>
<p>[修复] 附件打回的时候，处理页面没有正常渲染出来</p>
', 'zh-cn', '2020-04-22', 0, 2227);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (16, '2.2.26', '<p>[修复] API节点执行完之后无法进入下一个节点</p>
', 'zh-cn', '2020-04-14', 0, 2226);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (17, '2.2.25', '<p>[修复] 隐藏整型字段获取为空的后台报错，导致流程无法继续问题修复</p>
<p>[修复] 正整数校验误报问题修复</p>
', 'zh-cn', '2020-04-10', 0, 2225);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (18, '2.2.24', '<p>[修复] 隐藏字段导致API字段数据无法选择问题修复</p>
<p>[修复] 刷新按钮403问题修复</p>
', 'zh-cn', '2020-04-09', 0, 2224);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (19, '2.2.23', '<p>[修复] API请求去除ticket_id等隐式参数</p>
<p>[修复] 消息模板渲染问题</p>
<p>[修复] 异常日志过长过长存储报错问题</p>
<p>[修复] 时间如果没有填写内容的时候不做任何校验</p>
<p>[修复] 流程内设置默认值删除之后再保存提示默认值错误问题</p>
', 'zh-cn', '2020-03-30', 0, 2223);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (20, '2.2.22', '<p>[新增] 支持自助接入网关的接口</p>
<p>[修复] API节点参数保存失败问题</p>
<p>[新增] 英文日志功能</p>
<p>[新增] 支持环境变量初始化超级管理员</p>
<p>[新增] 弹窗登录功能</p>
<p>[修复] 中文名流程导出问题</p>
<p>[修复] 部分翻译问题</p>
<p>[修复] 富文本字段过长显示问题</p>
', 'zh-cn', '2020-03-21', 0, 2222);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (21, '2.2.20', '<p>[修复] 修复API字段导致的流程导入问题</p>
', 'zh-cn', '2020-01-20', 0, 2220);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (22, '2.2.19', '<p>[修复] 国际化的各种翻译问题</p>
<p>[修复] 待办显示不正确问题修复</p>
', 'zh-cn', '2020-01-16', 0, 2219);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (23, '2.2.18', '<p>[新增] 自定义部署模板</p>
<p>[新增] 单据关注人进行通知功能</p>
<p>[优化] 标准运维节点的错误显示</p>
<p>[修复] 测试撤单失败问题修复</p>
<p>[修复] 创建关联单失败的问题修复</p>
<p>[修复] 2.2.17前端bug修复</p>
<p>[修复] 接口转单操作人鉴权错误问题修复</p>
<p>[修复] 接口获取服务列表问题修复</p>
', 'zh-cn', '2020-01-08', 0, 2218);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (24, '2.2.17', '<p>[优化] 替换人员选择器</p>
<p>[优化] 优化单据列表查询逻辑</p>
<p>[优化] 优化提单接口</p>
<p>[新增] 待办小红点</p>
<p>[新增] 字段默认值</p>
<p>[新增] 提供英文描述信息</p>
<p>[数据迁移] 新单据列表查询逻辑，需要以管理员身份运行 <a href="http://{host}/helper/db_fix_after_2_2_17/">http://{host}/helper/db_fix_after_2_2_17/</a></p>
', 'zh-cn', '2019-12-18', 0, 2217);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (25, '2.2.16', '<p>[修复] 撤单问题修复</p>
', 'zh-cn', '2019-12-10', 0, 2216);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (26, '2.2.15', '<p>[新增] 支持自定义部署模板</p>
<p>[修复] admin页面全选功能修复</p>
<p>[修复] 通用角色管理员角色表点击管理无响应问题</p>
<p>[修复] 并发提单，单号出现重复问题</p>
<p>[修复] 标准运维节点跳转链接问题</p>
<p>[修复] 翻译问题</p>
', 'zh-cn', '2019-12-06', 0, 2215);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (27, '2.2.12', '<p>[修复] admin页面全选功能修复</p>
', 'zh-cn', '2019-11-19', 0, 2212);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (28, '2.2.11', '<p>[新增] 新增节点标签支持</p>
<p>[新增] 提供单据处理接口</p>
<p>[新增] 提供节点处理接口</p>
<p>[优化] 单据日志接口和状态接口</p>
<p>[优化] 单据挂起、恢复和中止</p>
<p>[修复] 国际化翻译问题</p>
<p>[修复] 流程引擎deadlock问题</p>
', 'zh-cn', '2019-11-08', 0, 2211);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (29, '2.2.9', '<p>[新增] 节点复制功能</p>
<p>[新增] 服务、服务目录排序功能</p>
<p>[修复] 修复单据日志翻译问题</p>
<p>[修复] 修复api日志增长过快问题</p>
<p>[修复] 修复单据撤销的显示问题</p>
<p>[数据迁移] 附件存储方式升级 需要以管理员身份运行 <a href="http://{host}/helper/db_fix_for_attachments/">http://{host}/helper/db_fix_for_attachments/</a></p>
', 'zh-cn', '2019-11-05', 0, 2209);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (30, '2.2.8', '<p>[修复] 修复工单统计管理员权限问题</p>
<p>[修复] 修复普通用户查看前置节点问题</p>
<p>[修复] 修复通知问题</p>
<p>[修复] 修复附件问题</p>
<p>[修复] 修复提单后工单过滤问题</p>
<p>[修复] 修复撤单问题</p>
<p>[优化] 优化单据处理</p>
<p>[优化] 优化提单操作</p>
', 'zh-cn', '2019-10-29', 0, 2208);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (31, '2.2.7', '<p>[修复] 修复日志样式</p>
<p>[修复] 修复数据迁移附件问题</p>
<p>[修复] 修复邀请评价功能</p>
', 'zh-cn', '2019-10-25', 0, 2207);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (32, '2.2.6', '<p>[新增] 可设置环境变量关闭通知功能：BKAPP_CLOSE_NOTIFY = ''close'' 则关闭通知</p>
<p>[修复] 修复企业微信数据字典问题</p>
<p>[修复] 修复企业微信隐藏字段问题</p>
<p>[修复] 修复工作台/运营数据图表问题</p>
<p>[优化] 单据操作页面展示</p>
<p>[优化] 关联单据逻辑/样式</p>
', 'zh-cn', '2019-10-23', 0, 2206);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (33, '2.2.3', '<p>[新增] 开放API接口</p>
<p>[修复] 修复数据迁移问题</p>
<p>[修复] 修复自定义表格下拉框样式问题</p>
<p>[修复] 修复国际化翻译问题</p>
<p>[修复] 修复打印问题</p>
<p>[修复] 修复工单导出问题</p>
<p>[修复] 修复企业微信问题</p>
', 'zh-cn', '2019-10-16', 0, 2203);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (34, '2.2.1', '<p>[新增] 流程引擎升级，支持规则配置，灵活支持分支、并行等特性，流程线条支持复杂条件配置</p>
<p>[新增] 流程元素增加了API节点、标准运维流程节点，支持配置自动化流程</p>
<p>[新增] API管理功能，支持接入API网关的系统及配置具体接口协议</p>
<p>[新增] API字段，支持展示第三方系统的列表数据</p>
<p>[新增] 版本日志查看</p>
<p>[新增] 对外开放API，建单/查单等</p>
<p>[新增] 数据库升级功能</p>
<p>[优化] 流程编辑器交互升级，支持拖拽定义流程</p>
<p>[优化] 企业版附件目录配置优化</p>
<p>[优化] 单据相关页面的优化和调整</p>
<p>[优化] 升级Django版本到1.11.23</p>
<p>[优化] 单据详情页支持流程预览和详情查看</p>
<p>[说明] 当前版本暂时移除了移动端审批功能</p>
<p>[数据迁移] 流程、流程版本、服务等数据升级：<a href="http://{host}/helper/db_fix_from_2_1_x_to_2_2_1/">http://{host}/helper/db_fix_from_2_1_x_to_2_2_1/</a></p>
', 'zh-cn', '2019-08-22', 0, 2201);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (35, '2.1.17', '<p>[新增] 服务可见范围功能（支持组织架构单选）</p>
<p>[新增] 服务项支持更多搜索条件</p>
<p>[新增] 服务项与流程版本关联功能：关联/解绑</p>
<p>[新增] 流程版本管理：还原，预览，删除</p>
<p>[新增] 流程设计管理字段类型新增树形字段</p>
<p>[新增] 流程设计管理处理角色可从组织架构拉取选择</p>
<p>[新增] 流程设计时可选择复杂表格组件</p>
<p>[新增] 流程设计判断节点可打回</p>
<p>[新增] 流程字段对数据字典的支持</p>
<p>[新增] 数据字典管理与应用</p>
<p>[新增] 数据字典在流程设计中的应用</p>
<p>[新增] 附件存储配置</p>
<p>[新增] 缓存清除配置</p>
<p>[新增] 组织架构功能开关</p>
<p>[新增] 合并管理页面</p>
<p>[新增] SLA管理功能应用到所有服务</p>
<p>[新增] 企业微信应用版本</p>
<p>[新增] 单据督办功能</p>
<p>[新增] 流程预览功能</p>
<p>[新增] 通知关注人功能</p>
<p>[新增] 复杂表格字段支持</p>
<p>[新增] 判断节点支持打回</p>
<p>[新增] 增加发布管理和部署管理入口</p>
<p>[新增] 增加快捷提单入口</p>
<p>[新增] 组织架构信息展示</p>
<p>[新增] 服务分类收藏功能</p>
<p>[新增] 增加附件目录配置功能</p>
<p>[新增] 运营数据视图上线</p>
<p>[新增] 按流程id查询工单接口，查询流程列表接口</p>
<p>[新增] 字段支持正则校验</p>
<p>[新增] 企业微信通知支持发送消息到具体的应用</p>
<p>[新增] 工单状态增加待分派/待认领</p>
<p>[新增] ITSM管理员角色，支持查看和管理所有单据；回收蓝鲸超级管理员权限</p>
<p>[新增] 支持第三方系统登录后进行提单操作</p>
<p>[优化] 字段校验问题</p>
<p>[优化] 业务级联查询</p>
<p>[优化] 页面刷新优化</p>
<p>[优化] 调整单号长度</p>
<p>[优化] 显示中文用户名</p>
<p>[优化] 修改默认通知模板</p>
<p>[优化] 单据查询接口优化</p>
<p>[优化] 数据字典/表格的导出</p>
<p>[优化] 树形结构数据字典多级展示</p>
<p>[优化] 服务目录过滤单据支持父级过滤</p>
<p>[优化] 流程版本处理人为提单人的逻辑调整</p>
<p>[优化] 附件存储目录配置优化(docs/itsm_nfs)</p>
<p>[优化] 服务项，服务目录升级原有的服务分类管理</p>
<p>[优化] CMDB缓存策略调整并支持清缓存</p>
<p>[优化] 用plotly图表插件替换echarts</p>
<p>[优化] 单据详情页面表单显示优化</p>
<p>[优化] 分派功能加强，支持分派到组</p>
<p>[优化] 页面交互升级，支持侧边收起</p>
<p>[优化] 调整单据排序，按创建时间排序</p>
<p>[优化] 页面整体改版（单据查询、查看、处理等）</p>
<p>[优化] 升级时间控件，支持更多的编辑功能</p>
<p>[优化] 调整部分表单控件，支持多选查询</p>
<p>[优化] 所有单据流转操作增加二次弹窗确认</p>
<p>[修复] 模板保存问题</p>
<p>[修复] 安全问题修复</p>
<p>[修复] 流程预览问题</p>
<p>[修复] 通用角色创建问题</p>
<p>[修复] 工单分派失败问题</p>
<p>[修复] 流程版本预览问题</p>
<p>[修复] 流程导入格式问题</p>
<p>[修复] 待分派无法查询问题</p>
<p>[修复] 流程人员个人显示问题</p>
<p>[修复] 事件分类查询失败问题</p>
<p>[修复] 节点收起无法填写问题</p>
<p>[修复] CMDB角色无法提单问题</p>
<p>[修复] 运营数据无数据状态问题</p>
<p>[修复] 模板单选框无法覆盖问题</p>
<p>[修复] 知识库上传附件异常问题</p>
<p>[修复] 工单导出SLA/表格无数据问题</p>
<p>[修复] 分派单据提示无权限认领的问题</p>
<p>[修复] 自定义表格打印、移动端展示问题</p>
<p>[修复] 非提单节点可以不选择操作角色的问题</p>
<p>[修复] CMDB3.2.6版本后级联字段失效问题</p>
<p>[修复] 更改流程字段类型，导致工单模板出错的问题</p>
<p>[修复] 修复模板/草稿/工单脏数据导致的安全问题</p>
<p>[修复] 修复认领工单响应时间未计算问题</p>
<p>[修复] 修复部分已结束工单未计算结束时间的问题</p>
<p>[修复] 更改中英文名字存储方式</p>
<p>[修复] 修复工单title数据问题</p>
<p>[修复] 修复工单日志数据问题</p>
<p>[数据迁移] V1.1.x到V2.1.x的数据升级接口（建议提前做好数据备份）：<a href="http://{host}/helper/db_fix_from_1_1_22_to_2_1_16/">http://{host}/helper/db_fix_from_1_1_22_to_2_1_16/</a></p>
', 'zh-cn', '2019-08-16', 0, 2117);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (36, '1.1.22', '<p>[新增] 全局视图</p>
<p>[新增] 知识库功能模块</p>
<p>[新增] 请求管理模块</p>
<p>[新增] 问题管理模块</p>
<p>[新增] 单据打印功能</p>
<p>[新增] 单据直接评价功能</p>
<p>[新增] 表单字段支持正则校验</p>
<p>[新增] 短信邀请评价功能</p>
<p>[新增] 单据认领、分派功能</p>
<p>[新增] 工单提单模板</p>
<p>[新增] 增加了标题字段</p>
<p>[新增] 新增历史单据查询</p>
<p>[新增] 工单统计管理员角色</p>
<p>[新增] 新增挂起和恢复的功能</p>
<p>[新增] 流程支持配置关注人</p>
<p>[新增] 工单支持挂起、恢复和撤销</p>
<p>[新增] 单据处理过程中，支持保存草稿</p>
<p>[新增] 用户名支持中文显示</p>
<p>[新增] 判断类型支持配置表单及终止操作</p>
<p>[新增] 增加超级管理员和建单人的撤销单据功能</p>
<p>[新增] 添加流转日志操作者、单据提单人用户名支持中文显示</p>
<p>[新增] 导出单据功能，包含所有字段信息</p>
<p>[新增] 转单的时候需要填写转单原因</p>
<p>[新增] 打回之后保留最近一次操作信息</p>
<p>[优化] 首页功能改版</p>
<p>[优化] 提单入口优化，展示流程及说明</p>
<p>[优化] 导出功能优化，流程分sheet</p>
<p>[优化] 单据查询优化，选择提单人查询</p>
<p>[优化] 分派和认领功能优化</p>
<p>[优化] 提单服务目录选择，只显示与该服务流程关联的目录</p>
<p>[优化] 创建单据的时候根据模块的流程名称来选择建单</p>
<p>[优化] 判断节点和普通节点一样可以添加字段，可以终止</p>
<p>[优化] 取消资源申请管理模块（归类到请求管理）</p>
<p>[优化] 单据通知区分关注人和处理人发送</p>
<p>[优化] 流程日志顺序调整，按时间顺序展示</p>
<p>[优化] 流程的编辑中，没有属性限制项</p>
<p>[修复] 非管理员页面打开获取列表异常问题修复</p>
<p>[修复] 故障提单卡顿问题处理</p>
<p>[修复] 用户中文名修改后单据查询不到的问题</p>
<p>[修复] 知识库功能模块样式问题修复</p>
<p>[修复] 单据打印无数据问题修复</p>
<p>[修复] 删除了字段之后发送通知报错问题修复</p>
<p>[修复] 保存流程字段的时候业务字段被清空问题修复</p>
<p>[修复] 获取角色列表不存在的异常获取不正确问题修复</p>
<p>[修复] 故障事件获取关联业务的时候为空时报错问题修复</p>
', 'zh-cn', '2018-11-27', 0, 1122);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (37, '1.1.3', '<p>[新增] 支持终止操作</p>
<p>[新增] 支持附件上传模版</p>
<p>[新增] 支持设置转单人范围</p>
<p>[新增] 变更管理，故障事件管理，资源申请，服务目录管理，角色管理，流程设计</p>
<p>[新增] 驳回和终止操作必须填原因</p>
<p>[新增] 兼容HTTPS</p>
<p>[优化] 流程展示，主流程间用箭头连接</p>
<p>[优化] 校验规则更新</p>
<p>[优化] 发送短信通知优化</p>
<p>[修复] 其他问题修复</p>
<p>[修复] 非管理员转单权限问题</p>
<p>[修复] 部分空格名称查询问题</p>
<p>[修复] 因为缺少变更类型导致的新增变更流程失败问题</p>
<p>[修复] upload_file上传403bug修复</p>
<p>[说明] 附件功能要求<code>NFS</code>目录挂载，挂在路径为根目录下的<code>USERRES</code></p>
<p>[说明] 建议<code>mysql&gt;=5.7</code>，目前兼容<code>5.6</code>，后续版本考虑升级到<code>5.7</code></p>
', 'zh-cn', '2018-09-18', 0, 1103);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (38, '2.5.8', '<p>[New] New version of operational data released</p>
<p>[New] Exception handling when the person is empty</p>
<p>[New] SOPS release scenarios support replenishment orders</p>
<p>[optimization] List query speed optimization</p>
<p>[optimization] Organizational structure personnel display optimization</p>
<p>[optimization] Export logic optimization</p>
<p>[repaired] Handler issues when dispatching and transferring orders</p>
<p>[repaired] Inaccurate display of my to-do content</p>
', 'en', '2021-03-16', 1, 2508);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (39, '2.5.7', '<p>[New] SOPS release scenario support</p>
<p>[New] IAM approval scenario support</p>
<p>[New] redis sentinel double password</p>
<p>[New] Ticket front page reconstruction and revision</p>
<p>[New] Ticket detail reconstruction and revision</p>
<p>[New] International integration of front and backend</p>
<p>[New] Add IAM built-in approval process</p>
<p>[New] Optimization of the withdrawn strategy logic, support users to configure withdrawn rules</p>
<p>[New] The role of the processor is increased to specify the superiors of different people</p>
<p>[New] Add trigger record display tab for ticket details</p>
<p>[repaired] Product document jump to document center</p>
<p>[repaired] Add built-in workflow and services</p>
<p>[repaired] Get service role is compatible with the scenario of not creator</p>
<p>[repaired] pipeline add candidate backend</p>
<p>[repaired] Add visible range configuration for API docking</p>
<p>[repaired] Title distinguish Enterprise Edition Community Edition</p>
<p>[repaired] Help add product documentation and problem feedback</p>
<p>[repaired] Product document jump to document center</p>
<p>[repaired] Attention ticket authentication logic</p>
<p>[Optimization] Moa application content optimization</p>
<p>[Optimization] Many errors were reported at 401</p>
<p>[Optimization] Report IAM changed to internal PAAS address</p>
<p>[repaired] Enterprise WeChat bots send multi messages when they are too large</p>
<p>[repaired] Flow details interface error, and the extra field exceeds the limit</p>
<p>[repaired] Service details interface permission issue</p>
<p>[repaired] Inactive services appear at the service entrance</p>
<p>[repaired] Custom table data is not backfilled</p>
<p>[repaired] Required fields of custom form are not verified</p>
<p>[repaired] Unable to unlink order</p>
<p>[repaired] Repair the homepage waiting for my approval number is not refreshed</p>
<p>[repaired] The page freezes when the processor organization structure</p>
<p>[repaired] handle abnormal standard operation and maintenance tasks</p>
<p>[optimization] member synchronization mechanism of CMDB role</p>
<p>[optimization] export function optimization</p>
<p>[repaired] line trigger cannot be triggered</p>
<p>[repaired] access to role members</p>
<p>[repaired] the task handler of the execution node cannot see the document</p>
<p>[repaired] no problem found in node clone field</p>
<p>[repaired] invalid deletion of nodes</p>
<p>[optimization] select the service and export the ticket according to the service bill of lading field</p>
<p>[New] log retrieval process initialization deployment</p>
<p>[repaired] fix the problem of alarm sending failure because the function name cannot be obtained from the stack</p>
<p>[repaired] the business card will not be displayed</p>
<p>[optimization] case support for service search</p>
<p>[repaired] The details of the repair node are not displayed in the current step</p>
', 'en', '2020-12-30', 0, 2507);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (40, '2.5.6', '<p>[New] Process configuration adds support for IAM roles</p>
<p>[New] Caching supports RedIS configuration</p>
<p>[New] Support for IAM instance search</p>
<p>[New] Add department information to business CARDS</p>
', 'en', '2020-10-22', 0, 2506);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (41, '2.5.5', '<p>[New] Process configuration add support authority center role</p>
<p>[Optimization] New version of personnel component replacement</p>
<p>[Optimization] Basic configuration removes organizational structure switch</p>
<p>[repaired] Migrate reports an error when deployed separately</p>
<p>[repaired] Process service name modification</p>
<p>[repaired] Selection of cross-domain personnel</p>
<p>[repaired] IAM request link uses BK_PAAS_INNER_HOST by default</p>
', 'en', '2020-09-26', 0, 2505);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (42, '2.5.4', '<p>[New] Add permission upgrade of version 2.4</p>
<p>[New] Add built-in approval process</p>
<p>[New] Process configuration add support authority center role</p>
<p>[Optimization] Bill of lading field verification prompt optimization</p>
<p>[Optimization] The name of the follower and the follower are conflicted, and the follower is modified to an email notification</p>
<p>[Optimization] All Ticket in the list of Tickets are released, everyone can see</p>
<p>[repaired] Fixed the bug that the built-in approval process failed to initialize</p>
<p>[repaired] Add view button in task table to view the task details</p>
<p>[repaired] When submitting the document, the dirty data of the previous node will be transferred to the current operating node</p>
<p>[repaired] The style of the workbench is messy after zooming</p>
<p>[repaired] Incomplete display of current processing steps</p>
<p>[repaired] The  sops template cannot be seen if no business is selected</p>
<p>[repaired] Remove the automatic execution content from statistical data</p>
<p>[repaired] The front-end style still shows that it has been followed after failing to follow the receipt</p>
<p>[repaired]  Back to the homepage is invalid when the user close the last tab</p>
<p>[repaired]  The creator actions granting will not be performed if the creator does not exist</p>
<p>[repaired]  The content after the api request parameter will overwrite the previous content</p>
<p>[repaired]  The current step is not updated after dispatch</p>
<p>[repaired]  The operation node cannot check the recurrence box again and cannot submit</p>
<p>[repaired]  The rich text control is upgraded to solve minor problems such as invalid bolding</p>
<p>[repaired]  The api log information name and processing time are not displayed</p>
', 'en', '2020-09-07', 0, 2504);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (43, '2.5.3', '<p>[repaired] When previewing the flowchart, it prompts no permission problem fixed</p>
<p>[repaired] The new task page is not rendered, and an error is reported in the console</p>
<p>[repaired] The front end style is still displayed after the note fails</p>
<p>[repaired] When there is only one nav in the ticket details, delete no response</p>
<p>[optimization] Missing prompt for service list deletion</p>
', 'en', '2020-09-01', 0, 2503);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (44, '2.5.2', '<p>[New] Add approval node</p>
<p>[New] New field default value to add rich text</p>
<p>[New] Api node failure processing (retry, ignore)</p>
<p>[New] Add batch approval</p>
<p>[New] Add followers</p>
<p>[optimization] If the status of the countersignature node or the approval node is in process, the submit button will display loading</p>
<p>[optimization] After the workbench express bill of lading is completed, it will default to the global list of "all bill"</p>
<p>[optimization] The processor component is changed to display one line when out of focus, and multiple lines when in focus</p>
<p>[optimization] Quick bill of lading jump to the global view My application form</p>
<p>[optimization] Work order list and work order detail style optimization</p>
<p>[optimization] The pass platform application permission will open in a new browser tab</p>
<p>[optimization] After the permission application is passed, the menu bar refreshes without updating the permissions</p>
<p>[repaired] Fix the bug which raise exception "schedule service does not exist" when operate task.</p>
<p>[repaired] Fix displaying error of component type</p>
<p>[repaired] New field default value to add rich text</p>
<p>[repaired] Follow people button, follow people list</p>
<p>[repaired] The existing sequence is restored after adding new fields to the process design field list</p>
<p>[repaired] Fix the current step of the bill list is empty</p>
<p>[repaired] Fix log details only show the last one</p>
<p>[repaired] When the process administrator, the process design menu is not displayed</p>
<p>[repaired] Fix llog details handler field error</p>
', 'en', '2020-08-20', 0, 2502);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (45, '2.5.1', '<p>[new] Support to register auth action groups</p>
<p>[new] Support to grant related actions''s permission after resource created</p>
', 'en', '2020-07-31', 0, 2501);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (46, '2.5.0', '<p>[new] System authentication depends on IAM</p>
<p>[optimization] Icon migrate to iconcool</p>
<p>[optimization] Replaced task icon</p>
<p>[optimization] Global view table optimization, add processor, filter conditions, custom table header, etc.; i18n extraction</p>
<p>[optimization] The time control displays the current time by default</p>
<p>[optimization] Background management menu icon replacement</p>
<p>[repaired] Global view current processors error</p>
<p>[repaired] Pass platform cannot open permission center</p>
<p>[repaired] Cannot submit with default hidden fields</p>
<p>[repaired] Fix permissions for process design deployment</p>
<p>[repaired] Fix the new creation of sla service agreement management, turn off the reminder mechanism, there is still verification</p>
<p>[repaired] Fix /role/users api has no role_type parameter</p>
<p>[repaired] Fix the blinking of ticket details</p>
', 'en', '2020-07-02', 0, 2500);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (47, '2.4.2', '<p>[New] Task-group is supported</p>
<p>[New] Support task group function in the process</p>
<p>[New] node configuration remove action button</p>
<p>[New] Trigger configuration management</p>
<p>[New] Support trigger function in the process</p>
<p>[New] Support configuration management of process administrator and person in charge</p>
<p>[New] API supports writing sandbox code</p>
<p>[New] Expansion of public variables in the process</p>
<p>[New] System function switch</p>
<p>[New] Provide fast bill entrance</p>
<p>[Fix] Fix the defect of rich text packaging</p>
', 'en', '2020-05-26', 0, 2402);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (48, '2.4.4', '<p>[New] New field default value to add rich text</p>
<p>[New] Api node failure processing (retry, ignore)</p>
<p>[New] Add batch approval</p>
<p>[New] Add followers</p>
<p>[New] Links in rich text support opening in new tabs</p>
<p>[optimization] If the status of the countersignature node or the approval node is in process, the submit button will display loading</p>
<p>[optimization] The processor component is changed to display one line when out of focus, and multiple lines when in focus</p>
<p>[optimization] Quick bill of lading jump to the global view My application form</p>
<p>[optimization] Work order list and work order detail style optimization</p>
<p>[Optimization] Magicbox upgraded to 2.2.1</p>
<p>[Optimization] Node details and log details style optimization</p>
<p>[repaired] Fix the bug which raise exception "schedule service does not exist" when operate task.</p>
<p>[repaired] Fix displaying  error of component type</p>
<p>[repaired] New field default value to add rich text</p>
<p>[repaired] Follow people button, follow people list</p>
<p>[repaired] The existing sequence is restored after adding new fields to the process design field list</p>
<p>[repaired] Fix the current step of the bill list is empty</p>
<p>[repaired] Fix log details only show the last one</p>
<p>[repaired] When the process administrator, the process design menu is not displayed</p>
<p>[repaired] Fix llog details handler field error</p>
<p>[repaired] After the approval node is processed, the current step interface is not updated after polling</p>
<p>[repaired] Fix Sops node details task parameters are not displayed</p>
<p>[repaired] A default value will be matched when the person selector is empty</p>
', 'en', '2020-08-10', 0, 2404);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (49, '2.4.3', '<p>[New] Add new trigger action that to send messages by group robot</p>
<p>[New] Add line display in document flow chart view</p>
<p>[optimization] Add skip exclusive node for error configuration</p>
<p>[repaired] Fix the new creation of sla service agreement management, turn off the reminder mechanism, there is still verification</p>
<p>[repaired] Fix /role/users api has no role_type parameter</p>
<p>[repaired] Fix the blinking of ticket details</p>
<p>[repaired] Template filling will clear the fields that are not in the current field list</p>
<p>[optimization] Get all users information before serialize tickets'' data</p>
<p>[optimization] The expanded display details of the log list are changed to the side-sliding pop-up window display</p>
', 'en', '2020-07-10', 0, 2403);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (50, '2.4.2', '<p>[New] Task template configuration management</p>
<p>[New] Support task group in the ticket</p>
<p>[New] Remove action button configuration in node</p>
<p>[New] Trigger configuration management</p>
<p>[New] Support trigger function in the process</p>
<p>[New] Add permission settings in flow design</p>
<p>[New] API supports writing sandbox code</p>
<p>[New] Expansion of public variables in the process</p>
<p>[New] Add new system function switch</p>
<p>[New] Provide fast bill of lading entrance</p>
<p>[Fix] Fix the defect of rich text packaging</p>
', 'en', '2020-05-26', 0, 2402);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (51, '2.4.1', '<p>[New] Front-end component upgrade</p>
<p>[New] Officials support the configuration of dynamic handlers</p>
<p>[Supplement] Official support for configuring action buttons</p>
<p>[New] Baseline supports association constraints</p>
<p>[Supplement] Support staff configuration organization structure (dependency: open_paas_ee&gt; = 2.10.26, usermgr_ee&gt; = 2.0.5)</p>
<p>[Fix] Chinese name process caused garbled characters</p>
', 'en', '2020-03-11', 0, 2401);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (52, '2.3.1', '<p>[Supplement] SLA management module</p>
<p>[Supplement] Basic model and public interest</p>
<p>[Supplement] Sort service catalog</p>
<p>[Supplementary] Radio Selector Component</p>
<p>[New] Notification template open configuration</p>
<p>[Supplement] Internationalization</p>
<p>[Supplement] single function of mother and child</p>
<p>[Optimization] Upgrade development framework</p>
<p>[Optimization] Upgrade to Python3</p>
<p>[Optimized] Open preset key editing</p>
<p>[Optimization] The document withdrawal function can be switched</p>
<p>[Optimization] Process preview function can be switched</p>
<p>[Optimization] Provide catalog view</p>
<p>[Optimization] single number differentiated service</p>
<p>[Optimization] Operation data query optimization</p>
<p>[Data migration] To transfer configuration related data, you need to run <a href="http://{host}/helper/db_fix_after_2_3_1/">http://{host}/helper/db_fix_after_2_3_1/</a></p>
', 'en', '2019-12-27', 0, 2301);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (53, '2.2.22', '<p>[new] support self-service apis</p>
<p>[repaired] fix api node save bugs</p>
', 'en', '2020-03-21', 0, 2222);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (54, '2.2.21', '<p>[new] add english version logs</p>
<p>[new] playing the login window function</p>
<p>[repaired] process of Chinese export problem</p>
<p>[repaired] some translation problems</p>
<p>[repaired] some translation problems</p>
', 'en', '2020-03-03', 0, 2221);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (55, '2.2.20', '<p>[repaired] repair field repair API process caused by the import problem</p>
', 'en', '2020-01-20', 0, 2220);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (56, '2.2.19', '<p>[repaired] international various translation problems</p>
<p>[repaired] to do show incorrect repair problem</p>
', 'en', '2020-01-16', 0, 2219);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (57, '2.2.18', '<p>[new] custom deployment template</p>
<p>[new] documents concerned notifications</p>
<p>[optimization] Optimization of standard operational node error display</p>
<p>[repaired] test its repair failure problem</p>
<p>[repaired] create correlation problem of the single failure repair</p>
<p>[repaired] 2.2.17 front-end bug fixes</p>
<p>[repaired] interface to turn single person authentication error problem of repair operation</p>
<p>[repaired] interface to get repair service list problem</p>
', 'en', '2020-01-08', 0, 2218);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (58, '2.2.17', '<p>Optimal replacement personnel selector</p>
<p>[optimization] optimization documents list query logic</p>
<p>[optimization] the optimization of the bill of lading interface</p>
<p>[new] to do little red dot</p>
<p>[new] field default values</p>
<p>[new] provide English description information</p>
<p>[data migration] new documents list query logic, need to be run as an administrator <a href="http://{host}/helper/db_fix_after_2_2_17/">http://{host}/helper/db_fix_after_2_2_17/</a></p>
', 'en', '2019-12-18', 0, 2217);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (59, '2.2.16', '<p>[repaired] fix its problem</p>
', 'en', '2019-12-10', 0, 2216);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (60, '2.2.15', '<p>[new] support custom deployment template</p>
<p>[repaired] repair admin page selection function</p>
<p>[repaired] gm role the administrator role table click no response management problems</p>
<p>[repaired] concurrent bill of lading, single number repeated problems</p>
<p>[repaired] standard operational node hop link problem</p>
<p>[repaired] translation problems</p>
', 'en', '2019-12-06', 0, 2215);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (61, '2.2.12', '<p>[repaired] repair admin page selection function</p>
', 'en', '2019-11-19', 0, 2212);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (62, '2.2.11', '<p>[new] tag support new node</p>
<p>[new] provide documents processing interface</p>
<p>[new] provide node processing interface</p>
<p>[optimization] documents log interfaces and status</p>
<p>[optimization] documents hangs, restore and suspension</p>
<p>[repaired] international translation problems</p>
<p>[repaired] process engine deadlock problem</p>
', 'en', '2019-11-08', 0, 2211);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (63, '2.2.9', '<p>[new] nodes replication</p>
<p>[new] sorting services, service directory</p>
<p>[repaired] repair documents translation problems</p>
<p>[repaired] fix API log growing too fast</p>
<p>[repaired] repair documents revoked display problems</p>
<p>[data migration] attachment storage upgrade need to run as an administrator <a href="http://{host}/helper/db_fix_for_attachments/">http://{host}/helper/db_fix_for_attachments/</a></p>
', 'en', '2019-11-05', 0, 2209);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (64, '2.2.8', '<p>[repaired] repair work order statistics administrator privileges</p>
<p>[repaired] repair ordinary users to look at front nodes problem</p>
<p>[repaired] repair notice problems</p>
<p>[repaired] repair accessories problems</p>
<p>[repaired] repair bill of lading HouGong single filtering problem</p>
<p>[repaired] fix its problems</p>
<p>[optimization] optimization documents processing</p>
<p>[optimization] the optimization of the bill loading</p>
', 'en', '2019-10-29', 0, 2208);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (65, '2.2.7', '<p>[repaired] repair log style</p>
<p>[repaired] The attachment/repair repair data migration</p>
<p>[repaired] repair invited evaluation function</p>
', 'en', '2019-10-25', 0, 2207);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (66, '2.2.6', '<p>[new] can set the environment variable closed notification function: BKAPP_CLOSE_NOTIFY = ''close'' the closure notice</p>
<p>[repaired] repair enterprise WeChat data dictionary</p>
<p>[repaired] repair enterprises WeChat hidden field problems</p>
<p>[repaired] repair workbench/operational data chart</p>
<p>[optimization] Operation documents page display</p>
<p>[optimization] Logical/style/optimization associated documents</p>
', 'en', '2019-10-23', 0, 2206);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (67, '2.2.3', '<p>[new] open API interface</p>
<p>[repaired] repair data migration issues</p>
<p>[repaired] Drop-down box/repair repair custom form style</p>
<p>[repaired] fix international translation problems</p>
<p>[repaired] repair print issue</p>
<p>[repaired] repair work order export problem</p>
<p>[repaired] repair enterprise WeChat problem</p>
', 'en', '2019-10-16', 0, 2203);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (68, '2.2.1', '<p>[new] process engine upgrades, support rule configuration, branch, parallel features such as flexible support, support conditions of complex configuration process lines</p>
<p>[new] process elements increases the API node, standard operational procedure, supporting configuration process automation</p>
<p>[new] API management functions, support API access gateway system and configuration details of the interface protocols</p>
<p>[new] API fields, show the list of the third party system data support</p>
<p>[new] version log viewer</p>
<p>[new] open to the public API, built single/check list, etc</p>
<p>[new] database upgrade function</p>
<p>[optimization] process editor interactive upgrade, support drag define the process</p>
<p>[optimization] optimize enterprise edition accessories directory configuration optimization</p>
<p>[optimization] documents related to the optimization and adjustment of the page</p>
<p>[optimization] upgrade Django version to 1.11.23</p>
<p>[optimization] documents details page preview support process and details view</p>
<p>[remark] the current version temporarily removed for examination and approval of mobile terminal function</p>
<p>[data migration] the process version, services such as data upgrade: <a href="http://{host}/helper/db_fix_from_2_1_x_to_2_2_1/">http://{host}/helper/db_fix_from_2_1_x_to_2_2_1/</a></p>
', 'en', '2019-08-22', 0, 2201);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (69, '2.1.17', '<p>[new] service scope of visible function (support structure radio)</p>
<p>[new] support services more search criteria</p>
<p>[new] service items associated with process version features: association/unbundling</p>
<p>[new] process versioning: reduction, preview, delete</p>
<p>[new] process design management field type [new] tree field</p>
<p>[new] processing process design management role can be pulled from the organizational structure of choice</p>
<p>[new] process design can choose complex form components</p>
<p>[new] process design judgment node can be back</p>
<p>[new] flow field support for the data dictionary</p>
<p>[new] data dictionary management and application</p>
<p>[new] data dictionary in the application of the process design</p>
<p>[new] attached storage configuration</p>
<p>[new] cache configuration</p>
<p>[new] organizational function switch</p>
<p>[new] merger management page</p>
<p>[new] SLA management function is applied to all services</p>
<p>[new] enterprise WeChat application version</p>
<p>[new] documents supervisory functions</p>
<p>[new] process preview function</p>
<p>[new] notice attention function</p>
<p>[new] complex form fields</p>
<p>[new] judgment nodes support back</p>
<p>[new] increase release and deployment management portal</p>
<p>[new] increase fast and the bill of lading entry</p>
<p>[new] organizational information display</p>
<p>[new] service classification collection function</p>
<p>[new] add attachments directory configuration function</p>
<p>[new] operating data view online</p>
<p>[new] according to the process id of the repair order interface, query process list interface</p>
<p>[new] field support for regular check</p>
<p>[new] enterprise WeChat inform support sending messages to a specific application</p>
<p>[new] work order status increase with dispatch/with claim</p>
<p>[new] ITSM administrator role, supporting the view and manage all documents;</p>
<p>[new] support third party bill of lading operation system after login</p>
<p>[optimization] To optimize the field calibration problem</p>
<p>[optimization] Cascade query optimization business</p>
<p>[optimization] Optimize the page refresh optimization</p>
<p>[optimization] number length adjustment</p>
<p>[optimization] "Optimization" according to Chinese user name</p>
<p>[optimization] Change the default notification template</p>
<p>[optimization] Query interface optimization optimization documents</p>
<p>[optimization] data dictionary form the export</p>
<p>[optimization] Optimization of multistage display tree structure data dictionary</p>
<p>[optimization] filter documents to support the parent service directory</p>
<p>[optimization] For the bill of lading/optimization process versioning of logic and adjustment</p>
<p>[optimization] accessories store directory configuration optimization (docs/itsm_nfs)</p>
<p>[optimization] Optimization service items, service directory to upgrade the original classification management</p>
<p>[optimization] CMDB caching policy adjustment and support to clear the cache</p>
<p>[optimization] with plug-in replacement echarts plotly chart</p>
<p>[optimization] documents form displays details page optimization</p>
<p>[optimization] Optimization dispatch function to strengthen, support assignment in groups</p>
<p>[optimization] Optimize upgrade page interaction, support side up</p>
<p>[optimization] Optimizing adjustment documents sorting, sort by creation time</p>
<p>[optimization] Overall optimization page revised documents (query, view, processing, etc.)</p>
<p>[optimization] Optimize upgrade time controls, support more editing functions</p>
<p>[optimization] Optimization of adjusting part of the form controls, support multiple queries</p>
<p>[optimization] all document flow operation increase secondary pop-up window to confirm</p>
<p>[repaired] templates save problem</p>
<p>[repaired] Repair/repair security problem</p>
<p>[repaired] Preview/repair process problems</p>
<p>[repaired] General character creation problem</p>
<p>[repaired] work order dispatch failure problem</p>
<p>[repaired] Preview version problem/repair process</p>
<p>[repaired] repair process import format problem</p>
<p>[repaired] Couldn''t query the problem for dispatch</p>
<p>[repaired] Personal display/repair process people</p>
<p>[repaired] event classification query failure problem</p>
<p>[repaired] Pack up node does not fill out the problem</p>
<p>[repaired] The role of CMDB can not bill of lading</p>
<p>[repaired] state of countless according to operational data</p>
<p>[repaired] template box does not cover problem</p>
<p>[repaired] about changes in the knowledge base to upload attachments</p>
<p>[repaired] work order SLA/derived form numerous according to the problem</p>
<p>[repaired] dispatch documents without permission to claim problem</p>
<p>[repaired] Repair the custom form to print, mobile terminal display problems</p>
<p>[repaired] the bill of lading can not to choose operation character of the nodes</p>
<p>[repaired] After CMDB3.2.6 version cascade field failure problem</p>
<p>[repaired] change flow field type, lead to the repair order template error problems</p>
<p>[repaired] repair template/draft/work order caused by dirty data security issues</p>
<p>[repaired] repair claim work order response time for computational problems</p>
<p>[repaired] repair parts has finished the repair order not calculated over a matter of time</p>
<p>[repaired] changes in both Chinese and English name is stored</p>
<p>[repaired] repair work order title data problems</p>
<p>[repaired] repair work order log data</p>
<p>[data migration] V1.1. X to V2.1. X data upgrade interface (suggested data backup in advance) : <a href="http://{host}/helper/db_fix_from_1_1_22_to_2_1_16/">http://{host}/helper/db_fix_from_1_1_22_to_2_1_16/</a></p>
', 'en', '2019-08-16', 0, 2117);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (70, '1.1.22', '<p>[new] global view</p>
<p>[new] knowledge base function module</p>
<p>[new] request management module</p>
<p>[new] problem management module</p>
<p>[new] documents printing function</p>
<p>[new] documents directly evaluation function</p>
<p>[new] form field support for regular check</p>
<p>[new] messages inviting evaluation function</p>
<p>[new] documents claim, the dispatch function</p>
<p>[new] work order bill of lading template</p>
<p>[new] increases the title field</p>
<p>[new] new query historical documents</p>
<p>[new] work order statistics administrator role</p>
<p>[new] new suspend and resume function</p>
<p>[new] process support configuration focuses on people</p>
<p>[new] work order support hangs, restore and revocation</p>
<p>[new] documents processing process, support save drafts</p>
<p>[new] username support Chinese display</p>
<p>[new] judgment types support configuration form and termination of the operation</p>
<p>[new] increase super administrators and built a single undo function of documents</p>
<p>[new] add flow log operator, documents of the bill of lading user name support Chinese display</p>
<p>[new] export documents, contains all the information field</p>
<p>[new] to turn single turn single reason need to fill in</p>
<p>[new] After the back to keep the latest operation information</p>
<p>[optimization] Optimize the homepage function changes</p>
<p>[optimization] Show/optimization of the bill of lading entry optimization, process and instructions</p>
<p>[optimization] To optimize the export function optimization, process sheet</p>
<p>[optimization] documents, query optimization, selection of the bill of lading query</p>
<p>[optimization] optimization dispatching and claimed function optimization</p>
<p>[optimization] Optimization of the bill of lading service directory to choose, only show the directory associated with the service process</p>
<p>[optimization] according to the process of the module name when creating documents to build single choice</p>
<p>[optimization] judgment node and ordinary node can add fields, can be terminated</p>
<p>[optimization] cancel resource application management module (classified to request management)</p>
<p>[optimization] documents sent notice to distinguish the attention and the processing</p>
<p>[optimization] Optimization process log order adjustment, displayed in chronological order</p>
<p>[optimization] Optimization in the process of editing, there is no limit to the property</p>
<p>[repaired] non-administrative abnormal issues fixed page open access list</p>
<p>[repaired] the trouble of bill of lading caton processing</p>
<p>[repaired] user query less than Chinese revised documents</p>
<p>[repaired] knowledge base function module repair style question</p>
<p>[repaired] documents print numerous repair according to the problem</p>
<p>[repaired] send notification after deleted field repair error problem</p>
<p>[repaired] to keep the time of flow field in the business field is empty problem to repair</p>
<p>[repaired] Get the role list there is no exception for incorrect repair problem</p>
<p>[repaired] failure event when acquiring the related business is empty repair times wrong problem</p>
', 'en', '2018-11-27', 0, 1122);
INSERT INTO bk_itsm.iadmin_releaseversionlog (id, version, log, lang, create_at, is_latest, version_size) VALUES (71, '1.1.3', '<p>[new] support end operation</p>
<p>[new] support attachments upload template</p>
<p>[new] allows you to set single range</p>
<p>[new] change management, fault event management, resource application, inventory management, role management, process design</p>
<p>[new] rejected and termination of operations must be fill in</p>
<p>[new] compatible with HTTPS</p>
<p>[optimization] Optimize the process, main process between connected by arrows</p>
<p>[optimization] Optimize the validation rules to update</p>
<p>[optimization] Optimize the optimization send SMS</p>
<p>[repaired] Other issues fixed</p>
<p>[repaired] non-administrative single permission problems</p>
<p>[repaired] part of the space name lookup</p>
<p>[repaired] because of the lack of new change processes in change type lead to failure</p>
<p>[repaired] upload_file upload 403 bug fixes</p>
<p>[that] the attachment function <code>NFS mount</code> catalogue, hang under the path to the root directory of <code>USERRES</code></p>
<p>[that] suggest <code>mysql &gt; = 5.7</code>, currently compatible with 5.6 <code>`, subsequent versions consider upgrading to 5.7</code> `</p>
', 'en', '2018-09-18', 0, 1103);
