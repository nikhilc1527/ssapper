; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1424 () Bool)

(assert start!1424)

(declare-fun b!7521 () Bool)

(declare-fun b_free!537 () Bool)

(declare-fun b_next!1121 () Bool)

(assert (=> b!7521 (= b_free!537 (not b_next!1121))))

(declare-fun tp!936 () Bool)

(declare-fun b_and!2265 () Bool)

(assert (=> b!7521 (= tp!936 b_and!2265)))

(declare-fun b_free!539 () Bool)

(declare-fun b_next!1123 () Bool)

(assert (=> b!7521 (= b_free!539 (not b_next!1123))))

(declare-fun tp!938 () Bool)

(declare-fun b_and!2267 () Bool)

(assert (=> b!7521 (= tp!938 b_and!2267)))

(declare-fun b_free!541 () Bool)

(declare-fun b_next!1125 () Bool)

(assert (=> b!7521 (= b_free!541 (not b_next!1125))))

(declare-fun tp!939 () Bool)

(declare-fun b_and!2269 () Bool)

(assert (=> b!7521 (= tp!939 b_and!2269)))

(declare-fun b!7522 () Bool)

(declare-fun b_free!543 () Bool)

(declare-fun b_next!1127 () Bool)

(assert (=> b!7522 (= b_free!543 (not b_next!1127))))

(declare-fun tp!937 () Bool)

(declare-fun b_and!2271 () Bool)

(assert (=> b!7522 (= tp!937 b_and!2271)))

(declare-fun b_free!545 () Bool)

(declare-fun b_next!1129 () Bool)

(assert (=> b!7522 (= b_free!545 (not b_next!1129))))

(declare-fun tp!940 () Bool)

(declare-fun b_and!2273 () Bool)

(assert (=> b!7522 (= tp!940 b_and!2273)))

(declare-fun b!7519 () Bool)

(assert (=> b!7519 true))

(declare-datatypes () ((Balance!109 (Balance!110 (extraOpen!95 Int) (extraClose!95 Int)))))

(declare-datatypes () ((EqEvidence!86 (EqEvidence!87 (x!4097 Int) (y!473 Int) (evidence!110 Int)))))

(declare-fun thiss!1122 () EqEvidence!86)

(declare-fun lambda!1424 () Int)

(declare-fun b_next!1131 () Bool)

(assert (=> b!7521 (= b_next!1121 (or (and b!7519 (= lambda!1424 (x!4097 thiss!1122))) b_next!1131))))

(declare-fun b_next!1133 () Bool)

(assert (=> b!7521 (= b_next!1123 (or (and b!7519 (= lambda!1424 (y!473 thiss!1122))) b_next!1133))))

(declare-fun b_next!1135 () Bool)

(declare-datatypes () ((EqProof!42 (EqProof!43 (x!4098 Int) (y!474 Int)))))

(declare-fun that!302 () EqProof!42)

(assert (=> b!7522 (= b_next!1127 (or (and b!7519 (= lambda!1424 (x!4098 that!302))) b_next!1135))))

(declare-fun b_next!1137 () Bool)

(assert (=> b!7522 (= b_next!1129 (or (and b!7519 (= lambda!1424 (y!474 that!302))) b_next!1137))))

(declare-fun m!10367 () Bool)

(assert (=> b!7519 m!10367))

(declare-fun lambda!1425 () Int)

(assert (=> b!7519 (not (= lambda!1425 lambda!1424))))

(assert (=> b!7519 true))

(declare-fun dynLambda!159 (Int) Balance!109)

(assert (=> (and b!7521 b!7519 (= (dynLambda!159 lambda!1425) (dynLambda!159 (x!4097 thiss!1122)))) (= lambda!1425 (x!4097 thiss!1122))))

(assert (=> (and b!7521 b!7519 (= (dynLambda!159 lambda!1425) (dynLambda!159 (y!473 thiss!1122)))) (= lambda!1425 (y!473 thiss!1122))))

(assert (=> (and b!7522 b!7519 (= (dynLambda!159 lambda!1425) (dynLambda!159 (x!4098 that!302)))) (= lambda!1425 (x!4098 that!302))))

(assert (=> (and b!7522 b!7519 (= (dynLambda!159 lambda!1425) (dynLambda!159 (y!474 that!302)))) (= lambda!1425 (y!474 that!302))))

(declare-fun b_next!1139 () Bool)

(assert (=> b!7521 (= b_next!1131 (or (and b!7519 (= lambda!1425 (x!4097 thiss!1122))) b_next!1139))))

(declare-fun b_next!1141 () Bool)

(assert (=> b!7521 (= b_next!1133 (or (and b!7519 (= lambda!1425 (y!473 thiss!1122))) b_next!1141))))

(declare-fun b_next!1143 () Bool)

(assert (=> b!7522 (= b_next!1135 (or (and b!7519 (= lambda!1425 (x!4098 that!302))) b_next!1143))))

(declare-fun b_next!1145 () Bool)

(assert (=> b!7522 (= b_next!1137 (or (and b!7519 (= lambda!1425 (y!474 that!302))) b_next!1145))))

(declare-fun m!10369 () Bool)

(assert (=> b!7519 m!10369))

(declare-fun lambda!1426 () Int)

(declare-fun dynLambda!160 (Int) Bool)

(assert (=> (and b!7521 b!7519 (= (dynLambda!160 lambda!1426) (dynLambda!160 (evidence!110 thiss!1122)))) (= lambda!1426 (evidence!110 thiss!1122))))

(declare-fun b_next!1147 () Bool)

(assert (=> b!7521 (= b_next!1125 (or (and b!7519 (= lambda!1426 (evidence!110 thiss!1122))) b_next!1147))))

(declare-fun bs!1715 () Bool)

(declare-fun b!7520 () Bool)

(assert (= bs!1715 (and b!7520 b!7519)))

(declare-fun lambda!1427 () Int)

