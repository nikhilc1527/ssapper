; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6352 () Bool)

(assert start!6352)

(declare-fun b!47228 () Bool)

(declare-fun e!24612 () Bool)

(declare-fun e!24611 () Bool)

(assert (=> b!47228 (= e!24612 e!24611)))

(declare-fun res!22185 () Bool)

(assert (=> b!47228 (=> (not res!22185) (not e!24611))))

(declare-datatypes () ((Nat!209 (Zero!193) (Succ!190 (n!1346 Nat!209)))))

(declare-fun thiss!5524 () Nat!209)

(declare-fun >!2 (Nat!209 Nat!209) Bool)

(assert (=> b!47228 (= res!22185 (>!2 thiss!5524 Zero!193))))

(declare-fun b!47229 () Bool)

(declare-fun res!22184 () Bool)

(declare-fun e!24613 () Bool)

(assert (=> b!47229 (=> (not res!22184) (not e!24613))))

(declare-fun that!1123 () Nat!209)

(declare-fun <!2 (Nat!209 Nat!209) Bool)

(assert (=> b!47229 (= res!22184 (<!2 thiss!5524 that!1123))))

(declare-fun b!47230 () Bool)

(assert (=> b!47230 (= e!24613 e!24612)))

(declare-fun res!22188 () Bool)

(assert (=> b!47230 (=> res!22188 e!24612)))

(declare-fun res!17687 () Nat!209)

(declare-fun repr!0 (Nat!209) Int)

(assert (=> b!47230 (= res!22188 (> (repr!0 res!17687) (repr!0 thiss!5524)))))

(declare-fun b!47231 () Bool)

(declare-fun res!22189 () Bool)

(assert (=> b!47231 (=> (not res!22189) (not e!24613))))

(declare-fun inlined!4634 () Nat!209)

(assert (=> b!47231 (= res!22189 (and (= inlined!4634 Zero!193) (= res!17687 inlined!4634)))))

(declare-fun b!47232 () Bool)

(assert (=> b!47232 (= e!24611 (>= (repr!0 res!17687) (repr!0 thiss!5524)))))

(declare-fun b!47233 () Bool)

(declare-fun res!22187 () Bool)

(assert (=> b!47233 (=> (not res!22187) (not e!24611))))

(assert (=> b!47233 (= res!22187 (>!2 that!1123 (Succ!190 Zero!193)))))

(declare-fun res!22186 () Bool)

(assert (=> start!6352 (=> (not res!22186) (not e!24613))))

(assert (=> start!6352 (= res!22186 (>!2 that!1123 Zero!193))))

(assert (=> start!6352 e!24613))

(assert (=> start!6352 true))

(assert (= (and start!6352 res!22186) b!47229))

(assert (= (and b!47229 res!22184) b!47231))

(assert (= (and b!47231 res!22189) b!47230))

(assert (= (and b!47230 (not res!22188)) b!47228))

(assert (= (and b!47228 res!22185) b!47233))

(assert (= (and b!47233 res!22187) b!47232))

(declare-fun m!50145 () Bool)

(assert (=> b!47233 m!50145))

(declare-fun m!50147 () Bool)

(assert (=> b!47228 m!50147))

(declare-fun m!50149 () Bool)

(assert (=> b!47232 m!50149))

(declare-fun m!50151 () Bool)

(assert (=> b!47232 m!50151))

(assert (=> b!47230 m!50149))

(assert (=> b!47230 m!50151))

(declare-fun m!50153 () Bool)

(assert (=> start!6352 m!50153))

(declare-fun m!50155 () Bool)

(assert (=> b!47229 m!50155))

(push 1)

(assert (not b!47232))

(assert (not b!47230))

(assert (not b!47229))

(assert (not b!47228))

(assert (not start!6352))

