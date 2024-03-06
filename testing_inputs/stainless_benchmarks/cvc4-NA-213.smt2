; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1606 () Bool)

(assert start!1606)

(declare-fun b!8198 () Bool)

(declare-fun b_free!693 () Bool)

(declare-fun b_next!1473 () Bool)

(assert (=> b!8198 (= b_free!693 (not b_next!1473))))

(declare-fun tp!1172 () Bool)

(declare-fun b_and!2753 () Bool)

(assert (=> b!8198 (= tp!1172 b_and!2753)))

(declare-fun b_free!695 () Bool)

(declare-fun b_next!1475 () Bool)

(assert (=> b!8198 (= b_free!695 (not b_next!1475))))

(declare-fun tp!1174 () Bool)

(declare-fun b_and!2755 () Bool)

(assert (=> b!8198 (= tp!1174 b_and!2755)))

(declare-fun b_free!697 () Bool)

(declare-fun b_next!1477 () Bool)

(assert (=> b!8198 (= b_free!697 (not b_next!1477))))

(declare-fun tp!1171 () Bool)

(declare-fun b_and!2757 () Bool)

(assert (=> b!8198 (= tp!1171 b_and!2757)))

(declare-fun b_free!699 () Bool)

(declare-fun b_next!1479 () Bool)

(assert (=> start!1606 (= b_free!699 (not b_next!1479))))

(declare-fun tp!1173 () Bool)

(declare-fun b_and!2759 () Bool)

(assert (=> start!1606 (= tp!1173 b_and!2759)))

(declare-fun b_free!701 () Bool)

(declare-fun b_next!1481 () Bool)

(assert (=> start!1606 (= b_free!701 (not b_next!1481))))

(declare-fun tp!1170 () Bool)

(declare-fun b_and!2761 () Bool)

(assert (=> start!1606 (= tp!1170 b_and!2761)))

(declare-fun lambda!1833 () Int)

(declare-fun f!594 () Int)

(declare-fun b_next!1483 () Bool)

(assert (=> start!1606 (= b_next!1479 (or (and start!1606 (= lambda!1833 f!594)) b_next!1483))))

(declare-fun f!585 () Int)

(declare-fun b_next!1485 () Bool)

(assert (=> start!1606 (= b_next!1481 (or (and start!1606 (= lambda!1833 f!585)) b_next!1485))))

(declare-fun b!8201 () Bool)

(assert (=> b!8201 true))

(declare-fun order!63 () Int)

(declare-fun order!61 () Int)

(declare-fun lambda!1834 () Int)

(declare-fun dynLambda!196 (Int Int) Int)

(declare-fun dynLambda!197 (Int Int) Int)

(assert (=> b!8201 (< (dynLambda!196 order!61 f!585) (dynLambda!197 order!63 lambda!1834))))

(assert (=> b!8201 true))

(declare-datatypes () ((Balance!145 (Balance!146 (extraOpen!113 Int) (extraClose!113 Int)))))

(declare-datatypes () ((EqEvidence!112 (EqEvidence!113 (x!4458 Int) (y!495 Int) (evidence!123 Int)))))

(declare-fun thiss!837 () EqEvidence!112)

(declare-fun b_next!1487 () Bool)

(assert (=> b!8198 (= b_next!1473 (or (and b!8201 (= lambda!1834 (x!4458 thiss!837))) b_next!1487))))

(declare-fun b_next!1489 () Bool)

(assert (=> b!8198 (= b_next!1475 (or (and b!8201 (= lambda!1834 (y!495 thiss!837))) b_next!1489))))

(declare-fun lambda!1835 () Int)

(assert (=> b!8201 (not (= lambda!1835 lambda!1834))))

(assert (=> b!8201 true))

(assert (=> b!8201 (< (dynLambda!196 order!61 f!585) (dynLambda!197 order!63 lambda!1835))))

(assert (=> b!8201 true))

(declare-fun b_next!1491 () Bool)

