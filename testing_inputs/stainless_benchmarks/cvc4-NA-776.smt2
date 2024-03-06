; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5936 () Bool)

(assert start!5936)

(declare-fun res!21062 () Bool)

(declare-fun e!23046 () Bool)

(assert (=> start!5936 (=> (not res!21062) (not e!23046))))

(declare-datatypes () ((Nat!137 (Zero!121) (Succ!118 (n!1265 Nat!137)))))

(declare-fun n1!209 () Nat!137)

(declare-fun n2!220 () Nat!137)

(declare-fun <!2 (Nat!137 Nat!137) Bool)

(assert (=> start!5936 (= res!21062 (<!2 n1!209 n2!220))))

(assert (=> start!5936 e!23046))

(assert (=> start!5936 true))

(declare-fun b!44512 () Bool)

(declare-fun res!21063 () Bool)

(assert (=> b!44512 (=> (not res!21063) (not e!23046))))

(declare-fun n1!211 () Nat!137)

(declare-fun n2!222 () Nat!137)

(assert (=> b!44512 (= res!21063 (and (is-Succ!118 n2!220) (not (= n1!209 (n!1265 n2!220))) (= n1!211 n1!209) (= n2!222 n2!220)))))

(declare-fun b!44513 () Bool)

(assert (=> b!44513 (= e!23046 (not (<!2 n1!211 n2!222)))))

(assert (= (and start!5936 res!21062) b!44512))

(assert (= (and b!44512 res!21063) b!44513))

(declare-fun m!47695 () Bool)

(assert (=> start!5936 m!47695))

(declare-fun m!47697 () Bool)

(assert (=> b!44513 m!47697))

(push 1)

(assert (not start!5936))

(assert (not b!44513))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

