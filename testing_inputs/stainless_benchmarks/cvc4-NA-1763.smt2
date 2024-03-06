; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12100 () Bool)

(assert start!12100)

(declare-fun setIsEmpty!15 () Bool)

(declare-fun setRes!15 () Bool)

(assert (=> setIsEmpty!15 setRes!15))

(declare-fun res!47570 () Bool)

(declare-fun e!49543 () Bool)

(assert (=> start!12100 (=> (not res!47570) (not e!49543))))

(declare-fun set!39 () (Set Int))

(assert (=> start!12100 (= res!47570 (= (intersection set!39 (insert 2 3 4 5 6 (singleton 1))) (insert 2 3 4 5 6 (singleton 1))))))

(assert (=> start!12100 e!49543))

(declare-fun condSetEmpty!16 () Bool)

(assert (=> start!12100 (= condSetEmpty!16 (= set!39 (as emptyset (Set Int))))))

(declare-fun setRes!17 () Bool)

(assert (=> start!12100 setRes!17))

(declare-fun condSetEmpty!15 () Bool)

(declare-fun res!47557 () (Set Int))

(assert (=> start!12100 (= condSetEmpty!15 (= res!47557 (as emptyset (Set Int))))))

(declare-fun setRes!16 () Bool)

(assert (=> start!12100 setRes!16))

(declare-fun setIsEmpty!16 () Bool)

(assert (=> setIsEmpty!16 setRes!17))

(declare-fun setNonEmpty!15 () Bool)

(declare-fun tp!17782 () Bool)

(assert (=> setNonEmpty!15 (= setRes!16 tp!17782)))

(declare-fun setElem!16 () Int)

(declare-fun setRest!17 () (Set Int))

(assert (=> setNonEmpty!15 (= res!47557 (union (insert setElem!16 (as emptyset (Set Int))) setRest!17))))

(declare-fun b!90757 () Bool)

(declare-fun res!47569 () Bool)

(assert (=> b!90757 (=> (not res!47569) (not e!49543))))

(declare-fun res!47568 () (Set Int))

(assert (=> b!90757 (= res!47569 (= res!47557 res!47568))))

(assert (=> b!90757 true))

(assert (=> b!90757 setRes!15))

(declare-fun condSetEmpty!17 () Bool)

(assert (=> b!90757 (= condSetEmpty!17 (= res!47568 (as emptyset (Set Int))))))

(declare-fun setNonEmpty!16 () Bool)

(declare-fun tp!17783 () Bool)

(assert (=> setNonEmpty!16 (= setRes!17 tp!17783)))

(declare-fun setElem!15 () Int)

(declare-fun setRest!16 () (Set Int))

(assert (=> setNonEmpty!16 (= set!39 (union (insert setElem!15 (as emptyset (Set Int))) setRest!16))))

(declare-fun setIsEmpty!17 () Bool)

(assert (=> setIsEmpty!17 setRes!16))

(declare-fun setNonEmpty!17 () Bool)

(declare-fun tp!17781 () Bool)

(assert (=> setNonEmpty!17 (= setRes!15 tp!17781)))

(declare-fun setElem!17 () Int)

(declare-fun setRest!15 () (Set Int))

(assert (=> setNonEmpty!17 (= res!47568 (union (insert setElem!17 (as emptyset (Set Int))) setRest!15))))

(declare-fun b!90758 () Bool)

(assert (=> b!90758 (= e!49543 (not (member 1 res!47557)))))

(assert (= (and start!12100 res!47570) b!90757))

(assert (= (and b!90757 condSetEmpty!17) setIsEmpty!15))

(assert (= (and b!90757 (not condSetEmpty!17)) setNonEmpty!17))

(assert (= (and b!90757 res!47569) b!90758))

(assert (= (and start!12100 condSetEmpty!16) setIsEmpty!16))

(assert (= (and start!12100 (not condSetEmpty!16)) setNonEmpty!16))

(assert (= (and start!12100 condSetEmpty!15) setIsEmpty!17))

