; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7902 () Bool)

(assert start!7902)

(declare-fun b_free!7275 () Bool)

(declare-fun b_next!38987 () Bool)

(assert (=> start!7902 (= b_free!7275 (not b_next!38987))))

(declare-fun tp!16103 () Bool)

(declare-fun b_and!58491 () Bool)

(assert (=> start!7902 (= tp!16103 b_and!58491)))

(declare-fun b!56942 () Bool)

(declare-fun b_next!38989 () Bool)

(declare-fun A!2194 () Int)

(declare-fun lambda!8996 () Int)

(assert (=> start!7902 (= b_next!38987 (or (and b!56942 (= lambda!8996 A!2194)) b_next!38989))))

(declare-fun bs!35762 () Bool)

(declare-fun b!56932 () Bool)

(assert (= bs!35762 (and b!56932 b!56942)))

(declare-fun lambda!8997 () Int)

(assert (=> bs!35762 (= lambda!8997 lambda!8996)))

(declare-fun b_next!38991 () Bool)

(assert (=> start!7902 (= b_next!38989 (or (and b!56932 (= lambda!8997 A!2194)) b_next!38991))))

(declare-fun bs!35763 () Bool)

(declare-fun b!56947 () Bool)

(assert (= bs!35763 (and b!56947 b!56942)))

(declare-fun lambda!8998 () Int)

(assert (=> bs!35763 (= lambda!8998 lambda!8996)))

(declare-fun bs!35764 () Bool)

(assert (= bs!35764 (and b!56947 b!56932)))

(assert (=> bs!35764 (= lambda!8998 lambda!8997)))

(declare-fun b_next!38993 () Bool)

(assert (=> start!7902 (= b_next!38991 (or (and b!56947 (= lambda!8998 A!2194)) b_next!38993))))

(declare-fun bs!35765 () Bool)

(declare-fun b!56931 () Bool)

(assert (= bs!35765 (and b!56931 b!56942)))

(declare-fun lambda!8999 () Int)

(assert (=> bs!35765 (= lambda!8999 lambda!8996)))

(declare-fun bs!35766 () Bool)

(assert (= bs!35766 (and b!56931 b!56932)))

(assert (=> bs!35766 (= lambda!8999 lambda!8997)))

(declare-fun bs!35767 () Bool)

(assert (= bs!35767 (and b!56931 b!56947)))

(assert (=> bs!35767 (= lambda!8999 lambda!8998)))

(declare-fun b_next!38995 () Bool)

(assert (=> start!7902 (= b_next!38993 (or (and b!56931 (= lambda!8999 A!2194)) b_next!38995))))

(declare-fun b!56930 () Bool)

(declare-fun res!26334 () Bool)

(declare-fun e!30204 () Bool)

(assert (=> b!56930 (=> (not res!26334) (not e!30204))))

(declare-datatypes () ((Option!311 (Some!300 (v!2047 Object!263)) (None!301)) (Object!263 (BigIntStructure!11) (StructureExt!11 (__x!141 Int)) (OptionStructure!11 (ev!21 Object!263)) (Option!312 (value!4093 Option!311)) (Integer!252 (value!4094 Int)) (Open!263 (value!4095 Int)))))

(declare-fun y!1782 () Object!263)

(declare-fun dynLambda!915 (Int Object!263) Bool)

(assert (=> b!56930 (= res!26334 (dynLambda!915 A!2194 y!1782))))

(declare-fun tp!16104 () Bool)

(declare-fun lt!10440 () Object!263)

(declare-fun e!30207 () Bool)

(declare-fun isStructure!0 (Object!263 Int) Bool)

(assert (=> b!56931 (= e!30207 (and tp!16104 (isStructure!0 lt!10440 lambda!8999)))))

(declare-fun thiss!8058 () Object!263)

(assert (=> b!56931 (= lt!10440 (ev!21 thiss!8058))))

(declare-fun tp!16101 () Bool)

(declare-fun lt!10444 () Object!263)

(declare-fun e!30201 () Bool)

(assert (=> b!56932 (= e!30201 (and tp!16101 (isStructure!0 lt!10444 lambda!8997)))))

(assert (=> b!56932 (= lt!10444 (ev!21 y!1782))))

(declare-fun b!56933 () Bool)

(declare-fun e!30205 () Bool)

(declare-fun tp!16099 () Bool)

(assert (=> b!56933 (= e!30205 tp!16099)))

(declare-fun b!56934 () Bool)

(declare-fun e!30202 () Bool)

(declare-fun tp!16100 () Bool)

(assert (=> b!56934 (= e!30202 tp!16100)))

(declare-fun res!26341 () Bool)

(assert (=> start!7902 (=> (not res!26341) (not e!30204))))

(assert (=> start!7902 (= res!26341 (isStructure!0 thiss!8058 A!2194))))

(assert (=> start!7902 e!30204))

(assert (=> start!7902 true))

(declare-fun lt!10446 () Object!263)

(assert (=> start!7902 (= lt!10446 y!1782)))

(assert (=> start!7902 (and e!30201 (dynLambda!915 A!2194 lt!10446))))

(assert (=> start!7902 tp!16103))

(declare-fun lt!10442 () Object!263)

(declare-fun x!24384 () Object!263)

(assert (=> start!7902 (= lt!10442 x!24384)))

(declare-fun e!30199 () Bool)

(assert (=> start!7902 (and e!30199 (dynLambda!915 A!2194 lt!10442))))

(declare-fun lt!10443 () Object!263)

(assert (=> start!7902 (= lt!10443 thiss!8058)))

(assert (=> start!7902 (and e!30207 (isStructure!0 lt!10443 A!2194))))

(declare-fun b!56935 () Bool)

(declare-fun e!30206 () Bool)

(declare-fun tp!16102 () Bool)

(assert (=> b!56935 (= e!30206 tp!16102)))

(declare-fun b!56936 () Bool)

(assert (=> b!56936 (= e!30207 e!30206)))

(declare-fun b!56937 () Bool)

(declare-fun res!26339 () Bool)

(assert (=> b!56937 (=> (not res!26339) (not e!30204))))

(declare-fun isBigIntStructure!0 (Object!263) Bool)

(assert (=> b!56937 (= res!26339 (not (isBigIntStructure!0 thiss!8058)))))

(declare-fun b!56938 () Bool)

(declare-fun res!26337 () Bool)

(assert (=> b!56938 (=> (not res!26337) (not e!30204))))

(declare-fun isStructureExt!0 (Object!263 Int) Bool)

(assert (=> b!56938 (= res!26337 (not (isStructureExt!0 thiss!8058 A!2194)))))

(declare-fun b!56939 () Bool)

(declare-fun e!30200 () Bool)

(declare-fun lt!10445 () Bool)

(assert (=> b!56939 (= e!30200 (not lt!10445))))

(declare-fun someLaw!7 (Object!263 Object!263 Object!263) Bool)

(assert (=> b!56939 (= lt!10445 (someLaw!7 thiss!8058 x!24384 y!1782))))

(declare-fun doSomething!1 (Int Object!263 Object!263 Object!263) Object!263)

(assert (=> b!56939 (= lt!10445 (= (doSomething!1 A!2194 thiss!8058 x!24384 y!1782) (doSomething!1 A!2194 thiss!8058 y!1782 x!24384)))))

(declare-fun b!56940 () Bool)

(declare-fun res!26335 () Bool)

(assert (=> b!56940 (=> (not res!26335) (not e!30204))))

(assert (=> b!56940 (= res!26335 (dynLambda!915 A!2194 x!24384))))

(declare-fun b!56941 () Bool)

(assert (=> b!56941 (= e!30201 e!30205)))

(declare-fun res!26338 () Bool)

(assert (=> b!56942 (=> (not res!26338) (not e!30204))))

(declare-fun res!25609 () Bool)

(declare-fun someLaw!2 (Int Object!263 Option!311 Option!311) Bool)

(assert (=> b!56942 (= res!26338 (= res!25609 (someLaw!2 lambda!8996 thiss!8058 (value!4093 x!24384) (value!4093 y!1782))))))

(declare-fun e!30203 () Bool)

(assert (=> b!56942 e!30203))

(declare-fun res!26336 () Bool)

(assert (=> b!56942 (=> (not res!26336) (not e!30203))))

(assert (=> b!56942 (= res!26336 (is-Option!312 y!1782))))

(declare-fun e!30198 () Bool)

(assert (=> b!56942 e!30198))

(declare-fun res!26340 () Bool)

(assert (=> b!56942 (=> (not res!26340) (not e!30198))))

(assert (=> b!56942 (= res!26340 (is-Option!312 x!24384))))

(declare-fun b!56943 () Bool)

(assert (=> b!56943 (= e!30204 e!30200)))

(declare-fun res!26333 () Bool)

(assert (=> b!56943 (=> res!26333 e!30200)))

(assert (=> b!56943 (= res!26333 (not res!25609))))

(declare-fun b!56944 () Bool)

(declare-fun isOption!19 (Option!311 Int) Bool)

(assert (=> b!56944 (= e!30198 (isOption!19 (value!4093 x!24384) lambda!8996))))

(declare-fun b!56945 () Bool)

(assert (=> b!56945 (= e!30199 e!30202)))

(declare-fun b!56946 () Bool)

(assert (=> b!56946 (= e!30203 (isOption!19 (value!4093 y!1782) lambda!8996))))

(declare-fun lt!10441 () Object!263)

(declare-fun tp!16105 () Bool)

(assert (=> b!56947 (= e!30199 (and tp!16105 (isStructure!0 lt!10441 lambda!8998)))))

(assert (=> b!56947 (= lt!10441 (ev!21 x!24384))))

(assert (= (and start!7902 res!26341) b!56940))

(assert (= (and b!56940 res!26335) b!56930))

(assert (= (and b!56930 res!26334) b!56937))

(assert (= (and b!56937 res!26339) b!56938))

(assert (= (and b!56938 res!26337) b!56942))

(assert (= (and b!56942 res!26340) b!56944))

(assert (= (and b!56942 res!26336) b!56946))

(assert (= (and b!56942 res!26338) b!56943))

(assert (= (and b!56943 (not res!26333)) b!56939))

(assert (= (and start!7902 (is-OptionStructure!11 y!1782)) b!56932))

(assert (= (and b!56941 (is-Some!300 (value!4093 y!1782))) b!56933))

(assert (= (and start!7902 (is-Option!312 y!1782)) b!56941))

(assert (= (and start!7902 (is-OptionStructure!11 x!24384)) b!56947))

(assert (= (and b!56945 (is-Some!300 (value!4093 x!24384))) b!56934))

(assert (= (and start!7902 (is-Option!312 x!24384)) b!56945))

(assert (= (and start!7902 (is-OptionStructure!11 thiss!8058)) b!56931))

(assert (= (and b!56936 (is-Some!300 (value!4093 thiss!8058))) b!56935))

(assert (= (and start!7902 (is-Option!312 thiss!8058)) b!56936))

(declare-fun b_lambda!15245 () Bool)

(assert (=> (not b_lambda!15245) (not b!56930)))

(declare-fun t!47028 () Bool)

(declare-fun tb!46027 () Bool)

(assert (=> (and start!7902 (= A!2194 A!2194) t!47028) tb!46027))

(declare-fun result!46387 () Bool)

(assert (=> tb!46027 (= result!46387 true)))

(assert (=> b!56930 t!47028))

(declare-fun b_and!58493 () Bool)

(assert (= b_and!58491 (and (=> t!47028 result!46387) b_and!58493)))

(declare-fun b_lambda!15247 () Bool)

(assert (=> (not b_lambda!15247) (not start!7902)))

(declare-fun t!47030 () Bool)

(declare-fun tb!46029 () Bool)

(assert (=> (and start!7902 (= A!2194 A!2194) t!47030) tb!46029))

(declare-fun result!46389 () Bool)

(assert (=> tb!46029 (= result!46389 true)))

(assert (=> start!7902 t!47030))

(declare-fun b_and!58495 () Bool)

(assert (= b_and!58493 (and (=> t!47030 result!46389) b_and!58495)))

(declare-fun b_lambda!15249 () Bool)

(assert (=> (not b_lambda!15249) (not start!7902)))

(declare-fun t!47032 () Bool)

(declare-fun tb!46031 () Bool)

(assert (=> (and start!7902 (= A!2194 A!2194) t!47032) tb!46031))

(declare-fun result!46391 () Bool)

(assert (=> tb!46031 (= result!46391 true)))

(assert (=> start!7902 t!47032))

(declare-fun b_and!58497 () Bool)

(assert (= b_and!58495 (and (=> t!47032 result!46391) b_and!58497)))

(declare-fun b_lambda!15251 () Bool)

(assert (=> (not b_lambda!15251) (not b!56940)))

(declare-fun t!47034 () Bool)

(declare-fun tb!46033 () Bool)

(assert (=> (and start!7902 (= A!2194 A!2194) t!47034) tb!46033))

(declare-fun result!46393 () Bool)

(assert (=> tb!46033 (= result!46393 true)))

(assert (=> b!56940 t!47034))

(declare-fun b_and!58499 () Bool)

(assert (= b_and!58497 (and (=> t!47034 result!46393) b_and!58499)))

