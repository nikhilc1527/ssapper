; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9204 () Bool)

(assert start!9204)

(declare-fun res!30248 () Bool)

(declare-fun e!35059 () Bool)

(assert (=> start!9204 (=> (not res!30248) (not e!35059))))

(declare-datatypes () ((Formula!7 (And!12 (lhs!824 Formula!7) (rhs!824 Formula!7)) (Literal!6 (id!4787 Int)) (Implies!12 (lhs!825 Formula!7) (rhs!825 Formula!7)) (Or!12 (lhs!826 Formula!7) (rhs!826 Formula!7)) (Not!12 (f!4083 Formula!7)))))

(declare-fun f!3964 () Formula!7)

(assert (=> start!9204 (= res!30248 (and (not (is-And!12 f!3964)) (not (is-Literal!6 f!3964)) (not (is-Implies!12 f!3964)) (is-Or!12 f!3964)))))

(assert (=> start!9204 e!35059))

(assert (=> start!9204 true))

(declare-fun b!64648 () Bool)

(declare-fun res!30249 () Bool)

(assert (=> b!64648 (=> (not res!30249) (not e!35059))))

(declare-fun inductVal!452 () Bool)

(declare-fun simplifySemantics!0 (Formula!7) Bool)

(assert (=> b!64648 (= res!30249 (= inductVal!452 (simplifySemantics!0 (rhs!826 f!3964))))))

(declare-fun b!64649 () Bool)

(declare-fun res!30250 () Bool)

(assert (=> b!64649 (=> (not res!30250) (not e!35059))))

(declare-fun inductVal!460 () Bool)

(assert (=> b!64649 (= res!30250 (= inductVal!460 (simplifySemantics!0 (lhs!826 f!3964))))))

(declare-fun b!64650 () Bool)

(declare-fun eval!0 (Formula!7) Bool)

(declare-fun simplify!1 (Formula!7) Formula!7)

(assert (=> b!64650 (= e!35059 (not (= (eval!0 f!3964) (eval!0 (simplify!1 f!3964)))))))

(assert (= (and start!9204 res!30248) b!64648))

(assert (= (and b!64648 res!30249) b!64649))

(assert (= (and b!64649 res!30250) b!64650))

(declare-fun m!69285 () Bool)

(assert (=> b!64648 m!69285))

(declare-fun m!69287 () Bool)

(assert (=> b!64649 m!69287))

(declare-fun m!69289 () Bool)

(assert (=> b!64650 m!69289))

(declare-fun m!69291 () Bool)

(assert (=> b!64650 m!69291))

(assert (=> b!64650 m!69291))

(declare-fun m!69293 () Bool)

(assert (=> b!64650 m!69293))

(push 1)

(assert (not b!64650))

(assert (not b!64649))

