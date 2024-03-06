; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1062 () Bool)

(assert start!1062)

(declare-fun b!6409 () Bool)

(declare-fun b_free!227 () Bool)

(declare-fun b_next!461 () Bool)

(assert (=> b!6409 (= b_free!227 (not b_next!461))))

(declare-fun tp!475 () Bool)

(declare-fun b_and!1359 () Bool)

(assert (=> b!6409 (= tp!475 b_and!1359)))

(declare-fun b_free!229 () Bool)

(declare-fun b_next!463 () Bool)

(assert (=> b!6409 (= b_free!229 (not b_next!463))))

(declare-fun tp!474 () Bool)

(declare-fun b_and!1361 () Bool)

(assert (=> b!6409 (= tp!474 b_and!1361)))

(declare-fun b_free!231 () Bool)

(declare-fun b_next!465 () Bool)

(assert (=> b!6409 (= b_free!231 (not b_next!465))))

(declare-fun tp!477 () Bool)

(declare-fun b_and!1363 () Bool)

(assert (=> b!6409 (= tp!477 b_and!1363)))

(declare-fun b!6405 () Bool)

(declare-fun b_free!233 () Bool)

(declare-fun b_next!467 () Bool)

(assert (=> b!6405 (= b_free!233 (not b_next!467))))

(declare-fun tp!478 () Bool)

(declare-fun b_and!1365 () Bool)

(assert (=> b!6405 (= tp!478 b_and!1365)))

(declare-fun b_free!235 () Bool)

(declare-fun b_next!469 () Bool)

(assert (=> b!6405 (= b_free!235 (not b_next!469))))

(declare-fun tp!476 () Bool)

(declare-fun b_and!1367 () Bool)

(assert (=> b!6405 (= tp!476 b_and!1367)))

(declare-fun b_free!237 () Bool)

(declare-fun b_next!471 () Bool)

(assert (=> b!6405 (= b_free!237 (not b_next!471))))

(declare-fun tp!473 () Bool)

(declare-fun b_and!1369 () Bool)

(assert (=> b!6405 (= tp!473 b_and!1369)))

(declare-fun b!6407 () Bool)

(assert (=> b!6407 true))

(declare-fun lambda!639 () Int)

(declare-fun b_next!473 () Bool)

(declare-datatypes () ((Balance!43 (Balance!44 (extraOpen!62 Int) (extraClose!62 Int)))))

(declare-datatypes () ((EqEvidence!32 (EqEvidence!33 (x!3417 Int) (y!435 Int) (evidence!83 Int)))))

(declare-fun thiss!1206 () EqEvidence!32)

(assert (=> b!6409 (= b_next!461 (or (and b!6407 (= lambda!639 (x!3417 thiss!1206))) b_next!473))))

(declare-fun b_next!475 () Bool)

(assert (=> b!6409 (= b_next!463 (or (and b!6407 (= lambda!639 (y!435 thiss!1206))) b_next!475))))

(declare-fun that!330 () EqEvidence!32)

(declare-fun b_next!477 () Bool)

(assert (=> b!6405 (= b_next!467 (or (and b!6407 (= lambda!639 (x!3417 that!330))) b_next!477))))

(declare-fun b_next!479 () Bool)

(assert (=> b!6405 (= b_next!469 (or (and b!6407 (= lambda!639 (y!435 that!330))) b_next!479))))

(assert (=> b!6407 true))

(declare-fun lambda!641 () Int)

(declare-fun b_next!481 () Bool)

(assert (=> b!6409 (= b_next!465 (or (and b!6407 (= lambda!641 (evidence!83 thiss!1206))) b_next!481))))

(declare-fun b_next!483 () Bool)

(assert (=> b!6405 (= b_next!471 (or (and b!6407 (= lambda!641 (evidence!83 that!330))) b_next!483))))

(declare-fun bs!1362 () Bool)

(declare-fun b!6410 () Bool)

(assert (= bs!1362 (and b!6410 b!6407)))

(declare-fun lambda!642 () Int)

(declare-fun lambda!640 () Int)

(assert (=> bs!1362 (not (= lambda!642 lambda!640))))

(declare-fun lambda!643 () Int)

(assert (=> bs!1362 (= (= lambda!642 lambda!640) (= lambda!643 lambda!639))))

(assert (=> b!6410 true))

(declare-fun b_next!485 () Bool)

(assert (=> b!6409 (= b_next!473 (or (and b!6410 (= lambda!643 (x!3417 thiss!1206))) b_next!485))))

(declare-fun b_next!487 () Bool)

(assert (=> b!6409 (= b_next!475 (or (and b!6410 (= lambda!643 (y!435 thiss!1206))) b_next!487))))

(declare-fun b_next!489 () Bool)

(assert (=> b!6405 (= b_next!477 (or (and b!6410 (= lambda!643 (x!3417 that!330))) b_next!489))))

(declare-fun b_next!491 () Bool)

(assert (=> b!6405 (= b_next!479 (or (and b!6410 (= lambda!643 (y!435 that!330))) b_next!491))))

(declare-fun lambda!644 () Int)

(assert (=> bs!1362 (not (= lambda!644 lambda!641))))

(assert (=> b!6410 true))

(declare-fun b_next!493 () Bool)

(assert (=> b!6409 (= b_next!481 (or (and b!6410 (= lambda!644 (evidence!83 thiss!1206))) b_next!493))))

(declare-fun b_next!495 () Bool)

(assert (=> b!6405 (= b_next!483 (or (and b!6410 (= lambda!644 (evidence!83 that!330))) b_next!495))))

(declare-fun e!3807 () Bool)

(assert (=> b!6405 (= e!3807 (and tp!478 tp!476 tp!473))))

(declare-fun b!6406 () Bool)

(declare-fun e!3806 () Bool)

(declare-fun dynLambda!86 (Int) Balance!43)

(assert (=> b!6406 (= e!3806 (not (= (dynLambda!86 (y!435 thiss!1206)) (dynLambda!86 (x!3417 that!330)))))))

(declare-fun res!1755 () Bool)

(assert (=> b!6407 (=> (not res!1755) (not e!3806))))

(assert (=> b!6407 (= res!1755 (= thiss!1206 (EqEvidence!33 lambda!639 lambda!639 lambda!641)))))

(declare-fun b!6408 () Bool)

(declare-fun res!1753 () Bool)

(assert (=> b!6408 (=> (not res!1753) (not e!3806))))

(declare-datatypes () ((ProofOps!34 (ProofOps!35 (prop!124 Bool)))))

(declare-fun thiss!1201 () ProofOps!34)

(declare-datatypes () ((Parenthesis!22 (CloseParenthesis!21) (OpenParenthesis!21))))

