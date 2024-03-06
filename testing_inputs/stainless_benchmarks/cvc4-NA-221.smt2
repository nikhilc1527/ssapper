; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1704 () Bool)

(assert start!1704)

(declare-fun b_free!773 () Bool)

(declare-fun b_next!1745 () Bool)

(assert (=> start!1704 (= b_free!773 (not b_next!1745))))

(declare-fun tp!1298 () Bool)

(declare-fun b_and!3041 () Bool)

(assert (=> start!1704 (= tp!1298 b_and!3041)))

(declare-fun b_free!775 () Bool)

(declare-fun b_next!1747 () Bool)

(assert (=> start!1704 (= b_free!775 (not b_next!1747))))

(declare-fun tp!1300 () Bool)

(declare-fun b_and!3043 () Bool)

(assert (=> start!1704 (= tp!1300 b_and!3043)))

(declare-fun b!8606 () Bool)

(declare-fun b_free!777 () Bool)

(declare-fun b_next!1749 () Bool)

(assert (=> b!8606 (= b_free!777 (not b_next!1749))))

(declare-fun tp!1297 () Bool)

(declare-fun b_and!3045 () Bool)

(assert (=> b!8606 (= tp!1297 b_and!3045)))

(declare-fun b_free!779 () Bool)

(declare-fun b_next!1751 () Bool)

(assert (=> b!8606 (= b_free!779 (not b_next!1751))))

(declare-fun tp!1295 () Bool)

(declare-fun b_and!3047 () Bool)

(assert (=> b!8606 (= tp!1295 b_and!3047)))

(declare-fun b!8605 () Bool)

(declare-fun b_free!781 () Bool)

(declare-fun b_next!1753 () Bool)

(assert (=> b!8605 (= b_free!781 (not b_next!1753))))

(declare-fun tp!1299 () Bool)

(declare-fun b_and!3049 () Bool)

(assert (=> b!8605 (= tp!1299 b_and!3049)))

(declare-fun b_free!783 () Bool)

(declare-fun b_next!1755 () Bool)

(assert (=> b!8605 (= b_free!783 (not b_next!1755))))

(declare-fun tp!1296 () Bool)

(declare-fun b_and!3051 () Bool)

(assert (=> b!8605 (= tp!1296 b_and!3051)))

(declare-fun b_free!785 () Bool)

(declare-fun b_next!1757 () Bool)

(assert (=> b!8605 (= b_free!785 (not b_next!1757))))

(declare-fun tp!1294 () Bool)

(declare-fun b_and!3053 () Bool)

(assert (=> b!8605 (= tp!1294 b_and!3053)))

(declare-fun lambda!1987 () Int)

(declare-fun f!585 () Int)

(declare-fun b_next!1759 () Bool)

(assert (=> start!1704 (= b_next!1745 (or (and start!1704 (= lambda!1987 f!585)) b_next!1759))))

(declare-fun b!8602 () Bool)

(assert (=> b!8602 true))

(declare-fun order!93 () Int)

(declare-fun lambda!1988 () Int)

(declare-fun order!95 () Int)

(declare-fun dynLambda!236 (Int Int) Int)

(declare-fun dynLambda!237 (Int Int) Int)

(assert (=> b!8602 (< (dynLambda!236 order!93 f!585) (dynLambda!237 order!95 lambda!1988))))

(assert (=> b!8602 true))

(declare-fun b_next!1761 () Bool)

(declare-datatypes () ((Balance!161 (Balance!162 (extraOpen!121 Int) (extraClose!121 Int)))))

(declare-datatypes () ((EqProof!60 (EqProof!61 (x!4695 Int) (y!520 Int)))))

(declare-fun thiss!843 () EqProof!60)

(assert (=> b!8606 (= b_next!1749 (or (and b!8602 (= lambda!1988 (x!4695 thiss!843))) b_next!1761))))

(declare-fun b_next!1763 () Bool)

(assert (=> b!8606 (= b_next!1751 (or (and b!8602 (= lambda!1988 (y!520 thiss!843))) b_next!1763))))

(declare-datatypes () ((EqEvidence!126 (EqEvidence!127 (x!4696 Int) (y!521 Int) (evidence!130 Int)))))

(declare-fun thiss!839 () EqEvidence!126)

(declare-fun b_next!1765 () Bool)

(assert (=> b!8605 (= b_next!1753 (or (and b!8602 (= lambda!1988 (x!4696 thiss!839))) b_next!1765))))

(declare-fun b_next!1767 () Bool)

(assert (=> b!8605 (= b_next!1755 (or (and b!8602 (= lambda!1988 (y!521 thiss!839))) b_next!1767))))

(declare-fun m!11485 () Bool)

(assert (=> b!8602 m!11485))

(declare-fun lambda!1989 () Int)

(declare-fun proof!233 () Int)

(declare-fun dynLambda!238 (Int) Bool)

(assert (=> (and start!1704 b!8602 (= (dynLambda!238 lambda!1989) (dynLambda!238 proof!233))) (= lambda!1989 proof!233)))

(assert (=> (and b!8605 b!8602 (= (dynLambda!238 lambda!1989) (dynLambda!238 (evidence!130 thiss!839)))) (= lambda!1989 (evidence!130 thiss!839))))

(declare-fun b_next!1769 () Bool)

(assert (=> start!1704 (= b_next!1747 (or (and b!8602 (= lambda!1989 proof!233)) b_next!1769))))

(declare-fun b_next!1771 () Bool)

(assert (=> b!8605 (= b_next!1757 (or (and b!8602 (= lambda!1989 (evidence!130 thiss!839))) b_next!1771))))

(declare-fun bs!2015 () Bool)

(declare-fun b!8603 () Bool)

(assert (= bs!2015 (and b!8603 b!8602)))

(declare-fun lambda!1990 () Int)

(assert (=> bs!2015 (not (= lambda!1990 lambda!1988))))

(assert (=> b!8603 true))

(declare-fun dynLambda!239 (Int) Balance!161)

(assert (=> (and b!8606 b!8603 (= (dynLambda!239 lambda!1990) (dynLambda!239 (x!4695 thiss!843)))) (= lambda!1990 (x!4695 thiss!843))))

