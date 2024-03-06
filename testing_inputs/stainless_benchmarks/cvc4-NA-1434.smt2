; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9846 () Bool)

(assert start!9846)

(declare-fun res!34909 () Bool)

(declare-fun e!38606 () Bool)

(assert (=> start!9846 (=> (not res!34909) (not e!38606))))

(declare-datatypes () ((A!3223 (A!3224 (val!183 Int)))))

(declare-datatypes () ((List!592 (Cons!550 (h!806 A!3223) (t!47462 List!592)) (Nil!551))))

(declare-fun list!731 () List!592)

(declare-datatypes () ((tuple2!366 (tuple2!367 (_1!218 A!3223) (_2!218 List!592)))))

(declare-datatypes () ((Option!500 (Some!477 (v!2446 tuple2!366)) (None!478))))

(declare-fun isEmpty!628 (Option!500) Bool)

(declare-fun unapply!7 (List!592) Option!500)

(assert (=> start!9846 (= res!34909 (isEmpty!628 (unapply!7 list!731)))))

(assert (=> start!9846 e!38606))

(declare-fun e!38607 () Bool)

(assert (=> start!9846 e!38607))

(assert (=> start!9846 true))

(declare-fun b!71348 () Bool)

(declare-fun x$1!979 () Int)

(assert (=> b!71348 (= e!38606 (and (= x$1!979 0) (< x$1!979 0)))))

(declare-fun b!71349 () Bool)

(declare-fun tp_is_empty!361 () Bool)

(declare-fun tp!16852 () Bool)

(assert (=> b!71349 (= e!38607 (and tp_is_empty!361 tp!16852))))

(assert (= (and start!9846 res!34909) b!71348))

(assert (= (and start!9846 (is-Cons!550 list!731)) b!71349))

(declare-fun m!71142 () Bool)

(assert (=> start!9846 m!71142))

(assert (=> start!9846 m!71142))

(declare-fun m!71144 () Bool)

(assert (=> start!9846 m!71144))

(push 1)

(assert (not start!9846))

(assert (not b!71349))

(assert tp_is_empty!361)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

