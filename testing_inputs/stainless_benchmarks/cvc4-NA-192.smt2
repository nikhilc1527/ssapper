; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1404 () Bool)

(assert start!1404)

(declare-fun b!7456 () Bool)

(declare-fun b_free!505 () Bool)

(declare-fun b_next!1061 () Bool)

(assert (=> b!7456 (= b_free!505 (not b_next!1061))))

(declare-fun tp!894 () Bool)

(declare-fun b_and!2173 () Bool)

(assert (=> b!7456 (= tp!894 b_and!2173)))

(declare-fun b_free!507 () Bool)

(declare-fun b_next!1063 () Bool)

(assert (=> b!7456 (= b_free!507 (not b_next!1063))))

(declare-fun tp!893 () Bool)

(declare-fun b_and!2175 () Bool)

(assert (=> b!7456 (= tp!893 b_and!2175)))

(declare-fun b_free!509 () Bool)

(declare-fun b_next!1065 () Bool)

(assert (=> b!7456 (= b_free!509 (not b_next!1065))))

(declare-fun tp!891 () Bool)

(declare-fun b_and!2177 () Bool)

(assert (=> b!7456 (= tp!891 b_and!2177)))

(declare-fun b!7455 () Bool)

(declare-fun b_free!511 () Bool)

(declare-fun b_next!1067 () Bool)

(assert (=> b!7455 (= b_free!511 (not b_next!1067))))

(declare-fun tp!895 () Bool)

(declare-fun b_and!2179 () Bool)

(assert (=> b!7455 (= tp!895 b_and!2179)))

(declare-fun b_free!513 () Bool)

(declare-fun b_next!1069 () Bool)

(assert (=> b!7455 (= b_free!513 (not b_next!1069))))

(declare-fun tp!890 () Bool)

(declare-fun b_and!2181 () Bool)

(assert (=> b!7455 (= tp!890 b_and!2181)))

(declare-fun b_free!515 () Bool)

(declare-fun b_next!1071 () Bool)

(assert (=> b!7455 (= b_free!515 (not b_next!1071))))

(declare-fun tp!892 () Bool)

(declare-fun b_and!2183 () Bool)

(assert (=> b!7455 (= tp!892 b_and!2183)))

(declare-fun b!7457 () Bool)

(assert (=> b!7457 true))

(declare-fun b_next!1073 () Bool)

(declare-fun lambda!1388 () Int)

(declare-datatypes () ((Balance!103 (Balance!104 (extraOpen!92 Int) (extraClose!92 Int)))))

(declare-datatypes () ((EqEvidence!80 (EqEvidence!81 (x!4060 Int) (y!468 Int) (evidence!107 Int)))))

(declare-fun thiss!1123 () EqEvidence!80)

(assert (=> b!7456 (= b_next!1061 (or (and b!7457 (= lambda!1388 (x!4060 thiss!1123))) b_next!1073))))

(declare-fun b_next!1075 () Bool)

(assert (=> b!7456 (= b_next!1063 (or (and b!7457 (= lambda!1388 (y!468 thiss!1123))) b_next!1075))))

(declare-fun b_next!1077 () Bool)

(declare-fun that!301 () EqEvidence!80)

(assert (=> b!7455 (= b_next!1067 (or (and b!7457 (= lambda!1388 (x!4060 that!301))) b_next!1077))))

(declare-fun b_next!1079 () Bool)

(assert (=> b!7455 (= b_next!1069 (or (and b!7457 (= lambda!1388 (y!468 that!301))) b_next!1079))))

(declare-fun m!10307 () Bool)

(assert (=> b!7457 m!10307))

(assert (=> b!7457 m!10307))

(declare-fun m!10309 () Bool)

(assert (=> b!7457 m!10309))

(declare-fun lambda!1389 () Int)

(assert (=> b!7457 (not (= lambda!1389 lambda!1388))))

(assert (=> b!7457 true))

(declare-fun dynLambda!155 (Int) Balance!103)

(assert (=> (and b!7456 b!7457 (= (dynLambda!155 lambda!1389) (dynLambda!155 (x!4060 thiss!1123)))) (= lambda!1389 (x!4060 thiss!1123))))

(assert (=> (and b!7456 b!7457 (= (dynLambda!155 lambda!1389) (dynLambda!155 (y!468 thiss!1123)))) (= lambda!1389 (y!468 thiss!1123))))

(assert (=> (and b!7455 b!7457 (= (dynLambda!155 lambda!1389) (dynLambda!155 (x!4060 that!301)))) (= lambda!1389 (x!4060 that!301))))

(assert (=> (and b!7455 b!7457 (= (dynLambda!155 lambda!1389) (dynLambda!155 (y!468 that!301)))) (= lambda!1389 (y!468 that!301))))

(declare-fun b_next!1081 () Bool)

(assert (=> b!7456 (= b_next!1073 (or (and b!7457 (= lambda!1389 (x!4060 thiss!1123))) b_next!1081))))

(declare-fun b_next!1083 () Bool)

(assert (=> b!7456 (= b_next!1075 (or (and b!7457 (= lambda!1389 (y!468 thiss!1123))) b_next!1083))))

(declare-fun b_next!1085 () Bool)

(assert (=> b!7455 (= b_next!1077 (or (and b!7457 (= lambda!1389 (x!4060 that!301))) b_next!1085))))

(declare-fun b_next!1087 () Bool)

(assert (=> b!7455 (= b_next!1079 (or (and b!7457 (= lambda!1389 (y!468 that!301))) b_next!1087))))

(declare-fun m!10311 () Bool)

(assert (=> b!7457 m!10311))

(declare-fun lambda!1390 () Int)

(declare-fun dynLambda!156 (Int) Bool)

(assert (=> (and b!7456 b!7457 (= (dynLambda!156 lambda!1390) (dynLambda!156 (evidence!107 thiss!1123)))) (= lambda!1390 (evidence!107 thiss!1123))))

(assert (=> (and b!7455 b!7457 (= (dynLambda!156 lambda!1390) (dynLambda!156 (evidence!107 that!301)))) (= lambda!1390 (evidence!107 that!301))))

(declare-fun b_next!1089 () Bool)

(assert (=> b!7456 (= b_next!1065 (or (and b!7457 (= lambda!1390 (evidence!107 thiss!1123))) b_next!1089))))

(declare-fun b_next!1091 () Bool)

(assert (=> b!7455 (= b_next!1071 (or (and b!7457 (= lambda!1390 (evidence!107 that!301))) b_next!1091))))

(declare-fun b!7462 () Bool)

(assert (=> b!7462 m!10307))