(assert (=> (and b!8606 b!8603 (= (dynLambda!239 lambda!1990) (dynLambda!239 (y!520 thiss!843)))) (= lambda!1990 (y!520 thiss!843))))

(assert (=> (and b!8605 b!8603 (= (dynLambda!239 lambda!1990) (dynLambda!239 (x!4696 thiss!839)))) (= lambda!1990 (x!4696 thiss!839))))

(assert (=> (and b!8605 b!8603 (= (dynLambda!239 lambda!1990) (dynLambda!239 (y!521 thiss!839)))) (= lambda!1990 (y!521 thiss!839))))

(declare-fun b_next!1773 () Bool)

(assert (=> b!8606 (= b_next!1761 (or (and b!8603 (= lambda!1990 (x!4695 thiss!843))) b_next!1773))))

(declare-fun b_next!1775 () Bool)

(assert (=> b!8606 (= b_next!1763 (or (and b!8603 (= lambda!1990 (y!520 thiss!843))) b_next!1775))))

(declare-fun b_next!1777 () Bool)

(assert (=> b!8605 (= b_next!1765 (or (and b!8603 (= lambda!1990 (x!4696 thiss!839))) b_next!1777))))

(declare-fun b_next!1779 () Bool)

(assert (=> b!8605 (= b_next!1767 (or (and b!8603 (= lambda!1990 (y!521 thiss!839))) b_next!1779))))

(declare-fun res!2661 () Bool)

(declare-fun e!4971 () Bool)

(assert (=> start!1704 (=> (not res!2661) (not e!4971))))

(assert (=> start!1704 (= res!2661 (= f!585 lambda!1987))))

(assert (=> start!1704 e!4971))

(assert (=> start!1704 true))

(assert (=> start!1704 tp!1298))

(assert (=> start!1704 tp!1300))

(declare-fun e!4969 () Bool)

(declare-fun inv!297 (EqProof!60) Bool)

(assert (=> start!1704 (and (inv!297 thiss!843) e!4969)))

(declare-fun e!4970 () Bool)

(declare-fun inv!298 (EqEvidence!126) Bool)

(assert (=> start!1704 (and (inv!298 thiss!839) e!4970)))

(declare-fun b!8599 () Bool)

(declare-fun res!2664 () Bool)

(assert (=> b!8599 (=> (not res!2664) (not e!4971))))

(declare-datatypes () ((Tree!43 (Branch!34 (left!381 Tree!43) (right!384 Tree!43)) (Leaf!116 (value!1285 Balance!161)))))

(declare-fun tree!25 () Tree!43)

(assert (=> b!8599 (= res!2664 (is-Leaf!116 tree!25))))

(declare-fun b!8600 () Bool)

(declare-fun res!2665 () Bool)

(assert (=> b!8600 (=> (not res!2665) (not e!4971))))

(assert (=> b!8600 (= res!2665 (= proof!233 lambda!1989))))

(declare-fun b!8601 () Bool)

(declare-fun res!2663 () Bool)

(assert (=> b!8601 (=> (not res!2663) (not e!4971))))

(declare-datatypes () ((ProofOps!108 (ProofOps!109 (prop!168 Bool)))))

(declare-fun thiss!829 () ProofOps!108)

(declare-fun fold!19 (Tree!43 Int) Balance!161)

(declare-datatypes () ((List!197 (Nil!195) (Cons!194 (head!412 Balance!161) (tail!424 List!197)))))

(declare-fun foldRight1!50 (List!197 Int) Balance!161)

(declare-fun toList!43 (Tree!43) List!197)

(assert (=> b!8601 (= res!2663 (= thiss!829 (ProofOps!109 (= (fold!19 tree!25 f!585) (foldRight1!50 (toList!43 tree!25) f!585)))))))

(declare-fun res!2660 () Bool)

(assert (=> b!8602 (=> (not res!2660) (not e!4971))))

(assert (=> b!8602 (= res!2660 (= thiss!839 (EqEvidence!127 lambda!1988 lambda!1988 lambda!1989)))))

(declare-fun res!2662 () Bool)

(assert (=> b!8603 (=> (not res!2662) (not e!4971))))

(assert (=> b!8603 (= res!2662 (= thiss!843 (EqProof!61 lambda!1990 lambda!1990)))))

(declare-fun b!8604 () Bool)

(assert (=> b!8604 (= e!4971 (not (dynLambda!238 proof!233)))))

(assert (=> b!8605 (= e!4970 (and tp!1299 tp!1296 tp!1294))))

(assert (=> b!8606 (= e!4969 (and tp!1297 tp!1295))))

(assert (= (and start!1704 res!2661) b!8601))

(assert (= (and b!8601 res!2663) b!8599))

(assert (= (and b!8599 res!2664) b!8602))

(assert (= (and b!8602 res!2660) b!8603))

(assert (= (and b!8603 res!2662) b!8600))

(assert (= (and b!8600 res!2665) b!8604))

(assert (= start!1704 b!8606))

(assert (= start!1704 b!8605))

(declare-fun b_lambda!4291 () Bool)

(assert (=> (not b_lambda!4291) (not b!8604)))

(declare-fun t!2007 () Bool)

(declare-fun tb!1667 () Bool)

(assert (=> (and start!1704 (= proof!233 proof!233) t!2007) tb!1667))

(declare-fun result!1707 () Bool)

(assert (=> tb!1667 (= result!1707 true)))

(assert (=> b!8604 t!2007))

(declare-fun b_and!3055 () Bool)

(assert (= b_and!3043 (and (=> t!2007 result!1707) b_and!3055)))

(declare-fun tb!1669 () Bool)

(declare-fun t!2009 () Bool)

(assert (=> (and b!8605 (= (evidence!130 thiss!839) proof!233) t!2009) tb!1669))

(declare-fun result!1709 () Bool)

(assert (=> tb!1669 (= result!1709 true)))

(assert (=> b!8604 t!2009))

(declare-fun b_and!3057 () Bool)

(assert (= b_and!3053 (and (=> t!2009 result!1709) b_and!3057)))

(declare-fun m!11487 () Bool)

(assert (=> start!1704 m!11487))

(declare-fun m!11489 () Bool)

(assert (=> start!1704 m!11489))

