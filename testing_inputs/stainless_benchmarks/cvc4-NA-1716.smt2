; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11846 () Bool)

(assert start!11846)

(declare-fun b!90122 () Bool)

(declare-fun b_free!7625 () Bool)

(declare-fun b_next!39995 () Bool)

(assert (=> b!90122 (= b_free!7625 (not b_next!39995))))

(declare-fun tp!17691 () Bool)

(declare-fun b_and!60679 () Bool)

(assert (=> b!90122 (= tp!17691 b_and!60679)))

(assert (=> start!11846 false))

(assert (=> start!11846 true))

(declare-fun e!49183 () Bool)

(assert (=> start!11846 e!49183))

(assert (=> b!90122 (= e!49183 tp!17691)))

(assert (= start!11846 b!90122))

(push 1)

(assert b_and!60679)

(assert (not b_next!39995))

(check-sat)

(pop 1)

