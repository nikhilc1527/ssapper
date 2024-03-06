; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3018 () Bool)

(assert start!3018)

(declare-fun b_free!2045 () Bool)

(declare-fun b_next!4809 () Bool)

(assert (=> start!3018 (= b_free!2045 (not b_next!4809))))

(declare-fun tp!3425 () Bool)

(declare-fun b_and!7261 () Bool)

(assert (=> start!3018 (= tp!3425 b_and!7261)))

(declare-fun b_free!2047 () Bool)

(declare-fun b_next!4811 () Bool)

(assert (=> start!3018 (= b_free!2047 (not b_next!4811))))

(declare-fun tp!3426 () Bool)

(declare-fun b_and!7263 () Bool)

(assert (=> start!3018 (= tp!3426 b_and!7263)))

(assert (=> start!3018 false))

(assert (=> start!3018 true))

(assert (=> start!3018 tp!3425))

(assert (=> start!3018 tp!3426))

(push 1)

(assert b_and!7261)

(assert b_and!7263)

(assert (not b_next!4811))

(assert (not b_next!4809))

(check-sat)

(pop 1)

