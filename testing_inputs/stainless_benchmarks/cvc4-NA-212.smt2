; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1594 () Bool)

(assert start!1594)

(declare-fun b_free!683 () Bool)

(declare-fun b_next!1441 () Bool)

(assert (=> start!1594 (= b_free!683 (not b_next!1441))))

(declare-fun tp!1158 () Bool)

(declare-fun b_and!2725 () Bool)

(assert (=> start!1594 (= tp!1158 b_and!2725)))

(declare-fun b_free!685 () Bool)

(declare-fun b_next!1443 () Bool)

(assert (=> start!1594 (= b_free!685 (not b_next!1443))))

(declare-fun tp!1156 () Bool)

(declare-fun b_and!2727 () Bool)

(assert (=> start!1594 (= tp!1156 b_and!2727)))

(declare-fun b!8154 () Bool)

(declare-fun b_free!687 () Bool)

(declare-fun b_next!1445 () Bool)

(assert (=> b!8154 (= b_free!687 (not b_next!1445))))

(declare-fun tp!1159 () Bool)

(declare-fun b_and!2729 () Bool)

(assert (=> b!8154 (= tp!1159 b_and!2729)))

(declare-fun b_free!689 () Bool)

(declare-fun b_next!1447 () Bool)

(assert (=> b!8154 (= b_free!689 (not b_next!1447))))

(declare-fun tp!1157 () Bool)

(declare-fun b_and!2731 () Bool)

(assert (=> b!8154 (= tp!1157 b_and!2731)))

(declare-fun b_free!691 () Bool)

(declare-fun b_next!1449 () Bool)

(assert (=> b!8154 (= b_free!691 (not b_next!1449))))

(declare-fun tp!1155 () Bool)

(declare-fun b_and!2733 () Bool)

(assert (=> b!8154 (= tp!1155 b_and!2733)))

(declare-fun b_next!1451 () Bool)

(declare-fun f!585 () Int)

(declare-fun lambda!1815 () Int)

(assert (=> start!1594 (= b_next!1441 (or (and start!1594 (= lambda!1815 f!585)) b_next!1451))))

(declare-fun b_next!1453 () Bool)

(declare-fun f!592 () Int)

(assert (=> start!1594 (= b_next!1443 (or (and start!1594 (= lambda!1815 f!592)) b_next!1453))))

(declare-fun b!8156 () Bool)

(assert (=> b!8156 true))

(declare-fun lambda!1816 () Int)

(declare-fun order!59 () Int)

(declare-fun order!57 () Int)

(declare-fun dynLambda!191 (Int Int) Int)

(declare-fun dynLambda!192 (Int Int) Int)

(assert (=> b!8156 (< (dynLambda!191 order!57 f!585) (dynLambda!192 order!59 lambda!1816))))

(assert (=> b!8156 true))

(declare-datatypes () ((Balance!143 (Balance!144 (extraOpen!112 Int) (extraClose!112 Int)))))

(declare-datatypes () ((EqEvidence!110 (EqEvidence!111 (x!4434 Int) (y!492 Int) (evidence!122 Int)))))

(declare-fun thiss!838 () EqEvidence!110)

(declare-fun b_next!1455 () Bool)

(assert (=> b!8154 (= b_next!1445 (or (and b!8156 (= lambda!1816 (x!4434 thiss!838))) b_next!1455))))

(declare-fun b_next!1457 () Bool)

(assert (=> b!8154 (= b_next!1447 (or (and b!8156 (= lambda!1816 (y!492 thiss!838))) b_next!1457))))

(declare-fun lambda!1817 () Int)

(assert (=> b!8156 (not (= lambda!1817 lambda!1816))))

(assert (=> b!8156 true))

(declare-fun dynLambda!193 (Int) Balance!143)

(assert (=> (and b!8154 b!8156 (= (dynLambda!193 lambda!1817) (dynLambda!193 (x!4434 thiss!838)))) (= lambda!1817 (x!4434 thiss!838))))

