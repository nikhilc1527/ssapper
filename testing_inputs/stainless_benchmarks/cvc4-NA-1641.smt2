; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11424 () Bool)

(assert start!11424)

(declare-fun b!87633 () Bool)

(declare-fun e!47570 () Bool)

(declare-datatypes () ((List!719 (Nil!677) (Cons!675 (head!1076 (_ BitVec 32)) (tail!1070 List!719)))))

(declare-fun list!1038 () List!719)

(declare-fun res!45663 () Int)

(declare-fun firstZeroAtPos!0 (List!719 Int) Bool)

(assert (=> b!87633 (= e!47570 (not (firstZeroAtPos!0 list!1038 res!45663)))))

(declare-fun b!87634 () Bool)

(declare-fun e!47569 () Bool)

(declare-fun e!47568 () Bool)

(assert (=> b!87634 (= e!47569 e!47568)))

(declare-fun res!45710 () Bool)

(assert (=> b!87634 (=> res!45710 e!47568)))

(assert (=> b!87634 (= res!45710 (< res!45663 0))))

(declare-fun res!45708 () Bool)

(assert (=> start!11424 (=> (not res!45708) (not e!47569))))

(assert (=> start!11424 (= res!45708 (and (not (is-Nil!677 list!1038)) (not (= (head!1076 list!1038) #b00000000000000000000000000000000))))))

(assert (=> start!11424 e!47569))

(assert (=> start!11424 true))

(declare-fun b!87635 () Bool)

(assert (=> b!87635 (= e!47568 e!47570)))

(declare-fun c!21703 () Bool)

(declare-fun contains!5 (List!719 (_ BitVec 32)) Bool)

(assert (=> b!87635 (= c!21703 (contains!5 list!1038 #b00000000000000000000000000000000))))

(declare-fun b!87636 () Bool)

(declare-fun res!45709 () Bool)

(assert (=> b!87636 (=> (not res!45709) (not e!47569))))

(declare-fun firstZero!0 (List!719) Int)

(assert (=> b!87636 (= res!45709 (= res!45663 (+ (firstZero!0 (tail!1070 list!1038)) 1)))))

(declare-fun b!87637 () Bool)

(declare-fun size!2 (List!719) Int)

(assert (=> b!87637 (= e!47570 (not (= res!45663 (size!2 list!1038))))))

(assert (= (and start!11424 res!45708) b!87636))

(assert (= (and b!87636 res!45709) b!87634))

(assert (= (and b!87634 (not res!45710)) b!87635))

(assert (= (and b!87635 c!21703) b!87633))

(assert (= (and b!87635 (not c!21703)) b!87637))

(declare-fun m!83950 () Bool)

(assert (=> b!87633 m!83950))

(declare-fun m!83952 () Bool)

(assert (=> b!87635 m!83952))

(declare-fun m!83954 () Bool)

(assert (=> b!87636 m!83954))

(declare-fun m!83956 () Bool)

(assert (=> b!87637 m!83956))

(push 1)

(assert (not b!87636))

(assert (not b!87633))

(assert (not b!87635))

(assert (not b!87637))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!87648 () Bool)

(declare-fun e!47579 () Bool)

(declare-fun lt!20187 () Int)

(assert (=> b!87648 (= e!47579 (firstZeroAtPos!0 (tail!1070 list!1038) lt!20187))))

(declare-fun b!87649 () Bool)

(declare-fun e!47578 () Int)

(assert (=> b!87649 (= e!47578 0)))

(declare-fun b!87650 () Bool)

(declare-fun e!47577 () Bool)

(assert (=> b!87650 (= e!47577 e!47579)))

(declare-fun c!21709 () Bool)

(assert (=> b!87650 (= c!21709 (contains!5 (tail!1070 list!1038) #b00000000000000000000000000000000))))

(declare-fun d!58315 () Bool)

(assert (=> d!58315 e!47577))

(declare-fun res!45714 () Bool)

(assert (=> d!58315 (=> (not res!45714) (not e!47577))))

(assert (=> d!58315 (= res!45714 (>= lt!20187 0))))

(assert (=> d!58315 (= lt!20187 e!47578)))

(declare-fun c!21708 () Bool)

(assert (=> d!58315 (= c!21708 (or (is-Nil!677 (tail!1070 list!1038)) (= (head!1076 (tail!1070 list!1038)) #b00000000000000000000000000000000)))))

(assert (=> d!58315 (= (firstZero!0 (tail!1070 list!1038)) lt!20187)))

(declare-fun b!87651 () Bool)

(assert (=> b!87651 (= e!47578 (+ (firstZero!0 (tail!1070 (tail!1070 list!1038))) 1))))

(declare-fun b!87652 () Bool)

(assert (=> b!87652 (= e!47579 (= lt!20187 (size!2 (tail!1070 list!1038))))))

(assert (= (and d!58315 c!21708) b!87649))

(assert (= (and d!58315 (not c!21708)) b!87651))

(assert (= (and d!58315 res!45714) b!87650))

(assert (= (and b!87650 c!21709) b!87648))

(assert (= (and b!87650 (not c!21709)) b!87652))

(declare-fun m!83958 () Bool)

(assert (=> b!87648 m!83958))

(declare-fun m!83960 () Bool)

(assert (=> b!87650 m!83960))

(declare-fun m!83962 () Bool)

(assert (=> b!87651 m!83962))

(declare-fun m!83964 () Bool)

(assert (=> b!87652 m!83964))

(assert (=> b!87636 d!58315))

(declare-fun b!87661 () Bool)

(declare-fun e!47586 () Bool)

(declare-fun e!47587 () Bool)

(assert (=> b!87661 (= e!47586 e!47587)))

(declare-fun c!21712 () Bool)

(assert (=> b!87661 (= c!21712 (= res!45663 0))))

(declare-fun b!87663 () Bool)

(declare-fun e!47588 () Bool)

(assert (=> b!87663 (= e!47587 e!47588)))

(declare-fun res!45720 () Bool)

(assert (=> b!87663 (=> (not res!45720) (not e!47588))))

(assert (=> b!87663 (= res!45720 (not (= (head!1076 list!1038) #b00000000000000000000000000000000)))))

(declare-fun b!87664 () Bool)

(assert (=> b!87664 (= e!47588 (firstZeroAtPos!0 (tail!1070 list!1038) (- res!45663 1)))))

(declare-fun b!87662 () Bool)

(assert (=> b!87662 (= e!47587 (= (head!1076 list!1038) #b00000000000000000000000000000000))))

(declare-fun d!58317 () Bool)

(declare-fun res!45719 () Bool)

(assert (=> d!58317 (=> (not res!45719) (not e!47586))))

(assert (=> d!58317 (= res!45719 (not (is-Nil!677 list!1038)))))

(assert (=> d!58317 (= (firstZeroAtPos!0 list!1038 res!45663) e!47586)))

(assert (= (and d!58317 res!45719) b!87661))

(assert (= (and b!87663 res!45720) b!87664))

(assert (= (and b!87661 c!21712) b!87662))

(assert (= (and b!87661 (not c!21712)) b!87663))

(declare-fun m!83966 () Bool)

(assert (=> b!87664 m!83966))

(assert (=> b!87633 d!58317))

(declare-fun d!58319 () Bool)

(declare-fun res!45725 () Bool)

(declare-fun e!47593 () Bool)

(assert (=> d!58319 (=> (not res!45725) (not e!47593))))

(assert (=> d!58319 (= res!45725 (not (is-Nil!677 list!1038)))))

(assert (=> d!58319 (= (contains!5 list!1038 #b00000000000000000000000000000000) e!47593)))

(declare-fun b!87669 () Bool)

(declare-fun e!47594 () Bool)

(assert (=> b!87669 (= e!47593 e!47594)))

(declare-fun res!45726 () Bool)

(assert (=> b!87669 (=> res!45726 e!47594)))

(assert (=> b!87669 (= res!45726 (= (head!1076 list!1038) #b00000000000000000000000000000000))))

(declare-fun b!87670 () Bool)

(assert (=> b!87670 (= e!47594 (contains!5 (tail!1070 list!1038) #b00000000000000000000000000000000))))

(assert (= (and d!58319 res!45725) b!87669))

(assert (= (and b!87669 (not res!45726)) b!87670))

(assert (=> b!87670 m!83960))

(assert (=> b!87635 d!58319))

(declare-fun d!58321 () Bool)

(declare-fun lt!20190 () Int)

(assert (=> d!58321 (>= lt!20190 0)))

(declare-fun e!47597 () Int)

(assert (=> d!58321 (= lt!20190 e!47597)))

(declare-fun c!21715 () Bool)

(assert (=> d!58321 (= c!21715 (is-Nil!677 list!1038))))

(assert (=> d!58321 (= (size!2 list!1038) lt!20190)))

(declare-fun b!87675 () Bool)

(assert (=> b!87675 (= e!47597 0)))

(declare-fun b!87676 () Bool)

(assert (=> b!87676 (= e!47597 (+ 1 (size!2 (tail!1070 list!1038))))))

(assert (= (and d!58321 c!21715) b!87675))

(assert (= (and d!58321 (not c!21715)) b!87676))

(assert (=> b!87676 m!83964))

(assert (=> b!87637 d!58321))

(push 1)

(assert (not b!87652))

(assert (not b!87648))

(assert (not b!87651))

(assert (not b!87650))

(assert (not b!87664))

(assert (not b!87670))

(assert (not b!87676))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

