; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1474 () Bool)

(assert start!1474)

(declare-fun b!7702 () Bool)

(declare-fun b_free!589 () Bool)

(declare-fun b_next!1229 () Bool)

(assert (=> b!7702 (= b_free!589 (not b_next!1229))))

(declare-fun tp!1018 () Bool)

(declare-fun b_and!2419 () Bool)

(assert (=> b!7702 (= tp!1018 b_and!2419)))

(declare-fun b_free!591 () Bool)

(declare-fun b_next!1231 () Bool)

(assert (=> b!7702 (= b_free!591 (not b_next!1231))))

(declare-fun tp!1020 () Bool)

(declare-fun b_and!2421 () Bool)

(assert (=> b!7702 (= tp!1020 b_and!2421)))

(declare-fun b_free!593 () Bool)

(declare-fun b_next!1233 () Bool)

(assert (=> b!7702 (= b_free!593 (not b_next!1233))))

(declare-fun tp!1017 () Bool)

(declare-fun b_and!2423 () Bool)

(assert (=> b!7702 (= tp!1017 b_and!2423)))

(declare-fun b!7701 () Bool)

(declare-fun b_free!595 () Bool)

(declare-fun b_next!1235 () Bool)

(assert (=> b!7701 (= b_free!595 (not b_next!1235))))

(declare-fun tp!1021 () Bool)

(declare-fun b_and!2425 () Bool)

(assert (=> b!7701 (= tp!1021 b_and!2425)))

(declare-fun b_free!597 () Bool)

(declare-fun b_next!1237 () Bool)

(assert (=> b!7701 (= b_free!597 (not b_next!1237))))

(declare-fun tp!1019 () Bool)

(declare-fun b_and!2427 () Bool)

(assert (=> b!7701 (= tp!1019 b_and!2427)))

(declare-fun b_free!599 () Bool)

(declare-fun b_next!1239 () Bool)

(assert (=> b!7701 (= b_free!599 (not b_next!1239))))

(declare-fun tp!1016 () Bool)

(declare-fun b_and!2429 () Bool)

(assert (=> b!7701 (= tp!1016 b_and!2429)))

(declare-fun b!7705 () Bool)

(assert (=> b!7705 true))

(declare-fun lambda!1560 () Int)

(declare-datatypes () ((Balance!119 (Balance!120 (extraOpen!100 Int) (extraClose!100 Int)))))

(declare-datatypes () ((EqEvidence!94 (EqEvidence!95 (x!4225 Int) (y!480 Int) (evidence!114 Int)))))

(declare-fun thiss!1147 () EqEvidence!94)

(declare-fun b_next!1241 () Bool)

(assert (=> b!7702 (= b_next!1229 (or (and b!7705 (= lambda!1560 (x!4225 thiss!1147))) b_next!1241))))

(declare-fun b_next!1243 () Bool)

(assert (=> b!7702 (= b_next!1231 (or (and b!7705 (= lambda!1560 (y!480 thiss!1147))) b_next!1243))))

(declare-fun that!309 () EqEvidence!94)

(declare-fun b_next!1245 () Bool)

(assert (=> b!7701 (= b_next!1235 (or (and b!7705 (= lambda!1560 (x!4225 that!309))) b_next!1245))))

(declare-fun b_next!1247 () Bool)

(assert (=> b!7701 (= b_next!1237 (or (and b!7705 (= lambda!1560 (y!480 that!309))) b_next!1247))))

(declare-fun m!10535 () Bool)

(assert (=> b!7705 m!10535))

(declare-fun lambda!1561 () Int)

(declare-fun dynLambda!171 (Int) Bool)

(assert (=> (and b!7702 b!7705 (= (dynLambda!171 lambda!1561) (dynLambda!171 (evidence!114 thiss!1147)))) (= lambda!1561 (evidence!114 thiss!1147))))

(assert (=> (and b!7701 b!7705 (= (dynLambda!171 lambda!1561) (dynLambda!171 (evidence!114 that!309)))) (= lambda!1561 (evidence!114 that!309))))

(declare-fun b_next!1249 () Bool)

(assert (=> b!7702 (= b_next!1233 (or (and b!7705 (= lambda!1561 (evidence!114 thiss!1147))) b_next!1249))))

(declare-fun b_next!1251 () Bool)

(assert (=> b!7701 (= b_next!1239 (or (and b!7705 (= lambda!1561 (evidence!114 that!309))) b_next!1251))))

(declare-fun b!7699 () Bool)

(declare-fun m!10537 () Bool)

(assert (=> b!7699 m!10537))

(declare-fun bs!1761 () Bool)

(assert (= bs!1761 (and b!7699 b!7705)))

(declare-fun lambda!1562 () Int)

(assert (=> bs!1761 (not (= lambda!1562 lambda!1560))))

(assert (=> b!7699 true))

(declare-fun b_next!1253 () Bool)

(assert (=> b!7702 (= b_next!1241 (or (and b!7699 (= lambda!1562 (x!4225 thiss!1147))) b_next!1253))))

(declare-fun b_next!1255 () Bool)

(assert (=> b!7702 (= b_next!1243 (or (and b!7699 (= lambda!1562 (y!480 thiss!1147))) b_next!1255))))

(declare-fun b_next!1257 () Bool)

(assert (=> b!7701 (= b_next!1245 (or (and b!7699 (= lambda!1562 (x!4225 that!309))) b_next!1257))))

(declare-fun b_next!1259 () Bool)

(assert (=> b!7701 (= b_next!1247 (or (and b!7699 (= lambda!1562 (y!480 that!309))) b_next!1259))))

(declare-fun lambda!1563 () Int)

(assert (=> bs!1761 (not (= lambda!1563 lambda!1561))))

(assert (=> b!7699 true))

(declare-fun b_next!1261 () Bool)

(assert (=> b!7702 (= b_next!1249 (or (and b!7699 (= lambda!1563 (evidence!114 thiss!1147))) b_next!1261))))

(declare-fun b_next!1263 () Bool)

(assert (=> b!7701 (= b_next!1251 (or (and b!7699 (= lambda!1563 (evidence!114 that!309))) b_next!1263))))

(declare-fun res!2273 () Bool)

(declare-fun e!4422 () Bool)

(assert (=> b!7699 (=> (not res!2273) (not e!4422))))

(assert (=> b!7699 (= res!2273 (= that!309 (EqEvidence!95 lambda!1562 lambda!1562 lambda!1563)))))

(declare-fun b!7700 () Bool)

(declare-fun dynLambda!172 (Int) Balance!119)

(assert (=> b!7700 (= e!4422 (not (= (dynLambda!172 (y!480 thiss!1147)) (dynLambda!172 (x!4225 that!309)))))))

(declare-fun e!4423 () Bool)

(assert (=> b!7701 (= e!4423 (and tp!1021 tp!1019 tp!1016))))

(declare-fun e!4421 () Bool)

(assert (=> b!7702 (= e!4421 (and tp!1018 tp!1020 tp!1017))))

(declare-fun b!7703 () Bool)

(declare-fun res!2275 () Bool)

(assert (=> b!7703 (=> (not res!2275) (not e!4422))))

(declare-datatypes () ((Parenthesis!46 (CloseParenthesis!45) (OpenParenthesis!45))))

(declare-datatypes () ((List!175 (Nil!173) (Cons!172 (head!390 Parenthesis!46) (tail!402 List!175)))))

(declare-fun xs!372 () List!175)

(assert (=> b!7703 (= res!2275 (or (not (is-Cons!172 xs!372)) (not (is-Nil!173 (tail!402 xs!372)))))))

(declare-fun b!7704 () Bool)

(declare-fun res!2270 () Bool)

(assert (=> b!7704 (=> (not res!2270) (not e!4422))))

