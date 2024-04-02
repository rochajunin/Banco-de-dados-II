-- a
select 8 from ususario

-- b
select 8 from grupo

-- c
select 8 from mensagem

-- d
select * from mensagem where conteudo like '%estudar'

-- e
select * from usuario where idUsuario in (select idUsuario from usuarioGrupo where idGrupo = 3);

-- f
select * from usuario where idUsuario in (select idUsuario from usuarioGrupo where idGrupo in (1,2));

-- g
select * from usuario where idUsuario not in (select userOrigem from mensagem);

-- h
select nome from usuario where idUsuario = (select userOrigem from mensagem where idMensagem = (select min(idMensagem from mensagem)));

-- i


