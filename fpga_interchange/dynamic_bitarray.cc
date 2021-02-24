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

#include "dynamic_bitarray.h"
#include <climits>

namespace nextpnr {

class DynamicBitarrayTest : public ::testing::Test
{
};

TEST_F(DynamicBitarrayTest, oneshot)
{
    for (size_t i = 0; i < 100; ++i) {
        std::vector<uint8_t> simple_storage;
        nextpnr::DynamicBitarray<> bitarray;
        ASSERT_EQ(bitarray.bits_per_value(), CHAR_BIT);

        simple_storage.resize(i);
        bitarray.resize(i);
        ASSERT_LE(i, bitarray.size());
        ASSERT_LT(bitarray.size() - i, CHAR_BIT);

        for (size_t k = 0; k < 3; ++k) {
            for (size_t j = 0; j < i; ++j) {
                int value = rand() % 2;
                simple_storage[j] = value == 1;
                bitarray.set(j, value == 1);
            }

            for (size_t j = 0; j < i; ++j) {
                ASSERT_EQ(simple_storage[j], bitarray.get(j));
            }
        }
    }
}

TEST_F(DynamicBitarrayTest, resize)
{
    std::vector<uint8_t> simple_storage;
    nextpnr::DynamicBitarray<> bitarray;

    for (size_t i = 0; i < 100; ++i) {

        simple_storage.resize(i);
        bitarray.resize(i);

        for (size_t k = 0; k < 3; ++k) {
            for (size_t j = 0; j < i; ++j) {
                int value = rand() % 2;
                simple_storage[j] = value == 1;
                bitarray.set(j, value == 1);
            }

            for (size_t j = 0; j < i; ++j) {
                ASSERT_EQ(simple_storage[j], bitarray.get(j));
            }
        }
    }
}

TEST_F(DynamicBitarrayTest, fill)
{
    nextpnr::DynamicBitarray<> bitarray;

    for (size_t i = 0; i < 100; ++i) {
        bitarray.resize(i);

        bitarray.fill(true);
        for (size_t j = 0; j < i; ++j) {
            ASSERT_TRUE(bitarray.get(j));
        }

        bitarray.fill(false);
        for (size_t j = 0; j < i; ++j) {
            ASSERT_FALSE(bitarray.get(j));
        }
    }
}

}; // namespace nextpnr
