; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12528 () Bool)

(assert start!12528)

(declare-fun b!92233 () Bool)

(declare-fun res!48517 () Bool)

(declare-fun e!50492 () Bool)

(assert (=> b!92233 (=> (not res!48517) (not e!50492))))

(declare-fun x!33899 () (_ BitVec 32))

(declare-datatypes () ((Unit!1399 (Unit!1400))))

(declare-fun x$1!1275 () Unit!1399)

(declare-fun Unit!1401 () Unit!1399)

(assert (=> b!92233 (= res!48517 (and (bvslt #b00000000000000000000000000000000 x!33899) (bvslt x!33899 #b00000000000000000000000000001010) (= x$1!1275 Unit!1401)))))

(declare-fun b!92234 () Bool)

(declare-fun res!48519 () Bool)

(assert (=> b!92234 (=> (not res!48519) (not e!50492))))

(declare-datatypes () ((IntSet!61 (Empty!201) (Node!182 (left!1931 IntSet!61) (elem!326 (_ BitVec 32)) (right!1937 IntSet!61)))))

(declare-fun t1!31 () IntSet!61)

(declare-fun t2!35 () IntSet!61)

(declare-fun contains!22 (IntSet!61 (_ BitVec 32)) Bool)

(declare-fun union!5 (IntSet!61 IntSet!61) IntSet!61)

(assert (=> b!92234 (= res!48519 (not (= (contains!22 (union!5 t1!31 t2!35) x!33899) (contains!22 t1!31 x!33899))))))

(declare-fun b!92235 () Bool)

(declare-fun res!48515 () Bool)

(assert (=> b!92235 (=> (not res!48515) (not e!50492))))

(declare-fun x1!90 () Bool)

(assert (=> b!92235 (= res!48515 (= x1!90 (contains!22 t1!31 x!33899)))))

(declare-fun b!92236 () Bool)

(declare-fun res!48520 () Bool)

(assert (=> b!92236 (=> (not res!48520) (not e!50492))))

(declare-fun u!4 () IntSet!61)

(declare-fun xu!1 () Bool)

(assert (=> b!92236 (= res!48520 (= xu!1 (contains!22 u!4 x!33899)))))

(declare-fun b!92237 () Bool)

(assert (=> b!92237 (= e!50492 (not (contains!22 t2!35 x!33899)))))

(declare-fun b!92238 () Bool)

(declare-fun res!48518 () Bool)

(assert (=> b!92238 (=> (not res!48518) (not e!50492))))

(declare-fun x2!98 () Bool)

(assert (=> b!92238 (= res!48518 (= x2!98 (contains!22 t2!35 x!33899)))))

(declare-fun res!48516 () Bool)

(assert (=> start!12528 (=> (not res!48516) (not e!50492))))

(assert (=> start!12528 (= res!48516 (= u!4 (union!5 t1!31 t2!35)))))

(assert (=> start!12528 e!50492))

(assert (=> start!12528 true))

(assert (= (and start!12528 res!48516) b!92235))

(assert (= (and b!92235 res!48515) b!92238))

(assert (= (and b!92238 res!48518) b!92236))

(assert (= (and b!92236 res!48520) b!92233))

(assert (= (and b!92233 res!48517) b!92234))

(assert (= (and b!92234 res!48519) b!92237))

(declare-fun m!87968 () Bool)

(assert (=> b!92238 m!87968))

(declare-fun m!87970 () Bool)

(assert (=> b!92236 m!87970))

(assert (=> b!92237 m!87968))

(declare-fun m!87972 () Bool)

(assert (=> b!92235 m!87972))

(declare-fun m!87974 () Bool)

(assert (=> start!12528 m!87974))

(assert (=> b!92234 m!87974))

(assert (=> b!92234 m!87974))

(declare-fun m!87976 () Bool)

(assert (=> b!92234 m!87976))

(assert (=> b!92234 m!87972))

(push 1)

(assert (not b!92236))

(assert (not b!92235))

(assert (not b!92237))

(assert (not b!92234))

(assert (not b!92238))

(assert (not start!12528))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60528 () Bool)

(declare-fun res!48528 () Bool)

(declare-fun e!50498 () Bool)

(assert (=> d!60528 (=> (not res!48528) (not e!50498))))

(assert (=> d!60528 (= res!48528 (not (is-Empty!201 t2!35)))))

(assert (=> d!60528 (= (contains!22 t2!35 x!33899) e!50498)))

(declare-fun b!92245 () Bool)

(declare-fun lt!20825 () Bool)

(declare-fun lt!20824 () Bool)

(assert (=> b!92245 (= e!50498 (ite lt!20824 lt!20825 (or (not (bvsgt x!33899 (elem!326 t2!35))) lt!20825)))))

(declare-fun e!50497 () Bool)

(assert (=> b!92245 (= lt!20825 e!50497)))

(declare-fun c!22434 () Bool)

(assert (=> b!92245 (= c!22434 (or lt!20824 (bvsgt x!33899 (elem!326 t2!35))))))

(assert (=> b!92245 (= lt!20824 (bvslt x!33899 (elem!326 t2!35)))))

(declare-fun b!92247 () Bool)

(declare-fun res!48529 () Bool)

(assert (=> b!92247 (= e!50497 res!48529)))

(assert (=> b!92247 true))

(assert (=> b!92247 true))

(declare-fun b!92246 () Bool)

(assert (=> b!92246 (= e!50497 (contains!22 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35)) x!33899))))

(assert (= (and d!60528 res!48528) b!92245))

(assert (= (and b!92245 c!22434) b!92246))

(assert (= (and b!92245 (not c!22434)) b!92247))

(declare-fun m!87978 () Bool)

(assert (=> b!92246 m!87978))

(assert (=> b!92237 d!60528))

(declare-fun d!60530 () Bool)

(declare-fun res!48530 () Bool)

(declare-fun e!50500 () Bool)

(assert (=> d!60530 (=> (not res!48530) (not e!50500))))

(assert (=> d!60530 (= res!48530 (not (is-Empty!201 t1!31)))))

(assert (=> d!60530 (= (contains!22 t1!31 x!33899) e!50500)))

(declare-fun lt!20827 () Bool)

(declare-fun b!92248 () Bool)

(declare-fun lt!20826 () Bool)

(assert (=> b!92248 (= e!50500 (ite lt!20826 lt!20827 (or (not (bvsgt x!33899 (elem!326 t1!31))) lt!20827)))))

(declare-fun e!50499 () Bool)

(assert (=> b!92248 (= lt!20827 e!50499)))

(declare-fun c!22435 () Bool)

(assert (=> b!92248 (= c!22435 (or lt!20826 (bvsgt x!33899 (elem!326 t1!31))))))

(assert (=> b!92248 (= lt!20826 (bvslt x!33899 (elem!326 t1!31)))))

(declare-fun b!92250 () Bool)

(declare-fun res!48531 () Bool)

(assert (=> b!92250 (= e!50499 res!48531)))

(assert (=> b!92250 true))

(assert (=> b!92250 true))

(declare-fun b!92249 () Bool)

(assert (=> b!92249 (= e!50499 (contains!22 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31)) x!33899))))

