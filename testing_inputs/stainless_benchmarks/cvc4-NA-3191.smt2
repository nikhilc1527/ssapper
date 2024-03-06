; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15650 () Bool)

(assert start!15650)

(declare-fun res!51159 () Bool)

(declare-fun e!53879 () Bool)

(assert (=> start!15650 (=> (not res!51159) (not e!53879))))

(declare-datatypes () ((List!915 (Cons!848 (h!7821 Int) (t!56331 List!915)) (Nil!850))))

(declare-datatypes () ((tuple2!532 (tuple2!533 (_1!305 List!915) (_2!305 Int)))))

(declare-fun d!63358 () tuple2!532)

(declare-fun inv!1861 (tuple2!532) Bool)

(assert (=> start!15650 (= res!51159 (inv!1861 d!63358))))

(assert (=> start!15650 e!53879))

(assert (=> start!15650 true))

(declare-fun b!98578 () Bool)

(declare-fun res!51160 () Bool)

(assert (=> b!98578 (=> (not res!51160) (not e!53879))))

(declare-fun n!1955 (tuple2!532) Int)

(assert (=> b!98578 (= res!51160 (= (n!1955 d!63358) 3))))

(declare-fun b!98579 () Bool)

(declare-fun res!51161 () Bool)

(assert (=> b!98579 (=> (not res!51161) (not e!53879))))

(declare-fun vc!38 () tuple2!532)

(declare-fun xs!1235 (tuple2!532) List!915)

(assert (=> b!98579 (= res!51161 (= vc!38 (tuple2!533 Nil!850 (+ (+ (h!7821 (xs!1235 d!63358)) (h!7821 (t!56331 (xs!1235 d!63358)))) (h!7821 (t!56331 (t!56331 (xs!1235 d!63358))))))))))

(declare-fun b!98580 () Bool)

(assert (=> b!98580 (= e!53879 (not (inv!1861 vc!38)))))

(assert (= (and start!15650 res!51159) b!98578))

(assert (= (and b!98578 res!51160) b!98579))

(assert (= (and b!98579 res!51161) b!98580))

(declare-fun m!92612 () Bool)

(assert (=> start!15650 m!92612))

(declare-fun m!92614 () Bool)

(assert (=> b!98578 m!92614))

(declare-fun m!92616 () Bool)

(assert (=> b!98579 m!92616))

(declare-fun m!92618 () Bool)

(assert (=> b!98580 m!92618))

(push 1)

(assert (not start!15650))

(assert (not b!98579))

(assert (not b!98578))

(assert (not b!98580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63361 () Bool)

(declare-fun length!26 (List!915) Int)

(assert (=> d!63361 (= (inv!1861 d!63358) (= (length!26 (_1!305 d!63358)) (_2!305 d!63358)))))

(declare-fun bs!43721 () Bool)

(assert (= bs!43721 d!63361))

(declare-fun m!92620 () Bool)

(assert (=> bs!43721 m!92620))

(assert (=> start!15650 d!63361))

(declare-fun d!63363 () Bool)

(assert (=> d!63363 (= (xs!1235 d!63358) (_1!305 d!63358))))

(assert (=> b!98579 d!63363))

(declare-fun d!63365 () Bool)

(assert (=> d!63365 (= (n!1955 d!63358) (_2!305 d!63358))))

(assert (=> b!98578 d!63365))

(declare-fun d!63367 () Bool)

(assert (=> d!63367 (= (inv!1861 vc!38) (= (length!26 (_1!305 vc!38)) (_2!305 vc!38)))))

(declare-fun bs!43722 () Bool)

(assert (= bs!43722 d!63367))

(declare-fun m!92622 () Bool)

(assert (=> bs!43722 m!92622))

(assert (=> b!98580 d!63367))

(push 1)

(assert (not d!63361))

(assert (not d!63367))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63369 () Bool)

(declare-fun size!1048 (List!915) Int)

(assert (=> d!63369 (= (length!26 (_1!305 d!63358)) (size!1048 (_1!305 d!63358)))))

(declare-fun bs!43723 () Bool)

(assert (= bs!43723 d!63369))

(declare-fun m!92624 () Bool)

(assert (=> bs!43723 m!92624))

(assert (=> d!63361 d!63369))

(declare-fun d!63371 () Bool)

(assert (=> d!63371 (= (length!26 (_1!305 vc!38)) (size!1048 (_1!305 vc!38)))))

(declare-fun bs!43724 () Bool)

(assert (= bs!43724 d!63371))

(declare-fun m!92626 () Bool)

