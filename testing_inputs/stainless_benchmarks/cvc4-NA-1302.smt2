; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9178 () Bool)

(assert start!9178)

(declare-fun res!29395 () Bool)

(declare-fun e!34179 () Bool)

(assert (=> start!9178 (=> (not res!29395) (not e!34179))))

(declare-datatypes () ((Formula!4 (And!9 (lhs!815 Formula!4) (rhs!815 Formula!4)) (Literal!3 (id!4783 Int)) (Implies!9 (lhs!816 Formula!4) (rhs!816 Formula!4)) (Or!9 (lhs!817 Formula!4) (rhs!817 Formula!4)) (Not!9 (f!4071 Formula!4)))))

(declare-fun f!3964 () Formula!4)

(assert (=> start!9178 (= res!29395 (is-And!9 f!3964))))

(assert (=> start!9178 e!34179))

(assert (=> start!9178 true))

(declare-fun b!63128 () Bool)

(declare-fun res!29396 () Bool)

(assert (=> b!63128 (=> (not res!29396) (not e!34179))))

(declare-fun inductVal!420 () Bool)

(declare-fun simplifySemantics!0 (Formula!4) Bool)

(assert (=> b!63128 (= res!29396 (= inductVal!420 (simplifySemantics!0 (rhs!815 f!3964))))))

(declare-fun b!63129 () Bool)

(declare-fun res!29397 () Bool)

(assert (=> b!63129 (=> (not res!29397) (not e!34179))))

(declare-fun inductVal!428 () Bool)

(assert (=> b!63129 (= res!29397 (= inductVal!428 (simplifySemantics!0 (lhs!815 f!3964))))))

(declare-fun b!63130 () Bool)

(declare-fun eval!0 (Formula!4) Bool)

(declare-fun simplify!1 (Formula!4) Formula!4)

(assert (=> b!63130 (= e!34179 (not (= (eval!0 f!3964) (eval!0 (simplify!1 f!3964)))))))

(assert (= (and start!9178 res!29395) b!63128))

(assert (= (and b!63128 res!29396) b!63129))

(assert (= (and b!63129 res!29397) b!63130))

(declare-fun m!68965 () Bool)

(assert (=> b!63128 m!68965))

(declare-fun m!68967 () Bool)

(assert (=> b!63129 m!68967))

(declare-fun m!68969 () Bool)

(assert (=> b!63130 m!68969))

(declare-fun m!68971 () Bool)

(assert (=> b!63130 m!68971))

(assert (=> b!63130 m!68971))

(declare-fun m!68973 () Bool)

(assert (=> b!63130 m!68973))

(push 1)

(assert (not b!63129))

(assert (not b!63128))

(assert (not b!63130))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!11645 () Bool)

(declare-fun e!34207 () Bool)

(declare-fun lt!11639 () Formula!4)

(declare-fun b!63175 () Bool)

(assert (=> b!63175 (= e!34207 (eval!0 (ite lt!11645 lt!11639 (lhs!815 f!3964))))))

(declare-fun b!63176 () Bool)

(declare-fun e!34204 () Bool)

(declare-fun lt!11638 () Formula!4)

(assert (=> b!63176 (= e!34204 (eval!0 lt!11638))))

(declare-fun b!63177 () Bool)

(declare-fun e!34210 () Bool)

(declare-fun res!29453 () Bool)

(assert (=> b!63177 (= e!34210 res!29453)))

(assert (=> b!63177 true))

(declare-fun b!63178 () Bool)

(declare-fun res!29452 () Bool)

(assert (=> b!63178 (= e!34204 res!29452)))

(assert (=> b!63178 true))

(declare-fun b!63179 () Bool)

(declare-fun res!29449 () Bool)

(assert (=> b!63179 (= e!34207 res!29449)))

(assert (=> b!63179 true))

(assert (=> b!63179 true))

(declare-fun b!63180 () Bool)

(declare-fun e!34206 () Bool)

(declare-fun res!29447 () Bool)

(assert (=> b!63180 (= e!34206 res!29447)))

(assert (=> b!63180 true))

(declare-fun b!63181 () Bool)

(declare-fun e!34208 () Bool)

(declare-fun e!34212 () Bool)

(assert (=> b!63181 (= e!34208 e!34212)))

(declare-fun c!13717 () Bool)

(declare-fun lt!11642 () Bool)

(assert (=> b!63181 (= c!13717 lt!11642)))

(declare-fun lt!11643 () Bool)

(assert (=> b!63181 (= lt!11643 e!34207)))

(declare-fun c!13722 () Bool)

(assert (=> b!63181 (= c!13722 (or lt!11645 (and (not lt!11642) (not (is-Or!9 (lhs!815 f!3964))))))))

(assert (=> b!63181 (= lt!11645 lt!11642)))

(declare-fun e!34203 () Formula!4)

(assert (=> b!63181 (= lt!11639 e!34203)))

(declare-fun c!13723 () Bool)

(assert (=> b!63181 (= c!13723 (or lt!11642 (is-Or!9 (lhs!815 f!3964))))))

(declare-fun lt!11641 () Bool)

(assert (=> b!63181 (= lt!11641 e!34210)))

(declare-fun c!13724 () Bool)

(assert (=> b!63181 (= c!13724 (or lt!11642 (is-Or!9 (lhs!815 f!3964))))))

(assert (=> b!63181 (= lt!11642 (is-Implies!9 (lhs!815 f!3964)))))

(declare-fun b!63182 () Bool)

(assert (=> b!63182 (= e!34208 (= e!34206 e!34204))))

(declare-fun c!13718 () Bool)

(declare-fun lt!11644 () Bool)

(assert (=> b!63182 (= c!13718 (or lt!11644 (and (not lt!11644) (is-Literal!3 (lhs!815 f!3964)))))))

(declare-fun c!13714 () Bool)

(assert (=> b!63182 (= c!13714 (or lt!11644 (is-Literal!3 (lhs!815 f!3964))))))

(declare-fun b!63183 () Bool)

(declare-fun e!34211 () Bool)

(assert (=> b!63183 (= e!34211 (= lt!11643 (eval!0 (simplify!1 (lhs!815 f!3964)))))))

(declare-fun b!63184 () Bool)

(declare-fun e!34202 () Bool)

(assert (=> b!63184 (= e!34202 (simplifySemantics!0 (ite lt!11644 (lhs!815 (lhs!815 f!3964)) (ite (is-Implies!9 (lhs!815 f!3964)) (lhs!816 (lhs!815 f!3964)) (lhs!817 (lhs!815 f!3964))))))))

(declare-fun d!53248 () Bool)

(assert (=> d!53248 e!34208))

(declare-fun c!13720 () Bool)

(assert (=> d!53248 (= c!13720 (or lt!11644 (is-Literal!3 (lhs!815 f!3964))))))

(declare-fun e!34205 () Formula!4)

(assert (=> d!53248 (= lt!11638 e!34205)))

(declare-fun c!13715 () Bool)

(assert (=> d!53248 (= c!13715 (or lt!11644 (is-Literal!3 (lhs!815 f!3964))))))

(declare-fun lt!11640 () Bool)

(assert (=> d!53248 (= lt!11640 e!34202)))

(declare-fun c!13716 () Bool)

(assert (=> d!53248 (= c!13716 (or lt!11644 (and (not (is-Literal!3 (lhs!815 f!3964))) (or (is-Implies!9 (lhs!815 f!3964)) (is-Or!9 (lhs!815 f!3964))))))))