(declare-datatypes () ((List!127 (Nil!125) (Cons!124 (head!342 Parenthesis!22) (tail!354 List!127)))))

(declare-fun xs!395 () List!127)

(declare-fun isMatchedSequential!0 (List!127) Bool)

(declare-fun isMatchedHybid!0 (List!127) Bool)

(assert (=> b!6408 (= res!1753 (= thiss!1201 (ProofOps!35 (= (isMatchedSequential!0 xs!395) (isMatchedHybid!0 xs!395)))))))

(declare-fun e!3808 () Bool)

(assert (=> b!6409 (= e!3808 (and tp!475 tp!474 tp!477))))

(declare-fun res!1757 () Bool)

(assert (=> b!6410 (=> (not res!1757) (not e!3806))))

(assert (=> b!6410 (= res!1757 (= that!330 (EqEvidence!33 lambda!643 lambda!643 lambda!644)))))

(declare-fun res!1756 () Bool)

(assert (=> start!1062 (=> (not res!1756) (not e!3806))))

(declare-fun isEmpty!115 (List!127) Bool)

(assert (=> start!1062 (= res!1756 (not (isEmpty!115 xs!395)))))

(assert (=> start!1062 e!3806))

(assert (=> start!1062 true))

(declare-fun inv!230 (EqEvidence!32) Bool)

(assert (=> start!1062 (and (inv!230 thiss!1206) e!3808)))

(assert (=> start!1062 (and (inv!230 that!330) e!3807)))

(declare-fun b!6411 () Bool)

(declare-fun res!1754 () Bool)

(assert (=> b!6411 (=> (not res!1754) (not e!3806))))

(declare-fun dynLambda!87 (Int) Bool)

(assert (=> b!6411 (= res!1754 (dynLambda!87 (evidence!83 thiss!1206)))))

(assert (= (and start!1062 res!1756) b!6408))

(assert (= (and b!6408 res!1753) b!6407))

(assert (= (and b!6407 res!1755) b!6410))

(assert (= (and b!6410 res!1757) b!6411))

(assert (= (and b!6411 res!1754) b!6406))

(assert (= start!1062 b!6409))

(assert (= start!1062 b!6405))

(declare-fun b_lambda!3023 () Bool)

(assert (=> (not b_lambda!3023) (not b!6406)))

(declare-fun t!1093 () Bool)

(declare-fun tb!753 () Bool)

(assert (=> (and b!6409 (= (x!3417 thiss!1206) (y!435 thiss!1206)) t!1093) tb!753))

(declare-fun result!793 () Bool)

(assert (=> tb!753 (= result!793 true)))

(assert (=> b!6406 t!1093))

(declare-fun b_and!1371 () Bool)

(assert (= b_and!1359 (and (=> t!1093 result!793) b_and!1371)))

(declare-fun t!1095 () Bool)

(declare-fun tb!755 () Bool)

(assert (=> (and b!6409 (= (y!435 thiss!1206) (y!435 thiss!1206)) t!1095) tb!755))

(declare-fun result!795 () Bool)

(assert (=> tb!755 (= result!795 true)))

(assert (=> b!6406 t!1095))

(declare-fun b_and!1373 () Bool)

(assert (= b_and!1361 (and (=> t!1095 result!795) b_and!1373)))

(declare-fun t!1097 () Bool)

(declare-fun tb!757 () Bool)

(assert (=> (and b!6405 (= (x!3417 that!330) (y!435 thiss!1206)) t!1097) tb!757))

(declare-fun result!797 () Bool)

(assert (=> tb!757 (= result!797 true)))

(assert (=> b!6406 t!1097))

(declare-fun b_and!1375 () Bool)

(assert (= b_and!1365 (and (=> t!1097 result!797) b_and!1375)))

(declare-fun tb!759 () Bool)

(declare-fun t!1099 () Bool)

(assert (=> (and b!6405 (= (y!435 that!330) (y!435 thiss!1206)) t!1099) tb!759))

(declare-fun result!799 () Bool)

(assert (=> tb!759 (= result!799 true)))

(assert (=> b!6406 t!1099))

(declare-fun b_and!1377 () Bool)

(assert (= b_and!1367 (and (=> t!1099 result!799) b_and!1377)))

(declare-fun b_lambda!3025 () Bool)

(assert (=> (not b_lambda!3025) (not b!6406)))

(declare-fun t!1101 () Bool)

(declare-fun tb!761 () Bool)

(assert (=> (and b!6409 (= (x!3417 thiss!1206) (x!3417 that!330)) t!1101) tb!761))

(declare-fun result!801 () Bool)

(assert (=> tb!761 (= result!801 true)))

(assert (=> b!6406 t!1101))

(declare-fun b_and!1379 () Bool)

(assert (= b_and!1371 (and (=> t!1101 result!801) b_and!1379)))

(declare-fun t!1103 () Bool)

(declare-fun tb!763 () Bool)

(assert (=> (and b!6409 (= (y!435 thiss!1206) (x!3417 that!330)) t!1103) tb!763))

(declare-fun result!803 () Bool)

(assert (=> tb!763 (= result!803 true)))

(assert (=> b!6406 t!1103))

(declare-fun b_and!1381 () Bool)

(assert (= b_and!1373 (and (=> t!1103 result!803) b_and!1381)))

(declare-fun t!1105 () Bool)

(declare-fun tb!765 () Bool)

(assert (=> (and b!6405 (= (x!3417 that!330) (x!3417 that!330)) t!1105) tb!765))

(declare-fun result!805 () Bool)

(assert (=> tb!765 (= result!805 true)))

(assert (=> b!6406 t!1105))

(declare-fun b_and!1383 () Bool)

(assert (= b_and!1375 (and (=> t!1105 result!805) b_and!1383)))

(declare-fun t!1107 () Bool)

(declare-fun tb!767 () Bool)

(assert (=> (and b!6405 (= (y!435 that!330) (x!3417 that!330)) t!1107) tb!767))

(declare-fun result!807 () Bool)

(assert (=> tb!767 (= result!807 true)))

(assert (=> b!6406 t!1107))

(declare-fun b_and!1385 () Bool)

(assert (= b_and!1377 (and (=> t!1107 result!807) b_and!1385)))

(declare-fun b_lambda!3027 () Bool)

(assert (=> (not b_lambda!3027) (not b!6411)))

(declare-fun t!1109 () Bool)

(declare-fun tb!769 () Bool)

(assert (=> (and b!6409 (= (evidence!83 thiss!1206) (evidence!83 thiss!1206)) t!1109) tb!769))

(declare-fun result!809 () Bool)

(assert (=> tb!769 (= result!809 true)))

(assert (=> b!6411 t!1109))

(declare-fun b_and!1387 () Bool)

(assert (= b_and!1363 (and (=> t!1109 result!809) b_and!1387)))

