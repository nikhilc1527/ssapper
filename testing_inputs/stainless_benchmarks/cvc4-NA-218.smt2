; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1668 () Bool)

(assert start!1668)

(declare-fun b!8458 () Bool)

(declare-fun b_free!745 () Bool)

(declare-fun b_next!1657 () Bool)

(assert (=> b!8458 (= b_free!745 (not b_next!1657))))

(declare-fun tp!1248 () Bool)

(declare-fun b_and!2955 () Bool)

(assert (=> b!8458 (= tp!1248 b_and!2955)))

(declare-fun b_free!747 () Bool)

(declare-fun b_next!1659 () Bool)

(assert (=> b!8458 (= b_free!747 (not b_next!1659))))

(declare-fun tp!1251 () Bool)

(declare-fun b_and!2957 () Bool)

(assert (=> b!8458 (= tp!1251 b_and!2957)))

(declare-fun b_free!749 () Bool)

(declare-fun b_next!1661 () Bool)

(assert (=> b!8458 (= b_free!749 (not b_next!1661))))

(declare-fun tp!1252 () Bool)

(declare-fun b_and!2959 () Bool)

(assert (=> b!8458 (= tp!1252 b_and!2959)))

(declare-fun b_free!751 () Bool)

(declare-fun b_next!1663 () Bool)

(assert (=> start!1668 (= b_free!751 (not b_next!1663))))

(declare-fun tp!1249 () Bool)

(declare-fun b_and!2961 () Bool)

(assert (=> start!1668 (= tp!1249 b_and!2961)))

(declare-fun b_free!753 () Bool)

(declare-fun b_next!1665 () Bool)

(assert (=> start!1668 (= b_free!753 (not b_next!1665))))

(declare-fun tp!1250 () Bool)

(declare-fun b_and!2963 () Bool)

(assert (=> start!1668 (= tp!1250 b_and!2963)))

(declare-fun f!585 () Int)

(declare-fun lambda!1928 () Int)

(declare-fun b_next!1667 () Bool)

(assert (=> start!1668 (= b_next!1663 (or (and start!1668 (= lambda!1928 f!585)) b_next!1667))))

(declare-fun f!613 () Int)

(declare-fun b_next!1669 () Bool)

(assert (=> start!1668 (= b_next!1665 (or (and start!1668 (= lambda!1928 f!613)) b_next!1669))))

(declare-fun b!8459 () Bool)

(assert (=> b!8459 true))

(declare-fun order!83 () Int)

(declare-fun order!81 () Int)

(declare-fun lambda!1929 () Int)

(declare-fun dynLambda!221 (Int Int) Int)

(declare-fun dynLambda!222 (Int Int) Int)

(assert (=> b!8459 (< (dynLambda!221 order!81 f!585) (dynLambda!222 order!83 lambda!1929))))

(assert (=> b!8459 true))

(declare-datatypes () ((Balance!155 (Balance!156 (extraOpen!118 Int) (extraClose!118 Int)))))

(declare-datatypes () ((EqEvidence!122 (EqEvidence!123 (x!4615 Int) (y!511 Int) (evidence!128 Int)))))

(declare-fun thiss!853 () EqEvidence!122)

(declare-fun b_next!1671 () Bool)

(assert (=> b!8458 (= b_next!1657 (or (and b!8459 (= lambda!1929 (x!4615 thiss!853))) b_next!1671))))

(declare-fun b_next!1673 () Bool)

(assert (=> b!8458 (= b_next!1659 (or (and b!8459 (= lambda!1929 (y!511 thiss!853))) b_next!1673))))

(declare-fun lambda!1930 () Int)

(assert (=> b!8459 (not (= lambda!1930 lambda!1929))))

(assert (=> b!8459 true))

(assert (=> b!8459 (< (dynLambda!221 order!81 f!585) (dynLambda!222 order!83 lambda!1930))))

(assert (=> b!8459 true))

(declare-fun b_next!1675 () Bool)

(assert (=> b!8458 (= b_next!1671 (or (and b!8459 (= lambda!1930 (x!4615 thiss!853))) b_next!1675))))

(declare-fun b_next!1677 () Bool)

(assert (=> b!8458 (= b_next!1673 (or (and b!8459 (= lambda!1930 (y!511 thiss!853))) b_next!1677))))

(assert (=> b!8459 true))

(declare-fun lambda!1931 () Int)

(declare-fun b_next!1679 () Bool)

(assert (=> b!8458 (= b_next!1661 (or (and b!8459 (= lambda!1931 (evidence!128 thiss!853))) b_next!1679))))

(declare-fun b!8453 () Bool)

(declare-fun res!2602 () Bool)

(declare-fun e!4864 () Bool)

(assert (=> b!8453 (=> (not res!2602) (not e!4864))))

(declare-datatypes () ((List!194 (Nil!192) (Cons!191 (head!409 Balance!155) (tail!421 List!194)))))

