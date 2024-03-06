; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11036 () Bool)

(assert start!11036)

(declare-fun b_free!7371 () Bool)

(declare-fun b_next!39329 () Bool)

(assert (=> start!11036 (= b_free!7371 (not b_next!39329))))

(declare-fun tp!16975 () Bool)

(declare-fun b_and!58925 () Bool)

(assert (=> start!11036 (= tp!16975 b_and!58925)))

(declare-fun b_free!7373 () Bool)

(declare-fun b_next!39331 () Bool)

(assert (=> start!11036 (= b_free!7373 (not b_next!39331))))

(declare-fun tp!16973 () Bool)

(declare-fun b_and!58927 () Bool)

(assert (=> start!11036 (= tp!16973 b_and!58927)))

(declare-fun b_free!7375 () Bool)

(declare-fun b_next!39333 () Bool)

(assert (=> start!11036 (= b_free!7375 (not b_next!39333))))

(declare-fun tp!16974 () Bool)

(declare-fun b_and!58929 () Bool)

(assert (=> start!11036 (= tp!16974 b_and!58929)))

(declare-fun b!84253 () Bool)

(assert (=> b!84253 true))

(declare-fun p1!139 () Int)

(declare-fun b_next!39335 () Bool)

(declare-fun lambda!10495 () Int)

(assert (=> start!11036 (= b_next!39329 (or (and b!84253 (= lambda!10495 p1!139)) b_next!39335))))

(declare-fun b_next!39337 () Bool)

(declare-fun p2!134 () Int)

(assert (=> start!11036 (= b_next!39331 (or (and b!84253 (= lambda!10495 p2!134)) b_next!39337))))

(declare-fun b_next!39339 () Bool)

(declare-fun p!821 () Int)

(assert (=> start!11036 (= b_next!39333 (or (and b!84253 (= lambda!10495 p!821)) b_next!39339))))

(declare-fun bs!40752 () Bool)

(declare-fun b!84248 () Bool)

(assert (= bs!40752 (and b!84248 b!84253)))

(declare-fun lambda!10496 () Int)

(assert (=> bs!40752 (not (= lambda!10496 lambda!10495))))

(assert (=> b!84248 true))

(declare-fun b_next!39341 () Bool)

(assert (=> start!11036 (= b_next!39335 (or (and b!84248 (= lambda!10496 p1!139)) b_next!39341))))

(declare-fun b_next!39343 () Bool)

(assert (=> start!11036 (= b_next!39337 (or (and b!84248 (= lambda!10496 p2!134)) b_next!39343))))

(declare-fun b_next!39345 () Bool)

(assert (=> start!11036 (= b_next!39339 (or (and b!84248 (= lambda!10496 p!821)) b_next!39345))))

(declare-fun bs!40753 () Bool)

(declare-fun b!84247 () Bool)

(assert (= bs!40753 (and b!84247 b!84253)))

(declare-fun lambda!10497 () Int)

(assert (=> bs!40753 (not (= lambda!10497 lambda!10495))))

(declare-fun bs!40754 () Bool)

(assert (= bs!40754 (and b!84247 b!84248)))

(assert (=> bs!40754 (not (= lambda!10497 lambda!10496))))

(assert (=> b!84247 true))

(declare-fun b_next!39347 () Bool)

(assert (=> start!11036 (= b_next!39341 (or (and b!84247 (= lambda!10497 p1!139)) b_next!39347))))

(declare-fun b_next!39349 () Bool)

(assert (=> start!11036 (= b_next!39343 (or (and b!84247 (= lambda!10497 p2!134)) b_next!39349))))

(declare-fun b_next!39351 () Bool)

(assert (=> start!11036 (= b_next!39345 (or (and b!84247 (= lambda!10497 p!821)) b_next!39351))))

(declare-fun b!84246 () Bool)

(declare-fun res!43488 () Bool)

(declare-fun e!45656 () Bool)

(assert (=> b!84246 (=> (not res!43488) (not e!45656))))

(declare-fun t!47721 () Bool)

(declare-fun e!45657 () Bool)

(assert (=> b!84246 (= res!43488 (= t!47721 e!45657))))

(declare-fun res!43492 () Bool)

(assert (=> b!84246 (=> (not res!43492) (not e!45657))))

(declare-datatypes () ((List!687 (Cons!644 (h!1017 Int) (t!47963 List!687)) (Nil!646))))