(declare-fun lambda!1559 () Int)

(declare-fun lambda!1558 () Int)

(declare-datatypes () ((ProofOps!78 (ProofOps!79 (prop!150 Bool)))))

(declare-fun thiss!1106 () ProofOps!78)

(declare-datatypes () ((List!176 (Nil!174) (Cons!173 (head!391 Balance!119) (tail!403 List!176)))))

(declare-fun foldRight1!35 (List!176 Int) Balance!119)

(declare-fun append!68 (List!176 List!176) List!176)

(declare-fun map!156 (List!175 Int) List!176)

(assert (=> b!7704 (= res!2270 (= thiss!1106 (ProofOps!79 (= (foldRight1!35 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559) (foldRight1!35 (map!156 xs!372 lambda!1558) lambda!1559)))))))

(declare-fun res!2271 () Bool)

(assert (=> b!7705 (=> (not res!2271) (not e!4422))))

(assert (=> b!7705 (= res!2271 (= thiss!1147 (EqEvidence!95 lambda!1560 lambda!1560 lambda!1561)))))

(declare-fun res!2272 () Bool)

(assert (=> start!1474 (=> (not res!2272) (not e!4422))))

(declare-fun isEmpty!147 (List!175) Bool)

(assert (=> start!1474 (= res!2272 (not (isEmpty!147 xs!372)))))

(assert (=> start!1474 e!4422))

(assert (=> start!1474 true))

(declare-fun inv!275 (EqEvidence!94) Bool)

(assert (=> start!1474 (and (inv!275 thiss!1147) e!4421)))

(assert (=> start!1474 (and (inv!275 that!309) e!4423)))

(declare-fun b!7706 () Bool)

(declare-fun res!2274 () Bool)

(assert (=> b!7706 (=> (not res!2274) (not e!4422))))

(assert (=> b!7706 (= res!2274 (dynLambda!171 (evidence!114 thiss!1147)))))

(assert (= (and start!1474 res!2272) b!7704))

(assert (= (and b!7704 res!2270) b!7703))

(assert (= (and b!7703 res!2275) b!7705))

(assert (= (and b!7705 res!2271) b!7699))

(assert (= (and b!7699 res!2273) b!7706))

(assert (= (and b!7706 res!2274) b!7700))

(assert (= start!1474 b!7702))

(assert (= start!1474 b!7701))

(declare-fun b_lambda!3763 () Bool)

(assert (=> (not b_lambda!3763) (not b!7700)))

(declare-fun t!1655 () Bool)

(declare-fun tb!1315 () Bool)

(assert (=> (and b!7702 (= (x!4225 thiss!1147) (y!480 thiss!1147)) t!1655) tb!1315))

(declare-fun result!1355 () Bool)

(assert (=> tb!1315 (= result!1355 true)))

(assert (=> b!7700 t!1655))

(declare-fun b_and!2431 () Bool)

(assert (= b_and!2419 (and (=> t!1655 result!1355) b_and!2431)))

(declare-fun t!1657 () Bool)

(declare-fun tb!1317 () Bool)

(assert (=> (and b!7702 (= (y!480 thiss!1147) (y!480 thiss!1147)) t!1657) tb!1317))

(declare-fun result!1357 () Bool)

(assert (=> tb!1317 (= result!1357 true)))

(assert (=> b!7700 t!1657))

(declare-fun b_and!2433 () Bool)

(assert (= b_and!2421 (and (=> t!1657 result!1357) b_and!2433)))

(declare-fun t!1659 () Bool)

(declare-fun tb!1319 () Bool)

(assert (=> (and b!7701 (= (x!4225 that!309) (y!480 thiss!1147)) t!1659) tb!1319))

(declare-fun result!1359 () Bool)

(assert (=> tb!1319 (= result!1359 true)))

(assert (=> b!7700 t!1659))

(declare-fun b_and!2435 () Bool)

(assert (= b_and!2425 (and (=> t!1659 result!1359) b_and!2435)))

(declare-fun t!1661 () Bool)

(declare-fun tb!1321 () Bool)

(assert (=> (and b!7701 (= (y!480 that!309) (y!480 thiss!1147)) t!1661) tb!1321))

(declare-fun result!1361 () Bool)

(assert (=> tb!1321 (= result!1361 true)))

(assert (=> b!7700 t!1661))

(declare-fun b_and!2437 () Bool)

(assert (= b_and!2427 (and (=> t!1661 result!1361) b_and!2437)))

(declare-fun b_lambda!3765 () Bool)

(assert (=> (not b_lambda!3765) (not b!7700)))

(declare-fun t!1663 () Bool)

(declare-fun tb!1323 () Bool)

(assert (=> (and b!7702 (= (x!4225 thiss!1147) (x!4225 that!309)) t!1663) tb!1323))

(declare-fun result!1363 () Bool)

(assert (=> tb!1323 (= result!1363 true)))

(assert (=> b!7700 t!1663))

(declare-fun b_and!2439 () Bool)

(assert (= b_and!2431 (and (=> t!1663 result!1363) b_and!2439)))

(declare-fun t!1665 () Bool)

(declare-fun tb!1325 () Bool)

(assert (=> (and b!7702 (= (y!480 thiss!1147) (x!4225 that!309)) t!1665) tb!1325))

(declare-fun result!1365 () Bool)

(assert (=> tb!1325 (= result!1365 true)))

(assert (=> b!7700 t!1665))

(declare-fun b_and!2441 () Bool)

(assert (= b_and!2433 (and (=> t!1665 result!1365) b_and!2441)))

(declare-fun t!1667 () Bool)

(declare-fun tb!1327 () Bool)

(assert (=> (and b!7701 (= (x!4225 that!309) (x!4225 that!309)) t!1667) tb!1327))

(declare-fun result!1367 () Bool)

(assert (=> tb!1327 (= result!1367 true)))

(assert (=> b!7700 t!1667))

(declare-fun b_and!2443 () Bool)

(assert (= b_and!2435 (and (=> t!1667 result!1367) b_and!2443)))

(declare-fun t!1669 () Bool)

(declare-fun tb!1329 () Bool)

(assert (=> (and b!7701 (= (y!480 that!309) (x!4225 that!309)) t!1669) tb!1329))

(declare-fun result!1369 () Bool)

(assert (=> tb!1329 (= result!1369 true)))

(assert (=> b!7700 t!1669))

(declare-fun b_and!2445 () Bool)

(assert (= b_and!2437 (and (=> t!1669 result!1369) b_and!2445)))

(declare-fun b_lambda!3767 () Bool)

(assert (=> (not b_lambda!3767) (not b!7706)))

(declare-fun t!1671 () Bool)

(declare-fun tb!1331 () Bool)

(assert (=> (and b!7702 (= (evidence!114 thiss!1147) (evidence!114 thiss!1147)) t!1671) tb!1331))

(declare-fun result!1371 () Bool)

(assert (=> tb!1331 (= result!1371 true)))

(assert (=> b!7706 t!1671))

(declare-fun b_and!2447 () Bool)

(assert (= b_and!2423 (and (=> t!1671 result!1371) b_and!2447)))

(declare-fun tb!1333 () Bool)

(declare-fun t!1673 () Bool)

(assert (=> (and b!7701 (= (evidence!114 that!309) (evidence!114 thiss!1147)) t!1673) tb!1333))

(declare-fun result!1373 () Bool)

(assert (=> tb!1333 (= result!1373 true)))

(assert (=> b!7706 t!1673))

(declare-fun b_and!2449 () Bool)

(assert (= b_and!2429 (and (=> t!1673 result!1373) b_and!2449)))

(declare-fun m!10539 () Bool)

(assert (=> b!7700 m!10539))

(declare-fun m!10541 () Bool)

