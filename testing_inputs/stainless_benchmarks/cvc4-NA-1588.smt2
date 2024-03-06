; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11028 () Bool)

(assert start!11028)

(declare-fun b_free!7365 () Bool)

(declare-fun b_next!39305 () Bool)

(assert (=> start!11028 (= b_free!7365 (not b_next!39305))))

(declare-fun tp!16964 () Bool)

(declare-fun b_and!58907 () Bool)

(assert (=> start!11028 (= tp!16964 b_and!58907)))

(declare-fun b_free!7367 () Bool)

(declare-fun b_next!39307 () Bool)

(assert (=> start!11028 (= b_free!7367 (not b_next!39307))))

(declare-fun tp!16966 () Bool)

(declare-fun b_and!58909 () Bool)

(assert (=> start!11028 (= tp!16966 b_and!58909)))

(declare-fun b_free!7369 () Bool)

(declare-fun b_next!39309 () Bool)

(assert (=> start!11028 (= b_free!7369 (not b_next!39309))))

(declare-fun tp!16965 () Bool)

(declare-fun b_and!58911 () Bool)

(assert (=> start!11028 (= tp!16965 b_and!58911)))

(declare-fun b!84168 () Bool)

(assert (=> b!84168 true))

(declare-fun b_next!39311 () Bool)

(declare-fun lambda!10480 () Int)

(declare-fun p1!137 () Int)

(assert (=> start!11028 (= b_next!39305 (or (and b!84168 (= lambda!10480 p1!137)) b_next!39311))))

(declare-fun b_next!39313 () Bool)

(declare-fun p!821 () Int)

(assert (=> start!11028 (= b_next!39307 (or (and b!84168 (= lambda!10480 p!821)) b_next!39313))))

(declare-fun b_next!39315 () Bool)

(declare-fun p2!132 () Int)

(assert (=> start!11028 (= b_next!39309 (or (and b!84168 (= lambda!10480 p2!132)) b_next!39315))))

(declare-fun bs!40739 () Bool)

(declare-fun b!84173 () Bool)

(assert (= bs!40739 (and b!84173 b!84168)))

(declare-fun lambda!10481 () Int)

(assert (=> bs!40739 (not (= lambda!10481 lambda!10480))))

(assert (=> b!84173 true))

(declare-fun b_next!39317 () Bool)

(assert (=> start!11028 (= b_next!39311 (or (and b!84173 (= lambda!10481 p1!137)) b_next!39317))))

(declare-fun b_next!39319 () Bool)

(assert (=> start!11028 (= b_next!39313 (or (and b!84173 (= lambda!10481 p!821)) b_next!39319))))

(declare-fun b_next!39321 () Bool)

(assert (=> start!11028 (= b_next!39315 (or (and b!84173 (= lambda!10481 p2!132)) b_next!39321))))

(declare-fun bs!40740 () Bool)

(declare-fun b!84167 () Bool)

(assert (= bs!40740 (and b!84167 b!84168)))

(declare-fun lambda!10482 () Int)

(assert (=> bs!40740 (not (= lambda!10482 lambda!10480))))

(declare-fun bs!40741 () Bool)

(assert (= bs!40741 (and b!84167 b!84173)))

(assert (=> bs!40741 (not (= lambda!10482 lambda!10481))))

(assert (=> b!84167 true))

(declare-fun b_next!39323 () Bool)

(assert (=> start!11028 (= b_next!39317 (or (and b!84167 (= lambda!10482 p1!137)) b_next!39323))))

(declare-fun b_next!39325 () Bool)

(assert (=> start!11028 (= b_next!39319 (or (and b!84167 (= lambda!10482 p!821)) b_next!39325))))

(declare-fun b_next!39327 () Bool)

(assert (=> start!11028 (= b_next!39321 (or (and b!84167 (= lambda!10482 p2!132)) b_next!39327))))

(declare-fun b!84166 () Bool)

(declare-fun res!43437 () Bool)

(declare-fun e!45620 () Bool)

(assert (=> b!84166 (=> (not res!43437) (not e!45620))))

