; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11874 () Bool)

(assert start!11874)

(declare-fun res!47235 () Bool)

(declare-fun e!49220 () Bool)

(assert (=> start!11874 (=> (not res!47235) (not e!49220))))

(declare-datatypes () ((Tree!127 (Node!170 (left!1731 Tree!127) (value!7331 (_ BitVec 32)) (right!1737 Tree!127)) (Leaf!559))))

(declare-fun tree!138 () Tree!127)

(assert (=> start!11874 (= res!47235 (and (is-Node!170 tree!138) (not (is-Leaf!559 (right!1737 tree!138)))))))

(assert (=> start!11874 e!49220))

(assert (=> start!11874 true))

(declare-fun b!90201 () Bool)

(declare-fun res!47236 () Bool)

(assert (=> b!90201 (=> (not res!47236) (not e!49220))))

(declare-fun x$1!1203 () (_ BitVec 32))

(declare-fun treeMax!0 (Tree!127) (_ BitVec 32))

(assert (=> b!90201 (= res!47236 (= x$1!1203 (treeMax!0 (right!1737 tree!138))))))

(declare-fun b!90202 () Bool)

(declare-fun content!9 (Tree!127) (Set (_ BitVec 32)))

(assert (=> b!90202 (= e!49220 (not (member x$1!1203 (content!9 tree!138))))))

(assert (= (and start!11874 res!47235) b!90201))

(assert (= (and b!90201 res!47236) b!90202))

(declare-fun m!86020 () Bool)

(assert (=> b!90201 m!86020))

(declare-fun m!86022 () Bool)

(assert (=> b!90202 m!86022))

(declare-fun m!86024 () Bool)

(assert (=> b!90202 m!86024))

(push 1)

(assert (not b!90201))

(assert (not b!90202))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59459 () Bool)

(declare-fun lt!20465 () (_ BitVec 32))

(assert (=> d!59459 (member lt!20465 (content!9 (right!1737 tree!138)))))

(declare-fun e!49223 () (_ BitVec 32))

(assert (=> d!59459 (= lt!20465 e!49223)))

(declare-fun c!22038 () Bool)

(assert (=> d!59459 (= c!22038 (is-Leaf!559 (right!1737 (right!1737 tree!138))))))

(assert (=> d!59459 (= (treeMax!0 (right!1737 tree!138)) lt!20465)))

(declare-fun b!90207 () Bool)

(assert (=> b!90207 (= e!49223 (value!7331 (right!1737 tree!138)))))

(declare-fun b!90208 () Bool)

(assert (=> b!90208 (= e!49223 (treeMax!0 (Node!170 (left!1731 (right!1737 (right!1737 tree!138))) (value!7331 (right!1737 (right!1737 tree!138))) (right!1737 (right!1737 (right!1737 tree!138))))))))

(assert (= (and d!59459 c!22038) b!90207))

(assert (= (and d!59459 (not c!22038)) b!90208))

(declare-fun m!86026 () Bool)

(assert (=> d!59459 m!86026))

(declare-fun m!86028 () Bool)

(assert (=> d!59459 m!86028))

(declare-fun m!86030 () Bool)

(assert (=> b!90208 m!86030))

(assert (=> b!90201 d!59459))

(declare-fun d!59461 () Bool)

(declare-fun c!22041 () Bool)

(assert (=> d!59461 (= c!22041 (is-Leaf!559 tree!138))))

(declare-fun e!49226 () (Set (_ BitVec 32)))

(assert (=> d!59461 (= (content!9 tree!138) e!49226)))

(declare-fun b!90213 () Bool)

(assert (=> b!90213 (= e!49226 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!90214 () Bool)

(assert (=> b!90214 (= e!49226 (union (union (content!9 (left!1731 tree!138)) (insert (value!7331 tree!138) (as emptyset (Set (_ BitVec 32))))) (content!9 (right!1737 tree!138))))))

(assert (= (and d!59461 c!22041) b!90213))

(assert (= (and d!59461 (not c!22041)) b!90214))

(declare-fun m!86032 () Bool)

(assert (=> b!90214 m!86032))

(declare-fun m!86034 () Bool)

(assert (=> b!90214 m!86034))

(assert (=> b!90214 m!86026))

(assert (=> b!90202 d!59461))

(push 1)

(assert (not b!90208))

(assert (not d!59459))

(assert (not b!90214))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

