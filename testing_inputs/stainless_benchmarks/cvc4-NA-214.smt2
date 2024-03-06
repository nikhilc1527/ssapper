; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1618 () Bool)

(assert start!1618)

(declare-fun b_free!703 () Bool)

(declare-fun b_next!1505 () Bool)

(assert (=> start!1618 (= b_free!703 (not b_next!1505))))

(declare-fun tp!1187 () Bool)

(declare-fun b_and!2781 () Bool)

(assert (=> start!1618 (= tp!1187 b_and!2781)))

(declare-fun b_free!705 () Bool)

(declare-fun b_next!1507 () Bool)

(assert (=> start!1618 (= b_free!705 (not b_next!1507))))

(declare-fun tp!1186 () Bool)

(declare-fun b_and!2783 () Bool)

(assert (=> start!1618 (= tp!1186 b_and!2783)))

(declare-fun b!8243 () Bool)

(declare-fun b_free!707 () Bool)

(declare-fun b_next!1509 () Bool)

(assert (=> b!8243 (= b_free!707 (not b_next!1509))))

(declare-fun tp!1189 () Bool)

(declare-fun b_and!2785 () Bool)

(assert (=> b!8243 (= tp!1189 b_and!2785)))

(declare-fun b_free!709 () Bool)

(declare-fun b_next!1511 () Bool)

(assert (=> b!8243 (= b_free!709 (not b_next!1511))))

(declare-fun tp!1188 () Bool)

(declare-fun b_and!2787 () Bool)

(assert (=> b!8243 (= tp!1188 b_and!2787)))

(declare-fun b_free!711 () Bool)

(declare-fun b_next!1513 () Bool)

(assert (=> b!8243 (= b_free!711 (not b_next!1513))))

(declare-fun tp!1185 () Bool)

(declare-fun b_and!2789 () Bool)

(assert (=> b!8243 (= tp!1185 b_and!2789)))

(declare-fun f!603 () Int)

(declare-fun lambda!1851 () Int)

(declare-fun b_next!1515 () Bool)

(assert (=> start!1618 (= b_next!1505 (or (and start!1618 (= lambda!1851 f!603)) b_next!1515))))

(declare-fun b_next!1517 () Bool)

(declare-fun f!585 () Int)

(assert (=> start!1618 (= b_next!1507 (or (and start!1618 (= lambda!1851 f!585)) b_next!1517))))

(declare-fun b!8244 () Bool)

(assert (=> b!8244 true))

(declare-fun order!65 () Int)

(declare-fun order!67 () Int)

(declare-fun lambda!1852 () Int)

(declare-fun dynLambda!201 (Int Int) Int)

(declare-fun dynLambda!202 (Int Int) Int)

(assert (=> b!8244 (< (dynLambda!201 order!65 f!585) (dynLambda!202 order!67 lambda!1852))))

(assert (=> b!8244 true))

(declare-fun b_next!1519 () Bool)

(declare-datatypes () ((Balance!147 (Balance!148 (extraOpen!114 Int) (extraClose!114 Int)))))

(declare-datatypes () ((EqEvidence!114 (EqEvidence!115 (x!4487 Int) (y!498 Int) (evidence!124 Int)))))

(declare-fun thiss!855 () EqEvidence!114)

(assert (=> b!8243 (= b_next!1509 (or (and b!8244 (= lambda!1852 (x!4487 thiss!855))) b_next!1519))))

(declare-fun b_next!1521 () Bool)

(assert (=> b!8243 (= b_next!1511 (or (and b!8244 (= lambda!1852 (y!498 thiss!855))) b_next!1521))))

(declare-fun lambda!1853 () Int)

(assert (=> b!8244 (not (= lambda!1853 lambda!1852))))

(assert (=> b!8244 true))

(assert (=> b!8244 (< (dynLambda!201 order!65 f!585) (dynLambda!202 order!67 lambda!1853))))

(assert (=> b!8244 true))

(declare-fun b_next!1523 () Bool)

(assert (=> b!8243 (= b_next!1519 (or (and b!8244 (= lambda!1853 (x!4487 thiss!855))) b_next!1523))))

(declare-fun b_next!1525 () Bool)

(assert (=> b!8243 (= b_next!1521 (or (and b!8244 (= lambda!1853 (y!498 thiss!855))) b_next!1525))))

(assert (=> b!8244 true))

(declare-fun lambda!1854 () Int)

