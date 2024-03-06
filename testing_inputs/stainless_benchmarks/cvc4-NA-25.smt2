; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!104 () Bool)

(assert start!104)

(declare-fun b!510 () Bool)

(declare-fun b_free!15 () Bool)

(declare-fun b_next!15 () Bool)

(assert (=> b!510 (= b_free!15 (not b_next!15))))

(declare-fun tp!113 () Bool)

(declare-fun b_and!65 () Bool)

(assert (=> b!510 (= tp!113 b_and!65)))

(declare-fun b_free!17 () Bool)

(declare-fun b_next!17 () Bool)

(assert (=> b!510 (= b_free!17 (not b_next!17))))

(declare-fun tp!120 () Bool)

(declare-fun b_and!67 () Bool)

(assert (=> b!510 (= tp!120 b_and!67)))

(declare-fun b!517 () Bool)

(declare-fun b_free!19 () Bool)

(declare-fun b_next!19 () Bool)

(assert (=> b!517 (= b_free!19 (not b_next!19))))

(declare-fun tp!115 () Bool)

(declare-fun b_and!69 () Bool)

(assert (=> b!517 (= tp!115 b_and!69)))

(declare-fun b!511 () Bool)

(declare-fun b_free!21 () Bool)

(declare-fun b_next!21 () Bool)

(assert (=> b!511 (= b_free!21 (not b_next!21))))

(declare-fun tp!117 () Bool)

(declare-fun b_and!71 () Bool)

(assert (=> b!511 (= tp!117 b_and!71)))

(declare-fun b_free!23 () Bool)

(declare-fun b_next!23 () Bool)

(assert (=> b!511 (= b_free!23 (not b_next!23))))

(declare-fun tp!116 () Bool)

(declare-fun b_and!73 () Bool)

(assert (=> b!511 (= tp!116 b_and!73)))

(declare-fun b!514 () Bool)

(declare-fun b_free!25 () Bool)

(declare-fun b_next!25 () Bool)

(assert (=> b!514 (= b_free!25 (not b_next!25))))

(declare-fun tp!114 () Bool)

(declare-fun b_and!75 () Bool)

(assert (=> b!514 (= tp!114 b_and!75)))

(declare-fun b!509 () Bool)

(declare-fun m!337 () Bool)

(assert (=> b!509 m!337))

(declare-fun res!459 () Bool)

(declare-fun e!369 () Bool)

(assert (=> b!509 (=> res!459 e!369)))

(declare-datatypes () ((A!552 (A!553 (val!2 Int)))))

(declare-datatypes () ((List!40 (Cons!41 (h!169 A!552) (t!315 List!40)) (Nil!42))))

(declare-fun l!313 () List!40)

(declare-fun x!1202 () A!552)

(declare-fun contains!26 (List!40 A!552) Bool)

(assert (=> b!509 (= res!459 (not (contains!26 l!313 x!1202)))))

(declare-fun inst!6 () Bool)

(declare-fun tp_is_empty!3 () Bool)

(assert (=> b!509 (= inst!6 (=> tp_is_empty!3 e!369))))

(declare-fun b!519 () Bool)

(declare-datatypes () ((B!287 (B!288 (val!3 Int)))))

(declare-datatypes () ((~>!6 (~>!7 (pre!15 Int) (f!374 Int)))))

(declare-datatypes () ((~>>!7 (~>>!8 (f!375 ~>!6) (post!12 Int)))))

(declare-fun f!368 () ~>>!7)

(declare-fun dynLambda!3 (Int A!552) Bool)

(declare-fun pre!16 (~>>!7) Int)

(assert (=> b!519 (= e!369 (dynLambda!3 (pre!16 f!368) x!1202))))

(assert (= (and b!509 (not res!459)) b!519))

(declare-fun b_lambda!49 () Bool)

(assert (=> (not b_lambda!49) (not b!519)))

(declare-fun t!312 () Bool)

(declare-fun f!367 () ~>>!7)

(declare-fun tb!35 () Bool)

(assert (=> (and b!510 (= (pre!15 (f!375 f!367)) (pre!16 f!368)) t!312) tb!35))

(declare-fun result!49 () Bool)

(assert (=> tb!35 (= result!49 true)))

(assert (=> b!519 t!312))

(declare-fun b_and!77 () Bool)

(assert (= b_and!65 (and (=> t!312 result!49) b_and!77)))

(declare-fun t!314 () Bool)

(declare-fun tb!37 () Bool)

(assert (=> (and b!511 (= (pre!15 (f!375 f!368)) (pre!16 f!368)) t!314) tb!37))

(declare-fun result!51 () Bool)

(assert (=> tb!37 (= result!51 true)))

(assert (=> b!519 t!314))

(declare-fun b_and!79 () Bool)

(assert (= b_and!71 (and (=> t!314 result!51) b_and!79)))

(declare-fun m!339 () Bool)

(assert (=> b!509 m!339))

(declare-fun m!341 () Bool)

(assert (=> b!519 m!341))

(declare-fun m!343 () Bool)

(assert (=> start!104 m!343))

(declare-fun bs!62 () Bool)

(assert (= bs!62 (and start!104 b!509)))

(declare-fun l!312 () List!40)

(assert (=> (and bs!62 (= l!312 l!313) (= (pre!16 f!367) (pre!16 f!368))) (= true inst!6)))

(declare-fun b!515 () Bool)

(declare-fun b!516 () Bool)

(declare-fun s!97 () Bool)

(declare-fun bs!63 () Bool)

(declare-fun b!518 () Bool)

(assert (= bs!63 (and b!515 b!516 start!104 s!97 b!509 b!518)))

(declare-fun content!46 (List!40) (Set A!552))