(declare-fun lt!11637 () Bool)

(declare-fun e!34209 () Bool)

(assert (=> d!53248 (= lt!11637 e!34209)))

(declare-fun c!13719 () Bool)

(assert (=> d!53248 (= c!13719 (or lt!11644 (not (is-Literal!3 (lhs!815 f!3964)))))))

(assert (=> d!53248 (= lt!11644 (is-And!9 (lhs!815 f!3964)))))

(assert (=> d!53248 (= (simplifySemantics!0 (lhs!815 f!3964)) true)))

(declare-fun b!63185 () Bool)

(declare-fun res!29454 () Formula!4)

(assert (=> b!63185 (= e!34205 res!29454)))

(assert (=> b!63185 true))

(declare-fun b!63186 () Bool)

(assert (=> b!63186 (= e!34211 (= lt!11641 (eval!0 lt!11639)))))

(declare-fun b!63187 () Bool)

(assert (=> b!63187 (= e!34203 (simplify!1 (lhs!815 f!3964)))))

(declare-fun b!63188 () Bool)

(assert (=> b!63188 (= e!34205 (simplify!1 (lhs!815 f!3964)))))

(declare-fun b!63189 () Bool)

(assert (=> b!63189 (= e!34212 e!34211)))

(declare-fun c!13721 () Bool)

(assert (=> b!63189 (= c!13721 (is-Or!9 (lhs!815 f!3964)))))

(declare-fun b!63190 () Bool)

(assert (=> b!63190 (= e!34212 (= lt!11641 lt!11643))))

(declare-fun b!63191 () Bool)

(assert (=> b!63191 (= e!34210 (eval!0 (lhs!815 f!3964)))))

(declare-fun b!63192 () Bool)

(assert (=> b!63192 (= e!34209 (simplifySemantics!0 (ite lt!11644 (rhs!815 (lhs!815 f!3964)) (ite (is-Implies!9 (lhs!815 f!3964)) (rhs!816 (lhs!815 f!3964)) (ite (is-Or!9 (lhs!815 f!3964)) (rhs!817 (lhs!815 f!3964)) (f!4071 (lhs!815 f!3964)))))))))

(declare-fun b!63193 () Bool)

(assert (=> b!63193 (= e!34206 (eval!0 (lhs!815 f!3964)))))

(declare-fun b!63194 () Bool)

(declare-fun res!29448 () Bool)

(assert (=> b!63194 (= e!34209 res!29448)))

(assert (=> b!63194 true))

(declare-fun b!63195 () Bool)

(declare-fun res!29451 () Formula!4)

(assert (=> b!63195 (= e!34203 res!29451)))

(assert (=> b!63195 true))

(declare-fun b!63196 () Bool)

(declare-fun res!29450 () Bool)

(assert (=> b!63196 (= e!34202 res!29450)))

(assert (=> b!63196 true))

(assert (= (and d!53248 c!13719) b!63192))

(assert (= (and d!53248 (not c!13719)) b!63194))

(assert (= (and d!53248 c!13716) b!63184))

(assert (= (and d!53248 (not c!13716)) b!63196))

(assert (= (and d!53248 c!13715) b!63188))

(assert (= (and d!53248 (not c!13715)) b!63185))

(assert (= (and b!63182 c!13714) b!63193))

(assert (= (and b!63182 (not c!13714)) b!63180))

(assert (= (and b!63182 c!13718) b!63176))

(assert (= (and b!63182 (not c!13718)) b!63178))

(assert (= (and b!63181 c!13724) b!63191))

(assert (= (and b!63181 (not c!13724)) b!63177))

(assert (= (and b!63181 c!13723) b!63187))

(assert (= (and b!63181 (not c!13723)) b!63195))

(assert (= (and b!63181 c!13722) b!63175))

(assert (= (and b!63181 (not c!13722)) b!63179))

(assert (= (and b!63189 c!13721) b!63186))

(assert (= (and b!63189 (not c!13721)) b!63183))

(assert (= (and b!63181 c!13717) b!63190))

(assert (= (and b!63181 (not c!13717)) b!63189))

(assert (= (and d!53248 c!13720) b!63182))

(assert (= (and d!53248 (not c!13720)) b!63181))

(declare-fun m!68975 () Bool)

(assert (=> b!63191 m!68975))

(declare-fun m!68977 () Bool)

(assert (=> b!63176 m!68977))

(declare-fun m!68979 () Bool)

(assert (=> b!63192 m!68979))

(declare-fun m!68981 () Bool)

(assert (=> b!63175 m!68981))

(assert (=> b!63193 m!68975))

(declare-fun m!68983 () Bool)

(assert (=> b!63183 m!68983))

(assert (=> b!63183 m!68983))

(declare-fun m!68985 () Bool)

(assert (=> b!63183 m!68985))

(assert (=> b!63187 m!68983))

(declare-fun m!68987 () Bool)

(assert (=> b!63184 m!68987))

(assert (=> b!63188 m!68983))

(declare-fun m!68989 () Bool)

(assert (=> b!63186 m!68989))

(assert (=> b!63129 d!53248))

(declare-fun lt!11648 () Formula!4)

(declare-fun b!63197 () Bool)

(declare-fun lt!11654 () Bool)

(declare-fun e!34218 () Bool)

(assert (=> b!63197 (= e!34218 (eval!0 (ite lt!11654 lt!11648 (rhs!815 f!3964))))))

(declare-fun b!63198 () Bool)

(declare-fun e!34215 () Bool)

(declare-fun lt!11647 () Formula!4)

(assert (=> b!63198 (= e!34215 (eval!0 lt!11647))))

(declare-fun b!63199 () Bool)

(declare-fun e!34221 () Bool)

(declare-fun res!29461 () Bool)

(assert (=> b!63199 (= e!34221 res!29461)))

(assert (=> b!63199 true))

(declare-fun b!63200 () Bool)

(declare-fun res!29460 () Bool)

(assert (=> b!63200 (= e!34215 res!29460)))

(assert (=> b!63200 true))

(declare-fun b!63201 () Bool)

(declare-fun res!29457 () Bool)

(assert (=> b!63201 (= e!34218 res!29457)))

(assert (=> b!63201 true))

(assert (=> b!63201 true))

(declare-fun b!63202 () Bool)

(declare-fun e!34217 () Bool)

(declare-fun res!29455 () Bool)

(assert (=> b!63202 (= e!34217 res!29455)))

(assert (=> b!63202 true))

(declare-fun b!63203 () Bool)

(declare-fun e!34219 () Bool)

(declare-fun e!34223 () Bool)

(assert (=> b!63203 (= e!34219 e!34223)))

(declare-fun c!13728 () Bool)

(declare-fun lt!11651 () Bool)

(assert (=> b!63203 (= c!13728 lt!11651)))

(declare-fun lt!11652 () Bool)

(assert (=> b!63203 (= lt!11652 e!34218)))

(declare-fun c!13733 () Bool)

(assert (=> b!63203 (= c!13733 (or lt!11654 (and (not lt!11651) (not (is-Or!9 (rhs!815 f!3964))))))))

(assert (=> b!63203 (= lt!11654 lt!11651)))

(declare-fun e!34214 () Formula!4)

(assert (=> b!63203 (= lt!11648 e!34214)))

(declare-fun c!13734 () Bool)

