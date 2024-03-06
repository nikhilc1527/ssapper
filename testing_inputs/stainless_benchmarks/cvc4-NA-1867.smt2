; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12518 () Bool)

(assert start!12518)

(declare-fun b!92088 () Bool)

(declare-fun e!50413 () Bool)

(declare-fun e!50414 () Bool)

(assert (=> b!92088 (= e!50413 (not e!50414))))

(declare-fun res!48446 () Bool)

(assert (=> b!92088 (=> (not res!48446) (not e!50414))))

(declare-fun e!50386 () (_ BitVec 32))

(declare-datatypes () ((List!791 (Cons!734 (head!1129 (_ BitVec 32)) (tail!1125 List!791)) (Nil!736))))

(declare-fun l!1769 () List!791)

(declare-fun res!48417 () List!791)

(declare-fun contents!1 (List!791) (Set (_ BitVec 32)))

(assert (=> b!92088 (= res!48446 (= (contents!1 res!48417) (union (contents!1 l!1769) (insert e!50386 (as emptyset (Set (_ BitVec 32)))))))))

(assert (=> b!92088 (is-Cons!734 res!48417)))

(declare-fun b!92087 () Bool)

(declare-fun res!48444 () Bool)

(assert (=> b!92087 (=> (not res!48444) (not e!50413))))

(declare-fun buggySortedIns!0 ((_ BitVec 32) List!791) List!791)

(assert (=> b!92087 (= res!48444 (= res!48417 (Cons!734 (head!1129 l!1769) (buggySortedIns!0 e!50386 (tail!1125 l!1769)))))))

(declare-fun b!92089 () Bool)

(declare-fun res!48445 () Bool)

(assert (=> b!92089 (=> (not res!48445) (not e!50414))))

(declare-fun isSorted!7 (List!791) Bool)

(assert (=> b!92089 (= res!48445 (isSorted!7 res!48417))))

(declare-fun res!48443 () Bool)

(assert (=> start!12518 (=> (not res!48443) (not e!50413))))

(assert (=> start!12518 (= res!48443 (and (not (is-Nil!736 l!1769)) (bvsle (head!1129 l!1769) e!50386)))))

(assert (=> start!12518 e!50413))

(assert (=> start!12518 true))

(declare-fun b!92090 () Bool)

(declare-fun size!27 (List!791) Int)

(assert (=> b!92090 (= e!50414 (= (size!27 res!48417) (+ (size!27 l!1769) 1)))))

(assert (= (and start!12518 res!48443) b!92087))

(assert (= (and b!92087 res!48444) b!92088))

(assert (= (and b!92088 res!48446) b!92089))

(assert (= (and b!92089 res!48445) b!92090))

(declare-fun m!87818 () Bool)

(assert (=> b!92088 m!87818))

(declare-fun m!87820 () Bool)

(assert (=> b!92088 m!87820))

(declare-fun m!87822 () Bool)

(assert (=> b!92088 m!87822))

(declare-fun m!87824 () Bool)

(assert (=> b!92087 m!87824))

(declare-fun m!87826 () Bool)

(assert (=> b!92089 m!87826))

(declare-fun m!87828 () Bool)

(assert (=> b!92090 m!87828))

(declare-fun m!87830 () Bool)

(assert (=> b!92090 m!87830))

(push 1)

(assert (not b!92089))

(assert (not b!92088))

(assert (not b!92090))

(assert (not b!92087))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60442 () Bool)

(declare-fun res!48451 () Bool)

(declare-fun e!50419 () Bool)

(assert (=> d!60442 (=> res!48451 e!50419)))

(assert (=> d!60442 (= res!48451 (or (is-Nil!736 res!48417) (and (is-Cons!734 res!48417) (is-Nil!736 (tail!1125 res!48417)))))))

(assert (=> d!60442 (= (isSorted!7 res!48417) e!50419)))

(declare-fun b!92095 () Bool)

(declare-fun e!50420 () Bool)

(assert (=> b!92095 (= e!50419 e!50420)))

(declare-fun res!48452 () Bool)

(assert (=> b!92095 (=> (not res!48452) (not e!50420))))

(assert (=> b!92095 (= res!48452 (bvsle (head!1129 res!48417) (head!1129 (tail!1125 res!48417))))))

(declare-fun b!92096 () Bool)

