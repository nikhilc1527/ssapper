; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11718 () Bool)

(assert start!11718)

(declare-fun b!89678 () Bool)

(declare-fun e!48916 () Bool)

(declare-datatypes () ((T!6027 (T!6028 (val!206 Int)))))

(declare-datatypes () ((tuple2!426 (tuple2!427 (_1!248 T!6027) (_2!248 Int)))))

(declare-datatypes () ((List!754 (Cons!708 (h!1112 tuple2!426) (t!48856 List!754)) (Nil!710))))

(declare-fun l!1556 () List!754)

(declare-fun n!1710 () Int)

(declare-fun l2AtLeast!14 (List!754 Int) Bool)

(assert (=> b!89678 (= e!48916 (not (l2AtLeast!14 l!1556 n!1710)))))

(declare-fun b!89677 () Bool)

(declare-fun res!46936 () Bool)

(assert (=> b!89677 (=> (not res!46936) (not e!48916))))

(declare-fun inductVal!1005 () Bool)

(declare-fun trivProp2!8 (List!754 Int) Bool)

(assert (=> b!89677 (= res!46936 (= inductVal!1005 (trivProp2!8 (t!48856 l!1556) n!1710)))))

(declare-fun res!46935 () Bool)

(assert (=> start!11718 (=> (not res!46935) (not e!48916))))

(assert (=> start!11718 (= res!46935 (l2AtLeast!14 l!1556 (+ n!1710 1)))))

(assert (=> start!11718 e!48916))

(declare-fun e!48915 () Bool)

(assert (=> start!11718 e!48915))

(assert (=> start!11718 true))

(declare-fun b!89676 () Bool)

(declare-fun res!46937 () Bool)

(assert (=> b!89676 (=> (not res!46937) (not e!48916))))

(assert (=> b!89676 (= res!46937 (is-Cons!708 l!1556))))

(declare-fun b!89679 () Bool)

(declare-fun tp_is_empty!407 () Bool)

(declare-fun tp!17550 () Bool)

(assert (=> b!89679 (= e!48915 (and tp_is_empty!407 tp!17550))))

(assert (= (and start!11718 res!46935) b!89676))

(assert (= (and b!89676 res!46937) b!89677))

(assert (= (and b!89677 res!46936) b!89678))

(assert (= (and start!11718 (is-Cons!708 l!1556)) b!89679))

(declare-fun m!85634 () Bool)

(assert (=> b!89678 m!85634))

(declare-fun m!85636 () Bool)

(assert (=> b!89677 m!85636))

(declare-fun m!85638 () Bool)

(assert (=> start!11718 m!85638))

(push 1)

(assert (not start!11718))

(assert (not b!89679))

(assert (not b!89677))

(assert tp_is_empty!407)

(assert (not b!89678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59249 () Bool)

(declare-fun e!48919 () Bool)

(assert (=> d!59249 e!48919))

(declare-fun c!21967 () Bool)

(assert (=> d!59249 (= c!21967 (is-Cons!708 (t!48856 l!1556)))))

(assert (=> d!59249 (l2AtLeast!14 (t!48856 l!1556) (+ n!1710 1))))

(assert (=> d!59249 (= (trivProp2!8 (t!48856 l!1556) n!1710) true)))

(declare-fun b!89684 () Bool)

(assert (=> b!89684 (= e!48919 (l2AtLeast!14 (t!48856 l!1556) n!1710))))

(declare-fun lt!20430 () Bool)

(assert (=> b!89684 (= lt!20430 (trivProp2!8 (t!48856 (t!48856 l!1556)) n!1710))))

(declare-fun b!89685 () Bool)

(assert (=> b!89685 (= e!48919 (l2AtLeast!14 (t!48856 l!1556) n!1710))))

(assert (= (and d!59249 c!21967) b!89684))

(assert (= (and d!59249 (not c!21967)) b!89685))

(declare-fun m!85640 () Bool)

(assert (=> d!59249 m!85640))

(declare-fun m!85642 () Bool)

(assert (=> b!89684 m!85642))

(declare-fun m!85644 () Bool)

(assert (=> b!89684 m!85644))

(assert (=> b!89685 m!85642))

(assert (=> b!89677 d!59249))

(declare-fun d!59251 () Bool)

(declare-fun res!46942 () Bool)

(declare-fun e!48924 () Bool)

(assert (=> d!59251 (=> res!46942 e!48924)))

(assert (=> d!59251 (= res!46942 (is-Nil!710 l!1556))))

(assert (=> d!59251 (= (l2AtLeast!14 l!1556 (+ n!1710 1)) e!48924)))

(declare-fun b!89690 () Bool)

(declare-fun e!48925 () Bool)

(assert (=> b!89690 (= e!48924 e!48925)))

(declare-fun res!46943 () Bool)

(assert (=> b!89690 (=> (not res!46943) (not e!48925))))

(assert (=> b!89690 (= res!46943 (<= (+ n!1710 1) (_2!248 (h!1112 l!1556))))))

(declare-fun b!89691 () Bool)

(assert (=> b!89691 (= e!48925 (l2AtLeast!14 (t!48856 l!1556) (+ n!1710 1)))))

(assert (= (and d!59251 (not res!46942)) b!89690))

(assert (= (and b!89690 res!46943) b!89691))

(assert (=> b!89691 m!85640))

(assert (=> start!11718 d!59251))

(declare-fun d!59253 () Bool)

(declare-fun res!46944 () Bool)

(declare-fun e!48926 () Bool)

(assert (=> d!59253 (=> res!46944 e!48926)))

(assert (=> d!59253 (= res!46944 (is-Nil!710 l!1556))))

(assert (=> d!59253 (= (l2AtLeast!14 l!1556 n!1710) e!48926)))

(declare-fun b!89692 () Bool)

(declare-fun e!48927 () Bool)

(assert (=> b!89692 (= e!48926 e!48927)))

(declare-fun res!46945 () Bool)

(assert (=> b!89692 (=> (not res!46945) (not e!48927))))

(assert (=> b!89692 (= res!46945 (<= n!1710 (_2!248 (h!1112 l!1556))))))

(declare-fun b!89693 () Bool)

(assert (=> b!89693 (= e!48927 (l2AtLeast!14 (t!48856 l!1556) n!1710))))

(assert (= (and d!59253 (not res!46944)) b!89692))

(assert (= (and b!89692 res!46945) b!89693))

(assert (=> b!89693 m!85642))

(assert (=> b!89678 d!59253))

(declare-fun b!89698 () Bool)

(declare-fun e!48930 () Bool)

(declare-fun tp!17553 () Bool)

(assert (=> b!89698 (= e!48930 (and tp_is_empty!407 tp!17553))))

(assert (=> b!89679 (= tp!17550 e!48930)))

(assert (= (and b!89679 (is-Cons!708 (t!48856 l!1556))) b!89698))

(push 1)

(assert (not b!89685))

(assert (not b!89691))

(assert (not b!89684))

(assert (not b!89693))

(assert (not d!59249))

(assert tp_is_empty!407)

(assert (not b!89698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

