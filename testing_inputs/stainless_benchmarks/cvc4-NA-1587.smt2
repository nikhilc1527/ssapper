; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11022 () Bool)

(assert start!11022)

(declare-fun b_free!7359 () Bool)

(declare-fun b_next!39281 () Bool)

(assert (=> start!11022 (= b_free!7359 (not b_next!39281))))

(declare-fun tp!16955 () Bool)

(declare-fun b_and!58889 () Bool)

(assert (=> start!11022 (= tp!16955 b_and!58889)))

(declare-fun b_free!7361 () Bool)

(declare-fun b_next!39283 () Bool)

(assert (=> start!11022 (= b_free!7361 (not b_next!39283))))

(declare-fun tp!16957 () Bool)

(declare-fun b_and!58891 () Bool)

(assert (=> start!11022 (= tp!16957 b_and!58891)))

(declare-fun b_free!7363 () Bool)

(declare-fun b_next!39285 () Bool)

(assert (=> start!11022 (= b_free!7363 (not b_next!39285))))

(declare-fun tp!16956 () Bool)

(declare-fun b_and!58893 () Bool)

(assert (=> start!11022 (= tp!16956 b_and!58893)))

(declare-fun b!84099 () Bool)

(assert (=> b!84099 true))

(declare-fun p1!135 () Int)

(declare-fun lambda!10467 () Int)

(declare-fun b_next!39287 () Bool)

(assert (=> start!11022 (= b_next!39281 (or (and b!84099 (= lambda!10467 p1!135)) b_next!39287))))

(declare-fun p2!130 () Int)

(declare-fun b_next!39289 () Bool)

(assert (=> start!11022 (= b_next!39283 (or (and b!84099 (= lambda!10467 p2!130)) b_next!39289))))

(declare-fun b_next!39291 () Bool)

(declare-fun p!821 () Int)

(assert (=> start!11022 (= b_next!39285 (or (and b!84099 (= lambda!10467 p!821)) b_next!39291))))

(declare-fun bs!40726 () Bool)

(declare-fun b!84098 () Bool)

(assert (= bs!40726 (and b!84098 b!84099)))

(declare-fun lambda!10468 () Int)

(assert (=> bs!40726 (not (= lambda!10468 lambda!10467))))

(assert (=> b!84098 true))

(declare-fun b_next!39293 () Bool)

(assert (=> start!11022 (= b_next!39287 (or (and b!84098 (= lambda!10468 p1!135)) b_next!39293))))

(declare-fun b_next!39295 () Bool)

(assert (=> start!11022 (= b_next!39289 (or (and b!84098 (= lambda!10468 p2!130)) b_next!39295))))

(declare-fun b_next!39297 () Bool)

(assert (=> start!11022 (= b_next!39291 (or (and b!84098 (= lambda!10468 p!821)) b_next!39297))))

(declare-fun bs!40727 () Bool)

(declare-fun b!84101 () Bool)

(assert (= bs!40727 (and b!84101 b!84099)))

(declare-fun lambda!10469 () Int)

(assert (=> bs!40727 (not (= lambda!10469 lambda!10467))))

(declare-fun bs!40728 () Bool)

(assert (= bs!40728 (and b!84101 b!84098)))

(assert (=> bs!40728 (not (= lambda!10469 lambda!10468))))

(assert (=> b!84101 true))

(declare-fun b_next!39299 () Bool)

(assert (=> start!11022 (= b_next!39293 (or (and b!84101 (= lambda!10469 p1!135)) b_next!39299))))

(declare-fun b_next!39301 () Bool)

(assert (=> start!11022 (= b_next!39295 (or (and b!84101 (= lambda!10469 p2!130)) b_next!39301))))

(declare-fun b_next!39303 () Bool)

(assert (=> start!11022 (= b_next!39297 (or (and b!84101 (= lambda!10469 p!821)) b_next!39303))))

(declare-fun b!84095 () Bool)

(declare-fun res!43386 () Bool)

(declare-fun e!45589 () Bool)

(assert (=> b!84095 (=> (not res!43386) (not e!45589))))

(assert (=> b!84095 (= res!43386 (= p2!130 p!821))))

(declare-fun b!84096 () Bool)

(declare-fun res!43381 () Bool)

(assert (=> b!84096 (=> (not res!43381) (not e!45589))))

