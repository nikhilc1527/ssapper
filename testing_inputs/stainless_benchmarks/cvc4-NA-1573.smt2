; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10824 () Bool)

(assert start!10824)

(declare-fun b!82654 () Bool)

(assert (=> b!82654 true))

(declare-fun bs!40032 () Bool)

(declare-fun b!82659 () Bool)

(assert (= bs!40032 (and b!82659 b!82654)))

(declare-fun lambda!9988 () Int)

(declare-fun lambda!9987 () Int)

(assert (=> bs!40032 (not (= lambda!9988 lambda!9987))))

(assert (=> b!82659 true))

(declare-fun bs!40033 () Bool)

(declare-fun b!82652 () Bool)

(assert (= bs!40033 (and b!82652 b!82654)))

(declare-fun lambda!9989 () Int)

(assert (=> bs!40033 (not (= lambda!9989 lambda!9987))))

(declare-fun bs!40034 () Bool)

(assert (= bs!40034 (and b!82652 b!82659)))

(assert (=> bs!40034 (not (= lambda!9989 lambda!9988))))

(assert (=> b!82652 true))

(declare-fun bs!40035 () Bool)

(declare-fun b!82655 () Bool)

(assert (= bs!40035 (and b!82655 b!82654)))

(declare-fun lambda!9990 () Int)

(assert (=> bs!40035 (not (= lambda!9990 lambda!9987))))

(declare-fun bs!40036 () Bool)

(assert (= bs!40036 (and b!82655 b!82659)))

(assert (=> bs!40036 (not (= lambda!9990 lambda!9988))))

(declare-fun bs!40037 () Bool)

(assert (= bs!40037 (and b!82655 b!82652)))

(assert (=> bs!40037 (not (= lambda!9990 lambda!9989))))

(assert (=> b!82655 true))

(declare-fun b!82650 () Bool)

(declare-fun res!42382 () Bool)

(declare-fun e!44845 () Bool)

(assert (=> b!82650 (=> (not res!42382) (not e!44845))))

(declare-datatypes () ((List!671 (Cons!628 (h!998 Int) (t!47881 List!671)) (Nil!630))))

(declare-fun less!5 () List!671)

(declare-fun equal!10 () List!671)

(declare-fun append_sorted!0 (List!671 List!671) Bool)

(declare-fun quickSort!0 (List!671) List!671)

(assert (=> b!82650 (= res!42382 (append_sorted!0 (quickSort!0 less!5) equal!10))))

(declare-fun b!82651 () Bool)

(declare-fun res!42391 () Bool)

(assert (=> b!82651 (=> (not res!42391) (not e!44845))))

(declare-fun forall_last!0 (List!671 Int) Bool)

(assert (=> b!82651 (= res!42391 (forall_last!0 (quickSort!0 less!5) lambda!9987))))

(declare-fun res!42384 () Bool)

(assert (=> b!82652 (=> (not res!42384) (not e!44845))))

(declare-fun more!5 () List!671)

(declare-fun ls!96 () List!671)

(declare-fun filter!24 (List!671 Int) List!671)

(assert (=> b!82652 (= res!42384 (= more!5 (filter!24 (t!47881 ls!96) lambda!9989)))))

(declare-fun b!82653 () Bool)

(declare-fun res!42385 () Bool)

(assert (=> b!82653 (=> (not res!42385) (not e!44845))))

(declare-fun cons_filter_equal_sorted!0 (List!671 Int) Bool)

(assert (=> b!82653 (= res!42385 (cons_filter_equal_sorted!0 (t!47881 ls!96) (h!998 ls!96)))))

(declare-fun res!42387 () Bool)

(assert (=> start!10824 (=> (not res!42387) (not e!44845))))

(assert (=> start!10824 (= res!42387 (and (not (is-Nil!630 ls!96)) (not (is-Nil!630 (t!47881 ls!96)))))))

(assert (=> start!10824 e!44845))

(assert (=> start!10824 true))

(declare-fun res!42389 () Bool)

(assert (=> b!82654 (=> (not res!42389) (not e!44845))))

(assert (=> b!82654 (= res!42389 (= less!5 (filter!24 (t!47881 ls!96) lambda!9987)))))

(declare-fun sort_preserves_forall!0 (List!671 Int) Bool)

(assert (=> b!82655 (= e!44845 (not (sort_preserves_forall!0 less!5 lambda!9990)))))

(declare-fun b!82656 () Bool)

(declare-fun res!42390 () Bool)

(assert (=> b!82656 (=> (not res!42390) (not e!44845))))

(declare-fun sorted_lemma!0 (List!671) Bool)

(assert (=> b!82656 (= res!42390 (sorted_lemma!0 less!5))))

(declare-fun b!82657 () Bool)

(declare-fun res!42383 () Bool)

(assert (=> b!82657 (=> (not res!42383) (not e!44845))))

(assert (=> b!82657 (= res!42383 (sort_preserves_forall!0 less!5 lambda!9987))))

(declare-fun b!82658 () Bool)

(declare-fun res!42388 () Bool)

(assert (=> b!82658 (=> (not res!42388) (not e!44845))))

(declare-fun forall_lt_implies_le!0 (List!671 Int) Bool)

(assert (=> b!82658 (= res!42388 (forall_lt_implies_le!0 less!5 (h!998 ls!96)))))

(declare-fun res!42386 () Bool)

(assert (=> b!82659 (=> (not res!42386) (not e!44845))))

(assert (=> b!82659 (= res!42386 (= equal!10 (Cons!628 (h!998 ls!96) (filter!24 (t!47881 ls!96) lambda!9988))))))

(assert (= (and start!10824 res!42387) b!82654))

(assert (= (and b!82654 res!42389) b!82659))

(assert (= (and b!82659 res!42386) b!82652))

(assert (= (and b!82652 res!42384) b!82656))

(assert (= (and b!82656 res!42390) b!82657))

(assert (= (and b!82657 res!42383) b!82651))

(assert (= (and b!82651 res!42391) b!82653))

(assert (= (and b!82653 res!42385) b!82650))

(assert (= (and b!82650 res!42382) b!82658))

(assert (= (and b!82658 res!42388) b!82655))

(declare-fun m!78258 () Bool)

(assert (=> b!82658 m!78258))

(declare-fun m!78260 () Bool)

(assert (=> b!82655 m!78260))

(declare-fun m!78262 () Bool)

(assert (=> b!82653 m!78262))

(declare-fun m!78264 () Bool)

(assert (=> b!82656 m!78264))

(declare-fun m!78266 () Bool)

(assert (=> b!82657 m!78266))

(declare-fun m!78268 () Bool)

(assert (=> b!82652 m!78268))

(declare-fun m!78270 () Bool)

(assert (=> b!82654 m!78270))

(declare-fun m!78272 () Bool)

(assert (=> b!82659 m!78272))

(declare-fun m!78274 () Bool)

(assert (=> b!82651 m!78274))

(assert (=> b!82651 m!78274))

(declare-fun m!78276 () Bool)

(assert (=> b!82651 m!78276))

(assert (=> b!82650 m!78274))

(assert (=> b!82650 m!78274))

(declare-fun m!78278 () Bool)

(assert (=> b!82650 m!78278))

(push 1)

(assert (not b!82659))

(assert (not b!82655))

(assert (not b!82652))

(assert (not b!82650))

(assert (not b!82656))

(assert (not b!82651))

(assert (not b!82654))

(assert (not b!82658))

(assert (not b!82657))

(assert (not b!82653))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!40038 () Bool)

(declare-fun d!56361 () Bool)

(assert (= bs!40038 (and d!56361 b!82654)))

(declare-fun lambda!9997 () Int)

(assert (=> bs!40038 (= lambda!9997 lambda!9987)))

(declare-fun bs!40039 () Bool)

(assert (= bs!40039 (and d!56361 b!82659)))

(assert (=> bs!40039 (not (= lambda!9997 lambda!9988))))

(declare-fun bs!40040 () Bool)

(assert (= bs!40040 (and d!56361 b!82652)))

(assert (=> bs!40040 (not (= lambda!9997 lambda!9989))))

(declare-fun bs!40041 () Bool)

(assert (= bs!40041 (and d!56361 b!82655)))

(assert (=> bs!40041 (not (= lambda!9997 lambda!9990))))

(assert (=> d!56361 true))

(declare-fun bs!40042 () Bool)

(declare-fun b!82666 () Bool)

(assert (= bs!40042 (and b!82666 b!82652)))

(declare-fun lambda!9998 () Int)

(assert (=> bs!40042 (not (= lambda!9998 lambda!9989))))

(declare-fun bs!40043 () Bool)

(assert (= bs!40043 (and b!82666 b!82654)))

(assert (=> bs!40043 (not (= lambda!9998 lambda!9987))))