(assert (=> bs!1715 (not (= lambda!1427 lambda!1424))))

(assert (=> bs!1715 (not (= lambda!1427 lambda!1425))))

(assert (=> b!7520 true))

(declare-fun b_next!1149 () Bool)

(assert (=> b!7521 (= b_next!1139 (or (and b!7520 (= lambda!1427 (x!4097 thiss!1122))) b_next!1149))))

(declare-fun b_next!1151 () Bool)

(assert (=> b!7521 (= b_next!1141 (or (and b!7520 (= lambda!1427 (y!473 thiss!1122))) b_next!1151))))

(declare-fun b_next!1153 () Bool)

(assert (=> b!7522 (= b_next!1143 (or (and b!7520 (= lambda!1427 (x!4098 that!302))) b_next!1153))))

(declare-fun b_next!1155 () Bool)

(assert (=> b!7522 (= b_next!1145 (or (and b!7520 (= lambda!1427 (y!474 that!302))) b_next!1155))))

(declare-fun b!7517 () Bool)

(declare-fun res!2193 () Bool)

(declare-fun e!4336 () Bool)

(assert (=> b!7517 (=> (not res!2193) (not e!4336))))

(assert (=> b!7517 (= res!2193 (dynLambda!160 (evidence!110 thiss!1122)))))

(declare-fun b!7518 () Bool)

(declare-fun res!2196 () Bool)

(assert (=> b!7518 (=> (not res!2196) (not e!4336))))

(declare-datatypes () ((Parenthesis!43 (CloseParenthesis!42) (OpenParenthesis!42))))

(declare-datatypes () ((List!169 (Nil!167) (Cons!166 (head!384 Parenthesis!43) (tail!396 List!169)))))

(declare-fun xs!372 () List!169)

(assert (=> b!7518 (= res!2196 (and (is-Cons!166 xs!372) (is-Nil!167 (tail!396 xs!372))))))

(declare-fun res!2195 () Bool)

(assert (=> start!1424 (=> (not res!2195) (not e!4336))))

(declare-fun isEmpty!144 (List!169) Bool)

(assert (=> start!1424 (= res!2195 (not (isEmpty!144 xs!372)))))

(assert (=> start!1424 e!4336))

(assert (=> start!1424 true))

(declare-fun e!4335 () Bool)

(declare-fun inv!268 (EqEvidence!86) Bool)

(assert (=> start!1424 (and (inv!268 thiss!1122) e!4335)))

(declare-fun e!4334 () Bool)

(declare-fun inv!269 (EqProof!42) Bool)

(assert (=> start!1424 (and (inv!269 that!302) e!4334)))

(declare-fun res!2197 () Bool)

(assert (=> b!7519 (=> (not res!2197) (not e!4336))))

(assert (=> b!7519 (= res!2197 (= thiss!1122 (EqEvidence!87 lambda!1424 lambda!1425 lambda!1426)))))

(declare-fun res!2192 () Bool)

(assert (=> b!7520 (=> (not res!2192) (not e!4336))))

(assert (=> b!7520 (= res!2192 (= that!302 (EqProof!43 lambda!1427 lambda!1427)))))

(assert (=> b!7521 (= e!4335 (and tp!936 tp!938 tp!939))))

(assert (=> b!7522 (= e!4334 (and tp!937 tp!940))))

(declare-fun b!7523 () Bool)

(assert (=> b!7523 (= e!4336 (not (= (dynLambda!159 (y!473 thiss!1122)) (dynLambda!159 (x!4098 that!302)))))))

(declare-fun b!7524 () Bool)

(declare-fun res!2194 () Bool)

(assert (=> b!7524 (=> (not res!2194) (not e!4336))))

(declare-datatypes () ((ProofOps!72 (ProofOps!73 (prop!146 Bool)))))

(declare-fun thiss!1106 () ProofOps!72)

(declare-fun lambda!1423 () Int)

(declare-fun lambda!1422 () Int)

(declare-datatypes () ((List!170 (Nil!168) (Cons!167 (head!385 Balance!109) (tail!397 List!170)))))

(declare-fun foldRight1!32 (List!170 Int) Balance!109)

(declare-fun append!65 (List!170 List!170) List!170)

(declare-fun map!153 (List!169 Int) List!170)

(assert (=> b!7524 (= res!2194 (= thiss!1106 (ProofOps!73 (= (foldRight1!32 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168)) lambda!1423) (foldRight1!32 (map!153 xs!372 lambda!1422) lambda!1423)))))))

(assert (= (and start!1424 res!2195) b!7524))

(assert (= (and b!7524 res!2194) b!7518))

(assert (= (and b!7518 res!2196) b!7519))

(assert (= (and b!7519 res!2197) b!7520))

(assert (= (and b!7520 res!2192) b!7517))

(assert (= (and b!7517 res!2193) b!7523))

(assert (= start!1424 b!7521))

(assert (= start!1424 b!7522))

(declare-fun b_lambda!3659 () Bool)

(assert (=> (not b_lambda!3659) (not b!7517)))

(declare-fun t!1571 () Bool)

(declare-fun tb!1231 () Bool)

(assert (=> (and b!7521 (= (evidence!110 thiss!1122) (evidence!110 thiss!1122)) t!1571) tb!1231))

(declare-fun result!1271 () Bool)

(assert (=> tb!1231 (= result!1271 true)))

(assert (=> b!7517 t!1571))

(declare-fun b_and!2275 () Bool)

(assert (= b_and!2269 (and (=> t!1571 result!1271) b_and!2275)))

(declare-fun b_lambda!3661 () Bool)

(assert (=> (not b_lambda!3661) (not b!7523)))

(declare-fun t!1573 () Bool)

(declare-fun tb!1233 () Bool)

(assert (=> (and b!7521 (= (x!4097 thiss!1122) (y!473 thiss!1122)) t!1573) tb!1233))

(declare-fun result!1273 () Bool)

