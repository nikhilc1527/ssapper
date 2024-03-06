; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!96 () Bool)

(assert start!96)

(declare-fun b!457 () Bool)

(declare-fun b_free!3 () Bool)

(declare-fun b_next!3 () Bool)

(assert (=> b!457 (= b_free!3 (not b_next!3))))

(declare-fun tp!88 () Bool)

(declare-fun b_and!5 () Bool)

(assert (=> b!457 (= tp!88 b_and!5)))

(declare-fun b_free!5 () Bool)

(declare-fun b_next!5 () Bool)

(assert (=> b!457 (= b_free!5 (not b_next!5))))

(declare-fun tp!89 () Bool)

(declare-fun b_and!7 () Bool)

(assert (=> b!457 (= tp!89 b_and!7)))

(declare-fun b!458 () Bool)

(declare-fun b_free!7 () Bool)

(declare-fun b_next!7 () Bool)

(assert (=> b!458 (= b_free!7 (not b_next!7))))

(declare-fun tp!87 () Bool)

(declare-fun b_and!9 () Bool)

(assert (=> b!458 (= tp!87 b_and!9)))

(declare-fun b_free!9 () Bool)

(declare-fun b_next!9 () Bool)

(assert (=> b!458 (= b_free!9 (not b_next!9))))

(declare-fun tp!92 () Bool)

(declare-fun b_and!11 () Bool)

(assert (=> b!458 (= tp!92 b_and!11)))

(declare-fun b!462 () Bool)

(declare-fun b_free!11 () Bool)

(declare-fun b_next!11 () Bool)

(assert (=> b!462 (= b_free!11 (not b_next!11))))

(declare-fun tp!93 () Bool)

(declare-fun b_and!13 () Bool)

(assert (=> b!462 (= tp!93 b_and!13)))

(declare-fun b!459 () Bool)

(declare-fun b_free!13 () Bool)

(declare-fun b_next!13 () Bool)

(assert (=> b!459 (= b_free!13 (not b_next!13))))

(declare-fun tp!90 () Bool)

(declare-fun b_and!15 () Bool)

(assert (=> b!459 (= tp!90 b_and!15)))

(declare-fun m!301 () Bool)

(assert (=> start!96 m!301))

(declare-fun b!456 () Bool)

(declare-fun res!425 () Bool)

(declare-fun e!322 () Bool)

(assert (=> b!456 (=> (not res!425) (not e!322))))

(declare-datatypes () ((A!550 (A!551 (val!0 Int)))))

(declare-datatypes () ((List!39 (Cons!40 (h!168 A!550) (t!282 List!39)) (Nil!41))))

(declare-fun l!312 () List!39)

(declare-datatypes () ((B!285 (B!286 (val!1 Int)))))

(declare-datatypes () ((~>!4 (~>!5 (pre!13 Int) (f!372 Int)))))

(declare-datatypes () ((~>>!5 (~>>!6 (f!373 ~>!4) (post!11 Int)))))

(declare-fun f!367 () ~>>!5)

(declare-fun thiss!132 () ~>>!5)

(declare-fun a!300 () A!550)

(assert (=> b!456 (= res!425 (and (is-Cons!40 l!312) (= thiss!132 f!367) (= a!300 (h!168 l!312))))))

(declare-fun e!321 () Bool)

(assert (=> b!457 (= e!321 (and tp!88 tp!89))))

(declare-fun e!323 () Bool)

(assert (=> b!458 (= e!323 (and tp!87 tp!92))))

(declare-fun e!320 () Bool)

(assert (=> b!459 (= e!320 (and e!321 tp!90))))

(declare-fun res!424 () Bool)

(assert (=> start!96 (=> (not res!424) (not e!322))))

(assert (=> start!96 (= res!424 true)))

(assert (=> start!96 true))

(assert (=> start!96 e!322))

(declare-fun e!319 () Bool)

(assert (=> start!96 e!319))

(declare-fun inv!100 (~>>!5) Bool)

(assert (=> start!96 (and (inv!100 f!367) e!320)))

(declare-fun e!318 () Bool)

(assert (=> start!96 (and (inv!100 thiss!132) e!318)))

(declare-fun tp_is_empty!1 () Bool)

(assert (=> start!96 tp_is_empty!1))