(assert (not b!47233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33182 () Bool)

(declare-fun res!22192 () Bool)

(declare-fun e!24616 () Bool)

(assert (=> d!33182 (=> (not res!22192) (not e!24616))))

(assert (=> d!33182 (= res!22192 (not (<!2 that!1123 (Succ!190 Zero!193))))))

(assert (=> d!33182 (= (>!2 that!1123 (Succ!190 Zero!193)) e!24616)))

(declare-fun b!47236 () Bool)

(assert (=> b!47236 (= e!24616 (not (= that!1123 (Succ!190 Zero!193))))))

(assert (= (and d!33182 res!22192) b!47236))

(declare-fun m!50157 () Bool)

(assert (=> d!33182 m!50157))

(assert (=> b!47233 d!33182))

(declare-fun d!33184 () Bool)

(declare-fun lt!8590 () Bool)

(assert (=> d!33184 (= lt!8590 (< (repr!0 thiss!5524) (repr!0 that!1123)))))

(declare-fun e!24619 () Bool)

(assert (=> d!33184 (= lt!8590 e!24619)))

(declare-fun c!9949 () Bool)

(assert (=> d!33184 (= c!9949 (and (is-Succ!190 thiss!5524) (is-Succ!190 that!1123)))))

(assert (=> d!33184 (= (<!2 thiss!5524 that!1123) lt!8590)))

(declare-fun b!47241 () Bool)

(assert (=> b!47241 (= e!24619 (<!2 (n!1346 thiss!5524) (n!1346 that!1123)))))

(declare-fun b!47242 () Bool)

(assert (=> b!47242 (= e!24619 (and (is-Zero!193 thiss!5524) (is-Succ!190 that!1123)))))

(assert (= (and d!33184 c!9949) b!47241))

(assert (= (and d!33184 (not c!9949)) b!47242))

(assert (=> d!33184 m!50151))

(declare-fun m!50159 () Bool)

(assert (=> d!33184 m!50159))

(declare-fun m!50161 () Bool)

(assert (=> b!47241 m!50161))

(assert (=> b!47229 d!33184))

(declare-fun d!33186 () Bool)

(declare-fun res!22193 () Bool)

(declare-fun e!24620 () Bool)

(assert (=> d!33186 (=> (not res!22193) (not e!24620))))

(assert (=> d!33186 (= res!22193 (not (<!2 thiss!5524 Zero!193)))))

(assert (=> d!33186 (= (>!2 thiss!5524 Zero!193) e!24620)))

(declare-fun b!47243 () Bool)

(assert (=> b!47243 (= e!24620 (not (= thiss!5524 Zero!193)))))

(assert (= (and d!33186 res!22193) b!47243))

(declare-fun m!50163 () Bool)

(assert (=> d!33186 m!50163))

(assert (=> b!47228 d!33186))

(declare-fun d!33188 () Bool)

(declare-fun lt!8593 () Int)

(assert (=> d!33188 (>= lt!8593 0)))

(declare-fun e!24623 () Int)

(assert (=> d!33188 (= lt!8593 e!24623)))

(declare-fun c!9952 () Bool)

(assert (=> d!33188 (= c!9952 (is-Zero!193 res!17687))))

(assert (=> d!33188 (= (repr!0 res!17687) lt!8593)))

(declare-fun b!47248 () Bool)

(assert (=> b!47248 (= e!24623 0)))

(declare-fun b!47249 () Bool)

(assert (=> b!47249 (= e!24623 (+ (repr!0 (n!1346 res!17687)) 1))))

(assert (= (and d!33188 c!9952) b!47248))

(assert (= (and d!33188 (not c!9952)) b!47249))

(declare-fun m!50165 () Bool)

(assert (=> b!47249 m!50165))

(assert (=> b!47232 d!33188))

(declare-fun d!33190 () Bool)

(declare-fun lt!8594 () Int)

(assert (=> d!33190 (>= lt!8594 0)))

(declare-fun e!24624 () Int)

(assert (=> d!33190 (= lt!8594 e!24624)))

(declare-fun c!9953 () Bool)

(assert (=> d!33190 (= c!9953 (is-Zero!193 thiss!5524))))

(assert (=> d!33190 (= (repr!0 thiss!5524) lt!8594)))

(declare-fun b!47250 () Bool)

(assert (=> b!47250 (= e!24624 0)))

(declare-fun b!47251 () Bool)

(assert (=> b!47251 (= e!24624 (+ (repr!0 (n!1346 thiss!5524)) 1))))

(assert (= (and d!33190 c!9953) b!47250))

(assert (= (and d!33190 (not c!9953)) b!47251))

(declare-fun m!50167 () Bool)

(assert (=> b!47251 m!50167))

(assert (=> b!47232 d!33190))

(declare-fun d!33192 () Bool)

(declare-fun res!22194 () Bool)

(declare-fun e!24625 () Bool)

(assert (=> d!33192 (=> (not res!22194) (not e!24625))))

(assert (=> d!33192 (= res!22194 (not (<!2 that!1123 Zero!193)))))

(assert (=> d!33192 (= (>!2 that!1123 Zero!193) e!24625)))

(declare-fun b!47252 () Bool)

(assert (=> b!47252 (= e!24625 (not (= that!1123 Zero!193)))))

(assert (= (and d!33192 res!22194) b!47252))

(declare-fun m!50169 () Bool)

(assert (=> d!33192 m!50169))

(assert (=> start!6352 d!33192))

(assert (=> b!47230 d!33188))

(assert (=> b!47230 d!33190))

(push 1)

(assert (not b!47251))

(assert (not d!33184))

(assert (not d!33182))

(assert (not d!33192))

(assert (not d!33186))

(assert (not b!47249))

(assert (not b!47241))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33194 () Bool)