(assert (=> b!7700 m!10541))

(declare-fun m!10543 () Bool)

(assert (=> b!7704 m!10543))

(assert (=> b!7704 m!10543))

(declare-fun m!10545 () Bool)

(assert (=> b!7704 m!10545))

(declare-fun m!10547 () Bool)

(assert (=> b!7704 m!10547))

(assert (=> b!7704 m!10543))

(declare-fun m!10549 () Bool)

(assert (=> b!7704 m!10549))

(assert (=> b!7704 m!10543))

(assert (=> b!7704 m!10545))

(declare-fun m!10551 () Bool)

(assert (=> start!1474 m!10551))

(declare-fun m!10553 () Bool)

(assert (=> start!1474 m!10553))

(declare-fun m!10555 () Bool)

(assert (=> start!1474 m!10555))

(declare-fun m!10557 () Bool)

(assert (=> b!7706 m!10557))

(push 1)

(assert b_and!2449)

(assert b_and!2443)

(assert (not b_next!1253))

(assert (not b!7704))

(assert b_and!2441)

(assert (not b_next!1259))

(assert (not b_next!1257))

(assert (not b_lambda!3767))

(assert (not b_lambda!3763))

(assert (not b!7699))

(assert b_and!2447)

(assert (not b_lambda!3765))

(assert (not b_next!1261))

(assert b_and!2445)

(assert (not b_next!1255))

(assert b_and!2439)

(assert (not b!7705))

(assert (not b_next!1263))

(assert (not start!1474))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2449)

(assert b_and!2443)

(assert (not b_next!1253))

(assert b_and!2441)

(assert (not b_next!1259))

(assert (not b_next!1257))

(assert b_and!2447)

(assert (not b_next!1261))

(assert b_and!2445)

(assert (not b_next!1255))

(assert b_and!2439)

(assert (not b_next!1263))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3769 () Bool)

(assert (= b_lambda!3765 (or (and b!7701 b_free!595) (and b!7702 b_free!589 (= (x!4225 thiss!1147) (x!4225 that!309))) (and b!7701 b_free!597 (= (y!480 that!309) (x!4225 that!309))) (and b!7705 (= lambda!1560 (x!4225 that!309))) (and b!7702 b_free!591 (= (y!480 thiss!1147) (x!4225 that!309))) (and b!7699 (= lambda!1562 (x!4225 that!309))) b_lambda!3769)))

(declare-fun bs!1762 () Bool)

(declare-fun d!6053 () Bool)

(assert (= bs!1762 (and d!6053 b!7699)))

(declare-fun ++!3 (Balance!119 Balance!119) Balance!119)

(declare-fun fromParenthesis!0 (Parenthesis!46) Balance!119)

(assert (=> bs!1762 (= (dynLambda!172 lambda!1562) (++!3 (fromParenthesis!0 (head!390 xs!372)) (foldRight1!35 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559)))))

(declare-fun m!10559 () Bool)

(assert (=> bs!1762 m!10559))

(declare-fun m!10561 () Bool)

(assert (=> bs!1762 m!10561))

(declare-fun m!10563 () Bool)

(assert (=> bs!1762 m!10563))

(assert (=> bs!1762 m!10559))

(assert (=> bs!1762 m!10561))

(declare-fun m!10565 () Bool)

(assert (=> bs!1762 m!10565))

(assert (=> bs!1762 m!10563))

(assert (=> (and b!7699 (= lambda!1562 (x!4225 that!309)) b!7700) d!6053))

(declare-fun bs!1763 () Bool)

(declare-fun d!6055 () Bool)

(assert (= bs!1763 (and d!6055 b!7705)))

(assert (=> bs!1763 (= (dynLambda!172 lambda!1560) (foldRight1!35 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559))))

(assert (=> bs!1763 m!10543))

(assert (=> bs!1763 m!10543))

(assert (=> bs!1763 m!10545))

(assert (=> bs!1763 m!10545))

(assert (=> bs!1763 m!10547))

(assert (=> (and b!7705 (= lambda!1560 (x!4225 that!309)) b!7700) d!6055))

(declare-fun b_lambda!3771 () Bool)

(assert (= b_lambda!3767 (or (and b!7705 (= lambda!1561 (evidence!114 thiss!1147))) (and b!7699 (= lambda!1563 (evidence!114 thiss!1147))) (and b!7702 b_free!593) (and b!7701 b_free!599 (= (evidence!114 that!309) (evidence!114 thiss!1147))) b_lambda!3771)))

(declare-fun bs!1764 () Bool)

(declare-fun d!6057 () Bool)

(assert (= bs!1764 (and d!6057 b!7705)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!1764 (= (dynLambda!171 lambda!1561) trivial!1)))

(assert (=> (and b!7705 (= lambda!1561 (evidence!114 thiss!1147)) b!7706) d!6057))

(declare-fun bs!1765 () Bool)

(declare-fun d!6059 () Bool)

(assert (= bs!1765 (and d!6059 b!7699)))

(declare-fun remove_null_balance!0 (List!175) Bool)

(assert (=> bs!1765 (= (dynLambda!171 lambda!1563) (remove_null_balance!0 (tail!402 xs!372)))))

(declare-fun m!10567 () Bool)

(assert (=> bs!1765 m!10567))

(assert (=> (and b!7699 (= lambda!1563 (evidence!114 thiss!1147)) b!7706) d!6059))

(declare-fun b_lambda!3773 () Bool)

(assert (= b_lambda!3763 (or (and b!7702 b_free!591) (and b!7699 (= lambda!1562 (y!480 thiss!1147))) (and b!7701 b_free!597 (= (y!480 that!309) (y!480 thiss!1147))) (and b!7701 b_free!595 (= (x!4225 that!309) (y!480 thiss!1147))) (and b!7702 b_free!589 (= (x!4225 thiss!1147) (y!480 thiss!1147))) (and b!7705 (= lambda!1560 (y!480 thiss!1147))) b_lambda!3773)))

(declare-fun bs!1766 () Bool)

(declare-fun d!6061 () Bool)

(assert (= bs!1766 (and d!6061 b!7705)))

(assert (=> bs!1766 (= (dynLambda!172 lambda!1560) (foldRight1!35 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559))))

(assert (=> bs!1766 m!10543))

(assert (=> bs!1766 m!10543))

(assert (=> bs!1766 m!10545))

(assert (=> bs!1766 m!10545))

(assert (=> bs!1766 m!10547))

(assert (=> (and b!7705 (= lambda!1560 (y!480 thiss!1147)) b!7700) d!6061))

(declare-fun bs!1767 () Bool)

(declare-fun d!6063 () Bool)

(assert (= bs!1767 (and d!6063 b!7699)))

(assert (=> bs!1767 (= (dynLambda!172 lambda!1562) (++!3 (fromParenthesis!0 (head!390 xs!372)) (foldRight1!35 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559)))))

(assert (=> bs!1767 m!10559))

(assert (=> bs!1767 m!10561))

(assert (=> bs!1767 m!10563))

(assert (=> bs!1767 m!10559))

(assert (=> bs!1767 m!10561))

(assert (=> bs!1767 m!10565))

(assert (=> bs!1767 m!10563))

(assert (=> (and b!7699 (= lambda!1562 (y!480 thiss!1147)) b!7700) d!6063))

(push 1)

(assert (not b_lambda!3773))

(assert b_and!2449)

(assert (not bs!1765))

(assert (not b_lambda!3769))

(assert (not bs!1762))

(assert b_and!2443)

(assert (not bs!1766))

(assert (not b_next!1253))

(assert (not b!7704))

(assert b_and!2441)

(assert (not b_next!1259))

(assert (not b_lambda!3771))

(assert (not b_next!1257))

