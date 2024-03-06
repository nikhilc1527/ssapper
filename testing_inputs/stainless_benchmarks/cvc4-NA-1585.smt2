; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11008 () Bool)

(assert start!11008)

(declare-fun b!84030 () Bool)

(declare-fun e!45560 () Bool)

(declare-datatypes () ((List!683 (Cons!640 (h!1012 Int) (t!47935 List!683)) (Nil!642))))

(declare-fun l1!433 () List!683)

(declare-fun l2!426 () List!683)

(declare-fun isSorted!1 (List!683) Bool)

(declare-fun ++!87 (List!683 List!683) List!683)

(assert (=> b!84030 (= e!45560 (not (isSorted!1 (++!87 l1!433 l2!426))))))

(declare-fun b!84031 () Bool)

(declare-fun res!43327 () Bool)

(assert (=> b!84031 (=> (not res!43327) (not e!45560))))

(assert (=> b!84031 (= res!43327 (not (is-Cons!640 l1!433)))))

(declare-fun res!43329 () Bool)

(assert (=> start!11008 (=> (not res!43329) (not e!45560))))

(assert (=> start!11008 (= res!43329 (isSorted!1 l1!433))))

(assert (=> start!11008 e!45560))

(assert (=> start!11008 true))

(declare-fun b!84032 () Bool)

(declare-fun res!43326 () Bool)

(assert (=> b!84032 (=> (not res!43326) (not e!45560))))

(declare-fun e!45561 () Bool)

(assert (=> b!84032 (= res!43326 e!45561)))

(declare-fun res!43328 () Bool)

(assert (=> b!84032 (=> res!43328 e!45561)))

(declare-fun isEmpty!692 (List!683) Bool)

(assert (=> b!84032 (= res!43328 (isEmpty!692 l1!433))))

(declare-fun b!84033 () Bool)

(declare-fun res!43325 () Bool)

(assert (=> b!84033 (=> res!43325 e!45561)))

(assert (=> b!84033 (= res!43325 (isEmpty!692 l2!426))))

(declare-fun b!84034 () Bool)

(declare-fun res!43330 () Bool)

(assert (=> b!84034 (=> (not res!43330) (not e!45560))))

(assert (=> b!84034 (= res!43330 (isSorted!1 l2!426))))

(declare-fun b!84035 () Bool)

(declare-fun last!30 (List!683) Int)

(declare-fun head!1066 (List!683) Int)

(assert (=> b!84035 (= e!45561 (<= (last!30 l1!433) (head!1066 l2!426)))))

(assert (= (and start!11008 res!43329) b!84034))

(assert (= (and b!84034 res!43330) b!84032))

(assert (= (and b!84032 (not res!43328)) b!84033))

(assert (= (and b!84033 (not res!43325)) b!84035))

(assert (= (and b!84032 res!43326) b!84031))

(assert (= (and b!84031 res!43327) b!84030))

(declare-fun m!79884 () Bool)

(assert (=> b!84035 m!79884))

(declare-fun m!79886 () Bool)

(assert (=> b!84035 m!79886))

(declare-fun m!79888 () Bool)

(assert (=> b!84030 m!79888))

(assert (=> b!84030 m!79888))

(declare-fun m!79890 () Bool)

(assert (=> b!84030 m!79890))

(declare-fun m!79892 () Bool)

(assert (=> b!84032 m!79892))

(declare-fun m!79894 () Bool)

(assert (=> b!84033 m!79894))

(declare-fun m!79896 () Bool)

(assert (=> start!11008 m!79896))

(declare-fun m!79898 () Bool)

(assert (=> b!84034 m!79898))

(push 1)

(assert (not b!84035))

(assert (not b!84034))

(assert (not b!84032))

(assert (not b!84030))

(assert (not start!11008))

(assert (not b!84033))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!56689 () Bool)

(declare-fun lt!19585 () Int)

(declare-fun contains!60 (List!683 Int) Bool)

(assert (=> d!56689 (contains!60 l1!433 lt!19585)))

(declare-fun e!45564 () Int)

(assert (=> d!56689 (= lt!19585 e!45564)))

