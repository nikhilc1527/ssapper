; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9968 () Bool)

(assert start!9968)

(declare-datatypes () ((List!607 (Nil!565) (Cons!564 (head!974 Int) (tail!995 List!607)))))

(declare-fun list!859 () List!607)

(declare-fun x$1!994 () Int)

(assert (=> start!9968 (and (is-Nil!565 list!859) (= x$1!994 0) (< x$1!994 0))))

(assert (=> start!9968 true))

(push 1)

(check-sat)

(pop 1)

