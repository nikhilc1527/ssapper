; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2828 () Bool)

(assert start!2828)

(declare-datatypes () ((array!338 (array!339 (arr!131 (Array (_ BitVec 32) Bool)) (size!153 (_ BitVec 32))))))

(declare-fun a!379 () array!338)

(assert (=> start!2828 (and (bvsgt (size!153 a!379) #b00000000000000000000000000000001) (bvsge #b00000000000000000000000000000001 (size!153 a!379)))))

(declare-fun array_inv!121 (array!338) Bool)

(assert (=> start!2828 (array_inv!121 a!379)))

(declare-fun bs!4805 () Bool)

(assert (= bs!4805 start!2828))

(declare-fun m!17359 () Bool)

(assert (=> bs!4805 m!17359))

(push 1)

(assert (not start!2828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

