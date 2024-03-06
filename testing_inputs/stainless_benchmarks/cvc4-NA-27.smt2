; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!118 () Bool)

(assert start!118)

(declare-fun b!598 () Bool)

(declare-fun b_free!33 () Bool)

(declare-fun b_next!33 () Bool)

(assert (=> b!598 (= b_free!33 (not b_next!33))))

(declare-fun tp!153 () Bool)

(declare-fun b_and!143 () Bool)

(assert (=> b!598 (= tp!153 b_and!143)))

(declare-fun b_free!35 () Bool)

(declare-fun b_next!35 () Bool)

(assert (=> b!598 (= b_free!35 (not b_next!35))))

(declare-fun tp!152 () Bool)

(declare-fun b_and!145 () Bool)

(assert (=> b!598 (= tp!152 b_and!145)))

(declare-fun b!602 () Bool)

(declare-fun b_free!37 () Bool)

(declare-fun b_next!37 () Bool)

(assert (=> b!602 (= b_free!37 (not b_next!37))))

(declare-fun tp!154 () Bool)

(declare-fun b_and!147 () Bool)

(assert (=> b!602 (= tp!154 b_and!147)))

(declare-fun b!601 () Bool)

(declare-fun res!508 () Bool)

(declare-fun e!433 () Bool)

(assert (=> b!601 (=> res!508 e!433)))

(declare-datatypes () ((B!291 (B!292 (val!6 Int)))))

(declare-datatypes () ((List!43 (Cons!44 (h!172 B!291) (t!356 List!43)) (Nil!45))))

(declare-fun res!414 () List!43)

(declare-fun x!1255 () B!291)

(declare-fun contains!28 (List!43 B!291) Bool)

(assert (=> b!601 (= res!508 (not (contains!28 res!414 x!1255)))))

(declare-fun inst!13 () Bool)

(declare-fun tp_is_empty!11 () Bool)

(assert (=> b!601 (= inst!13 (=> tp_is_empty!11 e!433))))

(declare-fun b!603 () Bool)

(declare-datatypes () ((A!556 (A!557 (val!7 Int)))))

(declare-datatypes () ((~>!10 (~>!11 (pre!18 Int) (f!378 Int)))))

(declare-datatypes () ((~>>!11 (~>>!12 (f!379 ~>!10) (post!14 Int)))))

(declare-fun f!367 () ~>>!11)

(declare-fun dynLambda!5 (Int B!291) Bool)

(assert (=> b!603 (= e!433 (dynLambda!5 (post!14 f!367) x!1255))))

(assert (= (and b!601 (not res!508)) b!603))

(declare-fun b_lambda!101 () Bool)

(assert (=> (not b_lambda!101) (not b!603)))

(declare-fun t!355 () Bool)

(declare-fun tb!75 () Bool)

(assert (=> (and b!602 (= (post!14 f!367) (post!14 f!367)) t!355) tb!75))

(declare-fun result!91 () Bool)

(assert (=> tb!75 (= result!91 true)))

(assert (=> b!603 t!355))

(declare-fun b_and!149 () Bool)

(assert (= b_and!147 (and (=> t!355 result!91) b_and!149)))

(declare-fun m!407 () Bool)

(assert (=> b!601 m!407))

(declare-fun m!409 () Bool)

(assert (=> b!603 m!409))

(declare-fun m!411 () Bool)

(assert (=> start!118 m!411))

(declare-fun bs!91 () Bool)

(declare-fun b!600 () Bool)

(declare-fun s!115 () Bool)

(declare-fun b!597 () Bool)

(assert (= bs!91 (and start!118 b!600 b!601 s!115 b!597)))

(declare-fun content!47 (List!43) (Set B!291))

(assert (=> bs!91 (=> true (= (contains!28 res!414 x!1255) (member x!1255 (content!47 res!414))))))

(declare-fun m!413 () Bool)

(assert (=> m!407 m!413))

(declare-fun bs!92 () Bool)

(declare-fun m!415 () Bool)

