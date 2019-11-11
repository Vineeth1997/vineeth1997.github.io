alter table User_Registration 
add City varchar(20)


sp_helptext proc_blog

CREATE PROC GET_USER_DETAILS
as
begin
select*from User_Registration
end

alter proc Insert_into_User_Reg(@user_idn int ,@firstname varchar(50),@lastname varchar(50),@age int,@contactnumber varchar(10),@userpassword varchar(20),@user_role varchar(50),@organization varchar(20),@city varchar(20))
as
begin
insert into User_Registration values(@user_idn,@firstname,@lastname,@age,@contactnumber,@userpassword,@user_role,@organization,@city);
end

alter table Blog(Blog_Title varchar(50) primary Key,Blog_Description varchar(200) not null,Created_by varchar(100),Blog_image image);


ALTER proc proc_blog(@Blog_title varchar(50),
@Blog_description varchar(200),
@Created_by varchar(100),
@Blog_image image)
as 
begin
insert into Blog values(@Blog_title,@Blog_description,@Created_by,@Blog_image)
end

Create proc GetBlogDetails
as
begin select* from 
Blog
end

delete  from User_Registration where firstname='siva'
