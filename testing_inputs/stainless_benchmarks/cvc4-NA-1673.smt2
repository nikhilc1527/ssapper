; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11634 () Bool)

(assert start!11634)

(declare-fun b_free!7527 () Bool)

(declare-fun b_next!39883 () Bool)

(assert (=> start!11634 (= b_free!7527 (not b_next!39883))))

(declare-fun tp!17414 () Bool)

(declare-fun b_and!60463 () Bool)

(assert (=> start!11634 (= tp!17414 b_and!60463)))

(declare-fun b_free!7529 () Bool)

(declare-fun b_next!39885 () Bool)

(assert (=> start!11634 (= b_free!7529 (not b_next!39885))))

(declare-fun tp!17412 () Bool)

(declare-fun b_and!60465 () Bool)

(assert (=> start!11634 (= tp!17412 b_and!60465)))

(declare-fun b!89194 () Bool)

(assert (=> b!89194 true))

(declare-fun order!509 () Int)

(declare-fun order!511 () Int)

(declare-fun lambda!10913 () Int)

(declare-fun key!533 () Int)

(declare-fun dynLambda!1066 (Int Int) Int)

(declare-fun dynLambda!1067 (Int Int) Int)

(assert (=> b!89194 (< (dynLambda!1066 order!509 key!533) (dynLambda!1067 order!511 lambda!10913))))

(declare-fun b_next!39887 () Bool)

(declare-fun keyAnn!12 () Int)

(assert (=> start!11634 (= b_next!39883 (or (and b!89194 (= lambda!10913 keyAnn!12)) b_next!39887))))

(declare-fun b!89192 () Bool)

(declare-fun e!48584 () Bool)

(declare-fun e!48585 () Bool)

(assert (=> b!89192 (= e!48584 e!48585)))

(declare-fun res!46723 () Bool)

(assert (=> b!89192 (=> res!46723 e!48585)))

(declare-datatypes () ((T!6009 (T!6010 (val!197 Int)))))

(declare-datatypes () ((tuple2!414 (tuple2!415 (_1!242 T!6009) (_2!242 Int)))))

(declare-datatypes () ((List!741 (Cons!695 (h!1099 tuple2!414) (t!48805 List!741)) (Nil!697))))

(declare-fun res!45961 () List!741)

(declare-fun isStableSorted!7 (List!741 Int) Bool)

(assert (=> b!89192 (= res!46723 (not (isStableSorted!7 res!45961 key!533)))))

(declare-fun b!89193 () Bool)

(declare-fun e!48587 () Bool)

(declare-fun tp_is_empty!389 () Bool)

(declare-fun tp!17415 () Bool)

(assert (=> b!89193 (= e!48587 (and tp_is_empty!389 tp!17415))))

(declare-fun res!46722 () Bool)

(assert (=> b!89194 (=> (not res!46722) (not e!48584))))

(assert (=> b!89194 (= res!46722 (= keyAnn!12 lambda!10913))))

(declare-fun b!89195 () Bool)

(declare-fun res!46727 () Bool)

(assert (=> b!89195 (=> (not res!46727) (not e!48584))))

(declare-fun l!1602 () List!741)

(assert (=> b!89195 (= res!46727 (not (is-Cons!695 l!1602)))))

(declare-fun b!89196 () Bool)

(declare-fun n!1739 () Int)

(declare-fun l2AtLeast!8 (List!741 Int) Bool)

(assert (=> b!89196 (= e!48585 (not (l2AtLeast!8 res!45961 n!1739)))))

(declare-fun b!89197 () Bool)

(declare-fun res!46726 () Bool)

(assert (=> b!89197 (=> (not res!46726) (not e!48584))))

(declare-fun t!48626 () T!6009)

(declare-fun insert!33 (tuple2!414 List!741 Int) List!741)

(assert (=> b!89197 (= res!46726 (= res!45961 (insert!33 (tuple2!415 t!48626 n!1739) l!1602 keyAnn!12)))))

(declare-fun b!89198 () Bool)

(declare-fun res!46725 () Bool)

(assert (=> b!89198 (=> (not res!46725) (not e!48584))))

(assert (=> b!89198 (= res!46725 (l2AtLeast!8 l!1602 n!1739))))

(declare-fun res!46724 () Bool)

(assert (=> start!11634 (=> (not res!46724) (not e!48584))))

(assert (=> start!11634 (= res!46724 (isStableSorted!7 l!1602 key!533))))

(assert (=> start!11634 e!48584))

(assert (=> start!11634 e!48587))

(declare-fun e!48586 () Bool)

(assert (=> start!11634 e!48586))

(assert (=> start!11634 tp_is_empty!389))

(assert (=> start!11634 tp!17414))

(assert (=> start!11634 true))

(assert (=> start!11634 tp!17412))

(declare-fun b!89199 () Bool)

(declare-fun tp!17413 () Bool)

(assert (=> b!89199 (= e!48586 (and tp_is_empty!389 tp!17413))))

(assert (= (and start!11634 res!46724) b!89198))

(assert (= (and b!89198 res!46725) b!89195))

(assert (= (and b!89195 res!46727) b!89194))

(assert (= (and b!89194 res!46722) b!89197))

(assert (= (and b!89197 res!46726) b!89192))

(assert (= (and b!89192 (not res!46723)) b!89196))

(assert (= (and start!11634 (is-Cons!695 l!1602)) b!89193))

(assert (= (and start!11634 (is-Cons!695 res!45961)) b!89199))

(declare-fun m!85320 () Bool)

(assert (=> b!89197 m!85320))

(declare-fun m!85322 () Bool)

(assert (=> b!89198 m!85322))

(declare-fun m!85324 () Bool)

(assert (=> b!89196 m!85324))

(declare-fun m!85326 () Bool)

(assert (=> start!11634 m!85326))

(declare-fun m!85328 () Bool)

(assert (=> b!89192 m!85328))

(push 1)

(assert (not b!89192))

(assert (not b!89196))

(assert (not b!89197))

(assert (not b!89193))

(assert (not b_next!39885))

(assert b_and!60463)

(assert (not start!11634))

(assert b_and!60465)

(assert (not b_next!39887))

(assert (not b!89199))

(assert tp_is_empty!389)

(assert (not b!89198))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60465)

(assert b_and!60463)

(assert (not b_next!39885))

(assert (not b_next!39887))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59115 () Bool)

(declare-fun res!46732 () Bool)

(declare-fun e!48592 () Bool)

(assert (=> d!59115 (=> res!46732 e!48592)))

(assert (=> d!59115 (= res!46732 (is-Nil!697 res!45961))))

