; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11090 () Bool)

(assert start!11090)

(declare-fun b_free!7393 () Bool)

(declare-fun b_next!39513 () Bool)

(assert (=> start!11090 (= b_free!7393 (not b_next!39513))))

(declare-fun tp!17002 () Bool)

(declare-fun b_and!58999 () Bool)

(assert (=> start!11090 (= tp!17002 b_and!58999)))

(declare-fun b!84843 () Bool)

(assert (=> b!84843 true))

(declare-fun lambda!10642 () Int)

(declare-fun b_next!39515 () Bool)

(declare-fun p!821 () Int)

(assert (=> start!11090 (= b_next!39513 (or (and b!84843 (= lambda!10642 p!821)) b_next!39515))))

(declare-fun bs!40925 () Bool)

(declare-fun b!84837 () Bool)

(assert (= bs!40925 (and b!84837 b!84843)))

(declare-fun lambda!10643 () Int)

(assert (=> bs!40925 (not (= lambda!10643 lambda!10642))))

(assert (=> b!84837 true))

(declare-fun b_next!39517 () Bool)

(assert (=> start!11090 (= b_next!39515 (or (and b!84837 (= lambda!10643 p!821)) b_next!39517))))

(declare-fun bs!40926 () Bool)

(declare-fun b!84846 () Bool)

(assert (= bs!40926 (and b!84846 b!84843)))

(declare-fun lambda!10644 () Int)

(assert (=> bs!40926 (not (= lambda!10644 lambda!10642))))

(declare-fun bs!40927 () Bool)

(assert (= bs!40927 (and b!84846 b!84837)))

(assert (=> bs!40927 (not (= lambda!10644 lambda!10643))))

(assert (=> b!84846 true))

(declare-fun b_next!39519 () Bool)

(assert (=> start!11090 (= b_next!39517 (or (and b!84846 (= lambda!10644 p!821)) b_next!39519))))

(declare-fun res!43921 () Bool)

(declare-fun e!45964 () Bool)

(assert (=> b!84837 (=> (not res!43921) (not e!45964))))

(declare-datatypes () ((List!692 (Cons!649 (h!1022 Int) (t!48035 List!692)) (Nil!651))))

(declare-fun equal!4 () List!692)

(declare-fun ls!77 () List!692)

(declare-fun filter!39 (List!692 Int) List!692)

(assert (=> b!84837 (= res!43921 (= equal!4 (Cons!649 (h!1022 ls!77) (filter!39 (t!48035 ls!77) lambda!10643))))))

(declare-fun b!84838 () Bool)

(declare-fun res!43926 () Bool)

(assert (=> b!84838 (=> (not res!43926) (not e!45964))))

(declare-fun t!47724 () Bool)

(declare-fun e!45965 () Bool)

(assert (=> b!84838 (= res!43926 (= t!47724 e!45965))))

(declare-fun res!43919 () Bool)

(assert (=> b!84838 (=> (not res!43919) (not e!45965))))

(declare-fun res!40793 () Bool)

(assert (=> b!84838 (= res!43919 res!40793)))

(declare-fun b!84839 () Bool)

(declare-fun res!43924 () Bool)

(assert (=> b!84839 (=> (not res!43924) (not e!45964))))

(declare-fun t!47721 () Bool)

(declare-fun e!45966 () Bool)

(assert (=> b!84839 (= res!43924 (= t!47721 e!45966))))

(declare-fun res!43920 () Bool)

(assert (=> b!84839 (=> (not res!43920) (not e!45966))))

(declare-fun filter_preserves_forall!0 (List!692 Int Int) Bool)

(assert (=> b!84839 (= res!43920 (filter_preserves_forall!0 (t!48035 ls!77) lambda!10642 p!821))))

(declare-fun b!84840 () Bool)

(declare-fun res!43918 () Bool)

(assert (=> b!84840 (=> (not res!43918) (not e!45964))))

(assert (=> b!84840 (= res!43918 (= res!40793 t!47721))))

(declare-fun b!84841 () Bool)

(assert (=> b!84841 (= e!45966 (filter_preserves_forall!0 (t!48035 ls!77) lambda!10643 p!821))))

