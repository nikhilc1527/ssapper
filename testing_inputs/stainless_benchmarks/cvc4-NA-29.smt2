; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!134 () Bool)

(assert start!134)

(declare-fun b!692 () Bool)

(declare-fun b_free!45 () Bool)

(declare-fun b_next!45 () Bool)

(assert (=> b!692 (= b_free!45 (not b_next!45))))

(declare-fun tp!188 () Bool)

(declare-fun b_and!179 () Bool)

(assert (=> b!692 (= tp!188 b_and!179)))

(declare-fun b_free!47 () Bool)

(declare-fun b_next!47 () Bool)

(assert (=> b!692 (= b_free!47 (not b_next!47))))

(declare-fun tp!186 () Bool)

(declare-fun b_and!181 () Bool)

(assert (=> b!692 (= tp!186 b_and!181)))

(declare-fun b!693 () Bool)

(declare-fun b_free!49 () Bool)

(declare-fun b_next!49 () Bool)

(assert (=> b!693 (= b_free!49 (not b_next!49))))

(declare-fun tp!190 () Bool)

(declare-fun b_and!183 () Bool)

(assert (=> b!693 (= tp!190 b_and!183)))

(declare-fun b!696 () Bool)

(declare-fun res!559 () Bool)

(declare-fun e!509 () Bool)

(assert (=> b!696 (=> res!559 e!509)))

(declare-datatypes () ((B!295 (B!296 (val!10 Int)))))

(declare-datatypes () ((List!47 (Cons!48 (h!176 B!295) (t!370 List!47)) (Nil!49))))

(declare-fun res!417 () List!47)

(declare-fun x!1326 () B!295)

(declare-fun contains!31 (List!47 B!295) Bool)

(assert (=> b!696 (= res!559 (not (contains!31 res!417 x!1326)))))

(declare-fun inst!19 () Bool)

(declare-fun tp_is_empty!19 () Bool)

(assert (=> b!696 (= inst!19 (=> tp_is_empty!19 e!509))))

(declare-fun b!698 () Bool)

(declare-datatypes () ((A!560 (A!561 (val!11 Int)))))

(declare-datatypes () ((~>!14 (~>!15 (pre!21 Int) (f!383 Int)))))

(declare-datatypes () ((~>>!15 (~>>!16 (f!384 ~>!14) (post!16 Int)))))

(declare-fun f!367 () ~>>!15)

(declare-fun dynLambda!7 (Int B!295) Bool)

(assert (=> b!698 (= e!509 (dynLambda!7 (post!16 f!367) x!1326))))

(assert (= (and b!696 (not res!559)) b!698))

(declare-fun b_lambda!143 () Bool)

(assert (=> (not b_lambda!143) (not b!698)))

(declare-fun t!369 () Bool)

(declare-fun tb!85 () Bool)

(assert (=> (and b!693 (= (post!16 f!367) (post!16 f!367)) t!369) tb!85))

(declare-fun result!105 () Bool)

(assert (=> tb!85 (= result!105 true)))

(assert (=> b!698 t!369))

(declare-fun b_and!185 () Bool)

(assert (= b_and!183 (and (=> t!369 result!105) b_and!185)))

(declare-fun m!477 () Bool)

(assert (=> b!696 m!477))

(declare-fun m!479 () Bool)

(assert (=> b!698 m!479))

(declare-fun m!481 () Bool)

(assert (=> start!134 m!481))

(declare-fun b!694 () Bool)

(declare-fun s!139 () Bool)

(declare-fun bs!124 () Bool)

(assert (= bs!124 (and start!134 b!694 b!696 s!139)))

(declare-fun content!49 (List!47) (Set B!295))

(assert (=> bs!124 (=> true (= (contains!31 res!417 x!1326) (member x!1326 (content!49 res!417))))))

(declare-fun m!483 () Bool)

(assert (=> m!477 m!483))

(declare-fun bs!125 () Bool)

(declare-fun m!485 () Bool)

(assert (= bs!125 m!485))

(assert (=> bs!125 s!139))

(assert (=> m!477 m!485))

(assert (=> m!477 s!139))

(declare-fun e!507 () Bool)

(assert (=> b!692 (= e!507 (and tp!188 tp!186))))

(declare-fun e!505 () Bool)

(assert (=> b!693 (= e!505 (and e!507 tp!190))))

(declare-fun res!558 () Bool)

(declare-fun e!508 () Bool)

(assert (=> b!694 (=> (not res!558) (not e!508))))

(declare-datatypes () ((List!48 (Cons!49 (h!177 A!560) (t!371 List!48)) (Nil!50))))

(declare-fun l!312 () List!48)

