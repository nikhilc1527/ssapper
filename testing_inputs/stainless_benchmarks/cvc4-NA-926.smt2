; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7042 () Bool)

(assert start!7042)

(declare-fun res!23652 () Bool)

(declare-fun e!26984 () Bool)

(assert (=> start!7042 (=> (not res!23652) (not e!26984))))

(declare-datatypes () ((OptInt!7 (Some!231 (value!3243 (_ BitVec 32))) (None!232))))

(declare-fun x$3!123 () OptInt!7)

(declare-datatypes () ((Node!62 (Node!63 (rank!23 Int) (elem!95 (_ BitVec 32)) (nodes!23 Heap!17))) (Heap!17 (Empty!119) (Nodes!16 (head!648 Node!62) (tail!672 Heap!17)))))

(declare-fun h!391 () Heap!17)

(declare-fun inlined!6102 () OptInt!7)

(assert (=> start!7042 (= res!23652 (and (is-Empty!119 h!391) (= inlined!6102 None!232) (= x$3!123 inlined!6102) (is-None!232 x$3!123)))))

(assert (=> start!7042 e!26984))

(assert (=> start!7042 true))

(declare-fun b!51972 () Bool)

(declare-fun isEmpty!6 (Heap!17) Bool)

(assert (=> b!51972 (= e!26984 (not (isEmpty!6 h!391)))))

(assert (= (and start!7042 res!23652) b!51972))

(declare-fun m!55963 () Bool)

(assert (=> b!51972 m!55963))

(push 1)

(assert (not b!51972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44096 () Bool)

(declare-fun lt!9120 () Bool)

(declare-fun heapContent!0 (Heap!17) (Set (_ BitVec 32)))

(assert (=> d!44096 (= lt!9120 (= (heapContent!0 h!391) (as emptyset (Set (_ BitVec 32)))))))

(assert (=> d!44096 (= lt!9120 (= h!391 Empty!119))))

(assert (=> d!44096 (= (isEmpty!6 h!391) lt!9120)))

(declare-fun bs!23797 () Bool)

(assert (= bs!23797 d!44096))

(declare-fun m!55965 () Bool)

(assert (=> bs!23797 m!55965))

(assert (=> b!51972 d!44096))

(push 1)

(assert (not d!44096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

