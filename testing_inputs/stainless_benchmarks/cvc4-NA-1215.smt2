; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8622 () Bool)

(assert start!8622)

(declare-fun b!59807 () Bool)

(declare-fun res!27759 () Bool)

(declare-fun e!31856 () Bool)

(assert (=> b!59807 (=> (not res!27759) (not e!31856))))

(declare-datatypes () ((List!532 (Cons!498 (head!835 (_ BitVec 32)) (tail!861 List!532)) (Nil!499))))

(declare-fun res!27407 () List!532)

(declare-datatypes () ((LList!8 (LNil!7) (LCons!7 (head!836 List!532) (tail!862 LList!8)))))

(declare-fun llist!21 () LList!8)

(declare-fun mergeReduce!0 (LList!8) List!532)

(declare-fun mergeMap!0 (LList!8) LList!8)

(assert (=> b!59807 (= res!27759 (= res!27407 (mergeReduce!0 (mergeMap!0 llist!21))))))

(declare-fun b!59808 () Bool)

(declare-fun e!31855 () Bool)

(assert (=> b!59808 (= e!31856 e!31855)))

(declare-fun res!27756 () Bool)

(assert (=> b!59808 (=> res!27756 e!31855)))

(declare-fun content!15 (List!532) (Set (_ BitVec 32)))

(declare-fun lContent!0 (LList!8) (Set (_ BitVec 32)))

(assert (=> b!59808 (= res!27756 (not (= (content!15 res!27407) (lContent!0 llist!21))))))

(declare-fun res!27757 () Bool)

(assert (=> start!8622 (=> (not res!27757) (not e!31856))))

(declare-fun lIsSorted!0 (LList!8) Bool)

(assert (=> start!8622 (= res!27757 (lIsSorted!0 llist!21))))

(assert (=> start!8622 e!31856))

(assert (=> start!8622 true))

(declare-fun b!59809 () Bool)

(declare-fun isSorted!4 (List!532) Bool)

(assert (=> b!59809 (= e!31855 (not (isSorted!4 res!27407)))))

(declare-fun b!59806 () Bool)

(declare-fun res!27758 () Bool)

(assert (=> b!59806 (=> (not res!27758) (not e!31856))))

(assert (=> b!59806 (= res!27758 (and (not (is-LNil!7 llist!21)) (not (is-LNil!7 (tail!862 llist!21)))))))

(assert (= (and start!8622 res!27757) b!59806))

(assert (= (and b!59806 res!27758) b!59807))

(assert (= (and b!59807 res!27759) b!59808))

(assert (= (and b!59808 (not res!27756)) b!59809))

(declare-fun m!64674 () Bool)

(assert (=> b!59807 m!64674))

(assert (=> b!59807 m!64674))

(declare-fun m!64676 () Bool)

(assert (=> b!59807 m!64676))

(declare-fun m!64678 () Bool)

(assert (=> b!59808 m!64678))

(declare-fun m!64680 () Bool)

(assert (=> b!59808 m!64680))

(declare-fun m!64682 () Bool)

(assert (=> start!8622 m!64682))

(declare-fun m!64684 () Bool)

(assert (=> b!59809 m!64684))

(push 1)

(assert (not b!59809))

(assert (not b!59808))

(assert (not start!8622))

(assert (not b!59807))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51245 () Bool)

(declare-fun res!27764 () Bool)

(declare-fun e!31861 () Bool)

(assert (=> d!51245 (=> res!27764 e!31861)))

(assert (=> d!51245 (= res!27764 (or (is-Nil!499 res!27407) (and (is-Cons!498 res!27407) (is-Nil!499 (tail!861 res!27407)))))))

(assert (=> d!51245 (= (isSorted!4 res!27407) e!31861)))

(declare-fun b!59814 () Bool)

(declare-fun e!31862 () Bool)

(assert (=> b!59814 (= e!31861 e!31862)))

(declare-fun res!27765 () Bool)

(assert (=> b!59814 (=> (not res!27765) (not e!31862))))

(assert (=> b!59814 (= res!27765 (not (and (is-Cons!498 res!27407) (is-Cons!498 (tail!861 res!27407)) (bvsgt (head!835 res!27407) (head!835 (tail!861 res!27407))))))))

(declare-fun b!59815 () Bool)

(assert (=> b!59815 (= e!31862 (isSorted!4 (tail!861 res!27407)))))

(assert (= (and d!51245 (not res!27764)) b!59814))

(assert (= (and b!59814 res!27765) b!59815))

(declare-fun m!64686 () Bool)

(assert (=> b!59815 m!64686))

(assert (=> b!59809 d!51245))

(declare-fun d!51247 () Bool)

(declare-fun c!12966 () Bool)

(assert (=> d!51247 (= c!12966 (is-Nil!499 res!27407))))

(declare-fun e!31865 () (Set (_ BitVec 32)))

