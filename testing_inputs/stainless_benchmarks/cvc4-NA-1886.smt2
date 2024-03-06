; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12652 () Bool)

(assert start!12652)

(declare-fun res!48911 () Bool)

(declare-fun e!50917 () Bool)

(assert (=> start!12652 (=> (not res!48911) (not e!50917))))

(declare-datatypes () ((List!804 (Nil!747) (Cons!745 (head!1184 (_ BitVec 32)) (tail!1180 List!804)) (ListExt!6 (__x!379 Int)))))

(declare-fun list!1090 () List!804)

(assert (=> start!12652 (= res!48911 (not (is-Nil!747 list!1090)))))

(assert (=> start!12652 e!50917))

(assert (=> start!12652 true))

(declare-fun b!93075 () Bool)

(declare-fun e!50918 () Bool)

(assert (=> b!93075 (= e!50917 e!50918)))

(declare-fun res!48912 () Bool)

(assert (=> b!93075 (=> res!48912 e!50918)))

(declare-fun positive_lemma!2 (List!804) Bool)

(assert (=> b!93075 (= res!48912 (not (positive_lemma!2 list!1090)))))

(declare-fun b!93076 () Bool)

(declare-fun failling_1!0 (List!804) Bool)

(assert (=> b!93076 (= e!50918 (not (failling_1!0 (tail!1180 list!1090))))))

(assert (= (and start!12652 res!48911) b!93075))

(assert (= (and b!93075 (not res!48912)) b!93076))

(declare-fun m!88730 () Bool)

(assert (=> b!93075 m!88730))

(declare-fun m!88732 () Bool)

(assert (=> b!93076 m!88732))

(push 1)

(assert (not b!93075))

(assert (not b!93076))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60834 () Bool)

(declare-fun lambda!11152 () Int)

(declare-fun positive!7 (List!804) Bool)

(declare-fun forall!66 (List!804 Int) Bool)

(assert (=> d!60834 (= (positive_lemma!2 list!1090) (= (positive!7 list!1090) (forall!66 list!1090 lambda!11152)))))

(declare-fun bs!41990 () Bool)

(assert (= bs!41990 d!60834))

(declare-fun m!88734 () Bool)

(assert (=> bs!41990 m!88734))

(declare-fun m!88736 () Bool)

(assert (=> bs!41990 m!88736))

(assert (=> b!93075 d!60834))

(declare-fun d!60836 () Bool)

(declare-fun e!50924 () Bool)

(assert (=> d!60836 e!50924))

(declare-fun c!22766 () Bool)

(assert (=> d!60836 (= c!22766 (is-Nil!747 (tail!1180 list!1090)))))

(declare-fun lt!21104 () Bool)

(assert (=> d!60836 (= lt!21104 (positive_lemma!2 (tail!1180 list!1090)))))

(assert (=> d!60836 (= (failling_1!0 (tail!1180 list!1090)) true)))

(declare-fun b!93084 () Bool)

(declare-fun e!50923 () Bool)

(assert (=> b!93084 (= e!50924 e!50923)))

(declare-fun res!48918 () Bool)

(assert (=> b!93084 (=> (not res!48918) (not e!50923))))

(assert (=> b!93084 (= res!48918 lt!21104)))

(declare-fun b!93085 () Bool)

(assert (=> b!93085 (= e!50923 (failling_1!0 (tail!1180 (tail!1180 list!1090))))))

(declare-fun b!93083 () Bool)

(assert (=> b!93083 (= e!50924 lt!21104)))

(assert (= (and b!93084 res!48918) b!93085))

(assert (= (and d!60836 c!22766) b!93083))

(assert (= (and d!60836 (not c!22766)) b!93084))

(declare-fun m!88738 () Bool)

(assert (=> d!60836 m!88738))

(declare-fun m!88740 () Bool)

(assert (=> b!93085 m!88740))

(assert (=> b!93076 d!60836))

(push 1)

(assert (not d!60836))

(assert (not d!60834))

(assert (not b!93085))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!41991 () Bool)

(declare-fun d!60838 () Bool)

(assert (= bs!41991 (and d!60838 d!60834)))

(declare-fun lambda!11153 () Int)

(assert (=> bs!41991 (= lambda!11153 lambda!11152)))

(assert (=> d!60838 (= (positive_lemma!2 (tail!1180 list!1090)) (= (positive!7 (tail!1180 list!1090)) (forall!66 (tail!1180 list!1090) lambda!11153)))))

(declare-fun bs!41992 () Bool)

