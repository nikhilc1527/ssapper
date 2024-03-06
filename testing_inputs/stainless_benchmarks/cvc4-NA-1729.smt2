; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11892 () Bool)

(assert start!11892)

(declare-datatypes () ((Base!6 (Override!4) (NoOverride!2))))

(declare-fun thiss!10068 () Base!6)

(declare-fun x!31667 () Int)

(assert (=> start!11892 (and (= thiss!10068 Override!4) (= x!31667 10) (not (is-Override!4 thiss!10068)))))

(assert (=> start!11892 true))

(push 1)

(check-sat)

(pop 1)