(declare-fun thiss!940 () List!194)

(declare-datatypes () ((Tree!40 (Branch!31 (left!369 Tree!40) (right!372 Tree!40)) (Leaf!113 (value!1282 Balance!155)))))

(declare-fun tree!25 () Tree!40)

(declare-fun append!81 (List!194 List!194) List!194)

(declare-fun toList!40 (Tree!40) List!194)

(assert (=> b!8453 (= res!2602 (= thiss!940 (append!81 (toList!40 (left!369 tree!25)) (toList!40 (right!372 tree!25)))))))

(declare-fun b!8454 () Bool)

(declare-fun res!2603 () Bool)

(assert (=> b!8454 (=> (not res!2603) (not e!4864))))

(declare-datatypes () ((ProofOps!102 (ProofOps!103 (prop!165 Bool)))))

(declare-fun thiss!829 () ProofOps!102)

(declare-fun fold!16 (Tree!40 Int) Balance!155)

(declare-fun foldRight1!47 (List!194 Int) Balance!155)

(assert (=> b!8454 (= res!2603 (= thiss!829 (ProofOps!103 (= (fold!16 tree!25 f!585) (foldRight1!47 (toList!40 tree!25) f!585)))))))

(declare-fun b!8455 () Bool)

(declare-fun res!2605 () Bool)

(assert (=> b!8455 (=> (not res!2605) (not e!4864))))

(assert (=> b!8455 (= res!2605 (= f!613 f!585))))

(declare-fun b!8456 () Bool)

(declare-fun res!2604 () Bool)

(assert (=> b!8456 (=> (not res!2604) (not e!4864))))

(assert (=> b!8456 (= res!2604 (not (is-Leaf!113 tree!25)))))

(declare-fun b!8457 () Bool)

(declare-fun isEmpty!160 (List!194) Bool)

(assert (=> b!8457 (= e!4864 (isEmpty!160 thiss!940))))

(declare-fun e!4863 () Bool)

(assert (=> b!8458 (= e!4863 (and tp!1248 tp!1251 tp!1252))))

(declare-fun res!2600 () Bool)

(assert (=> start!1668 (=> (not res!2600) (not e!4864))))

(assert (=> start!1668 (= res!2600 (= f!585 lambda!1928))))

(assert (=> start!1668 e!4864))

(assert (=> start!1668 true))

(declare-fun inv!294 (EqEvidence!122) Bool)

(assert (=> start!1668 (and (inv!294 thiss!853) e!4863)))

(assert (=> start!1668 tp!1249))

(assert (=> start!1668 tp!1250))

(declare-fun res!2601 () Bool)

(assert (=> b!8459 (=> (not res!2601) (not e!4864))))

(assert (=> b!8459 (= res!2601 (= thiss!853 (EqEvidence!123 lambda!1929 lambda!1930 lambda!1931)))))

(assert (= (and start!1668 res!2600) b!8454))

(assert (= (and b!8454 res!2603) b!8456))

(assert (= (and b!8456 res!2604) b!8459))

(assert (= (and b!8459 res!2601) b!8453))

(assert (= (and b!8453 res!2602) b!8455))

(assert (= (and b!8455 res!2605) b!8457))

(assert (= start!1668 b!8458))

(declare-fun m!11329 () Bool)

(assert (=> b!8453 m!11329))

(declare-fun m!11331 () Bool)

(assert (=> b!8453 m!11331))

(assert (=> b!8453 m!11329))

(assert (=> b!8453 m!11331))

(declare-fun m!11333 () Bool)

(assert (=> b!8453 m!11333))

(declare-fun m!11335 () Bool)

(assert (=> b!8454 m!11335))

(declare-fun m!11337 () Bool)

(assert (=> b!8454 m!11337))

(assert (=> b!8454 m!11337))

(declare-fun m!11339 () Bool)

(assert (=> b!8454 m!11339))

(declare-fun m!11341 () Bool)

(assert (=> b!8457 m!11341))

(declare-fun m!11343 () Bool)

(assert (=> start!1668 m!11343))

(push 1)

(assert b_and!2959)

(assert b_and!2963)

(assert b_and!2957)

(assert (not b!8453))

(assert (not b_next!1679))

(assert (not b!8454))

(assert (not start!1668))

(assert b_and!2961)

(assert (not b!8457))

(assert b_and!2955)

(assert (not b_next!1677))

(assert (not b_next!1669))

(assert (not b_next!1667))

(assert (not b_next!1675))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2959)

(assert b_and!2963)

(assert b_and!2957)

(assert (not b_next!1679))

(assert b_and!2961)

(assert b_and!2955)

(assert (not b_next!1677))

(assert (not b_next!1669))

(assert (not b_next!1667))

(assert (not b_next!1675))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6625 () Bool)

(declare-fun res!2608 () Bool)

