; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1536 () Bool)

(assert start!1536)

(declare-fun b!7983 () Bool)

(declare-fun b_free!669 () Bool)

(declare-fun b_next!1397 () Bool)

(assert (=> b!7983 (= b_free!669 (not b_next!1397))))

(declare-fun tp!1138 () Bool)

(declare-fun b_and!2659 () Bool)

(assert (=> b!7983 (= tp!1138 b_and!2659)))

(declare-fun b_free!671 () Bool)

(declare-fun b_next!1399 () Bool)

(assert (=> b!7983 (= b_free!671 (not b_next!1399))))

(declare-fun tp!1135 () Bool)

(declare-fun b_and!2661 () Bool)

(assert (=> b!7983 (= tp!1135 b_and!2661)))

(declare-fun b_free!673 () Bool)

(declare-fun b_next!1401 () Bool)

(assert (=> b!7983 (= b_free!673 (not b_next!1401))))

(declare-fun tp!1137 () Bool)

(declare-fun b_and!2663 () Bool)

(assert (=> b!7983 (= tp!1137 b_and!2663)))

(declare-fun b!7982 () Bool)

(declare-fun b_free!675 () Bool)

(declare-fun b_next!1403 () Bool)

(assert (=> b!7982 (= b_free!675 (not b_next!1403))))

(declare-fun tp!1134 () Bool)

(declare-fun b_and!2665 () Bool)

(assert (=> b!7982 (= tp!1134 b_and!2665)))

(declare-fun b_free!677 () Bool)

(declare-fun b_next!1405 () Bool)

(assert (=> b!7982 (= b_free!677 (not b_next!1405))))

(declare-fun tp!1136 () Bool)

(declare-fun b_and!2667 () Bool)

(assert (=> b!7982 (= tp!1136 b_and!2667)))

(declare-fun b!7986 () Bool)

(assert (=> b!7986 true))

(declare-fun b_next!1407 () Bool)

(declare-datatypes () ((Balance!133 (Balance!134 (extraOpen!107 Int) (extraClose!107 Int)))))

(declare-datatypes () ((EqEvidence!108 (EqEvidence!109 (x!4376 Int) (y!490 Int) (evidence!121 Int)))))

(declare-fun thiss!1145 () EqEvidence!108)

(declare-fun lambda!1764 () Int)

(assert (=> b!7983 (= b_next!1397 (or (and b!7986 (= lambda!1764 (x!4376 thiss!1145))) b_next!1407))))

(declare-fun b_next!1409 () Bool)

(assert (=> b!7983 (= b_next!1399 (or (and b!7986 (= lambda!1764 (y!490 thiss!1145))) b_next!1409))))

(declare-fun b_next!1411 () Bool)

(declare-datatypes () ((EqProof!54 (EqProof!55 (x!4377 Int) (y!491 Int)))))

(declare-fun that!327 () EqProof!54)

(assert (=> b!7982 (= b_next!1403 (or (and b!7986 (= lambda!1764 (x!4377 that!327))) b_next!1411))))

(declare-fun b_next!1413 () Bool)

(assert (=> b!7982 (= b_next!1405 (or (and b!7986 (= lambda!1764 (y!491 that!327))) b_next!1413))))

(declare-fun m!10821 () Bool)

(assert (=> b!7986 m!10821))

(declare-fun lambda!1765 () Int)

(assert (=> b!7986 (not (= lambda!1765 lambda!1764))))

(assert (=> b!7986 true))

(declare-fun b_next!1415 () Bool)

(assert (=> b!7983 (= b_next!1407 (or (and b!7986 (= lambda!1765 (x!4376 thiss!1145))) b_next!1415))))

(declare-fun b_next!1417 () Bool)

(assert (=> b!7983 (= b_next!1409 (or (and b!7986 (= lambda!1765 (y!490 thiss!1145))) b_next!1417))))

(declare-fun b_next!1419 () Bool)

(assert (=> b!7982 (= b_next!1411 (or (and b!7986 (= lambda!1765 (x!4377 that!327))) b_next!1419))))

(declare-fun b_next!1421 () Bool)

(assert (=> b!7982 (= b_next!1413 (or (and b!7986 (= lambda!1765 (y!491 that!327))) b_next!1421))))

(declare-fun m!10823 () Bool)

(assert (=> b!7986 m!10823))

(declare-fun lambda!1766 () Int)

(declare-fun dynLambda!183 (Int) Bool)

(assert (=> (and b!7983 b!7986 (= (dynLambda!183 lambda!1766) (dynLambda!183 (evidence!121 thiss!1145)))) (= lambda!1766 (evidence!121 thiss!1145))))

(declare-fun b_next!1423 () Bool)

(assert (=> b!7983 (= b_next!1401 (or (and b!7986 (= lambda!1766 (evidence!121 thiss!1145))) b_next!1423))))

(declare-fun bs!1836 () Bool)

(declare-fun b!7984 () Bool)

(assert (= bs!1836 (and b!7984 b!7986)))

(declare-fun lambda!1767 () Int)

(assert (=> bs!1836 (not (= lambda!1767 lambda!1764))))

(assert (=> bs!1836 (not (= lambda!1767 lambda!1765))))

(assert (=> b!7984 true))

(declare-fun b_next!1425 () Bool)

(assert (=> b!7983 (= b_next!1415 (or (and b!7984 (= lambda!1767 (x!4376 thiss!1145))) b_next!1425))))

(declare-fun b_next!1427 () Bool)

(assert (=> b!7983 (= b_next!1417 (or (and b!7984 (= lambda!1767 (y!490 thiss!1145))) b_next!1427))))

(declare-fun b_next!1429 () Bool)

(assert (=> b!7982 (= b_next!1419 (or (and b!7984 (= lambda!1767 (x!4377 that!327))) b_next!1429))))

(declare-fun b_next!1431 () Bool)

(assert (=> b!7982 (= b_next!1421 (or (and b!7984 (= lambda!1767 (y!491 that!327))) b_next!1431))))

(declare-fun e!4567 () Bool)

(assert (=> b!7982 (= e!4567 (and tp!1134 tp!1136))))

(declare-fun e!4566 () Bool)

(assert (=> b!7983 (= e!4566 (and tp!1138 tp!1135 tp!1137))))

(declare-fun res!2402 () Bool)

(declare-fun e!4565 () Bool)

(assert (=> b!7984 (=> (not res!2402) (not e!4565))))

(assert (=> b!7984 (= res!2402 (= that!327 (EqProof!55 lambda!1767 lambda!1767)))))

(declare-fun b!7985 () Bool)

(declare-fun dynLambda!184 (Int) Balance!133)