(assert (=> b!694 (= res!558 (and (not (is-Cons!49 l!312)) (= res!417 Nil!49)))))

(declare-fun b!695 () Bool)

(declare-fun e!506 () Bool)

(declare-fun tp_is_empty!21 () Bool)

(declare-fun tp!187 () Bool)

(assert (=> b!695 (= e!506 (and tp_is_empty!21 tp!187))))

(assert (=> b!696 (= e!508 (not inst!19))))

(assert (=> b!696 true))

(declare-fun res!557 () Bool)

(assert (=> start!134 (=> (not res!557) (not e!508))))

(assert (=> start!134 (= res!557 true)))

(assert (=> start!134 true))

(assert (=> start!134 e!508))

(assert (=> start!134 e!506))

(declare-fun inv!105 (~>>!15) Bool)

(assert (=> start!134 (and (inv!105 f!367) e!505)))

(declare-fun e!504 () Bool)

(assert (=> start!134 e!504))

(declare-fun b!697 () Bool)

(declare-fun tp!189 () Bool)

(assert (=> b!697 (= e!504 (and tp_is_empty!19 tp!189))))

(assert (= (and start!134 res!557) b!694))

(assert (= (and b!694 res!558) b!696))

(assert (= (and start!134 (is-Cons!49 l!312)) b!695))

(assert (= b!693 b!692))

(assert (= start!134 b!693))

(assert (= (and start!134 (is-Cons!48 res!417)) b!697))

(declare-fun m!487 () Bool)

(assert (=> start!134 m!487))

(push 1)

(assert tp_is_empty!21)

(assert (not b_next!49))

(assert (not b_lambda!143))

(assert (not b!696))

(assert (not start!134))

(assert (not bs!124))

(assert b_and!181)

(assert b_and!185)

(assert (not b!697))

(assert (not b_next!47))

(assert tp_is_empty!19)

(assert (not b_next!45))

(assert b_and!179)

(assert (not b!695))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!49))

(assert b_and!181)

(assert b_and!185)

(assert (not b_next!47))

(assert (not b_next!45))

(assert b_and!179)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!145 () Bool)

(assert (= b_lambda!143 (or (and b!693 b_free!49) b_lambda!145)))

(push 1)

(assert tp_is_empty!21)

(assert (not b_next!49))

(assert (not b!696))

(assert (not start!134))

(assert (not bs!124))

(assert b_and!181)

(assert b_and!185)

(assert (not b!697))

(assert (not b_next!47))

(assert (not b_lambda!145))

(assert tp_is_empty!19)

(assert (not b_next!45))

(assert b_and!179)

(assert (not b!695))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!49))

(assert b_and!181)

(assert b_and!185)

(assert (not b_next!47))

(assert (not b_next!45))

(assert b_and!179)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!200 () Bool)

(declare-fun pre!22 (~>>!15) Int)

(assert (=> d!200 (= (pre!22 f!367) (pre!21 (f!384 f!367)))))

(assert (=> start!134 d!200))

(declare-fun d!202 () Bool)

(declare-fun res!564 () Bool)

(declare-fun e!514 () Bool)

(assert (=> d!202 (=> res!564 e!514)))

(declare-fun x!1345 () A!560)

(declare-fun dynLambda!8 (Int A!560) Bool)

(assert (=> d!202 (= res!564 (not (dynLambda!8 (pre!21 (f!384 f!367)) x!1345)))))

(declare-fun inst!22 () Bool)

(assert (=> d!202 (= inst!22 (=> tp_is_empty!21 e!514))))

(declare-fun b!703 () Bool)

(declare-fun apply!41 (~>!14 A!560) B!295)

(assert (=> b!703 (= e!514 (dynLambda!7 (post!16 f!367) (apply!41 (f!384 f!367) x!1345)))))

(assert (= (and d!202 (not res!564)) b!703))

(declare-fun b_lambda!147 () Bool)

(assert (=> (not b_lambda!147) (not d!202)))

(declare-fun t!373 () Bool)

(declare-fun tb!87 () Bool)

(assert (=> (and b!692 (= (pre!21 (f!384 f!367)) (pre!21 (f!384 f!367))) t!373) tb!87))

(declare-fun result!107 () Bool)

(assert (=> tb!87 (= result!107 true)))

(assert (=> d!202 t!373))

(declare-fun b_and!187 () Bool)

(assert (= b_and!179 (and (=> t!373 result!107) b_and!187)))

(declare-fun b_lambda!149 () Bool)

(assert (=> (not b_lambda!149) (not b!703)))

(declare-fun t!375 () Bool)

(declare-fun tb!89 () Bool)