(declare-datatypes () ((List!685 (Cons!642 (h!1015 Int) (t!47937 List!685)) (Nil!644))))

(declare-fun ls!77 () List!685)

(assert (=> b!84096 (= res!43381 (and (not (is-Nil!644 ls!77)) (not (is-Nil!644 (t!47937 ls!77)))))))

(declare-fun b!84097 () Bool)

(declare-fun ls!78 () List!685)

(declare-fun forall!33 (List!685 Int) Bool)

(assert (=> b!84097 (= e!45589 (not (forall!33 ls!78 p2!130)))))

(declare-fun res!43380 () Bool)

(assert (=> b!84098 (=> (not res!43380) (not e!45589))))

(declare-fun equal!4 () List!685)

(declare-fun filter!32 (List!685 Int) List!685)

(assert (=> b!84098 (= res!43380 (= equal!4 (Cons!642 (h!1015 ls!77) (filter!32 (t!47937 ls!77) lambda!10468))))))

(declare-fun res!43379 () Bool)

(assert (=> b!84099 (=> (not res!43379) (not e!45589))))

(declare-fun less!2 () List!685)

(assert (=> b!84099 (= res!43379 (= less!2 (filter!32 (t!47937 ls!77) lambda!10467)))))

(declare-fun b!84100 () Bool)

(declare-fun res!43385 () Bool)

(assert (=> b!84100 (=> (not res!43385) (not e!45589))))

(assert (=> b!84100 (= res!43385 (= p1!135 lambda!10467))))

(declare-fun res!43382 () Bool)

(assert (=> b!84101 (=> (not res!43382) (not e!45589))))

(declare-fun more!2 () List!685)

(assert (=> b!84101 (= res!43382 (= more!2 (filter!32 (t!47937 ls!77) lambda!10469)))))

(declare-fun b!84102 () Bool)

(declare-fun res!43383 () Bool)

(assert (=> b!84102 (=> (not res!43383) (not e!45589))))

(assert (=> b!84102 (= res!43383 (= ls!78 (t!47937 ls!77)))))

(declare-fun res!43384 () Bool)

(assert (=> start!11022 (=> (not res!43384) (not e!45589))))

(assert (=> start!11022 (= res!43384 (forall!33 ls!77 p!821))))

(assert (=> start!11022 e!45589))

(assert (=> start!11022 true))

(assert (=> start!11022 tp!16955))

(assert (=> start!11022 tp!16957))

(assert (=> start!11022 tp!16956))

(assert (= (and start!11022 res!43384) b!84096))

(assert (= (and b!84096 res!43381) b!84099))

(assert (= (and b!84099 res!43379) b!84098))

(assert (= (and b!84098 res!43380) b!84101))

(assert (= (and b!84101 res!43382) b!84102))

(assert (= (and b!84102 res!43383) b!84100))

(assert (= (and b!84100 res!43385) b!84095))

(assert (= (and b!84095 res!43386) b!84097))

(declare-fun m!79936 () Bool)

(assert (=> b!84098 m!79936))

(declare-fun m!79938 () Bool)

(assert (=> b!84099 m!79938))

(declare-fun m!79940 () Bool)

(assert (=> b!84097 m!79940))

(declare-fun m!79942 () Bool)

(assert (=> b!84101 m!79942))

(declare-fun m!79944 () Bool)

(assert (=> start!11022 m!79944))

(push 1)

(assert (not b!84101))

(assert (not b!84098))

(assert (not b_next!39299))

(assert (not b!84097))

(assert (not b_next!39303))

(assert b_and!58891)

(assert (not b_next!39301))

(assert b_and!58889)

(assert (not start!11022))

(assert b_and!58893)

(assert (not b!84099))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39299))

(assert (not b_next!39303))

(assert b_and!58891)

(assert (not b_next!39301))

(assert b_and!58889)

(assert b_and!58893)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!56705 () Bool)

(declare-fun res!43391 () Bool)

(declare-fun e!45594 () Bool)

(assert (=> d!56705 (=> res!43391 e!45594)))

(assert (=> d!56705 (= res!43391 (is-Nil!644 ls!77))))

(assert (=> d!56705 (= (forall!33 ls!77 p!821) e!45594)))

(declare-fun b!84109 () Bool)

(declare-fun e!45595 () Bool)

(assert (=> b!84109 (= e!45594 e!45595)))

(declare-fun res!43392 () Bool)

