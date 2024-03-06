; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11560 () Bool)

(assert start!11560)

(declare-fun b_free!7509 () Bool)

(declare-fun b_next!39831 () Bool)

(assert (=> start!11560 (= b_free!7509 (not b_next!39831))))

(declare-fun tp!17280 () Bool)

(declare-fun b_and!60129 () Bool)

(assert (=> start!11560 (= tp!17280 b_and!60129)))

(declare-fun b_free!7511 () Bool)

(declare-fun b_next!39833 () Bool)

(assert (=> start!11560 (= b_free!7511 (not b_next!39833))))

(declare-fun tp!17276 () Bool)

(declare-fun b_and!60131 () Bool)

(assert (=> start!11560 (= tp!17276 b_and!60131)))

(declare-fun b!88429 () Bool)

(assert (=> b!88429 true))

(declare-fun lambda!10880 () Int)

(declare-fun order!499 () Int)

(declare-fun order!497 () Int)

(declare-fun key!514 () Int)

(declare-fun dynLambda!1054 (Int Int) Int)

(declare-fun dynLambda!1055 (Int Int) Int)

(assert (=> b!88429 (< (dynLambda!1054 order!497 key!514) (dynLambda!1055 order!499 lambda!10880))))

(declare-fun b_next!39835 () Bool)

(declare-fun keyAnn!5 () Int)

(assert (=> start!11560 (= b_next!39833 (or (and b!88429 (= lambda!10880 keyAnn!5)) b_next!39835))))

(declare-fun b!88418 () Bool)

(declare-fun res!46261 () Bool)

(declare-fun e!48019 () Bool)

(assert (=> b!88418 (=> res!46261 e!48019)))

(declare-datatypes () ((T!5997 (T!5998 (val!191 Int)))))

(declare-datatypes () ((tuple2!406 (tuple2!407 (_1!238 T!5997) (_2!238 Int)))))

(declare-datatypes () ((List!733 (Cons!687 (h!1091 tuple2!406) (t!48698 List!733)) (Nil!689))))

(declare-fun tlAnnSorted!2 () List!733)

(declare-fun n!1722 () Int)

(declare-fun l2AtLeast!5 (List!733 Int) Bool)

(assert (=> b!88418 (= res!46261 (not (l2AtLeast!5 tlAnnSorted!2 n!1722)))))

(declare-fun b!88419 () Bool)

(declare-fun res!46266 () Bool)

(assert (=> b!88419 (=> res!46266 e!48019)))

(declare-fun lAnn!4 () List!733)

(assert (=> b!88419 (= res!46266 (not (l2AtLeast!5 (t!48698 lAnn!4) n!1722)))))

(declare-fun res!46262 () Bool)

(declare-fun e!48020 () Bool)

(assert (=> start!11560 (=> (not res!46262) (not e!48020))))

(declare-datatypes () ((List!734 (Cons!688 (h!1092 T!5997) (t!48699 List!734)) (Nil!690))))

(declare-fun l!1571 () List!734)

(declare-fun annotateList!5 (List!734 Int) List!733)

(assert (=> start!11560 (= res!46262 (= lAnn!4 (annotateList!5 l!1571 n!1722)))))

(assert (=> start!11560 e!48020))

(declare-fun e!48023 () Bool)

(assert (=> start!11560 e!48023))

(assert (=> start!11560 tp!17280))

(declare-fun e!48022 () Bool)

(assert (=> start!11560 e!48022))

(declare-fun e!48024 () Bool)

(assert (=> start!11560 e!48024))

(assert (=> start!11560 tp!17276))

(declare-fun e!48018 () Bool)

(assert (=> start!11560 e!48018))

(declare-fun e!48021 () Bool)

(assert (=> start!11560 e!48021))

(assert (=> start!11560 true))

(declare-fun b!88420 () Bool)

(declare-fun tp_is_empty!377 () Bool)

(declare-fun tp!17277 () Bool)

(assert (=> b!88420 (= e!48022 (and tp_is_empty!377 tp!17277))))

(declare-fun b!88421 () Bool)

(declare-fun lAnnSorted!4 () List!733)

(assert (=> b!88421 (= e!48019 (not (l2AtLeast!5 lAnnSorted!4 n!1722)))))

(declare-fun b!88422 () Bool)

(declare-fun res!46267 () Bool)

(assert (=> b!88422 (=> res!46267 e!48019)))

(assert (=> b!88422 (= res!46267 (not (= n!1722 (_2!238 (h!1091 lAnn!4)))))))

(declare-fun b!88423 () Bool)

(declare-fun tp!17282 () Bool)

(assert (=> b!88423 (= e!48023 (and tp_is_empty!377 tp!17282))))

(declare-fun b!88424 () Bool)

(declare-fun tp!17281 () Bool)

(assert (=> b!88424 (= e!48024 (and tp_is_empty!377 tp!17281))))

(declare-fun b!88425 () Bool)

(assert (=> b!88425 (= e!48020 e!48019)))

(declare-fun res!46260 () Bool)

(assert (=> b!88425 (=> res!46260 e!48019)))

(declare-fun xs!1094 () List!734)

(declare-fun sortStablePropInt!4 (List!734 Int Int) Bool)

(assert (=> b!88425 (= res!46260 (not (sortStablePropInt!4 xs!1094 (+ n!1722 1) key!514)))))

(declare-fun b!88426 () Bool)

(declare-fun res!46263 () Bool)

(assert (=> b!88426 (=> (not res!46263) (not e!48020))))

(declare-fun sort!6 (List!733 Int) List!733)

(assert (=> b!88426 (= res!46263 (= tlAnnSorted!2 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))

(declare-fun b!88427 () Bool)

(declare-fun res!46268 () Bool)

(assert (=> b!88427 (=> (not res!46268) (not e!48020))))

(assert (=> b!88427 (= res!46268 (= lAnnSorted!4 (sort!6 lAnn!4 keyAnn!5)))))

(declare-fun b!88428 () Bool)

(declare-fun res!46257 () Bool)

(assert (=> b!88428 (=> res!46257 e!48019)))

(declare-fun insertStableProp!3 (T!5997 Int List!733 Int) Bool)

(assert (=> b!88428 (= res!46257 (not (insertStableProp!3 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4)) tlAnnSorted!2 key!514)))))

(declare-fun res!46265 () Bool)

(assert (=> b!88429 (=> (not res!46265) (not e!48020))))

(assert (=> b!88429 (= res!46265 (= keyAnn!5 lambda!10880))))

(declare-fun b!88430 () Bool)

(declare-fun tp!17278 () Bool)

(assert (=> b!88430 (= e!48018 (and tp_is_empty!377 tp!17278))))

(declare-fun b!88431 () Bool)

(declare-fun res!46258 () Bool)

(assert (=> b!88431 (=> (not res!46258) (not e!48020))))

(assert (=> b!88431 (= res!46258 (and (not (is-Nil!689 lAnn!4)) (= xs!1094 (t!48699 l!1571))))))

(declare-fun b!88432 () Bool)

(declare-fun res!46256 () Bool)

(assert (=> b!88432 (=> res!46256 e!48019)))

(assert (=> b!88432 (= res!46256 (not (l2AtLeast!5 tlAnnSorted!2 (+ n!1722 1))))))

(declare-fun b!88433 () Bool)

(declare-fun res!46264 () Bool)

(assert (=> b!88433 (=> res!46264 e!48019)))

(declare-fun trivProp2!4 (List!733 Int) Bool)

(assert (=> b!88433 (= res!46264 (not (trivProp2!4 tlAnnSorted!2 n!1722)))))

(declare-fun b!88434 () Bool)

(declare-fun tp!17279 () Bool)

(assert (=> b!88434 (= e!48021 (and tp_is_empty!377 tp!17279))))

(declare-fun b!88435 () Bool)

(declare-fun res!46259 () Bool)

(assert (=> b!88435 (=> res!46259 e!48019)))

(declare-fun isStableSorted!4 (List!733 Int) Bool)

(assert (=> b!88435 (= res!46259 (not (isStableSorted!4 lAnnSorted!4 key!514)))))

(assert (= (and start!11560 res!46262) b!88429))

(assert (= (and b!88429 res!46265) b!88427))

(assert (= (and b!88427 res!46268) b!88431))

(assert (= (and b!88431 res!46258) b!88426))

(assert (= (and b!88426 res!46263) b!88425))

(assert (= (and b!88425 (not res!46260)) b!88422))

(assert (= (and b!88422 (not res!46267)) b!88419))

(assert (= (and b!88419 (not res!46266)) b!88432))

(assert (= (and b!88432 (not res!46256)) b!88433))

(assert (= (and b!88433 (not res!46264)) b!88418))

(assert (= (and b!88418 (not res!46261)) b!88428))

(assert (= (and b!88428 (not res!46257)) b!88435))

(assert (= (and b!88435 (not res!46259)) b!88421))

(assert (= (and start!11560 (is-Cons!687 lAnn!4)) b!88423))

(assert (= (and start!11560 (is-Cons!688 l!1571)) b!88420))

(assert (= (and start!11560 (is-Cons!687 tlAnnSorted!2)) b!88424))

(assert (= (and start!11560 (is-Cons!687 lAnnSorted!4)) b!88430))

(assert (= (and start!11560 (is-Cons!688 xs!1094)) b!88434))

(declare-fun m!84492 () Bool)

(assert (=> b!88425 m!84492))

(declare-fun m!84494 () Bool)

(assert (=> b!88433 m!84494))

(declare-fun m!84496 () Bool)

(assert (=> b!88418 m!84496))

(declare-fun m!84498 () Bool)

(assert (=> b!88432 m!84498))

(declare-fun m!84500 () Bool)

(assert (=> b!88427 m!84500))

(declare-fun m!84502 () Bool)

(assert (=> b!88428 m!84502))

(declare-fun m!84504 () Bool)

(assert (=> b!88435 m!84504))

(declare-fun m!84506 () Bool)

(assert (=> start!11560 m!84506))

(declare-fun m!84508 () Bool)

(assert (=> b!88426 m!84508))

(declare-fun m!84510 () Bool)

(assert (=> b!88421 m!84510))

(declare-fun m!84512 () Bool)

(assert (=> b!88419 m!84512))

(push 1)

(assert (not b!88420))

(assert (not b!88419))

(assert (not b!88432))

(assert (not b!88423))

(assert (not b!88428))

(assert (not start!11560))

(assert tp_is_empty!377)

(assert (not b!88430))

(assert (not b!88418))

(assert (not b!88433))

(assert (not b!88427))

(assert (not b!88435))

(assert (not b_next!39831))

(assert b_and!60129)

(assert (not b!88424))

(assert b_and!60131)

(assert (not b!88426))

(assert (not b!88425))

(assert (not b!88434))

(assert (not b_next!39835))

(assert (not b!88421))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60129)

(assert b_and!60131)

(assert (not b_next!39835))

(assert (not b_next!39831))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58679 () Bool)

(declare-fun e!48029 () Bool)

(assert (=> d!58679 e!48029))

(declare-fun res!46272 () Bool)

(assert (=> d!58679 (=> (not res!46272) (not e!48029))))

(declare-fun lt!20271 () List!733)

(declare-fun content!160 (List!733) (Set tuple2!406))

(assert (=> d!58679 (= res!46272 (= (content!160 lt!20271) (content!160 lAnn!4)))))

(declare-fun e!48030 () List!733)

(assert (=> d!58679 (= lt!20271 e!48030)))

(declare-fun c!21789 () Bool)

(assert (=> d!58679 (= c!21789 (is-Nil!689 lAnn!4))))

(assert (=> d!58679 (= (sort!6 lAnn!4 keyAnn!5) lt!20271)))

(declare-fun b!88444 () Bool)

(assert (=> b!88444 (= e!48030 lAnn!4)))

(declare-fun b!88445 () Bool)

(declare-fun insert!30 (tuple2!406 List!733 Int) List!733)

(assert (=> b!88445 (= e!48030 (insert!30 (h!1091 lAnn!4) (sort!6 (t!48698 lAnn!4) keyAnn!5) keyAnn!5))))

(declare-fun b!88446 () Bool)

(declare-fun length!12 (List!733) Int)

(assert (=> b!88446 (= e!48029 (= (length!12 lt!20271) (length!12 lAnn!4)))))

(assert (= (and d!58679 c!21789) b!88444))

(assert (= (and d!58679 (not c!21789)) b!88445))

(assert (= (and d!58679 res!46272) b!88446))

(declare-fun m!84514 () Bool)

(assert (=> d!58679 m!84514))

(declare-fun m!84516 () Bool)

(assert (=> d!58679 m!84516))

(assert (=> b!88445 m!84508))

(assert (=> b!88445 m!84508))

(declare-fun m!84518 () Bool)

(assert (=> b!88445 m!84518))

(declare-fun m!84520 () Bool)

(assert (=> b!88446 m!84520))

(declare-fun m!84522 () Bool)

(assert (=> b!88446 m!84522))

(assert (=> b!88427 d!58679))

(declare-fun d!58681 () Bool)

(declare-fun e!48033 () Bool)

(assert (=> d!58681 e!48033))

(declare-fun c!21792 () Bool)

(assert (=> d!58681 (= c!21792 (is-Cons!687 tlAnnSorted!2))))

(assert (=> d!58681 (l2AtLeast!5 tlAnnSorted!2 (+ n!1722 1))))

(assert (=> d!58681 (= (trivProp2!4 tlAnnSorted!2 n!1722) true)))

(declare-fun b!88451 () Bool)

(assert (=> b!88451 (= e!48033 (l2AtLeast!5 tlAnnSorted!2 n!1722))))

(declare-fun lt!20274 () Bool)

(assert (=> b!88451 (= lt!20274 (trivProp2!4 (t!48698 tlAnnSorted!2) n!1722))))

(declare-fun b!88452 () Bool)

(assert (=> b!88452 (= e!48033 (l2AtLeast!5 tlAnnSorted!2 n!1722))))

(assert (= (and d!58681 c!21792) b!88451))

(assert (= (and d!58681 (not c!21792)) b!88452))

(assert (=> d!58681 m!84498))

(assert (=> b!88451 m!84496))

(declare-fun m!84524 () Bool)

(assert (=> b!88451 m!84524))

(assert (=> b!88452 m!84496))

(assert (=> b!88433 d!58681))

(declare-fun d!58683 () Bool)

(declare-fun res!46277 () Bool)

(declare-fun e!48038 () Bool)

(assert (=> d!58683 (=> res!46277 e!48038)))

(assert (=> d!58683 (= res!46277 (is-Nil!689 tlAnnSorted!2))))

(assert (=> d!58683 (= (l2AtLeast!5 tlAnnSorted!2 n!1722) e!48038)))

(declare-fun b!88457 () Bool)

(declare-fun e!48039 () Bool)

(assert (=> b!88457 (= e!48038 e!48039)))

(declare-fun res!46278 () Bool)

(assert (=> b!88457 (=> (not res!46278) (not e!48039))))

(assert (=> b!88457 (= res!46278 (<= n!1722 (_2!238 (h!1091 tlAnnSorted!2))))))

(declare-fun b!88458 () Bool)

(assert (=> b!88458 (= e!48039 (l2AtLeast!5 (t!48698 tlAnnSorted!2) n!1722))))

(assert (= (and d!58683 (not res!46277)) b!88457))

(assert (= (and b!88457 res!46278) b!88458))

(declare-fun m!84526 () Bool)

(assert (=> b!88458 m!84526))

(assert (=> b!88418 d!58683))

(declare-fun d!58685 () Bool)

(declare-fun res!46279 () Bool)

(declare-fun e!48040 () Bool)

(assert (=> d!58685 (=> res!46279 e!48040)))

(assert (=> d!58685 (= res!46279 (is-Nil!689 (t!48698 lAnn!4)))))

(assert (=> d!58685 (= (l2AtLeast!5 (t!48698 lAnn!4) n!1722) e!48040)))

(declare-fun b!88459 () Bool)

(declare-fun e!48041 () Bool)

(assert (=> b!88459 (= e!48040 e!48041)))

(declare-fun res!46280 () Bool)

(assert (=> b!88459 (=> (not res!46280) (not e!48041))))

(assert (=> b!88459 (= res!46280 (<= n!1722 (_2!238 (h!1091 (t!48698 lAnn!4)))))))

(declare-fun b!88460 () Bool)

(assert (=> b!88460 (= e!48041 (l2AtLeast!5 (t!48698 (t!48698 lAnn!4)) n!1722))))

(assert (= (and d!58685 (not res!46279)) b!88459))

(assert (= (and b!88459 res!46280) b!88460))

(declare-fun m!84528 () Bool)

(assert (=> b!88460 m!84528))

(assert (=> b!88419 d!58685))

(declare-fun d!58687 () Bool)

(declare-fun lt!20277 () List!733)

(assert (=> d!58687 (l2AtLeast!5 lt!20277 n!1722)))

(declare-fun e!48044 () List!733)

(assert (=> d!58687 (= lt!20277 e!48044)))

(declare-fun c!21795 () Bool)

(assert (=> d!58687 (= c!21795 (is-Nil!690 l!1571))))

(assert (=> d!58687 (= (annotateList!5 l!1571 n!1722) lt!20277)))

(declare-fun b!88465 () Bool)

(assert (=> b!88465 (= e!48044 Nil!689)))

(declare-fun b!88466 () Bool)

(declare-fun hint!4 (List!733 Bool) List!733)

(declare-fun $colon$colon!19 (List!733 tuple2!406) List!733)

(assert (=> b!88466 (= e!48044 (hint!4 ($colon$colon!19 (annotateList!5 (t!48699 l!1571) (+ n!1722 1)) (tuple2!407 (h!1092 l!1571) n!1722)) (trivProp2!4 (annotateList!5 (t!48699 l!1571) (+ n!1722 1)) n!1722)))))

(assert (= (and d!58687 c!21795) b!88465))

(assert (= (and d!58687 (not c!21795)) b!88466))

(declare-fun m!84530 () Bool)

(assert (=> d!58687 m!84530))

(declare-fun m!84532 () Bool)

(assert (=> b!88466 m!84532))

(assert (=> b!88466 m!84532))

(declare-fun m!84534 () Bool)

(assert (=> b!88466 m!84534))

(assert (=> b!88466 m!84532))

(declare-fun m!84536 () Bool)

(assert (=> b!88466 m!84536))

(assert (=> b!88466 m!84534))

(assert (=> b!88466 m!84536))

(declare-fun m!84538 () Bool)

(assert (=> b!88466 m!84538))

(assert (=> start!11560 d!58687))

(declare-fun bs!41330 () Bool)

(declare-fun b!88477 () Bool)

(assert (= bs!41330 (and b!88477 b!88429)))

(declare-fun lambda!10885 () Int)

(assert (=> bs!41330 (= lambda!10885 lambda!10880)))

(assert (=> b!88477 true))

(assert (=> b!88477 (< (dynLambda!1054 order!497 key!514) (dynLambda!1055 order!499 lambda!10885))))

(declare-fun b_next!39837 () Bool)

(assert (=> start!11560 (= b_next!39835 (or (and b!88477 (= lambda!10885 keyAnn!5)) b_next!39837))))

(declare-fun bs!41331 () Bool)

(declare-fun b!88481 () Bool)

(assert (= bs!41331 (and b!88481 b!88429)))

(declare-fun lambda!10886 () Int)

(assert (=> bs!41331 (= lambda!10886 lambda!10880)))

(declare-fun bs!41332 () Bool)

(assert (= bs!41332 (and b!88481 b!88477)))

(assert (=> bs!41332 (= lambda!10886 lambda!10885)))

(assert (=> b!88481 true))

(assert (=> b!88481 (< (dynLambda!1054 order!497 key!514) (dynLambda!1055 order!499 lambda!10886))))

(declare-fun b_next!39839 () Bool)

(assert (=> start!11560 (= b_next!39837 (or (and b!88481 (= lambda!10886 keyAnn!5)) b_next!39839))))

(declare-fun e!48055 () Bool)

(declare-fun e!48053 () Bool)

(assert (=> b!88477 (= e!48055 e!48053)))

(declare-fun res!46291 () Bool)

(assert (=> b!88477 (=> (not res!46291) (not e!48053))))

(declare-fun lt!20286 () List!733)

(assert (=> b!88477 (= res!46291 (isStableSorted!4 lt!20286 key!514))))

(assert (=> b!88477 (= lt!20286 (insert!30 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4))) tlAnnSorted!2 lambda!10885))))

(declare-fun lt!20284 () Bool)

(assert (=> b!88477 (= lt!20284 (insertStableProp!3 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4)) (t!48698 tlAnnSorted!2) key!514))))

(declare-fun b!88478 () Bool)

(declare-fun e!48054 () Bool)

(declare-fun lt!20285 () List!733)

(assert (=> b!88478 (= e!48054 (l2AtLeast!5 lt!20285 (_2!238 (h!1091 lAnn!4))))))

(declare-fun b!88479 () Bool)

(assert (=> b!88479 (= e!48053 (l2AtLeast!5 lt!20286 (_2!238 (h!1091 lAnn!4))))))

(declare-fun b!88480 () Bool)

(declare-fun e!48056 () Bool)

(assert (=> b!88480 (= e!48056 (l2AtLeast!5 tlAnnSorted!2 (_2!238 (h!1091 lAnn!4))))))

(assert (=> b!88481 (= e!48055 e!48054)))

(declare-fun res!46292 () Bool)

(assert (=> b!88481 (=> (not res!46292) (not e!48054))))

(assert (=> b!88481 (= res!46292 (isStableSorted!4 lt!20285 key!514))))

(assert (=> b!88481 (= lt!20285 (insert!30 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4))) tlAnnSorted!2 lambda!10886))))

(declare-fun d!58689 () Bool)

(assert (=> d!58689 e!48055))

(declare-fun c!21798 () Bool)

(assert (=> d!58689 (= c!21798 (is-Cons!687 tlAnnSorted!2))))

(assert (=> d!58689 e!48056))

(declare-fun res!46290 () Bool)

(assert (=> d!58689 (=> (not res!46290) (not e!48056))))

(assert (=> d!58689 (= res!46290 (isStableSorted!4 tlAnnSorted!2 key!514))))

(assert (=> d!58689 (= (insertStableProp!3 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4)) tlAnnSorted!2 key!514) true)))

(assert (= (and d!58689 res!46290) b!88480))

(assert (= (and b!88477 res!46291) b!88479))

(assert (= (and b!88481 res!46292) b!88478))

(assert (= (and d!58689 c!21798) b!88477))

(assert (= (and d!58689 (not c!21798)) b!88481))

(declare-fun m!84540 () Bool)

(assert (=> d!58689 m!84540))

