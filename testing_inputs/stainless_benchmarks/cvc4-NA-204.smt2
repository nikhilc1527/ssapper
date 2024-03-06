; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1514 () Bool)

(assert start!1514)

(declare-fun b!7886 () Bool)

(declare-fun b_free!637 () Bool)

(declare-fun b_next!1333 () Bool)

(assert (=> b!7886 (= b_free!637 (not b_next!1333))))

(declare-fun tp!1091 () Bool)

(declare-fun b_and!2567 () Bool)

(assert (=> b!7886 (= tp!1091 b_and!2567)))

(declare-fun b_free!639 () Bool)

(declare-fun b_next!1335 () Bool)

(assert (=> b!7886 (= b_free!639 (not b_next!1335))))

(declare-fun tp!1093 () Bool)

(declare-fun b_and!2569 () Bool)

(assert (=> b!7886 (= tp!1093 b_and!2569)))

(declare-fun b_free!641 () Bool)

(declare-fun b_next!1337 () Bool)

(assert (=> b!7886 (= b_free!641 (not b_next!1337))))

(declare-fun tp!1092 () Bool)

(declare-fun b_and!2571 () Bool)

(assert (=> b!7886 (= tp!1092 b_and!2571)))

(declare-fun b!7880 () Bool)

(declare-fun b_free!643 () Bool)

(declare-fun b_next!1339 () Bool)

(assert (=> b!7880 (= b_free!643 (not b_next!1339))))

(declare-fun tp!1089 () Bool)

(declare-fun b_and!2573 () Bool)

(assert (=> b!7880 (= tp!1089 b_and!2573)))

(declare-fun b_free!645 () Bool)

(declare-fun b_next!1341 () Bool)

(assert (=> b!7880 (= b_free!645 (not b_next!1341))))

(declare-fun tp!1090 () Bool)

(declare-fun b_and!2575 () Bool)

(assert (=> b!7880 (= tp!1090 b_and!2575)))

(declare-fun b_free!647 () Bool)

(declare-fun b_next!1343 () Bool)

(assert (=> b!7880 (= b_free!647 (not b_next!1343))))

(declare-fun tp!1088 () Bool)

(declare-fun b_and!2577 () Bool)

(assert (=> b!7880 (= tp!1088 b_and!2577)))

(declare-fun b!7881 () Bool)

(assert (=> b!7881 true))

(declare-datatypes () ((Balance!127 (Balance!128 (extraOpen!104 Int) (extraClose!104 Int)))))

(declare-datatypes () ((EqEvidence!102 (EqEvidence!103 (x!4328 Int) (y!485 Int) (evidence!118 Int)))))

(declare-fun thiss!1146 () EqEvidence!102)

(declare-fun lambda!1697 () Int)

(declare-fun b_next!1345 () Bool)

(assert (=> b!7886 (= b_next!1333 (or (and b!7881 (= lambda!1697 (x!4328 thiss!1146))) b_next!1345))))

(declare-fun b_next!1347 () Bool)

(assert (=> b!7886 (= b_next!1335 (or (and b!7881 (= lambda!1697 (y!485 thiss!1146))) b_next!1347))))

(declare-fun that!322 () EqEvidence!102)

(declare-fun b_next!1349 () Bool)

(assert (=> b!7880 (= b_next!1339 (or (and b!7881 (= lambda!1697 (x!4328 that!322))) b_next!1349))))

(declare-fun b_next!1351 () Bool)

(assert (=> b!7880 (= b_next!1341 (or (and b!7881 (= lambda!1697 (y!485 that!322))) b_next!1351))))

(declare-fun m!10711 () Bool)

(assert (=> b!7881 m!10711))

(declare-fun lambda!1698 () Int)

(assert (=> b!7881 (not (= lambda!1698 lambda!1697))))

(assert (=> b!7881 true))

(declare-fun b_next!1353 () Bool)

(assert (=> b!7886 (= b_next!1345 (or (and b!7881 (= lambda!1698 (x!4328 thiss!1146))) b_next!1353))))

(declare-fun b_next!1355 () Bool)

(assert (=> b!7886 (= b_next!1347 (or (and b!7881 (= lambda!1698 (y!485 thiss!1146))) b_next!1355))))

(declare-fun b_next!1357 () Bool)

(assert (=> b!7880 (= b_next!1349 (or (and b!7881 (= lambda!1698 (x!4328 that!322))) b_next!1357))))

(declare-fun b_next!1359 () Bool)

(assert (=> b!7880 (= b_next!1351 (or (and b!7881 (= lambda!1698 (y!485 that!322))) b_next!1359))))

(assert (=> b!7881 true))

(declare-fun lambda!1699 () Int)

(declare-fun b_next!1361 () Bool)

(assert (=> b!7886 (= b_next!1337 (or (and b!7881 (= lambda!1699 (evidence!118 thiss!1146))) b_next!1361))))

(declare-fun b_next!1363 () Bool)

(assert (=> b!7880 (= b_next!1343 (or (and b!7881 (= lambda!1699 (evidence!118 that!322))) b_next!1363))))

(declare-fun b!7885 () Bool)

(assert (=> b!7885 m!10711))

(declare-fun bs!1807 () Bool)

(assert (= bs!1807 (and b!7885 b!7881)))

(declare-fun lambda!1700 () Int)

(assert (=> bs!1807 (not (= lambda!1700 lambda!1697))))

(assert (=> bs!1807 (not (= lambda!1700 lambda!1698))))

(assert (=> b!7885 true))

(declare-fun b_next!1365 () Bool)

(assert (=> b!7886 (= b_next!1353 (or (and b!7885 (= lambda!1700 (x!4328 thiss!1146))) b_next!1365))))

(declare-fun b_next!1367 () Bool)

(assert (=> b!7886 (= b_next!1355 (or (and b!7885 (= lambda!1700 (y!485 thiss!1146))) b_next!1367))))

(declare-fun b_next!1369 () Bool)

(assert (=> b!7880 (= b_next!1357 (or (and b!7885 (= lambda!1700 (x!4328 that!322))) b_next!1369))))

(declare-fun b_next!1371 () Bool)

(assert (=> b!7880 (= b_next!1359 (or (and b!7885 (= lambda!1700 (y!485 that!322))) b_next!1371))))

(declare-fun m!10713 () Bool)

(assert (=> b!7885 m!10713))

(declare-fun lambda!1701 () Int)

(assert (=> bs!1807 (not (= lambda!1701 lambda!1699))))

(declare-fun dynLambda!179 (Int) Bool)

(assert (=> (and b!7886 b!7885 (= (dynLambda!179 lambda!1701) (dynLambda!179 (evidence!118 thiss!1146)))) (= lambda!1701 (evidence!118 thiss!1146))))

(assert (=> (and b!7880 b!7885 (= (dynLambda!179 lambda!1701) (dynLambda!179 (evidence!118 that!322)))) (= lambda!1701 (evidence!118 that!322))))

(declare-fun b_next!1373 () Bool)

(assert (=> b!7886 (= b_next!1361 (or (and b!7885 (= lambda!1701 (evidence!118 thiss!1146))) b_next!1373))))

(declare-fun b_next!1375 () Bool)

(assert (=> b!7880 (= b_next!1363 (or (and b!7885 (= lambda!1701 (evidence!118 that!322))) b_next!1375))))

(declare-fun res!2357 () Bool)

(declare-fun e!4513 () Bool)

(assert (=> start!1514 (=> (not res!2357) (not e!4513))))

(declare-datatypes () ((Parenthesis!48 (CloseParenthesis!47) (OpenParenthesis!47))))

(declare-datatypes () ((List!179 (Nil!177) (Cons!176 (head!394 Parenthesis!48) (tail!406 List!179)))))

(declare-fun xs!372 () List!179)

(declare-fun isEmpty!149 (List!179) Bool)

(assert (=> start!1514 (= res!2357 (not (isEmpty!149 xs!372)))))

(assert (=> start!1514 e!4513))

(assert (=> start!1514 true))

(declare-fun e!4511 () Bool)

(declare-fun inv!280 (EqEvidence!102) Bool)

(assert (=> start!1514 (and (inv!280 thiss!1146) e!4511)))

(declare-fun e!4512 () Bool)

(assert (=> start!1514 (and (inv!280 that!322) e!4512)))

(assert (=> b!7880 (= e!4512 (and tp!1089 tp!1090 tp!1088))))

(declare-fun res!2356 () Bool)

(assert (=> b!7881 (=> (not res!2356) (not e!4513))))

(assert (=> b!7881 (= res!2356 (= thiss!1146 (EqEvidence!103 lambda!1697 lambda!1698 lambda!1699)))))

(declare-fun b!7882 () Bool)

(declare-fun res!2358 () Bool)

(assert (=> b!7882 (=> (not res!2358) (not e!4513))))

