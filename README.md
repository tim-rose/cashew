# CASHEW: a Cache updater

This is a simple program to copy files from a shared filesystem location to
the current directory.  It works well for network mounts and file shares, but
is not suited to updating via URLs.

## Usage

Create a "cache.conf" file containing a list of files to be cached.
Run cashew!

## TODO

* command line options
  * alternate config
  * arg.s: restrict to specified files
* recursive mode, to cache with more structure
* cache URLs too!
* manual page
* tests
