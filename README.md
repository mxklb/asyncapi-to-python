# AsyncApi to Python
This uses [asyncapi/python-paho-template](https://github.com/asyncapi/python-paho-template)
to create python code from a given *async-api.yaml* via docker-compose.

## How to use this
Configure/Set the following environment variables within the *.env* file:

    APIPATH=./api
    APIYAML=async-api.yaml
    CODEPATH=./output
    VERSION=0.2.10

`APIPATH` defines where to find a given `APIYAML` file. `CODEPATH` defines where
to output the generated python code. Set `VERSION=0.2.10` to define the 
python-paho-template release to be used.

## Generate python code
To generate python code from a given *api/async-api.yaml* file, just call

    docker-compose up --build

The generated python code can be found in the given *output* directory.

## Automated tests [![Build Status](https://app.travis-ci.com/mxklb/asyncapi-to-python.svg?branch=master)](https://app.travis-ci.com/mxklb/asyncapi-to-python)

Travis CI generates code from `$APIYAML` and runs `main.py` against [test.mosquitto.org:1883](http://test.mosquitto.org) using `python3`.
