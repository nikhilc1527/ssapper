; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8940 () Bool)

(assert start!8940)

(declare-fun res!28945 () Bool)

(declare-fun e!33361 () Bool)

(assert (=> start!8940 (=> (not res!28945) (not e!33361))))

(declare-datatypes () ((A!2628 (C!67 (x!27000 Int)) (E!19) (D!27))))

(declare-fun c!13620 () A!2628)

(assert (=> start!8940 (= res!28945 (= c!13620 (C!67 42)))))

(assert (=> start!8940 e!33361))

(declare-fun inv!1120 (A!2628) Bool)

(assert (=> start!8940 (inv!1120 c!13620)))

(declare-fun b!62271 () Bool)

(declare-fun e!33362 () A!2628)

(assert (=> b!62271 (= e!33362 D!27)))

(declare-fun b!62272 () Bool)

(declare-fun e!33359 () A!2628)

(assert (=> b!62272 (= e!33359 D!27)))

(declare-fun b!62273 () Bool)

(assert (=> b!62273 (= e!33359 c!13620)))

(declare-fun b!62274 () Bool)

(declare-fun res!28944 () Bool)

(assert (=> b!62274 (=> (not res!28944) (not e!33361))))

(assert (=> b!62274 (= res!28944 (not (is-C!67 e!33359)))))

(declare-fun c!13635 () Bool)

(declare-fun foo!44 (A!2628 Int) Int)

(assert (=> b!62274 (= c!13635 (> (+ (foo!44 c!13620 0) (x!27000 c!13620)) 0))))

(declare-fun b!62275 () Bool)

(assert (=> b!62275 (= e!33361 (not (is-E!19 e!33362)))))

(declare-fun c!13636 () Bool)

(assert (=> b!62275 (= c!13636 (> (+ (foo!44 c!13620 0) (x!27000 c!13620)) 0))))

(declare-fun b!62276 () Bool)

(assert (=> b!62276 (= e!33362 c!13620)))

(assert (= (and start!8940 res!28945) b!62274))

(assert (= (and b!62274 c!13635) b!62273))

(assert (= (and b!62274 (not c!13635)) b!62272))

(assert (= (and b!62274 res!28944) b!62275))

(assert (= (and b!62275 c!13636) b!62276))

(assert (= (and b!62275 (not c!13636)) b!62271))

(declare-fun m!68068 () Bool)

(assert (=> start!8940 m!68068))

(declare-fun m!68070 () Bool)

(assert (=> b!62274 m!68070))

(assert (=> b!62275 m!68070))

(push 1)

(assert (not b!62275))

(assert (not b!62274))

(assert (not start!8940))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52710 () Bool)

(declare-fun lt!11463 () Int)

(assert (=> d!52710 (and (is-C!67 c!13620) (>= lt!11463 (x!27000 c!13620)))))

(declare-fun y!65 (A!2628) Int)

(assert (=> d!52710 (= lt!11463 (+ (+ (x!27000 c!13620) (y!65 c!13620)) (ite (> 0 0) 0 (- 0))))))

(assert (=> d!52710 (= (foo!44 c!13620 0) lt!11463)))

(declare-fun bs!37388 () Bool)

(assert (= bs!37388 d!52710))

(declare-fun m!68072 () Bool)

(assert (=> bs!37388 m!68072))

(assert (=> b!62275 d!52710))

(assert (=> b!62274 d!52710))

(declare-fun d!52712 () Bool)

(declare-fun res!28948 () Bool)

(declare-fun e!33365 () Bool)

(assert (=> d!52712 (=> res!28948 e!33365)))

(assert (=> d!52712 (= res!28948 (not (is-C!67 c!13620)))))

(assert (=> d!52712 (= (inv!1120 c!13620) e!33365)))

(declare-fun b!62279 () Bool)

(declare-fun inv!19 (A!2628) Bool)

(assert (=> b!62279 (= e!33365 (inv!19 c!13620))))

(assert (= (and d!52712 (not res!28948)) b!62279))

(declare-fun m!68074 () Bool)

(assert (=> b!62279 m!68074))

(assert (=> start!8940 d!52712))

(push 1)

(assert (not b!62279))

(assert (not d!52710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

