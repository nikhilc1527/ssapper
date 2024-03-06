; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12106 () Bool)

(assert start!12106)

(declare-fun setIsEmpty!57 () Bool)

(declare-fun setRes!57 () Bool)

(assert (=> setIsEmpty!57 setRes!57))

(declare-fun setIsEmpty!58 () Bool)

(declare-fun setRes!59 () Bool)

(assert (=> setIsEmpty!58 setRes!59))

(declare-fun setNonEmpty!57 () Bool)

(declare-fun setRes!58 () Bool)

(declare-fun tp!17823 () Bool)

(assert (=> setNonEmpty!57 (= setRes!58 tp!17823)))

(declare-fun res!47557 () (Set Int))

(declare-fun setElem!57 () Int)

(declare-fun setRest!59 () (Set Int))

(assert (=> setNonEmpty!57 (= res!47557 (union (insert setElem!57 (as emptyset (Set Int))) setRest!59))))

(declare-fun res!47597 () Bool)

(declare-fun e!49552 () Bool)

(assert (=> start!12106 (=> (not res!47597) (not e!49552))))

(declare-fun set!39 () (Set Int))

(assert (=> start!12106 (= res!47597 (= (intersection set!39 (insert 2 3 4 5 6 (singleton 1))) (insert 2 3 4 5 6 (singleton 1))))))

(assert (=> start!12106 e!49552))

(declare-fun condSetEmpty!58 () Bool)

(assert (=> start!12106 (= condSetEmpty!58 (= set!39 (as emptyset (Set Int))))))

(assert (=> start!12106 setRes!59))

(declare-fun condSetEmpty!57 () Bool)

(assert (=> start!12106 (= condSetEmpty!57 (= res!47557 (as emptyset (Set Int))))))

(assert (=> start!12106 setRes!58))

(declare-fun b!90781 () Bool)

(assert (=> b!90781 (= e!49552 (and (member 1 res!47557) (member 2 res!47557) (member 3 res!47557) (member 4 res!47557)))))

(declare-fun b!90782 () Bool)

(declare-fun res!47596 () Bool)

(assert (=> b!90782 (=> (not res!47596) (not e!49552))))

(declare-fun res!47595 () (Set Int))

(assert (=> b!90782 (= res!47596 (= res!47557 res!47595))))

(assert (=> b!90782 true))

(assert (=> b!90782 setRes!57))

(declare-fun condSetEmpty!59 () Bool)

(assert (=> b!90782 (= condSetEmpty!59 (= res!47595 (as emptyset (Set Int))))))

(declare-fun setNonEmpty!58 () Bool)

(declare-fun tp!17825 () Bool)

(assert (=> setNonEmpty!58 (= setRes!59 tp!17825)))

(declare-fun setElem!59 () Int)

(declare-fun setRest!58 () (Set Int))

(assert (=> setNonEmpty!58 (= set!39 (union (insert setElem!59 (as emptyset (Set Int))) setRest!58))))

(declare-fun setIsEmpty!59 () Bool)

(assert (=> setIsEmpty!59 setRes!58))

(declare-fun setNonEmpty!59 () Bool)

(declare-fun tp!17824 () Bool)

(assert (=> setNonEmpty!59 (= setRes!57 tp!17824)))

(declare-fun setElem!58 () Int)

(declare-fun setRest!57 () (Set Int))

(assert (=> setNonEmpty!59 (= res!47595 (union (insert setElem!58 (as emptyset (Set Int))) setRest!57))))

(assert (= (and start!12106 res!47597) b!90782))

(assert (= (and b!90782 condSetEmpty!59) setIsEmpty!57))

(assert (= (and b!90782 (not condSetEmpty!59)) setNonEmpty!59))

(assert (= (and b!90782 res!47596) b!90781))

(assert (= (and start!12106 condSetEmpty!58) setIsEmpty!58))

(assert (= (and start!12106 (not condSetEmpty!58)) setNonEmpty!58))

(assert (= (and start!12106 condSetEmpty!57) setIsEmpty!59))

(assert (= (and start!12106 (not condSetEmpty!57)) setNonEmpty!57))

(declare-fun m!86556 () Bool)

(assert (=> b!90781 m!86556))

(declare-fun m!86558 () Bool)

(assert (=> b!90781 m!86558))

(declare-fun m!86560 () Bool)

(assert (=> b!90781 m!86560))

(declare-fun m!86562 () Bool)

(assert (=> b!90781 m!86562))

(push 1)

(assert (not setNonEmpty!58))

(assert (not setNonEmpty!57))

(assert (not setNonEmpty!59))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun condSetEmpty!62 () Bool)

(assert (=> setNonEmpty!58 (= condSetEmpty!62 (= setRest!58 (as emptyset (Set Int))))))

(declare-fun setRes!62 () Bool)

(assert (=> setNonEmpty!58 (= tp!17825 setRes!62)))

(declare-fun setIsEmpty!62 () Bool)

