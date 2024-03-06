; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5900 () Bool)

(assert start!5900)

(declare-fun res!21010 () Bool)

(declare-fun e!22990 () Bool)

(assert (=> start!5900 (=> (not res!21010) (not e!22990))))

(declare-datatypes () ((Nat!131 (Zero!115) (Succ!112 (n!1258 Nat!131)))))

(declare-fun n1!127 () Nat!131)

(declare-fun n2!138 () Nat!131)

(declare-fun <!2 (Nat!131 Nat!131) Bool)

(assert (=> start!5900 (= res!21010 (<!2 n1!127 n2!138))))

(assert (=> start!5900 e!22990))

(assert (=> start!5900 true))

(declare-fun b!44404 () Bool)

(declare-fun res!21011 () Bool)

(assert (=> b!44404 (=> (not res!21011) (not e!22990))))

(declare-fun n3!36 () Nat!131)

(assert (=> b!44404 (= res!21011 (<!2 n2!138 n3!36))))

(declare-fun b!44405 () Bool)

(assert (=> b!44405 (= e!22990 false)))

(assert (= (and start!5900 res!21010) b!44404))

(assert (= (and b!44404 res!21011) b!44405))

(declare-fun m!47597 () Bool)

(assert (=> start!5900 m!47597))

(declare-fun m!47599 () Bool)

(assert (=> b!44404 m!47599))

(push 1)

(assert (not b!44404))

(assert (not start!5900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