(assert (=> b!63203 (= c!13734 (or lt!11651 (is-Or!9 (rhs!815 f!3964))))))

(declare-fun lt!11650 () Bool)

(assert (=> b!63203 (= lt!11650 e!34221)))

(declare-fun c!13735 () Bool)

(assert (=> b!63203 (= c!13735 (or lt!11651 (is-Or!9 (rhs!815 f!3964))))))

(assert (=> b!63203 (= lt!11651 (is-Implies!9 (rhs!815 f!3964)))))

(declare-fun b!63204 () Bool)

(assert (=> b!63204 (= e!34219 (= e!34217 e!34215))))

(declare-fun c!13729 () Bool)

(declare-fun lt!11653 () Bool)

(assert (=> b!63204 (= c!13729 (or lt!11653 (and (not lt!11653) (is-Literal!3 (rhs!815 f!3964)))))))

(declare-fun c!13725 () Bool)

(assert (=> b!63204 (= c!13725 (or lt!11653 (is-Literal!3 (rhs!815 f!3964))))))

(declare-fun b!63205 () Bool)

(declare-fun e!34222 () Bool)

(assert (=> b!63205 (= e!34222 (= lt!11652 (eval!0 (simplify!1 (rhs!815 f!3964)))))))

(declare-fun b!63206 () Bool)

(declare-fun e!34213 () Bool)

(assert (=> b!63206 (= e!34213 (simplifySemantics!0 (ite lt!11653 (lhs!815 (rhs!815 f!3964)) (ite (is-Implies!9 (rhs!815 f!3964)) (lhs!816 (rhs!815 f!3964)) (lhs!817 (rhs!815 f!3964))))))))

(declare-fun d!53250 () Bool)

(assert (=> d!53250 e!34219))

(declare-fun c!13731 () Bool)

(assert (=> d!53250 (= c!13731 (or lt!11653 (is-Literal!3 (rhs!815 f!3964))))))

(declare-fun e!34216 () Formula!4)

(assert (=> d!53250 (= lt!11647 e!34216)))

(declare-fun c!13726 () Bool)

(assert (=> d!53250 (= c!13726 (or lt!11653 (is-Literal!3 (rhs!815 f!3964))))))

(declare-fun lt!11649 () Bool)

(assert (=> d!53250 (= lt!11649 e!34213)))

(declare-fun c!13727 () Bool)

(assert (=> d!53250 (= c!13727 (or lt!11653 (and (not (is-Literal!3 (rhs!815 f!3964))) (or (is-Implies!9 (rhs!815 f!3964)) (is-Or!9 (rhs!815 f!3964))))))))

(declare-fun lt!11646 () Bool)

(declare-fun e!34220 () Bool)

(assert (=> d!53250 (= lt!11646 e!34220)))

(declare-fun c!13730 () Bool)

(assert (=> d!53250 (= c!13730 (or lt!11653 (not (is-Literal!3 (rhs!815 f!3964)))))))

(assert (=> d!53250 (= lt!11653 (is-And!9 (rhs!815 f!3964)))))

(assert (=> d!53250 (= (simplifySemantics!0 (rhs!815 f!3964)) true)))

(declare-fun b!63207 () Bool)

(declare-fun res!29462 () Formula!4)

(assert (=> b!63207 (= e!34216 res!29462)))

(assert (=> b!63207 true))

(declare-fun b!63208 () Bool)

(assert (=> b!63208 (= e!34222 (= lt!11650 (eval!0 lt!11648)))))

(declare-fun b!63209 () Bool)

(assert (=> b!63209 (= e!34214 (simplify!1 (rhs!815 f!3964)))))

(declare-fun b!63210 () Bool)

(assert (=> b!63210 (= e!34216 (simplify!1 (rhs!815 f!3964)))))

(declare-fun b!63211 () Bool)

(assert (=> b!63211 (= e!34223 e!34222)))

(declare-fun c!13732 () Bool)

(assert (=> b!63211 (= c!13732 (is-Or!9 (rhs!815 f!3964)))))

(declare-fun b!63212 () Bool)

(assert (=> b!63212 (= e!34223 (= lt!11650 lt!11652))))

(declare-fun b!63213 () Bool)

(assert (=> b!63213 (= e!34221 (eval!0 (rhs!815 f!3964)))))

(declare-fun b!63214 () Bool)

(assert (=> b!63214 (= e!34220 (simplifySemantics!0 (ite lt!11653 (rhs!815 (rhs!815 f!3964)) (ite (is-Implies!9 (rhs!815 f!3964)) (rhs!816 (rhs!815 f!3964)) (ite (is-Or!9 (rhs!815 f!3964)) (rhs!817 (rhs!815 f!3964)) (f!4071 (rhs!815 f!3964)))))))))

(declare-fun b!63215 () Bool)

(assert (=> b!63215 (= e!34217 (eval!0 (rhs!815 f!3964)))))

(declare-fun b!63216 () Bool)

(declare-fun res!29456 () Bool)

(assert (=> b!63216 (= e!34220 res!29456)))

(assert (=> b!63216 true))

(declare-fun b!63217 () Bool)

(declare-fun res!29459 () Formula!4)

(assert (=> b!63217 (= e!34214 res!29459)))

(assert (=> b!63217 true))

(declare-fun b!63218 () Bool)

(declare-fun res!29458 () Bool)

(assert (=> b!63218 (= e!34213 res!29458)))

(assert (=> b!63218 true))

(assert (= (and d!53250 c!13730) b!63214))

(assert (= (and d!53250 (not c!13730)) b!63216))

(assert (= (and d!53250 c!13727) b!63206))

(assert (= (and d!53250 (not c!13727)) b!63218))

(assert (= (and d!53250 c!13726) b!63210))

(assert (= (and d!53250 (not c!13726)) b!63207))

(assert (= (and b!63204 c!13725) b!63215))

(assert (= (and b!63204 (not c!13725)) b!63202))

(assert (= (and b!63204 c!13729) b!63198))

(assert (= (and b!63204 (not c!13729)) b!63200))

(assert (= (and b!63203 c!13735) b!63213))

(assert (= (and b!63203 (not c!13735)) b!63199))

(assert (= (and b!63203 c!13734) b!63209))

(assert (= (and b!63203 (not c!13734)) b!63217))

(assert (= (and b!63203 c!13733) b!63197))

(assert (= (and b!63203 (not c!13733)) b!63201))

(assert (= (and b!63211 c!13732) b!63208))

(assert (= (and b!63211 (not c!13732)) b!63205))

(assert (= (and b!63203 c!13728) b!63212))

(assert (= (and b!63203 (not c!13728)) b!63211))

(assert (= (and d!53250 c!13731) b!63204))

(assert (= (and d!53250 (not c!13731)) b!63203))

(declare-fun m!68991 () Bool)

(assert (=> b!63213 m!68991))

(declare-fun m!68993 () Bool)

(assert (=> b!63198 m!68993))

(declare-fun m!68995 () Bool)

(assert (=> b!63214 m!68995))

(declare-fun m!68997 () Bool)

(assert (=> b!63197 m!68997))

(assert (=> b!63215 m!68991))

(declare-fun m!68999 () Bool)

(assert (=> b!63205 m!68999))

(assert (=> b!63205 m!68999))

(declare-fun m!69001 () Bool)

(assert (=> b!63205 m!69001))

(assert (=> b!63209 m!68999))

(declare-fun m!69003 () Bool)

(assert (=> b!63206 m!69003))