(assert (=> tb!1233 (= result!1273 true)))

(assert (=> b!7523 t!1573))

(declare-fun b_and!2277 () Bool)

(assert (= b_and!2265 (and (=> t!1573 result!1273) b_and!2277)))

(declare-fun t!1575 () Bool)

(declare-fun tb!1235 () Bool)

(assert (=> (and b!7521 (= (y!473 thiss!1122) (y!473 thiss!1122)) t!1575) tb!1235))

(declare-fun result!1275 () Bool)

(assert (=> tb!1235 (= result!1275 true)))

(assert (=> b!7523 t!1575))

(declare-fun b_and!2279 () Bool)

(assert (= b_and!2267 (and (=> t!1575 result!1275) b_and!2279)))

(declare-fun tb!1237 () Bool)

(declare-fun t!1577 () Bool)

(assert (=> (and b!7522 (= (x!4098 that!302) (y!473 thiss!1122)) t!1577) tb!1237))

(declare-fun result!1277 () Bool)

(assert (=> tb!1237 (= result!1277 true)))

(assert (=> b!7523 t!1577))

(declare-fun b_and!2281 () Bool)

(assert (= b_and!2271 (and (=> t!1577 result!1277) b_and!2281)))

(declare-fun t!1579 () Bool)

(declare-fun tb!1239 () Bool)

(assert (=> (and b!7522 (= (y!474 that!302) (y!473 thiss!1122)) t!1579) tb!1239))

(declare-fun result!1279 () Bool)

(assert (=> tb!1239 (= result!1279 true)))

(assert (=> b!7523 t!1579))

(declare-fun b_and!2283 () Bool)

(assert (= b_and!2273 (and (=> t!1579 result!1279) b_and!2283)))

(declare-fun b_lambda!3663 () Bool)

(assert (=> (not b_lambda!3663) (not b!7523)))

(declare-fun tb!1241 () Bool)

(declare-fun t!1581 () Bool)

(assert (=> (and b!7521 (= (x!4097 thiss!1122) (x!4098 that!302)) t!1581) tb!1241))

(declare-fun result!1281 () Bool)

(assert (=> tb!1241 (= result!1281 true)))

(assert (=> b!7523 t!1581))

(declare-fun b_and!2285 () Bool)

(assert (= b_and!2277 (and (=> t!1581 result!1281) b_and!2285)))

(declare-fun tb!1243 () Bool)

(declare-fun t!1583 () Bool)

(assert (=> (and b!7521 (= (y!473 thiss!1122) (x!4098 that!302)) t!1583) tb!1243))

(declare-fun result!1283 () Bool)

(assert (=> tb!1243 (= result!1283 true)))

(assert (=> b!7523 t!1583))

(declare-fun b_and!2287 () Bool)

(assert (= b_and!2279 (and (=> t!1583 result!1283) b_and!2287)))

(declare-fun t!1585 () Bool)

(declare-fun tb!1245 () Bool)

(assert (=> (and b!7522 (= (x!4098 that!302) (x!4098 that!302)) t!1585) tb!1245))

(declare-fun result!1285 () Bool)

(assert (=> tb!1245 (= result!1285 true)))

(assert (=> b!7523 t!1585))

(declare-fun b_and!2289 () Bool)

(assert (= b_and!2281 (and (=> t!1585 result!1285) b_and!2289)))

(declare-fun t!1587 () Bool)

(declare-fun tb!1247 () Bool)

(assert (=> (and b!7522 (= (y!474 that!302) (x!4098 that!302)) t!1587) tb!1247))

(declare-fun result!1287 () Bool)

(assert (=> tb!1247 (= result!1287 true)))

(assert (=> b!7523 t!1587))

(declare-fun b_and!2291 () Bool)

(assert (= b_and!2283 (and (=> t!1587 result!1287) b_and!2291)))

(declare-fun m!10371 () Bool)

(assert (=> b!7517 m!10371))

(declare-fun m!10373 () Bool)

(assert (=> start!1424 m!10373))

(declare-fun m!10375 () Bool)

(assert (=> start!1424 m!10375))

(declare-fun m!10377 () Bool)

(assert (=> start!1424 m!10377))

(declare-fun m!10379 () Bool)

(assert (=> b!7523 m!10379))

(declare-fun m!10381 () Bool)

(assert (=> b!7523 m!10381))

(declare-fun m!10383 () Bool)

(assert (=> b!7524 m!10383))

(declare-fun m!10385 () Bool)

(assert (=> b!7524 m!10385))

(assert (=> b!7524 m!10385))

(declare-fun m!10387 () Bool)

(assert (=> b!7524 m!10387))

(assert (=> b!7524 m!10383))

(assert (=> b!7524 m!10383))

(declare-fun m!10389 () Bool)

(assert (=> b!7524 m!10389))

(assert (=> b!7524 m!10383))

(push 1)

(assert (not b_next!1151))

(assert (not b_lambda!3659))

(assert (not b_lambda!3663))

(assert b_and!2285)

(assert (not b!7519))

(assert b_and!2287)

(assert (not b_next!1149))

(assert (not b_next!1155))

(assert (not start!1424))

(assert (not b_next!1147))

(assert b_and!2291)

(assert b_and!2275)

(assert (not b!7524))

(assert b_and!2289)

(assert (not b_lambda!3661))

(assert (not b_next!1153))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1151))

(assert b_and!2285)

(assert b_and!2287)

(assert (not b_next!1149))

(assert (not b_next!1155))

(assert (not b_next!1147))

(assert b_and!2291)

(assert b_and!2275)

(assert b_and!2289)

(assert (not b_next!1153))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3665 () Bool)

(assert (= b_lambda!3659 (or (and b!7519 (= lambda!1426 (evidence!110 thiss!1122))) (and b!7521 b_free!541) b_lambda!3665)))

(declare-fun bs!1716 () Bool)

(declare-fun d!5927 () Bool)