(assert (=> d!51247 (= (content!15 res!27407) e!31865)))

(declare-fun b!59820 () Bool)

(assert (=> b!59820 (= e!31865 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59821 () Bool)

(assert (=> b!59821 (= e!31865 (union (insert (head!835 res!27407) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!861 res!27407))))))

(assert (= (and d!51247 c!12966) b!59820))

(assert (= (and d!51247 (not c!12966)) b!59821))

(declare-fun m!64688 () Bool)

(assert (=> b!59821 m!64688))

(declare-fun m!64690 () Bool)

(assert (=> b!59821 m!64690))

(assert (=> b!59808 d!51247))

(declare-fun d!51249 () Bool)

(declare-fun c!12969 () Bool)

(assert (=> d!51249 (= c!12969 (is-LNil!7 llist!21))))

(declare-fun e!31868 () (Set (_ BitVec 32)))

(assert (=> d!51249 (= (lContent!0 llist!21) e!31868)))

(declare-fun b!59826 () Bool)

(assert (=> b!59826 (= e!31868 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59827 () Bool)

(assert (=> b!59827 (= e!31868 (union (content!15 (head!836 llist!21)) (lContent!0 (tail!862 llist!21))))))

(assert (= (and d!51249 c!12969) b!59826))

(assert (= (and d!51249 (not c!12969)) b!59827))

(declare-fun m!64692 () Bool)

(assert (=> b!59827 m!64692))

(declare-fun m!64694 () Bool)

(assert (=> b!59827 m!64694))

(assert (=> b!59808 d!51249))

(declare-fun d!51251 () Bool)

(declare-fun res!27770 () Bool)

(declare-fun e!31873 () Bool)

(assert (=> d!51251 (=> res!27770 e!31873)))

(assert (=> d!51251 (= res!27770 (is-LNil!7 llist!21))))

(assert (=> d!51251 (= (lIsSorted!0 llist!21) e!31873)))

(declare-fun b!59832 () Bool)

(declare-fun e!31874 () Bool)

(assert (=> b!59832 (= e!31873 e!31874)))

(declare-fun res!27771 () Bool)

(assert (=> b!59832 (=> (not res!27771) (not e!31874))))

(assert (=> b!59832 (= res!27771 (isSorted!4 (head!836 llist!21)))))

(declare-fun b!59833 () Bool)

(assert (=> b!59833 (= e!31874 (lIsSorted!0 (tail!862 llist!21)))))

(assert (= (and d!51251 (not res!27770)) b!59832))

(assert (= (and b!59832 res!27771) b!59833))

(declare-fun m!64696 () Bool)

(assert (=> b!59832 m!64696))

(declare-fun m!64698 () Bool)

(assert (=> b!59833 m!64698))

(assert (=> start!8622 d!51251))

(declare-fun b!59844 () Bool)

(declare-fun e!31883 () List!532)

(assert (=> b!59844 (= e!31883 (head!836 (mergeMap!0 llist!21)))))

(declare-fun b!59845 () Bool)

(assert (=> b!59845 (= e!31883 (mergeReduce!0 (mergeMap!0 (mergeMap!0 llist!21))))))

(declare-fun d!51253 () Bool)

(declare-fun e!31881 () Bool)

(assert (=> d!51253 e!31881))

(declare-fun res!27775 () Bool)

(assert (=> d!51253 (=> (not res!27775) (not e!31881))))

(declare-fun lt!11090 () List!532)

(assert (=> d!51253 (= res!27775 (= (content!15 lt!11090) (lContent!0 (mergeMap!0 llist!21))))))

(declare-fun e!31882 () List!532)

(assert (=> d!51253 (= lt!11090 e!31882)))

(declare-fun c!12974 () Bool)

(assert (=> d!51253 (= c!12974 (is-LNil!7 (mergeMap!0 llist!21)))))

(assert (=> d!51253 (lIsSorted!0 (mergeMap!0 llist!21))))

(assert (=> d!51253 (= (mergeReduce!0 (mergeMap!0 llist!21)) lt!11090)))

(declare-fun b!59846 () Bool)

(assert (=> b!59846 (= e!31882 e!31883)))

(declare-fun c!12975 () Bool)

(assert (=> b!59846 (= c!12975 (and (is-LCons!7 (mergeMap!0 llist!21)) (is-LNil!7 (tail!862 (mergeMap!0 llist!21)))))))

(declare-fun b!59847 () Bool)

(assert (=> b!59847 (= e!31882 Nil!499)))

(declare-fun b!59848 () Bool)

(assert (=> b!59848 (= e!31881 (isSorted!4 lt!11090))))

(assert (= (and b!59846 c!12975) b!59844))

(assert (= (and b!59846 (not c!12975)) b!59845))

(assert (= (and d!51253 c!12974) b!59847))

(assert (= (and d!51253 (not c!12974)) b!59846))

(assert (= (and d!51253 res!27775) b!59848))

(assert (=> b!59845 m!64674))

(declare-fun m!64700 () Bool)

(assert (=> b!59845 m!64700))

(assert (=> b!59845 m!64700))

(declare-fun m!64702 () Bool)

(assert (=> b!59845 m!64702))

(declare-fun m!64704 () Bool)

(assert (=> d!51253 m!64704))

(assert (=> d!51253 m!64674))

(declare-fun m!64706 () Bool)

(assert (=> d!51253 m!64706))

(assert (=> d!51253 m!64674))

(declare-fun m!64708 () Bool)

(assert (=> d!51253 m!64708))

(declare-fun m!64710 () Bool)

(assert (=> b!59848 m!64710))

(assert (=> b!59807 d!51253))

(declare-fun b!59863 () Bool)

(declare-fun e!31894 () LList!8)

(assert (=> b!59863 (= e!31894 LNil!7)))

(declare-fun b!59864 () Bool)

(declare-fun e!31892 () Bool)

(declare-fun lt!11093 () LList!8)

(declare-fun lSize!0 (LList!8) Int)

(assert (=> b!59864 (= e!31892 (< (lSize!0 lt!11093) (lSize!0 llist!21)))))

(declare-fun b!59865 () Bool)

(declare-fun e!31895 () LList!8)

(declare-fun mergeFast!0 (List!532 List!532) List!532)

(assert (=> b!59865 (= e!31895 (LCons!7 (mergeFast!0 (head!836 llist!21) (head!836 (tail!862 llist!21))) (mergeMap!0 (tail!862 (tail!862 llist!21)))))))

(declare-fun d!51255 () Bool)

(declare-fun e!31893 () Bool)

(assert (=> d!51255 e!31893))

(declare-fun res!27783 () Bool)

(assert (=> d!51255 (=> (not res!27783) (not e!31893))))

(assert (=> d!51255 (= res!27783 (= (lContent!0 lt!11093) (lContent!0 llist!21)))))

(assert (=> d!51255 (= lt!11093 e!31894)))

(declare-fun c!12981 () Bool)

(assert (=> d!51255 (= c!12981 (is-LNil!7 llist!21))))

(assert (=> d!51255 (lIsSorted!0 llist!21)))

(assert (=> d!51255 (= (mergeMap!0 llist!21) lt!11093)))

(declare-fun b!59866 () Bool)

(assert (=> b!59866 (= e!31893 e!31892)))

(declare-fun res!27784 () Bool)

(assert (=> b!59866 (=> res!27784 e!31892)))

(assert (=> b!59866 (= res!27784 (<= (lSize!0 llist!21) 1))))

(declare-fun b!59867 () Bool)

(declare-fun res!27785 () Bool)

(assert (=> b!59867 (=> (not res!27785) (not e!31893))))

(assert (=> b!59867 (= res!27785 (lIsSorted!0 lt!11093))))

(declare-fun b!59868 () Bool)

(assert (=> b!59868 (= e!31894 e!31895)))

(declare-fun c!12980 () Bool)

(assert (=> b!59868 (= c!12980 (and (is-LCons!7 llist!21) (is-LNil!7 (tail!862 llist!21))))))

(declare-fun b!59869 () Bool)

(assert (=> b!59869 (= e!31895 llist!21)))

(assert (= (and b!59868 c!12980) b!59869))

(assert (= (and b!59868 (not c!12980)) b!59865))

(assert (= (and d!51255 c!12981) b!59863))

(assert (= (and d!51255 (not c!12981)) b!59868))

(assert (= (and d!51255 res!27783) b!59867))

(assert (= (and b!59867 res!27785) b!59866))

(assert (= (and b!59866 (not res!27784)) b!59864))

(declare-fun m!64712 () Bool)

(assert (=> d!51255 m!64712))

(assert (=> d!51255 m!64680))

(assert (=> d!51255 m!64682))

(declare-fun m!64714 () Bool)

(assert (=> b!59866 m!64714))

(declare-fun m!64716 () Bool)

(assert (=> b!59864 m!64716))

(assert (=> b!59864 m!64714))

(declare-fun m!64718 () Bool)

(assert (=> b!59865 m!64718))

(declare-fun m!64720 () Bool)

(assert (=> b!59865 m!64720))

(declare-fun m!64722 () Bool)

(assert (=> b!59867 m!64722))

(assert (=> b!59807 d!51255))

(push 1)

(assert (not b!59865))

(assert (not b!59832))

(assert (not d!51253))

(assert (not d!51255))

(assert (not b!59815))

(assert (not b!59866))

(assert (not b!59821))

(assert (not b!59827))

(assert (not b!59833))

(assert (not b!59864))

(assert (not b!59848))

(assert (not b!59867))

(assert (not b!59845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