(declare-fun bs!1693 () Bool)

(assert (= bs!1693 (and b!7462 b!7457)))

(declare-fun lambda!1391 () Int)

(assert (=> bs!1693 (not (= lambda!1391 lambda!1388))))

(declare-datatypes () ((Parenthesis!42 (CloseParenthesis!41) (OpenParenthesis!41))))

(declare-datatypes () ((List!167 (Nil!165) (Cons!164 (head!382 Parenthesis!42) (tail!394 List!167)))))

(declare-fun xs!372 () List!167)

(declare-fun fromParenthesis!0 (Parenthesis!42) Balance!103)

(declare-fun ++!3 (Balance!103 Balance!103) Balance!103)

(assert (=> bs!1693 (= (= (fromParenthesis!0 (head!382 xs!372)) (++!3 (fromParenthesis!0 (head!382 xs!372)) (Balance!104 0 0))) (= lambda!1391 lambda!1389))))

(assert (=> b!7462 true))

(assert (=> (and b!7456 b!7462 (= (dynLambda!155 lambda!1391) (dynLambda!155 (x!4060 thiss!1123)))) (= lambda!1391 (x!4060 thiss!1123))))

(assert (=> (and b!7456 b!7462 (= (dynLambda!155 lambda!1391) (dynLambda!155 (y!468 thiss!1123)))) (= lambda!1391 (y!468 thiss!1123))))

(assert (=> (and b!7455 b!7462 (= (dynLambda!155 lambda!1391) (dynLambda!155 (x!4060 that!301)))) (= lambda!1391 (x!4060 that!301))))

(assert (=> (and b!7455 b!7462 (= (dynLambda!155 lambda!1391) (dynLambda!155 (y!468 that!301)))) (= lambda!1391 (y!468 that!301))))

(declare-fun b_next!1093 () Bool)

(assert (=> b!7456 (= b_next!1081 (or (and b!7462 (= lambda!1391 (x!4060 thiss!1123))) b_next!1093))))

(declare-fun b_next!1095 () Bool)

(assert (=> b!7456 (= b_next!1083 (or (and b!7462 (= lambda!1391 (y!468 thiss!1123))) b_next!1095))))

(declare-fun b_next!1097 () Bool)

(assert (=> b!7455 (= b_next!1085 (or (and b!7462 (= lambda!1391 (x!4060 that!301))) b_next!1097))))

(declare-fun b_next!1099 () Bool)

(assert (=> b!7455 (= b_next!1087 (or (and b!7462 (= lambda!1391 (y!468 that!301))) b_next!1099))))

(declare-fun e!4301 () Bool)

(assert (=> b!7455 (= e!4301 (and tp!895 tp!890 tp!892))))

(declare-fun e!4300 () Bool)

(assert (=> b!7456 (= e!4300 (and tp!894 tp!893 tp!891))))

(declare-fun res!2173 () Bool)

(declare-fun e!4299 () Bool)

(assert (=> b!7457 (=> (not res!2173) (not e!4299))))

(assert (=> b!7457 (= res!2173 (= thiss!1123 (EqEvidence!81 lambda!1388 lambda!1389 lambda!1390)))))

(declare-fun b!7458 () Bool)

(assert (=> b!7458 (= e!4299 (not (= (dynLambda!155 (y!468 thiss!1123)) (dynLambda!155 (x!4060 that!301)))))))

(declare-fun b!7459 () Bool)

(declare-fun res!2172 () Bool)

(assert (=> b!7459 (=> (not res!2172) (not e!4299))))

(assert (=> b!7459 (= res!2172 (dynLambda!156 (evidence!107 thiss!1123)))))

(declare-fun b!7460 () Bool)

(declare-fun res!2175 () Bool)

(assert (=> b!7460 (=> (not res!2175) (not e!4299))))

(assert (=> b!7460 (= res!2175 (and (is-Cons!164 xs!372) (is-Nil!165 (tail!394 xs!372))))))

(declare-fun b!7461 () Bool)

(declare-fun res!2170 () Bool)

(assert (=> b!7461 (=> (not res!2170) (not e!4299))))

(declare-datatypes () ((ProofOps!70 (ProofOps!71 (prop!145 Bool)))))

(declare-fun thiss!1106 () ProofOps!70)

(declare-fun lambda!1387 () Int)

(declare-fun lambda!1386 () Int)

(declare-datatypes () ((List!168 (Nil!166) (Cons!165 (head!383 Balance!103) (tail!395 List!168)))))

(declare-fun foldRight1!31 (List!168 Int) Balance!103)

(declare-fun append!64 (List!168 List!168) List!168)

(declare-fun map!152 (List!167 Int) List!168)

(assert (=> b!7461 (= res!2170 (= thiss!1106 (ProofOps!71 (= (foldRight1!31 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166)) lambda!1387) (foldRight1!31 (map!152 xs!372 lambda!1386) lambda!1387)))))))

(declare-fun res!2171 () Bool)

(assert (=> b!7462 (=> (not res!2171) (not e!4299))))

(assert (=> b!7462 (= res!2171 (= that!301 (EqEvidence!81 lambda!1391 lambda!1391 lambda!1390)))))

(declare-fun res!2174 () Bool)

(assert (=> start!1404 (=> (not res!2174) (not e!4299))))

(declare-fun isEmpty!143 (List!167) Bool)

(assert (=> start!1404 (= res!2174 (not (isEmpty!143 xs!372)))))

(assert (=> start!1404 e!4299))

(assert (=> start!1404 true))

(declare-fun inv!263 (EqEvidence!80) Bool)

(assert (=> start!1404 (and (inv!263 thiss!1123) e!4300)))

(assert (=> start!1404 (and (inv!263 that!301) e!4301)))

(assert (= (and start!1404 res!2174) b!7461))

(assert (= (and b!7461 res!2170) b!7460))

(assert (= (and b!7460 res!2175) b!7457))

(assert (= (and b!7457 res!2173) b!7462))

(assert (= (and b!7462 res!2171) b!7459))

(assert (= (and b!7459 res!2172) b!7458))

(assert (= start!1404 b!7456))

(assert (= start!1404 b!7455))

(declare-fun b_lambda!3611 () Bool)

(assert (=> (not b_lambda!3611) (not b!7458)))

(declare-fun t!1531 () Bool)

(declare-fun tb!1191 () Bool)

(assert (=> (and b!7456 (= (x!4060 thiss!1123) (y!468 thiss!1123)) t!1531) tb!1191))

(declare-fun result!1231 () Bool)

(assert (=> tb!1191 (= result!1231 true)))

(assert (=> b!7458 t!1531))

