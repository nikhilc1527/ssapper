; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11614 () Bool)

(assert start!11614)

(declare-fun b_free!7523 () Bool)

(declare-fun b_next!39865 () Bool)

(assert (=> start!11614 (= b_free!7523 (not b_next!39865))))

(declare-fun tp!17378 () Bool)

(declare-fun b_and!60311 () Bool)

(assert (=> start!11614 (= tp!17378 b_and!60311)))

(declare-fun b_free!7525 () Bool)

(declare-fun b_next!39867 () Bool)

(assert (=> start!11614 (= b_free!7525 (not b_next!39867))))

(declare-fun tp!17377 () Bool)

(declare-fun b_and!60313 () Bool)

(assert (=> start!11614 (= tp!17377 b_and!60313)))

(declare-fun b!88926 () Bool)

(assert (=> b!88926 true))

(declare-fun order!505 () Int)

(declare-fun lambda!10900 () Int)

(declare-fun order!507 () Int)

(declare-fun key!533 () Int)

(declare-fun dynLambda!1062 (Int Int) Int)

(declare-fun dynLambda!1063 (Int Int) Int)

(assert (=> b!88926 (< (dynLambda!1062 order!505 key!533) (dynLambda!1063 order!507 lambda!10900))))

(declare-fun keyAnn!11 () Int)

(declare-fun b_next!39869 () Bool)

(assert (=> start!11614 (= b_next!39865 (or (and b!88926 (= lambda!10900 keyAnn!11)) b_next!39869))))

(declare-fun b!88919 () Bool)

(declare-fun e!48368 () Bool)

(declare-datatypes () ((T!6007 (T!6008 (val!196 Int)))))

(declare-datatypes () ((tuple2!412 (tuple2!413 (_1!241 T!6007) (_2!241 Int)))))

(declare-datatypes () ((List!740 (Cons!694 (h!1098 tuple2!412) (t!48767 List!740)) (Nil!696))))

(declare-fun res!45959 () List!740)

(declare-fun n!1739 () Int)

(declare-fun l2AtLeast!7 (List!740 Int) Bool)

(assert (=> b!88919 (= e!48368 (not (l2AtLeast!7 res!45959 n!1739)))))

(declare-fun b!88920 () Bool)

(declare-fun e!48369 () Bool)

(declare-fun tp_is_empty!387 () Bool)

(declare-fun tp!17376 () Bool)

(assert (=> b!88920 (= e!48369 (and tp_is_empty!387 tp!17376))))

(declare-fun b!88921 () Bool)

(declare-fun res!46549 () Bool)

(declare-fun e!48371 () Bool)

(assert (=> b!88921 (=> (not res!46549) (not e!48371))))

(declare-fun l!1602 () List!740)

(declare-fun inductVal!1009 () Bool)

(declare-fun t!48626 () T!6007)

(declare-fun insertStableProp!4 (T!6007 Int List!740 Int) Bool)

(assert (=> b!88921 (= res!46549 (= inductVal!1009 (insertStableProp!4 t!48626 n!1739 (t!48767 l!1602) key!533)))))

(declare-fun b!88922 () Bool)

(assert (=> b!88922 (= e!48371 e!48368)))

(declare-fun res!46552 () Bool)

(assert (=> b!88922 (=> res!46552 e!48368)))

(declare-fun isStableSorted!6 (List!740 Int) Bool)

(assert (=> b!88922 (= res!46552 (not (isStableSorted!6 res!45959 key!533)))))

(declare-fun b!88923 () Bool)

(declare-fun e!48370 () Bool)

(declare-fun tp!17379 () Bool)

(assert (=> b!88923 (= e!48370 (and tp_is_empty!387 tp!17379))))

(declare-fun b!88924 () Bool)

(declare-fun res!46547 () Bool)

(assert (=> b!88924 (=> (not res!46547) (not e!48371))))

(assert (=> b!88924 (= res!46547 (is-Cons!694 l!1602))))

(declare-fun res!46551 () Bool)

(assert (=> start!11614 (=> (not res!46551) (not e!48371))))

(assert (=> start!11614 (= res!46551 (isStableSorted!6 l!1602 key!533))))

(assert (=> start!11614 e!48371))

(assert (=> start!11614 tp!17378))

(assert (=> start!11614 e!48369))

(assert (=> start!11614 true))

(assert (=> start!11614 tp_is_empty!387))

(assert (=> start!11614 e!48370))

(assert (=> start!11614 tp!17377))

(declare-fun b!88925 () Bool)

(declare-fun res!46548 () Bool)

(assert (=> b!88925 (=> (not res!46548) (not e!48371))))

(assert (=> b!88925 (= res!46548 (l2AtLeast!7 l!1602 n!1739))))

(declare-fun res!46546 () Bool)

(assert (=> b!88926 (=> (not res!46546) (not e!48371))))

(assert (=> b!88926 (= res!46546 (= keyAnn!11 lambda!10900))))

(declare-fun b!88927 () Bool)

(declare-fun res!46550 () Bool)

(assert (=> b!88927 (=> (not res!46550) (not e!48371))))

(declare-fun insert!32 (tuple2!412 List!740 Int) List!740)

(assert (=> b!88927 (= res!46550 (= res!45959 (insert!32 (tuple2!413 t!48626 n!1739) l!1602 keyAnn!11)))))

(assert (= (and start!11614 res!46551) b!88925))

(assert (= (and b!88925 res!46548) b!88924))

(assert (= (and b!88924 res!46547) b!88921))

(assert (= (and b!88921 res!46549) b!88926))

(assert (= (and b!88926 res!46546) b!88927))

(assert (= (and b!88927 res!46550) b!88922))

(assert (= (and b!88922 (not res!46552)) b!88919))

(assert (= (and start!11614 (is-Cons!694 l!1602)) b!88920))

(assert (= (and start!11614 (is-Cons!694 res!45959)) b!88923))

(declare-fun m!85028 () Bool)

(assert (=> b!88921 m!85028))

(declare-fun m!85030 () Bool)

(assert (=> b!88919 m!85030))

(declare-fun m!85032 () Bool)

(assert (=> start!11614 m!85032))

(declare-fun m!85034 () Bool)

(assert (=> b!88922 m!85034))

(declare-fun m!85036 () Bool)

(assert (=> b!88927 m!85036))

(declare-fun m!85038 () Bool)

(assert (=> b!88925 m!85038))

(push 1)

(assert (not b!88920))

(assert (not b!88919))

(assert (not start!11614))

(assert b_and!60313)

(assert tp_is_empty!387)

(assert (not b_next!39867))

(assert (not b!88921))

(assert (not b!88923))

(assert b_and!60311)

(assert (not b_next!39869))

(assert (not b!88925))

(assert (not b!88922))

(assert (not b!88927))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60313)

(assert b_and!60311)

(assert (not b_next!39867))

(assert (not b_next!39869))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58925 () Bool)

(declare-fun res!46555 () Bool)

(declare-fun e!48374 () Bool)

(assert (=> d!58925 (=> res!46555 e!48374)))

(assert (=> d!58925 (= res!46555 (is-Nil!696 res!45959))))

(assert (=> d!58925 (= (isStableSorted!6 res!45959 key!533) e!48374)))

(declare-fun b!88932 () Bool)

(declare-fun isStableSortedAndAtLeast!6 (List!740 Int Int Int) Bool)

(declare-fun dynLambda!1064 (Int T!6007) Int)

(assert (=> b!88932 (= e!48374 (isStableSortedAndAtLeast!6 (t!48767 res!45959) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 res!45959))) (_2!241 (h!1098 res!45959))))))

(assert (= (and d!58925 (not res!46555)) b!88932))

(declare-fun b_lambda!17823 () Bool)

(assert (=> (not b_lambda!17823) (not b!88932)))

(declare-fun t!48769 () Bool)

(declare-fun tb!46659 () Bool)

(assert (=> (and start!11614 (= key!533 key!533) t!48769) tb!46659))

(declare-fun result!47109 () Bool)

(assert (=> tb!46659 (= result!47109 true)))

(assert (=> b!88932 t!48769))

(declare-fun b_and!60315 () Bool)

(assert (= b_and!60313 (and (=> t!48769 result!47109) b_and!60315)))

(declare-fun m!85040 () Bool)

(assert (=> b!88932 m!85040))

(assert (=> b!88932 m!85040))

(declare-fun m!85042 () Bool)

(assert (=> b!88932 m!85042))

(assert (=> b!88922 d!58925))

(declare-fun d!58927 () Bool)

(declare-fun res!46560 () Bool)

(declare-fun e!48379 () Bool)

(assert (=> d!58927 (=> res!46560 e!48379)))

(assert (=> d!58927 (= res!46560 (is-Nil!696 l!1602))))

(assert (=> d!58927 (= (l2AtLeast!7 l!1602 n!1739) e!48379)))

(declare-fun b!88937 () Bool)

(declare-fun e!48380 () Bool)

(assert (=> b!88937 (= e!48379 e!48380)))

(declare-fun res!46561 () Bool)

(assert (=> b!88937 (=> (not res!46561) (not e!48380))))

(assert (=> b!88937 (= res!46561 (<= n!1739 (_2!241 (h!1098 l!1602))))))

(declare-fun b!88938 () Bool)

(assert (=> b!88938 (= e!48380 (l2AtLeast!7 (t!48767 l!1602) n!1739))))

(assert (= (and d!58927 (not res!46560)) b!88937))

(assert (= (and b!88937 res!46561) b!88938))

(declare-fun m!85044 () Bool)

(assert (=> b!88938 m!85044))

(assert (=> b!88925 d!58927))

(declare-fun d!58929 () Bool)

(declare-fun res!46562 () Bool)

(declare-fun e!48381 () Bool)

(assert (=> d!58929 (=> res!46562 e!48381)))

(assert (=> d!58929 (= res!46562 (is-Nil!696 res!45959))))

(assert (=> d!58929 (= (l2AtLeast!7 res!45959 n!1739) e!48381)))

(declare-fun b!88939 () Bool)

(declare-fun e!48382 () Bool)

(assert (=> b!88939 (= e!48381 e!48382)))

(declare-fun res!46563 () Bool)

(assert (=> b!88939 (=> (not res!46563) (not e!48382))))

(assert (=> b!88939 (= res!46563 (<= n!1739 (_2!241 (h!1098 res!45959))))))

(declare-fun b!88940 () Bool)

(assert (=> b!88940 (= e!48382 (l2AtLeast!7 (t!48767 res!45959) n!1739))))

(assert (= (and d!58929 (not res!46562)) b!88939))

(assert (= (and b!88939 res!46563) b!88940))

(declare-fun m!85046 () Bool)

(assert (=> b!88940 m!85046))

(assert (=> b!88919 d!58929))

(declare-fun bs!41421 () Bool)

(declare-fun b!88953 () Bool)

(assert (= bs!41421 (and b!88953 b!88926)))

(declare-fun lambda!10905 () Int)

(assert (=> bs!41421 (= lambda!10905 lambda!10900)))

(assert (=> b!88953 true))

(assert (=> b!88953 (< (dynLambda!1062 order!505 key!533) (dynLambda!1063 order!507 lambda!10905))))

(declare-fun b_next!39871 () Bool)

(assert (=> start!11614 (= b_next!39869 (or (and b!88953 (= lambda!10905 keyAnn!11)) b_next!39871))))

(declare-fun bs!41422 () Bool)

(declare-fun b!88954 () Bool)

(assert (= bs!41422 (and b!88954 b!88926)))

(declare-fun lambda!10906 () Int)

(assert (=> bs!41422 (= lambda!10906 lambda!10900)))

(declare-fun bs!41423 () Bool)

(assert (= bs!41423 (and b!88954 b!88953)))

(assert (=> bs!41423 (= lambda!10906 lambda!10905)))

(assert (=> b!88954 true))

(assert (=> b!88954 (< (dynLambda!1062 order!505 key!533) (dynLambda!1063 order!507 lambda!10906))))

(declare-fun b_next!39873 () Bool)

(assert (=> start!11614 (= b_next!39871 (or (and b!88954 (= lambda!10906 keyAnn!11)) b_next!39873))))

(declare-fun b!88951 () Bool)

(declare-fun e!48393 () Bool)

(declare-fun lt!20350 () List!740)

(assert (=> b!88951 (= e!48393 (l2AtLeast!7 lt!20350 n!1739))))

(declare-fun b!88952 () Bool)

(declare-fun e!48392 () Bool)

(assert (=> b!88952 (= e!48392 (l2AtLeast!7 (t!48767 l!1602) n!1739))))

(declare-fun e!48394 () Bool)

(assert (=> b!88953 (= e!48394 e!48393)))

(declare-fun res!46572 () Bool)

(assert (=> b!88953 (=> (not res!46572) (not e!48393))))

(assert (=> b!88953 (= res!46572 (isStableSorted!6 lt!20350 key!533))))

(assert (=> b!88953 (= lt!20350 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 l!1602) lambda!10905))))

(declare-fun lt!20352 () Bool)

(assert (=> b!88953 (= lt!20352 (insertStableProp!4 t!48626 n!1739 (t!48767 (t!48767 l!1602)) key!533))))

(declare-fun d!58931 () Bool)

(assert (=> d!58931 e!48394))

(declare-fun c!21861 () Bool)

(assert (=> d!58931 (= c!21861 (is-Cons!694 (t!48767 l!1602)))))

(assert (=> d!58931 e!48392))

(declare-fun res!46573 () Bool)

(assert (=> d!58931 (=> (not res!46573) (not e!48392))))

(assert (=> d!58931 (= res!46573 (isStableSorted!6 (t!48767 l!1602) key!533))))

(assert (=> d!58931 (= (insertStableProp!4 t!48626 n!1739 (t!48767 l!1602) key!533) true)))

(declare-fun e!48391 () Bool)

(assert (=> b!88954 (= e!48394 e!48391)))

(declare-fun res!46574 () Bool)

(assert (=> b!88954 (=> (not res!46574) (not e!48391))))

(declare-fun lt!20351 () List!740)

(assert (=> b!88954 (= res!46574 (isStableSorted!6 lt!20351 key!533))))

(assert (=> b!88954 (= lt!20351 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 l!1602) lambda!10906))))

(declare-fun b!88955 () Bool)

(assert (=> b!88955 (= e!48391 (l2AtLeast!7 lt!20351 n!1739))))

(assert (= (and d!58931 res!46573) b!88952))

(assert (= (and b!88953 res!46572) b!88951))

(assert (= (and b!88954 res!46574) b!88955))

(assert (= (and d!58931 c!21861) b!88953))

(assert (= (and d!58931 (not c!21861)) b!88954))

(declare-fun m!85048 () Bool)

(assert (=> b!88953 m!85048))

(declare-fun m!85050 () Bool)

(assert (=> b!88953 m!85050))

(declare-fun m!85052 () Bool)

(assert (=> b!88953 m!85052))

(declare-fun m!85054 () Bool)

(assert (=> b!88955 m!85054))

(declare-fun m!85056 () Bool)

(assert (=> d!58931 m!85056))

(assert (=> b!88952 m!85044))

(declare-fun m!85058 () Bool)

(assert (=> b!88954 m!85058))

(declare-fun m!85060 () Bool)

(assert (=> b!88954 m!85060))

(declare-fun m!85062 () Bool)

(assert (=> b!88951 m!85062))

(assert (=> b!88921 d!58931))

(declare-fun e!48414 () List!740)

(declare-fun b!88976 () Bool)

(declare-fun $colon$colon!21 (List!740 tuple2!412) List!740)

(assert (=> b!88976 (= e!48414 ($colon$colon!21 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 l!1602) keyAnn!11) (h!1098 l!1602)))))

(declare-fun b!88977 () Bool)

(declare-fun e!48418 () Bool)

(declare-fun dynLambda!1065 (Int tuple2!412) Int)

(assert (=> b!88977 (= e!48418 (<= (dynLambda!1065 keyAnn!11 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 keyAnn!11 (h!1098 l!1602))))))

(declare-fun d!58933 () Bool)

(declare-fun e!48415 () Bool)

(assert (=> d!58933 e!48415))

(declare-fun res!46591 () Bool)

(assert (=> d!58933 (=> (not res!46591) (not e!48415))))

(declare-fun lt!20357 () List!740)

(declare-fun content!163 (List!740) (Set tuple2!412))

(assert (=> d!58933 (= res!46591 (= (content!163 lt!20357) (union (insert (tuple2!413 t!48626 n!1739) (as emptyset (Set tuple2!412))) (content!163 l!1602))))))

(assert (=> d!58933 (= lt!20357 e!48414)))

(declare-fun c!21866 () Bool)

(declare-fun e!48417 () Bool)

(assert (=> d!58933 (= c!21866 e!48417)))

(declare-fun res!46593 () Bool)

(assert (=> d!58933 (=> res!46593 e!48417)))

(declare-fun lt!20358 () Bool)

(assert (=> d!58933 (= res!46593 lt!20358)))

(assert (=> d!58933 (= lt!20358 (is-Nil!696 l!1602))))

(assert (=> d!58933 (= (insert!32 (tuple2!413 t!48626 n!1739) l!1602 keyAnn!11) lt!20357)))

(declare-fun b!88978 () Bool)

(declare-fun e!48411 () List!740)

(assert (=> b!88978 (= e!48414 e!48411)))

(declare-fun c!21867 () Bool)

(declare-fun e!48416 () Bool)

(assert (=> b!88978 (= c!21867 e!48416)))

(declare-fun res!46594 () Bool)

(assert (=> b!88978 (=> res!46594 e!48416)))

(assert (=> b!88978 (= res!46594 lt!20358)))

(declare-fun b!88979 () Bool)

(assert (=> b!88979 (= e!48417 e!48418)))

(declare-fun res!46592 () Bool)

(assert (=> b!88979 (=> (not res!46592) (not e!48418))))

(assert (=> b!88979 (= res!46592 (is-Cons!694 l!1602))))

(declare-fun b!88980 () Bool)

(declare-fun e!48412 () Bool)

(declare-fun tp!17382 () Bool)

(assert (=> b!88980 (= e!48412 (and tp_is_empty!387 tp!17382))))

(declare-fun b!88981 () Bool)

(declare-fun e!48413 () Bool)

(assert (=> b!88981 (= e!48416 e!48413)))

(declare-fun res!46596 () Bool)

(assert (=> b!88981 (=> (not res!46596) (not e!48413))))

(assert (=> b!88981 (= res!46596 (and (not lt!20358) (is-Cons!694 l!1602)))))

(declare-fun b!88982 () Bool)

(declare-fun res!46595 () List!740)

(assert (=> b!88982 (= e!48411 res!46595)))

(assert (=> b!88982 true))

(assert (=> b!88982 e!48412))

(declare-fun b!88983 () Bool)

(assert (=> b!88983 (= e!48413 (<= (dynLambda!1065 keyAnn!11 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 keyAnn!11 (h!1098 l!1602))))))

(declare-fun b!88984 () Bool)

(assert (=> b!88984 (= e!48411 ($colon$colon!21 l!1602 (tuple2!413 t!48626 n!1739)))))

(declare-fun b!88985 () Bool)

(declare-fun length!15 (List!740) Int)

(assert (=> b!88985 (= e!48415 (= (length!15 lt!20357) (+ 1 (length!15 l!1602))))))

(assert (= (and d!58933 (not res!46593)) b!88979))

(assert (= (and b!88979 res!46592) b!88977))

(assert (= (and b!88978 (not res!46594)) b!88981))

(assert (= (and b!88981 res!46596) b!88983))

(assert (= (and b!88982 (is-Cons!694 res!46595)) b!88980))

(assert (= (and b!88978 c!21867) b!88984))

(assert (= (and b!88978 (not c!21867)) b!88982))

(assert (= (and d!58933 c!21866) b!88978))

(assert (= (and d!58933 (not c!21866)) b!88976))

(assert (= (and d!58933 res!46591) b!88985))

(declare-fun b_lambda!17825 () Bool)

(assert (=> (not b_lambda!17825) (not b!88977)))

(declare-fun t!48773 () Bool)

(declare-fun tb!46661 () Bool)

(assert (=> (and start!11614 (= keyAnn!11 keyAnn!11) t!48773) tb!46661))

(declare-fun result!47111 () Bool)

(assert (=> tb!46661 (= result!47111 true)))

(assert (=> b!88977 t!48773))

(declare-fun b_and!60317 () Bool)

(assert (= b_and!60311 (and (=> t!48773 result!47111) b_and!60317)))

(declare-fun b_lambda!17827 () Bool)

(assert (=> (not b_lambda!17827) (not b!88977)))

(declare-fun t!48775 () Bool)

(declare-fun tb!46663 () Bool)

(assert (=> (and start!11614 (= keyAnn!11 keyAnn!11) t!48775) tb!46663))

(declare-fun result!47113 () Bool)

(assert (=> tb!46663 (= result!47113 true)))

(assert (=> b!88977 t!48775))

(declare-fun b_and!60319 () Bool)

(assert (= b_and!60317 (and (=> t!48775 result!47113) b_and!60319)))

(declare-fun b_lambda!17829 () Bool)

(assert (=> (not b_lambda!17829) (not b!88983)))

(assert (=> b!88983 t!48773))

(declare-fun b_and!60321 () Bool)

(assert (= b_and!60319 (and (=> t!48773 result!47111) b_and!60321)))

(declare-fun b_lambda!17831 () Bool)

(assert (=> (not b_lambda!17831) (not b!88983)))

(assert (=> b!88983 t!48775))

(declare-fun b_and!60323 () Bool)

(assert (= b_and!60321 (and (=> t!48775 result!47113) b_and!60323)))

(declare-fun m!85064 () Bool)

(assert (=> b!88984 m!85064))

(declare-fun m!85066 () Bool)

(assert (=> b!88983 m!85066))

(declare-fun m!85068 () Bool)

(assert (=> b!88983 m!85068))

(declare-fun m!85070 () Bool)

(assert (=> b!88976 m!85070))

(assert (=> b!88976 m!85070))

(declare-fun m!85072 () Bool)

(assert (=> b!88976 m!85072))

(declare-fun m!85074 () Bool)

(assert (=> b!88985 m!85074))

(declare-fun m!85076 () Bool)

(assert (=> b!88985 m!85076))

(declare-fun m!85078 () Bool)

(assert (=> d!58933 m!85078))

(declare-fun m!85080 () Bool)

(assert (=> d!58933 m!85080))

(declare-fun m!85082 () Bool)

(assert (=> d!58933 m!85082))

(assert (=> b!88977 m!85066))

(assert (=> b!88977 m!85068))

(assert (=> b!88927 d!58933))

(declare-fun d!58935 () Bool)

(declare-fun res!46597 () Bool)

(declare-fun e!48419 () Bool)

(assert (=> d!58935 (=> res!46597 e!48419)))

(assert (=> d!58935 (= res!46597 (is-Nil!696 l!1602))))

(assert (=> d!58935 (= (isStableSorted!6 l!1602 key!533) e!48419)))

(declare-fun b!88986 () Bool)

(assert (=> b!88986 (= e!48419 (isStableSortedAndAtLeast!6 (t!48767 l!1602) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 l!1602))) (_2!241 (h!1098 l!1602))))))

(assert (= (and d!58935 (not res!46597)) b!88986))

(declare-fun b_lambda!17833 () Bool)

(assert (=> (not b_lambda!17833) (not b!88986)))

(declare-fun t!48777 () Bool)

(declare-fun tb!46665 () Bool)

(assert (=> (and start!11614 (= key!533 key!533) t!48777) tb!46665))

(declare-fun result!47115 () Bool)

(assert (=> tb!46665 (= result!47115 true)))

(assert (=> b!88986 t!48777))

(declare-fun b_and!60325 () Bool)

(assert (= b_and!60315 (and (=> t!48777 result!47115) b_and!60325)))

(declare-fun m!85084 () Bool)

(assert (=> b!88986 m!85084))

(assert (=> b!88986 m!85084))

(declare-fun m!85086 () Bool)

(assert (=> b!88986 m!85086))

(assert (=> start!11614 d!58935))

(declare-fun b!88991 () Bool)

(declare-fun e!48422 () Bool)

(declare-fun tp!17385 () Bool)

(assert (=> b!88991 (= e!48422 (and tp_is_empty!387 tp!17385))))

(assert (=> b!88923 (= tp!17379 e!48422)))

(assert (= (and b!88923 (is-Cons!694 (t!48767 res!45959))) b!88991))

(declare-fun b!88992 () Bool)

(declare-fun e!48423 () Bool)

(declare-fun tp!17386 () Bool)

(assert (=> b!88992 (= e!48423 (and tp_is_empty!387 tp!17386))))

(assert (=> b!88920 (= tp!17376 e!48423)))

(assert (= (and b!88920 (is-Cons!694 (t!48767 l!1602))) b!88992))

(declare-fun b_lambda!17835 () Bool)

(assert (= b_lambda!17825 (or (and b!88926 (= lambda!10900 keyAnn!11)) (and b!88953 (= lambda!10905 keyAnn!11)) (and b!88954 (= lambda!10906 keyAnn!11)) (and start!11614 b_free!7523) b_lambda!17835)))

(declare-fun bs!41424 () Bool)

(declare-fun d!58937 () Bool)

(assert (= bs!41424 (and d!58937 b!88926)))

(assert (=> bs!41424 (= (dynLambda!1065 lambda!10900 (tuple2!413 t!48626 n!1739)) (dynLambda!1064 key!533 (_1!241 (tuple2!413 t!48626 n!1739))))))

(declare-fun b_lambda!17847 () Bool)

(assert (=> (not b_lambda!17847) (not bs!41424)))

(declare-fun t!48779 () Bool)