(assert (= bs!92 m!415))

(assert (=> bs!92 s!115))

(assert (=> m!407 m!415))

(assert (=> m!407 s!115))

(declare-fun b!596 () Bool)

(declare-fun e!429 () Bool)

(declare-fun tp!151 () Bool)

(assert (=> b!596 (= e!429 (and tp_is_empty!11 tp!151))))

(declare-fun res!507 () Bool)

(declare-fun e!431 () Bool)

(assert (=> b!597 (=> (not res!507) (not e!431))))

(declare-datatypes () ((List!44 (Cons!45 (h!173 A!556) (t!357 List!44)) (Nil!46))))

(declare-fun l!312 () List!44)

(assert (=> b!597 (= res!507 (is-Cons!45 l!312))))

(declare-fun res!505 () Bool)

(assert (=> start!118 (=> (not res!505) (not e!431))))

(assert (=> start!118 (= res!505 true)))

(assert (=> start!118 true))

(assert (=> start!118 e!431))

(declare-fun e!428 () Bool)

(assert (=> start!118 e!428))

(declare-fun e!430 () Bool)

(declare-fun inv!103 (~>>!11) Bool)

(assert (=> start!118 (and (inv!103 f!367) e!430)))

(assert (=> start!118 e!429))

(declare-fun e!432 () Bool)

(assert (=> b!598 (= e!432 (and tp!153 tp!152))))

(declare-fun b!599 () Bool)

(declare-fun tp_is_empty!13 () Bool)

(declare-fun tp!150 () Bool)

(assert (=> b!599 (= e!428 (and tp_is_empty!13 tp!150))))

(declare-fun res!506 () Bool)

(assert (=> b!600 (=> (not res!506) (not e!431))))

(declare-fun apply!39 (~>>!11 A!556) B!291)

(declare-fun map!61 (List!44 ~>>!11) List!43)

(assert (=> b!600 (= res!506 (= res!414 (Cons!44 (apply!39 f!367 (h!173 l!312)) (map!61 (t!357 l!312) f!367))))))

(assert (=> b!601 (= e!431 (not inst!13))))

(assert (=> b!601 true))

(assert (=> b!602 (= e!430 (and e!432 tp!154))))

(assert (= (and start!118 res!505) b!597))

(assert (= (and b!597 res!507) b!600))

(assert (= (and b!600 res!506) b!601))

(assert (= (and start!118 (is-Cons!45 l!312)) b!599))

(assert (= b!602 b!598))

(assert (= start!118 b!602))

(assert (= (and start!118 (is-Cons!44 res!414)) b!596))

(declare-fun m!417 () Bool)

(assert (=> start!118 m!417))

(declare-fun m!419 () Bool)

(assert (=> b!600 m!419))

(declare-fun m!421 () Bool)

(assert (=> b!600 m!421))

(push 1)

(assert (not b!596))

(assert tp_is_empty!11)

(assert (not b_next!35))

(assert b_and!145)

(assert (not b_lambda!101))

(assert (not b!599))

(assert (not b!601))

(assert b_and!143)

(assert tp_is_empty!13)

(assert (not b_next!37))

(assert (not b!600))

(assert b_and!149)

(assert (not bs!91))

(assert (not b_next!33))

(assert (not start!118))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!35))

(assert b_and!145)

(assert b_and!143)

(assert (not b_next!37))

(assert b_and!149)

(assert (not b_next!33))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!103 () Bool)

(assert (= b_lambda!101 (or (and b!602 b_free!37) b_lambda!103)))

(push 1)

(assert (not b!596))

(assert tp_is_empty!11)

(assert (not b_next!35))

(assert b_and!145)

(assert (not b_lambda!103))

(assert (not b!599))

(assert (not b!601))

(assert b_and!143)

(assert tp_is_empty!13)

(assert (not b_next!37))

(assert (not b!600))

(assert b_and!149)

(assert (not bs!91))

(assert (not b_next!33))

(assert (not start!118))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!35))

(assert b_and!145)

(assert b_and!143)

