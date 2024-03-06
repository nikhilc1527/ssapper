; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11866 () Bool)

(assert start!11866)

(declare-fun res!47226 () Bool)

(declare-fun e!49211 () Bool)

(assert (=> start!11866 (=> (not res!47226) (not e!49211))))

(declare-datatypes () ((Tree!124 (Node!167 (left!1728 Tree!124) (value!7328 (_ BitVec 32)) (right!1734 Tree!124)) (Leaf!556))))

(declare-fun tree!133 () Tree!124)

(assert (=> start!11866 (= res!47226 (is-Node!167 tree!133))))

(assert (=> start!11866 e!49211))

(assert (=> start!11866 true))

(declare-fun b!90186 () Bool)

(declare-fun res!47227 () Bool)

(assert (=> b!90186 (=> (not res!47227) (not e!49211))))

(declare-fun treeMax!0 (Tree!124) (_ BitVec 32))

(assert (=> b!90186 (= res!47227 (bvsgt (treeMax!0 tree!133) #b00000000000000000000000000000000))))

(declare-fun b!90187 () Bool)

(assert (=> b!90187 (= e!49211 false)))

(assert (= (and start!11866 res!47226) b!90186))

(assert (= (and b!90186 res!47227) b!90187))

(declare-fun m!86008 () Bool)

(assert (=> b!90186 m!86008))

(push 1)

(assert (not b!90186))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

