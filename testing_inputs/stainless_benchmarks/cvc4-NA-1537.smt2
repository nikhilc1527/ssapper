; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10396 () Bool)

(assert start!10396)

(declare-fun res!39198 () Bool)

(declare-fun e!42196 () Bool)

(assert (=> start!10396 (=> (not res!39198) (not e!42196))))

(declare-datatypes () ((Formula!106 (Implies!110 (lhs!1431 Formula!106) (rhs!1431 Formula!106)) (And!110 (lhs!1432 Formula!106) (rhs!1432 Formula!106)) (Or!110 (lhs!1433 Formula!106) (rhs!1433 Formula!106)) (Literal!104 (id!4967 (_ BitVec 32))) (Not!110 (f!4757 Formula!106)))))

(declare-fun formula!94 () Formula!106)

(assert (=> start!10396 (= res!39198 (and (not (is-And!110 formula!94)) (not (is-Or!110 formula!94)) (is-Implies!110 formula!94)))))

(assert (=> start!10396 e!42196))

(assert (=> start!10396 true))

(declare-fun b!78047 () Bool)

(declare-fun res!39199 () Bool)

(assert (=> b!78047 (=> (not res!39199) (not e!42196))))

(declare-fun x$2!419 () Formula!106)

(declare-fun nnf!0 (Formula!106) Formula!106)

(assert (=> b!78047 (= res!39199 (= x$2!419 (Implies!110 (nnf!0 (lhs!1431 formula!94)) (nnf!0 (rhs!1431 formula!94)))))))

(declare-fun b!78048 () Bool)

(declare-fun isNNF!0 (Formula!106) Bool)

(assert (=> b!78048 (= e!42196 (not (isNNF!0 x$2!419)))))

(assert (= (and start!10396 res!39198) b!78047))

(assert (= (and b!78047 res!39199) b!78048))

(declare-fun m!73540 () Bool)

(assert (=> b!78047 m!73540))

(declare-fun m!73542 () Bool)

(assert (=> b!78047 m!73542))

(declare-fun m!73544 () Bool)

(assert (=> b!78048 m!73544))

(push 1)

(assert (not b!78047))

(assert (not b!78048))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!78113 () Bool)

(declare-fun e!42241 () Formula!106)

(declare-fun res!39260 () Formula!106)

(assert (=> b!78113 (= e!42241 res!39260)))

(assert (=> b!78113 true))

(assert (=> b!78113 true))

(declare-fun b!78114 () Bool)

(declare-fun e!42243 () Formula!106)

(declare-fun lt!17707 () Formula!106)

(declare-fun lt!17710 () Formula!106)

(assert (=> b!78114 (= e!42243 (Or!110 lt!17707 lt!17710))))

(declare-fun d!54975 () Bool)

(declare-fun lt!17714 () Formula!106)

(assert (=> d!54975 (isNNF!0 lt!17714)))

(declare-fun e!42233 () Formula!106)

(assert (=> d!54975 (= lt!17714 e!42233)))

(declare-fun c!19677 () Bool)

(declare-fun lt!17713 () Bool)

(assert (=> d!54975 (= c!19677 lt!17713)))

(declare-fun lt!17704 () Formula!106)

(declare-fun e!42237 () Formula!106)

(assert (=> d!54975 (= lt!17704 e!42237)))

(declare-fun c!19686 () Bool)

(assert (=> d!54975 (= c!19686 (or lt!17713 (is-Or!110 (lhs!1431 formula!94)) (is-Implies!110 (lhs!1431 formula!94)) (and (is-Not!110 (lhs!1431 formula!94)) (is-And!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Or!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Implies!110 (f!4757 (lhs!1431 formula!94))))))))

(declare-fun lt!17703 () Formula!106)

(declare-fun e!42238 () Formula!106)

(assert (=> d!54975 (= lt!17703 e!42238)))

(declare-fun c!19687 () Bool)

(assert (=> d!54975 (= c!19687 (or lt!17713 (is-Or!110 (lhs!1431 formula!94)) (is-Implies!110 (lhs!1431 formula!94)) (and (is-Not!110 (lhs!1431 formula!94)) (is-And!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Or!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Implies!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Not!110 (f!4757 (lhs!1431 formula!94))))))))

(assert (=> d!54975 (= lt!17713 (is-And!110 (lhs!1431 formula!94)))))

(assert (=> d!54975 (= (nnf!0 (lhs!1431 formula!94)) lt!17714)))

(declare-fun b!78115 () Bool)

(declare-fun e!42242 () Formula!106)

(declare-fun res!39259 () Formula!106)

(assert (=> b!78115 (= e!42242 res!39259)))

(assert (=> b!78115 true))

(declare-fun b!78116 () Bool)

(declare-fun e!42239 () Formula!106)

(declare-fun res!39257 () Formula!106)

(assert (=> b!78116 (= e!42239 res!39257)))

(assert (=> b!78116 true))

(declare-fun b!78117 () Bool)

(declare-fun e!42230 () Formula!106)

(declare-fun res!39264 () Formula!106)

(assert (=> b!78117 (= e!42230 res!39264)))

(assert (=> b!78117 true))

(declare-fun b!78118 () Bool)

(declare-fun e!42240 () Formula!106)

(declare-fun lt!17708 () Formula!106)

(declare-fun lt!17711 () Formula!106)

(assert (=> b!78118 (= e!42240 (Or!110 lt!17708 lt!17711))))

(declare-fun b!78119 () Bool)

(assert (=> b!78119 (= e!42233 e!42240)))

