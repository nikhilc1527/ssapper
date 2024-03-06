; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1382 () Bool)

(assert start!1382)

(declare-fun b_free!469 () Bool)

(declare-fun b_next!997 () Bool)

(assert (=> start!1382 (= b_free!469 (not b_next!997))))

(declare-fun tp!840 () Bool)

(declare-fun b_and!2097 () Bool)

(assert (=> start!1382 (= tp!840 b_and!2097)))

(declare-fun b!7397 () Bool)

(declare-fun b_free!471 () Bool)

(declare-fun b_next!999 () Bool)

(assert (=> b!7397 (= b_free!471 (not b_next!999))))

(declare-fun tp!841 () Bool)

(declare-fun b_and!2099 () Bool)

(assert (=> b!7397 (= tp!841 b_and!2099)))

(declare-fun b_free!473 () Bool)

(declare-fun b_next!1001 () Bool)

(assert (=> b!7397 (= b_free!473 (not b_next!1001))))

(declare-fun tp!836 () Bool)

(declare-fun b_and!2101 () Bool)

(assert (=> b!7397 (= tp!836 b_and!2101)))

(declare-fun b!7399 () Bool)

(declare-fun b_free!475 () Bool)

(declare-fun b_next!1003 () Bool)

(assert (=> b!7399 (= b_free!475 (not b_next!1003))))

(declare-fun tp!839 () Bool)

(declare-fun b_and!2103 () Bool)

(assert (=> b!7399 (= tp!839 b_and!2103)))

(declare-fun b_free!477 () Bool)

(declare-fun b_next!1005 () Bool)

(assert (=> b!7399 (= b_free!477 (not b_next!1005))))

(declare-fun tp!838 () Bool)

(declare-fun b_and!2105 () Bool)

(assert (=> b!7399 (= tp!838 b_and!2105)))

(declare-fun b_free!479 () Bool)

(declare-fun b_next!1007 () Bool)

(assert (=> b!7399 (= b_free!479 (not b_next!1007))))

(declare-fun tp!837 () Bool)

(declare-fun b_and!2107 () Bool)

(assert (=> b!7399 (= tp!837 b_and!2107)))

(declare-fun b!7395 () Bool)

(assert (=> b!7395 true))

(declare-fun b_next!1009 () Bool)

(declare-fun lambda!1358 () Int)

(declare-datatypes () ((Balance!97 (Balance!98 (extraOpen!89 Int) (extraClose!89 Int)))))

(declare-datatypes () ((EqProof!36 (EqProof!37 (x!4027 Int) (y!464 Int)))))

(declare-fun thiss!1137 () EqProof!36)

(assert (=> b!7397 (= b_next!999 (or (and b!7395 (= lambda!1358 (x!4027 thiss!1137))) b_next!1009))))

(declare-fun b_next!1011 () Bool)

(assert (=> b!7397 (= b_next!1001 (or (and b!7395 (= lambda!1358 (y!464 thiss!1137))) b_next!1011))))

(declare-fun b_next!1013 () Bool)

(declare-datatypes () ((EqEvidence!74 (EqEvidence!75 (x!4028 Int) (y!465 Int) (evidence!104 Int)))))

(declare-fun thiss!1123 () EqEvidence!74)

(assert (=> b!7399 (= b_next!1003 (or (and b!7395 (= lambda!1358 (x!4028 thiss!1123))) b_next!1013))))

(declare-fun b_next!1015 () Bool)

(assert (=> b!7399 (= b_next!1005 (or (and b!7395 (= lambda!1358 (y!465 thiss!1123))) b_next!1015))))

(declare-fun m!10247 () Bool)

(assert (=> b!7395 m!10247))

(assert (=> b!7395 m!10247))

(declare-fun m!10249 () Bool)

(assert (=> b!7395 m!10249))

(declare-fun lambda!1359 () Int)

(assert (=> b!7395 (not (= lambda!1359 lambda!1358))))

(assert (=> b!7395 true))

(declare-fun dynLambda!151 (Int) Balance!97)

(assert (=> (and b!7397 b!7395 (= (dynLambda!151 lambda!1359) (dynLambda!151 (x!4027 thiss!1137)))) (= lambda!1359 (x!4027 thiss!1137))))

(assert (=> (and b!7397 b!7395 (= (dynLambda!151 lambda!1359) (dynLambda!151 (y!464 thiss!1137)))) (= lambda!1359 (y!464 thiss!1137))))

(assert (=> (and b!7399 b!7395 (= (dynLambda!151 lambda!1359) (dynLambda!151 (x!4028 thiss!1123)))) (= lambda!1359 (x!4028 thiss!1123))))

(assert (=> (and b!7399 b!7395 (= (dynLambda!151 lambda!1359) (dynLambda!151 (y!465 thiss!1123)))) (= lambda!1359 (y!465 thiss!1123))))

(declare-fun b_next!1017 () Bool)

(assert (=> b!7397 (= b_next!1009 (or (and b!7395 (= lambda!1359 (x!4027 thiss!1137))) b_next!1017))))

(declare-fun b_next!1019 () Bool)

(assert (=> b!7397 (= b_next!1011 (or (and b!7395 (= lambda!1359 (y!464 thiss!1137))) b_next!1019))))

(declare-fun b_next!1021 () Bool)

(assert (=> b!7399 (= b_next!1013 (or (and b!7395 (= lambda!1359 (x!4028 thiss!1123))) b_next!1021))))

(declare-fun b_next!1023 () Bool)

(assert (=> b!7399 (= b_next!1015 (or (and b!7395 (= lambda!1359 (y!465 thiss!1123))) b_next!1023))))

(declare-fun m!10251 () Bool)

(assert (=> b!7395 m!10251))

(declare-fun lambda!1360 () Int)

(declare-fun proof!286 () Int)

(declare-fun dynLambda!152 (Int) Bool)

(assert (=> (and start!1382 b!7395 (= (dynLambda!152 lambda!1360) (dynLambda!152 proof!286))) (= lambda!1360 proof!286)))

