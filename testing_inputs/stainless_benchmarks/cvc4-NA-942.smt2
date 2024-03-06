; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7130 () Bool)

(assert start!7130)

(declare-fun res!23780 () Bool)

(declare-fun e!27254 () Bool)

(assert (=> start!7130 (=> (not res!23780) (not e!27254))))

(declare-datatypes () ((Node!94 (Node!95 (rank!39 Int) (elem!111 (_ BitVec 32)) (nodes!39 Heap!33))) (Heap!33 (Empty!135) (Nodes!32 (head!664 Node!94) (tail!688 Heap!33)))))

(declare-fun res!23504 () Heap!33)

(declare-fun h!510 () Heap!33)

(declare-fun t!46649 () Node!94)

(assert (=> start!7130 (= res!23780 (and (not (is-Empty!135 h!510)) (< (rank!39 t!46649) (rank!39 (head!664 h!510))) (= res!23504 (Nodes!32 t!46649 h!510))))))

(assert (=> start!7130 e!27254))

(assert (=> start!7130 true))

(declare-fun b!52512 () Bool)

(declare-fun heapContent!0 (Heap!33) (Set (_ BitVec 32)))

(declare-fun nodeContent!0 (Node!94) (Set (_ BitVec 32)))

(assert (=> b!52512 (= e!27254 (not (= (heapContent!0 res!23504) (union (nodeContent!0 t!46649) (heapContent!0 h!510)))))))

(assert (= (and start!7130 res!23780) b!52512))

(declare-fun m!56589 () Bool)

(assert (=> b!52512 m!56589))

(declare-fun m!56591 () Bool)

(assert (=> b!52512 m!56591))

(declare-fun m!56593 () Bool)

(assert (=> b!52512 m!56593))

(push 1)

(assert (not b!52512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44328 () Bool)

(declare-fun c!11431 () Bool)

(assert (=> d!44328 (= c!11431 (is-Empty!135 res!23504))))

(declare-fun e!27257 () (Set (_ BitVec 32)))

(assert (=> d!44328 (= (heapContent!0 res!23504) e!27257)))

(declare-fun b!52517 () Bool)

(assert (=> b!52517 (= e!27257 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52518 () Bool)

(assert (=> b!52518 (= e!27257 (union (nodeContent!0 (head!664 res!23504)) (heapContent!0 (tail!688 res!23504))))))

(assert (= (and d!44328 c!11431) b!52517))

(assert (= (and d!44328 (not c!11431)) b!52518))

(declare-fun m!56595 () Bool)

(assert (=> b!52518 m!56595))

(declare-fun m!56597 () Bool)

(assert (=> b!52518 m!56597))

(assert (=> b!52512 d!44328))

(declare-fun d!44330 () Bool)

(assert (=> d!44330 (= (nodeContent!0 t!46649) (union (insert (elem!111 t!46649) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!39 t!46649))))))

(declare-fun bs!23839 () Bool)

(assert (= bs!23839 d!44330))

(declare-fun m!56599 () Bool)

(assert (=> bs!23839 m!56599))

(declare-fun m!56601 () Bool)

(assert (=> bs!23839 m!56601))

(assert (=> b!52512 d!44330))

(declare-fun d!44332 () Bool)

(declare-fun c!11432 () Bool)

(assert (=> d!44332 (= c!11432 (is-Empty!135 h!510))))

(declare-fun e!27258 () (Set (_ BitVec 32)))

(assert (=> d!44332 (= (heapContent!0 h!510) e!27258)))

(declare-fun b!52519 () Bool)

(assert (=> b!52519 (= e!27258 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52520 () Bool)

(assert (=> b!52520 (= e!27258 (union (nodeContent!0 (head!664 h!510)) (heapContent!0 (tail!688 h!510))))))

(assert (= (and d!44332 c!11432) b!52519))

(assert (= (and d!44332 (not c!11432)) b!52520))

(declare-fun m!56603 () Bool)

(assert (=> b!52520 m!56603))

(declare-fun m!56605 () Bool)

(assert (=> b!52520 m!56605))

(assert (=> b!52512 d!44332))

(push 1)

(assert (not d!44330))

(assert (not b!52518))

(assert (not b!52520))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

