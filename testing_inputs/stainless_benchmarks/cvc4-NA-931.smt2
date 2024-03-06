; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7062 () Bool)

(assert start!7062)

(declare-fun b!52052 () Bool)

(declare-fun e!27021 () Bool)

(declare-datatypes () ((Node!72 (Node!73 (rank!28 Int) (elem!100 (_ BitVec 32)) (nodes!28 Heap!22))) (Heap!22 (Empty!124) (Nodes!21 (head!653 Node!72) (tail!677 Heap!22)))))

(declare-fun h!391 () Heap!22)

(declare-fun isEmpty!6 (Heap!22) Bool)

(assert (=> b!52052 (= e!27021 (not (isEmpty!6 h!391)))))

(declare-fun b!52053 () Bool)

(declare-fun res!23691 () Bool)

(assert (=> b!52053 (=> (not res!23691) (not e!27021))))

(declare-datatypes () ((OptInt!12 (Some!236 (value!3248 (_ BitVec 32))) (None!237))))

(declare-fun findMin!0 (Heap!22) OptInt!12)

(assert (=> b!52053 (= res!23691 (not (is-None!237 (findMin!0 (tail!677 h!391)))))))

(declare-fun res!23693 () Bool)

(assert (=> start!7062 (=> (not res!23693) (not e!27021))))

(assert (=> start!7062 (= res!23693 (not (is-Empty!124 h!391)))))

(assert (=> start!7062 e!27021))

(assert (=> start!7062 true))

(declare-fun b!52054 () Bool)

(declare-fun res!23692 () Bool)

(assert (=> b!52054 (=> (not res!23692) (not e!27021))))

(declare-fun x$3!126 () OptInt!12)

(assert (=> b!52054 (= res!23692 (is-None!237 x$3!126))))

(declare-fun b!52055 () Bool)

(declare-fun e!27022 () (_ BitVec 32))

(assert (=> b!52055 (= e!27022 (value!3248 (findMin!0 (tail!677 h!391))))))

(declare-fun b!52056 () Bool)

(declare-fun res!23690 () Bool)

(assert (=> b!52056 (=> (not res!23690) (not e!27021))))

(assert (=> b!52056 (= res!23690 (= x$3!126 (Some!236 e!27022)))))

(declare-fun c!11229 () Bool)

(assert (=> b!52056 (= c!11229 (bvslt (elem!100 (head!653 h!391)) (value!3248 (findMin!0 (tail!677 h!391)))))))

(declare-fun b!52057 () Bool)

(assert (=> b!52057 (= e!27022 (elem!100 (head!653 h!391)))))

(assert (= (and start!7062 res!23693) b!52053))

(assert (= (and b!52053 res!23691) b!52056))

(assert (= (and b!52056 c!11229) b!52057))

(assert (= (and b!52056 (not c!11229)) b!52055))

(assert (= (and b!52056 res!23690) b!52054))

(assert (= (and b!52054 res!23692) b!52052))

(declare-fun m!56007 () Bool)

(assert (=> b!52052 m!56007))

(declare-fun m!56009 () Bool)

(assert (=> b!52053 m!56009))

(assert (=> b!52055 m!56009))

(assert (=> b!52056 m!56009))

(push 1)

(assert (not b!52056))

(assert (not b!52053))

(assert (not b!52055))

(assert (not b!52052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

