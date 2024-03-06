; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1642 () Bool)

(assert start!1642)

(declare-fun b_free!723 () Bool)

(declare-fun b_next!1569 () Bool)

(assert (=> start!1642 (= b_free!723 (not b_next!1569))))

(declare-fun tp!1217 () Bool)

(declare-fun b_and!2853 () Bool)

(assert (=> start!1642 (= tp!1217 b_and!2853)))

(declare-fun b_free!725 () Bool)

(declare-fun b_next!1571 () Bool)

(assert (=> start!1642 (= b_free!725 (not b_next!1571))))

(declare-fun tp!1215 () Bool)

(declare-fun b_and!2855 () Bool)

(assert (=> start!1642 (= tp!1215 b_and!2855)))

(declare-fun b!8343 () Bool)

(declare-fun b_free!727 () Bool)

(declare-fun b_next!1573 () Bool)

(assert (=> b!8343 (= b_free!727 (not b_next!1573))))

(declare-fun tp!1219 () Bool)

(declare-fun b_and!2857 () Bool)

(assert (=> b!8343 (= tp!1219 b_and!2857)))

(declare-fun b_free!729 () Bool)

(declare-fun b_next!1575 () Bool)

(assert (=> b!8343 (= b_free!729 (not b_next!1575))))

(declare-fun tp!1216 () Bool)

(declare-fun b_and!2859 () Bool)

(assert (=> b!8343 (= tp!1216 b_and!2859)))

(declare-fun b_free!731 () Bool)

(declare-fun b_next!1577 () Bool)

(assert (=> b!8343 (= b_free!731 (not b_next!1577))))

(declare-fun tp!1218 () Bool)

(declare-fun b_and!2861 () Bool)

(assert (=> b!8343 (= tp!1218 b_and!2861)))

(declare-fun b_next!1579 () Bool)

(declare-fun f!585 () Int)

(declare-fun lambda!1887 () Int)

(assert (=> start!1642 (= b_next!1569 (or (and start!1642 (= lambda!1887 f!585)) b_next!1579))))

(declare-fun b_next!1581 () Bool)

(declare-fun f!610 () Int)

(assert (=> start!1642 (= b_next!1571 (or (and start!1642 (= lambda!1887 f!610)) b_next!1581))))

(declare-fun b!8344 () Bool)

(assert (=> b!8344 true))

(declare-fun lambda!1888 () Int)

(declare-fun order!75 () Int)

(declare-fun order!73 () Int)

(declare-fun dynLambda!211 (Int Int) Int)

(declare-fun dynLambda!212 (Int Int) Int)

(assert (=> b!8344 (< (dynLambda!211 order!73 f!585) (dynLambda!212 order!75 lambda!1888))))

(assert (=> b!8344 true))

(declare-datatypes () ((Balance!151 (Balance!152 (extraOpen!116 Int) (extraClose!116 Int)))))

(declare-datatypes () ((EqEvidence!118 (EqEvidence!119 (x!4545 Int) (y!504 Int) (evidence!126 Int)))))

(declare-fun thiss!854 () EqEvidence!118)

(declare-fun b_next!1583 () Bool)

(assert (=> b!8343 (= b_next!1573 (or (and b!8344 (= lambda!1888 (x!4545 thiss!854))) b_next!1583))))

(declare-fun b_next!1585 () Bool)

(assert (=> b!8343 (= b_next!1575 (or (and b!8344 (= lambda!1888 (y!504 thiss!854))) b_next!1585))))

(declare-fun lambda!1889 () Int)

(assert (=> b!8344 (not (= lambda!1889 lambda!1888))))

(assert (=> b!8344 true))

(assert (=> b!8344 (< (dynLambda!211 order!73 f!585) (dynLambda!212 order!75 lambda!1889))))

(assert (=> b!8344 true))

(declare-fun b_next!1587 () Bool)

(assert (=> b!8343 (= b_next!1583 (or (and b!8344 (= lambda!1889 (x!4545 thiss!854))) b_next!1587))))

(declare-fun b_next!1589 () Bool)

(assert (=> b!8343 (= b_next!1585 (or (and b!8344 (= lambda!1889 (y!504 thiss!854))) b_next!1589))))

(assert (=> b!8344 true))

(declare-fun b_next!1591 () Bool)

(declare-fun lambda!1890 () Int)

(assert (=> b!8343 (= b_next!1577 (or (and b!8344 (= lambda!1890 (evidence!126 thiss!854))) b_next!1591))))