(declare-fun b!460 () Bool)

(declare-fun tp!91 () Bool)

(assert (=> b!460 (= e!319 (and tp_is_empty!1 tp!91))))

(declare-fun b!461 () Bool)

(declare-fun dynLambda!1 (Int A!550) Bool)

(declare-fun pre!14 (~>>!5) Int)

(assert (=> b!461 (= e!322 (not (dynLambda!1 (pre!14 thiss!132) a!300)))))

(assert (=> b!462 (= e!318 (and e!323 tp!93))))

(assert (= (and start!96 res!424) b!456))

(assert (= (and b!456 res!425) b!461))

(assert (= (and start!96 (is-Cons!40 l!312)) b!460))

(assert (= b!459 b!457))

(assert (= start!96 b!459))

(assert (= b!462 b!458))

(assert (= start!96 b!462))

(declare-fun b_lambda!5 () Bool)

(assert (=> (not b_lambda!5) (not b!461)))

(declare-fun t!279 () Bool)

(declare-fun tb!3 () Bool)

(assert (=> (and b!457 (= (pre!13 (f!373 f!367)) (pre!14 thiss!132)) t!279) tb!3))

(declare-fun result!15 () Bool)

(assert (=> tb!3 (= result!15 true)))

(assert (=> b!461 t!279))

(declare-fun b_and!17 () Bool)

(assert (= b_and!5 (and (=> t!279 result!15) b_and!17)))

(declare-fun t!281 () Bool)

(declare-fun tb!5 () Bool)

(assert (=> (and b!458 (= (pre!13 (f!373 thiss!132)) (pre!14 thiss!132)) t!281) tb!5))

(declare-fun result!17 () Bool)

(assert (=> tb!5 (= result!17 true)))

(assert (=> b!461 t!281))

(declare-fun b_and!19 () Bool)

(assert (= b_and!9 (and (=> t!281 result!17) b_and!19)))

(declare-fun m!303 () Bool)

(assert (=> start!96 m!303))

(declare-fun m!305 () Bool)

(assert (=> start!96 m!305))

(declare-fun m!307 () Bool)

(assert (=> b!461 m!307))

(declare-fun m!309 () Bool)

(assert (=> b!461 m!309))

(push 1)

(assert (not b_next!3))

(assert (not b!460))

(assert b_and!19)

(assert b_and!11)

(assert (not b_lambda!5))

(assert (not b_next!13))

(assert b_and!7)

(assert b_and!17)

(assert (not b_next!5))

(assert (not b_next!11))

(assert tp_is_empty!1)

(assert (not b!461))

(assert b_and!15)

(assert (not start!96))

(assert (not b_next!9))

(assert (not b_next!7))

(assert b_and!13)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3))

(assert b_and!19)

(assert b_and!11)

(assert (not b_next!13))

(assert b_and!7)

(assert b_and!17)

(assert (not b_next!5))

(assert (not b_next!11))

(assert b_and!15)

(assert (not b_next!9))

(assert (not b_next!7))

(assert b_and!13)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!45 () Bool)

(declare-fun s!85 () Bool)

(assert (= bs!45 (and start!96 s!85)))

(declare-fun res!426 () Bool)

(declare-fun e!324 () Bool)

(assert (=> bs!45 (=> res!426 e!324)))

(declare-fun contains!25 (List!39 A!550) Bool)

(assert (=> bs!45 (= res!426 (not (contains!25 l!312 a!300)))))

(assert (=> bs!45 (=> true e!324)))

(declare-fun b!463 () Bool)

(assert (=> b!463 (= e!324 (dynLambda!1 (pre!14 f!367) a!300))))

(assert (= (and bs!45 (not res!426)) b!463))

(declare-fun b_lambda!7 () Bool)

(assert (=> (not b_lambda!7) (not b!463)))

(declare-fun t!284 () Bool)

(declare-fun tb!7 () Bool)

(assert (=> (and b!457 (= (pre!13 (f!373 f!367)) (pre!14 f!367)) t!284) tb!7))

(declare-fun result!19 () Bool)

(assert (=> tb!7 (= result!19 true)))

(assert (=> b!463 t!284))

(declare-fun b_and!21 () Bool)

(assert (= b_and!17 (and (=> t!284 result!19) b_and!21)))

