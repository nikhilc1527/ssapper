; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15192 () Bool)

(assert start!15192)

(declare-fun res!49397 () Bool)

(declare-fun e!51758 () Bool)

(assert (=> start!15192 (=> res!49397 e!51758)))

(declare-datatypes () ((P!82 (Charlie!82) (Alice!82) (Bob!82))))

(declare-datatypes () ((tuple2!510 (tuple2!511 (_1!294 P!82) (_2!294 P!82)))))

(declare-datatypes () ((List!884 (Cons!822 (h!6697 tuple2!510) (t!54999 List!884)) (Nil!824))))

(declare-fun lt!21752 () List!884)

(declare-fun lt!21751 () List!884)

(declare-fun size!995 (List!884) Int)

(assert (=> start!15192 (= res!49397 (> (size!995 lt!21752) (size!995 lt!21751)))))

(assert (=> start!15192 (= lt!21752 (Cons!822 (h!6697 lt!21751) (Cons!822 (h!6697 (t!54999 lt!21751)) Nil!824)))))

(declare-fun lt!21753 () List!884)

(assert (=> start!15192 (= lt!21751 (Cons!822 (tuple2!511 Alice!82 Charlie!82) (Cons!822 (h!6697 lt!21753) (Cons!822 (h!6697 (t!54999 lt!21753)) Nil!824))))))

(assert (=> start!15192 (= lt!21753 (Cons!822 (tuple2!511 Charlie!82 Alice!82) (Cons!822 (tuple2!511 Charlie!82 Charlie!82) Nil!824)))))

(assert (=> start!15192 e!51758))

(declare-fun b!94846 () Bool)

(declare-fun res!49398 () Bool)

(assert (=> b!94846 (=> res!49398 e!51758)))

(declare-fun content!205 (List!884) (Set tuple2!510))

(assert (=> b!94846 (= res!49398 (not (subset (content!205 lt!21752) (content!205 lt!21751))))))

(declare-fun b!94847 () Bool)

(declare-fun lambda!11202 () Int)

(declare-fun forall!82 (List!884 Int) Bool)

(assert (=> b!94847 (= e!51758 (not (forall!82 lt!21752 lambda!11202)))))

(assert (= (and start!15192 (not res!49397)) b!94846))

(assert (= (and b!94846 (not res!49398)) b!94847))

(declare-fun m!90105 () Bool)

(assert (=> start!15192 m!90105))

(declare-fun m!90107 () Bool)

(assert (=> start!15192 m!90107))

(declare-fun m!90109 () Bool)

(assert (=> b!94846 m!90109))

(declare-fun m!90111 () Bool)

(assert (=> b!94846 m!90111))

(declare-fun m!90113 () Bool)

(assert (=> b!94847 m!90113))

(push 1)

(assert (not start!15192))

(assert (not b!94847))