(declare-fun t!1111 () Bool)

(declare-fun tb!771 () Bool)

(assert (=> (and b!6405 (= (evidence!83 that!330) (evidence!83 thiss!1206)) t!1111) tb!771))

(declare-fun result!811 () Bool)

(assert (=> tb!771 (= result!811 true)))

(assert (=> b!6411 t!1111))

(declare-fun b_and!1389 () Bool)

(assert (= b_and!1369 (and (=> t!1111 result!811) b_and!1389)))

(declare-fun m!9185 () Bool)

(assert (=> b!6406 m!9185))

(declare-fun m!9187 () Bool)

(assert (=> b!6406 m!9187))

(declare-fun m!9189 () Bool)

(assert (=> b!6408 m!9189))

(declare-fun m!9191 () Bool)

(assert (=> b!6408 m!9191))

(declare-fun m!9193 () Bool)

(assert (=> start!1062 m!9193))

(declare-fun m!9195 () Bool)

(assert (=> start!1062 m!9195))

(declare-fun m!9197 () Bool)

(assert (=> start!1062 m!9197))

(declare-fun m!9199 () Bool)

(assert (=> b!6411 m!9199))

(push 1)

(assert (not b_next!495))

(assert (not b_next!493))

(assert (not b_next!491))

(assert (not b_lambda!3025))

(assert (not b_next!487))

(assert (not b_lambda!3023))

(assert (not b!6408))

(assert (not b_next!489))

(assert (not b_lambda!3027))

(assert b_and!1389)

(assert b_and!1387)

(assert b_and!1383)

(assert (not b_next!485))

(assert b_and!1379)

(assert b_and!1381)

(assert b_and!1385)

(assert (not start!1062))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!495))

(assert (not b_next!493))

(assert (not b_next!491))

(assert (not b_next!487))

(assert (not b_next!489))

(assert b_and!1389)

(assert b_and!1387)

(assert b_and!1383)

(assert (not b_next!485))

(assert b_and!1379)

(assert b_and!1381)

(assert b_and!1385)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3029 () Bool)

(assert (= b_lambda!3027 (or (and b!6407 (= lambda!641 (evidence!83 thiss!1206))) (and b!6410 (= lambda!644 (evidence!83 thiss!1206))) (and b!6409 b_free!231) (and b!6405 b_free!237 (= (evidence!83 that!330) (evidence!83 thiss!1206))) b_lambda!3029)))

(declare-fun bs!1363 () Bool)

(declare-fun d!5095 () Bool)

(assert (= bs!1363 (and d!5095 b!6407)))

(declare-fun folds_equivalence!0 (List!127) Bool)

(assert (=> bs!1363 (= (dynLambda!87 lambda!641) (folds_equivalence!0 xs!395))))

(declare-fun m!9201 () Bool)

(assert (=> bs!1363 m!9201))

(assert (=> (and b!6407 (= lambda!641 (evidence!83 thiss!1206)) b!6411) d!5095))

(declare-fun bs!1364 () Bool)

(declare-fun d!5097 () Bool)

(assert (= bs!1364 (and d!5097 b!6410)))

(declare-fun foldRight_map_commutivity!0 (List!127) Bool)

(assert (=> bs!1364 (= (dynLambda!87 lambda!644) (foldRight_map_commutivity!0 xs!395))))

(declare-fun m!9203 () Bool)

(assert (=> bs!1364 m!9203))

(assert (=> (and b!6410 (= lambda!644 (evidence!83 thiss!1206)) b!6411) d!5097))

(declare-fun b_lambda!3031 () Bool)

(assert (= b_lambda!3025 (or (and b!6405 b_free!233) (and b!6410 (= lambda!643 (x!3417 that!330))) (and b!6409 b_free!229 (= (y!435 thiss!1206) (x!3417 that!330))) (and b!6405 b_free!235 (= (y!435 that!330) (x!3417 that!330))) (and b!6409 b_free!227 (= (x!3417 thiss!1206) (x!3417 that!330))) (and b!6407 (= lambda!639 (x!3417 that!330))) b_lambda!3031)))

(declare-fun bs!1365 () Bool)

(declare-fun d!5099 () Bool)

(assert (= bs!1365 (and d!5099 b!6410)))

(declare-fun foldRight!17 (List!127 Balance!43 Int) Balance!43)

(assert (=> bs!1365 (= (dynLambda!86 lambda!643) (foldRight!17 xs!395 (Balance!44 0 0) lambda!642))))

(declare-fun m!9205 () Bool)

(assert (=> bs!1365 m!9205))

(assert (=> (and b!6410 (= lambda!643 (x!3417 that!330)) b!6406) d!5099))

(declare-fun bs!1366 () Bool)

(declare-fun d!5101 () Bool)

(assert (= bs!1366 (and d!5101 b!6407)))

(assert (=> bs!1366 (= (dynLambda!86 lambda!639) (foldRight!17 xs!395 (Balance!44 0 0) lambda!640))))

(declare-fun m!9207 () Bool)

(assert (=> bs!1366 m!9207))

(assert (=> (and b!6407 (= lambda!639 (x!3417 that!330)) b!6406) d!5101))

(declare-fun b_lambda!3033 () Bool)

(assert (= b_lambda!3023 (or (and b!6405 b_free!235 (= (y!435 that!330) (y!435 thiss!1206))) (and b!6409 b_free!229) (and b!6409 b_free!227 (= (x!3417 thiss!1206) (y!435 thiss!1206))) (and b!6405 b_free!233 (= (x!3417 that!330) (y!435 thiss!1206))) (and b!6407 (= lambda!639 (y!435 thiss!1206))) (and b!6410 (= lambda!643 (y!435 thiss!1206))) b_lambda!3033)))

(declare-fun bs!1367 () Bool)

(declare-fun d!5103 () Bool)

(assert (= bs!1367 (and d!5103 b!6410)))

(assert (=> bs!1367 (= (dynLambda!86 lambda!643) (foldRight!17 xs!395 (Balance!44 0 0) lambda!642))))

(assert (=> bs!1367 m!9205))

(assert (=> (and b!6410 (= lambda!643 (y!435 thiss!1206)) b!6406) d!5103))

(declare-fun bs!1368 () Bool)

(declare-fun d!5105 () Bool)

(assert (= bs!1368 (and d!5105 b!6407)))

(assert (=> bs!1368 (= (dynLambda!86 lambda!639) (foldRight!17 xs!395 (Balance!44 0 0) lambda!640))))

(assert (=> bs!1368 m!9207))

(assert (=> (and b!6407 (= lambda!639 (y!435 thiss!1206)) b!6406) d!5105))

(push 1)

(assert (not b_next!495))

(assert (not b_next!493))

(assert (not b_next!491))

(assert (not bs!1366))