(declare-fun c!19681 () Bool)

(declare-fun lt!17705 () Bool)

(assert (=> b!78119 (= c!19681 lt!17705)))

(assert (=> b!78119 (= lt!17711 e!42230)))

(declare-fun c!19682 () Bool)

(assert (=> b!78119 (= c!19682 (or lt!17705 (is-Implies!110 (lhs!1431 formula!94)) (and (is-Not!110 (lhs!1431 formula!94)) (is-And!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Or!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Implies!110 (f!4757 (lhs!1431 formula!94))))))))

(declare-fun e!42235 () Formula!106)

(assert (=> b!78119 (= lt!17708 e!42235)))

(declare-fun c!19675 () Bool)

(assert (=> b!78119 (= c!19675 (or lt!17705 (is-Implies!110 (lhs!1431 formula!94)) (and (is-Not!110 (lhs!1431 formula!94)) (is-And!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Or!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Implies!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Not!110 (f!4757 (lhs!1431 formula!94))))))))

(assert (=> b!78119 (= lt!17705 (is-Or!110 (lhs!1431 formula!94)))))

(declare-fun b!78120 () Bool)

(assert (=> b!78120 (= e!42242 lt!17708)))

(declare-fun b!78121 () Bool)

(assert (=> b!78121 (= e!42238 (nnf!0 (ite lt!17713 (lhs!1432 (lhs!1431 formula!94)) (ite (is-Or!110 (lhs!1431 formula!94)) (lhs!1433 (lhs!1431 formula!94)) (ite (is-Implies!110 (lhs!1431 formula!94)) (lhs!1431 (lhs!1431 formula!94)) (ite (and (is-Not!110 (lhs!1431 formula!94)) (is-And!110 (f!4757 (lhs!1431 formula!94)))) (Not!110 (lhs!1432 (f!4757 (lhs!1431 formula!94)))) (ite (and (is-Not!110 (lhs!1431 formula!94)) (is-Or!110 (f!4757 (lhs!1431 formula!94)))) (Not!110 (lhs!1433 (f!4757 (lhs!1431 formula!94)))) (ite (and (is-Not!110 (lhs!1431 formula!94)) (is-Implies!110 (f!4757 (lhs!1431 formula!94)))) (lhs!1431 (f!4757 (lhs!1431 formula!94))) (f!4757 (f!4757 (lhs!1431 formula!94)))))))))))))

(declare-fun b!78122 () Bool)

(declare-fun res!39261 () Formula!106)

(assert (=> b!78122 (= e!42238 res!39261)))

(assert (=> b!78122 true))

(declare-fun b!78123 () Bool)

(assert (=> b!78123 (= e!42230 lt!17704)))

(declare-fun b!78124 () Bool)

(declare-fun e!42236 () Formula!106)

(assert (=> b!78124 (= e!42236 lt!17707)))

(declare-fun b!78125 () Bool)

(declare-fun e!42232 () Formula!106)

(declare-fun lt!17716 () Formula!106)

(assert (=> b!78125 (= e!42232 lt!17716)))

(declare-fun b!78126 () Bool)

(declare-fun e!42231 () Formula!106)

(assert (=> b!78126 (= e!42231 lt!17710)))

(declare-fun b!78127 () Bool)

(declare-fun res!39255 () Formula!106)

(assert (=> b!78127 (= e!42232 res!39255)))

(assert (=> b!78127 true))

(declare-fun b!78128 () Bool)

(declare-fun e!42244 () Formula!106)

(assert (=> b!78128 (= e!42240 e!42244)))

(declare-fun c!19679 () Bool)

(declare-fun lt!17712 () Bool)

(assert (=> b!78128 (= c!19679 lt!17712)))

(assert (=> b!78128 (= lt!17716 e!42239)))

(declare-fun c!19688 () Bool)

(assert (=> b!78128 (= c!19688 (or lt!17712 (and (is-Not!110 (lhs!1431 formula!94)) (is-And!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Or!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Implies!110 (f!4757 (lhs!1431 formula!94))))))))

(declare-fun lt!17718 () Formula!106)

(assert (=> b!78128 (= lt!17718 e!42242)))

(declare-fun c!19683 () Bool)

(assert (=> b!78128 (= c!19683 (or lt!17712 (and (is-Not!110 (lhs!1431 formula!94)) (is-And!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Or!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Implies!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Not!110 (f!4757 (lhs!1431 formula!94))))))))

(assert (=> b!78128 (= lt!17712 (is-Implies!110 (lhs!1431 formula!94)))))

(declare-fun b!78129 () Bool)

(assert (=> b!78129 (= e!42244 (Implies!110 lt!17718 lt!17716))))

(declare-fun b!78130 () Bool)

(declare-fun lt!17706 () Formula!106)

(assert (=> b!78130 (= e!42241 lt!17706)))

(declare-fun b!78131 () Bool)

(assert (=> b!78131 (= e!42235 lt!17703)))

(declare-fun b!78132 () Bool)

(assert (=> b!78132 (= e!42233 (And!110 lt!17703 lt!17704))))

(declare-fun b!78133 () Bool)

(assert (=> b!78133 (= e!42244 e!42243)))

(declare-fun c!19684 () Bool)

(declare-fun lt!17719 () Bool)

(assert (=> b!78133 (= c!19684 lt!17719)))

(assert (=> b!78133 (= lt!17710 e!42232)))

(declare-fun c!19689 () Bool)

(assert (=> b!78133 (= c!19689 (or lt!17719 (and (is-Not!110 (lhs!1431 formula!94)) (is-Or!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Implies!110 (f!4757 (lhs!1431 formula!94))))))))