(assert (=> d!59115 (= (l2AtLeast!8 res!45961 n!1739) e!48592)))

(declare-fun b!89206 () Bool)

(declare-fun e!48593 () Bool)

(assert (=> b!89206 (= e!48592 e!48593)))

(declare-fun res!46733 () Bool)

(assert (=> b!89206 (=> (not res!46733) (not e!48593))))

(assert (=> b!89206 (= res!46733 (<= n!1739 (_2!242 (h!1099 res!45961))))))

(declare-fun b!89207 () Bool)

(assert (=> b!89207 (= e!48593 (l2AtLeast!8 (t!48805 res!45961) n!1739))))

(assert (= (and d!59115 (not res!46732)) b!89206))

(assert (= (and b!89206 res!46733) b!89207))

(declare-fun m!85330 () Bool)

(assert (=> b!89207 m!85330))

(assert (=> b!89196 d!59115))

(declare-fun b!89228 () Bool)

(declare-fun e!48616 () Bool)

(declare-fun e!48615 () Bool)

(assert (=> b!89228 (= e!48616 e!48615)))

(declare-fun res!46752 () Bool)

(assert (=> b!89228 (=> (not res!46752) (not e!48615))))

(assert (=> b!89228 (= res!46752 (is-Cons!695 l!1602))))

(declare-fun b!89229 () Bool)

(declare-fun e!48614 () Bool)

(declare-fun e!48612 () Bool)

(assert (=> b!89229 (= e!48614 e!48612)))

(declare-fun res!46755 () Bool)

(assert (=> b!89229 (=> (not res!46755) (not e!48612))))

(declare-fun lt!20390 () Bool)

(assert (=> b!89229 (= res!46755 (and (not lt!20390) (is-Cons!695 l!1602)))))

(declare-fun b!89230 () Bool)

(declare-fun e!48617 () List!741)

(declare-fun res!46753 () List!741)

(assert (=> b!89230 (= e!48617 res!46753)))

(assert (=> b!89230 true))

(declare-fun e!48610 () Bool)

(assert (=> b!89230 e!48610))

(declare-fun b!89231 () Bool)

(declare-fun e!48611 () Bool)

(declare-fun lt!20389 () List!741)

(declare-fun length!16 (List!741) Int)

(assert (=> b!89231 (= e!48611 (= (length!16 lt!20389) (+ 1 (length!16 l!1602))))))

(declare-fun b!89232 () Bool)

(declare-fun e!48613 () List!741)

(declare-fun $colon$colon!22 (List!741 tuple2!414) List!741)

(assert (=> b!89232 (= e!48613 ($colon$colon!22 (insert!33 (tuple2!415 t!48626 n!1739) (t!48805 l!1602) keyAnn!12) (h!1099 l!1602)))))

(declare-fun d!59117 () Bool)

(assert (=> d!59117 e!48611))

(declare-fun res!46754 () Bool)

(assert (=> d!59117 (=> (not res!46754) (not e!48611))))

(declare-fun content!164 (List!741) (Set tuple2!414))

(assert (=> d!59117 (= res!46754 (= (content!164 lt!20389) (union (insert (tuple2!415 t!48626 n!1739) (as emptyset (Set tuple2!414))) (content!164 l!1602))))))

(assert (=> d!59117 (= lt!20389 e!48613)))

(declare-fun c!21904 () Bool)

(assert (=> d!59117 (= c!21904 e!48616)))

(declare-fun res!46750 () Bool)

(assert (=> d!59117 (=> res!46750 e!48616)))

(assert (=> d!59117 (= res!46750 lt!20390)))

(assert (=> d!59117 (= lt!20390 (is-Nil!697 l!1602))))

(assert (=> d!59117 (= (insert!33 (tuple2!415 t!48626 n!1739) l!1602 keyAnn!12) lt!20389)))

(declare-fun b!89233 () Bool)

(assert (=> b!89233 (= e!48613 e!48617)))

(declare-fun c!21903 () Bool)

(assert (=> b!89233 (= c!21903 e!48614)))

(declare-fun res!46751 () Bool)

(assert (=> b!89233 (=> res!46751 e!48614)))

(assert (=> b!89233 (= res!46751 lt!20390)))

(declare-fun b!89234 () Bool)

(declare-fun tp!17418 () Bool)

(assert (=> b!89234 (= e!48610 (and tp_is_empty!389 tp!17418))))

(declare-fun b!89235 () Bool)

(declare-fun dynLambda!1068 (Int tuple2!414) Int)

(assert (=> b!89235 (= e!48612 (<= (dynLambda!1068 keyAnn!12 (tuple2!415 t!48626 n!1739)) (dynLambda!1068 keyAnn!12 (h!1099 l!1602))))))

(declare-fun b!89236 () Bool)

(assert (=> b!89236 (= e!48617 ($colon$colon!22 l!1602 (tuple2!415 t!48626 n!1739)))))

(declare-fun b!89237 () Bool)

(assert (=> b!89237 (= e!48615 (<= (dynLambda!1068 keyAnn!12 (tuple2!415 t!48626 n!1739)) (dynLambda!1068 keyAnn!12 (h!1099 l!1602))))))

(assert (= (and d!59117 (not res!46750)) b!89228))

(assert (= (and b!89228 res!46752) b!89237))

(assert (= (and b!89233 (not res!46751)) b!89229))

(assert (= (and b!89229 res!46755) b!89235))

(assert (= (and b!89230 (is-Cons!695 res!46753)) b!89234))

(assert (= (and b!89233 c!21903) b!89236))

(assert (= (and b!89233 (not c!21903)) b!89230))

(assert (= (and d!59117 c!21904) b!89233))

(assert (= (and d!59117 (not c!21904)) b!89232))

(assert (= (and d!59117 res!46754) b!89231))

(declare-fun b_lambda!18185 () Bool)

(assert (=> (not b_lambda!18185) (not b!89235)))

(declare-fun t!48808 () Bool)

(declare-fun tb!46693 () Bool)

(assert (=> (and start!11634 (= keyAnn!12 keyAnn!12) t!48808) tb!46693))

(declare-fun result!47145 () Bool)

(assert (=> tb!46693 (= result!47145 true)))

(assert (=> b!89235 t!48808))

(declare-fun b_and!60467 () Bool)

(assert (= b_and!60463 (and (=> t!48808 result!47145) b_and!60467)))

(declare-fun b_lambda!18187 () Bool)

(assert (=> (not b_lambda!18187) (not b!89235)))

(declare-fun t!48810 () Bool)

