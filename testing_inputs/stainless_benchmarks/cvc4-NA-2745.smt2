; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14542 () Bool)

(assert start!14542)

(assert (=> start!14542 false))

(push 1)

(check-sat)

(pop 1)

