; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4736 () Bool)

(assert start!4736)

(declare-datatypes () ((T!2743 (T!2744 (val!134 Int)))))

(declare-datatypes () ((List!408 (Cons!397 (head!615 T!2743) (tail!639 List!408)) (Nil!398))))

(declare-fun l!978 () List!408)

(declare-fun x$1!576 () Int)

(assert (=> start!4736 (and (is-Nil!398 l!978) (= x$1!576 0) (< x$1!576 0))))

(declare-fun e!19168 () Bool)

(assert (=> start!4736 e!19168))

(assert (=> start!4736 true))

(declare-fun b!37252 () Bool)

(declare-fun tp_is_empty!267 () Bool)

(declare-fun tp!7365 () Bool)

(assert (=> b!37252 (= e!19168 (and tp_is_empty!267 tp!7365))))

(assert (= (and start!4736 (is-Cons!397 l!978)) b!37252))

(push 1)

(assert (not b!37252))

(assert tp_is_empty!267)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