(declare-fun m!11491 () Bool)

(assert (=> b!8601 m!11491))

(declare-fun m!11493 () Bool)

(assert (=> b!8601 m!11493))

(assert (=> b!8601 m!11493))

(declare-fun m!11495 () Bool)

(assert (=> b!8601 m!11495))

(declare-fun m!11497 () Bool)

(assert (=> b!8604 m!11497))

(push 1)

(assert (not b_next!1769))

(assert b_and!3047)

(assert (not b_next!1771))

(assert (not b_next!1775))

(assert b_and!3045)

(assert (not b_next!1779))

(assert b_and!3057)

(assert b_and!3055)

(assert (not b_lambda!4291))

(assert b_and!3041)

(assert b_and!3051)

(assert (not b!8601))

(assert (not b_next!1773))

(assert (not b!8602))

(assert (not b_next!1777))

(assert b_and!3049)

(assert (not start!1704))

(assert (not b_next!1759))

(assert (not b!8600))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1769))

(assert b_and!3047)

(assert (not b_next!1771))

(assert (not b_next!1775))

(assert b_and!3045)

(assert (not b_next!1779))

(assert b_and!3057)

(assert b_and!3055)

(assert b_and!3041)

(assert b_and!3051)

(assert (not b_next!1773))

(assert (not b_next!1777))

(assert b_and!3049)

(assert (not b_next!1759))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4293 () Bool)

(assert (= b_lambda!4291 (or (and b!8602 (= lambda!1989 proof!233)) (and start!1704 b_free!775) (and b!8605 b_free!785 (= (evidence!130 thiss!839) proof!233)) b_lambda!4293)))

(declare-fun bs!2016 () Bool)

(declare-fun d!6737 () Bool)

(assert (= bs!2016 (and d!6737 b!8602)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2016 (= (dynLambda!238 lambda!1989) trivial!1)))

(assert (=> (and b!8602 (= lambda!1989 proof!233) b!8604) d!6737))

(push 1)

(assert (not b_next!1769))

(assert b_and!3047)

(assert (not b_next!1771))

(assert (not b_next!1775))

(assert b_and!3045)

(assert (not b_lambda!4293))

(assert (not b_next!1779))

(assert b_and!3057)

(assert b_and!3055)

(assert b_and!3041)

(assert b_and!3051)

(assert (not b!8601))

(assert (not b_next!1773))

(assert (not b!8602))

(assert (not b_next!1777))

(assert b_and!3049)

(assert (not start!1704))

(assert (not b_next!1759))

(assert (not b!8600))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1769))

(assert b_and!3047)

(assert (not b_next!1771))

(assert (not b_next!1775))

(assert b_and!3045)

(assert (not b_next!1779))

(assert b_and!3057)

(assert b_and!3055)

(assert b_and!3041)

(assert b_and!3051)

(assert (not b_next!1773))

(assert (not b_next!1777))

(assert b_and!3049)

(assert (not b_next!1759))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!2017 () Bool)

(declare-fun b!8616 () Bool)

(assert (= bs!2017 (and b!8616 b!8602)))

(declare-fun lambda!1995 () Int)

(assert (=> bs!2017 (= (= (left!381 tree!25) tree!25) (= lambda!1995 lambda!1988))))

(declare-fun bs!2018 () Bool)

(assert (= bs!2018 (and b!8616 b!8603)))

(assert (=> bs!2018 (not (= lambda!1995 lambda!1990))))

(assert (=> b!8616 true))

(assert (=> b!8616 (< (dynLambda!236 order!93 f!585) (dynLambda!237 order!95 lambda!1995))))

(assert (=> b!8616 true))

(declare-fun b_next!1781 () Bool)

(assert (=> b!8606 (= b_next!1773 (or (and b!8616 (= lambda!1995 (x!4695 thiss!843))) b_next!1781))))

(declare-fun b_next!1783 () Bool)

(assert (=> b!8606 (= b_next!1775 (or (and b!8616 (= lambda!1995 (y!520 thiss!843))) b_next!1783))))

(declare-fun b_next!1785 () Bool)

(assert (=> b!8605 (= b_next!1777 (or (and b!8616 (= lambda!1995 (x!4696 thiss!839))) b_next!1785))))

(declare-fun b_next!1787 () Bool)

(assert (=> b!8605 (= b_next!1779 (or (and b!8616 (= lambda!1995 (y!521 thiss!839))) b_next!1787))))

(declare-fun lambda!1996 () Int)

(assert (=> bs!2017 (= (= (right!384 tree!25) tree!25) (= lambda!1996 lambda!1988))))

(assert (=> bs!2018 (not (= lambda!1996 lambda!1990))))

(assert (=> b!8616 (= (= (right!384 tree!25) (left!381 tree!25)) (= lambda!1996 lambda!1995))))

(assert (=> b!8616 true))

(assert (=> b!8616 (< (dynLambda!236 order!93 f!585) (dynLambda!237 order!95 lambda!1996))))

(assert (=> b!8616 true))

(declare-fun b_next!1789 () Bool)

(assert (=> b!8606 (= b_next!1781 (or (and b!8616 (= lambda!1996 (x!4695 thiss!843))) b_next!1789))))

(declare-fun b_next!1791 () Bool)

(assert (=> b!8606 (= b_next!1783 (or (and b!8616 (= lambda!1996 (y!520 thiss!843))) b_next!1791))))

(declare-fun b_next!1793 () Bool)

(assert (=> b!8605 (= b_next!1785 (or (and b!8616 (= lambda!1996 (x!4696 thiss!839))) b_next!1793))))

(declare-fun b_next!1795 () Bool)

(assert (=> b!8605 (= b_next!1787 (or (and b!8616 (= lambda!1996 (y!521 thiss!839))) b_next!1795))))

(declare-fun e!4990 () Balance!161)

(declare-datatypes () ((tuple2!60 (tuple2!61 (_1!30 Balance!161) (_2!30 Balance!161)))))

(declare-fun lt!1559 () tuple2!60)

(declare-fun dynLambda!240 (Int Balance!161 Balance!161) Balance!161)

(assert (=> b!8616 (= e!4990 (dynLambda!240 f!585 (_1!30 lt!1559) (_2!30 lt!1559)))))