(declare-fun m!84542 () Bool)

(assert (=> b!88481 m!84542))

(declare-fun m!84544 () Bool)

(assert (=> b!88481 m!84544))

(declare-fun m!84546 () Bool)

(assert (=> b!88480 m!84546))

(declare-fun m!84548 () Bool)

(assert (=> b!88478 m!84548))

(declare-fun m!84550 () Bool)

(assert (=> b!88477 m!84550))

(declare-fun m!84552 () Bool)

(assert (=> b!88477 m!84552))

(declare-fun m!84554 () Bool)

(assert (=> b!88477 m!84554))

(declare-fun m!84556 () Bool)

(assert (=> b!88479 m!84556))

(assert (=> b!88428 d!58689))

(declare-fun bs!41333 () Bool)

(declare-fun d!58691 () Bool)

(assert (= bs!41333 (and d!58691 b!88429)))

(declare-fun lambda!10889 () Int)

(assert (=> bs!41333 (= lambda!10889 lambda!10880)))

(declare-fun bs!41334 () Bool)

(assert (= bs!41334 (and d!58691 b!88477)))

(assert (=> bs!41334 (= lambda!10889 lambda!10885)))

(declare-fun bs!41335 () Bool)

(assert (= bs!41335 (and d!58691 b!88481)))

(assert (=> bs!41335 (= lambda!10889 lambda!10886)))

(assert (=> d!58691 true))

(assert (=> d!58691 (< (dynLambda!1054 order!497 key!514) (dynLambda!1055 order!499 lambda!10889))))

(declare-fun b_next!39841 () Bool)

(assert (=> start!11560 (= b_next!39839 (or (and d!58691 (= lambda!10889 keyAnn!5)) b_next!39841))))

(declare-fun e!48061 () Bool)

(assert (=> d!58691 e!48061))

(declare-fun c!21801 () Bool)

(declare-fun lt!20294 () List!733)

(assert (=> d!58691 (= c!21801 (is-Nil!689 lt!20294))))

(declare-fun lt!20293 () List!733)

(assert (=> d!58691 (= lt!20293 (sort!6 lt!20294 lambda!10889))))

(assert (=> d!58691 (= lt!20294 (annotateList!5 xs!1094 (+ n!1722 1)))))

(assert (=> d!58691 (= (sortStablePropInt!4 xs!1094 (+ n!1722 1) key!514) true)))

(declare-fun b!88502 () Bool)

(declare-fun res!46312 () Bool)

(declare-fun e!48062 () Bool)

(assert (=> b!88502 (=> (not res!46312) (not e!48062))))

(assert (=> b!88502 (= res!46312 (= (+ n!1722 1) (_2!238 (h!1091 lt!20294))))))

(declare-fun b!88503 () Bool)

(assert (=> b!88503 (= e!48061 e!48062)))

(declare-fun res!46314 () Bool)

(assert (=> b!88503 (=> (not res!46314) (not e!48062))))

(assert (=> b!88503 (= res!46314 (sortStablePropInt!4 (t!48699 xs!1094) (+ (+ n!1722 1) 1) key!514))))

(declare-fun lt!20295 () List!733)

(assert (=> b!88503 (= lt!20295 (sort!6 (t!48698 lt!20294) lambda!10889))))

(declare-fun b!88504 () Bool)

(declare-fun res!46315 () Bool)

(assert (=> b!88504 (=> (not res!46315) (not e!48062))))

(assert (=> b!88504 (= res!46315 (l2AtLeast!5 (t!48698 lt!20294) (+ n!1722 1)))))

(declare-fun b!88505 () Bool)

(declare-fun res!46313 () Bool)

(assert (=> b!88505 (=> (not res!46313) (not e!48062))))

(assert (=> b!88505 (= res!46313 (l2AtLeast!5 lt!20295 (+ n!1722 1)))))

(declare-fun b!88506 () Bool)

(declare-fun res!46309 () Bool)

(assert (=> b!88506 (=> (not res!46309) (not e!48062))))

(assert (=> b!88506 (= res!46309 (isStableSorted!4 lt!20293 key!514))))

(declare-fun b!88507 () Bool)

(declare-fun res!46310 () Bool)

(assert (=> b!88507 (=> (not res!46310) (not e!48062))))

(assert (=> b!88507 (= res!46310 (trivProp2!4 lt!20295 (+ n!1722 1)))))

(declare-fun b!88508 () Bool)

(assert (=> b!88508 (= e!48061 (isStableSorted!4 lt!20293 key!514))))

(declare-fun b!88509 () Bool)

(assert (=> b!88509 (= e!48062 (l2AtLeast!5 lt!20293 (+ n!1722 1)))))

(declare-fun b!88510 () Bool)

(declare-fun res!46311 () Bool)

(assert (=> b!88510 (=> (not res!46311) (not e!48062))))

(assert (=> b!88510 (= res!46311 (l2AtLeast!5 lt!20295 (+ (+ n!1722 1) 1)))))

(declare-fun b!88511 () Bool)

(declare-fun res!46316 () Bool)

(assert (=> b!88511 (=> (not res!46316) (not e!48062))))

(assert (=> b!88511 (= res!46316 (insertStableProp!3 (_1!238 (h!1091 lt!20294)) (_2!238 (h!1091 lt!20294)) lt!20295 key!514))))

(assert (= (and b!88503 res!46314) b!88502))

(assert (= (and b!88502 res!46312) b!88504))

(assert (= (and b!88504 res!46315) b!88510))

(assert (= (and b!88510 res!46311) b!88507))

(assert (= (and b!88507 res!46310) b!88505))

(assert (= (and b!88505 res!46313) b!88511))

(assert (= (and b!88511 res!46316) b!88506))

(assert (= (and b!88506 res!46309) b!88509))

(assert (= (and d!58691 c!21801) b!88508))

(assert (= (and d!58691 (not c!21801)) b!88503))

(declare-fun m!84558 () Bool)

(assert (=> b!88503 m!84558))

(declare-fun m!84560 () Bool)

(assert (=> b!88503 m!84560))

(declare-fun m!84562 () Bool)

(assert (=> b!88507 m!84562))

(declare-fun m!84564 () Bool)

(assert (=> b!88509 m!84564))

(declare-fun m!84566 () Bool)

(assert (=> b!88510 m!84566))

(declare-fun m!84568 () Bool)

(assert (=> b!88511 m!84568))

(declare-fun m!84570 () Bool)

(assert (=> b!88508 m!84570))

(declare-fun m!84572 () Bool)

(assert (=> d!58691 m!84572))

(declare-fun m!84574 () Bool)

(assert (=> d!58691 m!84574))

(declare-fun m!84576 () Bool)

(assert (=> b!88505 m!84576))

(assert (=> b!88506 m!84570))

(declare-fun m!84578 () Bool)

(assert (=> b!88504 m!84578))

(assert (=> b!88425 d!58691))

(declare-fun d!58693 () Bool)

(declare-fun res!46317 () Bool)

(declare-fun e!48063 () Bool)

(assert (=> d!58693 (=> res!46317 e!48063)))

(assert (=> d!58693 (= res!46317 (is-Nil!689 lAnnSorted!4))))

(assert (=> d!58693 (= (l2AtLeast!5 lAnnSorted!4 n!1722) e!48063)))

(declare-fun b!88512 () Bool)

(declare-fun e!48064 () Bool)

(assert (=> b!88512 (= e!48063 e!48064)))

(declare-fun res!46318 () Bool)

(assert (=> b!88512 (=> (not res!46318) (not e!48064))))

(assert (=> b!88512 (= res!46318 (<= n!1722 (_2!238 (h!1091 lAnnSorted!4))))))

(declare-fun b!88513 () Bool)

(assert (=> b!88513 (= e!48064 (l2AtLeast!5 (t!48698 lAnnSorted!4) n!1722))))

(assert (= (and d!58693 (not res!46317)) b!88512))

(assert (= (and b!88512 res!46318) b!88513))

(declare-fun m!84580 () Bool)

(assert (=> b!88513 m!84580))

(assert (=> b!88421 d!58693))

(declare-fun d!58695 () Bool)

(declare-fun res!46321 () Bool)

(declare-fun e!48067 () Bool)

(assert (=> d!58695 (=> res!46321 e!48067)))

(assert (=> d!58695 (= res!46321 (is-Nil!689 lAnnSorted!4))))

(assert (=> d!58695 (= (isStableSorted!4 lAnnSorted!4 key!514) e!48067)))

(declare-fun b!88516 () Bool)

(declare-fun isStableSortedAndAtLeast!4 (List!733 Int Int Int) Bool)

(declare-fun dynLambda!1056 (Int T!5997) Int)

(assert (=> b!88516 (= e!48067 (isStableSortedAndAtLeast!4 (t!48698 lAnnSorted!4) key!514 (dynLambda!1056 key!514 (_1!238 (h!1091 lAnnSorted!4))) (_2!238 (h!1091 lAnnSorted!4))))))

(assert (= (and d!58695 (not res!46321)) b!88516))

(declare-fun b_lambda!17567 () Bool)

(assert (=> (not b_lambda!17567) (not b!88516)))

(declare-fun t!48702 () Bool)

(declare-fun tb!46603 () Bool)

(assert (=> (and start!11560 (= key!514 key!514) t!48702) tb!46603))

(declare-fun result!47045 () Bool)

(assert (=> tb!46603 (= result!47045 true)))

(assert (=> b!88516 t!48702))

(declare-fun b_and!60133 () Bool)

(assert (= b_and!60129 (and (=> t!48702 result!47045) b_and!60133)))

(declare-fun m!84582 () Bool)

(assert (=> b!88516 m!84582))

(assert (=> b!88516 m!84582))

(declare-fun m!84584 () Bool)

(assert (=> b!88516 m!84584))

(assert (=> b!88435 d!58695))

(declare-fun d!58697 () Bool)

(declare-fun e!48068 () Bool)

(assert (=> d!58697 e!48068))

(declare-fun res!46322 () Bool)

(assert (=> d!58697 (=> (not res!46322) (not e!48068))))

(declare-fun lt!20296 () List!733)

(assert (=> d!58697 (= res!46322 (= (content!160 lt!20296) (content!160 (t!48698 lAnn!4))))))

(declare-fun e!48069 () List!733)

(assert (=> d!58697 (= lt!20296 e!48069)))

(declare-fun c!21802 () Bool)

(assert (=> d!58697 (= c!21802 (is-Nil!689 (t!48698 lAnn!4)))))

(assert (=> d!58697 (= (sort!6 (t!48698 lAnn!4) keyAnn!5) lt!20296)))

(declare-fun b!88517 () Bool)

(assert (=> b!88517 (= e!48069 (t!48698 lAnn!4))))

(declare-fun b!88518 () Bool)

(assert (=> b!88518 (= e!48069 (insert!30 (h!1091 (t!48698 lAnn!4)) (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5) keyAnn!5))))

(declare-fun b!88519 () Bool)

(assert (=> b!88519 (= e!48068 (= (length!12 lt!20296) (length!12 (t!48698 lAnn!4))))))

(assert (= (and d!58697 c!21802) b!88517))

(assert (= (and d!58697 (not c!21802)) b!88518))

(assert (= (and d!58697 res!46322) b!88519))

(declare-fun m!84586 () Bool)

(assert (=> d!58697 m!84586))

(declare-fun m!84588 () Bool)

(assert (=> d!58697 m!84588))

(declare-fun m!84590 () Bool)

(assert (=> b!88518 m!84590))

(assert (=> b!88518 m!84590))

(declare-fun m!84592 () Bool)

(assert (=> b!88518 m!84592))

(declare-fun m!84594 () Bool)

(assert (=> b!88519 m!84594))

(declare-fun m!84596 () Bool)

(assert (=> b!88519 m!84596))

(assert (=> b!88426 d!58697))

(declare-fun d!58699 () Bool)

(declare-fun res!46323 () Bool)

(declare-fun e!48070 () Bool)

(assert (=> d!58699 (=> res!46323 e!48070)))

(assert (=> d!58699 (= res!46323 (is-Nil!689 tlAnnSorted!2))))

(assert (=> d!58699 (= (l2AtLeast!5 tlAnnSorted!2 (+ n!1722 1)) e!48070)))

(declare-fun b!88520 () Bool)

(declare-fun e!48071 () Bool)

(assert (=> b!88520 (= e!48070 e!48071)))

(declare-fun res!46324 () Bool)

(assert (=> b!88520 (=> (not res!46324) (not e!48071))))

(assert (=> b!88520 (= res!46324 (<= (+ n!1722 1) (_2!238 (h!1091 tlAnnSorted!2))))))

(declare-fun b!88521 () Bool)

(assert (=> b!88521 (= e!48071 (l2AtLeast!5 (t!48698 tlAnnSorted!2) (+ n!1722 1)))))

(assert (= (and d!58699 (not res!46323)) b!88520))

(assert (= (and b!88520 res!46324) b!88521))

(declare-fun m!84598 () Bool)

(assert (=> b!88521 m!84598))

(assert (=> b!88432 d!58699))

(declare-fun b!88526 () Bool)

(declare-fun e!48074 () Bool)

(declare-fun tp!17285 () Bool)

(assert (=> b!88526 (= e!48074 (and tp_is_empty!377 tp!17285))))

(assert (=> b!88423 (= tp!17282 e!48074)))

(assert (= (and b!88423 (is-Cons!687 (t!48698 lAnn!4))) b!88526))

(declare-fun b!88531 () Bool)

(declare-fun e!48077 () Bool)

(declare-fun tp!17288 () Bool)

(assert (=> b!88531 (= e!48077 (and tp_is_empty!377 tp!17288))))

(assert (=> b!88434 (= tp!17279 e!48077)))

(assert (= (and b!88434 (is-Cons!688 (t!48699 xs!1094))) b!88531))

(declare-fun b!88532 () Bool)

(declare-fun e!48078 () Bool)

(declare-fun tp!17289 () Bool)

(assert (=> b!88532 (= e!48078 (and tp_is_empty!377 tp!17289))))

(assert (=> b!88424 (= tp!17281 e!48078)))

(assert (= (and b!88424 (is-Cons!687 (t!48698 tlAnnSorted!2))) b!88532))

(declare-fun b!88533 () Bool)

(declare-fun e!48079 () Bool)

(declare-fun tp!17290 () Bool)

(assert (=> b!88533 (= e!48079 (and tp_is_empty!377 tp!17290))))

(assert (=> b!88430 (= tp!17278 e!48079)))

(assert (= (and b!88430 (is-Cons!687 (t!48698 lAnnSorted!4))) b!88533))

(declare-fun b!88534 () Bool)

(declare-fun e!48080 () Bool)

(declare-fun tp!17291 () Bool)

(assert (=> b!88534 (= e!48080 (and tp_is_empty!377 tp!17291))))

(assert (=> b!88420 (= tp!17277 e!48080)))

(assert (= (and b!88420 (is-Cons!688 (t!48699 l!1571))) b!88534))

(declare-fun b_lambda!17569 () Bool)

(assert (= b_lambda!17567 (or (and start!11560 b_free!7509) b_lambda!17569)))

(push 1)

(assert (not b!88513))

(assert (not b!88534))

(assert (not b_next!39841))

(assert (not b!88508))

(assert (not b!88477))

(assert b_and!60133)

(assert (not d!58689))

(assert (not b!88481))

(assert (not d!58687))

(assert (not b!88510))

(assert (not d!58681))

(assert (not b!88511))

(assert (not b!88478))

(assert (not b!88505))

(assert (not b_lambda!17569))

(assert (not b!88446))

(assert (not b!88507))

(assert tp_is_empty!377)

(assert (not b!88533))

(assert (not b!88504))

(assert (not b!88451))

(assert (not b!88460))

(assert (not d!58691))

(assert (not b!88521))

(assert (not b!88452))

(assert (not b!88480))

(assert (not b!88503))

(assert (not b!88519))

(assert (not b!88458))

(assert (not b!88531))

(assert (not b!88518))

(assert (not b!88479))

(assert (not b!88532))

(assert (not b!88516))

(assert (not b!88526))

(assert (not d!58697))

(assert (not b!88445))

(assert (not b_next!39831))

(assert (not b!88466))

(assert b_and!60131)

(assert (not b!88506))

(assert (not b!88509))

(assert (not d!58679))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60133)

(assert b_and!60131)

(assert (not b_next!39841))

(assert (not b_next!39831))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58701 () Bool)

(declare-fun res!46325 () Bool)

(declare-fun e!48081 () Bool)

(assert (=> d!58701 (=> res!46325 e!48081)))

(assert (=> d!58701 (= res!46325 (is-Nil!689 lt!20285))))

(assert (=> d!58701 (= (l2AtLeast!5 lt!20285 (_2!238 (h!1091 lAnn!4))) e!48081)))

(declare-fun b!88535 () Bool)

(declare-fun e!48082 () Bool)

(assert (=> b!88535 (= e!48081 e!48082)))

(declare-fun res!46326 () Bool)

(assert (=> b!88535 (=> (not res!46326) (not e!48082))))

(assert (=> b!88535 (= res!46326 (<= (_2!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lt!20285))))))

(declare-fun b!88536 () Bool)

(assert (=> b!88536 (= e!48082 (l2AtLeast!5 (t!48698 lt!20285) (_2!238 (h!1091 lAnn!4))))))

(assert (= (and d!58701 (not res!46325)) b!88535))

(assert (= (and b!88535 res!46326) b!88536))

(declare-fun m!84600 () Bool)

(assert (=> b!88536 m!84600))

(assert (=> b!88478 d!58701))

(declare-fun d!58703 () Bool)

(declare-fun e!48083 () Bool)

(assert (=> d!58703 e!48083))

(declare-fun c!21803 () Bool)

(assert (=> d!58703 (= c!21803 (is-Cons!687 lt!20295))))

(assert (=> d!58703 (l2AtLeast!5 lt!20295 (+ (+ n!1722 1) 1))))

(assert (=> d!58703 (= (trivProp2!4 lt!20295 (+ n!1722 1)) true)))

(declare-fun b!88537 () Bool)

(assert (=> b!88537 (= e!48083 (l2AtLeast!5 lt!20295 (+ n!1722 1)))))

(declare-fun lt!20297 () Bool)

(assert (=> b!88537 (= lt!20297 (trivProp2!4 (t!48698 lt!20295) (+ n!1722 1)))))

(declare-fun b!88538 () Bool)

(assert (=> b!88538 (= e!48083 (l2AtLeast!5 lt!20295 (+ n!1722 1)))))

(assert (= (and d!58703 c!21803) b!88537))

(assert (= (and d!58703 (not c!21803)) b!88538))

(assert (=> d!58703 m!84566))

(assert (=> b!88537 m!84576))

(declare-fun m!84602 () Bool)

(assert (=> b!88537 m!84602))

(assert (=> b!88538 m!84576))

(assert (=> b!88507 d!58703))

(declare-fun d!58705 () Bool)

(declare-fun res!46327 () Bool)

(declare-fun e!48084 () Bool)

(assert (=> d!58705 (=> res!46327 e!48084)))

(assert (=> d!58705 (= res!46327 (is-Nil!689 lt!20295))))

(assert (=> d!58705 (= (l2AtLeast!5 lt!20295 (+ (+ n!1722 1) 1)) e!48084)))

(declare-fun b!88539 () Bool)

(declare-fun e!48085 () Bool)

(assert (=> b!88539 (= e!48084 e!48085)))

(declare-fun res!46328 () Bool)

(assert (=> b!88539 (=> (not res!46328) (not e!48085))))

(assert (=> b!88539 (= res!46328 (<= (+ (+ n!1722 1) 1) (_2!238 (h!1091 lt!20295))))))

(declare-fun b!88540 () Bool)

(assert (=> b!88540 (= e!48085 (l2AtLeast!5 (t!48698 lt!20295) (+ (+ n!1722 1) 1)))))

(assert (= (and d!58705 (not res!46327)) b!88539))

(assert (= (and b!88539 res!46328) b!88540))

(declare-fun m!84604 () Bool)

(assert (=> b!88540 m!84604))

(assert (=> b!88510 d!58705))

(declare-fun d!58707 () Bool)

(declare-fun res!46329 () Bool)

(declare-fun e!48086 () Bool)

(assert (=> d!58707 (=> res!46329 e!48086)))

(assert (=> d!58707 (= res!46329 (is-Nil!689 (t!48698 (t!48698 lAnn!4))))))

(assert (=> d!58707 (= (l2AtLeast!5 (t!48698 (t!48698 lAnn!4)) n!1722) e!48086)))

(declare-fun b!88541 () Bool)

(declare-fun e!48087 () Bool)

(assert (=> b!88541 (= e!48086 e!48087)))

(declare-fun res!46330 () Bool)

(assert (=> b!88541 (=> (not res!46330) (not e!48087))))

(assert (=> b!88541 (= res!46330 (<= n!1722 (_2!238 (h!1091 (t!48698 (t!48698 lAnn!4))))))))

(declare-fun b!88542 () Bool)

(assert (=> b!88542 (= e!48087 (l2AtLeast!5 (t!48698 (t!48698 (t!48698 lAnn!4))) n!1722))))

(assert (= (and d!58707 (not res!46329)) b!88541))

(assert (= (and b!88541 res!46330) b!88542))

(declare-fun m!84606 () Bool)

(assert (=> b!88542 m!84606))

(assert (=> b!88460 d!58707))

(declare-fun b!88552 () Bool)

(declare-fun e!48097 () Bool)

(declare-fun e!48096 () Bool)

(assert (=> b!88552 (= e!48097 e!48096)))

(declare-fun res!46339 () Bool)

(assert (=> b!88552 (=> (not res!46339) (not e!48096))))

(assert (=> b!88552 (= res!46339 (= (dynLambda!1056 key!514 (_1!238 (h!1091 lAnnSorted!4))) (dynLambda!1056 key!514 (_1!238 (h!1091 (t!48698 lAnnSorted!4))))))))

(declare-fun b!88554 () Bool)

(declare-fun e!48099 () Bool)

(assert (=> b!88554 (= e!48099 (isStableSortedAndAtLeast!4 (t!48698 (t!48698 lAnnSorted!4)) key!514 (dynLambda!1056 key!514 (_1!238 (h!1091 (t!48698 lAnnSorted!4)))) (_2!238 (h!1091 (t!48698 lAnnSorted!4)))))))

(declare-fun b!88551 () Bool)

(declare-fun e!48098 () Bool)

(assert (=> b!88551 (= e!48098 e!48099)))

(declare-fun res!46340 () Bool)

(assert (=> b!88551 (=> (not res!46340) (not e!48099))))

(assert (=> b!88551 (= res!46340 e!48097)))

(declare-fun res!46341 () Bool)