(assert (= bs!1716 (and d!5927 b!7519)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!1716 (= (dynLambda!160 lambda!1426) trivial!1)))

(assert (=> (and b!7519 (= lambda!1426 (evidence!110 thiss!1122)) b!7517) d!5927))

(declare-fun b_lambda!3667 () Bool)

(assert (= b_lambda!3663 (or (and b!7522 b_free!543) (and b!7521 b_free!539 (= (y!473 thiss!1122) (x!4098 that!302))) (and b!7519 (= lambda!1425 (x!4098 that!302))) (and b!7520 (= lambda!1427 (x!4098 that!302))) (and b!7522 b_free!545 (= (y!474 that!302) (x!4098 that!302))) (and b!7521 b_free!537 (= (x!4097 thiss!1122) (x!4098 that!302))) (and b!7519 (= lambda!1424 (x!4098 that!302))) b_lambda!3667)))

(declare-fun bs!1717 () Bool)

(declare-fun d!5929 () Bool)

(assert (= bs!1717 (and d!5929 b!7520)))

(assert (=> bs!1717 (= (dynLambda!159 lambda!1427) (foldRight1!32 (map!153 xs!372 lambda!1422) lambda!1423))))

(assert (=> bs!1717 m!10383))

(assert (=> bs!1717 m!10383))

(assert (=> bs!1717 m!10389))

(assert (=> (and b!7520 (= lambda!1427 (x!4098 that!302)) b!7523) d!5929))

(declare-fun bs!1718 () Bool)

(declare-fun d!5931 () Bool)

(assert (= bs!1718 (and d!5931 b!7519)))

(declare-fun fromParenthesis!0 (Parenthesis!43) Balance!109)

(assert (=> bs!1718 (= (dynLambda!159 lambda!1425) (fromParenthesis!0 (head!384 xs!372)))))

(assert (=> (and b!7519 (= lambda!1425 (x!4098 that!302)) b!7523) d!5931))

(declare-fun bs!1719 () Bool)

(declare-fun d!5933 () Bool)

(assert (= bs!1719 (and d!5933 b!7519)))

(assert (=> bs!1719 (= (dynLambda!159 lambda!1424) (foldRight1!32 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168)) lambda!1423))))

(assert (=> bs!1719 m!10383))

(assert (=> bs!1719 m!10383))

(assert (=> bs!1719 m!10385))

(assert (=> bs!1719 m!10385))

(assert (=> bs!1719 m!10387))

(assert (=> (and b!7519 (= lambda!1424 (x!4098 that!302)) b!7523) d!5933))

(declare-fun b_lambda!3669 () Bool)

(assert (= b_lambda!3661 (or (and b!7521 b_free!539) (and b!7519 (= lambda!1425 (y!473 thiss!1122))) (and b!7522 b_free!543 (= (x!4098 that!302) (y!473 thiss!1122))) (and b!7521 b_free!537 (= (x!4097 thiss!1122) (y!473 thiss!1122))) (and b!7522 b_free!545 (= (y!474 that!302) (y!473 thiss!1122))) (and b!7520 (= lambda!1427 (y!473 thiss!1122))) (and b!7519 (= lambda!1424 (y!473 thiss!1122))) b_lambda!3669)))

(declare-fun bs!1720 () Bool)

(declare-fun d!5935 () Bool)

(assert (= bs!1720 (and d!5935 b!7520)))

(assert (=> bs!1720 (= (dynLambda!159 lambda!1427) (foldRight1!32 (map!153 xs!372 lambda!1422) lambda!1423))))

(assert (=> bs!1720 m!10383))

(assert (=> bs!1720 m!10383))

(assert (=> bs!1720 m!10389))

(assert (=> (and b!7520 (= lambda!1427 (y!473 thiss!1122)) b!7523) d!5935))

(declare-fun bs!1721 () Bool)

(declare-fun d!5937 () Bool)

(assert (= bs!1721 (and d!5937 b!7519)))

(assert (=> bs!1721 (= (dynLambda!159 lambda!1425) (fromParenthesis!0 (head!384 xs!372)))))

(assert (=> (and b!7519 (= lambda!1425 (y!473 thiss!1122)) b!7523) d!5937))

(declare-fun bs!1722 () Bool)

(declare-fun d!5939 () Bool)

(assert (= bs!1722 (and d!5939 b!7519)))

(assert (=> bs!1722 (= (dynLambda!159 lambda!1424) (foldRight1!32 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168)) lambda!1423))))

(assert (=> bs!1722 m!10383))

(assert (=> bs!1722 m!10383))

(assert (=> bs!1722 m!10385))

(assert (=> bs!1722 m!10385))

(assert (=> bs!1722 m!10387))

(assert (=> (and b!7519 (= lambda!1424 (y!473 thiss!1122)) b!7523) d!5939))

(push 1)

(assert (not bs!1717))

(assert (not b_next!1151))

(assert b_and!2285)

(assert (not b_lambda!3665))

(assert (not b_lambda!3667))

(assert (not b!7519))

(assert b_and!2287)

(assert (not bs!1722))

(assert (not bs!1719))

(assert (not b_next!1149))

(assert (not b_next!1155))

(assert (not start!1424))

(assert (not b_next!1147))

(assert b_and!2291)

(assert (not b_lambda!3669))

(assert b_and!2275)

(assert (not b!7524))

(assert b_and!2289)

(assert (not bs!1720))

(assert (not b_next!1153))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1151))

(assert b_and!2285)

(assert b_and!2287)

(assert (not b_next!1149))

(assert (not b_next!1155))

(assert (not b_next!1147))

(assert b_and!2291)

(assert b_and!2275)

(assert b_and!2289)

(assert (not b_next!1153))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5941 () Bool)

(declare-fun c!2641 () Bool)

(assert (=> d!5941 (= c!2641 (and (is-Cons!167 (map!153 xs!372 lambda!1422)) (is-Nil!168 (tail!397 (map!153 xs!372 lambda!1422)))))))

