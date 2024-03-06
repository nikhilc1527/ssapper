; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12160 () Bool)

(assert start!12160)

(declare-fun b!90862 () Bool)

(declare-fun b_free!7655 () Bool)

(declare-fun b_next!40043 () Bool)

(assert (=> b!90862 (= b_free!7655 (not b_next!40043))))

(declare-fun tp!17882 () Bool)

(declare-fun b_and!60741 () Bool)

(assert (=> b!90862 (= tp!17882 b_and!60741)))

(declare-fun b_free!7657 () Bool)

(declare-fun b_next!40045 () Bool)

(assert (=> b!90862 (= b_free!7657 (not b_next!40045))))

(declare-fun tp!17878 () Bool)

(declare-fun b_and!60743 () Bool)

(assert (=> b!90862 (= tp!17878 b_and!60743)))

(declare-fun b_free!7659 () Bool)

(declare-fun b_next!40047 () Bool)

(assert (=> b!90862 (= b_free!7659 (not b_next!40047))))

(declare-fun tp!17880 () Bool)

(declare-fun b_and!60745 () Bool)

(assert (=> b!90862 (= tp!17880 b_and!60745)))

(declare-fun b!90864 () Bool)

(declare-fun b_free!7661 () Bool)

(declare-fun b_next!40049 () Bool)

(assert (=> b!90864 (= b_free!7661 (not b_next!40049))))

(declare-fun tp!17877 () Bool)

(declare-fun b_and!60747 () Bool)

(assert (=> b!90864 (= tp!17877 b_and!60747)))

(declare-fun b_free!7663 () Bool)

(declare-fun b_next!40051 () Bool)

(assert (=> b!90864 (= b_free!7663 (not b_next!40051))))

(declare-fun tp!17879 () Bool)

(declare-fun b_and!60749 () Bool)

(assert (=> b!90864 (= tp!17879 b_and!60749)))

(declare-fun b_free!7665 () Bool)

(declare-fun b_next!40053 () Bool)

(assert (=> b!90864 (= b_free!7665 (not b_next!40053))))

(declare-fun tp!17881 () Bool)

(declare-fun b_and!60751 () Bool)

(assert (=> b!90864 (= tp!17881 b_and!60751)))

(declare-fun e!49634 () Bool)

(assert (=> b!90862 (= e!49634 (and tp!17882 tp!17878 tp!17880))))

(declare-fun b!90863 () Bool)

(declare-fun res!47677 () Bool)

(declare-fun e!49636 () Bool)

(assert (=> b!90863 (=> (not res!47677) (not e!49636))))

(declare-datatypes () ((A!3909 (A!3910 (val!228 Int)))))

(declare-datatypes () ((B!686 (B!687 (val!229 Int)))))

(declare-datatypes () ((~>>!19 (~>>!20 (pre!31 Int) (f!5185 Int) (post!19 Int)))))

(declare-fun thiss!10502 () ~>>!19)

(declare-datatypes () ((List!768 (Cons!717 (h!1143 A!3909) (t!49031 List!768)) (Nil!719))))

(declare-fun l!1713 () List!768)

(declare-fun a!1096 () A!3909)

(declare-fun f!5180 () ~>>!19)

(assert (=> b!90863 (= res!47677 (and (is-Cons!717 l!1713) (= thiss!10502 f!5180) (= a!1096 (h!1143 l!1713))))))

(declare-fun e!49637 () Bool)

(assert (=> b!90864 (= e!49637 (and tp!17877 tp!17879 tp!17881))))

(declare-fun b!90865 () Bool)

(declare-fun dynLambda!1116 (Int A!3909) Bool)

(assert (=> b!90865 (= e!49636 (not (dynLambda!1116 (pre!31 thiss!10502) a!1096)))))

(declare-fun res!47678 () Bool)

(assert (=> start!12160 (=> (not res!47678) (not e!49636))))

(assert (=> start!12160 (= res!47678 true)))

(assert (=> start!12160 true))

(assert (=> start!12160 e!49636))

(declare-fun e!49635 () Bool)

(assert (=> start!12160 e!49635))

(assert (=> start!12160 e!49634))

(assert (=> start!12160 e!49637))

(declare-fun tp_is_empty!463 () Bool)

(assert (=> start!12160 tp_is_empty!463))

(declare-fun b!90866 () Bool)

(declare-fun tp!17876 () Bool)

(assert (=> b!90866 (= e!49635 (and tp_is_empty!463 tp!17876))))

(assert (= (and start!12160 res!47678) b!90863))

(assert (= (and b!90863 res!47677) b!90865))

(assert (= (and start!12160 (is-Cons!717 l!1713)) b!90866))

(assert (= start!12160 b!90862))

(assert (= start!12160 b!90864))

(declare-fun b_lambda!18497 () Bool)

(assert (=> (not b_lambda!18497) (not b!90865)))

(declare-fun tb!46797 () Bool)

(declare-fun t!49028 () Bool)