(declare-fun b_and!2185 () Bool)

(assert (= b_and!2173 (and (=> t!1531 result!1231) b_and!2185)))

(declare-fun t!1533 () Bool)

(declare-fun tb!1193 () Bool)

(assert (=> (and b!7456 (= (y!468 thiss!1123) (y!468 thiss!1123)) t!1533) tb!1193))

(declare-fun result!1233 () Bool)

(assert (=> tb!1193 (= result!1233 true)))

(assert (=> b!7458 t!1533))

(declare-fun b_and!2187 () Bool)

(assert (= b_and!2175 (and (=> t!1533 result!1233) b_and!2187)))

(declare-fun t!1535 () Bool)

(declare-fun tb!1195 () Bool)

(assert (=> (and b!7455 (= (x!4060 that!301) (y!468 thiss!1123)) t!1535) tb!1195))

(declare-fun result!1235 () Bool)

(assert (=> tb!1195 (= result!1235 true)))

(assert (=> b!7458 t!1535))

(declare-fun b_and!2189 () Bool)

(assert (= b_and!2179 (and (=> t!1535 result!1235) b_and!2189)))

(declare-fun tb!1197 () Bool)

(declare-fun t!1537 () Bool)

(assert (=> (and b!7455 (= (y!468 that!301) (y!468 thiss!1123)) t!1537) tb!1197))

(declare-fun result!1237 () Bool)

(assert (=> tb!1197 (= result!1237 true)))

(assert (=> b!7458 t!1537))

(declare-fun b_and!2191 () Bool)

(assert (= b_and!2181 (and (=> t!1537 result!1237) b_and!2191)))

(declare-fun b_lambda!3613 () Bool)

(assert (=> (not b_lambda!3613) (not b!7458)))

(declare-fun t!1539 () Bool)

(declare-fun tb!1199 () Bool)

(assert (=> (and b!7456 (= (x!4060 thiss!1123) (x!4060 that!301)) t!1539) tb!1199))

(declare-fun result!1239 () Bool)

(assert (=> tb!1199 (= result!1239 true)))

(assert (=> b!7458 t!1539))

(declare-fun b_and!2193 () Bool)

(assert (= b_and!2185 (and (=> t!1539 result!1239) b_and!2193)))

(declare-fun t!1541 () Bool)

(declare-fun tb!1201 () Bool)

(assert (=> (and b!7456 (= (y!468 thiss!1123) (x!4060 that!301)) t!1541) tb!1201))

(declare-fun result!1241 () Bool)

(assert (=> tb!1201 (= result!1241 true)))

(assert (=> b!7458 t!1541))

(declare-fun b_and!2195 () Bool)

(assert (= b_and!2187 (and (=> t!1541 result!1241) b_and!2195)))

(declare-fun t!1543 () Bool)

(declare-fun tb!1203 () Bool)

(assert (=> (and b!7455 (= (x!4060 that!301) (x!4060 that!301)) t!1543) tb!1203))

(declare-fun result!1243 () Bool)

(assert (=> tb!1203 (= result!1243 true)))

(assert (=> b!7458 t!1543))

(declare-fun b_and!2197 () Bool)

(assert (= b_and!2189 (and (=> t!1543 result!1243) b_and!2197)))

(declare-fun t!1545 () Bool)

(declare-fun tb!1205 () Bool)

(assert (=> (and b!7455 (= (y!468 that!301) (x!4060 that!301)) t!1545) tb!1205))

(declare-fun result!1245 () Bool)

(assert (=> tb!1205 (= result!1245 true)))

(assert (=> b!7458 t!1545))

(declare-fun b_and!2199 () Bool)

(assert (= b_and!2191 (and (=> t!1545 result!1245) b_and!2199)))

(declare-fun b_lambda!3615 () Bool)

(assert (=> (not b_lambda!3615) (not b!7459)))

(declare-fun t!1547 () Bool)

(declare-fun tb!1207 () Bool)

(assert (=> (and b!7456 (= (evidence!107 thiss!1123) (evidence!107 thiss!1123)) t!1547) tb!1207))

(declare-fun result!1247 () Bool)

(assert (=> tb!1207 (= result!1247 true)))

(assert (=> b!7459 t!1547))

(declare-fun b_and!2201 () Bool)

(assert (= b_and!2177 (and (=> t!1547 result!1247) b_and!2201)))

(declare-fun tb!1209 () Bool)

(declare-fun t!1549 () Bool)

(assert (=> (and b!7455 (= (evidence!107 that!301) (evidence!107 thiss!1123)) t!1549) tb!1209))

(declare-fun result!1249 () Bool)

(assert (=> tb!1209 (= result!1249 true)))

(assert (=> b!7459 t!1549))

(declare-fun b_and!2203 () Bool)

(assert (= b_and!2183 (and (=> t!1549 result!1249) b_and!2203)))

(declare-fun m!10313 () Bool)

(assert (=> b!7458 m!10313))

(declare-fun m!10315 () Bool)

(assert (=> b!7458 m!10315))

(declare-fun m!10317 () Bool)

(assert (=> b!7459 m!10317))

(declare-fun m!10319 () Bool)

(assert (=> b!7461 m!10319))

(declare-fun m!10321 () Bool)

(assert (=> b!7461 m!10321))

(declare-fun m!10323 () Bool)

(assert (=> b!7461 m!10323))

(declare-fun m!10325 () Bool)

(assert (=> b!7461 m!10325))

(assert (=> b!7461 m!10319))

(assert (=> b!7461 m!10319))

(assert (=> b!7461 m!10319))

(assert (=> b!7461 m!10323))

(declare-fun m!10327 () Bool)

(assert (=> start!1404 m!10327))

(declare-fun m!10329 () Bool)

(assert (=> start!1404 m!10329))

(declare-fun m!10331 () Bool)

(assert (=> start!1404 m!10331))

(push 1)

(assert (not b_next!1097))

(assert b_and!2201)

(assert (not start!1404))

(assert (not b!7462))

(assert (not b_lambda!3615))

(assert b_and!2199)

(assert b_and!2197)

(assert (not b_next!1089))

(assert (not b!7457))

(assert (not b_next!1095))

(assert b_and!2203)

(assert b_and!2193)

(assert (not b_lambda!3613))

(assert b_and!2195)

(assert (not b_next!1093))

(assert (not b_next!1099))

(assert (not b!7461))

(assert (not b_next!1091))

(assert (not b_lambda!3611))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1097))

(assert b_and!2201)

(assert b_and!2199)

(assert b_and!2197)

(assert (not b_next!1089))

(assert (not b_next!1095))

(assert b_and!2203)

