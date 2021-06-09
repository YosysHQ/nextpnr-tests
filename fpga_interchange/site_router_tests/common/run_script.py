import sys
import yaml
import os

def test_case(ctx):
    with open(os.environ['TEST_YAML'], 'r') as f:
        test_data = yaml.safe_load(f.read())
        if 'test_case' in test_data:
            ctx.pack()
            for test_step in test_data['test_case']:
                print(test_step)
                if "place" in test_step:
                    for cell, bel in test_step["place"].items():
                      print("Binding Bel {} to Cell {}".format(bel, cell))
                      assert cell in ctx.cells, "Cell {} does not exist".format(cell)
                      ctx.bindBel(bel, ctx.cells[cell], STRENGTH_WEAK)
                if "test" in test_step:
                    print(test_step["test"])
                    for bel, check in test_step["test"].items():
                      print("Checking if location of bel {} is {}".format(bel, check))
                      print("Test result: {}, isBelLocationValid: {}, expected: {}".format(ctx.isBelLocationValid(bel) == check, ctx.isBelLocationValid(bel), check))
                if "unplace" in test_step:
                    print(test_step["unplace"])
                    cell = test_step["unplace"]
                    print("Unbinding Bel {}".format(cell))
                    ctx.explain_bel_status(cell)
                    ctx.unbindBel(cell)

test_case(ctx)
