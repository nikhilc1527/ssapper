; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9928 () Bool)

(assert start!9928)

(declare-fun res!35251 () Bool)

(declare-fun e!39013 () Bool)

(assert (=> start!9928 (=> (not res!35251) (not e!39013))))

(declare-datatypes () ((List!603 (Nil!561) (Cons!560 (head!970 Int) (tail!991 List!603)))))

(declare-fun list!735 () List!603)

(assert (=> start!9928 (= res!35251 (is-Cons!560 list!735))))

(assert (=> start!9928 e!39013))

(assert (=> start!9928 true))

(declare-fun b!72141 () Bool)

(declare-fun res!35253 () Bool)

(declare-fun e!39014 () Bool)

(assert (=> b!72141 (=> res!35253 e!39014)))

(declare-fun res!34914 () List!603)

(declare-datatypes () ((Option!508 (Some!484 (x!28618 Int)) (None!485))))

(declare-fun lastOption!1 (List!603) Option!508)

(declare-fun headOption!1 (List!603) Option!508)

(assert (=> b!72141 (= res!35253 (not (= (lastOption!1 list!735) (headOption!1 res!34914))))))

(declare-fun b!72140 () Bool)

(assert (=> b!72140 (= e!39013 e!39014)))

(declare-fun res!35252 () Bool)

(assert (=> b!72140 (=> res!35252 e!39014)))

(assert (=> b!72140 (= res!35252 (not (= (lastOption!1 res!34914) (headOption!1 list!735))))))

(declare-fun b!72139 () Bool)

(declare-fun res!35254 () Bool)

(assert (=> b!72139 (=> (not res!35254) (not e!39013))))

(declare-fun addLast!0 (List!603 Int) List!603)

(declare-fun reverse!1 (List!603) List!603)

(assert (=> b!72139 (= res!35254 (= res!34914 (addLast!0 (reverse!1 (tail!991 list!735)) (head!970 list!735))))))

(declare-fun b!72142 () Bool)

(declare-fun size!4 (List!603) Int)

(assert (=> b!72142 (= e!39014 (not (= (size!4 res!34914) (size!4 list!735))))))

(assert (= (and start!9928 res!35251) b!72139))

(assert (= (and b!72139 res!35254) b!72140))

(assert (= (and b!72140 (not res!35252)) b!72141))

(assert (= (and b!72141 (not res!35253)) b!72142))

(declare-fun m!72196 () Bool)

(assert (=> b!72141 m!72196))

(declare-fun m!72198 () Bool)

(assert (=> b!72141 m!72198))

(declare-fun m!72200 () Bool)

(assert (=> b!72140 m!72200))

(declare-fun m!72202 () Bool)

(assert (=> b!72140 m!72202))

(declare-fun m!72204 () Bool)

(assert (=> b!72139 m!72204))

(assert (=> b!72139 m!72204))

(declare-fun m!72206 () Bool)

(assert (=> b!72139 m!72206))

(declare-fun m!72208 () Bool)

(assert (=> b!72142 m!72208))

(declare-fun m!72210 () Bool)

(assert (=> b!72142 m!72210))

(push 1)

(assert (not b!72139))

(assert (not b!72141))

(assert (not b!72140))