(assert (=> (and b!7399 b!7395 (= (dynLambda!152 lambda!1360) (dynLambda!152 (evidence!104 thiss!1123)))) (= lambda!1360 (evidence!104 thiss!1123))))

(declare-fun b_next!1025 () Bool)

(assert (=> start!1382 (= b_next!997 (or (and b!7395 (= lambda!1360 proof!286)) b_next!1025))))

(declare-fun b_next!1027 () Bool)

(assert (=> b!7399 (= b_next!1007 (or (and b!7395 (= lambda!1360 (evidence!104 thiss!1123))) b_next!1027))))

(declare-fun b!7396 () Bool)

(assert (=> b!7396 m!10247))

(declare-fun bs!1671 () Bool)

(assert (= bs!1671 (and b!7396 b!7395)))

(declare-fun lambda!1361 () Int)

(assert (=> bs!1671 (not (= lambda!1361 lambda!1358))))

(declare-datatypes () ((Parenthesis!41 (CloseParenthesis!40) (OpenParenthesis!40))))

(declare-datatypes () ((List!165 (Nil!163) (Cons!162 (head!380 Parenthesis!41) (tail!392 List!165)))))

(declare-fun xs!372 () List!165)

(declare-fun fromParenthesis!0 (Parenthesis!41) Balance!97)

(declare-fun ++!3 (Balance!97 Balance!97) Balance!97)

(assert (=> bs!1671 (= (= (fromParenthesis!0 (head!380 xs!372)) (++!3 (fromParenthesis!0 (head!380 xs!372)) (Balance!98 0 0))) (= lambda!1361 lambda!1359))))

(assert (=> b!7396 true))

(assert (=> (and b!7397 b!7396 (= (dynLambda!151 lambda!1361) (dynLambda!151 (x!4027 thiss!1137)))) (= lambda!1361 (x!4027 thiss!1137))))

(assert (=> (and b!7397 b!7396 (= (dynLambda!151 lambda!1361) (dynLambda!151 (y!464 thiss!1137)))) (= lambda!1361 (y!464 thiss!1137))))

(assert (=> (and b!7399 b!7396 (= (dynLambda!151 lambda!1361) (dynLambda!151 (x!4028 thiss!1123)))) (= lambda!1361 (x!4028 thiss!1123))))

(assert (=> (and b!7399 b!7396 (= (dynLambda!151 lambda!1361) (dynLambda!151 (y!465 thiss!1123)))) (= lambda!1361 (y!465 thiss!1123))))

(declare-fun b_next!1029 () Bool)

(assert (=> b!7397 (= b_next!1017 (or (and b!7396 (= lambda!1361 (x!4027 thiss!1137))) b_next!1029))))

(declare-fun b_next!1031 () Bool)

(assert (=> b!7397 (= b_next!1019 (or (and b!7396 (= lambda!1361 (y!464 thiss!1137))) b_next!1031))))

(declare-fun b_next!1033 () Bool)

(assert (=> b!7399 (= b_next!1021 (or (and b!7396 (= lambda!1361 (x!4028 thiss!1123))) b_next!1033))))

(declare-fun b_next!1035 () Bool)

(assert (=> b!7399 (= b_next!1023 (or (and b!7396 (= lambda!1361 (y!465 thiss!1123))) b_next!1035))))

(declare-fun res!2154 () Bool)

(declare-fun e!4265 () Bool)

(assert (=> start!1382 (=> (not res!2154) (not e!4265))))

(declare-fun isEmpty!142 (List!165) Bool)

(assert (=> start!1382 (= res!2154 (not (isEmpty!142 xs!372)))))

(assert (=> start!1382 e!4265))

(assert (=> start!1382 true))

(assert (=> start!1382 tp!840))

(declare-fun e!4266 () Bool)

(declare-fun inv!259 (EqProof!36) Bool)

(assert (=> start!1382 (and (inv!259 thiss!1137) e!4266)))

(declare-fun e!4267 () Bool)

(declare-fun inv!260 (EqEvidence!74) Bool)

(assert (=> start!1382 (and (inv!260 thiss!1123) e!4267)))

(declare-fun b!7394 () Bool)

(declare-fun res!2153 () Bool)

(assert (=> b!7394 (=> (not res!2153) (not e!4265))))

(assert (=> b!7394 (= res!2153 (= proof!286 lambda!1360))))

(declare-fun res!2150 () Bool)

(assert (=> b!7395 (=> (not res!2150) (not e!4265))))

(assert (=> b!7395 (= res!2150 (= thiss!1123 (EqEvidence!75 lambda!1358 lambda!1359 lambda!1360)))))

(declare-fun res!2149 () Bool)

(assert (=> b!7396 (=> (not res!2149) (not e!4265))))

(assert (=> b!7396 (= res!2149 (= thiss!1137 (EqProof!37 lambda!1361 lambda!1361)))))

(assert (=> b!7397 (= e!4266 (and tp!841 tp!836))))

(declare-fun b!7398 () Bool)

(assert (=> b!7398 (= e!4265 (not (dynLambda!152 proof!286)))))

(assert (=> b!7399 (= e!4267 (and tp!839 tp!838 tp!837))))

(declare-fun b!7400 () Bool)

(declare-fun res!2152 () Bool)

(assert (=> b!7400 (=> (not res!2152) (not e!4265))))

(declare-datatypes () ((ProofOps!68 (ProofOps!69 (prop!144 Bool)))))

(declare-fun thiss!1106 () ProofOps!68)

(declare-fun lambda!1357 () Int)

(declare-fun lambda!1356 () Int)

(declare-datatypes () ((List!166 (Nil!164) (Cons!163 (head!381 Balance!97) (tail!393 List!166)))))

(declare-fun foldRight1!30 (List!166 Int) Balance!97)

(declare-fun append!63 (List!166 List!166) List!166)

(declare-fun map!151 (List!165 Int) List!166)