(assert (=> b!63210 m!68999))

(declare-fun m!69005 () Bool)

(assert (=> b!63208 m!69005))

(assert (=> b!63128 d!53250))

(declare-fun b!63297 () Bool)

(declare-fun e!34292 () Bool)

(declare-fun e!34291 () Bool)

(assert (=> b!63297 (= e!34292 (not e!34291))))

(declare-fun c!13766 () Bool)

(declare-fun lt!11694 () Bool)

(assert (=> b!63297 (= c!13766 (or lt!11694 (is-Implies!9 f!3964) (is-Not!9 f!3964)))))

(declare-fun b!63298 () Bool)

(declare-fun e!34287 () Bool)

(declare-fun lt!11688 () Bool)

(assert (=> b!63298 (= e!34287 lt!11688)))

(declare-fun b!63299 () Bool)

(declare-fun e!34286 () Formula!4)

(assert (=> b!63299 (= e!34286 (rhs!817 f!3964))))

(declare-fun b!63300 () Bool)

(declare-fun e!34294 () Bool)

(assert (=> b!63300 (= e!34294 lt!11688)))

(declare-fun b!63301 () Bool)

(declare-fun e!34275 () Bool)

(declare-fun e!34277 () Bool)

(assert (=> b!63301 (= e!34275 e!34277)))

(declare-fun res!29524 () Bool)

(assert (=> b!63301 (=> (not res!29524) (not e!34277))))

(declare-fun lt!11691 () Bool)

(assert (=> b!63301 (= res!29524 (not lt!11691))))

(declare-fun b!63302 () Bool)

(declare-fun e!34279 () Bool)

(declare-fun e!34276 () Bool)

(assert (=> b!63302 (= e!34279 e!34276)))

(declare-fun res!29536 () Bool)

(assert (=> b!63302 (=> (not res!29536) (not e!34276))))

(declare-fun lt!11684 () Bool)

(assert (=> b!63302 (= res!29536 lt!11684)))

(assert (=> b!63302 (= lt!11684 (is-Implies!9 f!3964))))

(declare-fun b!63303 () Bool)

(declare-fun e!34288 () Bool)

(declare-fun e!34290 () Bool)

(assert (=> b!63303 (= e!34288 e!34290)))

(declare-fun res!29522 () Bool)

(assert (=> b!63303 (=> (not res!29522) (not e!34290))))

(declare-fun lt!11695 () Bool)

(assert (=> b!63303 (= res!29522 lt!11695)))

(assert (=> b!63303 (= lt!11695 (is-Implies!9 f!3964))))

(declare-fun b!63304 () Bool)

(declare-fun e!34295 () Formula!4)

(assert (=> b!63304 (= e!34295 e!34286)))

(declare-fun c!13773 () Bool)

(assert (=> b!63304 (= c!13773 e!34292)))

(declare-fun res!29529 () Bool)

(assert (=> b!63304 (=> (not res!29529) (not e!34292))))

(assert (=> b!63304 (= res!29529 lt!11694)))

(assert (=> b!63304 (= lt!11694 (is-Or!9 f!3964))))

(declare-fun b!63305 () Bool)

(assert (=> b!63305 (= e!34291 lt!11688)))

(declare-fun b!63306 () Bool)

(declare-fun e!34273 () Bool)

(declare-fun lt!11690 () Bool)

(assert (=> b!63306 (= e!34273 lt!11690)))

(declare-fun b!63307 () Bool)

(declare-fun e!34280 () Bool)

(assert (=> b!63307 (= e!34280 (eval!0 e!34295))))

(declare-fun c!13778 () Bool)

(declare-fun lt!11692 () Bool)

(assert (=> b!63307 (= c!13778 lt!11692)))

(declare-fun b!63308 () Bool)

(declare-fun res!29521 () Bool)

(assert (=> b!63308 (= e!34273 res!29521)))

(assert (=> b!63308 true))

(declare-fun b!63309 () Bool)

(declare-fun e!34285 () Bool)

(declare-fun lt!11686 () Bool)

(assert (=> b!63309 (= e!34285 lt!11686)))

(declare-fun b!63310 () Bool)

(declare-fun e!34293 () Bool)

(declare-fun lt!11693 () Bool)

(assert (=> b!63310 (= e!34293 (or lt!11686 lt!11693))))

(declare-fun b!63311 () Bool)

(declare-fun e!34283 () Bool)

(declare-fun res!29526 () Bool)

(assert (=> b!63311 (= e!34283 res!29526)))

(assert (=> b!63311 true))

(declare-fun b!63312 () Bool)

(declare-fun e!34281 () Bool)

(assert (=> b!63312 (= e!34281 lt!11686)))

(declare-fun b!63313 () Bool)

(declare-fun e!34272 () Bool)

(assert (=> b!63313 (= e!34272 e!34293)))

(declare-fun c!13776 () Bool)

(declare-fun lt!11687 () Bool)

(assert (=> b!63313 (= c!13776 lt!11687)))

(assert (=> b!63313 (= lt!11693 e!34283)))

(declare-fun c!13768 () Bool)

(declare-fun e!34278 () Bool)

(assert (=> b!63313 (= c!13768 e!34278)))

(declare-fun res!29530 () Bool)

(assert (=> b!63313 (=> res!29530 e!34278)))

(assert (=> b!63313 (= res!29530 (and lt!11687 (not lt!11686)))))

(assert (=> b!63313 (= lt!11686 e!34294)))

(declare-fun c!13770 () Bool)

(assert (=> b!63313 (= c!13770 (or lt!11687 (is-Implies!9 f!3964) (is-Not!9 f!3964)))))

(assert (=> b!63313 (= lt!11687 (is-Or!9 f!3964))))

(declare-fun b!63314 () Bool)

(declare-fun res!29533 () Bool)

(assert (=> b!63314 (= e!34281 res!29533)))

(assert (=> b!63314 true))

(declare-fun b!63315 () Bool)

(declare-fun e!34282 () Bool)

(assert (=> b!63315 (= e!34282 e!34279)))

(declare-fun res!29520 () Bool)

(assert (=> b!63315 (=> (not res!29520) (not e!34279))))

(declare-fun lt!11683 () Bool)

(assert (=> b!63315 (= res!29520 (not lt!11683))))

(declare-fun b!63316 () Bool)

(declare-fun e!34289 () Bool)

(assert (=> b!63316 (= e!34289 (eval!0 (ite lt!11691 (lhs!815 f!3964) (ite (is-Or!9 f!3964) (lhs!817 f!3964) (ite (is-Implies!9 f!3964) (lhs!816 f!3964) (f!4071 f!3964))))))))

(declare-fun b!63317 () Bool)

(assert (=> b!63317 (= e!34277 e!34282)))

(declare-fun res!29535 () Bool)

(assert (=> b!63317 (=> res!29535 e!34282)))

(assert (=> b!63317 (= res!29535 (and lt!11683 (not lt!11690)))))

(assert (=> b!63317 (= lt!11690 e!34287)))

(declare-fun c!13775 () Bool)

(assert (=> b!63317 (= c!13775 (or lt!11683 (is-Implies!9 f!3964) (is-Not!9 f!3964)))))

(assert (=> b!63317 (= lt!11683 (is-Or!9 f!3964))))

(declare-fun b!63318 () Bool)

(declare-fun e!34274 () Bool)

(assert (=> b!63318 (= e!34293 e!34274)))

(declare-fun c!13774 () Bool)