(assert (not b!72142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!72153 () Bool)

(declare-fun e!39020 () Bool)

(declare-fun lt!15311 () List!603)

(assert (=> b!72153 (= e!39020 (= (+ (size!4 (reverse!1 (tail!991 list!735))) 1) (size!4 lt!15311)))))

(declare-fun d!54485 () Bool)

(assert (=> d!54485 e!39020))

(declare-fun res!35262 () Bool)

(assert (=> d!54485 (=> (not res!35262) (not e!39020))))

(assert (=> d!54485 (= res!35262 (is-Cons!560 lt!15311))))

(declare-fun e!39019 () List!603)

(assert (=> d!54485 (= lt!15311 e!39019)))

(declare-fun c!17337 () Bool)

(assert (=> d!54485 (= c!17337 (is-Cons!560 (reverse!1 (tail!991 list!735))))))

(assert (=> d!54485 (= (addLast!0 (reverse!1 (tail!991 list!735)) (head!970 list!735)) lt!15311)))

(declare-fun b!72154 () Bool)

(assert (=> b!72154 (= e!39019 (Cons!560 (head!970 (reverse!1 (tail!991 list!735))) (addLast!0 (tail!991 (reverse!1 (tail!991 list!735))) (head!970 list!735))))))

(declare-fun b!72155 () Bool)

(declare-fun res!35263 () Bool)

(assert (=> b!72155 (=> (not res!35263) (not e!39020))))

(declare-fun init!2 (List!603) List!603)

(assert (=> b!72155 (= res!35263 (= (init!2 lt!15311) (reverse!1 (tail!991 list!735))))))

(declare-fun b!72156 () Bool)

(assert (=> b!72156 (= e!39019 (Cons!560 (head!970 list!735) Nil!561))))

(declare-fun b!72157 () Bool)

(declare-fun res!35264 () Bool)

(assert (=> b!72157 (=> (not res!35264) (not e!39020))))

(assert (=> b!72157 (= res!35264 (= (lastOption!1 lt!15311) (Some!484 (head!970 list!735))))))

(assert (= (and d!54485 c!17337) b!72154))

(assert (= (and d!54485 (not c!17337)) b!72156))

(assert (= (and d!54485 res!35262) b!72157))

(assert (= (and b!72157 res!35264) b!72155))

(assert (= (and b!72155 res!35263) b!72153))

(assert (=> b!72153 m!72204))

(declare-fun m!72212 () Bool)

(assert (=> b!72153 m!72212))

(declare-fun m!72214 () Bool)

(assert (=> b!72153 m!72214))

(declare-fun m!72216 () Bool)

(assert (=> b!72154 m!72216))

(declare-fun m!72218 () Bool)

(assert (=> b!72155 m!72218))

(declare-fun m!72220 () Bool)

(assert (=> b!72157 m!72220))

(assert (=> b!72139 d!54485))

(declare-fun b!72167 () Bool)

(declare-fun e!39025 () List!603)

(assert (=> b!72167 (= e!39025 Nil!561)))

(declare-fun b!72166 () Bool)

(assert (=> b!72166 (= e!39025 (addLast!0 (reverse!1 (tail!991 (tail!991 list!735))) (head!970 (tail!991 list!735))))))

(declare-fun b!72168 () Bool)

(declare-fun res!35271 () Bool)

(declare-fun e!39026 () Bool)

(assert (=> b!72168 (=> (not res!35271) (not e!39026))))

(declare-fun lt!15314 () List!603)

(assert (=> b!72168 (= res!35271 (= (lastOption!1 (tail!991 list!735)) (headOption!1 lt!15314)))))

(declare-fun d!54487 () Bool)

(assert (=> d!54487 e!39026))

(declare-fun res!35270 () Bool)

(assert (=> d!54487 (=> (not res!35270) (not e!39026))))

(assert (=> d!54487 (= res!35270 (= (lastOption!1 lt!15314) (headOption!1 (tail!991 list!735))))))

(assert (=> d!54487 (= lt!15314 e!39025)))

(declare-fun c!17340 () Bool)

(assert (=> d!54487 (= c!17340 (is-Cons!560 (tail!991 list!735)))))

(assert (=> d!54487 (= (reverse!1 (tail!991 list!735)) lt!15314)))

(declare-fun b!72169 () Bool)

(assert (=> b!72169 (= e!39026 (= (size!4 lt!15314) (size!4 (tail!991 list!735))))))

(assert (= (and d!54487 c!17340) b!72166))

(assert (= (and d!54487 (not c!17340)) b!72167))

(assert (= (and d!54487 res!35270) b!72168))

(assert (= (and b!72168 res!35271) b!72169))

(declare-fun m!72222 () Bool)

(assert (=> b!72166 m!72222))

(assert (=> b!72166 m!72222))

(declare-fun m!72224 () Bool)

(assert (=> b!72166 m!72224))

(declare-fun m!72226 () Bool)

(assert (=> b!72168 m!72226))

(declare-fun m!72228 () Bool)

(assert (=> b!72168 m!72228))

(declare-fun m!72230 () Bool)

(assert (=> d!54487 m!72230))

(declare-fun m!72232 () Bool)

(assert (=> d!54487 m!72232))

(declare-fun m!72234 () Bool)

(assert (=> b!72169 m!72234))

(declare-fun m!72236 () Bool)

(assert (=> b!72169 m!72236))

(assert (=> b!72139 d!54487))

(declare-fun b!72178 () Bool)

(declare-fun e!39031 () Option!508)

(assert (=> b!72178 (= e!39031 (Some!484 (head!970 list!735)))))

(declare-fun b!72180 () Bool)

(declare-fun e!39032 () Option!508)

(assert (=> b!72180 (= e!39032 (lastOption!1 (tail!991 list!735)))))

(declare-fun b!72179 () Bool)

(assert (=> b!72179 (= e!39031 e!39032)))

(declare-fun c!17346 () Bool)

(assert (=> b!72179 (= c!17346 (is-Cons!560 list!735))))

(declare-fun b!72181 () Bool)

(assert (=> b!72181 (= e!39032 None!485)))

(declare-fun d!54489 () Bool)

(declare-fun c!17345 () Bool)

(assert (=> d!54489 (= c!17345 (and (is-Cons!560 list!735) (is-Nil!561 (tail!991 list!735))))))

(assert (=> d!54489 (= (lastOption!1 list!735) e!39031)))

(assert (= (and b!72179 c!17346) b!72180))

(assert (= (and b!72179 (not c!17346)) b!72181))

(assert (= (and d!54489 c!17345) b!72178))

(assert (= (and d!54489 (not c!17345)) b!72179))

(assert (=> b!72180 m!72226))

(assert (=> b!72141 d!54489))

(declare-fun d!54491 () Bool)

(assert (=> d!54491 (= (headOption!1 res!34914) (ite (is-Cons!560 res!34914) (Some!484 (head!970 res!34914)) None!485))))

(assert (=> b!72141 d!54491))

(declare-fun b!72182 () Bool)

(declare-fun e!39033 () Option!508)

(assert (=> b!72182 (= e!39033 (Some!484 (head!970 res!34914)))))

(declare-fun b!72184 () Bool)

(declare-fun e!39034 () Option!508)

(assert (=> b!72184 (= e!39034 (lastOption!1 (tail!991 res!34914)))))

(declare-fun b!72183 () Bool)

(assert (=> b!72183 (= e!39033 e!39034)))

(declare-fun c!17348 () Bool)

(assert (=> b!72183 (= c!17348 (is-Cons!560 res!34914))))

(declare-fun b!72185 () Bool)

(assert (=> b!72185 (= e!39034 None!485)))

(declare-fun d!54493 () Bool)

(declare-fun c!17347 () Bool)

(assert (=> d!54493 (= c!17347 (and (is-Cons!560 res!34914) (is-Nil!561 (tail!991 res!34914))))))

(assert (=> d!54493 (= (lastOption!1 res!34914) e!39033)))

(assert (= (and b!72183 c!17348) b!72184))

(assert (= (and b!72183 (not c!17348)) b!72185))

(assert (= (and d!54493 c!17347) b!72182))

(assert (= (and d!54493 (not c!17347)) b!72183))

(declare-fun m!72238 () Bool)

(assert (=> b!72184 m!72238))

(assert (=> b!72140 d!54493))

(declare-fun d!54495 () Bool)

(assert (=> d!54495 (= (headOption!1 list!735) (ite (is-Cons!560 list!735) (Some!484 (head!970 list!735)) None!485))))

(assert (=> b!72140 d!54495))

(declare-fun d!54497 () Bool)

(declare-fun lt!15317 () Int)

(assert (=> d!54497 (>= lt!15317 0)))

(declare-fun e!39037 () Int)

(assert (=> d!54497 (= lt!15317 e!39037)))

(declare-fun c!17351 () Bool)

(assert (=> d!54497 (= c!17351 (is-Nil!561 res!34914))))

(assert (=> d!54497 (= (size!4 res!34914) lt!15317)))

(declare-fun b!72190 () Bool)

(assert (=> b!72190 (= e!39037 0)))

(declare-fun b!72191 () Bool)

(assert (=> b!72191 (= e!39037 (+ 1 (size!4 (tail!991 res!34914))))))

(assert (= (and d!54497 c!17351) b!72190))

(assert (= (and d!54497 (not c!17351)) b!72191))

(declare-fun m!72240 () Bool)

(assert (=> b!72191 m!72240))

(assert (=> b!72142 d!54497))

(declare-fun d!54499 () Bool)

(declare-fun lt!15318 () Int)

(assert (=> d!54499 (>= lt!15318 0)))

(declare-fun e!39038 () Int)

(assert (=> d!54499 (= lt!15318 e!39038)))

(declare-fun c!17352 () Bool)

(assert (=> d!54499 (= c!17352 (is-Nil!561 list!735))))

(assert (=> d!54499 (= (size!4 list!735) lt!15318)))

(declare-fun b!72192 () Bool)

(assert (=> b!72192 (= e!39038 0)))

(declare-fun b!72193 () Bool)

(assert (=> b!72193 (= e!39038 (+ 1 (size!4 (tail!991 list!735))))))

(assert (= (and d!54499 c!17352) b!72192))

(assert (= (and d!54499 (not c!17352)) b!72193))

(assert (=> b!72193 m!72236))

(assert (=> b!72142 d!54499))

(push 1)

(assert (not b!72155))

(assert (not b!72180))

(assert (not b!72153))

(assert (not b!72169))

(assert (not b!72168))

(assert (not d!54487))

(assert (not b!72154))

(assert (not b!72191))

(assert (not b!72193))

(assert (not b!72157))

(assert (not b!72184))

(assert (not b!72166))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!72194 () Bool)