(assert (=> b!7400 (= res!2152 (= thiss!1106 (ProofOps!69 (= (foldRight1!30 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164)) lambda!1357) (foldRight1!30 (map!151 xs!372 lambda!1356) lambda!1357)))))))

(declare-fun b!7401 () Bool)

(declare-fun res!2151 () Bool)

(assert (=> b!7401 (=> (not res!2151) (not e!4265))))

(assert (=> b!7401 (= res!2151 (and (is-Cons!162 xs!372) (is-Nil!163 (tail!392 xs!372))))))

(assert (= (and start!1382 res!2154) b!7400))

(assert (= (and b!7400 res!2152) b!7401))

(assert (= (and b!7401 res!2151) b!7395))

(assert (= (and b!7395 res!2150) b!7396))

(assert (= (and b!7396 res!2149) b!7394))

(assert (= (and b!7394 res!2153) b!7398))

(assert (= start!1382 b!7397))

(assert (= start!1382 b!7399))

(declare-fun b_lambda!3575 () Bool)

(assert (=> (not b_lambda!3575) (not b!7398)))

(declare-fun t!1491 () Bool)

(declare-fun tb!1151 () Bool)

(assert (=> (and start!1382 (= proof!286 proof!286) t!1491) tb!1151))

(declare-fun result!1191 () Bool)

(assert (=> tb!1151 (= result!1191 true)))

(assert (=> b!7398 t!1491))

(declare-fun b_and!2109 () Bool)

(assert (= b_and!2097 (and (=> t!1491 result!1191) b_and!2109)))

(declare-fun t!1493 () Bool)

(declare-fun tb!1153 () Bool)

(assert (=> (and b!7399 (= (evidence!104 thiss!1123) proof!286) t!1493) tb!1153))

(declare-fun result!1193 () Bool)

(assert (=> tb!1153 (= result!1193 true)))

(assert (=> b!7398 t!1493))

(declare-fun b_and!2111 () Bool)

(assert (= b_and!2107 (and (=> t!1493 result!1193) b_and!2111)))

(declare-fun m!10253 () Bool)

(assert (=> start!1382 m!10253))

(declare-fun m!10255 () Bool)

(assert (=> start!1382 m!10255))

(declare-fun m!10257 () Bool)

(assert (=> start!1382 m!10257))

(declare-fun m!10259 () Bool)

(assert (=> b!7398 m!10259))

(declare-fun m!10261 () Bool)

(assert (=> b!7400 m!10261))

(assert (=> b!7400 m!10261))

(declare-fun m!10263 () Bool)

(assert (=> b!7400 m!10263))

(assert (=> b!7400 m!10261))

(declare-fun m!10265 () Bool)

(assert (=> b!7400 m!10265))

(declare-fun m!10267 () Bool)

(assert (=> b!7400 m!10267))

(assert (=> b!7400 m!10261))

(assert (=> b!7400 m!10265))

(push 1)

(assert (not b_next!1029))

(assert (not b!7396))

(assert b_and!2111)

(assert (not b_next!1035))

(assert b_and!2109)

(assert (not b_lambda!3575))

(assert (not b_next!1025))

(assert (not b_next!1033))

(assert (not b!7395))

(assert (not b!7394))

(assert (not b_next!1027))

(assert b_and!2101)

(assert (not start!1382))

(assert b_and!2103)

(assert (not b!7400))

(assert (not b_next!1031))

(assert b_and!2105)

(assert b_and!2099)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1029))

(assert b_and!2111)

(assert (not b_next!1035))

(assert b_and!2109)

(assert (not b_next!1025))

(assert (not b_next!1033))

(assert (not b_next!1027))

(assert b_and!2101)

(assert b_and!2103)

(assert (not b_next!1031))

(assert b_and!2105)

(assert b_and!2099)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3577 () Bool)

(assert (= b_lambda!3575 (or (and b!7395 (= lambda!1360 proof!286)) (and start!1382 b_free!469) (and b!7399 b_free!479 (= (evidence!104 thiss!1123) proof!286)) b_lambda!3577)))

(declare-fun bs!1672 () Bool)

(declare-fun d!5819 () Bool)

(assert (= bs!1672 (and d!5819 b!7395)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!1672 (= (dynLambda!152 lambda!1360) trivial!1)))

(assert (=> (and b!7395 (= lambda!1360 proof!286) b!7398) d!5819))

(push 1)

(assert (not b_next!1029))

(assert (not b!7396))

(assert b_and!2111)

(assert (not b_next!1035))

(assert b_and!2109)

(assert (not b_next!1025))

(assert (not b_lambda!3577))

(assert (not b_next!1033))

(assert (not b!7395))

(assert (not b!7394))

(assert (not b_next!1027))

(assert b_and!2101)

(assert (not start!1382))

(assert b_and!2103)

(assert (not b!7400))

(assert (not b_next!1031))

(assert b_and!2105)

(assert b_and!2099)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1029))

(assert b_and!2111)

(assert (not b_next!1035))

(assert b_and!2109)

(assert (not b_next!1025))

(assert (not b_next!1033))

(assert (not b_next!1027))

(assert b_and!2101)

(assert b_and!2103)

(assert (not b_next!1031))

(assert b_and!2105)

(assert b_and!2099)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5821 () Bool)

(assert (=> d!5821 (= (isEmpty!142 xs!372) (is-Nil!163 xs!372))))

(assert (=> start!1382 d!5821))

(declare-fun d!5823 () Bool)

(assert (=> d!5823 (= (inv!259 thiss!1137) (= (dynLambda!151 (x!4027 thiss!1137)) (dynLambda!151 (y!464 thiss!1137))))))

(declare-fun b_lambda!3579 () Bool)

(assert (=> (not b_lambda!3579) (not d!5823)))

(declare-fun t!1495 () Bool)

(declare-fun tb!1155 () Bool)

(assert (=> (and b!7397 (= (x!4027 thiss!1137) (x!4027 thiss!1137)) t!1495) tb!1155))

