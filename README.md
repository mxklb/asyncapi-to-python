# AsyncApi to Python
This uses [asyncapi/python-paho-template](github.com/asyncapi/python-paho-template)
to create python code snippets from a given *async-api.yaml* via docker-compose.

## How to use this
Configure/Set the following environment variables within the *.env* file:

    APIPATH=./api
    APIYAML=async-api.yaml
    CODEPATH=./output

`APIPATH` defines where to find a given `APIYAML` file. `CODEPATH` defines where
to output the generated python code.

## Generate python code
To generate python code from a given *api/async-api.yaml* file, just call

    docker-compose up --build

The generated python code can be found in the given *output* directory.
