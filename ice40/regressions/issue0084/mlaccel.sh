:> mlaccel.log
${NPNR} --json mlaccel.json --pcf mlaccel.pcf `cat mlaccel.npnr` > mlaccel.log 2>&1 || true
grep "^ERROR: PACKAGE_PIN of SB_IO 'qpi_in_buf\\[1\\]' connected to more than a single top level IO.$" mlaccel.log
