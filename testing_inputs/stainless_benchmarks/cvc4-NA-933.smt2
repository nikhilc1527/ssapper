; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7074 () Bool)

(assert start!7074)

(declare-fun b!52126 () Bool)

(declare-fun res!23715 () Bool)

(declare-fun e!27053 () Bool)

(assert (=> b!52126 (=> (not res!23715) (not e!27053))))

(declare-datatypes () ((OptInt!14 (Some!238 (value!3250 (_ BitVec 32))) (None!239))))

(declare-fun x$3!126 () OptInt!14)

(declare-fun e!27054 () (_ BitVec 32))

(assert (=> b!52126 (= res!23715 (= x$3!126 (Some!238 e!27054)))))

(declare-fun c!11255 () Bool)

(declare-datatypes () ((Node!76 (Node!77 (rank!30 Int) (elem!102 (_ BitVec 32)) (nodes!30 Heap!24))) (Heap!24 (Empty!126) (Nodes!23 (head!655 Node!76) (tail!679 Heap!24)))))

(declare-fun h!391 () Heap!24)

(declare-fun findMin!0 (Heap!24) OptInt!14)

(assert (=> b!52126 (= c!11255 (bvslt (elem!102 (head!655 h!391)) (value!3250 (findMin!0 (tail!679 h!391)))))))

(declare-fun b!52127 () Bool)

(assert (=> b!52127 (= e!27054 (elem!102 (head!655 h!391)))))

(declare-fun b!52128 () Bool)

(assert (=> b!52128 (= e!27054 (value!3250 (findMin!0 (tail!679 h!391))))))

(declare-fun res!23714 () Bool)

(assert (=> start!7074 (=> (not res!23714) (not e!27053))))

(assert (=> start!7074 (= res!23714 (not (is-Empty!126 h!391)))))

(assert (=> start!7074 e!27053))

(assert (=> start!7074 true))

(declare-fun b!52129 () Bool)

(assert (=> b!52129 (= e!27053 false)))

(declare-fun b!52130 () Bool)

(declare-fun res!23713 () Bool)

(assert (=> b!52130 (=> (not res!23713) (not e!27053))))

(assert (=> b!52130 (= res!23713 (not (is-None!239 (findMin!0 (tail!679 h!391)))))))

(assert (= (and start!7074 res!23714) b!52130))

(assert (= (and b!52130 res!23713) b!52126))

(assert (= (and b!52126 c!11255) b!52127))

(assert (= (and b!52126 (not c!11255)) b!52128))

(assert (= (and b!52126 res!23715) b!52129))

(declare-fun m!56041 () Bool)

(assert (=> b!52126 m!56041))

(assert (=> b!52128 m!56041))

(assert (=> b!52130 m!56041))

(push 1)

(assert (not b!52130))

(assert (not b!52126))

(assert (not b!52128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

