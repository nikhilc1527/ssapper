; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4644 () Bool)

(assert start!4644)

(declare-fun x!11505 () Int)

(declare-fun x$1!565 () Int)

(assert (=> start!4644 (and (> x!11505 0) (= x$1!565 (+ (+ x!11505 999999) 999999999999999)) (<= x$1!565 0))))

(assert (=> start!4644 true))

(push 1)

(check-sat)

(pop 1)

