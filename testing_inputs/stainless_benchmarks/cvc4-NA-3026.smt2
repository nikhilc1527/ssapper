; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15200 () Bool)

(assert start!15200)

(declare-fun res!49415 () Bool)

(declare-fun e!51787 () Bool)

(assert (=> start!15200 (=> res!49415 e!51787)))

(declare-datatypes () ((P!83 (Charlie!83) (Alice!83) (Bob!83))))

(declare-datatypes () ((tuple2!512 (tuple2!513 (_1!295 P!83) (_2!295 P!83)))))

(declare-datatypes () ((List!885 (Cons!823 (h!6720 tuple2!512) (t!55021 List!885)) (Nil!825))))

(declare-fun lt!21773 () List!885)

(declare-fun lt!21774 () List!885)

(declare-fun size!996 (List!885) Int)

(assert (=> start!15200 (= res!49415 (> (size!996 lt!21773) (size!996 lt!21774)))))

(declare-fun lt!21775 () List!885)

(assert (=> start!15200 (= lt!21773 (Cons!823 (h!6720 lt!21775) (Cons!823 (h!6720 (t!55021 lt!21775)) Nil!825)))))

(declare-fun lt!21772 () P!83)

(assert (=> start!15200 (= lt!21774 (Cons!823 (tuple2!513 lt!21772 Alice!83) lt!21775))))

(declare-fun lt!21776 () List!885)

(assert (=> start!15200 (= lt!21775 (Cons!823 (tuple2!513 lt!21772 Charlie!83) (Cons!823 (h!6720 lt!21776) (Cons!823 (h!6720 (t!55021 lt!21776)) Nil!825))))))

(assert (=> start!15200 (= lt!21776 (Cons!823 (tuple2!513 Charlie!83 Alice!83) (Cons!823 (tuple2!513 Charlie!83 Charlie!83) Nil!825)))))

(assert (=> start!15200 (= lt!21772 Alice!83)))

(assert (=> start!15200 e!51787))

(declare-fun b!94896 () Bool)

(declare-fun res!49414 () Bool)

(assert (=> b!94896 (=> res!49414 e!51787)))

(declare-fun content!206 (List!885) (Set tuple2!512))

(assert (=> b!94896 (= res!49414 (not (subset (content!206 lt!21773) (content!206 lt!21774))))))

(declare-fun b!94897 () Bool)

(declare-fun lambda!11205 () Int)

(declare-fun forall!83 (List!885 Int) Bool)

(assert (=> b!94897 (= e!51787 (not (forall!83 lt!21773 lambda!11205)))))

(assert (= (and start!15200 (not res!49415)) b!94896))

(assert (= (and b!94896 (not res!49414)) b!94897))

(declare-fun m!90163 () Bool)

(assert (=> start!15200 m!90163))

(declare-fun m!90165 () Bool)

(assert (=> start!15200 m!90165))

(declare-fun m!90167 () Bool)

(assert (=> b!94896 m!90167))

(declare-fun m!90169 () Bool)

(assert (=> b!94896 m!90169))

(declare-fun m!90171 () Bool)

(assert (=> b!94897 m!90171))

(push 1)

(assert (not b!94897))

(assert (not start!15200))

(assert (not b!94896))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61678 () Bool)

(declare-fun res!49420 () Bool)

(declare-fun e!51792 () Bool)

(assert (=> d!61678 (=> res!49420 e!51792)))

(assert (=> d!61678 (= res!49420 (is-Nil!825 lt!21773))))

(assert (=> d!61678 (= (forall!83 lt!21773 lambda!11205) e!51792)))

(declare-fun b!94902 () Bool)

(declare-fun e!51793 () Bool)

(assert (=> b!94902 (= e!51792 e!51793)))

(declare-fun res!49421 () Bool)

(assert (=> b!94902 (=> (not res!49421) (not e!51793))))

(declare-fun dynLambda!1153 (Int tuple2!512) Bool)

(assert (=> b!94902 (= res!49421 (dynLambda!1153 lambda!11205 (h!6720 lt!21773)))))

(declare-fun b!94903 () Bool)

(assert (=> b!94903 (= e!51793 (forall!83 (t!55021 lt!21773) lambda!11205))))

(assert (= (and d!61678 (not res!49420)) b!94902))

(assert (= (and b!94902 res!49421) b!94903))

(declare-fun b_lambda!19003 () Bool)

(assert (=> (not b_lambda!19003) (not b!94902)))

(declare-fun m!90173 () Bool)

(assert (=> b!94902 m!90173))

