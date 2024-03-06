; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5084 () Bool)

(assert start!5084)

(declare-fun b!39172 () Bool)

(declare-fun e!20192 () Bool)

(declare-datatypes () ((Nat!75 (Zero!59) (Succ!56 (n!1154 Nat!75)))))

(declare-fun that!1235 () Nat!75)

(declare-fun >!2 (Nat!75 Nat!75) Bool)

(assert (=> b!39172 (= e!20192 (not (>!2 that!1235 Zero!59)))))

(declare-fun b!39171 () Bool)

(declare-fun res!18736 () Bool)

(assert (=> b!39171 (=> (not res!18736) (not e!20192))))

(assert (=> b!39171 (= res!18736 (= that!1235 (Succ!56 (Succ!56 Zero!59))))))

(declare-fun b!39169 () Bool)

(declare-fun res!18738 () Bool)

(assert (=> b!39169 (=> (not res!18738) (not e!20192))))

(declare-datatypes () ((tuple2!220 (tuple2!221 (_1!136 Nat!75) (_2!136 Nat!75)))))

(declare-fun x$78!1 () tuple2!220)

(declare-fun a!511 () Nat!75)

(declare-fun b!37361 () Nat!75)

(assert (=> b!39169 (= res!18738 (and (= a!511 (_1!136 x$78!1)) (= b!37361 (_2!136 x$78!1))))))

(declare-fun res!18735 () Bool)

(assert (=> start!5084 (=> (not res!18735) (not e!20192))))

(declare-fun n!806 () Nat!75)

(declare-fun log2_and_remainder!0 (Nat!75) tuple2!220)

(assert (=> start!5084 (= res!18735 (= x$78!1 (tuple2!221 (_1!136 (log2_and_remainder!0 (Succ!56 n!806))) (_2!136 (log2_and_remainder!0 (Succ!56 n!806))))))))

(assert (=> start!5084 e!20192))

(assert (=> start!5084 true))

(declare-fun b!39170 () Bool)

(declare-fun res!18737 () Bool)

(assert (=> b!39170 (=> (not res!18737) (not e!20192))))

(declare-fun thiss!5802 () Nat!75)

(declare-fun -!4 (Nat!75 Nat!75) Nat!75)

(assert (=> b!39170 (= res!18737 (= thiss!5802 (-!4 b!37361 (Succ!56 Zero!59))))))

(assert (= (and start!5084 res!18735) b!39169))

(assert (= (and b!39169 res!18738) b!39170))

(assert (= (and b!39170 res!18737) b!39171))

(assert (= (and b!39171 res!18736) b!39172))

(declare-fun m!40357 () Bool)

(assert (=> b!39172 m!40357))

(declare-fun m!40359 () Bool)

(assert (=> start!5084 m!40359))

(declare-fun m!40361 () Bool)

(assert (=> b!39170 m!40361))

(push 1)

(assert (not start!5084))

(assert (not b!39170))