(assert (=> bs!43724 m!92626))

(assert (=> d!63367 d!63371))

(push 1)

(assert (not d!63371))

(assert (not d!63369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63373 () Bool)

(declare-fun lt!23057 () Int)

(assert (=> d!63373 (>= lt!23057 0)))

(declare-fun e!53882 () Int)

(assert (=> d!63373 (= lt!23057 e!53882)))

(declare-fun c!24644 () Bool)

(assert (=> d!63373 (= c!24644 (is-Nil!850 (_1!305 vc!38)))))

(assert (=> d!63373 (= (size!1048 (_1!305 vc!38)) lt!23057)))

(declare-fun b!98585 () Bool)

(assert (=> b!98585 (= e!53882 0)))

(declare-fun b!98586 () Bool)

(assert (=> b!98586 (= e!53882 (+ 1 (size!1048 (t!56331 (_1!305 vc!38)))))))

(assert (= (and d!63373 c!24644) b!98585))

(assert (= (and d!63373 (not c!24644)) b!98586))

(declare-fun m!92628 () Bool)

(assert (=> b!98586 m!92628))

(assert (=> d!63371 d!63373))

(declare-fun d!63375 () Bool)

(declare-fun lt!23058 () Int)

(assert (=> d!63375 (>= lt!23058 0)))

(declare-fun e!53883 () Int)

(assert (=> d!63375 (= lt!23058 e!53883)))

(declare-fun c!24645 () Bool)

(assert (=> d!63375 (= c!24645 (is-Nil!850 (_1!305 d!63358)))))

(assert (=> d!63375 (= (size!1048 (_1!305 d!63358)) lt!23058)))

(declare-fun b!98587 () Bool)

(assert (=> b!98587 (= e!53883 0)))

(declare-fun b!98588 () Bool)

(assert (=> b!98588 (= e!53883 (+ 1 (size!1048 (t!56331 (_1!305 d!63358)))))))

(assert (= (and d!63375 c!24645) b!98587))

(assert (= (and d!63375 (not c!24645)) b!98588))

(declare-fun m!92630 () Bool)

(assert (=> b!98588 m!92630))

(assert (=> d!63369 d!63375))

(push 1)

(assert (not b!98586))

(assert (not b!98588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63377 () Bool)

(declare-fun lt!23059 () Int)

(assert (=> d!63377 (>= lt!23059 0)))

(declare-fun e!53884 () Int)

(assert (=> d!63377 (= lt!23059 e!53884)))

(declare-fun c!24646 () Bool)

(assert (=> d!63377 (= c!24646 (is-Nil!850 (t!56331 (_1!305 vc!38))))))

(assert (=> d!63377 (= (size!1048 (t!56331 (_1!305 vc!38))) lt!23059)))

(declare-fun b!98589 () Bool)

(assert (=> b!98589 (= e!53884 0)))

(declare-fun b!98590 () Bool)

(assert (=> b!98590 (= e!53884 (+ 1 (size!1048 (t!56331 (t!56331 (_1!305 vc!38))))))))

(assert (= (and d!63377 c!24646) b!98589))

(assert (= (and d!63377 (not c!24646)) b!98590))

(declare-fun m!92632 () Bool)

(assert (=> b!98590 m!92632))

(assert (=> b!98586 d!63377))

(declare-fun d!63379 () Bool)

(declare-fun lt!23060 () Int)

(assert (=> d!63379 (>= lt!23060 0)))

(declare-fun e!53885 () Int)

(assert (=> d!63379 (= lt!23060 e!53885)))

(declare-fun c!24647 () Bool)

(assert (=> d!63379 (= c!24647 (is-Nil!850 (t!56331 (_1!305 d!63358))))))

(assert (=> d!63379 (= (size!1048 (t!56331 (_1!305 d!63358))) lt!23060)))

(declare-fun b!98591 () Bool)

(assert (=> b!98591 (= e!53885 0)))

(declare-fun b!98592 () Bool)

(assert (=> b!98592 (= e!53885 (+ 1 (size!1048 (t!56331 (t!56331 (_1!305 d!63358))))))))

(assert (= (and d!63379 c!24647) b!98591))

(assert (= (and d!63379 (not c!24647)) b!98592))

(declare-fun m!92634 () Bool)

(assert (=> b!98592 m!92634))

(assert (=> b!98588 d!63379))

(push 1)

(assert (not b!98590))

(assert (not b!98592))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63381 () Bool)

(declare-fun lt!23061 () Int)

(assert (=> d!63381 (>= lt!23061 0)))

(declare-fun e!53886 () Int)

(assert (=> d!63381 (= lt!23061 e!53886)))

(declare-fun c!24648 () Bool)

(assert (=> d!63381 (= c!24648 (is-Nil!850 (t!56331 (t!56331 (_1!305 vc!38)))))))

(assert (=> d!63381 (= (size!1048 (t!56331 (t!56331 (_1!305 vc!38)))) lt!23061)))

(declare-fun b!98593 () Bool)

(assert (=> b!98593 (= e!53886 0)))

(declare-fun b!98594 () Bool)

(assert (=> b!98594 (= e!53886 (+ 1 (size!1048 (t!56331 (t!56331 (t!56331 (_1!305 vc!38)))))))))

(assert (= (and d!63381 c!24648) b!98593))

(assert (= (and d!63381 (not c!24648)) b!98594))

(declare-fun m!92636 () Bool)

(assert (=> b!98594 m!92636))

(assert (=> b!98590 d!63381))

(declare-fun d!63383 () Bool)

(declare-fun lt!23062 () Int)

(assert (=> d!63383 (>= lt!23062 0)))

(declare-fun e!53887 () Int)

(assert (=> d!63383 (= lt!23062 e!53887)))

(declare-fun c!24649 () Bool)

(assert (=> d!63383 (= c!24649 (is-Nil!850 (t!56331 (t!56331 (_1!305 d!63358)))))))

(assert (=> d!63383 (= (size!1048 (t!56331 (t!56331 (_1!305 d!63358)))) lt!23062)))

(declare-fun b!98595 () Bool)

(assert (=> b!98595 (= e!53887 0)))

(declare-fun b!98596 () Bool)

(assert (=> b!98596 (= e!53887 (+ 1 (size!1048 (t!56331 (t!56331 (t!56331 (_1!305 d!63358)))))))))

(assert (= (and d!63383 c!24649) b!98595))

(assert (= (and d!63383 (not c!24649)) b!98596))

(declare-fun m!92638 () Bool)

(assert (=> b!98596 m!92638))

(assert (=> b!98592 d!63383))

(push 1)

(assert (not b!98594))

(assert (not b!98596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63385 () Bool)

(declare-fun lt!23063 () Int)

(assert (=> d!63385 (>= lt!23063 0)))

(declare-fun e!53888 () Int)

(assert (=> d!63385 (= lt!23063 e!53888)))

(declare-fun c!24650 () Bool)

(assert (=> d!63385 (= c!24650 (is-Nil!850 (t!56331 (t!56331 (t!56331 (_1!305 vc!38))))))))

(assert (=> d!63385 (= (size!1048 (t!56331 (t!56331 (t!56331 (_1!305 vc!38))))) lt!23063)))

(declare-fun b!98597 () Bool)

(assert (=> b!98597 (= e!53888 0)))

(declare-fun b!98598 () Bool)

(assert (=> b!98598 (= e!53888 (+ 1 (size!1048 (t!56331 (t!56331 (t!56331 (t!56331 (_1!305 vc!38))))))))))

(assert (= (and d!63385 c!24650) b!98597))

(assert (= (and d!63385 (not c!24650)) b!98598))

(declare-fun m!92640 () Bool)

(assert (=> b!98598 m!92640))

(assert (=> b!98594 d!63385))

(declare-fun d!63387 () Bool)

(declare-fun lt!23064 () Int)

(assert (=> d!63387 (>= lt!23064 0)))

(declare-fun e!53889 () Int)

(assert (=> d!63387 (= lt!23064 e!53889)))

(declare-fun c!24651 () Bool)

(assert (=> d!63387 (= c!24651 (is-Nil!850 (t!56331 (t!56331 (t!56331 (_1!305 d!63358))))))))

(assert (=> d!63387 (= (size!1048 (t!56331 (t!56331 (t!56331 (_1!305 d!63358))))) lt!23064)))

(declare-fun b!98599 () Bool)

(assert (=> b!98599 (= e!53889 0)))

(declare-fun b!98600 () Bool)

(assert (=> b!98600 (= e!53889 (+ 1 (size!1048 (t!56331 (t!56331 (t!56331 (t!56331 (_1!305 d!63358))))))))))

(assert (= (and d!63387 c!24651) b!98599))

(assert (= (and d!63387 (not c!24651)) b!98600))

(declare-fun m!92642 () Bool)

(assert (=> b!98600 m!92642))

(assert (=> b!98596 d!63387))

(push 1)

(assert (not b!98598))

(assert (not b!98600))

(check-sat)

(get-model)

(pop 1)