(declare-fun e!42234 () Formula!106)

(assert (=> b!78133 (= lt!17707 e!42234)))

(declare-fun c!19685 () Bool)

(assert (=> b!78133 (= c!19685 (or lt!17719 (and (is-Not!110 (lhs!1431 formula!94)) (is-Or!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Implies!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Not!110 (f!4757 (lhs!1431 formula!94))))))))

(assert (=> b!78133 (= lt!17719 (and (is-Not!110 (lhs!1431 formula!94)) (is-And!110 (f!4757 (lhs!1431 formula!94)))))))

(declare-fun b!78134 () Bool)

(declare-fun e!42229 () Formula!106)

(assert (=> b!78134 (= e!42243 e!42229)))

(declare-fun c!19676 () Bool)

(declare-fun lt!17717 () Bool)

(assert (=> b!78134 (= c!19676 lt!17717)))

(declare-fun lt!17720 () Formula!106)

(assert (=> b!78134 (= lt!17720 e!42231)))

(declare-fun c!19680 () Bool)

(assert (=> b!78134 (= c!19680 (or lt!17717 (and (is-Not!110 (lhs!1431 formula!94)) (is-Implies!110 (f!4757 (lhs!1431 formula!94))))))))

(assert (=> b!78134 (= lt!17706 e!42236)))

(declare-fun c!19678 () Bool)

(assert (=> b!78134 (= c!19678 (or lt!17717 (and (is-Not!110 (lhs!1431 formula!94)) (is-Implies!110 (f!4757 (lhs!1431 formula!94)))) (and (is-Not!110 (lhs!1431 formula!94)) (is-Not!110 (f!4757 (lhs!1431 formula!94))))))))

(assert (=> b!78134 (= lt!17717 (and (is-Not!110 (lhs!1431 formula!94)) (is-Or!110 (f!4757 (lhs!1431 formula!94)))))))

(declare-fun b!78135 () Bool)

(declare-fun res!39262 () Formula!106)

(assert (=> b!78135 (= e!42236 res!39262)))

(assert (=> b!78135 true))

(declare-fun b!78136 () Bool)

(assert (=> b!78136 (= e!42234 lt!17718)))

(declare-fun b!78137 () Bool)

(declare-fun res!39258 () Formula!106)

(assert (=> b!78137 (= e!42234 res!39258)))

(assert (=> b!78137 true))

(declare-fun b!78138 () Bool)

(declare-fun res!39256 () Formula!106)

(assert (=> b!78138 (= e!42235 res!39256)))

(assert (=> b!78138 true))

(declare-fun lt!17709 () Bool)

(declare-fun b!78139 () Bool)

(declare-fun lt!17715 () Formula!106)

(assert (=> b!78139 (= e!42229 (ite lt!17709 (And!110 lt!17715 lt!17720) (ite (and (is-Not!110 (lhs!1431 formula!94)) (is-Not!110 (f!4757 (lhs!1431 formula!94)))) lt!17715 (lhs!1431 formula!94))))))

(assert (=> b!78139 (= lt!17715 e!42241)))

(declare-fun c!19674 () Bool)

(assert (=> b!78139 (= c!19674 (or lt!17709 (and (is-Not!110 (lhs!1431 formula!94)) (is-Not!110 (f!4757 (lhs!1431 formula!94))))))))

(assert (=> b!78139 (= lt!17709 (and (is-Not!110 (lhs!1431 formula!94)) (is-Implies!110 (f!4757 (lhs!1431 formula!94)))))))

(declare-fun b!78140 () Bool)

(assert (=> b!78140 (= e!42237 (nnf!0 (ite lt!17713 (rhs!1432 (lhs!1431 formula!94)) (ite (is-Or!110 (lhs!1431 formula!94)) (rhs!1433 (lhs!1431 formula!94)) (ite (is-Implies!110 (lhs!1431 formula!94)) (rhs!1431 (lhs!1431 formula!94)) (ite (and (is-Not!110 (lhs!1431 formula!94)) (is-And!110 (f!4757 (lhs!1431 formula!94)))) (Not!110 (rhs!1432 (f!4757 (lhs!1431 formula!94)))) (ite (and (is-Not!110 (lhs!1431 formula!94)) (is-Or!110 (f!4757 (lhs!1431 formula!94)))) (Not!110 (rhs!1433 (f!4757 (lhs!1431 formula!94)))) (Not!110 (rhs!1431 (f!4757 (lhs!1431 formula!94)))))))))))))

(declare-fun b!78141 () Bool)

(assert (=> b!78141 (= e!42239 lt!17711)))

(declare-fun b!78142 () Bool)

(declare-fun res!39263 () Formula!106)

(assert (=> b!78142 (= e!42231 res!39263)))

(assert (=> b!78142 true))

(declare-fun b!78143 () Bool)

(declare-fun res!39265 () Formula!106)

(assert (=> b!78143 (= e!42237 res!39265)))

(assert (=> b!78143 true))

(declare-fun b!78144 () Bool)

(assert (=> b!78144 (= e!42229 (And!110 lt!17706 lt!17720))))

(assert (= (and d!54975 c!19687) b!78121))

(assert (= (and d!54975 (not c!19687)) b!78122))

(assert (= (and d!54975 c!19686) b!78140))

(assert (= (and d!54975 (not c!19686)) b!78143))

(assert (= (and b!78119 c!19675) b!78131))

(assert (= (and b!78119 (not c!19675)) b!78138))

