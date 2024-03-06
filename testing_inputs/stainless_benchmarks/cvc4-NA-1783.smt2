; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12176 () Bool)

(assert start!12176)

(declare-fun b!90978 () Bool)

(declare-fun b_free!7685 () Bool)

(declare-fun b_next!40073 () Bool)

(assert (=> b!90978 (= b_free!7685 (not b_next!40073))))

(declare-fun tp!17944 () Bool)

(declare-fun b_and!60803 () Bool)

(assert (=> b!90978 (= tp!17944 b_and!60803)))

(declare-fun b_free!7687 () Bool)

(declare-fun b_next!40075 () Bool)

(assert (=> b!90978 (= b_free!7687 (not b_next!40075))))

(declare-fun tp!17946 () Bool)

(declare-fun b_and!60805 () Bool)

(assert (=> b!90978 (= tp!17946 b_and!60805)))

(declare-fun b_free!7689 () Bool)

(declare-fun b_next!40077 () Bool)

(assert (=> b!90978 (= b_free!7689 (not b_next!40077))))

(declare-fun tp!17943 () Bool)

(declare-fun b_and!60807 () Bool)

(assert (=> b!90978 (= tp!17943 b_and!60807)))

(declare-fun b!90975 () Bool)

(declare-fun res!47741 () Bool)

(declare-fun e!49718 () Bool)

(assert (=> b!90975 (=> res!47741 e!49718)))

(declare-datatypes () ((B!692 (B!693 (val!235 Int)))))

(declare-datatypes () ((List!773 (Cons!722 (h!1148 B!692) (t!49062 List!773)) (Nil!724))))

(declare-fun res!47667 () List!773)

(declare-fun x!32491 () B!692)

(declare-fun contains!68 (List!773 B!692) Bool)

(assert (=> b!90975 (= res!47741 (not (contains!68 res!47667 x!32491)))))

(declare-fun inst!503 () Bool)

(declare-fun tp_is_empty!475 () Bool)

(assert (=> b!90975 (= inst!503 (=> tp_is_empty!475 e!49718))))

(declare-fun b!90980 () Bool)

(declare-datatypes () ((A!3917 (A!3918 (val!236 Int)))))

(declare-datatypes () ((~>>!25 (~>>!26 (pre!34 Int) (f!5188 Int) (post!22 Int)))))

(declare-fun f!5180 () ~>>!25)

(declare-fun dynLambda!1120 (Int B!692) Bool)

(assert (=> b!90980 (= e!49718 (dynLambda!1120 (post!22 f!5180) x!32491))))

(assert (= (and b!90975 (not res!47741)) b!90980))

(declare-fun b_lambda!18529 () Bool)

(assert (=> (not b_lambda!18529) (not b!90980)))

(declare-fun t!49061 () Bool)

(declare-fun tb!46825 () Bool)

(assert (=> (and b!90978 (= (post!22 f!5180) (post!22 f!5180)) t!49061) tb!46825))

(declare-fun result!47345 () Bool)

(assert (=> tb!46825 (= result!47345 true)))

(assert (=> b!90980 t!49061))

(declare-fun b_and!60809 () Bool)

(assert (= b_and!60807 (and (=> t!49061 result!47345) b_and!60809)))

(declare-fun m!86764 () Bool)

(assert (=> b!90975 m!86764))

(declare-fun m!86766 () Bool)

(assert (=> b!90980 m!86766))

(declare-fun b!90976 () Bool)

(declare-fun b!90974 () Bool)

(declare-fun bs!41740 () Bool)

(declare-fun s!2730 () Bool)

(assert (= bs!41740 (and b!90976 b!90975 b!90974 start!12176 s!2730)))

(declare-fun content!179 (List!773) (Set B!692))

(assert (=> bs!41740 (=> true (= (contains!68 res!47667 x!32491) (member x!32491 (content!179 res!47667))))))

(declare-fun m!86768 () Bool)

(assert (=> m!86764 m!86768))

(declare-fun bs!41741 () Bool)