(assert (=> b!8198 (= b_next!1487 (or (and b!8201 (= lambda!1835 (x!4458 thiss!837))) b_next!1491))))

(declare-fun b_next!1493 () Bool)

(assert (=> b!8198 (= b_next!1489 (or (and b!8201 (= lambda!1835 (y!495 thiss!837))) b_next!1493))))

(declare-fun m!11041 () Bool)

(assert (=> b!8201 m!11041))

(declare-fun lambda!1836 () Int)

(declare-fun dynLambda!198 (Int) Bool)

(assert (=> (and b!8198 b!8201 (= (dynLambda!198 lambda!1836) (dynLambda!198 (evidence!123 thiss!837)))) (= lambda!1836 (evidence!123 thiss!837))))

(declare-fun b_next!1495 () Bool)

(assert (=> b!8198 (= b_next!1477 (or (and b!8201 (= lambda!1836 (evidence!123 thiss!837))) b_next!1495))))

(declare-fun b!8196 () Bool)

(declare-fun e!4682 () Bool)

(declare-datatypes () ((List!189 (Nil!187) (Cons!186 (head!404 Balance!145) (tail!416 List!189)))))

(declare-fun thiss!847 () List!189)

(declare-fun isEmpty!155 (List!189) Bool)

(assert (=> b!8196 (= e!4682 (isEmpty!155 thiss!847))))

(declare-fun res!2484 () Bool)

(assert (=> start!1606 (=> (not res!2484) (not e!4682))))

(assert (=> start!1606 (= res!2484 (= f!585 lambda!1833))))

(assert (=> start!1606 e!4682))

(assert (=> start!1606 true))

(declare-fun e!4683 () Bool)

(declare-fun inv!288 (EqEvidence!112) Bool)

(assert (=> start!1606 (and (inv!288 thiss!837) e!4683)))

(assert (=> start!1606 tp!1173))

(assert (=> start!1606 tp!1170))

(declare-fun b!8197 () Bool)

(declare-fun res!2486 () Bool)

(assert (=> b!8197 (=> (not res!2486) (not e!4682))))

(declare-datatypes () ((Tree!35 (Branch!26 (left!349 Tree!35) (right!352 Tree!35)) (Leaf!108 (value!1277 Balance!145)))))

(declare-fun tree!25 () Tree!35)

(declare-fun toList!35 (Tree!35) List!189)

(assert (=> b!8197 (= res!2486 (= thiss!847 (toList!35 tree!25)))))

(assert (=> b!8198 (= e!4683 (and tp!1172 tp!1174 tp!1171))))

(declare-fun b!8199 () Bool)

(declare-fun res!2487 () Bool)

(assert (=> b!8199 (=> (not res!2487) (not e!4682))))

(assert (=> b!8199 (= res!2487 (= f!594 f!585))))

(declare-fun b!8200 () Bool)

(declare-fun res!2488 () Bool)

(assert (=> b!8200 (=> (not res!2488) (not e!4682))))

(declare-datatypes () ((ProofOps!92 (ProofOps!93 (prop!160 Bool)))))

(declare-fun thiss!829 () ProofOps!92)

(declare-fun fold!11 (Tree!35 Int) Balance!145)

(declare-fun foldRight1!42 (List!189 Int) Balance!145)

(assert (=> b!8200 (= res!2488 (= thiss!829 (ProofOps!93 (= (fold!11 tree!25 f!585) (foldRight1!42 (toList!35 tree!25) f!585)))))))

(declare-fun res!2485 () Bool)

(assert (=> b!8201 (=> (not res!2485) (not e!4682))))

(assert (=> b!8201 (= res!2485 (= thiss!837 (EqEvidence!113 lambda!1834 lambda!1835 lambda!1836)))))

(declare-fun b!8202 () Bool)

(declare-fun res!2489 () Bool)

(assert (=> b!8202 (=> (not res!2489) (not e!4682))))

(assert (=> b!8202 (= res!2489 (is-Leaf!108 tree!25))))

(assert (= (and start!1606 res!2484) b!8200))