(assert (=> (and b!8154 b!8156 (= (dynLambda!193 lambda!1817) (dynLambda!193 (y!492 thiss!838)))) (= lambda!1817 (y!492 thiss!838))))

(declare-fun b_next!1459 () Bool)

(assert (=> b!8154 (= b_next!1455 (or (and b!8156 (= lambda!1817 (x!4434 thiss!838))) b_next!1459))))

(declare-fun b_next!1461 () Bool)

(assert (=> b!8154 (= b_next!1457 (or (and b!8156 (= lambda!1817 (y!492 thiss!838))) b_next!1461))))

(declare-fun m!10997 () Bool)

(assert (=> b!8156 m!10997))

(declare-fun lambda!1818 () Int)

(declare-fun dynLambda!194 (Int) Bool)

(assert (=> (and b!8154 b!8156 (= (dynLambda!194 lambda!1818) (dynLambda!194 (evidence!122 thiss!838)))) (= lambda!1818 (evidence!122 thiss!838))))

(declare-fun b_next!1463 () Bool)

(assert (=> b!8154 (= b_next!1449 (or (and b!8156 (= lambda!1818 (evidence!122 thiss!838))) b_next!1463))))

(declare-fun b!8151 () Bool)

(declare-fun res!2467 () Bool)

(declare-fun e!4648 () Bool)

(assert (=> b!8151 (=> (not res!2467) (not e!4648))))

(declare-datatypes () ((Tree!34 (Branch!25 (left!345 Tree!34) (right!348 Tree!34)) (Leaf!107 (value!1276 Balance!143)))))

(declare-fun tree!25 () Tree!34)

(assert (=> b!8151 (= res!2467 (is-Leaf!107 tree!25))))

(declare-fun res!2464 () Bool)

(assert (=> start!1594 (=> (not res!2464) (not e!4648))))

(assert (=> start!1594 (= res!2464 (= f!585 lambda!1815))))

(assert (=> start!1594 e!4648))

(assert (=> start!1594 true))

(assert (=> start!1594 tp!1158))

(declare-fun e!4649 () Bool)

(declare-fun inv!287 (EqEvidence!110) Bool)

(assert (=> start!1594 (and (inv!287 thiss!838) e!4649)))

(assert (=> start!1594 tp!1156))

(declare-fun b!8152 () Bool)

(declare-fun res!2466 () Bool)

(assert (=> b!8152 (=> (not res!2466) (not e!4648))))

(declare-datatypes () ((List!188 (Nil!186) (Cons!185 (head!403 Balance!143) (tail!415 List!188)))))

(declare-fun thiss!845 () List!188)

(assert (=> b!8152 (= res!2466 (and (= thiss!845 (Cons!185 (value!1276 tree!25) Nil!186)) (= f!592 f!585)))))

(declare-fun b!8153 () Bool)

(declare-fun isEmpty!154 (List!188) Bool)

(assert (=> b!8153 (= e!4648 (isEmpty!154 thiss!845))))

(assert (=> b!8154 (= e!4649 (and tp!1159 tp!1157 tp!1155))))

(declare-fun b!8155 () Bool)

(declare-fun res!2465 () Bool)

(assert (=> b!8155 (=> (not res!2465) (not e!4648))))

(declare-datatypes () ((ProofOps!90 (ProofOps!91 (prop!159 Bool)))))

(declare-fun thiss!829 () ProofOps!90)

(declare-fun fold!10 (Tree!34 Int) Balance!143)

(declare-fun foldRight1!41 (List!188 Int) Balance!143)

(declare-fun toList!34 (Tree!34) List!188)

(assert (=> b!8155 (= res!2465 (= thiss!829 (ProofOps!91 (= (fold!10 tree!25 f!585) (foldRight1!41 (toList!34 tree!25) f!585)))))))

(declare-fun res!2463 () Bool)

