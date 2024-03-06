; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11098 () Bool)

(assert start!11098)

(declare-fun b_free!7395 () Bool)

(declare-fun b_next!39521 () Bool)

(assert (=> start!11098 (= b_free!7395 (not b_next!39521))))

(declare-fun tp!17005 () Bool)

(declare-fun b_and!59003 () Bool)

(assert (=> start!11098 (= tp!17005 b_and!59003)))

(declare-fun b!84927 () Bool)

(assert (=> b!84927 true))

(declare-fun b_next!39523 () Bool)

(declare-fun lambda!10657 () Int)

(declare-fun p!821 () Int)

(assert (=> start!11098 (= b_next!39521 (or (and b!84927 (= lambda!10657 p!821)) b_next!39523))))

(declare-fun bs!40935 () Bool)

(declare-fun b!84932 () Bool)

(assert (= bs!40935 (and b!84932 b!84927)))

(declare-fun lambda!10658 () Int)

(assert (=> bs!40935 (not (= lambda!10658 lambda!10657))))

(assert (=> b!84932 true))

(declare-fun b_next!39525 () Bool)

(assert (=> start!11098 (= b_next!39523 (or (and b!84932 (= lambda!10658 p!821)) b_next!39525))))

(declare-fun bs!40936 () Bool)

(declare-fun b!84931 () Bool)

(assert (= bs!40936 (and b!84931 b!84927)))

(declare-fun lambda!10659 () Int)

(assert (=> bs!40936 (not (= lambda!10659 lambda!10657))))

(declare-fun bs!40937 () Bool)

(assert (= bs!40937 (and b!84931 b!84932)))

(assert (=> bs!40937 (not (= lambda!10659 lambda!10658))))

(assert (=> b!84931 true))

(declare-fun b_next!39527 () Bool)

(assert (=> start!11098 (= b_next!39525 (or (and b!84931 (= lambda!10659 p!821)) b_next!39527))))

(declare-fun b!84926 () Bool)

(declare-datatypes () ((List!693 (Cons!650 (h!1023 Int) (t!48038 List!693)) (Nil!652))))

(declare-fun ls!77 () List!693)

(declare-fun e!46010 () Bool)

(declare-fun filter_preserves_forall!0 (List!693 Int Int) Bool)

(assert (=> b!84926 (= e!46010 (filter_preserves_forall!0 (t!48038 ls!77) lambda!10659 p!821))))

(declare-fun res!43978 () Bool)

(declare-fun e!46008 () Bool)

(assert (=> b!84927 (=> (not res!43978) (not e!46008))))

(declare-fun less!2 () List!693)

(declare-fun filter!40 (List!693 Int) List!693)

(assert (=> b!84927 (= res!43978 (= less!2 (filter!40 (t!48038 ls!77) lambda!10657)))))

(declare-fun b!84928 () Bool)

(declare-fun res!43982 () Bool)

(assert (=> b!84928 (=> (not res!43982) (not e!46008))))

(declare-fun t!47721 () Bool)

(declare-fun e!46009 () Bool)

(assert (=> b!84928 (= res!43982 (= t!47721 e!46009))))

(declare-fun res!43986 () Bool)

(assert (=> b!84928 (=> (not res!43986) (not e!46009))))

(assert (=> b!84928 (= res!43986 (filter_preserves_forall!0 (t!48038 ls!77) lambda!10657 p!821))))

(declare-fun b!84929 () Bool)

(declare-fun res!40805 () Bool)

(declare-fun t!47726 () Bool)

(assert (=> b!84929 (= e!46008 (and (= res!40805 t!47726) (not res!40805)))))

(declare-fun b!84930 () Bool)

(declare-fun e!46007 () Bool)

(declare-fun more!2 () List!693)

(declare-fun sort_preserves_forall!0 (List!693 Int) Bool)

(assert (=> b!84930 (= e!46007 (sort_preserves_forall!0 more!2 p!821))))

(declare-fun res!43979 () Bool)

(assert (=> b!84931 (=> (not res!43979) (not e!46008))))

(assert (=> b!84931 (= res!43979 (= more!2 (filter!40 (t!48038 ls!77) lambda!10659)))))

(declare-fun res!43985 () Bool)

(assert (=> b!84932 (=> (not res!43985) (not e!46008))))

(declare-fun equal!4 () List!693)

(assert (=> b!84932 (= res!43985 (= equal!4 (Cons!650 (h!1023 ls!77) (filter!40 (t!48038 ls!77) lambda!10658))))))

(declare-fun b!84933 () Bool)

(declare-fun res!43980 () Bool)

(assert (=> b!84933 (=> (not res!43980) (not e!46008))))

(declare-fun res!40793 () Bool)

(assert (=> b!84933 (= res!43980 (= res!40793 t!47721))))

(declare-fun b!84934 () Bool)

(declare-fun res!43981 () Bool)

(assert (=> b!84934 (=> (not res!43981) (not e!46008))))

(declare-fun res!40794 () Bool)

(declare-fun t!47724 () Bool)

(assert (=> b!84934 (= res!43981 (and (= res!40794 t!47724) res!40794))))

(declare-fun b!84935 () Bool)

(declare-fun res!43989 () Bool)

(assert (=> b!84935 (=> (not res!43989) (not e!46008))))

(assert (=> b!84935 (= res!43989 (= t!47726 e!46007))))

(declare-fun res!43988 () Bool)

(assert (=> b!84935 (=> (not res!43988) (not e!46007))))

(assert (=> b!84935 (= res!43988 (sort_preserves_forall!0 less!2 p!821))))

(declare-fun b!84936 () Bool)

(declare-fun res!43990 () Bool)

(assert (=> b!84936 (=> (not res!43990) (not e!46008))))

(assert (=> b!84936 (= res!43990 (= t!47724 e!46010))))

(declare-fun res!43984 () Bool)

(assert (=> b!84936 (=> (not res!43984) (not e!46010))))

(assert (=> b!84936 (= res!43984 res!40793)))

(declare-fun b!84937 () Bool)

(assert (=> b!84937 (= e!46009 (filter_preserves_forall!0 (t!48038 ls!77) lambda!10658 p!821))))

(declare-fun b!84938 () Bool)

(declare-fun res!43983 () Bool)

