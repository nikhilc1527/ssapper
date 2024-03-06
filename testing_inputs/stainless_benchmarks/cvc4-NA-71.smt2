; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!574 () Bool)

(assert start!574)

(declare-fun res!1277 () Bool)

(declare-fun e!2384 () Bool)

(assert (=> start!574 (=> (not res!1277) (not e!2384))))

(declare-datatypes () ((List!84 (Cons!84 (head!256 (_ BitVec 32)) (tail!268 List!84)) (Nil!85))))

(declare-fun list!138 () List!84)

(assert (=> start!574 (= res!1277 (not (is-Nil!85 list!138)))))

(assert (=> start!574 e!2384))

(assert (=> start!574 true))

(declare-fun b!4279 () Bool)

(declare-fun res!1278 () Bool)

(assert (=> b!4279 (=> (not res!1278) (not e!2384))))

(declare-fun x$1!188 () Int)

(declare-fun size!23 (List!84) Int)

(assert (=> b!4279 (= res!1278 (= x$1!188 (+ 1 (size!23 (tail!268 list!138)))))))

(declare-fun b!4280 () Bool)

(assert (=> b!4280 (= e!2384 (< x$1!188 0))))

(assert (= (and start!574 res!1277) b!4279))

(assert (= (and b!4279 res!1278) b!4280))

(declare-fun m!6717 () Bool)

(assert (=> b!4279 m!6717))

(push 1)

(assert (not b!4279))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3068 () Bool)

(declare-fun lt!1210 () Int)

(assert (=> d!3068 (>= lt!1210 0)))

(declare-fun e!2387 () Int)

(assert (=> d!3068 (= lt!1210 e!2387)))

(declare-fun c!1571 () Bool)

(assert (=> d!3068 (= c!1571 (is-Nil!85 (tail!268 list!138)))))

(assert (=> d!3068 (= (size!23 (tail!268 list!138)) lt!1210)))

(declare-fun b!4285 () Bool)

(assert (=> b!4285 (= e!2387 0)))

(declare-fun b!4286 () Bool)

(assert (=> b!4286 (= e!2387 (+ 1 (size!23 (tail!268 (tail!268 list!138)))))))

(assert (= (and d!3068 c!1571) b!4285))

(assert (= (and d!3068 (not c!1571)) b!4286))

(declare-fun m!6719 () Bool)

(assert (=> b!4286 m!6719))

(assert (=> b!4279 d!3068))

(push 1)

(assert (not b!4286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

