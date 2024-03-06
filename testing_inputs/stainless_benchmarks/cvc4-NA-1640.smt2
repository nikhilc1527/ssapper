; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11416 () Bool)

(assert start!11416)

(declare-fun b!87596 () Bool)

(declare-fun e!47543 () Bool)

(declare-fun e!47541 () Bool)

(assert (=> b!87596 (= e!47543 e!47541)))

(declare-fun c!21694 () Bool)

(declare-datatypes () ((List!718 (Nil!676) (Cons!674 (head!1075 (_ BitVec 32)) (tail!1069 List!718)))))

(declare-fun list!1038 () List!718)

(declare-fun contains!5 (List!718 (_ BitVec 32)) Bool)

(assert (=> b!87596 (= c!21694 (contains!5 list!1038 #b00000000000000000000000000000000))))

(declare-fun res!45688 () Bool)

(declare-fun e!47542 () Bool)

(assert (=> start!11416 (=> (not res!45688) (not e!47542))))

(declare-fun res!45662 () Int)

(assert (=> start!11416 (= res!45688 (and (not (is-Nil!676 list!1038)) (= (head!1075 list!1038) #b00000000000000000000000000000000) (= res!45662 0)))))

(assert (=> start!11416 e!47542))

(assert (=> start!11416 true))

(declare-fun b!87598 () Bool)

(declare-fun size!2 (List!718) Int)

(assert (=> b!87598 (= e!47541 (not (= res!45662 (size!2 list!1038))))))

(declare-fun b!87595 () Bool)

(assert (=> b!87595 (= e!47542 e!47543)))

(declare-fun res!45689 () Bool)

(assert (=> b!87595 (=> res!45689 e!47543)))

(assert (=> b!87595 (= res!45689 (< res!45662 0))))

(declare-fun b!87597 () Bool)

(declare-fun firstZeroAtPos!0 (List!718 Int) Bool)

(assert (=> b!87597 (= e!47541 (not (firstZeroAtPos!0 list!1038 res!45662)))))

(assert (= (and start!11416 res!45688) b!87595))

(assert (= (and b!87595 (not res!45689)) b!87596))

(assert (= (and b!87596 c!21694) b!87597))

(assert (= (and b!87596 (not c!21694)) b!87598))

(declare-fun m!83938 () Bool)

(assert (=> b!87596 m!83938))

(declare-fun m!83940 () Bool)

(assert (=> b!87598 m!83940))

(declare-fun m!83942 () Bool)

(assert (=> b!87597 m!83942))

(push 1)

(assert (not b!87597))

(assert (not b!87596))

(assert (not b!87598))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!87610 () Bool)

(declare-fun e!47551 () Bool)

(assert (=> b!87610 (= e!47551 (firstZeroAtPos!0 (tail!1069 list!1038) (- res!45662 1)))))

(declare-fun b!87608 () Bool)

(declare-fun e!47550 () Bool)

(assert (=> b!87608 (= e!47550 (= (head!1075 list!1038) #b00000000000000000000000000000000))))

(declare-fun d!58309 () Bool)

(declare-fun res!45694 () Bool)

(declare-fun e!47552 () Bool)

(assert (=> d!58309 (=> (not res!45694) (not e!47552))))

(assert (=> d!58309 (= res!45694 (not (is-Nil!676 list!1038)))))

(assert (=> d!58309 (= (firstZeroAtPos!0 list!1038 res!45662) e!47552)))

(declare-fun b!87609 () Bool)

(assert (=> b!87609 (= e!47550 e!47551)))

(declare-fun res!45695 () Bool)

(assert (=> b!87609 (=> (not res!45695) (not e!47551))))

(assert (=> b!87609 (= res!45695 (not (= (head!1075 list!1038) #b00000000000000000000000000000000)))))

(declare-fun b!87607 () Bool)

(assert (=> b!87607 (= e!47552 e!47550)))

(declare-fun c!21697 () Bool)

(assert (=> b!87607 (= c!21697 (= res!45662 0))))

(assert (= (and d!58309 res!45694) b!87607))

(assert (= (and b!87609 res!45695) b!87610))

(assert (= (and b!87607 c!21697) b!87608))

(assert (= (and b!87607 (not c!21697)) b!87609))

(declare-fun m!83944 () Bool)

(assert (=> b!87610 m!83944))

(assert (=> b!87597 d!58309))

(declare-fun d!58311 () Bool)

(declare-fun res!45700 () Bool)

(declare-fun e!47557 () Bool)

(assert (=> d!58311 (=> (not res!45700) (not e!47557))))

(assert (=> d!58311 (= res!45700 (not (is-Nil!676 list!1038)))))

(assert (=> d!58311 (= (contains!5 list!1038 #b00000000000000000000000000000000) e!47557)))

(declare-fun b!87615 () Bool)

(declare-fun e!47558 () Bool)

(assert (=> b!87615 (= e!47557 e!47558)))

(declare-fun res!45701 () Bool)

(assert (=> b!87615 (=> res!45701 e!47558)))

(assert (=> b!87615 (= res!45701 (= (head!1075 list!1038) #b00000000000000000000000000000000))))

(declare-fun b!87616 () Bool)

(assert (=> b!87616 (= e!47558 (contains!5 (tail!1069 list!1038) #b00000000000000000000000000000000))))

(assert (= (and d!58311 res!45700) b!87615))

(assert (= (and b!87615 (not res!45701)) b!87616))

(declare-fun m!83946 () Bool)

(assert (=> b!87616 m!83946))

(assert (=> b!87596 d!58311))

(declare-fun d!58313 () Bool)

(declare-fun lt!20184 () Int)

(assert (=> d!58313 (>= lt!20184 0)))

(declare-fun e!47561 () Int)

(assert (=> d!58313 (= lt!20184 e!47561)))

(declare-fun c!21700 () Bool)

(assert (=> d!58313 (= c!21700 (is-Nil!676 list!1038))))

(assert (=> d!58313 (= (size!2 list!1038) lt!20184)))

(declare-fun b!87621 () Bool)

(assert (=> b!87621 (= e!47561 0)))

(declare-fun b!87622 () Bool)

(assert (=> b!87622 (= e!47561 (+ 1 (size!2 (tail!1069 list!1038))))))

(assert (= (and d!58313 c!21700) b!87621))

(assert (= (and d!58313 (not c!21700)) b!87622))

(declare-fun m!83948 () Bool)

(assert (=> b!87622 m!83948))

(assert (=> b!87598 d!58313))

(push 1)

(assert (not b!87622))

(assert (not b!87610))

(assert (not b!87616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

