; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4202 () Bool)

(assert start!4202)

(declare-datatypes () ((T!1869 (T!1870 (val!107 Int)))))

(declare-datatypes () ((Conc!84 (CC!83 (left!728 Conc!84) (right!731 Conc!84)) (Single!83 (x!9015 T!1869)) (Empty!94))))

(declare-fun thiss!3254 () Conc!84)

(declare-fun x$1!413 () Int)

(assert (=> start!4202 (and (not (is-Empty!94 thiss!3254)) (is-Single!83 thiss!3254) (= x$1!413 0) (< x$1!413 0))))

(declare-fun e!17085 () Bool)

(assert (=> start!4202 e!17085))

(assert (=> start!4202 true))

(declare-fun b!33787 () Bool)

(declare-fun tp!6948 () Bool)

(declare-fun tp!6949 () Bool)

(assert (=> b!33787 (= e!17085 (and tp!6948 tp!6949))))

(declare-fun b!33788 () Bool)

(declare-fun tp_is_empty!213 () Bool)

(assert (=> b!33788 (= e!17085 tp_is_empty!213)))

(assert (= (and start!4202 (is-CC!83 thiss!3254)) b!33787))

(assert (= (and start!4202 (is-Single!83 thiss!3254)) b!33788))

(push 1)

(assert (not b!33787))

(assert tp_is_empty!213)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

