:> conn-crash.log
${NPNR} --json conn-crash.json --asc conn-crash.asc --pcf conn-crash.pcf `cat conn-crash.npnr` > conn-crash.log 2>&1 || true
grep "^ERROR: Cell 'sevenseg_segment2\$sb_io' cannot be bound to bel 'X12/Y31/io1' since it is already bound to cell 'clk12\$sb_io'$" conn-crash.log