(declare-fun m!86770 () Bool)

(assert (= bs!41741 m!86770))

(assert (=> bs!41741 s!2730))

(assert (=> m!86764 m!86770))

(assert (=> m!86764 s!2730))

(declare-fun res!47739 () Bool)

(declare-fun e!49714 () Bool)

(assert (=> b!90974 (=> (not res!47739) (not e!49714))))

(declare-datatypes () ((List!774 (Cons!723 (h!1149 A!3917) (t!49063 List!774)) (Nil!725))))

(declare-fun l!1713 () List!774)

(declare-fun apply!57 (~>>!25 A!3917) B!692)

(declare-fun map!592 (List!774 ~>>!25) List!773)

(assert (=> b!90974 (= res!47739 (= res!47667 (Cons!722 (apply!57 f!5180 (h!1149 l!1713)) (map!592 (t!49063 l!1713) f!5180))))))

(assert (=> b!90975 (= e!49714 (not inst!503))))

(assert (=> b!90975 true))

(declare-fun res!47738 () Bool)

(assert (=> start!12176 (=> (not res!47738) (not e!49714))))

(assert (=> start!12176 (= res!47738 true)))

(assert (=> start!12176 true))

(assert (=> start!12176 e!49714))

(declare-fun e!49717 () Bool)

(assert (=> start!12176 e!49717))

(declare-fun e!49715 () Bool)

(assert (=> start!12176 e!49715))

(declare-fun e!49716 () Bool)

(assert (=> start!12176 e!49716))

(declare-fun res!47740 () Bool)

(assert (=> b!90976 (=> (not res!47740) (not e!49714))))

(assert (=> b!90976 (= res!47740 (is-Cons!723 l!1713))))

(declare-fun b!90977 () Bool)

(declare-fun tp!17945 () Bool)

(assert (=> b!90977 (= e!49716 (and tp_is_empty!475 tp!17945))))

(assert (=> b!90978 (= e!49715 (and tp!17944 tp!17946 tp!17943))))

(declare-fun b!90979 () Bool)

(declare-fun tp_is_empty!477 () Bool)

(declare-fun tp!17942 () Bool)

(assert (=> b!90979 (= e!49717 (and tp_is_empty!477 tp!17942))))

(assert (= (and start!12176 res!47738) b!90976))

(assert (= (and b!90976 res!47740) b!90974))

(assert (= (and b!90974 res!47739) b!90975))

(assert (= (and start!12176 (is-Cons!723 l!1713)) b!90979))

(assert (= start!12176 b!90978))

(assert (= (and start!12176 (is-Cons!722 res!47667)) b!90977))

(declare-fun m!86772 () Bool)

(assert (=> b!90974 m!86772))

(declare-fun m!86774 () Bool)

(assert (=> b!90974 m!86774))

(push 1)

(assert b_and!60803)

(assert (not bs!41740))

(assert (not b!90974))

(assert (not b!90975))

(assert (not b_lambda!18529))

(assert (not b_next!40075))

(assert b_and!60805)

(assert (not b_next!40073))

(assert b_and!60809)

(assert tp_is_empty!475)

(assert (not b_next!40077))

(assert tp_is_empty!477)

(assert (not b!90979))

(assert (not b!90977))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60803)

(assert (not b_next!40075))

(assert b_and!60805)

(assert (not b_next!40073))

(assert b_and!60809)

(assert (not b_next!40077))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18531 () Bool)

(assert (= b_lambda!18529 (or (and b!90978 b_free!7689) b_lambda!18531)))

(push 1)

(assert b_and!60803)

(assert (not bs!41740))

(assert (not b!90974))

(assert (not b!90975))

(assert (not b_next!40075))

(assert b_and!60805)

(assert (not b_next!40073))

(assert (not b_lambda!18531))

(assert b_and!60809)

(assert tp_is_empty!475)

(assert (not b_next!40077))

(assert tp_is_empty!477)

(assert (not b!90979))

(assert (not b!90977))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60803)