(declare-fun bs!40044 () Bool)

(assert (= bs!40044 (and b!82666 b!82655)))

(assert (=> bs!40044 (= lambda!9998 lambda!9990)))

(declare-fun bs!40045 () Bool)

(assert (= bs!40045 (and b!82666 d!56361)))

(assert (=> bs!40045 (not (= lambda!9998 lambda!9997))))

(declare-fun bs!40046 () Bool)

(assert (= bs!40046 (and b!82666 b!82659)))

(assert (=> bs!40046 (not (= lambda!9998 lambda!9988))))

(assert (=> b!82666 true))

(declare-fun bs!40047 () Bool)

(declare-fun b!82667 () Bool)

(assert (= bs!40047 (and b!82667 b!82652)))

(declare-fun lambda!9999 () Int)

(assert (=> bs!40047 (not (= lambda!9999 lambda!9989))))

(declare-fun bs!40048 () Bool)

(assert (= bs!40048 (and b!82667 b!82666)))

(assert (=> bs!40048 (= lambda!9999 lambda!9998)))

(declare-fun bs!40049 () Bool)

(assert (= bs!40049 (and b!82667 b!82654)))

(assert (=> bs!40049 (not (= lambda!9999 lambda!9987))))

(declare-fun bs!40050 () Bool)

(assert (= bs!40050 (and b!82667 b!82655)))

(assert (=> bs!40050 (= lambda!9999 lambda!9990)))

(declare-fun bs!40051 () Bool)

(assert (= bs!40051 (and b!82667 d!56361)))

(assert (=> bs!40051 (not (= lambda!9999 lambda!9997))))

(declare-fun bs!40052 () Bool)

(assert (= bs!40052 (and b!82667 b!82659)))

(assert (=> bs!40052 (not (= lambda!9999 lambda!9988))))

(assert (=> b!82667 true))

(declare-fun e!44848 () Bool)

(assert (=> d!56361 e!44848))

(declare-fun c!20764 () Bool)

(assert (=> d!56361 (= c!20764 (is-Cons!628 less!5))))

(declare-fun forall!26 (List!671 Int) Bool)

(assert (=> d!56361 (forall!26 less!5 lambda!9997)))

(assert (=> d!56361 (= (forall_lt_implies_le!0 less!5 (h!998 ls!96)) true)))

(assert (=> b!82666 (= e!44848 (forall!26 less!5 lambda!9998))))

(declare-fun lt!19134 () Bool)

(assert (=> b!82666 (= lt!19134 (forall_lt_implies_le!0 (t!47881 less!5) (h!998 ls!96)))))

(assert (=> b!82667 (= e!44848 (forall!26 less!5 lambda!9999))))

(assert (= (and d!56361 c!20764) b!82666))

(assert (= (and d!56361 (not c!20764)) b!82667))

(declare-fun m!78280 () Bool)

(assert (=> d!56361 m!78280))

(declare-fun m!78282 () Bool)

(assert (=> b!82666 m!78282))

(declare-fun m!78284 () Bool)

(assert (=> b!82666 m!78284))

(declare-fun m!78286 () Bool)

(assert (=> b!82667 m!78286))

(assert (=> b!82658 d!56361))

(declare-fun b!82682 () Bool)

(declare-fun e!44856 () Bool)

(declare-fun dynLambda!990 (Int Int) Bool)

(declare-fun last!21 (List!671) Int)

(assert (=> b!82682 (= e!44856 (dynLambda!990 lambda!9987 (last!21 (quickSort!0 less!5))))))

(declare-fun b!82683 () Bool)

(declare-fun e!44855 () Bool)

(declare-fun e!44857 () Bool)

(assert (=> b!82683 (= e!44855 e!44857)))

(declare-fun res!42401 () Bool)

(assert (=> b!82683 (=> res!42401 e!44857)))

(assert (=> b!82683 (= res!42401 (not (forall!26 (quickSort!0 less!5) lambda!9987)))))

(declare-fun b!82684 () Bool)

(declare-fun res!42400 () Bool)

(assert (=> b!82684 (=> res!42400 e!44856)))

(declare-fun isEmpty!681 (List!671) Bool)

(assert (=> b!82684 (= res!42400 (isEmpty!681 (quickSort!0 less!5)))))

(declare-fun d!56363 () Bool)

(assert (=> d!56363 e!44855))

(declare-fun c!20767 () Bool)

(assert (=> d!56363 (= c!20767 (is-Cons!628 (quickSort!0 less!5)))))

(assert (=> d!56363 (= (forall_last!0 (quickSort!0 less!5) lambda!9987) true)))

(declare-fun b!82685 () Bool)

(assert (=> b!82685 (= e!44855 e!44856)))

(declare-fun res!42403 () Bool)

(assert (=> b!82685 (=> res!42403 e!44856)))

(assert (=> b!82685 (= res!42403 (not (forall!26 (quickSort!0 less!5) lambda!9987)))))

(declare-fun lt!19137 () Bool)

(assert (=> b!82685 (= lt!19137 (forall_last!0 (t!47881 (quickSort!0 less!5)) lambda!9987))))

(declare-fun b!82686 () Bool)

(declare-fun res!42402 () Bool)

(assert (=> b!82686 (=> res!42402 e!44857)))

(assert (=> b!82686 (= res!42402 (isEmpty!681 (quickSort!0 less!5)))))

(declare-fun b!82687 () Bool)

(assert (=> b!82687 (= e!44857 (dynLambda!990 lambda!9987 (last!21 (quickSort!0 less!5))))))

(assert (= (and b!82685 (not res!42403)) b!82684))

(assert (= (and b!82684 (not res!42400)) b!82682))

(assert (= (and b!82683 (not res!42401)) b!82686))

(assert (= (and b!82686 (not res!42402)) b!82687))

(assert (= (and d!56363 c!20767) b!82685))

(assert (= (and d!56363 (not c!20767)) b!82683))

(declare-fun b_lambda!16371 () Bool)

(assert (=> (not b_lambda!16371) (not b!82682)))

(declare-fun b_lambda!16373 () Bool)

(assert (=> (not b_lambda!16373) (not b!82687)))

(assert (=> b!82684 m!78274))

(declare-fun m!78288 () Bool)

(assert (=> b!82684 m!78288))

(assert (=> b!82686 m!78274))

(assert (=> b!82686 m!78288))

(assert (=> b!82687 m!78274))

(declare-fun m!78290 () Bool)

(assert (=> b!82687 m!78290))

(assert (=> b!82687 m!78290))

(declare-fun m!78292 () Bool)

(assert (=> b!82687 m!78292))

(assert (=> b!82683 m!78274))

(declare-fun m!78294 () Bool)

(assert (=> b!82683 m!78294))

(assert (=> b!82685 m!78274))

(assert (=> b!82685 m!78294))

(declare-fun m!78296 () Bool)

(assert (=> b!82685 m!78296))

(assert (=> b!82682 m!78274))

(assert (=> b!82682 m!78290))

(assert (=> b!82682 m!78290))

(assert (=> b!82682 m!78292))

(assert (=> b!82651 d!56363))

(declare-fun bs!40053 () Bool)

(declare-fun b!82699 () Bool)

(assert (= bs!40053 (and b!82699 b!82652)))

(declare-fun lambda!10006 () Int)

(assert (=> bs!40053 (not (= lambda!10006 lambda!9989))))

(declare-fun bs!40054 () Bool)

(assert (= bs!40054 (and b!82699 b!82666)))

(assert (=> bs!40054 (not (= lambda!10006 lambda!9998))))

(declare-fun bs!40055 () Bool)

(assert (= bs!40055 (and b!82699 b!82654)))

(assert (=> bs!40055 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10006 lambda!9987))))

(declare-fun bs!40056 () Bool)

(assert (= bs!40056 (and b!82699 b!82655)))

(assert (=> bs!40056 (not (= lambda!10006 lambda!9990))))

(declare-fun bs!40057 () Bool)

(assert (= bs!40057 (and b!82699 b!82667)))

(assert (=> bs!40057 (not (= lambda!10006 lambda!9999))))

(declare-fun bs!40058 () Bool)

(assert (= bs!40058 (and b!82699 d!56361)))

(assert (=> bs!40058 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10006 lambda!9997))))

(declare-fun bs!40059 () Bool)

(assert (= bs!40059 (and b!82699 b!82659)))

(assert (=> bs!40059 (not (= lambda!10006 lambda!9988))))

(assert (=> b!82699 true))

(declare-fun lambda!10007 () Int)

(assert (=> bs!40053 (not (= lambda!10007 lambda!9989))))

(assert (=> bs!40054 (not (= lambda!10007 lambda!9998))))

(assert (=> bs!40055 (not (= lambda!10007 lambda!9987))))

