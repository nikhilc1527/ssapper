; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12370 () Bool)

(assert start!12370)

(declare-datatypes () ((array!1727 (array!1728 (arr!610 (Array (_ BitVec 32) (_ BitVec 32))) (size!838 (_ BitVec 32))))))

(declare-fun arr!605 () array!1727)

(declare-fun y!2385 () (_ BitVec 32))

(declare-fun i!619 () (_ BitVec 32))

(declare-fun arr!604 () array!1727)

(declare-fun hi!20 () (_ BitVec 32))

(declare-fun x!33351 () (_ BitVec 32))

(declare-fun hi!19 () (_ BitVec 32))

(declare-fun lo!19 () (_ BitVec 32))

(declare-fun lo!20 () (_ BitVec 32))

(declare-fun x!33352 () (_ BitVec 32))

(assert (=> start!12370 (and (bvsle #b00000000000000000000000000000000 lo!19) (bvsle lo!19 (bvadd hi!19 #b00000000000000000000000000000001)) (bvslt hi!19 (size!838 arr!604)) (bvsle lo!19 hi!19) (= i!619 (bvsdiv (bvadd lo!19 hi!19) #b00000000000000000000000000000010)) (= y!2385 (select (arr!610 arr!604) i!619)) (not (= x!33351 y!2385)) (bvslt x!33351 y!2385) (= arr!605 arr!604) (= x!33352 x!33351) (= lo!20 lo!19) (= hi!20 (bvsub i!619 #b00000000000000000000000000000001)) (or (bvsgt #b00000000000000000000000000000000 lo!20) (bvsgt lo!20 (bvadd hi!20 #b00000000000000000000000000000001)) (bvsge hi!20 (size!838 arr!605))))))

(declare-fun array_inv!585 (array!1727) Bool)

(assert (=> start!12370 (array_inv!585 arr!605)))

(assert (=> start!12370 true))

(assert (=> start!12370 (array_inv!585 arr!604)))

(declare-fun bs!41904 () Bool)

(assert (= bs!41904 start!12370))

(declare-fun m!87252 () Bool)

(assert (=> bs!41904 m!87252))

(declare-fun m!87254 () Bool)

(assert (=> bs!41904 m!87254))

(declare-fun m!87256 () Bool)

(assert (=> bs!41904 m!87256))

(push 1)

(assert (not start!12370))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60136 () Bool)

(assert (=> d!60136 (= (array_inv!585 arr!605) (bvsge (size!838 arr!605) #b00000000000000000000000000000000))))

(assert (=> start!12370 d!60136))

(declare-fun d!60138 () Bool)

(assert (=> d!60138 (= (array_inv!585 arr!604) (bvsge (size!838 arr!604) #b00000000000000000000000000000000))))

(assert (=> start!12370 d!60138))

(push 1)

(check-sat)

(get-model)

(pop 1)