(declare-datatypes () ((List!686 (Cons!643 (h!1016 Int) (t!47950 List!686)) (Nil!645))))

(declare-fun ls!77 () List!686)

(declare-fun filter_preserves_forall!0 (List!686 Int Int) Bool)

(assert (=> b!84166 (= res!43437 (filter_preserves_forall!0 (t!47950 ls!77) lambda!10480 p!821))))

(declare-fun res!43432 () Bool)

(assert (=> b!84167 (=> (not res!43432) (not e!45620))))

(declare-fun more!2 () List!686)

(declare-fun filter!33 (List!686 Int) List!686)

(assert (=> b!84167 (= res!43432 (= more!2 (filter!33 (t!47950 ls!77) lambda!10482)))))

(declare-fun res!43436 () Bool)

(assert (=> b!84168 (=> (not res!43436) (not e!45620))))

(declare-fun less!2 () List!686)

(assert (=> b!84168 (= res!43436 (= less!2 (filter!33 (t!47950 ls!77) lambda!10480)))))

(declare-fun b!84169 () Bool)

(declare-fun res!43435 () Bool)

(assert (=> b!84169 (=> (not res!43435) (not e!45620))))

(assert (=> b!84169 (= res!43435 (= p2!132 p!821))))

(declare-fun b!84170 () Bool)

(declare-fun res!43434 () Bool)

(assert (=> b!84170 (=> (not res!43434) (not e!45620))))

(assert (=> b!84170 (= res!43434 (= p1!137 lambda!10481))))

(declare-fun b!84171 () Bool)

(declare-fun ls!80 () List!686)

(declare-fun forall!34 (List!686 Int) Bool)

(assert (=> b!84171 (= e!45620 (not (forall!34 ls!80 p2!132)))))

(declare-fun res!43439 () Bool)

(assert (=> start!11028 (=> (not res!43439) (not e!45620))))

(assert (=> start!11028 (= res!43439 (forall!34 ls!77 p!821))))

(assert (=> start!11028 e!45620))

(assert (=> start!11028 true))

(assert (=> start!11028 tp!16964))

(assert (=> start!11028 tp!16966))

(assert (=> start!11028 tp!16965))

(declare-fun b!84172 () Bool)

(declare-fun res!43440 () Bool)

(assert (=> b!84172 (=> (not res!43440) (not e!45620))))

(assert (=> b!84172 (= res!43440 (= ls!80 (t!47950 ls!77)))))

(declare-fun res!43433 () Bool)

(assert (=> b!84173 (=> (not res!43433) (not e!45620))))

(declare-fun equal!4 () List!686)

(assert (=> b!84173 (= res!43433 (= equal!4 (Cons!643 (h!1016 ls!77) (filter!33 (t!47950 ls!77) lambda!10481))))))

(declare-fun b!84174 () Bool)

(declare-fun res!43438 () Bool)

(assert (=> b!84174 (=> (not res!43438) (not e!45620))))

(assert (=> b!84174 (= res!43438 (and (not (is-Nil!645 ls!77)) (not (is-Nil!645 (t!47950 ls!77)))))))

(assert (= (and start!11028 res!43439) b!84174))

(assert (= (and b!84174 res!43438) b!84168))

(assert (= (and b!84168 res!43436) b!84173))

(assert (= (and b!84173 res!43433) b!84167))

(assert (= (and b!84167 res!43432) b!84166))

(assert (= (and b!84166 res!43437) b!84172))

(assert (= (and b!84172 res!43440) b!84170))

(assert (= (and b!84170 res!43434) b!84169))

(assert (= (and b!84169 res!43435) b!84171))

(declare-fun m!79988 () Bool)

(assert (=> start!11028 m!79988))

(declare-fun m!79990 () Bool)

(assert (=> b!84167 m!79990))

(declare-fun m!79992 () Bool)

(assert (=> b!84166 m!79992))

(declare-fun m!79994 () Bool)

(assert (=> b!84173 m!79994))

(declare-fun m!79996 () Bool)

(assert (=> b!84171 m!79996))

(declare-fun m!79998 () Bool)

(assert (=> b!84168 m!79998))

(push 1)

