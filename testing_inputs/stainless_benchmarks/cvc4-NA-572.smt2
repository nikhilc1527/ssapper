; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4296 () Bool)

(assert start!4296)

(declare-fun b_free!2059 () Bool)

(declare-fun b_next!4901 () Bool)

(assert (=> start!4296 (= b_free!2059 (not b_next!4901))))

(declare-fun tp!7120 () Bool)

(declare-fun b_and!7435 () Bool)

(assert (=> start!4296 (= tp!7120 b_and!7435)))

(declare-fun b_free!2061 () Bool)

(declare-fun b_next!4903 () Bool)

(assert (=> start!4296 (= b_free!2061 (not b_next!4903))))

(declare-fun tp!7121 () Bool)

(declare-fun b_and!7437 () Bool)

(assert (=> start!4296 (= tp!7121 b_and!7437)))

(assert (=> start!4296 false))

(assert (=> start!4296 tp!7120))

(assert (=> start!4296 tp!7121))

(assert (=> start!4296 true))

(push 1)

(assert b_and!7435)

(assert b_and!7437)

(assert (not b_next!4901))

(assert (not b_next!4903))

(check-sat)

(pop 1)