(assert (=> b!8156 (=> (not res!2463) (not e!4648))))

(assert (=> b!8156 (= res!2463 (= thiss!838 (EqEvidence!111 lambda!1816 lambda!1817 lambda!1818)))))

(assert (= (and start!1594 res!2464) b!8155))

(assert (= (and b!8155 res!2465) b!8151))

(assert (= (and b!8151 res!2467) b!8156))

(assert (= (and b!8156 res!2463) b!8152))

(assert (= (and b!8152 res!2466) b!8153))

(assert (= start!1594 b!8154))

(declare-fun m!10999 () Bool)

(assert (=> start!1594 m!10999))

(declare-fun m!11001 () Bool)

(assert (=> b!8153 m!11001))

(declare-fun m!11003 () Bool)

(assert (=> b!8155 m!11003))

(declare-fun m!11005 () Bool)

(assert (=> b!8155 m!11005))

(assert (=> b!8155 m!11005))

(declare-fun m!11007 () Bool)

(assert (=> b!8155 m!11007))

(push 1)

(assert (not b_next!1451))

(assert (not b!8153))

(assert (not b!8156))

(assert (not b_next!1463))

(assert b_and!2733)

(assert (not b_next!1453))

(assert (not start!1594))

(assert (not b_next!1461))

(assert b_and!2729)

(assert b_and!2725)

(assert (not b!8155))

(assert b_and!2727)

(assert b_and!2731)

(assert (not b_next!1459))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1451))

(assert (not b_next!1463))

(assert b_and!2733)

(assert (not b_next!1453))

(assert (not b_next!1461))

(assert b_and!2729)

(assert b_and!2725)

(assert b_and!2727)

(assert b_and!2731)

(assert (not b_next!1459))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6367 () Bool)

(declare-fun res!2470 () Bool)

(declare-fun e!4652 () Bool)

(assert (=> d!6367 (=> (not res!2470) (not e!4652))))

(assert (=> d!6367 (= res!2470 (= (dynLambda!193 (x!4434 thiss!838)) (dynLambda!193 (y!492 thiss!838))))))

(assert (=> d!6367 (= (inv!287 thiss!838) e!4652)))

(declare-fun b!8163 () Bool)

(assert (=> b!8163 (= e!4652 (dynLambda!194 (evidence!122 thiss!838)))))

(assert (= (and d!6367 res!2470) b!8163))

(declare-fun b_lambda!3999 () Bool)

(assert (=> (not b_lambda!3999) (not d!6367)))

(declare-fun t!1809 () Bool)

(declare-fun tb!1469 () Bool)

(assert (=> (and b!8154 (= (x!4434 thiss!838) (x!4434 thiss!838)) t!1809) tb!1469))

(declare-fun result!1509 () Bool)

(assert (=> tb!1469 (= result!1509 true)))

(assert (=> d!6367 t!1809))

(declare-fun b_and!2735 () Bool)

(assert (= b_and!2729 (and (=> t!1809 result!1509) b_and!2735)))

(declare-fun t!1811 () Bool)

(declare-fun tb!1471 () Bool)

(assert (=> (and b!8154 (= (y!492 thiss!838) (x!4434 thiss!838)) t!1811) tb!1471))

(declare-fun result!1511 () Bool)

(assert (=> tb!1471 (= result!1511 true)))

(assert (=> d!6367 t!1811))

(declare-fun b_and!2737 () Bool)

(assert (= b_and!2731 (and (=> t!1811 result!1511) b_and!2737)))

(declare-fun b_lambda!4001 () Bool)

(assert (=> (not b_lambda!4001) (not d!6367)))

(declare-fun t!1813 () Bool)

(declare-fun tb!1473 () Bool)

(assert (=> (and b!8154 (= (x!4434 thiss!838) (y!492 thiss!838)) t!1813) tb!1473))

(declare-fun result!1513 () Bool)

(assert (=> tb!1473 (= result!1513 true)))

(assert (=> d!6367 t!1813))

