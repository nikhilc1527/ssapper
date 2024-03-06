; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2518 () Bool)

(assert start!2518)

(declare-fun b_free!1975 () Bool)

(declare-fun b_next!4641 () Bool)

(assert (=> start!2518 (= b_free!1975 (not b_next!4641))))

(declare-fun tp!3131 () Bool)

(declare-fun b_and!6935 () Bool)

(assert (=> start!2518 (= tp!3131 b_and!6935)))

(declare-fun b!12452 () Bool)

(declare-fun b_free!1977 () Bool)

(declare-fun b_next!4643 () Bool)

(assert (=> b!12452 (= b_free!1977 (not b_next!4643))))

(declare-fun tp!3128 () Bool)

(declare-fun b_and!6937 () Bool)

(assert (=> b!12452 (= tp!3128 b_and!6937)))

(declare-fun b_free!1979 () Bool)

(declare-fun b_next!4645 () Bool)

(assert (=> b!12452 (= b_free!1979 (not b_next!4645))))

(declare-fun tp!3130 () Bool)

(declare-fun b_and!6939 () Bool)

(assert (=> b!12452 (= tp!3130 b_and!6939)))

(declare-fun b_free!1981 () Bool)

(declare-fun b_next!4647 () Bool)

(assert (=> b!12452 (= b_free!1981 (not b_next!4647))))

(declare-fun tp!3133 () Bool)

(declare-fun b_and!6941 () Bool)

(assert (=> b!12452 (= tp!3133 b_and!6941)))

(declare-fun b!12453 () Bool)

(declare-fun b_free!1983 () Bool)

(declare-fun b_next!4649 () Bool)

(assert (=> b!12453 (= b_free!1983 (not b_next!4649))))

(declare-fun tp!3132 () Bool)

(declare-fun b_and!6943 () Bool)

(assert (=> b!12453 (= tp!3132 b_and!6943)))

(declare-fun b_free!1985 () Bool)

(declare-fun b_next!4651 () Bool)

(assert (=> b!12453 (= b_free!1985 (not b_next!4651))))

(declare-fun tp!3129 () Bool)

(declare-fun b_and!6945 () Bool)

(assert (=> b!12453 (= tp!3129 b_and!6945)))

(assert (=> start!2518 false))

(assert (=> start!2518 tp!3131))

(assert (=> start!2518 true))

(declare-datatypes () ((Balance!371 (Balance!372 (extraOpen!226 Int) (extraClose!226 Int)))))

(declare-datatypes () ((EqEvidence!298 (EqEvidence!299 (x!7168 Int) (y!676 Int) (evidence!216 Int)))))

(declare-fun thiss!743 () EqEvidence!298)

(declare-fun e!6832 () Bool)

(declare-fun inv!421 (EqEvidence!298) Bool)

(assert (=> start!2518 (and (inv!421 thiss!743) e!6832)))

(declare-datatypes () ((EqProof!136 (EqProof!137 (x!7169 Int) (y!677 Int)))))

(declare-fun that!199 () EqProof!136)

(declare-fun e!6831 () Bool)

(declare-fun inv!422 (EqProof!136) Bool)

(assert (=> start!2518 (and (inv!422 that!199) e!6831)))

(assert (=> b!12452 (= e!6832 (and tp!3128 tp!3130 tp!3133))))

(assert (=> b!12453 (= e!6831 (and tp!3132 tp!3129))))

(assert (= start!2518 b!12452))

(assert (= start!2518 b!12453))

(declare-fun m!15487 () Bool)

(assert (=> start!2518 m!15487))

(declare-fun m!15489 () Bool)

(assert (=> start!2518 m!15489))

(push 1)

(assert (not b_next!4645))

(assert b_and!6941)

(assert (not b_next!4649))

(assert b_and!6935)

(assert (not b_next!4641))

(assert b_and!6945)

(assert (not b_next!4643))

(assert b_and!6939)

(assert b_and!6943)

(assert b_and!6937)

(assert (not start!2518))

(assert (not b_next!4651))

(assert (not b_next!4647))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4645))

(assert b_and!6941)

(assert (not b_next!4649))

(assert b_and!6935)

(assert (not b_next!4641))

(assert b_and!6945)

(assert (not b_next!4643))

(assert b_and!6939)

(assert b_and!6943)

(assert b_and!6937)

(assert (not b_next!4651))

(assert (not b_next!4647))

(check-sat)

(pop 1)