(declare-fun e!4339 () Balance!109)

(assert (=> d!5941 (= (foldRight1!32 (map!153 xs!372 lambda!1422) lambda!1423) e!4339)))

(declare-fun b!7531 () Bool)

(assert (=> b!7531 (= e!4339 (head!385 (map!153 xs!372 lambda!1422)))))

(declare-fun b!7532 () Bool)

(declare-fun dynLambda!161 (Int Balance!109 Balance!109) Balance!109)

(assert (=> b!7532 (= e!4339 (dynLambda!161 lambda!1423 (head!385 (map!153 xs!372 lambda!1422)) (foldRight1!32 (tail!397 (map!153 xs!372 lambda!1422)) lambda!1423)))))

(assert (= (and d!5941 c!2641) b!7531))

(assert (= (and d!5941 (not c!2641)) b!7532))

(declare-fun b_lambda!3671 () Bool)

(assert (=> (not b_lambda!3671) (not b!7532)))

(declare-fun m!10391 () Bool)

(assert (=> b!7532 m!10391))

(assert (=> b!7532 m!10391))

(declare-fun m!10393 () Bool)

(assert (=> b!7532 m!10393))

(assert (=> bs!1720 d!5941))

(declare-fun d!5943 () Bool)

(declare-fun c!2644 () Bool)

(assert (=> d!5943 (= c!2644 (is-Nil!167 xs!372))))

(declare-fun e!4342 () List!170)

(assert (=> d!5943 (= (map!153 xs!372 lambda!1422) e!4342)))

(declare-fun b!7537 () Bool)

(assert (=> b!7537 (= e!4342 Nil!168)))

(declare-fun b!7538 () Bool)

(declare-fun dynLambda!162 (Int Parenthesis!43) Balance!109)

(assert (=> b!7538 (= e!4342 (Cons!167 (dynLambda!162 lambda!1422 (head!384 xs!372)) (map!153 (tail!396 xs!372) lambda!1422)))))

(assert (= (and d!5943 c!2644) b!7537))

(assert (= (and d!5943 (not c!2644)) b!7538))

(declare-fun b_lambda!3673 () Bool)

(assert (=> (not b_lambda!3673) (not b!7538)))

(declare-fun m!10395 () Bool)

(assert (=> b!7538 m!10395))

(declare-fun m!10397 () Bool)

(assert (=> b!7538 m!10397))

(assert (=> bs!1720 d!5943))

(assert (=> bs!1717 d!5941))

(assert (=> bs!1717 d!5943))

(declare-fun d!5945 () Bool)

(assert (=> d!5945 (= (isEmpty!144 xs!372) (is-Nil!167 xs!372))))

(assert (=> start!1424 d!5945))

(declare-fun d!5947 () Bool)

(declare-fun res!2200 () Bool)

(declare-fun e!4345 () Bool)

(assert (=> d!5947 (=> (not res!2200) (not e!4345))))

(assert (=> d!5947 (= res!2200 (= (dynLambda!159 (x!4097 thiss!1122)) (dynLambda!159 (y!473 thiss!1122))))))

(assert (=> d!5947 (= (inv!268 thiss!1122) e!4345)))

(declare-fun b!7541 () Bool)

(assert (=> b!7541 (= e!4345 (dynLambda!160 (evidence!110 thiss!1122)))))

(assert (= (and d!5947 res!2200) b!7541))

(declare-fun b_lambda!3675 () Bool)

(assert (=> (not b_lambda!3675) (not d!5947)))

(declare-fun t!1589 () Bool)

(declare-fun tb!1249 () Bool)

(assert (=> (and b!7521 (= (x!4097 thiss!1122) (x!4097 thiss!1122)) t!1589) tb!1249))

(declare-fun result!1289 () Bool)

(assert (=> tb!1249 (= result!1289 true)))

(assert (=> d!5947 t!1589))

(declare-fun b_and!2293 () Bool)

(assert (= b_and!2285 (and (=> t!1589 result!1289) b_and!2293)))

(declare-fun t!1591 () Bool)

(declare-fun tb!1251 () Bool)

(assert (=> (and b!7521 (= (y!473 thiss!1122) (x!4097 thiss!1122)) t!1591) tb!1251))

(declare-fun result!1291 () Bool)

(assert (=> tb!1251 (= result!1291 true)))

(assert (=> d!5947 t!1591))

(declare-fun b_and!2295 () Bool)

(assert (= b_and!2287 (and (=> t!1591 result!1291) b_and!2295)))

(declare-fun tb!1253 () Bool)

(declare-fun t!1593 () Bool)

(assert (=> (and b!7522 (= (x!4098 that!302) (x!4097 thiss!1122)) t!1593) tb!1253))

(declare-fun result!1293 () Bool)

(assert (=> tb!1253 (= result!1293 true)))

(assert (=> d!5947 t!1593))

(declare-fun b_and!2297 () Bool)

(assert (= b_and!2289 (and (=> t!1593 result!1293) b_and!2297)))

(declare-fun t!1595 () Bool)

(declare-fun tb!1255 () Bool)

(assert (=> (and b!7522 (= (y!474 that!302) (x!4097 thiss!1122)) t!1595) tb!1255))

(declare-fun result!1295 () Bool)

(assert (=> tb!1255 (= result!1295 true)))

(assert (=> d!5947 t!1595))

(declare-fun b_and!2299 () Bool)

(assert (= b_and!2291 (and (=> t!1595 result!1295) b_and!2299)))

(declare-fun b_lambda!3677 () Bool)

(assert (=> (not b_lambda!3677) (not d!5947)))

(assert (=> d!5947 t!1573))

(declare-fun b_and!2301 () Bool)

(assert (= b_and!2293 (and (=> t!1573 result!1273) b_and!2301)))

(assert (=> d!5947 t!1575))

(declare-fun b_and!2303 () Bool)

