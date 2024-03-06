; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11836 () Bool)

(assert start!11836)

(declare-fun b_free!7599 () Bool)

(declare-fun b_next!39967 () Bool)

(assert (=> start!11836 (= b_free!7599 (not b_next!39967))))

(declare-fun tp!17663 () Bool)

(declare-fun b_and!60621 () Bool)

(assert (=> start!11836 (= tp!17663 b_and!60621)))

(declare-fun b_free!7601 () Bool)

(declare-fun b_next!39969 () Bool)

(assert (=> start!11836 (= b_free!7601 (not b_next!39969))))

(declare-fun tp!17662 () Bool)

(declare-fun b_and!60623 () Bool)

(assert (=> start!11836 (= tp!17662 b_and!60623)))

(declare-fun b!90051 () Bool)

(declare-fun b_free!7603 () Bool)

(declare-fun b_next!39971 () Bool)

(assert (=> b!90051 (= b_free!7603 (not b_next!39971))))

(declare-fun tp!17661 () Bool)

(declare-fun b_and!60625 () Bool)

(assert (=> b!90051 (= tp!17661 b_and!60625)))

(declare-fun b!90053 () Bool)

(declare-fun b_free!7605 () Bool)

(declare-fun b_next!39973 () Bool)

(assert (=> b!90053 (= b_free!7605 (not b_next!39973))))

(declare-fun tp!17660 () Bool)

(declare-fun b_and!60627 () Bool)

(assert (=> b!90053 (= tp!17660 b_and!60627)))

(declare-fun b!90050 () Bool)

(declare-fun b_free!7607 () Bool)

(declare-fun b_next!39975 () Bool)

(assert (=> b!90050 (= b_free!7607 (not b_next!39975))))

(declare-fun tp!17664 () Bool)

(declare-fun b_and!60629 () Bool)

(assert (=> b!90050 (= tp!17664 b_and!60629)))

(declare-fun b!90047 () Bool)

(declare-fun e!49144 () Bool)

(declare-fun n!1822 () Int)

(declare-fun n!1825 () Int)

(assert (=> b!90047 (= e!49144 (not (= (- n!1822 1) n!1825)))))

(declare-fun b!90048 () Bool)

(declare-fun res!47148 () Bool)

(assert (=> b!90048 (=> (not res!47148) (not e!49144))))

(declare-datatypes () ((X!30 (X!31 (val!216 Int)))))

(declare-datatypes () ((Stream!20 (Stream!21 (head!1101 X!30) (tail!1096 Int)))))

(declare-fun s1!131 () Stream!20)

(declare-fun s1!128 () Stream!20)

(declare-fun dynLambda!1092 (Int) Stream!20)

(assert (=> b!90048 (= res!47148 (= s1!131 (dynLambda!1092 (tail!1096 s1!128))))))

(declare-fun b!90049 () Bool)

(declare-fun res!47149 () Bool)

(assert (=> b!90049 (=> (not res!47149) (not e!49144))))

(declare-datatypes () ((Z!13 (Z!14 (val!217 Int)))))

(declare-fun head!1092 () Z!13)

(declare-fun f!5015 () Int)

(declare-datatypes () ((Y!7 (Y!8 (val!218 Int)))))

(declare-datatypes () ((Stream!22 (Stream!23 (head!1102 Y!7) (tail!1097 Int)))))

(declare-fun s2!124 () Stream!22)

(declare-fun dynLambda!1093 (Int X!30 Y!7) Z!13)

(assert (=> b!90049 (= res!47149 (= head!1092 (dynLambda!1093 f!5015 (head!1101 s1!128) (head!1102 s2!124))))))

(declare-fun res!47146 () Bool)

(assert (=> start!11836 (=> (not res!47146) (not e!49144))))

(assert (=> start!11836 (= res!47146 (and (>= n!1822 0) (> n!1822 0)))))

(assert (=> start!11836 e!49144))

(assert (=> start!11836 true))

(assert (=> start!11836 tp!17663))

(declare-fun e!49143 () Bool)

(assert (=> start!11836 e!49143))

(declare-fun tp_is_empty!441 () Bool)

(assert (=> start!11836 tp_is_empty!441))

(assert (=> start!11836 tp!17662))

(declare-fun e!49142 () Bool)

(assert (=> start!11836 e!49142))

