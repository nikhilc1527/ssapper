; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12374 () Bool)

(assert start!12374)

(declare-fun lo!22 () (_ BitVec 32))

(declare-fun y!2385 () (_ BitVec 32))

(declare-fun i!619 () (_ BitVec 32))

(declare-datatypes () ((array!1730 (array!1731 (arr!611 (Array (_ BitVec 32) (_ BitVec 32))) (size!839 (_ BitVec 32))))))

(declare-fun arr!607 () array!1730)

(declare-fun arr!604 () array!1730)

(declare-fun hi!22 () (_ BitVec 32))

(declare-fun x!33351 () (_ BitVec 32))

(declare-fun hi!19 () (_ BitVec 32))

(declare-fun lo!19 () (_ BitVec 32))

(declare-fun x!33354 () (_ BitVec 32))

(assert (=> start!12374 (and (bvsle #b00000000000000000000000000000000 lo!19) (bvsle lo!19 (bvadd hi!19 #b00000000000000000000000000000001)) (bvslt hi!19 (size!839 arr!604)) (bvsle lo!19 hi!19) (= i!619 (bvsdiv (bvadd lo!19 hi!19) #b00000000000000000000000000000010)) (= y!2385 (select (arr!611 arr!604) i!619)) (not (= x!33351 y!2385)) (bvsge x!33351 y!2385) (= arr!607 arr!604) (= x!33354 x!33351) (= lo!22 (bvadd i!619 #b00000000000000000000000000000001)) (= hi!22 hi!19) (or (bvsgt #b00000000000000000000000000000000 lo!22) (bvsgt lo!22 (bvadd hi!22 #b00000000000000000000000000000001)) (bvsge hi!22 (size!839 arr!607))))))

(assert (=> start!12374 true))

(declare-fun array_inv!586 (array!1730) Bool)

(assert (=> start!12374 (array_inv!586 arr!607)))

(assert (=> start!12374 (array_inv!586 arr!604)))

(declare-fun bs!41906 () Bool)

(assert (= bs!41906 start!12374))

(declare-fun m!87258 () Bool)

(assert (=> bs!41906 m!87258))

(declare-fun m!87260 () Bool)

(assert (=> bs!41906 m!87260))

(declare-fun m!87262 () Bool)

(assert (=> bs!41906 m!87262))

(push 1)

(assert (not start!12374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60140 () Bool)

(assert (=> d!60140 (= (array_inv!586 arr!607) (bvsge (size!839 arr!607) #b00000000000000000000000000000000))))

(assert (=> start!12374 d!60140))

(declare-fun d!60142 () Bool)

(assert (=> d!60142 (= (array_inv!586 arr!604) (bvsge (size!839 arr!604) #b00000000000000000000000000000000))))

(assert (=> start!12374 d!60142))

(push 1)

(check-sat)

(get-model)

(pop 1)

