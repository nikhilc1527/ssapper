; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1364 () Bool)

(assert start!1364)

(declare-fun b!7338 () Bool)

(declare-fun b_free!457 () Bool)

(declare-fun b_next!965 () Bool)

(assert (=> b!7338 (= b_free!457 (not b_next!965))))

(declare-fun tp!820 () Bool)

(declare-fun b_and!2025 () Bool)

(assert (=> b!7338 (= tp!820 b_and!2025)))

(declare-fun b_free!459 () Bool)

(declare-fun b_next!967 () Bool)

(assert (=> b!7338 (= b_free!459 (not b_next!967))))

(declare-fun tp!823 () Bool)

(declare-fun b_and!2027 () Bool)

(assert (=> b!7338 (= tp!823 b_and!2027)))

(declare-fun b_free!461 () Bool)

(declare-fun b_next!969 () Bool)

(assert (=> b!7338 (= b_free!461 (not b_next!969))))

(declare-fun tp!818 () Bool)

(declare-fun b_and!2029 () Bool)

(assert (=> b!7338 (= tp!818 b_and!2029)))

(declare-fun b!7340 () Bool)

(declare-fun b_free!463 () Bool)

(declare-fun b_next!971 () Bool)

(assert (=> b!7340 (= b_free!463 (not b_next!971))))

(declare-fun tp!822 () Bool)

(declare-fun b_and!2031 () Bool)

(assert (=> b!7340 (= tp!822 b_and!2031)))

(declare-fun b_free!465 () Bool)

(declare-fun b_next!973 () Bool)

(assert (=> b!7340 (= b_free!465 (not b_next!973))))

(declare-fun tp!819 () Bool)

(declare-fun b_and!2033 () Bool)

(assert (=> b!7340 (= tp!819 b_and!2033)))

(declare-fun b_free!467 () Bool)

(declare-fun b_next!975 () Bool)

(assert (=> b!7340 (= b_free!467 (not b_next!975))))

(declare-fun tp!821 () Bool)

(declare-fun b_and!2035 () Bool)

(assert (=> b!7340 (= tp!821 b_and!2035)))

(declare-fun b!7339 () Bool)

(assert (=> b!7339 true))

(declare-fun b_next!977 () Bool)

(declare-fun lambda!1329 () Int)

(declare-datatypes () ((Balance!95 (Balance!96 (extraOpen!88 Int) (extraClose!88 Int)))))

(declare-datatypes () ((EqEvidence!72 (EqEvidence!73 (x!3997 Int) (y!463 Int) (evidence!103 Int)))))

(declare-fun thiss!1124 () EqEvidence!72)

(assert (=> b!7338 (= b_next!965 (or (and b!7339 (= lambda!1329 (x!3997 thiss!1124))) b_next!977))))

(declare-fun b_next!979 () Bool)

(assert (=> b!7338 (= b_next!967 (or (and b!7339 (= lambda!1329 (y!463 thiss!1124))) b_next!979))))

(declare-fun b_next!981 () Bool)

(declare-fun that!298 () EqEvidence!72)

(assert (=> b!7340 (= b_next!971 (or (and b!7339 (= lambda!1329 (x!3997 that!298))) b_next!981))))

(declare-fun b_next!983 () Bool)

(assert (=> b!7340 (= b_next!973 (or (and b!7339 (= lambda!1329 (y!463 that!298))) b_next!983))))

(declare-fun m!10171 () Bool)

(assert (=> b!7339 m!10171))

(declare-fun lambda!1330 () Int)

(declare-fun dynLambda!147 (Int) Bool)

(assert (=> (and b!7338 b!7339 (= (dynLambda!147 lambda!1330) (dynLambda!147 (evidence!103 thiss!1124)))) (= lambda!1330 (evidence!103 thiss!1124))))

(assert (=> (and b!7340 b!7339 (= (dynLambda!147 lambda!1330) (dynLambda!147 (evidence!103 that!298)))) (= lambda!1330 (evidence!103 that!298))))

(declare-fun b_next!985 () Bool)

(assert (=> b!7338 (= b_next!969 (or (and b!7339 (= lambda!1330 (evidence!103 thiss!1124))) b_next!985))))

(declare-fun b_next!987 () Bool)

(assert (=> b!7340 (= b_next!975 (or (and b!7339 (= lambda!1330 (evidence!103 that!298))) b_next!987))))

(declare-fun b!7342 () Bool)

(declare-fun m!10173 () Bool)

(assert (=> b!7342 m!10173))

(assert (=> b!7342 m!10173))

(declare-fun m!10175 () Bool)

(assert (=> b!7342 m!10175))

(declare-fun bs!1650 () Bool)

(assert (= bs!1650 (and b!7342 b!7339)))

(declare-fun lambda!1331 () Int)

(assert (=> bs!1650 (not (= lambda!1331 lambda!1329))))

(assert (=> b!7342 true))

(declare-fun dynLambda!148 (Int) Balance!95)

(assert (=> (and b!7338 b!7342 (= (dynLambda!148 lambda!1331) (dynLambda!148 (x!3997 thiss!1124)))) (= lambda!1331 (x!3997 thiss!1124))))

(assert (=> (and b!7338 b!7342 (= (dynLambda!148 lambda!1331) (dynLambda!148 (y!463 thiss!1124)))) (= lambda!1331 (y!463 thiss!1124))))

(assert (=> (and b!7340 b!7342 (= (dynLambda!148 lambda!1331) (dynLambda!148 (x!3997 that!298)))) (= lambda!1331 (x!3997 that!298))))

(assert (=> (and b!7340 b!7342 (= (dynLambda!148 lambda!1331) (dynLambda!148 (y!463 that!298)))) (= lambda!1331 (y!463 that!298))))

(declare-fun b_next!989 () Bool)

(assert (=> b!7338 (= b_next!977 (or (and b!7342 (= lambda!1331 (x!3997 thiss!1124))) b_next!989))))

(declare-fun b_next!991 () Bool)

(assert (=> b!7338 (= b_next!979 (or (and b!7342 (= lambda!1331 (y!463 thiss!1124))) b_next!991))))

(declare-fun b_next!993 () Bool)

(assert (=> b!7340 (= b_next!981 (or (and b!7342 (= lambda!1331 (x!3997 that!298))) b_next!993))))

(declare-fun b_next!995 () Bool)

(assert (=> b!7340 (= b_next!983 (or (and b!7342 (= lambda!1331 (y!463 that!298))) b_next!995))))

(declare-fun res!2127 () Bool)

(declare-fun e!4240 () Bool)

(assert (=> start!1364 (=> (not res!2127) (not e!4240))))

(declare-datatypes () ((Parenthesis!40 (CloseParenthesis!39) (OpenParenthesis!39))))

(declare-datatypes () ((List!163 (Nil!161) (Cons!160 (head!378 Parenthesis!40) (tail!390 List!163)))))

(declare-fun xs!372 () List!163)

(declare-fun isEmpty!141 (List!163) Bool)

(assert (=> start!1364 (= res!2127 (not (isEmpty!141 xs!372)))))

(assert (=> start!1364 e!4240))

(assert (=> start!1364 true))

(declare-fun e!4239 () Bool)

(declare-fun inv!258 (EqEvidence!72) Bool)

(assert (=> start!1364 (and (inv!258 thiss!1124) e!4239)))

(declare-fun e!4238 () Bool)

(assert (=> start!1364 (and (inv!258 that!298) e!4238)))

(declare-fun b!7335 () Bool)

