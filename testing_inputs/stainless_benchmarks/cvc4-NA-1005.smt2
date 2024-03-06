; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7468 () Bool)

(assert start!7468)

(declare-fun res!24480 () Bool)

(declare-fun e!28029 () Bool)

(assert (=> start!7468 (=> (not res!24480) (not e!28029))))

(declare-datatypes () ((List!446 (Nil!426) (Cons!425 (head!685 (_ BitVec 32)) (tail!711 List!446)))))

(declare-fun l!1149 () List!446)

(assert (=> start!7468 (= res!24480 (not (is-Nil!426 l!1149)))))

(assert (=> start!7468 e!28029))

(assert (=> start!7468 true))

(declare-fun b!53738 () Bool)

(declare-fun res!24481 () Bool)

(assert (=> b!53738 (=> (not res!24481) (not e!28029))))

(declare-fun x$1!770 () Int)

(declare-fun size!18 (List!446) Int)

(assert (=> b!53738 (= res!24481 (= x$1!770 (+ 1 (size!18 (tail!711 l!1149)))))))

(declare-fun b!53739 () Bool)

(assert (=> b!53739 (= e!28029 (< x$1!770 0))))

(assert (= (and start!7468 res!24480) b!53738))

(assert (= (and b!53738 res!24481) b!53739))

(declare-fun m!57588 () Bool)

(assert (=> b!53738 m!57588))

(push 1)

(assert (not b!53738))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44753 () Bool)

(declare-fun lt!9355 () Int)

(assert (=> d!44753 (>= lt!9355 0)))

(declare-fun e!28032 () Int)

(assert (=> d!44753 (= lt!9355 e!28032)))

(declare-fun c!11661 () Bool)

(assert (=> d!44753 (= c!11661 (is-Nil!426 (tail!711 l!1149)))))

(assert (=> d!44753 (= (size!18 (tail!711 l!1149)) lt!9355)))

(declare-fun b!53744 () Bool)

(assert (=> b!53744 (= e!28032 0)))

(declare-fun b!53745 () Bool)

(assert (=> b!53745 (= e!28032 (+ 1 (size!18 (tail!711 (tail!711 l!1149)))))))

(assert (= (and d!44753 c!11661) b!53744))

(assert (= (and d!44753 (not c!11661)) b!53745))

(declare-fun m!57590 () Bool)

(assert (=> b!53745 m!57590))

(assert (=> b!53738 d!44753))

(push 1)

(assert (not b!53745))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

