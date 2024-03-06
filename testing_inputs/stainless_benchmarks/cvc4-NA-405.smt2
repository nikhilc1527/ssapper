; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2826 () Bool)

(assert start!2826)

(declare-datatypes () ((array!336 (array!337 (arr!130 (Array (_ BitVec 32) Bool)) (size!152 (_ BitVec 32))))))

(declare-fun a!379 () array!336)

(declare-fun x!7745 () (_ BitVec 8))

(declare-fun i!219 () (_ BitVec 32))

(assert (=> start!2826 (and (bvsgt (size!152 a!379) #b00000000000000000000000000000001) (select (arr!130 a!379) #b00000000000000000000000000000001) (= x!7745 #b00000001) (= i!219 ((_ zero_extend 24) x!7745)) (bvsge i!219 #b00000000000000000000000000000000) (bvslt i!219 (size!152 a!379)) (not (select (arr!130 a!379) i!219)))))

(declare-fun array_inv!120 (array!336) Bool)

(assert (=> start!2826 (array_inv!120 a!379)))

(assert (=> start!2826 true))

(declare-fun bs!4803 () Bool)

(assert (= bs!4803 start!2826))

(declare-fun m!17353 () Bool)

(assert (=> bs!4803 m!17353))

(declare-fun m!17355 () Bool)

(assert (=> bs!4803 m!17355))

(declare-fun m!17357 () Bool)

(assert (=> bs!4803 m!17357))

(push 1)

(assert (not start!2826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

