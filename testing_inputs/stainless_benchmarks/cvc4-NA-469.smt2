; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3012 () Bool)

(assert start!3012)

(declare-fun b_free!2037 () Bool)

(declare-fun b_next!4775 () Bool)

(assert (=> start!3012 (= b_free!2037 (not b_next!4775))))

(declare-fun tp!3413 () Bool)

(declare-fun b_and!7173 () Bool)

(assert (=> start!3012 (= tp!3413 b_and!7173)))

(declare-fun b_free!2039 () Bool)

(declare-fun b_next!4777 () Bool)

(assert (=> start!3012 (= b_free!2039 (not b_next!4777))))

(declare-fun tp!3414 () Bool)

(declare-fun b_and!7175 () Bool)

(assert (=> start!3012 (= tp!3414 b_and!7175)))

(declare-fun b_next!4779 () Bool)

(declare-fun lambda!3535 () Int)

(declare-fun s1!33 () Int)

(assert (=> start!3012 (= b_next!4775 (or (and start!3012 (= lambda!3535 s1!33)) b_next!4779))))

(declare-fun b_next!4781 () Bool)

(declare-fun s2!32 () Int)

(assert (=> start!3012 (= b_next!4777 (or (and start!3012 (= lambda!3535 s2!32)) b_next!4781))))

(declare-fun lambda!3536 () Int)

