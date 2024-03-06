; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10364 () Bool)

(assert start!10364)

(declare-fun res!38657 () Bool)

(declare-fun e!41697 () Bool)

(assert (=> start!10364 (=> (not res!38657) (not e!41697))))

(declare-datatypes () ((Formula!99 (Implies!103 (lhs!1410 Formula!99) (rhs!1410 Formula!99)) (And!103 (lhs!1411 Formula!99) (rhs!1411 Formula!99)) (Or!103 (lhs!1412 Formula!99) (rhs!1412 Formula!99)) (Literal!97 (id!4960 (_ BitVec 32))) (Not!103 (f!4743 Formula!99)))))

(declare-fun f!4501 () Formula!99)

(declare-fun isNNF!0 (Formula!99) Bool)

(assert (=> start!10364 (= res!38657 (isNNF!0 f!4501))))

(assert (=> start!10364 e!41697))

(assert (=> start!10364 true))

(declare-fun b!77152 () Bool)

(declare-fun res!38658 () Bool)

(assert (=> b!77152 (=> (not res!38658) (not e!41697))))

(declare-fun f!4508 () Formula!99)

(assert (=> b!77152 (= res!38658 (and (not (is-And!103 f!4501)) (is-Or!103 f!4501) (= f!4508 (lhs!1412 f!4501))))))

(declare-fun b!77153 () Bool)

(assert (=> b!77153 (= e!41697 (not (isNNF!0 f!4508)))))

(assert (= (and start!10364 res!38657) b!77152))

(assert (= (and b!77152 res!38658) b!77153))

(declare-fun m!73442 () Bool)

(assert (=> start!10364 m!73442))

(declare-fun m!73444 () Bool)

(assert (=> b!77153 m!73444))

(push 1)

(assert (not b!77153))

(assert (not start!10364))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!77202 () Bool)

(declare-fun e!41738 () Bool)

(declare-fun res!38700 () Bool)

(assert (=> b!77202 (= e!41738 res!38700)))

(assert (=> b!77202 true))

(declare-fun b!77203 () Bool)

(declare-fun e!41739 () Bool)

(declare-fun res!38702 () Bool)

(assert (=> b!77203 (= e!41739 res!38702)))

(assert (=> b!77203 true))

(declare-fun b!77204 () Bool)

(declare-fun e!41729 () Bool)

(declare-fun lt!17324 () Bool)

(declare-fun lt!17320 () Bool)

(assert (=> b!77204 (= e!41729 (and lt!17324 lt!17320))))

(declare-fun b!77205 () Bool)

(declare-fun e!41730 () Bool)

(declare-fun e!41735 () Bool)

(assert (=> b!77205 (= e!41730 e!41735)))

(declare-fun res!38698 () Bool)

(assert (=> b!77205 (=> (not res!38698) (not e!41735))))

(declare-fun lt!17319 () Bool)

(assert (=> b!77205 (= res!38698 (not lt!17319))))

(declare-fun b!77206 () Bool)

(declare-fun e!41737 () Bool)

(assert (=> b!77206 (= e!41737 lt!17320)))

(declare-fun b!77207 () Bool)

(declare-fun e!41727 () Formula!99)

(assert (=> b!77207 (= e!41727 (rhs!1412 f!4508))))

(declare-fun lt!17316 () Bool)

(declare-fun lt!17317 () Bool)

(declare-fun b!77208 () Bool)

(assert (=> b!77208 (= e!41735 (or (and lt!17316 lt!17317) (and (not lt!17316) (is-Implies!103 f!4508) lt!17317)))))

(assert (=> b!77208 (= lt!17317 e!41739)))

(declare-fun c!19293 () Bool)

(assert (=> b!77208 (= c!19293 (or lt!17316 (is-Implies!103 f!4508)))))

(assert (=> b!77208 (= lt!17316 (is-Or!103 f!4508))))

(declare-fun b!77209 () Bool)

(declare-fun e!41733 () Bool)

(assert (=> b!77209 (= e!41733 lt!17324)))

(declare-fun b!77210 () Bool)

(declare-fun e!41726 () Bool)

