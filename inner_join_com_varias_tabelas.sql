-- modelo relacional do tipo muitos para muitos
use cadastro;

create table gaf_assiste_curso(
    id int not null auto_increment,
    data date, -- data que o gafanhoto assistiu o curso do tipo date
    idgafanhoto int,
    idcurso int,
    primary key(id),
    foreign key(idgafanhoto) references gafanhotos(id),
    foreign key(idcurso) references cursos(idcurso)
)default charset = utf8;

-- colocando datas dentro da tabelo gaf_assiste_curso
insert into gaf_assiste_curso values
(default,'2021-01-01', '1', '2');

-- foi inserido mais dados através do workbench...

select * from gaf_assiste_curso;

select * from gafanhotos g join gaf_assiste_curso a on g.id = a.idgafanhoto;

select g.nome,  c.nome  from gafanhotos g 
join gaf_assiste_curso a 
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso
order by g.nome;

