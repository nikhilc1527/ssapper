; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9082 () Bool)

(assert start!9082)

(declare-fun b!62943 () Bool)

(declare-fun e!34017 () Bool)

(declare-fun tp!16670 () Bool)

(assert (=> b!62943 (= e!34017 tp!16670)))

(declare-fun b!62944 () Bool)

(declare-fun e!34021 () Bool)

(declare-fun tp!16671 () Bool)

(assert (=> b!62944 (= e!34021 tp!16671)))

(declare-fun b!62945 () Bool)

(declare-fun res!29288 () Bool)

(declare-fun e!33998 () Bool)

(assert (=> b!62945 (=> (not res!29288) (not e!33998))))

(declare-datatypes () ((String!961 (String!962 (value!5175 String)))))

(declare-datatypes () ((List!576 (Cons!537 (h!781 String!961) (t!47374 List!576)) (Nil!538))))

(declare-datatypes () ((Object!337 (Open!337 (value!5176 Int)))))

(declare-datatypes () ((MsgQueue!13 (MsgQueue!14 (queue!188 Object!337) (msgs!15 List!576)))))

(declare-fun queue!173 () MsgQueue!13)

(declare-fun isEmpty!552 (MsgQueue!13) Bool)

(assert (=> b!62945 (= res!29288 (not (isEmpty!552 queue!173)))))

(declare-fun b!62946 () Bool)

(declare-fun e!34022 () Bool)

(declare-datatypes () ((Option!410 (Some!389 (v!2319 String!961)) (None!390))))

(declare-datatypes () ((tuple2!326 (tuple2!327 (_1!190 Option!410) (_2!190 MsgQueue!13)))))

(declare-fun res!29105 () tuple2!326)

(declare-fun inv!1153 (String!961) Bool)

(assert (=> b!62946 (= e!34022 (inv!1153 (v!2319 (_1!190 res!29105))))))

(declare-fun b!62947 () Bool)

(declare-fun e!34011 () Bool)

(declare-fun tp!16663 () Bool)

(assert (=> b!62947 (= e!34011 tp!16663)))

(declare-fun b!62948 () Bool)

(declare-fun e!34006 () Bool)

(declare-fun tp!16658 () Bool)

(assert (=> b!62948 (= e!34006 tp!16658)))

(declare-fun b!62949 () Bool)

(declare-fun e!34010 () Bool)

(declare-fun c!13672 () Option!410)

(assert (=> b!62949 (= e!34010 (inv!1153 (v!2319 c!13672)))))

(declare-fun b!62950 () Bool)

(declare-fun e!34014 () Bool)

(declare-fun res!29101 () tuple2!326)

(assert (=> b!62950 (= e!34014 (inv!1153 (v!2319 (_1!190 res!29101))))))

(declare-fun b!62951 () Bool)

(declare-fun e!34002 () Bool)

(declare-fun res!29098 () tuple2!326)

(assert (=> b!62951 (= e!34002 (inv!1153 (v!2319 (_1!190 res!29098))))))

(declare-fun b!62952 () Bool)

(declare-fun res!29298 () Bool)

(assert (=> b!62952 (=> (not res!29298) (not e!33998))))

(declare-fun queue!167 () MsgQueue!13)

(declare-fun queue!166 () MsgQueue!13)

(assert (=> b!62952 (= res!29298 (= queue!167 queue!166))))

(declare-fun b!62953 () Bool)

(declare-fun e!34007 () Bool)

(declare-fun tp!16662 () Bool)

(assert (=> b!62953 (= e!34007 tp!16662)))

(declare-fun b!62954 () Bool)

(declare-fun isDefined!16 (Option!410) Bool)

(assert (=> b!62954 (= e!33998 (isDefined!16 c!13672))))

(declare-fun b!62955 () Bool)

(declare-fun e!34004 () Bool)

(declare-fun tp!16655 () Bool)

(assert (=> b!62955 (= e!34004 tp!16655)))

(declare-fun b!62956 () Bool)

(declare-fun e!34008 () Bool)

(declare-fun tp!16656 () Bool)

(assert (=> b!62956 (= e!34008 tp!16656)))

(declare-fun b!62957 () Bool)

(declare-fun res!29296 () Bool)

(assert (=> b!62957 (=> (not res!29296) (not e!33998))))

(declare-fun queue!176 () MsgQueue!13)

(declare-fun take!16 (MsgQueue!13) tuple2!326)

(assert (=> b!62957 (= res!29296 (= res!29101 (take!16 queue!176)))))

(declare-fun b!62958 () Bool)

(declare-fun e!33994 () Bool)

(declare-fun tp!16661 () Bool)

(assert (=> b!62958 (= e!33994 tp!16661)))

(declare-fun b!62959 () Bool)

(declare-fun res!29295 () Bool)

(assert (=> b!62959 (=> (not res!29295) (not e!33998))))

(declare-fun queue!179 () MsgQueue!13)

(assert (=> b!62959 (= res!29295 (= res!29105 (take!16 queue!179)))))

(declare-fun b!62960 () Bool)

(declare-fun res!29297 () Bool)

(assert (=> b!62960 (=> (not res!29297) (not e!33998))))

(declare-fun queue!182 () MsgQueue!13)

(declare-datatypes () ((Unit!1047 (Unit!1048))))

(declare-datatypes () ((tuple2!328 (tuple2!329 (_1!191 Unit!1047) (_2!191 MsgQueue!13)))))

(declare-fun t!47363 () tuple2!328)

(declare-fun res!29107 () Unit!1047)

(declare-fun tmp!500 () Unit!1047)

(declare-fun Unit!1049 () Unit!1047)

(assert (=> b!62960 (= res!29297 (and (= t!47363 (tuple2!329 Unit!1049 (MsgQueue!14 (queue!188 queue!179) (msgs!15 (_2!190 res!29105))))) (= res!29107 (_1!191 t!47363)) (= queue!182 (_2!191 t!47363)) (= tmp!500 res!29107) (= c!13672 (_1!190 res!29105))))))

(declare-fun b!62961 () Bool)

(declare-fun e!34003 () Bool)

(declare-fun tp!16660 () Bool)

(assert (=> b!62961 (= e!34003 tp!16660)))

(declare-fun b!62962 () Bool)

(declare-fun e!34020 () Bool)

(declare-fun tp!16668 () Bool)

(assert (=> b!62962 (= e!34020 tp!16668)))

(declare-fun b!62963 () Bool)

(declare-fun res!29290 () Bool)

(assert (=> b!62963 (=> (not res!29290) (not e!33998))))

(declare-fun tmp!494 () Unit!1047)

(declare-fun t!47361 () tuple2!328)

(declare-fun res!29100 () Unit!1047)

(declare-fun a!686 () Option!410)

(declare-fun Unit!1050 () Unit!1047)

(assert (=> b!62963 (= res!29290 (and (= t!47361 (tuple2!329 Unit!1050 (MsgQueue!14 (queue!188 queue!173) (msgs!15 (_2!190 res!29098))))) (= res!29100 (_1!191 t!47361)) (= queue!176 (_2!191 t!47361)) (= tmp!494 res!29100) (= a!686 (_1!190 res!29098)) (= a!686 (Some!389 (String!962 "HHeelllloo")))))))

(declare-fun b!62964 () Bool)

(declare-fun e!34012 () Bool)

(declare-fun tp!16657 () Bool)

(assert (=> b!62964 (= e!34012 tp!16657)))

(declare-fun b!62965 () Bool)

(declare-fun e!34018 () Bool)

(declare-fun tp!16659 () Bool)

(assert (=> b!62965 (= e!34018 tp!16659)))

(declare-fun b!62966 () Bool)

(declare-fun res!29300 () Bool)

(assert (=> b!62966 (=> (not res!29300) (not e!33998))))

(declare-fun res!29095 () tuple2!328)

(declare-fun queue!170 () MsgQueue!13)

(declare-fun tmp!491 () Unit!1047)

(declare-fun t!47360 () tuple2!328)

(declare-fun tmp!490 () Unit!1047)

(declare-fun res!29096 () Unit!1047)

(declare-fun Unit!1051 () Unit!1047)