(assert (=> bs!40056 (not (= lambda!10007 lambda!9990))))

(assert (=> bs!40057 (not (= lambda!10007 lambda!9999))))

(assert (=> bs!40058 (not (= lambda!10007 lambda!9997))))

(assert (=> bs!40059 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10007 lambda!9988))))

(assert (=> b!82699 (not (= lambda!10007 lambda!10006))))

(assert (=> b!82699 true))

(declare-fun lambda!10008 () Int)

(assert (=> bs!40053 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10008 lambda!9989))))

(assert (=> bs!40054 (not (= lambda!10008 lambda!9998))))

(assert (=> bs!40055 (not (= lambda!10008 lambda!9987))))

(assert (=> bs!40056 (not (= lambda!10008 lambda!9990))))

(assert (=> bs!40057 (not (= lambda!10008 lambda!9999))))

(assert (=> bs!40058 (not (= lambda!10008 lambda!9997))))

(assert (=> bs!40059 (not (= lambda!10008 lambda!9988))))

(assert (=> b!82699 (not (= lambda!10008 lambda!10007))))

(assert (=> b!82699 (not (= lambda!10008 lambda!10006))))

(assert (=> b!82699 true))

(declare-fun b!82698 () Bool)

(declare-fun e!44863 () List!671)

(assert (=> b!82698 (= e!44863 less!5)))

(declare-fun d!56365 () Bool)

(declare-fun c!20772 () Bool)

(assert (=> d!56365 (= c!20772 (is-Nil!630 less!5))))

(declare-fun e!44862 () List!671)

(assert (=> d!56365 (= (quickSort!0 less!5) e!44862)))

(declare-fun b!82696 () Bool)

(assert (=> b!82696 (= e!44862 Nil!630)))

(declare-fun b!82697 () Bool)

(assert (=> b!82697 (= e!44862 e!44863)))

(declare-fun c!20773 () Bool)

(assert (=> b!82697 (= c!20773 (and (is-Cons!628 less!5) (is-Nil!630 (t!47881 less!5))))))

(declare-fun ++!79 (List!671 List!671) List!671)

(assert (=> b!82699 (= e!44863 (++!79 (++!79 (quickSort!0 (filter!24 (t!47881 less!5) lambda!10006)) (Cons!628 (h!998 less!5) (filter!24 (t!47881 less!5) lambda!10007))) (quickSort!0 (filter!24 (t!47881 less!5) lambda!10008))))))

(assert (= (and b!82697 c!20773) b!82698))

(assert (= (and b!82697 (not c!20773)) b!82699))

(assert (= (and d!56365 c!20772) b!82696))

(assert (= (and d!56365 (not c!20772)) b!82697))

(declare-fun m!78298 () Bool)

(assert (=> b!82699 m!78298))

(declare-fun m!78300 () Bool)

(assert (=> b!82699 m!78300))

(assert (=> b!82699 m!78300))

(declare-fun m!78302 () Bool)

(assert (=> b!82699 m!78302))

(declare-fun m!78304 () Bool)

(assert (=> b!82699 m!78304))

(assert (=> b!82699 m!78304))

(declare-fun m!78306 () Bool)

(assert (=> b!82699 m!78306))

(assert (=> b!82699 m!78298))

(declare-fun m!78308 () Bool)

(assert (=> b!82699 m!78308))

(assert (=> b!82699 m!78302))

(assert (=> b!82699 m!78306))

(declare-fun m!78310 () Bool)

(assert (=> b!82699 m!78310))

(assert (=> b!82651 d!56365))

(declare-fun b!82714 () Bool)

(declare-fun e!44874 () List!671)

(assert (=> b!82714 (= e!44874 Nil!630)))

(declare-fun d!56367 () Bool)

(declare-fun e!44875 () Bool)

(assert (=> d!56367 e!44875))

(declare-fun res!42415 () Bool)

(assert (=> d!56367 (=> (not res!42415) (not e!44875))))

(declare-fun lt!19142 () List!671)

(declare-fun size!659 (List!671) Int)

(assert (=> d!56367 (= res!42415 (<= (size!659 lt!19142) (size!659 (t!47881 ls!96))))))

(assert (=> d!56367 (= lt!19142 e!44874)))

(declare-fun c!20779 () Bool)

(assert (=> d!56367 (= c!20779 (is-Nil!630 (t!47881 ls!96)))))

(assert (=> d!56367 (= (filter!24 (t!47881 ls!96) lambda!9987) lt!19142)))

(declare-fun b!82715 () Bool)

(declare-fun e!44872 () List!671)

(declare-fun lt!19143 () List!671)

(assert (=> b!82715 (= e!44872 (Cons!628 (h!998 (t!47881 ls!96)) lt!19143))))

(declare-fun b!82716 () Bool)

(declare-fun res!42416 () Bool)

(assert (=> b!82716 (=> (not res!42416) (not e!44875))))

(declare-fun content!130 (List!671) (Set Int))

(assert (=> b!82716 (= res!42416 (subset (content!130 lt!19142) (content!130 (t!47881 ls!96))))))

(declare-fun b!82717 () Bool)

(assert (=> b!82717 (= e!44875 (forall!26 lt!19142 lambda!9987))))

(declare-fun b!82718 () Bool)

(declare-fun e!44873 () Bool)

(assert (=> b!82718 (= e!44873 (dynLambda!990 lambda!9987 (h!998 (t!47881 ls!96))))))

(declare-fun b!82719 () Bool)

(assert (=> b!82719 (= e!44874 e!44872)))

(declare-fun c!20778 () Bool)

(assert (=> b!82719 (= c!20778 e!44873)))

(declare-fun res!42414 () Bool)

(assert (=> b!82719 (=> (not res!42414) (not e!44873))))

(assert (=> b!82719 (= res!42414 (is-Cons!628 (t!47881 ls!96)))))

(assert (=> b!82719 (= lt!19143 (filter!24 (t!47881 (t!47881 ls!96)) lambda!9987))))

(declare-fun b!82720 () Bool)

(assert (=> b!82720 (= e!44872 lt!19143)))

(assert (= (and b!82719 res!42414) b!82718))

(assert (= (and b!82719 c!20778) b!82715))

(assert (= (and b!82719 (not c!20778)) b!82720))

(assert (= (and d!56367 c!20779) b!82714))

(assert (= (and d!56367 (not c!20779)) b!82719))

(assert (= (and d!56367 res!42415) b!82716))

(assert (= (and b!82716 res!42416) b!82717))

(declare-fun b_lambda!16375 () Bool)

(assert (=> (not b_lambda!16375) (not b!82718)))

(declare-fun m!78312 () Bool)

(assert (=> d!56367 m!78312))

(declare-fun m!78314 () Bool)

(assert (=> d!56367 m!78314))

(declare-fun m!78316 () Bool)

(assert (=> b!82717 m!78316))

(declare-fun m!78318 () Bool)

(assert (=> b!82718 m!78318))

(declare-fun m!78320 () Bool)

(assert (=> b!82716 m!78320))

(declare-fun m!78322 () Bool)

(assert (=> b!82716 m!78322))

(declare-fun m!78324 () Bool)

(assert (=> b!82719 m!78324))

(assert (=> b!82654 d!56367))

(declare-fun b!82733 () Bool)

(declare-fun res!42428 () Bool)

(declare-fun e!44883 () Bool)

(assert (=> b!82733 (=> (not res!42428) (not e!44883))))

(declare-fun isSorted!1 (List!671) Bool)

(assert (=> b!82733 (= res!42428 (isSorted!1 equal!10))))

(declare-fun b!82734 () Bool)

(declare-fun e!44884 () Bool)

(assert (=> b!82734 (= e!44884 (isSorted!1 (++!79 (quickSort!0 less!5) equal!10)))))

(declare-fun lt!19146 () Bool)

(assert (=> b!82734 (= lt!19146 (append_sorted!0 (t!47881 (quickSort!0 less!5)) equal!10))))

(declare-fun d!56369 () Bool)

(assert (=> d!56369 e!44884))

(declare-fun c!20782 () Bool)

(assert (=> d!56369 (= c!20782 (is-Cons!628 (quickSort!0 less!5)))))

(assert (=> d!56369 e!44883))

(declare-fun res!42425 () Bool)

(assert (=> d!56369 (=> (not res!42425) (not e!44883))))

(assert (=> d!56369 (= res!42425 (isSorted!1 (quickSort!0 less!5)))))

(assert (=> d!56369 (= (append_sorted!0 (quickSort!0 less!5) equal!10) true)))

(declare-fun b!82735 () Bool)

(declare-fun e!44882 () Bool)

(assert (=> b!82735 (= e!44883 e!44882)))

(declare-fun res!42427 () Bool)

(assert (=> b!82735 (=> res!42427 e!44882)))