(declare-fun e!39039 () Option!508)

(assert (=> b!72194 (= e!39039 (Some!484 (head!970 (tail!991 list!735))))))

(declare-fun b!72196 () Bool)

(declare-fun e!39040 () Option!508)

(assert (=> b!72196 (= e!39040 (lastOption!1 (tail!991 (tail!991 list!735))))))

(declare-fun b!72195 () Bool)

(assert (=> b!72195 (= e!39039 e!39040)))

(declare-fun c!17354 () Bool)

(assert (=> b!72195 (= c!17354 (is-Cons!560 (tail!991 list!735)))))

(declare-fun b!72197 () Bool)

(assert (=> b!72197 (= e!39040 None!485)))

(declare-fun d!54501 () Bool)

(declare-fun c!17353 () Bool)

(assert (=> d!54501 (= c!17353 (and (is-Cons!560 (tail!991 list!735)) (is-Nil!561 (tail!991 (tail!991 list!735)))))))

(assert (=> d!54501 (= (lastOption!1 (tail!991 list!735)) e!39039)))

(assert (= (and b!72195 c!17354) b!72196))

(assert (= (and b!72195 (not c!17354)) b!72197))

(assert (= (and d!54501 c!17353) b!72194))

(assert (= (and d!54501 (not c!17353)) b!72195))