(assert (not b!7699))

(assert b_and!2447)

(assert (not b_next!1261))

(assert b_and!2445)

(assert (not bs!1767))

(assert (not b_next!1255))

(assert b_and!2439)

(assert (not b!7705))

(assert (not bs!1763))

(assert (not b_next!1263))

(assert (not start!1474))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2449)

(assert b_and!2443)

(assert (not b_next!1253))

(assert b_and!2441)

(assert (not b_next!1259))

(assert (not b_next!1257))

(assert b_and!2447)

(assert (not b_next!1261))

(assert b_and!2445)

(assert (not b_next!1255))

(assert b_and!2439)

(assert (not b_next!1263))

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!1446 () Int)

(declare-fun d!6065 () Bool)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!6065 (= lt!1446 (min!4 (extraOpen!100 (fromParenthesis!0 (head!390 xs!372))) (extraClose!100 (foldRight1!35 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559))))))

(assert (=> d!6065 (= (++!3 (fromParenthesis!0 (head!390 xs!372)) (foldRight1!35 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559)) (Balance!120 (- (+ (extraOpen!100 (fromParenthesis!0 (head!390 xs!372))) (extraOpen!100 (foldRight1!35 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559))) lt!1446) (- (+ (extraClose!100 (fromParenthesis!0 (head!390 xs!372))) (extraClose!100 (foldRight1!35 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559))) lt!1446)))))

(declare-fun bs!1768 () Bool)

(assert (= bs!1768 d!6065))

(declare-fun m!10569 () Bool)

(assert (=> bs!1768 m!10569))

(assert (=> bs!1767 d!6065))

(declare-fun d!6067 () Bool)

(declare-fun c!2686 () Bool)

(assert (=> d!6067 (= c!2686 (and (is-Cons!173 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))) (is-Nil!174 (tail!403 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))))))))

(declare-fun e!4426 () Balance!119)

(assert (=> d!6067 (= (foldRight1!35 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559) e!4426)))

(declare-fun b!7715 () Bool)

(assert (=> b!7715 (= e!4426 (head!391 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))))))

(declare-fun b!7716 () Bool)

(declare-fun dynLambda!173 (Int Balance!119 Balance!119) Balance!119)

(assert (=> b!7716 (= e!4426 (dynLambda!173 lambda!1559 (head!391 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))) (foldRight1!35 (tail!403 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))) lambda!1559)))))

(assert (= (and d!6067 c!2686) b!7715))

(assert (= (and d!6067 (not c!2686)) b!7716))

(declare-fun b_lambda!3775 () Bool)

(assert (=> (not b_lambda!3775) (not b!7716)))

(declare-fun m!10571 () Bool)

(assert (=> b!7716 m!10571))

(assert (=> b!7716 m!10571))

(declare-fun m!10573 () Bool)

(assert (=> b!7716 m!10573))

(assert (=> bs!1767 d!6067))

(declare-fun d!6069 () Bool)

(declare-fun c!2689 () Bool)

(assert (=> d!6069 (= c!2689 (is-Nil!174 (map!156 (tail!402 xs!372) lambda!1558)))))

(declare-fun e!4429 () List!176)

(assert (=> d!6069 (= (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) e!4429)))

(declare-fun b!7721 () Bool)

(assert (=> b!7721 (= e!4429 (Cons!173 (Balance!120 0 0) Nil!174))))

(declare-fun b!7722 () Bool)

(assert (=> b!7722 (= e!4429 (Cons!173 (head!391 (map!156 (tail!402 xs!372) lambda!1558)) (append!68 (tail!403 (map!156 (tail!402 xs!372) lambda!1558)) (Cons!173 (Balance!120 0 0) Nil!174))))))

(assert (= (and d!6069 c!2689) b!7721))

(assert (= (and d!6069 (not c!2689)) b!7722))

(declare-fun m!10575 () Bool)

(assert (=> b!7722 m!10575))

(assert (=> bs!1767 d!6069))

(declare-fun d!6071 () Bool)

(declare-fun c!2692 () Bool)

(assert (=> d!6071 (= c!2692 (is-Nil!173 (tail!402 xs!372)))))

(declare-fun e!4432 () List!176)

(assert (=> d!6071 (= (map!156 (tail!402 xs!372) lambda!1558) e!4432)))

(declare-fun b!7727 () Bool)

(assert (=> b!7727 (= e!4432 Nil!174)))

(declare-fun b!7728 () Bool)

(declare-fun dynLambda!174 (Int Parenthesis!46) Balance!119)

(assert (=> b!7728 (= e!4432 (Cons!173 (dynLambda!174 lambda!1558 (head!390 (tail!402 xs!372))) (map!156 (tail!402 (tail!402 xs!372)) lambda!1558)))))

(assert (= (and d!6071 c!2692) b!7727))

(assert (= (and d!6071 (not c!2692)) b!7728))

(declare-fun b_lambda!3777 () Bool)

(assert (=> (not b_lambda!3777) (not b!7728)))

(declare-fun m!10577 () Bool)

(assert (=> b!7728 m!10577))

(declare-fun m!10579 () Bool)

(assert (=> b!7728 m!10579))

(assert (=> bs!1767 d!6071))

(declare-fun d!6073 () Bool)

(assert (=> d!6073 (= (fromParenthesis!0 (head!390 xs!372)) (ite (is-OpenParenthesis!45 (head!390 xs!372)) (Balance!120 1 0) (Balance!120 0 1)))))

(assert (=> b!7699 d!6073))

(declare-fun d!6075 () Bool)

(declare-fun c!2693 () Bool)

(assert (=> d!6075 (= c!2693 (and (is-Cons!173 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))) (is-Nil!174 (tail!403 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))))))))

(declare-fun e!4433 () Balance!119)

(assert (=> d!6075 (= (foldRight1!35 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559) e!4433)))

(declare-fun b!7729 () Bool)

(assert (=> b!7729 (= e!4433 (head!391 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))))))

(declare-fun b!7730 () Bool)

(assert (=> b!7730 (= e!4433 (dynLambda!173 lambda!1559 (head!391 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))) (foldRight1!35 (tail!403 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))) lambda!1559)))))

(assert (= (and d!6075 c!2693) b!7729))

(assert (= (and d!6075 (not c!2693)) b!7730))

(declare-fun b_lambda!3779 () Bool)

(assert (=> (not b_lambda!3779) (not b!7730)))

(declare-fun m!10581 () Bool)

(assert (=> b!7730 m!10581))

(assert (=> b!7730 m!10581))

(declare-fun m!10583 () Bool)

(assert (=> b!7730 m!10583))

(assert (=> bs!1763 d!6075))

(declare-fun d!6077 () Bool)

(declare-fun c!2694 () Bool)

(assert (=> d!6077 (= c!2694 (is-Nil!174 (map!156 xs!372 lambda!1558)))))

(declare-fun e!4434 () List!176)

(assert (=> d!6077 (= (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) e!4434)))

(declare-fun b!7731 () Bool)

(assert (=> b!7731 (= e!4434 (Cons!173 (Balance!120 0 0) Nil!174))))

(declare-fun b!7732 () Bool)

(assert (=> b!7732 (= e!4434 (Cons!173 (head!391 (map!156 xs!372 lambda!1558)) (append!68 (tail!403 (map!156 xs!372 lambda!1558)) (Cons!173 (Balance!120 0 0) Nil!174))))))

(assert (= (and d!6077 c!2694) b!7731))

(assert (= (and d!6077 (not c!2694)) b!7732))

(declare-fun m!10585 () Bool)

(assert (=> b!7732 m!10585))

(assert (=> bs!1763 d!6077))

(declare-fun d!6079 () Bool)

(declare-fun c!2695 () Bool)

