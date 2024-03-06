; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12366 () Bool)

(assert start!12366)

(declare-fun x!33331 () (_ BitVec 32))

(declare-fun y!2382 () (_ BitVec 32))

(declare-fun lo!15 () (_ BitVec 32))

(declare-fun hi!14 () (_ BitVec 32))

(declare-fun hi!15 () (_ BitVec 32))

(declare-datatypes () ((array!1718 (array!1719 (arr!602 (Array (_ BitVec 32) (_ BitVec 32))) (size!835 (_ BitVec 32))))))

(declare-fun arr!597 () array!1718)

(declare-fun arr!596 () array!1718)

(declare-fun i!616 () (_ BitVec 32))

(declare-fun lo!14 () (_ BitVec 32))

(declare-fun x!33330 () (_ BitVec 32))

(assert (=> start!12366 (and (bvsle #b00000000000000000000000000000000 lo!14) (bvsle lo!14 hi!14) (bvslt hi!14 (size!835 arr!596)) (= i!616 (bvadd lo!14 (bvsdiv (bvsub hi!14 lo!14) #b00000000000000000000000000000010))) (= y!2382 (select (arr!602 arr!596) i!616)) (not (= x!33330 y!2382)) (bvslt x!33330 y!2382) (= arr!597 arr!596) (= x!33331 x!33330) (= lo!15 lo!14) (= hi!15 (bvsub i!616 #b00000000000000000000000000000001)) (or (bvsgt #b00000000000000000000000000000000 lo!15) (bvsgt lo!15 hi!15) (bvsge hi!15 (size!835 arr!597))))))

(assert (=> start!12366 true))

(declare-fun array_inv!582 (array!1718) Bool)

(assert (=> start!12366 (array_inv!582 arr!597)))

(assert (=> start!12366 (array_inv!582 arr!596)))

(declare-fun bs!41902 () Bool)

(assert (= bs!41902 start!12366))

(declare-fun m!87246 () Bool)

(assert (=> bs!41902 m!87246))

(declare-fun m!87248 () Bool)

(assert (=> bs!41902 m!87248))

(declare-fun m!87250 () Bool)

(assert (=> bs!41902 m!87250))

(push 1)

(assert (not start!12366))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60130 () Bool)

(assert (=> d!60130 (= (array_inv!582 arr!597) (bvsge (size!835 arr!597) #b00000000000000000000000000000000))))

(assert (=> start!12366 d!60130))

(declare-fun d!60132 () Bool)

(assert (=> d!60132 (= (array_inv!582 arr!596) (bvsge (size!835 arr!596) #b00000000000000000000000000000000))))

(assert (=> start!12366 d!60132))

(push 1)

(check-sat)

(get-model)

(pop 1)

