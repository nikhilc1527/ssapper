; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12262 () Bool)

(assert start!12262)

(declare-fun y!2253 () (_ BitVec 32))

(assert (=> start!12262 (= y!2253 #b00000000000000000000000000000000)))

(assert (=> start!12262 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