(declare-fun tb!9 () Bool)

(declare-fun t!286 () Bool)

(assert (=> (and b!458 (= (pre!13 (f!373 thiss!132)) (pre!14 f!367)) t!286) tb!9))

(declare-fun result!21 () Bool)

(assert (=> tb!9 (= result!21 true)))

(assert (=> b!463 t!286))

(declare-fun b_and!23 () Bool)

(assert (= b_and!19 (and (=> t!286 result!21) b_and!23)))

(declare-fun m!311 () Bool)

(assert (=> m!309 m!311))

(assert (=> m!309 s!85))

(push 1)

(assert (not b_lambda!7))

(assert (not b_next!3))

(assert (not b!460))

(assert b_and!11)

(assert (not b_lambda!5))

(assert b_and!21)

(assert b_and!23)

(assert (not bs!45))

(assert (not b_next!13))

(assert b_and!7)

(assert (not b_next!5))

(assert (not b_next!11))

(assert tp_is_empty!1)

(assert (not b!461))

(assert b_and!15)

(assert (not start!96))

(assert (not b_next!9))

(assert (not b_next!7))

(assert b_and!13)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3))

(assert b_and!11)

(assert b_and!21)

(assert b_and!23)

(assert (not b_next!13))

(assert b_and!7)

(assert (not b_next!5))

(assert (not b_next!11))

(assert b_and!15)

(assert (not b_next!9))

(assert (not b_next!7))

(assert b_and!13)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162 () Bool)

(assert (=> d!162 (= (pre!14 f!367) (pre!13 (f!373 f!367)))))

(assert (=> start!96 d!162))

(declare-fun d!164 () Bool)

(declare-fun res!431 () Bool)

(declare-fun e!329 () Bool)

(assert (=> d!164 (=> res!431 e!329)))

(declare-fun x!1178 () A!550)

(assert (=> d!164 (= res!431 (not (dynLambda!1 (pre!13 (f!373 f!367)) x!1178)))))

(declare-fun inst!2 () Bool)

(assert (=> d!164 (= inst!2 (=> tp_is_empty!1 e!329))))

(declare-fun b!468 () Bool)

(declare-fun dynLambda!2 (Int B!285) Bool)

(declare-fun apply!35 (~>!4 A!550) B!285)

(assert (=> b!468 (= e!329 (dynLambda!2 (post!11 f!367) (apply!35 (f!373 f!367) x!1178)))))

(assert (= (and d!164 (not res!431)) b!468))

(declare-fun b_lambda!9 () Bool)

(assert (=> (not b_lambda!9) (not d!164)))

(declare-fun t!288 () Bool)

(declare-fun tb!11 () Bool)

(assert (=> (and b!457 (= (pre!13 (f!373 f!367)) (pre!13 (f!373 f!367))) t!288) tb!11))

(declare-fun result!23 () Bool)

(assert (=> tb!11 (= result!23 true)))

(assert (=> d!164 t!288))

(declare-fun b_and!25 () Bool)

(assert (= b_and!21 (and (=> t!288 result!23) b_and!25)))

(declare-fun tb!13 () Bool)

(declare-fun t!290 () Bool)

(assert (=> (and b!458 (= (pre!13 (f!373 thiss!132)) (pre!13 (f!373 f!367))) t!290) tb!13))

(declare-fun result!25 () Bool)

(assert (=> tb!13 (= result!25 true)))

(assert (=> d!164 t!290))

(declare-fun b_and!27 () Bool)

(assert (= b_and!23 (and (=> t!290 result!25) b_and!27)))

(declare-fun b_lambda!11 () Bool)

(assert (=> (not b_lambda!11) (not b!468)))

(declare-fun t!292 () Bool)

(declare-fun tb!15 () Bool)

(assert (=> (and b!462 (= (post!11 thiss!132) (post!11 f!367)) t!292) tb!15))

(declare-fun result!27 () Bool)

(assert (=> tb!15 (= result!27 true)))

(assert (=> b!468 t!292))

(declare-fun b_and!29 () Bool)

(assert (= b_and!13 (and (=> t!292 result!27) b_and!29)))

(declare-fun t!294 () Bool)

(declare-fun tb!17 () Bool)

(assert (=> (and b!459 (= (post!11 f!367) (post!11 f!367)) t!294) tb!17))

