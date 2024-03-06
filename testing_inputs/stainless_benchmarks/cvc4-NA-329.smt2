; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2504 () Bool)

(assert start!2504)

(declare-fun b_free!1947 () Bool)

(declare-fun b_next!4583 () Bool)

(assert (=> start!2504 (= b_free!1947 (not b_next!4583))))

(declare-fun tp!3092 () Bool)

(declare-fun b_and!6819 () Bool)

(assert (=> start!2504 (= tp!3092 b_and!6819)))

(declare-fun b!12386 () Bool)

(declare-fun b_free!1949 () Bool)

(declare-fun b_next!4585 () Bool)

(assert (=> b!12386 (= b_free!1949 (not b_next!4585))))

(declare-fun tp!3090 () Bool)

(declare-fun b_and!6821 () Bool)

(assert (=> b!12386 (= tp!3090 b_and!6821)))

(declare-fun b_free!1951 () Bool)

(declare-fun b_next!4587 () Bool)

(assert (=> b!12386 (= b_free!1951 (not b_next!4587))))

(declare-fun tp!3094 () Bool)

(declare-fun b_and!6823 () Bool)

(assert (=> b!12386 (= tp!3094 b_and!6823)))

(declare-fun b_free!1953 () Bool)

(declare-fun b_next!4589 () Bool)

(assert (=> b!12386 (= b_free!1953 (not b_next!4589))))

(declare-fun tp!3089 () Bool)

(declare-fun b_and!6825 () Bool)

(assert (=> b!12386 (= tp!3089 b_and!6825)))

(declare-fun b!12387 () Bool)

(declare-fun b_free!1955 () Bool)

(declare-fun b_next!4591 () Bool)

(assert (=> b!12387 (= b_free!1955 (not b_next!4591))))

(declare-fun tp!3088 () Bool)

(declare-fun b_and!6827 () Bool)

(assert (=> b!12387 (= tp!3088 b_and!6827)))

(declare-fun b_free!1957 () Bool)

(declare-fun b_next!4593 () Bool)

(assert (=> b!12387 (= b_free!1957 (not b_next!4593))))

(declare-fun tp!3091 () Bool)

(declare-fun b_and!6829 () Bool)

(assert (=> b!12387 (= tp!3091 b_and!6829)))

(declare-fun b_free!1959 () Bool)

(declare-fun b_next!4595 () Bool)

(assert (=> b!12387 (= b_free!1959 (not b_next!4595))))

(declare-fun tp!3093 () Bool)

(declare-fun b_and!6831 () Bool)

(assert (=> b!12387 (= tp!3093 b_and!6831)))

(assert (=> start!2504 false))

(assert (=> start!2504 tp!3092))

(assert (=> start!2504 true))

(declare-datatypes () ((Balance!367 (Balance!368 (extraOpen!224 Int) (extraClose!224 Int)))))

(declare-datatypes () ((EqEvidence!294 (EqEvidence!295 (x!7138 Int) (y!674 Int) (evidence!214 Int)))))

(declare-fun thiss!744 () EqEvidence!294)

(declare-fun e!6802 () Bool)

(declare-fun inv!419 (EqEvidence!294) Bool)

(assert (=> start!2504 (and (inv!419 thiss!744) e!6802)))

(declare-fun that!196 () EqEvidence!294)

(declare-fun e!6801 () Bool)

(assert (=> start!2504 (and (inv!419 that!196) e!6801)))

(assert (=> b!12386 (= e!6802 (and tp!3090 tp!3094 tp!3089))))

(assert (=> b!12387 (= e!6801 (and tp!3088 tp!3091 tp!3093))))

(assert (= start!2504 b!12386))

(assert (= start!2504 b!12387))

(declare-fun m!15405 () Bool)

(assert (=> start!2504 m!15405))

(declare-fun m!15407 () Bool)

(assert (=> start!2504 m!15407))

(push 1)

(assert b_and!6831)

(assert b_and!6821)

(assert (not b_next!4591))

(assert (not b_next!4593))

(assert b_and!6819)

(assert (not b_next!4595))

(assert (not b_next!4583))

(assert (not start!2504))

(assert (not b_next!4585))

(assert (not b_next!4589))

(assert b_and!6823)

(assert b_and!6827)

(assert (not b_next!4587))

(assert b_and!6825)

(assert b_and!6829)

(check-sat)

(pop 1)

(push 1)

(assert b_and!6831)

(assert b_and!6821)

(assert (not b_next!4591))

(assert (not b_next!4593))

(assert b_and!6819)

(assert (not b_next!4595))

(assert (not b_next!4583))

(assert (not b_next!4585))

(assert (not b_next!4589))

(assert b_and!6823)

(assert b_and!6827)

(assert (not b_next!4587))

(assert b_and!6825)

(assert b_and!6829)

(check-sat)

(pop 1)