(assert (= (and b!8200 res!2488) b!8202))

(assert (= (and b!8202 res!2489) b!8201))

(assert (= (and b!8201 res!2485) b!8197))

(assert (= (and b!8197 res!2486) b!8199))

(assert (= (and b!8199 res!2487) b!8196))

(assert (= start!1606 b!8198))

(declare-fun m!11043 () Bool)

(assert (=> b!8196 m!11043))

(declare-fun m!11045 () Bool)

(assert (=> start!1606 m!11045))

(declare-fun m!11047 () Bool)

(assert (=> b!8197 m!11047))

(declare-fun m!11049 () Bool)

(assert (=> b!8200 m!11049))

(assert (=> b!8200 m!11047))

(assert (=> b!8200 m!11047))

(declare-fun m!11051 () Bool)

(assert (=> b!8200 m!11051))

(push 1)

(assert (not b!8196))

(assert (not b_next!1493))

(assert b_and!2757)

(assert b_and!2755)

(assert b_and!2753)

(assert (not b!8201))

(assert (not b!8197))

(assert (not b!8200))

(assert (not b_next!1495))

(assert (not b_next!1485))

(assert (not b_next!1483))

(assert (not b_next!1491))

(assert (not start!1606))

(assert b_and!2761)

(assert b_and!2759)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1493))

(assert b_and!2757)

(assert b_and!2755)

(assert b_and!2753)

(assert (not b_next!1495))

(assert (not b_next!1485))

(assert (not b_next!1483))

(assert (not b_next!1491))

(assert b_and!2761)

(assert b_and!2759)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6405 () Bool)

(declare-fun lt!1504 () List!189)

(assert (=> d!6405 (not (isEmpty!155 lt!1504))))

(declare-fun e!4686 () List!189)

(assert (=> d!6405 (= lt!1504 e!4686)))

(declare-fun c!2838 () Bool)

(assert (=> d!6405 (= c!2838 (is-Leaf!108 tree!25))))

(assert (=> d!6405 (= (toList!35 tree!25) lt!1504)))

(declare-fun b!8211 () Bool)

(assert (=> b!8211 (= e!4686 (Cons!186 (value!1277 tree!25) Nil!187))))

(declare-fun b!8212 () Bool)

(declare-fun append!76 (List!189 List!189) List!189)

(assert (=> b!8212 (= e!4686 (append!76 (toList!35 (left!349 tree!25)) (toList!35 (right!352 tree!25))))))

(assert (= (and d!6405 c!2838) b!8211))

(assert (= (and d!6405 (not c!2838)) b!8212))

(declare-fun m!11053 () Bool)

(assert (=> d!6405 m!11053))

(declare-fun m!11055 () Bool)

(assert (=> b!8212 m!11055))

(declare-fun m!11057 () Bool)

(assert (=> b!8212 m!11057))

(assert (=> b!8212 m!11055))

(assert (=> b!8212 m!11057))

(declare-fun m!11059 () Bool)

(assert (=> b!8212 m!11059))

(assert (=> b!8197 d!6405))

(declare-fun bs!1883 () Bool)

(declare-fun b!8218 () Bool)

(assert (= bs!1883 (and b!8218 b!8201)))

(declare-fun lambda!1841 () Int)

(assert (=> bs!1883 (= (= (left!349 tree!25) tree!25) (= lambda!1841 lambda!1834))))

(assert (=> bs!1883 (not (= lambda!1841 lambda!1835))))

(assert (=> b!8218 true))

(assert (=> b!8218 (< (dynLambda!196 order!61 f!585) (dynLambda!197 order!63 lambda!1841))))

(assert (=> b!8218 true))

(declare-fun b_next!1497 () Bool)

(assert (=> b!8198 (= b_next!1491 (or (and b!8218 (= lambda!1841 (x!4458 thiss!837))) b_next!1497))))

(declare-fun b_next!1499 () Bool)

