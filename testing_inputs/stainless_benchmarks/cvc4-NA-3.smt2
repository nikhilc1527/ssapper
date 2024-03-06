; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12 () Bool)

(assert start!12)

(declare-fun res!330 () Bool)

(declare-fun e!74 () Bool)

(assert (=> start!12 (=> (not res!330) (not e!74))))

(declare-datatypes () ((A!407 (Cons!34 (head!195 Int) (tail!207 A!407)) (Nil!35 (i!194 Int)))))

(declare-fun a!268 () A!407)

(assert (=> start!12 (= res!330 (is-Cons!34 a!268))))

(assert (=> start!12 e!74))

(declare-fun e!75 () Bool)

(declare-fun inv!55 (A!407) Bool)

(assert (=> start!12 (and (inv!55 a!268) e!75)))

(assert (=> start!12 true))

(declare-fun b!205 () Bool)

(declare-fun res!331 () Bool)

(assert (=> b!205 (=> (not res!331) (not e!74))))

(declare-fun i!185 () Int)

(declare-fun sum!3 (A!407) Int)

(assert (=> b!205 (= res!331 (= i!185 (+ (head!195 a!268) (sum!3 (tail!207 a!268)))))))

(declare-fun b!206 () Bool)

(assert (=> b!206 (= e!74 (< i!185 0))))

(declare-fun b!207 () Bool)

(declare-fun tp!11 () Bool)

(assert (=> b!207 (= e!75 (and (inv!55 (tail!207 a!268)) tp!11))))

(assert (= (and start!12 res!330) b!205))

(assert (= (and b!205 res!331) b!206))

(assert (= (and start!12 (is-Cons!34 a!268)) b!207))

(declare-fun m!65 () Bool)

(assert (=> start!12 m!65))

(declare-fun m!67 () Bool)

(assert (=> b!205 m!67))

(declare-fun m!69 () Bool)

(assert (=> b!207 m!69))

(push 1)

(assert (not b!207))

(assert (not start!12))

(assert (not b!205))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43 () Bool)

(declare-fun inv!15 (A!407) Bool)

(assert (=> d!43 (= (inv!55 (tail!207 a!268)) (inv!15 (tail!207 a!268)))))

(declare-fun bs!4 () Bool)

(assert (= bs!4 d!43))

(declare-fun m!71 () Bool)

(assert (=> bs!4 m!71))

(assert (=> b!207 d!43))

(declare-fun d!45 () Bool)

(assert (=> d!45 (= (inv!55 a!268) (inv!15 a!268))))

(declare-fun bs!5 () Bool)

(assert (= bs!5 d!45))

(declare-fun m!73 () Bool)

(assert (=> bs!5 m!73))

(assert (=> start!12 d!45))

(declare-fun d!47 () Bool)

(declare-fun lt!2 () Int)

(assert (=> d!47 (>= lt!2 0)))

(declare-fun e!78 () Int)

(assert (=> d!47 (= lt!2 e!78)))

(declare-fun c!84 () Bool)

(assert (=> d!47 (= c!84 (is-Cons!34 (tail!207 a!268)))))

(assert (=> d!47 (= (sum!3 (tail!207 a!268)) lt!2)))

(declare-fun b!212 () Bool)

(assert (=> b!212 (= e!78 (+ (head!195 (tail!207 a!268)) (sum!3 (tail!207 (tail!207 a!268)))))))

(declare-fun b!213 () Bool)

(assert (=> b!213 (= e!78 (i!194 (tail!207 a!268)))))

(assert (= (and d!47 c!84) b!212))

(assert (= (and d!47 (not c!84)) b!213))

(declare-fun m!75 () Bool)

(assert (=> b!212 m!75))

(assert (=> b!205 d!47))

(declare-fun b!218 () Bool)

(declare-fun e!81 () Bool)

(declare-fun tp!14 () Bool)

(assert (=> b!218 (= e!81 (and (inv!55 (tail!207 (tail!207 a!268))) tp!14))))

(assert (=> b!207 (= tp!11 (and (inv!55 (tail!207 a!268)) e!81))))

(assert (= (and b!207 (is-Cons!34 (tail!207 a!268))) b!218))

(declare-fun m!77 () Bool)

(assert (=> b!218 m!77))

(assert (=> b!207 m!69))

(push 1)

(assert (not b!218))

(assert (not b!207))