(declare-fun b!8342 () Bool)

(declare-fun e!4786 () Bool)

(declare-datatypes () ((List!192 (Nil!190) (Cons!189 (head!407 Balance!151) (tail!419 List!192)))))

(declare-fun thiss!913 () List!192)

(declare-fun isEmpty!158 (List!192) Bool)

(assert (=> b!8342 (= e!4786 (isEmpty!158 thiss!913))))

(declare-fun e!4787 () Bool)

(assert (=> b!8343 (= e!4787 (and tp!1219 tp!1216 tp!1218))))

(declare-fun res!2552 () Bool)

(assert (=> b!8344 (=> (not res!2552) (not e!4786))))

(assert (=> b!8344 (= res!2552 (= thiss!854 (EqEvidence!119 lambda!1888 lambda!1889 lambda!1890)))))

(declare-fun b!8345 () Bool)

(declare-fun res!2551 () Bool)

(assert (=> b!8345 (=> (not res!2551) (not e!4786))))

(assert (=> b!8345 (= res!2551 (= f!610 f!585))))

(declare-fun b!8346 () Bool)

(declare-fun res!2554 () Bool)

(assert (=> b!8346 (=> (not res!2554) (not e!4786))))

(declare-datatypes () ((Tree!38 (Branch!29 (left!361 Tree!38) (right!364 Tree!38)) (Leaf!111 (value!1280 Balance!151)))))

(declare-fun tree!25 () Tree!38)

(assert (=> b!8346 (= res!2554 (not (is-Leaf!111 tree!25)))))

(declare-fun b!8347 () Bool)

(declare-fun res!2550 () Bool)

(assert (=> b!8347 (=> (not res!2550) (not e!4786))))

(declare-datatypes () ((ProofOps!98 (ProofOps!99 (prop!163 Bool)))))

(declare-fun thiss!829 () ProofOps!98)

(declare-fun fold!14 (Tree!38 Int) Balance!151)

(declare-fun foldRight1!45 (List!192 Int) Balance!151)

(declare-fun toList!38 (Tree!38) List!192)

(assert (=> b!8347 (= res!2550 (= thiss!829 (ProofOps!99 (= (fold!14 tree!25 f!585) (foldRight1!45 (toList!38 tree!25) f!585)))))))

(declare-fun res!2555 () Bool)

(assert (=> start!1642 (=> (not res!2555) (not e!4786))))

(assert (=> start!1642 (= res!2555 (= f!585 lambda!1887))))

(assert (=> start!1642 e!4786))

(assert (=> start!1642 true))

(assert (=> start!1642 tp!1217))

(declare-fun inv!291 (EqEvidence!118) Bool)

(assert (=> start!1642 (and (inv!291 thiss!854) e!4787)))

(assert (=> start!1642 tp!1215))

(declare-fun b!8348 () Bool)

(declare-fun res!2553 () Bool)

(assert (=> b!8348 (=> (not res!2553) (not e!4786))))

(assert (=> b!8348 (= res!2553 (= thiss!913 (toList!38 (right!364 tree!25))))))

(assert (= (and start!1642 res!2555) b!8347))

(assert (= (and b!8347 res!2550) b!8346))

(assert (= (and b!8346 res!2554) b!8344))

(assert (= (and b!8344 res!2552) b!8348))

(assert (= (and b!8348 res!2553) b!8345))

(assert (= (and b!8345 res!2551) b!8342))

(assert (= start!1642 b!8343))

(declare-fun m!11197 () Bool)

(assert (=> b!8342 m!11197))

(declare-fun m!11199 () Bool)

(assert (=> b!8347 m!11199))

(declare-fun m!11201 () Bool)

(assert (=> b!8347 m!11201))

(assert (=> b!8347 m!11201))

(declare-fun m!11203 () Bool)

(assert (=> b!8347 m!11203))

(declare-fun m!11205 () Bool)

(assert (=> start!1642 m!11205))

(declare-fun m!11207 () Bool)

(assert (=> b!8348 m!11207))

(push 1)

(assert (not b_next!1587))

(assert (not b_next!1581))

(assert (not b_next!1589))

(assert (not b_next!1579))

(assert (not b!8342))

(assert b_and!2859)

(assert (not b!8348))

(assert b_and!2861)

(assert b_and!2857)

(assert (not b!8347))

(assert b_and!2855)

(assert b_and!2853)