(assert (=> b!7985 (= e!4565 (not (= (dynLambda!184 (y!490 thiss!1145)) (dynLambda!184 (x!4377 that!327)))))))

(declare-fun res!2398 () Bool)

(assert (=> start!1536 (=> (not res!2398) (not e!4565))))

(declare-datatypes () ((Parenthesis!49 (CloseParenthesis!48) (OpenParenthesis!48))))

(declare-datatypes () ((List!181 (Nil!179) (Cons!178 (head!396 Parenthesis!49) (tail!408 List!181)))))

(declare-fun xs!372 () List!181)

(declare-fun isEmpty!150 (List!181) Bool)

(assert (=> start!1536 (= res!2398 (not (isEmpty!150 xs!372)))))

(assert (=> start!1536 e!4565))

(assert (=> start!1536 true))

(declare-fun inv!285 (EqEvidence!108) Bool)

(assert (=> start!1536 (and (inv!285 thiss!1145) e!4566)))

(declare-fun inv!286 (EqProof!54) Bool)

(assert (=> start!1536 (and (inv!286 that!327) e!4567)))

(declare-fun res!2399 () Bool)

(assert (=> b!7986 (=> (not res!2399) (not e!4565))))

(assert (=> b!7986 (= res!2399 (= thiss!1145 (EqEvidence!109 lambda!1764 lambda!1765 lambda!1766)))))

(declare-fun b!7987 () Bool)

(declare-fun res!2400 () Bool)

(assert (=> b!7987 (=> (not res!2400) (not e!4565))))

(declare-fun lambda!1763 () Int)

(declare-fun lambda!1762 () Int)

(declare-datatypes () ((ProofOps!84 (ProofOps!85 (prop!156 Bool)))))

(declare-fun thiss!1106 () ProofOps!84)

(declare-datatypes () ((List!182 (Nil!180) (Cons!179 (head!397 Balance!133) (tail!409 List!182)))))

(declare-fun foldRight1!38 (List!182 Int) Balance!133)

(declare-fun append!71 (List!182 List!182) List!182)

(declare-fun map!159 (List!181 Int) List!182)

(assert (=> b!7987 (= res!2400 (= thiss!1106 (ProofOps!85 (= (foldRight1!38 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180)) lambda!1763) (foldRight1!38 (map!159 xs!372 lambda!1762) lambda!1763)))))))

(declare-fun b!7988 () Bool)

(declare-fun res!2403 () Bool)

(assert (=> b!7988 (=> (not res!2403) (not e!4565))))

(assert (=> b!7988 (= res!2403 (dynLambda!183 (evidence!121 thiss!1145)))))

(declare-fun b!7989 () Bool)

(declare-fun res!2401 () Bool)

(assert (=> b!7989 (=> (not res!2401) (not e!4565))))

(assert (=> b!7989 (= res!2401 (or (not (is-Cons!178 xs!372)) (not (is-Nil!179 (tail!408 xs!372)))))))

(assert (= (and start!1536 res!2398) b!7987))

(assert (= (and b!7987 res!2400) b!7989))

(assert (= (and b!7989 res!2401) b!7986))

(assert (= (and b!7986 res!2399) b!7984))

(assert (= (and b!7984 res!2402) b!7988))

(assert (= (and b!7988 res!2403) b!7985))

(assert (= start!1536 b!7983))

(assert (= start!1536 b!7982))

(declare-fun b_lambda!3915 () Bool)

(assert (=> (not b_lambda!3915) (not b!7985)))

(declare-fun t!1775 () Bool)

(declare-fun tb!1435 () Bool)

(assert (=> (and b!7983 (= (x!4376 thiss!1145) (y!490 thiss!1145)) t!1775) tb!1435))

(declare-fun result!1475 () Bool)

(assert (=> tb!1435 (= result!1475 true)))

(assert (=> b!7985 t!1775))

(declare-fun b_and!2669 () Bool)

(assert (= b_and!2659 (and (=> t!1775 result!1475) b_and!2669)))

(declare-fun t!1777 () Bool)

(declare-fun tb!1437 () Bool)

(assert (=> (and b!7983 (= (y!490 thiss!1145) (y!490 thiss!1145)) t!1777) tb!1437))

(declare-fun result!1477 () Bool)

(assert (=> tb!1437 (= result!1477 true)))

(assert (=> b!7985 t!1777))

(declare-fun b_and!2671 () Bool)

(assert (= b_and!2661 (and (=> t!1777 result!1477) b_and!2671)))

(declare-fun t!1779 () Bool)

(declare-fun tb!1439 () Bool)

(assert (=> (and b!7982 (= (x!4377 that!327) (y!490 thiss!1145)) t!1779) tb!1439))

(declare-fun result!1479 () Bool)

(assert (=> tb!1439 (= result!1479 true)))

(assert (=> b!7985 t!1779))

(declare-fun b_and!2673 () Bool)

(assert (= b_and!2665 (and (=> t!1779 result!1479) b_and!2673)))

(declare-fun tb!1441 () Bool)

(declare-fun t!1781 () Bool)

(assert (=> (and b!7982 (= (y!491 that!327) (y!490 thiss!1145)) t!1781) tb!1441))

(declare-fun result!1481 () Bool)

(assert (=> tb!1441 (= result!1481 true)))

(assert (=> b!7985 t!1781))

(declare-fun b_and!2675 () Bool)

(assert (= b_and!2667 (and (=> t!1781 result!1481) b_and!2675)))

(declare-fun b_lambda!3917 () Bool)

(assert (=> (not b_lambda!3917) (not b!7985)))

(declare-fun tb!1443 () Bool)

(declare-fun t!1783 () Bool)

(assert (=> (and b!7983 (= (x!4376 thiss!1145) (x!4377 that!327)) t!1783) tb!1443))

(declare-fun result!1483 () Bool)

(assert (=> tb!1443 (= result!1483 true)))

(assert (=> b!7985 t!1783))

(declare-fun b_and!2677 () Bool)

(assert (= b_and!2669 (and (=> t!1783 result!1483) b_and!2677)))

(declare-fun t!1785 () Bool)

(declare-fun tb!1445 () Bool)

(assert (=> (and b!7983 (= (y!490 thiss!1145) (x!4377 that!327)) t!1785) tb!1445))

(declare-fun result!1485 () Bool)

(assert (=> tb!1445 (= result!1485 true)))

(assert (=> b!7985 t!1785))

(declare-fun b_and!2679 () Bool)

(assert (= b_and!2671 (and (=> t!1785 result!1485) b_and!2679)))

(declare-fun t!1787 () Bool)

(declare-fun tb!1447 () Bool)

(assert (=> (and b!7982 (= (x!4377 that!327) (x!4377 that!327)) t!1787) tb!1447))

(declare-fun result!1487 () Bool)

