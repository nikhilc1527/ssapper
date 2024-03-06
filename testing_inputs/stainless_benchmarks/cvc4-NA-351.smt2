; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2668 () Bool)

(assert start!2668)

(declare-fun x!7315 () Real)

(declare-fun y!685 () Real)

(declare-fun res!4789 () Real)

(assert (=> start!2668 (and (< x!7315 y!685) (= res!4789 y!685) (or (< res!4789 x!7315) (< res!4789 y!685)))))

(assert (=> start!2668 true))

(push 1)

(check-sat)

(pop 1)

