; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12256 () Bool)

(assert start!12256)

(declare-fun b_free!7709 () Bool)

(declare-fun b_next!40097 () Bool)

(assert (=> start!12256 (= b_free!7709 (not b_next!40097))))

(declare-fun tp!18000 () Bool)

(declare-fun b_and!60853 () Bool)

(assert (=> start!12256 (= tp!18000 b_and!60853)))

(declare-fun inst!509 () Bool)

(declare-fun f!5282 () Int)

(declare-fun tp_is_empty!491 () Bool)

(declare-datatypes () ((A!4106 (A!4107 (val!243 Int)))))

(declare-fun x!32971 () A!4106)

(declare-fun x!32973 () A!4106)

(declare-fun x!32972 () A!4106)

(declare-fun b!91258 () Bool)

(declare-fun dynLambda!1132 (Int A!4106 A!4106) A!4106)

(assert (=> b!91258 (= inst!509 (=> tp_is_empty!491 (= (dynLambda!1132 f!5282 (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (dynLambda!1132 f!5282 x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)))))))

(declare-fun b_lambda!18787 () Bool)

(assert (=> (not b_lambda!18787) (not b!91258)))

(declare-fun t!49111 () Bool)

(declare-fun tb!46843 () Bool)

(assert (=> (and start!12256 (= f!5282 f!5282) t!49111) tb!46843))

(declare-fun result!47379 () Bool)

(assert (=> tb!46843 (= result!47379 tp_is_empty!491)))

(assert (=> b!91258 t!49111))

(declare-fun b_and!60855 () Bool)

(assert (= b_and!60853 (and (=> t!49111 result!47379) b_and!60855)))

(declare-fun b_lambda!18789 () Bool)

(assert (=> (not b_lambda!18789) (not b!91258)))

(declare-fun t!49113 () Bool)

(declare-fun tb!46845 () Bool)

(assert (=> (and start!12256 (= f!5282 f!5282) t!49113) tb!46845))

(declare-fun result!47383 () Bool)

(assert (=> tb!46845 (= result!47383 tp_is_empty!491)))

(assert (=> b!91258 t!49113))

(declare-fun b_and!60857 () Bool)

(assert (= b_and!60855 (and (=> t!49113 result!47383) b_and!60857)))

(declare-fun b_lambda!18791 () Bool)

(assert (=> (not b_lambda!18791) (not b!91258)))

(declare-fun t!49115 () Bool)

(declare-fun tb!46847 () Bool)

(assert (=> (and start!12256 (= f!5282 f!5282) t!49115) tb!46847))

(declare-fun result!47385 () Bool)

(assert (=> tb!46847 (= result!47385 tp_is_empty!491)))

(assert (=> b!91258 t!49115))

(declare-fun b_and!60859 () Bool)

(assert (= b_and!60857 (and (=> t!49115 result!47385) b_and!60859)))

(declare-fun b_lambda!18793 () Bool)

(assert (=> (not b_lambda!18793) (not b!91258)))

(declare-fun t!49117 () Bool)

(declare-fun tb!46849 () Bool)

(assert (=> (and start!12256 (= f!5282 f!5282) t!49117) tb!46849))

(declare-fun result!47387 () Bool)

(assert (=> tb!46849 (= result!47387 tp_is_empty!491)))

(assert (=> b!91258 t!49117))

(declare-fun b_and!60861 () Bool)

(assert (= b_and!60859 (and (=> t!49117 result!47387) b_and!60861)))

(declare-fun m!87084 () Bool)

(assert (=> b!91258 m!87084))

(assert (=> b!91258 m!87084))

(declare-fun m!87086 () Bool)

(assert (=> b!91258 m!87086))

(declare-fun m!87088 () Bool)

(assert (=> b!91258 m!87088))

(assert (=> b!91258 m!87088))

(declare-fun m!87090 () Bool)

(assert (=> b!91258 m!87090))

(declare-fun bs!41851 () Bool)

(declare-fun s!2786 () Bool)

(assert (= bs!41851 (and start!12256 s!2786)))

(assert (=> bs!41851 (=> true (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32973 x!32972)))))

(declare-fun b_lambda!18795 () Bool)

(assert (=> (not b_lambda!18795) (not bs!41851)))

(assert (=> bs!41851 t!49117))

(declare-fun b_and!60863 () Bool)

(assert (= b_and!60861 (and (=> t!49117 result!47387) b_and!60863)))

(declare-fun b_lambda!18797 () Bool)

(assert (=> (not b_lambda!18797) (not bs!41851)))

(declare-fun t!49119 () Bool)

(declare-fun tb!46851 () Bool)

(assert (=> (and start!12256 (= f!5282 f!5282) t!49119) tb!46851))

(declare-fun result!47389 () Bool)

(assert (=> tb!46851 (= result!47389 tp_is_empty!491)))

(assert (=> bs!41851 t!49119))

(declare-fun b_and!60865 () Bool)

(assert (= b_and!60863 (and (=> t!49119 result!47389) b_and!60865)))

(declare-fun bs!41852 () Bool)

(declare-fun s!2788 () Bool)

(assert (= bs!41852 (and start!12256 s!2788)))

(assert (=> bs!41852 (=> true (= (dynLambda!1132 f!5282 x!32973 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973)))))