(declare-fun b_next!1527 () Bool)

(assert (=> b!8243 (= b_next!1513 (or (and b!8244 (= lambda!1854 (evidence!124 thiss!855))) b_next!1527))))

(declare-fun b!8242 () Bool)

(declare-fun res!2506 () Bool)

(declare-fun e!4717 () Bool)

(assert (=> b!8242 (=> (not res!2506) (not e!4717))))

(assert (=> b!8242 (= res!2506 (= f!603 f!585))))

(declare-fun e!4716 () Bool)

(assert (=> b!8243 (= e!4716 (and tp!1189 tp!1188 tp!1185))))

(declare-fun res!2511 () Bool)

(assert (=> b!8244 (=> (not res!2511) (not e!4717))))

(assert (=> b!8244 (= res!2511 (= thiss!855 (EqEvidence!115 lambda!1852 lambda!1853 lambda!1854)))))

(declare-fun b!8245 () Bool)

(declare-datatypes () ((List!190 (Nil!188) (Cons!187 (head!405 Balance!147) (tail!417 List!190)))))

(declare-fun thiss!884 () List!190)

(declare-fun isEmpty!156 (List!190) Bool)

(assert (=> b!8245 (= e!4717 (isEmpty!156 thiss!884))))

(declare-fun b!8246 () Bool)

(declare-fun res!2510 () Bool)

(assert (=> b!8246 (=> (not res!2510) (not e!4717))))

(declare-datatypes () ((Tree!36 (Branch!27 (left!353 Tree!36) (right!356 Tree!36)) (Leaf!109 (value!1278 Balance!147)))))

(declare-fun tree!25 () Tree!36)

(assert (=> b!8246 (= res!2510 (not (is-Leaf!109 tree!25)))))

(declare-fun res!2508 () Bool)

(assert (=> start!1618 (=> (not res!2508) (not e!4717))))

(assert (=> start!1618 (= res!2508 (= f!585 lambda!1851))))

(assert (=> start!1618 e!4717))

(assert (=> start!1618 true))

(assert (=> start!1618 tp!1187))

(assert (=> start!1618 tp!1186))

(declare-fun inv!289 (EqEvidence!114) Bool)

(assert (=> start!1618 (and (inv!289 thiss!855) e!4716)))

(declare-fun b!8247 () Bool)

(declare-fun res!2507 () Bool)

(assert (=> b!8247 (=> (not res!2507) (not e!4717))))

(declare-datatypes () ((ProofOps!94 (ProofOps!95 (prop!161 Bool)))))

(declare-fun thiss!829 () ProofOps!94)

(declare-fun fold!12 (Tree!36 Int) Balance!147)

(declare-fun foldRight1!43 (List!190 Int) Balance!147)

(declare-fun toList!36 (Tree!36) List!190)

(assert (=> b!8247 (= res!2507 (= thiss!829 (ProofOps!95 (= (fold!12 tree!25 f!585) (foldRight1!43 (toList!36 tree!25) f!585)))))))

(declare-fun b!8248 () Bool)

(declare-fun res!2509 () Bool)

(assert (=> b!8248 (=> (not res!2509) (not e!4717))))

(assert (=> b!8248 (= res!2509 (= thiss!884 (toList!36 (left!353 tree!25))))))

(assert (= (and start!1618 res!2508) b!8247))

(assert (= (and b!8247 res!2507) b!8246))

(assert (= (and b!8246 res!2510) b!8244))

(assert (= (and b!8244 res!2511) b!8248))

(assert (= (and b!8248 res!2509) b!8242))

(assert (= (and b!8242 res!2506) b!8245))

(assert (= start!1618 b!8243))

(declare-fun m!11087 () Bool)

(assert (=> b!8245 m!11087))

(declare-fun m!11089 () Bool)

(assert (=> start!1618 m!11089))

(declare-fun m!11091 () Bool)

(assert (=> b!8247 m!11091))

(declare-fun m!11093 () Bool)

(assert (=> b!8247 m!11093))

(assert (=> b!8247 m!11093))

(declare-fun m!11095 () Bool)

(assert (=> b!8247 m!11095))

(declare-fun m!11097 () Bool)

(assert (=> b!8248 m!11097))

(push 1)

(assert b_and!2783)

(assert (not b_next!1527))

(assert b_and!2781)

(assert (not b_next!1517))

(assert (not b!8245))

(assert b_and!2787)

(assert (not b_next!1515))