(declare-fun m!61816 () Bool)

(assert (=> b!56937 m!61816))

(declare-fun m!61818 () Bool)

(assert (=> b!56938 m!61818))

(declare-fun m!61820 () Bool)

(assert (=> b!56932 m!61820))

(declare-fun m!61822 () Bool)

(assert (=> start!7902 m!61822))

(declare-fun m!61824 () Bool)

(assert (=> start!7902 m!61824))

(declare-fun m!61826 () Bool)

(assert (=> start!7902 m!61826))

(declare-fun m!61828 () Bool)

(assert (=> start!7902 m!61828))

(declare-fun m!61830 () Bool)

(assert (=> b!56930 m!61830))

(declare-fun m!61832 () Bool)

(assert (=> b!56940 m!61832))

(declare-fun m!61834 () Bool)

(assert (=> b!56946 m!61834))

(declare-fun m!61836 () Bool)

(assert (=> b!56947 m!61836))

(declare-fun m!61838 () Bool)

(assert (=> b!56944 m!61838))

(declare-fun m!61840 () Bool)

(assert (=> b!56939 m!61840))

(declare-fun m!61842 () Bool)

(assert (=> b!56939 m!61842))

(declare-fun m!61844 () Bool)

(assert (=> b!56939 m!61844))

(declare-fun m!61846 () Bool)

(assert (=> b!56942 m!61846))

(declare-fun m!61848 () Bool)

(assert (=> b!56931 m!61848))

(push 1)

(assert (not b!56938))

(assert (not b!56946))

(assert (not b_next!38995))

(assert (not b_lambda!15247))

(assert (not b!56947))

(assert (not b_lambda!15251))

(assert (not b!56937))

(assert (not start!7902))

(assert (not b!56933))

(assert (not b!56944))

(assert (not b!56939))

(assert b_and!58499)

(assert (not b!56935))

(assert (not b!56942))

(assert (not b_lambda!15245))

(assert (not b!56932))

(assert (not b!56934))

(assert (not b_lambda!15249))

(assert (not b!56931))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58499)

(assert (not b_next!38995))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15253 () Bool)

(assert (= b_lambda!15247 (or (and b!56947 (= lambda!8998 A!2194)) (and b!56932 (= lambda!8997 A!2194)) (and start!7902 b_free!7275) (and b!56942 (= lambda!8996 A!2194)) (and b!56931 (= lambda!8999 A!2194)) b_lambda!15253)))

(declare-fun bs!35768 () Bool)

(declare-fun d!49894 () Bool)

(assert (= bs!35768 (and d!49894 b!56931)))

(assert (=> bs!35768 (= (dynLambda!915 lambda!8999 lt!10446) true)))

(assert (=> (and b!56931 (= lambda!8999 A!2194) start!7902) d!49894))

(declare-fun bs!35769 () Bool)

(declare-fun d!49896 () Bool)

(assert (= bs!35769 (and d!49896 b!56947)))

(assert (=> bs!35769 (= (dynLambda!915 lambda!8998 lt!10446) true)))

(assert (=> (and b!56947 (= lambda!8998 A!2194) start!7902) d!49896))

(declare-fun bs!35770 () Bool)

(declare-fun d!49898 () Bool)

(assert (= bs!35770 (and d!49898 b!56932)))

(assert (=> bs!35770 (= (dynLambda!915 lambda!8997 lt!10446) true)))

(assert (=> (and b!56932 (= lambda!8997 A!2194) start!7902) d!49898))

(declare-fun bs!35771 () Bool)

(declare-fun d!49900 () Bool)

(assert (= bs!35771 (and d!49900 b!56942)))

(assert (=> bs!35771 (= (dynLambda!915 lambda!8996 lt!10446) true)))

(assert (=> (and b!56942 (= lambda!8996 A!2194) start!7902) d!49900))

(declare-fun b_lambda!15255 () Bool)

(assert (= b_lambda!15245 (or (and b!56947 (= lambda!8998 A!2194)) (and b!56932 (= lambda!8997 A!2194)) (and start!7902 b_free!7275) (and b!56942 (= lambda!8996 A!2194)) (and b!56931 (= lambda!8999 A!2194)) b_lambda!15255)))

(declare-fun bs!35772 () Bool)

(declare-fun d!49902 () Bool)

(assert (= bs!35772 (and d!49902 b!56932)))

(assert (=> bs!35772 (= (dynLambda!915 lambda!8997 y!1782) true)))

(assert (=> (and b!56932 (= lambda!8997 A!2194) b!56930) d!49902))

(declare-fun bs!35773 () Bool)

(declare-fun d!49904 () Bool)

(assert (= bs!35773 (and d!49904 b!56931)))

(assert (=> bs!35773 (= (dynLambda!915 lambda!8999 y!1782) true)))

(assert (=> (and b!56931 (= lambda!8999 A!2194) b!56930) d!49904))

(declare-fun bs!35774 () Bool)

(declare-fun d!49906 () Bool)

(assert (= bs!35774 (and d!49906 b!56942)))

(assert (=> bs!35774 (= (dynLambda!915 lambda!8996 y!1782) true)))

(assert (=> (and b!56942 (= lambda!8996 A!2194) b!56930) d!49906))

(declare-fun bs!35775 () Bool)

(declare-fun d!49908 () Bool)

(assert (= bs!35775 (and d!49908 b!56947)))

(assert (=> bs!35775 (= (dynLambda!915 lambda!8998 y!1782) true)))

(assert (=> (and b!56947 (= lambda!8998 A!2194) b!56930) d!49908))

(declare-fun b_lambda!15257 () Bool)

(assert (= b_lambda!15249 (or (and b!56947 (= lambda!8998 A!2194)) (and b!56932 (= lambda!8997 A!2194)) (and start!7902 b_free!7275) (and b!56942 (= lambda!8996 A!2194)) (and b!56931 (= lambda!8999 A!2194)) b_lambda!15257)))

(declare-fun bs!35776 () Bool)

(declare-fun d!49910 () Bool)

(assert (= bs!35776 (and d!49910 b!56947)))

(assert (=> bs!35776 (= (dynLambda!915 lambda!8998 lt!10442) true)))

(assert (=> (and b!56947 (= lambda!8998 A!2194) start!7902) d!49910))

(declare-fun bs!35777 () Bool)

(declare-fun d!49912 () Bool)

(assert (= bs!35777 (and d!49912 b!56942)))

(assert (=> bs!35777 (= (dynLambda!915 lambda!8996 lt!10442) true)))

(assert (=> (and b!56942 (= lambda!8996 A!2194) start!7902) d!49912))

(declare-fun bs!35778 () Bool)

(declare-fun d!49914 () Bool)

(assert (= bs!35778 (and d!49914 b!56931)))

(assert (=> bs!35778 (= (dynLambda!915 lambda!8999 lt!10442) true)))

(assert (=> (and b!56931 (= lambda!8999 A!2194) start!7902) d!49914))

(declare-fun bs!35779 () Bool)

(declare-fun d!49916 () Bool)

(assert (= bs!35779 (and d!49916 b!56932)))

(assert (=> bs!35779 (= (dynLambda!915 lambda!8997 lt!10442) true)))

(assert (=> (and b!56932 (= lambda!8997 A!2194) start!7902) d!49916))

(declare-fun b_lambda!15259 () Bool)

(assert (= b_lambda!15251 (or (and b!56947 (= lambda!8998 A!2194)) (and b!56932 (= lambda!8997 A!2194)) (and start!7902 b_free!7275) (and b!56942 (= lambda!8996 A!2194)) (and b!56931 (= lambda!8999 A!2194)) b_lambda!15259)))

(declare-fun bs!35780 () Bool)

(declare-fun d!49918 () Bool)

(assert (= bs!35780 (and d!49918 b!56947)))

(assert (=> bs!35780 (= (dynLambda!915 lambda!8998 x!24384) true)))

(assert (=> (and b!56947 (= lambda!8998 A!2194) b!56940) d!49918))

(declare-fun bs!35781 () Bool)

(declare-fun d!49920 () Bool)

(assert (= bs!35781 (and d!49920 b!56932)))

(assert (=> bs!35781 (= (dynLambda!915 lambda!8997 x!24384) true)))

(assert (=> (and b!56932 (= lambda!8997 A!2194) b!56940) d!49920))

(declare-fun bs!35782 () Bool)

(declare-fun d!49922 () Bool)

(assert (= bs!35782 (and d!49922 b!56942)))

(assert (=> bs!35782 (= (dynLambda!915 lambda!8996 x!24384) true)))

(assert (=> (and b!56942 (= lambda!8996 A!2194) b!56940) d!49922))

(declare-fun bs!35783 () Bool)

(declare-fun d!49924 () Bool)

(assert (= bs!35783 (and d!49924 b!56931)))

(assert (=> bs!35783 (= (dynLambda!915 lambda!8999 x!24384) true)))

(assert (=> (and b!56931 (= lambda!8999 A!2194) b!56940) d!49924))

(push 1)

(assert (not b_lambda!15253))

(assert (not b_lambda!15255))

(assert (not b!56938))

(assert (not b!56946))

(assert (not b_next!38995))

(assert (not b!56947))

(assert (not b!56937))

(assert (not b_lambda!15257))

(assert (not start!7902))

(assert (not b!56933))

(assert (not b!56944))

(assert (not b_lambda!15259))

(assert (not b!56939))

(assert b_and!58499)

(assert (not b!56935))

(assert (not b!56942))

(assert (not b!56932))

(assert (not b!56934))

(assert (not b!56931))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58499)

(assert (not b_next!38995))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!49926 () Bool)

(assert (=> d!49926 true))

(assert (=> d!49926 true))

(declare-fun res!26344 () Bool)

(assert (=> d!49926 (= (someLaw!7 thiss!8058 x!24384 y!1782) res!26344)))

(assert (=> b!56939 d!49926))

(declare-fun bs!35784 () Bool)

(declare-fun b!56961 () Bool)

(assert (= bs!35784 (and b!56961 b!56942)))

(declare-fun lambda!9006 () Int)

(assert (=> bs!35784 (= lambda!9006 lambda!8996)))

(declare-fun bs!35785 () Bool)

(assert (= bs!35785 (and b!56961 b!56932)))

(assert (=> bs!35785 (= lambda!9006 lambda!8997)))

(declare-fun bs!35786 () Bool)

(assert (= bs!35786 (and b!56961 b!56947)))

(assert (=> bs!35786 (= lambda!9006 lambda!8998)))

(declare-fun bs!35787 () Bool)

(assert (= bs!35787 (and b!56961 b!56931)))

(assert (=> bs!35787 (= lambda!9006 lambda!8999)))

(declare-fun b_next!38997 () Bool)

(assert (=> start!7902 (= b_next!38995 (or (and b!56961 (= lambda!9006 A!2194)) b_next!38997))))

(declare-fun e!30216 () Object!263)

(declare-fun b!56960 () Bool)

(declare-fun doSomething!4 (Int Object!263 Object!263 Object!263) Object!263)

(assert (=> b!56960 (= e!30216 (doSomething!4 A!2194 thiss!8058 x!24384 y!1782))))

(declare-fun lt!10455 () Option!311)

(assert (=> b!56961 (= e!30216 (Option!312 lt!10455))))

(assert (=> b!56961 (dynLambda!915 A!2194 (Option!312 lt!10455))))

(declare-fun doSomething!3 (Int Object!263 Option!311 Option!311) Option!311)

(assert (=> b!56961 (= lt!10455 (doSomething!3 lambda!9006 thiss!8058 (value!4093 x!24384) (value!4093 y!1782)))))

(declare-fun e!30218 () Bool)

(assert (=> b!56961 e!30218))

(declare-fun res!26350 () Bool)

(assert (=> b!56961 (=> (not res!26350) (not e!30218))))

(assert (=> b!56961 (= res!26350 (is-Option!312 y!1782))))

(declare-fun e!30217 () Bool)

(assert (=> b!56961 e!30217))

(declare-fun res!26351 () Bool)

(assert (=> b!56961 (=> (not res!26351) (not e!30217))))

(assert (=> b!56961 (= res!26351 (is-Option!312 x!24384))))

(declare-fun b!56962 () Bool)

(assert (=> b!56962 (= e!30217 (isOption!19 (value!4093 x!24384) lambda!9006))))

(declare-fun lt!10454 () Object!263)

(declare-fun d!49928 () Bool)

(declare-fun doSomething!7 (Object!263 Object!263 Object!263) Object!263)

(assert (=> d!49928 (= lt!10454 (doSomething!7 thiss!8058 x!24384 y!1782))))

(declare-fun e!30219 () Object!263)

(assert (=> d!49928 (= lt!10454 e!30219)))

(declare-fun c!12165 () Bool)

(assert (=> d!49928 (= c!12165 (isBigIntStructure!0 thiss!8058))))

(assert (=> d!49928 (= (doSomething!1 A!2194 thiss!8058 x!24384 y!1782) lt!10454)))

(declare-fun b!56963 () Bool)

(assert (=> b!56963 (= e!30219 e!30216)))

(declare-fun c!12164 () Bool)

