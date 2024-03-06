; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12294 () Bool)

(assert start!12294)

(declare-fun res!47991 () Bool)

(declare-fun e!49979 () Bool)

(assert (=> start!12294 (=> (not res!47991) (not e!49979))))

(declare-datatypes () ((Monoid!49 (MonoidExt!43 (__x!303 Int)) (WrongProductMonoid!6) (WrongAdditiveMonoid!6))))

(declare-fun thiss!10602 () Monoid!49)

(assert (=> start!12294 (= res!47991 (and (not (is-MonoidExt!43 thiss!10602)) (not (is-WrongProductMonoid!6 thiss!10602))))))

(assert (=> start!12294 e!49979))

(assert (=> start!12294 true))

(declare-fun b!91336 () Bool)

(declare-fun res!47992 () Bool)

(assert (=> b!91336 (=> (not res!47992) (not e!49979))))

(declare-fun x!33148 () Int)

(declare-fun res!47940 () Bool)

(declare-fun law_leftIdentity!17 (Monoid!49 Int) Bool)

(assert (=> b!91336 (= res!47992 (= res!47940 (law_leftIdentity!17 thiss!10602 x!33148)))))

(declare-fun b!91337 () Bool)

(declare-fun e!49980 () Bool)

(assert (=> b!91337 (= e!49979 e!49980)))

(declare-fun res!47990 () Bool)

(assert (=> b!91337 (=> res!47990 e!49980)))

(assert (=> b!91337 (= res!47990 (not res!47940))))

(declare-fun b!91338 () Bool)

(declare-fun append!28 (Monoid!49 Int Int) Int)

(declare-fun empty!37 (Monoid!49) Int)

(assert (=> b!91338 (= e!49980 (not (= (append!28 thiss!10602 (empty!37 thiss!10602) x!33148) x!33148)))))

(assert (= (and start!12294 res!47991) b!91336))

(assert (= (and b!91336 res!47992) b!91337))

(assert (= (and b!91337 (not res!47990)) b!91338))

(declare-fun m!87140 () Bool)

(assert (=> b!91336 m!87140))

(declare-fun m!87142 () Bool)

(assert (=> b!91338 m!87142))

(assert (=> b!91338 m!87142))

(declare-fun m!87144 () Bool)

(assert (=> b!91338 m!87144))

(push 1)

(assert (not b!91336))

(assert (not b!91338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60068 () Bool)

(assert (=> d!60068 (= (append!28 thiss!10602 (empty!37 thiss!10602) x!33148) x!33148)))

(assert (=> d!60068 (= (law_leftIdentity!17 thiss!10602 x!33148) true)))

(declare-fun bs!41891 () Bool)

(assert (= bs!41891 d!60068))

(assert (=> bs!41891 m!87142))

(assert (=> bs!41891 m!87142))

(assert (=> bs!41891 m!87144))

(assert (=> b!91336 d!60068))

(declare-fun b!91349 () Bool)

(declare-fun e!49986 () Int)

(declare-fun append!29 (Monoid!49 Int Int) Int)

(assert (=> b!91349 (= e!49986 (append!29 thiss!10602 (empty!37 thiss!10602) x!33148))))

(declare-fun d!60070 () Bool)

(declare-fun c!22235 () Bool)

(assert (=> d!60070 (= c!22235 (is-MonoidExt!43 thiss!10602))))

(declare-fun e!49985 () Int)

(assert (=> d!60070 (= (append!28 thiss!10602 (empty!37 thiss!10602) x!33148) e!49985)))

(declare-fun b!91350 () Bool)

(declare-fun append!30 (Monoid!49 Int Int) Int)

(assert (=> b!91350 (= e!49986 (append!30 thiss!10602 (empty!37 thiss!10602) x!33148))))

(declare-fun b!91348 () Bool)

(assert (=> b!91348 (= e!49985 e!49986)))

(declare-fun c!22236 () Bool)

(assert (=> b!91348 (= c!22236 (is-WrongProductMonoid!6 thiss!10602))))

(declare-fun b!91347 () Bool)

(declare-fun append!170 (Monoid!49 Int Int) Int)

(assert (=> b!91347 (= e!49985 (append!170 thiss!10602 (empty!37 thiss!10602) x!33148))))

(assert (= (and b!91348 c!22236) b!91349))

(assert (= (and b!91348 (not c!22236)) b!91350))

(assert (= (and d!60070 c!22235) b!91347))

(assert (= (and d!60070 (not c!22235)) b!91348))

(assert (=> b!91349 m!87142))

(declare-fun m!87146 () Bool)

(assert (=> b!91349 m!87146))

(assert (=> b!91350 m!87142))

(declare-fun m!87148 () Bool)

(assert (=> b!91350 m!87148))

(assert (=> b!91347 m!87142))

(declare-fun m!87150 () Bool)

(assert (=> b!91347 m!87150))

(assert (=> b!91338 d!60070))

(declare-fun b!91361 () Bool)

(declare-fun e!49992 () Int)

(declare-fun empty!38 (Monoid!49) Int)

(assert (=> b!91361 (= e!49992 (empty!38 thiss!10602))))

(declare-fun b!91360 () Bool)

(declare-fun e!49991 () Int)

(assert (=> b!91360 (= e!49991 e!49992)))

(declare-fun c!22242 () Bool)

(assert (=> b!91360 (= c!22242 (is-WrongProductMonoid!6 thiss!10602))))

(declare-fun b!91359 () Bool)

(declare-fun empty!165 (Monoid!49) Int)

(assert (=> b!91359 (= e!49991 (empty!165 thiss!10602))))

(declare-fun d!60072 () Bool)

(declare-fun c!22241 () Bool)

(assert (=> d!60072 (= c!22241 (is-MonoidExt!43 thiss!10602))))

(assert (=> d!60072 (= (empty!37 thiss!10602) e!49991)))

(declare-fun b!91362 () Bool)

(declare-fun empty!39 (Monoid!49) Int)

(assert (=> b!91362 (= e!49992 (empty!39 thiss!10602))))

(assert (= (and b!91360 c!22242) b!91361))

(assert (= (and b!91360 (not c!22242)) b!91362))

(assert (= (and d!60072 c!22241) b!91359))

(assert (= (and d!60072 (not c!22241)) b!91360))

(declare-fun m!87152 () Bool)

(assert (=> b!91361 m!87152))

(declare-fun m!87154 () Bool)

(assert (=> b!91359 m!87154))

(declare-fun m!87156 () Bool)

(assert (=> b!91362 m!87156))

(assert (=> b!91338 d!60072))

(push 1)

(assert (not b!91349))

(assert (not d!60068))

(assert (not b!91347))

(assert (not b!91350))

(assert (not b!91361))

(assert (not b!91359))

(assert (not b!91362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

