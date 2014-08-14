dirtycheck
==========

A python script that checks a given git repository to see if it contains any
uncommitted or untracked files. If the repository contains any such files, it
is considered dirty and a non-zero exit code is returned.

This script is useful as part of a build toolchain e.g. for ensuring that
uncommitted code is never deployed (deploys should be tagged and repeatable).

This script depends on `git` and Python 2.6 or 2.7. Usage is simple:

    $ python dirtycheck.py . # to check the current working directory
    $ python dirtycheck.py myrepo/ # to check the myrepo directory

An example `Makefile` is included to show how this script can be added to your
build chain. Try it out with a simple `$ make deploy` inside this repository
(change this file or `git reset --hard HEAD` to see both states).
