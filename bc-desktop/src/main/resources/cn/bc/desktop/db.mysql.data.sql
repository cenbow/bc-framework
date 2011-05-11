-- 系统桌面相关模块的初始化数据

-- 插入桌面快捷方式数据
insert into BC_DESKTOP_SHORTCUT (STATUS_,INNER_,ORDER_,STANDALONE,NAME,URL,MID,AID) 
	values(1, 0, '1', 0, null, null, (select id from BC_SECURITY_MODULE where name='职务配置'), null);
insert into BC_DESKTOP_SHORTCUT (STATUS_,INNER_,ORDER_,STANDALONE,NAME,URL,MID,AID) 
	values(1, 0, '2', 0, null, null, (select id from BC_SECURITY_MODULE where name='单位配置'), null);
insert into BC_DESKTOP_SHORTCUT (STATUS_,INNER_,ORDER_,STANDALONE,NAME,URL,MID,AID) 
	values(1, 0, '3', 0, null, null, (select id from BC_SECURITY_MODULE where name='部门配置'), null);
insert into BC_DESKTOP_SHORTCUT (STATUS_,INNER_,ORDER_,STANDALONE,NAME,URL,MID,AID) 
	values(1, 0, '4', 0, null, null, (select id from BC_SECURITY_MODULE where name='岗位配置'), null);
insert into BC_DESKTOP_SHORTCUT (STATUS_,INNER_,ORDER_,STANDALONE,NAME,URL,MID,AID) 
	values(1, 0, '5', 0, null, null, (select id from BC_SECURITY_MODULE where name='人员配置'), null);
insert into BC_DESKTOP_SHORTCUT (STATUS_,INNER_,ORDER_,STANDALONE,NAME,URL,MID,AID) 
	values(1, 0, '6', 0, null, null, (select id from BC_SECURITY_MODULE where name='模块配置'), null);
insert into BC_DESKTOP_SHORTCUT (STATUS_,INNER_,ORDER_,STANDALONE,NAME,URL,MID,AID) 
	values(1, 0, '7', 0, null, null, (select id from BC_SECURITY_MODULE where name='角色配置'), null);
    
insert into BC_DESKTOP_SHORTCUT (STATUS_,INNER_,ORDER_,STANDALONE,NAME,URL) 
	values(1, 0, '8', 1, '百度搜索', 'http://www.baidu.com/');
