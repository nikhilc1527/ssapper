; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!26 () Bool)

(assert start!26)

(declare-datatypes () ((A!408 (Cons!35 (head!196 Int) (tail!208 A!408)) (Nil!36 (i!197 Int)))))

(declare-fun a!268 () A!408)

(declare-fun i!188 () Int)

(assert (=> start!26 (and (not (is-Cons!35 a!268)) (= i!188 (i!197 a!268)) (< i!188 0))))

(declare-fun e!110 () Bool)

(declare-fun inv!55 (A!408) Bool)

(assert (=> start!26 (and (inv!55 a!268) e!110)))

(assert (=> start!26 true))

(declare-fun b!260 () Bool)

(declare-fun tp!20 () Bool)

(assert (=> b!260 (= e!110 (and (inv!55 (tail!208 a!268)) tp!20))))

(assert (= (and start!26 (is-Cons!35 a!268)) b!260))

(declare-fun m!119 () Bool)

(assert (=> start!26 m!119))

(declare-fun m!121 () Bool)

(assert (=> b!260 m!121))

(push 1)

(assert (not b!260))

(assert (not start!26))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!85 () Bool)

(declare-fun inv!15 (A!408) Bool)

(assert (=> d!85 (= (inv!55 (tail!208 a!268)) (inv!15 (tail!208 a!268)))))

(declare-fun bs!10 () Bool)

(assert (= bs!10 d!85))

(declare-fun m!123 () Bool)

(assert (=> bs!10 m!123))

(assert (=> b!260 d!85))

(declare-fun d!87 () Bool)

(assert (=> d!87 (= (inv!55 a!268) (inv!15 a!268))))

(declare-fun bs!11 () Bool)

(assert (= bs!11 d!87))

(declare-fun m!125 () Bool)

(assert (=> bs!11 m!125))

(assert (=> start!26 d!87))

(declare-fun b!265 () Bool)

(declare-fun e!113 () Bool)

(declare-fun tp!23 () Bool)

(assert (=> b!265 (= e!113 (and (inv!55 (tail!208 (tail!208 a!268))) tp!23))))

(assert (=> b!260 (= tp!20 (and (inv!55 (tail!208 a!268)) e!113))))

(assert (= (and b!260 (is-Cons!35 (tail!208 a!268))) b!265))

(declare-fun m!127 () Bool)

(assert (=> b!265 m!127))

(assert (=> b!260 m!121))

(push 1)

(assert (not b!260))

(assert (not b!265))

(assert (not d!87))

(assert (not d!85))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!260 d!85))

(declare-fun d!89 () Bool)

(assert (=> d!89 (= (inv!55 (tail!208 (tail!208 a!268))) (inv!15 (tail!208 (tail!208 a!268))))))

(declare-fun bs!12 () Bool)

(assert (= bs!12 d!89))

(declare-fun m!129 () Bool)

(assert (=> bs!12 m!129))

(assert (=> b!265 d!89))

(declare-fun d!91 () Bool)

(declare-fun c!100 () Bool)

(assert (=> d!91 (= c!100 (is-Nil!36 a!268))))

(declare-fun e!116 () Bool)

(assert (=> d!91 (= (inv!15 a!268) e!116)))

(declare-fun b!270 () Bool)

(declare-fun inv!16 (A!408) Bool)

(assert (=> b!270 (= e!116 (inv!16 a!268))))

(declare-fun b!271 () Bool)

(declare-fun B$inv!0 (A!408) Bool)

(assert (=> b!271 (= e!116 (B$inv!0 a!268))))

(assert (= (and d!91 c!100) b!270))

(assert (= (and d!91 (not c!100)) b!271))

(declare-fun m!131 () Bool)

(assert (=> b!270 m!131))

(declare-fun m!133 () Bool)

(assert (=> b!271 m!133))

(assert (=> d!87 d!91))

(declare-fun d!93 () Bool)

(declare-fun c!101 () Bool)

(assert (=> d!93 (= c!101 (is-Nil!36 (tail!208 a!268)))))

(declare-fun e!117 () Bool)

(assert (=> d!93 (= (inv!15 (tail!208 a!268)) e!117)))

(declare-fun b!272 () Bool)

(assert (=> b!272 (= e!117 (inv!16 (tail!208 a!268)))))

(declare-fun b!273 () Bool)

(assert (=> b!273 (= e!117 (B$inv!0 (tail!208 a!268)))))

(assert (= (and d!93 c!101) b!272))

(assert (= (and d!93 (not c!101)) b!273))

(declare-fun m!135 () Bool)

(assert (=> b!272 m!135))

(declare-fun m!137 () Bool)

(assert (=> b!273 m!137))

(assert (=> d!85 d!93))

(declare-fun b!274 () Bool)

(declare-fun e!118 () Bool)

(declare-fun tp!24 () Bool)

(assert (=> b!274 (= e!118 (and (inv!55 (tail!208 (tail!208 (tail!208 a!268)))) tp!24))))

(assert (=> b!265 (= tp!23 (and (inv!55 (tail!208 (tail!208 a!268))) e!118))))

(assert (= (and b!265 (is-Cons!35 (tail!208 (tail!208 a!268)))) b!274))

(declare-fun m!139 () Bool)

