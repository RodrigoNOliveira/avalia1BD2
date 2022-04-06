
create database prova1;


create table estacionamento(
	idEstacionamento int not null auto_increment,
    nomeFantasia varchar(45) not null,
    DtUltRelatorio timestamp,
    primary key (idEstacionamento)

);

create table setor(
	idSetor int not null,
    numeroVagasTotal int not null,
	numeroVagasOc int not null,
    Estacionamento_idEstacionamento int not null,
    primary key (idSetor),
	constraint fk_setor_estacio foreign key (Estacionamento_idEstacionamento ) references estacionamento(idEstacionamento )


);

create table vagas(
	idVagas int not null auto_increment,
    Setor_idSetor int not null,
	estado int not null,
    tempoOc int not null,
    vezesOc int,
    primary key (idVagas),
    constraint fk_vagas_setor foreign key (Setor_idSetor) references setor(idSetor) 

);


create table ticket(
	idTicket int not null auto_increment,
    codBarras int not null,
	estado int not null,
    Estacionamento_idEstacionamento int not null,
    primary key (idTicket),
    constraint fk_ticket_estacionamento foreign key (Estacionamento_idEstacionamento) references estacionamento(idEstacionamento)

);

describe estacionamento;
insert into estacionamento values(1, 'Estacionacarro', null);
insert into estacionamento values(2, 'Estacionamoto', null);
insert into estacionamento values(3, 'Estacionatudo', null);


insert into ticket values(1, "325654", "3", 1);
insert into ticket values(2, "5423543543", "6", 2);
insert into ticket values(3, "65464574", "1", 3);


insert into setor values(1, "6", "3", 1);
insert into setor values(2, "0", "0", 2);
insert into setor values(3, "4", "9", 3);


insert into vagas values(1, 1, "3", "6", "2");
insert into vagas values(2, 1, "5", "4", null);
insert into vagas values(3, 1, "0", "0", "6");