(declare-fun m!72242 () Bool)

(assert (=> b!72196 m!72242))

(assert (=> b!72180 d!54501))

(assert (=> b!72168 d!54501))

(declare-fun d!54503 () Bool)

(assert (=> d!54503 (= (headOption!1 lt!15314) (ite (is-Cons!560 lt!15314) (Some!484 (head!970 lt!15314)) None!485))))

(assert (=> b!72168 d!54503))

(declare-fun b!72198 () Bool)

(declare-fun e!39041 () Option!508)

(assert (=> b!72198 (= e!39041 (Some!484 (head!970 lt!15314)))))

(declare-fun b!72200 () Bool)

(declare-fun e!39042 () Option!508)

(assert (=> b!72200 (= e!39042 (lastOption!1 (tail!991 lt!15314)))))

(declare-fun b!72199 () Bool)

(assert (=> b!72199 (= e!39041 e!39042)))

(declare-fun c!17356 () Bool)

(assert (=> b!72199 (= c!17356 (is-Cons!560 lt!15314))))

(declare-fun b!72201 () Bool)

(assert (=> b!72201 (= e!39042 None!485)))

(declare-fun d!54505 () Bool)

(declare-fun c!17355 () Bool)

(assert (=> d!54505 (= c!17355 (and (is-Cons!560 lt!15314) (is-Nil!561 (tail!991 lt!15314))))))

(assert (=> d!54505 (= (lastOption!1 lt!15314) e!39041)))

(assert (= (and b!72199 c!17356) b!72200))

(assert (= (and b!72199 (not c!17356)) b!72201))

(assert (= (and d!54505 c!17355) b!72198))

(assert (= (and d!54505 (not c!17355)) b!72199))

(declare-fun m!72244 () Bool)

(assert (=> b!72200 m!72244))

(assert (=> d!54487 d!54505))

(declare-fun d!54507 () Bool)

(assert (=> d!54507 (= (headOption!1 (tail!991 list!735)) (ite (is-Cons!560 (tail!991 list!735)) (Some!484 (head!970 (tail!991 list!735))) None!485))))

(assert (=> d!54487 d!54507))

(declare-fun b!72202 () Bool)

(declare-fun e!39044 () Bool)

(declare-fun lt!15319 () List!603)

(assert (=> b!72202 (= e!39044 (= (+ (size!4 (tail!991 (reverse!1 (tail!991 list!735)))) 1) (size!4 lt!15319)))))

(declare-fun d!54509 () Bool)

(assert (=> d!54509 e!39044))

(declare-fun res!35272 () Bool)

