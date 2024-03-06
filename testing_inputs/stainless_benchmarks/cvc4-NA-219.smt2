; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1682 () Bool)

(assert start!1682)

(declare-fun b_free!755 () Bool)

(declare-fun b_next!1689 () Bool)

(assert (=> start!1682 (= b_free!755 (not b_next!1689))))

(declare-fun tp!1266 () Bool)

(declare-fun b_and!2991 () Bool)

(assert (=> start!1682 (= tp!1266 b_and!2991)))

(declare-fun b_free!757 () Bool)

(declare-fun b_next!1691 () Bool)

(assert (=> start!1682 (= b_free!757 (not b_next!1691))))

(declare-fun tp!1264 () Bool)

(declare-fun b_and!2993 () Bool)

(assert (=> start!1682 (= tp!1264 b_and!2993)))

(declare-fun b!8513 () Bool)

(declare-fun b_free!759 () Bool)

(declare-fun b_next!1693 () Bool)

(assert (=> b!8513 (= b_free!759 (not b_next!1693))))

(declare-fun tp!1267 () Bool)

(declare-fun b_and!2995 () Bool)

(assert (=> b!8513 (= tp!1267 b_and!2995)))

(declare-fun b_free!761 () Bool)

(declare-fun b_next!1695 () Bool)

(assert (=> b!8513 (= b_free!761 (not b_next!1695))))

(declare-fun tp!1265 () Bool)

(declare-fun b_and!2997 () Bool)

(assert (=> b!8513 (= tp!1265 b_and!2997)))

(declare-fun b_free!763 () Bool)

(declare-fun b_next!1697 () Bool)

(assert (=> b!8513 (= b_free!763 (not b_next!1697))))

(declare-fun tp!1263 () Bool)

(declare-fun b_and!2999 () Bool)

(assert (=> b!8513 (= tp!1263 b_and!2999)))

(declare-fun f!585 () Int)

(declare-fun lambda!1946 () Int)

(declare-fun b_next!1699 () Bool)

(assert (=> start!1682 (= b_next!1689 (or (and start!1682 (= lambda!1946 f!585)) b_next!1699))))

(declare-fun f!615 () Int)

(declare-fun b_next!1701 () Bool)

(assert (=> start!1682 (= b_next!1691 (or (and start!1682 (= lambda!1946 f!615)) b_next!1701))))

(declare-fun b!8517 () Bool)

(assert (=> b!8517 true))

(declare-fun order!85 () Int)

(declare-fun lambda!1947 () Int)

(declare-fun order!87 () Int)

(declare-fun dynLambda!226 (Int Int) Int)

(declare-fun dynLambda!227 (Int Int) Int)

(assert (=> b!8517 (< (dynLambda!226 order!85 f!585) (dynLambda!227 order!87 lambda!1947))))

(assert (=> b!8517 true))

(declare-fun b_next!1703 () Bool)

(declare-datatypes () ((Balance!157 (Balance!158 (extraOpen!119 Int) (extraClose!119 Int)))))

(declare-datatypes () ((EqEvidence!124 (EqEvidence!125 (x!4640 Int) (y!514 Int) (evidence!129 Int)))))

(declare-fun thiss!852 () EqEvidence!124)

(assert (=> b!8513 (= b_next!1693 (or (and b!8517 (= lambda!1947 (x!4640 thiss!852))) b_next!1703))))

(declare-fun b_next!1705 () Bool)

(assert (=> b!8513 (= b_next!1695 (or (and b!8517 (= lambda!1947 (y!514 thiss!852))) b_next!1705))))

(declare-fun lambda!1948 () Int)

(assert (=> b!8517 (not (= lambda!1948 lambda!1947))))

(assert (=> b!8517 true))

(assert (=> b!8517 (< (dynLambda!226 order!85 f!585) (dynLambda!227 order!87 lambda!1948))))

(assert (=> b!8517 true))

(declare-fun b_next!1707 () Bool)

(assert (=> b!8513 (= b_next!1703 (or (and b!8517 (= lambda!1948 (x!4640 thiss!852))) b_next!1707))))