(declare-fun ls!77 () List!687)

(declare-fun filter_preserves_forall!0 (List!687 Int Int) Bool)

(assert (=> b!84246 (= res!43492 (filter_preserves_forall!0 (t!47963 ls!77) lambda!10495 p!821))))

(declare-fun res!43493 () Bool)

(assert (=> b!84247 (=> (not res!43493) (not e!45656))))

(declare-fun more!2 () List!687)

(declare-fun filter!34 (List!687 Int) List!687)

(assert (=> b!84247 (= res!43493 (= more!2 (filter!34 (t!47963 ls!77) lambda!10497)))))

(declare-fun res!43491 () Bool)

(assert (=> b!84248 (=> (not res!43491) (not e!45656))))

(declare-fun equal!4 () List!687)

(assert (=> b!84248 (= res!43491 (= equal!4 (Cons!644 (h!1017 ls!77) (filter!34 (t!47963 ls!77) lambda!10496))))))

(declare-fun res!43490 () Bool)

(assert (=> start!11036 (=> (not res!43490) (not e!45656))))

(declare-fun forall!35 (List!687 Int) Bool)

(assert (=> start!11036 (= res!43490 (forall!35 ls!77 p!821))))

(assert (=> start!11036 e!45656))

(assert (=> start!11036 true))

(assert (=> start!11036 tp!16975))

(assert (=> start!11036 tp!16973))

(assert (=> start!11036 tp!16974))

(declare-fun b!84249 () Bool)

(declare-fun res!43489 () Bool)

(assert (=> b!84249 (=> (not res!43489) (not e!45656))))

(assert (=> b!84249 (= res!43489 (= p1!139 lambda!10497))))

(declare-fun b!84250 () Bool)

(declare-fun res!43495 () Bool)

(assert (=> b!84250 (=> (not res!43495) (not e!45656))))

(assert (=> b!84250 (= res!43495 (and (not (is-Nil!646 ls!77)) (not (is-Nil!646 (t!47963 ls!77)))))))

(declare-fun b!84251 () Bool)

(declare-fun res!43497 () Bool)

(assert (=> b!84251 (=> (not res!43497) (not e!45656))))

(declare-fun ls!82 () List!687)

(declare-fun res!40793 () Bool)

(assert (=> b!84251 (= res!43497 (and (= res!40793 t!47721) res!40793 (= ls!82 (t!47963 ls!77))))))

(declare-fun b!84252 () Bool)

(declare-fun res!43494 () Bool)

(assert (=> b!84252 (=> (not res!43494) (not e!45656))))

(assert (=> b!84252 (= res!43494 (= p2!134 p!821))))

(declare-fun res!43496 () Bool)

(assert (=> b!84253 (=> (not res!43496) (not e!45656))))

(declare-fun less!2 () List!687)

(assert (=> b!84253 (= res!43496 (= less!2 (filter!34 (t!47963 ls!77) lambda!10495)))))

(declare-fun b!84254 () Bool)

(assert (=> b!84254 (= e!45657 (filter_preserves_forall!0 (t!47963 ls!77) lambda!10496 p!821))))

(declare-fun b!84255 () Bool)

(assert (=> b!84255 (= e!45656 (not (forall!35 ls!82 p2!134)))))

(assert (= (and start!11036 res!43490) b!84250))

(assert (= (and b!84250 res!43495) b!84253))

(assert (= (and b!84253 res!43496) b!84248))

(assert (= (and b!84248 res!43491) b!84247))

(assert (= (and b!84247 res!43493) b!84246))

(assert (= (and b!84246 res!43492) b!84254))

(assert (= (and b!84246 res!43488) b!84251))

(assert (= (and b!84251 res!43497) b!84249))

(assert (= (and b!84249 res!43489) b!84252))

(assert (= (and b!84252 res!43494) b!84255))

(declare-fun m!80046 () Bool)

(assert (=> b!84248 m!80046))

(declare-fun m!80048 () Bool)

(assert (=> b!84253 m!80048))

(declare-fun m!80050 () Bool)

(assert (=> b!84254 m!80050))

(declare-fun m!80052 () Bool)

(assert (=> b!84247 m!80052))

(declare-fun m!80054 () Bool)

(assert (=> b!84246 m!80054))

(declare-fun m!80056 () Bool)

(assert (=> start!11036 m!80056))

(declare-fun m!80058 () Bool)

(assert (=> b!84255 m!80058))

(push 1)

