
select GETDATE()
select GETUTCDATE()

select DATEADD(day,2,getdate())
select DATEADD(hour,3,getdate())
select DATEDIFF(month,getdate(),'20170120')
select DATEPART(month,getdate())
print ISDATE('20200120')



declare @var1 varchar(20)
declare @var2 varchar(20)
set @var1 = 'Ramiro'
set @var2 = 'Gonzalez'

select concat (@var1,' ',@var2)

select LTRIM(RTRIM(@var1))+ ' ' + LTRIM(RTRIM(@var2))

print REPLICATE('0',5)

print UPPER(LEFT(@var1,1)) + LOWER(RIGHT((@var1),LEN(@var1)-1))+' '+UPPER(LEFT(@var2,1)) + LOWER(RIGHT((@var2),LEN(@var2)-1))

select REPLACE(@var1,'"','')