(assert (not d!43))

(assert (not b!212))

(assert (not d!45))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!207 d!43))

(declare-fun d!49 () Bool)

(declare-fun c!87 () Bool)

(assert (=> d!49 (= c!87 (is-Nil!35 (tail!207 a!268)))))

(declare-fun e!84 () Bool)

(assert (=> d!49 (= (inv!15 (tail!207 a!268)) e!84)))

(declare-fun b!223 () Bool)

(declare-fun inv!16 (A!407) Bool)

(assert (=> b!223 (= e!84 (inv!16 (tail!207 a!268)))))

(declare-fun b!224 () Bool)

(declare-fun B$inv!0 (A!407) Bool)

(assert (=> b!224 (= e!84 (B$inv!0 (tail!207 a!268)))))

(assert (= (and d!49 c!87) b!223))

(assert (= (and d!49 (not c!87)) b!224))

(declare-fun m!79 () Bool)

(assert (=> b!223 m!79))

(declare-fun m!81 () Bool)

(assert (=> b!224 m!81))

(assert (=> d!43 d!49))

(declare-fun d!51 () Bool)

(declare-fun lt!3 () Int)

(assert (=> d!51 (>= lt!3 0)))

(declare-fun e!85 () Int)

(assert (=> d!51 (= lt!3 e!85)))

(declare-fun c!88 () Bool)

(assert (=> d!51 (= c!88 (is-Cons!34 (tail!207 (tail!207 a!268))))))

(assert (=> d!51 (= (sum!3 (tail!207 (tail!207 a!268))) lt!3)))

(declare-fun b!225 () Bool)

(assert (=> b!225 (= e!85 (+ (head!195 (tail!207 (tail!207 a!268))) (sum!3 (tail!207 (tail!207 (tail!207 a!268))))))))

(declare-fun b!226 () Bool)

(assert (=> b!226 (= e!85 (i!194 (tail!207 (tail!207 a!268))))))

(assert (= (and d!51 c!88) b!225))

(assert (= (and d!51 (not c!88)) b!226))

(declare-fun m!83 () Bool)

(assert (=> b!225 m!83))

(assert (=> b!212 d!51))

(declare-fun d!53 () Bool)

(assert (=> d!53 (= (inv!55 (tail!207 (tail!207 a!268))) (inv!15 (tail!207 (tail!207 a!268))))))

(declare-fun bs!6 () Bool)

(assert (= bs!6 d!53))

(declare-fun m!85 () Bool)

(assert (=> bs!6 m!85))

(assert (=> b!218 d!53))

(declare-fun d!55 () Bool)

(declare-fun c!89 () Bool)

(assert (=> d!55 (= c!89 (is-Nil!35 a!268))))

(declare-fun e!86 () Bool)

(assert (=> d!55 (= (inv!15 a!268) e!86)))

(declare-fun b!227 () Bool)

(assert (=> b!227 (= e!86 (inv!16 a!268))))

(declare-fun b!228 () Bool)

(assert (=> b!228 (= e!86 (B$inv!0 a!268))))

(assert (= (and d!55 c!89) b!227))

(assert (= (and d!55 (not c!89)) b!228))

(declare-fun m!87 () Bool)

(assert (=> b!227 m!87))

(declare-fun m!89 () Bool)

(assert (=> b!228 m!89))

(assert (=> d!45 d!55))

(declare-fun b!229 () Bool)

(declare-fun e!87 () Bool)

(declare-fun tp!15 () Bool)

(assert (=> b!229 (= e!87 (and (inv!55 (tail!207 (tail!207 (tail!207 a!268)))) tp!15))))

(assert (=> b!218 (= tp!14 (and (inv!55 (tail!207 (tail!207 a!268))) e!87))))

(assert (= (and b!218 (is-Cons!34 (tail!207 (tail!207 a!268)))) b!229))

(declare-fun m!91 () Bool)

(assert (=> b!229 m!91))

(assert (=> b!218 m!77))

(push 1)

(assert (not d!53))

(assert (not b!225))

(assert (not b!218))

(assert (not b!228))

(assert (not b!223))

(assert (not b!227))

(assert (not b!229))

(assert (not b!224))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57 () Bool)

(declare-fun lt!4 () Int)

(assert (=> d!57 (>= lt!4 0)))

(declare-fun e!88 () Int)

(assert (=> d!57 (= lt!4 e!88)))