(assert (=> bs!63 (=> true (= (contains!26 l!313 x!1202) (member x!1202 (content!46 l!313))))))

(declare-fun m!345 () Bool)

(assert (=> m!339 m!345))

(declare-fun bs!64 () Bool)

(declare-fun m!347 () Bool)

(assert (= bs!64 m!347))

(assert (=> bs!64 s!97))

(assert (=> m!339 m!347))

(assert (=> m!339 s!97))

(assert (=> (and bs!62 (= l!313 l!312)) (= true true)))

(declare-fun e!363 () Bool)

(assert (=> b!509 (= e!363 (not inst!6))))

(assert (=> b!509 true))

(declare-fun e!362 () Bool)

(assert (=> b!510 (= e!362 (and tp!113 tp!120))))

(declare-fun e!365 () Bool)

(assert (=> b!511 (= e!365 (and tp!117 tp!116))))

(declare-fun b!512 () Bool)

(declare-fun e!367 () Bool)

(declare-fun tp!118 () Bool)

(assert (=> b!512 (= e!367 (and tp_is_empty!3 tp!118))))

(declare-fun b!513 () Bool)

(declare-fun e!366 () Bool)

(declare-fun tp!119 () Bool)

(assert (=> b!513 (= e!366 (and tp_is_empty!3 tp!119))))

(declare-fun e!368 () Bool)

(assert (=> b!514 (= e!368 (and e!365 tp!114))))

(declare-fun res!456 () Bool)

(assert (=> start!104 (=> (not res!456) (not e!363))))

(assert (=> start!104 (= res!456 true)))

(assert (=> start!104 true))

(assert (=> start!104 e!363))

(assert (=> start!104 e!367))

(declare-fun e!364 () Bool)

(declare-fun inv!101 (~>>!7) Bool)

(assert (=> start!104 (and (inv!101 f!367) e!364)))

(assert (=> start!104 e!366))

(declare-fun tp_is_empty!5 () Bool)

(assert (=> start!104 tp_is_empty!5))

(assert (=> start!104 (and (inv!101 f!368) e!368)))

(declare-fun res!458 () Bool)

(assert (=> b!515 (=> (not res!458) (not e!363))))

(assert (=> b!515 (= res!458 (and (= l!313 (t!315 l!312)) (= f!368 f!367)))))

(declare-fun res!455 () Bool)

(assert (=> b!516 (=> (not res!455) (not e!363))))

(assert (=> b!516 (= res!455 (is-Cons!41 l!312))))

(assert (=> b!517 (= e!364 (and e!362 tp!115))))

(declare-fun res!457 () Bool)

(assert (=> b!518 (=> (not res!457) (not e!363))))

(declare-fun h!165 () B!287)

(declare-fun apply!36 (~>>!7 A!552) B!287)

(assert (=> b!518 (= res!457 (= h!165 (apply!36 f!367 (h!169 l!312))))))

(assert (= (and start!104 res!456) b!516))

(assert (= (and b!516 res!455) b!518))

(assert (= (and b!518 res!457) b!515))

(assert (= (and b!515 res!458) b!509))

(assert (= (and start!104 (is-Cons!41 l!312)) b!512))

(assert (= b!517 b!510))

(assert (= start!104 b!517))

(assert (= (and start!104 (is-Cons!41 l!313)) b!513))

(assert (= b!514 b!511))

(assert (= start!104 b!514))

(declare-fun m!349 () Bool)

(assert (=> start!104 m!349))

(declare-fun m!351 () Bool)

(assert (=> start!104 m!351))

(declare-fun m!353 () Bool)

(assert (=> b!518 m!353))

(push 1)

(assert (not b!513))

(assert b_and!67)

(assert (not b_next!15))

(assert tp_is_empty!5)

(assert (not b!518))

(assert (not b_lambda!49))

(assert b_and!73)

(assert (not b_next!19))

(assert (not b_next!17))

(assert tp_is_empty!3)

(assert (not b_next!25))

(assert (not start!104))

(assert b_and!75)

(assert (not b_next!21))

(assert (not b!512))

(assert b_and!79)

(assert b_and!77)

(assert b_and!69)

(assert (not bs!63))

(assert (not b!509))

(assert (not b_next!23))

(check-sat)

(pop 1)

(push 1)

(assert b_and!67)

(assert (not b_next!15))

(assert b_and!73)

(assert (not b_next!19))

(assert (not b_next!17))

(assert (not b_next!25))

(assert b_and!75)

(assert (not b_next!21))

(assert b_and!79)

(assert b_and!77)

(assert b_and!69)

(assert (not b_next!23))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!65 () Bool)

(declare-fun s!99 () Bool)

(assert (= bs!65 (and start!104 s!99)))

(declare-fun res!460 () Bool)

(declare-fun e!370 () Bool)

(assert (=> bs!65 (=> res!460 e!370)))

(assert (=> bs!65 (= res!460 (not (contains!26 l!312 x!1202)))))

(assert (=> bs!65 (=> true e!370)))

(declare-fun b!520 () Bool)

(assert (=> b!520 (= e!370 (dynLambda!3 (pre!16 f!367) x!1202))))

(assert (= (and bs!65 (not res!460)) b!520))

(declare-fun b_lambda!51 () Bool)

(assert (=> (not b_lambda!51) (not b!520)))

(declare-fun t!317 () Bool)

(declare-fun tb!39 () Bool)

(assert (=> (and b!510 (= (pre!15 (f!375 f!367)) (pre!16 f!367)) t!317) tb!39))

(declare-fun result!53 () Bool)

(assert (=> tb!39 (= result!53 true)))

(assert (=> b!520 t!317))

(declare-fun b_and!81 () Bool)

(assert (= b_and!77 (and (=> t!317 result!53) b_and!81)))

(declare-fun t!319 () Bool)

