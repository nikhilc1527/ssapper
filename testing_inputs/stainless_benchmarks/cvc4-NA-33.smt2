; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!158 () Bool)

(assert start!158)

(declare-fun res!602 () Bool)

(declare-fun e!549 () Bool)

(assert (=> start!158 (=> (not res!602) (not e!549))))

(declare-datatypes () ((A!614 (E!6 (b!765 Bool)) (D!12 (x!1451 Int)) (C!45 (x!1452 Int)))))

(declare-fun a!311 () A!614)

(declare-datatypes () ((Option!51 (Some!51 (value!604 A!614)) (None!51))))

(declare-fun isEmpty!51 (Option!51) Bool)

(declare-fun B!300 (A!614) Option!51)

(assert (=> start!158 (= res!602 (not (isEmpty!51 (B!300 a!311))))))

(assert (=> start!158 e!549))

(assert (=> start!158 true))

(declare-fun b!763 () Bool)

(declare-fun res!603 () Bool)

(assert (=> b!763 (=> (not res!603) (not e!549))))

(declare-fun thiss!162 () A!614)

(declare-fun get!81 (Option!51) A!614)

(assert (=> b!763 (= res!603 (= thiss!162 (get!81 (B!300 a!311))))))

(declare-fun b!764 () Bool)

(assert (=> b!764 (= e!549 (and (not (is-D!12 thiss!162)) (not (is-C!45 thiss!162))))))

(assert (= (and start!158 res!602) b!763))

(assert (= (and b!763 res!603) b!764))

(declare-fun m!517 () Bool)

(assert (=> start!158 m!517))

(assert (=> start!158 m!517))

(declare-fun m!519 () Bool)

(assert (=> start!158 m!519))

(assert (=> b!763 m!517))

(assert (=> b!763 m!517))

(declare-fun m!521 () Bool)

(assert (=> b!763 m!521))

(push 1)

(assert (not start!158))

(assert (not b!763))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!226 () Bool)

(assert (=> d!226 (= (isEmpty!51 (B!300 a!311)) (is-None!51 (B!300 a!311)))))

(assert (=> start!158 d!226))

(declare-fun b!770 () Bool)

(declare-fun e!552 () Bool)

(declare-fun lt!72 () A!614)

(assert (=> b!770 (= e!552 (or (is-D!12 lt!72) (is-C!45 lt!72)))))

(assert (=> b!770 (= lt!72 (value!604 (B!300 a!311)))))

(declare-fun d!228 () Bool)

(assert (=> d!228 (= true e!552)))

(assert (= (and d!228 (is-Some!51 (B!300 a!311))) b!770))

(assert (=> d!228 (= (B!300 a!311) (ite (or (is-D!12 a!311) (is-C!45 a!311)) (Some!51 a!311) None!51))))

(assert (=> start!158 d!228))

(declare-fun d!230 () Bool)

(assert (=> d!230 (= (get!81 (B!300 a!311)) (value!604 (B!300 a!311)))))

(assert (=> b!763 d!230))

(assert (=> b!763 d!228))

(push 1)

(assert (not d!230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