(declare-fun tb!46695 () Bool)

(assert (=> (and start!11634 (= keyAnn!12 keyAnn!12) t!48810) tb!46695))

(declare-fun result!47147 () Bool)

(assert (=> tb!46695 (= result!47147 true)))

(assert (=> b!89235 t!48810))

(declare-fun b_and!60469 () Bool)

(assert (= b_and!60467 (and (=> t!48810 result!47147) b_and!60469)))

(declare-fun b_lambda!18189 () Bool)

(assert (=> (not b_lambda!18189) (not b!89237)))

(assert (=> b!89237 t!48808))

(declare-fun b_and!60471 () Bool)

(assert (= b_and!60469 (and (=> t!48808 result!47145) b_and!60471)))

(declare-fun b_lambda!18191 () Bool)

(assert (=> (not b_lambda!18191) (not b!89237)))

(assert (=> b!89237 t!48810))

(declare-fun b_and!60473 () Bool)

(assert (= b_and!60471 (and (=> t!48810 result!47147) b_and!60473)))

(declare-fun m!85332 () Bool)

(assert (=> b!89236 m!85332))

(declare-fun m!85334 () Bool)

(assert (=> b!89232 m!85334))

(assert (=> b!89232 m!85334))

(declare-fun m!85336 () Bool)

(assert (=> b!89232 m!85336))

(declare-fun m!85338 () Bool)

(assert (=> d!59117 m!85338))

(declare-fun m!85340 () Bool)

(assert (=> d!59117 m!85340))

(declare-fun m!85342 () Bool)

(assert (=> d!59117 m!85342))

(declare-fun m!85344 () Bool)

(assert (=> b!89231 m!85344))

(declare-fun m!85346 () Bool)

(assert (=> b!89231 m!85346))

(declare-fun m!85348 () Bool)

(assert (=> b!89237 m!85348))

(declare-fun m!85350 () Bool)

(assert (=> b!89237 m!85350))

(assert (=> b!89235 m!85348))

(assert (=> b!89235 m!85350))

(assert (=> b!89197 d!59117))

(declare-fun d!59119 () Bool)

(declare-fun res!46758 () Bool)

(declare-fun e!48620 () Bool)

(assert (=> d!59119 (=> res!46758 e!48620)))

(assert (=> d!59119 (= res!46758 (is-Nil!697 res!45961))))

(assert (=> d!59119 (= (isStableSorted!7 res!45961 key!533) e!48620)))

(declare-fun b!89240 () Bool)

(declare-fun isStableSortedAndAtLeast!7 (List!741 Int Int Int) Bool)

(declare-fun dynLambda!1069 (Int T!6009) Int)

(assert (=> b!89240 (= e!48620 (isStableSortedAndAtLeast!7 (t!48805 res!45961) key!533 (dynLambda!1069 key!533 (_1!242 (h!1099 res!45961))) (_2!242 (h!1099 res!45961))))))

(assert (= (and d!59119 (not res!46758)) b!89240))

(declare-fun b_lambda!18193 () Bool)

(assert (=> (not b_lambda!18193) (not b!89240)))

(declare-fun t!48812 () Bool)

(declare-fun tb!46697 () Bool)

(assert (=> (and start!11634 (= key!533 key!533) t!48812) tb!46697))

(declare-fun result!47149 () Bool)

(assert (=> tb!46697 (= result!47149 true)))

(assert (=> b!89240 t!48812))

(declare-fun b_and!60475 () Bool)

(assert (= b_and!60465 (and (=> t!48812 result!47149) b_and!60475)))

(declare-fun m!85352 () Bool)

(assert (=> b!89240 m!85352))

(assert (=> b!89240 m!85352))

(declare-fun m!85354 () Bool)

(assert (=> b!89240 m!85354))

(assert (=> b!89192 d!59119))

(declare-fun d!59121 () Bool)

(declare-fun res!46759 () Bool)

(declare-fun e!48621 () Bool)

(assert (=> d!59121 (=> res!46759 e!48621)))

(assert (=> d!59121 (= res!46759 (is-Nil!697 l!1602))))

(assert (=> d!59121 (= (isStableSorted!7 l!1602 key!533) e!48621)))

(declare-fun b!89241 () Bool)

(assert (=> b!89241 (= e!48621 (isStableSortedAndAtLeast!7 (t!48805 l!1602) key!533 (dynLambda!1069 key!533 (_1!242 (h!1099 l!1602))) (_2!242 (h!1099 l!1602))))))

(assert (= (and d!59121 (not res!46759)) b!89241))

(declare-fun b_lambda!18195 () Bool)

(assert (=> (not b_lambda!18195) (not b!89241)))

(declare-fun t!48814 () Bool)

(declare-fun tb!46699 () Bool)

(assert (=> (and start!11634 (= key!533 key!533) t!48814) tb!46699))

(declare-fun result!47151 () Bool)

(assert (=> tb!46699 (= result!47151 true)))

(assert (=> b!89241 t!48814))

(declare-fun b_and!60477 () Bool)

(assert (= b_and!60475 (and (=> t!48814 result!47151) b_and!60477)))

(declare-fun m!85356 () Bool)

(assert (=> b!89241 m!85356))

(assert (=> b!89241 m!85356))

(declare-fun m!85358 () Bool)

(assert (=> b!89241 m!85358))

(assert (=> start!11634 d!59121))

(declare-fun d!59123 () Bool)

(declare-fun res!46760 () Bool)

(declare-fun e!48622 () Bool)

(assert (=> d!59123 (=> res!46760 e!48622)))

(assert (=> d!59123 (= res!46760 (is-Nil!697 l!1602))))

(assert (=> d!59123 (= (l2AtLeast!8 l!1602 n!1739) e!48622)))

(declare-fun b!89242 () Bool)

(declare-fun e!48623 () Bool)

(assert (=> b!89242 (= e!48622 e!48623)))

(declare-fun res!46761 () Bool)

(assert (=> b!89242 (=> (not res!46761) (not e!48623))))

(assert (=> b!89242 (= res!46761 (<= n!1739 (_2!242 (h!1099 l!1602))))))

(declare-fun b!89243 () Bool)

(assert (=> b!89243 (= e!48623 (l2AtLeast!8 (t!48805 l!1602) n!1739))))

(assert (= (and d!59123 (not res!46760)) b!89242))

(assert (= (and b!89242 res!46761) b!89243))

(declare-fun m!85360 () Bool)

(assert (=> b!89243 m!85360))

(assert (=> b!89198 d!59123))

(declare-fun b!89248 () Bool)

(declare-fun e!48626 () Bool)

