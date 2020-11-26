# Springboot-JPA-Blog
https://www.youtube.com/watch?v=rpcoHCXgGnQ&list=PL93mKxaRDidECgjOBjPgI3Dyo8ka6Ilqm&index=1


docker ps
docker run -d -p 3305:3306 -e MYSQL_ROOT_PASSWORD=root --name mysql_docker mysql 
docker exec -i -t mysql_docker bash
mysql -u root -p


-- 유저이름@아이피주소
create user 'cos'@'%' identified by 'cos1234';
-- ON DB이름.테이블명
-- TO 유저이름@아이피주소
GRANT ALL PRIVILEGES ON *.* TO 'cos'@'%';
CREATE DATABASE blog CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
use blog;
