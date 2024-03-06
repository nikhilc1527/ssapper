; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!50 () Bool)

(assert start!50)

(declare-fun res!368 () Bool)

(declare-fun e!174 () Bool)

(assert (=> start!50 (=> (not res!368) (not e!174))))

(declare-datatypes () ((Option!21 (Some!22 (v!145 Foo!15)) (None!22)) (Foo!15 (Bar!10 (bar!42 Option!21)) (FooExt!2 (__x!4 Int)))))

(declare-fun foo!76 () Foo!15)

(assert (=> start!50 (= res!368 (is-Bar!10 foo!76))))

(assert (=> start!50 e!174))

(declare-fun e!176 () Bool)

(declare-fun inv!60 (Foo!15) Bool)

(assert (=> start!50 (and (inv!60 foo!76) e!176)))

(declare-fun b!342 () Bool)

(declare-fun nonEmpty!7 (Option!21) Bool)

(assert (=> b!342 (= e!174 (not (nonEmpty!7 (bar!42 foo!76))))))

(declare-fun tp!52 () Bool)

(declare-fun e!175 () Bool)

(declare-fun b!344 () Bool)

(declare-fun lt!21 () Foo!15)

(assert (=> b!344 (= e!175 (and (inv!60 (v!145 (bar!42 foo!76))) tp!52 (is-Bar!10 lt!21)))))

(assert (=> b!344 (= lt!21 (v!145 (bar!42 foo!76)))))

(declare-fun b!343 () Bool)

(assert (=> b!343 (= e!176 e!175)))

(assert (= (and start!50 res!368) b!342))

(assert (= (and b!343 (is-Some!22 (bar!42 foo!76))) b!344))

(assert (= (and start!50 (is-Bar!10 foo!76)) b!343))

(declare-fun m!193 () Bool)

(assert (=> start!50 m!193))

(declare-fun m!195 () Bool)

(assert (=> b!342 m!195))

(declare-fun m!197 () Bool)

(assert (=> b!344 m!197))

(push 1)

(assert (not b!342))

(assert (not b!344))

(assert (not start!50))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!115 () Bool)

(declare-fun isEmpty!25 (Option!21) Bool)

(assert (=> d!115 (= (nonEmpty!7 (bar!42 foo!76)) (not (isEmpty!25 (bar!42 foo!76))))))

(declare-fun bs!22 () Bool)

(assert (= bs!22 d!115))

(declare-fun m!199 () Bool)

(assert (=> bs!22 m!199))

(assert (=> b!342 d!115))

(declare-fun d!117 () Bool)

(declare-fun res!371 () Bool)

(declare-fun e!179 () Bool)

(assert (=> d!117 (=> res!371 e!179)))

(assert (=> d!117 (= res!371 (not (is-Bar!10 (v!145 (bar!42 foo!76)))))))

(assert (=> d!117 (= (inv!60 (v!145 (bar!42 foo!76))) e!179)))

(declare-fun b!347 () Bool)

(declare-fun inv!14 (Foo!15) Bool)

(assert (=> b!347 (= e!179 (inv!14 (v!145 (bar!42 foo!76))))))

(assert (= (and d!117 (not res!371)) b!347))

(declare-fun m!201 () Bool)

(assert (=> b!347 m!201))

(assert (=> b!344 d!117))

(declare-fun d!119 () Bool)

(declare-fun res!372 () Bool)

(declare-fun e!180 () Bool)

(assert (=> d!119 (=> res!372 e!180)))

(assert (=> d!119 (= res!372 (not (is-Bar!10 foo!76)))))

(assert (=> d!119 (= (inv!60 foo!76) e!180)))

(declare-fun b!348 () Bool)

(assert (=> b!348 (= e!180 (inv!14 foo!76))))

(assert (= (and d!119 (not res!372)) b!348))

(declare-fun m!203 () Bool)

(assert (=> b!348 m!203))

(assert (=> start!50 d!119))

(declare-fun tp!55 () Bool)

(declare-fun e!186 () Bool)

(declare-fun b!356 () Bool)