(assert (= (and d!60530 res!48530) b!92248))

(assert (= (and b!92248 c!22435) b!92249))

(assert (= (and b!92248 (not c!22435)) b!92250))

(declare-fun m!87980 () Bool)

(assert (=> b!92249 m!87980))

(assert (=> b!92235 d!60530))

(declare-fun d!60532 () Bool)

(declare-fun res!48532 () Bool)

(declare-fun e!50502 () Bool)

(assert (=> d!60532 (=> (not res!48532) (not e!50502))))

(assert (=> d!60532 (= res!48532 (not (is-Empty!201 u!4)))))

(assert (=> d!60532 (= (contains!22 u!4 x!33899) e!50502)))

(declare-fun lt!20829 () Bool)

(declare-fun lt!20828 () Bool)

(declare-fun b!92251 () Bool)

(assert (=> b!92251 (= e!50502 (ite lt!20828 lt!20829 (or (not (bvsgt x!33899 (elem!326 u!4))) lt!20829)))))

(declare-fun e!50501 () Bool)

(assert (=> b!92251 (= lt!20829 e!50501)))

(declare-fun c!22436 () Bool)

(assert (=> b!92251 (= c!22436 (or lt!20828 (bvsgt x!33899 (elem!326 u!4))))))

(assert (=> b!92251 (= lt!20828 (bvslt x!33899 (elem!326 u!4)))))

(declare-fun b!92253 () Bool)

(declare-fun res!48533 () Bool)

(assert (=> b!92253 (= e!50501 res!48533)))

(assert (=> b!92253 true))

(assert (=> b!92253 true))

(declare-fun b!92252 () Bool)

(assert (=> b!92252 (= e!50501 (contains!22 (ite lt!20828 (left!1931 u!4) (right!1937 u!4)) x!33899))))

(assert (= (and d!60532 res!48532) b!92251))

(assert (= (and b!92251 c!22436) b!92252))

(assert (= (and b!92251 (not c!22436)) b!92253))

(declare-fun m!87982 () Bool)

(assert (=> b!92252 m!87982))

(assert (=> b!92236 d!60532))

(declare-fun d!60534 () Bool)

(declare-fun res!48534 () Bool)

(declare-fun e!50504 () Bool)

(assert (=> d!60534 (=> (not res!48534) (not e!50504))))

(assert (=> d!60534 (= res!48534 (not (is-Empty!201 (union!5 t1!31 t2!35))))))

(assert (=> d!60534 (= (contains!22 (union!5 t1!31 t2!35) x!33899) e!50504)))

(declare-fun lt!20831 () Bool)

(declare-fun lt!20830 () Bool)

(declare-fun b!92254 () Bool)

(assert (=> b!92254 (= e!50504 (ite lt!20830 lt!20831 (or (not (bvsgt x!33899 (elem!326 (union!5 t1!31 t2!35)))) lt!20831)))))

(declare-fun e!50503 () Bool)

(assert (=> b!92254 (= lt!20831 e!50503)))

(declare-fun c!22437 () Bool)

(assert (=> b!92254 (= c!22437 (or lt!20830 (bvsgt x!33899 (elem!326 (union!5 t1!31 t2!35)))))))

(assert (=> b!92254 (= lt!20830 (bvslt x!33899 (elem!326 (union!5 t1!31 t2!35))))))

(declare-fun b!92256 () Bool)

(declare-fun res!48535 () Bool)

(assert (=> b!92256 (= e!50503 res!48535)))

(assert (=> b!92256 true))

(assert (=> b!92256 true))

(declare-fun b!92255 () Bool)

(assert (=> b!92255 (= e!50503 (contains!22 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35))) x!33899))))

(assert (= (and d!60534 res!48534) b!92254))

(assert (= (and b!92254 c!22437) b!92255))

(assert (= (and b!92254 (not c!22437)) b!92256))

(declare-fun m!87984 () Bool)

(assert (=> b!92255 m!87984))

(assert (=> b!92234 d!60534))

(declare-fun d!60536 () Bool)

(declare-fun c!22440 () Bool)

(assert (=> d!60536 (= c!22440 (is-Empty!201 t1!31))))

(declare-fun e!50507 () IntSet!61)

(assert (=> d!60536 (= (union!5 t1!31 t2!35) e!50507)))

(declare-fun b!92261 () Bool)

(assert (=> b!92261 (= e!50507 t2!35)))

(declare-fun b!92262 () Bool)

(declare-fun incl!5 (IntSet!61 (_ BitVec 32)) IntSet!61)

(assert (=> b!92262 (= e!50507 (incl!5 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35)) (elem!326 t1!31)))))

(assert (= (and d!60536 c!22440) b!92261))

(assert (= (and d!60536 (not c!22440)) b!92262))

(declare-fun m!87986 () Bool)

(assert (=> b!92262 m!87986))

(assert (=> b!92262 m!87986))

(declare-fun m!87988 () Bool)

(assert (=> b!92262 m!87988))

(assert (=> b!92262 m!87988))

(declare-fun m!87990 () Bool)

(assert (=> b!92262 m!87990))

(assert (=> b!92234 d!60536))

(assert (=> b!92234 d!60530))

(assert (=> start!12528 d!60536))

(assert (=> b!92238 d!60528))

(push 1)

(assert (not b!92252))

(assert (not b!92246))

(assert (not b!92262))

(assert (not b!92255))

(assert (not b!92249))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60538 () Bool)

(declare-fun res!48536 () Bool)

(declare-fun e!50509 () Bool)