(assert (=> b!84109 (=> (not res!43392) (not e!45595))))

(declare-fun dynLambda!997 (Int Int) Bool)

(assert (=> b!84109 (= res!43392 (dynLambda!997 p!821 (h!1015 ls!77)))))

(declare-fun b!84110 () Bool)

(assert (=> b!84110 (= e!45595 (forall!33 (t!47937 ls!77) p!821))))

(assert (= (and d!56705 (not res!43391)) b!84109))

(assert (= (and b!84109 res!43392) b!84110))

(declare-fun b_lambda!16527 () Bool)

(assert (=> (not b_lambda!16527) (not b!84109)))

(declare-fun tb!46209 () Bool)

(declare-fun t!47939 () Bool)

(assert (=> (and start!11022 (= p1!135 p!821) t!47939) tb!46209))

(declare-fun result!46639 () Bool)

(assert (=> tb!46209 (= result!46639 true)))

(assert (=> b!84109 t!47939))

(declare-fun b_and!58895 () Bool)

(assert (= b_and!58889 (and (=> t!47939 result!46639) b_and!58895)))

(declare-fun tb!46211 () Bool)

(declare-fun t!47941 () Bool)

(assert (=> (and start!11022 (= p2!130 p!821) t!47941) tb!46211))

(declare-fun result!46641 () Bool)

(assert (=> tb!46211 (= result!46641 true)))

(assert (=> b!84109 t!47941))

(declare-fun b_and!58897 () Bool)

(assert (= b_and!58891 (and (=> t!47941 result!46641) b_and!58897)))

(declare-fun t!47943 () Bool)

(declare-fun tb!46213 () Bool)

(assert (=> (and start!11022 (= p!821 p!821) t!47943) tb!46213))

(declare-fun result!46643 () Bool)

(assert (=> tb!46213 (= result!46643 true)))

(assert (=> b!84109 t!47943))

(declare-fun b_and!58899 () Bool)

(assert (= b_and!58893 (and (=> t!47943 result!46643) b_and!58899)))

(declare-fun m!79946 () Bool)

(assert (=> b!84109 m!79946))

(declare-fun m!79948 () Bool)

(assert (=> b!84110 m!79948))

(assert (=> start!11022 d!56705))

(declare-fun d!56707 () Bool)

(declare-fun res!43393 () Bool)

(declare-fun e!45596 () Bool)

(assert (=> d!56707 (=> res!43393 e!45596)))

(assert (=> d!56707 (= res!43393 (is-Nil!644 ls!78))))

(assert (=> d!56707 (= (forall!33 ls!78 p2!130) e!45596)))

(declare-fun b!84111 () Bool)

(declare-fun e!45597 () Bool)

(assert (=> b!84111 (= e!45596 e!45597)))

(declare-fun res!43394 () Bool)

(assert (=> b!84111 (=> (not res!43394) (not e!45597))))

(assert (=> b!84111 (= res!43394 (dynLambda!997 p2!130 (h!1015 ls!78)))))

(declare-fun b!84112 () Bool)

(assert (=> b!84112 (= e!45597 (forall!33 (t!47937 ls!78) p2!130))))

(assert (= (and d!56707 (not res!43393)) b!84111))

(assert (= (and b!84111 res!43394) b!84112))

(declare-fun b_lambda!16529 () Bool)

(assert (=> (not b_lambda!16529) (not b!84111)))

(declare-fun t!47945 () Bool)

(declare-fun tb!46215 () Bool)

(assert (=> (and start!11022 (= p1!135 p2!130) t!47945) tb!46215))

(declare-fun result!46645 () Bool)

(assert (=> tb!46215 (= result!46645 true)))

(assert (=> b!84111 t!47945))

(declare-fun b_and!58901 () Bool)

(assert (= b_and!58895 (and (=> t!47945 result!46645) b_and!58901)))

(declare-fun t!47947 () Bool)

(declare-fun tb!46217 () Bool)

(assert (=> (and start!11022 (= p2!130 p2!130) t!47947) tb!46217))

(declare-fun result!46647 () Bool)

(assert (=> tb!46217 (= result!46647 true)))

(assert (=> b!84111 t!47947))

(declare-fun b_and!58903 () Bool)

(assert (= b_and!58897 (and (=> t!47947 result!46647) b_and!58903)))

(declare-fun tb!46219 () Bool)

(declare-fun t!47949 () Bool)

