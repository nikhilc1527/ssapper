; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11858 () Bool)

(assert start!11858)

(declare-fun b!90158 () Bool)

(declare-fun res!47213 () Bool)

(declare-fun e!49198 () Bool)

(assert (=> b!90158 (=> (not res!47213) (not e!49198))))

(declare-datatypes () ((Tree!122 (Node!165 (left!1726 Tree!122) (value!7326 (_ BitVec 32)) (right!1732 Tree!122)) (Leaf!554))))

(declare-fun tree!133 () Tree!122)

(declare-fun treeMax!0 (Tree!122) (_ BitVec 32))

(assert (=> b!90158 (= res!47213 (bvsgt (treeMax!0 tree!133) #b00000000000000000000000000000000))))

(declare-fun res!47215 () Bool)

(assert (=> start!11858 (=> (not res!47215) (not e!49198))))

(assert (=> start!11858 (= res!47215 (is-Node!165 tree!133))))

(assert (=> start!11858 e!49198))

(assert (=> start!11858 true))

(declare-fun b!90160 () Bool)

(declare-fun res!47212 () Bool)

(assert (=> b!90160 (=> (not res!47212) (not e!49198))))

(declare-fun x$2!549 () (_ BitVec 32))

(assert (=> b!90160 (= res!47212 (= x$2!549 (treeMax!0 (right!1732 tree!133))))))

(declare-fun b!90161 () Bool)

(declare-fun content!9 (Tree!122) (Set (_ BitVec 32)))

(assert (=> b!90161 (= e!49198 (not (member x$2!549 (content!9 tree!133))))))

(declare-fun b!90159 () Bool)

(declare-fun res!47214 () Bool)

(assert (=> b!90159 (=> (not res!47214) (not e!49198))))

(assert (=> b!90159 (= res!47214 (not (is-Leaf!554 (right!1732 tree!133))))))

(assert (= (and start!11858 res!47215) b!90158))

(assert (= (and b!90158 res!47213) b!90159))

(assert (= (and b!90159 res!47214) b!90160))

(assert (= (and b!90160 res!47212) b!90161))

(declare-fun m!85984 () Bool)

(assert (=> b!90158 m!85984))

(declare-fun m!85986 () Bool)

(assert (=> b!90160 m!85986))

(declare-fun m!85988 () Bool)

(assert (=> b!90161 m!85988))

(declare-fun m!85990 () Bool)

(assert (=> b!90161 m!85990))

(push 1)

(assert (not b!90158))

(assert (not b!90160))

(assert (not b!90161))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59451 () Bool)

(declare-fun lt!20461 () (_ BitVec 32))

(assert (=> d!59451 (member lt!20461 (content!9 tree!133))))

(declare-fun e!49201 () (_ BitVec 32))

(assert (=> d!59451 (= lt!20461 e!49201)))

(declare-fun c!22028 () Bool)

(assert (=> d!59451 (= c!22028 (is-Leaf!554 (right!1732 tree!133)))))

(assert (=> d!59451 (= (treeMax!0 tree!133) lt!20461)))

(declare-fun b!90166 () Bool)

(assert (=> b!90166 (= e!49201 (value!7326 tree!133))))

(declare-fun b!90167 () Bool)

(assert (=> b!90167 (= e!49201 (treeMax!0 (Node!165 (left!1726 (right!1732 tree!133)) (value!7326 (right!1732 tree!133)) (right!1732 (right!1732 tree!133)))))))

(assert (= (and d!59451 c!22028) b!90166))

(assert (= (and d!59451 (not c!22028)) b!90167))

(assert (=> d!59451 m!85988))

(declare-fun m!85992 () Bool)

(assert (=> d!59451 m!85992))

(declare-fun m!85994 () Bool)

(assert (=> b!90167 m!85994))

(assert (=> b!90158 d!59451))

(declare-fun d!59453 () Bool)

(declare-fun lt!20462 () (_ BitVec 32))

(assert (=> d!59453 (member lt!20462 (content!9 (right!1732 tree!133)))))

(declare-fun e!49202 () (_ BitVec 32))

(assert (=> d!59453 (= lt!20462 e!49202)))

(declare-fun c!22029 () Bool)

(assert (=> d!59453 (= c!22029 (is-Leaf!554 (right!1732 (right!1732 tree!133))))))

(assert (=> d!59453 (= (treeMax!0 (right!1732 tree!133)) lt!20462)))

(declare-fun b!90168 () Bool)

(assert (=> b!90168 (= e!49202 (value!7326 (right!1732 tree!133)))))

(declare-fun b!90169 () Bool)

(assert (=> b!90169 (= e!49202 (treeMax!0 (Node!165 (left!1726 (right!1732 (right!1732 tree!133))) (value!7326 (right!1732 (right!1732 tree!133))) (right!1732 (right!1732 (right!1732 tree!133))))))))

(assert (= (and d!59453 c!22029) b!90168))

(assert (= (and d!59453 (not c!22029)) b!90169))

(declare-fun m!85996 () Bool)

(assert (=> d!59453 m!85996))

(declare-fun m!85998 () Bool)

(assert (=> d!59453 m!85998))

(declare-fun m!86000 () Bool)

(assert (=> b!90169 m!86000))

(assert (=> b!90160 d!59453))

(declare-fun d!59455 () Bool)

(declare-fun c!22032 () Bool)

(assert (=> d!59455 (= c!22032 (is-Leaf!554 tree!133))))

(declare-fun e!49205 () (Set (_ BitVec 32)))

(assert (=> d!59455 (= (content!9 tree!133) e!49205)))

(declare-fun b!90174 () Bool)

(assert (=> b!90174 (= e!49205 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!90175 () Bool)

(assert (=> b!90175 (= e!49205 (union (union (content!9 (left!1726 tree!133)) (insert (value!7326 tree!133) (as emptyset (Set (_ BitVec 32))))) (content!9 (right!1732 tree!133))))))

(assert (= (and d!59455 c!22032) b!90174))

(assert (= (and d!59455 (not c!22032)) b!90175))

(declare-fun m!86002 () Bool)

(assert (=> b!90175 m!86002))

(declare-fun m!86004 () Bool)

(assert (=> b!90175 m!86004))

(assert (=> b!90175 m!85996))

(assert (=> b!90161 d!59455))

(push 1)

(assert (not d!59453))

(assert (not b!90175))

(assert (not b!90167))

(assert (not d!59451))

(assert (not b!90169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

