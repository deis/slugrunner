# Deis Slugrunner v2
[![Build Status](https://ci.deis.io/job/slugrunner/badge/icon)](https://ci.deis.io/job/slugrunner)
[![Docker Repository on Quay](https://quay.io/repository/deisci/slugrunner/status "Docker Repository on Quay")](https://quay.io/repository/deisci/slugrunner)

Deis (pronounced DAY-iss) Workflow is an open source Platform as a Service (PaaS) that adds a developer-friendly layer to any [Kubernetes](http://kubernetes.io) cluster, making it easy to deploy and manage applications on your own servers.

For more information about the Deis Workflow, please visit the main project page at https://github.com/deis/workflow.

## Beta Status

This Deis component is currently in beta status, and we welcome your input! If you have feedback, please [submit an issue][issues]. If you'd like to participate in development, please read the "Development" section below and [submit a pull request][prs].

# About

The slugrunner downloads a [slug](https://devcenter.heroku.com/articles/slug-compiler) from a specified [Minio][minio], [S3][s3], [GCS][gcs], or [Azure][azure] storage service and runs it based on its [Procfile](https://devcenter.heroku.com/articles/procfile).

This component is usually launched by the [Deis Controller](https://github.com/deis/controller) and used inside the Deis [PaaS](https://en.wikipedia.org/wiki/Platform_as_a_service), but it is flexible enough to be used as a component inside any Kubernetes cluster.

# Development

The Deis project welcomes contributions from all developers. The high level process for development matches many other open source projects. See below for an outline.

* Fork this repository
* Make your changes
* [Submit a pull request][prs] (PR) to this repository with your changes, and unit tests whenever possible.
  * If your PR fixes any [issues][issues], make sure you write Fixes #1234 in your PR description (where #1234 is the number of the issue you're closing)
* The Deis core contributors will review your code. After each of them sign off on your code, they'll label your PR with LGTM1 and LGTM2 (respectively). Once that happens, the contributors will merge it

[issues]: https://github.com/deis/slugrunner/issues
[prs]: https://github.com/deis/slugrunner/pulls
[minio]: https://minio.io/
[s3]: https://aws.amazon.com/s3/
[gcs]: https://cloud.google.com/storage/
[azure]: https://azure.microsoft.com/services/storage/