(assert (=> (and b!693 (= (post!16 f!367) (post!16 f!367)) t!375) tb!89))

(declare-fun result!109 () Bool)

(assert (=> tb!89 (= result!109 true)))

(assert (=> b!703 t!375))

(declare-fun b_and!189 () Bool)

(assert (= b_and!185 (and (=> t!375 result!109) b_and!189)))

(declare-fun m!489 () Bool)

(assert (=> d!202 m!489))

(declare-fun m!491 () Bool)

(assert (=> b!703 m!491))

(assert (=> b!703 m!491))

(declare-fun m!493 () Bool)

(assert (=> b!703 m!493))

(declare-fun bs!126 () Bool)

(declare-fun neg-inst!13 () Bool)

(declare-fun s!141 () Bool)

(assert (= bs!126 (and neg-inst!13 s!141)))

(declare-fun res!565 () Bool)

(declare-fun e!515 () Bool)

(assert (=> bs!126 (=> res!565 e!515)))

(assert (=> bs!126 (= res!565 (not (dynLambda!8 (pre!21 (f!384 f!367)) x!1345)))))

(assert (=> bs!126 (=> true e!515)))

(declare-fun b!704 () Bool)

(assert (=> b!704 (= e!515 (dynLambda!7 (post!16 f!367) (apply!41 (f!384 f!367) x!1345)))))

(assert (= (and bs!126 (not res!565)) b!704))

(declare-fun b_lambda!151 () Bool)

(assert (=> (not b_lambda!151) (not bs!126)))

(assert (=> bs!126 t!373))

(declare-fun b_and!191 () Bool)

(assert (= b_and!187 (and (=> t!373 result!107) b_and!191)))

(declare-fun b_lambda!153 () Bool)

(assert (=> (not b_lambda!153) (not b!704)))

(assert (=> b!704 t!375))

(declare-fun b_and!193 () Bool)

(assert (= b_and!189 (and (=> t!375 result!109) b_and!193)))

(assert (=> m!491 m!489))

(assert (=> m!491 s!141))

(assert (=> m!489 s!141))

(declare-fun bs!127 () Bool)

(assert (= bs!127 (and neg-inst!13 d!202)))

(assert (=> bs!127 (= true inst!22)))

(assert (=> d!202 (= (inv!105 f!367) inst!22)))

(assert (= neg-inst!13 inst!22))

(assert (=> start!134 d!202))

(declare-fun d!204 () Bool)

(declare-fun lt!63 () Bool)

(assert (=> d!204 (= lt!63 (member x!1326 (content!49 res!417)))))

(declare-fun e!520 () Bool)

(assert (=> d!204 (= lt!63 e!520)))

(declare-fun res!570 () Bool)

(assert (=> d!204 (=> (not res!570) (not e!520))))

(assert (=> d!204 (= res!570 (is-Cons!48 res!417))))

(assert (=> d!204 (= (contains!31 res!417 x!1326) lt!63)))

(declare-fun b!709 () Bool)

(declare-fun e!521 () Bool)

(assert (=> b!709 (= e!520 e!521)))

(declare-fun res!571 () Bool)

(assert (=> b!709 (=> res!571 e!521)))

(assert (=> b!709 (= res!571 (= (h!176 res!417) x!1326))))

(declare-fun b!710 () Bool)

(assert (=> b!710 (= e!521 (contains!31 (t!370 res!417) x!1326))))

(assert (= (and d!204 res!570) b!709))

(assert (= (and b!709 (not res!571)) b!710))

(assert (=> d!204 m!483))

(assert (=> d!204 m!485))

(declare-fun bs!128 () Bool)

(declare-fun m!495 () Bool)

(assert (= bs!128 m!495))

(assert (=> bs!128 s!139))

(assert (=> b!710 m!495))

(assert (=> bs!124 d!204))

(declare-fun d!206 () Bool)

(declare-fun c!117 () Bool)

(assert (=> d!206 (= c!117 (is-Nil!49 res!417))))

(declare-fun e!524 () (Set B!295))

(assert (=> d!206 (= (content!49 res!417) e!524)))

(declare-fun b!715 () Bool)

(assert (=> b!715 (= e!524 (as emptyset (Set B!295)))))

(declare-fun b!716 () Bool)

(assert (=> b!716 (= e!524 (union (insert (h!176 res!417) (as emptyset (Set B!295))) (content!49 (t!370 res!417))))))

(assert (= (and d!206 c!117) b!715))

(assert (= (and d!206 (not c!117)) b!716))

(declare-fun m!497 () Bool)

(assert (=> b!716 m!497))

(declare-fun m!499 () Bool)

(assert (=> b!716 m!499))