(assert (not b_next!37))

(assert b_and!149)

(assert (not b_next!33))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!188 () Bool)

(declare-fun lt!54 () Bool)

(assert (=> d!188 (= lt!54 (member x!1255 (content!47 res!414)))))

(declare-fun e!439 () Bool)

(assert (=> d!188 (= lt!54 e!439)))

(declare-fun res!514 () Bool)

(assert (=> d!188 (=> (not res!514) (not e!439))))

(assert (=> d!188 (= res!514 (is-Cons!44 res!414))))

(assert (=> d!188 (= (contains!28 res!414 x!1255) lt!54)))

(declare-fun b!608 () Bool)

(declare-fun e!438 () Bool)

(assert (=> b!608 (= e!439 e!438)))

(declare-fun res!513 () Bool)

(assert (=> b!608 (=> res!513 e!438)))

(assert (=> b!608 (= res!513 (= (h!172 res!414) x!1255))))

(declare-fun b!609 () Bool)

(assert (=> b!609 (= e!438 (contains!28 (t!356 res!414) x!1255))))

(assert (= (and d!188 res!514) b!608))

(assert (= (and b!608 (not res!513)) b!609))

(assert (=> d!188 m!413))

(assert (=> d!188 m!415))

(declare-fun bs!93 () Bool)

(declare-fun m!423 () Bool)

(assert (= bs!93 m!423))

(assert (=> bs!93 s!115))

(assert (=> b!609 m!423))

(assert (=> b!601 d!188))

(assert (=> bs!91 d!188))

(declare-fun d!190 () Bool)

(declare-fun c!111 () Bool)

(assert (=> d!190 (= c!111 (is-Nil!45 res!414))))

(declare-fun e!442 () (Set B!291))

(assert (=> d!190 (= (content!47 res!414) e!442)))

(declare-fun b!614 () Bool)

(assert (=> b!614 (= e!442 (as emptyset (Set B!291)))))

(declare-fun b!615 () Bool)

(assert (=> b!615 (= e!442 (union (insert (h!172 res!414) (as emptyset (Set B!291))) (content!47 (t!356 res!414))))))

(assert (= (and d!190 c!111) b!614))

(assert (= (and d!190 (not c!111)) b!615))

(declare-fun m!425 () Bool)

(assert (=> b!615 m!425))

(declare-fun m!427 () Bool)

(assert (=> b!615 m!427))

(assert (=> bs!91 d!190))

(declare-fun d!192 () Bool)

(declare-fun lt!57 () B!291)

(assert (=> d!192 (dynLambda!5 (post!14 f!367) lt!57)))

(declare-fun apply!40 (~>!10 A!556) B!291)

(assert (=> d!192 (= lt!57 (apply!40 (f!379 f!367) (h!173 l!312)))))

(declare-fun dynLambda!6 (Int A!556) Bool)

(declare-fun pre!19 (~>>!11) Int)

(assert (=> d!192 (dynLambda!6 (pre!19 f!367) (h!173 l!312))))

(assert (=> d!192 (= (apply!39 f!367 (h!173 l!312)) lt!57)))

(declare-fun b_lambda!105 () Bool)

(assert (=> (not b_lambda!105) (not d!192)))

(declare-fun t!359 () Bool)

(declare-fun tb!77 () Bool)

(assert (=> (and b!602 (= (post!14 f!367) (post!14 f!367)) t!359) tb!77))

(declare-fun result!93 () Bool)

(assert (=> tb!77 (= result!93 true)))

(assert (=> d!192 t!359))

(declare-fun b_and!151 () Bool)

(assert (= b_and!149 (and (=> t!359 result!93) b_and!151)))

(declare-fun b_lambda!107 () Bool)

(assert (=> (not b_lambda!107) (not d!192)))

(declare-fun t!361 () Bool)

(declare-fun tb!79 () Bool)

(assert (=> (and b!598 (= (pre!18 (f!379 f!367)) (pre!19 f!367)) t!361) tb!79))

