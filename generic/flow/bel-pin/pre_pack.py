ctx.addWire(name="BEL_A0", type="WIRE", x=0, y=0)
ctx.addWire(name="BEL_A1", type="WIRE", x=0, y=0)
ctx.addWire(name="BEL_Q", type="WIRE", x=0, y=0)
ctx.addWire(name="SLICE_F", type="WIRE", x=0, y=0)

ctx.addPip(name="Q->A0", type="PIP", srcWire="BEL_Q", dstWire="BEL_A0", delay=ctx.getDelayFromNS(0.05), loc=Loc(0, 0, 0))
ctx.addPip(name="Q->A1", type="PIP", srcWire="BEL_Q", dstWire="BEL_A1", delay=ctx.getDelayFromNS(0.05), loc=Loc(0, 0, 0))

ctx.addBel(name="BEL", type="TEST_BEL", loc=Loc(0, 0, 0), gb=False, hidden=False)

ctx.addBelInput(bel="BEL", name="A0", wire="BEL_A0")
ctx.addBelInput(bel="BEL", name="A1", wire="BEL_A1")
ctx.addBelOutput(bel="BEL", name="Q", wire="BEL_Q")

ctx.addBel(name="DUMMY_SLICE", type="GENERIC_SLICE", loc=Loc(0, 0, 1), gb=False, hidden=False)
ctx.addBelOutput(bel="DUMMY_SLICE", name="F", wire="SLICE_F")


ctx.clearCellBelPinMap(cell="cell_i", cell_pin="A")
ctx.addCellBelPinMapping(cell="cell_i", cell_pin="A", bel_pin="A0")
ctx.addCellBelPinMapping(cell="cell_i", cell_pin="A", bel_pin="A1")
