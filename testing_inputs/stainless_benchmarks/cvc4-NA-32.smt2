; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!152 () Bool)

(assert start!152)

(declare-fun res!597 () Bool)

(declare-fun e!543 () Bool)

(assert (=> start!152 (=> (not res!597) (not e!543))))

(declare-datatypes () ((A!613 (E!5 (b!753 Bool)) (D!11 (x!1443 Int)) (C!44 (x!1444 Int)))))

(declare-fun a!311 () A!613)

(declare-datatypes () ((Option!50 (Some!50 (value!603 A!613)) (None!50))))

(declare-fun isEmpty!50 (Option!50) Bool)

(declare-fun B!300 (A!613) Option!50)

(assert (=> start!152 (= res!597 (not (isEmpty!50 (B!300 a!311))))))

(assert (=> start!152 e!543))

(assert (=> start!152 true))

(declare-fun e!542 () Bool)

(assert (=> start!152 e!542))

(declare-fun b!750 () Bool)

(declare-fun res!596 () Bool)

(assert (=> b!750 (=> (not res!596) (not e!543))))

(declare-fun x!1433 () Option!50)

(assert (=> b!750 (= res!596 (= x!1433 (B!300 a!311)))))

(declare-fun b!751 () Bool)

(assert (=> b!751 (= e!543 (not (is-Some!50 x!1433)))))

(declare-fun b!752 () Bool)

(declare-fun lt!66 () A!613)

(assert (=> b!752 (= e!542 (or (is-D!11 lt!66) (is-C!44 lt!66)))))

(assert (=> b!752 (= lt!66 (value!603 x!1433))))

(assert (= (and start!152 res!597) b!750))

(assert (= (and b!750 res!596) b!751))

(assert (= (and start!152 (is-Some!50 x!1433)) b!752))

(declare-fun m!513 () Bool)

(assert (=> start!152 m!513))

(assert (=> start!152 m!513))

(declare-fun m!515 () Bool)

(assert (=> start!152 m!515))

(assert (=> b!750 m!513))

(push 1)

(assert (not b!750))

(assert (not start!152))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!758 () Bool)

(declare-fun e!546 () Bool)

(declare-fun lt!69 () A!613)

(assert (=> b!758 (= e!546 (or (is-D!11 lt!69) (is-C!44 lt!69)))))

(assert (=> b!758 (= lt!69 (value!603 (B!300 a!311)))))

(declare-fun d!222 () Bool)

(assert (=> d!222 (= true e!546)))

(assert (= (and d!222 (is-Some!50 (B!300 a!311))) b!758))

(assert (=> d!222 (= (B!300 a!311) (ite (or (is-D!11 a!311) (is-C!44 a!311)) (Some!50 a!311) None!50))))

(assert (=> b!750 d!222))

(declare-fun d!224 () Bool)

(assert (=> d!224 (= (isEmpty!50 (B!300 a!311)) (is-None!50 (B!300 a!311)))))

(assert (=> start!152 d!224))

(assert (=> start!152 d!222))

(push 1)

(check-sat)

(pop 1)