(declare-fun result!95 () Bool)

(assert (=> tb!79 (= result!95 true)))

(assert (=> d!192 t!361))

(declare-fun b_and!153 () Bool)

(assert (= b_and!143 (and (=> t!361 result!95) b_and!153)))

(declare-fun m!429 () Bool)

(assert (=> d!192 m!429))

(declare-fun m!431 () Bool)

(assert (=> d!192 m!431))

(assert (=> d!192 m!411))

(declare-fun bs!94 () Bool)

(declare-fun s!117 () Bool)

(assert (= bs!94 (and start!118 s!117)))

(declare-fun res!516 () Bool)

(declare-fun e!443 () Bool)

(assert (=> bs!94 (=> res!516 e!443)))

(declare-fun contains!29 (List!44 A!556) Bool)

(assert (=> bs!94 (= res!516 (not (contains!29 l!312 (h!173 l!312))))))

(assert (=> bs!94 (=> true e!443)))

(declare-fun b!616 () Bool)

(assert (=> b!616 (= e!443 (dynLambda!6 (pre!19 f!367) (h!173 l!312)))))

(assert (= (and bs!94 (not res!516)) b!616))

(declare-fun b_lambda!109 () Bool)

(assert (=> (not b_lambda!109) (not b!616)))

(assert (=> b!616 t!361))

(declare-fun b_and!155 () Bool)

(assert (= b_and!153 (and (=> t!361 result!95) b_and!155)))

(declare-fun bs!95 () Bool)

(declare-fun s!119 () Bool)

(assert (= bs!95 (and start!118 s!119)))

(declare-fun content!48 (List!44) (Set A!556))

(assert (=> bs!95 (=> true (= (contains!29 l!312 (h!173 l!312)) (member (h!173 l!312) (content!48 l!312))))))

(declare-fun bs!96 () Bool)

(declare-fun m!435 () Bool)

(assert (= bs!96 m!435))

(declare-fun m!437 () Bool)

(assert (=> bs!96 m!437))

(declare-fun bs!97 () Bool)

(declare-fun m!439 () Bool)

(assert (= bs!97 m!439))

(assert (=> bs!97 s!119))

(assert (=> bs!96 m!439))

(assert (=> bs!96 s!119))

(assert (=> bs!96 s!117))

(declare-fun bs!98 () Bool)

(declare-fun m!433 () Bool)

(assert (= bs!98 m!433))

(assert (=> bs!98 m!435))

(assert (=> bs!98 s!117))

(assert (=> d!192 m!433))

(assert (=> b!600 d!192))

(declare-fun bs!99 () Bool)

(declare-fun d!194 () Bool)

(assert (= bs!99 (and d!194 start!118)))

(assert (=> (and bs!99 (= (t!357 l!312) l!312)) (= true true)))

(declare-fun b!629 () Bool)

(assert (=> b!629 m!411))

(declare-fun bs!100 () Bool)

(declare-fun s!121 () Bool)

(assert (= bs!100 (and d!194 b!629 s!121)))

(declare-fun res!528 () Bool)

(declare-fun e!457 () Bool)

(assert (=> bs!100 (=> res!528 e!457)))

(assert (=> bs!100 (= res!528 (not (contains!29 (t!357 l!312) (h!173 l!312))))))

(assert (=> bs!100 (=> true e!457)))

(declare-fun b!633 () Bool)

(assert (=> b!633 (= e!457 (dynLambda!6 (pre!19 f!367) (h!173 l!312)))))

(assert (= (and bs!100 (not res!528)) b!633))

(declare-fun b_lambda!111 () Bool)

(assert (=> (not b_lambda!111) (not b!633)))

(assert (=> b!633 t!361))

(declare-fun b_and!157 () Bool)

(assert (= b_and!155 (and (=> t!361 result!95) b_and!157)))

(declare-fun bs!101 () Bool)

(declare-fun m!441 () Bool)

(assert (= bs!101 m!441))

(assert (=> bs!101 s!119))

(assert (=> bs!101 s!117))