(declare-fun b!84842 () Bool)

(declare-fun res!43917 () Bool)

(assert (=> b!84842 (=> (not res!43917) (not e!45964))))

(assert (=> b!84842 (= res!43917 (and (not (is-Nil!651 ls!77)) (not (is-Nil!651 (t!48035 ls!77)))))))

(declare-fun res!43925 () Bool)

(assert (=> start!11090 (=> (not res!43925) (not e!45964))))

(declare-fun forall!40 (List!692 Int) Bool)

(assert (=> start!11090 (= res!43925 (forall!40 ls!77 p!821))))

(assert (=> start!11090 e!45964))

(assert (=> start!11090 true))

(assert (=> start!11090 tp!17002))

(declare-fun res!43923 () Bool)

(assert (=> b!84843 (=> (not res!43923) (not e!45964))))

(declare-fun less!2 () List!692)

(assert (=> b!84843 (= res!43923 (= less!2 (filter!39 (t!48035 ls!77) lambda!10642)))))

(declare-fun b!84844 () Bool)

(assert (=> b!84844 (= e!45965 (filter_preserves_forall!0 (t!48035 ls!77) lambda!10644 p!821))))

(declare-fun b!84845 () Bool)

(declare-fun res!40794 () Bool)

(assert (=> b!84845 (= e!45964 (and (= res!40794 t!47724) (not res!40794)))))

(declare-fun res!43922 () Bool)

(assert (=> b!84846 (=> (not res!43922) (not e!45964))))

(declare-fun more!2 () List!692)

(assert (=> b!84846 (= res!43922 (= more!2 (filter!39 (t!48035 ls!77) lambda!10644)))))

(assert (= (and start!11090 res!43925) b!84842))

(assert (= (and b!84842 res!43917) b!84843))

(assert (= (and b!84843 res!43923) b!84837))

(assert (= (and b!84837 res!43921) b!84846))

(assert (= (and b!84846 res!43922) b!84839))

(assert (= (and b!84839 res!43920) b!84841))

(assert (= (and b!84839 res!43924) b!84840))

(assert (= (and b!84840 res!43918) b!84838))

(assert (= (and b!84838 res!43919) b!84844))

(assert (= (and b!84838 res!43926) b!84845))

(declare-fun m!80638 () Bool)

(assert (=> b!84844 m!80638))

(declare-fun m!80640 () Bool)

(assert (=> b!84843 m!80640))

(declare-fun m!80642 () Bool)

(assert (=> b!84846 m!80642))

(declare-fun m!80644 () Bool)

(assert (=> b!84837 m!80644))

(declare-fun m!80646 () Bool)

(assert (=> b!84841 m!80646))

(declare-fun m!80648 () Bool)

(assert (=> b!84839 m!80648))

(declare-fun m!80650 () Bool)

(assert (=> start!11090 m!80650))

(push 1)

(assert (not start!11090))

(assert (not b!84844))

(assert (not b!84843))

(assert (not b!84841))

(assert (not b_next!39519))

(assert b_and!58999)

(assert (not b!84837))

(assert (not b!84839))

(assert (not b!84846))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58999)

(assert (not b_next!39519))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57105 () Bool)

(declare-fun e!45969 () Bool)

(assert (=> d!57105 e!45969))

(declare-fun c!21129 () Bool)

(assert (=> d!57105 (= c!21129 (is-Cons!649 (t!48035 ls!77)))))

(assert (=> d!57105 (forall!40 (t!48035 ls!77) p!821)))

(assert (=> d!57105 (= (filter_preserves_forall!0 (t!48035 ls!77) lambda!10643 p!821) true)))

(declare-fun b!84853 () Bool)

(assert (=> b!84853 (= e!45969 (forall!40 (filter!39 (t!48035 ls!77) lambda!10643) p!821))))

(declare-fun lt!19760 () Bool)

(assert (=> b!84853 (= lt!19760 (filter_preserves_forall!0 (t!48035 (t!48035 ls!77)) lambda!10643 p!821))))

(declare-fun b!84854 () Bool)

(assert (=> b!84854 (= e!45969 (forall!40 (filter!39 (t!48035 ls!77) lambda!10643) p!821))))