(declare-fun m!90175 () Bool)

(assert (=> b!94903 m!90175))

(assert (=> b!94897 d!61678))

(declare-fun d!61680 () Bool)

(declare-fun lt!21779 () Int)

(assert (=> d!61680 (>= lt!21779 0)))

(declare-fun e!51796 () Int)

(assert (=> d!61680 (= lt!21779 e!51796)))

(declare-fun c!23319 () Bool)

(assert (=> d!61680 (= c!23319 (is-Nil!825 lt!21773))))

(assert (=> d!61680 (= (size!996 lt!21773) lt!21779)))

(declare-fun b!94908 () Bool)

(assert (=> b!94908 (= e!51796 0)))

(declare-fun b!94909 () Bool)

(assert (=> b!94909 (= e!51796 (+ 1 (size!996 (t!55021 lt!21773))))))

(assert (= (and d!61680 c!23319) b!94908))

(assert (= (and d!61680 (not c!23319)) b!94909))

(declare-fun m!90177 () Bool)

(assert (=> b!94909 m!90177))

(assert (=> start!15200 d!61680))

(declare-fun d!61682 () Bool)

(declare-fun lt!21780 () Int)

(assert (=> d!61682 (>= lt!21780 0)))

(declare-fun e!51797 () Int)

(assert (=> d!61682 (= lt!21780 e!51797)))

(declare-fun c!23320 () Bool)

(assert (=> d!61682 (= c!23320 (is-Nil!825 lt!21774))))

(assert (=> d!61682 (= (size!996 lt!21774) lt!21780)))

(declare-fun b!94910 () Bool)

(assert (=> b!94910 (= e!51797 0)))

(declare-fun b!94911 () Bool)

(assert (=> b!94911 (= e!51797 (+ 1 (size!996 (t!55021 lt!21774))))))

(assert (= (and d!61682 c!23320) b!94910))

(assert (= (and d!61682 (not c!23320)) b!94911))

(declare-fun m!90179 () Bool)

(assert (=> b!94911 m!90179))

(assert (=> start!15200 d!61682))

(declare-fun d!61684 () Bool)

(declare-fun c!23323 () Bool)

(assert (=> d!61684 (= c!23323 (is-Nil!825 lt!21773))))

(declare-fun e!51800 () (Set tuple2!512))

(assert (=> d!61684 (= (content!206 lt!21773) e!51800)))

(declare-fun b!94916 () Bool)

(assert (=> b!94916 (= e!51800 (as emptyset (Set tuple2!512)))))

(declare-fun b!94917 () Bool)

(assert (=> b!94917 (= e!51800 (union (insert (h!6720 lt!21773) (as emptyset (Set tuple2!512))) (content!206 (t!55021 lt!21773))))))

(assert (= (and d!61684 c!23323) b!94916))

(assert (= (and d!61684 (not c!23323)) b!94917))

(declare-fun m!90181 () Bool)

(assert (=> b!94917 m!90181))

(declare-fun m!90183 () Bool)

(assert (=> b!94917 m!90183))

(assert (=> b!94896 d!61684))

(declare-fun d!61686 () Bool)

(declare-fun c!23324 () Bool)

(assert (=> d!61686 (= c!23324 (is-Nil!825 lt!21774))))

(declare-fun e!51801 () (Set tuple2!512))

(assert (=> d!61686 (= (content!206 lt!21774) e!51801)))

(declare-fun b!94918 () Bool)

(assert (=> b!94918 (= e!51801 (as emptyset (Set tuple2!512)))))

(declare-fun b!94919 () Bool)

(assert (=> b!94919 (= e!51801 (union (insert (h!6720 lt!21774) (as emptyset (Set tuple2!512))) (content!206 (t!55021 lt!21774))))))

(assert (= (and d!61686 c!23324) b!94918))

(assert (= (and d!61686 (not c!23324)) b!94919))

(declare-fun m!90185 () Bool)

(assert (=> b!94919 m!90185))

(declare-fun m!90187 () Bool)

(assert (=> b!94919 m!90187))

(assert (=> b!94896 d!61686))

(declare-fun b_lambda!19005 () Bool)

(assert (= b_lambda!19003 (or b!94897 b_lambda!19005)))

(declare-fun bs!43205 () Bool)

(declare-fun d!61688 () Bool)

(assert (= bs!43205 (and d!61688 b!94897)))

(assert (=> bs!43205 (= (dynLambda!1153 lambda!11205 (h!6720 lt!21773)) (not (= (_1!295 (h!6720 lt!21773)) (_2!295 (h!6720 lt!21773)))))))