(declare-fun tb!41 () Bool)

(assert (=> (and b!511 (= (pre!15 (f!375 f!368)) (pre!16 f!367)) t!319) tb!41))

(declare-fun result!55 () Bool)

(assert (=> tb!41 (= result!55 true)))

(assert (=> b!520 t!319))

(declare-fun b_and!83 () Bool)

(assert (= b_and!79 (and (=> t!319 result!55) b_and!83)))

(declare-fun m!355 () Bool)

(assert (=> m!341 m!355))

(assert (=> m!341 s!99))

(push 1)

(assert (not b!513))

(assert b_and!67)

(assert (not b_next!15))

(assert tp_is_empty!5)

(assert (not b!518))

(assert (not b_lambda!51))

(assert (not b_lambda!49))

(assert b_and!73)

(assert (not b_next!19))

(assert (not b_next!17))

(assert tp_is_empty!3)

(assert (not b_next!25))

(assert b_and!83)

(assert (not start!104))

(assert b_and!75)

(assert (not b_next!21))

(assert (not b!512))

(assert b_and!81)

(assert b_and!69)

(assert (not bs!63))

(assert (not b!509))

(assert (not bs!65))

(assert (not b_next!23))

(check-sat)

(pop 1)

(push 1)

(assert b_and!67)

(assert (not b_next!15))

(assert b_and!73)

(assert (not b_next!19))

(assert (not b_next!17))

(assert (not b_next!25))

(assert b_and!83)

(assert b_and!75)

(assert (not b_next!21))

(assert b_and!81)

(assert b_and!69)

(assert (not b_next!23))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!172 () Bool)

(declare-fun lt!47 () Bool)

(assert (=> d!172 (= lt!47 (member x!1202 (content!46 l!313)))))

(declare-fun e!376 () Bool)

(assert (=> d!172 (= lt!47 e!376)))

(declare-fun res!465 () Bool)

(assert (=> d!172 (=> (not res!465) (not e!376))))

(assert (=> d!172 (= res!465 (is-Cons!41 l!313))))

(assert (=> d!172 (= (contains!26 l!313 x!1202) lt!47)))

(declare-fun b!525 () Bool)

(declare-fun e!375 () Bool)

(assert (=> b!525 (= e!376 e!375)))

(declare-fun res!466 () Bool)

(assert (=> b!525 (=> res!466 e!375)))

(assert (=> b!525 (= res!466 (= (h!169 l!313) x!1202))))

(declare-fun b!526 () Bool)

(assert (=> b!526 (= e!375 (contains!26 (t!315 l!313) x!1202))))

(assert (= (and d!172 res!465) b!525))

(assert (= (and b!525 (not res!466)) b!526))

(assert (=> d!172 m!345))

(assert (=> d!172 m!347))

(declare-fun bs!66 () Bool)

(declare-fun s!101 () Bool)

(assert (= bs!66 (and start!104 s!101)))

(assert (=> bs!66 (=> true (= (contains!26 l!312 x!1202) (member x!1202 (content!46 l!312))))))

(declare-fun bs!67 () Bool)

(declare-fun m!357 () Bool)

(assert (= bs!67 m!357))

(assert (=> bs!67 m!355))

(declare-fun m!359 () Bool)

(assert (=> bs!67 m!359))

(declare-fun bs!68 () Bool)

(declare-fun m!361 () Bool)

(assert (= bs!68 m!361))

(assert (=> bs!68 s!101))

(assert (=> bs!68 s!97))

(assert (=> bs!67 m!361))

(assert (=> bs!67 s!101))

(assert (=> bs!67 s!99))

(assert (=> bs!67 s!97))

(assert (=> b!526 m!357))

(assert (=> bs!63 d!172))

(declare-fun d!174 () Bool)

(declare-fun c!108 () Bool)

(assert (=> d!174 (= c!108 (is-Nil!42 l!313))))

(declare-fun e!379 () (Set A!552))

(assert (=> d!174 (= (content!46 l!313) e!379)))

(declare-fun b!531 () Bool)

(assert (=> b!531 (= e!379 (as emptyset (Set A!552)))))

(declare-fun b!532 () Bool)

(assert (=> b!532 (= e!379 (union (insert (h!169 l!313) (as emptyset (Set A!552))) (content!46 (t!315 l!313))))))

(assert (= (and d!174 c!108) b!531))

(assert (= (and d!174 (not c!108)) b!532))

(declare-fun m!363 () Bool)

(assert (=> b!532 m!363))

(declare-fun m!365 () Bool)

(assert (=> b!532 m!365))

(assert (=> bs!63 d!174))

(declare-fun d!176 () Bool)

(assert (=> d!176 (= (pre!16 f!367) (pre!15 (f!375 f!367)))))

(assert (=> start!104 d!176))

(declare-fun d!178 () Bool)

(declare-fun res!471 () Bool)

(declare-fun e!384 () Bool)

(assert (=> d!178 (=> res!471 e!384)))

(declare-fun x!1221 () A!552)

(assert (=> d!178 (= res!471 (not (dynLambda!3 (pre!15 (f!375 f!367)) x!1221)))))

(declare-fun inst!9 () Bool)

(assert (=> d!178 (= inst!9 (=> tp_is_empty!3 e!384))))

(declare-fun b!537 () Bool)

(declare-fun dynLambda!4 (Int B!287) Bool)

(declare-fun apply!37 (~>!6 A!552) B!287)

(assert (=> b!537 (= e!384 (dynLambda!4 (post!12 f!367) (apply!37 (f!375 f!367) x!1221)))))

(assert (= (and d!178 (not res!471)) b!537))

(declare-fun b_lambda!53 () Bool)

(assert (=> (not b_lambda!53) (not d!178)))