(declare-fun result!29 () Bool)

(assert (=> tb!17 (= result!29 true)))

(assert (=> b!468 t!294))

(declare-fun b_and!31 () Bool)

(assert (= b_and!15 (and (=> t!294 result!29) b_and!31)))

(declare-fun m!313 () Bool)

(assert (=> d!164 m!313))

(declare-fun m!315 () Bool)

(assert (=> b!468 m!315))

(assert (=> b!468 m!315))

(declare-fun m!317 () Bool)

(assert (=> b!468 m!317))

(declare-fun bs!46 () Bool)

(declare-fun neg-inst!2 () Bool)

(declare-fun s!87 () Bool)

(assert (= bs!46 (and neg-inst!2 s!87)))

(declare-fun res!432 () Bool)

(declare-fun e!330 () Bool)

(assert (=> bs!46 (=> res!432 e!330)))

(assert (=> bs!46 (= res!432 (not (dynLambda!1 (pre!13 (f!373 f!367)) x!1178)))))

(assert (=> bs!46 (=> true e!330)))

(declare-fun b!469 () Bool)

(assert (=> b!469 (= e!330 (dynLambda!2 (post!11 f!367) (apply!35 (f!373 f!367) x!1178)))))

(assert (= (and bs!46 (not res!432)) b!469))

(declare-fun b_lambda!13 () Bool)

(assert (=> (not b_lambda!13) (not bs!46)))

(assert (=> bs!46 t!288))

(declare-fun b_and!33 () Bool)

(assert (= b_and!25 (and (=> t!288 result!23) b_and!33)))

(assert (=> bs!46 t!290))

(declare-fun b_and!35 () Bool)

(assert (= b_and!27 (and (=> t!290 result!25) b_and!35)))

(declare-fun b_lambda!15 () Bool)

(assert (=> (not b_lambda!15) (not b!469)))

(assert (=> b!469 t!292))

(declare-fun b_and!37 () Bool)

(assert (= b_and!29 (and (=> t!292 result!27) b_and!37)))

(assert (=> b!469 t!294))

(declare-fun b_and!39 () Bool)

(assert (= b_and!31 (and (=> t!294 result!29) b_and!39)))

(assert (=> m!313 s!87))

(assert (=> m!315 s!87))

(declare-fun bs!47 () Bool)

(assert (= bs!47 (and neg-inst!2 d!164)))

(assert (=> bs!47 (= true inst!2)))

(assert (=> d!164 (= (inv!100 f!367) inst!2)))

(assert (= neg-inst!2 inst!2))

(assert (=> start!96 d!164))

(declare-fun d!166 () Bool)

(declare-fun res!433 () Bool)

(declare-fun e!331 () Bool)

(assert (=> d!166 (=> res!433 e!331)))

(declare-fun x!1179 () A!550)

(assert (=> d!166 (= res!433 (not (dynLambda!1 (pre!13 (f!373 thiss!132)) x!1179)))))

(declare-fun inst!3 () Bool)

(assert (=> d!166 (= inst!3 (=> tp_is_empty!1 e!331))))

(declare-fun b!470 () Bool)

(assert (=> b!470 (= e!331 (dynLambda!2 (post!11 thiss!132) (apply!35 (f!373 thiss!132) x!1179)))))

(assert (= (and d!166 (not res!433)) b!470))

(declare-fun b_lambda!17 () Bool)

(assert (=> (not b_lambda!17) (not d!166)))

(declare-fun t!296 () Bool)

(declare-fun tb!19 () Bool)

(assert (=> (and b!457 (= (pre!13 (f!373 f!367)) (pre!13 (f!373 thiss!132))) t!296) tb!19))

(declare-fun result!31 () Bool)

(assert (=> tb!19 (= result!31 true)))

(assert (=> d!166 t!296))

(declare-fun b_and!41 () Bool)

(assert (= b_and!33 (and (=> t!296 result!31) b_and!41)))

(declare-fun t!298 () Bool)

(declare-fun tb!21 () Bool)

(assert (=> (and b!458 (= (pre!13 (f!373 thiss!132)) (pre!13 (f!373 thiss!132))) t!298) tb!21))

(declare-fun result!33 () Bool)

(assert (=> tb!21 (= result!33 true)))