(assert (=> b!82735 (= res!42427 (isEmpty!681 (quickSort!0 less!5)))))

(declare-fun b!82736 () Bool)

(declare-fun res!42426 () Bool)

(assert (=> b!82736 (=> res!42426 e!44882)))

(assert (=> b!82736 (= res!42426 (isEmpty!681 equal!10))))

(declare-fun b!82737 () Bool)

(declare-fun head!1057 (List!671) Int)

(assert (=> b!82737 (= e!44882 (<= (last!21 (quickSort!0 less!5)) (head!1057 equal!10)))))

(declare-fun b!82738 () Bool)

(assert (=> b!82738 (= e!44884 (isSorted!1 (++!79 (quickSort!0 less!5) equal!10)))))

(assert (= (and d!56369 res!42425) b!82733))

(assert (= (and b!82733 res!42428) b!82735))

(assert (= (and b!82735 (not res!42427)) b!82736))

(assert (= (and b!82736 (not res!42426)) b!82737))

(assert (= (and d!56369 c!20782) b!82734))

(assert (= (and d!56369 (not c!20782)) b!82738))

(declare-fun m!78326 () Bool)

(assert (=> b!82733 m!78326))

(assert (=> b!82738 m!78274))

(declare-fun m!78328 () Bool)

(assert (=> b!82738 m!78328))

(assert (=> b!82738 m!78328))

(declare-fun m!78330 () Bool)

(assert (=> b!82738 m!78330))

(declare-fun m!78332 () Bool)

(assert (=> b!82736 m!78332))

(assert (=> d!56369 m!78274))

(declare-fun m!78334 () Bool)

(assert (=> d!56369 m!78334))

(assert (=> b!82734 m!78274))

(assert (=> b!82734 m!78328))

(assert (=> b!82734 m!78328))

(assert (=> b!82734 m!78330))

(declare-fun m!78336 () Bool)

(assert (=> b!82734 m!78336))

(assert (=> b!82735 m!78274))

(assert (=> b!82735 m!78288))

(assert (=> b!82737 m!78274))

(assert (=> b!82737 m!78290))

(declare-fun m!78338 () Bool)

(assert (=> b!82737 m!78338))

(assert (=> b!82650 d!56369))

(assert (=> b!82650 d!56365))

(declare-fun b!82739 () Bool)

(declare-fun e!44887 () List!671)

(assert (=> b!82739 (= e!44887 Nil!630)))

(declare-fun d!56371 () Bool)

(declare-fun e!44888 () Bool)

(assert (=> d!56371 e!44888))

(declare-fun res!42430 () Bool)

(assert (=> d!56371 (=> (not res!42430) (not e!44888))))

(declare-fun lt!19147 () List!671)

(assert (=> d!56371 (= res!42430 (<= (size!659 lt!19147) (size!659 (t!47881 ls!96))))))

(assert (=> d!56371 (= lt!19147 e!44887)))

(declare-fun c!20784 () Bool)

(assert (=> d!56371 (= c!20784 (is-Nil!630 (t!47881 ls!96)))))

(assert (=> d!56371 (= (filter!24 (t!47881 ls!96) lambda!9988) lt!19147)))

(declare-fun b!82740 () Bool)

(declare-fun e!44885 () List!671)

(declare-fun lt!19148 () List!671)

(assert (=> b!82740 (= e!44885 (Cons!628 (h!998 (t!47881 ls!96)) lt!19148))))

(declare-fun b!82741 () Bool)

(declare-fun res!42431 () Bool)

(assert (=> b!82741 (=> (not res!42431) (not e!44888))))

(assert (=> b!82741 (= res!42431 (subset (content!130 lt!19147) (content!130 (t!47881 ls!96))))))

(declare-fun b!82742 () Bool)

(assert (=> b!82742 (= e!44888 (forall!26 lt!19147 lambda!9988))))

(declare-fun b!82743 () Bool)

(declare-fun e!44886 () Bool)

(assert (=> b!82743 (= e!44886 (dynLambda!990 lambda!9988 (h!998 (t!47881 ls!96))))))

(declare-fun b!82744 () Bool)

(assert (=> b!82744 (= e!44887 e!44885)))

(declare-fun c!20783 () Bool)

(assert (=> b!82744 (= c!20783 e!44886)))

(declare-fun res!42429 () Bool)

(assert (=> b!82744 (=> (not res!42429) (not e!44886))))

(assert (=> b!82744 (= res!42429 (is-Cons!628 (t!47881 ls!96)))))

(assert (=> b!82744 (= lt!19148 (filter!24 (t!47881 (t!47881 ls!96)) lambda!9988))))

(declare-fun b!82745 () Bool)

(assert (=> b!82745 (= e!44885 lt!19148)))

(assert (= (and b!82744 res!42429) b!82743))

(assert (= (and b!82744 c!20783) b!82740))

(assert (= (and b!82744 (not c!20783)) b!82745))

(assert (= (and d!56371 c!20784) b!82739))

(assert (= (and d!56371 (not c!20784)) b!82744))

(assert (= (and d!56371 res!42430) b!82741))

(assert (= (and b!82741 res!42431) b!82742))

(declare-fun b_lambda!16377 () Bool)

(assert (=> (not b_lambda!16377) (not b!82743)))

(declare-fun m!78340 () Bool)

(assert (=> d!56371 m!78340))

(assert (=> d!56371 m!78314))

(declare-fun m!78342 () Bool)

(assert (=> b!82742 m!78342))

(declare-fun m!78344 () Bool)

(assert (=> b!82743 m!78344))

(declare-fun m!78346 () Bool)

(assert (=> b!82741 m!78346))

(assert (=> b!82741 m!78322))

(declare-fun m!78348 () Bool)

(assert (=> b!82744 m!78348))

(assert (=> b!82659 d!56371))

(declare-fun bs!40060 () Bool)

(declare-fun d!56373 () Bool)

(assert (= bs!40060 (and d!56373 b!82652)))

(declare-fun lambda!10011 () Int)

(assert (=> bs!40060 (not (= lambda!10011 lambda!9989))))

(declare-fun bs!40061 () Bool)

(assert (= bs!40061 (and d!56373 b!82666)))

(assert (=> bs!40061 (not (= lambda!10011 lambda!9998))))

(declare-fun bs!40062 () Bool)

(assert (= bs!40062 (and d!56373 b!82654)))

(assert (=> bs!40062 (not (= lambda!10011 lambda!9987))))

(declare-fun bs!40063 () Bool)

(assert (= bs!40063 (and d!56373 b!82655)))

(assert (=> bs!40063 (not (= lambda!10011 lambda!9990))))

(declare-fun bs!40064 () Bool)

(assert (= bs!40064 (and d!56373 b!82667)))

(assert (=> bs!40064 (not (= lambda!10011 lambda!9999))))

(declare-fun bs!40065 () Bool)

(assert (= bs!40065 (and d!56373 d!56361)))

(assert (=> bs!40065 (not (= lambda!10011 lambda!9997))))

(declare-fun bs!40066 () Bool)

(assert (= bs!40066 (and d!56373 b!82659)))

(assert (=> bs!40066 (= lambda!10011 lambda!9988)))

(declare-fun bs!40067 () Bool)

(assert (= bs!40067 (and d!56373 b!82699)))

(assert (=> bs!40067 (not (= lambda!10011 lambda!10008))))

(assert (=> bs!40067 (= (= (h!998 ls!96) (h!998 less!5)) (= lambda!10011 lambda!10007))))

(assert (=> bs!40067 (not (= lambda!10011 lambda!10006))))

(assert (=> d!56373 true))

(assert (=> d!56373 (isSorted!1 (Cons!628 (h!998 ls!96) (filter!24 (t!47881 ls!96) lambda!10011)))))

(declare-datatypes () ((Unit!1187 (Unit!1188))))

(declare-fun lt!19151 () Unit!1187)

(declare-fun Unit!1189 () Unit!1187)

(assert (=> d!56373 (= lt!19151 Unit!1189)))

(declare-fun filter_equal_sorted!0 (List!671 Int) Bool)

(assert (=> d!56373 (filter_equal_sorted!0 (t!47881 ls!96) (h!998 ls!96))))

(assert (=> d!56373 (= (cons_filter_equal_sorted!0 (t!47881 ls!96) (h!998 ls!96)) true)))

(declare-fun bs!40068 () Bool)

(assert (= bs!40068 d!56373))

(declare-fun m!78350 () Bool)

(assert (=> bs!40068 m!78350))

(declare-fun m!78352 () Bool)

(assert (=> bs!40068 m!78352))

(declare-fun m!78354 () Bool)

(assert (=> bs!40068 m!78354))

(assert (=> b!82653 d!56373))

(declare-fun b!82746 () Bool)

(declare-fun e!44891 () List!671)

