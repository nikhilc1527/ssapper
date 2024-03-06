; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2434 () Bool)

(assert start!2434)

(declare-fun b_free!1821 () Bool)

(declare-fun b_next!4319 () Bool)

(assert (=> start!2434 (= b_free!1821 (not b_next!4319))))

(declare-fun tp!2905 () Bool)

(declare-fun b_and!6341 () Bool)

(assert (=> start!2434 (= tp!2905 b_and!6341)))

(declare-fun b!12112 () Bool)

(declare-fun b_free!1823 () Bool)

(declare-fun b_next!4321 () Bool)

(assert (=> b!12112 (= b_free!1823 (not b_next!4321))))

(declare-fun tp!2899 () Bool)

(declare-fun b_and!6343 () Bool)

(assert (=> b!12112 (= tp!2899 b_and!6343)))

(declare-fun b_free!1825 () Bool)

(declare-fun b_next!4323 () Bool)

(assert (=> b!12112 (= b_free!1825 (not b_next!4323))))

(declare-fun tp!2902 () Bool)

(declare-fun b_and!6345 () Bool)

(assert (=> b!12112 (= tp!2902 b_and!6345)))

(declare-fun b_free!1827 () Bool)

(declare-fun b_next!4325 () Bool)

(assert (=> b!12112 (= b_free!1827 (not b_next!4325))))

(declare-fun tp!2903 () Bool)

(declare-fun b_and!6347 () Bool)

(assert (=> b!12112 (= tp!2903 b_and!6347)))

(declare-fun b!12113 () Bool)

(declare-fun b_free!1829 () Bool)

(declare-fun b_next!4327 () Bool)

(assert (=> b!12113 (= b_free!1829 (not b_next!4327))))

(declare-fun tp!2904 () Bool)

(declare-fun b_and!6349 () Bool)

(assert (=> b!12113 (= tp!2904 b_and!6349)))

(declare-fun b_free!1831 () Bool)

(declare-fun b_next!4329 () Bool)

(assert (=> b!12113 (= b_free!1831 (not b_next!4329))))

(declare-fun tp!2901 () Bool)

(declare-fun b_and!6351 () Bool)

(assert (=> b!12113 (= tp!2901 b_and!6351)))

(declare-fun b_free!1833 () Bool)

(declare-fun b_next!4331 () Bool)

(assert (=> b!12113 (= b_free!1833 (not b_next!4331))))

(declare-fun tp!2900 () Bool)

(declare-fun b_and!6353 () Bool)

(assert (=> b!12113 (= tp!2900 b_and!6353)))

(assert (=> start!2434 false))

(assert (=> start!2434 tp!2905))

(assert (=> start!2434 true))

(declare-datatypes () ((Balance!349 (Balance!350 (extraOpen!215 Int) (extraClose!215 Int)))))

(declare-datatypes () ((EqEvidence!276 (EqEvidence!277 (x!6941 Int) (y!663 Int) (evidence!205 Int)))))

(declare-fun that!184 () EqEvidence!276)

(declare-fun e!6676 () Bool)

(declare-fun inv!408 (EqEvidence!276) Bool)

(assert (=> start!2434 (and (inv!408 that!184) e!6676)))

(declare-fun thiss!746 () EqEvidence!276)

(declare-fun e!6677 () Bool)

(assert (=> start!2434 (and (inv!408 thiss!746) e!6677)))

(assert (=> b!12112 (= e!6676 (and tp!2899 tp!2902 tp!2903))))

(assert (=> b!12113 (= e!6677 (and tp!2904 tp!2901 tp!2900))))

(assert (= start!2434 b!12112))

(assert (= start!2434 b!12113))

(declare-fun m!15053 () Bool)

(assert (=> start!2434 m!15053))

(declare-fun m!15055 () Bool)

(assert (=> start!2434 m!15055))

(push 1)

(assert b_and!6345)

(assert b_and!6353)

(assert (not b_next!4321))

(assert (not b_next!4331))

(assert b_and!6341)

(assert (not b_next!4325))

(assert b_and!6347)

(assert (not b_next!4327))

(assert b_and!6349)

(assert (not start!2434))

(assert (not b_next!4319))

(assert (not b_next!4329))

(assert b_and!6343)

(assert (not b_next!4323))

(assert b_and!6351)

(check-sat)

(pop 1)

(push 1)

(assert b_and!6345)

(assert b_and!6353)

(assert (not b_next!4321))

(assert (not b_next!4331))

(assert b_and!6341)

(assert (not b_next!4325))

(assert b_and!6347)

(assert (not b_next!4327))

(assert b_and!6349)

(assert (not b_next!4319))

(assert (not b_next!4329))

(assert b_and!6343)

(assert (not b_next!4323))

(assert b_and!6351)

(check-sat)

(pop 1)