(declare-fun res!38701 () Bool)

(assert (=> b!77210 (= e!41726 res!38701)))

(assert (=> b!77210 true))

(declare-fun b!77211 () Bool)

(assert (=> b!77211 (= e!41738 (isNNF!0 (ite lt!17319 (lhs!1411 f!4508) (ite (is-Or!103 f!4508) (lhs!1412 f!4508) (lhs!1410 f!4508)))))))

(declare-fun b!77212 () Bool)

(declare-fun e!41736 () Bool)

(assert (=> b!77212 (= e!41736 lt!17324)))

(declare-fun b!77213 () Bool)

(declare-fun e!41728 () Bool)

(assert (=> b!77213 (= e!41728 e!41737)))

(declare-fun lt!17322 () Bool)

(declare-fun c!19288 () Bool)

(declare-fun lt!17321 () Bool)

(assert (=> b!77213 (= c!19288 (or (and lt!17322 lt!17321) (and (not lt!17322) (is-Implies!103 f!4508) lt!17321)))))

(declare-fun d!54945 () Bool)

(declare-fun c!19289 () Bool)

(assert (=> d!54945 (= c!19289 lt!17319)))

(assert (=> d!54945 (= lt!17320 e!41726)))

(declare-fun c!19290 () Bool)

(assert (=> d!54945 (= c!19290 e!41730)))

(declare-fun res!38694 () Bool)

(assert (=> d!54945 (=> res!38694 e!41730)))

(declare-fun lt!17323 () Bool)

(assert (=> d!54945 (= res!38694 lt!17323)))

(assert (=> d!54945 (= lt!17323 (and lt!17319 lt!17324))))

(assert (=> d!54945 (= lt!17324 e!41738)))

(declare-fun c!19291 () Bool)

(assert (=> d!54945 (= c!19291 (or lt!17319 (is-Or!103 f!4508) (is-Implies!103 f!4508)))))

(assert (=> d!54945 (= lt!17319 (is-And!103 f!4508))))

(assert (=> d!54945 (= (isNNF!0 f!4508) e!41729)))

(declare-fun b!77214 () Bool)

(assert (=> b!77214 (= e!41727 (rhs!1410 f!4508))))

(declare-fun b!77215 () Bool)

(declare-fun e!41731 () Formula!99)

(assert (=> b!77215 (= e!41726 (isNNF!0 e!41731))))

(declare-fun c!19285 () Bool)

(assert (=> b!77215 (= c!19285 lt!17323)))

(declare-fun b!77216 () Bool)

(declare-fun res!38696 () Bool)

(assert (=> b!77216 (= e!41733 res!38696)))

(assert (=> b!77216 true))

(declare-fun b!77217 () Bool)

(declare-fun e!41732 () Bool)

(assert (=> b!77217 (= e!41729 e!41732)))

(declare-fun c!19286 () Bool)

(assert (=> b!77217 (= c!19286 (or lt!17322 (is-Implies!103 f!4508)))))

(assert (=> b!77217 (= lt!17321 e!41736)))

(declare-fun c!19284 () Bool)

(assert (=> b!77217 (= c!19284 (or lt!17322 (is-Implies!103 f!4508)))))

(assert (=> b!77217 (= lt!17322 (is-Or!103 f!4508))))

(declare-fun b!77218 () Bool)

(declare-fun res!38695 () Bool)

(assert (=> b!77218 (= e!41736 res!38695)))

(assert (=> b!77218 true))

(declare-fun b!77219 () Bool)

(assert (=> b!77219 (= e!41732 (or (and (is-Not!103 f!4508) (is-Literal!97 (f!4743 f!4508))) (not (is-Not!103 f!4508))))))

(declare-fun b!77220 () Bool)

(assert (=> b!77220 (= e!41731 (rhs!1411 f!4508))))

(declare-fun b!77221 () Bool)

(declare-fun e!41734 () Bool)

(assert (=> b!77221 (= e!41734 e!41733)))

(declare-fun c!19292 () Bool)

(declare-fun lt!17318 () Bool)

