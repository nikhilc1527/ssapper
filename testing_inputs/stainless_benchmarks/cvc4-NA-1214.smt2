; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8612 () Bool)

(assert start!8612)

(declare-fun res!27727 () Bool)

(declare-fun e!31822 () Bool)

(assert (=> start!8612 (=> (not res!27727) (not e!31822))))

(declare-datatypes () ((List!531 (Cons!497 (head!833 (_ BitVec 32)) (tail!859 List!531)) (Nil!498))))

(declare-datatypes () ((LList!7 (LNil!6) (LCons!6 (head!834 List!531) (tail!860 LList!7)))))

(declare-fun llist!21 () LList!7)

(declare-fun lIsSorted!0 (LList!7) Bool)

(assert (=> start!8612 (= res!27727 (lIsSorted!0 llist!21))))

(assert (=> start!8612 e!31822))

(assert (=> start!8612 true))

(declare-fun b!59759 () Bool)

(declare-fun res!27729 () Bool)

(assert (=> b!59759 (=> (not res!27729) (not e!31822))))

(declare-fun res!27406 () List!531)

(assert (=> b!59759 (= res!27729 (and (not (is-LNil!6 llist!21)) (is-LNil!6 (tail!860 llist!21)) (= res!27406 (head!834 llist!21))))))

(declare-fun b!59760 () Bool)

(declare-fun e!31823 () Bool)

(assert (=> b!59760 (= e!31822 e!31823)))

(declare-fun res!27728 () Bool)

(assert (=> b!59760 (=> res!27728 e!31823)))

(declare-fun content!15 (List!531) (Set (_ BitVec 32)))

(declare-fun lContent!0 (LList!7) (Set (_ BitVec 32)))

(assert (=> b!59760 (= res!27728 (not (= (content!15 res!27406) (lContent!0 llist!21))))))

(declare-fun b!59761 () Bool)

(declare-fun isSorted!4 (List!531) Bool)

(assert (=> b!59761 (= e!31823 (not (isSorted!4 res!27406)))))

(assert (= (and start!8612 res!27727) b!59759))

(assert (= (and b!59759 res!27729) b!59760))

(assert (= (and b!59760 (not res!27728)) b!59761))

(declare-fun m!64632 () Bool)

(assert (=> start!8612 m!64632))

(declare-fun m!64634 () Bool)

(assert (=> b!59760 m!64634))

(declare-fun m!64636 () Bool)

(assert (=> b!59760 m!64636))

(declare-fun m!64638 () Bool)

(assert (=> b!59761 m!64638))

(push 1)

(assert (not b!59761))

(assert (not b!59760))