(assert (not b_next!40075))

(assert b_and!60805)

(assert (not b_next!40073))

(assert b_and!60809)

(assert (not b_next!40077))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59768 () Bool)

(declare-fun lt!20533 () B!692)

(assert (=> d!59768 (dynLambda!1120 (post!22 f!5180) lt!20533)))

(declare-fun dynLambda!1121 (Int A!3917) B!692)

(assert (=> d!59768 (= lt!20533 (dynLambda!1121 (f!5188 f!5180) (h!1149 l!1713)))))

(declare-fun dynLambda!1122 (Int A!3917) Bool)

(assert (=> d!59768 (dynLambda!1122 (pre!34 f!5180) (h!1149 l!1713))))

(assert (=> d!59768 (= (apply!57 f!5180 (h!1149 l!1713)) lt!20533)))

(declare-fun b_lambda!18533 () Bool)

(assert (=> (not b_lambda!18533) (not d!59768)))

(declare-fun t!49065 () Bool)

(declare-fun tb!46827 () Bool)

(assert (=> (and b!90978 (= (post!22 f!5180) (post!22 f!5180)) t!49065) tb!46827))

(declare-fun result!47347 () Bool)

(assert (=> tb!46827 (= result!47347 true)))

(assert (=> d!59768 t!49065))

(declare-fun b_and!60811 () Bool)

(assert (= b_and!60809 (and (=> t!49065 result!47347) b_and!60811)))

(declare-fun b_lambda!18535 () Bool)

(assert (=> (not b_lambda!18535) (not d!59768)))

(declare-fun t!49067 () Bool)

(declare-fun tb!46829 () Bool)

(assert (=> (and b!90978 (= (f!5188 f!5180) (f!5188 f!5180)) t!49067) tb!46829))

(declare-fun result!47349 () Bool)

(assert (=> tb!46829 (= result!47349 tp_is_empty!475)))

(assert (=> d!59768 t!49067))

(declare-fun b_and!60813 () Bool)

(assert (= b_and!60805 (and (=> t!49067 result!47349) b_and!60813)))

(declare-fun b_lambda!18537 () Bool)

(assert (=> (not b_lambda!18537) (not d!59768)))

(declare-fun t!49069 () Bool)

(declare-fun tb!46831 () Bool)

(assert (=> (and b!90978 (= (pre!34 f!5180) (pre!34 f!5180)) t!49069) tb!46831))

(declare-fun result!47353 () Bool)

(assert (=> tb!46831 (= result!47353 true)))

(assert (=> d!59768 t!49069))

(declare-fun b_and!60815 () Bool)

(assert (= b_and!60803 (and (=> t!49069 result!47353) b_and!60815)))

(declare-fun m!86776 () Bool)

(assert (=> d!59768 m!86776))

(declare-fun m!86778 () Bool)

(assert (=> d!59768 m!86778))

(declare-fun bs!41742 () Bool)

(declare-fun s!2732 () Bool)

(assert (= bs!41742 (and start!12176 s!2732)))

(declare-fun res!47743 () Bool)

(declare-fun e!49719 () Bool)

(assert (=> bs!41742 (=> res!47743 e!49719)))

(declare-fun contains!69 (List!774 A!3917) Bool)

(assert (=> bs!41742 (= res!47743 (not (contains!69 l!1713 (h!1149 l!1713))))))

(assert (=> bs!41742 (=> true e!49719)))

(declare-fun b!90983 () Bool)

(assert (=> b!90983 (= e!49719 (dynLambda!1122 (pre!34 f!5180) (h!1149 l!1713)))))

(assert (= (and bs!41742 (not res!47743)) b!90983))

(declare-fun b_lambda!18539 () Bool)

(assert (=> (not b_lambda!18539) (not b!90983)))

(assert (=> b!90983 t!49069))

(declare-fun b_and!60817 () Bool)

(assert (= b_and!60815 (and (=> t!49069 result!47353) b_and!60817)))

(declare-fun bs!41743 () Bool)

