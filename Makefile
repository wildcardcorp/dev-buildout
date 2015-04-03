


install:
	bin/python bootstrap.py
	bin/buildout
	mkdir -p var/data

run:
	bin/paster serve etc/karl.ini

initdb:
	parts/postgresql/bin/initdb -D var/data

createdb:
	parts/postgresql/bin/createuser -P karltest
	parts/postgresql/bin/createdb -O karltest karltest

resetdb:
	parts/postgresql/bin/dropdb karltest
	parts/postgresql/bin/createdb -O karltest karltest

postgres:
	parts/postgresql/bin/postgres -D var/data