(declare-fun res!2128 () Bool)

(assert (=> b!7335 (=> (not res!2128) (not e!4240))))

(assert (=> b!7335 (= res!2128 (and (is-Cons!160 xs!372) (is-Nil!161 (tail!390 xs!372))))))

(declare-fun b!7336 () Bool)

(declare-fun res!2130 () Bool)

(assert (=> b!7336 (=> (not res!2130) (not e!4240))))

(assert (=> b!7336 (= res!2130 (dynLambda!147 (evidence!103 thiss!1124)))))

(declare-fun b!7337 () Bool)

(declare-fun res!2132 () Bool)

(assert (=> b!7337 (=> (not res!2132) (not e!4240))))

(declare-fun lambda!1327 () Int)

(declare-datatypes () ((ProofOps!66 (ProofOps!67 (prop!143 Bool)))))

(declare-fun thiss!1106 () ProofOps!66)

(declare-fun lambda!1328 () Int)

(declare-datatypes () ((List!164 (Nil!162) (Cons!161 (head!379 Balance!95) (tail!391 List!164)))))

(declare-fun foldRight1!29 (List!164 Int) Balance!95)

(declare-fun append!62 (List!164 List!164) List!164)

(declare-fun map!150 (List!163 Int) List!164)

(assert (=> b!7337 (= res!2132 (= thiss!1106 (ProofOps!67 (= (foldRight1!29 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)) lambda!1328) (foldRight1!29 (map!150 xs!372 lambda!1327) lambda!1328)))))))

(assert (=> b!7338 (= e!4239 (and tp!820 tp!823 tp!818))))

(declare-fun res!2131 () Bool)

(assert (=> b!7339 (=> (not res!2131) (not e!4240))))

(assert (=> b!7339 (= res!2131 (= thiss!1124 (EqEvidence!73 lambda!1329 lambda!1329 lambda!1330)))))

(assert (=> b!7340 (= e!4238 (and tp!822 tp!819 tp!821))))

(declare-fun b!7341 () Bool)

(assert (=> b!7341 (= e!4240 (not (= (dynLambda!148 (y!463 thiss!1124)) (dynLambda!148 (x!3997 that!298)))))))

(declare-fun res!2129 () Bool)

(assert (=> b!7342 (=> (not res!2129) (not e!4240))))

(assert (=> b!7342 (= res!2129 (= that!298 (EqEvidence!73 lambda!1331 lambda!1331 lambda!1330)))))

(assert (= (and start!1364 res!2127) b!7337))

(assert (= (and b!7337 res!2132) b!7335))

(assert (= (and b!7335 res!2128) b!7339))

(assert (= (and b!7339 res!2131) b!7342))

(assert (= (and b!7342 res!2129) b!7336))

(assert (= (and b!7336 res!2130) b!7341))

(assert (= start!1364 b!7338))

(assert (= start!1364 b!7340))

(declare-fun b_lambda!3515 () Bool)

(assert (=> (not b_lambda!3515) (not b!7336)))

(declare-fun t!1451 () Bool)

(declare-fun tb!1111 () Bool)

(assert (=> (and b!7338 (= (evidence!103 thiss!1124) (evidence!103 thiss!1124)) t!1451) tb!1111))

(declare-fun result!1151 () Bool)

(assert (=> tb!1111 (= result!1151 true)))

(assert (=> b!7336 t!1451))

(declare-fun b_and!2037 () Bool)

(assert (= b_and!2029 (and (=> t!1451 result!1151) b_and!2037)))

(declare-fun t!1453 () Bool)

(declare-fun tb!1113 () Bool)

(assert (=> (and b!7340 (= (evidence!103 that!298) (evidence!103 thiss!1124)) t!1453) tb!1113))

(declare-fun result!1153 () Bool)

(assert (=> tb!1113 (= result!1153 true)))

(assert (=> b!7336 t!1453))

(declare-fun b_and!2039 () Bool)

(assert (= b_and!2035 (and (=> t!1453 result!1153) b_and!2039)))

(declare-fun b_lambda!3517 () Bool)

(assert (=> (not b_lambda!3517) (not b!7341)))

(declare-fun t!1455 () Bool)

(declare-fun tb!1115 () Bool)

(assert (=> (and b!7338 (= (x!3997 thiss!1124) (y!463 thiss!1124)) t!1455) tb!1115))

(declare-fun result!1155 () Bool)

(assert (=> tb!1115 (= result!1155 true)))

(assert (=> b!7341 t!1455))

(declare-fun b_and!2041 () Bool)

(assert (= b_and!2025 (and (=> t!1455 result!1155) b_and!2041)))

(declare-fun t!1457 () Bool)

(declare-fun tb!1117 () Bool)

(assert (=> (and b!7338 (= (y!463 thiss!1124) (y!463 thiss!1124)) t!1457) tb!1117))

(declare-fun result!1157 () Bool)

(assert (=> tb!1117 (= result!1157 true)))

(assert (=> b!7341 t!1457))

(declare-fun b_and!2043 () Bool)

(assert (= b_and!2027 (and (=> t!1457 result!1157) b_and!2043)))

(declare-fun tb!1119 () Bool)

(declare-fun t!1459 () Bool)

(assert (=> (and b!7340 (= (x!3997 that!298) (y!463 thiss!1124)) t!1459) tb!1119))

(declare-fun result!1159 () Bool)

(assert (=> tb!1119 (= result!1159 true)))

(assert (=> b!7341 t!1459))

(declare-fun b_and!2045 () Bool)

(assert (= b_and!2031 (and (=> t!1459 result!1159) b_and!2045)))

(declare-fun t!1461 () Bool)

(declare-fun tb!1121 () Bool)

(assert (=> (and b!7340 (= (y!463 that!298) (y!463 thiss!1124)) t!1461) tb!1121))

(declare-fun result!1161 () Bool)

(assert (=> tb!1121 (= result!1161 true)))

(assert (=> b!7341 t!1461))

(declare-fun b_and!2047 () Bool)

(assert (= b_and!2033 (and (=> t!1461 result!1161) b_and!2047)))

(declare-fun b_lambda!3519 () Bool)

(assert (=> (not b_lambda!3519) (not b!7341)))

(declare-fun tb!1123 () Bool)

(declare-fun t!1463 () Bool)

(assert (=> (and b!7338 (= (x!3997 thiss!1124) (x!3997 that!298)) t!1463) tb!1123))

(declare-fun result!1163 () Bool)

(assert (=> tb!1123 (= result!1163 true)))

(assert (=> b!7341 t!1463))

(declare-fun b_and!2049 () Bool)

(assert (= b_and!2041 (and (=> t!1463 result!1163) b_and!2049)))

(declare-fun t!1465 () Bool)

(declare-fun tb!1125 () Bool)

(assert (=> (and b!7338 (= (y!463 thiss!1124) (x!3997 that!298)) t!1465) tb!1125))

(declare-fun result!1165 () Bool)

(assert (=> tb!1125 (= result!1165 true)))

(assert (=> b!7341 t!1465))

(declare-fun b_and!2051 () Bool)

(assert (= b_and!2043 (and (=> t!1465 result!1165) b_and!2051)))

(declare-fun t!1467 () Bool)

(declare-fun tb!1127 () Bool)

(assert (=> (and b!7340 (= (x!3997 that!298) (x!3997 that!298)) t!1467) tb!1127))

(declare-fun result!1167 () Bool)

(assert (=> tb!1127 (= result!1167 true)))

