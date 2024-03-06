; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11494 () Bool)

(assert start!11494)

(declare-fun res!45930 () Bool)

(declare-fun e!47735 () Bool)

(assert (=> start!11494 (=> (not res!45930) (not e!47735))))

(declare-datatypes () ((List!722 (Cons!677 (h!1059 Int) (t!48595 List!722)) (Nil!679))))

(declare-fun l!1540 () List!722)

(declare-fun isEmpty!723 (List!722) Bool)

(assert (=> start!11494 (= res!45930 (not (isEmpty!723 l!1540)))))

(assert (=> start!11494 e!47735))

(assert (=> start!11494 true))

(declare-fun b!87897 () Bool)

(declare-fun res!45931 () Bool)

(assert (=> b!87897 (=> (not res!45931) (not e!47735))))

(declare-fun size!710 (List!722) Int)

(assert (=> b!87897 (= res!45931 (not (= (size!710 l!1540) 1)))))

(declare-fun b!87898 () Bool)

(declare-fun res!45932 () Bool)

(assert (=> b!87898 (=> (not res!45932) (not e!47735))))

(declare-fun thiss!9887 () List!722)

(declare-fun tail!1073 (List!722) List!722)

(assert (=> b!87898 (= res!45932 (= thiss!9887 (tail!1073 l!1540)))))

(declare-fun b!87899 () Bool)

(assert (=> b!87899 (= e!47735 (= thiss!9887 Nil!679))))

(assert (= (and start!11494 res!45930) b!87897))

(assert (= (and b!87897 res!45931) b!87898))

(assert (= (and b!87898 res!45932) b!87899))

(declare-fun m!84090 () Bool)

(assert (=> start!11494 m!84090))

(declare-fun m!84092 () Bool)

(assert (=> b!87897 m!84092))

(declare-fun m!84094 () Bool)

(assert (=> b!87898 m!84094))

(push 1)

(assert (not b!87898))

(assert (not start!11494))

(assert (not b!87897))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58519 () Bool)

(assert (=> d!58519 (= (tail!1073 l!1540) (t!48595 l!1540))))

(assert (=> b!87898 d!58519))

(declare-fun d!58521 () Bool)

(assert (=> d!58521 (= (isEmpty!723 l!1540) (is-Nil!679 l!1540))))

(assert (=> start!11494 d!58521))

(declare-fun d!58523 () Bool)

(declare-fun lt!20196 () Int)

(assert (=> d!58523 (>= lt!20196 0)))

(declare-fun e!47738 () Int)

(assert (=> d!58523 (= lt!20196 e!47738)))

(declare-fun c!21728 () Bool)

(assert (=> d!58523 (= c!21728 (is-Nil!679 l!1540))))

(assert (=> d!58523 (= (size!710 l!1540) lt!20196)))

(declare-fun b!87904 () Bool)

(assert (=> b!87904 (= e!47738 0)))

(declare-fun b!87905 () Bool)

(assert (=> b!87905 (= e!47738 (+ 1 (size!710 (t!48595 l!1540))))))

(assert (= (and d!58523 c!21728) b!87904))

(assert (= (and d!58523 (not c!21728)) b!87905))

(declare-fun m!84096 () Bool)

(assert (=> b!87905 m!84096))

(assert (=> b!87897 d!58523))

(push 1)

(assert (not b!87905))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58525 () Bool)

(declare-fun lt!20197 () Int)

(assert (=> d!58525 (>= lt!20197 0)))

(declare-fun e!47739 () Int)

(assert (=> d!58525 (= lt!20197 e!47739)))

(declare-fun c!21729 () Bool)

(assert (=> d!58525 (= c!21729 (is-Nil!679 (t!48595 l!1540)))))

(assert (=> d!58525 (= (size!710 (t!48595 l!1540)) lt!20197)))

(declare-fun b!87906 () Bool)

(assert (=> b!87906 (= e!47739 0)))

(declare-fun b!87907 () Bool)

(assert (=> b!87907 (= e!47739 (+ 1 (size!710 (t!48595 (t!48595 l!1540)))))))

(assert (= (and d!58525 c!21729) b!87906))

(assert (= (and d!58525 (not c!21729)) b!87907))

(declare-fun m!84098 () Bool)

(assert (=> b!87907 m!84098))

(assert (=> b!87905 d!58525))

(push 1)

(assert (not b!87907))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