(assert (=> b!82746 (= e!44891 Nil!630)))

(declare-fun d!56375 () Bool)

(declare-fun e!44892 () Bool)

(assert (=> d!56375 e!44892))

(declare-fun res!42433 () Bool)

(assert (=> d!56375 (=> (not res!42433) (not e!44892))))

(declare-fun lt!19152 () List!671)

(assert (=> d!56375 (= res!42433 (<= (size!659 lt!19152) (size!659 (t!47881 ls!96))))))

(assert (=> d!56375 (= lt!19152 e!44891)))

(declare-fun c!20786 () Bool)

(assert (=> d!56375 (= c!20786 (is-Nil!630 (t!47881 ls!96)))))

(assert (=> d!56375 (= (filter!24 (t!47881 ls!96) lambda!9989) lt!19152)))

(declare-fun b!82747 () Bool)

(declare-fun e!44889 () List!671)

(declare-fun lt!19153 () List!671)

(assert (=> b!82747 (= e!44889 (Cons!628 (h!998 (t!47881 ls!96)) lt!19153))))

(declare-fun b!82748 () Bool)

(declare-fun res!42434 () Bool)

(assert (=> b!82748 (=> (not res!42434) (not e!44892))))

(assert (=> b!82748 (= res!42434 (subset (content!130 lt!19152) (content!130 (t!47881 ls!96))))))

(declare-fun b!82749 () Bool)

(assert (=> b!82749 (= e!44892 (forall!26 lt!19152 lambda!9989))))

(declare-fun b!82750 () Bool)

(declare-fun e!44890 () Bool)

(assert (=> b!82750 (= e!44890 (dynLambda!990 lambda!9989 (h!998 (t!47881 ls!96))))))

(declare-fun b!82751 () Bool)

(assert (=> b!82751 (= e!44891 e!44889)))

(declare-fun c!20785 () Bool)

(assert (=> b!82751 (= c!20785 e!44890)))

(declare-fun res!42432 () Bool)

(assert (=> b!82751 (=> (not res!42432) (not e!44890))))

(assert (=> b!82751 (= res!42432 (is-Cons!628 (t!47881 ls!96)))))

(assert (=> b!82751 (= lt!19153 (filter!24 (t!47881 (t!47881 ls!96)) lambda!9989))))

(declare-fun b!82752 () Bool)

(assert (=> b!82752 (= e!44889 lt!19153)))

(assert (= (and b!82751 res!42432) b!82750))

(assert (= (and b!82751 c!20785) b!82747))

(assert (= (and b!82751 (not c!20785)) b!82752))

(assert (= (and d!56375 c!20786) b!82746))

(assert (= (and d!56375 (not c!20786)) b!82751))

(assert (= (and d!56375 res!42433) b!82748))

(assert (= (and b!82748 res!42434) b!82749))

(declare-fun b_lambda!16379 () Bool)

(assert (=> (not b_lambda!16379) (not b!82750)))

(declare-fun m!78356 () Bool)

(assert (=> d!56375 m!78356))

(assert (=> d!56375 m!78314))

(declare-fun m!78358 () Bool)

(assert (=> b!82749 m!78358))

(declare-fun m!78360 () Bool)

(assert (=> b!82750 m!78360))

(declare-fun m!78362 () Bool)

(assert (=> b!82748 m!78362))

(assert (=> b!82748 m!78322))

(declare-fun m!78364 () Bool)

(assert (=> b!82751 m!78364))

(assert (=> b!82652 d!56375))

(declare-fun bs!40069 () Bool)

(declare-fun b!82765 () Bool)

(assert (= bs!40069 (and b!82765 b!82652)))

(declare-fun lambda!10024 () Int)

(assert (=> bs!40069 (not (= lambda!10024 lambda!9989))))

(declare-fun bs!40070 () Bool)

(assert (= bs!40070 (and b!82765 b!82666)))

(assert (=> bs!40070 (not (= lambda!10024 lambda!9998))))

(declare-fun bs!40071 () Bool)

(assert (= bs!40071 (and b!82765 d!56373)))

(assert (=> bs!40071 (not (= lambda!10024 lambda!10011))))

(declare-fun bs!40072 () Bool)

(assert (= bs!40072 (and b!82765 b!82654)))

(assert (=> bs!40072 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10024 lambda!9987))))

(declare-fun bs!40073 () Bool)

(assert (= bs!40073 (and b!82765 b!82655)))

(assert (=> bs!40073 (not (= lambda!10024 lambda!9990))))

(declare-fun bs!40074 () Bool)

(assert (= bs!40074 (and b!82765 b!82667)))

(assert (=> bs!40074 (not (= lambda!10024 lambda!9999))))

(declare-fun bs!40075 () Bool)

(assert (= bs!40075 (and b!82765 d!56361)))

(assert (=> bs!40075 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10024 lambda!9997))))

(declare-fun bs!40076 () Bool)

(assert (= bs!40076 (and b!82765 b!82659)))

(assert (=> bs!40076 (not (= lambda!10024 lambda!9988))))

(declare-fun bs!40077 () Bool)

(assert (= bs!40077 (and b!82765 b!82699)))

(assert (=> bs!40077 (not (= lambda!10024 lambda!10008))))

(assert (=> bs!40077 (not (= lambda!10024 lambda!10007))))

(assert (=> bs!40077 (= lambda!10024 lambda!10006)))

(assert (=> b!82765 true))

(declare-fun lambda!10025 () Int)

(assert (=> bs!40069 (not (= lambda!10025 lambda!9989))))

(assert (=> b!82765 (not (= lambda!10025 lambda!10024))))

(assert (=> bs!40070 (not (= lambda!10025 lambda!9998))))

(assert (=> bs!40071 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10025 lambda!10011))))

(assert (=> bs!40072 (not (= lambda!10025 lambda!9987))))

(assert (=> bs!40073 (not (= lambda!10025 lambda!9990))))

(assert (=> bs!40074 (not (= lambda!10025 lambda!9999))))

(assert (=> bs!40075 (not (= lambda!10025 lambda!9997))))

(assert (=> bs!40076 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10025 lambda!9988))))

(assert (=> bs!40077 (not (= lambda!10025 lambda!10008))))

(assert (=> bs!40077 (= lambda!10025 lambda!10007)))

(assert (=> bs!40077 (not (= lambda!10025 lambda!10006))))

(assert (=> b!82765 true))

(declare-fun lambda!10026 () Int)

(assert (=> bs!40069 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10026 lambda!9989))))

(assert (=> b!82765 (not (= lambda!10026 lambda!10025))))

(assert (=> b!82765 (not (= lambda!10026 lambda!10024))))

(assert (=> bs!40070 (not (= lambda!10026 lambda!9998))))

(assert (=> bs!40071 (not (= lambda!10026 lambda!10011))))

(assert (=> bs!40072 (not (= lambda!10026 lambda!9987))))

(assert (=> bs!40073 (not (= lambda!10026 lambda!9990))))

(assert (=> bs!40074 (not (= lambda!10026 lambda!9999))))

(assert (=> bs!40075 (not (= lambda!10026 lambda!9997))))

(assert (=> bs!40076 (not (= lambda!10026 lambda!9988))))

(assert (=> bs!40077 (= lambda!10026 lambda!10008)))

(assert (=> bs!40077 (not (= lambda!10026 lambda!10007))))

(assert (=> bs!40077 (not (= lambda!10026 lambda!10006))))

(assert (=> b!82765 true))

(declare-fun b!82763 () Bool)

(declare-fun e!44906 () Bool)

(declare-fun lt!19168 () List!671)

(assert (=> b!82763 (= e!44906 (sort_preserves_forall!0 lt!19168 lambda!9987))))

(declare-fun e!44905 () Bool)

(declare-fun b!82764 () Bool)

(declare-fun filter_preserves_forall!0 (List!671 Int Int) Bool)

(assert (=> b!82764 (= e!44905 (filter_preserves_forall!0 (t!47881 less!5) lambda!10025 lambda!9987))))

(declare-fun e!44903 () Bool)

(declare-fun e!44907 () Bool)

(assert (=> b!82765 (= e!44903 e!44907)))

(declare-fun res!42451 () Bool)

(assert (=> b!82765 (=> (not res!42451) (not e!44907))))

(declare-fun lt!19170 () List!671)

(declare-fun lt!19171 () List!671)

(declare-fun append_preserves_forall!0 (List!671 List!671 Int) Bool)

(assert (=> b!82765 (= res!42451 (append_preserves_forall!0 (quickSort!0 lt!19171) lt!19170 lambda!9987))))

(declare-fun lt!19166 () Bool)

(assert (=> b!82765 (= lt!19166 e!44906)))

(declare-fun res!42454 () Bool)