(assert (not b_lambda!3031))

(assert (not bs!1363))

(assert (not b_next!487))

(assert (not b!6408))

(assert (not bs!1364))

(assert (not bs!1365))

(assert (not b_next!489))

(assert b_and!1389)

(assert (not b_lambda!3029))

(assert b_and!1387)

(assert b_and!1383)

(assert (not bs!1367))

(assert (not b_next!485))

(assert b_and!1379)

(assert b_and!1381)

(assert b_and!1385)

(assert (not b_lambda!3033))

(assert (not start!1062))

(assert (not bs!1368))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!495))

(assert (not b_next!493))

(assert (not b_next!491))

(assert (not b_next!487))

(assert (not b_next!489))

(assert b_and!1389)

(assert b_and!1387)

(assert b_and!1383)

(assert (not b_next!485))

(assert b_and!1379)

(assert b_and!1381)

(assert b_and!1385)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1369 () Bool)

(declare-fun b!6420 () Bool)

(assert (= bs!1369 (and b!6420 b!6407)))

(declare-fun lambda!653 () Int)

(assert (=> bs!1369 (not (= lambda!653 lambda!640))))

(declare-fun bs!1370 () Bool)

(assert (= bs!1370 (and b!6420 b!6410)))

(assert (=> bs!1370 (= lambda!653 lambda!642)))

(declare-fun lambda!654 () Int)

(assert (=> bs!1369 (= lambda!654 lambda!640)))

(assert (=> bs!1370 (not (= lambda!654 lambda!642))))

(assert (=> b!6420 (not (= lambda!654 lambda!653))))

(declare-fun bs!1371 () Bool)

(declare-fun b!6421 () Bool)

(assert (= bs!1371 (and b!6421 b!6407)))

(declare-fun lambda!655 () Int)

(assert (=> bs!1371 (not (= lambda!655 lambda!640))))

(declare-fun bs!1372 () Bool)

(assert (= bs!1372 (and b!6421 b!6410)))

(assert (=> bs!1372 (= lambda!655 lambda!642)))

(declare-fun bs!1373 () Bool)

(assert (= bs!1373 (and b!6421 b!6420)))

(assert (=> bs!1373 (= lambda!655 lambda!653)))

(assert (=> bs!1373 (not (= lambda!655 lambda!654))))

(declare-fun lambda!656 () Int)

(assert (=> bs!1373 (= lambda!656 lambda!654)))

(assert (=> b!6421 (not (= lambda!656 lambda!655))))

(assert (=> bs!1373 (not (= lambda!656 lambda!653))))

(assert (=> bs!1371 (= lambda!656 lambda!640)))

(assert (=> bs!1372 (not (= lambda!656 lambda!642))))

(declare-fun e!3811 () Bool)

(assert (=> b!6421 (= e!3811 (= (foldRight!17 xs!395 (Balance!44 0 0) lambda!655) (foldRight!17 xs!395 (Balance!44 0 0) lambda!656)))))

(declare-fun lt!1372 () Bool)

(assert (=> b!6421 (= lt!1372 (folds_equivalence!0 (tail!354 xs!395)))))

(declare-fun d!5107 () Bool)

(assert (=> d!5107 e!3811))

(declare-fun c!2379 () Bool)

(assert (=> d!5107 (= c!2379 (is-Nil!125 xs!395))))

(assert (=> d!5107 (= (folds_equivalence!0 xs!395) true)))

(assert (=> b!6420 (= e!3811 (= (foldRight!17 xs!395 (Balance!44 0 0) lambda!653) (foldRight!17 xs!395 (Balance!44 0 0) lambda!654)))))

(assert (= (and d!5107 c!2379) b!6420))

(assert (= (and d!5107 (not c!2379)) b!6421))

(declare-fun m!9209 () Bool)

(assert (=> b!6421 m!9209))

(declare-fun m!9211 () Bool)

(assert (=> b!6421 m!9211))

(declare-fun m!9213 () Bool)

(assert (=> b!6421 m!9213))

(declare-fun m!9215 () Bool)

(assert (=> b!6420 m!9215))

(declare-fun m!9217 () Bool)

(assert (=> b!6420 m!9217))

(assert (=> bs!1363 d!5107))

(declare-fun d!5109 () Bool)

(declare-fun c!2382 () Bool)

(assert (=> d!5109 (= c!2382 (is-Nil!125 xs!395))))

(declare-fun e!3814 () Balance!43)

(assert (=> d!5109 (= (foldRight!17 xs!395 (Balance!44 0 0) lambda!640) e!3814)))

(declare-fun b!6426 () Bool)

(assert (=> b!6426 (= e!3814 (Balance!44 0 0))))

(declare-fun b!6427 () Bool)

(declare-fun dynLambda!88 (Int Parenthesis!22 Balance!43) Balance!43)

(assert (=> b!6427 (= e!3814 (dynLambda!88 lambda!640 (head!342 xs!395) (foldRight!17 (tail!354 xs!395) (Balance!44 0 0) lambda!640)))))

(assert (= (and d!5109 c!2382) b!6426))

(assert (= (and d!5109 (not c!2382)) b!6427))

(declare-fun b_lambda!3035 () Bool)

(assert (=> (not b_lambda!3035) (not b!6427)))

(declare-fun m!9219 () Bool)

(assert (=> b!6427 m!9219))

(assert (=> b!6427 m!9219))

(declare-fun m!9221 () Bool)

(assert (=> b!6427 m!9221))

(assert (=> bs!1366 d!5109))

(declare-fun d!5111 () Bool)

(assert (=> d!5111 (= (isEmpty!115 xs!395) (is-Nil!125 xs!395))))

(assert (=> start!1062 d!5111))

(declare-fun d!5113 () Bool)

(declare-fun res!1760 () Bool)

(declare-fun e!3817 () Bool)

(assert (=> d!5113 (=> (not res!1760) (not e!3817))))

(assert (=> d!5113 (= res!1760 (= (dynLambda!86 (x!3417 thiss!1206)) (dynLambda!86 (y!435 thiss!1206))))))

(assert (=> d!5113 (= (inv!230 thiss!1206) e!3817)))

(declare-fun b!6430 () Bool)

(assert (=> b!6430 (= e!3817 (dynLambda!87 (evidence!83 thiss!1206)))))

(assert (= (and d!5113 res!1760) b!6430))

(declare-fun b_lambda!3037 () Bool)

(assert (=> (not b_lambda!3037) (not d!5113)))

(declare-fun t!1113 () Bool)

(declare-fun tb!773 () Bool)

(assert (=> (and b!6409 (= (x!3417 thiss!1206) (x!3417 thiss!1206)) t!1113) tb!773))

(declare-fun result!813 () Bool)

(assert (=> tb!773 (= result!813 true)))

