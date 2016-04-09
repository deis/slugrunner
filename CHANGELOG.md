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