(assert (not b_next!39323))

(assert (not b_next!39327))

(assert (not b_next!39325))

(assert (not start!11028))

(assert (not b!84171))

(assert (not b!84173))

(assert (not b!84166))

(assert b_and!58907)

(assert b_and!58911)

(assert (not b!84168))

(assert (not b!84167))

(assert b_and!58909)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39323))

(assert (not b_next!39327))

(assert (not b_next!39325))

(assert b_and!58907)

(assert b_and!58911)

(assert b_and!58909)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!56733 () Bool)

(declare-fun e!45623 () Bool)

(assert (=> d!56733 e!45623))

(declare-fun c!21022 () Bool)

(assert (=> d!56733 (= c!21022 (is-Cons!643 (t!47950 ls!77)))))

(assert (=> d!56733 (forall!34 (t!47950 ls!77) p!821)))

(assert (=> d!56733 (= (filter_preserves_forall!0 (t!47950 ls!77) lambda!10480 p!821) true)))

(declare-fun b!84181 () Bool)

(assert (=> b!84181 (= e!45623 (forall!34 (filter!33 (t!47950 ls!77) lambda!10480) p!821))))

(declare-fun lt!19601 () Bool)

(assert (=> b!84181 (= lt!19601 (filter_preserves_forall!0 (t!47950 (t!47950 ls!77)) lambda!10480 p!821))))

(declare-fun b!84182 () Bool)

(assert (=> b!84182 (= e!45623 (forall!34 (filter!33 (t!47950 ls!77) lambda!10480) p!821))))

(assert (= (and d!56733 c!21022) b!84181))

(assert (= (and d!56733 (not c!21022)) b!84182))

(declare-fun m!80000 () Bool)

(assert (=> d!56733 m!80000))

(assert (=> b!84181 m!79998))

(assert (=> b!84181 m!79998))

(declare-fun m!80002 () Bool)

(assert (=> b!84181 m!80002))

(declare-fun m!80004 () Bool)

(assert (=> b!84181 m!80004))

(assert (=> b!84182 m!79998))

(assert (=> b!84182 m!79998))

(assert (=> b!84182 m!80002))

(assert (=> b!84166 d!56733))

(declare-fun b!84197 () Bool)

(declare-fun e!45632 () List!686)

(declare-fun lt!19606 () List!686)

(assert (=> b!84197 (= e!45632 lt!19606)))

(declare-fun b!84198 () Bool)

(declare-fun e!45633 () Bool)

(declare-fun lt!19607 () List!686)

(assert (=> b!84198 (= e!45633 (forall!34 lt!19607 lambda!10480))))

(declare-fun d!56735 () Bool)

(assert (=> d!56735 e!45633))

(declare-fun res!43453 () Bool)

(assert (=> d!56735 (=> (not res!43453) (not e!45633))))

(declare-fun size!669 (List!686) Int)

(assert (=> d!56735 (= res!43453 (<= (size!669 lt!19607) (size!669 (t!47950 ls!77))))))

(declare-fun e!45634 () List!686)

(assert (=> d!56735 (= lt!19607 e!45634)))

(declare-fun c!21027 () Bool)

(assert (=> d!56735 (= c!21027 (is-Nil!645 (t!47950 ls!77)))))

(assert (=> d!56735 (= (filter!33 (t!47950 ls!77) lambda!10480) lt!19607)))

(declare-fun b!84199 () Bool)

(declare-fun e!45635 () Bool)

(declare-fun dynLambda!998 (Int Int) Bool)

(assert (=> b!84199 (= e!45635 (dynLambda!998 lambda!10480 (h!1016 (t!47950 ls!77))))))

(declare-fun b!84200 () Bool)

(assert (=> b!84200 (= e!45634 e!45632)))

(declare-fun c!21028 () Bool)

(assert (=> b!84200 (= c!21028 e!45635)))

(declare-fun res!43452 () Bool)

(assert (=> b!84200 (=> (not res!43452) (not e!45635))))

(assert (=> b!84200 (= res!43452 (is-Cons!643 (t!47950 ls!77)))))

