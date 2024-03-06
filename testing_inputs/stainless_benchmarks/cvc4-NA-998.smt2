; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7416 () Bool)

(assert start!7416)

(declare-fun res!24346 () Bool)

(declare-fun e!27889 () Bool)

(assert (=> start!7416 (=> (not res!24346) (not e!27889))))

(declare-datatypes () ((List!439 (Nil!419) (Cons!418 (head!678 (_ BitVec 32)) (tail!704 List!439)))))

(declare-fun l!1121 () List!439)

(declare-fun res!24316 () List!439)

(assert (=> start!7416 (= res!24346 (and (is-Nil!419 l!1121) (= res!24316 Nil!419)))))

(assert (=> start!7416 e!27889))

(assert (=> start!7416 true))

(declare-fun b!53496 () Bool)

(declare-fun e!27888 () Bool)

(assert (=> b!53496 (= e!27889 e!27888)))

(declare-fun res!24345 () Bool)

(assert (=> b!53496 (=> res!24345 e!27888)))

(declare-fun contents!0 (List!439) (Set (_ BitVec 32)))

(assert (=> b!53496 (= res!24345 (not (= (contents!0 res!24316) (contents!0 l!1121))))))

(declare-fun b!53497 () Bool)

(declare-fun res!24347 () Bool)

(assert (=> b!53497 (=> res!24347 e!27888)))

(declare-fun isSorted!5 (List!439) Bool)

(assert (=> b!53497 (= res!24347 (not (isSorted!5 res!24316)))))

(declare-fun b!53498 () Bool)

(declare-fun size!18 (List!439) Int)

(assert (=> b!53498 (= e!27888 (not (= (size!18 res!24316) (size!18 l!1121))))))

(assert (= (and start!7416 res!24346) b!53496))

(assert (= (and b!53496 (not res!24345)) b!53497))

(assert (= (and b!53497 (not res!24347)) b!53498))

(declare-fun m!57402 () Bool)

(assert (=> b!53496 m!57402))

(declare-fun m!57404 () Bool)

(assert (=> b!53496 m!57404))

(declare-fun m!57406 () Bool)

(assert (=> b!53497 m!57406))

(declare-fun m!57408 () Bool)

(assert (=> b!53498 m!57408))

(declare-fun m!57410 () Bool)

(assert (=> b!53498 m!57410))

(push 1)

(assert (not b!53496))

(assert (not b!53498))

(assert (not b!53497))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44687 () Bool)

(declare-fun c!11606 () Bool)

(assert (=> d!44687 (= c!11606 (is-Nil!419 res!24316))))

(declare-fun e!27892 () (Set (_ BitVec 32)))

(assert (=> d!44687 (= (contents!0 res!24316) e!27892)))

(declare-fun b!53503 () Bool)

(assert (=> b!53503 (= e!27892 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!53504 () Bool)

(assert (=> b!53504 (= e!27892 (union (contents!0 (tail!704 res!24316)) (insert (head!678 res!24316) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!44687 c!11606) b!53503))

(assert (= (and d!44687 (not c!11606)) b!53504))

(declare-fun m!57412 () Bool)

(assert (=> b!53504 m!57412))

(declare-fun m!57414 () Bool)

(assert (=> b!53504 m!57414))

(assert (=> b!53496 d!44687))

(declare-fun d!44689 () Bool)

(declare-fun c!11607 () Bool)

(assert (=> d!44689 (= c!11607 (is-Nil!419 l!1121))))

(declare-fun e!27893 () (Set (_ BitVec 32)))

(assert (=> d!44689 (= (contents!0 l!1121) e!27893)))

(declare-fun b!53505 () Bool)

(assert (=> b!53505 (= e!27893 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!53506 () Bool)

(assert (=> b!53506 (= e!27893 (union (contents!0 (tail!704 l!1121)) (insert (head!678 l!1121) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!44689 c!11607) b!53505))

(assert (= (and d!44689 (not c!11607)) b!53506))

(declare-fun m!57416 () Bool)

(assert (=> b!53506 m!57416))

(declare-fun m!57418 () Bool)

(assert (=> b!53506 m!57418))

(assert (=> b!53496 d!44689))

(declare-fun d!44691 () Bool)

(declare-fun lt!9326 () Int)

(assert (=> d!44691 (>= lt!9326 0)))

(declare-fun e!27896 () Int)

(assert (=> d!44691 (= lt!9326 e!27896)))

(declare-fun c!11610 () Bool)

(assert (=> d!44691 (= c!11610 (is-Nil!419 res!24316))))

(assert (=> d!44691 (= (size!18 res!24316) lt!9326)))

(declare-fun b!53511 () Bool)

(assert (=> b!53511 (= e!27896 0)))

(declare-fun b!53512 () Bool)

(assert (=> b!53512 (= e!27896 (+ 1 (size!18 (tail!704 res!24316))))))

(assert (= (and d!44691 c!11610) b!53511))

(assert (= (and d!44691 (not c!11610)) b!53512))

(declare-fun m!57420 () Bool)

(assert (=> b!53512 m!57420))

(assert (=> b!53498 d!44691))

(declare-fun d!44693 () Bool)

(declare-fun lt!9327 () Int)

(assert (=> d!44693 (>= lt!9327 0)))

(declare-fun e!27897 () Int)

(assert (=> d!44693 (= lt!9327 e!27897)))

(declare-fun c!11611 () Bool)

(assert (=> d!44693 (= c!11611 (is-Nil!419 l!1121))))

(assert (=> d!44693 (= (size!18 l!1121) lt!9327)))

(declare-fun b!53513 () Bool)

(assert (=> b!53513 (= e!27897 0)))

(declare-fun b!53514 () Bool)

(assert (=> b!53514 (= e!27897 (+ 1 (size!18 (tail!704 l!1121))))))

(assert (= (and d!44693 c!11611) b!53513))

(assert (= (and d!44693 (not c!11611)) b!53514))

(declare-fun m!57422 () Bool)

(assert (=> b!53514 m!57422))

(assert (=> b!53498 d!44693))

(declare-fun d!44695 () Bool)

(declare-fun res!24352 () Bool)

(declare-fun e!27902 () Bool)

(assert (=> d!44695 (=> res!24352 e!27902)))

(assert (=> d!44695 (= res!24352 (or (is-Nil!419 res!24316) (and (is-Cons!418 res!24316) (is-Nil!419 (tail!704 res!24316)))))))

(assert (=> d!44695 (= (isSorted!5 res!24316) e!27902)))

(declare-fun b!53519 () Bool)

(declare-fun e!27903 () Bool)

(assert (=> b!53519 (= e!27902 e!27903)))

(declare-fun res!24353 () Bool)

(assert (=> b!53519 (=> (not res!24353) (not e!27903))))

(assert (=> b!53519 (= res!24353 (bvsle (head!678 res!24316) (head!678 (tail!704 res!24316))))))

(declare-fun b!53520 () Bool)

(assert (=> b!53520 (= e!27903 (isSorted!5 (Cons!418 (head!678 (tail!704 res!24316)) (tail!704 (tail!704 res!24316)))))))

(assert (= (and d!44695 (not res!24352)) b!53519))

(assert (= (and b!53519 res!24353) b!53520))

(declare-fun m!57424 () Bool)

(assert (=> b!53520 m!57424))

(assert (=> b!53497 d!44695))

(push 1)

(assert (not b!53504))

(assert (not b!53506))

(assert (not b!53520))

(assert (not b!53514))

(assert (not b!53512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

