# knownuser-php-dev-image
Development environment image for knownuser for PHP 5 and 7 (relates to story 4496 and 4587)

Create docker image for knownuser where the following is installed
- Linux
- Apache
- PHP v. 5 or v. 7

NB: This image will only contain 4 files:
- docker-compose.yml 
- docker-tests-php5.dockerfile
- docker-tests-php.dockerfile.
- /Tests/TestSuite.php

These first 3 files are to be placed in the root folder of KnownUser-v3-php repository and the last file is to be placed inside the Tests folder. 
Open the docker-compose.yml file and potin towards the relevant docker-tests-php?.dockerfile (5 or 7)
run hereafter the following docker commands:
- docker-compose build
- docker-compose up 

Above docker command will run all unit tests inside the Tests folder.
