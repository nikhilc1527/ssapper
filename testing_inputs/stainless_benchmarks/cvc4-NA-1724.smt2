; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11870 () Bool)

(assert start!11870)

(declare-fun res!47230 () Bool)

(declare-fun e!49214 () Bool)

(assert (=> start!11870 (=> (not res!47230) (not e!49214))))

(declare-datatypes () ((Tree!126 (Node!169 (left!1730 Tree!126) (value!7330 (_ BitVec 32)) (right!1736 Tree!126)) (Leaf!558))))

(declare-fun tree!138 () Tree!126)

(declare-fun x$1!1202 () (_ BitVec 32))

(assert (=> start!11870 (= res!47230 (and (is-Node!169 tree!138) (is-Leaf!558 (right!1736 tree!138)) (= x$1!1202 (value!7330 tree!138))))))

(assert (=> start!11870 e!49214))

(assert (=> start!11870 true))

(declare-fun b!90190 () Bool)

(declare-fun content!9 (Tree!126) (Set (_ BitVec 32)))

(assert (=> b!90190 (= e!49214 (not (member x$1!1202 (content!9 tree!138))))))

(assert (= (and start!11870 res!47230) b!90190))

(declare-fun m!86010 () Bool)

(assert (=> b!90190 m!86010))

(declare-fun m!86012 () Bool)

(assert (=> b!90190 m!86012))

(push 1)

(assert (not b!90190))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59457 () Bool)

(declare-fun c!22035 () Bool)

(assert (=> d!59457 (= c!22035 (is-Leaf!558 tree!138))))

(declare-fun e!49217 () (Set (_ BitVec 32)))

(assert (=> d!59457 (= (content!9 tree!138) e!49217)))

(declare-fun b!90195 () Bool)

(assert (=> b!90195 (= e!49217 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!90196 () Bool)

(assert (=> b!90196 (= e!49217 (union (union (content!9 (left!1730 tree!138)) (insert (value!7330 tree!138) (as emptyset (Set (_ BitVec 32))))) (content!9 (right!1736 tree!138))))))

(assert (= (and d!59457 c!22035) b!90195))

(assert (= (and d!59457 (not c!22035)) b!90196))

(declare-fun m!86014 () Bool)

(assert (=> b!90196 m!86014))

(declare-fun m!86016 () Bool)

(assert (=> b!90196 m!86016))

(declare-fun m!86018 () Bool)

(assert (=> b!90196 m!86018))

(assert (=> b!90190 d!59457))

(push 1)

(assert (not b!90196))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

