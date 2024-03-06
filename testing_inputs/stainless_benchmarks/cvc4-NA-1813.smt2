; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12278 () Bool)

(assert start!12278)

(declare-fun res!47967 () Bool)

(declare-fun e!49941 () Bool)

(assert (=> start!12278 (=> (not res!47967) (not e!49941))))

(declare-datatypes () ((Monoid!47 (MonoidExt!41 (__x!301 Int)) (WrongProductMonoid!4) (WrongAdditiveMonoid!4))))

(declare-fun thiss!10602 () Monoid!47)

(assert (=> start!12278 (= res!47967 (is-MonoidExt!41 thiss!10602))))

(assert (=> start!12278 e!49941))

(assert (=> start!12278 true))

(declare-fun b!91267 () Bool)

(declare-fun res!47966 () Bool)

(assert (=> b!91267 (=> (not res!47966) (not e!49941))))

(declare-fun x!33148 () Int)

(declare-fun res!47936 () Bool)

(declare-fun law_leftIdentity!18 (Monoid!47 Int) Bool)

(assert (=> b!91267 (= res!47966 (= res!47936 (law_leftIdentity!18 thiss!10602 x!33148)))))

(declare-fun b!91268 () Bool)

(declare-fun e!49940 () Bool)

(assert (=> b!91268 (= e!49941 e!49940)))

(declare-fun res!47965 () Bool)

(assert (=> b!91268 (=> res!47965 e!49940)))

(assert (=> b!91268 (= res!47965 (not res!47936))))

(declare-fun b!91269 () Bool)

(declare-fun append!28 (Monoid!47 Int Int) Int)

(declare-fun empty!37 (Monoid!47) Int)

(assert (=> b!91269 (= e!49940 (not (= (append!28 thiss!10602 (empty!37 thiss!10602) x!33148) x!33148)))))

(assert (= (and start!12278 res!47967) b!91267))

(assert (= (and b!91267 res!47966) b!91268))

(assert (= (and b!91268 (not res!47965)) b!91269))

(declare-fun m!87104 () Bool)

(assert (=> b!91267 m!87104))

(declare-fun m!87106 () Bool)

(assert (=> b!91269 m!87106))

(assert (=> b!91269 m!87106))

(declare-fun m!87108 () Bool)

(assert (=> b!91269 m!87108))

(push 1)

(assert (not b!91267))

(assert (not b!91269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60056 () Bool)

(declare-fun e!49944 () Bool)

(assert (=> d!60056 e!49944))

(declare-fun res!47973 () Bool)

(assert (=> d!60056 (=> (not res!47973) (not e!49944))))

(declare-fun res!47972 () Bool)

(assert (=> d!60056 (= res!47973 res!47972)))

(assert (=> d!60056 true))

(assert (=> d!60056 (= (law_leftIdentity!18 thiss!10602 x!33148) res!47972)))

(declare-fun b!91272 () Bool)

(assert (=> b!91272 (= e!49944 (= (append!28 thiss!10602 (empty!37 thiss!10602) x!33148) x!33148))))

(assert (= (and d!60056 res!47973) b!91272))

(assert (=> b!91272 m!87106))

(assert (=> b!91272 m!87106))

(assert (=> b!91272 m!87108))

(assert (=> b!91267 d!60056))

(declare-fun b!91281 () Bool)

(declare-fun e!49949 () Int)

(declare-fun append!170 (Monoid!47 Int Int) Int)

(assert (=> b!91281 (= e!49949 (append!170 thiss!10602 (empty!37 thiss!10602) x!33148))))

(declare-fun b!91282 () Bool)

(declare-fun e!49950 () Int)

(assert (=> b!91282 (= e!49949 e!49950)))

(declare-fun c!22212 () Bool)

(assert (=> b!91282 (= c!22212 (is-WrongProductMonoid!4 thiss!10602))))

(declare-fun b!91283 () Bool)

(declare-fun append!29 (Monoid!47 Int Int) Int)

(assert (=> b!91283 (= e!49950 (append!29 thiss!10602 (empty!37 thiss!10602) x!33148))))

(declare-fun d!60058 () Bool)

(declare-fun c!22211 () Bool)

(assert (=> d!60058 (= c!22211 (is-MonoidExt!41 thiss!10602))))

(assert (=> d!60058 (= (append!28 thiss!10602 (empty!37 thiss!10602) x!33148) e!49949)))

(declare-fun b!91284 () Bool)

(declare-fun append!30 (Monoid!47 Int Int) Int)

(assert (=> b!91284 (= e!49950 (append!30 thiss!10602 (empty!37 thiss!10602) x!33148))))

(assert (= (and b!91282 c!22212) b!91283))

(assert (= (and b!91282 (not c!22212)) b!91284))

(assert (= (and d!60058 c!22211) b!91281))

(assert (= (and d!60058 (not c!22211)) b!91282))

(assert (=> b!91281 m!87106))

(declare-fun m!87110 () Bool)

(assert (=> b!91281 m!87110))

(assert (=> b!91283 m!87106))

(declare-fun m!87112 () Bool)

(assert (=> b!91283 m!87112))

(assert (=> b!91284 m!87106))

(declare-fun m!87114 () Bool)

(assert (=> b!91284 m!87114))

(assert (=> b!91269 d!60058))

(declare-fun b!91293 () Bool)

(declare-fun e!49955 () Int)

(declare-fun empty!165 (Monoid!47) Int)

(assert (=> b!91293 (= e!49955 (empty!165 thiss!10602))))

(declare-fun d!60060 () Bool)

(declare-fun c!22217 () Bool)

(assert (=> d!60060 (= c!22217 (is-MonoidExt!41 thiss!10602))))

(assert (=> d!60060 (= (empty!37 thiss!10602) e!49955)))

(declare-fun b!91296 () Bool)

(declare-fun e!49956 () Int)

(declare-fun empty!39 (Monoid!47) Int)

(assert (=> b!91296 (= e!49956 (empty!39 thiss!10602))))

(declare-fun b!91294 () Bool)

(assert (=> b!91294 (= e!49955 e!49956)))

(declare-fun c!22218 () Bool)

(assert (=> b!91294 (= c!22218 (is-WrongProductMonoid!4 thiss!10602))))

(declare-fun b!91295 () Bool)

(declare-fun empty!38 (Monoid!47) Int)

(assert (=> b!91295 (= e!49956 (empty!38 thiss!10602))))

(assert (= (and b!91294 c!22218) b!91295))

(assert (= (and b!91294 (not c!22218)) b!91296))

(assert (= (and d!60060 c!22217) b!91293))

(assert (= (and d!60060 (not c!22217)) b!91294))

(declare-fun m!87116 () Bool)

(assert (=> b!91293 m!87116))

(declare-fun m!87118 () Bool)

(assert (=> b!91296 m!87118))

(declare-fun m!87120 () Bool)

(assert (=> b!91295 m!87120))

(assert (=> b!91269 d!60060))

(push 1)

(assert (not b!91296))

(assert (not b!91281))

(assert (not b!91295))

(assert (not b!91293))

(assert (not b!91283))

(assert (not b!91284))

(assert (not b!91272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

