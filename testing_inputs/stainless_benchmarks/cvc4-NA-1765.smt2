; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12104 () Bool)

(assert start!12104)

(declare-fun res!47588 () Bool)

(declare-fun e!49549 () Bool)

(assert (=> start!12104 (=> (not res!47588) (not e!49549))))

(declare-fun set!39 () (Set Int))

(assert (=> start!12104 (= res!47588 (= (intersection set!39 (insert 2 3 4 5 6 (singleton 1))) (insert 2 3 4 5 6 (singleton 1))))))

(assert (=> start!12104 e!49549))

(declare-fun condSetEmpty!45 () Bool)

(assert (=> start!12104 (= condSetEmpty!45 (= set!39 (as emptyset (Set Int))))))

(declare-fun setRes!44 () Bool)

(assert (=> start!12104 setRes!44))

(declare-fun condSetEmpty!44 () Bool)

(declare-fun res!47557 () (Set Int))

(assert (=> start!12104 (= condSetEmpty!44 (= res!47557 (as emptyset (Set Int))))))

(declare-fun setRes!45 () Bool)

(assert (=> start!12104 setRes!45))

(declare-fun setNonEmpty!43 () Bool)

(declare-fun tp!17810 () Bool)

(assert (=> setNonEmpty!43 (= setRes!44 tp!17810)))

(declare-fun setElem!43 () Int)

(declare-fun setRest!45 () (Set Int))

(assert (=> setNonEmpty!43 (= set!39 (union (insert setElem!43 (as emptyset (Set Int))) setRest!45))))

(declare-fun setNonEmpty!44 () Bool)

(declare-fun tp!17809 () Bool)

(assert (=> setNonEmpty!44 (= setRes!45 tp!17809)))

(declare-fun setElem!45 () Int)

(declare-fun setRest!44 () (Set Int))

(assert (=> setNonEmpty!44 (= res!47557 (union (insert setElem!45 (as emptyset (Set Int))) setRest!44))))

(declare-fun b!90773 () Bool)

(assert (=> b!90773 (= e!49549 (and (member 1 res!47557) (member 2 res!47557) (not (member 3 res!47557))))))

(declare-fun setIsEmpty!43 () Bool)

(declare-fun setRes!43 () Bool)

(assert (=> setIsEmpty!43 setRes!43))

(declare-fun setIsEmpty!44 () Bool)

(assert (=> setIsEmpty!44 setRes!45))

(declare-fun b!90774 () Bool)

(declare-fun res!47586 () Bool)

(assert (=> b!90774 (=> (not res!47586) (not e!49549))))

(declare-fun res!47587 () (Set Int))

(assert (=> b!90774 (= res!47586 (= res!47557 res!47587))))

(assert (=> b!90774 true))

(assert (=> b!90774 setRes!43))

(declare-fun condSetEmpty!43 () Bool)

(assert (=> b!90774 (= condSetEmpty!43 (= res!47587 (as emptyset (Set Int))))))

(declare-fun setNonEmpty!45 () Bool)

(declare-fun tp!17811 () Bool)

(assert (=> setNonEmpty!45 (= setRes!43 tp!17811)))

(declare-fun setElem!44 () Int)

(declare-fun setRest!43 () (Set Int))

(assert (=> setNonEmpty!45 (= res!47587 (union (insert setElem!44 (as emptyset (Set Int))) setRest!43))))

(declare-fun setIsEmpty!45 () Bool)

(assert (=> setIsEmpty!45 setRes!44))

(assert (= (and start!12104 res!47588) b!90774))

(assert (= (and b!90774 condSetEmpty!43) setIsEmpty!43))

(assert (= (and b!90774 (not condSetEmpty!43)) setNonEmpty!45))

(assert (= (and b!90774 res!47586) b!90773))

(assert (= (and start!12104 condSetEmpty!45) setIsEmpty!45))

(assert (= (and start!12104 (not condSetEmpty!45)) setNonEmpty!43))

(assert (= (and start!12104 condSetEmpty!44) setIsEmpty!44))

(assert (= (and start!12104 (not condSetEmpty!44)) setNonEmpty!44))

(declare-fun m!86538 () Bool)

(assert (=> b!90773 m!86538))

(declare-fun m!86540 () Bool)

(assert (=> b!90773 m!86540))

(declare-fun m!86542 () Bool)

(assert (=> b!90773 m!86542))

(push 1)

(assert (not setNonEmpty!44))

(assert (not setNonEmpty!45))

(assert (not setNonEmpty!43))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun condSetEmpty!48 () Bool)

(assert (=> setNonEmpty!44 (= condSetEmpty!48 (= setRest!44 (as emptyset (Set Int))))))

