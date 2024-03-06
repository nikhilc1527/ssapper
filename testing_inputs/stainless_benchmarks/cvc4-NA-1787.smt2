; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12196 () Bool)

(assert start!12196)

(declare-fun res!47810 () Bool)

(declare-fun e!49809 () Bool)

(assert (=> start!12196 (=> (not res!47810) (not e!49809))))

(declare-fun x!32601 () (_ BitVec 32))

(assert (=> start!12196 (= res!47810 (bvsgt x!32601 #b00000000000000000000000000000000))))

(assert (=> start!12196 e!49809))

(assert (=> start!12196 true))

(declare-fun b!91109 () Bool)

(declare-fun res!47811 () Bool)

(assert (=> b!91109 (=> (not res!47811) (not e!49809))))

(declare-datatypes () ((Acc!12 (Acc!13 (checking!13 (_ BitVec 32)) (savings!13 (_ BitVec 32))))))

(declare-fun a!1101 () Acc!12)

(declare-fun notRed!1 (Acc!12) Bool)

(assert (=> b!91109 (= res!47811 (notRed!1 a!1101))))

(declare-fun b!91112 () Bool)

(declare-fun e!49808 () Bool)

(declare-fun r!711 () Acc!12)

(declare-fun sameTotal!1 (Acc!12 Acc!12) Bool)

(assert (=> b!91112 (= e!49808 (not (sameTotal!1 a!1101 r!711)))))

(declare-fun b!91110 () Bool)

(declare-fun res!47813 () Bool)

(assert (=> b!91110 (=> (not res!47813) (not e!49809))))

(assert (=> b!91110 (= res!47813 (and (bvsge (checking!13 a!1101) x!32601) (= r!711 (Acc!13 (bvsub (checking!13 a!1101) x!32601) (bvadd (savings!13 a!1101) x!32601)))))))

(declare-fun b!91111 () Bool)

(assert (=> b!91111 (= e!49809 e!49808)))

(declare-fun res!47812 () Bool)

(assert (=> b!91111 (=> res!47812 e!49808)))

(assert (=> b!91111 (= res!47812 (not (notRed!1 r!711)))))

(assert (= (and start!12196 res!47810) b!91109))

(assert (= (and b!91109 res!47811) b!91110))

(assert (= (and b!91110 res!47813) b!91111))

(assert (= (and b!91111 (not res!47812)) b!91112))

(declare-fun m!86842 () Bool)

(assert (=> b!91109 m!86842))

(declare-fun m!86844 () Bool)

(assert (=> b!91112 m!86844))

(declare-fun m!86846 () Bool)

(assert (=> b!91111 m!86846))

(push 1)

(assert (not b!91112))

(assert (not b!91109))

(assert (not b!91111))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59782 () Bool)

(assert (=> d!59782 (= (sameTotal!1 a!1101 r!711) (= (bvadd (checking!13 a!1101) (savings!13 a!1101)) (bvadd (checking!13 r!711) (savings!13 r!711))))))

(assert (=> b!91112 d!59782))

(declare-fun d!59784 () Bool)

(assert (=> d!59784 (= (notRed!1 a!1101) (and (bvsge (checking!13 a!1101) #b00000000000000000000000000000000) (bvsge (savings!13 a!1101) #b00000000000000000000000000000000)))))

(assert (=> b!91109 d!59784))

(declare-fun d!59786 () Bool)

(assert (=> d!59786 (= (notRed!1 r!711) (and (bvsge (checking!13 r!711) #b00000000000000000000000000000000) (bvsge (savings!13 r!711) #b00000000000000000000000000000000)))))

(assert (=> b!91111 d!59786))

(push 1)

(check-sat)

(get-model)

(pop 1)