(declare-fun b_next!1709 () Bool)

(assert (=> b!8513 (= b_next!1705 (or (and b!8517 (= lambda!1948 (y!514 thiss!852))) b_next!1709))))

(declare-fun m!11397 () Bool)

(assert (=> b!8517 m!11397))

(declare-fun lambda!1949 () Int)

(declare-fun dynLambda!228 (Int) Bool)

(assert (=> (and b!8513 b!8517 (= (dynLambda!228 lambda!1949) (dynLambda!228 (evidence!129 thiss!852)))) (= lambda!1949 (evidence!129 thiss!852))))

(declare-fun b_next!1711 () Bool)

(assert (=> b!8513 (= b_next!1697 (or (and b!8517 (= lambda!1949 (evidence!129 thiss!852))) b_next!1711))))

(declare-fun b!8511 () Bool)

(declare-fun res!2624 () Bool)

(declare-fun e!4903 () Bool)

(assert (=> b!8511 (=> (not res!2624) (not e!4903))))

(declare-datatypes () ((Tree!41 (Branch!32 (left!373 Tree!41) (right!376 Tree!41)) (Leaf!114 (value!1283 Balance!157)))))

(declare-fun tree!25 () Tree!41)

(assert (=> b!8511 (= res!2624 (not (is-Leaf!114 tree!25)))))

(declare-fun b!8512 () Bool)

(declare-datatypes () ((List!195 (Nil!193) (Cons!192 (head!410 Balance!157) (tail!422 List!195)))))

(declare-fun thiss!948 () List!195)

(declare-fun isEmpty!161 (List!195) Bool)

(assert (=> b!8512 (= e!4903 (isEmpty!161 thiss!948))))

(declare-fun e!4902 () Bool)

(assert (=> b!8513 (= e!4902 (and tp!1267 tp!1265 tp!1263))))

(declare-fun b!8514 () Bool)

(declare-fun res!2627 () Bool)

(assert (=> b!8514 (=> (not res!2627) (not e!4903))))

(declare-fun toList!41 (Tree!41) List!195)

(assert (=> b!8514 (= res!2627 (= thiss!948 (toList!41 tree!25)))))

(declare-fun b!8515 () Bool)

(declare-fun res!2626 () Bool)

(assert (=> b!8515 (=> (not res!2626) (not e!4903))))

(assert (=> b!8515 (= res!2626 (= f!615 f!585))))

(declare-fun res!2623 () Bool)

(assert (=> start!1682 (=> (not res!2623) (not e!4903))))

(assert (=> start!1682 (= res!2623 (= f!585 lambda!1946))))

(assert (=> start!1682 e!4903))

(assert (=> start!1682 true))

(assert (=> start!1682 tp!1266))

(declare-fun inv!295 (EqEvidence!124) Bool)

(assert (=> start!1682 (and (inv!295 thiss!852) e!4902)))

(assert (=> start!1682 tp!1264))

(declare-fun b!8516 () Bool)

(declare-fun res!2625 () Bool)

(assert (=> b!8516 (=> (not res!2625) (not e!4903))))

(declare-datatypes () ((ProofOps!104 (ProofOps!105 (prop!166 Bool)))))

(declare-fun thiss!829 () ProofOps!104)

(declare-fun fold!17 (Tree!41 Int) Balance!157)

(declare-fun foldRight1!48 (List!195 Int) Balance!157)

(assert (=> b!8516 (= res!2625 (= thiss!829 (ProofOps!105 (= (fold!17 tree!25 f!585) (foldRight1!48 (toList!41 tree!25) f!585)))))))

(declare-fun res!2622 () Bool)

(assert (=> b!8517 (=> (not res!2622) (not e!4903))))

(assert (=> b!8517 (= res!2622 (= thiss!852 (EqEvidence!125 lambda!1947 lambda!1948 lambda!1949)))))

(assert (= (and start!1682 res!2623) b!8516))

(assert (= (and b!8516 res!2625) b!8511))

(assert (= (and b!8511 res!2624) b!8517))