(declare-fun tb!46667 () Bool)

(assert (=> (and start!11614 (= key!533 key!533) t!48779) tb!46667))

(declare-fun result!47119 () Bool)

(assert (=> tb!46667 (= result!47119 true)))

(assert (=> bs!41424 t!48779))

(declare-fun b_and!60327 () Bool)

(assert (= b_and!60325 (and (=> t!48779 result!47119) b_and!60327)))

(declare-fun m!85088 () Bool)

(assert (=> bs!41424 m!85088))

(assert (=> (and b!88926 (= lambda!10900 keyAnn!11) b!88977) d!58937))

(declare-fun bs!41425 () Bool)

(declare-fun d!58939 () Bool)

(assert (= bs!41425 (and d!58939 b!88953)))

(assert (=> bs!41425 (= (dynLambda!1065 lambda!10905 (tuple2!413 t!48626 n!1739)) (dynLambda!1064 key!533 (_1!241 (tuple2!413 t!48626 n!1739))))))

(declare-fun b_lambda!17849 () Bool)

(assert (=> (not b_lambda!17849) (not bs!41425)))

(assert (=> bs!41425 t!48779))

(declare-fun b_and!60329 () Bool)

(assert (= b_and!60327 (and (=> t!48779 result!47119) b_and!60329)))

(assert (=> bs!41425 m!85088))

(assert (=> (and b!88953 (= lambda!10905 keyAnn!11) b!88977) d!58939))

(declare-fun bs!41426 () Bool)

(declare-fun d!58941 () Bool)

(assert (= bs!41426 (and d!58941 b!88954)))

(assert (=> bs!41426 (= (dynLambda!1065 lambda!10906 (tuple2!413 t!48626 n!1739)) (dynLambda!1064 key!533 (_1!241 (tuple2!413 t!48626 n!1739))))))

(declare-fun b_lambda!17851 () Bool)

(assert (=> (not b_lambda!17851) (not bs!41426)))

(assert (=> bs!41426 t!48779))

(declare-fun b_and!60331 () Bool)

(assert (= b_and!60329 (and (=> t!48779 result!47119) b_and!60331)))

(assert (=> bs!41426 m!85088))

(assert (=> (and b!88954 (= lambda!10906 keyAnn!11) b!88977) d!58941))

(declare-fun b_lambda!17837 () Bool)

(assert (= b_lambda!17827 (or (and b!88926 (= lambda!10900 keyAnn!11)) (and b!88953 (= lambda!10905 keyAnn!11)) (and b!88954 (= lambda!10906 keyAnn!11)) (and start!11614 b_free!7523) b_lambda!17837)))

(declare-fun bs!41427 () Bool)

(declare-fun d!58943 () Bool)

(assert (= bs!41427 (and d!58943 b!88926)))

(assert (=> bs!41427 (= (dynLambda!1065 lambda!10900 (h!1098 l!1602)) (dynLambda!1064 key!533 (_1!241 (h!1098 l!1602))))))

(declare-fun b_lambda!17853 () Bool)

(assert (=> (not b_lambda!17853) (not bs!41427)))

(assert (=> bs!41427 t!48777))

(declare-fun b_and!60333 () Bool)

(assert (= b_and!60331 (and (=> t!48777 result!47115) b_and!60333)))

(assert (=> bs!41427 m!85084))

(assert (=> (and b!88926 (= lambda!10900 keyAnn!11) b!88977) d!58943))

(declare-fun bs!41428 () Bool)

(declare-fun d!58945 () Bool)

(assert (= bs!41428 (and d!58945 b!88953)))

(assert (=> bs!41428 (= (dynLambda!1065 lambda!10905 (h!1098 l!1602)) (dynLambda!1064 key!533 (_1!241 (h!1098 l!1602))))))

(declare-fun b_lambda!17855 () Bool)

(assert (=> (not b_lambda!17855) (not bs!41428)))

(assert (=> bs!41428 t!48777))

(declare-fun b_and!60335 () Bool)

(assert (= b_and!60333 (and (=> t!48777 result!47115) b_and!60335)))

(assert (=> bs!41428 m!85084))

(assert (=> (and b!88953 (= lambda!10905 keyAnn!11) b!88977) d!58945))

(declare-fun bs!41429 () Bool)

(declare-fun d!58947 () Bool)

(assert (= bs!41429 (and d!58947 b!88954)))

(assert (=> bs!41429 (= (dynLambda!1065 lambda!10906 (h!1098 l!1602)) (dynLambda!1064 key!533 (_1!241 (h!1098 l!1602))))))

(declare-fun b_lambda!17857 () Bool)

(assert (=> (not b_lambda!17857) (not bs!41429)))

(assert (=> bs!41429 t!48777))

(declare-fun b_and!60337 () Bool)

(assert (= b_and!60335 (and (=> t!48777 result!47115) b_and!60337)))

(assert (=> bs!41429 m!85084))

(assert (=> (and b!88954 (= lambda!10906 keyAnn!11) b!88977) d!58947))

(declare-fun b_lambda!17839 () Bool)

(assert (= b_lambda!17831 (or (and b!88926 (= lambda!10900 keyAnn!11)) (and b!88953 (= lambda!10905 keyAnn!11)) (and b!88954 (= lambda!10906 keyAnn!11)) (and start!11614 b_free!7523) b_lambda!17839)))

(assert (=> (and b!88926 (= lambda!10900 keyAnn!11) b!88983) d!58943))

(assert (=> (and b!88953 (= lambda!10905 keyAnn!11) b!88983) d!58945))

(assert (=> (and b!88954 (= lambda!10906 keyAnn!11) b!88983) d!58947))

(declare-fun b_lambda!17841 () Bool)

(assert (= b_lambda!17829 (or (and b!88926 (= lambda!10900 keyAnn!11)) (and b!88953 (= lambda!10905 keyAnn!11)) (and b!88954 (= lambda!10906 keyAnn!11)) (and start!11614 b_free!7523) b_lambda!17841)))

(assert (=> (and b!88926 (= lambda!10900 keyAnn!11) b!88983) d!58937))

(assert (=> (and b!88953 (= lambda!10905 keyAnn!11) b!88983) d!58939))

(assert (=> (and b!88954 (= lambda!10906 keyAnn!11) b!88983) d!58941))

(declare-fun b_lambda!17843 () Bool)

(assert (= b_lambda!17833 (or (and start!11614 b_free!7525) b_lambda!17843)))

(declare-fun b_lambda!17845 () Bool)

(assert (= b_lambda!17823 (or (and start!11614 b_free!7525) b_lambda!17845)))

(push 1)

(assert (not d!58931))

(assert (not b!88953))

(assert (not b!88940))

(assert (not b_lambda!17853))

(assert (not d!58933))

(assert tp_is_empty!387)

(assert (not b_lambda!17847))

(assert (not b_next!39867))

(assert (not b!88976))

(assert (not b!88991))

(assert b_and!60337)

(assert (not b_lambda!17843))

(assert (not b_lambda!17835))

(assert (not b_lambda!17845))

(assert (not b_lambda!17855))

(assert (not b_lambda!17837))

(assert (not b_lambda!17839))

(assert (not b_next!39873))

(assert (not b!88938))

(assert (not b_lambda!17849))

(assert b_and!60323)

(assert (not b!88952))

(assert (not b!88951))

(assert (not b_lambda!17841))

(assert (not b!88980))

(assert (not b_lambda!17857))

(assert (not b!88955))

(assert (not b!88932))

(assert (not b!88984))

(assert (not b!88986))

(assert (not b!88992))

(assert (not b!88954))

(assert (not b_lambda!17851))

(assert (not b!88985))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60337)

(assert b_and!60323)

(assert (not b_next!39867))

(assert (not b_next!39873))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!17859 () Bool)

(assert (= b_lambda!17849 (or (and start!11614 b_free!7525) b_lambda!17859)))

(declare-fun b_lambda!17861 () Bool)

(assert (= b_lambda!17853 (or (and start!11614 b_free!7525) b_lambda!17861)))

(declare-fun b_lambda!17863 () Bool)

(assert (= b_lambda!17855 (or (and start!11614 b_free!7525) b_lambda!17863)))

(declare-fun b_lambda!17865 () Bool)

(assert (= b_lambda!17847 (or (and start!11614 b_free!7525) b_lambda!17865)))

(declare-fun b_lambda!17867 () Bool)

(assert (= b_lambda!17857 (or (and start!11614 b_free!7525) b_lambda!17867)))

(declare-fun b_lambda!17869 () Bool)

(assert (= b_lambda!17851 (or (and start!11614 b_free!7525) b_lambda!17869)))

(push 1)

(assert (not d!58931))

(assert (not b_lambda!17869))

(assert (not b!88953))

(assert (not b_lambda!17859))

(assert (not b_lambda!17863))

(assert (not b!88940))

(assert (not d!58933))

(assert tp_is_empty!387)

(assert (not b_next!39867))

(assert (not b!88976))

(assert (not b!88991))

(assert b_and!60337)

(assert (not b_lambda!17843))

(assert (not b_lambda!17835))

(assert (not b_lambda!17845))

(assert (not b_lambda!17861))

(assert (not b_lambda!17837))

(assert (not b_lambda!17839))

(assert (not b_next!39873))

(assert (not b!88938))

(assert b_and!60323)

(assert (not b!88952))

(assert (not b_lambda!17865))

(assert (not b!88951))

(assert (not b_lambda!17841))

(assert (not b!88980))

(assert (not b!88955))

(assert (not b!88932))

(assert (not b!88984))

(assert (not b!88986))

(assert (not b!88992))

(assert (not b!88954))

(assert (not b_lambda!17867))

(assert (not b!88985))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60337)

(assert b_and!60323)

(assert (not b_next!39867))

(assert (not b_next!39873))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58949 () Bool)

(declare-fun size!717 (List!740) Int)

(assert (=> d!58949 (= (length!15 lt!20357) (size!717 lt!20357))))

(declare-fun bs!41430 () Bool)

(assert (= bs!41430 d!58949))

(declare-fun m!85090 () Bool)

(assert (=> bs!41430 m!85090))

(assert (=> b!88985 d!58949))

(declare-fun d!58951 () Bool)

(assert (=> d!58951 (= (length!15 l!1602) (size!717 l!1602))))

(declare-fun bs!41431 () Bool)

(assert (= bs!41431 d!58951))

(declare-fun m!85092 () Bool)

(assert (=> bs!41431 m!85092))

(assert (=> b!88985 d!58951))

(declare-fun d!58953 () Bool)

(declare-fun res!46598 () Bool)

(declare-fun e!48424 () Bool)

(assert (=> d!58953 (=> res!46598 e!48424)))

(assert (=> d!58953 (= res!46598 (is-Nil!696 (t!48767 l!1602)))))

(assert (=> d!58953 (= (l2AtLeast!7 (t!48767 l!1602) n!1739) e!48424)))

(declare-fun b!88993 () Bool)

(declare-fun e!48425 () Bool)

(assert (=> b!88993 (= e!48424 e!48425)))

(declare-fun res!46599 () Bool)

(assert (=> b!88993 (=> (not res!46599) (not e!48425))))

(assert (=> b!88993 (= res!46599 (<= n!1739 (_2!241 (h!1098 (t!48767 l!1602)))))))

(declare-fun b!88994 () Bool)

(assert (=> b!88994 (= e!48425 (l2AtLeast!7 (t!48767 (t!48767 l!1602)) n!1739))))

(assert (= (and d!58953 (not res!46598)) b!88993))

(assert (= (and b!88993 res!46599) b!88994))

(declare-fun m!85094 () Bool)

(assert (=> b!88994 m!85094))

(assert (=> b!88952 d!58953))

(declare-fun d!58955 () Bool)

(assert (=> d!58955 (= ($colon$colon!21 l!1602 (tuple2!413 t!48626 n!1739)) (Cons!694 (tuple2!413 t!48626 n!1739) l!1602))))

(assert (=> b!88984 d!58955))

(declare-fun d!58957 () Bool)

(declare-fun res!46611 () Bool)

(declare-fun e!48437 () Bool)

(assert (=> d!58957 (=> res!46611 e!48437)))

(assert (=> d!58957 (= res!46611 (is-Nil!696 (t!48767 res!45959)))))

(assert (=> d!58957 (= (isStableSortedAndAtLeast!6 (t!48767 res!45959) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 res!45959))) (_2!241 (h!1098 res!45959))) e!48437)))

(declare-fun b!89003 () Bool)

(declare-fun e!48436 () Bool)

(assert (=> b!89003 (= e!48437 e!48436)))

(declare-fun res!46609 () Bool)

(assert (=> b!89003 (=> (not res!46609) (not e!48436))))

(declare-fun e!48435 () Bool)

(assert (=> b!89003 (= res!46609 e!48435)))

(declare-fun res!46610 () Bool)

(assert (=> b!89003 (=> res!46610 e!48435)))

(assert (=> b!89003 (= res!46610 (< (dynLambda!1064 key!533 (_1!241 (h!1098 res!45959))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 res!45959))))))))

(declare-fun b!89006 () Bool)

(assert (=> b!89006 (= e!48436 (isStableSortedAndAtLeast!6 (t!48767 (t!48767 res!45959)) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 res!45959)))) (_2!241 (h!1098 (t!48767 res!45959)))))))

(declare-fun b!89005 () Bool)

(declare-fun e!48434 () Bool)

(assert (=> b!89005 (= e!48434 (<= (_2!241 (h!1098 res!45959)) (_2!241 (h!1098 (t!48767 res!45959)))))))

(declare-fun b!89004 () Bool)

(assert (=> b!89004 (= e!48435 e!48434)))

(declare-fun res!46608 () Bool)

(assert (=> b!89004 (=> (not res!46608) (not e!48434))))

(assert (=> b!89004 (= res!46608 (= (dynLambda!1064 key!533 (_1!241 (h!1098 res!45959))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 res!45959))))))))

(assert (= (and d!58957 (not res!46611)) b!89003))

(assert (= (and b!89003 (not res!46610)) b!89004))

(assert (= (and b!89004 res!46608) b!89005))

(assert (= (and b!89003 res!46609) b!89006))

(declare-fun b_lambda!17871 () Bool)

(assert (=> (not b_lambda!17871) (not b!89003)))

(declare-fun t!48782 () Bool)

(declare-fun tb!46669 () Bool)

(assert (=> (and start!11614 (= key!533 key!533) t!48782) tb!46669))

(declare-fun result!47121 () Bool)

(assert (=> tb!46669 (= result!47121 true)))

(assert (=> b!89003 t!48782))

(declare-fun b_and!60339 () Bool)

(assert (= b_and!60337 (and (=> t!48782 result!47121) b_and!60339)))

(declare-fun b_lambda!17873 () Bool)

(assert (=> (not b_lambda!17873) (not b!89006)))

(assert (=> b!89006 t!48782))

(declare-fun b_and!60341 () Bool)

(assert (= b_and!60339 (and (=> t!48782 result!47121) b_and!60341)))

(declare-fun b_lambda!17875 () Bool)

(assert (=> (not b_lambda!17875) (not b!89004)))

(assert (=> b!89004 t!48782))

(declare-fun b_and!60343 () Bool)

(assert (= b_and!60341 (and (=> t!48782 result!47121) b_and!60343)))

(declare-fun m!85096 () Bool)

(assert (=> b!89003 m!85096))

(assert (=> b!89006 m!85096))

(assert (=> b!89006 m!85096))

(declare-fun m!85098 () Bool)

(assert (=> b!89006 m!85098))

(assert (=> b!89004 m!85096))

(assert (=> b!88932 d!58957))

(declare-fun d!58959 () Bool)

(declare-fun res!46612 () Bool)

(declare-fun e!48438 () Bool)

(assert (=> d!58959 (=> res!46612 e!48438)))

(assert (=> d!58959 (= res!46612 (is-Nil!696 lt!20350))))

(assert (=> d!58959 (= (l2AtLeast!7 lt!20350 n!1739) e!48438)))

(declare-fun b!89007 () Bool)

(declare-fun e!48439 () Bool)

(assert (=> b!89007 (= e!48438 e!48439)))

(declare-fun res!46613 () Bool)

(assert (=> b!89007 (=> (not res!46613) (not e!48439))))

(assert (=> b!89007 (= res!46613 (<= n!1739 (_2!241 (h!1098 lt!20350))))))

(declare-fun b!89008 () Bool)

(assert (=> b!89008 (= e!48439 (l2AtLeast!7 (t!48767 lt!20350) n!1739))))

(assert (= (and d!58959 (not res!46612)) b!89007))

(assert (= (and b!89007 res!46613) b!89008))

(declare-fun m!85100 () Bool)

(assert (=> b!89008 m!85100))

(assert (=> b!88951 d!58959))

(declare-fun d!58961 () Bool)

(declare-fun res!46614 () Bool)

(declare-fun e!48440 () Bool)

(assert (=> d!58961 (=> res!46614 e!48440)))

(assert (=> d!58961 (= res!46614 (is-Nil!696 lt!20351))))

(assert (=> d!58961 (= (l2AtLeast!7 lt!20351 n!1739) e!48440)))

(declare-fun b!89009 () Bool)

(declare-fun e!48441 () Bool)

(assert (=> b!89009 (= e!48440 e!48441)))

(declare-fun res!46615 () Bool)

(assert (=> b!89009 (=> (not res!46615) (not e!48441))))

(assert (=> b!89009 (= res!46615 (<= n!1739 (_2!241 (h!1098 lt!20351))))))

(declare-fun b!89010 () Bool)

(assert (=> b!89010 (= e!48441 (l2AtLeast!7 (t!48767 lt!20351) n!1739))))

(assert (= (and d!58961 (not res!46614)) b!89009))

(assert (= (and b!89009 res!46615) b!89010))

(declare-fun m!85102 () Bool)

(assert (=> b!89010 m!85102))

(assert (=> b!88955 d!58961))

(declare-fun d!58963 () Bool)

(declare-fun res!46616 () Bool)

(declare-fun e!48442 () Bool)

(assert (=> d!58963 (=> res!46616 e!48442)))

(assert (=> d!58963 (= res!46616 (is-Nil!696 lt!20351))))

(assert (=> d!58963 (= (isStableSorted!6 lt!20351 key!533) e!48442)))

(declare-fun b!89011 () Bool)

(assert (=> b!89011 (= e!48442 (isStableSortedAndAtLeast!6 (t!48767 lt!20351) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 lt!20351))) (_2!241 (h!1098 lt!20351))))))

(assert (= (and d!58963 (not res!46616)) b!89011))

(declare-fun b_lambda!17877 () Bool)

(assert (=> (not b_lambda!17877) (not b!89011)))

(declare-fun t!48784 () Bool)

(declare-fun tb!46671 () Bool)

(assert (=> (and start!11614 (= key!533 key!533) t!48784) tb!46671))

(declare-fun result!47123 () Bool)

(assert (=> tb!46671 (= result!47123 true)))

(assert (=> b!89011 t!48784))

(declare-fun b_and!60345 () Bool)

(assert (= b_and!60343 (and (=> t!48784 result!47123) b_and!60345)))

(declare-fun m!85104 () Bool)

(assert (=> b!89011 m!85104))

(assert (=> b!89011 m!85104))

(declare-fun m!85106 () Bool)

(assert (=> b!89011 m!85106))

(assert (=> b!88954 d!58963))

(declare-fun b!89012 () Bool)

(declare-fun e!48446 () List!740)

(assert (=> b!89012 (= e!48446 ($colon$colon!21 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) lambda!10906) (h!1098 (t!48767 l!1602))))))

(declare-fun b!89013 () Bool)

(declare-fun e!48450 () Bool)

(assert (=> b!89013 (= e!48450 (<= (dynLambda!1065 lambda!10906 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 lambda!10906 (h!1098 (t!48767 l!1602)))))))

(declare-fun d!58965 () Bool)

(declare-fun e!48447 () Bool)

(assert (=> d!58965 e!48447))

(declare-fun res!46617 () Bool)

(assert (=> d!58965 (=> (not res!46617) (not e!48447))))

(declare-fun lt!20359 () List!740)

(assert (=> d!58965 (= res!46617 (= (content!163 lt!20359) (union (insert (tuple2!413 t!48626 n!1739) (as emptyset (Set tuple2!412))) (content!163 (t!48767 l!1602)))))))

(assert (=> d!58965 (= lt!20359 e!48446)))

(declare-fun c!21868 () Bool)

(declare-fun e!48449 () Bool)

(assert (=> d!58965 (= c!21868 e!48449)))

(declare-fun res!46619 () Bool)

(assert (=> d!58965 (=> res!46619 e!48449)))

(declare-fun lt!20360 () Bool)

(assert (=> d!58965 (= res!46619 lt!20360)))

(assert (=> d!58965 (= lt!20360 (is-Nil!696 (t!48767 l!1602)))))

(assert (=> d!58965 (= (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 l!1602) lambda!10906) lt!20359)))

(declare-fun b!89014 () Bool)

(declare-fun e!48443 () List!740)

(assert (=> b!89014 (= e!48446 e!48443)))

(declare-fun c!21869 () Bool)

(declare-fun e!48448 () Bool)

(assert (=> b!89014 (= c!21869 e!48448)))

(declare-fun res!46620 () Bool)

(assert (=> b!89014 (=> res!46620 e!48448)))

(assert (=> b!89014 (= res!46620 lt!20360)))

(declare-fun b!89015 () Bool)

(assert (=> b!89015 (= e!48449 e!48450)))

(declare-fun res!46618 () Bool)

(assert (=> b!89015 (=> (not res!46618) (not e!48450))))

(assert (=> b!89015 (= res!46618 (is-Cons!694 (t!48767 l!1602)))))

(declare-fun b!89016 () Bool)

(declare-fun e!48444 () Bool)

(declare-fun tp!17387 () Bool)

(assert (=> b!89016 (= e!48444 (and tp_is_empty!387 tp!17387))))

(declare-fun b!89017 () Bool)

(declare-fun e!48445 () Bool)

(assert (=> b!89017 (= e!48448 e!48445)))

(declare-fun res!46622 () Bool)

(assert (=> b!89017 (=> (not res!46622) (not e!48445))))

(assert (=> b!89017 (= res!46622 (and (not lt!20360) (is-Cons!694 (t!48767 l!1602))))))

(declare-fun b!89018 () Bool)

(declare-fun res!46621 () List!740)

(assert (=> b!89018 (= e!48443 res!46621)))

(assert (=> b!89018 true))

(assert (=> b!89018 e!48444))

(declare-fun b!89019 () Bool)

(assert (=> b!89019 (= e!48445 (<= (dynLambda!1065 lambda!10906 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 lambda!10906 (h!1098 (t!48767 l!1602)))))))

(declare-fun b!89020 () Bool)

(assert (=> b!89020 (= e!48443 ($colon$colon!21 (t!48767 l!1602) (tuple2!413 t!48626 n!1739)))))

(declare-fun b!89021 () Bool)

(assert (=> b!89021 (= e!48447 (= (length!15 lt!20359) (+ 1 (length!15 (t!48767 l!1602)))))))

(assert (= (and d!58965 (not res!46619)) b!89015))

(assert (= (and b!89015 res!46618) b!89013))

(assert (= (and b!89014 (not res!46620)) b!89017))

(assert (= (and b!89017 res!46622) b!89019))

(assert (= (and b!89018 (is-Cons!694 res!46621)) b!89016))

(assert (= (and b!89014 c!21869) b!89020))

(assert (= (and b!89014 (not c!21869)) b!89018))

(assert (= (and d!58965 c!21868) b!89014))

(assert (= (and d!58965 (not c!21868)) b!89012))

(assert (= (and d!58965 res!46617) b!89021))

(declare-fun b_lambda!17879 () Bool)

(assert (=> (not b_lambda!17879) (not b!89013)))

(declare-fun b_lambda!17881 () Bool)

(assert (=> (not b_lambda!17881) (not b!89013)))

(declare-fun b_lambda!17883 () Bool)

(assert (=> (not b_lambda!17883) (not b!89019)))

(declare-fun b_lambda!17885 () Bool)

(assert (=> (not b_lambda!17885) (not b!89019)))

(declare-fun m!85108 () Bool)

(assert (=> b!89020 m!85108))

(declare-fun m!85110 () Bool)

(assert (=> b!89019 m!85110))

(declare-fun m!85112 () Bool)

(assert (=> b!89019 m!85112))

(declare-fun m!85114 () Bool)

(assert (=> b!89012 m!85114))

(assert (=> b!89012 m!85114))

(declare-fun m!85116 () Bool)

(assert (=> b!89012 m!85116))

(declare-fun m!85118 () Bool)

(assert (=> b!89021 m!85118))

(declare-fun m!85120 () Bool)

(assert (=> b!89021 m!85120))

(declare-fun m!85122 () Bool)

(assert (=> d!58965 m!85122))

(assert (=> d!58965 m!85080))

(declare-fun m!85124 () Bool)

(assert (=> d!58965 m!85124))

(assert (=> b!89013 m!85110))

(assert (=> b!89013 m!85112))

(assert (=> b!88954 d!58965))

(declare-fun d!58967 () Bool)

(assert (=> d!58967 (= ($colon$colon!21 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 l!1602) keyAnn!11) (h!1098 l!1602)) (Cons!694 (h!1098 l!1602) (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 l!1602) keyAnn!11)))))

(assert (=> b!88976 d!58967))

(declare-fun b!89022 () Bool)

(declare-fun e!48454 () List!740)

(assert (=> b!89022 (= e!48454 ($colon$colon!21 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) keyAnn!11) (h!1098 (t!48767 l!1602))))))

(declare-fun e!48458 () Bool)

(declare-fun b!89023 () Bool)

