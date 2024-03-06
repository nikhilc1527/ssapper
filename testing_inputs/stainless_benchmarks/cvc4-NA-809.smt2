; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6118 () Bool)

(assert start!6118)

(declare-fun res!21497 () Bool)

(declare-fun e!23605 () Bool)

(assert (=> start!6118 (=> (not res!21497) (not e!23605))))

(declare-datatypes () ((Nat!170 (Zero!154) (Succ!151 (n!1302 Nat!170)))))

(declare-fun n1!172 () Nat!170)

(declare-datatypes () ((Unit!538 (Unit!539))))

(declare-fun x$64!36 () Unit!538)

(declare-fun Unit!540 () Unit!538)

(assert (=> start!6118 (= res!21497 (and (is-Zero!154 n1!172) (= x$64!36 Unit!540)))))

(assert (=> start!6118 e!23605))

(assert (=> start!6118 true))

(declare-fun b!45492 () Bool)

(declare-fun n2!183 () Nat!170)

(declare-fun <=!2 (Nat!170 Nat!170) Bool)

(declare-fun +!5 (Nat!170 Nat!170) Nat!170)

(assert (=> b!45492 (= e!23605 (not (<=!2 n1!172 (+!5 n1!172 n2!183))))))

(assert (= (and start!6118 res!21497) b!45492))

(declare-fun m!48533 () Bool)

(assert (=> b!45492 m!48533))

(assert (=> b!45492 m!48533))

(declare-fun m!48535 () Bool)

(assert (=> b!45492 m!48535))

(push 1)

(assert (not b!45492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31982 () Bool)

(declare-fun res!21500 () Bool)

(declare-fun e!23608 () Bool)

(assert (=> d!31982 (=> res!21500 e!23608)))

(declare-fun <!2 (Nat!170 Nat!170) Bool)

(assert (=> d!31982 (= res!21500 (<!2 n1!172 (+!5 n1!172 n2!183)))))

(assert (=> d!31982 (= (<=!2 n1!172 (+!5 n1!172 n2!183)) e!23608)))

(declare-fun b!45495 () Bool)

(assert (=> b!45495 (= e!23608 (= n1!172 (+!5 n1!172 n2!183)))))

(assert (= (and d!31982 (not res!21500)) b!45495))

(assert (=> d!31982 m!48533))

(declare-fun m!48537 () Bool)

(assert (=> d!31982 m!48537))

(assert (=> b!45492 d!31982))

(declare-fun d!31984 () Bool)

(declare-fun c!9646 () Bool)

(assert (=> d!31984 (= c!9646 (is-Zero!154 n1!172))))

(declare-fun e!23611 () Nat!170)

(assert (=> d!31984 (= (+!5 n1!172 n2!183) e!23611)))

(declare-fun b!45500 () Bool)

(assert (=> b!45500 (= e!23611 n2!183)))

(declare-fun b!45501 () Bool)

(assert (=> b!45501 (= e!23611 (Succ!151 (+!5 (n!1302 n1!172) n2!183)))))

(assert (= (and d!31984 c!9646) b!45500))

(assert (= (and d!31984 (not c!9646)) b!45501))

(declare-fun m!48539 () Bool)

(assert (=> b!45501 m!48539))

(assert (=> b!45492 d!31984))

(push 1)

(assert (not d!31982))

(assert (not b!45501))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31986 () Bool)

(declare-fun lt!8316 () Bool)

(declare-fun repr!0 (Nat!170) Int)

(assert (=> d!31986 (= lt!8316 (< (repr!0 n1!172) (repr!0 (+!5 n1!172 n2!183))))))

(declare-fun e!23614 () Bool)

(assert (=> d!31986 (= lt!8316 e!23614)))

(declare-fun c!9649 () Bool)

(assert (=> d!31986 (= c!9649 (and (is-Succ!151 n1!172) (is-Succ!151 (+!5 n1!172 n2!183))))))

(assert (=> d!31986 (= (<!2 n1!172 (+!5 n1!172 n2!183)) lt!8316)))

(declare-fun b!45506 () Bool)

(assert (=> b!45506 (= e!23614 (<!2 (n!1302 n1!172) (n!1302 (+!5 n1!172 n2!183))))))

(declare-fun b!45507 () Bool)

(assert (=> b!45507 (= e!23614 (and (is-Zero!154 n1!172) (is-Succ!151 (+!5 n1!172 n2!183))))))

(assert (= (and d!31986 c!9649) b!45506))

(assert (= (and d!31986 (not c!9649)) b!45507))

(declare-fun m!48541 () Bool)

(assert (=> d!31986 m!48541))

(assert (=> d!31986 m!48533))

(declare-fun m!48543 () Bool)

(assert (=> d!31986 m!48543))

(declare-fun m!48545 () Bool)

(assert (=> b!45506 m!48545))

(assert (=> d!31982 d!31986))

(declare-fun d!31988 () Bool)

(declare-fun c!9650 () Bool)

(assert (=> d!31988 (= c!9650 (is-Zero!154 (n!1302 n1!172)))))

(declare-fun e!23615 () Nat!170)

(assert (=> d!31988 (= (+!5 (n!1302 n1!172) n2!183) e!23615)))

(declare-fun b!45508 () Bool)

(assert (=> b!45508 (= e!23615 n2!183)))

(declare-fun b!45509 () Bool)

(assert (=> b!45509 (= e!23615 (Succ!151 (+!5 (n!1302 (n!1302 n1!172)) n2!183)))))

(assert (= (and d!31988 c!9650) b!45508))

(assert (= (and d!31988 (not c!9650)) b!45509))

(declare-fun m!48547 () Bool)

(assert (=> b!45509 m!48547))

(assert (=> b!45501 d!31988))

(push 1)

(assert (not d!31986))

(assert (not b!45509))

(assert (not b!45506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