(assert (= (and b!8517 res!2622) b!8514))

(assert (= (and b!8514 res!2627) b!8515))

(assert (= (and b!8515 res!2626) b!8512))

(assert (= start!1682 b!8513))

(declare-fun m!11399 () Bool)

(assert (=> b!8512 m!11399))

(declare-fun m!11401 () Bool)

(assert (=> b!8514 m!11401))

(declare-fun m!11403 () Bool)

(assert (=> start!1682 m!11403))

(declare-fun m!11405 () Bool)

(assert (=> b!8516 m!11405))

(assert (=> b!8516 m!11401))

(assert (=> b!8516 m!11401))

(declare-fun m!11407 () Bool)

(assert (=> b!8516 m!11407))

(push 1)

(assert (not b_next!1699))

(assert b_and!2993)

(assert b_and!2995)

(assert (not b!8512))

(assert (not start!1682))

(assert (not b!8514))

(assert (not b_next!1711))

(assert (not b!8517))

(assert b_and!2997)

(assert (not b!8516))

(assert (not b_next!1707))

(assert b_and!2991)

(assert (not b_next!1701))

(assert b_and!2999)

(assert (not b_next!1709))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1699))

(assert b_and!2993)

(assert b_and!2995)

(assert (not b_next!1711))

(assert b_and!2997)

(assert (not b_next!1707))

(assert b_and!2991)

(assert (not b_next!1701))

(assert b_and!2999)

(assert (not b_next!1709))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6667 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!6667 (= trivial!1 true)))

(assert (=> b!8517 d!6667))

(declare-fun d!6669 () Bool)

(declare-fun lt!1547 () List!195)

(assert (=> d!6669 (not (isEmpty!161 lt!1547))))

(declare-fun e!4906 () List!195)

(assert (=> d!6669 (= lt!1547 e!4906)))

(declare-fun c!2902 () Bool)

(assert (=> d!6669 (= c!2902 (is-Leaf!114 tree!25))))

(assert (=> d!6669 (= (toList!41 tree!25) lt!1547)))

(declare-fun b!8526 () Bool)

(assert (=> b!8526 (= e!4906 (Cons!192 (value!1283 tree!25) Nil!193))))

(declare-fun b!8527 () Bool)

(declare-fun append!82 (List!195 List!195) List!195)

(assert (=> b!8527 (= e!4906 (append!82 (toList!41 (left!373 tree!25)) (toList!41 (right!376 tree!25))))))

(assert (= (and d!6669 c!2902) b!8526))

(assert (= (and d!6669 (not c!2902)) b!8527))

(declare-fun m!11409 () Bool)

(assert (=> d!6669 m!11409))

(declare-fun m!11411 () Bool)

(assert (=> b!8527 m!11411))

(declare-fun m!11413 () Bool)

(assert (=> b!8527 m!11413))

(assert (=> b!8527 m!11411))

(assert (=> b!8527 m!11413))

(declare-fun m!11415 () Bool)

(assert (=> b!8527 m!11415))

(assert (=> b!8514 d!6669))

(declare-fun d!6671 () Bool)

(declare-fun res!2631 () Bool)

(declare-fun e!4909 () Bool)

(assert (=> d!6671 (=> (not res!2631) (not e!4909))))

(declare-fun dynLambda!229 (Int) Balance!157)

(assert (=> d!6671 (= res!2631 (= (dynLambda!229 (x!4640 thiss!852)) (dynLambda!229 (y!514 thiss!852))))))

(assert (=> d!6671 (= (inv!295 thiss!852) e!4909)))

(declare-fun b!8530 () Bool)

(assert (=> b!8530 (= e!4909 (dynLambda!228 (evidence!129 thiss!852)))))

(assert (= (and d!6671 res!2631) b!8530))

(declare-fun b_lambda!4235 () Bool)

(assert (=> (not b_lambda!4235) (not d!6671)))

(declare-fun t!1975 () Bool)

(declare-fun tb!1635 () Bool)

(assert (=> (and b!8513 (= (x!4640 thiss!852) (x!4640 thiss!852)) t!1975) tb!1635))