(assert (=> b!56963 (= c!12164 (isStructureExt!0 thiss!8058 A!2194))))

(declare-fun b!56964 () Bool)

(declare-fun lt!10453 () Int)

(assert (=> b!56964 (= e!30219 (Integer!252 lt!10453))))

(assert (=> b!56964 (dynLambda!915 A!2194 (Integer!252 lt!10453))))

(declare-fun doSomething!2 (Object!263 Int Int) Int)

(assert (=> b!56964 (= lt!10453 (doSomething!2 thiss!8058 (value!4094 x!24384) (value!4094 y!1782)))))

(assert (=> b!56964 (is-Integer!252 y!1782)))

(assert (=> b!56964 (is-Integer!252 x!24384)))

(declare-fun b!56965 () Bool)

(assert (=> b!56965 (= e!30218 (isOption!19 (value!4093 y!1782) lambda!9006))))

(assert (= (and b!56961 res!26351) b!56962))

(assert (= (and b!56961 res!26350) b!56965))

(assert (= (and b!56963 c!12164) b!56960))

(assert (= (and b!56963 (not c!12164)) b!56961))

(assert (= (and d!49928 c!12165) b!56964))

(assert (= (and d!49928 (not c!12165)) b!56963))

(declare-fun b_lambda!15261 () Bool)

(assert (=> (not b_lambda!15261) (not b!56961)))

(declare-fun t!47036 () Bool)

(declare-fun tb!46035 () Bool)

(assert (=> (and start!7902 (= A!2194 A!2194) t!47036) tb!46035))

(declare-fun result!46395 () Bool)

(assert (=> tb!46035 (= result!46395 true)))

(assert (=> b!56961 t!47036))

(declare-fun b_and!58501 () Bool)

(assert (= b_and!58499 (and (=> t!47036 result!46395) b_and!58501)))

(declare-fun b_lambda!15263 () Bool)

(assert (=> (not b_lambda!15263) (not b!56964)))

(declare-fun t!47038 () Bool)

(declare-fun tb!46037 () Bool)

(assert (=> (and start!7902 (= A!2194 A!2194) t!47038) tb!46037))

(declare-fun result!46397 () Bool)

(assert (=> tb!46037 (= result!46397 true)))

(assert (=> b!56964 t!47038))

(declare-fun b_and!58503 () Bool)

(assert (= b_and!58501 (and (=> t!47038 result!46397) b_and!58503)))

(declare-fun m!61850 () Bool)

(assert (=> b!56965 m!61850))

(declare-fun m!61852 () Bool)

(assert (=> b!56960 m!61852))

(declare-fun m!61854 () Bool)

(assert (=> b!56962 m!61854))

(assert (=> b!56963 m!61818))

(declare-fun m!61856 () Bool)

(assert (=> d!49928 m!61856))

(assert (=> d!49928 m!61816))

(declare-fun m!61858 () Bool)

(assert (=> b!56961 m!61858))

(declare-fun m!61860 () Bool)

(assert (=> b!56961 m!61860))

(declare-fun m!61862 () Bool)

(assert (=> b!56964 m!61862))

(declare-fun m!61864 () Bool)

(assert (=> b!56964 m!61864))

(assert (=> b!56939 d!49928))

(declare-fun bs!35788 () Bool)

(declare-fun b!56967 () Bool)

(assert (= bs!35788 (and b!56967 b!56947)))

(declare-fun lambda!9007 () Int)

(assert (=> bs!35788 (= lambda!9007 lambda!8998)))

(declare-fun bs!35789 () Bool)

(assert (= bs!35789 (and b!56967 b!56932)))

(assert (=> bs!35789 (= lambda!9007 lambda!8997)))

(declare-fun bs!35790 () Bool)

(assert (= bs!35790 (and b!56967 b!56931)))

(assert (=> bs!35790 (= lambda!9007 lambda!8999)))

(declare-fun bs!35791 () Bool)

(assert (= bs!35791 (and b!56967 b!56961)))

(assert (=> bs!35791 (= lambda!9007 lambda!9006)))

(declare-fun bs!35792 () Bool)

(assert (= bs!35792 (and b!56967 b!56942)))

(assert (=> bs!35792 (= lambda!9007 lambda!8996)))

(declare-fun b_next!38999 () Bool)

(assert (=> start!7902 (= b_next!38997 (or (and b!56967 (= lambda!9007 A!2194)) b_next!38999))))

(declare-fun b!56966 () Bool)

(declare-fun e!30220 () Object!263)

(assert (=> b!56966 (= e!30220 (doSomething!4 A!2194 thiss!8058 y!1782 x!24384))))

(declare-fun lt!10458 () Option!311)

(assert (=> b!56967 (= e!30220 (Option!312 lt!10458))))

(assert (=> b!56967 (dynLambda!915 A!2194 (Option!312 lt!10458))))

(assert (=> b!56967 (= lt!10458 (doSomething!3 lambda!9007 thiss!8058 (value!4093 y!1782) (value!4093 x!24384)))))

(declare-fun e!30222 () Bool)

(assert (=> b!56967 e!30222))

(declare-fun res!26352 () Bool)

(assert (=> b!56967 (=> (not res!26352) (not e!30222))))

(assert (=> b!56967 (= res!26352 (is-Option!312 x!24384))))

(declare-fun e!30221 () Bool)

(assert (=> b!56967 e!30221))

(declare-fun res!26353 () Bool)

(assert (=> b!56967 (=> (not res!26353) (not e!30221))))

(assert (=> b!56967 (= res!26353 (is-Option!312 y!1782))))

(declare-fun b!56968 () Bool)

(assert (=> b!56968 (= e!30221 (isOption!19 (value!4093 y!1782) lambda!9007))))

(declare-fun d!49930 () Bool)

(declare-fun lt!10457 () Object!263)

(assert (=> d!49930 (= lt!10457 (doSomething!7 thiss!8058 y!1782 x!24384))))

(declare-fun e!30223 () Object!263)

(assert (=> d!49930 (= lt!10457 e!30223)))

(declare-fun c!12167 () Bool)

(assert (=> d!49930 (= c!12167 (isBigIntStructure!0 thiss!8058))))

(assert (=> d!49930 (= (doSomething!1 A!2194 thiss!8058 y!1782 x!24384) lt!10457)))

(declare-fun b!56969 () Bool)

(assert (=> b!56969 (= e!30223 e!30220)))

(declare-fun c!12166 () Bool)

(assert (=> b!56969 (= c!12166 (isStructureExt!0 thiss!8058 A!2194))))

(declare-fun b!56970 () Bool)

(declare-fun lt!10456 () Int)

(assert (=> b!56970 (= e!30223 (Integer!252 lt!10456))))

(assert (=> b!56970 (dynLambda!915 A!2194 (Integer!252 lt!10456))))

(assert (=> b!56970 (= lt!10456 (doSomething!2 thiss!8058 (value!4094 y!1782) (value!4094 x!24384)))))

(assert (=> b!56970 (is-Integer!252 x!24384)))

(assert (=> b!56970 (is-Integer!252 y!1782)))

(declare-fun b!56971 () Bool)

(assert (=> b!56971 (= e!30222 (isOption!19 (value!4093 x!24384) lambda!9007))))

(assert (= (and b!56967 res!26353) b!56968))

(assert (= (and b!56967 res!26352) b!56971))

(assert (= (and b!56969 c!12166) b!56966))

(assert (= (and b!56969 (not c!12166)) b!56967))

(assert (= (and d!49930 c!12167) b!56970))

(assert (= (and d!49930 (not c!12167)) b!56969))

(declare-fun b_lambda!15265 () Bool)

(assert (=> (not b_lambda!15265) (not b!56967)))

(declare-fun t!47040 () Bool)

(declare-fun tb!46039 () Bool)

(assert (=> (and start!7902 (= A!2194 A!2194) t!47040) tb!46039))

(declare-fun result!46399 () Bool)

(assert (=> tb!46039 (= result!46399 true)))

(assert (=> b!56967 t!47040))

(declare-fun b_and!58505 () Bool)

(assert (= b_and!58503 (and (=> t!47040 result!46399) b_and!58505)))

(declare-fun b_lambda!15267 () Bool)

(assert (=> (not b_lambda!15267) (not b!56970)))

(declare-fun t!47042 () Bool)

(declare-fun tb!46041 () Bool)

(assert (=> (and start!7902 (= A!2194 A!2194) t!47042) tb!46041))

(declare-fun result!46401 () Bool)

(assert (=> tb!46041 (= result!46401 true)))

(assert (=> b!56970 t!47042))

(declare-fun b_and!58507 () Bool)

(assert (= b_and!58505 (and (=> t!47042 result!46401) b_and!58507)))

(declare-fun m!61866 () Bool)

(assert (=> b!56971 m!61866))

(declare-fun m!61868 () Bool)

(assert (=> b!56966 m!61868))

(declare-fun m!61870 () Bool)

(assert (=> b!56968 m!61870))

(assert (=> b!56969 m!61818))

(declare-fun m!61872 () Bool)

(assert (=> d!49930 m!61872))

(assert (=> d!49930 m!61816))

(declare-fun m!61874 () Bool)

(assert (=> b!56967 m!61874))

(declare-fun m!61876 () Bool)

(assert (=> b!56967 m!61876))

(declare-fun m!61878 () Bool)

(assert (=> b!56970 m!61878))

(declare-fun m!61880 () Bool)

(assert (=> b!56970 m!61880))

(assert (=> b!56939 d!49930))

(declare-fun bs!35793 () Bool)

(declare-fun d!49932 () Bool)

(assert (= bs!35793 (and d!49932 b!56947)))

(declare-fun lambda!9012 () Int)

(assert (=> bs!35793 (not (= lambda!9012 lambda!8998))))

(declare-fun bs!35794 () Bool)

(assert (= bs!35794 (and d!49932 b!56932)))

(assert (=> bs!35794 (not (= lambda!9012 lambda!8997))))

(declare-fun bs!35795 () Bool)

(assert (= bs!35795 (and d!49932 b!56931)))

(assert (=> bs!35795 (not (= lambda!9012 lambda!8999))))

(declare-fun bs!35796 () Bool)

(assert (= bs!35796 (and d!49932 b!56967)))

(assert (=> bs!35796 (not (= lambda!9012 lambda!9007))))

(declare-fun bs!35797 () Bool)

(assert (= bs!35797 (and d!49932 b!56961)))

(assert (=> bs!35797 (not (= lambda!9012 lambda!9006))))

(declare-fun bs!35798 () Bool)

(assert (= bs!35798 (and d!49932 b!56942)))

(assert (=> bs!35798 (not (= lambda!9012 lambda!8996))))

(assert (=> d!49932 true))

(declare-fun order!441 () Int)

(declare-fun dynLambda!916 (Int Int) Int)

(assert (=> d!49932 (< (dynLambda!916 order!441 lambda!8996) (dynLambda!916 order!441 lambda!9012))))

(declare-fun b_next!39001 () Bool)

(assert (=> start!7902 (= b_next!38999 (or (and d!49932 (= lambda!9012 A!2194)) b_next!39001))))

(declare-fun e!30232 () Bool)

(assert (=> d!49932 e!30232))

(declare-fun res!26367 () Bool)

(assert (=> d!49932 (=> (not res!26367) (not e!30232))))

(declare-fun lt!10478 () Bool)

(assert (=> d!49932 (= res!26367 lt!10478)))

(declare-fun lt!10474 () Bool)

(declare-fun e!30233 () Bool)

(declare-datatypes () ((ProofOps!314 (ProofOps!315 (prop!348 Bool)))))

(declare-fun because!1 (ProofOps!314 Bool) Bool)

(assert (=> d!49932 (= lt!10478 (because!1 (ProofOps!315 lt!10474) e!30233))))

(declare-fun res!26369 () Bool)

(assert (=> d!49932 (=> res!26369 e!30233)))

(assert (=> d!49932 (= res!26369 (or (and (is-None!301 (value!4093 x!24384)) (is-None!301 (value!4093 y!1782))) (is-None!301 (value!4093 y!1782)) (is-None!301 (value!4093 x!24384))))))

(declare-fun lt!10475 () Object!263)

(declare-fun lt!10479 () Object!263)

(assert (=> d!49932 (= lt!10474 (someLaw!7 thiss!8058 lt!10475 lt!10479))))

(assert (=> d!49932 (= lt!10474 (= (doSomething!1 lambda!9012 thiss!8058 lt!10475 lt!10479) (doSomething!1 lambda!9012 thiss!8058 lt!10479 lt!10475)))))

(assert (=> d!49932 (= lt!10479 (Option!312 (value!4093 y!1782)))))

(assert (=> d!49932 (= lt!10475 (Option!312 (value!4093 x!24384)))))

(assert (=> d!49932 (= (someLaw!2 lambda!8996 thiss!8058 (value!4093 x!24384) (value!4093 y!1782)) lt!10478)))

(declare-fun b!56982 () Bool)

(declare-fun someLaw!0 (Int Object!263 Object!263 Object!263) Bool)

(assert (=> b!56982 (= e!30233 (someLaw!0 lambda!8996 (ev!21 thiss!8058) (v!2047 (value!4093 x!24384)) (v!2047 (value!4093 y!1782))))))