(assert (=> d!54509 (=> (not res!35272) (not e!39044))))

(assert (=> d!54509 (= res!35272 (is-Cons!560 lt!15319))))

(declare-fun e!39043 () List!603)

(assert (=> d!54509 (= lt!15319 e!39043)))

(declare-fun c!17357 () Bool)

(assert (=> d!54509 (= c!17357 (is-Cons!560 (tail!991 (reverse!1 (tail!991 list!735)))))))

(assert (=> d!54509 (= (addLast!0 (tail!991 (reverse!1 (tail!991 list!735))) (head!970 list!735)) lt!15319)))

(declare-fun b!72203 () Bool)

(assert (=> b!72203 (= e!39043 (Cons!560 (head!970 (tail!991 (reverse!1 (tail!991 list!735)))) (addLast!0 (tail!991 (tail!991 (reverse!1 (tail!991 list!735)))) (head!970 list!735))))))

(declare-fun b!72204 () Bool)

(declare-fun res!35273 () Bool)

(assert (=> b!72204 (=> (not res!35273) (not e!39044))))

(assert (=> b!72204 (= res!35273 (= (init!2 lt!15319) (tail!991 (reverse!1 (tail!991 list!735)))))))

(declare-fun b!72205 () Bool)

(assert (=> b!72205 (= e!39043 (Cons!560 (head!970 list!735) Nil!561))))

(declare-fun b!72206 () Bool)

(declare-fun res!35274 () Bool)

(assert (=> b!72206 (=> (not res!35274) (not e!39044))))

(assert (=> b!72206 (= res!35274 (= (lastOption!1 lt!15319) (Some!484 (head!970 list!735))))))

(assert (= (and d!54509 c!17357) b!72203))

(assert (= (and d!54509 (not c!17357)) b!72205))

(assert (= (and d!54509 res!35272) b!72206))

(assert (= (and b!72206 res!35274) b!72204))

(assert (= (and b!72204 res!35273) b!72202))

(declare-fun m!72246 () Bool)

(assert (=> b!72202 m!72246))

(declare-fun m!72248 () Bool)

(assert (=> b!72202 m!72248))

(declare-fun m!72250 () Bool)

(assert (=> b!72203 m!72250))

(declare-fun m!72252 () Bool)

(assert (=> b!72204 m!72252))

(declare-fun m!72254 () Bool)

(assert (=> b!72206 m!72254))

(assert (=> b!72154 d!54509))

(declare-fun d!54511 () Bool)

(declare-fun lt!15320 () Int)

(assert (=> d!54511 (>= lt!15320 0)))

(declare-fun e!39045 () Int)

(assert (=> d!54511 (= lt!15320 e!39045)))

(declare-fun c!17358 () Bool)

(assert (=> d!54511 (= c!17358 (is-Nil!561 (tail!991 res!34914)))))

(assert (=> d!54511 (= (size!4 (tail!991 res!34914)) lt!15320)))

(declare-fun b!72207 () Bool)

(assert (=> b!72207 (= e!39045 0)))

(declare-fun b!72208 () Bool)

(assert (=> b!72208 (= e!39045 (+ 1 (size!4 (tail!991 (tail!991 res!34914)))))))

(assert (= (and d!54511 c!17358) b!72207))

(assert (= (and d!54511 (not c!17358)) b!72208))

(declare-fun m!72256 () Bool)

(assert (=> b!72208 m!72256))

(assert (=> b!72191 d!54511))

(declare-fun b!72217 () Bool)

(declare-fun e!39050 () List!603)

(assert (=> b!72217 (= e!39050 Nil!561)))

(declare-fun d!54513 () Bool)

(declare-fun c!17363 () Bool)

(assert (=> d!54513 (= c!17363 (and (is-Cons!560 lt!15311) (is-Nil!561 (tail!991 lt!15311))))))

(assert (=> d!54513 (= (init!2 lt!15311) e!39050)))

(declare-fun b!72219 () Bool)

(declare-fun e!39051 () List!603)

(assert (=> b!72219 (= e!39051 (Cons!560 (head!970 lt!15311) (init!2 (tail!991 lt!15311))))))

(declare-fun b!72220 () Bool)

(assert (=> b!72220 (= e!39051 Nil!561)))

(declare-fun b!72218 () Bool)

(assert (=> b!72218 (= e!39050 e!39051)))

(declare-fun c!17364 () Bool)

(assert (=> b!72218 (= c!17364 (is-Cons!560 lt!15311))))

