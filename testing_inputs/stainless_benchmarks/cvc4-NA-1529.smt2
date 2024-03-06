; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10360 () Bool)

(assert start!10360)

(declare-fun res!38597 () Bool)

(declare-fun e!41638 () Bool)

(assert (=> start!10360 (=> (not res!38597) (not e!41638))))

(declare-datatypes () ((Formula!98 (Implies!102 (lhs!1407 Formula!98) (rhs!1407 Formula!98)) (And!102 (lhs!1408 Formula!98) (rhs!1408 Formula!98)) (Or!102 (lhs!1409 Formula!98) (rhs!1409 Formula!98)) (Literal!96 (id!4959 (_ BitVec 32))) (Not!102 (f!4741 Formula!98)))))

(declare-fun f!4501 () Formula!98)

(declare-fun isNNF!0 (Formula!98) Bool)

(assert (=> start!10360 (= res!38597 (isNNF!0 f!4501))))

(assert (=> start!10360 e!41638))

(assert (=> start!10360 true))

(declare-fun b!77050 () Bool)

(declare-fun res!38598 () Bool)

(assert (=> b!77050 (=> (not res!38598) (not e!41638))))

(declare-fun f!4506 () Formula!98)

(assert (=> b!77050 (= res!38598 (and (is-And!102 f!4501) (= f!4506 (rhs!1408 f!4501))))))

(declare-fun b!77051 () Bool)

(assert (=> b!77051 (= e!41638 (not (isNNF!0 f!4506)))))

(assert (= (and start!10360 res!38597) b!77050))

(assert (= (and b!77050 res!38598) b!77051))

(declare-fun m!73430 () Bool)

(assert (=> start!10360 m!73430))

(declare-fun m!73432 () Bool)

(assert (=> b!77051 m!73432))

(push 1)

(assert (not start!10360))