(declare-fun t!321 () Bool)

(declare-fun tb!43 () Bool)

(assert (=> (and b!510 (= (pre!15 (f!375 f!367)) (pre!15 (f!375 f!367))) t!321) tb!43))

(declare-fun result!57 () Bool)

(assert (=> tb!43 (= result!57 true)))

(assert (=> d!178 t!321))

(declare-fun b_and!85 () Bool)

(assert (= b_and!81 (and (=> t!321 result!57) b_and!85)))

(declare-fun t!323 () Bool)

(declare-fun tb!45 () Bool)

(assert (=> (and b!511 (= (pre!15 (f!375 f!368)) (pre!15 (f!375 f!367))) t!323) tb!45))

(declare-fun result!59 () Bool)

(assert (=> tb!45 (= result!59 true)))

(assert (=> d!178 t!323))

(declare-fun b_and!87 () Bool)

(assert (= b_and!83 (and (=> t!323 result!59) b_and!87)))

(declare-fun b_lambda!55 () Bool)

(assert (=> (not b_lambda!55) (not b!537)))

(declare-fun t!325 () Bool)

(declare-fun tb!47 () Bool)

(assert (=> (and b!517 (= (post!12 f!367) (post!12 f!367)) t!325) tb!47))

(declare-fun result!61 () Bool)

(assert (=> tb!47 (= result!61 true)))

(assert (=> b!537 t!325))

(declare-fun b_and!89 () Bool)

(assert (= b_and!69 (and (=> t!325 result!61) b_and!89)))

(declare-fun t!327 () Bool)

(declare-fun tb!49 () Bool)

(assert (=> (and b!514 (= (post!12 f!368) (post!12 f!367)) t!327) tb!49))

(declare-fun result!63 () Bool)

(assert (=> tb!49 (= result!63 true)))

(assert (=> b!537 t!327))

(declare-fun b_and!91 () Bool)

(assert (= b_and!75 (and (=> t!327 result!63) b_and!91)))

(declare-fun m!367 () Bool)

(assert (=> d!178 m!367))

(declare-fun m!369 () Bool)

(assert (=> b!537 m!369))

(assert (=> b!537 m!369))

(declare-fun m!371 () Bool)

(assert (=> b!537 m!371))

(declare-fun bs!69 () Bool)

(declare-fun neg-inst!6 () Bool)

(declare-fun s!103 () Bool)

(assert (= bs!69 (and neg-inst!6 s!103)))

(declare-fun res!472 () Bool)

(declare-fun e!385 () Bool)

(assert (=> bs!69 (=> res!472 e!385)))

(assert (=> bs!69 (= res!472 (not (dynLambda!3 (pre!15 (f!375 f!367)) x!1221)))))

(assert (=> bs!69 (=> true e!385)))

(declare-fun b!538 () Bool)

(assert (=> b!538 (= e!385 (dynLambda!4 (post!12 f!367) (apply!37 (f!375 f!367) x!1221)))))

(assert (= (and bs!69 (not res!472)) b!538))

(declare-fun b_lambda!57 () Bool)

(assert (=> (not b_lambda!57) (not bs!69)))

(assert (=> bs!69 t!321))

(declare-fun b_and!93 () Bool)

(assert (= b_and!85 (and (=> t!321 result!57) b_and!93)))

(assert (=> bs!69 t!323))

(declare-fun b_and!95 () Bool)

(assert (= b_and!87 (and (=> t!323 result!59) b_and!95)))

(declare-fun b_lambda!59 () Bool)

(assert (=> (not b_lambda!59) (not b!538)))

(assert (=> b!538 t!325))

(declare-fun b_and!97 () Bool)

(assert (= b_and!89 (and (=> t!325 result!61) b_and!97)))

(assert (=> b!538 t!327))

(declare-fun b_and!99 () Bool)

(assert (= b_and!91 (and (=> t!327 result!63) b_and!99)))

(assert (=> m!367 s!103))

(assert (=> m!369 s!103))

(declare-fun bs!70 () Bool)

(assert (= bs!70 (and neg-inst!6 d!178)))

(assert (=> bs!70 (= true inst!9)))

(assert (=> d!178 (= (inv!101 f!367) inst!9)))

(assert (= neg-inst!6 inst!9))

(assert (=> start!104 d!178))

(declare-fun d!180 () Bool)

(declare-fun res!473 () Bool)

(declare-fun e!386 () Bool)

(assert (=> d!180 (=> res!473 e!386)))

(declare-fun x!1222 () A!552)

(assert (=> d!180 (= res!473 (not (dynLambda!3 (pre!15 (f!375 f!368)) x!1222)))))

(declare-fun inst!10 () Bool)

(assert (=> d!180 (= inst!10 (=> tp_is_empty!3 e!386))))

(declare-fun b!539 () Bool)

(assert (=> b!539 (= e!386 (dynLambda!4 (post!12 f!368) (apply!37 (f!375 f!368) x!1222)))))

(assert (= (and d!180 (not res!473)) b!539))

(declare-fun b_lambda!61 () Bool)

(assert (=> (not b_lambda!61) (not d!180)))

(declare-fun tb!51 () Bool)

(declare-fun t!329 () Bool)

(assert (=> (and b!510 (= (pre!15 (f!375 f!367)) (pre!15 (f!375 f!368))) t!329) tb!51))

(declare-fun result!65 () Bool)

(assert (=> tb!51 (= result!65 true)))

(assert (=> d!180 t!329))

(declare-fun b_and!101 () Bool)

(assert (= b_and!93 (and (=> t!329 result!65) b_and!101)))

(declare-fun t!331 () Bool)

(declare-fun tb!53 () Bool)

(assert (=> (and b!511 (= (pre!15 (f!375 f!368)) (pre!15 (f!375 f!368))) t!331) tb!53))