(assert (= (and b!72218 c!17364) b!72219))

(assert (= (and b!72218 (not c!17364)) b!72220))

(assert (= (and d!54513 c!17363) b!72217))

(assert (= (and d!54513 (not c!17363)) b!72218))

(declare-fun m!72258 () Bool)

(assert (=> b!72219 m!72258))

(assert (=> b!72155 d!54513))

(declare-fun d!54515 () Bool)

(declare-fun lt!15321 () Int)

(assert (=> d!54515 (>= lt!15321 0)))

(declare-fun e!39052 () Int)

(assert (=> d!54515 (= lt!15321 e!39052)))

(declare-fun c!17365 () Bool)

(assert (=> d!54515 (= c!17365 (is-Nil!561 (tail!991 list!735)))))

(assert (=> d!54515 (= (size!4 (tail!991 list!735)) lt!15321)))

(declare-fun b!72221 () Bool)

(assert (=> b!72221 (= e!39052 0)))

(declare-fun b!72222 () Bool)

(assert (=> b!72222 (= e!39052 (+ 1 (size!4 (tail!991 (tail!991 list!735)))))))

(assert (= (and d!54515 c!17365) b!72221))

(assert (= (and d!54515 (not c!17365)) b!72222))

(declare-fun m!72260 () Bool)

(assert (=> b!72222 m!72260))

(assert (=> b!72193 d!54515))

(declare-fun b!72223 () Bool)

(declare-fun e!39053 () Option!508)

(assert (=> b!72223 (= e!39053 (Some!484 (head!970 (tail!991 res!34914))))))

(declare-fun b!72225 () Bool)

(declare-fun e!39054 () Option!508)

(assert (=> b!72225 (= e!39054 (lastOption!1 (tail!991 (tail!991 res!34914))))))

(declare-fun b!72224 () Bool)

(assert (=> b!72224 (= e!39053 e!39054)))

(declare-fun c!17367 () Bool)

(assert (=> b!72224 (= c!17367 (is-Cons!560 (tail!991 res!34914)))))

(declare-fun b!72226 () Bool)

(assert (=> b!72226 (= e!39054 None!485)))

(declare-fun d!54517 () Bool)

(declare-fun c!17366 () Bool)

(assert (=> d!54517 (= c!17366 (and (is-Cons!560 (tail!991 res!34914)) (is-Nil!561 (tail!991 (tail!991 res!34914)))))))

(assert (=> d!54517 (= (lastOption!1 (tail!991 res!34914)) e!39053)))

(assert (= (and b!72224 c!17367) b!72225))

(assert (= (and b!72224 (not c!17367)) b!72226))

(assert (= (and d!54517 c!17366) b!72223))

(assert (= (and d!54517 (not c!17366)) b!72224))

(declare-fun m!72262 () Bool)

(assert (=> b!72225 m!72262))

(assert (=> b!72184 d!54517))

(declare-fun d!54519 () Bool)

(declare-fun lt!15322 () Int)

(assert (=> d!54519 (>= lt!15322 0)))

(declare-fun e!39055 () Int)

(assert (=> d!54519 (= lt!15322 e!39055)))

(declare-fun c!17368 () Bool)

(assert (=> d!54519 (= c!17368 (is-Nil!561 (reverse!1 (tail!991 list!735))))))

(assert (=> d!54519 (= (size!4 (reverse!1 (tail!991 list!735))) lt!15322)))

(declare-fun b!72227 () Bool)

(assert (=> b!72227 (= e!39055 0)))

(declare-fun b!72228 () Bool)

(assert (=> b!72228 (= e!39055 (+ 1 (size!4 (tail!991 (reverse!1 (tail!991 list!735))))))))

(assert (= (and d!54519 c!17368) b!72227))

(assert (= (and d!54519 (not c!17368)) b!72228))

(assert (=> b!72228 m!72246))

(assert (=> b!72153 d!54519))

(declare-fun d!54521 () Bool)

(declare-fun lt!15323 () Int)

(assert (=> d!54521 (>= lt!15323 0)))

(declare-fun e!39056 () Int)

(assert (=> d!54521 (= lt!15323 e!39056)))

(declare-fun c!17369 () Bool)

(assert (=> d!54521 (= c!17369 (is-Nil!561 lt!15311))))

(assert (=> d!54521 (= (size!4 lt!15311) lt!15323)))

(declare-fun b!72229 () Bool)

(assert (=> b!72229 (= e!39056 0)))

(declare-fun b!72230 () Bool)