(assert b_and!2193)

(assert b_and!2195)

(assert (not b_next!1093))

(assert (not b_next!1099))

(assert (not b_next!1091))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3617 () Bool)

(assert (= b_lambda!3615 (or (and b!7457 (= lambda!1390 (evidence!107 thiss!1123))) (and b!7456 b_free!509) (and b!7455 b_free!515 (= (evidence!107 that!301) (evidence!107 thiss!1123))) b_lambda!3617)))

(declare-fun bs!1694 () Bool)

(declare-fun d!5873 () Bool)

(assert (= bs!1694 (and d!5873 b!7457)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!1694 (= (dynLambda!156 lambda!1390) trivial!1)))

(assert (=> (and b!7457 (= lambda!1390 (evidence!107 thiss!1123)) b!7459) d!5873))

(declare-fun b_lambda!3619 () Bool)

(assert (= b_lambda!3613 (or (and b!7462 (= lambda!1391 (x!4060 that!301))) (and b!7455 b_free!513 (= (y!468 that!301) (x!4060 that!301))) (and b!7456 b_free!505 (= (x!4060 thiss!1123) (x!4060 that!301))) (and b!7455 b_free!511) (and b!7456 b_free!507 (= (y!468 thiss!1123) (x!4060 that!301))) (and b!7457 (= lambda!1389 (x!4060 that!301))) (and b!7457 (= lambda!1388 (x!4060 that!301))) b_lambda!3619)))

(declare-fun bs!1695 () Bool)

(declare-fun d!5875 () Bool)

(assert (= bs!1695 (and d!5875 b!7457)))

(assert (=> bs!1695 (= (dynLambda!155 lambda!1389) (++!3 (fromParenthesis!0 (head!382 xs!372)) (Balance!104 0 0)))))

(assert (=> (and b!7457 (= lambda!1389 (x!4060 that!301)) b!7458) d!5875))

(declare-fun bs!1696 () Bool)

(declare-fun d!5877 () Bool)

(assert (= bs!1696 (and d!5877 b!7462)))

(assert (=> bs!1696 (= (dynLambda!155 lambda!1391) (fromParenthesis!0 (head!382 xs!372)))))

(assert (=> (and b!7462 (= lambda!1391 (x!4060 that!301)) b!7458) d!5877))

(declare-fun bs!1697 () Bool)

(declare-fun d!5879 () Bool)

(assert (= bs!1697 (and d!5879 b!7457)))

(assert (=> bs!1697 (= (dynLambda!155 lambda!1388) (foldRight1!31 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166)) lambda!1387))))

(assert (=> bs!1697 m!10319))

(assert (=> bs!1697 m!10319))

(assert (=> bs!1697 m!10323))

(assert (=> bs!1697 m!10323))

(assert (=> bs!1697 m!10325))

(assert (=> (and b!7457 (= lambda!1388 (x!4060 that!301)) b!7458) d!5879))

(declare-fun b_lambda!3621 () Bool)

(assert (= b_lambda!3611 (or (and b!7456 b_free!507) (and b!7455 b_free!513 (= (y!468 that!301) (y!468 thiss!1123))) (and b!7457 (= lambda!1388 (y!468 thiss!1123))) (and b!7456 b_free!505 (= (x!4060 thiss!1123) (y!468 thiss!1123))) (and b!7455 b_free!511 (= (x!4060 that!301) (y!468 thiss!1123))) (and b!7457 (= lambda!1389 (y!468 thiss!1123))) (and b!7462 (= lambda!1391 (y!468 thiss!1123))) b_lambda!3621)))

(declare-fun bs!1698 () Bool)

(declare-fun d!5881 () Bool)

(assert (= bs!1698 (and d!5881 b!7457)))

(assert (=> bs!1698 (= (dynLambda!155 lambda!1388) (foldRight1!31 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166)) lambda!1387))))

(assert (=> bs!1698 m!10319))

(assert (=> bs!1698 m!10319))

(assert (=> bs!1698 m!10323))

(assert (=> bs!1698 m!10323))

(assert (=> bs!1698 m!10325))

(assert (=> (and b!7457 (= lambda!1388 (y!468 thiss!1123)) b!7458) d!5881))

(declare-fun bs!1699 () Bool)

(declare-fun d!5883 () Bool)

(assert (= bs!1699 (and d!5883 b!7457)))

(assert (=> bs!1699 (= (dynLambda!155 lambda!1389) (++!3 (fromParenthesis!0 (head!382 xs!372)) (Balance!104 0 0)))))

(assert (=> (and b!7457 (= lambda!1389 (y!468 thiss!1123)) b!7458) d!5883))

(declare-fun bs!1700 () Bool)

(declare-fun d!5885 () Bool)

(assert (= bs!1700 (and d!5885 b!7462)))

(assert (=> bs!1700 (= (dynLambda!155 lambda!1391) (fromParenthesis!0 (head!382 xs!372)))))

(assert (=> (and b!7462 (= lambda!1391 (y!468 thiss!1123)) b!7458) d!5885))

(push 1)

(assert (not b_next!1097))

(assert b_and!2201)

(assert (not start!1404))

(assert (not b!7462))

(assert b_and!2199)

(assert (not bs!1697))

(assert b_and!2197)

(assert (not b_next!1089))

(assert (not b!7457))

(assert (not b_next!1095))

(assert b_and!2203)

(assert (not b_lambda!3621))

(assert b_and!2193)

(assert (not bs!1698))

(assert (not b_lambda!3619))

(assert (not b_lambda!3617))

(assert b_and!2195)

(assert (not b_next!1093))

(assert (not b_next!1099))

(assert (not b!7461))

(assert (not b_next!1091))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1097))

(assert b_and!2201)

(assert b_and!2199)

(assert b_and!2197)

(assert (not b_next!1089))

(assert (not b_next!1095))

(assert b_and!2203)

(assert b_and!2193)

(assert b_and!2195)

(assert (not b_next!1093))

(assert (not b_next!1099))

(assert (not b_next!1091))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5887 () Bool)

(assert (=> d!5887 (= (isEmpty!143 xs!372) (is-Nil!165 xs!372))))

(assert (=> start!1404 d!5887))

(declare-fun d!5889 () Bool)

(declare-fun res!2178 () Bool)

(declare-fun e!4304 () Bool)

(assert (=> d!5889 (=> (not res!2178) (not e!4304))))

(assert (=> d!5889 (= res!2178 (= (dynLambda!155 (x!4060 thiss!1123)) (dynLambda!155 (y!468 thiss!1123))))))

(assert (=> d!5889 (= (inv!263 thiss!1123) e!4304)))