(assert (=> b!8198 (= b_next!1493 (or (and b!8218 (= lambda!1841 (y!495 thiss!837))) b_next!1499))))

(declare-fun lambda!1842 () Int)

(assert (=> bs!1883 (= (= (right!352 tree!25) tree!25) (= lambda!1842 lambda!1834))))

(assert (=> bs!1883 (not (= lambda!1842 lambda!1835))))

(assert (=> b!8218 (= (= (right!352 tree!25) (left!349 tree!25)) (= lambda!1842 lambda!1841))))

(assert (=> b!8218 true))

(assert (=> b!8218 (< (dynLambda!196 order!61 f!585) (dynLambda!197 order!63 lambda!1842))))

(assert (=> b!8218 true))

(declare-fun b_next!1501 () Bool)

(assert (=> b!8198 (= b_next!1497 (or (and b!8218 (= lambda!1842 (x!4458 thiss!837))) b_next!1501))))

(declare-fun b_next!1503 () Bool)

(assert (=> b!8198 (= b_next!1499 (or (and b!8218 (= lambda!1842 (y!495 thiss!837))) b_next!1503))))

(declare-fun e!4705 () Balance!145)

(declare-datatypes () ((tuple2!44 (tuple2!45 (_1!22 Balance!145) (_2!22 Balance!145)))))

(declare-fun lt!1507 () tuple2!44)

(declare-fun dynLambda!199 (Int Balance!145 Balance!145) Balance!145)

(assert (=> b!8218 (= e!4705 (dynLambda!199 f!585 (_1!22 lt!1507) (_2!22 lt!1507)))))

(declare-fun dynLambda!200 (Int) Balance!145)

(assert (=> b!8218 (= lt!1507 (tuple2!45 (dynLambda!200 lambda!1841) (dynLambda!200 lambda!1842)))))

(declare-fun d!6407 () Bool)

(declare-fun c!2841 () Bool)

(assert (=> d!6407 (= c!2841 (is-Leaf!108 tree!25))))

(assert (=> d!6407 (= (fold!11 tree!25 f!585) e!4705)))

(declare-fun b!8217 () Bool)

(assert (=> b!8217 (= e!4705 (value!1277 tree!25))))

(assert (= (and d!6407 c!2841) b!8217))

(assert (= (and d!6407 (not c!2841)) b!8218))

(declare-fun b_lambda!4027 () Bool)

(assert (=> (not b_lambda!4027) (not b!8218)))

(declare-fun tb!1487 () Bool)

(declare-fun t!1827 () Bool)

(assert (=> (and start!1606 (= f!594 f!585) t!1827) tb!1487))

(declare-fun result!1527 () Bool)

(assert (=> tb!1487 (= result!1527 true)))

(assert (=> b!8218 t!1827))

(declare-fun b_and!2763 () Bool)

(assert (= b_and!2759 (and (=> t!1827 result!1527) b_and!2763)))

(declare-fun t!1829 () Bool)

(declare-fun tb!1489 () Bool)

(assert (=> (and start!1606 (= f!585 f!585) t!1829) tb!1489))

(declare-fun result!1529 () Bool)

(assert (=> tb!1489 (= result!1529 true)))

(assert (=> b!8218 t!1829))

(declare-fun b_and!2765 () Bool)

(assert (= b_and!2761 (and (=> t!1829 result!1529) b_and!2765)))

(declare-fun b_lambda!4029 () Bool)

(assert (=> (not b_lambda!4029) (not b!8218)))

(declare-fun b_lambda!4031 () Bool)

(assert (=> (not b_lambda!4031) (not b!8218)))

(declare-fun m!11061 () Bool)

(assert (=> b!8218 m!11061))

(declare-fun m!11063 () Bool)

(assert (=> b!8218 m!11063))

(declare-fun m!11065 () Bool)

(assert (=> b!8218 m!11065))

(assert (=> b!8200 d!6407))

(declare-fun d!6409 () Bool)

(declare-fun c!2844 () Bool)

