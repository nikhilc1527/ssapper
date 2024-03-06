; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11488 () Bool)

(assert start!11488)

(declare-fun res!45922 () Bool)

(declare-fun e!47729 () Bool)

(assert (=> start!11488 (=> (not res!45922) (not e!47729))))

(declare-datatypes () ((List!721 (Cons!676 (h!1058 Int) (t!48594 List!721)) (Nil!678))))

(declare-fun l!1540 () List!721)

(declare-fun isEmpty!722 (List!721) Bool)

(assert (=> start!11488 (= res!45922 (not (isEmpty!722 l!1540)))))

(assert (=> start!11488 e!47729))

(assert (=> start!11488 true))

(declare-fun b!87883 () Bool)

(declare-fun res!45923 () Bool)

(assert (=> b!87883 (=> (not res!45923) (not e!47729))))

(declare-fun size!709 (List!721) Int)

(assert (=> b!87883 (= res!45923 (not (= (size!709 l!1540) 1)))))

(declare-fun b!87884 () Bool)

(declare-fun thiss!9885 () List!721)

(assert (=> b!87884 (= e!47729 (and (= thiss!9885 l!1540) (= thiss!9885 Nil!678)))))

(assert (= (and start!11488 res!45922) b!87883))

(assert (= (and b!87883 res!45923) b!87884))

(declare-fun m!84084 () Bool)

(assert (=> start!11488 m!84084))

(declare-fun m!84086 () Bool)

(assert (=> b!87883 m!84086))

(push 1)

(assert (not b!87883))

(assert (not start!11488))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58515 () Bool)

(declare-fun lt!20193 () Int)

(assert (=> d!58515 (>= lt!20193 0)))

(declare-fun e!47732 () Int)

(assert (=> d!58515 (= lt!20193 e!47732)))

(declare-fun c!21725 () Bool)

(assert (=> d!58515 (= c!21725 (is-Nil!678 l!1540))))

(assert (=> d!58515 (= (size!709 l!1540) lt!20193)))

(declare-fun b!87889 () Bool)

(assert (=> b!87889 (= e!47732 0)))

(declare-fun b!87890 () Bool)

(assert (=> b!87890 (= e!47732 (+ 1 (size!709 (t!48594 l!1540))))))

(assert (= (and d!58515 c!21725) b!87889))

(assert (= (and d!58515 (not c!21725)) b!87890))

(declare-fun m!84088 () Bool)

(assert (=> b!87890 m!84088))

(assert (=> b!87883 d!58515))

(declare-fun d!58517 () Bool)

(assert (=> d!58517 (= (isEmpty!722 l!1540) (is-Nil!678 l!1540))))

(assert (=> start!11488 d!58517))

(push 1)

(assert (not b!87890))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

