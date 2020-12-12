# perl_sample_project

This is an example how to work with perl project in docker with freezing dependincies with Carton.

## How to run this project on the develpment machine

It is expected to run this project on your own computer (not on the dev server in the cloud).

To run this project:

 1. Install docker
 2. Clone this repo
 3. `cd perl_sample_project`
 4. `./restart`

Then get into container:

    docker exec -it sample_api bash

In the container you can run the code within the project environment:

Run sample script:

    carton exec perl -Ilib bin/sample.pl

Run tests:

    carton exec prove -l

Run webserver:

    ./cmd

(After running webserver you can open your project on your machine http://localhost:53593 )

Edit the files in this repo. They are mounted into container, so changing them on your machine
will "change" the in the container (actually they are the same files).

## How to update depenencies

 1. Add needed depenencies to the file `api/cpanfile`
 2. Regenerate file `cpanfile.snapshot` by running `cd api/; update_deps`
 3. Validate changes and create commit
 4. Run `./restart` to rebuild the project with the new list of depenenciess