(assert (=> b!8616 (= lt!1559 (tuple2!61 (dynLambda!239 lambda!1995) (dynLambda!239 lambda!1996)))))

(declare-fun d!6739 () Bool)

(declare-fun c!2920 () Bool)

(assert (=> d!6739 (= c!2920 (is-Leaf!116 tree!25))))

(assert (=> d!6739 (= (fold!19 tree!25 f!585) e!4990)))

(declare-fun b!8615 () Bool)

(assert (=> b!8615 (= e!4990 (value!1285 tree!25))))

(assert (= (and d!6739 c!2920) b!8615))

(assert (= (and d!6739 (not c!2920)) b!8616))

(declare-fun b_lambda!4295 () Bool)

(assert (=> (not b_lambda!4295) (not b!8616)))

(declare-fun t!2011 () Bool)

(declare-fun tb!1671 () Bool)

(assert (=> (and start!1704 (= f!585 f!585) t!2011) tb!1671))

(declare-fun result!1711 () Bool)

(assert (=> tb!1671 (= result!1711 true)))

(assert (=> b!8616 t!2011))

(declare-fun b_and!3059 () Bool)

(assert (= b_and!3041 (and (=> t!2011 result!1711) b_and!3059)))

(declare-fun b_lambda!4297 () Bool)

(assert (=> (not b_lambda!4297) (not b!8616)))

(declare-fun b_lambda!4299 () Bool)

(assert (=> (not b_lambda!4299) (not b!8616)))

(declare-fun m!11499 () Bool)

(assert (=> b!8616 m!11499))

(declare-fun m!11501 () Bool)

(assert (=> b!8616 m!11501))

(declare-fun m!11503 () Bool)

(assert (=> b!8616 m!11503))

(assert (=> b!8601 d!6739))

(declare-fun d!6741 () Bool)

(declare-fun c!2923 () Bool)

(assert (=> d!6741 (= c!2923 (and (is-Cons!194 (toList!43 tree!25)) (is-Nil!195 (tail!424 (toList!43 tree!25)))))))

(declare-fun e!4993 () Balance!161)

(assert (=> d!6741 (= (foldRight1!50 (toList!43 tree!25) f!585) e!4993)))

(declare-fun b!8621 () Bool)

(assert (=> b!8621 (= e!4993 (head!412 (toList!43 tree!25)))))

(declare-fun b!8622 () Bool)

(assert (=> b!8622 (= e!4993 (dynLambda!240 f!585 (head!412 (toList!43 tree!25)) (foldRight1!50 (tail!424 (toList!43 tree!25)) f!585)))))

(assert (= (and d!6741 c!2923) b!8621))

(assert (= (and d!6741 (not c!2923)) b!8622))

(declare-fun b_lambda!4301 () Bool)

(assert (=> (not b_lambda!4301) (not b!8622)))

(declare-fun t!2013 () Bool)

(declare-fun tb!1673 () Bool)

(assert (=> (and start!1704 (= f!585 f!585) t!2013) tb!1673))

(declare-fun result!1713 () Bool)

(assert (=> tb!1673 (= result!1713 true)))

(assert (=> b!8622 t!2013))

(declare-fun b_and!3061 () Bool)

(assert (= b_and!3059 (and (=> t!2013 result!1713) b_and!3061)))

(declare-fun m!11505 () Bool)

(assert (=> b!8622 m!11505))

(assert (=> b!8622 m!11505))

(declare-fun m!11507 () Bool)

(assert (=> b!8622 m!11507))

(assert (=> b!8601 d!6741))

(declare-fun d!6743 () Bool)

(declare-fun lt!1562 () List!197)

(declare-fun isEmpty!163 (List!197) Bool)

(assert (=> d!6743 (not (isEmpty!163 lt!1562))))

(declare-fun e!4996 () List!197)

(assert (=> d!6743 (= lt!1562 e!4996)))

(declare-fun c!2926 () Bool)

(assert (=> d!6743 (= c!2926 (is-Leaf!116 tree!25))))

(assert (=> d!6743 (= (toList!43 tree!25) lt!1562)))

(declare-fun b!8627 () Bool)

(assert (=> b!8627 (= e!4996 (Cons!194 (value!1285 tree!25) Nil!195))))

(declare-fun b!8628 () Bool)

(declare-fun append!84 (List!197 List!197) List!197)

(assert (=> b!8628 (= e!4996 (append!84 (toList!43 (left!381 tree!25)) (toList!43 (right!384 tree!25))))))

(assert (= (and d!6743 c!2926) b!8627))

(assert (= (and d!6743 (not c!2926)) b!8628))

(declare-fun m!11509 () Bool)

(assert (=> d!6743 m!11509))

(declare-fun m!11511 () Bool)

(assert (=> b!8628 m!11511))

(declare-fun m!11513 () Bool)

(assert (=> b!8628 m!11513))

(assert (=> b!8628 m!11511))

(assert (=> b!8628 m!11513))

(declare-fun m!11515 () Bool)

(assert (=> b!8628 m!11515))

(assert (=> b!8601 d!6743))

(declare-fun d!6745 () Bool)

(assert (=> d!6745 (= (inv!297 thiss!843) (= (dynLambda!239 (x!4695 thiss!843)) (dynLambda!239 (y!520 thiss!843))))))

(declare-fun b_lambda!4303 () Bool)

(assert (=> (not b_lambda!4303) (not d!6745)))

(declare-fun t!2015 () Bool)

(declare-fun tb!1675 () Bool)

(assert (=> (and b!8606 (= (x!4695 thiss!843) (x!4695 thiss!843)) t!2015) tb!1675))

(declare-fun result!1715 () Bool)

(assert (=> tb!1675 (= result!1715 true)))

(assert (=> d!6745 t!2015))

(declare-fun b_and!3063 () Bool)

(assert (= b_and!3045 (and (=> t!2015 result!1715) b_and!3063)))

(declare-fun t!2017 () Bool)

(declare-fun tb!1677 () Bool)

(assert (=> (and b!8606 (= (y!520 thiss!843) (x!4695 thiss!843)) t!2017) tb!1677))

(declare-fun result!1717 () Bool)

(assert (=> tb!1677 (= result!1717 true)))