(assert (=> d!6079 (= c!2695 (is-Nil!173 xs!372))))

(declare-fun e!4435 () List!176)

(assert (=> d!6079 (= (map!156 xs!372 lambda!1558) e!4435)))

(declare-fun b!7733 () Bool)

(assert (=> b!7733 (= e!4435 Nil!174)))

(declare-fun b!7734 () Bool)

(assert (=> b!7734 (= e!4435 (Cons!173 (dynLambda!174 lambda!1558 (head!390 xs!372)) (map!156 (tail!402 xs!372) lambda!1558)))))

(assert (= (and d!6079 c!2695) b!7733))

(assert (= (and d!6079 (not c!2695)) b!7734))

(declare-fun b_lambda!3781 () Bool)

(assert (=> (not b_lambda!3781) (not b!7734)))

(declare-fun m!10587 () Bool)

(assert (=> b!7734 m!10587))

(assert (=> b!7734 m!10563))

(assert (=> bs!1763 d!6079))

(declare-fun d!6081 () Bool)

(assert (=> d!6081 (= trivial!1 true)))

(assert (=> b!7705 d!6081))

(declare-fun d!6083 () Bool)

(declare-fun c!2696 () Bool)

(assert (=> d!6083 (= c!2696 (and (is-Cons!173 (map!156 xs!372 lambda!1558)) (is-Nil!174 (tail!403 (map!156 xs!372 lambda!1558)))))))

(declare-fun e!4436 () Balance!119)

(assert (=> d!6083 (= (foldRight1!35 (map!156 xs!372 lambda!1558) lambda!1559) e!4436)))

(declare-fun b!7735 () Bool)

(assert (=> b!7735 (= e!4436 (head!391 (map!156 xs!372 lambda!1558)))))

(declare-fun b!7736 () Bool)

(assert (=> b!7736 (= e!4436 (dynLambda!173 lambda!1559 (head!391 (map!156 xs!372 lambda!1558)) (foldRight1!35 (tail!403 (map!156 xs!372 lambda!1558)) lambda!1559)))))

(assert (= (and d!6083 c!2696) b!7735))

(assert (= (and d!6083 (not c!2696)) b!7736))

(declare-fun b_lambda!3783 () Bool)

(assert (=> (not b_lambda!3783) (not b!7736)))

(declare-fun m!10589 () Bool)

(assert (=> b!7736 m!10589))

(assert (=> b!7736 m!10589))

(declare-fun m!10591 () Bool)

(assert (=> b!7736 m!10591))

(assert (=> b!7704 d!6083))

(assert (=> b!7704 d!6079))

(assert (=> b!7704 d!6077))

(assert (=> b!7704 d!6075))

(declare-fun bs!1769 () Bool)

(declare-fun d!6085 () Bool)

(assert (= bs!1769 (and d!6085 b!7704)))

(declare-fun lambda!1588 () Int)

(assert (=> bs!1769 (= lambda!1588 lambda!1558)))

(declare-fun lambda!1589 () Int)

(assert (=> bs!1769 (= lambda!1589 lambda!1559)))

(declare-fun b!7757 () Bool)

(declare-fun e!4447 () Int)

(assert (=> b!7757 (= e!4447 lambda!1589)))

(declare-fun b!7758 () Bool)

(assert (=> b!7758 (= e!4447 lambda!1589)))

(declare-fun b!7759 () Bool)

(declare-fun e!4451 () List!176)

(declare-fun e!4449 () Int)

(assert (=> b!7759 (= e!4451 (append!68 (map!156 (tail!402 xs!372) e!4449) (Cons!173 (Balance!120 0 0) Nil!174)))))

(declare-fun c!2708 () Bool)

(declare-fun lt!1454 () Bool)

(assert (=> b!7759 (= c!2708 lt!1454)))

(declare-fun b!7760 () Bool)

(assert (=> b!7760 (= e!4449 lambda!1588)))

(declare-fun b!7761 () Bool)

(declare-fun e!4450 () Balance!119)

(assert (=> b!7761 (= e!4450 (foldRight1!35 e!4451 e!4447))))

(declare-fun c!2707 () Bool)

(declare-fun lt!1455 () Bool)

(assert (=> b!7761 (= c!2707 lt!1455)))

(declare-fun c!2710 () Bool)

(assert (=> b!7761 (= c!2710 (or lt!1454 (not lt!1454)))))

(declare-fun b!7762 () Bool)

(declare-fun res!2295 () Balance!119)

(assert (=> b!7762 (= e!4450 res!2295)))

(assert (=> b!7762 true))

(assert (=> b!7762 true))

(declare-fun e!4448 () Bool)

(declare-fun because!2 (ProofOps!78 Bool) Bool)