(assert (=> b!94902 d!61688))

(push 1)

(assert (not b!94919))

(assert (not b!94909))

(assert (not b!94903))

(assert (not b_lambda!19005))

(assert (not b!94917))

(assert (not b!94911))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61690 () Bool)

(declare-fun res!49422 () Bool)

(declare-fun e!51802 () Bool)

(assert (=> d!61690 (=> res!49422 e!51802)))

(assert (=> d!61690 (= res!49422 (is-Nil!825 (t!55021 lt!21773)))))

(assert (=> d!61690 (= (forall!83 (t!55021 lt!21773) lambda!11205) e!51802)))

(declare-fun b!94920 () Bool)

(declare-fun e!51803 () Bool)

(assert (=> b!94920 (= e!51802 e!51803)))

(declare-fun res!49423 () Bool)

(assert (=> b!94920 (=> (not res!49423) (not e!51803))))

(assert (=> b!94920 (= res!49423 (dynLambda!1153 lambda!11205 (h!6720 (t!55021 lt!21773))))))

(declare-fun b!94921 () Bool)

(assert (=> b!94921 (= e!51803 (forall!83 (t!55021 (t!55021 lt!21773)) lambda!11205))))

(assert (= (and d!61690 (not res!49422)) b!94920))

(assert (= (and b!94920 res!49423) b!94921))

(declare-fun b_lambda!19007 () Bool)

(assert (=> (not b_lambda!19007) (not b!94920)))

(declare-fun m!90189 () Bool)

(assert (=> b!94920 m!90189))

(declare-fun m!90191 () Bool)

(assert (=> b!94921 m!90191))

(assert (=> b!94903 d!61690))

(declare-fun d!61692 () Bool)

(declare-fun lt!21781 () Int)

(assert (=> d!61692 (>= lt!21781 0)))

(declare-fun e!51804 () Int)

(assert (=> d!61692 (= lt!21781 e!51804)))

(declare-fun c!23325 () Bool)

(assert (=> d!61692 (= c!23325 (is-Nil!825 (t!55021 lt!21773)))))

(assert (=> d!61692 (= (size!996 (t!55021 lt!21773)) lt!21781)))

(declare-fun b!94922 () Bool)

(assert (=> b!94922 (= e!51804 0)))

(declare-fun b!94923 () Bool)

(assert (=> b!94923 (= e!51804 (+ 1 (size!996 (t!55021 (t!55021 lt!21773)))))))

(assert (= (and d!61692 c!23325) b!94922))

(assert (= (and d!61692 (not c!23325)) b!94923))

(declare-fun m!90193 () Bool)

(assert (=> b!94923 m!90193))

(assert (=> b!94909 d!61692))

(declare-fun d!61694 () Bool)

(declare-fun c!23326 () Bool)

(assert (=> d!61694 (= c!23326 (is-Nil!825 (t!55021 lt!21773)))))

(declare-fun e!51805 () (Set tuple2!512))

(assert (=> d!61694 (= (content!206 (t!55021 lt!21773)) e!51805)))

(declare-fun b!94924 () Bool)

(assert (=> b!94924 (= e!51805 (as emptyset (Set tuple2!512)))))

(declare-fun b!94925 () Bool)

(assert (=> b!94925 (= e!51805 (union (insert (h!6720 (t!55021 lt!21773)) (as emptyset (Set tuple2!512))) (content!206 (t!55021 (t!55021 lt!21773)))))))

(assert (= (and d!61694 c!23326) b!94924))

(assert (= (and d!61694 (not c!23326)) b!94925))

(declare-fun m!90195 () Bool)

(assert (=> b!94925 m!90195))

(declare-fun m!90197 () Bool)

(assert (=> b!94925 m!90197))

(assert (=> b!94917 d!61694))

(declare-fun d!61696 () Bool)

(declare-fun lt!21782 () Int)

(assert (=> d!61696 (>= lt!21782 0)))

(declare-fun e!51806 () Int)

(assert (=> d!61696 (= lt!21782 e!51806)))

(declare-fun c!23327 () Bool)

(assert (=> d!61696 (= c!23327 (is-Nil!825 (t!55021 lt!21774)))))

(assert (=> d!61696 (= (size!996 (t!55021 lt!21774)) lt!21782)))

(declare-fun b!94926 () Bool)

(assert (=> b!94926 (= e!51806 0)))

(declare-fun b!94927 () Bool)