(assert (=> setIsEmpty!62 setRes!62))

(declare-fun setNonEmpty!62 () Bool)

(declare-fun tp!17828 () Bool)

(assert (=> setNonEmpty!62 (= setRes!62 tp!17828)))

(declare-fun setElem!62 () Int)

(declare-fun setRest!62 () (Set Int))

(assert (=> setNonEmpty!62 (= setRest!58 (union (insert setElem!62 (as emptyset (Set Int))) setRest!62))))

(assert (= (and setNonEmpty!58 condSetEmpty!62) setIsEmpty!62))

(assert (= (and setNonEmpty!58 (not condSetEmpty!62)) setNonEmpty!62))

(declare-fun condSetEmpty!63 () Bool)

(assert (=> setNonEmpty!57 (= condSetEmpty!63 (= setRest!59 (as emptyset (Set Int))))))

(declare-fun setRes!63 () Bool)

(assert (=> setNonEmpty!57 (= tp!17823 setRes!63)))

(declare-fun setIsEmpty!63 () Bool)

(assert (=> setIsEmpty!63 setRes!63))

(declare-fun setNonEmpty!63 () Bool)

(declare-fun tp!17829 () Bool)

(assert (=> setNonEmpty!63 (= setRes!63 tp!17829)))

(declare-fun setElem!63 () Int)

(declare-fun setRest!63 () (Set Int))

(assert (=> setNonEmpty!63 (= setRest!59 (union (insert setElem!63 (as emptyset (Set Int))) setRest!63))))

(assert (= (and setNonEmpty!57 condSetEmpty!63) setIsEmpty!63))

(assert (= (and setNonEmpty!57 (not condSetEmpty!63)) setNonEmpty!63))

(declare-fun condSetEmpty!64 () Bool)

(assert (=> setNonEmpty!59 (= condSetEmpty!64 (= setRest!57 (as emptyset (Set Int))))))

(declare-fun setRes!64 () Bool)

(assert (=> setNonEmpty!59 (= tp!17824 setRes!64)))

(declare-fun setIsEmpty!64 () Bool)

(assert (=> setIsEmpty!64 setRes!64))

(declare-fun setNonEmpty!64 () Bool)

(declare-fun tp!17830 () Bool)

(assert (=> setNonEmpty!64 (= setRes!64 tp!17830)))

(declare-fun setElem!64 () Int)

(declare-fun setRest!64 () (Set Int))

(assert (=> setNonEmpty!64 (= setRest!57 (union (insert setElem!64 (as emptyset (Set Int))) setRest!64))))

(assert (= (and setNonEmpty!59 condSetEmpty!64) setIsEmpty!64))

(assert (= (and setNonEmpty!59 (not condSetEmpty!64)) setNonEmpty!64))

(declare-fun bs!41689 () Bool)

(declare-fun s!2672 () Bool)

(assert (= bs!41689 (and start!12106 b!90782 s!2672)))

(assert (=> bs!41689 (=> true (= (and (member 1 set!39) (< 1 4)) (member 1 res!47595)))))

(declare-fun m!86564 () Bool)

(assert (=> m!86556 m!86564))

(declare-fun m!86566 () Bool)

(assert (=> m!86556 m!86566))

(assert (=> m!86556 s!2672))

(declare-fun bs!41690 () Bool)

(declare-fun s!2674 () Bool)

(assert (= bs!41690 (and start!12106 b!90782 s!2674)))

(assert (=> bs!41690 (=> true (= (and (member 2 set!39) (< 2 4)) (member 2 res!47595)))))

(declare-fun m!86568 () Bool)

(assert (=> m!86558 m!86568))

(declare-fun m!86570 () Bool)

(assert (=> m!86558 m!86570))

(assert (=> m!86558 s!2674))

(declare-fun bs!41691 () Bool)

(declare-fun s!2676 () Bool)

(assert (= bs!41691 (and start!12106 b!90782 s!2676)))

(assert (=> bs!41691 (=> true (= (and (member 3 set!39) (< 3 4)) (member 3 res!47595)))))

(declare-fun m!86572 () Bool)

(assert (=> m!86560 m!86572))

(declare-fun m!86574 () Bool)

(assert (=> m!86560 m!86574))

(assert (=> m!86560 s!2676))

(declare-fun bs!41692 () Bool)

(declare-fun s!2678 () Bool)

(assert (= bs!41692 (and start!12106 b!90782 s!2678)))

(assert (=> bs!41692 (=> true (= (and (member 4 set!39) (< 4 4)) (member 4 res!47595)))))

(declare-fun m!86576 () Bool)

(assert (=> m!86562 m!86576))

(declare-fun m!86578 () Bool)

(assert (=> m!86562 m!86578))

(assert (=> m!86562 s!2678))

(push 1)

(assert (not setNonEmpty!63))

(assert (not setNonEmpty!64))

(assert (not setNonEmpty!62))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

