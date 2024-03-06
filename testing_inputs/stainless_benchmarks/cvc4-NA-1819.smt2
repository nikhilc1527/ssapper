; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12326 () Bool)

(assert start!12326)

(declare-fun res!48033 () Bool)

(declare-fun e!50052 () Bool)

(assert (=> start!12326 (=> (not res!48033) (not e!50052))))

(declare-datatypes () ((Monoid!53 (MonoidExt!47 (__x!307 Int)) (WrongProductMonoid!10) (WrongAdditiveMonoid!10))))

(declare-fun thiss!10702 () Monoid!53)

(declare-fun res!47951 () Bool)

(declare-fun x!33227 () Int)

(declare-fun thiss!10703 () Monoid!53)

(declare-fun x!33228 () Int)

(assert (=> start!12326 (= res!48033 (and (is-WrongAdditiveMonoid!10 thiss!10702) (= res!47951 true) (= thiss!10703 thiss!10702) (= x!33228 x!33227)))))

(assert (=> start!12326 e!50052))

(assert (=> start!12326 true))

(declare-fun b!91469 () Bool)

(declare-fun res!48034 () Bool)

(assert (=> b!91469 (=> (not res!48034) (not e!50052))))

(declare-fun inlined!7074 () Bool)

(declare-fun append!28 (Monoid!53 Int Int) Int)

(declare-fun empty!37 (Monoid!53) Int)

(assert (=> b!91469 (= res!48034 (= inlined!7074 (= (append!28 thiss!10703 x!33228 (empty!37 thiss!10703)) x!33228)))))

(declare-fun b!91470 () Bool)

(assert (=> b!91470 (= e!50052 (not inlined!7074))))

(assert (= (and start!12326 res!48033) b!91469))

(assert (= (and b!91469 res!48034) b!91470))

(declare-fun m!87212 () Bool)

(assert (=> b!91469 m!87212))

(assert (=> b!91469 m!87212))

(declare-fun m!87214 () Bool)

(assert (=> b!91469 m!87214))

(push 1)

(assert (not b!91469))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!91481 () Bool)

(declare-fun e!50058 () Int)

(declare-fun append!29 (Monoid!53 Int Int) Int)

(assert (=> b!91481 (= e!50058 (append!29 thiss!10703 x!33228 (empty!37 thiss!10703)))))

(declare-fun b!91482 () Bool)

(declare-fun append!30 (Monoid!53 Int Int) Int)

(assert (=> b!91482 (= e!50058 (append!30 thiss!10703 x!33228 (empty!37 thiss!10703)))))

(declare-fun b!91479 () Bool)

(declare-fun e!50057 () Int)

(declare-fun append!170 (Monoid!53 Int Int) Int)

(assert (=> b!91479 (= e!50057 (append!170 thiss!10703 x!33228 (empty!37 thiss!10703)))))

(declare-fun d!60092 () Bool)

(declare-fun c!22283 () Bool)

(assert (=> d!60092 (= c!22283 (is-MonoidExt!47 thiss!10703))))

(assert (=> d!60092 (= (append!28 thiss!10703 x!33228 (empty!37 thiss!10703)) e!50057)))

(declare-fun b!91480 () Bool)

(assert (=> b!91480 (= e!50057 e!50058)))

(declare-fun c!22284 () Bool)

(assert (=> b!91480 (= c!22284 (is-WrongProductMonoid!10 thiss!10703))))

(assert (= (and b!91480 c!22284) b!91481))

(assert (= (and b!91480 (not c!22284)) b!91482))

(assert (= (and d!60092 c!22283) b!91479))

(assert (= (and d!60092 (not c!22283)) b!91480))

(assert (=> b!91481 m!87212))

(declare-fun m!87216 () Bool)

(assert (=> b!91481 m!87216))

(assert (=> b!91482 m!87212))

(declare-fun m!87218 () Bool)

(assert (=> b!91482 m!87218))

(assert (=> b!91479 m!87212))

(declare-fun m!87220 () Bool)

(assert (=> b!91479 m!87220))

(assert (=> b!91469 d!60092))

(declare-fun d!60094 () Bool)

(declare-fun c!22289 () Bool)

(assert (=> d!60094 (= c!22289 (is-MonoidExt!47 thiss!10703))))

(declare-fun e!50063 () Int)

(assert (=> d!60094 (= (empty!37 thiss!10703) e!50063)))

(declare-fun b!91491 () Bool)

(declare-fun empty!165 (Monoid!53) Int)

(assert (=> b!91491 (= e!50063 (empty!165 thiss!10703))))

(declare-fun b!91494 () Bool)

(declare-fun e!50064 () Int)

(declare-fun empty!39 (Monoid!53) Int)

(assert (=> b!91494 (= e!50064 (empty!39 thiss!10703))))

(declare-fun b!91493 () Bool)

(declare-fun empty!38 (Monoid!53) Int)

(assert (=> b!91493 (= e!50064 (empty!38 thiss!10703))))

(declare-fun b!91492 () Bool)

(assert (=> b!91492 (= e!50063 e!50064)))

(declare-fun c!22290 () Bool)

(assert (=> b!91492 (= c!22290 (is-WrongProductMonoid!10 thiss!10703))))

(assert (= (and b!91492 c!22290) b!91493))

(assert (= (and b!91492 (not c!22290)) b!91494))

(assert (= (and d!60094 c!22289) b!91491))

(assert (= (and d!60094 (not c!22289)) b!91492))

(declare-fun m!87222 () Bool)

(assert (=> b!91491 m!87222))

(declare-fun m!87224 () Bool)

(assert (=> b!91494 m!87224))

(declare-fun m!87226 () Bool)

(assert (=> b!91493 m!87226))

(assert (=> b!91469 d!60094))

(push 1)

(assert (not b!91494))

(assert (not b!91479))

(assert (not b!91491))

(assert (not b!91493))

(assert (not b!91481))

(assert (not b!91482))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60096 () Bool)

(assert (=> d!60096 true))

(assert (=> d!60096 true))

(declare-fun res!48037 () Int)

(assert (=> d!60096 (= (append!170 thiss!10703 x!33228 (empty!37 thiss!10703)) res!48037)))

(assert (=> b!91479 d!60096))

(declare-fun d!60098 () Bool)

(assert (=> d!60098 (= (append!29 thiss!10703 x!33228 (empty!37 thiss!10703)) (+ x!33228 (empty!37 thiss!10703)))))

(assert (=> b!91481 d!60098))

(declare-fun d!60100 () Bool)

(assert (=> d!60100 (= (empty!38 thiss!10703) 1)))

(assert (=> b!91493 d!60100))

(declare-fun d!60102 () Bool)

(assert (=> d!60102 (= (append!30 thiss!10703 x!33228 (empty!37 thiss!10703)) (- x!33228 (empty!37 thiss!10703)))))

(assert (=> b!91482 d!60102))

(declare-fun d!60104 () Bool)

(assert (=> d!60104 (= (empty!39 thiss!10703) 0)))

(assert (=> b!91494 d!60104))

(declare-fun d!60106 () Bool)

(assert (=> d!60106 true))

(assert (=> d!60106 true))

(declare-fun res!48040 () Int)

(assert (=> d!60106 (= (empty!165 thiss!10703) res!48040)))

(assert (=> b!91491 d!60106))

(push 1)

(check-sat)

(pop 1)

