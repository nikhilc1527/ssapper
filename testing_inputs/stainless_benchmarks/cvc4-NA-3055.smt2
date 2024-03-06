; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15264 () Bool)

(assert start!15264)

(assert (=> start!15264 false))

(push 1)

(check-sat)

(pop 1)