(assert (not b!84246))

(assert b_and!58925)

(assert b_and!58927)

(assert (not b!84255))

(assert (not b!84253))

(assert (not b!84254))

(assert (not start!11036))

(assert (not b_next!39347))

(assert b_and!58929)

(assert (not b_next!39351))

(assert (not b!84248))

(assert (not b!84247))

(assert (not b_next!39349))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58925)

(assert b_and!58927)

(assert (not b_next!39347))

(assert b_and!58929)

(assert (not b_next!39351))

(assert (not b_next!39349))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!84272 () Bool)

(declare-fun e!45669 () List!687)

(declare-fun e!45667 () List!687)

(assert (=> b!84272 (= e!45669 e!45667)))

(declare-fun c!21037 () Bool)

(declare-fun e!45668 () Bool)

(assert (=> b!84272 (= c!21037 e!45668)))

(declare-fun res!43510 () Bool)

(assert (=> b!84272 (=> (not res!43510) (not e!45668))))

(assert (=> b!84272 (= res!43510 (is-Cons!644 (t!47963 ls!77)))))

(declare-fun lt!19617 () List!687)

(assert (=> b!84272 (= lt!19617 (filter!34 (t!47963 (t!47963 ls!77)) lambda!10496))))

(declare-fun b!84273 () Bool)

(assert (=> b!84273 (= e!45667 lt!19617)))

(declare-fun b!84274 () Bool)

(assert (=> b!84274 (= e!45667 (Cons!644 (h!1017 (t!47963 ls!77)) lt!19617))))

(declare-fun b!84275 () Bool)

(declare-fun dynLambda!999 (Int Int) Bool)

(assert (=> b!84275 (= e!45668 (dynLambda!999 lambda!10496 (h!1017 (t!47963 ls!77))))))

(declare-fun b!84276 () Bool)

(assert (=> b!84276 (= e!45669 Nil!646)))

(declare-fun b!84277 () Bool)

(declare-fun e!45666 () Bool)

(declare-fun lt!19616 () List!687)

(assert (=> b!84277 (= e!45666 (forall!35 lt!19616 lambda!10496))))

(declare-fun b!84278 () Bool)

(declare-fun res!43509 () Bool)

(assert (=> b!84278 (=> (not res!43509) (not e!45666))))

(declare-fun content!141 (List!687) (Set Int))

(assert (=> b!84278 (= res!43509 (subset (content!141 lt!19616) (content!141 (t!47963 ls!77))))))

(declare-fun d!56763 () Bool)

(assert (=> d!56763 e!45666))

(declare-fun res!43508 () Bool)

(assert (=> d!56763 (=> (not res!43508) (not e!45666))))

(declare-fun size!670 (List!687) Int)

(assert (=> d!56763 (= res!43508 (<= (size!670 lt!19616) (size!670 (t!47963 ls!77))))))

(assert (=> d!56763 (= lt!19616 e!45669)))

(declare-fun c!21038 () Bool)

(assert (=> d!56763 (= c!21038 (is-Nil!646 (t!47963 ls!77)))))

(assert (=> d!56763 (= (filter!34 (t!47963 ls!77) lambda!10496) lt!19616)))

(assert (= (and b!84272 res!43510) b!84275))

(assert (= (and b!84272 c!21037) b!84274))

(assert (= (and b!84272 (not c!21037)) b!84273))

(assert (= (and d!56763 c!21038) b!84276))

(assert (= (and d!56763 (not c!21038)) b!84272))

(assert (= (and d!56763 res!43508) b!84278))

(assert (= (and b!84278 res!43509) b!84277))

(declare-fun b_lambda!16567 () Bool)

(assert (=> (not b_lambda!16567) (not b!84275)))

(declare-fun m!80060 () Bool)

(assert (=> b!84278 m!80060))

(declare-fun m!80062 () Bool)

(assert (=> b!84278 m!80062))

(declare-fun m!80064 () Bool)

(assert (=> b!84275 m!80064))

(declare-fun m!80066 () Bool)

(assert (=> b!84272 m!80066))

(declare-fun m!80068 () Bool)

(assert (=> b!84277 m!80068))

(declare-fun m!80070 () Bool)

(assert (=> d!56763 m!80070))

(declare-fun m!80072 () Bool)

(assert (=> d!56763 m!80072))

(assert (=> b!84248 d!56763))

(declare-fun b!84279 () Bool)