(declare-fun b_lambda!18799 () Bool)

(assert (=> (not b_lambda!18799) (not bs!41852)))

(assert (=> bs!41852 t!49119))

(declare-fun b_and!60867 () Bool)

(assert (= b_and!60865 (and (=> t!49119 result!47389) b_and!60867)))

(declare-fun b_lambda!18801 () Bool)

(assert (=> (not b_lambda!18801) (not bs!41852)))

(assert (=> bs!41852 t!49117))

(declare-fun b_and!60869 () Bool)

(assert (= b_and!60867 (and (=> t!49117 result!47387) b_and!60869)))

(declare-fun bs!41853 () Bool)

(declare-fun m!87092 () Bool)

(assert (= bs!41853 (and m!87092 m!87088)))

(assert (=> bs!41853 m!87092))

(assert (=> bs!41853 m!87088))

(assert (=> bs!41853 s!2788))

(assert (=> m!87092 s!2788))

(assert (=> bs!41853 s!2786))

(assert (=> m!87092 s!2786))

(assert (=> bs!41853 s!2788))

(assert (=> m!87092 s!2788))

(assert (=> bs!41853 s!2786))

(assert (=> m!87092 s!2786))

(assert (=> m!87088 m!87092))

(assert (=> m!87088 s!2786))

(assert (=> m!87088 s!2788))

(assert (=> m!87088 s!2786))

(assert (=> m!87088 s!2788))

(declare-fun bs!41854 () Bool)

(declare-fun s!2790 () Bool)

(assert (= bs!41854 (and start!12256 s!2790)))

(assert (=> bs!41854 (=> true (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32971)))))

(declare-fun b_lambda!18803 () Bool)

(assert (=> (not b_lambda!18803) (not bs!41854)))

(assert (=> bs!41854 t!49113))

(declare-fun b_and!60871 () Bool)

(assert (= b_and!60869 (and (=> t!49113 result!47383) b_and!60871)))

(declare-fun b_lambda!18805 () Bool)

(assert (=> (not b_lambda!18805) (not bs!41854)))

(declare-fun t!49121 () Bool)

(declare-fun tb!46853 () Bool)

(assert (=> (and start!12256 (= f!5282 f!5282) t!49121) tb!46853))

(declare-fun result!47391 () Bool)

(assert (=> tb!46853 (= result!47391 tp_is_empty!491)))

(assert (=> bs!41854 t!49121))

(declare-fun b_and!60873 () Bool)

(assert (= b_and!60871 (and (=> t!49121 result!47391) b_and!60873)))

(declare-fun bs!41855 () Bool)

(assert (= bs!41855 (and m!87084 m!87088 m!87092)))

(assert (=> bs!41855 m!87084))

(declare-fun bs!41856 () Bool)

(declare-fun m!87094 () Bool)

(assert (= bs!41856 (and m!87094 m!87088 m!87092)))

(assert (=> bs!41856 s!2786))

(declare-fun bs!41857 () Bool)

(declare-fun s!2792 () Bool)

(assert (= bs!41857 (and start!12256 s!2792)))

(assert (=> bs!41857 (=> true (= (dynLambda!1132 f!5282 x!32972 x!32971) (dynLambda!1132 f!5282 x!32971 x!32972)))))

(declare-fun b_lambda!18807 () Bool)

(assert (=> (not b_lambda!18807) (not bs!41857)))

(assert (=> bs!41857 t!49121))

(declare-fun b_and!60875 () Bool)

(assert (= b_and!60873 (and (=> t!49121 result!47391) b_and!60875)))

(declare-fun b_lambda!18809 () Bool)

(assert (=> (not b_lambda!18809) (not bs!41857)))

(assert (=> bs!41857 t!49113))

(declare-fun b_and!60877 () Bool)

(assert (= b_and!60875 (and (=> t!49113 result!47383) b_and!60877)))

(declare-fun bs!41858 () Bool)

(assert (= bs!41858 m!87094))

(assert (=> bs!41858 m!87084))

(assert (=> bs!41858 s!2792))

(declare-fun bs!41859 () Bool)

(assert (= bs!41859 (and m!87094 m!87084)))

(assert (=> bs!41859 s!2792))

(declare-fun bs!41860 () Bool)

(assert (= bs!41860 (and m!87094 m!87088 m!87092 m!87084)))

(assert (=> bs!41860 s!2790))

(assert (=> bs!41858 s!2790))

(assert (=> bs!41860 s!2792))

(assert (=> bs!41858 s!2792))

(assert (=> bs!41859 s!2790))

(assert (=> bs!41856 s!2788))

(assert (=> bs!41858 s!2790))

(assert (=> bs!41855 m!87094))

(assert (=> bs!41855 s!2790))

(assert (=> m!87084 s!2790))

(assert (=> bs!41855 s!2786))

(assert (=> m!87084 s!2792))

(assert (=> bs!41855 s!2788))

(assert (=> m!87084 s!2790))

(assert (=> bs!41855 s!2792))

(assert (=> m!87084 s!2792))

(declare-fun bs!41861 () Bool)

(assert (= bs!41861 (and m!87092 m!87084 m!87090 m!87094 m!87088)))

(assert (=> bs!41861 s!2790))

(declare-fun bs!41862 () Bool)

(declare-fun s!2794 () Bool)

