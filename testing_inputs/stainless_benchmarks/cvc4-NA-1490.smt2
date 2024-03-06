; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10156 () Bool)

(assert start!10156)

(declare-datatypes () ((Unit!1142 (Unit!1143))))

(declare-datatypes () ((tuple2!396 (tuple2!397 (_1!233 Unit!1142) (_2!233 (_ BitVec 32))))))

(declare-fun x$1!1017 () tuple2!396)

(declare-fun dynAssert!0 (Bool) Unit!1142)

(assert (=> start!10156 (= x$1!1017 (tuple2!397 (dynAssert!0 false) #b00000000000000000000000000000000))))

(assert (=> start!10156 true))

(declare-fun bs!37829 () Bool)

(assert (= bs!37829 start!10156))

(declare-fun m!72754 () Bool)

(assert (=> bs!37829 m!72754))

(push 1)

(assert (not start!10156))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54741 () Bool)

(assert (=> d!54741 false))

(assert (=> d!54741 true))

(declare-fun res!35763 () Unit!1142)

(assert (=> d!54741 (= (dynAssert!0 false) res!35763)))

(assert (=> start!10156 d!54741))

(push 1)

(check-sat)

(pop 1)