(assert (=> d!5113 t!1113))

(declare-fun b_and!1391 () Bool)

(assert (= b_and!1379 (and (=> t!1113 result!813) b_and!1391)))

(declare-fun t!1115 () Bool)

(declare-fun tb!775 () Bool)

(assert (=> (and b!6409 (= (y!435 thiss!1206) (x!3417 thiss!1206)) t!1115) tb!775))

(declare-fun result!815 () Bool)

(assert (=> tb!775 (= result!815 true)))

(assert (=> d!5113 t!1115))

(declare-fun b_and!1393 () Bool)

(assert (= b_and!1381 (and (=> t!1115 result!815) b_and!1393)))

(declare-fun tb!777 () Bool)

(declare-fun t!1117 () Bool)

(assert (=> (and b!6405 (= (x!3417 that!330) (x!3417 thiss!1206)) t!1117) tb!777))

(declare-fun result!817 () Bool)

(assert (=> tb!777 (= result!817 true)))

(assert (=> d!5113 t!1117))

(declare-fun b_and!1395 () Bool)

(assert (= b_and!1383 (and (=> t!1117 result!817) b_and!1395)))

(declare-fun tb!779 () Bool)

(declare-fun t!1119 () Bool)

(assert (=> (and b!6405 (= (y!435 that!330) (x!3417 thiss!1206)) t!1119) tb!779))

(declare-fun result!819 () Bool)

(assert (=> tb!779 (= result!819 true)))

(assert (=> d!5113 t!1119))

(declare-fun b_and!1397 () Bool)

(assert (= b_and!1385 (and (=> t!1119 result!819) b_and!1397)))

(declare-fun b_lambda!3039 () Bool)

(assert (=> (not b_lambda!3039) (not d!5113)))

(assert (=> d!5113 t!1093))

(declare-fun b_and!1399 () Bool)

(assert (= b_and!1391 (and (=> t!1093 result!793) b_and!1399)))

(assert (=> d!5113 t!1095))

(declare-fun b_and!1401 () Bool)

(assert (= b_and!1393 (and (=> t!1095 result!795) b_and!1401)))

(assert (=> d!5113 t!1097))

(declare-fun b_and!1403 () Bool)

(assert (= b_and!1395 (and (=> t!1097 result!797) b_and!1403)))

(assert (=> d!5113 t!1099))

(declare-fun b_and!1405 () Bool)

(assert (= b_and!1397 (and (=> t!1099 result!799) b_and!1405)))

(declare-fun b_lambda!3041 () Bool)

(assert (=> (not b_lambda!3041) (not b!6430)))

(assert (=> b!6430 t!1109))

(declare-fun b_and!1407 () Bool)

(assert (= b_and!1387 (and (=> t!1109 result!809) b_and!1407)))

(assert (=> b!6430 t!1111))

(declare-fun b_and!1409 () Bool)

(assert (= b_and!1389 (and (=> t!1111 result!811) b_and!1409)))

(declare-fun m!9223 () Bool)

(assert (=> d!5113 m!9223))

(assert (=> d!5113 m!9185))

(assert (=> b!6430 m!9199))

(assert (=> start!1062 d!5113))

(declare-fun d!5115 () Bool)

(declare-fun res!1761 () Bool)

(declare-fun e!3818 () Bool)

(assert (=> d!5115 (=> (not res!1761) (not e!3818))))

(assert (=> d!5115 (= res!1761 (= (dynLambda!86 (x!3417 that!330)) (dynLambda!86 (y!435 that!330))))))

(assert (=> d!5115 (= (inv!230 that!330) e!3818)))

(declare-fun b!6431 () Bool)

(assert (=> b!6431 (= e!3818 (dynLambda!87 (evidence!83 that!330)))))

(assert (= (and d!5115 res!1761) b!6431))

(declare-fun b_lambda!3043 () Bool)

(assert (=> (not b_lambda!3043) (not d!5115)))

(assert (=> d!5115 t!1101))

(declare-fun b_and!1411 () Bool)

(assert (= b_and!1399 (and (=> t!1101 result!801) b_and!1411)))

(assert (=> d!5115 t!1103))

(declare-fun b_and!1413 () Bool)

(assert (= b_and!1401 (and (=> t!1103 result!803) b_and!1413)))

(assert (=> d!5115 t!1105))

(declare-fun b_and!1415 () Bool)

(assert (= b_and!1403 (and (=> t!1105 result!805) b_and!1415)))

(assert (=> d!5115 t!1107))

(declare-fun b_and!1417 () Bool)

(assert (= b_and!1405 (and (=> t!1107 result!807) b_and!1417)))

(declare-fun b_lambda!3045 () Bool)

(assert (=> (not b_lambda!3045) (not d!5115)))

(declare-fun tb!781 () Bool)

(declare-fun t!1121 () Bool)

(assert (=> (and b!6409 (= (x!3417 thiss!1206) (y!435 that!330)) t!1121) tb!781))

(declare-fun result!821 () Bool)

(assert (=> tb!781 (= result!821 true)))

(assert (=> d!5115 t!1121))

(declare-fun b_and!1419 () Bool)

(assert (= b_and!1411 (and (=> t!1121 result!821) b_and!1419)))

(declare-fun tb!783 () Bool)

(declare-fun t!1123 () Bool)

(assert (=> (and b!6409 (= (y!435 thiss!1206) (y!435 that!330)) t!1123) tb!783))

(declare-fun result!823 () Bool)

(assert (=> tb!783 (= result!823 true)))

(assert (=> d!5115 t!1123))

(declare-fun b_and!1421 () Bool)

(assert (= b_and!1413 (and (=> t!1123 result!823) b_and!1421)))

(declare-fun t!1125 () Bool)

(declare-fun tb!785 () Bool)

(assert (=> (and b!6405 (= (x!3417 that!330) (y!435 that!330)) t!1125) tb!785))

(declare-fun result!825 () Bool)

(assert (=> tb!785 (= result!825 true)))

(assert (=> d!5115 t!1125))

(declare-fun b_and!1423 () Bool)

(assert (= b_and!1415 (and (=> t!1125 result!825) b_and!1423)))

(declare-fun t!1127 () Bool)

(declare-fun tb!787 () Bool)

(assert (=> (and b!6405 (= (y!435 that!330) (y!435 that!330)) t!1127) tb!787))

(declare-fun result!827 () Bool)

(assert (=> tb!787 (= result!827 true)))

(assert (=> d!5115 t!1127))

(declare-fun b_and!1425 () Bool)

(assert (= b_and!1417 (and (=> t!1127 result!827) b_and!1425)))

(declare-fun b_lambda!3047 () Bool)

(assert (=> (not b_lambda!3047) (not b!6431)))

