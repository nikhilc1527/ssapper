; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!682 () Bool)

(assert start!682)

(declare-datatypes () ((array!235 (array!236 (arr!90 (Array (_ BitVec 32) Int)) (size!117 (_ BitVec 32))))))

(declare-fun a!333 () array!235)

(declare-fun a2!21 () array!235)

(declare-fun res!1338 () Int)

(assert (=> start!682 (and (bvsgt (size!117 a!333) #b00000000000000000000000000000000) (= a2!21 (array!236 (store (arr!90 a!333) #b00000000000000000000000000000000 2) (size!117 a!333))) (bvslt #b00000000000000000000000000000000 (size!117 a2!21)) (= res!1338 (select (arr!90 a2!21) #b00000000000000000000000000000000)) (not (= res!1338 2)))))

(declare-fun array_inv!85 (array!235) Bool)

(assert (=> start!682 (array_inv!85 a!333)))

(assert (=> start!682 (array_inv!85 a2!21)))

(assert (=> start!682 true))

(declare-fun bs!364 () Bool)

(assert (= bs!364 start!682))

(declare-fun m!7109 () Bool)

(assert (=> bs!364 m!7109))

(declare-fun m!7111 () Bool)

(assert (=> bs!364 m!7111))

(declare-fun m!7113 () Bool)

(assert (=> bs!364 m!7113))

(declare-fun m!7115 () Bool)

(assert (=> bs!364 m!7115))

(push 1)

(assert (not start!682))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