(declare-fun e!45673 () List!687)

(declare-fun e!45671 () List!687)

(assert (=> b!84279 (= e!45673 e!45671)))

(declare-fun c!21039 () Bool)

(declare-fun e!45672 () Bool)

(assert (=> b!84279 (= c!21039 e!45672)))

(declare-fun res!43513 () Bool)

(assert (=> b!84279 (=> (not res!43513) (not e!45672))))

(assert (=> b!84279 (= res!43513 (is-Cons!644 (t!47963 ls!77)))))

(declare-fun lt!19619 () List!687)

(assert (=> b!84279 (= lt!19619 (filter!34 (t!47963 (t!47963 ls!77)) lambda!10497))))

(declare-fun b!84280 () Bool)

(assert (=> b!84280 (= e!45671 lt!19619)))

(declare-fun b!84281 () Bool)

(assert (=> b!84281 (= e!45671 (Cons!644 (h!1017 (t!47963 ls!77)) lt!19619))))

(declare-fun b!84282 () Bool)

(assert (=> b!84282 (= e!45672 (dynLambda!999 lambda!10497 (h!1017 (t!47963 ls!77))))))

(declare-fun b!84283 () Bool)

(assert (=> b!84283 (= e!45673 Nil!646)))

(declare-fun b!84284 () Bool)

(declare-fun e!45670 () Bool)

(declare-fun lt!19618 () List!687)

(assert (=> b!84284 (= e!45670 (forall!35 lt!19618 lambda!10497))))

(declare-fun b!84285 () Bool)

(declare-fun res!43512 () Bool)

(assert (=> b!84285 (=> (not res!43512) (not e!45670))))

(assert (=> b!84285 (= res!43512 (subset (content!141 lt!19618) (content!141 (t!47963 ls!77))))))

(declare-fun d!56765 () Bool)

(assert (=> d!56765 e!45670))

(declare-fun res!43511 () Bool)

(assert (=> d!56765 (=> (not res!43511) (not e!45670))))

(assert (=> d!56765 (= res!43511 (<= (size!670 lt!19618) (size!670 (t!47963 ls!77))))))

(assert (=> d!56765 (= lt!19618 e!45673)))

(declare-fun c!21040 () Bool)

(assert (=> d!56765 (= c!21040 (is-Nil!646 (t!47963 ls!77)))))

(assert (=> d!56765 (= (filter!34 (t!47963 ls!77) lambda!10497) lt!19618)))

(assert (= (and b!84279 res!43513) b!84282))

(assert (= (and b!84279 c!21039) b!84281))

(assert (= (and b!84279 (not c!21039)) b!84280))

(assert (= (and d!56765 c!21040) b!84283))

(assert (= (and d!56765 (not c!21040)) b!84279))

(assert (= (and d!56765 res!43511) b!84285))

(assert (= (and b!84285 res!43512) b!84284))

(declare-fun b_lambda!16569 () Bool)

(assert (=> (not b_lambda!16569) (not b!84282)))

(declare-fun m!80074 () Bool)

(assert (=> b!84285 m!80074))

(assert (=> b!84285 m!80062))

(declare-fun m!80076 () Bool)

(assert (=> b!84282 m!80076))

(declare-fun m!80078 () Bool)

(assert (=> b!84279 m!80078))

(declare-fun m!80080 () Bool)

(assert (=> b!84284 m!80080))

(declare-fun m!80082 () Bool)

(assert (=> d!56765 m!80082))

(assert (=> d!56765 m!80072))

(assert (=> b!84247 d!56765))

(declare-fun d!56767 () Bool)

(declare-fun e!45676 () Bool)

(assert (=> d!56767 e!45676))

(declare-fun c!21043 () Bool)

(assert (=> d!56767 (= c!21043 (is-Cons!644 (t!47963 ls!77)))))

(assert (=> d!56767 (forall!35 (t!47963 ls!77) p!821)))

(assert (=> d!56767 (= (filter_preserves_forall!0 (t!47963 ls!77) lambda!10496 p!821) true)))

(declare-fun b!84290 () Bool)

(assert (=> b!84290 (= e!45676 (forall!35 (filter!34 (t!47963 ls!77) lambda!10496) p!821))))

(declare-fun lt!19622 () Bool)

(assert (=> b!84290 (= lt!19622 (filter_preserves_forall!0 (t!47963 (t!47963 ls!77)) lambda!10496 p!821))))

