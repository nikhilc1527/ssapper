; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4282 () Bool)

(assert start!4282)

(declare-fun b!34409 () Bool)

(declare-fun b_free!2055 () Bool)

(declare-fun b_next!4871 () Bool)

(assert (=> b!34409 (= b_free!2055 (not b_next!4871))))

(declare-fun tp!7112 () Bool)

(declare-fun b_and!7373 () Bool)

(assert (=> b!34409 (= tp!7112 b_and!7373)))

(assert (=> start!4282 false))

(assert (=> start!4282 true))

(declare-fun e!17384 () Bool)

(assert (=> start!4282 e!17384))

(assert (=> b!34409 (= e!17384 tp!7112)))

(assert (= start!4282 b!34409))

(push 1)

(assert b_and!7373)

(assert (not b_next!4871))

(check-sat)

(pop 1)