(assert (not b!39172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!19898 () Bool)

(declare-fun c!8348 () Bool)

(declare-fun e!20198 () Bool)

(assert (=> d!19898 (= c!8348 e!20198)))

(declare-fun res!18741 () Bool)

(assert (=> d!19898 (=> (not res!18741) (not e!20198))))

(declare-fun isEven!1 (Nat!75) Bool)

(assert (=> d!19898 (= res!18741 (isEven!1 (Succ!56 n!806)))))

(declare-fun e!20197 () tuple2!220)

(assert (=> d!19898 (= (log2_and_remainder!0 (Succ!56 n!806)) e!20197)))

(declare-fun b!39182 () Bool)

(assert (=> b!39182 (= e!20198 (>!2 (Succ!56 n!806) Zero!59))))

(declare-fun b!39180 () Bool)

(declare-fun /!2 (Nat!75 Nat!75) Nat!75)

(assert (=> b!39180 (= e!20197 (tuple2!221 (Succ!56 (_1!136 (log2_and_remainder!0 (/!2 (Succ!56 n!806) (Succ!56 (Succ!56 Zero!59)))))) (_2!136 (log2_and_remainder!0 (/!2 (Succ!56 n!806) (Succ!56 (Succ!56 Zero!59)))))))))

(declare-fun b!39181 () Bool)

(assert (=> b!39181 (= e!20197 (tuple2!221 Zero!59 (Succ!56 n!806)))))

(assert (= (and d!19898 res!18741) b!39182))

(assert (= (and d!19898 c!8348) b!39180))

(assert (= (and d!19898 (not c!8348)) b!39181))

(declare-fun m!40363 () Bool)

(assert (=> d!19898 m!40363))

(declare-fun m!40365 () Bool)

(assert (=> b!39182 m!40365))

(declare-fun m!40367 () Bool)

(assert (=> b!39180 m!40367))

(assert (=> b!39180 m!40367))

(declare-fun m!40369 () Bool)

(assert (=> b!39180 m!40369))

(assert (=> start!5084 d!19898))

(declare-fun b!39193 () Bool)

(declare-fun e!20207 () Bool)

(declare-fun e!20205 () Bool)

(assert (=> b!39193 (= e!20207 e!20205)))

(declare-fun res!18749 () Bool)

(assert (=> b!39193 (=> res!18749 e!20205)))

(assert (=> b!39193 (= res!18749 (not (>!2 b!37361 Zero!59)))))

(declare-fun d!19900 () Bool)

(assert (=> d!19900 e!20207))

(declare-fun res!18750 () Bool)

(assert (=> d!19900 (=> (not res!18750) (not e!20207))))

(declare-fun lt!7575 () Nat!75)

(declare-fun repr!0 (Nat!75) Int)

(assert (=> d!19900 (= res!18750 (<= (repr!0 lt!7575) (repr!0 b!37361)))))

(declare-fun e!20206 () Nat!75)

(assert (=> d!19900 (= lt!7575 e!20206)))

(declare-fun c!8351 () Bool)

(assert (=> d!19900 (= c!8351 (and (is-Succ!56 b!37361) (is-Succ!56 (Succ!56 Zero!59))))))

(assert (=> d!19900 (= (-!4 b!37361 (Succ!56 Zero!59)) lt!7575)))

(declare-fun b!39194 () Bool)

(assert (=> b!39194 (= e!20206 b!37361)))

(declare-fun b!39195 () Bool)

(assert (=> b!39195 (= e!20206 (-!4 (n!1154 b!37361) (n!1154 (Succ!56 Zero!59))))))

(declare-fun b!39196 () Bool)

(assert (=> b!39196 (= e!20205 (< (repr!0 lt!7575) (repr!0 b!37361)))))

(declare-fun b!39197 () Bool)

(declare-fun res!18751 () Bool)

(assert (=> b!39197 (=> res!18751 e!20205)))

(assert (=> b!39197 (= res!18751 (not (>!2 (Succ!56 Zero!59) Zero!59)))))

(assert (= (and d!19900 c!8351) b!39195))

(assert (= (and d!19900 (not c!8351)) b!39194))

(assert (= (and d!19900 res!18750) b!39193))

(assert (= (and b!39193 (not res!18749)) b!39197))

(assert (= (and b!39197 (not res!18751)) b!39196))

(declare-fun m!40371 () Bool)

(assert (=> b!39197 m!40371))

(declare-fun m!40373 () Bool)

(assert (=> b!39193 m!40373))

(declare-fun m!40375 () Bool)

(assert (=> d!19900 m!40375))

(declare-fun m!40377 () Bool)

(assert (=> d!19900 m!40377))

(declare-fun m!40379 () Bool)

(assert (=> b!39195 m!40379))

(assert (=> b!39196 m!40375))

(assert (=> b!39196 m!40377))

(assert (=> b!39170 d!19900))

(declare-fun d!19902 () Bool)

(declare-fun res!18754 () Bool)

(declare-fun e!20210 () Bool)

(assert (=> d!19902 (=> (not res!18754) (not e!20210))))

(declare-fun <!2 (Nat!75 Nat!75) Bool)

(assert (=> d!19902 (= res!18754 (not (<!2 that!1235 Zero!59)))))

(assert (=> d!19902 (= (>!2 that!1235 Zero!59) e!20210)))

(declare-fun b!39200 () Bool)

(assert (=> b!39200 (= e!20210 (not (= that!1235 Zero!59)))))

(assert (= (and d!19902 res!18754) b!39200))

(declare-fun m!40381 () Bool)

(assert (=> d!19902 m!40381))

(assert (=> b!39172 d!19902))

(push 1)

(assert (not b!39197))

(assert (not b!39182))

(assert (not d!19902))

(assert (not b!39196))

(assert (not b!39195))

(assert (not d!19900))

(assert (not d!19898))

(assert (not b!39193))

(assert (not b!39180))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!19904 () Bool)