(declare-fun b!84291 () Bool)

(assert (=> b!84291 (= e!45676 (forall!35 (filter!34 (t!47963 ls!77) lambda!10496) p!821))))

(assert (= (and d!56767 c!21043) b!84290))

(assert (= (and d!56767 (not c!21043)) b!84291))

(declare-fun m!80084 () Bool)

(assert (=> d!56767 m!80084))

(assert (=> b!84290 m!80046))

(assert (=> b!84290 m!80046))

(declare-fun m!80086 () Bool)

(assert (=> b!84290 m!80086))

(declare-fun m!80088 () Bool)

(assert (=> b!84290 m!80088))

(assert (=> b!84291 m!80046))

(assert (=> b!84291 m!80046))

(assert (=> b!84291 m!80086))

(assert (=> b!84254 d!56767))

(declare-fun d!56769 () Bool)

(declare-fun res!43518 () Bool)

(declare-fun e!45681 () Bool)

(assert (=> d!56769 (=> res!43518 e!45681)))

(assert (=> d!56769 (= res!43518 (is-Nil!646 ls!77))))

(assert (=> d!56769 (= (forall!35 ls!77 p!821) e!45681)))

(declare-fun b!84296 () Bool)

(declare-fun e!45682 () Bool)

(assert (=> b!84296 (= e!45681 e!45682)))

(declare-fun res!43519 () Bool)

(assert (=> b!84296 (=> (not res!43519) (not e!45682))))

(assert (=> b!84296 (= res!43519 (dynLambda!999 p!821 (h!1017 ls!77)))))

(declare-fun b!84297 () Bool)

(assert (=> b!84297 (= e!45682 (forall!35 (t!47963 ls!77) p!821))))

(assert (= (and d!56769 (not res!43518)) b!84296))

(assert (= (and b!84296 res!43519) b!84297))

(declare-fun b_lambda!16571 () Bool)

(assert (=> (not b_lambda!16571) (not b!84296)))

(declare-fun t!47965 () Bool)

(declare-fun tb!46233 () Bool)

(assert (=> (and start!11036 (= p1!139 p!821) t!47965) tb!46233))

(declare-fun result!46663 () Bool)

(assert (=> tb!46233 (= result!46663 true)))

(assert (=> b!84296 t!47965))

(declare-fun b_and!58931 () Bool)

(assert (= b_and!58925 (and (=> t!47965 result!46663) b_and!58931)))

(declare-fun t!47967 () Bool)

(declare-fun tb!46235 () Bool)

(assert (=> (and start!11036 (= p2!134 p!821) t!47967) tb!46235))

(declare-fun result!46665 () Bool)

(assert (=> tb!46235 (= result!46665 true)))

(assert (=> b!84296 t!47967))

(declare-fun b_and!58933 () Bool)

(assert (= b_and!58927 (and (=> t!47967 result!46665) b_and!58933)))

(declare-fun t!47969 () Bool)

(declare-fun tb!46237 () Bool)

(assert (=> (and start!11036 (= p!821 p!821) t!47969) tb!46237))

(declare-fun result!46667 () Bool)

(assert (=> tb!46237 (= result!46667 true)))

(assert (=> b!84296 t!47969))

(declare-fun b_and!58935 () Bool)

(assert (= b_and!58929 (and (=> t!47969 result!46667) b_and!58935)))

(declare-fun m!80090 () Bool)

(assert (=> b!84296 m!80090))

(assert (=> b!84297 m!80084))

(assert (=> start!11036 d!56769))

(declare-fun d!56771 () Bool)

(declare-fun res!43520 () Bool)

(declare-fun e!45683 () Bool)

(assert (=> d!56771 (=> res!43520 e!45683)))

(assert (=> d!56771 (= res!43520 (is-Nil!646 ls!82))))

(assert (=> d!56771 (= (forall!35 ls!82 p2!134) e!45683)))

(declare-fun b!84298 () Bool)

(declare-fun e!45684 () Bool)

(assert (=> b!84298 (= e!45683 e!45684)))

(declare-fun res!43521 () Bool)

(assert (=> b!84298 (=> (not res!43521) (not e!45684))))

(assert (=> b!84298 (= res!43521 (dynLambda!999 p2!134 (h!1017 ls!82)))))

(declare-fun b!84299 () Bool)

(assert (=> b!84299 (= e!45684 (forall!35 (t!47963 ls!82) p2!134))))