(assert (= bs!41992 d!60838))

(declare-fun m!88742 () Bool)

(assert (=> bs!41992 m!88742))

(declare-fun m!88744 () Bool)

(assert (=> bs!41992 m!88744))

(assert (=> d!60836 d!60838))

(declare-fun d!60840 () Bool)

(declare-fun res!48923 () Bool)

(declare-fun e!50929 () Bool)

(assert (=> d!60840 (=> res!48923 e!50929)))

(assert (=> d!60840 (= res!48923 (not (is-Cons!745 list!1090)))))

(assert (=> d!60840 (= (positive!7 list!1090) e!50929)))

(declare-fun b!93090 () Bool)

(declare-fun e!50930 () Bool)

(assert (=> b!93090 (= e!50929 e!50930)))

(declare-fun res!48924 () Bool)

(assert (=> b!93090 (=> (not res!48924) (not e!50930))))

(assert (=> b!93090 (= res!48924 (not (bvslt (head!1184 list!1090) #b00000000000000000000000000000000)))))

(declare-fun b!93091 () Bool)

(assert (=> b!93091 (= e!50930 (positive!7 (tail!1180 list!1090)))))

(assert (= (and d!60840 (not res!48923)) b!93090))

(assert (= (and b!93090 res!48924) b!93091))

(assert (=> b!93091 m!88742))

(assert (=> d!60834 d!60840))

(declare-fun d!60842 () Bool)

(declare-fun res!48929 () Bool)

(declare-fun e!50935 () Bool)

(assert (=> d!60842 (=> res!48929 e!50935)))

(assert (=> d!60842 (= res!48929 (not (is-Cons!745 list!1090)))))

(assert (=> d!60842 (= (forall!66 list!1090 lambda!11152) e!50935)))

(declare-fun b!93096 () Bool)

(declare-fun e!50936 () Bool)

(assert (=> b!93096 (= e!50935 e!50936)))

(declare-fun res!48930 () Bool)

(assert (=> b!93096 (=> (not res!48930) (not e!50936))))

(declare-fun dynLambda!1136 (Int (_ BitVec 32)) Bool)

(assert (=> b!93096 (= res!48930 (dynLambda!1136 lambda!11152 (head!1184 list!1090)))))

(declare-fun b!93097 () Bool)

(assert (=> b!93097 (= e!50936 (forall!66 (tail!1180 list!1090) lambda!11152))))

(assert (= (and d!60842 (not res!48929)) b!93096))

(assert (= (and b!93096 res!48930) b!93097))

(declare-fun b_lambda!18891 () Bool)

(assert (=> (not b_lambda!18891) (not b!93096)))

(declare-fun m!88746 () Bool)

(assert (=> b!93096 m!88746))

(declare-fun m!88748 () Bool)

(assert (=> b!93097 m!88748))

(assert (=> d!60834 d!60842))

(declare-fun d!60844 () Bool)

(declare-fun e!50938 () Bool)

(assert (=> d!60844 e!50938))

(declare-fun c!22767 () Bool)

(assert (=> d!60844 (= c!22767 (is-Nil!747 (tail!1180 (tail!1180 list!1090))))))

(declare-fun lt!21105 () Bool)

(assert (=> d!60844 (= lt!21105 (positive_lemma!2 (tail!1180 (tail!1180 list!1090))))))

(assert (=> d!60844 (= (failling_1!0 (tail!1180 (tail!1180 list!1090))) true)))

(declare-fun b!93099 () Bool)

(declare-fun e!50937 () Bool)

(assert (=> b!93099 (= e!50938 e!50937)))

(declare-fun res!48931 () Bool)

(assert (=> b!93099 (=> (not res!48931) (not e!50937))))

(assert (=> b!93099 (= res!48931 lt!21105)))

(declare-fun b!93100 () Bool)

(assert (=> b!93100 (= e!50937 (failling_1!0 (tail!1180 (tail!1180 (tail!1180 list!1090)))))))

(declare-fun b!93098 () Bool)

(assert (=> b!93098 (= e!50938 lt!21105)))

(assert (= (and b!93099 res!48931) b!93100))

(assert (= (and d!60844 c!22767) b!93098))

(assert (= (and d!60844 (not c!22767)) b!93099))

(declare-fun m!88750 () Bool)

(assert (=> d!60844 m!88750))

(declare-fun m!88752 () Bool)

(assert (=> b!93100 m!88752))

(assert (=> b!93085 d!60844))

(declare-fun b_lambda!18893 () Bool)

(assert (= b_lambda!18891 (or d!60834 b_lambda!18893)))

(declare-fun bs!41993 () Bool)

(declare-fun d!60846 () Bool)

(assert (= bs!41993 (and d!60846 d!60834)))

(assert (=> bs!41993 (= (dynLambda!1136 lambda!11152 (head!1184 list!1090)) (bvsgt (head!1184 list!1090) #b00000000000000000000000000000000))))

(assert (=> b!93096 d!60846))

(push 1)

(assert (not b!93097))

(assert (not b_lambda!18893))

(assert (not d!60844))

(assert (not b!93091))

(assert (not b!93100))

(assert (not d!60838))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60848 () Bool)

(declare-fun res!48932 () Bool)

(declare-fun e!50939 () Bool)

(assert (=> d!60848 (=> res!48932 e!50939)))

(assert (=> d!60848 (= res!48932 (not (is-Cons!745 (tail!1180 list!1090))))))

(assert (=> d!60848 (= (positive!7 (tail!1180 list!1090)) e!50939)))

(declare-fun b!93101 () Bool)

(declare-fun e!50940 () Bool)

(assert (=> b!93101 (= e!50939 e!50940)))

(declare-fun res!48933 () Bool)

(assert (=> b!93101 (=> (not res!48933) (not e!50940))))

(assert (=> b!93101 (= res!48933 (not (bvslt (head!1184 (tail!1180 list!1090)) #b00000000000000000000000000000000)))))

(declare-fun b!93102 () Bool)

(assert (=> b!93102 (= e!50940 (positive!7 (tail!1180 (tail!1180 list!1090))))))

(assert (= (and d!60848 (not res!48932)) b!93101))

(assert (= (and b!93101 res!48933) b!93102))

(declare-fun m!88754 () Bool)

(assert (=> b!93102 m!88754))

(assert (=> b!93091 d!60848))

(declare-fun d!60850 () Bool)

(declare-fun e!50942 () Bool)

(assert (=> d!60850 e!50942))

(declare-fun c!22768 () Bool)

(assert (=> d!60850 (= c!22768 (is-Nil!747 (tail!1180 (tail!1180 (tail!1180 list!1090)))))))

(declare-fun lt!21106 () Bool)

(assert (=> d!60850 (= lt!21106 (positive_lemma!2 (tail!1180 (tail!1180 (tail!1180 list!1090)))))))

(assert (=> d!60850 (= (failling_1!0 (tail!1180 (tail!1180 (tail!1180 list!1090)))) true)))

(declare-fun b!93104 () Bool)

(declare-fun e!50941 () Bool)

(assert (=> b!93104 (= e!50942 e!50941)))

(declare-fun res!48934 () Bool)

(assert (=> b!93104 (=> (not res!48934) (not e!50941))))

(assert (=> b!93104 (= res!48934 lt!21106)))

(declare-fun b!93105 () Bool)

(assert (=> b!93105 (= e!50941 (failling_1!0 (tail!1180 (tail!1180 (tail!1180 (tail!1180 list!1090))))))))

(declare-fun b!93103 () Bool)

(assert (=> b!93103 (= e!50942 lt!21106)))

(assert (= (and b!93104 res!48934) b!93105))

(assert (= (and d!60850 c!22768) b!93103))

(assert (= (and d!60850 (not c!22768)) b!93104))

(declare-fun m!88756 () Bool)

(assert (=> d!60850 m!88756))

(declare-fun m!88758 () Bool)

(assert (=> b!93105 m!88758))

(assert (=> b!93100 d!60850))

(declare-fun bs!41994 () Bool)

(declare-fun d!60852 () Bool)

(assert (= bs!41994 (and d!60852 d!60834)))

(declare-fun lambda!11154 () Int)

(assert (=> bs!41994 (= lambda!11154 lambda!11152)))

(declare-fun bs!41995 () Bool)

(assert (= bs!41995 (and d!60852 d!60838)))

(assert (=> bs!41995 (= lambda!11154 lambda!11153)))

(assert (=> d!60852 (= (positive_lemma!2 (tail!1180 (tail!1180 list!1090))) (= (positive!7 (tail!1180 (tail!1180 list!1090))) (forall!66 (tail!1180 (tail!1180 list!1090)) lambda!11154)))))

(declare-fun bs!41996 () Bool)

(assert (= bs!41996 d!60852))

(assert (=> bs!41996 m!88754))

(declare-fun m!88760 () Bool)

(assert (=> bs!41996 m!88760))

(assert (=> d!60844 d!60852))

(assert (=> d!60838 d!60848))

(declare-fun d!60854 () Bool)

(declare-fun res!48935 () Bool)

(declare-fun e!50943 () Bool)

(assert (=> d!60854 (=> res!48935 e!50943)))

(assert (=> d!60854 (= res!48935 (not (is-Cons!745 (tail!1180 list!1090))))))

(assert (=> d!60854 (= (forall!66 (tail!1180 list!1090) lambda!11153) e!50943)))

(declare-fun b!93106 () Bool)

(declare-fun e!50944 () Bool)

(assert (=> b!93106 (= e!50943 e!50944)))

(declare-fun res!48936 () Bool)

(assert (=> b!93106 (=> (not res!48936) (not e!50944))))

(assert (=> b!93106 (= res!48936 (dynLambda!1136 lambda!11153 (head!1184 (tail!1180 list!1090))))))

(declare-fun b!93107 () Bool)

(assert (=> b!93107 (= e!50944 (forall!66 (tail!1180 (tail!1180 list!1090)) lambda!11153))))

(assert (= (and d!60854 (not res!48935)) b!93106))

(assert (= (and b!93106 res!48936) b!93107))

(declare-fun b_lambda!18895 () Bool)

(assert (=> (not b_lambda!18895) (not b!93106)))

(declare-fun m!88762 () Bool)

(assert (=> b!93106 m!88762))

(declare-fun m!88764 () Bool)

(assert (=> b!93107 m!88764))

(assert (=> d!60838 d!60854))

(declare-fun d!60856 () Bool)

(declare-fun res!48937 () Bool)

(declare-fun e!50945 () Bool)

(assert (=> d!60856 (=> res!48937 e!50945)))

(assert (=> d!60856 (= res!48937 (not (is-Cons!745 (tail!1180 list!1090))))))

(assert (=> d!60856 (= (forall!66 (tail!1180 list!1090) lambda!11152) e!50945)))

(declare-fun b!93108 () Bool)

(declare-fun e!50946 () Bool)

(assert (=> b!93108 (= e!50945 e!50946)))

(declare-fun res!48938 () Bool)

(assert (=> b!93108 (=> (not res!48938) (not e!50946))))

(assert (=> b!93108 (= res!48938 (dynLambda!1136 lambda!11152 (head!1184 (tail!1180 list!1090))))))

(declare-fun b!93109 () Bool)

(assert (=> b!93109 (= e!50946 (forall!66 (tail!1180 (tail!1180 list!1090)) lambda!11152))))

(assert (= (and d!60856 (not res!48937)) b!93108))

(assert (= (and b!93108 res!48938) b!93109))

(declare-fun b_lambda!18897 () Bool)

(assert (=> (not b_lambda!18897) (not b!93108)))

(declare-fun m!88766 () Bool)

(assert (=> b!93108 m!88766))

(declare-fun m!88768 () Bool)

(assert (=> b!93109 m!88768))

(assert (=> b!93097 d!60856))

(declare-fun b_lambda!18899 () Bool)

(assert (= b_lambda!18897 (or d!60834 b_lambda!18899)))

(declare-fun bs!41997 () Bool)

(declare-fun d!60858 () Bool)

(assert (= bs!41997 (and d!60858 d!60834)))

(assert (=> bs!41997 (= (dynLambda!1136 lambda!11152 (head!1184 (tail!1180 list!1090))) (bvsgt (head!1184 (tail!1180 list!1090)) #b00000000000000000000000000000000))))

(assert (=> b!93108 d!60858))

(declare-fun b_lambda!18901 () Bool)

(assert (= b_lambda!18895 (or d!60838 b_lambda!18901)))

(declare-fun bs!41998 () Bool)

(declare-fun d!60860 () Bool)

(assert (= bs!41998 (and d!60860 d!60838)))

(assert (=> bs!41998 (= (dynLambda!1136 lambda!11153 (head!1184 (tail!1180 list!1090))) (bvsgt (head!1184 (tail!1180 list!1090)) #b00000000000000000000000000000000))))

(assert (=> b!93106 d!60860))

(push 1)

(assert (not b!93102))

(assert (not b_lambda!18893))

(assert (not b_lambda!18899))

(assert (not b!93109))

(assert (not b!93105))

(assert (not b!93107))

(assert (not d!60850))

(assert (not d!60852))

(assert (not b_lambda!18901))

(check-sat)

(get-model)

(pop 1)

