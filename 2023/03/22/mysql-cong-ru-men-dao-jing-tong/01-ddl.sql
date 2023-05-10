####################################
# 1. 创建
####################################
# 1.1 创建数据库（增）
CREATE DATABASE
    IF NOT EXISTS `ddl`;

USE `ddl`;

# 1.2 创建数据表
CREATE TABLE
    IF NOT EXISTS `user`
(
    #字段 字段类型 注释
    id     INT
        COMMENT 'id主键',
    name   VARCHAR(10)
        COMMENT '姓名',
    age    INT
        COMMENT '年龄',
    gender TINYINT
        COMMENT '性别',

    PRIMARY KEY (id)
)
    COMMENT '用户表';


# 修改表: 为表添加一个字段
ALTER TABLE `user`
    ADD `nickname`
        VARCHAR(20)
        COMMENT '昵称';

# 修改字段类型
ALTER TABLE `user`
    MODIFY `nickname`
        VARCHAR(25);
# 修改字段名以及字段类型
ALTER TABLE `user`
    CHANGE `nickname` `user_nickname`
        VARCHAR(30)
        COMMENT '新昵称';
ALTER TABLE `user`
    ADD `datetime`
        DATETIME
        COMMENT '入职日期';


# 删除字段
ALTER TABLE `user`
    DROP `user_nickname`;

# 修改表名
ALTER TABLE `user`
    RENAME TO `user_table`;

DESC `user_table`;

ALTER TABLE `user_table`
    RENAME TO `user`;

####################################
# 3. 查询
####################################
# 3.1 查询数据库
# 3.1.1 查询所有的数据库
SHOW DATABASES;
# 3.1.2 查看当前使用的数据库
SELECT DATABASE();

# 3.2 查询表
# 3.2.1 查询当前数据库中的所有表
SHOW TABLES;
# 3.2.2 查看特定的表的详细信息
DESC `user`;
# 3.2.3 查看特定表的建表语句
SHOW CREATE TABLE `user`;

####################################
# 4. 删除
####################################
DROP DATABASE IF EXISTS `ddl`;