(declare-fun lt!8595 () Bool)

(assert (=> d!33194 (= lt!8595 (< (repr!0 that!1123) (repr!0 Zero!193)))))

(declare-fun e!24626 () Bool)

(assert (=> d!33194 (= lt!8595 e!24626)))

(declare-fun c!9954 () Bool)

(assert (=> d!33194 (= c!9954 (and (is-Succ!190 that!1123) (is-Succ!190 Zero!193)))))

(assert (=> d!33194 (= (<!2 that!1123 Zero!193) lt!8595)))

(declare-fun b!47253 () Bool)

(assert (=> b!47253 (= e!24626 (<!2 (n!1346 that!1123) (n!1346 Zero!193)))))

(declare-fun b!47254 () Bool)

(assert (=> b!47254 (= e!24626 (and (is-Zero!193 that!1123) (is-Succ!190 Zero!193)))))

(assert (= (and d!33194 c!9954) b!47253))

(assert (= (and d!33194 (not c!9954)) b!47254))

(assert (=> d!33194 m!50159))

(declare-fun m!50171 () Bool)

(assert (=> d!33194 m!50171))

(declare-fun m!50173 () Bool)

(assert (=> b!47253 m!50173))

(assert (=> d!33192 d!33194))

(declare-fun d!33196 () Bool)

(declare-fun lt!8596 () Bool)

(assert (=> d!33196 (= lt!8596 (< (repr!0 that!1123) (repr!0 (Succ!190 Zero!193))))))

(declare-fun e!24627 () Bool)

(assert (=> d!33196 (= lt!8596 e!24627)))

(declare-fun c!9955 () Bool)

(assert (=> d!33196 (= c!9955 (and (is-Succ!190 that!1123) (is-Succ!190 (Succ!190 Zero!193))))))

(assert (=> d!33196 (= (<!2 that!1123 (Succ!190 Zero!193)) lt!8596)))

(declare-fun b!47255 () Bool)

(assert (=> b!47255 (= e!24627 (<!2 (n!1346 that!1123) (n!1346 (Succ!190 Zero!193))))))

(declare-fun b!47256 () Bool)

(assert (=> b!47256 (= e!24627 (and (is-Zero!193 that!1123) (is-Succ!190 (Succ!190 Zero!193))))))

(assert (= (and d!33196 c!9955) b!47255))

(assert (= (and d!33196 (not c!9955)) b!47256))

(assert (=> d!33196 m!50159))

(declare-fun m!50175 () Bool)

(assert (=> d!33196 m!50175))

(declare-fun m!50177 () Bool)

(assert (=> b!47255 m!50177))

(assert (=> d!33182 d!33196))

(declare-fun d!33198 () Bool)

(declare-fun lt!8597 () Int)

(assert (=> d!33198 (>= lt!8597 0)))

(declare-fun e!24628 () Int)

(assert (=> d!33198 (= lt!8597 e!24628)))

(declare-fun c!9956 () Bool)

(assert (=> d!33198 (= c!9956 (is-Zero!193 (n!1346 res!17687)))))

(assert (=> d!33198 (= (repr!0 (n!1346 res!17687)) lt!8597)))

(declare-fun b!47257 () Bool)

(assert (=> b!47257 (= e!24628 0)))

(declare-fun b!47258 () Bool)

(assert (=> b!47258 (= e!24628 (+ (repr!0 (n!1346 (n!1346 res!17687))) 1))))

(assert (= (and d!33198 c!9956) b!47257))

(assert (= (and d!33198 (not c!9956)) b!47258))

(declare-fun m!50179 () Bool)

(assert (=> b!47258 m!50179))

(assert (=> b!47249 d!33198))

(assert (=> d!33184 d!33190))

(declare-fun d!33200 () Bool)

(declare-fun lt!8598 () Int)

(assert (=> d!33200 (>= lt!8598 0)))

(declare-fun e!24629 () Int)

(assert (=> d!33200 (= lt!8598 e!24629)))

(declare-fun c!9957 () Bool)

(assert (=> d!33200 (= c!9957 (is-Zero!193 that!1123))))

(assert (=> d!33200 (= (repr!0 that!1123) lt!8598)))