(assert (= (and b!78119 c!19682) b!78123))

(assert (= (and b!78119 (not c!19682)) b!78117))

(assert (= (and b!78128 c!19683) b!78120))

(assert (= (and b!78128 (not c!19683)) b!78115))

(assert (= (and b!78128 c!19688) b!78141))

(assert (= (and b!78128 (not c!19688)) b!78116))

(assert (= (and b!78133 c!19685) b!78136))

(assert (= (and b!78133 (not c!19685)) b!78137))

(assert (= (and b!78133 c!19689) b!78125))

(assert (= (and b!78133 (not c!19689)) b!78127))

(assert (= (and b!78134 c!19678) b!78124))

(assert (= (and b!78134 (not c!19678)) b!78135))

(assert (= (and b!78134 c!19680) b!78126))

(assert (= (and b!78134 (not c!19680)) b!78142))

(assert (= (and b!78139 c!19674) b!78130))

(assert (= (and b!78139 (not c!19674)) b!78113))

(assert (= (and b!78134 c!19676) b!78144))

(assert (= (and b!78134 (not c!19676)) b!78139))

(assert (= (and b!78133 c!19684) b!78114))

(assert (= (and b!78133 (not c!19684)) b!78134))

(assert (= (and b!78128 c!19679) b!78129))

(assert (= (and b!78128 (not c!19679)) b!78133))

(assert (= (and b!78119 c!19681) b!78118))

(assert (= (and b!78119 (not c!19681)) b!78128))

(assert (= (and d!54975 c!19677) b!78132))

(assert (= (and d!54975 (not c!19677)) b!78119))

(declare-fun m!73546 () Bool)

(assert (=> d!54975 m!73546))

(declare-fun m!73548 () Bool)

(assert (=> b!78121 m!73548))

(declare-fun m!73550 () Bool)

(assert (=> b!78140 m!73550))

(assert (=> b!78047 d!54975))

(declare-fun b!78145 () Bool)

(declare-fun e!42257 () Formula!106)

(declare-fun res!39271 () Formula!106)

(assert (=> b!78145 (= e!42257 res!39271)))

(assert (=> b!78145 true))

(assert (=> b!78145 true))

(declare-fun b!78146 () Bool)

(declare-fun e!42259 () Formula!106)

(declare-fun lt!17725 () Formula!106)

(declare-fun lt!17728 () Formula!106)

(assert (=> b!78146 (= e!42259 (Or!110 lt!17725 lt!17728))))

(declare-fun d!54977 () Bool)

(declare-fun lt!17732 () Formula!106)

(assert (=> d!54977 (isNNF!0 lt!17732)))

(declare-fun e!42249 () Formula!106)

(assert (=> d!54977 (= lt!17732 e!42249)))

(declare-fun c!19693 () Bool)

(declare-fun lt!17731 () Bool)

(assert (=> d!54977 (= c!19693 lt!17731)))

(declare-fun lt!17722 () Formula!106)

(declare-fun e!42253 () Formula!106)

(assert (=> d!54977 (= lt!17722 e!42253)))

(declare-fun c!19702 () Bool)

(assert (=> d!54977 (= c!19702 (or lt!17731 (is-Or!110 (rhs!1431 formula!94)) (is-Implies!110 (rhs!1431 formula!94)) (and (is-Not!110 (rhs!1431 formula!94)) (is-And!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Or!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Implies!110 (f!4757 (rhs!1431 formula!94))))))))

(declare-fun lt!17721 () Formula!106)

(declare-fun e!42254 () Formula!106)

(assert (=> d!54977 (= lt!17721 e!42254)))

(declare-fun c!19703 () Bool)

(assert (=> d!54977 (= c!19703 (or lt!17731 (is-Or!110 (rhs!1431 formula!94)) (is-Implies!110 (rhs!1431 formula!94)) (and (is-Not!110 (rhs!1431 formula!94)) (is-And!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Or!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Implies!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Not!110 (f!4757 (rhs!1431 formula!94))))))))

(assert (=> d!54977 (= lt!17731 (is-And!110 (rhs!1431 formula!94)))))

(assert (=> d!54977 (= (nnf!0 (rhs!1431 formula!94)) lt!17732)))

(declare-fun b!78147 () Bool)

(declare-fun e!42258 () Formula!106)

(declare-fun res!39270 () Formula!106)

(assert (=> b!78147 (= e!42258 res!39270)))

(assert (=> b!78147 true))

(declare-fun b!78148 () Bool)

(declare-fun e!42255 () Formula!106)

(declare-fun res!39268 () Formula!106)

(assert (=> b!78148 (= e!42255 res!39268)))

(assert (=> b!78148 true))

(declare-fun b!78149 () Bool)

(declare-fun e!42246 () Formula!106)

(declare-fun res!39275 () Formula!106)

(assert (=> b!78149 (= e!42246 res!39275)))

(assert (=> b!78149 true))

(declare-fun b!78150 () Bool)

(declare-fun e!42256 () Formula!106)

(declare-fun lt!17726 () Formula!106)

(declare-fun lt!17729 () Formula!106)

(assert (=> b!78150 (= e!42256 (Or!110 lt!17726 lt!17729))))

(declare-fun b!78151 () Bool)

(assert (=> b!78151 (= e!42249 e!42256)))

(declare-fun c!19697 () Bool)

(declare-fun lt!17723 () Bool)

(assert (=> b!78151 (= c!19697 lt!17723)))

(assert (=> b!78151 (= lt!17729 e!42246)))

(declare-fun c!19698 () Bool)

