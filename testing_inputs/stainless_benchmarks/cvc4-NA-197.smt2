; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1452 () Bool)

(assert start!1452)

(declare-fun b!7613 () Bool)

(declare-fun b_free!553 () Bool)

(declare-fun b_next!1169 () Bool)

(assert (=> b!7613 (= b_free!553 (not b_next!1169))))

(declare-fun tp!966 () Bool)

(declare-fun b_and!2343 () Bool)

(assert (=> b!7613 (= tp!966 b_and!2343)))

(declare-fun b_free!555 () Bool)

(declare-fun b_next!1171 () Bool)

(assert (=> b!7613 (= b_free!555 (not b_next!1171))))

(declare-fun tp!964 () Bool)

(declare-fun b_and!2345 () Bool)

(assert (=> b!7613 (= tp!964 b_and!2345)))

(declare-fun b_free!557 () Bool)

(declare-fun b_next!1173 () Bool)

(assert (=> start!1452 (= b_free!557 (not b_next!1173))))

(declare-fun tp!962 () Bool)

(declare-fun b_and!2347 () Bool)

(assert (=> start!1452 (= tp!962 b_and!2347)))

(declare-fun b!7612 () Bool)

(declare-fun b_free!559 () Bool)

(declare-fun b_next!1175 () Bool)

(assert (=> b!7612 (= b_free!559 (not b_next!1175))))

(declare-fun tp!967 () Bool)

(declare-fun b_and!2349 () Bool)

(assert (=> b!7612 (= tp!967 b_and!2349)))

(declare-fun b_free!561 () Bool)

(declare-fun b_next!1177 () Bool)

(assert (=> b!7612 (= b_free!561 (not b_next!1177))))

(declare-fun tp!965 () Bool)

(declare-fun b_and!2351 () Bool)

(assert (=> b!7612 (= tp!965 b_and!2351)))

(declare-fun b_free!563 () Bool)

(declare-fun b_next!1179 () Bool)

(assert (=> b!7612 (= b_free!563 (not b_next!1179))))

(declare-fun tp!963 () Bool)

(declare-fun b_and!2353 () Bool)

(assert (=> b!7612 (= tp!963 b_and!2353)))

(declare-fun b!7610 () Bool)

(assert (=> b!7610 true))

(declare-datatypes () ((Balance!113 (Balance!114 (extraOpen!97 Int) (extraClose!97 Int)))))

(declare-datatypes () ((EqProof!46 (EqProof!47 (x!4171 Int) (y!476 Int)))))

(declare-fun thiss!1157 () EqProof!46)

(declare-fun b_next!1181 () Bool)

(declare-fun lambda!1492 () Int)

(assert (=> b!7613 (= b_next!1169 (or (and b!7610 (= lambda!1492 (x!4171 thiss!1157))) b_next!1181))))

(declare-fun b_next!1183 () Bool)

(assert (=> b!7613 (= b_next!1171 (or (and b!7610 (= lambda!1492 (y!476 thiss!1157))) b_next!1183))))

(declare-fun b_next!1185 () Bool)

(declare-datatypes () ((EqEvidence!88 (EqEvidence!89 (x!4172 Int) (y!477 Int) (evidence!111 Int)))))

(declare-fun thiss!1147 () EqEvidence!88)

(assert (=> b!7612 (= b_next!1175 (or (and b!7610 (= lambda!1492 (x!4172 thiss!1147))) b_next!1185))))

(declare-fun b_next!1187 () Bool)

(assert (=> b!7612 (= b_next!1177 (or (and b!7610 (= lambda!1492 (y!477 thiss!1147))) b_next!1187))))

(declare-fun m!10453 () Bool)

(assert (=> b!7610 m!10453))

(declare-fun lambda!1493 () Int)

(declare-fun proof!288 () Int)

(declare-fun dynLambda!167 (Int) Bool)

(assert (=> (and start!1452 b!7610 (= (dynLambda!167 lambda!1493) (dynLambda!167 proof!288))) (= lambda!1493 proof!288)))

(assert (=> (and b!7612 b!7610 (= (dynLambda!167 lambda!1493) (dynLambda!167 (evidence!111 thiss!1147)))) (= lambda!1493 (evidence!111 thiss!1147))))

(declare-fun b_next!1189 () Bool)

(assert (=> start!1452 (= b_next!1173 (or (and b!7610 (= lambda!1493 proof!288)) b_next!1189))))

(declare-fun b_next!1191 () Bool)

(assert (=> b!7612 (= b_next!1179 (or (and b!7610 (= lambda!1493 (evidence!111 thiss!1147))) b_next!1191))))

(declare-fun b!7611 () Bool)

(declare-fun m!10455 () Bool)

(assert (=> b!7611 m!10455))

(declare-fun bs!1740 () Bool)

(assert (= bs!1740 (and b!7611 b!7610)))

(declare-fun lambda!1494 () Int)

(assert (=> bs!1740 (not (= lambda!1494 lambda!1492))))

(assert (=> b!7611 true))

(declare-fun b_next!1193 () Bool)

(assert (=> b!7613 (= b_next!1181 (or (and b!7611 (= lambda!1494 (x!4171 thiss!1157))) b_next!1193))))

(declare-fun b_next!1195 () Bool)

(assert (=> b!7613 (= b_next!1183 (or (and b!7611 (= lambda!1494 (y!476 thiss!1157))) b_next!1195))))

(declare-fun b_next!1197 () Bool)

(assert (=> b!7612 (= b_next!1185 (or (and b!7611 (= lambda!1494 (x!4172 thiss!1147))) b_next!1197))))

(declare-fun b_next!1199 () Bool)

(assert (=> b!7612 (= b_next!1187 (or (and b!7611 (= lambda!1494 (y!477 thiss!1147))) b_next!1199))))

(declare-fun bs!1741 () Bool)

(declare-fun b!7607 () Bool)

(assert (= bs!1741 (and b!7607 b!7610)))

(declare-fun lambda!1495 () Int)

(assert (=> bs!1741 (not (= lambda!1495 lambda!1493))))

(assert (=> b!7607 true))

(declare-fun b_next!1201 () Bool)

(assert (=> start!1452 (= b_next!1189 (or (and b!7607 (= lambda!1495 proof!288)) b_next!1201))))

(declare-fun b_next!1203 () Bool)

(assert (=> b!7612 (= b_next!1191 (or (and b!7607 (= lambda!1495 (evidence!111 thiss!1147))) b_next!1203))))

