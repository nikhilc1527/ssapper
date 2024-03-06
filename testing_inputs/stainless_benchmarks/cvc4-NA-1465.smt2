; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10056 () Bool)

(assert start!10056)

(declare-fun res!35463 () Bool)

(declare-fun e!39264 () Bool)

(assert (=> start!10056 (=> (not res!35463) (not e!39264))))

(declare-fun c!17073 () Int)

(declare-fun counter!18 () Int)

(declare-datatypes () ((List!624 (Nil!582) (Cons!581 (head!991 Int) (tail!1012 List!624)))))

(declare-fun list!792 () List!624)

(assert (=> start!10056 (= res!35463 (and (is-Cons!581 list!792) (>= counter!18 0) (= c!17073 (ite (= (head!991 list!792) 1) (+ counter!18 1) (ite (= (head!991 list!792) 2) (- counter!18 1) counter!18)))))))

(assert (=> start!10056 e!39264))

(assert (=> start!10056 true))

(declare-fun b!72646 () Bool)

(declare-fun res!35464 () Bool)

(assert (=> b!72646 (=> (not res!35464) (not e!39264))))

(declare-fun res!34925 () Bool)

(declare-fun balanced_nonEarly!0 (List!624 Int) Bool)

(assert (=> b!72646 (= res!35464 (= res!34925 (balanced_nonEarly!0 (tail!1012 list!792) c!17073)))))

(declare-fun b!72647 () Bool)

(declare-fun balanced!0 (List!624 Int) Bool)

(assert (=> b!72647 (= e!39264 (not (= res!34925 (balanced!0 list!792 counter!18))))))

(assert (= (and start!10056 res!35463) b!72646))

(assert (= (and b!72646 res!35464) b!72647))

(declare-fun m!72548 () Bool)

(assert (=> b!72646 m!72548))

(declare-fun m!72550 () Bool)

(assert (=> b!72647 m!72550))

(push 1)

(assert (not b!72646))

(assert (not b!72647))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!72657 () Bool)

(declare-fun e!39269 () Bool)

(assert (=> b!72657 (= e!39269 (= c!17073 0))))

(declare-fun b!72659 () Bool)

(declare-fun e!39270 () Bool)

(assert (=> b!72659 (= e!39270 (balanced_nonEarly!0 (tail!1012 (tail!1012 list!792)) (ite (= (head!991 (tail!1012 list!792)) 1) (+ c!17073 1) (ite (= (head!991 (tail!1012 list!792)) 2) (- c!17073 1) c!17073))))))

(declare-fun b!72658 () Bool)

(assert (=> b!72658 (= e!39270 (balanced_nonEarly!0 (tail!1012 (tail!1012 list!792)) c!17073))))

(declare-fun d!54655 () Bool)

(declare-fun lt!15405 () Bool)

(assert (=> d!54655 (= lt!15405 (balanced!0 (tail!1012 list!792) c!17073))))

(assert (=> d!54655 (= lt!15405 e!39269)))

(declare-fun c!17515 () Bool)

(assert (=> d!54655 (= c!17515 (is-Cons!581 (tail!1012 list!792)))))

(assert (=> d!54655 (= (balanced_nonEarly!0 (tail!1012 list!792) c!17073) lt!15405)))

(declare-fun b!72656 () Bool)

(assert (=> b!72656 (= e!39269 e!39270)))

(declare-fun c!17514 () Bool)

(assert (=> b!72656 (= c!17514 (< c!17073 0))))

(assert (= (and b!72656 c!17514) b!72658))

(assert (= (and b!72656 (not c!17514)) b!72659))

(assert (= (and d!54655 c!17515) b!72656))

(assert (= (and d!54655 (not c!17515)) b!72657))

(declare-fun m!72552 () Bool)

(assert (=> b!72659 m!72552))

(declare-fun m!72554 () Bool)

(assert (=> b!72658 m!72554))

(declare-fun m!72556 () Bool)

(assert (=> d!54655 m!72556))

(assert (=> b!72646 d!54655))

(declare-fun d!54657 () Bool)

(declare-fun res!35468 () Bool)

(declare-fun e!39275 () Bool)

(assert (=> d!54657 (=> (not res!35468) (not e!39275))))

(assert (=> d!54657 (= res!35468 (not (< counter!18 0)))))

(assert (=> d!54657 (= (balanced!0 list!792 counter!18) e!39275)))

(declare-fun b!72666 () Bool)

(declare-fun e!39276 () Bool)

(assert (=> b!72666 (= e!39275 e!39276)))

(declare-fun c!17519 () Bool)

(assert (=> b!72666 (= c!17519 (is-Cons!581 list!792))))

(declare-fun b!72667 () Bool)

(assert (=> b!72667 (= e!39276 (balanced!0 (tail!1012 list!792) (ite (= (head!991 list!792) 1) (+ counter!18 1) (ite (= (head!991 list!792) 2) (- counter!18 1) counter!18))))))

(declare-fun b!72668 () Bool)

(assert (=> b!72668 (= e!39276 (= counter!18 0))))

(assert (= (and d!54657 res!35468) b!72666))

(assert (= (and b!72666 c!17519) b!72667))

(assert (= (and b!72666 (not c!17519)) b!72668))

(declare-fun m!72558 () Bool)

(assert (=> b!72667 m!72558))

(assert (=> b!72647 d!54657))

(push 1)

(assert (not d!54655))

(assert (not b!72667))

(assert (not b!72658))

(assert (not b!72659))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