(assert (=> b!78151 (= c!19698 (or lt!17723 (is-Implies!110 (rhs!1431 formula!94)) (and (is-Not!110 (rhs!1431 formula!94)) (is-And!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Or!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Implies!110 (f!4757 (rhs!1431 formula!94))))))))

(declare-fun e!42251 () Formula!106)

(assert (=> b!78151 (= lt!17726 e!42251)))

(declare-fun c!19691 () Bool)

(assert (=> b!78151 (= c!19691 (or lt!17723 (is-Implies!110 (rhs!1431 formula!94)) (and (is-Not!110 (rhs!1431 formula!94)) (is-And!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Or!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Implies!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Not!110 (f!4757 (rhs!1431 formula!94))))))))

(assert (=> b!78151 (= lt!17723 (is-Or!110 (rhs!1431 formula!94)))))

(declare-fun b!78152 () Bool)

(assert (=> b!78152 (= e!42258 lt!17726)))

(declare-fun b!78153 () Bool)

(assert (=> b!78153 (= e!42254 (nnf!0 (ite lt!17731 (lhs!1432 (rhs!1431 formula!94)) (ite (is-Or!110 (rhs!1431 formula!94)) (lhs!1433 (rhs!1431 formula!94)) (ite (is-Implies!110 (rhs!1431 formula!94)) (lhs!1431 (rhs!1431 formula!94)) (ite (and (is-Not!110 (rhs!1431 formula!94)) (is-And!110 (f!4757 (rhs!1431 formula!94)))) (Not!110 (lhs!1432 (f!4757 (rhs!1431 formula!94)))) (ite (and (is-Not!110 (rhs!1431 formula!94)) (is-Or!110 (f!4757 (rhs!1431 formula!94)))) (Not!110 (lhs!1433 (f!4757 (rhs!1431 formula!94)))) (ite (and (is-Not!110 (rhs!1431 formula!94)) (is-Implies!110 (f!4757 (rhs!1431 formula!94)))) (lhs!1431 (f!4757 (rhs!1431 formula!94))) (f!4757 (f!4757 (rhs!1431 formula!94)))))))))))))

(declare-fun b!78154 () Bool)

(declare-fun res!39272 () Formula!106)

(assert (=> b!78154 (= e!42254 res!39272)))

(assert (=> b!78154 true))

(declare-fun b!78155 () Bool)

(assert (=> b!78155 (= e!42246 lt!17722)))

(declare-fun b!78156 () Bool)

(declare-fun e!42252 () Formula!106)

(assert (=> b!78156 (= e!42252 lt!17725)))

(declare-fun b!78157 () Bool)

(declare-fun e!42248 () Formula!106)

(declare-fun lt!17734 () Formula!106)

(assert (=> b!78157 (= e!42248 lt!17734)))

(declare-fun b!78158 () Bool)

(declare-fun e!42247 () Formula!106)

(assert (=> b!78158 (= e!42247 lt!17728)))

(declare-fun b!78159 () Bool)

(declare-fun res!39266 () Formula!106)

(assert (=> b!78159 (= e!42248 res!39266)))

(assert (=> b!78159 true))

(declare-fun b!78160 () Bool)

(declare-fun e!42260 () Formula!106)

(assert (=> b!78160 (= e!42256 e!42260)))

(declare-fun c!19695 () Bool)

(declare-fun lt!17730 () Bool)

(assert (=> b!78160 (= c!19695 lt!17730)))

(assert (=> b!78160 (= lt!17734 e!42255)))

(declare-fun c!19704 () Bool)

(assert (=> b!78160 (= c!19704 (or lt!17730 (and (is-Not!110 (rhs!1431 formula!94)) (is-And!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Or!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Implies!110 (f!4757 (rhs!1431 formula!94))))))))

(declare-fun lt!17736 () Formula!106)

(assert (=> b!78160 (= lt!17736 e!42258)))

(declare-fun c!19699 () Bool)

(assert (=> b!78160 (= c!19699 (or lt!17730 (and (is-Not!110 (rhs!1431 formula!94)) (is-And!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Or!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Implies!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Not!110 (f!4757 (rhs!1431 formula!94))))))))

(assert (=> b!78160 (= lt!17730 (is-Implies!110 (rhs!1431 formula!94)))))

(declare-fun b!78161 () Bool)

(assert (=> b!78161 (= e!42260 (Implies!110 lt!17736 lt!17734))))

(declare-fun b!78162 () Bool)

(declare-fun lt!17724 () Formula!106)

(assert (=> b!78162 (= e!42257 lt!17724)))

(declare-fun b!78163 () Bool)

(assert (=> b!78163 (= e!42251 lt!17721)))

(declare-fun b!78164 () Bool)

(assert (=> b!78164 (= e!42249 (And!110 lt!17721 lt!17722))))

(declare-fun b!78165 () Bool)

(assert (=> b!78165 (= e!42260 e!42259)))

(declare-fun c!19700 () Bool)

(declare-fun lt!17737 () Bool)

(assert (=> b!78165 (= c!19700 lt!17737)))

(assert (=> b!78165 (= lt!17728 e!42248)))

(declare-fun c!19705 () Bool)

(assert (=> b!78165 (= c!19705 (or lt!17737 (and (is-Not!110 (rhs!1431 formula!94)) (is-Or!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Implies!110 (f!4757 (rhs!1431 formula!94))))))))

(declare-fun e!42250 () Formula!106)

(assert (=> b!78165 (= lt!17725 e!42250)))

(declare-fun c!19701 () Bool)

