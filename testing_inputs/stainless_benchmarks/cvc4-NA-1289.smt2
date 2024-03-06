; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9152 () Bool)

(assert start!9152)

(declare-fun s!1955 () (Set (_ BitVec 32)))

(assert (=> start!9152 (and (= s!1955 (insert #b00000000000000000000000000000010 #b00000000000000000000000000000011 #b00000000000000000000000000000100 (singleton #b00000000000000000000000000000001))) (not (member #b00000000000000000000000000000011 s!1955)))))

(declare-fun condSetEmpty!2 () Bool)

(assert (=> start!9152 (= condSetEmpty!2 (= s!1955 (as emptyset (Set (_ BitVec 32)))))))

(declare-fun setRes!2 () Bool)

(assert (=> start!9152 setRes!2))

(declare-fun setIsEmpty!2 () Bool)

(assert (=> setIsEmpty!2 setRes!2))

(declare-fun setNonEmpty!2 () Bool)

(declare-fun tp!16746 () Bool)

(assert (=> setNonEmpty!2 (= setRes!2 tp!16746)))

(declare-fun setElem!2 () (_ BitVec 32))

(declare-fun setRest!2 () (Set (_ BitVec 32)))

(assert (=> setNonEmpty!2 (= s!1955 (union (insert setElem!2 (as emptyset (Set (_ BitVec 32)))) setRest!2))))

(assert (= (and start!9152 condSetEmpty!2) setIsEmpty!2))

(assert (= (and start!9152 (not condSetEmpty!2)) setNonEmpty!2))

(declare-fun m!68963 () Bool)

(assert (=> start!9152 m!68963))

(push 1)

(assert (not setNonEmpty!2))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