(assert (not b!64648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!64729 () Bool)

(declare-fun e!35110 () Bool)

(declare-fun e!35116 () Bool)

(assert (=> b!64729 (= e!35110 e!35116)))

(declare-fun res!30322 () Bool)

(assert (=> b!64729 (=> (not res!30322) (not e!35116))))

(declare-fun lt!12258 () Bool)

(assert (=> b!64729 (= res!30322 lt!12258)))

(assert (=> b!64729 (= lt!12258 (is-Implies!12 f!3964))))

(declare-fun b!64730 () Bool)

(declare-fun e!35129 () Bool)

(declare-fun e!35117 () Bool)

(assert (=> b!64730 (= e!35129 e!35117)))

(declare-fun res!30321 () Bool)

(assert (=> b!64730 (=> (not res!30321) (not e!35117))))

(declare-fun lt!12263 () Bool)

(assert (=> b!64730 (= res!30321 (not lt!12263))))

(declare-fun b!64731 () Bool)

(declare-fun e!35121 () Bool)

(declare-fun e!35125 () Bool)

(assert (=> b!64731 (= e!35121 e!35125)))

(declare-fun res!30314 () Bool)

(assert (=> b!64731 (=> (not res!30314) (not e!35125))))

(declare-fun lt!12267 () Bool)

(assert (=> b!64731 (= res!30314 (not lt!12267))))

(declare-fun b!64732 () Bool)

(declare-fun e!35112 () Formula!7)

(assert (=> b!64732 (= e!35112 (rhs!825 f!3964))))

(declare-fun b!64733 () Bool)

(declare-fun e!35127 () Bool)

(declare-fun lt!12257 () Bool)

(assert (=> b!64733 (= e!35127 (not lt!12257))))

(declare-fun b!64734 () Bool)

(declare-fun e!35113 () Bool)

(declare-fun e!35130 () Bool)

(assert (=> b!64734 (= e!35113 (not e!35130))))

(declare-fun c!14364 () Bool)

(declare-fun lt!12266 () Bool)

(assert (=> b!64734 (= c!14364 (or lt!12266 (is-Implies!12 f!3964) (is-Not!12 f!3964)))))

(declare-fun b!64735 () Bool)

(assert (=> b!64735 (= e!35112 (rhs!826 f!3964))))

(declare-fun b!64736 () Bool)

(declare-fun e!35123 () Bool)

(declare-fun lt!12261 () Bool)

(assert (=> b!64736 (= e!35123 lt!12261)))

(declare-fun b!64737 () Bool)

(declare-fun e!35111 () Bool)

(declare-fun res!30310 () Bool)

(assert (=> b!64737 (= e!35111 res!30310)))

(assert (=> b!64737 true))

(declare-fun b!64738 () Bool)

(declare-fun e!35122 () Bool)

(declare-fun res!30312 () Bool)

(assert (=> b!64738 (= e!35122 res!30312)))

(assert (=> b!64738 true))

(declare-fun b!64739 () Bool)

(declare-fun e!35128 () Formula!7)

(assert (=> b!64739 (= e!35128 e!35112)))

(declare-fun c!14358 () Bool)

(assert (=> b!64739 (= c!14358 e!35113)))

(declare-fun res!30317 () Bool)

(assert (=> b!64739 (=> (not res!30317) (not e!35113))))

(assert (=> b!64739 (= res!30317 lt!12266)))

(assert (=> b!64739 (= lt!12266 (is-Or!12 f!3964))))

(declare-fun b!64740 () Bool)

(declare-fun e!35126 () Bool)

(declare-fun res!30311 () Bool)

(assert (=> b!64740 (= e!35126 res!30311)))

(assert (=> b!64740 true))

(declare-fun b!64741 () Bool)

(declare-fun lt!12264 () Bool)

(assert (=> b!64741 (= e!35126 lt!12264)))

(declare-fun b!64742 () Bool)

(declare-fun e!35124 () Bool)

(declare-fun e!35108 () Bool)

(assert (=> b!64742 (= e!35124 e!35108)))

(declare-fun c!14354 () Bool)

(declare-fun lt!12268 () Bool)

(assert (=> b!64742 (= c!14354 lt!12268)))

(declare-fun e!35118 () Bool)

(assert (=> b!64742 (= lt!12257 e!35118)))

(declare-fun c!14360 () Bool)

(assert (=> b!64742 (= c!14360 (or lt!12268 (is-Not!12 f!3964)))))

(assert (=> b!64742 (= lt!12268 (is-Implies!12 f!3964))))

(declare-fun b!64743 () Bool)

(assert (=> b!64743 (= e!35111 lt!12261)))

(declare-fun b!64744 () Bool)

(declare-fun res!30320 () Bool)

(assert (=> b!64744 (= e!35123 res!30320)))

(assert (=> b!64744 true))

(declare-fun b!64745 () Bool)

(assert (=> b!64745 (= e!35116 e!35126)))

(declare-fun c!14353 () Bool)

(assert (=> b!64745 (= c!14353 (or lt!12258 (is-Not!12 f!3964)))))

(declare-fun b!64746 () Bool)

(declare-fun e!35109 () Bool)

(assert (=> b!64746 (= e!35109 e!35122)))

(declare-fun c!14363 () Bool)

(declare-fun lt!12260 () Bool)

(assert (=> b!64746 (= c!14363 (or lt!12260 (is-Not!12 f!3964)))))

(declare-fun b!64747 () Bool)

(assert (=> b!64747 (= e!35128 (rhs!824 f!3964))))

(declare-fun d!53324 () Bool)

(declare-fun c!14361 () Bool)

(assert (=> d!53324 (= c!14361 lt!12263)))

(declare-fun lt!12270 () Bool)

(declare-fun e!35115 () Bool)

(assert (=> d!53324 (= lt!12270 e!35115)))

(declare-fun c!14359 () Bool)

(assert (=> d!53324 (= c!14359 e!35129)))

(declare-fun res!30319 () Bool)

(assert (=> d!53324 (=> res!30319 e!35129)))

(declare-fun lt!12269 () Bool)

(assert (=> d!53324 (= res!30319 lt!12269)))

(assert (=> d!53324 (= lt!12269 (and lt!12263 lt!12261))))

(declare-fun e!35120 () Bool)

(assert (=> d!53324 (= lt!12261 e!35120)))

(declare-fun c!14362 () Bool)

(assert (=> d!53324 (= c!14362 (or lt!12263 (is-Or!12 f!3964) (is-Implies!12 f!3964) (is-Not!12 f!3964)))))

(assert (=> d!53324 (= lt!12263 (is-And!12 f!3964))))

(declare-fun e!35119 () Bool)

(assert (=> d!53324 (= (eval!0 f!3964) e!35119)))

(declare-fun b!64748 () Bool)

(assert (=> b!64748 (= e!35130 lt!12261)))

(declare-fun b!64749 () Bool)

(assert (=> b!64749 (= e!35119 e!35124)))

(declare-fun c!14350 () Bool)

(assert (=> b!64749 (= c!14350 lt!12267)))

(declare-fun lt!12262 () Bool)

(declare-fun e!35114 () Bool)

(assert (=> b!64749 (= lt!12262 e!35114)))

(declare-fun c!14355 () Bool)

(assert (=> b!64749 (= c!14355 e!35121)))

(declare-fun res!30313 () Bool)

(assert (=> b!64749 (=> res!30313 e!35121)))

(declare-fun lt!12265 () Bool)

(assert (=> b!64749 (= res!30313 (and lt!12267 (not lt!12265)))))

(assert (=> b!64749 (= lt!12265 e!35123)))

(declare-fun c!14352 () Bool)

(assert (=> b!64749 (= c!14352 (or lt!12267 (is-Implies!12 f!3964) (is-Not!12 f!3964)))))

(assert (=> b!64749 (= lt!12267 (is-Or!12 f!3964))))

(declare-fun b!64750 () Bool)

(assert (=> b!64750 (= e!35115 (eval!0 e!35128))))

(declare-fun c!14357 () Bool)

(assert (=> b!64750 (= c!14357 lt!12269)))

(declare-fun b!64751 () Bool)

(assert (=> b!64751 (= e!35114 lt!12270)))

(declare-fun b!64752 () Bool)

(declare-fun res!30323 () Bool)

(assert (=> b!64752 (= e!35115 res!30323)))

(assert (=> b!64752 true))

(declare-fun b!64753 () Bool)

(declare-fun evalLit!0 (Int) Bool)

(assert (=> b!64753 (= e!35127 (evalLit!0 (id!4787 f!3964)))))

(declare-fun b!64754 () Bool)

(declare-fun res!30307 () Bool)

(assert (=> b!64754 (= e!35114 res!30307)))

(assert (=> b!64754 true))

(declare-fun b!64755 () Bool)

(assert (=> b!64755 (= e!35124 (or lt!12265 lt!12262))))

(declare-fun b!64756 () Bool)

(assert (=> b!64756 (= e!35108 e!35127)))

(declare-fun c!14351 () Bool)

(assert (=> b!64756 (= c!14351 (is-Not!12 f!3964))))

(declare-fun b!64757 () Bool)

(assert (=> b!64757 (= e!35119 (and lt!12261 lt!12270))))

(declare-fun b!64758 () Bool)

(declare-fun res!30308 () Bool)

(assert (=> b!64758 (= e!35118 res!30308)))

(assert (=> b!64758 true))

(assert (=> b!64758 true))

(declare-fun b!64759 () Bool)

(declare-fun res!30315 () Bool)

(assert (=> b!64759 (= e!35130 res!30315)))

(assert (=> b!64759 true))

(declare-fun b!64760 () Bool)

(assert (=> b!64760 (= e!35122 lt!12265)))

(declare-fun b!64761 () Bool)

(assert (=> b!64761 (= e!35118 lt!12265)))

(declare-fun b!64762 () Bool)

(assert (=> b!64762 (= e!35108 (or (not lt!12257) lt!12262))))

(declare-fun b!64763 () Bool)

(declare-fun e!35131 () Bool)

(assert (=> b!64763 (= e!35117 e!35131)))

(declare-fun res!30318 () Bool)

(assert (=> b!64763 (=> res!30318 e!35131)))

(declare-fun lt!12259 () Bool)

(assert (=> b!64763 (= res!30318 (and lt!12259 (not lt!12264)))))

(assert (=> b!64763 (= lt!12264 e!35111)))

(declare-fun c!14356 () Bool)

(assert (=> b!64763 (= c!14356 (or lt!12259 (is-Implies!12 f!3964) (is-Not!12 f!3964)))))

(assert (=> b!64763 (= lt!12259 (is-Or!12 f!3964))))

(declare-fun b!64764 () Bool)

(assert (=> b!64764 (= e!35125 e!35109)))

(declare-fun res!30309 () Bool)

(assert (=> b!64764 (=> (not res!30309) (not e!35109))))

(assert (=> b!64764 (= res!30309 lt!12260)))

(assert (=> b!64764 (= lt!12260 (is-Implies!12 f!3964))))

(declare-fun b!64765 () Bool)

(assert (=> b!64765 (= e!35131 e!35110)))

(declare-fun res!30324 () Bool)

(assert (=> b!64765 (=> (not res!30324) (not e!35110))))

(assert (=> b!64765 (= res!30324 (not lt!12259))))

(declare-fun b!64766 () Bool)

(declare-fun res!30316 () Bool)

(assert (=> b!64766 (= e!35120 res!30316)))

(assert (=> b!64766 true))

(declare-fun b!64767 () Bool)

(assert (=> b!64767 (= e!35120 (eval!0 (ite lt!12263 (lhs!824 f!3964) (ite (is-Or!12 f!3964) (lhs!826 f!3964) (ite (is-Implies!12 f!3964) (lhs!825 f!3964) (f!4083 f!3964))))))))

(assert (= (and d!53324 c!14362) b!64767))

(assert (= (and d!53324 (not c!14362)) b!64766))

(assert (= (and d!53324 (not res!30319)) b!64730))

(assert (= (and b!64730 res!30321) b!64763))

(assert (= (and b!64763 c!14356) b!64743))

(assert (= (and b!64763 (not c!14356)) b!64737))

(assert (= (and b!64763 (not res!30318)) b!64765))

(assert (= (and b!64765 res!30324) b!64729))

(assert (= (and b!64729 res!30322) b!64745))

(assert (= (and b!64745 c!14353) b!64741))

(assert (= (and b!64745 (not c!14353)) b!64740))

(assert (= (and b!64739 res!30317) b!64734))

(assert (= (and b!64734 c!14364) b!64748))

(assert (= (and b!64734 (not c!14364)) b!64759))

(assert (= (and b!64739 c!14358) b!64735))

(assert (= (and b!64739 (not c!14358)) b!64732))

(assert (= (and b!64750 c!14357) b!64747))

(assert (= (and b!64750 (not c!14357)) b!64739))

(assert (= (and d!53324 c!14359) b!64750))

(assert (= (and d!53324 (not c!14359)) b!64752))

(assert (= (and b!64749 c!14352) b!64736))

(assert (= (and b!64749 (not c!14352)) b!64744))

(assert (= (and b!64749 (not res!30313)) b!64731))

(assert (= (and b!64731 res!30314) b!64764))

(assert (= (and b!64764 res!30309) b!64746))

(assert (= (and b!64746 c!14363) b!64760))

(assert (= (and b!64746 (not c!14363)) b!64738))

(assert (= (and b!64749 c!14355) b!64751))

(assert (= (and b!64749 (not c!14355)) b!64754))

(assert (= (and b!64742 c!14360) b!64761))

(assert (= (and b!64742 (not c!14360)) b!64758))

(assert (= (and b!64756 c!14351) b!64733))

(assert (= (and b!64756 (not c!14351)) b!64753))

(assert (= (and b!64742 c!14354) b!64762))

(assert (= (and b!64742 (not c!14354)) b!64756))

(assert (= (and b!64749 c!14350) b!64755))

(assert (= (and b!64749 (not c!14350)) b!64742))

(assert (= (and d!53324 c!14361) b!64757))

(assert (= (and d!53324 (not c!14361)) b!64749))

(declare-fun m!69295 () Bool)

(assert (=> b!64750 m!69295))

(declare-fun m!69297 () Bool)

(assert (=> b!64753 m!69297))

(declare-fun m!69299 () Bool)

(assert (=> b!64767 m!69299))

(assert (=> b!64650 d!53324))

(declare-fun b!64768 () Bool)

(declare-fun e!35134 () Bool)

(declare-fun e!35140 () Bool)

(assert (=> b!64768 (= e!35134 e!35140)))

(declare-fun res!30340 () Bool)

(assert (=> b!64768 (=> (not res!30340) (not e!35140))))

(declare-fun lt!12272 () Bool)

(assert (=> b!64768 (= res!30340 lt!12272)))

(assert (=> b!64768 (= lt!12272 (is-Implies!12 (simplify!1 f!3964)))))

(declare-fun b!64769 () Bool)

(declare-fun e!35153 () Bool)

(declare-fun e!35141 () Bool)

(assert (=> b!64769 (= e!35153 e!35141)))

(declare-fun res!30339 () Bool)

(assert (=> b!64769 (=> (not res!30339) (not e!35141))))

(declare-fun lt!12277 () Bool)

(assert (=> b!64769 (= res!30339 (not lt!12277))))

(declare-fun b!64770 () Bool)

(declare-fun e!35145 () Bool)

(declare-fun e!35149 () Bool)

(assert (=> b!64770 (= e!35145 e!35149)))

(declare-fun res!30332 () Bool)

(assert (=> b!64770 (=> (not res!30332) (not e!35149))))

(declare-fun lt!12281 () Bool)

(assert (=> b!64770 (= res!30332 (not lt!12281))))

(declare-fun b!64771 () Bool)

(declare-fun e!35136 () Formula!7)

(assert (=> b!64771 (= e!35136 (rhs!825 (simplify!1 f!3964)))))

(declare-fun b!64772 () Bool)

(declare-fun e!35151 () Bool)

(declare-fun lt!12271 () Bool)

(assert (=> b!64772 (= e!35151 (not lt!12271))))

(declare-fun b!64773 () Bool)

(declare-fun e!35137 () Bool)

(declare-fun e!35154 () Bool)

(assert (=> b!64773 (= e!35137 (not e!35154))))

(declare-fun c!14379 () Bool)

(declare-fun lt!12280 () Bool)

(assert (=> b!64773 (= c!14379 (or lt!12280 (is-Implies!12 (simplify!1 f!3964)) (is-Not!12 (simplify!1 f!3964))))))

(declare-fun b!64774 () Bool)

(assert (=> b!64774 (= e!35136 (rhs!826 (simplify!1 f!3964)))))

(declare-fun b!64775 () Bool)

(declare-fun e!35147 () Bool)

(declare-fun lt!12275 () Bool)

(assert (=> b!64775 (= e!35147 lt!12275)))

(declare-fun b!64776 () Bool)

(declare-fun e!35135 () Bool)

(declare-fun res!30328 () Bool)

(assert (=> b!64776 (= e!35135 res!30328)))

(assert (=> b!64776 true))

(declare-fun b!64777 () Bool)

(declare-fun e!35146 () Bool)

(declare-fun res!30330 () Bool)

(assert (=> b!64777 (= e!35146 res!30330)))

(assert (=> b!64777 true))

(declare-fun b!64778 () Bool)

(declare-fun e!35152 () Formula!7)

(assert (=> b!64778 (= e!35152 e!35136)))

(declare-fun c!14373 () Bool)

(assert (=> b!64778 (= c!14373 e!35137)))

(declare-fun res!30335 () Bool)

(assert (=> b!64778 (=> (not res!30335) (not e!35137))))

(assert (=> b!64778 (= res!30335 lt!12280)))

(assert (=> b!64778 (= lt!12280 (is-Or!12 (simplify!1 f!3964)))))

(declare-fun b!64779 () Bool)

(declare-fun e!35150 () Bool)

(declare-fun res!30329 () Bool)

(assert (=> b!64779 (= e!35150 res!30329)))

(assert (=> b!64779 true))

(declare-fun b!64780 () Bool)

(declare-fun lt!12278 () Bool)

(assert (=> b!64780 (= e!35150 lt!12278)))

(declare-fun b!64781 () Bool)

(declare-fun e!35148 () Bool)

(declare-fun e!35132 () Bool)

(assert (=> b!64781 (= e!35148 e!35132)))

(declare-fun c!14369 () Bool)

(declare-fun lt!12282 () Bool)

(assert (=> b!64781 (= c!14369 lt!12282)))

(declare-fun e!35142 () Bool)

(assert (=> b!64781 (= lt!12271 e!35142)))

(declare-fun c!14375 () Bool)

(assert (=> b!64781 (= c!14375 (or lt!12282 (is-Not!12 (simplify!1 f!3964))))))

(assert (=> b!64781 (= lt!12282 (is-Implies!12 (simplify!1 f!3964)))))

(declare-fun b!64782 () Bool)

(assert (=> b!64782 (= e!35135 lt!12275)))

(declare-fun b!64783 () Bool)

(declare-fun res!30338 () Bool)

(assert (=> b!64783 (= e!35147 res!30338)))

(assert (=> b!64783 true))

(declare-fun b!64784 () Bool)

(assert (=> b!64784 (= e!35140 e!35150)))

(declare-fun c!14368 () Bool)

(assert (=> b!64784 (= c!14368 (or lt!12272 (is-Not!12 (simplify!1 f!3964))))))

(declare-fun b!64785 () Bool)

(declare-fun e!35133 () Bool)

(assert (=> b!64785 (= e!35133 e!35146)))

(declare-fun c!14378 () Bool)

(declare-fun lt!12274 () Bool)

(assert (=> b!64785 (= c!14378 (or lt!12274 (is-Not!12 (simplify!1 f!3964))))))

(declare-fun b!64786 () Bool)

(assert (=> b!64786 (= e!35152 (rhs!824 (simplify!1 f!3964)))))

(declare-fun d!53326 () Bool)

(declare-fun c!14376 () Bool)

(assert (=> d!53326 (= c!14376 lt!12277)))

(declare-fun lt!12284 () Bool)

(declare-fun e!35139 () Bool)

(assert (=> d!53326 (= lt!12284 e!35139)))

(declare-fun c!14374 () Bool)

(assert (=> d!53326 (= c!14374 e!35153)))

(declare-fun res!30337 () Bool)

(assert (=> d!53326 (=> res!30337 e!35153)))

(declare-fun lt!12283 () Bool)

(assert (=> d!53326 (= res!30337 lt!12283)))

(assert (=> d!53326 (= lt!12283 (and lt!12277 lt!12275))))

(declare-fun e!35144 () Bool)

(assert (=> d!53326 (= lt!12275 e!35144)))

(declare-fun c!14377 () Bool)

(assert (=> d!53326 (= c!14377 (or lt!12277 (is-Or!12 (simplify!1 f!3964)) (is-Implies!12 (simplify!1 f!3964)) (is-Not!12 (simplify!1 f!3964))))))

(assert (=> d!53326 (= lt!12277 (is-And!12 (simplify!1 f!3964)))))

(declare-fun e!35143 () Bool)

(assert (=> d!53326 (= (eval!0 (simplify!1 f!3964)) e!35143)))

(declare-fun b!64787 () Bool)

(assert (=> b!64787 (= e!35154 lt!12275)))

(declare-fun b!64788 () Bool)

(assert (=> b!64788 (= e!35143 e!35148)))

(declare-fun c!14365 () Bool)

(assert (=> b!64788 (= c!14365 lt!12281)))

(declare-fun lt!12276 () Bool)

(declare-fun e!35138 () Bool)

(assert (=> b!64788 (= lt!12276 e!35138)))

(declare-fun c!14370 () Bool)

(assert (=> b!64788 (= c!14370 e!35145)))

(declare-fun res!30331 () Bool)

(assert (=> b!64788 (=> res!30331 e!35145)))

(declare-fun lt!12279 () Bool)

(assert (=> b!64788 (= res!30331 (and lt!12281 (not lt!12279)))))

(assert (=> b!64788 (= lt!12279 e!35147)))

(declare-fun c!14367 () Bool)

(assert (=> b!64788 (= c!14367 (or lt!12281 (is-Implies!12 (simplify!1 f!3964)) (is-Not!12 (simplify!1 f!3964))))))

(assert (=> b!64788 (= lt!12281 (is-Or!12 (simplify!1 f!3964)))))

(declare-fun b!64789 () Bool)

(assert (=> b!64789 (= e!35139 (eval!0 e!35152))))

(declare-fun c!14372 () Bool)

(assert (=> b!64789 (= c!14372 lt!12283)))

(declare-fun b!64790 () Bool)

(assert (=> b!64790 (= e!35138 lt!12284)))

(declare-fun b!64791 () Bool)

(declare-fun res!30341 () Bool)

(assert (=> b!64791 (= e!35139 res!30341)))

(assert (=> b!64791 true))

(declare-fun b!64792 () Bool)

(assert (=> b!64792 (= e!35151 (evalLit!0 (id!4787 (simplify!1 f!3964))))))

(declare-fun b!64793 () Bool)

(declare-fun res!30325 () Bool)

(assert (=> b!64793 (= e!35138 res!30325)))

(assert (=> b!64793 true))

(declare-fun b!64794 () Bool)

(assert (=> b!64794 (= e!35148 (or lt!12279 lt!12276))))

(declare-fun b!64795 () Bool)

(assert (=> b!64795 (= e!35132 e!35151)))

(declare-fun c!14366 () Bool)

(assert (=> b!64795 (= c!14366 (is-Not!12 (simplify!1 f!3964)))))

(declare-fun b!64796 () Bool)

(assert (=> b!64796 (= e!35143 (and lt!12275 lt!12284))))

(declare-fun b!64797 () Bool)

(declare-fun res!30326 () Bool)

(assert (=> b!64797 (= e!35142 res!30326)))

(assert (=> b!64797 true))

(assert (=> b!64797 true))

(declare-fun b!64798 () Bool)

(declare-fun res!30333 () Bool)

(assert (=> b!64798 (= e!35154 res!30333)))

(assert (=> b!64798 true))

(declare-fun b!64799 () Bool)

(assert (=> b!64799 (= e!35146 lt!12279)))

(declare-fun b!64800 () Bool)

(assert (=> b!64800 (= e!35142 lt!12279)))

(declare-fun b!64801 () Bool)

(assert (=> b!64801 (= e!35132 (or (not lt!12271) lt!12276))))

(declare-fun b!64802 () Bool)

(declare-fun e!35155 () Bool)

(assert (=> b!64802 (= e!35141 e!35155)))

(declare-fun res!30336 () Bool)

(assert (=> b!64802 (=> res!30336 e!35155)))

(declare-fun lt!12273 () Bool)

(assert (=> b!64802 (= res!30336 (and lt!12273 (not lt!12278)))))

(assert (=> b!64802 (= lt!12278 e!35135)))

(declare-fun c!14371 () Bool)

(assert (=> b!64802 (= c!14371 (or lt!12273 (is-Implies!12 (simplify!1 f!3964)) (is-Not!12 (simplify!1 f!3964))))))

(assert (=> b!64802 (= lt!12273 (is-Or!12 (simplify!1 f!3964)))))

(declare-fun b!64803 () Bool)

(assert (=> b!64803 (= e!35149 e!35133)))

(declare-fun res!30327 () Bool)

(assert (=> b!64803 (=> (not res!30327) (not e!35133))))

(assert (=> b!64803 (= res!30327 lt!12274)))

(assert (=> b!64803 (= lt!12274 (is-Implies!12 (simplify!1 f!3964)))))

(declare-fun b!64804 () Bool)

(assert (=> b!64804 (= e!35155 e!35134)))

(declare-fun res!30342 () Bool)

(assert (=> b!64804 (=> (not res!30342) (not e!35134))))

(assert (=> b!64804 (= res!30342 (not lt!12273))))

(declare-fun b!64805 () Bool)

(declare-fun res!30334 () Bool)

(assert (=> b!64805 (= e!35144 res!30334)))

(assert (=> b!64805 true))

(declare-fun b!64806 () Bool)

(assert (=> b!64806 (= e!35144 (eval!0 (ite lt!12277 (lhs!824 (simplify!1 f!3964)) (ite (is-Or!12 (simplify!1 f!3964)) (lhs!826 (simplify!1 f!3964)) (ite (is-Implies!12 (simplify!1 f!3964)) (lhs!825 (simplify!1 f!3964)) (f!4083 (simplify!1 f!3964)))))))))

(assert (= (and d!53326 c!14377) b!64806))

(assert (= (and d!53326 (not c!14377)) b!64805))

(assert (= (and d!53326 (not res!30337)) b!64769))

(assert (= (and b!64769 res!30339) b!64802))

(assert (= (and b!64802 c!14371) b!64782))

(assert (= (and b!64802 (not c!14371)) b!64776))

(assert (= (and b!64802 (not res!30336)) b!64804))

(assert (= (and b!64804 res!30342) b!64768))

(assert (= (and b!64768 res!30340) b!64784))

(assert (= (and b!64784 c!14368) b!64780))

(assert (= (and b!64784 (not c!14368)) b!64779))

(assert (= (and b!64778 res!30335) b!64773))

(assert (= (and b!64773 c!14379) b!64787))

(assert (= (and b!64773 (not c!14379)) b!64798))

(assert (= (and b!64778 c!14373) b!64774))

(assert (= (and b!64778 (not c!14373)) b!64771))

(assert (= (and b!64789 c!14372) b!64786))

(assert (= (and b!64789 (not c!14372)) b!64778))

(assert (= (and d!53326 c!14374) b!64789))

(assert (= (and d!53326 (not c!14374)) b!64791))

(assert (= (and b!64788 c!14367) b!64775))

(assert (= (and b!64788 (not c!14367)) b!64783))

(assert (= (and b!64788 (not res!30331)) b!64770))

(assert (= (and b!64770 res!30332) b!64803))

(assert (= (and b!64803 res!30327) b!64785))

(assert (= (and b!64785 c!14378) b!64799))

(assert (= (and b!64785 (not c!14378)) b!64777))

(assert (= (and b!64788 c!14370) b!64790))

(assert (= (and b!64788 (not c!14370)) b!64793))

(assert (= (and b!64781 c!14375) b!64800))

(assert (= (and b!64781 (not c!14375)) b!64797))

(assert (= (and b!64795 c!14366) b!64772))

(assert (= (and b!64795 (not c!14366)) b!64792))

(assert (= (and b!64781 c!14369) b!64801))

(assert (= (and b!64781 (not c!14369)) b!64795))

(assert (= (and b!64788 c!14365) b!64794))

(assert (= (and b!64788 (not c!14365)) b!64781))

(assert (= (and d!53326 c!14376) b!64796))

(assert (= (and d!53326 (not c!14376)) b!64788))

(declare-fun m!69301 () Bool)

(assert (=> b!64789 m!69301))

(declare-fun m!69303 () Bool)

(assert (=> b!64792 m!69303))

(declare-fun m!69305 () Bool)

(assert (=> b!64806 m!69305))

(assert (=> b!64650 d!53326))

(declare-fun b!64835 () Bool)

(declare-fun e!35173 () Formula!7)

(declare-fun e!35171 () Formula!7)

(assert (=> b!64835 (= e!35173 e!35171)))

(declare-fun c!14397 () Bool)

(declare-fun lt!12303 () Bool)

(assert (=> b!64835 (= c!14397 lt!12303)))

(declare-fun lt!12306 () Formula!7)

(declare-fun e!35176 () Formula!7)

(assert (=> b!64835 (= lt!12306 e!35176)))

(declare-fun c!14396 () Bool)

(assert (=> b!64835 (= c!14396 (or lt!12303 (is-Implies!12 f!3964)))))

(declare-fun lt!12309 () Formula!7)

(declare-fun e!35170 () Formula!7)

(assert (=> b!64835 (= lt!12309 e!35170)))

(declare-fun c!14395 () Bool)

(assert (=> b!64835 (= c!14395 (or lt!12303 (is-Implies!12 f!3964) (is-Not!12 f!3964)))))

(assert (=> b!64835 (= lt!12303 (is-Or!12 f!3964))))

(declare-fun b!64836 () Bool)

(declare-fun lt!12305 () Formula!7)

(assert (=> b!64836 (= e!35170 lt!12305)))

(declare-fun b!64837 () Bool)

(assert (=> b!64837 (= e!35171 (Or!12 lt!12309 lt!12306))))

(declare-fun b!64838 () Bool)

(declare-fun e!35172 () Formula!7)

(declare-fun lt!12307 () Bool)

(assert (=> b!64838 (= e!35172 (simplify!1 (ite lt!12307 (lhs!824 f!3964) (ite (is-Or!12 f!3964) (lhs!826 f!3964) (ite (is-Implies!12 f!3964) (lhs!825 f!3964) (f!4083 f!3964))))))))

(declare-fun b!64839 () Bool)

(declare-fun lt!12310 () Formula!7)

(assert (=> b!64839 (= e!35176 lt!12310)))

(declare-fun b!64840 () Bool)

(declare-fun res!30372 () Formula!7)

(assert (=> b!64840 (= e!35170 res!30372)))

(assert (=> b!64840 true))

(declare-fun b!64841 () Bool)

(assert (=> b!64841 (= e!35173 (And!12 lt!12305 lt!12310))))

(declare-fun d!53328 () Bool)

(declare-fun lt!12308 () Formula!7)

(declare-fun isSimplified!1 (Formula!7) Bool)

(assert (=> d!53328 (isSimplified!1 lt!12308)))

(assert (=> d!53328 (= lt!12308 e!35173)))

(declare-fun c!14394 () Bool)

(assert (=> d!53328 (= c!14394 lt!12307)))

(declare-fun e!35175 () Formula!7)

(assert (=> d!53328 (= lt!12310 e!35175)))

(declare-fun c!14399 () Bool)

(assert (=> d!53328 (= c!14399 (or lt!12307 (is-Or!12 f!3964) (is-Implies!12 f!3964)))))

(assert (=> d!53328 (= lt!12305 e!35172)))

(declare-fun c!14400 () Bool)

(assert (=> d!53328 (= c!14400 (or lt!12307 (is-Or!12 f!3964) (is-Implies!12 f!3964) (is-Not!12 f!3964)))))

(assert (=> d!53328 (= lt!12307 (is-And!12 f!3964))))

(assert (=> d!53328 (= (simplify!1 f!3964) lt!12308)))

(declare-fun b!64842 () Bool)

(declare-fun e!35174 () Formula!7)

(declare-fun res!30370 () Formula!7)

(assert (=> b!64842 (= e!35174 res!30370)))

(assert (=> b!64842 true))

(assert (=> b!64842 true))

(declare-fun b!64843 () Bool)

(declare-fun res!30371 () Formula!7)

(assert (=> b!64843 (= e!35176 res!30371)))

(assert (=> b!64843 true))

(declare-fun b!64844 () Bool)

(declare-fun res!30369 () Formula!7)

(assert (=> b!64844 (= e!35175 res!30369)))

(assert (=> b!64844 true))

(declare-fun lt!12304 () Formula!7)

(declare-fun lt!12311 () Bool)

(declare-fun b!64845 () Bool)

(assert (=> b!64845 (= e!35171 (ite lt!12311 (Or!12 (Not!12 lt!12304) lt!12306) (ite (is-Not!12 f!3964) (Not!12 lt!12304) f!3964)))))

(assert (=> b!64845 (= lt!12304 e!35174)))

(declare-fun c!14398 () Bool)

(assert (=> b!64845 (= c!14398 (or lt!12311 (is-Not!12 f!3964)))))

(assert (=> b!64845 (= lt!12311 (is-Implies!12 f!3964))))

(declare-fun b!64846 () Bool)

(declare-fun res!30368 () Formula!7)

(assert (=> b!64846 (= e!35172 res!30368)))

(assert (=> b!64846 true))

(declare-fun b!64847 () Bool)

(assert (=> b!64847 (= e!35175 (simplify!1 (ite lt!12307 (rhs!824 f!3964) (ite (is-Or!12 f!3964) (rhs!826 f!3964) (rhs!825 f!3964)))))))

(declare-fun b!64848 () Bool)

(assert (=> b!64848 (= e!35174 lt!12309)))

(assert (= (and d!53328 c!14400) b!64838))

(assert (= (and d!53328 (not c!14400)) b!64846))

(assert (= (and d!53328 c!14399) b!64847))

(assert (= (and d!53328 (not c!14399)) b!64844))

(assert (= (and b!64835 c!14395) b!64836))

(assert (= (and b!64835 (not c!14395)) b!64840))

(assert (= (and b!64835 c!14396) b!64839))

(assert (= (and b!64835 (not c!14396)) b!64843))

(assert (= (and b!64845 c!14398) b!64848))

(assert (= (and b!64845 (not c!14398)) b!64842))

(assert (= (and b!64835 c!14397) b!64837))

(assert (= (and b!64835 (not c!14397)) b!64845))

(assert (= (and d!53328 c!14394) b!64841))

(assert (= (and d!53328 (not c!14394)) b!64835))

(declare-fun m!69307 () Bool)

(assert (=> b!64838 m!69307))

(declare-fun m!69309 () Bool)

(assert (=> d!53328 m!69309))

(declare-fun m!69311 () Bool)

(assert (=> b!64847 m!69311))

(assert (=> b!64650 d!53328))

(declare-fun b!64893 () Bool)

(declare-fun e!35208 () Formula!7)

(assert (=> b!64893 (= e!35208 (simplify!1 (lhs!826 f!3964)))))

(declare-fun d!53330 () Bool)

(declare-fun e!35207 () Bool)

(assert (=> d!53330 e!35207))

(declare-fun c!14430 () Bool)

(declare-fun lt!12330 () Bool)

(assert (=> d!53330 (= c!14430 (or lt!12330 (is-Literal!6 (lhs!826 f!3964))))))

(declare-fun lt!12336 () Formula!7)

(assert (=> d!53330 (= lt!12336 e!35208)))

(declare-fun c!14431 () Bool)

(assert (=> d!53330 (= c!14431 (or lt!12330 (is-Literal!6 (lhs!826 f!3964))))))

(declare-fun lt!12333 () Bool)

(declare-fun e!35203 () Bool)

(assert (=> d!53330 (= lt!12333 e!35203)))

(declare-fun c!14432 () Bool)

(assert (=> d!53330 (= c!14432 (or lt!12330 (and (not (is-Literal!6 (lhs!826 f!3964))) (or (is-Implies!12 (lhs!826 f!3964)) (is-Or!12 (lhs!826 f!3964))))))))

(declare-fun lt!12334 () Bool)

(declare-fun e!35201 () Bool)

(assert (=> d!53330 (= lt!12334 e!35201)))

(declare-fun c!14433 () Bool)

(assert (=> d!53330 (= c!14433 (or lt!12330 (not (is-Literal!6 (lhs!826 f!3964)))))))

(assert (=> d!53330 (= lt!12330 (is-And!12 (lhs!826 f!3964)))))

(assert (=> d!53330 (= (simplifySemantics!0 (lhs!826 f!3964)) true)))

(declare-fun b!64894 () Bool)

(declare-fun e!35209 () Bool)

(assert (=> b!64894 (= e!35209 (eval!0 (lhs!826 f!3964)))))

(declare-fun b!64895 () Bool)

(declare-fun e!35204 () Bool)

(declare-fun e!35199 () Bool)

(assert (=> b!64895 (= e!35204 e!35199)))

(declare-fun c!14428 () Bool)

(assert (=> b!64895 (= c!14428 (is-Or!12 (lhs!826 f!3964)))))

(declare-fun b!64896 () Bool)

(declare-fun res!30425 () Bool)

(assert (=> b!64896 (= e!35201 res!30425)))

(assert (=> b!64896 true))

(declare-fun b!64897 () Bool)

(declare-fun res!30422 () Bool)

(assert (=> b!64897 (= e!35209 res!30422)))

(assert (=> b!64897 true))

(declare-fun b!64898 () Bool)

(declare-fun e!35202 () Bool)

(assert (=> b!64898 (= e!35202 (eval!0 lt!12336))))

(declare-fun b!64899 () Bool)

(declare-fun lt!12331 () Bool)

(assert (=> b!64899 (= e!35199 (= lt!12331 (eval!0 (simplify!1 (lhs!826 f!3964)))))))

(declare-fun b!64900 () Bool)

(declare-fun res!30424 () Formula!7)

(assert (=> b!64900 (= e!35208 res!30424)))

(assert (=> b!64900 true))

(declare-fun b!64901 () Bool)

(declare-fun lt!12332 () Bool)

(assert (=> b!64901 (= e!35204 (= lt!12332 lt!12331))))

(declare-fun b!64902 () Bool)

(declare-fun e!35200 () Formula!7)

(declare-fun res!30426 () Formula!7)

(assert (=> b!64902 (= e!35200 res!30426)))

(assert (=> b!64902 true))

(declare-fun b!64903 () Bool)

(assert (=> b!64903 (= e!35207 (= e!35209 e!35202))))

(declare-fun c!14427 () Bool)

(assert (=> b!64903 (= c!14427 (or lt!12330 (and (not lt!12330) (is-Literal!6 (lhs!826 f!3964)))))))

(declare-fun c!14425 () Bool)

(assert (=> b!64903 (= c!14425 (or lt!12330 (is-Literal!6 (lhs!826 f!3964))))))

(declare-fun b!64904 () Bool)

(declare-fun e!35205 () Bool)

(declare-fun res!30429 () Bool)

(assert (=> b!64904 (= e!35205 res!30429)))

(assert (=> b!64904 true))

(declare-fun b!64905 () Bool)

(assert (=> b!64905 (= e!35203 (simplifySemantics!0 (ite lt!12330 (lhs!824 (lhs!826 f!3964)) (ite (is-Implies!12 (lhs!826 f!3964)) (lhs!825 (lhs!826 f!3964)) (lhs!826 (lhs!826 f!3964))))))))

(declare-fun b!64906 () Bool)

(declare-fun res!30423 () Bool)

(assert (=> b!64906 (= e!35203 res!30423)))

(assert (=> b!64906 true))

(declare-fun b!64907 () Bool)

(assert (=> b!64907 (= e!35200 (simplify!1 (lhs!826 f!3964)))))

(declare-fun b!64908 () Bool)

(assert (=> b!64908 (= e!35207 e!35204)))

(declare-fun c!14423 () Bool)

(declare-fun lt!12337 () Bool)

(assert (=> b!64908 (= c!14423 lt!12337)))

(declare-fun e!35206 () Bool)

(assert (=> b!64908 (= lt!12331 e!35206)))

(declare-fun c!14424 () Bool)

(declare-fun lt!12335 () Bool)

(assert (=> b!64908 (= c!14424 (or lt!12335 (and (not lt!12337) (not (is-Or!12 (lhs!826 f!3964))))))))

(assert (=> b!64908 (= lt!12335 lt!12337)))

(declare-fun lt!12338 () Formula!7)

(assert (=> b!64908 (= lt!12338 e!35200)))

(declare-fun c!14426 () Bool)

(assert (=> b!64908 (= c!14426 (or lt!12337 (is-Or!12 (lhs!826 f!3964))))))

(assert (=> b!64908 (= lt!12332 e!35205)))

(declare-fun c!14429 () Bool)

(assert (=> b!64908 (= c!14429 (or lt!12337 (is-Or!12 (lhs!826 f!3964))))))

(assert (=> b!64908 (= lt!12337 (is-Implies!12 (lhs!826 f!3964)))))

(declare-fun b!64909 () Bool)

(assert (=> b!64909 (= e!35206 (eval!0 (ite lt!12335 lt!12338 (lhs!826 f!3964))))))

(declare-fun b!64910 () Bool)

(assert (=> b!64910 (= e!35201 (simplifySemantics!0 (ite lt!12330 (rhs!824 (lhs!826 f!3964)) (ite (is-Implies!12 (lhs!826 f!3964)) (rhs!825 (lhs!826 f!3964)) (ite (is-Or!12 (lhs!826 f!3964)) (rhs!826 (lhs!826 f!3964)) (f!4083 (lhs!826 f!3964)))))))))

(declare-fun b!64911 () Bool)

(declare-fun res!30427 () Bool)

(assert (=> b!64911 (= e!35202 res!30427)))

(assert (=> b!64911 true))

(declare-fun b!64912 () Bool)

(assert (=> b!64912 (= e!35205 (eval!0 (lhs!826 f!3964)))))

(declare-fun b!64913 () Bool)

(assert (=> b!64913 (= e!35199 (= lt!12332 (eval!0 lt!12338)))))

(declare-fun b!64914 () Bool)

(declare-fun res!30428 () Bool)

(assert (=> b!64914 (= e!35206 res!30428)))

(assert (=> b!64914 true))

(assert (=> b!64914 true))

(assert (= (and d!53330 c!14433) b!64910))

(assert (= (and d!53330 (not c!14433)) b!64896))

(assert (= (and d!53330 c!14432) b!64905))

(assert (= (and d!53330 (not c!14432)) b!64906))

(assert (= (and d!53330 c!14431) b!64893))

(assert (= (and d!53330 (not c!14431)) b!64900))

(assert (= (and b!64903 c!14425) b!64894))

(assert (= (and b!64903 (not c!14425)) b!64897))

(assert (= (and b!64903 c!14427) b!64898))

(assert (= (and b!64903 (not c!14427)) b!64911))

(assert (= (and b!64908 c!14429) b!64912))

(assert (= (and b!64908 (not c!14429)) b!64904))

(assert (= (and b!64908 c!14426) b!64907))

(assert (= (and b!64908 (not c!14426)) b!64902))

(assert (= (and b!64908 c!14424) b!64909))

(assert (= (and b!64908 (not c!14424)) b!64914))

(assert (= (and b!64895 c!14428) b!64913))

(assert (= (and b!64895 (not c!14428)) b!64899))

(assert (= (and b!64908 c!14423) b!64901))

(assert (= (and b!64908 (not c!14423)) b!64895))

(assert (= (and d!53330 c!14430) b!64903))

(assert (= (and d!53330 (not c!14430)) b!64908))

(declare-fun m!69313 () Bool)

(assert (=> b!64893 m!69313))

(declare-fun m!69315 () Bool)

(assert (=> b!64909 m!69315))

(assert (=> b!64907 m!69313))

(declare-fun m!69317 () Bool)

(assert (=> b!64910 m!69317))

(declare-fun m!69319 () Bool)

(assert (=> b!64898 m!69319))

(assert (=> b!64899 m!69313))

(assert (=> b!64899 m!69313))

(declare-fun m!69321 () Bool)

(assert (=> b!64899 m!69321))

(declare-fun m!69323 () Bool)

(assert (=> b!64912 m!69323))

(assert (=> b!64894 m!69323))

(declare-fun m!69325 () Bool)

(assert (=> b!64913 m!69325))

(declare-fun m!69327 () Bool)

(assert (=> b!64905 m!69327))

(assert (=> b!64649 d!53330))

(declare-fun b!64915 () Bool)

(declare-fun e!35219 () Formula!7)

(assert (=> b!64915 (= e!35219 (simplify!1 (rhs!826 f!3964)))))

(declare-fun d!53332 () Bool)

(declare-fun e!35218 () Bool)

(assert (=> d!53332 e!35218))

(declare-fun c!14441 () Bool)

(declare-fun lt!12339 () Bool)

(assert (=> d!53332 (= c!14441 (or lt!12339 (is-Literal!6 (rhs!826 f!3964))))))

(declare-fun lt!12345 () Formula!7)

(assert (=> d!53332 (= lt!12345 e!35219)))

(declare-fun c!14442 () Bool)

(assert (=> d!53332 (= c!14442 (or lt!12339 (is-Literal!6 (rhs!826 f!3964))))))

(declare-fun lt!12342 () Bool)

(declare-fun e!35214 () Bool)

(assert (=> d!53332 (= lt!12342 e!35214)))

(declare-fun c!14443 () Bool)

(assert (=> d!53332 (= c!14443 (or lt!12339 (and (not (is-Literal!6 (rhs!826 f!3964))) (or (is-Implies!12 (rhs!826 f!3964)) (is-Or!12 (rhs!826 f!3964))))))))

(declare-fun lt!12343 () Bool)

(declare-fun e!35212 () Bool)

(assert (=> d!53332 (= lt!12343 e!35212)))

(declare-fun c!14444 () Bool)

(assert (=> d!53332 (= c!14444 (or lt!12339 (not (is-Literal!6 (rhs!826 f!3964)))))))

(assert (=> d!53332 (= lt!12339 (is-And!12 (rhs!826 f!3964)))))

(assert (=> d!53332 (= (simplifySemantics!0 (rhs!826 f!3964)) true)))

(declare-fun b!64916 () Bool)

(declare-fun e!35220 () Bool)

(assert (=> b!64916 (= e!35220 (eval!0 (rhs!826 f!3964)))))

(declare-fun b!64917 () Bool)

(declare-fun e!35215 () Bool)

(declare-fun e!35210 () Bool)

(assert (=> b!64917 (= e!35215 e!35210)))

(declare-fun c!14439 () Bool)

(assert (=> b!64917 (= c!14439 (is-Or!12 (rhs!826 f!3964)))))

(declare-fun b!64918 () Bool)

(declare-fun res!30433 () Bool)

(assert (=> b!64918 (= e!35212 res!30433)))

(assert (=> b!64918 true))

(declare-fun b!64919 () Bool)

(declare-fun res!30430 () Bool)

(assert (=> b!64919 (= e!35220 res!30430)))

(assert (=> b!64919 true))

(declare-fun b!64920 () Bool)

(declare-fun e!35213 () Bool)

(assert (=> b!64920 (= e!35213 (eval!0 lt!12345))))

(declare-fun b!64921 () Bool)

(declare-fun lt!12340 () Bool)

(assert (=> b!64921 (= e!35210 (= lt!12340 (eval!0 (simplify!1 (rhs!826 f!3964)))))))

(declare-fun b!64922 () Bool)

(declare-fun res!30432 () Formula!7)

(assert (=> b!64922 (= e!35219 res!30432)))

(assert (=> b!64922 true))

(declare-fun b!64923 () Bool)

(declare-fun lt!12341 () Bool)

(assert (=> b!64923 (= e!35215 (= lt!12341 lt!12340))))

(declare-fun b!64924 () Bool)

(declare-fun e!35211 () Formula!7)

(declare-fun res!30434 () Formula!7)

(assert (=> b!64924 (= e!35211 res!30434)))

(assert (=> b!64924 true))

(declare-fun b!64925 () Bool)

(assert (=> b!64925 (= e!35218 (= e!35220 e!35213))))

(declare-fun c!14438 () Bool)

(assert (=> b!64925 (= c!14438 (or lt!12339 (and (not lt!12339) (is-Literal!6 (rhs!826 f!3964)))))))

(declare-fun c!14436 () Bool)

(assert (=> b!64925 (= c!14436 (or lt!12339 (is-Literal!6 (rhs!826 f!3964))))))

(declare-fun b!64926 () Bool)

(declare-fun e!35216 () Bool)

(declare-fun res!30437 () Bool)

(assert (=> b!64926 (= e!35216 res!30437)))

(assert (=> b!64926 true))

(declare-fun b!64927 () Bool)

(assert (=> b!64927 (= e!35214 (simplifySemantics!0 (ite lt!12339 (lhs!824 (rhs!826 f!3964)) (ite (is-Implies!12 (rhs!826 f!3964)) (lhs!825 (rhs!826 f!3964)) (lhs!826 (rhs!826 f!3964))))))))

(declare-fun b!64928 () Bool)

(declare-fun res!30431 () Bool)

(assert (=> b!64928 (= e!35214 res!30431)))

(assert (=> b!64928 true))

(declare-fun b!64929 () Bool)

(assert (=> b!64929 (= e!35211 (simplify!1 (rhs!826 f!3964)))))

(declare-fun b!64930 () Bool)

(assert (=> b!64930 (= e!35218 e!35215)))

(declare-fun c!14434 () Bool)

(declare-fun lt!12346 () Bool)

(assert (=> b!64930 (= c!14434 lt!12346)))

(declare-fun e!35217 () Bool)

(assert (=> b!64930 (= lt!12340 e!35217)))

(declare-fun lt!12344 () Bool)

(declare-fun c!14435 () Bool)

(assert (=> b!64930 (= c!14435 (or lt!12344 (and (not lt!12346) (not (is-Or!12 (rhs!826 f!3964))))))))

(assert (=> b!64930 (= lt!12344 lt!12346)))

(declare-fun lt!12347 () Formula!7)

(assert (=> b!64930 (= lt!12347 e!35211)))

(declare-fun c!14437 () Bool)

(assert (=> b!64930 (= c!14437 (or lt!12346 (is-Or!12 (rhs!826 f!3964))))))

(assert (=> b!64930 (= lt!12341 e!35216)))

(declare-fun c!14440 () Bool)

(assert (=> b!64930 (= c!14440 (or lt!12346 (is-Or!12 (rhs!826 f!3964))))))

(assert (=> b!64930 (= lt!12346 (is-Implies!12 (rhs!826 f!3964)))))

(declare-fun b!64931 () Bool)

(assert (=> b!64931 (= e!35217 (eval!0 (ite lt!12344 lt!12347 (rhs!826 f!3964))))))

(declare-fun b!64932 () Bool)

(assert (=> b!64932 (= e!35212 (simplifySemantics!0 (ite lt!12339 (rhs!824 (rhs!826 f!3964)) (ite (is-Implies!12 (rhs!826 f!3964)) (rhs!825 (rhs!826 f!3964)) (ite (is-Or!12 (rhs!826 f!3964)) (rhs!826 (rhs!826 f!3964)) (f!4083 (rhs!826 f!3964)))))))))

(declare-fun b!64933 () Bool)

(declare-fun res!30435 () Bool)

(assert (=> b!64933 (= e!35213 res!30435)))

(assert (=> b!64933 true))

(declare-fun b!64934 () Bool)

(assert (=> b!64934 (= e!35216 (eval!0 (rhs!826 f!3964)))))

(declare-fun b!64935 () Bool)

(assert (=> b!64935 (= e!35210 (= lt!12341 (eval!0 lt!12347)))))

(declare-fun b!64936 () Bool)

(declare-fun res!30436 () Bool)

(assert (=> b!64936 (= e!35217 res!30436)))

(assert (=> b!64936 true))

(assert (=> b!64936 true))

(assert (= (and d!53332 c!14444) b!64932))

(assert (= (and d!53332 (not c!14444)) b!64918))

(assert (= (and d!53332 c!14443) b!64927))

(assert (= (and d!53332 (not c!14443)) b!64928))

(assert (= (and d!53332 c!14442) b!64915))

(assert (= (and d!53332 (not c!14442)) b!64922))

(assert (= (and b!64925 c!14436) b!64916))

(assert (= (and b!64925 (not c!14436)) b!64919))

(assert (= (and b!64925 c!14438) b!64920))

(assert (= (and b!64925 (not c!14438)) b!64933))

(assert (= (and b!64930 c!14440) b!64934))

(assert (= (and b!64930 (not c!14440)) b!64926))

(assert (= (and b!64930 c!14437) b!64929))

(assert (= (and b!64930 (not c!14437)) b!64924))

(assert (= (and b!64930 c!14435) b!64931))

(assert (= (and b!64930 (not c!14435)) b!64936))

(assert (= (and b!64917 c!14439) b!64935))

(assert (= (and b!64917 (not c!14439)) b!64921))

(assert (= (and b!64930 c!14434) b!64923))

(assert (= (and b!64930 (not c!14434)) b!64917))

(assert (= (and d!53332 c!14441) b!64925))

(assert (= (and d!53332 (not c!14441)) b!64930))

(declare-fun m!69329 () Bool)

(assert (=> b!64915 m!69329))

(declare-fun m!69331 () Bool)

(assert (=> b!64931 m!69331))

(assert (=> b!64929 m!69329))

(declare-fun m!69333 () Bool)

(assert (=> b!64932 m!69333))

(declare-fun m!69335 () Bool)

(assert (=> b!64920 m!69335))

(assert (=> b!64921 m!69329))

(assert (=> b!64921 m!69329))

(declare-fun m!69337 () Bool)

(assert (=> b!64921 m!69337))

(declare-fun m!69339 () Bool)

(assert (=> b!64934 m!69339))

(assert (=> b!64916 m!69339))

(declare-fun m!69341 () Bool)

(assert (=> b!64935 m!69341))

(declare-fun m!69343 () Bool)

(assert (=> b!64927 m!69343))

(assert (=> b!64648 d!53332))

(push 1)

(assert (not b!64935))

(assert (not b!64932))

(assert (not b!64792))

(assert (not b!64920))

(assert (not b!64899))

(assert (not b!64750))

(assert (not b!64894))

(assert (not b!64934))

(assert (not b!64929))

(assert (not b!64912))

(assert (not b!64931))

(assert (not b!64789))

(assert (not b!64893))

(assert (not b!64907))

(assert (not b!64767))

(assert (not b!64909))

(assert (not b!64921))

(assert (not b!64806))

(assert (not b!64915))

(assert (not b!64913))

(assert (not b!64838))

(assert (not b!64916))

(assert (not b!64910))

(assert (not d!53328))

(assert (not b!64847))

(assert (not b!64753))

(assert (not b!64927))

(assert (not b!64905))

(assert (not b!64898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