(declare-fun result!1675 () Bool)

(assert (=> tb!1635 (= result!1675 true)))

(assert (=> d!6671 t!1975))

(declare-fun b_and!3001 () Bool)

(assert (= b_and!2995 (and (=> t!1975 result!1675) b_and!3001)))

(declare-fun t!1977 () Bool)

(declare-fun tb!1637 () Bool)

(assert (=> (and b!8513 (= (y!514 thiss!852) (x!4640 thiss!852)) t!1977) tb!1637))

(declare-fun result!1677 () Bool)

(assert (=> tb!1637 (= result!1677 true)))

(assert (=> d!6671 t!1977))

(declare-fun b_and!3003 () Bool)

(assert (= b_and!2997 (and (=> t!1977 result!1677) b_and!3003)))

(declare-fun b_lambda!4237 () Bool)

(assert (=> (not b_lambda!4237) (not d!6671)))

(declare-fun t!1979 () Bool)

(declare-fun tb!1639 () Bool)

(assert (=> (and b!8513 (= (x!4640 thiss!852) (y!514 thiss!852)) t!1979) tb!1639))

(declare-fun result!1679 () Bool)

(assert (=> tb!1639 (= result!1679 true)))

(assert (=> d!6671 t!1979))

(declare-fun b_and!3005 () Bool)

(assert (= b_and!3001 (and (=> t!1979 result!1679) b_and!3005)))

(declare-fun t!1981 () Bool)

(declare-fun tb!1641 () Bool)

(assert (=> (and b!8513 (= (y!514 thiss!852) (y!514 thiss!852)) t!1981) tb!1641))

(declare-fun result!1681 () Bool)

(assert (=> tb!1641 (= result!1681 true)))

(assert (=> d!6671 t!1981))

(declare-fun b_and!3007 () Bool)

(assert (= b_and!3003 (and (=> t!1981 result!1681) b_and!3007)))

(declare-fun b_lambda!4239 () Bool)

(assert (=> (not b_lambda!4239) (not b!8530)))

(declare-fun t!1983 () Bool)

(declare-fun tb!1643 () Bool)

(assert (=> (and b!8513 (= (evidence!129 thiss!852) (evidence!129 thiss!852)) t!1983) tb!1643))

(declare-fun result!1683 () Bool)

(assert (=> tb!1643 (= result!1683 true)))

(assert (=> b!8530 t!1983))

(declare-fun b_and!3009 () Bool)

(assert (= b_and!2999 (and (=> t!1983 result!1683) b_and!3009)))

(declare-fun m!11417 () Bool)

(assert (=> d!6671 m!11417))

(declare-fun m!11419 () Bool)

(assert (=> d!6671 m!11419))

(declare-fun m!11421 () Bool)

(assert (=> b!8530 m!11421))

(assert (=> start!1682 d!6671))

(declare-fun bs!1987 () Bool)

(declare-fun b!8536 () Bool)

(assert (= bs!1987 (and b!8536 b!8517)))

(declare-fun lambda!1954 () Int)

(assert (=> bs!1987 (= (= (left!373 tree!25) tree!25) (= lambda!1954 lambda!1947))))

(assert (=> bs!1987 (not (= lambda!1954 lambda!1948))))

(assert (=> b!8536 true))

(assert (=> b!8536 (< (dynLambda!226 order!85 f!585) (dynLambda!227 order!87 lambda!1954))))

(assert (=> b!8536 true))

(declare-fun b_next!1713 () Bool)

(assert (=> b!8513 (= b_next!1707 (or (and b!8536 (= lambda!1954 (x!4640 thiss!852))) b_next!1713))))

(declare-fun b_next!1715 () Bool)

(assert (=> b!8513 (= b_next!1709 (or (and b!8536 (= lambda!1954 (y!514 thiss!852))) b_next!1715))))

(declare-fun lambda!1955 () Int)

(assert (=> bs!1987 (= (= (right!376 tree!25) tree!25) (= lambda!1955 lambda!1947))))

