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

#include "bits.h"
#include "nextpnr.h"

namespace nextpnr {

class BitsTest : public ::testing::Test
{
};

TEST_F(BitsTest, popcount)
{
    ASSERT_EQ(Bits::popcount(0), 0);
    ASSERT_EQ(Bits::generic_popcount(0), 0);
    for (size_t i = 0; i < std::numeric_limits<unsigned int>::digits; ++i) {
        ASSERT_EQ(Bits::popcount(1 << i), 1);
        ASSERT_EQ(Bits::generic_popcount(1 << i), 1);
    }

    ASSERT_EQ(Bits::popcount(std::numeric_limits<unsigned int>::max()), std::numeric_limits<unsigned int>::digits);
    ASSERT_EQ(Bits::generic_popcount(std::numeric_limits<unsigned int>::max()),
              std::numeric_limits<unsigned int>::digits);
}

TEST_F(BitsTest, ctz)
{
    for (size_t i = 0; i < std::numeric_limits<unsigned int>::digits; ++i) {
        ASSERT_EQ(Bits::ctz(1 << i), i);
        ASSERT_EQ(Bits::generic_ctz(1 << i), i);
    }

    for (size_t i = 0; i < std::numeric_limits<unsigned int>::digits - 1; ++i) {
        ASSERT_EQ(Bits::ctz((1 << i) | (1 << (i + 1))), i);
        ASSERT_EQ(Bits::generic_ctz((1 << i) | (1 << (i + 1))), i);
    }
}

}; // namespace nextpnr