(declare-fun b_and!2739 () Bool)

(assert (= b_and!2735 (and (=> t!1813 result!1513) b_and!2739)))

(declare-fun t!1815 () Bool)

(declare-fun tb!1475 () Bool)

(assert (=> (and b!8154 (= (y!492 thiss!838) (y!492 thiss!838)) t!1815) tb!1475))

(declare-fun result!1515 () Bool)

(assert (=> tb!1475 (= result!1515 true)))

(assert (=> d!6367 t!1815))

(declare-fun b_and!2741 () Bool)

(assert (= b_and!2737 (and (=> t!1815 result!1515) b_and!2741)))

(declare-fun b_lambda!4003 () Bool)

(assert (=> (not b_lambda!4003) (not b!8163)))

(declare-fun t!1817 () Bool)

(declare-fun tb!1477 () Bool)

(assert (=> (and b!8154 (= (evidence!122 thiss!838) (evidence!122 thiss!838)) t!1817) tb!1477))

(declare-fun result!1517 () Bool)

(assert (=> tb!1477 (= result!1517 true)))

(assert (=> b!8163 t!1817))

(declare-fun b_and!2743 () Bool)

(assert (= b_and!2733 (and (=> t!1817 result!1517) b_and!2743)))

(declare-fun m!11009 () Bool)

(assert (=> d!6367 m!11009))

(declare-fun m!11011 () Bool)

(assert (=> d!6367 m!11011))

(declare-fun m!11013 () Bool)

(assert (=> b!8163 m!11013))

(assert (=> start!1594 d!6367))

(declare-fun d!6369 () Bool)

(assert (=> d!6369 (= (isEmpty!154 thiss!845) (is-Nil!186 thiss!845))))

(assert (=> b!8153 d!6369))

(declare-fun bs!1868 () Bool)

(declare-fun b!8169 () Bool)

(assert (= bs!1868 (and b!8169 b!8156)))

(declare-fun lambda!1823 () Int)

(assert (=> bs!1868 (= (= (left!345 tree!25) tree!25) (= lambda!1823 lambda!1816))))

(assert (=> bs!1868 (not (= lambda!1823 lambda!1817))))

(assert (=> b!8169 true))

(assert (=> b!8169 (< (dynLambda!191 order!57 f!585) (dynLambda!192 order!59 lambda!1823))))

(assert (=> b!8169 true))

(declare-fun b_next!1465 () Bool)

(assert (=> b!8154 (= b_next!1459 (or (and b!8169 (= lambda!1823 (x!4434 thiss!838))) b_next!1465))))

(declare-fun b_next!1467 () Bool)

(assert (=> b!8154 (= b_next!1461 (or (and b!8169 (= lambda!1823 (y!492 thiss!838))) b_next!1467))))

(declare-fun lambda!1824 () Int)

(assert (=> bs!1868 (= (= (right!348 tree!25) tree!25) (= lambda!1824 lambda!1816))))

(assert (=> bs!1868 (not (= lambda!1824 lambda!1817))))

(assert (=> b!8169 (= (= (right!348 tree!25) (left!345 tree!25)) (= lambda!1824 lambda!1823))))

(assert (=> b!8169 true))

(assert (=> b!8169 (< (dynLambda!191 order!57 f!585) (dynLambda!192 order!59 lambda!1824))))

(assert (=> b!8169 true))

(declare-fun b_next!1469 () Bool)

(assert (=> b!8154 (= b_next!1465 (or (and b!8169 (= lambda!1824 (x!4434 thiss!838))) b_next!1469))))

(declare-fun b_next!1471 () Bool)

(assert (=> b!8154 (= b_next!1467 (or (and b!8169 (= lambda!1824 (y!492 thiss!838))) b_next!1471))))

(declare-fun e!4671 () Balance!143)

(declare-datatypes () ((tuple2!42 (tuple2!43 (_1!21 Balance!143) (_2!21 Balance!143)))))

