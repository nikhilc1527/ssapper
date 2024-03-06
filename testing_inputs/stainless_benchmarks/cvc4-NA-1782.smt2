; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12174 () Bool)

(assert start!12174)

(declare-fun b!90955 () Bool)

(declare-fun b_free!7679 () Bool)

(declare-fun b_next!40067 () Bool)

(assert (=> b!90955 (= b_free!7679 (not b_next!40067))))

(declare-fun tp!17929 () Bool)

(declare-fun b_and!60797 () Bool)

(assert (=> b!90955 (= tp!17929 b_and!60797)))

(declare-fun b_free!7681 () Bool)

(declare-fun b_next!40069 () Bool)

(assert (=> b!90955 (= b_free!7681 (not b_next!40069))))

(declare-fun tp!17928 () Bool)

(declare-fun b_and!60799 () Bool)

(assert (=> b!90955 (= tp!17928 b_and!60799)))

(declare-fun b_free!7683 () Bool)

(declare-fun b_next!40071 () Bool)

(assert (=> b!90955 (= b_free!7683 (not b_next!40071))))

(declare-fun tp!17930 () Bool)

(declare-fun b_and!60801 () Bool)

(assert (=> b!90955 (= tp!17930 b_and!60801)))

(declare-fun b!90951 () Bool)

(declare-fun e!49701 () Bool)

(assert (=> b!90951 (= e!49701 false)))

(declare-fun b!90952 () Bool)

(declare-fun res!47726 () Bool)

(assert (=> b!90952 (=> (not res!47726) (not e!49701))))

(declare-datatypes () ((B!690 (B!691 (val!233 Int)))))

(declare-datatypes () ((List!771 (Cons!720 (h!1146 B!690) (t!49058 List!771)) (Nil!722))))

(declare-fun res!47667 () List!771)

(declare-fun x!803 () B!690)

(declare-fun contains!67 (List!771 B!690) Bool)

(assert (=> b!90952 (= res!47726 (contains!67 res!47667 x!803))))

(declare-fun res!47725 () Bool)

(assert (=> start!12174 (=> (not res!47725) (not e!49701))))

(assert (=> start!12174 (= res!47725 true)))

(assert (=> start!12174 true))

(assert (=> start!12174 e!49701))

(declare-fun e!49698 () Bool)

(assert (=> start!12174 e!49698))

(declare-fun e!49699 () Bool)

(assert (=> start!12174 e!49699))

(declare-fun e!49700 () Bool)

(assert (=> start!12174 e!49700))

(declare-fun tp_is_empty!473 () Bool)

(assert (=> start!12174 tp_is_empty!473))

(declare-fun b!90953 () Bool)

(declare-fun tp!17931 () Bool)

(assert (=> b!90953 (= e!49700 (and tp_is_empty!473 tp!17931))))

(declare-fun b!90954 () Bool)

(declare-fun res!47724 () Bool)

(assert (=> b!90954 (=> (not res!47724) (not e!49701))))

(declare-datatypes () ((A!3915 (A!3916 (val!234 Int)))))

(declare-datatypes () ((List!772 (Cons!721 (h!1147 A!3915) (t!49059 List!772)) (Nil!723))))

(declare-fun l!1713 () List!772)

(declare-datatypes () ((~>>!23 (~>>!24 (pre!33 Int) (f!5187 Int) (post!21 Int)))))

(declare-fun f!5180 () ~>>!23)

(declare-fun apply!56 (~>>!23 A!3915) B!690)

(declare-fun map!591 (List!772 ~>>!23) List!771)

(assert (=> b!90954 (= res!47724 (= res!47667 (Cons!720 (apply!56 f!5180 (h!1147 l!1713)) (map!591 (t!49059 l!1713) f!5180))))))

(assert (=> b!90955 (= e!49699 (and tp!17929 tp!17928 tp!17930))))

(declare-fun b!90956 () Bool)

(declare-fun res!47727 () Bool)

(assert (=> b!90956 (=> (not res!47727) (not e!49701))))

(assert (=> b!90956 (= res!47727 (is-Cons!721 l!1713))))

(declare-fun b!90957 () Bool)

(declare-fun tp_is_empty!471 () Bool)

(declare-fun tp!17927 () Bool)

(assert (=> b!90957 (= e!49698 (and tp_is_empty!471 tp!17927))))

(assert (= (and start!12174 res!47725) b!90956))

(assert (= (and b!90956 res!47727) b!90954))

(assert (= (and b!90954 res!47724) b!90952))

(assert (= (and b!90952 res!47726) b!90951))

(assert (= (and start!12174 (is-Cons!721 l!1713)) b!90957))

(assert (= start!12174 b!90955))

(assert (= (and start!12174 (is-Cons!720 res!47667)) b!90953))

(declare-fun m!86758 () Bool)

(assert (=> b!90952 m!86758))

(declare-fun m!86760 () Bool)

(assert (=> b!90954 m!86760))

(declare-fun m!86762 () Bool)

(assert (=> b!90954 m!86762))

(push 1)

(assert tp_is_empty!473)

(assert (not b_next!40067))

(assert (not b!90952))

(assert tp_is_empty!471)

(assert (not b!90954))

(assert (not b!90957))

(assert (not b_next!40069))

(assert b_and!60801)

(assert (not b_next!40071))

(assert b_and!60797)

(assert b_and!60799)

(assert (not b!90953))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!40067))

(assert (not b_next!40069))

(assert b_and!60801)

(assert (not b_next!40071))

(assert b_and!60797)

(assert b_and!60799)

(check-sat)

(pop 1)

