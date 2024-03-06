; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2682 () Bool)

(assert start!2682)

(declare-datatypes () ((array!299 (array!300 (arr!117 (Array (_ BitVec 32) (_ BitVec 32))) (size!139 (_ BitVec 32))))))

(declare-fun arr!113 () array!299)

(declare-fun hi!7 () (_ BitVec 32))

(declare-fun i!215 () (_ BitVec 32))

(declare-fun arr!110 () array!299)

(declare-fun x!7359 () (_ BitVec 32))

(declare-fun x!7356 () (_ BitVec 32))

(declare-fun hi!4 () (_ BitVec 32))

(declare-fun lo!7 () (_ BitVec 32))

(declare-fun lo!4 () (_ BitVec 32))

(declare-fun y!686 () (_ BitVec 32))

(assert (=> start!2682 (and (bvsle #b00000000000000000000000000000000 lo!4) (bvslt hi!4 (size!139 arr!110)) (bvsle lo!4 (bvadd hi!4 #b00000000000000000000000000000001)) (bvsle lo!4 hi!4) (= i!215 (bvadd lo!4 (bvsdiv (bvsub hi!4 lo!4) #b00000000000000000000000000000010))) (= y!686 (select (arr!117 arr!110) i!215)) (not (= x!7356 y!686)) (bvsge x!7356 y!686) (= arr!113 arr!110) (= x!7359 x!7356) (= lo!7 (bvadd i!215 #b00000000000000000000000000000001)) (= hi!7 hi!4) (or (bvsgt #b00000000000000000000000000000000 lo!7) (bvsge hi!7 (size!139 arr!113)) (bvsgt lo!7 (bvadd hi!7 #b00000000000000000000000000000001))))))

(declare-fun array_inv!107 (array!299) Bool)

(assert (=> start!2682 (array_inv!107 arr!113)))

(assert (=> start!2682 true))

(assert (=> start!2682 (array_inv!107 arr!110)))

(declare-fun bs!3444 () Bool)

(assert (= bs!3444 start!2682))

(declare-fun m!16379 () Bool)

(assert (=> bs!3444 m!16379))

(declare-fun m!16381 () Bool)

(assert (=> bs!3444 m!16381))

(declare-fun m!16383 () Bool)

(assert (=> bs!3444 m!16383))

(push 1)

(assert (not start!2682))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