(assert (=> b!78165 (= c!19701 (or lt!17737 (and (is-Not!110 (rhs!1431 formula!94)) (is-Or!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Implies!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Not!110 (f!4757 (rhs!1431 formula!94))))))))

(assert (=> b!78165 (= lt!17737 (and (is-Not!110 (rhs!1431 formula!94)) (is-And!110 (f!4757 (rhs!1431 formula!94)))))))

(declare-fun b!78166 () Bool)

(declare-fun e!42245 () Formula!106)

(assert (=> b!78166 (= e!42259 e!42245)))

(declare-fun c!19692 () Bool)

(declare-fun lt!17735 () Bool)

(assert (=> b!78166 (= c!19692 lt!17735)))

(declare-fun lt!17738 () Formula!106)

(assert (=> b!78166 (= lt!17738 e!42247)))

(declare-fun c!19696 () Bool)

(assert (=> b!78166 (= c!19696 (or lt!17735 (and (is-Not!110 (rhs!1431 formula!94)) (is-Implies!110 (f!4757 (rhs!1431 formula!94))))))))

(assert (=> b!78166 (= lt!17724 e!42252)))

(declare-fun c!19694 () Bool)

(assert (=> b!78166 (= c!19694 (or lt!17735 (and (is-Not!110 (rhs!1431 formula!94)) (is-Implies!110 (f!4757 (rhs!1431 formula!94)))) (and (is-Not!110 (rhs!1431 formula!94)) (is-Not!110 (f!4757 (rhs!1431 formula!94))))))))

(assert (=> b!78166 (= lt!17735 (and (is-Not!110 (rhs!1431 formula!94)) (is-Or!110 (f!4757 (rhs!1431 formula!94)))))))

(declare-fun b!78167 () Bool)

(declare-fun res!39273 () Formula!106)

(assert (=> b!78167 (= e!42252 res!39273)))

(assert (=> b!78167 true))

(declare-fun b!78168 () Bool)

(assert (=> b!78168 (= e!42250 lt!17736)))

(declare-fun b!78169 () Bool)

(declare-fun res!39269 () Formula!106)

(assert (=> b!78169 (= e!42250 res!39269)))

(assert (=> b!78169 true))

(declare-fun b!78170 () Bool)

(declare-fun res!39267 () Formula!106)

(assert (=> b!78170 (= e!42251 res!39267)))

(assert (=> b!78170 true))

(declare-fun lt!17727 () Bool)

(declare-fun b!78171 () Bool)

(declare-fun lt!17733 () Formula!106)

(assert (=> b!78171 (= e!42245 (ite lt!17727 (And!110 lt!17733 lt!17738) (ite (and (is-Not!110 (rhs!1431 formula!94)) (is-Not!110 (f!4757 (rhs!1431 formula!94)))) lt!17733 (rhs!1431 formula!94))))))

(assert (=> b!78171 (= lt!17733 e!42257)))

(declare-fun c!19690 () Bool)

(assert (=> b!78171 (= c!19690 (or lt!17727 (and (is-Not!110 (rhs!1431 formula!94)) (is-Not!110 (f!4757 (rhs!1431 formula!94))))))))

(assert (=> b!78171 (= lt!17727 (and (is-Not!110 (rhs!1431 formula!94)) (is-Implies!110 (f!4757 (rhs!1431 formula!94)))))))

(declare-fun b!78172 () Bool)

(assert (=> b!78172 (= e!42253 (nnf!0 (ite lt!17731 (rhs!1432 (rhs!1431 formula!94)) (ite (is-Or!110 (rhs!1431 formula!94)) (rhs!1433 (rhs!1431 formula!94)) (ite (is-Implies!110 (rhs!1431 formula!94)) (rhs!1431 (rhs!1431 formula!94)) (ite (and (is-Not!110 (rhs!1431 formula!94)) (is-And!110 (f!4757 (rhs!1431 formula!94)))) (Not!110 (rhs!1432 (f!4757 (rhs!1431 formula!94)))) (ite (and (is-Not!110 (rhs!1431 formula!94)) (is-Or!110 (f!4757 (rhs!1431 formula!94)))) (Not!110 (rhs!1433 (f!4757 (rhs!1431 formula!94)))) (Not!110 (rhs!1431 (f!4757 (rhs!1431 formula!94)))))))))))))

(declare-fun b!78173 () Bool)

(assert (=> b!78173 (= e!42255 lt!17729)))

(declare-fun b!78174 () Bool)

(declare-fun res!39274 () Formula!106)

(assert (=> b!78174 (= e!42247 res!39274)))

(assert (=> b!78174 true))

(declare-fun b!78175 () Bool)

(declare-fun res!39276 () Formula!106)

(assert (=> b!78175 (= e!42253 res!39276)))

(assert (=> b!78175 true))

(declare-fun b!78176 () Bool)

(assert (=> b!78176 (= e!42245 (And!110 lt!17724 lt!17738))))

(assert (= (and d!54977 c!19703) b!78153))

(assert (= (and d!54977 (not c!19703)) b!78154))

(assert (= (and d!54977 c!19702) b!78172))

(assert (= (and d!54977 (not c!19702)) b!78175))

(assert (= (and b!78151 c!19691) b!78163))

(assert (= (and b!78151 (not c!19691)) b!78170))

(assert (= (and b!78151 c!19698) b!78155))

(assert (= (and b!78151 (not c!19698)) b!78149))

(assert (= (and b!78160 c!19699) b!78152))

(assert (= (and b!78160 (not c!19699)) b!78147))

(assert (= (and b!78160 c!19704) b!78173))