(assert (=> b!92096 (= e!50420 (isSorted!7 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))

(assert (= (and d!60442 (not res!48451)) b!92095))

(assert (= (and b!92095 res!48452) b!92096))

(declare-fun m!87832 () Bool)

(assert (=> b!92096 m!87832))

(assert (=> b!92089 d!60442))

(declare-fun d!60444 () Bool)

(declare-fun c!22390 () Bool)

(assert (=> d!60444 (= c!22390 (is-Nil!736 res!48417))))

(declare-fun e!50423 () (Set (_ BitVec 32)))

(assert (=> d!60444 (= (contents!1 res!48417) e!50423)))

(declare-fun b!92101 () Bool)

(assert (=> b!92101 (= e!50423 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92102 () Bool)

(assert (=> b!92102 (= e!50423 (union (contents!1 (tail!1125 res!48417)) (insert (head!1129 res!48417) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60444 c!22390) b!92101))

(assert (= (and d!60444 (not c!22390)) b!92102))

(declare-fun m!87834 () Bool)

(assert (=> b!92102 m!87834))

(declare-fun m!87836 () Bool)

(assert (=> b!92102 m!87836))

(assert (=> b!92088 d!60444))

(declare-fun d!60446 () Bool)

(declare-fun c!22391 () Bool)

(assert (=> d!60446 (= c!22391 (is-Nil!736 l!1769))))

(declare-fun e!50424 () (Set (_ BitVec 32)))

(assert (=> d!60446 (= (contents!1 l!1769) e!50424)))

(declare-fun b!92103 () Bool)

(assert (=> b!92103 (= e!50424 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92104 () Bool)

(assert (=> b!92104 (= e!50424 (union (contents!1 (tail!1125 l!1769)) (insert (head!1129 l!1769) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60446 c!22391) b!92103))

(assert (= (and d!60446 (not c!22391)) b!92104))

(declare-fun m!87838 () Bool)

(assert (=> b!92104 m!87838))

(declare-fun m!87840 () Bool)

(assert (=> b!92104 m!87840))

(assert (=> b!92088 d!60446))

(declare-fun d!60448 () Bool)

(declare-fun lt!20800 () Int)

(assert (=> d!60448 (>= lt!20800 0)))

(declare-fun e!50427 () Int)

(assert (=> d!60448 (= lt!20800 e!50427)))

(declare-fun c!22394 () Bool)

(assert (=> d!60448 (= c!22394 (is-Nil!736 res!48417))))

(assert (=> d!60448 (= (size!27 res!48417) lt!20800)))

(declare-fun b!92109 () Bool)

(assert (=> b!92109 (= e!50427 0)))

(declare-fun b!92110 () Bool)

(assert (=> b!92110 (= e!50427 (+ 1 (size!27 (tail!1125 res!48417))))))

(assert (= (and d!60448 c!22394) b!92109))

(assert (= (and d!60448 (not c!22394)) b!92110))

(declare-fun m!87842 () Bool)

(assert (=> b!92110 m!87842))

(assert (=> b!92090 d!60448))

(declare-fun d!60450 () Bool)

(declare-fun lt!20801 () Int)

(assert (=> d!60450 (>= lt!20801 0)))

(declare-fun e!50428 () Int)

(assert (=> d!60450 (= lt!20801 e!50428)))

(declare-fun c!22395 () Bool)

(assert (=> d!60450 (= c!22395 (is-Nil!736 l!1769))))

(assert (=> d!60450 (= (size!27 l!1769) lt!20801)))

(declare-fun b!92111 () Bool)

(assert (=> b!92111 (= e!50428 0)))

(declare-fun b!92112 () Bool)

(assert (=> b!92112 (= e!50428 (+ 1 (size!27 (tail!1125 l!1769))))))

(assert (= (and d!60450 c!22395) b!92111))

(assert (= (and d!60450 (not c!22395)) b!92112))

(declare-fun m!87844 () Bool)

(assert (=> b!92112 m!87844))

(assert (=> b!92090 d!60450))

(declare-fun b!92127 () Bool)

(declare-fun e!50436 () Bool)

(declare-fun lt!20804 () List!791)

(assert (=> b!92127 (= e!50436 (= (size!27 lt!20804) (+ (size!27 (tail!1125 l!1769)) 1)))))

(declare-fun b!92128 () Bool)

(declare-fun res!48461 () Bool)

(assert (=> b!92128 (=> (not res!48461) (not e!50436))))

(assert (=> b!92128 (= res!48461 (isSorted!7 lt!20804))))

(declare-fun b!92129 () Bool)

(declare-fun e!50437 () List!791)

(declare-fun e!50438 () List!791)

(assert (=> b!92129 (= e!50437 e!50438)))

(declare-fun c!22400 () Bool)

(assert (=> b!92129 (= c!22400 (bvsle (head!1129 (tail!1125 l!1769)) e!50386))))

(declare-fun b!92130 () Bool)

(declare-fun res!48460 () Bool)

(assert (=> b!92130 (=> (not res!48460) (not e!50436))))

(assert (=> b!92130 (= res!48460 (= (contents!1 lt!20804) (union (contents!1 (tail!1125 l!1769)) (insert e!50386 (as emptyset (Set (_ BitVec 32)))))))))

(declare-fun d!60452 () Bool)

(assert (=> d!60452 e!50436))

(declare-fun res!48462 () Bool)

(assert (=> d!60452 (=> (not res!48462) (not e!50436))))

(assert (=> d!60452 (= res!48462 (is-Cons!734 lt!20804))))

(assert (=> d!60452 (= lt!20804 e!50437)))

(declare-fun c!22401 () Bool)

(assert (=> d!60452 (= c!22401 (is-Nil!736 (tail!1125 l!1769)))))

(assert (=> d!60452 (= (buggySortedIns!0 e!50386 (tail!1125 l!1769)) lt!20804)))

(declare-fun b!92131 () Bool)

(assert (=> b!92131 (= e!50438 (Cons!734 (head!1129 (tail!1125 l!1769)) (buggySortedIns!0 e!50386 (tail!1125 (tail!1125 l!1769)))))))

(declare-fun b!92132 () Bool)

(assert (=> b!92132 (= e!50437 (Cons!734 e!50386 Nil!736))))

(declare-fun b!92133 () Bool)

(assert (=> b!92133 (= e!50438 (Cons!734 e!50386 (tail!1125 l!1769)))))

(assert (= (and b!92129 c!22400) b!92131))

(assert (= (and b!92129 (not c!22400)) b!92133))

(assert (= (and d!60452 c!22401) b!92132))

(assert (= (and d!60452 (not c!22401)) b!92129))

(assert (= (and d!60452 res!48462) b!92130))

(assert (= (and b!92130 res!48460) b!92128))

(assert (= (and b!92128 res!48461) b!92127))

(declare-fun m!87846 () Bool)

(assert (=> b!92127 m!87846))

(assert (=> b!92127 m!87844))

(declare-fun m!87848 () Bool)

(assert (=> b!92128 m!87848))

(declare-fun m!87850 () Bool)

(assert (=> b!92130 m!87850))

(assert (=> b!92130 m!87838))

(assert (=> b!92130 m!87822))

(declare-fun m!87852 () Bool)

(assert (=> b!92131 m!87852))

(assert (=> b!92087 d!60452))

(push 1)

(assert (not b!92131))

(assert (not b!92130))

(assert (not b!92127))

(assert (not b!92102))

(assert (not b!92128))

(assert (not b!92096))

(assert (not b!92104))

(assert (not b!92112))

(assert (not b!92110))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60454 () Bool)

(declare-fun res!48463 () Bool)

(declare-fun e!50439 () Bool)

(assert (=> d!60454 (=> res!48463 e!50439)))

(assert (=> d!60454 (= res!48463 (or (is-Nil!736 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))) (and (is-Cons!734 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))) (is-Nil!736 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))))))))

(assert (=> d!60454 (= (isSorted!7 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))) e!50439)))

(declare-fun b!92134 () Bool)

(declare-fun e!50440 () Bool)

(assert (=> b!92134 (= e!50439 e!50440)))

(declare-fun res!48464 () Bool)

(assert (=> b!92134 (=> (not res!48464) (not e!50440))))

(assert (=> b!92134 (= res!48464 (bvsle (head!1129 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))) (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))))

(declare-fun b!92135 () Bool)

(assert (=> b!92135 (= e!50440 (isSorted!7 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))))))))

(assert (= (and d!60454 (not res!48463)) b!92134))

(assert (= (and b!92134 res!48464) b!92135))

(declare-fun m!87854 () Bool)

(assert (=> b!92135 m!87854))

(assert (=> b!92096 d!60454))

(declare-fun d!60456 () Bool)

(declare-fun lt!20805 () Int)

(assert (=> d!60456 (>= lt!20805 0)))

(declare-fun e!50441 () Int)

(assert (=> d!60456 (= lt!20805 e!50441)))

(declare-fun c!22402 () Bool)

(assert (=> d!60456 (= c!22402 (is-Nil!736 (tail!1125 res!48417)))))

(assert (=> d!60456 (= (size!27 (tail!1125 res!48417)) lt!20805)))

(declare-fun b!92136 () Bool)

(assert (=> b!92136 (= e!50441 0)))

(declare-fun b!92137 () Bool)

(assert (=> b!92137 (= e!50441 (+ 1 (size!27 (tail!1125 (tail!1125 res!48417)))))))

(assert (= (and d!60456 c!22402) b!92136))

(assert (= (and d!60456 (not c!22402)) b!92137))

(declare-fun m!87856 () Bool)

(assert (=> b!92137 m!87856))

(assert (=> b!92110 d!60456))

(declare-fun d!60458 () Bool)

(declare-fun c!22403 () Bool)

(assert (=> d!60458 (= c!22403 (is-Nil!736 (tail!1125 res!48417)))))

(declare-fun e!50442 () (Set (_ BitVec 32)))

(assert (=> d!60458 (= (contents!1 (tail!1125 res!48417)) e!50442)))

(declare-fun b!92138 () Bool)