(assert (= (and d!57105 c!21129) b!84853))

(assert (= (and d!57105 (not c!21129)) b!84854))

(declare-fun m!80652 () Bool)

(assert (=> d!57105 m!80652))

(assert (=> b!84853 m!80644))

(assert (=> b!84853 m!80644))

(declare-fun m!80654 () Bool)

(assert (=> b!84853 m!80654))

(declare-fun m!80656 () Bool)

(assert (=> b!84853 m!80656))

(assert (=> b!84854 m!80644))

(assert (=> b!84854 m!80644))

(assert (=> b!84854 m!80654))

(assert (=> b!84841 d!57105))

(declare-fun d!57107 () Bool)

(declare-fun res!43931 () Bool)

(declare-fun e!45974 () Bool)

(assert (=> d!57107 (=> res!43931 e!45974)))

(assert (=> d!57107 (= res!43931 (is-Nil!651 ls!77))))

(assert (=> d!57107 (= (forall!40 ls!77 p!821) e!45974)))

(declare-fun b!84859 () Bool)

(declare-fun e!45975 () Bool)

(assert (=> b!84859 (= e!45974 e!45975)))

(declare-fun res!43932 () Bool)

(assert (=> b!84859 (=> (not res!43932) (not e!45975))))

(declare-fun dynLambda!1004 (Int Int) Bool)

(assert (=> b!84859 (= res!43932 (dynLambda!1004 p!821 (h!1022 ls!77)))))

(declare-fun b!84860 () Bool)

(assert (=> b!84860 (= e!45975 (forall!40 (t!48035 ls!77) p!821))))

(assert (= (and d!57107 (not res!43931)) b!84859))

(assert (= (and b!84859 res!43932) b!84860))

(declare-fun b_lambda!16675 () Bool)

(assert (=> (not b_lambda!16675) (not b!84859)))

(declare-fun t!48037 () Bool)

(declare-fun tb!46285 () Bool)

(assert (=> (and start!11090 (= p!821 p!821) t!48037) tb!46285))

(declare-fun result!46715 () Bool)

(assert (=> tb!46285 (= result!46715 true)))

(assert (=> b!84859 t!48037))

(declare-fun b_and!59001 () Bool)

(assert (= b_and!58999 (and (=> t!48037 result!46715) b_and!59001)))

(declare-fun m!80658 () Bool)

(assert (=> b!84859 m!80658))

(assert (=> b!84860 m!80652))

(assert (=> start!11090 d!57107))

(declare-fun b!84875 () Bool)

(declare-fun e!45987 () List!692)

(declare-fun e!45985 () List!692)

(assert (=> b!84875 (= e!45987 e!45985)))

(declare-fun c!21135 () Bool)

(declare-fun e!45986 () Bool)

(assert (=> b!84875 (= c!21135 e!45986)))

(declare-fun res!43944 () Bool)

(assert (=> b!84875 (=> (not res!43944) (not e!45986))))

(assert (=> b!84875 (= res!43944 (is-Cons!649 (t!48035 ls!77)))))

(declare-fun lt!19766 () List!692)

(assert (=> b!84875 (= lt!19766 (filter!39 (t!48035 (t!48035 ls!77)) lambda!10642))))

(declare-fun b!84876 () Bool)

(assert (=> b!84876 (= e!45985 (Cons!649 (h!1022 (t!48035 ls!77)) lt!19766))))

(declare-fun b!84877 () Bool)

(assert (=> b!84877 (= e!45985 lt!19766)))

(declare-fun b!84878 () Bool)

(declare-fun res!43943 () Bool)

(declare-fun e!45984 () Bool)

(assert (=> b!84878 (=> (not res!43943) (not e!45984))))

(declare-fun lt!19765 () List!692)

(declare-fun content!146 (List!692) (Set Int))

(assert (=> b!84878 (= res!43943 (subset (content!146 lt!19765) (content!146 (t!48035 ls!77))))))

(declare-fun b!84879 () Bool)

(assert (=> b!84879 (= e!45984 (forall!40 lt!19765 lambda!10642))))

(declare-fun b!84880 () Bool)

(assert (=> b!84880 (= e!45987 Nil!651)))

