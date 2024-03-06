; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8212 () Bool)

(assert start!8212)

(declare-fun res!26958 () Bool)

(declare-fun e!31010 () Bool)

(assert (=> start!8212 (=> (not res!26958) (not e!31010))))

(declare-datatypes () ((Monoid!12 (ListMonoid!4) (MonoidExt!4 (__x!236 Int)))))

(declare-fun thiss!8632 () Monoid!12)

(assert (=> start!8212 (= res!26958 (not (is-ListMonoid!4 thiss!8632)))))

(assert (=> start!8212 e!31010))

(assert (=> start!8212 true))

(declare-fun b!58288 () Bool)

(declare-fun res!26960 () Bool)

(assert (=> b!58288 (=> (not res!26960) (not e!31010))))

(declare-datatypes () ((List!473 (Cons!448 (h!687 Int) (t!47128 List!473)) (Nil!449))))

(declare-fun x!26087 () List!473)

(declare-fun res!26940 () Bool)

(declare-fun law_rightIdentity!10 (Monoid!12 List!473) Bool)

(assert (=> b!58288 (= res!26960 (= res!26940 (law_rightIdentity!10 thiss!8632 x!26087)))))

(declare-fun b!58289 () Bool)

(declare-fun e!31011 () Bool)

(assert (=> b!58289 (= e!31010 e!31011)))

(declare-fun res!26959 () Bool)

(assert (=> b!58289 (=> res!26959 e!31011)))

(assert (=> b!58289 (= res!26959 (not res!26940))))

(declare-fun b!58290 () Bool)

(declare-fun append!10 (Monoid!12 List!473 List!473) List!473)

(declare-fun empty!15 (Monoid!12) List!473)

(assert (=> b!58290 (= e!31011 (not (= (append!10 thiss!8632 x!26087 (empty!15 thiss!8632)) x!26087)))))

(assert (= (and start!8212 res!26958) b!58288))

(assert (= (and b!58288 res!26960) b!58289))

(assert (= (and b!58289 (not res!26959)) b!58290))

(declare-fun m!62814 () Bool)

(assert (=> b!58288 m!62814))

(declare-fun m!62816 () Bool)

(assert (=> b!58290 m!62816))

(assert (=> b!58290 m!62816))

(declare-fun m!62818 () Bool)

(assert (=> b!58290 m!62818))

(push 1)

(assert (not b!58288))

(assert (not b!58290))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50522 () Bool)

(declare-fun e!31014 () Bool)

(assert (=> d!50522 e!31014))

(declare-fun res!26966 () Bool)

(assert (=> d!50522 (=> (not res!26966) (not e!31014))))

(declare-fun res!26965 () Bool)

(assert (=> d!50522 (= res!26966 res!26965)))

(assert (=> d!50522 true))

(assert (=> d!50522 (= (law_rightIdentity!10 thiss!8632 x!26087) res!26965)))

(declare-fun b!58293 () Bool)

(assert (=> b!58293 (= e!31014 (= (append!10 thiss!8632 x!26087 (empty!15 thiss!8632)) x!26087))))

(assert (= (and d!50522 res!26966) b!58293))

(assert (=> b!58293 m!62816))

(assert (=> b!58293 m!62816))

(assert (=> b!58293 m!62818))

(assert (=> b!58288 d!50522))

(declare-fun d!50524 () Bool)

(declare-fun c!12478 () Bool)

(assert (=> d!50524 (= c!12478 (is-ListMonoid!4 thiss!8632))))

(declare-fun e!31017 () List!473)

(assert (=> d!50524 (= (append!10 thiss!8632 x!26087 (empty!15 thiss!8632)) e!31017)))

(declare-fun b!58298 () Bool)

(declare-fun append!11 (Monoid!12 List!473 List!473) List!473)

(assert (=> b!58298 (= e!31017 (append!11 thiss!8632 x!26087 (empty!15 thiss!8632)))))

(declare-fun b!58299 () Bool)

(declare-fun append!161 (Monoid!12 List!473 List!473) List!473)

(assert (=> b!58299 (= e!31017 (append!161 thiss!8632 x!26087 (empty!15 thiss!8632)))))

(assert (= (and d!50524 c!12478) b!58298))

(assert (= (and d!50524 (not c!12478)) b!58299))

(assert (=> b!58298 m!62816))

(declare-fun m!62820 () Bool)

(assert (=> b!58298 m!62820))

(assert (=> b!58299 m!62816))

(declare-fun m!62822 () Bool)

(assert (=> b!58299 m!62822))

(assert (=> b!58290 d!50524))

(declare-fun d!50526 () Bool)

(declare-fun c!12481 () Bool)

(assert (=> d!50526 (= c!12481 (is-ListMonoid!4 thiss!8632))))

(declare-fun e!31020 () List!473)

(assert (=> d!50526 (= (empty!15 thiss!8632) e!31020)))

(declare-fun b!58304 () Bool)

(declare-fun empty!16 (Monoid!12) List!473)

(assert (=> b!58304 (= e!31020 (empty!16 thiss!8632))))

(declare-fun b!58305 () Bool)

(declare-fun empty!118 (Monoid!12) List!473)

(assert (=> b!58305 (= e!31020 (empty!118 thiss!8632))))

(assert (= (and d!50526 c!12481) b!58304))

(assert (= (and d!50526 (not c!12481)) b!58305))

(declare-fun m!62824 () Bool)

(assert (=> b!58304 m!62824))

(declare-fun m!62826 () Bool)

(assert (=> b!58305 m!62826))

(assert (=> b!58290 d!50526))

(push 1)

(assert (not b!58298))

(assert (not b!58293))

(assert (not b!58304))

(assert (not b!58299))

(assert (not b!58305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