(assert (not b!8248))

(assert (not start!1618))

(assert (not b_next!1523))

(assert (not b!8247))

(assert b_and!2785)

(assert b_and!2789)

(assert (not b_next!1525))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2783)

(assert (not b_next!1527))

(assert b_and!2781)

(assert (not b_next!1517))

(assert b_and!2787)

(assert (not b_next!1515))

(assert (not b_next!1523))

(assert b_and!2785)

(assert b_and!2789)

(assert (not b_next!1525))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6443 () Bool)

(declare-fun lt!1510 () List!190)

(assert (=> d!6443 (not (isEmpty!156 lt!1510))))

(declare-fun e!4720 () List!190)

(assert (=> d!6443 (= lt!1510 e!4720)))

(declare-fun c!2847 () Bool)

(assert (=> d!6443 (= c!2847 (is-Leaf!109 (left!353 tree!25)))))

(assert (=> d!6443 (= (toList!36 (left!353 tree!25)) lt!1510)))

(declare-fun b!8259 () Bool)

(assert (=> b!8259 (= e!4720 (Cons!187 (value!1278 (left!353 tree!25)) Nil!188))))

(declare-fun b!8260 () Bool)

(declare-fun append!77 (List!190 List!190) List!190)

(assert (=> b!8260 (= e!4720 (append!77 (toList!36 (left!353 (left!353 tree!25))) (toList!36 (right!356 (left!353 tree!25)))))))

(assert (= (and d!6443 c!2847) b!8259))

(assert (= (and d!6443 (not c!2847)) b!8260))

(declare-fun m!11099 () Bool)

(assert (=> d!6443 m!11099))

(declare-fun m!11101 () Bool)

(assert (=> b!8260 m!11101))

(declare-fun m!11103 () Bool)

(assert (=> b!8260 m!11103))

(assert (=> b!8260 m!11101))

(assert (=> b!8260 m!11103))

(declare-fun m!11105 () Bool)

(assert (=> b!8260 m!11105))

(assert (=> b!8248 d!6443))

(declare-fun d!6445 () Bool)

(assert (=> d!6445 (= (isEmpty!156 thiss!884) (is-Nil!188 thiss!884))))

(assert (=> b!8245 d!6445))

(declare-fun bs!1898 () Bool)

(declare-fun b!8266 () Bool)

(assert (= bs!1898 (and b!8266 b!8244)))

(declare-fun lambda!1859 () Int)

(assert (=> bs!1898 (= (= (left!353 tree!25) tree!25) (= lambda!1859 lambda!1852))))

(assert (=> bs!1898 (not (= lambda!1859 lambda!1853))))

(assert (=> b!8266 true))

(assert (=> b!8266 (< (dynLambda!201 order!65 f!585) (dynLambda!202 order!67 lambda!1859))))

(assert (=> b!8266 true))

(declare-fun b_next!1529 () Bool)

(assert (=> b!8243 (= b_next!1523 (or (and b!8266 (= lambda!1859 (x!4487 thiss!855))) b_next!1529))))

(declare-fun b_next!1531 () Bool)

(assert (=> b!8243 (= b_next!1525 (or (and b!8266 (= lambda!1859 (y!498 thiss!855))) b_next!1531))))

(declare-fun lambda!1860 () Int)

(assert (=> bs!1898 (= (= (right!356 tree!25) tree!25) (= lambda!1860 lambda!1852))))

(assert (=> bs!1898 (not (= lambda!1860 lambda!1853))))

(assert (=> b!8266 (= (= (right!356 tree!25) (left!353 tree!25)) (= lambda!1860 lambda!1859))))

(assert (=> b!8266 true))

(assert (=> b!8266 (< (dynLambda!201 order!65 f!585) (dynLambda!202 order!67 lambda!1860))))

(assert (=> b!8266 true))

(declare-fun b_next!1533 () Bool)

(assert (=> b!8243 (= b_next!1529 (or (and b!8266 (= lambda!1860 (x!4487 thiss!855))) b_next!1533))))

(declare-fun b_next!1535 () Bool)

(assert (=> b!8243 (= b_next!1531 (or (and b!8266 (= lambda!1860 (y!498 thiss!855))) b_next!1535))))

(declare-fun e!4739 () Balance!147)

(declare-datatypes () ((tuple2!46 (tuple2!47 (_1!23 Balance!147) (_2!23 Balance!147)))))