(declare-fun bs!102 () Bool)

(declare-fun s!123 () Bool)

(assert (= bs!102 (and d!194 s!123)))

(assert (=> bs!102 (=> true (= (contains!29 (t!357 l!312) (h!173 l!312)) (member (h!173 l!312) (content!48 (t!357 l!312)))))))

(declare-fun m!443 () Bool)

(assert (=> bs!101 m!443))

(declare-fun bs!103 () Bool)

(declare-fun m!445 () Bool)

(assert (= bs!103 m!445))

(assert (=> bs!103 s!119))

(assert (=> bs!103 s!123))

(assert (=> bs!101 m!445))

(assert (=> bs!101 s!123))

(assert (=> bs!101 s!121))

(assert (=> m!435 m!441))

(assert (=> m!435 s!121))

(assert (=> m!433 s!121))

(declare-fun bs!104 () Bool)

(assert (= bs!104 (and b!629 start!118)))

(assert (=> (and bs!104 (= (t!357 l!312) l!312)) (= true true)))

(declare-fun bs!105 () Bool)

(assert (= bs!105 (and d!194 b!601)))

(declare-fun lt!60 () List!43)

(assert (=> (and bs!105 (= lt!60 res!414)) (= true true)))

(declare-fun bs!106 () Bool)

(declare-fun b!632 () Bool)

(declare-fun s!125 () Bool)

(assert (= bs!106 (and d!194 b!632 s!125)))

(declare-fun res!529 () Bool)

(declare-fun e!458 () Bool)

(assert (=> bs!106 (=> res!529 e!458)))

(assert (=> bs!106 (= res!529 (not (contains!28 lt!60 x!1255)))))

(assert (=> bs!106 (=> true e!458)))

(declare-fun b!634 () Bool)

(assert (=> b!634 (= e!458 (dynLambda!5 (post!14 f!367) x!1255))))

(assert (= (and bs!106 (not res!529)) b!634))

(declare-fun b_lambda!113 () Bool)

(assert (=> (not b_lambda!113) (not b!634)))

(assert (=> b!634 t!355))

(declare-fun b_and!159 () Bool)

(assert (= b_and!151 (and (=> t!355 result!91) b_and!159)))

(declare-fun bs!107 () Bool)

(declare-fun m!447 () Bool)

(assert (= bs!107 m!447))

(assert (=> bs!107 s!115))

(declare-fun bs!108 () Bool)

(declare-fun s!127 () Bool)

(assert (= bs!108 (and d!194 s!127)))

(assert (=> bs!108 (=> true (= (contains!28 lt!60 x!1255) (member x!1255 (content!47 lt!60))))))

(declare-fun m!449 () Bool)

(assert (=> bs!107 m!449))

(declare-fun bs!109 () Bool)

(declare-fun m!451 () Bool)

(assert (= bs!109 m!451))

(assert (=> bs!109 s!115))

(assert (=> bs!109 s!127))

(assert (=> bs!107 m!451))

(assert (=> bs!107 s!127))

(assert (=> bs!107 s!125))

(assert (=> m!423 m!447))

(assert (=> m!423 s!125))

(assert (=> m!407 s!125))

(assert (=> m!409 s!125))

(declare-fun bs!110 () Bool)

(declare-fun s!129 () Bool)

(assert (= bs!110 (and d!194 b!632 s!129)))

(declare-fun res!530 () Bool)

(declare-fun e!459 () Bool)

(assert (=> bs!110 (=> res!530 e!459)))

(assert (=> bs!110 (= res!530 (not (contains!28 lt!60 lt!57)))))

(assert (=> bs!110 (=> true e!459)))

(declare-fun b!635 () Bool)

(assert (=> b!635 (= e!459 (dynLambda!5 (post!14 f!367) lt!57))))

(assert (= (and bs!110 (not res!530)) b!635))

(declare-fun b_lambda!115 () Bool)

(assert (=> (not b_lambda!115) (not b!635)))

(assert (=> b!635 t!359))

(declare-fun b_and!161 () Bool)