(declare-fun result!67 () Bool)

(assert (=> tb!53 (= result!67 true)))

(assert (=> d!180 t!331))

(declare-fun b_and!103 () Bool)

(assert (= b_and!95 (and (=> t!331 result!67) b_and!103)))

(declare-fun b_lambda!63 () Bool)

(assert (=> (not b_lambda!63) (not b!539)))

(declare-fun t!333 () Bool)

(declare-fun tb!55 () Bool)

(assert (=> (and b!517 (= (post!12 f!367) (post!12 f!368)) t!333) tb!55))

(declare-fun result!69 () Bool)

(assert (=> tb!55 (= result!69 true)))

(assert (=> b!539 t!333))

(declare-fun b_and!105 () Bool)

(assert (= b_and!97 (and (=> t!333 result!69) b_and!105)))

(declare-fun t!335 () Bool)

(declare-fun tb!57 () Bool)

(assert (=> (and b!514 (= (post!12 f!368) (post!12 f!368)) t!335) tb!57))

(declare-fun result!71 () Bool)

(assert (=> tb!57 (= result!71 true)))

(assert (=> b!539 t!335))

(declare-fun b_and!107 () Bool)

(assert (= b_and!99 (and (=> t!335 result!71) b_and!107)))

(declare-fun m!373 () Bool)

(assert (=> d!180 m!373))

(declare-fun m!375 () Bool)

(assert (=> b!539 m!375))

(assert (=> b!539 m!375))

(declare-fun m!377 () Bool)

(assert (=> b!539 m!377))

(declare-fun bs!71 () Bool)

(assert (= bs!71 (and d!180 neg-inst!6)))

(assert (=> (and bs!71 (= (pre!15 (f!375 f!368)) (pre!15 (f!375 f!367))) (= (post!12 f!368) (post!12 f!367)) (= (f!375 f!368) (f!375 f!367))) (= inst!10 true)))

(declare-fun bs!72 () Bool)

(assert (= bs!72 (and d!180 d!178)))

(assert (=> (and bs!72 (= (pre!15 (f!375 f!368)) (pre!15 (f!375 f!367))) (= (post!12 f!368) (post!12 f!367)) (= (f!375 f!368) (f!375 f!367))) (= inst!10 inst!9)))

(declare-fun bs!73 () Bool)

(declare-fun neg-inst!7 () Bool)

(declare-fun s!105 () Bool)

(assert (= bs!73 (and neg-inst!7 s!105)))

(declare-fun res!474 () Bool)

(declare-fun e!387 () Bool)

(assert (=> bs!73 (=> res!474 e!387)))

(assert (=> bs!73 (= res!474 (not (dynLambda!3 (pre!15 (f!375 f!368)) x!1222)))))

(assert (=> bs!73 (=> true e!387)))

(declare-fun b!540 () Bool)

(assert (=> b!540 (= e!387 (dynLambda!4 (post!12 f!368) (apply!37 (f!375 f!368) x!1222)))))

(assert (= (and bs!73 (not res!474)) b!540))

(declare-fun b_lambda!65 () Bool)

(assert (=> (not b_lambda!65) (not bs!73)))

(assert (=> bs!73 t!329))

(declare-fun b_and!109 () Bool)

(assert (= b_and!101 (and (=> t!329 result!65) b_and!109)))

(assert (=> bs!73 t!331))

(declare-fun b_and!111 () Bool)

(assert (= b_and!103 (and (=> t!331 result!67) b_and!111)))

(declare-fun b_lambda!67 () Bool)

(assert (=> (not b_lambda!67) (not b!540)))

(assert (=> b!540 t!333))

(declare-fun b_and!113 () Bool)

(assert (= b_and!105 (and (=> t!333 result!69) b_and!113)))

(assert (=> b!540 t!335))

(declare-fun b_and!115 () Bool)

(assert (= b_and!107 (and (=> t!335 result!71) b_and!115)))

(assert (=> m!373 s!105))

(assert (=> m!375 s!105))

(declare-fun bs!74 () Bool)

(assert (= bs!74 (and neg-inst!7 d!180)))

(assert (=> bs!74 (= true inst!10)))

(declare-fun bs!75 () Bool)

(assert (= bs!75 (and neg-inst!7 neg-inst!6)))

(assert (=> (and bs!75 (= (pre!15 (f!375 f!368)) (pre!15 (f!375 f!367))) (= (post!12 f!368) (post!12 f!367)) (= (f!375 f!368) (f!375 f!367))) (= true true)))

(declare-fun bs!76 () Bool)

(assert (= bs!76 (and neg-inst!7 d!178)))

(assert (=> (and bs!76 (= (pre!15 (f!375 f!368)) (pre!15 (f!375 f!367))) (= (post!12 f!368) (post!12 f!367)) (= (f!375 f!368) (f!375 f!367))) (= true inst!9)))

(assert (=> d!180 (= (inv!101 f!368) inst!10)))

(assert (= neg-inst!7 inst!10))

(assert (=> start!104 d!180))

(declare-fun d!182 () Bool)

(declare-fun lt!50 () B!287)

(assert (=> d!182 (dynLambda!4 (post!12 f!367) lt!50)))

(assert (=> d!182 (= lt!50 (apply!37 (f!375 f!367) (h!169 l!312)))))

(assert (=> d!182 (dynLambda!3 (pre!16 f!367) (h!169 l!312))))

(assert (=> d!182 (= (apply!36 f!367 (h!169 l!312)) lt!50)))

(declare-fun b_lambda!69 () Bool)

(assert (=> (not b_lambda!69) (not d!182)))

(declare-fun t!337 () Bool)

(declare-fun tb!59 () Bool)

