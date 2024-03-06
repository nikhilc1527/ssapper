; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2684 () Bool)

(assert start!2684)

(declare-fun i!215 () (_ BitVec 32))

(declare-datatypes () ((array!301 (array!302 (arr!118 (Array (_ BitVec 32) (_ BitVec 32))) (size!140 (_ BitVec 32))))))

(declare-fun arr!110 () array!301)

(declare-fun hi!4 () (_ BitVec 32))

(declare-fun lo!4 () (_ BitVec 32))

(assert (=> start!2684 (and (bvsle #b00000000000000000000000000000000 lo!4) (bvslt hi!4 (size!140 arr!110)) (bvsle lo!4 (bvadd hi!4 #b00000000000000000000000000000001)) (bvsle lo!4 hi!4) (= i!215 (bvadd lo!4 (bvsdiv (bvsub hi!4 lo!4) #b00000000000000000000000000000010))) (or (bvslt i!215 #b00000000000000000000000000000000) (bvsge i!215 (size!140 arr!110))))))

(assert (=> start!2684 true))

(declare-fun array_inv!108 (array!301) Bool)

(assert (=> start!2684 (array_inv!108 arr!110)))

(declare-fun bs!3446 () Bool)

(assert (= bs!3446 start!2684))

(declare-fun m!16385 () Bool)

(assert (=> bs!3446 m!16385))

(push 1)

(assert (not start!2684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

