:> testcase.log
${NPNR} --json testcase.json --textcfg testcase.config `cat testcase.npnr` > testcase.log 2>&1 || true
grep "^ERROR: Pin B of TRELLIS_IO 'TRELLIS_IO' connected to more than a single top level IO.$" testcase.log
