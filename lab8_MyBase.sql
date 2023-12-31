use G_MyBase;

--1
go
create view [������ �������]
as select 
������.ID_������ [���],
������.��������_������ [�������� ������], 
������.������� [�������],
������.���� [����]
from ������;
go
select * from [������ �������]

drop view [������ �������]

--2
go
create view [���������� �������]
as select 
p.���_���������� [���������], COUNT(d.��������_������)[���������� �������]
from ���������� p inner join ������ d
on p.���_����������=d.���_����������
group by p.���_����������
go
select * from [���������� �������] order by [���������� �������]
go 
drop view [���������� �������]

--3
go
create view [������ ����������]
	as select 
	������.ID_������ [���],
	������.��������_������ [�������� ������], 
	������.���� [����]
	from ������
	where ��������_������ like '%���������%'
go
select * from [������ ����������]
go
alter view [������ ����������]
	as select 
	������.ID_������ [���],
	������.��������_������ [�������� ������], 
	������.���� [����],
	������.�������[�������]
	from ������
	where ��������_������ like '%���������%';
select * from [������ ����������]

insert [������ ����������] values ('23','��������� �2',222)
select * from [������ ����������]

update [������ ����������]
set [����]=0
where ([����]=222)
select * from [������ ����������]

delete [������ ����������]
where [���]=23
select * from [������ ����������]

drop view [������ ����������]

--4
create view [������ ����������]
	as select 
	������.ID_������[���],
	������.��������_������ [�������� ������], 
	������.���� [����]
	from ������
	where ��������_������ like '%���������%' with check option
go
select * from [������ ����������]

insert [������ ����������] values ('26','��������� �1',200);
--insert [������ ����������] values ('27','�1',200);

select * from [������ ����������]
drop view [������ ����������]

--5
create view [������ �� ���]
as select top 15
������.ID_������ [���],
������.��������_������ [�������� ������], 
������.������� [�������],
������.���� [����]
from ������
order by [�������� ������]
go
select * from [������ �� ���]

drop view [������ �� ���]

--6
go
create view [���������� �������]
as select 
p.���_���������� [���������], COUNT(d.��������_������)[���������� �������]
from ���������� p inner join ������ d
on p.���_����������=d.���_����������
group by p.���_����������
go 

alter view [���������� �������] with schemabinding
as select 
p.���_���������� [���������], 
COUNT(d.��������_������)[���������� �������],
d.����������_��_������[���������� �� ������]
from dbo.���������� p inner join dbo.������ d
on p.���_����������=d.���_����������
group by p.���_����������, d.����������_��_������
go
select * from [���������� �������]

drop view [���������� �������]