(assert (= (and b!78160 (not c!19704)) b!78148))

(assert (= (and b!78165 c!19701) b!78168))

(assert (= (and b!78165 (not c!19701)) b!78169))

(assert (= (and b!78165 c!19705) b!78157))

(assert (= (and b!78165 (not c!19705)) b!78159))

(assert (= (and b!78166 c!19694) b!78156))

(assert (= (and b!78166 (not c!19694)) b!78167))

(assert (= (and b!78166 c!19696) b!78158))

(assert (= (and b!78166 (not c!19696)) b!78174))

(assert (= (and b!78171 c!19690) b!78162))

(assert (= (and b!78171 (not c!19690)) b!78145))

(assert (= (and b!78166 c!19692) b!78176))

(assert (= (and b!78166 (not c!19692)) b!78171))

(assert (= (and b!78165 c!19700) b!78146))

(assert (= (and b!78165 (not c!19700)) b!78166))

(assert (= (and b!78160 c!19695) b!78161))

(assert (= (and b!78160 (not c!19695)) b!78165))

(assert (= (and b!78151 c!19697) b!78150))

(assert (= (and b!78151 (not c!19697)) b!78160))

(assert (= (and d!54977 c!19693) b!78164))

(assert (= (and d!54977 (not c!19693)) b!78151))

(declare-fun m!73552 () Bool)

(assert (=> d!54977 m!73552))

(declare-fun m!73554 () Bool)

(assert (=> b!78153 m!73554))

(declare-fun m!73556 () Bool)

(assert (=> b!78172 m!73556))

(assert (=> b!78047 d!54977))

(declare-fun b!78225 () Bool)

(declare-fun e!42299 () Bool)

(declare-fun lt!17760 () Bool)

(assert (=> b!78225 (= e!42299 (isNNF!0 (ite lt!17760 (lhs!1432 x$2!419) (ite (is-Or!110 x$2!419) (lhs!1433 x$2!419) (lhs!1431 x$2!419)))))))

(declare-fun b!78226 () Bool)

(declare-fun e!42297 () Bool)

(declare-fun e!42289 () Bool)

(assert (=> b!78226 (= e!42297 e!42289)))

(declare-fun c!19733 () Bool)

(declare-fun lt!17761 () Bool)

(assert (=> b!78226 (= c!19733 (or lt!17761 (is-Implies!110 x$2!419)))))

(declare-fun b!78227 () Bool)

(declare-fun e!42290 () Bool)

(declare-fun res!39317 () Bool)

(assert (=> b!78227 (= e!42290 res!39317)))

(assert (=> b!78227 true))

(assert (=> b!78227 true))

(declare-fun b!78228 () Bool)

(declare-fun e!42301 () Formula!106)

(declare-fun e!42292 () Formula!106)

(assert (=> b!78228 (= e!42301 e!42292)))

(declare-fun c!19729 () Bool)

(assert (=> b!78228 (= c!19729 e!42297)))

(declare-fun res!39313 () Bool)

(assert (=> b!78228 (=> (not res!39313) (not e!42297))))

(assert (=> b!78228 (= res!39313 lt!17761)))

(assert (=> b!78228 (= lt!17761 (is-Or!110 x$2!419))))

(declare-fun lt!17757 () Bool)

(declare-fun lt!17765 () Bool)

(declare-fun e!42295 () Bool)

(declare-fun b!78229 () Bool)

(assert (=> b!78229 (= e!42295 (or (and lt!17765 lt!17757) (and (not lt!17765) (is-Implies!110 x$2!419) lt!17757)))))

(declare-fun e!42298 () Bool)

(assert (=> b!78229 (= lt!17757 e!42298)))

(declare-fun c!19734 () Bool)

(assert (=> b!78229 (= c!19734 (or lt!17765 (is-Implies!110 x$2!419)))))

(assert (=> b!78229 (= lt!17765 (is-Or!110 x$2!419))))

(declare-fun b!78230 () Bool)

(declare-fun lt!17758 () Bool)

(assert (=> b!78230 (= e!42290 lt!17758)))

(declare-fun b!78231 () Bool)

(declare-fun e!42294 () Bool)

(assert (=> b!78231 (= e!42294 e!42290)))

(declare-fun lt!17762 () Bool)

(declare-fun c!19730 () Bool)

(declare-fun lt!17763 () Bool)

(assert (=> b!78231 (= c!19730 (or (and lt!17763 lt!17762) (and (not lt!17763) (is-Implies!110 x$2!419) lt!17762)))))

(declare-fun b!78232 () Bool)

(declare-fun e!42300 () Bool)

(declare-fun e!42291 () Bool)

(assert (=> b!78232 (= e!42300 e!42291)))

(declare-fun c!19731 () Bool)

(assert (=> b!78232 (= c!19731 (or lt!17763 (is-Implies!110 x$2!419)))))

(declare-fun e!42296 () Bool)

(assert (=> b!78232 (= lt!17762 e!42296)))

(declare-fun c!19728 () Bool)

(assert (=> b!78232 (= c!19728 (or lt!17763 (is-Implies!110 x$2!419)))))

(assert (=> b!78232 (= lt!17763 (is-Or!110 x$2!419))))

(declare-fun b!78233 () Bool)

(declare-fun res!39311 () Bool)

(assert (=> b!78233 (= e!42289 res!39311)))

(assert (=> b!78233 true))

(declare-fun b!78234 () Bool)

(declare-fun lt!17759 () Bool)

(assert (=> b!78234 (= e!42298 lt!17759)))