(assert (=> b!84938 (=> (not res!43983) (not e!46008))))

(assert (=> b!84938 (= res!43983 (and (not (is-Nil!652 ls!77)) (not (is-Nil!652 (t!48038 ls!77)))))))

(declare-fun res!43987 () Bool)

(assert (=> start!11098 (=> (not res!43987) (not e!46008))))

(declare-fun forall!41 (List!693 Int) Bool)

(assert (=> start!11098 (= res!43987 (forall!41 ls!77 p!821))))

(assert (=> start!11098 e!46008))

(assert (=> start!11098 true))

(assert (=> start!11098 tp!17005))

(assert (= (and start!11098 res!43987) b!84938))

(assert (= (and b!84938 res!43983) b!84927))

(assert (= (and b!84927 res!43978) b!84932))

(assert (= (and b!84932 res!43985) b!84931))

(assert (= (and b!84931 res!43979) b!84928))

(assert (= (and b!84928 res!43986) b!84937))

(assert (= (and b!84928 res!43982) b!84933))

(assert (= (and b!84933 res!43980) b!84936))

(assert (= (and b!84936 res!43984) b!84926))

(assert (= (and b!84936 res!43990) b!84934))

(assert (= (and b!84934 res!43981) b!84935))

(assert (= (and b!84935 res!43988) b!84930))

(assert (= (and b!84935 res!43989) b!84929))

(declare-fun m!80702 () Bool)

(assert (=> b!84926 m!80702))

(declare-fun m!80704 () Bool)

(assert (=> b!84927 m!80704))

(declare-fun m!80706 () Bool)

(assert (=> b!84928 m!80706))

(declare-fun m!80708 () Bool)

(assert (=> start!11098 m!80708))

(declare-fun m!80710 () Bool)

(assert (=> b!84930 m!80710))

(declare-fun m!80712 () Bool)

(assert (=> b!84937 m!80712))

(declare-fun m!80714 () Bool)

(assert (=> b!84932 m!80714))

(declare-fun m!80716 () Bool)

(assert (=> b!84931 m!80716))

(declare-fun m!80718 () Bool)

(assert (=> b!84935 m!80718))

(push 1)

(assert b_and!59003)

(assert (not b!84937))

(assert (not b!84928))

(assert (not b!84926))

(assert (not b_next!39527))

(assert (not b!84932))

(assert (not b!84927))

(assert (not b!84930))

(assert (not start!11098))

(assert (not b!84931))

(assert (not b!84935))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59003)

(assert (not b_next!39527))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!40938 () Bool)

(declare-fun b!84954 () Bool)

(assert (= bs!40938 (and b!84954 b!84927)))

(declare-fun lambda!10672 () Int)

(assert (=> bs!40938 (= (= (h!1023 less!2) (h!1023 ls!77)) (= lambda!10672 lambda!10657))))

(declare-fun bs!40939 () Bool)

(assert (= bs!40939 (and b!84954 b!84932)))

(assert (=> bs!40939 (not (= lambda!10672 lambda!10658))))

(declare-fun bs!40940 () Bool)

(assert (= bs!40940 (and b!84954 b!84931)))

(assert (=> bs!40940 (not (= lambda!10672 lambda!10659))))

(assert (=> b!84954 true))

(declare-fun b_next!39529 () Bool)

(assert (=> start!11098 (= b_next!39527 (or (and b!84954 (= lambda!10672 p!821)) b_next!39529))))

(declare-fun lambda!10673 () Int)

(assert (=> bs!40938 (not (= lambda!10673 lambda!10657))))

(assert (=> bs!40939 (= (= (h!1023 less!2) (h!1023 ls!77)) (= lambda!10673 lambda!10658))))

(assert (=> bs!40940 (not (= lambda!10673 lambda!10659))))

(assert (=> b!84954 (not (= lambda!10673 lambda!10672))))

(assert (=> b!84954 true))

(declare-fun b_next!39531 () Bool)

(assert (=> start!11098 (= b_next!39529 (or (and b!84954 (= lambda!10673 p!821)) b_next!39531))))

(declare-fun lambda!10674 () Int)

(assert (=> bs!40938 (not (= lambda!10674 lambda!10657))))

(assert (=> bs!40940 (= (= (h!1023 less!2) (h!1023 ls!77)) (= lambda!10674 lambda!10659))))

(assert (=> b!84954 (not (= lambda!10674 lambda!10673))))

(assert (=> b!84954 (not (= lambda!10674 lambda!10672))))

(assert (=> bs!40939 (not (= lambda!10674 lambda!10658))))

(assert (=> b!84954 true))

(declare-fun b_next!39533 () Bool)

(assert (=> start!11098 (= b_next!39531 (or (and b!84954 (= lambda!10674 p!821)) b_next!39533))))

(declare-fun b!84951 () Bool)

(declare-fun e!46021 () Bool)

(declare-fun lt!19788 () List!693)

(assert (=> b!84951 (= e!46021 (sort_preserves_forall!0 lt!19788 p!821))))

(declare-fun lt!19790 () List!693)

(declare-fun e!46022 () Bool)

(declare-fun lt!19789 () List!693)

(declare-fun b!84952 () Bool)

(declare-fun append_preserves_forall!0 (List!693 List!693 Int) Bool)

(declare-fun ++!91 (List!693 List!693) List!693)

(declare-fun quickSort!0 (List!693) List!693)

(assert (=> b!84952 (= e!46022 (append_preserves_forall!0 (++!91 (quickSort!0 lt!19789) lt!19790) (quickSort!0 lt!19788) p!821))))

(declare-fun b!84953 () Bool)

(declare-fun e!46025 () Bool)

(assert (=> b!84953 (= e!46025 (filter_preserves_forall!0 (t!48038 less!2) lambda!10673 p!821))))

(declare-fun e!46024 () Bool)

(assert (=> b!84954 (= e!46024 e!46022)))

(declare-fun res!44010 () Bool)

(assert (=> b!84954 (=> (not res!44010) (not e!46022))))

(assert (=> b!84954 (= res!44010 (append_preserves_forall!0 (quickSort!0 lt!19789) lt!19790 p!821))))

(declare-fun lt!19787 () Bool)

(assert (=> b!84954 (= lt!19787 e!46021)))

