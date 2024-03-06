; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11850 () Bool)

(assert start!11850)

(declare-fun res!47193 () Bool)

(declare-fun e!49186 () Bool)

(assert (=> start!11850 (=> (not res!47193) (not e!49186))))

(declare-datatypes () ((Tree!120 (Node!163 (left!1724 Tree!120) (value!7324 (_ BitVec 32)) (right!1730 Tree!120)) (Leaf!552))))

(declare-fun tree!133 () Tree!120)

(assert (=> start!11850 (= res!47193 (is-Node!163 tree!133))))

(assert (=> start!11850 e!49186))

(assert (=> start!11850 true))

(declare-fun b!90127 () Bool)

(declare-fun res!47194 () Bool)

(assert (=> b!90127 (=> (not res!47194) (not e!49186))))

(declare-fun treeMax!0 (Tree!120) (_ BitVec 32))

(assert (=> b!90127 (= res!47194 (bvsgt (treeMax!0 tree!133) #b00000000000000000000000000000000))))

(declare-fun b!90128 () Bool)

(declare-fun tree!136 () Tree!120)

(assert (=> b!90128 (= e!49186 (and (not (is-Leaf!552 (right!1730 tree!133))) (= tree!136 (right!1730 tree!133)) (not (is-Node!163 tree!136))))))

(assert (= (and start!11850 res!47193) b!90127))

(assert (= (and b!90127 res!47194) b!90128))

(declare-fun m!85966 () Bool)

(assert (=> b!90127 m!85966))

(push 1)

(assert (not b!90127))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