(assert (=> (and start!11022 (= p!821 p2!130) t!47949) tb!46219))

(declare-fun result!46649 () Bool)

(assert (=> tb!46219 (= result!46649 true)))

(assert (=> b!84111 t!47949))

(declare-fun b_and!58905 () Bool)

(assert (= b_and!58899 (and (=> t!47949 result!46649) b_and!58905)))

(declare-fun m!79950 () Bool)

(assert (=> b!84111 m!79950))

(declare-fun m!79952 () Bool)

(assert (=> b!84112 m!79952))

(assert (=> b!84097 d!56707))

(declare-fun b!84127 () Bool)

(declare-fun e!45607 () List!685)

(declare-fun lt!19593 () List!685)

(assert (=> b!84127 (= e!45607 (Cons!642 (h!1015 (t!47937 ls!77)) lt!19593))))

(declare-fun b!84128 () Bool)

(declare-fun e!45608 () Bool)

(declare-fun lt!19594 () List!685)

(assert (=> b!84128 (= e!45608 (forall!33 lt!19594 lambda!10469))))

(declare-fun d!56709 () Bool)

(assert (=> d!56709 e!45608))

(declare-fun res!43405 () Bool)

(assert (=> d!56709 (=> (not res!43405) (not e!45608))))

(declare-fun size!668 (List!685) Int)

(assert (=> d!56709 (= res!43405 (<= (size!668 lt!19594) (size!668 (t!47937 ls!77))))))

(declare-fun e!45609 () List!685)

(assert (=> d!56709 (= lt!19594 e!45609)))

(declare-fun c!21014 () Bool)

(assert (=> d!56709 (= c!21014 (is-Nil!644 (t!47937 ls!77)))))

(assert (=> d!56709 (= (filter!32 (t!47937 ls!77) lambda!10469) lt!19594)))

(declare-fun b!84129 () Bool)

(assert (=> b!84129 (= e!45609 e!45607)))

(declare-fun c!21015 () Bool)

(declare-fun e!45606 () Bool)

(assert (=> b!84129 (= c!21015 e!45606)))

(declare-fun res!43406 () Bool)

(assert (=> b!84129 (=> (not res!43406) (not e!45606))))

(assert (=> b!84129 (= res!43406 (is-Cons!642 (t!47937 ls!77)))))

(assert (=> b!84129 (= lt!19593 (filter!32 (t!47937 (t!47937 ls!77)) lambda!10469))))

(declare-fun b!84130 () Bool)

(assert (=> b!84130 (= e!45609 Nil!644)))

(declare-fun b!84131 () Bool)

(assert (=> b!84131 (= e!45606 (dynLambda!997 lambda!10469 (h!1015 (t!47937 ls!77))))))

(declare-fun b!84132 () Bool)

(assert (=> b!84132 (= e!45607 lt!19593)))

(declare-fun b!84133 () Bool)

(declare-fun res!43407 () Bool)

(assert (=> b!84133 (=> (not res!43407) (not e!45608))))

(declare-fun content!139 (List!685) (Set Int))

(assert (=> b!84133 (= res!43407 (subset (content!139 lt!19594) (content!139 (t!47937 ls!77))))))

(assert (= (and b!84129 res!43406) b!84131))

(assert (= (and b!84129 c!21015) b!84127))

(assert (= (and b!84129 (not c!21015)) b!84132))

(assert (= (and d!56709 c!21014) b!84130))

(assert (= (and d!56709 (not c!21014)) b!84129))

(assert (= (and d!56709 res!43405) b!84133))

(assert (= (and b!84133 res!43407) b!84128))

(declare-fun b_lambda!16531 () Bool)

(assert (=> (not b_lambda!16531) (not b!84131)))

(declare-fun m!79954 () Bool)

(assert (=> b!84131 m!79954))

(declare-fun m!79956 () Bool)

(assert (=> b!84133 m!79956))

(declare-fun m!79958 () Bool)

(assert (=> b!84133 m!79958))

(declare-fun m!79960 () Bool)

(assert (=> d!56709 m!79960))

(declare-fun m!79962 () Bool)

(assert (=> d!56709 m!79962))

(declare-fun m!79964 () Bool)

(assert (=> b!84129 m!79964))

(declare-fun m!79966 () Bool)

(assert (=> b!84128 m!79966))

(assert (=> b!84101 d!56709))

(declare-fun b!84134 () Bool)