(declare-fun lt!11685 () Bool)

(assert (=> b!63318 (= c!13774 lt!11685)))

(declare-fun lt!11696 () Bool)

(assert (=> b!63318 (= lt!11696 e!34285)))

(declare-fun c!13772 () Bool)

(assert (=> b!63318 (= c!13772 (or lt!11685 (is-Not!9 f!3964)))))

(assert (=> b!63318 (= lt!11685 (is-Implies!9 f!3964))))

(declare-fun b!63319 () Bool)

(assert (=> b!63319 (= e!34278 e!34288)))

(declare-fun res!29519 () Bool)

(assert (=> b!63319 (=> (not res!29519) (not e!34288))))

(assert (=> b!63319 (= res!29519 (not lt!11687))))

(declare-fun b!63320 () Bool)

(declare-fun res!29532 () Bool)

(assert (=> b!63320 (= e!34285 res!29532)))

(assert (=> b!63320 true))

(assert (=> b!63320 true))

(declare-fun b!63321 () Bool)

(assert (=> b!63321 (= e!34286 (rhs!816 f!3964))))

(declare-fun b!63322 () Bool)

(declare-fun lt!11689 () Bool)

(assert (=> b!63322 (= e!34272 (and lt!11688 lt!11689))))

(declare-fun b!63323 () Bool)

(assert (=> b!63323 (= e!34290 e!34281)))

(declare-fun c!13771 () Bool)

(assert (=> b!63323 (= c!13771 (or lt!11695 (is-Not!9 f!3964)))))

(declare-fun b!63324 () Bool)

(assert (=> b!63324 (= e!34274 (or (not lt!11696) lt!11693))))

(declare-fun b!63325 () Bool)

(declare-fun e!34284 () Bool)

(declare-fun evalLit!0 (Int) Bool)

(assert (=> b!63325 (= e!34284 (evalLit!0 (id!4783 f!3964)))))

(declare-fun b!63326 () Bool)

(declare-fun res!29527 () Bool)

(assert (=> b!63326 (= e!34287 res!29527)))

(assert (=> b!63326 true))

(declare-fun b!63327 () Bool)

(assert (=> b!63327 (= e!34283 lt!11689)))

(declare-fun b!63328 () Bool)

(declare-fun res!29523 () Bool)

(assert (=> b!63328 (= e!34294 res!29523)))

(assert (=> b!63328 true))

(declare-fun b!63329 () Bool)

(declare-fun res!29525 () Bool)

(assert (=> b!63329 (= e!34289 res!29525)))

(assert (=> b!63329 true))

(declare-fun d!53252 () Bool)

(declare-fun c!13767 () Bool)

(assert (=> d!53252 (= c!13767 lt!11691)))

(assert (=> d!53252 (= lt!11689 e!34280)))

(declare-fun c!13780 () Bool)

(assert (=> d!53252 (= c!13780 e!34275)))

(declare-fun res!29534 () Bool)

(assert (=> d!53252 (=> res!29534 e!34275)))

(assert (=> d!53252 (= res!29534 lt!11692)))

(assert (=> d!53252 (= lt!11692 (and lt!11691 lt!11688))))

(assert (=> d!53252 (= lt!11688 e!34289)))

(declare-fun c!13779 () Bool)

(assert (=> d!53252 (= c!13779 (or lt!11691 (is-Or!9 f!3964) (is-Implies!9 f!3964) (is-Not!9 f!3964)))))

(assert (=> d!53252 (= lt!11691 (is-And!9 f!3964))))

(assert (=> d!53252 (= (eval!0 f!3964) e!34272)))

(declare-fun b!63330 () Bool)

(declare-fun res!29531 () Bool)

(assert (=> b!63330 (= e!34280 res!29531)))

(assert (=> b!63330 true))

(declare-fun b!63331 () Bool)

(assert (=> b!63331 (= e!34274 e!34284)))

(declare-fun c!13769 () Bool)

(assert (=> b!63331 (= c!13769 (is-Not!9 f!3964))))

(declare-fun b!63332 () Bool)

(assert (=> b!63332 (= e!34284 (not lt!11696))))

(declare-fun b!63333 () Bool)

(declare-fun res!29528 () Bool)

(assert (=> b!63333 (= e!34291 res!29528)))

(assert (=> b!63333 true))

(declare-fun b!63334 () Bool)

(assert (=> b!63334 (= e!34295 (rhs!815 f!3964))))

(declare-fun b!63335 () Bool)

(assert (=> b!63335 (= e!34276 e!34273)))

(declare-fun c!13777 () Bool)

(assert (=> b!63335 (= c!13777 (or lt!11684 (is-Not!9 f!3964)))))

(assert (= (and d!53252 c!13779) b!63316))

(assert (= (and d!53252 (not c!13779)) b!63329))

(assert (= (and d!53252 (not res!29534)) b!63301))

(assert (= (and b!63301 res!29524) b!63317))

(assert (= (and b!63317 c!13775) b!63298))

(assert (= (and b!63317 (not c!13775)) b!63326))

(assert (= (and b!63317 (not res!29535)) b!63315))

(assert (= (and b!63315 res!29520) b!63302))

(assert (= (and b!63302 res!29536) b!63335))

(assert (= (and b!63335 c!13777) b!63306))

(assert (= (and b!63335 (not c!13777)) b!63308))

(assert (= (and b!63304 res!29529) b!63297))

(assert (= (and b!63297 c!13766) b!63305))

(assert (= (and b!63297 (not c!13766)) b!63333))

(assert (= (and b!63304 c!13773) b!63299))

(assert (= (and b!63304 (not c!13773)) b!63321))

(assert (= (and b!63307 c!13778) b!63334))

(assert (= (and b!63307 (not c!13778)) b!63304))

(assert (= (and d!53252 c!13780) b!63307))

(assert (= (and d!53252 (not c!13780)) b!63330))

(assert (= (and b!63313 c!13770) b!63300))

(assert (= (and b!63313 (not c!13770)) b!63328))

(assert (= (and b!63313 (not res!29530)) b!63319))

(assert (= (and b!63319 res!29519) b!63303))

(assert (= (and b!63303 res!29522) b!63323))

(assert (= (and b!63323 c!13771) b!63312))

(assert (= (and b!63323 (not c!13771)) b!63314))

(assert (= (and b!63313 c!13768) b!63327))

(assert (= (and b!63313 (not c!13768)) b!63311))

(assert (= (and b!63318 c!13772) b!63309))

(assert (= (and b!63318 (not c!13772)) b!63320))

(assert (= (and b!63331 c!13769) b!63332))

(assert (= (and b!63331 (not c!13769)) b!63325))

(assert (= (and b!63318 c!13774) b!63324))

(assert (= (and b!63318 (not c!13774)) b!63331))

(assert (= (and b!63313 c!13776) b!63310))

(assert (= (and b!63313 (not c!13776)) b!63318))

(assert (= (and d!53252 c!13767) b!63322))

(assert (= (and d!53252 (not c!13767)) b!63313))

(declare-fun m!69007 () Bool)

(assert (=> b!63307 m!69007))

(declare-fun m!69009 () Bool)

(assert (=> b!63316 m!69009))

(declare-fun m!69011 () Bool)

(assert (=> b!63325 m!69011))

(assert (=> b!63130 d!53252))

(declare-fun b!63336 () Bool)

(declare-fun e!34316 () Bool)

(declare-fun e!34315 () Bool)