(declare-fun c!90 () Bool)

(assert (=> d!57 (= c!90 (is-Cons!34 (tail!207 (tail!207 (tail!207 a!268)))))))

(assert (=> d!57 (= (sum!3 (tail!207 (tail!207 (tail!207 a!268)))) lt!4)))

(declare-fun b!230 () Bool)

(assert (=> b!230 (= e!88 (+ (head!195 (tail!207 (tail!207 (tail!207 a!268)))) (sum!3 (tail!207 (tail!207 (tail!207 (tail!207 a!268)))))))))

(declare-fun b!231 () Bool)

(assert (=> b!231 (= e!88 (i!194 (tail!207 (tail!207 (tail!207 a!268)))))))

(assert (= (and d!57 c!90) b!230))

(assert (= (and d!57 (not c!90)) b!231))

(declare-fun m!93 () Bool)

(assert (=> b!230 m!93))

(assert (=> b!225 d!57))

(declare-fun d!59 () Bool)

(declare-fun res!334 () Bool)

(declare-fun e!91 () Bool)

(assert (=> d!59 (=> (not res!334) (not e!91))))

(assert (=> d!59 (= res!334 (B$inv!0 (tail!207 a!268)))))

(assert (=> d!59 (= (inv!16 (tail!207 a!268)) e!91)))

(declare-fun b!234 () Bool)

(assert (=> b!234 (= e!91 (>= (i!194 (tail!207 a!268)) 0))))

(assert (= (and d!59 res!334) b!234))

(assert (=> d!59 m!81))

(assert (=> b!223 d!59))

(declare-fun d!61 () Bool)

(declare-fun res!337 () Bool)

(declare-fun e!94 () Bool)

(assert (=> d!61 (=> res!337 e!94)))

(assert (=> d!61 (= res!337 (not (is-Cons!34 (tail!207 a!268))))))

(assert (=> d!61 (= (B$inv!0 (tail!207 a!268)) e!94)))

(declare-fun b!237 () Bool)

(declare-fun size!15 (A!407) Int)

(assert (=> b!237 (= e!94 (= (head!195 (tail!207 a!268)) (+ (size!15 (tail!207 (tail!207 a!268))) 1)))))

(assert (= (and d!61 (not res!337)) b!237))

(declare-fun m!95 () Bool)

(assert (=> b!237 m!95))

(assert (=> b!224 d!61))

(assert (=> b!218 d!53))

(declare-fun d!63 () Bool)

(declare-fun res!338 () Bool)

(declare-fun e!95 () Bool)

(assert (=> d!63 (=> res!338 e!95)))

(assert (=> d!63 (= res!338 (not (is-Cons!34 a!268)))))

(assert (=> d!63 (= (B$inv!0 a!268) e!95)))

(declare-fun b!238 () Bool)

(assert (=> b!238 (= e!95 (= (head!195 a!268) (+ (size!15 (tail!207 a!268)) 1)))))

(assert (= (and d!63 (not res!338)) b!238))

(declare-fun m!97 () Bool)

(assert (=> b!238 m!97))

(assert (=> b!228 d!63))

(declare-fun d!65 () Bool)

(declare-fun res!339 () Bool)

(declare-fun e!96 () Bool)

(assert (=> d!65 (=> (not res!339) (not e!96))))

(assert (=> d!65 (= res!339 (B$inv!0 a!268))))

(assert (=> d!65 (= (inv!16 a!268) e!96)))

(declare-fun b!239 () Bool)

(assert (=> b!239 (= e!96 (>= (i!194 a!268) 0))))

(assert (= (and d!65 res!339) b!239))

(assert (=> d!65 m!89))

(assert (=> b!227 d!65))

(declare-fun d!67 () Bool)

(assert (=> d!67 (= (inv!55 (tail!207 (tail!207 (tail!207 a!268)))) (inv!15 (tail!207 (tail!207 (tail!207 a!268)))))))

(declare-fun bs!7 () Bool)

(assert (= bs!7 d!67))

(declare-fun m!99 () Bool)

(assert (=> bs!7 m!99))

(assert (=> b!229 d!67))

(declare-fun d!69 () Bool)

(declare-fun c!91 () Bool)

(assert (=> d!69 (= c!91 (is-Nil!35 (tail!207 (tail!207 a!268))))))

(declare-fun e!97 () Bool)

