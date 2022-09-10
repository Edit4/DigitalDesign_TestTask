use Dising_Digita_Test

Create table Department(
ID int Identity(1,1) not null primary key,
[Name] varchar(100)
);

Create table Employee(
ID int identity(1,1) primary key,
Department_ID int, 
Chif_ID int,
[Name] varchar(200),
Salary numeric(11),
foreign key (Department_ID) references Department(ID),
foreign key (Chif_ID) references Employee(ID)
); 