(assert (=> b!7882 (= res!2358 (or (not (is-Cons!176 xs!372)) (not (is-Nil!177 (tail!406 xs!372)))))))

(declare-fun b!7883 () Bool)

(declare-fun dynLambda!180 (Int) Balance!127)

(assert (=> b!7883 (= e!4513 (not (= (dynLambda!180 (y!485 thiss!1146)) (dynLambda!180 (x!4328 that!322)))))))

(declare-fun b!7884 () Bool)

(declare-fun res!2355 () Bool)

(assert (=> b!7884 (=> (not res!2355) (not e!4513))))

(assert (=> b!7884 (= res!2355 (dynLambda!179 (evidence!118 thiss!1146)))))

(declare-fun res!2360 () Bool)

(assert (=> b!7885 (=> (not res!2360) (not e!4513))))

(assert (=> b!7885 (= res!2360 (= that!322 (EqEvidence!103 lambda!1700 lambda!1700 lambda!1701)))))

(assert (=> b!7886 (= e!4511 (and tp!1091 tp!1093 tp!1092))))

(declare-fun b!7887 () Bool)

(declare-fun res!2359 () Bool)

(assert (=> b!7887 (=> (not res!2359) (not e!4513))))

(declare-fun lambda!1695 () Int)

(declare-datatypes () ((ProofOps!82 (ProofOps!83 (prop!154 Bool)))))

(declare-fun thiss!1106 () ProofOps!82)

(declare-fun lambda!1696 () Int)

(declare-datatypes () ((List!180 (Nil!178) (Cons!177 (head!395 Balance!127) (tail!407 List!180)))))

(declare-fun foldRight1!37 (List!180 Int) Balance!127)

(declare-fun append!70 (List!180 List!180) List!180)

(declare-fun map!158 (List!179 Int) List!180)

(assert (=> b!7887 (= res!2359 (= thiss!1106 (ProofOps!83 (= (foldRight1!37 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696) (foldRight1!37 (map!158 xs!372 lambda!1695) lambda!1696)))))))

(assert (= (and start!1514 res!2357) b!7887))

(assert (= (and b!7887 res!2359) b!7882))

(assert (= (and b!7882 res!2358) b!7881))

(assert (= (and b!7881 res!2356) b!7885))

(assert (= (and b!7885 res!2360) b!7884))

(assert (= (and b!7884 res!2355) b!7883))

(assert (= start!1514 b!7886))

(assert (= start!1514 b!7880))

(declare-fun b_lambda!3855 () Bool)

(assert (=> (not b_lambda!3855) (not b!7883)))

(declare-fun t!1735 () Bool)

(declare-fun tb!1395 () Bool)

(assert (=> (and b!7886 (= (x!4328 thiss!1146) (y!485 thiss!1146)) t!1735) tb!1395))

(declare-fun result!1435 () Bool)

(assert (=> tb!1395 (= result!1435 true)))

(assert (=> b!7883 t!1735))

(declare-fun b_and!2579 () Bool)

(assert (= b_and!2567 (and (=> t!1735 result!1435) b_and!2579)))

(declare-fun t!1737 () Bool)

(declare-fun tb!1397 () Bool)

(assert (=> (and b!7886 (= (y!485 thiss!1146) (y!485 thiss!1146)) t!1737) tb!1397))

(declare-fun result!1437 () Bool)

(assert (=> tb!1397 (= result!1437 true)))

(assert (=> b!7883 t!1737))

(declare-fun b_and!2581 () Bool)

(assert (= b_and!2569 (and (=> t!1737 result!1437) b_and!2581)))

(declare-fun t!1739 () Bool)

(declare-fun tb!1399 () Bool)

(assert (=> (and b!7880 (= (x!4328 that!322) (y!485 thiss!1146)) t!1739) tb!1399))

(declare-fun result!1439 () Bool)

(assert (=> tb!1399 (= result!1439 true)))

(assert (=> b!7883 t!1739))

(declare-fun b_and!2583 () Bool)

(assert (= b_and!2573 (and (=> t!1739 result!1439) b_and!2583)))

(declare-fun t!1741 () Bool)

(declare-fun tb!1401 () Bool)

(assert (=> (and b!7880 (= (y!485 that!322) (y!485 thiss!1146)) t!1741) tb!1401))

(declare-fun result!1441 () Bool)

(assert (=> tb!1401 (= result!1441 true)))

(assert (=> b!7883 t!1741))

(declare-fun b_and!2585 () Bool)

(assert (= b_and!2575 (and (=> t!1741 result!1441) b_and!2585)))

(declare-fun b_lambda!3857 () Bool)

(assert (=> (not b_lambda!3857) (not b!7883)))

(declare-fun tb!1403 () Bool)

(declare-fun t!1743 () Bool)

(assert (=> (and b!7886 (= (x!4328 thiss!1146) (x!4328 that!322)) t!1743) tb!1403))

(declare-fun result!1443 () Bool)

(assert (=> tb!1403 (= result!1443 true)))

(assert (=> b!7883 t!1743))

(declare-fun b_and!2587 () Bool)

(assert (= b_and!2579 (and (=> t!1743 result!1443) b_and!2587)))

(declare-fun tb!1405 () Bool)

(declare-fun t!1745 () Bool)

(assert (=> (and b!7886 (= (y!485 thiss!1146) (x!4328 that!322)) t!1745) tb!1405))

(declare-fun result!1445 () Bool)

(assert (=> tb!1405 (= result!1445 true)))

(assert (=> b!7883 t!1745))

(declare-fun b_and!2589 () Bool)

(assert (= b_and!2581 (and (=> t!1745 result!1445) b_and!2589)))

(declare-fun t!1747 () Bool)

(declare-fun tb!1407 () Bool)

(assert (=> (and b!7880 (= (x!4328 that!322) (x!4328 that!322)) t!1747) tb!1407))

(declare-fun result!1447 () Bool)

(assert (=> tb!1407 (= result!1447 true)))

(assert (=> b!7883 t!1747))

(declare-fun b_and!2591 () Bool)

(assert (= b_and!2583 (and (=> t!1747 result!1447) b_and!2591)))

(declare-fun t!1749 () Bool)

(declare-fun tb!1409 () Bool)

(assert (=> (and b!7880 (= (y!485 that!322) (x!4328 that!322)) t!1749) tb!1409))

(declare-fun result!1449 () Bool)

(assert (=> tb!1409 (= result!1449 true)))

(assert (=> b!7883 t!1749))

(declare-fun b_and!2593 () Bool)

(assert (= b_and!2585 (and (=> t!1749 result!1449) b_and!2593)))

(declare-fun b_lambda!3859 () Bool)

(assert (=> (not b_lambda!3859) (not b!7884)))

(declare-fun t!1751 () Bool)

(declare-fun tb!1411 () Bool)

(assert (=> (and b!7886 (= (evidence!118 thiss!1146) (evidence!118 thiss!1146)) t!1751) tb!1411))

(declare-fun result!1451 () Bool)

(assert (=> tb!1411 (= result!1451 true)))

(assert (=> b!7884 t!1751))

(declare-fun b_and!2595 () Bool)

(assert (= b_and!2571 (and (=> t!1751 result!1451) b_and!2595)))

(declare-fun tb!1413 () Bool)

(declare-fun t!1753 () Bool)

(assert (=> (and b!7880 (= (evidence!118 that!322) (evidence!118 thiss!1146)) t!1753) tb!1413))

(declare-fun result!1453 () Bool)

(assert (=> tb!1413 (= result!1453 true)))

(assert (=> b!7884 t!1753))

(declare-fun b_and!2597 () Bool)

(assert (= b_and!2577 (and (=> t!1753 result!1453) b_and!2597)))

(declare-fun m!10715 () Bool)

(assert (=> start!1514 m!10715))

(declare-fun m!10717 () Bool)

(assert (=> start!1514 m!10717))

(declare-fun m!10719 () Bool)

(assert (=> start!1514 m!10719))

(declare-fun m!10721 () Bool)

(assert (=> b!7883 m!10721))

(declare-fun m!10723 () Bool)

(assert (=> b!7883 m!10723))

(declare-fun m!10725 () Bool)

(assert (=> b!7884 m!10725))

(declare-fun m!10727 () Bool)

(assert (=> b!7887 m!10727))

(declare-fun m!10729 () Bool)

(assert (=> b!7887 m!10729))

(assert (=> b!7887 m!10727))

(assert (=> b!7887 m!10727))

(assert (=> b!7887 m!10729))

(declare-fun m!10731 () Bool)

(assert (=> b!7887 m!10731))

(assert (=> b!7887 m!10727))

(declare-fun m!10733 () Bool)

(assert (=> b!7887 m!10733))

(push 1)

(assert (not b_lambda!3859))

(assert (not b_next!1373))

(assert b_and!2587)

(assert (not b_next!1367))

