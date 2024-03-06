; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1282 () Bool)

(assert start!1282)

(declare-fun b!7092 () Bool)

(declare-fun b_free!389 () Bool)

(declare-fun b_next!829 () Bool)

(assert (=> b!7092 (= b_free!389 (not b_next!829))))

(declare-fun tp!717 () Bool)

(declare-fun b_and!1853 () Bool)

(assert (=> b!7092 (= tp!717 b_and!1853)))

(declare-fun b_free!391 () Bool)

(declare-fun b_next!831 () Bool)

(assert (=> b!7092 (= b_free!391 (not b_next!831))))

(declare-fun tp!715 () Bool)

(declare-fun b_and!1855 () Bool)

(assert (=> b!7092 (= tp!715 b_and!1855)))

(declare-fun b!7091 () Bool)

(declare-fun b_free!393 () Bool)

(declare-fun b_next!833 () Bool)

(assert (=> b!7091 (= b_free!393 (not b_next!833))))

(declare-fun tp!714 () Bool)

(declare-fun b_and!1857 () Bool)

(assert (=> b!7091 (= tp!714 b_and!1857)))

(declare-fun b_free!395 () Bool)

(declare-fun b_next!835 () Bool)

(assert (=> b!7091 (= b_free!395 (not b_next!835))))

(declare-fun tp!718 () Bool)

(declare-fun b_and!1859 () Bool)

(assert (=> b!7091 (= tp!718 b_and!1859)))

(declare-fun b_free!397 () Bool)

(declare-fun b_next!837 () Bool)

(assert (=> b!7091 (= b_free!397 (not b_next!837))))

(declare-fun tp!716 () Bool)

(declare-fun b_and!1861 () Bool)

(assert (=> b!7091 (= tp!716 b_and!1861)))

(declare-fun b!7093 () Bool)

(assert (=> b!7093 true))

(declare-datatypes () ((Balance!81 (Balance!82 (extraOpen!81 Int) (extraClose!81 Int)))))

(declare-datatypes () ((EqProof!30 (EqProof!31 (x!3852 Int) (y!454 Int)))))

(declare-fun thiss!1157 () EqProof!30)

(declare-fun b_next!839 () Bool)

(declare-fun lambda!1175 () Int)

(assert (=> b!7092 (= b_next!829 (or (and b!7093 (= lambda!1175 (x!3852 thiss!1157))) b_next!839))))

(declare-fun b_next!841 () Bool)

(assert (=> b!7092 (= b_next!831 (or (and b!7093 (= lambda!1175 (y!454 thiss!1157))) b_next!841))))

(declare-fun b_next!843 () Bool)

(declare-datatypes () ((EqEvidence!60 (EqEvidence!61 (x!3853 Int) (y!455 Int) (evidence!97 Int)))))

(declare-fun thiss!1147 () EqEvidence!60)

(assert (=> b!7091 (= b_next!833 (or (and b!7093 (= lambda!1175 (x!3853 thiss!1147))) b_next!843))))

(declare-fun b_next!845 () Bool)

(assert (=> b!7091 (= b_next!835 (or (and b!7093 (= lambda!1175 (y!455 thiss!1147))) b_next!845))))

(declare-fun m!9917 () Bool)

(assert (=> b!7093 m!9917))

(declare-fun lambda!1176 () Int)

(declare-fun dynLambda!127 (Int) Bool)

(assert (=> (and b!7091 b!7093 (= (dynLambda!127 lambda!1176) (dynLambda!127 (evidence!97 thiss!1147)))) (= lambda!1176 (evidence!97 thiss!1147))))

(declare-fun b_next!847 () Bool)

(assert (=> b!7091 (= b_next!837 (or (and b!7093 (= lambda!1176 (evidence!97 thiss!1147))) b_next!847))))

(declare-fun b!7089 () Bool)

(declare-fun m!9919 () Bool)

(assert (=> b!7089 m!9919))

(declare-fun bs!1592 () Bool)

(assert (= bs!1592 (and b!7089 b!7093)))

(declare-fun lambda!1177 () Int)

(assert (=> bs!1592 (not (= lambda!1177 lambda!1175))))

(assert (=> b!7089 true))

(declare-fun b_next!849 () Bool)

(assert (=> b!7092 (= b_next!839 (or (and b!7089 (= lambda!1177 (x!3852 thiss!1157))) b_next!849))))

(declare-fun b_next!851 () Bool)

(assert (=> b!7092 (= b_next!841 (or (and b!7089 (= lambda!1177 (y!454 thiss!1157))) b_next!851))))

(declare-fun b_next!853 () Bool)

(assert (=> b!7091 (= b_next!843 (or (and b!7089 (= lambda!1177 (x!3853 thiss!1147))) b_next!853))))

(declare-fun b_next!855 () Bool)

(assert (=> b!7091 (= b_next!845 (or (and b!7089 (= lambda!1177 (y!455 thiss!1147))) b_next!855))))

