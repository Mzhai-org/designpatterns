use spring_cloud;

drop table if exists user;

CREATE TABLE user (
  id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(100) NOT NULL,
  name varchar(100) NOT NULL,
  age int(3) DEFAULT null,
  balance decimal (10,2) not null,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into user (username, name, age, balance) values ('account1', '张三', 20, 100.00);
insert into user (username, name, age, balance) values ('account2', '李四', 28, 180.00);
insert into user (username, name, age, balance) values ('account3', '王五', 32, 280.00);