(declare-fun lt!1498 () tuple2!42)

(declare-fun dynLambda!195 (Int Balance!143 Balance!143) Balance!143)

(assert (=> b!8169 (= e!4671 (dynLambda!195 f!585 (_1!21 lt!1498) (_2!21 lt!1498)))))

(assert (=> b!8169 (= lt!1498 (tuple2!43 (dynLambda!193 lambda!1823) (dynLambda!193 lambda!1824)))))

(declare-fun d!6371 () Bool)

(declare-fun c!2829 () Bool)

(assert (=> d!6371 (= c!2829 (is-Leaf!107 tree!25))))

(assert (=> d!6371 (= (fold!10 tree!25 f!585) e!4671)))

(declare-fun b!8168 () Bool)

(assert (=> b!8168 (= e!4671 (value!1276 tree!25))))

(assert (= (and d!6371 c!2829) b!8168))

(assert (= (and d!6371 (not c!2829)) b!8169))

(declare-fun b_lambda!4005 () Bool)

(assert (=> (not b_lambda!4005) (not b!8169)))

(declare-fun t!1819 () Bool)

(declare-fun tb!1479 () Bool)

(assert (=> (and start!1594 (= f!585 f!585) t!1819) tb!1479))

(declare-fun result!1519 () Bool)

(assert (=> tb!1479 (= result!1519 true)))

(assert (=> b!8169 t!1819))

(declare-fun b_and!2745 () Bool)

(assert (= b_and!2725 (and (=> t!1819 result!1519) b_and!2745)))

(declare-fun t!1821 () Bool)

(declare-fun tb!1481 () Bool)

(assert (=> (and start!1594 (= f!592 f!585) t!1821) tb!1481))

(declare-fun result!1521 () Bool)

(assert (=> tb!1481 (= result!1521 true)))

(assert (=> b!8169 t!1821))

(declare-fun b_and!2747 () Bool)

(assert (= b_and!2727 (and (=> t!1821 result!1521) b_and!2747)))

(declare-fun b_lambda!4007 () Bool)

(assert (=> (not b_lambda!4007) (not b!8169)))

(declare-fun b_lambda!4009 () Bool)

(assert (=> (not b_lambda!4009) (not b!8169)))

(declare-fun m!11015 () Bool)

(assert (=> b!8169 m!11015))

(declare-fun m!11017 () Bool)

(assert (=> b!8169 m!11017))

(declare-fun m!11019 () Bool)

(assert (=> b!8169 m!11019))

(assert (=> b!8155 d!6371))

(declare-fun d!6373 () Bool)

(declare-fun c!2832 () Bool)

(assert (=> d!6373 (= c!2832 (and (is-Cons!185 (toList!34 tree!25)) (is-Nil!186 (tail!415 (toList!34 tree!25)))))))

(declare-fun e!4674 () Balance!143)

(assert (=> d!6373 (= (foldRight1!41 (toList!34 tree!25) f!585) e!4674)))

(declare-fun b!8174 () Bool)

(assert (=> b!8174 (= e!4674 (head!403 (toList!34 tree!25)))))

(declare-fun b!8175 () Bool)

(assert (=> b!8175 (= e!4674 (dynLambda!195 f!585 (head!403 (toList!34 tree!25)) (foldRight1!41 (tail!415 (toList!34 tree!25)) f!585)))))

(assert (= (and d!6373 c!2832) b!8174))

(assert (= (and d!6373 (not c!2832)) b!8175))

(declare-fun b_lambda!4011 () Bool)

(assert (=> (not b_lambda!4011) (not b!8175)))

(declare-fun t!1823 () Bool)

(declare-fun tb!1483 () Bool)

(assert (=> (and start!1594 (= f!585 f!585) t!1823) tb!1483))

(declare-fun result!1523 () Bool)

(assert (=> tb!1483 (= result!1523 true)))

(assert (=> b!8175 t!1823))