(declare-fun b!7606 () Bool)

(declare-fun res!2230 () Bool)

(declare-fun e!4373 () Bool)

(assert (=> b!7606 (=> (not res!2230) (not e!4373))))

(declare-datatypes () ((Parenthesis!45 (CloseParenthesis!44) (OpenParenthesis!44))))

(declare-datatypes () ((List!173 (Nil!171) (Cons!170 (head!388 Parenthesis!45) (tail!400 List!173)))))

(declare-fun xs!372 () List!173)

(assert (=> b!7606 (= res!2230 (or (not (is-Cons!170 xs!372)) (not (is-Nil!171 (tail!400 xs!372)))))))

(declare-fun res!2231 () Bool)

(assert (=> b!7607 (=> (not res!2231) (not e!4373))))

(assert (=> b!7607 (= res!2231 (= proof!288 lambda!1495))))

(declare-fun b!7608 () Bool)

(assert (=> b!7608 (= e!4373 (not (dynLambda!167 proof!288)))))

(declare-fun b!7609 () Bool)

(declare-fun res!2229 () Bool)

(assert (=> b!7609 (=> (not res!2229) (not e!4373))))

(declare-datatypes () ((ProofOps!76 (ProofOps!77 (prop!148 Bool)))))

(declare-fun thiss!1106 () ProofOps!76)

(declare-fun lambda!1491 () Int)

(declare-fun lambda!1490 () Int)

(declare-datatypes () ((List!174 (Nil!172) (Cons!171 (head!389 Balance!113) (tail!401 List!174)))))

(declare-fun foldRight1!34 (List!174 Int) Balance!113)

(declare-fun append!67 (List!174 List!174) List!174)

(declare-fun map!155 (List!173 Int) List!174)

(assert (=> b!7609 (= res!2229 (= thiss!1106 (ProofOps!77 (= (foldRight1!34 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172)) lambda!1491) (foldRight1!34 (map!155 xs!372 lambda!1490) lambda!1491)))))))

(declare-fun res!2228 () Bool)

(assert (=> b!7610 (=> (not res!2228) (not e!4373))))

(assert (=> b!7610 (= res!2228 (= thiss!1147 (EqEvidence!89 lambda!1492 lambda!1492 lambda!1493)))))

(declare-fun res!2233 () Bool)

(assert (=> b!7611 (=> (not res!2233) (not e!4373))))

(assert (=> b!7611 (= res!2233 (= thiss!1157 (EqProof!47 lambda!1494 lambda!1494)))))

(declare-fun e!4374 () Bool)

(assert (=> b!7612 (= e!4374 (and tp!967 tp!965 tp!963))))

(declare-fun e!4372 () Bool)

(assert (=> b!7613 (= e!4372 (and tp!966 tp!964))))

(declare-fun res!2232 () Bool)

(assert (=> start!1452 (=> (not res!2232) (not e!4373))))

(declare-fun isEmpty!146 (List!173) Bool)

(assert (=> start!1452 (= res!2232 (not (isEmpty!146 xs!372)))))

(assert (=> start!1452 e!4373))

(declare-fun inv!271 (EqProof!46) Bool)

(assert (=> start!1452 (and (inv!271 thiss!1157) e!4372)))

(assert (=> start!1452 true))

(assert (=> start!1452 tp!962))

(declare-fun inv!272 (EqEvidence!88) Bool)

(assert (=> start!1452 (and (inv!272 thiss!1147) e!4374)))

(assert (= (and start!1452 res!2232) b!7609))

(assert (= (and b!7609 res!2229) b!7606))

(assert (= (and b!7606 res!2230) b!7610))

(assert (= (and b!7610 res!2228) b!7611))

(assert (= (and b!7611 res!2233) b!7607))

(assert (= (and b!7607 res!2231) b!7608))

(assert (= start!1452 b!7613))

(assert (= start!1452 b!7612))

(declare-fun b_lambda!3727 () Bool)

(assert (=> (not b_lambda!3727) (not b!7608)))

(declare-fun t!1615 () Bool)

(declare-fun tb!1275 () Bool)

(assert (=> (and start!1452 (= proof!288 proof!288) t!1615) tb!1275))

(declare-fun result!1315 () Bool)

(assert (=> tb!1275 (= result!1315 true)))

(assert (=> b!7608 t!1615))

(declare-fun b_and!2355 () Bool)

(assert (= b_and!2347 (and (=> t!1615 result!1315) b_and!2355)))

(declare-fun t!1617 () Bool)

(declare-fun tb!1277 () Bool)

(assert (=> (and b!7612 (= (evidence!111 thiss!1147) proof!288) t!1617) tb!1277))

(declare-fun result!1317 () Bool)

(assert (=> tb!1277 (= result!1317 true)))

(assert (=> b!7608 t!1617))

(declare-fun b_and!2357 () Bool)

(assert (= b_and!2353 (and (=> t!1617 result!1317) b_and!2357)))

(declare-fun m!10457 () Bool)

(assert (=> b!7608 m!10457))

(declare-fun m!10459 () Bool)

(assert (=> b!7609 m!10459))

(declare-fun m!10461 () Bool)

(assert (=> b!7609 m!10461))

(declare-fun m!10463 () Bool)

(assert (=> b!7609 m!10463))

(assert (=> b!7609 m!10459))

(assert (=> b!7609 m!10463))

(assert (=> b!7609 m!10463))

(declare-fun m!10465 () Bool)

(assert (=> b!7609 m!10465))

(assert (=> b!7609 m!10463))

(declare-fun m!10467 () Bool)

(assert (=> start!1452 m!10467))

(declare-fun m!10469 () Bool)

(assert (=> start!1452 m!10469))

(declare-fun m!10471 () Bool)

(assert (=> start!1452 m!10471))

(push 1)

(assert b_and!2343)

(assert (not b_next!1201))

(assert (not b_next!1199))

(assert (not b_next!1195))

(assert (not b_next!1193))

(assert b_and!2345)

(assert b_and!2349)

(assert (not b!7610))

(assert (not b!7611))

(assert b_and!2355)

(assert (not start!1452))

(assert b_and!2351)

(assert (not b!7609))

(assert b_and!2357)

(assert (not b_next!1203))

(assert (not b_next!1197))

(assert (not b_lambda!3727))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2343)

(assert (not b_next!1201))

(assert (not b_next!1199))