(assert (=> d!6745 t!2017))

(declare-fun b_and!3065 () Bool)

(assert (= b_and!3047 (and (=> t!2017 result!1717) b_and!3065)))

(declare-fun t!2019 () Bool)

(declare-fun tb!1679 () Bool)

(assert (=> (and b!8605 (= (x!4696 thiss!839) (x!4695 thiss!843)) t!2019) tb!1679))

(declare-fun result!1719 () Bool)

(assert (=> tb!1679 (= result!1719 true)))

(assert (=> d!6745 t!2019))

(declare-fun b_and!3067 () Bool)

(assert (= b_and!3049 (and (=> t!2019 result!1719) b_and!3067)))

(declare-fun tb!1681 () Bool)

(declare-fun t!2021 () Bool)

(assert (=> (and b!8605 (= (y!521 thiss!839) (x!4695 thiss!843)) t!2021) tb!1681))

(declare-fun result!1721 () Bool)

(assert (=> tb!1681 (= result!1721 true)))

(assert (=> d!6745 t!2021))

(declare-fun b_and!3069 () Bool)

(assert (= b_and!3051 (and (=> t!2021 result!1721) b_and!3069)))

(declare-fun b_lambda!4305 () Bool)

(assert (=> (not b_lambda!4305) (not d!6745)))

(declare-fun t!2023 () Bool)

(declare-fun tb!1683 () Bool)

(assert (=> (and b!8606 (= (x!4695 thiss!843) (y!520 thiss!843)) t!2023) tb!1683))

(declare-fun result!1723 () Bool)

(assert (=> tb!1683 (= result!1723 true)))

(assert (=> d!6745 t!2023))

(declare-fun b_and!3071 () Bool)

(assert (= b_and!3063 (and (=> t!2023 result!1723) b_and!3071)))

(declare-fun t!2025 () Bool)

(declare-fun tb!1685 () Bool)

(assert (=> (and b!8606 (= (y!520 thiss!843) (y!520 thiss!843)) t!2025) tb!1685))

(declare-fun result!1725 () Bool)

(assert (=> tb!1685 (= result!1725 true)))

(assert (=> d!6745 t!2025))

(declare-fun b_and!3073 () Bool)

(assert (= b_and!3065 (and (=> t!2025 result!1725) b_and!3073)))

(declare-fun t!2027 () Bool)

(declare-fun tb!1687 () Bool)

(assert (=> (and b!8605 (= (x!4696 thiss!839) (y!520 thiss!843)) t!2027) tb!1687))

(declare-fun result!1727 () Bool)

(assert (=> tb!1687 (= result!1727 true)))

(assert (=> d!6745 t!2027))

(declare-fun b_and!3075 () Bool)

(assert (= b_and!3067 (and (=> t!2027 result!1727) b_and!3075)))

(declare-fun t!2029 () Bool)

(declare-fun tb!1689 () Bool)

(assert (=> (and b!8605 (= (y!521 thiss!839) (y!520 thiss!843)) t!2029) tb!1689))

(declare-fun result!1729 () Bool)

(assert (=> tb!1689 (= result!1729 true)))

(assert (=> d!6745 t!2029))

(declare-fun b_and!3077 () Bool)

(assert (= b_and!3069 (and (=> t!2029 result!1729) b_and!3077)))

(declare-fun m!11517 () Bool)

(assert (=> d!6745 m!11517))

(declare-fun m!11519 () Bool)

(assert (=> d!6745 m!11519))

(assert (=> start!1704 d!6745))

(declare-fun d!6747 () Bool)

(declare-fun res!2669 () Bool)

(declare-fun e!4999 () Bool)

(assert (=> d!6747 (=> (not res!2669) (not e!4999))))

(assert (=> d!6747 (= res!2669 (= (dynLambda!239 (x!4696 thiss!839)) (dynLambda!239 (y!521 thiss!839))))))

(assert (=> d!6747 (= (inv!298 thiss!839) e!4999)))

(declare-fun b!8631 () Bool)

(assert (=> b!8631 (= e!4999 (dynLambda!238 (evidence!130 thiss!839)))))

(assert (= (and d!6747 res!2669) b!8631))

(declare-fun b_lambda!4307 () Bool)

(assert (=> (not b_lambda!4307) (not d!6747)))

(declare-fun tb!1691 () Bool)

(declare-fun t!2031 () Bool)

(assert (=> (and b!8606 (= (x!4695 thiss!843) (x!4696 thiss!839)) t!2031) tb!1691))

(declare-fun result!1731 () Bool)

(assert (=> tb!1691 (= result!1731 true)))

(assert (=> d!6747 t!2031))

(declare-fun b_and!3079 () Bool)

(assert (= b_and!3071 (and (=> t!2031 result!1731) b_and!3079)))

(declare-fun tb!1693 () Bool)

(declare-fun t!2033 () Bool)

(assert (=> (and b!8606 (= (y!520 thiss!843) (x!4696 thiss!839)) t!2033) tb!1693))

(declare-fun result!1733 () Bool)

(assert (=> tb!1693 (= result!1733 true)))

(assert (=> d!6747 t!2033))

(declare-fun b_and!3081 () Bool)

(assert (= b_and!3073 (and (=> t!2033 result!1733) b_and!3081)))

(declare-fun t!2035 () Bool)

(declare-fun tb!1695 () Bool)

(assert (=> (and b!8605 (= (x!4696 thiss!839) (x!4696 thiss!839)) t!2035) tb!1695))

(declare-fun result!1735 () Bool)

(assert (=> tb!1695 (= result!1735 true)))

(assert (=> d!6747 t!2035))

(declare-fun b_and!3083 () Bool)

(assert (= b_and!3075 (and (=> t!2035 result!1735) b_and!3083)))

(declare-fun t!2037 () Bool)

(declare-fun tb!1697 () Bool)

(assert (=> (and b!8605 (= (y!521 thiss!839) (x!4696 thiss!839)) t!2037) tb!1697))

(declare-fun result!1737 () Bool)

(assert (=> tb!1697 (= result!1737 true)))

(assert (=> d!6747 t!2037))

(declare-fun b_and!3085 () Bool)

(assert (= b_and!3077 (and (=> t!2037 result!1737) b_and!3085)))