(assert (=> d!6409 (= c!2844 (and (is-Cons!186 (toList!35 tree!25)) (is-Nil!187 (tail!416 (toList!35 tree!25)))))))

(declare-fun e!4708 () Balance!145)

(assert (=> d!6409 (= (foldRight1!42 (toList!35 tree!25) f!585) e!4708)))

(declare-fun b!8223 () Bool)

(assert (=> b!8223 (= e!4708 (head!404 (toList!35 tree!25)))))

(declare-fun b!8224 () Bool)

(assert (=> b!8224 (= e!4708 (dynLambda!199 f!585 (head!404 (toList!35 tree!25)) (foldRight1!42 (tail!416 (toList!35 tree!25)) f!585)))))

(assert (= (and d!6409 c!2844) b!8223))

(assert (= (and d!6409 (not c!2844)) b!8224))

(declare-fun b_lambda!4033 () Bool)

(assert (=> (not b_lambda!4033) (not b!8224)))

(declare-fun tb!1491 () Bool)

(declare-fun t!1831 () Bool)

(assert (=> (and start!1606 (= f!594 f!585) t!1831) tb!1491))

(declare-fun result!1531 () Bool)

(assert (=> tb!1491 (= result!1531 true)))

(assert (=> b!8224 t!1831))

(declare-fun b_and!2767 () Bool)

(assert (= b_and!2763 (and (=> t!1831 result!1531) b_and!2767)))

(declare-fun t!1833 () Bool)

(declare-fun tb!1493 () Bool)

(assert (=> (and start!1606 (= f!585 f!585) t!1833) tb!1493))

(declare-fun result!1533 () Bool)

(assert (=> tb!1493 (= result!1533 true)))

(assert (=> b!8224 t!1833))

(declare-fun b_and!2769 () Bool)

(assert (= b_and!2765 (and (=> t!1833 result!1533) b_and!2769)))

(declare-fun m!11067 () Bool)

(assert (=> b!8224 m!11067))

(assert (=> b!8224 m!11067))

(declare-fun m!11069 () Bool)

(assert (=> b!8224 m!11069))

(assert (=> b!8200 d!6409))

(assert (=> b!8200 d!6405))

(declare-fun d!6411 () Bool)

(declare-fun res!2493 () Bool)

(declare-fun e!4711 () Bool)

(assert (=> d!6411 (=> (not res!2493) (not e!4711))))

(assert (=> d!6411 (= res!2493 (= (dynLambda!200 (x!4458 thiss!837)) (dynLambda!200 (y!495 thiss!837))))))

(assert (=> d!6411 (= (inv!288 thiss!837) e!4711)))

(declare-fun b!8227 () Bool)

(assert (=> b!8227 (= e!4711 (dynLambda!198 (evidence!123 thiss!837)))))

(assert (= (and d!6411 res!2493) b!8227))

(declare-fun b_lambda!4035 () Bool)

(assert (=> (not b_lambda!4035) (not d!6411)))

(declare-fun t!1835 () Bool)

(declare-fun tb!1495 () Bool)

(assert (=> (and b!8198 (= (x!4458 thiss!837) (x!4458 thiss!837)) t!1835) tb!1495))

(declare-fun result!1535 () Bool)

(assert (=> tb!1495 (= result!1535 true)))

(assert (=> d!6411 t!1835))

(declare-fun b_and!2771 () Bool)

(assert (= b_and!2753 (and (=> t!1835 result!1535) b_and!2771)))

(declare-fun t!1837 () Bool)

(declare-fun tb!1497 () Bool)

(assert (=> (and b!8198 (= (y!495 thiss!837) (x!4458 thiss!837)) t!1837) tb!1497))

(declare-fun result!1537 () Bool)

(assert (=> tb!1497 (= result!1537 true)))

(assert (=> d!6411 t!1837))

(declare-fun b_and!2773 () Bool)

(assert (= b_and!2755 (and (=> t!1837 result!1537) b_and!2773)))

(declare-fun b_lambda!4037 () Bool)