(assert (=> d!166 t!298))

(declare-fun b_and!43 () Bool)

(assert (= b_and!35 (and (=> t!298 result!33) b_and!43)))

(declare-fun b_lambda!19 () Bool)

(assert (=> (not b_lambda!19) (not b!470)))

(declare-fun t!300 () Bool)

(declare-fun tb!23 () Bool)

(assert (=> (and b!462 (= (post!11 thiss!132) (post!11 thiss!132)) t!300) tb!23))

(declare-fun result!35 () Bool)

(assert (=> tb!23 (= result!35 true)))

(assert (=> b!470 t!300))

(declare-fun b_and!45 () Bool)

(assert (= b_and!37 (and (=> t!300 result!35) b_and!45)))

(declare-fun t!302 () Bool)

(declare-fun tb!25 () Bool)

(assert (=> (and b!459 (= (post!11 f!367) (post!11 thiss!132)) t!302) tb!25))

(declare-fun result!37 () Bool)

(assert (=> tb!25 (= result!37 true)))

(assert (=> b!470 t!302))

(declare-fun b_and!47 () Bool)

(assert (= b_and!39 (and (=> t!302 result!37) b_and!47)))

(declare-fun m!319 () Bool)

(assert (=> d!166 m!319))

(declare-fun m!321 () Bool)

(assert (=> b!470 m!321))

(assert (=> b!470 m!321))

(declare-fun m!323 () Bool)

(assert (=> b!470 m!323))

(declare-fun bs!48 () Bool)

(assert (= bs!48 (and d!166 d!164)))

(assert (=> (and bs!48 (= (pre!13 (f!373 thiss!132)) (pre!13 (f!373 f!367))) (= (post!11 thiss!132) (post!11 f!367)) (= (f!373 thiss!132) (f!373 f!367))) (= inst!3 inst!2)))

(declare-fun bs!49 () Bool)

(assert (= bs!49 (and d!166 neg-inst!2)))

(assert (=> (and bs!49 (= (pre!13 (f!373 thiss!132)) (pre!13 (f!373 f!367))) (= (post!11 thiss!132) (post!11 f!367)) (= (f!373 thiss!132) (f!373 f!367))) (= inst!3 true)))

(declare-fun bs!50 () Bool)

(declare-fun neg-inst!3 () Bool)

(declare-fun s!89 () Bool)

(assert (= bs!50 (and neg-inst!3 s!89)))

(declare-fun res!434 () Bool)

(declare-fun e!332 () Bool)

(assert (=> bs!50 (=> res!434 e!332)))

(assert (=> bs!50 (= res!434 (not (dynLambda!1 (pre!13 (f!373 thiss!132)) x!1179)))))

(assert (=> bs!50 (=> true e!332)))

(declare-fun b!471 () Bool)

(assert (=> b!471 (= e!332 (dynLambda!2 (post!11 thiss!132) (apply!35 (f!373 thiss!132) x!1179)))))

(assert (= (and bs!50 (not res!434)) b!471))

(declare-fun b_lambda!21 () Bool)

(assert (=> (not b_lambda!21) (not bs!50)))

(assert (=> bs!50 t!296))

(declare-fun b_and!49 () Bool)

(assert (= b_and!41 (and (=> t!296 result!31) b_and!49)))

(assert (=> bs!50 t!298))

(declare-fun b_and!51 () Bool)

(assert (= b_and!43 (and (=> t!298 result!33) b_and!51)))

(declare-fun b_lambda!23 () Bool)

(assert (=> (not b_lambda!23) (not b!471)))

(assert (=> b!471 t!300))

(declare-fun b_and!53 () Bool)

(assert (= b_and!45 (and (=> t!300 result!35) b_and!53)))

(assert (=> b!471 t!302))

(declare-fun b_and!55 () Bool)

(assert (= b_and!47 (and (=> t!302 result!37) b_and!55)))

(assert (=> m!319 s!89))

(assert (=> m!321 s!89))

(declare-fun bs!51 () Bool)

(assert (= bs!51 (and neg-inst!3 d!166)))

(assert (=> bs!51 (= true inst!3)))

(declare-fun bs!52 () Bool)

(assert (= bs!52 (and neg-inst!3 d!164)))