(declare-fun b_lambda!4309 () Bool)

(assert (=> (not b_lambda!4309) (not d!6747)))

(declare-fun t!2039 () Bool)

(declare-fun tb!1699 () Bool)

(assert (=> (and b!8606 (= (x!4695 thiss!843) (y!521 thiss!839)) t!2039) tb!1699))

(declare-fun result!1739 () Bool)

(assert (=> tb!1699 (= result!1739 true)))

(assert (=> d!6747 t!2039))

(declare-fun b_and!3087 () Bool)

(assert (= b_and!3079 (and (=> t!2039 result!1739) b_and!3087)))

(declare-fun t!2041 () Bool)

(declare-fun tb!1701 () Bool)

(assert (=> (and b!8606 (= (y!520 thiss!843) (y!521 thiss!839)) t!2041) tb!1701))

(declare-fun result!1741 () Bool)

(assert (=> tb!1701 (= result!1741 true)))

(assert (=> d!6747 t!2041))

(declare-fun b_and!3089 () Bool)

(assert (= b_and!3081 (and (=> t!2041 result!1741) b_and!3089)))

(declare-fun t!2043 () Bool)

(declare-fun tb!1703 () Bool)

(assert (=> (and b!8605 (= (x!4696 thiss!839) (y!521 thiss!839)) t!2043) tb!1703))

(declare-fun result!1743 () Bool)

(assert (=> tb!1703 (= result!1743 true)))

(assert (=> d!6747 t!2043))

(declare-fun b_and!3091 () Bool)

(assert (= b_and!3083 (and (=> t!2043 result!1743) b_and!3091)))

(declare-fun t!2045 () Bool)

(declare-fun tb!1705 () Bool)

(assert (=> (and b!8605 (= (y!521 thiss!839) (y!521 thiss!839)) t!2045) tb!1705))

(declare-fun result!1745 () Bool)

(assert (=> tb!1705 (= result!1745 true)))

(assert (=> d!6747 t!2045))

(declare-fun b_and!3093 () Bool)

(assert (= b_and!3085 (and (=> t!2045 result!1745) b_and!3093)))

(declare-fun b_lambda!4311 () Bool)

(assert (=> (not b_lambda!4311) (not b!8631)))

(declare-fun tb!1707 () Bool)

(declare-fun t!2047 () Bool)

(assert (=> (and start!1704 (= proof!233 (evidence!130 thiss!839)) t!2047) tb!1707))

(declare-fun result!1747 () Bool)

(assert (=> tb!1707 (= result!1747 true)))

(assert (=> b!8631 t!2047))

(declare-fun b_and!3095 () Bool)

(assert (= b_and!3055 (and (=> t!2047 result!1747) b_and!3095)))

(declare-fun t!2049 () Bool)

(declare-fun tb!1709 () Bool)

(assert (=> (and b!8605 (= (evidence!130 thiss!839) (evidence!130 thiss!839)) t!2049) tb!1709))

(declare-fun result!1749 () Bool)

(assert (=> tb!1709 (= result!1749 true)))

(assert (=> b!8631 t!2049))

(declare-fun b_and!3097 () Bool)

(assert (= b_and!3057 (and (=> t!2049 result!1749) b_and!3097)))

(declare-fun m!11521 () Bool)

(assert (=> d!6747 m!11521))

(declare-fun m!11523 () Bool)

(assert (=> d!6747 m!11523))

(declare-fun m!11525 () Bool)

(assert (=> b!8631 m!11525))

(assert (=> start!1704 d!6747))

(declare-fun d!6749 () Bool)

(assert (=> d!6749 (= trivial!1 true)))

(assert (=> b!8600 d!6749))

(assert (=> b!8602 d!6749))

(declare-fun b_lambda!4313 () Bool)

(assert (= b_lambda!4307 (or (and b!8616 (= lambda!1995 (x!4696 thiss!839))) (and b!8606 b_free!779 (= (y!520 thiss!843) (x!4696 thiss!839))) (and b!8602 (= lambda!1988 (x!4696 thiss!839))) (and b!8605 b_free!781) (and b!8603 (= lambda!1990 (x!4696 thiss!839))) (and b!8605 b_free!783 (= (y!521 thiss!839) (x!4696 thiss!839))) (and b!8616 (= lambda!1996 (x!4696 thiss!839))) (and b!8606 b_free!777 (= (x!4695 thiss!843) (x!4696 thiss!839))) b_lambda!4313)))

(declare-fun bs!2019 () Bool)

(declare-fun d!6751 () Bool)

(assert (= bs!2019 (and d!6751 b!8616)))

(assert (=> bs!2019 (= (dynLambda!239 lambda!1996) (fold!19 (right!384 tree!25) f!585))))

(declare-fun m!11527 () Bool)

(assert (=> bs!2019 m!11527))

(assert (=> (and b!8616 (= lambda!1996 (x!4696 thiss!839)) d!6747) d!6751))

(declare-fun bs!2020 () Bool)

(declare-fun d!6753 () Bool)

(assert (= bs!2020 (and d!6753 b!8603)))

(assert (=> bs!2020 (= (dynLambda!239 lambda!1990) (value!1285 tree!25))))

(assert (=> (and b!8603 (= lambda!1990 (x!4696 thiss!839)) d!6747) d!6753))

(declare-fun bs!2021 () Bool)

(declare-fun d!6755 () Bool)

(assert (= bs!2021 (and d!6755 b!8616)))

(assert (=> bs!2021 (= (dynLambda!239 lambda!1995) (fold!19 (left!381 tree!25) f!585))))

(declare-fun m!11529 () Bool)

(assert (=> bs!2021 m!11529))

(assert (=> (and b!8616 (= lambda!1995 (x!4696 thiss!839)) d!6747) d!6755))

(declare-fun bs!2022 () Bool)

(declare-fun d!6757 () Bool)

(assert (= bs!2022 (and d!6757 b!8602)))

(assert (=> bs!2022 (= (dynLambda!239 lambda!1988) (fold!19 tree!25 f!585))))

(assert (=> bs!2022 m!11491))

(assert (=> (and b!8602 (= lambda!1988 (x!4696 thiss!839)) d!6747) d!6757))

