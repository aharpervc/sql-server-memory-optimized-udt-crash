use demo
go

create schema udt
go

if type_id('udt.demo_crash') is not null
	drop type udt.demo_crash
go

create type udt.demo_crash as table (
	description varchar(128) not null,
	sort_key int not null

	index IX_demo_crash_description hash (description) with (bucket_count = 64)
)
with (
	memory_optimized = on
)
go