(assert (=> b!88551 (=> res!46341 e!48097)))

(assert (=> b!88551 (= res!46341 (< (dynLambda!1056 key!514 (_1!238 (h!1091 lAnnSorted!4))) (dynLambda!1056 key!514 (_1!238 (h!1091 (t!48698 lAnnSorted!4))))))))

(declare-fun b!88553 () Bool)

(assert (=> b!88553 (= e!48096 (<= (_2!238 (h!1091 lAnnSorted!4)) (_2!238 (h!1091 (t!48698 lAnnSorted!4)))))))

(declare-fun d!58709 () Bool)

(declare-fun res!46342 () Bool)

(assert (=> d!58709 (=> res!46342 e!48098)))

(assert (=> d!58709 (= res!46342 (is-Nil!689 (t!48698 lAnnSorted!4)))))

(assert (=> d!58709 (= (isStableSortedAndAtLeast!4 (t!48698 lAnnSorted!4) key!514 (dynLambda!1056 key!514 (_1!238 (h!1091 lAnnSorted!4))) (_2!238 (h!1091 lAnnSorted!4))) e!48098)))

(assert (= (and d!58709 (not res!46342)) b!88551))

(assert (= (and b!88551 (not res!46341)) b!88552))

(assert (= (and b!88552 res!46339) b!88553))

(assert (= (and b!88551 res!46340) b!88554))

(declare-fun b_lambda!17571 () Bool)

(assert (=> (not b_lambda!17571) (not b!88552)))

(declare-fun t!48704 () Bool)

(declare-fun tb!46605 () Bool)

(assert (=> (and start!11560 (= key!514 key!514) t!48704) tb!46605))

(declare-fun result!47051 () Bool)

(assert (=> tb!46605 (= result!47051 true)))

(assert (=> b!88552 t!48704))

(declare-fun b_and!60135 () Bool)

(assert (= b_and!60133 (and (=> t!48704 result!47051) b_and!60135)))

(declare-fun b_lambda!17573 () Bool)

(assert (=> (not b_lambda!17573) (not b!88554)))

(assert (=> b!88554 t!48704))

(declare-fun b_and!60137 () Bool)

(assert (= b_and!60135 (and (=> t!48704 result!47051) b_and!60137)))

(declare-fun b_lambda!17575 () Bool)

(assert (=> (not b_lambda!17575) (not b!88551)))

(assert (=> b!88551 t!48704))

(declare-fun b_and!60139 () Bool)

(assert (= b_and!60137 (and (=> t!48704 result!47051) b_and!60139)))

(declare-fun m!84608 () Bool)

(assert (=> b!88552 m!84608))

(assert (=> b!88554 m!84608))

(assert (=> b!88554 m!84608))

(declare-fun m!84610 () Bool)

(assert (=> b!88554 m!84610))

(assert (=> b!88551 m!84608))

(assert (=> b!88516 d!58709))

(assert (=> b!88451 d!58683))

(declare-fun d!58711 () Bool)

(declare-fun e!48100 () Bool)

(assert (=> d!58711 e!48100))

(declare-fun c!21804 () Bool)

(assert (=> d!58711 (= c!21804 (is-Cons!687 (t!48698 tlAnnSorted!2)))))

(assert (=> d!58711 (l2AtLeast!5 (t!48698 tlAnnSorted!2) (+ n!1722 1))))

(assert (=> d!58711 (= (trivProp2!4 (t!48698 tlAnnSorted!2) n!1722) true)))

(declare-fun b!88555 () Bool)

(assert (=> b!88555 (= e!48100 (l2AtLeast!5 (t!48698 tlAnnSorted!2) n!1722))))

(declare-fun lt!20298 () Bool)

(assert (=> b!88555 (= lt!20298 (trivProp2!4 (t!48698 (t!48698 tlAnnSorted!2)) n!1722))))

(declare-fun b!88556 () Bool)

(assert (=> b!88556 (= e!48100 (l2AtLeast!5 (t!48698 tlAnnSorted!2) n!1722))))

(assert (= (and d!58711 c!21804) b!88555))

(assert (= (and d!58711 (not c!21804)) b!88556))

(assert (=> d!58711 m!84598))

(assert (=> b!88555 m!84526))

(declare-fun m!84612 () Bool)

(assert (=> b!88555 m!84612))

(assert (=> b!88556 m!84526))

(assert (=> b!88451 d!58711))

(declare-fun d!58713 () Bool)

(declare-fun res!46343 () Bool)

(declare-fun e!48101 () Bool)

(assert (=> d!58713 (=> res!46343 e!48101)))

(assert (=> d!58713 (= res!46343 (is-Nil!689 lt!20293))))

(assert (=> d!58713 (= (isStableSorted!4 lt!20293 key!514) e!48101)))

(declare-fun b!88557 () Bool)

(assert (=> b!88557 (= e!48101 (isStableSortedAndAtLeast!4 (t!48698 lt!20293) key!514 (dynLambda!1056 key!514 (_1!238 (h!1091 lt!20293))) (_2!238 (h!1091 lt!20293))))))

(assert (= (and d!58713 (not res!46343)) b!88557))

(declare-fun b_lambda!17577 () Bool)

(assert (=> (not b_lambda!17577) (not b!88557)))

(declare-fun t!48706 () Bool)

(declare-fun tb!46607 () Bool)

(assert (=> (and start!11560 (= key!514 key!514) t!48706) tb!46607))

(declare-fun result!47053 () Bool)

(assert (=> tb!46607 (= result!47053 true)))

(assert (=> b!88557 t!48706))

(declare-fun b_and!60141 () Bool)

(assert (= b_and!60139 (and (=> t!48706 result!47053) b_and!60141)))

(declare-fun m!84614 () Bool)

(assert (=> b!88557 m!84614))

(assert (=> b!88557 m!84614))

(declare-fun m!84616 () Bool)

(assert (=> b!88557 m!84616))

(assert (=> b!88506 d!58713))

(declare-fun d!58715 () Bool)

(declare-fun res!46344 () Bool)

(declare-fun e!48102 () Bool)

(assert (=> d!58715 (=> res!46344 e!48102)))

(assert (=> d!58715 (= res!46344 (is-Nil!689 lt!20293))))

(assert (=> d!58715 (= (l2AtLeast!5 lt!20293 (+ n!1722 1)) e!48102)))

(declare-fun b!88558 () Bool)

(declare-fun e!48103 () Bool)

(assert (=> b!88558 (= e!48102 e!48103)))

(declare-fun res!46345 () Bool)

(assert (=> b!88558 (=> (not res!46345) (not e!48103))))

(assert (=> b!88558 (= res!46345 (<= (+ n!1722 1) (_2!238 (h!1091 lt!20293))))))

(declare-fun b!88559 () Bool)

(assert (=> b!88559 (= e!48103 (l2AtLeast!5 (t!48698 lt!20293) (+ n!1722 1)))))

(assert (= (and d!58715 (not res!46344)) b!88558))

(assert (= (and b!88558 res!46345) b!88559))

(declare-fun m!84618 () Bool)

(assert (=> b!88559 m!84618))

(assert (=> b!88509 d!58715))

(assert (=> d!58681 d!58699))

(declare-fun d!58717 () Bool)

(declare-fun res!46346 () Bool)

(declare-fun e!48104 () Bool)

(assert (=> d!58717 (=> res!46346 e!48104)))

(assert (=> d!58717 (= res!46346 (is-Nil!689 lt!20286))))

(assert (=> d!58717 (= (l2AtLeast!5 lt!20286 (_2!238 (h!1091 lAnn!4))) e!48104)))

(declare-fun b!88560 () Bool)

(declare-fun e!48105 () Bool)

(assert (=> b!88560 (= e!48104 e!48105)))

(declare-fun res!46347 () Bool)

(assert (=> b!88560 (=> (not res!46347) (not e!48105))))

(assert (=> b!88560 (= res!46347 (<= (_2!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lt!20286))))))

(declare-fun b!88561 () Bool)

(assert (=> b!88561 (= e!48105 (l2AtLeast!5 (t!48698 lt!20286) (_2!238 (h!1091 lAnn!4))))))

(assert (= (and d!58717 (not res!46346)) b!88560))

(assert (= (and b!88560 res!46347) b!88561))

(declare-fun m!84620 () Bool)

(assert (=> b!88561 m!84620))

(assert (=> b!88479 d!58717))

(declare-fun e!48125 () Bool)

(declare-fun lt!20303 () List!733)

(declare-fun b!88582 () Bool)

(assert (=> b!88582 (= e!48125 (= (length!12 lt!20303) (+ 1 (length!12 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))))

(declare-fun b!88583 () Bool)

(declare-fun e!48124 () List!733)

(assert (=> b!88583 (= e!48124 ($colon$colon!19 (insert!30 (h!1091 (t!48698 lAnn!4)) (t!48698 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)) keyAnn!5) (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5))))))

(declare-fun d!58719 () Bool)

(assert (=> d!58719 e!48125))

(declare-fun res!46368 () Bool)

(assert (=> d!58719 (=> (not res!46368) (not e!48125))))

