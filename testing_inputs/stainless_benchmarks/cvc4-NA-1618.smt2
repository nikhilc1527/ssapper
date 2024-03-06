; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11252 () Bool)

(assert start!11252)

(declare-fun d!57560 () Real)

(assert (=> start!11252 (and (= d!57560 (/ 10 1)) (= d!57560 (/ 0 1)))))

(assert (=> start!11252 true))

(push 1)

(check-sat)

(pop 1)

