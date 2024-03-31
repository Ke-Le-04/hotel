create trigger check_email
after insert on hotel
for each row
execute procedure
when (new.email not in (select email from hotel))
begin atomic rollback
end;

create view 