(assert (=> bs!124 d!206))

(assert (=> b!696 d!204))

(declare-fun b!721 () Bool)

(declare-fun e!527 () Bool)

(declare-fun tp!193 () Bool)

(assert (=> b!721 (= e!527 (and tp_is_empty!21 tp!193))))

(assert (=> b!695 (= tp!187 e!527)))

(assert (= (and b!695 (is-Cons!49 (t!371 l!312))) b!721))

(declare-fun b!726 () Bool)

(declare-fun e!530 () Bool)

(declare-fun tp!196 () Bool)

(assert (=> b!726 (= e!530 (and tp_is_empty!19 tp!196))))

(assert (=> b!697 (= tp!189 e!530)))

(assert (= (and b!697 (is-Cons!48 (t!370 res!417))) b!726))

(declare-fun b_lambda!155 () Bool)

(assert (= b_lambda!149 (or (and b!693 b_free!49) b_lambda!155)))

(declare-fun b_lambda!157 () Bool)

(assert (= b_lambda!153 (or (and b!693 b_free!49) b_lambda!157)))

(declare-fun b_lambda!159 () Bool)

(assert (= b_lambda!151 (or (and b!692 b_free!45) b_lambda!159)))

(declare-fun b_lambda!161 () Bool)

(assert (= b_lambda!147 (or (and b!692 b_free!45) b_lambda!161)))

(declare-fun result!115 () Bool)

(assert (=> start!134 (= result!115 tp_is_empty!21)))

(declare-fun bs!129 () Bool)

(declare-fun s!143 () Bool)

(assert (= bs!129 (and start!134 s!143)))

(declare-fun x!1313 () A!560)

(declare-fun contains!32 (List!48 A!560) Bool)

(declare-fun content!50 (List!48) (Set A!560))

(assert (=> bs!129 (=> true (= (contains!32 l!312 x!1313) (member x!1313 (content!50 l!312))))))

(declare-fun bs!130 () Bool)

(declare-fun m!501 () Bool)

(assert (= bs!130 m!501))

(assert (=> bs!130 s!143))

(declare-fun bs!131 () Bool)

(declare-fun s!145 () Bool)

(assert (= bs!131 (and start!134 s!145)))

(declare-fun res!572 () Bool)

(declare-fun e!531 () Bool)

(assert (=> bs!131 (=> res!572 e!531)))

(assert (=> bs!131 (= res!572 (not (contains!32 l!312 x!1313)))))

(assert (=> bs!131 (=> true e!531)))

(declare-fun b!729 () Bool)

(assert (=> b!729 (= e!531 (dynLambda!8 (pre!22 f!367) x!1313))))

(assert (= (and bs!131 (not res!572)) b!729))

(declare-fun b_lambda!163 () Bool)

(assert (=> (not b_lambda!163) (not b!729)))

(declare-fun t!377 () Bool)

(declare-fun tb!91 () Bool)

(assert (=> (and b!692 (= (pre!21 (f!384 f!367)) (pre!22 f!367)) t!377) tb!91))

(declare-fun result!119 () Bool)

(assert (=> tb!91 (= result!119 true)))

(assert (=> b!729 t!377))

(declare-fun b_and!195 () Bool)

(assert (= b_and!191 (and (=> t!377 result!119) b_and!195)))

(assert (=> bs!130 s!145))

(declare-fun bs!132 () Bool)

(assert (= bs!132 result!115))

(assert (=> bs!132 m!501))

(declare-fun m!503 () Bool)

(assert (=> bs!132 m!503))

(declare-fun bs!133 () Bool)

(declare-fun m!505 () Bool)

(assert (= bs!133 m!505))

(assert (=> bs!133 s!143))

(assert (=> bs!132 m!505))

(assert (=> bs!132 s!143))

(push 1)

(assert (not b!704))

(assert tp_is_empty!21)

(assert (not b_lambda!161))

(assert (not b_next!49))

(assert (not b!703))

(assert (not b_lambda!163))

(assert (not b!726))

(assert (not b!721))

(assert (not b_lambda!159))

(assert (not bs!131))

(assert (not b_lambda!155))

(assert b_and!181)

(assert (not d!204))

(assert (not b_next!47))

(assert (not b_lambda!145))

(assert tp_is_empty!19)

(assert (not b_next!45))

(assert (not b_lambda!157))

(assert b_and!195)

(assert (not b!710))

(assert b_and!193)

(assert (not bs!129))

(assert (not b!716))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!49))

(assert b_and!181)

(assert (not b_next!47))

(assert (not b_next!45))

(assert b_and!195)

(assert b_and!193)

(check-sat)

(pop 1)