(assert (not b!94846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61642 () Bool)

(declare-fun lt!21756 () Int)

(assert (=> d!61642 (>= lt!21756 0)))

(declare-fun e!51761 () Int)

(assert (=> d!61642 (= lt!21756 e!51761)))

(declare-fun c!23303 () Bool)

(assert (=> d!61642 (= c!23303 (is-Nil!824 lt!21752))))

(assert (=> d!61642 (= (size!995 lt!21752) lt!21756)))

(declare-fun b!94852 () Bool)

(assert (=> b!94852 (= e!51761 0)))

(declare-fun b!94853 () Bool)

(assert (=> b!94853 (= e!51761 (+ 1 (size!995 (t!54999 lt!21752))))))

(assert (= (and d!61642 c!23303) b!94852))

(assert (= (and d!61642 (not c!23303)) b!94853))

(declare-fun m!90115 () Bool)

(assert (=> b!94853 m!90115))

(assert (=> start!15192 d!61642))

(declare-fun d!61644 () Bool)

(declare-fun lt!21757 () Int)

(assert (=> d!61644 (>= lt!21757 0)))

(declare-fun e!51762 () Int)

(assert (=> d!61644 (= lt!21757 e!51762)))

(declare-fun c!23304 () Bool)

(assert (=> d!61644 (= c!23304 (is-Nil!824 lt!21751))))

(assert (=> d!61644 (= (size!995 lt!21751) lt!21757)))

(declare-fun b!94854 () Bool)

(assert (=> b!94854 (= e!51762 0)))

(declare-fun b!94855 () Bool)

(assert (=> b!94855 (= e!51762 (+ 1 (size!995 (t!54999 lt!21751))))))

(assert (= (and d!61644 c!23304) b!94854))

(assert (= (and d!61644 (not c!23304)) b!94855))

(declare-fun m!90117 () Bool)

(assert (=> b!94855 m!90117))

(assert (=> start!15192 d!61644))

(declare-fun d!61646 () Bool)

(declare-fun res!49403 () Bool)

(declare-fun e!51767 () Bool)

(assert (=> d!61646 (=> res!49403 e!51767)))

(assert (=> d!61646 (= res!49403 (is-Nil!824 lt!21752))))

(assert (=> d!61646 (= (forall!82 lt!21752 lambda!11202) e!51767)))

(declare-fun b!94860 () Bool)

(declare-fun e!51768 () Bool)

(assert (=> b!94860 (= e!51767 e!51768)))

(declare-fun res!49404 () Bool)

(assert (=> b!94860 (=> (not res!49404) (not e!51768))))

(declare-fun dynLambda!1152 (Int tuple2!510) Bool)

(assert (=> b!94860 (= res!49404 (dynLambda!1152 lambda!11202 (h!6697 lt!21752)))))

(declare-fun b!94861 () Bool)

(assert (=> b!94861 (= e!51768 (forall!82 (t!54999 lt!21752) lambda!11202))))

(assert (= (and d!61646 (not res!49403)) b!94860))

(assert (= (and b!94860 res!49404) b!94861))

(declare-fun b_lambda!18991 () Bool)

(assert (=> (not b_lambda!18991) (not b!94860)))

(declare-fun m!90119 () Bool)

(assert (=> b!94860 m!90119))

(declare-fun m!90121 () Bool)

(assert (=> b!94861 m!90121))

(assert (=> b!94847 d!61646))

(declare-fun d!61648 () Bool)

(declare-fun c!23307 () Bool)

(assert (=> d!61648 (= c!23307 (is-Nil!824 lt!21752))))

(declare-fun e!51771 () (Set tuple2!510))

(assert (=> d!61648 (= (content!205 lt!21752) e!51771)))

(declare-fun b!94866 () Bool)

(assert (=> b!94866 (= e!51771 (as emptyset (Set tuple2!510)))))

(declare-fun b!94867 () Bool)

(assert (=> b!94867 (= e!51771 (union (insert (h!6697 lt!21752) (as emptyset (Set tuple2!510))) (content!205 (t!54999 lt!21752))))))

(assert (= (and d!61648 c!23307) b!94866))

(assert (= (and d!61648 (not c!23307)) b!94867))

(declare-fun m!90123 () Bool)

(assert (=> b!94867 m!90123))

(declare-fun m!90125 () Bool)

(assert (=> b!94867 m!90125))

(assert (=> b!94846 d!61648))

(declare-fun d!61650 () Bool)

(declare-fun c!23308 () Bool)

(assert (=> d!61650 (= c!23308 (is-Nil!824 lt!21751))))

(declare-fun e!51772 () (Set tuple2!510))

(assert (=> d!61650 (= (content!205 lt!21751) e!51772)))

(declare-fun b!94868 () Bool)

(assert (=> b!94868 (= e!51772 (as emptyset (Set tuple2!510)))))

(declare-fun b!94869 () Bool)

(assert (=> b!94869 (= e!51772 (union (insert (h!6697 lt!21751) (as emptyset (Set tuple2!510))) (content!205 (t!54999 lt!21751))))))

(assert (= (and d!61650 c!23308) b!94868))

(assert (= (and d!61650 (not c!23308)) b!94869))

(declare-fun m!90127 () Bool)

(assert (=> b!94869 m!90127))

(declare-fun m!90129 () Bool)

(assert (=> b!94869 m!90129))

(assert (=> b!94846 d!61650))

(declare-fun b_lambda!18993 () Bool)

(assert (= b_lambda!18991 (or b!94847 b_lambda!18993)))

(declare-fun bs!43201 () Bool)

(declare-fun d!61652 () Bool)

(assert (= bs!43201 (and d!61652 b!94847)))

(assert (=> bs!43201 (= (dynLambda!1152 lambda!11202 (h!6697 lt!21752)) (not (= (_1!294 (h!6697 lt!21752)) (_2!294 (h!6697 lt!21752)))))))

(assert (=> b!94860 d!61652))

(push 1)

(assert (not b!94869))

(assert (not b!94867))

(assert (not b_lambda!18993))

(assert (not b!94855))

(assert (not b!94853))

(assert (not b!94861))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61654 () Bool)

