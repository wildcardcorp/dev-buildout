Introduction
============

This is the DSAC customization/theme package for KARL


Requirements
------------

 - python installed with development headers
 - postgresql development headers(maybe)


Installation
------------

Create a virtual environment and run the buildout::

  $ cd path/to/repo
  $ path/to/virtualenv --no-site-packages .

Run the install::

  $ make install


Relstorage
~~~~~~~~~~

First initialize the db::

  $ make initdb

Then, run the database::

  $ make postgres

Next, setup the database. This requires starting postgresql and creating db, user.
Use the password "test".

  $ make createdb

Later, if you want to blow away the database and start over::

  $ make resetdb


Running
~~~~~~~

First off, make sure postgres is running::

  $ make postgres

Open up and new terminal window to Run Karl using Paste HTTP server in the
foreground::

  $ make run

Visit the test instance of Karl at::

  http://localhost:6543/

Default login and password are admin/admin.


TODO
----

- add paging to members/manage.html of a community. Really slow for large community
- packing database
