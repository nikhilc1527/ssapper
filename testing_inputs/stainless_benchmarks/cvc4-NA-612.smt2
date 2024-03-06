; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4458 () Bool)

(assert start!4458)

(declare-fun b!34845 () Bool)

(declare-fun e!17596 () Bool)

(declare-fun tp_is_empty!237 () Bool)

(assert (=> b!34845 (= e!17596 tp_is_empty!237)))

(declare-fun b!34843 () Bool)

(declare-fun e!17595 () Bool)

(assert (=> b!34843 (= e!17595 tp_is_empty!237)))

(declare-fun b!34846 () Bool)

(assert (=> b!34846 (= e!17596 tp_is_empty!237)))

(declare-datatypes () ((B!435 (B!436 (val!119 Int)))))

(declare-datatypes () ((Foo!36 (Baz!9 (weird!20 B!435)) (Bar!15 (thisIsIt!13 Int) (weird!21 B!435)))))

(declare-fun thiss!4005 () Foo!36)

(declare-fun thiss!4006 () Foo!36)

(assert (=> start!4458 (and (is-Baz!9 thiss!4005) (= thiss!4006 thiss!4005) (not (is-Baz!9 thiss!4006)))))

(assert (=> start!4458 e!17595))

(assert (=> start!4458 e!17596))

(declare-fun b!34844 () Bool)

(assert (=> b!34844 (= e!17595 tp_is_empty!237)))

(assert (= (and start!4458 (is-Baz!9 thiss!4005)) b!34843))

(assert (= (and start!4458 (is-Bar!15 thiss!4005)) b!34844))

(assert (= (and start!4458 (is-Baz!9 thiss!4006)) b!34845))

(assert (= (and start!4458 (is-Bar!15 thiss!4006)) b!34846))

(push 1)

(assert tp_is_empty!237)

(check-sat)

(pop 1)