(assert (=> b!94927 (= e!51806 (+ 1 (size!996 (t!55021 (t!55021 lt!21774)))))))

(assert (= (and d!61696 c!23327) b!94926))

(assert (= (and d!61696 (not c!23327)) b!94927))

(declare-fun m!90199 () Bool)

(assert (=> b!94927 m!90199))

(assert (=> b!94911 d!61696))

(declare-fun d!61698 () Bool)

(declare-fun c!23328 () Bool)

(assert (=> d!61698 (= c!23328 (is-Nil!825 (t!55021 lt!21774)))))

(declare-fun e!51807 () (Set tuple2!512))

(assert (=> d!61698 (= (content!206 (t!55021 lt!21774)) e!51807)))

(declare-fun b!94928 () Bool)

(assert (=> b!94928 (= e!51807 (as emptyset (Set tuple2!512)))))

(declare-fun b!94929 () Bool)

(assert (=> b!94929 (= e!51807 (union (insert (h!6720 (t!55021 lt!21774)) (as emptyset (Set tuple2!512))) (content!206 (t!55021 (t!55021 lt!21774)))))))

(assert (= (and d!61698 c!23328) b!94928))

(assert (= (and d!61698 (not c!23328)) b!94929))

(declare-fun m!90201 () Bool)

(assert (=> b!94929 m!90201))

(declare-fun m!90203 () Bool)

(assert (=> b!94929 m!90203))

(assert (=> b!94919 d!61698))

(declare-fun b_lambda!19009 () Bool)

(assert (= b_lambda!19007 (or b!94897 b_lambda!19009)))

(declare-fun bs!43206 () Bool)

(declare-fun d!61700 () Bool)

(assert (= bs!43206 (and d!61700 b!94897)))

(assert (=> bs!43206 (= (dynLambda!1153 lambda!11205 (h!6720 (t!55021 lt!21773))) (not (= (_1!295 (h!6720 (t!55021 lt!21773))) (_2!295 (h!6720 (t!55021 lt!21773))))))))

(assert (=> b!94920 d!61700))

(push 1)

(assert (not b!94929))

(assert (not b!94927))

(assert (not b_lambda!19005))

(assert (not b!94923))

(assert (not b_lambda!19009))

(assert (not b!94925))

