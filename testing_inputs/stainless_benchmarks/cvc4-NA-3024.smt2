; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15184 () Bool)

(assert start!15184)

(declare-fun res!49382 () Bool)

(declare-fun e!51735 () Bool)

(assert (=> start!15184 (=> res!49382 e!51735)))

(declare-datatypes () ((P!81 (Charlie!81) (Alice!81) (Bob!81))))

(declare-datatypes () ((tuple2!508 (tuple2!509 (_1!293 P!81) (_2!293 P!81)))))

(declare-datatypes () ((List!883 (Cons!821 (h!6674 tuple2!508) (t!54977 List!883)) (Nil!823))))

(declare-fun lt!21737 () List!883)

(declare-fun lt!21738 () List!883)

(declare-fun size!994 (List!883) Int)

(assert (=> start!15184 (= res!49382 (> (size!994 lt!21737) (size!994 lt!21738)))))

(assert (=> start!15184 (= lt!21737 (Cons!821 (h!6674 lt!21738) Nil!823))))

(declare-fun lt!21736 () List!883)

(assert (=> start!15184 (= lt!21738 (t!54977 (Cons!821 (tuple2!509 Alice!81 Charlie!81) (Cons!821 (h!6674 lt!21736) (Cons!821 (h!6674 (t!54977 lt!21736)) Nil!823)))))))

(assert (=> start!15184 (= lt!21736 (Cons!821 (tuple2!509 Charlie!81 Alice!81) (Cons!821 (tuple2!509 Charlie!81 Charlie!81) Nil!823)))))

(assert (=> start!15184 e!51735))

(declare-fun b!94806 () Bool)

(declare-fun res!49383 () Bool)

(assert (=> b!94806 (=> res!49383 e!51735)))

(declare-fun content!204 (List!883) (Set tuple2!508))

(assert (=> b!94806 (= res!49383 (not (subset (content!204 lt!21737) (content!204 lt!21738))))))

(declare-fun b!94807 () Bool)

(declare-fun lambda!11199 () Int)

(declare-fun forall!81 (List!883 Int) Bool)

(assert (=> b!94807 (= e!51735 (not (forall!81 lt!21737 lambda!11199)))))

(assert (= (and start!15184 (not res!49382)) b!94806))

(assert (= (and b!94806 (not res!49383)) b!94807))

(declare-fun m!90063 () Bool)

(assert (=> start!15184 m!90063))

(declare-fun m!90065 () Bool)

(assert (=> start!15184 m!90065))

(declare-fun m!90067 () Bool)

(assert (=> b!94806 m!90067))

(declare-fun m!90069 () Bool)

(assert (=> b!94806 m!90069))

(declare-fun m!90071 () Bool)

(assert (=> b!94807 m!90071))

(push 1)

(assert (not start!15184))

(assert (not b!94807))

(assert (not b!94806))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61618 () Bool)

(declare-fun lt!21741 () Int)

(assert (=> d!61618 (>= lt!21741 0)))

(declare-fun e!51738 () Int)

(assert (=> d!61618 (= lt!21741 e!51738)))

(declare-fun c!23291 () Bool)

(assert (=> d!61618 (= c!23291 (is-Nil!823 lt!21737))))

(assert (=> d!61618 (= (size!994 lt!21737) lt!21741)))

(declare-fun b!94812 () Bool)

(assert (=> b!94812 (= e!51738 0)))

(declare-fun b!94813 () Bool)

(assert (=> b!94813 (= e!51738 (+ 1 (size!994 (t!54977 lt!21737))))))

(assert (= (and d!61618 c!23291) b!94812))

(assert (= (and d!61618 (not c!23291)) b!94813))

(declare-fun m!90073 () Bool)

(assert (=> b!94813 m!90073))

(assert (=> start!15184 d!61618))

(declare-fun d!61620 () Bool)

(declare-fun lt!21742 () Int)

(assert (=> d!61620 (>= lt!21742 0)))

(declare-fun e!51739 () Int)

(assert (=> d!61620 (= lt!21742 e!51739)))

(declare-fun c!23292 () Bool)

(assert (=> d!61620 (= c!23292 (is-Nil!823 lt!21738))))

(assert (=> d!61620 (= (size!994 lt!21738) lt!21742)))

(declare-fun b!94814 () Bool)

(assert (=> b!94814 (= e!51739 0)))

(declare-fun b!94815 () Bool)

(assert (=> b!94815 (= e!51739 (+ 1 (size!994 (t!54977 lt!21738))))))

(assert (= (and d!61620 c!23292) b!94814))

(assert (= (and d!61620 (not c!23292)) b!94815))

(declare-fun m!90075 () Bool)

(assert (=> b!94815 m!90075))

(assert (=> start!15184 d!61620))

(declare-fun d!61622 () Bool)

(declare-fun res!49388 () Bool)

(declare-fun e!51744 () Bool)

(assert (=> d!61622 (=> res!49388 e!51744)))

(assert (=> d!61622 (= res!49388 (is-Nil!823 lt!21737))))

(assert (=> d!61622 (= (forall!81 lt!21737 lambda!11199) e!51744)))