(declare-fun lt!24 () Foo!15)

(assert (=> b!356 (= e!186 (and (inv!60 (v!145 (bar!42 (v!145 (bar!42 foo!76))))) tp!55 (is-Bar!10 lt!24)))))

(assert (=> b!356 (= lt!24 (v!145 (bar!42 (v!145 (bar!42 foo!76)))))))

(declare-fun b!355 () Bool)

(declare-fun e!185 () Bool)

(assert (=> b!355 (= e!185 e!186)))

(assert (=> b!344 (= tp!52 (and (inv!60 (v!145 (bar!42 foo!76))) e!185))))

(assert (= (and b!355 (is-Some!22 (bar!42 (v!145 (bar!42 foo!76))))) b!356))

(assert (= (and b!344 (is-Bar!10 (v!145 (bar!42 foo!76)))) b!355))

(declare-fun m!205 () Bool)

(assert (=> b!356 m!205))

(assert (=> b!344 m!197))

(push 1)

(assert (not b!348))

(assert (not b!356))

(assert (not b!347))

(assert (not b!344))

(assert (not d!115))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121 () Bool)

(declare-fun res!373 () Bool)

(declare-fun e!187 () Bool)

(assert (=> d!121 (=> res!373 e!187)))

(assert (=> d!121 (= res!373 (not (is-Bar!10 (v!145 (bar!42 (v!145 (bar!42 foo!76)))))))))

(assert (=> d!121 (= (inv!60 (v!145 (bar!42 (v!145 (bar!42 foo!76))))) e!187)))

(declare-fun b!357 () Bool)

(assert (=> b!357 (= e!187 (inv!14 (v!145 (bar!42 (v!145 (bar!42 foo!76))))))))

(assert (= (and d!121 (not res!373)) b!357))

(declare-fun m!207 () Bool)

(assert (=> b!357 m!207))

(assert (=> b!356 d!121))

(declare-fun d!123 () Bool)

(assert (=> d!123 (= (isEmpty!25 (bar!42 foo!76)) (not (is-Some!22 (bar!42 foo!76))))))

(assert (=> d!115 d!123))

(declare-fun d!125 () Bool)

(declare-fun isDefined!3 (Option!21) Bool)

(assert (=> d!125 (= (inv!14 (v!145 (bar!42 foo!76))) (isDefined!3 (bar!42 (v!145 (bar!42 foo!76)))))))

(declare-fun bs!23 () Bool)

(assert (= bs!23 d!125))

(declare-fun m!209 () Bool)

(assert (=> bs!23 m!209))

(assert (=> b!347 d!125))

(assert (=> b!344 d!117))

(declare-fun d!127 () Bool)

(assert (=> d!127 (= (inv!14 foo!76) (isDefined!3 (bar!42 foo!76)))))

(declare-fun bs!24 () Bool)

(assert (= bs!24 d!127))

(declare-fun m!211 () Bool)

(assert (=> bs!24 m!211))

(assert (=> b!348 d!127))

(declare-fun e!189 () Bool)

(declare-fun lt!25 () Foo!15)

(declare-fun tp!56 () Bool)

(declare-fun b!359 () Bool)

(assert (=> b!359 (= e!189 (and (inv!60 (v!145 (bar!42 (v!145 (bar!42 (v!145 (bar!42 foo!76))))))) tp!56 (is-Bar!10 lt!25)))))

(assert (=> b!359 (= lt!25 (v!145 (bar!42 (v!145 (bar!42 (v!145 (bar!42 foo!76)))))))))

(declare-fun b!358 () Bool)

(declare-fun e!188 () Bool)

(assert (=> b!358 (= e!188 e!189)))

(assert (=> b!356 (= tp!55 (and (inv!60 (v!145 (bar!42 (v!145 (bar!42 foo!76))))) e!188))))

(assert (= (and b!358 (is-Some!22 (bar!42 (v!145 (bar!42 (v!145 (bar!42 foo!76))))))) b!359))

(assert (= (and b!356 (is-Bar!10 (v!145 (bar!42 (v!145 (bar!42 foo!76)))))) b!358))