(assert (not b_lambda!3857))

(assert (not b_lambda!3855))

(assert (not b_next!1365))

(assert (not start!1514))

(assert b_and!2595)

(assert b_and!2593)

(assert b_and!2591)

(assert (not b!7881))

(assert (not b_next!1371))

(assert (not b!7885))

(assert (not b_next!1375))

(assert b_and!2589)

(assert (not b_next!1369))

(assert (not b!7887))

(assert b_and!2597)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1373))

(assert b_and!2587)

(assert (not b_next!1367))

(assert (not b_next!1365))

(assert b_and!2595)

(assert b_and!2593)

(assert b_and!2591)

(assert (not b_next!1371))

(assert (not b_next!1375))

(assert b_and!2589)

(assert (not b_next!1369))

(assert b_and!2597)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3861 () Bool)

(assert (= b_lambda!3859 (or (and b!7881 (= lambda!1699 (evidence!118 thiss!1146))) (and b!7885 (= lambda!1701 (evidence!118 thiss!1146))) (and b!7886 b_free!641) (and b!7880 b_free!647 (= (evidence!118 that!322) (evidence!118 thiss!1146))) b_lambda!3861)))

(declare-fun bs!1808 () Bool)

(declare-fun d!6173 () Bool)

(assert (= bs!1808 (and d!6173 b!7881)))

(declare-fun remove_null_balance!0 (List!179) Bool)

(assert (=> bs!1808 (= (dynLambda!179 lambda!1699) (remove_null_balance!0 (tail!406 xs!372)))))

(declare-fun m!10735 () Bool)

(assert (=> bs!1808 m!10735))

(assert (=> (and b!7881 (= lambda!1699 (evidence!118 thiss!1146)) b!7884) d!6173))

(declare-fun bs!1809 () Bool)

(declare-fun d!6175 () Bool)

(assert (= bs!1809 (and d!6175 b!7885)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!1809 (= (dynLambda!179 lambda!1701) trivial!1)))

(assert (=> (and b!7885 (= lambda!1701 (evidence!118 thiss!1146)) b!7884) d!6175))

(declare-fun b_lambda!3863 () Bool)

(assert (= b_lambda!3855 (or (and b!7885 (= lambda!1700 (y!485 thiss!1146))) (and b!7886 b_free!639) (and b!7881 (= lambda!1698 (y!485 thiss!1146))) (and b!7880 b_free!645 (= (y!485 that!322) (y!485 thiss!1146))) (and b!7886 b_free!637 (= (x!4328 thiss!1146) (y!485 thiss!1146))) (and b!7881 (= lambda!1697 (y!485 thiss!1146))) (and b!7880 b_free!643 (= (x!4328 that!322) (y!485 thiss!1146))) b_lambda!3863)))

(declare-fun bs!1810 () Bool)

(declare-fun d!6177 () Bool)

(assert (= bs!1810 (and d!6177 b!7881)))

(assert (=> bs!1810 (= (dynLambda!180 lambda!1697) (foldRight1!37 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696))))

(assert (=> bs!1810 m!10727))

(assert (=> bs!1810 m!10727))

(assert (=> bs!1810 m!10729))

(assert (=> bs!1810 m!10729))

(assert (=> bs!1810 m!10731))

(assert (=> (and b!7881 (= lambda!1697 (y!485 thiss!1146)) b!7883) d!6177))

(declare-fun bs!1811 () Bool)

(declare-fun d!6179 () Bool)

(assert (= bs!1811 (and d!6179 b!7881)))

(declare-fun ++!3 (Balance!127 Balance!127) Balance!127)

(declare-fun fromParenthesis!0 (Parenthesis!48) Balance!127)

(assert (=> bs!1811 (= (dynLambda!180 lambda!1698) (++!3 (fromParenthesis!0 (head!394 xs!372)) (foldRight1!37 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696)))))

(declare-fun m!10737 () Bool)

(assert (=> bs!1811 m!10737))

(declare-fun m!10739 () Bool)

(assert (=> bs!1811 m!10739))

(declare-fun m!10741 () Bool)

(assert (=> bs!1811 m!10741))

(assert (=> bs!1811 m!10737))

(declare-fun m!10743 () Bool)

(assert (=> bs!1811 m!10743))

(assert (=> bs!1811 m!10743))

(assert (=> bs!1811 m!10739))

(assert (=> (and b!7881 (= lambda!1698 (y!485 thiss!1146)) b!7883) d!6179))

(declare-fun bs!1812 () Bool)

(declare-fun d!6181 () Bool)

(assert (= bs!1812 (and d!6181 b!7885)))

(assert (=> bs!1812 (= (dynLambda!180 lambda!1700) (++!3 (fromParenthesis!0 (head!394 xs!372)) (foldRight1!37 (map!158 (tail!406 xs!372) lambda!1695) lambda!1696)))))

(assert (=> bs!1812 m!10737))

(assert (=> bs!1812 m!10737))

(declare-fun m!10745 () Bool)

(assert (=> bs!1812 m!10745))

(assert (=> bs!1812 m!10745))

(declare-fun m!10747 () Bool)

(assert (=> bs!1812 m!10747))

(assert (=> (and b!7885 (= lambda!1700 (y!485 thiss!1146)) b!7883) d!6181))

(declare-fun b_lambda!3865 () Bool)

(assert (= b_lambda!3857 (or (and b!7886 b_free!639 (= (y!485 thiss!1146) (x!4328 that!322))) (and b!7881 (= lambda!1697 (x!4328 that!322))) (and b!7880 b_free!645 (= (y!485 that!322) (x!4328 that!322))) (and b!7880 b_free!643) (and b!7886 b_free!637 (= (x!4328 thiss!1146) (x!4328 that!322))) (and b!7881 (= lambda!1698 (x!4328 that!322))) (and b!7885 (= lambda!1700 (x!4328 that!322))) b_lambda!3865)))

(declare-fun bs!1813 () Bool)

(declare-fun d!6183 () Bool)

(assert (= bs!1813 (and d!6183 b!7881)))

(assert (=> bs!1813 (= (dynLambda!180 lambda!1697) (foldRight1!37 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696))))

(assert (=> bs!1813 m!10727))

(assert (=> bs!1813 m!10727))

(assert (=> bs!1813 m!10729))

(assert (=> bs!1813 m!10729))

(assert (=> bs!1813 m!10731))

(assert (=> (and b!7881 (= lambda!1697 (x!4328 that!322)) b!7883) d!6183))

(declare-fun bs!1814 () Bool)

(declare-fun d!6185 () Bool)

(assert (= bs!1814 (and d!6185 b!7881)))

(assert (=> bs!1814 (= (dynLambda!180 lambda!1698) (++!3 (fromParenthesis!0 (head!394 xs!372)) (foldRight1!37 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696)))))

(assert (=> bs!1814 m!10737))

(assert (=> bs!1814 m!10739))

(assert (=> bs!1814 m!10741))

(assert (=> bs!1814 m!10737))

(assert (=> bs!1814 m!10743))

(assert (=> bs!1814 m!10743))

(assert (=> bs!1814 m!10739))

(assert (=> (and b!7881 (= lambda!1698 (x!4328 that!322)) b!7883) d!6185))

(declare-fun bs!1815 () Bool)

(declare-fun d!6187 () Bool)

(assert (= bs!1815 (and d!6187 b!7885)))

(assert (=> bs!1815 (= (dynLambda!180 lambda!1700) (++!3 (fromParenthesis!0 (head!394 xs!372)) (foldRight1!37 (map!158 (tail!406 xs!372) lambda!1695) lambda!1696)))))

(assert (=> bs!1815 m!10737))

(assert (=> bs!1815 m!10737))

(assert (=> bs!1815 m!10745))

(assert (=> bs!1815 m!10745))

(assert (=> bs!1815 m!10747))

(assert (=> (and b!7885 (= lambda!1700 (x!4328 that!322)) b!7883) d!6187))

(push 1)

(assert (not b_next!1373))

(assert (not bs!1814))

(assert (not bs!1808))

(assert b_and!2587)

(assert (not bs!1815))

(assert (not bs!1813))

(assert (not bs!1812))

(assert (not bs!1811))

(assert (not b_next!1367))

(assert (not b_next!1365))

(assert (not start!1514))

(assert b_and!2595)

(assert b_and!2593)

(assert b_and!2591)

(assert (not b_lambda!3863))

(assert (not b_lambda!3861))

(assert (not b!7881))

(assert (not bs!1810))

(assert (not b_next!1371))

(assert (not b!7885))

(assert (not b_next!1375))

(assert b_and!2589)

(assert (not b_next!1369))

(assert (not b!7887))

(assert b_and!2597)

(assert (not b_lambda!3865))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1373))

(assert b_and!2587)

(assert (not b_next!1367))

(assert (not b_next!1365))

