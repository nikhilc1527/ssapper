; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11588 () Bool)

(assert start!11588)

(declare-fun b_free!7513 () Bool)

(declare-fun b_next!39853 () Bool)

(assert (=> start!11588 (= b_free!7513 (not b_next!39853))))

(declare-fun tp!17317 () Bool)

(declare-fun b_and!60245 () Bool)

(assert (=> start!11588 (= tp!17317 b_and!60245)))

(declare-fun b_free!7515 () Bool)

(declare-fun b_next!39855 () Bool)

(assert (=> start!11588 (= b_free!7515 (not b_next!39855))))

(declare-fun tp!17316 () Bool)

(declare-fun b_and!60247 () Bool)

(assert (=> start!11588 (= tp!17316 b_and!60247)))

(declare-fun b!88704 () Bool)

(assert (=> b!88704 true))

(declare-fun lambda!10897 () Int)

(declare-fun key!514 () Int)

(declare-fun order!501 () Int)

(declare-fun order!503 () Int)

(declare-fun dynLambda!1058 (Int Int) Int)

(declare-fun dynLambda!1059 (Int Int) Int)

(assert (=> b!88704 (< (dynLambda!1058 order!501 key!514) (dynLambda!1059 order!503 lambda!10897))))

(declare-fun b_next!39857 () Bool)

(declare-fun keyAnn!5 () Int)

(assert (=> start!11588 (= b_next!39855 (or (and b!88704 (= lambda!10897 keyAnn!5)) b_next!39857))))

(declare-fun b!88703 () Bool)

(declare-fun res!46428 () Bool)

(declare-fun e!48209 () Bool)

(assert (=> b!88703 (=> (not res!46428) (not e!48209))))

(declare-datatypes () ((T!5999 (T!6000 (val!192 Int)))))

(declare-datatypes () ((tuple2!408 (tuple2!409 (_1!239 T!5999) (_2!239 Int)))))

(declare-datatypes () ((List!735 (Cons!689 (h!1093 tuple2!408) (t!48734 List!735)) (Nil!691))))

(declare-fun lAnn!4 () List!735)

(declare-fun lAnnSorted!4 () List!735)

(declare-fun sort!7 (List!735 Int) List!735)

(assert (=> b!88703 (= res!46428 (= lAnnSorted!4 (sort!7 lAnn!4 keyAnn!5)))))

(declare-fun res!46430 () Bool)

(assert (=> b!88704 (=> (not res!46430) (not e!48209))))

(assert (=> b!88704 (= res!46430 (= keyAnn!5 lambda!10897))))

(declare-fun b!88705 () Bool)

(assert (=> b!88705 (= e!48209 false)))

(declare-fun b!88706 () Bool)

(declare-fun e!48212 () Bool)

(declare-fun tp_is_empty!379 () Bool)

(declare-fun tp!17313 () Bool)

(assert (=> b!88706 (= e!48212 (and tp_is_empty!379 tp!17313))))

(declare-fun b!88707 () Bool)

(declare-fun e!48211 () Bool)

(declare-fun tp!17315 () Bool)

(assert (=> b!88707 (= e!48211 (and tp_is_empty!379 tp!17315))))

(declare-fun b!88708 () Bool)

(declare-fun e!48210 () Bool)

(declare-fun tp!17314 () Bool)

(assert (=> b!88708 (= e!48210 (and tp_is_empty!379 tp!17314))))

(declare-fun res!46429 () Bool)

(assert (=> start!11588 (=> (not res!46429) (not e!48209))))

(declare-datatypes () ((List!736 (Cons!690 (h!1094 T!5999) (t!48735 List!736)) (Nil!692))))

(declare-fun l!1571 () List!736)

(declare-fun n!1722 () Int)

(declare-fun annotateList!6 (List!736 Int) List!735)

(assert (=> start!11588 (= res!46429 (= lAnn!4 (annotateList!6 l!1571 n!1722)))))

(assert (=> start!11588 e!48209))

(assert (=> start!11588 e!48212))

(assert (=> start!11588 tp!17317))

(assert (=> start!11588 e!48210))

(assert (=> start!11588 tp!17316))

(assert (=> start!11588 e!48211))

(assert (=> start!11588 true))

(assert (= (and start!11588 res!46429) b!88704))

(assert (= (and b!88704 res!46430) b!88703))

(assert (= (and b!88703 res!46428) b!88705))

(assert (= (and start!11588 (is-Cons!689 lAnn!4)) b!88706))

(assert (= (and start!11588 (is-Cons!690 l!1571)) b!88708))

(assert (= (and start!11588 (is-Cons!689 lAnnSorted!4)) b!88707))

(declare-fun m!84860 () Bool)

(assert (=> b!88703 m!84860))

(declare-fun m!84862 () Bool)

(assert (=> start!11588 m!84862))

(push 1)

(assert tp_is_empty!379)

(assert (not b!88708))

(assert (not b!88703))

(assert b_and!60245)

(assert (not b!88706))

(assert (not b_next!39857))

(assert b_and!60247)

(assert (not b!88707))

(assert (not b_next!39853))

(assert (not start!11588))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60245)

(assert b_and!60247)

(assert (not b_next!39857))

(assert (not b_next!39853))

(check-sat)

(pop 1)

