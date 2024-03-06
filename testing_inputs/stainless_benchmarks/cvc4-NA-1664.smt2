; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11522 () Bool)

(assert start!11522)

(declare-fun b_free!7495 () Bool)

(declare-fun b_next!39803 () Bool)

(assert (=> start!11522 (= b_free!7495 (not b_next!39803))))

(declare-fun tp!17185 () Bool)

(declare-fun b_and!59997 () Bool)

(assert (=> start!11522 (= tp!17185 b_and!59997)))

(declare-fun b_free!7497 () Bool)

(declare-fun b_next!39805 () Bool)

(assert (=> start!11522 (= b_free!7497 (not b_next!39805))))

(declare-fun tp!17190 () Bool)

(declare-fun b_and!59999 () Bool)

(assert (=> start!11522 (= tp!17190 b_and!59999)))

(declare-fun b!88049 () Bool)

(assert (=> b!88049 true))

(declare-fun order!485 () Int)

(declare-fun key!514 () Int)

(declare-fun order!487 () Int)

(declare-fun lambda!10861 () Int)

(declare-fun dynLambda!1045 (Int Int) Int)

(declare-fun dynLambda!1046 (Int Int) Int)

(assert (=> b!88049 (< (dynLambda!1045 order!485 key!514) (dynLambda!1046 order!487 lambda!10861))))

(declare-fun keyAnn!5 () Int)

(declare-fun b_next!39807 () Bool)

(assert (=> start!11522 (= b_next!39805 (or (and b!88049 (= lambda!10861 keyAnn!5)) b_next!39807))))

(declare-fun b!88037 () Bool)

(declare-fun res!46042 () Bool)

(declare-fun e!47798 () Bool)

(assert (=> b!88037 (=> (not res!46042) (not e!47798))))

(declare-datatypes () ((T!5991 (T!5992 (val!188 Int)))))

(declare-datatypes () ((tuple2!400 (tuple2!401 (_1!235 T!5991) (_2!235 Int)))))

(declare-datatypes () ((List!727 (Cons!681 (h!1085 tuple2!400) (t!48650 List!727)) (Nil!683))))

(declare-fun lAnn!4 () List!727)

(declare-fun n!1722 () Int)

(declare-fun l2AtLeast!2 (List!727 Int) Bool)

(assert (=> b!88037 (= res!46042 (l2AtLeast!2 (t!48650 lAnn!4) n!1722))))

(declare-fun b!88038 () Bool)

(declare-fun res!46043 () Bool)

(assert (=> b!88038 (=> (not res!46043) (not e!47798))))

(declare-fun lAnnSorted!4 () List!727)

(declare-fun sort!3 (List!727 Int) List!727)

(assert (=> b!88038 (= res!46043 (= lAnnSorted!4 (sort!3 lAnn!4 keyAnn!5)))))

(declare-fun b!88039 () Bool)

(declare-fun res!46037 () Bool)

(assert (=> b!88039 (=> (not res!46037) (not e!47798))))

(declare-fun tlAnnSorted!2 () List!727)

(assert (=> b!88039 (= res!46037 (l2AtLeast!2 tlAnnSorted!2 (+ n!1722 1)))))

(declare-fun b!88040 () Bool)

(declare-fun e!47800 () Bool)

(declare-fun tp_is_empty!371 () Bool)

(declare-fun tp!17189 () Bool)

(assert (=> b!88040 (= e!47800 (and tp_is_empty!371 tp!17189))))

(declare-fun b!88041 () Bool)

(declare-fun e!47797 () Bool)

(declare-fun tp!17192 () Bool)

(assert (=> b!88041 (= e!47797 (and tp_is_empty!371 tp!17192))))

(declare-fun b!88042 () Bool)

(declare-fun l!1586 () List!727)

(declare-fun n!1731 () Int)

(assert (=> b!88042 (= e!47798 (not (l2AtLeast!2 l!1586 (+ n!1731 1))))))

(declare-fun b!88043 () Bool)

(declare-fun res!46039 () Bool)

(assert (=> b!88043 (=> (not res!46039) (not e!47798))))

(assert (=> b!88043 (= res!46039 (= tlAnnSorted!2 (sort!3 (t!48650 lAnn!4) keyAnn!5)))))

(declare-fun b!88044 () Bool)

(declare-fun res!46036 () Bool)

(assert (=> b!88044 (=> (not res!46036) (not e!47798))))

(declare-datatypes () ((List!728 (Cons!682 (h!1086 T!5991) (t!48651 List!728)) (Nil!684))))

(declare-fun l!1571 () List!728)

(declare-fun xs!1094 () List!728)

(assert (=> b!88044 (= res!46036 (and (not (is-Nil!683 lAnn!4)) (= xs!1094 (t!48651 l!1571))))))

(declare-fun b!88045 () Bool)

(declare-fun e!47801 () Bool)

(declare-fun tp!17188 () Bool)

(assert (=> b!88045 (= e!47801 (and tp_is_empty!371 tp!17188))))