(assert (=> tb!1447 (= result!1487 true)))

(assert (=> b!7985 t!1787))

(declare-fun b_and!2681 () Bool)

(assert (= b_and!2673 (and (=> t!1787 result!1487) b_and!2681)))

(declare-fun t!1789 () Bool)

(declare-fun tb!1449 () Bool)

(assert (=> (and b!7982 (= (y!491 that!327) (x!4377 that!327)) t!1789) tb!1449))

(declare-fun result!1489 () Bool)

(assert (=> tb!1449 (= result!1489 true)))

(assert (=> b!7985 t!1789))

(declare-fun b_and!2683 () Bool)

(assert (= b_and!2675 (and (=> t!1789 result!1489) b_and!2683)))

(declare-fun b_lambda!3919 () Bool)

(assert (=> (not b_lambda!3919) (not b!7988)))

(declare-fun t!1791 () Bool)

(declare-fun tb!1451 () Bool)

(assert (=> (and b!7983 (= (evidence!121 thiss!1145) (evidence!121 thiss!1145)) t!1791) tb!1451))

(declare-fun result!1491 () Bool)

(assert (=> tb!1451 (= result!1491 true)))

(assert (=> b!7988 t!1791))

(declare-fun b_and!2685 () Bool)

(assert (= b_and!2663 (and (=> t!1791 result!1491) b_and!2685)))

(declare-fun m!10825 () Bool)

(assert (=> b!7985 m!10825))

(declare-fun m!10827 () Bool)

(assert (=> b!7985 m!10827))

(declare-fun m!10829 () Bool)

(assert (=> start!1536 m!10829))

(declare-fun m!10831 () Bool)

(assert (=> start!1536 m!10831))

(declare-fun m!10833 () Bool)

(assert (=> start!1536 m!10833))

(declare-fun m!10835 () Bool)

(assert (=> b!7987 m!10835))

(declare-fun m!10837 () Bool)

(assert (=> b!7987 m!10837))

(assert (=> b!7987 m!10835))

(assert (=> b!7987 m!10835))

(declare-fun m!10839 () Bool)

(assert (=> b!7987 m!10839))

(assert (=> b!7987 m!10839))

(declare-fun m!10841 () Bool)

(assert (=> b!7987 m!10841))

(assert (=> b!7987 m!10835))

(declare-fun m!10843 () Bool)

(assert (=> b!7988 m!10843))

(push 1)

(assert (not b_lambda!3917))

(assert (not b_next!1423))

(assert b_and!2679)

(assert (not b_next!1431))

(assert (not b_lambda!3919))

(assert b_and!2685)

(assert (not start!1536))

(assert b_and!2677)

(assert (not b_next!1425))

(assert (not b_next!1429))

(assert b_and!2681)

(assert (not b!7987))

(assert b_and!2683)

(assert (not b!7986))

(assert (not b_next!1427))

(assert (not b_lambda!3915))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1423))

(assert b_and!2679)

(assert (not b_next!1431))

(assert b_and!2685)

(assert b_and!2677)

(assert (not b_next!1425))

(assert (not b_next!1429))

(assert b_and!2681)

(assert b_and!2683)

(assert (not b_next!1427))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3921 () Bool)

(assert (= b_lambda!3915 (or (and b!7982 b_free!677 (= (y!491 that!327) (y!490 thiss!1145))) (and b!7983 b_free!669 (= (x!4376 thiss!1145) (y!490 thiss!1145))) (and b!7986 (= lambda!1764 (y!490 thiss!1145))) (and b!7982 b_free!675 (= (x!4377 that!327) (y!490 thiss!1145))) (and b!7984 (= lambda!1767 (y!490 thiss!1145))) (and b!7983 b_free!671) (and b!7986 (= lambda!1765 (y!490 thiss!1145))) b_lambda!3921)))

(declare-fun bs!1837 () Bool)

(declare-fun d!6249 () Bool)

(assert (= bs!1837 (and d!6249 b!7986)))

(declare-fun ++!3 (Balance!133 Balance!133) Balance!133)

(declare-fun fromParenthesis!0 (Parenthesis!49) Balance!133)

(assert (=> bs!1837 (= (dynLambda!184 lambda!1765) (++!3 (fromParenthesis!0 (head!396 xs!372)) (foldRight1!38 (map!159 (tail!408 xs!372) lambda!1762) lambda!1763)))))

(declare-fun m!10845 () Bool)

(assert (=> bs!1837 m!10845))

(assert (=> bs!1837 m!10845))

(declare-fun m!10847 () Bool)

(assert (=> bs!1837 m!10847))

(assert (=> bs!1837 m!10847))

(declare-fun m!10849 () Bool)

(assert (=> bs!1837 m!10849))

(assert (=> (and b!7986 (= lambda!1765 (y!490 thiss!1145)) b!7985) d!6249))

(declare-fun bs!1838 () Bool)

(declare-fun d!6251 () Bool)

(assert (= bs!1838 (and d!6251 b!7986)))

(assert (=> bs!1838 (= (dynLambda!184 lambda!1764) (foldRight1!38 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180)) lambda!1763))))

(assert (=> bs!1838 m!10835))

(assert (=> bs!1838 m!10835))

(assert (=> bs!1838 m!10839))

(assert (=> bs!1838 m!10839))

(assert (=> bs!1838 m!10841))

(assert (=> (and b!7986 (= lambda!1764 (y!490 thiss!1145)) b!7985) d!6251))

(declare-fun bs!1839 () Bool)

(declare-fun d!6253 () Bool)

(assert (= bs!1839 (and d!6253 b!7984)))

(assert (=> bs!1839 (= (dynLambda!184 lambda!1767) (foldRight1!38 (map!159 xs!372 lambda!1762) lambda!1763))))

(assert (=> bs!1839 m!10835))

(assert (=> bs!1839 m!10835))

(assert (=> bs!1839 m!10837))

(assert (=> (and b!7984 (= lambda!1767 (y!490 thiss!1145)) b!7985) d!6253))

(declare-fun b_lambda!3923 () Bool)

(assert (= b_lambda!3919 (or (and b!7986 (= lambda!1766 (evidence!121 thiss!1145))) (and b!7983 b_free!673) b_lambda!3923)))

(declare-fun bs!1840 () Bool)

(declare-fun d!6255 () Bool)

(assert (= bs!1840 (and d!6255 b!7986)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!1840 (= (dynLambda!183 lambda!1766) trivial!1)))

(assert (=> (and b!7986 (= lambda!1766 (evidence!121 thiss!1145)) b!7988) d!6255))

(declare-fun b_lambda!3925 () Bool)