(assert (= (and d!56771 (not res!43520)) b!84298))

(assert (= (and b!84298 res!43521) b!84299))

(declare-fun b_lambda!16573 () Bool)

(assert (=> (not b_lambda!16573) (not b!84298)))

(declare-fun t!47971 () Bool)

(declare-fun tb!46239 () Bool)

(assert (=> (and start!11036 (= p1!139 p2!134) t!47971) tb!46239))

(declare-fun result!46669 () Bool)

(assert (=> tb!46239 (= result!46669 true)))

(assert (=> b!84298 t!47971))

(declare-fun b_and!58937 () Bool)

(assert (= b_and!58931 (and (=> t!47971 result!46669) b_and!58937)))

(declare-fun t!47973 () Bool)

(declare-fun tb!46241 () Bool)

(assert (=> (and start!11036 (= p2!134 p2!134) t!47973) tb!46241))

(declare-fun result!46671 () Bool)

(assert (=> tb!46241 (= result!46671 true)))

(assert (=> b!84298 t!47973))

(declare-fun b_and!58939 () Bool)

(assert (= b_and!58933 (and (=> t!47973 result!46671) b_and!58939)))

(declare-fun t!47975 () Bool)

(declare-fun tb!46243 () Bool)

(assert (=> (and start!11036 (= p!821 p2!134) t!47975) tb!46243))

(declare-fun result!46673 () Bool)

(assert (=> tb!46243 (= result!46673 true)))

(assert (=> b!84298 t!47975))

(declare-fun b_and!58941 () Bool)

(assert (= b_and!58935 (and (=> t!47975 result!46673) b_and!58941)))

(declare-fun m!80092 () Bool)

(assert (=> b!84298 m!80092))

(declare-fun m!80094 () Bool)

(assert (=> b!84299 m!80094))

(assert (=> b!84255 d!56771))

(declare-fun d!56773 () Bool)

(declare-fun e!45685 () Bool)

(assert (=> d!56773 e!45685))

(declare-fun c!21044 () Bool)

(assert (=> d!56773 (= c!21044 (is-Cons!644 (t!47963 ls!77)))))

(assert (=> d!56773 (forall!35 (t!47963 ls!77) p!821)))

(assert (=> d!56773 (= (filter_preserves_forall!0 (t!47963 ls!77) lambda!10495 p!821) true)))

(declare-fun b!84300 () Bool)

(assert (=> b!84300 (= e!45685 (forall!35 (filter!34 (t!47963 ls!77) lambda!10495) p!821))))

(declare-fun lt!19623 () Bool)

(assert (=> b!84300 (= lt!19623 (filter_preserves_forall!0 (t!47963 (t!47963 ls!77)) lambda!10495 p!821))))

(declare-fun b!84301 () Bool)

(assert (=> b!84301 (= e!45685 (forall!35 (filter!34 (t!47963 ls!77) lambda!10495) p!821))))

(assert (= (and d!56773 c!21044) b!84300))

(assert (= (and d!56773 (not c!21044)) b!84301))

(assert (=> d!56773 m!80084))

(assert (=> b!84300 m!80048))

(assert (=> b!84300 m!80048))

(declare-fun m!80096 () Bool)

(assert (=> b!84300 m!80096))

(declare-fun m!80098 () Bool)

(assert (=> b!84300 m!80098))

(assert (=> b!84301 m!80048))

(assert (=> b!84301 m!80048))

(assert (=> b!84301 m!80096))

(assert (=> b!84246 d!56773))

(declare-fun b!84302 () Bool)

(declare-fun e!45689 () List!687)

(declare-fun e!45687 () List!687)

(assert (=> b!84302 (= e!45689 e!45687)))

(declare-fun c!21045 () Bool)

(declare-fun e!45688 () Bool)

(assert (=> b!84302 (= c!21045 e!45688)))

(declare-fun res!43524 () Bool)

(assert (=> b!84302 (=> (not res!43524) (not e!45688))))

(assert (=> b!84302 (= res!43524 (is-Cons!644 (t!47963 ls!77)))))

(declare-fun lt!19625 () List!687)

(assert (=> b!84302 (= lt!19625 (filter!34 (t!47963 (t!47963 ls!77)) lambda!10495))))

(declare-fun b!84303 () Bool)

(assert (=> b!84303 (= e!45687 lt!19625)))

(declare-fun b!84304 () Bool)

