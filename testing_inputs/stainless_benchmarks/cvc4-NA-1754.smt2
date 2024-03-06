; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12064 () Bool)

(assert start!12064)

(declare-fun b_free!7649 () Bool)

(declare-fun b_next!40037 () Bool)

(assert (=> start!12064 (= b_free!7649 (not b_next!40037))))

(declare-fun tp!17758 () Bool)

(declare-fun b_and!60725 () Bool)

(assert (=> start!12064 (= tp!17758 b_and!60725)))

(declare-fun b_free!7651 () Bool)

(declare-fun b_next!40039 () Bool)

(assert (=> start!12064 (= b_free!7651 (not b_next!40039))))

(declare-fun tp!17757 () Bool)

(declare-fun b_and!60727 () Bool)

(assert (=> start!12064 (= tp!17757 b_and!60727)))

(declare-fun res!47534 () Bool)

(declare-fun e!49511 () Bool)

(assert (=> start!12064 (=> (not res!47534) (not e!49511))))

(declare-datatypes () ((T!6430 (T!6431 (val!225 Int)))))

(declare-datatypes () ((Tree!132 (Leaf!583 (value!7650 T!6430)) (Node!174 (left!1767 Tree!132) (right!1773 Tree!132)))))

(declare-fun tree!144 () Tree!132)

(assert (=> start!12064 (= res!47534 (not (is-Node!174 tree!144)))))

(assert (=> start!12064 e!49511))

(declare-fun e!49510 () Bool)

(assert (=> start!12064 e!49510))

(assert (=> start!12064 tp!17758))

(assert (=> start!12064 tp!17757))

(declare-fun g!153 () Int)

(declare-fun f!5097 () Int)

(declare-fun b!90690 () Bool)

(declare-fun associative_lemma!9 (Tree!132 Int Int) Bool)

(assert (=> b!90690 (= e!49511 (not (associative_lemma!9 tree!144 f!5097 g!153)))))

(declare-fun b!90691 () Bool)

(declare-fun tp_is_empty!457 () Bool)

(assert (=> b!90691 (= e!49510 tp_is_empty!457)))

(declare-fun b!90692 () Bool)

(declare-fun tp!17755 () Bool)

(declare-fun tp!17756 () Bool)

(assert (=> b!90692 (= e!49510 (and tp!17755 tp!17756))))

(assert (= (and start!12064 res!47534) b!90690))

(assert (= (and start!12064 (is-Leaf!583 tree!144)) b!90691))

(assert (= (and start!12064 (is-Node!174 tree!144)) b!90692))

(declare-fun m!86480 () Bool)

(assert (=> b!90690 m!86480))

(push 1)

(assert tp_is_empty!457)

(assert (not b_next!40037))

(assert (not b!90692))

(assert (not b_next!40039))

(assert (not b!90690))

(assert b_and!60725)

(assert b_and!60727)

(check-sat)

(pop 1)

(push 1)

(assert b_and!60725)

(assert b_and!60727)

(assert (not b_next!40037))

(assert (not b_next!40039))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59679 () Bool)

(assert (=> d!59679 true))

(declare-fun lambda!11119 () Int)

(declare-fun order!523 () Int)

(declare-fun order!521 () Int)

(declare-fun dynLambda!1109 (Int Int) Int)

(declare-fun dynLambda!1110 (Int Int) Int)

(assert (=> d!59679 (< (dynLambda!1109 order!521 f!5097) (dynLambda!1110 order!523 lambda!11119))))

(assert (=> d!59679 true))

(declare-fun order!525 () Int)

(declare-fun dynLambda!1111 (Int Int) Int)

(assert (=> d!59679 (< (dynLambda!1111 order!525 g!153) (dynLambda!1110 order!523 lambda!11119))))

(declare-datatypes () ((U!64 (U!65 (val!226 Int)))))

(declare-datatypes () ((Tree!133 (Leaf!584 (value!7651 U!64)) (Node!175 (left!1770 Tree!133) (right!1776 Tree!133)))))

(declare-datatypes () ((V!608 (V!609 (val!227 Int)))))

(declare-datatypes () ((Tree!134 (Leaf!585 (value!7652 V!608)) (Node!176 (left!1771 Tree!134) (right!1777 Tree!134)))))

(declare-fun map!566 (Tree!133 Int) Tree!134)

