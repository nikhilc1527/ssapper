; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12102 () Bool)

(assert start!12102)

(declare-fun b!90765 () Bool)

(declare-fun e!49546 () Bool)

(declare-fun res!47557 () (Set Int))

(assert (=> b!90765 (= e!49546 (and (member 1 res!47557) (not (member 2 res!47557))))))

(declare-fun setNonEmpty!29 () Bool)

(declare-fun setRes!29 () Bool)

(declare-fun tp!17797 () Bool)

(assert (=> setNonEmpty!29 (= setRes!29 tp!17797)))

(declare-fun set!39 () (Set Int))

(declare-fun setElem!30 () Int)

(declare-fun setRest!31 () (Set Int))

(assert (=> setNonEmpty!29 (= set!39 (union (insert setElem!30 (as emptyset (Set Int))) setRest!31))))

(declare-fun setIsEmpty!29 () Bool)

(declare-fun setRes!31 () Bool)

(assert (=> setIsEmpty!29 setRes!31))

(declare-fun b!90766 () Bool)

(declare-fun res!47578 () Bool)

(assert (=> b!90766 (=> (not res!47578) (not e!49546))))

(declare-fun res!47579 () (Set Int))

(assert (=> b!90766 (= res!47578 (= res!47557 res!47579))))

(assert (=> b!90766 true))

(assert (=> b!90766 setRes!31))

(declare-fun condSetEmpty!30 () Bool)

(assert (=> b!90766 (= condSetEmpty!30 (= res!47579 (as emptyset (Set Int))))))

(declare-fun setIsEmpty!30 () Bool)

(declare-fun setRes!30 () Bool)

(assert (=> setIsEmpty!30 setRes!30))

(declare-fun setNonEmpty!30 () Bool)

(declare-fun tp!17796 () Bool)

(assert (=> setNonEmpty!30 (= setRes!30 tp!17796)))

(declare-fun setElem!31 () Int)

(declare-fun setRest!30 () (Set Int))

(assert (=> setNonEmpty!30 (= res!47557 (union (insert setElem!31 (as emptyset (Set Int))) setRest!30))))

(declare-fun setIsEmpty!31 () Bool)

(assert (=> setIsEmpty!31 setRes!29))

(declare-fun res!47577 () Bool)

(assert (=> start!12102 (=> (not res!47577) (not e!49546))))

(assert (=> start!12102 (= res!47577 (= (intersection set!39 (insert 2 3 4 5 6 (singleton 1))) (insert 2 3 4 5 6 (singleton 1))))))

(assert (=> start!12102 e!49546))

(declare-fun condSetEmpty!31 () Bool)

(assert (=> start!12102 (= condSetEmpty!31 (= set!39 (as emptyset (Set Int))))))

(assert (=> start!12102 setRes!29))

(declare-fun condSetEmpty!29 () Bool)

(assert (=> start!12102 (= condSetEmpty!29 (= res!47557 (as emptyset (Set Int))))))

(assert (=> start!12102 setRes!30))

(declare-fun setNonEmpty!31 () Bool)

(declare-fun tp!17795 () Bool)

(assert (=> setNonEmpty!31 (= setRes!31 tp!17795)))

(declare-fun setElem!29 () Int)

(declare-fun setRest!29 () (Set Int))

(assert (=> setNonEmpty!31 (= res!47579 (union (insert setElem!29 (as emptyset (Set Int))) setRest!29))))

(assert (= (and start!12102 res!47577) b!90766))

(assert (= (and b!90766 condSetEmpty!30) setIsEmpty!29))

(assert (= (and b!90766 (not condSetEmpty!30)) setNonEmpty!31))

(assert (= (and b!90766 res!47578) b!90765))

(assert (= (and start!12102 condSetEmpty!31) setIsEmpty!31))

(assert (= (and start!12102 (not condSetEmpty!31)) setNonEmpty!29))

(assert (= (and start!12102 condSetEmpty!29) setIsEmpty!30))

(assert (= (and start!12102 (not condSetEmpty!29)) setNonEmpty!30))

(declare-fun m!86526 () Bool)

(assert (=> b!90765 m!86526))

(declare-fun m!86528 () Bool)

(assert (=> b!90765 m!86528))

(push 1)

(assert (not setNonEmpty!29))

(assert (not setNonEmpty!30))

