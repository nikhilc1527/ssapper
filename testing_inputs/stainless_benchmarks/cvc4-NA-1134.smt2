; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8204 () Bool)

(assert start!8204)

(declare-fun res!26948 () Bool)

(declare-fun e!30999 () Bool)

(assert (=> start!8204 (=> (not res!26948) (not e!30999))))

(declare-datatypes () ((Monoid!11 (ListMonoid!3) (MonoidExt!3 (__x!235 Int)))))

(declare-fun thiss!8632 () Monoid!11)

(assert (=> start!8204 (= res!26948 (is-ListMonoid!3 thiss!8632))))

(assert (=> start!8204 e!30999))

(assert (=> start!8204 true))

(declare-fun b!58267 () Bool)

(declare-fun res!26950 () Bool)

(assert (=> b!58267 (=> (not res!26950) (not e!30999))))

(declare-datatypes () ((List!472 (Cons!447 (h!686 Int) (t!47127 List!472)) (Nil!448))))

(declare-fun x!26087 () List!472)

(declare-fun res!26938 () Bool)

(declare-fun law_rightIdentity!9 (Monoid!11 List!472) Bool)

(assert (=> b!58267 (= res!26950 (= res!26938 (law_rightIdentity!9 thiss!8632 x!26087)))))

(declare-fun b!58268 () Bool)

(declare-fun e!30998 () Bool)

(assert (=> b!58268 (= e!30999 e!30998)))

(declare-fun res!26949 () Bool)

(assert (=> b!58268 (=> res!26949 e!30998)))

(assert (=> b!58268 (= res!26949 (not res!26938))))

(declare-fun b!58269 () Bool)

(declare-fun append!10 (Monoid!11 List!472 List!472) List!472)

(declare-fun empty!15 (Monoid!11) List!472)

(assert (=> b!58269 (= e!30998 (not (= (append!10 thiss!8632 x!26087 (empty!15 thiss!8632)) x!26087)))))

(assert (= (and start!8204 res!26948) b!58267))

(assert (= (and b!58267 res!26950) b!58268))

(assert (= (and b!58268 (not res!26949)) b!58269))

(declare-fun m!62800 () Bool)

(assert (=> b!58267 m!62800))

(declare-fun m!62802 () Bool)

(assert (=> b!58269 m!62802))

(assert (=> b!58269 m!62802))

(declare-fun m!62804 () Bool)

(assert (=> b!58269 m!62804))

(push 1)

(assert (not b!58267))

(assert (not b!58269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50516 () Bool)

(assert (=> d!50516 (= (append!10 thiss!8632 x!26087 (empty!15 thiss!8632)) x!26087)))

(assert (=> d!50516 (= (law_rightIdentity!9 thiss!8632 x!26087) true)))

(declare-fun bs!36341 () Bool)

(assert (= bs!36341 d!50516))

(assert (=> bs!36341 m!62802))

(assert (=> bs!36341 m!62802))

(assert (=> bs!36341 m!62804))

(assert (=> b!58267 d!50516))

(declare-fun d!50518 () Bool)

(declare-fun c!12472 () Bool)

(assert (=> d!50518 (= c!12472 (is-ListMonoid!3 thiss!8632))))

(declare-fun e!31002 () List!472)

(assert (=> d!50518 (= (append!10 thiss!8632 x!26087 (empty!15 thiss!8632)) e!31002)))

(declare-fun b!58274 () Bool)

(declare-fun append!11 (Monoid!11 List!472 List!472) List!472)

(assert (=> b!58274 (= e!31002 (append!11 thiss!8632 x!26087 (empty!15 thiss!8632)))))

(declare-fun b!58275 () Bool)

(declare-fun append!161 (Monoid!11 List!472 List!472) List!472)

(assert (=> b!58275 (= e!31002 (append!161 thiss!8632 x!26087 (empty!15 thiss!8632)))))

(assert (= (and d!50518 c!12472) b!58274))

(assert (= (and d!50518 (not c!12472)) b!58275))

(assert (=> b!58274 m!62802))

(declare-fun m!62806 () Bool)

(assert (=> b!58274 m!62806))

(assert (=> b!58275 m!62802))

(declare-fun m!62808 () Bool)

(assert (=> b!58275 m!62808))

(assert (=> b!58269 d!50518))

(declare-fun d!50520 () Bool)

(declare-fun c!12475 () Bool)

(assert (=> d!50520 (= c!12475 (is-ListMonoid!3 thiss!8632))))

(declare-fun e!31005 () List!472)

(assert (=> d!50520 (= (empty!15 thiss!8632) e!31005)))

(declare-fun b!58280 () Bool)

(declare-fun empty!16 (Monoid!11) List!472)

(assert (=> b!58280 (= e!31005 (empty!16 thiss!8632))))

(declare-fun b!58281 () Bool)

(declare-fun empty!118 (Monoid!11) List!472)

(assert (=> b!58281 (= e!31005 (empty!118 thiss!8632))))

(assert (= (and d!50520 c!12475) b!58280))

(assert (= (and d!50520 (not c!12475)) b!58281))

(declare-fun m!62810 () Bool)

(assert (=> b!58280 m!62810))

(declare-fun m!62812 () Bool)

(assert (=> b!58281 m!62812))

(assert (=> b!58269 d!50520))

(push 1)

(assert (not d!50516))

(assert (not b!58281))

(assert (not b!58280))

(assert (not b!58275))

(assert (not b!58274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