(assert (=> (not b_lambda!4037) (not d!6411)))

(declare-fun t!1839 () Bool)

(declare-fun tb!1499 () Bool)

(assert (=> (and b!8198 (= (x!4458 thiss!837) (y!495 thiss!837)) t!1839) tb!1499))

(declare-fun result!1539 () Bool)

(assert (=> tb!1499 (= result!1539 true)))

(assert (=> d!6411 t!1839))

(declare-fun b_and!2775 () Bool)

(assert (= b_and!2771 (and (=> t!1839 result!1539) b_and!2775)))

(declare-fun t!1841 () Bool)

(declare-fun tb!1501 () Bool)

(assert (=> (and b!8198 (= (y!495 thiss!837) (y!495 thiss!837)) t!1841) tb!1501))

(declare-fun result!1541 () Bool)

(assert (=> tb!1501 (= result!1541 true)))

(assert (=> d!6411 t!1841))

(declare-fun b_and!2777 () Bool)

(assert (= b_and!2773 (and (=> t!1841 result!1541) b_and!2777)))

(declare-fun b_lambda!4039 () Bool)

(assert (=> (not b_lambda!4039) (not b!8227)))

(declare-fun t!1843 () Bool)

(declare-fun tb!1503 () Bool)

(assert (=> (and b!8198 (= (evidence!123 thiss!837) (evidence!123 thiss!837)) t!1843) tb!1503))

(declare-fun result!1543 () Bool)

(assert (=> tb!1503 (= result!1543 true)))

(assert (=> b!8227 t!1843))

(declare-fun b_and!2779 () Bool)

(assert (= b_and!2757 (and (=> t!1843 result!1543) b_and!2779)))

(declare-fun m!11071 () Bool)

(assert (=> d!6411 m!11071))

(declare-fun m!11073 () Bool)

(assert (=> d!6411 m!11073))

(declare-fun m!11075 () Bool)

(assert (=> b!8227 m!11075))

(assert (=> start!1606 d!6411))

(declare-fun d!6413 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!6413 (= trivial!1 true)))

(assert (=> b!8201 d!6413))

(declare-fun d!6415 () Bool)

(assert (=> d!6415 (= (isEmpty!155 thiss!847) (is-Nil!187 thiss!847))))

(assert (=> b!8196 d!6415))

(declare-fun b_lambda!4041 () Bool)

(assert (= b_lambda!4033 (or (and start!1606 (= lambda!1833 f!585)) (and start!1606 b_free!699 (= f!594 f!585)) (and start!1606 b_free!701) b_lambda!4041)))

(declare-fun bs!1884 () Bool)

(declare-fun d!6417 () Bool)

(assert (= bs!1884 (and d!6417 start!1606)))

(declare-fun ++!3 (Balance!145 Balance!145) Balance!145)

(assert (=> bs!1884 (= (dynLambda!199 lambda!1833 (head!404 (toList!35 tree!25)) (foldRight1!42 (tail!416 (toList!35 tree!25)) f!585)) (++!3 (head!404 (toList!35 tree!25)) (foldRight1!42 (tail!416 (toList!35 tree!25)) f!585)))))

(assert (=> bs!1884 m!11067))

(declare-fun m!11077 () Bool)

(assert (=> bs!1884 m!11077))

(assert (=> (and start!1606 (= lambda!1833 f!585) b!8224) d!6417))

(declare-fun b_lambda!4043 () Bool)

(assert (= b_lambda!4027 (or (and start!1606 (= lambda!1833 f!585)) (and start!1606 b_free!699 (= f!594 f!585)) (and start!1606 b_free!701) b_lambda!4043)))

(declare-fun bs!1885 () Bool)

(declare-fun d!6419 () Bool)

(assert (= bs!1885 (and d!6419 start!1606)))

(assert (=> bs!1885 (= (dynLambda!199 lambda!1833 (_1!22 lt!1507) (_2!22 lt!1507)) (++!3 (_1!22 lt!1507) (_2!22 lt!1507)))))