(declare-fun result!1195 () Bool)

(assert (=> tb!1155 (= result!1195 true)))

(assert (=> d!5823 t!1495))

(declare-fun b_and!2113 () Bool)

(assert (= b_and!2099 (and (=> t!1495 result!1195) b_and!2113)))

(declare-fun t!1497 () Bool)

(declare-fun tb!1157 () Bool)

(assert (=> (and b!7397 (= (y!464 thiss!1137) (x!4027 thiss!1137)) t!1497) tb!1157))

(declare-fun result!1197 () Bool)

(assert (=> tb!1157 (= result!1197 true)))

(assert (=> d!5823 t!1497))

(declare-fun b_and!2115 () Bool)

(assert (= b_and!2101 (and (=> t!1497 result!1197) b_and!2115)))

(declare-fun tb!1159 () Bool)

(declare-fun t!1499 () Bool)

(assert (=> (and b!7399 (= (x!4028 thiss!1123) (x!4027 thiss!1137)) t!1499) tb!1159))

(declare-fun result!1199 () Bool)

(assert (=> tb!1159 (= result!1199 true)))

(assert (=> d!5823 t!1499))

(declare-fun b_and!2117 () Bool)

(assert (= b_and!2103 (and (=> t!1499 result!1199) b_and!2117)))

(declare-fun t!1501 () Bool)

(declare-fun tb!1161 () Bool)

(assert (=> (and b!7399 (= (y!465 thiss!1123) (x!4027 thiss!1137)) t!1501) tb!1161))

(declare-fun result!1201 () Bool)

(assert (=> tb!1161 (= result!1201 true)))

(assert (=> d!5823 t!1501))

(declare-fun b_and!2119 () Bool)

(assert (= b_and!2105 (and (=> t!1501 result!1201) b_and!2119)))

(declare-fun b_lambda!3581 () Bool)

(assert (=> (not b_lambda!3581) (not d!5823)))

(declare-fun t!1503 () Bool)

(declare-fun tb!1163 () Bool)

(assert (=> (and b!7397 (= (x!4027 thiss!1137) (y!464 thiss!1137)) t!1503) tb!1163))

(declare-fun result!1203 () Bool)

(assert (=> tb!1163 (= result!1203 true)))

(assert (=> d!5823 t!1503))

(declare-fun b_and!2121 () Bool)

(assert (= b_and!2113 (and (=> t!1503 result!1203) b_and!2121)))

(declare-fun t!1505 () Bool)

(declare-fun tb!1165 () Bool)

(assert (=> (and b!7397 (= (y!464 thiss!1137) (y!464 thiss!1137)) t!1505) tb!1165))

(declare-fun result!1205 () Bool)

(assert (=> tb!1165 (= result!1205 true)))

(assert (=> d!5823 t!1505))

(declare-fun b_and!2123 () Bool)

(assert (= b_and!2115 (and (=> t!1505 result!1205) b_and!2123)))

(declare-fun tb!1167 () Bool)

(declare-fun t!1507 () Bool)

(assert (=> (and b!7399 (= (x!4028 thiss!1123) (y!464 thiss!1137)) t!1507) tb!1167))

(declare-fun result!1207 () Bool)

(assert (=> tb!1167 (= result!1207 true)))

(assert (=> d!5823 t!1507))

(declare-fun b_and!2125 () Bool)

(assert (= b_and!2117 (and (=> t!1507 result!1207) b_and!2125)))

(declare-fun t!1509 () Bool)

(declare-fun tb!1169 () Bool)

(assert (=> (and b!7399 (= (y!465 thiss!1123) (y!464 thiss!1137)) t!1509) tb!1169))

(declare-fun result!1209 () Bool)

(assert (=> tb!1169 (= result!1209 true)))

(assert (=> d!5823 t!1509))

(declare-fun b_and!2127 () Bool)

(assert (= b_and!2119 (and (=> t!1509 result!1209) b_and!2127)))

(declare-fun m!10269 () Bool)

(assert (=> d!5823 m!10269))

(declare-fun m!10271 () Bool)

(assert (=> d!5823 m!10271))

(assert (=> start!1382 d!5823))

(declare-fun d!5825 () Bool)

(declare-fun res!2157 () Bool)

(declare-fun e!4270 () Bool)

(assert (=> d!5825 (=> (not res!2157) (not e!4270))))

(assert (=> d!5825 (= res!2157 (= (dynLambda!151 (x!4028 thiss!1123)) (dynLambda!151 (y!465 thiss!1123))))))

(assert (=> d!5825 (= (inv!260 thiss!1123) e!4270)))

(declare-fun b!7406 () Bool)

(assert (=> b!7406 (= e!4270 (dynLambda!152 (evidence!104 thiss!1123)))))

(assert (= (and d!5825 res!2157) b!7406))

(declare-fun b_lambda!3583 () Bool)

(assert (=> (not b_lambda!3583) (not d!5825)))

(declare-fun t!1511 () Bool)

(declare-fun tb!1171 () Bool)

(assert (=> (and b!7397 (= (x!4027 thiss!1137) (x!4028 thiss!1123)) t!1511) tb!1171))

(declare-fun result!1211 () Bool)

(assert (=> tb!1171 (= result!1211 true)))

(assert (=> d!5825 t!1511))

(declare-fun b_and!2129 () Bool)

(assert (= b_and!2121 (and (=> t!1511 result!1211) b_and!2129)))

(declare-fun tb!1173 () Bool)

(declare-fun t!1513 () Bool)

(assert (=> (and b!7397 (= (y!464 thiss!1137) (x!4028 thiss!1123)) t!1513) tb!1173))

(declare-fun result!1213 () Bool)

(assert (=> tb!1173 (= result!1213 true)))

(assert (=> d!5825 t!1513))

(declare-fun b_and!2131 () Bool)

(assert (= b_and!2123 (and (=> t!1513 result!1213) b_and!2131)))

(declare-fun t!1515 () Bool)

