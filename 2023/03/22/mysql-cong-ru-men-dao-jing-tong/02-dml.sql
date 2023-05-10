USE `ddl`;
###################################################################
# 插入数据
INSERT INTO `user`
VALUES (1, 'root', 18, 1, '2000-11-11');

INSERT INTO `user`
    (id, name, age)
VALUES (2, 'admin', 24);

INSERT INTO `user`
VALUES (3, 'u1', 20, 0, '2000-11-11'),
       (4, 'u2', 20, 1, '2000-11-11');

INSERT INTO `user`
    (id, name, age)
VALUES (5, 'u3', 20),
       (6, 'u4', 20),
       (7, 'u5', 20);


SELECT *
FROM user;

###################################################################
# 修改数据
UPDATE `user`
SET name='ADMIN',
    age=25,
    gender=1
WHERE id = 2;

UPDATE `user`
SET datetime='2008-08-08'
WHERE 1 = 1;


###################################################################
# 删除数据
DELETE
FROM `user`
WHERE 1 = 1;
