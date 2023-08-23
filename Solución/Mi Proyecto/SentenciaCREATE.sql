
select dbo.nombrefun (256)


create FUNCTION nombrefun (@var int)
RETURNS INT

as

begin
	set @var = @var * 5
	return @var
end