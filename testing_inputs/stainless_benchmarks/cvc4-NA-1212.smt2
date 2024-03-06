; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8596 () Bool)

(assert start!8596)

(declare-fun res!27679 () Bool)

(declare-fun e!31773 () Bool)

(assert (=> start!8596 (=> (not res!27679) (not e!31773))))

(declare-datatypes () ((List!529 (Cons!495 (head!829 (_ BitVec 32)) (tail!855 List!529)) (Nil!496))))

(declare-datatypes () ((LList!5 (LNil!4) (LCons!4 (head!830 List!529) (tail!856 LList!5)))))

(declare-fun llist!21 () LList!5)

(declare-fun lIsSorted!0 (LList!5) Bool)

(assert (=> start!8596 (= res!27679 (lIsSorted!0 llist!21))))

(assert (=> start!8596 e!31773))

(assert (=> start!8596 true))

(declare-fun b!59688 () Bool)

(declare-fun res!27680 () Bool)

(assert (=> b!59688 (=> (not res!27680) (not e!31773))))

(assert (=> b!59688 (= res!27680 (and (not (is-LNil!4 llist!21)) (not (is-LNil!4 (tail!856 llist!21)))))))

(declare-fun b!59689 () Bool)

(declare-fun res!27681 () Bool)

(assert (=> b!59689 (=> (not res!27681) (not e!31773))))

(declare-fun llist!30 () LList!5)

(declare-fun mergeMap!0 (LList!5) LList!5)

(assert (=> b!59689 (= res!27681 (= llist!30 (mergeMap!0 llist!21)))))

(declare-fun b!59690 () Bool)

(assert (=> b!59690 (= e!31773 (not (lIsSorted!0 llist!30)))))

(assert (= (and start!8596 res!27679) b!59688))

(assert (= (and b!59688 res!27680) b!59689))

(assert (= (and b!59689 res!27681) b!59690))

(declare-fun m!64582 () Bool)

(assert (=> start!8596 m!64582))

(declare-fun m!64584 () Bool)

(assert (=> b!59689 m!64584))

(declare-fun m!64586 () Bool)

(assert (=> b!59690 m!64586))

(push 1)

(assert (not b!59690))

(assert (not b!59689))

