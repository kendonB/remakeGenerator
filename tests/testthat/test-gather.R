# library(testthat); library(remakeGenerator);
context("gather")
source("utils.R")

test_that("Function gather() is correct.", {
  testwd("gather")
  expect_equal(gather(example_analyses()), data.frame(
    target = "target",
    command = "list(analysis1 = analysis1, analysis2 = analysis2)",
    stringsAsFactors = F))
  expect_equal(gather(example_analyses(), target = "hi", gather = "cbind"), data.frame(
    target = "hi",
    command = "cbind(analysis1 = analysis1, analysis2 = analysis2)",
    stringsAsFactors = F))
  testrm("gather")
})