(assert (= bs!41862 (and start!12256 s!2794)))

(assert (=> bs!41862 (=> true (= (dynLambda!1132 f!5282 x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (dynLambda!1132 f!5282 (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(declare-fun b_lambda!18811 () Bool)

(assert (=> (not b_lambda!18811) (not bs!41862)))

(assert (=> bs!41862 t!49115))

(declare-fun b_and!60879 () Bool)

(assert (= b_and!60877 (and (=> t!49115 result!47385) b_and!60879)))

(declare-fun b_lambda!18813 () Bool)

(assert (=> (not b_lambda!18813) (not bs!41862)))

(declare-fun t!49123 () Bool)

(declare-fun tb!46855 () Bool)

(assert (=> (and start!12256 (= f!5282 f!5282) t!49123) tb!46855))

(declare-fun result!47393 () Bool)

(assert (=> tb!46855 (= result!47393 tp_is_empty!491)))

(assert (=> bs!41862 t!49123))

(declare-fun b_and!60881 () Bool)

(assert (= b_and!60879 (and (=> t!49123 result!47393) b_and!60881)))

(declare-fun bs!41863 () Bool)

(declare-fun s!2796 () Bool)

(assert (= bs!41863 (and start!12256 s!2796)))

(assert (=> bs!41863 (=> true (= (dynLambda!1132 f!5282 (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (dynLambda!1132 f!5282 x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))))))

(declare-fun b_lambda!18815 () Bool)

(assert (=> (not b_lambda!18815) (not bs!41863)))

(assert (=> bs!41863 t!49123))

(declare-fun b_and!60883 () Bool)

(assert (= b_and!60881 (and (=> t!49123 result!47393) b_and!60883)))

(declare-fun b_lambda!18817 () Bool)

(assert (=> (not b_lambda!18817) (not bs!41863)))

(assert (=> bs!41863 t!49115))

(declare-fun b_and!60885 () Bool)

(assert (= b_and!60883 (and (=> t!49115 result!47385) b_and!60885)))

(declare-fun bs!41864 () Bool)

(declare-fun m!87096 () Bool)

(assert (= bs!41864 m!87096))

(assert (=> bs!41864 m!87090))

(assert (=> bs!41864 s!2796))

(declare-fun bs!41865 () Bool)

(assert (= bs!41865 (and m!87096 m!87084 m!87094 m!87090)))

(assert (=> bs!41865 s!2796))

(declare-fun bs!41866 () Bool)

(assert (= bs!41866 (and m!87096 m!87090)))

(assert (=> bs!41866 s!2794))

(declare-fun bs!41867 () Bool)

(assert (= bs!41867 (and m!87092 m!87084 m!87094 m!87088 m!87096)))

(assert (=> bs!41867 s!2790))

(assert (=> bs!41864 s!2794))

(assert (=> bs!41864 s!2796))

(assert (=> bs!41867 s!2792))

(assert (=> bs!41866 s!2796))

(assert (=> bs!41865 s!2794))

(assert (=> bs!41864 s!2794))

(assert (=> m!87090 m!87096))

(assert (=> m!87090 s!2794))

(assert (=> m!87090 s!2796))

(declare-fun bs!41868 () Bool)

(assert (= bs!41868 (and m!87090 m!87084 m!87094)))

(assert (=> bs!41868 s!2796))

(assert (=> bs!41868 s!2794))

(assert (=> m!87090 s!2794))

(assert (=> m!87090 s!2796))

(assert (=> bs!41861 s!2792))

(declare-fun bs!41869 () Bool)

(declare-fun s!2798 () Bool)

(assert (= bs!41869 (and start!12256 s!2798)))

(assert (=> bs!41869 (=> true (= (dynLambda!1132 f!5282 (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (dynLambda!1132 f!5282 x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))))))

(declare-fun b_lambda!18819 () Bool)

(assert (=> (not b_lambda!18819) (not bs!41869)))

(assert (=> bs!41869 t!49111))

(declare-fun b_and!60887 () Bool)

(assert (= b_and!60885 (and (=> t!49111 result!47379) b_and!60887)))

(declare-fun b_lambda!18821 () Bool)

(assert (=> (not b_lambda!18821) (not bs!41869)))

(declare-fun t!49125 () Bool)

(declare-fun tb!46857 () Bool)

(assert (=> (and start!12256 (= f!5282 f!5282) t!49125) tb!46857))

(declare-fun result!47395 () Bool)

(assert (=> tb!46857 (= result!47395 tp_is_empty!491)))

(assert (=> bs!41869 t!49125))

(declare-fun b_and!60889 () Bool)

(assert (= b_and!60887 (and (=> t!49125 result!47395) b_and!60889)))

(declare-fun bs!41870 () Bool)

(declare-fun s!2800 () Bool)

(assert (= bs!41870 (and start!12256 s!2800)))

(assert (=> bs!41870 (=> true (= (dynLambda!1132 f!5282 x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (dynLambda!1132 f!5282 (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)))))

(declare-fun b_lambda!18823 () Bool)

(assert (=> (not b_lambda!18823) (not bs!41870)))

(assert (=> bs!41870 t!49125))

(declare-fun b_and!60891 () Bool)

(assert (= b_and!60889 (and (=> t!49125 result!47395) b_and!60891)))

(declare-fun b_lambda!18825 () Bool)

(assert (=> (not b_lambda!18825) (not bs!41870)))

(assert (=> bs!41870 t!49111))

(declare-fun b_and!60893 () Bool)

(assert (= b_and!60891 (and (=> t!49111 result!47379) b_and!60893)))

(declare-fun bs!41871 () Bool)

(declare-fun m!87098 () Bool)

(assert (= bs!41871 m!87098))

(assert (=> bs!41871 m!87086))

(assert (=> bs!41871 s!2800))

(declare-fun bs!41872 () Bool)

(assert (= bs!41872 (and m!87098 m!87086)))

(assert (=> bs!41872 s!2800))

(declare-fun bs!41873 () Bool)

(assert (= bs!41873 (and m!87092 m!87084 m!87094 m!87088 m!87098)))

(assert (=> bs!41873 s!2788))

(assert (=> bs!41871 s!2798))

(declare-fun bs!41874 () Bool)

(assert (= bs!41874 (and m!87098 m!87088 m!87092 m!87086)))

(assert (=> bs!41874 s!2798))

(assert (=> bs!41874 s!2800))

(assert (=> bs!41871 s!2800))

(assert (=> bs!41871 s!2798))

(assert (=> bs!41872 s!2798))

(assert (=> bs!41873 s!2786))

(assert (=> m!87086 m!87098))

(assert (=> m!87086 s!2798))

(declare-fun bs!41875 () Bool)

(assert (= bs!41875 (and m!87086 m!87088 m!87092)))

(assert (=> bs!41875 s!2798))

(assert (=> m!87086 s!2800))

(declare-fun bs!41876 () Bool)

(assert (= bs!41876 (and m!87092 m!87084 m!87094 m!87088 m!87086)))

(assert (=> bs!41876 s!2788))

(assert (=> bs!41876 s!2786))

(assert (=> m!87086 s!2798))

(assert (=> m!87086 s!2800))

(assert (=> bs!41875 s!2800))

(declare-fun res!47917 () Bool)

(declare-fun e!49932 () Bool)

(assert (=> start!12256 (=> (not res!47917) (not e!49932))))

(assert (=> start!12256 (= res!47917 true)))

(assert (=> start!12256 e!49932))

(assert (=> start!12256 tp!18000))

(assert (=> b!91258 (= e!49932 (not inst!509))))

(assert (= (and start!12256 res!47917) b!91258))

(push 1)

(assert (not b_lambda!18811))

(assert (not b_lambda!18821))

(assert (not b_lambda!18819))

(assert (not b_lambda!18809))

(assert (not b_lambda!18801))

(assert (not b_lambda!18807))

(assert tp_is_empty!491)

(assert (not b_lambda!18817))

(assert (not b_lambda!18791))

(assert (not b_lambda!18789))

(assert (not b_lambda!18815))

(assert (not b_lambda!18797))

(assert (not b_lambda!18803))

(assert (not b_lambda!18823))

(assert (not b_lambda!18793))

(assert (not b_lambda!18813))

(assert (not b_lambda!18825))

(assert (not b_lambda!18799))

(assert b_and!60893)

(assert (not b_lambda!18795))

(assert (not b_lambda!18805))

(assert (not b_lambda!18787))

(assert (not b_next!40097))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60893)

(assert (not b_next!40097))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18827 () Bool)

(assert (= b_lambda!18787 (or (and start!12256 b_free!7709) b_lambda!18827)))

(declare-fun b_lambda!18829 () Bool)

(assert (= b_lambda!18823 (or (and start!12256 b_free!7709) b_lambda!18829)))

(declare-fun b_lambda!18831 () Bool)

(assert (= b_lambda!18797 (or (and start!12256 b_free!7709) b_lambda!18831)))

(declare-fun b_lambda!18833 () Bool)

(assert (= b_lambda!18817 (or (and start!12256 b_free!7709) b_lambda!18833)))

(declare-fun b_lambda!18835 () Bool)

(assert (= b_lambda!18821 (or (and start!12256 b_free!7709) b_lambda!18835)))

(declare-fun b_lambda!18837 () Bool)

(assert (= b_lambda!18799 (or (and start!12256 b_free!7709) b_lambda!18837)))

(declare-fun b_lambda!18839 () Bool)

(assert (= b_lambda!18791 (or (and start!12256 b_free!7709) b_lambda!18839)))

(declare-fun b_lambda!18841 () Bool)

(assert (= b_lambda!18801 (or (and start!12256 b_free!7709) b_lambda!18841)))

(declare-fun b_lambda!18843 () Bool)

(assert (= b_lambda!18805 (or (and start!12256 b_free!7709) b_lambda!18843)))

(declare-fun b_lambda!18845 () Bool)

(assert (= b_lambda!18811 (or (and start!12256 b_free!7709) b_lambda!18845)))

(declare-fun b_lambda!18847 () Bool)

(assert (= b_lambda!18789 (or (and start!12256 b_free!7709) b_lambda!18847)))

(declare-fun b_lambda!18849 () Bool)

(assert (= b_lambda!18825 (or (and start!12256 b_free!7709) b_lambda!18849)))

(declare-fun b_lambda!18851 () Bool)

(assert (= b_lambda!18815 (or (and start!12256 b_free!7709) b_lambda!18851)))

(declare-fun b_lambda!18853 () Bool)

(assert (= b_lambda!18813 (or (and start!12256 b_free!7709) b_lambda!18853)))

(declare-fun b_lambda!18855 () Bool)

(assert (= b_lambda!18793 (or (and start!12256 b_free!7709) b_lambda!18855)))

(declare-fun b_lambda!18857 () Bool)

(assert (= b_lambda!18795 (or (and start!12256 b_free!7709) b_lambda!18857)))

(declare-fun b_lambda!18859 () Bool)

(assert (= b_lambda!18803 (or (and start!12256 b_free!7709) b_lambda!18859)))

(declare-fun b_lambda!18861 () Bool)

(assert (= b_lambda!18807 (or (and start!12256 b_free!7709) b_lambda!18861)))

(declare-fun b_lambda!18863 () Bool)

(assert (= b_lambda!18819 (or (and start!12256 b_free!7709) b_lambda!18863)))

(declare-fun b_lambda!18865 () Bool)

(assert (= b_lambda!18809 (or (and start!12256 b_free!7709) b_lambda!18865)))

(push 1)

(assert (not b_lambda!18851))

(assert (not b_lambda!18849))

(assert (not b_lambda!18855))

(assert (not b_lambda!18835))

(assert (not b_lambda!18831))

(assert (not b_lambda!18865))

(assert tp_is_empty!491)

(assert (not b_lambda!18833))

(assert (not b_lambda!18859))

(assert (not b_lambda!18847))

(assert (not b_lambda!18861))

(assert (not b_lambda!18863))

(assert (not b_lambda!18857))

(assert (not b_lambda!18853))

(assert (not b_lambda!18837))

(assert (not b_lambda!18827))

(assert (not b_lambda!18829))

(assert b_and!60893)

(assert (not b_lambda!18841))

(assert (not b_lambda!18845))

(assert (not b_lambda!18843))

(assert (not b_next!40097))

(assert (not b_lambda!18839))

(check-sat)

(get-model)

(pop 1)

(push 1)

(assert tp_is_empty!491)

(assert (not b_lambda!18827))

(assert (not b_lambda!18829))

(assert (not b_lambda!18831))

(assert (not b_lambda!18833))

(assert (not b_lambda!18835))

(assert (not b_lambda!18837))

(assert (not b_lambda!18839))

(assert (not b_lambda!18841))

(assert (not b_lambda!18843))

(assert (not b_lambda!18845))

(assert (not b_lambda!18847))

(assert (not b_lambda!18849))

(assert (not b_lambda!18851))

(assert (not b_lambda!18853))

(assert (not b_lambda!18855))

(assert (not b_lambda!18857))

(assert (not b_lambda!18859))

(assert (not b_lambda!18861))

(assert (not b_lambda!18863))

(assert (not b_lambda!18865))

(assert b_and!60893)

(assert (not b_next!40097))

(assert (=> (and m!87092 m!87088) (or (and s!2786 (= x!32972 x!32973) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 x!32973)) (and s!2790 (= x!32971 x!32973) (= x!32972 x!32973)) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 x!32973) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 x!32973)) (and s!2792 (= x!32972 x!32973) (= x!32971 x!32973)) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> (and m!87084 m!87088 m!87092) (or (and s!2786 (= x!32972 x!32972) (= x!32973 x!32972)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972) (= x!32973 x!32972)) (and s!2790 (= x!32971 x!32972) (= x!32972 x!32972)) (and s!2800 (= x!32973 x!32972) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972)) (and s!2788 (= x!32973 x!32972) (= x!32972 x!32972)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972) (= x!32971 x!32972)) (and s!2792 (= x!32972 x!32972) (= x!32971 x!32972)) (and s!2794 (= x!32971 x!32972) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972)))))

(assert (=> (and m!87084 m!87090 m!87094 m!87096 m!87098) (or (and s!2786 (= x!32972 x!32971) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2790 (= x!32971 x!32971) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2788 (= x!32973 x!32971) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2792 (= x!32972 x!32971) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972))))))