(assert (not b_next!1195))

(assert (not b_next!1193))

(assert b_and!2345)

(assert b_and!2349)

(assert b_and!2355)

(assert b_and!2351)

(assert b_and!2357)

(assert (not b_next!1203))

(assert (not b_next!1197))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3729 () Bool)

(assert (= b_lambda!3727 (or (and b!7610 (= lambda!1493 proof!288)) (and b!7607 (= lambda!1495 proof!288)) (and start!1452 b_free!557) (and b!7612 b_free!563 (= (evidence!111 thiss!1147) proof!288)) b_lambda!3729)))

(declare-fun bs!1742 () Bool)

(declare-fun d!6003 () Bool)

(assert (= bs!1742 (and d!6003 b!7610)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!1742 (= (dynLambda!167 lambda!1493) trivial!1)))

(assert (=> (and b!7610 (= lambda!1493 proof!288) b!7608) d!6003))

(declare-fun bs!1743 () Bool)

(declare-fun d!6005 () Bool)

(assert (= bs!1743 (and d!6005 b!7607)))

(declare-fun remove_null_balance!0 (List!173) Bool)

(assert (=> bs!1743 (= (dynLambda!167 lambda!1495) (remove_null_balance!0 (tail!400 xs!372)))))

(declare-fun m!10473 () Bool)

(assert (=> bs!1743 m!10473))

(assert (=> (and b!7607 (= lambda!1495 proof!288) b!7608) d!6005))

(push 1)

(assert (not b_lambda!3729))

(assert b_and!2343)

(assert (not bs!1743))

(assert (not b_next!1201))

(assert (not b_next!1199))

(assert (not b_next!1195))

(assert (not b_next!1193))

(assert b_and!2345)

(assert b_and!2349)

(assert (not b!7610))

(assert (not b!7611))

(assert b_and!2355)

(assert (not start!1452))

(assert b_and!2351)

(assert (not b!7609))

(assert b_and!2357)

(assert (not b_next!1203))

(assert (not b_next!1197))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2343)

(assert (not b_next!1201))

(assert (not b_next!1199))

(assert (not b_next!1195))

(assert (not b_next!1193))

(assert b_and!2345)

(assert b_and!2349)

(assert b_and!2355)

(assert b_and!2351)

(assert b_and!2357)

(assert (not b_next!1203))

(assert (not b_next!1197))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6007 () Bool)

(assert (=> d!6007 (= trivial!1 true)))

(assert (=> b!7610 d!6007))

(declare-fun bs!1744 () Bool)

(declare-fun d!6009 () Bool)

(assert (= bs!1744 (and d!6009 b!7609)))

(declare-fun lambda!1520 () Int)

(assert (=> bs!1744 (= lambda!1520 lambda!1490)))

(declare-fun lambda!1521 () Int)

(assert (=> bs!1744 (= lambda!1521 lambda!1491)))

(declare-fun b!7638 () Bool)

(declare-fun e!4385 () Bool)

(assert (=> b!7638 (= e!4385 true)))

(declare-fun lt!1441 () Balance!113)

(assert (=> b!7638 (= lt!1441 (foldRight1!34 (map!155 (tail!400 xs!372) lambda!1520) lambda!1521))))

(declare-fun b!7639 () Bool)

(assert (=> b!7639 (= e!4385 true)))

(assert (=> b!7639 (= lt!1441 (foldRight1!34 (map!155 (tail!400 xs!372) lambda!1520) lambda!1521))))

(declare-fun because!2 (ProofOps!76 Bool) Bool)

(assert (=> d!6009 (because!2 (ProofOps!77 (= (foldRight1!34 (append!67 (map!155 (tail!400 xs!372) lambda!1520) (Cons!171 (Balance!114 0 0) Nil!172)) lambda!1521) (foldRight1!34 (map!155 (tail!400 xs!372) lambda!1520) lambda!1521))) e!4385)))

(declare-fun c!2671 () Bool)

(declare-fun lt!1443 () Bool)

(assert (=> d!6009 (= c!2671 lt!1443)))

(declare-fun e!4387 () Balance!113)

(assert (=> d!6009 (= lt!1441 e!4387)))

(declare-fun c!2669 () Bool)

(declare-fun lt!1442 () Bool)

(assert (=> d!6009 (= c!2669 (or lt!1442 (not lt!1443)))))

(assert (=> d!6009 (= lt!1442 lt!1443)))

(assert (=> d!6009 (= lt!1443 (and (is-Cons!170 (tail!400 xs!372)) (is-Nil!171 (tail!400 (tail!400 xs!372)))))))

(assert (=> d!6009 (not (isEmpty!146 (tail!400 xs!372)))))

(assert (=> d!6009 (= (remove_null_balance!0 (tail!400 xs!372)) true)))

(declare-fun b!7640 () Bool)

(declare-fun e!4389 () Int)

(assert (=> b!7640 (= e!4389 lambda!1520)))

(declare-fun b!7641 () Bool)

(assert (=> b!7641 (= e!4389 lambda!1520)))

(declare-fun b!7642 () Bool)

(declare-fun res!2253 () Balance!113)

(assert (=> b!7642 (= e!4387 res!2253)))

(assert (=> b!7642 true))

(assert (=> b!7642 true))

(declare-fun b!7643 () Bool)

(declare-fun e!4388 () Int)

(assert (=> b!7643 (= e!4388 lambda!1521)))

(declare-fun b!7644 () Bool)

(declare-fun e!4386 () List!174)

(assert (=> b!7644 (= e!4386 (append!67 (map!155 (tail!400 xs!372) e!4389) (Cons!171 (Balance!114 0 0) Nil!172)))))

(declare-fun c!2672 () Bool)

(assert (=> b!7644 (= c!2672 lt!1443)))

(declare-fun b!7645 () Bool)

(assert (=> b!7645 (= e!4388 lambda!1521)))

(declare-fun b!7646 () Bool)

(declare-fun res!2254 () List!174)

(assert (=> b!7646 (= e!4386 res!2254)))

(assert (=> b!7646 true))

(declare-fun b!7647 () Bool)

(assert (=> b!7647 (= e!4387 (foldRight1!34 e!4386 e!4388))))

(declare-fun c!2673 () Bool)

(assert (=> b!7647 (= c!2673 lt!1442)))

(declare-fun c!2670 () Bool)

(assert (=> b!7647 (= c!2670 (or lt!1443 (not lt!1443)))))