(declare-fun b!56983 () Bool)

(declare-fun res!26368 () Bool)

(assert (=> b!56983 (=> (not res!26368) (not e!30232))))

(declare-fun lt!10476 () Bool)

(assert (=> b!56983 (= res!26368 lt!10476)))

(declare-fun lt!10477 () Object!263)

(declare-fun lt!10473 () Object!263)

(assert (=> b!56983 (= lt!10476 (someLaw!7 thiss!8058 lt!10477 lt!10473))))

(assert (=> b!56983 (= lt!10476 (= (doSomething!1 lambda!9012 thiss!8058 lt!10477 lt!10473) (doSomething!1 lambda!9012 thiss!8058 lt!10473 lt!10477)))))

(assert (=> b!56983 (= lt!10473 (Option!312 (value!4093 y!1782)))))

(assert (=> b!56983 (= lt!10477 (Option!312 (value!4093 x!24384)))))

(declare-fun b!56984 () Bool)

(declare-fun someLaw!6 (Object!263 Option!311 Option!311) Bool)

(assert (=> b!56984 (= e!30232 (= true (someLaw!6 thiss!8058 (value!4093 x!24384) (value!4093 y!1782))))))

(assert (= (and d!49932 (not res!26369)) b!56982))

(assert (= (and d!49932 res!26367) b!56983))

(assert (= (and b!56983 res!26368) b!56984))

(declare-fun m!61882 () Bool)

(assert (=> d!49932 m!61882))

(declare-fun m!61884 () Bool)

(assert (=> d!49932 m!61884))

(declare-fun m!61886 () Bool)

(assert (=> d!49932 m!61886))

(declare-fun m!61888 () Bool)

(assert (=> d!49932 m!61888))

(declare-fun m!61890 () Bool)

(assert (=> b!56982 m!61890))

(declare-fun m!61892 () Bool)

(assert (=> b!56983 m!61892))

(declare-fun m!61894 () Bool)

(assert (=> b!56983 m!61894))

(declare-fun m!61896 () Bool)

(assert (=> b!56983 m!61896))

(declare-fun m!61898 () Bool)

(assert (=> b!56984 m!61898))

(assert (=> b!56942 d!49932))

(declare-fun d!49934 () Bool)

(declare-fun res!26374 () Bool)

(declare-fun e!30238 () Bool)

(assert (=> d!49934 (=> res!26374 e!30238)))

(declare-fun e!30239 () Bool)

(assert (=> d!49934 (= res!26374 e!30239)))

(declare-fun res!26375 () Bool)

(assert (=> d!49934 (=> (not res!26375) (not e!30239))))

(assert (=> d!49934 (= res!26375 (is-Some!300 (value!4093 y!1782)))))

(assert (=> d!49934 (= (isOption!19 (value!4093 y!1782) lambda!8996) e!30238)))

(declare-fun b!56991 () Bool)

(assert (=> b!56991 (= e!30239 (dynLambda!915 lambda!8996 (v!2047 (value!4093 y!1782))))))

(declare-fun b!56992 () Bool)

(assert (=> b!56992 (= e!30238 (is-None!301 (value!4093 y!1782)))))

(assert (= (and d!49934 res!26375) b!56991))

(assert (= (and d!49934 (not res!26374)) b!56992))

(declare-fun b_lambda!15269 () Bool)

(assert (=> (not b_lambda!15269) (not b!56991)))

(declare-fun m!61900 () Bool)

(assert (=> b!56991 m!61900))

(assert (=> b!56946 d!49934))

(declare-fun bs!35799 () Bool)

(declare-fun b!56998 () Bool)

(assert (= bs!35799 (and b!56998 b!56947)))

(declare-fun lambda!9015 () Int)

(assert (=> bs!35799 (= lambda!9015 lambda!8998)))

(declare-fun bs!35800 () Bool)

(assert (= bs!35800 (and b!56998 b!56932)))

(assert (=> bs!35800 (= lambda!9015 lambda!8997)))

(declare-fun bs!35801 () Bool)

(assert (= bs!35801 (and b!56998 b!56931)))

(assert (=> bs!35801 (= lambda!9015 lambda!8999)))

(declare-fun bs!35802 () Bool)

(assert (= bs!35802 (and b!56998 b!56967)))

(assert (=> bs!35802 (= lambda!9015 lambda!9007)))

(declare-fun bs!35803 () Bool)

(assert (= bs!35803 (and b!56998 d!49932)))

(assert (=> bs!35803 (not (= lambda!9015 lambda!9012))))

(declare-fun bs!35804 () Bool)

(assert (= bs!35804 (and b!56998 b!56961)))

(assert (=> bs!35804 (= lambda!9015 lambda!9006)))

(declare-fun bs!35805 () Bool)

(assert (= bs!35805 (and b!56998 b!56942)))

(assert (=> bs!35805 (= lambda!9015 lambda!8996)))

(declare-fun b_next!39003 () Bool)

(assert (=> start!7902 (= b_next!39001 (or (and b!56998 (= lambda!9015 A!2194)) b_next!39003))))

(declare-fun d!49936 () Bool)

(declare-fun res!26380 () Bool)

(declare-fun e!30242 () Bool)

(assert (=> d!49936 (=> res!26380 e!30242)))

(assert (=> d!49936 (= res!26380 (isBigIntStructure!0 lt!10440))))

(assert (=> d!49936 (= (isStructure!0 lt!10440 lambda!8999) e!30242)))

(declare-fun b!56997 () Bool)

(declare-fun res!26381 () Bool)

(assert (=> b!56997 (=> res!26381 e!30242)))

(assert (=> b!56997 (= res!26381 (isStructureExt!0 lt!10440 lambda!8999))))

(declare-fun isOptionStructure!0 (Object!263 Int) Bool)

(assert (=> b!56998 (= e!30242 (isOptionStructure!0 lt!10440 lambda!9015))))

(assert (= (and d!49936 (not res!26380)) b!56997))

(assert (= (and b!56997 (not res!26381)) b!56998))

(declare-fun m!61902 () Bool)

(assert (=> d!49936 m!61902))

(declare-fun m!61904 () Bool)

(assert (=> b!56997 m!61904))

(declare-fun m!61906 () Bool)

(assert (=> b!56998 m!61906))

(assert (=> b!56931 d!49936))

(declare-fun bs!35806 () Bool)

(declare-fun b!57000 () Bool)

(assert (= bs!35806 (and b!57000 b!56947)))

(declare-fun lambda!9016 () Int)

(assert (=> bs!35806 (= lambda!9016 lambda!8998)))

(declare-fun bs!35807 () Bool)

(assert (= bs!35807 (and b!57000 b!56932)))

(assert (=> bs!35807 (= lambda!9016 lambda!8997)))

(declare-fun bs!35808 () Bool)

(assert (= bs!35808 (and b!57000 b!56931)))

(assert (=> bs!35808 (= lambda!9016 lambda!8999)))

(declare-fun bs!35809 () Bool)

(assert (= bs!35809 (and b!57000 b!56967)))

(assert (=> bs!35809 (= lambda!9016 lambda!9007)))

(declare-fun bs!35810 () Bool)

(assert (= bs!35810 (and b!57000 b!56998)))

(assert (=> bs!35810 (= lambda!9016 lambda!9015)))

(declare-fun bs!35811 () Bool)

(assert (= bs!35811 (and b!57000 d!49932)))

(assert (=> bs!35811 (not (= lambda!9016 lambda!9012))))

(declare-fun bs!35812 () Bool)

(assert (= bs!35812 (and b!57000 b!56961)))

(assert (=> bs!35812 (= lambda!9016 lambda!9006)))

(declare-fun bs!35813 () Bool)

(assert (= bs!35813 (and b!57000 b!56942)))

(assert (=> bs!35813 (= lambda!9016 lambda!8996)))

(declare-fun b_next!39005 () Bool)

(assert (=> start!7902 (= b_next!39003 (or (and b!57000 (= lambda!9016 A!2194)) b_next!39005))))

(declare-fun d!49938 () Bool)

(declare-fun res!26382 () Bool)

(declare-fun e!30243 () Bool)

(assert (=> d!49938 (=> res!26382 e!30243)))

(assert (=> d!49938 (= res!26382 (isBigIntStructure!0 lt!10444))))

(assert (=> d!49938 (= (isStructure!0 lt!10444 lambda!8997) e!30243)))

(declare-fun b!56999 () Bool)

(declare-fun res!26383 () Bool)

(assert (=> b!56999 (=> res!26383 e!30243)))

(assert (=> b!56999 (= res!26383 (isStructureExt!0 lt!10444 lambda!8997))))

(assert (=> b!57000 (= e!30243 (isOptionStructure!0 lt!10444 lambda!9016))))

(assert (= (and d!49938 (not res!26382)) b!56999))

(assert (= (and b!56999 (not res!26383)) b!57000))

(declare-fun m!61908 () Bool)

(assert (=> d!49938 m!61908))

(declare-fun m!61910 () Bool)

(assert (=> b!56999 m!61910))

(declare-fun m!61912 () Bool)

(assert (=> b!57000 m!61912))

(assert (=> b!56932 d!49938))

(declare-fun bs!35814 () Bool)

(declare-fun b!57002 () Bool)

(assert (= bs!35814 (and b!57002 b!56947)))

(declare-fun lambda!9017 () Int)

(assert (=> bs!35814 (= lambda!9017 lambda!8998)))

(declare-fun bs!35815 () Bool)

(assert (= bs!35815 (and b!57002 b!56932)))

(assert (=> bs!35815 (= lambda!9017 lambda!8997)))

(declare-fun bs!35816 () Bool)

(assert (= bs!35816 (and b!57002 b!57000)))

(assert (=> bs!35816 (= lambda!9017 lambda!9016)))

(declare-fun bs!35817 () Bool)

(assert (= bs!35817 (and b!57002 b!56931)))

(assert (=> bs!35817 (= lambda!9017 lambda!8999)))

(declare-fun bs!35818 () Bool)

(assert (= bs!35818 (and b!57002 b!56967)))

(assert (=> bs!35818 (= lambda!9017 lambda!9007)))

(declare-fun bs!35819 () Bool)

(assert (= bs!35819 (and b!57002 b!56998)))

(assert (=> bs!35819 (= lambda!9017 lambda!9015)))

(declare-fun bs!35820 () Bool)

(assert (= bs!35820 (and b!57002 d!49932)))

(assert (=> bs!35820 (not (= lambda!9017 lambda!9012))))

(declare-fun bs!35821 () Bool)

(assert (= bs!35821 (and b!57002 b!56961)))

(assert (=> bs!35821 (= lambda!9017 lambda!9006)))

(declare-fun bs!35822 () Bool)

(assert (= bs!35822 (and b!57002 b!56942)))

(assert (=> bs!35822 (= lambda!9017 lambda!8996)))

(declare-fun b_next!39007 () Bool)

(assert (=> start!7902 (= b_next!39005 (or (and b!57002 (= lambda!9017 A!2194)) b_next!39007))))

(declare-fun d!49940 () Bool)

(declare-fun res!26384 () Bool)

(declare-fun e!30244 () Bool)

(assert (=> d!49940 (=> res!26384 e!30244)))

(assert (=> d!49940 (= res!26384 (isBigIntStructure!0 lt!10441))))

(assert (=> d!49940 (= (isStructure!0 lt!10441 lambda!8998) e!30244)))

(declare-fun b!57001 () Bool)

(declare-fun res!26385 () Bool)

(assert (=> b!57001 (=> res!26385 e!30244)))

(assert (=> b!57001 (= res!26385 (isStructureExt!0 lt!10441 lambda!8998))))

(assert (=> b!57002 (= e!30244 (isOptionStructure!0 lt!10441 lambda!9017))))

(assert (= (and d!49940 (not res!26384)) b!57001))

(assert (= (and b!57001 (not res!26385)) b!57002))

(declare-fun m!61914 () Bool)

(assert (=> d!49940 m!61914))

(declare-fun m!61916 () Bool)

(assert (=> b!57001 m!61916))

(declare-fun m!61918 () Bool)

(assert (=> b!57002 m!61918))

(assert (=> b!56947 d!49940))

(declare-fun d!49942 () Bool)

(declare-fun res!26386 () Bool)

(declare-fun e!30245 () Bool)

(assert (=> d!49942 (=> res!26386 e!30245)))

(declare-fun e!30246 () Bool)

(assert (=> d!49942 (= res!26386 e!30246)))

(declare-fun res!26387 () Bool)

(assert (=> d!49942 (=> (not res!26387) (not e!30246))))

(assert (=> d!49942 (= res!26387 (is-Some!300 (value!4093 x!24384)))))

(assert (=> d!49942 (= (isOption!19 (value!4093 x!24384) lambda!8996) e!30245)))

(declare-fun b!57003 () Bool)

(assert (=> b!57003 (= e!30246 (dynLambda!915 lambda!8996 (v!2047 (value!4093 x!24384))))))

(declare-fun b!57004 () Bool)

(assert (=> b!57004 (= e!30245 (is-None!301 (value!4093 x!24384)))))