(declare-fun res!44007 () Bool)

(assert (=> b!84954 (=> (not res!44007) (not e!46021))))

(assert (=> b!84954 (= res!44007 (sort_preserves_forall!0 lt!19789 p!821))))

(declare-fun lt!19785 () Bool)

(declare-fun e!46023 () Bool)

(assert (=> b!84954 (= lt!19785 e!46023)))

(declare-fun res!44006 () Bool)

(assert (=> b!84954 (=> (not res!44006) (not e!46023))))

(assert (=> b!84954 (= res!44006 e!46025)))

(declare-fun res!44008 () Bool)

(assert (=> b!84954 (=> (not res!44008) (not e!46025))))

(assert (=> b!84954 (= res!44008 (filter_preserves_forall!0 (t!48038 less!2) lambda!10672 p!821))))

(assert (=> b!84954 (= lt!19788 (filter!40 (t!48038 less!2) lambda!10674))))

(assert (=> b!84954 (= lt!19790 (Cons!650 (h!1023 less!2) (filter!40 (t!48038 less!2) lambda!10673)))))

(assert (=> b!84954 (= lt!19789 (filter!40 (t!48038 less!2) lambda!10672))))

(declare-fun d!57131 () Bool)

(assert (=> d!57131 (forall!41 (quickSort!0 less!2) p!821)))

(declare-fun lt!19786 () Bool)

(assert (=> d!57131 (= lt!19786 e!46024)))

(declare-fun res!44009 () Bool)

(assert (=> d!57131 (=> res!44009 e!46024)))

(assert (=> d!57131 (= res!44009 (or (is-Nil!652 less!2) (and (is-Cons!650 less!2) (is-Nil!652 (t!48038 less!2)))))))

(assert (=> d!57131 (forall!41 less!2 p!821)))

(assert (=> d!57131 (= (sort_preserves_forall!0 less!2 p!821) true)))

(declare-fun b!84955 () Bool)

(assert (=> b!84955 (= e!46023 (filter_preserves_forall!0 (t!48038 less!2) lambda!10674 p!821))))

(assert (= (and d!57131 (not res!44009)) b!84954))

(assert (= (and b!84954 res!44008) b!84953))

(assert (= (and b!84954 res!44006) b!84955))

(assert (= (and b!84954 res!44007) b!84951))

(assert (= (and b!84954 res!44010) b!84952))

(declare-fun m!80720 () Bool)

(assert (=> b!84953 m!80720))

(declare-fun m!80722 () Bool)

(assert (=> b!84952 m!80722))

(assert (=> b!84952 m!80722))

(declare-fun m!80724 () Bool)

(assert (=> b!84952 m!80724))

(declare-fun m!80726 () Bool)

(assert (=> b!84952 m!80726))

(assert (=> b!84952 m!80724))

(assert (=> b!84952 m!80726))

(declare-fun m!80728 () Bool)

(assert (=> b!84952 m!80728))

(declare-fun m!80730 () Bool)

(assert (=> b!84955 m!80730))

(declare-fun m!80732 () Bool)

(assert (=> b!84951 m!80732))

(declare-fun m!80734 () Bool)

(assert (=> b!84954 m!80734))

(assert (=> b!84954 m!80722))

(declare-fun m!80736 () Bool)

(assert (=> b!84954 m!80736))

(assert (=> b!84954 m!80722))

(declare-fun m!80738 () Bool)

(assert (=> b!84954 m!80738))

(declare-fun m!80740 () Bool)

(assert (=> b!84954 m!80740))

(declare-fun m!80742 () Bool)

(assert (=> b!84954 m!80742))

(declare-fun m!80744 () Bool)

(assert (=> b!84954 m!80744))

(declare-fun m!80746 () Bool)

(assert (=> d!57131 m!80746))

(assert (=> d!57131 m!80746))

(declare-fun m!80748 () Bool)

(assert (=> d!57131 m!80748))

(declare-fun m!80750 () Bool)

(assert (=> d!57131 m!80750))

(assert (=> b!84935 d!57131))

(declare-fun b!84970 () Bool)

(declare-fun e!46034 () List!693)

(declare-fun lt!19796 () List!693)

(assert (=> b!84970 (= e!46034 (Cons!650 (h!1023 (t!48038 ls!77)) lt!19796))))

(declare-fun b!84971 () Bool)

(declare-fun e!46037 () Bool)

(declare-fun lt!19795 () List!693)

(assert (=> b!84971 (= e!46037 (forall!41 lt!19795 lambda!10658))))

(declare-fun b!84972 () Bool)

(assert (=> b!84972 (= e!46034 lt!19796)))

(declare-fun d!57133 () Bool)

(assert (=> d!57133 e!46037))

(declare-fun res!44022 () Bool)

(assert (=> d!57133 (=> (not res!44022) (not e!46037))))

(declare-fun size!676 (List!693) Int)

(assert (=> d!57133 (= res!44022 (<= (size!676 lt!19795) (size!676 (t!48038 ls!77))))))

(declare-fun e!46035 () List!693)

(assert (=> d!57133 (= lt!19795 e!46035)))

(declare-fun c!21146 () Bool)

(assert (=> d!57133 (= c!21146 (is-Nil!652 (t!48038 ls!77)))))

(assert (=> d!57133 (= (filter!40 (t!48038 ls!77) lambda!10658) lt!19795)))

(declare-fun b!84973 () Bool)

(declare-fun e!46036 () Bool)

(declare-fun dynLambda!1005 (Int Int) Bool)

(assert (=> b!84973 (= e!46036 (dynLambda!1005 lambda!10658 (h!1023 (t!48038 ls!77))))))

(declare-fun b!84974 () Bool)

(assert (=> b!84974 (= e!46035 Nil!652)))

(declare-fun b!84975 () Bool)

(declare-fun res!44021 () Bool)

(assert (=> b!84975 (=> (not res!44021) (not e!46037))))

(declare-fun content!147 (List!693) (Set Int))

(assert (=> b!84975 (= res!44021 (subset (content!147 lt!19795) (content!147 (t!48038 ls!77))))))

(declare-fun b!84976 () Bool)

(assert (=> b!84976 (= e!46035 e!46034)))

(declare-fun c!21147 () Bool)