(assert (=> b!82765 (=> (not res!42454) (not e!44906))))

(assert (=> b!82765 (= res!42454 (sort_preserves_forall!0 lt!19171 lambda!9987))))

(declare-fun lt!19169 () Bool)

(declare-fun e!44904 () Bool)

(assert (=> b!82765 (= lt!19169 e!44904)))

(declare-fun res!42453 () Bool)

(assert (=> b!82765 (=> (not res!42453) (not e!44904))))

(assert (=> b!82765 (= res!42453 e!44905)))

(declare-fun res!42450 () Bool)

(assert (=> b!82765 (=> (not res!42450) (not e!44905))))

(assert (=> b!82765 (= res!42450 (filter_preserves_forall!0 (t!47881 less!5) lambda!10024 lambda!9987))))

(assert (=> b!82765 (= lt!19168 (filter!24 (t!47881 less!5) lambda!10026))))

(assert (=> b!82765 (= lt!19170 (Cons!628 (h!998 less!5) (filter!24 (t!47881 less!5) lambda!10025)))))

(assert (=> b!82765 (= lt!19171 (filter!24 (t!47881 less!5) lambda!10024))))

(declare-fun b!82766 () Bool)

(assert (=> b!82766 (= e!44907 (append_preserves_forall!0 (++!79 (quickSort!0 lt!19171) lt!19170) (quickSort!0 lt!19168) lambda!9987))))

(declare-fun d!56377 () Bool)

(assert (=> d!56377 (forall!26 (quickSort!0 less!5) lambda!9987)))

(declare-fun lt!19167 () Bool)

(assert (=> d!56377 (= lt!19167 e!44903)))

(declare-fun res!42452 () Bool)

(assert (=> d!56377 (=> res!42452 e!44903)))

(assert (=> d!56377 (= res!42452 (or (is-Nil!630 less!5) (and (is-Cons!628 less!5) (is-Nil!630 (t!47881 less!5)))))))

(assert (=> d!56377 (forall!26 less!5 lambda!9987)))

(assert (=> d!56377 (= (sort_preserves_forall!0 less!5 lambda!9987) true)))

(declare-fun b!82767 () Bool)

(assert (=> b!82767 (= e!44904 (filter_preserves_forall!0 (t!47881 less!5) lambda!10026 lambda!9987))))

(assert (= (and d!56377 (not res!42452)) b!82765))

(assert (= (and b!82765 res!42450) b!82764))

(assert (= (and b!82765 res!42453) b!82767))

(assert (= (and b!82765 res!42454) b!82763))

(assert (= (and b!82765 res!42451) b!82766))

(declare-fun m!78366 () Bool)

(assert (=> b!82765 m!78366))

(declare-fun m!78368 () Bool)

(assert (=> b!82765 m!78368))

(declare-fun m!78370 () Bool)

(assert (=> b!82765 m!78370))

(declare-fun m!78372 () Bool)

(assert (=> b!82765 m!78372))

(declare-fun m!78374 () Bool)

(assert (=> b!82765 m!78374))

(assert (=> b!82765 m!78374))

(declare-fun m!78376 () Bool)

(assert (=> b!82765 m!78376))

(declare-fun m!78378 () Bool)

(assert (=> b!82765 m!78378))

(assert (=> b!82766 m!78374))

(assert (=> b!82766 m!78374))

(declare-fun m!78380 () Bool)

(assert (=> b!82766 m!78380))

(declare-fun m!78382 () Bool)

(assert (=> b!82766 m!78382))

(assert (=> b!82766 m!78380))

(assert (=> b!82766 m!78382))

(declare-fun m!78384 () Bool)

(assert (=> b!82766 m!78384))

(declare-fun m!78386 () Bool)

(assert (=> b!82767 m!78386))

(declare-fun m!78388 () Bool)

(assert (=> b!82764 m!78388))

(assert (=> d!56377 m!78274))

(assert (=> d!56377 m!78274))

(assert (=> d!56377 m!78294))

(declare-fun m!78390 () Bool)

(assert (=> d!56377 m!78390))

(declare-fun m!78392 () Bool)

(assert (=> b!82763 m!78392))

(assert (=> b!82657 d!56377))

(declare-fun bs!40078 () Bool)

(declare-fun b!82772 () Bool)

(assert (= bs!40078 (and b!82772 b!82652)))

(declare-fun lambda!10033 () Int)

(assert (=> bs!40078 (not (= lambda!10033 lambda!9989))))

(declare-fun bs!40079 () Bool)

(assert (= bs!40079 (and b!82772 b!82765)))

(assert (=> bs!40079 (not (= lambda!10033 lambda!10026))))

(assert (=> bs!40079 (not (= lambda!10033 lambda!10025))))

(assert (=> bs!40079 (= lambda!10033 lambda!10024)))

(declare-fun bs!40080 () Bool)

(assert (= bs!40080 (and b!82772 b!82666)))

(assert (=> bs!40080 (not (= lambda!10033 lambda!9998))))

(declare-fun bs!40081 () Bool)

(assert (= bs!40081 (and b!82772 d!56373)))

(assert (=> bs!40081 (not (= lambda!10033 lambda!10011))))

(declare-fun bs!40082 () Bool)

(assert (= bs!40082 (and b!82772 b!82654)))

(assert (=> bs!40082 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10033 lambda!9987))))

(declare-fun bs!40083 () Bool)

(assert (= bs!40083 (and b!82772 b!82655)))

(assert (=> bs!40083 (not (= lambda!10033 lambda!9990))))

(declare-fun bs!40084 () Bool)

(assert (= bs!40084 (and b!82772 b!82667)))

(assert (=> bs!40084 (not (= lambda!10033 lambda!9999))))

(declare-fun bs!40085 () Bool)

(assert (= bs!40085 (and b!82772 d!56361)))

(assert (=> bs!40085 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10033 lambda!9997))))

(declare-fun bs!40086 () Bool)

(assert (= bs!40086 (and b!82772 b!82659)))

(assert (=> bs!40086 (not (= lambda!10033 lambda!9988))))

(declare-fun bs!40087 () Bool)

(assert (= bs!40087 (and b!82772 b!82699)))

(assert (=> bs!40087 (not (= lambda!10033 lambda!10008))))

(assert (=> bs!40087 (not (= lambda!10033 lambda!10007))))

(assert (=> bs!40087 (= lambda!10033 lambda!10006)))

(assert (=> b!82772 true))

(declare-fun lambda!10034 () Int)

(assert (=> bs!40078 (not (= lambda!10034 lambda!9989))))

(assert (=> bs!40079 (not (= lambda!10034 lambda!10026))))

(assert (=> bs!40079 (= lambda!10034 lambda!10025)))

(assert (=> bs!40079 (not (= lambda!10034 lambda!10024))))

(assert (=> bs!40080 (not (= lambda!10034 lambda!9998))))

(assert (=> bs!40081 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10034 lambda!10011))))

(assert (=> bs!40082 (not (= lambda!10034 lambda!9987))))

(assert (=> bs!40083 (not (= lambda!10034 lambda!9990))))

(assert (=> bs!40084 (not (= lambda!10034 lambda!9999))))

(assert (=> b!82772 (not (= lambda!10034 lambda!10033))))

(assert (=> bs!40085 (not (= lambda!10034 lambda!9997))))

(assert (=> bs!40086 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10034 lambda!9988))))

(assert (=> bs!40087 (not (= lambda!10034 lambda!10008))))

(assert (=> bs!40087 (= lambda!10034 lambda!10007)))

(assert (=> bs!40087 (not (= lambda!10034 lambda!10006))))

(assert (=> b!82772 true))

(declare-fun lambda!10035 () Int)

(assert (=> bs!40078 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10035 lambda!9989))))

(assert (=> bs!40079 (= lambda!10035 lambda!10026)))

(assert (=> bs!40079 (not (= lambda!10035 lambda!10025))))

(assert (=> bs!40079 (not (= lambda!10035 lambda!10024))))

(assert (=> bs!40080 (not (= lambda!10035 lambda!9998))))

(assert (=> bs!40081 (not (= lambda!10035 lambda!10011))))

(assert (=> bs!40082 (not (= lambda!10035 lambda!9987))))

(assert (=> bs!40083 (not (= lambda!10035 lambda!9990))))

(assert (=> bs!40084 (not (= lambda!10035 lambda!9999))))

(assert (=> b!82772 (not (= lambda!10035 lambda!10034))))

(assert (=> b!82772 (not (= lambda!10035 lambda!10033))))

(assert (=> bs!40085 (not (= lambda!10035 lambda!9997))))

(assert (=> bs!40086 (not (= lambda!10035 lambda!9988))))

(assert (=> bs!40087 (= lambda!10035 lambda!10008)))

(assert (=> bs!40087 (not (= lambda!10035 lambda!10007))))