(declare-fun lt!1513 () tuple2!46)

(declare-fun dynLambda!203 (Int Balance!147 Balance!147) Balance!147)

(assert (=> b!8266 (= e!4739 (dynLambda!203 f!585 (_1!23 lt!1513) (_2!23 lt!1513)))))

(declare-fun dynLambda!204 (Int) Balance!147)

(assert (=> b!8266 (= lt!1513 (tuple2!47 (dynLambda!204 lambda!1859) (dynLambda!204 lambda!1860)))))

(declare-fun d!6447 () Bool)

(declare-fun c!2850 () Bool)

(assert (=> d!6447 (= c!2850 (is-Leaf!109 tree!25))))

(assert (=> d!6447 (= (fold!12 tree!25 f!585) e!4739)))

(declare-fun b!8265 () Bool)

(assert (=> b!8265 (= e!4739 (value!1278 tree!25))))

(assert (= (and d!6447 c!2850) b!8265))

(assert (= (and d!6447 (not c!2850)) b!8266))

(declare-fun b_lambda!4055 () Bool)

(assert (=> (not b_lambda!4055) (not b!8266)))

(declare-fun tb!1505 () Bool)

(declare-fun t!1845 () Bool)

(assert (=> (and start!1618 (= f!603 f!585) t!1845) tb!1505))

(declare-fun result!1545 () Bool)

(assert (=> tb!1505 (= result!1545 true)))

(assert (=> b!8266 t!1845))

(declare-fun b_and!2791 () Bool)

(assert (= b_and!2781 (and (=> t!1845 result!1545) b_and!2791)))

(declare-fun t!1847 () Bool)

(declare-fun tb!1507 () Bool)

(assert (=> (and start!1618 (= f!585 f!585) t!1847) tb!1507))

(declare-fun result!1547 () Bool)

(assert (=> tb!1507 (= result!1547 true)))

(assert (=> b!8266 t!1847))

(declare-fun b_and!2793 () Bool)

(assert (= b_and!2783 (and (=> t!1847 result!1547) b_and!2793)))

(declare-fun b_lambda!4057 () Bool)

(assert (=> (not b_lambda!4057) (not b!8266)))

(declare-fun b_lambda!4059 () Bool)

(assert (=> (not b_lambda!4059) (not b!8266)))

(declare-fun m!11107 () Bool)

(assert (=> b!8266 m!11107))

(declare-fun m!11109 () Bool)

(assert (=> b!8266 m!11109))

(declare-fun m!11111 () Bool)

(assert (=> b!8266 m!11111))

(assert (=> b!8247 d!6447))

(declare-fun d!6449 () Bool)

(declare-fun c!2853 () Bool)

(assert (=> d!6449 (= c!2853 (and (is-Cons!187 (toList!36 tree!25)) (is-Nil!188 (tail!417 (toList!36 tree!25)))))))

(declare-fun e!4742 () Balance!147)

(assert (=> d!6449 (= (foldRight1!43 (toList!36 tree!25) f!585) e!4742)))

(declare-fun b!8271 () Bool)

(assert (=> b!8271 (= e!4742 (head!405 (toList!36 tree!25)))))

(declare-fun b!8272 () Bool)

(assert (=> b!8272 (= e!4742 (dynLambda!203 f!585 (head!405 (toList!36 tree!25)) (foldRight1!43 (tail!417 (toList!36 tree!25)) f!585)))))

(assert (= (and d!6449 c!2853) b!8271))

(assert (= (and d!6449 (not c!2853)) b!8272))

(declare-fun b_lambda!4061 () Bool)

(assert (=> (not b_lambda!4061) (not b!8272)))

(declare-fun t!1849 () Bool)

(declare-fun tb!1509 () Bool)

(assert (=> (and start!1618 (= f!603 f!585) t!1849) tb!1509))

(declare-fun result!1549 () Bool)

(assert (=> tb!1509 (= result!1549 true)))

(assert (=> b!8272 t!1849))

(declare-fun b_and!2795 () Bool)

(assert (= b_and!2791 (and (=> t!1849 result!1549) b_and!2795)))

(declare-fun t!1851 () Bool)

(declare-fun tb!1511 () Bool)

(assert (=> (and start!1618 (= f!585 f!585) t!1851) tb!1511))

(declare-fun result!1551 () Bool)

(assert (=> tb!1511 (= result!1551 true)))

(assert (=> b!8272 t!1851))

