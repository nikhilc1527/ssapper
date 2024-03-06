; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5882 () Bool)

(assert start!5882)

(declare-fun res!20958 () Bool)

(declare-fun e!22959 () Bool)

(assert (=> start!5882 (=> (not res!20958) (not e!22959))))

(declare-datatypes () ((Nat!128 (Zero!112) (Succ!109 (n!1253 Nat!128)))))

(declare-fun n1!127 () Nat!128)

(declare-fun n2!138 () Nat!128)

(declare-fun <!2 (Nat!128 Nat!128) Bool)

(assert (=> start!5882 (= res!20958 (<!2 n1!127 n2!138))))

(assert (=> start!5882 e!22959))

(assert (=> start!5882 true))

(declare-fun b!44332 () Bool)

(declare-fun res!20959 () Bool)

(assert (=> b!44332 (=> (not res!20959) (not e!22959))))

(declare-fun n3!36 () Nat!128)

(assert (=> b!44332 (= res!20959 (<!2 n2!138 n3!36))))

(declare-fun b!44333 () Bool)

(declare-fun res!20960 () Bool)

(assert (=> b!44333 (=> (not res!20960) (not e!22959))))

(declare-fun n1!132 () Nat!128)

(declare-fun n2!143 () Nat!128)

(assert (=> b!44333 (= res!20960 (and (not (is-Zero!112 n3!36)) (not (= (n!1253 n3!36) n2!138)) (= n1!132 n2!138) (= n2!143 n3!36)))))

(declare-fun b!44334 () Bool)

(assert (=> b!44334 (= e!22959 (not (<!2 n1!132 n2!143)))))

(assert (= (and start!5882 res!20958) b!44332))

(assert (= (and b!44332 res!20959) b!44333))

(assert (= (and b!44333 res!20960) b!44334))

(declare-fun m!47533 () Bool)

(assert (=> start!5882 m!47533))

(declare-fun m!47535 () Bool)

(assert (=> b!44332 m!47535))

(declare-fun m!47537 () Bool)

(assert (=> b!44334 m!47537))

(push 1)

(assert (not b!44332))

(assert (not start!5882))

(assert (not b!44334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