(declare-fun t!1129 () Bool)

(declare-fun tb!789 () Bool)

(assert (=> (and b!6409 (= (evidence!83 thiss!1206) (evidence!83 that!330)) t!1129) tb!789))

(declare-fun result!829 () Bool)

(assert (=> tb!789 (= result!829 true)))

(assert (=> b!6431 t!1129))

(declare-fun b_and!1427 () Bool)

(assert (= b_and!1407 (and (=> t!1129 result!829) b_and!1427)))

(declare-fun t!1131 () Bool)

(declare-fun tb!791 () Bool)

(assert (=> (and b!6405 (= (evidence!83 that!330) (evidence!83 that!330)) t!1131) tb!791))

(declare-fun result!831 () Bool)

(assert (=> tb!791 (= result!831 true)))

(assert (=> b!6431 t!1131))

(declare-fun b_and!1429 () Bool)

(assert (= b_and!1409 (and (=> t!1131 result!831) b_and!1429)))

(assert (=> d!5115 m!9187))

(declare-fun m!9225 () Bool)

(assert (=> d!5115 m!9225))

(declare-fun m!9227 () Bool)

(assert (=> b!6431 m!9227))

(assert (=> start!1062 d!5115))

(declare-fun bs!1374 () Bool)

(declare-fun d!5117 () Bool)

(assert (= bs!1374 (and d!5117 b!6420)))

(declare-fun lambda!659 () Int)

(assert (=> bs!1374 (= lambda!659 lambda!654)))

(declare-fun bs!1375 () Bool)

(assert (= bs!1375 (and d!5117 b!6421)))

(assert (=> bs!1375 (not (= lambda!659 lambda!655))))

(assert (=> bs!1375 (= lambda!659 lambda!656)))

(assert (=> bs!1374 (not (= lambda!659 lambda!653))))

(declare-fun bs!1376 () Bool)

(assert (= bs!1376 (and d!5117 b!6407)))

(assert (=> bs!1376 (= lambda!659 lambda!640)))

(declare-fun bs!1377 () Bool)

(assert (= bs!1377 (and d!5117 b!6410)))

(assert (=> bs!1377 (not (= lambda!659 lambda!642))))

(declare-fun isBalanced!0 (Balance!43) Bool)

(assert (=> d!5117 (= (isMatchedSequential!0 xs!395) (isBalanced!0 (foldRight!17 xs!395 (Balance!44 0 0) lambda!659)))))

(declare-fun bs!1378 () Bool)

(assert (= bs!1378 d!5117))

(declare-fun m!9229 () Bool)

(assert (=> bs!1378 m!9229))

(assert (=> bs!1378 m!9229))

(declare-fun m!9231 () Bool)

(assert (=> bs!1378 m!9231))

(assert (=> b!6408 d!5117))

(declare-fun d!5119 () Bool)

(declare-fun lambda!664 () Int)

(declare-fun lambda!665 () Int)

(declare-datatypes () ((List!128 (Nil!126) (Cons!125 (head!343 Balance!43) (tail!355 List!128)))))

(declare-fun foldRight1!13 (List!128 Int) Balance!43)

(declare-fun map!132 (List!127 Int) List!128)

(assert (=> d!5119 (= (isMatchedHybid!0 xs!395) (isBalanced!0 (foldRight1!13 (map!132 xs!395 lambda!664) lambda!665)))))

(declare-fun bs!1379 () Bool)

(assert (= bs!1379 d!5119))

(declare-fun m!9233 () Bool)

(assert (=> bs!1379 m!9233))

(assert (=> bs!1379 m!9233))

(declare-fun m!9235 () Bool)

(assert (=> bs!1379 m!9235))

(assert (=> bs!1379 m!9235))

(declare-fun m!9237 () Bool)

(assert (=> bs!1379 m!9237))

(assert (=> b!6408 d!5119))

(declare-fun bs!1380 () Bool)

(declare-fun b!6436 () Bool)

(assert (= bs!1380 (and b!6436 b!6420)))

(declare-fun lambda!678 () Int)

(assert (=> bs!1380 (not (= lambda!678 lambda!654))))

(declare-fun bs!1381 () Bool)

(assert (= bs!1381 (and b!6436 b!6421)))

(assert (=> bs!1381 (= lambda!678 lambda!655)))

(assert (=> bs!1381 (not (= lambda!678 lambda!656))))

(assert (=> bs!1380 (= lambda!678 lambda!653)))

(declare-fun bs!1382 () Bool)

(assert (= bs!1382 (and b!6436 b!6407)))

(assert (=> bs!1382 (not (= lambda!678 lambda!640))))

(declare-fun bs!1383 () Bool)

(assert (= bs!1383 (and b!6436 d!5117)))

(assert (=> bs!1383 (not (= lambda!678 lambda!659))))

(declare-fun bs!1384 () Bool)

(assert (= bs!1384 (and b!6436 b!6410)))

(assert (=> bs!1384 (= lambda!678 lambda!642)))

(declare-fun bs!1385 () Bool)

(assert (= bs!1385 (and b!6436 d!5119)))

(declare-fun lambda!679 () Int)

(assert (=> bs!1385 (= lambda!679 lambda!664)))

(declare-fun lambda!680 () Int)

(assert (=> bs!1385 (= lambda!680 lambda!665)))

(declare-fun bs!1386 () Bool)

(declare-fun b!6437 () Bool)

(assert (= bs!1386 (and b!6437 b!6420)))

(declare-fun lambda!681 () Int)

(assert (=> bs!1386 (not (= lambda!681 lambda!654))))

(declare-fun bs!1387 () Bool)

(assert (= bs!1387 (and b!6437 b!6421)))

(assert (=> bs!1387 (= lambda!681 lambda!655)))

(assert (=> bs!1387 (not (= lambda!681 lambda!656))))

(declare-fun bs!1388 () Bool)

(assert (= bs!1388 (and b!6437 b!6436)))

(assert (=> bs!1388 (= lambda!681 lambda!678)))

(assert (=> bs!1386 (= lambda!681 lambda!653)))

(declare-fun bs!1389 () Bool)

(assert (= bs!1389 (and b!6437 b!6407)))

(assert (=> bs!1389 (not (= lambda!681 lambda!640))))

(declare-fun bs!1390 () Bool)

(assert (= bs!1390 (and b!6437 d!5117)))

(assert (=> bs!1390 (not (= lambda!681 lambda!659))))

(declare-fun bs!1391 () Bool)

(assert (= bs!1391 (and b!6437 b!6410)))

(assert (=> bs!1391 (= lambda!681 lambda!642)))

(declare-fun bs!1392 () Bool)

(assert (= bs!1392 (and b!6437 d!5119)))

(declare-fun lambda!682 () Int)

(assert (=> bs!1392 (= lambda!682 lambda!664)))