(declare-fun lt!7578 () Int)

(assert (=> d!19904 (>= lt!7578 0)))

(declare-fun e!20213 () Int)

(assert (=> d!19904 (= lt!7578 e!20213)))

(declare-fun c!8354 () Bool)

(assert (=> d!19904 (= c!8354 (is-Zero!59 lt!7575))))

(assert (=> d!19904 (= (repr!0 lt!7575) lt!7578)))

(declare-fun b!39205 () Bool)

(assert (=> b!39205 (= e!20213 0)))

(declare-fun b!39206 () Bool)

(assert (=> b!39206 (= e!20213 (+ (repr!0 (n!1154 lt!7575)) 1))))

(assert (= (and d!19904 c!8354) b!39205))

(assert (= (and d!19904 (not c!8354)) b!39206))

(declare-fun m!40383 () Bool)

(assert (=> b!39206 m!40383))

(assert (=> d!19900 d!19904))

(declare-fun d!19906 () Bool)

(declare-fun lt!7579 () Int)

(assert (=> d!19906 (>= lt!7579 0)))

(declare-fun e!20214 () Int)

(assert (=> d!19906 (= lt!7579 e!20214)))

(declare-fun c!8355 () Bool)

(assert (=> d!19906 (= c!8355 (is-Zero!59 b!37361))))

(assert (=> d!19906 (= (repr!0 b!37361) lt!7579)))

(declare-fun b!39207 () Bool)

(assert (=> b!39207 (= e!20214 0)))

(declare-fun b!39208 () Bool)

(assert (=> b!39208 (= e!20214 (+ (repr!0 (n!1154 b!37361)) 1))))

(assert (= (and d!19906 c!8355) b!39207))

(assert (= (and d!19906 (not c!8355)) b!39208))

(declare-fun m!40385 () Bool)

(assert (=> b!39208 m!40385))

(assert (=> d!19900 d!19906))

(assert (=> b!39196 d!19904))

(assert (=> b!39196 d!19906))

(declare-fun d!19908 () Bool)

(declare-fun res!18755 () Bool)

(declare-fun e!20215 () Bool)

(assert (=> d!19908 (=> (not res!18755) (not e!20215))))

(assert (=> d!19908 (= res!18755 (not (<!2 (Succ!56 n!806) Zero!59)))))

(assert (=> d!19908 (= (>!2 (Succ!56 n!806) Zero!59) e!20215)))

(declare-fun b!39209 () Bool)

(assert (=> b!39209 (= e!20215 (not (= (Succ!56 n!806) Zero!59)))))

(assert (= (and d!19908 res!18755) b!39209))

(declare-fun m!40387 () Bool)

(assert (=> d!19908 m!40387))

(assert (=> b!39182 d!19908))

(declare-fun d!19910 () Bool)

(declare-fun res!18756 () Bool)

(declare-fun e!20216 () Bool)

(assert (=> d!19910 (=> (not res!18756) (not e!20216))))

(assert (=> d!19910 (= res!18756 (not (<!2 (Succ!56 Zero!59) Zero!59)))))

(assert (=> d!19910 (= (>!2 (Succ!56 Zero!59) Zero!59) e!20216)))

(declare-fun b!39210 () Bool)

(assert (=> b!39210 (= e!20216 (not (= (Succ!56 Zero!59) Zero!59)))))

(assert (= (and d!19910 res!18756) b!39210))

(declare-fun m!40389 () Bool)

(assert (=> d!19910 m!40389))

(assert (=> b!39197 d!19910))

(declare-fun d!19912 () Bool)

(declare-fun c!8356 () Bool)

(declare-fun e!20218 () Bool)

