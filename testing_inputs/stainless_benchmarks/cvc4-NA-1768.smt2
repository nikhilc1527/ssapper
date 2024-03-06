; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12110 () Bool)

(assert start!12110)

(declare-fun setNonEmpty!85 () Bool)

(declare-fun setRes!86 () Bool)

(declare-fun tp!17852 () Bool)

(assert (=> setNonEmpty!85 (= setRes!86 tp!17852)))

(declare-fun res!47557 () (Set Int))

(declare-fun setElem!87 () Int)

(declare-fun setRest!87 () (Set Int))

(assert (=> setNonEmpty!85 (= res!47557 (union (insert setElem!87 (as emptyset (Set Int))) setRest!87))))

(declare-fun b!90797 () Bool)

(declare-fun e!49558 () Bool)

(assert (=> b!90797 (= e!49558 (and (member 1 res!47557) (member 2 res!47557) (member 3 res!47557) (not (member 4 res!47557)) (not (member 5 res!47557)) (member 6 res!47557)))))

(declare-fun b!90798 () Bool)

(declare-fun res!47614 () Bool)

(assert (=> b!90798 (=> (not res!47614) (not e!49558))))

(declare-fun res!47613 () (Set Int))

(assert (=> b!90798 (= res!47614 (= res!47557 res!47613))))

(assert (=> b!90798 true))

(declare-fun setRes!85 () Bool)

(assert (=> b!90798 setRes!85))

(declare-fun condSetEmpty!86 () Bool)

(assert (=> b!90798 (= condSetEmpty!86 (= res!47613 (as emptyset (Set Int))))))

(declare-fun setNonEmpty!86 () Bool)

(declare-fun tp!17853 () Bool)

(assert (=> setNonEmpty!86 (= setRes!85 tp!17853)))

(declare-fun setElem!86 () Int)

(declare-fun setRest!85 () (Set Int))

(assert (=> setNonEmpty!86 (= res!47613 (union (insert setElem!86 (as emptyset (Set Int))) setRest!85))))

(declare-fun res!47615 () Bool)

(assert (=> start!12110 (=> (not res!47615) (not e!49558))))

(declare-fun set!39 () (Set Int))

(assert (=> start!12110 (= res!47615 (= (intersection set!39 (insert 2 3 4 5 6 (singleton 1))) (insert 2 3 4 5 6 (singleton 1))))))

(assert (=> start!12110 e!49558))

(declare-fun condSetEmpty!87 () Bool)

(assert (=> start!12110 (= condSetEmpty!87 (= set!39 (as emptyset (Set Int))))))

(declare-fun setRes!87 () Bool)

(assert (=> start!12110 setRes!87))

(declare-fun condSetEmpty!85 () Bool)

(assert (=> start!12110 (= condSetEmpty!85 (= res!47557 (as emptyset (Set Int))))))

(assert (=> start!12110 setRes!86))

(declare-fun setIsEmpty!85 () Bool)

(assert (=> setIsEmpty!85 setRes!85))

(declare-fun setNonEmpty!87 () Bool)

(declare-fun tp!17851 () Bool)

(assert (=> setNonEmpty!87 (= setRes!87 tp!17851)))

(declare-fun setElem!85 () Int)

(declare-fun setRest!86 () (Set Int))

(assert (=> setNonEmpty!87 (= set!39 (union (insert setElem!85 (as emptyset (Set Int))) setRest!86))))

(declare-fun setIsEmpty!86 () Bool)

(assert (=> setIsEmpty!86 setRes!86))

(declare-fun setIsEmpty!87 () Bool)

(assert (=> setIsEmpty!87 setRes!87))

(assert (= (and start!12110 res!47615) b!90798))

(assert (= (and b!90798 condSetEmpty!86) setIsEmpty!85))

(assert (= (and b!90798 (not condSetEmpty!86)) setNonEmpty!86))

(assert (= (and b!90798 res!47614) b!90797))

(assert (= (and start!12110 condSetEmpty!87) setIsEmpty!87))

(assert (= (and start!12110 (not condSetEmpty!87)) setNonEmpty!87))

(assert (= (and start!12110 condSetEmpty!85) setIsEmpty!86))

(assert (= (and start!12110 (not condSetEmpty!85)) setNonEmpty!85))

(declare-fun m!86610 () Bool)

(assert (=> b!90797 m!86610))

(declare-fun m!86612 () Bool)

(assert (=> b!90797 m!86612))

(declare-fun m!86614 () Bool)

(assert (=> b!90797 m!86614))

(declare-fun m!86616 () Bool)

(assert (=> b!90797 m!86616))

(declare-fun m!86618 () Bool)

(assert (=> b!90797 m!86618))

(declare-fun m!86620 () Bool)

(assert (=> b!90797 m!86620))

(push 1)

(assert (not setNonEmpty!85))

(assert (not setNonEmpty!87))

(assert (not setNonEmpty!86))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun condSetEmpty!90 () Bool)

(assert (=> setNonEmpty!85 (= condSetEmpty!90 (= setRest!87 (as emptyset (Set Int))))))

(declare-fun setRes!90 () Bool)

(assert (=> setNonEmpty!85 (= tp!17852 setRes!90)))

(declare-fun setIsEmpty!90 () Bool)

(assert (=> setIsEmpty!90 setRes!90))

(declare-fun setNonEmpty!90 () Bool)

(declare-fun tp!17856 () Bool)

(assert (=> setNonEmpty!90 (= setRes!90 tp!17856)))

(declare-fun setElem!90 () Int)

(declare-fun setRest!90 () (Set Int))