(assert (not start!1642))

(assert (not b_next!1591))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1587))

(assert (not b_next!1581))

(assert (not b_next!1589))

(assert (not b_next!1579))

(assert b_and!2859)

(assert b_and!2861)

(assert b_and!2857)

(assert b_and!2855)

(assert b_and!2853)

(assert (not b_next!1591))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1928 () Bool)

(declare-fun b!8360 () Bool)

(assert (= bs!1928 (and b!8360 b!8344)))

(declare-fun lambda!1895 () Int)

(assert (=> bs!1928 (= (= (left!361 tree!25) tree!25) (= lambda!1895 lambda!1888))))

(assert (=> bs!1928 (not (= lambda!1895 lambda!1889))))

(assert (=> b!8360 true))

(assert (=> b!8360 (< (dynLambda!211 order!73 f!585) (dynLambda!212 order!75 lambda!1895))))

(assert (=> b!8360 true))

(declare-fun b_next!1593 () Bool)

(assert (=> b!8343 (= b_next!1587 (or (and b!8360 (= lambda!1895 (x!4545 thiss!854))) b_next!1593))))

(declare-fun b_next!1595 () Bool)

(assert (=> b!8343 (= b_next!1589 (or (and b!8360 (= lambda!1895 (y!504 thiss!854))) b_next!1595))))

(declare-fun lambda!1896 () Int)

(assert (=> bs!1928 (= (= (right!364 tree!25) tree!25) (= lambda!1896 lambda!1888))))

(assert (=> bs!1928 (not (= lambda!1896 lambda!1889))))

(assert (=> b!8360 (= (= (right!364 tree!25) (left!361 tree!25)) (= lambda!1896 lambda!1895))))

(assert (=> b!8360 true))

(assert (=> b!8360 (< (dynLambda!211 order!73 f!585) (dynLambda!212 order!75 lambda!1896))))

(assert (=> b!8360 true))

(declare-fun b_next!1597 () Bool)

(assert (=> b!8343 (= b_next!1593 (or (and b!8360 (= lambda!1896 (x!4545 thiss!854))) b_next!1597))))

(declare-fun b_next!1599 () Bool)

(assert (=> b!8343 (= b_next!1595 (or (and b!8360 (= lambda!1896 (y!504 thiss!854))) b_next!1599))))

(declare-fun e!4806 () Balance!151)

(declare-datatypes () ((tuple2!50 (tuple2!51 (_1!25 Balance!151) (_2!25 Balance!151)))))

(declare-fun lt!1524 () tuple2!50)

(declare-fun dynLambda!213 (Int Balance!151 Balance!151) Balance!151)

(assert (=> b!8360 (= e!4806 (dynLambda!213 f!585 (_1!25 lt!1524) (_2!25 lt!1524)))))

(declare-fun dynLambda!214 (Int) Balance!151)

(assert (=> b!8360 (= lt!1524 (tuple2!51 (dynLambda!214 lambda!1895) (dynLambda!214 lambda!1896)))))

(declare-fun d!6519 () Bool)

(declare-fun c!2867 () Bool)

(assert (=> d!6519 (= c!2867 (is-Leaf!111 tree!25))))

(assert (=> d!6519 (= (fold!14 tree!25 f!585) e!4806)))

(declare-fun b!8359 () Bool)

(assert (=> b!8359 (= e!4806 (value!1280 tree!25))))

(assert (= (and d!6519 c!2867) b!8359))

(assert (= (and d!6519 (not c!2867)) b!8360))

(declare-fun b_lambda!4119 () Bool)

(assert (=> (not b_lambda!4119) (not b!8360)))

(declare-fun t!1889 () Bool)

(declare-fun tb!1549 () Bool)

(assert (=> (and start!1642 (= f!585 f!585) t!1889) tb!1549))

(declare-fun result!1589 () Bool)

(assert (=> tb!1549 (= result!1589 true)))

(assert (=> b!8360 t!1889))

(declare-fun b_and!2863 () Bool)

(assert (= b_and!2853 (and (=> t!1889 result!1589) b_and!2863)))

(declare-fun t!1891 () Bool)

(declare-fun tb!1551 () Bool)

(assert (=> (and start!1642 (= f!610 f!585) t!1891) tb!1551))

(declare-fun result!1591 () Bool)

(assert (=> tb!1551 (= result!1591 true)))

(assert (=> b!8360 t!1891))

(declare-fun b_and!2865 () Bool)