(assert (=> d!60538 (=> (not res!48536) (not e!50509))))

(assert (=> d!60538 (= res!48536 (not (is-Empty!201 (ite lt!20828 (left!1931 u!4) (right!1937 u!4)))))))

(assert (=> d!60538 (= (contains!22 (ite lt!20828 (left!1931 u!4) (right!1937 u!4)) x!33899) e!50509)))

(declare-fun lt!20833 () Bool)

(declare-fun lt!20832 () Bool)

(declare-fun b!92263 () Bool)

(assert (=> b!92263 (= e!50509 (ite lt!20832 lt!20833 (or (not (bvsgt x!33899 (elem!326 (ite lt!20828 (left!1931 u!4) (right!1937 u!4))))) lt!20833)))))

(declare-fun e!50508 () Bool)

(assert (=> b!92263 (= lt!20833 e!50508)))

(declare-fun c!22441 () Bool)

(assert (=> b!92263 (= c!22441 (or lt!20832 (bvsgt x!33899 (elem!326 (ite lt!20828 (left!1931 u!4) (right!1937 u!4))))))))

(assert (=> b!92263 (= lt!20832 (bvslt x!33899 (elem!326 (ite lt!20828 (left!1931 u!4) (right!1937 u!4)))))))

(declare-fun b!92265 () Bool)

(declare-fun res!48537 () Bool)

(assert (=> b!92265 (= e!50508 res!48537)))

(assert (=> b!92265 true))

(assert (=> b!92265 true))

(declare-fun b!92264 () Bool)

(assert (=> b!92264 (= e!50508 (contains!22 (ite lt!20832 (left!1931 (ite lt!20828 (left!1931 u!4) (right!1937 u!4))) (right!1937 (ite lt!20828 (left!1931 u!4) (right!1937 u!4)))) x!33899))))

(assert (= (and d!60538 res!48536) b!92263))

(assert (= (and b!92263 c!22441) b!92264))

(assert (= (and b!92263 (not c!22441)) b!92265))

(declare-fun m!87992 () Bool)

(assert (=> b!92264 m!87992))

(assert (=> b!92252 d!60538))

(declare-fun d!60540 () Bool)

(declare-fun res!48538 () Bool)

(declare-fun e!50511 () Bool)

(assert (=> d!60540 (=> (not res!48538) (not e!50511))))

(assert (=> d!60540 (= res!48538 (not (is-Empty!201 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35))))))))

(assert (=> d!60540 (= (contains!22 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35))) x!33899) e!50511)))

(declare-fun lt!20835 () Bool)

(declare-fun b!92266 () Bool)

(declare-fun lt!20834 () Bool)

(assert (=> b!92266 (= e!50511 (ite lt!20834 lt!20835 (or (not (bvsgt x!33899 (elem!326 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35)))))) lt!20835)))))

(declare-fun e!50510 () Bool)

(assert (=> b!92266 (= lt!20835 e!50510)))

(declare-fun c!22442 () Bool)

(assert (=> b!92266 (= c!22442 (or lt!20834 (bvsgt x!33899 (elem!326 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35)))))))))

(assert (=> b!92266 (= lt!20834 (bvslt x!33899 (elem!326 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35))))))))

(declare-fun b!92268 () Bool)

(declare-fun res!48539 () Bool)

(assert (=> b!92268 (= e!50510 res!48539)))

(assert (=> b!92268 true))

(assert (=> b!92268 true))

(declare-fun b!92267 () Bool)

(assert (=> b!92267 (= e!50510 (contains!22 (ite lt!20834 (left!1931 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35)))) (right!1937 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35))))) x!33899))))

(assert (= (and d!60540 res!48538) b!92266))

(assert (= (and b!92266 c!22442) b!92267))

(assert (= (and b!92266 (not c!22442)) b!92268))

(declare-fun m!87994 () Bool)

(assert (=> b!92267 m!87994))

(assert (=> b!92255 d!60540))

(declare-fun d!60542 () Bool)

(declare-fun res!48540 () Bool)

(declare-fun e!50513 () Bool)

(assert (=> d!60542 (=> (not res!48540) (not e!50513))))

(assert (=> d!60542 (= res!48540 (not (is-Empty!201 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31)))))))

(assert (=> d!60542 (= (contains!22 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31)) x!33899) e!50513)))

(declare-fun lt!20837 () Bool)

(declare-fun b!92269 () Bool)

(declare-fun lt!20836 () Bool)

(assert (=> b!92269 (= e!50513 (ite lt!20836 lt!20837 (or (not (bvsgt x!33899 (elem!326 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31))))) lt!20837)))))

(declare-fun e!50512 () Bool)

(assert (=> b!92269 (= lt!20837 e!50512)))

(declare-fun c!22443 () Bool)

(assert (=> b!92269 (= c!22443 (or lt!20836 (bvsgt x!33899 (elem!326 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31))))))))

(assert (=> b!92269 (= lt!20836 (bvslt x!33899 (elem!326 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31)))))))

(declare-fun b!92271 () Bool)

(declare-fun res!48541 () Bool)

(assert (=> b!92271 (= e!50512 res!48541)))

(assert (=> b!92271 true))

(assert (=> b!92271 true))

(declare-fun b!92270 () Bool)

(assert (=> b!92270 (= e!50512 (contains!22 (ite lt!20836 (left!1931 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31))) (right!1937 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31)))) x!33899))))

(assert (= (and d!60542 res!48540) b!92269))

(assert (= (and b!92269 c!22443) b!92270))

(assert (= (and b!92269 (not c!22443)) b!92271))

(declare-fun m!87996 () Bool)

(assert (=> b!92270 m!87996))

(assert (=> b!92249 d!60542))

(declare-fun b!92283 () Bool)

(declare-fun e!50518 () IntSet!61)

(declare-fun res!48547 () IntSet!61)

(assert (=> b!92283 (= e!50518 res!48547)))

(assert (=> b!92283 true))

(assert (=> b!92283 true))

(declare-fun b!92280 () Bool)

(declare-fun e!50519 () IntSet!61)

(assert (=> b!92280 (= e!50519 (Node!182 Empty!201 (elem!326 t1!31) Empty!201))))

(declare-fun d!60544 () Bool)

(declare-fun c!22448 () Bool)

(assert (=> d!60544 (= c!22448 (is-Empty!201 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))))))