(assert (=> b!84200 (= lt!19606 (filter!33 (t!47950 (t!47950 ls!77)) lambda!10480))))

(declare-fun b!84201 () Bool)

(assert (=> b!84201 (= e!45634 Nil!645)))

(declare-fun b!84202 () Bool)

(assert (=> b!84202 (= e!45632 (Cons!643 (h!1016 (t!47950 ls!77)) lt!19606))))

(declare-fun b!84203 () Bool)

(declare-fun res!43451 () Bool)

(assert (=> b!84203 (=> (not res!43451) (not e!45633))))

(declare-fun content!140 (List!686) (Set Int))

(assert (=> b!84203 (= res!43451 (subset (content!140 lt!19607) (content!140 (t!47950 ls!77))))))

(assert (= (and b!84200 res!43452) b!84199))

(assert (= (and b!84200 c!21028) b!84202))

(assert (= (and b!84200 (not c!21028)) b!84197))

(assert (= (and d!56735 c!21027) b!84201))

(assert (= (and d!56735 (not c!21027)) b!84200))

(assert (= (and d!56735 res!43453) b!84203))

(assert (= (and b!84203 res!43451) b!84198))

(declare-fun b_lambda!16547 () Bool)

(assert (=> (not b_lambda!16547) (not b!84199)))

(declare-fun m!80006 () Bool)

(assert (=> b!84198 m!80006))

(declare-fun m!80008 () Bool)

(assert (=> d!56735 m!80008))

(declare-fun m!80010 () Bool)

(assert (=> d!56735 m!80010))

(declare-fun m!80012 () Bool)

(assert (=> b!84200 m!80012))

(declare-fun m!80014 () Bool)

(assert (=> b!84199 m!80014))

(declare-fun m!80016 () Bool)

(assert (=> b!84203 m!80016))

(declare-fun m!80018 () Bool)

(assert (=> b!84203 m!80018))

(assert (=> b!84168 d!56735))

(declare-fun b!84204 () Bool)

(declare-fun e!45636 () List!686)

(declare-fun lt!19608 () List!686)

(assert (=> b!84204 (= e!45636 lt!19608)))

(declare-fun b!84205 () Bool)

(declare-fun e!45637 () Bool)

(declare-fun lt!19609 () List!686)

(assert (=> b!84205 (= e!45637 (forall!34 lt!19609 lambda!10481))))

(declare-fun d!56737 () Bool)

(assert (=> d!56737 e!45637))

(declare-fun res!43456 () Bool)

(assert (=> d!56737 (=> (not res!43456) (not e!45637))))

(assert (=> d!56737 (= res!43456 (<= (size!669 lt!19609) (size!669 (t!47950 ls!77))))))

(declare-fun e!45638 () List!686)

(assert (=> d!56737 (= lt!19609 e!45638)))

(declare-fun c!21029 () Bool)

(assert (=> d!56737 (= c!21029 (is-Nil!645 (t!47950 ls!77)))))

(assert (=> d!56737 (= (filter!33 (t!47950 ls!77) lambda!10481) lt!19609)))

(declare-fun b!84206 () Bool)

(declare-fun e!45639 () Bool)

(assert (=> b!84206 (= e!45639 (dynLambda!998 lambda!10481 (h!1016 (t!47950 ls!77))))))

(declare-fun b!84207 () Bool)

(assert (=> b!84207 (= e!45638 e!45636)))

(declare-fun c!21030 () Bool)

(assert (=> b!84207 (= c!21030 e!45639)))

(declare-fun res!43455 () Bool)

(assert (=> b!84207 (=> (not res!43455) (not e!45639))))

(assert (=> b!84207 (= res!43455 (is-Cons!643 (t!47950 ls!77)))))

(assert (=> b!84207 (= lt!19608 (filter!33 (t!47950 (t!47950 ls!77)) lambda!10481))))

(declare-fun b!84208 () Bool)

(assert (=> b!84208 (= e!45638 Nil!645)))

(declare-fun b!84209 () Bool)

(assert (=> b!84209 (= e!45636 (Cons!643 (h!1016 (t!47950 ls!77)) lt!19608))))

(declare-fun b!84210 () Bool)

