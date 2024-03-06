; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12286 () Bool)

(assert start!12286)

(declare-fun res!47982 () Bool)

(declare-fun e!49962 () Bool)

(assert (=> start!12286 (=> (not res!47982) (not e!49962))))

(declare-datatypes () ((Monoid!48 (MonoidExt!42 (__x!302 Int)) (WrongProductMonoid!5) (WrongAdditiveMonoid!5))))

(declare-fun thiss!10602 () Monoid!48)

(assert (=> start!12286 (= res!47982 (and (not (is-MonoidExt!42 thiss!10602)) (is-WrongProductMonoid!5 thiss!10602)))))

(assert (=> start!12286 e!49962))

(assert (=> start!12286 true))

(declare-fun b!91303 () Bool)

(declare-fun res!47980 () Bool)

(assert (=> b!91303 (=> (not res!47980) (not e!49962))))

(declare-fun x!33148 () Int)

(declare-fun res!47938 () Bool)

(declare-fun law_leftIdentity!16 (Monoid!48 Int) Bool)

(assert (=> b!91303 (= res!47980 (= res!47938 (law_leftIdentity!16 thiss!10602 x!33148)))))

(declare-fun b!91304 () Bool)

(declare-fun e!49961 () Bool)

(assert (=> b!91304 (= e!49962 e!49961)))

(declare-fun res!47981 () Bool)

(assert (=> b!91304 (=> res!47981 e!49961)))

(assert (=> b!91304 (= res!47981 (not res!47938))))

(declare-fun b!91305 () Bool)

(declare-fun append!28 (Monoid!48 Int Int) Int)

(declare-fun empty!37 (Monoid!48) Int)

(assert (=> b!91305 (= e!49961 (not (= (append!28 thiss!10602 (empty!37 thiss!10602) x!33148) x!33148)))))

(assert (= (and start!12286 res!47982) b!91303))

(assert (= (and b!91303 res!47980) b!91304))

(assert (= (and b!91304 (not res!47981)) b!91305))

(declare-fun m!87122 () Bool)

(assert (=> b!91303 m!87122))

(declare-fun m!87124 () Bool)

(assert (=> b!91305 m!87124))

(assert (=> b!91305 m!87124))

(declare-fun m!87126 () Bool)

(assert (=> b!91305 m!87126))

(push 1)

(assert (not b!91303))

(assert (not b!91305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60062 () Bool)

(assert (=> d!60062 (= (append!28 thiss!10602 (empty!37 thiss!10602) x!33148) x!33148)))

(assert (=> d!60062 (= (law_leftIdentity!16 thiss!10602 x!33148) true)))

(declare-fun bs!41889 () Bool)

(assert (= bs!41889 d!60062))

(assert (=> bs!41889 m!87124))

(assert (=> bs!41889 m!87124))

(assert (=> bs!41889 m!87126))

(assert (=> b!91303 d!60062))

(declare-fun b!91317 () Bool)

(declare-fun e!49968 () Int)

(declare-fun append!30 (Monoid!48 Int Int) Int)

(assert (=> b!91317 (= e!49968 (append!30 thiss!10602 (empty!37 thiss!10602) x!33148))))

(declare-fun b!91314 () Bool)

(declare-fun e!49967 () Int)

(declare-fun append!170 (Monoid!48 Int Int) Int)

(assert (=> b!91314 (= e!49967 (append!170 thiss!10602 (empty!37 thiss!10602) x!33148))))

(declare-fun b!91315 () Bool)

(assert (=> b!91315 (= e!49967 e!49968)))

(declare-fun c!22224 () Bool)

(assert (=> b!91315 (= c!22224 (is-WrongProductMonoid!5 thiss!10602))))

(declare-fun d!60064 () Bool)

(declare-fun c!22223 () Bool)

(assert (=> d!60064 (= c!22223 (is-MonoidExt!42 thiss!10602))))

(assert (=> d!60064 (= (append!28 thiss!10602 (empty!37 thiss!10602) x!33148) e!49967)))

(declare-fun b!91316 () Bool)

(declare-fun append!29 (Monoid!48 Int Int) Int)

(assert (=> b!91316 (= e!49968 (append!29 thiss!10602 (empty!37 thiss!10602) x!33148))))

(assert (= (and b!91315 c!22224) b!91316))

(assert (= (and b!91315 (not c!22224)) b!91317))

(assert (= (and d!60064 c!22223) b!91314))

(assert (= (and d!60064 (not c!22223)) b!91315))

(assert (=> b!91317 m!87124))

(declare-fun m!87128 () Bool)

(assert (=> b!91317 m!87128))

(assert (=> b!91314 m!87124))

(declare-fun m!87130 () Bool)

(assert (=> b!91314 m!87130))

(assert (=> b!91316 m!87124))

(declare-fun m!87132 () Bool)

(assert (=> b!91316 m!87132))

(assert (=> b!91305 d!60064))

(declare-fun d!60066 () Bool)

(declare-fun c!22229 () Bool)

(assert (=> d!60066 (= c!22229 (is-MonoidExt!42 thiss!10602))))

(declare-fun e!49973 () Int)

(assert (=> d!60066 (= (empty!37 thiss!10602) e!49973)))

(declare-fun b!91328 () Bool)

(declare-fun e!49974 () Int)

(declare-fun empty!38 (Monoid!48) Int)

(assert (=> b!91328 (= e!49974 (empty!38 thiss!10602))))

(declare-fun b!91329 () Bool)

(declare-fun empty!39 (Monoid!48) Int)

(assert (=> b!91329 (= e!49974 (empty!39 thiss!10602))))

(declare-fun b!91327 () Bool)

(assert (=> b!91327 (= e!49973 e!49974)))

(declare-fun c!22230 () Bool)

(assert (=> b!91327 (= c!22230 (is-WrongProductMonoid!5 thiss!10602))))

(declare-fun b!91326 () Bool)

(declare-fun empty!165 (Monoid!48) Int)

(assert (=> b!91326 (= e!49973 (empty!165 thiss!10602))))

(assert (= (and b!91327 c!22230) b!91328))

(assert (= (and b!91327 (not c!22230)) b!91329))

(assert (= (and d!60066 c!22229) b!91326))

(assert (= (and d!60066 (not c!22229)) b!91327))

(declare-fun m!87134 () Bool)

(assert (=> b!91328 m!87134))

(declare-fun m!87136 () Bool)

(assert (=> b!91329 m!87136))

(declare-fun m!87138 () Bool)

(assert (=> b!91326 m!87138))

(assert (=> b!91305 d!60066))

(push 1)

(assert (not d!60062))

(assert (not b!91317))

(assert (not b!91316))

(assert (not b!91314))

(assert (not b!91328))

(assert (not b!91329))

(assert (not b!91326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