(assert (=> b!72230 (= e!39056 (+ 1 (size!4 (tail!991 lt!15311))))))

(assert (= (and d!54521 c!17369) b!72229))

(assert (= (and d!54521 (not c!17369)) b!72230))

(declare-fun m!72264 () Bool)

(assert (=> b!72230 m!72264))

(assert (=> b!72153 d!54521))

(declare-fun b!72231 () Bool)

(declare-fun e!39058 () Bool)

(declare-fun lt!15324 () List!603)

(assert (=> b!72231 (= e!39058 (= (+ (size!4 (reverse!1 (tail!991 (tail!991 list!735)))) 1) (size!4 lt!15324)))))

(declare-fun d!54523 () Bool)

(assert (=> d!54523 e!39058))

(declare-fun res!35275 () Bool)

(assert (=> d!54523 (=> (not res!35275) (not e!39058))))

(assert (=> d!54523 (= res!35275 (is-Cons!560 lt!15324))))

(declare-fun e!39057 () List!603)

(assert (=> d!54523 (= lt!15324 e!39057)))

(declare-fun c!17370 () Bool)

(assert (=> d!54523 (= c!17370 (is-Cons!560 (reverse!1 (tail!991 (tail!991 list!735)))))))

(assert (=> d!54523 (= (addLast!0 (reverse!1 (tail!991 (tail!991 list!735))) (head!970 (tail!991 list!735))) lt!15324)))

(declare-fun b!72232 () Bool)

(assert (=> b!72232 (= e!39057 (Cons!560 (head!970 (reverse!1 (tail!991 (tail!991 list!735)))) (addLast!0 (tail!991 (reverse!1 (tail!991 (tail!991 list!735)))) (head!970 (tail!991 list!735)))))))

(declare-fun b!72233 () Bool)

(declare-fun res!35276 () Bool)

(assert (=> b!72233 (=> (not res!35276) (not e!39058))))

(assert (=> b!72233 (= res!35276 (= (init!2 lt!15324) (reverse!1 (tail!991 (tail!991 list!735)))))))

(declare-fun b!72234 () Bool)

(assert (=> b!72234 (= e!39057 (Cons!560 (head!970 (tail!991 list!735)) Nil!561))))

(declare-fun b!72235 () Bool)

(declare-fun res!35277 () Bool)

(assert (=> b!72235 (=> (not res!35277) (not e!39058))))

(assert (=> b!72235 (= res!35277 (= (lastOption!1 lt!15324) (Some!484 (head!970 (tail!991 list!735)))))))

(assert (= (and d!54523 c!17370) b!72232))

(assert (= (and d!54523 (not c!17370)) b!72234))

(assert (= (and d!54523 res!35275) b!72235))

(assert (= (and b!72235 res!35277) b!72233))

(assert (= (and b!72233 res!35276) b!72231))

(assert (=> b!72231 m!72222))

(declare-fun m!72266 () Bool)

(assert (=> b!72231 m!72266))

(declare-fun m!72268 () Bool)

(assert (=> b!72231 m!72268))

(declare-fun m!72270 () Bool)

(assert (=> b!72232 m!72270))

(declare-fun m!72272 () Bool)

(assert (=> b!72233 m!72272))

(declare-fun m!72274 () Bool)

(assert (=> b!72235 m!72274))

(assert (=> b!72166 d!54523))

(declare-fun b!72237 () Bool)

(declare-fun e!39059 () List!603)

(assert (=> b!72237 (= e!39059 Nil!561)))

(declare-fun b!72236 () Bool)

(assert (=> b!72236 (= e!39059 (addLast!0 (reverse!1 (tail!991 (tail!991 (tail!991 list!735)))) (head!970 (tail!991 (tail!991 list!735)))))))

(declare-fun b!72238 () Bool)

(declare-fun res!35279 () Bool)

(declare-fun e!39060 () Bool)

(assert (=> b!72238 (=> (not res!35279) (not e!39060))))

(declare-fun lt!15325 () List!603)

(assert (=> b!72238 (= res!35279 (= (lastOption!1 (tail!991 (tail!991 list!735))) (headOption!1 lt!15325)))))

(declare-fun d!54525 () Bool)

(assert (=> d!54525 e!39060))

(declare-fun res!35278 () Bool)

(assert (=> d!54525 (=> (not res!35278) (not e!39060))))

(assert (=> d!54525 (= res!35278 (= (lastOption!1 lt!15325) (headOption!1 (tail!991 (tail!991 list!735)))))))