(assert (=> b!84976 (= c!21147 e!46036)))

(declare-fun res!44023 () Bool)

(assert (=> b!84976 (=> (not res!44023) (not e!46036))))

(assert (=> b!84976 (= res!44023 (is-Cons!650 (t!48038 ls!77)))))

(assert (=> b!84976 (= lt!19796 (filter!40 (t!48038 (t!48038 ls!77)) lambda!10658))))

(assert (= (and b!84976 res!44023) b!84973))

(assert (= (and b!84976 c!21147) b!84970))

(assert (= (and b!84976 (not c!21147)) b!84972))

(assert (= (and d!57133 c!21146) b!84974))

(assert (= (and d!57133 (not c!21146)) b!84976))

(assert (= (and d!57133 res!44022) b!84975))

(assert (= (and b!84975 res!44021) b!84971))

(declare-fun b_lambda!16691 () Bool)

(assert (=> (not b_lambda!16691) (not b!84973)))

(declare-fun m!80752 () Bool)

(assert (=> b!84973 m!80752))

(declare-fun m!80754 () Bool)

(assert (=> d!57133 m!80754))

(declare-fun m!80756 () Bool)

(assert (=> d!57133 m!80756))

(declare-fun m!80758 () Bool)

(assert (=> b!84976 m!80758))

(declare-fun m!80760 () Bool)

(assert (=> b!84971 m!80760))

(declare-fun m!80762 () Bool)

(assert (=> b!84975 m!80762))

(declare-fun m!80764 () Bool)

(assert (=> b!84975 m!80764))

(assert (=> b!84932 d!57133))

(declare-fun d!57135 () Bool)

(declare-fun e!46040 () Bool)

(assert (=> d!57135 e!46040))

(declare-fun c!21150 () Bool)

(assert (=> d!57135 (= c!21150 (is-Cons!650 (t!48038 ls!77)))))

(assert (=> d!57135 (forall!41 (t!48038 ls!77) p!821)))

(assert (=> d!57135 (= (filter_preserves_forall!0 (t!48038 ls!77) lambda!10657 p!821) true)))

(declare-fun b!84981 () Bool)

(assert (=> b!84981 (= e!46040 (forall!41 (filter!40 (t!48038 ls!77) lambda!10657) p!821))))

(declare-fun lt!19799 () Bool)

(assert (=> b!84981 (= lt!19799 (filter_preserves_forall!0 (t!48038 (t!48038 ls!77)) lambda!10657 p!821))))

(declare-fun b!84982 () Bool)

(assert (=> b!84982 (= e!46040 (forall!41 (filter!40 (t!48038 ls!77) lambda!10657) p!821))))

(assert (= (and d!57135 c!21150) b!84981))

(assert (= (and d!57135 (not c!21150)) b!84982))

(declare-fun m!80766 () Bool)

(assert (=> d!57135 m!80766))

(assert (=> b!84981 m!80704))

(assert (=> b!84981 m!80704))

(declare-fun m!80768 () Bool)

(assert (=> b!84981 m!80768))

(declare-fun m!80770 () Bool)

(assert (=> b!84981 m!80770))

(assert (=> b!84982 m!80704))

(assert (=> b!84982 m!80704))

(assert (=> b!84982 m!80768))

(assert (=> b!84928 d!57135))

(declare-fun d!57137 () Bool)

(declare-fun res!44028 () Bool)

(declare-fun e!46045 () Bool)

(assert (=> d!57137 (=> res!44028 e!46045)))

(assert (=> d!57137 (= res!44028 (is-Nil!652 ls!77))))

(assert (=> d!57137 (= (forall!41 ls!77 p!821) e!46045)))

(declare-fun b!84987 () Bool)

(declare-fun e!46046 () Bool)

(assert (=> b!84987 (= e!46045 e!46046)))

(declare-fun res!44029 () Bool)

(assert (=> b!84987 (=> (not res!44029) (not e!46046))))

(assert (=> b!84987 (= res!44029 (dynLambda!1005 p!821 (h!1023 ls!77)))))

(declare-fun b!84988 () Bool)

(assert (=> b!84988 (= e!46046 (forall!41 (t!48038 ls!77) p!821))))

(assert (= (and d!57137 (not res!44028)) b!84987))

(assert (= (and b!84987 res!44029) b!84988))

(declare-fun b_lambda!16693 () Bool)

(assert (=> (not b_lambda!16693) (not b!84987)))

(declare-fun t!48045 () Bool)

(declare-fun tb!46287 () Bool)

(assert (=> (and start!11098 (= p!821 p!821) t!48045) tb!46287))

(declare-fun result!46717 () Bool)

(assert (=> tb!46287 (= result!46717 true)))

(assert (=> b!84987 t!48045))

(declare-fun b_and!59005 () Bool)

(assert (= b_and!59003 (and (=> t!48045 result!46717) b_and!59005)))

(declare-fun m!80772 () Bool)

(assert (=> b!84987 m!80772))

(assert (=> b!84988 m!80766))

(assert (=> start!11098 d!57137))

(declare-fun b!84989 () Bool)

(declare-fun e!46047 () List!693)

(declare-fun lt!19801 () List!693)

(assert (=> b!84989 (= e!46047 (Cons!650 (h!1023 (t!48038 ls!77)) lt!19801))))

(declare-fun b!84990 () Bool)

(declare-fun e!46050 () Bool)

(declare-fun lt!19800 () List!693)

(assert (=> b!84990 (= e!46050 (forall!41 lt!19800 lambda!10657))))

(declare-fun b!84991 () Bool)

(assert (=> b!84991 (= e!46047 lt!19801)))

(declare-fun d!57139 () Bool)

(assert (=> d!57139 e!46050))

(declare-fun res!44031 () Bool)

(assert (=> d!57139 (=> (not res!44031) (not e!46050))))

(assert (=> d!57139 (= res!44031 (<= (size!676 lt!19800) (size!676 (t!48038 ls!77))))))

(declare-fun e!46048 () List!693)

(assert (=> d!57139 (= lt!19800 e!46048)))

(declare-fun c!21151 () Bool)

(assert (=> d!57139 (= c!21151 (is-Nil!652 (t!48038 ls!77)))))

