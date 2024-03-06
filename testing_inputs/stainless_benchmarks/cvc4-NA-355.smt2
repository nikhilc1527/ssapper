; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2680 () Bool)

(assert start!2680)

(declare-fun x!7357 () (_ BitVec 32))

(declare-fun i!215 () (_ BitVec 32))

(declare-datatypes () ((array!297 (array!298 (arr!116 (Array (_ BitVec 32) (_ BitVec 32))) (size!138 (_ BitVec 32))))))

(declare-fun arr!110 () array!297)

(declare-fun lo!5 () (_ BitVec 32))

(declare-fun arr!111 () array!297)

(declare-fun hi!5 () (_ BitVec 32))

(declare-fun x!7356 () (_ BitVec 32))

(declare-fun hi!4 () (_ BitVec 32))

(declare-fun lo!4 () (_ BitVec 32))

(declare-fun y!686 () (_ BitVec 32))

(assert (=> start!2680 (and (bvsle #b00000000000000000000000000000000 lo!4) (bvslt hi!4 (size!138 arr!110)) (bvsle lo!4 (bvadd hi!4 #b00000000000000000000000000000001)) (bvsle lo!4 hi!4) (= i!215 (bvadd lo!4 (bvsdiv (bvsub hi!4 lo!4) #b00000000000000000000000000000010))) (= y!686 (select (arr!116 arr!110) i!215)) (not (= x!7356 y!686)) (bvslt x!7356 y!686) (= arr!111 arr!110) (= x!7357 x!7356) (= lo!5 lo!4) (= hi!5 (bvsub i!215 #b00000000000000000000000000000001)) (or (bvsgt #b00000000000000000000000000000000 lo!5) (bvsge hi!5 (size!138 arr!111)) (bvsgt lo!5 (bvadd hi!5 #b00000000000000000000000000000001))))))

(assert (=> start!2680 true))

(declare-fun array_inv!106 (array!297) Bool)

(assert (=> start!2680 (array_inv!106 arr!110)))

(assert (=> start!2680 (array_inv!106 arr!111)))

(declare-fun bs!3442 () Bool)

(assert (= bs!3442 start!2680))

(declare-fun m!16373 () Bool)

(assert (=> bs!3442 m!16373))

(declare-fun m!16375 () Bool)

(assert (=> bs!3442 m!16375))

(declare-fun m!16377 () Bool)

(assert (=> bs!3442 m!16377))

(push 1)

(assert (not start!2680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

