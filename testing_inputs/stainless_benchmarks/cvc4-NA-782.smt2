; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5966 () Bool)

(assert start!5966)

(declare-fun res!21106 () Bool)

(declare-fun e!23095 () Bool)

(assert (=> start!5966 (=> (not res!21106) (not e!23095))))

(declare-datatypes () ((Nat!143 (Zero!127) (Succ!124 (n!1273 Nat!143)))))

(declare-fun n1!345 () Nat!143)

(declare-fun n2!361 () Nat!143)

(declare-fun <!2 (Nat!143 Nat!143) Bool)

(assert (=> start!5966 (= res!21106 (<!2 n1!345 n2!361))))

(assert (=> start!5966 e!23095))

(assert (=> start!5966 true))

(declare-fun b!44604 () Bool)

(declare-fun n!1039 () Nat!143)

(declare-datatypes () ((Unit!478 (Unit!479))))

(declare-fun x$45!53 () Unit!478)

(declare-fun Unit!480 () Unit!478)

(assert (=> b!44604 (= e!23095 (and (= n!1039 (n!1273 n2!361)) (is-Succ!124 n2!361) (= (n!1273 n2!361) n1!345) (= x$45!53 Unit!480) (not (is-Succ!124 n2!361))))))

(assert (= (and start!5966 res!21106) b!44604))

(declare-fun m!47781 () Bool)

(assert (=> start!5966 m!47781))

(push 1)

(assert (not start!5966))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