(declare-fun b_and!2797 () Bool)

(assert (= b_and!2793 (and (=> t!1851 result!1551) b_and!2797)))

(declare-fun m!11113 () Bool)

(assert (=> b!8272 m!11113))

(assert (=> b!8272 m!11113))

(declare-fun m!11115 () Bool)

(assert (=> b!8272 m!11115))

(assert (=> b!8247 d!6449))

(declare-fun d!6451 () Bool)

(declare-fun lt!1514 () List!190)

(assert (=> d!6451 (not (isEmpty!156 lt!1514))))

(declare-fun e!4743 () List!190)

(assert (=> d!6451 (= lt!1514 e!4743)))

(declare-fun c!2854 () Bool)

(assert (=> d!6451 (= c!2854 (is-Leaf!109 tree!25))))

(assert (=> d!6451 (= (toList!36 tree!25) lt!1514)))

(declare-fun b!8273 () Bool)

(assert (=> b!8273 (= e!4743 (Cons!187 (value!1278 tree!25) Nil!188))))

(declare-fun b!8274 () Bool)

(assert (=> b!8274 (= e!4743 (append!77 (toList!36 (left!353 tree!25)) (toList!36 (right!356 tree!25))))))

(assert (= (and d!6451 c!2854) b!8273))

(assert (= (and d!6451 (not c!2854)) b!8274))

(declare-fun m!11117 () Bool)

(assert (=> d!6451 m!11117))

(assert (=> b!8274 m!11097))

(declare-fun m!11119 () Bool)

(assert (=> b!8274 m!11119))

(assert (=> b!8274 m!11097))

(assert (=> b!8274 m!11119))

(declare-fun m!11121 () Bool)

(assert (=> b!8274 m!11121))

(assert (=> b!8247 d!6451))

(declare-fun d!6453 () Bool)

(declare-fun res!2515 () Bool)

(declare-fun e!4746 () Bool)

(assert (=> d!6453 (=> (not res!2515) (not e!4746))))

(assert (=> d!6453 (= res!2515 (= (dynLambda!204 (x!4487 thiss!855)) (dynLambda!204 (y!498 thiss!855))))))

(assert (=> d!6453 (= (inv!289 thiss!855) e!4746)))

(declare-fun b!8277 () Bool)

(declare-fun dynLambda!205 (Int) Bool)

(assert (=> b!8277 (= e!4746 (dynLambda!205 (evidence!124 thiss!855)))))

(assert (= (and d!6453 res!2515) b!8277))

(declare-fun b_lambda!4063 () Bool)

(assert (=> (not b_lambda!4063) (not d!6453)))

(declare-fun t!1853 () Bool)

(declare-fun tb!1513 () Bool)

(assert (=> (and b!8243 (= (x!4487 thiss!855) (x!4487 thiss!855)) t!1853) tb!1513))

(declare-fun result!1553 () Bool)

(assert (=> tb!1513 (= result!1553 true)))

(assert (=> d!6453 t!1853))

(declare-fun b_and!2799 () Bool)

(assert (= b_and!2785 (and (=> t!1853 result!1553) b_and!2799)))

(declare-fun t!1855 () Bool)

(declare-fun tb!1515 () Bool)

(assert (=> (and b!8243 (= (y!498 thiss!855) (x!4487 thiss!855)) t!1855) tb!1515))

(declare-fun result!1555 () Bool)

(assert (=> tb!1515 (= result!1555 true)))

(assert (=> d!6453 t!1855))

(declare-fun b_and!2801 () Bool)

(assert (= b_and!2787 (and (=> t!1855 result!1555) b_and!2801)))

(declare-fun b_lambda!4065 () Bool)

(assert (=> (not b_lambda!4065) (not d!6453)))

(declare-fun t!1857 () Bool)

(declare-fun tb!1517 () Bool)

(assert (=> (and b!8243 (= (x!4487 thiss!855) (y!498 thiss!855)) t!1857) tb!1517))

(declare-fun result!1557 () Bool)

(assert (=> tb!1517 (= result!1557 true)))

(assert (=> d!6453 t!1857))

(declare-fun b_and!2803 () Bool)

(assert (= b_and!2799 (and (=> t!1857 result!1557) b_and!2803)))

(declare-fun t!1859 () Bool)

(declare-fun tb!1519 () Bool)

(assert (=> (and b!8243 (= (y!498 thiss!855) (y!498 thiss!855)) t!1859) tb!1519))

