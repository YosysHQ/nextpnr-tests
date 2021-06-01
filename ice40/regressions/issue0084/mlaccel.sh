:> mlaccel.log
${NPNR} --json mlaccel.json --asc mlaccel.asc --pcf mlaccel.pcf `cat mlaccel.npnr` > mlaccel.log 2>&1 || true
grep "^ERROR: PACKAGE_PIN of SB_IO 'qpi_i[on]_buf\\[[01]\\]' connected to more than a single top level IO.$" mlaccel.log
