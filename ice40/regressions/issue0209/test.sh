:> test.log
${NPNR} --json test.json --asc test.asc --pcf test.pcf `cat test.npnr` > test.log 2>&1 || true
grep "^ERROR: BEL 'X0/Y28/io0' has no global buffer connection available$" test.log
