drop database chat_v7;

show databases;
CREATE DATABASE chat_v7;
USE chat_v7;
SHOW TABLES;


/* DDL CON ENFOQUE EN SEGURIDAD*/
/* creamos un usuario con persimos solo para acceder a la base de datos db_blog*/
/* usuario: user1,  password: user-1 */
CREATE USER 'user1'@'localhost' identified by 'user-1';

GRANT ALL PRIVILEGES ON chat_v7.* TO user1@localhost;
FLUSH PRIVILEGES;

DROP USER 'user1'@'localhost';

/* DDL CON ENFOQUE EN SEGURIDAD*/


SHOW TABLES;

select * from blog_comentario;