(declare-fun tp!17421 () Bool)

(assert (=> b!89248 (= e!48626 (and tp_is_empty!389 tp!17421))))

(assert (=> b!89199 (= tp!17413 e!48626)))

(assert (= (and b!89199 (is-Cons!695 (t!48805 res!45961))) b!89248))

(declare-fun b!89249 () Bool)

(declare-fun e!48627 () Bool)

(declare-fun tp!17422 () Bool)

(assert (=> b!89249 (= e!48627 (and tp_is_empty!389 tp!17422))))

(assert (=> b!89193 (= tp!17415 e!48627)))

(assert (= (and b!89193 (is-Cons!695 (t!48805 l!1602))) b!89249))

(declare-fun b_lambda!18197 () Bool)

(assert (= b_lambda!18191 (or (and b!89194 (= lambda!10913 keyAnn!12)) (and start!11634 b_free!7527) b_lambda!18197)))

(declare-fun bs!41485 () Bool)

(declare-fun d!59125 () Bool)

(assert (= bs!41485 (and d!59125 b!89194)))

(assert (=> bs!41485 (= (dynLambda!1068 lambda!10913 (h!1099 l!1602)) (dynLambda!1069 key!533 (_1!242 (h!1099 l!1602))))))

(declare-fun b_lambda!18209 () Bool)

(assert (=> (not b_lambda!18209) (not bs!41485)))

(assert (=> bs!41485 t!48814))

(declare-fun b_and!60479 () Bool)

(assert (= b_and!60477 (and (=> t!48814 result!47151) b_and!60479)))

(assert (=> bs!41485 m!85356))

(assert (=> (and b!89194 (= lambda!10913 keyAnn!12) b!89237) d!59125))

(declare-fun b_lambda!18199 () Bool)

(assert (= b_lambda!18193 (or (and start!11634 b_free!7529) b_lambda!18199)))

(declare-fun b_lambda!18201 () Bool)

(assert (= b_lambda!18185 (or (and b!89194 (= lambda!10913 keyAnn!12)) (and start!11634 b_free!7527) b_lambda!18201)))

(declare-fun bs!41486 () Bool)

(declare-fun d!59127 () Bool)

(assert (= bs!41486 (and d!59127 b!89194)))

(assert (=> bs!41486 (= (dynLambda!1068 lambda!10913 (tuple2!415 t!48626 n!1739)) (dynLambda!1069 key!533 (_1!242 (tuple2!415 t!48626 n!1739))))))

(declare-fun b_lambda!18211 () Bool)

(assert (=> (not b_lambda!18211) (not bs!41486)))

(declare-fun t!48816 () Bool)

(declare-fun tb!46701 () Bool)

(assert (=> (and start!11634 (= key!533 key!533) t!48816) tb!46701))

(declare-fun result!47155 () Bool)

(assert (=> tb!46701 (= result!47155 true)))

(assert (=> bs!41486 t!48816))

(declare-fun b_and!60481 () Bool)

(assert (= b_and!60479 (and (=> t!48816 result!47155) b_and!60481)))

(declare-fun m!85362 () Bool)

(assert (=> bs!41486 m!85362))

(assert (=> (and b!89194 (= lambda!10913 keyAnn!12) b!89235) d!59127))

(declare-fun b_lambda!18203 () Bool)

(assert (= b_lambda!18195 (or (and start!11634 b_free!7529) b_lambda!18203)))

(declare-fun b_lambda!18205 () Bool)

(assert (= b_lambda!18187 (or (and b!89194 (= lambda!10913 keyAnn!12)) (and start!11634 b_free!7527) b_lambda!18205)))

(assert (=> (and b!89194 (= lambda!10913 keyAnn!12) b!89235) d!59125))

(declare-fun b_lambda!18207 () Bool)

(assert (= b_lambda!18189 (or (and b!89194 (= lambda!10913 keyAnn!12)) (and start!11634 b_free!7527) b_lambda!18207)))

(assert (=> (and b!89194 (= lambda!10913 keyAnn!12) b!89237) d!59127))

(push 1)

(assert (not b!89248))

(assert (not b_lambda!18209))

(assert (not b!89232))

(assert b_and!60473)

(assert (not b_next!39885))

(assert (not b_lambda!18207))

(assert (not b_next!39887))

(assert (not b!89249))

(assert (not b!89241))

(assert b_and!60481)

(assert tp_is_empty!389)

(assert (not b_lambda!18205))

(assert (not b!89207))

(assert (not b!89240))

(assert (not b_lambda!18197))

(assert (not b!89234))

(assert (not b!89243))

(assert (not b_lambda!18199))

(assert (not b_lambda!18201))

(assert (not b_lambda!18211))

(assert (not b!89236))

(assert (not b_lambda!18203))

(assert (not d!59117))

(assert (not b!89231))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60481)

(assert b_and!60473)

(assert (not b_next!39885))

(assert (not b_next!39887))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18213 () Bool)

(assert (= b_lambda!18209 (or (and start!11634 b_free!7529) b_lambda!18213)))

(declare-fun b_lambda!18215 () Bool)

(assert (= b_lambda!18211 (or (and start!11634 b_free!7529) b_lambda!18215)))

(push 1)

(assert (not b!89248))

(assert (not b!89232))

(assert b_and!60473)

(assert (not b_next!39885))

(assert (not b_lambda!18213))

(assert (not b_lambda!18207))

(assert (not b_next!39887))

(assert (not b!89249))

(assert (not b!89241))

(assert b_and!60481)

(assert tp_is_empty!389)

(assert (not b_lambda!18205))

(assert (not b!89207))

(assert (not b!89240))

(assert (not b_lambda!18215))

(assert (not b_lambda!18197))

(assert (not b!89234))

(assert (not b!89243))

(assert (not b_lambda!18199))

(assert (not b_lambda!18201))

(assert (not b!89236))

(assert (not b_lambda!18203))

(assert (not d!59117))

(assert (not b!89231))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60481)

(assert b_and!60473)

(assert (not b_next!39885))

(assert (not b_next!39887))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59129 () Bool)

(declare-fun res!46762 () Bool)

(declare-fun e!48628 () Bool)

(assert (=> d!59129 (=> res!46762 e!48628)))

(assert (=> d!59129 (= res!46762 (is-Nil!697 (t!48805 l!1602)))))

(assert (=> d!59129 (= (l2AtLeast!8 (t!48805 l!1602) n!1739) e!48628)))

(declare-fun b!89250 () Bool)

(declare-fun e!48629 () Bool)

(assert (=> b!89250 (= e!48628 e!48629)))