(assert (= b_and!159 (and (=> t!359 result!93) b_and!161)))

(declare-fun bs!111 () Bool)

(declare-fun s!131 () Bool)

(assert (= bs!111 (and d!194 s!131)))

(assert (=> bs!111 (=> true (= (contains!28 lt!60 lt!57) (member lt!57 (content!47 lt!60))))))

(declare-fun bs!112 () Bool)

(declare-fun m!453 () Bool)

(assert (= bs!112 m!453))

(assert (=> bs!112 m!449))

(declare-fun bs!113 () Bool)

(declare-fun m!455 () Bool)

(assert (= bs!113 m!455))

(assert (=> bs!113 s!131))

(assert (=> bs!112 m!455))

(assert (=> bs!112 s!131))

(assert (=> bs!112 s!129))

(assert (=> m!429 m!453))

(assert (=> m!429 s!129))

(declare-fun bs!114 () Bool)

(assert (= bs!114 (and b!632 b!601)))

(assert (=> (and bs!114 (= lt!60 res!414)) (= true inst!13)))

(declare-fun b!631 () Bool)

(declare-fun e!456 () List!43)

(assert (=> b!631 (= e!456 Nil!45)))

(declare-fun e!455 () Bool)

(assert (=> d!194 e!455))

(declare-fun res!527 () Bool)

(assert (=> d!194 (=> (not res!527) (not e!455))))

(assert (=> d!194 (= res!527 true)))

(assert (=> d!194 (= lt!60 e!456)))

(declare-fun c!114 () Bool)

(assert (=> d!194 (= c!114 (is-Cons!45 (t!357 l!312)))))

(declare-fun e!454 () Bool)

(assert (=> d!194 e!454))

(declare-fun res!526 () Bool)

(assert (=> d!194 (=> (not res!526) (not e!454))))

(assert (=> d!194 (= res!526 true)))

(assert (=> d!194 (= (map!61 (t!357 l!312) f!367) lt!60)))

(assert (=> b!632 (= e!455 true)))

(assert (=> b!629 (= e!454 true)))

(declare-fun b!630 () Bool)

(assert (=> b!630 (= e!456 (Cons!44 (apply!39 f!367 (h!173 (t!357 l!312))) (map!61 (t!357 (t!357 l!312)) f!367)))))

(assert (= (and d!194 res!526) b!629))

(assert (= (and d!194 c!114) b!630))

(assert (= (and d!194 (not c!114)) b!631))

(assert (= (and d!194 res!527) b!632))

(declare-fun m!457 () Bool)

(assert (=> b!630 m!457))

(declare-fun m!459 () Bool)

(assert (=> b!630 m!459))

(assert (=> b!600 d!194))

(declare-fun d!196 () Bool)

(assert (=> d!196 (= (pre!19 f!367) (pre!18 (f!379 f!367)))))

(assert (=> start!118 d!196))

(declare-fun d!198 () Bool)

(declare-fun res!535 () Bool)

(declare-fun e!464 () Bool)

(assert (=> d!198 (=> res!535 e!464)))

(declare-fun x!1294 () A!556)

(assert (=> d!198 (= res!535 (not (dynLambda!6 (pre!18 (f!379 f!367)) x!1294)))))

(declare-fun inst!16 () Bool)

(assert (=> d!198 (= inst!16 (=> tp_is_empty!13 e!464))))

(declare-fun b!640 () Bool)

(assert (=> b!640 (= e!464 (dynLambda!5 (post!14 f!367) (apply!40 (f!379 f!367) x!1294)))))

(assert (= (and d!198 (not res!535)) b!640))

(declare-fun b_lambda!117 () Bool)

(assert (=> (not b_lambda!117) (not d!198)))

(declare-fun t!363 () Bool)

(declare-fun tb!81 () Bool)

(assert (=> (and b!598 (= (pre!18 (f!379 f!367)) (pre!18 (f!379 f!367))) t!363) tb!81))

(declare-fun result!97 () Bool)