(assert (=> d!19912 (= c!8356 e!20218)))

(declare-fun res!18757 () Bool)

(assert (=> d!19912 (=> (not res!18757) (not e!20218))))

(assert (=> d!19912 (= res!18757 (isEven!1 (/!2 (Succ!56 n!806) (Succ!56 (Succ!56 Zero!59)))))))

(declare-fun e!20217 () tuple2!220)

(assert (=> d!19912 (= (log2_and_remainder!0 (/!2 (Succ!56 n!806) (Succ!56 (Succ!56 Zero!59)))) e!20217)))

(declare-fun b!39213 () Bool)

(assert (=> b!39213 (= e!20218 (>!2 (/!2 (Succ!56 n!806) (Succ!56 (Succ!56 Zero!59))) Zero!59))))

(declare-fun b!39211 () Bool)

(assert (=> b!39211 (= e!20217 (tuple2!221 (Succ!56 (_1!136 (log2_and_remainder!0 (/!2 (/!2 (Succ!56 n!806) (Succ!56 (Succ!56 Zero!59))) (Succ!56 (Succ!56 Zero!59)))))) (_2!136 (log2_and_remainder!0 (/!2 (/!2 (Succ!56 n!806) (Succ!56 (Succ!56 Zero!59))) (Succ!56 (Succ!56 Zero!59)))))))))

(declare-fun b!39212 () Bool)

(assert (=> b!39212 (= e!20217 (tuple2!221 Zero!59 (/!2 (Succ!56 n!806) (Succ!56 (Succ!56 Zero!59)))))))

(assert (= (and d!19912 res!18757) b!39213))

(assert (= (and d!19912 c!8356) b!39211))

(assert (= (and d!19912 (not c!8356)) b!39212))

(assert (=> d!19912 m!40367))

(declare-fun m!40391 () Bool)

(assert (=> d!19912 m!40391))

(assert (=> b!39213 m!40367))

(declare-fun m!40393 () Bool)

(assert (=> b!39213 m!40393))

(assert (=> b!39211 m!40367))

(declare-fun m!40395 () Bool)

(assert (=> b!39211 m!40395))

(assert (=> b!39211 m!40395))

(declare-fun m!40397 () Bool)

(assert (=> b!39211 m!40397))

(assert (=> b!39180 d!19912))

(declare-fun b!39224 () Bool)

(declare-fun e!20225 () Nat!75)

(assert (=> b!39224 (= e!20225 (Succ!56 (/!2 (-!4 (Succ!56 n!806) (Succ!56 (Succ!56 Zero!59))) (Succ!56 (Succ!56 Zero!59)))))))

(declare-fun b!39225 () Bool)

(declare-fun res!18765 () Bool)

(declare-fun e!20227 () Bool)

(assert (=> b!39225 (=> res!18765 e!20227)))

(assert (=> b!39225 (= res!18765 (not (>!2 (Succ!56 (Succ!56 Zero!59)) (Succ!56 Zero!59))))))

(declare-fun b!39226 () Bool)

(declare-fun e!20226 () Bool)

(assert (=> b!39226 (= e!20226 e!20227)))

(declare-fun res!18766 () Bool)

(assert (=> b!39226 (=> res!18766 e!20227)))

(assert (=> b!39226 (= res!18766 (not (>!2 (Succ!56 n!806) Zero!59)))))

(declare-fun b!39227 () Bool)

(declare-fun lt!7582 () Nat!75)

(assert (=> b!39227 (= e!20227 (< (repr!0 lt!7582) (repr!0 (Succ!56 n!806))))))

(declare-fun d!19914 () Bool)

(assert (=> d!19914 e!20226))

(declare-fun res!18767 () Bool)

(assert (=> d!19914 (=> (not res!18767) (not e!20226))))

(assert (=> d!19914 (= res!18767 (<= (repr!0 lt!7582) (repr!0 (Succ!56 n!806))))))

(assert (=> d!19914 (= lt!7582 e!20225)))

(declare-fun c!8359 () Bool)

(assert (=> d!19914 (= c!8359 (<!2 (Succ!56 n!806) (Succ!56 (Succ!56 Zero!59))))))