(assert (= b_and!2855 (and (=> t!1891 result!1591) b_and!2865)))

(declare-fun b_lambda!4121 () Bool)

(assert (=> (not b_lambda!4121) (not b!8360)))

(declare-fun b_lambda!4123 () Bool)

(assert (=> (not b_lambda!4123) (not b!8360)))

(declare-fun m!11209 () Bool)

(assert (=> b!8360 m!11209))

(declare-fun m!11211 () Bool)

(assert (=> b!8360 m!11211))

(declare-fun m!11213 () Bool)

(assert (=> b!8360 m!11213))

(assert (=> b!8347 d!6519))

(declare-fun d!6521 () Bool)

(declare-fun c!2870 () Bool)

(assert (=> d!6521 (= c!2870 (and (is-Cons!189 (toList!38 tree!25)) (is-Nil!190 (tail!419 (toList!38 tree!25)))))))

(declare-fun e!4809 () Balance!151)

(assert (=> d!6521 (= (foldRight1!45 (toList!38 tree!25) f!585) e!4809)))

(declare-fun b!8365 () Bool)

(assert (=> b!8365 (= e!4809 (head!407 (toList!38 tree!25)))))

(declare-fun b!8366 () Bool)

(assert (=> b!8366 (= e!4809 (dynLambda!213 f!585 (head!407 (toList!38 tree!25)) (foldRight1!45 (tail!419 (toList!38 tree!25)) f!585)))))

(assert (= (and d!6521 c!2870) b!8365))

(assert (= (and d!6521 (not c!2870)) b!8366))

(declare-fun b_lambda!4125 () Bool)

(assert (=> (not b_lambda!4125) (not b!8366)))

(declare-fun t!1893 () Bool)

(declare-fun tb!1553 () Bool)

(assert (=> (and start!1642 (= f!585 f!585) t!1893) tb!1553))

(declare-fun result!1593 () Bool)

(assert (=> tb!1553 (= result!1593 true)))

(assert (=> b!8366 t!1893))

(declare-fun b_and!2867 () Bool)

(assert (= b_and!2863 (and (=> t!1893 result!1593) b_and!2867)))

(declare-fun t!1895 () Bool)

(declare-fun tb!1555 () Bool)

(assert (=> (and start!1642 (= f!610 f!585) t!1895) tb!1555))

(declare-fun result!1595 () Bool)

(assert (=> tb!1555 (= result!1595 true)))

(assert (=> b!8366 t!1895))

(declare-fun b_and!2869 () Bool)

(assert (= b_and!2865 (and (=> t!1895 result!1595) b_and!2869)))

(declare-fun m!11215 () Bool)

(assert (=> b!8366 m!11215))

(assert (=> b!8366 m!11215))

(declare-fun m!11217 () Bool)

(assert (=> b!8366 m!11217))

(assert (=> b!8347 d!6521))

(declare-fun d!6523 () Bool)

(declare-fun lt!1527 () List!192)

(assert (=> d!6523 (not (isEmpty!158 lt!1527))))

(declare-fun e!4812 () List!192)

(assert (=> d!6523 (= lt!1527 e!4812)))

(declare-fun c!2873 () Bool)

(assert (=> d!6523 (= c!2873 (is-Leaf!111 tree!25))))

(assert (=> d!6523 (= (toList!38 tree!25) lt!1527)))

(declare-fun b!8371 () Bool)

(assert (=> b!8371 (= e!4812 (Cons!189 (value!1280 tree!25) Nil!190))))

(declare-fun b!8372 () Bool)

(declare-fun append!79 (List!192 List!192) List!192)

(assert (=> b!8372 (= e!4812 (append!79 (toList!38 (left!361 tree!25)) (toList!38 (right!364 tree!25))))))

(assert (= (and d!6523 c!2873) b!8371))

(assert (= (and d!6523 (not c!2873)) b!8372))

(declare-fun m!11219 () Bool)

(assert (=> d!6523 m!11219))

(declare-fun m!11221 () Bool)

(assert (=> b!8372 m!11221))

(assert (=> b!8372 m!11207))

(assert (=> b!8372 m!11221))

(assert (=> b!8372 m!11207))

(declare-fun m!11223 () Bool)

(assert (=> b!8372 m!11223))

(assert (=> b!8347 d!6523))

(declare-fun d!6525 () Bool)

(assert (=> d!6525 (= (isEmpty!158 thiss!913) (is-Nil!190 thiss!913))))