(declare-fun b!7467 () Bool)

(assert (=> b!7467 (= e!4304 (dynLambda!156 (evidence!107 thiss!1123)))))

(assert (= (and d!5889 res!2178) b!7467))

(declare-fun b_lambda!3623 () Bool)

(assert (=> (not b_lambda!3623) (not d!5889)))

(declare-fun t!1551 () Bool)

(declare-fun tb!1211 () Bool)

(assert (=> (and b!7456 (= (x!4060 thiss!1123) (x!4060 thiss!1123)) t!1551) tb!1211))

(declare-fun result!1251 () Bool)

(assert (=> tb!1211 (= result!1251 true)))

(assert (=> d!5889 t!1551))

(declare-fun b_and!2205 () Bool)

(assert (= b_and!2193 (and (=> t!1551 result!1251) b_and!2205)))

(declare-fun t!1553 () Bool)

(declare-fun tb!1213 () Bool)

(assert (=> (and b!7456 (= (y!468 thiss!1123) (x!4060 thiss!1123)) t!1553) tb!1213))

(declare-fun result!1253 () Bool)

(assert (=> tb!1213 (= result!1253 true)))

(assert (=> d!5889 t!1553))

(declare-fun b_and!2207 () Bool)

(assert (= b_and!2195 (and (=> t!1553 result!1253) b_and!2207)))

(declare-fun t!1555 () Bool)

(declare-fun tb!1215 () Bool)

(assert (=> (and b!7455 (= (x!4060 that!301) (x!4060 thiss!1123)) t!1555) tb!1215))

(declare-fun result!1255 () Bool)

(assert (=> tb!1215 (= result!1255 true)))

(assert (=> d!5889 t!1555))

(declare-fun b_and!2209 () Bool)

(assert (= b_and!2197 (and (=> t!1555 result!1255) b_and!2209)))

(declare-fun tb!1217 () Bool)

(declare-fun t!1557 () Bool)

(assert (=> (and b!7455 (= (y!468 that!301) (x!4060 thiss!1123)) t!1557) tb!1217))

(declare-fun result!1257 () Bool)

(assert (=> tb!1217 (= result!1257 true)))

(assert (=> d!5889 t!1557))

(declare-fun b_and!2211 () Bool)

(assert (= b_and!2199 (and (=> t!1557 result!1257) b_and!2211)))

(declare-fun b_lambda!3625 () Bool)

(assert (=> (not b_lambda!3625) (not d!5889)))

(assert (=> d!5889 t!1531))

(declare-fun b_and!2213 () Bool)

(assert (= b_and!2205 (and (=> t!1531 result!1231) b_and!2213)))

(assert (=> d!5889 t!1533))

(declare-fun b_and!2215 () Bool)

(assert (= b_and!2207 (and (=> t!1533 result!1233) b_and!2215)))

(assert (=> d!5889 t!1535))

(declare-fun b_and!2217 () Bool)

(assert (= b_and!2209 (and (=> t!1535 result!1235) b_and!2217)))

(assert (=> d!5889 t!1537))

(declare-fun b_and!2219 () Bool)

(assert (= b_and!2211 (and (=> t!1537 result!1237) b_and!2219)))

(declare-fun b_lambda!3627 () Bool)

(assert (=> (not b_lambda!3627) (not b!7467)))

(assert (=> b!7467 t!1547))

(declare-fun b_and!2221 () Bool)

(assert (= b_and!2201 (and (=> t!1547 result!1247) b_and!2221)))

(assert (=> b!7467 t!1549))

(declare-fun b_and!2223 () Bool)

(assert (= b_and!2203 (and (=> t!1549 result!1249) b_and!2223)))

(declare-fun m!10333 () Bool)

(assert (=> d!5889 m!10333))

(assert (=> d!5889 m!10313))

(assert (=> b!7467 m!10317))

(assert (=> start!1404 d!5889))

(declare-fun d!5891 () Bool)

(declare-fun res!2179 () Bool)

(declare-fun e!4305 () Bool)

(assert (=> d!5891 (=> (not res!2179) (not e!4305))))

(assert (=> d!5891 (= res!2179 (= (dynLambda!155 (x!4060 that!301)) (dynLambda!155 (y!468 that!301))))))

(assert (=> d!5891 (= (inv!263 that!301) e!4305)))

(declare-fun b!7468 () Bool)

(assert (=> b!7468 (= e!4305 (dynLambda!156 (evidence!107 that!301)))))

(assert (= (and d!5891 res!2179) b!7468))

(declare-fun b_lambda!3629 () Bool)

(assert (=> (not b_lambda!3629) (not d!5891)))

(assert (=> d!5891 t!1539))

(declare-fun b_and!2225 () Bool)

(assert (= b_and!2213 (and (=> t!1539 result!1239) b_and!2225)))

(assert (=> d!5891 t!1541))

(declare-fun b_and!2227 () Bool)

(assert (= b_and!2215 (and (=> t!1541 result!1241) b_and!2227)))

(assert (=> d!5891 t!1543))

(declare-fun b_and!2229 () Bool)

(assert (= b_and!2217 (and (=> t!1543 result!1243) b_and!2229)))

(assert (=> d!5891 t!1545))

(declare-fun b_and!2231 () Bool)

(assert (= b_and!2219 (and (=> t!1545 result!1245) b_and!2231)))

(declare-fun b_lambda!3631 () Bool)

(assert (=> (not b_lambda!3631) (not d!5891)))

(declare-fun t!1559 () Bool)

(declare-fun tb!1219 () Bool)

(assert (=> (and b!7456 (= (x!4060 thiss!1123) (y!468 that!301)) t!1559) tb!1219))

(declare-fun result!1259 () Bool)

(assert (=> tb!1219 (= result!1259 true)))

(assert (=> d!5891 t!1559))

(declare-fun b_and!2233 () Bool)

(assert (= b_and!2225 (and (=> t!1559 result!1259) b_and!2233)))

(declare-fun tb!1221 () Bool)

(declare-fun t!1561 () Bool)

(assert (=> (and b!7456 (= (y!468 thiss!1123) (y!468 that!301)) t!1561) tb!1221))

(declare-fun result!1261 () Bool)

(assert (=> tb!1221 (= result!1261 true)))

(assert (=> d!5891 t!1561))

(declare-fun b_and!2235 () Bool)

(assert (= b_and!2227 (and (=> t!1561 result!1261) b_and!2235)))

(declare-fun t!1563 () Bool)

(declare-fun tb!1223 () Bool)

(assert (=> (and b!7455 (= (x!4060 that!301) (y!468 that!301)) t!1563) tb!1223))

