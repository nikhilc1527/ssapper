; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5996 () Bool)

(assert start!5996)

(declare-fun b!44710 () Bool)

(declare-fun res!21163 () Bool)

(declare-fun e!23147 () Bool)

(assert (=> b!44710 (=> (not res!21163) (not e!23147))))

(declare-datatypes () ((Nat!150 (Zero!134) (Succ!131 (n!1282 Nat!150)))))

(declare-fun that!1570 () Nat!150)

(declare-fun n2!401 () Nat!150)

(assert (=> b!44710 (= res!21163 (= that!1570 n2!401))))

(declare-fun b!44709 () Bool)

(declare-fun res!21160 () Bool)

(assert (=> b!44709 (=> (not res!21160) (not e!23147))))

(declare-fun n1!385 () Nat!150)

(declare-fun thiss!6511 () Nat!150)

(declare-fun *!4 (Nat!150 Nat!150) Nat!150)

(assert (=> b!44709 (= res!21160 (= thiss!6511 (*!4 n1!385 n2!401)))))

(declare-fun b!44708 () Bool)

(declare-fun res!21162 () Bool)

(assert (=> b!44708 (=> (not res!21162) (not e!23147))))

(assert (=> b!44708 (= res!21162 (is-Succ!131 n1!385))))

(declare-fun res!21161 () Bool)

(assert (=> start!5996 (=> (not res!21161) (not e!23147))))

(declare-fun >!2 (Nat!150 Nat!150) Bool)

(assert (=> start!5996 (= res!21161 (>!2 n2!401 Zero!134))))

(assert (=> start!5996 e!23147))

(assert (=> start!5996 true))

(declare-fun b!44711 () Bool)

(assert (=> b!44711 (= e!23147 (not (>!2 that!1570 Zero!134)))))

(assert (= (and start!5996 res!21161) b!44708))

(assert (= (and b!44708 res!21162) b!44709))

(assert (= (and b!44709 res!21160) b!44710))

(assert (= (and b!44710 res!21163) b!44711))

(declare-fun m!47861 () Bool)

(assert (=> b!44709 m!47861))

(declare-fun m!47863 () Bool)

(assert (=> start!5996 m!47863))

(declare-fun m!47865 () Bool)

(assert (=> b!44711 m!47865))

(push 1)

(assert (not b!44709))

(assert (not b!44711))

(assert (not start!5996))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

