; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13130 () Bool)

(assert start!13130)

(assert (=> start!13130 false))

(push 1)

(check-sat)

(pop 1)