(declare-fun result!1559 () Bool)

(assert (=> tb!1519 (= result!1559 true)))

(assert (=> d!6453 t!1859))

(declare-fun b_and!2805 () Bool)

(assert (= b_and!2801 (and (=> t!1859 result!1559) b_and!2805)))

(declare-fun b_lambda!4067 () Bool)

(assert (=> (not b_lambda!4067) (not b!8277)))

(declare-fun t!1861 () Bool)

(declare-fun tb!1521 () Bool)

(assert (=> (and b!8243 (= (evidence!124 thiss!855) (evidence!124 thiss!855)) t!1861) tb!1521))

(declare-fun result!1561 () Bool)

(assert (=> tb!1521 (= result!1561 true)))

(assert (=> b!8277 t!1861))

(declare-fun b_and!2807 () Bool)

(assert (= b_and!2789 (and (=> t!1861 result!1561) b_and!2807)))

(declare-fun m!11123 () Bool)

(assert (=> d!6453 m!11123))

(declare-fun m!11125 () Bool)

(assert (=> d!6453 m!11125))

(declare-fun m!11127 () Bool)

(assert (=> b!8277 m!11127))

(assert (=> start!1618 d!6453))

(declare-fun b_lambda!4069 () Bool)

(assert (= b_lambda!4061 (or (and start!1618 (= lambda!1851 f!585)) (and start!1618 b_free!703 (= f!603 f!585)) (and start!1618 b_free!705) b_lambda!4069)))

(declare-fun bs!1899 () Bool)

(declare-fun d!6455 () Bool)

(assert (= bs!1899 (and d!6455 start!1618)))

(declare-fun ++!3 (Balance!147 Balance!147) Balance!147)

(assert (=> bs!1899 (= (dynLambda!203 lambda!1851 (head!405 (toList!36 tree!25)) (foldRight1!43 (tail!417 (toList!36 tree!25)) f!585)) (++!3 (head!405 (toList!36 tree!25)) (foldRight1!43 (tail!417 (toList!36 tree!25)) f!585)))))

(assert (=> bs!1899 m!11113))

(declare-fun m!11129 () Bool)

(assert (=> bs!1899 m!11129))

(assert (=> (and start!1618 (= lambda!1851 f!585) b!8272) d!6455))

(declare-fun b_lambda!4071 () Bool)

(assert (= b_lambda!4057 (or b!8266 b_lambda!4071)))

(declare-fun bs!1900 () Bool)

(declare-fun d!6457 () Bool)

(assert (= bs!1900 (and d!6457 b!8266)))

(assert (=> bs!1900 (= (dynLambda!204 lambda!1859) (fold!12 (left!353 tree!25) f!585))))

(declare-fun m!11131 () Bool)

(assert (=> bs!1900 m!11131))

(assert (=> b!8266 d!6457))

(declare-fun b_lambda!4073 () Bool)

(assert (= b_lambda!4065 (or (and b!8266 (= lambda!1859 (y!498 thiss!855))) (and b!8243 b_free!709) (and b!8266 (= lambda!1860 (y!498 thiss!855))) (and b!8244 (= lambda!1852 (y!498 thiss!855))) (and b!8243 b_free!707 (= (x!4487 thiss!855) (y!498 thiss!855))) (and b!8244 (= lambda!1853 (y!498 thiss!855))) b_lambda!4073)))

(declare-fun bs!1901 () Bool)

(declare-fun d!6459 () Bool)

(assert (= bs!1901 (and d!6459 b!8266)))

(assert (=> bs!1901 (= (dynLambda!204 lambda!1860) (fold!12 (right!356 tree!25) f!585))))

(declare-fun m!11133 () Bool)

(assert (=> bs!1901 m!11133))

(assert (=> (and b!8266 (= lambda!1860 (y!498 thiss!855)) d!6453) d!6459))

(declare-fun bs!1902 () Bool)

(declare-fun d!6461 () Bool)

(assert (= bs!1902 (and d!6461 b!8244)))

(assert (=> bs!1902 (= (dynLambda!204 lambda!1853) (dynLambda!203 f!585 (fold!12 (left!353 tree!25) f!585) (fold!12 (right!356 tree!25) f!585)))))

(declare-fun b_lambda!4083 () Bool)

(assert (=> (not b_lambda!4083) (not bs!1902)))

(declare-fun t!1863 () Bool)

(declare-fun tb!1523 () Bool)