(assert (=> b!8342 d!6525))

(declare-fun d!6527 () Bool)

(declare-fun res!2559 () Bool)

(declare-fun e!4815 () Bool)

(assert (=> d!6527 (=> (not res!2559) (not e!4815))))

(assert (=> d!6527 (= res!2559 (= (dynLambda!214 (x!4545 thiss!854)) (dynLambda!214 (y!504 thiss!854))))))

(assert (=> d!6527 (= (inv!291 thiss!854) e!4815)))

(declare-fun b!8375 () Bool)

(declare-fun dynLambda!215 (Int) Bool)

(assert (=> b!8375 (= e!4815 (dynLambda!215 (evidence!126 thiss!854)))))

(assert (= (and d!6527 res!2559) b!8375))

(declare-fun b_lambda!4127 () Bool)

(assert (=> (not b_lambda!4127) (not d!6527)))

(declare-fun t!1897 () Bool)

(declare-fun tb!1557 () Bool)

(assert (=> (and b!8343 (= (x!4545 thiss!854) (x!4545 thiss!854)) t!1897) tb!1557))

(declare-fun result!1597 () Bool)

(assert (=> tb!1557 (= result!1597 true)))

(assert (=> d!6527 t!1897))

(declare-fun b_and!2871 () Bool)

(assert (= b_and!2857 (and (=> t!1897 result!1597) b_and!2871)))

(declare-fun t!1899 () Bool)

(declare-fun tb!1559 () Bool)

(assert (=> (and b!8343 (= (y!504 thiss!854) (x!4545 thiss!854)) t!1899) tb!1559))

(declare-fun result!1599 () Bool)

(assert (=> tb!1559 (= result!1599 true)))

(assert (=> d!6527 t!1899))

(declare-fun b_and!2873 () Bool)

(assert (= b_and!2859 (and (=> t!1899 result!1599) b_and!2873)))

(declare-fun b_lambda!4129 () Bool)

(assert (=> (not b_lambda!4129) (not d!6527)))

(declare-fun t!1901 () Bool)

(declare-fun tb!1561 () Bool)

(assert (=> (and b!8343 (= (x!4545 thiss!854) (y!504 thiss!854)) t!1901) tb!1561))

(declare-fun result!1601 () Bool)

(assert (=> tb!1561 (= result!1601 true)))

(assert (=> d!6527 t!1901))

(declare-fun b_and!2875 () Bool)

(assert (= b_and!2871 (and (=> t!1901 result!1601) b_and!2875)))

(declare-fun t!1903 () Bool)

(declare-fun tb!1563 () Bool)

(assert (=> (and b!8343 (= (y!504 thiss!854) (y!504 thiss!854)) t!1903) tb!1563))

(declare-fun result!1603 () Bool)

(assert (=> tb!1563 (= result!1603 true)))

(assert (=> d!6527 t!1903))

(declare-fun b_and!2877 () Bool)

(assert (= b_and!2873 (and (=> t!1903 result!1603) b_and!2877)))

(declare-fun b_lambda!4131 () Bool)

(assert (=> (not b_lambda!4131) (not b!8375)))

(declare-fun t!1905 () Bool)

(declare-fun tb!1565 () Bool)

(assert (=> (and b!8343 (= (evidence!126 thiss!854) (evidence!126 thiss!854)) t!1905) tb!1565))

(declare-fun result!1605 () Bool)

(assert (=> tb!1565 (= result!1605 true)))

(assert (=> b!8375 t!1905))

(declare-fun b_and!2879 () Bool)

(assert (= b_and!2861 (and (=> t!1905 result!1605) b_and!2879)))

(declare-fun m!11225 () Bool)

(assert (=> d!6527 m!11225))

(declare-fun m!11227 () Bool)

(assert (=> d!6527 m!11227))

(declare-fun m!11229 () Bool)

(assert (=> b!8375 m!11229))

(assert (=> start!1642 d!6527))

(declare-fun d!6529 () Bool)

(declare-fun lt!1528 () List!192)

(assert (=> d!6529 (not (isEmpty!158 lt!1528))))

(declare-fun e!4816 () List!192)

(assert (=> d!6529 (= lt!1528 e!4816)))

(declare-fun c!2874 () Bool)

(assert (=> d!6529 (= c!2874 (is-Leaf!111 (right!364 tree!25)))))

(assert (=> d!6529 (= (toList!38 (right!364 tree!25)) lt!1528)))