(declare-fun e!45611 () List!685)

(declare-fun lt!19595 () List!685)

(assert (=> b!84134 (= e!45611 (Cons!642 (h!1015 (t!47937 ls!77)) lt!19595))))

(declare-fun b!84135 () Bool)

(declare-fun e!45612 () Bool)

(declare-fun lt!19596 () List!685)

(assert (=> b!84135 (= e!45612 (forall!33 lt!19596 lambda!10468))))

(declare-fun d!56711 () Bool)

(assert (=> d!56711 e!45612))

(declare-fun res!43408 () Bool)

(assert (=> d!56711 (=> (not res!43408) (not e!45612))))

(assert (=> d!56711 (= res!43408 (<= (size!668 lt!19596) (size!668 (t!47937 ls!77))))))

(declare-fun e!45613 () List!685)

(assert (=> d!56711 (= lt!19596 e!45613)))

(declare-fun c!21016 () Bool)

(assert (=> d!56711 (= c!21016 (is-Nil!644 (t!47937 ls!77)))))

(assert (=> d!56711 (= (filter!32 (t!47937 ls!77) lambda!10468) lt!19596)))

(declare-fun b!84136 () Bool)

(assert (=> b!84136 (= e!45613 e!45611)))

(declare-fun c!21017 () Bool)

(declare-fun e!45610 () Bool)

(assert (=> b!84136 (= c!21017 e!45610)))

(declare-fun res!43409 () Bool)

(assert (=> b!84136 (=> (not res!43409) (not e!45610))))

(assert (=> b!84136 (= res!43409 (is-Cons!642 (t!47937 ls!77)))))

(assert (=> b!84136 (= lt!19595 (filter!32 (t!47937 (t!47937 ls!77)) lambda!10468))))

(declare-fun b!84137 () Bool)

(assert (=> b!84137 (= e!45613 Nil!644)))

(declare-fun b!84138 () Bool)

(assert (=> b!84138 (= e!45610 (dynLambda!997 lambda!10468 (h!1015 (t!47937 ls!77))))))

(declare-fun b!84139 () Bool)

(assert (=> b!84139 (= e!45611 lt!19595)))

(declare-fun b!84140 () Bool)

(declare-fun res!43410 () Bool)

(assert (=> b!84140 (=> (not res!43410) (not e!45612))))

(assert (=> b!84140 (= res!43410 (subset (content!139 lt!19596) (content!139 (t!47937 ls!77))))))

(assert (= (and b!84136 res!43409) b!84138))

(assert (= (and b!84136 c!21017) b!84134))

(assert (= (and b!84136 (not c!21017)) b!84139))

(assert (= (and d!56711 c!21016) b!84137))

(assert (= (and d!56711 (not c!21016)) b!84136))

(assert (= (and d!56711 res!43408) b!84140))

(assert (= (and b!84140 res!43410) b!84135))

(declare-fun b_lambda!16533 () Bool)

(assert (=> (not b_lambda!16533) (not b!84138)))

(declare-fun m!79968 () Bool)

(assert (=> b!84138 m!79968))

(declare-fun m!79970 () Bool)

(assert (=> b!84140 m!79970))

(assert (=> b!84140 m!79958))

(declare-fun m!79972 () Bool)

(assert (=> d!56711 m!79972))

(assert (=> d!56711 m!79962))

(declare-fun m!79974 () Bool)

(assert (=> b!84136 m!79974))

(declare-fun m!79976 () Bool)

(assert (=> b!84135 m!79976))

(assert (=> b!84098 d!56711))

(declare-fun b!84141 () Bool)

(declare-fun e!45615 () List!685)

(declare-fun lt!19597 () List!685)

(assert (=> b!84141 (= e!45615 (Cons!642 (h!1015 (t!47937 ls!77)) lt!19597))))

(declare-fun b!84142 () Bool)

(declare-fun e!45616 () Bool)

(declare-fun lt!19598 () List!685)

(assert (=> b!84142 (= e!45616 (forall!33 lt!19598 lambda!10467))))

(declare-fun d!56713 () Bool)

(assert (=> d!56713 e!45616))

(declare-fun res!43411 () Bool)

(assert (=> d!56713 (=> (not res!43411) (not e!45616))))

(assert (=> d!56713 (= res!43411 (<= (size!668 lt!19598) (size!668 (t!47937 ls!77))))))