(assert (=> b!7341 t!1467))

(declare-fun b_and!2053 () Bool)

(assert (= b_and!2045 (and (=> t!1467 result!1167) b_and!2053)))

(declare-fun t!1469 () Bool)

(declare-fun tb!1129 () Bool)

(assert (=> (and b!7340 (= (y!463 that!298) (x!3997 that!298)) t!1469) tb!1129))

(declare-fun result!1169 () Bool)

(assert (=> tb!1129 (= result!1169 true)))

(assert (=> b!7341 t!1469))

(declare-fun b_and!2055 () Bool)

(assert (= b_and!2047 (and (=> t!1469 result!1169) b_and!2055)))

(declare-fun m!10177 () Bool)

(assert (=> start!1364 m!10177))

(declare-fun m!10179 () Bool)

(assert (=> start!1364 m!10179))

(declare-fun m!10181 () Bool)

(assert (=> start!1364 m!10181))

(declare-fun m!10183 () Bool)

(assert (=> b!7336 m!10183))

(declare-fun m!10185 () Bool)

(assert (=> b!7337 m!10185))

(declare-fun m!10187 () Bool)

(assert (=> b!7337 m!10187))

(declare-fun m!10189 () Bool)

(assert (=> b!7337 m!10189))

(assert (=> b!7337 m!10185))

(declare-fun m!10191 () Bool)

(assert (=> b!7337 m!10191))

(assert (=> b!7337 m!10185))

(assert (=> b!7337 m!10185))

(assert (=> b!7337 m!10187))

(declare-fun m!10193 () Bool)

(assert (=> b!7341 m!10193))

(declare-fun m!10195 () Bool)

(assert (=> b!7341 m!10195))

(push 1)

(assert b_and!2053)

(assert (not b!7339))

(assert (not b_next!987))

(assert b_and!2051)

(assert (not start!1364))

(assert (not b_next!995))

(assert (not b_lambda!3515))

(assert (not b_next!985))

(assert (not b_next!991))

(assert b_and!2039)

(assert b_and!2049)

(assert b_and!2037)

(assert (not b!7342))

(assert (not b_lambda!3517))

(assert (not b_next!989))

(assert (not b!7337))

(assert b_and!2055)

(assert (not b_next!993))

(assert (not b_lambda!3519))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2053)

(assert (not b_next!987))

(assert b_and!2051)

(assert (not b_next!995))

(assert (not b_next!985))

(assert (not b_next!991))

(assert b_and!2039)

(assert b_and!2049)

(assert b_and!2037)

(assert (not b_next!989))

(assert b_and!2055)

(assert (not b_next!993))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3521 () Bool)

(assert (= b_lambda!3517 (or (and b!7342 (= lambda!1331 (y!463 thiss!1124))) (and b!7338 b_free!459) (and b!7340 b_free!463 (= (x!3997 that!298) (y!463 thiss!1124))) (and b!7339 (= lambda!1329 (y!463 thiss!1124))) (and b!7338 b_free!457 (= (x!3997 thiss!1124) (y!463 thiss!1124))) (and b!7340 b_free!465 (= (y!463 that!298) (y!463 thiss!1124))) b_lambda!3521)))

(declare-fun bs!1651 () Bool)

(declare-fun d!5753 () Bool)

(assert (= bs!1651 (and d!5753 b!7342)))

(declare-fun ++!3 (Balance!95 Balance!95) Balance!95)

(declare-fun fromParenthesis!0 (Parenthesis!40) Balance!95)

(assert (=> bs!1651 (= (dynLambda!148 lambda!1331) (++!3 (fromParenthesis!0 (head!378 xs!372)) (Balance!96 0 0)))))

(assert (=> (and b!7342 (= lambda!1331 (y!463 thiss!1124)) b!7341) d!5753))

(declare-fun bs!1652 () Bool)

(declare-fun d!5755 () Bool)

(assert (= bs!1652 (and d!5755 b!7339)))

(assert (=> bs!1652 (= (dynLambda!148 lambda!1329) (foldRight1!29 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)) lambda!1328))))

(assert (=> bs!1652 m!10185))

(assert (=> bs!1652 m!10185))

(assert (=> bs!1652 m!10187))

(assert (=> bs!1652 m!10187))

(assert (=> bs!1652 m!10189))

(assert (=> (and b!7339 (= lambda!1329 (y!463 thiss!1124)) b!7341) d!5755))

(declare-fun b_lambda!3523 () Bool)

(assert (= b_lambda!3515 (or (and b!7339 (= lambda!1330 (evidence!103 thiss!1124))) (and b!7338 b_free!461) (and b!7340 b_free!467 (= (evidence!103 that!298) (evidence!103 thiss!1124))) b_lambda!3523)))

(declare-fun bs!1653 () Bool)

(declare-fun d!5757 () Bool)

(assert (= bs!1653 (and d!5757 b!7339)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!1653 (= (dynLambda!147 lambda!1330) trivial!1)))

(assert (=> (and b!7339 (= lambda!1330 (evidence!103 thiss!1124)) b!7336) d!5757))

(declare-fun b_lambda!3525 () Bool)

(assert (= b_lambda!3519 (or (and b!7338 b_free!459 (= (y!463 thiss!1124) (x!3997 that!298))) (and b!7339 (= lambda!1329 (x!3997 that!298))) (and b!7338 b_free!457 (= (x!3997 thiss!1124) (x!3997 that!298))) (and b!7340 b_free!465 (= (y!463 that!298) (x!3997 that!298))) (and b!7342 (= lambda!1331 (x!3997 that!298))) (and b!7340 b_free!463) b_lambda!3525)))

(declare-fun bs!1654 () Bool)

(declare-fun d!5759 () Bool)

(assert (= bs!1654 (and d!5759 b!7339)))

(assert (=> bs!1654 (= (dynLambda!148 lambda!1329) (foldRight1!29 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)) lambda!1328))))

(assert (=> bs!1654 m!10185))

(assert (=> bs!1654 m!10185))

(assert (=> bs!1654 m!10187))

(assert (=> bs!1654 m!10187))

(assert (=> bs!1654 m!10189))

(assert (=> (and b!7339 (= lambda!1329 (x!3997 that!298)) b!7341) d!5759))

(declare-fun bs!1655 () Bool)

(declare-fun d!5761 () Bool)

(assert (= bs!1655 (and d!5761 b!7342)))

(assert (=> bs!1655 (= (dynLambda!148 lambda!1331) (++!3 (fromParenthesis!0 (head!378 xs!372)) (Balance!96 0 0)))))

(assert (=> (and b!7342 (= lambda!1331 (x!3997 that!298)) b!7341) d!5761))

(push 1)

(assert (not bs!1652))

(assert b_and!2053)

(assert (not b!7339))

(assert (not b_next!987))

(assert b_and!2051)

(assert (not start!1364))

(assert (not b_next!995))

(assert (not b_lambda!3523))

(assert (not b_next!985))

(assert (not b_next!991))

(assert b_and!2039)

(assert b_and!2049)

(assert b_and!2037)

(assert (not b!7342))

(assert (not b_lambda!3521))

(assert (not b_lambda!3525))

(assert (not b_next!989))

(assert (not b!7337))

(assert b_and!2055)

(assert (not bs!1654))

(assert (not b_next!993))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2053)

(assert (not b_next!987))

(assert b_and!2051)

(assert (not b_next!995))

(assert (not b_next!985))

(assert (not b_next!991))

(assert b_and!2039)

(assert b_and!2049)