(assert (=> d!19914 (>!2 (Succ!56 (Succ!56 Zero!59)) Zero!59)))

(assert (=> d!19914 (= (/!2 (Succ!56 n!806) (Succ!56 (Succ!56 Zero!59))) lt!7582)))

(declare-fun b!39228 () Bool)

(assert (=> b!39228 (= e!20225 Zero!59)))

(assert (= (and d!19914 c!8359) b!39228))

(assert (= (and d!19914 (not c!8359)) b!39224))

(assert (= (and d!19914 res!18767) b!39226))

(assert (= (and b!39226 (not res!18766)) b!39225))

(assert (= (and b!39225 (not res!18765)) b!39227))

(declare-fun m!40399 () Bool)

(assert (=> b!39224 m!40399))

(assert (=> b!39224 m!40399))

(declare-fun m!40401 () Bool)

(assert (=> b!39224 m!40401))

(declare-fun m!40403 () Bool)

(assert (=> b!39227 m!40403))

(declare-fun m!40405 () Bool)

(assert (=> b!39227 m!40405))

(assert (=> d!19914 m!40403))

(assert (=> d!19914 m!40405))

(declare-fun m!40407 () Bool)

(assert (=> d!19914 m!40407))

(declare-fun m!40409 () Bool)

(assert (=> d!19914 m!40409))

(declare-fun m!40411 () Bool)

(assert (=> b!39225 m!40411))

(assert (=> b!39226 m!40365))

(assert (=> b!39180 d!19914))

(declare-fun d!19916 () Bool)

(declare-fun res!18772 () Bool)

(declare-fun e!20232 () Bool)

(assert (=> d!19916 (=> res!18772 e!20232)))

(assert (=> d!19916 (= res!18772 (is-Zero!59 (Succ!56 n!806)))))

(assert (=> d!19916 (= (isEven!1 (Succ!56 n!806)) e!20232)))

(declare-fun b!39233 () Bool)

(declare-fun e!20233 () Bool)

(assert (=> b!39233 (= e!20232 e!20233)))

(declare-fun res!18773 () Bool)

(assert (=> b!39233 (=> (not res!18773) (not e!20233))))

(assert (=> b!39233 (= res!18773 (not (and (is-Succ!56 (Succ!56 n!806)) (is-Zero!59 (n!1154 (Succ!56 n!806))))))))

(declare-fun b!39234 () Bool)

(assert (=> b!39234 (= e!20233 (not (isEven!1 (n!1154 (Succ!56 n!806)))))))

(assert (= (and d!19916 (not res!18772)) b!39233))

(assert (= (and b!39233 res!18773) b!39234))

(declare-fun m!40413 () Bool)

(assert (=> b!39234 m!40413))

(assert (=> d!19898 d!19916))

(declare-fun d!19918 () Bool)

(declare-fun lt!7585 () Bool)

(assert (=> d!19918 (= lt!7585 (< (repr!0 that!1235) (repr!0 Zero!59)))))

(declare-fun e!20236 () Bool)

(assert (=> d!19918 (= lt!7585 e!20236)))

(declare-fun c!8362 () Bool)

(assert (=> d!19918 (= c!8362 (and (is-Succ!56 that!1235) (is-Succ!56 Zero!59)))))

(assert (=> d!19918 (= (<!2 that!1235 Zero!59) lt!7585)))

(declare-fun b!39239 () Bool)

(assert (=> b!39239 (= e!20236 (<!2 (n!1154 that!1235) (n!1154 Zero!59)))))

(declare-fun b!39240 () Bool)

(assert (=> b!39240 (= e!20236 (and (is-Zero!59 that!1235) (is-Succ!56 Zero!59)))))

(assert (= (and d!19918 c!8362) b!39239))

(assert (= (and d!19918 (not c!8362)) b!39240))

(declare-fun m!40415 () Bool)

(assert (=> d!19918 m!40415))

(declare-fun m!40417 () Bool)

(assert (=> d!19918 m!40417))

(declare-fun m!40419 () Bool)

(assert (=> b!39239 m!40419))

(assert (=> d!19902 d!19918))

(declare-fun d!19920 () Bool)