(assert (=> start!3012 (= (= #b00000000000000000000000000000010 #b00000000000000000000000000000001) (= lambda!3536 lambda!3535))))

(declare-fun b_next!4783 () Bool)

(assert (=> start!3012 (= b_next!4779 (or (and start!3012 (= lambda!3536 s1!33)) b_next!4783))))

(declare-fun b_next!4785 () Bool)

(assert (=> start!3012 (= b_next!4781 (or (and start!3012 (= lambda!3536 s2!32)) b_next!4785))))

(declare-fun lambda!3537 () Int)

(assert (=> start!3012 (= (= #b00000000000000000000000000000011 #b00000000000000000000000000000001) (= lambda!3537 lambda!3535))))

(assert (=> start!3012 (= (= #b00000000000000000000000000000011 #b00000000000000000000000000000010) (= lambda!3537 lambda!3536))))

(declare-fun b_next!4787 () Bool)

(assert (=> start!3012 (= b_next!4783 (or (and start!3012 (= lambda!3537 s1!33)) b_next!4787))))

(declare-fun b_next!4789 () Bool)

(assert (=> start!3012 (= b_next!4785 (or (and start!3012 (= lambda!3537 s2!32)) b_next!4789))))

(declare-fun lambda!3538 () Int)

(assert (=> start!3012 (not (= lambda!3538 lambda!3535))))

(assert (=> start!3012 (not (= lambda!3538 lambda!3536))))

(assert (=> start!3012 (not (= lambda!3538 lambda!3537))))

(declare-fun b_next!4791 () Bool)

(assert (=> start!3012 (= b_next!4787 (or (and start!3012 (= lambda!3538 s1!33)) b_next!4791))))

(declare-fun b_next!4793 () Bool)

(assert (=> start!3012 (= b_next!4789 (or (and start!3012 (= lambda!3538 s2!32)) b_next!4793))))

(declare-fun lambda!3534 () Int)

(assert (=> start!3012 (not (= lambda!3534 lambda!3535))))

(assert (=> start!3012 (not (= lambda!3534 lambda!3536))))

(assert (=> start!3012 (not (= lambda!3534 lambda!3537))))

(assert (=> start!3012 (= (and (= lambda!3535 lambda!3536) (= lambda!3538 lambda!3537)) (= lambda!3534 lambda!3538))))

(declare-fun b_next!4795 () Bool)

(assert (=> start!3012 (= b_next!4791 (or (and start!3012 (= lambda!3534 s1!33)) b_next!4795))))

(declare-fun b_next!4797 () Bool)

(assert (=> start!3012 (= b_next!4793 (or (and start!3012 (= lambda!3534 s2!32)) b_next!4797))))

(declare-fun bs!4936 () Bool)

(declare-fun b!14184 () Bool)

(assert (= bs!4936 (and b!14184 start!3012)))

(declare-fun lambda!3539 () Int)

(assert (=> bs!4936 (not (= lambda!3539 lambda!3538))))

(assert (=> bs!4936 (= (= #b00000000000000000000000000000100 #b00000000000000000000000000000010) (= lambda!3539 lambda!3536))))

(assert (=> bs!4936 (not (= lambda!3539 lambda!3534))))

(assert (=> bs!4936 (= (= #b00000000000000000000000000000100 #b00000000000000000000000000000001) (= lambda!3539 lambda!3535))))

(assert (=> bs!4936 (= (= #b00000000000000000000000000000100 #b00000000000000000000000000000011) (= lambda!3539 lambda!3537))))

(declare-fun b_next!4799 () Bool)

(assert (=> start!3012 (= b_next!4795 (or (and b!14184 (= lambda!3539 s1!33)) b_next!4799))))

(declare-fun b_next!4801 () Bool)

(assert (=> start!3012 (= b_next!4797 (or (and b!14184 (= lambda!3539 s2!32)) b_next!4801))))

(declare-fun res!5461 () Bool)

(declare-fun e!7843 () Bool)

(assert (=> start!3012 (=> (not res!5461) (not e!7843))))

(assert (=> start!3012 (= res!5461 (= s1!33 lambda!3534))))

(assert (=> start!3012 e!7843))

(assert (=> start!3012 tp!3413))

(assert (=> start!3012 tp!3414))

(declare-fun b!14181 () Bool)

(declare-fun res!5463 () Bool)

(declare-fun e!7844 () Bool)

(assert (=> b!14181 (=> res!5463 e!7844)))

(declare-fun dynLambda!560 (Int (_ BitVec 32)) Bool)

(assert (=> b!14181 (= res!5463 (not (dynLambda!560 s2!32 #b00000000000000000000000000000011)))))

(declare-fun b!14182 () Bool)

(assert (=> b!14182 (= e!7844 (not (dynLambda!560 s2!32 #b00000000000000000000000000000100)))))

(declare-fun b!14183 () Bool)

(assert (=> b!14183 (= e!7843 e!7844)))

(declare-fun res!5462 () Bool)

(assert (=> b!14183 (=> res!5462 e!7844)))

(assert (=> b!14183 (= res!5462 (not (dynLambda!560 s2!32 #b00000000000000000000000000000001)))))

(declare-fun res!5460 () Bool)

(assert (=> b!14184 (=> (not res!5460) (not e!7843))))

(declare-fun union!2 (Int Int) Int)

(assert (=> b!14184 (= res!5460 (= s2!32 (union!2 s1!33 lambda!3539)))))

(declare-fun b!14185 () Bool)

(declare-fun res!5464 () Bool)

(assert (=> b!14185 (=> res!5464 e!7844)))

(assert (=> b!14185 (= res!5464 (not (dynLambda!560 s2!32 #b00000000000000000000000000000010)))))

(assert (= (and start!3012 res!5461) b!14184))

(assert (= (and b!14184 res!5460) b!14183))

(assert (= (and b!14183 (not res!5462)) b!14185))

(assert (= (and b!14185 (not res!5464)) b!14181))

(assert (= (and b!14181 (not res!5463)) b!14182))

(declare-fun b_lambda!7587 () Bool)

(assert (=> (not b_lambda!7587) (not b!14181)))

(declare-fun tb!3767 () Bool)

(declare-fun t!4149 () Bool)

(assert (=> (and start!3012 (= s1!33 s2!32) t!4149) tb!3767))

(declare-fun result!3839 () Bool)

(assert (=> tb!3767 (= result!3839 true)))

(assert (=> b!14181 t!4149))

(declare-fun b_and!7177 () Bool)

(assert (= b_and!7173 (and (=> t!4149 result!3839) b_and!7177)))

(declare-fun t!4151 () Bool)

(declare-fun tb!3769 () Bool)

(assert (=> (and start!3012 (= s2!32 s2!32) t!4151) tb!3769))

(declare-fun result!3841 () Bool)

(assert (=> tb!3769 (= result!3841 true)))

(assert (=> b!14181 t!4151))

(declare-fun b_and!7179 () Bool)

(assert (= b_and!7175 (and (=> t!4151 result!3841) b_and!7179)))

(declare-fun b_lambda!7589 () Bool)

(assert (=> (not b_lambda!7589) (not b!14182)))

(declare-fun t!4153 () Bool)

(declare-fun tb!3771 () Bool)

(assert (=> (and start!3012 (= s1!33 s2!32) t!4153) tb!3771))

(declare-fun result!3843 () Bool)

(assert (=> tb!3771 (= result!3843 true)))

(assert (=> b!14182 t!4153))

(declare-fun b_and!7181 () Bool)

(assert (= b_and!7177 (and (=> t!4153 result!3843) b_and!7181)))

(declare-fun t!4155 () Bool)

(declare-fun tb!3773 () Bool)

(assert (=> (and start!3012 (= s2!32 s2!32) t!4155) tb!3773))

(declare-fun result!3845 () Bool)

(assert (=> tb!3773 (= result!3845 true)))

(assert (=> b!14182 t!4155))

(declare-fun b_and!7183 () Bool)

(assert (= b_and!7179 (and (=> t!4155 result!3845) b_and!7183)))

(declare-fun b_lambda!7591 () Bool)

(assert (=> (not b_lambda!7591) (not b!14183)))

(declare-fun t!4157 () Bool)

(declare-fun tb!3775 () Bool)

(assert (=> (and start!3012 (= s1!33 s2!32) t!4157) tb!3775))

(declare-fun result!3847 () Bool)

(assert (=> tb!3775 (= result!3847 true)))

(assert (=> b!14183 t!4157))

(declare-fun b_and!7185 () Bool)

(assert (= b_and!7181 (and (=> t!4157 result!3847) b_and!7185)))

(declare-fun t!4159 () Bool)

(declare-fun tb!3777 () Bool)

(assert (=> (and start!3012 (= s2!32 s2!32) t!4159) tb!3777))

(declare-fun result!3849 () Bool)

(assert (=> tb!3777 (= result!3849 true)))

(assert (=> b!14183 t!4159))

(declare-fun b_and!7187 () Bool)

(assert (= b_and!7183 (and (=> t!4159 result!3849) b_and!7187)))

(declare-fun b_lambda!7593 () Bool)

(assert (=> (not b_lambda!7593) (not b!14185)))

(declare-fun t!4161 () Bool)

(declare-fun tb!3779 () Bool)

(assert (=> (and start!3012 (= s1!33 s2!32) t!4161) tb!3779))

(declare-fun result!3851 () Bool)

(assert (=> tb!3779 (= result!3851 true)))

(assert (=> b!14185 t!4161))

(declare-fun b_and!7189 () Bool)

(assert (= b_and!7185 (and (=> t!4161 result!3851) b_and!7189)))

(declare-fun t!4163 () Bool)

(declare-fun tb!3781 () Bool)

(assert (=> (and start!3012 (= s2!32 s2!32) t!4163) tb!3781))

(declare-fun result!3853 () Bool)

(assert (=> tb!3781 (= result!3853 true)))

(assert (=> b!14185 t!4163))

(declare-fun b_and!7191 () Bool)

(assert (= b_and!7187 (and (=> t!4163 result!3853) b_and!7191)))

(declare-fun m!18041 () Bool)

(assert (=> b!14181 m!18041))

(declare-fun m!18043 () Bool)

(assert (=> b!14182 m!18043))

(declare-fun m!18045 () Bool)

(assert (=> b!14183 m!18045))

(declare-fun m!18047 () Bool)

(assert (=> b!14185 m!18047))

(declare-fun m!18049 () Bool)

(assert (=> b!14184 m!18049))

(push 1)

(assert (not b_next!4799))

(assert b_and!7191)

(assert (not b_lambda!7593))

(assert (not b_lambda!7589))

(assert (not b_lambda!7587))

(assert (not b_next!4801))

(assert (not b_lambda!7591))

(assert b_and!7189)

(assert (not b!14184))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7189)

(assert b_and!7191)

(assert (not b_next!4801))

(assert (not b_next!4799))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7595 () Bool)

(assert (= b_lambda!7587 (or (and start!3012 (= lambda!3538 s2!32)) (and start!3012 b_free!2037 (= s1!33 s2!32)) (and start!3012 (= lambda!3537 s2!32)) (and start!3012 b_free!2039) (and start!3012 (= lambda!3536 s2!32)) (and start!3012 (= lambda!3535 s2!32)) (and b!14184 (= lambda!3539 s2!32)) (and start!3012 (= lambda!3534 s2!32)) b_lambda!7595)))

(declare-fun bs!4937 () Bool)

(declare-fun d!11121 () Bool)

(assert (= bs!4937 (and d!11121 start!3012)))

(assert (=> bs!4937 (= (dynLambda!560 lambda!3537 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000011))))

(assert (=> (and start!3012 (= lambda!3537 s2!32) b!14181) d!11121))

(declare-fun bs!4938 () Bool)

(declare-fun d!11123 () Bool)

(assert (= bs!4938 (and d!11123 start!3012)))

(assert (=> bs!4938 (= (dynLambda!560 lambda!3536 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000010))))

(assert (=> (and start!3012 (= lambda!3536 s2!32) b!14181) d!11123))

(declare-fun bs!4939 () Bool)

(declare-fun d!11125 () Bool)

(assert (= bs!4939 (and d!11125 b!14184)))

(assert (=> bs!4939 (= (dynLambda!560 lambda!3539 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000100))))

(assert (=> (and b!14184 (= lambda!3539 s2!32) b!14181) d!11125))

(declare-fun bs!4940 () Bool)

(declare-fun d!11127 () Bool)

(assert (= bs!4940 (and d!11127 start!3012)))

(assert (=> bs!4940 (= (dynLambda!560 lambda!3535 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000001))))

(assert (=> (and start!3012 (= lambda!3535 s2!32) b!14181) d!11127))

(declare-fun bs!4941 () Bool)

(declare-fun d!11129 () Bool)

(assert (= bs!4941 (and d!11129 start!3012)))

(declare-fun res!5465 () Bool)

(declare-fun e!7845 () Bool)

(assert (=> bs!4941 (=> res!5465 e!7845)))

(assert (=> bs!4941 (= res!5465 (dynLambda!560 lambda!3536 #b00000000000000000000000000000011))))

(assert (=> bs!4941 (= (dynLambda!560 lambda!3538 #b00000000000000000000000000000011) e!7845)))

(declare-fun b!14186 () Bool)

(assert (=> b!14186 (= e!7845 (dynLambda!560 lambda!3537 #b00000000000000000000000000000011))))

(assert (= (and bs!4941 (not res!5465)) b!14186))

(declare-fun b_lambda!7603 () Bool)

(assert (=> (not b_lambda!7603) (not bs!4941)))

(declare-fun b_lambda!7605 () Bool)

(assert (=> (not b_lambda!7605) (not b!14186)))

(declare-fun m!18051 () Bool)

(assert (=> bs!4941 m!18051))

(declare-fun m!18053 () Bool)

(assert (=> b!14186 m!18053))

(assert (=> (and start!3012 (= lambda!3538 s2!32) b!14181) d!11129))

(declare-fun bs!4942 () Bool)

(declare-fun d!11131 () Bool)

(assert (= bs!4942 (and d!11131 start!3012)))

(declare-fun res!5466 () Bool)

(declare-fun e!7846 () Bool)

(assert (=> bs!4942 (=> res!5466 e!7846)))

(assert (=> bs!4942 (= res!5466 (dynLambda!560 lambda!3535 #b00000000000000000000000000000011))))

(assert (=> bs!4942 (= (dynLambda!560 lambda!3534 #b00000000000000000000000000000011) e!7846)))

(declare-fun b!14187 () Bool)

(assert (=> b!14187 (= e!7846 (dynLambda!560 lambda!3538 #b00000000000000000000000000000011))))

(assert (= (and bs!4942 (not res!5466)) b!14187))

(declare-fun b_lambda!7607 () Bool)

(assert (=> (not b_lambda!7607) (not bs!4942)))

(declare-fun b_lambda!7609 () Bool)

(assert (=> (not b_lambda!7609) (not b!14187)))

(declare-fun m!18055 () Bool)

(assert (=> bs!4942 m!18055))

(declare-fun m!18057 () Bool)

(assert (=> b!14187 m!18057))

(assert (=> (and start!3012 (= lambda!3534 s2!32) b!14181) d!11131))

(declare-fun b_lambda!7597 () Bool)

(assert (= b_lambda!7593 (or (and start!3012 (= lambda!3538 s2!32)) (and start!3012 b_free!2037 (= s1!33 s2!32)) (and start!3012 (= lambda!3537 s2!32)) (and start!3012 b_free!2039) (and start!3012 (= lambda!3536 s2!32)) (and start!3012 (= lambda!3535 s2!32)) (and b!14184 (= lambda!3539 s2!32)) (and start!3012 (= lambda!3534 s2!32)) b_lambda!7597)))

(declare-fun bs!4943 () Bool)

(declare-fun d!11133 () Bool)

(assert (= bs!4943 (and d!11133 start!3012)))

(assert (=> bs!4943 (= (dynLambda!560 lambda!3535 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000001))))

(assert (=> (and start!3012 (= lambda!3535 s2!32) b!14185) d!11133))

(declare-fun bs!4944 () Bool)

(declare-fun d!11135 () Bool)

(assert (= bs!4944 (and d!11135 start!3012)))

(assert (=> bs!4944 (= (dynLambda!560 lambda!3537 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000011))))

(assert (=> (and start!3012 (= lambda!3537 s2!32) b!14185) d!11135))

(declare-fun bs!4945 () Bool)

(declare-fun d!11137 () Bool)

(assert (= bs!4945 (and d!11137 start!3012)))

(declare-fun res!5467 () Bool)

(declare-fun e!7847 () Bool)

(assert (=> bs!4945 (=> res!5467 e!7847)))

(assert (=> bs!4945 (= res!5467 (dynLambda!560 lambda!3536 #b00000000000000000000000000000010))))

(assert (=> bs!4945 (= (dynLambda!560 lambda!3538 #b00000000000000000000000000000010) e!7847)))

(declare-fun b!14188 () Bool)

(assert (=> b!14188 (= e!7847 (dynLambda!560 lambda!3537 #b00000000000000000000000000000010))))

(assert (= (and bs!4945 (not res!5467)) b!14188))

(declare-fun b_lambda!7611 () Bool)

(assert (=> (not b_lambda!7611) (not bs!4945)))

(declare-fun b_lambda!7613 () Bool)

(assert (=> (not b_lambda!7613) (not b!14188)))

(declare-fun m!18059 () Bool)

(assert (=> bs!4945 m!18059))

(declare-fun m!18061 () Bool)

(assert (=> b!14188 m!18061))

(assert (=> (and start!3012 (= lambda!3538 s2!32) b!14185) d!11137))

(declare-fun bs!4946 () Bool)

(declare-fun d!11139 () Bool)

(assert (= bs!4946 (and d!11139 start!3012)))

(declare-fun res!5468 () Bool)

(declare-fun e!7848 () Bool)

(assert (=> bs!4946 (=> res!5468 e!7848)))

(assert (=> bs!4946 (= res!5468 (dynLambda!560 lambda!3535 #b00000000000000000000000000000010))))

(assert (=> bs!4946 (= (dynLambda!560 lambda!3534 #b00000000000000000000000000000010) e!7848)))

(declare-fun b!14189 () Bool)

(assert (=> b!14189 (= e!7848 (dynLambda!560 lambda!3538 #b00000000000000000000000000000010))))

(assert (= (and bs!4946 (not res!5468)) b!14189))

(declare-fun b_lambda!7615 () Bool)

(assert (=> (not b_lambda!7615) (not bs!4946)))

(declare-fun b_lambda!7617 () Bool)

(assert (=> (not b_lambda!7617) (not b!14189)))

(declare-fun m!18063 () Bool)

(assert (=> bs!4946 m!18063))

(declare-fun m!18065 () Bool)

(assert (=> b!14189 m!18065))

(assert (=> (and start!3012 (= lambda!3534 s2!32) b!14185) d!11139))

(declare-fun bs!4947 () Bool)

(declare-fun d!11141 () Bool)

(assert (= bs!4947 (and d!11141 start!3012)))

(assert (=> bs!4947 (= (dynLambda!560 lambda!3536 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000010))))

(assert (=> (and start!3012 (= lambda!3536 s2!32) b!14185) d!11141))

(declare-fun bs!4948 () Bool)

(declare-fun d!11143 () Bool)

(assert (= bs!4948 (and d!11143 b!14184)))

(assert (=> bs!4948 (= (dynLambda!560 lambda!3539 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000100))))

(assert (=> (and b!14184 (= lambda!3539 s2!32) b!14185) d!11143))

(declare-fun b_lambda!7599 () Bool)

(assert (= b_lambda!7589 (or (and start!3012 (= lambda!3538 s2!32)) (and start!3012 b_free!2037 (= s1!33 s2!32)) (and start!3012 (= lambda!3537 s2!32)) (and start!3012 b_free!2039) (and start!3012 (= lambda!3536 s2!32)) (and start!3012 (= lambda!3535 s2!32)) (and b!14184 (= lambda!3539 s2!32)) (and start!3012 (= lambda!3534 s2!32)) b_lambda!7599)))

(declare-fun bs!4949 () Bool)

(declare-fun d!11145 () Bool)

(assert (= bs!4949 (and d!11145 b!14184)))

(assert (=> bs!4949 (= (dynLambda!560 lambda!3539 #b00000000000000000000000000000100) (= #b00000000000000000000000000000100 #b00000000000000000000000000000100))))

(assert (=> (and b!14184 (= lambda!3539 s2!32) b!14182) d!11145))

(declare-fun bs!4950 () Bool)

(declare-fun d!11147 () Bool)

(assert (= bs!4950 (and d!11147 start!3012)))

(declare-fun res!5469 () Bool)

(declare-fun e!7849 () Bool)

(assert (=> bs!4950 (=> res!5469 e!7849)))

(assert (=> bs!4950 (= res!5469 (dynLambda!560 lambda!3535 #b00000000000000000000000000000100))))

(assert (=> bs!4950 (= (dynLambda!560 lambda!3534 #b00000000000000000000000000000100) e!7849)))

(declare-fun b!14190 () Bool)

(assert (=> b!14190 (= e!7849 (dynLambda!560 lambda!3538 #b00000000000000000000000000000100))))

(assert (= (and bs!4950 (not res!5469)) b!14190))

(declare-fun b_lambda!7619 () Bool)

(assert (=> (not b_lambda!7619) (not bs!4950)))

(declare-fun b_lambda!7621 () Bool)

(assert (=> (not b_lambda!7621) (not b!14190)))

(declare-fun m!18067 () Bool)

(assert (=> bs!4950 m!18067))

(declare-fun m!18069 () Bool)

(assert (=> b!14190 m!18069))

(assert (=> (and start!3012 (= lambda!3534 s2!32) b!14182) d!11147))

(declare-fun bs!4951 () Bool)

(declare-fun d!11149 () Bool)

(assert (= bs!4951 (and d!11149 start!3012)))

(assert (=> bs!4951 (= (dynLambda!560 lambda!3537 #b00000000000000000000000000000100) (= #b00000000000000000000000000000100 #b00000000000000000000000000000011))))

(assert (=> (and start!3012 (= lambda!3537 s2!32) b!14182) d!11149))

(declare-fun bs!4952 () Bool)

(declare-fun d!11151 () Bool)

(assert (= bs!4952 (and d!11151 start!3012)))

(assert (=> bs!4952 (= (dynLambda!560 lambda!3535 #b00000000000000000000000000000100) (= #b00000000000000000000000000000100 #b00000000000000000000000000000001))))

(assert (=> (and start!3012 (= lambda!3535 s2!32) b!14182) d!11151))

(declare-fun bs!4953 () Bool)

(declare-fun d!11153 () Bool)

(assert (= bs!4953 (and d!11153 start!3012)))

(declare-fun res!5470 () Bool)

(declare-fun e!7850 () Bool)

(assert (=> bs!4953 (=> res!5470 e!7850)))

(assert (=> bs!4953 (= res!5470 (dynLambda!560 lambda!3536 #b00000000000000000000000000000100))))

(assert (=> bs!4953 (= (dynLambda!560 lambda!3538 #b00000000000000000000000000000100) e!7850)))

(declare-fun b!14191 () Bool)

(assert (=> b!14191 (= e!7850 (dynLambda!560 lambda!3537 #b00000000000000000000000000000100))))

(assert (= (and bs!4953 (not res!5470)) b!14191))

(declare-fun b_lambda!7623 () Bool)

(assert (=> (not b_lambda!7623) (not bs!4953)))

(declare-fun b_lambda!7625 () Bool)

(assert (=> (not b_lambda!7625) (not b!14191)))

(declare-fun m!18071 () Bool)

(assert (=> bs!4953 m!18071))

(declare-fun m!18073 () Bool)

(assert (=> b!14191 m!18073))

(assert (=> (and start!3012 (= lambda!3538 s2!32) b!14182) d!11153))

(declare-fun bs!4954 () Bool)

(declare-fun d!11155 () Bool)

(assert (= bs!4954 (and d!11155 start!3012)))

(assert (=> bs!4954 (= (dynLambda!560 lambda!3536 #b00000000000000000000000000000100) (= #b00000000000000000000000000000100 #b00000000000000000000000000000010))))

(assert (=> (and start!3012 (= lambda!3536 s2!32) b!14182) d!11155))

(declare-fun b_lambda!7601 () Bool)

(assert (= b_lambda!7591 (or (and start!3012 (= lambda!3538 s2!32)) (and start!3012 b_free!2037 (= s1!33 s2!32)) (and start!3012 (= lambda!3537 s2!32)) (and start!3012 b_free!2039) (and start!3012 (= lambda!3536 s2!32)) (and start!3012 (= lambda!3535 s2!32)) (and b!14184 (= lambda!3539 s2!32)) (and start!3012 (= lambda!3534 s2!32)) b_lambda!7601)))

(declare-fun bs!4955 () Bool)

(declare-fun d!11157 () Bool)

(assert (= bs!4955 (and d!11157 start!3012)))

(declare-fun res!5471 () Bool)

(declare-fun e!7851 () Bool)

(assert (=> bs!4955 (=> res!5471 e!7851)))

(assert (=> bs!4955 (= res!5471 (dynLambda!560 lambda!3536 #b00000000000000000000000000000001))))

(assert (=> bs!4955 (= (dynLambda!560 lambda!3538 #b00000000000000000000000000000001) e!7851)))

(declare-fun b!14192 () Bool)

(assert (=> b!14192 (= e!7851 (dynLambda!560 lambda!3537 #b00000000000000000000000000000001))))

(assert (= (and bs!4955 (not res!5471)) b!14192))

(declare-fun b_lambda!7627 () Bool)

(assert (=> (not b_lambda!7627) (not bs!4955)))

(declare-fun b_lambda!7629 () Bool)

(assert (=> (not b_lambda!7629) (not b!14192)))

(declare-fun m!18075 () Bool)

(assert (=> bs!4955 m!18075))

(declare-fun m!18077 () Bool)

(assert (=> b!14192 m!18077))

(assert (=> (and start!3012 (= lambda!3538 s2!32) b!14183) d!11157))

(declare-fun bs!4956 () Bool)

(declare-fun d!11159 () Bool)

(assert (= bs!4956 (and d!11159 b!14184)))

(assert (=> bs!4956 (= (dynLambda!560 lambda!3539 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000100))))

(assert (=> (and b!14184 (= lambda!3539 s2!32) b!14183) d!11159))

(declare-fun bs!4957 () Bool)

(declare-fun d!11161 () Bool)

(assert (= bs!4957 (and d!11161 start!3012)))

(assert (=> bs!4957 (= (dynLambda!560 lambda!3535 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000001))))

(assert (=> (and start!3012 (= lambda!3535 s2!32) b!14183) d!11161))

(declare-fun bs!4958 () Bool)

(declare-fun d!11163 () Bool)

(assert (= bs!4958 (and d!11163 start!3012)))

(assert (=> bs!4958 (= (dynLambda!560 lambda!3536 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000010))))

(assert (=> (and start!3012 (= lambda!3536 s2!32) b!14183) d!11163))

(declare-fun bs!4959 () Bool)

(declare-fun d!11165 () Bool)

(assert (= bs!4959 (and d!11165 start!3012)))

(assert (=> bs!4959 (= (dynLambda!560 lambda!3537 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000011))))

(assert (=> (and start!3012 (= lambda!3537 s2!32) b!14183) d!11165))

(declare-fun bs!4960 () Bool)

(declare-fun d!11167 () Bool)

(assert (= bs!4960 (and d!11167 start!3012)))

(declare-fun res!5472 () Bool)

(declare-fun e!7852 () Bool)

(assert (=> bs!4960 (=> res!5472 e!7852)))

(assert (=> bs!4960 (= res!5472 (dynLambda!560 lambda!3535 #b00000000000000000000000000000001))))

(assert (=> bs!4960 (= (dynLambda!560 lambda!3534 #b00000000000000000000000000000001) e!7852)))

(declare-fun b!14193 () Bool)

(assert (=> b!14193 (= e!7852 (dynLambda!560 lambda!3538 #b00000000000000000000000000000001))))

(assert (= (and bs!4960 (not res!5472)) b!14193))

(declare-fun b_lambda!7631 () Bool)

(assert (=> (not b_lambda!7631) (not bs!4960)))

(declare-fun b_lambda!7633 () Bool)

(assert (=> (not b_lambda!7633) (not b!14193)))

(declare-fun m!18079 () Bool)

(assert (=> bs!4960 m!18079))

(declare-fun m!18081 () Bool)

(assert (=> b!14193 m!18081))

(assert (=> (and start!3012 (= lambda!3534 s2!32) b!14183) d!11167))

(push 1)

(assert (not b_next!4799))

(assert b_and!7191)

(assert (not b_lambda!7625))

(assert (not b_lambda!7611))

(assert (not b_lambda!7615))

(assert (not b_lambda!7607))

(assert (not b_lambda!7595))

(assert (not b_lambda!7605))

(assert (not b_next!4801))

(assert (not b_lambda!7603))

(assert (not b_lambda!7633))

(assert (not b_lambda!7599))

(assert (not b_lambda!7601))

(assert (not b_lambda!7623))

(assert (not b_lambda!7619))

(assert (not b_lambda!7613))

(assert (not b_lambda!7627))

(assert (not b_lambda!7597))

(assert (not b_lambda!7617))

(assert (not b_lambda!7621))

(assert (not b_lambda!7609))

(assert b_and!7189)

(assert (not b_lambda!7631))

(assert (not b_lambda!7629))

(assert (not b!14184))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7189)

(assert b_and!7191)

(assert (not b_next!4801))

(assert (not b_next!4799))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7635 () Bool)

(assert (= b_lambda!7617 (or start!3012 b_lambda!7635)))

(declare-fun bs!4961 () Bool)

(declare-fun d!11169 () Bool)

(assert (= bs!4961 (and d!11169 start!3012)))

(declare-fun res!5473 () Bool)

(declare-fun e!7853 () Bool)

(assert (=> bs!4961 (=> res!5473 e!7853)))

(assert (=> bs!4961 (= res!5473 (dynLambda!560 lambda!3536 #b00000000000000000000000000000010))))

(assert (=> bs!4961 (= (dynLambda!560 lambda!3538 #b00000000000000000000000000000010) e!7853)))

(declare-fun b!14194 () Bool)

(assert (=> b!14194 (= e!7853 (dynLambda!560 lambda!3537 #b00000000000000000000000000000010))))

(assert (= (and bs!4961 (not res!5473)) b!14194))

(declare-fun b_lambda!7667 () Bool)

(assert (=> (not b_lambda!7667) (not bs!4961)))

(declare-fun b_lambda!7669 () Bool)

(assert (=> (not b_lambda!7669) (not b!14194)))

(assert (=> bs!4961 m!18059))

(assert (=> b!14194 m!18061))

(assert (=> b!14189 d!11169))

(declare-fun b_lambda!7637 () Bool)

(assert (= b_lambda!7613 (or start!3012 b_lambda!7637)))

(declare-fun bs!4962 () Bool)

(declare-fun d!11171 () Bool)

(assert (= bs!4962 (and d!11171 start!3012)))

(assert (=> bs!4962 (= (dynLambda!560 lambda!3537 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000011))))

(assert (=> b!14188 d!11171))

(declare-fun b_lambda!7639 () Bool)

(assert (= b_lambda!7623 (or start!3012 b_lambda!7639)))

(declare-fun bs!4963 () Bool)

(declare-fun d!11173 () Bool)

(assert (= bs!4963 (and d!11173 start!3012)))

(assert (=> bs!4963 (= (dynLambda!560 lambda!3536 #b00000000000000000000000000000100) (= #b00000000000000000000000000000100 #b00000000000000000000000000000010))))

(assert (=> bs!4953 d!11173))

(declare-fun b_lambda!7641 () Bool)

(assert (= b_lambda!7615 (or start!3012 b_lambda!7641)))

(declare-fun bs!4964 () Bool)

(declare-fun d!11175 () Bool)

(assert (= bs!4964 (and d!11175 start!3012)))

(assert (=> bs!4964 (= (dynLambda!560 lambda!3535 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000001))))

(assert (=> bs!4946 d!11175))

(declare-fun b_lambda!7643 () Bool)

(assert (= b_lambda!7607 (or start!3012 b_lambda!7643)))

(declare-fun bs!4965 () Bool)

(declare-fun d!11177 () Bool)

(assert (= bs!4965 (and d!11177 start!3012)))

(assert (=> bs!4965 (= (dynLambda!560 lambda!3535 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000001))))

(assert (=> bs!4942 d!11177))

(declare-fun b_lambda!7645 () Bool)

(assert (= b_lambda!7621 (or start!3012 b_lambda!7645)))

(declare-fun bs!4966 () Bool)

(declare-fun d!11179 () Bool)

(assert (= bs!4966 (and d!11179 start!3012)))

(declare-fun res!5474 () Bool)

(declare-fun e!7854 () Bool)

(assert (=> bs!4966 (=> res!5474 e!7854)))

(assert (=> bs!4966 (= res!5474 (dynLambda!560 lambda!3536 #b00000000000000000000000000000100))))

(assert (=> bs!4966 (= (dynLambda!560 lambda!3538 #b00000000000000000000000000000100) e!7854)))

(declare-fun b!14195 () Bool)

(assert (=> b!14195 (= e!7854 (dynLambda!560 lambda!3537 #b00000000000000000000000000000100))))

(assert (= (and bs!4966 (not res!5474)) b!14195))

(declare-fun b_lambda!7671 () Bool)

(assert (=> (not b_lambda!7671) (not bs!4966)))

(declare-fun b_lambda!7673 () Bool)

(assert (=> (not b_lambda!7673) (not b!14195)))

(assert (=> bs!4966 m!18071))

(assert (=> b!14195 m!18073))

(assert (=> b!14190 d!11179))

(declare-fun b_lambda!7647 () Bool)

(assert (= b_lambda!7625 (or start!3012 b_lambda!7647)))

(declare-fun bs!4967 () Bool)

(declare-fun d!11181 () Bool)

(assert (= bs!4967 (and d!11181 start!3012)))

(assert (=> bs!4967 (= (dynLambda!560 lambda!3537 #b00000000000000000000000000000100) (= #b00000000000000000000000000000100 #b00000000000000000000000000000011))))

(assert (=> b!14191 d!11181))

(declare-fun b_lambda!7649 () Bool)

(assert (= b_lambda!7603 (or start!3012 b_lambda!7649)))

(declare-fun bs!4968 () Bool)

(declare-fun d!11183 () Bool)

(assert (= bs!4968 (and d!11183 start!3012)))

(assert (=> bs!4968 (= (dynLambda!560 lambda!3536 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000010))))

(assert (=> bs!4941 d!11183))

(declare-fun b_lambda!7651 () Bool)

(assert (= b_lambda!7605 (or start!3012 b_lambda!7651)))

(declare-fun bs!4969 () Bool)

(declare-fun d!11185 () Bool)

(assert (= bs!4969 (and d!11185 start!3012)))

(assert (=> bs!4969 (= (dynLambda!560 lambda!3537 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000011))))

(assert (=> b!14186 d!11185))

(declare-fun b_lambda!7653 () Bool)

(assert (= b_lambda!7631 (or start!3012 b_lambda!7653)))

(declare-fun bs!4970 () Bool)

(declare-fun d!11187 () Bool)

(assert (= bs!4970 (and d!11187 start!3012)))

(assert (=> bs!4970 (= (dynLambda!560 lambda!3535 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000001))))

(assert (=> bs!4960 d!11187))

(declare-fun b_lambda!7655 () Bool)

(assert (= b_lambda!7609 (or start!3012 b_lambda!7655)))

(declare-fun bs!4971 () Bool)

(declare-fun d!11189 () Bool)

(assert (= bs!4971 (and d!11189 start!3012)))

(declare-fun res!5475 () Bool)

(declare-fun e!7855 () Bool)

(assert (=> bs!4971 (=> res!5475 e!7855)))

(assert (=> bs!4971 (= res!5475 (dynLambda!560 lambda!3536 #b00000000000000000000000000000011))))

(assert (=> bs!4971 (= (dynLambda!560 lambda!3538 #b00000000000000000000000000000011) e!7855)))

(declare-fun b!14196 () Bool)

(assert (=> b!14196 (= e!7855 (dynLambda!560 lambda!3537 #b00000000000000000000000000000011))))

(assert (= (and bs!4971 (not res!5475)) b!14196))

(declare-fun b_lambda!7675 () Bool)

(assert (=> (not b_lambda!7675) (not bs!4971)))

(declare-fun b_lambda!7677 () Bool)

(assert (=> (not b_lambda!7677) (not b!14196)))

(assert (=> bs!4971 m!18051))

(assert (=> b!14196 m!18053))

(assert (=> b!14187 d!11189))

(declare-fun b_lambda!7657 () Bool)

(assert (= b_lambda!7619 (or start!3012 b_lambda!7657)))

(declare-fun bs!4972 () Bool)

(declare-fun d!11191 () Bool)

(assert (= bs!4972 (and d!11191 start!3012)))

(assert (=> bs!4972 (= (dynLambda!560 lambda!3535 #b00000000000000000000000000000100) (= #b00000000000000000000000000000100 #b00000000000000000000000000000001))))

(assert (=> bs!4950 d!11191))

(declare-fun b_lambda!7659 () Bool)

(assert (= b_lambda!7629 (or start!3012 b_lambda!7659)))

(declare-fun bs!4973 () Bool)

(declare-fun d!11193 () Bool)

(assert (= bs!4973 (and d!11193 start!3012)))

(assert (=> bs!4973 (= (dynLambda!560 lambda!3537 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000011))))

(assert (=> b!14192 d!11193))

(declare-fun b_lambda!7661 () Bool)

(assert (= b_lambda!7611 (or start!3012 b_lambda!7661)))

(declare-fun bs!4974 () Bool)

(declare-fun d!11195 () Bool)

(assert (= bs!4974 (and d!11195 start!3012)))

(assert (=> bs!4974 (= (dynLambda!560 lambda!3536 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000010))))

(assert (=> bs!4945 d!11195))

(declare-fun b_lambda!7663 () Bool)

(assert (= b_lambda!7633 (or start!3012 b_lambda!7663)))

(declare-fun bs!4975 () Bool)

(declare-fun d!11197 () Bool)

(assert (= bs!4975 (and d!11197 start!3012)))

(declare-fun res!5476 () Bool)

(declare-fun e!7856 () Bool)

(assert (=> bs!4975 (=> res!5476 e!7856)))

(assert (=> bs!4975 (= res!5476 (dynLambda!560 lambda!3536 #b00000000000000000000000000000001))))

(assert (=> bs!4975 (= (dynLambda!560 lambda!3538 #b00000000000000000000000000000001) e!7856)))

(declare-fun b!14197 () Bool)

(assert (=> b!14197 (= e!7856 (dynLambda!560 lambda!3537 #b00000000000000000000000000000001))))

(assert (= (and bs!4975 (not res!5476)) b!14197))

(declare-fun b_lambda!7679 () Bool)

(assert (=> (not b_lambda!7679) (not bs!4975)))

(declare-fun b_lambda!7681 () Bool)

(assert (=> (not b_lambda!7681) (not b!14197)))

(assert (=> bs!4975 m!18075))

(assert (=> b!14197 m!18077))

(assert (=> b!14193 d!11197))

(declare-fun b_lambda!7665 () Bool)

(assert (= b_lambda!7627 (or start!3012 b_lambda!7665)))

(declare-fun bs!4976 () Bool)

(declare-fun d!11199 () Bool)

(assert (= bs!4976 (and d!11199 start!3012)))

(assert (=> bs!4976 (= (dynLambda!560 lambda!3536 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000010))))

(assert (=> bs!4955 d!11199))

(push 1)

(assert (not b_lambda!7677))

(assert (not b_lambda!7673))

(assert (not b_lambda!7659))

(assert (not b_next!4799))

(assert b_and!7191)

(assert (not b_lambda!7651))

(assert (not b_lambda!7669))

(assert (not b_lambda!7645))

(assert (not b_lambda!7655))

(assert (not b_lambda!7647))

(assert (not b_lambda!7595))

(assert (not b_lambda!7663))

(assert (not b_lambda!7649))

(assert (not b_lambda!7665))

(assert (not b_lambda!7667))

(assert (not b_next!4801))

(assert (not b_lambda!7639))

(assert (not b_lambda!7599))

(assert (not b_lambda!7643))

(assert (not b_lambda!7601))

(assert (not b_lambda!7653))

(assert (not b_lambda!7681))

(assert (not b_lambda!7597))

(assert (not b_lambda!7657))

(assert (not b_lambda!7671))

(assert (not b_lambda!7675))

(assert (not b_lambda!7679))

(assert b_and!7189)

(assert (not b_lambda!7661))

(assert (not b_lambda!7641))

(assert (not b_lambda!7635))

(assert (not b!14184))

(assert (not b_lambda!7637))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7189)

(assert b_and!7191)

(assert (not b_next!4801))

(assert (not b_next!4799))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!4977 () Bool)

(declare-fun d!11201 () Bool)

(assert (= bs!4977 (and d!11201 start!3012)))

(declare-fun lambda!3542 () Int)

(assert (=> bs!4977 (= (and (= s1!33 lambda!3536) (= lambda!3539 lambda!3537)) (= lambda!3542 lambda!3538))))

(assert (=> bs!4977 (not (= lambda!3542 lambda!3536))))

(declare-fun bs!4978 () Bool)

(assert (= bs!4978 (and d!11201 b!14184)))

(assert (=> bs!4978 (not (= lambda!3542 lambda!3539))))

(assert (=> bs!4977 (= (and (= s1!33 lambda!3535) (= lambda!3539 lambda!3538)) (= lambda!3542 lambda!3534))))

(assert (=> bs!4977 (not (= lambda!3542 lambda!3535))))

(assert (=> bs!4977 (not (= lambda!3542 lambda!3537))))

(assert (=> d!11201 true))

(declare-fun order!347 () Int)

(declare-fun dynLambda!561 (Int Int) Int)

(assert (=> d!11201 (< (dynLambda!561 order!347 s1!33) (dynLambda!561 order!347 lambda!3542))))

(assert (=> d!11201 true))

(assert (=> d!11201 (< (dynLambda!561 order!347 lambda!3539) (dynLambda!561 order!347 lambda!3542))))

(declare-fun b_next!4803 () Bool)

(assert (=> start!3012 (= b_next!4801 (or (and d!11201 (= lambda!3542 s2!32)) b_next!4803))))

(assert (=> d!11201 (= (union!2 s1!33 lambda!3539) lambda!3542)))

(assert (=> b!14184 d!11201))

(declare-fun b_lambda!7683 () Bool)

(assert (= b_lambda!7675 (or start!3012 b_lambda!7683)))

(assert (=> bs!4971 d!11183))

(declare-fun b_lambda!7685 () Bool)

(assert (= b_lambda!7673 (or start!3012 b_lambda!7685)))

(assert (=> b!14195 d!11181))

(declare-fun b_lambda!7687 () Bool)

(assert (= b_lambda!7677 (or start!3012 b_lambda!7687)))

(assert (=> b!14196 d!11185))

(declare-fun b_lambda!7689 () Bool)

(assert (= b_lambda!7679 (or start!3012 b_lambda!7689)))

(assert (=> bs!4975 d!11199))

(declare-fun b_lambda!7691 () Bool)

(assert (= b_lambda!7681 (or start!3012 b_lambda!7691)))

(assert (=> b!14197 d!11193))

(declare-fun b_lambda!7693 () Bool)

(assert (= b_lambda!7667 (or start!3012 b_lambda!7693)))

(assert (=> bs!4961 d!11195))

(declare-fun b_lambda!7695 () Bool)

(assert (= b_lambda!7671 (or start!3012 b_lambda!7695)))

(assert (=> bs!4966 d!11173))

(declare-fun b_lambda!7697 () Bool)

(assert (= b_lambda!7669 (or start!3012 b_lambda!7697)))

(assert (=> b!14194 d!11171))

(push 1)

(assert (not b_lambda!7659))

(assert (not b_lambda!7691))

(assert (not b_next!4799))

(assert b_and!7191)

(assert (not b_lambda!7651))

(assert (not b_next!4803))

(assert (not b_lambda!7645))

(assert (not b_lambda!7655))

(assert (not b_lambda!7685))

(assert (not b_lambda!7647))

(assert (not b_lambda!7595))

(assert (not b_lambda!7689))

(assert (not b_lambda!7693))

(assert (not b_lambda!7663))

(assert (not b_lambda!7649))

(assert (not b_lambda!7665))

(assert (not b_lambda!7695))

(assert (not b_lambda!7639))

(assert (not b_lambda!7599))

(assert (not b_lambda!7643))

(assert (not b_lambda!7601))

(assert (not b_lambda!7653))

(assert (not b_lambda!7597))

(assert (not b_lambda!7657))

(assert b_and!7189)

(assert (not b_lambda!7687))

(assert (not b_lambda!7661))

(assert (not b_lambda!7697))

(assert (not b_lambda!7641))

(assert (not b_lambda!7635))

(assert (not b_lambda!7637))

(assert (not b_lambda!7683))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7189)

(assert b_and!7191)

(assert (not b_next!4803))

(assert (not b_next!4799))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7699 () Bool)

(assert (= b_lambda!7595 (or (and d!11201 (= lambda!3542 s2!32)) b_lambda!7699)))

(declare-fun bs!4979 () Bool)

(declare-fun d!11203 () Bool)

(assert (= bs!4979 (and d!11203 d!11201)))

(declare-fun res!5479 () Bool)

(declare-fun e!7859 () Bool)

(assert (=> bs!4979 (=> res!5479 e!7859)))

(assert (=> bs!4979 (= res!5479 (dynLambda!560 s1!33 #b00000000000000000000000000000011))))

(assert (=> bs!4979 (= (dynLambda!560 lambda!3542 #b00000000000000000000000000000011) e!7859)))

(declare-fun b!14202 () Bool)

(assert (=> b!14202 (= e!7859 (dynLambda!560 lambda!3539 #b00000000000000000000000000000011))))

(assert (= (and bs!4979 (not res!5479)) b!14202))

(declare-fun b_lambda!7707 () Bool)

(assert (=> (not b_lambda!7707) (not bs!4979)))

(declare-fun t!4165 () Bool)

(declare-fun tb!3783 () Bool)

(assert (=> (and start!3012 (= s1!33 s1!33) t!4165) tb!3783))

(declare-fun result!3855 () Bool)

(assert (=> tb!3783 (= result!3855 true)))

(assert (=> bs!4979 t!4165))

(declare-fun b_and!7193 () Bool)

(assert (= b_and!7189 (and (=> t!4165 result!3855) b_and!7193)))

(declare-fun t!4167 () Bool)

(declare-fun tb!3785 () Bool)

(assert (=> (and start!3012 (= s2!32 s1!33) t!4167) tb!3785))

(declare-fun result!3857 () Bool)

(assert (=> tb!3785 (= result!3857 true)))

(assert (=> bs!4979 t!4167))

(declare-fun b_and!7195 () Bool)

(assert (= b_and!7191 (and (=> t!4167 result!3857) b_and!7195)))

(declare-fun b_lambda!7709 () Bool)

(assert (=> (not b_lambda!7709) (not b!14202)))

(declare-fun m!18083 () Bool)

(assert (=> bs!4979 m!18083))

(declare-fun m!18085 () Bool)

(assert (=> b!14202 m!18085))

(assert (=> (and d!11201 (= lambda!3542 s2!32) b!14181) d!11203))

(declare-fun b_lambda!7701 () Bool)

(assert (= b_lambda!7597 (or (and d!11201 (= lambda!3542 s2!32)) b_lambda!7701)))

(declare-fun bs!4980 () Bool)

(declare-fun d!11205 () Bool)

(assert (= bs!4980 (and d!11205 d!11201)))

(declare-fun res!5480 () Bool)

(declare-fun e!7860 () Bool)

(assert (=> bs!4980 (=> res!5480 e!7860)))

(assert (=> bs!4980 (= res!5480 (dynLambda!560 s1!33 #b00000000000000000000000000000010))))

(assert (=> bs!4980 (= (dynLambda!560 lambda!3542 #b00000000000000000000000000000010) e!7860)))

(declare-fun b!14203 () Bool)

(assert (=> b!14203 (= e!7860 (dynLambda!560 lambda!3539 #b00000000000000000000000000000010))))

(assert (= (and bs!4980 (not res!5480)) b!14203))

(declare-fun b_lambda!7711 () Bool)

(assert (=> (not b_lambda!7711) (not bs!4980)))

(declare-fun t!4169 () Bool)

(declare-fun tb!3787 () Bool)

(assert (=> (and start!3012 (= s1!33 s1!33) t!4169) tb!3787))

(declare-fun result!3859 () Bool)

(assert (=> tb!3787 (= result!3859 true)))

(assert (=> bs!4980 t!4169))

(declare-fun b_and!7197 () Bool)

(assert (= b_and!7193 (and (=> t!4169 result!3859) b_and!7197)))

(declare-fun tb!3789 () Bool)

(declare-fun t!4171 () Bool)

(assert (=> (and start!3012 (= s2!32 s1!33) t!4171) tb!3789))

(declare-fun result!3861 () Bool)

(assert (=> tb!3789 (= result!3861 true)))

(assert (=> bs!4980 t!4171))

(declare-fun b_and!7199 () Bool)

(assert (= b_and!7195 (and (=> t!4171 result!3861) b_and!7199)))

(declare-fun b_lambda!7713 () Bool)

(assert (=> (not b_lambda!7713) (not b!14203)))

(declare-fun m!18087 () Bool)

(assert (=> bs!4980 m!18087))

(declare-fun m!18089 () Bool)

(assert (=> b!14203 m!18089))

(assert (=> (and d!11201 (= lambda!3542 s2!32) b!14185) d!11205))

(declare-fun b_lambda!7703 () Bool)

(assert (= b_lambda!7599 (or (and d!11201 (= lambda!3542 s2!32)) b_lambda!7703)))

(declare-fun bs!4981 () Bool)

(declare-fun d!11207 () Bool)

(assert (= bs!4981 (and d!11207 d!11201)))

(declare-fun res!5481 () Bool)

(declare-fun e!7861 () Bool)

(assert (=> bs!4981 (=> res!5481 e!7861)))

(assert (=> bs!4981 (= res!5481 (dynLambda!560 s1!33 #b00000000000000000000000000000100))))

(assert (=> bs!4981 (= (dynLambda!560 lambda!3542 #b00000000000000000000000000000100) e!7861)))

(declare-fun b!14204 () Bool)

(assert (=> b!14204 (= e!7861 (dynLambda!560 lambda!3539 #b00000000000000000000000000000100))))

(assert (= (and bs!4981 (not res!5481)) b!14204))

(declare-fun b_lambda!7715 () Bool)

(assert (=> (not b_lambda!7715) (not bs!4981)))

(declare-fun t!4173 () Bool)

(declare-fun tb!3791 () Bool)

(assert (=> (and start!3012 (= s1!33 s1!33) t!4173) tb!3791))

(declare-fun result!3863 () Bool)

(assert (=> tb!3791 (= result!3863 true)))

(assert (=> bs!4981 t!4173))

(declare-fun b_and!7201 () Bool)

(assert (= b_and!7197 (and (=> t!4173 result!3863) b_and!7201)))

(declare-fun tb!3793 () Bool)

(declare-fun t!4175 () Bool)

(assert (=> (and start!3012 (= s2!32 s1!33) t!4175) tb!3793))

(declare-fun result!3865 () Bool)

(assert (=> tb!3793 (= result!3865 true)))

(assert (=> bs!4981 t!4175))

(declare-fun b_and!7203 () Bool)

(assert (= b_and!7199 (and (=> t!4175 result!3865) b_and!7203)))

(declare-fun b_lambda!7717 () Bool)

(assert (=> (not b_lambda!7717) (not b!14204)))

(declare-fun m!18091 () Bool)

(assert (=> bs!4981 m!18091))

(declare-fun m!18093 () Bool)

(assert (=> b!14204 m!18093))

(assert (=> (and d!11201 (= lambda!3542 s2!32) b!14182) d!11207))

(declare-fun b_lambda!7705 () Bool)

(assert (= b_lambda!7601 (or (and d!11201 (= lambda!3542 s2!32)) b_lambda!7705)))

(declare-fun bs!4982 () Bool)

(declare-fun d!11209 () Bool)

(assert (= bs!4982 (and d!11209 d!11201)))

(declare-fun res!5482 () Bool)

(declare-fun e!7862 () Bool)

(assert (=> bs!4982 (=> res!5482 e!7862)))

(assert (=> bs!4982 (= res!5482 (dynLambda!560 s1!33 #b00000000000000000000000000000001))))

(assert (=> bs!4982 (= (dynLambda!560 lambda!3542 #b00000000000000000000000000000001) e!7862)))

(declare-fun b!14205 () Bool)

(assert (=> b!14205 (= e!7862 (dynLambda!560 lambda!3539 #b00000000000000000000000000000001))))

(assert (= (and bs!4982 (not res!5482)) b!14205))

(declare-fun b_lambda!7719 () Bool)

(assert (=> (not b_lambda!7719) (not bs!4982)))

(declare-fun t!4177 () Bool)

(declare-fun tb!3795 () Bool)

(assert (=> (and start!3012 (= s1!33 s1!33) t!4177) tb!3795))

(declare-fun result!3867 () Bool)

(assert (=> tb!3795 (= result!3867 true)))

(assert (=> bs!4982 t!4177))

(declare-fun b_and!7205 () Bool)

(assert (= b_and!7201 (and (=> t!4177 result!3867) b_and!7205)))

(declare-fun tb!3797 () Bool)

(declare-fun t!4179 () Bool)

(assert (=> (and start!3012 (= s2!32 s1!33) t!4179) tb!3797))

(declare-fun result!3869 () Bool)

(assert (=> tb!3797 (= result!3869 true)))

(assert (=> bs!4982 t!4179))

(declare-fun b_and!7207 () Bool)

(assert (= b_and!7203 (and (=> t!4179 result!3869) b_and!7207)))

(declare-fun b_lambda!7721 () Bool)

(assert (=> (not b_lambda!7721) (not b!14205)))

(declare-fun m!18095 () Bool)

(assert (=> bs!4982 m!18095))

(declare-fun m!18097 () Bool)

(assert (=> b!14205 m!18097))

(assert (=> (and d!11201 (= lambda!3542 s2!32) b!14183) d!11209))

(push 1)

(assert (not b_lambda!7713))

(assert b_and!7207)

(assert (not b_lambda!7659))

(assert (not b_lambda!7699))

(assert (not b_lambda!7691))

(assert (not b_next!4799))

(assert (not b_lambda!7707))

(assert (not b_lambda!7651))

(assert (not b_next!4803))

(assert (not b_lambda!7645))

(assert (not b_lambda!7721))

(assert (not b_lambda!7655))

(assert (not b_lambda!7705))

(assert (not b_lambda!7685))

(assert (not b_lambda!7647))

(assert b_and!7205)

(assert (not b_lambda!7703))

(assert (not b_lambda!7711))

(assert (not b_lambda!7689))

(assert (not b_lambda!7693))

(assert (not b_lambda!7663))

(assert (not b_lambda!7649))

(assert (not b_lambda!7665))

(assert (not b_lambda!7695))

(assert (not b_lambda!7639))

(assert (not b_lambda!7709))

(assert (not b_lambda!7643))

(assert (not b_lambda!7701))

(assert (not b_lambda!7715))

(assert (not b_lambda!7653))

(assert (not b_lambda!7657))

(assert (not b_lambda!7687))

(assert (not b_lambda!7661))

(assert (not b_lambda!7697))

(assert (not b_lambda!7641))

(assert (not b_lambda!7635))

(assert (not b_lambda!7719))

(assert (not b_lambda!7717))

(assert (not b_lambda!7637))

(assert (not b_lambda!7683))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7205)

(assert b_and!7207)

(assert (not b_next!4803))

(assert (not b_next!4799))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7723 () Bool)

(assert (= b_lambda!7717 (or b!14184 b_lambda!7723)))

(declare-fun bs!4983 () Bool)

(declare-fun d!11211 () Bool)

(assert (= bs!4983 (and d!11211 b!14184)))

(assert (=> bs!4983 (= (dynLambda!560 lambda!3539 #b00000000000000000000000000000100) (= #b00000000000000000000000000000100 #b00000000000000000000000000000100))))

(assert (=> b!14204 d!11211))

(declare-fun b_lambda!7725 () Bool)

(assert (= b_lambda!7721 (or b!14184 b_lambda!7725)))

(declare-fun bs!4984 () Bool)

(declare-fun d!11213 () Bool)

(assert (= bs!4984 (and d!11213 b!14184)))

(assert (=> bs!4984 (= (dynLambda!560 lambda!3539 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000100))))

(assert (=> b!14205 d!11213))

(declare-fun b_lambda!7727 () Bool)

(assert (= b_lambda!7711 (or (and start!3012 (= lambda!3538 s1!33)) (and start!3012 (= lambda!3535 s1!33)) (and start!3012 (= lambda!3536 s1!33)) (and start!3012 b_free!2037) (and start!3012 (= lambda!3537 s1!33)) (and start!3012 b_free!2039 (= s2!32 s1!33)) (and start!3012 (= lambda!3534 s1!33)) (and b!14184 (= lambda!3539 s1!33)) b_lambda!7727)))

(declare-fun bs!4985 () Bool)

(declare-fun d!11215 () Bool)

(assert (= bs!4985 (and d!11215 b!14184)))

(assert (=> bs!4985 (= (dynLambda!560 lambda!3539 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000100))))

(assert (=> (and b!14184 (= lambda!3539 s1!33) bs!4980) d!11215))

(declare-fun bs!4986 () Bool)

(declare-fun d!11217 () Bool)

(assert (= bs!4986 (and d!11217 start!3012)))

(assert (=> bs!4986 (= (dynLambda!560 lambda!3536 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000010))))

(assert (=> (and start!3012 (= lambda!3536 s1!33) bs!4980) d!11217))

(declare-fun bs!4987 () Bool)

(declare-fun d!11219 () Bool)

(assert (= bs!4987 (and d!11219 start!3012)))

(assert (=> bs!4987 (= (dynLambda!560 lambda!3537 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000011))))

(assert (=> (and start!3012 (= lambda!3537 s1!33) bs!4980) d!11219))

(declare-fun bs!4988 () Bool)

(declare-fun d!11221 () Bool)

(assert (= bs!4988 (and d!11221 start!3012)))

(declare-fun res!5483 () Bool)

(declare-fun e!7863 () Bool)

(assert (=> bs!4988 (=> res!5483 e!7863)))

(assert (=> bs!4988 (= res!5483 (dynLambda!560 lambda!3535 #b00000000000000000000000000000010))))

(assert (=> bs!4988 (= (dynLambda!560 lambda!3534 #b00000000000000000000000000000010) e!7863)))

(declare-fun b!14206 () Bool)

(assert (=> b!14206 (= e!7863 (dynLambda!560 lambda!3538 #b00000000000000000000000000000010))))

(assert (= (and bs!4988 (not res!5483)) b!14206))

(declare-fun b_lambda!7739 () Bool)

(assert (=> (not b_lambda!7739) (not bs!4988)))

(declare-fun b_lambda!7741 () Bool)

(assert (=> (not b_lambda!7741) (not b!14206)))

(assert (=> bs!4988 m!18063))

(assert (=> b!14206 m!18065))

(assert (=> (and start!3012 (= lambda!3534 s1!33) bs!4980) d!11221))

(declare-fun bs!4989 () Bool)

(declare-fun d!11223 () Bool)

(assert (= bs!4989 (and d!11223 start!3012)))

(declare-fun res!5484 () Bool)

(declare-fun e!7864 () Bool)

(assert (=> bs!4989 (=> res!5484 e!7864)))

(assert (=> bs!4989 (= res!5484 (dynLambda!560 lambda!3536 #b00000000000000000000000000000010))))

(assert (=> bs!4989 (= (dynLambda!560 lambda!3538 #b00000000000000000000000000000010) e!7864)))

(declare-fun b!14207 () Bool)

(assert (=> b!14207 (= e!7864 (dynLambda!560 lambda!3537 #b00000000000000000000000000000010))))

(assert (= (and bs!4989 (not res!5484)) b!14207))

(declare-fun b_lambda!7743 () Bool)

(assert (=> (not b_lambda!7743) (not bs!4989)))

(declare-fun b_lambda!7745 () Bool)

(assert (=> (not b_lambda!7745) (not b!14207)))

(assert (=> bs!4989 m!18059))

(assert (=> b!14207 m!18061))

(assert (=> (and start!3012 (= lambda!3538 s1!33) bs!4980) d!11223))

(declare-fun bs!4990 () Bool)

(declare-fun d!11225 () Bool)

(assert (= bs!4990 (and d!11225 start!3012)))

(assert (=> bs!4990 (= (dynLambda!560 lambda!3535 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000001))))

(assert (=> (and start!3012 (= lambda!3535 s1!33) bs!4980) d!11225))

(declare-fun b_lambda!7729 () Bool)

(assert (= b_lambda!7713 (or b!14184 b_lambda!7729)))

(declare-fun bs!4991 () Bool)

(declare-fun d!11227 () Bool)

(assert (= bs!4991 (and d!11227 b!14184)))

(assert (=> bs!4991 (= (dynLambda!560 lambda!3539 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000100))))

(assert (=> b!14203 d!11227))

(declare-fun b_lambda!7731 () Bool)

(assert (= b_lambda!7719 (or (and start!3012 (= lambda!3538 s1!33)) (and start!3012 (= lambda!3535 s1!33)) (and start!3012 (= lambda!3536 s1!33)) (and start!3012 b_free!2037) (and start!3012 (= lambda!3537 s1!33)) (and start!3012 b_free!2039 (= s2!32 s1!33)) (and start!3012 (= lambda!3534 s1!33)) (and b!14184 (= lambda!3539 s1!33)) b_lambda!7731)))

(declare-fun bs!4992 () Bool)

(declare-fun d!11229 () Bool)

(assert (= bs!4992 (and d!11229 start!3012)))

(assert (=> bs!4992 (= (dynLambda!560 lambda!3536 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000010))))

(assert (=> (and start!3012 (= lambda!3536 s1!33) bs!4982) d!11229))

(declare-fun bs!4993 () Bool)

(declare-fun d!11231 () Bool)

(assert (= bs!4993 (and d!11231 start!3012)))

(assert (=> bs!4993 (= (dynLambda!560 lambda!3535 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000001))))

(assert (=> (and start!3012 (= lambda!3535 s1!33) bs!4982) d!11231))

(declare-fun bs!4994 () Bool)

(declare-fun d!11233 () Bool)

(assert (= bs!4994 (and d!11233 start!3012)))

(assert (=> bs!4994 (= (dynLambda!560 lambda!3537 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000011))))

(assert (=> (and start!3012 (= lambda!3537 s1!33) bs!4982) d!11233))

(declare-fun bs!4995 () Bool)

(declare-fun d!11235 () Bool)

(assert (= bs!4995 (and d!11235 start!3012)))

(declare-fun res!5485 () Bool)

(declare-fun e!7865 () Bool)

(assert (=> bs!4995 (=> res!5485 e!7865)))

(assert (=> bs!4995 (= res!5485 (dynLambda!560 lambda!3535 #b00000000000000000000000000000001))))

(assert (=> bs!4995 (= (dynLambda!560 lambda!3534 #b00000000000000000000000000000001) e!7865)))

(declare-fun b!14208 () Bool)

(assert (=> b!14208 (= e!7865 (dynLambda!560 lambda!3538 #b00000000000000000000000000000001))))

(assert (= (and bs!4995 (not res!5485)) b!14208))

(declare-fun b_lambda!7747 () Bool)

(assert (=> (not b_lambda!7747) (not bs!4995)))

(declare-fun b_lambda!7749 () Bool)

(assert (=> (not b_lambda!7749) (not b!14208)))

(assert (=> bs!4995 m!18079))

(assert (=> b!14208 m!18081))

(assert (=> (and start!3012 (= lambda!3534 s1!33) bs!4982) d!11235))

(declare-fun bs!4996 () Bool)

(declare-fun d!11237 () Bool)

(assert (= bs!4996 (and d!11237 start!3012)))

(declare-fun res!5486 () Bool)

(declare-fun e!7866 () Bool)

(assert (=> bs!4996 (=> res!5486 e!7866)))

(assert (=> bs!4996 (= res!5486 (dynLambda!560 lambda!3536 #b00000000000000000000000000000001))))

(assert (=> bs!4996 (= (dynLambda!560 lambda!3538 #b00000000000000000000000000000001) e!7866)))

(declare-fun b!14209 () Bool)

(assert (=> b!14209 (= e!7866 (dynLambda!560 lambda!3537 #b00000000000000000000000000000001))))

(assert (= (and bs!4996 (not res!5486)) b!14209))

(declare-fun b_lambda!7751 () Bool)

(assert (=> (not b_lambda!7751) (not bs!4996)))

(declare-fun b_lambda!7753 () Bool)

(assert (=> (not b_lambda!7753) (not b!14209)))

(assert (=> bs!4996 m!18075))

(assert (=> b!14209 m!18077))

(assert (=> (and start!3012 (= lambda!3538 s1!33) bs!4982) d!11237))

(declare-fun bs!4997 () Bool)

(declare-fun d!11239 () Bool)

(assert (= bs!4997 (and d!11239 b!14184)))

(assert (=> bs!4997 (= (dynLambda!560 lambda!3539 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000100))))

(assert (=> (and b!14184 (= lambda!3539 s1!33) bs!4982) d!11239))

(declare-fun b_lambda!7733 () Bool)

(assert (= b_lambda!7709 (or b!14184 b_lambda!7733)))

(declare-fun bs!4998 () Bool)

(declare-fun d!11241 () Bool)

(assert (= bs!4998 (and d!11241 b!14184)))

(assert (=> bs!4998 (= (dynLambda!560 lambda!3539 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000100))))

(assert (=> b!14202 d!11241))

(declare-fun b_lambda!7735 () Bool)

(assert (= b_lambda!7715 (or (and start!3012 (= lambda!3538 s1!33)) (and start!3012 (= lambda!3535 s1!33)) (and start!3012 (= lambda!3536 s1!33)) (and start!3012 b_free!2037) (and start!3012 (= lambda!3537 s1!33)) (and start!3012 b_free!2039 (= s2!32 s1!33)) (and start!3012 (= lambda!3534 s1!33)) (and b!14184 (= lambda!3539 s1!33)) b_lambda!7735)))

(declare-fun bs!4999 () Bool)

(declare-fun d!11243 () Bool)

(assert (= bs!4999 (and d!11243 start!3012)))

(assert (=> bs!4999 (= (dynLambda!560 lambda!3536 #b00000000000000000000000000000100) (= #b00000000000000000000000000000100 #b00000000000000000000000000000010))))

(assert (=> (and start!3012 (= lambda!3536 s1!33) bs!4981) d!11243))

(declare-fun bs!5000 () Bool)

(declare-fun d!11245 () Bool)

(assert (= bs!5000 (and d!11245 start!3012)))

(declare-fun res!5487 () Bool)

(declare-fun e!7867 () Bool)

(assert (=> bs!5000 (=> res!5487 e!7867)))

(assert (=> bs!5000 (= res!5487 (dynLambda!560 lambda!3535 #b00000000000000000000000000000100))))

(assert (=> bs!5000 (= (dynLambda!560 lambda!3534 #b00000000000000000000000000000100) e!7867)))

(declare-fun b!14210 () Bool)

(assert (=> b!14210 (= e!7867 (dynLambda!560 lambda!3538 #b00000000000000000000000000000100))))

(assert (= (and bs!5000 (not res!5487)) b!14210))

(declare-fun b_lambda!7755 () Bool)

(assert (=> (not b_lambda!7755) (not bs!5000)))

(declare-fun b_lambda!7757 () Bool)

(assert (=> (not b_lambda!7757) (not b!14210)))

(assert (=> bs!5000 m!18067))

(assert (=> b!14210 m!18069))

(assert (=> (and start!3012 (= lambda!3534 s1!33) bs!4981) d!11245))

(declare-fun bs!5001 () Bool)

(declare-fun d!11247 () Bool)

(assert (= bs!5001 (and d!11247 start!3012)))

(declare-fun res!5488 () Bool)

(declare-fun e!7868 () Bool)

(assert (=> bs!5001 (=> res!5488 e!7868)))

(assert (=> bs!5001 (= res!5488 (dynLambda!560 lambda!3536 #b00000000000000000000000000000100))))

(assert (=> bs!5001 (= (dynLambda!560 lambda!3538 #b00000000000000000000000000000100) e!7868)))

(declare-fun b!14211 () Bool)

(assert (=> b!14211 (= e!7868 (dynLambda!560 lambda!3537 #b00000000000000000000000000000100))))

(assert (= (and bs!5001 (not res!5488)) b!14211))

(declare-fun b_lambda!7759 () Bool)

(assert (=> (not b_lambda!7759) (not bs!5001)))

(declare-fun b_lambda!7761 () Bool)

(assert (=> (not b_lambda!7761) (not b!14211)))

(assert (=> bs!5001 m!18071))

(assert (=> b!14211 m!18073))

(assert (=> (and start!3012 (= lambda!3538 s1!33) bs!4981) d!11247))

(declare-fun bs!5002 () Bool)

(declare-fun d!11249 () Bool)

(assert (= bs!5002 (and d!11249 start!3012)))

(assert (=> bs!5002 (= (dynLambda!560 lambda!3537 #b00000000000000000000000000000100) (= #b00000000000000000000000000000100 #b00000000000000000000000000000011))))

(assert (=> (and start!3012 (= lambda!3537 s1!33) bs!4981) d!11249))

(declare-fun bs!5003 () Bool)

(declare-fun d!11251 () Bool)

(assert (= bs!5003 (and d!11251 start!3012)))

(assert (=> bs!5003 (= (dynLambda!560 lambda!3535 #b00000000000000000000000000000100) (= #b00000000000000000000000000000100 #b00000000000000000000000000000001))))

(assert (=> (and start!3012 (= lambda!3535 s1!33) bs!4981) d!11251))

(declare-fun bs!5004 () Bool)

(declare-fun d!11253 () Bool)

(assert (= bs!5004 (and d!11253 b!14184)))

(assert (=> bs!5004 (= (dynLambda!560 lambda!3539 #b00000000000000000000000000000100) (= #b00000000000000000000000000000100 #b00000000000000000000000000000100))))

(assert (=> (and b!14184 (= lambda!3539 s1!33) bs!4981) d!11253))

(declare-fun b_lambda!7737 () Bool)

(assert (= b_lambda!7707 (or (and start!3012 (= lambda!3538 s1!33)) (and start!3012 (= lambda!3535 s1!33)) (and start!3012 (= lambda!3536 s1!33)) (and start!3012 b_free!2037) (and start!3012 (= lambda!3537 s1!33)) (and start!3012 b_free!2039 (= s2!32 s1!33)) (and start!3012 (= lambda!3534 s1!33)) (and b!14184 (= lambda!3539 s1!33)) b_lambda!7737)))

(declare-fun bs!5005 () Bool)

(declare-fun d!11255 () Bool)

(assert (= bs!5005 (and d!11255 b!14184)))

(assert (=> bs!5005 (= (dynLambda!560 lambda!3539 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000100))))

(assert (=> (and b!14184 (= lambda!3539 s1!33) bs!4979) d!11255))

(declare-fun bs!5006 () Bool)

(declare-fun d!11257 () Bool)

(assert (= bs!5006 (and d!11257 start!3012)))

(declare-fun res!5489 () Bool)

(declare-fun e!7869 () Bool)

(assert (=> bs!5006 (=> res!5489 e!7869)))

(assert (=> bs!5006 (= res!5489 (dynLambda!560 lambda!3536 #b00000000000000000000000000000011))))

(assert (=> bs!5006 (= (dynLambda!560 lambda!3538 #b00000000000000000000000000000011) e!7869)))

(declare-fun b!14212 () Bool)

(assert (=> b!14212 (= e!7869 (dynLambda!560 lambda!3537 #b00000000000000000000000000000011))))

(assert (= (and bs!5006 (not res!5489)) b!14212))

(declare-fun b_lambda!7763 () Bool)

(assert (=> (not b_lambda!7763) (not bs!5006)))

(declare-fun b_lambda!7765 () Bool)

(assert (=> (not b_lambda!7765) (not b!14212)))

(assert (=> bs!5006 m!18051))

(assert (=> b!14212 m!18053))

(assert (=> (and start!3012 (= lambda!3538 s1!33) bs!4979) d!11257))

(declare-fun bs!5007 () Bool)

(declare-fun d!11259 () Bool)

(assert (= bs!5007 (and d!11259 start!3012)))

(assert (=> bs!5007 (= (dynLambda!560 lambda!3536 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000010))))

(assert (=> (and start!3012 (= lambda!3536 s1!33) bs!4979) d!11259))

(declare-fun bs!5008 () Bool)

(declare-fun d!11261 () Bool)

(assert (= bs!5008 (and d!11261 start!3012)))

(assert (=> bs!5008 (= (dynLambda!560 lambda!3535 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000001))))

(assert (=> (and start!3012 (= lambda!3535 s1!33) bs!4979) d!11261))

(declare-fun bs!5009 () Bool)

(declare-fun d!11263 () Bool)

(assert (= bs!5009 (and d!11263 start!3012)))

(assert (=> bs!5009 (= (dynLambda!560 lambda!3537 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000011))))

(assert (=> (and start!3012 (= lambda!3537 s1!33) bs!4979) d!11263))

(declare-fun bs!5010 () Bool)

(declare-fun d!11265 () Bool)

(assert (= bs!5010 (and d!11265 start!3012)))

(declare-fun res!5490 () Bool)

(declare-fun e!7870 () Bool)

(assert (=> bs!5010 (=> res!5490 e!7870)))

(assert (=> bs!5010 (= res!5490 (dynLambda!560 lambda!3535 #b00000000000000000000000000000011))))

(assert (=> bs!5010 (= (dynLambda!560 lambda!3534 #b00000000000000000000000000000011) e!7870)))

(declare-fun b!14213 () Bool)

(assert (=> b!14213 (= e!7870 (dynLambda!560 lambda!3538 #b00000000000000000000000000000011))))

(assert (= (and bs!5010 (not res!5490)) b!14213))

(declare-fun b_lambda!7767 () Bool)

(assert (=> (not b_lambda!7767) (not bs!5010)))

(declare-fun b_lambda!7769 () Bool)

(assert (=> (not b_lambda!7769) (not b!14213)))

(assert (=> bs!5010 m!18055))

(assert (=> b!14213 m!18057))

(assert (=> (and start!3012 (= lambda!3534 s1!33) bs!4979) d!11265))

(push 1)

(assert b_and!7207)

(assert (not b_lambda!7659))

(assert (not b_lambda!7699))

(assert (not b_lambda!7691))

(assert (not b_next!4799))

(assert (not b_lambda!7747))

(assert (not b_lambda!7765))

(assert (not b_lambda!7651))

(assert (not b_lambda!7759))

(assert (not b_next!4803))

(assert (not b_lambda!7645))

(assert (not b_lambda!7725))

(assert (not b_lambda!7731))

(assert (not b_lambda!7655))

(assert (not b_lambda!7705))

(assert (not b_lambda!7685))

(assert (not b_lambda!7647))

(assert b_and!7205)

(assert (not b_lambda!7753))

(assert (not b_lambda!7703))

(assert (not b_lambda!7761))

(assert (not b_lambda!7739))

(assert (not b_lambda!7755))

(assert (not b_lambda!7689))

(assert (not b_lambda!7729))

(assert (not b_lambda!7693))

(assert (not b_lambda!7743))

(assert (not b_lambda!7663))

(assert (not b_lambda!7649))

(assert (not b_lambda!7665))

(assert (not b_lambda!7741))

(assert (not b_lambda!7695))

(assert (not b_lambda!7639))

(assert (not b_lambda!7643))

(assert (not b_lambda!7701))

(assert (not b_lambda!7653))

(assert (not b_lambda!7735))

(assert (not b_lambda!7657))

(assert (not b_lambda!7769))

(assert (not b_lambda!7737))

(assert (not b_lambda!7727))

(assert (not b_lambda!7687))

(assert (not b_lambda!7661))

(assert (not b_lambda!7697))

(assert (not b_lambda!7641))

(assert (not b_lambda!7751))

(assert (not b_lambda!7635))

(assert (not b_lambda!7763))

(assert (not b_lambda!7757))

(assert (not b_lambda!7723))

(assert (not b_lambda!7637))

(assert (not b_lambda!7733))

(assert (not b_lambda!7683))

(assert (not b_lambda!7767))

(assert (not b_lambda!7749))

(assert (not b_lambda!7745))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7205)

(assert b_and!7207)

(assert (not b_next!4803))

(assert (not b_next!4799))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7771 () Bool)

(assert (= b_lambda!7757 (or start!3012 b_lambda!7771)))

(assert (=> b!14210 d!11179))

(declare-fun b_lambda!7773 () Bool)

(assert (= b_lambda!7739 (or start!3012 b_lambda!7773)))

(assert (=> bs!4988 d!11175))

(declare-fun b_lambda!7775 () Bool)

(assert (= b_lambda!7763 (or start!3012 b_lambda!7775)))

(assert (=> bs!5006 d!11183))

(declare-fun b_lambda!7777 () Bool)

(assert (= b_lambda!7755 (or start!3012 b_lambda!7777)))

(assert (=> bs!5000 d!11191))

(declare-fun b_lambda!7779 () Bool)

(assert (= b_lambda!7753 (or start!3012 b_lambda!7779)))

(assert (=> b!14209 d!11193))

(declare-fun b_lambda!7781 () Bool)

(assert (= b_lambda!7747 (or start!3012 b_lambda!7781)))

(assert (=> bs!4995 d!11187))

(declare-fun b_lambda!7783 () Bool)

(assert (= b_lambda!7745 (or start!3012 b_lambda!7783)))

(assert (=> b!14207 d!11171))

(declare-fun b_lambda!7785 () Bool)

(assert (= b_lambda!7765 (or start!3012 b_lambda!7785)))

(assert (=> b!14212 d!11185))

(declare-fun b_lambda!7787 () Bool)

(assert (= b_lambda!7751 (or start!3012 b_lambda!7787)))

(assert (=> bs!4996 d!11199))

(declare-fun b_lambda!7789 () Bool)

(assert (= b_lambda!7761 (or start!3012 b_lambda!7789)))

(assert (=> b!14211 d!11181))

(declare-fun b_lambda!7791 () Bool)

(assert (= b_lambda!7743 (or start!3012 b_lambda!7791)))

(assert (=> bs!4989 d!11195))

(declare-fun b_lambda!7793 () Bool)

(assert (= b_lambda!7741 (or start!3012 b_lambda!7793)))

(assert (=> b!14206 d!11169))

(declare-fun b_lambda!7795 () Bool)

(assert (= b_lambda!7749 (or start!3012 b_lambda!7795)))

(assert (=> b!14208 d!11197))

(declare-fun b_lambda!7797 () Bool)

(assert (= b_lambda!7769 (or start!3012 b_lambda!7797)))

(assert (=> b!14213 d!11189))

(declare-fun b_lambda!7799 () Bool)

(assert (= b_lambda!7759 (or start!3012 b_lambda!7799)))

(assert (=> bs!5001 d!11173))

(declare-fun b_lambda!7801 () Bool)

(assert (= b_lambda!7767 (or start!3012 b_lambda!7801)))

(assert (=> bs!5010 d!11177))

(push 1)

(assert (not b_lambda!7777))

(assert b_and!7207)

(assert (not b_lambda!7793))

(assert (not b_lambda!7659))

(assert (not b_lambda!7699))

(assert (not b_lambda!7691))

(assert (not b_next!4799))

(assert (not b_lambda!7781))

(assert (not b_lambda!7651))

(assert (not b_next!4803))

(assert (not b_lambda!7645))

(assert (not b_lambda!7725))

(assert (not b_lambda!7795))

(assert (not b_lambda!7773))

(assert (not b_lambda!7731))

(assert (not b_lambda!7655))

(assert (not b_lambda!7705))

(assert (not b_lambda!7685))

(assert (not b_lambda!7647))

(assert b_and!7205)

(assert (not b_lambda!7791))

(assert (not b_lambda!7771))

(assert (not b_lambda!7703))

(assert (not b_lambda!7689))

(assert (not b_lambda!7729))

(assert (not b_lambda!7693))

(assert (not b_lambda!7663))

(assert (not b_lambda!7649))

(assert (not b_lambda!7665))

(assert (not b_lambda!7695))

(assert (not b_lambda!7639))

(assert (not b_lambda!7643))

(assert (not b_lambda!7701))

(assert (not b_lambda!7653))

(assert (not b_lambda!7775))

(assert (not b_lambda!7735))

(assert (not b_lambda!7797))

(assert (not b_lambda!7657))

(assert (not b_lambda!7799))

(assert (not b_lambda!7737))

(assert (not b_lambda!7727))

(assert (not b_lambda!7687))

(assert (not b_lambda!7661))

(assert (not b_lambda!7779))

(assert (not b_lambda!7697))

(assert (not b_lambda!7641))

(assert (not b_lambda!7789))

(assert (not b_lambda!7787))

(assert (not b_lambda!7801))

(assert (not b_lambda!7635))

(assert (not b_lambda!7723))

(assert (not b_lambda!7637))

(assert (not b_lambda!7783))

(assert (not b_lambda!7733))

(assert (not b_lambda!7683))

(assert (not b_lambda!7785))

(check-sat)

(pop 1)