(assert (=> (and start!1618 (= f!603 f!585) t!1863) tb!1523))

(declare-fun result!1563 () Bool)

(assert (=> tb!1523 (= result!1563 true)))

(assert (=> bs!1902 t!1863))

(declare-fun b_and!2809 () Bool)

(assert (= b_and!2795 (and (=> t!1863 result!1563) b_and!2809)))

(declare-fun t!1865 () Bool)

(declare-fun tb!1525 () Bool)

(assert (=> (and start!1618 (= f!585 f!585) t!1865) tb!1525))

(declare-fun result!1565 () Bool)

(assert (=> tb!1525 (= result!1565 true)))

(assert (=> bs!1902 t!1865))

(declare-fun b_and!2811 () Bool)

(assert (= b_and!2797 (and (=> t!1865 result!1565) b_and!2811)))

(assert (=> bs!1902 m!11131))

(assert (=> bs!1902 m!11133))

(assert (=> bs!1902 m!11131))

(assert (=> bs!1902 m!11133))

(declare-fun m!11135 () Bool)

(assert (=> bs!1902 m!11135))

(assert (=> (and b!8244 (= lambda!1853 (y!498 thiss!855)) d!6453) d!6461))

(declare-fun bs!1903 () Bool)

(declare-fun d!6463 () Bool)

(assert (= bs!1903 (and d!6463 b!8244)))

(assert (=> bs!1903 (= (dynLambda!204 lambda!1852) (fold!12 tree!25 f!585))))

(assert (=> bs!1903 m!11091))

(assert (=> (and b!8244 (= lambda!1852 (y!498 thiss!855)) d!6453) d!6463))

(declare-fun bs!1904 () Bool)

(declare-fun d!6465 () Bool)

(assert (= bs!1904 (and d!6465 b!8266)))

(assert (=> bs!1904 (= (dynLambda!204 lambda!1859) (fold!12 (left!353 tree!25) f!585))))

(assert (=> bs!1904 m!11131))

(assert (=> (and b!8266 (= lambda!1859 (y!498 thiss!855)) d!6453) d!6465))

(declare-fun b_lambda!4075 () Bool)

(assert (= b_lambda!4055 (or (and start!1618 (= lambda!1851 f!585)) (and start!1618 b_free!703 (= f!603 f!585)) (and start!1618 b_free!705) b_lambda!4075)))

(declare-fun bs!1905 () Bool)

(declare-fun d!6467 () Bool)

(assert (= bs!1905 (and d!6467 start!1618)))

(assert (=> bs!1905 (= (dynLambda!203 lambda!1851 (_1!23 lt!1513) (_2!23 lt!1513)) (++!3 (_1!23 lt!1513) (_2!23 lt!1513)))))

(declare-fun m!11137 () Bool)

(assert (=> bs!1905 m!11137))

(assert (=> (and start!1618 (= lambda!1851 f!585) b!8266) d!6467))

(declare-fun b_lambda!4077 () Bool)

(assert (= b_lambda!4063 (or (and b!8244 (= lambda!1853 (x!4487 thiss!855))) (and b!8266 (= lambda!1859 (x!4487 thiss!855))) (and b!8244 (= lambda!1852 (x!4487 thiss!855))) (and b!8243 b_free!707) (and b!8266 (= lambda!1860 (x!4487 thiss!855))) (and b!8243 b_free!709 (= (y!498 thiss!855) (x!4487 thiss!855))) b_lambda!4077)))

(declare-fun bs!1906 () Bool)

(declare-fun d!6469 () Bool)

(assert (= bs!1906 (and d!6469 b!8266)))

(assert (=> bs!1906 (= (dynLambda!204 lambda!1859) (fold!12 (left!353 tree!25) f!585))))

(assert (=> bs!1906 m!11131))

(assert (=> (and b!8266 (= lambda!1859 (x!4487 thiss!855)) d!6453) d!6469))

(declare-fun bs!1907 () Bool)

(declare-fun d!6471 () Bool)

(assert (= bs!1907 (and d!6471 b!8266)))

(assert (=> bs!1907 (= (dynLambda!204 lambda!1860) (fold!12 (right!356 tree!25) f!585))))

(assert (=> bs!1907 m!11133))

(assert (=> (and b!8266 (= lambda!1860 (x!4487 thiss!855)) d!6453) d!6471))

(declare-fun bs!1908 () Bool)