(declare-fun d!57109 () Bool)

(assert (=> d!57109 e!45984))

(declare-fun res!43945 () Bool)

(assert (=> d!57109 (=> (not res!43945) (not e!45984))))

(declare-fun size!675 (List!692) Int)

(assert (=> d!57109 (= res!43945 (<= (size!675 lt!19765) (size!675 (t!48035 ls!77))))))

(assert (=> d!57109 (= lt!19765 e!45987)))

(declare-fun c!21134 () Bool)

(assert (=> d!57109 (= c!21134 (is-Nil!651 (t!48035 ls!77)))))

(assert (=> d!57109 (= (filter!39 (t!48035 ls!77) lambda!10642) lt!19765)))

(declare-fun b!84881 () Bool)

(assert (=> b!84881 (= e!45986 (dynLambda!1004 lambda!10642 (h!1022 (t!48035 ls!77))))))

(assert (= (and b!84875 res!43944) b!84881))

(assert (= (and b!84875 c!21135) b!84876))

(assert (= (and b!84875 (not c!21135)) b!84877))

(assert (= (and d!57109 c!21134) b!84880))

(assert (= (and d!57109 (not c!21134)) b!84875))

(assert (= (and d!57109 res!43945) b!84878))

(assert (= (and b!84878 res!43943) b!84879))

(declare-fun b_lambda!16677 () Bool)

(assert (=> (not b_lambda!16677) (not b!84881)))

(declare-fun m!80660 () Bool)

(assert (=> b!84875 m!80660))

(declare-fun m!80662 () Bool)

(assert (=> b!84881 m!80662))

(declare-fun m!80664 () Bool)

(assert (=> d!57109 m!80664))

(declare-fun m!80666 () Bool)

(assert (=> d!57109 m!80666))

(declare-fun m!80668 () Bool)

(assert (=> b!84878 m!80668))

(declare-fun m!80670 () Bool)

(assert (=> b!84878 m!80670))

(declare-fun m!80672 () Bool)

(assert (=> b!84879 m!80672))

(assert (=> b!84843 d!57109))

(declare-fun b!84882 () Bool)

(declare-fun e!45991 () List!692)

(declare-fun e!45989 () List!692)

(assert (=> b!84882 (= e!45991 e!45989)))

(declare-fun c!21137 () Bool)

(declare-fun e!45990 () Bool)

(assert (=> b!84882 (= c!21137 e!45990)))

(declare-fun res!43947 () Bool)

(assert (=> b!84882 (=> (not res!43947) (not e!45990))))

(assert (=> b!84882 (= res!43947 (is-Cons!649 (t!48035 ls!77)))))

(declare-fun lt!19768 () List!692)

(assert (=> b!84882 (= lt!19768 (filter!39 (t!48035 (t!48035 ls!77)) lambda!10643))))

(declare-fun b!84883 () Bool)

(assert (=> b!84883 (= e!45989 (Cons!649 (h!1022 (t!48035 ls!77)) lt!19768))))

(declare-fun b!84884 () Bool)

(assert (=> b!84884 (= e!45989 lt!19768)))

(declare-fun b!84885 () Bool)

(declare-fun res!43946 () Bool)

(declare-fun e!45988 () Bool)

(assert (=> b!84885 (=> (not res!43946) (not e!45988))))

(declare-fun lt!19767 () List!692)

(assert (=> b!84885 (= res!43946 (subset (content!146 lt!19767) (content!146 (t!48035 ls!77))))))

(declare-fun b!84886 () Bool)

(assert (=> b!84886 (= e!45988 (forall!40 lt!19767 lambda!10643))))

(declare-fun b!84887 () Bool)

(assert (=> b!84887 (= e!45991 Nil!651)))

(declare-fun d!57111 () Bool)

(assert (=> d!57111 e!45988))

(declare-fun res!43948 () Bool)

(assert (=> d!57111 (=> (not res!43948) (not e!45988))))

(assert (=> d!57111 (= res!43948 (<= (size!675 lt!19767) (size!675 (t!48035 ls!77))))))

(assert (=> d!57111 (= lt!19767 e!45991)))

(declare-fun c!21136 () Bool)

