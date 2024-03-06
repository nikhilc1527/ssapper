; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10102 () Bool)

(assert start!10102)

(declare-datatypes () ((A!3272 (A!3273 (val!184 Int)))))

(declare-datatypes () ((List!627 (Cons!589 (h!842 A!3272) (t!47530 List!627)) (Nil!591))))

(declare-fun list!948 () List!627)

(declare-fun res!35598 () Int)

(assert (=> start!10102 (and (is-Nil!591 list!948) (= res!35598 0) (or (< res!35598 0) (not (= res!35598 (ite false 2 (ite false 1 (ite true 0 res!35598)))))))))

(declare-fun e!39397 () Bool)

(assert (=> start!10102 e!39397))

(assert (=> start!10102 true))

(declare-fun b!72905 () Bool)

(declare-fun tp_is_empty!363 () Bool)

(declare-fun tp!16882 () Bool)

(assert (=> b!72905 (= e!39397 (and tp_is_empty!363 tp!16882))))

(assert (= (and start!10102 (is-Cons!589 list!948)) b!72905))

(push 1)

(assert (not b!72905))

(assert tp_is_empty!363)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