(declare-fun s!2734 () Bool)

(assert (= bs!41743 (and start!12176 s!2734)))

(declare-fun content!180 (List!774) (Set A!3917))

(assert (=> bs!41743 (=> true (= (contains!69 l!1713 (h!1149 l!1713)) (member (h!1149 l!1713) (content!180 l!1713))))))

(declare-fun bs!41744 () Bool)

(declare-fun m!86782 () Bool)

(assert (= bs!41744 m!86782))

(declare-fun m!86784 () Bool)

(assert (=> bs!41744 m!86784))

(declare-fun bs!41745 () Bool)

(declare-fun m!86786 () Bool)

(assert (= bs!41745 m!86786))

(assert (=> bs!41745 s!2734))

(assert (=> bs!41744 m!86786))

(assert (=> bs!41744 s!2734))

(assert (=> bs!41744 s!2732))

(declare-fun bs!41746 () Bool)

(declare-fun m!86780 () Bool)

(assert (= bs!41746 m!86780))

(assert (=> bs!41746 m!86782))

(assert (=> bs!41746 s!2732))

(assert (=> d!59768 m!86780))

(assert (=> b!90974 d!59768))

(declare-fun bs!41747 () Bool)

(declare-fun d!59770 () Bool)

(assert (= bs!41747 (and d!59770 start!12176)))

(assert (=> (and bs!41747 (= (t!49063 l!1713) l!1713)) (= true true)))

(declare-fun bs!41748 () Bool)

(declare-fun b!90996 () Bool)

(declare-fun s!2736 () Bool)

(assert (= bs!41748 (and d!59770 b!90996 s!2736)))

(declare-fun res!47755 () Bool)

(declare-fun e!49733 () Bool)

(assert (=> bs!41748 (=> res!47755 e!49733)))

(assert (=> bs!41748 (= res!47755 (not (contains!69 (t!49063 l!1713) (h!1149 l!1713))))))

(assert (=> bs!41748 (=> true e!49733)))

(declare-fun b!91000 () Bool)

(assert (=> b!91000 (= e!49733 (dynLambda!1122 (pre!34 f!5180) (h!1149 l!1713)))))

(assert (= (and bs!41748 (not res!47755)) b!91000))

(declare-fun b_lambda!18541 () Bool)

(assert (=> (not b_lambda!18541) (not b!91000)))

(assert (=> b!91000 t!49069))

(declare-fun b_and!60819 () Bool)

(assert (= b_and!60817 (and (=> t!49069 result!47353) b_and!60819)))

(declare-fun bs!41749 () Bool)

(declare-fun m!86788 () Bool)

(assert (= bs!41749 m!86788))

(assert (=> bs!41749 s!2734))

(assert (=> bs!41749 s!2732))

(declare-fun bs!41750 () Bool)

(declare-fun s!2738 () Bool)

(assert (= bs!41750 (and d!59770 s!2738)))

(assert (=> bs!41750 (=> true (= (contains!69 (t!49063 l!1713) (h!1149 l!1713)) (member (h!1149 l!1713) (content!180 (t!49063 l!1713)))))))

(declare-fun m!86790 () Bool)

(assert (=> bs!41749 m!86790))

(declare-fun bs!41751 () Bool)

(declare-fun m!86792 () Bool)

(assert (= bs!41751 m!86792))

(assert (=> bs!41751 s!2734))

(assert (=> bs!41751 s!2738))

(assert (=> bs!41749 m!86792))

(assert (=> bs!41749 s!2738))

(assert (=> bs!41749 s!2736))

(assert (=> m!86780 m!86788))

(assert (=> m!86780 s!2736))

(assert (=> m!86782 s!2736))

(declare-fun bs!41752 () Bool)

(assert (= bs!41752 (and b!90996 start!12176)))

(assert (=> (and bs!41752 (= (t!49063 l!1713) l!1713)) (= true true)))

(declare-fun bs!41753 () Bool)

(assert (= bs!41753 (and d!59770 b!90975)))