(assert b_and!2037)

(assert (not b_next!989))

(assert b_and!2055)

(assert (not b_next!993))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5763 () Bool)

(declare-fun c!2607 () Bool)

(assert (=> d!5763 (= c!2607 (and (is-Cons!161 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))) (is-Nil!162 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))))))))

(declare-fun e!4243 () Balance!95)

(assert (=> d!5763 (= (foldRight1!29 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)) lambda!1328) e!4243)))

(declare-fun b!7349 () Bool)

(assert (=> b!7349 (= e!4243 (head!379 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))))))

(declare-fun b!7350 () Bool)

(declare-fun dynLambda!149 (Int Balance!95 Balance!95) Balance!95)

(assert (=> b!7350 (= e!4243 (dynLambda!149 lambda!1328 (head!379 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))) (foldRight1!29 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))) lambda!1328)))))

(assert (= (and d!5763 c!2607) b!7349))

(assert (= (and d!5763 (not c!2607)) b!7350))

(declare-fun b_lambda!3527 () Bool)

(assert (=> (not b_lambda!3527) (not b!7350)))

(declare-fun m!10197 () Bool)

(assert (=> b!7350 m!10197))

(assert (=> b!7350 m!10197))

(declare-fun m!10199 () Bool)

(assert (=> b!7350 m!10199))

(assert (=> bs!1654 d!5763))

(declare-fun d!5765 () Bool)

(declare-fun c!2610 () Bool)

(assert (=> d!5765 (= c!2610 (is-Nil!162 (map!150 xs!372 lambda!1327)))))

(declare-fun e!4246 () List!164)

(assert (=> d!5765 (= (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)) e!4246)))

(declare-fun b!7355 () Bool)

(assert (=> b!7355 (= e!4246 (Cons!161 (Balance!96 0 0) Nil!162))))

(declare-fun b!7356 () Bool)

(assert (=> b!7356 (= e!4246 (Cons!161 (head!379 (map!150 xs!372 lambda!1327)) (append!62 (tail!391 (map!150 xs!372 lambda!1327)) (Cons!161 (Balance!96 0 0) Nil!162))))))

(assert (= (and d!5765 c!2610) b!7355))

(assert (= (and d!5765 (not c!2610)) b!7356))

(declare-fun m!10201 () Bool)

(assert (=> b!7356 m!10201))

(assert (=> bs!1654 d!5765))

(declare-fun d!5767 () Bool)

(declare-fun c!2613 () Bool)

(assert (=> d!5767 (= c!2613 (is-Nil!161 xs!372))))

(declare-fun e!4249 () List!164)

(assert (=> d!5767 (= (map!150 xs!372 lambda!1327) e!4249)))

(declare-fun b!7361 () Bool)

(assert (=> b!7361 (= e!4249 Nil!162)))

(declare-fun b!7362 () Bool)

(declare-fun dynLambda!150 (Int Parenthesis!40) Balance!95)

(assert (=> b!7362 (= e!4249 (Cons!161 (dynLambda!150 lambda!1327 (head!378 xs!372)) (map!150 (tail!390 xs!372) lambda!1327)))))

(assert (= (and d!5767 c!2613) b!7361))

(assert (= (and d!5767 (not c!2613)) b!7362))

(declare-fun b_lambda!3529 () Bool)

(assert (=> (not b_lambda!3529) (not b!7362)))

(declare-fun m!10203 () Bool)

(assert (=> b!7362 m!10203))

(declare-fun m!10205 () Bool)

(assert (=> b!7362 m!10205))

(assert (=> bs!1654 d!5767))

(assert (=> bs!1652 d!5763))

(assert (=> bs!1652 d!5765))

(assert (=> bs!1652 d!5767))

(declare-fun d!5769 () Bool)

(assert (=> d!5769 (= trivial!1 true)))

(assert (=> b!7339 d!5769))

(assert (=> b!7337 d!5763))

(declare-fun d!5771 () Bool)

(declare-fun c!2614 () Bool)

(assert (=> d!5771 (= c!2614 (and (is-Cons!161 (map!150 xs!372 lambda!1327)) (is-Nil!162 (tail!391 (map!150 xs!372 lambda!1327)))))))

(declare-fun e!4250 () Balance!95)

(assert (=> d!5771 (= (foldRight1!29 (map!150 xs!372 lambda!1327) lambda!1328) e!4250)))

(declare-fun b!7363 () Bool)

(assert (=> b!7363 (= e!4250 (head!379 (map!150 xs!372 lambda!1327)))))

(declare-fun b!7364 () Bool)

(assert (=> b!7364 (= e!4250 (dynLambda!149 lambda!1328 (head!379 (map!150 xs!372 lambda!1327)) (foldRight1!29 (tail!391 (map!150 xs!372 lambda!1327)) lambda!1328)))))

(assert (= (and d!5771 c!2614) b!7363))

(assert (= (and d!5771 (not c!2614)) b!7364))

(declare-fun b_lambda!3531 () Bool)

(assert (=> (not b_lambda!3531) (not b!7364)))

(declare-fun m!10207 () Bool)

(assert (=> b!7364 m!10207))

(assert (=> b!7364 m!10207))

(declare-fun m!10209 () Bool)

(assert (=> b!7364 m!10209))

(assert (=> b!7337 d!5771))

(assert (=> b!7337 d!5767))

(assert (=> b!7337 d!5765))

(declare-fun d!5773 () Bool)

(declare-fun lt!1426 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!5773 (= lt!1426 (min!4 (extraOpen!88 (fromParenthesis!0 (head!378 xs!372))) (extraClose!88 (Balance!96 0 0))))))

(assert (=> d!5773 (= (++!3 (fromParenthesis!0 (head!378 xs!372)) (Balance!96 0 0)) (Balance!96 (- (+ (extraOpen!88 (fromParenthesis!0 (head!378 xs!372))) (extraOpen!88 (Balance!96 0 0))) lt!1426) (- (+ (extraClose!88 (fromParenthesis!0 (head!378 xs!372))) (extraClose!88 (Balance!96 0 0))) lt!1426)))))

(declare-fun bs!1656 () Bool)

(assert (= bs!1656 d!5773))

(declare-fun m!10211 () Bool)

(assert (=> bs!1656 m!10211))

(assert (=> b!7342 d!5773))

(declare-fun d!5775 () Bool)

(assert (=> d!5775 (= (fromParenthesis!0 (head!378 xs!372)) (ite (is-OpenParenthesis!39 (head!378 xs!372)) (Balance!96 1 0) (Balance!96 0 1)))))

(assert (=> b!7342 d!5775))

(assert (=> b!7342 d!5769))

(declare-fun d!5777 () Bool)

(assert (=> d!5777 (= (isEmpty!141 xs!372) (is-Nil!161 xs!372))))

(assert (=> start!1364 d!5777))

(declare-fun d!5779 () Bool)

(declare-fun res!2135 () Bool)

(declare-fun e!4253 () Bool)

(assert (=> d!5779 (=> (not res!2135) (not e!4253))))

(assert (=> d!5779 (= res!2135 (= (dynLambda!148 (x!3997 thiss!1124)) (dynLambda!148 (y!463 thiss!1124))))))

(assert (=> d!5779 (= (inv!258 thiss!1124) e!4253)))

(declare-fun b!7367 () Bool)

(assert (=> b!7367 (= e!4253 (dynLambda!147 (evidence!103 thiss!1124)))))

(assert (= (and d!5779 res!2135) b!7367))