(declare-fun map!567 (Tree!132 Int) Tree!133)

(declare-fun map!568 (Tree!132 Int) Tree!134)

(assert (=> d!59679 (= (associative_lemma!9 tree!144 f!5097 g!153) (= (map!566 (map!567 tree!144 f!5097) g!153) (map!568 tree!144 lambda!11119)))))

(declare-fun bs!41667 () Bool)

(assert (= bs!41667 d!59679))

(declare-fun m!86482 () Bool)

(assert (=> bs!41667 m!86482))

(assert (=> bs!41667 m!86482))

(declare-fun m!86484 () Bool)

(assert (=> bs!41667 m!86484))

(declare-fun m!86486 () Bool)

(assert (=> bs!41667 m!86486))

(assert (=> b!90690 d!59679))

(declare-fun b!90703 () Bool)

(declare-fun e!49514 () Bool)

(assert (=> b!90703 (= e!49514 tp_is_empty!457)))

(declare-fun b!90704 () Bool)

(declare-fun tp!17763 () Bool)

(declare-fun tp!17764 () Bool)

(assert (=> b!90704 (= e!49514 (and tp!17763 tp!17764))))

(assert (=> b!90692 (= tp!17755 e!49514)))

(assert (= (and b!90692 (is-Leaf!583 (left!1767 tree!144))) b!90703))

(assert (= (and b!90692 (is-Node!174 (left!1767 tree!144))) b!90704))

(declare-fun b!90705 () Bool)

(declare-fun e!49515 () Bool)

(assert (=> b!90705 (= e!49515 tp_is_empty!457)))

(declare-fun b!90706 () Bool)

(declare-fun tp!17765 () Bool)

(declare-fun tp!17766 () Bool)

(assert (=> b!90706 (= e!49515 (and tp!17765 tp!17766))))

(assert (=> b!90692 (= tp!17756 e!49515)))

(assert (= (and b!90692 (is-Leaf!583 (right!1773 tree!144))) b!90705))

(assert (= (and b!90692 (is-Node!174 (right!1773 tree!144))) b!90706))

(push 1)

(assert tp_is_empty!457)

(assert (not b_next!40037))

(assert (not b_next!40039))

(assert (not d!59679))

(assert b_and!60725)

(assert (not b!90704))

(assert b_and!60727)

(assert (not b!90706))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60725)

(assert b_and!60727)

(assert (not b_next!40037))

(assert (not b_next!40039))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59681 () Bool)

(declare-fun c!22154 () Bool)

(assert (=> d!59681 (= c!22154 (is-Node!175 (map!567 tree!144 f!5097)))))

(declare-fun e!49518 () Tree!134)

(assert (=> d!59681 (= (map!566 (map!567 tree!144 f!5097) g!153) e!49518)))

(declare-fun b!90711 () Bool)

(assert (=> b!90711 (= e!49518 (Node!176 (map!566 (left!1770 (map!567 tree!144 f!5097)) g!153) (map!566 (right!1776 (map!567 tree!144 f!5097)) g!153)))))

(declare-fun b!90712 () Bool)

(declare-fun dynLambda!1112 (Int U!64) V!608)

(assert (=> b!90712 (= e!49518 (Leaf!585 (dynLambda!1112 g!153 (value!7651 (map!567 tree!144 f!5097)))))))

(assert (= (and d!59681 c!22154) b!90711))

(assert (= (and d!59681 (not c!22154)) b!90712))

(declare-fun b_lambda!18477 () Bool)

(assert (=> (not b_lambda!18477) (not b!90712)))

(declare-fun t!48995 () Bool)

(declare-fun tb!46789 () Bool)

(assert (=> (and start!12064 (= g!153 g!153) t!48995) tb!46789))

(declare-fun result!47285 () Bool)

(declare-fun tp_is_empty!459 () Bool)

(assert (=> tb!46789 (= result!47285 tp_is_empty!459)))

(assert (=> b!90712 t!48995))

(declare-fun b_and!60729 () Bool)

(assert (= b_and!60727 (and (=> t!48995 result!47285) b_and!60729)))

(declare-fun m!86488 () Bool)

(assert (=> b!90711 m!86488))

(declare-fun m!86490 () Bool)

(assert (=> b!90711 m!86490))

(declare-fun m!86492 () Bool)

(assert (=> b!90712 m!86492))