(assert (=> b!62966 (= res!29300 (and (= t!47360 (tuple2!329 Unit!1051 (MsgQueue!14 (queue!188 queue!170) (msgs!15 (_2!191 res!29095))))) (= res!29096 (_1!191 t!47360)) (= queue!173 (_2!191 t!47360)) (= tmp!490 res!29096) (= tmp!491 (_1!191 res!29095))))))

(declare-fun b!62967 () Bool)

(declare-fun res!29299 () Bool)

(assert (=> b!62967 (=> (not res!29299) (not e!33998))))

(declare-fun res!29093 () tuple2!328)

(declare-fun put!6 (MsgQueue!13 String!961) tuple2!328)

(assert (=> b!62967 (= res!29299 (= res!29093 (put!6 queue!167 (String!962 "WWoorrlldd"))))))

(declare-fun b!62968 () Bool)

(declare-fun e!34001 () Bool)

(assert (=> b!62968 (= e!34001 (inv!1153 (v!2319 a!686)))))

(declare-fun b!62969 () Bool)

(declare-fun e!34015 () Bool)

(declare-fun tp!16667 () Bool)

(assert (=> b!62969 (= e!34015 tp!16667)))

(declare-fun res!29301 () Bool)

(assert (=> start!9082 (=> (not res!29301) (not e!33998))))

(assert (=> start!9082 (= res!29301 (isEmpty!552 queue!166))))

(assert (=> start!9082 e!33998))

(assert (=> start!9082 (and e!34022 e!34008)))

(assert (=> start!9082 e!34006))

(declare-fun e!34023 () Bool)

(assert (=> start!9082 e!34023))

(assert (=> start!9082 e!34015))

(assert (=> start!9082 e!34004))

(declare-fun e!33996 () Bool)

(assert (=> start!9082 (and e!34014 e!33996)))

(assert (=> start!9082 e!33994))

(assert (=> start!9082 true))

(assert (=> start!9082 e!34012))

(declare-fun e!34016 () Bool)

(assert (=> start!9082 e!34016))

(assert (=> start!9082 e!34018))

(assert (=> start!9082 e!34007))

(assert (=> start!9082 e!34003))

(assert (=> start!9082 e!34011))

(assert (=> start!9082 e!34017))

(assert (=> start!9082 e!34010))

(assert (=> start!9082 e!34020))

(declare-fun e!34005 () Bool)

(assert (=> start!9082 e!34005))

(assert (=> start!9082 (and e!34002 e!34021)))

(declare-fun e!33997 () Bool)

(assert (=> start!9082 e!33997))

(assert (=> start!9082 e!34001))

(declare-fun b!62970 () Bool)

(declare-fun res!29289 () Bool)

(assert (=> b!62970 (=> (not res!29289) (not e!33998))))

(declare-fun t!47359 () tuple2!328)

(declare-fun res!29094 () Unit!1047)

(declare-fun tmp!486 () Unit!1047)

(declare-fun tmp!487 () Unit!1047)

(declare-fun Unit!1052 () Unit!1047)

(assert (=> b!62970 (= res!29289 (and (= t!47359 (tuple2!329 Unit!1052 (MsgQueue!14 (queue!188 queue!167) (msgs!15 (_2!191 res!29093))))) (= res!29094 (_1!191 t!47359)) (= queue!170 (_2!191 t!47359)) (= tmp!486 res!29094) (= tmp!487 (_1!191 res!29093))))))

(declare-fun b!62971 () Bool)

(declare-fun tp!16666 () Bool)

(assert (=> b!62971 (= e!33996 tp!16666)))

(declare-fun b!62972 () Bool)

(declare-fun res!29294 () Bool)

(assert (=> b!62972 (=> (not res!29294) (not e!33998))))

(assert (=> b!62972 (= res!29294 (= res!29095 (put!6 queue!170 (String!962 "HHeelllloo"))))))

(declare-fun b!62973 () Bool)

(declare-fun tp!16669 () Bool)

(assert (=> b!62973 (= e!34016 tp!16669)))

(declare-fun b!62974 () Bool)

(declare-fun b!62449 () Option!410)

(assert (=> b!62974 (= e!34023 (inv!1153 (v!2319 b!62449)))))

(declare-fun b!62975 () Bool)

(declare-fun tp!16664 () Bool)

(assert (=> b!62975 (= e!33997 tp!16664)))

(declare-fun b!62976 () Bool)

(declare-fun res!29291 () Bool)

(assert (=> b!62976 (=> (not res!29291) (not e!33998))))

(assert (=> b!62976 (= res!29291 (= res!29098 (take!16 queue!173)))))

(declare-fun b!62977 () Bool)

(declare-fun res!29292 () Bool)

(assert (=> b!62977 (=> (not res!29292) (not e!33998))))

(assert (=> b!62977 (= res!29292 (isEmpty!552 queue!179))))

(declare-fun b!62978 () Bool)

(declare-fun res!29293 () Bool)

(assert (=> b!62978 (=> (not res!29293) (not e!33998))))

(declare-fun res!29103 () Unit!1047)

(declare-fun tmp!497 () Unit!1047)

(declare-fun t!47362 () tuple2!328)

(declare-fun Unit!1053 () Unit!1047)

(assert (=> b!62978 (= res!29293 (and (= t!47362 (tuple2!329 Unit!1053 (MsgQueue!14 (queue!188 queue!176) (msgs!15 (_2!190 res!29101))))) (= res!29103 (_1!191 t!47362)) (= queue!179 (_2!191 t!47362)) (= tmp!497 res!29103) (= b!62449 (_1!190 res!29101)) (= b!62449 (Some!389 (String!962 "WWoorrlldd")))))))

(declare-fun b!62979 () Bool)

(declare-fun tp!16665 () Bool)

(assert (=> b!62979 (= e!34005 tp!16665)))

(assert (= (and start!9082 res!29301) b!62952))

(assert (= (and b!62952 res!29298) b!62967))

(assert (= (and b!62967 res!29299) b!62970))

(assert (= (and b!62970 res!29289) b!62972))

(assert (= (and b!62972 res!29294) b!62966))

(assert (= (and b!62966 res!29300) b!62945))

(assert (= (and b!62945 res!29288) b!62976))

(assert (= (and b!62976 res!29291) b!62963))

(assert (= (and b!62963 res!29290) b!62957))

(assert (= (and b!62957 res!29296) b!62978))

(assert (= (and b!62978 res!29293) b!62977))

(assert (= (and b!62977 res!29292) b!62959))

(assert (= (and b!62959 res!29295) b!62960))

(assert (= (and b!62960 res!29297) b!62954))

(assert (= (and start!9082 (is-Some!389 (_1!190 res!29105))) b!62946))

(assert (= start!9082 b!62956))

(assert (= start!9082 b!62948))

(assert (= (and start!9082 (is-Some!389 b!62449)) b!62974))

(assert (= start!9082 b!62969))

(assert (= start!9082 b!62955))

(assert (= (and start!9082 (is-Some!389 (_1!190 res!29101))) b!62950))

(assert (= start!9082 b!62971))

(assert (= start!9082 b!62958))

(assert (= start!9082 b!62964))

(assert (= start!9082 b!62973))

(assert (= start!9082 b!62965))

(assert (= start!9082 b!62953))

(assert (= start!9082 b!62961))

(assert (= start!9082 b!62947))

(assert (= start!9082 b!62943))

(assert (= (and start!9082 (is-Some!389 c!13672)) b!62949))

(assert (= start!9082 b!62962))

(assert (= start!9082 b!62979))

(assert (= (and start!9082 (is-Some!389 (_1!190 res!29098))) b!62951))

(assert (= start!9082 b!62944))

(assert (= start!9082 b!62975))

(assert (= (and start!9082 (is-Some!389 a!686)) b!62968))

(declare-fun m!68700 () Bool)

(assert (=> b!62974 m!68700))

(declare-fun m!68702 () Bool)

(assert (=> b!62946 m!68702))

(declare-fun m!68704 () Bool)

(assert (=> b!62945 m!68704))

(declare-fun m!68706 () Bool)

(assert (=> b!62977 m!68706))

(declare-fun m!68708 () Bool)

(assert (=> b!62968 m!68708))

(declare-fun m!68710 () Bool)

(assert (=> b!62951 m!68710))

(declare-fun m!68712 () Bool)

(assert (=> b!62967 m!68712))

(declare-fun m!68714 () Bool)

(assert (=> b!62959 m!68714))

