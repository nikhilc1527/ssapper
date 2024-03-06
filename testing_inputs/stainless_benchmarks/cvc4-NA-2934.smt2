; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14980 () Bool)

(assert start!14980)

(declare-fun res!49331 () Bool)

(declare-fun e!51647 () Bool)

(assert (=> start!14980 (=> res!49331 e!51647)))

(declare-datatypes () ((P!64 (Charlie!64) (Alice!64) (Bob!64))))

(declare-datatypes () ((tuple2!474 (tuple2!475 (_1!276 P!64) (_2!276 P!64)))))

(declare-datatypes () ((List!878 (Cons!816 (h!5581 tuple2!474) (t!53900 List!878)) (Nil!818))))

(declare-fun lt!21653 () List!878)

(declare-fun content!199 (List!878) (Set tuple2!474))

(assert (=> start!14980 (= res!49331 (not (= (content!199 lt!21653) (union (as emptyset (Set tuple2!474)) (content!199 lt!21653)))))))

(declare-fun lt!21652 () List!878)

(assert (=> start!14980 (= lt!21653 (Cons!816 (h!5581 lt!21652) (Cons!816 (h!5581 (t!53900 lt!21652)) Nil!818)))))

(assert (=> start!14980 (= lt!21652 (Cons!816 (tuple2!475 Charlie!64 Alice!64) (Cons!816 (tuple2!475 Charlie!64 Charlie!64) Nil!818)))))

(assert (=> start!14980 e!51647))

(declare-fun b!94493 () Bool)

(declare-fun res!49330 () Bool)

(assert (=> b!94493 (=> res!49330 e!51647)))

(declare-fun size!989 (List!878) Int)

(assert (=> b!94493 (= res!49330 (not (= (size!989 lt!21653) (+ (size!989 Nil!818) (size!989 lt!21653)))))))

(declare-fun b!94494 () Bool)

(assert (=> b!94494 (= e!51647 (and (= lt!21653 Nil!818) (not (= lt!21653 Nil!818))))))

(assert (= (and start!14980 (not res!49331)) b!94493))

(assert (= (and b!94493 (not res!49330)) b!94494))

(declare-fun m!89883 () Bool)

(assert (=> start!14980 m!89883))

(declare-fun m!89885 () Bool)

(assert (=> b!94493 m!89885))

(declare-fun m!89887 () Bool)

(assert (=> b!94493 m!89887))

(push 1)

(assert (not start!14980))

(assert (not b!94493))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61528 () Bool)

(declare-fun c!23230 () Bool)

(assert (=> d!61528 (= c!23230 (is-Nil!818 lt!21653))))

(declare-fun e!51650 () (Set tuple2!474))

(assert (=> d!61528 (= (content!199 lt!21653) e!51650)))

(declare-fun b!94499 () Bool)

(assert (=> b!94499 (= e!51650 (as emptyset (Set tuple2!474)))))

(declare-fun b!94500 () Bool)

(assert (=> b!94500 (= e!51650 (union (insert (h!5581 lt!21653) (as emptyset (Set tuple2!474))) (content!199 (t!53900 lt!21653))))))

(assert (= (and d!61528 c!23230) b!94499))

(assert (= (and d!61528 (not c!23230)) b!94500))

(declare-fun m!89889 () Bool)

(assert (=> b!94500 m!89889))

(declare-fun m!89891 () Bool)

(assert (=> b!94500 m!89891))

(assert (=> start!14980 d!61528))

(declare-fun d!61530 () Bool)

(declare-fun lt!21656 () Int)

(assert (=> d!61530 (>= lt!21656 0)))

(declare-fun e!51653 () Int)

(assert (=> d!61530 (= lt!21656 e!51653)))

(declare-fun c!23233 () Bool)

(assert (=> d!61530 (= c!23233 (is-Nil!818 lt!21653))))

(assert (=> d!61530 (= (size!989 lt!21653) lt!21656)))

(declare-fun b!94505 () Bool)

(assert (=> b!94505 (= e!51653 0)))

(declare-fun b!94506 () Bool)

(assert (=> b!94506 (= e!51653 (+ 1 (size!989 (t!53900 lt!21653))))))

(assert (= (and d!61530 c!23233) b!94505))

(assert (= (and d!61530 (not c!23233)) b!94506))

(declare-fun m!89893 () Bool)

(assert (=> b!94506 m!89893))

(assert (=> b!94493 d!61530))

(declare-fun d!61532 () Bool)

(declare-fun lt!21657 () Int)

(assert (=> d!61532 (>= lt!21657 0)))

(declare-fun e!51654 () Int)

(assert (=> d!61532 (= lt!21657 e!51654)))

(declare-fun c!23234 () Bool)

(assert (=> d!61532 (= c!23234 (is-Nil!818 Nil!818))))

(assert (=> d!61532 (= (size!989 Nil!818) lt!21657)))

(declare-fun b!94507 () Bool)

(assert (=> b!94507 (= e!51654 0)))

(declare-fun b!94508 () Bool)

(assert (=> b!94508 (= e!51654 (+ 1 (size!989 (t!53900 Nil!818))))))

(assert (= (and d!61532 c!23234) b!94507))

(assert (= (and d!61532 (not c!23234)) b!94508))

(declare-fun m!89895 () Bool)

(assert (=> b!94508 m!89895))

(assert (=> b!94493 d!61532))

(push 1)

(assert (not b!94500))

(assert (not b!94508))

(assert (not b!94506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