(assert (=> (and b!517 (= (post!12 f!367) (post!12 f!367)) t!337) tb!59))

(declare-fun result!73 () Bool)

(assert (=> tb!59 (= result!73 true)))

(assert (=> d!182 t!337))

(declare-fun b_and!117 () Bool)

(assert (= b_and!113 (and (=> t!337 result!73) b_and!117)))

(declare-fun t!339 () Bool)

(declare-fun tb!61 () Bool)

(assert (=> (and b!514 (= (post!12 f!368) (post!12 f!367)) t!339) tb!61))

(declare-fun result!75 () Bool)

(assert (=> tb!61 (= result!75 true)))

(assert (=> d!182 t!339))

(declare-fun b_and!119 () Bool)

(assert (= b_and!115 (and (=> t!339 result!75) b_and!119)))

(declare-fun b_lambda!71 () Bool)

(assert (=> (not b_lambda!71) (not d!182)))

(declare-fun t!341 () Bool)

(declare-fun tb!63 () Bool)

(assert (=> (and b!510 (= (pre!15 (f!375 f!367)) (pre!16 f!367)) t!341) tb!63))

(declare-fun result!77 () Bool)

(assert (=> tb!63 (= result!77 true)))

(assert (=> d!182 t!341))

(declare-fun b_and!121 () Bool)

(assert (= b_and!109 (and (=> t!341 result!77) b_and!121)))

(declare-fun t!343 () Bool)

(declare-fun tb!65 () Bool)

(assert (=> (and b!511 (= (pre!15 (f!375 f!368)) (pre!16 f!367)) t!343) tb!65))

(declare-fun result!79 () Bool)

(assert (=> tb!65 (= result!79 true)))

(assert (=> d!182 t!343))

(declare-fun b_and!123 () Bool)

(assert (= b_and!111 (and (=> t!343 result!79) b_and!123)))

(declare-fun m!379 () Bool)

(assert (=> d!182 m!379))

(declare-fun m!381 () Bool)

(assert (=> d!182 m!381))

(assert (=> d!182 m!343))

(declare-fun bs!77 () Bool)

(declare-fun s!107 () Bool)

(assert (= bs!77 (and start!104 s!107)))

(declare-fun res!476 () Bool)

(declare-fun e!388 () Bool)

(assert (=> bs!77 (=> res!476 e!388)))

(assert (=> bs!77 (= res!476 (not (contains!26 l!312 (h!169 l!312))))))

(assert (=> bs!77 (=> true e!388)))

(declare-fun b!541 () Bool)

(assert (=> b!541 (= e!388 (dynLambda!3 (pre!16 f!367) (h!169 l!312)))))

(assert (= (and bs!77 (not res!476)) b!541))

(declare-fun b_lambda!73 () Bool)

(assert (=> (not b_lambda!73) (not b!541)))

(assert (=> b!541 t!341))

(declare-fun b_and!125 () Bool)

(assert (= b_and!121 (and (=> t!341 result!77) b_and!125)))

(assert (=> b!541 t!343))

(declare-fun b_and!127 () Bool)

(assert (= b_and!123 (and (=> t!343 result!79) b_and!127)))

(declare-fun bs!78 () Bool)

(declare-fun s!109 () Bool)

(assert (= bs!78 (and start!104 s!109)))

(assert (=> bs!78 (=> true (= (contains!26 l!312 (h!169 l!312)) (member (h!169 l!312) (content!46 l!312))))))

(declare-fun bs!79 () Bool)

(declare-fun m!385 () Bool)

(assert (= bs!79 m!385))

(assert (=> bs!79 m!359))

(declare-fun bs!80 () Bool)

(declare-fun m!387 () Bool)

(assert (= bs!80 m!387))

(assert (=> bs!80 s!109))

(assert (=> bs!79 m!387))

(assert (=> bs!79 s!109))

(assert (=> bs!79 s!107))

(declare-fun bs!81 () Bool)

(declare-fun m!383 () Bool)

(assert (= bs!81 m!383))

(assert (=> bs!81 m!385))

(assert (=> bs!81 s!107))

(assert (=> d!182 m!383))

(assert (=> b!518 d!182))

(declare-fun d!184 () Bool)

(assert (=> d!184 (= (pre!16 f!368) (pre!15 (f!375 f!368)))))

(assert (=> b!509 d!184))

(assert (=> b!509 d!172))

(declare-fun b!546 () Bool)

(declare-fun e!391 () Bool)

(declare-fun tp!123 () Bool)

(assert (=> b!546 (= e!391 (and tp_is_empty!3 tp!123))))

(assert (=> b!513 (= tp!119 e!391)))

(assert (= (and b!513 (is-Cons!41 (t!315 l!313))) b!546))

(declare-fun b!547 () Bool)

(declare-fun e!392 () Bool)

(declare-fun tp!124 () Bool)

(assert (=> b!547 (= e!392 (and tp_is_empty!3 tp!124))))

(assert (=> b!512 (= tp!118 e!392)))

(assert (= (and b!512 (is-Cons!41 (t!315 l!312))) b!547))

(declare-fun b_lambda!75 () Bool)

(assert (= b_lambda!67 (or (and b!517 b_free!19 (= (post!12 f!367) (post!12 f!368))) (and b!514 b_free!25) b_lambda!75)))

(declare-fun b_lambda!77 () Bool)

(assert (= b_lambda!59 (or (and b!517 b_free!19) (and b!514 b_free!25 (= (post!12 f!368) (post!12 f!367))) b_lambda!77)))

(declare-fun b_lambda!79 () Bool)

(assert (= b_lambda!57 (or (and b!510 b_free!15) (and b!511 b_free!21 (= (pre!15 (f!375 f!368)) (pre!15 (f!375 f!367)))) b_lambda!79)))