(assert (=> b!92138 (= e!50442 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92139 () Bool)

(assert (=> b!92139 (= e!50442 (union (contents!1 (tail!1125 (tail!1125 res!48417))) (insert (head!1129 (tail!1125 res!48417)) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60458 c!22403) b!92138))

(assert (= (and d!60458 (not c!22403)) b!92139))

(declare-fun m!87858 () Bool)

(assert (=> b!92139 m!87858))

(declare-fun m!87860 () Bool)

(assert (=> b!92139 m!87860))

(assert (=> b!92102 d!60458))

(declare-fun d!60460 () Bool)

(declare-fun lt!20806 () Int)

(assert (=> d!60460 (>= lt!20806 0)))

(declare-fun e!50443 () Int)

(assert (=> d!60460 (= lt!20806 e!50443)))

(declare-fun c!22404 () Bool)

(assert (=> d!60460 (= c!22404 (is-Nil!736 lt!20804))))

(assert (=> d!60460 (= (size!27 lt!20804) lt!20806)))

(declare-fun b!92140 () Bool)

(assert (=> b!92140 (= e!50443 0)))

(declare-fun b!92141 () Bool)

(assert (=> b!92141 (= e!50443 (+ 1 (size!27 (tail!1125 lt!20804))))))

(assert (= (and d!60460 c!22404) b!92140))

(assert (= (and d!60460 (not c!22404)) b!92141))

(declare-fun m!87862 () Bool)

(assert (=> b!92141 m!87862))

(assert (=> b!92127 d!60460))

(declare-fun d!60462 () Bool)

(declare-fun lt!20807 () Int)

(assert (=> d!60462 (>= lt!20807 0)))

(declare-fun e!50444 () Int)

(assert (=> d!60462 (= lt!20807 e!50444)))

(declare-fun c!22405 () Bool)

(assert (=> d!60462 (= c!22405 (is-Nil!736 (tail!1125 l!1769)))))

(assert (=> d!60462 (= (size!27 (tail!1125 l!1769)) lt!20807)))

(declare-fun b!92142 () Bool)

(assert (=> b!92142 (= e!50444 0)))

(declare-fun b!92143 () Bool)

(assert (=> b!92143 (= e!50444 (+ 1 (size!27 (tail!1125 (tail!1125 l!1769)))))))

(assert (= (and d!60462 c!22405) b!92142))

(assert (= (and d!60462 (not c!22405)) b!92143))

(declare-fun m!87864 () Bool)

(assert (=> b!92143 m!87864))

(assert (=> b!92127 d!60462))

(declare-fun d!60464 () Bool)

(declare-fun c!22406 () Bool)

(assert (=> d!60464 (= c!22406 (is-Nil!736 (tail!1125 l!1769)))))

(declare-fun e!50445 () (Set (_ BitVec 32)))

(assert (=> d!60464 (= (contents!1 (tail!1125 l!1769)) e!50445)))

(declare-fun b!92144 () Bool)

(assert (=> b!92144 (= e!50445 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92145 () Bool)

(assert (=> b!92145 (= e!50445 (union (contents!1 (tail!1125 (tail!1125 l!1769))) (insert (head!1129 (tail!1125 l!1769)) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60464 c!22406) b!92144))

(assert (= (and d!60464 (not c!22406)) b!92145))

(declare-fun m!87866 () Bool)

(assert (=> b!92145 m!87866))

(declare-fun m!87868 () Bool)

(assert (=> b!92145 m!87868))

(assert (=> b!92104 d!60464))

(assert (=> b!92112 d!60462))

(declare-fun b!92146 () Bool)

(declare-fun e!50446 () Bool)

(declare-fun lt!20808 () List!791)

(assert (=> b!92146 (= e!50446 (= (size!27 lt!20808) (+ (size!27 (tail!1125 (tail!1125 l!1769))) 1)))))

(declare-fun b!92147 () Bool)

(declare-fun res!48466 () Bool)

(assert (=> b!92147 (=> (not res!48466) (not e!50446))))

(assert (=> b!92147 (= res!48466 (isSorted!7 lt!20808))))

(declare-fun b!92148 () Bool)

(declare-fun e!50447 () List!791)

(declare-fun e!50448 () List!791)

(assert (=> b!92148 (= e!50447 e!50448)))

(declare-fun c!22407 () Bool)

(assert (=> b!92148 (= c!22407 (bvsle (head!1129 (tail!1125 (tail!1125 l!1769))) e!50386))))

(declare-fun b!92149 () Bool)

(declare-fun res!48465 () Bool)

(assert (=> b!92149 (=> (not res!48465) (not e!50446))))

(assert (=> b!92149 (= res!48465 (= (contents!1 lt!20808) (union (contents!1 (tail!1125 (tail!1125 l!1769))) (insert e!50386 (as emptyset (Set (_ BitVec 32)))))))))

(declare-fun d!60466 () Bool)

(assert (=> d!60466 e!50446))

(declare-fun res!48467 () Bool)

(assert (=> d!60466 (=> (not res!48467) (not e!50446))))

(assert (=> d!60466 (= res!48467 (is-Cons!734 lt!20808))))

(assert (=> d!60466 (= lt!20808 e!50447)))

(declare-fun c!22408 () Bool)

(assert (=> d!60466 (= c!22408 (is-Nil!736 (tail!1125 (tail!1125 l!1769))))))

(assert (=> d!60466 (= (buggySortedIns!0 e!50386 (tail!1125 (tail!1125 l!1769))) lt!20808)))

(declare-fun b!92150 () Bool)

(assert (=> b!92150 (= e!50448 (Cons!734 (head!1129 (tail!1125 (tail!1125 l!1769))) (buggySortedIns!0 e!50386 (tail!1125 (tail!1125 (tail!1125 l!1769))))))))

(declare-fun b!92151 () Bool)

(assert (=> b!92151 (= e!50447 (Cons!734 e!50386 Nil!736))))

(declare-fun b!92152 () Bool)

(assert (=> b!92152 (= e!50448 (Cons!734 e!50386 (tail!1125 (tail!1125 l!1769))))))

(assert (= (and b!92148 c!22407) b!92150))

(assert (= (and b!92148 (not c!22407)) b!92152))

(assert (= (and d!60466 c!22408) b!92151))

(assert (= (and d!60466 (not c!22408)) b!92148))

(assert (= (and d!60466 res!48467) b!92149))

(assert (= (and b!92149 res!48465) b!92147))

(assert (= (and b!92147 res!48466) b!92146))

(declare-fun m!87870 () Bool)

(assert (=> b!92146 m!87870))

(assert (=> b!92146 m!87864))

(declare-fun m!87872 () Bool)

(assert (=> b!92147 m!87872))

(declare-fun m!87874 () Bool)

(assert (=> b!92149 m!87874))

(assert (=> b!92149 m!87866))

(assert (=> b!92149 m!87822))

(declare-fun m!87876 () Bool)

(assert (=> b!92150 m!87876))

(assert (=> b!92131 d!60466))

(declare-fun d!60468 () Bool)

(declare-fun res!48468 () Bool)

(declare-fun e!50449 () Bool)

(assert (=> d!60468 (=> res!48468 e!50449)))

(assert (=> d!60468 (= res!48468 (or (is-Nil!736 lt!20804) (and (is-Cons!734 lt!20804) (is-Nil!736 (tail!1125 lt!20804)))))))

(assert (=> d!60468 (= (isSorted!7 lt!20804) e!50449)))

(declare-fun b!92153 () Bool)

(declare-fun e!50450 () Bool)

(assert (=> b!92153 (= e!50449 e!50450)))

(declare-fun res!48469 () Bool)

(assert (=> b!92153 (=> (not res!48469) (not e!50450))))

(assert (=> b!92153 (= res!48469 (bvsle (head!1129 lt!20804) (head!1129 (tail!1125 lt!20804))))))

(declare-fun b!92154 () Bool)

(assert (=> b!92154 (= e!50450 (isSorted!7 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804)))))))

(assert (= (and d!60468 (not res!48468)) b!92153))

(assert (= (and b!92153 res!48469) b!92154))

(declare-fun m!87878 () Bool)

(assert (=> b!92154 m!87878))

(assert (=> b!92128 d!60468))

(declare-fun d!60470 () Bool)

(declare-fun c!22409 () Bool)

(assert (=> d!60470 (= c!22409 (is-Nil!736 lt!20804))))

(declare-fun e!50451 () (Set (_ BitVec 32)))

(assert (=> d!60470 (= (contents!1 lt!20804) e!50451)))

(declare-fun b!92155 () Bool)

(assert (=> b!92155 (= e!50451 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92156 () Bool)

(assert (=> b!92156 (= e!50451 (union (contents!1 (tail!1125 lt!20804)) (insert (head!1129 lt!20804) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60470 c!22409) b!92155))

(assert (= (and d!60470 (not c!22409)) b!92156))

(declare-fun m!87880 () Bool)

(assert (=> b!92156 m!87880))

(declare-fun m!87882 () Bool)

(assert (=> b!92156 m!87882))

(assert (=> b!92130 d!60470))

(assert (=> b!92130 d!60464))

(push 1)

(assert (not b!92149))

(assert (not b!92137))

(assert (not b!92141))

(assert (not b!92147))

(assert (not b!92146))

(assert (not b!92150))

(assert (not b!92139))

(assert (not b!92143))

(assert (not b!92145))

(assert (not b!92135))

(assert (not b!92156))

(assert (not b!92154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60472 () Bool)

(declare-fun lt!20809 () Int)

(assert (=> d!60472 (>= lt!20809 0)))

(declare-fun e!50452 () Int)

(assert (=> d!60472 (= lt!20809 e!50452)))

(declare-fun c!22410 () Bool)

(assert (=> d!60472 (= c!22410 (is-Nil!736 (tail!1125 lt!20804)))))

(assert (=> d!60472 (= (size!27 (tail!1125 lt!20804)) lt!20809)))

(declare-fun b!92157 () Bool)

(assert (=> b!92157 (= e!50452 0)))

(declare-fun b!92158 () Bool)

(assert (=> b!92158 (= e!50452 (+ 1 (size!27 (tail!1125 (tail!1125 lt!20804)))))))

(assert (= (and d!60472 c!22410) b!92157))

(assert (= (and d!60472 (not c!22410)) b!92158))

(declare-fun m!87884 () Bool)

(assert (=> b!92158 m!87884))

(assert (=> b!92141 d!60472))

(declare-fun d!60474 () Bool)

(declare-fun c!22411 () Bool)

(assert (=> d!60474 (= c!22411 (is-Nil!736 (tail!1125 lt!20804)))))

(declare-fun e!50453 () (Set (_ BitVec 32)))

(assert (=> d!60474 (= (contents!1 (tail!1125 lt!20804)) e!50453)))

(declare-fun b!92159 () Bool)

(assert (=> b!92159 (= e!50453 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92160 () Bool)

(assert (=> b!92160 (= e!50453 (union (contents!1 (tail!1125 (tail!1125 lt!20804))) (insert (head!1129 (tail!1125 lt!20804)) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60474 c!22411) b!92159))

(assert (= (and d!60474 (not c!22411)) b!92160))

(declare-fun m!87886 () Bool)

(assert (=> b!92160 m!87886))

(declare-fun m!87888 () Bool)

(assert (=> b!92160 m!87888))

(assert (=> b!92156 d!60474))

(declare-fun d!60476 () Bool)

(declare-fun c!22412 () Bool)

(assert (=> d!60476 (= c!22412 (is-Nil!736 lt!20808))))

(declare-fun e!50454 () (Set (_ BitVec 32)))

(assert (=> d!60476 (= (contents!1 lt!20808) e!50454)))

(declare-fun b!92161 () Bool)

(assert (=> b!92161 (= e!50454 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92162 () Bool)

(assert (=> b!92162 (= e!50454 (union (contents!1 (tail!1125 lt!20808)) (insert (head!1129 lt!20808) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60476 c!22412) b!92161))

(assert (= (and d!60476 (not c!22412)) b!92162))

(declare-fun m!87890 () Bool)

(assert (=> b!92162 m!87890))

(declare-fun m!87892 () Bool)

(assert (=> b!92162 m!87892))

(assert (=> b!92149 d!60476))

(declare-fun d!60478 () Bool)

(declare-fun c!22413 () Bool)

(assert (=> d!60478 (= c!22413 (is-Nil!736 (tail!1125 (tail!1125 l!1769))))))

(declare-fun e!50455 () (Set (_ BitVec 32)))

(assert (=> d!60478 (= (contents!1 (tail!1125 (tail!1125 l!1769))) e!50455)))

(declare-fun b!92163 () Bool)

(assert (=> b!92163 (= e!50455 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92164 () Bool)

(assert (=> b!92164 (= e!50455 (union (contents!1 (tail!1125 (tail!1125 (tail!1125 l!1769)))) (insert (head!1129 (tail!1125 (tail!1125 l!1769))) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60478 c!22413) b!92163))

(assert (= (and d!60478 (not c!22413)) b!92164))

(declare-fun m!87894 () Bool)

(assert (=> b!92164 m!87894))

(declare-fun m!87896 () Bool)

(assert (=> b!92164 m!87896))

(assert (=> b!92149 d!60478))

(declare-fun d!60480 () Bool)

(declare-fun lt!20810 () Int)

(assert (=> d!60480 (>= lt!20810 0)))

(declare-fun e!50456 () Int)

(assert (=> d!60480 (= lt!20810 e!50456)))

(declare-fun c!22414 () Bool)

(assert (=> d!60480 (= c!22414 (is-Nil!736 lt!20808))))

(assert (=> d!60480 (= (size!27 lt!20808) lt!20810)))

(declare-fun b!92165 () Bool)

(assert (=> b!92165 (= e!50456 0)))

(declare-fun b!92166 () Bool)

(assert (=> b!92166 (= e!50456 (+ 1 (size!27 (tail!1125 lt!20808))))))

(assert (= (and d!60480 c!22414) b!92165))

(assert (= (and d!60480 (not c!22414)) b!92166))

(declare-fun m!87898 () Bool)

(assert (=> b!92166 m!87898))

(assert (=> b!92146 d!60480))

(declare-fun d!60482 () Bool)

(declare-fun lt!20811 () Int)

(assert (=> d!60482 (>= lt!20811 0)))

(declare-fun e!50457 () Int)

(assert (=> d!60482 (= lt!20811 e!50457)))

(declare-fun c!22415 () Bool)

(assert (=> d!60482 (= c!22415 (is-Nil!736 (tail!1125 (tail!1125 l!1769))))))

(assert (=> d!60482 (= (size!27 (tail!1125 (tail!1125 l!1769))) lt!20811)))

(declare-fun b!92167 () Bool)

(assert (=> b!92167 (= e!50457 0)))

(declare-fun b!92168 () Bool)

(assert (=> b!92168 (= e!50457 (+ 1 (size!27 (tail!1125 (tail!1125 (tail!1125 l!1769))))))))

(assert (= (and d!60482 c!22415) b!92167))

(assert (= (and d!60482 (not c!22415)) b!92168))

(declare-fun m!87900 () Bool)

(assert (=> b!92168 m!87900))

(assert (=> b!92146 d!60482))

(declare-fun d!60484 () Bool)

(declare-fun c!22416 () Bool)

(assert (=> d!60484 (= c!22416 (is-Nil!736 (tail!1125 (tail!1125 res!48417))))))

(declare-fun e!50458 () (Set (_ BitVec 32)))

(assert (=> d!60484 (= (contents!1 (tail!1125 (tail!1125 res!48417))) e!50458)))

(declare-fun b!92169 () Bool)

(assert (=> b!92169 (= e!50458 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92170 () Bool)

(assert (=> b!92170 (= e!50458 (union (contents!1 (tail!1125 (tail!1125 (tail!1125 res!48417)))) (insert (head!1129 (tail!1125 (tail!1125 res!48417))) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60484 c!22416) b!92169))

(assert (= (and d!60484 (not c!22416)) b!92170))

(declare-fun m!87902 () Bool)

(assert (=> b!92170 m!87902))

(declare-fun m!87904 () Bool)

(assert (=> b!92170 m!87904))

(assert (=> b!92139 d!60484))

(declare-fun d!60486 () Bool)

(declare-fun res!48470 () Bool)

(declare-fun e!50459 () Bool)

(assert (=> d!60486 (=> res!48470 e!50459)))

(assert (=> d!60486 (= res!48470 (or (is-Nil!736 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))))) (and (is-Cons!734 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))))) (is-Nil!736 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))))))))

(assert (=> d!60486 (= (isSorted!7 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))))) e!50459)))

(declare-fun b!92171 () Bool)

(declare-fun e!50460 () Bool)

(assert (=> b!92171 (= e!50459 e!50460)))

(declare-fun res!48471 () Bool)

(assert (=> b!92171 (=> (not res!48471) (not e!50460))))

(assert (=> b!92171 (= res!48471 (bvsle (head!1129 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))))) (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))))))))))

(declare-fun b!92172 () Bool)

(assert (=> b!92172 (= e!50460 (isSorted!7 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))))))))