(declare-fun m!11079 () Bool)

(assert (=> bs!1885 m!11079))

(assert (=> (and start!1606 (= lambda!1833 f!585) b!8218) d!6419))

(declare-fun b_lambda!4045 () Bool)

(assert (= b_lambda!4035 (or (and b!8198 b_free!693) (and b!8198 b_free!695 (= (y!495 thiss!837) (x!4458 thiss!837))) (and b!8218 (= lambda!1842 (x!4458 thiss!837))) (and b!8218 (= lambda!1841 (x!4458 thiss!837))) (and b!8201 (= lambda!1834 (x!4458 thiss!837))) (and b!8201 (= lambda!1835 (x!4458 thiss!837))) b_lambda!4045)))

(declare-fun bs!1886 () Bool)

(declare-fun d!6421 () Bool)

(assert (= bs!1886 (and d!6421 b!8218)))

(assert (=> bs!1886 (= (dynLambda!200 lambda!1841) (fold!11 (left!349 tree!25) f!585))))

(declare-fun m!11081 () Bool)

(assert (=> bs!1886 m!11081))

(assert (=> (and b!8218 (= lambda!1841 (x!4458 thiss!837)) d!6411) d!6421))

(declare-fun bs!1887 () Bool)

(declare-fun d!6423 () Bool)

(assert (= bs!1887 (and d!6423 b!8201)))

(assert (=> bs!1887 (= (dynLambda!200 lambda!1834) (fold!11 tree!25 f!585))))

(assert (=> bs!1887 m!11049))

(assert (=> (and b!8201 (= lambda!1834 (x!4458 thiss!837)) d!6411) d!6423))

(declare-fun bs!1888 () Bool)

(declare-fun d!6425 () Bool)

(assert (= bs!1888 (and d!6425 b!8218)))

(assert (=> bs!1888 (= (dynLambda!200 lambda!1842) (fold!11 (right!352 tree!25) f!585))))

(declare-fun m!11083 () Bool)

(assert (=> bs!1888 m!11083))

(assert (=> (and b!8218 (= lambda!1842 (x!4458 thiss!837)) d!6411) d!6425))

(declare-fun bs!1889 () Bool)

(declare-fun d!6427 () Bool)

(assert (= bs!1889 (and d!6427 b!8201)))

(assert (=> bs!1889 (= (dynLambda!200 lambda!1835) (foldRight1!42 (Cons!186 (value!1277 tree!25) Nil!187) f!585))))

(declare-fun m!11085 () Bool)

(assert (=> bs!1889 m!11085))

(assert (=> (and b!8201 (= lambda!1835 (x!4458 thiss!837)) d!6411) d!6427))

(declare-fun b_lambda!4047 () Bool)

(assert (= b_lambda!4029 (or b!8218 b_lambda!4047)))

(declare-fun bs!1890 () Bool)

(declare-fun d!6429 () Bool)

(assert (= bs!1890 (and d!6429 b!8218)))

(assert (=> bs!1890 (= (dynLambda!200 lambda!1841) (fold!11 (left!349 tree!25) f!585))))

(assert (=> bs!1890 m!11081))

(assert (=> b!8218 d!6429))

(declare-fun b_lambda!4049 () Bool)

(assert (= b_lambda!4031 (or b!8218 b_lambda!4049)))

(declare-fun bs!1891 () Bool)

(declare-fun d!6431 () Bool)

(assert (= bs!1891 (and d!6431 b!8218)))

(assert (=> bs!1891 (= (dynLambda!200 lambda!1842) (fold!11 (right!352 tree!25) f!585))))

(assert (=> bs!1891 m!11083))

(assert (=> b!8218 d!6431))

(declare-fun b_lambda!4051 () Bool)

(assert (= b_lambda!4039 (or (and b!8201 (= lambda!1836 (evidence!123 thiss!837))) (and b!8198 b_free!697) b_lambda!4051)))

(declare-fun bs!1892 () Bool)