(declare-fun setRes!48 () Bool)

(assert (=> setNonEmpty!44 (= tp!17809 setRes!48)))

(declare-fun setIsEmpty!48 () Bool)

(assert (=> setIsEmpty!48 setRes!48))

(declare-fun setNonEmpty!48 () Bool)

(declare-fun tp!17814 () Bool)

(assert (=> setNonEmpty!48 (= setRes!48 tp!17814)))

(declare-fun setElem!48 () Int)

(declare-fun setRest!48 () (Set Int))

(assert (=> setNonEmpty!48 (= setRest!44 (union (insert setElem!48 (as emptyset (Set Int))) setRest!48))))

(assert (= (and setNonEmpty!44 condSetEmpty!48) setIsEmpty!48))

(assert (= (and setNonEmpty!44 (not condSetEmpty!48)) setNonEmpty!48))

(declare-fun condSetEmpty!49 () Bool)

(assert (=> setNonEmpty!45 (= condSetEmpty!49 (= setRest!43 (as emptyset (Set Int))))))

(declare-fun setRes!49 () Bool)

(assert (=> setNonEmpty!45 (= tp!17811 setRes!49)))

(declare-fun setIsEmpty!49 () Bool)

(assert (=> setIsEmpty!49 setRes!49))

(declare-fun setNonEmpty!49 () Bool)

(declare-fun tp!17815 () Bool)

(assert (=> setNonEmpty!49 (= setRes!49 tp!17815)))

(declare-fun setElem!49 () Int)

(declare-fun setRest!49 () (Set Int))

(assert (=> setNonEmpty!49 (= setRest!43 (union (insert setElem!49 (as emptyset (Set Int))) setRest!49))))

(assert (= (and setNonEmpty!45 condSetEmpty!49) setIsEmpty!49))

(assert (= (and setNonEmpty!45 (not condSetEmpty!49)) setNonEmpty!49))

(declare-fun condSetEmpty!50 () Bool)

(assert (=> setNonEmpty!43 (= condSetEmpty!50 (= setRest!45 (as emptyset (Set Int))))))

(declare-fun setRes!50 () Bool)

(assert (=> setNonEmpty!43 (= tp!17810 setRes!50)))

(declare-fun setIsEmpty!50 () Bool)

(assert (=> setIsEmpty!50 setRes!50))

(declare-fun setNonEmpty!50 () Bool)

(declare-fun tp!17816 () Bool)

(assert (=> setNonEmpty!50 (= setRes!50 tp!17816)))

(declare-fun setElem!50 () Int)

(declare-fun setRest!50 () (Set Int))

(assert (=> setNonEmpty!50 (= setRest!45 (union (insert setElem!50 (as emptyset (Set Int))) setRest!50))))

(assert (= (and setNonEmpty!43 condSetEmpty!50) setIsEmpty!50))

(assert (= (and setNonEmpty!43 (not condSetEmpty!50)) setNonEmpty!50))

(declare-fun bs!41685 () Bool)

(declare-fun s!2666 () Bool)

(assert (= bs!41685 (and start!12104 b!90774 s!2666)))

(assert (=> bs!41685 (=> true (= (and (member 1 set!39) (< 1 4)) (member 1 res!47587)))))

(declare-fun m!86544 () Bool)

(assert (=> m!86538 m!86544))

(declare-fun m!86546 () Bool)

(assert (=> m!86538 m!86546))

(assert (=> m!86538 s!2666))

(declare-fun bs!41686 () Bool)

(declare-fun s!2668 () Bool)

(assert (= bs!41686 (and start!12104 b!90774 s!2668)))

(assert (=> bs!41686 (=> true (= (and (member 2 set!39) (< 2 4)) (member 2 res!47587)))))

(declare-fun m!86548 () Bool)

(assert (=> m!86540 m!86548))

(declare-fun m!86550 () Bool)

(assert (=> m!86540 m!86550))

(assert (=> m!86540 s!2668))

(declare-fun bs!41687 () Bool)

(declare-fun s!2670 () Bool)

(assert (= bs!41687 (and start!12104 b!90774 s!2670)))

(assert (=> bs!41687 (=> true (= (and (member 3 set!39) (< 3 4)) (member 3 res!47587)))))

(declare-fun m!86552 () Bool)

(assert (=> m!86542 m!86552))

(declare-fun m!86554 () Bool)

(assert (=> m!86542 m!86554))

(assert (=> m!86542 s!2670))

(push 1)

(assert (not setNonEmpty!49))

(assert (not setNonEmpty!50))

(assert (not setNonEmpty!48))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