(assert (=> d!60544 (= (incl!5 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35)) (elem!326 t1!31)) e!50519)))

(declare-fun lt!20842 () Bool)

(declare-fun b!92282 () Bool)

(assert (=> b!92282 (= e!50518 (incl!5 (ite lt!20842 (left!1931 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (right!1937 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35)))) (elem!326 t1!31)))))

(declare-fun lt!20843 () IntSet!61)

(declare-fun b!92281 () Bool)

(assert (=> b!92281 (= e!50519 (ite lt!20842 (Node!182 lt!20843 (elem!326 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (right!1937 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35)))) (ite (bvsgt (elem!326 t1!31) (elem!326 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35)))) (Node!182 (left!1931 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (elem!326 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) lt!20843) (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35)))))))

(assert (=> b!92281 (= lt!20843 e!50518)))

(declare-fun c!22449 () Bool)

(assert (=> b!92281 (= c!22449 (or lt!20842 (bvsgt (elem!326 t1!31) (elem!326 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))))))))

(assert (=> b!92281 (= lt!20842 (bvslt (elem!326 t1!31) (elem!326 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35)))))))

(assert (= (and b!92281 c!22449) b!92282))

(assert (= (and b!92281 (not c!22449)) b!92283))

(assert (= (and d!60544 c!22448) b!92280))

(assert (= (and d!60544 (not c!22448)) b!92281))

(declare-fun m!87998 () Bool)

(assert (=> b!92282 m!87998))

(assert (=> b!92262 d!60544))

(declare-fun d!60546 () Bool)

(declare-fun c!22450 () Bool)

(assert (=> d!60546 (= c!22450 (is-Empty!201 (left!1931 t1!31)))))

(declare-fun e!50520 () IntSet!61)

(assert (=> d!60546 (= (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35)) e!50520)))

(declare-fun b!92284 () Bool)

(assert (=> b!92284 (= e!50520 (union!5 (right!1937 t1!31) t2!35))))

(declare-fun b!92285 () Bool)

(assert (=> b!92285 (= e!50520 (incl!5 (union!5 (left!1931 (left!1931 t1!31)) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35))) (elem!326 (left!1931 t1!31))))))

(assert (= (and d!60546 c!22450) b!92284))

(assert (= (and d!60546 (not c!22450)) b!92285))

(assert (=> b!92285 m!87986))

(declare-fun m!88000 () Bool)

(assert (=> b!92285 m!88000))

(assert (=> b!92285 m!88000))

(declare-fun m!88002 () Bool)

(assert (=> b!92285 m!88002))

(assert (=> b!92285 m!88002))

(declare-fun m!88004 () Bool)

(assert (=> b!92285 m!88004))

(assert (=> b!92262 d!60546))

(declare-fun d!60548 () Bool)

(declare-fun c!22451 () Bool)

(assert (=> d!60548 (= c!22451 (is-Empty!201 (right!1937 t1!31)))))

(declare-fun e!50521 () IntSet!61)

(assert (=> d!60548 (= (union!5 (right!1937 t1!31) t2!35) e!50521)))

(declare-fun b!92286 () Bool)

(assert (=> b!92286 (= e!50521 t2!35)))

(declare-fun b!92287 () Bool)

(assert (=> b!92287 (= e!50521 (incl!5 (union!5 (left!1931 (right!1937 t1!31)) (union!5 (right!1937 (right!1937 t1!31)) t2!35)) (elem!326 (right!1937 t1!31))))))

(assert (= (and d!60548 c!22451) b!92286))

(assert (= (and d!60548 (not c!22451)) b!92287))

(declare-fun m!88006 () Bool)

(assert (=> b!92287 m!88006))

(assert (=> b!92287 m!88006))

(declare-fun m!88008 () Bool)

(assert (=> b!92287 m!88008))

(assert (=> b!92287 m!88008))

(declare-fun m!88010 () Bool)

(assert (=> b!92287 m!88010))

(assert (=> b!92262 d!60548))

(declare-fun d!60550 () Bool)

(declare-fun res!48548 () Bool)

(declare-fun e!50523 () Bool)

(assert (=> d!60550 (=> (not res!48548) (not e!50523))))

(assert (=> d!60550 (= res!48548 (not (is-Empty!201 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35)))))))

(assert (=> d!60550 (= (contains!22 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35)) x!33899) e!50523)))

(declare-fun lt!20845 () Bool)

(declare-fun b!92288 () Bool)

(declare-fun lt!20844 () Bool)

(assert (=> b!92288 (= e!50523 (ite lt!20844 lt!20845 (or (not (bvsgt x!33899 (elem!326 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35))))) lt!20845)))))

(declare-fun e!50522 () Bool)

(assert (=> b!92288 (= lt!20845 e!50522)))

(declare-fun c!22452 () Bool)

(assert (=> b!92288 (= c!22452 (or lt!20844 (bvsgt x!33899 (elem!326 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35))))))))

(assert (=> b!92288 (= lt!20844 (bvslt x!33899 (elem!326 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35)))))))

(declare-fun b!92290 () Bool)

(declare-fun res!48549 () Bool)

(assert (=> b!92290 (= e!50522 res!48549)))

(assert (=> b!92290 true))

(assert (=> b!92290 true))

(declare-fun b!92289 () Bool)

(assert (=> b!92289 (= e!50522 (contains!22 (ite lt!20844 (left!1931 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35))) (right!1937 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35)))) x!33899))))

(assert (= (and d!60550 res!48548) b!92288))

(assert (= (and b!92288 c!22452) b!92289))

(assert (= (and b!92288 (not c!22452)) b!92290))

(declare-fun m!88012 () Bool)

(assert (=> b!92289 m!88012))

(assert (=> b!92246 d!60550))

(push 1)

(assert (not b!92285))

(assert (not b!92264))

(assert (not b!92289))

(assert (not b!92287))

(assert (not b!92270))

(assert (not b!92282))

(assert (not b!92267))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60552 () Bool)

(declare-fun res!48550 () Bool)

(declare-fun e!50525 () Bool)

(assert (=> d!60552 (=> (not res!48550) (not e!50525))))

(assert (=> d!60552 (= res!48550 (not (is-Empty!201 (ite lt!20844 (left!1931 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35))) (right!1937 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35)))))))))

(assert (=> d!60552 (= (contains!22 (ite lt!20844 (left!1931 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35))) (right!1937 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35)))) x!33899) e!50525)))

