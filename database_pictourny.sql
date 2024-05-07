create database Pictourny;
use Pictourny;
create table Login(
	users_Email varchar(50),
    users_Password varchar(50)
);
create table Sign_Up(
	users_Name varchar(50),
	users_Email varchar(50),
    users_Password varchar(50)
    
    
);
alter table Sign_Up
add reset_token_hash varchar(64) default null;

alter table Sign_Up
add reset_token_expires_at datetime default null;

ALTER TABLE Sign_Up
DROP COLUMN users_Enter_Password;

alter table Sign_Up
add unique(reset_token_hash);

ALTER TABLE Sign_Up
MODIFY COLUMN users_Password VARCHAR(1000);


select * from Sign_Up;


