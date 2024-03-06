; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7048 () Bool)

(assert start!7048)

(declare-fun res!23663 () Bool)

(declare-fun e!26990 () Bool)

(assert (=> start!7048 (=> (not res!23663) (not e!26990))))

(declare-datatypes () ((Node!66 (Node!67 (rank!25 Int) (elem!97 (_ BitVec 32)) (nodes!25 Heap!19))) (Heap!19 (Empty!121) (Nodes!18 (head!650 Node!66) (tail!674 Heap!19)))))

(declare-fun h!391 () Heap!19)

(assert (=> start!7048 (= res!23663 (not (is-Empty!121 h!391)))))

(assert (=> start!7048 e!26990))

(assert (=> start!7048 true))

(declare-fun b!51982 () Bool)

(declare-fun res!23664 () Bool)

(assert (=> b!51982 (=> (not res!23664) (not e!26990))))

(declare-datatypes () ((OptInt!9 (Some!233 (value!3245 (_ BitVec 32))) (None!234))))

(declare-fun findMin!0 (Heap!19) OptInt!9)

(assert (=> b!51982 (= res!23664 (is-None!234 (findMin!0 (tail!674 h!391))))))

(declare-fun b!51983 () Bool)

(declare-fun res!23665 () Bool)

(assert (=> b!51983 (=> (not res!23665) (not e!26990))))

(declare-fun x$3!125 () OptInt!9)

(assert (=> b!51983 (= res!23665 (and (= x$3!125 (Some!233 (elem!97 (head!650 h!391)))) (is-None!234 x$3!125)))))

(declare-fun b!51984 () Bool)

(declare-fun isEmpty!6 (Heap!19) Bool)

(assert (=> b!51984 (= e!26990 (not (isEmpty!6 h!391)))))

(assert (= (and start!7048 res!23663) b!51982))

(assert (= (and b!51982 res!23664) b!51983))

(assert (= (and b!51983 res!23665) b!51984))

(declare-fun m!55971 () Bool)

(assert (=> b!51982 m!55971))

(declare-fun m!55973 () Bool)

(assert (=> b!51984 m!55973))

(push 1)

(assert (not b!51982))

(assert (not b!51984))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