(declare-fun b_lambda!81 () Bool)

(assert (= b_lambda!49 (or (and b!510 b_free!15 (= (pre!15 (f!375 f!367)) (pre!16 f!368))) (and b!511 b_free!21 (= (pre!15 (f!375 f!368)) (pre!16 f!368))) b_lambda!81)))

(declare-fun b_lambda!83 () Bool)

(assert (= b_lambda!53 (or (and b!510 b_free!15) (and b!511 b_free!21 (= (pre!15 (f!375 f!368)) (pre!15 (f!375 f!367)))) b_lambda!83)))

(declare-fun b_lambda!85 () Bool)

(assert (= b_lambda!55 (or (and b!517 b_free!19) (and b!514 b_free!25 (= (post!12 f!368) (post!12 f!367))) b_lambda!85)))

(declare-fun b_lambda!87 () Bool)

(assert (= b_lambda!61 (or (and b!510 b_free!15 (= (pre!15 (f!375 f!367)) (pre!15 (f!375 f!368)))) (and b!511 b_free!21) b_lambda!87)))

(declare-fun b_lambda!89 () Bool)

(assert (= b_lambda!65 (or (and b!510 b_free!15 (= (pre!15 (f!375 f!367)) (pre!15 (f!375 f!368)))) (and b!511 b_free!21) b_lambda!89)))

(declare-fun b_lambda!91 () Bool)

(assert (= b_lambda!69 (or (and b!517 b_free!19) (and b!514 b_free!25 (= (post!12 f!368) (post!12 f!367))) b_lambda!91)))

(declare-fun b_lambda!93 () Bool)

(assert (= b_lambda!63 (or (and b!517 b_free!19 (= (post!12 f!367) (post!12 f!368))) (and b!514 b_free!25) b_lambda!93)))

(declare-fun bs!82 () Bool)

(assert (= bs!82 (and m!341 b!520)))

(declare-fun m!389 () Bool)

(assert (=> bs!82 m!389))

(assert (=> m!339 s!101))

(assert (=> m!347 s!101))

(assert (=> m!355 s!101))

(assert (=> m!339 s!99))

(assert (=> m!355 s!99))

(assert (=> m!355 s!97))

(push 1)

(assert b_and!67)

(assert (not b_next!15))

(assert tp_is_empty!5)

(assert (not bs!77))

(assert (not b_lambda!51))

(assert (not b_lambda!73))

(assert (not b_lambda!81))

(assert (not b_lambda!91))

(assert (not b_lambda!85))

(assert (not b!538))

(assert (not b_lambda!71))

(assert b_and!73)

(assert (not b_next!19))

(assert b_and!125)

(assert (not b_lambda!93))

(assert (not b_lambda!75))

(assert (not bs!66))

(assert b_and!117)

(assert (not b_next!17))

(assert (not bs!78))

(assert (not b!547))

(assert tp_is_empty!3)

(assert (not b_lambda!89))

(assert (not b!546))

(assert (not b_lambda!77))

(assert (not b!526))

(assert (not b!532))

(assert (not b_next!25))

(assert (not d!182))

(assert (not b_next!21))

(assert b_and!119)

(assert (not b_lambda!79))

(assert (not b_lambda!83))

(assert (not d!172))

(assert (not b_lambda!87))

(assert (not b!539))

(assert (not bs!65))

(assert (not b_next!23))

(assert (not b!540))

(assert b_and!127)

(assert (not b!537))

(check-sat)

(pop 1)

(push 1)

(assert b_and!67)

(assert (not b_next!15))

(assert b_and!73)

(assert (not b_next!19))

(assert b_and!125)

(assert b_and!117)

(assert (not b_next!17))

(assert (not b_next!25))

(assert (not b_next!21))

(assert b_and!119)

(assert (not b_next!23))

(assert b_and!127)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!186 () Bool)

(declare-fun lt!51 () Bool)

(assert (=> d!186 (= lt!51 (member x!1202 (content!46 l!312)))))

(declare-fun e!394 () Bool)

(assert (=> d!186 (= lt!51 e!394)))

(declare-fun res!477 () Bool)

(assert (=> d!186 (=> (not res!477) (not e!394))))

(assert (=> d!186 (= res!477 (is-Cons!41 l!312))))

(assert (=> d!186 (= (contains!26 l!312 x!1202) lt!51)))

(declare-fun b!548 () Bool)

(declare-fun e!393 () Bool)

(assert (=> b!548 (= e!394 e!393)))

(declare-fun res!478 () Bool)

(assert (=> b!548 (=> res!478 e!393)))

(assert (=> b!548 (= res!478 (= (h!169 l!312) x!1202))))

(declare-fun b!549 () Bool)

(assert (=> b!549 (= e!393 (contains!26 (t!315 l!312) x!1202))))

(assert (= (and d!186 res!477) b!548))

(assert (= (and b!548 (not res!478)) b!549))

(assert (=> d!186 m!359))

(assert (=> d!186 m!361))

(declare-fun bs!83 () Bool)

(declare-fun m!391 () Bool)

(assert (= bs!83 m!391))

(assert (=> bs!83 s!101))

(assert (=> bs!83 s!99))

(assert (=> bs!83 s!97))

(assert (=> b!549 m!391))

(assert (=> bs!65 d!186))

(declare-fun b_lambda!95 () Bool)

(assert (= b_lambda!51 (or (and b!510 b_free!15 (= (pre!15 (f!375 f!367)) (pre!16 f!367))) (and b!511 b_free!21 (= (pre!15 (f!375 f!368)) (pre!16 f!367))) b_lambda!95)))

(declare-fun bs!84 () Bool)

(assert (= bs!84 (and m!367 b!538)))

(assert (=> bs!84 m!369))