(assert (= (and d!60486 (not res!48470)) b!92171))

(assert (= (and b!92171 res!48471) b!92172))

(declare-fun m!87906 () Bool)

(assert (=> b!92172 m!87906))

(assert (=> b!92135 d!60486))

(declare-fun d!60488 () Bool)

(declare-fun res!48472 () Bool)

(declare-fun e!50461 () Bool)

(assert (=> d!60488 (=> res!48472 e!50461)))

(assert (=> d!60488 (= res!48472 (or (is-Nil!736 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804)))) (and (is-Cons!734 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804)))) (is-Nil!736 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))))))))

(assert (=> d!60488 (= (isSorted!7 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804)))) e!50461)))

(declare-fun b!92173 () Bool)

(declare-fun e!50462 () Bool)

(assert (=> b!92173 (= e!50461 e!50462)))

(declare-fun res!48473 () Bool)

(assert (=> b!92173 (=> (not res!48473) (not e!50462))))

(assert (=> b!92173 (= res!48473 (bvsle (head!1129 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804)))) (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804)))))))))

(declare-fun b!92174 () Bool)

(assert (=> b!92174 (= e!50462 (isSorted!7 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))))))))

(assert (= (and d!60488 (not res!48472)) b!92173))

(assert (= (and b!92173 res!48473) b!92174))

