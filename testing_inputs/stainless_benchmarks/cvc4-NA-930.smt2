; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7060 () Bool)

(assert start!7060)

(declare-fun res!23680 () Bool)

(declare-fun e!27016 () Bool)

(assert (=> start!7060 (=> (not res!23680) (not e!27016))))

(declare-datatypes () ((Node!70 (Node!71 (rank!27 Int) (elem!99 (_ BitVec 32)) (nodes!27 Heap!21))) (Heap!21 (Empty!123) (Nodes!20 (head!652 Node!70) (tail!676 Heap!21)))))

(declare-fun h!391 () Heap!21)

(assert (=> start!7060 (= res!23680 (not (is-Empty!123 h!391)))))

(assert (=> start!7060 e!27016))

(assert (=> start!7060 true))

(declare-fun b!52038 () Bool)

(declare-fun res!23681 () Bool)

(assert (=> b!52038 (=> (not res!23681) (not e!27016))))

(declare-datatypes () ((OptInt!11 (Some!235 (value!3247 (_ BitVec 32))) (None!236))))

(declare-fun findMin!0 (Heap!21) OptInt!11)

(assert (=> b!52038 (= res!23681 (is-None!236 (findMin!0 (tail!676 h!391))))))

(declare-fun b!52039 () Bool)

(assert (=> b!52039 (= e!27016 false)))

(assert (= (and start!7060 res!23680) b!52038))

(assert (= (and b!52038 res!23681) b!52039))

(declare-fun m!56005 () Bool)

(assert (=> b!52038 m!56005))

(push 1)

(assert (not b!52038))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

