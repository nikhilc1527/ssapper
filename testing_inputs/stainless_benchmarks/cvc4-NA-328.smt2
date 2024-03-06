; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2502 () Bool)

(assert start!2502)

(declare-fun b_free!1933 () Bool)

(declare-fun b_next!4569 () Bool)

(assert (=> start!2502 (= b_free!1933 (not b_next!4569))))

(declare-fun tp!3072 () Bool)

(declare-fun b_and!6805 () Bool)

(assert (=> start!2502 (= tp!3072 b_and!6805)))

(declare-fun b!12380 () Bool)

(declare-fun b_free!1935 () Bool)

(declare-fun b_next!4571 () Bool)

(assert (=> b!12380 (= b_free!1935 (not b_next!4571))))

(declare-fun tp!3073 () Bool)

(declare-fun b_and!6807 () Bool)

(assert (=> b!12380 (= tp!3073 b_and!6807)))

(declare-fun b_free!1937 () Bool)

(declare-fun b_next!4573 () Bool)

(assert (=> b!12380 (= b_free!1937 (not b_next!4573))))

(declare-fun tp!3067 () Bool)

(declare-fun b_and!6809 () Bool)

(assert (=> b!12380 (= tp!3067 b_and!6809)))

(declare-fun b_free!1939 () Bool)

(declare-fun b_next!4575 () Bool)

(assert (=> b!12380 (= b_free!1939 (not b_next!4575))))

(declare-fun tp!3068 () Bool)

(declare-fun b_and!6811 () Bool)

(assert (=> b!12380 (= tp!3068 b_and!6811)))

(declare-fun b!12381 () Bool)

(declare-fun b_free!1941 () Bool)

(declare-fun b_next!4577 () Bool)

(assert (=> b!12381 (= b_free!1941 (not b_next!4577))))

(declare-fun tp!3070 () Bool)

(declare-fun b_and!6813 () Bool)

(assert (=> b!12381 (= tp!3070 b_and!6813)))

(declare-fun b_free!1943 () Bool)

(declare-fun b_next!4579 () Bool)

(assert (=> b!12381 (= b_free!1943 (not b_next!4579))))

(declare-fun tp!3071 () Bool)

(declare-fun b_and!6815 () Bool)

(assert (=> b!12381 (= tp!3071 b_and!6815)))

(declare-fun b_free!1945 () Bool)

(declare-fun b_next!4581 () Bool)

(assert (=> b!12381 (= b_free!1945 (not b_next!4581))))

(declare-fun tp!3069 () Bool)

(declare-fun b_and!6817 () Bool)

(assert (=> b!12381 (= tp!3069 b_and!6817)))

(assert (=> start!2502 false))

(assert (=> start!2502 tp!3072))

(assert (=> start!2502 true))

(declare-datatypes () ((Balance!365 (Balance!366 (extraOpen!223 Int) (extraClose!223 Int)))))

(declare-datatypes () ((EqEvidence!292 (EqEvidence!293 (x!7137 Int) (y!673 Int) (evidence!213 Int)))))

(declare-fun thiss!744 () EqEvidence!292)

(declare-fun e!6795 () Bool)

(declare-fun inv!418 (EqEvidence!292) Bool)

(assert (=> start!2502 (and (inv!418 thiss!744) e!6795)))

(declare-fun that!196 () EqEvidence!292)

(declare-fun e!6796 () Bool)

(assert (=> start!2502 (and (inv!418 that!196) e!6796)))

(assert (=> b!12380 (= e!6795 (and tp!3073 tp!3067 tp!3068))))

(assert (=> b!12381 (= e!6796 (and tp!3070 tp!3071 tp!3069))))

(assert (= start!2502 b!12380))

(assert (= start!2502 b!12381))

(declare-fun m!15401 () Bool)

(assert (=> start!2502 m!15401))

(declare-fun m!15403 () Bool)

(assert (=> start!2502 m!15403))

(push 1)

(assert b_and!6805)

(assert (not b_next!4579))

(assert (not b_next!4581))

(assert (not b_next!4575))

(assert (not b_next!4571))

(assert (not start!2502))

(assert b_and!6809)

(assert (not b_next!4569))

(assert (not b_next!4573))

(assert b_and!6815)

(assert b_and!6807)

(assert b_and!6811)

(assert b_and!6813)

(assert (not b_next!4577))

(assert b_and!6817)

(check-sat)

(pop 1)

(push 1)

(assert b_and!6805)

(assert (not b_next!4579))

(assert (not b_next!4581))

(assert (not b_next!4575))

(assert (not b_next!4571))

(assert b_and!6809)

(assert (not b_next!4569))

(assert (not b_next!4573))

(assert b_and!6815)

(assert b_and!6807)

(assert b_and!6811)

(assert b_and!6813)

(assert (not b_next!4577))

(assert b_and!6817)

(check-sat)

(pop 1)