(assert (=> b!89023 (= e!48458 (<= (dynLambda!1065 keyAnn!11 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 keyAnn!11 (h!1098 (t!48767 l!1602)))))))

(declare-fun d!58969 () Bool)

(declare-fun e!48455 () Bool)

(assert (=> d!58969 e!48455))

(declare-fun res!46623 () Bool)

(assert (=> d!58969 (=> (not res!46623) (not e!48455))))

(declare-fun lt!20361 () List!740)

(assert (=> d!58969 (= res!46623 (= (content!163 lt!20361) (union (insert (tuple2!413 t!48626 n!1739) (as emptyset (Set tuple2!412))) (content!163 (t!48767 l!1602)))))))

(assert (=> d!58969 (= lt!20361 e!48454)))

(declare-fun c!21870 () Bool)

(declare-fun e!48457 () Bool)

(assert (=> d!58969 (= c!21870 e!48457)))

(declare-fun res!46625 () Bool)

(assert (=> d!58969 (=> res!46625 e!48457)))

(declare-fun lt!20362 () Bool)

(assert (=> d!58969 (= res!46625 lt!20362)))

(assert (=> d!58969 (= lt!20362 (is-Nil!696 (t!48767 l!1602)))))

(assert (=> d!58969 (= (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 l!1602) keyAnn!11) lt!20361)))

(declare-fun b!89024 () Bool)

(declare-fun e!48451 () List!740)

(assert (=> b!89024 (= e!48454 e!48451)))

(declare-fun c!21871 () Bool)

(declare-fun e!48456 () Bool)

(assert (=> b!89024 (= c!21871 e!48456)))

(declare-fun res!46626 () Bool)

(assert (=> b!89024 (=> res!46626 e!48456)))

(assert (=> b!89024 (= res!46626 lt!20362)))

(declare-fun b!89025 () Bool)

(assert (=> b!89025 (= e!48457 e!48458)))

(declare-fun res!46624 () Bool)

(assert (=> b!89025 (=> (not res!46624) (not e!48458))))

(assert (=> b!89025 (= res!46624 (is-Cons!694 (t!48767 l!1602)))))

(declare-fun b!89026 () Bool)

(declare-fun e!48452 () Bool)

(declare-fun tp!17388 () Bool)

(assert (=> b!89026 (= e!48452 (and tp_is_empty!387 tp!17388))))

(declare-fun b!89027 () Bool)

(declare-fun e!48453 () Bool)

(assert (=> b!89027 (= e!48456 e!48453)))

(declare-fun res!46628 () Bool)

(assert (=> b!89027 (=> (not res!46628) (not e!48453))))

(assert (=> b!89027 (= res!46628 (and (not lt!20362) (is-Cons!694 (t!48767 l!1602))))))

(declare-fun b!89028 () Bool)

(declare-fun res!46627 () List!740)

(assert (=> b!89028 (= e!48451 res!46627)))

(assert (=> b!89028 true))

(assert (=> b!89028 e!48452))

(declare-fun b!89029 () Bool)

(assert (=> b!89029 (= e!48453 (<= (dynLambda!1065 keyAnn!11 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 keyAnn!11 (h!1098 (t!48767 l!1602)))))))

(declare-fun b!89030 () Bool)

(assert (=> b!89030 (= e!48451 ($colon$colon!21 (t!48767 l!1602) (tuple2!413 t!48626 n!1739)))))

(declare-fun b!89031 () Bool)

(assert (=> b!89031 (= e!48455 (= (length!15 lt!20361) (+ 1 (length!15 (t!48767 l!1602)))))))

(assert (= (and d!58969 (not res!46625)) b!89025))

(assert (= (and b!89025 res!46624) b!89023))

(assert (= (and b!89024 (not res!46626)) b!89027))

(assert (= (and b!89027 res!46628) b!89029))

(assert (= (and b!89028 (is-Cons!694 res!46627)) b!89026))

(assert (= (and b!89024 c!21871) b!89030))

(assert (= (and b!89024 (not c!21871)) b!89028))

(assert (= (and d!58969 c!21870) b!89024))

(assert (= (and d!58969 (not c!21870)) b!89022))

(assert (= (and d!58969 res!46623) b!89031))

(declare-fun b_lambda!17887 () Bool)

(assert (=> (not b_lambda!17887) (not b!89023)))

(assert (=> b!89023 t!48773))

(declare-fun b_and!60347 () Bool)

(assert (= b_and!60323 (and (=> t!48773 result!47111) b_and!60347)))

(declare-fun b_lambda!17889 () Bool)

(assert (=> (not b_lambda!17889) (not b!89023)))

(declare-fun t!48786 () Bool)

(declare-fun tb!46673 () Bool)

(assert (=> (and start!11614 (= keyAnn!11 keyAnn!11) t!48786) tb!46673))

(declare-fun result!47125 () Bool)

(assert (=> tb!46673 (= result!47125 true)))

(assert (=> b!89023 t!48786))

(declare-fun b_and!60349 () Bool)

(assert (= b_and!60347 (and (=> t!48786 result!47125) b_and!60349)))

(declare-fun b_lambda!17891 () Bool)

(assert (=> (not b_lambda!17891) (not b!89029)))

(assert (=> b!89029 t!48773))

(declare-fun b_and!60351 () Bool)

(assert (= b_and!60349 (and (=> t!48773 result!47111) b_and!60351)))

(declare-fun b_lambda!17893 () Bool)

(assert (=> (not b_lambda!17893) (not b!89029)))

(assert (=> b!89029 t!48786))

(declare-fun b_and!60353 () Bool)

(assert (= b_and!60351 (and (=> t!48786 result!47125) b_and!60353)))

(assert (=> b!89030 m!85108))

(assert (=> b!89029 m!85066))

(declare-fun m!85126 () Bool)

(assert (=> b!89029 m!85126))

(declare-fun m!85128 () Bool)

(assert (=> b!89022 m!85128))

(assert (=> b!89022 m!85128))

(declare-fun m!85130 () Bool)

(assert (=> b!89022 m!85130))

(declare-fun m!85132 () Bool)

(assert (=> b!89031 m!85132))

(assert (=> b!89031 m!85120))

(declare-fun m!85134 () Bool)

(assert (=> d!58969 m!85134))

(assert (=> d!58969 m!85080))

(assert (=> d!58969 m!85124))

(assert (=> b!89023 m!85066))

(assert (=> b!89023 m!85126))

(assert (=> b!88976 d!58969))

(declare-fun d!58971 () Bool)

(declare-fun res!46629 () Bool)

(declare-fun e!48459 () Bool)

(assert (=> d!58971 (=> res!46629 e!48459)))

(assert (=> d!58971 (= res!46629 (is-Nil!696 (t!48767 l!1602)))))

(assert (=> d!58971 (= (isStableSorted!6 (t!48767 l!1602) key!533) e!48459)))

(declare-fun b!89032 () Bool)

(assert (=> b!89032 (= e!48459 (isStableSortedAndAtLeast!6 (t!48767 (t!48767 l!1602)) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 l!1602)))) (_2!241 (h!1098 (t!48767 l!1602)))))))

(assert (= (and d!58971 (not res!46629)) b!89032))

(declare-fun b_lambda!17895 () Bool)

(assert (=> (not b_lambda!17895) (not b!89032)))

(declare-fun t!48788 () Bool)

(declare-fun tb!46675 () Bool)

(assert (=> (and start!11614 (= key!533 key!533) t!48788) tb!46675))

(declare-fun result!47127 () Bool)

(assert (=> tb!46675 (= result!47127 true)))

(assert (=> b!89032 t!48788))

(declare-fun b_and!60355 () Bool)

(assert (= b_and!60345 (and (=> t!48788 result!47127) b_and!60355)))

(declare-fun m!85136 () Bool)

(assert (=> b!89032 m!85136))

(assert (=> b!89032 m!85136))

(declare-fun m!85138 () Bool)

(assert (=> b!89032 m!85138))

(assert (=> d!58931 d!58971))

(declare-fun d!58973 () Bool)

(declare-fun res!46633 () Bool)

(declare-fun e!48463 () Bool)

(assert (=> d!58973 (=> res!46633 e!48463)))

(assert (=> d!58973 (= res!46633 (is-Nil!696 (t!48767 l!1602)))))

(assert (=> d!58973 (= (isStableSortedAndAtLeast!6 (t!48767 l!1602) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 l!1602))) (_2!241 (h!1098 l!1602))) e!48463)))

(declare-fun b!89033 () Bool)

(declare-fun e!48462 () Bool)

(assert (=> b!89033 (= e!48463 e!48462)))

(declare-fun res!46631 () Bool)

(assert (=> b!89033 (=> (not res!46631) (not e!48462))))

(declare-fun e!48461 () Bool)

(assert (=> b!89033 (= res!46631 e!48461)))

(declare-fun res!46632 () Bool)

(assert (=> b!89033 (=> res!46632 e!48461)))

(assert (=> b!89033 (= res!46632 (< (dynLambda!1064 key!533 (_1!241 (h!1098 l!1602))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 l!1602))))))))

(declare-fun b!89036 () Bool)

(assert (=> b!89036 (= e!48462 (isStableSortedAndAtLeast!6 (t!48767 (t!48767 l!1602)) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 l!1602)))) (_2!241 (h!1098 (t!48767 l!1602)))))))

(declare-fun b!89035 () Bool)

(declare-fun e!48460 () Bool)

(assert (=> b!89035 (= e!48460 (<= (_2!241 (h!1098 l!1602)) (_2!241 (h!1098 (t!48767 l!1602)))))))

(declare-fun b!89034 () Bool)

(assert (=> b!89034 (= e!48461 e!48460)))

(declare-fun res!46630 () Bool)

(assert (=> b!89034 (=> (not res!46630) (not e!48460))))

(assert (=> b!89034 (= res!46630 (= (dynLambda!1064 key!533 (_1!241 (h!1098 l!1602))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 l!1602))))))))

(assert (= (and d!58973 (not res!46633)) b!89033))

(assert (= (and b!89033 (not res!46632)) b!89034))

(assert (= (and b!89034 res!46630) b!89035))

(assert (= (and b!89033 res!46631) b!89036))

(declare-fun b_lambda!17897 () Bool)

(assert (=> (not b_lambda!17897) (not b!89033)))

(assert (=> b!89033 t!48788))

(declare-fun b_and!60357 () Bool)

(assert (= b_and!60355 (and (=> t!48788 result!47127) b_and!60357)))

(declare-fun b_lambda!17899 () Bool)

(assert (=> (not b_lambda!17899) (not b!89036)))

(assert (=> b!89036 t!48788))

(declare-fun b_and!60359 () Bool)

(assert (= b_and!60357 (and (=> t!48788 result!47127) b_and!60359)))

(declare-fun b_lambda!17901 () Bool)

(assert (=> (not b_lambda!17901) (not b!89034)))

(assert (=> b!89034 t!48788))

(declare-fun b_and!60361 () Bool)

(assert (= b_and!60359 (and (=> t!48788 result!47127) b_and!60361)))

(assert (=> b!89033 m!85136))

(assert (=> b!89036 m!85136))

(assert (=> b!89036 m!85136))

(assert (=> b!89036 m!85138))

(assert (=> b!89034 m!85136))

(assert (=> b!88986 d!58973))

(assert (=> b!88938 d!58953))

(declare-fun d!58975 () Bool)

(declare-fun res!46634 () Bool)

(declare-fun e!48464 () Bool)

(assert (=> d!58975 (=> res!46634 e!48464)))

(assert (=> d!58975 (= res!46634 (is-Nil!696 lt!20350))))

(assert (=> d!58975 (= (isStableSorted!6 lt!20350 key!533) e!48464)))

(declare-fun b!89037 () Bool)

(assert (=> b!89037 (= e!48464 (isStableSortedAndAtLeast!6 (t!48767 lt!20350) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 lt!20350))) (_2!241 (h!1098 lt!20350))))))

(assert (= (and d!58975 (not res!46634)) b!89037))

(declare-fun b_lambda!17903 () Bool)

(assert (=> (not b_lambda!17903) (not b!89037)))

(declare-fun t!48790 () Bool)

(declare-fun tb!46677 () Bool)

(assert (=> (and start!11614 (= key!533 key!533) t!48790) tb!46677))

(declare-fun result!47129 () Bool)

(assert (=> tb!46677 (= result!47129 true)))

(assert (=> b!89037 t!48790))

(declare-fun b_and!60363 () Bool)

(assert (= b_and!60361 (and (=> t!48790 result!47129) b_and!60363)))

(declare-fun m!85140 () Bool)

(assert (=> b!89037 m!85140))

(assert (=> b!89037 m!85140))

(declare-fun m!85142 () Bool)

(assert (=> b!89037 m!85142))

(assert (=> b!88953 d!58975))

(declare-fun e!48468 () List!740)

(declare-fun b!89038 () Bool)

(assert (=> b!89038 (= e!48468 ($colon$colon!21 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) lambda!10905) (h!1098 (t!48767 l!1602))))))

(declare-fun e!48472 () Bool)

(declare-fun b!89039 () Bool)

(assert (=> b!89039 (= e!48472 (<= (dynLambda!1065 lambda!10905 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 lambda!10905 (h!1098 (t!48767 l!1602)))))))

(declare-fun d!58977 () Bool)

(declare-fun e!48469 () Bool)

(assert (=> d!58977 e!48469))

(declare-fun res!46635 () Bool)

(assert (=> d!58977 (=> (not res!46635) (not e!48469))))

(declare-fun lt!20363 () List!740)

(assert (=> d!58977 (= res!46635 (= (content!163 lt!20363) (union (insert (tuple2!413 t!48626 n!1739) (as emptyset (Set tuple2!412))) (content!163 (t!48767 l!1602)))))))

(assert (=> d!58977 (= lt!20363 e!48468)))

(declare-fun c!21872 () Bool)

(declare-fun e!48471 () Bool)

(assert (=> d!58977 (= c!21872 e!48471)))

(declare-fun res!46637 () Bool)

(assert (=> d!58977 (=> res!46637 e!48471)))

(declare-fun lt!20364 () Bool)

(assert (=> d!58977 (= res!46637 lt!20364)))

(assert (=> d!58977 (= lt!20364 (is-Nil!696 (t!48767 l!1602)))))

(assert (=> d!58977 (= (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 l!1602) lambda!10905) lt!20363)))

(declare-fun b!89040 () Bool)

(declare-fun e!48465 () List!740)

(assert (=> b!89040 (= e!48468 e!48465)))

(declare-fun c!21873 () Bool)

(declare-fun e!48470 () Bool)

(assert (=> b!89040 (= c!21873 e!48470)))

(declare-fun res!46638 () Bool)

(assert (=> b!89040 (=> res!46638 e!48470)))

(assert (=> b!89040 (= res!46638 lt!20364)))

(declare-fun b!89041 () Bool)

(assert (=> b!89041 (= e!48471 e!48472)))

(declare-fun res!46636 () Bool)

(assert (=> b!89041 (=> (not res!46636) (not e!48472))))

(assert (=> b!89041 (= res!46636 (is-Cons!694 (t!48767 l!1602)))))

(declare-fun b!89042 () Bool)

(declare-fun e!48466 () Bool)

(declare-fun tp!17389 () Bool)

(assert (=> b!89042 (= e!48466 (and tp_is_empty!387 tp!17389))))

(declare-fun b!89043 () Bool)

(declare-fun e!48467 () Bool)

(assert (=> b!89043 (= e!48470 e!48467)))

(declare-fun res!46640 () Bool)

(assert (=> b!89043 (=> (not res!46640) (not e!48467))))

(assert (=> b!89043 (= res!46640 (and (not lt!20364) (is-Cons!694 (t!48767 l!1602))))))

(declare-fun b!89044 () Bool)

(declare-fun res!46639 () List!740)

(assert (=> b!89044 (= e!48465 res!46639)))

(assert (=> b!89044 true))

(assert (=> b!89044 e!48466))

(declare-fun b!89045 () Bool)

(assert (=> b!89045 (= e!48467 (<= (dynLambda!1065 lambda!10905 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 lambda!10905 (h!1098 (t!48767 l!1602)))))))

(declare-fun b!89046 () Bool)

(assert (=> b!89046 (= e!48465 ($colon$colon!21 (t!48767 l!1602) (tuple2!413 t!48626 n!1739)))))

(declare-fun b!89047 () Bool)

(assert (=> b!89047 (= e!48469 (= (length!15 lt!20363) (+ 1 (length!15 (t!48767 l!1602)))))))

(assert (= (and d!58977 (not res!46637)) b!89041))

(assert (= (and b!89041 res!46636) b!89039))

(assert (= (and b!89040 (not res!46638)) b!89043))

(assert (= (and b!89043 res!46640) b!89045))

(assert (= (and b!89044 (is-Cons!694 res!46639)) b!89042))

(assert (= (and b!89040 c!21873) b!89046))

(assert (= (and b!89040 (not c!21873)) b!89044))

(assert (= (and d!58977 c!21872) b!89040))

(assert (= (and d!58977 (not c!21872)) b!89038))

(assert (= (and d!58977 res!46635) b!89047))

(declare-fun b_lambda!17905 () Bool)

(assert (=> (not b_lambda!17905) (not b!89039)))

(declare-fun b_lambda!17907 () Bool)

(assert (=> (not b_lambda!17907) (not b!89039)))

(declare-fun b_lambda!17909 () Bool)

(assert (=> (not b_lambda!17909) (not b!89045)))

(declare-fun b_lambda!17911 () Bool)

(assert (=> (not b_lambda!17911) (not b!89045)))

(assert (=> b!89046 m!85108))

(declare-fun m!85144 () Bool)

(assert (=> b!89045 m!85144))

(declare-fun m!85146 () Bool)

(assert (=> b!89045 m!85146))

(declare-fun m!85148 () Bool)

(assert (=> b!89038 m!85148))

(assert (=> b!89038 m!85148))

(declare-fun m!85150 () Bool)

(assert (=> b!89038 m!85150))

(declare-fun m!85152 () Bool)

(assert (=> b!89047 m!85152))

(assert (=> b!89047 m!85120))

(declare-fun m!85154 () Bool)

(assert (=> d!58977 m!85154))

(assert (=> d!58977 m!85080))

(assert (=> d!58977 m!85124))

(assert (=> b!89039 m!85144))

(assert (=> b!89039 m!85146))

(assert (=> b!88953 d!58977))

(declare-fun bs!41432 () Bool)

(declare-fun b!89050 () Bool)

(assert (= bs!41432 (and b!89050 b!88926)))

(declare-fun lambda!10907 () Int)

(assert (=> bs!41432 (= lambda!10907 lambda!10900)))

(declare-fun bs!41433 () Bool)

(assert (= bs!41433 (and b!89050 b!88953)))

(assert (=> bs!41433 (= lambda!10907 lambda!10905)))

(declare-fun bs!41434 () Bool)

(assert (= bs!41434 (and b!89050 b!88954)))

(assert (=> bs!41434 (= lambda!10907 lambda!10906)))

(assert (=> b!89050 true))

(assert (=> b!89050 (< (dynLambda!1062 order!505 key!533) (dynLambda!1063 order!507 lambda!10907))))

(declare-fun b_next!39875 () Bool)

(assert (=> start!11614 (= b_next!39873 (or (and b!89050 (= lambda!10907 keyAnn!11)) b_next!39875))))

(declare-fun bs!41435 () Bool)

(declare-fun b!89051 () Bool)

(assert (= bs!41435 (and b!89051 b!88926)))

(declare-fun lambda!10908 () Int)

(assert (=> bs!41435 (= lambda!10908 lambda!10900)))

(declare-fun bs!41436 () Bool)

(assert (= bs!41436 (and b!89051 b!88953)))

(assert (=> bs!41436 (= lambda!10908 lambda!10905)))

(declare-fun bs!41437 () Bool)

(assert (= bs!41437 (and b!89051 b!88954)))

(assert (=> bs!41437 (= lambda!10908 lambda!10906)))

(declare-fun bs!41438 () Bool)

(assert (= bs!41438 (and b!89051 b!89050)))

(assert (=> bs!41438 (= lambda!10908 lambda!10907)))

(assert (=> b!89051 true))

(assert (=> b!89051 (< (dynLambda!1062 order!505 key!533) (dynLambda!1063 order!507 lambda!10908))))

(declare-fun b_next!39877 () Bool)

(assert (=> start!11614 (= b_next!39875 (or (and b!89051 (= lambda!10908 keyAnn!11)) b_next!39877))))

(declare-fun b!89048 () Bool)

(declare-fun e!48475 () Bool)

(declare-fun lt!20365 () List!740)

(assert (=> b!89048 (= e!48475 (l2AtLeast!7 lt!20365 n!1739))))

(declare-fun b!89049 () Bool)

(declare-fun e!48474 () Bool)

(assert (=> b!89049 (= e!48474 (l2AtLeast!7 (t!48767 (t!48767 l!1602)) n!1739))))

(declare-fun e!48476 () Bool)

(assert (=> b!89050 (= e!48476 e!48475)))

(declare-fun res!46641 () Bool)

(assert (=> b!89050 (=> (not res!46641) (not e!48475))))

(assert (=> b!89050 (= res!46641 (isStableSorted!6 lt!20365 key!533))))

(assert (=> b!89050 (= lt!20365 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) lambda!10907))))

(declare-fun lt!20367 () Bool)

(assert (=> b!89050 (= lt!20367 (insertStableProp!4 t!48626 n!1739 (t!48767 (t!48767 (t!48767 l!1602))) key!533))))

(declare-fun d!58979 () Bool)

(assert (=> d!58979 e!48476))

(declare-fun c!21874 () Bool)

(assert (=> d!58979 (= c!21874 (is-Cons!694 (t!48767 (t!48767 l!1602))))))

(assert (=> d!58979 e!48474))

(declare-fun res!46642 () Bool)

(assert (=> d!58979 (=> (not res!46642) (not e!48474))))

(assert (=> d!58979 (= res!46642 (isStableSorted!6 (t!48767 (t!48767 l!1602)) key!533))))

(assert (=> d!58979 (= (insertStableProp!4 t!48626 n!1739 (t!48767 (t!48767 l!1602)) key!533) true)))

(declare-fun e!48473 () Bool)

(assert (=> b!89051 (= e!48476 e!48473)))

(declare-fun res!46643 () Bool)

(assert (=> b!89051 (=> (not res!46643) (not e!48473))))

(declare-fun lt!20366 () List!740)

(assert (=> b!89051 (= res!46643 (isStableSorted!6 lt!20366 key!533))))

(assert (=> b!89051 (= lt!20366 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) lambda!10908))))

(declare-fun b!89052 () Bool)

(assert (=> b!89052 (= e!48473 (l2AtLeast!7 lt!20366 n!1739))))

(assert (= (and d!58979 res!46642) b!89049))

(assert (= (and b!89050 res!46641) b!89048))

(assert (= (and b!89051 res!46643) b!89052))

(assert (= (and d!58979 c!21874) b!89050))

(assert (= (and d!58979 (not c!21874)) b!89051))

(declare-fun m!85156 () Bool)

(assert (=> b!89050 m!85156))

(declare-fun m!85158 () Bool)

(assert (=> b!89050 m!85158))

(declare-fun m!85160 () Bool)

(assert (=> b!89050 m!85160))

(declare-fun m!85162 () Bool)

(assert (=> b!89052 m!85162))

(declare-fun m!85164 () Bool)

(assert (=> d!58979 m!85164))

(assert (=> b!89049 m!85094))

(declare-fun m!85166 () Bool)

(assert (=> b!89051 m!85166))

(declare-fun m!85168 () Bool)

(assert (=> b!89051 m!85168))

(declare-fun m!85170 () Bool)

(assert (=> b!89048 m!85170))

(assert (=> b!88953 d!58979))

(declare-fun d!58981 () Bool)

(declare-fun res!46644 () Bool)

(declare-fun e!48477 () Bool)

(assert (=> d!58981 (=> res!46644 e!48477)))

(assert (=> d!58981 (= res!46644 (is-Nil!696 (t!48767 res!45959)))))

(assert (=> d!58981 (= (l2AtLeast!7 (t!48767 res!45959) n!1739) e!48477)))

(declare-fun b!89053 () Bool)

(declare-fun e!48478 () Bool)

(assert (=> b!89053 (= e!48477 e!48478)))

(declare-fun res!46645 () Bool)

(assert (=> b!89053 (=> (not res!46645) (not e!48478))))

(assert (=> b!89053 (= res!46645 (<= n!1739 (_2!241 (h!1098 (t!48767 res!45959)))))))

(declare-fun b!89054 () Bool)

(assert (=> b!89054 (= e!48478 (l2AtLeast!7 (t!48767 (t!48767 res!45959)) n!1739))))

(assert (= (and d!58981 (not res!46644)) b!89053))

(assert (= (and b!89053 res!46645) b!89054))

(declare-fun m!85172 () Bool)

(assert (=> b!89054 m!85172))

(assert (=> b!88940 d!58981))

(declare-fun d!58983 () Bool)

(declare-fun c!21877 () Bool)

(assert (=> d!58983 (= c!21877 (is-Nil!696 lt!20357))))

(declare-fun e!48481 () (Set tuple2!412))

(assert (=> d!58983 (= (content!163 lt!20357) e!48481)))

(declare-fun b!89059 () Bool)

(assert (=> b!89059 (= e!48481 (as emptyset (Set tuple2!412)))))

(declare-fun b!89060 () Bool)

(assert (=> b!89060 (= e!48481 (union (insert (h!1098 lt!20357) (as emptyset (Set tuple2!412))) (content!163 (t!48767 lt!20357))))))

(assert (= (and d!58983 c!21877) b!89059))

