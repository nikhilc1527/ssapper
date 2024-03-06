; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4246 () Bool)

(assert start!4246)

(declare-datatypes () ((T!1883 (T!1884 (val!114 Int)))))

(declare-datatypes () ((Conc!91 (CC!90 (left!735 Conc!91) (right!738 Conc!91)) (Single!90 (x!9044 T!1883)) (Empty!101))))

(declare-fun thiss!2754 () Conc!91)

(declare-fun x$2!137 () Int)

(assert (=> start!4246 (and (not (is-Empty!101 thiss!2754)) (is-Single!90 thiss!2754) (= x$2!137 1) (< x$2!137 0))))

(declare-fun e!17275 () Bool)

(assert (=> start!4246 e!17275))

(assert (=> start!4246 true))

(declare-fun b!34158 () Bool)

(declare-fun tp!7075 () Bool)

(declare-fun tp!7076 () Bool)

(assert (=> b!34158 (= e!17275 (and tp!7075 tp!7076))))

(declare-fun b!34159 () Bool)

(declare-fun tp_is_empty!227 () Bool)

(assert (=> b!34159 (= e!17275 tp_is_empty!227)))

(assert (= (and start!4246 (is-CC!90 thiss!2754)) b!34158))

(assert (= (and start!4246 (is-Single!90 thiss!2754)) b!34159))

(push 1)

(assert (not b!34158))

(assert tp_is_empty!227)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

