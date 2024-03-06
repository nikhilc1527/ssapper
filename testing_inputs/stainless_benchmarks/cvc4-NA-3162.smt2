; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15546 () Bool)

(assert start!15546)

(declare-datatypes () ((A!4704 (A!4705 (val!256 Int)))))

(declare-datatypes () ((List!902 (Cons!839 (h!7808 A!4704) (t!56126 List!902)) (Nil!841))))

(declare-fun list!1112 () List!902)

(declare-fun res!49824 () Int)

(assert (=> start!15546 (and (is-Nil!841 list!1112) (= res!49824 0) (or (< res!49824 0) (not (= res!49824 (ite true 0 (ite false 1 (ite false 2 res!49824)))))))))

(declare-fun e!52341 () Bool)

(assert (=> start!15546 e!52341))

(assert (=> start!15546 true))

(declare-fun b!95975 () Bool)

(declare-fun tp_is_empty!517 () Bool)

(declare-fun tp!18054 () Bool)

(assert (=> b!95975 (= e!52341 (and tp_is_empty!517 tp!18054))))

(assert (= (and start!15546 (is-Cons!839 list!1112)) b!95975))

(push 1)

(assert (not b!95975))

(assert tp_is_empty!517)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

