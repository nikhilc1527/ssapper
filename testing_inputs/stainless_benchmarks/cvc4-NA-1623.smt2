; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11294 () Bool)

(assert start!11294)

(declare-fun b!86264 () Bool)

(declare-fun res!44926 () Bool)

(declare-fun e!46800 () Bool)

(assert (=> b!86264 (=> (not res!44926) (not e!46800))))

(declare-datatypes () ((Color!7 (Red!6) (Black!6))))

(declare-datatypes () ((Tree!104 (Empty!187) (Node!148 (color!37 Color!7) (left!1647 Tree!104) (value!6794 Int) (right!1650 Tree!104)))))

(declare-fun t!48253 () Tree!104)

(declare-fun blackBalanced!0 (Tree!104) Bool)

(assert (=> b!86264 (= res!44926 (blackBalanced!0 t!48253))))

(declare-fun b!86265 () Bool)

(declare-fun res!44924 () Bool)

(assert (=> b!86265 (=> (not res!44924) (not e!46800))))

(declare-fun c!21324 () Color!7)

(declare-fun x!30395 () Int)

(declare-fun x!30388 () Int)

(declare-fun x!30394 () Int)

(declare-fun t!48308 () Tree!104)

(declare-fun a!1028 () Tree!104)

(assert (=> b!86265 (= res!44924 (and (not (is-Empty!187 t!48253)) (>= x!30388 (value!6794 t!48253)) (not (= x!30388 (value!6794 t!48253))) (= c!21324 (color!37 t!48253)) (= a!1028 (left!1647 t!48253)) (= x!30394 (value!6794 t!48253)) (= x!30395 x!30388) (= t!48308 (right!1650 t!48253))))))

(declare-fun b!86266 () Bool)

(declare-fun e!46801 () Bool)

(assert (=> b!86266 (= e!46800 e!46801)))

(declare-fun res!44927 () Bool)

(assert (=> b!86266 (=> res!44927 e!46801)))

(declare-fun redNodesHaveBlackChildren!0 (Tree!104) Bool)

(assert (=> b!86266 (= res!44927 (not (redNodesHaveBlackChildren!0 t!48308)))))

(declare-fun res!44925 () Bool)

(assert (=> start!11294 (=> (not res!44925) (not e!46800))))

(assert (=> start!11294 (= res!44925 (redNodesHaveBlackChildren!0 t!48253))))

(assert (=> start!11294 e!46800))

(assert (=> start!11294 true))

(declare-fun b!86267 () Bool)

(assert (=> b!86267 (= e!46801 (not (blackBalanced!0 t!48308)))))

(assert (= (and start!11294 res!44925) b!86264))

(assert (= (and b!86264 res!44926) b!86265))

(assert (= (and b!86265 res!44924) b!86266))

(assert (= (and b!86266 (not res!44927)) b!86267))

(declare-fun m!82082 () Bool)

(assert (=> b!86264 m!82082))

(declare-fun m!82084 () Bool)

(assert (=> b!86266 m!82084))

(declare-fun m!82086 () Bool)

(assert (=> start!11294 m!82086))

(declare-fun m!82088 () Bool)

(assert (=> b!86267 m!82088))

(push 1)

(assert (not b!86267))

(assert (not start!11294))

(assert (not b!86264))

(assert (not b!86266))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57669 () Bool)

(declare-fun res!44934 () Bool)

(declare-fun e!46807 () Bool)

(assert (=> d!57669 (=> res!44934 e!46807)))

(assert (=> d!57669 (= res!44934 (not (is-Node!148 t!48308)))))

(assert (=> d!57669 (= (blackBalanced!0 t!48308) e!46807)))

(declare-fun b!86274 () Bool)

(declare-fun e!46806 () Bool)

(assert (=> b!86274 (= e!46807 e!46806)))

(declare-fun res!44936 () Bool)

(assert (=> b!86274 (=> (not res!44936) (not e!46806))))

(assert (=> b!86274 (= res!44936 (blackBalanced!0 (left!1647 t!48308)))))

(declare-fun b!86275 () Bool)

(declare-fun res!44935 () Bool)

(assert (=> b!86275 (=> (not res!44935) (not e!46806))))

(assert (=> b!86275 (= res!44935 (blackBalanced!0 (right!1650 t!48308)))))

(declare-fun b!86276 () Bool)

(declare-fun blackHeight!0 (Tree!104) Int)

(assert (=> b!86276 (= e!46806 (= (blackHeight!0 (left!1647 t!48308)) (blackHeight!0 (right!1650 t!48308))))))

(assert (= (and d!57669 (not res!44934)) b!86274))

(assert (= (and b!86274 res!44936) b!86275))