(declare-fun lt!20847 () Bool)

(declare-fun lt!20846 () Bool)

(declare-fun b!92291 () Bool)

(assert (=> b!92291 (= e!50525 (ite lt!20846 lt!20847 (or (not (bvsgt x!33899 (elem!326 (ite lt!20844 (left!1931 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35))) (right!1937 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35))))))) lt!20847)))))

(declare-fun e!50524 () Bool)

(assert (=> b!92291 (= lt!20847 e!50524)))

(declare-fun c!22453 () Bool)

(assert (=> b!92291 (= c!22453 (or lt!20846 (bvsgt x!33899 (elem!326 (ite lt!20844 (left!1931 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35))) (right!1937 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35))))))))))

(assert (=> b!92291 (= lt!20846 (bvslt x!33899 (elem!326 (ite lt!20844 (left!1931 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35))) (right!1937 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35)))))))))

(declare-fun b!92293 () Bool)

(declare-fun res!48551 () Bool)

(assert (=> b!92293 (= e!50524 res!48551)))

(assert (=> b!92293 true))

(assert (=> b!92293 true))

(declare-fun b!92292 () Bool)

(assert (=> b!92292 (= e!50524 (contains!22 (ite lt!20846 (left!1931 (ite lt!20844 (left!1931 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35))) (right!1937 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35))))) (right!1937 (ite lt!20844 (left!1931 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35))) (right!1937 (ite lt!20824 (left!1931 t2!35) (right!1937 t2!35)))))) x!33899))))

(assert (= (and d!60552 res!48550) b!92291))

(assert (= (and b!92291 c!22453) b!92292))

(assert (= (and b!92291 (not c!22453)) b!92293))

(declare-fun m!88014 () Bool)

(assert (=> b!92292 m!88014))

(assert (=> b!92289 d!60552))

(declare-fun b!92297 () Bool)

(declare-fun e!50526 () IntSet!61)

(declare-fun res!48552 () IntSet!61)

(assert (=> b!92297 (= e!50526 res!48552)))

(assert (=> b!92297 true))

(assert (=> b!92297 true))

(declare-fun b!92294 () Bool)

(declare-fun e!50527 () IntSet!61)

(assert (=> b!92294 (= e!50527 (Node!182 Empty!201 (elem!326 (left!1931 t1!31)) Empty!201))))

(declare-fun d!60554 () Bool)

(declare-fun c!22454 () Bool)

(assert (=> d!60554 (= c!22454 (is-Empty!201 (union!5 (left!1931 (left!1931 t1!31)) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35)))))))

(assert (=> d!60554 (= (incl!5 (union!5 (left!1931 (left!1931 t1!31)) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35))) (elem!326 (left!1931 t1!31))) e!50527)))

(declare-fun b!92296 () Bool)

(declare-fun lt!20848 () Bool)

(assert (=> b!92296 (= e!50526 (incl!5 (ite lt!20848 (left!1931 (union!5 (left!1931 (left!1931 t1!31)) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35)))) (right!1937 (union!5 (left!1931 (left!1931 t1!31)) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35))))) (elem!326 (left!1931 t1!31))))))

(declare-fun lt!20849 () IntSet!61)

(declare-fun b!92295 () Bool)

(assert (=> b!92295 (= e!50527 (ite lt!20848 (Node!182 lt!20849 (elem!326 (union!5 (left!1931 (left!1931 t1!31)) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35)))) (right!1937 (union!5 (left!1931 (left!1931 t1!31)) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35))))) (ite (bvsgt (elem!326 (left!1931 t1!31)) (elem!326 (union!5 (left!1931 (left!1931 t1!31)) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35))))) (Node!182 (left!1931 (union!5 (left!1931 (left!1931 t1!31)) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35)))) (elem!326 (union!5 (left!1931 (left!1931 t1!31)) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35)))) lt!20849) (union!5 (left!1931 (left!1931 t1!31)) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35))))))))

(assert (=> b!92295 (= lt!20849 e!50526)))

(declare-fun c!22455 () Bool)

(assert (=> b!92295 (= c!22455 (or lt!20848 (bvsgt (elem!326 (left!1931 t1!31)) (elem!326 (union!5 (left!1931 (left!1931 t1!31)) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35)))))))))

(assert (=> b!92295 (= lt!20848 (bvslt (elem!326 (left!1931 t1!31)) (elem!326 (union!5 (left!1931 (left!1931 t1!31)) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35))))))))

(assert (= (and b!92295 c!22455) b!92296))

(assert (= (and b!92295 (not c!22455)) b!92297))

(assert (= (and d!60554 c!22454) b!92294))

(assert (= (and d!60554 (not c!22454)) b!92295))

(declare-fun m!88016 () Bool)

(assert (=> b!92296 m!88016))

(assert (=> b!92285 d!60554))

(declare-fun d!60556 () Bool)

(declare-fun c!22456 () Bool)

(assert (=> d!60556 (= c!22456 (is-Empty!201 (left!1931 (left!1931 t1!31))))))

(declare-fun e!50528 () IntSet!61)

(assert (=> d!60556 (= (union!5 (left!1931 (left!1931 t1!31)) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35))) e!50528)))

(declare-fun b!92298 () Bool)

(assert (=> b!92298 (= e!50528 (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35)))))

(declare-fun b!92299 () Bool)

(assert (=> b!92299 (= e!50528 (incl!5 (union!5 (left!1931 (left!1931 (left!1931 t1!31))) (union!5 (right!1937 (left!1931 (left!1931 t1!31))) (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35)))) (elem!326 (left!1931 (left!1931 t1!31)))))))

(assert (= (and d!60556 c!22456) b!92298))

(assert (= (and d!60556 (not c!22456)) b!92299))

(assert (=> b!92299 m!88000))

(declare-fun m!88018 () Bool)

(assert (=> b!92299 m!88018))

(assert (=> b!92299 m!88018))

(declare-fun m!88020 () Bool)

(assert (=> b!92299 m!88020))

(assert (=> b!92299 m!88020))

(declare-fun m!88022 () Bool)

(assert (=> b!92299 m!88022))

(assert (=> b!92285 d!60556))

(declare-fun d!60558 () Bool)

(declare-fun c!22457 () Bool)

(assert (=> d!60558 (= c!22457 (is-Empty!201 (right!1937 (left!1931 t1!31))))))

