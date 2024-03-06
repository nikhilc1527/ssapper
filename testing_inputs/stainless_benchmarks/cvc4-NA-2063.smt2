; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13078 () Bool)

(assert start!13078)

(declare-datatypes () ((P!8 (Charlie!8) (Alice!8) (Bob!8))))

(declare-datatypes () ((S!35 (S!36 (who!312 P!8) (amount!312 Int)))))

(declare-fun x$2!55 () S!35)

(assert (=> start!13078 (< (amount!312 x$2!55) 0)))

(assert (=> start!13078 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