(assert (= (and b!86275 res!44935) b!86276))

(declare-fun m!82090 () Bool)

(assert (=> b!86274 m!82090))

(declare-fun m!82092 () Bool)

(assert (=> b!86275 m!82092))

(declare-fun m!82094 () Bool)

(assert (=> b!86276 m!82094))

(declare-fun m!82096 () Bool)

(assert (=> b!86276 m!82096))

(assert (=> b!86267 d!57669))

(declare-fun b!86291 () Bool)

(declare-fun e!46819 () Bool)

(assert (=> b!86291 (= e!46819 (redNodesHaveBlackChildren!0 (right!1650 t!48253)))))

(declare-fun b!86292 () Bool)

(declare-fun res!44950 () Bool)

(declare-fun e!46818 () Bool)

(assert (=> b!86292 (=> (not res!44950) (not e!46818))))

(assert (=> b!86292 (= res!44950 (redNodesHaveBlackChildren!0 (left!1647 t!48253)))))

(declare-fun b!86293 () Bool)

(declare-fun e!46817 () Bool)

(declare-fun e!46816 () Bool)

(assert (=> b!86293 (= e!46817 e!46816)))

(declare-fun c!21385 () Bool)

(assert (=> b!86293 (= c!21385 (and (is-Node!148 t!48253) (is-Black!6 (color!37 t!48253))))))

(declare-fun d!57671 () Bool)

(declare-fun res!44948 () Bool)

(assert (=> d!57671 (=> res!44948 e!46817)))

(assert (=> d!57671 (= res!44948 (is-Empty!187 t!48253))))

(assert (=> d!57671 (= (redNodesHaveBlackChildren!0 t!48253) e!46817)))

(declare-fun b!86294 () Bool)

(declare-fun res!44949 () Bool)

(assert (=> b!86294 (=> (not res!44949) (not e!46818))))

(declare-fun isBlack!0 (Tree!104) Bool)

(assert (=> b!86294 (= res!44949 (isBlack!0 (right!1650 t!48253)))))

(declare-fun b!86295 () Bool)

(assert (=> b!86295 (= e!46816 e!46819)))

(declare-fun res!44951 () Bool)

(assert (=> b!86295 (=> (not res!44951) (not e!46819))))

(assert (=> b!86295 (= res!44951 (redNodesHaveBlackChildren!0 (left!1647 t!48253)))))

(declare-fun b!86296 () Bool)

(assert (=> b!86296 (= e!46818 (redNodesHaveBlackChildren!0 (right!1650 t!48253)))))

(declare-fun b!86297 () Bool)

(assert (=> b!86297 (= e!46816 e!46818)))

(declare-fun res!44947 () Bool)

(assert (=> b!86297 (=> (not res!44947) (not e!46818))))

(assert (=> b!86297 (= res!44947 (isBlack!0 (left!1647 t!48253)))))

(assert (= (and d!57671 (not res!44948)) b!86293))

(assert (= (and b!86295 res!44951) b!86291))

(assert (= (and b!86297 res!44947) b!86294))

(assert (= (and b!86294 res!44949) b!86292))

(assert (= (and b!86292 res!44950) b!86296))

(assert (= (and b!86293 c!21385) b!86295))

(assert (= (and b!86293 (not c!21385)) b!86297))

(declare-fun m!82098 () Bool)

(assert (=> b!86296 m!82098))

(declare-fun m!82100 () Bool)

(assert (=> b!86295 m!82100))

(assert (=> b!86292 m!82100))

(declare-fun m!82102 () Bool)

(assert (=> b!86297 m!82102))

(declare-fun m!82104 () Bool)

(assert (=> b!86294 m!82104))

(assert (=> b!86291 m!82098))

(assert (=> start!11294 d!57671))

(declare-fun d!57673 () Bool)

(declare-fun res!44952 () Bool)

(declare-fun e!46821 () Bool)

(assert (=> d!57673 (=> res!44952 e!46821)))

(assert (=> d!57673 (= res!44952 (not (is-Node!148 t!48253)))))

(assert (=> d!57673 (= (blackBalanced!0 t!48253) e!46821)))

(declare-fun b!86298 () Bool)

(declare-fun e!46820 () Bool)

(assert (=> b!86298 (= e!46821 e!46820)))

(declare-fun res!44954 () Bool)

(assert (=> b!86298 (=> (not res!44954) (not e!46820))))

(assert (=> b!86298 (= res!44954 (blackBalanced!0 (left!1647 t!48253)))))

(declare-fun b!86299 () Bool)

(declare-fun res!44953 () Bool)

(assert (=> b!86299 (=> (not res!44953) (not e!46820))))