(assert (=> tb!81 (= result!97 true)))

(assert (=> d!198 t!363))

(declare-fun b_and!163 () Bool)

(assert (= b_and!157 (and (=> t!363 result!97) b_and!163)))

(declare-fun b_lambda!119 () Bool)

(assert (=> (not b_lambda!119) (not b!640)))

(declare-fun t!365 () Bool)

(declare-fun tb!83 () Bool)

(assert (=> (and b!602 (= (post!14 f!367) (post!14 f!367)) t!365) tb!83))

(declare-fun result!99 () Bool)

(assert (=> tb!83 (= result!99 true)))

(assert (=> b!640 t!365))

(declare-fun b_and!165 () Bool)

(assert (= b_and!161 (and (=> t!365 result!99) b_and!165)))

(declare-fun m!461 () Bool)

(assert (=> d!198 m!461))

(declare-fun m!463 () Bool)

(assert (=> b!640 m!463))

(assert (=> b!640 m!463))

(declare-fun bs!115 () Bool)

(declare-fun s!133 () Bool)

(assert (= bs!115 (and d!194 b!632 s!133)))

(declare-fun res!536 () Bool)

(declare-fun e!465 () Bool)

(assert (=> bs!115 (=> res!536 e!465)))

(assert (=> bs!115 (= res!536 (not (contains!28 lt!60 (apply!40 (f!379 f!367) x!1294))))))

(assert (=> bs!115 (=> true e!465)))

(declare-fun b!641 () Bool)

(assert (=> b!641 (= e!465 (dynLambda!5 (post!14 f!367) (apply!40 (f!379 f!367) x!1294)))))

(assert (= (and bs!115 (not res!536)) b!641))

(declare-fun b_lambda!121 () Bool)

(assert (=> (not b_lambda!121) (not b!641)))

(assert (=> b!641 t!365))

(declare-fun b_and!167 () Bool)

(assert (= b_and!165 (and (=> t!365 result!99) b_and!167)))

(declare-fun bs!116 () Bool)

(declare-fun s!135 () Bool)

(assert (= bs!116 (and d!194 s!135)))

(assert (=> bs!116 (=> true (= (contains!28 lt!60 (apply!40 (f!379 f!367) x!1294)) (member (apply!40 (f!379 f!367) x!1294) (content!47 lt!60))))))

(declare-fun bs!117 () Bool)

(declare-fun m!467 () Bool)

(assert (= bs!117 m!467))

(assert (=> bs!117 m!449))

(declare-fun bs!118 () Bool)

(declare-fun m!469 () Bool)

(assert (= bs!118 m!469))

(assert (=> bs!118 s!135))

(assert (=> bs!117 m!469))

(assert (=> bs!117 s!135))

(assert (=> bs!117 s!133))

(declare-fun bs!119 () Bool)

(declare-fun m!465 () Bool)

(assert (= bs!119 m!465))

(assert (=> bs!119 m!467))

(assert (=> bs!119 s!133))

(assert (=> b!640 m!465))

(declare-fun bs!120 () Bool)

(declare-fun neg-inst!10 () Bool)

(declare-fun s!137 () Bool)

(assert (= bs!120 (and neg-inst!10 s!137)))

(declare-fun res!537 () Bool)

(declare-fun e!466 () Bool)

(assert (=> bs!120 (=> res!537 e!466)))

(assert (=> bs!120 (= res!537 (not (dynLambda!6 (pre!18 (f!379 f!367)) x!1294)))))

(assert (=> bs!120 (=> true e!466)))

(declare-fun b!642 () Bool)

(assert (=> b!642 (= e!466 (dynLambda!5 (post!14 f!367) (apply!40 (f!379 f!367) x!1294)))))

(assert (= (and bs!120 (not res!537)) b!642))

(declare-fun b_lambda!123 () Bool)

(assert (=> (not b_lambda!123) (not bs!120)))

(assert (=> bs!120 t!363))

(declare-fun b_and!169 () Bool)