(declare-fun e!4867 () Bool)

(assert (=> d!6625 (=> (not res!2608) (not e!4867))))

(declare-fun dynLambda!223 (Int) Balance!155)

(assert (=> d!6625 (= res!2608 (= (dynLambda!223 (x!4615 thiss!853)) (dynLambda!223 (y!511 thiss!853))))))

(assert (=> d!6625 (= (inv!294 thiss!853) e!4867)))

(declare-fun b!8468 () Bool)

(declare-fun dynLambda!224 (Int) Bool)

(assert (=> b!8468 (= e!4867 (dynLambda!224 (evidence!128 thiss!853)))))

(assert (= (and d!6625 res!2608) b!8468))

(declare-fun b_lambda!4203 () Bool)

(assert (=> (not b_lambda!4203) (not d!6625)))

(declare-fun t!1953 () Bool)

(declare-fun tb!1613 () Bool)

(assert (=> (and b!8458 (= (x!4615 thiss!853) (x!4615 thiss!853)) t!1953) tb!1613))

(declare-fun result!1653 () Bool)

(assert (=> tb!1613 (= result!1653 true)))

(assert (=> d!6625 t!1953))

(declare-fun b_and!2965 () Bool)

(assert (= b_and!2955 (and (=> t!1953 result!1653) b_and!2965)))

(declare-fun t!1955 () Bool)

(declare-fun tb!1615 () Bool)

(assert (=> (and b!8458 (= (y!511 thiss!853) (x!4615 thiss!853)) t!1955) tb!1615))

(declare-fun result!1655 () Bool)

(assert (=> tb!1615 (= result!1655 true)))

(assert (=> d!6625 t!1955))

(declare-fun b_and!2967 () Bool)

(assert (= b_and!2957 (and (=> t!1955 result!1655) b_and!2967)))

(declare-fun b_lambda!4205 () Bool)

(assert (=> (not b_lambda!4205) (not d!6625)))

(declare-fun t!1957 () Bool)

(declare-fun tb!1617 () Bool)

(assert (=> (and b!8458 (= (x!4615 thiss!853) (y!511 thiss!853)) t!1957) tb!1617))

(declare-fun result!1657 () Bool)

(assert (=> tb!1617 (= result!1657 true)))

(assert (=> d!6625 t!1957))

(declare-fun b_and!2969 () Bool)

(assert (= b_and!2965 (and (=> t!1957 result!1657) b_and!2969)))

(declare-fun t!1959 () Bool)

(declare-fun tb!1619 () Bool)

(assert (=> (and b!8458 (= (y!511 thiss!853) (y!511 thiss!853)) t!1959) tb!1619))

(declare-fun result!1659 () Bool)

(assert (=> tb!1619 (= result!1659 true)))

(assert (=> d!6625 t!1959))

(declare-fun b_and!2971 () Bool)

(assert (= b_and!2967 (and (=> t!1959 result!1659) b_and!2971)))

(declare-fun b_lambda!4207 () Bool)

(assert (=> (not b_lambda!4207) (not b!8468)))

(declare-fun t!1961 () Bool)

(declare-fun tb!1621 () Bool)

(assert (=> (and b!8458 (= (evidence!128 thiss!853) (evidence!128 thiss!853)) t!1961) tb!1621))

(declare-fun result!1661 () Bool)

(assert (=> tb!1621 (= result!1661 true)))

(assert (=> b!8468 t!1961))

(declare-fun b_and!2973 () Bool)

(assert (= b_and!2959 (and (=> t!1961 result!1661) b_and!2973)))

(declare-fun m!11345 () Bool)

(assert (=> d!6625 m!11345))

(declare-fun m!11347 () Bool)

(assert (=> d!6625 m!11347))

(declare-fun m!11349 () Bool)

(assert (=> b!8468 m!11349))

(assert (=> start!1668 d!6625))

(declare-fun d!6627 () Bool)

(assert (=> d!6627 (= (isEmpty!160 thiss!940) (is-Nil!192 thiss!940))))

(assert (=> b!8457 d!6627))

(declare-fun bs!1972 () Bool)

(declare-fun b!8474 () Bool)

(assert (= bs!1972 (and b!8474 b!8459)))

(declare-fun lambda!1936 () Int)

(assert (=> bs!1972 (= (= (left!369 tree!25) tree!25) (= lambda!1936 lambda!1929))))

(assert (=> bs!1972 (not (= lambda!1936 lambda!1930))))

(assert (=> b!8474 true))

(assert (=> b!8474 (< (dynLambda!221 order!81 f!585) (dynLambda!222 order!83 lambda!1936))))

(assert (=> b!8474 true))

(declare-fun b_next!1681 () Bool)

(assert (=> b!8458 (= b_next!1675 (or (and b!8474 (= lambda!1936 (x!4615 thiss!853))) b_next!1681))))