(assert (=> bs!40087 (not (= lambda!10035 lambda!10006))))

(assert (=> b!82772 true))

(declare-fun d!56379 () Bool)

(assert (=> d!56379 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!19181 () Bool)

(declare-fun e!44913 () Bool)

(assert (=> d!56379 (= lt!19181 e!44913)))

(declare-fun res!42461 () Bool)

(assert (=> d!56379 (=> res!42461 e!44913)))

(assert (=> d!56379 (= res!42461 (or (is-Nil!630 less!5) (and (is-Cons!628 less!5) (is-Nil!630 (t!47881 less!5)))))))

(assert (=> d!56379 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!44912 () Bool)

(assert (=> b!82772 (= e!44913 e!44912)))

(declare-fun res!42462 () Bool)

(assert (=> b!82772 (=> (not res!42462) (not e!44912))))

(declare-fun lt!19180 () List!671)

(declare-fun lt!19182 () List!671)

(assert (=> b!82772 (= res!42462 (append_sorted!0 (quickSort!0 lt!19180) lt!19182))))

(declare-fun lt!19183 () List!671)

(assert (=> b!82772 (= lt!19183 (filter!24 (t!47881 less!5) lambda!10035))))

(assert (=> b!82772 (= lt!19182 (Cons!628 (h!998 less!5) (filter!24 (t!47881 less!5) lambda!10034)))))

(assert (=> b!82772 (= lt!19180 (filter!24 (t!47881 less!5) lambda!10033))))

(declare-fun b!82773 () Bool)

(assert (=> b!82773 (= e!44912 (append_sorted!0 (++!79 (quickSort!0 lt!19180) lt!19182) (quickSort!0 lt!19183)))))

(assert (= (and d!56379 (not res!42461)) b!82772))

(assert (= (and b!82772 res!42462) b!82773))

(assert (=> d!56379 m!78274))

(assert (=> d!56379 m!78274))

(assert (=> d!56379 m!78334))

(declare-fun m!78394 () Bool)

(assert (=> b!82772 m!78394))

(declare-fun m!78396 () Bool)

(assert (=> b!82772 m!78396))

(declare-fun m!78398 () Bool)

(assert (=> b!82772 m!78398))

(declare-fun m!78400 () Bool)

(assert (=> b!82772 m!78400))

(declare-fun m!78402 () Bool)

(assert (=> b!82772 m!78402))

(assert (=> b!82772 m!78400))

(assert (=> b!82773 m!78400))

(assert (=> b!82773 m!78400))

(declare-fun m!78404 () Bool)

(assert (=> b!82773 m!78404))

(declare-fun m!78406 () Bool)

(assert (=> b!82773 m!78406))

(assert (=> b!82773 m!78404))

(assert (=> b!82773 m!78406))

(declare-fun m!78408 () Bool)

(assert (=> b!82773 m!78408))

(assert (=> b!82656 d!56379))

(declare-fun bs!40088 () Bool)

(declare-fun b!82776 () Bool)

(assert (= bs!40088 (and b!82776 b!82652)))

(declare-fun lambda!10036 () Int)

(assert (=> bs!40088 (not (= lambda!10036 lambda!9989))))

(declare-fun bs!40089 () Bool)

(assert (= bs!40089 (and b!82776 b!82765)))

(assert (=> bs!40089 (not (= lambda!10036 lambda!10026))))

(assert (=> bs!40089 (not (= lambda!10036 lambda!10025))))

(assert (=> bs!40089 (= lambda!10036 lambda!10024)))

(declare-fun bs!40090 () Bool)

(assert (= bs!40090 (and b!82776 b!82666)))

(assert (=> bs!40090 (not (= lambda!10036 lambda!9998))))

(declare-fun bs!40091 () Bool)

(assert (= bs!40091 (and b!82776 d!56373)))

(assert (=> bs!40091 (not (= lambda!10036 lambda!10011))))

(declare-fun bs!40092 () Bool)

(assert (= bs!40092 (and b!82776 b!82654)))

(assert (=> bs!40092 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10036 lambda!9987))))

(declare-fun bs!40093 () Bool)

(assert (= bs!40093 (and b!82776 b!82655)))

(assert (=> bs!40093 (not (= lambda!10036 lambda!9990))))

(declare-fun bs!40094 () Bool)

(assert (= bs!40094 (and b!82776 b!82667)))

(assert (=> bs!40094 (not (= lambda!10036 lambda!9999))))

(declare-fun bs!40095 () Bool)

(assert (= bs!40095 (and b!82776 b!82772)))

(assert (=> bs!40095 (not (= lambda!10036 lambda!10035))))

(assert (=> bs!40095 (not (= lambda!10036 lambda!10034))))

(assert (=> bs!40095 (= lambda!10036 lambda!10033)))

(declare-fun bs!40096 () Bool)

(assert (= bs!40096 (and b!82776 d!56361)))

(assert (=> bs!40096 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10036 lambda!9997))))

(declare-fun bs!40097 () Bool)

(assert (= bs!40097 (and b!82776 b!82659)))

(assert (=> bs!40097 (not (= lambda!10036 lambda!9988))))

(declare-fun bs!40098 () Bool)

(assert (= bs!40098 (and b!82776 b!82699)))

(assert (=> bs!40098 (not (= lambda!10036 lambda!10008))))

(assert (=> bs!40098 (not (= lambda!10036 lambda!10007))))

(assert (=> bs!40098 (= lambda!10036 lambda!10006)))

(assert (=> b!82776 true))

(declare-fun lambda!10037 () Int)

(assert (=> bs!40088 (not (= lambda!10037 lambda!9989))))

(assert (=> b!82776 (not (= lambda!10037 lambda!10036))))

(assert (=> bs!40089 (not (= lambda!10037 lambda!10026))))

(assert (=> bs!40089 (= lambda!10037 lambda!10025)))

(assert (=> bs!40089 (not (= lambda!10037 lambda!10024))))

(assert (=> bs!40090 (not (= lambda!10037 lambda!9998))))

(assert (=> bs!40091 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10037 lambda!10011))))

(assert (=> bs!40092 (not (= lambda!10037 lambda!9987))))

(assert (=> bs!40093 (not (= lambda!10037 lambda!9990))))

(assert (=> bs!40094 (not (= lambda!10037 lambda!9999))))

(assert (=> bs!40095 (not (= lambda!10037 lambda!10035))))

(assert (=> bs!40095 (= lambda!10037 lambda!10034)))

(assert (=> bs!40095 (not (= lambda!10037 lambda!10033))))

(assert (=> bs!40096 (not (= lambda!10037 lambda!9997))))

(assert (=> bs!40097 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10037 lambda!9988))))

(assert (=> bs!40098 (not (= lambda!10037 lambda!10008))))

(assert (=> bs!40098 (= lambda!10037 lambda!10007)))

(assert (=> bs!40098 (not (= lambda!10037 lambda!10006))))

(assert (=> b!82776 true))

(declare-fun lambda!10038 () Int)

(assert (=> bs!40088 (= (= (h!998 less!5) (h!998 ls!96)) (= lambda!10038 lambda!9989))))

(assert (=> b!82776 (not (= lambda!10038 lambda!10037))))

(assert (=> b!82776 (not (= lambda!10038 lambda!10036))))

(assert (=> bs!40089 (= lambda!10038 lambda!10026)))

(assert (=> bs!40089 (not (= lambda!10038 lambda!10025))))

(assert (=> bs!40089 (not (= lambda!10038 lambda!10024))))

(assert (=> bs!40090 (not (= lambda!10038 lambda!9998))))

(assert (=> bs!40091 (not (= lambda!10038 lambda!10011))))

(assert (=> bs!40092 (not (= lambda!10038 lambda!9987))))

(assert (=> bs!40093 (not (= lambda!10038 lambda!9990))))

(assert (=> bs!40094 (not (= lambda!10038 lambda!9999))))

(assert (=> bs!40095 (= lambda!10038 lambda!10035)))

(assert (=> bs!40095 (not (= lambda!10038 lambda!10034))))

(assert (=> bs!40095 (not (= lambda!10038 lambda!10033))))

(assert (=> bs!40096 (not (= lambda!10038 lambda!9997))))

(assert (=> bs!40097 (not (= lambda!10038 lambda!9988))))

(assert (=> bs!40098 (= lambda!10038 lambda!10008)))

(assert (=> bs!40098 (not (= lambda!10038 lambda!10007))))

(assert (=> bs!40098 (not (= lambda!10038 lambda!10006))))

(assert (=> b!82776 true))

(declare-fun b!82774 () Bool)

(declare-fun e!44917 () Bool)

(declare-fun lt!19186 () List!671)

(assert (=> b!82774 (= e!44917 (sort_preserves_forall!0 lt!19186 lambda!9990))))