(assert (= (and start!12100 (not condSetEmpty!15)) setNonEmpty!15))

(declare-fun m!86520 () Bool)

(assert (=> b!90758 m!86520))

(push 1)

(assert (not setNonEmpty!16))

(assert (not setNonEmpty!17))

(assert (not setNonEmpty!15))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun condSetEmpty!20 () Bool)

(assert (=> setNonEmpty!16 (= condSetEmpty!20 (= setRest!16 (as emptyset (Set Int))))))

(declare-fun setRes!20 () Bool)

(assert (=> setNonEmpty!16 (= tp!17783 setRes!20)))

(declare-fun setIsEmpty!20 () Bool)

(assert (=> setIsEmpty!20 setRes!20))

(declare-fun setNonEmpty!20 () Bool)

(declare-fun tp!17786 () Bool)

(assert (=> setNonEmpty!20 (= setRes!20 tp!17786)))

(declare-fun setElem!20 () Int)

(declare-fun setRest!20 () (Set Int))

(assert (=> setNonEmpty!20 (= setRest!16 (union (insert setElem!20 (as emptyset (Set Int))) setRest!20))))

(assert (= (and setNonEmpty!16 condSetEmpty!20) setIsEmpty!20))

(assert (= (and setNonEmpty!16 (not condSetEmpty!20)) setNonEmpty!20))

(declare-fun condSetEmpty!21 () Bool)

(assert (=> setNonEmpty!17 (= condSetEmpty!21 (= setRest!15 (as emptyset (Set Int))))))

(declare-fun setRes!21 () Bool)

(assert (=> setNonEmpty!17 (= tp!17781 setRes!21)))

(declare-fun setIsEmpty!21 () Bool)

(assert (=> setIsEmpty!21 setRes!21))

(declare-fun setNonEmpty!21 () Bool)

(declare-fun tp!17787 () Bool)

(assert (=> setNonEmpty!21 (= setRes!21 tp!17787)))

(declare-fun setElem!21 () Int)

(declare-fun setRest!21 () (Set Int))

(assert (=> setNonEmpty!21 (= setRest!15 (union (insert setElem!21 (as emptyset (Set Int))) setRest!21))))

(assert (= (and setNonEmpty!17 condSetEmpty!21) setIsEmpty!21))

(assert (= (and setNonEmpty!17 (not condSetEmpty!21)) setNonEmpty!21))

(declare-fun condSetEmpty!22 () Bool)

(assert (=> setNonEmpty!15 (= condSetEmpty!22 (= setRest!17 (as emptyset (Set Int))))))

(declare-fun setRes!22 () Bool)

(assert (=> setNonEmpty!15 (= tp!17782 setRes!22)))

(declare-fun setIsEmpty!22 () Bool)

(assert (=> setIsEmpty!22 setRes!22))

(declare-fun setNonEmpty!22 () Bool)

(declare-fun tp!17788 () Bool)

(assert (=> setNonEmpty!22 (= setRes!22 tp!17788)))

(declare-fun setElem!22 () Int)

(declare-fun setRest!22 () (Set Int))

(assert (=> setNonEmpty!22 (= setRest!17 (union (insert setElem!22 (as emptyset (Set Int))) setRest!22))))

(assert (= (and setNonEmpty!15 condSetEmpty!22) setIsEmpty!22))

(assert (= (and setNonEmpty!15 (not condSetEmpty!22)) setNonEmpty!22))

(declare-fun bs!41680 () Bool)

(declare-fun s!2660 () Bool)

(assert (= bs!41680 (and start!12100 b!90757 s!2660)))

(assert (=> bs!41680 (=> true (= (and (member 1 set!39) (< 1 4)) (member 1 res!47568)))))

(declare-fun m!86522 () Bool)

(assert (=> m!86520 m!86522))

(declare-fun m!86524 () Bool)

(assert (=> m!86520 m!86524))

(assert (=> m!86520 s!2660))

(push 1)

(assert (not setNonEmpty!20))

(assert (not setNonEmpty!21))

(assert (not setNonEmpty!22))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