(assert (=> (and m!87092 m!87084 m!87090 m!87094 m!87088) (or (and s!2786 (= x!32972 x!32972) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2790 (= x!32971 x!32972) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2800 (= x!32973 x!32972) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2788 (= x!32973 x!32972) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2792 (= x!32972 x!32972) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2794 (= x!32971 x!32972) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973))))))

(assert (=> (and m!87090 m!87084 m!87094) (or (and s!2786 (= x!32972 x!32971) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 x!32971)) (and s!2790 (= x!32971 x!32971) (= x!32972 x!32971)) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 x!32971) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 x!32971)) (and s!2792 (= x!32972 x!32971) (= x!32971 x!32971)) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> (and m!87094 m!87088 m!87092) (or (and s!2786 (= x!32972 x!32973) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 x!32971)) (and s!2790 (= x!32971 x!32973) (= x!32972 x!32971)) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 x!32973) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 x!32971)) (and s!2792 (= x!32972 x!32973) (= x!32971 x!32971)) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> (and m!87098 m!87090 m!87096) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973))))))

(assert (=> (and m!87092 m!87084 m!87094 m!87088 m!87096) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 x!32972)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 x!32972)) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 x!32972)) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972)) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 x!32972)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 x!32972)) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 x!32972)) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972)))))

(assert (=> (and m!87094 m!87088 m!87092 m!87084) (or (and s!2786 (= x!32972 x!32972) (= x!32973 x!32972)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972) (= x!32973 x!32972)) (and s!2790 (= x!32971 x!32972) (= x!32972 x!32972)) (and s!2800 (= x!32973 x!32972) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972)) (and s!2788 (= x!32973 x!32972) (= x!32972 x!32972)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972) (= x!32971 x!32972)) (and s!2792 (= x!32972 x!32972) (= x!32971 x!32972)) (and s!2794 (= x!32971 x!32972) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972)))))