(declare-fun b!94820 () Bool)

(declare-fun e!51745 () Bool)

(assert (=> b!94820 (= e!51744 e!51745)))

(declare-fun res!49389 () Bool)

(assert (=> b!94820 (=> (not res!49389) (not e!51745))))

(declare-fun dynLambda!1151 (Int tuple2!508) Bool)

(assert (=> b!94820 (= res!49389 (dynLambda!1151 lambda!11199 (h!6674 lt!21737)))))

(declare-fun b!94821 () Bool)

(assert (=> b!94821 (= e!51745 (forall!81 (t!54977 lt!21737) lambda!11199))))

(assert (= (and d!61622 (not res!49388)) b!94820))

(assert (= (and b!94820 res!49389) b!94821))

(declare-fun b_lambda!18983 () Bool)

(assert (=> (not b_lambda!18983) (not b!94820)))

(declare-fun m!90077 () Bool)

(assert (=> b!94820 m!90077))

(declare-fun m!90079 () Bool)

(assert (=> b!94821 m!90079))

(assert (=> b!94807 d!61622))

(declare-fun d!61624 () Bool)

(declare-fun c!23295 () Bool)

(assert (=> d!61624 (= c!23295 (is-Nil!823 lt!21737))))

(declare-fun e!51748 () (Set tuple2!508))

(assert (=> d!61624 (= (content!204 lt!21737) e!51748)))

(declare-fun b!94826 () Bool)

(assert (=> b!94826 (= e!51748 (as emptyset (Set tuple2!508)))))

(declare-fun b!94827 () Bool)

(assert (=> b!94827 (= e!51748 (union (insert (h!6674 lt!21737) (as emptyset (Set tuple2!508))) (content!204 (t!54977 lt!21737))))))

(assert (= (and d!61624 c!23295) b!94826))

(assert (= (and d!61624 (not c!23295)) b!94827))

(declare-fun m!90081 () Bool)

(assert (=> b!94827 m!90081))

(declare-fun m!90083 () Bool)

(assert (=> b!94827 m!90083))

(assert (=> b!94806 d!61624))

(declare-fun d!61626 () Bool)

(declare-fun c!23296 () Bool)

(assert (=> d!61626 (= c!23296 (is-Nil!823 lt!21738))))

(declare-fun e!51749 () (Set tuple2!508))

(assert (=> d!61626 (= (content!204 lt!21738) e!51749)))

(declare-fun b!94828 () Bool)

(assert (=> b!94828 (= e!51749 (as emptyset (Set tuple2!508)))))

(declare-fun b!94829 () Bool)

(assert (=> b!94829 (= e!51749 (union (insert (h!6674 lt!21738) (as emptyset (Set tuple2!508))) (content!204 (t!54977 lt!21738))))))

(assert (= (and d!61626 c!23296) b!94828))

(assert (= (and d!61626 (not c!23296)) b!94829))

(declare-fun m!90085 () Bool)

(assert (=> b!94829 m!90085))

(declare-fun m!90087 () Bool)

(assert (=> b!94829 m!90087))

(assert (=> b!94806 d!61626))

(declare-fun b_lambda!18985 () Bool)

(assert (= b_lambda!18983 (or b!94807 b_lambda!18985)))

(declare-fun bs!43198 () Bool)

(declare-fun d!61628 () Bool)

(assert (= bs!43198 (and d!61628 b!94807)))

(assert (=> bs!43198 (= (dynLambda!1151 lambda!11199 (h!6674 lt!21737)) (not (= (_1!293 (h!6674 lt!21737)) (_2!293 (h!6674 lt!21737)))))))

(assert (=> b!94820 d!61628))

(push 1)

(assert (not b!94813))

(assert (not b!94829))

(assert (not b!94827))

(assert (not b!94815))

(assert (not b_lambda!18985))

(assert (not b!94821))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61630 () Bool)

(declare-fun c!23297 () Bool)

(assert (=> d!61630 (= c!23297 (is-Nil!823 (t!54977 lt!21737)))))

(declare-fun e!51750 () (Set tuple2!508))

(assert (=> d!61630 (= (content!204 (t!54977 lt!21737)) e!51750)))

(declare-fun b!94830 () Bool)

(assert (=> b!94830 (= e!51750 (as emptyset (Set tuple2!508)))))

(declare-fun b!94831 () Bool)

(assert (=> b!94831 (= e!51750 (union (insert (h!6674 (t!54977 lt!21737)) (as emptyset (Set tuple2!508))) (content!204 (t!54977 (t!54977 lt!21737)))))))

(assert (= (and d!61630 c!23297) b!94830))

(assert (= (and d!61630 (not c!23297)) b!94831))

(declare-fun m!90089 () Bool)

(assert (=> b!94831 m!90089))

(declare-fun m!90091 () Bool)

(assert (=> b!94831 m!90091))

(assert (=> b!94827 d!61630))

(declare-fun d!61632 () Bool)

(declare-fun lt!21743 () Int)

(assert (=> d!61632 (>= lt!21743 0)))

(declare-fun e!51751 () Int)

(assert (=> d!61632 (= lt!21743 e!51751)))