(assert (= b_lambda!3917 (or (and b!7984 (= lambda!1767 (x!4377 that!327))) (and b!7982 b_free!675) (and b!7986 (= lambda!1764 (x!4377 that!327))) (and b!7983 b_free!669 (= (x!4376 thiss!1145) (x!4377 that!327))) (and b!7986 (= lambda!1765 (x!4377 that!327))) (and b!7983 b_free!671 (= (y!490 thiss!1145) (x!4377 that!327))) (and b!7982 b_free!677 (= (y!491 that!327) (x!4377 that!327))) b_lambda!3925)))

(declare-fun bs!1841 () Bool)

(declare-fun d!6257 () Bool)

(assert (= bs!1841 (and d!6257 b!7984)))

(assert (=> bs!1841 (= (dynLambda!184 lambda!1767) (foldRight1!38 (map!159 xs!372 lambda!1762) lambda!1763))))

(assert (=> bs!1841 m!10835))

(assert (=> bs!1841 m!10835))

(assert (=> bs!1841 m!10837))

(assert (=> (and b!7984 (= lambda!1767 (x!4377 that!327)) b!7985) d!6257))

(declare-fun bs!1842 () Bool)

(declare-fun d!6259 () Bool)

(assert (= bs!1842 (and d!6259 b!7986)))

(assert (=> bs!1842 (= (dynLambda!184 lambda!1765) (++!3 (fromParenthesis!0 (head!396 xs!372)) (foldRight1!38 (map!159 (tail!408 xs!372) lambda!1762) lambda!1763)))))

(assert (=> bs!1842 m!10845))

(assert (=> bs!1842 m!10845))

(assert (=> bs!1842 m!10847))

(assert (=> bs!1842 m!10847))

(assert (=> bs!1842 m!10849))

(assert (=> (and b!7986 (= lambda!1765 (x!4377 that!327)) b!7985) d!6259))

(declare-fun bs!1843 () Bool)

(declare-fun d!6261 () Bool)

(assert (= bs!1843 (and d!6261 b!7986)))

(assert (=> bs!1843 (= (dynLambda!184 lambda!1764) (foldRight1!38 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180)) lambda!1763))))

(assert (=> bs!1843 m!10835))

(assert (=> bs!1843 m!10835))

(assert (=> bs!1843 m!10839))

(assert (=> bs!1843 m!10839))

(assert (=> bs!1843 m!10841))

(assert (=> (and b!7986 (= lambda!1764 (x!4377 that!327)) b!7985) d!6261))

(push 1)

(assert (not bs!1839))

(assert (not b_next!1423))

(assert b_and!2679)

(assert (not b_next!1431))

(assert (not b_lambda!3925))

(assert (not b_lambda!3923))

(assert (not bs!1842))

(assert (not bs!1841))

(assert (not bs!1843))

(assert b_and!2685)

(assert (not start!1536))

(assert b_and!2677)

(assert (not b_next!1425))

(assert (not bs!1838))

(assert (not b_next!1429))

(assert (not b_lambda!3921))

(assert b_and!2681)

(assert (not b!7987))

(assert b_and!2683)

(assert (not bs!1837))

(assert (not b!7986))

(assert (not b_next!1427))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1423))

(assert b_and!2679)

(assert (not b_next!1431))

(assert b_and!2685)

(assert b_and!2677)

(assert (not b_next!1425))

(assert (not b_next!1429))

(assert b_and!2681)

(assert b_and!2683)

(assert (not b_next!1427))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6263 () Bool)

(declare-fun c!2768 () Bool)

(assert (=> d!6263 (= c!2768 (and (is-Cons!179 (map!159 xs!372 lambda!1762)) (is-Nil!180 (tail!409 (map!159 xs!372 lambda!1762)))))))

(declare-fun e!4570 () Balance!133)

(assert (=> d!6263 (= (foldRight1!38 (map!159 xs!372 lambda!1762) lambda!1763) e!4570)))

(declare-fun b!7996 () Bool)

(assert (=> b!7996 (= e!4570 (head!397 (map!159 xs!372 lambda!1762)))))

(declare-fun b!7997 () Bool)

(declare-fun dynLambda!185 (Int Balance!133 Balance!133) Balance!133)

(assert (=> b!7997 (= e!4570 (dynLambda!185 lambda!1763 (head!397 (map!159 xs!372 lambda!1762)) (foldRight1!38 (tail!409 (map!159 xs!372 lambda!1762)) lambda!1763)))))

(assert (= (and d!6263 c!2768) b!7996))

(assert (= (and d!6263 (not c!2768)) b!7997))

(declare-fun b_lambda!3927 () Bool)

(assert (=> (not b_lambda!3927) (not b!7997)))

(declare-fun m!10851 () Bool)

(assert (=> b!7997 m!10851))

(assert (=> b!7997 m!10851))

(declare-fun m!10853 () Bool)

(assert (=> b!7997 m!10853))

(assert (=> bs!1839 d!6263))

(declare-fun d!6265 () Bool)

(declare-fun c!2771 () Bool)

(assert (=> d!6265 (= c!2771 (is-Nil!179 xs!372))))

(declare-fun e!4573 () List!182)

(assert (=> d!6265 (= (map!159 xs!372 lambda!1762) e!4573)))

(declare-fun b!8002 () Bool)

(assert (=> b!8002 (= e!4573 Nil!180)))

(declare-fun b!8003 () Bool)

(declare-fun dynLambda!186 (Int Parenthesis!49) Balance!133)

(assert (=> b!8003 (= e!4573 (Cons!179 (dynLambda!186 lambda!1762 (head!396 xs!372)) (map!159 (tail!408 xs!372) lambda!1762)))))

(assert (= (and d!6265 c!2771) b!8002))

(assert (= (and d!6265 (not c!2771)) b!8003))

(declare-fun b_lambda!3929 () Bool)

(assert (=> (not b_lambda!3929) (not b!8003)))

(declare-fun m!10855 () Bool)

(assert (=> b!8003 m!10855))

(assert (=> b!8003 m!10845))

(assert (=> bs!1839 d!6265))

(declare-fun d!6267 () Bool)

(declare-fun c!2772 () Bool)

(assert (=> d!6267 (= c!2772 (and (is-Cons!179 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180))) (is-Nil!180 (tail!409 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180))))))))

(declare-fun e!4574 () Balance!133)

(assert (=> d!6267 (= (foldRight1!38 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180)) lambda!1763) e!4574)))

(declare-fun b!8004 () Bool)

(assert (=> b!8004 (= e!4574 (head!397 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180))))))

(declare-fun b!8005 () Bool)

(assert (=> b!8005 (= e!4574 (dynLambda!185 lambda!1763 (head!397 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180))) (foldRight1!38 (tail!409 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180))) lambda!1763)))))

