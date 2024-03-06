; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12186 () Bool)

(assert start!12186)

(declare-fun b!91044 () Bool)

(declare-fun b_free!7691 () Bool)

(declare-fun b_next!40079 () Bool)

(assert (=> b!91044 (= b_free!7691 (not b_next!40079))))

(declare-fun tp!17966 () Bool)

(declare-fun b_and!60825 () Bool)

(assert (=> b!91044 (= tp!17966 b_and!60825)))

(declare-fun b_free!7693 () Bool)

(declare-fun b_next!40081 () Bool)

(assert (=> b!91044 (= b_free!7693 (not b_next!40081))))

(declare-fun tp!17965 () Bool)

(declare-fun b_and!60827 () Bool)

(assert (=> b!91044 (= tp!17965 b_and!60827)))

(declare-fun b_free!7695 () Bool)

(declare-fun b_next!40083 () Bool)

(assert (=> b!91044 (= b_free!7695 (not b_next!40083))))

(declare-fun tp!17967 () Bool)

(declare-fun b_and!60829 () Bool)

(assert (=> b!91044 (= tp!17967 b_and!60829)))

(declare-fun res!47773 () Bool)

(declare-fun e!49763 () Bool)

(assert (=> start!12186 (=> (not res!47773) (not e!49763))))

(assert (=> start!12186 (= res!47773 true)))

(assert (=> start!12186 true))

(assert (=> start!12186 e!49763))

(declare-fun e!49764 () Bool)

(assert (=> start!12186 e!49764))

(declare-fun e!49762 () Bool)

(assert (=> start!12186 e!49762))

(declare-fun e!49761 () Bool)

(assert (=> start!12186 e!49761))

(declare-fun tp_is_empty!481 () Bool)

(assert (=> start!12186 tp_is_empty!481))

(declare-fun b!91039 () Bool)

(declare-fun res!47774 () Bool)

(assert (=> b!91039 (=> (not res!47774) (not e!49763))))

(declare-datatypes () ((B!694 (B!695 (val!237 Int)))))

(declare-datatypes () ((List!775 (Cons!724 (h!1150 B!694) (t!49070 List!775)) (Nil!726))))

(declare-fun res!47670 () List!775)

(declare-fun x!803 () B!694)

(declare-fun contains!70 (List!775 B!694) Bool)

(assert (=> b!91039 (= res!47774 (contains!70 res!47670 x!803))))

(declare-fun b!91040 () Bool)

(declare-fun tp!17964 () Bool)

(assert (=> b!91040 (= e!49761 (and tp_is_empty!481 tp!17964))))

(declare-fun b!91041 () Bool)

(declare-fun tp_is_empty!479 () Bool)

(declare-fun tp!17963 () Bool)

(assert (=> b!91041 (= e!49764 (and tp_is_empty!479 tp!17963))))

(declare-fun b!91042 () Bool)

(assert (=> b!91042 (= e!49763 false)))

(declare-fun b!91043 () Bool)

(declare-fun res!47772 () Bool)

(assert (=> b!91043 (=> (not res!47772) (not e!49763))))

(declare-datatypes () ((A!3919 (A!3920 (val!238 Int)))))

(declare-datatypes () ((List!776 (Cons!725 (h!1151 A!3919) (t!49071 List!776)) (Nil!727))))

(declare-fun l!1713 () List!776)

(assert (=> b!91043 (= res!47772 (and (not (is-Cons!725 l!1713)) (= res!47670 Nil!726)))))

(assert (=> b!91044 (= e!49762 (and tp!17966 tp!17965 tp!17967))))

(assert (= (and start!12186 res!47773) b!91043))

(assert (= (and b!91043 res!47772) b!91039))

(assert (= (and b!91039 res!47774) b!91042))

(assert (= (and start!12186 (is-Cons!725 l!1713)) b!91041))

(assert (= start!12186 b!91044))

(assert (= (and start!12186 (is-Cons!724 res!47670)) b!91040))

(declare-fun m!86814 () Bool)

(assert (=> b!91039 m!86814))

(push 1)

(assert b_and!60827)

(assert (not b_next!40083))

(assert b_and!60825)

(assert (not b_next!40081))

(assert (not b!91040))

(assert tp_is_empty!481)

(assert (not b_next!40079))

(assert (not b!91041))

(assert tp_is_empty!479)

(assert (not b!91039))

(assert b_and!60829)

(check-sat)

(pop 1)

(push 1)

(assert b_and!60827)

(assert (not b_next!40083))

(assert b_and!60825)

(assert (not b_next!40081))

(assert (not b_next!40079))

(assert b_and!60829)

(check-sat)

(pop 1)

