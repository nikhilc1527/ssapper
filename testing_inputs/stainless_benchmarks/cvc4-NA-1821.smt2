; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12362 () Bool)

(assert start!12362)

(declare-fun i!613 () (_ BitVec 32))

(declare-datatypes () ((array!1709 (array!1710 (arr!594 (Array (_ BitVec 32) (_ BitVec 32))) (size!832 (_ BitVec 32))))))

(declare-fun arr!588 () array!1709)

(declare-fun lo!9 () (_ BitVec 32))

(declare-fun hi!9 () (_ BitVec 32))

(assert (=> start!12362 (and (bvsle lo!9 hi!9) (= i!613 (bvsdiv (bvadd lo!9 hi!9) #b00000000000000000000000000000010)) (or (bvslt i!613 #b00000000000000000000000000000000) (bvsge i!613 (size!832 arr!588))))))

(assert (=> start!12362 true))

(declare-fun array_inv!579 (array!1709) Bool)

(assert (=> start!12362 (array_inv!579 arr!588)))

(declare-fun bs!41900 () Bool)

(assert (= bs!41900 start!12362))

(declare-fun m!87244 () Bool)

(assert (=> bs!41900 m!87244))

(push 1)

(assert (not start!12362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60126 () Bool)

(assert (=> d!60126 (= (array_inv!579 arr!588) (bvsge (size!832 arr!588) #b00000000000000000000000000000000))))

(assert (=> start!12362 d!60126))

(push 1)

(check-sat)

(get-model)

(pop 1)

