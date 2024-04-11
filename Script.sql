create database Clientes;
use Clientes;

create table if not exists dados(
id int primary key auto_increment,
nome_completo varchar(100) not null,
data_nascimento date not null,
idade int not null,
estado_civil enum('Solteiro', 'Casado', 'Divorciado', 'Não informado') not null,
sexo enum('Maculino', 'feminino') not null
);


insert into dados
(nome_completo, data_nascimento, idade, estado_civil, sexo)
values
('Amanda','1996-07-20', 26,'solteiro','feminino'),
('Carlos','1968-08-13', 54,'Solteiro','Masculino'),
('Tania','1972-07-04', 50,'Solteiro','Feminino'),
('Juliana','2000-04-29', 22,'Solteiro','Masculino'),
('Matheus','2007-02-17', 15,'Casado','Masculino'),
('Matheus Braga','1989-12-25', 33,'Casado','Masculino'),
('Vinicius','1995-01-10', 27,'Divorciado','Masculino'),
('Carla','2001-07-20', 21,'Divorciado','Feminino'),
('Vitor','1973-03-28', 49,'Não Informado','Masculino'),
('Alysson','1966-06-06', 56,'Solteiro','Masculino');

select * from dados
order by idade desc limit 1;

select * from dados
order by idade asc limit 1;

select * from dados
where nome_completo like 'A%';


select * from dados
where nome_completo like '%s';


select * from dados
where sexo like 'feminino';


select * from dados
where estado_civil like 'Solteiro';


select * from dados
where data_nascimento between '1990-01-01' and '2023-10-04';


select * from dados
where idade between 26 and 50 order by idade desc;