(declare-fun b!7086 () Bool)

(declare-fun res!2030 () Bool)

(declare-fun e!4129 () Bool)

(assert (=> b!7086 (=> (not res!2030) (not e!4129))))

(declare-datatypes () ((Parenthesis!35 (CloseParenthesis!34) (OpenParenthesis!34))))

(declare-datatypes () ((List!153 (Nil!151) (Cons!150 (head!368 Parenthesis!35) (tail!380 List!153)))))

(declare-fun xs!372 () List!153)

(declare-datatypes () ((ProofOps!56 (ProofOps!57 (prop!138 Bool)))))

(declare-fun thiss!1106 () ProofOps!56)

(declare-fun lambda!1173 () Int)

(declare-fun lambda!1174 () Int)

(declare-datatypes () ((List!154 (Nil!152) (Cons!151 (head!369 Balance!81) (tail!381 List!154)))))

(declare-fun foldRight1!24 (List!154 Int) Balance!81)

(declare-fun append!57 (List!154 List!154) List!154)

(declare-fun map!145 (List!153 Int) List!154)

(assert (=> b!7086 (= res!2030 (= thiss!1106 (ProofOps!57 (= (foldRight1!24 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152)) lambda!1174) (foldRight1!24 (map!145 xs!372 lambda!1173) lambda!1174)))))))

(declare-fun b!7087 () Bool)

(declare-fun res!2025 () Bool)

(assert (=> b!7087 (=> (not res!2025) (not e!4129))))

(assert (=> b!7087 (= res!2025 (or (not (is-Cons!150 xs!372)) (not (is-Nil!151 (tail!380 xs!372)))))))

(declare-fun b!7088 () Bool)

(declare-fun res!2027 () Bool)

(assert (=> b!7088 (=> (not res!2027) (not e!4129))))

(declare-fun xs!389 () List!153)

(assert (=> b!7088 (= res!2027 (= xs!389 (tail!380 xs!372)))))

(declare-fun res!2028 () Bool)

(assert (=> b!7089 (=> (not res!2028) (not e!4129))))

(assert (=> b!7089 (= res!2028 (= thiss!1157 (EqProof!31 lambda!1177 lambda!1177)))))

(declare-fun res!2026 () Bool)

(assert (=> start!1282 (=> (not res!2026) (not e!4129))))

(declare-fun isEmpty!134 (List!153) Bool)

(assert (=> start!1282 (= res!2026 (not (isEmpty!134 xs!372)))))

(assert (=> start!1282 e!4129))

(declare-fun e!4128 () Bool)

(declare-fun inv!249 (EqProof!30) Bool)

(assert (=> start!1282 (and (inv!249 thiss!1157) e!4128)))

(assert (=> start!1282 true))

(declare-fun e!4127 () Bool)

(declare-fun inv!250 (EqEvidence!60) Bool)

(assert (=> start!1282 (and (inv!250 thiss!1147) e!4127)))

(declare-fun b!7090 () Bool)

(assert (=> b!7090 (= e!4129 (isEmpty!134 xs!389))))

(assert (=> b!7091 (= e!4127 (and tp!714 tp!718 tp!716))))

(assert (=> b!7092 (= e!4128 (and tp!717 tp!715))))

(declare-fun res!2029 () Bool)

(assert (=> b!7093 (=> (not res!2029) (not e!4129))))

(assert (=> b!7093 (= res!2029 (= thiss!1147 (EqEvidence!61 lambda!1175 lambda!1175 lambda!1176)))))

(assert (= (and start!1282 res!2026) b!7086))

(assert (= (and b!7086 res!2030) b!7087))

(assert (= (and b!7087 res!2025) b!7093))

(assert (= (and b!7093 res!2029) b!7089))

(assert (= (and b!7089 res!2028) b!7088))

(assert (= (and b!7088 res!2027) b!7090))

(assert (= start!1282 b!7092))

(assert (= start!1282 b!7091))

(declare-fun m!9921 () Bool)

(assert (=> b!7086 m!9921))

(declare-fun m!9923 () Bool)

(assert (=> b!7086 m!9923))

(assert (=> b!7086 m!9921))

(assert (=> b!7086 m!9921))

(declare-fun m!9925 () Bool)

(assert (=> b!7086 m!9925))

(assert (=> b!7086 m!9921))

(assert (=> b!7086 m!9923))

(declare-fun m!9927 () Bool)

(assert (=> b!7086 m!9927))

(declare-fun m!9929 () Bool)

(assert (=> start!1282 m!9929))

(declare-fun m!9931 () Bool)

(assert (=> start!1282 m!9931))

(declare-fun m!9933 () Bool)

(assert (=> start!1282 m!9933))

(declare-fun m!9935 () Bool)

(assert (=> b!7090 m!9935))

(push 1)

(assert b_and!1853)

(assert (not b!7086))

(assert (not b!7093))

(assert (not b!7090))

(assert b_and!1857)

(assert b_and!1859)