(assert (= b_and!2295 (and (=> t!1575 result!1275) b_and!2303)))

(assert (=> d!5947 t!1577))

(declare-fun b_and!2305 () Bool)

(assert (= b_and!2297 (and (=> t!1577 result!1277) b_and!2305)))

(assert (=> d!5947 t!1579))

(declare-fun b_and!2307 () Bool)

(assert (= b_and!2299 (and (=> t!1579 result!1279) b_and!2307)))

(declare-fun b_lambda!3679 () Bool)

(assert (=> (not b_lambda!3679) (not b!7541)))

(assert (=> b!7541 t!1571))

(declare-fun b_and!2309 () Bool)

(assert (= b_and!2275 (and (=> t!1571 result!1271) b_and!2309)))

(declare-fun m!10399 () Bool)

(assert (=> d!5947 m!10399))

(assert (=> d!5947 m!10379))

(assert (=> b!7541 m!10371))

(assert (=> start!1424 d!5947))

(declare-fun d!5949 () Bool)

(assert (=> d!5949 (= (inv!269 that!302) (= (dynLambda!159 (x!4098 that!302)) (dynLambda!159 (y!474 that!302))))))

(declare-fun b_lambda!3681 () Bool)

(assert (=> (not b_lambda!3681) (not d!5949)))

(assert (=> d!5949 t!1581))

(declare-fun b_and!2311 () Bool)

(assert (= b_and!2301 (and (=> t!1581 result!1281) b_and!2311)))

(assert (=> d!5949 t!1583))

(declare-fun b_and!2313 () Bool)

(assert (= b_and!2303 (and (=> t!1583 result!1283) b_and!2313)))

(assert (=> d!5949 t!1585))

(declare-fun b_and!2315 () Bool)

(assert (= b_and!2305 (and (=> t!1585 result!1285) b_and!2315)))

(assert (=> d!5949 t!1587))

(declare-fun b_and!2317 () Bool)

(assert (= b_and!2307 (and (=> t!1587 result!1287) b_and!2317)))

(declare-fun b_lambda!3683 () Bool)

(assert (=> (not b_lambda!3683) (not d!5949)))

(declare-fun tb!1257 () Bool)

(declare-fun t!1597 () Bool)

(assert (=> (and b!7521 (= (x!4097 thiss!1122) (y!474 that!302)) t!1597) tb!1257))

(declare-fun result!1297 () Bool)

(assert (=> tb!1257 (= result!1297 true)))

(assert (=> d!5949 t!1597))

(declare-fun b_and!2319 () Bool)

(assert (= b_and!2311 (and (=> t!1597 result!1297) b_and!2319)))

(declare-fun t!1599 () Bool)

(declare-fun tb!1259 () Bool)

(assert (=> (and b!7521 (= (y!473 thiss!1122) (y!474 that!302)) t!1599) tb!1259))

(declare-fun result!1299 () Bool)

(assert (=> tb!1259 (= result!1299 true)))

(assert (=> d!5949 t!1599))

(declare-fun b_and!2321 () Bool)

(assert (= b_and!2313 (and (=> t!1599 result!1299) b_and!2321)))

(declare-fun t!1601 () Bool)

(declare-fun tb!1261 () Bool)

(assert (=> (and b!7522 (= (x!4098 that!302) (y!474 that!302)) t!1601) tb!1261))

(declare-fun result!1301 () Bool)

(assert (=> tb!1261 (= result!1301 true)))

(assert (=> d!5949 t!1601))

(declare-fun b_and!2323 () Bool)

(assert (= b_and!2315 (and (=> t!1601 result!1301) b_and!2323)))

(declare-fun t!1603 () Bool)

(declare-fun tb!1263 () Bool)

(assert (=> (and b!7522 (= (y!474 that!302) (y!474 that!302)) t!1603) tb!1263))

(declare-fun result!1303 () Bool)

(assert (=> tb!1263 (= result!1303 true)))

(assert (=> d!5949 t!1603))

(declare-fun b_and!2325 () Bool)

(assert (= b_and!2317 (and (=> t!1603 result!1303) b_and!2325)))

(assert (=> d!5949 m!10381))

(declare-fun m!10401 () Bool)

(assert (=> d!5949 m!10401))

(assert (=> start!1424 d!5949))

(declare-fun d!5951 () Bool)

(assert (=> d!5951 (= (fromParenthesis!0 (head!384 xs!372)) (ite (is-OpenParenthesis!42 (head!384 xs!372)) (Balance!110 1 0) (Balance!110 0 1)))))

(assert (=> b!7519 d!5951))

(declare-fun d!5953 () Bool)

(assert (=> d!5953 (= trivial!1 true)))

(assert (=> b!7519 d!5953))

(declare-fun d!5955 () Bool)

(declare-fun c!2645 () Bool)

(assert (=> d!5955 (= c!2645 (and (is-Cons!167 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168))) (is-Nil!168 (tail!397 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168))))))))

(declare-fun e!4346 () Balance!109)

(assert (=> d!5955 (= (foldRight1!32 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168)) lambda!1423) e!4346)))

(declare-fun b!7542 () Bool)

(assert (=> b!7542 (= e!4346 (head!385 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168))))))

(declare-fun b!7543 () Bool)

(assert (=> b!7543 (= e!4346 (dynLambda!161 lambda!1423 (head!385 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168))) (foldRight1!32 (tail!397 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168))) lambda!1423)))))

(assert (= (and d!5955 c!2645) b!7542))

(assert (= (and d!5955 (not c!2645)) b!7543))

(declare-fun b_lambda!3685 () Bool)

(assert (=> (not b_lambda!3685) (not b!7543)))

(declare-fun m!10403 () Bool)

(assert (=> b!7543 m!10403))

(assert (=> b!7543 m!10403))

(declare-fun m!10405 () Bool)

(assert (=> b!7543 m!10405))

(assert (=> bs!1722 d!5955))

