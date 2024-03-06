; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2830 () Bool)

(assert start!2830)

(declare-datatypes () ((array!340 (array!341 (arr!132 (Array (_ BitVec 32) Bool)) (size!154 (_ BitVec 32))))))

(declare-fun a!379 () array!340)

(declare-fun x!7745 () (_ BitVec 8))

(declare-fun i!219 () (_ BitVec 32))

(assert (=> start!2830 (and (bvsgt (size!154 a!379) #b00000000000000000000000000000001) (select (arr!132 a!379) #b00000000000000000000000000000001) (= x!7745 #b00000001) (= i!219 ((_ zero_extend 24) x!7745)) (or (bvslt i!219 #b00000000000000000000000000000000) (bvsge i!219 (size!154 a!379))))))

(declare-fun array_inv!122 (array!340) Bool)

(assert (=> start!2830 (array_inv!122 a!379)))

(assert (=> start!2830 true))

(declare-fun bs!4807 () Bool)

(assert (= bs!4807 start!2830))

(declare-fun m!17361 () Bool)

(assert (=> bs!4807 m!17361))

(declare-fun m!17363 () Bool)

(assert (=> bs!4807 m!17363))

(push 1)

(assert (not start!2830))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