(assert (=> (and m!87098 m!87086) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972))))))

(assert (=> (and m!87084 m!87090 m!87094 m!87096 m!87098) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 x!32971)) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 x!32971)) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 x!32971)) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 x!32971)) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> (and m!87098 m!87090 m!87096) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 x!32973)) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 x!32973)) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 x!32973)) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 x!32973)) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> (and m!87090 m!87088 m!87092) (or (and s!2786 (= x!32972 x!32971) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 x!32973)) (and s!2790 (= x!32971 x!32971) (= x!32972 x!32973)) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 x!32971) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 x!32973)) (and s!2792 (= x!32972 x!32971) (= x!32971 x!32973)) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> (and m!87098 m!87090 m!87096) (or (and s!2786 (= x!32972 x!32973) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2790 (= x!32971 x!32973) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2788 (= x!32973 x!32973) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2792 (= x!32972 x!32973) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973))))))

(assert (=> (and m!87096 m!87088 m!87092) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 x!32973)) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 x!32973)) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 x!32973)) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 x!32973)) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> (and m!87094 m!87088 m!87092) (or (and s!2786 (= x!32972 x!32971) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 x!32973)) (and s!2790 (= x!32971 x!32971) (= x!32972 x!32973)) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 x!32971) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 x!32973)) (and s!2792 (= x!32972 x!32971) (= x!32971 x!32973)) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> (and m!87092 m!87084 m!87094 m!87088 m!87096) (or (and s!2786 (= x!32972 x!32972) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2790 (= x!32971 x!32972) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2800 (= x!32973 x!32972) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2788 (= x!32973 x!32972) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2792 (= x!32972 x!32972) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2794 (= x!32971 x!32972) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973))))))