(assert (=> b!77221 (= c!19292 (or lt!17318 (is-Implies!103 f!4508)))))

(declare-fun b!77222 () Bool)

(assert (=> b!77222 (= e!41731 e!41727)))

(declare-fun c!19287 () Bool)

(assert (=> b!77222 (= c!19287 e!41734)))

(declare-fun res!38697 () Bool)

(assert (=> b!77222 (=> (not res!38697) (not e!41734))))

(assert (=> b!77222 (= res!38697 lt!17318)))

(assert (=> b!77222 (= lt!17318 (is-Or!103 f!4508))))

(declare-fun b!77223 () Bool)

(assert (=> b!77223 (= e!41739 lt!17324)))

(declare-fun b!77224 () Bool)

(assert (=> b!77224 (= e!41732 e!41728)))

(declare-fun res!38693 () Bool)

(assert (=> b!77224 (=> (not res!38693) (not e!41728))))

(assert (=> b!77224 (= res!38693 lt!17321)))

(declare-fun b!77225 () Bool)

(declare-fun res!38699 () Bool)

(assert (=> b!77225 (= e!41737 res!38699)))

(assert (=> b!77225 true))

(assert (=> b!77225 true))

(assert (= (and d!54945 c!19291) b!77211))

(assert (= (and d!54945 (not c!19291)) b!77202))

(assert (= (and d!54945 (not res!38694)) b!77205))

(assert (= (and b!77205 res!38698) b!77208))

(assert (= (and b!77208 c!19293) b!77223))

(assert (= (and b!77208 (not c!19293)) b!77203))

(assert (= (and b!77222 res!38697) b!77221))

(assert (= (and b!77221 c!19292) b!77209))

(assert (= (and b!77221 (not c!19292)) b!77216))

(assert (= (and b!77222 c!19287) b!77207))

(assert (= (and b!77222 (not c!19287)) b!77214))

(assert (= (and b!77215 c!19285) b!77220))

(assert (= (and b!77215 (not c!19285)) b!77222))

(assert (= (and d!54945 c!19290) b!77215))

(assert (= (and d!54945 (not c!19290)) b!77210))

(assert (= (and b!77217 c!19284) b!77212))

(assert (= (and b!77217 (not c!19284)) b!77218))

(assert (= (and b!77224 res!38693) b!77213))

(assert (= (and b!77213 c!19288) b!77206))

(assert (= (and b!77213 (not c!19288)) b!77225))

(assert (= (and b!77217 c!19286) b!77224))

(assert (= (and b!77217 (not c!19286)) b!77219))

(assert (= (and d!54945 c!19289) b!77204))

(assert (= (and d!54945 (not c!19289)) b!77217))

(declare-fun m!73446 () Bool)

(assert (=> b!77211 m!73446))

(declare-fun m!73448 () Bool)

(assert (=> b!77215 m!73448))

(assert (=> b!77153 d!54945))

(declare-fun b!77226 () Bool)

(declare-fun e!41752 () Bool)

(declare-fun res!38710 () Bool)

(assert (=> b!77226 (= e!41752 res!38710)))

(assert (=> b!77226 true))

(declare-fun b!77227 () Bool)

(declare-fun e!41753 () Bool)

(declare-fun res!38712 () Bool)

(assert (=> b!77227 (= e!41753 res!38712)))

(assert (=> b!77227 true))

(declare-fun b!77228 () Bool)

(declare-fun e!41743 () Bool)

(declare-fun lt!17333 () Bool)

(declare-fun lt!17329 () Bool)

(assert (=> b!77228 (= e!41743 (and lt!17333 lt!17329))))

(declare-fun b!77229 () Bool)

(declare-fun e!41744 () Bool)

(declare-fun e!41749 () Bool)

(assert (=> b!77229 (= e!41744 e!41749)))

(declare-fun res!38708 () Bool)

(assert (=> b!77229 (=> (not res!38708) (not e!41749))))

(declare-fun lt!17328 () Bool)

(assert (=> b!77229 (= res!38708 (not lt!17328))))

(declare-fun b!77230 () Bool)

(declare-fun e!41751 () Bool)