(assert (=> (and bs!52 (= (pre!13 (f!373 thiss!132)) (pre!13 (f!373 f!367))) (= (post!11 thiss!132) (post!11 f!367)) (= (f!373 thiss!132) (f!373 f!367))) (= true inst!2)))

(declare-fun bs!53 () Bool)

(assert (= bs!53 (and neg-inst!3 neg-inst!2)))

(assert (=> (and bs!53 (= (pre!13 (f!373 thiss!132)) (pre!13 (f!373 f!367))) (= (post!11 thiss!132) (post!11 f!367)) (= (f!373 thiss!132) (f!373 f!367))) (= true true)))

(assert (=> d!166 (= (inv!100 thiss!132) inst!3)))

(assert (= neg-inst!3 inst!3))

(assert (=> start!96 d!166))

(declare-fun d!168 () Bool)

(assert (=> d!168 (= (pre!14 thiss!132) (pre!13 (f!373 thiss!132)))))

(assert (=> b!461 d!168))

(declare-fun b!476 () Bool)

(declare-fun e!335 () Bool)

(declare-fun tp!96 () Bool)

(assert (=> b!476 (= e!335 (and tp_is_empty!1 tp!96))))

(assert (=> b!460 (= tp!91 e!335)))

(assert (= (and b!460 (is-Cons!40 (t!282 l!312))) b!476))

(declare-fun b_lambda!25 () Bool)

(assert (= b_lambda!13 (or (and b!457 b_free!3) (and b!458 b_free!7 (= (pre!13 (f!373 thiss!132)) (pre!13 (f!373 f!367)))) b_lambda!25)))

(declare-fun b_lambda!27 () Bool)

(assert (= b_lambda!17 (or (and b!457 b_free!3 (= (pre!13 (f!373 f!367)) (pre!13 (f!373 thiss!132)))) (and b!458 b_free!7) b_lambda!27)))

(declare-fun b_lambda!29 () Bool)

(assert (= b_lambda!23 (or (and b!462 b_free!11) (and b!459 b_free!13 (= (post!11 f!367) (post!11 thiss!132))) b_lambda!29)))

(declare-fun b_lambda!31 () Bool)

(assert (= b_lambda!15 (or (and b!462 b_free!11 (= (post!11 thiss!132) (post!11 f!367))) (and b!459 b_free!13) b_lambda!31)))

(declare-fun b_lambda!33 () Bool)

(assert (= b_lambda!21 (or (and b!457 b_free!3 (= (pre!13 (f!373 f!367)) (pre!13 (f!373 thiss!132)))) (and b!458 b_free!7) b_lambda!33)))

(declare-fun b_lambda!35 () Bool)

(assert (= b_lambda!9 (or (and b!457 b_free!3) (and b!458 b_free!7 (= (pre!13 (f!373 thiss!132)) (pre!13 (f!373 f!367)))) b_lambda!35)))

(declare-fun b_lambda!37 () Bool)

(assert (= b_lambda!5 (or (and b!457 b_free!3 (= (pre!13 (f!373 f!367)) (pre!14 thiss!132))) (and b!458 b_free!7 (= (pre!13 (f!373 thiss!132)) (pre!14 thiss!132))) b_lambda!37)))

(declare-fun b_lambda!39 () Bool)

(assert (= b_lambda!11 (or (and b!462 b_free!11 (= (post!11 thiss!132) (post!11 f!367))) (and b!459 b_free!13) b_lambda!39)))

(declare-fun b_lambda!41 () Bool)

(assert (= b_lambda!19 (or (and b!462 b_free!11) (and b!459 b_free!13 (= (post!11 f!367) (post!11 thiss!132))) b_lambda!41)))

(declare-fun bs!54 () Bool)

(assert (= bs!54 (and m!309 b!463)))

(declare-fun m!325 () Bool)

(assert (=> bs!54 m!325))

(declare-fun bs!55 () Bool)

(declare-fun s!91 () Bool)

(assert (= bs!55 (and start!96 s!91)))

(declare-fun content!45 (List!39) (Set A!550))

(assert (=> bs!55 (=> true (= (contains!25 l!312 a!300) (member a!300 (content!45 l!312))))))

(declare-fun m!327 () Bool)

(assert (=> m!311 m!327))

(declare-fun m!329 () Bool)