(declare-fun b!78235 () Bool)

(assert (=> b!78235 (= e!42292 (rhs!1431 x$2!419))))

(declare-fun b!78236 () Bool)

(assert (=> b!78236 (= e!42292 (rhs!1433 x$2!419))))

(declare-fun b!78237 () Bool)

(declare-fun e!42293 () Bool)

(declare-fun res!39315 () Bool)

(assert (=> b!78237 (= e!42293 res!39315)))

(assert (=> b!78237 true))

(declare-fun b!78238 () Bool)

(declare-fun e!42302 () Bool)

(assert (=> b!78238 (= e!42302 e!42295)))

(declare-fun res!39318 () Bool)

(assert (=> b!78238 (=> (not res!39318) (not e!42295))))

(assert (=> b!78238 (= res!39318 (not lt!17760))))

(declare-fun b!78239 () Bool)

(assert (=> b!78239 (= e!42291 e!42294)))

(declare-fun res!39320 () Bool)

(assert (=> b!78239 (=> (not res!39320) (not e!42294))))

(assert (=> b!78239 (= res!39320 lt!17762)))

(declare-fun b!78240 () Bool)

(assert (=> b!78240 (= e!42289 lt!17759)))

(declare-fun b!78241 () Bool)

(assert (=> b!78241 (= e!42296 lt!17759)))

(declare-fun d!54979 () Bool)

(declare-fun c!19732 () Bool)

(assert (=> d!54979 (= c!19732 lt!17760)))

(assert (=> d!54979 (= lt!17758 e!42293)))

(declare-fun c!19726 () Bool)

(assert (=> d!54979 (= c!19726 e!42302)))

(declare-fun res!39316 () Bool)

(assert (=> d!54979 (=> res!39316 e!42302)))

(declare-fun lt!17764 () Bool)

(assert (=> d!54979 (= res!39316 lt!17764)))

(assert (=> d!54979 (= lt!17764 (and lt!17760 lt!17759))))

(assert (=> d!54979 (= lt!17759 e!42299)))

(declare-fun c!19735 () Bool)

(assert (=> d!54979 (= c!19735 (or lt!17760 (is-Or!110 x$2!419) (is-Implies!110 x$2!419)))))

(assert (=> d!54979 (= lt!17760 (is-And!110 x$2!419))))

(assert (=> d!54979 (= (isNNF!0 x$2!419) e!42300)))

(declare-fun b!78242 () Bool)

(assert (=> b!78242 (= e!42291 (or (and (is-Not!110 x$2!419) (is-Literal!104 (f!4757 x$2!419))) (not (is-Not!110 x$2!419))))))

(declare-fun b!78243 () Bool)

(assert (=> b!78243 (= e!42293 (isNNF!0 e!42301))))

(declare-fun c!19727 () Bool)

(assert (=> b!78243 (= c!19727 lt!17764)))

(declare-fun b!78244 () Bool)

(declare-fun res!39319 () Bool)

(assert (=> b!78244 (= e!42299 res!39319)))

(assert (=> b!78244 true))

(declare-fun b!78245 () Bool)

(assert (=> b!78245 (= e!42300 (and lt!17759 lt!17758))))

(declare-fun b!78246 () Bool)

(assert (=> b!78246 (= e!42301 (rhs!1432 x$2!419))))

(declare-fun b!78247 () Bool)

(declare-fun res!39312 () Bool)

(assert (=> b!78247 (= e!42298 res!39312)))

(assert (=> b!78247 true))

(declare-fun b!78248 () Bool)

(declare-fun res!39314 () Bool)

(assert (=> b!78248 (= e!42296 res!39314)))

(assert (=> b!78248 true))

(assert (= (and d!54979 c!19735) b!78225))

(assert (= (and d!54979 (not c!19735)) b!78244))

(assert (= (and d!54979 (not res!39316)) b!78238))

(assert (= (and b!78238 res!39318) b!78229))

(assert (= (and b!78229 c!19734) b!78234))

(assert (= (and b!78229 (not c!19734)) b!78247))

(assert (= (and b!78228 res!39313) b!78226))

(assert (= (and b!78226 c!19733) b!78240))

(assert (= (and b!78226 (not c!19733)) b!78233))

(assert (= (and b!78228 c!19729) b!78236))

(assert (= (and b!78228 (not c!19729)) b!78235))

(assert (= (and b!78243 c!19727) b!78246))

(assert (= (and b!78243 (not c!19727)) b!78228))

(assert (= (and d!54979 c!19726) b!78243))

(assert (= (and d!54979 (not c!19726)) b!78237))

(assert (= (and b!78232 c!19728) b!78241))

(assert (= (and b!78232 (not c!19728)) b!78248))

(assert (= (and b!78239 res!39320) b!78231))

(assert (= (and b!78231 c!19730) b!78230))

(assert (= (and b!78231 (not c!19730)) b!78227))

(assert (= (and b!78232 c!19731) b!78239))

(assert (= (and b!78232 (not c!19731)) b!78242))

(assert (= (and d!54979 c!19732) b!78245))

(assert (= (and d!54979 (not c!19732)) b!78232))

(declare-fun m!73558 () Bool)

(assert (=> b!78225 m!73558))

(declare-fun m!73560 () Bool)

(assert (=> b!78243 m!73560))

(assert (=> b!78048 d!54979))

(push 1)

(assert (not b!78243))

(assert (not d!54977))

(assert (not b!78153))

(assert (not b!78121))

(assert (not b!78172))

(assert (not b!78140))

(assert (not d!54975))

(assert (not b!78225))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

