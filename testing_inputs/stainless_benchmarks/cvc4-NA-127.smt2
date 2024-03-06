; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!720 () Bool)

(assert start!720)

(declare-fun res!1390 () Bool)

(declare-fun e!2780 () Bool)

(assert (=> start!720 (=> (not res!1390) (not e!2780))))

(declare-datatypes () ((KeyValuePairAbs!5 (KeyValuePair!4 (key!121 (_ BitVec 32)) (value!1075 (_ BitVec 32))))))

(declare-fun e!2691 () KeyValuePairAbs!5)

(declare-datatypes () ((List!89 (Nil!89) (Cons!88 (head!268 KeyValuePairAbs!5) (tail!280 List!89)))))

(declare-fun l!414 () List!89)

(declare-fun res!1358 () List!89)

(assert (=> start!720 (= res!1390 (and (is-Nil!89 l!414) (= res!1358 (Cons!88 e!2691 Nil!89))))))

(assert (=> start!720 e!2780))

(assert (=> start!720 true))

(declare-fun b!4662 () Bool)

(declare-fun domain!0 (List!89) (Set (_ BitVec 32)))

(assert (=> b!4662 (= e!2780 (not (= (domain!0 res!1358) (union (domain!0 l!414) (insert (key!121 e!2691) (as emptyset (Set (_ BitVec 32))))))))))

(assert (=> b!4662 (is-Cons!88 res!1358)))

(assert (= (and start!720 res!1390) b!4662))

(declare-fun m!7197 () Bool)

(assert (=> b!4662 m!7197))

(declare-fun m!7199 () Bool)

(assert (=> b!4662 m!7199))

(declare-fun m!7201 () Bool)

(assert (=> b!4662 m!7201))

(push 1)

(assert (not b!4662))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3343 () Bool)

(declare-fun c!1722 () Bool)

(assert (=> d!3343 (= c!1722 (is-Nil!89 res!1358))))

(declare-fun e!2783 () (Set (_ BitVec 32)))

(assert (=> d!3343 (= (domain!0 res!1358) e!2783)))

(declare-fun b!4667 () Bool)

(assert (=> b!4667 (= e!2783 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4668 () Bool)

(assert (=> b!4668 (= e!2783 (union (insert (key!121 (head!268 res!1358)) (as emptyset (Set (_ BitVec 32)))) (domain!0 (tail!280 res!1358))))))

(assert (= (and d!3343 c!1722) b!4667))

(assert (= (and d!3343 (not c!1722)) b!4668))

(declare-fun m!7203 () Bool)

(assert (=> b!4668 m!7203))

(declare-fun m!7205 () Bool)

(assert (=> b!4668 m!7205))

(assert (=> b!4662 d!3343))

(declare-fun d!3345 () Bool)

(declare-fun c!1723 () Bool)

(assert (=> d!3345 (= c!1723 (is-Nil!89 l!414))))

(declare-fun e!2784 () (Set (_ BitVec 32)))

(assert (=> d!3345 (= (domain!0 l!414) e!2784)))

(declare-fun b!4669 () Bool)

(assert (=> b!4669 (= e!2784 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4670 () Bool)

(assert (=> b!4670 (= e!2784 (union (insert (key!121 (head!268 l!414)) (as emptyset (Set (_ BitVec 32)))) (domain!0 (tail!280 l!414))))))

(assert (= (and d!3345 c!1723) b!4669))

(assert (= (and d!3345 (not c!1723)) b!4670))

(declare-fun m!7207 () Bool)

(assert (=> b!4670 m!7207))

(declare-fun m!7209 () Bool)

(assert (=> b!4670 m!7209))

(assert (=> b!4662 d!3345))

(push 1)

(assert (not b!4670))

(assert (not b!4668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

