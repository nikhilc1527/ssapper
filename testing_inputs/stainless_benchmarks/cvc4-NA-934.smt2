; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7076 () Bool)

(assert start!7076)

(declare-fun res!23718 () Bool)

(declare-fun e!27057 () Bool)

(assert (=> start!7076 (=> (not res!23718) (not e!27057))))

(declare-fun res!23476 () Bool)

(declare-datatypes () ((Node!78 (Node!79 (rank!31 Int) (elem!103 (_ BitVec 32)) (nodes!31 Heap!25))) (Heap!25 (Empty!127) (Nodes!24 (head!656 Node!78) (tail!680 Heap!25)))))

(declare-fun h!371 () Heap!25)

(assert (=> start!7076 (= res!23718 (= res!23476 (= h!371 Empty!127)))))

(assert (=> start!7076 e!27057))

(assert (=> start!7076 true))

(declare-fun b!52133 () Bool)

(declare-fun heapContent!0 (Heap!25) (Set (_ BitVec 32)))

(assert (=> b!52133 (= e!27057 (not (= res!23476 (= (heapContent!0 h!371) (as emptyset (Set (_ BitVec 32)))))))))

(assert (= (and start!7076 res!23718) b!52133))

(declare-fun m!56043 () Bool)

(assert (=> b!52133 m!56043))

(push 1)

(assert (not b!52133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44122 () Bool)

(declare-fun c!11258 () Bool)

(assert (=> d!44122 (= c!11258 (is-Empty!127 h!371))))

(declare-fun e!27060 () (Set (_ BitVec 32)))

(assert (=> d!44122 (= (heapContent!0 h!371) e!27060)))

(declare-fun b!52138 () Bool)

(assert (=> b!52138 (= e!27060 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52139 () Bool)

(declare-fun nodeContent!0 (Node!78) (Set (_ BitVec 32)))

(assert (=> b!52139 (= e!27060 (union (nodeContent!0 (head!656 h!371)) (heapContent!0 (tail!680 h!371))))))

(assert (= (and d!44122 c!11258) b!52138))

(assert (= (and d!44122 (not c!11258)) b!52139))

(declare-fun m!56045 () Bool)

(assert (=> b!52139 m!56045))

(declare-fun m!56047 () Bool)

(assert (=> b!52139 m!56047))

(assert (=> b!52133 d!44122))

(push 1)

(assert (not b!52139))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44124 () Bool)

(assert (=> d!44124 (= (nodeContent!0 (head!656 h!371)) (union (insert (elem!103 (head!656 h!371)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!31 (head!656 h!371)))))))

(declare-fun bs!23810 () Bool)

(assert (= bs!23810 d!44124))

(declare-fun m!56049 () Bool)

(assert (=> bs!23810 m!56049))

(declare-fun m!56051 () Bool)

(assert (=> bs!23810 m!56051))

(assert (=> b!52139 d!44124))

(declare-fun d!44126 () Bool)

(declare-fun c!11259 () Bool)

(assert (=> d!44126 (= c!11259 (is-Empty!127 (tail!680 h!371)))))

(declare-fun e!27061 () (Set (_ BitVec 32)))

(assert (=> d!44126 (= (heapContent!0 (tail!680 h!371)) e!27061)))

(declare-fun b!52140 () Bool)

(assert (=> b!52140 (= e!27061 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52141 () Bool)

(assert (=> b!52141 (= e!27061 (union (nodeContent!0 (head!656 (tail!680 h!371))) (heapContent!0 (tail!680 (tail!680 h!371)))))))

(assert (= (and d!44126 c!11259) b!52140))

(assert (= (and d!44126 (not c!11259)) b!52141))

(declare-fun m!56053 () Bool)

(assert (=> b!52141 m!56053))

(declare-fun m!56055 () Bool)

(assert (=> b!52141 m!56055))

(assert (=> b!52139 d!44126))

(push 1)

(assert (not b!52141))

(assert (not d!44124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

