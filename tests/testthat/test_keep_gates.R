library(data.table)
library(testthat)
library(OptiQuantR)
library(dplyr)
context("Keep Gates")

# testdata <- system.file("extdata", "testdata.csv", package = "OptiQuantR")

testset1 <- readoqcsv(system.file("extdata",
                                "testdata.csv",
                                package = "OptiQuantR"))

test_that("output does not contain gate(s) excluded", {
  expect_true(y !%in% levels(as.factor(testset1$gate_id))), y)
})

test_that("output is of class data.frame & data.table", {
  expect_true(is.data.frame(testset1))
  expect_true(is.data.table(testset1))
})