(assert (=> d!54525 (= lt!15325 e!39059)))

(declare-fun c!17371 () Bool)

(assert (=> d!54525 (= c!17371 (is-Cons!560 (tail!991 (tail!991 list!735))))))

(assert (=> d!54525 (= (reverse!1 (tail!991 (tail!991 list!735))) lt!15325)))

(declare-fun b!72239 () Bool)

(assert (=> b!72239 (= e!39060 (= (size!4 lt!15325) (size!4 (tail!991 (tail!991 list!735)))))))

(assert (= (and d!54525 c!17371) b!72236))

(assert (= (and d!54525 (not c!17371)) b!72237))

(assert (= (and d!54525 res!35278) b!72238))

(assert (= (and b!72238 res!35279) b!72239))

(declare-fun m!72276 () Bool)

(assert (=> b!72236 m!72276))

(assert (=> b!72236 m!72276))

(declare-fun m!72278 () Bool)

(assert (=> b!72236 m!72278))

(assert (=> b!72238 m!72242))

(declare-fun m!72280 () Bool)

(assert (=> b!72238 m!72280))

(declare-fun m!72282 () Bool)

(assert (=> d!54525 m!72282))

(declare-fun m!72284 () Bool)

(assert (=> d!54525 m!72284))

(declare-fun m!72286 () Bool)

(assert (=> b!72239 m!72286))

(assert (=> b!72239 m!72260))

(assert (=> b!72166 d!54525))

(declare-fun b!72240 () Bool)

(declare-fun e!39061 () Option!508)

(assert (=> b!72240 (= e!39061 (Some!484 (head!970 lt!15311)))))

(declare-fun b!72242 () Bool)

(declare-fun e!39062 () Option!508)

(assert (=> b!72242 (= e!39062 (lastOption!1 (tail!991 lt!15311)))))

(declare-fun b!72241 () Bool)

(assert (=> b!72241 (= e!39061 e!39062)))

(declare-fun c!17373 () Bool)

(assert (=> b!72241 (= c!17373 (is-Cons!560 lt!15311))))

(declare-fun b!72243 () Bool)

(assert (=> b!72243 (= e!39062 None!485)))

(declare-fun d!54527 () Bool)

(declare-fun c!17372 () Bool)

(assert (=> d!54527 (= c!17372 (and (is-Cons!560 lt!15311) (is-Nil!561 (tail!991 lt!15311))))))

(assert (=> d!54527 (= (lastOption!1 lt!15311) e!39061)))

(assert (= (and b!72241 c!17373) b!72242))

(assert (= (and b!72241 (not c!17373)) b!72243))

(assert (= (and d!54527 c!17372) b!72240))

(assert (= (and d!54527 (not c!17372)) b!72241))

(declare-fun m!72288 () Bool)

(assert (=> b!72242 m!72288))

(assert (=> b!72157 d!54527))

(declare-fun d!54529 () Bool)

(declare-fun lt!15326 () Int)

(assert (=> d!54529 (>= lt!15326 0)))

(declare-fun e!39063 () Int)

(assert (=> d!54529 (= lt!15326 e!39063)))

(declare-fun c!17374 () Bool)

(assert (=> d!54529 (= c!17374 (is-Nil!561 lt!15314))))

(assert (=> d!54529 (= (size!4 lt!15314) lt!15326)))

(declare-fun b!72244 () Bool)

(assert (=> b!72244 (= e!39063 0)))

(declare-fun b!72245 () Bool)

(assert (=> b!72245 (= e!39063 (+ 1 (size!4 (tail!991 lt!15314))))))

(assert (= (and d!54529 c!17374) b!72244))

(assert (= (and d!54529 (not c!17374)) b!72245))

(declare-fun m!72290 () Bool)

(assert (=> b!72245 m!72290))

(assert (=> b!72169 d!54529))

(assert (=> b!72169 d!54515))

(push 1)

(assert (not b!72232))

(assert (not b!72222))

(assert (not b!72202))

(assert (not b!72235))

(assert (not b!72208))

(assert (not b!72242))

(assert (not b!72228))

(assert (not b!72231))

(assert (not b!72230))

(assert (not b!72204))

(assert (not b!72238))

(assert (not b!72219))

(assert (not b!72225))

(assert (not b!72206))

(assert (not b!72233))

(assert (not b!72203))

(assert (not b!72196))

(assert (not b!72200))

(assert (not b!72236))

(assert (not d!54525))

(assert (not b!72239))

(assert (not b!72245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

