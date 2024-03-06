; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12226 () Bool)

(assert start!12226)

(declare-datatypes () ((array!1604 (array!1605 (arr!554 (Array (_ BitVec 32) (_ BitVec 32))) (size!797 (_ BitVec 32))))))

(declare-fun a!1108 () array!1604)

(declare-fun x$1!1230 () (_ BitVec 32))

(assert (=> start!12226 (and (bvsgt (size!797 a!1108) #b00000000000000000000000000000010) (bvslt #b00000000000000000000000000000010 (size!797 a!1108)) (= x$1!1230 (select (arr!554 a!1108) #b00000000000000000000000000000010)) (not (= x$1!1230 #b00000000000000000000000000000000)))))

(declare-fun array_inv!544 (array!1604) Bool)

(assert (=> start!12226 (array_inv!544 a!1108)))

(assert (=> start!12226 true))

(declare-fun bs!41837 () Bool)

(assert (= bs!41837 start!12226))

(declare-fun m!87066 () Bool)

(assert (=> bs!41837 m!87066))

(declare-fun m!87068 () Bool)

(assert (=> bs!41837 m!87068))

(push 1)

(assert (not start!12226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60014 () Bool)

(assert (=> d!60014 (= (array_inv!544 a!1108) (bvsge (size!797 a!1108) #b00000000000000000000000000000000))))

(assert (=> start!12226 d!60014))

(push 1)

(check-sat)

(get-model)

(pop 1)