(assert (=> d!58719 (= res!46368 (= (content!160 lt!20303) (union (insert (h!1091 (t!48698 lAnn!4)) (as emptyset (Set tuple2!406))) (content!160 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))))

(assert (=> d!58719 (= lt!20303 e!48124)))

(declare-fun c!21809 () Bool)

(declare-fun e!48129 () Bool)

(assert (=> d!58719 (= c!21809 e!48129)))

(declare-fun res!46364 () Bool)

(assert (=> d!58719 (=> res!46364 e!48129)))

(declare-fun lt!20304 () Bool)

(assert (=> d!58719 (= res!46364 lt!20304)))

(assert (=> d!58719 (= lt!20304 (is-Nil!689 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))

(assert (=> d!58719 (= (insert!30 (h!1091 (t!48698 lAnn!4)) (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5) keyAnn!5) lt!20303)))

(declare-fun b!88584 () Bool)

(declare-fun e!48127 () List!733)

(assert (=> b!88584 (= e!48124 e!48127)))

(declare-fun c!21810 () Bool)

(declare-fun e!48123 () Bool)

(assert (=> b!88584 (= c!21810 e!48123)))

(declare-fun res!46369 () Bool)

(assert (=> b!88584 (=> res!46369 e!48123)))

(assert (=> b!88584 (= res!46369 lt!20304)))

(declare-fun b!88585 () Bool)

(declare-fun e!48128 () Bool)

(assert (=> b!88585 (= e!48123 e!48128)))

(declare-fun res!46365 () Bool)

(assert (=> b!88585 (=> (not res!46365) (not e!48128))))

(assert (=> b!88585 (= res!46365 (and (not lt!20304) (is-Cons!687 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5))))))

(declare-fun b!88586 () Bool)

(declare-fun res!46366 () List!733)

(assert (=> b!88586 (= e!48127 res!46366)))

(assert (=> b!88586 true))

(declare-fun e!48122 () Bool)

(assert (=> b!88586 e!48122))

(declare-fun b!88587 () Bool)

(declare-fun tp!17294 () Bool)

(assert (=> b!88587 (= e!48122 (and tp_is_empty!377 tp!17294))))

(declare-fun b!88588 () Bool)

(declare-fun e!48126 () Bool)

(declare-fun dynLambda!1057 (Int tuple2!406) Int)

(assert (=> b!88588 (= e!48126 (<= (dynLambda!1057 keyAnn!5 (h!1091 (t!48698 lAnn!4))) (dynLambda!1057 keyAnn!5 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))))

(declare-fun b!88589 () Bool)

(assert (=> b!88589 (= e!48128 (<= (dynLambda!1057 keyAnn!5 (h!1091 (t!48698 lAnn!4))) (dynLambda!1057 keyAnn!5 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))))

(declare-fun b!88590 () Bool)

(assert (=> b!88590 (= e!48129 e!48126)))

(declare-fun res!46367 () Bool)

(assert (=> b!88590 (=> (not res!46367) (not e!48126))))

(assert (=> b!88590 (= res!46367 (is-Cons!687 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))

(declare-fun b!88591 () Bool)

(assert (=> b!88591 (= e!48127 ($colon$colon!19 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5) (h!1091 (t!48698 lAnn!4))))))

(assert (= (and d!58719 (not res!46364)) b!88590))

(assert (= (and b!88590 res!46367) b!88588))

(assert (= (and b!88584 (not res!46369)) b!88585))

(assert (= (and b!88585 res!46365) b!88589))

(assert (= (and b!88586 (is-Cons!687 res!46366)) b!88587))

(assert (= (and b!88584 c!21810) b!88591))

(assert (= (and b!88584 (not c!21810)) b!88586))

(assert (= (and d!58719 c!21809) b!88584))

(assert (= (and d!58719 (not c!21809)) b!88583))

(assert (= (and d!58719 res!46368) b!88582))

(declare-fun b_lambda!17579 () Bool)

(assert (=> (not b_lambda!17579) (not b!88588)))

(declare-fun t!48709 () Bool)

(declare-fun tb!46609 () Bool)

(assert (=> (and start!11560 (= keyAnn!5 keyAnn!5) t!48709) tb!46609))

(declare-fun result!47055 () Bool)

(assert (=> tb!46609 (= result!47055 true)))

(assert (=> b!88588 t!48709))

(declare-fun b_and!60143 () Bool)

(assert (= b_and!60131 (and (=> t!48709 result!47055) b_and!60143)))

(declare-fun b_lambda!17581 () Bool)

(assert (=> (not b_lambda!17581) (not b!88588)))

(declare-fun t!48711 () Bool)

(declare-fun tb!46611 () Bool)

(assert (=> (and start!11560 (= keyAnn!5 keyAnn!5) t!48711) tb!46611))

(declare-fun result!47057 () Bool)

(assert (=> tb!46611 (= result!47057 true)))

(assert (=> b!88588 t!48711))

(declare-fun b_and!60145 () Bool)

(assert (= b_and!60143 (and (=> t!48711 result!47057) b_and!60145)))

(declare-fun b_lambda!17583 () Bool)

(assert (=> (not b_lambda!17583) (not b!88589)))

(assert (=> b!88589 t!48709))

(declare-fun b_and!60147 () Bool)

(assert (= b_and!60145 (and (=> t!48709 result!47055) b_and!60147)))

(declare-fun b_lambda!17585 () Bool)

(assert (=> (not b_lambda!17585) (not b!88589)))

(assert (=> b!88589 t!48711))

(declare-fun b_and!60149 () Bool)

(assert (= b_and!60147 (and (=> t!48711 result!47057) b_and!60149)))

(declare-fun m!84622 () Bool)

(assert (=> b!88582 m!84622))

(assert (=> b!88582 m!84590))

(declare-fun m!84624 () Bool)

(assert (=> b!88582 m!84624))

(declare-fun m!84626 () Bool)

(assert (=> b!88588 m!84626))

(declare-fun m!84628 () Bool)

(assert (=> b!88588 m!84628))

(declare-fun m!84630 () Bool)

(assert (=> d!58719 m!84630))

(declare-fun m!84632 () Bool)

(assert (=> d!58719 m!84632))

(assert (=> d!58719 m!84590))

(declare-fun m!84634 () Bool)

(assert (=> d!58719 m!84634))

(assert (=> b!88591 m!84590))

(declare-fun m!84636 () Bool)

(assert (=> b!88591 m!84636))

(declare-fun m!84638 () Bool)

(assert (=> b!88583 m!84638))

(assert (=> b!88583 m!84638))

(declare-fun m!84640 () Bool)

(assert (=> b!88583 m!84640))

(assert (=> b!88589 m!84626))

(assert (=> b!88589 m!84628))

(assert (=> b!88518 d!58719))

(declare-fun d!58721 () Bool)

(declare-fun e!48130 () Bool)

(assert (=> d!58721 e!48130))

(declare-fun res!46370 () Bool)

(assert (=> d!58721 (=> (not res!46370) (not e!48130))))

(declare-fun lt!20305 () List!733)

(assert (=> d!58721 (= res!46370 (= (content!160 lt!20305) (content!160 (t!48698 (t!48698 lAnn!4)))))))

(declare-fun e!48131 () List!733)

(assert (=> d!58721 (= lt!20305 e!48131)))

(declare-fun c!21811 () Bool)

(assert (=> d!58721 (= c!21811 (is-Nil!689 (t!48698 (t!48698 lAnn!4))))))

(assert (=> d!58721 (= (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5) lt!20305)))

(declare-fun b!88592 () Bool)

(assert (=> b!88592 (= e!48131 (t!48698 (t!48698 lAnn!4)))))

(declare-fun b!88593 () Bool)

(assert (=> b!88593 (= e!48131 (insert!30 (h!1091 (t!48698 (t!48698 lAnn!4))) (sort!6 (t!48698 (t!48698 (t!48698 lAnn!4))) keyAnn!5) keyAnn!5))))

(declare-fun b!88594 () Bool)

(assert (=> b!88594 (= e!48130 (= (length!12 lt!20305) (length!12 (t!48698 (t!48698 lAnn!4)))))))

(assert (= (and d!58721 c!21811) b!88592))

(assert (= (and d!58721 (not c!21811)) b!88593))

(assert (= (and d!58721 res!46370) b!88594))

(declare-fun m!84642 () Bool)

(assert (=> d!58721 m!84642))

(declare-fun m!84644 () Bool)

(assert (=> d!58721 m!84644))

(declare-fun m!84646 () Bool)

(assert (=> b!88593 m!84646))

(assert (=> b!88593 m!84646))

(declare-fun m!84648 () Bool)

(assert (=> b!88593 m!84648))

(declare-fun m!84650 () Bool)

(assert (=> b!88594 m!84650))

(declare-fun m!84652 () Bool)

(assert (=> b!88594 m!84652))

(assert (=> b!88518 d!58721))

(declare-fun d!58723 () Bool)

(declare-fun res!46371 () Bool)

(declare-fun e!48132 () Bool)

(assert (=> d!58723 (=> res!46371 e!48132)))

(assert (=> d!58723 (= res!46371 (is-Nil!689 (t!48698 tlAnnSorted!2)))))

(assert (=> d!58723 (= (l2AtLeast!5 (t!48698 tlAnnSorted!2) n!1722) e!48132)))

(declare-fun b!88595 () Bool)

(declare-fun e!48133 () Bool)

(assert (=> b!88595 (= e!48132 e!48133)))

(declare-fun res!46372 () Bool)

(assert (=> b!88595 (=> (not res!46372) (not e!48133))))

(assert (=> b!88595 (= res!46372 (<= n!1722 (_2!238 (h!1091 (t!48698 tlAnnSorted!2)))))))

(declare-fun b!88596 () Bool)

(assert (=> b!88596 (= e!48133 (l2AtLeast!5 (t!48698 (t!48698 tlAnnSorted!2)) n!1722))))

(assert (= (and d!58723 (not res!46371)) b!88595))

(assert (= (and b!88595 res!46372) b!88596))

(declare-fun m!84654 () Bool)

(assert (=> b!88596 m!84654))

(assert (=> b!88458 d!58723))

(declare-fun d!58725 () Bool)

(declare-fun res!46373 () Bool)

(declare-fun e!48134 () Bool)

(assert (=> d!58725 (=> res!46373 e!48134)))

(assert (=> d!58725 (= res!46373 (is-Nil!689 (t!48698 lAnnSorted!4)))))

(assert (=> d!58725 (= (l2AtLeast!5 (t!48698 lAnnSorted!4) n!1722) e!48134)))

(declare-fun b!88597 () Bool)

(declare-fun e!48135 () Bool)

(assert (=> b!88597 (= e!48134 e!48135)))

(declare-fun res!46374 () Bool)

(assert (=> b!88597 (=> (not res!46374) (not e!48135))))

(assert (=> b!88597 (= res!46374 (<= n!1722 (_2!238 (h!1091 (t!48698 lAnnSorted!4)))))))

(declare-fun b!88598 () Bool)

(assert (=> b!88598 (= e!48135 (l2AtLeast!5 (t!48698 (t!48698 lAnnSorted!4)) n!1722))))

(assert (= (and d!58725 (not res!46373)) b!88597))

(assert (= (and b!88597 res!46374) b!88598))

(declare-fun m!84656 () Bool)

(assert (=> b!88598 m!84656))

(assert (=> b!88513 d!58725))

(declare-fun d!58727 () Bool)

(declare-fun c!21814 () Bool)

(assert (=> d!58727 (= c!21814 (is-Nil!689 lt!20271))))

(declare-fun e!48138 () (Set tuple2!406))

(assert (=> d!58727 (= (content!160 lt!20271) e!48138)))

(declare-fun b!88603 () Bool)

(assert (=> b!88603 (= e!48138 (as emptyset (Set tuple2!406)))))

(declare-fun b!88604 () Bool)

(assert (=> b!88604 (= e!48138 (union (insert (h!1091 lt!20271) (as emptyset (Set tuple2!406))) (content!160 (t!48698 lt!20271))))))

(assert (= (and d!58727 c!21814) b!88603))

(assert (= (and d!58727 (not c!21814)) b!88604))

(declare-fun m!84658 () Bool)

(assert (=> b!88604 m!84658))

(declare-fun m!84660 () Bool)

(assert (=> b!88604 m!84660))

(assert (=> d!58679 d!58727))

(declare-fun d!58729 () Bool)

(declare-fun c!21815 () Bool)

(assert (=> d!58729 (= c!21815 (is-Nil!689 lAnn!4))))

(declare-fun e!48139 () (Set tuple2!406))

(assert (=> d!58729 (= (content!160 lAnn!4) e!48139)))

(declare-fun b!88605 () Bool)

(assert (=> b!88605 (= e!48139 (as emptyset (Set tuple2!406)))))

(declare-fun b!88606 () Bool)

(assert (=> b!88606 (= e!48139 (union (insert (h!1091 lAnn!4) (as emptyset (Set tuple2!406))) (content!160 (t!48698 lAnn!4))))))

(assert (= (and d!58729 c!21815) b!88605))

(assert (= (and d!58729 (not c!21815)) b!88606))

(declare-fun m!84662 () Bool)

(assert (=> b!88606 m!84662))

(assert (=> b!88606 m!84588))

(assert (=> d!58679 d!58729))

(declare-fun d!58731 () Bool)

(declare-fun c!21816 () Bool)

(assert (=> d!58731 (= c!21816 (is-Nil!689 lt!20296))))

(declare-fun e!48140 () (Set tuple2!406))

(assert (=> d!58731 (= (content!160 lt!20296) e!48140)))

(declare-fun b!88607 () Bool)

(assert (=> b!88607 (= e!48140 (as emptyset (Set tuple2!406)))))

(declare-fun b!88608 () Bool)

(assert (=> b!88608 (= e!48140 (union (insert (h!1091 lt!20296) (as emptyset (Set tuple2!406))) (content!160 (t!48698 lt!20296))))))

(assert (= (and d!58731 c!21816) b!88607))

(assert (= (and d!58731 (not c!21816)) b!88608))

(declare-fun m!84664 () Bool)

(assert (=> b!88608 m!84664))

(declare-fun m!84666 () Bool)

(assert (=> b!88608 m!84666))

(assert (=> d!58697 d!58731))

(declare-fun d!58733 () Bool)

(declare-fun c!21817 () Bool)

(assert (=> d!58733 (= c!21817 (is-Nil!689 (t!48698 lAnn!4)))))

(declare-fun e!48141 () (Set tuple2!406))

(assert (=> d!58733 (= (content!160 (t!48698 lAnn!4)) e!48141)))

(declare-fun b!88609 () Bool)

(assert (=> b!88609 (= e!48141 (as emptyset (Set tuple2!406)))))

(declare-fun b!88610 () Bool)

(assert (=> b!88610 (= e!48141 (union (insert (h!1091 (t!48698 lAnn!4)) (as emptyset (Set tuple2!406))) (content!160 (t!48698 (t!48698 lAnn!4)))))))

(assert (= (and d!58733 c!21817) b!88609))

(assert (= (and d!58733 (not c!21817)) b!88610))

(assert (=> b!88610 m!84632))

(assert (=> b!88610 m!84644))

(assert (=> d!58697 d!58733))

(declare-fun d!58735 () Bool)

(declare-fun size!715 (List!733) Int)

(assert (=> d!58735 (= (length!12 lt!20296) (size!715 lt!20296))))

(declare-fun bs!41336 () Bool)

(assert (= bs!41336 d!58735))

(declare-fun m!84668 () Bool)

(assert (=> bs!41336 m!84668))

(assert (=> b!88519 d!58735))

(declare-fun d!58737 () Bool)

(assert (=> d!58737 (= (length!12 (t!48698 lAnn!4)) (size!715 (t!48698 lAnn!4)))))

(declare-fun bs!41337 () Bool)

(assert (= bs!41337 d!58737))

(declare-fun m!84670 () Bool)

(assert (=> bs!41337 m!84670))

(assert (=> b!88519 d!58737))

(declare-fun d!58739 () Bool)

(assert (=> d!58739 (= (hint!4 ($colon$colon!19 (annotateList!5 (t!48699 l!1571) (+ n!1722 1)) (tuple2!407 (h!1092 l!1571) n!1722)) (trivProp2!4 (annotateList!5 (t!48699 l!1571) (+ n!1722 1)) n!1722)) ($colon$colon!19 (annotateList!5 (t!48699 l!1571) (+ n!1722 1)) (tuple2!407 (h!1092 l!1571) n!1722)))))

(assert (=> b!88466 d!58739))

(declare-fun d!58741 () Bool)

(assert (=> d!58741 (= ($colon$colon!19 (annotateList!5 (t!48699 l!1571) (+ n!1722 1)) (tuple2!407 (h!1092 l!1571) n!1722)) (Cons!687 (tuple2!407 (h!1092 l!1571) n!1722) (annotateList!5 (t!48699 l!1571) (+ n!1722 1))))))

(assert (=> b!88466 d!58741))

(declare-fun d!58743 () Bool)

(declare-fun lt!20306 () List!733)

(assert (=> d!58743 (l2AtLeast!5 lt!20306 (+ n!1722 1))))

(declare-fun e!48142 () List!733)

(assert (=> d!58743 (= lt!20306 e!48142)))

(declare-fun c!21818 () Bool)

(assert (=> d!58743 (= c!21818 (is-Nil!690 (t!48699 l!1571)))))

(assert (=> d!58743 (= (annotateList!5 (t!48699 l!1571) (+ n!1722 1)) lt!20306)))

(declare-fun b!88611 () Bool)

(assert (=> b!88611 (= e!48142 Nil!689)))

(declare-fun b!88612 () Bool)

(assert (=> b!88612 (= e!48142 (hint!4 ($colon$colon!19 (annotateList!5 (t!48699 (t!48699 l!1571)) (+ (+ n!1722 1) 1)) (tuple2!407 (h!1092 (t!48699 l!1571)) (+ n!1722 1))) (trivProp2!4 (annotateList!5 (t!48699 (t!48699 l!1571)) (+ (+ n!1722 1) 1)) (+ n!1722 1))))))

(assert (= (and d!58743 c!21818) b!88611))

(assert (= (and d!58743 (not c!21818)) b!88612))

(declare-fun m!84672 () Bool)

(assert (=> d!58743 m!84672))

(declare-fun m!84674 () Bool)

(assert (=> b!88612 m!84674))

(assert (=> b!88612 m!84674))

(declare-fun m!84676 () Bool)

(assert (=> b!88612 m!84676))

(assert (=> b!88612 m!84674))

(declare-fun m!84678 () Bool)

(assert (=> b!88612 m!84678))

(assert (=> b!88612 m!84676))

(assert (=> b!88612 m!84678))

(declare-fun m!84680 () Bool)

(assert (=> b!88612 m!84680))

(assert (=> b!88466 d!58743))

(declare-fun d!58745 () Bool)

(declare-fun e!48143 () Bool)

(assert (=> d!58745 e!48143))

(declare-fun c!21819 () Bool)

(assert (=> d!58745 (= c!21819 (is-Cons!687 (annotateList!5 (t!48699 l!1571) (+ n!1722 1))))))

(assert (=> d!58745 (l2AtLeast!5 (annotateList!5 (t!48699 l!1571) (+ n!1722 1)) (+ n!1722 1))))

(assert (=> d!58745 (= (trivProp2!4 (annotateList!5 (t!48699 l!1571) (+ n!1722 1)) n!1722) true)))

(declare-fun b!88613 () Bool)

(assert (=> b!88613 (= e!48143 (l2AtLeast!5 (annotateList!5 (t!48699 l!1571) (+ n!1722 1)) n!1722))))

(declare-fun lt!20307 () Bool)

(assert (=> b!88613 (= lt!20307 (trivProp2!4 (t!48698 (annotateList!5 (t!48699 l!1571) (+ n!1722 1))) n!1722))))

(declare-fun b!88614 () Bool)

(assert (=> b!88614 (= e!48143 (l2AtLeast!5 (annotateList!5 (t!48699 l!1571) (+ n!1722 1)) n!1722))))

(assert (= (and d!58745 c!21819) b!88613))

(assert (= (and d!58745 (not c!21819)) b!88614))

(assert (=> d!58745 m!84532))

(declare-fun m!84682 () Bool)

(assert (=> d!58745 m!84682))

(assert (=> b!88613 m!84532))

(declare-fun m!84684 () Bool)

(assert (=> b!88613 m!84684))

(declare-fun m!84686 () Bool)

(assert (=> b!88613 m!84686))

(assert (=> b!88614 m!84532))

(assert (=> b!88614 m!84684))

(assert (=> b!88466 d!58745))

(declare-fun d!58747 () Bool)

(declare-fun e!48144 () Bool)

(assert (=> d!58747 e!48144))

(declare-fun res!46375 () Bool)

(assert (=> d!58747 (=> (not res!46375) (not e!48144))))

(declare-fun lt!20308 () List!733)

(assert (=> d!58747 (= res!46375 (= (content!160 lt!20308) (content!160 lt!20294)))))

(declare-fun e!48145 () List!733)

(assert (=> d!58747 (= lt!20308 e!48145)))

(declare-fun c!21820 () Bool)

(assert (=> d!58747 (= c!21820 (is-Nil!689 lt!20294))))

(assert (=> d!58747 (= (sort!6 lt!20294 lambda!10889) lt!20308)))

(declare-fun b!88615 () Bool)

(assert (=> b!88615 (= e!48145 lt!20294)))

(declare-fun b!88616 () Bool)

(assert (=> b!88616 (= e!48145 (insert!30 (h!1091 lt!20294) (sort!6 (t!48698 lt!20294) lambda!10889) lambda!10889))))

(declare-fun b!88617 () Bool)

(assert (=> b!88617 (= e!48144 (= (length!12 lt!20308) (length!12 lt!20294)))))

(assert (= (and d!58747 c!21820) b!88615))

(assert (= (and d!58747 (not c!21820)) b!88616))

(assert (= (and d!58747 res!46375) b!88617))

(declare-fun m!84688 () Bool)

(assert (=> d!58747 m!84688))

(declare-fun m!84690 () Bool)

(assert (=> d!58747 m!84690))

(assert (=> b!88616 m!84560))

(assert (=> b!88616 m!84560))

(declare-fun m!84692 () Bool)

(assert (=> b!88616 m!84692))

(declare-fun m!84694 () Bool)

(assert (=> b!88617 m!84694))

(declare-fun m!84696 () Bool)

(assert (=> b!88617 m!84696))

(assert (=> d!58691 d!58747))

(declare-fun d!58749 () Bool)

(declare-fun lt!20309 () List!733)

(assert (=> d!58749 (l2AtLeast!5 lt!20309 (+ n!1722 1))))

(declare-fun e!48146 () List!733)

(assert (=> d!58749 (= lt!20309 e!48146)))

(declare-fun c!21821 () Bool)

(assert (=> d!58749 (= c!21821 (is-Nil!690 xs!1094))))

(assert (=> d!58749 (= (annotateList!5 xs!1094 (+ n!1722 1)) lt!20309)))

(declare-fun b!88618 () Bool)

(assert (=> b!88618 (= e!48146 Nil!689)))

(declare-fun b!88619 () Bool)

(assert (=> b!88619 (= e!48146 (hint!4 ($colon$colon!19 (annotateList!5 (t!48699 xs!1094) (+ (+ n!1722 1) 1)) (tuple2!407 (h!1092 xs!1094) (+ n!1722 1))) (trivProp2!4 (annotateList!5 (t!48699 xs!1094) (+ (+ n!1722 1) 1)) (+ n!1722 1))))))

(assert (= (and d!58749 c!21821) b!88618))

(assert (= (and d!58749 (not c!21821)) b!88619))

(declare-fun m!84698 () Bool)

(assert (=> d!58749 m!84698))

(declare-fun m!84700 () Bool)

(assert (=> b!88619 m!84700))

(assert (=> b!88619 m!84700))

(declare-fun m!84702 () Bool)

(assert (=> b!88619 m!84702))

(assert (=> b!88619 m!84700))

(declare-fun m!84704 () Bool)

(assert (=> b!88619 m!84704))

(assert (=> b!88619 m!84702))

(assert (=> b!88619 m!84704))

(declare-fun m!84706 () Bool)

(assert (=> b!88619 m!84706))

(assert (=> d!58691 d!58749))

(declare-fun d!58751 () Bool)

(declare-fun res!46376 () Bool)

(declare-fun e!48147 () Bool)

(assert (=> d!58751 (=> res!46376 e!48147)))

(assert (=> d!58751 (= res!46376 (is-Nil!689 lt!20285))))

(assert (=> d!58751 (= (isStableSorted!4 lt!20285 key!514) e!48147)))

(declare-fun b!88620 () Bool)

(assert (=> b!88620 (= e!48147 (isStableSortedAndAtLeast!4 (t!48698 lt!20285) key!514 (dynLambda!1056 key!514 (_1!238 (h!1091 lt!20285))) (_2!238 (h!1091 lt!20285))))))

(assert (= (and d!58751 (not res!46376)) b!88620))

(declare-fun b_lambda!17587 () Bool)

(assert (=> (not b_lambda!17587) (not b!88620)))

(declare-fun t!48715 () Bool)

(declare-fun tb!46613 () Bool)

(assert (=> (and start!11560 (= key!514 key!514) t!48715) tb!46613))

(declare-fun result!47059 () Bool)

(assert (=> tb!46613 (= result!47059 true)))

(assert (=> b!88620 t!48715))

(declare-fun b_and!60151 () Bool)

(assert (= b_and!60141 (and (=> t!48715 result!47059) b_and!60151)))

(declare-fun m!84708 () Bool)

(assert (=> b!88620 m!84708))

(assert (=> b!88620 m!84708))

(declare-fun m!84710 () Bool)

(assert (=> b!88620 m!84710))

(assert (=> b!88481 d!58751))

(declare-fun b!88621 () Bool)

(declare-fun e!48151 () Bool)

(declare-fun lt!20310 () List!733)

(assert (=> b!88621 (= e!48151 (= (length!12 lt!20310) (+ 1 (length!12 tlAnnSorted!2))))))

(declare-fun e!48150 () List!733)

(declare-fun b!88622 () Bool)

(assert (=> b!88622 (= e!48150 ($colon$colon!19 (insert!30 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4))) (t!48698 tlAnnSorted!2) lambda!10886) (h!1091 tlAnnSorted!2)))))

(declare-fun d!58753 () Bool)

(assert (=> d!58753 e!48151))

(declare-fun res!46381 () Bool)

(assert (=> d!58753 (=> (not res!46381) (not e!48151))))

(assert (=> d!58753 (= res!46381 (= (content!160 lt!20310) (union (insert (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4))) (as emptyset (Set tuple2!406))) (content!160 tlAnnSorted!2))))))

(assert (=> d!58753 (= lt!20310 e!48150)))

(declare-fun c!21822 () Bool)

(declare-fun e!48155 () Bool)

(assert (=> d!58753 (= c!21822 e!48155)))

(declare-fun res!46377 () Bool)

(assert (=> d!58753 (=> res!46377 e!48155)))

(declare-fun lt!20311 () Bool)

(assert (=> d!58753 (= res!46377 lt!20311)))

(assert (=> d!58753 (= lt!20311 (is-Nil!689 tlAnnSorted!2))))

(assert (=> d!58753 (= (insert!30 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4))) tlAnnSorted!2 lambda!10886) lt!20310)))

(declare-fun b!88623 () Bool)

(declare-fun e!48153 () List!733)

(assert (=> b!88623 (= e!48150 e!48153)))

(declare-fun c!21823 () Bool)

(declare-fun e!48149 () Bool)

(assert (=> b!88623 (= c!21823 e!48149)))

(declare-fun res!46382 () Bool)

(assert (=> b!88623 (=> res!46382 e!48149)))

(assert (=> b!88623 (= res!46382 lt!20311)))

(declare-fun b!88624 () Bool)

(declare-fun e!48154 () Bool)

(assert (=> b!88624 (= e!48149 e!48154)))

(declare-fun res!46378 () Bool)

(assert (=> b!88624 (=> (not res!46378) (not e!48154))))

(assert (=> b!88624 (= res!46378 (and (not lt!20311) (is-Cons!687 tlAnnSorted!2)))))

(declare-fun b!88625 () Bool)

(declare-fun res!46379 () List!733)

(assert (=> b!88625 (= e!48153 res!46379)))

(assert (=> b!88625 true))

(declare-fun e!48148 () Bool)

(assert (=> b!88625 e!48148))

(declare-fun b!88626 () Bool)

(declare-fun tp!17295 () Bool)

(assert (=> b!88626 (= e!48148 (and tp_is_empty!377 tp!17295))))

(declare-fun b!88627 () Bool)

(declare-fun e!48152 () Bool)

(assert (=> b!88627 (= e!48152 (<= (dynLambda!1057 lambda!10886 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4)))) (dynLambda!1057 lambda!10886 (h!1091 tlAnnSorted!2))))))

(declare-fun b!88628 () Bool)

(assert (=> b!88628 (= e!48154 (<= (dynLambda!1057 lambda!10886 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4)))) (dynLambda!1057 lambda!10886 (h!1091 tlAnnSorted!2))))))

(declare-fun b!88629 () Bool)

(assert (=> b!88629 (= e!48155 e!48152)))

(declare-fun res!46380 () Bool)

(assert (=> b!88629 (=> (not res!46380) (not e!48152))))

(assert (=> b!88629 (= res!46380 (is-Cons!687 tlAnnSorted!2))))

(declare-fun b!88630 () Bool)

(assert (=> b!88630 (= e!48153 ($colon$colon!19 tlAnnSorted!2 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4)))))))

(assert (= (and d!58753 (not res!46377)) b!88629))

(assert (= (and b!88629 res!46380) b!88627))

(assert (= (and b!88623 (not res!46382)) b!88624))

(assert (= (and b!88624 res!46378) b!88628))

(assert (= (and b!88625 (is-Cons!687 res!46379)) b!88626))

(assert (= (and b!88623 c!21823) b!88630))

(assert (= (and b!88623 (not c!21823)) b!88625))

(assert (= (and d!58753 c!21822) b!88623))

(assert (= (and d!58753 (not c!21822)) b!88622))

(assert (= (and d!58753 res!46381) b!88621))

(declare-fun b_lambda!17589 () Bool)

(assert (=> (not b_lambda!17589) (not b!88627)))

(declare-fun b_lambda!17591 () Bool)

(assert (=> (not b_lambda!17591) (not b!88627)))

(declare-fun b_lambda!17593 () Bool)

(assert (=> (not b_lambda!17593) (not b!88628)))

(declare-fun b_lambda!17595 () Bool)

(assert (=> (not b_lambda!17595) (not b!88628)))

(declare-fun m!84712 () Bool)

(assert (=> b!88621 m!84712))

(declare-fun m!84714 () Bool)

(assert (=> b!88621 m!84714))

(declare-fun m!84716 () Bool)

(assert (=> b!88627 m!84716))

(declare-fun m!84718 () Bool)

(assert (=> b!88627 m!84718))

(declare-fun m!84720 () Bool)

(assert (=> d!58753 m!84720))

(declare-fun m!84722 () Bool)

(assert (=> d!58753 m!84722))

(declare-fun m!84724 () Bool)

(assert (=> d!58753 m!84724))

(declare-fun m!84726 () Bool)

(assert (=> b!88630 m!84726))

(declare-fun m!84728 () Bool)

(assert (=> b!88622 m!84728))

(assert (=> b!88622 m!84728))

(declare-fun m!84730 () Bool)

(assert (=> b!88622 m!84730))

(assert (=> b!88628 m!84716))

(assert (=> b!88628 m!84718))

(assert (=> b!88481 d!58753))

(declare-fun e!48159 () Bool)

(declare-fun lt!20312 () List!733)

(declare-fun b!88631 () Bool)