(assert (not start!8612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51225 () Bool)

(declare-fun res!27734 () Bool)

(declare-fun e!31828 () Bool)

(assert (=> d!51225 (=> res!27734 e!31828)))

(assert (=> d!51225 (= res!27734 (or (is-Nil!498 res!27406) (and (is-Cons!497 res!27406) (is-Nil!498 (tail!859 res!27406)))))))

(assert (=> d!51225 (= (isSorted!4 res!27406) e!31828)))

(declare-fun b!59766 () Bool)

(declare-fun e!31829 () Bool)

(assert (=> b!59766 (= e!31828 e!31829)))

(declare-fun res!27735 () Bool)

(assert (=> b!59766 (=> (not res!27735) (not e!31829))))

(assert (=> b!59766 (= res!27735 (not (and (is-Cons!497 res!27406) (is-Cons!497 (tail!859 res!27406)) (bvsgt (head!833 res!27406) (head!833 (tail!859 res!27406))))))))

(declare-fun b!59767 () Bool)

(assert (=> b!59767 (= e!31829 (isSorted!4 (tail!859 res!27406)))))

(assert (= (and d!51225 (not res!27734)) b!59766))

(assert (= (and b!59766 res!27735) b!59767))

(declare-fun m!64640 () Bool)

(assert (=> b!59767 m!64640))

(assert (=> b!59761 d!51225))

(declare-fun d!51227 () Bool)

(declare-fun c!12957 () Bool)

(assert (=> d!51227 (= c!12957 (is-Nil!498 res!27406))))

(declare-fun e!31832 () (Set (_ BitVec 32)))

(assert (=> d!51227 (= (content!15 res!27406) e!31832)))

(declare-fun b!59772 () Bool)

(assert (=> b!59772 (= e!31832 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59773 () Bool)

(assert (=> b!59773 (= e!31832 (union (insert (head!833 res!27406) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!859 res!27406))))))

(assert (= (and d!51227 c!12957) b!59772))

(assert (= (and d!51227 (not c!12957)) b!59773))

(declare-fun m!64642 () Bool)

(assert (=> b!59773 m!64642))

(declare-fun m!64644 () Bool)

(assert (=> b!59773 m!64644))

(assert (=> b!59760 d!51227))

(declare-fun d!51229 () Bool)

(declare-fun c!12960 () Bool)

(assert (=> d!51229 (= c!12960 (is-LNil!6 llist!21))))

(declare-fun e!31835 () (Set (_ BitVec 32)))

(assert (=> d!51229 (= (lContent!0 llist!21) e!31835)))

(declare-fun b!59778 () Bool)

(assert (=> b!59778 (= e!31835 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59779 () Bool)

(assert (=> b!59779 (= e!31835 (union (content!15 (head!834 llist!21)) (lContent!0 (tail!860 llist!21))))))

(assert (= (and d!51229 c!12960) b!59778))

(assert (= (and d!51229 (not c!12960)) b!59779))

(declare-fun m!64646 () Bool)

(assert (=> b!59779 m!64646))

(declare-fun m!64648 () Bool)

(assert (=> b!59779 m!64648))

(assert (=> b!59760 d!51229))

(declare-fun d!51231 () Bool)

(declare-fun res!27740 () Bool)

(declare-fun e!31840 () Bool)

(assert (=> d!51231 (=> res!27740 e!31840)))

(assert (=> d!51231 (= res!27740 (is-LNil!6 llist!21))))

(assert (=> d!51231 (= (lIsSorted!0 llist!21) e!31840)))

(declare-fun b!59784 () Bool)

(declare-fun e!31841 () Bool)

(assert (=> b!59784 (= e!31840 e!31841)))

(declare-fun res!27741 () Bool)

(assert (=> b!59784 (=> (not res!27741) (not e!31841))))

(assert (=> b!59784 (= res!27741 (isSorted!4 (head!834 llist!21)))))

(declare-fun b!59785 () Bool)

(assert (=> b!59785 (= e!31841 (lIsSorted!0 (tail!860 llist!21)))))

(assert (= (and d!51231 (not res!27740)) b!59784))

(assert (= (and b!59784 res!27741) b!59785))

(declare-fun m!64650 () Bool)

(assert (=> b!59784 m!64650))

(declare-fun m!64652 () Bool)

(assert (=> b!59785 m!64652))

(assert (=> start!8612 d!51231))

(push 1)

(assert (not b!59785))

(assert (not b!59773))

(assert (not b!59779))

(assert (not b!59767))

(assert (not b!59784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51233 () Bool)

(declare-fun res!27742 () Bool)

(declare-fun e!31842 () Bool)

(assert (=> d!51233 (=> res!27742 e!31842)))

(assert (=> d!51233 (= res!27742 (or (is-Nil!498 (head!834 llist!21)) (and (is-Cons!497 (head!834 llist!21)) (is-Nil!498 (tail!859 (head!834 llist!21))))))))

(assert (=> d!51233 (= (isSorted!4 (head!834 llist!21)) e!31842)))

(declare-fun b!59786 () Bool)

(declare-fun e!31843 () Bool)

(assert (=> b!59786 (= e!31842 e!31843)))

(declare-fun res!27743 () Bool)

(assert (=> b!59786 (=> (not res!27743) (not e!31843))))

(assert (=> b!59786 (= res!27743 (not (and (is-Cons!497 (head!834 llist!21)) (is-Cons!497 (tail!859 (head!834 llist!21))) (bvsgt (head!833 (head!834 llist!21)) (head!833 (tail!859 (head!834 llist!21)))))))))

(declare-fun b!59787 () Bool)

(assert (=> b!59787 (= e!31843 (isSorted!4 (tail!859 (head!834 llist!21))))))

(assert (= (and d!51233 (not res!27742)) b!59786))

(assert (= (and b!59786 res!27743) b!59787))

(declare-fun m!64654 () Bool)

(assert (=> b!59787 m!64654))

(assert (=> b!59784 d!51233))

(declare-fun d!51235 () Bool)

(declare-fun c!12961 () Bool)

(assert (=> d!51235 (= c!12961 (is-Nil!498 (head!834 llist!21)))))

(declare-fun e!31844 () (Set (_ BitVec 32)))

(assert (=> d!51235 (= (content!15 (head!834 llist!21)) e!31844)))

(declare-fun b!59788 () Bool)

(assert (=> b!59788 (= e!31844 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59789 () Bool)

(assert (=> b!59789 (= e!31844 (union (insert (head!833 (head!834 llist!21)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!859 (head!834 llist!21)))))))

(assert (= (and d!51235 c!12961) b!59788))

(assert (= (and d!51235 (not c!12961)) b!59789))

(declare-fun m!64656 () Bool)

(assert (=> b!59789 m!64656))

(declare-fun m!64658 () Bool)

(assert (=> b!59789 m!64658))

(assert (=> b!59779 d!51235))

(declare-fun d!51237 () Bool)

(declare-fun c!12962 () Bool)

(assert (=> d!51237 (= c!12962 (is-LNil!6 (tail!860 llist!21)))))

(declare-fun e!31845 () (Set (_ BitVec 32)))

(assert (=> d!51237 (= (lContent!0 (tail!860 llist!21)) e!31845)))

(declare-fun b!59790 () Bool)

(assert (=> b!59790 (= e!31845 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59791 () Bool)

(assert (=> b!59791 (= e!31845 (union (content!15 (head!834 (tail!860 llist!21))) (lContent!0 (tail!860 (tail!860 llist!21)))))))

(assert (= (and d!51237 c!12962) b!59790))

(assert (= (and d!51237 (not c!12962)) b!59791))

(declare-fun m!64660 () Bool)

(assert (=> b!59791 m!64660))

(declare-fun m!64662 () Bool)

(assert (=> b!59791 m!64662))

(assert (=> b!59779 d!51237))

(declare-fun d!51239 () Bool)

(declare-fun res!27744 () Bool)

(declare-fun e!31846 () Bool)

(assert (=> d!51239 (=> res!27744 e!31846)))

(assert (=> d!51239 (= res!27744 (is-LNil!6 (tail!860 llist!21)))))

(assert (=> d!51239 (= (lIsSorted!0 (tail!860 llist!21)) e!31846)))

(declare-fun b!59792 () Bool)

(declare-fun e!31847 () Bool)

(assert (=> b!59792 (= e!31846 e!31847)))

(declare-fun res!27745 () Bool)

(assert (=> b!59792 (=> (not res!27745) (not e!31847))))

(assert (=> b!59792 (= res!27745 (isSorted!4 (head!834 (tail!860 llist!21))))))

(declare-fun b!59793 () Bool)

(assert (=> b!59793 (= e!31847 (lIsSorted!0 (tail!860 (tail!860 llist!21))))))

(assert (= (and d!51239 (not res!27744)) b!59792))

(assert (= (and b!59792 res!27745) b!59793))

(declare-fun m!64664 () Bool)

(assert (=> b!59792 m!64664))

(declare-fun m!64666 () Bool)

(assert (=> b!59793 m!64666))

(assert (=> b!59785 d!51239))

(declare-fun d!51241 () Bool)

(declare-fun c!12963 () Bool)

(assert (=> d!51241 (= c!12963 (is-Nil!498 (tail!859 res!27406)))))

(declare-fun e!31848 () (Set (_ BitVec 32)))

(assert (=> d!51241 (= (content!15 (tail!859 res!27406)) e!31848)))

(declare-fun b!59794 () Bool)

(assert (=> b!59794 (= e!31848 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59795 () Bool)

(assert (=> b!59795 (= e!31848 (union (insert (head!833 (tail!859 res!27406)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!859 (tail!859 res!27406)))))))

(assert (= (and d!51241 c!12963) b!59794))

(assert (= (and d!51241 (not c!12963)) b!59795))

(declare-fun m!64668 () Bool)

(assert (=> b!59795 m!64668))

(declare-fun m!64670 () Bool)

(assert (=> b!59795 m!64670))

(assert (=> b!59773 d!51241))

(declare-fun d!51243 () Bool)

(declare-fun res!27746 () Bool)

(declare-fun e!31849 () Bool)

(assert (=> d!51243 (=> res!27746 e!31849)))

(assert (=> d!51243 (= res!27746 (or (is-Nil!498 (tail!859 res!27406)) (and (is-Cons!497 (tail!859 res!27406)) (is-Nil!498 (tail!859 (tail!859 res!27406))))))))

(assert (=> d!51243 (= (isSorted!4 (tail!859 res!27406)) e!31849)))

(declare-fun b!59796 () Bool)

(declare-fun e!31850 () Bool)

(assert (=> b!59796 (= e!31849 e!31850)))

(declare-fun res!27747 () Bool)

(assert (=> b!59796 (=> (not res!27747) (not e!31850))))

(assert (=> b!59796 (= res!27747 (not (and (is-Cons!497 (tail!859 res!27406)) (is-Cons!497 (tail!859 (tail!859 res!27406))) (bvsgt (head!833 (tail!859 res!27406)) (head!833 (tail!859 (tail!859 res!27406)))))))))

(declare-fun b!59797 () Bool)

(assert (=> b!59797 (= e!31850 (isSorted!4 (tail!859 (tail!859 res!27406))))))

(assert (= (and d!51243 (not res!27746)) b!59796))

(assert (= (and b!59796 res!27747) b!59797))

(declare-fun m!64672 () Bool)

(assert (=> b!59797 m!64672))

(assert (=> b!59767 d!51243))

(push 1)

(assert (not b!59791))

(assert (not b!59795))

(assert (not b!59793))

(assert (not b!59792))

(assert (not b!59789))

(assert (not b!59797))

(assert (not b!59787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

