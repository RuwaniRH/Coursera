# This file is part of the standard setup for testthat.
# It is recommended that you do not modify it.
#
# Where should you do additional test configuration?
# Learn more about the roles of various files in:
# * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
# * https://testthat.r-lib.org/articles/special-files.html

library(testthat)
library(FARSfunction)

test_check("FARSfunction")

# Test the function fars_read
test_that("Check if the files are read into R in the expect format", {
  fars2013 <- fars_read("accident_2013.csv.bz2")
  expect_that(fars2013, is_a("data.frame"))
})

# Test the function make_filename
test_that("Checkt if the make_filename function works as expected", {
  expect_equal(make_filename(2013), "accident_2013.csv.bz2")})
