; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10042 () Bool)

(assert start!10042)

(declare-fun res!35441 () Bool)

(declare-fun e!39223 () Bool)

(assert (=> start!10042 (=> (not res!35441) (not e!39223))))

(declare-fun res!34934 () Bool)

(declare-fun failed!1 () Bool)

(declare-datatypes () ((List!621 (Nil!579) (Cons!578 (head!988 Int) (tail!1009 List!621)))))

(declare-fun list!826 () List!621)

(declare-fun counter!32 () Int)

(assert (=> start!10042 (= res!35441 (and (or (>= counter!32 0) failed!1) (not (is-Cons!578 list!826)) (= res!34934 (and (not failed!1) (= counter!32 0))) failed!1))))

(assert (=> start!10042 e!39223))

(assert (=> start!10042 true))

(declare-fun b!72573 () Bool)

(declare-fun balanced_nonEarly!0 (List!621 Int) Bool)

(assert (=> b!72573 (= e!39223 (not (= res!34934 (balanced_nonEarly!0 list!826 (- 1)))))))

(assert (= (and start!10042 res!35441) b!72573))

(declare-fun m!72506 () Bool)

(assert (=> b!72573 m!72506))

(push 1)

(assert (not b!72573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!72585 () Bool)

(declare-fun e!39229 () Bool)

(assert (=> b!72585 (= e!39229 (balanced_nonEarly!0 (tail!1009 list!826) (ite (= (head!988 list!826) 1) (+ (- 1) 1) (ite (= (head!988 list!826) 2) (- (- 1) 1) (- 1)))))))

(declare-fun d!54639 () Bool)

(declare-fun lt!15394 () Bool)

(declare-fun balanced!0 (List!621 Int) Bool)

(assert (=> d!54639 (= lt!15394 (balanced!0 list!826 (- 1)))))

(declare-fun e!39228 () Bool)

(assert (=> d!54639 (= lt!15394 e!39228)))

(declare-fun c!17484 () Bool)

(assert (=> d!54639 (= c!17484 (is-Cons!578 list!826))))

(assert (=> d!54639 (= (balanced_nonEarly!0 list!826 (- 1)) lt!15394)))

(declare-fun b!72583 () Bool)

(assert (=> b!72583 (= e!39228 (= (- 1) 0))))

(declare-fun b!72584 () Bool)

(assert (=> b!72584 (= e!39229 (balanced_nonEarly!0 (tail!1009 list!826) (- 1)))))

(declare-fun b!72582 () Bool)

(assert (=> b!72582 (= e!39228 e!39229)))

(declare-fun c!17483 () Bool)

(assert (=> b!72582 (= c!17483 (< (- 1) 0))))

(assert (= (and b!72582 c!17483) b!72584))

(assert (= (and b!72582 (not c!17483)) b!72585))

(assert (= (and d!54639 c!17484) b!72582))

(assert (= (and d!54639 (not c!17484)) b!72583))

(declare-fun m!72508 () Bool)

(assert (=> b!72585 m!72508))

(declare-fun m!72510 () Bool)

(assert (=> d!54639 m!72510))

(declare-fun m!72512 () Bool)

(assert (=> b!72584 m!72512))

(assert (=> b!72573 d!54639))

(push 1)

(assert (not b!72585))

(assert (not b!72584))

(assert (not d!54639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

