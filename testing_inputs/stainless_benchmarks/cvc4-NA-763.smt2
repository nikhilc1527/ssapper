; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5856 () Bool)

(assert start!5856)

(declare-fun res!20914 () Bool)

(declare-fun e!22919 () Bool)

(assert (=> start!5856 (=> (not res!20914) (not e!22919))))

(declare-datatypes () ((Nat!124 (Zero!108) (Succ!105 (n!1249 Nat!124)))))

(declare-fun n2!72 () Nat!124)

(declare-fun >!2 (Nat!124 Nat!124) Bool)

(assert (=> start!5856 (= res!20914 (>!2 n2!72 Zero!108))))

(assert (=> start!5856 e!22919))

(assert (=> start!5856 true))

(declare-fun b!44250 () Bool)

(declare-fun res!20915 () Bool)

(assert (=> b!44250 (=> (not res!20915) (not e!22919))))

(declare-fun n1!63 () Nat!124)

(declare-fun n2!74 () Nat!124)

(declare-fun n1!61 () Nat!124)

(assert (=> b!44250 (= res!20915 (and (not (is-Zero!108 n1!61)) (= n1!63 (n!1249 n1!61)) (= n2!74 n2!72)))))

(declare-fun b!44251 () Bool)

(assert (=> b!44251 (= e!22919 (not (>!2 n2!74 Zero!108)))))

(assert (= (and start!5856 res!20914) b!44250))

(assert (= (and b!44250 res!20915) b!44251))

(declare-fun m!47473 () Bool)

(assert (=> start!5856 m!47473))

(declare-fun m!47475 () Bool)

(assert (=> b!44251 m!47475))

(push 1)

(assert (not b!44251))

(assert (not start!5856))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

