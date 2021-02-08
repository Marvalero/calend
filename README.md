# README

# Execute postgres

Create container:
```
sudo docker run --name some-postgres -p 5432:5432 -e POSTGRES_PASSWORD=user -e POSTGRES_USER=user -e POSTGRES_DB=rails_dev -d postgres
```

You can jump to it:
```
psql -U user -d rails_dev -h 127.0.0.1
\c calend
SELECT * FROM appointments;
```