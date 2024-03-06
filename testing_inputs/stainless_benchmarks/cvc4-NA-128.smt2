; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!724 () Bool)

(assert start!724)

(declare-fun res!1393 () Bool)

(declare-fun e!2787 () Bool)

(assert (=> start!724 (=> (not res!1393) (not e!2787))))

(declare-datatypes () ((KeyValuePairAbs!6 (KeyValuePair!5 (key!122 (_ BitVec 32)) (value!1076 (_ BitVec 32))))))

(declare-fun e!2691 () KeyValuePairAbs!6)

(declare-datatypes () ((List!90 (Nil!90) (Cons!89 (head!269 KeyValuePairAbs!6) (tail!281 List!90)))))

(declare-fun l!414 () List!90)

(declare-fun res!1359 () List!90)

(assert (=> start!724 (= res!1393 (and (not (is-Nil!90 l!414)) (= (key!122 e!2691) (key!122 (head!269 l!414))) (= res!1359 (Cons!89 e!2691 (tail!281 l!414)))))))

(assert (=> start!724 e!2787))

(assert (=> start!724 true))

(declare-fun b!4673 () Bool)

(declare-fun domain!0 (List!90) (Set (_ BitVec 32)))

(assert (=> b!4673 (= e!2787 (not (= (domain!0 res!1359) (union (domain!0 l!414) (insert (key!122 e!2691) (as emptyset (Set (_ BitVec 32))))))))))

(assert (=> b!4673 (is-Cons!89 res!1359)))

(assert (= (and start!724 res!1393) b!4673))

(declare-fun m!7211 () Bool)

(assert (=> b!4673 m!7211))

(declare-fun m!7213 () Bool)

(assert (=> b!4673 m!7213))

(declare-fun m!7215 () Bool)

(assert (=> b!4673 m!7215))

(push 1)

(assert (not b!4673))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3347 () Bool)

(declare-fun c!1726 () Bool)

(assert (=> d!3347 (= c!1726 (is-Nil!90 res!1359))))

(declare-fun e!2790 () (Set (_ BitVec 32)))

(assert (=> d!3347 (= (domain!0 res!1359) e!2790)))

(declare-fun b!4678 () Bool)

(assert (=> b!4678 (= e!2790 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4679 () Bool)

(assert (=> b!4679 (= e!2790 (union (insert (key!122 (head!269 res!1359)) (as emptyset (Set (_ BitVec 32)))) (domain!0 (tail!281 res!1359))))))

(assert (= (and d!3347 c!1726) b!4678))

(assert (= (and d!3347 (not c!1726)) b!4679))

(declare-fun m!7217 () Bool)

(assert (=> b!4679 m!7217))

(declare-fun m!7219 () Bool)

(assert (=> b!4679 m!7219))

(assert (=> b!4673 d!3347))

(declare-fun d!3349 () Bool)

(declare-fun c!1727 () Bool)

(assert (=> d!3349 (= c!1727 (is-Nil!90 l!414))))

(declare-fun e!2791 () (Set (_ BitVec 32)))

(assert (=> d!3349 (= (domain!0 l!414) e!2791)))

(declare-fun b!4680 () Bool)

(assert (=> b!4680 (= e!2791 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4681 () Bool)

(assert (=> b!4681 (= e!2791 (union (insert (key!122 (head!269 l!414)) (as emptyset (Set (_ BitVec 32)))) (domain!0 (tail!281 l!414))))))

(assert (= (and d!3349 c!1727) b!4680))

(assert (= (and d!3349 (not c!1727)) b!4681))

(declare-fun m!7221 () Bool)

(assert (=> b!4681 m!7221))

(declare-fun m!7223 () Bool)

(assert (=> b!4681 m!7223))

(assert (=> b!4673 d!3349))

(push 1)

(assert (not b!4681))

(assert (not b!4679))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