(assert (= (and d!58983 (not c!21877)) b!89060))

(declare-fun m!85174 () Bool)

(assert (=> b!89060 m!85174))

(declare-fun m!85176 () Bool)

(assert (=> b!89060 m!85176))

(assert (=> d!58933 d!58983))

(declare-fun d!58985 () Bool)

(declare-fun c!21878 () Bool)

(assert (=> d!58985 (= c!21878 (is-Nil!696 l!1602))))

(declare-fun e!48482 () (Set tuple2!412))

(assert (=> d!58985 (= (content!163 l!1602) e!48482)))

(declare-fun b!89061 () Bool)

(assert (=> b!89061 (= e!48482 (as emptyset (Set tuple2!412)))))

(declare-fun b!89062 () Bool)

(assert (=> b!89062 (= e!48482 (union (insert (h!1098 l!1602) (as emptyset (Set tuple2!412))) (content!163 (t!48767 l!1602))))))

(assert (= (and d!58985 c!21878) b!89061))

(assert (= (and d!58985 (not c!21878)) b!89062))

(declare-fun m!85178 () Bool)

(assert (=> b!89062 m!85178))

(assert (=> b!89062 m!85124))

(assert (=> d!58933 d!58985))

(declare-fun b!89063 () Bool)

(declare-fun e!48483 () Bool)

(declare-fun tp!17390 () Bool)

(assert (=> b!89063 (= e!48483 (and tp_is_empty!387 tp!17390))))

(assert (=> b!88980 (= tp!17382 e!48483)))

(assert (= (and b!88980 (is-Cons!694 (t!48767 res!46595))) b!89063))

(declare-fun b!89064 () Bool)

(declare-fun e!48484 () Bool)

(declare-fun tp!17391 () Bool)

(assert (=> b!89064 (= e!48484 (and tp_is_empty!387 tp!17391))))

(assert (=> b!88992 (= tp!17386 e!48484)))

(assert (= (and b!88992 (is-Cons!694 (t!48767 (t!48767 l!1602)))) b!89064))

(declare-fun b!89065 () Bool)

(declare-fun e!48485 () Bool)

(declare-fun tp!17392 () Bool)

(assert (=> b!89065 (= e!48485 (and tp_is_empty!387 tp!17392))))

(assert (=> b!88991 (= tp!17385 e!48485)))

(assert (= (and b!88991 (is-Cons!694 (t!48767 (t!48767 res!45959)))) b!89065))

(declare-fun b_lambda!17913 () Bool)

(assert (= b_lambda!17879 (or b!88954 b_lambda!17913)))

(declare-fun bs!41439 () Bool)

(declare-fun d!58987 () Bool)

(assert (= bs!41439 (and d!58987 b!88954)))

(assert (=> bs!41439 (= (dynLambda!1065 lambda!10906 (tuple2!413 t!48626 n!1739)) (dynLambda!1064 key!533 (_1!241 (tuple2!413 t!48626 n!1739))))))

(declare-fun b_lambda!17955 () Bool)

(assert (=> (not b_lambda!17955) (not bs!41439)))

(assert (=> bs!41439 t!48779))

(declare-fun b_and!60365 () Bool)

(assert (= b_and!60363 (and (=> t!48779 result!47119) b_and!60365)))

(assert (=> bs!41439 m!85088))

(assert (=> b!89013 d!58987))

(declare-fun b_lambda!17915 () Bool)

(assert (= b_lambda!17889 (or (and start!11614 b_free!7523) (and b!89050 (= lambda!10907 keyAnn!11)) (and b!88926 (= lambda!10900 keyAnn!11)) (and b!88954 (= lambda!10906 keyAnn!11)) (and b!89051 (= lambda!10908 keyAnn!11)) (and b!88953 (= lambda!10905 keyAnn!11)) b_lambda!17915)))

(declare-fun bs!41440 () Bool)

(declare-fun d!58989 () Bool)

(assert (= bs!41440 (and d!58989 b!89051)))

(assert (=> bs!41440 (= (dynLambda!1065 lambda!10908 (h!1098 (t!48767 l!1602))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 l!1602)))))))

(declare-fun b_lambda!17957 () Bool)

(assert (=> (not b_lambda!17957) (not bs!41440)))

(assert (=> bs!41440 t!48788))

(declare-fun b_and!60367 () Bool)

(assert (= b_and!60365 (and (=> t!48788 result!47127) b_and!60367)))

(assert (=> bs!41440 m!85136))

(assert (=> (and b!89051 (= lambda!10908 keyAnn!11) b!89023) d!58989))

(declare-fun bs!41441 () Bool)

(declare-fun d!58991 () Bool)

(assert (= bs!41441 (and d!58991 b!88954)))

(assert (=> bs!41441 (= (dynLambda!1065 lambda!10906 (h!1098 (t!48767 l!1602))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 l!1602)))))))

(declare-fun b_lambda!17959 () Bool)

(assert (=> (not b_lambda!17959) (not bs!41441)))

(assert (=> bs!41441 t!48788))

(declare-fun b_and!60369 () Bool)

(assert (= b_and!60367 (and (=> t!48788 result!47127) b_and!60369)))

(assert (=> bs!41441 m!85136))

(assert (=> (and b!88954 (= lambda!10906 keyAnn!11) b!89023) d!58991))

(declare-fun bs!41442 () Bool)

(declare-fun d!58993 () Bool)

(assert (= bs!41442 (and d!58993 b!88926)))

(assert (=> bs!41442 (= (dynLambda!1065 lambda!10900 (h!1098 (t!48767 l!1602))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 l!1602)))))))

(declare-fun b_lambda!17961 () Bool)

(assert (=> (not b_lambda!17961) (not bs!41442)))

(assert (=> bs!41442 t!48788))

(declare-fun b_and!60371 () Bool)

(assert (= b_and!60369 (and (=> t!48788 result!47127) b_and!60371)))

(assert (=> bs!41442 m!85136))

(assert (=> (and b!88926 (= lambda!10900 keyAnn!11) b!89023) d!58993))

(declare-fun bs!41443 () Bool)

(declare-fun d!58995 () Bool)

(assert (= bs!41443 (and d!58995 b!89050)))

(assert (=> bs!41443 (= (dynLambda!1065 lambda!10907 (h!1098 (t!48767 l!1602))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 l!1602)))))))

(declare-fun b_lambda!17963 () Bool)

(assert (=> (not b_lambda!17963) (not bs!41443)))

(assert (=> bs!41443 t!48788))

(declare-fun b_and!60373 () Bool)

(assert (= b_and!60371 (and (=> t!48788 result!47127) b_and!60373)))

(assert (=> bs!41443 m!85136))

(assert (=> (and b!89050 (= lambda!10907 keyAnn!11) b!89023) d!58995))

(declare-fun bs!41444 () Bool)

(declare-fun d!58997 () Bool)

(assert (= bs!41444 (and d!58997 b!88953)))

(assert (=> bs!41444 (= (dynLambda!1065 lambda!10905 (h!1098 (t!48767 l!1602))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 l!1602)))))))

(declare-fun b_lambda!17965 () Bool)

(assert (=> (not b_lambda!17965) (not bs!41444)))

(assert (=> bs!41444 t!48788))

(declare-fun b_and!60375 () Bool)

(assert (= b_and!60373 (and (=> t!48788 result!47127) b_and!60375)))

(assert (=> bs!41444 m!85136))

(assert (=> (and b!88953 (= lambda!10905 keyAnn!11) b!89023) d!58997))

(declare-fun b_lambda!17917 () Bool)

(assert (= b_lambda!17875 (or (and start!11614 b_free!7525) b_lambda!17917)))

(declare-fun b_lambda!17919 () Bool)

(assert (= b_lambda!17907 (or b!88953 b_lambda!17919)))

(declare-fun bs!41445 () Bool)

(declare-fun d!58999 () Bool)

(assert (= bs!41445 (and d!58999 b!88953)))

(assert (=> bs!41445 (= (dynLambda!1065 lambda!10905 (h!1098 (t!48767 l!1602))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 l!1602)))))))

(declare-fun b_lambda!17967 () Bool)

(assert (=> (not b_lambda!17967) (not bs!41445)))

(assert (=> bs!41445 t!48788))

(declare-fun b_and!60377 () Bool)

(assert (= b_and!60375 (and (=> t!48788 result!47127) b_and!60377)))

(assert (=> bs!41445 m!85136))

(assert (=> b!89039 d!58999))

(declare-fun b_lambda!17921 () Bool)

(assert (= b_lambda!17891 (or (and start!11614 b_free!7523) (and b!89050 (= lambda!10907 keyAnn!11)) (and b!88926 (= lambda!10900 keyAnn!11)) (and b!88954 (= lambda!10906 keyAnn!11)) (and b!89051 (= lambda!10908 keyAnn!11)) (and b!88953 (= lambda!10905 keyAnn!11)) b_lambda!17921)))

(assert (=> (and b!88953 (= lambda!10905 keyAnn!11) b!89029) d!58939))

(assert (=> (and b!88954 (= lambda!10906 keyAnn!11) b!89029) d!58941))

(declare-fun bs!41446 () Bool)

(declare-fun d!59001 () Bool)

(assert (= bs!41446 (and d!59001 b!89050)))

(assert (=> bs!41446 (= (dynLambda!1065 lambda!10907 (tuple2!413 t!48626 n!1739)) (dynLambda!1064 key!533 (_1!241 (tuple2!413 t!48626 n!1739))))))

(declare-fun b_lambda!17969 () Bool)

(assert (=> (not b_lambda!17969) (not bs!41446)))

(assert (=> bs!41446 t!48779))

(declare-fun b_and!60379 () Bool)

(assert (= b_and!60377 (and (=> t!48779 result!47119) b_and!60379)))

(assert (=> bs!41446 m!85088))

(assert (=> (and b!89050 (= lambda!10907 keyAnn!11) b!89029) d!59001))

(assert (=> (and b!88926 (= lambda!10900 keyAnn!11) b!89029) d!58937))

(declare-fun bs!41447 () Bool)

(declare-fun d!59003 () Bool)

(assert (= bs!41447 (and d!59003 b!89051)))

(assert (=> bs!41447 (= (dynLambda!1065 lambda!10908 (tuple2!413 t!48626 n!1739)) (dynLambda!1064 key!533 (_1!241 (tuple2!413 t!48626 n!1739))))))

(declare-fun b_lambda!17971 () Bool)

(assert (=> (not b_lambda!17971) (not bs!41447)))

(assert (=> bs!41447 t!48779))

(declare-fun b_and!60381 () Bool)

(assert (= b_and!60379 (and (=> t!48779 result!47119) b_and!60381)))

(assert (=> bs!41447 m!85088))

(assert (=> (and b!89051 (= lambda!10908 keyAnn!11) b!89029) d!59003))

(declare-fun b_lambda!17923 () Bool)

(assert (= b_lambda!17897 (or (and start!11614 b_free!7525) b_lambda!17923)))

(declare-fun b_lambda!17925 () Bool)

(assert (= b_lambda!17903 (or (and start!11614 b_free!7525) b_lambda!17925)))

(declare-fun b_lambda!17927 () Bool)

(assert (= b_lambda!17885 (or b!88954 b_lambda!17927)))

(declare-fun bs!41448 () Bool)

(declare-fun d!59005 () Bool)

(assert (= bs!41448 (and d!59005 b!88954)))

(assert (=> bs!41448 (= (dynLambda!1065 lambda!10906 (h!1098 (t!48767 l!1602))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 l!1602)))))))

(declare-fun b_lambda!17973 () Bool)

(assert (=> (not b_lambda!17973) (not bs!41448)))

(assert (=> bs!41448 t!48788))

(declare-fun b_and!60383 () Bool)

(assert (= b_and!60381 (and (=> t!48788 result!47127) b_and!60383)))

(assert (=> bs!41448 m!85136))

(assert (=> b!89019 d!59005))

(declare-fun b_lambda!17929 () Bool)

(assert (= b_lambda!17901 (or (and start!11614 b_free!7525) b_lambda!17929)))

(declare-fun b_lambda!17931 () Bool)

(assert (= b_lambda!17871 (or (and start!11614 b_free!7525) b_lambda!17931)))

(declare-fun b_lambda!17933 () Bool)

(assert (= b_lambda!17887 (or (and start!11614 b_free!7523) (and b!89050 (= lambda!10907 keyAnn!11)) (and b!88926 (= lambda!10900 keyAnn!11)) (and b!88954 (= lambda!10906 keyAnn!11)) (and b!89051 (= lambda!10908 keyAnn!11)) (and b!88953 (= lambda!10905 keyAnn!11)) b_lambda!17933)))

(assert (=> (and b!88953 (= lambda!10905 keyAnn!11) b!89023) d!58939))

(assert (=> (and b!88954 (= lambda!10906 keyAnn!11) b!89023) d!58941))

(assert (=> (and b!89050 (= lambda!10907 keyAnn!11) b!89023) d!59001))

(assert (=> (and b!88926 (= lambda!10900 keyAnn!11) b!89023) d!58937))

(assert (=> (and b!89051 (= lambda!10908 keyAnn!11) b!89023) d!59003))

(declare-fun b_lambda!17935 () Bool)

(assert (= b_lambda!17873 (or (and start!11614 b_free!7525) b_lambda!17935)))

(declare-fun b_lambda!17937 () Bool)

(assert (= b_lambda!17893 (or (and start!11614 b_free!7523) (and b!89050 (= lambda!10907 keyAnn!11)) (and b!88926 (= lambda!10900 keyAnn!11)) (and b!88954 (= lambda!10906 keyAnn!11)) (and b!89051 (= lambda!10908 keyAnn!11)) (and b!88953 (= lambda!10905 keyAnn!11)) b_lambda!17937)))

(assert (=> (and b!89051 (= lambda!10908 keyAnn!11) b!89029) d!58989))

(assert (=> (and b!88954 (= lambda!10906 keyAnn!11) b!89029) d!58991))

(assert (=> (and b!88926 (= lambda!10900 keyAnn!11) b!89029) d!58993))

(assert (=> (and b!89050 (= lambda!10907 keyAnn!11) b!89029) d!58995))

(assert (=> (and b!88953 (= lambda!10905 keyAnn!11) b!89029) d!58997))

(declare-fun b_lambda!17939 () Bool)

(assert (= b_lambda!17881 (or b!88954 b_lambda!17939)))

(assert (=> b!89013 d!59005))

(declare-fun b_lambda!17941 () Bool)

(assert (= b_lambda!17883 (or b!88954 b_lambda!17941)))

(assert (=> b!89019 d!58987))

(declare-fun b_lambda!17943 () Bool)

(assert (= b_lambda!17909 (or b!88953 b_lambda!17943)))

(declare-fun bs!41449 () Bool)

(declare-fun d!59007 () Bool)

(assert (= bs!41449 (and d!59007 b!88953)))

(assert (=> bs!41449 (= (dynLambda!1065 lambda!10905 (tuple2!413 t!48626 n!1739)) (dynLambda!1064 key!533 (_1!241 (tuple2!413 t!48626 n!1739))))))

(declare-fun b_lambda!17975 () Bool)

(assert (=> (not b_lambda!17975) (not bs!41449)))

(assert (=> bs!41449 t!48779))

(declare-fun b_and!60385 () Bool)

(assert (= b_and!60383 (and (=> t!48779 result!47119) b_and!60385)))

(assert (=> bs!41449 m!85088))

(assert (=> b!89045 d!59007))

(declare-fun b_lambda!17945 () Bool)

(assert (= b_lambda!17911 (or b!88953 b_lambda!17945)))

(assert (=> b!89045 d!58999))

(declare-fun b_lambda!17947 () Bool)

(assert (= b_lambda!17905 (or b!88953 b_lambda!17947)))

(assert (=> b!89039 d!59007))

(declare-fun b_lambda!17949 () Bool)

(assert (= b_lambda!17877 (or (and start!11614 b_free!7525) b_lambda!17949)))

(declare-fun b_lambda!17951 () Bool)

(assert (= b_lambda!17899 (or (and start!11614 b_free!7525) b_lambda!17951)))

(declare-fun b_lambda!17953 () Bool)

(assert (= b_lambda!17895 (or (and start!11614 b_free!7525) b_lambda!17953)))

(push 1)

(assert (not d!58965))

(assert (not b_lambda!17869))

(assert (not b_lambda!17915))

(assert (not b_lambda!17971))

(assert (not b!89046))

(assert (not b_lambda!17961))

(assert (not b_lambda!17927))

(assert (not b_lambda!17957))

(assert (not b_lambda!17859))

(assert (not b!89060))

(assert (not b_lambda!17863))

(assert (not b_lambda!17973))

(assert (not b!89008))

(assert (not b_lambda!17919))

(assert (not b_lambda!17939))

(assert (not b_lambda!17959))

(assert tp_is_empty!387)

(assert (not b!89050))

(assert (not b_next!39867))

(assert (not b_lambda!17967))

(assert b_and!60353)

(assert (not b!89048))

(assert (not b_lambda!17941))

(assert (not b_lambda!17843))

(assert (not b!89042))

(assert (not b_lambda!17921))

(assert (not b_next!39877))

(assert (not b!89047))

(assert (not b_lambda!17963))

(assert (not d!58951))

(assert (not b_lambda!17835))

(assert (not b!89012))

(assert (not b!89064))

(assert (not b_lambda!17955))

(assert (not b_lambda!17933))

(assert (not d!58969))

(assert (not b!89054))

(assert (not b!89038))

(assert (not b_lambda!17845))

(assert (not b!89065))

(assert (not b!89036))

(assert (not b!89031))

(assert (not b_lambda!17925))

(assert (not b_lambda!17923))

(assert (not b_lambda!17861))

(assert (not b_lambda!17837))

(assert (not b_lambda!17839))

(assert (not b_lambda!17947))

(assert (not b_lambda!17929))

(assert (not b_lambda!17913))

(assert (not d!58977))

(assert (not b!89006))

(assert (not b!89052))

(assert (not b_lambda!17953))

(assert b_and!60385)

(assert (not b_lambda!17917))

(assert (not b!89021))

(assert (not d!58979))

(assert (not b_lambda!17975))

(assert (not b!88994))

(assert (not b_lambda!17965))

(assert (not b!89051))

(assert (not b_lambda!17865))

(assert (not b_lambda!17951))

(assert (not b!89049))

(assert (not b_lambda!17841))

(assert (not b!89062))

(assert (not b_lambda!17949))

(assert (not b!89016))

(assert (not b!89032))

(assert (not d!58949))

(assert (not b_lambda!17931))

(assert (not b!89037))

(assert (not b!89030))

(assert (not b_lambda!17935))

(assert (not b!89026))

(assert (not b_lambda!17969))

(assert (not b_lambda!17937))

(assert (not b!89022))

(assert (not b!89011))

(assert (not b_lambda!17867))

(assert (not b!89063))

(assert (not b_lambda!17943))

(assert (not b!89010))

(assert (not b!89020))

(assert (not b_lambda!17945))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60385)

(assert b_and!60353)

(assert (not b_next!39867))

(assert (not b_next!39877))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!17977 () Bool)

(assert (= b_lambda!17973 (or (and start!11614 b_free!7525) b_lambda!17977)))

(declare-fun b_lambda!17979 () Bool)

(assert (= b_lambda!17975 (or (and start!11614 b_free!7525) b_lambda!17979)))

(declare-fun b_lambda!17981 () Bool)

(assert (= b_lambda!17963 (or (and start!11614 b_free!7525) b_lambda!17981)))

(declare-fun b_lambda!17983 () Bool)

(assert (= b_lambda!17957 (or (and start!11614 b_free!7525) b_lambda!17983)))

(declare-fun b_lambda!17985 () Bool)

(assert (= b_lambda!17955 (or (and start!11614 b_free!7525) b_lambda!17985)))

(declare-fun b_lambda!17987 () Bool)

(assert (= b_lambda!17967 (or (and start!11614 b_free!7525) b_lambda!17987)))

(declare-fun b_lambda!17989 () Bool)

(assert (= b_lambda!17961 (or (and start!11614 b_free!7525) b_lambda!17989)))

(declare-fun b_lambda!17991 () Bool)

(assert (= b_lambda!17969 (or (and start!11614 b_free!7525) b_lambda!17991)))

(declare-fun b_lambda!17993 () Bool)

(assert (= b_lambda!17971 (or (and start!11614 b_free!7525) b_lambda!17993)))

(declare-fun b_lambda!17995 () Bool)

(assert (= b_lambda!17965 (or (and start!11614 b_free!7525) b_lambda!17995)))

(declare-fun b_lambda!17997 () Bool)

(assert (= b_lambda!17959 (or (and start!11614 b_free!7525) b_lambda!17997)))

(push 1)

(assert (not d!58965))

(assert (not b_lambda!17869))

(assert (not b_lambda!17915))

(assert (not b!89046))

(assert (not b_lambda!17927))

(assert (not b_lambda!17859))

(assert (not b!89060))

(assert (not b_lambda!17863))

(assert (not b!89008))

(assert (not b_lambda!17987))

(assert (not b_lambda!17919))

(assert (not b_lambda!17939))

(assert tp_is_empty!387)

(assert (not b!89050))

(assert (not b_next!39867))

(assert b_and!60353)

(assert (not b!89048))

(assert (not b_lambda!17941))

(assert (not b_lambda!17843))

(assert (not b!89042))

(assert (not b_lambda!17921))

(assert (not b_next!39877))

(assert (not b_lambda!17979))

(assert (not b!89047))

(assert (not b_lambda!17991))

(assert (not d!58951))

(assert (not b_lambda!17835))

(assert (not b!89012))

(assert (not b!89064))

(assert (not b_lambda!17933))

(assert (not d!58969))

(assert (not b!89054))

(assert (not b!89038))

(assert (not b_lambda!17845))

(assert (not b!89065))

(assert (not b!89036))

(assert (not b!89031))

(assert (not b_lambda!17981))

(assert (not b_lambda!17925))

(assert (not b_lambda!17923))

(assert (not b_lambda!17983))

(assert (not b_lambda!17861))

(assert (not b_lambda!17837))

(assert (not b_lambda!17839))

(assert (not b_lambda!17947))

(assert (not b_lambda!17929))

(assert (not b_lambda!17913))

(assert (not d!58977))

(assert (not b!89006))

(assert (not b!89052))

(assert (not b_lambda!17953))

(assert b_and!60385)

(assert (not b_lambda!17917))

(assert (not b_lambda!17993))

(assert (not b!89021))

(assert (not d!58979))

(assert (not b!88994))

(assert (not b_lambda!17977))

(assert (not b_lambda!17995))

(assert (not b!89051))

(assert (not b_lambda!17865))

(assert (not b_lambda!17989))

(assert (not b_lambda!17951))

(assert (not b!89049))

(assert (not b_lambda!17841))

(assert (not b_lambda!17985))

(assert (not b!89062))

(assert (not b_lambda!17949))

(assert (not b!89016))

(assert (not b!89032))

(assert (not d!58949))

(assert (not b_lambda!17931))

(assert (not b!89037))

(assert (not b_lambda!17997))

(assert (not b!89030))

(assert (not b_lambda!17935))

(assert (not b!89026))

(assert (not b_lambda!17937))

(assert (not b!89022))

(assert (not b!89011))

(assert (not b_lambda!17867))

(assert (not b!89063))

(assert (not b_lambda!17943))

(assert (not b!89010))

(assert (not b!89020))

(assert (not b_lambda!17945))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60385)

(assert b_and!60353)

(assert (not b_next!39867))

(assert (not b_next!39877))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59009 () Bool)

(assert (=> d!59009 (= ($colon$colon!21 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) lambda!10906) (h!1098 (t!48767 l!1602))) (Cons!694 (h!1098 (t!48767 l!1602)) (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) lambda!10906)))))

(assert (=> b!89012 d!59009))

(declare-fun b!89066 () Bool)

(declare-fun e!48489 () List!740)

(assert (=> b!89066 (= e!48489 ($colon$colon!21 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 (t!48767 l!1602))) lambda!10906) (h!1098 (t!48767 (t!48767 l!1602)))))))

(declare-fun e!48493 () Bool)

(declare-fun b!89067 () Bool)