(assert (= (and b!7644 c!2672) b!7641))

(assert (= (and b!7644 (not c!2672)) b!7640))

(assert (= (and b!7647 c!2670) b!7644))

(assert (= (and b!7647 (not c!2670)) b!7646))

(assert (= (and b!7647 c!2673) b!7643))

(assert (= (and b!7647 (not c!2673)) b!7645))

(assert (= (and d!6009 c!2669) b!7647))

(assert (= (and d!6009 (not c!2669)) b!7642))

(assert (= (and d!6009 c!2671) b!7639))

(assert (= (and d!6009 (not c!2671)) b!7638))

(declare-fun m!10475 () Bool)

(assert (=> b!7647 m!10475))

(declare-fun m!10477 () Bool)

(assert (=> b!7638 m!10477))

(assert (=> b!7638 m!10477))

(declare-fun m!10479 () Bool)

(assert (=> b!7638 m!10479))

(declare-fun m!10481 () Bool)

(assert (=> d!6009 m!10481))

(assert (=> d!6009 m!10477))

(assert (=> d!6009 m!10477))

(declare-fun m!10483 () Bool)

(assert (=> d!6009 m!10483))

(assert (=> d!6009 m!10477))

(assert (=> d!6009 m!10479))

(assert (=> d!6009 m!10483))

(declare-fun m!10485 () Bool)

(assert (=> d!6009 m!10485))

(declare-fun m!10487 () Bool)

(assert (=> d!6009 m!10487))

(assert (=> d!6009 m!10477))

(assert (=> b!7639 m!10477))

(assert (=> b!7639 m!10477))

(assert (=> b!7639 m!10479))

(declare-fun m!10489 () Bool)

(assert (=> b!7644 m!10489))

(assert (=> b!7644 m!10489))

(declare-fun m!10491 () Bool)

(assert (=> b!7644 m!10491))

(assert (=> bs!1743 d!6009))

(declare-fun d!6011 () Bool)

(assert (=> d!6011 (= (isEmpty!146 xs!372) (is-Nil!171 xs!372))))

(assert (=> start!1452 d!6011))

(declare-fun d!6013 () Bool)

(declare-fun dynLambda!168 (Int) Balance!113)

(assert (=> d!6013 (= (inv!271 thiss!1157) (= (dynLambda!168 (x!4171 thiss!1157)) (dynLambda!168 (y!476 thiss!1157))))))

(declare-fun b_lambda!3731 () Bool)

(assert (=> (not b_lambda!3731) (not d!6013)))

(declare-fun t!1619 () Bool)

(declare-fun tb!1279 () Bool)

(assert (=> (and b!7613 (= (x!4171 thiss!1157) (x!4171 thiss!1157)) t!1619) tb!1279))

(declare-fun result!1319 () Bool)

(assert (=> tb!1279 (= result!1319 true)))

(assert (=> d!6013 t!1619))

(declare-fun b_and!2359 () Bool)

(assert (= b_and!2343 (and (=> t!1619 result!1319) b_and!2359)))

(declare-fun t!1621 () Bool)

(declare-fun tb!1281 () Bool)

(assert (=> (and b!7613 (= (y!476 thiss!1157) (x!4171 thiss!1157)) t!1621) tb!1281))

(declare-fun result!1321 () Bool)

(assert (=> tb!1281 (= result!1321 true)))

(assert (=> d!6013 t!1621))

(declare-fun b_and!2361 () Bool)

(assert (= b_and!2345 (and (=> t!1621 result!1321) b_and!2361)))

(declare-fun t!1623 () Bool)

(declare-fun tb!1283 () Bool)

(assert (=> (and b!7612 (= (x!4172 thiss!1147) (x!4171 thiss!1157)) t!1623) tb!1283))

(declare-fun result!1323 () Bool)

(assert (=> tb!1283 (= result!1323 true)))

(assert (=> d!6013 t!1623))

(declare-fun b_and!2363 () Bool)

(assert (= b_and!2349 (and (=> t!1623 result!1323) b_and!2363)))

(declare-fun t!1625 () Bool)

(declare-fun tb!1285 () Bool)

(assert (=> (and b!7612 (= (y!477 thiss!1147) (x!4171 thiss!1157)) t!1625) tb!1285))

(declare-fun result!1325 () Bool)

(assert (=> tb!1285 (= result!1325 true)))

(assert (=> d!6013 t!1625))

(declare-fun b_and!2365 () Bool)

(assert (= b_and!2351 (and (=> t!1625 result!1325) b_and!2365)))

(declare-fun b_lambda!3733 () Bool)

(assert (=> (not b_lambda!3733) (not d!6013)))

(declare-fun t!1627 () Bool)

(declare-fun tb!1287 () Bool)

(assert (=> (and b!7613 (= (x!4171 thiss!1157) (y!476 thiss!1157)) t!1627) tb!1287))

(declare-fun result!1327 () Bool)

(assert (=> tb!1287 (= result!1327 true)))

(assert (=> d!6013 t!1627))

(declare-fun b_and!2367 () Bool)

(assert (= b_and!2359 (and (=> t!1627 result!1327) b_and!2367)))

(declare-fun t!1629 () Bool)

(declare-fun tb!1289 () Bool)

(assert (=> (and b!7613 (= (y!476 thiss!1157) (y!476 thiss!1157)) t!1629) tb!1289))

(declare-fun result!1329 () Bool)

(assert (=> tb!1289 (= result!1329 true)))

(assert (=> d!6013 t!1629))

(declare-fun b_and!2369 () Bool)

(assert (= b_and!2361 (and (=> t!1629 result!1329) b_and!2369)))

(declare-fun tb!1291 () Bool)

(declare-fun t!1631 () Bool)

(assert (=> (and b!7612 (= (x!4172 thiss!1147) (y!476 thiss!1157)) t!1631) tb!1291))

(declare-fun result!1331 () Bool)

(assert (=> tb!1291 (= result!1331 true)))

(assert (=> d!6013 t!1631))

(declare-fun b_and!2371 () Bool)

(assert (= b_and!2363 (and (=> t!1631 result!1331) b_and!2371)))

(declare-fun tb!1293 () Bool)

(declare-fun t!1633 () Bool)

(assert (=> (and b!7612 (= (y!477 thiss!1147) (y!476 thiss!1157)) t!1633) tb!1293))

(declare-fun result!1333 () Bool)