(declare-fun b!8376 () Bool)

(assert (=> b!8376 (= e!4816 (Cons!189 (value!1280 (right!364 tree!25)) Nil!190))))

(declare-fun b!8377 () Bool)

(assert (=> b!8377 (= e!4816 (append!79 (toList!38 (left!361 (right!364 tree!25))) (toList!38 (right!364 (right!364 tree!25)))))))

(assert (= (and d!6529 c!2874) b!8376))

(assert (= (and d!6529 (not c!2874)) b!8377))

(declare-fun m!11231 () Bool)

(assert (=> d!6529 m!11231))

(declare-fun m!11233 () Bool)

(assert (=> b!8377 m!11233))

(declare-fun m!11235 () Bool)

(assert (=> b!8377 m!11235))

(assert (=> b!8377 m!11233))

(assert (=> b!8377 m!11235))

(declare-fun m!11237 () Bool)

(assert (=> b!8377 m!11237))

(assert (=> b!8348 d!6529))

(declare-fun b_lambda!4133 () Bool)

(assert (= b_lambda!4127 (or (and b!8344 (= lambda!1889 (x!4545 thiss!854))) (and b!8360 (= lambda!1896 (x!4545 thiss!854))) (and b!8343 b_free!729 (= (y!504 thiss!854) (x!4545 thiss!854))) (and b!8344 (= lambda!1888 (x!4545 thiss!854))) (and b!8343 b_free!727) (and b!8360 (= lambda!1895 (x!4545 thiss!854))) b_lambda!4133)))

(declare-fun bs!1929 () Bool)

(declare-fun d!6531 () Bool)

(assert (= bs!1929 (and d!6531 b!8360)))

(assert (=> bs!1929 (= (dynLambda!214 lambda!1896) (fold!14 (right!364 tree!25) f!585))))

(declare-fun m!11239 () Bool)

(assert (=> bs!1929 m!11239))

(assert (=> (and b!8360 (= lambda!1896 (x!4545 thiss!854)) d!6527) d!6531))

(declare-fun bs!1930 () Bool)

(declare-fun d!6533 () Bool)

(assert (= bs!1930 (and d!6533 b!8360)))

(assert (=> bs!1930 (= (dynLambda!214 lambda!1895) (fold!14 (left!361 tree!25) f!585))))

(declare-fun m!11241 () Bool)

(assert (=> bs!1930 m!11241))

(assert (=> (and b!8360 (= lambda!1895 (x!4545 thiss!854)) d!6527) d!6533))

(declare-fun bs!1931 () Bool)

(declare-fun d!6535 () Bool)

(assert (= bs!1931 (and d!6535 b!8344)))

(assert (=> bs!1931 (= (dynLambda!214 lambda!1889) (dynLambda!213 f!585 (foldRight1!45 (toList!38 (left!361 tree!25)) f!585) (fold!14 (right!364 tree!25) f!585)))))

(declare-fun b_lambda!4147 () Bool)

(assert (=> (not b_lambda!4147) (not bs!1931)))

(declare-fun t!1907 () Bool)

(declare-fun tb!1567 () Bool)

(assert (=> (and start!1642 (= f!585 f!585) t!1907) tb!1567))

(declare-fun result!1607 () Bool)

(assert (=> tb!1567 (= result!1607 true)))

(assert (=> bs!1931 t!1907))

(declare-fun b_and!2881 () Bool)

(assert (= b_and!2867 (and (=> t!1907 result!1607) b_and!2881)))

(declare-fun tb!1569 () Bool)

(declare-fun t!1909 () Bool)

(assert (=> (and start!1642 (= f!610 f!585) t!1909) tb!1569))

(declare-fun result!1609 () Bool)

(assert (=> tb!1569 (= result!1609 true)))

(assert (=> bs!1931 t!1909))

(declare-fun b_and!2883 () Bool)

(assert (= b_and!2869 (and (=> t!1909 result!1609) b_and!2883)))

(assert (=> bs!1931 m!11239))

(assert (=> bs!1931 m!11221))

(assert (=> bs!1931 m!11221))

(declare-fun m!11243 () Bool)

(assert (=> bs!1931 m!11243))

(assert (=> bs!1931 m!11243))

(assert (=> bs!1931 m!11239))

(declare-fun m!11245 () Bool)

(assert (=> bs!1931 m!11245))

(assert (=> (and b!8344 (= lambda!1889 (x!4545 thiss!854)) d!6527) d!6535))