(declare-fun d!5957 () Bool)

(declare-fun c!2648 () Bool)

(assert (=> d!5957 (= c!2648 (is-Nil!168 (map!153 xs!372 lambda!1422)))))

(declare-fun e!4349 () List!170)

(assert (=> d!5957 (= (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168)) e!4349)))

(declare-fun b!7548 () Bool)

(assert (=> b!7548 (= e!4349 (Cons!167 (Balance!110 0 0) Nil!168))))

(declare-fun b!7549 () Bool)

(assert (=> b!7549 (= e!4349 (Cons!167 (head!385 (map!153 xs!372 lambda!1422)) (append!65 (tail!397 (map!153 xs!372 lambda!1422)) (Cons!167 (Balance!110 0 0) Nil!168))))))

(assert (= (and d!5957 c!2648) b!7548))

(assert (= (and d!5957 (not c!2648)) b!7549))

(declare-fun m!10407 () Bool)

(assert (=> b!7549 m!10407))

(assert (=> bs!1722 d!5957))

(assert (=> bs!1722 d!5943))

(assert (=> b!7524 d!5957))

(assert (=> b!7524 d!5941))

(assert (=> b!7524 d!5943))

(assert (=> b!7524 d!5955))

(assert (=> bs!1719 d!5955))

(assert (=> bs!1719 d!5957))

(assert (=> bs!1719 d!5943))

(declare-fun b_lambda!3687 () Bool)

(assert (= b_lambda!3683 (or (and b!7522 b_free!545) (and b!7519 (= lambda!1425 (y!474 that!302))) (and b!7520 (= lambda!1427 (y!474 that!302))) (and b!7521 b_free!539 (= (y!473 thiss!1122) (y!474 that!302))) (and b!7519 (= lambda!1424 (y!474 that!302))) (and b!7522 b_free!543 (= (x!4098 that!302) (y!474 that!302))) (and b!7521 b_free!537 (= (x!4097 thiss!1122) (y!474 that!302))) b_lambda!3687)))

(declare-fun bs!1723 () Bool)

(declare-fun d!5959 () Bool)

(assert (= bs!1723 (and d!5959 b!7519)))

(assert (=> bs!1723 (= (dynLambda!159 lambda!1424) (foldRight1!32 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168)) lambda!1423))))

(assert (=> bs!1723 m!10383))

(assert (=> bs!1723 m!10383))

(assert (=> bs!1723 m!10385))

(assert (=> bs!1723 m!10385))

(assert (=> bs!1723 m!10387))

(assert (=> (and b!7519 (= lambda!1424 (y!474 that!302)) d!5949) d!5959))

(declare-fun bs!1724 () Bool)

(declare-fun d!5961 () Bool)

(assert (= bs!1724 (and d!5961 b!7519)))

(assert (=> bs!1724 (= (dynLambda!159 lambda!1425) (fromParenthesis!0 (head!384 xs!372)))))

(assert (=> (and b!7519 (= lambda!1425 (y!474 that!302)) d!5949) d!5961))

(declare-fun bs!1725 () Bool)

(declare-fun d!5963 () Bool)

(assert (= bs!1725 (and d!5963 b!7520)))

(assert (=> bs!1725 (= (dynLambda!159 lambda!1427) (foldRight1!32 (map!153 xs!372 lambda!1422) lambda!1423))))

(assert (=> bs!1725 m!10383))

(assert (=> bs!1725 m!10383))

(assert (=> bs!1725 m!10389))

(assert (=> (and b!7520 (= lambda!1427 (y!474 that!302)) d!5949) d!5963))

(declare-fun b_lambda!3689 () Bool)

(assert (= b_lambda!3675 (or (and b!7522 b_free!543 (= (x!4098 that!302) (x!4097 thiss!1122))) (and b!7521 b_free!537) (and b!7519 (= lambda!1425 (x!4097 thiss!1122))) (and b!7520 (= lambda!1427 (x!4097 thiss!1122))) (and b!7522 b_free!545 (= (y!474 that!302) (x!4097 thiss!1122))) (and b!7519 (= lambda!1424 (x!4097 thiss!1122))) (and b!7521 b_free!539 (= (y!473 thiss!1122) (x!4097 thiss!1122))) b_lambda!3689)))

(declare-fun bs!1726 () Bool)

(declare-fun d!5965 () Bool)

(assert (= bs!1726 (and d!5965 b!7519)))

(assert (=> bs!1726 (= (dynLambda!159 lambda!1425) (fromParenthesis!0 (head!384 xs!372)))))

(assert (=> (and b!7519 (= lambda!1425 (x!4097 thiss!1122)) d!5947) d!5965))

(declare-fun bs!1727 () Bool)

(declare-fun d!5967 () Bool)

(assert (= bs!1727 (and d!5967 b!7519)))

(assert (=> bs!1727 (= (dynLambda!159 lambda!1424) (foldRight1!32 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168)) lambda!1423))))

(assert (=> bs!1727 m!10383))

(assert (=> bs!1727 m!10383))

(assert (=> bs!1727 m!10385))

(assert (=> bs!1727 m!10385))

(assert (=> bs!1727 m!10387))

(assert (=> (and b!7519 (= lambda!1424 (x!4097 thiss!1122)) d!5947) d!5967))

(declare-fun bs!1728 () Bool)

(declare-fun d!5969 () Bool)

(assert (= bs!1728 (and d!5969 b!7520)))

(assert (=> bs!1728 (= (dynLambda!159 lambda!1427) (foldRight1!32 (map!153 xs!372 lambda!1422) lambda!1423))))

(assert (=> bs!1728 m!10383))

(assert (=> bs!1728 m!10383))

(assert (=> bs!1728 m!10389))

(assert (=> (and b!7520 (= lambda!1427 (x!4097 thiss!1122)) d!5947) d!5969))

(declare-fun b_lambda!3691 () Bool)

(assert (= b_lambda!3685 (or b!7524 b_lambda!3691)))