(assert (=> tb!1293 (= result!1333 true)))

(assert (=> d!6013 t!1633))

(declare-fun b_and!2373 () Bool)

(assert (= b_and!2365 (and (=> t!1633 result!1333) b_and!2373)))

(declare-fun m!10493 () Bool)

(assert (=> d!6013 m!10493))

(declare-fun m!10495 () Bool)

(assert (=> d!6013 m!10495))

(assert (=> start!1452 d!6013))

(declare-fun d!6015 () Bool)

(declare-fun res!2257 () Bool)

(declare-fun e!4392 () Bool)

(assert (=> d!6015 (=> (not res!2257) (not e!4392))))

(assert (=> d!6015 (= res!2257 (= (dynLambda!168 (x!4172 thiss!1147)) (dynLambda!168 (y!477 thiss!1147))))))

(assert (=> d!6015 (= (inv!272 thiss!1147) e!4392)))

(declare-fun b!7650 () Bool)

(assert (=> b!7650 (= e!4392 (dynLambda!167 (evidence!111 thiss!1147)))))

(assert (= (and d!6015 res!2257) b!7650))

(declare-fun b_lambda!3735 () Bool)

(assert (=> (not b_lambda!3735) (not d!6015)))

(declare-fun tb!1295 () Bool)

(declare-fun t!1635 () Bool)

(assert (=> (and b!7613 (= (x!4171 thiss!1157) (x!4172 thiss!1147)) t!1635) tb!1295))

(declare-fun result!1335 () Bool)

(assert (=> tb!1295 (= result!1335 true)))

(assert (=> d!6015 t!1635))

(declare-fun b_and!2375 () Bool)

(assert (= b_and!2367 (and (=> t!1635 result!1335) b_and!2375)))

(declare-fun t!1637 () Bool)

(declare-fun tb!1297 () Bool)

(assert (=> (and b!7613 (= (y!476 thiss!1157) (x!4172 thiss!1147)) t!1637) tb!1297))

(declare-fun result!1337 () Bool)

(assert (=> tb!1297 (= result!1337 true)))

(assert (=> d!6015 t!1637))

(declare-fun b_and!2377 () Bool)

(assert (= b_and!2369 (and (=> t!1637 result!1337) b_and!2377)))

(declare-fun t!1639 () Bool)

(declare-fun tb!1299 () Bool)

(assert (=> (and b!7612 (= (x!4172 thiss!1147) (x!4172 thiss!1147)) t!1639) tb!1299))

(declare-fun result!1339 () Bool)

(assert (=> tb!1299 (= result!1339 true)))

(assert (=> d!6015 t!1639))

(declare-fun b_and!2379 () Bool)

(assert (= b_and!2371 (and (=> t!1639 result!1339) b_and!2379)))

(declare-fun t!1641 () Bool)

(declare-fun tb!1301 () Bool)

(assert (=> (and b!7612 (= (y!477 thiss!1147) (x!4172 thiss!1147)) t!1641) tb!1301))

(declare-fun result!1341 () Bool)

(assert (=> tb!1301 (= result!1341 true)))

(assert (=> d!6015 t!1641))

(declare-fun b_and!2381 () Bool)

(assert (= b_and!2373 (and (=> t!1641 result!1341) b_and!2381)))

(declare-fun b_lambda!3737 () Bool)

(assert (=> (not b_lambda!3737) (not d!6015)))

(declare-fun t!1643 () Bool)

(declare-fun tb!1303 () Bool)

(assert (=> (and b!7613 (= (x!4171 thiss!1157) (y!477 thiss!1147)) t!1643) tb!1303))

(declare-fun result!1343 () Bool)

(assert (=> tb!1303 (= result!1343 true)))

(assert (=> d!6015 t!1643))

(declare-fun b_and!2383 () Bool)

(assert (= b_and!2375 (and (=> t!1643 result!1343) b_and!2383)))

(declare-fun tb!1305 () Bool)

(declare-fun t!1645 () Bool)

(assert (=> (and b!7613 (= (y!476 thiss!1157) (y!477 thiss!1147)) t!1645) tb!1305))

(declare-fun result!1345 () Bool)

(assert (=> tb!1305 (= result!1345 true)))

(assert (=> d!6015 t!1645))

(declare-fun b_and!2385 () Bool)

(assert (= b_and!2377 (and (=> t!1645 result!1345) b_and!2385)))

(declare-fun t!1647 () Bool)

(declare-fun tb!1307 () Bool)

(assert (=> (and b!7612 (= (x!4172 thiss!1147) (y!477 thiss!1147)) t!1647) tb!1307))

(declare-fun result!1347 () Bool)

(assert (=> tb!1307 (= result!1347 true)))

(assert (=> d!6015 t!1647))

(declare-fun b_and!2387 () Bool)

(assert (= b_and!2379 (and (=> t!1647 result!1347) b_and!2387)))

(declare-fun t!1649 () Bool)

(declare-fun tb!1309 () Bool)

(assert (=> (and b!7612 (= (y!477 thiss!1147) (y!477 thiss!1147)) t!1649) tb!1309))

(declare-fun result!1349 () Bool)

(assert (=> tb!1309 (= result!1349 true)))

(assert (=> d!6015 t!1649))

(declare-fun b_and!2389 () Bool)

(assert (= b_and!2381 (and (=> t!1649 result!1349) b_and!2389)))

(declare-fun b_lambda!3739 () Bool)

(assert (=> (not b_lambda!3739) (not b!7650)))

(declare-fun t!1651 () Bool)

(declare-fun tb!1311 () Bool)

(assert (=> (and start!1452 (= proof!288 (evidence!111 thiss!1147)) t!1651) tb!1311))

(declare-fun result!1351 () Bool)

(assert (=> tb!1311 (= result!1351 true)))

(assert (=> b!7650 t!1651))

(declare-fun b_and!2391 () Bool)

(assert (= b_and!2355 (and (=> t!1651 result!1351) b_and!2391)))

(declare-fun t!1653 () Bool)

(declare-fun tb!1313 () Bool)

(assert (=> (and b!7612 (= (evidence!111 thiss!1147) (evidence!111 thiss!1147)) t!1653) tb!1313))

(declare-fun result!1353 () Bool)

(assert (=> tb!1313 (= result!1353 true)))

(assert (=> b!7650 t!1653))

(declare-fun b_and!2393 () Bool)

(assert (= b_and!2357 (and (=> t!1653 result!1353) b_and!2393)))