(declare-fun e!45617 () List!685)

(assert (=> d!56713 (= lt!19598 e!45617)))

(declare-fun c!21018 () Bool)

(assert (=> d!56713 (= c!21018 (is-Nil!644 (t!47937 ls!77)))))

(assert (=> d!56713 (= (filter!32 (t!47937 ls!77) lambda!10467) lt!19598)))

(declare-fun b!84143 () Bool)

(assert (=> b!84143 (= e!45617 e!45615)))

(declare-fun c!21019 () Bool)

(declare-fun e!45614 () Bool)

(assert (=> b!84143 (= c!21019 e!45614)))

(declare-fun res!43412 () Bool)

(assert (=> b!84143 (=> (not res!43412) (not e!45614))))

(assert (=> b!84143 (= res!43412 (is-Cons!642 (t!47937 ls!77)))))

(assert (=> b!84143 (= lt!19597 (filter!32 (t!47937 (t!47937 ls!77)) lambda!10467))))

(declare-fun b!84144 () Bool)

(assert (=> b!84144 (= e!45617 Nil!644)))

(declare-fun b!84145 () Bool)

(assert (=> b!84145 (= e!45614 (dynLambda!997 lambda!10467 (h!1015 (t!47937 ls!77))))))

(declare-fun b!84146 () Bool)

(assert (=> b!84146 (= e!45615 lt!19597)))

(declare-fun b!84147 () Bool)

(declare-fun res!43413 () Bool)

(assert (=> b!84147 (=> (not res!43413) (not e!45616))))

(assert (=> b!84147 (= res!43413 (subset (content!139 lt!19598) (content!139 (t!47937 ls!77))))))

(assert (= (and b!84143 res!43412) b!84145))

(assert (= (and b!84143 c!21019) b!84141))

(assert (= (and b!84143 (not c!21019)) b!84146))

(assert (= (and d!56713 c!21018) b!84144))

(assert (= (and d!56713 (not c!21018)) b!84143))

(assert (= (and d!56713 res!43411) b!84147))

(assert (= (and b!84147 res!43413) b!84142))

(declare-fun b_lambda!16535 () Bool)

(assert (=> (not b_lambda!16535) (not b!84145)))

(declare-fun m!79978 () Bool)

(assert (=> b!84145 m!79978))

(declare-fun m!79980 () Bool)

(assert (=> b!84147 m!79980))

(assert (=> b!84147 m!79958))

(declare-fun m!79982 () Bool)

(assert (=> d!56713 m!79982))

(assert (=> d!56713 m!79962))

(declare-fun m!79984 () Bool)

(assert (=> b!84143 m!79984))

(declare-fun m!79986 () Bool)

(assert (=> b!84142 m!79986))

(assert (=> b!84099 d!56713))

(declare-fun b_lambda!16537 () Bool)

(assert (= b_lambda!16535 (or b!84099 b_lambda!16537)))

(declare-fun bs!40729 () Bool)

(declare-fun d!56715 () Bool)

(assert (= bs!40729 (and d!56715 b!84099)))

(assert (=> bs!40729 (= (dynLambda!997 lambda!10467 (h!1015 (t!47937 ls!77))) (< (h!1015 (t!47937 ls!77)) (h!1015 ls!77)))))

(assert (=> b!84145 d!56715))

(declare-fun b_lambda!16539 () Bool)

(assert (= b_lambda!16527 (or (and b!84101 (= lambda!10469 p!821)) (and start!11022 b_free!7359 (= p1!135 p!821)) (and b!84099 (= lambda!10467 p!821)) (and start!11022 b_free!7363) (and b!84098 (= lambda!10468 p!821)) (and start!11022 b_free!7361 (= p2!130 p!821)) b_lambda!16539)))

(declare-fun bs!40730 () Bool)

(declare-fun d!56717 () Bool)

(assert (= bs!40730 (and d!56717 b!84099)))

(assert (=> bs!40730 (= (dynLambda!997 lambda!10467 (h!1015 ls!77)) (< (h!1015 ls!77) (h!1015 ls!77)))))

(assert (=> (and b!84099 (= lambda!10467 p!821) b!84109) d!56717))

(declare-fun bs!40731 () Bool)

(declare-fun d!56719 () Bool)

(assert (= bs!40731 (and d!56719 b!84101)))