(declare-fun m!87908 () Bool)

(assert (=> b!92174 m!87908))

(assert (=> b!92154 d!60488))

(assert (=> b!92145 d!60478))

(assert (=> b!92143 d!60482))

(declare-fun b!92175 () Bool)

(declare-fun e!50463 () Bool)

(declare-fun lt!20812 () List!791)

(assert (=> b!92175 (= e!50463 (= (size!27 lt!20812) (+ (size!27 (tail!1125 (tail!1125 (tail!1125 l!1769)))) 1)))))

(declare-fun b!92176 () Bool)

(declare-fun res!48475 () Bool)

(assert (=> b!92176 (=> (not res!48475) (not e!50463))))

(assert (=> b!92176 (= res!48475 (isSorted!7 lt!20812))))

(declare-fun b!92177 () Bool)

(declare-fun e!50464 () List!791)

(declare-fun e!50465 () List!791)

(assert (=> b!92177 (= e!50464 e!50465)))

(declare-fun c!22417 () Bool)

(assert (=> b!92177 (= c!22417 (bvsle (head!1129 (tail!1125 (tail!1125 (tail!1125 l!1769)))) e!50386))))

(declare-fun b!92178 () Bool)

(declare-fun res!48474 () Bool)

(assert (=> b!92178 (=> (not res!48474) (not e!50463))))

(assert (=> b!92178 (= res!48474 (= (contents!1 lt!20812) (union (contents!1 (tail!1125 (tail!1125 (tail!1125 l!1769)))) (insert e!50386 (as emptyset (Set (_ BitVec 32)))))))))

(declare-fun d!60490 () Bool)

(assert (=> d!60490 e!50463))

(declare-fun res!48476 () Bool)

(assert (=> d!60490 (=> (not res!48476) (not e!50463))))

(assert (=> d!60490 (= res!48476 (is-Cons!734 lt!20812))))

(assert (=> d!60490 (= lt!20812 e!50464)))

(declare-fun c!22418 () Bool)

(assert (=> d!60490 (= c!22418 (is-Nil!736 (tail!1125 (tail!1125 (tail!1125 l!1769)))))))

(assert (=> d!60490 (= (buggySortedIns!0 e!50386 (tail!1125 (tail!1125 (tail!1125 l!1769)))) lt!20812)))

(declare-fun b!92179 () Bool)

(assert (=> b!92179 (= e!50465 (Cons!734 (head!1129 (tail!1125 (tail!1125 (tail!1125 l!1769)))) (buggySortedIns!0 e!50386 (tail!1125 (tail!1125 (tail!1125 (tail!1125 l!1769)))))))))

(declare-fun b!92180 () Bool)

(assert (=> b!92180 (= e!50464 (Cons!734 e!50386 Nil!736))))

(declare-fun b!92181 () Bool)

(assert (=> b!92181 (= e!50465 (Cons!734 e!50386 (tail!1125 (tail!1125 (tail!1125 l!1769)))))))

(assert (= (and b!92177 c!22417) b!92179))

(assert (= (and b!92177 (not c!22417)) b!92181))

(assert (= (and d!60490 c!22418) b!92180))

(assert (= (and d!60490 (not c!22418)) b!92177))

(assert (= (and d!60490 res!48476) b!92178))

(assert (= (and b!92178 res!48474) b!92176))

(assert (= (and b!92176 res!48475) b!92175))

(declare-fun m!87910 () Bool)

(assert (=> b!92175 m!87910))

(assert (=> b!92175 m!87900))

(declare-fun m!87912 () Bool)

(assert (=> b!92176 m!87912))

(declare-fun m!87914 () Bool)

(assert (=> b!92178 m!87914))

(assert (=> b!92178 m!87894))

(assert (=> b!92178 m!87822))

(declare-fun m!87916 () Bool)

(assert (=> b!92179 m!87916))

(assert (=> b!92150 d!60490))

(declare-fun d!60492 () Bool)

(declare-fun res!48477 () Bool)

(declare-fun e!50466 () Bool)

(assert (=> d!60492 (=> res!48477 e!50466)))

(assert (=> d!60492 (= res!48477 (or (is-Nil!736 lt!20808) (and (is-Cons!734 lt!20808) (is-Nil!736 (tail!1125 lt!20808)))))))

(assert (=> d!60492 (= (isSorted!7 lt!20808) e!50466)))

(declare-fun b!92182 () Bool)

(declare-fun e!50467 () Bool)

(assert (=> b!92182 (= e!50466 e!50467)))

(declare-fun res!48478 () Bool)

(assert (=> b!92182 (=> (not res!48478) (not e!50467))))

(assert (=> b!92182 (= res!48478 (bvsle (head!1129 lt!20808) (head!1129 (tail!1125 lt!20808))))))