(declare-fun b_next!1683 () Bool)

(assert (=> b!8458 (= b_next!1677 (or (and b!8474 (= lambda!1936 (y!511 thiss!853))) b_next!1683))))

(declare-fun lambda!1937 () Int)

(assert (=> bs!1972 (= (= (right!372 tree!25) tree!25) (= lambda!1937 lambda!1929))))

(assert (=> bs!1972 (not (= lambda!1937 lambda!1930))))

(assert (=> b!8474 (= (= (right!372 tree!25) (left!369 tree!25)) (= lambda!1937 lambda!1936))))

(assert (=> b!8474 true))

(assert (=> b!8474 (< (dynLambda!221 order!81 f!585) (dynLambda!222 order!83 lambda!1937))))

(assert (=> b!8474 true))

(declare-fun b_next!1685 () Bool)

(assert (=> b!8458 (= b_next!1681 (or (and b!8474 (= lambda!1937 (x!4615 thiss!853))) b_next!1685))))

(declare-fun b_next!1687 () Bool)

(assert (=> b!8458 (= b_next!1683 (or (and b!8474 (= lambda!1937 (y!511 thiss!853))) b_next!1687))))

(declare-fun e!4886 () Balance!155)

(declare-datatypes () ((tuple2!54 (tuple2!55 (_1!27 Balance!155) (_2!27 Balance!155)))))

(declare-fun lt!1539 () tuple2!54)

(declare-fun dynLambda!225 (Int Balance!155 Balance!155) Balance!155)

(assert (=> b!8474 (= e!4886 (dynLambda!225 f!585 (_1!27 lt!1539) (_2!27 lt!1539)))))

(assert (=> b!8474 (= lt!1539 (tuple2!55 (dynLambda!223 lambda!1936) (dynLambda!223 lambda!1937)))))

(declare-fun d!6629 () Bool)

(declare-fun c!2888 () Bool)

(assert (=> d!6629 (= c!2888 (is-Leaf!113 tree!25))))

(assert (=> d!6629 (= (fold!16 tree!25 f!585) e!4886)))

(declare-fun b!8473 () Bool)

(assert (=> b!8473 (= e!4886 (value!1282 tree!25))))

(assert (= (and d!6629 c!2888) b!8473))

(assert (= (and d!6629 (not c!2888)) b!8474))

(declare-fun b_lambda!4209 () Bool)

(assert (=> (not b_lambda!4209) (not b!8474)))

(declare-fun t!1963 () Bool)

(declare-fun tb!1623 () Bool)

(assert (=> (and start!1668 (= f!585 f!585) t!1963) tb!1623))

(declare-fun result!1663 () Bool)

(assert (=> tb!1623 (= result!1663 true)))

(assert (=> b!8474 t!1963))

(declare-fun b_and!2975 () Bool)

(assert (= b_and!2961 (and (=> t!1963 result!1663) b_and!2975)))

(declare-fun tb!1625 () Bool)

(declare-fun t!1965 () Bool)

(assert (=> (and start!1668 (= f!613 f!585) t!1965) tb!1625))

(declare-fun result!1665 () Bool)

(assert (=> tb!1625 (= result!1665 true)))

(assert (=> b!8474 t!1965))

(declare-fun b_and!2977 () Bool)

(assert (= b_and!2963 (and (=> t!1965 result!1665) b_and!2977)))

(declare-fun b_lambda!4211 () Bool)

(assert (=> (not b_lambda!4211) (not b!8474)))

(declare-fun b_lambda!4213 () Bool)

(assert (=> (not b_lambda!4213) (not b!8474)))

(declare-fun m!11351 () Bool)

(assert (=> b!8474 m!11351))

(declare-fun m!11353 () Bool)

(assert (=> b!8474 m!11353))

(declare-fun m!11355 () Bool)

(assert (=> b!8474 m!11355))

(assert (=> b!8454 d!6629))

(declare-fun d!6631 () Bool)

(declare-fun c!2891 () Bool)

(assert (=> d!6631 (= c!2891 (and (is-Cons!191 (toList!40 tree!25)) (is-Nil!192 (tail!421 (toList!40 tree!25)))))))

(declare-fun e!4889 () Balance!155)

(assert (=> d!6631 (= (foldRight1!47 (toList!40 tree!25) f!585) e!4889)))

(declare-fun b!8479 () Bool)

(assert (=> b!8479 (= e!4889 (head!409 (toList!40 tree!25)))))

(declare-fun b!8480 () Bool)

(assert (=> b!8480 (= e!4889 (dynLambda!225 f!585 (head!409 (toList!40 tree!25)) (foldRight1!47 (tail!421 (toList!40 tree!25)) f!585)))))

(assert (= (and d!6631 c!2891) b!8479))

(assert (= (and d!6631 (not c!2891)) b!8480))

(declare-fun b_lambda!4215 () Bool)

