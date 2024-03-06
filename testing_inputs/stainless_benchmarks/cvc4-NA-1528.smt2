; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10356 () Bool)

(assert start!10356)

(declare-fun res!38537 () Bool)

(declare-fun e!41579 () Bool)

(assert (=> start!10356 (=> (not res!38537) (not e!41579))))

(declare-datatypes () ((Formula!97 (Implies!101 (lhs!1404 Formula!97) (rhs!1404 Formula!97)) (And!101 (lhs!1405 Formula!97) (rhs!1405 Formula!97)) (Or!101 (lhs!1406 Formula!97) (rhs!1406 Formula!97)) (Literal!95 (id!4958 (_ BitVec 32))) (Not!101 (f!4739 Formula!97)))))

(declare-fun f!4501 () Formula!97)

(declare-fun isNNF!0 (Formula!97) Bool)

(assert (=> start!10356 (= res!38537 (isNNF!0 f!4501))))

(assert (=> start!10356 e!41579))

(assert (=> start!10356 true))

(declare-fun b!76948 () Bool)

(declare-fun res!38538 () Bool)

(assert (=> b!76948 (=> (not res!38538) (not e!41579))))

(declare-fun f!4504 () Formula!97)

(assert (=> b!76948 (= res!38538 (and (is-And!101 f!4501) (= f!4504 (lhs!1405 f!4501))))))

(declare-fun b!76949 () Bool)

(assert (=> b!76949 (= e!41579 (not (isNNF!0 f!4504)))))

(assert (= (and start!10356 res!38537) b!76948))

(assert (= (and b!76948 res!38538) b!76949))

(declare-fun m!73418 () Bool)

(assert (=> start!10356 m!73418))

(declare-fun m!73420 () Bool)

(assert (=> b!76949 m!73420))

(push 1)

(assert (not start!10356))