(declare-fun b_lambda!4315 () Bool)

(assert (= b_lambda!4303 (or (and b!8616 (= lambda!1996 (x!4695 thiss!843))) (and b!8616 (= lambda!1995 (x!4695 thiss!843))) (and b!8605 b_free!781 (= (x!4696 thiss!839) (x!4695 thiss!843))) (and b!8606 b_free!779 (= (y!520 thiss!843) (x!4695 thiss!843))) (and b!8606 b_free!777) (and b!8605 b_free!783 (= (y!521 thiss!839) (x!4695 thiss!843))) (and b!8602 (= lambda!1988 (x!4695 thiss!843))) (and b!8603 (= lambda!1990 (x!4695 thiss!843))) b_lambda!4315)))

(declare-fun bs!2023 () Bool)

(declare-fun d!6759 () Bool)

(assert (= bs!2023 (and d!6759 b!8616)))

(assert (=> bs!2023 (= (dynLambda!239 lambda!1995) (fold!19 (left!381 tree!25) f!585))))

(assert (=> bs!2023 m!11529))

(assert (=> (and b!8616 (= lambda!1995 (x!4695 thiss!843)) d!6745) d!6759))

(declare-fun bs!2024 () Bool)

(declare-fun d!6761 () Bool)

(assert (= bs!2024 (and d!6761 b!8602)))

(assert (=> bs!2024 (= (dynLambda!239 lambda!1988) (fold!19 tree!25 f!585))))

(assert (=> bs!2024 m!11491))

(assert (=> (and b!8602 (= lambda!1988 (x!4695 thiss!843)) d!6745) d!6761))

(declare-fun bs!2025 () Bool)

(declare-fun d!6763 () Bool)

(assert (= bs!2025 (and d!6763 b!8603)))

(assert (=> bs!2025 (= (dynLambda!239 lambda!1990) (value!1285 tree!25))))

(assert (=> (and b!8603 (= lambda!1990 (x!4695 thiss!843)) d!6745) d!6763))

(declare-fun bs!2026 () Bool)

(declare-fun d!6765 () Bool)

(assert (= bs!2026 (and d!6765 b!8616)))

(assert (=> bs!2026 (= (dynLambda!239 lambda!1996) (fold!19 (right!384 tree!25) f!585))))

(assert (=> bs!2026 m!11527))

(assert (=> (and b!8616 (= lambda!1996 (x!4695 thiss!843)) d!6745) d!6765))

(declare-fun b_lambda!4317 () Bool)

(assert (= b_lambda!4301 (or (and start!1704 (= lambda!1987 f!585)) (and start!1704 b_free!773) b_lambda!4317)))

(declare-fun bs!2027 () Bool)

(declare-fun d!6767 () Bool)

(assert (= bs!2027 (and d!6767 start!1704)))

(declare-fun ++!3 (Balance!161 Balance!161) Balance!161)

(assert (=> bs!2027 (= (dynLambda!240 lambda!1987 (head!412 (toList!43 tree!25)) (foldRight1!50 (tail!424 (toList!43 tree!25)) f!585)) (++!3 (head!412 (toList!43 tree!25)) (foldRight1!50 (tail!424 (toList!43 tree!25)) f!585)))))

(assert (=> bs!2027 m!11505))

(declare-fun m!11531 () Bool)

(assert (=> bs!2027 m!11531))

(assert (=> (and start!1704 (= lambda!1987 f!585) b!8622) d!6767))

(declare-fun b_lambda!4319 () Bool)

(assert (= b_lambda!4295 (or (and start!1704 (= lambda!1987 f!585)) (and start!1704 b_free!773) b_lambda!4319)))

(declare-fun bs!2028 () Bool)

(declare-fun d!6769 () Bool)

(assert (= bs!2028 (and d!6769 start!1704)))

(assert (=> bs!2028 (= (dynLambda!240 lambda!1987 (_1!30 lt!1559) (_2!30 lt!1559)) (++!3 (_1!30 lt!1559) (_2!30 lt!1559)))))

(declare-fun m!11533 () Bool)

(assert (=> bs!2028 m!11533))

(assert (=> (and start!1704 (= lambda!1987 f!585) b!8616) d!6769))

(declare-fun b_lambda!4321 () Bool)

(assert (= b_lambda!4299 (or b!8616 b_lambda!4321)))

(declare-fun bs!2029 () Bool)

(declare-fun d!6771 () Bool)

(assert (= bs!2029 (and d!6771 b!8616)))

(assert (=> bs!2029 (= (dynLambda!239 lambda!1996) (fold!19 (right!384 tree!25) f!585))))

(assert (=> bs!2029 m!11527))

(assert (=> b!8616 d!6771))

(declare-fun b_lambda!4323 () Bool)

(assert (= b_lambda!4305 (or (and b!8603 (= lambda!1990 (y!520 thiss!843))) (and b!8606 b_free!779) (and b!8605 b_free!783 (= (y!521 thiss!839) (y!520 thiss!843))) (and b!8616 (= lambda!1996 (y!520 thiss!843))) (and b!8605 b_free!781 (= (x!4696 thiss!839) (y!520 thiss!843))) (and b!8616 (= lambda!1995 (y!520 thiss!843))) (and b!8606 b_free!777 (= (x!4695 thiss!843) (y!520 thiss!843))) (and b!8602 (= lambda!1988 (y!520 thiss!843))) b_lambda!4323)))

(declare-fun bs!2030 () Bool)

(declare-fun d!6773 () Bool)

(assert (= bs!2030 (and d!6773 b!8616)))

(assert (=> bs!2030 (= (dynLambda!239 lambda!1995) (fold!19 (left!381 tree!25) f!585))))

(assert (=> bs!2030 m!11529))

(assert (=> (and b!8616 (= lambda!1995 (y!520 thiss!843)) d!6745) d!6773))

(declare-fun bs!2031 () Bool)

(declare-fun d!6775 () Bool)

(assert (= bs!2031 (and d!6775 b!8602)))

(assert (=> bs!2031 (= (dynLambda!239 lambda!1988) (fold!19 tree!25 f!585))))

(assert (=> bs!2031 m!11491))

(assert (=> (and b!8602 (= lambda!1988 (y!520 thiss!843)) d!6745) d!6775))

