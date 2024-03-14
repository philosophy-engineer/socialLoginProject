-- create 
CREATE TABLE IF NOT EXISTS member (
  userId VARCHAR(60),
  username VARCHAR(20),
  profileImg VARCHAR(200),
  created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  PRIMARY KEY (userId)
);

-- insert
INSERT INTO member(userId, username) VALUES
  ("1", "one"),
  ("2", "two"),
  ("3", "김기재"),
  ("4", "박근원")
;
DO SLEEP(1);
INSERT INTO member(userId, username) VALUES  ("5", "asd");
select * from member;

-- 1
SELECT userId, username FROM member WHERE created = (SELECT MAX(created) FROM member);

-- 2
SELECT username FROM member where username = "asd";

-- 3
DELETE FROM member WHERE username = "박근원";
select * from member;

-- 4
UPDATE member SET userId = "dsa" WHERE username = "김기재";
select * from member;