(assert b_and!1855)

(assert (not b!7089))

(assert (not start!1282))

(assert (not b_next!847))

(assert (not b_next!853))

(assert b_and!1861)

(assert (not b_next!849))

(assert (not b_next!855))

(assert (not b_next!851))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1853)

(assert b_and!1857)

(assert b_and!1859)

(assert b_and!1855)

(assert (not b_next!847))

(assert (not b_next!853))

(assert b_and!1861)

(assert (not b_next!849))

(assert (not b_next!855))

(assert (not b_next!851))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5567 () Bool)

(assert (=> d!5567 (= (isEmpty!134 xs!389) (is-Nil!151 xs!389))))

(assert (=> b!7090 d!5567))

(declare-fun d!5569 () Bool)

(declare-fun fromParenthesis!0 (Parenthesis!35) Balance!81)

(assert (=> d!5569 (= (fromParenthesis!0 (head!368 xs!372)) (ite (is-OpenParenthesis!34 (head!368 xs!372)) (Balance!82 1 0) (Balance!82 0 1)))))

(assert (=> b!7089 d!5569))

(declare-fun d!5571 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!5571 (= trivial!1 true)))

(assert (=> b!7093 d!5571))

(declare-fun d!5573 () Bool)

(assert (=> d!5573 (= (isEmpty!134 xs!372) (is-Nil!151 xs!372))))

(assert (=> start!1282 d!5573))

(declare-fun d!5575 () Bool)

(declare-fun dynLambda!128 (Int) Balance!81)

(assert (=> d!5575 (= (inv!249 thiss!1157) (= (dynLambda!128 (x!3852 thiss!1157)) (dynLambda!128 (y!454 thiss!1157))))))

(declare-fun b_lambda!3371 () Bool)

(assert (=> (not b_lambda!3371) (not d!5575)))

(declare-fun t!1347 () Bool)

(declare-fun tb!1007 () Bool)

(assert (=> (and b!7092 (= (x!3852 thiss!1157) (x!3852 thiss!1157)) t!1347) tb!1007))

(declare-fun result!1047 () Bool)

(assert (=> tb!1007 (= result!1047 true)))

(assert (=> d!5575 t!1347))

(declare-fun b_and!1863 () Bool)

(assert (= b_and!1853 (and (=> t!1347 result!1047) b_and!1863)))

(declare-fun t!1349 () Bool)

(declare-fun tb!1009 () Bool)

(assert (=> (and b!7092 (= (y!454 thiss!1157) (x!3852 thiss!1157)) t!1349) tb!1009))

(declare-fun result!1049 () Bool)

(assert (=> tb!1009 (= result!1049 true)))

(assert (=> d!5575 t!1349))

(declare-fun b_and!1865 () Bool)

(assert (= b_and!1855 (and (=> t!1349 result!1049) b_and!1865)))

(declare-fun tb!1011 () Bool)

(declare-fun t!1351 () Bool)

(assert (=> (and b!7091 (= (x!3853 thiss!1147) (x!3852 thiss!1157)) t!1351) tb!1011))

(declare-fun result!1051 () Bool)

(assert (=> tb!1011 (= result!1051 true)))

(assert (=> d!5575 t!1351))

(declare-fun b_and!1867 () Bool)

(assert (= b_and!1857 (and (=> t!1351 result!1051) b_and!1867)))

(declare-fun t!1353 () Bool)

(declare-fun tb!1013 () Bool)

(assert (=> (and b!7091 (= (y!455 thiss!1147) (x!3852 thiss!1157)) t!1353) tb!1013))

(declare-fun result!1053 () Bool)

(assert (=> tb!1013 (= result!1053 true)))

(assert (=> d!5575 t!1353))

(declare-fun b_and!1869 () Bool)

(assert (= b_and!1859 (and (=> t!1353 result!1053) b_and!1869)))

(declare-fun b_lambda!3373 () Bool)

(assert (=> (not b_lambda!3373) (not d!5575)))

(declare-fun t!1355 () Bool)

(declare-fun tb!1015 () Bool)

(assert (=> (and b!7092 (= (x!3852 thiss!1157) (y!454 thiss!1157)) t!1355) tb!1015))

(declare-fun result!1055 () Bool)

(assert (=> tb!1015 (= result!1055 true)))

(assert (=> d!5575 t!1355))

(declare-fun b_and!1871 () Bool)

(assert (= b_and!1863 (and (=> t!1355 result!1055) b_and!1871)))

(declare-fun t!1357 () Bool)

(declare-fun tb!1017 () Bool)

(assert (=> (and b!7092 (= (y!454 thiss!1157) (y!454 thiss!1157)) t!1357) tb!1017))

(declare-fun result!1057 () Bool)

(assert (=> tb!1017 (= result!1057 true)))

(assert (=> d!5575 t!1357))

(declare-fun b_and!1873 () Bool)

(assert (= b_and!1865 (and (=> t!1357 result!1057) b_and!1873)))