(declare-fun b!92183 () Bool)

(assert (=> b!92183 (= e!50467 (isSorted!7 (Cons!734 (head!1129 (tail!1125 lt!20808)) (tail!1125 (tail!1125 lt!20808)))))))

(assert (= (and d!60492 (not res!48477)) b!92182))

(assert (= (and b!92182 res!48478) b!92183))

(declare-fun m!87918 () Bool)

(assert (=> b!92183 m!87918))

(assert (=> b!92147 d!60492))

(declare-fun d!60494 () Bool)

(declare-fun lt!20813 () Int)

(assert (=> d!60494 (>= lt!20813 0)))

(declare-fun e!50468 () Int)

(assert (=> d!60494 (= lt!20813 e!50468)))

(declare-fun c!22419 () Bool)

(assert (=> d!60494 (= c!22419 (is-Nil!736 (tail!1125 (tail!1125 res!48417))))))

(assert (=> d!60494 (= (size!27 (tail!1125 (tail!1125 res!48417))) lt!20813)))

(declare-fun b!92184 () Bool)

(assert (=> b!92184 (= e!50468 0)))

(declare-fun b!92185 () Bool)

(assert (=> b!92185 (= e!50468 (+ 1 (size!27 (tail!1125 (tail!1125 (tail!1125 res!48417))))))))

(assert (= (and d!60494 c!22419) b!92184))

(assert (= (and d!60494 (not c!22419)) b!92185))

(declare-fun m!87920 () Bool)

(assert (=> b!92185 m!87920))

(assert (=> b!92137 d!60494))

(push 1)

(assert (not b!92170))

(assert (not b!92160))

(assert (not b!92166))

(assert (not b!92174))

(assert (not b!92168))

(assert (not b!92175))

(assert (not b!92162))

(assert (not b!92158))

(assert (not b!92176))

(assert (not b!92172))

(assert (not b!92178))

(assert (not b!92179))

(assert (not b!92164))

(assert (not b!92183))

(assert (not b!92185))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60496 () Bool)

(declare-fun c!22420 () Bool)

(assert (=> d!60496 (= c!22420 (is-Nil!736 (tail!1125 (tail!1125 (tail!1125 l!1769)))))))

(declare-fun e!50469 () (Set (_ BitVec 32)))

(assert (=> d!60496 (= (contents!1 (tail!1125 (tail!1125 (tail!1125 l!1769)))) e!50469)))

(declare-fun b!92186 () Bool)

(assert (=> b!92186 (= e!50469 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92187 () Bool)

(assert (=> b!92187 (= e!50469 (union (contents!1 (tail!1125 (tail!1125 (tail!1125 (tail!1125 l!1769))))) (insert (head!1129 (tail!1125 (tail!1125 (tail!1125 l!1769)))) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60496 c!22420) b!92186))

(assert (= (and d!60496 (not c!22420)) b!92187))

(declare-fun m!87922 () Bool)

(assert (=> b!92187 m!87922))

(declare-fun m!87924 () Bool)

(assert (=> b!92187 m!87924))

(assert (=> b!92164 d!60496))

(declare-fun d!60498 () Bool)

(declare-fun c!22421 () Bool)

(assert (=> d!60498 (= c!22421 (is-Nil!736 (tail!1125 (tail!1125 (tail!1125 res!48417)))))))

(declare-fun e!50470 () (Set (_ BitVec 32)))

(assert (=> d!60498 (= (contents!1 (tail!1125 (tail!1125 (tail!1125 res!48417)))) e!50470)))

(declare-fun b!92188 () Bool)

(assert (=> b!92188 (= e!50470 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92189 () Bool)

(assert (=> b!92189 (= e!50470 (union (contents!1 (tail!1125 (tail!1125 (tail!1125 (tail!1125 res!48417))))) (insert (head!1129 (tail!1125 (tail!1125 (tail!1125 res!48417)))) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60498 c!22421) b!92188))

(assert (= (and d!60498 (not c!22421)) b!92189))

(declare-fun m!87926 () Bool)

(assert (=> b!92189 m!87926))

(declare-fun m!87928 () Bool)

(assert (=> b!92189 m!87928))

(assert (=> b!92170 d!60498))

(declare-fun d!60500 () Bool)

(declare-fun res!48479 () Bool)

(declare-fun e!50471 () Bool)

(assert (=> d!60500 (=> res!48479 e!50471)))

(assert (=> d!60500 (= res!48479 (or (is-Nil!736 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))))) (and (is-Cons!734 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))))) (is-Nil!736 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))))))))))))))

(assert (=> d!60500 (= (isSorted!7 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))))) e!50471)))

(declare-fun b!92190 () Bool)

(declare-fun e!50472 () Bool)

(assert (=> b!92190 (= e!50471 e!50472)))

(declare-fun res!48480 () Bool)

(assert (=> b!92190 (=> (not res!48480) (not e!50472))))

(assert (=> b!92190 (= res!48480 (bvsle (head!1129 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))))) (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))))))))))

(declare-fun b!92191 () Bool)

(assert (=> b!92191 (= e!50472 (isSorted!7 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))))))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417)))))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 res!48417)) (tail!1125 (tail!1125 res!48417))))))))))))))))

(assert (= (and d!60500 (not res!48479)) b!92190))

(assert (= (and b!92190 res!48480) b!92191))

(declare-fun m!87930 () Bool)

(assert (=> b!92191 m!87930))

(assert (=> b!92172 d!60500))

(declare-fun d!60502 () Bool)

(declare-fun res!48481 () Bool)

(declare-fun e!50473 () Bool)

(assert (=> d!60502 (=> res!48481 e!50473)))

(assert (=> d!60502 (= res!48481 (or (is-Nil!736 lt!20812) (and (is-Cons!734 lt!20812) (is-Nil!736 (tail!1125 lt!20812)))))))

(assert (=> d!60502 (= (isSorted!7 lt!20812) e!50473)))

(declare-fun b!92192 () Bool)

(declare-fun e!50474 () Bool)

(assert (=> b!92192 (= e!50473 e!50474)))

(declare-fun res!48482 () Bool)

(assert (=> b!92192 (=> (not res!48482) (not e!50474))))

(assert (=> b!92192 (= res!48482 (bvsle (head!1129 lt!20812) (head!1129 (tail!1125 lt!20812))))))

(declare-fun b!92193 () Bool)

(assert (=> b!92193 (= e!50474 (isSorted!7 (Cons!734 (head!1129 (tail!1125 lt!20812)) (tail!1125 (tail!1125 lt!20812)))))))

(assert (= (and d!60502 (not res!48481)) b!92192))

(assert (= (and b!92192 res!48482) b!92193))

(declare-fun m!87932 () Bool)

(assert (=> b!92193 m!87932))

(assert (=> b!92176 d!60502))

(declare-fun d!60504 () Bool)

(declare-fun lt!20814 () Int)

(assert (=> d!60504 (>= lt!20814 0)))

(declare-fun e!50475 () Int)

(assert (=> d!60504 (= lt!20814 e!50475)))

(declare-fun c!22422 () Bool)

(assert (=> d!60504 (= c!22422 (is-Nil!736 (tail!1125 lt!20808)))))

(assert (=> d!60504 (= (size!27 (tail!1125 lt!20808)) lt!20814)))

(declare-fun b!92194 () Bool)

(assert (=> b!92194 (= e!50475 0)))

(declare-fun b!92195 () Bool)

(assert (=> b!92195 (= e!50475 (+ 1 (size!27 (tail!1125 (tail!1125 lt!20808)))))))