(assert (=> (and m!87096 m!87088 m!87092) (or (and s!2786 (= x!32972 x!32973) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 x!32971)) (and s!2790 (= x!32971 x!32973) (= x!32972 x!32971)) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 x!32973) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 x!32971)) (and s!2792 (= x!32972 x!32973) (= x!32971 x!32971)) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> (and m!87092 m!87084 m!87094 m!87088 m!87086) (or (and s!2786 (= x!32972 x!32972) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2790 (= x!32971 x!32972) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2800 (= x!32973 x!32972) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2788 (= x!32973 x!32972) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2792 (= x!32972 x!32972) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2794 (= x!32971 x!32972) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972))))))

(assert (=> m!87090 (or (and s!2786 (= x!32972 x!32971) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 x!32971)) (and s!2790 (= x!32971 x!32971) (= x!32972 x!32971)) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 x!32971) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 x!32971)) (and s!2792 (= x!32972 x!32971) (= x!32971 x!32971)) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> (and m!87084 m!87090 m!87094 m!87096 m!87086) (or (and s!2786 (= x!32972 x!32971) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 x!32973)) (and s!2790 (= x!32971 x!32971) (= x!32972 x!32973)) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 x!32971) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 x!32973)) (and s!2792 (= x!32972 x!32971) (= x!32971 x!32973)) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> (and m!87090 m!87088 m!87092) (or (and s!2786 (= x!32972 x!32973) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 x!32971)) (and s!2790 (= x!32971 x!32973) (= x!32972 x!32971)) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 x!32973) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 x!32971)) (and s!2792 (= x!32972 x!32973) (= x!32971 x!32971)) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> (and m!87084 m!87090 m!87094 m!87096 m!87086) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 x!32971)) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 x!32971)) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 x!32971)) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 x!32971)) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> m!87088 (or (and s!2786 (= x!32972 x!32973) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 x!32973)) (and s!2790 (= x!32971 x!32973) (= x!32972 x!32973)) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 x!32973) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 x!32973)) (and s!2792 (= x!32972 x!32973) (= x!32971 x!32973)) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> m!87088 (or (and s!2786 (= x!32972 x!32972) (= x!32973 x!32972)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972) (= x!32973 x!32972)) (and s!2790 (= x!32971 x!32972) (= x!32972 x!32972)) (and s!2800 (= x!32973 x!32972) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972)) (and s!2788 (= x!32973 x!32972) (= x!32972 x!32972)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972) (= x!32971 x!32972)) (and s!2792 (= x!32972 x!32972) (= x!32971 x!32972)) (and s!2794 (= x!32971 x!32972) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972)))))

(assert (=> m!87086 (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972))))))

(assert (=> (and m!87096 m!87084 m!87094 m!87090) (or (and s!2786 (= x!32972 x!32971) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 x!32971)) (and s!2790 (= x!32971 x!32971) (= x!32972 x!32971)) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 x!32971) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 x!32971)) (and s!2792 (= x!32972 x!32971) (= x!32971 x!32971)) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> (and m!87086 m!87090 m!87096) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972))))))

