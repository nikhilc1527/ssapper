; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2672 () Bool)

(assert start!2672)

(declare-fun x!7317 () Real)

(declare-fun res!4790 () Real)

(assert (=> start!2672 (and (> x!7317 (/ 0 1)) (= res!4790 (* (/ 2 1) x!7317)) (<= res!4790 x!7317))))

(assert (=> start!2672 true))

(push 1)

(check-sat)

(pop 1)