(assert (=> b!89067 (= e!48493 (<= (dynLambda!1065 lambda!10906 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 lambda!10906 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun d!59011 () Bool)

(declare-fun e!48490 () Bool)

(assert (=> d!59011 e!48490))

(declare-fun res!46646 () Bool)

(assert (=> d!59011 (=> (not res!46646) (not e!48490))))

(declare-fun lt!20368 () List!740)

(assert (=> d!59011 (= res!46646 (= (content!163 lt!20368) (union (insert (tuple2!413 t!48626 n!1739) (as emptyset (Set tuple2!412))) (content!163 (t!48767 (t!48767 l!1602))))))))

(assert (=> d!59011 (= lt!20368 e!48489)))

(declare-fun c!21879 () Bool)

(declare-fun e!48492 () Bool)

(assert (=> d!59011 (= c!21879 e!48492)))

(declare-fun res!46648 () Bool)

(assert (=> d!59011 (=> res!46648 e!48492)))

(declare-fun lt!20369 () Bool)

(assert (=> d!59011 (= res!46648 lt!20369)))

(assert (=> d!59011 (= lt!20369 (is-Nil!696 (t!48767 (t!48767 l!1602))))))

(assert (=> d!59011 (= (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) lambda!10906) lt!20368)))

(declare-fun b!89068 () Bool)

(declare-fun e!48486 () List!740)

(assert (=> b!89068 (= e!48489 e!48486)))

(declare-fun c!21880 () Bool)

(declare-fun e!48491 () Bool)

(assert (=> b!89068 (= c!21880 e!48491)))

(declare-fun res!46649 () Bool)

(assert (=> b!89068 (=> res!46649 e!48491)))

(assert (=> b!89068 (= res!46649 lt!20369)))

(declare-fun b!89069 () Bool)

(assert (=> b!89069 (= e!48492 e!48493)))

(declare-fun res!46647 () Bool)

(assert (=> b!89069 (=> (not res!46647) (not e!48493))))

(assert (=> b!89069 (= res!46647 (is-Cons!694 (t!48767 (t!48767 l!1602))))))

(declare-fun b!89070 () Bool)

(declare-fun e!48487 () Bool)

(declare-fun tp!17393 () Bool)

(assert (=> b!89070 (= e!48487 (and tp_is_empty!387 tp!17393))))

(declare-fun b!89071 () Bool)

(declare-fun e!48488 () Bool)

(assert (=> b!89071 (= e!48491 e!48488)))

(declare-fun res!46651 () Bool)

(assert (=> b!89071 (=> (not res!46651) (not e!48488))))

(assert (=> b!89071 (= res!46651 (and (not lt!20369) (is-Cons!694 (t!48767 (t!48767 l!1602)))))))

(declare-fun b!89072 () Bool)

(declare-fun res!46650 () List!740)

(assert (=> b!89072 (= e!48486 res!46650)))

(assert (=> b!89072 true))

(assert (=> b!89072 e!48487))

(declare-fun b!89073 () Bool)

(assert (=> b!89073 (= e!48488 (<= (dynLambda!1065 lambda!10906 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 lambda!10906 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b!89074 () Bool)

(assert (=> b!89074 (= e!48486 ($colon$colon!21 (t!48767 (t!48767 l!1602)) (tuple2!413 t!48626 n!1739)))))

(declare-fun b!89075 () Bool)

(assert (=> b!89075 (= e!48490 (= (length!15 lt!20368) (+ 1 (length!15 (t!48767 (t!48767 l!1602))))))))

(assert (= (and d!59011 (not res!46648)) b!89069))

(assert (= (and b!89069 res!46647) b!89067))

(assert (= (and b!89068 (not res!46649)) b!89071))

(assert (= (and b!89071 res!46651) b!89073))

(assert (= (and b!89072 (is-Cons!694 res!46650)) b!89070))

(assert (= (and b!89068 c!21880) b!89074))

(assert (= (and b!89068 (not c!21880)) b!89072))

(assert (= (and d!59011 c!21879) b!89068))

(assert (= (and d!59011 (not c!21879)) b!89066))

(assert (= (and d!59011 res!46646) b!89075))

(declare-fun b_lambda!17999 () Bool)

(assert (=> (not b_lambda!17999) (not b!89067)))

(declare-fun b_lambda!18001 () Bool)

(assert (=> (not b_lambda!18001) (not b!89067)))

(declare-fun b_lambda!18003 () Bool)

(assert (=> (not b_lambda!18003) (not b!89073)))

(declare-fun b_lambda!18005 () Bool)

(assert (=> (not b_lambda!18005) (not b!89073)))

(declare-fun m!85180 () Bool)

(assert (=> b!89074 m!85180))

(assert (=> b!89073 m!85110))

(declare-fun m!85182 () Bool)

(assert (=> b!89073 m!85182))

(declare-fun m!85184 () Bool)

(assert (=> b!89066 m!85184))

(assert (=> b!89066 m!85184))

(declare-fun m!85186 () Bool)

(assert (=> b!89066 m!85186))

(declare-fun m!85188 () Bool)

(assert (=> b!89075 m!85188))

(declare-fun m!85190 () Bool)

(assert (=> b!89075 m!85190))

(declare-fun m!85192 () Bool)

(assert (=> d!59011 m!85192))

(assert (=> d!59011 m!85080))

(declare-fun m!85194 () Bool)

(assert (=> d!59011 m!85194))

(assert (=> b!89067 m!85110))

(assert (=> b!89067 m!85182))

(assert (=> b!89012 d!59011))

(declare-fun d!59013 () Bool)

(declare-fun c!21881 () Bool)

(assert (=> d!59013 (= c!21881 (is-Nil!696 lt!20361))))

(declare-fun e!48494 () (Set tuple2!412))

(assert (=> d!59013 (= (content!163 lt!20361) e!48494)))

(declare-fun b!89076 () Bool)

(assert (=> b!89076 (= e!48494 (as emptyset (Set tuple2!412)))))

(declare-fun b!89077 () Bool)

(assert (=> b!89077 (= e!48494 (union (insert (h!1098 lt!20361) (as emptyset (Set tuple2!412))) (content!163 (t!48767 lt!20361))))))

(assert (= (and d!59013 c!21881) b!89076))

(assert (= (and d!59013 (not c!21881)) b!89077))

(declare-fun m!85196 () Bool)

(assert (=> b!89077 m!85196))

(declare-fun m!85198 () Bool)

(assert (=> b!89077 m!85198))

(assert (=> d!58969 d!59013))

(declare-fun d!59015 () Bool)

(declare-fun c!21882 () Bool)

(assert (=> d!59015 (= c!21882 (is-Nil!696 (t!48767 l!1602)))))

(declare-fun e!48495 () (Set tuple2!412))

(assert (=> d!59015 (= (content!163 (t!48767 l!1602)) e!48495)))

(declare-fun b!89078 () Bool)

(assert (=> b!89078 (= e!48495 (as emptyset (Set tuple2!412)))))

(declare-fun b!89079 () Bool)

(assert (=> b!89079 (= e!48495 (union (insert (h!1098 (t!48767 l!1602)) (as emptyset (Set tuple2!412))) (content!163 (t!48767 (t!48767 l!1602)))))))

(assert (= (and d!59015 c!21882) b!89078))

(assert (= (and d!59015 (not c!21882)) b!89079))

(declare-fun m!85200 () Bool)

(assert (=> b!89079 m!85200))

(assert (=> b!89079 m!85194))

(assert (=> d!58969 d!59015))

(declare-fun d!59017 () Bool)

(assert (=> d!59017 (= ($colon$colon!21 (t!48767 l!1602) (tuple2!413 t!48626 n!1739)) (Cons!694 (tuple2!413 t!48626 n!1739) (t!48767 l!1602)))))

(assert (=> b!89046 d!59017))

(declare-fun d!59019 () Bool)

(assert (=> d!59019 (= (length!15 lt!20361) (size!717 lt!20361))))

(declare-fun bs!41450 () Bool)

(assert (= bs!41450 d!59019))

(declare-fun m!85202 () Bool)

(assert (=> bs!41450 m!85202))

(assert (=> b!89031 d!59019))

(declare-fun d!59021 () Bool)

(assert (=> d!59021 (= (length!15 (t!48767 l!1602)) (size!717 (t!48767 l!1602)))))

(declare-fun bs!41451 () Bool)

(assert (= bs!41451 d!59021))

(declare-fun m!85204 () Bool)

(assert (=> bs!41451 m!85204))

(assert (=> b!89031 d!59021))

(declare-fun d!59023 () Bool)

(declare-fun lt!20372 () Int)

(assert (=> d!59023 (>= lt!20372 0)))

(declare-fun e!48498 () Int)

(assert (=> d!59023 (= lt!20372 e!48498)))

(declare-fun c!21885 () Bool)

(assert (=> d!59023 (= c!21885 (is-Nil!696 l!1602))))

(assert (=> d!59023 (= (size!717 l!1602) lt!20372)))

(declare-fun b!89084 () Bool)

(assert (=> b!89084 (= e!48498 0)))

(declare-fun b!89085 () Bool)

(assert (=> b!89085 (= e!48498 (+ 1 (size!717 (t!48767 l!1602))))))

(assert (= (and d!59023 c!21885) b!89084))

(assert (= (and d!59023 (not c!21885)) b!89085))

(assert (=> b!89085 m!85204))

(assert (=> d!58951 d!59023))

(declare-fun d!59025 () Bool)

(declare-fun c!21886 () Bool)

(assert (=> d!59025 (= c!21886 (is-Nil!696 lt!20359))))

(declare-fun e!48499 () (Set tuple2!412))

(assert (=> d!59025 (= (content!163 lt!20359) e!48499)))

(declare-fun b!89086 () Bool)

(assert (=> b!89086 (= e!48499 (as emptyset (Set tuple2!412)))))

(declare-fun b!89087 () Bool)

(assert (=> b!89087 (= e!48499 (union (insert (h!1098 lt!20359) (as emptyset (Set tuple2!412))) (content!163 (t!48767 lt!20359))))))

(assert (= (and d!59025 c!21886) b!89086))

(assert (= (and d!59025 (not c!21886)) b!89087))

(declare-fun m!85206 () Bool)

(assert (=> b!89087 m!85206))

(declare-fun m!85208 () Bool)

(assert (=> b!89087 m!85208))

(assert (=> d!58965 d!59025))

(assert (=> d!58965 d!59015))

(assert (=> b!89020 d!59017))

(declare-fun d!59027 () Bool)

(assert (=> d!59027 (= ($colon$colon!21 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) keyAnn!11) (h!1098 (t!48767 l!1602))) (Cons!694 (h!1098 (t!48767 l!1602)) (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) keyAnn!11)))))

(assert (=> b!89022 d!59027))

(declare-fun e!48503 () List!740)

(declare-fun b!89088 () Bool)

(assert (=> b!89088 (= e!48503 ($colon$colon!21 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 (t!48767 l!1602))) keyAnn!11) (h!1098 (t!48767 (t!48767 l!1602)))))))

(declare-fun b!89089 () Bool)

(declare-fun e!48507 () Bool)

(assert (=> b!89089 (= e!48507 (<= (dynLambda!1065 keyAnn!11 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 keyAnn!11 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun d!59029 () Bool)

(declare-fun e!48504 () Bool)

(assert (=> d!59029 e!48504))

(declare-fun res!46652 () Bool)

(assert (=> d!59029 (=> (not res!46652) (not e!48504))))

(declare-fun lt!20373 () List!740)

(assert (=> d!59029 (= res!46652 (= (content!163 lt!20373) (union (insert (tuple2!413 t!48626 n!1739) (as emptyset (Set tuple2!412))) (content!163 (t!48767 (t!48767 l!1602))))))))

(assert (=> d!59029 (= lt!20373 e!48503)))

(declare-fun c!21887 () Bool)

(declare-fun e!48506 () Bool)

(assert (=> d!59029 (= c!21887 e!48506)))

(declare-fun res!46654 () Bool)

(assert (=> d!59029 (=> res!46654 e!48506)))

(declare-fun lt!20374 () Bool)

(assert (=> d!59029 (= res!46654 lt!20374)))

(assert (=> d!59029 (= lt!20374 (is-Nil!696 (t!48767 (t!48767 l!1602))))))

(assert (=> d!59029 (= (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) keyAnn!11) lt!20373)))

(declare-fun b!89090 () Bool)

(declare-fun e!48500 () List!740)

(assert (=> b!89090 (= e!48503 e!48500)))

(declare-fun c!21888 () Bool)

(declare-fun e!48505 () Bool)

(assert (=> b!89090 (= c!21888 e!48505)))

(declare-fun res!46655 () Bool)

(assert (=> b!89090 (=> res!46655 e!48505)))

(assert (=> b!89090 (= res!46655 lt!20374)))

(declare-fun b!89091 () Bool)

(assert (=> b!89091 (= e!48506 e!48507)))

(declare-fun res!46653 () Bool)

(assert (=> b!89091 (=> (not res!46653) (not e!48507))))

(assert (=> b!89091 (= res!46653 (is-Cons!694 (t!48767 (t!48767 l!1602))))))

(declare-fun b!89092 () Bool)

(declare-fun e!48501 () Bool)

(declare-fun tp!17394 () Bool)

(assert (=> b!89092 (= e!48501 (and tp_is_empty!387 tp!17394))))

(declare-fun b!89093 () Bool)

(declare-fun e!48502 () Bool)

(assert (=> b!89093 (= e!48505 e!48502)))

(declare-fun res!46657 () Bool)

(assert (=> b!89093 (=> (not res!46657) (not e!48502))))

(assert (=> b!89093 (= res!46657 (and (not lt!20374) (is-Cons!694 (t!48767 (t!48767 l!1602)))))))

(declare-fun b!89094 () Bool)

(declare-fun res!46656 () List!740)

(assert (=> b!89094 (= e!48500 res!46656)))

(assert (=> b!89094 true))

(assert (=> b!89094 e!48501))

(declare-fun b!89095 () Bool)

(assert (=> b!89095 (= e!48502 (<= (dynLambda!1065 keyAnn!11 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 keyAnn!11 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b!89096 () Bool)

(assert (=> b!89096 (= e!48500 ($colon$colon!21 (t!48767 (t!48767 l!1602)) (tuple2!413 t!48626 n!1739)))))

(declare-fun b!89097 () Bool)

(assert (=> b!89097 (= e!48504 (= (length!15 lt!20373) (+ 1 (length!15 (t!48767 (t!48767 l!1602))))))))

(assert (= (and d!59029 (not res!46654)) b!89091))

(assert (= (and b!89091 res!46653) b!89089))

(assert (= (and b!89090 (not res!46655)) b!89093))

(assert (= (and b!89093 res!46657) b!89095))

(assert (= (and b!89094 (is-Cons!694 res!46656)) b!89092))

(assert (= (and b!89090 c!21888) b!89096))

(assert (= (and b!89090 (not c!21888)) b!89094))

(assert (= (and d!59029 c!21887) b!89090))

(assert (= (and d!59029 (not c!21887)) b!89088))

(assert (= (and d!59029 res!46652) b!89097))

(declare-fun b_lambda!18007 () Bool)

(assert (=> (not b_lambda!18007) (not b!89089)))

(assert (=> b!89089 t!48773))

(declare-fun b_and!60387 () Bool)

(assert (= b_and!60353 (and (=> t!48773 result!47111) b_and!60387)))

(declare-fun b_lambda!18009 () Bool)

(assert (=> (not b_lambda!18009) (not b!89089)))

(declare-fun t!48792 () Bool)

(declare-fun tb!46679 () Bool)

(assert (=> (and start!11614 (= keyAnn!11 keyAnn!11) t!48792) tb!46679))

(declare-fun result!47131 () Bool)

(assert (=> tb!46679 (= result!47131 true)))

(assert (=> b!89089 t!48792))

(declare-fun b_and!60389 () Bool)

(assert (= b_and!60387 (and (=> t!48792 result!47131) b_and!60389)))

(declare-fun b_lambda!18011 () Bool)

(assert (=> (not b_lambda!18011) (not b!89095)))

(assert (=> b!89095 t!48773))

(declare-fun b_and!60391 () Bool)

(assert (= b_and!60389 (and (=> t!48773 result!47111) b_and!60391)))

(declare-fun b_lambda!18013 () Bool)

(assert (=> (not b_lambda!18013) (not b!89095)))

(assert (=> b!89095 t!48792))

(declare-fun b_and!60393 () Bool)

(assert (= b_and!60391 (and (=> t!48792 result!47131) b_and!60393)))

(assert (=> b!89096 m!85180))

(assert (=> b!89095 m!85066))

(declare-fun m!85210 () Bool)

(assert (=> b!89095 m!85210))

(declare-fun m!85212 () Bool)

(assert (=> b!89088 m!85212))

(assert (=> b!89088 m!85212))

(declare-fun m!85214 () Bool)

(assert (=> b!89088 m!85214))

(declare-fun m!85216 () Bool)

(assert (=> b!89097 m!85216))

(assert (=> b!89097 m!85190))

(declare-fun m!85218 () Bool)

(assert (=> d!59029 m!85218))

(assert (=> d!59029 m!85080))

(assert (=> d!59029 m!85194))

(assert (=> b!89089 m!85066))

(assert (=> b!89089 m!85210))

(assert (=> b!89022 d!59029))

(declare-fun d!59031 () Bool)

(declare-fun res!46658 () Bool)

(declare-fun e!48508 () Bool)

(assert (=> d!59031 (=> res!46658 e!48508)))

(assert (=> d!59031 (= res!46658 (is-Nil!696 lt!20365))))

(assert (=> d!59031 (= (l2AtLeast!7 lt!20365 n!1739) e!48508)))

(declare-fun b!89098 () Bool)

(declare-fun e!48509 () Bool)

(assert (=> b!89098 (= e!48508 e!48509)))

(declare-fun res!46659 () Bool)

(assert (=> b!89098 (=> (not res!46659) (not e!48509))))

(assert (=> b!89098 (= res!46659 (<= n!1739 (_2!241 (h!1098 lt!20365))))))

(declare-fun b!89099 () Bool)

(assert (=> b!89099 (= e!48509 (l2AtLeast!7 (t!48767 lt!20365) n!1739))))

(assert (= (and d!59031 (not res!46658)) b!89098))

(assert (= (and b!89098 res!46659) b!89099))

(declare-fun m!85220 () Bool)

(assert (=> b!89099 m!85220))

(assert (=> b!89048 d!59031))

(declare-fun d!59033 () Bool)

(assert (=> d!59033 (= (length!15 lt!20363) (size!717 lt!20363))))

(declare-fun bs!41452 () Bool)

(assert (= bs!41452 d!59033))

(declare-fun m!85222 () Bool)

(assert (=> bs!41452 m!85222))

(assert (=> b!89047 d!59033))

(assert (=> b!89047 d!59021))

(declare-fun d!59035 () Bool)

(declare-fun res!46663 () Bool)

(declare-fun e!48513 () Bool)

(assert (=> d!59035 (=> res!46663 e!48513)))

(assert (=> d!59035 (= res!46663 (is-Nil!696 (t!48767 (t!48767 res!45959))))))

(assert (=> d!59035 (= (isStableSortedAndAtLeast!6 (t!48767 (t!48767 res!45959)) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 res!45959)))) (_2!241 (h!1098 (t!48767 res!45959)))) e!48513)))

(declare-fun b!89100 () Bool)

(declare-fun e!48512 () Bool)

(assert (=> b!89100 (= e!48513 e!48512)))

(declare-fun res!46661 () Bool)

(assert (=> b!89100 (=> (not res!46661) (not e!48512))))

(declare-fun e!48511 () Bool)

(assert (=> b!89100 (= res!46661 e!48511)))

(declare-fun res!46662 () Bool)

(assert (=> b!89100 (=> res!46662 e!48511)))

(assert (=> b!89100 (= res!46662 (< (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 res!45959)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 res!45959)))))))))

(declare-fun b!89103 () Bool)

(assert (=> b!89103 (= e!48512 (isStableSortedAndAtLeast!6 (t!48767 (t!48767 (t!48767 res!45959))) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 res!45959))))) (_2!241 (h!1098 (t!48767 (t!48767 res!45959))))))))

(declare-fun b!89102 () Bool)

(declare-fun e!48510 () Bool)

(assert (=> b!89102 (= e!48510 (<= (_2!241 (h!1098 (t!48767 res!45959))) (_2!241 (h!1098 (t!48767 (t!48767 res!45959))))))))

(declare-fun b!89101 () Bool)

(assert (=> b!89101 (= e!48511 e!48510)))

(declare-fun res!46660 () Bool)

(assert (=> b!89101 (=> (not res!46660) (not e!48510))))

(assert (=> b!89101 (= res!46660 (= (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 res!45959)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 res!45959)))))))))

(assert (= (and d!59035 (not res!46663)) b!89100))

(assert (= (and b!89100 (not res!46662)) b!89101))

(assert (= (and b!89101 res!46660) b!89102))

(assert (= (and b!89100 res!46661) b!89103))

(declare-fun b_lambda!18015 () Bool)

(assert (=> (not b_lambda!18015) (not b!89100)))

(declare-fun t!48794 () Bool)

(declare-fun tb!46681 () Bool)

(assert (=> (and start!11614 (= key!533 key!533) t!48794) tb!46681))

(declare-fun result!47133 () Bool)

(assert (=> tb!46681 (= result!47133 true)))

(assert (=> b!89100 t!48794))

(declare-fun b_and!60395 () Bool)

(assert (= b_and!60385 (and (=> t!48794 result!47133) b_and!60395)))

(declare-fun b_lambda!18017 () Bool)

(assert (=> (not b_lambda!18017) (not b!89103)))

(assert (=> b!89103 t!48794))

(declare-fun b_and!60397 () Bool)

(assert (= b_and!60395 (and (=> t!48794 result!47133) b_and!60397)))

(declare-fun b_lambda!18019 () Bool)

(assert (=> (not b_lambda!18019) (not b!89101)))

(assert (=> b!89101 t!48794))

(declare-fun b_and!60399 () Bool)

(assert (= b_and!60397 (and (=> t!48794 result!47133) b_and!60399)))

(declare-fun m!85224 () Bool)

(assert (=> b!89100 m!85224))

(assert (=> b!89103 m!85224))

(assert (=> b!89103 m!85224))

(declare-fun m!85226 () Bool)

(assert (=> b!89103 m!85226))

(assert (=> b!89101 m!85224))

(assert (=> b!89006 d!59035))

(declare-fun d!59037 () Bool)

(declare-fun res!46667 () Bool)

(declare-fun e!48517 () Bool)

(assert (=> d!59037 (=> res!46667 e!48517)))

(assert (=> d!59037 (= res!46667 (is-Nil!696 (t!48767 lt!20351)))))

(assert (=> d!59037 (= (isStableSortedAndAtLeast!6 (t!48767 lt!20351) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 lt!20351))) (_2!241 (h!1098 lt!20351))) e!48517)))

(declare-fun b!89104 () Bool)

(declare-fun e!48516 () Bool)

(assert (=> b!89104 (= e!48517 e!48516)))

(declare-fun res!46665 () Bool)

(assert (=> b!89104 (=> (not res!46665) (not e!48516))))

(declare-fun e!48515 () Bool)

(assert (=> b!89104 (= res!46665 e!48515)))

(declare-fun res!46666 () Bool)

(assert (=> b!89104 (=> res!46666 e!48515)))

(assert (=> b!89104 (= res!46666 (< (dynLambda!1064 key!533 (_1!241 (h!1098 lt!20351))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 lt!20351))))))))

(declare-fun b!89107 () Bool)

(assert (=> b!89107 (= e!48516 (isStableSortedAndAtLeast!6 (t!48767 (t!48767 lt!20351)) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 lt!20351)))) (_2!241 (h!1098 (t!48767 lt!20351)))))))

(declare-fun b!89106 () Bool)

(declare-fun e!48514 () Bool)

(assert (=> b!89106 (= e!48514 (<= (_2!241 (h!1098 lt!20351)) (_2!241 (h!1098 (t!48767 lt!20351)))))))

(declare-fun b!89105 () Bool)

(assert (=> b!89105 (= e!48515 e!48514)))

(declare-fun res!46664 () Bool)

(assert (=> b!89105 (=> (not res!46664) (not e!48514))))

(assert (=> b!89105 (= res!46664 (= (dynLambda!1064 key!533 (_1!241 (h!1098 lt!20351))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 lt!20351))))))))

(assert (= (and d!59037 (not res!46667)) b!89104))

(assert (= (and b!89104 (not res!46666)) b!89105))

(assert (= (and b!89105 res!46664) b!89106))

(assert (= (and b!89104 res!46665) b!89107))

(declare-fun b_lambda!18021 () Bool)

(assert (=> (not b_lambda!18021) (not b!89104)))

(declare-fun t!48796 () Bool)

(declare-fun tb!46683 () Bool)

(assert (=> (and start!11614 (= key!533 key!533) t!48796) tb!46683))

(declare-fun result!47135 () Bool)

(assert (=> tb!46683 (= result!47135 true)))

(assert (=> b!89104 t!48796))

(declare-fun b_and!60401 () Bool)

(assert (= b_and!60399 (and (=> t!48796 result!47135) b_and!60401)))

(declare-fun b_lambda!18023 () Bool)

(assert (=> (not b_lambda!18023) (not b!89107)))

(assert (=> b!89107 t!48796))

(declare-fun b_and!60403 () Bool)

(assert (= b_and!60401 (and (=> t!48796 result!47135) b_and!60403)))

(declare-fun b_lambda!18025 () Bool)

(assert (=> (not b_lambda!18025) (not b!89105)))

(assert (=> b!89105 t!48796))

(declare-fun b_and!60405 () Bool)

(assert (= b_and!60403 (and (=> t!48796 result!47135) b_and!60405)))

(declare-fun m!85228 () Bool)

(assert (=> b!89104 m!85228))

(assert (=> b!89107 m!85228))

(assert (=> b!89107 m!85228))

(declare-fun m!85230 () Bool)

(assert (=> b!89107 m!85230))

(assert (=> b!89105 m!85228))

(assert (=> b!89011 d!59037))

(declare-fun d!59039 () Bool)

(assert (=> d!59039 (= (length!15 lt!20359) (size!717 lt!20359))))

(declare-fun bs!41453 () Bool)

(assert (= bs!41453 d!59039))

(declare-fun m!85232 () Bool)

(assert (=> bs!41453 m!85232))

(assert (=> b!89021 d!59039))

(assert (=> b!89021 d!59021))

(declare-fun d!59041 () Bool)

(declare-fun res!46668 () Bool)

(declare-fun e!48518 () Bool)

(assert (=> d!59041 (=> res!46668 e!48518)))

(assert (=> d!59041 (= res!46668 (is-Nil!696 (t!48767 (t!48767 l!1602))))))

(assert (=> d!59041 (= (isStableSorted!6 (t!48767 (t!48767 l!1602)) key!533) e!48518)))

(declare-fun b!89108 () Bool)