(declare-fun t!1359 () Bool)

(declare-fun tb!1019 () Bool)

(assert (=> (and b!7091 (= (x!3853 thiss!1147) (y!454 thiss!1157)) t!1359) tb!1019))

(declare-fun result!1059 () Bool)

(assert (=> tb!1019 (= result!1059 true)))

(assert (=> d!5575 t!1359))

(declare-fun b_and!1875 () Bool)

(assert (= b_and!1867 (and (=> t!1359 result!1059) b_and!1875)))

(declare-fun t!1361 () Bool)

(declare-fun tb!1021 () Bool)

(assert (=> (and b!7091 (= (y!455 thiss!1147) (y!454 thiss!1157)) t!1361) tb!1021))

(declare-fun result!1061 () Bool)

(assert (=> tb!1021 (= result!1061 true)))

(assert (=> d!5575 t!1361))

(declare-fun b_and!1877 () Bool)

(assert (= b_and!1869 (and (=> t!1361 result!1061) b_and!1877)))

(declare-fun m!9937 () Bool)

(assert (=> d!5575 m!9937))

(declare-fun m!9939 () Bool)

(assert (=> d!5575 m!9939))

(assert (=> start!1282 d!5575))

(declare-fun d!5577 () Bool)

(declare-fun res!2033 () Bool)

(declare-fun e!4132 () Bool)

(assert (=> d!5577 (=> (not res!2033) (not e!4132))))

(assert (=> d!5577 (= res!2033 (= (dynLambda!128 (x!3853 thiss!1147)) (dynLambda!128 (y!455 thiss!1147))))))

(assert (=> d!5577 (= (inv!250 thiss!1147) e!4132)))

(declare-fun b!7098 () Bool)

(assert (=> b!7098 (= e!4132 (dynLambda!127 (evidence!97 thiss!1147)))))

(assert (= (and d!5577 res!2033) b!7098))

(declare-fun b_lambda!3375 () Bool)

(assert (=> (not b_lambda!3375) (not d!5577)))

(declare-fun tb!1023 () Bool)

(declare-fun t!1363 () Bool)

(assert (=> (and b!7092 (= (x!3852 thiss!1157) (x!3853 thiss!1147)) t!1363) tb!1023))

(declare-fun result!1063 () Bool)

(assert (=> tb!1023 (= result!1063 true)))

(assert (=> d!5577 t!1363))

(declare-fun b_and!1879 () Bool)

(assert (= b_and!1871 (and (=> t!1363 result!1063) b_and!1879)))

(declare-fun tb!1025 () Bool)

(declare-fun t!1365 () Bool)

(assert (=> (and b!7092 (= (y!454 thiss!1157) (x!3853 thiss!1147)) t!1365) tb!1025))

(declare-fun result!1065 () Bool)

(assert (=> tb!1025 (= result!1065 true)))

(assert (=> d!5577 t!1365))

(declare-fun b_and!1881 () Bool)

(assert (= b_and!1873 (and (=> t!1365 result!1065) b_and!1881)))

(declare-fun t!1367 () Bool)

(declare-fun tb!1027 () Bool)

(assert (=> (and b!7091 (= (x!3853 thiss!1147) (x!3853 thiss!1147)) t!1367) tb!1027))

(declare-fun result!1067 () Bool)

(assert (=> tb!1027 (= result!1067 true)))

(assert (=> d!5577 t!1367))

(declare-fun b_and!1883 () Bool)

(assert (= b_and!1875 (and (=> t!1367 result!1067) b_and!1883)))

(declare-fun t!1369 () Bool)

(declare-fun tb!1029 () Bool)

(assert (=> (and b!7091 (= (y!455 thiss!1147) (x!3853 thiss!1147)) t!1369) tb!1029))

(declare-fun result!1069 () Bool)

(assert (=> tb!1029 (= result!1069 true)))

(assert (=> d!5577 t!1369))

(declare-fun b_and!1885 () Bool)

(assert (= b_and!1877 (and (=> t!1369 result!1069) b_and!1885)))

(declare-fun b_lambda!3377 () Bool)

(assert (=> (not b_lambda!3377) (not d!5577)))

(declare-fun t!1371 () Bool)

(declare-fun tb!1031 () Bool)

(assert (=> (and b!7092 (= (x!3852 thiss!1157) (y!455 thiss!1147)) t!1371) tb!1031))

(declare-fun result!1071 () Bool)

(assert (=> tb!1031 (= result!1071 true)))

(assert (=> d!5577 t!1371))

(declare-fun b_and!1887 () Bool)

(assert (= b_and!1879 (and (=> t!1371 result!1071) b_and!1887)))

(declare-fun tb!1033 () Bool)

(declare-fun t!1373 () Bool)

(assert (=> (and b!7092 (= (y!454 thiss!1157) (y!455 thiss!1147)) t!1373) tb!1033))

(declare-fun result!1073 () Bool)

(assert (=> tb!1033 (= result!1073 true)))