(assert (= (and d!6267 c!2772) b!8004))

(assert (= (and d!6267 (not c!2772)) b!8005))

(declare-fun b_lambda!3931 () Bool)

(assert (=> (not b_lambda!3931) (not b!8005)))

(declare-fun m!10857 () Bool)

(assert (=> b!8005 m!10857))

(assert (=> b!8005 m!10857))

(declare-fun m!10859 () Bool)

(assert (=> b!8005 m!10859))

(assert (=> bs!1843 d!6267))

(declare-fun d!6269 () Bool)

(declare-fun c!2775 () Bool)

(assert (=> d!6269 (= c!2775 (is-Nil!180 (map!159 xs!372 lambda!1762)))))

(declare-fun e!4577 () List!182)

(assert (=> d!6269 (= (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180)) e!4577)))

(declare-fun b!8010 () Bool)

(assert (=> b!8010 (= e!4577 (Cons!179 (Balance!134 0 0) Nil!180))))

(declare-fun b!8011 () Bool)

(assert (=> b!8011 (= e!4577 (Cons!179 (head!397 (map!159 xs!372 lambda!1762)) (append!71 (tail!409 (map!159 xs!372 lambda!1762)) (Cons!179 (Balance!134 0 0) Nil!180))))))

(assert (= (and d!6269 c!2775) b!8010))

(assert (= (and d!6269 (not c!2775)) b!8011))

(declare-fun m!10861 () Bool)

(assert (=> b!8011 m!10861))

(assert (=> bs!1843 d!6269))

(assert (=> bs!1843 d!6265))

(assert (=> bs!1841 d!6263))

(assert (=> bs!1841 d!6265))

(declare-fun d!6271 () Bool)

(assert (=> d!6271 (= (fromParenthesis!0 (head!396 xs!372)) (ite (is-OpenParenthesis!48 (head!396 xs!372)) (Balance!134 1 0) (Balance!134 0 1)))))

(assert (=> b!7986 d!6271))

(declare-fun d!6273 () Bool)

(assert (=> d!6273 (= trivial!1 true)))

(assert (=> b!7986 d!6273))

(declare-fun d!6275 () Bool)

(declare-fun lt!1480 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!6275 (= lt!1480 (min!4 (extraOpen!107 (fromParenthesis!0 (head!396 xs!372))) (extraClose!107 (foldRight1!38 (map!159 (tail!408 xs!372) lambda!1762) lambda!1763))))))

(assert (=> d!6275 (= (++!3 (fromParenthesis!0 (head!396 xs!372)) (foldRight1!38 (map!159 (tail!408 xs!372) lambda!1762) lambda!1763)) (Balance!134 (- (+ (extraOpen!107 (fromParenthesis!0 (head!396 xs!372))) (extraOpen!107 (foldRight1!38 (map!159 (tail!408 xs!372) lambda!1762) lambda!1763))) lt!1480) (- (+ (extraClose!107 (fromParenthesis!0 (head!396 xs!372))) (extraClose!107 (foldRight1!38 (map!159 (tail!408 xs!372) lambda!1762) lambda!1763))) lt!1480)))))

(declare-fun bs!1844 () Bool)

(assert (= bs!1844 d!6275))

(declare-fun m!10863 () Bool)

(assert (=> bs!1844 m!10863))

(assert (=> bs!1837 d!6275))

(declare-fun d!6277 () Bool)

(declare-fun c!2776 () Bool)

(assert (=> d!6277 (= c!2776 (and (is-Cons!179 (map!159 (tail!408 xs!372) lambda!1762)) (is-Nil!180 (tail!409 (map!159 (tail!408 xs!372) lambda!1762)))))))

(declare-fun e!4578 () Balance!133)

(assert (=> d!6277 (= (foldRight1!38 (map!159 (tail!408 xs!372) lambda!1762) lambda!1763) e!4578)))

(declare-fun b!8012 () Bool)

(assert (=> b!8012 (= e!4578 (head!397 (map!159 (tail!408 xs!372) lambda!1762)))))

(declare-fun b!8013 () Bool)

(assert (=> b!8013 (= e!4578 (dynLambda!185 lambda!1763 (head!397 (map!159 (tail!408 xs!372) lambda!1762)) (foldRight1!38 (tail!409 (map!159 (tail!408 xs!372) lambda!1762)) lambda!1763)))))

(assert (= (and d!6277 c!2776) b!8012))

(assert (= (and d!6277 (not c!2776)) b!8013))

(declare-fun b_lambda!3933 () Bool)

(assert (=> (not b_lambda!3933) (not b!8013)))

(declare-fun m!10865 () Bool)

(assert (=> b!8013 m!10865))

(assert (=> b!8013 m!10865))

(declare-fun m!10867 () Bool)

(assert (=> b!8013 m!10867))

(assert (=> bs!1837 d!6277))

(declare-fun d!6279 () Bool)

(declare-fun c!2777 () Bool)

(assert (=> d!6279 (= c!2777 (is-Nil!179 (tail!408 xs!372)))))

(declare-fun e!4579 () List!182)

(assert (=> d!6279 (= (map!159 (tail!408 xs!372) lambda!1762) e!4579)))

(declare-fun b!8014 () Bool)

(assert (=> b!8014 (= e!4579 Nil!180)))

(declare-fun b!8015 () Bool)

(assert (=> b!8015 (= e!4579 (Cons!179 (dynLambda!186 lambda!1762 (head!396 (tail!408 xs!372))) (map!159 (tail!408 (tail!408 xs!372)) lambda!1762)))))

(assert (= (and d!6279 c!2777) b!8014))

(assert (= (and d!6279 (not c!2777)) b!8015))

(declare-fun b_lambda!3935 () Bool)

(assert (=> (not b_lambda!3935) (not b!8015)))

(declare-fun m!10869 () Bool)

(assert (=> b!8015 m!10869))

(declare-fun m!10871 () Bool)

(assert (=> b!8015 m!10871))

(assert (=> bs!1837 d!6279))

(declare-fun d!6281 () Bool)

(assert (=> d!6281 (= (isEmpty!150 xs!372) (is-Nil!179 xs!372))))

(assert (=> start!1536 d!6281))

(declare-fun d!6283 () Bool)

(declare-fun res!2406 () Bool)

(declare-fun e!4582 () Bool)

(assert (=> d!6283 (=> (not res!2406) (not e!4582))))

(assert (=> d!6283 (= res!2406 (= (dynLambda!184 (x!4376 thiss!1145)) (dynLambda!184 (y!490 thiss!1145))))))

(assert (=> d!6283 (= (inv!285 thiss!1145) e!4582)))

(declare-fun b!8018 () Bool)