(declare-fun b_and!2749 () Bool)

(assert (= b_and!2745 (and (=> t!1823 result!1523) b_and!2749)))

(declare-fun tb!1485 () Bool)

(declare-fun t!1825 () Bool)

(assert (=> (and start!1594 (= f!592 f!585) t!1825) tb!1485))

(declare-fun result!1525 () Bool)

(assert (=> tb!1485 (= result!1525 true)))

(assert (=> b!8175 t!1825))

(declare-fun b_and!2751 () Bool)

(assert (= b_and!2747 (and (=> t!1825 result!1525) b_and!2751)))

(declare-fun m!11021 () Bool)

(assert (=> b!8175 m!11021))

(assert (=> b!8175 m!11021))

(declare-fun m!11023 () Bool)

(assert (=> b!8175 m!11023))

(assert (=> b!8155 d!6373))

(declare-fun d!6375 () Bool)

(declare-fun lt!1501 () List!188)

(assert (=> d!6375 (not (isEmpty!154 lt!1501))))

(declare-fun e!4677 () List!188)

(assert (=> d!6375 (= lt!1501 e!4677)))

(declare-fun c!2835 () Bool)

(assert (=> d!6375 (= c!2835 (is-Leaf!107 tree!25))))

(assert (=> d!6375 (= (toList!34 tree!25) lt!1501)))

(declare-fun b!8180 () Bool)

(assert (=> b!8180 (= e!4677 (Cons!185 (value!1276 tree!25) Nil!186))))

(declare-fun b!8181 () Bool)

(declare-fun append!75 (List!188 List!188) List!188)

(assert (=> b!8181 (= e!4677 (append!75 (toList!34 (left!345 tree!25)) (toList!34 (right!348 tree!25))))))

(assert (= (and d!6375 c!2835) b!8180))

(assert (= (and d!6375 (not c!2835)) b!8181))

(declare-fun m!11025 () Bool)

(assert (=> d!6375 m!11025))

(declare-fun m!11027 () Bool)

(assert (=> b!8181 m!11027))

(declare-fun m!11029 () Bool)

(assert (=> b!8181 m!11029))

(assert (=> b!8181 m!11027))

(assert (=> b!8181 m!11029))

(declare-fun m!11031 () Bool)

(assert (=> b!8181 m!11031))

(assert (=> b!8155 d!6375))

(declare-fun d!6377 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!6377 (= trivial!1 true)))

(assert (=> b!8156 d!6377))

(declare-fun b_lambda!4013 () Bool)

(assert (= b_lambda!4005 (or (and start!1594 (= lambda!1815 f!585)) (and start!1594 b_free!683) (and start!1594 b_free!685 (= f!592 f!585)) b_lambda!4013)))

(declare-fun bs!1869 () Bool)

(declare-fun d!6379 () Bool)

(assert (= bs!1869 (and d!6379 start!1594)))

(declare-fun ++!3 (Balance!143 Balance!143) Balance!143)

(assert (=> bs!1869 (= (dynLambda!195 lambda!1815 (_1!21 lt!1498) (_2!21 lt!1498)) (++!3 (_1!21 lt!1498) (_2!21 lt!1498)))))

(declare-fun m!11033 () Bool)

(assert (=> bs!1869 m!11033))

(assert (=> (and start!1594 (= lambda!1815 f!585) b!8169) d!6379))

(declare-fun b_lambda!4015 () Bool)

(assert (= b_lambda!4007 (or b!8169 b_lambda!4015)))

(declare-fun bs!1870 () Bool)

(declare-fun d!6381 () Bool)

(assert (= bs!1870 (and d!6381 b!8169)))

(assert (=> bs!1870 (= (dynLambda!193 lambda!1823) (fold!10 (left!345 tree!25) f!585))))

(declare-fun m!11035 () Bool)

(assert (=> bs!1870 m!11035))

(assert (=> b!8169 d!6381))

(declare-fun b_lambda!4017 () Bool)