(assert (= (and d!49942 res!26387) b!57003))

(assert (= (and d!49942 (not res!26386)) b!57004))

(declare-fun b_lambda!15271 () Bool)

(assert (=> (not b_lambda!15271) (not b!57003)))

(declare-fun m!61920 () Bool)

(assert (=> b!57003 m!61920))

(assert (=> b!56944 d!49942))

(declare-fun bs!35823 () Bool)

(declare-fun b!57006 () Bool)

(assert (= bs!35823 (and b!57006 b!56947)))

(declare-fun lambda!9018 () Int)

(assert (=> bs!35823 (= lambda!9018 lambda!8998)))

(declare-fun bs!35824 () Bool)

(assert (= bs!35824 (and b!57006 b!57002)))

(assert (=> bs!35824 (= lambda!9018 lambda!9017)))

(declare-fun bs!35825 () Bool)

(assert (= bs!35825 (and b!57006 b!56932)))

(assert (=> bs!35825 (= lambda!9018 lambda!8997)))

(declare-fun bs!35826 () Bool)

(assert (= bs!35826 (and b!57006 b!57000)))

(assert (=> bs!35826 (= lambda!9018 lambda!9016)))

(declare-fun bs!35827 () Bool)

(assert (= bs!35827 (and b!57006 b!56931)))

(assert (=> bs!35827 (= lambda!9018 lambda!8999)))

(declare-fun bs!35828 () Bool)

(assert (= bs!35828 (and b!57006 b!56967)))

(assert (=> bs!35828 (= lambda!9018 lambda!9007)))

(declare-fun bs!35829 () Bool)

(assert (= bs!35829 (and b!57006 b!56998)))

(assert (=> bs!35829 (= lambda!9018 lambda!9015)))

(declare-fun bs!35830 () Bool)

(assert (= bs!35830 (and b!57006 d!49932)))

(assert (=> bs!35830 (not (= lambda!9018 lambda!9012))))

(declare-fun bs!35831 () Bool)

(assert (= bs!35831 (and b!57006 b!56961)))

(assert (=> bs!35831 (= lambda!9018 lambda!9006)))

(declare-fun bs!35832 () Bool)

(assert (= bs!35832 (and b!57006 b!56942)))

(assert (=> bs!35832 (= lambda!9018 lambda!8996)))

(declare-fun b_next!39009 () Bool)

(assert (=> start!7902 (= b_next!39007 (or (and b!57006 (= lambda!9018 A!2194)) b_next!39009))))

(declare-fun d!49944 () Bool)

(declare-fun res!26388 () Bool)

(declare-fun e!30247 () Bool)

(assert (=> d!49944 (=> res!26388 e!30247)))

(assert (=> d!49944 (= res!26388 (isBigIntStructure!0 thiss!8058))))

(assert (=> d!49944 (= (isStructure!0 thiss!8058 A!2194) e!30247)))

(declare-fun b!57005 () Bool)

(declare-fun res!26389 () Bool)

(assert (=> b!57005 (=> res!26389 e!30247)))

(assert (=> b!57005 (= res!26389 (isStructureExt!0 thiss!8058 A!2194))))

(assert (=> b!57006 (= e!30247 (isOptionStructure!0 thiss!8058 lambda!9018))))

(assert (= (and d!49944 (not res!26388)) b!57005))

(assert (= (and b!57005 (not res!26389)) b!57006))

(assert (=> d!49944 m!61816))

(assert (=> b!57005 m!61818))

(declare-fun m!61922 () Bool)

(assert (=> b!57006 m!61922))

(assert (=> start!7902 d!49944))

(declare-fun bs!35833 () Bool)

(declare-fun b!57008 () Bool)

(assert (= bs!35833 (and b!57008 b!56947)))

(declare-fun lambda!9019 () Int)

(assert (=> bs!35833 (= lambda!9019 lambda!8998)))

(declare-fun bs!35834 () Bool)

(assert (= bs!35834 (and b!57008 b!57002)))

(assert (=> bs!35834 (= lambda!9019 lambda!9017)))

(declare-fun bs!35835 () Bool)

(assert (= bs!35835 (and b!57008 b!56932)))

(assert (=> bs!35835 (= lambda!9019 lambda!8997)))

(declare-fun bs!35836 () Bool)

(assert (= bs!35836 (and b!57008 b!57000)))

(assert (=> bs!35836 (= lambda!9019 lambda!9016)))

(declare-fun bs!35837 () Bool)

(assert (= bs!35837 (and b!57008 b!56931)))

(assert (=> bs!35837 (= lambda!9019 lambda!8999)))

(declare-fun bs!35838 () Bool)

(assert (= bs!35838 (and b!57008 b!57006)))

(assert (=> bs!35838 (= lambda!9019 lambda!9018)))

(declare-fun bs!35839 () Bool)

(assert (= bs!35839 (and b!57008 b!56967)))

(assert (=> bs!35839 (= lambda!9019 lambda!9007)))

(declare-fun bs!35840 () Bool)

(assert (= bs!35840 (and b!57008 b!56998)))

(assert (=> bs!35840 (= lambda!9019 lambda!9015)))

(declare-fun bs!35841 () Bool)

(assert (= bs!35841 (and b!57008 d!49932)))

(assert (=> bs!35841 (not (= lambda!9019 lambda!9012))))

(declare-fun bs!35842 () Bool)

(assert (= bs!35842 (and b!57008 b!56961)))

(assert (=> bs!35842 (= lambda!9019 lambda!9006)))

(declare-fun bs!35843 () Bool)

(assert (= bs!35843 (and b!57008 b!56942)))

(assert (=> bs!35843 (= lambda!9019 lambda!8996)))

(declare-fun b_next!39011 () Bool)

(assert (=> start!7902 (= b_next!39009 (or (and b!57008 (= lambda!9019 A!2194)) b_next!39011))))

(declare-fun d!49946 () Bool)

(declare-fun res!26390 () Bool)

(declare-fun e!30248 () Bool)

(assert (=> d!49946 (=> res!26390 e!30248)))

(assert (=> d!49946 (= res!26390 (isBigIntStructure!0 lt!10443))))

(assert (=> d!49946 (= (isStructure!0 lt!10443 A!2194) e!30248)))

(declare-fun b!57007 () Bool)

(declare-fun res!26391 () Bool)

(assert (=> b!57007 (=> res!26391 e!30248)))

(assert (=> b!57007 (= res!26391 (isStructureExt!0 lt!10443 A!2194))))

(assert (=> b!57008 (= e!30248 (isOptionStructure!0 lt!10443 lambda!9019))))

(assert (= (and d!49946 (not res!26390)) b!57007))

(assert (= (and b!57007 (not res!26391)) b!57008))

(declare-fun m!61924 () Bool)

(assert (=> d!49946 m!61924))

(declare-fun m!61926 () Bool)

(assert (=> b!57007 m!61926))

(declare-fun m!61928 () Bool)

(assert (=> b!57008 m!61928))

(assert (=> start!7902 d!49946))

(declare-fun d!49948 () Bool)

(assert (=> d!49948 (= (isStructureExt!0 thiss!8058 A!2194) (is-StructureExt!11 thiss!8058))))

(assert (=> b!56938 d!49948))

(declare-fun d!49950 () Bool)

(assert (=> d!49950 (= (isBigIntStructure!0 thiss!8058) (is-BigIntStructure!11 thiss!8058))))

(assert (=> b!56937 d!49950))

(declare-fun bs!35844 () Bool)

(declare-fun b!57017 () Bool)

(assert (= bs!35844 (and b!57017 b!56947)))

(declare-fun lambda!9022 () Int)

(assert (=> bs!35844 (= lambda!9022 lambda!8998)))

(declare-fun bs!35845 () Bool)

(assert (= bs!35845 (and b!57017 b!57002)))

(assert (=> bs!35845 (= lambda!9022 lambda!9017)))

(declare-fun bs!35846 () Bool)

(assert (= bs!35846 (and b!57017 b!56932)))

(assert (=> bs!35846 (= lambda!9022 lambda!8997)))

(declare-fun bs!35847 () Bool)

(assert (= bs!35847 (and b!57017 b!57000)))

(assert (=> bs!35847 (= lambda!9022 lambda!9016)))

(declare-fun bs!35848 () Bool)

(assert (= bs!35848 (and b!57017 b!57008)))

(assert (=> bs!35848 (= lambda!9022 lambda!9019)))

(declare-fun bs!35849 () Bool)

(assert (= bs!35849 (and b!57017 b!56931)))

(assert (=> bs!35849 (= lambda!9022 lambda!8999)))

(declare-fun bs!35850 () Bool)

(assert (= bs!35850 (and b!57017 b!57006)))

(assert (=> bs!35850 (= lambda!9022 lambda!9018)))

(declare-fun bs!35851 () Bool)

(assert (= bs!35851 (and b!57017 b!56967)))

(assert (=> bs!35851 (= lambda!9022 lambda!9007)))

(declare-fun bs!35852 () Bool)

(assert (= bs!35852 (and b!57017 b!56998)))

(assert (=> bs!35852 (= lambda!9022 lambda!9015)))

(declare-fun bs!35853 () Bool)

(assert (= bs!35853 (and b!57017 d!49932)))

(assert (=> bs!35853 (not (= lambda!9022 lambda!9012))))

(declare-fun bs!35854 () Bool)

(assert (= bs!35854 (and b!57017 b!56961)))

(assert (=> bs!35854 (= lambda!9022 lambda!9006)))

(declare-fun bs!35855 () Bool)

(assert (= bs!35855 (and b!57017 b!56942)))

(assert (=> bs!35855 (= lambda!9022 lambda!8996)))

(declare-fun b_next!39013 () Bool)

(assert (=> start!7902 (= b_next!39011 (or (and b!57017 (= lambda!9022 A!2194)) b_next!39013))))

(declare-fun lt!10482 () Object!263)

(declare-fun e!30254 () Bool)

(declare-fun tp!16111 () Bool)

(assert (=> b!57017 (= e!30254 (and tp!16111 (isStructure!0 lt!10482 lambda!9022)))))

(assert (=> b!57017 (= lt!10482 (ev!21 (v!2047 (value!4093 y!1782))))))

(declare-fun b!57019 () Bool)

(declare-fun e!30253 () Bool)

(declare-fun tp!16110 () Bool)

(assert (=> b!57019 (= e!30253 tp!16110)))

(declare-fun b!57018 () Bool)

(assert (=> b!57018 (= e!30254 e!30253)))

(assert (=> b!56933 (= tp!16099 e!30254)))

(assert (= (and b!56933 (is-OptionStructure!11 (v!2047 (value!4093 y!1782)))) b!57017))

(assert (= (and b!57018 (is-Some!300 (value!4093 (v!2047 (value!4093 y!1782))))) b!57019))

(assert (= (and b!56933 (is-Option!312 (v!2047 (value!4093 y!1782)))) b!57018))

(declare-fun m!61930 () Bool)

(assert (=> b!57017 m!61930))

(declare-fun bs!35856 () Bool)

(declare-fun b!57020 () Bool)

(assert (= bs!35856 (and b!57020 b!56947)))

(declare-fun lambda!9023 () Int)

(assert (=> bs!35856 (= lambda!9023 lambda!8998)))

(declare-fun bs!35857 () Bool)

(assert (= bs!35857 (and b!57020 b!57002)))

(assert (=> bs!35857 (= lambda!9023 lambda!9017)))

(declare-fun bs!35858 () Bool)

(assert (= bs!35858 (and b!57020 b!56932)))

(assert (=> bs!35858 (= lambda!9023 lambda!8997)))

(declare-fun bs!35859 () Bool)

(assert (= bs!35859 (and b!57020 b!57000)))

(assert (=> bs!35859 (= lambda!9023 lambda!9016)))

(declare-fun bs!35860 () Bool)

(assert (= bs!35860 (and b!57020 b!57008)))

(assert (=> bs!35860 (= lambda!9023 lambda!9019)))

(declare-fun bs!35861 () Bool)

(assert (= bs!35861 (and b!57020 b!57017)))

(assert (=> bs!35861 (= lambda!9023 lambda!9022)))

(declare-fun bs!35862 () Bool)

(assert (= bs!35862 (and b!57020 b!56931)))

(assert (=> bs!35862 (= lambda!9023 lambda!8999)))

(declare-fun bs!35863 () Bool)

(assert (= bs!35863 (and b!57020 b!57006)))

(assert (=> bs!35863 (= lambda!9023 lambda!9018)))

(declare-fun bs!35864 () Bool)

(assert (= bs!35864 (and b!57020 b!56967)))

(assert (=> bs!35864 (= lambda!9023 lambda!9007)))

(declare-fun bs!35865 () Bool)

(assert (= bs!35865 (and b!57020 b!56998)))

(assert (=> bs!35865 (= lambda!9023 lambda!9015)))

(declare-fun bs!35866 () Bool)

(assert (= bs!35866 (and b!57020 d!49932)))

(assert (=> bs!35866 (not (= lambda!9023 lambda!9012))))

(declare-fun bs!35867 () Bool)

(assert (= bs!35867 (and b!57020 b!56961)))

