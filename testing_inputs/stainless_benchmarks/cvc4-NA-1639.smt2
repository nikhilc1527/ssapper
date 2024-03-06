; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11408 () Bool)

(assert start!11408)

(declare-fun b!87561 () Bool)

(declare-fun e!47516 () Bool)

(declare-datatypes () ((List!717 (Nil!675) (Cons!673 (head!1074 (_ BitVec 32)) (tail!1068 List!717)))))

(declare-fun list!1038 () List!717)

(declare-fun res!45661 () Int)

(declare-fun firstZeroAtPos!0 (List!717 Int) Bool)

(assert (=> b!87561 (= e!47516 (not (firstZeroAtPos!0 list!1038 res!45661)))))

(declare-fun b!87559 () Bool)

(declare-fun e!47514 () Bool)

(declare-fun e!47515 () Bool)

(assert (=> b!87559 (= e!47514 e!47515)))

(declare-fun res!45671 () Bool)

(assert (=> b!87559 (=> res!45671 e!47515)))

(assert (=> b!87559 (= res!45671 (< res!45661 0))))

(declare-fun b!87562 () Bool)

(declare-fun size!2 (List!717) Int)

(assert (=> b!87562 (= e!47516 (not (= res!45661 (size!2 list!1038))))))

(declare-fun res!45670 () Bool)

(assert (=> start!11408 (=> (not res!45670) (not e!47514))))

(assert (=> start!11408 (= res!45670 (and (is-Nil!675 list!1038) (= res!45661 0)))))

(assert (=> start!11408 e!47514))

(assert (=> start!11408 true))

(declare-fun b!87560 () Bool)

(assert (=> b!87560 (= e!47515 e!47516)))

(declare-fun c!21685 () Bool)

(declare-fun contains!5 (List!717 (_ BitVec 32)) Bool)

(assert (=> b!87560 (= c!21685 (contains!5 list!1038 #b00000000000000000000000000000000))))

(assert (= (and start!11408 res!45670) b!87559))

(assert (= (and b!87559 (not res!45671)) b!87560))

(assert (= (and b!87560 c!21685) b!87561))

(assert (= (and b!87560 (not c!21685)) b!87562))

(declare-fun m!83926 () Bool)

(assert (=> b!87561 m!83926))

(declare-fun m!83928 () Bool)

(assert (=> b!87562 m!83928))

(declare-fun m!83930 () Bool)

(assert (=> b!87560 m!83930))

(push 1)

(assert (not b!87561))

(assert (not b!87560))

(assert (not b!87562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58303 () Bool)

(declare-fun res!45677 () Bool)

(declare-fun e!47525 () Bool)

(assert (=> d!58303 (=> (not res!45677) (not e!47525))))

(assert (=> d!58303 (= res!45677 (not (is-Nil!675 list!1038)))))

(assert (=> d!58303 (= (firstZeroAtPos!0 list!1038 res!45661) e!47525)))

(declare-fun b!87572 () Bool)

(declare-fun e!47524 () Bool)

(assert (=> b!87572 (= e!47524 (= (head!1074 list!1038) #b00000000000000000000000000000000))))

(declare-fun b!87571 () Bool)

(assert (=> b!87571 (= e!47525 e!47524)))

(declare-fun c!21688 () Bool)

(assert (=> b!87571 (= c!21688 (= res!45661 0))))

(declare-fun b!87573 () Bool)

(declare-fun e!47523 () Bool)

(assert (=> b!87573 (= e!47524 e!47523)))

(declare-fun res!45676 () Bool)

(assert (=> b!87573 (=> (not res!45676) (not e!47523))))

(assert (=> b!87573 (= res!45676 (not (= (head!1074 list!1038) #b00000000000000000000000000000000)))))

(declare-fun b!87574 () Bool)

(assert (=> b!87574 (= e!47523 (firstZeroAtPos!0 (tail!1068 list!1038) (- res!45661 1)))))

(assert (= (and d!58303 res!45677) b!87571))

(assert (= (and b!87573 res!45676) b!87574))

(assert (= (and b!87571 c!21688) b!87572))

(assert (= (and b!87571 (not c!21688)) b!87573))

(declare-fun m!83932 () Bool)

(assert (=> b!87574 m!83932))

(assert (=> b!87561 d!58303))

(declare-fun d!58305 () Bool)

(declare-fun res!45682 () Bool)

(declare-fun e!47530 () Bool)

(assert (=> d!58305 (=> (not res!45682) (not e!47530))))

(assert (=> d!58305 (= res!45682 (not (is-Nil!675 list!1038)))))

(assert (=> d!58305 (= (contains!5 list!1038 #b00000000000000000000000000000000) e!47530)))

(declare-fun b!87579 () Bool)

(declare-fun e!47531 () Bool)

(assert (=> b!87579 (= e!47530 e!47531)))

(declare-fun res!45683 () Bool)

(assert (=> b!87579 (=> res!45683 e!47531)))

(assert (=> b!87579 (= res!45683 (= (head!1074 list!1038) #b00000000000000000000000000000000))))

(declare-fun b!87580 () Bool)

(assert (=> b!87580 (= e!47531 (contains!5 (tail!1068 list!1038) #b00000000000000000000000000000000))))

(assert (= (and d!58305 res!45682) b!87579))

(assert (= (and b!87579 (not res!45683)) b!87580))

(declare-fun m!83934 () Bool)

(assert (=> b!87580 m!83934))

(assert (=> b!87560 d!58305))

(declare-fun d!58307 () Bool)

(declare-fun lt!20181 () Int)

(assert (=> d!58307 (>= lt!20181 0)))

(declare-fun e!47534 () Int)

(assert (=> d!58307 (= lt!20181 e!47534)))

(declare-fun c!21691 () Bool)

(assert (=> d!58307 (= c!21691 (is-Nil!675 list!1038))))

(assert (=> d!58307 (= (size!2 list!1038) lt!20181)))

(declare-fun b!87585 () Bool)

(assert (=> b!87585 (= e!47534 0)))

(declare-fun b!87586 () Bool)

(assert (=> b!87586 (= e!47534 (+ 1 (size!2 (tail!1068 list!1038))))))

(assert (= (and d!58307 c!21691) b!87585))

(assert (= (and d!58307 (not c!21691)) b!87586))

(declare-fun m!83936 () Bool)

(assert (=> b!87586 m!83936))

(assert (=> b!87562 d!58307))

(push 1)

(assert (not b!87574))

(assert (not b!87580))

(assert (not b!87586))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