(assert (not start!8596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51211 () Bool)

(declare-fun res!27686 () Bool)

(declare-fun e!31778 () Bool)

(assert (=> d!51211 (=> res!27686 e!31778)))

(assert (=> d!51211 (= res!27686 (is-LNil!4 llist!30))))

(assert (=> d!51211 (= (lIsSorted!0 llist!30) e!31778)))

(declare-fun b!59695 () Bool)

(declare-fun e!31779 () Bool)

(assert (=> b!59695 (= e!31778 e!31779)))

(declare-fun res!27687 () Bool)

(assert (=> b!59695 (=> (not res!27687) (not e!31779))))

(declare-fun isSorted!4 (List!529) Bool)

(assert (=> b!59695 (= res!27687 (isSorted!4 (head!830 llist!30)))))

(declare-fun b!59696 () Bool)

(assert (=> b!59696 (= e!31779 (lIsSorted!0 (tail!856 llist!30)))))

(assert (= (and d!51211 (not res!27686)) b!59695))

(assert (= (and b!59695 res!27687) b!59696))

(declare-fun m!64588 () Bool)

(assert (=> b!59695 m!64588))

(declare-fun m!64590 () Bool)

(assert (=> b!59696 m!64590))

(assert (=> b!59690 d!51211))

(declare-fun b!59711 () Bool)

(declare-fun e!31789 () LList!5)

(assert (=> b!59711 (= e!31789 llist!21)))

(declare-fun b!59712 () Bool)

(declare-fun res!27697 () Bool)

(declare-fun e!31790 () Bool)

(assert (=> b!59712 (=> (not res!27697) (not e!31790))))

(declare-fun lt!11087 () LList!5)

(assert (=> b!59712 (= res!27697 (lIsSorted!0 lt!11087))))

(declare-fun b!59713 () Bool)

(declare-fun e!31788 () Bool)

(assert (=> b!59713 (= e!31790 e!31788)))

(declare-fun res!27696 () Bool)

(assert (=> b!59713 (=> res!27696 e!31788)))

(declare-fun lSize!0 (LList!5) Int)

(assert (=> b!59713 (= res!27696 (<= (lSize!0 llist!21) 1))))

(declare-fun d!51213 () Bool)

(assert (=> d!51213 e!31790))

(declare-fun res!27695 () Bool)

(assert (=> d!51213 (=> (not res!27695) (not e!31790))))

(declare-fun lContent!0 (LList!5) (Set (_ BitVec 32)))

(assert (=> d!51213 (= res!27695 (= (lContent!0 lt!11087) (lContent!0 llist!21)))))

(declare-fun e!31791 () LList!5)

(assert (=> d!51213 (= lt!11087 e!31791)))

(declare-fun c!12948 () Bool)

(assert (=> d!51213 (= c!12948 (is-LNil!4 llist!21))))

(assert (=> d!51213 (lIsSorted!0 llist!21)))

(assert (=> d!51213 (= (mergeMap!0 llist!21) lt!11087)))

(declare-fun b!59714 () Bool)

(assert (=> b!59714 (= e!31791 e!31789)))

(declare-fun c!12947 () Bool)

(assert (=> b!59714 (= c!12947 (and (is-LCons!4 llist!21) (is-LNil!4 (tail!856 llist!21))))))

(declare-fun b!59715 () Bool)

(assert (=> b!59715 (= e!31791 LNil!4)))

(declare-fun b!59716 () Bool)

(declare-fun mergeFast!0 (List!529 List!529) List!529)

(assert (=> b!59716 (= e!31789 (LCons!4 (mergeFast!0 (head!830 llist!21) (head!830 (tail!856 llist!21))) (mergeMap!0 (tail!856 (tail!856 llist!21)))))))

(declare-fun b!59717 () Bool)

(assert (=> b!59717 (= e!31788 (< (lSize!0 lt!11087) (lSize!0 llist!21)))))

(assert (= (and b!59714 c!12947) b!59711))

(assert (= (and b!59714 (not c!12947)) b!59716))

(assert (= (and d!51213 c!12948) b!59715))

(assert (= (and d!51213 (not c!12948)) b!59714))

(assert (= (and d!51213 res!27695) b!59712))

(assert (= (and b!59712 res!27697) b!59713))

(assert (= (and b!59713 (not res!27696)) b!59717))

(declare-fun m!64592 () Bool)

(assert (=> b!59717 m!64592))

(declare-fun m!64594 () Bool)

(assert (=> b!59717 m!64594))

(declare-fun m!64596 () Bool)

(assert (=> b!59712 m!64596))

(declare-fun m!64598 () Bool)

(assert (=> b!59716 m!64598))

(declare-fun m!64600 () Bool)

(assert (=> b!59716 m!64600))

(assert (=> b!59713 m!64594))

(declare-fun m!64602 () Bool)

(assert (=> d!51213 m!64602))

(declare-fun m!64604 () Bool)

(assert (=> d!51213 m!64604))

(assert (=> d!51213 m!64582))

(assert (=> b!59689 d!51213))

(declare-fun d!51215 () Bool)

(declare-fun res!27698 () Bool)

(declare-fun e!31792 () Bool)

(assert (=> d!51215 (=> res!27698 e!31792)))

(assert (=> d!51215 (= res!27698 (is-LNil!4 llist!21))))

(assert (=> d!51215 (= (lIsSorted!0 llist!21) e!31792)))

(declare-fun b!59718 () Bool)

(declare-fun e!31793 () Bool)

(assert (=> b!59718 (= e!31792 e!31793)))

(declare-fun res!27699 () Bool)

(assert (=> b!59718 (=> (not res!27699) (not e!31793))))

(assert (=> b!59718 (= res!27699 (isSorted!4 (head!830 llist!21)))))

(declare-fun b!59719 () Bool)

(assert (=> b!59719 (= e!31793 (lIsSorted!0 (tail!856 llist!21)))))

(assert (= (and d!51215 (not res!27698)) b!59718))

(assert (= (and b!59718 res!27699) b!59719))

(declare-fun m!64606 () Bool)

(assert (=> b!59718 m!64606))

(declare-fun m!64608 () Bool)

(assert (=> b!59719 m!64608))

(assert (=> start!8596 d!51215))

(push 1)

(assert (not b!59716))

(assert (not b!59719))

(assert (not b!59696))

(assert (not b!59718))

(assert (not b!59695))

(assert (not b!59717))

(assert (not b!59713))

(assert (not d!51213))

(assert (not b!59712))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