(declare-fun result!1263 () Bool)

(assert (=> tb!1223 (= result!1263 true)))

(assert (=> d!5891 t!1563))

(declare-fun b_and!2237 () Bool)

(assert (= b_and!2229 (and (=> t!1563 result!1263) b_and!2237)))

(declare-fun t!1565 () Bool)

(declare-fun tb!1225 () Bool)

(assert (=> (and b!7455 (= (y!468 that!301) (y!468 that!301)) t!1565) tb!1225))

(declare-fun result!1265 () Bool)

(assert (=> tb!1225 (= result!1265 true)))

(assert (=> d!5891 t!1565))

(declare-fun b_and!2239 () Bool)

(assert (= b_and!2231 (and (=> t!1565 result!1265) b_and!2239)))

(declare-fun b_lambda!3633 () Bool)

(assert (=> (not b_lambda!3633) (not b!7468)))

(declare-fun t!1567 () Bool)

(declare-fun tb!1227 () Bool)

(assert (=> (and b!7456 (= (evidence!107 thiss!1123) (evidence!107 that!301)) t!1567) tb!1227))

(declare-fun result!1267 () Bool)

(assert (=> tb!1227 (= result!1267 true)))

(assert (=> b!7468 t!1567))

(declare-fun b_and!2241 () Bool)

(assert (= b_and!2221 (and (=> t!1567 result!1267) b_and!2241)))

(declare-fun t!1569 () Bool)

(declare-fun tb!1229 () Bool)

(assert (=> (and b!7455 (= (evidence!107 that!301) (evidence!107 that!301)) t!1569) tb!1229))

(declare-fun result!1269 () Bool)

(assert (=> tb!1229 (= result!1269 true)))

(assert (=> b!7468 t!1569))

(declare-fun b_and!2243 () Bool)

(assert (= b_and!2223 (and (=> t!1569 result!1269) b_and!2243)))

(assert (=> d!5891 m!10315))

(declare-fun m!10335 () Bool)

(assert (=> d!5891 m!10335))

(declare-fun m!10337 () Bool)

(assert (=> b!7468 m!10337))

(assert (=> start!1404 d!5891))

(declare-fun d!5893 () Bool)

(declare-fun c!2631 () Bool)

(assert (=> d!5893 (= c!2631 (and (is-Cons!165 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166))) (is-Nil!166 (tail!395 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166))))))))

(declare-fun e!4308 () Balance!103)

(assert (=> d!5893 (= (foldRight1!31 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166)) lambda!1387) e!4308)))

(declare-fun b!7473 () Bool)

(assert (=> b!7473 (= e!4308 (head!383 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166))))))

(declare-fun b!7474 () Bool)

(declare-fun dynLambda!157 (Int Balance!103 Balance!103) Balance!103)

(assert (=> b!7474 (= e!4308 (dynLambda!157 lambda!1387 (head!383 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166))) (foldRight1!31 (tail!395 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166))) lambda!1387)))))

(assert (= (and d!5893 c!2631) b!7473))

(assert (= (and d!5893 (not c!2631)) b!7474))

(declare-fun b_lambda!3635 () Bool)

(assert (=> (not b_lambda!3635) (not b!7474)))

(declare-fun m!10339 () Bool)

(assert (=> b!7474 m!10339))

(assert (=> b!7474 m!10339))

(declare-fun m!10341 () Bool)

(assert (=> b!7474 m!10341))

(assert (=> bs!1697 d!5893))

(declare-fun d!5895 () Bool)

(declare-fun c!2634 () Bool)

(assert (=> d!5895 (= c!2634 (is-Nil!166 (map!152 xs!372 lambda!1386)))))

(declare-fun e!4311 () List!168)

(assert (=> d!5895 (= (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166)) e!4311)))

(declare-fun b!7479 () Bool)

(assert (=> b!7479 (= e!4311 (Cons!165 (Balance!104 0 0) Nil!166))))

(declare-fun b!7480 () Bool)

(assert (=> b!7480 (= e!4311 (Cons!165 (head!383 (map!152 xs!372 lambda!1386)) (append!64 (tail!395 (map!152 xs!372 lambda!1386)) (Cons!165 (Balance!104 0 0) Nil!166))))))

(assert (= (and d!5895 c!2634) b!7479))

(assert (= (and d!5895 (not c!2634)) b!7480))

(declare-fun m!10343 () Bool)

(assert (=> b!7480 m!10343))

(assert (=> bs!1697 d!5895))

(declare-fun d!5897 () Bool)

(declare-fun c!2637 () Bool)

(assert (=> d!5897 (= c!2637 (is-Nil!165 xs!372))))

(declare-fun e!4314 () List!168)

(assert (=> d!5897 (= (map!152 xs!372 lambda!1386) e!4314)))

(declare-fun b!7485 () Bool)

(assert (=> b!7485 (= e!4314 Nil!166)))

(declare-fun b!7486 () Bool)

(declare-fun dynLambda!158 (Int Parenthesis!42) Balance!103)

(assert (=> b!7486 (= e!4314 (Cons!165 (dynLambda!158 lambda!1386 (head!382 xs!372)) (map!152 (tail!394 xs!372) lambda!1386)))))

(assert (= (and d!5897 c!2637) b!7485))

(assert (= (and d!5897 (not c!2637)) b!7486))

(declare-fun b_lambda!3637 () Bool)

(assert (=> (not b_lambda!3637) (not b!7486)))

(declare-fun m!10345 () Bool)

(assert (=> b!7486 m!10345))

(declare-fun m!10347 () Bool)

(assert (=> b!7486 m!10347))

(assert (=> bs!1697 d!5897))

(declare-fun d!5899 () Bool)

(declare-fun lt!1434 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!5899 (= lt!1434 (min!4 (extraOpen!92 (fromParenthesis!0 (head!382 xs!372))) (extraClose!92 (Balance!104 0 0))))))

(assert (=> d!5899 (= (++!3 (fromParenthesis!0 (head!382 xs!372)) (Balance!104 0 0)) (Balance!104 (- (+ (extraOpen!92 (fromParenthesis!0 (head!382 xs!372))) (extraOpen!92 (Balance!104 0 0))) lt!1434) (- (+ (extraClose!92 (fromParenthesis!0 (head!382 xs!372))) (extraClose!92 (Balance!104 0 0))) lt!1434)))))

(declare-fun bs!1701 () Bool)

(assert (= bs!1701 d!5899))

(declare-fun m!10349 () Bool)

(assert (=> bs!1701 m!10349))

(assert (=> b!7457 d!5899))

(declare-fun d!5901 () Bool)

