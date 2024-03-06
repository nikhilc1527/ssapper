; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12222 () Bool)

(assert start!12222)

(declare-datatypes () ((array!1595 (array!1596 (arr!551 (Array (_ BitVec 32) (_ BitVec 32))) (size!794 (_ BitVec 32))))))

(declare-fun a!1107 () array!1595)

(assert (=> start!12222 (bvsge #b00000000000000000000000000000010 (size!794 a!1107))))

(declare-fun array_inv!541 (array!1595) Bool)

(assert (=> start!12222 (array_inv!541 a!1107)))

(declare-fun bs!41835 () Bool)

(assert (= bs!41835 start!12222))

(declare-fun m!87064 () Bool)

(assert (=> bs!41835 m!87064))

(push 1)

(assert (not start!12222))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60010 () Bool)

(assert (=> d!60010 (= (array_inv!541 a!1107) (bvsge (size!794 a!1107) #b00000000000000000000000000000000))))

(assert (=> start!12222 d!60010))

(push 1)

(check-sat)

(get-model)

(pop 1)