(declare-fun tb!1175 () Bool)

(assert (=> (and b!7399 (= (x!4028 thiss!1123) (x!4028 thiss!1123)) t!1515) tb!1175))

(declare-fun result!1215 () Bool)

(assert (=> tb!1175 (= result!1215 true)))

(assert (=> d!5825 t!1515))

(declare-fun b_and!2133 () Bool)

(assert (= b_and!2125 (and (=> t!1515 result!1215) b_and!2133)))

(declare-fun t!1517 () Bool)

(declare-fun tb!1177 () Bool)

(assert (=> (and b!7399 (= (y!465 thiss!1123) (x!4028 thiss!1123)) t!1517) tb!1177))

(declare-fun result!1217 () Bool)

(assert (=> tb!1177 (= result!1217 true)))

(assert (=> d!5825 t!1517))

(declare-fun b_and!2135 () Bool)

(assert (= b_and!2127 (and (=> t!1517 result!1217) b_and!2135)))

(declare-fun b_lambda!3585 () Bool)

(assert (=> (not b_lambda!3585) (not d!5825)))

(declare-fun t!1519 () Bool)

(declare-fun tb!1179 () Bool)

(assert (=> (and b!7397 (= (x!4027 thiss!1137) (y!465 thiss!1123)) t!1519) tb!1179))

(declare-fun result!1219 () Bool)

(assert (=> tb!1179 (= result!1219 true)))

(assert (=> d!5825 t!1519))

(declare-fun b_and!2137 () Bool)

(assert (= b_and!2129 (and (=> t!1519 result!1219) b_and!2137)))

(declare-fun tb!1181 () Bool)

(declare-fun t!1521 () Bool)

(assert (=> (and b!7397 (= (y!464 thiss!1137) (y!465 thiss!1123)) t!1521) tb!1181))

(declare-fun result!1221 () Bool)

(assert (=> tb!1181 (= result!1221 true)))

(assert (=> d!5825 t!1521))

(declare-fun b_and!2139 () Bool)

(assert (= b_and!2131 (and (=> t!1521 result!1221) b_and!2139)))

(declare-fun t!1523 () Bool)

(declare-fun tb!1183 () Bool)

(assert (=> (and b!7399 (= (x!4028 thiss!1123) (y!465 thiss!1123)) t!1523) tb!1183))

(declare-fun result!1223 () Bool)

(assert (=> tb!1183 (= result!1223 true)))

(assert (=> d!5825 t!1523))

(declare-fun b_and!2141 () Bool)

(assert (= b_and!2133 (and (=> t!1523 result!1223) b_and!2141)))

(declare-fun t!1525 () Bool)

(declare-fun tb!1185 () Bool)

(assert (=> (and b!7399 (= (y!465 thiss!1123) (y!465 thiss!1123)) t!1525) tb!1185))

(declare-fun result!1225 () Bool)

(assert (=> tb!1185 (= result!1225 true)))

(assert (=> d!5825 t!1525))

(declare-fun b_and!2143 () Bool)

(assert (= b_and!2135 (and (=> t!1525 result!1225) b_and!2143)))

(declare-fun b_lambda!3587 () Bool)

(assert (=> (not b_lambda!3587) (not b!7406)))

(declare-fun t!1527 () Bool)

(declare-fun tb!1187 () Bool)

(assert (=> (and start!1382 (= proof!286 (evidence!104 thiss!1123)) t!1527) tb!1187))

(declare-fun result!1227 () Bool)

(assert (=> tb!1187 (= result!1227 true)))

(assert (=> b!7406 t!1527))

(declare-fun b_and!2145 () Bool)

(assert (= b_and!2109 (and (=> t!1527 result!1227) b_and!2145)))

(declare-fun t!1529 () Bool)

(declare-fun tb!1189 () Bool)

(assert (=> (and b!7399 (= (evidence!104 thiss!1123) (evidence!104 thiss!1123)) t!1529) tb!1189))

(declare-fun result!1229 () Bool)

(assert (=> tb!1189 (= result!1229 true)))

(assert (=> b!7406 t!1529))

(declare-fun b_and!2147 () Bool)

(assert (= b_and!2111 (and (=> t!1529 result!1229) b_and!2147)))

(declare-fun m!10273 () Bool)

(assert (=> d!5825 m!10273))

(declare-fun m!10275 () Bool)

(assert (=> d!5825 m!10275))

(declare-fun m!10277 () Bool)

(assert (=> b!7406 m!10277))

(assert (=> start!1382 d!5825))

(declare-fun d!5827 () Bool)

(assert (=> d!5827 (= (fromParenthesis!0 (head!380 xs!372)) (ite (is-OpenParenthesis!40 (head!380 xs!372)) (Balance!98 1 0) (Balance!98 0 1)))))

(assert (=> b!7396 d!5827))

(declare-fun d!5829 () Bool)

(declare-fun c!2621 () Bool)

(assert (=> d!5829 (= c!2621 (is-Nil!163 xs!372))))

(declare-fun e!4273 () List!166)

(assert (=> d!5829 (= (map!151 xs!372 lambda!1356) e!4273)))

(declare-fun b!7411 () Bool)

(assert (=> b!7411 (= e!4273 Nil!164)))

(declare-fun b!7412 () Bool)

(declare-fun dynLambda!153 (Int Parenthesis!41) Balance!97)

(assert (=> b!7412 (= e!4273 (Cons!163 (dynLambda!153 lambda!1356 (head!380 xs!372)) (map!151 (tail!392 xs!372) lambda!1356)))))

(assert (= (and d!5829 c!2621) b!7411))

(assert (= (and d!5829 (not c!2621)) b!7412))

(declare-fun b_lambda!3589 () Bool)

(assert (=> (not b_lambda!3589) (not b!7412)))

(declare-fun m!10279 () Bool)

(assert (=> b!7412 m!10279))

(declare-fun m!10281 () Bool)

(assert (=> b!7412 m!10281))