(assert (=> b!86299 (= res!44953 (blackBalanced!0 (right!1650 t!48253)))))

(declare-fun b!86300 () Bool)

(assert (=> b!86300 (= e!46820 (= (blackHeight!0 (left!1647 t!48253)) (blackHeight!0 (right!1650 t!48253))))))

(assert (= (and d!57673 (not res!44952)) b!86298))

(assert (= (and b!86298 res!44954) b!86299))

(assert (= (and b!86299 res!44953) b!86300))

(declare-fun m!82106 () Bool)

(assert (=> b!86298 m!82106))

(declare-fun m!82108 () Bool)

(assert (=> b!86299 m!82108))

(declare-fun m!82110 () Bool)

(assert (=> b!86300 m!82110))

(declare-fun m!82112 () Bool)

(assert (=> b!86300 m!82112))

(assert (=> b!86264 d!57673))

(declare-fun b!86301 () Bool)

(declare-fun e!46825 () Bool)

(assert (=> b!86301 (= e!46825 (redNodesHaveBlackChildren!0 (right!1650 t!48308)))))

(declare-fun b!86302 () Bool)

(declare-fun res!44958 () Bool)

(declare-fun e!46824 () Bool)

(assert (=> b!86302 (=> (not res!44958) (not e!46824))))

(assert (=> b!86302 (= res!44958 (redNodesHaveBlackChildren!0 (left!1647 t!48308)))))

(declare-fun b!86303 () Bool)

(declare-fun e!46823 () Bool)

(declare-fun e!46822 () Bool)

(assert (=> b!86303 (= e!46823 e!46822)))

(declare-fun c!21386 () Bool)

(assert (=> b!86303 (= c!21386 (and (is-Node!148 t!48308) (is-Black!6 (color!37 t!48308))))))

(declare-fun d!57675 () Bool)

(declare-fun res!44956 () Bool)

(assert (=> d!57675 (=> res!44956 e!46823)))

(assert (=> d!57675 (= res!44956 (is-Empty!187 t!48308))))

(assert (=> d!57675 (= (redNodesHaveBlackChildren!0 t!48308) e!46823)))

(declare-fun b!86304 () Bool)

(declare-fun res!44957 () Bool)

(assert (=> b!86304 (=> (not res!44957) (not e!46824))))

(assert (=> b!86304 (= res!44957 (isBlack!0 (right!1650 t!48308)))))

(declare-fun b!86305 () Bool)

(assert (=> b!86305 (= e!46822 e!46825)))

(declare-fun res!44959 () Bool)

(assert (=> b!86305 (=> (not res!44959) (not e!46825))))

(assert (=> b!86305 (= res!44959 (redNodesHaveBlackChildren!0 (left!1647 t!48308)))))

(declare-fun b!86306 () Bool)

(assert (=> b!86306 (= e!46824 (redNodesHaveBlackChildren!0 (right!1650 t!48308)))))

(declare-fun b!86307 () Bool)

(assert (=> b!86307 (= e!46822 e!46824)))

(declare-fun res!44955 () Bool)

(assert (=> b!86307 (=> (not res!44955) (not e!46824))))

(assert (=> b!86307 (= res!44955 (isBlack!0 (left!1647 t!48308)))))

(assert (= (and d!57675 (not res!44956)) b!86303))

(assert (= (and b!86305 res!44959) b!86301))

(assert (= (and b!86307 res!44955) b!86304))

(assert (= (and b!86304 res!44957) b!86302))

(assert (= (and b!86302 res!44958) b!86306))

(assert (= (and b!86303 c!21386) b!86305))

(assert (= (and b!86303 (not c!21386)) b!86307))

(declare-fun m!82114 () Bool)

(assert (=> b!86306 m!82114))

(declare-fun m!82116 () Bool)

(assert (=> b!86305 m!82116))

(assert (=> b!86302 m!82116))

(declare-fun m!82118 () Bool)

(assert (=> b!86307 m!82118))

(declare-fun m!82120 () Bool)

(assert (=> b!86304 m!82120))

(assert (=> b!86301 m!82114))

(assert (=> b!86266 d!57675))

(push 1)

(assert (not b!86304))

(assert (not b!86300))

(assert (not b!86294))

(assert (not b!86306))

(assert (not b!86296))

(assert (not b!86299))

(assert (not b!86307))

(assert (not b!86291))

(assert (not b!86305))

(assert (not b!86274))

(assert (not b!86275))

(assert (not b!86295))

(assert (not b!86301))

(assert (not b!86297))

(assert (not b!86298))

(assert (not b!86276))

(assert (not b!86292))

(assert (not b!86302))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