(declare-fun bs!1729 () Bool)

(declare-fun d!5971 () Bool)

(assert (= bs!1729 (and d!5971 b!7524)))

(declare-fun ++!3 (Balance!109 Balance!109) Balance!109)

(assert (=> bs!1729 (= (dynLambda!161 lambda!1423 (head!385 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168))) (foldRight1!32 (tail!397 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168))) lambda!1423)) (++!3 (head!385 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168))) (foldRight1!32 (tail!397 (append!65 (map!153 xs!372 lambda!1422) (Cons!167 (Balance!110 0 0) Nil!168))) lambda!1423)))))

(assert (=> bs!1729 m!10403))

(declare-fun m!10409 () Bool)

(assert (=> bs!1729 m!10409))

(assert (=> b!7543 d!5971))

(declare-fun b_lambda!3693 () Bool)

(assert (= b_lambda!3677 (or (and b!7521 b_free!539) (and b!7519 (= lambda!1425 (y!473 thiss!1122))) (and b!7522 b_free!543 (= (x!4098 that!302) (y!473 thiss!1122))) (and b!7521 b_free!537 (= (x!4097 thiss!1122) (y!473 thiss!1122))) (and b!7522 b_free!545 (= (y!474 that!302) (y!473 thiss!1122))) (and b!7520 (= lambda!1427 (y!473 thiss!1122))) (and b!7519 (= lambda!1424 (y!473 thiss!1122))) b_lambda!3693)))

(assert (=> (and b!7520 (= lambda!1427 (y!473 thiss!1122)) d!5947) d!5935))

(assert (=> (and b!7519 (= lambda!1425 (y!473 thiss!1122)) d!5947) d!5937))

(assert (=> (and b!7519 (= lambda!1424 (y!473 thiss!1122)) d!5947) d!5939))

(declare-fun b_lambda!3695 () Bool)

(assert (= b_lambda!3673 (or b!7524 b_lambda!3695)))

(declare-fun bs!1730 () Bool)

(declare-fun d!5973 () Bool)

(assert (= bs!1730 (and d!5973 b!7524)))

(assert (=> bs!1730 (= (dynLambda!162 lambda!1422 (head!384 xs!372)) (fromParenthesis!0 (head!384 xs!372)))))

(assert (=> bs!1730 m!10367))

(assert (=> b!7538 d!5973))

(declare-fun b_lambda!3697 () Bool)

(assert (= b_lambda!3681 (or (and b!7522 b_free!543) (and b!7521 b_free!539 (= (y!473 thiss!1122) (x!4098 that!302))) (and b!7519 (= lambda!1425 (x!4098 that!302))) (and b!7520 (= lambda!1427 (x!4098 that!302))) (and b!7522 b_free!545 (= (y!474 that!302) (x!4098 that!302))) (and b!7521 b_free!537 (= (x!4097 thiss!1122) (x!4098 that!302))) (and b!7519 (= lambda!1424 (x!4098 that!302))) b_lambda!3697)))

(assert (=> (and b!7520 (= lambda!1427 (x!4098 that!302)) d!5949) d!5929))

(assert (=> (and b!7519 (= lambda!1425 (x!4098 that!302)) d!5949) d!5931))

(assert (=> (and b!7519 (= lambda!1424 (x!4098 that!302)) d!5949) d!5933))

(declare-fun b_lambda!3699 () Bool)

(assert (= b_lambda!3679 (or (and b!7519 (= lambda!1426 (evidence!110 thiss!1122))) (and b!7521 b_free!541) b_lambda!3699)))

(assert (=> (and b!7519 (= lambda!1426 (evidence!110 thiss!1122)) b!7541) d!5927))

(declare-fun b_lambda!3701 () Bool)

(assert (= b_lambda!3671 (or b!7524 b_lambda!3701)))

(declare-fun bs!1731 () Bool)

(declare-fun d!5975 () Bool)

(assert (= bs!1731 (and d!5975 b!7524)))

(assert (=> bs!1731 (= (dynLambda!161 lambda!1423 (head!385 (map!153 xs!372 lambda!1422)) (foldRight1!32 (tail!397 (map!153 xs!372 lambda!1422)) lambda!1423)) (++!3 (head!385 (map!153 xs!372 lambda!1422)) (foldRight1!32 (tail!397 (map!153 xs!372 lambda!1422)) lambda!1423)))))

(assert (=> bs!1731 m!10391))

(declare-fun m!10411 () Bool)

(assert (=> bs!1731 m!10411))

(assert (=> b!7532 d!5975))

(push 1)

(assert (not b_next!1151))

(assert (not bs!1727))

(assert (not b_lambda!3701))

(assert (not b_lambda!3665))

(assert (not b!7543))

(assert (not b_lambda!3691))

(assert (not b_lambda!3667))

(assert (not b_lambda!3695))

(assert (not bs!1728))

(assert (not b!7532))

(assert (not b_next!1149))

(assert (not b_next!1155))

(assert (not b_lambda!3693))

(assert (not b_lambda!3699))

(assert (not b_next!1147))

(assert (not b_lambda!3689))

(assert (not bs!1730))

(assert b_and!2323)

(assert (not b_lambda!3669))

(assert b_and!2309)

(assert (not bs!1723))

(assert (not b!7549))

(assert (not bs!1729))

(assert (not bs!1731))

(assert (not b!7538))

(assert b_and!2321)

(assert (not b_lambda!3687))

(assert (not b_lambda!3697))

(assert b_and!2319)

(assert b_and!2325)

(assert (not b_next!1153))

(assert (not bs!1725))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1151))

(assert (not b_next!1149))

(assert (not b_next!1155))

(assert (not b_next!1147))

(assert b_and!2323)

(assert b_and!2309)

(assert b_and!2321)

(assert b_and!2319)

(assert b_and!2325)

(assert (not b_next!1153))

(check-sat)

(pop 1)