(assert (=> b!7400 d!5829))

(declare-fun d!5831 () Bool)

(declare-fun c!2624 () Bool)

(assert (=> d!5831 (= c!2624 (is-Nil!164 (map!151 xs!372 lambda!1356)))))

(declare-fun e!4276 () List!166)

(assert (=> d!5831 (= (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164)) e!4276)))

(declare-fun b!7417 () Bool)

(assert (=> b!7417 (= e!4276 (Cons!163 (Balance!98 0 0) Nil!164))))

(declare-fun b!7418 () Bool)

(assert (=> b!7418 (= e!4276 (Cons!163 (head!381 (map!151 xs!372 lambda!1356)) (append!63 (tail!393 (map!151 xs!372 lambda!1356)) (Cons!163 (Balance!98 0 0) Nil!164))))))

(assert (= (and d!5831 c!2624) b!7417))

(assert (= (and d!5831 (not c!2624)) b!7418))

(declare-fun m!10283 () Bool)

(assert (=> b!7418 m!10283))

(assert (=> b!7400 d!5831))

(declare-fun d!5833 () Bool)

(declare-fun c!2627 () Bool)

(assert (=> d!5833 (= c!2627 (and (is-Cons!163 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164))) (is-Nil!164 (tail!393 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164))))))))

(declare-fun e!4279 () Balance!97)

(assert (=> d!5833 (= (foldRight1!30 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164)) lambda!1357) e!4279)))

(declare-fun b!7423 () Bool)

(assert (=> b!7423 (= e!4279 (head!381 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164))))))

(declare-fun b!7424 () Bool)

(declare-fun dynLambda!154 (Int Balance!97 Balance!97) Balance!97)

(assert (=> b!7424 (= e!4279 (dynLambda!154 lambda!1357 (head!381 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164))) (foldRight1!30 (tail!393 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164))) lambda!1357)))))

(assert (= (and d!5833 c!2627) b!7423))

(assert (= (and d!5833 (not c!2627)) b!7424))

(declare-fun b_lambda!3591 () Bool)

(assert (=> (not b_lambda!3591) (not b!7424)))

(declare-fun m!10285 () Bool)

(assert (=> b!7424 m!10285))

(assert (=> b!7424 m!10285))

(declare-fun m!10287 () Bool)

(assert (=> b!7424 m!10287))

(assert (=> b!7400 d!5833))

(declare-fun d!5835 () Bool)

(declare-fun c!2628 () Bool)

(assert (=> d!5835 (= c!2628 (and (is-Cons!163 (map!151 xs!372 lambda!1356)) (is-Nil!164 (tail!393 (map!151 xs!372 lambda!1356)))))))

(declare-fun e!4280 () Balance!97)

(assert (=> d!5835 (= (foldRight1!30 (map!151 xs!372 lambda!1356) lambda!1357) e!4280)))

(declare-fun b!7425 () Bool)

(assert (=> b!7425 (= e!4280 (head!381 (map!151 xs!372 lambda!1356)))))

(declare-fun b!7426 () Bool)

(assert (=> b!7426 (= e!4280 (dynLambda!154 lambda!1357 (head!381 (map!151 xs!372 lambda!1356)) (foldRight1!30 (tail!393 (map!151 xs!372 lambda!1356)) lambda!1357)))))

(assert (= (and d!5835 c!2628) b!7425))

(assert (= (and d!5835 (not c!2628)) b!7426))

(declare-fun b_lambda!3593 () Bool)

(assert (=> (not b_lambda!3593) (not b!7426)))

(declare-fun m!10289 () Bool)

(assert (=> b!7426 m!10289))

(assert (=> b!7426 m!10289))

(declare-fun m!10291 () Bool)

(assert (=> b!7426 m!10291))

(assert (=> b!7400 d!5835))

(declare-fun d!5837 () Bool)

(declare-fun lt!1431 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!5837 (= lt!1431 (min!4 (extraOpen!89 (fromParenthesis!0 (head!380 xs!372))) (extraClose!89 (Balance!98 0 0))))))

(assert (=> d!5837 (= (++!3 (fromParenthesis!0 (head!380 xs!372)) (Balance!98 0 0)) (Balance!98 (- (+ (extraOpen!89 (fromParenthesis!0 (head!380 xs!372))) (extraOpen!89 (Balance!98 0 0))) lt!1431) (- (+ (extraClose!89 (fromParenthesis!0 (head!380 xs!372))) (extraClose!89 (Balance!98 0 0))) lt!1431)))))

(declare-fun bs!1673 () Bool)

(assert (= bs!1673 d!5837))

(declare-fun m!10293 () Bool)

(assert (=> bs!1673 m!10293))

(assert (=> b!7395 d!5837))

(assert (=> b!7395 d!5827))

(declare-fun d!5839 () Bool)

(assert (=> d!5839 (= trivial!1 true)))

(assert (=> b!7395 d!5839))

(assert (=> b!7394 d!5839))

(declare-fun b_lambda!3595 () Bool)

(assert (= b_lambda!3587 (or (and b!7395 (= lambda!1360 (evidence!104 thiss!1123))) (and start!1382 b_free!469 (= proof!286 (evidence!104 thiss!1123))) (and b!7399 b_free!479) b_lambda!3595)))

(declare-fun bs!1674 () Bool)

(declare-fun d!5841 () Bool)

(assert (= bs!1674 (and d!5841 b!7395)))

(assert (=> bs!1674 (= (dynLambda!152 lambda!1360) trivial!1)))

(assert (=> (and b!7395 (= lambda!1360 (evidence!104 thiss!1123)) b!7406) d!5841))

(declare-fun b_lambda!3597 () Bool)

