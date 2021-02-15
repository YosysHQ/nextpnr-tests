#!/usr/bin/env bash
set -ex
yosys -q -p "prep; write_json design.json" design.v
$NPNR --json design.json --pre-pack pre_pack.py --post-route post_route.py --no-iobs