(declare-fun lt!20536 () List!773)

(assert (=> (and bs!41753 (= lt!20536 res!47667)) (= true true)))

(declare-fun bs!41754 () Bool)

(declare-fun b!90999 () Bool)

(declare-fun s!2740 () Bool)

(assert (= bs!41754 (and d!59770 b!90999 s!2740)))

(declare-fun res!47756 () Bool)

(declare-fun e!49734 () Bool)

(assert (=> bs!41754 (=> res!47756 e!49734)))

(assert (=> bs!41754 (= res!47756 (not (contains!68 lt!20536 lt!20533)))))

(assert (=> bs!41754 (=> true e!49734)))

(declare-fun b!91001 () Bool)

(assert (=> b!91001 (= e!49734 (dynLambda!1120 (post!22 f!5180) lt!20533))))

(assert (= (and bs!41754 (not res!47756)) b!91001))

(declare-fun b_lambda!18543 () Bool)

(assert (=> (not b_lambda!18543) (not b!91001)))

(assert (=> b!91001 t!49065))

(declare-fun b_and!60821 () Bool)

(assert (= b_and!60811 (and (=> t!49065 result!47347) b_and!60821)))

(declare-fun bs!41755 () Bool)

(declare-fun s!2742 () Bool)

(assert (= bs!41755 (and d!59770 s!2742)))

(assert (=> bs!41755 (=> true (= (contains!68 lt!20536 lt!20533) (member lt!20533 (content!179 lt!20536))))))

(declare-fun bs!41756 () Bool)

(declare-fun m!86794 () Bool)

(assert (= bs!41756 m!86794))

(declare-fun m!86796 () Bool)

(assert (=> bs!41756 m!86796))

(declare-fun bs!41757 () Bool)

(declare-fun m!86798 () Bool)

(assert (= bs!41757 m!86798))

(assert (=> bs!41757 s!2742))

(assert (=> bs!41756 m!86798))

(assert (=> bs!41756 s!2742))

(assert (=> bs!41756 s!2740))

(assert (=> m!86776 m!86794))

(assert (=> m!86776 s!2740))

(declare-fun bs!41758 () Bool)

(declare-fun s!2744 () Bool)

(assert (= bs!41758 (and d!59770 b!90999 s!2744)))

(declare-fun res!47757 () Bool)

(declare-fun e!49735 () Bool)

(assert (=> bs!41758 (=> res!47757 e!49735)))

(assert (=> bs!41758 (= res!47757 (not (contains!68 lt!20536 x!32491)))))

(assert (=> bs!41758 (=> true e!49735)))

(declare-fun b!91002 () Bool)

(assert (=> b!91002 (= e!49735 (dynLambda!1120 (post!22 f!5180) x!32491))))

(assert (= (and bs!41758 (not res!47757)) b!91002))

(declare-fun b_lambda!18545 () Bool)

(assert (=> (not b_lambda!18545) (not b!91002)))

(assert (=> b!91002 t!49061))

(declare-fun b_and!60823 () Bool)

(assert (= b_and!60821 (and (=> t!49061 result!47345) b_and!60823)))

(declare-fun bs!41759 () Bool)

(declare-fun m!86800 () Bool)

(assert (= bs!41759 m!86800))

(assert (=> bs!41759 s!2730))

(declare-fun bs!41760 () Bool)

(declare-fun s!2746 () Bool)

(assert (= bs!41760 (and d!59770 s!2746)))

(assert (=> bs!41760 (=> true (= (contains!68 lt!20536 x!32491) (member x!32491 (content!179 lt!20536))))))

(assert (=> bs!41759 m!86796))

(declare-fun bs!41761 () Bool)

(declare-fun m!86802 () Bool)

(assert (= bs!41761 m!86802))

(assert (=> bs!41761 s!2730))

(assert (=> bs!41761 s!2746))

(assert (=> bs!41759 m!86802))

(assert (=> bs!41759 s!2746))

(assert (=> bs!41759 s!2744))