(assert (=> b!77230 (= e!41751 lt!17329)))

(declare-fun b!77231 () Bool)

(declare-fun e!41741 () Formula!99)

(assert (=> b!77231 (= e!41741 (rhs!1412 f!4501))))

(declare-fun lt!17326 () Bool)

(declare-fun b!77232 () Bool)

(declare-fun lt!17325 () Bool)

(assert (=> b!77232 (= e!41749 (or (and lt!17325 lt!17326) (and (not lt!17325) (is-Implies!103 f!4501) lt!17326)))))

(assert (=> b!77232 (= lt!17326 e!41753)))

(declare-fun c!19303 () Bool)

(assert (=> b!77232 (= c!19303 (or lt!17325 (is-Implies!103 f!4501)))))

(assert (=> b!77232 (= lt!17325 (is-Or!103 f!4501))))

(declare-fun b!77233 () Bool)

(declare-fun e!41747 () Bool)

(assert (=> b!77233 (= e!41747 lt!17333)))

(declare-fun b!77234 () Bool)

(declare-fun e!41740 () Bool)

(declare-fun res!38711 () Bool)

(assert (=> b!77234 (= e!41740 res!38711)))

(assert (=> b!77234 true))

(declare-fun b!77235 () Bool)

(assert (=> b!77235 (= e!41752 (isNNF!0 (ite lt!17328 (lhs!1411 f!4501) (ite (is-Or!103 f!4501) (lhs!1412 f!4501) (lhs!1410 f!4501)))))))

(declare-fun b!77236 () Bool)

(declare-fun e!41750 () Bool)

(assert (=> b!77236 (= e!41750 lt!17333)))

(declare-fun b!77237 () Bool)

(declare-fun e!41742 () Bool)

(assert (=> b!77237 (= e!41742 e!41751)))

(declare-fun lt!17331 () Bool)

(declare-fun lt!17330 () Bool)

(declare-fun c!19298 () Bool)

(assert (=> b!77237 (= c!19298 (or (and lt!17331 lt!17330) (and (not lt!17331) (is-Implies!103 f!4501) lt!17330)))))

(declare-fun d!54947 () Bool)

(declare-fun c!19299 () Bool)

(assert (=> d!54947 (= c!19299 lt!17328)))

(assert (=> d!54947 (= lt!17329 e!41740)))

(declare-fun c!19300 () Bool)

(assert (=> d!54947 (= c!19300 e!41744)))

(declare-fun res!38704 () Bool)

(assert (=> d!54947 (=> res!38704 e!41744)))

(declare-fun lt!17332 () Bool)

(assert (=> d!54947 (= res!38704 lt!17332)))

(assert (=> d!54947 (= lt!17332 (and lt!17328 lt!17333))))

(assert (=> d!54947 (= lt!17333 e!41752)))

(declare-fun c!19301 () Bool)

(assert (=> d!54947 (= c!19301 (or lt!17328 (is-Or!103 f!4501) (is-Implies!103 f!4501)))))

(assert (=> d!54947 (= lt!17328 (is-And!103 f!4501))))

(assert (=> d!54947 (= (isNNF!0 f!4501) e!41743)))

(declare-fun b!77238 () Bool)

(assert (=> b!77238 (= e!41741 (rhs!1410 f!4501))))

(declare-fun b!77239 () Bool)

(declare-fun e!41745 () Formula!99)

(assert (=> b!77239 (= e!41740 (isNNF!0 e!41745))))

(declare-fun c!19295 () Bool)

(assert (=> b!77239 (= c!19295 lt!17332)))

(declare-fun b!77240 () Bool)

(declare-fun res!38706 () Bool)

(assert (=> b!77240 (= e!41747 res!38706)))

(assert (=> b!77240 true))

(declare-fun b!77241 () Bool)

(declare-fun e!41746 () Bool)

(assert (=> b!77241 (= e!41743 e!41746)))

(declare-fun c!19296 () Bool)

(assert (=> b!77241 (= c!19296 (or lt!17331 (is-Implies!103 f!4501)))))

