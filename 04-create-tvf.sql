use demo
go

create or alter function dbo.demo_tvf (
    --
)
returns @results table (
    id int
)
as
begin

    declare @t udt.demo_crash

    insert  @t (description, sort_key)
    values  ('hello', 0)

    return
end
go