(declare-fun e!50529 () IntSet!61)

(assert (=> d!60558 (= (union!5 (right!1937 (left!1931 t1!31)) (union!5 (right!1937 t1!31) t2!35)) e!50529)))

(declare-fun b!92300 () Bool)

(assert (=> b!92300 (= e!50529 (union!5 (right!1937 t1!31) t2!35))))

(declare-fun b!92301 () Bool)

(assert (=> b!92301 (= e!50529 (incl!5 (union!5 (left!1931 (right!1937 (left!1931 t1!31))) (union!5 (right!1937 (right!1937 (left!1931 t1!31))) (union!5 (right!1937 t1!31) t2!35))) (elem!326 (right!1937 (left!1931 t1!31)))))))

(assert (= (and d!60558 c!22457) b!92300))

(assert (= (and d!60558 (not c!22457)) b!92301))

(assert (=> b!92301 m!87986))

(declare-fun m!88024 () Bool)

(assert (=> b!92301 m!88024))

(assert (=> b!92301 m!88024))

(declare-fun m!88026 () Bool)

(assert (=> b!92301 m!88026))

(assert (=> b!92301 m!88026))

(declare-fun m!88028 () Bool)

(assert (=> b!92301 m!88028))

(assert (=> b!92285 d!60558))

(declare-fun d!60560 () Bool)

(declare-fun res!48553 () Bool)

(declare-fun e!50531 () Bool)

(assert (=> d!60560 (=> (not res!48553) (not e!50531))))

(assert (=> d!60560 (= res!48553 (not (is-Empty!201 (ite lt!20836 (left!1931 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31))) (right!1937 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31)))))))))

(assert (=> d!60560 (= (contains!22 (ite lt!20836 (left!1931 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31))) (right!1937 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31)))) x!33899) e!50531)))

(declare-fun lt!20850 () Bool)

(declare-fun lt!20851 () Bool)

(declare-fun b!92302 () Bool)

(assert (=> b!92302 (= e!50531 (ite lt!20850 lt!20851 (or (not (bvsgt x!33899 (elem!326 (ite lt!20836 (left!1931 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31))) (right!1937 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31))))))) lt!20851)))))

(declare-fun e!50530 () Bool)

(assert (=> b!92302 (= lt!20851 e!50530)))

(declare-fun c!22458 () Bool)

(assert (=> b!92302 (= c!22458 (or lt!20850 (bvsgt x!33899 (elem!326 (ite lt!20836 (left!1931 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31))) (right!1937 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31))))))))))

(assert (=> b!92302 (= lt!20850 (bvslt x!33899 (elem!326 (ite lt!20836 (left!1931 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31))) (right!1937 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31)))))))))

(declare-fun b!92304 () Bool)

(declare-fun res!48554 () Bool)

(assert (=> b!92304 (= e!50530 res!48554)))

(assert (=> b!92304 true))

(assert (=> b!92304 true))

(declare-fun b!92303 () Bool)

(assert (=> b!92303 (= e!50530 (contains!22 (ite lt!20850 (left!1931 (ite lt!20836 (left!1931 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31))) (right!1937 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31))))) (right!1937 (ite lt!20836 (left!1931 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31))) (right!1937 (ite lt!20826 (left!1931 t1!31) (right!1937 t1!31)))))) x!33899))))

(assert (= (and d!60560 res!48553) b!92302))

(assert (= (and b!92302 c!22458) b!92303))

(assert (= (and b!92302 (not c!22458)) b!92304))

(declare-fun m!88030 () Bool)

(assert (=> b!92303 m!88030))

(assert (=> b!92270 d!60560))

(declare-fun d!60562 () Bool)

(declare-fun res!48555 () Bool)

(declare-fun e!50533 () Bool)

(assert (=> d!60562 (=> (not res!48555) (not e!50533))))

(assert (=> d!60562 (= res!48555 (not (is-Empty!201 (ite lt!20832 (left!1931 (ite lt!20828 (left!1931 u!4) (right!1937 u!4))) (right!1937 (ite lt!20828 (left!1931 u!4) (right!1937 u!4)))))))))

(assert (=> d!60562 (= (contains!22 (ite lt!20832 (left!1931 (ite lt!20828 (left!1931 u!4) (right!1937 u!4))) (right!1937 (ite lt!20828 (left!1931 u!4) (right!1937 u!4)))) x!33899) e!50533)))

(declare-fun lt!20852 () Bool)

(declare-fun lt!20853 () Bool)

(declare-fun b!92305 () Bool)

(assert (=> b!92305 (= e!50533 (ite lt!20852 lt!20853 (or (not (bvsgt x!33899 (elem!326 (ite lt!20832 (left!1931 (ite lt!20828 (left!1931 u!4) (right!1937 u!4))) (right!1937 (ite lt!20828 (left!1931 u!4) (right!1937 u!4))))))) lt!20853)))))

(declare-fun e!50532 () Bool)

(assert (=> b!92305 (= lt!20853 e!50532)))

(declare-fun c!22459 () Bool)

(assert (=> b!92305 (= c!22459 (or lt!20852 (bvsgt x!33899 (elem!326 (ite lt!20832 (left!1931 (ite lt!20828 (left!1931 u!4) (right!1937 u!4))) (right!1937 (ite lt!20828 (left!1931 u!4) (right!1937 u!4))))))))))

(assert (=> b!92305 (= lt!20852 (bvslt x!33899 (elem!326 (ite lt!20832 (left!1931 (ite lt!20828 (left!1931 u!4) (right!1937 u!4))) (right!1937 (ite lt!20828 (left!1931 u!4) (right!1937 u!4)))))))))

(declare-fun b!92307 () Bool)

(declare-fun res!48556 () Bool)

(assert (=> b!92307 (= e!50532 res!48556)))

(assert (=> b!92307 true))

(assert (=> b!92307 true))

(declare-fun b!92306 () Bool)

(assert (=> b!92306 (= e!50532 (contains!22 (ite lt!20852 (left!1931 (ite lt!20832 (left!1931 (ite lt!20828 (left!1931 u!4) (right!1937 u!4))) (right!1937 (ite lt!20828 (left!1931 u!4) (right!1937 u!4))))) (right!1937 (ite lt!20832 (left!1931 (ite lt!20828 (left!1931 u!4) (right!1937 u!4))) (right!1937 (ite lt!20828 (left!1931 u!4) (right!1937 u!4)))))) x!33899))))

