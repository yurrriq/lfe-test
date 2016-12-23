(defmodule example_tests
  (export (two_plus_two_is_four_test 0))
  (export (two_plus_two_is_not_five_test 0)))

(include-lib "eunit/include/eunit.hrl")

(defun two_plus_two_is_four_test ()
  "Two plus two is four."
  (assertMatch 4 (lfe-test:add 2 2)))

(defun two_plus_two_is_not_five_test ()
  "Two plus two is not five."
  (assertNotMatch 5 (lfe-test:add 2 2)))