(assert (=> b!63336 (= e!34316 (not e!34315))))

(declare-fun c!13781 () Bool)

(declare-fun lt!11708 () Bool)

(assert (=> b!63336 (= c!13781 (or lt!11708 (is-Implies!9 (simplify!1 f!3964)) (is-Not!9 (simplify!1 f!3964))))))

(declare-fun b!63337 () Bool)

(declare-fun e!34311 () Bool)

(declare-fun lt!11702 () Bool)

(assert (=> b!63337 (= e!34311 lt!11702)))

(declare-fun b!63338 () Bool)

(declare-fun e!34310 () Formula!4)

(assert (=> b!63338 (= e!34310 (rhs!817 (simplify!1 f!3964)))))

(declare-fun b!63339 () Bool)

(declare-fun e!34318 () Bool)

(assert (=> b!63339 (= e!34318 lt!11702)))

(declare-fun b!63340 () Bool)

(declare-fun e!34299 () Bool)

(declare-fun e!34301 () Bool)

(assert (=> b!63340 (= e!34299 e!34301)))

(declare-fun res!29542 () Bool)

(assert (=> b!63340 (=> (not res!29542) (not e!34301))))

(declare-fun lt!11705 () Bool)

(assert (=> b!63340 (= res!29542 (not lt!11705))))

(declare-fun b!63341 () Bool)

(declare-fun e!34303 () Bool)

(declare-fun e!34300 () Bool)

(assert (=> b!63341 (= e!34303 e!34300)))

(declare-fun res!29554 () Bool)

(assert (=> b!63341 (=> (not res!29554) (not e!34300))))

(declare-fun lt!11698 () Bool)

(assert (=> b!63341 (= res!29554 lt!11698)))

(assert (=> b!63341 (= lt!11698 (is-Implies!9 (simplify!1 f!3964)))))

(declare-fun b!63342 () Bool)

(declare-fun e!34312 () Bool)

(declare-fun e!34314 () Bool)

(assert (=> b!63342 (= e!34312 e!34314)))

(declare-fun res!29540 () Bool)

(assert (=> b!63342 (=> (not res!29540) (not e!34314))))

(declare-fun lt!11709 () Bool)

(assert (=> b!63342 (= res!29540 lt!11709)))

(assert (=> b!63342 (= lt!11709 (is-Implies!9 (simplify!1 f!3964)))))

(declare-fun b!63343 () Bool)

(declare-fun e!34319 () Formula!4)

(assert (=> b!63343 (= e!34319 e!34310)))

(declare-fun c!13788 () Bool)

(assert (=> b!63343 (= c!13788 e!34316)))

(declare-fun res!29547 () Bool)

(assert (=> b!63343 (=> (not res!29547) (not e!34316))))

(assert (=> b!63343 (= res!29547 lt!11708)))

(assert (=> b!63343 (= lt!11708 (is-Or!9 (simplify!1 f!3964)))))

(declare-fun b!63344 () Bool)

(assert (=> b!63344 (= e!34315 lt!11702)))

(declare-fun b!63345 () Bool)

(declare-fun e!34297 () Bool)

(declare-fun lt!11704 () Bool)

(assert (=> b!63345 (= e!34297 lt!11704)))

(declare-fun b!63346 () Bool)

(declare-fun e!34304 () Bool)

(assert (=> b!63346 (= e!34304 (eval!0 e!34319))))

(declare-fun c!13793 () Bool)

(declare-fun lt!11706 () Bool)

(assert (=> b!63346 (= c!13793 lt!11706)))

(declare-fun b!63347 () Bool)

(declare-fun res!29539 () Bool)

(assert (=> b!63347 (= e!34297 res!29539)))

(assert (=> b!63347 true))

(declare-fun b!63348 () Bool)

(declare-fun e!34309 () Bool)

(declare-fun lt!11700 () Bool)

(assert (=> b!63348 (= e!34309 lt!11700)))

(declare-fun b!63349 () Bool)

(declare-fun e!34317 () Bool)

(declare-fun lt!11707 () Bool)

(assert (=> b!63349 (= e!34317 (or lt!11700 lt!11707))))

(declare-fun b!63350 () Bool)

(declare-fun e!34307 () Bool)

(declare-fun res!29544 () Bool)

(assert (=> b!63350 (= e!34307 res!29544)))

(assert (=> b!63350 true))

(declare-fun b!63351 () Bool)

(declare-fun e!34305 () Bool)

(assert (=> b!63351 (= e!34305 lt!11700)))

(declare-fun b!63352 () Bool)

(declare-fun e!34296 () Bool)

(assert (=> b!63352 (= e!34296 e!34317)))

(declare-fun c!13791 () Bool)

(declare-fun lt!11701 () Bool)

(assert (=> b!63352 (= c!13791 lt!11701)))

(assert (=> b!63352 (= lt!11707 e!34307)))

(declare-fun c!13783 () Bool)

(declare-fun e!34302 () Bool)

(assert (=> b!63352 (= c!13783 e!34302)))

(declare-fun res!29548 () Bool)

(assert (=> b!63352 (=> res!29548 e!34302)))

(assert (=> b!63352 (= res!29548 (and lt!11701 (not lt!11700)))))

(assert (=> b!63352 (= lt!11700 e!34318)))

(declare-fun c!13785 () Bool)

(assert (=> b!63352 (= c!13785 (or lt!11701 (is-Implies!9 (simplify!1 f!3964)) (is-Not!9 (simplify!1 f!3964))))))

(assert (=> b!63352 (= lt!11701 (is-Or!9 (simplify!1 f!3964)))))

(declare-fun b!63353 () Bool)

(declare-fun res!29551 () Bool)

(assert (=> b!63353 (= e!34305 res!29551)))

(assert (=> b!63353 true))

(declare-fun b!63354 () Bool)

(declare-fun e!34306 () Bool)

(assert (=> b!63354 (= e!34306 e!34303)))

(declare-fun res!29538 () Bool)

(assert (=> b!63354 (=> (not res!29538) (not e!34303))))

(declare-fun lt!11697 () Bool)

(assert (=> b!63354 (= res!29538 (not lt!11697))))

(declare-fun b!63355 () Bool)

(declare-fun e!34313 () Bool)

(assert (=> b!63355 (= e!34313 (eval!0 (ite lt!11705 (lhs!815 (simplify!1 f!3964)) (ite (is-Or!9 (simplify!1 f!3964)) (lhs!817 (simplify!1 f!3964)) (ite (is-Implies!9 (simplify!1 f!3964)) (lhs!816 (simplify!1 f!3964)) (f!4071 (simplify!1 f!3964)))))))))

(declare-fun b!63356 () Bool)

(assert (=> b!63356 (= e!34301 e!34306)))

(declare-fun res!29553 () Bool)

(assert (=> b!63356 (=> res!29553 e!34306)))

(assert (=> b!63356 (= res!29553 (and lt!11697 (not lt!11704)))))

(assert (=> b!63356 (= lt!11704 e!34311)))

(declare-fun c!13790 () Bool)

(assert (=> b!63356 (= c!13790 (or lt!11697 (is-Implies!9 (simplify!1 f!3964)) (is-Not!9 (simplify!1 f!3964))))))

(assert (=> b!63356 (= lt!11697 (is-Or!9 (simplify!1 f!3964)))))

(declare-fun b!63357 () Bool)

(declare-fun e!34298 () Bool)