(assert (=> b!88631 (= e!48159 (= (length!12 lt!20312) (+ 1 (length!12 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))))

(declare-fun b!88632 () Bool)

(declare-fun e!48158 () List!733)

(assert (=> b!88632 (= e!48158 ($colon$colon!19 (insert!30 (h!1091 lAnn!4) (t!48698 (sort!6 (t!48698 lAnn!4) keyAnn!5)) keyAnn!5) (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5))))))

(declare-fun d!58755 () Bool)

(assert (=> d!58755 e!48159))

(declare-fun res!46387 () Bool)

(assert (=> d!58755 (=> (not res!46387) (not e!48159))))

(assert (=> d!58755 (= res!46387 (= (content!160 lt!20312) (union (insert (h!1091 lAnn!4) (as emptyset (Set tuple2!406))) (content!160 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))))

(assert (=> d!58755 (= lt!20312 e!48158)))

(declare-fun c!21824 () Bool)

(declare-fun e!48163 () Bool)

(assert (=> d!58755 (= c!21824 e!48163)))

(declare-fun res!46383 () Bool)

(assert (=> d!58755 (=> res!46383 e!48163)))

(declare-fun lt!20313 () Bool)

(assert (=> d!58755 (= res!46383 lt!20313)))

(assert (=> d!58755 (= lt!20313 (is-Nil!689 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))

(assert (=> d!58755 (= (insert!30 (h!1091 lAnn!4) (sort!6 (t!48698 lAnn!4) keyAnn!5) keyAnn!5) lt!20312)))

(declare-fun b!88633 () Bool)

(declare-fun e!48161 () List!733)

(assert (=> b!88633 (= e!48158 e!48161)))

(declare-fun c!21825 () Bool)

(declare-fun e!48157 () Bool)

(assert (=> b!88633 (= c!21825 e!48157)))

(declare-fun res!46388 () Bool)

(assert (=> b!88633 (=> res!46388 e!48157)))

(assert (=> b!88633 (= res!46388 lt!20313)))

(declare-fun b!88634 () Bool)

(declare-fun e!48162 () Bool)

(assert (=> b!88634 (= e!48157 e!48162)))

(declare-fun res!46384 () Bool)

(assert (=> b!88634 (=> (not res!46384) (not e!48162))))

(assert (=> b!88634 (= res!46384 (and (not lt!20313) (is-Cons!687 (sort!6 (t!48698 lAnn!4) keyAnn!5))))))

(declare-fun b!88635 () Bool)

(declare-fun res!46385 () List!733)

(assert (=> b!88635 (= e!48161 res!46385)))

(assert (=> b!88635 true))

(declare-fun e!48156 () Bool)

(assert (=> b!88635 e!48156))

(declare-fun b!88636 () Bool)

(declare-fun tp!17296 () Bool)

(assert (=> b!88636 (= e!48156 (and tp_is_empty!377 tp!17296))))

(declare-fun b!88637 () Bool)

(declare-fun e!48160 () Bool)

(assert (=> b!88637 (= e!48160 (<= (dynLambda!1057 keyAnn!5 (h!1091 lAnn!4)) (dynLambda!1057 keyAnn!5 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))))

(declare-fun b!88638 () Bool)

(assert (=> b!88638 (= e!48162 (<= (dynLambda!1057 keyAnn!5 (h!1091 lAnn!4)) (dynLambda!1057 keyAnn!5 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))))

(declare-fun b!88639 () Bool)

(assert (=> b!88639 (= e!48163 e!48160)))

(declare-fun res!46386 () Bool)

(assert (=> b!88639 (=> (not res!46386) (not e!48160))))

(assert (=> b!88639 (= res!46386 (is-Cons!687 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))

(declare-fun b!88640 () Bool)

(assert (=> b!88640 (= e!48161 ($colon$colon!19 (sort!6 (t!48698 lAnn!4) keyAnn!5) (h!1091 lAnn!4)))))

(assert (= (and d!58755 (not res!46383)) b!88639))

(assert (= (and b!88639 res!46386) b!88637))

(assert (= (and b!88633 (not res!46388)) b!88634))

(assert (= (and b!88634 res!46384) b!88638))

(assert (= (and b!88635 (is-Cons!687 res!46385)) b!88636))

(assert (= (and b!88633 c!21825) b!88640))

(assert (= (and b!88633 (not c!21825)) b!88635))

(assert (= (and d!58755 c!21824) b!88633))

(assert (= (and d!58755 (not c!21824)) b!88632))

(assert (= (and d!58755 res!46387) b!88631))

(declare-fun b_lambda!17597 () Bool)

(assert (=> (not b_lambda!17597) (not b!88637)))

(declare-fun t!48717 () Bool)

(declare-fun tb!46615 () Bool)

(assert (=> (and start!11560 (= keyAnn!5 keyAnn!5) t!48717) tb!46615))

(declare-fun result!47061 () Bool)

(assert (=> tb!46615 (= result!47061 true)))

(assert (=> b!88637 t!48717))

(declare-fun b_and!60153 () Bool)

(assert (= b_and!60149 (and (=> t!48717 result!47061) b_and!60153)))

(declare-fun b_lambda!17599 () Bool)

(assert (=> (not b_lambda!17599) (not b!88637)))

(declare-fun t!48719 () Bool)

(declare-fun tb!46617 () Bool)

(assert (=> (and start!11560 (= keyAnn!5 keyAnn!5) t!48719) tb!46617))

(declare-fun result!47063 () Bool)

(assert (=> tb!46617 (= result!47063 true)))

(assert (=> b!88637 t!48719))

(declare-fun b_and!60155 () Bool)

(assert (= b_and!60153 (and (=> t!48719 result!47063) b_and!60155)))

(declare-fun b_lambda!17601 () Bool)

(assert (=> (not b_lambda!17601) (not b!88638)))

(assert (=> b!88638 t!48717))

(declare-fun b_and!60157 () Bool)

(assert (= b_and!60155 (and (=> t!48717 result!47061) b_and!60157)))

(declare-fun b_lambda!17603 () Bool)

(assert (=> (not b_lambda!17603) (not b!88638)))

(assert (=> b!88638 t!48719))

(declare-fun b_and!60159 () Bool)

(assert (= b_and!60157 (and (=> t!48719 result!47063) b_and!60159)))

(declare-fun m!84732 () Bool)

(assert (=> b!88631 m!84732))

(assert (=> b!88631 m!84508))

(declare-fun m!84734 () Bool)

(assert (=> b!88631 m!84734))

(declare-fun m!84736 () Bool)

(assert (=> b!88637 m!84736))

(declare-fun m!84738 () Bool)

(assert (=> b!88637 m!84738))

(declare-fun m!84740 () Bool)

(assert (=> d!58755 m!84740))

(assert (=> d!58755 m!84662))

(assert (=> d!58755 m!84508))

(declare-fun m!84742 () Bool)

(assert (=> d!58755 m!84742))

(assert (=> b!88640 m!84508))

(declare-fun m!84744 () Bool)

(assert (=> b!88640 m!84744))

(declare-fun m!84746 () Bool)

(assert (=> b!88632 m!84746))

(assert (=> b!88632 m!84746))

(declare-fun m!84748 () Bool)

(assert (=> b!88632 m!84748))

(assert (=> b!88638 m!84736))

(assert (=> b!88638 m!84738))

(assert (=> b!88445 d!58755))

(assert (=> b!88445 d!58697))

(declare-fun d!58757 () Bool)

(declare-fun res!46389 () Bool)

(declare-fun e!48164 () Bool)

(assert (=> d!58757 (=> res!46389 e!48164)))

(assert (=> d!58757 (= res!46389 (is-Nil!689 tlAnnSorted!2))))

(assert (=> d!58757 (= (l2AtLeast!5 tlAnnSorted!2 (_2!238 (h!1091 lAnn!4))) e!48164)))

(declare-fun b!88641 () Bool)

(declare-fun e!48165 () Bool)

(assert (=> b!88641 (= e!48164 e!48165)))

(declare-fun res!46390 () Bool)

(assert (=> b!88641 (=> (not res!46390) (not e!48165))))

(assert (=> b!88641 (= res!46390 (<= (_2!238 (h!1091 lAnn!4)) (_2!238 (h!1091 tlAnnSorted!2))))))

(declare-fun b!88642 () Bool)

(assert (=> b!88642 (= e!48165 (l2AtLeast!5 (t!48698 tlAnnSorted!2) (_2!238 (h!1091 lAnn!4))))))

(assert (= (and d!58757 (not res!46389)) b!88641))

(assert (= (and b!88641 res!46390) b!88642))

(declare-fun m!84750 () Bool)

(assert (=> b!88642 m!84750))

(assert (=> b!88480 d!58757))

(declare-fun bs!41338 () Bool)

(declare-fun b!88643 () Bool)

(assert (= bs!41338 (and b!88643 b!88429)))

(declare-fun lambda!10890 () Int)

(assert (=> bs!41338 (= lambda!10890 lambda!10880)))

(declare-fun bs!41339 () Bool)

(assert (= bs!41339 (and b!88643 b!88477)))

(assert (=> bs!41339 (= lambda!10890 lambda!10885)))

(declare-fun bs!41340 () Bool)

(assert (= bs!41340 (and b!88643 b!88481)))

(assert (=> bs!41340 (= lambda!10890 lambda!10886)))

(declare-fun bs!41341 () Bool)

(assert (= bs!41341 (and b!88643 d!58691)))

(assert (=> bs!41341 (= lambda!10890 lambda!10889)))

(assert (=> b!88643 true))

(assert (=> b!88643 (< (dynLambda!1054 order!497 key!514) (dynLambda!1055 order!499 lambda!10890))))

(declare-fun b_next!39843 () Bool)

(assert (=> start!11560 (= b_next!39841 (or (and b!88643 (= lambda!10890 keyAnn!5)) b_next!39843))))

(declare-fun bs!41342 () Bool)

(declare-fun b!88647 () Bool)

(assert (= bs!41342 (and b!88647 b!88481)))

(declare-fun lambda!10891 () Int)

(assert (=> bs!41342 (= lambda!10891 lambda!10886)))

(declare-fun bs!41343 () Bool)

(assert (= bs!41343 (and b!88647 b!88429)))

(assert (=> bs!41343 (= lambda!10891 lambda!10880)))

(declare-fun bs!41344 () Bool)

(assert (= bs!41344 (and b!88647 b!88477)))

(assert (=> bs!41344 (= lambda!10891 lambda!10885)))

(declare-fun bs!41345 () Bool)

(assert (= bs!41345 (and b!88647 b!88643)))

(assert (=> bs!41345 (= lambda!10891 lambda!10890)))

(declare-fun bs!41346 () Bool)

(assert (= bs!41346 (and b!88647 d!58691)))

(assert (=> bs!41346 (= lambda!10891 lambda!10889)))

(assert (=> b!88647 true))

(assert (=> b!88647 (< (dynLambda!1054 order!497 key!514) (dynLambda!1055 order!499 lambda!10891))))

(declare-fun b_next!39845 () Bool)

(assert (=> start!11560 (= b_next!39843 (or (and b!88647 (= lambda!10891 keyAnn!5)) b_next!39845))))

(declare-fun e!48168 () Bool)

(declare-fun e!48166 () Bool)

(assert (=> b!88643 (= e!48168 e!48166)))

(declare-fun res!46392 () Bool)

(assert (=> b!88643 (=> (not res!46392) (not e!48166))))

(declare-fun lt!20316 () List!733)

(assert (=> b!88643 (= res!46392 (isStableSorted!4 lt!20316 key!514))))

(assert (=> b!88643 (= lt!20316 (insert!30 (tuple2!407 (_1!238 (h!1091 lt!20294)) (_2!238 (h!1091 lt!20294))) lt!20295 lambda!10890))))

(declare-fun lt!20314 () Bool)

(assert (=> b!88643 (= lt!20314 (insertStableProp!3 (_1!238 (h!1091 lt!20294)) (_2!238 (h!1091 lt!20294)) (t!48698 lt!20295) key!514))))

(declare-fun b!88644 () Bool)

(declare-fun e!48167 () Bool)

(declare-fun lt!20315 () List!733)

(assert (=> b!88644 (= e!48167 (l2AtLeast!5 lt!20315 (_2!238 (h!1091 lt!20294))))))

(declare-fun b!88645 () Bool)

(assert (=> b!88645 (= e!48166 (l2AtLeast!5 lt!20316 (_2!238 (h!1091 lt!20294))))))

(declare-fun b!88646 () Bool)

(declare-fun e!48169 () Bool)

(assert (=> b!88646 (= e!48169 (l2AtLeast!5 lt!20295 (_2!238 (h!1091 lt!20294))))))

(assert (=> b!88647 (= e!48168 e!48167)))

(declare-fun res!46393 () Bool)

(assert (=> b!88647 (=> (not res!46393) (not e!48167))))

(assert (=> b!88647 (= res!46393 (isStableSorted!4 lt!20315 key!514))))

(assert (=> b!88647 (= lt!20315 (insert!30 (tuple2!407 (_1!238 (h!1091 lt!20294)) (_2!238 (h!1091 lt!20294))) lt!20295 lambda!10891))))

(declare-fun d!58759 () Bool)

(assert (=> d!58759 e!48168))

(declare-fun c!21826 () Bool)

(assert (=> d!58759 (= c!21826 (is-Cons!687 lt!20295))))

(assert (=> d!58759 e!48169))

(declare-fun res!46391 () Bool)

(assert (=> d!58759 (=> (not res!46391) (not e!48169))))

(assert (=> d!58759 (= res!46391 (isStableSorted!4 lt!20295 key!514))))

(assert (=> d!58759 (= (insertStableProp!3 (_1!238 (h!1091 lt!20294)) (_2!238 (h!1091 lt!20294)) lt!20295 key!514) true)))

(assert (= (and d!58759 res!46391) b!88646))

(assert (= (and b!88643 res!46392) b!88645))

(assert (= (and b!88647 res!46393) b!88644))

(assert (= (and d!58759 c!21826) b!88643))

(assert (= (and d!58759 (not c!21826)) b!88647))

(declare-fun m!84752 () Bool)

(assert (=> d!58759 m!84752))

(declare-fun m!84754 () Bool)

(assert (=> b!88647 m!84754))

(declare-fun m!84756 () Bool)

(assert (=> b!88647 m!84756))

(declare-fun m!84758 () Bool)

(assert (=> b!88646 m!84758))

(declare-fun m!84760 () Bool)

(assert (=> b!88644 m!84760))

(declare-fun m!84762 () Bool)

(assert (=> b!88643 m!84762))

(declare-fun m!84764 () Bool)

(assert (=> b!88643 m!84764))

(declare-fun m!84766 () Bool)

(assert (=> b!88643 m!84766))

(declare-fun m!84768 () Bool)

(assert (=> b!88645 m!84768))

(assert (=> b!88511 d!58759))

(assert (=> b!88452 d!58683))

(declare-fun d!58761 () Bool)

(declare-fun res!46394 () Bool)

(declare-fun e!48170 () Bool)

(assert (=> d!58761 (=> res!46394 e!48170)))

(assert (=> d!58761 (= res!46394 (is-Nil!689 lt!20286))))

(assert (=> d!58761 (= (isStableSorted!4 lt!20286 key!514) e!48170)))

(declare-fun b!88648 () Bool)

(assert (=> b!88648 (= e!48170 (isStableSortedAndAtLeast!4 (t!48698 lt!20286) key!514 (dynLambda!1056 key!514 (_1!238 (h!1091 lt!20286))) (_2!238 (h!1091 lt!20286))))))

(assert (= (and d!58761 (not res!46394)) b!88648))

(declare-fun b_lambda!17605 () Bool)

(assert (=> (not b_lambda!17605) (not b!88648)))

(declare-fun t!48721 () Bool)

(declare-fun tb!46619 () Bool)

(assert (=> (and start!11560 (= key!514 key!514) t!48721) tb!46619))

(declare-fun result!47065 () Bool)

(assert (=> tb!46619 (= result!47065 true)))

(assert (=> b!88648 t!48721))

(declare-fun b_and!60161 () Bool)

(assert (= b_and!60151 (and (=> t!48721 result!47065) b_and!60161)))

(declare-fun m!84770 () Bool)

(assert (=> b!88648 m!84770))

(assert (=> b!88648 m!84770))

(declare-fun m!84772 () Bool)

(assert (=> b!88648 m!84772))

(assert (=> b!88477 d!58761))

(declare-fun b!88649 () Bool)

(declare-fun e!48174 () Bool)

(declare-fun lt!20317 () List!733)

(assert (=> b!88649 (= e!48174 (= (length!12 lt!20317) (+ 1 (length!12 tlAnnSorted!2))))))

(declare-fun e!48173 () List!733)

(declare-fun b!88650 () Bool)

(assert (=> b!88650 (= e!48173 ($colon$colon!19 (insert!30 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4))) (t!48698 tlAnnSorted!2) lambda!10885) (h!1091 tlAnnSorted!2)))))

(declare-fun d!58763 () Bool)

(assert (=> d!58763 e!48174))

(declare-fun res!46399 () Bool)

(assert (=> d!58763 (=> (not res!46399) (not e!48174))))

(assert (=> d!58763 (= res!46399 (= (content!160 lt!20317) (union (insert (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4))) (as emptyset (Set tuple2!406))) (content!160 tlAnnSorted!2))))))

(assert (=> d!58763 (= lt!20317 e!48173)))

(declare-fun c!21827 () Bool)

(declare-fun e!48178 () Bool)

(assert (=> d!58763 (= c!21827 e!48178)))

(declare-fun res!46395 () Bool)

(assert (=> d!58763 (=> res!46395 e!48178)))

(declare-fun lt!20318 () Bool)

(assert (=> d!58763 (= res!46395 lt!20318)))

(assert (=> d!58763 (= lt!20318 (is-Nil!689 tlAnnSorted!2))))

(assert (=> d!58763 (= (insert!30 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4))) tlAnnSorted!2 lambda!10885) lt!20317)))

(declare-fun b!88651 () Bool)

(declare-fun e!48176 () List!733)

(assert (=> b!88651 (= e!48173 e!48176)))

(declare-fun c!21828 () Bool)

(declare-fun e!48172 () Bool)

(assert (=> b!88651 (= c!21828 e!48172)))

(declare-fun res!46400 () Bool)

(assert (=> b!88651 (=> res!46400 e!48172)))

(assert (=> b!88651 (= res!46400 lt!20318)))

(declare-fun b!88652 () Bool)

(declare-fun e!48177 () Bool)

(assert (=> b!88652 (= e!48172 e!48177)))

(declare-fun res!46396 () Bool)

(assert (=> b!88652 (=> (not res!46396) (not e!48177))))

(assert (=> b!88652 (= res!46396 (and (not lt!20318) (is-Cons!687 tlAnnSorted!2)))))

(declare-fun b!88653 () Bool)

(declare-fun res!46397 () List!733)

(assert (=> b!88653 (= e!48176 res!46397)))

(assert (=> b!88653 true))

(declare-fun e!48171 () Bool)

(assert (=> b!88653 e!48171))

(declare-fun b!88654 () Bool)

(declare-fun tp!17297 () Bool)

(assert (=> b!88654 (= e!48171 (and tp_is_empty!377 tp!17297))))

(declare-fun e!48175 () Bool)

(declare-fun b!88655 () Bool)

(assert (=> b!88655 (= e!48175 (<= (dynLambda!1057 lambda!10885 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4)))) (dynLambda!1057 lambda!10885 (h!1091 tlAnnSorted!2))))))

(declare-fun b!88656 () Bool)

(assert (=> b!88656 (= e!48177 (<= (dynLambda!1057 lambda!10885 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4)))) (dynLambda!1057 lambda!10885 (h!1091 tlAnnSorted!2))))))

(declare-fun b!88657 () Bool)

(assert (=> b!88657 (= e!48178 e!48175)))

(declare-fun res!46398 () Bool)

(assert (=> b!88657 (=> (not res!46398) (not e!48175))))

(assert (=> b!88657 (= res!46398 (is-Cons!687 tlAnnSorted!2))))

(declare-fun b!88658 () Bool)

(assert (=> b!88658 (= e!48176 ($colon$colon!19 tlAnnSorted!2 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4)))))))

(assert (= (and d!58763 (not res!46395)) b!88657))

(assert (= (and b!88657 res!46398) b!88655))

(assert (= (and b!88651 (not res!46400)) b!88652))

(assert (= (and b!88652 res!46396) b!88656))

(assert (= (and b!88653 (is-Cons!687 res!46397)) b!88654))

(assert (= (and b!88651 c!21828) b!88658))

(assert (= (and b!88651 (not c!21828)) b!88653))

(assert (= (and d!58763 c!21827) b!88651))

(assert (= (and d!58763 (not c!21827)) b!88650))

(assert (= (and d!58763 res!46399) b!88649))

(declare-fun b_lambda!17607 () Bool)

(assert (=> (not b_lambda!17607) (not b!88655)))

(declare-fun b_lambda!17609 () Bool)

(assert (=> (not b_lambda!17609) (not b!88655)))

(declare-fun b_lambda!17611 () Bool)

(assert (=> (not b_lambda!17611) (not b!88656)))

(declare-fun b_lambda!17613 () Bool)

(assert (=> (not b_lambda!17613) (not b!88656)))

(declare-fun m!84774 () Bool)

(assert (=> b!88649 m!84774))

(assert (=> b!88649 m!84714))

(declare-fun m!84776 () Bool)

(assert (=> b!88655 m!84776))

(declare-fun m!84778 () Bool)

(assert (=> b!88655 m!84778))

(declare-fun m!84780 () Bool)

(assert (=> d!58763 m!84780))

(assert (=> d!58763 m!84722))

(assert (=> d!58763 m!84724))

(assert (=> b!88658 m!84726))

(declare-fun m!84782 () Bool)

(assert (=> b!88650 m!84782))

(assert (=> b!88650 m!84782))

(declare-fun m!84784 () Bool)

(assert (=> b!88650 m!84784))

(assert (=> b!88656 m!84776))

(assert (=> b!88656 m!84778))

(assert (=> b!88477 d!58763))

(declare-fun bs!41347 () Bool)

(declare-fun b!88659 () Bool)

(assert (= bs!41347 (and b!88659 b!88647)))

(declare-fun lambda!10892 () Int)

(assert (=> bs!41347 (= lambda!10892 lambda!10891)))

(declare-fun bs!41348 () Bool)

(assert (= bs!41348 (and b!88659 b!88481)))

(assert (=> bs!41348 (= lambda!10892 lambda!10886)))

(declare-fun bs!41349 () Bool)

(assert (= bs!41349 (and b!88659 b!88429)))

(assert (=> bs!41349 (= lambda!10892 lambda!10880)))

(declare-fun bs!41350 () Bool)

(assert (= bs!41350 (and b!88659 b!88477)))

(assert (=> bs!41350 (= lambda!10892 lambda!10885)))

(declare-fun bs!41351 () Bool)

(assert (= bs!41351 (and b!88659 b!88643)))

(assert (=> bs!41351 (= lambda!10892 lambda!10890)))

(declare-fun bs!41352 () Bool)

(assert (= bs!41352 (and b!88659 d!58691)))

(assert (=> bs!41352 (= lambda!10892 lambda!10889)))

(assert (=> b!88659 true))

(assert (=> b!88659 (< (dynLambda!1054 order!497 key!514) (dynLambda!1055 order!499 lambda!10892))))

(declare-fun b_next!39847 () Bool)

(assert (=> start!11560 (= b_next!39845 (or (and b!88659 (= lambda!10892 keyAnn!5)) b_next!39847))))

(declare-fun bs!41353 () Bool)

(declare-fun b!88663 () Bool)

(assert (= bs!41353 (and b!88663 b!88647)))

(declare-fun lambda!10893 () Int)

(assert (=> bs!41353 (= lambda!10893 lambda!10891)))

(declare-fun bs!41354 () Bool)

(assert (= bs!41354 (and b!88663 b!88659)))

(assert (=> bs!41354 (= lambda!10893 lambda!10892)))

(declare-fun bs!41355 () Bool)

(assert (= bs!41355 (and b!88663 b!88481)))

(assert (=> bs!41355 (= lambda!10893 lambda!10886)))

(declare-fun bs!41356 () Bool)

(assert (= bs!41356 (and b!88663 b!88429)))

(assert (=> bs!41356 (= lambda!10893 lambda!10880)))

(declare-fun bs!41357 () Bool)

(assert (= bs!41357 (and b!88663 b!88477)))

(assert (=> bs!41357 (= lambda!10893 lambda!10885)))

(declare-fun bs!41358 () Bool)

(assert (= bs!41358 (and b!88663 b!88643)))

(assert (=> bs!41358 (= lambda!10893 lambda!10890)))

(declare-fun bs!41359 () Bool)

(assert (= bs!41359 (and b!88663 d!58691)))

(assert (=> bs!41359 (= lambda!10893 lambda!10889)))

(assert (=> b!88663 true))

(assert (=> b!88663 (< (dynLambda!1054 order!497 key!514) (dynLambda!1055 order!499 lambda!10893))))

(declare-fun b_next!39849 () Bool)

(assert (=> start!11560 (= b_next!39847 (or (and b!88663 (= lambda!10893 keyAnn!5)) b_next!39849))))

(declare-fun e!48181 () Bool)

(declare-fun e!48179 () Bool)

(assert (=> b!88659 (= e!48181 e!48179)))

(declare-fun res!46402 () Bool)

(assert (=> b!88659 (=> (not res!46402) (not e!48179))))

(declare-fun lt!20321 () List!733)

(assert (=> b!88659 (= res!46402 (isStableSorted!4 lt!20321 key!514))))

(assert (=> b!88659 (= lt!20321 (insert!30 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4))) (t!48698 tlAnnSorted!2) lambda!10892))))

(declare-fun lt!20319 () Bool)

(assert (=> b!88659 (= lt!20319 (insertStableProp!3 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4)) (t!48698 (t!48698 tlAnnSorted!2)) key!514))))

(declare-fun b!88660 () Bool)

(declare-fun e!48180 () Bool)

(declare-fun lt!20320 () List!733)

(assert (=> b!88660 (= e!48180 (l2AtLeast!5 lt!20320 (_2!238 (h!1091 lAnn!4))))))

(declare-fun b!88661 () Bool)

(assert (=> b!88661 (= e!48179 (l2AtLeast!5 lt!20321 (_2!238 (h!1091 lAnn!4))))))

(declare-fun b!88662 () Bool)

(declare-fun e!48182 () Bool)

(assert (=> b!88662 (= e!48182 (l2AtLeast!5 (t!48698 tlAnnSorted!2) (_2!238 (h!1091 lAnn!4))))))

(assert (=> b!88663 (= e!48181 e!48180)))

(declare-fun res!46403 () Bool)

(assert (=> b!88663 (=> (not res!46403) (not e!48180))))

(assert (=> b!88663 (= res!46403 (isStableSorted!4 lt!20320 key!514))))

(assert (=> b!88663 (= lt!20320 (insert!30 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4))) (t!48698 tlAnnSorted!2) lambda!10893))))