(declare-fun m!68716 () Bool)

(assert (=> b!62976 m!68716))

(declare-fun m!68718 () Bool)

(assert (=> b!62954 m!68718))

(declare-fun m!68720 () Bool)

(assert (=> b!62950 m!68720))

(declare-fun m!68722 () Bool)

(assert (=> b!62949 m!68722))

(declare-fun m!68724 () Bool)

(assert (=> b!62957 m!68724))

(declare-fun m!68726 () Bool)

(assert (=> start!9082 m!68726))

(declare-fun m!68728 () Bool)

(assert (=> b!62972 m!68728))

(push 1)

(assert (not b!62957))

(assert (not b!62967))

(assert (not b!62965))

(assert (not b!62962))

(assert (not b!62949))

(assert (not b!62954))

(assert (not b!62975))

(assert (not b!62979))

(assert (not start!9082))

(assert (not b!62946))

(assert (not b!62969))

(assert (not b!62958))

(assert (not b!62951))

(assert (not b!62977))

(assert (not b!62955))

(assert (not b!62959))

(assert (not b!62953))

(assert (not b!62968))

(assert (not b!62944))

(assert (not b!62961))

(assert (not b!62974))

(assert (not b!62964))

(assert (not b!62972))

(assert (not b!62948))

(assert (not b!62950))

(assert (not b!62971))

(assert (not b!62945))

(assert (not b!62947))

(assert (not b!62973))

(assert (not b!62956))

(assert (not b!62943))

