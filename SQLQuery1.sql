create database realstate_copy

select * INTO [realstate_copy].[dbo].[client]
FROM [real tate data].[dbo].[Client_Table];
use realstate_copy

DELETE FROM client WHERE ClientID =null;

select * INTO [realstate_copy].[dbo].[sales]
FROM [real tate data].[dbo].[Sales_Table];

select * INTO [realstate_copy].[dbo].[Expense]
FROM [real tate data].[dbo].[Expense_Table];

select * INTO [realstate_copy].[dbo].[property]
FROM [real tate data].[dbo].[Property_Table];

alter table client
alter column ClientID int not null;

alter table client
add constraint set_primary_key primary key (ClientID)