(assert (=> d!69 (= (inv!15 (tail!207 (tail!207 a!268))) e!97)))

(declare-fun b!240 () Bool)

(assert (=> b!240 (= e!97 (inv!16 (tail!207 (tail!207 a!268))))))

(declare-fun b!241 () Bool)

(assert (=> b!241 (= e!97 (B$inv!0 (tail!207 (tail!207 a!268))))))

(assert (= (and d!69 c!91) b!240))

(assert (= (and d!69 (not c!91)) b!241))

(declare-fun m!101 () Bool)

(assert (=> b!240 m!101))

(declare-fun m!103 () Bool)

(assert (=> b!241 m!103))

(assert (=> d!53 d!69))

(declare-fun b!242 () Bool)

(declare-fun e!98 () Bool)

(declare-fun tp!16 () Bool)

(assert (=> b!242 (= e!98 (and (inv!55 (tail!207 (tail!207 (tail!207 (tail!207 a!268))))) tp!16))))

(assert (=> b!229 (= tp!15 (and (inv!55 (tail!207 (tail!207 (tail!207 a!268)))) e!98))))

(assert (= (and b!229 (is-Cons!34 (tail!207 (tail!207 (tail!207 a!268))))) b!242))

(declare-fun m!105 () Bool)

(assert (=> b!242 m!105))

(assert (=> b!229 m!91))

(push 1)

(assert (not d!65))

(assert (not b!240))

(assert (not b!230))

(assert (not b!241))

(assert (not b!237))

(assert (not b!242))

(assert (not b!229))

(assert (not d!67))

(assert (not d!59))

(assert (not b!238))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!71 () Bool)

(declare-fun c!92 () Bool)

(assert (=> d!71 (= c!92 (is-Nil!35 (tail!207 (tail!207 (tail!207 a!268)))))))

(declare-fun e!99 () Bool)

(assert (=> d!71 (= (inv!15 (tail!207 (tail!207 (tail!207 a!268)))) e!99)))

(declare-fun b!243 () Bool)

(assert (=> b!243 (= e!99 (inv!16 (tail!207 (tail!207 (tail!207 a!268)))))))

(declare-fun b!244 () Bool)

(assert (=> b!244 (= e!99 (B$inv!0 (tail!207 (tail!207 (tail!207 a!268)))))))

(assert (= (and d!71 c!92) b!243))

(assert (= (and d!71 (not c!92)) b!244))

(declare-fun m!107 () Bool)

(assert (=> b!243 m!107))

(declare-fun m!109 () Bool)

(assert (=> b!244 m!109))

(assert (=> d!67 d!71))

(declare-fun d!73 () Bool)

(assert (=> d!73 (= (inv!55 (tail!207 (tail!207 (tail!207 (tail!207 a!268))))) (inv!15 (tail!207 (tail!207 (tail!207 (tail!207 a!268))))))))

(declare-fun bs!8 () Bool)

(assert (= bs!8 d!73))

(declare-fun m!111 () Bool)

(assert (=> bs!8 m!111))

(assert (=> b!242 d!73))

(declare-fun d!75 () Bool)

(declare-fun lt!7 () Int)

(assert (=> d!75 (>= lt!7 0)))

(declare-fun e!102 () Int)

(assert (=> d!75 (= lt!7 e!102)))

(declare-fun c!95 () Bool)

(assert (=> d!75 (= c!95 (is-Cons!34 (tail!207 (tail!207 a!268))))))

(assert (=> d!75 (= (size!15 (tail!207 (tail!207 a!268))) lt!7)))

(declare-fun b!249 () Bool)

(assert (=> b!249 (= e!102 (+ 1 (size!15 (tail!207 (tail!207 (tail!207 a!268))))))))

(declare-fun b!250 () Bool)

(assert (=> b!250 (= e!102 0)))

(assert (= (and d!75 c!95) b!249))

(assert (= (and d!75 (not c!95)) b!250))

(declare-fun m!113 () Bool)

(assert (=> b!249 m!113))

(assert (=> b!237 d!75))

(declare-fun d!77 () Bool)

(declare-fun res!340 () Bool)

(declare-fun e!103 () Bool)

(assert (=> d!77 (=> res!340 e!103)))

(assert (=> d!77 (= res!340 (not (is-Cons!34 (tail!207 (tail!207 a!268)))))))

