use G_MyBase;
--1
select ������.��������_������, ������.����������_��_������, round(avg(cast(������.���� as float(4))),2)[������� ����]
from ������ inner join ������
on ������.ID_������=������.ID_������
where ������.���_����������  like '%111%'
group by  ������.��������_������, ����������_��_������
--
select ������.��������_������, ����������_��_������, round(avg(cast(������.���� as float(4))),2)[������� ����]
from ������ inner join ������
on ������.ID_������=������.ID_������
where ������.���_����������  like '%111%'
group by rollup (������.��������_������, ����������_��_������)
--2
select ������.��������_������, ����������_��_������, round(avg(cast(������.���� as float(4))),2)[������� ����]
from ������ inner join ������
on ������.ID_������=������.ID_������
where ������.���_����������  like '%111%'
group by cube (������.��������_������, ����������_��_������)

--3
select ������.��������_������, ������.����������_��_������,������.���_����������, round(avg(cast(������.���� as float(4))),2)[������� ����]
from ������ inner join ������
on ������.ID_������=������.ID_������
where ������.���_����������  like '%111%'
group by  ������.��������_������, ����������_��_������,������.���_����������
UNION
select ������.��������_������, ������.����������_��_������,������.���_����������, round(avg(cast(������.���� as float(4))),2)[������� ����]
from ������ inner join ������
on ������.ID_������=������.ID_������
where ������.���_����������  like '%222%'
group by  ������.��������_������, ����������_��_������,������.���_����������
order by ��������_������ asc

--
select ������.��������_������, ������.����������_��_������,������.���_����������, round(avg(cast(������.���� as float(4))),2)[������� ����]
from ������ inner join ������
on ������.ID_������=������.ID_������
where ������.���_����������  like '%111%'
group by  ������.��������_������, ����������_��_������,������.���_����������
UNION all
select ������.��������_������, ������.����������_��_������,������.���_����������, round(avg(cast(������.���� as float(4))),2)[������� ����]
from ������ inner join ������
on ������.ID_������=������.ID_������
where ������.���_����������  like '%222%'
group by  ������.��������_������, ����������_��_������,������.���_����������
order by ��������_������ asc

--4
select ������.��������_������, ������.����������_��_������,������.���_����������, round(avg(cast(������.���� as float(4))),2)[������� ����]
from ������ inner join ������
on ������.ID_������=������.ID_������
where ������.���_����������  like '%111%'
group by  ������.��������_������, ����������_��_������,������.���_����������
INTERSECT
select ������.��������_������, ������.����������_��_������,������.���_����������, round(avg(cast(������.���� as float(4))),2)[������� ����]
from ������ inner join ������
on ������.ID_������=������.ID_������
where ������.���_����������  like '%222%'
group by  ������.��������_������, ����������_��_������,������.���_����������
order by ��������_������ asc

--5
select ������.��������_������, ������.����������_��_������,������.���_����������, round(avg(cast(������.���� as float(4))),2)[������� ����]
from ������ inner join ������
on ������.ID_������=������.ID_������
where ������.���_����������  like '%111%'
group by  ������.��������_������, ����������_��_������,������.���_����������
EXCEPT
select ������.��������_������, ������.����������_��_������,������.���_����������, round(avg(cast(������.���� as float(4))),2)[������� ����]
from ������ inner join ������
on ������.ID_������=������.ID_������
where ������.���_����������  like '%222%'
group by  ������.��������_������, ����������_��_������,������.���_����������
order by ��������_������ asc