(assert (=> d!57111 (= c!21136 (is-Nil!651 (t!48035 ls!77)))))

(assert (=> d!57111 (= (filter!39 (t!48035 ls!77) lambda!10643) lt!19767)))

(declare-fun b!84888 () Bool)

(assert (=> b!84888 (= e!45990 (dynLambda!1004 lambda!10643 (h!1022 (t!48035 ls!77))))))

(assert (= (and b!84882 res!43947) b!84888))

(assert (= (and b!84882 c!21137) b!84883))

(assert (= (and b!84882 (not c!21137)) b!84884))

(assert (= (and d!57111 c!21136) b!84887))

(assert (= (and d!57111 (not c!21136)) b!84882))

(assert (= (and d!57111 res!43948) b!84885))

(assert (= (and b!84885 res!43946) b!84886))

(declare-fun b_lambda!16679 () Bool)

(assert (=> (not b_lambda!16679) (not b!84888)))

(declare-fun m!80674 () Bool)

(assert (=> b!84882 m!80674))

(declare-fun m!80676 () Bool)

(assert (=> b!84888 m!80676))

(declare-fun m!80678 () Bool)

(assert (=> d!57111 m!80678))

(assert (=> d!57111 m!80666))

(declare-fun m!80680 () Bool)

(assert (=> b!84885 m!80680))

(assert (=> b!84885 m!80670))

(declare-fun m!80682 () Bool)

(assert (=> b!84886 m!80682))

(assert (=> b!84837 d!57111))

(declare-fun d!57113 () Bool)

(declare-fun e!45992 () Bool)

(assert (=> d!57113 e!45992))

(declare-fun c!21138 () Bool)

(assert (=> d!57113 (= c!21138 (is-Cons!649 (t!48035 ls!77)))))

(assert (=> d!57113 (forall!40 (t!48035 ls!77) p!821)))

(assert (=> d!57113 (= (filter_preserves_forall!0 (t!48035 ls!77) lambda!10642 p!821) true)))

(declare-fun b!84889 () Bool)

(assert (=> b!84889 (= e!45992 (forall!40 (filter!39 (t!48035 ls!77) lambda!10642) p!821))))

(declare-fun lt!19769 () Bool)

(assert (=> b!84889 (= lt!19769 (filter_preserves_forall!0 (t!48035 (t!48035 ls!77)) lambda!10642 p!821))))

(declare-fun b!84890 () Bool)

(assert (=> b!84890 (= e!45992 (forall!40 (filter!39 (t!48035 ls!77) lambda!10642) p!821))))

(assert (= (and d!57113 c!21138) b!84889))

(assert (= (and d!57113 (not c!21138)) b!84890))

(assert (=> d!57113 m!80652))

(assert (=> b!84889 m!80640))

(assert (=> b!84889 m!80640))

(declare-fun m!80684 () Bool)

(assert (=> b!84889 m!80684))

(declare-fun m!80686 () Bool)

(assert (=> b!84889 m!80686))

(assert (=> b!84890 m!80640))

(assert (=> b!84890 m!80640))

(assert (=> b!84890 m!80684))

(assert (=> b!84839 d!57113))

(declare-fun b!84891 () Bool)

(declare-fun e!45996 () List!692)

(declare-fun e!45994 () List!692)

(assert (=> b!84891 (= e!45996 e!45994)))

(declare-fun c!21140 () Bool)

(declare-fun e!45995 () Bool)

(assert (=> b!84891 (= c!21140 e!45995)))

(declare-fun res!43950 () Bool)

(assert (=> b!84891 (=> (not res!43950) (not e!45995))))

(assert (=> b!84891 (= res!43950 (is-Cons!649 (t!48035 ls!77)))))

(declare-fun lt!19771 () List!692)

(assert (=> b!84891 (= lt!19771 (filter!39 (t!48035 (t!48035 ls!77)) lambda!10644))))

(declare-fun b!84892 () Bool)

(assert (=> b!84892 (= e!45994 (Cons!649 (h!1022 (t!48035 ls!77)) lt!19771))))

(declare-fun b!84893 () Bool)

(assert (=> b!84893 (= e!45994 lt!19771)))

