; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12378 () Bool)

(assert start!12378)

(declare-fun i!619 () (_ BitVec 32))

(declare-datatypes () ((array!1733 (array!1734 (arr!612 (Array (_ BitVec 32) (_ BitVec 32))) (size!840 (_ BitVec 32))))))

(declare-fun arr!604 () array!1733)

(declare-fun hi!19 () (_ BitVec 32))

(declare-fun lo!19 () (_ BitVec 32))

(assert (=> start!12378 (and (bvsle #b00000000000000000000000000000000 lo!19) (bvsle lo!19 (bvadd hi!19 #b00000000000000000000000000000001)) (bvslt hi!19 (size!840 arr!604)) (bvsle lo!19 hi!19) (= i!619 (bvsdiv (bvadd lo!19 hi!19) #b00000000000000000000000000000010)) (or (bvslt i!619 #b00000000000000000000000000000000) (bvsge i!619 (size!840 arr!604))))))

(assert (=> start!12378 true))

(declare-fun array_inv!587 (array!1733) Bool)

(assert (=> start!12378 (array_inv!587 arr!604)))

(declare-fun bs!41908 () Bool)

(assert (= bs!41908 start!12378))

(declare-fun m!87264 () Bool)

(assert (=> bs!41908 m!87264))

(push 1)

(assert (not start!12378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60144 () Bool)

(assert (=> d!60144 (= (array_inv!587 arr!604) (bvsge (size!840 arr!604) #b00000000000000000000000000000000))))

(assert (=> start!12378 d!60144))

(push 1)

(check-sat)

(get-model)

(pop 1)