(assert b_and!2595)

(assert b_and!2593)

(assert b_and!2591)

(assert (not b_next!1371))

(assert (not b_next!1375))

(assert b_and!2589)

(assert (not b_next!1369))

(assert b_and!2597)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6189 () Bool)

(declare-fun c!2739 () Bool)

(assert (=> d!6189 (= c!2739 (and (is-Cons!177 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))) (is-Nil!178 (tail!407 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))))))))

(declare-fun e!4516 () Balance!127)

(assert (=> d!6189 (= (foldRight1!37 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696) e!4516)))

(declare-fun b!7896 () Bool)

(assert (=> b!7896 (= e!4516 (head!395 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))))))

(declare-fun b!7897 () Bool)

(declare-fun dynLambda!181 (Int Balance!127 Balance!127) Balance!127)

(assert (=> b!7897 (= e!4516 (dynLambda!181 lambda!1696 (head!395 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))) (foldRight1!37 (tail!407 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))) lambda!1696)))))

(assert (= (and d!6189 c!2739) b!7896))

(assert (= (and d!6189 (not c!2739)) b!7897))

(declare-fun b_lambda!3867 () Bool)

(assert (=> (not b_lambda!3867) (not b!7897)))

(declare-fun m!10749 () Bool)

(assert (=> b!7897 m!10749))

(assert (=> b!7897 m!10749))

(declare-fun m!10751 () Bool)

(assert (=> b!7897 m!10751))

(assert (=> b!7887 d!6189))

(declare-fun d!6191 () Bool)

(declare-fun c!2742 () Bool)

(assert (=> d!6191 (= c!2742 (is-Nil!177 xs!372))))

(declare-fun e!4519 () List!180)

(assert (=> d!6191 (= (map!158 xs!372 lambda!1695) e!4519)))

(declare-fun b!7902 () Bool)

(assert (=> b!7902 (= e!4519 Nil!178)))

(declare-fun b!7903 () Bool)

(declare-fun dynLambda!182 (Int Parenthesis!48) Balance!127)

(assert (=> b!7903 (= e!4519 (Cons!177 (dynLambda!182 lambda!1695 (head!394 xs!372)) (map!158 (tail!406 xs!372) lambda!1695)))))

(assert (= (and d!6191 c!2742) b!7902))

(assert (= (and d!6191 (not c!2742)) b!7903))

(declare-fun b_lambda!3869 () Bool)

(assert (=> (not b_lambda!3869) (not b!7903)))

(declare-fun m!10753 () Bool)

(assert (=> b!7903 m!10753))

(assert (=> b!7903 m!10737))

(assert (=> b!7887 d!6191))

(declare-fun d!6193 () Bool)

(declare-fun c!2743 () Bool)

(assert (=> d!6193 (= c!2743 (and (is-Cons!177 (map!158 xs!372 lambda!1695)) (is-Nil!178 (tail!407 (map!158 xs!372 lambda!1695)))))))

(declare-fun e!4520 () Balance!127)

(assert (=> d!6193 (= (foldRight1!37 (map!158 xs!372 lambda!1695) lambda!1696) e!4520)))

(declare-fun b!7904 () Bool)

(assert (=> b!7904 (= e!4520 (head!395 (map!158 xs!372 lambda!1695)))))

(declare-fun b!7905 () Bool)

(assert (=> b!7905 (= e!4520 (dynLambda!181 lambda!1696 (head!395 (map!158 xs!372 lambda!1695)) (foldRight1!37 (tail!407 (map!158 xs!372 lambda!1695)) lambda!1696)))))

(assert (= (and d!6193 c!2743) b!7904))

(assert (= (and d!6193 (not c!2743)) b!7905))

(declare-fun b_lambda!3871 () Bool)

(assert (=> (not b_lambda!3871) (not b!7905)))

(declare-fun m!10755 () Bool)

(assert (=> b!7905 m!10755))

(assert (=> b!7905 m!10755))

(declare-fun m!10757 () Bool)

(assert (=> b!7905 m!10757))

(assert (=> b!7887 d!6193))

(declare-fun d!6195 () Bool)

(declare-fun c!2746 () Bool)

(assert (=> d!6195 (= c!2746 (is-Nil!178 (map!158 xs!372 lambda!1695)))))

(declare-fun e!4523 () List!180)

(assert (=> d!6195 (= (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) e!4523)))

(declare-fun b!7910 () Bool)

(assert (=> b!7910 (= e!4523 (Cons!177 (Balance!128 0 0) Nil!178))))

(declare-fun b!7911 () Bool)

(assert (=> b!7911 (= e!4523 (Cons!177 (head!395 (map!158 xs!372 lambda!1695)) (append!70 (tail!407 (map!158 xs!372 lambda!1695)) (Cons!177 (Balance!128 0 0) Nil!178))))))

(assert (= (and d!6195 c!2746) b!7910))

(assert (= (and d!6195 (not c!2746)) b!7911))

(declare-fun m!10759 () Bool)

(assert (=> b!7911 m!10759))

(assert (=> b!7887 d!6195))

(declare-fun d!6197 () Bool)

(declare-fun lt!1467 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!6197 (= lt!1467 (min!4 (extraOpen!104 (fromParenthesis!0 (head!394 xs!372))) (extraClose!104 (foldRight1!37 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696))))))

(assert (=> d!6197 (= (++!3 (fromParenthesis!0 (head!394 xs!372)) (foldRight1!37 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696)) (Balance!128 (- (+ (extraOpen!104 (fromParenthesis!0 (head!394 xs!372))) (extraOpen!104 (foldRight1!37 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696))) lt!1467) (- (+ (extraClose!104 (fromParenthesis!0 (head!394 xs!372))) (extraClose!104 (foldRight1!37 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696))) lt!1467)))))

(declare-fun bs!1816 () Bool)

(assert (= bs!1816 d!6197))

(declare-fun m!10761 () Bool)

(assert (=> bs!1816 m!10761))

(assert (=> bs!1814 d!6197))

(declare-fun d!6199 () Bool)

(declare-fun c!2747 () Bool)

(assert (=> d!6199 (= c!2747 (and (is-Cons!177 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))) (is-Nil!178 (tail!407 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))))))))

(declare-fun e!4524 () Balance!127)

(assert (=> d!6199 (= (foldRight1!37 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696) e!4524)))

(declare-fun b!7912 () Bool)

(assert (=> b!7912 (= e!4524 (head!395 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))))))

(declare-fun b!7913 () Bool)

(assert (=> b!7913 (= e!4524 (dynLambda!181 lambda!1696 (head!395 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))) (foldRight1!37 (tail!407 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))) lambda!1696)))))

(assert (= (and d!6199 c!2747) b!7912))

(assert (= (and d!6199 (not c!2747)) b!7913))

(declare-fun b_lambda!3873 () Bool)

(assert (=> (not b_lambda!3873) (not b!7913)))

(declare-fun m!10763 () Bool)

(assert (=> b!7913 m!10763))

(assert (=> b!7913 m!10763))

(declare-fun m!10765 () Bool)

(assert (=> b!7913 m!10765))

(assert (=> bs!1814 d!6199))

(declare-fun d!6201 () Bool)

(declare-fun c!2748 () Bool)

(assert (=> d!6201 (= c!2748 (is-Nil!178 (map!158 (tail!406 xs!372) lambda!1695)))))

(declare-fun e!4525 () List!180)

(assert (=> d!6201 (= (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) e!4525)))

(declare-fun b!7914 () Bool)

(assert (=> b!7914 (= e!4525 (Cons!177 (Balance!128 0 0) Nil!178))))

(declare-fun b!7915 () Bool)

(assert (=> b!7915 (= e!4525 (Cons!177 (head!395 (map!158 (tail!406 xs!372) lambda!1695)) (append!70 (tail!407 (map!158 (tail!406 xs!372) lambda!1695)) (Cons!177 (Balance!128 0 0) Nil!178))))))

(assert (= (and d!6201 c!2748) b!7914))

(assert (= (and d!6201 (not c!2748)) b!7915))

(declare-fun m!10767 () Bool)

(assert (=> b!7915 m!10767))

(assert (=> bs!1814 d!6201))

(declare-fun d!6203 () Bool)

(declare-fun c!2749 () Bool)

(assert (=> d!6203 (= c!2749 (is-Nil!177 (tail!406 xs!372)))))

(declare-fun e!4526 () List!180)

(assert (=> d!6203 (= (map!158 (tail!406 xs!372) lambda!1695) e!4526)))

(declare-fun b!7916 () Bool)

(assert (=> b!7916 (= e!4526 Nil!178)))

(declare-fun b!7917 () Bool)

(assert (=> b!7917 (= e!4526 (Cons!177 (dynLambda!182 lambda!1695 (head!394 (tail!406 xs!372))) (map!158 (tail!406 (tail!406 xs!372)) lambda!1695)))))