(assert (=> d!59679 d!59681))

(declare-fun d!59683 () Bool)

(declare-fun c!22157 () Bool)

(assert (=> d!59683 (= c!22157 (is-Node!174 tree!144))))

(declare-fun e!49521 () Tree!133)

(assert (=> d!59683 (= (map!567 tree!144 f!5097) e!49521)))

(declare-fun b!90719 () Bool)

(assert (=> b!90719 (= e!49521 (Node!175 (map!567 (left!1767 tree!144) f!5097) (map!567 (right!1773 tree!144) f!5097)))))

(declare-fun b!90720 () Bool)

(declare-fun dynLambda!1113 (Int T!6430) U!64)

(assert (=> b!90720 (= e!49521 (Leaf!584 (dynLambda!1113 f!5097 (value!7650 tree!144))))))

(assert (= (and d!59683 c!22157) b!90719))

(assert (= (and d!59683 (not c!22157)) b!90720))

(declare-fun b_lambda!18479 () Bool)

(assert (=> (not b_lambda!18479) (not b!90720)))

(declare-fun t!48997 () Bool)

(declare-fun tb!46791 () Bool)

(assert (=> (and start!12064 (= f!5097 f!5097) t!48997) tb!46791))

(declare-fun result!47289 () Bool)

(declare-fun tp_is_empty!461 () Bool)

(assert (=> tb!46791 (= result!47289 tp_is_empty!461)))

(assert (=> b!90720 t!48997))

(declare-fun b_and!60731 () Bool)

(assert (= b_and!60725 (and (=> t!48997 result!47289) b_and!60731)))

(declare-fun m!86494 () Bool)

(assert (=> b!90719 m!86494))

(declare-fun m!86496 () Bool)

(assert (=> b!90719 m!86496))

(declare-fun m!86498 () Bool)

(assert (=> b!90720 m!86498))

(assert (=> d!59679 d!59683))

(declare-fun d!59685 () Bool)

(declare-fun c!22160 () Bool)

(assert (=> d!59685 (= c!22160 (is-Node!174 tree!144))))

(declare-fun e!49524 () Tree!134)

(assert (=> d!59685 (= (map!568 tree!144 lambda!11119) e!49524)))

(declare-fun b!90727 () Bool)

(assert (=> b!90727 (= e!49524 (Node!176 (map!568 (left!1767 tree!144) lambda!11119) (map!568 (right!1773 tree!144) lambda!11119)))))

(declare-fun b!90728 () Bool)

(declare-fun dynLambda!1114 (Int T!6430) V!608)

(assert (=> b!90728 (= e!49524 (Leaf!585 (dynLambda!1114 lambda!11119 (value!7650 tree!144))))))

(assert (= (and d!59685 c!22160) b!90727))

(assert (= (and d!59685 (not c!22160)) b!90728))

(declare-fun b_lambda!18481 () Bool)

(assert (=> (not b_lambda!18481) (not b!90728)))

(declare-fun m!86500 () Bool)

(assert (=> b!90727 m!86500))

(declare-fun m!86502 () Bool)

(assert (=> b!90727 m!86502))

(declare-fun m!86504 () Bool)

(assert (=> b!90728 m!86504))

(assert (=> d!59679 d!59685))

(declare-fun b!90729 () Bool)

(declare-fun e!49525 () Bool)

(assert (=> b!90729 (= e!49525 tp_is_empty!457)))

(declare-fun b!90730 () Bool)

(declare-fun tp!17767 () Bool)

(declare-fun tp!17768 () Bool)

(assert (=> b!90730 (= e!49525 (and tp!17767 tp!17768))))

(assert (=> b!90706 (= tp!17765 e!49525)))

(assert (= (and b!90706 (is-Leaf!583 (left!1767 (right!1773 tree!144)))) b!90729))

(assert (= (and b!90706 (is-Node!174 (left!1767 (right!1773 tree!144)))) b!90730))

(declare-fun b!90731 () Bool)

(declare-fun e!49526 () Bool)

(assert (=> b!90731 (= e!49526 tp_is_empty!457)))

(declare-fun b!90732 () Bool)

(declare-fun tp!17769 () Bool)

(declare-fun tp!17770 () Bool)

(assert (=> b!90732 (= e!49526 (and tp!17769 tp!17770))))

