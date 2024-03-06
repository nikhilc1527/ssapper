; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5968 () Bool)

(assert start!5968)

(declare-fun res!21111 () Bool)

(declare-fun e!23098 () Bool)

(assert (=> start!5968 (=> (not res!21111) (not e!23098))))

(declare-datatypes () ((Nat!144 (Zero!128) (Succ!125 (n!1274 Nat!144)))))

(declare-fun n1!345 () Nat!144)

(declare-fun n2!361 () Nat!144)

(declare-fun <!2 (Nat!144 Nat!144) Bool)

(assert (=> start!5968 (= res!21111 (<!2 n1!345 n2!361))))

(assert (=> start!5968 e!23098))

(assert (=> start!5968 true))

(declare-fun b!44609 () Bool)

(declare-fun res!21112 () Bool)

(assert (=> b!44609 (=> (not res!21112) (not e!23098))))

(declare-fun n!1040 () Nat!144)

(declare-fun n!1039 () Nat!144)

(declare-datatypes () ((Unit!481 (Unit!482))))

(declare-fun x$45!53 () Unit!481)

(declare-fun Unit!483 () Unit!481)

(assert (=> b!44609 (= res!21112 (and (= n!1039 (n!1274 n2!361)) (is-Succ!125 n2!361) (= (n!1274 n2!361) n1!345) (= x$45!53 Unit!483) (= n!1040 (n!1274 n2!361)) (not (= n1!345 n!1040))))))

(declare-fun b!44610 () Bool)

(assert (=> b!44610 (= e!23098 (not (<!2 n1!345 n!1040)))))

(assert (= (and start!5968 res!21111) b!44609))

(assert (= (and b!44609 res!21112) b!44610))

(declare-fun m!47783 () Bool)

(assert (=> start!5968 m!47783))

(declare-fun m!47785 () Bool)

(assert (=> b!44610 m!47785))

(push 1)

(assert (not start!5968))

(assert (not b!44610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