(assert (=> b!274 m!139))

(assert (=> b!265 m!127))

(push 1)

(assert (not b!270))

(assert (not b!265))

(assert (not b!274))

(assert (not b!273))

(assert (not b!271))

(assert (not b!272))

(assert (not d!89))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!95 () Bool)

(declare-fun res!344 () Bool)

(declare-fun e!121 () Bool)

(assert (=> d!95 (=> (not res!344) (not e!121))))

(assert (=> d!95 (= res!344 (B$inv!0 a!268))))

(assert (=> d!95 (= (inv!16 a!268) e!121)))

(declare-fun b!277 () Bool)

(assert (=> b!277 (= e!121 (>= (i!197 a!268) 0))))

(assert (= (and d!95 res!344) b!277))

(assert (=> d!95 m!133))

(assert (=> b!270 d!95))

(declare-fun d!97 () Bool)

(declare-fun c!102 () Bool)

(assert (=> d!97 (= c!102 (is-Nil!36 (tail!208 (tail!208 a!268))))))

(declare-fun e!122 () Bool)

(assert (=> d!97 (= (inv!15 (tail!208 (tail!208 a!268))) e!122)))

(declare-fun b!278 () Bool)

(assert (=> b!278 (= e!122 (inv!16 (tail!208 (tail!208 a!268))))))

(declare-fun b!279 () Bool)

(assert (=> b!279 (= e!122 (B$inv!0 (tail!208 (tail!208 a!268))))))

(assert (= (and d!97 c!102) b!278))

(assert (= (and d!97 (not c!102)) b!279))

(declare-fun m!141 () Bool)

(assert (=> b!278 m!141))

(declare-fun m!143 () Bool)

(assert (=> b!279 m!143))

(assert (=> d!89 d!97))

(declare-fun d!99 () Bool)

(assert (=> d!99 (= (inv!55 (tail!208 (tail!208 (tail!208 a!268)))) (inv!15 (tail!208 (tail!208 (tail!208 a!268)))))))

(declare-fun bs!13 () Bool)

(assert (= bs!13 d!99))

(declare-fun m!145 () Bool)

(assert (=> bs!13 m!145))

(assert (=> b!274 d!99))

(assert (=> b!265 d!89))

(declare-fun d!101 () Bool)

(declare-fun res!347 () Bool)

(declare-fun e!125 () Bool)

(assert (=> d!101 (=> res!347 e!125)))

(assert (=> d!101 (= res!347 (not (is-Cons!35 (tail!208 a!268))))))

(assert (=> d!101 (= (B$inv!0 (tail!208 a!268)) e!125)))

(declare-fun b!282 () Bool)

(declare-fun size!15 (A!408) Int)

(assert (=> b!282 (= e!125 (= (head!196 (tail!208 a!268)) (+ (size!15 (tail!208 (tail!208 a!268))) 1)))))

(assert (= (and d!101 (not res!347)) b!282))

(declare-fun m!147 () Bool)

(assert (=> b!282 m!147))

(assert (=> b!273 d!101))

(declare-fun d!103 () Bool)

(declare-fun res!348 () Bool)

(declare-fun e!126 () Bool)

(assert (=> d!103 (=> (not res!348) (not e!126))))

(assert (=> d!103 (= res!348 (B$inv!0 (tail!208 a!268)))))

(assert (=> d!103 (= (inv!16 (tail!208 a!268)) e!126)))

(declare-fun b!283 () Bool)

(assert (=> b!283 (= e!126 (>= (i!197 (tail!208 a!268)) 0))))

(assert (= (and d!103 res!348) b!283))

(assert (=> d!103 m!137))

(assert (=> b!272 d!103))

(declare-fun d!105 () Bool)

(declare-fun res!349 () Bool)

(declare-fun e!127 () Bool)

(assert (=> d!105 (=> res!349 e!127)))

(assert (=> d!105 (= res!349 (not (is-Cons!35 a!268)))))

(assert (=> d!105 (= (B$inv!0 a!268) e!127)))

(declare-fun b!284 () Bool)

(assert (=> b!284 (= e!127 (= (head!196 a!268) (+ (size!15 (tail!208 a!268)) 1)))))

(assert (= (and d!105 (not res!349)) b!284))

(declare-fun m!149 () Bool)

(assert (=> b!284 m!149))

(assert (=> b!271 d!105))

(declare-fun b!285 () Bool)

(declare-fun e!128 () Bool)

(declare-fun tp!25 () Bool)

(assert (=> b!285 (= e!128 (and (inv!55 (tail!208 (tail!208 (tail!208 (tail!208 a!268))))) tp!25))))

(assert (=> b!274 (= tp!24 (and (inv!55 (tail!208 (tail!208 (tail!208 a!268)))) e!128))))

(assert (= (and b!274 (is-Cons!35 (tail!208 (tail!208 (tail!208 a!268))))) b!285))

(declare-fun m!151 () Bool)

(assert (=> b!285 m!151))

(assert (=> b!274 m!139))

(push 1)

(assert (not b!279))

(assert (not d!95))

(assert (not b!285))

(assert (not b!274))

(assert (not b!278))

(assert (not b!284))

(assert (not b!282))

(assert (not d!99))

(assert (not d!103))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