(assert (= (and d!60504 c!22422) b!92194))

(assert (= (and d!60504 (not c!22422)) b!92195))

(declare-fun m!87934 () Bool)

(assert (=> b!92195 m!87934))

(assert (=> b!92166 d!60504))

(declare-fun d!60506 () Bool)

(declare-fun lt!20815 () Int)

(assert (=> d!60506 (>= lt!20815 0)))

(declare-fun e!50476 () Int)

(assert (=> d!60506 (= lt!20815 e!50476)))

(declare-fun c!22423 () Bool)

(assert (=> d!60506 (= c!22423 (is-Nil!736 (tail!1125 (tail!1125 (tail!1125 res!48417)))))))

(assert (=> d!60506 (= (size!27 (tail!1125 (tail!1125 (tail!1125 res!48417)))) lt!20815)))

(declare-fun b!92196 () Bool)

(assert (=> b!92196 (= e!50476 0)))

(declare-fun b!92197 () Bool)

(assert (=> b!92197 (= e!50476 (+ 1 (size!27 (tail!1125 (tail!1125 (tail!1125 (tail!1125 res!48417)))))))))

(assert (= (and d!60506 c!22423) b!92196))

(assert (= (and d!60506 (not c!22423)) b!92197))

(declare-fun m!87936 () Bool)

(assert (=> b!92197 m!87936))

(assert (=> b!92185 d!60506))

(declare-fun d!60508 () Bool)

(declare-fun c!22424 () Bool)

(assert (=> d!60508 (= c!22424 (is-Nil!736 (tail!1125 (tail!1125 lt!20804))))))

(declare-fun e!50477 () (Set (_ BitVec 32)))

(assert (=> d!60508 (= (contents!1 (tail!1125 (tail!1125 lt!20804))) e!50477)))

(declare-fun b!92198 () Bool)

(assert (=> b!92198 (= e!50477 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92199 () Bool)

(assert (=> b!92199 (= e!50477 (union (contents!1 (tail!1125 (tail!1125 (tail!1125 lt!20804)))) (insert (head!1129 (tail!1125 (tail!1125 lt!20804))) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60508 c!22424) b!92198))

(assert (= (and d!60508 (not c!22424)) b!92199))

(declare-fun m!87938 () Bool)

(assert (=> b!92199 m!87938))

(declare-fun m!87940 () Bool)

(assert (=> b!92199 m!87940))

(assert (=> b!92160 d!60508))

(declare-fun d!60510 () Bool)

(declare-fun lt!20816 () Int)

(assert (=> d!60510 (>= lt!20816 0)))

(declare-fun e!50478 () Int)

(assert (=> d!60510 (= lt!20816 e!50478)))

(declare-fun c!22425 () Bool)

(assert (=> d!60510 (= c!22425 (is-Nil!736 (tail!1125 (tail!1125 (tail!1125 l!1769)))))))

(assert (=> d!60510 (= (size!27 (tail!1125 (tail!1125 (tail!1125 l!1769)))) lt!20816)))

(declare-fun b!92200 () Bool)

(assert (=> b!92200 (= e!50478 0)))

(declare-fun b!92201 () Bool)

(assert (=> b!92201 (= e!50478 (+ 1 (size!27 (tail!1125 (tail!1125 (tail!1125 (tail!1125 l!1769)))))))))

(assert (= (and d!60510 c!22425) b!92200))

(assert (= (and d!60510 (not c!22425)) b!92201))

(declare-fun m!87942 () Bool)

(assert (=> b!92201 m!87942))

(assert (=> b!92168 d!60510))

(declare-fun d!60512 () Bool)

(declare-fun c!22426 () Bool)

(assert (=> d!60512 (= c!22426 (is-Nil!736 (tail!1125 lt!20808)))))

(declare-fun e!50479 () (Set (_ BitVec 32)))

(assert (=> d!60512 (= (contents!1 (tail!1125 lt!20808)) e!50479)))

(declare-fun b!92202 () Bool)

(assert (=> b!92202 (= e!50479 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92203 () Bool)

(assert (=> b!92203 (= e!50479 (union (contents!1 (tail!1125 (tail!1125 lt!20808))) (insert (head!1129 (tail!1125 lt!20808)) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60512 c!22426) b!92202))

(assert (= (and d!60512 (not c!22426)) b!92203))

(declare-fun m!87944 () Bool)

(assert (=> b!92203 m!87944))

(declare-fun m!87946 () Bool)

(assert (=> b!92203 m!87946))

(assert (=> b!92162 d!60512))

(declare-fun b!92204 () Bool)

(declare-fun e!50480 () Bool)

(declare-fun lt!20817 () List!791)

(assert (=> b!92204 (= e!50480 (= (size!27 lt!20817) (+ (size!27 (tail!1125 (tail!1125 (tail!1125 (tail!1125 l!1769))))) 1)))))

(declare-fun b!92205 () Bool)

(declare-fun res!48484 () Bool)

(assert (=> b!92205 (=> (not res!48484) (not e!50480))))

(assert (=> b!92205 (= res!48484 (isSorted!7 lt!20817))))

(declare-fun b!92206 () Bool)

(declare-fun e!50481 () List!791)

(declare-fun e!50482 () List!791)

(assert (=> b!92206 (= e!50481 e!50482)))

(declare-fun c!22427 () Bool)

(assert (=> b!92206 (= c!22427 (bvsle (head!1129 (tail!1125 (tail!1125 (tail!1125 (tail!1125 l!1769))))) e!50386))))

(declare-fun b!92207 () Bool)

(declare-fun res!48483 () Bool)

(assert (=> b!92207 (=> (not res!48483) (not e!50480))))

(assert (=> b!92207 (= res!48483 (= (contents!1 lt!20817) (union (contents!1 (tail!1125 (tail!1125 (tail!1125 (tail!1125 l!1769))))) (insert e!50386 (as emptyset (Set (_ BitVec 32)))))))))

(declare-fun d!60514 () Bool)

(assert (=> d!60514 e!50480))

(declare-fun res!48485 () Bool)

(assert (=> d!60514 (=> (not res!48485) (not e!50480))))

(assert (=> d!60514 (= res!48485 (is-Cons!734 lt!20817))))

(assert (=> d!60514 (= lt!20817 e!50481)))

(declare-fun c!22428 () Bool)

(assert (=> d!60514 (= c!22428 (is-Nil!736 (tail!1125 (tail!1125 (tail!1125 (tail!1125 l!1769))))))))

(assert (=> d!60514 (= (buggySortedIns!0 e!50386 (tail!1125 (tail!1125 (tail!1125 (tail!1125 l!1769))))) lt!20817)))

(declare-fun b!92208 () Bool)

(assert (=> b!92208 (= e!50482 (Cons!734 (head!1129 (tail!1125 (tail!1125 (tail!1125 (tail!1125 l!1769))))) (buggySortedIns!0 e!50386 (tail!1125 (tail!1125 (tail!1125 (tail!1125 (tail!1125 l!1769))))))))))

(declare-fun b!92209 () Bool)

(assert (=> b!92209 (= e!50481 (Cons!734 e!50386 Nil!736))))

(declare-fun b!92210 () Bool)

(assert (=> b!92210 (= e!50482 (Cons!734 e!50386 (tail!1125 (tail!1125 (tail!1125 (tail!1125 l!1769))))))))

(assert (= (and b!92206 c!22427) b!92208))

(assert (= (and b!92206 (not c!22427)) b!92210))

(assert (= (and d!60514 c!22428) b!92209))

(assert (= (and d!60514 (not c!22428)) b!92206))

(assert (= (and d!60514 res!48485) b!92207))

(assert (= (and b!92207 res!48483) b!92205))

(assert (= (and b!92205 res!48484) b!92204))

(declare-fun m!87948 () Bool)

(assert (=> b!92204 m!87948))

(assert (=> b!92204 m!87942))

(declare-fun m!87950 () Bool)

(assert (=> b!92205 m!87950))

(declare-fun m!87952 () Bool)

(assert (=> b!92207 m!87952))

(assert (=> b!92207 m!87922))

(assert (=> b!92207 m!87822))

(declare-fun m!87954 () Bool)

(assert (=> b!92208 m!87954))

(assert (=> b!92179 d!60514))

(declare-fun d!60516 () Bool)

(declare-fun lt!20818 () Int)

(assert (=> d!60516 (>= lt!20818 0)))

(declare-fun e!50483 () Int)

(assert (=> d!60516 (= lt!20818 e!50483)))

(declare-fun c!22429 () Bool)

(assert (=> d!60516 (= c!22429 (is-Nil!736 (tail!1125 (tail!1125 lt!20804))))))

(assert (=> d!60516 (= (size!27 (tail!1125 (tail!1125 lt!20804))) lt!20818)))

(declare-fun b!92211 () Bool)

(assert (=> b!92211 (= e!50483 0)))

(declare-fun b!92212 () Bool)

(assert (=> b!92212 (= e!50483 (+ 1 (size!27 (tail!1125 (tail!1125 (tail!1125 lt!20804))))))))

(assert (= (and d!60516 c!22429) b!92211))

(assert (= (and d!60516 (not c!22429)) b!92212))

(declare-fun m!87956 () Bool)

(assert (=> b!92212 m!87956))

(assert (=> b!92158 d!60516))

(declare-fun d!60518 () Bool)

(declare-fun res!48486 () Bool)

(declare-fun e!50484 () Bool)

(assert (=> d!60518 (=> res!48486 e!50484)))

(assert (=> d!60518 (= res!48486 (or (is-Nil!736 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))))) (and (is-Cons!734 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))))) (is-Nil!736 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804)))))))))))))