(assert (not b!76949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!76998 () Bool)

(declare-fun e!41621 () Formula!97)

(assert (=> b!76998 (= e!41621 (rhs!1404 f!4501))))

(declare-fun b!76999 () Bool)

(declare-fun e!41611 () Bool)

(declare-fun lt!17247 () Bool)

(assert (=> b!76999 (= e!41611 lt!17247)))

(declare-fun b!77000 () Bool)

(declare-fun e!41612 () Bool)

(assert (=> b!77000 (= e!41612 (or (and (is-Not!101 f!4501) (is-Literal!95 (f!4739 f!4501))) (not (is-Not!101 f!4501))))))

(declare-fun d!54937 () Bool)

(declare-fun c!19212 () Bool)

(declare-fun lt!17246 () Bool)

(assert (=> d!54937 (= c!19212 lt!17246)))

(declare-fun e!41609 () Bool)

(assert (=> d!54937 (= lt!17247 e!41609)))

(declare-fun c!19213 () Bool)

(declare-fun e!41617 () Bool)

(assert (=> d!54937 (= c!19213 e!41617)))

(declare-fun res!38574 () Bool)

(assert (=> d!54937 (=> res!38574 e!41617)))

(declare-fun lt!17252 () Bool)

(assert (=> d!54937 (= res!38574 lt!17252)))

(declare-fun lt!17251 () Bool)

(assert (=> d!54937 (= lt!17252 (and lt!17246 lt!17251))))

(declare-fun e!41616 () Bool)

(assert (=> d!54937 (= lt!17251 e!41616)))

(declare-fun c!19209 () Bool)

(assert (=> d!54937 (= c!19209 (or lt!17246 (is-Or!101 f!4501) (is-Implies!101 f!4501)))))

(assert (=> d!54937 (= lt!17246 (is-And!101 f!4501))))

(declare-fun e!41619 () Bool)

(assert (=> d!54937 (= (isNNF!0 f!4501) e!41619)))

(declare-fun b!77001 () Bool)

(declare-fun e!41618 () Bool)

(assert (=> b!77001 (= e!41618 lt!17251)))

(declare-fun b!77002 () Bool)

(declare-fun e!41614 () Formula!97)

(assert (=> b!77002 (= e!41614 (rhs!1405 f!4501))))

(declare-fun lt!17249 () Bool)

(declare-fun lt!17248 () Bool)

(declare-fun b!77003 () Bool)

(declare-fun e!41615 () Bool)

(assert (=> b!77003 (= e!41615 (or (and lt!17248 lt!17249) (and (not lt!17248) (is-Implies!101 f!4501) lt!17249)))))

(assert (=> b!77003 (= lt!17249 e!41618)))

(declare-fun c!19207 () Bool)

(assert (=> b!77003 (= c!19207 (or lt!17248 (is-Implies!101 f!4501)))))

(assert (=> b!77003 (= lt!17248 (is-Or!101 f!4501))))

(declare-fun b!77004 () Bool)

(declare-fun e!41610 () Bool)

(assert (=> b!77004 (= e!41610 lt!17251)))

(declare-fun b!77005 () Bool)

(assert (=> b!77005 (= e!41621 (rhs!1406 f!4501))))

(declare-fun b!77006 () Bool)

(declare-fun e!41613 () Bool)

(declare-fun e!41620 () Bool)

(assert (=> b!77006 (= e!41613 e!41620)))

(declare-fun c!19208 () Bool)

(declare-fun lt!17250 () Bool)

(assert (=> b!77006 (= c!19208 (or lt!17250 (is-Implies!101 f!4501)))))

(declare-fun b!77007 () Bool)

(declare-fun res!38580 () Bool)

(assert (=> b!77007 (= e!41610 res!38580)))

(assert (=> b!77007 true))

(declare-fun b!77008 () Bool)

(assert (=> b!77008 (= e!41619 e!41612)))

(declare-fun c!19210 () Bool)

(declare-fun lt!17244 () Bool)

(assert (=> b!77008 (= c!19210 (or lt!17244 (is-Implies!101 f!4501)))))

(declare-fun lt!17245 () Bool)

(assert (=> b!77008 (= lt!17245 e!41610)))

(declare-fun c!19205 () Bool)

(assert (=> b!77008 (= c!19205 (or lt!17244 (is-Implies!101 f!4501)))))

(assert (=> b!77008 (= lt!17244 (is-Or!101 f!4501))))

(declare-fun b!77009 () Bool)

(assert (=> b!77009 (= e!41616 (isNNF!0 (ite lt!17246 (lhs!1405 f!4501) (ite (is-Or!101 f!4501) (lhs!1406 f!4501) (lhs!1404 f!4501)))))))

(declare-fun b!77010 () Bool)

(declare-fun res!38573 () Bool)

(assert (=> b!77010 (= e!41620 res!38573)))

(assert (=> b!77010 true))

(declare-fun b!77011 () Bool)

(assert (=> b!77011 (= e!41619 (and lt!17251 lt!17247))))

(declare-fun b!77012 () Bool)

(declare-fun res!38575 () Bool)

(assert (=> b!77012 (= e!41609 res!38575)))

(assert (=> b!77012 true))

(declare-fun b!77013 () Bool)

(declare-fun res!38576 () Bool)

(assert (=> b!77013 (= e!41616 res!38576)))

(assert (=> b!77013 true))

(declare-fun b!77014 () Bool)

(declare-fun e!41608 () Bool)

(assert (=> b!77014 (= e!41612 e!41608)))

(declare-fun res!38579 () Bool)

(assert (=> b!77014 (=> (not res!38579) (not e!41608))))

(assert (=> b!77014 (= res!38579 lt!17245)))

(declare-fun b!77015 () Bool)

(assert (=> b!77015 (= e!41609 (isNNF!0 e!41614))))

(declare-fun c!19204 () Bool)

(assert (=> b!77015 (= c!19204 lt!17252)))

(declare-fun b!77016 () Bool)

(declare-fun res!38581 () Bool)

(assert (=> b!77016 (= e!41611 res!38581)))

(assert (=> b!77016 true))

(assert (=> b!77016 true))

(declare-fun b!77017 () Bool)

(assert (=> b!77017 (= e!41608 e!41611)))

(declare-fun c!19206 () Bool)

(assert (=> b!77017 (= c!19206 (or (and lt!17244 lt!17245) (and (not lt!17244) (is-Implies!101 f!4501) lt!17245)))))

(declare-fun b!77018 () Bool)

(assert (=> b!77018 (= e!41620 lt!17251)))

(declare-fun b!77019 () Bool)

(declare-fun res!38578 () Bool)

(assert (=> b!77019 (= e!41618 res!38578)))

(assert (=> b!77019 true))

(declare-fun b!77020 () Bool)

(assert (=> b!77020 (= e!41614 e!41621)))

(declare-fun c!19211 () Bool)

(assert (=> b!77020 (= c!19211 e!41613)))

(declare-fun res!38582 () Bool)

(assert (=> b!77020 (=> (not res!38582) (not e!41613))))

(assert (=> b!77020 (= res!38582 lt!17250)))

(assert (=> b!77020 (= lt!17250 (is-Or!101 f!4501))))

(declare-fun b!77021 () Bool)

(assert (=> b!77021 (= e!41617 e!41615)))

(declare-fun res!38577 () Bool)

(assert (=> b!77021 (=> (not res!38577) (not e!41615))))

(assert (=> b!77021 (= res!38577 (not lt!17246))))

(assert (= (and d!54937 c!19209) b!77009))

(assert (= (and d!54937 (not c!19209)) b!77013))

(assert (= (and d!54937 (not res!38574)) b!77021))

(assert (= (and b!77021 res!38577) b!77003))

(assert (= (and b!77003 c!19207) b!77001))

(assert (= (and b!77003 (not c!19207)) b!77019))

(assert (= (and b!77020 res!38582) b!77006))

(assert (= (and b!77006 c!19208) b!77018))

(assert (= (and b!77006 (not c!19208)) b!77010))

(assert (= (and b!77020 c!19211) b!77005))

(assert (= (and b!77020 (not c!19211)) b!76998))

(assert (= (and b!77015 c!19204) b!77002))

(assert (= (and b!77015 (not c!19204)) b!77020))

(assert (= (and d!54937 c!19213) b!77015))

(assert (= (and d!54937 (not c!19213)) b!77012))

(assert (= (and b!77008 c!19205) b!77004))

(assert (= (and b!77008 (not c!19205)) b!77007))

(assert (= (and b!77014 res!38579) b!77017))

(assert (= (and b!77017 c!19206) b!76999))

(assert (= (and b!77017 (not c!19206)) b!77016))

(assert (= (and b!77008 c!19210) b!77014))

(assert (= (and b!77008 (not c!19210)) b!77000))

(assert (= (and d!54937 c!19212) b!77011))

(assert (= (and d!54937 (not c!19212)) b!77008))

(declare-fun m!73422 () Bool)

(assert (=> b!77009 m!73422))

(declare-fun m!73424 () Bool)

(assert (=> b!77015 m!73424))

(assert (=> start!10356 d!54937))

(declare-fun b!77022 () Bool)

(declare-fun e!41635 () Formula!97)

(assert (=> b!77022 (= e!41635 (rhs!1404 f!4504))))

(declare-fun b!77023 () Bool)

(declare-fun e!41625 () Bool)

(declare-fun lt!17256 () Bool)

(assert (=> b!77023 (= e!41625 lt!17256)))

(declare-fun b!77024 () Bool)

(declare-fun e!41626 () Bool)

(assert (=> b!77024 (= e!41626 (or (and (is-Not!101 f!4504) (is-Literal!95 (f!4739 f!4504))) (not (is-Not!101 f!4504))))))

(declare-fun d!54939 () Bool)

(declare-fun c!19222 () Bool)

(declare-fun lt!17255 () Bool)

(assert (=> d!54939 (= c!19222 lt!17255)))

(declare-fun e!41623 () Bool)

(assert (=> d!54939 (= lt!17256 e!41623)))

(declare-fun c!19223 () Bool)

(declare-fun e!41631 () Bool)

(assert (=> d!54939 (= c!19223 e!41631)))

(declare-fun res!38584 () Bool)

(assert (=> d!54939 (=> res!38584 e!41631)))

(declare-fun lt!17261 () Bool)

(assert (=> d!54939 (= res!38584 lt!17261)))

(declare-fun lt!17260 () Bool)

(assert (=> d!54939 (= lt!17261 (and lt!17255 lt!17260))))

(declare-fun e!41630 () Bool)

(assert (=> d!54939 (= lt!17260 e!41630)))

(declare-fun c!19219 () Bool)

(assert (=> d!54939 (= c!19219 (or lt!17255 (is-Or!101 f!4504) (is-Implies!101 f!4504)))))

(assert (=> d!54939 (= lt!17255 (is-And!101 f!4504))))

(declare-fun e!41633 () Bool)

(assert (=> d!54939 (= (isNNF!0 f!4504) e!41633)))

(declare-fun b!77025 () Bool)

(declare-fun e!41632 () Bool)

(assert (=> b!77025 (= e!41632 lt!17260)))

(declare-fun b!77026 () Bool)

(declare-fun e!41628 () Formula!97)

(assert (=> b!77026 (= e!41628 (rhs!1405 f!4504))))

(declare-fun lt!17258 () Bool)

(declare-fun b!77027 () Bool)

(declare-fun e!41629 () Bool)

(declare-fun lt!17257 () Bool)

(assert (=> b!77027 (= e!41629 (or (and lt!17257 lt!17258) (and (not lt!17257) (is-Implies!101 f!4504) lt!17258)))))

(assert (=> b!77027 (= lt!17258 e!41632)))

(declare-fun c!19217 () Bool)

(assert (=> b!77027 (= c!19217 (or lt!17257 (is-Implies!101 f!4504)))))

(assert (=> b!77027 (= lt!17257 (is-Or!101 f!4504))))

(declare-fun b!77028 () Bool)

(declare-fun e!41624 () Bool)

(assert (=> b!77028 (= e!41624 lt!17260)))

(declare-fun b!77029 () Bool)

(assert (=> b!77029 (= e!41635 (rhs!1406 f!4504))))

(declare-fun b!77030 () Bool)

(declare-fun e!41627 () Bool)

(declare-fun e!41634 () Bool)

(assert (=> b!77030 (= e!41627 e!41634)))

(declare-fun c!19218 () Bool)

(declare-fun lt!17259 () Bool)

(assert (=> b!77030 (= c!19218 (or lt!17259 (is-Implies!101 f!4504)))))

(declare-fun b!77031 () Bool)

(declare-fun res!38590 () Bool)

(assert (=> b!77031 (= e!41624 res!38590)))

(assert (=> b!77031 true))

(declare-fun b!77032 () Bool)

(assert (=> b!77032 (= e!41633 e!41626)))

(declare-fun c!19220 () Bool)

(declare-fun lt!17253 () Bool)

(assert (=> b!77032 (= c!19220 (or lt!17253 (is-Implies!101 f!4504)))))

(declare-fun lt!17254 () Bool)

(assert (=> b!77032 (= lt!17254 e!41624)))

(declare-fun c!19215 () Bool)

(assert (=> b!77032 (= c!19215 (or lt!17253 (is-Implies!101 f!4504)))))

(assert (=> b!77032 (= lt!17253 (is-Or!101 f!4504))))

(declare-fun b!77033 () Bool)

(assert (=> b!77033 (= e!41630 (isNNF!0 (ite lt!17255 (lhs!1405 f!4504) (ite (is-Or!101 f!4504) (lhs!1406 f!4504) (lhs!1404 f!4504)))))))

(declare-fun b!77034 () Bool)

(declare-fun res!38583 () Bool)

(assert (=> b!77034 (= e!41634 res!38583)))

(assert (=> b!77034 true))

(declare-fun b!77035 () Bool)

(assert (=> b!77035 (= e!41633 (and lt!17260 lt!17256))))

(declare-fun b!77036 () Bool)

(declare-fun res!38585 () Bool)

(assert (=> b!77036 (= e!41623 res!38585)))

(assert (=> b!77036 true))

(declare-fun b!77037 () Bool)

(declare-fun res!38586 () Bool)

(assert (=> b!77037 (= e!41630 res!38586)))

(assert (=> b!77037 true))

(declare-fun b!77038 () Bool)

(declare-fun e!41622 () Bool)

(assert (=> b!77038 (= e!41626 e!41622)))

(declare-fun res!38589 () Bool)

(assert (=> b!77038 (=> (not res!38589) (not e!41622))))

(assert (=> b!77038 (= res!38589 lt!17254)))

(declare-fun b!77039 () Bool)

(assert (=> b!77039 (= e!41623 (isNNF!0 e!41628))))

(declare-fun c!19214 () Bool)

(assert (=> b!77039 (= c!19214 lt!17261)))

(declare-fun b!77040 () Bool)

(declare-fun res!38591 () Bool)

(assert (=> b!77040 (= e!41625 res!38591)))

(assert (=> b!77040 true))

(assert (=> b!77040 true))

(declare-fun b!77041 () Bool)

(assert (=> b!77041 (= e!41622 e!41625)))

(declare-fun c!19216 () Bool)

(assert (=> b!77041 (= c!19216 (or (and lt!17253 lt!17254) (and (not lt!17253) (is-Implies!101 f!4504) lt!17254)))))

(declare-fun b!77042 () Bool)

(assert (=> b!77042 (= e!41634 lt!17260)))

(declare-fun b!77043 () Bool)

(declare-fun res!38588 () Bool)

(assert (=> b!77043 (= e!41632 res!38588)))

(assert (=> b!77043 true))

(declare-fun b!77044 () Bool)

(assert (=> b!77044 (= e!41628 e!41635)))

(declare-fun c!19221 () Bool)

(assert (=> b!77044 (= c!19221 e!41627)))

(declare-fun res!38592 () Bool)

(assert (=> b!77044 (=> (not res!38592) (not e!41627))))

(assert (=> b!77044 (= res!38592 lt!17259)))

(assert (=> b!77044 (= lt!17259 (is-Or!101 f!4504))))

(declare-fun b!77045 () Bool)

(assert (=> b!77045 (= e!41631 e!41629)))

(declare-fun res!38587 () Bool)

(assert (=> b!77045 (=> (not res!38587) (not e!41629))))

(assert (=> b!77045 (= res!38587 (not lt!17255))))

(assert (= (and d!54939 c!19219) b!77033))

(assert (= (and d!54939 (not c!19219)) b!77037))

(assert (= (and d!54939 (not res!38584)) b!77045))

(assert (= (and b!77045 res!38587) b!77027))

(assert (= (and b!77027 c!19217) b!77025))

(assert (= (and b!77027 (not c!19217)) b!77043))

(assert (= (and b!77044 res!38592) b!77030))

(assert (= (and b!77030 c!19218) b!77042))

(assert (= (and b!77030 (not c!19218)) b!77034))

(assert (= (and b!77044 c!19221) b!77029))

(assert (= (and b!77044 (not c!19221)) b!77022))

(assert (= (and b!77039 c!19214) b!77026))

(assert (= (and b!77039 (not c!19214)) b!77044))

(assert (= (and d!54939 c!19223) b!77039))

(assert (= (and d!54939 (not c!19223)) b!77036))

(assert (= (and b!77032 c!19215) b!77028))

(assert (= (and b!77032 (not c!19215)) b!77031))

(assert (= (and b!77038 res!38589) b!77041))

(assert (= (and b!77041 c!19216) b!77023))

(assert (= (and b!77041 (not c!19216)) b!77040))

(assert (= (and b!77032 c!19220) b!77038))

(assert (= (and b!77032 (not c!19220)) b!77024))

(assert (= (and d!54939 c!19222) b!77035))

(assert (= (and d!54939 (not c!19222)) b!77032))

(declare-fun m!73426 () Bool)

(assert (=> b!77033 m!73426))

(declare-fun m!73428 () Bool)

(assert (=> b!77039 m!73428))

(assert (=> b!76949 d!54939))

(push 1)

(assert (not b!77015))

(assert (not b!77039))

(assert (not b!77033))

(assert (not b!77009))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

