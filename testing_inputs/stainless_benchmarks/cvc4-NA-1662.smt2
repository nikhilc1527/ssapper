; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11502 () Bool)

(assert start!11502)

(declare-fun res!45939 () Bool)

(declare-fun e!47742 () Bool)

(assert (=> start!11502 (=> (not res!45939) (not e!47742))))

(declare-datatypes () ((List!723 (Cons!678 (h!1060 Int) (t!48597 List!723)) (Nil!680))))

(declare-fun l!1540 () List!723)

(declare-fun isEmpty!724 (List!723) Bool)

(assert (=> start!11502 (= res!45939 (not (isEmpty!724 l!1540)))))

(assert (=> start!11502 e!47742))

(assert (=> start!11502 true))

(declare-fun b!87914 () Bool)

(declare-fun res!45940 () Bool)

(assert (=> b!87914 (=> (not res!45940) (not e!47742))))

(declare-fun size!711 (List!723) Int)

(assert (=> b!87914 (= res!45940 (not (= (size!711 l!1540) 1)))))

(declare-fun b!87915 () Bool)

(declare-fun res!45941 () Bool)

(assert (=> b!87915 (=> (not res!45941) (not e!47742))))

(declare-fun head!1079 (List!723) Int)

(declare-fun tail!1074 (List!723) List!723)

(assert (=> b!87915 (= res!45941 (<= (head!1079 l!1540) (head!1079 (tail!1074 l!1540))))))

(declare-fun b!87916 () Bool)

(declare-fun thiss!9891 () List!723)

(assert (=> b!87916 (= e!47742 (and (= thiss!9891 l!1540) (= thiss!9891 Nil!680)))))

(assert (= (and start!11502 res!45939) b!87914))

(assert (= (and b!87914 res!45940) b!87915))

(assert (= (and b!87915 res!45941) b!87916))

(declare-fun m!84100 () Bool)

(assert (=> start!11502 m!84100))

(declare-fun m!84102 () Bool)

(assert (=> b!87914 m!84102))

(declare-fun m!84104 () Bool)

(assert (=> b!87915 m!84104))

(declare-fun m!84106 () Bool)

(assert (=> b!87915 m!84106))

(assert (=> b!87915 m!84106))

(declare-fun m!84108 () Bool)

(assert (=> b!87915 m!84108))

(push 1)

(assert (not b!87914))

(assert (not start!11502))

(assert (not b!87915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58527 () Bool)

(declare-fun lt!20200 () Int)

(assert (=> d!58527 (>= lt!20200 0)))

(declare-fun e!47745 () Int)

(assert (=> d!58527 (= lt!20200 e!47745)))

(declare-fun c!21732 () Bool)

(assert (=> d!58527 (= c!21732 (is-Nil!680 l!1540))))

(assert (=> d!58527 (= (size!711 l!1540) lt!20200)))

(declare-fun b!87921 () Bool)

(assert (=> b!87921 (= e!47745 0)))

(declare-fun b!87922 () Bool)

(assert (=> b!87922 (= e!47745 (+ 1 (size!711 (t!48597 l!1540))))))

(assert (= (and d!58527 c!21732) b!87921))

(assert (= (and d!58527 (not c!21732)) b!87922))

(declare-fun m!84110 () Bool)

(assert (=> b!87922 m!84110))

(assert (=> b!87914 d!58527))

(declare-fun d!58529 () Bool)

(assert (=> d!58529 (= (isEmpty!724 l!1540) (is-Nil!680 l!1540))))

(assert (=> start!11502 d!58529))

(declare-fun d!58531 () Bool)

(assert (=> d!58531 (= (head!1079 l!1540) (h!1060 l!1540))))

(assert (=> b!87915 d!58531))

(declare-fun d!58533 () Bool)

(assert (=> d!58533 (= (head!1079 (tail!1074 l!1540)) (h!1060 (tail!1074 l!1540)))))

(assert (=> b!87915 d!58533))

(declare-fun d!58535 () Bool)

(assert (=> d!58535 (= (tail!1074 l!1540) (t!48597 l!1540))))

(assert (=> b!87915 d!58535))

(push 1)

(assert (not b!87922))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