(declare-fun res!46763 () Bool)

(assert (=> b!89250 (=> (not res!46763) (not e!48629))))

(assert (=> b!89250 (= res!46763 (<= n!1739 (_2!242 (h!1099 (t!48805 l!1602)))))))

(declare-fun b!89251 () Bool)

(assert (=> b!89251 (= e!48629 (l2AtLeast!8 (t!48805 (t!48805 l!1602)) n!1739))))

(assert (= (and d!59129 (not res!46762)) b!89250))

(assert (= (and b!89250 res!46763) b!89251))

(declare-fun m!85364 () Bool)

(assert (=> b!89251 m!85364))

(assert (=> b!89243 d!59129))

(declare-fun d!59131 () Bool)

(assert (=> d!59131 (= ($colon$colon!22 l!1602 (tuple2!415 t!48626 n!1739)) (Cons!695 (tuple2!415 t!48626 n!1739) l!1602))))

(assert (=> b!89236 d!59131))

(declare-fun d!59133 () Bool)

(declare-fun res!46772 () Bool)

(declare-fun e!48640 () Bool)

(assert (=> d!59133 (=> res!46772 e!48640)))

(assert (=> d!59133 (= res!46772 (is-Nil!697 (t!48805 l!1602)))))

(assert (=> d!59133 (= (isStableSortedAndAtLeast!7 (t!48805 l!1602) key!533 (dynLambda!1069 key!533 (_1!242 (h!1099 l!1602))) (_2!242 (h!1099 l!1602))) e!48640)))

(declare-fun b!89263 () Bool)

(declare-fun e!48641 () Bool)

(assert (=> b!89263 (= e!48641 (isStableSortedAndAtLeast!7 (t!48805 (t!48805 l!1602)) key!533 (dynLambda!1069 key!533 (_1!242 (h!1099 (t!48805 l!1602)))) (_2!242 (h!1099 (t!48805 l!1602)))))))

(declare-fun b!89262 () Bool)

(declare-fun e!48639 () Bool)

(assert (=> b!89262 (= e!48639 (<= (_2!242 (h!1099 l!1602)) (_2!242 (h!1099 (t!48805 l!1602)))))))

(declare-fun b!89260 () Bool)

(assert (=> b!89260 (= e!48640 e!48641)))

(declare-fun res!46775 () Bool)

(assert (=> b!89260 (=> (not res!46775) (not e!48641))))

(declare-fun e!48638 () Bool)

(assert (=> b!89260 (= res!46775 e!48638)))

(declare-fun res!46773 () Bool)

(assert (=> b!89260 (=> res!46773 e!48638)))

(assert (=> b!89260 (= res!46773 (< (dynLambda!1069 key!533 (_1!242 (h!1099 l!1602))) (dynLambda!1069 key!533 (_1!242 (h!1099 (t!48805 l!1602))))))))

(declare-fun b!89261 () Bool)

(assert (=> b!89261 (= e!48638 e!48639)))

(declare-fun res!46774 () Bool)

(assert (=> b!89261 (=> (not res!46774) (not e!48639))))

(assert (=> b!89261 (= res!46774 (= (dynLambda!1069 key!533 (_1!242 (h!1099 l!1602))) (dynLambda!1069 key!533 (_1!242 (h!1099 (t!48805 l!1602))))))))

(assert (= (and d!59133 (not res!46772)) b!89260))

(assert (= (and b!89260 (not res!46773)) b!89261))

(assert (= (and b!89261 res!46774) b!89262))

(assert (= (and b!89260 res!46775) b!89263))

(declare-fun b_lambda!18217 () Bool)

(assert (=> (not b_lambda!18217) (not b!89263)))

(declare-fun t!48819 () Bool)

(declare-fun tb!46703 () Bool)

(assert (=> (and start!11634 (= key!533 key!533) t!48819) tb!46703))

(declare-fun result!47157 () Bool)

(assert (=> tb!46703 (= result!47157 true)))

(assert (=> b!89263 t!48819))

(declare-fun b_and!60483 () Bool)

(assert (= b_and!60481 (and (=> t!48819 result!47157) b_and!60483)))

(declare-fun b_lambda!18219 () Bool)

(assert (=> (not b_lambda!18219) (not b!89260)))

(assert (=> b!89260 t!48819))

(declare-fun b_and!60485 () Bool)

(assert (= b_and!60483 (and (=> t!48819 result!47157) b_and!60485)))

(declare-fun b_lambda!18221 () Bool)

(assert (=> (not b_lambda!18221) (not b!89261)))

(assert (=> b!89261 t!48819))

(declare-fun b_and!60487 () Bool)

(assert (= b_and!60485 (and (=> t!48819 result!47157) b_and!60487)))

(declare-fun m!85366 () Bool)

(assert (=> b!89263 m!85366))

(assert (=> b!89263 m!85366))

(declare-fun m!85368 () Bool)

(assert (=> b!89263 m!85368))

(assert (=> b!89260 m!85366))

(assert (=> b!89261 m!85366))

(assert (=> b!89241 d!59133))

(declare-fun d!59135 () Bool)

(assert (=> d!59135 (= ($colon$colon!22 (insert!33 (tuple2!415 t!48626 n!1739) (t!48805 l!1602) keyAnn!12) (h!1099 l!1602)) (Cons!695 (h!1099 l!1602) (insert!33 (tuple2!415 t!48626 n!1739) (t!48805 l!1602) keyAnn!12)))))

(assert (=> b!89232 d!59135))

(declare-fun b!89264 () Bool)

(declare-fun e!48648 () Bool)

(declare-fun e!48647 () Bool)

(assert (=> b!89264 (= e!48648 e!48647)))

(declare-fun res!46778 () Bool)

(assert (=> b!89264 (=> (not res!46778) (not e!48647))))

(assert (=> b!89264 (= res!46778 (is-Cons!695 (t!48805 l!1602)))))

(declare-fun b!89265 () Bool)

(declare-fun e!48646 () Bool)

(declare-fun e!48644 () Bool)

(assert (=> b!89265 (= e!48646 e!48644)))

(declare-fun res!46781 () Bool)

(assert (=> b!89265 (=> (not res!46781) (not e!48644))))

(declare-fun lt!20392 () Bool)

(assert (=> b!89265 (= res!46781 (and (not lt!20392) (is-Cons!695 (t!48805 l!1602))))))

(declare-fun b!89266 () Bool)

(declare-fun e!48649 () List!741)

(declare-fun res!46779 () List!741)

(assert (=> b!89266 (= e!48649 res!46779)))