(declare-fun lt!21758 () Int)

(assert (=> d!61654 (>= lt!21758 0)))

(declare-fun e!51773 () Int)

(assert (=> d!61654 (= lt!21758 e!51773)))

(declare-fun c!23309 () Bool)

(assert (=> d!61654 (= c!23309 (is-Nil!824 (t!54999 lt!21752)))))

(assert (=> d!61654 (= (size!995 (t!54999 lt!21752)) lt!21758)))

(declare-fun b!94870 () Bool)

(assert (=> b!94870 (= e!51773 0)))

(declare-fun b!94871 () Bool)

(assert (=> b!94871 (= e!51773 (+ 1 (size!995 (t!54999 (t!54999 lt!21752)))))))

(assert (= (and d!61654 c!23309) b!94870))

(assert (= (and d!61654 (not c!23309)) b!94871))

(declare-fun m!90131 () Bool)

(assert (=> b!94871 m!90131))

(assert (=> b!94853 d!61654))

(declare-fun d!61656 () Bool)

(declare-fun c!23310 () Bool)

(assert (=> d!61656 (= c!23310 (is-Nil!824 (t!54999 lt!21751)))))

(declare-fun e!51774 () (Set tuple2!510))

(assert (=> d!61656 (= (content!205 (t!54999 lt!21751)) e!51774)))

(declare-fun b!94872 () Bool)

(assert (=> b!94872 (= e!51774 (as emptyset (Set tuple2!510)))))

(declare-fun b!94873 () Bool)

(assert (=> b!94873 (= e!51774 (union (insert (h!6697 (t!54999 lt!21751)) (as emptyset (Set tuple2!510))) (content!205 (t!54999 (t!54999 lt!21751)))))))

(assert (= (and d!61656 c!23310) b!94872))

(assert (= (and d!61656 (not c!23310)) b!94873))

(declare-fun m!90133 () Bool)

(assert (=> b!94873 m!90133))

(declare-fun m!90135 () Bool)

(assert (=> b!94873 m!90135))

(assert (=> b!94869 d!61656))

(declare-fun d!61658 () Bool)

(declare-fun c!23311 () Bool)

(assert (=> d!61658 (= c!23311 (is-Nil!824 (t!54999 lt!21752)))))

(declare-fun e!51775 () (Set tuple2!510))

(assert (=> d!61658 (= (content!205 (t!54999 lt!21752)) e!51775)))

(declare-fun b!94874 () Bool)

(assert (=> b!94874 (= e!51775 (as emptyset (Set tuple2!510)))))

(declare-fun b!94875 () Bool)

(assert (=> b!94875 (= e!51775 (union (insert (h!6697 (t!54999 lt!21752)) (as emptyset (Set tuple2!510))) (content!205 (t!54999 (t!54999 lt!21752)))))))

(assert (= (and d!61658 c!23311) b!94874))

(assert (= (and d!61658 (not c!23311)) b!94875))

(declare-fun m!90137 () Bool)

(assert (=> b!94875 m!90137))

(declare-fun m!90139 () Bool)

(assert (=> b!94875 m!90139))

(assert (=> b!94867 d!61658))

(declare-fun d!61660 () Bool)

(declare-fun res!49405 () Bool)

(declare-fun e!51776 () Bool)

(assert (=> d!61660 (=> res!49405 e!51776)))

(assert (=> d!61660 (= res!49405 (is-Nil!824 (t!54999 lt!21752)))))

(assert (=> d!61660 (= (forall!82 (t!54999 lt!21752) lambda!11202) e!51776)))

(declare-fun b!94876 () Bool)

(declare-fun e!51777 () Bool)

(assert (=> b!94876 (= e!51776 e!51777)))

(declare-fun res!49406 () Bool)

(assert (=> b!94876 (=> (not res!49406) (not e!51777))))

(assert (=> b!94876 (= res!49406 (dynLambda!1152 lambda!11202 (h!6697 (t!54999 lt!21752))))))

(declare-fun b!94877 () Bool)

(assert (=> b!94877 (= e!51777 (forall!82 (t!54999 (t!54999 lt!21752)) lambda!11202))))

(assert (= (and d!61660 (not res!49405)) b!94876))

(assert (= (and b!94876 res!49406) b!94877))

(declare-fun b_lambda!18995 () Bool)

(assert (=> (not b_lambda!18995) (not b!94876)))