(assert (=> b!77241 (= lt!17330 e!41750)))

(declare-fun c!19294 () Bool)

(assert (=> b!77241 (= c!19294 (or lt!17331 (is-Implies!103 f!4501)))))

(assert (=> b!77241 (= lt!17331 (is-Or!103 f!4501))))

(declare-fun b!77242 () Bool)

(declare-fun res!38705 () Bool)

(assert (=> b!77242 (= e!41750 res!38705)))

(assert (=> b!77242 true))

(declare-fun b!77243 () Bool)

(assert (=> b!77243 (= e!41746 (or (and (is-Not!103 f!4501) (is-Literal!97 (f!4743 f!4501))) (not (is-Not!103 f!4501))))))

(declare-fun b!77244 () Bool)

(assert (=> b!77244 (= e!41745 (rhs!1411 f!4501))))

(declare-fun b!77245 () Bool)

(declare-fun e!41748 () Bool)

(assert (=> b!77245 (= e!41748 e!41747)))

(declare-fun c!19302 () Bool)

(declare-fun lt!17327 () Bool)

(assert (=> b!77245 (= c!19302 (or lt!17327 (is-Implies!103 f!4501)))))

(declare-fun b!77246 () Bool)

(assert (=> b!77246 (= e!41745 e!41741)))

(declare-fun c!19297 () Bool)

(assert (=> b!77246 (= c!19297 e!41748)))

(declare-fun res!38707 () Bool)

(assert (=> b!77246 (=> (not res!38707) (not e!41748))))

(assert (=> b!77246 (= res!38707 lt!17327)))

(assert (=> b!77246 (= lt!17327 (is-Or!103 f!4501))))

(declare-fun b!77247 () Bool)

(assert (=> b!77247 (= e!41753 lt!17333)))

(declare-fun b!77248 () Bool)

(assert (=> b!77248 (= e!41746 e!41742)))

(declare-fun res!38703 () Bool)

(assert (=> b!77248 (=> (not res!38703) (not e!41742))))

(assert (=> b!77248 (= res!38703 lt!17330)))

(declare-fun b!77249 () Bool)

(declare-fun res!38709 () Bool)

(assert (=> b!77249 (= e!41751 res!38709)))

(assert (=> b!77249 true))

(assert (=> b!77249 true))

(assert (= (and d!54947 c!19301) b!77235))

(assert (= (and d!54947 (not c!19301)) b!77226))

(assert (= (and d!54947 (not res!38704)) b!77229))

(assert (= (and b!77229 res!38708) b!77232))

(assert (= (and b!77232 c!19303) b!77247))

(assert (= (and b!77232 (not c!19303)) b!77227))

(assert (= (and b!77246 res!38707) b!77245))

(assert (= (and b!77245 c!19302) b!77233))

(assert (= (and b!77245 (not c!19302)) b!77240))

(assert (= (and b!77246 c!19297) b!77231))

(assert (= (and b!77246 (not c!19297)) b!77238))

(assert (= (and b!77239 c!19295) b!77244))

(assert (= (and b!77239 (not c!19295)) b!77246))

(assert (= (and d!54947 c!19300) b!77239))

(assert (= (and d!54947 (not c!19300)) b!77234))

(assert (= (and b!77241 c!19294) b!77236))

(assert (= (and b!77241 (not c!19294)) b!77242))

(assert (= (and b!77248 res!38703) b!77237))

(assert (= (and b!77237 c!19298) b!77230))

(assert (= (and b!77237 (not c!19298)) b!77249))

(assert (= (and b!77241 c!19296) b!77248))

(assert (= (and b!77241 (not c!19296)) b!77243))

(assert (= (and d!54947 c!19299) b!77228))

(assert (= (and d!54947 (not c!19299)) b!77241))

(declare-fun m!73450 () Bool)

(assert (=> b!77235 m!73450))

(declare-fun m!73452 () Bool)

(assert (=> b!77239 m!73452))

(assert (=> start!10364 d!54947))

(push 1)

(assert (not b!77211))

(assert (not b!77235))

(assert (not b!77239))

(assert (not b!77215))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