(declare-fun res!18774 () Bool)

(declare-fun e!20237 () Bool)

(assert (=> d!19920 (=> (not res!18774) (not e!20237))))

(assert (=> d!19920 (= res!18774 (not (<!2 b!37361 Zero!59)))))

(assert (=> d!19920 (= (>!2 b!37361 Zero!59) e!20237)))

(declare-fun b!39241 () Bool)

(assert (=> b!39241 (= e!20237 (not (= b!37361 Zero!59)))))

(assert (= (and d!19920 res!18774) b!39241))

(declare-fun m!40421 () Bool)

(assert (=> d!19920 m!40421))

(assert (=> b!39193 d!19920))

(declare-fun b!39242 () Bool)

(declare-fun e!20240 () Bool)

(declare-fun e!20238 () Bool)

(assert (=> b!39242 (= e!20240 e!20238)))

(declare-fun res!18775 () Bool)

(assert (=> b!39242 (=> res!18775 e!20238)))

(assert (=> b!39242 (= res!18775 (not (>!2 (n!1154 b!37361) Zero!59)))))

(declare-fun d!19922 () Bool)

(assert (=> d!19922 e!20240))

(declare-fun res!18776 () Bool)

(assert (=> d!19922 (=> (not res!18776) (not e!20240))))

(declare-fun lt!7586 () Nat!75)

(assert (=> d!19922 (= res!18776 (<= (repr!0 lt!7586) (repr!0 (n!1154 b!37361))))))

(declare-fun e!20239 () Nat!75)

(assert (=> d!19922 (= lt!7586 e!20239)))

(declare-fun c!8363 () Bool)

(assert (=> d!19922 (= c!8363 (and (is-Succ!56 (n!1154 b!37361)) (is-Succ!56 (n!1154 (Succ!56 Zero!59)))))))

(assert (=> d!19922 (= (-!4 (n!1154 b!37361) (n!1154 (Succ!56 Zero!59))) lt!7586)))

(declare-fun b!39243 () Bool)

(assert (=> b!39243 (= e!20239 (n!1154 b!37361))))

(declare-fun b!39244 () Bool)

(assert (=> b!39244 (= e!20239 (-!4 (n!1154 (n!1154 b!37361)) (n!1154 (n!1154 (Succ!56 Zero!59)))))))

(declare-fun b!39245 () Bool)

(assert (=> b!39245 (= e!20238 (< (repr!0 lt!7586) (repr!0 (n!1154 b!37361))))))

(declare-fun b!39246 () Bool)

(declare-fun res!18777 () Bool)

(assert (=> b!39246 (=> res!18777 e!20238)))

(assert (=> b!39246 (= res!18777 (not (>!2 (n!1154 (Succ!56 Zero!59)) Zero!59)))))

(assert (= (and d!19922 c!8363) b!39244))

(assert (= (and d!19922 (not c!8363)) b!39243))

(assert (= (and d!19922 res!18776) b!39242))

(assert (= (and b!39242 (not res!18775)) b!39246))

(assert (= (and b!39246 (not res!18777)) b!39245))

(declare-fun m!40423 () Bool)

(assert (=> b!39246 m!40423))

(declare-fun m!40425 () Bool)

(assert (=> b!39242 m!40425))

(declare-fun m!40427 () Bool)

(assert (=> d!19922 m!40427))

(assert (=> d!19922 m!40385))

(declare-fun m!40429 () Bool)

(assert (=> b!39244 m!40429))

(assert (=> b!39245 m!40427))

(assert (=> b!39245 m!40385))

(assert (=> b!39195 d!19922))

(push 1)

(assert (not b!39242))

(assert (not b!39234))

(assert (not b!39244))

(assert (not d!19918))

(assert (not d!19912))

(assert (not b!39206))

(assert (not b!39239))

(assert (not b!39245))

(assert (not d!19914))

(assert (not d!19920))

(assert (not d!19908))

(assert (not b!39213))

(assert (not b!39225))

(assert (not b!39224))

(assert (not b!39227))

(assert (not b!39208))

(assert (not d!19910))

(assert (not d!19922))

(assert (not b!39211))

(assert (not b!39226))

(assert (not b!39246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