(assert (= b_and!163 (and (=> t!363 result!97) b_and!169)))

(declare-fun b_lambda!125 () Bool)

(assert (=> (not b_lambda!125) (not b!642)))

(assert (=> b!642 t!365))

(declare-fun b_and!171 () Bool)

(assert (= b_and!167 (and (=> t!365 result!99) b_and!171)))

(assert (=> m!463 m!461))

(assert (=> m!463 s!137))

(assert (=> m!461 s!137))

(declare-fun bs!121 () Bool)

(assert (= bs!121 (and neg-inst!10 d!198)))

(assert (=> bs!121 (= true inst!16)))

(assert (=> d!198 (= (inv!103 f!367) inst!16)))

(assert (= neg-inst!10 inst!16))

(assert (=> start!118 d!198))

(declare-fun b!647 () Bool)

(declare-fun e!469 () Bool)

(declare-fun tp!157 () Bool)

(assert (=> b!647 (= e!469 (and tp_is_empty!11 tp!157))))

(assert (=> b!596 (= tp!151 e!469)))

(assert (= (and b!596 (is-Cons!44 (t!356 res!414))) b!647))

(declare-fun b!652 () Bool)

(declare-fun e!472 () Bool)

(declare-fun tp!160 () Bool)

(assert (=> b!652 (= e!472 (and tp_is_empty!13 tp!160))))

(assert (=> b!599 (= tp!150 e!472)))

(assert (= (and b!599 (is-Cons!45 (t!357 l!312))) b!652))

(declare-fun b_lambda!127 () Bool)

(assert (= b_lambda!115 (or (and b!602 b_free!37) b_lambda!127)))

(declare-fun b_lambda!129 () Bool)

(assert (= b_lambda!123 (or (and b!598 b_free!33) b_lambda!129)))

(declare-fun b_lambda!131 () Bool)

(assert (= b_lambda!105 (or (and b!602 b_free!37) b_lambda!131)))

(declare-fun b_lambda!133 () Bool)

(assert (= b_lambda!119 (or (and b!602 b_free!37) b_lambda!133)))

(declare-fun b_lambda!135 () Bool)

(assert (= b_lambda!117 (or (and b!598 b_free!33) b_lambda!135)))

(declare-fun b_lambda!137 () Bool)

(assert (= b_lambda!113 (or (and b!602 b_free!37) b_lambda!137)))

(declare-fun b_lambda!139 () Bool)

(assert (= b_lambda!121 (or (and b!602 b_free!37) b_lambda!139)))

(declare-fun b_lambda!141 () Bool)

(assert (= b_lambda!125 (or (and b!602 b_free!37) b_lambda!141)))

(push 1)

(assert (not bs!94))

(assert (not b!609))

(assert tp_is_empty!11)

(assert (not b!647))

(assert (not b_lambda!127))

(assert (not b!642))

(assert (not b!652))

(assert (not b_next!35))

(assert (not b!615))

(assert (not bs!100))

(assert b_and!145)

(assert (not b_lambda!103))

(assert (not b_lambda!129))

(assert (not b_lambda!133))

(assert (not bs!108))

(assert (not b_lambda!107))

(assert (not bs!115))

(assert (not d!188))

(assert tp_is_empty!13)

(assert (not bs!111))

(assert (not bs!95))

(assert (not b_next!37))

(assert (not bs!116))

(assert (not bs!102))

(assert (not b_lambda!141))

(assert b_and!171)

(assert (not b!629))

(assert (not b_lambda!111))

(assert (not b_lambda!135))

(assert (not b_lambda!139))

(assert (not b_next!33))

(assert (not b_lambda!131))

(assert (not bs!106))

(assert b_and!169)

(assert (not b!630))

(assert (not b_lambda!137))

(assert (not b_lambda!109))

(assert (not d!192))

(assert (not bs!110))

(assert (not b!640))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!35))

(assert b_and!145)

(assert (not b_next!37))

(assert b_and!171)

(assert (not b_next!33))

(assert b_and!169)

(check-sat)

(pop 1)

