; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13512 () Bool)

(assert start!13512)

(declare-datatypes () ((P!19 (Charlie!19) (Alice!19) (Bob!19))))

(declare-datatypes () ((S!57 (S!58 (who!781 P!19) (amount!781 Int)))))

(declare-fun x$3!32 () S!57)

(assert (=> start!13512 (< (amount!781 x$3!32) 0)))

(assert (=> start!13512 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

