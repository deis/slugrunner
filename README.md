# Deis Slugrunner

[![Build Status](https://travis-ci.org/deis/slugrunner.svg?branch=master)](https://travis-ci.org/deis/slugrunner) [![Docker Repository on Quay](https://quay.io/repository/deisci/slugrunner/status "Docker Repository on Quay")](https://quay.io/repository/deisci/slugrunner)


`deis/slugrunner` pulls a slugfile from an endpoint (which may be a file server or stored on an S3 API compatible server), and runs it based on its Procfile

## Installation

You will need Docker and Kubectl to use this package.

```
$ make build
$ make deploy
```
