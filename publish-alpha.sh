#!/bin/sh
set -e
circleci config pack src > orb.yml
circleci orb publish orb.yml probely/security-scan@dev:alpha
rm -rf orb.yml