(declare-fun m!10497 () Bool)

(assert (=> d!6015 m!10497))

(declare-fun m!10499 () Bool)

(assert (=> d!6015 m!10499))

(declare-fun m!10501 () Bool)

(assert (=> b!7650 m!10501))

(assert (=> start!1452 d!6015))

(declare-fun d!6017 () Bool)

(declare-fun c!2676 () Bool)

(assert (=> d!6017 (= c!2676 (is-Nil!172 (map!155 xs!372 lambda!1490)))))

(declare-fun e!4395 () List!174)

(assert (=> d!6017 (= (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172)) e!4395)))

(declare-fun b!7655 () Bool)

(assert (=> b!7655 (= e!4395 (Cons!171 (Balance!114 0 0) Nil!172))))

(declare-fun b!7656 () Bool)

(assert (=> b!7656 (= e!4395 (Cons!171 (head!389 (map!155 xs!372 lambda!1490)) (append!67 (tail!401 (map!155 xs!372 lambda!1490)) (Cons!171 (Balance!114 0 0) Nil!172))))))

(assert (= (and d!6017 c!2676) b!7655))

(assert (= (and d!6017 (not c!2676)) b!7656))

(declare-fun m!10503 () Bool)

(assert (=> b!7656 m!10503))

(assert (=> b!7609 d!6017))

(declare-fun d!6019 () Bool)

(declare-fun c!2679 () Bool)

(assert (=> d!6019 (= c!2679 (and (is-Cons!171 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172))) (is-Nil!172 (tail!401 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172))))))))

(declare-fun e!4398 () Balance!113)

(assert (=> d!6019 (= (foldRight1!34 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172)) lambda!1491) e!4398)))

(declare-fun b!7661 () Bool)

(assert (=> b!7661 (= e!4398 (head!389 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172))))))

(declare-fun b!7662 () Bool)

(declare-fun dynLambda!169 (Int Balance!113 Balance!113) Balance!113)

(assert (=> b!7662 (= e!4398 (dynLambda!169 lambda!1491 (head!389 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172))) (foldRight1!34 (tail!401 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172))) lambda!1491)))))

(assert (= (and d!6019 c!2679) b!7661))

(assert (= (and d!6019 (not c!2679)) b!7662))

(declare-fun b_lambda!3741 () Bool)

(assert (=> (not b_lambda!3741) (not b!7662)))

(declare-fun m!10505 () Bool)

(assert (=> b!7662 m!10505))

(assert (=> b!7662 m!10505))

(declare-fun m!10507 () Bool)

(assert (=> b!7662 m!10507))

(assert (=> b!7609 d!6019))

(declare-fun d!6021 () Bool)

(declare-fun c!2680 () Bool)

(assert (=> d!6021 (= c!2680 (and (is-Cons!171 (map!155 xs!372 lambda!1490)) (is-Nil!172 (tail!401 (map!155 xs!372 lambda!1490)))))))

(declare-fun e!4399 () Balance!113)

(assert (=> d!6021 (= (foldRight1!34 (map!155 xs!372 lambda!1490) lambda!1491) e!4399)))

(declare-fun b!7663 () Bool)

(assert (=> b!7663 (= e!4399 (head!389 (map!155 xs!372 lambda!1490)))))

(declare-fun b!7664 () Bool)

(assert (=> b!7664 (= e!4399 (dynLambda!169 lambda!1491 (head!389 (map!155 xs!372 lambda!1490)) (foldRight1!34 (tail!401 (map!155 xs!372 lambda!1490)) lambda!1491)))))

(assert (= (and d!6021 c!2680) b!7663))

(assert (= (and d!6021 (not c!2680)) b!7664))

(declare-fun b_lambda!3743 () Bool)

(assert (=> (not b_lambda!3743) (not b!7664)))

(declare-fun m!10509 () Bool)

(assert (=> b!7664 m!10509))

(assert (=> b!7664 m!10509))

(declare-fun m!10511 () Bool)

(assert (=> b!7664 m!10511))

(assert (=> b!7609 d!6021))

(declare-fun d!6023 () Bool)

(declare-fun c!2683 () Bool)

(assert (=> d!6023 (= c!2683 (is-Nil!171 xs!372))))

(declare-fun e!4402 () List!174)

(assert (=> d!6023 (= (map!155 xs!372 lambda!1490) e!4402)))

(declare-fun b!7669 () Bool)

(assert (=> b!7669 (= e!4402 Nil!172)))

(declare-fun b!7670 () Bool)

(declare-fun dynLambda!170 (Int Parenthesis!45) Balance!113)

(assert (=> b!7670 (= e!4402 (Cons!171 (dynLambda!170 lambda!1490 (head!388 xs!372)) (map!155 (tail!400 xs!372) lambda!1490)))))

(assert (= (and d!6023 c!2683) b!7669))

(assert (= (and d!6023 (not c!2683)) b!7670))

(declare-fun b_lambda!3745 () Bool)

(assert (=> (not b_lambda!3745) (not b!7670)))

(declare-fun m!10513 () Bool)

(assert (=> b!7670 m!10513))

(declare-fun m!10515 () Bool)

(assert (=> b!7670 m!10515))

(assert (=> b!7609 d!6023))

(declare-fun d!6025 () Bool)

(declare-fun fromParenthesis!0 (Parenthesis!45) Balance!113)

(assert (=> d!6025 (= (fromParenthesis!0 (head!388 xs!372)) (ite (is-OpenParenthesis!44 (head!388 xs!372)) (Balance!114 1 0) (Balance!114 0 1)))))

(assert (=> b!7611 d!6025))

(declare-fun b_lambda!3747 () Bool)

(assert (= b_lambda!3731 (or (and b!7612 b_free!561 (= (y!477 thiss!1147) (x!4171 thiss!1157))) (and b!7610 (= lambda!1492 (x!4171 thiss!1157))) (and b!7612 b_free!559 (= (x!4172 thiss!1147) (x!4171 thiss!1157))) (and b!7613 b_free!555 (= (y!476 thiss!1157) (x!4171 thiss!1157))) (and b!7613 b_free!553) (and b!7611 (= lambda!1494 (x!4171 thiss!1157))) b_lambda!3747)))

(declare-fun bs!1745 () Bool)

(declare-fun d!6027 () Bool)

(assert (= bs!1745 (and d!6027 b!7610)))

