; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11864 () Bool)

(assert start!11864)

(declare-fun res!47220 () Bool)

(declare-fun e!49208 () Bool)

(assert (=> start!11864 (=> (not res!47220) (not e!49208))))

(declare-datatypes () ((Tree!123 (Node!166 (left!1727 Tree!123) (value!7327 (_ BitVec 32)) (right!1733 Tree!123)) (Leaf!555))))

(declare-fun tree!133 () Tree!123)

(assert (=> start!11864 (= res!47220 (is-Node!166 tree!133))))

(assert (=> start!11864 e!49208))

(assert (=> start!11864 true))

(declare-fun b!90180 () Bool)

(declare-fun res!47221 () Bool)

(assert (=> b!90180 (=> (not res!47221) (not e!49208))))

(declare-fun treeMax!0 (Tree!123) (_ BitVec 32))

(assert (=> b!90180 (= res!47221 (bvsgt (treeMax!0 tree!133) #b00000000000000000000000000000000))))

(declare-fun b!90181 () Bool)

(assert (=> b!90181 (= e!49208 false)))

(assert (= (and start!11864 res!47220) b!90180))

(assert (= (and b!90180 res!47221) b!90181))

(declare-fun m!86006 () Bool)

(assert (=> b!90180 m!86006))

(push 1)

(assert (not b!90180))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