(declare-fun b_lambda!3533 () Bool)

(assert (=> (not b_lambda!3533) (not d!5779)))

(declare-fun t!1471 () Bool)

(declare-fun tb!1131 () Bool)

(assert (=> (and b!7338 (= (x!3997 thiss!1124) (x!3997 thiss!1124)) t!1471) tb!1131))

(declare-fun result!1171 () Bool)

(assert (=> tb!1131 (= result!1171 true)))

(assert (=> d!5779 t!1471))

(declare-fun b_and!2057 () Bool)

(assert (= b_and!2049 (and (=> t!1471 result!1171) b_and!2057)))

(declare-fun t!1473 () Bool)

(declare-fun tb!1133 () Bool)

(assert (=> (and b!7338 (= (y!463 thiss!1124) (x!3997 thiss!1124)) t!1473) tb!1133))

(declare-fun result!1173 () Bool)

(assert (=> tb!1133 (= result!1173 true)))

(assert (=> d!5779 t!1473))

(declare-fun b_and!2059 () Bool)

(assert (= b_and!2051 (and (=> t!1473 result!1173) b_and!2059)))

(declare-fun t!1475 () Bool)

(declare-fun tb!1135 () Bool)

(assert (=> (and b!7340 (= (x!3997 that!298) (x!3997 thiss!1124)) t!1475) tb!1135))

(declare-fun result!1175 () Bool)

(assert (=> tb!1135 (= result!1175 true)))

(assert (=> d!5779 t!1475))

(declare-fun b_and!2061 () Bool)

(assert (= b_and!2053 (and (=> t!1475 result!1175) b_and!2061)))

(declare-fun t!1477 () Bool)

(declare-fun tb!1137 () Bool)

(assert (=> (and b!7340 (= (y!463 that!298) (x!3997 thiss!1124)) t!1477) tb!1137))

(declare-fun result!1177 () Bool)

(assert (=> tb!1137 (= result!1177 true)))

(assert (=> d!5779 t!1477))

(declare-fun b_and!2063 () Bool)

(assert (= b_and!2055 (and (=> t!1477 result!1177) b_and!2063)))

(declare-fun b_lambda!3535 () Bool)

(assert (=> (not b_lambda!3535) (not d!5779)))

(assert (=> d!5779 t!1455))

(declare-fun b_and!2065 () Bool)

(assert (= b_and!2057 (and (=> t!1455 result!1155) b_and!2065)))

(assert (=> d!5779 t!1457))

(declare-fun b_and!2067 () Bool)

(assert (= b_and!2059 (and (=> t!1457 result!1157) b_and!2067)))

(assert (=> d!5779 t!1459))

(declare-fun b_and!2069 () Bool)

(assert (= b_and!2061 (and (=> t!1459 result!1159) b_and!2069)))

(assert (=> d!5779 t!1461))

(declare-fun b_and!2071 () Bool)

(assert (= b_and!2063 (and (=> t!1461 result!1161) b_and!2071)))

(declare-fun b_lambda!3537 () Bool)

(assert (=> (not b_lambda!3537) (not b!7367)))

(assert (=> b!7367 t!1451))

(declare-fun b_and!2073 () Bool)

(assert (= b_and!2037 (and (=> t!1451 result!1151) b_and!2073)))

(assert (=> b!7367 t!1453))

(declare-fun b_and!2075 () Bool)

(assert (= b_and!2039 (and (=> t!1453 result!1153) b_and!2075)))

(declare-fun m!10213 () Bool)

(assert (=> d!5779 m!10213))

(assert (=> d!5779 m!10193))

(assert (=> b!7367 m!10183))

(assert (=> start!1364 d!5779))

(declare-fun d!5781 () Bool)

(declare-fun res!2136 () Bool)

(declare-fun e!4254 () Bool)

(assert (=> d!5781 (=> (not res!2136) (not e!4254))))

(assert (=> d!5781 (= res!2136 (= (dynLambda!148 (x!3997 that!298)) (dynLambda!148 (y!463 that!298))))))

(assert (=> d!5781 (= (inv!258 that!298) e!4254)))

(declare-fun b!7368 () Bool)

(assert (=> b!7368 (= e!4254 (dynLambda!147 (evidence!103 that!298)))))

(assert (= (and d!5781 res!2136) b!7368))

(declare-fun b_lambda!3539 () Bool)

(assert (=> (not b_lambda!3539) (not d!5781)))

(assert (=> d!5781 t!1463))

(declare-fun b_and!2077 () Bool)

(assert (= b_and!2065 (and (=> t!1463 result!1163) b_and!2077)))

(assert (=> d!5781 t!1465))

(declare-fun b_and!2079 () Bool)

(assert (= b_and!2067 (and (=> t!1465 result!1165) b_and!2079)))

(assert (=> d!5781 t!1467))

(declare-fun b_and!2081 () Bool)

(assert (= b_and!2069 (and (=> t!1467 result!1167) b_and!2081)))

(assert (=> d!5781 t!1469))

(declare-fun b_and!2083 () Bool)

(assert (= b_and!2071 (and (=> t!1469 result!1169) b_and!2083)))

(declare-fun b_lambda!3541 () Bool)

(assert (=> (not b_lambda!3541) (not d!5781)))

(declare-fun tb!1139 () Bool)

(declare-fun t!1479 () Bool)

(assert (=> (and b!7338 (= (x!3997 thiss!1124) (y!463 that!298)) t!1479) tb!1139))

(declare-fun result!1179 () Bool)

(assert (=> tb!1139 (= result!1179 true)))

(assert (=> d!5781 t!1479))

(declare-fun b_and!2085 () Bool)

(assert (= b_and!2077 (and (=> t!1479 result!1179) b_and!2085)))

(declare-fun tb!1141 () Bool)

(declare-fun t!1481 () Bool)

(assert (=> (and b!7338 (= (y!463 thiss!1124) (y!463 that!298)) t!1481) tb!1141))

(declare-fun result!1181 () Bool)

(assert (=> tb!1141 (= result!1181 true)))

(assert (=> d!5781 t!1481))

(declare-fun b_and!2087 () Bool)

(assert (= b_and!2079 (and (=> t!1481 result!1181) b_and!2087)))

(declare-fun t!1483 () Bool)

(declare-fun tb!1143 () Bool)

(assert (=> (and b!7340 (= (x!3997 that!298) (y!463 that!298)) t!1483) tb!1143))

(declare-fun result!1183 () Bool)

(assert (=> tb!1143 (= result!1183 true)))

(assert (=> d!5781 t!1483))

(declare-fun b_and!2089 () Bool)

(assert (= b_and!2081 (and (=> t!1483 result!1183) b_and!2089)))

(declare-fun t!1485 () Bool)

(declare-fun tb!1145 () Bool)

(assert (=> (and b!7340 (= (y!463 that!298) (y!463 that!298)) t!1485) tb!1145))

(declare-fun result!1185 () Bool)

(assert (=> tb!1145 (= result!1185 true)))

(assert (=> d!5781 t!1485))

(declare-fun b_and!2091 () Bool)

(assert (= b_and!2083 (and (=> t!1485 result!1185) b_and!2091)))

(declare-fun b_lambda!3543 () Bool)

(assert (=> (not b_lambda!3543) (not b!7368)))

(declare-fun tb!1147 () Bool)

(declare-fun t!1487 () Bool)

(assert (=> (and b!7338 (= (evidence!103 thiss!1124) (evidence!103 that!298)) t!1487) tb!1147))

