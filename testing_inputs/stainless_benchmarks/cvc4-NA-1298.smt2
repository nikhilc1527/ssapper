; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9170 () Bool)

(assert start!9170)

(declare-datatypes () ((tuple2!348 (tuple2!349 (_1!206 (_ BitVec 32)) (_2!206 (_ BitVec 32))))))

(declare-datatypes () ((A!2903 (C!77 (a!701 A!2903)) (B!550 (t!47404 tuple2!348)))))

(declare-datatypes () ((tuple2!350 (tuple2!351 (_1!207 A!2903) (_2!207 (_ BitVec 32))))))

(declare-datatypes () ((tuple3!34 (tuple3!35 (_1!208 (_ BitVec 32)) (_2!208 tuple2!350) (_3!32 (_ BitVec 32))))))

(declare-fun t!47402 () tuple3!34)

(declare-fun x$1!872 () (_ BitVec 32))

(assert (=> start!9170 (and (= t!47402 (tuple3!35 #b00000000000000000000000000000001 (tuple2!351 (C!77 (B!550 (tuple2!349 #b00000000000000000000000000000100 #b00000000000000000000000000000101))) #b00000000000000000000000000000010) #b00000000000000000000000000000011)) (is-B!550 (_1!207 (_2!208 t!47402))) (= x$1!872 (_1!206 (t!47404 (_1!207 (_2!208 t!47402))))) (not (= x$1!872 #b00000000000000000000000000000101)))))

(assert (=> start!9170 true))

(push 1)

(check-sat)

(pop 1)