(assert (=> bs!1745 (= (dynLambda!168 lambda!1492) (foldRight1!34 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172)) lambda!1491))))

(assert (=> bs!1745 m!10463))

(assert (=> bs!1745 m!10463))

(assert (=> bs!1745 m!10459))

(assert (=> bs!1745 m!10459))

(assert (=> bs!1745 m!10461))

(assert (=> (and b!7610 (= lambda!1492 (x!4171 thiss!1157)) d!6013) d!6027))

(declare-fun bs!1746 () Bool)

(declare-fun d!6029 () Bool)

(assert (= bs!1746 (and d!6029 b!7611)))

(declare-fun ++!3 (Balance!113 Balance!113) Balance!113)

(assert (=> bs!1746 (= (dynLambda!168 lambda!1494) (++!3 (fromParenthesis!0 (head!388 xs!372)) (foldRight1!34 (append!67 (map!155 (tail!400 xs!372) lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172)) lambda!1491)))))

(declare-fun m!10517 () Bool)

(assert (=> bs!1746 m!10517))

(declare-fun m!10519 () Bool)

(assert (=> bs!1746 m!10519))

(assert (=> bs!1746 m!10515))

(declare-fun m!10521 () Bool)

(assert (=> bs!1746 m!10521))

(assert (=> bs!1746 m!10521))

(assert (=> bs!1746 m!10517))

(assert (=> bs!1746 m!10515))

(assert (=> (and b!7611 (= lambda!1494 (x!4171 thiss!1157)) d!6013) d!6029))

(declare-fun b_lambda!3749 () Bool)

(assert (= b_lambda!3737 (or (and b!7612 b_free!559 (= (x!4172 thiss!1147) (y!477 thiss!1147))) (and b!7612 b_free!561) (and b!7613 b_free!553 (= (x!4171 thiss!1157) (y!477 thiss!1147))) (and b!7611 (= lambda!1494 (y!477 thiss!1147))) (and b!7610 (= lambda!1492 (y!477 thiss!1147))) (and b!7613 b_free!555 (= (y!476 thiss!1157) (y!477 thiss!1147))) b_lambda!3749)))

(declare-fun bs!1747 () Bool)

(declare-fun d!6031 () Bool)

(assert (= bs!1747 (and d!6031 b!7610)))

(assert (=> bs!1747 (= (dynLambda!168 lambda!1492) (foldRight1!34 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172)) lambda!1491))))

(assert (=> bs!1747 m!10463))

(assert (=> bs!1747 m!10463))

(assert (=> bs!1747 m!10459))

(assert (=> bs!1747 m!10459))

(assert (=> bs!1747 m!10461))

(assert (=> (and b!7610 (= lambda!1492 (y!477 thiss!1147)) d!6015) d!6031))

(declare-fun bs!1748 () Bool)

(declare-fun d!6033 () Bool)

(assert (= bs!1748 (and d!6033 b!7611)))

(assert (=> bs!1748 (= (dynLambda!168 lambda!1494) (++!3 (fromParenthesis!0 (head!388 xs!372)) (foldRight1!34 (append!67 (map!155 (tail!400 xs!372) lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172)) lambda!1491)))))

(assert (=> bs!1748 m!10517))

(assert (=> bs!1748 m!10519))

(assert (=> bs!1748 m!10515))

(assert (=> bs!1748 m!10521))

(assert (=> bs!1748 m!10521))

(assert (=> bs!1748 m!10517))

(assert (=> bs!1748 m!10515))

(assert (=> (and b!7611 (= lambda!1494 (y!477 thiss!1147)) d!6015) d!6033))

(declare-fun b_lambda!3751 () Bool)

(assert (= b_lambda!3741 (or b!7609 b_lambda!3751)))

(declare-fun bs!1749 () Bool)

(declare-fun d!6035 () Bool)

(assert (= bs!1749 (and d!6035 b!7609)))

(assert (=> bs!1749 (= (dynLambda!169 lambda!1491 (head!389 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172))) (foldRight1!34 (tail!401 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172))) lambda!1491)) (++!3 (head!389 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172))) (foldRight1!34 (tail!401 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172))) lambda!1491)))))

(assert (=> bs!1749 m!10505))

(declare-fun m!10523 () Bool)

(assert (=> bs!1749 m!10523))

(assert (=> b!7662 d!6035))

(declare-fun b_lambda!3753 () Bool)

(assert (= b_lambda!3735 (or (and b!7613 b_free!555 (= (y!476 thiss!1157) (x!4172 thiss!1147))) (and b!7612 b_free!559) (and b!7611 (= lambda!1494 (x!4172 thiss!1147))) (and b!7613 b_free!553 (= (x!4171 thiss!1157) (x!4172 thiss!1147))) (and b!7610 (= lambda!1492 (x!4172 thiss!1147))) (and b!7612 b_free!561 (= (y!477 thiss!1147) (x!4172 thiss!1147))) b_lambda!3753)))

(declare-fun bs!1750 () Bool)

(declare-fun d!6037 () Bool)

(assert (= bs!1750 (and d!6037 b!7610)))

(assert (=> bs!1750 (= (dynLambda!168 lambda!1492) (foldRight1!34 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172)) lambda!1491))))

(assert (=> bs!1750 m!10463))

(assert (=> bs!1750 m!10463))

(assert (=> bs!1750 m!10459))

(assert (=> bs!1750 m!10459))

(assert (=> bs!1750 m!10461))

(assert (=> (and b!7610 (= lambda!1492 (x!4172 thiss!1147)) d!6015) d!6037))

(declare-fun bs!1751 () Bool)

(declare-fun d!6039 () Bool)

(assert (= bs!1751 (and d!6039 b!7611)))

(assert (=> bs!1751 (= (dynLambda!168 lambda!1494) (++!3 (fromParenthesis!0 (head!388 xs!372)) (foldRight1!34 (append!67 (map!155 (tail!400 xs!372) lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172)) lambda!1491)))))

(assert (=> bs!1751 m!10517))

(assert (=> bs!1751 m!10519))

(assert (=> bs!1751 m!10515))

(assert (=> bs!1751 m!10521))

(assert (=> bs!1751 m!10521))

(assert (=> bs!1751 m!10517))

(assert (=> bs!1751 m!10515))

(assert (=> (and b!7611 (= lambda!1494 (x!4172 thiss!1147)) d!6015) d!6039))

(declare-fun b_lambda!3755 () Bool)

