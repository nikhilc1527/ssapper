; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12568 () Bool)

(assert start!12568)

(declare-fun b!92513 () Bool)

(assert (=> start!12568 b!92513))

(assert (=> start!12568 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