(assert (=> d!57139 (= (filter!40 (t!48038 ls!77) lambda!10657) lt!19800)))

(declare-fun b!84992 () Bool)

(declare-fun e!46049 () Bool)

(assert (=> b!84992 (= e!46049 (dynLambda!1005 lambda!10657 (h!1023 (t!48038 ls!77))))))

(declare-fun b!84993 () Bool)

(assert (=> b!84993 (= e!46048 Nil!652)))

(declare-fun b!84994 () Bool)

(declare-fun res!44030 () Bool)

(assert (=> b!84994 (=> (not res!44030) (not e!46050))))

(assert (=> b!84994 (= res!44030 (subset (content!147 lt!19800) (content!147 (t!48038 ls!77))))))

(declare-fun b!84995 () Bool)

(assert (=> b!84995 (= e!46048 e!46047)))

(declare-fun c!21152 () Bool)

(assert (=> b!84995 (= c!21152 e!46049)))

(declare-fun res!44032 () Bool)

(assert (=> b!84995 (=> (not res!44032) (not e!46049))))

(assert (=> b!84995 (= res!44032 (is-Cons!650 (t!48038 ls!77)))))

(assert (=> b!84995 (= lt!19801 (filter!40 (t!48038 (t!48038 ls!77)) lambda!10657))))

(assert (= (and b!84995 res!44032) b!84992))

(assert (= (and b!84995 c!21152) b!84989))

(assert (= (and b!84995 (not c!21152)) b!84991))

(assert (= (and d!57139 c!21151) b!84993))

(assert (= (and d!57139 (not c!21151)) b!84995))

(assert (= (and d!57139 res!44031) b!84994))

(assert (= (and b!84994 res!44030) b!84990))

(declare-fun b_lambda!16695 () Bool)

(assert (=> (not b_lambda!16695) (not b!84992)))

(declare-fun m!80774 () Bool)

(assert (=> b!84992 m!80774))

(declare-fun m!80776 () Bool)

(assert (=> d!57139 m!80776))

(assert (=> d!57139 m!80756))

(declare-fun m!80778 () Bool)

(assert (=> b!84995 m!80778))

(declare-fun m!80780 () Bool)

(assert (=> b!84990 m!80780))

(declare-fun m!80782 () Bool)

(assert (=> b!84994 m!80782))

(assert (=> b!84994 m!80764))

(assert (=> b!84927 d!57139))

(declare-fun b!84996 () Bool)

(declare-fun e!46051 () List!693)

(declare-fun lt!19803 () List!693)

(assert (=> b!84996 (= e!46051 (Cons!650 (h!1023 (t!48038 ls!77)) lt!19803))))

(declare-fun b!84997 () Bool)

(declare-fun e!46054 () Bool)

(declare-fun lt!19802 () List!693)

(assert (=> b!84997 (= e!46054 (forall!41 lt!19802 lambda!10659))))

(declare-fun b!84998 () Bool)

(assert (=> b!84998 (= e!46051 lt!19803)))

(declare-fun d!57141 () Bool)

(assert (=> d!57141 e!46054))

(declare-fun res!44034 () Bool)

(assert (=> d!57141 (=> (not res!44034) (not e!46054))))

(assert (=> d!57141 (= res!44034 (<= (size!676 lt!19802) (size!676 (t!48038 ls!77))))))

(declare-fun e!46052 () List!693)

(assert (=> d!57141 (= lt!19802 e!46052)))

(declare-fun c!21153 () Bool)

(assert (=> d!57141 (= c!21153 (is-Nil!652 (t!48038 ls!77)))))

(assert (=> d!57141 (= (filter!40 (t!48038 ls!77) lambda!10659) lt!19802)))

(declare-fun b!84999 () Bool)

(declare-fun e!46053 () Bool)

(assert (=> b!84999 (= e!46053 (dynLambda!1005 lambda!10659 (h!1023 (t!48038 ls!77))))))

(declare-fun b!85000 () Bool)

(assert (=> b!85000 (= e!46052 Nil!652)))

(declare-fun b!85001 () Bool)

(declare-fun res!44033 () Bool)

(assert (=> b!85001 (=> (not res!44033) (not e!46054))))

(assert (=> b!85001 (= res!44033 (subset (content!147 lt!19802) (content!147 (t!48038 ls!77))))))

(declare-fun b!85002 () Bool)

(assert (=> b!85002 (= e!46052 e!46051)))

(declare-fun c!21154 () Bool)

(assert (=> b!85002 (= c!21154 e!46053)))

(declare-fun res!44035 () Bool)

(assert (=> b!85002 (=> (not res!44035) (not e!46053))))

(assert (=> b!85002 (= res!44035 (is-Cons!650 (t!48038 ls!77)))))

(assert (=> b!85002 (= lt!19803 (filter!40 (t!48038 (t!48038 ls!77)) lambda!10659))))

(assert (= (and b!85002 res!44035) b!84999))

(assert (= (and b!85002 c!21154) b!84996))

(assert (= (and b!85002 (not c!21154)) b!84998))

(assert (= (and d!57141 c!21153) b!85000))

(assert (= (and d!57141 (not c!21153)) b!85002))

(assert (= (and d!57141 res!44034) b!85001))

(assert (= (and b!85001 res!44033) b!84997))

(declare-fun b_lambda!16697 () Bool)

(assert (=> (not b_lambda!16697) (not b!84999)))

(declare-fun m!80784 () Bool)

(assert (=> b!84999 m!80784))

(declare-fun m!80786 () Bool)

(assert (=> d!57141 m!80786))

(assert (=> d!57141 m!80756))

(declare-fun m!80788 () Bool)

(assert (=> b!85002 m!80788))

(declare-fun m!80790 () Bool)

(assert (=> b!84997 m!80790))

(declare-fun m!80792 () Bool)

(assert (=> b!85001 m!80792))

(assert (=> b!85001 m!80764))

(assert (=> b!84931 d!57141))

(declare-fun d!57143 () Bool)

(declare-fun e!46055 () Bool)

(assert (=> d!57143 e!46055))

(declare-fun c!21155 () Bool)

(assert (=> d!57143 (= c!21155 (is-Cons!650 (t!48038 ls!77)))))

(assert (=> d!57143 (forall!41 (t!48038 ls!77) p!821)))