(assert (not b!94921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61702 () Bool)

(declare-fun lt!21783 () Int)

(assert (=> d!61702 (>= lt!21783 0)))

(declare-fun e!51808 () Int)

(assert (=> d!61702 (= lt!21783 e!51808)))

(declare-fun c!23329 () Bool)

(assert (=> d!61702 (= c!23329 (is-Nil!825 (t!55021 (t!55021 lt!21773))))))

(assert (=> d!61702 (= (size!996 (t!55021 (t!55021 lt!21773))) lt!21783)))

(declare-fun b!94930 () Bool)

(assert (=> b!94930 (= e!51808 0)))

(declare-fun b!94931 () Bool)

(assert (=> b!94931 (= e!51808 (+ 1 (size!996 (t!55021 (t!55021 (t!55021 lt!21773))))))))

(assert (= (and d!61702 c!23329) b!94930))

(assert (= (and d!61702 (not c!23329)) b!94931))

(declare-fun m!90205 () Bool)

(assert (=> b!94931 m!90205))

(assert (=> b!94923 d!61702))

(declare-fun d!61704 () Bool)

(declare-fun c!23330 () Bool)

(assert (=> d!61704 (= c!23330 (is-Nil!825 (t!55021 (t!55021 lt!21773))))))

(declare-fun e!51809 () (Set tuple2!512))

(assert (=> d!61704 (= (content!206 (t!55021 (t!55021 lt!21773))) e!51809)))

(declare-fun b!94932 () Bool)

(assert (=> b!94932 (= e!51809 (as emptyset (Set tuple2!512)))))

(declare-fun b!94933 () Bool)

(assert (=> b!94933 (= e!51809 (union (insert (h!6720 (t!55021 (t!55021 lt!21773))) (as emptyset (Set tuple2!512))) (content!206 (t!55021 (t!55021 (t!55021 lt!21773))))))))

(assert (= (and d!61704 c!23330) b!94932))

(assert (= (and d!61704 (not c!23330)) b!94933))

(declare-fun m!90207 () Bool)

(assert (=> b!94933 m!90207))

(declare-fun m!90209 () Bool)

(assert (=> b!94933 m!90209))

(assert (=> b!94925 d!61704))

(declare-fun d!61706 () Bool)

(declare-fun c!23331 () Bool)

(assert (=> d!61706 (= c!23331 (is-Nil!825 (t!55021 (t!55021 lt!21774))))))

(declare-fun e!51810 () (Set tuple2!512))

(assert (=> d!61706 (= (content!206 (t!55021 (t!55021 lt!21774))) e!51810)))

(declare-fun b!94934 () Bool)

(assert (=> b!94934 (= e!51810 (as emptyset (Set tuple2!512)))))

(declare-fun b!94935 () Bool)

(assert (=> b!94935 (= e!51810 (union (insert (h!6720 (t!55021 (t!55021 lt!21774))) (as emptyset (Set tuple2!512))) (content!206 (t!55021 (t!55021 (t!55021 lt!21774))))))))

(assert (= (and d!61706 c!23331) b!94934))

(assert (= (and d!61706 (not c!23331)) b!94935))

(declare-fun m!90211 () Bool)

(assert (=> b!94935 m!90211))

(declare-fun m!90213 () Bool)

(assert (=> b!94935 m!90213))

(assert (=> b!94929 d!61706))

(declare-fun d!61708 () Bool)

(declare-fun res!49424 () Bool)

(declare-fun e!51811 () Bool)

(assert (=> d!61708 (=> res!49424 e!51811)))

(assert (=> d!61708 (= res!49424 (is-Nil!825 (t!55021 (t!55021 lt!21773))))))

(assert (=> d!61708 (= (forall!83 (t!55021 (t!55021 lt!21773)) lambda!11205) e!51811)))

(declare-fun b!94936 () Bool)

(declare-fun e!51812 () Bool)

(assert (=> b!94936 (= e!51811 e!51812)))

(declare-fun res!49425 () Bool)

(assert (=> b!94936 (=> (not res!49425) (not e!51812))))

(assert (=> b!94936 (= res!49425 (dynLambda!1153 lambda!11205 (h!6720 (t!55021 (t!55021 lt!21773)))))))

(declare-fun b!94937 () Bool)

(assert (=> b!94937 (= e!51812 (forall!83 (t!55021 (t!55021 (t!55021 lt!21773))) lambda!11205))))

(assert (= (and d!61708 (not res!49424)) b!94936))

(assert (= (and b!94936 res!49425) b!94937))

(declare-fun b_lambda!19011 () Bool)

(assert (=> (not b_lambda!19011) (not b!94936)))

(declare-fun m!90215 () Bool)

(assert (=> b!94936 m!90215))

(declare-fun m!90217 () Bool)

(assert (=> b!94937 m!90217))

(assert (=> b!94921 d!61708))

(declare-fun d!61710 () Bool)

(declare-fun lt!21784 () Int)

(assert (=> d!61710 (>= lt!21784 0)))

(declare-fun e!51813 () Int)

(assert (=> d!61710 (= lt!21784 e!51813)))

(declare-fun c!23332 () Bool)

(assert (=> d!61710 (= c!23332 (is-Nil!825 (t!55021 (t!55021 lt!21774))))))

(assert (=> d!61710 (= (size!996 (t!55021 (t!55021 lt!21774))) lt!21784)))

(declare-fun b!94938 () Bool)

(assert (=> b!94938 (= e!51813 0)))

(declare-fun b!94939 () Bool)

(assert (=> b!94939 (= e!51813 (+ 1 (size!996 (t!55021 (t!55021 (t!55021 lt!21774))))))))

(assert (= (and d!61710 c!23332) b!94938))

(assert (= (and d!61710 (not c!23332)) b!94939))

(declare-fun m!90219 () Bool)

(assert (=> b!94939 m!90219))

(assert (=> b!94927 d!61710))

(declare-fun b_lambda!19013 () Bool)

(assert (= b_lambda!19011 (or b!94897 b_lambda!19013)))

(declare-fun bs!43207 () Bool)

(declare-fun d!61712 () Bool)

(assert (= bs!43207 (and d!61712 b!94897)))

(assert (=> bs!43207 (= (dynLambda!1153 lambda!11205 (h!6720 (t!55021 (t!55021 lt!21773)))) (not (= (_1!295 (h!6720 (t!55021 (t!55021 lt!21773)))) (_2!295 (h!6720 (t!55021 (t!55021 lt!21773)))))))))

(assert (=> b!94936 d!61712))

(push 1)

(assert (not b!94933))

(assert (not b!94931))

(assert (not b!94935))

(assert (not b_lambda!19013))

(assert (not b!94939))

(assert (not b_lambda!19005))

(assert (not b!94937))

(assert (not b_lambda!19009))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