(declare-fun d!6433 () Bool)

(assert (= bs!1892 (and d!6433 b!8201)))

(assert (=> bs!1892 (= (dynLambda!198 lambda!1836) trivial!1)))

(assert (=> (and b!8201 (= lambda!1836 (evidence!123 thiss!837)) b!8227) d!6433))

(declare-fun b_lambda!4053 () Bool)

(assert (= b_lambda!4037 (or (and b!8201 (= lambda!1834 (y!495 thiss!837))) (and b!8218 (= lambda!1841 (y!495 thiss!837))) (and b!8198 b_free!695) (and b!8198 b_free!693 (= (x!4458 thiss!837) (y!495 thiss!837))) (and b!8218 (= lambda!1842 (y!495 thiss!837))) (and b!8201 (= lambda!1835 (y!495 thiss!837))) b_lambda!4053)))

(declare-fun bs!1893 () Bool)

(declare-fun d!6435 () Bool)

(assert (= bs!1893 (and d!6435 b!8218)))

(assert (=> bs!1893 (= (dynLambda!200 lambda!1842) (fold!11 (right!352 tree!25) f!585))))

(assert (=> bs!1893 m!11083))

(assert (=> (and b!8218 (= lambda!1842 (y!495 thiss!837)) d!6411) d!6435))

(declare-fun bs!1894 () Bool)

(declare-fun d!6437 () Bool)

(assert (= bs!1894 (and d!6437 b!8201)))

(assert (=> bs!1894 (= (dynLambda!200 lambda!1835) (foldRight1!42 (Cons!186 (value!1277 tree!25) Nil!187) f!585))))

(assert (=> bs!1894 m!11085))

(assert (=> (and b!8201 (= lambda!1835 (y!495 thiss!837)) d!6411) d!6437))

(declare-fun bs!1895 () Bool)

(declare-fun d!6439 () Bool)

(assert (= bs!1895 (and d!6439 b!8201)))

(assert (=> bs!1895 (= (dynLambda!200 lambda!1834) (fold!11 tree!25 f!585))))

(assert (=> bs!1895 m!11049))

(assert (=> (and b!8201 (= lambda!1834 (y!495 thiss!837)) d!6411) d!6439))

(declare-fun bs!1896 () Bool)

(declare-fun d!6441 () Bool)

(assert (= bs!1896 (and d!6441 b!8218)))

(assert (=> bs!1896 (= (dynLambda!200 lambda!1841) (fold!11 (left!349 tree!25) f!585))))

(assert (=> bs!1896 m!11081))

(assert (=> (and b!8218 (= lambda!1841 (y!495 thiss!837)) d!6411) d!6441))

(push 1)

(assert (not b_lambda!4041))

(assert (not bs!1887))

(assert b_and!2769)

(assert (not bs!1895))

(assert (not bs!1884))

(assert (not b!8224))

(assert (not bs!1896))

(assert b_and!2779)

(assert (not bs!1885))

(assert (not b_next!1495))

(assert (not bs!1886))

(assert (not bs!1891))

(assert (not b_next!1485))

(assert (not bs!1890))

(assert b_and!2775)

(assert (not b!8212))

(assert (not b_next!1503))

(assert b_and!2767)

(assert (not bs!1888))

(assert b_and!2777)

(assert (not b_next!1483))

(assert (not b_lambda!4045))

(assert (not d!6405))

(assert (not b_lambda!4049))

(assert (not b_lambda!4051))

(assert (not b_lambda!4043))

(assert (not bs!1889))

(assert (not b_lambda!4047))

(assert (not b_lambda!4053))

(assert (not bs!1894))

(assert (not bs!1893))

(assert (not b_next!1501))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2769)

(assert b_and!2779)

(assert (not b_next!1495))

(assert (not b_next!1485))

(assert b_and!2775)

(assert (not b_next!1503))

(assert b_and!2767)

(assert b_and!2777)

(assert (not b_next!1483))

(assert (not b_next!1501))

(check-sat)

(pop 1)