(assert (=> b!8018 (= e!4582 (dynLambda!183 (evidence!121 thiss!1145)))))

(assert (= (and d!6283 res!2406) b!8018))

(declare-fun b_lambda!3937 () Bool)

(assert (=> (not b_lambda!3937) (not d!6283)))

(declare-fun t!1793 () Bool)

(declare-fun tb!1453 () Bool)

(assert (=> (and b!7983 (= (x!4376 thiss!1145) (x!4376 thiss!1145)) t!1793) tb!1453))

(declare-fun result!1493 () Bool)

(assert (=> tb!1453 (= result!1493 true)))

(assert (=> d!6283 t!1793))

(declare-fun b_and!2687 () Bool)

(assert (= b_and!2677 (and (=> t!1793 result!1493) b_and!2687)))

(declare-fun t!1795 () Bool)

(declare-fun tb!1455 () Bool)

(assert (=> (and b!7983 (= (y!490 thiss!1145) (x!4376 thiss!1145)) t!1795) tb!1455))

(declare-fun result!1495 () Bool)

(assert (=> tb!1455 (= result!1495 true)))

(assert (=> d!6283 t!1795))

(declare-fun b_and!2689 () Bool)

(assert (= b_and!2679 (and (=> t!1795 result!1495) b_and!2689)))

(declare-fun tb!1457 () Bool)

(declare-fun t!1797 () Bool)

(assert (=> (and b!7982 (= (x!4377 that!327) (x!4376 thiss!1145)) t!1797) tb!1457))

(declare-fun result!1497 () Bool)

(assert (=> tb!1457 (= result!1497 true)))

(assert (=> d!6283 t!1797))

(declare-fun b_and!2691 () Bool)

(assert (= b_and!2681 (and (=> t!1797 result!1497) b_and!2691)))

(declare-fun t!1799 () Bool)

(declare-fun tb!1459 () Bool)

(assert (=> (and b!7982 (= (y!491 that!327) (x!4376 thiss!1145)) t!1799) tb!1459))

(declare-fun result!1499 () Bool)

(assert (=> tb!1459 (= result!1499 true)))

(assert (=> d!6283 t!1799))

(declare-fun b_and!2693 () Bool)

(assert (= b_and!2683 (and (=> t!1799 result!1499) b_and!2693)))

(declare-fun b_lambda!3939 () Bool)

(assert (=> (not b_lambda!3939) (not d!6283)))

(assert (=> d!6283 t!1775))

(declare-fun b_and!2695 () Bool)

(assert (= b_and!2687 (and (=> t!1775 result!1475) b_and!2695)))

(assert (=> d!6283 t!1777))

(declare-fun b_and!2697 () Bool)

(assert (= b_and!2689 (and (=> t!1777 result!1477) b_and!2697)))

(assert (=> d!6283 t!1779))

(declare-fun b_and!2699 () Bool)

(assert (= b_and!2691 (and (=> t!1779 result!1479) b_and!2699)))

(assert (=> d!6283 t!1781))

(declare-fun b_and!2701 () Bool)

(assert (= b_and!2693 (and (=> t!1781 result!1481) b_and!2701)))

(declare-fun b_lambda!3941 () Bool)

(assert (=> (not b_lambda!3941) (not b!8018)))

(assert (=> b!8018 t!1791))

(declare-fun b_and!2703 () Bool)

(assert (= b_and!2685 (and (=> t!1791 result!1491) b_and!2703)))

(declare-fun m!10873 () Bool)

(assert (=> d!6283 m!10873))

(assert (=> d!6283 m!10825))

(assert (=> b!8018 m!10843))

(assert (=> start!1536 d!6283))

(declare-fun d!6285 () Bool)

(assert (=> d!6285 (= (inv!286 that!327) (= (dynLambda!184 (x!4377 that!327)) (dynLambda!184 (y!491 that!327))))))

(declare-fun b_lambda!3943 () Bool)

(assert (=> (not b_lambda!3943) (not d!6285)))

(assert (=> d!6285 t!1783))

(declare-fun b_and!2705 () Bool)

(assert (= b_and!2695 (and (=> t!1783 result!1483) b_and!2705)))

(assert (=> d!6285 t!1785))

(declare-fun b_and!2707 () Bool)

(assert (= b_and!2697 (and (=> t!1785 result!1485) b_and!2707)))

(assert (=> d!6285 t!1787))

(declare-fun b_and!2709 () Bool)

(assert (= b_and!2699 (and (=> t!1787 result!1487) b_and!2709)))

(assert (=> d!6285 t!1789))

(declare-fun b_and!2711 () Bool)

(assert (= b_and!2701 (and (=> t!1789 result!1489) b_and!2711)))

(declare-fun b_lambda!3945 () Bool)

(assert (=> (not b_lambda!3945) (not d!6285)))

(declare-fun t!1801 () Bool)

(declare-fun tb!1461 () Bool)

(assert (=> (and b!7983 (= (x!4376 thiss!1145) (y!491 that!327)) t!1801) tb!1461))

(declare-fun result!1501 () Bool)

(assert (=> tb!1461 (= result!1501 true)))

(assert (=> d!6285 t!1801))

(declare-fun b_and!2713 () Bool)

(assert (= b_and!2705 (and (=> t!1801 result!1501) b_and!2713)))

(declare-fun tb!1463 () Bool)

(declare-fun t!1803 () Bool)

(assert (=> (and b!7983 (= (y!490 thiss!1145) (y!491 that!327)) t!1803) tb!1463))

(declare-fun result!1503 () Bool)

(assert (=> tb!1463 (= result!1503 true)))

(assert (=> d!6285 t!1803))

(declare-fun b_and!2715 () Bool)

(assert (= b_and!2707 (and (=> t!1803 result!1503) b_and!2715)))

(declare-fun t!1805 () Bool)

(declare-fun tb!1465 () Bool)

(assert (=> (and b!7982 (= (x!4377 that!327) (y!491 that!327)) t!1805) tb!1465))

(declare-fun result!1505 () Bool)

(assert (=> tb!1465 (= result!1505 true)))

(assert (=> d!6285 t!1805))

(declare-fun b_and!2717 () Bool)

(assert (= b_and!2709 (and (=> t!1805 result!1505) b_and!2717)))

(declare-fun t!1807 () Bool)

(declare-fun tb!1467 () Bool)

(assert (=> (and b!7982 (= (y!491 that!327) (y!491 that!327)) t!1807) tb!1467))

(declare-fun result!1507 () Bool)

(assert (=> tb!1467 (= result!1507 true)))

(assert (=> d!6285 t!1807))

(declare-fun b_and!2719 () Bool)

(assert (= b_and!2711 (and (=> t!1807 result!1507) b_and!2719)))

(assert (=> d!6285 m!10827))

