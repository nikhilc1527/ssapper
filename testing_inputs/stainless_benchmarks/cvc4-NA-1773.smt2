; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12124 () Bool)

(assert start!12124)

(declare-datatypes () ((Option!628 (None!601) (Some!600 (v!2837 Int)))))

(declare-datatypes () ((Bar!66 (Bar!67 (arg1!8 Int) (arg2!8 Option!628)))))

(declare-fun inv!41 (Bar!66) Bool)

(assert (=> start!12124 (not (inv!41 (Bar!67 (- 1) None!601)))))

(declare-fun bs!41711 () Bool)

(assert (= bs!41711 start!12124))

(declare-fun m!86654 () Bool)

(assert (=> bs!41711 m!86654))

(push 1)

(assert (not start!12124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59718 () Bool)

(declare-fun res!47637 () Bool)

(declare-fun e!49570 () Bool)

(assert (=> d!59718 (=> res!47637 e!49570)))

(assert (=> d!59718 (= res!47637 (> (arg1!8 (Bar!67 (- 1) None!601)) 0))))

(assert (=> d!59718 (= (inv!41 (Bar!67 (- 1) None!601)) e!49570)))

(declare-fun b!90815 () Bool)

(declare-fun isDefined!24 (Option!628) Bool)

(assert (=> b!90815 (= e!49570 (isDefined!24 (arg2!8 (Bar!67 (- 1) None!601))))))

(assert (= (and d!59718 (not res!47637)) b!90815))

(declare-fun m!86656 () Bool)

(assert (=> b!90815 m!86656))

(assert (=> start!12124 d!59718))

(push 1)

(assert (not b!90815))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59720 () Bool)

(declare-fun isEmpty!776 (Option!628) Bool)

(assert (=> d!59720 (= (isDefined!24 (arg2!8 (Bar!67 (- 1) None!601))) (not (isEmpty!776 (arg2!8 (Bar!67 (- 1) None!601)))))))

(declare-fun bs!41712 () Bool)

(assert (= bs!41712 d!59720))

(declare-fun m!86658 () Bool)

(assert (=> bs!41712 m!86658))

(assert (=> b!90815 d!59720))

(push 1)

(assert (not d!59720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59722 () Bool)

(assert (=> d!59722 (= (isEmpty!776 (arg2!8 (Bar!67 (- 1) None!601))) (not (is-Some!600 (arg2!8 (Bar!67 (- 1) None!601)))))))

(assert (=> d!59720 d!59722))

(push 1)

(check-sat)

(get-model)

(pop 1)