(declare-fun res!43454 () Bool)

(assert (=> b!84210 (=> (not res!43454) (not e!45637))))

(assert (=> b!84210 (= res!43454 (subset (content!140 lt!19609) (content!140 (t!47950 ls!77))))))

(assert (= (and b!84207 res!43455) b!84206))

(assert (= (and b!84207 c!21030) b!84209))

(assert (= (and b!84207 (not c!21030)) b!84204))

(assert (= (and d!56737 c!21029) b!84208))

(assert (= (and d!56737 (not c!21029)) b!84207))

(assert (= (and d!56737 res!43456) b!84210))

(assert (= (and b!84210 res!43454) b!84205))

(declare-fun b_lambda!16549 () Bool)

(assert (=> (not b_lambda!16549) (not b!84206)))

(declare-fun m!80020 () Bool)

(assert (=> b!84205 m!80020))

(declare-fun m!80022 () Bool)

(assert (=> d!56737 m!80022))

(assert (=> d!56737 m!80010))

(declare-fun m!80024 () Bool)

(assert (=> b!84207 m!80024))

(declare-fun m!80026 () Bool)

(assert (=> b!84206 m!80026))

(declare-fun m!80028 () Bool)

(assert (=> b!84210 m!80028))

(assert (=> b!84210 m!80018))

(assert (=> b!84173 d!56737))

(declare-fun b!84211 () Bool)

(declare-fun e!45640 () List!686)

(declare-fun lt!19610 () List!686)

(assert (=> b!84211 (= e!45640 lt!19610)))

(declare-fun b!84212 () Bool)

(declare-fun e!45641 () Bool)

(declare-fun lt!19611 () List!686)

(assert (=> b!84212 (= e!45641 (forall!34 lt!19611 lambda!10482))))

(declare-fun d!56739 () Bool)

(assert (=> d!56739 e!45641))

(declare-fun res!43459 () Bool)

(assert (=> d!56739 (=> (not res!43459) (not e!45641))))

(assert (=> d!56739 (= res!43459 (<= (size!669 lt!19611) (size!669 (t!47950 ls!77))))))

(declare-fun e!45642 () List!686)

(assert (=> d!56739 (= lt!19611 e!45642)))

(declare-fun c!21031 () Bool)

(assert (=> d!56739 (= c!21031 (is-Nil!645 (t!47950 ls!77)))))

(assert (=> d!56739 (= (filter!33 (t!47950 ls!77) lambda!10482) lt!19611)))

(declare-fun b!84213 () Bool)

(declare-fun e!45643 () Bool)

(assert (=> b!84213 (= e!45643 (dynLambda!998 lambda!10482 (h!1016 (t!47950 ls!77))))))

(declare-fun b!84214 () Bool)

(assert (=> b!84214 (= e!45642 e!45640)))

(declare-fun c!21032 () Bool)

(assert (=> b!84214 (= c!21032 e!45643)))

(declare-fun res!43458 () Bool)

(assert (=> b!84214 (=> (not res!43458) (not e!45643))))

(assert (=> b!84214 (= res!43458 (is-Cons!643 (t!47950 ls!77)))))

(assert (=> b!84214 (= lt!19610 (filter!33 (t!47950 (t!47950 ls!77)) lambda!10482))))

(declare-fun b!84215 () Bool)

(assert (=> b!84215 (= e!45642 Nil!645)))

(declare-fun b!84216 () Bool)

(assert (=> b!84216 (= e!45640 (Cons!643 (h!1016 (t!47950 ls!77)) lt!19610))))

(declare-fun b!84217 () Bool)

(declare-fun res!43457 () Bool)

(assert (=> b!84217 (=> (not res!43457) (not e!45641))))

(assert (=> b!84217 (= res!43457 (subset (content!140 lt!19611) (content!140 (t!47950 ls!77))))))

(assert (= (and b!84214 res!43458) b!84213))

(assert (= (and b!84214 c!21032) b!84216))

(assert (= (and b!84214 (not c!21032)) b!84211))

(assert (= (and d!56739 c!21031) b!84215))

(assert (= (and d!56739 (not c!21031)) b!84214))