(assert (=> d!6085 (because!2 (ProofOps!79 (= (foldRight1!35 (append!68 (map!156 (tail!402 xs!372) lambda!1588) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1589) (foldRight1!35 (map!156 (tail!402 xs!372) lambda!1588) lambda!1589))) e!4448)))

(declare-fun c!2711 () Bool)

(assert (=> d!6085 (= c!2711 lt!1454)))

(declare-fun lt!1453 () Balance!119)

(assert (=> d!6085 (= lt!1453 e!4450)))

(declare-fun c!2709 () Bool)

(assert (=> d!6085 (= c!2709 (or lt!1455 (not lt!1454)))))

(assert (=> d!6085 (= lt!1455 lt!1454)))

(assert (=> d!6085 (= lt!1454 (and (is-Cons!172 (tail!402 xs!372)) (is-Nil!173 (tail!402 (tail!402 xs!372)))))))

(assert (=> d!6085 (not (isEmpty!147 (tail!402 xs!372)))))

(assert (=> d!6085 (= (remove_null_balance!0 (tail!402 xs!372)) true)))

(declare-fun b!7763 () Bool)

(assert (=> b!7763 (= e!4449 lambda!1588)))

(declare-fun b!7764 () Bool)

(declare-fun res!2296 () List!176)

(assert (=> b!7764 (= e!4451 res!2296)))

(assert (=> b!7764 true))

(declare-fun b!7765 () Bool)

(assert (=> b!7765 (= e!4448 true)))

(assert (=> b!7765 (= lt!1453 (foldRight1!35 (map!156 (tail!402 xs!372) lambda!1588) lambda!1589))))

(declare-fun b!7766 () Bool)

(assert (=> b!7766 (= e!4448 true)))

(assert (=> b!7766 (= lt!1453 (foldRight1!35 (map!156 (tail!402 xs!372) lambda!1588) lambda!1589))))

(assert (= (and b!7759 c!2708) b!7763))

(assert (= (and b!7759 (not c!2708)) b!7760))

(assert (= (and b!7761 c!2710) b!7759))

(assert (= (and b!7761 (not c!2710)) b!7764))

(assert (= (and b!7761 c!2707) b!7758))

(assert (= (and b!7761 (not c!2707)) b!7757))

(assert (= (and d!6085 c!2709) b!7761))

(assert (= (and d!6085 (not c!2709)) b!7762))

(assert (= (and d!6085 c!2711) b!7766))

(assert (= (and d!6085 (not c!2711)) b!7765))

(declare-fun m!10593 () Bool)

(assert (=> b!7766 m!10593))

(assert (=> b!7766 m!10593))

(declare-fun m!10595 () Bool)

(assert (=> b!7766 m!10595))

(assert (=> b!7765 m!10593))

(assert (=> b!7765 m!10593))

(assert (=> b!7765 m!10595))

(declare-fun m!10597 () Bool)

(assert (=> b!7761 m!10597))

(declare-fun m!10599 () Bool)

(assert (=> b!7759 m!10599))

(assert (=> b!7759 m!10599))

(declare-fun m!10601 () Bool)

(assert (=> b!7759 m!10601))

(assert (=> d!6085 m!10593))

(declare-fun m!10603 () Bool)

(assert (=> d!6085 m!10603))

(assert (=> d!6085 m!10593))

(assert (=> d!6085 m!10593))

(declare-fun m!10605 () Bool)

(assert (=> d!6085 m!10605))

(assert (=> d!6085 m!10593))

(assert (=> d!6085 m!10595))

(declare-fun m!10607 () Bool)

(assert (=> d!6085 m!10607))

(assert (=> d!6085 m!10603))

(declare-fun m!10609 () Bool)

(assert (=> d!6085 m!10609))

(assert (=> bs!1765 d!6085))

(assert (=> bs!1762 d!6065))

(assert (=> bs!1762 d!6067))

(assert (=> bs!1762 d!6069))

(assert (=> bs!1762 d!6071))

(declare-fun d!6087 () Bool)

(assert (=> d!6087 (= (isEmpty!147 xs!372) (is-Nil!173 xs!372))))

(assert (=> start!1474 d!6087))

(declare-fun d!6089 () Bool)

(declare-fun res!2299 () Bool)

(declare-fun e!4454 () Bool)

(assert (=> d!6089 (=> (not res!2299) (not e!4454))))

(assert (=> d!6089 (= res!2299 (= (dynLambda!172 (x!4225 thiss!1147)) (dynLambda!172 (y!480 thiss!1147))))))

(assert (=> d!6089 (= (inv!275 thiss!1147) e!4454)))

(declare-fun b!7769 () Bool)

(assert (=> b!7769 (= e!4454 (dynLambda!171 (evidence!114 thiss!1147)))))

(assert (= (and d!6089 res!2299) b!7769))

(declare-fun b_lambda!3785 () Bool)

(assert (=> (not b_lambda!3785) (not d!6089)))

(declare-fun t!1675 () Bool)

(declare-fun tb!1335 () Bool)

(assert (=> (and b!7702 (= (x!4225 thiss!1147) (x!4225 thiss!1147)) t!1675) tb!1335))

(declare-fun result!1375 () Bool)

(assert (=> tb!1335 (= result!1375 true)))

(assert (=> d!6089 t!1675))

(declare-fun b_and!2451 () Bool)

(assert (= b_and!2439 (and (=> t!1675 result!1375) b_and!2451)))

(declare-fun t!1677 () Bool)

(declare-fun tb!1337 () Bool)

(assert (=> (and b!7702 (= (y!480 thiss!1147) (x!4225 thiss!1147)) t!1677) tb!1337))

(declare-fun result!1377 () Bool)

(assert (=> tb!1337 (= result!1377 true)))

(assert (=> d!6089 t!1677))

(declare-fun b_and!2453 () Bool)

(assert (= b_and!2441 (and (=> t!1677 result!1377) b_and!2453)))

(declare-fun t!1679 () Bool)

(declare-fun tb!1339 () Bool)

(assert (=> (and b!7701 (= (x!4225 that!309) (x!4225 thiss!1147)) t!1679) tb!1339))

(declare-fun result!1379 () Bool)

(assert (=> tb!1339 (= result!1379 true)))

(assert (=> d!6089 t!1679))

(declare-fun b_and!2455 () Bool)

(assert (= b_and!2443 (and (=> t!1679 result!1379) b_and!2455)))

(declare-fun tb!1341 () Bool)

(declare-fun t!1681 () Bool)

(assert (=> (and b!7701 (= (y!480 that!309) (x!4225 thiss!1147)) t!1681) tb!1341))

(declare-fun result!1381 () Bool)

(assert (=> tb!1341 (= result!1381 true)))

(assert (=> d!6089 t!1681))

(declare-fun b_and!2457 () Bool)

(assert (= b_and!2445 (and (=> t!1681 result!1381) b_and!2457)))

(declare-fun b_lambda!3787 () Bool)

(assert (=> (not b_lambda!3787) (not d!6089)))

(assert (=> d!6089 t!1655))

(declare-fun b_and!2459 () Bool)

(assert (= b_and!2451 (and (=> t!1655 result!1355) b_and!2459)))

(assert (=> d!6089 t!1657))

(declare-fun b_and!2461 () Bool)

(assert (= b_and!2453 (and (=> t!1657 result!1357) b_and!2461)))

(assert (=> d!6089 t!1659))

(declare-fun b_and!2463 () Bool)

(assert (= b_and!2455 (and (=> t!1659 result!1359) b_and!2463)))

(assert (=> d!6089 t!1661))

(declare-fun b_and!2465 () Bool)

(assert (= b_and!2457 (and (=> t!1661 result!1361) b_and!2465)))

(declare-fun b_lambda!3789 () Bool)

(assert (=> (not b_lambda!3789) (not b!7769)))

(assert (=> b!7769 t!1671))

(declare-fun b_and!2467 () Bool)

(assert (= b_and!2447 (and (=> t!1671 result!1371) b_and!2467)))

(assert (=> b!7769 t!1673))

(declare-fun b_and!2469 () Bool)

(assert (= b_and!2449 (and (=> t!1673 result!1373) b_and!2469)))

(declare-fun m!10611 () Bool)

(assert (=> d!6089 m!10611))

(assert (=> d!6089 m!10539))

(assert (=> b!7769 m!10557))

(assert (=> start!1474 d!6089))

(declare-fun d!6091 () Bool)

(declare-fun res!2300 () Bool)

(declare-fun e!4455 () Bool)

(assert (=> d!6091 (=> (not res!2300) (not e!4455))))

(assert (=> d!6091 (= res!2300 (= (dynLambda!172 (x!4225 that!309)) (dynLambda!172 (y!480 that!309))))))

(assert (=> d!6091 (= (inv!275 that!309) e!4455)))

(declare-fun b!7770 () Bool)

(assert (=> b!7770 (= e!4455 (dynLambda!171 (evidence!114 that!309)))))

(assert (= (and d!6091 res!2300) b!7770))

(declare-fun b_lambda!3791 () Bool)

(assert (=> (not b_lambda!3791) (not d!6091)))

(assert (=> d!6091 t!1663))

(declare-fun b_and!2471 () Bool)

(assert (= b_and!2459 (and (=> t!1663 result!1363) b_and!2471)))

(assert (=> d!6091 t!1665))

(declare-fun b_and!2473 () Bool)

(assert (= b_and!2461 (and (=> t!1665 result!1365) b_and!2473)))

(assert (=> d!6091 t!1667))

(declare-fun b_and!2475 () Bool)

(assert (= b_and!2463 (and (=> t!1667 result!1367) b_and!2475)))

(assert (=> d!6091 t!1669))

(declare-fun b_and!2477 () Bool)

(assert (= b_and!2465 (and (=> t!1669 result!1369) b_and!2477)))

(declare-fun b_lambda!3793 () Bool)

(assert (=> (not b_lambda!3793) (not d!6091)))

(declare-fun tb!1343 () Bool)

(declare-fun t!1683 () Bool)

(assert (=> (and b!7702 (= (x!4225 thiss!1147) (y!480 that!309)) t!1683) tb!1343))

(declare-fun result!1383 () Bool)

(assert (=> tb!1343 (= result!1383 true)))

(assert (=> d!6091 t!1683))

(declare-fun b_and!2479 () Bool)

(assert (= b_and!2471 (and (=> t!1683 result!1383) b_and!2479)))

(declare-fun t!1685 () Bool)

(declare-fun tb!1345 () Bool)

(assert (=> (and b!7702 (= (y!480 thiss!1147) (y!480 that!309)) t!1685) tb!1345))

(declare-fun result!1385 () Bool)

(assert (=> tb!1345 (= result!1385 true)))

(assert (=> d!6091 t!1685))

(declare-fun b_and!2481 () Bool)

(assert (= b_and!2473 (and (=> t!1685 result!1385) b_and!2481)))

(declare-fun t!1687 () Bool)

(declare-fun tb!1347 () Bool)

(assert (=> (and b!7701 (= (x!4225 that!309) (y!480 that!309)) t!1687) tb!1347))

(declare-fun result!1387 () Bool)

(assert (=> tb!1347 (= result!1387 true)))

(assert (=> d!6091 t!1687))

(declare-fun b_and!2483 () Bool)

(assert (= b_and!2475 (and (=> t!1687 result!1387) b_and!2483)))

(declare-fun t!1689 () Bool)

(declare-fun tb!1349 () Bool)

(assert (=> (and b!7701 (= (y!480 that!309) (y!480 that!309)) t!1689) tb!1349))

(declare-fun result!1389 () Bool)

(assert (=> tb!1349 (= result!1389 true)))

(assert (=> d!6091 t!1689))

(declare-fun b_and!2485 () Bool)

(assert (= b_and!2477 (and (=> t!1689 result!1389) b_and!2485)))

(declare-fun b_lambda!3795 () Bool)

(assert (=> (not b_lambda!3795) (not b!7770)))

(declare-fun tb!1351 () Bool)

(declare-fun t!1691 () Bool)

(assert (=> (and b!7702 (= (evidence!114 thiss!1147) (evidence!114 that!309)) t!1691) tb!1351))

(declare-fun result!1391 () Bool)

(assert (=> tb!1351 (= result!1391 true)))

(assert (=> b!7770 t!1691))

(declare-fun b_and!2487 () Bool)

(assert (= b_and!2467 (and (=> t!1691 result!1391) b_and!2487)))

(declare-fun t!1693 () Bool)

(declare-fun tb!1353 () Bool)

(assert (=> (and b!7701 (= (evidence!114 that!309) (evidence!114 that!309)) t!1693) tb!1353))

(declare-fun result!1393 () Bool)

(assert (=> tb!1353 (= result!1393 true)))

(assert (=> b!7770 t!1693))

(declare-fun b_and!2489 () Bool)

(assert (= b_and!2469 (and (=> t!1693 result!1393) b_and!2489)))

(assert (=> d!6091 m!10541))

(declare-fun m!10613 () Bool)

(assert (=> d!6091 m!10613))

(declare-fun m!10615 () Bool)

(assert (=> b!7770 m!10615))

(assert (=> start!1474 d!6091))

(assert (=> bs!1766 d!6075))

(assert (=> bs!1766 d!6077))

(assert (=> bs!1766 d!6079))

(declare-fun b_lambda!3797 () Bool)

(assert (= b_lambda!3791 (or (and b!7701 b_free!595) (and b!7702 b_free!589 (= (x!4225 thiss!1147) (x!4225 that!309))) (and b!7701 b_free!597 (= (y!480 that!309) (x!4225 that!309))) (and b!7705 (= lambda!1560 (x!4225 that!309))) (and b!7702 b_free!591 (= (y!480 thiss!1147) (x!4225 that!309))) (and b!7699 (= lambda!1562 (x!4225 that!309))) b_lambda!3797)))

(assert (=> (and b!7699 (= lambda!1562 (x!4225 that!309)) d!6091) d!6053))

(assert (=> (and b!7705 (= lambda!1560 (x!4225 that!309)) d!6091) d!6055))

(declare-fun b_lambda!3799 () Bool)

(assert (= b_lambda!3785 (or (and b!7699 (= lambda!1562 (x!4225 thiss!1147))) (and b!7702 b_free!591 (= (y!480 thiss!1147) (x!4225 thiss!1147))) (and b!7702 b_free!589) (and b!7701 b_free!595 (= (x!4225 that!309) (x!4225 thiss!1147))) (and b!7701 b_free!597 (= (y!480 that!309) (x!4225 thiss!1147))) (and b!7705 (= lambda!1560 (x!4225 thiss!1147))) b_lambda!3799)))

(declare-fun bs!1770 () Bool)

(declare-fun d!6093 () Bool)

(assert (= bs!1770 (and d!6093 b!7699)))

(assert (=> bs!1770 (= (dynLambda!172 lambda!1562) (++!3 (fromParenthesis!0 (head!390 xs!372)) (foldRight1!35 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559)))))

(assert (=> bs!1770 m!10559))

(assert (=> bs!1770 m!10561))

(assert (=> bs!1770 m!10563))

(assert (=> bs!1770 m!10559))

(assert (=> bs!1770 m!10561))

(assert (=> bs!1770 m!10565))

(assert (=> bs!1770 m!10563))

(assert (=> (and b!7699 (= lambda!1562 (x!4225 thiss!1147)) d!6089) d!6093))

(declare-fun bs!1771 () Bool)

(declare-fun d!6095 () Bool)

(assert (= bs!1771 (and d!6095 b!7705)))

(assert (=> bs!1771 (= (dynLambda!172 lambda!1560) (foldRight1!35 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559))))

(assert (=> bs!1771 m!10543))

(assert (=> bs!1771 m!10543))

(assert (=> bs!1771 m!10545))

(assert (=> bs!1771 m!10545))

(assert (=> bs!1771 m!10547))

(assert (=> (and b!7705 (= lambda!1560 (x!4225 thiss!1147)) d!6089) d!6095))

(declare-fun b_lambda!3801 () Bool)

(assert (= b_lambda!3793 (or (and b!7701 b_free!595 (= (x!4225 that!309) (y!480 that!309))) (and b!7702 b_free!591 (= (y!480 thiss!1147) (y!480 that!309))) (and b!7702 b_free!589 (= (x!4225 thiss!1147) (y!480 that!309))) (and b!7705 (= lambda!1560 (y!480 that!309))) (and b!7699 (= lambda!1562 (y!480 that!309))) (and b!7701 b_free!597) b_lambda!3801)))

(declare-fun bs!1772 () Bool)

(declare-fun d!6097 () Bool)

(assert (= bs!1772 (and d!6097 b!7705)))

(assert (=> bs!1772 (= (dynLambda!172 lambda!1560) (foldRight1!35 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559))))

(assert (=> bs!1772 m!10543))

(assert (=> bs!1772 m!10543))

(assert (=> bs!1772 m!10545))

(assert (=> bs!1772 m!10545))

(assert (=> bs!1772 m!10547))

(assert (=> (and b!7705 (= lambda!1560 (y!480 that!309)) d!6091) d!6097))

(declare-fun bs!1773 () Bool)

(declare-fun d!6099 () Bool)

(assert (= bs!1773 (and d!6099 b!7699)))

(assert (=> bs!1773 (= (dynLambda!172 lambda!1562) (++!3 (fromParenthesis!0 (head!390 xs!372)) (foldRight1!35 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174)) lambda!1559)))))