(assert (=> bs!1987 (not (= lambda!1955 lambda!1948))))

(assert (=> b!8536 (= (= (right!376 tree!25) (left!373 tree!25)) (= lambda!1955 lambda!1954))))

(assert (=> b!8536 true))

(assert (=> b!8536 (< (dynLambda!226 order!85 f!585) (dynLambda!227 order!87 lambda!1955))))

(assert (=> b!8536 true))

(declare-fun b_next!1717 () Bool)

(assert (=> b!8513 (= b_next!1713 (or (and b!8536 (= lambda!1955 (x!4640 thiss!852))) b_next!1717))))

(declare-fun b_next!1719 () Bool)

(assert (=> b!8513 (= b_next!1715 (or (and b!8536 (= lambda!1955 (y!514 thiss!852))) b_next!1719))))

(declare-fun e!4928 () Balance!157)

(declare-datatypes () ((tuple2!56 (tuple2!57 (_1!28 Balance!157) (_2!28 Balance!157)))))

(declare-fun lt!1550 () tuple2!56)

(declare-fun dynLambda!230 (Int Balance!157 Balance!157) Balance!157)

(assert (=> b!8536 (= e!4928 (dynLambda!230 f!585 (_1!28 lt!1550) (_2!28 lt!1550)))))

(assert (=> b!8536 (= lt!1550 (tuple2!57 (dynLambda!229 lambda!1954) (dynLambda!229 lambda!1955)))))

(declare-fun d!6673 () Bool)

(declare-fun c!2905 () Bool)

(assert (=> d!6673 (= c!2905 (is-Leaf!114 tree!25))))

(assert (=> d!6673 (= (fold!17 tree!25 f!585) e!4928)))

(declare-fun b!8535 () Bool)

(assert (=> b!8535 (= e!4928 (value!1283 tree!25))))

(assert (= (and d!6673 c!2905) b!8535))

(assert (= (and d!6673 (not c!2905)) b!8536))

(declare-fun b_lambda!4241 () Bool)

(assert (=> (not b_lambda!4241) (not b!8536)))

(declare-fun t!1985 () Bool)

(declare-fun tb!1645 () Bool)

(assert (=> (and start!1682 (= f!585 f!585) t!1985) tb!1645))

(declare-fun result!1685 () Bool)

(assert (=> tb!1645 (= result!1685 true)))

(assert (=> b!8536 t!1985))

(declare-fun b_and!3011 () Bool)

(assert (= b_and!2991 (and (=> t!1985 result!1685) b_and!3011)))

(declare-fun tb!1647 () Bool)

(declare-fun t!1987 () Bool)

(assert (=> (and start!1682 (= f!615 f!585) t!1987) tb!1647))

(declare-fun result!1687 () Bool)

(assert (=> tb!1647 (= result!1687 true)))

(assert (=> b!8536 t!1987))

(declare-fun b_and!3013 () Bool)

(assert (= b_and!2993 (and (=> t!1987 result!1687) b_and!3013)))

(declare-fun b_lambda!4243 () Bool)

(assert (=> (not b_lambda!4243) (not b!8536)))

(declare-fun b_lambda!4245 () Bool)

(assert (=> (not b_lambda!4245) (not b!8536)))

(declare-fun m!11423 () Bool)

(assert (=> b!8536 m!11423))

(declare-fun m!11425 () Bool)

(assert (=> b!8536 m!11425))

(declare-fun m!11427 () Bool)

(assert (=> b!8536 m!11427))

(assert (=> b!8516 d!6673))

(declare-fun d!6675 () Bool)

(declare-fun c!2908 () Bool)

(assert (=> d!6675 (= c!2908 (and (is-Cons!192 (toList!41 tree!25)) (is-Nil!193 (tail!422 (toList!41 tree!25)))))))

(declare-fun e!4931 () Balance!157)

(assert (=> d!6675 (= (foldRight1!48 (toList!41 tree!25) f!585) e!4931)))

(declare-fun b!8541 () Bool)

(assert (=> b!8541 (= e!4931 (head!410 (toList!41 tree!25)))))

