/*
 *  nextpnr -- Next Generation Place and Route
 *
 *  Copyright (C) 2021  Symbiflow Authors
 *
 *  Permission to use, copy, modify, and/or distribute this software for any
 *  purpose with or without fee is hereby granted, provided that the above
 *  copyright notice and this permission notice appear in all copies.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 *  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 *  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 *  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 *  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 *  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 *  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */

#include "gtest/gtest.h"

#include "nextpnr.h"
#include "xdc.h"

#include <tcl.h>

USING_NEXTPNR_NAMESPACE

class XdcTest : public ::testing::Test
{
};

TEST_F(XdcTest, do_nothing_interp)
{
    {
        TclInterp interp(nullptr);
    }
    {
        TclInterp interp(nullptr);
    }
}

TEST_F(XdcTest, unknown_function)
{
    TclInterp interp(nullptr);

    NPNR_ASSERT(Tcl_Eval(interp.interp, "set value port") == TCL_OK);
    ASSERT_STREQ(Tcl_GetVar(interp.interp, "value", 0), "port");

    NPNR_ASSERT(Tcl_Eval(interp.interp, "set value port[0]") == TCL_OK);
    ASSERT_STREQ(Tcl_GetVar(interp.interp, "value", 0), "port[0]");

    NPNR_ASSERT(Tcl_Eval(interp.interp, "set value port[1]") == TCL_OK);
    ASSERT_STREQ(Tcl_GetVar(interp.interp, "value", 0), "port[1]");

    NPNR_ASSERT(Tcl_Eval(interp.interp, "set value port[10]") == TCL_OK);
    ASSERT_STREQ(Tcl_GetVar(interp.interp, "value", 0), "port[10]");

    NPNR_ASSERT(Tcl_Eval(interp.interp, "set value port[123]") == TCL_OK);
    ASSERT_STREQ(Tcl_GetVar(interp.interp, "value", 0), "port[123]");

    NPNR_ASSERT(Tcl_Eval(interp.interp, "set value port[x]") == TCL_ERROR);
    NPNR_ASSERT(Tcl_Eval(interp.interp, "set value port[0 x]") == TCL_ERROR);
}