(assert (= b_lambda!3583 (or (and b!7397 b_free!473 (= (y!464 thiss!1137) (x!4028 thiss!1123))) (and b!7397 b_free!471 (= (x!4027 thiss!1137) (x!4028 thiss!1123))) (and b!7396 (= lambda!1361 (x!4028 thiss!1123))) (and b!7399 b_free!475) (and b!7399 b_free!477 (= (y!465 thiss!1123) (x!4028 thiss!1123))) (and b!7395 (= lambda!1359 (x!4028 thiss!1123))) (and b!7395 (= lambda!1358 (x!4028 thiss!1123))) b_lambda!3597)))

(declare-fun bs!1675 () Bool)

(declare-fun d!5843 () Bool)

(assert (= bs!1675 (and d!5843 b!7395)))

(assert (=> bs!1675 (= (dynLambda!151 lambda!1358) (foldRight1!30 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164)) lambda!1357))))

(assert (=> bs!1675 m!10261))

(assert (=> bs!1675 m!10261))

(assert (=> bs!1675 m!10265))

(assert (=> bs!1675 m!10265))

(assert (=> bs!1675 m!10267))

(assert (=> (and b!7395 (= lambda!1358 (x!4028 thiss!1123)) d!5825) d!5843))

(declare-fun bs!1676 () Bool)

(declare-fun d!5845 () Bool)

(assert (= bs!1676 (and d!5845 b!7395)))

(assert (=> bs!1676 (= (dynLambda!151 lambda!1359) (++!3 (fromParenthesis!0 (head!380 xs!372)) (Balance!98 0 0)))))

(assert (=> (and b!7395 (= lambda!1359 (x!4028 thiss!1123)) d!5825) d!5845))

(declare-fun bs!1677 () Bool)

(declare-fun d!5847 () Bool)

(assert (= bs!1677 (and d!5847 b!7396)))

(assert (=> bs!1677 (= (dynLambda!151 lambda!1361) (fromParenthesis!0 (head!380 xs!372)))))

(assert (=> (and b!7396 (= lambda!1361 (x!4028 thiss!1123)) d!5825) d!5847))

(declare-fun b_lambda!3599 () Bool)

(assert (= b_lambda!3591 (or b!7400 b_lambda!3599)))

(declare-fun bs!1678 () Bool)

(declare-fun d!5849 () Bool)

(assert (= bs!1678 (and d!5849 b!7400)))

(assert (=> bs!1678 (= (dynLambda!154 lambda!1357 (head!381 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164))) (foldRight1!30 (tail!393 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164))) lambda!1357)) (++!3 (head!381 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164))) (foldRight1!30 (tail!393 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164))) lambda!1357)))))

(assert (=> bs!1678 m!10285))

(declare-fun m!10295 () Bool)

(assert (=> bs!1678 m!10295))

(assert (=> b!7424 d!5849))

(declare-fun b_lambda!3601 () Bool)

(assert (= b_lambda!3593 (or b!7400 b_lambda!3601)))

(declare-fun bs!1679 () Bool)

(declare-fun d!5851 () Bool)

(assert (= bs!1679 (and d!5851 b!7400)))

(assert (=> bs!1679 (= (dynLambda!154 lambda!1357 (head!381 (map!151 xs!372 lambda!1356)) (foldRight1!30 (tail!393 (map!151 xs!372 lambda!1356)) lambda!1357)) (++!3 (head!381 (map!151 xs!372 lambda!1356)) (foldRight1!30 (tail!393 (map!151 xs!372 lambda!1356)) lambda!1357)))))

(assert (=> bs!1679 m!10289))

(declare-fun m!10297 () Bool)

(assert (=> bs!1679 m!10297))

(assert (=> b!7426 d!5851))

(declare-fun b_lambda!3603 () Bool)

(assert (= b_lambda!3585 (or (and b!7397 b_free!471 (= (x!4027 thiss!1137) (y!465 thiss!1123))) (and b!7395 (= lambda!1359 (y!465 thiss!1123))) (and b!7399 b_free!475 (= (x!4028 thiss!1123) (y!465 thiss!1123))) (and b!7397 b_free!473 (= (y!464 thiss!1137) (y!465 thiss!1123))) (and b!7395 (= lambda!1358 (y!465 thiss!1123))) (and b!7399 b_free!477) (and b!7396 (= lambda!1361 (y!465 thiss!1123))) b_lambda!3603)))

(declare-fun bs!1680 () Bool)

(declare-fun d!5853 () Bool)

(assert (= bs!1680 (and d!5853 b!7396)))

(assert (=> bs!1680 (= (dynLambda!151 lambda!1361) (fromParenthesis!0 (head!380 xs!372)))))

(assert (=> (and b!7396 (= lambda!1361 (y!465 thiss!1123)) d!5825) d!5853))

(declare-fun bs!1681 () Bool)

(declare-fun d!5855 () Bool)

(assert (= bs!1681 (and d!5855 b!7395)))

(assert (=> bs!1681 (= (dynLambda!151 lambda!1358) (foldRight1!30 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164)) lambda!1357))))

(assert (=> bs!1681 m!10261))

(assert (=> bs!1681 m!10261))

(assert (=> bs!1681 m!10265))

(assert (=> bs!1681 m!10265))

(assert (=> bs!1681 m!10267))

(assert (=> (and b!7395 (= lambda!1358 (y!465 thiss!1123)) d!5825) d!5855))

(declare-fun bs!1682 () Bool)

(declare-fun d!5857 () Bool)

(assert (= bs!1682 (and d!5857 b!7395)))

(assert (=> bs!1682 (= (dynLambda!151 lambda!1359) (++!3 (fromParenthesis!0 (head!380 xs!372)) (Balance!98 0 0)))))

(assert (=> (and b!7395 (= lambda!1359 (y!465 thiss!1123)) d!5825) d!5857))

(declare-fun b_lambda!3605 () Bool)

(assert (= b_lambda!3581 (or (and b!7395 (= lambda!1358 (y!464 thiss!1137))) (and b!7395 (= lambda!1359 (y!464 thiss!1137))) (and b!7397 b_free!473) (and b!7399 b_free!475 (= (x!4028 thiss!1123) (y!464 thiss!1137))) (and b!7396 (= lambda!1361 (y!464 thiss!1137))) (and b!7397 b_free!471 (= (x!4027 thiss!1137) (y!464 thiss!1137))) (and b!7399 b_free!477 (= (y!465 thiss!1123) (y!464 thiss!1137))) b_lambda!3605)))

