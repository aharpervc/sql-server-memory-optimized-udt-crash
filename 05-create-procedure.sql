use demo
go

create or alter procedure dbo.demo_sp
as
begin

    select  *
    from    dbo.demo_tvf()

end
go