(assert (=> b!89108 (= e!48518 (isStableSortedAndAtLeast!6 (t!48767 (t!48767 (t!48767 l!1602))) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602))))) (_2!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(assert (= (and d!59041 (not res!46668)) b!89108))

(declare-fun b_lambda!18027 () Bool)

(assert (=> (not b_lambda!18027) (not b!89108)))

(declare-fun t!48798 () Bool)

(declare-fun tb!46685 () Bool)

(assert (=> (and start!11614 (= key!533 key!533) t!48798) tb!46685))

(declare-fun result!47137 () Bool)

(assert (=> tb!46685 (= result!47137 true)))

(assert (=> b!89108 t!48798))

(declare-fun b_and!60407 () Bool)

(assert (= b_and!60405 (and (=> t!48798 result!47137) b_and!60407)))

(declare-fun m!85234 () Bool)

(assert (=> b!89108 m!85234))

(assert (=> b!89108 m!85234))

(declare-fun m!85236 () Bool)

(assert (=> b!89108 m!85236))

(assert (=> d!58979 d!59041))

(declare-fun d!59043 () Bool)

(declare-fun res!46669 () Bool)

(declare-fun e!48519 () Bool)

(assert (=> d!59043 (=> res!46669 e!48519)))

(assert (=> d!59043 (= res!46669 (is-Nil!696 lt!20366))))

(assert (=> d!59043 (= (l2AtLeast!7 lt!20366 n!1739) e!48519)))

(declare-fun b!89109 () Bool)

(declare-fun e!48520 () Bool)

(assert (=> b!89109 (= e!48519 e!48520)))

(declare-fun res!46670 () Bool)

(assert (=> b!89109 (=> (not res!46670) (not e!48520))))

(assert (=> b!89109 (= res!46670 (<= n!1739 (_2!241 (h!1098 lt!20366))))))

(declare-fun b!89110 () Bool)

(assert (=> b!89110 (= e!48520 (l2AtLeast!7 (t!48767 lt!20366) n!1739))))

(assert (= (and d!59043 (not res!46669)) b!89109))

(assert (= (and b!89109 res!46670) b!89110))

(declare-fun m!85238 () Bool)

(assert (=> b!89110 m!85238))

(assert (=> b!89052 d!59043))

(declare-fun d!59045 () Bool)

(declare-fun res!46671 () Bool)

(declare-fun e!48521 () Bool)

(assert (=> d!59045 (=> res!46671 e!48521)))

(assert (=> d!59045 (= res!46671 (is-Nil!696 lt!20366))))

(assert (=> d!59045 (= (isStableSorted!6 lt!20366 key!533) e!48521)))

(declare-fun b!89111 () Bool)

(assert (=> b!89111 (= e!48521 (isStableSortedAndAtLeast!6 (t!48767 lt!20366) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 lt!20366))) (_2!241 (h!1098 lt!20366))))))

(assert (= (and d!59045 (not res!46671)) b!89111))

(declare-fun b_lambda!18029 () Bool)

(assert (=> (not b_lambda!18029) (not b!89111)))

(declare-fun t!48800 () Bool)

(declare-fun tb!46687 () Bool)

(assert (=> (and start!11614 (= key!533 key!533) t!48800) tb!46687))

(declare-fun result!47139 () Bool)

(assert (=> tb!46687 (= result!47139 true)))

(assert (=> b!89111 t!48800))

(declare-fun b_and!60409 () Bool)

(assert (= b_and!60407 (and (=> t!48800 result!47139) b_and!60409)))

(declare-fun m!85240 () Bool)

(assert (=> b!89111 m!85240))

(assert (=> b!89111 m!85240))

(declare-fun m!85242 () Bool)

(assert (=> b!89111 m!85242))

(assert (=> b!89051 d!59045))

(declare-fun e!48525 () List!740)

(declare-fun b!89112 () Bool)

(assert (=> b!89112 (= e!48525 ($colon$colon!21 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 (t!48767 l!1602))) lambda!10908) (h!1098 (t!48767 (t!48767 l!1602)))))))

(declare-fun e!48529 () Bool)

(declare-fun b!89113 () Bool)

(assert (=> b!89113 (= e!48529 (<= (dynLambda!1065 lambda!10908 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 lambda!10908 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun d!59047 () Bool)

(declare-fun e!48526 () Bool)

(assert (=> d!59047 e!48526))

(declare-fun res!46672 () Bool)

(assert (=> d!59047 (=> (not res!46672) (not e!48526))))

(declare-fun lt!20375 () List!740)

(assert (=> d!59047 (= res!46672 (= (content!163 lt!20375) (union (insert (tuple2!413 t!48626 n!1739) (as emptyset (Set tuple2!412))) (content!163 (t!48767 (t!48767 l!1602))))))))

(assert (=> d!59047 (= lt!20375 e!48525)))

(declare-fun c!21889 () Bool)

(declare-fun e!48528 () Bool)

(assert (=> d!59047 (= c!21889 e!48528)))

(declare-fun res!46674 () Bool)

(assert (=> d!59047 (=> res!46674 e!48528)))

(declare-fun lt!20376 () Bool)

(assert (=> d!59047 (= res!46674 lt!20376)))

(assert (=> d!59047 (= lt!20376 (is-Nil!696 (t!48767 (t!48767 l!1602))))))

(assert (=> d!59047 (= (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) lambda!10908) lt!20375)))

(declare-fun b!89114 () Bool)

(declare-fun e!48522 () List!740)

(assert (=> b!89114 (= e!48525 e!48522)))

(declare-fun c!21890 () Bool)

(declare-fun e!48527 () Bool)

(assert (=> b!89114 (= c!21890 e!48527)))

(declare-fun res!46675 () Bool)

(assert (=> b!89114 (=> res!46675 e!48527)))

(assert (=> b!89114 (= res!46675 lt!20376)))

(declare-fun b!89115 () Bool)

(assert (=> b!89115 (= e!48528 e!48529)))

(declare-fun res!46673 () Bool)

(assert (=> b!89115 (=> (not res!46673) (not e!48529))))

(assert (=> b!89115 (= res!46673 (is-Cons!694 (t!48767 (t!48767 l!1602))))))

(declare-fun b!89116 () Bool)

(declare-fun e!48523 () Bool)

(declare-fun tp!17395 () Bool)

(assert (=> b!89116 (= e!48523 (and tp_is_empty!387 tp!17395))))

(declare-fun b!89117 () Bool)

(declare-fun e!48524 () Bool)

(assert (=> b!89117 (= e!48527 e!48524)))

(declare-fun res!46677 () Bool)

(assert (=> b!89117 (=> (not res!46677) (not e!48524))))

(assert (=> b!89117 (= res!46677 (and (not lt!20376) (is-Cons!694 (t!48767 (t!48767 l!1602)))))))

(declare-fun b!89118 () Bool)

(declare-fun res!46676 () List!740)

(assert (=> b!89118 (= e!48522 res!46676)))

(assert (=> b!89118 true))

(assert (=> b!89118 e!48523))

(declare-fun b!89119 () Bool)

(assert (=> b!89119 (= e!48524 (<= (dynLambda!1065 lambda!10908 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 lambda!10908 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b!89120 () Bool)

(assert (=> b!89120 (= e!48522 ($colon$colon!21 (t!48767 (t!48767 l!1602)) (tuple2!413 t!48626 n!1739)))))

(declare-fun b!89121 () Bool)

(assert (=> b!89121 (= e!48526 (= (length!15 lt!20375) (+ 1 (length!15 (t!48767 (t!48767 l!1602))))))))

(assert (= (and d!59047 (not res!46674)) b!89115))

(assert (= (and b!89115 res!46673) b!89113))

(assert (= (and b!89114 (not res!46675)) b!89117))

(assert (= (and b!89117 res!46677) b!89119))

(assert (= (and b!89118 (is-Cons!694 res!46676)) b!89116))

(assert (= (and b!89114 c!21890) b!89120))

(assert (= (and b!89114 (not c!21890)) b!89118))

(assert (= (and d!59047 c!21889) b!89114))

(assert (= (and d!59047 (not c!21889)) b!89112))

(assert (= (and d!59047 res!46672) b!89121))

(declare-fun b_lambda!18031 () Bool)

(assert (=> (not b_lambda!18031) (not b!89113)))

(declare-fun b_lambda!18033 () Bool)

(assert (=> (not b_lambda!18033) (not b!89113)))

(declare-fun b_lambda!18035 () Bool)

(assert (=> (not b_lambda!18035) (not b!89119)))

(declare-fun b_lambda!18037 () Bool)

(assert (=> (not b_lambda!18037) (not b!89119)))

(assert (=> b!89120 m!85180))

(declare-fun m!85244 () Bool)

(assert (=> b!89119 m!85244))

(declare-fun m!85246 () Bool)

(assert (=> b!89119 m!85246))

(declare-fun m!85248 () Bool)

(assert (=> b!89112 m!85248))

(assert (=> b!89112 m!85248))

(declare-fun m!85250 () Bool)

(assert (=> b!89112 m!85250))

(declare-fun m!85252 () Bool)

(assert (=> b!89121 m!85252))

(assert (=> b!89121 m!85190))

(declare-fun m!85254 () Bool)

(assert (=> d!59047 m!85254))

(assert (=> d!59047 m!85080))

(assert (=> d!59047 m!85194))

(assert (=> b!89113 m!85244))

(assert (=> b!89113 m!85246))

(assert (=> b!89051 d!59047))

(declare-fun d!59049 () Bool)

(declare-fun res!46678 () Bool)

(declare-fun e!48530 () Bool)

(assert (=> d!59049 (=> res!46678 e!48530)))

(assert (=> d!59049 (= res!46678 (is-Nil!696 (t!48767 (t!48767 res!45959))))))

(assert (=> d!59049 (= (l2AtLeast!7 (t!48767 (t!48767 res!45959)) n!1739) e!48530)))

(declare-fun b!89122 () Bool)

(declare-fun e!48531 () Bool)

(assert (=> b!89122 (= e!48530 e!48531)))

(declare-fun res!46679 () Bool)

(assert (=> b!89122 (=> (not res!46679) (not e!48531))))

(assert (=> b!89122 (= res!46679 (<= n!1739 (_2!241 (h!1098 (t!48767 (t!48767 res!45959))))))))

(declare-fun b!89123 () Bool)

(assert (=> b!89123 (= e!48531 (l2AtLeast!7 (t!48767 (t!48767 (t!48767 res!45959))) n!1739))))

(assert (= (and d!59049 (not res!46678)) b!89122))

(assert (= (and b!89122 res!46679) b!89123))

(declare-fun m!85256 () Bool)

(assert (=> b!89123 m!85256))

(assert (=> b!89054 d!59049))

(declare-fun d!59051 () Bool)

(declare-fun res!46680 () Bool)

(declare-fun e!48532 () Bool)

(assert (=> d!59051 (=> res!46680 e!48532)))

(assert (=> d!59051 (= res!46680 (is-Nil!696 (t!48767 lt!20351)))))

(assert (=> d!59051 (= (l2AtLeast!7 (t!48767 lt!20351) n!1739) e!48532)))

(declare-fun b!89124 () Bool)

(declare-fun e!48533 () Bool)

(assert (=> b!89124 (= e!48532 e!48533)))

(declare-fun res!46681 () Bool)

(assert (=> b!89124 (=> (not res!46681) (not e!48533))))

(assert (=> b!89124 (= res!46681 (<= n!1739 (_2!241 (h!1098 (t!48767 lt!20351)))))))

(declare-fun b!89125 () Bool)

(assert (=> b!89125 (= e!48533 (l2AtLeast!7 (t!48767 (t!48767 lt!20351)) n!1739))))

(assert (= (and d!59051 (not res!46680)) b!89124))

(assert (= (and b!89124 res!46681) b!89125))

(declare-fun m!85258 () Bool)

(assert (=> b!89125 m!85258))

(assert (=> b!89010 d!59051))

(declare-fun d!59053 () Bool)

(declare-fun lt!20377 () Int)

(assert (=> d!59053 (>= lt!20377 0)))

(declare-fun e!48534 () Int)

(assert (=> d!59053 (= lt!20377 e!48534)))

(declare-fun c!21891 () Bool)

(assert (=> d!59053 (= c!21891 (is-Nil!696 lt!20357))))

(assert (=> d!59053 (= (size!717 lt!20357) lt!20377)))

(declare-fun b!89126 () Bool)

(assert (=> b!89126 (= e!48534 0)))

(declare-fun b!89127 () Bool)

(assert (=> b!89127 (= e!48534 (+ 1 (size!717 (t!48767 lt!20357))))))

(assert (= (and d!59053 c!21891) b!89126))

(assert (= (and d!59053 (not c!21891)) b!89127))

(declare-fun m!85260 () Bool)

(assert (=> b!89127 m!85260))

(assert (=> d!58949 d!59053))

(declare-fun d!59055 () Bool)

(assert (=> d!59055 (= ($colon$colon!21 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) lambda!10905) (h!1098 (t!48767 l!1602))) (Cons!694 (h!1098 (t!48767 l!1602)) (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) lambda!10905)))))

(assert (=> b!89038 d!59055))

(declare-fun e!48538 () List!740)

(declare-fun b!89128 () Bool)

(assert (=> b!89128 (= e!48538 ($colon$colon!21 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 (t!48767 l!1602))) lambda!10905) (h!1098 (t!48767 (t!48767 l!1602)))))))

(declare-fun e!48542 () Bool)

(declare-fun b!89129 () Bool)

(assert (=> b!89129 (= e!48542 (<= (dynLambda!1065 lambda!10905 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 lambda!10905 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun d!59057 () Bool)

(declare-fun e!48539 () Bool)

(assert (=> d!59057 e!48539))

(declare-fun res!46682 () Bool)

(assert (=> d!59057 (=> (not res!46682) (not e!48539))))

(declare-fun lt!20378 () List!740)

(assert (=> d!59057 (= res!46682 (= (content!163 lt!20378) (union (insert (tuple2!413 t!48626 n!1739) (as emptyset (Set tuple2!412))) (content!163 (t!48767 (t!48767 l!1602))))))))

(assert (=> d!59057 (= lt!20378 e!48538)))

(declare-fun c!21892 () Bool)

(declare-fun e!48541 () Bool)

(assert (=> d!59057 (= c!21892 e!48541)))

(declare-fun res!46684 () Bool)

(assert (=> d!59057 (=> res!46684 e!48541)))

(declare-fun lt!20379 () Bool)

(assert (=> d!59057 (= res!46684 lt!20379)))

(assert (=> d!59057 (= lt!20379 (is-Nil!696 (t!48767 (t!48767 l!1602))))))

(assert (=> d!59057 (= (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) lambda!10905) lt!20378)))

(declare-fun b!89130 () Bool)

(declare-fun e!48535 () List!740)

(assert (=> b!89130 (= e!48538 e!48535)))

(declare-fun c!21893 () Bool)

(declare-fun e!48540 () Bool)

(assert (=> b!89130 (= c!21893 e!48540)))

(declare-fun res!46685 () Bool)

(assert (=> b!89130 (=> res!46685 e!48540)))

(assert (=> b!89130 (= res!46685 lt!20379)))

(declare-fun b!89131 () Bool)

(assert (=> b!89131 (= e!48541 e!48542)))

(declare-fun res!46683 () Bool)

(assert (=> b!89131 (=> (not res!46683) (not e!48542))))

(assert (=> b!89131 (= res!46683 (is-Cons!694 (t!48767 (t!48767 l!1602))))))

(declare-fun b!89132 () Bool)

(declare-fun e!48536 () Bool)

(declare-fun tp!17396 () Bool)

(assert (=> b!89132 (= e!48536 (and tp_is_empty!387 tp!17396))))

(declare-fun b!89133 () Bool)

(declare-fun e!48537 () Bool)

(assert (=> b!89133 (= e!48540 e!48537)))

(declare-fun res!46687 () Bool)

(assert (=> b!89133 (=> (not res!46687) (not e!48537))))

(assert (=> b!89133 (= res!46687 (and (not lt!20379) (is-Cons!694 (t!48767 (t!48767 l!1602)))))))

(declare-fun b!89134 () Bool)

(declare-fun res!46686 () List!740)

(assert (=> b!89134 (= e!48535 res!46686)))

(assert (=> b!89134 true))

(assert (=> b!89134 e!48536))

(declare-fun b!89135 () Bool)

(assert (=> b!89135 (= e!48537 (<= (dynLambda!1065 lambda!10905 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 lambda!10905 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b!89136 () Bool)

(assert (=> b!89136 (= e!48535 ($colon$colon!21 (t!48767 (t!48767 l!1602)) (tuple2!413 t!48626 n!1739)))))

(declare-fun b!89137 () Bool)

(assert (=> b!89137 (= e!48539 (= (length!15 lt!20378) (+ 1 (length!15 (t!48767 (t!48767 l!1602))))))))

(assert (= (and d!59057 (not res!46684)) b!89131))

(assert (= (and b!89131 res!46683) b!89129))

(assert (= (and b!89130 (not res!46685)) b!89133))

(assert (= (and b!89133 res!46687) b!89135))

(assert (= (and b!89134 (is-Cons!694 res!46686)) b!89132))

(assert (= (and b!89130 c!21893) b!89136))

(assert (= (and b!89130 (not c!21893)) b!89134))

(assert (= (and d!59057 c!21892) b!89130))

(assert (= (and d!59057 (not c!21892)) b!89128))

(assert (= (and d!59057 res!46682) b!89137))

(declare-fun b_lambda!18039 () Bool)

(assert (=> (not b_lambda!18039) (not b!89129)))

(declare-fun b_lambda!18041 () Bool)

(assert (=> (not b_lambda!18041) (not b!89129)))

(declare-fun b_lambda!18043 () Bool)

(assert (=> (not b_lambda!18043) (not b!89135)))

(declare-fun b_lambda!18045 () Bool)

(assert (=> (not b_lambda!18045) (not b!89135)))

(assert (=> b!89136 m!85180))

(assert (=> b!89135 m!85144))

(declare-fun m!85262 () Bool)

(assert (=> b!89135 m!85262))

(declare-fun m!85264 () Bool)

(assert (=> b!89128 m!85264))

(assert (=> b!89128 m!85264))

(declare-fun m!85266 () Bool)

(assert (=> b!89128 m!85266))

(declare-fun m!85268 () Bool)

(assert (=> b!89137 m!85268))

(assert (=> b!89137 m!85190))

(declare-fun m!85270 () Bool)

(assert (=> d!59057 m!85270))

(assert (=> d!59057 m!85080))

(assert (=> d!59057 m!85194))

(assert (=> b!89129 m!85144))

(assert (=> b!89129 m!85262))

(assert (=> b!89038 d!59057))

(declare-fun d!59059 () Bool)

(declare-fun c!21894 () Bool)

(assert (=> d!59059 (= c!21894 (is-Nil!696 lt!20363))))

(declare-fun e!48543 () (Set tuple2!412))

(assert (=> d!59059 (= (content!163 lt!20363) e!48543)))

(declare-fun b!89138 () Bool)

(assert (=> b!89138 (= e!48543 (as emptyset (Set tuple2!412)))))

(declare-fun b!89139 () Bool)

(assert (=> b!89139 (= e!48543 (union (insert (h!1098 lt!20363) (as emptyset (Set tuple2!412))) (content!163 (t!48767 lt!20363))))))

(assert (= (and d!59059 c!21894) b!89138))

(assert (= (and d!59059 (not c!21894)) b!89139))

(declare-fun m!85272 () Bool)

(assert (=> b!89139 m!85272))

(declare-fun m!85274 () Bool)

(assert (=> b!89139 m!85274))

(assert (=> d!58977 d!59059))

(assert (=> d!58977 d!59015))

(declare-fun d!59061 () Bool)

(declare-fun c!21895 () Bool)

(assert (=> d!59061 (= c!21895 (is-Nil!696 (t!48767 lt!20357)))))

(declare-fun e!48544 () (Set tuple2!412))

(assert (=> d!59061 (= (content!163 (t!48767 lt!20357)) e!48544)))

(declare-fun b!89140 () Bool)

(assert (=> b!89140 (= e!48544 (as emptyset (Set tuple2!412)))))

(declare-fun b!89141 () Bool)

(assert (=> b!89141 (= e!48544 (union (insert (h!1098 (t!48767 lt!20357)) (as emptyset (Set tuple2!412))) (content!163 (t!48767 (t!48767 lt!20357)))))))

(assert (= (and d!59061 c!21895) b!89140))

(assert (= (and d!59061 (not c!21895)) b!89141))

(declare-fun m!85276 () Bool)

(assert (=> b!89141 m!85276))

(declare-fun m!85278 () Bool)

(assert (=> b!89141 m!85278))

(assert (=> b!89060 d!59061))

(assert (=> b!89062 d!59015))

(declare-fun d!59063 () Bool)

(declare-fun res!46691 () Bool)

(declare-fun e!48548 () Bool)

(assert (=> d!59063 (=> res!46691 e!48548)))

(assert (=> d!59063 (= res!46691 (is-Nil!696 (t!48767 (t!48767 l!1602))))))

(assert (=> d!59063 (= (isStableSortedAndAtLeast!6 (t!48767 (t!48767 l!1602)) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 l!1602)))) (_2!241 (h!1098 (t!48767 l!1602)))) e!48548)))

(declare-fun b!89142 () Bool)

(declare-fun e!48547 () Bool)

(assert (=> b!89142 (= e!48548 e!48547)))

(declare-fun res!46689 () Bool)

(assert (=> b!89142 (=> (not res!46689) (not e!48547))))

(declare-fun e!48546 () Bool)

(assert (=> b!89142 (= res!46689 e!48546)))

(declare-fun res!46690 () Bool)

(assert (=> b!89142 (=> res!46690 e!48546)))

(assert (=> b!89142 (= res!46690 (< (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 l!1602)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602)))))))))

(declare-fun b!89145 () Bool)

(assert (=> b!89145 (= e!48547 (isStableSortedAndAtLeast!6 (t!48767 (t!48767 (t!48767 l!1602))) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602))))) (_2!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b!89144 () Bool)

(declare-fun e!48545 () Bool)

(assert (=> b!89144 (= e!48545 (<= (_2!241 (h!1098 (t!48767 l!1602))) (_2!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b!89143 () Bool)

(assert (=> b!89143 (= e!48546 e!48545)))

(declare-fun res!46688 () Bool)

(assert (=> b!89143 (=> (not res!46688) (not e!48545))))

(assert (=> b!89143 (= res!46688 (= (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 l!1602)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602)))))))))

(assert (= (and d!59063 (not res!46691)) b!89142))

(assert (= (and b!89142 (not res!46690)) b!89143))

(assert (= (and b!89143 res!46688) b!89144))

(assert (= (and b!89142 res!46689) b!89145))

(declare-fun b_lambda!18047 () Bool)

(assert (=> (not b_lambda!18047) (not b!89142)))

(assert (=> b!89142 t!48798))

(declare-fun b_and!60411 () Bool)

(assert (= b_and!60409 (and (=> t!48798 result!47137) b_and!60411)))

(declare-fun b_lambda!18049 () Bool)

(assert (=> (not b_lambda!18049) (not b!89145)))

(assert (=> b!89145 t!48798))

(declare-fun b_and!60413 () Bool)

(assert (= b_and!60411 (and (=> t!48798 result!47137) b_and!60413)))

(declare-fun b_lambda!18051 () Bool)

(assert (=> (not b_lambda!18051) (not b!89143)))

(assert (=> b!89143 t!48798))

(declare-fun b_and!60415 () Bool)

(assert (= b_and!60413 (and (=> t!48798 result!47137) b_and!60415)))

(assert (=> b!89142 m!85234))

(assert (=> b!89145 m!85234))

(assert (=> b!89145 m!85234))

(assert (=> b!89145 m!85236))

(assert (=> b!89143 m!85234))

(assert (=> b!89036 d!59063))

(assert (=> b!89032 d!59063))

(declare-fun d!59065 () Bool)

(declare-fun res!46692 () Bool)

(declare-fun e!48549 () Bool)

(assert (=> d!59065 (=> res!46692 e!48549)))

(assert (=> d!59065 (= res!46692 (is-Nil!696 lt!20365))))

(assert (=> d!59065 (= (isStableSorted!6 lt!20365 key!533) e!48549)))

(declare-fun b!89146 () Bool)

(assert (=> b!89146 (= e!48549 (isStableSortedAndAtLeast!6 (t!48767 lt!20365) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 lt!20365))) (_2!241 (h!1098 lt!20365))))))

(assert (= (and d!59065 (not res!46692)) b!89146))

(declare-fun b_lambda!18053 () Bool)

(assert (=> (not b_lambda!18053) (not b!89146)))

(declare-fun t!48802 () Bool)

(declare-fun tb!46689 () Bool)

(assert (=> (and start!11614 (= key!533 key!533) t!48802) tb!46689))

(declare-fun result!47141 () Bool)

(assert (=> tb!46689 (= result!47141 true)))

(assert (=> b!89146 t!48802))

(declare-fun b_and!60417 () Bool)

(assert (= b_and!60415 (and (=> t!48802 result!47141) b_and!60417)))

(declare-fun m!85280 () Bool)

(assert (=> b!89146 m!85280))

(assert (=> b!89146 m!85280))

(declare-fun m!85282 () Bool)

(assert (=> b!89146 m!85282))

(assert (=> b!89050 d!59065))

(declare-fun e!48553 () List!740)

(declare-fun b!89147 () Bool)

(assert (=> b!89147 (= e!48553 ($colon$colon!21 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 (t!48767 l!1602))) lambda!10907) (h!1098 (t!48767 (t!48767 l!1602)))))))

(declare-fun b!89148 () Bool)

(declare-fun e!48557 () Bool)

