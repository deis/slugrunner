### v2.0.0-beta3 -> v2.0.0-beta4

#### Documentation

 - [`6dbf654`](https://github.com/deis/slugrunner/commit/6dbf654a991d3b14f386aa1aecbd9471a1acd411) CHANGELOG.md: update for v2.0.0-beta3

### v2.0.0-beta2 -> v2.0.0-beta3

#### Fixes

 - [`60ac51d`](https://github.com/deis/slugrunner/commit/60ac51d675f94a77963c3e34fcc9a44089953805) init: Fix error in init script

#### Maintenance

 - [`fcfb0f2`](https://github.com/deis/slugrunner/commit/fcfb0f208563231bb50f56d6056c18775ae4221c) .travis.yml: Deep six the travis -> jenkins webhooks

### v2.0.0-beta1 -> v2.0.0-beta2

#### Features

 - [`12dc491`](https://github.com/deis/slugrunner/commit/12dc491eec00604301cc72d1ee6c80f8cf030987) storage: use the objectstorage cli for upload and download of slug
 - [`2362fb8`](https://github.com/deis/slugrunner/commit/2362fb81921b437aeded5aa3703a69a499cd0eb1) _scripts: add CHANGELOG.md and generator script
 - [`b6174af`](https://github.com/deis/slugrunner/commit/b6174af8268af04832c9971e4505afd682133d19) storage: Add support for multiple object storages

#### Fixes

 - [`ca4bcdc`](https://github.com/deis/slugrunner/commit/ca4bcdc77a1174ad8d3032cae0c3c04f62f15ae9) objectstorecli: the latest version having the s3 auth fix
 - [`bcdeae2`](https://github.com/deis/slugrunner/commit/bcdeae2a895d506f1b54c1bdf54a8ec8d8161d1c) .travis.yml: run docker build on all builds

### 2.0.0-alpha -> v2.0.0-beta1

#### Features

 - [`2ffc360`](https://github.com/deis/slugrunner/commit/2ffc3609b34060259eba45daec957c41c8bb53e1) mutable: add support for immutable build
 - [`7b872e4`](https://github.com/deis/slugrunner/commit/7b872e4f32e28fb49698c18327f07055e5efe738) gcs: signature to s3v2 based on gcs domain

#### Maintenance

 - [`8d874bd`](https://github.com/deis/slugrunner/commit/8d874bd72d206960288aecfb9600a89c87c0dacb) rootfs: bump version to 2.0.0-dev
 - [`7ccf13c`](https://github.com/deis/slugrunner/commit/7ccf13c355ff1d7628b78c5cfd894fc6dbfdd4d7) release: bump version to v2-beta

### 2.0.0-alpha

#### Features

 - [`52b3f72`](https://github.com/deis/slugrunner/commit/52b3f7294b3212c5862962dbb5452cb6429f45e7) secrets:  remove echo statement for secrets
 - [`a7bdafd`](https://github.com/deis/slugrunner/commit/a7bdafd9b9dbd8dbf1191285a8d25b0a0a6f100c) mc:  add new minio client and change init script accordingly
 - [`2be1b0f`](https://github.com/deis/slugrunner/commit/2be1b0fcc8c9067c9c494cff9aff889b88ead27b) deploy.sh: push deisci/slugrunner:v2-alpha images from master

#### Fixes

 - [`841faf0`](https://github.com/deis/slugrunner/commit/841faf02194820ef24309da5fe9120055a07316d) init: send mc output to /dev/null

#### Maintenance

 - [`688ea6f`](https://github.com/deis/slugrunner/commit/688ea6f58b75b649f61994dc9bc0fb9ef4fd7d05) release: set version and lock to deis registry
