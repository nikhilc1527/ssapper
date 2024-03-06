; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5156 () Bool)

(assert start!5156)

(declare-fun b!39458 () Bool)

(declare-fun res!18915 () Bool)

(declare-fun e!20342 () Bool)

(assert (=> b!39458 (=> (not res!18915) (not e!20342))))

(declare-datatypes () ((Nat!83 (Zero!67) (Succ!64 (n!1167 Nat!83)))))

(declare-fun n3!50 () Nat!83)

(declare-fun n2!205 () Nat!83)

(assert (=> b!39458 (= res!18915 (or (not (is-Succ!64 n3!50)) (not (= n2!205 (n!1167 n3!50)))))))

(declare-fun res!18916 () Bool)

(assert (=> start!5156 (=> (not res!18916) (not e!20342))))

(declare-fun <!2 (Nat!83 Nat!83) Bool)

(assert (=> start!5156 (= res!18916 (<!2 n2!205 n3!50))))

(assert (=> start!5156 e!20342))

(assert (=> start!5156 true))

(declare-fun b!39460 () Bool)

(declare-fun res!18913 () Bool)

(assert (=> b!39460 (=> (not res!18913) (not e!20342))))

(declare-fun n1!202 () Nat!83)

(declare-fun n2!213 () Nat!83)

(assert (=> b!39460 (= res!18913 (and (= n1!202 n2!205) (= n2!213 n3!50)))))

(declare-fun b!39461 () Bool)

(assert (=> b!39461 (= e!20342 (not (<!2 n1!202 n2!213)))))

(declare-fun b!39459 () Bool)

(declare-fun res!18914 () Bool)

(assert (=> b!39459 (=> (not res!18914) (not e!20342))))

(declare-datatypes () ((Unit!360 (Unit!361))))

(declare-fun tmp!181 () Unit!360)

(declare-fun n1!194 () Nat!83)

(declare-fun plus_succ!0 (Nat!83 Nat!83) Unit!360)

(assert (=> b!39459 (= res!18914 (= tmp!181 (plus_succ!0 n1!194 (n!1167 n3!50))))))

(assert (= (and start!5156 res!18916) b!39458))

(assert (= (and b!39458 res!18915) b!39459))

(assert (= (and b!39459 res!18914) b!39460))

(assert (= (and b!39460 res!18913) b!39461))

(declare-fun m!40613 () Bool)

(assert (=> start!5156 m!40613))

(declare-fun m!40615 () Bool)

(assert (=> b!39461 m!40615))

(declare-fun m!40617 () Bool)

(assert (=> b!39459 m!40617))

(push 1)

(assert (not b!39459))

(assert (not b!39461))

(assert (not start!5156))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

