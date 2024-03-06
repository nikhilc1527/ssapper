; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12108 () Bool)

(assert start!12108)

(declare-fun setIsEmpty!71 () Bool)

(declare-fun setRes!71 () Bool)

(assert (=> setIsEmpty!71 setRes!71))

(declare-fun setIsEmpty!72 () Bool)

(declare-fun setRes!73 () Bool)

(assert (=> setIsEmpty!72 setRes!73))

(declare-fun setIsEmpty!73 () Bool)

(declare-fun setRes!72 () Bool)

(assert (=> setIsEmpty!73 setRes!72))

(declare-fun b!90789 () Bool)

(declare-fun res!47604 () Bool)

(declare-fun e!49555 () Bool)

(assert (=> b!90789 (=> (not res!47604) (not e!49555))))

(declare-fun res!47557 () (Set Int))

(declare-fun res!47606 () (Set Int))

(assert (=> b!90789 (= res!47604 (= res!47557 res!47606))))

(assert (=> b!90789 true))

(assert (=> b!90789 setRes!72))

(declare-fun condSetEmpty!73 () Bool)

(assert (=> b!90789 (= condSetEmpty!73 (= res!47606 (as emptyset (Set Int))))))

(declare-fun setNonEmpty!71 () Bool)

(declare-fun tp!17838 () Bool)

(assert (=> setNonEmpty!71 (= setRes!72 tp!17838)))

(declare-fun setElem!72 () Int)

(declare-fun setRest!71 () (Set Int))

(assert (=> setNonEmpty!71 (= res!47606 (union (insert setElem!72 (as emptyset (Set Int))) setRest!71))))

(declare-fun setNonEmpty!72 () Bool)

(declare-fun tp!17839 () Bool)

(assert (=> setNonEmpty!72 (= setRes!71 tp!17839)))

(declare-fun setElem!73 () Int)

(declare-fun setRest!73 () (Set Int))

(assert (=> setNonEmpty!72 (= res!47557 (union (insert setElem!73 (as emptyset (Set Int))) setRest!73))))

(declare-fun setNonEmpty!73 () Bool)

(declare-fun tp!17837 () Bool)

(assert (=> setNonEmpty!73 (= setRes!73 tp!17837)))

(declare-fun set!39 () (Set Int))

(declare-fun setElem!71 () Int)

(declare-fun setRest!72 () (Set Int))

(assert (=> setNonEmpty!73 (= set!39 (union (insert setElem!71 (as emptyset (Set Int))) setRest!72))))

(declare-fun b!90790 () Bool)

(assert (=> b!90790 (= e!49555 (and (member 1 res!47557) (member 2 res!47557) (member 3 res!47557) (not (member 4 res!47557)) (member 5 res!47557)))))

(declare-fun res!47605 () Bool)

(assert (=> start!12108 (=> (not res!47605) (not e!49555))))

(assert (=> start!12108 (= res!47605 (= (intersection set!39 (insert 2 3 4 5 6 (singleton 1))) (insert 2 3 4 5 6 (singleton 1))))))

(assert (=> start!12108 e!49555))

(declare-fun condSetEmpty!72 () Bool)

(assert (=> start!12108 (= condSetEmpty!72 (= set!39 (as emptyset (Set Int))))))

(assert (=> start!12108 setRes!73))

(declare-fun condSetEmpty!71 () Bool)

(assert (=> start!12108 (= condSetEmpty!71 (= res!47557 (as emptyset (Set Int))))))

(assert (=> start!12108 setRes!71))

(assert (= (and start!12108 res!47605) b!90789))

(assert (= (and b!90789 condSetEmpty!73) setIsEmpty!73))

(assert (= (and b!90789 (not condSetEmpty!73)) setNonEmpty!71))

(assert (= (and b!90789 res!47604) b!90790))

(assert (= (and start!12108 condSetEmpty!72) setIsEmpty!72))

(assert (= (and start!12108 (not condSetEmpty!72)) setNonEmpty!73))

(assert (= (and start!12108 condSetEmpty!71) setIsEmpty!71))

(assert (= (and start!12108 (not condSetEmpty!71)) setNonEmpty!72))

(declare-fun m!86580 () Bool)

(assert (=> b!90790 m!86580))

(declare-fun m!86582 () Bool)

(assert (=> b!90790 m!86582))

(declare-fun m!86584 () Bool)

(assert (=> b!90790 m!86584))

(declare-fun m!86586 () Bool)

(assert (=> b!90790 m!86586))

(declare-fun m!86588 () Bool)

(assert (=> b!90790 m!86588))

(push 1)

(assert (not setNonEmpty!73))

(assert (not setNonEmpty!72))

(assert (not setNonEmpty!71))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun condSetEmpty!76 () Bool)

(assert (=> setNonEmpty!73 (= condSetEmpty!76 (= setRest!72 (as emptyset (Set Int))))))

(declare-fun setRes!76 () Bool)

(assert (=> setNonEmpty!73 (= tp!17837 setRes!76)))

(declare-fun setIsEmpty!76 () Bool)

(assert (=> setIsEmpty!76 setRes!76))

(declare-fun setNonEmpty!76 () Bool)

(declare-fun tp!17842 () Bool)