(declare-fun m!213 () Bool)

(assert (=> b!359 m!213))

(assert (=> b!356 m!205))

(push 1)

(assert (not b!356))

(assert (not d!125))

(assert (not d!127))

(assert (not b!359))

(assert (not b!357))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!129 () Bool)

(assert (=> d!129 (= (isDefined!3 (bar!42 (v!145 (bar!42 foo!76)))) (not (isEmpty!25 (bar!42 (v!145 (bar!42 foo!76))))))))

(declare-fun bs!25 () Bool)

(assert (= bs!25 d!129))

(declare-fun m!215 () Bool)

(assert (=> bs!25 m!215))

(assert (=> d!125 d!129))

(assert (=> b!356 d!121))

(declare-fun d!131 () Bool)

(assert (=> d!131 (= (inv!14 (v!145 (bar!42 (v!145 (bar!42 foo!76))))) (isDefined!3 (bar!42 (v!145 (bar!42 (v!145 (bar!42 foo!76)))))))))

(declare-fun bs!26 () Bool)

(assert (= bs!26 d!131))

(declare-fun m!217 () Bool)

(assert (=> bs!26 m!217))

(assert (=> b!357 d!131))

(declare-fun d!133 () Bool)

(assert (=> d!133 (= (isDefined!3 (bar!42 foo!76)) (not (isEmpty!25 (bar!42 foo!76))))))

(declare-fun bs!27 () Bool)

(assert (= bs!27 d!133))

(assert (=> bs!27 m!199))

(assert (=> d!127 d!133))

(declare-fun d!135 () Bool)

(declare-fun res!374 () Bool)

(declare-fun e!190 () Bool)

(assert (=> d!135 (=> res!374 e!190)))

(assert (=> d!135 (= res!374 (not (is-Bar!10 (v!145 (bar!42 (v!145 (bar!42 (v!145 (bar!42 foo!76)))))))))))

(assert (=> d!135 (= (inv!60 (v!145 (bar!42 (v!145 (bar!42 (v!145 (bar!42 foo!76))))))) e!190)))

(declare-fun b!360 () Bool)

(assert (=> b!360 (= e!190 (inv!14 (v!145 (bar!42 (v!145 (bar!42 (v!145 (bar!42 foo!76))))))))))

(assert (= (and d!135 (not res!374)) b!360))

(declare-fun m!219 () Bool)

(assert (=> b!360 m!219))

(assert (=> b!359 d!135))

(declare-fun lt!26 () Foo!15)

(declare-fun b!362 () Bool)

(declare-fun tp!57 () Bool)

(declare-fun e!192 () Bool)

(assert (=> b!362 (= e!192 (and (inv!60 (v!145 (bar!42 (v!145 (bar!42 (v!145 (bar!42 (v!145 (bar!42 foo!76))))))))) tp!57 (is-Bar!10 lt!26)))))

(assert (=> b!362 (= lt!26 (v!145 (bar!42 (v!145 (bar!42 (v!145 (bar!42 (v!145 (bar!42 foo!76)))))))))))

(declare-fun b!361 () Bool)

(declare-fun e!191 () Bool)

(assert (=> b!361 (= e!191 e!192)))

(assert (=> b!359 (= tp!56 (and (inv!60 (v!145 (bar!42 (v!145 (bar!42 (v!145 (bar!42 foo!76))))))) e!191))))

(assert (= (and b!361 (is-Some!22 (bar!42 (v!145 (bar!42 (v!145 (bar!42 (v!145 (bar!42 foo!76))))))))) b!362))

(assert (= (and b!359 (is-Bar!10 (v!145 (bar!42 (v!145 (bar!42 (v!145 (bar!42 foo!76)))))))) b!361))

(declare-fun m!221 () Bool)

(assert (=> b!362 m!221))

(assert (=> b!359 m!213))

(push 1)

(assert (not b!360))

(assert (not d!129))

(assert (not b!362))

(assert (not d!133))

(assert (not b!359))

(assert (not d!131))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