(assert (=> b!89148 (= e!48557 (<= (dynLambda!1065 lambda!10907 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 lambda!10907 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun d!59067 () Bool)

(declare-fun e!48554 () Bool)

(assert (=> d!59067 e!48554))

(declare-fun res!46693 () Bool)

(assert (=> d!59067 (=> (not res!46693) (not e!48554))))

(declare-fun lt!20380 () List!740)

(assert (=> d!59067 (= res!46693 (= (content!163 lt!20380) (union (insert (tuple2!413 t!48626 n!1739) (as emptyset (Set tuple2!412))) (content!163 (t!48767 (t!48767 l!1602))))))))

(assert (=> d!59067 (= lt!20380 e!48553)))

(declare-fun c!21896 () Bool)

(declare-fun e!48556 () Bool)

(assert (=> d!59067 (= c!21896 e!48556)))

(declare-fun res!46695 () Bool)

(assert (=> d!59067 (=> res!46695 e!48556)))

(declare-fun lt!20381 () Bool)

(assert (=> d!59067 (= res!46695 lt!20381)))

(assert (=> d!59067 (= lt!20381 (is-Nil!696 (t!48767 (t!48767 l!1602))))))

(assert (=> d!59067 (= (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 l!1602)) lambda!10907) lt!20380)))

(declare-fun b!89149 () Bool)

(declare-fun e!48550 () List!740)

(assert (=> b!89149 (= e!48553 e!48550)))

(declare-fun c!21897 () Bool)

(declare-fun e!48555 () Bool)

(assert (=> b!89149 (= c!21897 e!48555)))

(declare-fun res!46696 () Bool)

(assert (=> b!89149 (=> res!46696 e!48555)))

(assert (=> b!89149 (= res!46696 lt!20381)))

(declare-fun b!89150 () Bool)

(assert (=> b!89150 (= e!48556 e!48557)))

(declare-fun res!46694 () Bool)

(assert (=> b!89150 (=> (not res!46694) (not e!48557))))

(assert (=> b!89150 (= res!46694 (is-Cons!694 (t!48767 (t!48767 l!1602))))))

(declare-fun b!89151 () Bool)

(declare-fun e!48551 () Bool)

(declare-fun tp!17397 () Bool)

(assert (=> b!89151 (= e!48551 (and tp_is_empty!387 tp!17397))))

(declare-fun b!89152 () Bool)

(declare-fun e!48552 () Bool)

(assert (=> b!89152 (= e!48555 e!48552)))

(declare-fun res!46698 () Bool)

(assert (=> b!89152 (=> (not res!46698) (not e!48552))))

(assert (=> b!89152 (= res!46698 (and (not lt!20381) (is-Cons!694 (t!48767 (t!48767 l!1602)))))))

(declare-fun b!89153 () Bool)

(declare-fun res!46697 () List!740)

(assert (=> b!89153 (= e!48550 res!46697)))

(assert (=> b!89153 true))

(assert (=> b!89153 e!48551))

(declare-fun b!89154 () Bool)

(assert (=> b!89154 (= e!48552 (<= (dynLambda!1065 lambda!10907 (tuple2!413 t!48626 n!1739)) (dynLambda!1065 lambda!10907 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b!89155 () Bool)

(assert (=> b!89155 (= e!48550 ($colon$colon!21 (t!48767 (t!48767 l!1602)) (tuple2!413 t!48626 n!1739)))))

(declare-fun b!89156 () Bool)

(assert (=> b!89156 (= e!48554 (= (length!15 lt!20380) (+ 1 (length!15 (t!48767 (t!48767 l!1602))))))))

(assert (= (and d!59067 (not res!46695)) b!89150))

(assert (= (and b!89150 res!46694) b!89148))

(assert (= (and b!89149 (not res!46696)) b!89152))

(assert (= (and b!89152 res!46698) b!89154))

(assert (= (and b!89153 (is-Cons!694 res!46697)) b!89151))

(assert (= (and b!89149 c!21897) b!89155))

(assert (= (and b!89149 (not c!21897)) b!89153))

(assert (= (and d!59067 c!21896) b!89149))

(assert (= (and d!59067 (not c!21896)) b!89147))

(assert (= (and d!59067 res!46693) b!89156))

(declare-fun b_lambda!18055 () Bool)

(assert (=> (not b_lambda!18055) (not b!89148)))

(declare-fun b_lambda!18057 () Bool)

(assert (=> (not b_lambda!18057) (not b!89148)))

(declare-fun b_lambda!18059 () Bool)

(assert (=> (not b_lambda!18059) (not b!89154)))

(declare-fun b_lambda!18061 () Bool)

(assert (=> (not b_lambda!18061) (not b!89154)))

(assert (=> b!89155 m!85180))

(declare-fun m!85284 () Bool)

(assert (=> b!89154 m!85284))

(declare-fun m!85286 () Bool)

(assert (=> b!89154 m!85286))

(declare-fun m!85288 () Bool)

(assert (=> b!89147 m!85288))

(assert (=> b!89147 m!85288))

(declare-fun m!85290 () Bool)

(assert (=> b!89147 m!85290))

(declare-fun m!85292 () Bool)

(assert (=> b!89156 m!85292))

(assert (=> b!89156 m!85190))

(declare-fun m!85294 () Bool)

(assert (=> d!59067 m!85294))

(assert (=> d!59067 m!85080))

(assert (=> d!59067 m!85194))

(assert (=> b!89148 m!85284))

(assert (=> b!89148 m!85286))

(assert (=> b!89050 d!59067))

(declare-fun bs!41454 () Bool)

(declare-fun b!89159 () Bool)

(assert (= bs!41454 (and b!89159 b!88954)))

(declare-fun lambda!10909 () Int)

(assert (=> bs!41454 (= lambda!10909 lambda!10906)))

(declare-fun bs!41455 () Bool)

(assert (= bs!41455 (and b!89159 b!89051)))

(assert (=> bs!41455 (= lambda!10909 lambda!10908)))

(declare-fun bs!41456 () Bool)

(assert (= bs!41456 (and b!89159 b!89050)))

(assert (=> bs!41456 (= lambda!10909 lambda!10907)))

(declare-fun bs!41457 () Bool)

(assert (= bs!41457 (and b!89159 b!88926)))

(assert (=> bs!41457 (= lambda!10909 lambda!10900)))

(declare-fun bs!41458 () Bool)

(assert (= bs!41458 (and b!89159 b!88953)))

(assert (=> bs!41458 (= lambda!10909 lambda!10905)))

(assert (=> b!89159 true))

(assert (=> b!89159 (< (dynLambda!1062 order!505 key!533) (dynLambda!1063 order!507 lambda!10909))))

(declare-fun b_next!39879 () Bool)

(assert (=> start!11614 (= b_next!39877 (or (and b!89159 (= lambda!10909 keyAnn!11)) b_next!39879))))

(declare-fun bs!41459 () Bool)

(declare-fun b!89160 () Bool)

(assert (= bs!41459 (and b!89160 b!89159)))

(declare-fun lambda!10910 () Int)

(assert (=> bs!41459 (= lambda!10910 lambda!10909)))

(declare-fun bs!41460 () Bool)

(assert (= bs!41460 (and b!89160 b!88954)))

(assert (=> bs!41460 (= lambda!10910 lambda!10906)))

(declare-fun bs!41461 () Bool)

(assert (= bs!41461 (and b!89160 b!89051)))

(assert (=> bs!41461 (= lambda!10910 lambda!10908)))

(declare-fun bs!41462 () Bool)

(assert (= bs!41462 (and b!89160 b!89050)))

(assert (=> bs!41462 (= lambda!10910 lambda!10907)))

(declare-fun bs!41463 () Bool)

(assert (= bs!41463 (and b!89160 b!88926)))

(assert (=> bs!41463 (= lambda!10910 lambda!10900)))

(declare-fun bs!41464 () Bool)

(assert (= bs!41464 (and b!89160 b!88953)))

(assert (=> bs!41464 (= lambda!10910 lambda!10905)))

(assert (=> b!89160 true))

(assert (=> b!89160 (< (dynLambda!1062 order!505 key!533) (dynLambda!1063 order!507 lambda!10910))))

(declare-fun b_next!39881 () Bool)

(assert (=> start!11614 (= b_next!39879 (or (and b!89160 (= lambda!10910 keyAnn!11)) b_next!39881))))

(declare-fun b!89157 () Bool)

(declare-fun e!48560 () Bool)

(declare-fun lt!20382 () List!740)

(assert (=> b!89157 (= e!48560 (l2AtLeast!7 lt!20382 n!1739))))

(declare-fun b!89158 () Bool)

(declare-fun e!48559 () Bool)

(assert (=> b!89158 (= e!48559 (l2AtLeast!7 (t!48767 (t!48767 (t!48767 l!1602))) n!1739))))

(declare-fun e!48561 () Bool)

(assert (=> b!89159 (= e!48561 e!48560)))

(declare-fun res!46699 () Bool)

(assert (=> b!89159 (=> (not res!46699) (not e!48560))))

(assert (=> b!89159 (= res!46699 (isStableSorted!6 lt!20382 key!533))))

(assert (=> b!89159 (= lt!20382 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 (t!48767 l!1602))) lambda!10909))))

(declare-fun lt!20384 () Bool)

(assert (=> b!89159 (= lt!20384 (insertStableProp!4 t!48626 n!1739 (t!48767 (t!48767 (t!48767 (t!48767 l!1602)))) key!533))))

(declare-fun d!59069 () Bool)

(assert (=> d!59069 e!48561))

(declare-fun c!21898 () Bool)

(assert (=> d!59069 (= c!21898 (is-Cons!694 (t!48767 (t!48767 (t!48767 l!1602)))))))

(assert (=> d!59069 e!48559))

(declare-fun res!46700 () Bool)

(assert (=> d!59069 (=> (not res!46700) (not e!48559))))

(assert (=> d!59069 (= res!46700 (isStableSorted!6 (t!48767 (t!48767 (t!48767 l!1602))) key!533))))

(assert (=> d!59069 (= (insertStableProp!4 t!48626 n!1739 (t!48767 (t!48767 (t!48767 l!1602))) key!533) true)))

(declare-fun e!48558 () Bool)

(assert (=> b!89160 (= e!48561 e!48558)))

(declare-fun res!46701 () Bool)

(assert (=> b!89160 (=> (not res!46701) (not e!48558))))

(declare-fun lt!20383 () List!740)

(assert (=> b!89160 (= res!46701 (isStableSorted!6 lt!20383 key!533))))

(assert (=> b!89160 (= lt!20383 (insert!32 (tuple2!413 t!48626 n!1739) (t!48767 (t!48767 (t!48767 l!1602))) lambda!10910))))

(declare-fun b!89161 () Bool)

(assert (=> b!89161 (= e!48558 (l2AtLeast!7 lt!20383 n!1739))))

(assert (= (and d!59069 res!46700) b!89158))

(assert (= (and b!89159 res!46699) b!89157))

(assert (= (and b!89160 res!46701) b!89161))

(assert (= (and d!59069 c!21898) b!89159))

(assert (= (and d!59069 (not c!21898)) b!89160))

(declare-fun m!85296 () Bool)

(assert (=> b!89159 m!85296))

(declare-fun m!85298 () Bool)

(assert (=> b!89159 m!85298))

(declare-fun m!85300 () Bool)

(assert (=> b!89159 m!85300))

(declare-fun m!85302 () Bool)

(assert (=> b!89161 m!85302))

(declare-fun m!85304 () Bool)

(assert (=> d!59069 m!85304))

(declare-fun m!85306 () Bool)

(assert (=> b!89158 m!85306))

(declare-fun m!85308 () Bool)

(assert (=> b!89160 m!85308))

(declare-fun m!85310 () Bool)

(assert (=> b!89160 m!85310))

(declare-fun m!85312 () Bool)

(assert (=> b!89157 m!85312))

(assert (=> b!89050 d!59069))

(declare-fun d!59071 () Bool)

(declare-fun res!46702 () Bool)

(declare-fun e!48562 () Bool)

(assert (=> d!59071 (=> res!46702 e!48562)))

(assert (=> d!59071 (= res!46702 (is-Nil!696 (t!48767 lt!20350)))))

(assert (=> d!59071 (= (l2AtLeast!7 (t!48767 lt!20350) n!1739) e!48562)))

(declare-fun b!89162 () Bool)

(declare-fun e!48563 () Bool)

(assert (=> b!89162 (= e!48562 e!48563)))

(declare-fun res!46703 () Bool)

(assert (=> b!89162 (=> (not res!46703) (not e!48563))))

(assert (=> b!89162 (= res!46703 (<= n!1739 (_2!241 (h!1098 (t!48767 lt!20350)))))))

(declare-fun b!89163 () Bool)

(assert (=> b!89163 (= e!48563 (l2AtLeast!7 (t!48767 (t!48767 lt!20350)) n!1739))))

(assert (= (and d!59071 (not res!46702)) b!89162))

(assert (= (and b!89162 res!46703) b!89163))

(declare-fun m!85314 () Bool)

(assert (=> b!89163 m!85314))

(assert (=> b!89008 d!59071))

(declare-fun d!59073 () Bool)

(declare-fun res!46704 () Bool)

(declare-fun e!48564 () Bool)

(assert (=> d!59073 (=> res!46704 e!48564)))

(assert (=> d!59073 (= res!46704 (is-Nil!696 (t!48767 (t!48767 l!1602))))))

(assert (=> d!59073 (= (l2AtLeast!7 (t!48767 (t!48767 l!1602)) n!1739) e!48564)))

(declare-fun b!89164 () Bool)

(declare-fun e!48565 () Bool)

(assert (=> b!89164 (= e!48564 e!48565)))

(declare-fun res!46705 () Bool)

(assert (=> b!89164 (=> (not res!46705) (not e!48565))))

(assert (=> b!89164 (= res!46705 (<= n!1739 (_2!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b!89165 () Bool)

(assert (=> b!89165 (= e!48565 (l2AtLeast!7 (t!48767 (t!48767 (t!48767 l!1602))) n!1739))))

(assert (= (and d!59073 (not res!46704)) b!89164))

(assert (= (and b!89164 res!46705) b!89165))

(assert (=> b!89165 m!85306))

(assert (=> b!88994 d!59073))

(declare-fun d!59075 () Bool)

(declare-fun res!46709 () Bool)

(declare-fun e!48569 () Bool)

(assert (=> d!59075 (=> res!46709 e!48569)))

(assert (=> d!59075 (= res!46709 (is-Nil!696 (t!48767 lt!20350)))))

(assert (=> d!59075 (= (isStableSortedAndAtLeast!6 (t!48767 lt!20350) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 lt!20350))) (_2!241 (h!1098 lt!20350))) e!48569)))

(declare-fun b!89166 () Bool)

(declare-fun e!48568 () Bool)

(assert (=> b!89166 (= e!48569 e!48568)))

(declare-fun res!46707 () Bool)

(assert (=> b!89166 (=> (not res!46707) (not e!48568))))

(declare-fun e!48567 () Bool)

(assert (=> b!89166 (= res!46707 e!48567)))

(declare-fun res!46708 () Bool)

(assert (=> b!89166 (=> res!46708 e!48567)))

(assert (=> b!89166 (= res!46708 (< (dynLambda!1064 key!533 (_1!241 (h!1098 lt!20350))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 lt!20350))))))))

(declare-fun b!89169 () Bool)

(assert (=> b!89169 (= e!48568 (isStableSortedAndAtLeast!6 (t!48767 (t!48767 lt!20350)) key!533 (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 lt!20350)))) (_2!241 (h!1098 (t!48767 lt!20350)))))))

(declare-fun b!89168 () Bool)

(declare-fun e!48566 () Bool)

(assert (=> b!89168 (= e!48566 (<= (_2!241 (h!1098 lt!20350)) (_2!241 (h!1098 (t!48767 lt!20350)))))))

(declare-fun b!89167 () Bool)

(assert (=> b!89167 (= e!48567 e!48566)))

(declare-fun res!46706 () Bool)

(assert (=> b!89167 (=> (not res!46706) (not e!48566))))

(assert (=> b!89167 (= res!46706 (= (dynLambda!1064 key!533 (_1!241 (h!1098 lt!20350))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 lt!20350))))))))

(assert (= (and d!59075 (not res!46709)) b!89166))

(assert (= (and b!89166 (not res!46708)) b!89167))

(assert (= (and b!89167 res!46706) b!89168))

(assert (= (and b!89166 res!46707) b!89169))

(declare-fun b_lambda!18063 () Bool)

(assert (=> (not b_lambda!18063) (not b!89166)))

(declare-fun t!48804 () Bool)

(declare-fun tb!46691 () Bool)

(assert (=> (and start!11614 (= key!533 key!533) t!48804) tb!46691))

(declare-fun result!47143 () Bool)

(assert (=> tb!46691 (= result!47143 true)))

(assert (=> b!89166 t!48804))

(declare-fun b_and!60419 () Bool)

(assert (= b_and!60417 (and (=> t!48804 result!47143) b_and!60419)))

(declare-fun b_lambda!18065 () Bool)

(assert (=> (not b_lambda!18065) (not b!89169)))

(assert (=> b!89169 t!48804))

(declare-fun b_and!60421 () Bool)

(assert (= b_and!60419 (and (=> t!48804 result!47143) b_and!60421)))

(declare-fun b_lambda!18067 () Bool)

(assert (=> (not b_lambda!18067) (not b!89167)))

(assert (=> b!89167 t!48804))

(declare-fun b_and!60423 () Bool)

(assert (= b_and!60421 (and (=> t!48804 result!47143) b_and!60423)))

(declare-fun m!85316 () Bool)

(assert (=> b!89166 m!85316))

(assert (=> b!89169 m!85316))

(assert (=> b!89169 m!85316))

(declare-fun m!85318 () Bool)

(assert (=> b!89169 m!85318))

(assert (=> b!89167 m!85316))

(assert (=> b!89037 d!59075))

(assert (=> b!89030 d!59017))

(assert (=> b!89049 d!59073))

(declare-fun b!89170 () Bool)

(declare-fun e!48570 () Bool)

(declare-fun tp!17398 () Bool)

(assert (=> b!89170 (= e!48570 (and tp_is_empty!387 tp!17398))))

(assert (=> b!89065 (= tp!17392 e!48570)))

(assert (= (and b!89065 (is-Cons!694 (t!48767 (t!48767 (t!48767 res!45959))))) b!89170))

(declare-fun b!89171 () Bool)

(declare-fun e!48571 () Bool)

(declare-fun tp!17399 () Bool)

(assert (=> b!89171 (= e!48571 (and tp_is_empty!387 tp!17399))))

(assert (=> b!89026 (= tp!17388 e!48571)))

(assert (= (and b!89026 (is-Cons!694 (t!48767 res!46627))) b!89171))

(declare-fun b!89172 () Bool)

(declare-fun e!48572 () Bool)

(declare-fun tp!17400 () Bool)

(assert (=> b!89172 (= e!48572 (and tp_is_empty!387 tp!17400))))

(assert (=> b!89042 (= tp!17389 e!48572)))

(assert (= (and b!89042 (is-Cons!694 (t!48767 res!46639))) b!89172))

(declare-fun b!89173 () Bool)

(declare-fun e!48573 () Bool)

(declare-fun tp!17401 () Bool)

(assert (=> b!89173 (= e!48573 (and tp_is_empty!387 tp!17401))))

(assert (=> b!89064 (= tp!17391 e!48573)))

(assert (= (and b!89064 (is-Cons!694 (t!48767 (t!48767 (t!48767 l!1602))))) b!89173))

(declare-fun b!89174 () Bool)

(declare-fun e!48574 () Bool)

(declare-fun tp!17402 () Bool)

(assert (=> b!89174 (= e!48574 (and tp_is_empty!387 tp!17402))))

(assert (=> b!89016 (= tp!17387 e!48574)))

(assert (= (and b!89016 (is-Cons!694 (t!48767 res!46621))) b!89174))

(declare-fun b!89175 () Bool)

(declare-fun e!48575 () Bool)

(declare-fun tp!17403 () Bool)

(assert (=> b!89175 (= e!48575 (and tp_is_empty!387 tp!17403))))

(assert (=> b!89063 (= tp!17390 e!48575)))

(assert (= (and b!89063 (is-Cons!694 (t!48767 (t!48767 res!46595)))) b!89175))

(declare-fun b_lambda!18069 () Bool)

(assert (= b_lambda!17835 (or (and b!89050 (= lambda!10907 keyAnn!11)) (and b!89051 (= lambda!10908 keyAnn!11)) (and b!89159 (= lambda!10909 keyAnn!11)) (and b!89160 (= lambda!10910 keyAnn!11)) b_lambda!18069)))

(assert (=> (and b!89050 (= lambda!10907 keyAnn!11) b!88977) d!59001))

(assert (=> (and b!89051 (= lambda!10908 keyAnn!11) b!88977) d!59003))

(declare-fun bs!41465 () Bool)

(declare-fun d!59077 () Bool)

(assert (= bs!41465 (and d!59077 b!89159)))

(assert (=> bs!41465 (= (dynLambda!1065 lambda!10909 (tuple2!413 t!48626 n!1739)) (dynLambda!1064 key!533 (_1!241 (tuple2!413 t!48626 n!1739))))))

(declare-fun b_lambda!18147 () Bool)

(assert (=> (not b_lambda!18147) (not bs!41465)))

(assert (=> bs!41465 t!48779))

(declare-fun b_and!60425 () Bool)

(assert (= b_and!60423 (and (=> t!48779 result!47119) b_and!60425)))

(assert (=> bs!41465 m!85088))

(assert (=> (and b!89159 (= lambda!10909 keyAnn!11) b!88977) d!59077))

(declare-fun bs!41466 () Bool)

(declare-fun d!59079 () Bool)

(assert (= bs!41466 (and d!59079 b!89160)))

(assert (=> bs!41466 (= (dynLambda!1065 lambda!10910 (tuple2!413 t!48626 n!1739)) (dynLambda!1064 key!533 (_1!241 (tuple2!413 t!48626 n!1739))))))

(declare-fun b_lambda!18149 () Bool)

(assert (=> (not b_lambda!18149) (not bs!41466)))

(assert (=> bs!41466 t!48779))

(declare-fun b_and!60427 () Bool)

(assert (= b_and!60425 (and (=> t!48779 result!47119) b_and!60427)))

(assert (=> bs!41466 m!85088))

(assert (=> (and b!89160 (= lambda!10910 keyAnn!11) b!88977) d!59079))

(declare-fun b_lambda!18071 () Bool)

(assert (= b_lambda!18027 (or (and start!11614 b_free!7525) b_lambda!18071)))

(declare-fun b_lambda!18073 () Bool)

(assert (= b_lambda!18059 (or b!89050 b_lambda!18073)))

(declare-fun bs!41467 () Bool)

(declare-fun d!59081 () Bool)

(assert (= bs!41467 (and d!59081 b!89050)))

(assert (=> bs!41467 (= (dynLambda!1065 lambda!10907 (tuple2!413 t!48626 n!1739)) (dynLambda!1064 key!533 (_1!241 (tuple2!413 t!48626 n!1739))))))

(declare-fun b_lambda!18151 () Bool)

(assert (=> (not b_lambda!18151) (not bs!41467)))

(assert (=> bs!41467 t!48779))

(declare-fun b_and!60429 () Bool)

(assert (= b_and!60427 (and (=> t!48779 result!47119) b_and!60429)))

(assert (=> bs!41467 m!85088))

(assert (=> b!89154 d!59081))

(declare-fun b_lambda!18075 () Bool)

(assert (= b_lambda!17837 (or (and b!89050 (= lambda!10907 keyAnn!11)) (and b!89051 (= lambda!10908 keyAnn!11)) (and b!89159 (= lambda!10909 keyAnn!11)) (and b!89160 (= lambda!10910 keyAnn!11)) b_lambda!18075)))

(declare-fun bs!41468 () Bool)

(declare-fun d!59083 () Bool)

(assert (= bs!41468 (and d!59083 b!89050)))

(assert (=> bs!41468 (= (dynLambda!1065 lambda!10907 (h!1098 l!1602)) (dynLambda!1064 key!533 (_1!241 (h!1098 l!1602))))))

(declare-fun b_lambda!18153 () Bool)

(assert (=> (not b_lambda!18153) (not bs!41468)))

(assert (=> bs!41468 t!48777))

(declare-fun b_and!60431 () Bool)

(assert (= b_and!60429 (and (=> t!48777 result!47115) b_and!60431)))

(assert (=> bs!41468 m!85084))

(assert (=> (and b!89050 (= lambda!10907 keyAnn!11) b!88977) d!59083))

(declare-fun bs!41469 () Bool)

(declare-fun d!59085 () Bool)

(assert (= bs!41469 (and d!59085 b!89051)))

(assert (=> bs!41469 (= (dynLambda!1065 lambda!10908 (h!1098 l!1602)) (dynLambda!1064 key!533 (_1!241 (h!1098 l!1602))))))

(declare-fun b_lambda!18155 () Bool)

(assert (=> (not b_lambda!18155) (not bs!41469)))

(assert (=> bs!41469 t!48777))

(declare-fun b_and!60433 () Bool)

(assert (= b_and!60431 (and (=> t!48777 result!47115) b_and!60433)))

(assert (=> bs!41469 m!85084))

(assert (=> (and b!89051 (= lambda!10908 keyAnn!11) b!88977) d!59085))

(declare-fun bs!41470 () Bool)

(declare-fun d!59087 () Bool)

(assert (= bs!41470 (and d!59087 b!89159)))