(declare-fun m!90141 () Bool)

(assert (=> b!94876 m!90141))

(declare-fun m!90143 () Bool)

(assert (=> b!94877 m!90143))

(assert (=> b!94861 d!61660))

(declare-fun d!61662 () Bool)

(declare-fun lt!21759 () Int)

(assert (=> d!61662 (>= lt!21759 0)))

(declare-fun e!51778 () Int)

(assert (=> d!61662 (= lt!21759 e!51778)))

(declare-fun c!23312 () Bool)

(assert (=> d!61662 (= c!23312 (is-Nil!824 (t!54999 lt!21751)))))

(assert (=> d!61662 (= (size!995 (t!54999 lt!21751)) lt!21759)))

(declare-fun b!94878 () Bool)

(assert (=> b!94878 (= e!51778 0)))

(declare-fun b!94879 () Bool)

(assert (=> b!94879 (= e!51778 (+ 1 (size!995 (t!54999 (t!54999 lt!21751)))))))

(assert (= (and d!61662 c!23312) b!94878))

(assert (= (and d!61662 (not c!23312)) b!94879))

(declare-fun m!90145 () Bool)

(assert (=> b!94879 m!90145))

(assert (=> b!94855 d!61662))

(declare-fun b_lambda!18997 () Bool)

(assert (= b_lambda!18995 (or b!94847 b_lambda!18997)))

(declare-fun bs!43202 () Bool)

(declare-fun d!61664 () Bool)

(assert (= bs!43202 (and d!61664 b!94847)))

(assert (=> bs!43202 (= (dynLambda!1152 lambda!11202 (h!6697 (t!54999 lt!21752))) (not (= (_1!294 (h!6697 (t!54999 lt!21752))) (_2!294 (h!6697 (t!54999 lt!21752))))))))

(assert (=> b!94876 d!61664))

(push 1)

(assert (not b!94879))

(assert (not b!94873))

(assert (not b_lambda!18993))

(assert (not b_lambda!18997))

(assert (not b!94875))

(assert (not b!94877))

(assert (not b!94871))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61666 () Bool)

(declare-fun res!49407 () Bool)

(declare-fun e!51779 () Bool)

(assert (=> d!61666 (=> res!49407 e!51779)))

(assert (=> d!61666 (= res!49407 (is-Nil!824 (t!54999 (t!54999 lt!21752))))))

(assert (=> d!61666 (= (forall!82 (t!54999 (t!54999 lt!21752)) lambda!11202) e!51779)))

(declare-fun b!94880 () Bool)

(declare-fun e!51780 () Bool)

(assert (=> b!94880 (= e!51779 e!51780)))

(declare-fun res!49408 () Bool)

(assert (=> b!94880 (=> (not res!49408) (not e!51780))))

(assert (=> b!94880 (= res!49408 (dynLambda!1152 lambda!11202 (h!6697 (t!54999 (t!54999 lt!21752)))))))

(declare-fun b!94881 () Bool)

(assert (=> b!94881 (= e!51780 (forall!82 (t!54999 (t!54999 (t!54999 lt!21752))) lambda!11202))))

(assert (= (and d!61666 (not res!49407)) b!94880))

(assert (= (and b!94880 res!49408) b!94881))

(declare-fun b_lambda!18999 () Bool)

(assert (=> (not b_lambda!18999) (not b!94880)))

(declare-fun m!90147 () Bool)

(assert (=> b!94880 m!90147))

(declare-fun m!90149 () Bool)

(assert (=> b!94881 m!90149))

(assert (=> b!94877 d!61666))

(declare-fun d!61668 () Bool)

(declare-fun lt!21760 () Int)

(assert (=> d!61668 (>= lt!21760 0)))

(declare-fun e!51781 () Int)

(assert (=> d!61668 (= lt!21760 e!51781)))

(declare-fun c!23313 () Bool)

(assert (=> d!61668 (= c!23313 (is-Nil!824 (t!54999 (t!54999 lt!21752))))))

(assert (=> d!61668 (= (size!995 (t!54999 (t!54999 lt!21752))) lt!21760)))

(declare-fun b!94882 () Bool)

(assert (=> b!94882 (= e!51781 0)))

(declare-fun b!94883 () Bool)

(assert (=> b!94883 (= e!51781 (+ 1 (size!995 (t!54999 (t!54999 (t!54999 lt!21752))))))))

(assert (= (and d!61668 c!23313) b!94882))