(assert (= (and d!56739 res!43459) b!84217))

(assert (= (and b!84217 res!43457) b!84212))

(declare-fun b_lambda!16551 () Bool)

(assert (=> (not b_lambda!16551) (not b!84213)))

(declare-fun m!80030 () Bool)

(assert (=> b!84212 m!80030))

(declare-fun m!80032 () Bool)

(assert (=> d!56739 m!80032))

(assert (=> d!56739 m!80010))

(declare-fun m!80034 () Bool)

(assert (=> b!84214 m!80034))

(declare-fun m!80036 () Bool)

(assert (=> b!84213 m!80036))

(declare-fun m!80038 () Bool)

(assert (=> b!84217 m!80038))

(assert (=> b!84217 m!80018))

(assert (=> b!84167 d!56739))

(declare-fun d!56741 () Bool)

(declare-fun res!43464 () Bool)

(declare-fun e!45648 () Bool)

(assert (=> d!56741 (=> res!43464 e!45648)))

(assert (=> d!56741 (= res!43464 (is-Nil!645 ls!80))))

(assert (=> d!56741 (= (forall!34 ls!80 p2!132) e!45648)))

(declare-fun b!84222 () Bool)

(declare-fun e!45649 () Bool)

(assert (=> b!84222 (= e!45648 e!45649)))

(declare-fun res!43465 () Bool)

(assert (=> b!84222 (=> (not res!43465) (not e!45649))))

(assert (=> b!84222 (= res!43465 (dynLambda!998 p2!132 (h!1016 ls!80)))))

(declare-fun b!84223 () Bool)

(assert (=> b!84223 (= e!45649 (forall!34 (t!47950 ls!80) p2!132))))

(assert (= (and d!56741 (not res!43464)) b!84222))

(assert (= (and b!84222 res!43465) b!84223))

(declare-fun b_lambda!16553 () Bool)

(assert (=> (not b_lambda!16553) (not b!84222)))

(declare-fun t!47952 () Bool)

(declare-fun tb!46221 () Bool)

(assert (=> (and start!11028 (= p1!137 p2!132) t!47952) tb!46221))

(declare-fun result!46651 () Bool)

(assert (=> tb!46221 (= result!46651 true)))

(assert (=> b!84222 t!47952))

(declare-fun b_and!58913 () Bool)

(assert (= b_and!58907 (and (=> t!47952 result!46651) b_and!58913)))

(declare-fun t!47954 () Bool)

(declare-fun tb!46223 () Bool)

(assert (=> (and start!11028 (= p!821 p2!132) t!47954) tb!46223))

(declare-fun result!46653 () Bool)

(assert (=> tb!46223 (= result!46653 true)))

(assert (=> b!84222 t!47954))

(declare-fun b_and!58915 () Bool)

(assert (= b_and!58909 (and (=> t!47954 result!46653) b_and!58915)))

(declare-fun t!47956 () Bool)

(declare-fun tb!46225 () Bool)

(assert (=> (and start!11028 (= p2!132 p2!132) t!47956) tb!46225))

(declare-fun result!46655 () Bool)

(assert (=> tb!46225 (= result!46655 true)))

(assert (=> b!84222 t!47956))

(declare-fun b_and!58917 () Bool)

(assert (= b_and!58911 (and (=> t!47956 result!46655) b_and!58917)))

(declare-fun m!80040 () Bool)

(assert (=> b!84222 m!80040))

(declare-fun m!80042 () Bool)

(assert (=> b!84223 m!80042))

(assert (=> b!84171 d!56741))

(declare-fun d!56743 () Bool)

(declare-fun res!43466 () Bool)

(declare-fun e!45650 () Bool)

(assert (=> d!56743 (=> res!43466 e!45650)))

(assert (=> d!56743 (= res!43466 (is-Nil!645 ls!77))))

(assert (=> d!56743 (= (forall!34 ls!77 p!821) e!45650)))

(declare-fun b!84224 () Bool)

(declare-fun e!45651 () Bool)

(assert (=> b!84224 (= e!45650 e!45651)))

(declare-fun res!43467 () Bool)

