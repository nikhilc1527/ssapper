; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!708 () Bool)

(assert start!708)

(declare-fun res!1377 () Bool)

(declare-fun e!2751 () Bool)

(assert (=> start!708 (=> (not res!1377) (not e!2751))))

(declare-datatypes () ((KeyValuePairAbs!3 (KeyValuePair!2 (key!119 (_ BitVec 32)) (value!1073 (_ BitVec 32))))))

(declare-datatypes () ((List!87 (Nil!87) (Cons!86 (head!266 KeyValuePairAbs!3) (tail!278 List!87)))))

(declare-fun l2!155 () List!87)

(declare-fun x$1!217 () List!87)

(declare-fun l1!161 () List!87)

(assert (=> start!708 (= res!1377 (and (is-Nil!87 l2!155) (= x$1!217 l1!161)))))

(assert (=> start!708 e!2751))

(assert (=> start!708 true))

(declare-fun b!4612 () Bool)

(declare-fun domain!0 (List!87) (Set (_ BitVec 32)))

(assert (=> b!4612 (= e!2751 (not (= (domain!0 x$1!217) (union (domain!0 l1!161) (domain!0 l2!155)))))))

(assert (= (and start!708 res!1377) b!4612))

(declare-fun m!7145 () Bool)

(assert (=> b!4612 m!7145))

(declare-fun m!7147 () Bool)

(assert (=> b!4612 m!7147))

(declare-fun m!7149 () Bool)

(assert (=> b!4612 m!7149))

(push 1)

(assert (not b!4612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3327 () Bool)

(declare-fun c!1703 () Bool)

(assert (=> d!3327 (= c!1703 (is-Nil!87 x$1!217))))

(declare-fun e!2754 () (Set (_ BitVec 32)))

(assert (=> d!3327 (= (domain!0 x$1!217) e!2754)))

(declare-fun b!4617 () Bool)

(assert (=> b!4617 (= e!2754 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4618 () Bool)

(assert (=> b!4618 (= e!2754 (union (insert (key!119 (head!266 x$1!217)) (as emptyset (Set (_ BitVec 32)))) (domain!0 (tail!278 x$1!217))))))

(assert (= (and d!3327 c!1703) b!4617))

(assert (= (and d!3327 (not c!1703)) b!4618))

(declare-fun m!7151 () Bool)

(assert (=> b!4618 m!7151))

(declare-fun m!7153 () Bool)

(assert (=> b!4618 m!7153))

(assert (=> b!4612 d!3327))

(declare-fun d!3329 () Bool)

(declare-fun c!1704 () Bool)

(assert (=> d!3329 (= c!1704 (is-Nil!87 l1!161))))

(declare-fun e!2755 () (Set (_ BitVec 32)))

(assert (=> d!3329 (= (domain!0 l1!161) e!2755)))

(declare-fun b!4619 () Bool)

(assert (=> b!4619 (= e!2755 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4620 () Bool)

(assert (=> b!4620 (= e!2755 (union (insert (key!119 (head!266 l1!161)) (as emptyset (Set (_ BitVec 32)))) (domain!0 (tail!278 l1!161))))))

(assert (= (and d!3329 c!1704) b!4619))

(assert (= (and d!3329 (not c!1704)) b!4620))

(declare-fun m!7155 () Bool)

(assert (=> b!4620 m!7155))

(declare-fun m!7157 () Bool)

(assert (=> b!4620 m!7157))

(assert (=> b!4612 d!3329))

(declare-fun d!3331 () Bool)

(declare-fun c!1705 () Bool)

(assert (=> d!3331 (= c!1705 (is-Nil!87 l2!155))))

(declare-fun e!2756 () (Set (_ BitVec 32)))

(assert (=> d!3331 (= (domain!0 l2!155) e!2756)))

(declare-fun b!4621 () Bool)

(assert (=> b!4621 (= e!2756 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4622 () Bool)

(assert (=> b!4622 (= e!2756 (union (insert (key!119 (head!266 l2!155)) (as emptyset (Set (_ BitVec 32)))) (domain!0 (tail!278 l2!155))))))

(assert (= (and d!3331 c!1705) b!4621))

(assert (= (and d!3331 (not c!1705)) b!4622))

(declare-fun m!7159 () Bool)

(assert (=> b!4622 m!7159))

(declare-fun m!7161 () Bool)

(assert (=> b!4622 m!7161))

(assert (=> b!4612 d!3331))

(push 1)

(assert (not b!4622))

(assert (not b!4620))

(assert (not b!4618))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

