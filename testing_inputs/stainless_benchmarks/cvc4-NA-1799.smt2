; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12242 () Bool)

(assert start!12242)

(declare-datatypes () ((array!1640 (array!1641 (arr!566 (Array (_ BitVec 32) (_ BitVec 32))) (size!809 (_ BitVec 32))))))

(declare-fun a!1111 () array!1640)

(declare-fun x$1!1233 () (_ BitVec 32))

(assert (=> start!12242 (and (bvsgt (size!809 a!1111) #b00000000000000000000000000000010) (bvslt #b00000000000000000000000000000010 (size!809 a!1111)) (= x$1!1233 (select (arr!566 a!1111) #b00000000000000000000000000000010)) (not (= x$1!1233 #b00000000000000000000000000000000)))))

(declare-fun array_inv!556 (array!1640) Bool)

(assert (=> start!12242 (array_inv!556 a!1111)))

(assert (=> start!12242 true))

(declare-fun bs!41845 () Bool)

(assert (= bs!41845 start!12242))

(declare-fun m!87076 () Bool)

(assert (=> bs!41845 m!87076))

(declare-fun m!87078 () Bool)

(assert (=> bs!41845 m!87078))

(push 1)

(assert (not start!12242))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60030 () Bool)

(assert (=> d!60030 (= (array_inv!556 a!1111) (bvsge (size!809 a!1111) #b00000000000000000000000000000000))))

(assert (=> start!12242 d!60030))

(push 1)

(check-sat)

(get-model)

(pop 1)