(assert (=> b!90706 (= tp!17766 e!49526)))

(assert (= (and b!90706 (is-Leaf!583 (right!1773 (right!1773 tree!144)))) b!90731))

(assert (= (and b!90706 (is-Node!174 (right!1773 (right!1773 tree!144)))) b!90732))

(declare-fun b!90733 () Bool)

(declare-fun e!49527 () Bool)

(assert (=> b!90733 (= e!49527 tp_is_empty!457)))

(declare-fun b!90734 () Bool)

(declare-fun tp!17771 () Bool)

(declare-fun tp!17772 () Bool)

(assert (=> b!90734 (= e!49527 (and tp!17771 tp!17772))))

(assert (=> b!90704 (= tp!17763 e!49527)))

(assert (= (and b!90704 (is-Leaf!583 (left!1767 (left!1767 tree!144)))) b!90733))

(assert (= (and b!90704 (is-Node!174 (left!1767 (left!1767 tree!144)))) b!90734))

(declare-fun b!90735 () Bool)

(declare-fun e!49528 () Bool)

(assert (=> b!90735 (= e!49528 tp_is_empty!457)))

(declare-fun b!90736 () Bool)

(declare-fun tp!17773 () Bool)

(declare-fun tp!17774 () Bool)

(assert (=> b!90736 (= e!49528 (and tp!17773 tp!17774))))

(assert (=> b!90704 (= tp!17764 e!49528)))

(assert (= (and b!90704 (is-Leaf!583 (right!1773 (left!1767 tree!144)))) b!90735))

(assert (= (and b!90704 (is-Node!174 (right!1773 (left!1767 tree!144)))) b!90736))

(declare-fun b_lambda!18483 () Bool)

(assert (= b_lambda!18481 (or d!59679 b_lambda!18483)))

(declare-fun bs!41668 () Bool)

(declare-fun d!59687 () Bool)

(assert (= bs!41668 (and d!59687 d!59679)))

(assert (=> bs!41668 (= (dynLambda!1114 lambda!11119 (value!7650 tree!144)) (dynLambda!1112 g!153 (dynLambda!1113 f!5097 (value!7650 tree!144))))))

(declare-fun b_lambda!18489 () Bool)

(assert (=> (not b_lambda!18489) (not bs!41668)))

(declare-fun t!48999 () Bool)

(declare-fun tb!46793 () Bool)

(assert (=> (and start!12064 (= g!153 g!153) t!48999) tb!46793))

(declare-fun result!47293 () Bool)

(assert (=> tb!46793 (= result!47293 tp_is_empty!459)))

(assert (=> bs!41668 t!48999))

(declare-fun b_and!60733 () Bool)

(assert (= b_and!60729 (and (=> t!48999 result!47293) b_and!60733)))

(declare-fun b_lambda!18491 () Bool)

(assert (=> (not b_lambda!18491) (not bs!41668)))

(assert (=> bs!41668 t!48997))

(declare-fun b_and!60735 () Bool)

(assert (= b_and!60731 (and (=> t!48997 result!47289) b_and!60735)))

(assert (=> bs!41668 m!86498))

(assert (=> bs!41668 m!86498))

(declare-fun m!86506 () Bool)

(assert (=> bs!41668 m!86506))

(assert (=> b!90728 d!59687))

(declare-fun b_lambda!18485 () Bool)

(assert (= b_lambda!18479 (or (and start!12064 b_free!7649) b_lambda!18485)))

(declare-fun b_lambda!18487 () Bool)

(assert (= b_lambda!18477 (or (and start!12064 b_free!7651) b_lambda!18487)))

(push 1)

(assert (not b!90736))

(assert (not b_lambda!18491))

(assert tp_is_empty!457)

(assert (not b_next!40037))

(assert tp_is_empty!461)

(assert (not b!90719))

(assert (not b!90732))

(assert b_and!60733)

(assert (not b!90734))

(assert (not b_next!40039))

(assert (not b_lambda!18485))

(assert (not b_lambda!18487))

(assert tp_is_empty!459)

(assert b_and!60735)

(assert (not b_lambda!18483))

(assert (not b!90711))

(assert (not b!90727))

(assert (not b_lambda!18489))

(assert (not b!90730))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60735)

(assert b_and!60733)

(assert (not b_next!40037))

(assert (not b_next!40039))

(check-sat)

(pop 1)

