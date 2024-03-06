; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11796 () Bool)

(assert start!11796)

(declare-fun b!89871 () Bool)

(declare-fun res!47054 () Bool)

(declare-fun e!49045 () Bool)

(assert (=> b!89871 (=> (not res!47054) (not e!49045))))

(declare-fun t!48888 () Int)

(declare-fun e!49044 () Int)

(assert (=> b!89871 (= res!47054 (= t!48888 e!49044))))

(declare-fun c!22013 () Bool)

(declare-fun m!85921 () Int)

(assert (=> b!89871 (= c!22013 (= m!85921 0))))

(declare-fun b!89873 () Bool)

(declare-fun n!1791 () Int)

(declare-fun add!2 (Int Int) Int)

(assert (=> b!89873 (= e!49044 (+ (add!2 n!1791 (- m!85921 1)) 1))))

(declare-fun res!47048 () Int)

(declare-fun res!47047 () Int)

(declare-fun b!89874 () Bool)

(assert (=> b!89874 (= e!49045 (and (= res!47047 t!48888) (= res!47048 res!47047) (< res!47048 0)))))

(declare-fun b!89872 () Bool)

(assert (=> b!89872 (= e!49044 n!1791)))

(declare-fun res!47055 () Bool)

(assert (=> start!11796 (=> (not res!47055) (not e!49045))))

(assert (=> start!11796 (= res!47055 (and (>= n!1791 0) (>= m!85921 0)))))

(assert (=> start!11796 e!49045))

(assert (=> start!11796 true))

(assert (= (and start!11796 res!47055) b!89871))

(assert (= (and b!89871 c!22013) b!89872))

(assert (= (and b!89871 (not c!22013)) b!89873))

(assert (= (and b!89871 res!47054) b!89874))

(declare-fun m!85925 () Bool)

(assert (=> b!89873 m!85925))

(push 1)

(assert (not b!89873))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59441 () Bool)

(declare-fun lt!20455 () Int)

(assert (=> d!59441 (>= lt!20455 0)))

(declare-fun e!49048 () Int)

(assert (=> d!59441 (= lt!20455 e!49048)))

(declare-fun c!22016 () Bool)

(assert (=> d!59441 (= c!22016 (= (- m!85921 1) 0))))

(assert (=> d!59441 (and (>= n!1791 0) (>= (- m!85921 1) 0))))

(assert (=> d!59441 (= (add!2 n!1791 (- m!85921 1)) lt!20455)))

(declare-fun b!89879 () Bool)

(assert (=> b!89879 (= e!49048 n!1791)))

(declare-fun b!89880 () Bool)

(assert (=> b!89880 (= e!49048 (+ (add!2 n!1791 (- (- m!85921 1) 1)) 1))))

(assert (= (and d!59441 c!22016) b!89879))

(assert (= (and d!59441 (not c!22016)) b!89880))

(declare-fun m!85928 () Bool)

(assert (=> b!89880 m!85928))

(assert (=> b!89873 d!59441))

(push 1)

(assert (not b!89880))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