(declare-fun bs!2032 () Bool)

(declare-fun d!6777 () Bool)

(assert (= bs!2032 (and d!6777 b!8616)))

(assert (=> bs!2032 (= (dynLambda!239 lambda!1996) (fold!19 (right!384 tree!25) f!585))))

(assert (=> bs!2032 m!11527))

(assert (=> (and b!8616 (= lambda!1996 (y!520 thiss!843)) d!6745) d!6777))

(declare-fun bs!2033 () Bool)

(declare-fun d!6779 () Bool)

(assert (= bs!2033 (and d!6779 b!8603)))

(assert (=> bs!2033 (= (dynLambda!239 lambda!1990) (value!1285 tree!25))))

(assert (=> (and b!8603 (= lambda!1990 (y!520 thiss!843)) d!6745) d!6779))

(declare-fun b_lambda!4325 () Bool)

(assert (= b_lambda!4311 (or (and b!8602 (= lambda!1989 (evidence!130 thiss!839))) (and start!1704 b_free!775 (= proof!233 (evidence!130 thiss!839))) (and b!8605 b_free!785) b_lambda!4325)))

(declare-fun bs!2034 () Bool)

(declare-fun d!6781 () Bool)

(assert (= bs!2034 (and d!6781 b!8602)))

(assert (=> bs!2034 (= (dynLambda!238 lambda!1989) trivial!1)))

(assert (=> (and b!8602 (= lambda!1989 (evidence!130 thiss!839)) b!8631) d!6781))

(declare-fun b_lambda!4327 () Bool)

(assert (= b_lambda!4309 (or (and b!8603 (= lambda!1990 (y!521 thiss!839))) (and b!8605 b_free!781 (= (x!4696 thiss!839) (y!521 thiss!839))) (and b!8602 (= lambda!1988 (y!521 thiss!839))) (and b!8616 (= lambda!1995 (y!521 thiss!839))) (and b!8606 b_free!779 (= (y!520 thiss!843) (y!521 thiss!839))) (and b!8606 b_free!777 (= (x!4695 thiss!843) (y!521 thiss!839))) (and b!8616 (= lambda!1996 (y!521 thiss!839))) (and b!8605 b_free!783) b_lambda!4327)))

(declare-fun bs!2035 () Bool)

(declare-fun d!6783 () Bool)

(assert (= bs!2035 (and d!6783 b!8603)))

(assert (=> bs!2035 (= (dynLambda!239 lambda!1990) (value!1285 tree!25))))

(assert (=> (and b!8603 (= lambda!1990 (y!521 thiss!839)) d!6747) d!6783))

(declare-fun bs!2036 () Bool)

(declare-fun d!6785 () Bool)

(assert (= bs!2036 (and d!6785 b!8616)))

(assert (=> bs!2036 (= (dynLambda!239 lambda!1996) (fold!19 (right!384 tree!25) f!585))))

(assert (=> bs!2036 m!11527))

(assert (=> (and b!8616 (= lambda!1996 (y!521 thiss!839)) d!6747) d!6785))

(declare-fun bs!2037 () Bool)

(declare-fun d!6787 () Bool)

(assert (= bs!2037 (and d!6787 b!8602)))

(assert (=> bs!2037 (= (dynLambda!239 lambda!1988) (fold!19 tree!25 f!585))))

(assert (=> bs!2037 m!11491))

(assert (=> (and b!8602 (= lambda!1988 (y!521 thiss!839)) d!6747) d!6787))

(declare-fun bs!2038 () Bool)

(declare-fun d!6789 () Bool)

(assert (= bs!2038 (and d!6789 b!8616)))

(assert (=> bs!2038 (= (dynLambda!239 lambda!1995) (fold!19 (left!381 tree!25) f!585))))

(assert (=> bs!2038 m!11529))

(assert (=> (and b!8616 (= lambda!1995 (y!521 thiss!839)) d!6747) d!6789))

(declare-fun b_lambda!4329 () Bool)

(assert (= b_lambda!4297 (or b!8616 b_lambda!4329)))

(declare-fun bs!2039 () Bool)

(declare-fun d!6791 () Bool)

(assert (= bs!2039 (and d!6791 b!8616)))

(assert (=> bs!2039 (= (dynLambda!239 lambda!1995) (fold!19 (left!381 tree!25) f!585))))

(assert (=> bs!2039 m!11529))

(assert (=> b!8616 d!6791))

(push 1)

(assert (not bs!2028))

(assert (not b_next!1769))

(assert (not b_lambda!4317))

(assert (not b_next!1789))

(assert (not bs!2029))

(assert (not b_lambda!4323))

(assert (not b_lambda!4315))

(assert (not bs!2027))

(assert (not b_next!1771))

(assert (not b_next!1795))

(assert b_and!3089)

(assert (not b_lambda!4325))

(assert (not b_next!1793))

(assert (not bs!2023))

(assert (not b_lambda!4293))

(assert b_and!3093)

(assert (not b_lambda!4313))

(assert (not b_lambda!4327))

(assert (not bs!2039))

(assert (not b!8622))

(assert (not bs!2022))

(assert (not b!8628))

(assert (not d!6743))

(assert (not bs!2021))

(assert (not bs!2024))

(assert b_and!3095)

(assert (not bs!2026))

(assert (not bs!2019))

(assert (not bs!2031))

(assert b_and!3097)

(assert (not b_lambda!4321))

(assert b_and!3091)

(assert (not bs!2030))

(assert b_and!3061)

(assert b_and!3087)

(assert (not b_lambda!4329))

(assert (not bs!2037))

(assert (not bs!2032))

(assert (not b_next!1759))

(assert (not b_next!1791))

(assert (not bs!2038))

(assert (not bs!2036))

(assert (not b_lambda!4319))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1769))

(assert (not b_next!1789))

(assert (not b_next!1771))

(assert (not b_next!1795))

(assert b_and!3089)

(assert (not b_next!1793))

(assert b_and!3093)

(assert b_and!3095)

(assert b_and!3097)

(assert b_and!3091)

(assert b_and!3061)

(assert b_and!3087)

(assert (not b_next!1759))

(assert (not b_next!1791))

(check-sat)

(pop 1)