(assert (= (and d!60562 res!48555) b!92305))

(assert (= (and b!92305 c!22459) b!92306))

(assert (= (and b!92305 (not c!22459)) b!92307))

(declare-fun m!88032 () Bool)

(assert (=> b!92306 m!88032))

(assert (=> b!92264 d!60562))

(declare-fun d!60564 () Bool)

(declare-fun res!48557 () Bool)

(declare-fun e!50535 () Bool)

(assert (=> d!60564 (=> (not res!48557) (not e!50535))))

(assert (=> d!60564 (= res!48557 (not (is-Empty!201 (ite lt!20834 (left!1931 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35)))) (right!1937 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35))))))))))

(assert (=> d!60564 (= (contains!22 (ite lt!20834 (left!1931 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35)))) (right!1937 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35))))) x!33899) e!50535)))

(declare-fun b!92308 () Bool)

(declare-fun lt!20854 () Bool)

(declare-fun lt!20855 () Bool)

(assert (=> b!92308 (= e!50535 (ite lt!20854 lt!20855 (or (not (bvsgt x!33899 (elem!326 (ite lt!20834 (left!1931 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35)))) (right!1937 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35)))))))) lt!20855)))))

(declare-fun e!50534 () Bool)

(assert (=> b!92308 (= lt!20855 e!50534)))

(declare-fun c!22460 () Bool)

(assert (=> b!92308 (= c!22460 (or lt!20854 (bvsgt x!33899 (elem!326 (ite lt!20834 (left!1931 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35)))) (right!1937 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35)))))))))))

(assert (=> b!92308 (= lt!20854 (bvslt x!33899 (elem!326 (ite lt!20834 (left!1931 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35)))) (right!1937 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35))))))))))

(declare-fun b!92310 () Bool)

(declare-fun res!48558 () Bool)

(assert (=> b!92310 (= e!50534 res!48558)))

(assert (=> b!92310 true))

(assert (=> b!92310 true))

(declare-fun b!92309 () Bool)

(assert (=> b!92309 (= e!50534 (contains!22 (ite lt!20854 (left!1931 (ite lt!20834 (left!1931 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35)))) (right!1937 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35)))))) (right!1937 (ite lt!20834 (left!1931 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35)))) (right!1937 (ite lt!20830 (left!1931 (union!5 t1!31 t2!35)) (right!1937 (union!5 t1!31 t2!35))))))) x!33899))))

(assert (= (and d!60564 res!48557) b!92308))

(assert (= (and b!92308 c!22460) b!92309))

(assert (= (and b!92308 (not c!22460)) b!92310))

(declare-fun m!88034 () Bool)

(assert (=> b!92309 m!88034))

(assert (=> b!92267 d!60564))

(declare-fun b!92314 () Bool)

(declare-fun e!50536 () IntSet!61)

(declare-fun res!48559 () IntSet!61)

(assert (=> b!92314 (= e!50536 res!48559)))

(assert (=> b!92314 true))

(assert (=> b!92314 true))

(declare-fun b!92311 () Bool)

(declare-fun e!50537 () IntSet!61)

(assert (=> b!92311 (= e!50537 (Node!182 Empty!201 (elem!326 (right!1937 t1!31)) Empty!201))))

(declare-fun d!60566 () Bool)

(declare-fun c!22461 () Bool)

(assert (=> d!60566 (= c!22461 (is-Empty!201 (union!5 (left!1931 (right!1937 t1!31)) (union!5 (right!1937 (right!1937 t1!31)) t2!35))))))

(assert (=> d!60566 (= (incl!5 (union!5 (left!1931 (right!1937 t1!31)) (union!5 (right!1937 (right!1937 t1!31)) t2!35)) (elem!326 (right!1937 t1!31))) e!50537)))

(declare-fun b!92313 () Bool)

(declare-fun lt!20856 () Bool)

(assert (=> b!92313 (= e!50536 (incl!5 (ite lt!20856 (left!1931 (union!5 (left!1931 (right!1937 t1!31)) (union!5 (right!1937 (right!1937 t1!31)) t2!35))) (right!1937 (union!5 (left!1931 (right!1937 t1!31)) (union!5 (right!1937 (right!1937 t1!31)) t2!35)))) (elem!326 (right!1937 t1!31))))))

(declare-fun b!92312 () Bool)

(declare-fun lt!20857 () IntSet!61)

(assert (=> b!92312 (= e!50537 (ite lt!20856 (Node!182 lt!20857 (elem!326 (union!5 (left!1931 (right!1937 t1!31)) (union!5 (right!1937 (right!1937 t1!31)) t2!35))) (right!1937 (union!5 (left!1931 (right!1937 t1!31)) (union!5 (right!1937 (right!1937 t1!31)) t2!35)))) (ite (bvsgt (elem!326 (right!1937 t1!31)) (elem!326 (union!5 (left!1931 (right!1937 t1!31)) (union!5 (right!1937 (right!1937 t1!31)) t2!35)))) (Node!182 (left!1931 (union!5 (left!1931 (right!1937 t1!31)) (union!5 (right!1937 (right!1937 t1!31)) t2!35))) (elem!326 (union!5 (left!1931 (right!1937 t1!31)) (union!5 (right!1937 (right!1937 t1!31)) t2!35))) lt!20857) (union!5 (left!1931 (right!1937 t1!31)) (union!5 (right!1937 (right!1937 t1!31)) t2!35)))))))

(assert (=> b!92312 (= lt!20857 e!50536)))

(declare-fun c!22462 () Bool)

(assert (=> b!92312 (= c!22462 (or lt!20856 (bvsgt (elem!326 (right!1937 t1!31)) (elem!326 (union!5 (left!1931 (right!1937 t1!31)) (union!5 (right!1937 (right!1937 t1!31)) t2!35))))))))

(assert (=> b!92312 (= lt!20856 (bvslt (elem!326 (right!1937 t1!31)) (elem!326 (union!5 (left!1931 (right!1937 t1!31)) (union!5 (right!1937 (right!1937 t1!31)) t2!35)))))))

(assert (= (and b!92312 c!22462) b!92313))

(assert (= (and b!92312 (not c!22462)) b!92314))

(assert (= (and d!60566 c!22461) b!92311))