(assert (=> (not b_lambda!4215) (not b!8480)))

(declare-fun t!1967 () Bool)

(declare-fun tb!1627 () Bool)

(assert (=> (and start!1668 (= f!585 f!585) t!1967) tb!1627))

(declare-fun result!1667 () Bool)

(assert (=> tb!1627 (= result!1667 true)))

(assert (=> b!8480 t!1967))

(declare-fun b_and!2979 () Bool)

(assert (= b_and!2975 (and (=> t!1967 result!1667) b_and!2979)))

(declare-fun tb!1629 () Bool)

(declare-fun t!1969 () Bool)

(assert (=> (and start!1668 (= f!613 f!585) t!1969) tb!1629))

(declare-fun result!1669 () Bool)

(assert (=> tb!1629 (= result!1669 true)))

(assert (=> b!8480 t!1969))

(declare-fun b_and!2981 () Bool)

(assert (= b_and!2977 (and (=> t!1969 result!1669) b_and!2981)))

(declare-fun m!11357 () Bool)

(assert (=> b!8480 m!11357))

(assert (=> b!8480 m!11357))

(declare-fun m!11359 () Bool)

(assert (=> b!8480 m!11359))

(assert (=> b!8454 d!6631))

(declare-fun d!6633 () Bool)

(declare-fun lt!1542 () List!194)

(assert (=> d!6633 (not (isEmpty!160 lt!1542))))

(declare-fun e!4892 () List!194)

(assert (=> d!6633 (= lt!1542 e!4892)))

(declare-fun c!2894 () Bool)

(assert (=> d!6633 (= c!2894 (is-Leaf!113 tree!25))))

(assert (=> d!6633 (= (toList!40 tree!25) lt!1542)))

(declare-fun b!8485 () Bool)

(assert (=> b!8485 (= e!4892 (Cons!191 (value!1282 tree!25) Nil!192))))

(declare-fun b!8486 () Bool)

(assert (=> b!8486 (= e!4892 (append!81 (toList!40 (left!369 tree!25)) (toList!40 (right!372 tree!25))))))

(assert (= (and d!6633 c!2894) b!8485))

(assert (= (and d!6633 (not c!2894)) b!8486))

(declare-fun m!11361 () Bool)

(assert (=> d!6633 m!11361))

(assert (=> b!8486 m!11329))

(assert (=> b!8486 m!11331))

(assert (=> b!8486 m!11329))

(assert (=> b!8486 m!11331))

(assert (=> b!8486 m!11333))

(assert (=> b!8454 d!6633))

(declare-fun d!6635 () Bool)

(declare-fun c!2897 () Bool)

(assert (=> d!6635 (= c!2897 (is-Nil!192 (toList!40 (left!369 tree!25))))))

(declare-fun e!4895 () List!194)

(assert (=> d!6635 (= (append!81 (toList!40 (left!369 tree!25)) (toList!40 (right!372 tree!25))) e!4895)))

(declare-fun b!8491 () Bool)

(assert (=> b!8491 (= e!4895 (toList!40 (right!372 tree!25)))))

(declare-fun b!8492 () Bool)

(assert (=> b!8492 (= e!4895 (Cons!191 (head!409 (toList!40 (left!369 tree!25))) (append!81 (tail!421 (toList!40 (left!369 tree!25))) (toList!40 (right!372 tree!25)))))))

(assert (= (and d!6635 c!2897) b!8491))

(assert (= (and d!6635 (not c!2897)) b!8492))

(assert (=> b!8492 m!11331))

(declare-fun m!11363 () Bool)

(assert (=> b!8492 m!11363))

(assert (=> b!8453 d!6635))

(declare-fun d!6637 () Bool)

(declare-fun lt!1543 () List!194)

(assert (=> d!6637 (not (isEmpty!160 lt!1543))))

(declare-fun e!4896 () List!194)

(assert (=> d!6637 (= lt!1543 e!4896)))

(declare-fun c!2898 () Bool)

(assert (=> d!6637 (= c!2898 (is-Leaf!113 (left!369 tree!25)))))

(assert (=> d!6637 (= (toList!40 (left!369 tree!25)) lt!1543)))

(declare-fun b!8493 () Bool)

(assert (=> b!8493 (= e!4896 (Cons!191 (value!1282 (left!369 tree!25)) Nil!192))))

(declare-fun b!8494 () Bool)

(assert (=> b!8494 (= e!4896 (append!81 (toList!40 (left!369 (left!369 tree!25))) (toList!40 (right!372 (left!369 tree!25)))))))

(assert (= (and d!6637 c!2898) b!8493))

(assert (= (and d!6637 (not c!2898)) b!8494))

(declare-fun m!11365 () Bool)

(assert (=> d!6637 m!11365))

(declare-fun m!11367 () Bool)

(assert (=> b!8494 m!11367))

(declare-fun m!11369 () Bool)