(declare-fun b!82775 () Bool)

(declare-fun e!44916 () Bool)

(assert (=> b!82775 (= e!44916 (filter_preserves_forall!0 (t!47881 less!5) lambda!10037 lambda!9990))))

(declare-fun e!44914 () Bool)

(declare-fun e!44918 () Bool)

(assert (=> b!82776 (= e!44914 e!44918)))

(declare-fun res!42464 () Bool)

(assert (=> b!82776 (=> (not res!42464) (not e!44918))))

(declare-fun lt!19189 () List!671)

(declare-fun lt!19188 () List!671)

(assert (=> b!82776 (= res!42464 (append_preserves_forall!0 (quickSort!0 lt!19189) lt!19188 lambda!9990))))

(declare-fun lt!19184 () Bool)

(assert (=> b!82776 (= lt!19184 e!44917)))

(declare-fun res!42467 () Bool)

(assert (=> b!82776 (=> (not res!42467) (not e!44917))))

(assert (=> b!82776 (= res!42467 (sort_preserves_forall!0 lt!19189 lambda!9990))))

(declare-fun lt!19187 () Bool)

(declare-fun e!44915 () Bool)

(assert (=> b!82776 (= lt!19187 e!44915)))

(declare-fun res!42466 () Bool)

(assert (=> b!82776 (=> (not res!42466) (not e!44915))))

(assert (=> b!82776 (= res!42466 e!44916)))

(declare-fun res!42463 () Bool)

(assert (=> b!82776 (=> (not res!42463) (not e!44916))))

(assert (=> b!82776 (= res!42463 (filter_preserves_forall!0 (t!47881 less!5) lambda!10036 lambda!9990))))

(assert (=> b!82776 (= lt!19186 (filter!24 (t!47881 less!5) lambda!10038))))

(assert (=> b!82776 (= lt!19188 (Cons!628 (h!998 less!5) (filter!24 (t!47881 less!5) lambda!10037)))))

(assert (=> b!82776 (= lt!19189 (filter!24 (t!47881 less!5) lambda!10036))))

(declare-fun b!82777 () Bool)

(assert (=> b!82777 (= e!44918 (append_preserves_forall!0 (++!79 (quickSort!0 lt!19189) lt!19188) (quickSort!0 lt!19186) lambda!9990))))

(declare-fun d!56381 () Bool)

(assert (=> d!56381 (forall!26 (quickSort!0 less!5) lambda!9990)))

(declare-fun lt!19185 () Bool)

(assert (=> d!56381 (= lt!19185 e!44914)))

(declare-fun res!42465 () Bool)

(assert (=> d!56381 (=> res!42465 e!44914)))

(assert (=> d!56381 (= res!42465 (or (is-Nil!630 less!5) (and (is-Cons!628 less!5) (is-Nil!630 (t!47881 less!5)))))))

(assert (=> d!56381 (forall!26 less!5 lambda!9990)))

(assert (=> d!56381 (= (sort_preserves_forall!0 less!5 lambda!9990) true)))

(declare-fun b!82778 () Bool)

(assert (=> b!82778 (= e!44915 (filter_preserves_forall!0 (t!47881 less!5) lambda!10038 lambda!9990))))

(assert (= (and d!56381 (not res!42465)) b!82776))

(assert (= (and b!82776 res!42463) b!82775))

(assert (= (and b!82776 res!42466) b!82778))

(assert (= (and b!82776 res!42467) b!82774))

(assert (= (and b!82776 res!42464) b!82777))

(declare-fun m!78410 () Bool)

(assert (=> b!82776 m!78410))

(declare-fun m!78412 () Bool)

(assert (=> b!82776 m!78412))

(declare-fun m!78414 () Bool)

(assert (=> b!82776 m!78414))

(declare-fun m!78416 () Bool)

(assert (=> b!82776 m!78416))

(declare-fun m!78418 () Bool)

(assert (=> b!82776 m!78418))

(assert (=> b!82776 m!78418))

(declare-fun m!78420 () Bool)

(assert (=> b!82776 m!78420))

(declare-fun m!78422 () Bool)

(assert (=> b!82776 m!78422))

(assert (=> b!82777 m!78418))

(assert (=> b!82777 m!78418))

(declare-fun m!78424 () Bool)

(assert (=> b!82777 m!78424))

(declare-fun m!78426 () Bool)

(assert (=> b!82777 m!78426))

(assert (=> b!82777 m!78424))

(assert (=> b!82777 m!78426))

(declare-fun m!78428 () Bool)

(assert (=> b!82777 m!78428))

(declare-fun m!78430 () Bool)

(assert (=> b!82778 m!78430))

(declare-fun m!78432 () Bool)

(assert (=> b!82775 m!78432))

(assert (=> d!56381 m!78274))

(assert (=> d!56381 m!78274))

(declare-fun m!78434 () Bool)

(assert (=> d!56381 m!78434))

(declare-fun m!78436 () Bool)

(assert (=> d!56381 m!78436))

(declare-fun m!78438 () Bool)

(assert (=> b!82774 m!78438))

(assert (=> b!82655 d!56381))

(declare-fun b_lambda!16381 () Bool)

(assert (= b_lambda!16377 (or b!82659 b_lambda!16381)))

(declare-fun bs!40099 () Bool)

(declare-fun d!56383 () Bool)

(assert (= bs!40099 (and d!56383 b!82659)))

(assert (=> bs!40099 (= (dynLambda!990 lambda!9988 (h!998 (t!47881 ls!96))) (= (h!998 (t!47881 ls!96)) (h!998 ls!96)))))

(assert (=> b!82743 d!56383))

(declare-fun b_lambda!16383 () Bool)

(assert (= b_lambda!16375 (or b!82654 b_lambda!16383)))

(declare-fun bs!40100 () Bool)

(declare-fun d!56385 () Bool)

(assert (= bs!40100 (and d!56385 b!82654)))

(assert (=> bs!40100 (= (dynLambda!990 lambda!9987 (h!998 (t!47881 ls!96))) (< (h!998 (t!47881 ls!96)) (h!998 ls!96)))))

(assert (=> b!82718 d!56385))

(declare-fun b_lambda!16385 () Bool)

(assert (= b_lambda!16371 (or b!82654 b_lambda!16385)))

(declare-fun bs!40101 () Bool)

(declare-fun d!56387 () Bool)

(assert (= bs!40101 (and d!56387 b!82654)))

(assert (=> bs!40101 (= (dynLambda!990 lambda!9987 (last!21 (quickSort!0 less!5))) (< (last!21 (quickSort!0 less!5)) (h!998 ls!96)))))

(assert (=> b!82682 d!56387))

(declare-fun b_lambda!16387 () Bool)

(assert (= b_lambda!16379 (or b!82652 b_lambda!16387)))

(declare-fun bs!40102 () Bool)

(declare-fun d!56389 () Bool)

(assert (= bs!40102 (and d!56389 b!82652)))

(assert (=> bs!40102 (= (dynLambda!990 lambda!9989 (h!998 (t!47881 ls!96))) (> (h!998 (t!47881 ls!96)) (h!998 ls!96)))))

(assert (=> b!82750 d!56389))

(declare-fun b_lambda!16389 () Bool)

(assert (= b_lambda!16373 (or b!82654 b_lambda!16389)))

(assert (=> b!82687 d!56387))

(push 1)

(assert (not b!82775))

(assert (not d!56369))

(assert (not b!82686))

(assert (not b!82749))

(assert (not b!82751))

(assert (not b!82685))

(assert (not b!82667))

(assert (not b!82682))

(assert (not b!82774))

(assert (not d!56361))

(assert (not b!82734))

(assert (not b!82742))

(assert (not b!82737))

(assert (not b!82666))

(assert (not b!82735))

(assert (not d!56379))

(assert (not b_lambda!16389))

(assert (not d!56377))

(assert (not d!56367))

(assert (not b!82765))

(assert (not b!82772))

(assert (not b!82777))

(assert (not b!82764))

(assert (not d!56371))

(assert (not b!82738))

(assert (not b!82748))

(assert (not b!82741))

(assert (not b!82733))

(assert (not b!82699))

(assert (not b!82766))

(assert (not b!82683))

(assert (not b!82684))

(assert (not b_lambda!16387))

(assert (not b!82776))

(assert (not b!82773))

(assert (not b!82763))

(assert (not b!82767))

(assert (not b!82716))

(assert (not b_lambda!16383))

(assert (not b!82744))

(assert (not d!56375))

(assert (not b!82687))

(assert (not b!82736))

(assert (not b_lambda!16385))

(assert (not b!82778))

(assert (not b_lambda!16381))

(assert (not d!56381))

(assert (not d!56373))

(assert (not b!82719))

(assert (not b!82717))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

