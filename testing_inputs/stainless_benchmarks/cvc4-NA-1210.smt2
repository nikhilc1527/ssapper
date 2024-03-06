; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8586 () Bool)

(assert start!8586)

(declare-fun res!27655 () Bool)

(declare-fun e!31749 () Bool)

(assert (=> start!8586 (=> (not res!27655) (not e!31749))))

(declare-datatypes () ((List!527 (Cons!493 (head!825 (_ BitVec 32)) (tail!851 List!527)) (Nil!494))))

(declare-fun res!27372 () List!527)

(declare-fun in!11 () List!527)

(declare-datatypes () ((LList!3 (LNil!2) (LCons!2 (head!826 List!527) (tail!852 LList!3)))))

(declare-fun mergeReduce!0 (LList!3) List!527)

(declare-fun toLList!0 (List!527) LList!3)

(assert (=> start!8586 (= res!27655 (= res!27372 (mergeReduce!0 (toLList!0 in!11))))))

(assert (=> start!8586 e!31749))

(assert (=> start!8586 true))

(declare-fun b!59648 () Bool)

(declare-fun sortSpec!0 (List!527 List!527) Bool)

(assert (=> b!59648 (= e!31749 (not (sortSpec!0 in!11 res!27372)))))

(assert (= (and start!8586 res!27655) b!59648))

(declare-fun m!64548 () Bool)

(assert (=> start!8586 m!64548))

(assert (=> start!8586 m!64548))

(declare-fun m!64550 () Bool)

(assert (=> start!8586 m!64550))

(declare-fun m!64552 () Bool)

(assert (=> b!59648 m!64552))

(push 1)

(assert (not start!8586))

(assert (not b!59648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!59659 () Bool)

(declare-fun e!31758 () Bool)

(declare-fun lt!11081 () List!527)

(declare-fun isSorted!4 (List!527) Bool)

(assert (=> b!59659 (= e!31758 (isSorted!4 lt!11081))))

(declare-fun d!51205 () Bool)

(assert (=> d!51205 e!31758))

(declare-fun res!27659 () Bool)

(assert (=> d!51205 (=> (not res!27659) (not e!31758))))

(declare-fun content!15 (List!527) (Set (_ BitVec 32)))

(declare-fun lContent!0 (LList!3) (Set (_ BitVec 32)))

(assert (=> d!51205 (= res!27659 (= (content!15 lt!11081) (lContent!0 (toLList!0 in!11))))))

(declare-fun e!31757 () List!527)

(assert (=> d!51205 (= lt!11081 e!31757)))

(declare-fun c!12939 () Bool)

(assert (=> d!51205 (= c!12939 (is-LNil!2 (toLList!0 in!11)))))

(declare-fun lIsSorted!0 (LList!3) Bool)

(assert (=> d!51205 (lIsSorted!0 (toLList!0 in!11))))

(assert (=> d!51205 (= (mergeReduce!0 (toLList!0 in!11)) lt!11081)))

(declare-fun b!59660 () Bool)

(declare-fun e!31756 () List!527)

(assert (=> b!59660 (= e!31756 (head!826 (toLList!0 in!11)))))

(declare-fun b!59661 () Bool)

(assert (=> b!59661 (= e!31757 e!31756)))

(declare-fun c!12938 () Bool)

(assert (=> b!59661 (= c!12938 (and (is-LCons!2 (toLList!0 in!11)) (is-LNil!2 (tail!852 (toLList!0 in!11)))))))

(declare-fun b!59662 () Bool)

(assert (=> b!59662 (= e!31757 Nil!494)))

(declare-fun b!59663 () Bool)

(declare-fun mergeMap!0 (LList!3) LList!3)

(assert (=> b!59663 (= e!31756 (mergeReduce!0 (mergeMap!0 (toLList!0 in!11))))))

(assert (= (and b!59661 c!12938) b!59660))

(assert (= (and b!59661 (not c!12938)) b!59663))

(assert (= (and d!51205 c!12939) b!59662))

(assert (= (and d!51205 (not c!12939)) b!59661))

(assert (= (and d!51205 res!27659) b!59659))

(declare-fun m!64554 () Bool)

(assert (=> b!59659 m!64554))

(declare-fun m!64556 () Bool)

(assert (=> d!51205 m!64556))

(assert (=> d!51205 m!64548))

(declare-fun m!64558 () Bool)

(assert (=> d!51205 m!64558))

(assert (=> d!51205 m!64548))

(declare-fun m!64560 () Bool)

(assert (=> d!51205 m!64560))

(assert (=> b!59663 m!64548))

(declare-fun m!64562 () Bool)

(assert (=> b!59663 m!64562))

(assert (=> b!59663 m!64562))

(declare-fun m!64564 () Bool)

(assert (=> b!59663 m!64564))

(assert (=> start!8586 d!51205))

(declare-fun d!51207 () Bool)

(declare-fun e!31763 () Bool)

(assert (=> d!51207 e!31763))

(declare-fun res!27663 () Bool)

(assert (=> d!51207 (=> (not res!27663) (not e!31763))))

(declare-fun lt!11084 () LList!3)

(assert (=> d!51207 (= res!27663 (= (lContent!0 lt!11084) (content!15 in!11)))))

(declare-fun e!31764 () LList!3)

(assert (=> d!51207 (= lt!11084 e!31764)))

(declare-fun c!12942 () Bool)

(assert (=> d!51207 (= c!12942 (is-Nil!494 in!11))))

(assert (=> d!51207 (= (toLList!0 in!11) lt!11084)))

(declare-fun b!59670 () Bool)

(assert (=> b!59670 (= e!31764 LNil!2)))

(declare-fun b!59671 () Bool)

(assert (=> b!59671 (= e!31764 (LCons!2 (Cons!493 (head!825 in!11) Nil!494) (toLList!0 (tail!851 in!11))))))

(declare-fun b!59672 () Bool)

(assert (=> b!59672 (= e!31763 (lIsSorted!0 lt!11084))))

(assert (= (and d!51207 c!12942) b!59670))

(assert (= (and d!51207 (not c!12942)) b!59671))

(assert (= (and d!51207 res!27663) b!59672))

(declare-fun m!64566 () Bool)

(assert (=> d!51207 m!64566))

(declare-fun m!64568 () Bool)

(assert (=> d!51207 m!64568))

(declare-fun m!64570 () Bool)

(assert (=> b!59671 m!64570))

(declare-fun m!64572 () Bool)

(assert (=> b!59672 m!64572))

(assert (=> start!8586 d!51207))

(declare-fun d!51209 () Bool)

(declare-fun res!27666 () Bool)

(declare-fun e!31767 () Bool)

(assert (=> d!51209 (=> (not res!27666) (not e!31767))))

(assert (=> d!51209 (= res!27666 (= (content!15 res!27372) (content!15 in!11)))))

(assert (=> d!51209 (= (sortSpec!0 in!11 res!27372) e!31767)))

(declare-fun b!59675 () Bool)

(assert (=> b!59675 (= e!31767 (isSorted!4 res!27372))))

(assert (= (and d!51209 res!27666) b!59675))

(declare-fun m!64574 () Bool)

(assert (=> d!51209 m!64574))

(assert (=> d!51209 m!64568))

(declare-fun m!64576 () Bool)

(assert (=> b!59675 m!64576))

(assert (=> b!59648 d!51209))

(push 1)

(assert (not b!59675))

(assert (not b!59672))

(assert (not b!59663))

(assert (not d!51205))

(assert (not d!51209))

(assert (not b!59671))

(assert (not d!51207))

(assert (not b!59659))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

