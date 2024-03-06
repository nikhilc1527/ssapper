; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4256 () Bool)

(assert start!4256)

(declare-fun b!34246 () Bool)

(declare-fun b_free!2049 () Bool)

(declare-fun b_next!4813 () Bool)

(assert (=> b!34246 (= b_free!2049 (not b_next!4813))))

(declare-fun tp!7103 () Bool)

(declare-fun b_and!7265 () Bool)

(assert (=> b!34246 (= tp!7103 b_and!7265)))

(assert (=> start!4256 false))

(assert (=> start!4256 true))

(declare-fun e!17318 () Bool)

(assert (=> start!4256 e!17318))

(assert (=> b!34246 (= e!17318 tp!7103)))

(assert (= start!4256 b!34246))

(push 1)

(assert b_and!7265)

(assert (not b_next!4813))

(check-sat)

(pop 1)