(assert (=> bs!35867 (= lambda!9023 lambda!9006)))

(declare-fun bs!35868 () Bool)

(assert (= bs!35868 (and b!57020 b!56942)))

(assert (=> bs!35868 (= lambda!9023 lambda!8996)))

(declare-fun b_next!39015 () Bool)

(assert (=> start!7902 (= b_next!39013 (or (and b!57020 (= lambda!9023 A!2194)) b_next!39015))))

(declare-fun e!30256 () Bool)

(declare-fun lt!10483 () Object!263)

(declare-fun tp!16113 () Bool)

(assert (=> b!57020 (= e!30256 (and tp!16113 (isStructure!0 lt!10483 lambda!9023)))))

(assert (=> b!57020 (= lt!10483 (ev!21 (v!2047 (value!4093 thiss!8058))))))

(declare-fun b!57022 () Bool)

(declare-fun e!30255 () Bool)

(declare-fun tp!16112 () Bool)

(assert (=> b!57022 (= e!30255 tp!16112)))

(declare-fun b!57021 () Bool)

(assert (=> b!57021 (= e!30256 e!30255)))

(assert (=> b!56935 (= tp!16102 e!30256)))

(assert (= (and b!56935 (is-OptionStructure!11 (v!2047 (value!4093 thiss!8058)))) b!57020))

(assert (= (and b!57021 (is-Some!300 (value!4093 (v!2047 (value!4093 thiss!8058))))) b!57022))

(assert (= (and b!56935 (is-Option!312 (v!2047 (value!4093 thiss!8058)))) b!57021))

(declare-fun m!61932 () Bool)

(assert (=> b!57020 m!61932))

(declare-fun tp!16115 () Bool)

(declare-fun e!30258 () Bool)

(declare-fun lt!10484 () Object!263)

(declare-fun b!57023 () Bool)

(assert (=> b!57023 (= e!30258 (and tp!16115 (isStructure!0 lt!10484 lambda!8999)))))

(assert (=> b!57023 (= lt!10484 (ev!21 (ev!21 thiss!8058)))))

(declare-fun b!57025 () Bool)

(declare-fun e!30257 () Bool)

(declare-fun tp!16114 () Bool)

(assert (=> b!57025 (= e!30257 tp!16114)))

(declare-fun b!57024 () Bool)

(assert (=> b!57024 (= e!30258 e!30257)))

(assert (=> b!56931 (= tp!16104 e!30258)))

(assert (= (and b!56931 (is-OptionStructure!11 (ev!21 thiss!8058))) b!57023))

(assert (= (and b!57024 (is-Some!300 (value!4093 (ev!21 thiss!8058)))) b!57025))

(assert (= (and b!56931 (is-Option!312 (ev!21 thiss!8058))) b!57024))

(declare-fun m!61934 () Bool)

(assert (=> b!57023 m!61934))

(declare-fun tp!16117 () Bool)

(declare-fun b!57026 () Bool)

(declare-fun e!30260 () Bool)

(declare-fun lt!10485 () Object!263)

(assert (=> b!57026 (= e!30260 (and tp!16117 (isStructure!0 lt!10485 lambda!8997)))))

(assert (=> b!57026 (= lt!10485 (ev!21 (ev!21 y!1782)))))

(declare-fun b!57028 () Bool)

(declare-fun e!30259 () Bool)

(declare-fun tp!16116 () Bool)

(assert (=> b!57028 (= e!30259 tp!16116)))

(declare-fun b!57027 () Bool)

(assert (=> b!57027 (= e!30260 e!30259)))

(assert (=> b!56932 (= tp!16101 e!30260)))

(assert (= (and b!56932 (is-OptionStructure!11 (ev!21 y!1782))) b!57026))

(assert (= (and b!57027 (is-Some!300 (value!4093 (ev!21 y!1782)))) b!57028))

(assert (= (and b!56932 (is-Option!312 (ev!21 y!1782))) b!57027))

(declare-fun m!61936 () Bool)

(assert (=> b!57026 m!61936))

(declare-fun b!57029 () Bool)

(declare-fun lt!10486 () Object!263)

(declare-fun e!30262 () Bool)

(declare-fun tp!16119 () Bool)

(assert (=> b!57029 (= e!30262 (and tp!16119 (isStructure!0 lt!10486 lambda!8998)))))

(assert (=> b!57029 (= lt!10486 (ev!21 (ev!21 x!24384)))))

(declare-fun b!57031 () Bool)

(declare-fun e!30261 () Bool)

(declare-fun tp!16118 () Bool)

(assert (=> b!57031 (= e!30261 tp!16118)))

(declare-fun b!57030 () Bool)

(assert (=> b!57030 (= e!30262 e!30261)))

(assert (=> b!56947 (= tp!16105 e!30262)))

(assert (= (and b!56947 (is-OptionStructure!11 (ev!21 x!24384))) b!57029))

(assert (= (and b!57030 (is-Some!300 (value!4093 (ev!21 x!24384)))) b!57031))

(assert (= (and b!56947 (is-Option!312 (ev!21 x!24384))) b!57030))

(declare-fun m!61938 () Bool)

(assert (=> b!57029 m!61938))

(declare-fun bs!35869 () Bool)

(declare-fun b!57032 () Bool)

(assert (= bs!35869 (and b!57032 b!56947)))

(declare-fun lambda!9024 () Int)

(assert (=> bs!35869 (= lambda!9024 lambda!8998)))

(declare-fun bs!35870 () Bool)

(assert (= bs!35870 (and b!57032 b!57002)))

(assert (=> bs!35870 (= lambda!9024 lambda!9017)))

(declare-fun bs!35871 () Bool)

(assert (= bs!35871 (and b!57032 b!56932)))

(assert (=> bs!35871 (= lambda!9024 lambda!8997)))

(declare-fun bs!35872 () Bool)

(assert (= bs!35872 (and b!57032 b!57000)))

(assert (=> bs!35872 (= lambda!9024 lambda!9016)))

(declare-fun bs!35873 () Bool)

(assert (= bs!35873 (and b!57032 b!57008)))

(assert (=> bs!35873 (= lambda!9024 lambda!9019)))

(declare-fun bs!35874 () Bool)

(assert (= bs!35874 (and b!57032 b!57017)))

(assert (=> bs!35874 (= lambda!9024 lambda!9022)))

(declare-fun bs!35875 () Bool)

(assert (= bs!35875 (and b!57032 b!56931)))

(assert (=> bs!35875 (= lambda!9024 lambda!8999)))

(declare-fun bs!35876 () Bool)

(assert (= bs!35876 (and b!57032 b!57006)))

(assert (=> bs!35876 (= lambda!9024 lambda!9018)))

(declare-fun bs!35877 () Bool)

(assert (= bs!35877 (and b!57032 b!56967)))

(assert (=> bs!35877 (= lambda!9024 lambda!9007)))

(declare-fun bs!35878 () Bool)

(assert (= bs!35878 (and b!57032 b!56998)))

(assert (=> bs!35878 (= lambda!9024 lambda!9015)))

(declare-fun bs!35879 () Bool)

(assert (= bs!35879 (and b!57032 b!57020)))

(assert (=> bs!35879 (= lambda!9024 lambda!9023)))

(declare-fun bs!35880 () Bool)

(assert (= bs!35880 (and b!57032 d!49932)))

(assert (=> bs!35880 (not (= lambda!9024 lambda!9012))))

(declare-fun bs!35881 () Bool)

(assert (= bs!35881 (and b!57032 b!56961)))

(assert (=> bs!35881 (= lambda!9024 lambda!9006)))

(declare-fun bs!35882 () Bool)

(assert (= bs!35882 (and b!57032 b!56942)))

(assert (=> bs!35882 (= lambda!9024 lambda!8996)))

(declare-fun b_next!39017 () Bool)

(assert (=> start!7902 (= b_next!39015 (or (and b!57032 (= lambda!9024 A!2194)) b_next!39017))))

(declare-fun lt!10487 () Object!263)

(declare-fun e!30264 () Bool)

(declare-fun tp!16121 () Bool)

(assert (=> b!57032 (= e!30264 (and tp!16121 (isStructure!0 lt!10487 lambda!9024)))))

(assert (=> b!57032 (= lt!10487 (ev!21 (v!2047 (value!4093 x!24384))))))

(declare-fun b!57034 () Bool)

(declare-fun e!30263 () Bool)

(declare-fun tp!16120 () Bool)

(assert (=> b!57034 (= e!30263 tp!16120)))

(declare-fun b!57033 () Bool)

(assert (=> b!57033 (= e!30264 e!30263)))

(assert (=> b!56934 (= tp!16100 e!30264)))

(assert (= (and b!56934 (is-OptionStructure!11 (v!2047 (value!4093 x!24384)))) b!57032))

(assert (= (and b!57033 (is-Some!300 (value!4093 (v!2047 (value!4093 x!24384))))) b!57034))

(assert (= (and b!56934 (is-Option!312 (v!2047 (value!4093 x!24384)))) b!57033))

(declare-fun m!61940 () Bool)

(assert (=> b!57032 m!61940))

(declare-fun b_lambda!15273 () Bool)

(assert (= b_lambda!15267 (or (and b!56947 (= lambda!8998 A!2194)) (and b!56932 (= lambda!8997 A!2194)) (and b!56998 (= lambda!9015 A!2194)) (and start!7902 b_free!7275) (and b!57017 (= lambda!9022 A!2194)) (and b!57006 (= lambda!9018 A!2194)) (and b!57000 (= lambda!9016 A!2194)) (and d!49932 (= lambda!9012 A!2194)) (and b!57002 (= lambda!9017 A!2194)) (and b!56961 (= lambda!9006 A!2194)) (and b!57020 (= lambda!9023 A!2194)) (and b!57008 (= lambda!9019 A!2194)) (and b!56942 (= lambda!8996 A!2194)) (and b!57032 (= lambda!9024 A!2194)) (and b!56967 (= lambda!9007 A!2194)) (and b!56931 (= lambda!8999 A!2194)) b_lambda!15273)))

(declare-fun bs!35883 () Bool)

(declare-fun d!49952 () Bool)

(assert (= bs!35883 (and d!49952 b!56998)))

(assert (=> bs!35883 (= (dynLambda!915 lambda!9015 (Integer!252 lt!10456)) true)))

(assert (=> (and b!56998 (= lambda!9015 A!2194) b!56970) d!49952))

(declare-fun bs!35884 () Bool)

(declare-fun d!49954 () Bool)

(assert (= bs!35884 (and d!49954 b!56932)))

(assert (=> bs!35884 (= (dynLambda!915 lambda!8997 (Integer!252 lt!10456)) true)))

(assert (=> (and b!56932 (= lambda!8997 A!2194) b!56970) d!49954))

(declare-fun bs!35885 () Bool)

(declare-fun d!49956 () Bool)

(assert (= bs!35885 (and d!49956 b!56942)))

(assert (=> bs!35885 (= (dynLambda!915 lambda!8996 (Integer!252 lt!10456)) true)))

(assert (=> (and b!56942 (= lambda!8996 A!2194) b!56970) d!49956))

(declare-fun bs!35886 () Bool)

(declare-fun d!49958 () Bool)

(assert (= bs!35886 (and d!49958 b!57008)))

(assert (=> bs!35886 (= (dynLambda!915 lambda!9019 (Integer!252 lt!10456)) true)))

(assert (=> (and b!57008 (= lambda!9019 A!2194) b!56970) d!49958))

(declare-fun bs!35887 () Bool)

(declare-fun d!49960 () Bool)

(assert (= bs!35887 (and d!49960 b!56961)))

(assert (=> bs!35887 (= (dynLambda!915 lambda!9006 (Integer!252 lt!10456)) true)))

(assert (=> (and b!56961 (= lambda!9006 A!2194) b!56970) d!49960))

(declare-fun bs!35888 () Bool)

(declare-fun d!49962 () Bool)

(assert (= bs!35888 (and d!49962 b!57002)))

(assert (=> bs!35888 (= (dynLambda!915 lambda!9017 (Integer!252 lt!10456)) true)))

(assert (=> (and b!57002 (= lambda!9017 A!2194) b!56970) d!49962))

(declare-fun bs!35889 () Bool)

(declare-fun d!49964 () Bool)

(assert (= bs!35889 (and d!49964 b!57020)))

(assert (=> bs!35889 (= (dynLambda!915 lambda!9023 (Integer!252 lt!10456)) true)))

(assert (=> (and b!57020 (= lambda!9023 A!2194) b!56970) d!49964))

(declare-fun bs!35890 () Bool)

(declare-fun d!49966 () Bool)

(assert (= bs!35890 (and d!49966 b!57000)))

(assert (=> bs!35890 (= (dynLambda!915 lambda!9016 (Integer!252 lt!10456)) true)))

(assert (=> (and b!57000 (= lambda!9016 A!2194) b!56970) d!49966))

(declare-fun bs!35891 () Bool)

(declare-fun d!49968 () Bool)

(assert (= bs!35891 (and d!49968 b!56931)))

(assert (=> bs!35891 (= (dynLambda!915 lambda!8999 (Integer!252 lt!10456)) true)))