(assert (=> (and b!90862 (= (pre!31 f!5180) (pre!31 thiss!10502)) t!49028) tb!46797))

(declare-fun result!47311 () Bool)

(assert (=> tb!46797 (= result!47311 true)))

(assert (=> b!90865 t!49028))

(declare-fun b_and!60753 () Bool)

(assert (= b_and!60741 (and (=> t!49028 result!47311) b_and!60753)))

(declare-fun t!49030 () Bool)

(declare-fun tb!46799 () Bool)

(assert (=> (and b!90864 (= (pre!31 thiss!10502) (pre!31 thiss!10502)) t!49030) tb!46799))

(declare-fun result!47313 () Bool)

(assert (=> tb!46799 (= result!47313 true)))

(assert (=> b!90865 t!49030))

(declare-fun b_and!60755 () Bool)

(assert (= b_and!60747 (and (=> t!49030 result!47313) b_and!60755)))

(declare-fun m!86708 () Bool)

(assert (=> b!90865 m!86708))

(push 1)

(assert b_and!60743)

(assert (not b!90866))

(assert (not b_next!40049))

(assert (not b_next!40045))

(assert b_and!60745)

(assert tp_is_empty!463)

(assert b_and!60749)

(assert b_and!60755)

(assert (not b_next!40051))

(assert b_and!60753)

(assert (not b_next!40043))

(assert (not b_next!40053))

(assert (not b_lambda!18497))

(assert b_and!60751)

(assert (not b_next!40047))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60743)

(assert (not b_next!40049))

(assert (not b_next!40045))

(assert b_and!60745)

(assert b_and!60749)

(assert b_and!60755)

(assert (not b_next!40051))

(assert b_and!60753)

(assert (not b_next!40043))

(assert (not b_next!40053))

(assert b_and!60751)

(assert (not b_next!40047))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18499 () Bool)

(assert (= b_lambda!18497 (or (and b!90862 b_free!7655 (= (pre!31 f!5180) (pre!31 thiss!10502))) (and b!90864 b_free!7661) b_lambda!18499)))

(declare-fun bs!41719 () Bool)

(declare-fun s!2716 () Bool)

(assert (= bs!41719 (and start!12160 s!2716)))

(declare-fun res!47679 () Bool)

(declare-fun e!49638 () Bool)

(assert (=> bs!41719 (=> res!47679 e!49638)))

(declare-fun contains!64 (List!768 A!3909) Bool)

(assert (=> bs!41719 (= res!47679 (not (contains!64 l!1713 a!1096)))))

(assert (=> bs!41719 (=> true e!49638)))

(declare-fun b!90867 () Bool)

(assert (=> b!90867 (= e!49638 (dynLambda!1116 (pre!31 f!5180) a!1096))))

(assert (= (and bs!41719 (not res!47679)) b!90867))

(declare-fun b_lambda!18501 () Bool)

(assert (=> (not b_lambda!18501) (not b!90867)))

(declare-fun t!49033 () Bool)

(declare-fun tb!46801 () Bool)

(assert (=> (and b!90862 (= (pre!31 f!5180) (pre!31 f!5180)) t!49033) tb!46801))

(declare-fun result!47315 () Bool)

(assert (=> tb!46801 (= result!47315 true)))

(assert (=> b!90867 t!49033))

(declare-fun b_and!60757 () Bool)

(assert (= b_and!60753 (and (=> t!49033 result!47315) b_and!60757)))

(declare-fun t!49035 () Bool)

(declare-fun tb!46803 () Bool)

(assert (=> (and b!90864 (= (pre!31 thiss!10502) (pre!31 f!5180)) t!49035) tb!46803))

(declare-fun result!47317 () Bool)

(assert (=> tb!46803 (= result!47317 true)))

(assert (=> b!90867 t!49035))

(declare-fun b_and!60759 () Bool)

(assert (= b_and!60755 (and (=> t!49035 result!47317) b_and!60759)))

(declare-fun m!86710 () Bool)

(assert (=> m!86708 m!86710))

(assert (=> m!86708 s!2716))

(push 1)

(assert b_and!60757)

(assert b_and!60759)

(assert b_and!60743)

(assert (not b!90866))

(assert (not bs!41719))

(assert (not b_next!40049))

(assert (not b_next!40045))

(assert b_and!60745)

(assert tp_is_empty!463)

(assert b_and!60749)

(assert (not b_next!40051))

(assert (not b_next!40043))

(assert (not b_next!40053))

(assert b_and!60751)

(assert (not b_lambda!18499))

(assert (not b_lambda!18501))

(assert (not b_next!40047))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60757)

(assert b_and!60759)

(assert b_and!60743)

(assert (not b_next!40049))

(assert (not b_next!40045))

(assert b_and!60745)

(assert b_and!60749)

(assert (not b_next!40051))

(assert (not b_next!40043))

(assert (not b_next!40053))

(assert b_and!60751)

(assert (not b_next!40047))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18503 () Bool)