(assert (=> d!5577 t!1373))

(declare-fun b_and!1889 () Bool)

(assert (= b_and!1881 (and (=> t!1373 result!1073) b_and!1889)))

(declare-fun t!1375 () Bool)

(declare-fun tb!1035 () Bool)

(assert (=> (and b!7091 (= (x!3853 thiss!1147) (y!455 thiss!1147)) t!1375) tb!1035))

(declare-fun result!1075 () Bool)

(assert (=> tb!1035 (= result!1075 true)))

(assert (=> d!5577 t!1375))

(declare-fun b_and!1891 () Bool)

(assert (= b_and!1883 (and (=> t!1375 result!1075) b_and!1891)))

(declare-fun t!1377 () Bool)

(declare-fun tb!1037 () Bool)

(assert (=> (and b!7091 (= (y!455 thiss!1147) (y!455 thiss!1147)) t!1377) tb!1037))

(declare-fun result!1077 () Bool)

(assert (=> tb!1037 (= result!1077 true)))

(assert (=> d!5577 t!1377))

(declare-fun b_and!1893 () Bool)

(assert (= b_and!1885 (and (=> t!1377 result!1077) b_and!1893)))

(declare-fun b_lambda!3379 () Bool)

(assert (=> (not b_lambda!3379) (not b!7098)))

(declare-fun t!1379 () Bool)

(declare-fun tb!1039 () Bool)

(assert (=> (and b!7091 (= (evidence!97 thiss!1147) (evidence!97 thiss!1147)) t!1379) tb!1039))

(declare-fun result!1079 () Bool)

(assert (=> tb!1039 (= result!1079 true)))

(assert (=> b!7098 t!1379))

(declare-fun b_and!1895 () Bool)

(assert (= b_and!1861 (and (=> t!1379 result!1079) b_and!1895)))

(declare-fun m!9941 () Bool)

(assert (=> d!5577 m!9941))

(declare-fun m!9943 () Bool)

(assert (=> d!5577 m!9943))

(declare-fun m!9945 () Bool)

(assert (=> b!7098 m!9945))

(assert (=> start!1282 d!5577))

(declare-fun d!5579 () Bool)

(declare-fun c!2556 () Bool)

(assert (=> d!5579 (= c!2556 (is-Nil!151 xs!372))))

(declare-fun e!4135 () List!154)

(assert (=> d!5579 (= (map!145 xs!372 lambda!1173) e!4135)))

(declare-fun b!7103 () Bool)

(assert (=> b!7103 (= e!4135 Nil!152)))

(declare-fun b!7104 () Bool)

(declare-fun dynLambda!129 (Int Parenthesis!35) Balance!81)

(assert (=> b!7104 (= e!4135 (Cons!151 (dynLambda!129 lambda!1173 (head!368 xs!372)) (map!145 (tail!380 xs!372) lambda!1173)))))

(assert (= (and d!5579 c!2556) b!7103))

(assert (= (and d!5579 (not c!2556)) b!7104))

(declare-fun b_lambda!3381 () Bool)

(assert (=> (not b_lambda!3381) (not b!7104)))

(declare-fun m!9947 () Bool)

(assert (=> b!7104 m!9947))

(declare-fun m!9949 () Bool)

(assert (=> b!7104 m!9949))

(assert (=> b!7086 d!5579))

(declare-fun d!5581 () Bool)

(declare-fun c!2559 () Bool)

(assert (=> d!5581 (= c!2559 (and (is-Cons!151 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152))) (is-Nil!152 (tail!381 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152))))))))

(declare-fun e!4138 () Balance!81)

(assert (=> d!5581 (= (foldRight1!24 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152)) lambda!1174) e!4138)))

(declare-fun b!7109 () Bool)

(assert (=> b!7109 (= e!4138 (head!369 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152))))))

(declare-fun b!7110 () Bool)

(declare-fun dynLambda!130 (Int Balance!81 Balance!81) Balance!81)

(assert (=> b!7110 (= e!4138 (dynLambda!130 lambda!1174 (head!369 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152))) (foldRight1!24 (tail!381 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152))) lambda!1174)))))

(assert (= (and d!5581 c!2559) b!7109))

(assert (= (and d!5581 (not c!2559)) b!7110))

(declare-fun b_lambda!3383 () Bool)

(assert (=> (not b_lambda!3383) (not b!7110)))

(declare-fun m!9951 () Bool)

(assert (=> b!7110 m!9951))

(assert (=> b!7110 m!9951))

(declare-fun m!9953 () Bool)

(assert (=> b!7110 m!9953))

(assert (=> b!7086 d!5581))

(declare-fun d!5583 () Bool)

(declare-fun c!2562 () Bool)

(assert (=> d!5583 (= c!2562 (is-Nil!152 (map!145 xs!372 lambda!1173)))))

(declare-fun e!4141 () List!154)

(assert (=> d!5583 (= (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152)) e!4141)))