(assert (=> (and b!56931 (= lambda!8999 A!2194) b!56970) d!49968))

(declare-fun bs!35892 () Bool)

(declare-fun d!49970 () Bool)

(assert (= bs!35892 (and d!49970 d!49932)))

(declare-fun res!26392 () Bool)

(declare-fun e!30265 () Bool)

(assert (=> bs!35892 (=> (not res!26392) (not e!30265))))

(assert (=> bs!35892 (= res!26392 (is-Option!312 (Integer!252 lt!10456)))))

(assert (=> bs!35892 (= (dynLambda!915 lambda!9012 (Integer!252 lt!10456)) e!30265)))

(declare-fun b!57035 () Bool)

(assert (=> b!57035 (= e!30265 (isOption!19 (value!4093 (Integer!252 lt!10456)) lambda!8996))))

(assert (= (and bs!35892 res!26392) b!57035))

(declare-fun m!61942 () Bool)

(assert (=> b!57035 m!61942))

(assert (=> (and d!49932 (= lambda!9012 A!2194) b!56970) d!49970))

(declare-fun bs!35893 () Bool)

(declare-fun d!49972 () Bool)

(assert (= bs!35893 (and d!49972 b!56967)))

(assert (=> bs!35893 (= (dynLambda!915 lambda!9007 (Integer!252 lt!10456)) true)))

(assert (=> (and b!56967 (= lambda!9007 A!2194) b!56970) d!49972))

(declare-fun bs!35894 () Bool)

(declare-fun d!49974 () Bool)

(assert (= bs!35894 (and d!49974 b!57032)))

(assert (=> bs!35894 (= (dynLambda!915 lambda!9024 (Integer!252 lt!10456)) true)))

(assert (=> (and b!57032 (= lambda!9024 A!2194) b!56970) d!49974))

(declare-fun bs!35895 () Bool)

(declare-fun d!49976 () Bool)

(assert (= bs!35895 (and d!49976 b!56947)))

(assert (=> bs!35895 (= (dynLambda!915 lambda!8998 (Integer!252 lt!10456)) true)))

(assert (=> (and b!56947 (= lambda!8998 A!2194) b!56970) d!49976))

(declare-fun bs!35896 () Bool)

(declare-fun d!49978 () Bool)

(assert (= bs!35896 (and d!49978 b!57006)))

(assert (=> bs!35896 (= (dynLambda!915 lambda!9018 (Integer!252 lt!10456)) true)))

(assert (=> (and b!57006 (= lambda!9018 A!2194) b!56970) d!49978))

(declare-fun bs!35897 () Bool)

(declare-fun d!49980 () Bool)

(assert (= bs!35897 (and d!49980 b!57017)))

(assert (=> bs!35897 (= (dynLambda!915 lambda!9022 (Integer!252 lt!10456)) true)))

(assert (=> (and b!57017 (= lambda!9022 A!2194) b!56970) d!49980))

(declare-fun b_lambda!15275 () Bool)

(assert (= b_lambda!15263 (or (and b!56947 (= lambda!8998 A!2194)) (and b!56932 (= lambda!8997 A!2194)) (and b!56998 (= lambda!9015 A!2194)) (and start!7902 b_free!7275) (and b!57017 (= lambda!9022 A!2194)) (and b!57006 (= lambda!9018 A!2194)) (and b!57000 (= lambda!9016 A!2194)) (and d!49932 (= lambda!9012 A!2194)) (and b!57002 (= lambda!9017 A!2194)) (and b!56961 (= lambda!9006 A!2194)) (and b!57020 (= lambda!9023 A!2194)) (and b!57008 (= lambda!9019 A!2194)) (and b!56942 (= lambda!8996 A!2194)) (and b!57032 (= lambda!9024 A!2194)) (and b!56967 (= lambda!9007 A!2194)) (and b!56931 (= lambda!8999 A!2194)) b_lambda!15275)))

(declare-fun bs!35898 () Bool)

(declare-fun d!49982 () Bool)

(assert (= bs!35898 (and d!49982 b!56947)))

(assert (=> bs!35898 (= (dynLambda!915 lambda!8998 (Integer!252 lt!10453)) true)))

(assert (=> (and b!56947 (= lambda!8998 A!2194) b!56964) d!49982))

(declare-fun bs!35899 () Bool)

(declare-fun d!49984 () Bool)

(assert (= bs!35899 (and d!49984 b!56961)))

(assert (=> bs!35899 (= (dynLambda!915 lambda!9006 (Integer!252 lt!10453)) true)))

(assert (=> (and b!56961 (= lambda!9006 A!2194) b!56964) d!49984))

(declare-fun bs!35900 () Bool)

(declare-fun d!49986 () Bool)

(assert (= bs!35900 (and d!49986 b!57020)))

(assert (=> bs!35900 (= (dynLambda!915 lambda!9023 (Integer!252 lt!10453)) true)))

(assert (=> (and b!57020 (= lambda!9023 A!2194) b!56964) d!49986))

(declare-fun bs!35901 () Bool)

(declare-fun d!49988 () Bool)

(assert (= bs!35901 (and d!49988 b!57008)))

(assert (=> bs!35901 (= (dynLambda!915 lambda!9019 (Integer!252 lt!10453)) true)))

(assert (=> (and b!57008 (= lambda!9019 A!2194) b!56964) d!49988))

(declare-fun bs!35902 () Bool)

(declare-fun d!49990 () Bool)

(assert (= bs!35902 (and d!49990 b!57002)))

(assert (=> bs!35902 (= (dynLambda!915 lambda!9017 (Integer!252 lt!10453)) true)))

(assert (=> (and b!57002 (= lambda!9017 A!2194) b!56964) d!49990))

(declare-fun bs!35903 () Bool)

(declare-fun d!49992 () Bool)

(assert (= bs!35903 (and d!49992 b!57000)))

(assert (=> bs!35903 (= (dynLambda!915 lambda!9016 (Integer!252 lt!10453)) true)))

(assert (=> (and b!57000 (= lambda!9016 A!2194) b!56964) d!49992))

(declare-fun bs!35904 () Bool)

(declare-fun d!49994 () Bool)

(assert (= bs!35904 (and d!49994 b!56967)))

(assert (=> bs!35904 (= (dynLambda!915 lambda!9007 (Integer!252 lt!10453)) true)))

(assert (=> (and b!56967 (= lambda!9007 A!2194) b!56964) d!49994))

(declare-fun bs!35905 () Bool)

(declare-fun d!49996 () Bool)

(assert (= bs!35905 (and d!49996 b!57032)))

(assert (=> bs!35905 (= (dynLambda!915 lambda!9024 (Integer!252 lt!10453)) true)))

(assert (=> (and b!57032 (= lambda!9024 A!2194) b!56964) d!49996))

(declare-fun bs!35906 () Bool)

(declare-fun d!49998 () Bool)

(assert (= bs!35906 (and d!49998 b!56931)))

(assert (=> bs!35906 (= (dynLambda!915 lambda!8999 (Integer!252 lt!10453)) true)))

(assert (=> (and b!56931 (= lambda!8999 A!2194) b!56964) d!49998))

(declare-fun bs!35907 () Bool)

(declare-fun d!50000 () Bool)

(assert (= bs!35907 (and d!50000 b!56932)))

(assert (=> bs!35907 (= (dynLambda!915 lambda!8997 (Integer!252 lt!10453)) true)))

(assert (=> (and b!56932 (= lambda!8997 A!2194) b!56964) d!50000))

(declare-fun bs!35908 () Bool)

(declare-fun d!50002 () Bool)

(assert (= bs!35908 (and d!50002 b!56998)))

(assert (=> bs!35908 (= (dynLambda!915 lambda!9015 (Integer!252 lt!10453)) true)))

(assert (=> (and b!56998 (= lambda!9015 A!2194) b!56964) d!50002))

(declare-fun bs!35909 () Bool)

(declare-fun d!50004 () Bool)

(assert (= bs!35909 (and d!50004 b!57017)))

(assert (=> bs!35909 (= (dynLambda!915 lambda!9022 (Integer!252 lt!10453)) true)))

(assert (=> (and b!57017 (= lambda!9022 A!2194) b!56964) d!50004))

(declare-fun bs!35910 () Bool)

(declare-fun d!50006 () Bool)

(assert (= bs!35910 (and d!50006 d!49932)))

(declare-fun res!26393 () Bool)

(declare-fun e!30266 () Bool)

(assert (=> bs!35910 (=> (not res!26393) (not e!30266))))

(assert (=> bs!35910 (= res!26393 (is-Option!312 (Integer!252 lt!10453)))))

(assert (=> bs!35910 (= (dynLambda!915 lambda!9012 (Integer!252 lt!10453)) e!30266)))

(declare-fun b!57036 () Bool)

(assert (=> b!57036 (= e!30266 (isOption!19 (value!4093 (Integer!252 lt!10453)) lambda!8996))))

(assert (= (and bs!35910 res!26393) b!57036))

(declare-fun m!61944 () Bool)

(assert (=> b!57036 m!61944))

(assert (=> (and d!49932 (= lambda!9012 A!2194) b!56964) d!50006))

(declare-fun bs!35911 () Bool)

(declare-fun d!50008 () Bool)

(assert (= bs!35911 (and d!50008 b!57006)))

(assert (=> bs!35911 (= (dynLambda!915 lambda!9018 (Integer!252 lt!10453)) true)))

(assert (=> (and b!57006 (= lambda!9018 A!2194) b!56964) d!50008))

(declare-fun bs!35912 () Bool)

(declare-fun d!50010 () Bool)

(assert (= bs!35912 (and d!50010 b!56942)))

(assert (=> bs!35912 (= (dynLambda!915 lambda!8996 (Integer!252 lt!10453)) true)))

(assert (=> (and b!56942 (= lambda!8996 A!2194) b!56964) d!50010))

(declare-fun b_lambda!15277 () Bool)

(assert (= b_lambda!15261 (or (and b!56947 (= lambda!8998 A!2194)) (and b!56932 (= lambda!8997 A!2194)) (and b!56998 (= lambda!9015 A!2194)) (and start!7902 b_free!7275) (and b!57017 (= lambda!9022 A!2194)) (and b!57006 (= lambda!9018 A!2194)) (and b!57000 (= lambda!9016 A!2194)) (and d!49932 (= lambda!9012 A!2194)) (and b!57002 (= lambda!9017 A!2194)) (and b!56961 (= lambda!9006 A!2194)) (and b!57020 (= lambda!9023 A!2194)) (and b!57008 (= lambda!9019 A!2194)) (and b!56942 (= lambda!8996 A!2194)) (and b!57032 (= lambda!9024 A!2194)) (and b!56967 (= lambda!9007 A!2194)) (and b!56931 (= lambda!8999 A!2194)) b_lambda!15277)))

(declare-fun bs!35913 () Bool)

(declare-fun d!50012 () Bool)

(assert (= bs!35913 (and d!50012 d!49932)))

(declare-fun res!26394 () Bool)

(declare-fun e!30267 () Bool)

(assert (=> bs!35913 (=> (not res!26394) (not e!30267))))

(assert (=> bs!35913 (= res!26394 (is-Option!312 (Option!312 lt!10455)))))

(assert (=> bs!35913 (= (dynLambda!915 lambda!9012 (Option!312 lt!10455)) e!30267)))

(declare-fun b!57037 () Bool)

(assert (=> b!57037 (= e!30267 (isOption!19 (value!4093 (Option!312 lt!10455)) lambda!8996))))

(assert (= (and bs!35913 res!26394) b!57037))

(declare-fun m!61946 () Bool)

(assert (=> b!57037 m!61946))

(assert (=> (and d!49932 (= lambda!9012 A!2194) b!56961) d!50012))

(declare-fun bs!35914 () Bool)

(declare-fun d!50014 () Bool)

(assert (= bs!35914 (and d!50014 b!56942)))

(assert (=> bs!35914 (= (dynLambda!915 lambda!8996 (Option!312 lt!10455)) true)))

(assert (=> (and b!56942 (= lambda!8996 A!2194) b!56961) d!50014))

(declare-fun bs!35915 () Bool)

(declare-fun d!50016 () Bool)

(assert (= bs!35915 (and d!50016 b!56998)))

(assert (=> bs!35915 (= (dynLambda!915 lambda!9015 (Option!312 lt!10455)) true)))

(assert (=> (and b!56998 (= lambda!9015 A!2194) b!56961) d!50016))

(declare-fun bs!35916 () Bool)

(declare-fun d!50018 () Bool)

(assert (= bs!35916 (and d!50018 b!57008)))

(assert (=> bs!35916 (= (dynLambda!915 lambda!9019 (Option!312 lt!10455)) true)))

(assert (=> (and b!57008 (= lambda!9019 A!2194) b!56961) d!50018))

(declare-fun bs!35917 () Bool)

(declare-fun d!50020 () Bool)

(assert (= bs!35917 (and d!50020 b!57000)))

(assert (=> bs!35917 (= (dynLambda!915 lambda!9016 (Option!312 lt!10455)) true)))

(assert (=> (and b!57000 (= lambda!9016 A!2194) b!56961) d!50020))

(declare-fun bs!35918 () Bool)