(declare-fun m!10875 () Bool)

(assert (=> d!6285 m!10875))

(assert (=> start!1536 d!6285))

(assert (=> bs!1842 d!6275))

(assert (=> bs!1842 d!6277))

(assert (=> bs!1842 d!6279))

(assert (=> bs!1838 d!6267))

(assert (=> bs!1838 d!6269))

(assert (=> bs!1838 d!6265))

(assert (=> b!7987 d!6265))

(assert (=> b!7987 d!6263))

(assert (=> b!7987 d!6269))

(assert (=> b!7987 d!6267))

(declare-fun b_lambda!3947 () Bool)

(assert (= b_lambda!3929 (or b!7987 b_lambda!3947)))

(declare-fun bs!1845 () Bool)

(declare-fun d!6287 () Bool)

(assert (= bs!1845 (and d!6287 b!7987)))

(assert (=> bs!1845 (= (dynLambda!186 lambda!1762 (head!396 xs!372)) (fromParenthesis!0 (head!396 xs!372)))))

(assert (=> bs!1845 m!10821))

(assert (=> b!8003 d!6287))

(declare-fun b_lambda!3949 () Bool)

(assert (= b_lambda!3927 (or b!7987 b_lambda!3949)))

(declare-fun bs!1846 () Bool)

(declare-fun d!6289 () Bool)

(assert (= bs!1846 (and d!6289 b!7987)))

(assert (=> bs!1846 (= (dynLambda!185 lambda!1763 (head!397 (map!159 xs!372 lambda!1762)) (foldRight1!38 (tail!409 (map!159 xs!372 lambda!1762)) lambda!1763)) (++!3 (head!397 (map!159 xs!372 lambda!1762)) (foldRight1!38 (tail!409 (map!159 xs!372 lambda!1762)) lambda!1763)))))

(assert (=> bs!1846 m!10851))

(declare-fun m!10877 () Bool)

(assert (=> bs!1846 m!10877))

(assert (=> b!7997 d!6289))

(declare-fun b_lambda!3951 () Bool)

(assert (= b_lambda!3937 (or (and b!7982 b_free!677 (= (y!491 that!327) (x!4376 thiss!1145))) (and b!7983 b_free!669) (and b!7982 b_free!675 (= (x!4377 that!327) (x!4376 thiss!1145))) (and b!7983 b_free!671 (= (y!490 thiss!1145) (x!4376 thiss!1145))) (and b!7984 (= lambda!1767 (x!4376 thiss!1145))) (and b!7986 (= lambda!1765 (x!4376 thiss!1145))) (and b!7986 (= lambda!1764 (x!4376 thiss!1145))) b_lambda!3951)))

(declare-fun bs!1847 () Bool)

(declare-fun d!6291 () Bool)

(assert (= bs!1847 (and d!6291 b!7986)))

(assert (=> bs!1847 (= (dynLambda!184 lambda!1764) (foldRight1!38 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180)) lambda!1763))))

(assert (=> bs!1847 m!10835))

(assert (=> bs!1847 m!10835))

(assert (=> bs!1847 m!10839))

(assert (=> bs!1847 m!10839))

(assert (=> bs!1847 m!10841))

(assert (=> (and b!7986 (= lambda!1764 (x!4376 thiss!1145)) d!6283) d!6291))

(declare-fun bs!1848 () Bool)

(declare-fun d!6293 () Bool)

(assert (= bs!1848 (and d!6293 b!7984)))

(assert (=> bs!1848 (= (dynLambda!184 lambda!1767) (foldRight1!38 (map!159 xs!372 lambda!1762) lambda!1763))))

(assert (=> bs!1848 m!10835))

(assert (=> bs!1848 m!10835))

(assert (=> bs!1848 m!10837))

(assert (=> (and b!7984 (= lambda!1767 (x!4376 thiss!1145)) d!6283) d!6293))

(declare-fun bs!1849 () Bool)

(declare-fun d!6295 () Bool)

(assert (= bs!1849 (and d!6295 b!7986)))

(assert (=> bs!1849 (= (dynLambda!184 lambda!1765) (++!3 (fromParenthesis!0 (head!396 xs!372)) (foldRight1!38 (map!159 (tail!408 xs!372) lambda!1762) lambda!1763)))))

(assert (=> bs!1849 m!10845))

(assert (=> bs!1849 m!10845))

(assert (=> bs!1849 m!10847))

(assert (=> bs!1849 m!10847))

(assert (=> bs!1849 m!10849))

(assert (=> (and b!7986 (= lambda!1765 (x!4376 thiss!1145)) d!6283) d!6295))

(declare-fun b_lambda!3953 () Bool)

(assert (= b_lambda!3941 (or (and b!7986 (= lambda!1766 (evidence!121 thiss!1145))) (and b!7983 b_free!673) b_lambda!3953)))

(assert (=> (and b!7986 (= lambda!1766 (evidence!121 thiss!1145)) b!8018) d!6255))

(declare-fun b_lambda!3955 () Bool)

(assert (= b_lambda!3931 (or b!7987 b_lambda!3955)))

(declare-fun bs!1850 () Bool)

(declare-fun d!6297 () Bool)

(assert (= bs!1850 (and d!6297 b!7987)))

(assert (=> bs!1850 (= (dynLambda!185 lambda!1763 (head!397 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180))) (foldRight1!38 (tail!409 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180))) lambda!1763)) (++!3 (head!397 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180))) (foldRight1!38 (tail!409 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180))) lambda!1763)))))

(assert (=> bs!1850 m!10857))

(declare-fun m!10879 () Bool)

(assert (=> bs!1850 m!10879))

(assert (=> b!8005 d!6297))

(declare-fun b_lambda!3957 () Bool)

(assert (= b_lambda!3945 (or (and b!7984 (= lambda!1767 (y!491 that!327))) (and b!7983 b_free!671 (= (y!490 thiss!1145) (y!491 that!327))) (and b!7983 b_free!669 (= (x!4376 thiss!1145) (y!491 that!327))) (and b!7982 b_free!675 (= (x!4377 that!327) (y!491 that!327))) (and b!7986 (= lambda!1764 (y!491 that!327))) (and b!7986 (= lambda!1765 (y!491 that!327))) (and b!7982 b_free!677) b_lambda!3957)))

(declare-fun bs!1851 () Bool)

(declare-fun d!6299 () Bool)

(assert (= bs!1851 (and d!6299 b!7984)))

(assert (=> bs!1851 (= (dynLambda!184 lambda!1767) (foldRight1!38 (map!159 xs!372 lambda!1762) lambda!1763))))

(assert (=> bs!1851 m!10835))

(assert (=> bs!1851 m!10835))

(assert (=> bs!1851 m!10837))