(assert (=> m!311 m!329))

(assert (=> m!311 s!91))

(assert (=> m!311 s!85))

(push 1)

(assert (not b_lambda!7))

(assert (not b_lambda!41))

(assert (not b_next!3))

(assert (not b_lambda!27))

(assert (not bs!55))

(assert (not b_lambda!29))

(assert b_and!49)

(assert b_and!11)

(assert (not b!476))

(assert (not b_lambda!33))

(assert b_and!53)

(assert (not b_lambda!31))

(assert b_and!51)

(assert (not bs!45))

(assert (not b_next!13))

(assert b_and!7)

(assert (not b!470))

(assert (not b!471))

(assert (not b_next!5))

(assert (not b_next!11))

(assert tp_is_empty!1)

(assert (not b_lambda!25))

(assert (not b!468))

(assert b_and!55)

(assert (not b_lambda!37))

(assert (not b_next!9))

(assert (not b!469))

(assert (not b_next!7))

(assert (not b_lambda!35))

(assert (not b_lambda!39))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3))

(assert b_and!49)

(assert b_and!11)

(assert b_and!53)

(assert b_and!51)

(assert (not b_next!13))

(assert b_and!7)

(assert (not b_next!5))

(assert (not b_next!11))

(assert b_and!55)

(assert (not b_next!9))

(assert (not b_next!7))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!170 () Bool)

(declare-fun lt!44 () Bool)

(assert (=> d!170 (= lt!44 (member a!300 (content!45 l!312)))))

(declare-fun e!341 () Bool)

(assert (=> d!170 (= lt!44 e!341)))

(declare-fun res!440 () Bool)

(assert (=> d!170 (=> (not res!440) (not e!341))))

(assert (=> d!170 (= res!440 (is-Cons!40 l!312))))

(assert (=> d!170 (= (contains!25 l!312 a!300) lt!44)))

(declare-fun b!481 () Bool)

(declare-fun e!340 () Bool)

(assert (=> b!481 (= e!341 e!340)))

(declare-fun res!439 () Bool)

(assert (=> b!481 (=> res!439 e!340)))

(assert (=> b!481 (= res!439 (= (h!168 l!312) a!300))))

(declare-fun b!482 () Bool)

(assert (=> b!482 (= e!340 (contains!25 (t!282 l!312) a!300))))

(assert (= (and d!170 res!440) b!481))

(assert (= (and b!481 (not res!439)) b!482))

(assert (=> d!170 m!327))

(assert (=> d!170 m!329))

(declare-fun bs!56 () Bool)

(declare-fun m!331 () Bool)

(assert (= bs!56 m!331))

(assert (=> bs!56 s!91))

(assert (=> bs!56 s!85))

(assert (=> b!482 m!331))

(assert (=> bs!45 d!170))

(declare-fun b_lambda!43 () Bool)

(assert (= b_lambda!7 (or (and b!457 b_free!3 (= (pre!13 (f!373 f!367)) (pre!14 f!367))) (and b!458 b_free!7 (= (pre!13 (f!373 thiss!132)) (pre!14 f!367))) b_lambda!43)))

(declare-fun bs!57 () Bool)

(assert (= bs!57 (and m!313 b!469)))

(assert (=> bs!57 m!315))

(assert (=> bs!57 m!317))

(declare-fun bs!58 () Bool)

(assert (= bs!58 (and m!319 b!471)))

(assert (=> bs!58 m!321))

(assert (=> bs!58 m!323))

(assert (=> m!329 s!91))

(declare-fun bs!59 () Bool)

(declare-fun s!93 () Bool)

(assert (= bs!59 (and start!96 s!93)))

(declare-fun res!441 () Bool)

(declare-fun e!342 () Bool)

(assert (=> bs!59 (=> res!441 e!342)))

(assert (=> bs!59 (= res!441 (not (contains!25 l!312 x!1178)))))

(assert (=> bs!59 (=> true e!342)))

(declare-fun b!483 () Bool)

(assert (=> b!483 (= e!342 (dynLambda!1 (pre!14 f!367) x!1178))))

(assert (= (and bs!59 (not res!441)) b!483))

(declare-fun b_lambda!45 () Bool)

(assert (=> (not b_lambda!45) (not b!483)))

(declare-fun t!304 () Bool)