(declare-fun c!23298 () Bool)

(assert (=> d!61632 (= c!23298 (is-Nil!823 (t!54977 lt!21738)))))

(assert (=> d!61632 (= (size!994 (t!54977 lt!21738)) lt!21743)))

(declare-fun b!94832 () Bool)

(assert (=> b!94832 (= e!51751 0)))

(declare-fun b!94833 () Bool)

(assert (=> b!94833 (= e!51751 (+ 1 (size!994 (t!54977 (t!54977 lt!21738)))))))

(assert (= (and d!61632 c!23298) b!94832))

(assert (= (and d!61632 (not c!23298)) b!94833))

(declare-fun m!90093 () Bool)

(assert (=> b!94833 m!90093))

(assert (=> b!94815 d!61632))

(declare-fun d!61634 () Bool)

(declare-fun c!23299 () Bool)

(assert (=> d!61634 (= c!23299 (is-Nil!823 (t!54977 lt!21738)))))

(declare-fun e!51752 () (Set tuple2!508))

(assert (=> d!61634 (= (content!204 (t!54977 lt!21738)) e!51752)))

(declare-fun b!94834 () Bool)

(assert (=> b!94834 (= e!51752 (as emptyset (Set tuple2!508)))))

(declare-fun b!94835 () Bool)

(assert (=> b!94835 (= e!51752 (union (insert (h!6674 (t!54977 lt!21738)) (as emptyset (Set tuple2!508))) (content!204 (t!54977 (t!54977 lt!21738)))))))

(assert (= (and d!61634 c!23299) b!94834))

(assert (= (and d!61634 (not c!23299)) b!94835))

(declare-fun m!90095 () Bool)

(assert (=> b!94835 m!90095))

(declare-fun m!90097 () Bool)

(assert (=> b!94835 m!90097))

(assert (=> b!94829 d!61634))

(declare-fun d!61636 () Bool)

(declare-fun lt!21744 () Int)

(assert (=> d!61636 (>= lt!21744 0)))

(declare-fun e!51753 () Int)

(assert (=> d!61636 (= lt!21744 e!51753)))

(declare-fun c!23300 () Bool)

(assert (=> d!61636 (= c!23300 (is-Nil!823 (t!54977 lt!21737)))))

(assert (=> d!61636 (= (size!994 (t!54977 lt!21737)) lt!21744)))

(declare-fun b!94836 () Bool)

(assert (=> b!94836 (= e!51753 0)))

(declare-fun b!94837 () Bool)

(assert (=> b!94837 (= e!51753 (+ 1 (size!994 (t!54977 (t!54977 lt!21737)))))))

(assert (= (and d!61636 c!23300) b!94836))

(assert (= (and d!61636 (not c!23300)) b!94837))

(declare-fun m!90099 () Bool)

(assert (=> b!94837 m!90099))

(assert (=> b!94813 d!61636))

(declare-fun d!61638 () Bool)

(declare-fun res!49390 () Bool)

(declare-fun e!51754 () Bool)

(assert (=> d!61638 (=> res!49390 e!51754)))

(assert (=> d!61638 (= res!49390 (is-Nil!823 (t!54977 lt!21737)))))

(assert (=> d!61638 (= (forall!81 (t!54977 lt!21737) lambda!11199) e!51754)))

(declare-fun b!94838 () Bool)

(declare-fun e!51755 () Bool)

(assert (=> b!94838 (= e!51754 e!51755)))

(declare-fun res!49391 () Bool)

(assert (=> b!94838 (=> (not res!49391) (not e!51755))))

(assert (=> b!94838 (= res!49391 (dynLambda!1151 lambda!11199 (h!6674 (t!54977 lt!21737))))))

(declare-fun b!94839 () Bool)

(assert (=> b!94839 (= e!51755 (forall!81 (t!54977 (t!54977 lt!21737)) lambda!11199))))

(assert (= (and d!61638 (not res!49390)) b!94838))

(assert (= (and b!94838 res!49391) b!94839))

(declare-fun b_lambda!18987 () Bool)

(assert (=> (not b_lambda!18987) (not b!94838)))

(declare-fun m!90101 () Bool)

(assert (=> b!94838 m!90101))

(declare-fun m!90103 () Bool)

(assert (=> b!94839 m!90103))

(assert (=> b!94821 d!61638))

(declare-fun b_lambda!18989 () Bool)

(assert (= b_lambda!18987 (or b!94807 b_lambda!18989)))

(declare-fun bs!43199 () Bool)

(declare-fun d!61640 () Bool)

(assert (= bs!43199 (and d!61640 b!94807)))

(assert (=> bs!43199 (= (dynLambda!1151 lambda!11199 (h!6674 (t!54977 lt!21737))) (not (= (_1!293 (h!6674 (t!54977 lt!21737))) (_2!293 (h!6674 (t!54977 lt!21737))))))))

(assert (=> b!94838 d!61640))

(push 1)

(assert (not b!94835))

(assert (not b!94837))

(assert (not b!94833))

(assert (not b_lambda!18989))

(assert (not b_lambda!18985))

(assert (not b!94839))

(assert (not b!94831))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