(assert (= (and d!6203 c!2749) b!7916))

(assert (= (and d!6203 (not c!2749)) b!7917))

(declare-fun b_lambda!3875 () Bool)

(assert (=> (not b_lambda!3875) (not b!7917)))

(declare-fun m!10769 () Bool)

(assert (=> b!7917 m!10769))

(declare-fun m!10771 () Bool)

(assert (=> b!7917 m!10771))

(assert (=> bs!1814 d!6203))

(assert (=> bs!1811 d!6197))

(assert (=> bs!1811 d!6199))

(assert (=> bs!1811 d!6201))

(assert (=> bs!1811 d!6203))

(declare-fun d!6205 () Bool)

(assert (=> d!6205 (= (fromParenthesis!0 (head!394 xs!372)) (ite (is-OpenParenthesis!47 (head!394 xs!372)) (Balance!128 1 0) (Balance!128 0 1)))))

(assert (=> b!7881 d!6205))

(declare-fun lt!1468 () Int)

(declare-fun d!6207 () Bool)

(assert (=> d!6207 (= lt!1468 (min!4 (extraOpen!104 (fromParenthesis!0 (head!394 xs!372))) (extraClose!104 (foldRight1!37 (map!158 (tail!406 xs!372) lambda!1695) lambda!1696))))))

(assert (=> d!6207 (= (++!3 (fromParenthesis!0 (head!394 xs!372)) (foldRight1!37 (map!158 (tail!406 xs!372) lambda!1695) lambda!1696)) (Balance!128 (- (+ (extraOpen!104 (fromParenthesis!0 (head!394 xs!372))) (extraOpen!104 (foldRight1!37 (map!158 (tail!406 xs!372) lambda!1695) lambda!1696))) lt!1468) (- (+ (extraClose!104 (fromParenthesis!0 (head!394 xs!372))) (extraClose!104 (foldRight1!37 (map!158 (tail!406 xs!372) lambda!1695) lambda!1696))) lt!1468)))))

(declare-fun bs!1817 () Bool)

(assert (= bs!1817 d!6207))

(declare-fun m!10773 () Bool)

(assert (=> bs!1817 m!10773))

(assert (=> bs!1815 d!6207))

(declare-fun d!6209 () Bool)

(declare-fun c!2750 () Bool)

(assert (=> d!6209 (= c!2750 (and (is-Cons!177 (map!158 (tail!406 xs!372) lambda!1695)) (is-Nil!178 (tail!407 (map!158 (tail!406 xs!372) lambda!1695)))))))

(declare-fun e!4527 () Balance!127)

(assert (=> d!6209 (= (foldRight1!37 (map!158 (tail!406 xs!372) lambda!1695) lambda!1696) e!4527)))

(declare-fun b!7918 () Bool)

(assert (=> b!7918 (= e!4527 (head!395 (map!158 (tail!406 xs!372) lambda!1695)))))

(declare-fun b!7919 () Bool)

(assert (=> b!7919 (= e!4527 (dynLambda!181 lambda!1696 (head!395 (map!158 (tail!406 xs!372) lambda!1695)) (foldRight1!37 (tail!407 (map!158 (tail!406 xs!372) lambda!1695)) lambda!1696)))))

(assert (= (and d!6209 c!2750) b!7918))

(assert (= (and d!6209 (not c!2750)) b!7919))

(declare-fun b_lambda!3877 () Bool)

(assert (=> (not b_lambda!3877) (not b!7919)))

(declare-fun m!10775 () Bool)

(assert (=> b!7919 m!10775))

(assert (=> b!7919 m!10775))

(declare-fun m!10777 () Bool)

(assert (=> b!7919 m!10777))

(assert (=> bs!1815 d!6209))

(assert (=> bs!1815 d!6203))

(assert (=> bs!1812 d!6207))

(assert (=> bs!1812 d!6209))

(assert (=> bs!1812 d!6203))

(declare-fun d!6211 () Bool)

(assert (=> d!6211 (= (isEmpty!149 xs!372) (is-Nil!177 xs!372))))

(assert (=> start!1514 d!6211))

(declare-fun d!6213 () Bool)

(declare-fun res!2363 () Bool)

(declare-fun e!4530 () Bool)

(assert (=> d!6213 (=> (not res!2363) (not e!4530))))

(assert (=> d!6213 (= res!2363 (= (dynLambda!180 (x!4328 thiss!1146)) (dynLambda!180 (y!485 thiss!1146))))))

(assert (=> d!6213 (= (inv!280 thiss!1146) e!4530)))

(declare-fun b!7922 () Bool)

(assert (=> b!7922 (= e!4530 (dynLambda!179 (evidence!118 thiss!1146)))))

(assert (= (and d!6213 res!2363) b!7922))

(declare-fun b_lambda!3879 () Bool)

(assert (=> (not b_lambda!3879) (not d!6213)))

(declare-fun t!1755 () Bool)

(declare-fun tb!1415 () Bool)

(assert (=> (and b!7886 (= (x!4328 thiss!1146) (x!4328 thiss!1146)) t!1755) tb!1415))

(declare-fun result!1455 () Bool)

(assert (=> tb!1415 (= result!1455 true)))

(assert (=> d!6213 t!1755))

(declare-fun b_and!2599 () Bool)

(assert (= b_and!2587 (and (=> t!1755 result!1455) b_and!2599)))

(declare-fun t!1757 () Bool)

(declare-fun tb!1417 () Bool)

(assert (=> (and b!7886 (= (y!485 thiss!1146) (x!4328 thiss!1146)) t!1757) tb!1417))

(declare-fun result!1457 () Bool)

(assert (=> tb!1417 (= result!1457 true)))

(assert (=> d!6213 t!1757))

(declare-fun b_and!2601 () Bool)

(assert (= b_and!2589 (and (=> t!1757 result!1457) b_and!2601)))

(declare-fun t!1759 () Bool)

(declare-fun tb!1419 () Bool)

(assert (=> (and b!7880 (= (x!4328 that!322) (x!4328 thiss!1146)) t!1759) tb!1419))

(declare-fun result!1459 () Bool)

(assert (=> tb!1419 (= result!1459 true)))

(assert (=> d!6213 t!1759))

(declare-fun b_and!2603 () Bool)

(assert (= b_and!2591 (and (=> t!1759 result!1459) b_and!2603)))

(declare-fun tb!1421 () Bool)

(declare-fun t!1761 () Bool)

(assert (=> (and b!7880 (= (y!485 that!322) (x!4328 thiss!1146)) t!1761) tb!1421))

(declare-fun result!1461 () Bool)

(assert (=> tb!1421 (= result!1461 true)))

(assert (=> d!6213 t!1761))

(declare-fun b_and!2605 () Bool)

(assert (= b_and!2593 (and (=> t!1761 result!1461) b_and!2605)))

(declare-fun b_lambda!3881 () Bool)

(assert (=> (not b_lambda!3881) (not d!6213)))

(assert (=> d!6213 t!1735))

(declare-fun b_and!2607 () Bool)

(assert (= b_and!2599 (and (=> t!1735 result!1435) b_and!2607)))

(assert (=> d!6213 t!1737))

(declare-fun b_and!2609 () Bool)

(assert (= b_and!2601 (and (=> t!1737 result!1437) b_and!2609)))

(assert (=> d!6213 t!1739))

(declare-fun b_and!2611 () Bool)

(assert (= b_and!2603 (and (=> t!1739 result!1439) b_and!2611)))

(assert (=> d!6213 t!1741))

(declare-fun b_and!2613 () Bool)

(assert (= b_and!2605 (and (=> t!1741 result!1441) b_and!2613)))

(declare-fun b_lambda!3883 () Bool)

(assert (=> (not b_lambda!3883) (not b!7922)))

(assert (=> b!7922 t!1751))

(declare-fun b_and!2615 () Bool)

(assert (= b_and!2595 (and (=> t!1751 result!1451) b_and!2615)))

(assert (=> b!7922 t!1753))

(declare-fun b_and!2617 () Bool)

(assert (= b_and!2597 (and (=> t!1753 result!1453) b_and!2617)))

(declare-fun m!10779 () Bool)

(assert (=> d!6213 m!10779))

(assert (=> d!6213 m!10721))

(assert (=> b!7922 m!10725))

(assert (=> start!1514 d!6213))

(declare-fun d!6215 () Bool)

(declare-fun res!2364 () Bool)

(declare-fun e!4531 () Bool)

(assert (=> d!6215 (=> (not res!2364) (not e!4531))))

(assert (=> d!6215 (= res!2364 (= (dynLambda!180 (x!4328 that!322)) (dynLambda!180 (y!485 that!322))))))

(assert (=> d!6215 (= (inv!280 that!322) e!4531)))

(declare-fun b!7923 () Bool)