(assert (=> b!84304 (= e!45687 (Cons!644 (h!1017 (t!47963 ls!77)) lt!19625))))

(declare-fun b!84305 () Bool)

(assert (=> b!84305 (= e!45688 (dynLambda!999 lambda!10495 (h!1017 (t!47963 ls!77))))))

(declare-fun b!84306 () Bool)

(assert (=> b!84306 (= e!45689 Nil!646)))

(declare-fun b!84307 () Bool)

(declare-fun e!45686 () Bool)

(declare-fun lt!19624 () List!687)

(assert (=> b!84307 (= e!45686 (forall!35 lt!19624 lambda!10495))))

(declare-fun b!84308 () Bool)

(declare-fun res!43523 () Bool)

(assert (=> b!84308 (=> (not res!43523) (not e!45686))))

(assert (=> b!84308 (= res!43523 (subset (content!141 lt!19624) (content!141 (t!47963 ls!77))))))

(declare-fun d!56775 () Bool)

(assert (=> d!56775 e!45686))

(declare-fun res!43522 () Bool)

(assert (=> d!56775 (=> (not res!43522) (not e!45686))))

(assert (=> d!56775 (= res!43522 (<= (size!670 lt!19624) (size!670 (t!47963 ls!77))))))

(assert (=> d!56775 (= lt!19624 e!45689)))

(declare-fun c!21046 () Bool)

(assert (=> d!56775 (= c!21046 (is-Nil!646 (t!47963 ls!77)))))

(assert (=> d!56775 (= (filter!34 (t!47963 ls!77) lambda!10495) lt!19624)))

(assert (= (and b!84302 res!43524) b!84305))

(assert (= (and b!84302 c!21045) b!84304))

(assert (= (and b!84302 (not c!21045)) b!84303))

(assert (= (and d!56775 c!21046) b!84306))

(assert (= (and d!56775 (not c!21046)) b!84302))

(assert (= (and d!56775 res!43522) b!84308))

(assert (= (and b!84308 res!43523) b!84307))

(declare-fun b_lambda!16575 () Bool)

(assert (=> (not b_lambda!16575) (not b!84305)))

(declare-fun m!80100 () Bool)

(assert (=> b!84308 m!80100))

(assert (=> b!84308 m!80062))

(declare-fun m!80102 () Bool)

(assert (=> b!84305 m!80102))

(declare-fun m!80104 () Bool)

(assert (=> b!84302 m!80104))

(declare-fun m!80106 () Bool)

(assert (=> b!84307 m!80106))

(declare-fun m!80108 () Bool)

(assert (=> d!56775 m!80108))

(assert (=> d!56775 m!80072))

(assert (=> b!84253 d!56775))

(declare-fun b_lambda!16577 () Bool)

(assert (= b_lambda!16575 (or b!84253 b_lambda!16577)))

(declare-fun bs!40755 () Bool)

(declare-fun d!56777 () Bool)

(assert (= bs!40755 (and d!56777 b!84253)))

(assert (=> bs!40755 (= (dynLambda!999 lambda!10495 (h!1017 (t!47963 ls!77))) (< (h!1017 (t!47963 ls!77)) (h!1017 ls!77)))))

(assert (=> b!84305 d!56777))

(declare-fun b_lambda!16579 () Bool)

(assert (= b_lambda!16571 (or (and start!11036 b_free!7373 (= p2!134 p!821)) (and b!84248 (= lambda!10496 p!821)) (and b!84253 (= lambda!10495 p!821)) (and b!84247 (= lambda!10497 p!821)) (and start!11036 b_free!7375) (and start!11036 b_free!7371 (= p1!139 p!821)) b_lambda!16579)))

(declare-fun bs!40756 () Bool)

(declare-fun d!56779 () Bool)

(assert (= bs!40756 (and d!56779 b!84247)))

(assert (=> bs!40756 (= (dynLambda!999 lambda!10497 (h!1017 ls!77)) (> (h!1017 ls!77) (h!1017 ls!77)))))

(assert (=> (and b!84247 (= lambda!10497 p!821) b!84296) d!56779))

(declare-fun bs!40757 () Bool)

(declare-fun d!56781 () Bool)

(assert (= bs!40757 (and d!56781 b!84253)))

(assert (=> bs!40757 (= (dynLambda!999 lambda!10495 (h!1017 ls!77)) (< (h!1017 ls!77) (h!1017 ls!77)))))