(assert (=> b!89266 true))

(declare-fun e!48642 () Bool)

(assert (=> b!89266 e!48642))

(declare-fun b!89267 () Bool)

(declare-fun e!48643 () Bool)

(declare-fun lt!20391 () List!741)

(assert (=> b!89267 (= e!48643 (= (length!16 lt!20391) (+ 1 (length!16 (t!48805 l!1602)))))))

(declare-fun b!89268 () Bool)

(declare-fun e!48645 () List!741)

(assert (=> b!89268 (= e!48645 ($colon$colon!22 (insert!33 (tuple2!415 t!48626 n!1739) (t!48805 (t!48805 l!1602)) keyAnn!12) (h!1099 (t!48805 l!1602))))))

(declare-fun d!59137 () Bool)

(assert (=> d!59137 e!48643))

(declare-fun res!46780 () Bool)

(assert (=> d!59137 (=> (not res!46780) (not e!48643))))

(assert (=> d!59137 (= res!46780 (= (content!164 lt!20391) (union (insert (tuple2!415 t!48626 n!1739) (as emptyset (Set tuple2!414))) (content!164 (t!48805 l!1602)))))))

(assert (=> d!59137 (= lt!20391 e!48645)))

(declare-fun c!21906 () Bool)

(assert (=> d!59137 (= c!21906 e!48648)))

(declare-fun res!46776 () Bool)

(assert (=> d!59137 (=> res!46776 e!48648)))

(assert (=> d!59137 (= res!46776 lt!20392)))

(assert (=> d!59137 (= lt!20392 (is-Nil!697 (t!48805 l!1602)))))

(assert (=> d!59137 (= (insert!33 (tuple2!415 t!48626 n!1739) (t!48805 l!1602) keyAnn!12) lt!20391)))

(declare-fun b!89269 () Bool)

(assert (=> b!89269 (= e!48645 e!48649)))

(declare-fun c!21905 () Bool)

(assert (=> b!89269 (= c!21905 e!48646)))

(declare-fun res!46777 () Bool)

(assert (=> b!89269 (=> res!46777 e!48646)))

(assert (=> b!89269 (= res!46777 lt!20392)))

(declare-fun b!89270 () Bool)

(declare-fun tp!17423 () Bool)

(assert (=> b!89270 (= e!48642 (and tp_is_empty!389 tp!17423))))

(declare-fun b!89271 () Bool)

(assert (=> b!89271 (= e!48644 (<= (dynLambda!1068 keyAnn!12 (tuple2!415 t!48626 n!1739)) (dynLambda!1068 keyAnn!12 (h!1099 (t!48805 l!1602)))))))

(declare-fun b!89272 () Bool)

(assert (=> b!89272 (= e!48649 ($colon$colon!22 (t!48805 l!1602) (tuple2!415 t!48626 n!1739)))))

(declare-fun b!89273 () Bool)

(assert (=> b!89273 (= e!48647 (<= (dynLambda!1068 keyAnn!12 (tuple2!415 t!48626 n!1739)) (dynLambda!1068 keyAnn!12 (h!1099 (t!48805 l!1602)))))))

(assert (= (and d!59137 (not res!46776)) b!89264))

(assert (= (and b!89264 res!46778) b!89273))

(assert (= (and b!89269 (not res!46777)) b!89265))

(assert (= (and b!89265 res!46781) b!89271))

(assert (= (and b!89266 (is-Cons!695 res!46779)) b!89270))

(assert (= (and b!89269 c!21905) b!89272))

(assert (= (and b!89269 (not c!21905)) b!89266))

(assert (= (and d!59137 c!21906) b!89269))

(assert (= (and d!59137 (not c!21906)) b!89268))

(assert (= (and d!59137 res!46780) b!89267))

(declare-fun b_lambda!18223 () Bool)

(assert (=> (not b_lambda!18223) (not b!89271)))

(assert (=> b!89271 t!48808))

(declare-fun b_and!60489 () Bool)

(assert (= b_and!60473 (and (=> t!48808 result!47145) b_and!60489)))

(declare-fun b_lambda!18225 () Bool)

(assert (=> (not b_lambda!18225) (not b!89271)))

(declare-fun t!48821 () Bool)

(declare-fun tb!46705 () Bool)

(assert (=> (and start!11634 (= keyAnn!12 keyAnn!12) t!48821) tb!46705))

(declare-fun result!47159 () Bool)

(assert (=> tb!46705 (= result!47159 true)))

(assert (=> b!89271 t!48821))

(declare-fun b_and!60491 () Bool)

(assert (= b_and!60489 (and (=> t!48821 result!47159) b_and!60491)))

(declare-fun b_lambda!18227 () Bool)

(assert (=> (not b_lambda!18227) (not b!89273)))

(assert (=> b!89273 t!48808))

(declare-fun b_and!60493 () Bool)

(assert (= b_and!60491 (and (=> t!48808 result!47145) b_and!60493)))

(declare-fun b_lambda!18229 () Bool)

(assert (=> (not b_lambda!18229) (not b!89273)))

(assert (=> b!89273 t!48821))

(declare-fun b_and!60495 () Bool)

(assert (= b_and!60493 (and (=> t!48821 result!47159) b_and!60495)))

(declare-fun m!85370 () Bool)

(assert (=> b!89272 m!85370))

(declare-fun m!85372 () Bool)

(assert (=> b!89268 m!85372))

(assert (=> b!89268 m!85372))

(declare-fun m!85374 () Bool)

(assert (=> b!89268 m!85374))

(declare-fun m!85376 () Bool)

(assert (=> d!59137 m!85376))

(assert (=> d!59137 m!85340))

(declare-fun m!85378 () Bool)

(assert (=> d!59137 m!85378))

(declare-fun m!85380 () Bool)

(assert (=> b!89267 m!85380))

(declare-fun m!85382 () Bool)

(assert (=> b!89267 m!85382))

(assert (=> b!89273 m!85348))

(declare-fun m!85384 () Bool)

(assert (=> b!89273 m!85384))

(assert (=> b!89271 m!85348))

(assert (=> b!89271 m!85384))

(assert (=> b!89232 d!59137))

(declare-fun d!59139 () Bool)

(declare-fun size!718 (List!741) Int)

(assert (=> d!59139 (= (length!16 lt!20389) (size!718 lt!20389))))

(declare-fun bs!41487 () Bool)

(assert (= bs!41487 d!59139))

(declare-fun m!85386 () Bool)

(assert (=> bs!41487 m!85386))

(assert (=> b!89231 d!59139))

(declare-fun d!59141 () Bool)