(declare-fun bs!1932 () Bool)

(declare-fun d!6537 () Bool)

(assert (= bs!1932 (and d!6537 b!8344)))

(assert (=> bs!1932 (= (dynLambda!214 lambda!1888) (fold!14 tree!25 f!585))))

(assert (=> bs!1932 m!11199))

(assert (=> (and b!8344 (= lambda!1888 (x!4545 thiss!854)) d!6527) d!6537))

(declare-fun b_lambda!4135 () Bool)

(assert (= b_lambda!4121 (or b!8360 b_lambda!4135)))

(declare-fun bs!1933 () Bool)

(declare-fun d!6539 () Bool)

(assert (= bs!1933 (and d!6539 b!8360)))

(assert (=> bs!1933 (= (dynLambda!214 lambda!1895) (fold!14 (left!361 tree!25) f!585))))

(assert (=> bs!1933 m!11241))

(assert (=> b!8360 d!6539))

(declare-fun b_lambda!4137 () Bool)

(assert (= b_lambda!4131 (or (and b!8344 (= lambda!1890 (evidence!126 thiss!854))) (and b!8343 b_free!731) b_lambda!4137)))

(declare-fun bs!1934 () Bool)

(declare-fun d!6541 () Bool)

(assert (= bs!1934 (and d!6541 b!8344)))

(declare-fun fold_foldRight1_equivalence!0 (Tree!38) Bool)

(assert (=> bs!1934 (= (dynLambda!215 lambda!1890) (fold_foldRight1_equivalence!0 (right!364 tree!25)))))

(declare-fun m!11247 () Bool)

(assert (=> bs!1934 m!11247))

(assert (=> (and b!8344 (= lambda!1890 (evidence!126 thiss!854)) b!8375) d!6541))

(declare-fun b_lambda!4139 () Bool)

(assert (= b_lambda!4129 (or (and b!8344 (= lambda!1888 (y!504 thiss!854))) (and b!8360 (= lambda!1896 (y!504 thiss!854))) (and b!8360 (= lambda!1895 (y!504 thiss!854))) (and b!8343 b_free!727 (= (x!4545 thiss!854) (y!504 thiss!854))) (and b!8343 b_free!729) (and b!8344 (= lambda!1889 (y!504 thiss!854))) b_lambda!4139)))

(declare-fun bs!1935 () Bool)

(declare-fun d!6543 () Bool)

(assert (= bs!1935 (and d!6543 b!8360)))

(assert (=> bs!1935 (= (dynLambda!214 lambda!1895) (fold!14 (left!361 tree!25) f!585))))

(assert (=> bs!1935 m!11241))

(assert (=> (and b!8360 (= lambda!1895 (y!504 thiss!854)) d!6527) d!6543))

(declare-fun bs!1936 () Bool)

(declare-fun d!6545 () Bool)

(assert (= bs!1936 (and d!6545 b!8360)))

(assert (=> bs!1936 (= (dynLambda!214 lambda!1896) (fold!14 (right!364 tree!25) f!585))))

(assert (=> bs!1936 m!11239))

(assert (=> (and b!8360 (= lambda!1896 (y!504 thiss!854)) d!6527) d!6545))

(declare-fun bs!1937 () Bool)

(declare-fun d!6547 () Bool)

(assert (= bs!1937 (and d!6547 b!8344)))

(assert (=> bs!1937 (= (dynLambda!214 lambda!1889) (dynLambda!213 f!585 (foldRight1!45 (toList!38 (left!361 tree!25)) f!585) (fold!14 (right!364 tree!25) f!585)))))

(declare-fun b_lambda!4149 () Bool)

(assert (=> (not b_lambda!4149) (not bs!1937)))

(assert (=> bs!1937 t!1907))

(declare-fun b_and!2885 () Bool)

(assert (= b_and!2881 (and (=> t!1907 result!1607) b_and!2885)))

(assert (=> bs!1937 t!1909))

(declare-fun b_and!2887 () Bool)

(assert (= b_and!2883 (and (=> t!1909 result!1609) b_and!2887)))

(assert (=> bs!1937 m!11239))

(assert (=> bs!1937 m!11221))

(assert (=> bs!1937 m!11221))

(assert (=> bs!1937 m!11243))

(assert (=> bs!1937 m!11243))

(assert (=> bs!1937 m!11239))

(assert (=> bs!1937 m!11245))