(declare-fun b!8542 () Bool)

(assert (=> b!8542 (= e!4931 (dynLambda!230 f!585 (head!410 (toList!41 tree!25)) (foldRight1!48 (tail!422 (toList!41 tree!25)) f!585)))))

(assert (= (and d!6675 c!2908) b!8541))

(assert (= (and d!6675 (not c!2908)) b!8542))

(declare-fun b_lambda!4247 () Bool)

(assert (=> (not b_lambda!4247) (not b!8542)))

(declare-fun t!1989 () Bool)

(declare-fun tb!1649 () Bool)

(assert (=> (and start!1682 (= f!585 f!585) t!1989) tb!1649))

(declare-fun result!1689 () Bool)

(assert (=> tb!1649 (= result!1689 true)))

(assert (=> b!8542 t!1989))

(declare-fun b_and!3015 () Bool)

(assert (= b_and!3011 (and (=> t!1989 result!1689) b_and!3015)))

(declare-fun tb!1651 () Bool)

(declare-fun t!1991 () Bool)

(assert (=> (and start!1682 (= f!615 f!585) t!1991) tb!1651))

(declare-fun result!1691 () Bool)

(assert (=> tb!1651 (= result!1691 true)))

(assert (=> b!8542 t!1991))

(declare-fun b_and!3017 () Bool)

(assert (= b_and!3013 (and (=> t!1991 result!1691) b_and!3017)))

(declare-fun m!11429 () Bool)

(assert (=> b!8542 m!11429))

(assert (=> b!8542 m!11429))

(declare-fun m!11431 () Bool)

(assert (=> b!8542 m!11431))

(assert (=> b!8516 d!6675))

(assert (=> b!8516 d!6669))

(declare-fun d!6677 () Bool)

(assert (=> d!6677 (= (isEmpty!161 thiss!948) (is-Nil!193 thiss!948))))

(assert (=> b!8512 d!6677))

(declare-fun b_lambda!4249 () Bool)

(assert (= b_lambda!4235 (or (and b!8536 (= lambda!1954 (x!4640 thiss!852))) (and b!8536 (= lambda!1955 (x!4640 thiss!852))) (and b!8513 b_free!759) (and b!8517 (= lambda!1948 (x!4640 thiss!852))) (and b!8517 (= lambda!1947 (x!4640 thiss!852))) (and b!8513 b_free!761 (= (y!514 thiss!852) (x!4640 thiss!852))) b_lambda!4249)))

(declare-fun bs!1988 () Bool)

(declare-fun d!6679 () Bool)

(assert (= bs!1988 (and d!6679 b!8517)))

(assert (=> bs!1988 (= (dynLambda!229 lambda!1948) (foldRight1!48 (append!82 (toList!41 (left!373 tree!25)) (toList!41 (right!376 tree!25))) f!585))))

(assert (=> bs!1988 m!11411))

(assert (=> bs!1988 m!11413))

(assert (=> bs!1988 m!11411))

(assert (=> bs!1988 m!11413))

(assert (=> bs!1988 m!11415))

(assert (=> bs!1988 m!11415))

(declare-fun m!11433 () Bool)

(assert (=> bs!1988 m!11433))

(assert (=> (and b!8517 (= lambda!1948 (x!4640 thiss!852)) d!6671) d!6679))

(declare-fun bs!1989 () Bool)

(declare-fun d!6681 () Bool)

(assert (= bs!1989 (and d!6681 b!8536)))

(assert (=> bs!1989 (= (dynLambda!229 lambda!1954) (fold!17 (left!373 tree!25) f!585))))

(declare-fun m!11435 () Bool)

(assert (=> bs!1989 m!11435))

(assert (=> (and b!8536 (= lambda!1954 (x!4640 thiss!852)) d!6671) d!6681))

(declare-fun bs!1990 () Bool)

(declare-fun d!6683 () Bool)

(assert (= bs!1990 (and d!6683 b!8517)))

(assert (=> bs!1990 (= (dynLambda!229 lambda!1947) (fold!17 tree!25 f!585))))