(assert (=> d!57143 (= (filter_preserves_forall!0 (t!48038 ls!77) lambda!10659 p!821) true)))

(declare-fun b!85003 () Bool)

(assert (=> b!85003 (= e!46055 (forall!41 (filter!40 (t!48038 ls!77) lambda!10659) p!821))))

(declare-fun lt!19804 () Bool)

(assert (=> b!85003 (= lt!19804 (filter_preserves_forall!0 (t!48038 (t!48038 ls!77)) lambda!10659 p!821))))

(declare-fun b!85004 () Bool)

(assert (=> b!85004 (= e!46055 (forall!41 (filter!40 (t!48038 ls!77) lambda!10659) p!821))))

(assert (= (and d!57143 c!21155) b!85003))

(assert (= (and d!57143 (not c!21155)) b!85004))

(assert (=> d!57143 m!80766))

(assert (=> b!85003 m!80716))

(assert (=> b!85003 m!80716))

(declare-fun m!80794 () Bool)

(assert (=> b!85003 m!80794))

(declare-fun m!80796 () Bool)

(assert (=> b!85003 m!80796))

(assert (=> b!85004 m!80716))

(assert (=> b!85004 m!80716))

(assert (=> b!85004 m!80794))

(assert (=> b!84926 d!57143))

(declare-fun bs!40941 () Bool)

(declare-fun b!85008 () Bool)

(assert (= bs!40941 (and b!85008 b!84927)))

(declare-fun lambda!10675 () Int)

(assert (=> bs!40941 (= (= (h!1023 more!2) (h!1023 ls!77)) (= lambda!10675 lambda!10657))))

(declare-fun bs!40942 () Bool)

(assert (= bs!40942 (and b!85008 b!84931)))

(assert (=> bs!40942 (not (= lambda!10675 lambda!10659))))

(declare-fun bs!40943 () Bool)

(assert (= bs!40943 (and b!85008 b!84954)))

(assert (=> bs!40943 (not (= lambda!10675 lambda!10674))))

(assert (=> bs!40943 (not (= lambda!10675 lambda!10673))))

(assert (=> bs!40943 (= (= (h!1023 more!2) (h!1023 less!2)) (= lambda!10675 lambda!10672))))

(declare-fun bs!40944 () Bool)

(assert (= bs!40944 (and b!85008 b!84932)))

(assert (=> bs!40944 (not (= lambda!10675 lambda!10658))))

(assert (=> b!85008 true))

(declare-fun b_next!39535 () Bool)

(assert (=> start!11098 (= b_next!39533 (or (and b!85008 (= lambda!10675 p!821)) b_next!39535))))

(declare-fun lambda!10676 () Int)

(assert (=> bs!40941 (not (= lambda!10676 lambda!10657))))

(assert (=> bs!40942 (not (= lambda!10676 lambda!10659))))

(assert (=> bs!40943 (not (= lambda!10676 lambda!10674))))

(assert (=> bs!40943 (= (= (h!1023 more!2) (h!1023 less!2)) (= lambda!10676 lambda!10673))))

(assert (=> bs!40943 (not (= lambda!10676 lambda!10672))))

(assert (=> b!85008 (not (= lambda!10676 lambda!10675))))

(assert (=> bs!40944 (= (= (h!1023 more!2) (h!1023 ls!77)) (= lambda!10676 lambda!10658))))

(assert (=> b!85008 true))

(declare-fun b_next!39537 () Bool)

(assert (=> start!11098 (= b_next!39535 (or (and b!85008 (= lambda!10676 p!821)) b_next!39537))))

(declare-fun lambda!10677 () Int)

(assert (=> bs!40941 (not (= lambda!10677 lambda!10657))))

(assert (=> bs!40942 (= (= (h!1023 more!2) (h!1023 ls!77)) (= lambda!10677 lambda!10659))))

(assert (=> bs!40943 (= (= (h!1023 more!2) (h!1023 less!2)) (= lambda!10677 lambda!10674))))

(assert (=> bs!40943 (not (= lambda!10677 lambda!10673))))

(assert (=> bs!40943 (not (= lambda!10677 lambda!10672))))

(assert (=> b!85008 (not (= lambda!10677 lambda!10676))))

(assert (=> b!85008 (not (= lambda!10677 lambda!10675))))

(assert (=> bs!40944 (not (= lambda!10677 lambda!10658))))

(assert (=> b!85008 true))

(declare-fun b_next!39539 () Bool)

(assert (=> start!11098 (= b_next!39537 (or (and b!85008 (= lambda!10677 p!821)) b_next!39539))))

(declare-fun b!85005 () Bool)

(declare-fun e!46056 () Bool)

(declare-fun lt!19808 () List!693)

(assert (=> b!85005 (= e!46056 (sort_preserves_forall!0 lt!19808 p!821))))

(declare-fun b!85006 () Bool)

(declare-fun lt!19810 () List!693)

(declare-fun lt!19809 () List!693)

(declare-fun e!46057 () Bool)

(assert (=> b!85006 (= e!46057 (append_preserves_forall!0 (++!91 (quickSort!0 lt!19809) lt!19810) (quickSort!0 lt!19808) p!821))))

(declare-fun e!46060 () Bool)

(declare-fun b!85007 () Bool)

(assert (=> b!85007 (= e!46060 (filter_preserves_forall!0 (t!48038 more!2) lambda!10676 p!821))))

(declare-fun e!46059 () Bool)

(assert (=> b!85008 (= e!46059 e!46057)))

(declare-fun res!44040 () Bool)

(assert (=> b!85008 (=> (not res!44040) (not e!46057))))

(assert (=> b!85008 (= res!44040 (append_preserves_forall!0 (quickSort!0 lt!19809) lt!19810 p!821))))

(declare-fun lt!19807 () Bool)

(assert (=> b!85008 (= lt!19807 e!46056)))

(declare-fun res!44037 () Bool)

(assert (=> b!85008 (=> (not res!44037) (not e!46056))))

(assert (=> b!85008 (= res!44037 (sort_preserves_forall!0 lt!19809 p!821))))

(declare-fun lt!19805 () Bool)

(declare-fun e!46058 () Bool)

(assert (=> b!85008 (= lt!19805 e!46058)))

