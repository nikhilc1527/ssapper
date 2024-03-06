; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13838 () Bool)

(assert start!13838)

(declare-datatypes () ((P!28 (Charlie!28) (Alice!28) (Bob!28))))

(declare-datatypes () ((S!75 (S!76 (who!1171 P!28) (amount!1171 Int)))))

(declare-fun x$2!594 () S!75)

(assert (=> start!13838 (< (amount!1171 x$2!594) 0)))

(assert (=> start!13838 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

