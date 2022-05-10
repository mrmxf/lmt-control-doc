# LMT Control Doc

Repository for creating the Control Document for LMT - Language Metadata Table.

## Gitpod workflow

If you have a free [gitpod](https://gitpod.io) account to go with your
[github](https://github.com) account the use this method to get the best
automation, otherwise follow the local instructions below.

Launch a gitpod workspace terminal & check that `zmp` and `clog` were installed:

'''sh
zmp --version
clog --version
'''

If either of those gave an error, then run the install script:

'''sh
bash clogrc/gitpod-tasks.sh before
'''

## Local Linux / Mac workflow

You will need the [ZMP for Linux](https://mrmxf.com/get/zmp) or ZMP for
[Mac](https://mrmxf.com/get/mac/zmp) executable. You can automate this to get
the latest version:

```
MY_BIN_FOLDER=/usr/local/bin
SRC=https://mrmxf.com/get/zmp
# for Macs: SRC=https://mrmxf.com/get/mac/zmp
curl -o zmprc/zmp  : chmod +x zmprc/zmp : PATH=$PATH:$GITPOD_REPO_ROOT/zmprc:$GITPOD_REPO_ROOT/clogrc`

* dist/ contains the generated docs
* x-r contains all the external resources

## Building the docs

Read the `x-r/README.md` file for dependencies and then run `x-r/bin/makedocs.sh` on linux