(assert (=> b!63357 (= e!34317 e!34298)))

(declare-fun c!13789 () Bool)

(declare-fun lt!11699 () Bool)

(assert (=> b!63357 (= c!13789 lt!11699)))

(declare-fun lt!11710 () Bool)

(assert (=> b!63357 (= lt!11710 e!34309)))

(declare-fun c!13787 () Bool)

(assert (=> b!63357 (= c!13787 (or lt!11699 (is-Not!9 (simplify!1 f!3964))))))

(assert (=> b!63357 (= lt!11699 (is-Implies!9 (simplify!1 f!3964)))))

(declare-fun b!63358 () Bool)

(assert (=> b!63358 (= e!34302 e!34312)))

(declare-fun res!29537 () Bool)

(assert (=> b!63358 (=> (not res!29537) (not e!34312))))

(assert (=> b!63358 (= res!29537 (not lt!11701))))

(declare-fun b!63359 () Bool)

(declare-fun res!29550 () Bool)

(assert (=> b!63359 (= e!34309 res!29550)))

(assert (=> b!63359 true))

(assert (=> b!63359 true))

(declare-fun b!63360 () Bool)

(assert (=> b!63360 (= e!34310 (rhs!816 (simplify!1 f!3964)))))

(declare-fun b!63361 () Bool)

(declare-fun lt!11703 () Bool)

(assert (=> b!63361 (= e!34296 (and lt!11702 lt!11703))))

(declare-fun b!63362 () Bool)

(assert (=> b!63362 (= e!34314 e!34305)))

(declare-fun c!13786 () Bool)

(assert (=> b!63362 (= c!13786 (or lt!11709 (is-Not!9 (simplify!1 f!3964))))))

(declare-fun b!63363 () Bool)

(assert (=> b!63363 (= e!34298 (or (not lt!11710) lt!11707))))

(declare-fun b!63364 () Bool)

(declare-fun e!34308 () Bool)

(assert (=> b!63364 (= e!34308 (evalLit!0 (id!4783 (simplify!1 f!3964))))))

(declare-fun b!63365 () Bool)

(declare-fun res!29545 () Bool)

(assert (=> b!63365 (= e!34311 res!29545)))

(assert (=> b!63365 true))

(declare-fun b!63366 () Bool)

(assert (=> b!63366 (= e!34307 lt!11703)))

(declare-fun b!63367 () Bool)

(declare-fun res!29541 () Bool)

(assert (=> b!63367 (= e!34318 res!29541)))

(assert (=> b!63367 true))

(declare-fun b!63368 () Bool)

(declare-fun res!29543 () Bool)

(assert (=> b!63368 (= e!34313 res!29543)))

(assert (=> b!63368 true))

(declare-fun d!53254 () Bool)

(declare-fun c!13782 () Bool)

(assert (=> d!53254 (= c!13782 lt!11705)))

(assert (=> d!53254 (= lt!11703 e!34304)))

(declare-fun c!13795 () Bool)

(assert (=> d!53254 (= c!13795 e!34299)))

(declare-fun res!29552 () Bool)

(assert (=> d!53254 (=> res!29552 e!34299)))

(assert (=> d!53254 (= res!29552 lt!11706)))

(assert (=> d!53254 (= lt!11706 (and lt!11705 lt!11702))))

(assert (=> d!53254 (= lt!11702 e!34313)))

(declare-fun c!13794 () Bool)

(assert (=> d!53254 (= c!13794 (or lt!11705 (is-Or!9 (simplify!1 f!3964)) (is-Implies!9 (simplify!1 f!3964)) (is-Not!9 (simplify!1 f!3964))))))

(assert (=> d!53254 (= lt!11705 (is-And!9 (simplify!1 f!3964)))))

(assert (=> d!53254 (= (eval!0 (simplify!1 f!3964)) e!34296)))

(declare-fun b!63369 () Bool)

(declare-fun res!29549 () Bool)

(assert (=> b!63369 (= e!34304 res!29549)))

(assert (=> b!63369 true))

(declare-fun b!63370 () Bool)

(assert (=> b!63370 (= e!34298 e!34308)))

(declare-fun c!13784 () Bool)

(assert (=> b!63370 (= c!13784 (is-Not!9 (simplify!1 f!3964)))))

(declare-fun b!63371 () Bool)

(assert (=> b!63371 (= e!34308 (not lt!11710))))

(declare-fun b!63372 () Bool)

(declare-fun res!29546 () Bool)

(assert (=> b!63372 (= e!34315 res!29546)))

(assert (=> b!63372 true))

(declare-fun b!63373 () Bool)

(assert (=> b!63373 (= e!34319 (rhs!815 (simplify!1 f!3964)))))

(declare-fun b!63374 () Bool)

(assert (=> b!63374 (= e!34300 e!34297)))

(declare-fun c!13792 () Bool)

(assert (=> b!63374 (= c!13792 (or lt!11698 (is-Not!9 (simplify!1 f!3964))))))

(assert (= (and d!53254 c!13794) b!63355))

(assert (= (and d!53254 (not c!13794)) b!63368))

(assert (= (and d!53254 (not res!29552)) b!63340))

(assert (= (and b!63340 res!29542) b!63356))

(assert (= (and b!63356 c!13790) b!63337))

(assert (= (and b!63356 (not c!13790)) b!63365))

(assert (= (and b!63356 (not res!29553)) b!63354))

(assert (= (and b!63354 res!29538) b!63341))

(assert (= (and b!63341 res!29554) b!63374))

(assert (= (and b!63374 c!13792) b!63345))

(assert (= (and b!63374 (not c!13792)) b!63347))

(assert (= (and b!63343 res!29547) b!63336))

(assert (= (and b!63336 c!13781) b!63344))

(assert (= (and b!63336 (not c!13781)) b!63372))

(assert (= (and b!63343 c!13788) b!63338))

(assert (= (and b!63343 (not c!13788)) b!63360))

(assert (= (and b!63346 c!13793) b!63373))

(assert (= (and b!63346 (not c!13793)) b!63343))

(assert (= (and d!53254 c!13795) b!63346))

(assert (= (and d!53254 (not c!13795)) b!63369))

(assert (= (and b!63352 c!13785) b!63339))

(assert (= (and b!63352 (not c!13785)) b!63367))

(assert (= (and b!63352 (not res!29548)) b!63358))

(assert (= (and b!63358 res!29537) b!63342))

(assert (= (and b!63342 res!29540) b!63362))

(assert (= (and b!63362 c!13786) b!63351))

(assert (= (and b!63362 (not c!13786)) b!63353))

(assert (= (and b!63352 c!13783) b!63366))

(assert (= (and b!63352 (not c!13783)) b!63350))

(assert (= (and b!63357 c!13787) b!63348))

(assert (= (and b!63357 (not c!13787)) b!63359))

(assert (= (and b!63370 c!13784) b!63371))

(assert (= (and b!63370 (not c!13784)) b!63364))

(assert (= (and b!63357 c!13789) b!63363))

(assert (= (and b!63357 (not c!13789)) b!63370))

(assert (= (and b!63352 c!13791) b!63349))

(assert (= (and b!63352 (not c!13791)) b!63357))

(assert (= (and d!53254 c!13782) b!63361))

(assert (= (and d!53254 (not c!13782)) b!63352))

(declare-fun m!69013 () Bool)

(assert (=> b!63346 m!69013))

(declare-fun m!69015 () Bool)