(declare-fun b!88046 () Bool)

(declare-fun e!47802 () Bool)

(declare-fun tp!17191 () Bool)

(assert (=> b!88046 (= e!47802 (and tp_is_empty!371 tp!17191))))

(declare-fun b!88047 () Bool)

(declare-fun res!46040 () Bool)

(assert (=> b!88047 (=> (not res!46040) (not e!47798))))

(assert (=> b!88047 (= res!46040 (= n!1722 (_2!235 (h!1085 lAnn!4))))))

(declare-fun b!88048 () Bool)

(declare-fun e!47803 () Bool)

(declare-fun tp!17187 () Bool)

(assert (=> b!88048 (= e!47803 (and tp_is_empty!371 tp!17187))))

(declare-fun res!46035 () Bool)

(assert (=> start!11522 (=> (not res!46035) (not e!47798))))

(declare-fun annotateList!2 (List!728 Int) List!727)

(assert (=> start!11522 (= res!46035 (= lAnn!4 (annotateList!2 l!1571 n!1722)))))

(assert (=> start!11522 e!47798))

(assert (=> start!11522 e!47803))

(assert (=> start!11522 e!47802))

(assert (=> start!11522 tp!17185))

(assert (=> start!11522 e!47800))

(assert (=> start!11522 e!47797))

(assert (=> start!11522 tp!17190))

(assert (=> start!11522 true))

(declare-fun e!47799 () Bool)

(assert (=> start!11522 e!47799))

(assert (=> start!11522 e!47801))

(declare-fun res!46041 () Bool)

(assert (=> b!88049 (=> (not res!46041) (not e!47798))))

(assert (=> b!88049 (= res!46041 (= keyAnn!5 lambda!10861))))

(declare-fun b!88050 () Bool)

(declare-fun res!46044 () Bool)

(assert (=> b!88050 (=> (not res!46044) (not e!47798))))

(assert (=> b!88050 (= res!46044 (and (= l!1586 tlAnnSorted!2) (= n!1731 n!1722)))))

(declare-fun b!88051 () Bool)

(declare-fun tp!17186 () Bool)

(assert (=> b!88051 (= e!47799 (and tp_is_empty!371 tp!17186))))

(declare-fun b!88052 () Bool)

(declare-fun res!46038 () Bool)

(assert (=> b!88052 (=> (not res!46038) (not e!47798))))

(declare-fun sortStablePropInt!2 (List!728 Int Int) Bool)

(assert (=> b!88052 (= res!46038 (sortStablePropInt!2 xs!1094 (+ n!1722 1) key!514))))

(assert (= (and start!11522 res!46035) b!88049))

(assert (= (and b!88049 res!46041) b!88038))

(assert (= (and b!88038 res!46043) b!88044))

(assert (= (and b!88044 res!46036) b!88043))

(assert (= (and b!88043 res!46039) b!88052))

(assert (= (and b!88052 res!46038) b!88047))

(assert (= (and b!88047 res!46040) b!88037))

(assert (= (and b!88037 res!46042) b!88039))

(assert (= (and b!88039 res!46037) b!88050))

(assert (= (and b!88050 res!46044) b!88042))

(assert (= (and start!11522 (is-Cons!681 lAnn!4)) b!88048))

(assert (= (and start!11522 (is-Cons!681 l!1586)) b!88046))

(assert (= (and start!11522 (is-Cons!682 l!1571)) b!88040))

(assert (= (and start!11522 (is-Cons!681 tlAnnSorted!2)) b!88041))

(assert (= (and start!11522 (is-Cons!681 lAnnSorted!4)) b!88051))

(assert (= (and start!11522 (is-Cons!682 xs!1094)) b!88045))

(declare-fun m!84166 () Bool)

(assert (=> b!88039 m!84166))

(declare-fun m!84168 () Bool)

(assert (=> b!88038 m!84168))

(declare-fun m!84170 () Bool)

(assert (=> b!88037 m!84170))

(declare-fun m!84172 () Bool)

(assert (=> b!88042 m!84172))

(declare-fun m!84174 () Bool)

(assert (=> start!11522 m!84174))

(declare-fun m!84176 () Bool)

(assert (=> b!88052 m!84176))

(declare-fun m!84178 () Bool)

(assert (=> b!88043 m!84178))

(push 1)

(assert tp_is_empty!371)

(assert b_and!59997)

(assert (not b_next!39807))

(assert b_and!59999)

(assert (not b!88039))

(assert (not b!88051))

(assert (not b!88042))

(assert (not b!88046))

(assert (not b!88037))

(assert (not b_next!39803))

(assert (not b!88045))

(assert (not b!88043))

(assert (not b!88038))

(assert (not b!88041))

(assert (not b!88052))

(assert (not b!88048))

(assert (not b!88040))

(assert (not start!11522))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59997)

(assert b_and!59999)

(assert (not b_next!39807))

(assert (not b_next!39803))

(check-sat)

(pop 1)

