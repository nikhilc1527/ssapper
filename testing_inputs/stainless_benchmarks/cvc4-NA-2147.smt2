; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13264 () Bool)

(assert start!13264)

(assert (=> start!13264 false))

(push 1)

(check-sat)

(pop 1)