(assert (= (and d!61668 (not c!23313)) b!94883))

(declare-fun m!90151 () Bool)

(assert (=> b!94883 m!90151))

(assert (=> b!94871 d!61668))

(declare-fun d!61670 () Bool)

(declare-fun lt!21761 () Int)

(assert (=> d!61670 (>= lt!21761 0)))

(declare-fun e!51782 () Int)

(assert (=> d!61670 (= lt!21761 e!51782)))

(declare-fun c!23314 () Bool)

(assert (=> d!61670 (= c!23314 (is-Nil!824 (t!54999 (t!54999 lt!21751))))))

(assert (=> d!61670 (= (size!995 (t!54999 (t!54999 lt!21751))) lt!21761)))

(declare-fun b!94884 () Bool)

(assert (=> b!94884 (= e!51782 0)))

(declare-fun b!94885 () Bool)

(assert (=> b!94885 (= e!51782 (+ 1 (size!995 (t!54999 (t!54999 (t!54999 lt!21751))))))))

(assert (= (and d!61670 c!23314) b!94884))

(assert (= (and d!61670 (not c!23314)) b!94885))

(declare-fun m!90153 () Bool)

(assert (=> b!94885 m!90153))

(assert (=> b!94879 d!61670))

(declare-fun d!61672 () Bool)

(declare-fun c!23315 () Bool)

(assert (=> d!61672 (= c!23315 (is-Nil!824 (t!54999 (t!54999 lt!21751))))))

(declare-fun e!51783 () (Set tuple2!510))

(assert (=> d!61672 (= (content!205 (t!54999 (t!54999 lt!21751))) e!51783)))

(declare-fun b!94886 () Bool)

(assert (=> b!94886 (= e!51783 (as emptyset (Set tuple2!510)))))

(declare-fun b!94887 () Bool)

(assert (=> b!94887 (= e!51783 (union (insert (h!6697 (t!54999 (t!54999 lt!21751))) (as emptyset (Set tuple2!510))) (content!205 (t!54999 (t!54999 (t!54999 lt!21751))))))))

(assert (= (and d!61672 c!23315) b!94886))

(assert (= (and d!61672 (not c!23315)) b!94887))

(declare-fun m!90155 () Bool)

(assert (=> b!94887 m!90155))

(declare-fun m!90157 () Bool)

(assert (=> b!94887 m!90157))

(assert (=> b!94873 d!61672))

(declare-fun d!61674 () Bool)

(declare-fun c!23316 () Bool)

(assert (=> d!61674 (= c!23316 (is-Nil!824 (t!54999 (t!54999 lt!21752))))))

(declare-fun e!51784 () (Set tuple2!510))

(assert (=> d!61674 (= (content!205 (t!54999 (t!54999 lt!21752))) e!51784)))

(declare-fun b!94888 () Bool)

(assert (=> b!94888 (= e!51784 (as emptyset (Set tuple2!510)))))

(declare-fun b!94889 () Bool)

(assert (=> b!94889 (= e!51784 (union (insert (h!6697 (t!54999 (t!54999 lt!21752))) (as emptyset (Set tuple2!510))) (content!205 (t!54999 (t!54999 (t!54999 lt!21752))))))))

(assert (= (and d!61674 c!23316) b!94888))

(assert (= (and d!61674 (not c!23316)) b!94889))

(declare-fun m!90159 () Bool)

(assert (=> b!94889 m!90159))

(declare-fun m!90161 () Bool)

(assert (=> b!94889 m!90161))

(assert (=> b!94875 d!61674))

(declare-fun b_lambda!19001 () Bool)

(assert (= b_lambda!18999 (or b!94847 b_lambda!19001)))

(declare-fun bs!43203 () Bool)

(declare-fun d!61676 () Bool)

(assert (= bs!43203 (and d!61676 b!94847)))

(assert (=> bs!43203 (= (dynLambda!1152 lambda!11202 (h!6697 (t!54999 (t!54999 lt!21752)))) (not (= (_1!294 (h!6697 (t!54999 (t!54999 lt!21752)))) (_2!294 (h!6697 (t!54999 (t!54999 lt!21752)))))))))

(assert (=> b!94880 d!61676))

(push 1)

(assert (not b!94883))

(assert (not b!94881))

(assert (not b_lambda!19001))

(assert (not b!94889))

(assert (not b_lambda!18993))

(assert (not b!94885))

(assert (not b_lambda!18997))

(assert (not b!94887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

