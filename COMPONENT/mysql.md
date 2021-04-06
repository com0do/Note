# mysql

```text
#服务停止 service mysqld stop
/etc/init.d/mysqld stop
#创建用户,任意远程登陆%
create user 'cyrus'@'%' identified by '123';
#授权 select/insert/update/all
#grant privileges on databases.tablename to 'username@'host'；
grant all on *.* to 'cyrus'@'%'；
#更改密码
set password for 'username'@'localhost' = password('newpassword');
#撤销用户权限
revoke privileges on databases.tablename from 'username'@'host';
#删除用户
drop user 'username'@'host';
#更新表属性
alter table tableName change userInfo userInfo JSON;
#删除数据库
truncate table ty_users;
delete from ty_users where id not 'cui'
#数据导出 --no-data = -d
mysqldump -root -p shop ty_goods > goods.sql
# 顺序：desc：递减，asc：递增
#数据连接 distinct：去重，separator:设定分隔符，默认‘,’
# concat_ws(concatenate with separator):字符转链接
select cat_id1, group_concat(distinct concat_ws('/',cat_id1,cat_id2,cat_id3) order by `order` asc separator ',' ) as  `what`  from ty_spec group by cat_id1;
#内连接查询
SELECT a.name,a.order,b.* FROM ty_spec AS a INNER JOIN
  ty_spec_item AS b ON a.id = b.spec_id WHERE b.id IN(28,100,28,99,13,100,28,55,13,55,13,99) ORDER BY a.order
```

