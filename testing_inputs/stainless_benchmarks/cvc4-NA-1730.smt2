; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11894 () Bool)

(assert start!11894)

(declare-datatypes () ((A!3668 (C!86) (B!631))))

(declare-fun thiss!10095 () A!3668)

(declare-fun thiss!10096 () A!3668)

(assert (=> start!11894 (and (is-C!86 thiss!10095) (= thiss!10096 thiss!10095) (not (is-C!86 thiss!10096)))))

(assert (=> start!11894 true))

(push 1)

(check-sat)

(pop 1)

