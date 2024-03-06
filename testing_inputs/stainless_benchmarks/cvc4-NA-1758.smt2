; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12088 () Bool)

(assert start!12088)

(declare-datatypes () ((Bool!6 (True!5) (False!5))))

(declare-fun res!47538 () Bool!6)

(assert (=> start!12088 (and (= res!47538 True!5) (not (= res!47538 True!5)))))

(assert (=> start!12088 true))

(push 1)

(check-sat)

(pop 1)

