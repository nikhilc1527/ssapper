; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15576 () Bool)

(assert start!15576)

(declare-datatypes () ((List!913 (Cons!847 (h!7818 Int) (t!56158 List!913)) (Nil!849))))

(declare-fun thiss!14333 () List!913)

(declare-fun t!56153 () List!913)

(assert (=> start!15576 (and (= thiss!14333 t!56153) (= thiss!14333 Nil!849))))

(assert (=> start!15576 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