(declare-fun b!84894 () Bool)

(declare-fun res!43949 () Bool)

(declare-fun e!45993 () Bool)

(assert (=> b!84894 (=> (not res!43949) (not e!45993))))

(declare-fun lt!19770 () List!692)

(assert (=> b!84894 (= res!43949 (subset (content!146 lt!19770) (content!146 (t!48035 ls!77))))))

(declare-fun b!84895 () Bool)

(assert (=> b!84895 (= e!45993 (forall!40 lt!19770 lambda!10644))))

(declare-fun b!84896 () Bool)

(assert (=> b!84896 (= e!45996 Nil!651)))

(declare-fun d!57115 () Bool)

(assert (=> d!57115 e!45993))

(declare-fun res!43951 () Bool)

(assert (=> d!57115 (=> (not res!43951) (not e!45993))))

(assert (=> d!57115 (= res!43951 (<= (size!675 lt!19770) (size!675 (t!48035 ls!77))))))

(assert (=> d!57115 (= lt!19770 e!45996)))

(declare-fun c!21139 () Bool)

(assert (=> d!57115 (= c!21139 (is-Nil!651 (t!48035 ls!77)))))

(assert (=> d!57115 (= (filter!39 (t!48035 ls!77) lambda!10644) lt!19770)))

(declare-fun b!84897 () Bool)

(assert (=> b!84897 (= e!45995 (dynLambda!1004 lambda!10644 (h!1022 (t!48035 ls!77))))))

(assert (= (and b!84891 res!43950) b!84897))

(assert (= (and b!84891 c!21140) b!84892))

(assert (= (and b!84891 (not c!21140)) b!84893))

(assert (= (and d!57115 c!21139) b!84896))

(assert (= (and d!57115 (not c!21139)) b!84891))

(assert (= (and d!57115 res!43951) b!84894))

(assert (= (and b!84894 res!43949) b!84895))

(declare-fun b_lambda!16681 () Bool)

(assert (=> (not b_lambda!16681) (not b!84897)))

(declare-fun m!80688 () Bool)

(assert (=> b!84891 m!80688))

(declare-fun m!80690 () Bool)

(assert (=> b!84897 m!80690))

(declare-fun m!80692 () Bool)

(assert (=> d!57115 m!80692))

(assert (=> d!57115 m!80666))

(declare-fun m!80694 () Bool)

(assert (=> b!84894 m!80694))

(assert (=> b!84894 m!80670))

(declare-fun m!80696 () Bool)

(assert (=> b!84895 m!80696))

(assert (=> b!84846 d!57115))

(declare-fun d!57117 () Bool)

(declare-fun e!45997 () Bool)

(assert (=> d!57117 e!45997))

(declare-fun c!21141 () Bool)

(assert (=> d!57117 (= c!21141 (is-Cons!649 (t!48035 ls!77)))))

(assert (=> d!57117 (forall!40 (t!48035 ls!77) p!821)))

(assert (=> d!57117 (= (filter_preserves_forall!0 (t!48035 ls!77) lambda!10644 p!821) true)))

(declare-fun b!84898 () Bool)

(assert (=> b!84898 (= e!45997 (forall!40 (filter!39 (t!48035 ls!77) lambda!10644) p!821))))

(declare-fun lt!19772 () Bool)

(assert (=> b!84898 (= lt!19772 (filter_preserves_forall!0 (t!48035 (t!48035 ls!77)) lambda!10644 p!821))))

(declare-fun b!84899 () Bool)

(assert (=> b!84899 (= e!45997 (forall!40 (filter!39 (t!48035 ls!77) lambda!10644) p!821))))

(assert (= (and d!57117 c!21141) b!84898))

(assert (= (and d!57117 (not c!21141)) b!84899))

(assert (=> d!57117 m!80652))

(assert (=> b!84898 m!80642))

(assert (=> b!84898 m!80642))

(declare-fun m!80698 () Bool)

(assert (=> b!84898 m!80698))

(declare-fun m!80700 () Bool)

(assert (=> b!84898 m!80700))

(assert (=> b!84899 m!80642))

(assert (=> b!84899 m!80642))

(assert (=> b!84899 m!80698))

