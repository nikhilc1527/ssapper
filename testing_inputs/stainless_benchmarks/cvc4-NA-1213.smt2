; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8602 () Bool)

(assert start!8602)

(declare-fun res!27708 () Bool)

(declare-fun e!31798 () Bool)

(assert (=> start!8602 (=> (not res!27708) (not e!31798))))

(declare-datatypes () ((List!530 (Cons!496 (head!831 (_ BitVec 32)) (tail!857 List!530)) (Nil!497))))

(declare-datatypes () ((LList!6 (LNil!5) (LCons!5 (head!832 List!530) (tail!858 LList!6)))))

(declare-fun llist!21 () LList!6)

(declare-fun lIsSorted!0 (LList!6) Bool)

(assert (=> start!8602 (= res!27708 (lIsSorted!0 llist!21))))

(assert (=> start!8602 e!31798))

(assert (=> start!8602 true))

(declare-fun b!59726 () Bool)

(declare-fun res!27706 () Bool)

(assert (=> b!59726 (=> (not res!27706) (not e!31798))))

(declare-fun res!27405 () List!530)

(assert (=> b!59726 (= res!27706 (and (is-LNil!5 llist!21) (= res!27405 Nil!497)))))

(declare-fun b!59727 () Bool)

(declare-fun e!31799 () Bool)

(assert (=> b!59727 (= e!31798 e!31799)))

(declare-fun res!27707 () Bool)

(assert (=> b!59727 (=> res!27707 e!31799)))

(declare-fun content!15 (List!530) (Set (_ BitVec 32)))

(declare-fun lContent!0 (LList!6) (Set (_ BitVec 32)))

(assert (=> b!59727 (= res!27707 (not (= (content!15 res!27405) (lContent!0 llist!21))))))

(declare-fun b!59728 () Bool)

(declare-fun isSorted!4 (List!530) Bool)

(assert (=> b!59728 (= e!31799 (not (isSorted!4 res!27405)))))

(assert (= (and start!8602 res!27708) b!59726))

(assert (= (and b!59726 res!27706) b!59727))

(assert (= (and b!59727 (not res!27707)) b!59728))

(declare-fun m!64610 () Bool)

(assert (=> start!8602 m!64610))

(declare-fun m!64612 () Bool)

(assert (=> b!59727 m!64612))

(declare-fun m!64614 () Bool)

(assert (=> b!59727 m!64614))

(declare-fun m!64616 () Bool)

(assert (=> b!59728 m!64616))

(push 1)

(assert (not b!59728))

(assert (not b!59727))

(assert (not start!8602))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51217 () Bool)

(declare-fun res!27713 () Bool)

(declare-fun e!31804 () Bool)

(assert (=> d!51217 (=> res!27713 e!31804)))

(assert (=> d!51217 (= res!27713 (or (is-Nil!497 res!27405) (and (is-Cons!496 res!27405) (is-Nil!497 (tail!857 res!27405)))))))

(assert (=> d!51217 (= (isSorted!4 res!27405) e!31804)))

(declare-fun b!59733 () Bool)

(declare-fun e!31805 () Bool)

(assert (=> b!59733 (= e!31804 e!31805)))

(declare-fun res!27714 () Bool)

(assert (=> b!59733 (=> (not res!27714) (not e!31805))))

(assert (=> b!59733 (= res!27714 (not (and (is-Cons!496 res!27405) (is-Cons!496 (tail!857 res!27405)) (bvsgt (head!831 res!27405) (head!831 (tail!857 res!27405))))))))

(declare-fun b!59734 () Bool)

(assert (=> b!59734 (= e!31805 (isSorted!4 (tail!857 res!27405)))))

(assert (= (and d!51217 (not res!27713)) b!59733))

(assert (= (and b!59733 res!27714) b!59734))

(declare-fun m!64618 () Bool)

(assert (=> b!59734 m!64618))

(assert (=> b!59728 d!51217))

(declare-fun d!51219 () Bool)

(declare-fun c!12951 () Bool)

(assert (=> d!51219 (= c!12951 (is-Nil!497 res!27405))))

(declare-fun e!31808 () (Set (_ BitVec 32)))

(assert (=> d!51219 (= (content!15 res!27405) e!31808)))

(declare-fun b!59739 () Bool)

(assert (=> b!59739 (= e!31808 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59740 () Bool)

(assert (=> b!59740 (= e!31808 (union (insert (head!831 res!27405) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!857 res!27405))))))

(assert (= (and d!51219 c!12951) b!59739))

(assert (= (and d!51219 (not c!12951)) b!59740))

(declare-fun m!64620 () Bool)

(assert (=> b!59740 m!64620))

(declare-fun m!64622 () Bool)

(assert (=> b!59740 m!64622))

(assert (=> b!59727 d!51219))

(declare-fun d!51221 () Bool)

(declare-fun c!12954 () Bool)

(assert (=> d!51221 (= c!12954 (is-LNil!5 llist!21))))

(declare-fun e!31811 () (Set (_ BitVec 32)))

(assert (=> d!51221 (= (lContent!0 llist!21) e!31811)))

(declare-fun b!59745 () Bool)

(assert (=> b!59745 (= e!31811 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59746 () Bool)

(assert (=> b!59746 (= e!31811 (union (content!15 (head!832 llist!21)) (lContent!0 (tail!858 llist!21))))))

(assert (= (and d!51221 c!12954) b!59745))

(assert (= (and d!51221 (not c!12954)) b!59746))

(declare-fun m!64624 () Bool)

(assert (=> b!59746 m!64624))

(declare-fun m!64626 () Bool)

(assert (=> b!59746 m!64626))

(assert (=> b!59727 d!51221))

(declare-fun d!51223 () Bool)

(declare-fun res!27719 () Bool)

(declare-fun e!31816 () Bool)

(assert (=> d!51223 (=> res!27719 e!31816)))

(assert (=> d!51223 (= res!27719 (is-LNil!5 llist!21))))

(assert (=> d!51223 (= (lIsSorted!0 llist!21) e!31816)))

(declare-fun b!59751 () Bool)

(declare-fun e!31817 () Bool)

(assert (=> b!59751 (= e!31816 e!31817)))

(declare-fun res!27720 () Bool)

(assert (=> b!59751 (=> (not res!27720) (not e!31817))))

(assert (=> b!59751 (= res!27720 (isSorted!4 (head!832 llist!21)))))

(declare-fun b!59752 () Bool)

(assert (=> b!59752 (= e!31817 (lIsSorted!0 (tail!858 llist!21)))))

(assert (= (and d!51223 (not res!27719)) b!59751))

(assert (= (and b!59751 res!27720) b!59752))

(declare-fun m!64628 () Bool)

(assert (=> b!59751 m!64628))

(declare-fun m!64630 () Bool)

(assert (=> b!59752 m!64630))

(assert (=> start!8602 d!51223))

(push 1)

(assert (not b!59752))

(assert (not b!59746))

(assert (not b!59740))

(assert (not b!59751))

(assert (not b!59734))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