(assert (not setNonEmpty!31))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun condSetEmpty!34 () Bool)

(assert (=> setNonEmpty!29 (= condSetEmpty!34 (= setRest!31 (as emptyset (Set Int))))))

(declare-fun setRes!34 () Bool)

(assert (=> setNonEmpty!29 (= tp!17797 setRes!34)))

(declare-fun setIsEmpty!34 () Bool)

(assert (=> setIsEmpty!34 setRes!34))

(declare-fun setNonEmpty!34 () Bool)

(declare-fun tp!17800 () Bool)

(assert (=> setNonEmpty!34 (= setRes!34 tp!17800)))

(declare-fun setElem!34 () Int)

(declare-fun setRest!34 () (Set Int))

(assert (=> setNonEmpty!34 (= setRest!31 (union (insert setElem!34 (as emptyset (Set Int))) setRest!34))))

(assert (= (and setNonEmpty!29 condSetEmpty!34) setIsEmpty!34))

(assert (= (and setNonEmpty!29 (not condSetEmpty!34)) setNonEmpty!34))

(declare-fun condSetEmpty!35 () Bool)

(assert (=> setNonEmpty!30 (= condSetEmpty!35 (= setRest!30 (as emptyset (Set Int))))))

(declare-fun setRes!35 () Bool)

(assert (=> setNonEmpty!30 (= tp!17796 setRes!35)))

(declare-fun setIsEmpty!35 () Bool)

(assert (=> setIsEmpty!35 setRes!35))

(declare-fun setNonEmpty!35 () Bool)

(declare-fun tp!17801 () Bool)

(assert (=> setNonEmpty!35 (= setRes!35 tp!17801)))

(declare-fun setElem!35 () Int)

(declare-fun setRest!35 () (Set Int))

(assert (=> setNonEmpty!35 (= setRest!30 (union (insert setElem!35 (as emptyset (Set Int))) setRest!35))))

(assert (= (and setNonEmpty!30 condSetEmpty!35) setIsEmpty!35))

(assert (= (and setNonEmpty!30 (not condSetEmpty!35)) setNonEmpty!35))

(declare-fun condSetEmpty!36 () Bool)

(assert (=> setNonEmpty!31 (= condSetEmpty!36 (= setRest!29 (as emptyset (Set Int))))))

(declare-fun setRes!36 () Bool)

(assert (=> setNonEmpty!31 (= tp!17795 setRes!36)))

(declare-fun setIsEmpty!36 () Bool)

(assert (=> setIsEmpty!36 setRes!36))

(declare-fun setNonEmpty!36 () Bool)

(declare-fun tp!17802 () Bool)

(assert (=> setNonEmpty!36 (= setRes!36 tp!17802)))

(declare-fun setElem!36 () Int)

(declare-fun setRest!36 () (Set Int))

(assert (=> setNonEmpty!36 (= setRest!29 (union (insert setElem!36 (as emptyset (Set Int))) setRest!36))))

(assert (= (and setNonEmpty!31 condSetEmpty!36) setIsEmpty!36))

(assert (= (and setNonEmpty!31 (not condSetEmpty!36)) setNonEmpty!36))

(declare-fun bs!41682 () Bool)

(declare-fun s!2662 () Bool)

(assert (= bs!41682 (and start!12102 b!90766 s!2662)))

(assert (=> bs!41682 (=> true (= (and (member 1 set!39) (< 1 4)) (member 1 res!47579)))))

(declare-fun m!86530 () Bool)

(assert (=> m!86526 m!86530))

(declare-fun m!86532 () Bool)

(assert (=> m!86526 m!86532))

(assert (=> m!86526 s!2662))

(declare-fun bs!41683 () Bool)

(declare-fun s!2664 () Bool)

(assert (= bs!41683 (and start!12102 b!90766 s!2664)))

(assert (=> bs!41683 (=> true (= (and (member 2 set!39) (< 2 4)) (member 2 res!47579)))))

(declare-fun m!86534 () Bool)

(assert (=> m!86528 m!86534))

(declare-fun m!86536 () Bool)

(assert (=> m!86528 m!86536))

(assert (=> m!86528 s!2664))

(push 1)

(assert (not setNonEmpty!34))

(assert (not setNonEmpty!35))

(assert (not setNonEmpty!36))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