(declare-fun bs!1683 () Bool)

(declare-fun d!5859 () Bool)

(assert (= bs!1683 (and d!5859 b!7395)))

(assert (=> bs!1683 (= (dynLambda!151 lambda!1358) (foldRight1!30 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164)) lambda!1357))))

(assert (=> bs!1683 m!10261))

(assert (=> bs!1683 m!10261))

(assert (=> bs!1683 m!10265))

(assert (=> bs!1683 m!10265))

(assert (=> bs!1683 m!10267))

(assert (=> (and b!7395 (= lambda!1358 (y!464 thiss!1137)) d!5823) d!5859))

(declare-fun bs!1684 () Bool)

(declare-fun d!5861 () Bool)

(assert (= bs!1684 (and d!5861 b!7395)))

(assert (=> bs!1684 (= (dynLambda!151 lambda!1359) (++!3 (fromParenthesis!0 (head!380 xs!372)) (Balance!98 0 0)))))

(assert (=> (and b!7395 (= lambda!1359 (y!464 thiss!1137)) d!5823) d!5861))

(declare-fun bs!1685 () Bool)

(declare-fun d!5863 () Bool)

(assert (= bs!1685 (and d!5863 b!7396)))

(assert (=> bs!1685 (= (dynLambda!151 lambda!1361) (fromParenthesis!0 (head!380 xs!372)))))

(assert (=> (and b!7396 (= lambda!1361 (y!464 thiss!1137)) d!5823) d!5863))

(declare-fun b_lambda!3607 () Bool)

(assert (= b_lambda!3589 (or b!7400 b_lambda!3607)))

(declare-fun bs!1686 () Bool)

(declare-fun d!5865 () Bool)

(assert (= bs!1686 (and d!5865 b!7400)))

(assert (=> bs!1686 (= (dynLambda!153 lambda!1356 (head!380 xs!372)) (fromParenthesis!0 (head!380 xs!372)))))

(assert (=> bs!1686 m!10247))

(assert (=> b!7412 d!5865))

(declare-fun b_lambda!3609 () Bool)

(assert (= b_lambda!3579 (or (and b!7399 b_free!477 (= (y!465 thiss!1123) (x!4027 thiss!1137))) (and b!7397 b_free!471) (and b!7397 b_free!473 (= (y!464 thiss!1137) (x!4027 thiss!1137))) (and b!7395 (= lambda!1358 (x!4027 thiss!1137))) (and b!7395 (= lambda!1359 (x!4027 thiss!1137))) (and b!7396 (= lambda!1361 (x!4027 thiss!1137))) (and b!7399 b_free!475 (= (x!4028 thiss!1123) (x!4027 thiss!1137))) b_lambda!3609)))

(declare-fun bs!1687 () Bool)

(declare-fun d!5867 () Bool)

(assert (= bs!1687 (and d!5867 b!7396)))

(assert (=> bs!1687 (= (dynLambda!151 lambda!1361) (fromParenthesis!0 (head!380 xs!372)))))

(assert (=> (and b!7396 (= lambda!1361 (x!4027 thiss!1137)) d!5823) d!5867))

(declare-fun bs!1688 () Bool)

(declare-fun d!5869 () Bool)

(assert (= bs!1688 (and d!5869 b!7395)))

(assert (=> bs!1688 (= (dynLambda!151 lambda!1359) (++!3 (fromParenthesis!0 (head!380 xs!372)) (Balance!98 0 0)))))

(assert (=> (and b!7395 (= lambda!1359 (x!4027 thiss!1137)) d!5823) d!5869))

(declare-fun bs!1689 () Bool)

(declare-fun d!5871 () Bool)

(assert (= bs!1689 (and d!5871 b!7395)))

(assert (=> bs!1689 (= (dynLambda!151 lambda!1358) (foldRight1!30 (append!63 (map!151 xs!372 lambda!1356) (Cons!163 (Balance!98 0 0) Nil!164)) lambda!1357))))

(assert (=> bs!1689 m!10261))

(assert (=> bs!1689 m!10261))

(assert (=> bs!1689 m!10265))

(assert (=> bs!1689 m!10265))

(assert (=> bs!1689 m!10267))

(assert (=> (and b!7395 (= lambda!1358 (x!4027 thiss!1137)) d!5823) d!5871))

(push 1)

(assert (not b!7424))

(assert (not bs!1675))

(assert (not b!7412))

(assert (not b_lambda!3601))

(assert (not bs!1689))

(assert b_and!2141)

(assert (not b_next!1029))

(assert (not bs!1681))

(assert (not b_lambda!3603))

(assert (not b_next!1035))

(assert b_and!2147)

(assert (not b_lambda!3597))

(assert (not b_next!1025))

(assert (not b!7426))

(assert (not b_lambda!3577))

(assert (not bs!1683))

(assert (not b_next!1033))

(assert b_and!2139)

(assert (not d!5837))

(assert (not bs!1678))

(assert (not b_next!1027))

(assert b_and!2143)

(assert b_and!2145)

(assert (not bs!1686))

(assert (not b_lambda!3607))

(assert (not b_lambda!3595))

(assert (not bs!1679))

(assert (not b_lambda!3605))

(assert (not b!7418))

(assert (not b_lambda!3599))

(assert (not b_next!1031))

(assert (not b_lambda!3609))

(assert b_and!2137)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2141)

(assert (not b_next!1029))

(assert (not b_next!1035))

(assert b_and!2147)

(assert (not b_next!1025))

(assert (not b_next!1033))

(assert b_and!2139)

(assert (not b_next!1027))

(assert b_and!2143)

(assert b_and!2145)

(assert (not b_next!1031))

(assert b_and!2137)

(check-sat)

(pop 1)