(assert (=> m!86764 m!86800))

(assert (=> m!86764 s!2744))

(assert (=> m!86766 s!2744))

(declare-fun bs!41762 () Bool)

(assert (= bs!41762 (and b!90999 b!90975)))

(assert (=> (and bs!41762 (= lt!20536 res!47667)) (= true inst!503)))

(declare-fun e!49731 () Bool)

(assert (=> d!59770 e!49731))

(declare-fun res!47754 () Bool)

(assert (=> d!59770 (=> (not res!47754) (not e!49731))))

(assert (=> d!59770 (= res!47754 true)))

(declare-fun e!49730 () List!773)

(assert (=> d!59770 (= lt!20536 e!49730)))

(declare-fun c!22169 () Bool)

(assert (=> d!59770 (= c!22169 (is-Cons!723 (t!49063 l!1713)))))

(declare-fun e!49732 () Bool)

(assert (=> d!59770 e!49732))

(declare-fun res!47753 () Bool)

(assert (=> d!59770 (=> (not res!47753) (not e!49732))))

(assert (=> d!59770 (= res!47753 true)))

(assert (=> d!59770 (= (map!592 (t!49063 l!1713) f!5180) lt!20536)))

(assert (=> b!90996 (= e!49732 true)))

(declare-fun b!90998 () Bool)

(assert (=> b!90998 (= e!49730 Nil!724)))

(declare-fun b!90997 () Bool)

(assert (=> b!90997 (= e!49730 (Cons!722 (apply!57 f!5180 (h!1149 (t!49063 l!1713))) (map!592 (t!49063 (t!49063 l!1713)) f!5180)))))

(assert (=> b!90999 (= e!49731 true)))

(assert (= (and d!59770 res!47753) b!90996))

(assert (= (and d!59770 c!22169) b!90997))

(assert (= (and d!59770 (not c!22169)) b!90998))

(assert (= (and d!59770 res!47754) b!90999))

(declare-fun m!86804 () Bool)

(assert (=> b!90997 m!86804))

(declare-fun m!86806 () Bool)

(assert (=> b!90997 m!86806))

(assert (=> b!90974 d!59770))

(declare-fun d!59772 () Bool)

(declare-fun lt!20539 () Bool)

(assert (=> d!59772 (= lt!20539 (member x!32491 (content!179 res!47667)))))

(declare-fun e!49740 () Bool)

(assert (=> d!59772 (= lt!20539 e!49740)))

(declare-fun res!47763 () Bool)

(assert (=> d!59772 (=> (not res!47763) (not e!49740))))

(assert (=> d!59772 (= res!47763 (is-Cons!722 res!47667))))

(assert (=> d!59772 (= (contains!68 res!47667 x!32491) lt!20539)))

(declare-fun b!91007 () Bool)

(declare-fun e!49741 () Bool)

(assert (=> b!91007 (= e!49740 e!49741)))

(declare-fun res!47762 () Bool)

(assert (=> b!91007 (=> res!47762 e!49741)))

(assert (=> b!91007 (= res!47762 (= (h!1148 res!47667) x!32491))))

(declare-fun b!91008 () Bool)

(assert (=> b!91008 (= e!49741 (contains!68 (t!49062 res!47667) x!32491))))

(assert (= (and d!59772 res!47763) b!91007))

(assert (= (and b!91007 (not res!47762)) b!91008))

(assert (=> d!59772 m!86768))

(assert (=> d!59772 m!86770))

(declare-fun bs!41763 () Bool)

(declare-fun m!86808 () Bool)

(assert (= bs!41763 m!86808))

(assert (=> bs!41763 s!2730))

(assert (=> bs!41763 s!2746))

(assert (=> bs!41763 s!2744))

(assert (=> b!91008 m!86808))

(assert (=> bs!41740 d!59772))

(declare-fun d!59774 () Bool)

(declare-fun c!22172 () Bool)

(assert (=> d!59774 (= c!22172 (is-Nil!724 res!47667))))