(declare-fun result!1187 () Bool)

(assert (=> tb!1147 (= result!1187 true)))

(assert (=> b!7368 t!1487))

(declare-fun b_and!2093 () Bool)

(assert (= b_and!2073 (and (=> t!1487 result!1187) b_and!2093)))

(declare-fun t!1489 () Bool)

(declare-fun tb!1149 () Bool)

(assert (=> (and b!7340 (= (evidence!103 that!298) (evidence!103 that!298)) t!1489) tb!1149))

(declare-fun result!1189 () Bool)

(assert (=> tb!1149 (= result!1189 true)))

(assert (=> b!7368 t!1489))

(declare-fun b_and!2095 () Bool)

(assert (= b_and!2075 (and (=> t!1489 result!1189) b_and!2095)))

(assert (=> d!5781 m!10195))

(declare-fun m!10215 () Bool)

(assert (=> d!5781 m!10215))

(declare-fun m!10217 () Bool)

(assert (=> b!7368 m!10217))

(assert (=> start!1364 d!5781))

(declare-fun b_lambda!3545 () Bool)

(assert (= b_lambda!3535 (or (and b!7342 (= lambda!1331 (y!463 thiss!1124))) (and b!7338 b_free!459) (and b!7340 b_free!463 (= (x!3997 that!298) (y!463 thiss!1124))) (and b!7339 (= lambda!1329 (y!463 thiss!1124))) (and b!7338 b_free!457 (= (x!3997 thiss!1124) (y!463 thiss!1124))) (and b!7340 b_free!465 (= (y!463 that!298) (y!463 thiss!1124))) b_lambda!3545)))

(assert (=> (and b!7342 (= lambda!1331 (y!463 thiss!1124)) d!5779) d!5753))

(assert (=> (and b!7339 (= lambda!1329 (y!463 thiss!1124)) d!5779) d!5755))

(declare-fun b_lambda!3547 () Bool)

(assert (= b_lambda!3531 (or b!7337 b_lambda!3547)))

(declare-fun bs!1657 () Bool)

(declare-fun d!5783 () Bool)

(assert (= bs!1657 (and d!5783 b!7337)))

(assert (=> bs!1657 (= (dynLambda!149 lambda!1328 (head!379 (map!150 xs!372 lambda!1327)) (foldRight1!29 (tail!391 (map!150 xs!372 lambda!1327)) lambda!1328)) (++!3 (head!379 (map!150 xs!372 lambda!1327)) (foldRight1!29 (tail!391 (map!150 xs!372 lambda!1327)) lambda!1328)))))

(assert (=> bs!1657 m!10207))

(declare-fun m!10219 () Bool)

(assert (=> bs!1657 m!10219))

(assert (=> b!7364 d!5783))

(declare-fun b_lambda!3549 () Bool)

(assert (= b_lambda!3527 (or b!7337 b_lambda!3549)))

(declare-fun bs!1658 () Bool)

(declare-fun d!5785 () Bool)

(assert (= bs!1658 (and d!5785 b!7337)))

(assert (=> bs!1658 (= (dynLambda!149 lambda!1328 (head!379 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))) (foldRight1!29 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))) lambda!1328)) (++!3 (head!379 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))) (foldRight1!29 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))) lambda!1328)))))

(assert (=> bs!1658 m!10197))

(declare-fun m!10221 () Bool)

(assert (=> bs!1658 m!10221))

(assert (=> b!7350 d!5785))

(declare-fun b_lambda!3551 () Bool)

(assert (= b_lambda!3539 (or (and b!7338 b_free!459 (= (y!463 thiss!1124) (x!3997 that!298))) (and b!7339 (= lambda!1329 (x!3997 that!298))) (and b!7338 b_free!457 (= (x!3997 thiss!1124) (x!3997 that!298))) (and b!7340 b_free!465 (= (y!463 that!298) (x!3997 that!298))) (and b!7342 (= lambda!1331 (x!3997 that!298))) (and b!7340 b_free!463) b_lambda!3551)))

(assert (=> (and b!7339 (= lambda!1329 (x!3997 that!298)) d!5781) d!5759))

(assert (=> (and b!7342 (= lambda!1331 (x!3997 that!298)) d!5781) d!5761))

(declare-fun b_lambda!3553 () Bool)

(assert (= b_lambda!3543 (or (and b!7339 (= lambda!1330 (evidence!103 that!298))) (and b!7338 b_free!461 (= (evidence!103 thiss!1124) (evidence!103 that!298))) (and b!7340 b_free!467) b_lambda!3553)))

(declare-fun bs!1659 () Bool)

(declare-fun d!5787 () Bool)

(assert (= bs!1659 (and d!5787 b!7339)))

(assert (=> bs!1659 (= (dynLambda!147 lambda!1330) trivial!1)))

(assert (=> (and b!7339 (= lambda!1330 (evidence!103 that!298)) b!7368) d!5787))

(declare-fun b_lambda!3555 () Bool)

(assert (= b_lambda!3541 (or (and b!7342 (= lambda!1331 (y!463 that!298))) (and b!7339 (= lambda!1329 (y!463 that!298))) (and b!7340 b_free!465) (and b!7338 b_free!457 (= (x!3997 thiss!1124) (y!463 that!298))) (and b!7338 b_free!459 (= (y!463 thiss!1124) (y!463 that!298))) (and b!7340 b_free!463 (= (x!3997 that!298) (y!463 that!298))) b_lambda!3555)))

(declare-fun bs!1660 () Bool)

(declare-fun d!5789 () Bool)

(assert (= bs!1660 (and d!5789 b!7339)))

(assert (=> bs!1660 (= (dynLambda!148 lambda!1329) (foldRight1!29 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)) lambda!1328))))

(assert (=> bs!1660 m!10185))

(assert (=> bs!1660 m!10185))

(assert (=> bs!1660 m!10187))

(assert (=> bs!1660 m!10187))

(assert (=> bs!1660 m!10189))

(assert (=> (and b!7339 (= lambda!1329 (y!463 that!298)) d!5781) d!5789))

(declare-fun bs!1661 () Bool)

(declare-fun d!5791 () Bool)

(assert (= bs!1661 (and d!5791 b!7342)))

(assert (=> bs!1661 (= (dynLambda!148 lambda!1331) (++!3 (fromParenthesis!0 (head!378 xs!372)) (Balance!96 0 0)))))

(assert (=> (and b!7342 (= lambda!1331 (y!463 that!298)) d!5781) d!5791))

(declare-fun b_lambda!3557 () Bool)

(assert (= b_lambda!3537 (or (and b!7339 (= lambda!1330 (evidence!103 thiss!1124))) (and b!7338 b_free!461) (and b!7340 b_free!467 (= (evidence!103 that!298) (evidence!103 thiss!1124))) b_lambda!3557)))

(assert (=> (and b!7339 (= lambda!1330 (evidence!103 thiss!1124)) b!7367) d!5757))

(declare-fun b_lambda!3559 () Bool)

(assert (= b_lambda!3533 (or (and b!7342 (= lambda!1331 (x!3997 thiss!1124))) (and b!7340 b_free!465 (= (y!463 that!298) (x!3997 thiss!1124))) (and b!7338 b_free!459 (= (y!463 thiss!1124) (x!3997 thiss!1124))) (and b!7338 b_free!457) (and b!7339 (= lambda!1329 (x!3997 thiss!1124))) (and b!7340 b_free!463 (= (x!3997 that!298) (x!3997 thiss!1124))) b_lambda!3559)))