(assert (=> bs!84 m!371))

(declare-fun bs!85 () Bool)

(assert (= bs!85 (and m!373 b!540)))

(assert (=> bs!85 m!375))

(assert (=> bs!85 m!377))

(declare-fun bs!86 () Bool)

(assert (= bs!86 (and m!383 b!541)))

(assert (=> bs!86 m!383))

(declare-fun bs!87 () Bool)

(declare-fun s!111 () Bool)

(assert (= bs!87 (and start!104 s!111)))

(declare-fun res!479 () Bool)

(declare-fun e!395 () Bool)

(assert (=> bs!87 (=> res!479 e!395)))

(assert (=> bs!87 (= res!479 (not (contains!26 l!312 x!1221)))))

(assert (=> bs!87 (=> true e!395)))

(declare-fun b!550 () Bool)

(assert (=> b!550 (= e!395 (dynLambda!3 (pre!16 f!367) x!1221))))

(assert (= (and bs!87 (not res!479)) b!550))

(declare-fun b_lambda!97 () Bool)

(assert (=> (not b_lambda!97) (not b!550)))

(declare-fun t!345 () Bool)

(declare-fun tb!67 () Bool)

(assert (=> (and b!510 (= (pre!15 (f!375 f!367)) (pre!16 f!367)) t!345) tb!67))

(declare-fun result!83 () Bool)

(assert (=> tb!67 (= result!83 true)))

(assert (=> b!550 t!345))

(declare-fun b_and!129 () Bool)

(assert (= b_and!125 (and (=> t!345 result!83) b_and!129)))

(declare-fun t!347 () Bool)

(declare-fun tb!69 () Bool)

(assert (=> (and b!511 (= (pre!15 (f!375 f!368)) (pre!16 f!367)) t!347) tb!69))

(declare-fun result!85 () Bool)

(assert (=> tb!69 (= result!85 true)))

(assert (=> b!550 t!347))

(declare-fun b_and!131 () Bool)

(assert (= b_and!127 (and (=> t!347 result!85) b_and!131)))

(declare-fun m!393 () Bool)

(assert (=> m!367 m!393))

(assert (=> m!367 s!111))

(declare-fun bs!88 () Bool)

(declare-fun s!113 () Bool)

(assert (= bs!88 (and start!104 s!113)))

(declare-fun res!480 () Bool)

(declare-fun e!396 () Bool)

(assert (=> bs!88 (=> res!480 e!396)))

(assert (=> bs!88 (= res!480 (not (contains!26 l!312 x!1222)))))

(assert (=> bs!88 (=> true e!396)))

(declare-fun b!551 () Bool)

(assert (=> b!551 (= e!396 (dynLambda!3 (pre!16 f!367) x!1222))))

(assert (= (and bs!88 (not res!480)) b!551))

(declare-fun b_lambda!99 () Bool)

(assert (=> (not b_lambda!99) (not b!551)))

(declare-fun t!349 () Bool)

(declare-fun tb!71 () Bool)

(assert (=> (and b!510 (= (pre!15 (f!375 f!367)) (pre!16 f!367)) t!349) tb!71))

(declare-fun result!87 () Bool)

(assert (=> tb!71 (= result!87 true)))

(assert (=> b!551 t!349))

(declare-fun b_and!133 () Bool)

(assert (= b_and!129 (and (=> t!349 result!87) b_and!133)))

(declare-fun t!351 () Bool)

(declare-fun tb!73 () Bool)

(assert (=> (and b!511 (= (pre!15 (f!375 f!368)) (pre!16 f!367)) t!351) tb!73))

(declare-fun result!89 () Bool)

(assert (=> tb!73 (= result!89 true)))

(assert (=> b!551 t!351))

(declare-fun b_and!135 () Bool)

(assert (= b_and!131 (and (=> t!351 result!89) b_and!135)))

(declare-fun m!395 () Bool)

(assert (=> m!373 m!395))

(assert (=> m!373 s!113))

(assert (=> m!389 s!99))

(push 1)

(assert b_and!67)

(assert (not b_next!15))

(assert (not b_lambda!97))

(assert tp_is_empty!5)

(assert (not bs!77))

(assert (not d!186))

(assert (not b_lambda!73))

(assert (not b_lambda!81))

(assert (not b_lambda!91))

(assert (not b_lambda!85))

(assert (not b!538))

(assert (not b_lambda!71))

(assert (not b_lambda!99))

(assert b_and!73)

(assert (not b_next!19))

(assert b_and!135)

(assert (not b_lambda!93))

(assert (not b_lambda!75))

(assert (not bs!66))

(assert b_and!117)

(assert (not b_next!17))

(assert (not bs!78))

(assert (not b!547))

(assert tp_is_empty!3)

(assert (not b_lambda!89))

(assert (not b!546))

(assert (not b_lambda!77))

(assert b_and!133)

(assert (not b!526))

(assert (not b!532))

(assert (not b_next!25))

(assert (not d!182))

(assert (not b_next!21))

(assert (not bs!88))

(assert (not bs!87))

(assert b_and!119)

(assert (not b_lambda!79))

(assert (not b_lambda!83))

(assert (not d!172))

(assert (not b_lambda!95))

(assert (not b_lambda!87))

(assert (not b!539))

(assert (not b!549))

(assert (not b_next!23))

(assert (not b!540))

(assert (not b!537))

(check-sat)

(pop 1)

(push 1)

(assert b_and!67)

(assert (not b_next!15))

(assert b_and!73)

(assert (not b_next!19))

(assert b_and!135)

(assert b_and!117)

(assert (not b_next!17))

(assert b_and!133)

(assert (not b_next!25))

(assert (not b_next!21))

(assert b_and!119)

(assert (not b_next!23))

(check-sat)

(pop 1)