(assert (=> (and m!87096 m!87088 m!87092) (or (and s!2786 (= x!32972 x!32973) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2790 (= x!32971 x!32973) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2788 (= x!32973 x!32973) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2792 (= x!32972 x!32973) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973))))))

(assert (=> m!87098 (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972))))))

(assert (=> m!87092 (or (and s!2786 (= x!32972 x!32972) (= x!32973 x!32972)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972) (= x!32973 x!32972)) (and s!2790 (= x!32971 x!32972) (= x!32972 x!32972)) (and s!2800 (= x!32973 x!32972) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972)) (and s!2788 (= x!32973 x!32972) (= x!32972 x!32972)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972) (= x!32971 x!32972)) (and s!2792 (= x!32972 x!32972) (= x!32971 x!32972)) (and s!2794 (= x!32971 x!32972) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972)))))

(assert (=> (and m!87084 m!87088 m!87092) (or (and s!2786 (= x!32972 x!32973) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 x!32971)) (and s!2790 (= x!32971 x!32973) (= x!32972 x!32971)) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 x!32973) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 x!32971)) (and s!2792 (= x!32972 x!32973) (= x!32971 x!32971)) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> m!87094 (or (and s!2786 (= x!32972 x!32971) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 x!32971)) (and s!2790 (= x!32971 x!32971) (= x!32972 x!32971)) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 x!32971) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 x!32971)) (and s!2792 (= x!32972 x!32971) (= x!32971 x!32971)) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> m!87084 (or (and s!2786 (= x!32972 x!32972) (= x!32973 x!32972)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972) (= x!32973 x!32972)) (and s!2790 (= x!32971 x!32972) (= x!32972 x!32972)) (and s!2800 (= x!32973 x!32972) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972)) (and s!2788 (= x!32973 x!32972) (= x!32972 x!32972)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972) (= x!32971 x!32972)) (and s!2792 (= x!32972 x!32972) (= x!32971 x!32972)) (and s!2794 (= x!32971 x!32972) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972)))))

(assert (=> m!87096 (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973))))))

(assert (=> (and m!87092 m!87084 m!87094 m!87088 m!87098) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 x!32972)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 x!32972)) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 x!32972)) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972)) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 x!32972)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 x!32972)) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 x!32972)) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972)))))

(assert (=> (and m!87090 m!87088 m!87092) (or (and s!2786 (= x!32972 x!32973) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2790 (= x!32971 x!32973) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2788 (= x!32973 x!32973) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2792 (= x!32972 x!32973) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973))))))

(assert (=> (and m!87098 m!87088 m!87092 m!87086) (or (and s!2786 (= x!32972 x!32973) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 x!32973)) (and s!2790 (= x!32971 x!32973) (= x!32972 x!32973)) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 x!32973) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 x!32973)) (and s!2792 (= x!32972 x!32973) (= x!32971 x!32973)) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> (and m!87096 m!87088 m!87092) (or (and s!2786 (= x!32972 x!32971) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 x!32973)) (and s!2790 (= x!32971 x!32971) (= x!32972 x!32973)) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 x!32971) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 x!32973)) (and s!2792 (= x!32972 x!32971) (= x!32971 x!32973)) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> m!87098 (or (and s!2786 (= x!32972 x!32973) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 x!32973)) (and s!2790 (= x!32971 x!32973) (= x!32972 x!32973)) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 x!32973) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 x!32973)) (and s!2792 (= x!32972 x!32973) (= x!32971 x!32973)) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> m!87096 (or (and s!2786 (= x!32972 x!32971) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 x!32971)) (and s!2790 (= x!32971 x!32971) (= x!32972 x!32971)) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 x!32971) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 x!32971)) (and s!2792 (= x!32972 x!32971) (= x!32971 x!32971)) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> m!87086 (or (and s!2786 (= x!32972 x!32973) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 x!32973)) (and s!2790 (= x!32971 x!32973) (= x!32972 x!32973)) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 x!32973) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 x!32973)) (and s!2792 (= x!32972 x!32973) (= x!32971 x!32973)) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> (and m!87084 m!87090 m!87094 m!87096 m!87098) (or (and s!2786 (= x!32972 x!32971) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 x!32973)) (and s!2790 (= x!32971 x!32971) (= x!32972 x!32973)) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 x!32971) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 x!32973)) (and s!2792 (= x!32972 x!32971) (= x!32971 x!32973)) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> m!87090 (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973))))))

(assert (=> (and m!87092 m!87084 m!87090 m!87094 m!87088) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 x!32972)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 x!32972)) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 x!32972)) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972)) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 x!32972)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 x!32972)) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 x!32972)) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972)))))

(assert (=> (and m!87096 m!87090) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973))))))

(assert (=> (and m!87086 m!87090 m!87096) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 x!32973)) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 x!32973)) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 x!32973)) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 x!32973)) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> m!87094 (or (and s!2786 (= x!32972 x!32972) (= x!32973 x!32972)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972) (= x!32973 x!32972)) (and s!2790 (= x!32971 x!32972) (= x!32972 x!32972)) (and s!2800 (= x!32973 x!32972) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972)) (and s!2788 (= x!32973 x!32972) (= x!32972 x!32972)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972) (= x!32971 x!32972)) (and s!2792 (= x!32972 x!32972) (= x!32971 x!32972)) (and s!2794 (= x!32971 x!32972) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972)))))