(declare-fun e!49744 () (Set B!692))

(assert (=> d!59774 (= (content!179 res!47667) e!49744)))

(declare-fun b!91013 () Bool)

(assert (=> b!91013 (= e!49744 (as emptyset (Set B!692)))))

(declare-fun b!91014 () Bool)

(assert (=> b!91014 (= e!49744 (union (insert (h!1148 res!47667) (as emptyset (Set B!692))) (content!179 (t!49062 res!47667))))))

(assert (= (and d!59774 c!22172) b!91013))

(assert (= (and d!59774 (not c!22172)) b!91014))

(declare-fun m!86810 () Bool)

(assert (=> b!91014 m!86810))

(declare-fun m!86812 () Bool)

(assert (=> b!91014 m!86812))

(assert (=> bs!41740 d!59774))

(assert (=> b!90975 d!59772))

(declare-fun b!91019 () Bool)

(declare-fun e!49747 () Bool)

(declare-fun tp!17949 () Bool)

(assert (=> b!91019 (= e!49747 (and tp_is_empty!475 tp!17949))))

(assert (=> b!90977 (= tp!17945 e!49747)))

(assert (= (and b!90977 (is-Cons!722 (t!49062 res!47667))) b!91019))

(declare-fun b!91024 () Bool)

(declare-fun e!49750 () Bool)

(declare-fun tp!17952 () Bool)

(assert (=> b!91024 (= e!49750 (and tp_is_empty!477 tp!17952))))

(assert (=> b!90979 (= tp!17942 e!49750)))

(assert (= (and b!90979 (is-Cons!723 (t!49063 l!1713))) b!91024))

(declare-fun b_lambda!18547 () Bool)

(assert (= b_lambda!18545 (or (and b!90978 b_free!7689) b_lambda!18547)))

(declare-fun b_lambda!18549 () Bool)

(assert (= b_lambda!18533 (or (and b!90978 b_free!7689) b_lambda!18549)))

(declare-fun b_lambda!18551 () Bool)

(assert (= b_lambda!18535 (or (and b!90978 b_free!7687) b_lambda!18551)))

(declare-fun b_lambda!18553 () Bool)

(assert (= b_lambda!18543 (or (and b!90978 b_free!7689) b_lambda!18553)))

(declare-fun b_lambda!18555 () Bool)

(assert (= b_lambda!18537 (or (and b!90978 b_free!7685) b_lambda!18555)))

(declare-fun b_lambda!18557 () Bool)

(assert (= b_lambda!18541 (or (and b!90978 b_free!7685) b_lambda!18557)))

(declare-fun b_lambda!18559 () Bool)

(assert (= b_lambda!18539 (or (and b!90978 b_free!7685) b_lambda!18559)))

(push 1)

(assert (not b!91008))

(assert (not b_lambda!18553))

(assert b_and!60819)

(assert (not b!91014))

(assert (not b_lambda!18559))

(assert (not d!59772))

(assert (not bs!41760))

(assert (not b_next!40075))

(assert (not bs!41758))

(assert (not bs!41743))

(assert (not bs!41755))

(assert (not b_next!40073))

(assert (not bs!41748))

(assert (not b_lambda!18555))

(assert (not bs!41742))

(assert (not b_lambda!18551))

(assert (not b!90997))

(assert (not b_lambda!18531))

(assert (not b_lambda!18549))

(assert tp_is_empty!475)

(assert (not b_next!40077))

(assert b_and!60823)

(assert tp_is_empty!477)

(assert (not bs!41754))

(assert (not b!91024))

(assert (not b_lambda!18557))

(assert (not b_lambda!18547))

(assert (not bs!41750))

(assert (not b!91019))

(assert b_and!60813)

(check-sat)

(pop 1)

(push 1)

(assert b_and!60819)

(assert (not b_next!40075))

(assert (not b_next!40073))

(assert (not b_next!40077))

(assert b_and!60823)

(assert b_and!60813)

(check-sat)

(pop 1)

