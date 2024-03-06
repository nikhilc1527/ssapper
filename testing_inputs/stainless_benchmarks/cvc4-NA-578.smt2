; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4316 () Bool)

(assert start!4316)

(declare-datatypes () ((List!380 (Cons!373 (h!307 Int) (t!4602 List!380)) (Nil!374))))

(declare-fun l!939 () List!380)

(declare-fun thiss!3831 () List!380)

(assert (=> start!4316 (and (not (is-Nil!374 l!939)) (= thiss!3831 l!939) (= thiss!3831 Nil!374))))

(assert (=> start!4316 true))

(push 1)

(check-sat)

(pop 1)

