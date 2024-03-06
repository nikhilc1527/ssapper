; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4200 () Bool)

(assert start!4200)

(declare-datatypes () ((T!1867 (T!1868 (val!106 Int)))))

(declare-datatypes () ((Conc!83 (CC!82 (left!727 Conc!83) (right!730 Conc!83)) (Single!82 (x!9014 T!1867)) (Empty!93))))

(declare-fun thiss!3254 () Conc!83)

(declare-fun x$1!412 () Int)

(assert (=> start!4200 (and (is-Empty!93 thiss!3254) (= x$1!412 0) (< x$1!412 0))))

(declare-fun e!17082 () Bool)

(assert (=> start!4200 e!17082))

(assert (=> start!4200 true))

(declare-fun b!33781 () Bool)

(declare-fun tp!6942 () Bool)

(declare-fun tp!6943 () Bool)

(assert (=> b!33781 (= e!17082 (and tp!6942 tp!6943))))

(declare-fun b!33782 () Bool)

(declare-fun tp_is_empty!211 () Bool)

(assert (=> b!33782 (= e!17082 tp_is_empty!211)))

(assert (= (and start!4200 (is-CC!82 thiss!3254)) b!33781))

(assert (= (and start!4200 (is-Single!82 thiss!3254)) b!33782))

(push 1)

(assert (not b!33781))

(assert tp_is_empty!211)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