(declare-fun d!6473 () Bool)

(assert (= bs!1908 (and d!6473 b!8244)))

(assert (=> bs!1908 (= (dynLambda!204 lambda!1852) (fold!12 tree!25 f!585))))

(assert (=> bs!1908 m!11091))

(assert (=> (and b!8244 (= lambda!1852 (x!4487 thiss!855)) d!6453) d!6473))

(declare-fun bs!1909 () Bool)

(declare-fun d!6475 () Bool)

(assert (= bs!1909 (and d!6475 b!8244)))

(assert (=> bs!1909 (= (dynLambda!204 lambda!1853) (dynLambda!203 f!585 (fold!12 (left!353 tree!25) f!585) (fold!12 (right!356 tree!25) f!585)))))

(declare-fun b_lambda!4085 () Bool)

(assert (=> (not b_lambda!4085) (not bs!1909)))

(assert (=> bs!1909 t!1863))

(declare-fun b_and!2813 () Bool)

(assert (= b_and!2809 (and (=> t!1863 result!1563) b_and!2813)))

(assert (=> bs!1909 t!1865))

(declare-fun b_and!2815 () Bool)

(assert (= b_and!2811 (and (=> t!1865 result!1565) b_and!2815)))

(assert (=> bs!1909 m!11131))

(assert (=> bs!1909 m!11133))

(assert (=> bs!1909 m!11131))

(assert (=> bs!1909 m!11133))

(assert (=> bs!1909 m!11135))

(assert (=> (and b!8244 (= lambda!1853 (x!4487 thiss!855)) d!6453) d!6475))

(declare-fun b_lambda!4079 () Bool)

(assert (= b_lambda!4059 (or b!8266 b_lambda!4079)))

(declare-fun bs!1910 () Bool)

(declare-fun d!6477 () Bool)

(assert (= bs!1910 (and d!6477 b!8266)))

(assert (=> bs!1910 (= (dynLambda!204 lambda!1860) (fold!12 (right!356 tree!25) f!585))))

(assert (=> bs!1910 m!11133))

(assert (=> b!8266 d!6477))

(declare-fun b_lambda!4081 () Bool)

(assert (= b_lambda!4067 (or (and b!8244 (= lambda!1854 (evidence!124 thiss!855))) (and b!8243 b_free!711) b_lambda!4081)))

(declare-fun bs!1911 () Bool)

(declare-fun d!6479 () Bool)

(assert (= bs!1911 (and d!6479 b!8244)))

(declare-fun fold_foldRight1_equivalence!0 (Tree!36) Bool)

(assert (=> bs!1911 (= (dynLambda!205 lambda!1854) (fold_foldRight1_equivalence!0 (left!353 tree!25)))))

(declare-fun m!11139 () Bool)

(assert (=> bs!1911 m!11139))

(assert (=> (and b!8244 (= lambda!1854 (evidence!124 thiss!855)) b!8277) d!6479))

(push 1)

(assert (not b_lambda!4081))

(assert (not d!6443))

(assert (not b_lambda!4069))

(assert (not b_lambda!4075))

(assert b_and!2807)

(assert (not b!8272))

(assert b_and!2805)

(assert (not bs!1900))

(assert (not bs!1902))

(assert (not d!6451))

(assert (not b!8274))

(assert (not b_next!1533))

(assert b_and!2803)

(assert (not b_next!1527))

(assert (not bs!1904))

(assert (not b_next!1517))

(assert (not b_lambda!4077))

(assert (not bs!1901))

(assert (not bs!1910))

(assert (not b_lambda!4083))

(assert (not bs!1903))

(assert (not b_lambda!4085))

(assert (not b_next!1515))

(assert (not bs!1908))

(assert (not bs!1906))

(assert (not b_lambda!4073))

(assert (not bs!1909))

(assert (not bs!1911))

(assert b_and!2815)

(assert (not bs!1907))

(assert (not b!8260))

(assert b_and!2813)

(assert (not bs!1899))

(assert (not b_lambda!4079))

(assert (not bs!1905))

(assert (not b_lambda!4071))

(assert (not b_next!1535))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2807)

(assert b_and!2805)

(assert (not b_next!1533))

(assert b_and!2803)

(assert (not b_next!1527))

(assert (not b_next!1517))

(assert (not b_next!1515))

(assert b_and!2815)

(assert b_and!2813)

(assert (not b_next!1535))

(check-sat)

(pop 1)