(assert (= b_lambda!3999 (or (and b!8154 b_free!687) (and b!8156 (= lambda!1816 (x!4434 thiss!838))) (and b!8156 (= lambda!1817 (x!4434 thiss!838))) (and b!8169 (= lambda!1823 (x!4434 thiss!838))) (and b!8154 b_free!689 (= (y!492 thiss!838) (x!4434 thiss!838))) (and b!8169 (= lambda!1824 (x!4434 thiss!838))) b_lambda!4017)))

(declare-fun bs!1871 () Bool)

(declare-fun d!6383 () Bool)

(assert (= bs!1871 (and d!6383 b!8156)))

(assert (=> bs!1871 (= (dynLambda!193 lambda!1817) (value!1276 tree!25))))

(assert (=> (and b!8156 (= lambda!1817 (x!4434 thiss!838)) d!6367) d!6383))

(declare-fun bs!1872 () Bool)

(declare-fun d!6385 () Bool)

(assert (= bs!1872 (and d!6385 b!8156)))

(assert (=> bs!1872 (= (dynLambda!193 lambda!1816) (fold!10 tree!25 f!585))))

(assert (=> bs!1872 m!11003))

(assert (=> (and b!8156 (= lambda!1816 (x!4434 thiss!838)) d!6367) d!6385))

(declare-fun bs!1873 () Bool)

(declare-fun d!6387 () Bool)

(assert (= bs!1873 (and d!6387 b!8169)))

(assert (=> bs!1873 (= (dynLambda!193 lambda!1824) (fold!10 (right!348 tree!25) f!585))))

(declare-fun m!11037 () Bool)

(assert (=> bs!1873 m!11037))

(assert (=> (and b!8169 (= lambda!1824 (x!4434 thiss!838)) d!6367) d!6387))

(declare-fun bs!1874 () Bool)

(declare-fun d!6389 () Bool)

(assert (= bs!1874 (and d!6389 b!8169)))

(assert (=> bs!1874 (= (dynLambda!193 lambda!1823) (fold!10 (left!345 tree!25) f!585))))

(assert (=> bs!1874 m!11035))

(assert (=> (and b!8169 (= lambda!1823 (x!4434 thiss!838)) d!6367) d!6389))

(declare-fun b_lambda!4019 () Bool)

(assert (= b_lambda!4009 (or b!8169 b_lambda!4019)))

(declare-fun bs!1875 () Bool)

(declare-fun d!6391 () Bool)

(assert (= bs!1875 (and d!6391 b!8169)))

(assert (=> bs!1875 (= (dynLambda!193 lambda!1824) (fold!10 (right!348 tree!25) f!585))))

(assert (=> bs!1875 m!11037))

(assert (=> b!8169 d!6391))

(declare-fun b_lambda!4021 () Bool)

(assert (= b_lambda!4003 (or (and b!8156 (= lambda!1818 (evidence!122 thiss!838))) (and b!8154 b_free!691) b_lambda!4021)))

(declare-fun bs!1876 () Bool)

(declare-fun d!6393 () Bool)

(assert (= bs!1876 (and d!6393 b!8156)))

(assert (=> bs!1876 (= (dynLambda!194 lambda!1818) trivial!1)))

(assert (=> (and b!8156 (= lambda!1818 (evidence!122 thiss!838)) b!8163) d!6393))

(declare-fun b_lambda!4023 () Bool)

(assert (= b_lambda!4001 (or (and b!8156 (= lambda!1816 (y!492 thiss!838))) (and b!8154 b_free!689) (and b!8156 (= lambda!1817 (y!492 thiss!838))) (and b!8169 (= lambda!1823 (y!492 thiss!838))) (and b!8154 b_free!687 (= (x!4434 thiss!838) (y!492 thiss!838))) (and b!8169 (= lambda!1824 (y!492 thiss!838))) b_lambda!4023)))

(declare-fun bs!1877 () Bool)

