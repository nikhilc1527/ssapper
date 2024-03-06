; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8460 () Bool)

(assert start!8460)

(declare-datatypes () ((Option!365 (Some!347 (v!2231 Int)) (None!348))))

(declare-fun a!676 () (Array Int Option!365))

(declare-fun x$1!797 () Option!365)

(assert (=> start!8460 (and (= (select a!676 0) None!348) (= x$1!797 (select a!676 0)) (not (= x$1!797 None!348)))))

(assert (=> start!8460 true))

(declare-fun bs!36415 () Bool)

(assert (= bs!36415 start!8460))

(declare-fun m!63831 () Bool)

(assert (=> bs!36415 m!63831))

(push 1)

(check-sat)

(pop 1)