(declare-fun tb!27 () Bool)

(assert (=> (and b!457 (= (pre!13 (f!373 f!367)) (pre!14 f!367)) t!304) tb!27))

(declare-fun result!41 () Bool)

(assert (=> tb!27 (= result!41 true)))

(assert (=> b!483 t!304))

(declare-fun b_and!57 () Bool)

(assert (= b_and!49 (and (=> t!304 result!41) b_and!57)))

(declare-fun t!306 () Bool)

(declare-fun tb!29 () Bool)

(assert (=> (and b!458 (= (pre!13 (f!373 thiss!132)) (pre!14 f!367)) t!306) tb!29))

(declare-fun result!43 () Bool)

(assert (=> tb!29 (= result!43 true)))

(assert (=> b!483 t!306))

(declare-fun b_and!59 () Bool)

(assert (= b_and!51 (and (=> t!306 result!43) b_and!59)))

(declare-fun m!333 () Bool)

(assert (=> m!313 m!333))

(assert (=> m!313 s!93))

(declare-fun bs!60 () Bool)

(declare-fun s!95 () Bool)

(assert (= bs!60 (and start!96 s!95)))

(declare-fun res!442 () Bool)

(declare-fun e!343 () Bool)

(assert (=> bs!60 (=> res!442 e!343)))

(assert (=> bs!60 (= res!442 (not (contains!25 l!312 x!1179)))))

(assert (=> bs!60 (=> true e!343)))

(declare-fun b!484 () Bool)

(assert (=> b!484 (= e!343 (dynLambda!1 (pre!14 f!367) x!1179))))

(assert (= (and bs!60 (not res!442)) b!484))

(declare-fun b_lambda!47 () Bool)

(assert (=> (not b_lambda!47) (not b!484)))

(declare-fun t!308 () Bool)

(declare-fun tb!31 () Bool)

(assert (=> (and b!457 (= (pre!13 (f!373 f!367)) (pre!14 f!367)) t!308) tb!31))

(declare-fun result!45 () Bool)

(assert (=> tb!31 (= result!45 true)))

(assert (=> b!484 t!308))

(declare-fun b_and!61 () Bool)

(assert (= b_and!57 (and (=> t!308 result!45) b_and!61)))

(declare-fun t!310 () Bool)

(declare-fun tb!33 () Bool)

(assert (=> (and b!458 (= (pre!13 (f!373 thiss!132)) (pre!14 f!367)) t!310) tb!33))

(declare-fun result!47 () Bool)

(assert (=> tb!33 (= result!47 true)))

(assert (=> b!484 t!310))

(declare-fun b_and!63 () Bool)

(assert (= b_and!59 (and (=> t!310 result!47) b_and!63)))

(declare-fun m!335 () Bool)

(assert (=> m!319 m!335))

(assert (=> m!319 s!95))

(assert (=> m!325 s!85))

(push 1)

(assert (not b_lambda!43))

(assert (not b_lambda!41))

(assert (not b_next!3))

(assert (not b_lambda!27))

(assert (not bs!55))

(assert (not b_lambda!29))

(assert (not b_lambda!47))

(assert (not b_lambda!45))

(assert b_and!11)

(assert (not b!476))

(assert (not d!170))

(assert b_and!63)

(assert (not b_lambda!33))

(assert b_and!53)

(assert (not b_lambda!31))

(assert (not b_next!13))

(assert b_and!7)

(assert (not b!470))

(assert (not b!471))

(assert (not bs!60))

(assert (not b_next!5))

(assert (not b_next!11))

(assert tp_is_empty!1)

(assert (not b_lambda!25))

(assert (not b!482))

(assert (not b!468))

(assert b_and!55)

(assert (not b_lambda!37))

(assert (not b_next!9))

(assert (not b!469))

(assert (not b_next!7))

(assert (not b_lambda!35))

(assert (not bs!59))

(assert b_and!61)

(assert (not b_lambda!39))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3))

(assert b_and!11)

(assert b_and!63)

(assert b_and!53)

(assert (not b_next!13))

(assert b_and!7)

(assert (not b_next!5))

(assert (not b_next!11))

(assert b_and!55)

(assert (not b_next!9))

(assert (not b_next!7))

(assert b_and!61)

(check-sat)

(pop 1)