(assert (=> b!84844 d!57117))

(declare-fun b_lambda!16683 () Bool)

(assert (= b_lambda!16681 (or b!84846 b_lambda!16683)))

(declare-fun bs!40928 () Bool)

(declare-fun d!57119 () Bool)

(assert (= bs!40928 (and d!57119 b!84846)))

(assert (=> bs!40928 (= (dynLambda!1004 lambda!10644 (h!1022 (t!48035 ls!77))) (> (h!1022 (t!48035 ls!77)) (h!1022 ls!77)))))

(assert (=> b!84897 d!57119))

(declare-fun b_lambda!16685 () Bool)

(assert (= b_lambda!16675 (or (and b!84843 (= lambda!10642 p!821)) (and b!84837 (= lambda!10643 p!821)) (and b!84846 (= lambda!10644 p!821)) (and start!11090 b_free!7393) b_lambda!16685)))

(declare-fun bs!40929 () Bool)

(declare-fun d!57121 () Bool)

(assert (= bs!40929 (and d!57121 b!84843)))

(assert (=> bs!40929 (= (dynLambda!1004 lambda!10642 (h!1022 ls!77)) (< (h!1022 ls!77) (h!1022 ls!77)))))

(assert (=> (and b!84843 (= lambda!10642 p!821) b!84859) d!57121))

(declare-fun bs!40930 () Bool)

(declare-fun d!57123 () Bool)

(assert (= bs!40930 (and d!57123 b!84837)))

(assert (=> bs!40930 (= (dynLambda!1004 lambda!10643 (h!1022 ls!77)) (= (h!1022 ls!77) (h!1022 ls!77)))))

(assert (=> (and b!84837 (= lambda!10643 p!821) b!84859) d!57123))

(declare-fun bs!40931 () Bool)

(declare-fun d!57125 () Bool)

(assert (= bs!40931 (and d!57125 b!84846)))

(assert (=> bs!40931 (= (dynLambda!1004 lambda!10644 (h!1022 ls!77)) (> (h!1022 ls!77) (h!1022 ls!77)))))

(assert (=> (and b!84846 (= lambda!10644 p!821) b!84859) d!57125))

(declare-fun b_lambda!16687 () Bool)

(assert (= b_lambda!16677 (or b!84843 b_lambda!16687)))

(declare-fun bs!40932 () Bool)

(declare-fun d!57127 () Bool)

(assert (= bs!40932 (and d!57127 b!84843)))

(assert (=> bs!40932 (= (dynLambda!1004 lambda!10642 (h!1022 (t!48035 ls!77))) (< (h!1022 (t!48035 ls!77)) (h!1022 ls!77)))))

(assert (=> b!84881 d!57127))

(declare-fun b_lambda!16689 () Bool)

(assert (= b_lambda!16679 (or b!84837 b_lambda!16689)))

(declare-fun bs!40933 () Bool)

(declare-fun d!57129 () Bool)

(assert (= bs!40933 (and d!57129 b!84837)))

(assert (=> bs!40933 (= (dynLambda!1004 lambda!10643 (h!1022 (t!48035 ls!77))) (= (h!1022 (t!48035 ls!77)) (h!1022 ls!77)))))

(assert (=> b!84888 d!57129))

(push 1)

(assert (not d!57105))

(assert (not b!84875))

(assert (not b!84882))

(assert (not b!84891))

(assert (not d!57117))

(assert (not d!57113))

(assert (not b!84885))

(assert (not b!84886))

(assert (not b!84853))

(assert (not b!84895))

(assert (not b_lambda!16687))

(assert (not b!84889))

(assert (not b_lambda!16683))

(assert (not b!84860))

(assert (not b_lambda!16685))

(assert (not b!84878))

(assert (not d!57111))

(assert (not b_next!39519))

(assert (not b!84894))

(assert (not b!84898))

(assert (not b_lambda!16689))

(assert (not b!84879))

(assert (not b!84890))

(assert (not b!84899))

(assert b_and!59001)

(assert (not d!57115))

(assert (not b!84854))

(assert (not d!57109))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59001)

(assert (not b_next!39519))

(check-sat)

(pop 1)

