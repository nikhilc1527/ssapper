; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10036 () Bool)

(assert start!10036)

(declare-fun res!35431 () Bool)

(declare-fun e!39211 () Bool)

(assert (=> start!10036 (=> (not res!35431) (not e!39211))))

(declare-fun c!17079 () Int)

(declare-fun failed!1 () Bool)

(declare-datatypes () ((List!620 (Nil!578) (Cons!577 (head!987 Int) (tail!1008 List!620)))))

(declare-fun list!826 () List!620)

(declare-fun counter!32 () Int)

(assert (=> start!10036 (= res!35431 (and (or (>= counter!32 0) failed!1) (is-Cons!577 list!826) (= c!17079 (ite (= (head!987 list!826) 1) (+ counter!32 1) (ite (= (head!987 list!826) 2) (- counter!32 1) counter!32)))))))

(assert (=> start!10036 e!39211))

(assert (=> start!10036 true))

(declare-fun b!72550 () Bool)

(declare-fun res!35432 () Bool)

(assert (=> b!72550 (=> (not res!35432) (not e!39211))))

(declare-fun res!34930 () Bool)

(declare-fun balanced_withFailure!0 (List!620 Int Bool) Bool)

(assert (=> b!72550 (= res!35432 (= res!34930 (balanced_withFailure!0 (tail!1008 list!826) c!17079 (or failed!1 (< c!17079 0)))))))

(declare-fun b!72551 () Bool)

(declare-fun res!35433 () Bool)

(assert (=> b!72551 (=> (not res!35433) (not e!39211))))

(assert (=> b!72551 (= res!35433 (not failed!1))))

(declare-fun b!72552 () Bool)

(declare-fun balanced_nonEarly!0 (List!620 Int) Bool)

(assert (=> b!72552 (= e!39211 (not (= res!34930 (balanced_nonEarly!0 list!826 counter!32))))))

(assert (= (and start!10036 res!35431) b!72550))

(assert (= (and b!72550 res!35432) b!72551))

(assert (= (and b!72551 res!35433) b!72552))

(declare-fun m!72492 () Bool)

(assert (=> b!72550 m!72492))

(declare-fun m!72494 () Bool)

(assert (=> b!72552 m!72494))

(push 1)

(assert (not b!72552))

(assert (not b!72550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!72561 () Bool)

(declare-fun e!39217 () Bool)

(declare-fun e!39216 () Bool)

(assert (=> b!72561 (= e!39217 e!39216)))

(declare-fun c!17473 () Bool)

(assert (=> b!72561 (= c!17473 (< counter!32 0))))

(declare-fun b!72562 () Bool)

(assert (=> b!72562 (= e!39217 (= counter!32 0))))

(declare-fun b!72563 () Bool)

(assert (=> b!72563 (= e!39216 (balanced_nonEarly!0 (tail!1008 list!826) counter!32))))

(declare-fun d!54635 () Bool)

(declare-fun lt!15385 () Bool)

(declare-fun balanced!0 (List!620 Int) Bool)

(assert (=> d!54635 (= lt!15385 (balanced!0 list!826 counter!32))))

(assert (=> d!54635 (= lt!15385 e!39217)))

(declare-fun c!17472 () Bool)

(assert (=> d!54635 (= c!17472 (is-Cons!577 list!826))))

(assert (=> d!54635 (= (balanced_nonEarly!0 list!826 counter!32) lt!15385)))

(declare-fun b!72564 () Bool)

(assert (=> b!72564 (= e!39216 (balanced_nonEarly!0 (tail!1008 list!826) (ite (= (head!987 list!826) 1) (+ counter!32 1) (ite (= (head!987 list!826) 2) (- counter!32 1) counter!32))))))

(assert (= (and b!72561 c!17473) b!72563))

(assert (= (and b!72561 (not c!17473)) b!72564))

(assert (= (and d!54635 c!17472) b!72561))

(assert (= (and d!54635 (not c!17472)) b!72562))

(declare-fun m!72496 () Bool)

(assert (=> b!72563 m!72496))

(declare-fun m!72498 () Bool)

(assert (=> d!54635 m!72498))

(declare-fun m!72500 () Bool)

(assert (=> b!72564 m!72500))

(assert (=> b!72552 d!54635))

(declare-fun lt!15390 () Bool)

(declare-fun d!54637 () Bool)

(assert (=> d!54637 (= lt!15390 (balanced_nonEarly!0 (tail!1008 list!826) (ite (or failed!1 (< c!17079 0)) (- 1) c!17079)))))

(declare-fun e!39220 () Bool)

(assert (=> d!54637 (= lt!15390 e!39220)))

(declare-fun c!17477 () Bool)

(assert (=> d!54637 (= c!17477 (is-Cons!577 (tail!1008 list!826)))))

(assert (=> d!54637 (or (>= c!17079 0) (or failed!1 (< c!17079 0)))))

(assert (=> d!54637 (= (balanced_withFailure!0 (tail!1008 list!826) c!17079 (or failed!1 (< c!17079 0))) lt!15390)))

(declare-fun b!72569 () Bool)

(declare-fun lt!15391 () Int)

(assert (=> b!72569 (= e!39220 (balanced_withFailure!0 (tail!1008 (tail!1008 list!826)) lt!15391 (or (or failed!1 (< c!17079 0)) (< lt!15391 0))))))

(assert (=> b!72569 (= lt!15391 (ite (= (head!987 (tail!1008 list!826)) 1) (+ c!17079 1) (ite (= (head!987 (tail!1008 list!826)) 2) (- c!17079 1) c!17079)))))

(declare-fun b!72570 () Bool)

(assert (=> b!72570 (= e!39220 (and (not (or failed!1 (< c!17079 0))) (= c!17079 0)))))

(assert (= (and d!54637 c!17477) b!72569))

(assert (= (and d!54637 (not c!17477)) b!72570))

(declare-fun m!72502 () Bool)

(assert (=> d!54637 m!72502))

(declare-fun m!72504 () Bool)

(assert (=> b!72569 m!72504))

(assert (=> b!72550 d!54637))

(push 1)

(assert (not b!72563))

(assert (not d!54637))

(assert (not d!54635))

(assert (not b!72569))

(assert (not b!72564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