(assert (=> setNonEmpty!90 (= setRest!87 (union (insert setElem!90 (as emptyset (Set Int))) setRest!90))))

(assert (= (and setNonEmpty!85 condSetEmpty!90) setIsEmpty!90))

(assert (= (and setNonEmpty!85 (not condSetEmpty!90)) setNonEmpty!90))

(declare-fun condSetEmpty!91 () Bool)

(assert (=> setNonEmpty!87 (= condSetEmpty!91 (= setRest!86 (as emptyset (Set Int))))))

(declare-fun setRes!91 () Bool)

(assert (=> setNonEmpty!87 (= tp!17851 setRes!91)))

(declare-fun setIsEmpty!91 () Bool)

(assert (=> setIsEmpty!91 setRes!91))

(declare-fun setNonEmpty!91 () Bool)

(declare-fun tp!17857 () Bool)

(assert (=> setNonEmpty!91 (= setRes!91 tp!17857)))

(declare-fun setElem!91 () Int)

(declare-fun setRest!91 () (Set Int))

(assert (=> setNonEmpty!91 (= setRest!86 (union (insert setElem!91 (as emptyset (Set Int))) setRest!91))))

(assert (= (and setNonEmpty!87 condSetEmpty!91) setIsEmpty!91))

(assert (= (and setNonEmpty!87 (not condSetEmpty!91)) setNonEmpty!91))

(declare-fun condSetEmpty!92 () Bool)

(assert (=> setNonEmpty!86 (= condSetEmpty!92 (= setRest!85 (as emptyset (Set Int))))))

(declare-fun setRes!92 () Bool)

(assert (=> setNonEmpty!86 (= tp!17853 setRes!92)))

(declare-fun setIsEmpty!92 () Bool)

(assert (=> setIsEmpty!92 setRes!92))

(declare-fun setNonEmpty!92 () Bool)

(declare-fun tp!17858 () Bool)

(assert (=> setNonEmpty!92 (= setRes!92 tp!17858)))

(declare-fun setElem!92 () Int)

(declare-fun setRest!92 () (Set Int))

(assert (=> setNonEmpty!92 (= setRest!85 (union (insert setElem!92 (as emptyset (Set Int))) setRest!92))))

(assert (= (and setNonEmpty!86 condSetEmpty!92) setIsEmpty!92))

(assert (= (and setNonEmpty!86 (not condSetEmpty!92)) setNonEmpty!92))

(declare-fun bs!41700 () Bool)

(declare-fun s!2690 () Bool)

(assert (= bs!41700 (and start!12110 b!90798 s!2690)))

(assert (=> bs!41700 (=> true (= (and (member 1 set!39) (< 1 4)) (member 1 res!47613)))))

(declare-fun m!86622 () Bool)

(assert (=> m!86610 m!86622))

(declare-fun m!86624 () Bool)

(assert (=> m!86610 m!86624))

(assert (=> m!86610 s!2690))

(declare-fun bs!41701 () Bool)

(declare-fun s!2692 () Bool)

(assert (= bs!41701 (and start!12110 b!90798 s!2692)))

(assert (=> bs!41701 (=> true (= (and (member 2 set!39) (< 2 4)) (member 2 res!47613)))))

(declare-fun m!86626 () Bool)

(assert (=> m!86614 m!86626))

(declare-fun m!86628 () Bool)

(assert (=> m!86614 m!86628))

(assert (=> m!86614 s!2692))

(declare-fun bs!41702 () Bool)

(declare-fun s!2694 () Bool)

(assert (= bs!41702 (and start!12110 b!90798 s!2694)))

(assert (=> bs!41702 (=> true (= (and (member 6 set!39) (< 6 4)) (member 6 res!47613)))))

(declare-fun m!86630 () Bool)

(assert (=> m!86620 m!86630))

(declare-fun m!86632 () Bool)

(assert (=> m!86620 m!86632))

(assert (=> m!86620 s!2694))

(declare-fun bs!41703 () Bool)

(declare-fun s!2696 () Bool)

(assert (= bs!41703 (and start!12110 b!90798 s!2696)))

(assert (=> bs!41703 (=> true (= (and (member 5 set!39) (< 5 4)) (member 5 res!47613)))))

(declare-fun m!86634 () Bool)

(assert (=> m!86616 m!86634))

(declare-fun m!86636 () Bool)

(assert (=> m!86616 m!86636))

(assert (=> m!86616 s!2696))

(declare-fun bs!41704 () Bool)

(declare-fun s!2698 () Bool)

(assert (= bs!41704 (and start!12110 b!90798 s!2698)))

(assert (=> bs!41704 (=> true (= (and (member 4 set!39) (< 4 4)) (member 4 res!47613)))))

(declare-fun m!86638 () Bool)

(assert (=> m!86612 m!86638))

(declare-fun m!86640 () Bool)

(assert (=> m!86612 m!86640))

(assert (=> m!86612 s!2698))

(declare-fun bs!41705 () Bool)

(declare-fun s!2700 () Bool)

(assert (= bs!41705 (and start!12110 b!90798 s!2700)))

(assert (=> bs!41705 (=> true (= (and (member 3 set!39) (< 3 4)) (member 3 res!47613)))))

(declare-fun m!86642 () Bool)

(assert (=> m!86618 m!86642))

(declare-fun m!86644 () Bool)

(assert (=> m!86618 m!86644))

(assert (=> m!86618 s!2700))

(push 1)

(assert (not setNonEmpty!92))

(assert (not setNonEmpty!90))

(assert (not setNonEmpty!91))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