(assert (=> (and b!8344 (= lambda!1889 (y!504 thiss!854)) d!6527) d!6547))

(declare-fun bs!1938 () Bool)

(declare-fun d!6549 () Bool)

(assert (= bs!1938 (and d!6549 b!8344)))

(assert (=> bs!1938 (= (dynLambda!214 lambda!1888) (fold!14 tree!25 f!585))))

(assert (=> bs!1938 m!11199))

(assert (=> (and b!8344 (= lambda!1888 (y!504 thiss!854)) d!6527) d!6549))

(declare-fun b_lambda!4141 () Bool)

(assert (= b_lambda!4123 (or b!8360 b_lambda!4141)))

(declare-fun bs!1939 () Bool)

(declare-fun d!6551 () Bool)

(assert (= bs!1939 (and d!6551 b!8360)))

(assert (=> bs!1939 (= (dynLambda!214 lambda!1896) (fold!14 (right!364 tree!25) f!585))))

(assert (=> bs!1939 m!11239))

(assert (=> b!8360 d!6551))

(declare-fun b_lambda!4143 () Bool)

(assert (= b_lambda!4119 (or (and start!1642 (= lambda!1887 f!585)) (and start!1642 b_free!723) (and start!1642 b_free!725 (= f!610 f!585)) b_lambda!4143)))

(declare-fun bs!1940 () Bool)

(declare-fun d!6553 () Bool)

(assert (= bs!1940 (and d!6553 start!1642)))

(declare-fun ++!3 (Balance!151 Balance!151) Balance!151)

(assert (=> bs!1940 (= (dynLambda!213 lambda!1887 (_1!25 lt!1524) (_2!25 lt!1524)) (++!3 (_1!25 lt!1524) (_2!25 lt!1524)))))

(declare-fun m!11249 () Bool)

(assert (=> bs!1940 m!11249))

(assert (=> (and start!1642 (= lambda!1887 f!585) b!8360) d!6553))

(declare-fun b_lambda!4145 () Bool)

(assert (= b_lambda!4125 (or (and start!1642 (= lambda!1887 f!585)) (and start!1642 b_free!723) (and start!1642 b_free!725 (= f!610 f!585)) b_lambda!4145)))

(declare-fun bs!1941 () Bool)

(declare-fun d!6555 () Bool)

(assert (= bs!1941 (and d!6555 start!1642)))

(assert (=> bs!1941 (= (dynLambda!213 lambda!1887 (head!407 (toList!38 tree!25)) (foldRight1!45 (tail!419 (toList!38 tree!25)) f!585)) (++!3 (head!407 (toList!38 tree!25)) (foldRight1!45 (tail!419 (toList!38 tree!25)) f!585)))))

(assert (=> bs!1941 m!11215))

(declare-fun m!11251 () Bool)

(assert (=> bs!1941 m!11251))

(assert (=> (and start!1642 (= lambda!1887 f!585) b!8366) d!6555))

(push 1)

(assert (not b_lambda!4133))

(assert (not b_next!1581))

(assert b_and!2875)

(assert (not b!8372))

(assert (not bs!1940))

(assert (not b_lambda!4145))

(assert (not b_next!1579))

(assert b_and!2887)

(assert (not b_next!1599))

(assert (not d!6523))

(assert (not b!8377))

(assert (not bs!1936))

(assert (not b_lambda!4137))

(assert (not b!8366))

(assert (not bs!1933))

(assert (not bs!1938))

(assert b_and!2879)

(assert (not d!6529))

(assert (not bs!1937))

(assert (not bs!1935))

(assert (not bs!1939))

(assert b_and!2877)

(assert (not b_lambda!4139))

(assert (not b_lambda!4147))

(assert (not bs!1930))

(assert (not bs!1941))

(assert (not b_lambda!4143))

(assert (not b_next!1597))

(assert (not b_lambda!4149))

(assert (not bs!1932))

(assert b_and!2885)

(assert (not b_next!1591))

(assert (not bs!1931))

(assert (not b_lambda!4135))

(assert (not bs!1929))

(assert (not bs!1934))

(assert (not b_lambda!4141))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1581))

(assert b_and!2875)

(assert (not b_next!1579))

(assert b_and!2887)

(assert (not b_next!1599))

(assert b_and!2879)

(assert b_and!2877)

(assert (not b_next!1597))

(assert b_and!2885)

(assert (not b_next!1591))

(check-sat)

(pop 1)