(declare-fun d!58765 () Bool)

(assert (=> d!58765 e!48181))

(declare-fun c!21829 () Bool)

(assert (=> d!58765 (= c!21829 (is-Cons!687 (t!48698 tlAnnSorted!2)))))

(assert (=> d!58765 e!48182))

(declare-fun res!46401 () Bool)

(assert (=> d!58765 (=> (not res!46401) (not e!48182))))

(assert (=> d!58765 (= res!46401 (isStableSorted!4 (t!48698 tlAnnSorted!2) key!514))))

(assert (=> d!58765 (= (insertStableProp!3 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4)) (t!48698 tlAnnSorted!2) key!514) true)))

(assert (= (and d!58765 res!46401) b!88662))

(assert (= (and b!88659 res!46402) b!88661))

(assert (= (and b!88663 res!46403) b!88660))

(assert (= (and d!58765 c!21829) b!88659))

(assert (= (and d!58765 (not c!21829)) b!88663))

(declare-fun m!84786 () Bool)

(assert (=> d!58765 m!84786))

(declare-fun m!84788 () Bool)

(assert (=> b!88663 m!84788))

(declare-fun m!84790 () Bool)

(assert (=> b!88663 m!84790))

(assert (=> b!88662 m!84750))

(declare-fun m!84792 () Bool)

(assert (=> b!88660 m!84792))

(declare-fun m!84794 () Bool)

(assert (=> b!88659 m!84794))

(declare-fun m!84796 () Bool)

(assert (=> b!88659 m!84796))

(declare-fun m!84798 () Bool)

(assert (=> b!88659 m!84798))

(declare-fun m!84800 () Bool)

(assert (=> b!88661 m!84800))

(assert (=> b!88477 d!58765))

(declare-fun d!58767 () Bool)

(declare-fun res!46404 () Bool)

(declare-fun e!48183 () Bool)

(assert (=> d!58767 (=> res!46404 e!48183)))

(assert (=> d!58767 (= res!46404 (is-Nil!689 (t!48698 tlAnnSorted!2)))))

(assert (=> d!58767 (= (l2AtLeast!5 (t!48698 tlAnnSorted!2) (+ n!1722 1)) e!48183)))

(declare-fun b!88664 () Bool)

(declare-fun e!48184 () Bool)

(assert (=> b!88664 (= e!48183 e!48184)))

(declare-fun res!46405 () Bool)

(assert (=> b!88664 (=> (not res!46405) (not e!48184))))

(assert (=> b!88664 (= res!46405 (<= (+ n!1722 1) (_2!238 (h!1091 (t!48698 tlAnnSorted!2)))))))

(declare-fun b!88665 () Bool)

(assert (=> b!88665 (= e!48184 (l2AtLeast!5 (t!48698 (t!48698 tlAnnSorted!2)) (+ n!1722 1)))))

(assert (= (and d!58767 (not res!46404)) b!88664))

(assert (= (and b!88664 res!46405) b!88665))

(declare-fun m!84802 () Bool)

(assert (=> b!88665 m!84802))

(assert (=> b!88521 d!58767))

(declare-fun d!58769 () Bool)

(declare-fun res!46406 () Bool)

(declare-fun e!48185 () Bool)

(assert (=> d!58769 (=> res!46406 e!48185)))

(assert (=> d!58769 (= res!46406 (is-Nil!689 (t!48698 lt!20294)))))

(assert (=> d!58769 (= (l2AtLeast!5 (t!48698 lt!20294) (+ n!1722 1)) e!48185)))

(declare-fun b!88666 () Bool)

(declare-fun e!48186 () Bool)

(assert (=> b!88666 (= e!48185 e!48186)))

(declare-fun res!46407 () Bool)

(assert (=> b!88666 (=> (not res!46407) (not e!48186))))

(assert (=> b!88666 (= res!46407 (<= (+ n!1722 1) (_2!238 (h!1091 (t!48698 lt!20294)))))))

(declare-fun b!88667 () Bool)

(assert (=> b!88667 (= e!48186 (l2AtLeast!5 (t!48698 (t!48698 lt!20294)) (+ n!1722 1)))))

(assert (= (and d!58769 (not res!46406)) b!88666))

(assert (= (and b!88666 res!46407) b!88667))

(declare-fun m!84804 () Bool)

(assert (=> b!88667 m!84804))

(assert (=> b!88504 d!58769))

(declare-fun d!58771 () Bool)

(declare-fun res!46408 () Bool)

(declare-fun e!48187 () Bool)

(assert (=> d!58771 (=> res!46408 e!48187)))

(assert (=> d!58771 (= res!46408 (is-Nil!689 lt!20295))))

(assert (=> d!58771 (= (l2AtLeast!5 lt!20295 (+ n!1722 1)) e!48187)))

(declare-fun b!88668 () Bool)

(declare-fun e!48188 () Bool)

(assert (=> b!88668 (= e!48187 e!48188)))

(declare-fun res!46409 () Bool)

(assert (=> b!88668 (=> (not res!46409) (not e!48188))))

(assert (=> b!88668 (= res!46409 (<= (+ n!1722 1) (_2!238 (h!1091 lt!20295))))))

(declare-fun b!88669 () Bool)

(assert (=> b!88669 (= e!48188 (l2AtLeast!5 (t!48698 lt!20295) (+ n!1722 1)))))

(assert (= (and d!58771 (not res!46408)) b!88668))

(assert (= (and b!88668 res!46409) b!88669))

(declare-fun m!84806 () Bool)

(assert (=> b!88669 m!84806))

(assert (=> b!88505 d!58771))

(declare-fun bs!41360 () Bool)

(declare-fun d!58773 () Bool)

(assert (= bs!41360 (and d!58773 b!88647)))

(declare-fun lambda!10894 () Int)

(assert (=> bs!41360 (= lambda!10894 lambda!10891)))

(declare-fun bs!41361 () Bool)

(assert (= bs!41361 (and d!58773 b!88659)))

(assert (=> bs!41361 (= lambda!10894 lambda!10892)))

(declare-fun bs!41362 () Bool)

(assert (= bs!41362 (and d!58773 b!88481)))

(assert (=> bs!41362 (= lambda!10894 lambda!10886)))

(declare-fun bs!41363 () Bool)

(assert (= bs!41363 (and d!58773 b!88663)))

(assert (=> bs!41363 (= lambda!10894 lambda!10893)))

(declare-fun bs!41364 () Bool)

(assert (= bs!41364 (and d!58773 b!88429)))

(assert (=> bs!41364 (= lambda!10894 lambda!10880)))

(declare-fun bs!41365 () Bool)

(assert (= bs!41365 (and d!58773 b!88477)))

(assert (=> bs!41365 (= lambda!10894 lambda!10885)))

(declare-fun bs!41366 () Bool)

(assert (= bs!41366 (and d!58773 b!88643)))

(assert (=> bs!41366 (= lambda!10894 lambda!10890)))

(declare-fun bs!41367 () Bool)

(assert (= bs!41367 (and d!58773 d!58691)))

(assert (=> bs!41367 (= lambda!10894 lambda!10889)))

(assert (=> d!58773 true))

(assert (=> d!58773 (< (dynLambda!1054 order!497 key!514) (dynLambda!1055 order!499 lambda!10894))))

(declare-fun b_next!39851 () Bool)

(assert (=> start!11560 (= b_next!39849 (or (and d!58773 (= lambda!10894 keyAnn!5)) b_next!39851))))

(declare-fun e!48189 () Bool)

(assert (=> d!58773 e!48189))

(declare-fun c!21830 () Bool)

(declare-fun lt!20323 () List!733)

(assert (=> d!58773 (= c!21830 (is-Nil!689 lt!20323))))

(declare-fun lt!20322 () List!733)

(assert (=> d!58773 (= lt!20322 (sort!6 lt!20323 lambda!10894))))

(assert (=> d!58773 (= lt!20323 (annotateList!5 (t!48699 xs!1094) (+ (+ n!1722 1) 1)))))

(assert (=> d!58773 (= (sortStablePropInt!4 (t!48699 xs!1094) (+ (+ n!1722 1) 1) key!514) true)))

(declare-fun b!88670 () Bool)

(declare-fun res!46413 () Bool)

(declare-fun e!48190 () Bool)

(assert (=> b!88670 (=> (not res!46413) (not e!48190))))

(assert (=> b!88670 (= res!46413 (= (+ (+ n!1722 1) 1) (_2!238 (h!1091 lt!20323))))))

(declare-fun b!88671 () Bool)

(assert (=> b!88671 (= e!48189 e!48190)))

(declare-fun res!46415 () Bool)

(assert (=> b!88671 (=> (not res!46415) (not e!48190))))

(assert (=> b!88671 (= res!46415 (sortStablePropInt!4 (t!48699 (t!48699 xs!1094)) (+ (+ (+ n!1722 1) 1) 1) key!514))))

(declare-fun lt!20324 () List!733)

(assert (=> b!88671 (= lt!20324 (sort!6 (t!48698 lt!20323) lambda!10894))))

(declare-fun b!88672 () Bool)

(declare-fun res!46416 () Bool)

(assert (=> b!88672 (=> (not res!46416) (not e!48190))))

(assert (=> b!88672 (= res!46416 (l2AtLeast!5 (t!48698 lt!20323) (+ (+ n!1722 1) 1)))))

(declare-fun b!88673 () Bool)

(declare-fun res!46414 () Bool)

(assert (=> b!88673 (=> (not res!46414) (not e!48190))))

(assert (=> b!88673 (= res!46414 (l2AtLeast!5 lt!20324 (+ (+ n!1722 1) 1)))))

(declare-fun b!88674 () Bool)

(declare-fun res!46410 () Bool)

(assert (=> b!88674 (=> (not res!46410) (not e!48190))))

(assert (=> b!88674 (= res!46410 (isStableSorted!4 lt!20322 key!514))))

(declare-fun b!88675 () Bool)

(declare-fun res!46411 () Bool)

(assert (=> b!88675 (=> (not res!46411) (not e!48190))))

(assert (=> b!88675 (= res!46411 (trivProp2!4 lt!20324 (+ (+ n!1722 1) 1)))))

(declare-fun b!88676 () Bool)

(assert (=> b!88676 (= e!48189 (isStableSorted!4 lt!20322 key!514))))

(declare-fun b!88677 () Bool)

(assert (=> b!88677 (= e!48190 (l2AtLeast!5 lt!20322 (+ (+ n!1722 1) 1)))))

(declare-fun b!88678 () Bool)

(declare-fun res!46412 () Bool)

(assert (=> b!88678 (=> (not res!46412) (not e!48190))))

(assert (=> b!88678 (= res!46412 (l2AtLeast!5 lt!20324 (+ (+ (+ n!1722 1) 1) 1)))))

(declare-fun b!88679 () Bool)

(declare-fun res!46417 () Bool)

(assert (=> b!88679 (=> (not res!46417) (not e!48190))))

(assert (=> b!88679 (= res!46417 (insertStableProp!3 (_1!238 (h!1091 lt!20323)) (_2!238 (h!1091 lt!20323)) lt!20324 key!514))))

(assert (= (and b!88671 res!46415) b!88670))

(assert (= (and b!88670 res!46413) b!88672))

(assert (= (and b!88672 res!46416) b!88678))

(assert (= (and b!88678 res!46412) b!88675))

(assert (= (and b!88675 res!46411) b!88673))

(assert (= (and b!88673 res!46414) b!88679))

(assert (= (and b!88679 res!46417) b!88674))

(assert (= (and b!88674 res!46410) b!88677))

(assert (= (and d!58773 c!21830) b!88676))

(assert (= (and d!58773 (not c!21830)) b!88671))

(declare-fun m!84808 () Bool)

(assert (=> b!88671 m!84808))

(declare-fun m!84810 () Bool)

(assert (=> b!88671 m!84810))

(declare-fun m!84812 () Bool)

(assert (=> b!88675 m!84812))

(declare-fun m!84814 () Bool)

(assert (=> b!88677 m!84814))

(declare-fun m!84816 () Bool)

(assert (=> b!88678 m!84816))

(declare-fun m!84818 () Bool)

(assert (=> b!88679 m!84818))

(declare-fun m!84820 () Bool)

(assert (=> b!88676 m!84820))

(declare-fun m!84822 () Bool)

(assert (=> d!58773 m!84822))

(assert (=> d!58773 m!84700))

(declare-fun m!84824 () Bool)

(assert (=> b!88673 m!84824))

(assert (=> b!88674 m!84820))

(declare-fun m!84826 () Bool)

(assert (=> b!88672 m!84826))

(assert (=> b!88503 d!58773))

(declare-fun d!58775 () Bool)

(declare-fun e!48191 () Bool)

(assert (=> d!58775 e!48191))

(declare-fun res!46418 () Bool)

(assert (=> d!58775 (=> (not res!46418) (not e!48191))))

(declare-fun lt!20325 () List!733)

(assert (=> d!58775 (= res!46418 (= (content!160 lt!20325) (content!160 (t!48698 lt!20294))))))

(declare-fun e!48192 () List!733)

(assert (=> d!58775 (= lt!20325 e!48192)))

(declare-fun c!21831 () Bool)

(assert (=> d!58775 (= c!21831 (is-Nil!689 (t!48698 lt!20294)))))

(assert (=> d!58775 (= (sort!6 (t!48698 lt!20294) lambda!10889) lt!20325)))

(declare-fun b!88680 () Bool)

(assert (=> b!88680 (= e!48192 (t!48698 lt!20294))))

(declare-fun b!88681 () Bool)

(assert (=> b!88681 (= e!48192 (insert!30 (h!1091 (t!48698 lt!20294)) (sort!6 (t!48698 (t!48698 lt!20294)) lambda!10889) lambda!10889))))

(declare-fun b!88682 () Bool)

(assert (=> b!88682 (= e!48191 (= (length!12 lt!20325) (length!12 (t!48698 lt!20294))))))

(assert (= (and d!58775 c!21831) b!88680))

(assert (= (and d!58775 (not c!21831)) b!88681))

(assert (= (and d!58775 res!46418) b!88682))

(declare-fun m!84828 () Bool)

(assert (=> d!58775 m!84828))

(declare-fun m!84830 () Bool)

(assert (=> d!58775 m!84830))

(declare-fun m!84832 () Bool)

(assert (=> b!88681 m!84832))

(assert (=> b!88681 m!84832))

(declare-fun m!84834 () Bool)

(assert (=> b!88681 m!84834))

(declare-fun m!84836 () Bool)

(assert (=> b!88682 m!84836))

(declare-fun m!84838 () Bool)

(assert (=> b!88682 m!84838))

(assert (=> b!88503 d!58775))

(assert (=> b!88508 d!58713))

(declare-fun d!58777 () Bool)

(declare-fun res!46419 () Bool)

(declare-fun e!48193 () Bool)

(assert (=> d!58777 (=> res!46419 e!48193)))

(assert (=> d!58777 (= res!46419 (is-Nil!689 tlAnnSorted!2))))

(assert (=> d!58777 (= (isStableSorted!4 tlAnnSorted!2 key!514) e!48193)))

(declare-fun b!88683 () Bool)

(assert (=> b!88683 (= e!48193 (isStableSortedAndAtLeast!4 (t!48698 tlAnnSorted!2) key!514 (dynLambda!1056 key!514 (_1!238 (h!1091 tlAnnSorted!2))) (_2!238 (h!1091 tlAnnSorted!2))))))

(assert (= (and d!58777 (not res!46419)) b!88683))

(declare-fun b_lambda!17615 () Bool)

(assert (=> (not b_lambda!17615) (not b!88683)))

(declare-fun t!48723 () Bool)

(declare-fun tb!46621 () Bool)

(assert (=> (and start!11560 (= key!514 key!514) t!48723) tb!46621))

(declare-fun result!47067 () Bool)

(assert (=> tb!46621 (= result!47067 true)))

(assert (=> b!88683 t!48723))

(declare-fun b_and!60163 () Bool)

(assert (= b_and!60161 (and (=> t!48723 result!47067) b_and!60163)))

(declare-fun m!84840 () Bool)

(assert (=> b!88683 m!84840))

(assert (=> b!88683 m!84840))

(declare-fun m!84842 () Bool)

(assert (=> b!88683 m!84842))

(assert (=> d!58689 d!58777))

(declare-fun d!58779 () Bool)

(assert (=> d!58779 (= (length!12 lt!20271) (size!715 lt!20271))))

(declare-fun bs!41368 () Bool)

(assert (= bs!41368 d!58779))

(declare-fun m!84844 () Bool)

(assert (=> bs!41368 m!84844))

(assert (=> b!88446 d!58779))

(declare-fun d!58781 () Bool)

(assert (=> d!58781 (= (length!12 lAnn!4) (size!715 lAnn!4))))

(declare-fun bs!41369 () Bool)

(assert (= bs!41369 d!58781))

(declare-fun m!84846 () Bool)

(assert (=> bs!41369 m!84846))

(assert (=> b!88446 d!58781))

(declare-fun d!58783 () Bool)

(declare-fun res!46420 () Bool)

(declare-fun e!48194 () Bool)

(assert (=> d!58783 (=> res!46420 e!48194)))

(assert (=> d!58783 (= res!46420 (is-Nil!689 lt!20277))))

(assert (=> d!58783 (= (l2AtLeast!5 lt!20277 n!1722) e!48194)))

(declare-fun b!88684 () Bool)

(declare-fun e!48195 () Bool)

(assert (=> b!88684 (= e!48194 e!48195)))

(declare-fun res!46421 () Bool)

(assert (=> b!88684 (=> (not res!46421) (not e!48195))))

(assert (=> b!88684 (= res!46421 (<= n!1722 (_2!238 (h!1091 lt!20277))))))

(declare-fun b!88685 () Bool)

(assert (=> b!88685 (= e!48195 (l2AtLeast!5 (t!48698 lt!20277) n!1722))))

(assert (= (and d!58783 (not res!46420)) b!88684))

(assert (= (and b!88684 res!46421) b!88685))

(declare-fun m!84848 () Bool)

(assert (=> b!88685 m!84848))

(assert (=> d!58687 d!58783))

(declare-fun b!88686 () Bool)

(declare-fun e!48196 () Bool)

(declare-fun tp!17298 () Bool)

(assert (=> b!88686 (= e!48196 (and tp_is_empty!377 tp!17298))))

(assert (=> b!88526 (= tp!17285 e!48196)))

(assert (= (and b!88526 (is-Cons!687 (t!48698 (t!48698 lAnn!4)))) b!88686))

(declare-fun b!88687 () Bool)

(declare-fun e!48197 () Bool)

(declare-fun tp!17299 () Bool)

(assert (=> b!88687 (= e!48197 (and tp_is_empty!377 tp!17299))))

(assert (=> b!88533 (= tp!17290 e!48197)))

(assert (= (and b!88533 (is-Cons!687 (t!48698 (t!48698 lAnnSorted!4)))) b!88687))

(declare-fun b!88688 () Bool)

(declare-fun e!48198 () Bool)

(declare-fun tp!17300 () Bool)

(assert (=> b!88688 (= e!48198 (and tp_is_empty!377 tp!17300))))

(assert (=> b!88531 (= tp!17288 e!48198)))

(assert (= (and b!88531 (is-Cons!688 (t!48699 (t!48699 xs!1094)))) b!88688))

(declare-fun b!88689 () Bool)

(declare-fun e!48199 () Bool)

(declare-fun tp!17301 () Bool)

(assert (=> b!88689 (= e!48199 (and tp_is_empty!377 tp!17301))))

(assert (=> b!88532 (= tp!17289 e!48199)))

(assert (= (and b!88532 (is-Cons!687 (t!48698 (t!48698 tlAnnSorted!2)))) b!88689))

(declare-fun b!88690 () Bool)

(declare-fun e!48200 () Bool)

(declare-fun tp!17302 () Bool)

(assert (=> b!88690 (= e!48200 (and tp_is_empty!377 tp!17302))))

(assert (=> b!88534 (= tp!17291 e!48200)))

(assert (= (and b!88534 (is-Cons!688 (t!48699 (t!48699 l!1571)))) b!88690))

(declare-fun b_lambda!17617 () Bool)

(assert (= b_lambda!17601 (or (and d!58691 (= lambda!10889 keyAnn!5)) (and b!88429 (= lambda!10880 keyAnn!5)) (and d!58773 (= lambda!10894 keyAnn!5)) (and b!88663 (= lambda!10893 keyAnn!5)) (and b!88477 (= lambda!10885 keyAnn!5)) (and b!88659 (= lambda!10892 keyAnn!5)) (and b!88643 (= lambda!10890 keyAnn!5)) (and b!88481 (= lambda!10886 keyAnn!5)) (and b!88647 (= lambda!10891 keyAnn!5)) (and start!11560 b_free!7511) b_lambda!17617)))

(declare-fun bs!41370 () Bool)

(declare-fun d!58785 () Bool)

(assert (= bs!41370 (and d!58785 b!88647)))

(assert (=> bs!41370 (= (dynLambda!1057 lambda!10891 (h!1091 lAnn!4)) (dynLambda!1056 key!514 (_1!238 (h!1091 lAnn!4))))))

(declare-fun b_lambda!17663 () Bool)

(assert (=> (not b_lambda!17663) (not bs!41370)))

(declare-fun t!48725 () Bool)

(declare-fun tb!46623 () Bool)

(assert (=> (and start!11560 (= key!514 key!514) t!48725) tb!46623))

(declare-fun result!47069 () Bool)

(assert (=> tb!46623 (= result!47069 true)))

(assert (=> bs!41370 t!48725))

(declare-fun b_and!60165 () Bool)

(assert (= b_and!60163 (and (=> t!48725 result!47069) b_and!60165)))

(declare-fun m!84850 () Bool)

(assert (=> bs!41370 m!84850))

(assert (=> (and b!88647 (= lambda!10891 keyAnn!5) b!88638) d!58785))

(declare-fun bs!41371 () Bool)

(declare-fun d!58787 () Bool)

(assert (= bs!41371 (and d!58787 d!58691)))

(assert (=> bs!41371 (= (dynLambda!1057 lambda!10889 (h!1091 lAnn!4)) (dynLambda!1056 key!514 (_1!238 (h!1091 lAnn!4))))))

(declare-fun b_lambda!17665 () Bool)

(assert (=> (not b_lambda!17665) (not bs!41371)))

(assert (=> bs!41371 t!48725))

(declare-fun b_and!60167 () Bool)

(assert (= b_and!60165 (and (=> t!48725 result!47069) b_and!60167)))

(assert (=> bs!41371 m!84850))

(assert (=> (and d!58691 (= lambda!10889 keyAnn!5) b!88638) d!58787))

