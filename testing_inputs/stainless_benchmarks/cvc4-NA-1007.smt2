; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7474 () Bool)

(assert start!7474)

(declare-datatypes () ((A!1881 (B!488 (i!439 (_ BitVec 32))) (C!55 (i!440 (_ BitVec 32))))))

(declare-fun b!53746 () A!1881)

(declare-fun x$1!779 () (_ BitVec 32))

(assert (=> start!7474 (and (= b!53746 (B!488 #b00000000000000000000000000000010)) (not (is-B!488 b!53746)) (= x$1!779 #b11111111111111111111111111111111) (not (= x$1!779 #b00000000000000000000000000000000)))))

(assert (=> start!7474 true))

(push 1)

(check-sat)

(pop 1)