(declare-fun d!6395 () Bool)

(assert (= bs!1877 (and d!6395 b!8169)))

(assert (=> bs!1877 (= (dynLambda!193 lambda!1824) (fold!10 (right!348 tree!25) f!585))))

(assert (=> bs!1877 m!11037))

(assert (=> (and b!8169 (= lambda!1824 (y!492 thiss!838)) d!6367) d!6395))

(declare-fun bs!1878 () Bool)

(declare-fun d!6397 () Bool)

(assert (= bs!1878 (and d!6397 b!8156)))

(assert (=> bs!1878 (= (dynLambda!193 lambda!1817) (value!1276 tree!25))))

(assert (=> (and b!8156 (= lambda!1817 (y!492 thiss!838)) d!6367) d!6397))

(declare-fun bs!1879 () Bool)

(declare-fun d!6399 () Bool)

(assert (= bs!1879 (and d!6399 b!8169)))

(assert (=> bs!1879 (= (dynLambda!193 lambda!1823) (fold!10 (left!345 tree!25) f!585))))

(assert (=> bs!1879 m!11035))

(assert (=> (and b!8169 (= lambda!1823 (y!492 thiss!838)) d!6367) d!6399))

(declare-fun bs!1880 () Bool)

(declare-fun d!6401 () Bool)

(assert (= bs!1880 (and d!6401 b!8156)))

(assert (=> bs!1880 (= (dynLambda!193 lambda!1816) (fold!10 tree!25 f!585))))

(assert (=> bs!1880 m!11003))

(assert (=> (and b!8156 (= lambda!1816 (y!492 thiss!838)) d!6367) d!6401))

(declare-fun b_lambda!4025 () Bool)

(assert (= b_lambda!4011 (or (and start!1594 (= lambda!1815 f!585)) (and start!1594 b_free!683) (and start!1594 b_free!685 (= f!592 f!585)) b_lambda!4025)))

(declare-fun bs!1881 () Bool)

(declare-fun d!6403 () Bool)

(assert (= bs!1881 (and d!6403 start!1594)))

(assert (=> bs!1881 (= (dynLambda!195 lambda!1815 (head!403 (toList!34 tree!25)) (foldRight1!41 (tail!415 (toList!34 tree!25)) f!585)) (++!3 (head!403 (toList!34 tree!25)) (foldRight1!41 (tail!415 (toList!34 tree!25)) f!585)))))

(assert (=> bs!1881 m!11021))

(declare-fun m!11039 () Bool)

(assert (=> bs!1881 m!11039))

(assert (=> (and start!1594 (= lambda!1815 f!585) b!8175) d!6403))

(push 1)

(assert b_and!2739)

(assert b_and!2751)

(assert (not bs!1877))

(assert (not bs!1872))

(assert (not b_next!1451))

(assert (not b_lambda!4015))

(assert (not bs!1879))

(assert (not bs!1870))

(assert (not b_lambda!4013))

(assert (not b_next!1463))

(assert (not bs!1880))

(assert (not b_next!1471))

(assert (not bs!1875))

(assert (not b_lambda!4025))

(assert (not b_lambda!4017))

(assert (not bs!1873))

(assert (not bs!1874))

(assert (not bs!1881))

(assert (not bs!1869))

(assert (not b_next!1453))

(assert (not b!8175))

(assert (not b_lambda!4019))

(assert b_and!2743)

(assert b_and!2749)

(assert (not b_lambda!4023))

(assert b_and!2741)

(assert (not b_lambda!4021))

(assert (not b!8181))

(assert (not d!6375))

(assert (not b_next!1469))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2739)

(assert b_and!2751)

(assert (not b_next!1451))

(assert (not b_next!1463))

(assert (not b_next!1471))

(assert (not b_next!1453))

(assert b_and!2743)

(assert b_and!2749)

(assert b_and!2741)

(assert (not b_next!1469))

(check-sat)

(pop 1)