(assert (=> d!59141 (= (length!16 l!1602) (size!718 l!1602))))

(declare-fun bs!41488 () Bool)

(assert (= bs!41488 d!59141))

(declare-fun m!85388 () Bool)

(assert (=> bs!41488 m!85388))

(assert (=> b!89231 d!59141))

(declare-fun d!59143 () Bool)

(declare-fun res!46782 () Bool)

(declare-fun e!48650 () Bool)

(assert (=> d!59143 (=> res!46782 e!48650)))

(assert (=> d!59143 (= res!46782 (is-Nil!697 (t!48805 res!45961)))))

(assert (=> d!59143 (= (l2AtLeast!8 (t!48805 res!45961) n!1739) e!48650)))

(declare-fun b!89274 () Bool)

(declare-fun e!48651 () Bool)

(assert (=> b!89274 (= e!48650 e!48651)))

(declare-fun res!46783 () Bool)

(assert (=> b!89274 (=> (not res!46783) (not e!48651))))

(assert (=> b!89274 (= res!46783 (<= n!1739 (_2!242 (h!1099 (t!48805 res!45961)))))))

(declare-fun b!89275 () Bool)

(assert (=> b!89275 (= e!48651 (l2AtLeast!8 (t!48805 (t!48805 res!45961)) n!1739))))

(assert (= (and d!59143 (not res!46782)) b!89274))

(assert (= (and b!89274 res!46783) b!89275))

(declare-fun m!85390 () Bool)

(assert (=> b!89275 m!85390))

(assert (=> b!89207 d!59143))

(declare-fun d!59145 () Bool)

(declare-fun c!21909 () Bool)

(assert (=> d!59145 (= c!21909 (is-Nil!697 lt!20389))))

(declare-fun e!48654 () (Set tuple2!414))

(assert (=> d!59145 (= (content!164 lt!20389) e!48654)))

(declare-fun b!89280 () Bool)

(assert (=> b!89280 (= e!48654 (as emptyset (Set tuple2!414)))))

(declare-fun b!89281 () Bool)

(assert (=> b!89281 (= e!48654 (union (insert (h!1099 lt!20389) (as emptyset (Set tuple2!414))) (content!164 (t!48805 lt!20389))))))

(assert (= (and d!59145 c!21909) b!89280))

(assert (= (and d!59145 (not c!21909)) b!89281))

(declare-fun m!85392 () Bool)

(assert (=> b!89281 m!85392))

(declare-fun m!85394 () Bool)

(assert (=> b!89281 m!85394))

(assert (=> d!59117 d!59145))

(declare-fun d!59147 () Bool)

(declare-fun c!21910 () Bool)

(assert (=> d!59147 (= c!21910 (is-Nil!697 l!1602))))

(declare-fun e!48655 () (Set tuple2!414))

(assert (=> d!59147 (= (content!164 l!1602) e!48655)))

(declare-fun b!89282 () Bool)

(assert (=> b!89282 (= e!48655 (as emptyset (Set tuple2!414)))))

(declare-fun b!89283 () Bool)

(assert (=> b!89283 (= e!48655 (union (insert (h!1099 l!1602) (as emptyset (Set tuple2!414))) (content!164 (t!48805 l!1602))))))

(assert (= (and d!59147 c!21910) b!89282))

(assert (= (and d!59147 (not c!21910)) b!89283))

(declare-fun m!85396 () Bool)

(assert (=> b!89283 m!85396))

(assert (=> b!89283 m!85378))

(assert (=> d!59117 d!59147))

(declare-fun d!59149 () Bool)

(declare-fun res!46784 () Bool)

(declare-fun e!48658 () Bool)

(assert (=> d!59149 (=> res!46784 e!48658)))

(assert (=> d!59149 (= res!46784 (is-Nil!697 (t!48805 res!45961)))))

(assert (=> d!59149 (= (isStableSortedAndAtLeast!7 (t!48805 res!45961) key!533 (dynLambda!1069 key!533 (_1!242 (h!1099 res!45961))) (_2!242 (h!1099 res!45961))) e!48658)))

(declare-fun b!89287 () Bool)

(declare-fun e!48659 () Bool)

(assert (=> b!89287 (= e!48659 (isStableSortedAndAtLeast!7 (t!48805 (t!48805 res!45961)) key!533 (dynLambda!1069 key!533 (_1!242 (h!1099 (t!48805 res!45961)))) (_2!242 (h!1099 (t!48805 res!45961)))))))

(declare-fun b!89286 () Bool)

(declare-fun e!48657 () Bool)

(assert (=> b!89286 (= e!48657 (<= (_2!242 (h!1099 res!45961)) (_2!242 (h!1099 (t!48805 res!45961)))))))

(declare-fun b!89284 () Bool)

(assert (=> b!89284 (= e!48658 e!48659)))

(declare-fun res!46787 () Bool)

(assert (=> b!89284 (=> (not res!46787) (not e!48659))))

(declare-fun e!48656 () Bool)

(assert (=> b!89284 (= res!46787 e!48656)))

(declare-fun res!46785 () Bool)

(assert (=> b!89284 (=> res!46785 e!48656)))

(assert (=> b!89284 (= res!46785 (< (dynLambda!1069 key!533 (_1!242 (h!1099 res!45961))) (dynLambda!1069 key!533 (_1!242 (h!1099 (t!48805 res!45961))))))))

(declare-fun b!89285 () Bool)

(assert (=> b!89285 (= e!48656 e!48657)))

(declare-fun res!46786 () Bool)

(assert (=> b!89285 (=> (not res!46786) (not e!48657))))

(assert (=> b!89285 (= res!46786 (= (dynLambda!1069 key!533 (_1!242 (h!1099 res!45961))) (dynLambda!1069 key!533 (_1!242 (h!1099 (t!48805 res!45961))))))))

(assert (= (and d!59149 (not res!46784)) b!89284))

(assert (= (and b!89284 (not res!46785)) b!89285))

(assert (= (and b!89285 res!46786) b!89286))

(assert (= (and b!89284 res!46787) b!89287))

(declare-fun b_lambda!18231 () Bool)

(assert (=> (not b_lambda!18231) (not b!89287)))

(declare-fun t!48823 () Bool)

(declare-fun tb!46707 () Bool)

(assert (=> (and start!11634 (= key!533 key!533) t!48823) tb!46707))

(declare-fun result!47161 () Bool)

(assert (=> tb!46707 (= result!47161 true)))

(assert (=> b!89287 t!48823))

(declare-fun b_and!60497 () Bool)