(assert (= b_lambda!18501 (or (and b!90862 b_free!7655) (and b!90864 b_free!7661 (= (pre!31 thiss!10502) (pre!31 f!5180))) b_lambda!18503)))

(declare-fun bs!41720 () Bool)

(assert (= bs!41720 (and m!86708 b!90867)))

(declare-fun m!86712 () Bool)

(assert (=> bs!41720 m!86712))

(declare-fun bs!41721 () Bool)

(declare-fun s!2718 () Bool)

(assert (= bs!41721 (and start!12160 s!2718)))

(declare-fun content!177 (List!768) (Set A!3909))

(assert (=> bs!41721 (=> true (= (contains!64 l!1713 a!1096) (member a!1096 (content!177 l!1713))))))

(declare-fun m!86714 () Bool)

(assert (=> m!86710 m!86714))

(declare-fun m!86716 () Bool)

(assert (=> m!86710 m!86716))

(assert (=> m!86710 s!2718))

(assert (=> m!86710 s!2716))

(push 1)

(assert b_and!60757)

(assert b_and!60759)

(assert b_and!60743)

(assert (not b!90866))

(assert (not bs!41719))

(assert (not b_lambda!18503))

(assert (not b_next!40049))

(assert (not b_next!40045))

(assert b_and!60745)

(assert tp_is_empty!463)

(assert b_and!60749)

(assert (not bs!41721))

(assert (not b_next!40051))

(assert (not b_next!40043))

(assert (not b_next!40053))

(assert b_and!60751)

(assert (not b_lambda!18499))

(assert (not b_next!40047))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60757)

(assert b_and!60759)

(assert b_and!60743)

(assert (not b_next!40049))

(assert (not b_next!40045))

(assert b_and!60745)

(assert b_and!60749)

(assert (not b_next!40051))

(assert (not b_next!40043))

(assert (not b_next!40053))

(assert b_and!60751)

(assert (not b_next!40047))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59758 () Bool)

(declare-fun lt!20520 () Bool)

(assert (=> d!59758 (= lt!20520 (member a!1096 (content!177 l!1713)))))

(declare-fun e!49644 () Bool)

(assert (=> d!59758 (= lt!20520 e!49644)))

(declare-fun res!47684 () Bool)

(assert (=> d!59758 (=> (not res!47684) (not e!49644))))

(assert (=> d!59758 (= res!47684 (is-Cons!717 l!1713))))

(assert (=> d!59758 (= (contains!64 l!1713 a!1096) lt!20520)))

(declare-fun b!90872 () Bool)

(declare-fun e!49643 () Bool)

(assert (=> b!90872 (= e!49644 e!49643)))

(declare-fun res!47685 () Bool)

(assert (=> b!90872 (=> res!47685 e!49643)))

(assert (=> b!90872 (= res!47685 (= (h!1143 l!1713) a!1096))))

(declare-fun b!90873 () Bool)

(assert (=> b!90873 (= e!49643 (contains!64 (t!49031 l!1713) a!1096))))

(assert (= (and d!59758 res!47684) b!90872))

(assert (= (and b!90872 (not res!47685)) b!90873))

(assert (=> d!59758 m!86714))

(assert (=> d!59758 m!86716))

(declare-fun bs!41722 () Bool)

(declare-fun m!86718 () Bool)

(assert (= bs!41722 m!86718))

(assert (=> bs!41722 s!2718))

(assert (=> bs!41722 s!2716))

(assert (=> b!90873 m!86718))

(assert (=> bs!41719 d!59758))

(declare-fun b!90878 () Bool)

(declare-fun e!49647 () Bool)

(declare-fun tp!17885 () Bool)

(assert (=> b!90878 (= e!49647 (and tp_is_empty!463 tp!17885))))

(assert (=> b!90866 (= tp!17876 e!49647)))

(assert (= (and b!90866 (is-Cons!717 (t!49031 l!1713))) b!90878))

(assert (=> m!86716 s!2718))

(assert (=> m!86712 s!2716))

(push 1)

(assert b_and!60757)

(assert (not b!90878))

(assert b_and!60759)

(assert b_and!60743)

(assert (not b_lambda!18503))

(assert (not b_next!40049))

(assert (not b_next!40045))

(assert b_and!60745)

(assert tp_is_empty!463)

(assert b_and!60749)

(assert (not d!59758))

(assert (not bs!41721))

(assert (not b_next!40051))

(assert (not b_next!40043))

(assert (not b!90873))

(assert (not b_next!40053))

(assert b_and!60751)

(assert (not b_lambda!18499))

(assert (not b_next!40047))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60757)

(assert b_and!60759)

(assert b_and!60743)

(assert (not b_next!40049))

(assert (not b_next!40045))

(assert b_and!60745)

(assert b_and!60749)

(assert (not b_next!40051))

(assert (not b_next!40043))

(assert (not b_next!40053))

(assert b_and!60751)

(assert (not b_next!40047))

(check-sat)

(pop 1)