(assert (=> (and b!7984 (= lambda!1767 (y!491 that!327)) d!6285) d!6299))

(declare-fun bs!1852 () Bool)

(declare-fun d!6301 () Bool)

(assert (= bs!1852 (and d!6301 b!7986)))

(assert (=> bs!1852 (= (dynLambda!184 lambda!1765) (++!3 (fromParenthesis!0 (head!396 xs!372)) (foldRight1!38 (map!159 (tail!408 xs!372) lambda!1762) lambda!1763)))))

(assert (=> bs!1852 m!10845))

(assert (=> bs!1852 m!10845))

(assert (=> bs!1852 m!10847))

(assert (=> bs!1852 m!10847))

(assert (=> bs!1852 m!10849))

(assert (=> (and b!7986 (= lambda!1765 (y!491 that!327)) d!6285) d!6301))

(declare-fun bs!1853 () Bool)

(declare-fun d!6303 () Bool)

(assert (= bs!1853 (and d!6303 b!7986)))

(assert (=> bs!1853 (= (dynLambda!184 lambda!1764) (foldRight1!38 (append!71 (map!159 xs!372 lambda!1762) (Cons!179 (Balance!134 0 0) Nil!180)) lambda!1763))))

(assert (=> bs!1853 m!10835))

(assert (=> bs!1853 m!10835))

(assert (=> bs!1853 m!10839))

(assert (=> bs!1853 m!10839))

(assert (=> bs!1853 m!10841))

(assert (=> (and b!7986 (= lambda!1764 (y!491 that!327)) d!6285) d!6303))

(declare-fun b_lambda!3959 () Bool)

(assert (= b_lambda!3939 (or (and b!7982 b_free!677 (= (y!491 that!327) (y!490 thiss!1145))) (and b!7983 b_free!669 (= (x!4376 thiss!1145) (y!490 thiss!1145))) (and b!7986 (= lambda!1764 (y!490 thiss!1145))) (and b!7982 b_free!675 (= (x!4377 that!327) (y!490 thiss!1145))) (and b!7984 (= lambda!1767 (y!490 thiss!1145))) (and b!7983 b_free!671) (and b!7986 (= lambda!1765 (y!490 thiss!1145))) b_lambda!3959)))

(assert (=> (and b!7986 (= lambda!1765 (y!490 thiss!1145)) d!6283) d!6249))

(assert (=> (and b!7986 (= lambda!1764 (y!490 thiss!1145)) d!6283) d!6251))

(assert (=> (and b!7984 (= lambda!1767 (y!490 thiss!1145)) d!6283) d!6253))

(declare-fun b_lambda!3961 () Bool)

(assert (= b_lambda!3943 (or (and b!7984 (= lambda!1767 (x!4377 that!327))) (and b!7982 b_free!675) (and b!7986 (= lambda!1764 (x!4377 that!327))) (and b!7983 b_free!669 (= (x!4376 thiss!1145) (x!4377 that!327))) (and b!7986 (= lambda!1765 (x!4377 that!327))) (and b!7983 b_free!671 (= (y!490 thiss!1145) (x!4377 that!327))) (and b!7982 b_free!677 (= (y!491 that!327) (x!4377 that!327))) b_lambda!3961)))

(assert (=> (and b!7984 (= lambda!1767 (x!4377 that!327)) d!6285) d!6257))

(assert (=> (and b!7986 (= lambda!1765 (x!4377 that!327)) d!6285) d!6259))

(assert (=> (and b!7986 (= lambda!1764 (x!4377 that!327)) d!6285) d!6261))

(declare-fun b_lambda!3963 () Bool)

(assert (= b_lambda!3935 (or b!7987 b_lambda!3963)))

(declare-fun bs!1854 () Bool)

(declare-fun d!6305 () Bool)

(assert (= bs!1854 (and d!6305 b!7987)))

(assert (=> bs!1854 (= (dynLambda!186 lambda!1762 (head!396 (tail!408 xs!372))) (fromParenthesis!0 (head!396 (tail!408 xs!372))))))

(declare-fun m!10881 () Bool)

(assert (=> bs!1854 m!10881))

(assert (=> b!8015 d!6305))

(declare-fun b_lambda!3965 () Bool)

(assert (= b_lambda!3933 (or b!7987 b_lambda!3965)))

(declare-fun bs!1855 () Bool)

(declare-fun d!6307 () Bool)

(assert (= bs!1855 (and d!6307 b!7987)))

(assert (=> bs!1855 (= (dynLambda!185 lambda!1763 (head!397 (map!159 (tail!408 xs!372) lambda!1762)) (foldRight1!38 (tail!409 (map!159 (tail!408 xs!372) lambda!1762)) lambda!1763)) (++!3 (head!397 (map!159 (tail!408 xs!372) lambda!1762)) (foldRight1!38 (tail!409 (map!159 (tail!408 xs!372) lambda!1762)) lambda!1763)))))

(assert (=> bs!1855 m!10865))

(declare-fun m!10883 () Bool)

(assert (=> bs!1855 m!10883))

(assert (=> b!8013 d!6307))

(push 1)

(assert (not b_next!1423))

(assert (not b!7997))

(assert (not b_next!1431))

(assert (not b!8005))

(assert b_and!2719)

(assert (not bs!1845))

(assert (not bs!1848))

(assert (not bs!1847))

(assert (not b!8015))

(assert (not b_lambda!3953))

(assert (not b_lambda!3925))

(assert (not b_lambda!3963))

(assert (not b_lambda!3955))

(assert (not bs!1849))

(assert (not b_lambda!3923))

(assert (not b_lambda!3951))

(assert b_and!2715)

(assert (not b_lambda!3961))

(assert b_and!2703)

(assert (not d!6275))

(assert (not b_lambda!3959))

(assert (not b!8013))

(assert (not bs!1852))

(assert (not bs!1851))

(assert (not b_next!1425))

(assert (not b_next!1429))

(assert (not bs!1853))

(assert (not b_lambda!3921))

(assert (not b_lambda!3965))

(assert (not bs!1855))

(assert (not b!8003))

(assert (not b!8011))

(assert (not b_lambda!3949))

(assert (not bs!1850))

(assert b_and!2713)

(assert (not bs!1854))

(assert (not b_lambda!3947))

(assert b_and!2717)

(assert (not b_lambda!3957))

(assert (not bs!1846))

(assert (not b_next!1427))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1423))

(assert (not b_next!1431))

(assert b_and!2719)

(assert b_and!2715)

(assert b_and!2703)

(assert (not b_next!1425))

(assert (not b_next!1429))

(assert b_and!2713)

(assert b_and!2717)

(assert (not b_next!1427))

(check-sat)

(pop 1)