(declare-fun b!7115 () Bool)

(assert (=> b!7115 (= e!4141 (Cons!151 (Balance!82 0 0) Nil!152))))

(declare-fun b!7116 () Bool)

(assert (=> b!7116 (= e!4141 (Cons!151 (head!369 (map!145 xs!372 lambda!1173)) (append!57 (tail!381 (map!145 xs!372 lambda!1173)) (Cons!151 (Balance!82 0 0) Nil!152))))))

(assert (= (and d!5583 c!2562) b!7115))

(assert (= (and d!5583 (not c!2562)) b!7116))

(declare-fun m!9955 () Bool)

(assert (=> b!7116 m!9955))

(assert (=> b!7086 d!5583))

(declare-fun d!5585 () Bool)

(declare-fun c!2563 () Bool)

(assert (=> d!5585 (= c!2563 (and (is-Cons!151 (map!145 xs!372 lambda!1173)) (is-Nil!152 (tail!381 (map!145 xs!372 lambda!1173)))))))

(declare-fun e!4142 () Balance!81)

(assert (=> d!5585 (= (foldRight1!24 (map!145 xs!372 lambda!1173) lambda!1174) e!4142)))

(declare-fun b!7117 () Bool)

(assert (=> b!7117 (= e!4142 (head!369 (map!145 xs!372 lambda!1173)))))

(declare-fun b!7118 () Bool)

(assert (=> b!7118 (= e!4142 (dynLambda!130 lambda!1174 (head!369 (map!145 xs!372 lambda!1173)) (foldRight1!24 (tail!381 (map!145 xs!372 lambda!1173)) lambda!1174)))))

(assert (= (and d!5585 c!2563) b!7117))

(assert (= (and d!5585 (not c!2563)) b!7118))

(declare-fun b_lambda!3385 () Bool)

(assert (=> (not b_lambda!3385) (not b!7118)))

(declare-fun m!9957 () Bool)

(assert (=> b!7118 m!9957))

(assert (=> b!7118 m!9957))

(declare-fun m!9959 () Bool)

(assert (=> b!7118 m!9959))

(assert (=> b!7086 d!5585))

(declare-fun b_lambda!3387 () Bool)

(assert (= b_lambda!3371 (or (and b!7089 (= lambda!1177 (x!3852 thiss!1157))) (and b!7092 b_free!391 (= (y!454 thiss!1157) (x!3852 thiss!1157))) (and b!7092 b_free!389) (and b!7093 (= lambda!1175 (x!3852 thiss!1157))) (and b!7091 b_free!393 (= (x!3853 thiss!1147) (x!3852 thiss!1157))) (and b!7091 b_free!395 (= (y!455 thiss!1147) (x!3852 thiss!1157))) b_lambda!3387)))

(declare-fun bs!1593 () Bool)

(declare-fun d!5587 () Bool)

(assert (= bs!1593 (and d!5587 b!7093)))

(assert (=> bs!1593 (= (dynLambda!128 lambda!1175) (foldRight1!24 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152)) lambda!1174))))

(assert (=> bs!1593 m!9921))

(assert (=> bs!1593 m!9921))

(assert (=> bs!1593 m!9923))

(assert (=> bs!1593 m!9923))

(assert (=> bs!1593 m!9927))

(assert (=> (and b!7093 (= lambda!1175 (x!3852 thiss!1157)) d!5575) d!5587))

(declare-fun bs!1594 () Bool)

(declare-fun d!5589 () Bool)

(assert (= bs!1594 (and d!5589 b!7089)))

(declare-fun ++!3 (Balance!81 Balance!81) Balance!81)

(assert (=> bs!1594 (= (dynLambda!128 lambda!1177) (++!3 (fromParenthesis!0 (head!368 xs!372)) (foldRight1!24 (append!57 (map!145 (tail!380 xs!372) lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152)) lambda!1174)))))

(assert (=> bs!1594 m!9949))

(declare-fun m!9961 () Bool)

(assert (=> bs!1594 m!9961))

(assert (=> bs!1594 m!9961))

(declare-fun m!9963 () Bool)

(assert (=> bs!1594 m!9963))

(assert (=> bs!1594 m!9949))

(assert (=> bs!1594 m!9963))

(declare-fun m!9965 () Bool)

(assert (=> bs!1594 m!9965))

(assert (=> (and b!7089 (= lambda!1177 (x!3852 thiss!1157)) d!5575) d!5589))

(declare-fun b_lambda!3389 () Bool)

(assert (= b_lambda!3375 (or (and b!7089 (= lambda!1177 (x!3853 thiss!1147))) (and b!7091 b_free!395 (= (y!455 thiss!1147) (x!3853 thiss!1147))) (and b!7093 (= lambda!1175 (x!3853 thiss!1147))) (and b!7092 b_free!389 (= (x!3852 thiss!1157) (x!3853 thiss!1147))) (and b!7092 b_free!391 (= (y!454 thiss!1157) (x!3853 thiss!1147))) (and b!7091 b_free!393) b_lambda!3389)))