(assert (=> b!7923 (= e!4531 (dynLambda!179 (evidence!118 that!322)))))

(assert (= (and d!6215 res!2364) b!7923))

(declare-fun b_lambda!3885 () Bool)

(assert (=> (not b_lambda!3885) (not d!6215)))

(assert (=> d!6215 t!1743))

(declare-fun b_and!2619 () Bool)

(assert (= b_and!2607 (and (=> t!1743 result!1443) b_and!2619)))

(assert (=> d!6215 t!1745))

(declare-fun b_and!2621 () Bool)

(assert (= b_and!2609 (and (=> t!1745 result!1445) b_and!2621)))

(assert (=> d!6215 t!1747))

(declare-fun b_and!2623 () Bool)

(assert (= b_and!2611 (and (=> t!1747 result!1447) b_and!2623)))

(assert (=> d!6215 t!1749))

(declare-fun b_and!2625 () Bool)

(assert (= b_and!2613 (and (=> t!1749 result!1449) b_and!2625)))

(declare-fun b_lambda!3887 () Bool)

(assert (=> (not b_lambda!3887) (not d!6215)))

(declare-fun t!1763 () Bool)

(declare-fun tb!1423 () Bool)

(assert (=> (and b!7886 (= (x!4328 thiss!1146) (y!485 that!322)) t!1763) tb!1423))

(declare-fun result!1463 () Bool)

(assert (=> tb!1423 (= result!1463 true)))

(assert (=> d!6215 t!1763))

(declare-fun b_and!2627 () Bool)

(assert (= b_and!2619 (and (=> t!1763 result!1463) b_and!2627)))

(declare-fun tb!1425 () Bool)

(declare-fun t!1765 () Bool)

(assert (=> (and b!7886 (= (y!485 thiss!1146) (y!485 that!322)) t!1765) tb!1425))

(declare-fun result!1465 () Bool)

(assert (=> tb!1425 (= result!1465 true)))

(assert (=> d!6215 t!1765))

(declare-fun b_and!2629 () Bool)

(assert (= b_and!2621 (and (=> t!1765 result!1465) b_and!2629)))

(declare-fun t!1767 () Bool)

(declare-fun tb!1427 () Bool)

(assert (=> (and b!7880 (= (x!4328 that!322) (y!485 that!322)) t!1767) tb!1427))

(declare-fun result!1467 () Bool)

(assert (=> tb!1427 (= result!1467 true)))

(assert (=> d!6215 t!1767))

(declare-fun b_and!2631 () Bool)

(assert (= b_and!2623 (and (=> t!1767 result!1467) b_and!2631)))

(declare-fun t!1769 () Bool)

(declare-fun tb!1429 () Bool)

(assert (=> (and b!7880 (= (y!485 that!322) (y!485 that!322)) t!1769) tb!1429))

(declare-fun result!1469 () Bool)

(assert (=> tb!1429 (= result!1469 true)))

(assert (=> d!6215 t!1769))

(declare-fun b_and!2633 () Bool)

(assert (= b_and!2625 (and (=> t!1769 result!1469) b_and!2633)))

(declare-fun b_lambda!3889 () Bool)

(assert (=> (not b_lambda!3889) (not b!7923)))

(declare-fun tb!1431 () Bool)

(declare-fun t!1771 () Bool)

(assert (=> (and b!7886 (= (evidence!118 thiss!1146) (evidence!118 that!322)) t!1771) tb!1431))

(declare-fun result!1471 () Bool)

(assert (=> tb!1431 (= result!1471 true)))

(assert (=> b!7923 t!1771))

(declare-fun b_and!2635 () Bool)

(assert (= b_and!2615 (and (=> t!1771 result!1471) b_and!2635)))

(declare-fun t!1773 () Bool)

(declare-fun tb!1433 () Bool)

(assert (=> (and b!7880 (= (evidence!118 that!322) (evidence!118 that!322)) t!1773) tb!1433))

(declare-fun result!1473 () Bool)

(assert (=> tb!1433 (= result!1473 true)))

(assert (=> b!7923 t!1773))

(declare-fun b_and!2637 () Bool)

(assert (= b_and!2617 (and (=> t!1773 result!1473) b_and!2637)))

(assert (=> d!6215 m!10723))

(declare-fun m!10781 () Bool)

(assert (=> d!6215 m!10781))

(declare-fun m!10783 () Bool)

(assert (=> b!7923 m!10783))

(assert (=> start!1514 d!6215))

(declare-fun bs!1818 () Bool)

(declare-fun d!6217 () Bool)

(assert (= bs!1818 (and d!6217 b!7887)))

(declare-fun lambda!1726 () Int)

(assert (=> bs!1818 (= lambda!1726 lambda!1695)))

(declare-fun lambda!1727 () Int)

(assert (=> bs!1818 (= lambda!1727 lambda!1696)))

(declare-fun b!7944 () Bool)

(declare-fun e!4543 () Balance!127)

(declare-fun e!4546 () List!180)

(declare-fun e!4545 () Int)

(assert (=> b!7944 (= e!4543 (foldRight1!37 e!4546 e!4545))))

(declare-fun c!2765 () Bool)

(declare-fun lt!1477 () Bool)

(assert (=> b!7944 (= c!2765 lt!1477)))

(declare-fun c!2761 () Bool)

(declare-fun lt!1476 () Bool)

(assert (=> b!7944 (= c!2761 (or lt!1476 (not lt!1476)))))

(declare-fun b!7945 () Bool)

(declare-fun e!4544 () Int)

(assert (=> b!7945 (= e!4544 lambda!1726)))

(declare-fun b!7946 () Bool)

(assert (=> b!7946 (= e!4545 lambda!1727)))

(declare-fun b!7947 () Bool)

(declare-fun e!4542 () Bool)

(assert (=> b!7947 (= e!4542 true)))

(declare-fun lt!1475 () Balance!127)

(assert (=> b!7947 (= lt!1475 (foldRight1!37 (map!158 (tail!406 xs!372) lambda!1726) lambda!1727))))

(declare-fun b!7948 () Bool)

(assert (=> b!7948 (= e!4546 (append!70 (map!158 (tail!406 xs!372) e!4544) (Cons!177 (Balance!128 0 0) Nil!178)))))

(declare-fun c!2762 () Bool)

(assert (=> b!7948 (= c!2762 lt!1476)))

(declare-fun because!2 (ProofOps!82 Bool) Bool)

(assert (=> d!6217 (because!2 (ProofOps!83 (= (foldRight1!37 (append!70 (map!158 (tail!406 xs!372) lambda!1726) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1727) (foldRight1!37 (map!158 (tail!406 xs!372) lambda!1726) lambda!1727))) e!4542)))

(declare-fun c!2763 () Bool)

(assert (=> d!6217 (= c!2763 lt!1476)))

(assert (=> d!6217 (= lt!1475 e!4543)))

(declare-fun c!2764 () Bool)

(assert (=> d!6217 (= c!2764 (or lt!1477 (not lt!1476)))))

(assert (=> d!6217 (= lt!1477 lt!1476)))

(assert (=> d!6217 (= lt!1476 (and (is-Cons!176 (tail!406 xs!372)) (is-Nil!177 (tail!406 (tail!406 xs!372)))))))

(assert (=> d!6217 (not (isEmpty!149 (tail!406 xs!372)))))

(assert (=> d!6217 (= (remove_null_balance!0 (tail!406 xs!372)) true)))

(declare-fun b!7949 () Bool)

(assert (=> b!7949 (= e!4545 lambda!1727)))

(declare-fun b!7950 () Bool)

(assert (=> b!7950 (= e!4542 true)))

(assert (=> b!7950 (= lt!1475 (foldRight1!37 (map!158 (tail!406 xs!372) lambda!1726) lambda!1727))))

(declare-fun b!7951 () Bool)

(assert (=> b!7951 (= e!4544 lambda!1726)))

(declare-fun b!7952 () Bool)

(declare-fun res!2385 () Balance!127)

(assert (=> b!7952 (= e!4543 res!2385)))

(assert (=> b!7952 true))

(assert (=> b!7952 true))

(declare-fun b!7953 () Bool)

(declare-fun res!2384 () List!180)

(assert (=> b!7953 (= e!4546 res!2384)))

(assert (=> b!7953 true))

(assert (= (and b!7948 c!2762) b!7951))

(assert (= (and b!7948 (not c!2762)) b!7945))

(assert (= (and b!7944 c!2761) b!7948))

(assert (= (and b!7944 (not c!2761)) b!7953))

(assert (= (and b!7944 c!2765) b!7946))

(assert (= (and b!7944 (not c!2765)) b!7949))

(assert (= (and d!6217 c!2764) b!7944))

(assert (= (and d!6217 (not c!2764)) b!7952))

(assert (= (and d!6217 c!2763) b!7947))

(assert (= (and d!6217 (not c!2763)) b!7950))

(declare-fun m!10785 () Bool)

(assert (=> b!7944 m!10785))

(declare-fun m!10787 () Bool)

(assert (=> d!6217 m!10787))

(declare-fun m!10789 () Bool)

(assert (=> d!6217 m!10789))

(declare-fun m!10791 () Bool)

(assert (=> d!6217 m!10791))

(declare-fun m!10793 () Bool)

(assert (=> d!6217 m!10793))

(declare-fun m!10795 () Bool)

(assert (=> d!6217 m!10795))

(declare-fun m!10797 () Bool)

(assert (=> d!6217 m!10797))

(assert (=> d!6217 m!10791))

(assert (=> d!6217 m!10791))

(assert (=> d!6217 m!10787))

(assert (=> d!6217 m!10791))

(assert (=> b!7950 m!10791))

(assert (=> b!7950 m!10791))

(assert (=> b!7950 m!10793))

(declare-fun m!10799 () Bool)

(assert (=> b!7948 m!10799))

(assert (=> b!7948 m!10799))

(declare-fun m!10801 () Bool)

(assert (=> b!7948 m!10801))

(assert (=> b!7947 m!10791))

(assert (=> b!7947 m!10791))

(assert (=> b!7947 m!10793))

(assert (=> bs!1808 d!6217))

(assert (=> b!7885 d!6205))

(declare-fun d!6219 () Bool)

(assert (=> d!6219 (= trivial!1 true)))

(assert (=> b!7885 d!6219))

(assert (=> bs!1813 d!6189))

(assert (=> bs!1813 d!6195))

(assert (=> bs!1813 d!6191))

(assert (=> bs!1810 d!6189))

(assert (=> bs!1810 d!6195))

(assert (=> bs!1810 d!6191))

(declare-fun b_lambda!3891 () Bool)

(assert (= b_lambda!3873 (or b!7887 b_lambda!3891)))

(declare-fun bs!1819 () Bool)

(declare-fun d!6221 () Bool)

(assert (= bs!1819 (and d!6221 b!7887)))

(assert (=> bs!1819 (= (dynLambda!181 lambda!1696 (head!395 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))) (foldRight1!37 (tail!407 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))) lambda!1696)) (++!3 (head!395 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))) (foldRight1!37 (tail!407 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))) lambda!1696)))))

