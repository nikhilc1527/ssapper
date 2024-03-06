; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!728 () Bool)

(assert start!728)

(declare-fun res!1398 () Bool)

(declare-fun e!2794 () Bool)

(assert (=> start!728 (=> (not res!1398) (not e!2794))))

(declare-datatypes () ((KeyValuePairAbs!7 (KeyValuePair!6 (key!123 (_ BitVec 32)) (value!1077 (_ BitVec 32))))))

(declare-datatypes () ((List!91 (Nil!91) (Cons!90 (head!270 KeyValuePairAbs!7) (tail!282 List!91)))))

(declare-fun l!414 () List!91)

(declare-fun e!2691 () KeyValuePairAbs!7)

(assert (=> start!728 (= res!1398 (and (not (is-Nil!91 l!414)) (not (= (key!123 e!2691) (key!123 (head!270 l!414))))))))

(assert (=> start!728 e!2794))

(assert (=> start!728 true))

(declare-fun b!4686 () Bool)

(declare-fun res!1399 () Bool)

(assert (=> b!4686 (=> (not res!1399) (not e!2794))))

(declare-fun res!1360 () List!91)

(declare-fun updateElem!0 (List!91 KeyValuePairAbs!7) List!91)

(assert (=> b!4686 (= res!1399 (= res!1360 (Cons!90 (head!270 l!414) (updateElem!0 (tail!282 l!414) e!2691))))))

(declare-fun b!4687 () Bool)

(declare-fun domain!0 (List!91) (Set (_ BitVec 32)))

(assert (=> b!4687 (= e!2794 (not (= (domain!0 res!1360) (union (domain!0 l!414) (insert (key!123 e!2691) (as emptyset (Set (_ BitVec 32))))))))))

(assert (=> b!4687 (is-Cons!90 res!1360)))

(assert (= (and start!728 res!1398) b!4686))

(assert (= (and b!4686 res!1399) b!4687))

(declare-fun m!7225 () Bool)

(assert (=> b!4686 m!7225))

(declare-fun m!7227 () Bool)

(assert (=> b!4687 m!7227))

(declare-fun m!7229 () Bool)

(assert (=> b!4687 m!7229))

(declare-fun m!7231 () Bool)

(assert (=> b!4687 m!7231))

(push 1)

(assert (not b!4687))

(assert (not b!4686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3351 () Bool)

(declare-fun c!1730 () Bool)

(assert (=> d!3351 (= c!1730 (is-Nil!91 res!1360))))

(declare-fun e!2797 () (Set (_ BitVec 32)))

(assert (=> d!3351 (= (domain!0 res!1360) e!2797)))

(declare-fun b!4692 () Bool)

(assert (=> b!4692 (= e!2797 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4693 () Bool)

(assert (=> b!4693 (= e!2797 (union (insert (key!123 (head!270 res!1360)) (as emptyset (Set (_ BitVec 32)))) (domain!0 (tail!282 res!1360))))))

(assert (= (and d!3351 c!1730) b!4692))

(assert (= (and d!3351 (not c!1730)) b!4693))

(declare-fun m!7233 () Bool)

(assert (=> b!4693 m!7233))

(declare-fun m!7235 () Bool)

(assert (=> b!4693 m!7235))

(assert (=> b!4687 d!3351))

(declare-fun d!3353 () Bool)

(declare-fun c!1731 () Bool)

(assert (=> d!3353 (= c!1731 (is-Nil!91 l!414))))

(declare-fun e!2798 () (Set (_ BitVec 32)))

(assert (=> d!3353 (= (domain!0 l!414) e!2798)))

(declare-fun b!4694 () Bool)

(assert (=> b!4694 (= e!2798 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4695 () Bool)

(assert (=> b!4695 (= e!2798 (union (insert (key!123 (head!270 l!414)) (as emptyset (Set (_ BitVec 32)))) (domain!0 (tail!282 l!414))))))

(assert (= (and d!3353 c!1731) b!4694))

(assert (= (and d!3353 (not c!1731)) b!4695))

(declare-fun m!7237 () Bool)

(assert (=> b!4695 m!7237))

(declare-fun m!7239 () Bool)

(assert (=> b!4695 m!7239))

(assert (=> b!4687 d!3353))

(declare-fun b!4706 () Bool)

(declare-fun e!2807 () List!91)

(declare-fun e!2808 () List!91)

(assert (=> b!4706 (= e!2807 e!2808)))

(declare-fun c!1737 () Bool)

(assert (=> b!4706 (= c!1737 (= (key!123 e!2691) (key!123 (head!270 (tail!282 l!414)))))))

(declare-fun b!4707 () Bool)

(declare-fun lt!1225 () List!91)

(declare-fun e!2806 () Bool)

(assert (=> b!4707 (= e!2806 (= (domain!0 lt!1225) (union (domain!0 (tail!282 l!414)) (insert (key!123 e!2691) (as emptyset (Set (_ BitVec 32)))))))))

(declare-fun d!3355 () Bool)

(assert (=> d!3355 e!2806))

(declare-fun res!1403 () Bool)

(assert (=> d!3355 (=> (not res!1403) (not e!2806))))

(assert (=> d!3355 (= res!1403 (is-Cons!90 lt!1225))))

(assert (=> d!3355 (= lt!1225 e!2807)))

(declare-fun c!1736 () Bool)

(assert (=> d!3355 (= c!1736 (is-Nil!91 (tail!282 l!414)))))

(assert (=> d!3355 (= (updateElem!0 (tail!282 l!414) e!2691) lt!1225)))

(declare-fun b!4708 () Bool)

(assert (=> b!4708 (= e!2808 (Cons!90 (head!270 (tail!282 l!414)) (updateElem!0 (tail!282 (tail!282 l!414)) e!2691)))))

(declare-fun b!4709 () Bool)

(assert (=> b!4709 (= e!2807 (Cons!90 e!2691 Nil!91))))

(declare-fun b!4710 () Bool)

(assert (=> b!4710 (= e!2808 (Cons!90 e!2691 (tail!282 (tail!282 l!414))))))

(assert (= (and b!4706 c!1737) b!4710))

(assert (= (and b!4706 (not c!1737)) b!4708))

(assert (= (and d!3355 c!1736) b!4709))

(assert (= (and d!3355 (not c!1736)) b!4706))

(assert (= (and d!3355 res!1403) b!4707))

(declare-fun m!7241 () Bool)

(assert (=> b!4707 m!7241))

(assert (=> b!4707 m!7239))

(assert (=> b!4707 m!7231))

(declare-fun m!7243 () Bool)

(assert (=> b!4708 m!7243))

(assert (=> b!4686 d!3355))

(push 1)

(assert (not b!4708))

(assert (not b!4707))

(assert (not b!4695))

(assert (not b!4693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

