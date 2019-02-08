:> top.log
${NPNR} --json top.json --asc top.asc --pcf top.pcf `cat top.npnr` > top.log 2>&1 || true
grep "^ERROR: PACKAGE_PIN of SB_IO 'SB_IO' connected to more than a single top level IO.$" top.log
