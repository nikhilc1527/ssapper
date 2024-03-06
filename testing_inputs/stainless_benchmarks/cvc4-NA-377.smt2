; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2770 () Bool)

(assert start!2770)

(declare-fun n!219 () (_ BitVec 10))

(declare-fun m!17348 () (_ BitVec 3))

(assert (=> start!2770 (and (= n!219 #b0000101010) (= m!17348 ((_ extract 2 0) n!219)) (not (= m!17348 #b010)))))

(assert (=> start!2770 true))

(push 1)

(check-sat)

(pop 1)