(assert (= (and d!60566 (not c!22461)) b!92312))

(declare-fun m!88036 () Bool)

(assert (=> b!92313 m!88036))

(assert (=> b!92287 d!60566))

(declare-fun d!60568 () Bool)

(declare-fun c!22463 () Bool)

(assert (=> d!60568 (= c!22463 (is-Empty!201 (left!1931 (right!1937 t1!31))))))

(declare-fun e!50538 () IntSet!61)

(assert (=> d!60568 (= (union!5 (left!1931 (right!1937 t1!31)) (union!5 (right!1937 (right!1937 t1!31)) t2!35)) e!50538)))

(declare-fun b!92315 () Bool)

(assert (=> b!92315 (= e!50538 (union!5 (right!1937 (right!1937 t1!31)) t2!35))))

(declare-fun b!92316 () Bool)

(assert (=> b!92316 (= e!50538 (incl!5 (union!5 (left!1931 (left!1931 (right!1937 t1!31))) (union!5 (right!1937 (left!1931 (right!1937 t1!31))) (union!5 (right!1937 (right!1937 t1!31)) t2!35))) (elem!326 (left!1931 (right!1937 t1!31)))))))

(assert (= (and d!60568 c!22463) b!92315))

(assert (= (and d!60568 (not c!22463)) b!92316))

(assert (=> b!92316 m!88006))

(declare-fun m!88038 () Bool)

(assert (=> b!92316 m!88038))

(assert (=> b!92316 m!88038))

(declare-fun m!88040 () Bool)

(assert (=> b!92316 m!88040))

(assert (=> b!92316 m!88040))

(declare-fun m!88042 () Bool)

(assert (=> b!92316 m!88042))

(assert (=> b!92287 d!60568))

(declare-fun d!60570 () Bool)

(declare-fun c!22464 () Bool)

(assert (=> d!60570 (= c!22464 (is-Empty!201 (right!1937 (right!1937 t1!31))))))

(declare-fun e!50539 () IntSet!61)

(assert (=> d!60570 (= (union!5 (right!1937 (right!1937 t1!31)) t2!35) e!50539)))

(declare-fun b!92317 () Bool)

(assert (=> b!92317 (= e!50539 t2!35)))

(declare-fun b!92318 () Bool)

(assert (=> b!92318 (= e!50539 (incl!5 (union!5 (left!1931 (right!1937 (right!1937 t1!31))) (union!5 (right!1937 (right!1937 (right!1937 t1!31))) t2!35)) (elem!326 (right!1937 (right!1937 t1!31)))))))

(assert (= (and d!60570 c!22464) b!92317))

(assert (= (and d!60570 (not c!22464)) b!92318))

(declare-fun m!88044 () Bool)

(assert (=> b!92318 m!88044))

(assert (=> b!92318 m!88044))

(declare-fun m!88046 () Bool)

(assert (=> b!92318 m!88046))

(assert (=> b!92318 m!88046))

(declare-fun m!88048 () Bool)

(assert (=> b!92318 m!88048))

(assert (=> b!92287 d!60570))

(declare-fun b!92322 () Bool)

(declare-fun e!50540 () IntSet!61)

(declare-fun res!48560 () IntSet!61)

(assert (=> b!92322 (= e!50540 res!48560)))

(assert (=> b!92322 true))

(assert (=> b!92322 true))

(declare-fun b!92319 () Bool)

(declare-fun e!50541 () IntSet!61)

(assert (=> b!92319 (= e!50541 (Node!182 Empty!201 (elem!326 t1!31) Empty!201))))

(declare-fun c!22465 () Bool)

(declare-fun d!60572 () Bool)

(assert (=> d!60572 (= c!22465 (is-Empty!201 (ite lt!20842 (left!1931 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (right!1937 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))))))))

(assert (=> d!60572 (= (incl!5 (ite lt!20842 (left!1931 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (right!1937 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35)))) (elem!326 t1!31)) e!50541)))

(declare-fun b!92321 () Bool)

(declare-fun lt!20858 () Bool)

(assert (=> b!92321 (= e!50540 (incl!5 (ite lt!20858 (left!1931 (ite lt!20842 (left!1931 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (right!1937 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))))) (right!1937 (ite lt!20842 (left!1931 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (right!1937 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35)))))) (elem!326 t1!31)))))

(declare-fun lt!20859 () IntSet!61)

(declare-fun b!92320 () Bool)

(assert (=> b!92320 (= e!50541 (ite lt!20858 (Node!182 lt!20859 (elem!326 (ite lt!20842 (left!1931 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (right!1937 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))))) (right!1937 (ite lt!20842 (left!1931 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (right!1937 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35)))))) (ite (bvsgt (elem!326 t1!31) (elem!326 (ite lt!20842 (left!1931 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (right!1937 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35)))))) (Node!182 (left!1931 (ite lt!20842 (left!1931 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (right!1937 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))))) (elem!326 (ite lt!20842 (left!1931 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (right!1937 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))))) lt!20859) (ite lt!20842 (left!1931 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (right!1937 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35)))))))))

(assert (=> b!92320 (= lt!20859 e!50540)))

(declare-fun c!22466 () Bool)

(assert (=> b!92320 (= c!22466 (or lt!20858 (bvsgt (elem!326 t1!31) (elem!326 (ite lt!20842 (left!1931 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (right!1937 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))))))))))

(assert (=> b!92320 (= lt!20858 (bvslt (elem!326 t1!31) (elem!326 (ite lt!20842 (left!1931 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35))) (right!1937 (union!5 (left!1931 t1!31) (union!5 (right!1937 t1!31) t2!35)))))))))

(assert (= (and b!92320 c!22466) b!92321))

(assert (= (and b!92320 (not c!22466)) b!92322))

(assert (= (and d!60572 c!22465) b!92319))

(assert (= (and d!60572 (not c!22465)) b!92320))

(declare-fun m!88050 () Bool)

(assert (=> b!92321 m!88050))

(assert (=> b!92282 d!60572))

(push 1)

(assert (not b!92316))

(assert (not b!92303))

(assert (not b!92313))

(assert (not b!92309))

(assert (not b!92299))

(assert (not b!92321))

(assert (not b!92306))

(assert (not b!92301))

(assert (not b!92292))

(assert (not b!92296))

(assert (not b!92318))

(check-sat)

(get-model)

(pop 1)