(assert (=> bs!1388 (= lambda!682 lambda!679)))

(declare-fun lambda!683 () Int)

(assert (=> bs!1392 (= lambda!683 lambda!665)))

(assert (=> bs!1388 (= lambda!683 lambda!680)))

(declare-fun e!3821 () Bool)

(declare-fun foldRight!18 (List!128 Balance!43 Int) Balance!43)

(assert (=> b!6437 (= e!3821 (= (foldRight!17 xs!395 (Balance!44 0 0) lambda!681) (foldRight!18 (map!132 xs!395 lambda!682) (Balance!44 0 0) lambda!683)))))

(declare-fun lt!1375 () Bool)

(assert (=> b!6437 (= lt!1375 (foldRight_map_commutivity!0 (tail!354 xs!395)))))

(declare-fun d!5121 () Bool)

(assert (=> d!5121 e!3821))

(declare-fun c!2385 () Bool)

(assert (=> d!5121 (= c!2385 (is-Nil!125 xs!395))))

(assert (=> d!5121 (= (foldRight_map_commutivity!0 xs!395) true)))

(assert (=> b!6436 (= e!3821 (= (foldRight!17 xs!395 (Balance!44 0 0) lambda!678) (foldRight!18 (map!132 xs!395 lambda!679) (Balance!44 0 0) lambda!680)))))

(assert (= (and d!5121 c!2385) b!6436))

(assert (= (and d!5121 (not c!2385)) b!6437))

(declare-fun m!9239 () Bool)

(assert (=> b!6437 m!9239))

(declare-fun m!9241 () Bool)

(assert (=> b!6437 m!9241))

(assert (=> b!6437 m!9241))

(declare-fun m!9243 () Bool)

(assert (=> b!6437 m!9243))

(declare-fun m!9245 () Bool)

(assert (=> b!6437 m!9245))

(declare-fun m!9247 () Bool)

(assert (=> b!6436 m!9247))

(declare-fun m!9249 () Bool)

(assert (=> b!6436 m!9249))

(assert (=> b!6436 m!9249))

(declare-fun m!9251 () Bool)

(assert (=> b!6436 m!9251))

(assert (=> bs!1364 d!5121))

(declare-fun d!5123 () Bool)

(declare-fun c!2386 () Bool)

(assert (=> d!5123 (= c!2386 (is-Nil!125 xs!395))))

(declare-fun e!3822 () Balance!43)

(assert (=> d!5123 (= (foldRight!17 xs!395 (Balance!44 0 0) lambda!642) e!3822)))

(declare-fun b!6438 () Bool)

(assert (=> b!6438 (= e!3822 (Balance!44 0 0))))

(declare-fun b!6439 () Bool)

(assert (=> b!6439 (= e!3822 (dynLambda!88 lambda!642 (head!342 xs!395) (foldRight!17 (tail!354 xs!395) (Balance!44 0 0) lambda!642)))))

(assert (= (and d!5123 c!2386) b!6438))

(assert (= (and d!5123 (not c!2386)) b!6439))

(declare-fun b_lambda!3049 () Bool)

(assert (=> (not b_lambda!3049) (not b!6439)))

(declare-fun m!9253 () Bool)

(assert (=> b!6439 m!9253))

(assert (=> b!6439 m!9253))

(declare-fun m!9255 () Bool)

(assert (=> b!6439 m!9255))

(assert (=> bs!1365 d!5123))

(assert (=> bs!1367 d!5123))

(assert (=> bs!1368 d!5109))

(declare-fun b_lambda!3051 () Bool)

(assert (= b_lambda!3049 (or b!6410 b_lambda!3051)))

(declare-fun bs!1393 () Bool)

(declare-fun d!5125 () Bool)

(assert (= bs!1393 (and d!5125 b!6410)))

(declare-fun ++!3 (Balance!43 Balance!43) Balance!43)

(declare-fun fromParenthesis!0 (Parenthesis!22) Balance!43)

(assert (=> bs!1393 (= (dynLambda!88 lambda!642 (head!342 xs!395) (foldRight!17 (tail!354 xs!395) (Balance!44 0 0) lambda!642)) (++!3 (fromParenthesis!0 (head!342 xs!395)) (foldRight!17 (tail!354 xs!395) (Balance!44 0 0) lambda!642)))))

(declare-fun m!9257 () Bool)

(assert (=> bs!1393 m!9257))

(assert (=> bs!1393 m!9257))

(assert (=> bs!1393 m!9253))

(declare-fun m!9259 () Bool)

(assert (=> bs!1393 m!9259))

(assert (=> b!6439 d!5125))

(declare-fun b_lambda!3053 () Bool)

(assert (= b_lambda!3043 (or (and b!6405 b_free!233) (and b!6410 (= lambda!643 (x!3417 that!330))) (and b!6409 b_free!229 (= (y!435 thiss!1206) (x!3417 that!330))) (and b!6405 b_free!235 (= (y!435 that!330) (x!3417 that!330))) (and b!6409 b_free!227 (= (x!3417 thiss!1206) (x!3417 that!330))) (and b!6407 (= lambda!639 (x!3417 that!330))) b_lambda!3053)))

(assert (=> (and b!6410 (= lambda!643 (x!3417 that!330)) d!5115) d!5099))

(assert (=> (and b!6407 (= lambda!639 (x!3417 that!330)) d!5115) d!5101))

(declare-fun b_lambda!3055 () Bool)

(assert (= b_lambda!3041 (or (and b!6407 (= lambda!641 (evidence!83 thiss!1206))) (and b!6410 (= lambda!644 (evidence!83 thiss!1206))) (and b!6409 b_free!231) (and b!6405 b_free!237 (= (evidence!83 that!330) (evidence!83 thiss!1206))) b_lambda!3055)))

(assert (=> (and b!6407 (= lambda!641 (evidence!83 thiss!1206)) b!6430) d!5095))

(assert (=> (and b!6410 (= lambda!644 (evidence!83 thiss!1206)) b!6430) d!5097))

(declare-fun b_lambda!3057 () Bool)

(assert (= b_lambda!3045 (or (and b!6405 b_free!235) (and b!6405 b_free!233 (= (x!3417 that!330) (y!435 that!330))) (and b!6410 (= lambda!643 (y!435 that!330))) (and b!6409 b_free!227 (= (x!3417 thiss!1206) (y!435 that!330))) (and b!6407 (= lambda!639 (y!435 that!330))) (and b!6409 b_free!229 (= (y!435 thiss!1206) (y!435 that!330))) b_lambda!3057)))

(declare-fun bs!1394 () Bool)

(declare-fun d!5127 () Bool)

(assert (= bs!1394 (and d!5127 b!6410)))