(declare-fun b!47259 () Bool)

(assert (=> b!47259 (= e!24629 0)))

(declare-fun b!47260 () Bool)

(assert (=> b!47260 (= e!24629 (+ (repr!0 (n!1346 that!1123)) 1))))

(assert (= (and d!33200 c!9957) b!47259))

(assert (= (and d!33200 (not c!9957)) b!47260))

(declare-fun m!50181 () Bool)

(assert (=> b!47260 m!50181))

(assert (=> d!33184 d!33200))

(declare-fun d!33202 () Bool)

(declare-fun lt!8599 () Bool)

(assert (=> d!33202 (= lt!8599 (< (repr!0 (n!1346 thiss!5524)) (repr!0 (n!1346 that!1123))))))

(declare-fun e!24630 () Bool)

(assert (=> d!33202 (= lt!8599 e!24630)))

(declare-fun c!9958 () Bool)

(assert (=> d!33202 (= c!9958 (and (is-Succ!190 (n!1346 thiss!5524)) (is-Succ!190 (n!1346 that!1123))))))

(assert (=> d!33202 (= (<!2 (n!1346 thiss!5524) (n!1346 that!1123)) lt!8599)))

(declare-fun b!47261 () Bool)

(assert (=> b!47261 (= e!24630 (<!2 (n!1346 (n!1346 thiss!5524)) (n!1346 (n!1346 that!1123))))))

(declare-fun b!47262 () Bool)

(assert (=> b!47262 (= e!24630 (and (is-Zero!193 (n!1346 thiss!5524)) (is-Succ!190 (n!1346 that!1123))))))

(assert (= (and d!33202 c!9958) b!47261))

(assert (= (and d!33202 (not c!9958)) b!47262))

(assert (=> d!33202 m!50167))

(assert (=> d!33202 m!50181))

(declare-fun m!50183 () Bool)

(assert (=> b!47261 m!50183))

(assert (=> b!47241 d!33202))

(declare-fun d!33204 () Bool)

(declare-fun lt!8600 () Bool)

(assert (=> d!33204 (= lt!8600 (< (repr!0 thiss!5524) (repr!0 Zero!193)))))

(declare-fun e!24631 () Bool)

(assert (=> d!33204 (= lt!8600 e!24631)))

(declare-fun c!9959 () Bool)

(assert (=> d!33204 (= c!9959 (and (is-Succ!190 thiss!5524) (is-Succ!190 Zero!193)))))

(assert (=> d!33204 (= (<!2 thiss!5524 Zero!193) lt!8600)))

(declare-fun b!47263 () Bool)

(assert (=> b!47263 (= e!24631 (<!2 (n!1346 thiss!5524) (n!1346 Zero!193)))))

(declare-fun b!47264 () Bool)

(assert (=> b!47264 (= e!24631 (and (is-Zero!193 thiss!5524) (is-Succ!190 Zero!193)))))

(assert (= (and d!33204 c!9959) b!47263))

(assert (= (and d!33204 (not c!9959)) b!47264))

(assert (=> d!33204 m!50151))

(assert (=> d!33204 m!50171))

(declare-fun m!50185 () Bool)

(assert (=> b!47263 m!50185))

(assert (=> d!33186 d!33204))

(declare-fun d!33206 () Bool)

(declare-fun lt!8601 () Int)

(assert (=> d!33206 (>= lt!8601 0)))

(declare-fun e!24632 () Int)

(assert (=> d!33206 (= lt!8601 e!24632)))

(declare-fun c!9960 () Bool)

(assert (=> d!33206 (= c!9960 (is-Zero!193 (n!1346 thiss!5524)))))

(assert (=> d!33206 (= (repr!0 (n!1346 thiss!5524)) lt!8601)))

(declare-fun b!47265 () Bool)

(assert (=> b!47265 (= e!24632 0)))

(declare-fun b!47266 () Bool)

(assert (=> b!47266 (= e!24632 (+ (repr!0 (n!1346 (n!1346 thiss!5524))) 1))))

(assert (= (and d!33206 c!9960) b!47265))

(assert (= (and d!33206 (not c!9960)) b!47266))

(declare-fun m!50187 () Bool)

(assert (=> b!47266 m!50187))

(assert (=> b!47251 d!33206))

(push 1)

(assert (not b!47260))

(assert (not d!33196))

(assert (not b!47266))

(assert (not b!47255))

(assert (not d!33194))

(assert (not b!47263))

(assert (not b!47258))

(assert (not b!47261))

(assert (not b!47253))

(assert (not d!33204))

(assert (not d!33202))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