(declare-fun bs!1595 () Bool)

(declare-fun d!5591 () Bool)

(assert (= bs!1595 (and d!5591 b!7093)))

(assert (=> bs!1595 (= (dynLambda!128 lambda!1175) (foldRight1!24 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152)) lambda!1174))))

(assert (=> bs!1595 m!9921))

(assert (=> bs!1595 m!9921))

(assert (=> bs!1595 m!9923))

(assert (=> bs!1595 m!9923))

(assert (=> bs!1595 m!9927))

(assert (=> (and b!7093 (= lambda!1175 (x!3853 thiss!1147)) d!5577) d!5591))

(declare-fun bs!1596 () Bool)

(declare-fun d!5593 () Bool)

(assert (= bs!1596 (and d!5593 b!7089)))

(assert (=> bs!1596 (= (dynLambda!128 lambda!1177) (++!3 (fromParenthesis!0 (head!368 xs!372)) (foldRight1!24 (append!57 (map!145 (tail!380 xs!372) lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152)) lambda!1174)))))

(assert (=> bs!1596 m!9949))

(assert (=> bs!1596 m!9961))

(assert (=> bs!1596 m!9961))

(assert (=> bs!1596 m!9963))

(assert (=> bs!1596 m!9949))

(assert (=> bs!1596 m!9963))

(assert (=> bs!1596 m!9965))

(assert (=> (and b!7089 (= lambda!1177 (x!3853 thiss!1147)) d!5577) d!5593))

(declare-fun b_lambda!3391 () Bool)

(assert (= b_lambda!3383 (or b!7086 b_lambda!3391)))

(declare-fun bs!1597 () Bool)

(declare-fun d!5595 () Bool)

(assert (= bs!1597 (and d!5595 b!7086)))

(assert (=> bs!1597 (= (dynLambda!130 lambda!1174 (head!369 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152))) (foldRight1!24 (tail!381 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152))) lambda!1174)) (++!3 (head!369 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152))) (foldRight1!24 (tail!381 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152))) lambda!1174)))))

(assert (=> bs!1597 m!9951))

(declare-fun m!9967 () Bool)

(assert (=> bs!1597 m!9967))

(assert (=> b!7110 d!5595))

(declare-fun b_lambda!3393 () Bool)

(assert (= b_lambda!3373 (or (and b!7091 b_free!395 (= (y!455 thiss!1147) (y!454 thiss!1157))) (and b!7091 b_free!393 (= (x!3853 thiss!1147) (y!454 thiss!1157))) (and b!7093 (= lambda!1175 (y!454 thiss!1157))) (and b!7092 b_free!389 (= (x!3852 thiss!1157) (y!454 thiss!1157))) (and b!7092 b_free!391) (and b!7089 (= lambda!1177 (y!454 thiss!1157))) b_lambda!3393)))

(declare-fun bs!1598 () Bool)

(declare-fun d!5597 () Bool)

(assert (= bs!1598 (and d!5597 b!7093)))

(assert (=> bs!1598 (= (dynLambda!128 lambda!1175) (foldRight1!24 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152)) lambda!1174))))

(assert (=> bs!1598 m!9921))

(assert (=> bs!1598 m!9921))

(assert (=> bs!1598 m!9923))

(assert (=> bs!1598 m!9923))

(assert (=> bs!1598 m!9927))

(assert (=> (and b!7093 (= lambda!1175 (y!454 thiss!1157)) d!5575) d!5597))

(declare-fun bs!1599 () Bool)

(declare-fun d!5599 () Bool)

(assert (= bs!1599 (and d!5599 b!7089)))

(assert (=> bs!1599 (= (dynLambda!128 lambda!1177) (++!3 (fromParenthesis!0 (head!368 xs!372)) (foldRight1!24 (append!57 (map!145 (tail!380 xs!372) lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152)) lambda!1174)))))

(assert (=> bs!1599 m!9949))

(assert (=> bs!1599 m!9961))

(assert (=> bs!1599 m!9961))

(assert (=> bs!1599 m!9963))

(assert (=> bs!1599 m!9949))

(assert (=> bs!1599 m!9963))

(assert (=> bs!1599 m!9965))

(assert (=> (and b!7089 (= lambda!1177 (y!454 thiss!1157)) d!5575) d!5599))

(declare-fun b_lambda!3395 () Bool)

(assert (= b_lambda!3379 (or (and b!7093 (= lambda!1176 (evidence!97 thiss!1147))) (and b!7091 b_free!397) b_lambda!3395)))

(declare-fun bs!1600 () Bool)

(declare-fun d!5601 () Bool)

(assert (= bs!1600 (and d!5601 b!7093)))

(assert (=> bs!1600 (= (dynLambda!127 lambda!1176) trivial!1)))

(assert (=> (and b!7093 (= lambda!1176 (evidence!97 thiss!1147)) b!7098) d!5601))