(assert (=> b!84224 (=> (not res!43467) (not e!45651))))

(assert (=> b!84224 (= res!43467 (dynLambda!998 p!821 (h!1016 ls!77)))))

(declare-fun b!84225 () Bool)

(assert (=> b!84225 (= e!45651 (forall!34 (t!47950 ls!77) p!821))))

(assert (= (and d!56743 (not res!43466)) b!84224))

(assert (= (and b!84224 res!43467) b!84225))

(declare-fun b_lambda!16555 () Bool)

(assert (=> (not b_lambda!16555) (not b!84224)))

(declare-fun tb!46227 () Bool)

(declare-fun t!47958 () Bool)

(assert (=> (and start!11028 (= p1!137 p!821) t!47958) tb!46227))

(declare-fun result!46657 () Bool)

(assert (=> tb!46227 (= result!46657 true)))

(assert (=> b!84224 t!47958))

(declare-fun b_and!58919 () Bool)

(assert (= b_and!58913 (and (=> t!47958 result!46657) b_and!58919)))

(declare-fun t!47960 () Bool)

(declare-fun tb!46229 () Bool)

(assert (=> (and start!11028 (= p!821 p!821) t!47960) tb!46229))

(declare-fun result!46659 () Bool)

(assert (=> tb!46229 (= result!46659 true)))

(assert (=> b!84224 t!47960))

(declare-fun b_and!58921 () Bool)

(assert (= b_and!58915 (and (=> t!47960 result!46659) b_and!58921)))

(declare-fun tb!46231 () Bool)

(declare-fun t!47962 () Bool)

(assert (=> (and start!11028 (= p2!132 p!821) t!47962) tb!46231))

(declare-fun result!46661 () Bool)

(assert (=> tb!46231 (= result!46661 true)))

(assert (=> b!84224 t!47962))

(declare-fun b_and!58923 () Bool)

(assert (= b_and!58917 (and (=> t!47962 result!46661) b_and!58923)))

(declare-fun m!80044 () Bool)

(assert (=> b!84224 m!80044))

(assert (=> b!84225 m!80000))

(assert (=> start!11028 d!56743))

(declare-fun b_lambda!16557 () Bool)

(assert (= b_lambda!16551 (or b!84167 b_lambda!16557)))

(declare-fun bs!40742 () Bool)

(declare-fun d!56745 () Bool)

(assert (= bs!40742 (and d!56745 b!84167)))

(assert (=> bs!40742 (= (dynLambda!998 lambda!10482 (h!1016 (t!47950 ls!77))) (> (h!1016 (t!47950 ls!77)) (h!1016 ls!77)))))

(assert (=> b!84213 d!56745))

(declare-fun b_lambda!16559 () Bool)

(assert (= b_lambda!16553 (or (and b!84173 (= lambda!10481 p2!132)) (and b!84168 (= lambda!10480 p2!132)) (and start!11028 b_free!7367 (= p!821 p2!132)) (and b!84167 (= lambda!10482 p2!132)) (and start!11028 b_free!7369) (and start!11028 b_free!7365 (= p1!137 p2!132)) b_lambda!16559)))

(declare-fun bs!40743 () Bool)

(declare-fun d!56747 () Bool)

(assert (= bs!40743 (and d!56747 b!84173)))

(assert (=> bs!40743 (= (dynLambda!998 lambda!10481 (h!1016 ls!80)) (= (h!1016 ls!80) (h!1016 ls!77)))))

(assert (=> (and b!84173 (= lambda!10481 p2!132) b!84222) d!56747))

(declare-fun bs!40744 () Bool)

(declare-fun d!56749 () Bool)

(assert (= bs!40744 (and d!56749 b!84167)))

(assert (=> bs!40744 (= (dynLambda!998 lambda!10482 (h!1016 ls!80)) (> (h!1016 ls!80) (h!1016 ls!77)))))

(assert (=> (and b!84167 (= lambda!10482 p2!132) b!84222) d!56749))

(declare-fun bs!40745 () Bool)

(declare-fun d!56751 () Bool)

(assert (= bs!40745 (and d!56751 b!84168)))