(assert (=> bs!1394 (= (dynLambda!86 lambda!643) (foldRight!17 xs!395 (Balance!44 0 0) lambda!642))))

(assert (=> bs!1394 m!9205))

(assert (=> (and b!6410 (= lambda!643 (y!435 that!330)) d!5115) d!5127))

(declare-fun bs!1395 () Bool)

(declare-fun d!5129 () Bool)

(assert (= bs!1395 (and d!5129 b!6407)))

(assert (=> bs!1395 (= (dynLambda!86 lambda!639) (foldRight!17 xs!395 (Balance!44 0 0) lambda!640))))

(assert (=> bs!1395 m!9207))

(assert (=> (and b!6407 (= lambda!639 (y!435 that!330)) d!5115) d!5129))

(declare-fun b_lambda!3059 () Bool)

(assert (= b_lambda!3047 (or (and b!6407 (= lambda!641 (evidence!83 that!330))) (and b!6410 (= lambda!644 (evidence!83 that!330))) (and b!6409 b_free!231 (= (evidence!83 thiss!1206) (evidence!83 that!330))) (and b!6405 b_free!237) b_lambda!3059)))

(declare-fun bs!1396 () Bool)

(declare-fun d!5131 () Bool)

(assert (= bs!1396 (and d!5131 b!6407)))

(assert (=> bs!1396 (= (dynLambda!87 lambda!641) (folds_equivalence!0 xs!395))))

(assert (=> bs!1396 m!9201))

(assert (=> (and b!6407 (= lambda!641 (evidence!83 that!330)) b!6431) d!5131))

(declare-fun bs!1397 () Bool)

(declare-fun d!5133 () Bool)

(assert (= bs!1397 (and d!5133 b!6410)))

(assert (=> bs!1397 (= (dynLambda!87 lambda!644) (foldRight_map_commutivity!0 xs!395))))

(assert (=> bs!1397 m!9203))

(assert (=> (and b!6410 (= lambda!644 (evidence!83 that!330)) b!6431) d!5133))

(declare-fun b_lambda!3061 () Bool)

(assert (= b_lambda!3035 (or b!6407 b_lambda!3061)))

(declare-fun bs!1398 () Bool)

(declare-fun d!5135 () Bool)

(assert (= bs!1398 (and d!5135 b!6407)))

(declare-fun +$colon!0 (Balance!43 Parenthesis!22) Balance!43)

(assert (=> bs!1398 (= (dynLambda!88 lambda!640 (head!342 xs!395) (foldRight!17 (tail!354 xs!395) (Balance!44 0 0) lambda!640)) (+$colon!0 (foldRight!17 (tail!354 xs!395) (Balance!44 0 0) lambda!640) (head!342 xs!395)))))

(assert (=> bs!1398 m!9219))

(declare-fun m!9261 () Bool)

(assert (=> bs!1398 m!9261))

(assert (=> b!6427 d!5135))

(declare-fun b_lambda!3063 () Bool)

(assert (= b_lambda!3039 (or (and b!6405 b_free!235 (= (y!435 that!330) (y!435 thiss!1206))) (and b!6409 b_free!229) (and b!6409 b_free!227 (= (x!3417 thiss!1206) (y!435 thiss!1206))) (and b!6405 b_free!233 (= (x!3417 that!330) (y!435 thiss!1206))) (and b!6407 (= lambda!639 (y!435 thiss!1206))) (and b!6410 (= lambda!643 (y!435 thiss!1206))) b_lambda!3063)))

(assert (=> (and b!6410 (= lambda!643 (y!435 thiss!1206)) d!5113) d!5103))

(assert (=> (and b!6407 (= lambda!639 (y!435 thiss!1206)) d!5113) d!5105))

(declare-fun b_lambda!3065 () Bool)

(assert (= b_lambda!3037 (or (and b!6407 (= lambda!639 (x!3417 thiss!1206))) (and b!6410 (= lambda!643 (x!3417 thiss!1206))) (and b!6405 b_free!235 (= (y!435 that!330) (x!3417 thiss!1206))) (and b!6405 b_free!233 (= (x!3417 that!330) (x!3417 thiss!1206))) (and b!6409 b_free!227) (and b!6409 b_free!229 (= (y!435 thiss!1206) (x!3417 thiss!1206))) b_lambda!3065)))

(declare-fun bs!1399 () Bool)

(declare-fun d!5137 () Bool)

(assert (= bs!1399 (and d!5137 b!6407)))

(assert (=> bs!1399 (= (dynLambda!86 lambda!639) (foldRight!17 xs!395 (Balance!44 0 0) lambda!640))))

(assert (=> bs!1399 m!9207))

(assert (=> (and b!6407 (= lambda!639 (x!3417 thiss!1206)) d!5113) d!5137))

(declare-fun bs!1400 () Bool)

(declare-fun d!5139 () Bool)

(assert (= bs!1400 (and d!5139 b!6410)))

(assert (=> bs!1400 (= (dynLambda!86 lambda!643) (foldRight!17 xs!395 (Balance!44 0 0) lambda!642))))

(assert (=> bs!1400 m!9205))

(assert (=> (and b!6410 (= lambda!643 (x!3417 thiss!1206)) d!5113) d!5139))

(push 1)

(assert (not b!6437))

(assert (not b_next!495))

(assert (not b_next!493))

(assert (not b_next!491))

(assert (not d!5119))

(assert (not b_lambda!3057))

(assert (not b_lambda!3065))

(assert (not bs!1397))

(assert (not b_lambda!3031))

(assert (not b_lambda!3059))

(assert (not bs!1400))

(assert b_and!1425)

(assert (not b_lambda!3063))

(assert (not b_lambda!3053))

(assert (not b_next!487))

(assert b_and!1419)

(assert (not b!6436))

(assert (not b!6421))

(assert b_and!1423)

(assert (not bs!1394))

(assert (not b_next!489))

(assert (not bs!1399))

(assert (not b_lambda!3029))

(assert (not b_lambda!3055))

(assert (not bs!1396))

(assert (not bs!1393))

(assert (not bs!1395))

(assert (not b!6420))

(assert (not b_next!485))

(assert b_and!1421)

(assert (not b_lambda!3061))

(assert b_and!1427)

(assert (not b_lambda!3033))

(assert (not b!6427))

(assert (not b_lambda!3051))

(assert (not b!6439))

(assert (not bs!1398))

(assert (not d!5117))

(assert b_and!1429)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!495))

(assert (not b_next!493))

(assert (not b_next!491))

(assert b_and!1425)

(assert (not b_next!487))

(assert b_and!1419)

(assert b_and!1423)

(assert (not b_next!489))

(assert (not b_next!485))

(assert b_and!1421)

(assert b_and!1427)

(assert b_and!1429)

(check-sat)

(pop 1)

