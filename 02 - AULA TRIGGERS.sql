delimiter $
create trigger trg_log before delete
on tbl_cliente
for each row
begin
	insert into tbl_log
		   (usuario, dt_log, hora)
	values (user(), curdate(), curtime());

end $
delimiter ;

#TRIGGER COM INSERT
delimiter $
create trigger trg_log_insert after insert
on tbl_cliente
for each row
begin
	insert into tbl_log
		   (usuario, dt_log, hora)
	values (user(), curdate(), curtime());

end $
delimiter ;

insert into tbl_cliente (nome_cliente, cpf, data_nasc,
                         cep, numero, complemento)
values ('JOSEFINO GRANDE','123456789099','1987-09-21',6768100,2,'')
;

delimiter $
create trigger trg_log_update after update
on tbl_cliente
for each row
begin
	insert into tbl_log
		   (usuario, dt_log, hora)
	values (user(), curdate(), curtime());

end $
delimiter ;
#

delete from tbl_cliente;

select * from tbl_cliente;

select * from tbl_log;

select count(*) from tbl_log;

show triggers from bd_vendas;

drop trigger trg_log;

insert into tbl_cliente (cod_cliente, 
nome_cliente, cpf, data_nasc, cep, numero,
complemento) values (1,'Marcos Costa',
'12345678910', '2005-10-22', 6768100, '25A',
'');