(assert (=> bs!41470 (= (dynLambda!1065 lambda!10909 (h!1098 l!1602)) (dynLambda!1064 key!533 (_1!241 (h!1098 l!1602))))))

(declare-fun b_lambda!18157 () Bool)

(assert (=> (not b_lambda!18157) (not bs!41470)))

(assert (=> bs!41470 t!48777))

(declare-fun b_and!60435 () Bool)

(assert (= b_and!60433 (and (=> t!48777 result!47115) b_and!60435)))

(assert (=> bs!41470 m!85084))

(assert (=> (and b!89159 (= lambda!10909 keyAnn!11) b!88977) d!59087))

(declare-fun bs!41471 () Bool)

(declare-fun d!59089 () Bool)

(assert (= bs!41471 (and d!59089 b!89160)))

(assert (=> bs!41471 (= (dynLambda!1065 lambda!10910 (h!1098 l!1602)) (dynLambda!1064 key!533 (_1!241 (h!1098 l!1602))))))

(declare-fun b_lambda!18159 () Bool)

(assert (=> (not b_lambda!18159) (not bs!41471)))

(assert (=> bs!41471 t!48777))

(declare-fun b_and!60437 () Bool)

(assert (= b_and!60435 (and (=> t!48777 result!47115) b_and!60437)))

(assert (=> bs!41471 m!85084))

(assert (=> (and b!89160 (= lambda!10910 keyAnn!11) b!88977) d!59089))

(declare-fun b_lambda!18077 () Bool)

(assert (= b_lambda!18043 (or b!88953 b_lambda!18077)))

(assert (=> b!89135 d!59007))

(declare-fun b_lambda!18079 () Bool)

(assert (= b_lambda!17999 (or b!88954 b_lambda!18079)))

(assert (=> b!89067 d!58987))

(declare-fun b_lambda!18081 () Bool)

(assert (= b_lambda!17841 (or (and b!89050 (= lambda!10907 keyAnn!11)) (and b!89051 (= lambda!10908 keyAnn!11)) (and b!89159 (= lambda!10909 keyAnn!11)) (and b!89160 (= lambda!10910 keyAnn!11)) b_lambda!18081)))

(assert (=> (and b!89050 (= lambda!10907 keyAnn!11) b!88983) d!59001))

(assert (=> (and b!89051 (= lambda!10908 keyAnn!11) b!88983) d!59003))

(assert (=> (and b!89159 (= lambda!10909 keyAnn!11) b!88983) d!59077))

(assert (=> (and b!89160 (= lambda!10910 keyAnn!11) b!88983) d!59079))

(declare-fun b_lambda!18083 () Bool)

(assert (= b_lambda!17839 (or (and b!89050 (= lambda!10907 keyAnn!11)) (and b!89051 (= lambda!10908 keyAnn!11)) (and b!89159 (= lambda!10909 keyAnn!11)) (and b!89160 (= lambda!10910 keyAnn!11)) b_lambda!18083)))

(assert (=> (and b!89050 (= lambda!10907 keyAnn!11) b!88983) d!59083))

(assert (=> (and b!89051 (= lambda!10908 keyAnn!11) b!88983) d!59085))

(assert (=> (and b!89159 (= lambda!10909 keyAnn!11) b!88983) d!59087))

(assert (=> (and b!89160 (= lambda!10910 keyAnn!11) b!88983) d!59089))

(declare-fun b_lambda!18085 () Bool)

(assert (= b_lambda!18023 (or (and start!11614 b_free!7525) b_lambda!18085)))

(declare-fun b_lambda!18087 () Bool)

(assert (= b_lambda!18067 (or (and start!11614 b_free!7525) b_lambda!18087)))

(declare-fun b_lambda!18089 () Bool)

(assert (= b_lambda!18041 (or b!88953 b_lambda!18089)))

(declare-fun bs!41472 () Bool)

(declare-fun d!59091 () Bool)

(assert (= bs!41472 (and d!59091 b!88953)))

(assert (=> bs!41472 (= (dynLambda!1065 lambda!10905 (h!1098 (t!48767 (t!48767 l!1602)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b_lambda!18161 () Bool)

(assert (=> (not b_lambda!18161) (not bs!41472)))

(assert (=> bs!41472 t!48798))

(declare-fun b_and!60439 () Bool)

(assert (= b_and!60437 (and (=> t!48798 result!47137) b_and!60439)))

(assert (=> bs!41472 m!85234))

(assert (=> b!89129 d!59091))

(declare-fun b_lambda!18091 () Bool)

(assert (= b_lambda!18013 (or (and start!11614 b_free!7523) (and b!89050 (= lambda!10907 keyAnn!11)) (and b!88926 (= lambda!10900 keyAnn!11)) (and b!89159 (= lambda!10909 keyAnn!11)) (and b!88954 (= lambda!10906 keyAnn!11)) (and b!89160 (= lambda!10910 keyAnn!11)) (and b!89051 (= lambda!10908 keyAnn!11)) (and b!88953 (= lambda!10905 keyAnn!11)) b_lambda!18091)))

(declare-fun bs!41473 () Bool)

(declare-fun d!59093 () Bool)

(assert (= bs!41473 (and d!59093 b!89160)))

(assert (=> bs!41473 (= (dynLambda!1065 lambda!10910 (h!1098 (t!48767 (t!48767 l!1602)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b_lambda!18163 () Bool)

(assert (=> (not b_lambda!18163) (not bs!41473)))

(assert (=> bs!41473 t!48798))

(declare-fun b_and!60441 () Bool)

(assert (= b_and!60439 (and (=> t!48798 result!47137) b_and!60441)))

(assert (=> bs!41473 m!85234))

(assert (=> (and b!89160 (= lambda!10910 keyAnn!11) b!89095) d!59093))

(declare-fun bs!41474 () Bool)

(declare-fun d!59095 () Bool)

(assert (= bs!41474 (and d!59095 b!89159)))

(assert (=> bs!41474 (= (dynLambda!1065 lambda!10909 (h!1098 (t!48767 (t!48767 l!1602)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b_lambda!18165 () Bool)

(assert (=> (not b_lambda!18165) (not bs!41474)))

(assert (=> bs!41474 t!48798))

(declare-fun b_and!60443 () Bool)

(assert (= b_and!60441 (and (=> t!48798 result!47137) b_and!60443)))

(assert (=> bs!41474 m!85234))

(assert (=> (and b!89159 (= lambda!10909 keyAnn!11) b!89095) d!59095))

(declare-fun bs!41475 () Bool)

(declare-fun d!59097 () Bool)

(assert (= bs!41475 (and d!59097 b!89051)))

(assert (=> bs!41475 (= (dynLambda!1065 lambda!10908 (h!1098 (t!48767 (t!48767 l!1602)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b_lambda!18167 () Bool)

(assert (=> (not b_lambda!18167) (not bs!41475)))

(assert (=> bs!41475 t!48798))

(declare-fun b_and!60445 () Bool)

(assert (= b_and!60443 (and (=> t!48798 result!47137) b_and!60445)))

(assert (=> bs!41475 m!85234))

(assert (=> (and b!89051 (= lambda!10908 keyAnn!11) b!89095) d!59097))

(declare-fun bs!41476 () Bool)

(declare-fun d!59099 () Bool)

(assert (= bs!41476 (and d!59099 b!88926)))

(assert (=> bs!41476 (= (dynLambda!1065 lambda!10900 (h!1098 (t!48767 (t!48767 l!1602)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b_lambda!18169 () Bool)

(assert (=> (not b_lambda!18169) (not bs!41476)))

(assert (=> bs!41476 t!48798))

(declare-fun b_and!60447 () Bool)

(assert (= b_and!60445 (and (=> t!48798 result!47137) b_and!60447)))

(assert (=> bs!41476 m!85234))

(assert (=> (and b!88926 (= lambda!10900 keyAnn!11) b!89095) d!59099))

(declare-fun bs!41477 () Bool)

(declare-fun d!59101 () Bool)

(assert (= bs!41477 (and d!59101 b!88954)))

(assert (=> bs!41477 (= (dynLambda!1065 lambda!10906 (h!1098 (t!48767 (t!48767 l!1602)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b_lambda!18171 () Bool)

(assert (=> (not b_lambda!18171) (not bs!41477)))

(assert (=> bs!41477 t!48798))

(declare-fun b_and!60449 () Bool)

(assert (= b_and!60447 (and (=> t!48798 result!47137) b_and!60449)))

(assert (=> bs!41477 m!85234))

(assert (=> (and b!88954 (= lambda!10906 keyAnn!11) b!89095) d!59101))

(declare-fun bs!41478 () Bool)

(declare-fun d!59103 () Bool)

(assert (= bs!41478 (and d!59103 b!89050)))

(assert (=> bs!41478 (= (dynLambda!1065 lambda!10907 (h!1098 (t!48767 (t!48767 l!1602)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b_lambda!18173 () Bool)

(assert (=> (not b_lambda!18173) (not bs!41478)))

(assert (=> bs!41478 t!48798))

(declare-fun b_and!60451 () Bool)

(assert (= b_and!60449 (and (=> t!48798 result!47137) b_and!60451)))

(assert (=> bs!41478 m!85234))

(assert (=> (and b!89050 (= lambda!10907 keyAnn!11) b!89095) d!59103))

(declare-fun bs!41479 () Bool)

(declare-fun d!59105 () Bool)

(assert (= bs!41479 (and d!59105 b!88953)))

(assert (=> bs!41479 (= (dynLambda!1065 lambda!10905 (h!1098 (t!48767 (t!48767 l!1602)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b_lambda!18175 () Bool)

(assert (=> (not b_lambda!18175) (not bs!41479)))

(assert (=> bs!41479 t!48798))

(declare-fun b_and!60453 () Bool)

(assert (= b_and!60451 (and (=> t!48798 result!47137) b_and!60453)))

(assert (=> bs!41479 m!85234))

(assert (=> (and b!88953 (= lambda!10905 keyAnn!11) b!89095) d!59105))

(declare-fun b_lambda!18093 () Bool)

(assert (= b_lambda!18051 (or (and start!11614 b_free!7525) b_lambda!18093)))

(declare-fun b_lambda!18095 () Bool)

(assert (= b_lambda!18005 (or b!88954 b_lambda!18095)))

(declare-fun bs!41480 () Bool)

(declare-fun d!59107 () Bool)

(assert (= bs!41480 (and d!59107 b!88954)))

(assert (=> bs!41480 (= (dynLambda!1065 lambda!10906 (h!1098 (t!48767 (t!48767 l!1602)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b_lambda!18177 () Bool)

(assert (=> (not b_lambda!18177) (not bs!41480)))

(assert (=> bs!41480 t!48798))

(declare-fun b_and!60455 () Bool)

(assert (= b_and!60453 (and (=> t!48798 result!47137) b_and!60455)))

(assert (=> bs!41480 m!85234))

(assert (=> b!89073 d!59107))

(declare-fun b_lambda!18097 () Bool)

(assert (= b_lambda!18047 (or (and start!11614 b_free!7525) b_lambda!18097)))

(declare-fun b_lambda!18099 () Bool)

(assert (= b_lambda!18019 (or (and start!11614 b_free!7525) b_lambda!18099)))

(declare-fun b_lambda!18101 () Bool)

(assert (= b_lambda!18017 (or (and start!11614 b_free!7525) b_lambda!18101)))

(declare-fun b_lambda!18103 () Bool)

(assert (= b_lambda!18049 (or (and start!11614 b_free!7525) b_lambda!18103)))

(declare-fun b_lambda!18105 () Bool)

(assert (= b_lambda!18001 (or b!88954 b_lambda!18105)))

(assert (=> b!89067 d!59107))

(declare-fun b_lambda!18107 () Bool)

(assert (= b_lambda!18009 (or (and start!11614 b_free!7523) (and b!89050 (= lambda!10907 keyAnn!11)) (and b!88926 (= lambda!10900 keyAnn!11)) (and b!89159 (= lambda!10909 keyAnn!11)) (and b!88954 (= lambda!10906 keyAnn!11)) (and b!89160 (= lambda!10910 keyAnn!11)) (and b!89051 (= lambda!10908 keyAnn!11)) (and b!88953 (= lambda!10905 keyAnn!11)) b_lambda!18107)))

(assert (=> (and b!89160 (= lambda!10910 keyAnn!11) b!89089) d!59093))

(assert (=> (and b!89159 (= lambda!10909 keyAnn!11) b!89089) d!59095))

(assert (=> (and b!89051 (= lambda!10908 keyAnn!11) b!89089) d!59097))

(assert (=> (and b!88926 (= lambda!10900 keyAnn!11) b!89089) d!59099))

(assert (=> (and b!88954 (= lambda!10906 keyAnn!11) b!89089) d!59101))

(assert (=> (and b!89050 (= lambda!10907 keyAnn!11) b!89089) d!59103))

(assert (=> (and b!88953 (= lambda!10905 keyAnn!11) b!89089) d!59105))

(declare-fun b_lambda!18109 () Bool)

(assert (= b_lambda!18011 (or (and start!11614 b_free!7523) (and b!89050 (= lambda!10907 keyAnn!11)) (and b!88926 (= lambda!10900 keyAnn!11)) (and b!89159 (= lambda!10909 keyAnn!11)) (and b!88954 (= lambda!10906 keyAnn!11)) (and b!89160 (= lambda!10910 keyAnn!11)) (and b!89051 (= lambda!10908 keyAnn!11)) (and b!88953 (= lambda!10905 keyAnn!11)) b_lambda!18109)))

(assert (=> (and b!88953 (= lambda!10905 keyAnn!11) b!89095) d!58939))

(assert (=> (and b!89159 (= lambda!10909 keyAnn!11) b!89095) d!59077))

(assert (=> (and b!89160 (= lambda!10910 keyAnn!11) b!89095) d!59079))

(assert (=> (and b!88954 (= lambda!10906 keyAnn!11) b!89095) d!58941))

(assert (=> (and b!89050 (= lambda!10907 keyAnn!11) b!89095) d!59001))

(assert (=> (and b!88926 (= lambda!10900 keyAnn!11) b!89095) d!58937))

(assert (=> (and b!89051 (= lambda!10908 keyAnn!11) b!89095) d!59003))

(declare-fun b_lambda!18111 () Bool)

(assert (= b_lambda!18035 (or b!89051 b_lambda!18111)))

(declare-fun bs!41481 () Bool)

(declare-fun d!59109 () Bool)

(assert (= bs!41481 (and d!59109 b!89051)))

(assert (=> bs!41481 (= (dynLambda!1065 lambda!10908 (tuple2!413 t!48626 n!1739)) (dynLambda!1064 key!533 (_1!241 (tuple2!413 t!48626 n!1739))))))

(declare-fun b_lambda!18179 () Bool)

(assert (=> (not b_lambda!18179) (not bs!41481)))

(assert (=> bs!41481 t!48779))

(declare-fun b_and!60457 () Bool)

(assert (= b_and!60455 (and (=> t!48779 result!47119) b_and!60457)))

(assert (=> bs!41481 m!85088))

(assert (=> b!89119 d!59109))

(declare-fun b_lambda!18113 () Bool)

(assert (= b_lambda!18055 (or b!89050 b_lambda!18113)))

(assert (=> b!89148 d!59081))

(declare-fun b_lambda!18115 () Bool)

(assert (= b_lambda!18065 (or (and start!11614 b_free!7525) b_lambda!18115)))

(declare-fun b_lambda!18117 () Bool)

(assert (= b_lambda!18053 (or (and start!11614 b_free!7525) b_lambda!18117)))

(declare-fun b_lambda!18119 () Bool)

(assert (= b_lambda!18063 (or (and start!11614 b_free!7525) b_lambda!18119)))

(declare-fun b_lambda!18121 () Bool)

(assert (= b_lambda!18045 (or b!88953 b_lambda!18121)))

(assert (=> b!89135 d!59091))

(declare-fun b_lambda!18123 () Bool)

(assert (= b_lambda!18039 (or b!88953 b_lambda!18123)))

(assert (=> b!89129 d!59007))

(declare-fun b_lambda!18125 () Bool)

(assert (= b_lambda!18021 (or (and start!11614 b_free!7525) b_lambda!18125)))

(declare-fun b_lambda!18127 () Bool)

(assert (= b_lambda!18061 (or b!89050 b_lambda!18127)))

(declare-fun bs!41482 () Bool)

(declare-fun d!59111 () Bool)

(assert (= bs!41482 (and d!59111 b!89050)))

(assert (=> bs!41482 (= (dynLambda!1065 lambda!10907 (h!1098 (t!48767 (t!48767 l!1602)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b_lambda!18181 () Bool)

(assert (=> (not b_lambda!18181) (not bs!41482)))

(assert (=> bs!41482 t!48798))

(declare-fun b_and!60459 () Bool)

(assert (= b_and!60457 (and (=> t!48798 result!47137) b_and!60459)))

(assert (=> bs!41482 m!85234))

(assert (=> b!89154 d!59111))

(declare-fun b_lambda!18129 () Bool)

(assert (= b_lambda!18025 (or (and start!11614 b_free!7525) b_lambda!18129)))

(declare-fun b_lambda!18131 () Bool)

(assert (= b_lambda!18003 (or b!88954 b_lambda!18131)))

(assert (=> b!89073 d!58987))

(declare-fun b_lambda!18133 () Bool)

(assert (= b_lambda!18031 (or b!89051 b_lambda!18133)))

(assert (=> b!89113 d!59109))

(declare-fun b_lambda!18135 () Bool)

(assert (= b_lambda!18029 (or (and start!11614 b_free!7525) b_lambda!18135)))

(declare-fun b_lambda!18137 () Bool)

(assert (= b_lambda!18007 (or (and start!11614 b_free!7523) (and b!89050 (= lambda!10907 keyAnn!11)) (and b!88926 (= lambda!10900 keyAnn!11)) (and b!89159 (= lambda!10909 keyAnn!11)) (and b!88954 (= lambda!10906 keyAnn!11)) (and b!89160 (= lambda!10910 keyAnn!11)) (and b!89051 (= lambda!10908 keyAnn!11)) (and b!88953 (= lambda!10905 keyAnn!11)) b_lambda!18137)))

(assert (=> (and b!88953 (= lambda!10905 keyAnn!11) b!89089) d!58939))

(assert (=> (and b!89159 (= lambda!10909 keyAnn!11) b!89089) d!59077))

(assert (=> (and b!89160 (= lambda!10910 keyAnn!11) b!89089) d!59079))

(assert (=> (and b!88954 (= lambda!10906 keyAnn!11) b!89089) d!58941))

(assert (=> (and b!89050 (= lambda!10907 keyAnn!11) b!89089) d!59001))

(assert (=> (and b!88926 (= lambda!10900 keyAnn!11) b!89089) d!58937))

(assert (=> (and b!89051 (= lambda!10908 keyAnn!11) b!89089) d!59003))

(declare-fun b_lambda!18139 () Bool)

(assert (= b_lambda!18033 (or b!89051 b_lambda!18139)))

(declare-fun bs!41483 () Bool)

(declare-fun d!59113 () Bool)

(assert (= bs!41483 (and d!59113 b!89051)))

(assert (=> bs!41483 (= (dynLambda!1065 lambda!10908 (h!1098 (t!48767 (t!48767 l!1602)))) (dynLambda!1064 key!533 (_1!241 (h!1098 (t!48767 (t!48767 l!1602))))))))

(declare-fun b_lambda!18183 () Bool)

(assert (=> (not b_lambda!18183) (not bs!41483)))

(assert (=> bs!41483 t!48798))

(declare-fun b_and!60461 () Bool)

(assert (= b_and!60459 (and (=> t!48798 result!47137) b_and!60461)))

(assert (=> bs!41483 m!85234))

(assert (=> b!89113 d!59113))

(declare-fun b_lambda!18141 () Bool)

(assert (= b_lambda!18057 (or b!89050 b_lambda!18141)))

(assert (=> b!89148 d!59111))

(declare-fun b_lambda!18143 () Bool)

(assert (= b_lambda!18037 (or b!89051 b_lambda!18143)))

(assert (=> b!89119 d!59113))

(declare-fun b_lambda!18145 () Bool)

(assert (= b_lambda!18015 (or (and start!11614 b_free!7525) b_lambda!18145)))

(push 1)

(assert (not b_lambda!18177))

(assert (not b_lambda!18077))

(assert (not b_lambda!18131))

(assert (not d!59067))

(assert (not b_lambda!17869))

(assert b_and!60461)

(assert (not b_lambda!17915))

(assert (not b_lambda!18175))

(assert (not b!89074))

(assert (not b_lambda!18075))

(assert (not b_lambda!17927))

(assert (not b_lambda!17859))

(assert (not b!89145))

(assert (not b_lambda!17863))

(assert (not d!59033))

(assert (not b_lambda!18087))

(assert (not d!59021))

(assert (not b!89123))

(assert (not b!89110))

(assert (not b_lambda!17987))

(assert (not b_lambda!18105))

(assert (not b_lambda!18093))

(assert (not b_lambda!18085))

(assert (not b_lambda!17919))

(assert (not b_lambda!17939))

(assert (not b!89096))

(assert tp_is_empty!387)

(assert (not b!89066))

(assert (not b_lambda!18117))

(assert (not b!89112))

(assert (not b_next!39867))

(assert (not b!89128))

(assert (not b_lambda!18159))

(assert (not b!89159))

(assert (not b_lambda!18133))

(assert (not b!89116))

(assert (not b!89103))

(assert (not b!89165))

(assert (not b_lambda!18167))

(assert (not b_lambda!17941))

(assert (not d!59057))

(assert (not b!89157))

(assert (not b_lambda!18171))

(assert (not b_lambda!17843))

(assert (not b_lambda!18125))

(assert (not b_lambda!17921))

(assert (not b!89175))

(assert (not b_lambda!18169))

(assert (not b_lambda!17979))

(assert (not b_lambda!18155))

(assert (not b_lambda!18161))

(assert (not b_lambda!17991))

(assert (not b!89111))

(assert (not b!89171))

(assert (not b_lambda!18153))

(assert (not b_lambda!18073))

(assert (not b_lambda!18157))

(assert (not b!89079))

(assert (not b!89146))

(assert (not b_lambda!17933))

(assert (not b!89077))

(assert (not b_lambda!18129))

(assert (not b_lambda!18101))

(assert (not b!89156))

(assert (not b_lambda!17845))

(assert (not b_lambda!18121))

(assert (not b!89075))

(assert (not d!59069))

(assert (not b_lambda!17981))

(assert (not b!89120))

(assert (not b_lambda!17925))

(assert (not b_lambda!17923))

(assert (not b_lambda!18071))

(assert (not b_lambda!17983))

(assert (not b!89169))

(assert (not b!89151))

(assert (not b_lambda!18139))

(assert (not b_lambda!18109))

(assert (not b_lambda!17861))

(assert (not b_lambda!18183))

(assert (not b_lambda!18079))

(assert (not d!59019))

(assert (not b_lambda!18135))

(assert (not d!59011))

(assert (not b_lambda!18173))

(assert (not b_lambda!18151))

(assert (not b_lambda!18149))

(assert (not b_lambda!17947))

(assert (not b_lambda!17929))

(assert (not b_lambda!17913))

(assert (not b!89070))

(assert (not b_lambda!18127))

(assert (not b_lambda!18163))

(assert (not b_lambda!18083))

(assert (not b!89127))

(assert (not b!89092))

(assert (not b!89085))

(assert (not b!89172))

(assert (not b_lambda!18089))

(assert (not b_lambda!17953))

(assert (not b_lambda!17917))

(assert (not b_lambda!17993))

(assert (not b!89173))

(assert (not b!89141))

(assert (not b_lambda!18091))

(assert (not b!89170))

(assert (not b_lambda!18123))

(assert (not b!89088))

(assert (not b_lambda!18107))

(assert (not b!89160))

(assert (not b!89137))

(assert (not b_next!39881))

(assert (not b_lambda!18119))

(assert (not b_lambda!17977))

(assert (not b!89139))

(assert (not b_lambda!17995))

(assert (not b_lambda!18145))

(assert (not b_lambda!18137))

(assert (not b!89136))

(assert (not b_lambda!17865))

(assert (not b_lambda!17989))

(assert (not b_lambda!17951))

(assert (not b!89161))

(assert (not d!59039))

(assert (not b_lambda!17985))

(assert (not b!89108))

(assert (not b!89087))

(assert (not b!89155))

(assert (not b_lambda!18069))

(assert (not b!89147))

(assert (not b_lambda!18179))

(assert (not b_lambda!17949))

(assert (not d!59029))

(assert (not b!89163))

(assert (not b!89099))

(assert (not b_lambda!17931))

(assert (not b!89174))

(assert (not d!59047))

(assert (not b_lambda!17997))

(assert (not b!89132))

(assert (not b_lambda!18111))

(assert (not b_lambda!17935))

(assert (not b_lambda!18095))

(assert (not b_lambda!18141))

(assert (not b_lambda!18115))

(assert (not b_lambda!18097))

(assert (not b_lambda!18165))

(assert (not b_lambda!18113))

(assert b_and!60393)

(assert (not b!89107))

(assert (not b_lambda!17937))

(assert (not b!89125))

(assert (not b_lambda!18099))

(assert (not b_lambda!17867))

(assert (not b_lambda!18103))

(assert (not b_lambda!18181))

(assert (not b_lambda!18081))

(assert (not b_lambda!17943))

(assert (not b_lambda!18147))

(assert (not b!89158))

(assert (not b_lambda!18143))

(assert (not b!89097))

(assert (not b_lambda!17945))

(assert (not b!89121))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60461)

(assert b_and!60393)

(assert (not b_next!39867))

(assert (not b_next!39881))

(check-sat)

(pop 1)