(declare-fun res!44036 () Bool)

(assert (=> b!85008 (=> (not res!44036) (not e!46058))))

(assert (=> b!85008 (= res!44036 e!46060)))

(declare-fun res!44038 () Bool)

(assert (=> b!85008 (=> (not res!44038) (not e!46060))))

(assert (=> b!85008 (= res!44038 (filter_preserves_forall!0 (t!48038 more!2) lambda!10675 p!821))))

(assert (=> b!85008 (= lt!19808 (filter!40 (t!48038 more!2) lambda!10677))))

(assert (=> b!85008 (= lt!19810 (Cons!650 (h!1023 more!2) (filter!40 (t!48038 more!2) lambda!10676)))))

(assert (=> b!85008 (= lt!19809 (filter!40 (t!48038 more!2) lambda!10675))))

(declare-fun d!57145 () Bool)

(assert (=> d!57145 (forall!41 (quickSort!0 more!2) p!821)))

(declare-fun lt!19806 () Bool)

(assert (=> d!57145 (= lt!19806 e!46059)))

(declare-fun res!44039 () Bool)

(assert (=> d!57145 (=> res!44039 e!46059)))

(assert (=> d!57145 (= res!44039 (or (is-Nil!652 more!2) (and (is-Cons!650 more!2) (is-Nil!652 (t!48038 more!2)))))))

(assert (=> d!57145 (forall!41 more!2 p!821)))

(assert (=> d!57145 (= (sort_preserves_forall!0 more!2 p!821) true)))

(declare-fun b!85009 () Bool)

(assert (=> b!85009 (= e!46058 (filter_preserves_forall!0 (t!48038 more!2) lambda!10677 p!821))))

(assert (= (and d!57145 (not res!44039)) b!85008))

(assert (= (and b!85008 res!44038) b!85007))

(assert (= (and b!85008 res!44036) b!85009))

(assert (= (and b!85008 res!44037) b!85005))

(assert (= (and b!85008 res!44040) b!85006))

(declare-fun m!80798 () Bool)

(assert (=> b!85007 m!80798))

(declare-fun m!80800 () Bool)

(assert (=> b!85006 m!80800))

(assert (=> b!85006 m!80800))

(declare-fun m!80802 () Bool)

(assert (=> b!85006 m!80802))

(declare-fun m!80804 () Bool)

(assert (=> b!85006 m!80804))

(assert (=> b!85006 m!80802))

(assert (=> b!85006 m!80804))

(declare-fun m!80806 () Bool)

(assert (=> b!85006 m!80806))

(declare-fun m!80808 () Bool)

(assert (=> b!85009 m!80808))

(declare-fun m!80810 () Bool)

(assert (=> b!85005 m!80810))

(declare-fun m!80812 () Bool)

(assert (=> b!85008 m!80812))

(assert (=> b!85008 m!80800))

(declare-fun m!80814 () Bool)

(assert (=> b!85008 m!80814))

(assert (=> b!85008 m!80800))

(declare-fun m!80816 () Bool)

(assert (=> b!85008 m!80816))

(declare-fun m!80818 () Bool)

(assert (=> b!85008 m!80818))

(declare-fun m!80820 () Bool)

(assert (=> b!85008 m!80820))

(declare-fun m!80822 () Bool)

(assert (=> b!85008 m!80822))

(declare-fun m!80824 () Bool)

(assert (=> d!57145 m!80824))

(assert (=> d!57145 m!80824))

(declare-fun m!80826 () Bool)

(assert (=> d!57145 m!80826))

(declare-fun m!80828 () Bool)

(assert (=> d!57145 m!80828))

(assert (=> b!84930 d!57145))

(declare-fun d!57147 () Bool)

(declare-fun e!46061 () Bool)

(assert (=> d!57147 e!46061))

(declare-fun c!21156 () Bool)

(assert (=> d!57147 (= c!21156 (is-Cons!650 (t!48038 ls!77)))))

(assert (=> d!57147 (forall!41 (t!48038 ls!77) p!821)))

(assert (=> d!57147 (= (filter_preserves_forall!0 (t!48038 ls!77) lambda!10658 p!821) true)))

(declare-fun b!85010 () Bool)

(assert (=> b!85010 (= e!46061 (forall!41 (filter!40 (t!48038 ls!77) lambda!10658) p!821))))

(declare-fun lt!19811 () Bool)

(assert (=> b!85010 (= lt!19811 (filter_preserves_forall!0 (t!48038 (t!48038 ls!77)) lambda!10658 p!821))))

(declare-fun b!85011 () Bool)

(assert (=> b!85011 (= e!46061 (forall!41 (filter!40 (t!48038 ls!77) lambda!10658) p!821))))

(assert (= (and d!57147 c!21156) b!85010))

(assert (= (and d!57147 (not c!21156)) b!85011))

(assert (=> d!57147 m!80766))

(assert (=> b!85010 m!80714))

(assert (=> b!85010 m!80714))

(declare-fun m!80830 () Bool)

(assert (=> b!85010 m!80830))

(declare-fun m!80832 () Bool)

(assert (=> b!85010 m!80832))

(assert (=> b!85011 m!80714))

(assert (=> b!85011 m!80714))

(assert (=> b!85011 m!80830))

(assert (=> b!84937 d!57147))

(declare-fun b_lambda!16699 () Bool)

(assert (= b_lambda!16693 (or (and b!84954 (= lambda!10673 p!821)) (and b!84927 (= lambda!10657 p!821)) (and b!84954 (= lambda!10672 p!821)) (and b!84931 (= lambda!10659 p!821)) (and b!85008 (= lambda!10676 p!821)) (and b!84954 (= lambda!10674 p!821)) (and b!85008 (= lambda!10675 p!821)) (and b!84932 (= lambda!10658 p!821)) (and start!11098 b_free!7395) (and b!85008 (= lambda!10677 p!821)) b_lambda!16699)))

(declare-fun bs!40945 () Bool)

(declare-fun d!57149 () Bool)

(assert (= bs!40945 (and d!57149 b!84954)))

(assert (=> bs!40945 (= (dynLambda!1005 lambda!10672 (h!1023 ls!77)) (< (h!1023 ls!77) (h!1023 less!2)))))

