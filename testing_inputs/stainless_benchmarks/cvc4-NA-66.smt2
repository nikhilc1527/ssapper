; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!546 () Bool)

(assert start!546)

(declare-fun res!1238 () Bool)

(declare-fun e!2286 () Bool)

(assert (=> start!546 (=> (not res!1238) (not e!2286))))

(declare-datatypes () ((List!79 (Cons!79 (head!251 (_ BitVec 32)) (tail!263 List!79)) (Nil!80))))

(declare-fun l!318 () List!79)

(declare-fun x$2!75 () List!79)

(assert (=> start!546 (= res!1238 (and (is-Nil!80 l!318) (= x$2!75 Nil!80)))))

(assert (=> start!546 e!2286))

(assert (=> start!546 true))

(declare-fun b!4104 () Bool)

(declare-fun content!22 (List!79) (Set (_ BitVec 32)))

(assert (=> b!4104 (= e!2286 (not (= (content!22 x$2!75) (content!22 l!318))))))

(assert (= (and start!546 res!1238) b!4104))

(declare-fun m!6463 () Bool)

(assert (=> b!4104 m!6463))

(declare-fun m!6465 () Bool)

(assert (=> b!4104 m!6465))

(push 1)

(assert (not b!4104))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

