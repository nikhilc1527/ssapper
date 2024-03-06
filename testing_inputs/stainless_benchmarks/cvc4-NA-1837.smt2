; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12426 () Bool)

(assert start!12426)

(declare-datatypes () ((A!4295 (AExt!2 (__x!320 Int)) (C!88))))

(declare-fun thiss!10805 () A!4295)

(declare-fun thiss!10806 () A!4295)

(assert (=> start!12426 (and (is-AExt!2 thiss!10805) (= thiss!10806 thiss!10805) (not (is-AExt!2 thiss!10806)))))

(assert (=> start!12426 true))

(push 1)

(check-sat)

(pop 1)