(assert (=> bs!1990 m!11405))

(assert (=> (and b!8517 (= lambda!1947 (x!4640 thiss!852)) d!6671) d!6683))

(declare-fun bs!1991 () Bool)

(declare-fun d!6685 () Bool)

(assert (= bs!1991 (and d!6685 b!8536)))

(assert (=> bs!1991 (= (dynLambda!229 lambda!1955) (fold!17 (right!376 tree!25) f!585))))

(declare-fun m!11437 () Bool)

(assert (=> bs!1991 m!11437))

(assert (=> (and b!8536 (= lambda!1955 (x!4640 thiss!852)) d!6671) d!6685))

(declare-fun b_lambda!4251 () Bool)

(assert (= b_lambda!4241 (or (and start!1682 (= lambda!1946 f!585)) (and start!1682 b_free!755) (and start!1682 b_free!757 (= f!615 f!585)) b_lambda!4251)))

(declare-fun bs!1992 () Bool)

(declare-fun d!6687 () Bool)

(assert (= bs!1992 (and d!6687 start!1682)))

(declare-fun ++!3 (Balance!157 Balance!157) Balance!157)

(assert (=> bs!1992 (= (dynLambda!230 lambda!1946 (_1!28 lt!1550) (_2!28 lt!1550)) (++!3 (_1!28 lt!1550) (_2!28 lt!1550)))))

(declare-fun m!11439 () Bool)

(assert (=> bs!1992 m!11439))

(assert (=> (and start!1682 (= lambda!1946 f!585) b!8536) d!6687))

(declare-fun b_lambda!4253 () Bool)

(assert (= b_lambda!4247 (or (and start!1682 (= lambda!1946 f!585)) (and start!1682 b_free!755) (and start!1682 b_free!757 (= f!615 f!585)) b_lambda!4253)))

(declare-fun bs!1993 () Bool)

(declare-fun d!6689 () Bool)

(assert (= bs!1993 (and d!6689 start!1682)))

(assert (=> bs!1993 (= (dynLambda!230 lambda!1946 (head!410 (toList!41 tree!25)) (foldRight1!48 (tail!422 (toList!41 tree!25)) f!585)) (++!3 (head!410 (toList!41 tree!25)) (foldRight1!48 (tail!422 (toList!41 tree!25)) f!585)))))

(assert (=> bs!1993 m!11429))

(declare-fun m!11441 () Bool)

(assert (=> bs!1993 m!11441))

(assert (=> (and start!1682 (= lambda!1946 f!585) b!8542) d!6689))

(declare-fun b_lambda!4255 () Bool)

(assert (= b_lambda!4245 (or b!8536 b_lambda!4255)))

(declare-fun bs!1994 () Bool)

(declare-fun d!6691 () Bool)

(assert (= bs!1994 (and d!6691 b!8536)))

(assert (=> bs!1994 (= (dynLambda!229 lambda!1955) (fold!17 (right!376 tree!25) f!585))))

(assert (=> bs!1994 m!11437))

(assert (=> b!8536 d!6691))

(declare-fun b_lambda!4257 () Bool)

(assert (= b_lambda!4237 (or (and b!8536 (= lambda!1955 (y!514 thiss!852))) (and b!8517 (= lambda!1947 (y!514 thiss!852))) (and b!8536 (= lambda!1954 (y!514 thiss!852))) (and b!8513 b_free!761) (and b!8517 (= lambda!1948 (y!514 thiss!852))) (and b!8513 b_free!759 (= (x!4640 thiss!852) (y!514 thiss!852))) b_lambda!4257)))

(declare-fun bs!1995 () Bool)

(declare-fun d!6693 () Bool)

(assert (= bs!1995 (and d!6693 b!8536)))

(assert (=> bs!1995 (= (dynLambda!229 lambda!1954) (fold!17 (left!373 tree!25) f!585))))

(assert (=> bs!1995 m!11435))

(assert (=> (and b!8536 (= lambda!1954 (y!514 thiss!852)) d!6671) d!6693))

(declare-fun bs!1996 () Bool)