(assert (=> bs!1773 m!10559))

(assert (=> bs!1773 m!10561))

(assert (=> bs!1773 m!10563))

(assert (=> bs!1773 m!10559))

(assert (=> bs!1773 m!10561))

(assert (=> bs!1773 m!10565))

(assert (=> bs!1773 m!10563))

(assert (=> (and b!7699 (= lambda!1562 (y!480 that!309)) d!6091) d!6099))

(declare-fun b_lambda!3803 () Bool)

(assert (= b_lambda!3775 (or b!7704 b_lambda!3803)))

(declare-fun bs!1774 () Bool)

(declare-fun d!6101 () Bool)

(assert (= bs!1774 (and d!6101 b!7704)))

(assert (=> bs!1774 (= (dynLambda!173 lambda!1559 (head!391 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))) (foldRight1!35 (tail!403 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))) lambda!1559)) (++!3 (head!391 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))) (foldRight1!35 (tail!403 (append!68 (map!156 (tail!402 xs!372) lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))) lambda!1559)))))

(assert (=> bs!1774 m!10571))

(declare-fun m!10617 () Bool)

(assert (=> bs!1774 m!10617))

(assert (=> b!7716 d!6101))

(declare-fun b_lambda!3805 () Bool)

(assert (= b_lambda!3777 (or b!7704 b_lambda!3805)))