(assert (=> bs!40731 (= (dynLambda!997 lambda!10469 (h!1015 ls!77)) (> (h!1015 ls!77) (h!1015 ls!77)))))

(assert (=> (and b!84101 (= lambda!10469 p!821) b!84109) d!56719))

(declare-fun bs!40732 () Bool)

(declare-fun d!56721 () Bool)

(assert (= bs!40732 (and d!56721 b!84098)))

(assert (=> bs!40732 (= (dynLambda!997 lambda!10468 (h!1015 ls!77)) (= (h!1015 ls!77) (h!1015 ls!77)))))

(assert (=> (and b!84098 (= lambda!10468 p!821) b!84109) d!56721))

(declare-fun b_lambda!16541 () Bool)

(assert (= b_lambda!16529 (or (and start!11022 b_free!7361) (and b!84101 (= lambda!10469 p2!130)) (and start!11022 b_free!7359 (= p1!135 p2!130)) (and start!11022 b_free!7363 (= p!821 p2!130)) (and b!84098 (= lambda!10468 p2!130)) (and b!84099 (= lambda!10467 p2!130)) b_lambda!16541)))

(declare-fun bs!40733 () Bool)

(declare-fun d!56723 () Bool)

(assert (= bs!40733 (and d!56723 b!84101)))

(assert (=> bs!40733 (= (dynLambda!997 lambda!10469 (h!1015 ls!78)) (> (h!1015 ls!78) (h!1015 ls!77)))))

(assert (=> (and b!84101 (= lambda!10469 p2!130) b!84111) d!56723))

(declare-fun bs!40734 () Bool)

(declare-fun d!56725 () Bool)

(assert (= bs!40734 (and d!56725 b!84099)))

(assert (=> bs!40734 (= (dynLambda!997 lambda!10467 (h!1015 ls!78)) (< (h!1015 ls!78) (h!1015 ls!77)))))

(assert (=> (and b!84099 (= lambda!10467 p2!130) b!84111) d!56725))

(declare-fun bs!40735 () Bool)

(declare-fun d!56727 () Bool)

(assert (= bs!40735 (and d!56727 b!84098)))

(assert (=> bs!40735 (= (dynLambda!997 lambda!10468 (h!1015 ls!78)) (= (h!1015 ls!78) (h!1015 ls!77)))))

(assert (=> (and b!84098 (= lambda!10468 p2!130) b!84111) d!56727))

(declare-fun b_lambda!16543 () Bool)

(assert (= b_lambda!16533 (or b!84098 b_lambda!16543)))

(declare-fun bs!40736 () Bool)

(declare-fun d!56729 () Bool)

(assert (= bs!40736 (and d!56729 b!84098)))

(assert (=> bs!40736 (= (dynLambda!997 lambda!10468 (h!1015 (t!47937 ls!77))) (= (h!1015 (t!47937 ls!77)) (h!1015 ls!77)))))

(assert (=> b!84138 d!56729))

(declare-fun b_lambda!16545 () Bool)

(assert (= b_lambda!16531 (or b!84101 b_lambda!16545)))

(declare-fun bs!40737 () Bool)

(declare-fun d!56731 () Bool)

(assert (= bs!40737 (and d!56731 b!84101)))

(assert (=> bs!40737 (= (dynLambda!997 lambda!10469 (h!1015 (t!47937 ls!77))) (> (h!1015 (t!47937 ls!77)) (h!1015 ls!77)))))

(assert (=> b!84131 d!56731))

(push 1)

(assert (not d!56711))

(assert (not b_lambda!16543))

(assert (not b!84112))

(assert (not b_lambda!16539))

(assert (not b_lambda!16545))

(assert (not b_next!39299))

(assert (not b!84140))

(assert b_and!58905)

(assert (not b!84128))

(assert b_and!58901)

(assert (not b!84110))

(assert (not b_lambda!16537))

(assert (not b_next!39303))

(assert (not d!56713))

(assert (not b!84135))

(assert (not b!84129))

(assert (not b!84133))

(assert (not b!84147))

(assert (not b!84143))

(assert (not b_lambda!16541))

(assert (not b_next!39301))

(assert b_and!58903)

(assert (not d!56709))

(assert (not b!84136))

(assert (not b!84142))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39299))

(assert b_and!58905)

(assert b_and!58901)

(assert (not b_next!39303))

(assert (not b_next!39301))

(assert b_and!58903)

(check-sat)

(pop 1)