(declare-fun e!49141 () Bool)

(assert (=> start!11836 e!49141))

(declare-fun tp_is_empty!443 () Bool)

(assert (=> b!90050 (= e!49141 (and tp_is_empty!443 tp!17664))))

(declare-fun tp_is_empty!439 () Bool)

(assert (=> b!90051 (= e!49143 (and tp_is_empty!439 tp!17661))))

(declare-fun b!90052 () Bool)

(declare-fun res!47147 () Bool)

(assert (=> b!90052 (=> (not res!47147) (not e!49144))))

(declare-fun f!5018 () Int)

(assert (=> b!90052 (= res!47147 (and (= n!1825 (- n!1822 1)) (= f!5018 f!5015)))))

(assert (=> b!90053 (= e!49142 (and tp_is_empty!439 tp!17660))))

(assert (= (and start!11836 res!47146) b!90049))

(assert (= (and b!90049 res!47149) b!90052))

(assert (= (and b!90052 res!47147) b!90048))

(assert (= (and b!90048 res!47148) b!90047))

(assert (= start!11836 b!90051))

(assert (= start!11836 b!90053))

(assert (= start!11836 b!90050))

(declare-fun b_lambda!18423 () Bool)

(assert (=> (not b_lambda!18423) (not b!90048)))

(declare-fun tb!46745 () Bool)

(declare-fun t!48923 () Bool)

(assert (=> (and b!90051 (= (tail!1096 s1!131) (tail!1096 s1!128)) t!48923) tb!46745))

(assert (=> b!90048 t!48923))

(declare-fun result!47229 () Bool)

(declare-fun b_and!60631 () Bool)

(assert (= b_and!60625 (and (=> t!48923 result!47229) b_and!60631)))

(declare-fun t!48925 () Bool)

(declare-fun tb!46747 () Bool)

(assert (=> (and b!90053 (= (tail!1096 s1!128) (tail!1096 s1!128)) t!48925) tb!46747))

(assert (=> b!90048 t!48925))

(declare-fun result!47231 () Bool)

(declare-fun b_and!60633 () Bool)

(assert (= b_and!60627 (and (=> t!48925 result!47231) b_and!60633)))

(declare-fun b_lambda!18425 () Bool)

(assert (=> (not b_lambda!18425) (not b!90049)))

(declare-fun tb!46749 () Bool)

(declare-fun t!48927 () Bool)

(assert (=> (and start!11836 (= f!5018 f!5015) t!48927) tb!46749))

(declare-fun result!47233 () Bool)

(assert (=> tb!46749 (= result!47233 tp_is_empty!441)))

(assert (=> b!90049 t!48927))

(declare-fun b_and!60635 () Bool)

(assert (= b_and!60621 (and (=> t!48927 result!47233) b_and!60635)))

(declare-fun t!48929 () Bool)

(declare-fun tb!46751 () Bool)

(assert (=> (and start!11836 (= f!5015 f!5015) t!48929) tb!46751))

(declare-fun result!47237 () Bool)

(assert (= result!47237 result!47233))

(assert (=> b!90049 t!48929))

(declare-fun b_and!60637 () Bool)

(assert (= b_and!60623 (and (=> t!48929 result!47237) b_and!60637)))

(declare-fun m!85952 () Bool)

(assert (=> b!90048 m!85952))

(declare-fun m!85954 () Bool)

(assert (=> b!90049 m!85954))

(push 1)

(assert tp_is_empty!441)

(assert tp_is_empty!439)

(assert (not b_next!39969))

(assert (not b_lambda!18425))

(assert (not b_next!39975))

(assert (not b_lambda!18423))

(assert tp_is_empty!443)

(assert (not tb!46747))

(assert b_and!60637)

(assert (not b_next!39973))

(assert b_and!60629)

(assert b_and!60633)

(assert b_and!60631)

(assert (not b_next!39967))

(assert b_and!60635)

(assert (not tb!46745))

(assert (not b_next!39971))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39969))

(assert (not b_next!39975))

(assert b_and!60637)

(assert (not b_next!39973))

(assert b_and!60629)

(assert b_and!60633)

(assert b_and!60631)

(assert (not b_next!39967))

(assert b_and!60635)

(assert (not b_next!39971))

(check-sat)

(pop 1)