(declare-fun b_lambda!3397 () Bool)

(assert (= b_lambda!3381 (or b!7086 b_lambda!3397)))

(declare-fun bs!1601 () Bool)

(declare-fun d!5603 () Bool)

(assert (= bs!1601 (and d!5603 b!7086)))

(assert (=> bs!1601 (= (dynLambda!129 lambda!1173 (head!368 xs!372)) (fromParenthesis!0 (head!368 xs!372)))))

(assert (=> bs!1601 m!9919))

(assert (=> b!7104 d!5603))

(declare-fun b_lambda!3399 () Bool)

(assert (= b_lambda!3385 (or b!7086 b_lambda!3399)))

(declare-fun bs!1602 () Bool)

(declare-fun d!5605 () Bool)

(assert (= bs!1602 (and d!5605 b!7086)))

(assert (=> bs!1602 (= (dynLambda!130 lambda!1174 (head!369 (map!145 xs!372 lambda!1173)) (foldRight1!24 (tail!381 (map!145 xs!372 lambda!1173)) lambda!1174)) (++!3 (head!369 (map!145 xs!372 lambda!1173)) (foldRight1!24 (tail!381 (map!145 xs!372 lambda!1173)) lambda!1174)))))

(assert (=> bs!1602 m!9957))

(declare-fun m!9969 () Bool)

(assert (=> bs!1602 m!9969))

(assert (=> b!7118 d!5605))

(declare-fun b_lambda!3401 () Bool)

(assert (= b_lambda!3377 (or (and b!7091 b_free!393 (= (x!3853 thiss!1147) (y!455 thiss!1147))) (and b!7092 b_free!391 (= (y!454 thiss!1157) (y!455 thiss!1147))) (and b!7089 (= lambda!1177 (y!455 thiss!1147))) (and b!7093 (= lambda!1175 (y!455 thiss!1147))) (and b!7091 b_free!395) (and b!7092 b_free!389 (= (x!3852 thiss!1157) (y!455 thiss!1147))) b_lambda!3401)))

(declare-fun bs!1603 () Bool)

(declare-fun d!5607 () Bool)

(assert (= bs!1603 (and d!5607 b!7093)))

(assert (=> bs!1603 (= (dynLambda!128 lambda!1175) (foldRight1!24 (append!57 (map!145 xs!372 lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152)) lambda!1174))))

(assert (=> bs!1603 m!9921))

(assert (=> bs!1603 m!9921))

(assert (=> bs!1603 m!9923))

(assert (=> bs!1603 m!9923))

(assert (=> bs!1603 m!9927))

(assert (=> (and b!7093 (= lambda!1175 (y!455 thiss!1147)) d!5577) d!5607))

(declare-fun bs!1604 () Bool)

(declare-fun d!5609 () Bool)

(assert (= bs!1604 (and d!5609 b!7089)))

(assert (=> bs!1604 (= (dynLambda!128 lambda!1177) (++!3 (fromParenthesis!0 (head!368 xs!372)) (foldRight1!24 (append!57 (map!145 (tail!380 xs!372) lambda!1173) (Cons!151 (Balance!82 0 0) Nil!152)) lambda!1174)))))

(assert (=> bs!1604 m!9949))

(assert (=> bs!1604 m!9961))

(assert (=> bs!1604 m!9961))

(assert (=> bs!1604 m!9963))

(assert (=> bs!1604 m!9949))

(assert (=> bs!1604 m!9963))

(assert (=> bs!1604 m!9965))

(assert (=> (and b!7089 (= lambda!1177 (y!455 thiss!1147)) d!5577) d!5609))

(push 1)

(assert (not b_lambda!3401))

(assert b_and!1891)

(assert b_and!1895)

(assert (not b_lambda!3389))

(assert (not bs!1599))

(assert (not b_lambda!3397))

(assert (not b_lambda!3391))

(assert b_and!1887)

(assert (not b_lambda!3387))

(assert (not b!7118))

(assert (not b_lambda!3395))

(assert (not bs!1602))

(assert (not bs!1594))

(assert (not b_lambda!3399))

(assert (not bs!1595))

(assert (not bs!1596))

(assert (not b!7116))

(assert (not b!7104))

(assert b_and!1889)

(assert (not b_lambda!3393))

(assert (not bs!1597))

(assert (not b_next!847))

(assert (not b_next!853))

(assert (not bs!1603))

(assert (not bs!1601))

(assert (not b!7110))

(assert (not bs!1593))

(assert (not b_next!849))

(assert (not bs!1604))

(assert (not b_next!855))

(assert (not bs!1598))

(assert b_and!1893)

(assert (not b_next!851))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1891)

(assert b_and!1895)

(assert b_and!1887)

(assert b_and!1889)

(assert (not b_next!847))

(assert (not b_next!853))

(assert (not b_next!849))

(assert (not b_next!855))

(assert b_and!1893)

(assert (not b_next!851))

(check-sat)

(pop 1)