(assert (not b!77051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!77100 () Bool)

(declare-fun e!41674 () Bool)

(declare-fun lt!17286 () Bool)

(assert (=> b!77100 (= e!41674 lt!17286)))

(declare-fun b!77101 () Bool)

(declare-fun e!41678 () Bool)

(assert (=> b!77101 (= e!41678 (or (and (is-Not!102 f!4501) (is-Literal!96 (f!4741 f!4501))) (not (is-Not!102 f!4501))))))

(declare-fun b!77102 () Bool)

(declare-fun e!41677 () Bool)

(assert (=> b!77102 (= e!41677 lt!17286)))

(declare-fun b!77103 () Bool)

(declare-fun e!41672 () Formula!98)

(declare-fun e!41669 () Formula!98)

(assert (=> b!77103 (= e!41672 e!41669)))

(declare-fun c!19251 () Bool)

(declare-fun e!41679 () Bool)

(assert (=> b!77103 (= c!19251 e!41679)))

(declare-fun res!38640 () Bool)

(assert (=> b!77103 (=> (not res!38640) (not e!41679))))

(declare-fun lt!17285 () Bool)

(assert (=> b!77103 (= res!38640 lt!17285)))

(assert (=> b!77103 (= lt!17285 (is-Or!102 f!4501))))

(declare-fun b!77104 () Bool)

(declare-fun e!41675 () Bool)

(assert (=> b!77104 (= e!41679 e!41675)))

(declare-fun c!19245 () Bool)

(assert (=> b!77104 (= c!19245 (or lt!17285 (is-Implies!102 f!4501)))))

(declare-fun b!77105 () Bool)

(assert (=> b!77105 (= e!41675 lt!17286)))

(declare-fun b!77106 () Bool)

(declare-fun e!41676 () Bool)

(declare-fun lt!17288 () Bool)

(assert (=> b!77106 (= e!41676 (and lt!17286 lt!17288))))

(declare-fun b!77107 () Bool)

(declare-fun e!41670 () Bool)

(declare-fun e!41668 () Bool)

(assert (=> b!77107 (= e!41670 e!41668)))

(declare-fun res!38642 () Bool)

(assert (=> b!77107 (=> (not res!38642) (not e!41668))))

(declare-fun lt!17283 () Bool)

(assert (=> b!77107 (= res!38642 (not lt!17283))))

(declare-fun b!77108 () Bool)

(assert (=> b!77108 (= e!41669 (rhs!1409 f!4501))))

(declare-fun lt!17282 () Bool)

(declare-fun lt!17281 () Bool)

(declare-fun b!77109 () Bool)

(assert (=> b!77109 (= e!41668 (or (and lt!17282 lt!17281) (and (not lt!17282) (is-Implies!102 f!4501) lt!17281)))))

(assert (=> b!77109 (= lt!17281 e!41674)))

(declare-fun c!19253 () Bool)

(assert (=> b!77109 (= c!19253 (or lt!17282 (is-Implies!102 f!4501)))))

(assert (=> b!77109 (= lt!17282 (is-Or!102 f!4501))))

(declare-fun b!77110 () Bool)

(declare-fun e!41680 () Bool)

(assert (=> b!77110 (= e!41680 (isNNF!0 e!41672))))

(declare-fun c!19246 () Bool)

(declare-fun lt!17284 () Bool)

(assert (=> b!77110 (= c!19246 lt!17284)))

(declare-fun b!77111 () Bool)

(declare-fun e!41671 () Bool)

(assert (=> b!77111 (= e!41671 (isNNF!0 (ite lt!17283 (lhs!1408 f!4501) (ite (is-Or!102 f!4501) (lhs!1409 f!4501) (lhs!1407 f!4501)))))))

(declare-fun b!77112 () Bool)

(declare-fun e!41667 () Bool)

(assert (=> b!77112 (= e!41667 lt!17288)))

(declare-fun b!77113 () Bool)

(assert (=> b!77113 (= e!41676 e!41678)))

(declare-fun c!19250 () Bool)

(declare-fun lt!17280 () Bool)

(assert (=> b!77113 (= c!19250 (or lt!17280 (is-Implies!102 f!4501)))))

(declare-fun lt!17287 () Bool)

(assert (=> b!77113 (= lt!17287 e!41677)))

(declare-fun c!19247 () Bool)

(assert (=> b!77113 (= c!19247 (or lt!17280 (is-Implies!102 f!4501)))))

(assert (=> b!77113 (= lt!17280 (is-Or!102 f!4501))))

(declare-fun b!77114 () Bool)

(declare-fun e!41673 () Bool)

(assert (=> b!77114 (= e!41673 e!41667)))

(declare-fun c!19252 () Bool)

(assert (=> b!77114 (= c!19252 (or (and lt!17280 lt!17287) (and (not lt!17280) (is-Implies!102 f!4501) lt!17287)))))

(declare-fun b!77115 () Bool)

(declare-fun res!38639 () Bool)

(assert (=> b!77115 (= e!41674 res!38639)))

(assert (=> b!77115 true))

(declare-fun b!77116 () Bool)

(declare-fun res!38633 () Bool)

(assert (=> b!77116 (= e!41671 res!38633)))

(assert (=> b!77116 true))

(declare-fun d!54941 () Bool)

(declare-fun c!19249 () Bool)

(assert (=> d!54941 (= c!19249 lt!17283)))

(assert (=> d!54941 (= lt!17288 e!41680)))

(declare-fun c!19248 () Bool)

(assert (=> d!54941 (= c!19248 e!41670)))

(declare-fun res!38637 () Bool)

(assert (=> d!54941 (=> res!38637 e!41670)))

(assert (=> d!54941 (= res!38637 lt!17284)))

(assert (=> d!54941 (= lt!17284 (and lt!17283 lt!17286))))

(assert (=> d!54941 (= lt!17286 e!41671)))

(declare-fun c!19244 () Bool)

(assert (=> d!54941 (= c!19244 (or lt!17283 (is-Or!102 f!4501) (is-Implies!102 f!4501)))))

(assert (=> d!54941 (= lt!17283 (is-And!102 f!4501))))

(assert (=> d!54941 (= (isNNF!0 f!4501) e!41676)))

(declare-fun b!77117 () Bool)

(declare-fun res!38641 () Bool)

(assert (=> b!77117 (= e!41675 res!38641)))

(assert (=> b!77117 true))

(declare-fun b!77118 () Bool)

(declare-fun res!38636 () Bool)

(assert (=> b!77118 (= e!41677 res!38636)))

(assert (=> b!77118 true))

(declare-fun b!77119 () Bool)

(assert (=> b!77119 (= e!41669 (rhs!1407 f!4501))))

(declare-fun b!77120 () Bool)

(declare-fun res!38634 () Bool)

(assert (=> b!77120 (= e!41667 res!38634)))

(assert (=> b!77120 true))

(assert (=> b!77120 true))

(declare-fun b!77121 () Bool)

(assert (=> b!77121 (= e!41678 e!41673)))

(declare-fun res!38635 () Bool)

(assert (=> b!77121 (=> (not res!38635) (not e!41673))))

(assert (=> b!77121 (= res!38635 lt!17287)))

(declare-fun b!77122 () Bool)

(assert (=> b!77122 (= e!41672 (rhs!1408 f!4501))))

(declare-fun b!77123 () Bool)

(declare-fun res!38638 () Bool)

(assert (=> b!77123 (= e!41680 res!38638)))

(assert (=> b!77123 true))

(assert (= (and d!54941 c!19244) b!77111))

(assert (= (and d!54941 (not c!19244)) b!77116))

(assert (= (and d!54941 (not res!38637)) b!77107))

(assert (= (and b!77107 res!38642) b!77109))

(assert (= (and b!77109 c!19253) b!77100))

(assert (= (and b!77109 (not c!19253)) b!77115))

(assert (= (and b!77103 res!38640) b!77104))

(assert (= (and b!77104 c!19245) b!77105))

(assert (= (and b!77104 (not c!19245)) b!77117))

(assert (= (and b!77103 c!19251) b!77108))

(assert (= (and b!77103 (not c!19251)) b!77119))

(assert (= (and b!77110 c!19246) b!77122))

(assert (= (and b!77110 (not c!19246)) b!77103))

(assert (= (and d!54941 c!19248) b!77110))

(assert (= (and d!54941 (not c!19248)) b!77123))

(assert (= (and b!77113 c!19247) b!77102))

(assert (= (and b!77113 (not c!19247)) b!77118))

(assert (= (and b!77121 res!38635) b!77114))

(assert (= (and b!77114 c!19252) b!77112))

(assert (= (and b!77114 (not c!19252)) b!77120))

(assert (= (and b!77113 c!19250) b!77121))

(assert (= (and b!77113 (not c!19250)) b!77101))

(assert (= (and d!54941 c!19249) b!77106))

(assert (= (and d!54941 (not c!19249)) b!77113))

(declare-fun m!73434 () Bool)

(assert (=> b!77110 m!73434))

(declare-fun m!73436 () Bool)

(assert (=> b!77111 m!73436))

(assert (=> start!10360 d!54941))

(declare-fun b!77124 () Bool)

(declare-fun e!41688 () Bool)

(declare-fun lt!17295 () Bool)

(assert (=> b!77124 (= e!41688 lt!17295)))

(declare-fun b!77125 () Bool)

(declare-fun e!41692 () Bool)

(assert (=> b!77125 (= e!41692 (or (and (is-Not!102 f!4506) (is-Literal!96 (f!4741 f!4506))) (not (is-Not!102 f!4506))))))

(declare-fun b!77126 () Bool)

(declare-fun e!41691 () Bool)

(assert (=> b!77126 (= e!41691 lt!17295)))

(declare-fun b!77127 () Bool)

(declare-fun e!41686 () Formula!98)

(declare-fun e!41683 () Formula!98)

(assert (=> b!77127 (= e!41686 e!41683)))

(declare-fun c!19261 () Bool)

(declare-fun e!41693 () Bool)

(assert (=> b!77127 (= c!19261 e!41693)))

(declare-fun res!38650 () Bool)

(assert (=> b!77127 (=> (not res!38650) (not e!41693))))

(declare-fun lt!17294 () Bool)

(assert (=> b!77127 (= res!38650 lt!17294)))

(assert (=> b!77127 (= lt!17294 (is-Or!102 f!4506))))

(declare-fun b!77128 () Bool)

(declare-fun e!41689 () Bool)

(assert (=> b!77128 (= e!41693 e!41689)))

(declare-fun c!19255 () Bool)

(assert (=> b!77128 (= c!19255 (or lt!17294 (is-Implies!102 f!4506)))))

(declare-fun b!77129 () Bool)

(assert (=> b!77129 (= e!41689 lt!17295)))

(declare-fun b!77130 () Bool)

(declare-fun e!41690 () Bool)

(declare-fun lt!17297 () Bool)

(assert (=> b!77130 (= e!41690 (and lt!17295 lt!17297))))

(declare-fun b!77131 () Bool)

(declare-fun e!41684 () Bool)

(declare-fun e!41682 () Bool)

(assert (=> b!77131 (= e!41684 e!41682)))

(declare-fun res!38652 () Bool)

(assert (=> b!77131 (=> (not res!38652) (not e!41682))))

(declare-fun lt!17292 () Bool)

(assert (=> b!77131 (= res!38652 (not lt!17292))))

(declare-fun b!77132 () Bool)

(assert (=> b!77132 (= e!41683 (rhs!1409 f!4506))))

(declare-fun b!77133 () Bool)

(declare-fun lt!17291 () Bool)

(declare-fun lt!17290 () Bool)

(assert (=> b!77133 (= e!41682 (or (and lt!17291 lt!17290) (and (not lt!17291) (is-Implies!102 f!4506) lt!17290)))))

(assert (=> b!77133 (= lt!17290 e!41688)))

(declare-fun c!19263 () Bool)

(assert (=> b!77133 (= c!19263 (or lt!17291 (is-Implies!102 f!4506)))))

(assert (=> b!77133 (= lt!17291 (is-Or!102 f!4506))))

(declare-fun b!77134 () Bool)

(declare-fun e!41694 () Bool)

(assert (=> b!77134 (= e!41694 (isNNF!0 e!41686))))

(declare-fun c!19256 () Bool)

(declare-fun lt!17293 () Bool)

(assert (=> b!77134 (= c!19256 lt!17293)))

(declare-fun b!77135 () Bool)

(declare-fun e!41685 () Bool)

(assert (=> b!77135 (= e!41685 (isNNF!0 (ite lt!17292 (lhs!1408 f!4506) (ite (is-Or!102 f!4506) (lhs!1409 f!4506) (lhs!1407 f!4506)))))))

(declare-fun b!77136 () Bool)

(declare-fun e!41681 () Bool)

(assert (=> b!77136 (= e!41681 lt!17297)))

(declare-fun b!77137 () Bool)

(assert (=> b!77137 (= e!41690 e!41692)))

(declare-fun c!19260 () Bool)

(declare-fun lt!17289 () Bool)

(assert (=> b!77137 (= c!19260 (or lt!17289 (is-Implies!102 f!4506)))))

(declare-fun lt!17296 () Bool)

(assert (=> b!77137 (= lt!17296 e!41691)))

(declare-fun c!19257 () Bool)

(assert (=> b!77137 (= c!19257 (or lt!17289 (is-Implies!102 f!4506)))))

(assert (=> b!77137 (= lt!17289 (is-Or!102 f!4506))))

(declare-fun b!77138 () Bool)

(declare-fun e!41687 () Bool)

(assert (=> b!77138 (= e!41687 e!41681)))

(declare-fun c!19262 () Bool)

(assert (=> b!77138 (= c!19262 (or (and lt!17289 lt!17296) (and (not lt!17289) (is-Implies!102 f!4506) lt!17296)))))

(declare-fun b!77139 () Bool)

(declare-fun res!38649 () Bool)

(assert (=> b!77139 (= e!41688 res!38649)))

(assert (=> b!77139 true))

(declare-fun b!77140 () Bool)

(declare-fun res!38643 () Bool)

(assert (=> b!77140 (= e!41685 res!38643)))

(assert (=> b!77140 true))

(declare-fun d!54943 () Bool)

(declare-fun c!19259 () Bool)

(assert (=> d!54943 (= c!19259 lt!17292)))

(assert (=> d!54943 (= lt!17297 e!41694)))

(declare-fun c!19258 () Bool)

(assert (=> d!54943 (= c!19258 e!41684)))

(declare-fun res!38647 () Bool)

(assert (=> d!54943 (=> res!38647 e!41684)))

(assert (=> d!54943 (= res!38647 lt!17293)))

(assert (=> d!54943 (= lt!17293 (and lt!17292 lt!17295))))

(assert (=> d!54943 (= lt!17295 e!41685)))

(declare-fun c!19254 () Bool)

(assert (=> d!54943 (= c!19254 (or lt!17292 (is-Or!102 f!4506) (is-Implies!102 f!4506)))))

(assert (=> d!54943 (= lt!17292 (is-And!102 f!4506))))

(assert (=> d!54943 (= (isNNF!0 f!4506) e!41690)))

(declare-fun b!77141 () Bool)

(declare-fun res!38651 () Bool)

(assert (=> b!77141 (= e!41689 res!38651)))

(assert (=> b!77141 true))

(declare-fun b!77142 () Bool)

(declare-fun res!38646 () Bool)

(assert (=> b!77142 (= e!41691 res!38646)))

(assert (=> b!77142 true))

(declare-fun b!77143 () Bool)

(assert (=> b!77143 (= e!41683 (rhs!1407 f!4506))))

(declare-fun b!77144 () Bool)

(declare-fun res!38644 () Bool)

(assert (=> b!77144 (= e!41681 res!38644)))

(assert (=> b!77144 true))

(assert (=> b!77144 true))

(declare-fun b!77145 () Bool)

(assert (=> b!77145 (= e!41692 e!41687)))

(declare-fun res!38645 () Bool)

(assert (=> b!77145 (=> (not res!38645) (not e!41687))))

(assert (=> b!77145 (= res!38645 lt!17296)))

(declare-fun b!77146 () Bool)

(assert (=> b!77146 (= e!41686 (rhs!1408 f!4506))))

(declare-fun b!77147 () Bool)

(declare-fun res!38648 () Bool)

(assert (=> b!77147 (= e!41694 res!38648)))

(assert (=> b!77147 true))

(assert (= (and d!54943 c!19254) b!77135))

(assert (= (and d!54943 (not c!19254)) b!77140))

(assert (= (and d!54943 (not res!38647)) b!77131))

(assert (= (and b!77131 res!38652) b!77133))

(assert (= (and b!77133 c!19263) b!77124))

(assert (= (and b!77133 (not c!19263)) b!77139))

(assert (= (and b!77127 res!38650) b!77128))

(assert (= (and b!77128 c!19255) b!77129))

(assert (= (and b!77128 (not c!19255)) b!77141))

(assert (= (and b!77127 c!19261) b!77132))

(assert (= (and b!77127 (not c!19261)) b!77143))

(assert (= (and b!77134 c!19256) b!77146))

(assert (= (and b!77134 (not c!19256)) b!77127))

(assert (= (and d!54943 c!19258) b!77134))

(assert (= (and d!54943 (not c!19258)) b!77147))

(assert (= (and b!77137 c!19257) b!77126))

(assert (= (and b!77137 (not c!19257)) b!77142))

(assert (= (and b!77145 res!38645) b!77138))

(assert (= (and b!77138 c!19262) b!77136))

(assert (= (and b!77138 (not c!19262)) b!77144))

(assert (= (and b!77137 c!19260) b!77145))

(assert (= (and b!77137 (not c!19260)) b!77125))

(assert (= (and d!54943 c!19259) b!77130))

(assert (= (and d!54943 (not c!19259)) b!77137))

(declare-fun m!73438 () Bool)

(assert (=> b!77134 m!73438))

(declare-fun m!73440 () Bool)

(assert (=> b!77135 m!73440))

(assert (=> b!77051 d!54943))

(push 1)

(assert (not b!77111))

(assert (not b!77135))

(assert (not b!77110))

(assert (not b!77134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