(assert (=> (and b!84253 (= lambda!10495 p!821) b!84296) d!56781))

(declare-fun bs!40758 () Bool)

(declare-fun d!56783 () Bool)

(assert (= bs!40758 (and d!56783 b!84248)))

(assert (=> bs!40758 (= (dynLambda!999 lambda!10496 (h!1017 ls!77)) (= (h!1017 ls!77) (h!1017 ls!77)))))

(assert (=> (and b!84248 (= lambda!10496 p!821) b!84296) d!56783))

(declare-fun b_lambda!16581 () Bool)

(assert (= b_lambda!16569 (or b!84247 b_lambda!16581)))

(declare-fun bs!40759 () Bool)

(declare-fun d!56785 () Bool)

(assert (= bs!40759 (and d!56785 b!84247)))

(assert (=> bs!40759 (= (dynLambda!999 lambda!10497 (h!1017 (t!47963 ls!77))) (> (h!1017 (t!47963 ls!77)) (h!1017 ls!77)))))

(assert (=> b!84282 d!56785))

(declare-fun b_lambda!16583 () Bool)

(assert (= b_lambda!16567 (or b!84248 b_lambda!16583)))

(declare-fun bs!40760 () Bool)

(declare-fun d!56787 () Bool)

(assert (= bs!40760 (and d!56787 b!84248)))

(assert (=> bs!40760 (= (dynLambda!999 lambda!10496 (h!1017 (t!47963 ls!77))) (= (h!1017 (t!47963 ls!77)) (h!1017 ls!77)))))

(assert (=> b!84275 d!56787))

(declare-fun b_lambda!16585 () Bool)

(assert (= b_lambda!16573 (or (and start!11036 b_free!7371 (= p1!139 p2!134)) (and start!11036 b_free!7375 (= p!821 p2!134)) (and b!84247 (= lambda!10497 p2!134)) (and b!84253 (= lambda!10495 p2!134)) (and start!11036 b_free!7373) (and b!84248 (= lambda!10496 p2!134)) b_lambda!16585)))

(declare-fun bs!40761 () Bool)

(declare-fun d!56789 () Bool)

(assert (= bs!40761 (and d!56789 b!84253)))

(assert (=> bs!40761 (= (dynLambda!999 lambda!10495 (h!1017 ls!82)) (< (h!1017 ls!82) (h!1017 ls!77)))))

(assert (=> (and b!84253 (= lambda!10495 p2!134) b!84298) d!56789))

(declare-fun bs!40762 () Bool)

(declare-fun d!56791 () Bool)

(assert (= bs!40762 (and d!56791 b!84248)))

(assert (=> bs!40762 (= (dynLambda!999 lambda!10496 (h!1017 ls!82)) (= (h!1017 ls!82) (h!1017 ls!77)))))

(assert (=> (and b!84248 (= lambda!10496 p2!134) b!84298) d!56791))

(declare-fun bs!40763 () Bool)

(declare-fun d!56793 () Bool)

(assert (= bs!40763 (and d!56793 b!84247)))

(assert (=> bs!40763 (= (dynLambda!999 lambda!10497 (h!1017 ls!82)) (> (h!1017 ls!82) (h!1017 ls!77)))))

(assert (=> (and b!84247 (= lambda!10497 p2!134) b!84298) d!56793))

(push 1)

(assert (not d!56765))

(assert (not b!84302))

(assert (not b!84300))

(assert (not b!84297))

(assert (not b!84272))

(assert (not b_lambda!16577))

(assert (not b_lambda!16581))

(assert (not b!84301))

(assert b_and!58937)

(assert (not b!84285))

(assert (not d!56775))

(assert (not b!84278))

(assert (not d!56763))

(assert b_and!58941)

(assert (not d!56773))

(assert (not b_lambda!16579))

(assert (not b_next!39347))

(assert (not b!84284))

(assert (not b_lambda!16583))

(assert (not b_next!39351))

(assert (not b!84279))

(assert (not d!56767))

(assert (not b_lambda!16585))

(assert b_and!58939)

(assert (not b!84299))

(assert (not b!84291))

(assert (not b!84277))

(assert (not b!84308))

(assert (not b!84290))

(assert (not b!84307))

(assert (not b_next!39349))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58937)

(assert b_and!58941)

(assert (not b_next!39347))

(assert (not b_next!39351))

(assert b_and!58939)

(assert (not b_next!39349))

(check-sat)

(pop 1)