(declare-fun bs!41372 () Bool)

(declare-fun d!58789 () Bool)

(assert (= bs!41372 (and d!58789 b!88643)))

(assert (=> bs!41372 (= (dynLambda!1057 lambda!10890 (h!1091 lAnn!4)) (dynLambda!1056 key!514 (_1!238 (h!1091 lAnn!4))))))

(declare-fun b_lambda!17667 () Bool)

(assert (=> (not b_lambda!17667) (not bs!41372)))

(assert (=> bs!41372 t!48725))

(declare-fun b_and!60169 () Bool)

(assert (= b_and!60167 (and (=> t!48725 result!47069) b_and!60169)))

(assert (=> bs!41372 m!84850))

(assert (=> (and b!88643 (= lambda!10890 keyAnn!5) b!88638) d!58789))

(declare-fun bs!41373 () Bool)

(declare-fun d!58791 () Bool)

(assert (= bs!41373 (and d!58791 b!88429)))

(assert (=> bs!41373 (= (dynLambda!1057 lambda!10880 (h!1091 lAnn!4)) (dynLambda!1056 key!514 (_1!238 (h!1091 lAnn!4))))))

(declare-fun b_lambda!17669 () Bool)

(assert (=> (not b_lambda!17669) (not bs!41373)))

(assert (=> bs!41373 t!48725))

(declare-fun b_and!60171 () Bool)

(assert (= b_and!60169 (and (=> t!48725 result!47069) b_and!60171)))

(assert (=> bs!41373 m!84850))

(assert (=> (and b!88429 (= lambda!10880 keyAnn!5) b!88638) d!58791))

(declare-fun bs!41374 () Bool)

(declare-fun d!58793 () Bool)

(assert (= bs!41374 (and d!58793 b!88659)))

(assert (=> bs!41374 (= (dynLambda!1057 lambda!10892 (h!1091 lAnn!4)) (dynLambda!1056 key!514 (_1!238 (h!1091 lAnn!4))))))

(declare-fun b_lambda!17671 () Bool)

(assert (=> (not b_lambda!17671) (not bs!41374)))

(assert (=> bs!41374 t!48725))

(declare-fun b_and!60173 () Bool)

(assert (= b_and!60171 (and (=> t!48725 result!47069) b_and!60173)))

(assert (=> bs!41374 m!84850))

(assert (=> (and b!88659 (= lambda!10892 keyAnn!5) b!88638) d!58793))

(declare-fun bs!41375 () Bool)

(declare-fun d!58795 () Bool)

(assert (= bs!41375 (and d!58795 b!88663)))

(assert (=> bs!41375 (= (dynLambda!1057 lambda!10893 (h!1091 lAnn!4)) (dynLambda!1056 key!514 (_1!238 (h!1091 lAnn!4))))))

(declare-fun b_lambda!17673 () Bool)

(assert (=> (not b_lambda!17673) (not bs!41375)))

(assert (=> bs!41375 t!48725))

(declare-fun b_and!60175 () Bool)

(assert (= b_and!60173 (and (=> t!48725 result!47069) b_and!60175)))

(assert (=> bs!41375 m!84850))

(assert (=> (and b!88663 (= lambda!10893 keyAnn!5) b!88638) d!58795))

(declare-fun bs!41376 () Bool)

(declare-fun d!58797 () Bool)

(assert (= bs!41376 (and d!58797 b!88481)))

(assert (=> bs!41376 (= (dynLambda!1057 lambda!10886 (h!1091 lAnn!4)) (dynLambda!1056 key!514 (_1!238 (h!1091 lAnn!4))))))

(declare-fun b_lambda!17675 () Bool)

(assert (=> (not b_lambda!17675) (not bs!41376)))

(assert (=> bs!41376 t!48725))

(declare-fun b_and!60177 () Bool)

(assert (= b_and!60175 (and (=> t!48725 result!47069) b_and!60177)))

(assert (=> bs!41376 m!84850))

(assert (=> (and b!88481 (= lambda!10886 keyAnn!5) b!88638) d!58797))

(declare-fun bs!41377 () Bool)

(declare-fun d!58799 () Bool)

(assert (= bs!41377 (and d!58799 d!58773)))

(assert (=> bs!41377 (= (dynLambda!1057 lambda!10894 (h!1091 lAnn!4)) (dynLambda!1056 key!514 (_1!238 (h!1091 lAnn!4))))))

(declare-fun b_lambda!17677 () Bool)

(assert (=> (not b_lambda!17677) (not bs!41377)))

(assert (=> bs!41377 t!48725))

(declare-fun b_and!60179 () Bool)

(assert (= b_and!60177 (and (=> t!48725 result!47069) b_and!60179)))

(assert (=> bs!41377 m!84850))

(assert (=> (and d!58773 (= lambda!10894 keyAnn!5) b!88638) d!58799))

(declare-fun bs!41378 () Bool)

(declare-fun d!58801 () Bool)

(assert (= bs!41378 (and d!58801 b!88477)))

(assert (=> bs!41378 (= (dynLambda!1057 lambda!10885 (h!1091 lAnn!4)) (dynLambda!1056 key!514 (_1!238 (h!1091 lAnn!4))))))

(declare-fun b_lambda!17679 () Bool)

(assert (=> (not b_lambda!17679) (not bs!41378)))

(assert (=> bs!41378 t!48725))

(declare-fun b_and!60181 () Bool)

(assert (= b_and!60179 (and (=> t!48725 result!47069) b_and!60181)))

(assert (=> bs!41378 m!84850))

(assert (=> (and b!88477 (= lambda!10885 keyAnn!5) b!88638) d!58801))

(declare-fun b_lambda!17619 () Bool)

(assert (= b_lambda!17593 (or b!88481 b_lambda!17619)))

(declare-fun bs!41379 () Bool)

(declare-fun d!58803 () Bool)

(assert (= bs!41379 (and d!58803 b!88481)))

(assert (=> bs!41379 (= (dynLambda!1057 lambda!10886 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4)))) (dynLambda!1056 key!514 (_1!238 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4))))))))

(declare-fun b_lambda!17681 () Bool)

(assert (=> (not b_lambda!17681) (not bs!41379)))

(declare-fun t!48727 () Bool)

(declare-fun tb!46625 () Bool)

(assert (=> (and start!11560 (= key!514 key!514) t!48727) tb!46625))

(declare-fun result!47071 () Bool)

(assert (=> tb!46625 (= result!47071 true)))

(assert (=> bs!41379 t!48727))

(declare-fun b_and!60183 () Bool)

(assert (= b_and!60181 (and (=> t!48727 result!47071) b_and!60183)))

(declare-fun m!84852 () Bool)

(assert (=> bs!41379 m!84852))

(assert (=> b!88628 d!58803))

(declare-fun b_lambda!17621 () Bool)

(assert (= b_lambda!17581 (or (and d!58691 (= lambda!10889 keyAnn!5)) (and b!88429 (= lambda!10880 keyAnn!5)) (and d!58773 (= lambda!10894 keyAnn!5)) (and b!88663 (= lambda!10893 keyAnn!5)) (and b!88477 (= lambda!10885 keyAnn!5)) (and b!88659 (= lambda!10892 keyAnn!5)) (and b!88643 (= lambda!10890 keyAnn!5)) (and b!88481 (= lambda!10886 keyAnn!5)) (and b!88647 (= lambda!10891 keyAnn!5)) (and start!11560 b_free!7511) b_lambda!17621)))

(declare-fun bs!41380 () Bool)

(declare-fun d!58805 () Bool)

(assert (= bs!41380 (and d!58805 d!58773)))

(assert (=> bs!41380 (= (dynLambda!1057 lambda!10894 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))))

(declare-fun b_lambda!17683 () Bool)

(assert (=> (not b_lambda!17683) (not bs!41380)))

(declare-fun t!48729 () Bool)

(declare-fun tb!46627 () Bool)

(assert (=> (and start!11560 (= key!514 key!514) t!48729) tb!46627))

(declare-fun result!47073 () Bool)

(assert (=> tb!46627 (= result!47073 true)))

(assert (=> bs!41380 t!48729))

(declare-fun b_and!60185 () Bool)

(assert (= b_and!60183 (and (=> t!48729 result!47073) b_and!60185)))

(declare-fun m!84854 () Bool)

(assert (=> bs!41380 m!84854))

(assert (=> (and d!58773 (= lambda!10894 keyAnn!5) b!88588) d!58805))

(declare-fun bs!41381 () Bool)

(declare-fun d!58807 () Bool)

(assert (= bs!41381 (and d!58807 b!88477)))

(assert (=> bs!41381 (= (dynLambda!1057 lambda!10885 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))))

(declare-fun b_lambda!17685 () Bool)

(assert (=> (not b_lambda!17685) (not bs!41381)))

(assert (=> bs!41381 t!48729))

(declare-fun b_and!60187 () Bool)

(assert (= b_and!60185 (and (=> t!48729 result!47073) b_and!60187)))

(assert (=> bs!41381 m!84854))

(assert (=> (and b!88477 (= lambda!10885 keyAnn!5) b!88588) d!58807))

(declare-fun bs!41382 () Bool)

(declare-fun d!58809 () Bool)

(assert (= bs!41382 (and d!58809 b!88663)))

(assert (=> bs!41382 (= (dynLambda!1057 lambda!10893 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))))

(declare-fun b_lambda!17687 () Bool)

(assert (=> (not b_lambda!17687) (not bs!41382)))

(assert (=> bs!41382 t!48729))

(declare-fun b_and!60189 () Bool)

(assert (= b_and!60187 (and (=> t!48729 result!47073) b_and!60189)))

(assert (=> bs!41382 m!84854))

(assert (=> (and b!88663 (= lambda!10893 keyAnn!5) b!88588) d!58809))

(declare-fun bs!41383 () Bool)

(declare-fun d!58811 () Bool)

(assert (= bs!41383 (and d!58811 b!88647)))

(assert (=> bs!41383 (= (dynLambda!1057 lambda!10891 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))))

(declare-fun b_lambda!17689 () Bool)

(assert (=> (not b_lambda!17689) (not bs!41383)))

(assert (=> bs!41383 t!48729))

(declare-fun b_and!60191 () Bool)

(assert (= b_and!60189 (and (=> t!48729 result!47073) b_and!60191)))

(assert (=> bs!41383 m!84854))

(assert (=> (and b!88647 (= lambda!10891 keyAnn!5) b!88588) d!58811))

(declare-fun bs!41384 () Bool)

(declare-fun d!58813 () Bool)

(assert (= bs!41384 (and d!58813 b!88429)))

(assert (=> bs!41384 (= (dynLambda!1057 lambda!10880 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))))

(declare-fun b_lambda!17691 () Bool)

(assert (=> (not b_lambda!17691) (not bs!41384)))

(assert (=> bs!41384 t!48729))

(declare-fun b_and!60193 () Bool)

(assert (= b_and!60191 (and (=> t!48729 result!47073) b_and!60193)))

(assert (=> bs!41384 m!84854))

(assert (=> (and b!88429 (= lambda!10880 keyAnn!5) b!88588) d!58813))

(declare-fun bs!41385 () Bool)

(declare-fun d!58815 () Bool)

(assert (= bs!41385 (and d!58815 b!88643)))

(assert (=> bs!41385 (= (dynLambda!1057 lambda!10890 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))))

(declare-fun b_lambda!17693 () Bool)

(assert (=> (not b_lambda!17693) (not bs!41385)))

(assert (=> bs!41385 t!48729))

(declare-fun b_and!60195 () Bool)

(assert (= b_and!60193 (and (=> t!48729 result!47073) b_and!60195)))

(assert (=> bs!41385 m!84854))

(assert (=> (and b!88643 (= lambda!10890 keyAnn!5) b!88588) d!58815))

(declare-fun bs!41386 () Bool)

(declare-fun d!58817 () Bool)

(assert (= bs!41386 (and d!58817 b!88481)))

(assert (=> bs!41386 (= (dynLambda!1057 lambda!10886 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))))

(declare-fun b_lambda!17695 () Bool)

(assert (=> (not b_lambda!17695) (not bs!41386)))

(assert (=> bs!41386 t!48729))

(declare-fun b_and!60197 () Bool)

(assert (= b_and!60195 (and (=> t!48729 result!47073) b_and!60197)))

(assert (=> bs!41386 m!84854))

(assert (=> (and b!88481 (= lambda!10886 keyAnn!5) b!88588) d!58817))

(declare-fun bs!41387 () Bool)

(declare-fun d!58819 () Bool)

(assert (= bs!41387 (and d!58819 d!58691)))

(assert (=> bs!41387 (= (dynLambda!1057 lambda!10889 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))))

(declare-fun b_lambda!17697 () Bool)

(assert (=> (not b_lambda!17697) (not bs!41387)))

(assert (=> bs!41387 t!48729))

(declare-fun b_and!60199 () Bool)

(assert (= b_and!60197 (and (=> t!48729 result!47073) b_and!60199)))

(assert (=> bs!41387 m!84854))

(assert (=> (and d!58691 (= lambda!10889 keyAnn!5) b!88588) d!58819))

(declare-fun bs!41388 () Bool)

(declare-fun d!58821 () Bool)

(assert (= bs!41388 (and d!58821 b!88659)))

(assert (=> bs!41388 (= (dynLambda!1057 lambda!10892 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 (t!48698 lAnn!4)) keyAnn!5)))))))

(declare-fun b_lambda!17699 () Bool)

(assert (=> (not b_lambda!17699) (not bs!41388)))

(assert (=> bs!41388 t!48729))

(declare-fun b_and!60201 () Bool)

(assert (= b_and!60199 (and (=> t!48729 result!47073) b_and!60201)))

(assert (=> bs!41388 m!84854))

(assert (=> (and b!88659 (= lambda!10892 keyAnn!5) b!88588) d!58821))

(declare-fun b_lambda!17623 () Bool)

(assert (= b_lambda!17575 (or (and start!11560 b_free!7509) b_lambda!17623)))

(declare-fun b_lambda!17625 () Bool)

(assert (= b_lambda!17583 (or (and d!58691 (= lambda!10889 keyAnn!5)) (and b!88429 (= lambda!10880 keyAnn!5)) (and d!58773 (= lambda!10894 keyAnn!5)) (and b!88663 (= lambda!10893 keyAnn!5)) (and b!88477 (= lambda!10885 keyAnn!5)) (and b!88659 (= lambda!10892 keyAnn!5)) (and b!88643 (= lambda!10890 keyAnn!5)) (and b!88481 (= lambda!10886 keyAnn!5)) (and b!88647 (= lambda!10891 keyAnn!5)) (and start!11560 b_free!7511) b_lambda!17625)))

(declare-fun bs!41389 () Bool)

(declare-fun d!58823 () Bool)

(assert (= bs!41389 (and d!58823 b!88477)))

(assert (=> bs!41389 (= (dynLambda!1057 lambda!10885 (h!1091 (t!48698 lAnn!4))) (dynLambda!1056 key!514 (_1!238 (h!1091 (t!48698 lAnn!4)))))))

(declare-fun b_lambda!17701 () Bool)

(assert (=> (not b_lambda!17701) (not bs!41389)))

(declare-fun t!48731 () Bool)

(declare-fun tb!46629 () Bool)

(assert (=> (and start!11560 (= key!514 key!514) t!48731) tb!46629))

(declare-fun result!47075 () Bool)

(assert (=> tb!46629 (= result!47075 true)))

(assert (=> bs!41389 t!48731))

(declare-fun b_and!60203 () Bool)

(assert (= b_and!60201 (and (=> t!48731 result!47075) b_and!60203)))

(declare-fun m!84856 () Bool)

(assert (=> bs!41389 m!84856))

(assert (=> (and b!88477 (= lambda!10885 keyAnn!5) b!88589) d!58823))

(declare-fun bs!41390 () Bool)

(declare-fun d!58825 () Bool)

(assert (= bs!41390 (and d!58825 b!88481)))

(assert (=> bs!41390 (= (dynLambda!1057 lambda!10886 (h!1091 (t!48698 lAnn!4))) (dynLambda!1056 key!514 (_1!238 (h!1091 (t!48698 lAnn!4)))))))

(declare-fun b_lambda!17703 () Bool)

(assert (=> (not b_lambda!17703) (not bs!41390)))

(assert (=> bs!41390 t!48731))

(declare-fun b_and!60205 () Bool)

(assert (= b_and!60203 (and (=> t!48731 result!47075) b_and!60205)))

(assert (=> bs!41390 m!84856))

(assert (=> (and b!88481 (= lambda!10886 keyAnn!5) b!88589) d!58825))

(declare-fun bs!41391 () Bool)

(declare-fun d!58827 () Bool)

(assert (= bs!41391 (and d!58827 b!88663)))

(assert (=> bs!41391 (= (dynLambda!1057 lambda!10893 (h!1091 (t!48698 lAnn!4))) (dynLambda!1056 key!514 (_1!238 (h!1091 (t!48698 lAnn!4)))))))

(declare-fun b_lambda!17705 () Bool)

(assert (=> (not b_lambda!17705) (not bs!41391)))

(assert (=> bs!41391 t!48731))

(declare-fun b_and!60207 () Bool)

(assert (= b_and!60205 (and (=> t!48731 result!47075) b_and!60207)))

(assert (=> bs!41391 m!84856))

(assert (=> (and b!88663 (= lambda!10893 keyAnn!5) b!88589) d!58827))

(declare-fun bs!41392 () Bool)

(declare-fun d!58829 () Bool)

(assert (= bs!41392 (and d!58829 b!88643)))

(assert (=> bs!41392 (= (dynLambda!1057 lambda!10890 (h!1091 (t!48698 lAnn!4))) (dynLambda!1056 key!514 (_1!238 (h!1091 (t!48698 lAnn!4)))))))

(declare-fun b_lambda!17707 () Bool)

(assert (=> (not b_lambda!17707) (not bs!41392)))

(assert (=> bs!41392 t!48731))

(declare-fun b_and!60209 () Bool)

(assert (= b_and!60207 (and (=> t!48731 result!47075) b_and!60209)))

(assert (=> bs!41392 m!84856))

(assert (=> (and b!88643 (= lambda!10890 keyAnn!5) b!88589) d!58829))

(declare-fun bs!41393 () Bool)

(declare-fun d!58831 () Bool)

(assert (= bs!41393 (and d!58831 b!88659)))

(assert (=> bs!41393 (= (dynLambda!1057 lambda!10892 (h!1091 (t!48698 lAnn!4))) (dynLambda!1056 key!514 (_1!238 (h!1091 (t!48698 lAnn!4)))))))

(declare-fun b_lambda!17709 () Bool)

(assert (=> (not b_lambda!17709) (not bs!41393)))

(assert (=> bs!41393 t!48731))

(declare-fun b_and!60211 () Bool)

(assert (= b_and!60209 (and (=> t!48731 result!47075) b_and!60211)))

(assert (=> bs!41393 m!84856))

(assert (=> (and b!88659 (= lambda!10892 keyAnn!5) b!88589) d!58831))

(declare-fun bs!41394 () Bool)

(declare-fun d!58833 () Bool)

(assert (= bs!41394 (and d!58833 d!58773)))

(assert (=> bs!41394 (= (dynLambda!1057 lambda!10894 (h!1091 (t!48698 lAnn!4))) (dynLambda!1056 key!514 (_1!238 (h!1091 (t!48698 lAnn!4)))))))

(declare-fun b_lambda!17711 () Bool)

(assert (=> (not b_lambda!17711) (not bs!41394)))

(assert (=> bs!41394 t!48731))

(declare-fun b_and!60213 () Bool)

(assert (= b_and!60211 (and (=> t!48731 result!47075) b_and!60213)))

(assert (=> bs!41394 m!84856))

(assert (=> (and d!58773 (= lambda!10894 keyAnn!5) b!88589) d!58833))

(declare-fun bs!41395 () Bool)

(declare-fun d!58835 () Bool)

(assert (= bs!41395 (and d!58835 d!58691)))

(assert (=> bs!41395 (= (dynLambda!1057 lambda!10889 (h!1091 (t!48698 lAnn!4))) (dynLambda!1056 key!514 (_1!238 (h!1091 (t!48698 lAnn!4)))))))

(declare-fun b_lambda!17713 () Bool)

(assert (=> (not b_lambda!17713) (not bs!41395)))

(assert (=> bs!41395 t!48731))

(declare-fun b_and!60215 () Bool)

(assert (= b_and!60213 (and (=> t!48731 result!47075) b_and!60215)))

(assert (=> bs!41395 m!84856))

(assert (=> (and d!58691 (= lambda!10889 keyAnn!5) b!88589) d!58835))

(declare-fun bs!41396 () Bool)

(declare-fun d!58837 () Bool)

(assert (= bs!41396 (and d!58837 b!88429)))

(assert (=> bs!41396 (= (dynLambda!1057 lambda!10880 (h!1091 (t!48698 lAnn!4))) (dynLambda!1056 key!514 (_1!238 (h!1091 (t!48698 lAnn!4)))))))

(declare-fun b_lambda!17715 () Bool)

(assert (=> (not b_lambda!17715) (not bs!41396)))

(assert (=> bs!41396 t!48731))

(declare-fun b_and!60217 () Bool)

(assert (= b_and!60215 (and (=> t!48731 result!47075) b_and!60217)))

(assert (=> bs!41396 m!84856))

(assert (=> (and b!88429 (= lambda!10880 keyAnn!5) b!88589) d!58837))

(declare-fun bs!41397 () Bool)

(declare-fun d!58839 () Bool)

(assert (= bs!41397 (and d!58839 b!88647)))

(assert (=> bs!41397 (= (dynLambda!1057 lambda!10891 (h!1091 (t!48698 lAnn!4))) (dynLambda!1056 key!514 (_1!238 (h!1091 (t!48698 lAnn!4)))))))

(declare-fun b_lambda!17717 () Bool)

(assert (=> (not b_lambda!17717) (not bs!41397)))

(assert (=> bs!41397 t!48731))

(declare-fun b_and!60219 () Bool)

(assert (= b_and!60217 (and (=> t!48731 result!47075) b_and!60219)))

(assert (=> bs!41397 m!84856))

(assert (=> (and b!88647 (= lambda!10891 keyAnn!5) b!88589) d!58839))

(declare-fun b_lambda!17627 () Bool)

(assert (= b_lambda!17595 (or b!88481 b_lambda!17627)))

(declare-fun bs!41398 () Bool)

(declare-fun d!58841 () Bool)

(assert (= bs!41398 (and d!58841 b!88481)))