(assert (=> (and m!87084 m!87090 m!87094 m!87096 m!87098) (or (and s!2786 (= x!32972 x!32973) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 x!32971)) (and s!2790 (= x!32971 x!32973) (= x!32972 x!32971)) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 x!32973) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 x!32971)) (and s!2792 (= x!32972 x!32973) (= x!32971 x!32971)) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> (and m!87086 m!87090 m!87096) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973))))))

(assert (=> m!87084 (or (and s!2786 (= x!32972 x!32971) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 x!32971)) (and s!2790 (= x!32971 x!32971) (= x!32972 x!32971)) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 x!32971) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 x!32971)) (and s!2792 (= x!32972 x!32971) (= x!32971 x!32971)) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> (and m!87094 m!87084) (or (and s!2786 (= x!32972 x!32971) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 x!32971)) (and s!2790 (= x!32971 x!32971) (= x!32972 x!32971)) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 x!32971) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 x!32971)) (and s!2792 (= x!32972 x!32971) (= x!32971 x!32971)) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> (and m!87092 m!87084 m!87094 m!87088 m!87098) (or (and s!2786 (= x!32972 x!32972) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2790 (= x!32971 x!32972) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2800 (= x!32973 x!32972) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2788 (= x!32973 x!32972) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2792 (= x!32972 x!32972) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2794 (= x!32971 x!32972) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972))))))

(assert (=> (and m!87084 m!87090 m!87094 m!87096 m!87086) (or (and s!2786 (= x!32972 x!32971) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2790 (= x!32971 x!32971) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2788 (= x!32973 x!32971) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2792 (= x!32972 x!32971) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972))))))

(assert (=> (and m!87098 m!87090 m!87096) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972))) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972))))))

(assert (=> (and m!87086 m!87088 m!87092) (or (and s!2786 (= x!32972 x!32973) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 x!32973)) (and s!2790 (= x!32971 x!32973) (= x!32972 x!32973)) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 x!32973) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 x!32973)) (and s!2792 (= x!32972 x!32973) (= x!32971 x!32973)) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> (and m!87092 m!87084 m!87094 m!87088 m!87086) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 x!32972)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32973 x!32972)) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 x!32972)) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972)) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32972 x!32972)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 x!32972)) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32971 x!32972)) (= x!32971 x!32972)) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32971 x!32972)) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972)))))

(assert (=> (and m!87086 m!87090 m!87096) (or (and s!2786 (= x!32972 x!32973) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2790 (= x!32971 x!32973) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2788 (= x!32973 x!32973) (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2792 (= x!32972 x!32973) (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973))) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973))))))

(assert (=> (and m!87084 m!87090 m!87094 m!87096 m!87086) (or (and s!2786 (= x!32972 x!32973) (= x!32973 x!32971)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 x!32971)) (and s!2790 (= x!32971 x!32973) (= x!32972 x!32971)) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971)) (and s!2788 (= x!32973 x!32973) (= x!32972 x!32971)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 x!32971)) (and s!2792 (= x!32972 x!32973) (= x!32971 x!32971)) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971)))))

(assert (=> (and m!87090 m!87088 m!87092) (or (and s!2786 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32973 x!32973)) (and s!2790 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 x!32973)) (and s!2800 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 x!32973)) (and s!2792 (= x!32972 (dynLambda!1132 f!5282 x!32972 x!32973)) (= x!32971 x!32973)) (and s!2794 (= x!32971 (dynLambda!1132 f!5282 x!32972 x!32973)) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> m!87092 (or (and s!2786 (= x!32972 x!32973) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973) (= x!32973 x!32973)) (and s!2790 (= x!32971 x!32973) (= x!32972 x!32973)) (and s!2800 (= x!32973 x!32973) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 x!32973) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973) (= x!32971 x!32973)) (and s!2792 (= x!32972 x!32973) (= x!32971 x!32973)) (and s!2794 (= x!32971 x!32973) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(assert (=> (and m!87092 m!87088) (or (and s!2786 (= x!32972 x!32972) (= x!32973 x!32972)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972) (= x!32973 x!32972)) (and s!2790 (= x!32971 x!32972) (= x!32972 x!32972)) (and s!2800 (= x!32973 x!32972) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32972)) (and s!2788 (= x!32973 x!32972) (= x!32972 x!32972)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972) (= x!32971 x!32972)) (and s!2792 (= x!32972 x!32972) (= x!32971 x!32972)) (and s!2794 (= x!32971 x!32972) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32972)))))

(assert (=> (and m!87084 m!87088 m!87092) (or (and s!2786 (= x!32972 x!32971) (= x!32973 x!32973)) (and s!2798 (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32971) (= x!32973 x!32973)) (and s!2790 (= x!32971 x!32971) (= x!32972 x!32973)) (and s!2800 (= x!32973 x!32971) (= (dynLambda!1132 f!5282 x!32971 x!32972) x!32973)) (and s!2788 (= x!32973 x!32971) (= x!32972 x!32973)) (and s!2796 (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32971) (= x!32971 x!32973)) (and s!2792 (= x!32972 x!32971) (= x!32971 x!32973)) (and s!2794 (= x!32971 x!32971) (= (dynLambda!1132 f!5282 x!32972 x!32973) x!32973)))))

(check-sat)

(get-model)

(pop 1)