(declare-fun bs!1662 () Bool)

(declare-fun d!5793 () Bool)

(assert (= bs!1662 (and d!5793 b!7342)))

(assert (=> bs!1662 (= (dynLambda!148 lambda!1331) (++!3 (fromParenthesis!0 (head!378 xs!372)) (Balance!96 0 0)))))

(assert (=> (and b!7342 (= lambda!1331 (x!3997 thiss!1124)) d!5779) d!5793))

(declare-fun bs!1663 () Bool)

(declare-fun d!5795 () Bool)

(assert (= bs!1663 (and d!5795 b!7339)))

(assert (=> bs!1663 (= (dynLambda!148 lambda!1329) (foldRight1!29 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)) lambda!1328))))

(assert (=> bs!1663 m!10185))

(assert (=> bs!1663 m!10185))

(assert (=> bs!1663 m!10187))

(assert (=> bs!1663 m!10187))

(assert (=> bs!1663 m!10189))

(assert (=> (and b!7339 (= lambda!1329 (x!3997 thiss!1124)) d!5779) d!5795))

(declare-fun b_lambda!3561 () Bool)

(assert (= b_lambda!3529 (or b!7337 b_lambda!3561)))

(declare-fun bs!1664 () Bool)

(declare-fun d!5797 () Bool)

(assert (= bs!1664 (and d!5797 b!7337)))

(assert (=> bs!1664 (= (dynLambda!150 lambda!1327 (head!378 xs!372)) (fromParenthesis!0 (head!378 xs!372)))))

(assert (=> bs!1664 m!10173))

(assert (=> b!7362 d!5797))

(push 1)

(assert (not b!7362))

(assert (not b_lambda!3547))

(assert b_and!2087)

(assert (not b_next!987))

(assert (not b_next!995))

(assert (not b_lambda!3545))

(assert (not d!5773))

(assert b_and!2093)

(assert (not b_lambda!3523))

(assert (not b!7356))

(assert b_and!2085)

(assert (not b_lambda!3557))

(assert (not b_lambda!3551))

(assert (not b!7350))

(assert (not b_next!985))

(assert (not b_next!991))

(assert (not b_lambda!3555))

(assert (not bs!1657))

(assert (not bs!1664))

(assert b_and!2089)

(assert (not bs!1663))

(assert (not b_lambda!3521))

(assert (not b_lambda!3525))

(assert b_and!2091)

(assert (not b_next!989))

(assert (not b_lambda!3561))

(assert b_and!2095)

(assert (not b_lambda!3559))

(assert (not bs!1660))

(assert (not b!7364))

(assert (not b_lambda!3553))

(assert (not bs!1658))

(assert (not b_next!993))

(assert (not b_lambda!3549))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2087)

(assert (not b_next!987))

(assert (not b_next!995))

(assert b_and!2093)

(assert b_and!2085)

(assert (not b_next!985))

(assert (not b_next!991))

(assert b_and!2089)

(assert b_and!2091)

(assert (not b_next!989))

(assert b_and!2095)

(assert (not b_next!993))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5799 () Bool)

(declare-fun c!2615 () Bool)

(assert (=> d!5799 (= c!2615 (and (is-Cons!161 (tail!391 (map!150 xs!372 lambda!1327))) (is-Nil!162 (tail!391 (tail!391 (map!150 xs!372 lambda!1327))))))))

(declare-fun e!4255 () Balance!95)

(assert (=> d!5799 (= (foldRight1!29 (tail!391 (map!150 xs!372 lambda!1327)) lambda!1328) e!4255)))

(declare-fun b!7369 () Bool)

(assert (=> b!7369 (= e!4255 (head!379 (tail!391 (map!150 xs!372 lambda!1327))))))

(declare-fun b!7370 () Bool)

(assert (=> b!7370 (= e!4255 (dynLambda!149 lambda!1328 (head!379 (tail!391 (map!150 xs!372 lambda!1327))) (foldRight1!29 (tail!391 (tail!391 (map!150 xs!372 lambda!1327))) lambda!1328)))))

(assert (= (and d!5799 c!2615) b!7369))

(assert (= (and d!5799 (not c!2615)) b!7370))

(declare-fun b_lambda!3563 () Bool)

(assert (=> (not b_lambda!3563) (not b!7370)))

(declare-fun m!10223 () Bool)

(assert (=> b!7370 m!10223))

(assert (=> b!7370 m!10223))

(declare-fun m!10225 () Bool)

(assert (=> b!7370 m!10225))

(assert (=> b!7364 d!5799))

(declare-fun d!5801 () Bool)

(declare-fun c!2616 () Bool)

(assert (=> d!5801 (= c!2616 (and (is-Cons!161 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)))) (is-Nil!162 (tail!391 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)))))))))

(declare-fun e!4256 () Balance!95)

(assert (=> d!5801 (= (foldRight1!29 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))) lambda!1328) e!4256)))

(declare-fun b!7371 () Bool)

(assert (=> b!7371 (= e!4256 (head!379 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)))))))

(declare-fun b!7372 () Bool)

(assert (=> b!7372 (= e!4256 (dynLambda!149 lambda!1328 (head!379 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)))) (foldRight1!29 (tail!391 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)))) lambda!1328)))))

(assert (= (and d!5801 c!2616) b!7371))

(assert (= (and d!5801 (not c!2616)) b!7372))

(declare-fun b_lambda!3565 () Bool)

(assert (=> (not b_lambda!3565) (not b!7372)))

(declare-fun m!10227 () Bool)

(assert (=> b!7372 m!10227))

(assert (=> b!7372 m!10227))

(declare-fun m!10229 () Bool)

(assert (=> b!7372 m!10229))

(assert (=> b!7350 d!5801))

(declare-fun d!5803 () Bool)

(declare-fun lt!1427 () Int)

(assert (=> d!5803 (= lt!1427 (min!4 (extraOpen!88 (head!379 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)))) (extraClose!88 (foldRight1!29 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))) lambda!1328))))))

(assert (=> d!5803 (= (++!3 (head!379 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))) (foldRight1!29 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))) lambda!1328)) (Balance!96 (- (+ (extraOpen!88 (head!379 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)))) (extraOpen!88 (foldRight1!29 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))) lambda!1328))) lt!1427) (- (+ (extraClose!88 (head!379 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)))) (extraClose!88 (foldRight1!29 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162))) lambda!1328))) lt!1427)))))

(declare-fun bs!1665 () Bool)

(assert (= bs!1665 d!5803))

(declare-fun m!10231 () Bool)

(assert (=> bs!1665 m!10231))

(assert (=> bs!1658 d!5803))

(declare-fun lt!1428 () Int)

(declare-fun d!5805 () Bool)

(assert (=> d!5805 (= lt!1428 (min!4 (extraOpen!88 (head!379 (map!150 xs!372 lambda!1327))) (extraClose!88 (foldRight1!29 (tail!391 (map!150 xs!372 lambda!1327)) lambda!1328))))))

(assert (=> d!5805 (= (++!3 (head!379 (map!150 xs!372 lambda!1327)) (foldRight1!29 (tail!391 (map!150 xs!372 lambda!1327)) lambda!1328)) (Balance!96 (- (+ (extraOpen!88 (head!379 (map!150 xs!372 lambda!1327))) (extraOpen!88 (foldRight1!29 (tail!391 (map!150 xs!372 lambda!1327)) lambda!1328))) lt!1428) (- (+ (extraClose!88 (head!379 (map!150 xs!372 lambda!1327))) (extraClose!88 (foldRight1!29 (tail!391 (map!150 xs!372 lambda!1327)) lambda!1328))) lt!1428)))))

