Example MongoDb
===============

This project is an example made by me to test how to make rails applications with mongodb using mongo_mapper.

Development
===

The project now, uses docker compose to boot mongodb through a simple Dockerfile to build it:

``` sh
docker-compose build mongo
docker-compose up
```

Or the last command could be:

``` sh
docker-compose up -d
```

To start the service on the background.

After the commands above, install dependencies from the rails app:

``` sh
bundle install
```

Start the rails server with:

``` sh
bundle exec rails s
```

Open http://localhost:3000

PS: I'll dockerize the rails app later to avoid install dependencies on the host machine.

Author
===

* Bruno Arueira.
