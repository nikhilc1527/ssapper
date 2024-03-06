; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11852 () Bool)

(assert start!11852)

(declare-fun res!47201 () Bool)

(declare-fun e!49189 () Bool)

(assert (=> start!11852 (=> (not res!47201) (not e!49189))))

(declare-datatypes () ((Tree!121 (Node!164 (left!1725 Tree!121) (value!7325 (_ BitVec 32)) (right!1731 Tree!121)) (Leaf!553))))

(declare-fun tree!133 () Tree!121)

(assert (=> start!11852 (= res!47201 (is-Node!164 tree!133))))

(assert (=> start!11852 e!49189))

(assert (=> start!11852 true))

(declare-fun b!90135 () Bool)

(declare-fun res!47202 () Bool)

(assert (=> b!90135 (=> (not res!47202) (not e!49189))))

(declare-fun treeMax!0 (Tree!121) (_ BitVec 32))

(assert (=> b!90135 (= res!47202 (bvsgt (treeMax!0 tree!133) #b00000000000000000000000000000000))))

(declare-fun b!90136 () Bool)

(declare-fun res!47203 () Bool)

(assert (=> b!90136 (=> (not res!47203) (not e!49189))))

(declare-fun x$2!548 () (_ BitVec 32))

(assert (=> b!90136 (= res!47203 (and (is-Leaf!553 (right!1731 tree!133)) (= x$2!548 (value!7325 tree!133))))))

(declare-fun b!90137 () Bool)

(declare-fun content!9 (Tree!121) (Set (_ BitVec 32)))

(assert (=> b!90137 (= e!49189 (not (member x$2!548 (content!9 tree!133))))))

(assert (= (and start!11852 res!47201) b!90135))

(assert (= (and b!90135 res!47202) b!90136))

(assert (= (and b!90136 res!47203) b!90137))

(declare-fun m!85968 () Bool)

(assert (=> b!90135 m!85968))

(declare-fun m!85970 () Bool)

(assert (=> b!90137 m!85970))

(declare-fun m!85972 () Bool)

(assert (=> b!90137 m!85972))

(push 1)

(assert (not b!90137))

(assert (not b!90135))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59447 () Bool)

(declare-fun c!22022 () Bool)

(assert (=> d!59447 (= c!22022 (is-Leaf!553 tree!133))))

(declare-fun e!49192 () (Set (_ BitVec 32)))

(assert (=> d!59447 (= (content!9 tree!133) e!49192)))

(declare-fun b!90142 () Bool)

(assert (=> b!90142 (= e!49192 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!90143 () Bool)

(assert (=> b!90143 (= e!49192 (union (union (content!9 (left!1725 tree!133)) (insert (value!7325 tree!133) (as emptyset (Set (_ BitVec 32))))) (content!9 (right!1731 tree!133))))))

(assert (= (and d!59447 c!22022) b!90142))

(assert (= (and d!59447 (not c!22022)) b!90143))

(declare-fun m!85974 () Bool)

(assert (=> b!90143 m!85974))

(declare-fun m!85976 () Bool)

(assert (=> b!90143 m!85976))

(declare-fun m!85978 () Bool)

(assert (=> b!90143 m!85978))

(assert (=> b!90137 d!59447))

(declare-fun d!59449 () Bool)

(declare-fun lt!20458 () (_ BitVec 32))

(assert (=> d!59449 (member lt!20458 (content!9 tree!133))))

(declare-fun e!49195 () (_ BitVec 32))

(assert (=> d!59449 (= lt!20458 e!49195)))

(declare-fun c!22025 () Bool)

(assert (=> d!59449 (= c!22025 (is-Leaf!553 (right!1731 tree!133)))))

(assert (=> d!59449 (= (treeMax!0 tree!133) lt!20458)))

(declare-fun b!90148 () Bool)

(assert (=> b!90148 (= e!49195 (value!7325 tree!133))))

(declare-fun b!90149 () Bool)

(assert (=> b!90149 (= e!49195 (treeMax!0 (Node!164 (left!1725 (right!1731 tree!133)) (value!7325 (right!1731 tree!133)) (right!1731 (right!1731 tree!133)))))))

(assert (= (and d!59449 c!22025) b!90148))

(assert (= (and d!59449 (not c!22025)) b!90149))

(assert (=> d!59449 m!85970))

(declare-fun m!85980 () Bool)

(assert (=> d!59449 m!85980))

(declare-fun m!85982 () Bool)

(assert (=> b!90149 m!85982))

(assert (=> b!90135 d!59449))

(push 1)

(assert (not b!90149))

(assert (not d!59449))

(assert (not b!90143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