(assert (=> bs!41398 (= (dynLambda!1057 lambda!10886 (h!1091 tlAnnSorted!2)) (dynLambda!1056 key!514 (_1!238 (h!1091 tlAnnSorted!2))))))

(declare-fun b_lambda!17719 () Bool)

(assert (=> (not b_lambda!17719) (not bs!41398)))

(assert (=> bs!41398 t!48723))

(declare-fun b_and!60221 () Bool)

(assert (= b_and!60219 (and (=> t!48723 result!47067) b_and!60221)))

(assert (=> bs!41398 m!84840))

(assert (=> b!88628 d!58841))

(declare-fun b_lambda!17629 () Bool)

(assert (= b_lambda!17605 (or (and start!11560 b_free!7509) b_lambda!17629)))

(declare-fun b_lambda!17631 () Bool)

(assert (= b_lambda!17573 (or (and start!11560 b_free!7509) b_lambda!17631)))

(declare-fun b_lambda!17633 () Bool)

(assert (= b_lambda!17597 (or (and d!58691 (= lambda!10889 keyAnn!5)) (and b!88429 (= lambda!10880 keyAnn!5)) (and d!58773 (= lambda!10894 keyAnn!5)) (and b!88663 (= lambda!10893 keyAnn!5)) (and b!88477 (= lambda!10885 keyAnn!5)) (and b!88659 (= lambda!10892 keyAnn!5)) (and b!88643 (= lambda!10890 keyAnn!5)) (and b!88481 (= lambda!10886 keyAnn!5)) (and b!88647 (= lambda!10891 keyAnn!5)) (and start!11560 b_free!7511) b_lambda!17633)))

(assert (=> (and b!88647 (= lambda!10891 keyAnn!5) b!88637) d!58785))

(assert (=> (and d!58691 (= lambda!10889 keyAnn!5) b!88637) d!58787))

(assert (=> (and b!88643 (= lambda!10890 keyAnn!5) b!88637) d!58789))

(assert (=> (and b!88429 (= lambda!10880 keyAnn!5) b!88637) d!58791))

(assert (=> (and b!88659 (= lambda!10892 keyAnn!5) b!88637) d!58793))

(assert (=> (and b!88663 (= lambda!10893 keyAnn!5) b!88637) d!58795))

(assert (=> (and b!88481 (= lambda!10886 keyAnn!5) b!88637) d!58797))

(assert (=> (and d!58773 (= lambda!10894 keyAnn!5) b!88637) d!58799))

(assert (=> (and b!88477 (= lambda!10885 keyAnn!5) b!88637) d!58801))

(declare-fun b_lambda!17635 () Bool)

(assert (= b_lambda!17589 (or b!88481 b_lambda!17635)))

(assert (=> b!88627 d!58803))

(declare-fun b_lambda!17637 () Bool)

(assert (= b_lambda!17571 (or (and start!11560 b_free!7509) b_lambda!17637)))

(declare-fun b_lambda!17639 () Bool)

(assert (= b_lambda!17599 (or (and d!58691 (= lambda!10889 keyAnn!5)) (and b!88429 (= lambda!10880 keyAnn!5)) (and d!58773 (= lambda!10894 keyAnn!5)) (and b!88663 (= lambda!10893 keyAnn!5)) (and b!88477 (= lambda!10885 keyAnn!5)) (and b!88659 (= lambda!10892 keyAnn!5)) (and b!88643 (= lambda!10890 keyAnn!5)) (and b!88481 (= lambda!10886 keyAnn!5)) (and b!88647 (= lambda!10891 keyAnn!5)) (and start!11560 b_free!7511) b_lambda!17639)))

(declare-fun bs!41399 () Bool)

(declare-fun d!58843 () Bool)

(assert (= bs!41399 (and d!58843 d!58773)))

(assert (=> bs!41399 (= (dynLambda!1057 lambda!10894 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))))

(declare-fun b_lambda!17721 () Bool)

(assert (=> (not b_lambda!17721) (not bs!41399)))

(declare-fun t!48733 () Bool)

(declare-fun tb!46631 () Bool)

(assert (=> (and start!11560 (= key!514 key!514) t!48733) tb!46631))

(declare-fun result!47077 () Bool)

(assert (=> tb!46631 (= result!47077 true)))

(assert (=> bs!41399 t!48733))

(declare-fun b_and!60223 () Bool)

(assert (= b_and!60221 (and (=> t!48733 result!47077) b_and!60223)))

(declare-fun m!84858 () Bool)

(assert (=> bs!41399 m!84858))

(assert (=> (and d!58773 (= lambda!10894 keyAnn!5) b!88637) d!58843))

(declare-fun bs!41400 () Bool)

(declare-fun d!58845 () Bool)

(assert (= bs!41400 (and d!58845 b!88643)))

(assert (=> bs!41400 (= (dynLambda!1057 lambda!10890 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))))

(declare-fun b_lambda!17723 () Bool)

(assert (=> (not b_lambda!17723) (not bs!41400)))

(assert (=> bs!41400 t!48733))

(declare-fun b_and!60225 () Bool)

(assert (= b_and!60223 (and (=> t!48733 result!47077) b_and!60225)))

(assert (=> bs!41400 m!84858))

(assert (=> (and b!88643 (= lambda!10890 keyAnn!5) b!88637) d!58845))

(declare-fun bs!41401 () Bool)

(declare-fun d!58847 () Bool)

(assert (= bs!41401 (and d!58847 b!88659)))

(assert (=> bs!41401 (= (dynLambda!1057 lambda!10892 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))))

(declare-fun b_lambda!17725 () Bool)

(assert (=> (not b_lambda!17725) (not bs!41401)))

(assert (=> bs!41401 t!48733))

(declare-fun b_and!60227 () Bool)

(assert (= b_and!60225 (and (=> t!48733 result!47077) b_and!60227)))

(assert (=> bs!41401 m!84858))

(assert (=> (and b!88659 (= lambda!10892 keyAnn!5) b!88637) d!58847))

(declare-fun bs!41402 () Bool)

(declare-fun d!58849 () Bool)

(assert (= bs!41402 (and d!58849 d!58691)))

(assert (=> bs!41402 (= (dynLambda!1057 lambda!10889 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))))

(declare-fun b_lambda!17727 () Bool)

(assert (=> (not b_lambda!17727) (not bs!41402)))

(assert (=> bs!41402 t!48733))

(declare-fun b_and!60229 () Bool)

(assert (= b_and!60227 (and (=> t!48733 result!47077) b_and!60229)))

(assert (=> bs!41402 m!84858))

(assert (=> (and d!58691 (= lambda!10889 keyAnn!5) b!88637) d!58849))

(declare-fun bs!41403 () Bool)

(declare-fun d!58851 () Bool)

(assert (= bs!41403 (and d!58851 b!88477)))

(assert (=> bs!41403 (= (dynLambda!1057 lambda!10885 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))))

(declare-fun b_lambda!17729 () Bool)

(assert (=> (not b_lambda!17729) (not bs!41403)))

(assert (=> bs!41403 t!48733))

(declare-fun b_and!60231 () Bool)

(assert (= b_and!60229 (and (=> t!48733 result!47077) b_and!60231)))

(assert (=> bs!41403 m!84858))

(assert (=> (and b!88477 (= lambda!10885 keyAnn!5) b!88637) d!58851))

(declare-fun bs!41404 () Bool)

(declare-fun d!58853 () Bool)

(assert (= bs!41404 (and d!58853 b!88429)))

(assert (=> bs!41404 (= (dynLambda!1057 lambda!10880 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))))

(declare-fun b_lambda!17731 () Bool)

(assert (=> (not b_lambda!17731) (not bs!41404)))

(assert (=> bs!41404 t!48733))

(declare-fun b_and!60233 () Bool)

(assert (= b_and!60231 (and (=> t!48733 result!47077) b_and!60233)))

(assert (=> bs!41404 m!84858))

(assert (=> (and b!88429 (= lambda!10880 keyAnn!5) b!88637) d!58853))

(declare-fun bs!41405 () Bool)

(declare-fun d!58855 () Bool)

(assert (= bs!41405 (and d!58855 b!88481)))

(assert (=> bs!41405 (= (dynLambda!1057 lambda!10886 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))))

(declare-fun b_lambda!17733 () Bool)

(assert (=> (not b_lambda!17733) (not bs!41405)))

(assert (=> bs!41405 t!48733))

(declare-fun b_and!60235 () Bool)

(assert (= b_and!60233 (and (=> t!48733 result!47077) b_and!60235)))

(assert (=> bs!41405 m!84858))

(assert (=> (and b!88481 (= lambda!10886 keyAnn!5) b!88637) d!58855))

(declare-fun bs!41406 () Bool)

(declare-fun d!58857 () Bool)

(assert (= bs!41406 (and d!58857 b!88647)))

(assert (=> bs!41406 (= (dynLambda!1057 lambda!10891 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))))

(declare-fun b_lambda!17735 () Bool)

(assert (=> (not b_lambda!17735) (not bs!41406)))

(assert (=> bs!41406 t!48733))

(declare-fun b_and!60237 () Bool)

(assert (= b_and!60235 (and (=> t!48733 result!47077) b_and!60237)))

(assert (=> bs!41406 m!84858))

(assert (=> (and b!88647 (= lambda!10891 keyAnn!5) b!88637) d!58857))

(declare-fun bs!41407 () Bool)

(declare-fun d!58859 () Bool)

(assert (= bs!41407 (and d!58859 b!88663)))

(assert (=> bs!41407 (= (dynLambda!1057 lambda!10893 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5))) (dynLambda!1056 key!514 (_1!238 (h!1091 (sort!6 (t!48698 lAnn!4) keyAnn!5)))))))

(declare-fun b_lambda!17737 () Bool)

(assert (=> (not b_lambda!17737) (not bs!41407)))

(assert (=> bs!41407 t!48733))

(declare-fun b_and!60239 () Bool)

(assert (= b_and!60237 (and (=> t!48733 result!47077) b_and!60239)))

(assert (=> bs!41407 m!84858))

(assert (=> (and b!88663 (= lambda!10893 keyAnn!5) b!88637) d!58859))

(declare-fun b_lambda!17641 () Bool)

(assert (= b_lambda!17585 (or (and d!58691 (= lambda!10889 keyAnn!5)) (and b!88429 (= lambda!10880 keyAnn!5)) (and d!58773 (= lambda!10894 keyAnn!5)) (and b!88663 (= lambda!10893 keyAnn!5)) (and b!88477 (= lambda!10885 keyAnn!5)) (and b!88659 (= lambda!10892 keyAnn!5)) (and b!88643 (= lambda!10890 keyAnn!5)) (and b!88481 (= lambda!10886 keyAnn!5)) (and b!88647 (= lambda!10891 keyAnn!5)) (and start!11560 b_free!7511) b_lambda!17641)))

(assert (=> (and d!58773 (= lambda!10894 keyAnn!5) b!88589) d!58805))

(assert (=> (and b!88477 (= lambda!10885 keyAnn!5) b!88589) d!58807))

(assert (=> (and b!88663 (= lambda!10893 keyAnn!5) b!88589) d!58809))

(assert (=> (and b!88647 (= lambda!10891 keyAnn!5) b!88589) d!58811))

(assert (=> (and b!88429 (= lambda!10880 keyAnn!5) b!88589) d!58813))

(assert (=> (and b!88643 (= lambda!10890 keyAnn!5) b!88589) d!58815))

(assert (=> (and b!88481 (= lambda!10886 keyAnn!5) b!88589) d!58817))

(assert (=> (and d!58691 (= lambda!10889 keyAnn!5) b!88589) d!58819))

(assert (=> (and b!88659 (= lambda!10892 keyAnn!5) b!88589) d!58821))

(declare-fun b_lambda!17643 () Bool)

(assert (= b_lambda!17611 (or b!88477 b_lambda!17643)))

(declare-fun bs!41408 () Bool)

(declare-fun d!58861 () Bool)

(assert (= bs!41408 (and d!58861 b!88477)))

(assert (=> bs!41408 (= (dynLambda!1057 lambda!10885 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4)))) (dynLambda!1056 key!514 (_1!238 (tuple2!407 (_1!238 (h!1091 lAnn!4)) (_2!238 (h!1091 lAnn!4))))))))

(declare-fun b_lambda!17739 () Bool)

(assert (=> (not b_lambda!17739) (not bs!41408)))

(assert (=> bs!41408 t!48727))

(declare-fun b_and!60241 () Bool)

(assert (= b_and!60239 (and (=> t!48727 result!47071) b_and!60241)))

(assert (=> bs!41408 m!84852))

(assert (=> b!88656 d!58861))

(declare-fun b_lambda!17645 () Bool)

(assert (= b_lambda!17587 (or (and start!11560 b_free!7509) b_lambda!17645)))

(declare-fun b_lambda!17647 () Bool)

(assert (= b_lambda!17579 (or (and d!58691 (= lambda!10889 keyAnn!5)) (and b!88429 (= lambda!10880 keyAnn!5)) (and d!58773 (= lambda!10894 keyAnn!5)) (and b!88663 (= lambda!10893 keyAnn!5)) (and b!88477 (= lambda!10885 keyAnn!5)) (and b!88659 (= lambda!10892 keyAnn!5)) (and b!88643 (= lambda!10890 keyAnn!5)) (and b!88481 (= lambda!10886 keyAnn!5)) (and b!88647 (= lambda!10891 keyAnn!5)) (and start!11560 b_free!7511) b_lambda!17647)))

(assert (=> (and b!88477 (= lambda!10885 keyAnn!5) b!88588) d!58823))

(assert (=> (and b!88481 (= lambda!10886 keyAnn!5) b!88588) d!58825))

(assert (=> (and b!88663 (= lambda!10893 keyAnn!5) b!88588) d!58827))

(assert (=> (and b!88643 (= lambda!10890 keyAnn!5) b!88588) d!58829))

(assert (=> (and b!88659 (= lambda!10892 keyAnn!5) b!88588) d!58831))

(assert (=> (and d!58773 (= lambda!10894 keyAnn!5) b!88588) d!58833))

(assert (=> (and d!58691 (= lambda!10889 keyAnn!5) b!88588) d!58835))

(assert (=> (and b!88429 (= lambda!10880 keyAnn!5) b!88588) d!58837))

(assert (=> (and b!88647 (= lambda!10891 keyAnn!5) b!88588) d!58839))

(declare-fun b_lambda!17649 () Bool)

(assert (= b_lambda!17607 (or b!88477 b_lambda!17649)))

(assert (=> b!88655 d!58861))

(declare-fun b_lambda!17651 () Bool)

(assert (= b_lambda!17613 (or b!88477 b_lambda!17651)))

(declare-fun bs!41409 () Bool)

(declare-fun d!58863 () Bool)

(assert (= bs!41409 (and d!58863 b!88477)))

(assert (=> bs!41409 (= (dynLambda!1057 lambda!10885 (h!1091 tlAnnSorted!2)) (dynLambda!1056 key!514 (_1!238 (h!1091 tlAnnSorted!2))))))

(declare-fun b_lambda!17741 () Bool)

(assert (=> (not b_lambda!17741) (not bs!41409)))

(assert (=> bs!41409 t!48723))

(declare-fun b_and!60243 () Bool)

(assert (= b_and!60241 (and (=> t!48723 result!47067) b_and!60243)))

(assert (=> bs!41409 m!84840))

(assert (=> b!88656 d!58863))

(declare-fun b_lambda!17653 () Bool)

(assert (= b_lambda!17615 (or (and start!11560 b_free!7509) b_lambda!17653)))

(declare-fun b_lambda!17655 () Bool)

(assert (= b_lambda!17609 (or b!88477 b_lambda!17655)))

(assert (=> b!88655 d!58863))

(declare-fun b_lambda!17657 () Bool)

(assert (= b_lambda!17577 (or (and start!11560 b_free!7509) b_lambda!17657)))

(declare-fun b_lambda!17659 () Bool)

(assert (= b_lambda!17603 (or (and d!58691 (= lambda!10889 keyAnn!5)) (and b!88429 (= lambda!10880 keyAnn!5)) (and d!58773 (= lambda!10894 keyAnn!5)) (and b!88663 (= lambda!10893 keyAnn!5)) (and b!88477 (= lambda!10885 keyAnn!5)) (and b!88659 (= lambda!10892 keyAnn!5)) (and b!88643 (= lambda!10890 keyAnn!5)) (and b!88481 (= lambda!10886 keyAnn!5)) (and b!88647 (= lambda!10891 keyAnn!5)) (and start!11560 b_free!7511) b_lambda!17659)))

(assert (=> (and d!58773 (= lambda!10894 keyAnn!5) b!88638) d!58843))

(assert (=> (and b!88643 (= lambda!10890 keyAnn!5) b!88638) d!58845))

(assert (=> (and b!88659 (= lambda!10892 keyAnn!5) b!88638) d!58847))

(assert (=> (and d!58691 (= lambda!10889 keyAnn!5) b!88638) d!58849))

(assert (=> (and b!88477 (= lambda!10885 keyAnn!5) b!88638) d!58851))

(assert (=> (and b!88429 (= lambda!10880 keyAnn!5) b!88638) d!58853))

(assert (=> (and b!88481 (= lambda!10886 keyAnn!5) b!88638) d!58855))

(assert (=> (and b!88647 (= lambda!10891 keyAnn!5) b!88638) d!58857))

(assert (=> (and b!88663 (= lambda!10893 keyAnn!5) b!88638) d!58859))

(declare-fun b_lambda!17661 () Bool)

(assert (= b_lambda!17591 (or b!88481 b_lambda!17661)))

(assert (=> b!88627 d!58841))

(push 1)

(assert (not b_lambda!17667))

(assert (not b_lambda!17705))

(assert (not b!88660))

(assert (not b_lambda!17709))

(assert (not b!88604))

(assert (not b!88559))

(assert (not b!88631))

(assert (not d!58765))

(assert (not b!88596))

(assert (not b!88685))

(assert (not b!88647))

(assert (not b!88555))

(assert (not b_lambda!17737))

(assert (not b!88598))

(assert (not b_lambda!17647))

(assert (not b_lambda!17629))

(assert (not d!58755))

(assert (not b_lambda!17733))

(assert (not b_lambda!17655))

(assert (not b!88621))

(assert (not b!88677))

(assert (not b!88662))

(assert (not b!88630))

(assert (not b!88612))

(assert (not b!88690))

(assert (not b!88616))

(assert (not b!88640))

(assert (not b!88648))

(assert (not b!88593))

(assert (not b_lambda!17681))

(assert (not b!88561))

(assert (not b_lambda!17641))

(assert (not b!88620))

(assert (not b_lambda!17707))

(assert (not b_lambda!17651))

(assert (not d!58711))

(assert (not b_lambda!17715))

(assert (not b!88614))

(assert (not b!88682))

(assert (not b_lambda!17679))

(assert (not b!88643))

(assert (not b_lambda!17717))

(assert (not b!88679))

(assert (not b!88676))

(assert (not b_lambda!17617))

(assert (not b_lambda!17645))

(assert (not b!88538))

(assert (not b_lambda!17665))

(assert (not b!88626))

(assert (not b!88536))

(assert (not b!88646))

(assert (not b!88583))

(assert (not b_lambda!17627))

(assert (not b_lambda!17569))

(assert (not b!88587))

(assert (not b_lambda!17725))

(assert (not b!88663))

(assert (not d!58719))

(assert (not b_lambda!17657))

(assert (not b_lambda!17637))

(assert (not b_lambda!17659))

(assert (not b_lambda!17697))

(assert (not b_lambda!17675))

(assert (not b_lambda!17687))

(assert (not b_lambda!17653))

(assert (not b!88537))

(assert (not b!88613))

(assert tp_is_empty!377)

(assert (not b!88674))

(assert (not b_lambda!17739))

(assert (not b!88669))

(assert (not b_lambda!17663))

(assert (not b!88673))

(assert (not b!88683))

(assert (not d!58747))

(assert (not b!88554))

(assert (not d!58737))

(assert (not b!88556))

(assert (not b_lambda!17689))

(assert (not b!88622))

(assert (not b_lambda!17619))

(assert (not b_lambda!17625))

(assert (not b!88610))

(assert (not b!88687))

(assert (not b_lambda!17677))

(assert (not b_lambda!17623))

(assert (not b!88678))

(assert (not b_lambda!17735))

(assert (not d!58735))

(assert (not b!88665))

(assert (not d!58773))

(assert (not b!88617))

(assert (not b!88540))

(assert (not d!58721))

(assert (not d!58703))

(assert (not b_lambda!17661))

(assert (not b!88689))

(assert (not b_lambda!17673))

(assert (not b_lambda!17741))

(assert (not b_lambda!17729))

(assert (not b_next!39851))

(assert (not b_lambda!17671))

(assert (not b_lambda!17649))

(assert (not b_lambda!17719))

(assert (not b_lambda!17703))

(assert (not b!88632))

(assert (not b!88619))

(assert (not b!88606))

(assert (not b_lambda!17683))

(assert (not b_lambda!17669))

(assert (not b!88591))

(assert (not d!58779))

(assert (not d!58763))

(assert (not b_lambda!17643))

(assert (not b_lambda!17701))

(assert (not b_next!39831))

(assert (not b!88582))

(assert (not b_lambda!17713))

(assert (not b!88658))

(assert (not b!88661))

(assert (not b_lambda!17723))

(assert (not b!88654))

(assert (not b_lambda!17699))

(assert (not d!58775))

(assert (not b!88675))

(assert (not b_lambda!17693))

(assert (not b!88667))

(assert (not b!88644))

(assert (not d!58745))

(assert (not b!88659))

(assert (not b_lambda!17711))

(assert (not b!88636))

(assert (not b!88608))

(assert (not b!88557))

(assert (not b!88686))

(assert (not b_lambda!17635))

(assert (not b_lambda!17721))

(assert (not b_lambda!17691))

(assert (not d!58743))

(assert (not d!58781))

(assert (not b!88650))

(assert (not b_lambda!17695))

(assert (not b_lambda!17685))

(assert (not b_lambda!17639))

(assert (not d!58759))

(assert (not b!88681))

(assert (not b!88671))

(assert (not b_lambda!17621))

(assert (not b_lambda!17731))

(assert (not b!88642))

(assert (not b_lambda!17631))

(assert (not b!88672))

(assert (not d!58749))

(assert (not b_lambda!17727))

(assert (not b_lambda!17633))

(assert (not b!88649))

(assert b_and!60243)

(assert (not b!88594))

(assert (not b!88542))

(assert (not b!88645))

(assert (not d!58753))

(assert b_and!60159)

(assert (not b!88688))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60243)

(assert b_and!60159)

(assert (not b_next!39851))

(assert (not b_next!39831))

(check-sat)

(pop 1)

