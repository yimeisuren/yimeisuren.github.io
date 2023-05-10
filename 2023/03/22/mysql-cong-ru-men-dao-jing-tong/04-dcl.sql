USE `mysql`;

SELECT *
FROM user;

# 创建用户 u1, 只能在本机上使用mysql
CREATE USER 'u1'@'localhost'
    IDENTIFIED BY 'root';

# 创建用户 u2, 可以在任意主机上使用mysql
CREATE USER 'u2'@'%'
    IDENTIFIED BY 'root';

UPDATE `user`
SET Host='%'
WHERE User = 'root';

# 查询用户权限
SHOW GRANTS FOR 'u1'@'localhost';
# 授予用户权限
GRANT ALL
    ON ddl.user
    TO 'u1'@'localhost';