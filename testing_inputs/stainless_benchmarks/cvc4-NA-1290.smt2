; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9154 () Bool)

(assert start!9154)

(declare-fun setNonEmpty!7 () Bool)

(declare-fun setRes!7 () Bool)

(declare-fun tp!16752 () Bool)

(assert (=> setNonEmpty!7 (= setRes!7 tp!16752)))

(declare-fun s1!85 () (Set (_ BitVec 32)))

(declare-fun setElem!8 () (_ BitVec 32))

(declare-fun setRest!7 () (Set (_ BitVec 32)))

(assert (=> setNonEmpty!7 (= s1!85 (union (insert setElem!8 (as emptyset (Set (_ BitVec 32)))) setRest!7))))

(declare-fun setIsEmpty!8 () Bool)

(declare-fun setRes!8 () Bool)

(assert (=> setIsEmpty!8 setRes!8))

(declare-fun setNonEmpty!8 () Bool)

(declare-fun tp!16751 () Bool)

(assert (=> setNonEmpty!8 (= setRes!8 tp!16751)))

(declare-fun s2!84 () (Set (_ BitVec 32)))

(declare-fun setElem!7 () (_ BitVec 32))

(declare-fun setRest!8 () (Set (_ BitVec 32)))

(assert (=> setNonEmpty!8 (= s2!84 (union (insert setElem!7 (as emptyset (Set (_ BitVec 32)))) setRest!8))))

(declare-fun setIsEmpty!7 () Bool)

(assert (=> setIsEmpty!7 setRes!7))

(assert (=> start!9154 (and (= s1!85 (as emptyset (Set (_ BitVec 32)))) (= s2!84 (as emptyset (Set (_ BitVec 32)))) (not (= s1!85 s2!84)))))

(declare-fun condSetEmpty!8 () Bool)

(assert (=> start!9154 (= condSetEmpty!8 (= s1!85 (as emptyset (Set (_ BitVec 32)))))))

(assert (=> start!9154 setRes!7))

(declare-fun condSetEmpty!7 () Bool)

(assert (=> start!9154 (= condSetEmpty!7 (= s2!84 (as emptyset (Set (_ BitVec 32)))))))

(assert (=> start!9154 setRes!8))

(assert (= (and start!9154 condSetEmpty!8) setIsEmpty!7))

(assert (= (and start!9154 (not condSetEmpty!8)) setNonEmpty!7))

(assert (= (and start!9154 condSetEmpty!7) setIsEmpty!8))

(assert (= (and start!9154 (not condSetEmpty!7)) setNonEmpty!8))

(push 1)

(assert (not setNonEmpty!8))

(assert (not setNonEmpty!7))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