(declare-fun d!50022 () Bool)

(assert (= bs!35918 (and d!50022 b!57002)))

(assert (=> bs!35918 (= (dynLambda!915 lambda!9017 (Option!312 lt!10455)) true)))

(assert (=> (and b!57002 (= lambda!9017 A!2194) b!56961) d!50022))

(declare-fun bs!35919 () Bool)

(declare-fun d!50024 () Bool)

(assert (= bs!35919 (and d!50024 b!57006)))

(assert (=> bs!35919 (= (dynLambda!915 lambda!9018 (Option!312 lt!10455)) true)))

(assert (=> (and b!57006 (= lambda!9018 A!2194) b!56961) d!50024))

(declare-fun bs!35920 () Bool)

(declare-fun d!50026 () Bool)

(assert (= bs!35920 (and d!50026 b!57017)))

(assert (=> bs!35920 (= (dynLambda!915 lambda!9022 (Option!312 lt!10455)) true)))

(assert (=> (and b!57017 (= lambda!9022 A!2194) b!56961) d!50026))

(declare-fun bs!35921 () Bool)

(declare-fun d!50028 () Bool)

(assert (= bs!35921 (and d!50028 b!56967)))

(assert (=> bs!35921 (= (dynLambda!915 lambda!9007 (Option!312 lt!10455)) true)))

(assert (=> (and b!56967 (= lambda!9007 A!2194) b!56961) d!50028))

(declare-fun bs!35922 () Bool)

(declare-fun d!50030 () Bool)

(assert (= bs!35922 (and d!50030 b!56947)))

(assert (=> bs!35922 (= (dynLambda!915 lambda!8998 (Option!312 lt!10455)) true)))

(assert (=> (and b!56947 (= lambda!8998 A!2194) b!56961) d!50030))

(declare-fun bs!35923 () Bool)

(declare-fun d!50032 () Bool)

(assert (= bs!35923 (and d!50032 b!56931)))

(assert (=> bs!35923 (= (dynLambda!915 lambda!8999 (Option!312 lt!10455)) true)))

(assert (=> (and b!56931 (= lambda!8999 A!2194) b!56961) d!50032))

(declare-fun bs!35924 () Bool)

(declare-fun d!50034 () Bool)

(assert (= bs!35924 (and d!50034 b!56961)))

(assert (=> bs!35924 (= (dynLambda!915 lambda!9006 (Option!312 lt!10455)) true)))

(assert (=> (and b!56961 (= lambda!9006 A!2194)) d!50034))

(declare-fun bs!35925 () Bool)

(declare-fun d!50036 () Bool)

(assert (= bs!35925 (and d!50036 b!57020)))

(assert (=> bs!35925 (= (dynLambda!915 lambda!9023 (Option!312 lt!10455)) true)))

(assert (=> (and b!57020 (= lambda!9023 A!2194) b!56961) d!50036))

(declare-fun bs!35926 () Bool)

(declare-fun d!50038 () Bool)

(assert (= bs!35926 (and d!50038 b!56932)))

(assert (=> bs!35926 (= (dynLambda!915 lambda!8997 (Option!312 lt!10455)) true)))

(assert (=> (and b!56932 (= lambda!8997 A!2194) b!56961) d!50038))

(declare-fun bs!35927 () Bool)

(declare-fun d!50040 () Bool)

(assert (= bs!35927 (and d!50040 b!57032)))

(assert (=> bs!35927 (= (dynLambda!915 lambda!9024 (Option!312 lt!10455)) true)))

(assert (=> (and b!57032 (= lambda!9024 A!2194) b!56961) d!50040))

(declare-fun b_lambda!15279 () Bool)

(assert (= b_lambda!15271 (or b!56942 b_lambda!15279)))

(declare-fun bs!35928 () Bool)

(declare-fun d!50042 () Bool)

(assert (= bs!35928 (and d!50042 b!56942)))

(assert (=> bs!35928 (= (dynLambda!915 lambda!8996 (v!2047 (value!4093 x!24384))) true)))

(assert (=> b!57003 d!50042))

(declare-fun b_lambda!15281 () Bool)

(assert (= b_lambda!15269 (or b!56942 b_lambda!15281)))

(declare-fun bs!35929 () Bool)

(declare-fun d!50044 () Bool)

(assert (= bs!35929 (and d!50044 b!56942)))

(assert (=> bs!35929 (= (dynLambda!915 lambda!8996 (v!2047 (value!4093 y!1782))) true)))

(assert (=> b!56991 d!50044))

(declare-fun b_lambda!15283 () Bool)

(assert (= b_lambda!15265 (or (and b!56947 (= lambda!8998 A!2194)) (and b!56932 (= lambda!8997 A!2194)) (and b!56998 (= lambda!9015 A!2194)) (and start!7902 b_free!7275) (and b!57017 (= lambda!9022 A!2194)) (and b!57006 (= lambda!9018 A!2194)) (and b!57000 (= lambda!9016 A!2194)) (and d!49932 (= lambda!9012 A!2194)) (and b!57002 (= lambda!9017 A!2194)) (and b!56961 (= lambda!9006 A!2194)) (and b!57020 (= lambda!9023 A!2194)) (and b!57008 (= lambda!9019 A!2194)) (and b!56942 (= lambda!8996 A!2194)) (and b!57032 (= lambda!9024 A!2194)) (and b!56967 (= lambda!9007 A!2194)) (and b!56931 (= lambda!8999 A!2194)) b_lambda!15283)))

(declare-fun bs!35930 () Bool)

(declare-fun d!50046 () Bool)

(assert (= bs!35930 (and d!50046 b!56931)))

(assert (=> bs!35930 (= (dynLambda!915 lambda!8999 (Option!312 lt!10458)) true)))

(assert (=> (and b!56931 (= lambda!8999 A!2194) b!56967) d!50046))

(declare-fun bs!35931 () Bool)

(declare-fun d!50048 () Bool)

(assert (= bs!35931 (and d!50048 b!57000)))

(assert (=> bs!35931 (= (dynLambda!915 lambda!9016 (Option!312 lt!10458)) true)))

(assert (=> (and b!57000 (= lambda!9016 A!2194) b!56967) d!50048))

(declare-fun bs!35932 () Bool)

(declare-fun d!50050 () Bool)

(assert (= bs!35932 (and d!50050 b!56961)))

(assert (=> bs!35932 (= (dynLambda!915 lambda!9006 (Option!312 lt!10458)) true)))

(assert (=> (and b!56961 (= lambda!9006 A!2194) b!56967) d!50050))

(declare-fun bs!35933 () Bool)

(declare-fun d!50052 () Bool)

(assert (= bs!35933 (and d!50052 b!57020)))

(assert (=> bs!35933 (= (dynLambda!915 lambda!9023 (Option!312 lt!10458)) true)))

(assert (=> (and b!57020 (= lambda!9023 A!2194) b!56967) d!50052))

(declare-fun bs!35934 () Bool)

(declare-fun d!50054 () Bool)

(assert (= bs!35934 (and d!50054 b!57017)))

(assert (=> bs!35934 (= (dynLambda!915 lambda!9022 (Option!312 lt!10458)) true)))

(assert (=> (and b!57017 (= lambda!9022 A!2194) b!56967) d!50054))

(declare-fun bs!35935 () Bool)

(declare-fun d!50056 () Bool)

(assert (= bs!35935 (and d!50056 b!57006)))

(assert (=> bs!35935 (= (dynLambda!915 lambda!9018 (Option!312 lt!10458)) true)))

(assert (=> (and b!57006 (= lambda!9018 A!2194) b!56967) d!50056))

(declare-fun bs!35936 () Bool)

(declare-fun d!50058 () Bool)

(assert (= bs!35936 (and d!50058 b!56947)))

(assert (=> bs!35936 (= (dynLambda!915 lambda!8998 (Option!312 lt!10458)) true)))

(assert (=> (and b!56947 (= lambda!8998 A!2194) b!56967) d!50058))

(declare-fun bs!35937 () Bool)

(declare-fun d!50060 () Bool)

(assert (= bs!35937 (and d!50060 b!57002)))

(assert (=> bs!35937 (= (dynLambda!915 lambda!9017 (Option!312 lt!10458)) true)))

(assert (=> (and b!57002 (= lambda!9017 A!2194) b!56967) d!50060))

(declare-fun bs!35938 () Bool)

(declare-fun d!50062 () Bool)

(assert (= bs!35938 (and d!50062 b!57032)))

(assert (=> bs!35938 (= (dynLambda!915 lambda!9024 (Option!312 lt!10458)) true)))

(assert (=> (and b!57032 (= lambda!9024 A!2194) b!56967) d!50062))

(declare-fun bs!35939 () Bool)

(declare-fun d!50064 () Bool)

(assert (= bs!35939 (and d!50064 d!49932)))

(declare-fun res!26395 () Bool)

(declare-fun e!30268 () Bool)

(assert (=> bs!35939 (=> (not res!26395) (not e!30268))))

(assert (=> bs!35939 (= res!26395 (is-Option!312 (Option!312 lt!10458)))))

(assert (=> bs!35939 (= (dynLambda!915 lambda!9012 (Option!312 lt!10458)) e!30268)))

(declare-fun b!57038 () Bool)

(assert (=> b!57038 (= e!30268 (isOption!19 (value!4093 (Option!312 lt!10458)) lambda!8996))))

(assert (= (and bs!35939 res!26395) b!57038))

(declare-fun m!61948 () Bool)

(assert (=> b!57038 m!61948))

(assert (=> (and d!49932 (= lambda!9012 A!2194) b!56967) d!50064))

(declare-fun bs!35940 () Bool)

(declare-fun d!50066 () Bool)

(assert (= bs!35940 (and d!50066 b!56942)))

(assert (=> bs!35940 (= (dynLambda!915 lambda!8996 (Option!312 lt!10458)) true)))

(assert (=> (and b!56942 (= lambda!8996 A!2194) b!56967) d!50066))

(declare-fun bs!35941 () Bool)

(declare-fun d!50068 () Bool)

(assert (= bs!35941 (and d!50068 b!57008)))

(assert (=> bs!35941 (= (dynLambda!915 lambda!9019 (Option!312 lt!10458)) true)))

(assert (=> (and b!57008 (= lambda!9019 A!2194) b!56967) d!50068))

(declare-fun bs!35942 () Bool)

(declare-fun d!50070 () Bool)

(assert (= bs!35942 (and d!50070 b!56932)))

(assert (=> bs!35942 (= (dynLambda!915 lambda!8997 (Option!312 lt!10458)) true)))

(assert (=> (and b!56932 (= lambda!8997 A!2194) b!56967) d!50070))

(declare-fun bs!35943 () Bool)

(declare-fun d!50072 () Bool)

(assert (= bs!35943 (and d!50072 b!56998)))

(assert (=> bs!35943 (= (dynLambda!915 lambda!9015 (Option!312 lt!10458)) true)))

(assert (=> (and b!56998 (= lambda!9015 A!2194) b!56967) d!50072))

(declare-fun bs!35944 () Bool)

(declare-fun d!50074 () Bool)

(assert (= bs!35944 (and d!50074 b!56967)))

(assert (=> bs!35944 (= (dynLambda!915 lambda!9007 (Option!312 lt!10458)) true)))

(assert (=> (and b!56967 (= lambda!9007 A!2194)) d!50074))

(push 1)

(assert (not b!57031))

(assert (not b!57006))

(assert (not b_lambda!15253))

(assert (not d!49938))

(assert (not b_lambda!15255))

(assert (not d!49940))

(assert (not b!57036))

(assert (not b!56960))

(assert (not b!57025))

(assert (not b!57001))

(assert (not b!57019))

(assert (not b!57008))

(assert (not b!57028))

(assert (not b!57035))

(assert (not b!57002))

(assert (not b!57017))

(assert (not b!56965))

(assert (not b_next!39017))

(assert (not d!49944))

(assert (not b!56967))

(assert (not b!57022))

(assert (not b!56971))

(assert (not d!49928))

(assert (not d!49932))

(assert (not b!56983))

(assert (not b!57034))

(assert (not b!56962))

(assert (not b_lambda!15283))

(assert (not b_lambda!15257))

(assert (not b_lambda!15281))

(assert (not d!49936))

(assert (not b!56982))

(assert (not b_lambda!15273))

(assert (not b!56961))

(assert (not b!57032))

(assert (not b!56966))

(assert (not b!57005))

(assert (not b!56999))

(assert (not b_lambda!15277))

(assert (not b!57029))

(assert (not b_lambda!15275))

(assert (not b_lambda!15259))

(assert (not b!57000))

(assert (not b!57026))

(assert (not b!57023))

(assert (not b!57020))

(assert (not b!57007))

(assert (not b_lambda!15279))

(assert (not b!57038))

(assert (not b!56970))

(assert (not b!56984))

(assert (not b!56963))

(assert b_and!58507)

(assert (not b!56969))

(assert (not d!49930))

(assert (not b!56968))

(assert (not b!56997))

(assert (not b!57037))

(assert (not b!56964))

(assert (not b!56998))

(assert (not d!49946))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58507)

(assert (not b_next!39017))

(check-sat)

(pop 1)