(assert (=> bs!1819 m!10763))

(declare-fun m!10803 () Bool)

(assert (=> bs!1819 m!10803))

(assert (=> b!7913 d!6221))

(declare-fun b_lambda!3893 () Bool)

(assert (= b_lambda!3881 (or (and b!7885 (= lambda!1700 (y!485 thiss!1146))) (and b!7886 b_free!639) (and b!7881 (= lambda!1698 (y!485 thiss!1146))) (and b!7880 b_free!645 (= (y!485 that!322) (y!485 thiss!1146))) (and b!7886 b_free!637 (= (x!4328 thiss!1146) (y!485 thiss!1146))) (and b!7881 (= lambda!1697 (y!485 thiss!1146))) (and b!7880 b_free!643 (= (x!4328 that!322) (y!485 thiss!1146))) b_lambda!3893)))

(assert (=> (and b!7881 (= lambda!1697 (y!485 thiss!1146)) d!6213) d!6177))

(assert (=> (and b!7881 (= lambda!1698 (y!485 thiss!1146)) d!6213) d!6179))

(assert (=> (and b!7885 (= lambda!1700 (y!485 thiss!1146)) d!6213) d!6181))

(declare-fun b_lambda!3895 () Bool)

(assert (= b_lambda!3869 (or b!7887 b_lambda!3895)))

(declare-fun bs!1820 () Bool)

(declare-fun d!6223 () Bool)

(assert (= bs!1820 (and d!6223 b!7887)))

(assert (=> bs!1820 (= (dynLambda!182 lambda!1695 (head!394 xs!372)) (fromParenthesis!0 (head!394 xs!372)))))

(assert (=> bs!1820 m!10711))

(assert (=> b!7903 d!6223))

(declare-fun b_lambda!3897 () Bool)

(assert (= b_lambda!3879 (or (and b!7881 (= lambda!1698 (x!4328 thiss!1146))) (and b!7880 b_free!643 (= (x!4328 that!322) (x!4328 thiss!1146))) (and b!7880 b_free!645 (= (y!485 that!322) (x!4328 thiss!1146))) (and b!7886 b_free!637) (and b!7885 (= lambda!1700 (x!4328 thiss!1146))) (and b!7886 b_free!639 (= (y!485 thiss!1146) (x!4328 thiss!1146))) (and b!7881 (= lambda!1697 (x!4328 thiss!1146))) b_lambda!3897)))

(declare-fun bs!1821 () Bool)

(declare-fun d!6225 () Bool)

(assert (= bs!1821 (and d!6225 b!7881)))

(assert (=> bs!1821 (= (dynLambda!180 lambda!1697) (foldRight1!37 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696))))

(assert (=> bs!1821 m!10727))

(assert (=> bs!1821 m!10727))

(assert (=> bs!1821 m!10729))

(assert (=> bs!1821 m!10729))

(assert (=> bs!1821 m!10731))

(assert (=> (and b!7881 (= lambda!1697 (x!4328 thiss!1146)) d!6213) d!6225))

(declare-fun bs!1822 () Bool)

(declare-fun d!6227 () Bool)

(assert (= bs!1822 (and d!6227 b!7885)))

(assert (=> bs!1822 (= (dynLambda!180 lambda!1700) (++!3 (fromParenthesis!0 (head!394 xs!372)) (foldRight1!37 (map!158 (tail!406 xs!372) lambda!1695) lambda!1696)))))

(assert (=> bs!1822 m!10737))

(assert (=> bs!1822 m!10737))

(assert (=> bs!1822 m!10745))

(assert (=> bs!1822 m!10745))

(assert (=> bs!1822 m!10747))

(assert (=> (and b!7885 (= lambda!1700 (x!4328 thiss!1146)) d!6213) d!6227))

(declare-fun bs!1823 () Bool)

(declare-fun d!6229 () Bool)

(assert (= bs!1823 (and d!6229 b!7881)))

(assert (=> bs!1823 (= (dynLambda!180 lambda!1698) (++!3 (fromParenthesis!0 (head!394 xs!372)) (foldRight1!37 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696)))))

(assert (=> bs!1823 m!10737))

(assert (=> bs!1823 m!10739))

(assert (=> bs!1823 m!10741))

(assert (=> bs!1823 m!10737))

(assert (=> bs!1823 m!10743))

(assert (=> bs!1823 m!10743))

(assert (=> bs!1823 m!10739))

(assert (=> (and b!7881 (= lambda!1698 (x!4328 thiss!1146)) d!6213) d!6229))

(declare-fun b_lambda!3899 () Bool)

(assert (= b_lambda!3871 (or b!7887 b_lambda!3899)))

(declare-fun bs!1824 () Bool)

(declare-fun d!6231 () Bool)

(assert (= bs!1824 (and d!6231 b!7887)))

(assert (=> bs!1824 (= (dynLambda!181 lambda!1696 (head!395 (map!158 xs!372 lambda!1695)) (foldRight1!37 (tail!407 (map!158 xs!372 lambda!1695)) lambda!1696)) (++!3 (head!395 (map!158 xs!372 lambda!1695)) (foldRight1!37 (tail!407 (map!158 xs!372 lambda!1695)) lambda!1696)))))

(assert (=> bs!1824 m!10755))

(declare-fun m!10805 () Bool)

(assert (=> bs!1824 m!10805))

(assert (=> b!7905 d!6231))

(declare-fun b_lambda!3901 () Bool)

(assert (= b_lambda!3889 (or (and b!7881 (= lambda!1699 (evidence!118 that!322))) (and b!7885 (= lambda!1701 (evidence!118 that!322))) (and b!7886 b_free!641 (= (evidence!118 thiss!1146) (evidence!118 that!322))) (and b!7880 b_free!647) b_lambda!3901)))

(declare-fun bs!1825 () Bool)

(declare-fun d!6233 () Bool)

(assert (= bs!1825 (and d!6233 b!7881)))

(assert (=> bs!1825 (= (dynLambda!179 lambda!1699) (remove_null_balance!0 (tail!406 xs!372)))))

(assert (=> bs!1825 m!10735))

(assert (=> (and b!7881 (= lambda!1699 (evidence!118 that!322)) b!7923) d!6233))

(declare-fun bs!1826 () Bool)

(declare-fun d!6235 () Bool)

(assert (= bs!1826 (and d!6235 b!7885)))

(assert (=> bs!1826 (= (dynLambda!179 lambda!1701) trivial!1)))

(assert (=> (and b!7885 (= lambda!1701 (evidence!118 that!322)) b!7923) d!6235))