(assert (not b!62976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53110 () Bool)

(declare-fun isEmpty!553 (Option!410) Bool)

(assert (=> d!53110 (= (isDefined!16 c!13672) (not (isEmpty!553 c!13672)))))

(declare-fun bs!37512 () Bool)

(assert (= bs!37512 d!53110))

(declare-fun m!68730 () Bool)

(assert (=> bs!37512 m!68730))

(assert (=> b!62954 d!53110))

(declare-fun d!53112 () Bool)

(declare-fun res!29304 () Bool)

(declare-fun isEmpty!554 (List!576) Bool)

(assert (=> d!53112 (= res!29304 (isEmpty!554 (msgs!15 queue!179)))))

(assert (=> d!53112 true))

(assert (=> d!53112 (= (isEmpty!552 queue!179) res!29304)))

(declare-fun bs!37513 () Bool)

(assert (= bs!37513 d!53112))

(declare-fun m!68732 () Bool)

(assert (=> bs!37513 m!68732))

(assert (=> b!62977 d!53112))

(declare-fun d!53114 () Bool)

(declare-fun res!29305 () Bool)

(assert (=> d!53114 (= res!29305 (isEmpty!554 (msgs!15 queue!173)))))

(assert (=> d!53114 true))

(assert (=> d!53114 (= (isEmpty!552 queue!173) res!29305)))

(declare-fun bs!37514 () Bool)

(assert (= bs!37514 d!53114))

(declare-fun m!68734 () Bool)

(assert (=> bs!37514 m!68734))

(assert (=> b!62945 d!53114))

(declare-fun d!53116 () Bool)

(assert (=> d!53116 (= (inv!1153 (v!2319 c!13672)) (= (mod (str.len (value!5175 (v!2319 c!13672))) 2) 0))))

(assert (=> b!62949 d!53116))

(declare-fun d!53118 () Bool)

(assert (=> d!53118 (= (inv!1153 (v!2319 (_1!190 res!29101))) (= (mod (str.len (value!5175 (v!2319 (_1!190 res!29101)))) 2) 0))))

(assert (=> b!62950 d!53118))

(declare-fun d!53120 () Bool)

(declare-fun lt!11591 () MsgQueue!13)

(declare-fun $colon$colon!14 (List!576 String!961) List!576)

(assert (=> d!53120 (= lt!11591 (MsgQueue!14 (queue!188 queue!167) ($colon$colon!14 (msgs!15 queue!167) (String!962 "WWoorrlldd"))))))

(declare-fun _put!5 (MsgQueue!13 String!961) Unit!1047)

(assert (=> d!53120 (= (put!6 queue!167 (String!962 "WWoorrlldd")) (tuple2!329 (_put!5 lt!11591 (String!962 "WWoorrlldd")) lt!11591))))

(declare-fun bs!37515 () Bool)

(assert (= bs!37515 d!53120))

(declare-fun m!68736 () Bool)

(assert (=> bs!37515 m!68736))

(declare-fun m!68738 () Bool)

(assert (=> bs!37515 m!68738))

(assert (=> b!62967 d!53120))

(declare-fun d!53122 () Bool)

(declare-fun lt!11596 () Option!410)

(declare-fun headOption!7 (List!576) Option!410)

(assert (=> d!53122 (= lt!11596 (headOption!7 (msgs!15 queue!173)))))

(declare-datatypes () ((Option!411 (Some!390 (v!2320 List!576)) (None!391))))

(declare-fun lt!11597 () Option!411)

(declare-fun tailOption!6 (List!576) Option!411)

(assert (=> d!53122 (= lt!11597 (tailOption!6 (msgs!15 queue!173)))))

(declare-fun _take!4 (MsgQueue!13) Option!410)

(assert (=> d!53122 (= lt!11596 (_take!4 queue!173))))

(declare-fun lambda!9154 () Int)

(declare-fun getOrElse!8 (Option!411 Int) List!576)

(assert (=> d!53122 (= (take!16 queue!173) (tuple2!327 lt!11596 (MsgQueue!14 (queue!188 queue!173) (getOrElse!8 lt!11597 lambda!9154))))))

(declare-fun bs!37516 () Bool)

(assert (= bs!37516 d!53122))

(declare-fun m!68740 () Bool)

(assert (=> bs!37516 m!68740))

(declare-fun m!68742 () Bool)

(assert (=> bs!37516 m!68742))

(declare-fun m!68744 () Bool)

(assert (=> bs!37516 m!68744))

(declare-fun m!68746 () Bool)

(assert (=> bs!37516 m!68746))

(assert (=> b!62976 d!53122))

(declare-fun bs!37517 () Bool)

(declare-fun d!53124 () Bool)

(assert (= bs!37517 (and d!53124 d!53122)))

(declare-fun lambda!9155 () Int)

(assert (=> bs!37517 (= lambda!9155 lambda!9154)))

(declare-fun lt!11598 () Option!410)

(assert (=> d!53124 (= lt!11598 (headOption!7 (msgs!15 queue!179)))))

(declare-fun lt!11599 () Option!411)

(assert (=> d!53124 (= lt!11599 (tailOption!6 (msgs!15 queue!179)))))

(assert (=> d!53124 (= lt!11598 (_take!4 queue!179))))

(assert (=> d!53124 (= (take!16 queue!179) (tuple2!327 lt!11598 (MsgQueue!14 (queue!188 queue!179) (getOrElse!8 lt!11599 lambda!9155))))))

(declare-fun bs!37518 () Bool)

(assert (= bs!37518 d!53124))

(declare-fun m!68748 () Bool)

(assert (=> bs!37518 m!68748))

(declare-fun m!68750 () Bool)

(assert (=> bs!37518 m!68750))

(declare-fun m!68752 () Bool)

(assert (=> bs!37518 m!68752))

(declare-fun m!68754 () Bool)

(assert (=> bs!37518 m!68754))

(assert (=> b!62959 d!53124))

(declare-fun bs!37519 () Bool)

(declare-fun d!53126 () Bool)

(assert (= bs!37519 (and d!53126 d!53122)))

(declare-fun lambda!9156 () Int)

(assert (=> bs!37519 (= lambda!9156 lambda!9154)))

(declare-fun bs!37520 () Bool)

(assert (= bs!37520 (and d!53126 d!53124)))

(assert (=> bs!37520 (= lambda!9156 lambda!9155)))

(declare-fun lt!11600 () Option!410)

(assert (=> d!53126 (= lt!11600 (headOption!7 (msgs!15 queue!176)))))

(declare-fun lt!11601 () Option!411)

(assert (=> d!53126 (= lt!11601 (tailOption!6 (msgs!15 queue!176)))))

(assert (=> d!53126 (= lt!11600 (_take!4 queue!176))))

(assert (=> d!53126 (= (take!16 queue!176) (tuple2!327 lt!11600 (MsgQueue!14 (queue!188 queue!176) (getOrElse!8 lt!11601 lambda!9156))))))

(declare-fun bs!37521 () Bool)

(assert (= bs!37521 d!53126))

(declare-fun m!68756 () Bool)

(assert (=> bs!37521 m!68756))

(declare-fun m!68758 () Bool)

(assert (=> bs!37521 m!68758))

(declare-fun m!68760 () Bool)

(assert (=> bs!37521 m!68760))

(declare-fun m!68762 () Bool)

(assert (=> bs!37521 m!68762))

(assert (=> b!62957 d!53126))

(declare-fun d!53128 () Bool)

(assert (=> d!53128 (= (inv!1153 (v!2319 (_1!190 res!29105))) (= (mod (str.len (value!5175 (v!2319 (_1!190 res!29105)))) 2) 0))))

(assert (=> b!62946 d!53128))

(declare-fun d!53130 () Bool)

(declare-fun res!29307 () Bool)

(assert (=> d!53130 (= res!29307 (isEmpty!554 (msgs!15 queue!166)))))

(assert (=> d!53130 true))

(assert (=> d!53130 (= (isEmpty!552 queue!166) res!29307)))

(declare-fun bs!37522 () Bool)

(assert (= bs!37522 d!53130))

(declare-fun m!68764 () Bool)

(assert (=> bs!37522 m!68764))

(assert (=> start!9082 d!53130))

(declare-fun d!53132 () Bool)

(assert (=> d!53132 (= (inv!1153 (v!2319 b!62449)) (= (mod (str.len (value!5175 (v!2319 b!62449))) 2) 0))))

(assert (=> b!62974 d!53132))

(declare-fun d!53134 () Bool)

(assert (=> d!53134 (= (inv!1153 (v!2319 (_1!190 res!29098))) (= (mod (str.len (value!5175 (v!2319 (_1!190 res!29098)))) 2) 0))))

(assert (=> b!62951 d!53134))

(declare-fun d!53136 () Bool)

(assert (=> d!53136 (= (inv!1153 (v!2319 a!686)) (= (mod (str.len (value!5175 (v!2319 a!686))) 2) 0))))

(assert (=> b!62968 d!53136))

(declare-fun d!53138 () Bool)

(declare-fun lt!11602 () MsgQueue!13)

(assert (=> d!53138 (= lt!11602 (MsgQueue!14 (queue!188 queue!170) ($colon$colon!14 (msgs!15 queue!170) (String!962 "HHeelllloo"))))))

(assert (=> d!53138 (= (put!6 queue!170 (String!962 "HHeelllloo")) (tuple2!329 (_put!5 lt!11602 (String!962 "HHeelllloo")) lt!11602))))

(declare-fun bs!37523 () Bool)

(assert (= bs!37523 d!53138))

(declare-fun m!68766 () Bool)

(assert (=> bs!37523 m!68766))

(declare-fun m!68768 () Bool)

(assert (=> bs!37523 m!68768))

(assert (=> b!62972 d!53138))

(declare-fun b!62984 () Bool)

(declare-fun e!34028 () Bool)

(declare-fun tp!16674 () Bool)

(assert (=> b!62984 (= e!34028 (and (inv!1153 (h!781 (msgs!15 queue!166))) tp!16674))))

(assert (=> b!62969 (= tp!16667 e!34028)))

(assert (= (and b!62969 (is-Cons!537 (msgs!15 queue!166))) b!62984))

(declare-fun m!68770 () Bool)

(assert (=> b!62984 m!68770))

(declare-fun b!62985 () Bool)

(declare-fun e!34030 () Bool)

(declare-fun tp!16675 () Bool)

(assert (=> b!62985 (= e!34030 (and (inv!1153 (h!781 (msgs!15 queue!176))) tp!16675))))

(assert (=> b!62975 (= tp!16664 e!34030)))

(assert (= (and b!62975 (is-Cons!537 (msgs!15 queue!176))) b!62985))

(declare-fun m!68772 () Bool)

(assert (=> b!62985 m!68772))

(declare-fun b!62986 () Bool)

(declare-fun e!34032 () Bool)

(declare-fun tp!16676 () Bool)

(assert (=> b!62986 (= e!34032 (and (inv!1153 (h!781 (msgs!15 queue!173))) tp!16676))))

(assert (=> b!62947 (= tp!16663 e!34032)))

(assert (= (and b!62947 (is-Cons!537 (msgs!15 queue!173))) b!62986))

(declare-fun m!68774 () Bool)

(assert (=> b!62986 m!68774))

(declare-fun b!62987 () Bool)

(declare-fun e!34034 () Bool)

(declare-fun tp!16677 () Bool)

(assert (=> b!62987 (= e!34034 (and (inv!1153 (h!781 (msgs!15 (_2!191 res!29095)))) tp!16677))))

(assert (=> b!62955 (= tp!16655 e!34034)))

(assert (= (and b!62955 (is-Cons!537 (msgs!15 (_2!191 res!29095)))) b!62987))

(declare-fun m!68776 () Bool)

(assert (=> b!62987 m!68776))

(declare-fun b!62988 () Bool)

(declare-fun e!34036 () Bool)

(declare-fun tp!16678 () Bool)

(assert (=> b!62988 (= e!34036 (and (inv!1153 (h!781 (msgs!15 (_2!191 t!47361)))) tp!16678))))

(assert (=> b!62962 (= tp!16668 e!34036)))

(assert (= (and b!62962 (is-Cons!537 (msgs!15 (_2!191 t!47361)))) b!62988))

(declare-fun m!68778 () Bool)

(assert (=> b!62988 m!68778))

(declare-fun b!62989 () Bool)

(declare-fun e!34038 () Bool)

(declare-fun tp!16679 () Bool)

(assert (=> b!62989 (= e!34038 (and (inv!1153 (h!781 (msgs!15 (_2!190 res!29098)))) tp!16679))))

(assert (=> b!62944 (= tp!16671 e!34038)))

(assert (= (and b!62944 (is-Cons!537 (msgs!15 (_2!190 res!29098)))) b!62989))

(declare-fun m!68780 () Bool)

(assert (=> b!62989 m!68780))

(declare-fun b!62990 () Bool)

(declare-fun e!34040 () Bool)

(declare-fun tp!16680 () Bool)

(assert (=> b!62990 (= e!34040 (and (inv!1153 (h!781 (msgs!15 (_2!191 t!47362)))) tp!16680))))

(assert (=> b!62979 (= tp!16665 e!34040)))

(assert (= (and b!62979 (is-Cons!537 (msgs!15 (_2!191 t!47362)))) b!62990))

(declare-fun m!68782 () Bool)

(assert (=> b!62990 m!68782))

(declare-fun b!62991 () Bool)

(declare-fun e!34042 () Bool)

(declare-fun tp!16681 () Bool)

(assert (=> b!62991 (= e!34042 (and (inv!1153 (h!781 (msgs!15 (_2!190 res!29105)))) tp!16681))))

(assert (=> b!62956 (= tp!16656 e!34042)))

(assert (= (and b!62956 (is-Cons!537 (msgs!15 (_2!190 res!29105)))) b!62991))

(declare-fun m!68784 () Bool)

(assert (=> b!62991 m!68784))

(declare-fun b!62992 () Bool)

(declare-fun e!34044 () Bool)

(declare-fun tp!16682 () Bool)

(assert (=> b!62992 (= e!34044 (and (inv!1153 (h!781 (msgs!15 (_2!191 res!29093)))) tp!16682))))

(assert (=> b!62964 (= tp!16657 e!34044)))

(assert (= (and b!62964 (is-Cons!537 (msgs!15 (_2!191 res!29093)))) b!62992))

(declare-fun m!68786 () Bool)

(assert (=> b!62992 m!68786))

(declare-fun b!62993 () Bool)

(declare-fun e!34046 () Bool)

(declare-fun tp!16683 () Bool)

(assert (=> b!62993 (= e!34046 (and (inv!1153 (h!781 (msgs!15 queue!170))) tp!16683))))

(assert (=> b!62958 (= tp!16661 e!34046)))

(assert (= (and b!62958 (is-Cons!537 (msgs!15 queue!170))) b!62993))

(declare-fun m!68788 () Bool)

(assert (=> b!62993 m!68788))

(declare-fun b!62994 () Bool)

(declare-fun e!34048 () Bool)

(declare-fun tp!16684 () Bool)

(assert (=> b!62994 (= e!34048 (and (inv!1153 (h!781 (msgs!15 queue!179))) tp!16684))))

(assert (=> b!62965 (= tp!16659 e!34048)))

(assert (= (and b!62965 (is-Cons!537 (msgs!15 queue!179))) b!62994))

(declare-fun m!68790 () Bool)

(assert (=> b!62994 m!68790))

(declare-fun b!62995 () Bool)

(declare-fun e!34050 () Bool)

(declare-fun tp!16685 () Bool)

(assert (=> b!62995 (= e!34050 (and (inv!1153 (h!781 (msgs!15 (_2!191 t!47359)))) tp!16685))))

(assert (=> b!62948 (= tp!16658 e!34050)))

(assert (= (and b!62948 (is-Cons!537 (msgs!15 (_2!191 t!47359)))) b!62995))

(declare-fun m!68792 () Bool)

(assert (=> b!62995 m!68792))

(declare-fun b!62996 () Bool)

(declare-fun e!34052 () Bool)

(declare-fun tp!16686 () Bool)

(assert (=> b!62996 (= e!34052 (and (inv!1153 (h!781 (msgs!15 queue!182))) tp!16686))))

(assert (=> b!62973 (= tp!16669 e!34052)))

(assert (= (and b!62973 (is-Cons!537 (msgs!15 queue!182))) b!62996))

(declare-fun m!68794 () Bool)

(assert (=> b!62996 m!68794))

(declare-fun b!62997 () Bool)

(declare-fun e!34054 () Bool)

(declare-fun tp!16687 () Bool)

(assert (=> b!62997 (= e!34054 (and (inv!1153 (h!781 (msgs!15 queue!167))) tp!16687))))

(assert (=> b!62953 (= tp!16662 e!34054)))

(assert (= (and b!62953 (is-Cons!537 (msgs!15 queue!167))) b!62997))

(declare-fun m!68796 () Bool)

(assert (=> b!62997 m!68796))

(declare-fun b!62998 () Bool)

(declare-fun e!34056 () Bool)

(declare-fun tp!16688 () Bool)

(assert (=> b!62998 (= e!34056 (and (inv!1153 (h!781 (msgs!15 (_2!191 t!47360)))) tp!16688))))

(assert (=> b!62943 (= tp!16670 e!34056)))

(assert (= (and b!62943 (is-Cons!537 (msgs!15 (_2!191 t!47360)))) b!62998))

(declare-fun m!68798 () Bool)

(assert (=> b!62998 m!68798))

(declare-fun b!62999 () Bool)

(declare-fun e!34058 () Bool)

(declare-fun tp!16689 () Bool)

(assert (=> b!62999 (= e!34058 (and (inv!1153 (h!781 (msgs!15 (_2!190 res!29101)))) tp!16689))))

(assert (=> b!62971 (= tp!16666 e!34058)))

(assert (= (and b!62971 (is-Cons!537 (msgs!15 (_2!190 res!29101)))) b!62999))

(declare-fun m!68800 () Bool)

(assert (=> b!62999 m!68800))

(declare-fun b!63000 () Bool)

(declare-fun e!34060 () Bool)

(declare-fun tp!16690 () Bool)

(assert (=> b!63000 (= e!34060 (and (inv!1153 (h!781 (msgs!15 (_2!191 t!47363)))) tp!16690))))

(assert (=> b!62961 (= tp!16660 e!34060)))

(assert (= (and b!62961 (is-Cons!537 (msgs!15 (_2!191 t!47363)))) b!63000))

(declare-fun m!68802 () Bool)

(assert (=> b!63000 m!68802))

(push 1)

(assert (not d!53130))

(assert (not d!53124))

(assert (not b!62994))

(assert (not b!62987))

(assert (not b!62999))

(assert (not d!53138))

(assert (not b!62997))

(assert (not b!63000))

(assert (not b!62990))

(assert (not b!62985))

(assert (not d!53120))

(assert (not b!62992))

(assert (not d!53110))

(assert (not d!53112))

(assert (not b!62996))

(assert (not b!62991))

(assert (not b!62995))

(assert (not d!53122))

(assert (not b!62984))

(assert (not b!62989))

(assert (not d!53126))

(assert (not b!62993))

(assert (not b!62988))

(assert (not b!62986))

(assert (not d!53114))

(assert (not b!62998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53140 () Bool)

(assert (=> d!53140 (= (inv!1153 (h!781 (msgs!15 (_2!191 t!47361)))) (= (mod (str.len (value!5175 (h!781 (msgs!15 (_2!191 t!47361))))) 2) 0))))

(assert (=> b!62988 d!53140))

(declare-fun d!53142 () Bool)

(assert (=> d!53142 (= (inv!1153 (h!781 (msgs!15 queue!166))) (= (mod (str.len (value!5175 (h!781 (msgs!15 queue!166)))) 2) 0))))

(assert (=> b!62984 d!53142))

(declare-fun d!53144 () Bool)

(assert (=> d!53144 (= (inv!1153 (h!781 (msgs!15 (_2!191 res!29095)))) (= (mod (str.len (value!5175 (h!781 (msgs!15 (_2!191 res!29095))))) 2) 0))))

(assert (=> b!62987 d!53144))

(declare-fun d!53146 () Bool)

(declare-fun lt!11605 () Option!410)

(assert (=> d!53146 (not (= (isDefined!16 lt!11605) (isEmpty!554 (msgs!15 queue!179))))))

(assert (=> d!53146 (= lt!11605 (ite (is-Cons!537 (msgs!15 queue!179)) (Some!389 (h!781 (msgs!15 queue!179))) None!390))))

(assert (=> d!53146 (= (headOption!7 (msgs!15 queue!179)) lt!11605)))

(declare-fun bs!37524 () Bool)

(assert (= bs!37524 d!53146))

(declare-fun m!68804 () Bool)

(assert (=> bs!37524 m!68804))

(assert (=> bs!37524 m!68732))

(assert (=> d!53124 d!53146))

(declare-fun d!53148 () Bool)

(declare-fun lt!11608 () Option!411)

(declare-fun isDefined!17 (Option!411) Bool)

(assert (=> d!53148 (not (= (isDefined!17 lt!11608) (isEmpty!554 (msgs!15 queue!179))))))

(assert (=> d!53148 (= lt!11608 (ite (is-Cons!537 (msgs!15 queue!179)) (Some!390 (t!47374 (msgs!15 queue!179))) None!391))))

(assert (=> d!53148 (= (tailOption!6 (msgs!15 queue!179)) lt!11608)))

(declare-fun bs!37525 () Bool)

(assert (= bs!37525 d!53148))

(declare-fun m!68806 () Bool)

(assert (=> bs!37525 m!68806))

(assert (=> bs!37525 m!68732))

(assert (=> d!53124 d!53148))

(declare-fun d!53150 () Bool)

(declare-fun res!29310 () Option!410)

(assert (=> d!53150 (= res!29310 (headOption!7 (msgs!15 queue!179)))))

(declare-fun e!34066 () Bool)

(assert (=> d!53150 e!34066))

(assert (=> d!53150 (= (_take!4 queue!179) res!29310)))

(declare-fun b!63003 () Bool)

(assert (=> b!63003 (= e!34066 (inv!1153 (v!2319 res!29310)))))

(assert (= (and d!53150 (is-Some!389 res!29310)) b!63003))

(assert (=> d!53150 m!68748))

(declare-fun m!68808 () Bool)

(assert (=> b!63003 m!68808))

(assert (=> d!53124 d!53150))

(declare-fun d!53152 () Bool)

(declare-fun c!13686 () Bool)

(assert (=> d!53152 (= c!13686 (is-Some!390 lt!11599))))

(declare-fun e!34070 () List!576)

(assert (=> d!53152 (= (getOrElse!8 lt!11599 lambda!9155) e!34070)))

(declare-fun b!63008 () Bool)

(assert (=> b!63008 (= e!34070 (v!2320 lt!11599))))

(declare-fun b!63009 () Bool)

(declare-fun dynLambda!951 (Int) List!576)

(assert (=> b!63009 (= e!34070 (dynLambda!951 lambda!9155))))

(assert (= (and d!53152 c!13686) b!63008))

(assert (= (and d!53152 (not c!13686)) b!63009))

(declare-fun b_lambda!15715 () Bool)

(assert (=> (not b_lambda!15715) (not b!63009)))

(declare-fun m!68810 () Bool)

(assert (=> b!63009 m!68810))

(assert (=> d!53124 d!53152))

(declare-fun d!53154 () Bool)

(declare-fun lt!11609 () Option!410)

(assert (=> d!53154 (not (= (isDefined!16 lt!11609) (isEmpty!554 (msgs!15 queue!173))))))

(assert (=> d!53154 (= lt!11609 (ite (is-Cons!537 (msgs!15 queue!173)) (Some!389 (h!781 (msgs!15 queue!173))) None!390))))

(assert (=> d!53154 (= (headOption!7 (msgs!15 queue!173)) lt!11609)))

(declare-fun bs!37526 () Bool)

(assert (= bs!37526 d!53154))

(declare-fun m!68812 () Bool)

(assert (=> bs!37526 m!68812))

(assert (=> bs!37526 m!68734))

(assert (=> d!53122 d!53154))

(declare-fun d!53156 () Bool)

(declare-fun lt!11610 () Option!411)

(assert (=> d!53156 (not (= (isDefined!17 lt!11610) (isEmpty!554 (msgs!15 queue!173))))))

(assert (=> d!53156 (= lt!11610 (ite (is-Cons!537 (msgs!15 queue!173)) (Some!390 (t!47374 (msgs!15 queue!173))) None!391))))

(assert (=> d!53156 (= (tailOption!6 (msgs!15 queue!173)) lt!11610)))

(declare-fun bs!37527 () Bool)

(assert (= bs!37527 d!53156))

(declare-fun m!68814 () Bool)

(assert (=> bs!37527 m!68814))

(assert (=> bs!37527 m!68734))

(assert (=> d!53122 d!53156))

(declare-fun d!53158 () Bool)

(declare-fun res!29311 () Option!410)

(assert (=> d!53158 (= res!29311 (headOption!7 (msgs!15 queue!173)))))

(declare-fun e!34071 () Bool)

(assert (=> d!53158 e!34071))

(assert (=> d!53158 (= (_take!4 queue!173) res!29311)))

(declare-fun b!63010 () Bool)

(assert (=> b!63010 (= e!34071 (inv!1153 (v!2319 res!29311)))))

(assert (= (and d!53158 (is-Some!389 res!29311)) b!63010))

(assert (=> d!53158 m!68740))

(declare-fun m!68816 () Bool)

(assert (=> b!63010 m!68816))

(assert (=> d!53122 d!53158))

(declare-fun d!53160 () Bool)

(declare-fun c!13687 () Bool)

(assert (=> d!53160 (= c!13687 (is-Some!390 lt!11597))))

(declare-fun e!34073 () List!576)

(assert (=> d!53160 (= (getOrElse!8 lt!11597 lambda!9154) e!34073)))

(declare-fun b!63011 () Bool)

(assert (=> b!63011 (= e!34073 (v!2320 lt!11597))))

(declare-fun b!63012 () Bool)

(assert (=> b!63012 (= e!34073 (dynLambda!951 lambda!9154))))

(assert (= (and d!53160 c!13687) b!63011))

(assert (= (and d!53160 (not c!13687)) b!63012))

(declare-fun b_lambda!15717 () Bool)

(assert (=> (not b_lambda!15717) (not b!63012)))

(declare-fun m!68818 () Bool)

(assert (=> b!63012 m!68818))

(assert (=> d!53122 d!53160))

(declare-fun d!53162 () Bool)

(assert (=> d!53162 (= (isEmpty!553 c!13672) (not (is-Some!389 c!13672)))))

(assert (=> d!53110 d!53162))

(declare-fun d!53164 () Bool)

(assert (=> d!53164 (= (isEmpty!554 (msgs!15 queue!166)) (is-Nil!538 (msgs!15 queue!166)))))

(assert (=> d!53130 d!53164))

(declare-fun d!53166 () Bool)

(assert (=> d!53166 (= (inv!1153 (h!781 (msgs!15 (_2!191 t!47362)))) (= (mod (str.len (value!5175 (h!781 (msgs!15 (_2!191 t!47362))))) 2) 0))))

(assert (=> b!62990 d!53166))

(declare-fun d!53168 () Bool)

(assert (=> d!53168 (= (inv!1153 (h!781 (msgs!15 queue!179))) (= (mod (str.len (value!5175 (h!781 (msgs!15 queue!179)))) 2) 0))))

(assert (=> b!62994 d!53168))

(declare-fun d!53170 () Bool)

(assert (=> d!53170 (= (inv!1153 (h!781 (msgs!15 queue!173))) (= (mod (str.len (value!5175 (h!781 (msgs!15 queue!173)))) 2) 0))))

(assert (=> b!62986 d!53170))

(declare-fun d!53172 () Bool)

(assert (=> d!53172 (= (inv!1153 (h!781 (msgs!15 (_2!190 res!29105)))) (= (mod (str.len (value!5175 (h!781 (msgs!15 (_2!190 res!29105))))) 2) 0))))

(assert (=> b!62991 d!53172))

(declare-fun d!53174 () Bool)

(assert (=> d!53174 (= (inv!1153 (h!781 (msgs!15 (_2!191 t!47363)))) (= (mod (str.len (value!5175 (h!781 (msgs!15 (_2!191 t!47363))))) 2) 0))))

(assert (=> b!63000 d!53174))

(declare-fun d!53176 () Bool)

(assert (=> d!53176 (= (isEmpty!554 (msgs!15 queue!173)) (is-Nil!538 (msgs!15 queue!173)))))

(assert (=> d!53114 d!53176))

(declare-fun d!53178 () Bool)

(assert (=> d!53178 (= ($colon$colon!14 (msgs!15 queue!170) (String!962 "HHeelllloo")) (Cons!537 (String!962 "HHeelllloo") (msgs!15 queue!170)))))

(assert (=> d!53138 d!53178))

(declare-fun d!53180 () Bool)

(assert (=> d!53180 true))

(assert (=> d!53180 true))

(declare-fun res!29314 () Unit!1047)

(assert (=> d!53180 (= (_put!5 lt!11602 (String!962 "HHeelllloo")) res!29314)))

(assert (=> d!53138 d!53180))

(declare-fun d!53182 () Bool)

(assert (=> d!53182 (= (inv!1153 (h!781 (msgs!15 (_2!191 res!29093)))) (= (mod (str.len (value!5175 (h!781 (msgs!15 (_2!191 res!29093))))) 2) 0))))

(assert (=> b!62992 d!53182))

(declare-fun d!53184 () Bool)

(assert (=> d!53184 (= (inv!1153 (h!781 (msgs!15 queue!176))) (= (mod (str.len (value!5175 (h!781 (msgs!15 queue!176)))) 2) 0))))

(assert (=> b!62985 d!53184))

(declare-fun d!53186 () Bool)

(assert (=> d!53186 (= (inv!1153 (h!781 (msgs!15 queue!182))) (= (mod (str.len (value!5175 (h!781 (msgs!15 queue!182)))) 2) 0))))

(assert (=> b!62996 d!53186))

(declare-fun d!53188 () Bool)

(assert (=> d!53188 (= (inv!1153 (h!781 (msgs!15 (_2!190 res!29101)))) (= (mod (str.len (value!5175 (h!781 (msgs!15 (_2!190 res!29101))))) 2) 0))))

(assert (=> b!62999 d!53188))

(declare-fun d!53190 () Bool)

(assert (=> d!53190 (= (inv!1153 (h!781 (msgs!15 queue!170))) (= (mod (str.len (value!5175 (h!781 (msgs!15 queue!170)))) 2) 0))))

(assert (=> b!62993 d!53190))

(declare-fun d!53192 () Bool)

(assert (=> d!53192 (= (inv!1153 (h!781 (msgs!15 (_2!190 res!29098)))) (= (mod (str.len (value!5175 (h!781 (msgs!15 (_2!190 res!29098))))) 2) 0))))

(assert (=> b!62989 d!53192))

(declare-fun d!53194 () Bool)

(assert (=> d!53194 (= ($colon$colon!14 (msgs!15 queue!167) (String!962 "WWoorrlldd")) (Cons!537 (String!962 "WWoorrlldd") (msgs!15 queue!167)))))

(assert (=> d!53120 d!53194))

(declare-fun d!53196 () Bool)

(assert (=> d!53196 true))

(assert (=> d!53196 true))

(declare-fun res!29315 () Unit!1047)

(assert (=> d!53196 (= (_put!5 lt!11591 (String!962 "WWoorrlldd")) res!29315)))

(assert (=> d!53120 d!53196))

(declare-fun d!53198 () Bool)

(assert (=> d!53198 (= (inv!1153 (h!781 (msgs!15 (_2!191 t!47360)))) (= (mod (str.len (value!5175 (h!781 (msgs!15 (_2!191 t!47360))))) 2) 0))))

(assert (=> b!62998 d!53198))

(declare-fun d!53200 () Bool)

(assert (=> d!53200 (= (inv!1153 (h!781 (msgs!15 queue!167))) (= (mod (str.len (value!5175 (h!781 (msgs!15 queue!167)))) 2) 0))))

(assert (=> b!62997 d!53200))

(declare-fun d!53202 () Bool)

(assert (=> d!53202 (= (isEmpty!554 (msgs!15 queue!179)) (is-Nil!538 (msgs!15 queue!179)))))

(assert (=> d!53112 d!53202))

(declare-fun d!53204 () Bool)

(assert (=> d!53204 (= (inv!1153 (h!781 (msgs!15 (_2!191 t!47359)))) (= (mod (str.len (value!5175 (h!781 (msgs!15 (_2!191 t!47359))))) 2) 0))))

(assert (=> b!62995 d!53204))

(declare-fun d!53206 () Bool)

(declare-fun lt!11611 () Option!410)

(assert (=> d!53206 (not (= (isDefined!16 lt!11611) (isEmpty!554 (msgs!15 queue!176))))))

(assert (=> d!53206 (= lt!11611 (ite (is-Cons!537 (msgs!15 queue!176)) (Some!389 (h!781 (msgs!15 queue!176))) None!390))))

(assert (=> d!53206 (= (headOption!7 (msgs!15 queue!176)) lt!11611)))

(declare-fun bs!37528 () Bool)

(assert (= bs!37528 d!53206))

(declare-fun m!68820 () Bool)

(assert (=> bs!37528 m!68820))

(declare-fun m!68822 () Bool)

(assert (=> bs!37528 m!68822))

(assert (=> d!53126 d!53206))

(declare-fun d!53208 () Bool)

(declare-fun lt!11612 () Option!411)

(assert (=> d!53208 (not (= (isDefined!17 lt!11612) (isEmpty!554 (msgs!15 queue!176))))))

(assert (=> d!53208 (= lt!11612 (ite (is-Cons!537 (msgs!15 queue!176)) (Some!390 (t!47374 (msgs!15 queue!176))) None!391))))

(assert (=> d!53208 (= (tailOption!6 (msgs!15 queue!176)) lt!11612)))

(declare-fun bs!37529 () Bool)

(assert (= bs!37529 d!53208))

(declare-fun m!68824 () Bool)

(assert (=> bs!37529 m!68824))

(assert (=> bs!37529 m!68822))

(assert (=> d!53126 d!53208))

(declare-fun d!53210 () Bool)

(declare-fun res!29316 () Option!410)

(assert (=> d!53210 (= res!29316 (headOption!7 (msgs!15 queue!176)))))

(declare-fun e!34074 () Bool)

(assert (=> d!53210 e!34074))

(assert (=> d!53210 (= (_take!4 queue!176) res!29316)))

(declare-fun b!63013 () Bool)

(assert (=> b!63013 (= e!34074 (inv!1153 (v!2319 res!29316)))))

(assert (= (and d!53210 (is-Some!389 res!29316)) b!63013))

(assert (=> d!53210 m!68756))

(declare-fun m!68826 () Bool)

(assert (=> b!63013 m!68826))

(assert (=> d!53126 d!53210))

(declare-fun d!53212 () Bool)

(declare-fun c!13688 () Bool)

(assert (=> d!53212 (= c!13688 (is-Some!390 lt!11601))))

(declare-fun e!34076 () List!576)

(assert (=> d!53212 (= (getOrElse!8 lt!11601 lambda!9156) e!34076)))

(declare-fun b!63014 () Bool)

(assert (=> b!63014 (= e!34076 (v!2320 lt!11601))))

(declare-fun b!63015 () Bool)

(assert (=> b!63015 (= e!34076 (dynLambda!951 lambda!9156))))

(assert (= (and d!53212 c!13688) b!63014))

(assert (= (and d!53212 (not c!13688)) b!63015))

(declare-fun b_lambda!15719 () Bool)

(assert (=> (not b_lambda!15719) (not b!63015)))

(declare-fun m!68828 () Bool)

(assert (=> b!63015 m!68828))

(assert (=> d!53126 d!53212))

(declare-fun b!63016 () Bool)

(declare-fun e!34077 () Bool)

(declare-fun tp!16691 () Bool)

(assert (=> b!63016 (= e!34077 (and (inv!1153 (h!781 (t!47374 (msgs!15 (_2!191 t!47361))))) tp!16691))))

(assert (=> b!62988 (= tp!16678 e!34077)))

(assert (= (and b!62988 (is-Cons!537 (t!47374 (msgs!15 (_2!191 t!47361))))) b!63016))

(declare-fun m!68830 () Bool)

(assert (=> b!63016 m!68830))

(declare-fun b!63017 () Bool)

(declare-fun e!34079 () Bool)

(declare-fun tp!16692 () Bool)

(assert (=> b!63017 (= e!34079 (and (inv!1153 (h!781 (t!47374 (msgs!15 queue!166)))) tp!16692))))

(assert (=> b!62984 (= tp!16674 e!34079)))

(assert (= (and b!62984 (is-Cons!537 (t!47374 (msgs!15 queue!166)))) b!63017))

(declare-fun m!68832 () Bool)

(assert (=> b!63017 m!68832))

(declare-fun b!63018 () Bool)

(declare-fun e!34081 () Bool)

(declare-fun tp!16693 () Bool)

(assert (=> b!63018 (= e!34081 (and (inv!1153 (h!781 (t!47374 (msgs!15 (_2!191 res!29095))))) tp!16693))))

(assert (=> b!62987 (= tp!16677 e!34081)))

(assert (= (and b!62987 (is-Cons!537 (t!47374 (msgs!15 (_2!191 res!29095))))) b!63018))

(declare-fun m!68834 () Bool)

(assert (=> b!63018 m!68834))

(declare-fun b!63019 () Bool)

(declare-fun e!34083 () Bool)

(declare-fun tp!16694 () Bool)

(assert (=> b!63019 (= e!34083 (and (inv!1153 (h!781 (t!47374 (msgs!15 (_2!191 t!47362))))) tp!16694))))

(assert (=> b!62990 (= tp!16680 e!34083)))

(assert (= (and b!62990 (is-Cons!537 (t!47374 (msgs!15 (_2!191 t!47362))))) b!63019))

(declare-fun m!68836 () Bool)

(assert (=> b!63019 m!68836))

(declare-fun b!63020 () Bool)

(declare-fun e!34085 () Bool)

(declare-fun tp!16695 () Bool)

(assert (=> b!63020 (= e!34085 (and (inv!1153 (h!781 (t!47374 (msgs!15 queue!179)))) tp!16695))))

(assert (=> b!62994 (= tp!16684 e!34085)))

(assert (= (and b!62994 (is-Cons!537 (t!47374 (msgs!15 queue!179)))) b!63020))

(declare-fun m!68838 () Bool)

(assert (=> b!63020 m!68838))

(declare-fun b!63021 () Bool)

(declare-fun e!34087 () Bool)

(declare-fun tp!16696 () Bool)

(assert (=> b!63021 (= e!34087 (and (inv!1153 (h!781 (t!47374 (msgs!15 queue!173)))) tp!16696))))

(assert (=> b!62986 (= tp!16676 e!34087)))

(assert (= (and b!62986 (is-Cons!537 (t!47374 (msgs!15 queue!173)))) b!63021))

(declare-fun m!68840 () Bool)

(assert (=> b!63021 m!68840))

(declare-fun b!63022 () Bool)

(declare-fun e!34089 () Bool)

(declare-fun tp!16697 () Bool)

(assert (=> b!63022 (= e!34089 (and (inv!1153 (h!781 (t!47374 (msgs!15 (_2!190 res!29105))))) tp!16697))))

(assert (=> b!62991 (= tp!16681 e!34089)))

(assert (= (and b!62991 (is-Cons!537 (t!47374 (msgs!15 (_2!190 res!29105))))) b!63022))

(declare-fun m!68842 () Bool)

(assert (=> b!63022 m!68842))

(declare-fun b!63023 () Bool)

(declare-fun e!34091 () Bool)

(declare-fun tp!16698 () Bool)

(assert (=> b!63023 (= e!34091 (and (inv!1153 (h!781 (t!47374 (msgs!15 (_2!191 t!47363))))) tp!16698))))

(assert (=> b!63000 (= tp!16690 e!34091)))

(assert (= (and b!63000 (is-Cons!537 (t!47374 (msgs!15 (_2!191 t!47363))))) b!63023))

(declare-fun m!68844 () Bool)

(assert (=> b!63023 m!68844))

(declare-fun b!63024 () Bool)

(declare-fun e!34093 () Bool)

(declare-fun tp!16699 () Bool)

(assert (=> b!63024 (= e!34093 (and (inv!1153 (h!781 (t!47374 (msgs!15 (_2!191 res!29093))))) tp!16699))))

(assert (=> b!62992 (= tp!16682 e!34093)))

(assert (= (and b!62992 (is-Cons!537 (t!47374 (msgs!15 (_2!191 res!29093))))) b!63024))

(declare-fun m!68846 () Bool)

(assert (=> b!63024 m!68846))

(declare-fun b!63025 () Bool)

(declare-fun e!34095 () Bool)

(declare-fun tp!16700 () Bool)

(assert (=> b!63025 (= e!34095 (and (inv!1153 (h!781 (t!47374 (msgs!15 queue!176)))) tp!16700))))

(assert (=> b!62985 (= tp!16675 e!34095)))

(assert (= (and b!62985 (is-Cons!537 (t!47374 (msgs!15 queue!176)))) b!63025))

(declare-fun m!68848 () Bool)

(assert (=> b!63025 m!68848))

(declare-fun b!63026 () Bool)

(declare-fun e!34097 () Bool)

(declare-fun tp!16701 () Bool)

(assert (=> b!63026 (= e!34097 (and (inv!1153 (h!781 (t!47374 (msgs!15 queue!182)))) tp!16701))))

(assert (=> b!62996 (= tp!16686 e!34097)))

(assert (= (and b!62996 (is-Cons!537 (t!47374 (msgs!15 queue!182)))) b!63026))

(declare-fun m!68850 () Bool)

(assert (=> b!63026 m!68850))

(declare-fun b!63027 () Bool)

(declare-fun e!34099 () Bool)

(declare-fun tp!16702 () Bool)

(assert (=> b!63027 (= e!34099 (and (inv!1153 (h!781 (t!47374 (msgs!15 (_2!190 res!29101))))) tp!16702))))

(assert (=> b!62999 (= tp!16689 e!34099)))

(assert (= (and b!62999 (is-Cons!537 (t!47374 (msgs!15 (_2!190 res!29101))))) b!63027))

(declare-fun m!68852 () Bool)

(assert (=> b!63027 m!68852))

(declare-fun b!63028 () Bool)

(declare-fun e!34101 () Bool)

(declare-fun tp!16703 () Bool)

(assert (=> b!63028 (= e!34101 (and (inv!1153 (h!781 (t!47374 (msgs!15 queue!170)))) tp!16703))))

(assert (=> b!62993 (= tp!16683 e!34101)))

(assert (= (and b!62993 (is-Cons!537 (t!47374 (msgs!15 queue!170)))) b!63028))

(declare-fun m!68854 () Bool)

(assert (=> b!63028 m!68854))

(declare-fun b!63029 () Bool)

(declare-fun e!34103 () Bool)

(declare-fun tp!16704 () Bool)

(assert (=> b!63029 (= e!34103 (and (inv!1153 (h!781 (t!47374 (msgs!15 (_2!190 res!29098))))) tp!16704))))

(assert (=> b!62989 (= tp!16679 e!34103)))

(assert (= (and b!62989 (is-Cons!537 (t!47374 (msgs!15 (_2!190 res!29098))))) b!63029))

(declare-fun m!68856 () Bool)

(assert (=> b!63029 m!68856))

(declare-fun b!63030 () Bool)

(declare-fun e!34105 () Bool)

(declare-fun tp!16705 () Bool)

(assert (=> b!63030 (= e!34105 (and (inv!1153 (h!781 (t!47374 (msgs!15 (_2!191 t!47360))))) tp!16705))))

(assert (=> b!62998 (= tp!16688 e!34105)))

(assert (= (and b!62998 (is-Cons!537 (t!47374 (msgs!15 (_2!191 t!47360))))) b!63030))

(declare-fun m!68858 () Bool)

(assert (=> b!63030 m!68858))

(declare-fun b!63031 () Bool)

(declare-fun e!34107 () Bool)

(declare-fun tp!16706 () Bool)

(assert (=> b!63031 (= e!34107 (and (inv!1153 (h!781 (t!47374 (msgs!15 queue!167)))) tp!16706))))

(assert (=> b!62997 (= tp!16687 e!34107)))

(assert (= (and b!62997 (is-Cons!537 (t!47374 (msgs!15 queue!167)))) b!63031))

(declare-fun m!68860 () Bool)

(assert (=> b!63031 m!68860))

(declare-fun b!63032 () Bool)

(declare-fun e!34109 () Bool)

(declare-fun tp!16707 () Bool)

(assert (=> b!63032 (= e!34109 (and (inv!1153 (h!781 (t!47374 (msgs!15 (_2!191 t!47359))))) tp!16707))))

(assert (=> b!62995 (= tp!16685 e!34109)))

(assert (= (and b!62995 (is-Cons!537 (t!47374 (msgs!15 (_2!191 t!47359))))) b!63032))

(declare-fun m!68862 () Bool)

(assert (=> b!63032 m!68862))

(declare-fun b_lambda!15721 () Bool)

(assert (= b_lambda!15719 (or d!53126 b_lambda!15721)))

(declare-fun bs!37530 () Bool)

(declare-fun d!53214 () Bool)

(assert (= bs!37530 (and d!53214 d!53126)))

(assert (=> bs!37530 (= (dynLambda!951 lambda!9156) Nil!538)))

(assert (=> b!63015 d!53214))

(declare-fun b_lambda!15723 () Bool)

(assert (= b_lambda!15715 (or d!53124 b_lambda!15723)))

(declare-fun bs!37531 () Bool)

(declare-fun d!53216 () Bool)

(assert (= bs!37531 (and d!53216 d!53124)))

(assert (=> bs!37531 (= (dynLambda!951 lambda!9155) Nil!538)))

(assert (=> b!63009 d!53216))

(declare-fun b_lambda!15725 () Bool)

(assert (= b_lambda!15717 (or d!53122 b_lambda!15725)))

(declare-fun bs!37532 () Bool)

(declare-fun d!53218 () Bool)

(assert (= bs!37532 (and d!53218 d!53122)))

(assert (=> bs!37532 (= (dynLambda!951 lambda!9154) Nil!538)))

(assert (=> b!63012 d!53218))

(push 1)

(assert (not b!63019))

(assert (not b!63027))

(assert (not b!63023))

(assert (not b!63021))

(assert (not b!63024))

(assert (not b!63032))

(assert (not d!53154))

(assert (not b!63026))

(assert (not b!63003))

(assert (not b!63030))

(assert (not b!63013))

(assert (not b!63028))

(assert (not b_lambda!15725))

(assert (not b!63016))

(assert (not b!63022))

(assert (not b_lambda!15723))

(assert (not d!53146))

(assert (not d!53156))

(assert (not d!53150))

(assert (not d!53210))

(assert (not b!63020))

(assert (not b!63018))

(assert (not b!63031))

(assert (not d!53208))

(assert (not b!63010))

(assert (not b!63029))

(assert (not b_lambda!15721))

(assert (not b!63025))

(assert (not d!53158))

(assert (not d!53148))

(assert (not b!63017))

(assert (not d!53206))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