(assert (=> setNonEmpty!76 (= setRes!76 tp!17842)))

(declare-fun setElem!76 () Int)

(declare-fun setRest!76 () (Set Int))

(assert (=> setNonEmpty!76 (= setRest!72 (union (insert setElem!76 (as emptyset (Set Int))) setRest!76))))

(assert (= (and setNonEmpty!73 condSetEmpty!76) setIsEmpty!76))

(assert (= (and setNonEmpty!73 (not condSetEmpty!76)) setNonEmpty!76))

(declare-fun condSetEmpty!77 () Bool)

(assert (=> setNonEmpty!72 (= condSetEmpty!77 (= setRest!73 (as emptyset (Set Int))))))

(declare-fun setRes!77 () Bool)

(assert (=> setNonEmpty!72 (= tp!17839 setRes!77)))

(declare-fun setIsEmpty!77 () Bool)

(assert (=> setIsEmpty!77 setRes!77))

(declare-fun setNonEmpty!77 () Bool)

(declare-fun tp!17843 () Bool)

(assert (=> setNonEmpty!77 (= setRes!77 tp!17843)))

(declare-fun setElem!77 () Int)

(declare-fun setRest!77 () (Set Int))

(assert (=> setNonEmpty!77 (= setRest!73 (union (insert setElem!77 (as emptyset (Set Int))) setRest!77))))

(assert (= (and setNonEmpty!72 condSetEmpty!77) setIsEmpty!77))

(assert (= (and setNonEmpty!72 (not condSetEmpty!77)) setNonEmpty!77))

(declare-fun condSetEmpty!78 () Bool)

(assert (=> setNonEmpty!71 (= condSetEmpty!78 (= setRest!71 (as emptyset (Set Int))))))

(declare-fun setRes!78 () Bool)

(assert (=> setNonEmpty!71 (= tp!17838 setRes!78)))

(declare-fun setIsEmpty!78 () Bool)

(assert (=> setIsEmpty!78 setRes!78))

(declare-fun setNonEmpty!78 () Bool)

(declare-fun tp!17844 () Bool)

(assert (=> setNonEmpty!78 (= setRes!78 tp!17844)))

(declare-fun setElem!78 () Int)

(declare-fun setRest!78 () (Set Int))

(assert (=> setNonEmpty!78 (= setRest!71 (union (insert setElem!78 (as emptyset (Set Int))) setRest!78))))

(assert (= (and setNonEmpty!71 condSetEmpty!78) setIsEmpty!78))

(assert (= (and setNonEmpty!71 (not condSetEmpty!78)) setNonEmpty!78))

(declare-fun bs!41694 () Bool)

(declare-fun s!2680 () Bool)

(assert (= bs!41694 (and start!12108 b!90789 s!2680)))

(assert (=> bs!41694 (=> true (= (and (member 5 set!39) (< 5 4)) (member 5 res!47606)))))

(declare-fun m!86590 () Bool)

(assert (=> m!86586 m!86590))

(declare-fun m!86592 () Bool)

(assert (=> m!86586 m!86592))

(assert (=> m!86586 s!2680))

(declare-fun bs!41695 () Bool)

(declare-fun s!2682 () Bool)

(assert (= bs!41695 (and start!12108 b!90789 s!2682)))

(assert (=> bs!41695 (=> true (= (and (member 2 set!39) (< 2 4)) (member 2 res!47606)))))

(declare-fun m!86594 () Bool)

(assert (=> m!86584 m!86594))

(declare-fun m!86596 () Bool)

(assert (=> m!86584 m!86596))

(assert (=> m!86584 s!2682))

(declare-fun bs!41696 () Bool)

(declare-fun s!2684 () Bool)

(assert (= bs!41696 (and start!12108 b!90789 s!2684)))

(assert (=> bs!41696 (=> true (= (and (member 3 set!39) (< 3 4)) (member 3 res!47606)))))

(declare-fun m!86598 () Bool)

(assert (=> m!86588 m!86598))

(declare-fun m!86600 () Bool)

(assert (=> m!86588 m!86600))

(assert (=> m!86588 s!2684))

(declare-fun bs!41697 () Bool)

(declare-fun s!2686 () Bool)

(assert (= bs!41697 (and start!12108 b!90789 s!2686)))

(assert (=> bs!41697 (=> true (= (and (member 1 set!39) (< 1 4)) (member 1 res!47606)))))

(declare-fun m!86602 () Bool)

(assert (=> m!86580 m!86602))

(declare-fun m!86604 () Bool)

(assert (=> m!86580 m!86604))

(assert (=> m!86580 s!2686))

(declare-fun bs!41698 () Bool)

(declare-fun s!2688 () Bool)

(assert (= bs!41698 (and start!12108 b!90789 s!2688)))

(assert (=> bs!41698 (=> true (= (and (member 4 set!39) (< 4 4)) (member 4 res!47606)))))

(declare-fun m!86606 () Bool)

(assert (=> m!86582 m!86606))

(declare-fun m!86608 () Bool)

(assert (=> m!86582 m!86608))

(assert (=> m!86582 s!2688))

(push 1)

(assert (not setNonEmpty!77))

(assert (not setNonEmpty!78))

(assert (not setNonEmpty!76))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