(assert (=> bs!40745 (= (dynLambda!998 lambda!10480 (h!1016 ls!80)) (< (h!1016 ls!80) (h!1016 ls!77)))))

(assert (=> (and b!84168 (= lambda!10480 p2!132) b!84222) d!56751))

(declare-fun b_lambda!16561 () Bool)

(assert (= b_lambda!16549 (or b!84173 b_lambda!16561)))

(declare-fun bs!40746 () Bool)

(declare-fun d!56753 () Bool)

(assert (= bs!40746 (and d!56753 b!84173)))

(assert (=> bs!40746 (= (dynLambda!998 lambda!10481 (h!1016 (t!47950 ls!77))) (= (h!1016 (t!47950 ls!77)) (h!1016 ls!77)))))

(assert (=> b!84206 d!56753))

(declare-fun b_lambda!16563 () Bool)

(assert (= b_lambda!16555 (or (and start!11028 b_free!7365 (= p1!137 p!821)) (and start!11028 b_free!7367) (and b!84173 (= lambda!10481 p!821)) (and start!11028 b_free!7369 (= p2!132 p!821)) (and b!84168 (= lambda!10480 p!821)) (and b!84167 (= lambda!10482 p!821)) b_lambda!16563)))

(declare-fun bs!40747 () Bool)

(declare-fun d!56755 () Bool)

(assert (= bs!40747 (and d!56755 b!84167)))

(assert (=> bs!40747 (= (dynLambda!998 lambda!10482 (h!1016 ls!77)) (> (h!1016 ls!77) (h!1016 ls!77)))))

(assert (=> (and b!84167 (= lambda!10482 p!821) b!84224) d!56755))

(declare-fun bs!40748 () Bool)

(declare-fun d!56757 () Bool)

(assert (= bs!40748 (and d!56757 b!84173)))

(assert (=> bs!40748 (= (dynLambda!998 lambda!10481 (h!1016 ls!77)) (= (h!1016 ls!77) (h!1016 ls!77)))))

(assert (=> (and b!84173 (= lambda!10481 p!821) b!84224) d!56757))

(declare-fun bs!40749 () Bool)

(declare-fun d!56759 () Bool)

(assert (= bs!40749 (and d!56759 b!84168)))

(assert (=> bs!40749 (= (dynLambda!998 lambda!10480 (h!1016 ls!77)) (< (h!1016 ls!77) (h!1016 ls!77)))))

(assert (=> (and b!84168 (= lambda!10480 p!821) b!84224) d!56759))

(declare-fun b_lambda!16565 () Bool)

(assert (= b_lambda!16547 (or b!84168 b_lambda!16565)))

(declare-fun bs!40750 () Bool)

(declare-fun d!56761 () Bool)

(assert (= bs!40750 (and d!56761 b!84168)))

(assert (=> bs!40750 (= (dynLambda!998 lambda!10480 (h!1016 (t!47950 ls!77))) (< (h!1016 (t!47950 ls!77)) (h!1016 ls!77)))))

(assert (=> b!84199 d!56761))

(push 1)

(assert (not b_next!39323))

(assert (not b!84182))

(assert (not b!84214))

(assert (not b!84203))

(assert b_and!58919)

(assert (not b!84217))

(assert (not b!84198))

(assert b_and!58923)

(assert (not b!84223))

(assert (not b_next!39327))

(assert (not b_next!39325))

(assert (not b_lambda!16565))

(assert b_and!58921)

(assert (not b!84210))

(assert (not d!56735))

(assert (not b_lambda!16559))

(assert (not b!84207))

(assert (not d!56737))

(assert (not d!56733))

(assert (not d!56739))

(assert (not b_lambda!16563))

(assert (not b_lambda!16561))

(assert (not b!84205))

(assert (not b!84225))

(assert (not b!84181))

(assert (not b!84200))

(assert (not b!84212))

(assert (not b_lambda!16557))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39323))

(assert b_and!58919)

(assert b_and!58923)

(assert (not b_next!39327))

(assert (not b_next!39325))

(assert b_and!58921)

(check-sat)

(pop 1)

