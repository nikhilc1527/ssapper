; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2666 () Bool)

(assert start!2666)

(declare-fun x!7315 () Real)

(declare-fun y!685 () Real)

(declare-fun res!4788 () Real)

(assert (=> start!2666 (and (>= x!7315 y!685) (= res!4788 x!7315) (or (< res!4788 x!7315) (< res!4788 y!685)))))

(assert (=> start!2666 true))

(push 1)

(check-sat)

(pop 1)