(assert (=> b!63355 m!69015))

(declare-fun m!69017 () Bool)

(assert (=> b!63364 m!69017))

(assert (=> b!63130 d!53254))

(declare-fun b!63403 () Bool)

(declare-fun e!34335 () Formula!4)

(declare-fun lt!11733 () Formula!4)

(assert (=> b!63403 (= e!34335 lt!11733)))

(declare-fun b!63404 () Bool)

(declare-fun e!34340 () Formula!4)

(declare-fun e!34337 () Formula!4)

(assert (=> b!63404 (= e!34340 e!34337)))

(declare-fun c!13815 () Bool)

(declare-fun lt!11731 () Bool)

(assert (=> b!63404 (= c!13815 lt!11731)))

(declare-fun lt!11732 () Formula!4)

(assert (=> b!63404 (= lt!11732 e!34335)))

(declare-fun c!13811 () Bool)

(assert (=> b!63404 (= c!13811 (or lt!11731 (is-Implies!9 f!3964)))))

(declare-fun lt!11735 () Formula!4)

(declare-fun e!34336 () Formula!4)

(assert (=> b!63404 (= lt!11735 e!34336)))

(declare-fun c!13816 () Bool)

(assert (=> b!63404 (= c!13816 (or lt!11731 (is-Implies!9 f!3964) (is-Not!9 f!3964)))))

(assert (=> b!63404 (= lt!11731 (is-Or!9 f!3964))))

(declare-fun b!63405 () Bool)

(declare-fun lt!11730 () Formula!4)

(assert (=> b!63405 (= e!34336 lt!11730)))

(declare-fun b!63406 () Bool)

(declare-fun e!34338 () Formula!4)

(assert (=> b!63406 (= e!34338 lt!11735)))

(declare-fun b!63407 () Bool)

(assert (=> b!63407 (= e!34340 (And!9 lt!11730 lt!11733))))

(declare-fun b!63408 () Bool)

(declare-fun e!34334 () Formula!4)

(declare-fun lt!11736 () Bool)

(assert (=> b!63408 (= e!34334 (simplify!1 (ite lt!11736 (lhs!815 f!3964) (ite (is-Or!9 f!3964) (lhs!817 f!3964) (ite (is-Implies!9 f!3964) (lhs!816 f!3964) (f!4071 f!3964))))))))

(declare-fun b!63409 () Bool)

(declare-fun res!29583 () Formula!4)

(assert (=> b!63409 (= e!34334 res!29583)))

(assert (=> b!63409 true))

(declare-fun b!63410 () Bool)

(declare-fun res!29581 () Formula!4)

(assert (=> b!63410 (= e!34338 res!29581)))

(assert (=> b!63410 true))

(assert (=> b!63410 true))

(declare-fun b!63411 () Bool)

(declare-fun e!34339 () Formula!4)

(assert (=> b!63411 (= e!34339 (simplify!1 (ite lt!11736 (rhs!815 f!3964) (ite (is-Or!9 f!3964) (rhs!817 f!3964) (rhs!816 f!3964)))))))

(declare-fun b!63412 () Bool)

(declare-fun res!29582 () Formula!4)

(assert (=> b!63412 (= e!34336 res!29582)))

(assert (=> b!63412 true))

(declare-fun b!63413 () Bool)

(assert (=> b!63413 (= e!34337 (Or!9 lt!11735 lt!11732))))

(declare-fun b!63414 () Bool)

(declare-fun res!29584 () Formula!4)

(assert (=> b!63414 (= e!34339 res!29584)))

(assert (=> b!63414 true))

(declare-fun b!63415 () Bool)

(declare-fun res!29580 () Formula!4)

(assert (=> b!63415 (= e!34335 res!29580)))

(assert (=> b!63415 true))

(declare-fun d!53256 () Bool)

(declare-fun lt!11734 () Formula!4)

(declare-fun isSimplified!1 (Formula!4) Bool)

(assert (=> d!53256 (isSimplified!1 lt!11734)))

(assert (=> d!53256 (= lt!11734 e!34340)))

(declare-fun c!13814 () Bool)

(assert (=> d!53256 (= c!13814 lt!11736)))

(assert (=> d!53256 (= lt!11733 e!34339)))

(declare-fun c!13810 () Bool)

(assert (=> d!53256 (= c!13810 (or lt!11736 (is-Or!9 f!3964) (is-Implies!9 f!3964)))))

(assert (=> d!53256 (= lt!11730 e!34334)))

(declare-fun c!13813 () Bool)

(assert (=> d!53256 (= c!13813 (or lt!11736 (is-Or!9 f!3964) (is-Implies!9 f!3964) (is-Not!9 f!3964)))))

(assert (=> d!53256 (= lt!11736 (is-And!9 f!3964))))

(assert (=> d!53256 (= (simplify!1 f!3964) lt!11734)))

(declare-fun lt!11729 () Formula!4)

(declare-fun lt!11737 () Bool)

(declare-fun b!63416 () Bool)

(assert (=> b!63416 (= e!34337 (ite lt!11737 (Or!9 (Not!9 lt!11729) lt!11732) (ite (is-Not!9 f!3964) (Not!9 lt!11729) f!3964)))))

(assert (=> b!63416 (= lt!11729 e!34338)))

(declare-fun c!13812 () Bool)

(assert (=> b!63416 (= c!13812 (or lt!11737 (is-Not!9 f!3964)))))

(assert (=> b!63416 (= lt!11737 (is-Implies!9 f!3964))))

(assert (= (and d!53256 c!13813) b!63408))

(assert (= (and d!53256 (not c!13813)) b!63409))

(assert (= (and d!53256 c!13810) b!63411))

(assert (= (and d!53256 (not c!13810)) b!63414))

(assert (= (and b!63404 c!13816) b!63405))

(assert (= (and b!63404 (not c!13816)) b!63412))

(assert (= (and b!63404 c!13811) b!63403))

(assert (= (and b!63404 (not c!13811)) b!63415))

(assert (= (and b!63416 c!13812) b!63406))

(assert (= (and b!63416 (not c!13812)) b!63410))

(assert (= (and b!63404 c!13815) b!63413))

(assert (= (and b!63404 (not c!13815)) b!63416))

(assert (= (and d!53256 c!13814) b!63407))

(assert (= (and d!53256 (not c!13814)) b!63404))

(declare-fun m!69019 () Bool)

(assert (=> b!63408 m!69019))

(declare-fun m!69021 () Bool)

(assert (=> b!63411 m!69021))

(declare-fun m!69023 () Bool)

(assert (=> d!53256 m!69023))

(assert (=> b!63130 d!53256))

(push 1)

(assert (not b!63215))

(assert (not b!63214))

(assert (not b!63184))

(assert (not b!63346))

(assert (not b!63186))

(assert (not b!63188))

(assert (not b!63205))

(assert (not b!63411))

(assert (not b!63191))

(assert (not b!63197))

(assert (not b!63355))

(assert (not b!63192))

(assert (not b!63183))

(assert (not b!63193))

(assert (not b!63176))

(assert (not b!63364))

(assert (not b!63208))

(assert (not b!63175))

(assert (not b!63307))

(assert (not b!63316))

(assert (not b!63198))

(assert (not b!63213))

(assert (not b!63187))

(assert (not b!63209))

(assert (not d!53256))

(assert (not b!63206))

(assert (not b!63210))

(assert (not b!63325))

(assert (not b!63408))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