(declare-fun d!6695 () Bool)

(assert (= bs!1996 (and d!6695 b!8517)))

(assert (=> bs!1996 (= (dynLambda!229 lambda!1947) (fold!17 tree!25 f!585))))

(assert (=> bs!1996 m!11405))

(assert (=> (and b!8517 (= lambda!1947 (y!514 thiss!852)) d!6671) d!6695))

(declare-fun bs!1997 () Bool)

(declare-fun d!6697 () Bool)

(assert (= bs!1997 (and d!6697 b!8536)))

(assert (=> bs!1997 (= (dynLambda!229 lambda!1955) (fold!17 (right!376 tree!25) f!585))))

(assert (=> bs!1997 m!11437))

(assert (=> (and b!8536 (= lambda!1955 (y!514 thiss!852)) d!6671) d!6697))

(declare-fun bs!1998 () Bool)

(declare-fun d!6699 () Bool)

(assert (= bs!1998 (and d!6699 b!8517)))

(assert (=> bs!1998 (= (dynLambda!229 lambda!1948) (foldRight1!48 (append!82 (toList!41 (left!373 tree!25)) (toList!41 (right!376 tree!25))) f!585))))

(assert (=> bs!1998 m!11411))

(assert (=> bs!1998 m!11413))

(assert (=> bs!1998 m!11411))

(assert (=> bs!1998 m!11413))

(assert (=> bs!1998 m!11415))

(assert (=> bs!1998 m!11415))

(assert (=> bs!1998 m!11433))

(assert (=> (and b!8517 (= lambda!1948 (y!514 thiss!852)) d!6671) d!6699))

(declare-fun b_lambda!4259 () Bool)

(assert (= b_lambda!4239 (or (and b!8517 (= lambda!1949 (evidence!129 thiss!852))) (and b!8513 b_free!763) b_lambda!4259)))

(declare-fun bs!1999 () Bool)

(declare-fun d!6701 () Bool)

(assert (= bs!1999 (and d!6701 b!8517)))

(assert (=> bs!1999 (= (dynLambda!228 lambda!1949) trivial!1)))

(assert (=> (and b!8517 (= lambda!1949 (evidence!129 thiss!852)) b!8530) d!6701))

(declare-fun b_lambda!4261 () Bool)

(assert (= b_lambda!4243 (or b!8536 b_lambda!4261)))

(declare-fun bs!2000 () Bool)

(declare-fun d!6703 () Bool)

(assert (= bs!2000 (and d!6703 b!8536)))

(assert (=> bs!2000 (= (dynLambda!229 lambda!1954) (fold!17 (left!373 tree!25) f!585))))

(assert (=> bs!2000 m!11435))

(assert (=> b!8536 d!6703))

(push 1)

(assert (not bs!1991))

(assert (not b_next!1699))

(assert (not b_lambda!4251))

(assert (not b_lambda!4257))

(assert (not d!6669))

(assert (not bs!2000))

(assert (not bs!1993))

(assert (not b_lambda!4261))

(assert (not bs!1992))

(assert (not bs!1990))

(assert b_and!3007)

(assert (not b_lambda!4253))

(assert b_and!3009)

(assert b_and!3005)

(assert (not bs!1994))

(assert (not b_next!1711))

(assert (not bs!1997))

(assert (not bs!1995))

(assert (not b!8527))

(assert (not b_next!1719))

(assert (not bs!1998))

(assert b_and!3017)

(assert (not b_next!1717))

(assert (not b_lambda!4259))

(assert (not b_lambda!4255))

(assert b_and!3015)

(assert (not bs!1996))

(assert (not b_next!1701))

(assert (not bs!1988))

(assert (not b!8542))

(assert (not b_lambda!4249))

(assert (not bs!1989))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1699))

(assert b_and!3007)

(assert b_and!3009)

(assert b_and!3005)

(assert (not b_next!1711))

(assert (not b_next!1719))

(assert b_and!3017)

(assert (not b_next!1717))

(assert b_and!3015)

(assert (not b_next!1701))

(check-sat)

(pop 1)