(declare-fun bs!1775 () Bool)

(declare-fun d!6103 () Bool)

(assert (= bs!1775 (and d!6103 b!7704)))

(assert (=> bs!1775 (= (dynLambda!174 lambda!1558 (head!390 (tail!402 xs!372))) (fromParenthesis!0 (head!390 (tail!402 xs!372))))))

(declare-fun m!10619 () Bool)

(assert (=> bs!1775 m!10619))

(assert (=> b!7728 d!6103))

(declare-fun b_lambda!3807 () Bool)

(assert (= b_lambda!3789 (or (and b!7705 (= lambda!1561 (evidence!114 thiss!1147))) (and b!7699 (= lambda!1563 (evidence!114 thiss!1147))) (and b!7702 b_free!593) (and b!7701 b_free!599 (= (evidence!114 that!309) (evidence!114 thiss!1147))) b_lambda!3807)))

(assert (=> (and b!7705 (= lambda!1561 (evidence!114 thiss!1147)) b!7769) d!6057))

(assert (=> (and b!7699 (= lambda!1563 (evidence!114 thiss!1147)) b!7769) d!6059))

(declare-fun b_lambda!3809 () Bool)

(assert (= b_lambda!3781 (or b!7704 b_lambda!3809)))

(declare-fun bs!1776 () Bool)

(declare-fun d!6105 () Bool)

(assert (= bs!1776 (and d!6105 b!7704)))

(assert (=> bs!1776 (= (dynLambda!174 lambda!1558 (head!390 xs!372)) (fromParenthesis!0 (head!390 xs!372)))))

(assert (=> bs!1776 m!10537))

(assert (=> b!7734 d!6105))

(declare-fun b_lambda!3811 () Bool)

(assert (= b_lambda!3787 (or (and b!7702 b_free!591) (and b!7699 (= lambda!1562 (y!480 thiss!1147))) (and b!7701 b_free!597 (= (y!480 that!309) (y!480 thiss!1147))) (and b!7701 b_free!595 (= (x!4225 that!309) (y!480 thiss!1147))) (and b!7702 b_free!589 (= (x!4225 thiss!1147) (y!480 thiss!1147))) (and b!7705 (= lambda!1560 (y!480 thiss!1147))) b_lambda!3811)))

(assert (=> (and b!7705 (= lambda!1560 (y!480 thiss!1147)) d!6089) d!6061))

(assert (=> (and b!7699 (= lambda!1562 (y!480 thiss!1147)) d!6089) d!6063))

(declare-fun b_lambda!3813 () Bool)

(assert (= b_lambda!3783 (or b!7704 b_lambda!3813)))

(declare-fun bs!1777 () Bool)

(declare-fun d!6107 () Bool)

(assert (= bs!1777 (and d!6107 b!7704)))

(assert (=> bs!1777 (= (dynLambda!173 lambda!1559 (head!391 (map!156 xs!372 lambda!1558)) (foldRight1!35 (tail!403 (map!156 xs!372 lambda!1558)) lambda!1559)) (++!3 (head!391 (map!156 xs!372 lambda!1558)) (foldRight1!35 (tail!403 (map!156 xs!372 lambda!1558)) lambda!1559)))))

(assert (=> bs!1777 m!10589))

(declare-fun m!10621 () Bool)

(assert (=> bs!1777 m!10621))

(assert (=> b!7736 d!6107))

(declare-fun b_lambda!3815 () Bool)

(assert (= b_lambda!3779 (or b!7704 b_lambda!3815)))

(declare-fun bs!1778 () Bool)

(declare-fun d!6109 () Bool)

(assert (= bs!1778 (and d!6109 b!7704)))

(assert (=> bs!1778 (= (dynLambda!173 lambda!1559 (head!391 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))) (foldRight1!35 (tail!403 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))) lambda!1559)) (++!3 (head!391 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))) (foldRight1!35 (tail!403 (append!68 (map!156 xs!372 lambda!1558) (Cons!173 (Balance!120 0 0) Nil!174))) lambda!1559)))))

(assert (=> bs!1778 m!10581))

(declare-fun m!10623 () Bool)

(assert (=> bs!1778 m!10623))

(assert (=> b!7730 d!6109))

(declare-fun b_lambda!3817 () Bool)

(assert (= b_lambda!3795 (or (and b!7705 (= lambda!1561 (evidence!114 that!309))) (and b!7699 (= lambda!1563 (evidence!114 that!309))) (and b!7702 b_free!593 (= (evidence!114 thiss!1147) (evidence!114 that!309))) (and b!7701 b_free!599) b_lambda!3817)))

(declare-fun bs!1779 () Bool)

(declare-fun d!6111 () Bool)

(assert (= bs!1779 (and d!6111 b!7705)))

(assert (=> bs!1779 (= (dynLambda!171 lambda!1561) trivial!1)))

(assert (=> (and b!7705 (= lambda!1561 (evidence!114 that!309)) b!7770) d!6111))

(declare-fun bs!1780 () Bool)

(declare-fun d!6113 () Bool)

(assert (= bs!1780 (and d!6113 b!7699)))

(assert (=> bs!1780 (= (dynLambda!171 lambda!1563) (remove_null_balance!0 (tail!402 xs!372)))))

(assert (=> bs!1780 m!10567))

(assert (=> (and b!7699 (= lambda!1563 (evidence!114 that!309)) b!7770) d!6113))

(push 1)

(assert (not b_lambda!3773))

(assert (not bs!1777))

(assert (not b_lambda!3809))

(assert (not b_lambda!3769))

(assert (not b_lambda!3801))

(assert (not b_lambda!3807))

(assert (not b!7766))

(assert (not b!7732))

(assert (not b!7765))

(assert (not bs!1773))

(assert (not b_lambda!3799))

(assert (not b_lambda!3811))

(assert b_and!2483)

(assert (not b!7734))

(assert (not b_next!1253))

(assert (not bs!1775))

(assert (not b!7722))

(assert (not b_lambda!3803))

(assert b_and!2489)

(assert (not b!7730))

(assert (not b_lambda!3797))

(assert (not b!7736))

(assert (not d!6085))

(assert b_and!2485)

(assert (not b!7761))

(assert (not b_lambda!3813))

(assert (not b_next!1259))

(assert (not b_lambda!3771))

(assert (not b_next!1257))

(assert b_and!2487)

(assert (not b!7716))

(assert (not b_lambda!3815))

(assert b_and!2479)

(assert b_and!2481)

(assert (not bs!1771))

(assert (not bs!1780))

(assert (not b!7759))

(assert (not b_next!1261))

(assert (not bs!1778))

(assert (not bs!1776))

(assert (not d!6065))

(assert (not bs!1772))

(assert (not b_lambda!3817))

(assert (not b_next!1255))

(assert (not b_lambda!3805))

(assert (not bs!1774))

(assert (not bs!1770))

(assert (not b!7728))

(assert (not b_next!1263))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2483)

(assert (not b_next!1253))

(assert b_and!2489)

(assert b_and!2485)

(assert (not b_next!1259))

(assert (not b_next!1257))

(assert b_and!2487)

(assert b_and!2479)

(assert b_and!2481)

(assert (not b_next!1261))

(assert (not b_next!1255))

(assert (not b_next!1263))

(check-sat)

(pop 1)

