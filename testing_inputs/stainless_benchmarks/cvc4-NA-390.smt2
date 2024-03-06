; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2796 () Bool)

(assert start!2796)

(declare-fun n2!47 () (_ BitVec 3))

(declare-fun n3!14 () (_ BitVec 3))

(declare-fun n1!43 () (_ BitVec 3))

(assert (=> start!2796 (and (bvsge n2!47 #b000) (bvsle n2!47 n3!14) (bvsle n1!43 (bvsub n3!14 n2!47)) (= (bvadd n1!43 n2!47) n3!14) (not (= (bvsub n3!14 n1!43) n2!47)))))

(assert (=> start!2796 true))

(push 1)

(check-sat)

(pop 1)