(assert (=> d!5901 (= (fromParenthesis!0 (head!382 xs!372)) (ite (is-OpenParenthesis!41 (head!382 xs!372)) (Balance!104 1 0) (Balance!104 0 1)))))

(assert (=> b!7457 d!5901))

(declare-fun d!5903 () Bool)

(assert (=> d!5903 (= trivial!1 true)))

(assert (=> b!7457 d!5903))

(assert (=> b!7461 d!5897))

(assert (=> b!7461 d!5895))

(declare-fun d!5905 () Bool)

(declare-fun c!2638 () Bool)

(assert (=> d!5905 (= c!2638 (and (is-Cons!165 (map!152 xs!372 lambda!1386)) (is-Nil!166 (tail!395 (map!152 xs!372 lambda!1386)))))))

(declare-fun e!4315 () Balance!103)

(assert (=> d!5905 (= (foldRight1!31 (map!152 xs!372 lambda!1386) lambda!1387) e!4315)))

(declare-fun b!7487 () Bool)

(assert (=> b!7487 (= e!4315 (head!383 (map!152 xs!372 lambda!1386)))))

(declare-fun b!7488 () Bool)

(assert (=> b!7488 (= e!4315 (dynLambda!157 lambda!1387 (head!383 (map!152 xs!372 lambda!1386)) (foldRight1!31 (tail!395 (map!152 xs!372 lambda!1386)) lambda!1387)))))

(assert (= (and d!5905 c!2638) b!7487))

(assert (= (and d!5905 (not c!2638)) b!7488))

(declare-fun b_lambda!3639 () Bool)

(assert (=> (not b_lambda!3639) (not b!7488)))

(declare-fun m!10351 () Bool)

(assert (=> b!7488 m!10351))

(assert (=> b!7488 m!10351))

(declare-fun m!10353 () Bool)

(assert (=> b!7488 m!10353))

(assert (=> b!7461 d!5905))

(assert (=> b!7461 d!5893))

(assert (=> b!7462 d!5901))

(assert (=> b!7462 d!5903))

(assert (=> bs!1698 d!5893))

(assert (=> bs!1698 d!5895))

(assert (=> bs!1698 d!5897))

(declare-fun b_lambda!3641 () Bool)

(assert (= b_lambda!3631 (or (and b!7456 b_free!505 (= (x!4060 thiss!1123) (y!468 that!301))) (and b!7455 b_free!513) (and b!7457 (= lambda!1388 (y!468 that!301))) (and b!7456 b_free!507 (= (y!468 thiss!1123) (y!468 that!301))) (and b!7455 b_free!511 (= (x!4060 that!301) (y!468 that!301))) (and b!7457 (= lambda!1389 (y!468 that!301))) (and b!7462 (= lambda!1391 (y!468 that!301))) b_lambda!3641)))

(declare-fun bs!1702 () Bool)

(declare-fun d!5907 () Bool)

(assert (= bs!1702 (and d!5907 b!7457)))

(assert (=> bs!1702 (= (dynLambda!155 lambda!1388) (foldRight1!31 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166)) lambda!1387))))

(assert (=> bs!1702 m!10319))

(assert (=> bs!1702 m!10319))

(assert (=> bs!1702 m!10323))

(assert (=> bs!1702 m!10323))

(assert (=> bs!1702 m!10325))

(assert (=> (and b!7457 (= lambda!1388 (y!468 that!301)) d!5891) d!5907))

(declare-fun bs!1703 () Bool)

(declare-fun d!5909 () Bool)

(assert (= bs!1703 (and d!5909 b!7457)))

(assert (=> bs!1703 (= (dynLambda!155 lambda!1389) (++!3 (fromParenthesis!0 (head!382 xs!372)) (Balance!104 0 0)))))

(assert (=> (and b!7457 (= lambda!1389 (y!468 that!301)) d!5891) d!5909))

(declare-fun bs!1704 () Bool)

(declare-fun d!5911 () Bool)

(assert (= bs!1704 (and d!5911 b!7462)))

(assert (=> bs!1704 (= (dynLambda!155 lambda!1391) (fromParenthesis!0 (head!382 xs!372)))))

(assert (=> (and b!7462 (= lambda!1391 (y!468 that!301)) d!5891) d!5911))

(declare-fun b_lambda!3643 () Bool)

(assert (= b_lambda!3635 (or b!7461 b_lambda!3643)))

(declare-fun bs!1705 () Bool)

(declare-fun d!5913 () Bool)

(assert (= bs!1705 (and d!5913 b!7461)))

(assert (=> bs!1705 (= (dynLambda!157 lambda!1387 (head!383 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166))) (foldRight1!31 (tail!395 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166))) lambda!1387)) (++!3 (head!383 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166))) (foldRight1!31 (tail!395 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166))) lambda!1387)))))

(assert (=> bs!1705 m!10339))

(declare-fun m!10355 () Bool)

(assert (=> bs!1705 m!10355))

(assert (=> b!7474 d!5913))

(declare-fun b_lambda!3645 () Bool)

(assert (= b_lambda!3625 (or (and b!7456 b_free!507) (and b!7455 b_free!513 (= (y!468 that!301) (y!468 thiss!1123))) (and b!7457 (= lambda!1388 (y!468 thiss!1123))) (and b!7456 b_free!505 (= (x!4060 thiss!1123) (y!468 thiss!1123))) (and b!7455 b_free!511 (= (x!4060 that!301) (y!468 thiss!1123))) (and b!7457 (= lambda!1389 (y!468 thiss!1123))) (and b!7462 (= lambda!1391 (y!468 thiss!1123))) b_lambda!3645)))

(assert (=> (and b!7457 (= lambda!1388 (y!468 thiss!1123)) d!5889) d!5881))

(assert (=> (and b!7457 (= lambda!1389 (y!468 thiss!1123)) d!5889) d!5883))

(assert (=> (and b!7462 (= lambda!1391 (y!468 thiss!1123)) d!5889) d!5885))

(declare-fun b_lambda!3647 () Bool)

(assert (= b_lambda!3633 (or (and b!7457 (= lambda!1390 (evidence!107 that!301))) (and b!7456 b_free!509 (= (evidence!107 thiss!1123) (evidence!107 that!301))) (and b!7455 b_free!515) b_lambda!3647)))

(declare-fun bs!1706 () Bool)

(declare-fun d!5915 () Bool)

(assert (= bs!1706 (and d!5915 b!7457)))

(assert (=> bs!1706 (= (dynLambda!156 lambda!1390) trivial!1)))

(assert (=> (and b!7457 (= lambda!1390 (evidence!107 that!301)) b!7468) d!5915))

