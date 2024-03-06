; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4318 () Bool)

(assert start!4318)

(declare-fun b_free!2063 () Bool)

(declare-fun b_next!4905 () Bool)

(assert (=> start!4318 (= b_free!2063 (not b_next!4905))))

(declare-fun tp!7126 () Bool)

(declare-fun b_and!7439 () Bool)

(assert (=> start!4318 (= tp!7126 b_and!7439)))

(declare-fun b_free!2065 () Bool)

(declare-fun b_next!4907 () Bool)

(assert (=> start!4318 (= b_free!2065 (not b_next!4907))))

(declare-fun tp!7127 () Bool)

(declare-fun b_and!7441 () Bool)

(assert (=> start!4318 (= tp!7127 b_and!7441)))

(declare-datatypes () ((List!381 (Cons!374 (h!308 Int) (t!4603 List!381)) (Nil!375))))

(declare-fun thiss!3833 () List!381)

(declare-fun p!464 () Int)

(declare-fun l!939 () List!381)

(declare-fun p!466 () Int)

(assert (=> start!4318 (and (not (is-Nil!375 l!939)) (= p!466 p!464) (= thiss!3833 l!939) (= thiss!3833 Nil!375))))

(assert (=> start!4318 true))

(assert (=> start!4318 tp!7126))

(assert (=> start!4318 tp!7127))

(push 1)

(assert b_and!7439)

(assert b_and!7441)

(assert (not b_next!4907))

(assert (not b_next!4905))

(check-sat)

(pop 1)

