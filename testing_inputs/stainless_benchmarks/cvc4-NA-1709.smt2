; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11832 () Bool)

(assert start!11832)

(declare-fun b_free!7581 () Bool)

(declare-fun b_next!39949 () Bool)

(assert (=> start!11832 (= b_free!7581 (not b_next!39949))))

(declare-fun tp!17631 () Bool)

(declare-fun b_and!60599 () Bool)

(assert (=> start!11832 (= tp!17631 b_and!60599)))

(declare-fun b_free!7583 () Bool)

(declare-fun b_next!39951 () Bool)

(assert (=> start!11832 (= b_free!7583 (not b_next!39951))))

(declare-fun tp!17634 () Bool)

(declare-fun b_and!60601 () Bool)

(assert (=> start!11832 (= tp!17634 b_and!60601)))

(declare-fun b!90020 () Bool)

(declare-fun b_free!7585 () Bool)

(declare-fun b_next!39953 () Bool)

(assert (=> b!90020 (= b_free!7585 (not b_next!39953))))

(declare-fun tp!17633 () Bool)

(declare-fun b_and!60603 () Bool)

(assert (=> b!90020 (= tp!17633 b_and!60603)))

(declare-fun b!90021 () Bool)

(declare-fun b_free!7587 () Bool)

(declare-fun b_next!39955 () Bool)

(assert (=> b!90021 (= b_free!7587 (not b_next!39955))))

(declare-fun tp!17632 () Bool)

(declare-fun b_and!60605 () Bool)

(assert (=> b!90021 (= tp!17632 b_and!60605)))

(declare-fun e!49122 () Bool)

(declare-fun tp_is_empty!431 () Bool)

(assert (=> b!90021 (= e!49122 (and tp_is_empty!431 tp!17632))))

(declare-fun n!1825 () Int)

(declare-fun b!90019 () Bool)

(declare-fun f!5018 () Int)

(declare-fun n!1822 () Int)

(declare-fun f!5015 () Int)

(declare-fun e!49123 () Bool)

(assert (=> b!90019 (= e!49123 (and (= n!1825 (- n!1822 1)) (= f!5018 f!5015) (not (= (- n!1822 1) n!1825))))))

(declare-fun res!47137 () Bool)

(assert (=> start!11832 (=> (not res!47137) (not e!49123))))

(assert (=> start!11832 (= res!47137 (and (>= n!1822 0) (> n!1822 0)))))

(assert (=> start!11832 e!49123))

(assert (=> start!11832 true))

(assert (=> start!11832 tp!17631))

(declare-fun tp_is_empty!427 () Bool)

(assert (=> start!11832 tp_is_empty!427))

(assert (=> start!11832 tp!17634))

(declare-fun e!49121 () Bool)

(assert (=> start!11832 e!49121))

(assert (=> start!11832 e!49122))

(declare-fun tp_is_empty!429 () Bool)

(assert (=> b!90020 (= e!49121 (and tp_is_empty!429 tp!17633))))

(declare-fun b!90018 () Bool)

(declare-fun res!47136 () Bool)

(assert (=> b!90018 (=> (not res!47136) (not e!49123))))

(declare-datatypes () ((Z!11 (Z!12 (val!213 Int)))))

(declare-fun head!1092 () Z!11)

(declare-datatypes () ((X!28 (X!29 (val!214 Int)))))

(declare-datatypes () ((Stream!16 (Stream!17 (head!1099 X!28) (tail!1094 Int)))))

(declare-fun s1!128 () Stream!16)

(declare-datatypes () ((Y!5 (Y!6 (val!215 Int)))))

(declare-datatypes () ((Stream!18 (Stream!19 (head!1100 Y!5) (tail!1095 Int)))))

(declare-fun s2!124 () Stream!18)

(declare-fun dynLambda!1091 (Int X!28 Y!5) Z!11)

(assert (=> b!90018 (= res!47136 (= head!1092 (dynLambda!1091 f!5015 (head!1099 s1!128) (head!1100 s2!124))))))

(assert (= (and start!11832 res!47137) b!90018))

(assert (= (and b!90018 res!47136) b!90019))

(assert (= start!11832 b!90020))

(assert (= start!11832 b!90021))

(declare-fun b_lambda!18421 () Bool)

(assert (=> (not b_lambda!18421) (not b!90018)))

(declare-fun tb!46741 () Bool)

(declare-fun t!48919 () Bool)

(assert (=> (and start!11832 (= f!5018 f!5015) t!48919) tb!46741))

(declare-fun result!47223 () Bool)

(assert (=> tb!46741 (= result!47223 tp_is_empty!427)))

(assert (=> b!90018 t!48919))

(declare-fun b_and!60607 () Bool)

(assert (= b_and!60599 (and (=> t!48919 result!47223) b_and!60607)))

(declare-fun t!48921 () Bool)

(declare-fun tb!46743 () Bool)

(assert (=> (and start!11832 (= f!5015 f!5015) t!48921) tb!46743))

(declare-fun result!47227 () Bool)

(assert (= result!47227 result!47223))

(assert (=> b!90018 t!48921))

(declare-fun b_and!60609 () Bool)

(assert (= b_and!60601 (and (=> t!48921 result!47227) b_and!60609)))

(declare-fun m!85950 () Bool)

(assert (=> b!90018 m!85950))

(push 1)

(assert b_and!60603)

(assert b_and!60607)

(assert (not b_next!39949))

(assert (not b_next!39951))

(assert (not b_lambda!18421))

(assert tp_is_empty!427)

(assert tp_is_empty!431)

(assert (not b_next!39953))

(assert b_and!60605)

(assert b_and!60609)

(assert tp_is_empty!429)

(assert (not b_next!39955))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60603)

(assert b_and!60607)

(assert (not b_next!39949))

(assert (not b_next!39951))

(assert (not b_next!39953))

(assert b_and!60605)

(assert b_and!60609)

(assert (not b_next!39955))

(check-sat)

(pop 1)