(declare-fun b_lambda!3903 () Bool)

(assert (= b_lambda!3887 (or (and b!7885 (= lambda!1700 (y!485 that!322))) (and b!7886 b_free!639 (= (y!485 thiss!1146) (y!485 that!322))) (and b!7886 b_free!637 (= (x!4328 thiss!1146) (y!485 that!322))) (and b!7880 b_free!645) (and b!7881 (= lambda!1697 (y!485 that!322))) (and b!7881 (= lambda!1698 (y!485 that!322))) (and b!7880 b_free!643 (= (x!4328 that!322) (y!485 that!322))) b_lambda!3903)))

(declare-fun bs!1827 () Bool)

(declare-fun d!6237 () Bool)

(assert (= bs!1827 (and d!6237 b!7881)))

(assert (=> bs!1827 (= (dynLambda!180 lambda!1698) (++!3 (fromParenthesis!0 (head!394 xs!372)) (foldRight1!37 (append!70 (map!158 (tail!406 xs!372) lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696)))))

(assert (=> bs!1827 m!10737))

(assert (=> bs!1827 m!10739))

(assert (=> bs!1827 m!10741))

(assert (=> bs!1827 m!10737))

(assert (=> bs!1827 m!10743))

(assert (=> bs!1827 m!10743))

(assert (=> bs!1827 m!10739))

(assert (=> (and b!7881 (= lambda!1698 (y!485 that!322)) d!6215) d!6237))

(declare-fun bs!1828 () Bool)

(declare-fun d!6239 () Bool)

(assert (= bs!1828 (and d!6239 b!7881)))

(assert (=> bs!1828 (= (dynLambda!180 lambda!1697) (foldRight1!37 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178)) lambda!1696))))

(assert (=> bs!1828 m!10727))

(assert (=> bs!1828 m!10727))

(assert (=> bs!1828 m!10729))

(assert (=> bs!1828 m!10729))

(assert (=> bs!1828 m!10731))

(assert (=> (and b!7881 (= lambda!1697 (y!485 that!322)) d!6215) d!6239))

(declare-fun bs!1829 () Bool)

(declare-fun d!6241 () Bool)

(assert (= bs!1829 (and d!6241 b!7885)))

(assert (=> bs!1829 (= (dynLambda!180 lambda!1700) (++!3 (fromParenthesis!0 (head!394 xs!372)) (foldRight1!37 (map!158 (tail!406 xs!372) lambda!1695) lambda!1696)))))

(assert (=> bs!1829 m!10737))

(assert (=> bs!1829 m!10737))

(assert (=> bs!1829 m!10745))

(assert (=> bs!1829 m!10745))

(assert (=> bs!1829 m!10747))

(assert (=> (and b!7885 (= lambda!1700 (y!485 that!322)) d!6215) d!6241))

(declare-fun b_lambda!3905 () Bool)

(assert (= b_lambda!3885 (or (and b!7886 b_free!639 (= (y!485 thiss!1146) (x!4328 that!322))) (and b!7881 (= lambda!1697 (x!4328 that!322))) (and b!7880 b_free!645 (= (y!485 that!322) (x!4328 that!322))) (and b!7880 b_free!643) (and b!7886 b_free!637 (= (x!4328 thiss!1146) (x!4328 that!322))) (and b!7881 (= lambda!1698 (x!4328 that!322))) (and b!7885 (= lambda!1700 (x!4328 that!322))) b_lambda!3905)))

(assert (=> (and b!7881 (= lambda!1697 (x!4328 that!322)) d!6215) d!6183))

(assert (=> (and b!7881 (= lambda!1698 (x!4328 that!322)) d!6215) d!6185))

(assert (=> (and b!7885 (= lambda!1700 (x!4328 that!322)) d!6215) d!6187))

(declare-fun b_lambda!3907 () Bool)

(assert (= b_lambda!3875 (or b!7887 b_lambda!3907)))

(declare-fun bs!1830 () Bool)

(declare-fun d!6243 () Bool)

(assert (= bs!1830 (and d!6243 b!7887)))

(assert (=> bs!1830 (= (dynLambda!182 lambda!1695 (head!394 (tail!406 xs!372))) (fromParenthesis!0 (head!394 (tail!406 xs!372))))))

(declare-fun m!10807 () Bool)

(assert (=> bs!1830 m!10807))

(assert (=> b!7917 d!6243))

(declare-fun b_lambda!3909 () Bool)

(assert (= b_lambda!3883 (or (and b!7881 (= lambda!1699 (evidence!118 thiss!1146))) (and b!7885 (= lambda!1701 (evidence!118 thiss!1146))) (and b!7886 b_free!641) (and b!7880 b_free!647 (= (evidence!118 that!322) (evidence!118 thiss!1146))) b_lambda!3909)))

(assert (=> (and b!7881 (= lambda!1699 (evidence!118 thiss!1146)) b!7922) d!6173))

(assert (=> (and b!7885 (= lambda!1701 (evidence!118 thiss!1146)) b!7922) d!6175))

(declare-fun b_lambda!3911 () Bool)

(assert (= b_lambda!3877 (or b!7887 b_lambda!3911)))

(declare-fun bs!1831 () Bool)

(declare-fun d!6245 () Bool)

(assert (= bs!1831 (and d!6245 b!7887)))

(assert (=> bs!1831 (= (dynLambda!181 lambda!1696 (head!395 (map!158 (tail!406 xs!372) lambda!1695)) (foldRight1!37 (tail!407 (map!158 (tail!406 xs!372) lambda!1695)) lambda!1696)) (++!3 (head!395 (map!158 (tail!406 xs!372) lambda!1695)) (foldRight1!37 (tail!407 (map!158 (tail!406 xs!372) lambda!1695)) lambda!1696)))))

(assert (=> bs!1831 m!10775))

(declare-fun m!10809 () Bool)

(assert (=> bs!1831 m!10809))

(assert (=> b!7919 d!6245))

(declare-fun b_lambda!3913 () Bool)

(assert (= b_lambda!3867 (or b!7887 b_lambda!3913)))

(declare-fun bs!1832 () Bool)

(declare-fun d!6247 () Bool)

(assert (= bs!1832 (and d!6247 b!7887)))

(assert (=> bs!1832 (= (dynLambda!181 lambda!1696 (head!395 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))) (foldRight1!37 (tail!407 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))) lambda!1696)) (++!3 (head!395 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))) (foldRight1!37 (tail!407 (append!70 (map!158 xs!372 lambda!1695) (Cons!177 (Balance!128 0 0) Nil!178))) lambda!1696)))))

(assert (=> bs!1832 m!10749))

(declare-fun m!10811 () Bool)

(assert (=> bs!1832 m!10811))

(assert (=> b!7897 d!6247))

(push 1)

(assert b_and!2627)

(assert (not b!7947))

(assert (not b_lambda!3907))

(assert (not b!7915))

(assert (not b_lambda!3901))

(assert (not bs!1822))

(assert (not bs!1823))

(assert (not b!7944))

(assert (not b!7919))

(assert (not b_next!1373))

(assert (not b_lambda!3893))

(assert (not d!6207))

(assert (not d!6217))

(assert (not b_lambda!3903))

(assert b_and!2631)

(assert b_and!2637)

(assert (not b_lambda!3909))

(assert (not b_lambda!3913))

(assert (not bs!1825))

(assert (not b!7905))

(assert (not b_next!1367))

(assert (not b!7950))

(assert b_and!2635)

(assert (not bs!1828))

(assert (not b_next!1365))

(assert (not b_lambda!3899))

(assert (not b_lambda!3897))

(assert (not b_lambda!3911))

(assert (not bs!1824))

(assert (not bs!1819))

(assert (not b_lambda!3863))

(assert (not b_lambda!3861))

(assert (not bs!1820))

(assert (not b!7897))

(assert (not b_lambda!3895))

(assert b_and!2633)

(assert (not bs!1827))

(assert (not b_next!1371))

(assert (not bs!1829))

(assert (not b_next!1375))

(assert (not b!7911))

(assert (not b_next!1369))

(assert (not b!7948))

(assert (not b_lambda!3905))

(assert (not b!7917))

(assert (not b!7903))

(assert b_and!2629)

(assert (not b!7913))

(assert (not bs!1830))

(assert (not d!6197))

(assert (not b_lambda!3865))

(assert (not bs!1831))

(assert (not bs!1821))

(assert (not b_lambda!3891))

(assert (not bs!1832))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2627)

(assert (not b_next!1373))

(assert b_and!2631)

(assert b_and!2637)

(assert (not b_next!1367))

(assert b_and!2635)

(assert (not b_next!1365))

(assert b_and!2633)

(assert (not b_next!1371))

(assert (not b_next!1375))

(assert (not b_next!1369))

(assert b_and!2629)

(check-sat)

(pop 1)