(assert (=> (and b!84954 (= lambda!10672 p!821) b!84987) d!57149))

(declare-fun bs!40946 () Bool)

(declare-fun d!57151 () Bool)

(assert (= bs!40946 (and d!57151 b!84927)))

(assert (=> bs!40946 (= (dynLambda!1005 lambda!10657 (h!1023 ls!77)) (< (h!1023 ls!77) (h!1023 ls!77)))))

(assert (=> (and b!84927 (= lambda!10657 p!821) b!84987) d!57151))

(declare-fun bs!40947 () Bool)

(declare-fun d!57153 () Bool)

(assert (= bs!40947 (and d!57153 b!85008)))

(assert (=> bs!40947 (= (dynLambda!1005 lambda!10675 (h!1023 ls!77)) (< (h!1023 ls!77) (h!1023 more!2)))))

(assert (=> (and b!85008 (= lambda!10675 p!821) b!84987) d!57153))

(declare-fun bs!40948 () Bool)

(declare-fun d!57155 () Bool)

(assert (= bs!40948 (and d!57155 b!84931)))

(assert (=> bs!40948 (= (dynLambda!1005 lambda!10659 (h!1023 ls!77)) (> (h!1023 ls!77) (h!1023 ls!77)))))

(assert (=> (and b!84931 (= lambda!10659 p!821) b!84987) d!57155))

(declare-fun bs!40949 () Bool)

(declare-fun d!57157 () Bool)

(assert (= bs!40949 (and d!57157 b!84954)))

(assert (=> bs!40949 (= (dynLambda!1005 lambda!10673 (h!1023 ls!77)) (= (h!1023 ls!77) (h!1023 less!2)))))

(assert (=> (and b!84954 (= lambda!10673 p!821) b!84987) d!57157))

(declare-fun bs!40950 () Bool)

(declare-fun d!57159 () Bool)

(assert (= bs!40950 (and d!57159 b!85008)))

(assert (=> bs!40950 (= (dynLambda!1005 lambda!10676 (h!1023 ls!77)) (= (h!1023 ls!77) (h!1023 more!2)))))

(assert (=> (and b!85008 (= lambda!10676 p!821) b!84987) d!57159))

(declare-fun bs!40951 () Bool)

(declare-fun d!57161 () Bool)

(assert (= bs!40951 (and d!57161 b!84932)))

(assert (=> bs!40951 (= (dynLambda!1005 lambda!10658 (h!1023 ls!77)) (= (h!1023 ls!77) (h!1023 ls!77)))))

(assert (=> (and b!84932 (= lambda!10658 p!821) b!84987) d!57161))

(declare-fun bs!40952 () Bool)

(declare-fun d!57163 () Bool)

(assert (= bs!40952 (and d!57163 b!85008)))

(assert (=> bs!40952 (= (dynLambda!1005 lambda!10677 (h!1023 ls!77)) (> (h!1023 ls!77) (h!1023 more!2)))))

(assert (=> (and b!85008 (= lambda!10677 p!821) b!84987) d!57163))

(declare-fun bs!40953 () Bool)

(declare-fun d!57165 () Bool)

(assert (= bs!40953 (and d!57165 b!84954)))

(assert (=> bs!40953 (= (dynLambda!1005 lambda!10674 (h!1023 ls!77)) (> (h!1023 ls!77) (h!1023 less!2)))))

(assert (=> (and b!84954 (= lambda!10674 p!821) b!84987) d!57165))

(declare-fun b_lambda!16701 () Bool)

(assert (= b_lambda!16695 (or b!84927 b_lambda!16701)))

(declare-fun bs!40954 () Bool)

(declare-fun d!57167 () Bool)

(assert (= bs!40954 (and d!57167 b!84927)))

(assert (=> bs!40954 (= (dynLambda!1005 lambda!10657 (h!1023 (t!48038 ls!77))) (< (h!1023 (t!48038 ls!77)) (h!1023 ls!77)))))

(assert (=> b!84992 d!57167))

(declare-fun b_lambda!16703 () Bool)

(assert (= b_lambda!16691 (or b!84932 b_lambda!16703)))

(declare-fun bs!40955 () Bool)

(declare-fun d!57169 () Bool)

(assert (= bs!40955 (and d!57169 b!84932)))

(assert (=> bs!40955 (= (dynLambda!1005 lambda!10658 (h!1023 (t!48038 ls!77))) (= (h!1023 (t!48038 ls!77)) (h!1023 ls!77)))))

(assert (=> b!84973 d!57169))

(declare-fun b_lambda!16705 () Bool)

(assert (= b_lambda!16697 (or b!84931 b_lambda!16705)))

(declare-fun bs!40956 () Bool)

(declare-fun d!57171 () Bool)

(assert (= bs!40956 (and d!57171 b!84931)))

(assert (=> bs!40956 (= (dynLambda!1005 lambda!10659 (h!1023 (t!48038 ls!77))) (> (h!1023 (t!48038 ls!77)) (h!1023 ls!77)))))

(assert (=> b!84999 d!57171))

(push 1)

(assert (not b!84976))

(assert (not b_lambda!16701))

(assert (not b!84982))

(assert (not b!84981))

(assert (not b!84952))

(assert (not b!84954))

(assert (not b!84988))

(assert (not b!85003))

(assert (not d!57139))

(assert (not b!84994))

(assert (not b!84997))

(assert (not b!84995))

(assert (not d!57131))

(assert (not b!84990))

(assert (not d!57143))

(assert (not d!57147))

(assert (not b_lambda!16703))

(assert (not b!84953))

(assert (not b!85006))

(assert (not b!85002))

(assert b_and!59005)

(assert (not b!85011))

(assert (not b!84975))

(assert (not b_next!39539))

(assert (not b!84955))

(assert (not b!85010))

(assert (not b_lambda!16705))

(assert (not b!84971))

(assert (not b_lambda!16699))

(assert (not b!85004))

(assert (not d!57141))

(assert (not b!84951))

(assert (not b!85001))

(assert (not d!57135))

(assert (not d!57133))

(assert (not b!85007))

(assert (not b!85009))

(assert (not d!57145))

(assert (not b!85005))

(assert (not b!85008))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59005)

(assert (not b_next!39539))

(check-sat)

(pop 1)

