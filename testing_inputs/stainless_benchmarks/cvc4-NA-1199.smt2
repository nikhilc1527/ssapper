; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8486 () Bool)

(assert start!8486)

(declare-fun x!26588 () (_ BitVec 32))

(declare-fun y!1930 () (_ BitVec 32))

(declare-fun m!63884 () (_ BitVec 32))

(assert (=> start!8486 (and (bvsle x!26588 y!1930) (bvsge x!26588 #b00000000000000000000000000000000) (bvsge y!1930 #b00000000000000000000000000000000) (= m!63884 (bvadd x!26588 (bvsdiv (bvsub y!1930 x!26588) #b00000000000000000000000000000010))) (or (bvslt m!63884 x!26588) (bvsgt m!63884 y!1930)))))

(assert (=> start!8486 true))

(push 1)

(check-sat)

(pop 1)