(assert (= b_lambda!3743 (or b!7609 b_lambda!3755)))

(declare-fun bs!1752 () Bool)

(declare-fun d!6041 () Bool)

(assert (= bs!1752 (and d!6041 b!7609)))

(assert (=> bs!1752 (= (dynLambda!169 lambda!1491 (head!389 (map!155 xs!372 lambda!1490)) (foldRight1!34 (tail!401 (map!155 xs!372 lambda!1490)) lambda!1491)) (++!3 (head!389 (map!155 xs!372 lambda!1490)) (foldRight1!34 (tail!401 (map!155 xs!372 lambda!1490)) lambda!1491)))))

(assert (=> bs!1752 m!10509))

(declare-fun m!10525 () Bool)

(assert (=> bs!1752 m!10525))

(assert (=> b!7664 d!6041))

(declare-fun b_lambda!3757 () Bool)

(assert (= b_lambda!3733 (or (and b!7611 (= lambda!1494 (y!476 thiss!1157))) (and b!7613 b_free!555) (and b!7612 b_free!561 (= (y!477 thiss!1147) (y!476 thiss!1157))) (and b!7610 (= lambda!1492 (y!476 thiss!1157))) (and b!7613 b_free!553 (= (x!4171 thiss!1157) (y!476 thiss!1157))) (and b!7612 b_free!559 (= (x!4172 thiss!1147) (y!476 thiss!1157))) b_lambda!3757)))

(declare-fun bs!1753 () Bool)

(declare-fun d!6043 () Bool)

(assert (= bs!1753 (and d!6043 b!7611)))

(assert (=> bs!1753 (= (dynLambda!168 lambda!1494) (++!3 (fromParenthesis!0 (head!388 xs!372)) (foldRight1!34 (append!67 (map!155 (tail!400 xs!372) lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172)) lambda!1491)))))

(assert (=> bs!1753 m!10517))

(assert (=> bs!1753 m!10519))

(assert (=> bs!1753 m!10515))

(assert (=> bs!1753 m!10521))

(assert (=> bs!1753 m!10521))

(assert (=> bs!1753 m!10517))

(assert (=> bs!1753 m!10515))

(assert (=> (and b!7611 (= lambda!1494 (y!476 thiss!1157)) d!6013) d!6043))

(declare-fun bs!1754 () Bool)

(declare-fun d!6045 () Bool)

(assert (= bs!1754 (and d!6045 b!7610)))

(assert (=> bs!1754 (= (dynLambda!168 lambda!1492) (foldRight1!34 (append!67 (map!155 xs!372 lambda!1490) (Cons!171 (Balance!114 0 0) Nil!172)) lambda!1491))))

(assert (=> bs!1754 m!10463))

(assert (=> bs!1754 m!10463))

(assert (=> bs!1754 m!10459))

(assert (=> bs!1754 m!10459))

(assert (=> bs!1754 m!10461))

(assert (=> (and b!7610 (= lambda!1492 (y!476 thiss!1157)) d!6013) d!6045))

(declare-fun b_lambda!3759 () Bool)

(assert (= b_lambda!3745 (or b!7609 b_lambda!3759)))

(declare-fun bs!1755 () Bool)

(declare-fun d!6047 () Bool)

(assert (= bs!1755 (and d!6047 b!7609)))

(assert (=> bs!1755 (= (dynLambda!170 lambda!1490 (head!388 xs!372)) (fromParenthesis!0 (head!388 xs!372)))))

(assert (=> bs!1755 m!10455))

(assert (=> b!7670 d!6047))

(declare-fun b_lambda!3761 () Bool)

(assert (= b_lambda!3739 (or (and b!7610 (= lambda!1493 (evidence!111 thiss!1147))) (and b!7607 (= lambda!1495 (evidence!111 thiss!1147))) (and start!1452 b_free!557 (= proof!288 (evidence!111 thiss!1147))) (and b!7612 b_free!563) b_lambda!3761)))

(declare-fun bs!1756 () Bool)

(declare-fun d!6049 () Bool)

(assert (= bs!1756 (and d!6049 b!7610)))

(assert (=> bs!1756 (= (dynLambda!167 lambda!1493) trivial!1)))

(assert (=> (and b!7610 (= lambda!1493 (evidence!111 thiss!1147)) b!7650) d!6049))

(declare-fun bs!1757 () Bool)

(declare-fun d!6051 () Bool)

(assert (= bs!1757 (and d!6051 b!7607)))

(assert (=> bs!1757 (= (dynLambda!167 lambda!1495) (remove_null_balance!0 (tail!400 xs!372)))))

(assert (=> bs!1757 m!10473))

(assert (=> (and b!7607 (= lambda!1495 (evidence!111 thiss!1147)) b!7650) d!6051))

(push 1)

(assert b_and!2385)

(assert (not b_lambda!3729))

(assert (not bs!1754))

(assert (not b_lambda!3761))

(assert (not b!7639))

(assert b_and!2389)

(assert b_and!2383)

(assert b_and!2391)

(assert (not b_next!1201))

(assert (not b_lambda!3753))

(assert (not b_next!1199))

(assert (not b_next!1195))

(assert (not b!7670))

(assert (not bs!1753))

(assert (not b_next!1193))

(assert (not bs!1750))

(assert (not b!7656))

(assert (not bs!1745))

(assert (not bs!1746))

(assert (not b!7644))

(assert (not bs!1751))

(assert (not bs!1755))

(assert (not b!7647))

(assert (not d!6009))

(assert (not b!7664))

(assert (not b!7662))

(assert (not bs!1748))

(assert (not b!7638))

(assert (not bs!1757))

(assert (not bs!1749))

(assert (not b_lambda!3759))

(assert (not b_lambda!3757))

(assert (not b_lambda!3755))

(assert (not bs!1752))

(assert (not b_lambda!3749))

(assert b_and!2387)

(assert (not bs!1747))

(assert b_and!2393)

(assert (not b_next!1203))

(assert (not b_lambda!3751))

(assert (not b_next!1197))

(assert (not b_lambda!3747))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2385)

(assert b_and!2389)

(assert b_and!2383)

(assert b_and!2391)

(assert (not b_next!1201))

(assert (not b_next!1199))

(assert (not b_next!1195))

(assert (not b_next!1193))

(assert b_and!2387)

(assert b_and!2393)

(assert (not b_next!1203))

(assert (not b_next!1197))

(check-sat)

(pop 1)

