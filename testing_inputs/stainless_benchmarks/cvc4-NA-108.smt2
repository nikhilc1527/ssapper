; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!664 () Bool)

(assert start!664)

(declare-fun i!204 () (_ BitVec 32))

(declare-datatypes () ((array!193 (array!194 (arr!73 (Array (_ BitVec 32) (_ BitVec 32))) (size!100 (_ BitVec 32))))))

(declare-fun a!322 () array!193)

(declare-fun res!1323 () array!193)

(assert (=> start!664 (and (bvsgt i!204 #b00000000000000000000000000000000) (= a!322 (array!194 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) i!204)) (= res!1323 a!322) (not (= (size!100 res!1323) i!204)))))

(assert (=> start!664 true))

(declare-fun array_inv!68 (array!193) Bool)

(assert (=> start!664 (array_inv!68 a!322)))

(assert (=> start!664 (array_inv!68 res!1323)))

(declare-fun bs!346 () Bool)

(assert (= bs!346 start!664))

(declare-fun m!7045 () Bool)

(assert (=> bs!346 m!7045))

(declare-fun m!7047 () Bool)

(assert (=> bs!346 m!7047))

(push 1)

(assert (not start!664))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