(assert (= b_and!60487 (and (=> t!48823 result!47161) b_and!60497)))

(declare-fun b_lambda!18233 () Bool)

(assert (=> (not b_lambda!18233) (not b!89284)))

(assert (=> b!89284 t!48823))

(declare-fun b_and!60499 () Bool)

(assert (= b_and!60497 (and (=> t!48823 result!47161) b_and!60499)))

(declare-fun b_lambda!18235 () Bool)

(assert (=> (not b_lambda!18235) (not b!89285)))

(assert (=> b!89285 t!48823))

(declare-fun b_and!60501 () Bool)

(assert (= b_and!60499 (and (=> t!48823 result!47161) b_and!60501)))

(declare-fun m!85398 () Bool)

(assert (=> b!89287 m!85398))

(assert (=> b!89287 m!85398))

(declare-fun m!85400 () Bool)

(assert (=> b!89287 m!85400))

(assert (=> b!89284 m!85398))

(assert (=> b!89285 m!85398))

(assert (=> b!89240 d!59149))

(declare-fun b!89288 () Bool)

(declare-fun e!48660 () Bool)

(declare-fun tp!17424 () Bool)

(assert (=> b!89288 (= e!48660 (and tp_is_empty!389 tp!17424))))

(assert (=> b!89249 (= tp!17422 e!48660)))

(assert (= (and b!89249 (is-Cons!695 (t!48805 (t!48805 l!1602)))) b!89288))

(declare-fun b!89289 () Bool)

(declare-fun e!48661 () Bool)

(declare-fun tp!17425 () Bool)

(assert (=> b!89289 (= e!48661 (and tp_is_empty!389 tp!17425))))

(assert (=> b!89234 (= tp!17418 e!48661)))

(assert (= (and b!89234 (is-Cons!695 (t!48805 res!46753))) b!89289))

(declare-fun b!89290 () Bool)

(declare-fun e!48662 () Bool)

(declare-fun tp!17426 () Bool)

(assert (=> b!89290 (= e!48662 (and tp_is_empty!389 tp!17426))))

(assert (=> b!89248 (= tp!17421 e!48662)))

(assert (= (and b!89248 (is-Cons!695 (t!48805 (t!48805 res!45961)))) b!89290))

(declare-fun b_lambda!18237 () Bool)

(assert (= b_lambda!18217 (or (and start!11634 b_free!7529) b_lambda!18237)))

(declare-fun b_lambda!18239 () Bool)

(assert (= b_lambda!18227 (or (and b!89194 (= lambda!10913 keyAnn!12)) (and start!11634 b_free!7527) b_lambda!18239)))

(assert (=> (and b!89194 (= lambda!10913 keyAnn!12) b!89273) d!59127))

(declare-fun b_lambda!18241 () Bool)

(assert (= b_lambda!18221 (or (and start!11634 b_free!7529) b_lambda!18241)))

(declare-fun b_lambda!18243 () Bool)

(assert (= b_lambda!18219 (or (and start!11634 b_free!7529) b_lambda!18243)))

(declare-fun b_lambda!18245 () Bool)

(assert (= b_lambda!18229 (or (and b!89194 (= lambda!10913 keyAnn!12)) (and start!11634 b_free!7527) b_lambda!18245)))

(declare-fun bs!41489 () Bool)

(declare-fun d!59151 () Bool)

(assert (= bs!41489 (and d!59151 b!89194)))

(assert (=> bs!41489 (= (dynLambda!1068 lambda!10913 (h!1099 (t!48805 l!1602))) (dynLambda!1069 key!533 (_1!242 (h!1099 (t!48805 l!1602)))))))

(declare-fun b_lambda!18257 () Bool)

(assert (=> (not b_lambda!18257) (not bs!41489)))

(assert (=> bs!41489 t!48819))

(declare-fun b_and!60503 () Bool)

(assert (= b_and!60501 (and (=> t!48819 result!47157) b_and!60503)))

(assert (=> bs!41489 m!85366))

(assert (=> (and b!89194 (= lambda!10913 keyAnn!12) b!89273) d!59151))

(declare-fun b_lambda!18247 () Bool)

(assert (= b_lambda!18235 (or (and start!11634 b_free!7529) b_lambda!18247)))

(declare-fun b_lambda!18249 () Bool)

(assert (= b_lambda!18225 (or (and b!89194 (= lambda!10913 keyAnn!12)) (and start!11634 b_free!7527) b_lambda!18249)))

(assert (=> (and b!89194 (= lambda!10913 keyAnn!12) b!89271) d!59151))

(declare-fun b_lambda!18251 () Bool)

(assert (= b_lambda!18233 (or (and start!11634 b_free!7529) b_lambda!18251)))

(declare-fun b_lambda!18253 () Bool)

(assert (= b_lambda!18231 (or (and start!11634 b_free!7529) b_lambda!18253)))

(declare-fun b_lambda!18255 () Bool)

(assert (= b_lambda!18223 (or (and b!89194 (= lambda!10913 keyAnn!12)) (and start!11634 b_free!7527) b_lambda!18255)))

(assert (=> (and b!89194 (= lambda!10913 keyAnn!12) b!89271) d!59127))

(push 1)

(assert (not b_lambda!18257))

(assert (not b_lambda!18239))

(assert (not b!89263))

(assert (not b_lambda!18253))

(assert (not b_lambda!18255))

(assert (not b!89281))

(assert (not d!59139))

(assert b_and!60495)

(assert (not b_next!39885))

(assert (not b_lambda!18213))

(assert (not b_lambda!18207))

(assert (not b!89267))

(assert (not b_lambda!18237))

(assert (not b!89287))

(assert (not b_next!39887))

(assert (not b_lambda!18241))

(assert (not b!89270))

(assert (not b_lambda!18251))

(assert tp_is_empty!389)

(assert (not b_lambda!18205))

(assert (not b!89289))

(assert (not b!89272))

(assert (not b!89290))

(assert b_and!60503)

(assert (not b_lambda!18215))

(assert (not b_lambda!18197))

(assert (not d!59141))

(assert (not b_lambda!18247))

(assert (not b!89288))

(assert (not b!89268))

(assert (not b!89275))

(assert (not b_lambda!18243))

(assert (not d!59137))

(assert (not b_lambda!18249))

(assert (not b!89251))

(assert (not b_lambda!18199))

(assert (not b_lambda!18245))

(assert (not b_lambda!18201))

(assert (not b_lambda!18203))

(assert (not b!89283))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60503)

(assert b_and!60495)

(assert (not b_next!39885))

(assert (not b_next!39887))

(check-sat)

(pop 1)