(assert (=> b!8494 m!11369))

(assert (=> b!8494 m!11367))

(assert (=> b!8494 m!11369))

(declare-fun m!11371 () Bool)

(assert (=> b!8494 m!11371))

(assert (=> b!8453 d!6637))

(declare-fun d!6639 () Bool)

(declare-fun lt!1544 () List!194)

(assert (=> d!6639 (not (isEmpty!160 lt!1544))))

(declare-fun e!4897 () List!194)

(assert (=> d!6639 (= lt!1544 e!4897)))

(declare-fun c!2899 () Bool)

(assert (=> d!6639 (= c!2899 (is-Leaf!113 (right!372 tree!25)))))

(assert (=> d!6639 (= (toList!40 (right!372 tree!25)) lt!1544)))

(declare-fun b!8495 () Bool)

(assert (=> b!8495 (= e!4897 (Cons!191 (value!1282 (right!372 tree!25)) Nil!192))))

(declare-fun b!8496 () Bool)

(assert (=> b!8496 (= e!4897 (append!81 (toList!40 (left!369 (right!372 tree!25))) (toList!40 (right!372 (right!372 tree!25)))))))

(assert (= (and d!6639 c!2899) b!8495))

(assert (= (and d!6639 (not c!2899)) b!8496))

(declare-fun m!11373 () Bool)

(assert (=> d!6639 m!11373))

(declare-fun m!11375 () Bool)

(assert (=> b!8496 m!11375))

(declare-fun m!11377 () Bool)

(assert (=> b!8496 m!11377))

(assert (=> b!8496 m!11375))

(assert (=> b!8496 m!11377))

(declare-fun m!11379 () Bool)

(assert (=> b!8496 m!11379))

(assert (=> b!8453 d!6639))

(declare-fun b_lambda!4217 () Bool)

(assert (= b_lambda!4213 (or b!8474 b_lambda!4217)))

(declare-fun bs!1973 () Bool)

(declare-fun d!6641 () Bool)

(assert (= bs!1973 (and d!6641 b!8474)))

(assert (=> bs!1973 (= (dynLambda!223 lambda!1937) (fold!16 (right!372 tree!25) f!585))))

(declare-fun m!11381 () Bool)

(assert (=> bs!1973 m!11381))

(assert (=> b!8474 d!6641))

(declare-fun b_lambda!4219 () Bool)

(assert (= b_lambda!4205 (or (and b!8459 (= lambda!1929 (y!511 thiss!853))) (and b!8474 (= lambda!1936 (y!511 thiss!853))) (and b!8458 b_free!745 (= (x!4615 thiss!853) (y!511 thiss!853))) (and b!8458 b_free!747) (and b!8474 (= lambda!1937 (y!511 thiss!853))) (and b!8459 (= lambda!1930 (y!511 thiss!853))) b_lambda!4219)))

(declare-fun bs!1974 () Bool)

(declare-fun d!6643 () Bool)

(assert (= bs!1974 (and d!6643 b!8459)))

(assert (=> bs!1974 (= (dynLambda!223 lambda!1930) (dynLambda!225 f!585 (foldRight1!47 (toList!40 (left!369 tree!25)) f!585) (foldRight1!47 (toList!40 (right!372 tree!25)) f!585)))))

(declare-fun b_lambda!4231 () Bool)

(assert (=> (not b_lambda!4231) (not bs!1974)))

(declare-fun t!1971 () Bool)

(declare-fun tb!1631 () Bool)

(assert (=> (and start!1668 (= f!585 f!585) t!1971) tb!1631))

(declare-fun result!1671 () Bool)

(assert (=> tb!1631 (= result!1671 true)))

(assert (=> bs!1974 t!1971))

(declare-fun b_and!2983 () Bool)

(assert (= b_and!2979 (and (=> t!1971 result!1671) b_and!2983)))

(declare-fun tb!1633 () Bool)

(declare-fun t!1973 () Bool)

(assert (=> (and start!1668 (= f!613 f!585) t!1973) tb!1633))

(declare-fun result!1673 () Bool)

(assert (=> tb!1633 (= result!1673 true)))

(assert (=> bs!1974 t!1973))

(declare-fun b_and!2985 () Bool)

(assert (= b_and!2981 (and (=> t!1973 result!1673) b_and!2985)))

(assert (=> bs!1974 m!11329))

(declare-fun m!11383 () Bool)

(assert (=> bs!1974 m!11383))

(declare-fun m!11385 () Bool)

(assert (=> bs!1974 m!11385))

(declare-fun m!11387 () Bool)

(assert (=> bs!1974 m!11387))

(assert (=> bs!1974 m!11331))

(assert (=> bs!1974 m!11329))

(assert (=> bs!1974 m!11383))

(assert (=> bs!1974 m!11331))

(assert (=> bs!1974 m!11385))