(declare-fun c!21006 () Bool)

(assert (=> d!56689 (= c!21006 (and (is-Cons!640 l1!433) (is-Nil!642 (t!47935 l1!433))))))

(assert (=> d!56689 (not (isEmpty!692 l1!433))))

(assert (=> d!56689 (= (last!30 l1!433) lt!19585)))

(declare-fun b!84040 () Bool)

(assert (=> b!84040 (= e!45564 (h!1012 l1!433))))

(declare-fun b!84041 () Bool)

(assert (=> b!84041 (= e!45564 (last!30 (t!47935 l1!433)))))

(assert (= (and d!56689 c!21006) b!84040))

(assert (= (and d!56689 (not c!21006)) b!84041))

(declare-fun m!79900 () Bool)

(assert (=> d!56689 m!79900))

(assert (=> d!56689 m!79892))

(declare-fun m!79902 () Bool)

(assert (=> b!84041 m!79902))

(assert (=> b!84035 d!56689))

(declare-fun d!56691 () Bool)

(assert (=> d!56691 (= (head!1066 l2!426) (h!1012 l2!426))))

(assert (=> b!84035 d!56691))

(declare-fun d!56693 () Bool)

(declare-fun res!43335 () Bool)

(declare-fun e!45569 () Bool)

(assert (=> d!56693 (=> res!43335 e!45569)))

(assert (=> d!56693 (= res!43335 (not (and (is-Cons!640 l2!426) (is-Cons!640 (t!47935 l2!426)))))))

(assert (=> d!56693 (= (isSorted!1 l2!426) e!45569)))

(declare-fun b!84046 () Bool)

(declare-fun e!45570 () Bool)

(assert (=> b!84046 (= e!45569 e!45570)))

(declare-fun res!43336 () Bool)

(assert (=> b!84046 (=> (not res!43336) (not e!45570))))

(assert (=> b!84046 (= res!43336 (<= (h!1012 l2!426) (h!1012 (t!47935 l2!426))))))

(declare-fun b!84047 () Bool)

(assert (=> b!84047 (= e!45570 (isSorted!1 (t!47935 l2!426)))))

(assert (= (and d!56693 (not res!43335)) b!84046))

(assert (= (and b!84046 res!43336) b!84047))

(declare-fun m!79904 () Bool)

(assert (=> b!84047 m!79904))

(assert (=> b!84034 d!56693))

(declare-fun d!56695 () Bool)

(assert (=> d!56695 (= (isEmpty!692 l1!433) (is-Nil!642 l1!433))))

(assert (=> b!84032 d!56695))

(declare-fun d!56697 () Bool)

(declare-fun res!43337 () Bool)

(declare-fun e!45571 () Bool)

(assert (=> d!56697 (=> res!43337 e!45571)))

(assert (=> d!56697 (= res!43337 (not (and (is-Cons!640 l1!433) (is-Cons!640 (t!47935 l1!433)))))))

(assert (=> d!56697 (= (isSorted!1 l1!433) e!45571)))

(declare-fun b!84048 () Bool)

(declare-fun e!45572 () Bool)

(assert (=> b!84048 (= e!45571 e!45572)))

(declare-fun res!43338 () Bool)

(assert (=> b!84048 (=> (not res!43338) (not e!45572))))

(assert (=> b!84048 (= res!43338 (<= (h!1012 l1!433) (h!1012 (t!47935 l1!433))))))

(declare-fun b!84049 () Bool)

(assert (=> b!84049 (= e!45572 (isSorted!1 (t!47935 l1!433)))))

(assert (= (and d!56697 (not res!43337)) b!84048))

(assert (= (and b!84048 res!43338) b!84049))

(declare-fun m!79906 () Bool)

(assert (=> b!84049 m!79906))

(assert (=> start!11008 d!56697))

(declare-fun d!56699 () Bool)

(assert (=> d!56699 (= (isEmpty!692 l2!426) (is-Nil!642 l2!426))))

(assert (=> b!84033 d!56699))

(declare-fun d!56701 () Bool)

(declare-fun res!43339 () Bool)