(declare-fun b_lambda!3649 () Bool)

(assert (= b_lambda!3637 (or b!7461 b_lambda!3649)))

(declare-fun bs!1707 () Bool)

(declare-fun d!5917 () Bool)

(assert (= bs!1707 (and d!5917 b!7461)))

(assert (=> bs!1707 (= (dynLambda!158 lambda!1386 (head!382 xs!372)) (fromParenthesis!0 (head!382 xs!372)))))

(assert (=> bs!1707 m!10307))

(assert (=> b!7486 d!5917))

(declare-fun b_lambda!3651 () Bool)

(assert (= b_lambda!3629 (or (and b!7462 (= lambda!1391 (x!4060 that!301))) (and b!7455 b_free!513 (= (y!468 that!301) (x!4060 that!301))) (and b!7456 b_free!505 (= (x!4060 thiss!1123) (x!4060 that!301))) (and b!7455 b_free!511) (and b!7456 b_free!507 (= (y!468 thiss!1123) (x!4060 that!301))) (and b!7457 (= lambda!1389 (x!4060 that!301))) (and b!7457 (= lambda!1388 (x!4060 that!301))) b_lambda!3651)))

(assert (=> (and b!7457 (= lambda!1389 (x!4060 that!301)) d!5891) d!5875))

(assert (=> (and b!7462 (= lambda!1391 (x!4060 that!301)) d!5891) d!5877))

(assert (=> (and b!7457 (= lambda!1388 (x!4060 that!301)) d!5891) d!5879))

(declare-fun b_lambda!3653 () Bool)

(assert (= b_lambda!3627 (or (and b!7457 (= lambda!1390 (evidence!107 thiss!1123))) (and b!7456 b_free!509) (and b!7455 b_free!515 (= (evidence!107 that!301) (evidence!107 thiss!1123))) b_lambda!3653)))

(assert (=> (and b!7457 (= lambda!1390 (evidence!107 thiss!1123)) b!7467) d!5873))

(declare-fun b_lambda!3655 () Bool)

(assert (= b_lambda!3639 (or b!7461 b_lambda!3655)))

(declare-fun bs!1708 () Bool)

(declare-fun d!5919 () Bool)

(assert (= bs!1708 (and d!5919 b!7461)))

(assert (=> bs!1708 (= (dynLambda!157 lambda!1387 (head!383 (map!152 xs!372 lambda!1386)) (foldRight1!31 (tail!395 (map!152 xs!372 lambda!1386)) lambda!1387)) (++!3 (head!383 (map!152 xs!372 lambda!1386)) (foldRight1!31 (tail!395 (map!152 xs!372 lambda!1386)) lambda!1387)))))

(assert (=> bs!1708 m!10351))

(declare-fun m!10357 () Bool)

(assert (=> bs!1708 m!10357))

(assert (=> b!7488 d!5919))

(declare-fun b_lambda!3657 () Bool)

(assert (= b_lambda!3623 (or (and b!7456 b_free!507 (= (y!468 thiss!1123) (x!4060 thiss!1123))) (and b!7462 (= lambda!1391 (x!4060 thiss!1123))) (and b!7455 b_free!513 (= (y!468 that!301) (x!4060 thiss!1123))) (and b!7457 (= lambda!1389 (x!4060 thiss!1123))) (and b!7455 b_free!511 (= (x!4060 that!301) (x!4060 thiss!1123))) (and b!7457 (= lambda!1388 (x!4060 thiss!1123))) (and b!7456 b_free!505) b_lambda!3657)))

(declare-fun bs!1709 () Bool)

(declare-fun d!5921 () Bool)

(assert (= bs!1709 (and d!5921 b!7457)))

(assert (=> bs!1709 (= (dynLambda!155 lambda!1388) (foldRight1!31 (append!64 (map!152 xs!372 lambda!1386) (Cons!165 (Balance!104 0 0) Nil!166)) lambda!1387))))

(assert (=> bs!1709 m!10319))

(assert (=> bs!1709 m!10319))

(assert (=> bs!1709 m!10323))

(assert (=> bs!1709 m!10323))

(assert (=> bs!1709 m!10325))

(assert (=> (and b!7457 (= lambda!1388 (x!4060 thiss!1123)) d!5889) d!5921))

(declare-fun bs!1710 () Bool)

(declare-fun d!5923 () Bool)

(assert (= bs!1710 (and d!5923 b!7462)))

(assert (=> bs!1710 (= (dynLambda!155 lambda!1391) (fromParenthesis!0 (head!382 xs!372)))))

(assert (=> (and b!7462 (= lambda!1391 (x!4060 thiss!1123)) d!5889) d!5923))

(declare-fun bs!1711 () Bool)

(declare-fun d!5925 () Bool)

(assert (= bs!1711 (and d!5925 b!7457)))

(assert (=> bs!1711 (= (dynLambda!155 lambda!1389) (++!3 (fromParenthesis!0 (head!382 xs!372)) (Balance!104 0 0)))))

(assert (=> (and b!7457 (= lambda!1389 (x!4060 thiss!1123)) d!5889) d!5925))

(push 1)

(assert (not b_next!1097))

(assert (not d!5899))

(assert (not bs!1708))

(assert (not b_lambda!3643))

(assert (not bs!1707))

(assert (not b_lambda!3649))

(assert (not b_lambda!3645))

(assert b_and!2239)

(assert b_and!2241)

(assert (not b_lambda!3641))

(assert (not b_next!1089))

(assert (not b_next!1095))

(assert b_and!2233)

(assert (not b_lambda!3655))

(assert b_and!2243)

(assert (not bs!1709))

(assert (not b_lambda!3653))

(assert (not b_lambda!3621))

(assert (not b!7480))

(assert (not b!7474))

(assert (not b_lambda!3647))

(assert (not b!7488))

(assert (not b!7486))

(assert (not b_lambda!3619))

(assert (not b_lambda!3657))

(assert (not bs!1705))

(assert b_and!2235)

(assert (not b_lambda!3617))

(assert b_and!2237)

(assert (not b_next!1093))

(assert (not b_lambda!3651))

(assert (not b_next!1099))

(assert (not bs!1702))

(assert (not b_next!1091))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1097))

(assert b_and!2239)

(assert b_and!2241)

(assert (not b_next!1089))

(assert (not b_next!1095))

(assert b_and!2233)

(assert b_and!2243)

(assert b_and!2235)

(assert b_and!2237)

(assert (not b_next!1093))

(assert (not b_next!1099))

(assert (not b_next!1091))

(check-sat)

(pop 1)