(declare-fun bs!1666 () Bool)

(assert (= bs!1666 d!5805))

(declare-fun m!10233 () Bool)

(assert (=> bs!1666 m!10233))

(assert (=> bs!1657 d!5805))

(declare-fun d!5807 () Bool)

(assert (=> d!5807 (= (min!4 (extraOpen!88 (fromParenthesis!0 (head!378 xs!372))) (extraClose!88 (Balance!96 0 0))) (ite (<= (extraOpen!88 (fromParenthesis!0 (head!378 xs!372))) (extraClose!88 (Balance!96 0 0))) (extraOpen!88 (fromParenthesis!0 (head!378 xs!372))) (extraClose!88 (Balance!96 0 0))))))

(assert (=> d!5773 d!5807))

(assert (=> bs!1660 d!5763))

(assert (=> bs!1660 d!5765))

(assert (=> bs!1660 d!5767))

(assert (=> bs!1664 d!5775))

(assert (=> bs!1663 d!5763))

(assert (=> bs!1663 d!5765))

(assert (=> bs!1663 d!5767))

(declare-fun d!5809 () Bool)

(declare-fun c!2617 () Bool)

(assert (=> d!5809 (= c!2617 (is-Nil!161 (tail!390 xs!372)))))

(declare-fun e!4257 () List!164)

(assert (=> d!5809 (= (map!150 (tail!390 xs!372) lambda!1327) e!4257)))

(declare-fun b!7374 () Bool)

(assert (=> b!7374 (= e!4257 Nil!162)))

(declare-fun b!7375 () Bool)

(assert (=> b!7375 (= e!4257 (Cons!161 (dynLambda!150 lambda!1327 (head!378 (tail!390 xs!372))) (map!150 (tail!390 (tail!390 xs!372)) lambda!1327)))))

(assert (= (and d!5809 c!2617) b!7374))

(assert (= (and d!5809 (not c!2617)) b!7375))

(declare-fun b_lambda!3567 () Bool)

(assert (=> (not b_lambda!3567) (not b!7375)))

(declare-fun m!10235 () Bool)

(assert (=> b!7375 m!10235))

(declare-fun m!10237 () Bool)

(assert (=> b!7375 m!10237))

(assert (=> b!7362 d!5809))

(declare-fun d!5811 () Bool)

(declare-fun c!2618 () Bool)

(assert (=> d!5811 (= c!2618 (is-Nil!162 (tail!391 (map!150 xs!372 lambda!1327))))))

(declare-fun e!4258 () List!164)

(assert (=> d!5811 (= (append!62 (tail!391 (map!150 xs!372 lambda!1327)) (Cons!161 (Balance!96 0 0) Nil!162)) e!4258)))

(declare-fun b!7376 () Bool)

(assert (=> b!7376 (= e!4258 (Cons!161 (Balance!96 0 0) Nil!162))))

(declare-fun b!7377 () Bool)

(assert (=> b!7377 (= e!4258 (Cons!161 (head!379 (tail!391 (map!150 xs!372 lambda!1327))) (append!62 (tail!391 (tail!391 (map!150 xs!372 lambda!1327))) (Cons!161 (Balance!96 0 0) Nil!162))))))

(assert (= (and d!5811 c!2618) b!7376))

(assert (= (and d!5811 (not c!2618)) b!7377))

(declare-fun m!10239 () Bool)

(assert (=> b!7377 m!10239))

(assert (=> b!7356 d!5811))

(declare-fun b_lambda!3569 () Bool)

(assert (= b_lambda!3563 (or b!7337 b_lambda!3569)))

(declare-fun bs!1667 () Bool)

(declare-fun d!5813 () Bool)

(assert (= bs!1667 (and d!5813 b!7337)))

(assert (=> bs!1667 (= (dynLambda!149 lambda!1328 (head!379 (tail!391 (map!150 xs!372 lambda!1327))) (foldRight1!29 (tail!391 (tail!391 (map!150 xs!372 lambda!1327))) lambda!1328)) (++!3 (head!379 (tail!391 (map!150 xs!372 lambda!1327))) (foldRight1!29 (tail!391 (tail!391 (map!150 xs!372 lambda!1327))) lambda!1328)))))

(assert (=> bs!1667 m!10223))

(declare-fun m!10241 () Bool)

(assert (=> bs!1667 m!10241))

(assert (=> b!7370 d!5813))

(declare-fun b_lambda!3571 () Bool)

(assert (= b_lambda!3565 (or b!7337 b_lambda!3571)))

(declare-fun bs!1668 () Bool)

(declare-fun d!5815 () Bool)

(assert (= bs!1668 (and d!5815 b!7337)))

(assert (=> bs!1668 (= (dynLambda!149 lambda!1328 (head!379 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)))) (foldRight1!29 (tail!391 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)))) lambda!1328)) (++!3 (head!379 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)))) (foldRight1!29 (tail!391 (tail!391 (append!62 (map!150 xs!372 lambda!1327) (Cons!161 (Balance!96 0 0) Nil!162)))) lambda!1328)))))

(assert (=> bs!1668 m!10227))

(declare-fun m!10243 () Bool)

(assert (=> bs!1668 m!10243))

(assert (=> b!7372 d!5815))

(declare-fun b_lambda!3573 () Bool)

(assert (= b_lambda!3567 (or b!7337 b_lambda!3573)))

(declare-fun bs!1669 () Bool)

(declare-fun d!5817 () Bool)

(assert (= bs!1669 (and d!5817 b!7337)))

(assert (=> bs!1669 (= (dynLambda!150 lambda!1327 (head!378 (tail!390 xs!372))) (fromParenthesis!0 (head!378 (tail!390 xs!372))))))

(declare-fun m!10245 () Bool)

(assert (=> bs!1669 m!10245))

(assert (=> b!7375 d!5817))

(push 1)

(assert (not b!7375))

(assert (not b_lambda!3547))

(assert (not b_lambda!3569))

(assert b_and!2087)

(assert (not b_next!987))

(assert (not b_next!995))

(assert (not b_lambda!3545))

(assert b_and!2093)

(assert (not b_lambda!3523))

(assert b_and!2085)

(assert (not b_lambda!3557))

(assert (not b!7377))

(assert (not b_lambda!3551))

(assert (not b_next!985))

(assert (not b_next!991))

(assert (not b_lambda!3555))

(assert (not d!5805))

(assert b_and!2089)

(assert (not b!7372))

(assert (not d!5803))

(assert (not b_lambda!3573))

(assert (not b_lambda!3521))

(assert (not b_lambda!3571))

(assert (not b_lambda!3525))

(assert b_and!2091)

(assert (not b_next!989))

(assert (not b_lambda!3561))

(assert b_and!2095)

(assert (not b_lambda!3559))

(assert (not bs!1667))

(assert (not b!7370))

(assert (not b_lambda!3553))

(assert (not bs!1668))

(assert (not bs!1669))

(assert (not b_next!993))

(assert (not b_lambda!3549))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2087)

(assert (not b_next!987))

(assert (not b_next!995))

(assert b_and!2093)

(assert b_and!2085)

(assert (not b_next!985))

(assert (not b_next!991))

(assert b_and!2089)

(assert b_and!2091)

(assert (not b_next!989))

(assert b_and!2095)

(assert (not b_next!993))

(check-sat)

(pop 1)