(declare-fun e!45573 () Bool)

(assert (=> d!56701 (=> res!43339 e!45573)))

(assert (=> d!56701 (= res!43339 (not (and (is-Cons!640 (++!87 l1!433 l2!426)) (is-Cons!640 (t!47935 (++!87 l1!433 l2!426))))))))

(assert (=> d!56701 (= (isSorted!1 (++!87 l1!433 l2!426)) e!45573)))

(declare-fun b!84050 () Bool)

(declare-fun e!45574 () Bool)

(assert (=> b!84050 (= e!45573 e!45574)))

(declare-fun res!43340 () Bool)

(assert (=> b!84050 (=> (not res!43340) (not e!45574))))

(assert (=> b!84050 (= res!43340 (<= (h!1012 (++!87 l1!433 l2!426)) (h!1012 (t!47935 (++!87 l1!433 l2!426)))))))

(declare-fun b!84051 () Bool)

(assert (=> b!84051 (= e!45574 (isSorted!1 (t!47935 (++!87 l1!433 l2!426))))))

(assert (= (and d!56701 (not res!43339)) b!84050))

(assert (= (and b!84050 res!43340) b!84051))

(declare-fun m!79908 () Bool)

(assert (=> b!84051 m!79908))

(assert (=> b!84030 d!56701))

(declare-fun b!84061 () Bool)

(declare-fun e!45579 () List!683)

(assert (=> b!84061 (= e!45579 (Cons!640 (h!1012 l1!433) (++!87 (t!47935 l1!433) l2!426)))))

(declare-fun lt!19588 () List!683)

(declare-fun b!84063 () Bool)

(declare-fun e!45580 () Bool)

(assert (=> b!84063 (= e!45580 (or (not (= l2!426 Nil!642)) (= lt!19588 l1!433)))))

(declare-fun b!84060 () Bool)

(assert (=> b!84060 (= e!45579 l2!426)))

(declare-fun d!56703 () Bool)

(assert (=> d!56703 e!45580))

(declare-fun res!43346 () Bool)

(assert (=> d!56703 (=> (not res!43346) (not e!45580))))

(declare-fun content!138 (List!683) (Set Int))

(assert (=> d!56703 (= res!43346 (= (content!138 lt!19588) (union (content!138 l1!433) (content!138 l2!426))))))

(assert (=> d!56703 (= lt!19588 e!45579)))

(declare-fun c!21009 () Bool)

(assert (=> d!56703 (= c!21009 (is-Nil!642 l1!433))))

(assert (=> d!56703 (= (++!87 l1!433 l2!426) lt!19588)))

(declare-fun b!84062 () Bool)

(declare-fun res!43347 () Bool)

(assert (=> b!84062 (=> (not res!43347) (not e!45580))))

(declare-fun size!667 (List!683) Int)

(assert (=> b!84062 (= res!43347 (= (size!667 lt!19588) (+ (size!667 l1!433) (size!667 l2!426))))))

(assert (= (and d!56703 c!21009) b!84060))

(assert (= (and d!56703 (not c!21009)) b!84061))

(assert (= (and d!56703 res!43346) b!84062))

(assert (= (and b!84062 res!43347) b!84063))

(declare-fun m!79910 () Bool)

(assert (=> b!84061 m!79910))

(declare-fun m!79912 () Bool)

(assert (=> d!56703 m!79912))

(declare-fun m!79914 () Bool)

(assert (=> d!56703 m!79914))

(declare-fun m!79916 () Bool)

(assert (=> d!56703 m!79916))

(declare-fun m!79918 () Bool)

(assert (=> b!84062 m!79918))

(declare-fun m!79920 () Bool)

(assert (=> b!84062 m!79920))

(declare-fun m!79922 () Bool)

(assert (=> b!84062 m!79922))

(assert (=> b!84030 d!56703))

(push 1)

(assert (not b!84062))

(assert (not b!84051))

(assert (not b!84049))

(assert (not b!84061))

(assert (not b!84047))

(assert (not d!56703))

(assert (not d!56689))

(assert (not b!84041))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

