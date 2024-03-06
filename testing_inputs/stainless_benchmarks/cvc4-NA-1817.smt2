; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12310 () Bool)

(assert start!12310)

(declare-fun res!48016 () Bool)

(declare-fun e!50019 () Bool)

(assert (=> start!12310 (=> (not res!48016) (not e!50019))))

(declare-datatypes () ((Monoid!51 (MonoidExt!45 (__x!305 Int)) (WrongProductMonoid!8) (WrongAdditiveMonoid!8))))

(declare-fun thiss!10725 () Monoid!51)

(assert (=> start!12310 (= res!48016 (and (not (is-MonoidExt!45 thiss!10725)) (is-WrongProductMonoid!8 thiss!10725)))))

(assert (=> start!12310 e!50019))

(assert (=> start!12310 true))

(declare-fun b!91405 () Bool)

(declare-fun res!48017 () Bool)

(assert (=> b!91405 (=> (not res!48017) (not e!50019))))

(declare-fun res!47955 () Bool)

(declare-fun x!33248 () Int)

(declare-fun law_rightIdentity!16 (Monoid!51 Int) Bool)

(assert (=> b!91405 (= res!48017 (= res!47955 (law_rightIdentity!16 thiss!10725 x!33248)))))

(declare-fun b!91406 () Bool)

(declare-fun e!50018 () Bool)

(assert (=> b!91406 (= e!50019 e!50018)))

(declare-fun res!48015 () Bool)

(assert (=> b!91406 (=> res!48015 e!50018)))

(assert (=> b!91406 (= res!48015 (not res!47955))))

(declare-fun b!91407 () Bool)

(declare-fun append!28 (Monoid!51 Int Int) Int)

(declare-fun empty!37 (Monoid!51) Int)

(assert (=> b!91407 (= e!50018 (not (= (append!28 thiss!10725 x!33248 (empty!37 thiss!10725)) x!33248)))))

(assert (= (and start!12310 res!48016) b!91405))

(assert (= (and b!91405 res!48017) b!91406))

(assert (= (and b!91406 (not res!48015)) b!91407))

(declare-fun m!87176 () Bool)

(assert (=> b!91405 m!87176))

(declare-fun m!87178 () Bool)

(assert (=> b!91407 m!87178))

(assert (=> b!91407 m!87178))

(declare-fun m!87180 () Bool)

(assert (=> b!91407 m!87180))

(push 1)

(assert (not b!91405))

(assert (not b!91407))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60080 () Bool)

(assert (=> d!60080 (= (append!28 thiss!10725 x!33248 (empty!37 thiss!10725)) x!33248)))

(assert (=> d!60080 (= (law_rightIdentity!16 thiss!10725 x!33248) true)))

(declare-fun bs!41894 () Bool)

(assert (= bs!41894 d!60080))

(assert (=> bs!41894 m!87178))

(assert (=> bs!41894 m!87178))

(assert (=> bs!41894 m!87180))

(assert (=> b!91405 d!60080))

(declare-fun b!91417 () Bool)

(declare-fun e!50024 () Int)

(declare-fun e!50025 () Int)

(assert (=> b!91417 (= e!50024 e!50025)))

(declare-fun c!22260 () Bool)

(assert (=> b!91417 (= c!22260 (is-WrongProductMonoid!8 thiss!10725))))

(declare-fun b!91419 () Bool)

(declare-fun append!30 (Monoid!51 Int Int) Int)

(assert (=> b!91419 (= e!50025 (append!30 thiss!10725 x!33248 (empty!37 thiss!10725)))))

(declare-fun d!60082 () Bool)

(declare-fun c!22259 () Bool)

(assert (=> d!60082 (= c!22259 (is-MonoidExt!45 thiss!10725))))

(assert (=> d!60082 (= (append!28 thiss!10725 x!33248 (empty!37 thiss!10725)) e!50024)))

(declare-fun b!91416 () Bool)

(declare-fun append!170 (Monoid!51 Int Int) Int)

(assert (=> b!91416 (= e!50024 (append!170 thiss!10725 x!33248 (empty!37 thiss!10725)))))

(declare-fun b!91418 () Bool)

(declare-fun append!29 (Monoid!51 Int Int) Int)

(assert (=> b!91418 (= e!50025 (append!29 thiss!10725 x!33248 (empty!37 thiss!10725)))))

(assert (= (and b!91417 c!22260) b!91418))

(assert (= (and b!91417 (not c!22260)) b!91419))

(assert (= (and d!60082 c!22259) b!91416))

(assert (= (and d!60082 (not c!22259)) b!91417))

(assert (=> b!91419 m!87178))

(declare-fun m!87182 () Bool)

(assert (=> b!91419 m!87182))

(assert (=> b!91416 m!87178))

(declare-fun m!87184 () Bool)

(assert (=> b!91416 m!87184))

(assert (=> b!91418 m!87178))

(declare-fun m!87186 () Bool)

(assert (=> b!91418 m!87186))

(assert (=> b!91407 d!60082))

(declare-fun b!91431 () Bool)

(declare-fun e!50031 () Int)

(declare-fun empty!39 (Monoid!51) Int)

(assert (=> b!91431 (= e!50031 (empty!39 thiss!10725))))

(declare-fun b!91428 () Bool)

(declare-fun e!50030 () Int)

(declare-fun empty!165 (Monoid!51) Int)

(assert (=> b!91428 (= e!50030 (empty!165 thiss!10725))))

(declare-fun d!60084 () Bool)

(declare-fun c!22265 () Bool)

(assert (=> d!60084 (= c!22265 (is-MonoidExt!45 thiss!10725))))

(assert (=> d!60084 (= (empty!37 thiss!10725) e!50030)))

(declare-fun b!91429 () Bool)

(assert (=> b!91429 (= e!50030 e!50031)))

(declare-fun c!22266 () Bool)

(assert (=> b!91429 (= c!22266 (is-WrongProductMonoid!8 thiss!10725))))

(declare-fun b!91430 () Bool)

(declare-fun empty!38 (Monoid!51) Int)

(assert (=> b!91430 (= e!50031 (empty!38 thiss!10725))))

(assert (= (and b!91429 c!22266) b!91430))

(assert (= (and b!91429 (not c!22266)) b!91431))

(assert (= (and d!60084 c!22265) b!91428))

(assert (= (and d!60084 (not c!22265)) b!91429))

(declare-fun m!87188 () Bool)

(assert (=> b!91431 m!87188))

(declare-fun m!87190 () Bool)

(assert (=> b!91428 m!87190))

(declare-fun m!87192 () Bool)

(assert (=> b!91430 m!87192))

(assert (=> b!91407 d!60084))

(push 1)

(assert (not b!91428))

(assert (not b!91416))

(assert (not b!91431))

(assert (not d!60080))

(assert (not b!91419))

(assert (not b!91430))

(assert (not b!91418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