(assert (=> (and b!8459 (= lambda!1930 (y!511 thiss!853)) d!6625) d!6643))

(declare-fun bs!1975 () Bool)

(declare-fun d!6645 () Bool)

(assert (= bs!1975 (and d!6645 b!8459)))

(assert (=> bs!1975 (= (dynLambda!223 lambda!1929) (fold!16 tree!25 f!585))))

(assert (=> bs!1975 m!11335))

(assert (=> (and b!8459 (= lambda!1929 (y!511 thiss!853)) d!6625) d!6645))

(declare-fun bs!1976 () Bool)

(declare-fun d!6647 () Bool)

(assert (= bs!1976 (and d!6647 b!8474)))

(assert (=> bs!1976 (= (dynLambda!223 lambda!1936) (fold!16 (left!369 tree!25) f!585))))

(declare-fun m!11389 () Bool)

(assert (=> bs!1976 m!11389))

(assert (=> (and b!8474 (= lambda!1936 (y!511 thiss!853)) d!6625) d!6647))

(declare-fun bs!1977 () Bool)

(declare-fun d!6649 () Bool)

(assert (= bs!1977 (and d!6649 b!8474)))

(assert (=> bs!1977 (= (dynLambda!223 lambda!1937) (fold!16 (right!372 tree!25) f!585))))

(assert (=> bs!1977 m!11381))

(assert (=> (and b!8474 (= lambda!1937 (y!511 thiss!853)) d!6625) d!6649))

(declare-fun b_lambda!4221 () Bool)

(assert (= b_lambda!4215 (or (and start!1668 (= lambda!1928 f!585)) (and start!1668 b_free!751) (and start!1668 b_free!753 (= f!613 f!585)) b_lambda!4221)))

(declare-fun bs!1978 () Bool)

(declare-fun d!6651 () Bool)

(assert (= bs!1978 (and d!6651 start!1668)))

(declare-fun ++!3 (Balance!155 Balance!155) Balance!155)

(assert (=> bs!1978 (= (dynLambda!225 lambda!1928 (head!409 (toList!40 tree!25)) (foldRight1!47 (tail!421 (toList!40 tree!25)) f!585)) (++!3 (head!409 (toList!40 tree!25)) (foldRight1!47 (tail!421 (toList!40 tree!25)) f!585)))))

(assert (=> bs!1978 m!11357))

(declare-fun m!11391 () Bool)

(assert (=> bs!1978 m!11391))

(assert (=> (and start!1668 (= lambda!1928 f!585) b!8480) d!6651))

(declare-fun b_lambda!4223 () Bool)

(assert (= b_lambda!4207 (or (and b!8459 (= lambda!1931 (evidence!128 thiss!853))) (and b!8458 b_free!749) b_lambda!4223)))

(declare-fun bs!1979 () Bool)

(declare-fun d!6653 () Bool)

(assert (= bs!1979 (and d!6653 b!8459)))

(declare-fun append!24 (List!194 List!194) Bool)

(assert (=> bs!1979 (= (dynLambda!224 lambda!1931) (append!24 (toList!40 (left!369 tree!25)) (toList!40 (right!372 tree!25))))))

(assert (=> bs!1979 m!11329))

(assert (=> bs!1979 m!11331))

(assert (=> bs!1979 m!11329))

(assert (=> bs!1979 m!11331))

(declare-fun m!11393 () Bool)

(assert (=> bs!1979 m!11393))

(assert (=> (and b!8459 (= lambda!1931 (evidence!128 thiss!853)) b!8468) d!6653))

(declare-fun b_lambda!4225 () Bool)

(assert (= b_lambda!4203 (or (and b!8459 (= lambda!1929 (x!4615 thiss!853))) (and b!8458 b_free!745) (and b!8474 (= lambda!1936 (x!4615 thiss!853))) (and b!8458 b_free!747 (= (y!511 thiss!853) (x!4615 thiss!853))) (and b!8459 (= lambda!1930 (x!4615 thiss!853))) (and b!8474 (= lambda!1937 (x!4615 thiss!853))) b_lambda!4225)))

(declare-fun bs!1980 () Bool)

(declare-fun d!6655 () Bool)

(assert (= bs!1980 (and d!6655 b!8459)))

(assert (=> bs!1980 (= (dynLambda!223 lambda!1929) (fold!16 tree!25 f!585))))

(assert (=> bs!1980 m!11335))

(assert (=> (and b!8459 (= lambda!1929 (x!4615 thiss!853)) d!6625) d!6655))

(declare-fun bs!1981 () Bool)

(declare-fun d!6657 () Bool)

(assert (= bs!1981 (and d!6657 b!8459)))

(assert (=> bs!1981 (= (dynLambda!223 lambda!1930) (dynLambda!225 f!585 (foldRight1!47 (toList!40 (left!369 tree!25)) f!585) (foldRight1!47 (toList!40 (right!372 tree!25)) f!585)))))

