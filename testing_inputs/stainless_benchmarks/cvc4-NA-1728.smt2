; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11890 () Bool)

(assert start!11890)

(declare-datatypes () ((Base!5 (Override!3) (NoOverride!1))))

(declare-fun thiss!10071 () Base!5)

(declare-fun thiss!10070 () Base!5)

(declare-fun x!31670 () Int)

(declare-fun x!31669 () Int)

(assert (=> start!11890 (and (is-Override!3 thiss!10070) (= thiss!10071 thiss!10070) (= x!31670 x!31669) (not (is-Override!3 thiss!10071)))))

(assert (=> start!11890 true))

(push 1)

(check-sat)

(pop 1)