(assert (=> d!77 (= (B$inv!0 (tail!207 (tail!207 a!268))) e!103)))

(declare-fun b!251 () Bool)

(assert (=> b!251 (= e!103 (= (head!195 (tail!207 (tail!207 a!268))) (+ (size!15 (tail!207 (tail!207 (tail!207 a!268)))) 1)))))

(assert (= (and d!77 (not res!340)) b!251))

(assert (=> b!251 m!113))

(assert (=> b!241 d!77))

(assert (=> d!65 d!63))

(declare-fun d!79 () Bool)

(declare-fun lt!8 () Int)

(assert (=> d!79 (>= lt!8 0)))

(declare-fun e!104 () Int)

(assert (=> d!79 (= lt!8 e!104)))

(declare-fun c!96 () Bool)

(assert (=> d!79 (= c!96 (is-Cons!34 (tail!207 (tail!207 (tail!207 (tail!207 a!268))))))))

(assert (=> d!79 (= (sum!3 (tail!207 (tail!207 (tail!207 (tail!207 a!268))))) lt!8)))

(declare-fun b!252 () Bool)

(assert (=> b!252 (= e!104 (+ (head!195 (tail!207 (tail!207 (tail!207 (tail!207 a!268))))) (sum!3 (tail!207 (tail!207 (tail!207 (tail!207 (tail!207 a!268))))))))))

(declare-fun b!253 () Bool)

(assert (=> b!253 (= e!104 (i!194 (tail!207 (tail!207 (tail!207 (tail!207 a!268))))))))

(assert (= (and d!79 c!96) b!252))

(assert (= (and d!79 (not c!96)) b!253))

(declare-fun m!115 () Bool)

(assert (=> b!252 m!115))

(assert (=> b!230 d!79))

(assert (=> b!229 d!67))

(declare-fun d!81 () Bool)

(declare-fun lt!9 () Int)

(assert (=> d!81 (>= lt!9 0)))

(declare-fun e!105 () Int)

(assert (=> d!81 (= lt!9 e!105)))

(declare-fun c!97 () Bool)

(assert (=> d!81 (= c!97 (is-Cons!34 (tail!207 a!268)))))

(assert (=> d!81 (= (size!15 (tail!207 a!268)) lt!9)))

(declare-fun b!254 () Bool)

(assert (=> b!254 (= e!105 (+ 1 (size!15 (tail!207 (tail!207 a!268)))))))

(declare-fun b!255 () Bool)

(assert (=> b!255 (= e!105 0)))

(assert (= (and d!81 c!97) b!254))

(assert (= (and d!81 (not c!97)) b!255))

(assert (=> b!254 m!95))

(assert (=> b!238 d!81))

(declare-fun d!83 () Bool)

(declare-fun res!341 () Bool)

(declare-fun e!106 () Bool)

(assert (=> d!83 (=> (not res!341) (not e!106))))

(assert (=> d!83 (= res!341 (B$inv!0 (tail!207 (tail!207 a!268))))))

(assert (=> d!83 (= (inv!16 (tail!207 (tail!207 a!268))) e!106)))

(declare-fun b!256 () Bool)

(assert (=> b!256 (= e!106 (>= (i!194 (tail!207 (tail!207 a!268))) 0))))

(assert (= (and d!83 res!341) b!256))

(assert (=> d!83 m!103))

(assert (=> b!240 d!83))

(assert (=> d!59 d!61))

(declare-fun b!257 () Bool)

(declare-fun e!107 () Bool)

(declare-fun tp!17 () Bool)

(assert (=> b!257 (= e!107 (and (inv!55 (tail!207 (tail!207 (tail!207 (tail!207 (tail!207 a!268)))))) tp!17))))

(assert (=> b!242 (= tp!16 (and (inv!55 (tail!207 (tail!207 (tail!207 (tail!207 a!268))))) e!107))))

(assert (= (and b!242 (is-Cons!34 (tail!207 (tail!207 (tail!207 (tail!207 a!268)))))) b!257))

(declare-fun m!117 () Bool)

(assert (=> b!257 m!117))

(assert (=> b!242 m!105))

(push 1)

(assert (not b!252))

(assert (not b!251))

(assert (not b!249))

(assert (not b!244))

(assert (not b!242))

(assert (not d!73))

(assert (not d!83))

(assert (not b!257))

(assert (not b!243))

(assert (not b!254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