(declare-fun b_lambda!4233 () Bool)

(assert (=> (not b_lambda!4233) (not bs!1981)))

(assert (=> bs!1981 t!1971))

(declare-fun b_and!2987 () Bool)

(assert (= b_and!2983 (and (=> t!1971 result!1671) b_and!2987)))

(assert (=> bs!1981 t!1973))

(declare-fun b_and!2989 () Bool)

(assert (= b_and!2985 (and (=> t!1973 result!1673) b_and!2989)))

(assert (=> bs!1981 m!11329))

(assert (=> bs!1981 m!11383))

(assert (=> bs!1981 m!11385))

(assert (=> bs!1981 m!11387))

(assert (=> bs!1981 m!11331))

(assert (=> bs!1981 m!11329))

(assert (=> bs!1981 m!11383))

(assert (=> bs!1981 m!11331))

(assert (=> bs!1981 m!11385))

(assert (=> (and b!8459 (= lambda!1930 (x!4615 thiss!853)) d!6625) d!6657))

(declare-fun bs!1982 () Bool)

(declare-fun d!6659 () Bool)

(assert (= bs!1982 (and d!6659 b!8474)))

(assert (=> bs!1982 (= (dynLambda!223 lambda!1937) (fold!16 (right!372 tree!25) f!585))))

(assert (=> bs!1982 m!11381))

(assert (=> (and b!8474 (= lambda!1937 (x!4615 thiss!853)) d!6625) d!6659))

(declare-fun bs!1983 () Bool)

(declare-fun d!6661 () Bool)

(assert (= bs!1983 (and d!6661 b!8474)))

(assert (=> bs!1983 (= (dynLambda!223 lambda!1936) (fold!16 (left!369 tree!25) f!585))))

(assert (=> bs!1983 m!11389))

(assert (=> (and b!8474 (= lambda!1936 (x!4615 thiss!853)) d!6625) d!6661))

(declare-fun b_lambda!4227 () Bool)

(assert (= b_lambda!4211 (or b!8474 b_lambda!4227)))

(declare-fun bs!1984 () Bool)

(declare-fun d!6663 () Bool)

(assert (= bs!1984 (and d!6663 b!8474)))

(assert (=> bs!1984 (= (dynLambda!223 lambda!1936) (fold!16 (left!369 tree!25) f!585))))

(assert (=> bs!1984 m!11389))

(assert (=> b!8474 d!6663))

(declare-fun b_lambda!4229 () Bool)

(assert (= b_lambda!4209 (or (and start!1668 (= lambda!1928 f!585)) (and start!1668 b_free!751) (and start!1668 b_free!753 (= f!613 f!585)) b_lambda!4229)))

(declare-fun bs!1985 () Bool)

(declare-fun d!6665 () Bool)

(assert (= bs!1985 (and d!6665 start!1668)))

(assert (=> bs!1985 (= (dynLambda!225 lambda!1928 (_1!27 lt!1539) (_2!27 lt!1539)) (++!3 (_1!27 lt!1539) (_2!27 lt!1539)))))

(declare-fun m!11395 () Bool)

(assert (=> bs!1985 m!11395))

(assert (=> (and start!1668 (= lambda!1928 f!585) b!8474) d!6665))

(push 1)

(assert (not b_next!1685))

(assert b_and!2971)

(assert (not bs!1975))

(assert b_and!2987)

(assert (not b_lambda!4229))

(assert (not b!8496))

(assert (not b_lambda!4231))

(assert (not bs!1982))

(assert (not b_next!1687))

(assert (not bs!1973))

(assert (not b!8480))

(assert b_and!2969)

(assert (not b_lambda!4223))

(assert (not b_lambda!4225))

(assert (not bs!1980))

(assert b_and!2989)

(assert (not bs!1983))

(assert (not bs!1976))

(assert (not b_next!1679))

(assert (not b!8494))

(assert (not d!6633))

(assert (not b_lambda!4233))

(assert (not bs!1977))

(assert (not b!8492))

(assert (not b_lambda!4221))

(assert (not b_lambda!4217))

(assert (not d!6639))

(assert (not b_next!1669))

(assert (not b_lambda!4219))

(assert (not bs!1974))

(assert b_and!2973)

(assert (not bs!1978))

(assert (not b_next!1667))

(assert (not bs!1984))

(assert (not b!8486))

(assert (not b_lambda!4227))

(assert (not bs!1985))

(assert (not bs!1979))

(assert (not d!6637))

(assert (not bs!1981))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1685))

(assert b_and!2971)

(assert b_and!2987)

(assert (not b_next!1687))

(assert b_and!2969)

(assert b_and!2989)

(assert (not b_next!1679))

(assert (not b_next!1669))

(assert b_and!2973)

(assert (not b_next!1667))

(check-sat)

(pop 1)