(assert (=> d!60518 (= (isSorted!7 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))))) e!50484)))

(declare-fun b!92213 () Bool)

(declare-fun e!50485 () Bool)

(assert (=> b!92213 (= e!50484 e!50485)))

(declare-fun res!48487 () Bool)

(assert (=> b!92213 (=> (not res!48487) (not e!50485))))

(assert (=> b!92213 (= res!48487 (bvsle (head!1129 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))))) (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))))))))))

(declare-fun b!92214 () Bool)

(assert (=> b!92214 (= e!50485 (isSorted!7 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804)))))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20804)) (tail!1125 (tail!1125 lt!20804)))))))))))))

(assert (= (and d!60518 (not res!48486)) b!92213))

(assert (= (and b!92213 res!48487) b!92214))

(declare-fun m!87958 () Bool)

(assert (=> b!92214 m!87958))

(assert (=> b!92174 d!60518))

(declare-fun d!60520 () Bool)

(declare-fun res!48488 () Bool)

(declare-fun e!50486 () Bool)

(assert (=> d!60520 (=> res!48488 e!50486)))

(assert (=> d!60520 (= res!48488 (or (is-Nil!736 (Cons!734 (head!1129 (tail!1125 lt!20808)) (tail!1125 (tail!1125 lt!20808)))) (and (is-Cons!734 (Cons!734 (head!1129 (tail!1125 lt!20808)) (tail!1125 (tail!1125 lt!20808)))) (is-Nil!736 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20808)) (tail!1125 (tail!1125 lt!20808))))))))))

(assert (=> d!60520 (= (isSorted!7 (Cons!734 (head!1129 (tail!1125 lt!20808)) (tail!1125 (tail!1125 lt!20808)))) e!50486)))

(declare-fun b!92215 () Bool)

(declare-fun e!50487 () Bool)

(assert (=> b!92215 (= e!50486 e!50487)))

(declare-fun res!48489 () Bool)

(assert (=> b!92215 (=> (not res!48489) (not e!50487))))

(assert (=> b!92215 (= res!48489 (bvsle (head!1129 (Cons!734 (head!1129 (tail!1125 lt!20808)) (tail!1125 (tail!1125 lt!20808)))) (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20808)) (tail!1125 (tail!1125 lt!20808)))))))))

(declare-fun b!92216 () Bool)

(assert (=> b!92216 (= e!50487 (isSorted!7 (Cons!734 (head!1129 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20808)) (tail!1125 (tail!1125 lt!20808))))) (tail!1125 (tail!1125 (Cons!734 (head!1129 (tail!1125 lt!20808)) (tail!1125 (tail!1125 lt!20808))))))))))

(assert (= (and d!60520 (not res!48488)) b!92215))

(assert (= (and b!92215 res!48489) b!92216))

(declare-fun m!87960 () Bool)

(assert (=> b!92216 m!87960))

(assert (=> b!92183 d!60520))

(declare-fun d!60522 () Bool)

(declare-fun lt!20819 () Int)

(assert (=> d!60522 (>= lt!20819 0)))

(declare-fun e!50488 () Int)

(assert (=> d!60522 (= lt!20819 e!50488)))

(declare-fun c!22430 () Bool)

(assert (=> d!60522 (= c!22430 (is-Nil!736 lt!20812))))

(assert (=> d!60522 (= (size!27 lt!20812) lt!20819)))

(declare-fun b!92217 () Bool)

(assert (=> b!92217 (= e!50488 0)))

(declare-fun b!92218 () Bool)

(assert (=> b!92218 (= e!50488 (+ 1 (size!27 (tail!1125 lt!20812))))))

(assert (= (and d!60522 c!22430) b!92217))

(assert (= (and d!60522 (not c!22430)) b!92218))

(declare-fun m!87962 () Bool)

(assert (=> b!92218 m!87962))

(assert (=> b!92175 d!60522))

(assert (=> b!92175 d!60510))

(declare-fun d!60524 () Bool)

(declare-fun c!22431 () Bool)

(assert (=> d!60524 (= c!22431 (is-Nil!736 lt!20812))))

(declare-fun e!50489 () (Set (_ BitVec 32)))

(assert (=> d!60524 (= (contents!1 lt!20812) e!50489)))

(declare-fun b!92219 () Bool)

(assert (=> b!92219 (= e!50489 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92220 () Bool)

(assert (=> b!92220 (= e!50489 (union (contents!1 (tail!1125 lt!20812)) (insert (head!1129 lt!20812) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60524 c!22431) b!92219))

(assert (= (and d!60524 (not c!22431)) b!92220))

(declare-fun m!87964 () Bool)

(assert (=> b!92220 m!87964))

(declare-fun m!87966 () Bool)

(assert (=> b!92220 m!87966))

(assert (=> b!92178 d!60524))

(assert (=> b!92178 d!60496))

(push 1)

(assert (not b!92220))

(assert (not b!92208))

(assert (not b!92189))

(assert (not b!92218))

(assert (not b!92205))

(assert (not b!92193))

(assert (not b!92207))

(assert (not b!92195))

(assert (not b!92216))

(assert (not b!92212))

(assert (not b!92191))

(assert (not b!92201))

(assert (not b!92199))

(assert (not b!92214))

(assert (not b!92187))

(assert (not b!92204))

(assert (not b!92197))

(assert (not b!92203))

(check-sat)

(get-model)

(pop 1)

