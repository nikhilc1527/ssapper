; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1492 () Bool)

(assert start!1492)

(declare-fun b!7790 () Bool)

(declare-fun b_free!601 () Bool)

(declare-fun b_next!1265 () Bool)

(assert (=> b!7790 (= b_free!601 (not b_next!1265))))

(declare-fun tp!1034 () Bool)

(declare-fun b_and!2491 () Bool)

(assert (=> b!7790 (= tp!1034 b_and!2491)))

(declare-fun b_free!603 () Bool)

(declare-fun b_next!1267 () Bool)

(assert (=> b!7790 (= b_free!603 (not b_next!1267))))

(declare-fun tp!1037 () Bool)

(declare-fun b_and!2493 () Bool)

(assert (=> b!7790 (= tp!1037 b_and!2493)))

(declare-fun b_free!605 () Bool)

(declare-fun b_next!1269 () Bool)

(assert (=> b!7790 (= b_free!605 (not b_next!1269))))

(declare-fun tp!1038 () Bool)

(declare-fun b_and!2495 () Bool)

(assert (=> b!7790 (= tp!1038 b_and!2495)))

(declare-fun b_free!607 () Bool)

(declare-fun b_next!1271 () Bool)

(assert (=> start!1492 (= b_free!607 (not b_next!1271))))

(declare-fun tp!1036 () Bool)

(declare-fun b_and!2497 () Bool)

(assert (=> start!1492 (= tp!1036 b_and!2497)))

(declare-fun b!7794 () Bool)

(declare-fun b_free!609 () Bool)

(declare-fun b_next!1273 () Bool)

(assert (=> b!7794 (= b_free!609 (not b_next!1273))))

(declare-fun tp!1039 () Bool)

(declare-fun b_and!2499 () Bool)

(assert (=> b!7794 (= tp!1039 b_and!2499)))

(declare-fun b_free!611 () Bool)

(declare-fun b_next!1275 () Bool)

(assert (=> b!7794 (= b_free!611 (not b_next!1275))))

(declare-fun tp!1035 () Bool)

(declare-fun b_and!2501 () Bool)

(assert (=> b!7794 (= tp!1035 b_and!2501)))

(declare-fun b!7787 () Bool)

(assert (=> b!7787 true))

(declare-datatypes () ((Balance!121 (Balance!122 (extraOpen!101 Int) (extraClose!101 Int)))))

(declare-datatypes () ((EqEvidence!96 (EqEvidence!97 (x!4275 Int) (y!481 Int) (evidence!115 Int)))))

(declare-fun thiss!1146 () EqEvidence!96)

(declare-fun lambda!1628 () Int)

(declare-fun b_next!1277 () Bool)

(assert (=> b!7790 (= b_next!1265 (or (and b!7787 (= lambda!1628 (x!4275 thiss!1146))) b_next!1277))))

(declare-fun b_next!1279 () Bool)

(assert (=> b!7790 (= b_next!1267 (or (and b!7787 (= lambda!1628 (y!481 thiss!1146))) b_next!1279))))

(declare-datatypes () ((EqProof!48 (EqProof!49 (x!4276 Int) (y!482 Int)))))

(declare-fun thiss!1182 () EqProof!48)

(declare-fun b_next!1281 () Bool)

(assert (=> b!7794 (= b_next!1273 (or (and b!7787 (= lambda!1628 (x!4276 thiss!1182))) b_next!1281))))

(declare-fun b_next!1283 () Bool)

(assert (=> b!7794 (= b_next!1275 (or (and b!7787 (= lambda!1628 (y!482 thiss!1182))) b_next!1283))))

(declare-fun m!10625 () Bool)

(assert (=> b!7787 m!10625))

(declare-fun lambda!1629 () Int)

(assert (=> b!7787 (not (= lambda!1629 lambda!1628))))

(assert (=> b!7787 true))

(declare-fun b_next!1285 () Bool)

(assert (=> b!7790 (= b_next!1277 (or (and b!7787 (= lambda!1629 (x!4275 thiss!1146))) b_next!1285))))

(declare-fun b_next!1287 () Bool)

(assert (=> b!7790 (= b_next!1279 (or (and b!7787 (= lambda!1629 (y!481 thiss!1146))) b_next!1287))))

(declare-fun b_next!1289 () Bool)

(assert (=> b!7794 (= b_next!1281 (or (and b!7787 (= lambda!1629 (x!4276 thiss!1182))) b_next!1289))))

(declare-fun b_next!1291 () Bool)

(assert (=> b!7794 (= b_next!1283 (or (and b!7787 (= lambda!1629 (y!482 thiss!1182))) b_next!1291))))

(assert (=> b!7787 true))

(declare-fun lambda!1630 () Int)

(declare-fun b_next!1293 () Bool)

(assert (=> b!7790 (= b_next!1269 (or (and b!7787 (= lambda!1630 (evidence!115 thiss!1146))) b_next!1293))))

(declare-fun b_next!1295 () Bool)

(declare-fun proof!295 () Int)

(assert (=> start!1492 (= b_next!1271 (or (and b!7787 (= lambda!1630 proof!295)) b_next!1295))))

(declare-fun b!7792 () Bool)

(assert (=> b!7792 m!10625))

(declare-fun bs!1782 () Bool)

(assert (= bs!1782 (and b!7792 b!7787)))

(declare-fun lambda!1631 () Int)

(assert (=> bs!1782 (not (= lambda!1631 lambda!1628))))

(assert (=> bs!1782 (not (= lambda!1631 lambda!1629))))

(assert (=> b!7792 true))

(declare-fun b_next!1297 () Bool)

(assert (=> b!7790 (= b_next!1285 (or (and b!7792 (= lambda!1631 (x!4275 thiss!1146))) b_next!1297))))

(declare-fun b_next!1299 () Bool)

(assert (=> b!7790 (= b_next!1287 (or (and b!7792 (= lambda!1631 (y!481 thiss!1146))) b_next!1299))))

(declare-fun b_next!1301 () Bool)

(assert (=> b!7794 (= b_next!1289 (or (and b!7792 (= lambda!1631 (x!4276 thiss!1182))) b_next!1301))))

(declare-fun b_next!1303 () Bool)

(assert (=> b!7794 (= b_next!1291 (or (and b!7792 (= lambda!1631 (y!482 thiss!1182))) b_next!1303))))

(declare-fun b!7791 () Bool)

(declare-fun m!10627 () Bool)

(assert (=> b!7791 m!10627))

(declare-fun bs!1783 () Bool)

(assert (= bs!1783 (and b!7791 b!7787)))

(declare-fun lambda!1632 () Int)

(assert (=> bs!1783 (not (= lambda!1632 lambda!1630))))

(declare-fun dynLambda!175 (Int) Bool)

(assert (=> (and b!7790 b!7791 (= (dynLambda!175 lambda!1632) (dynLambda!175 (evidence!115 thiss!1146)))) (= lambda!1632 (evidence!115 thiss!1146))))

(assert (=> (and start!1492 b!7791 (= (dynLambda!175 lambda!1632) (dynLambda!175 proof!295))) (= lambda!1632 proof!295)))

(declare-fun b_next!1305 () Bool)

(assert (=> b!7790 (= b_next!1293 (or (and b!7791 (= lambda!1632 (evidence!115 thiss!1146))) b_next!1305))))

(declare-fun b_next!1307 () Bool)

(assert (=> start!1492 (= b_next!1295 (or (and b!7791 (= lambda!1632 proof!295)) b_next!1307))))

(declare-fun res!2315 () Bool)

(declare-fun e!4462 () Bool)

(assert (=> b!7787 (=> (not res!2315) (not e!4462))))

(assert (=> b!7787 (= res!2315 (= thiss!1146 (EqEvidence!97 lambda!1628 lambda!1629 lambda!1630)))))

(declare-fun b!7788 () Bool)

(assert (=> b!7788 (= e!4462 (not (dynLambda!175 proof!295)))))

(declare-fun b!7789 () Bool)

(declare-fun res!2316 () Bool)

(assert (=> b!7789 (=> (not res!2316) (not e!4462))))

(declare-datatypes () ((Parenthesis!47 (CloseParenthesis!46) (OpenParenthesis!46))))

(declare-datatypes () ((List!177 (Nil!175) (Cons!174 (head!392 Parenthesis!47) (tail!404 List!177)))))

(declare-fun xs!372 () List!177)

(assert (=> b!7789 (= res!2316 (or (not (is-Cons!174 xs!372)) (not (is-Nil!175 (tail!404 xs!372)))))))

(declare-fun e!4463 () Bool)

(assert (=> b!7790 (= e!4463 (and tp!1034 tp!1037 tp!1038))))

(declare-fun res!2314 () Bool)

(assert (=> b!7791 (=> (not res!2314) (not e!4462))))

(assert (=> b!7791 (= res!2314 (= proof!295 lambda!1632))))

(declare-fun res!2318 () Bool)

(assert (=> start!1492 (=> (not res!2318) (not e!4462))))

(declare-fun isEmpty!148 (List!177) Bool)

(assert (=> start!1492 (= res!2318 (not (isEmpty!148 xs!372)))))

(assert (=> start!1492 e!4462))

(declare-fun inv!276 (EqEvidence!96) Bool)

(assert (=> start!1492 (and (inv!276 thiss!1146) e!4463)))

(assert (=> start!1492 true))

(assert (=> start!1492 tp!1036))

(declare-fun e!4464 () Bool)

(declare-fun inv!277 (EqProof!48) Bool)

(assert (=> start!1492 (and (inv!277 thiss!1182) e!4464)))

(declare-fun res!2317 () Bool)

(assert (=> b!7792 (=> (not res!2317) (not e!4462))))

(assert (=> b!7792 (= res!2317 (= thiss!1182 (EqProof!49 lambda!1631 lambda!1631)))))

(declare-fun b!7793 () Bool)

(declare-fun res!2313 () Bool)

(assert (=> b!7793 (=> (not res!2313) (not e!4462))))

(declare-fun lambda!1627 () Int)

(declare-fun lambda!1626 () Int)

(declare-datatypes () ((ProofOps!80 (ProofOps!81 (prop!152 Bool)))))

(declare-fun thiss!1106 () ProofOps!80)

(declare-datatypes () ((List!178 (Nil!176) (Cons!175 (head!393 Balance!121) (tail!405 List!178)))))

(declare-fun foldRight1!36 (List!178 Int) Balance!121)

(declare-fun append!69 (List!178 List!178) List!178)

(declare-fun map!157 (List!177 Int) List!178)

(assert (=> b!7793 (= res!2313 (= thiss!1106 (ProofOps!81 (= (foldRight1!36 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176)) lambda!1627) (foldRight1!36 (map!157 xs!372 lambda!1626) lambda!1627)))))))

(assert (=> b!7794 (= e!4464 (and tp!1039 tp!1035))))

(assert (= (and start!1492 res!2318) b!7793))

(assert (= (and b!7793 res!2313) b!7789))

(assert (= (and b!7789 res!2316) b!7787))

(assert (= (and b!7787 res!2315) b!7792))

(assert (= (and b!7792 res!2317) b!7791))

(assert (= (and b!7791 res!2314) b!7788))

(assert (= start!1492 b!7790))

(assert (= start!1492 b!7794))

(declare-fun b_lambda!3819 () Bool)

(assert (=> (not b_lambda!3819) (not b!7788)))

(declare-fun t!1695 () Bool)

(declare-fun tb!1355 () Bool)

(assert (=> (and b!7790 (= (evidence!115 thiss!1146) proof!295) t!1695) tb!1355))

(declare-fun result!1395 () Bool)

(assert (=> tb!1355 (= result!1395 true)))

(assert (=> b!7788 t!1695))

(declare-fun b_and!2503 () Bool)

(assert (= b_and!2495 (and (=> t!1695 result!1395) b_and!2503)))

(declare-fun t!1697 () Bool)

(declare-fun tb!1357 () Bool)

(assert (=> (and start!1492 (= proof!295 proof!295) t!1697) tb!1357))

(declare-fun result!1397 () Bool)

(assert (=> tb!1357 (= result!1397 true)))

(assert (=> b!7788 t!1697))

(declare-fun b_and!2505 () Bool)

(assert (= b_and!2497 (and (=> t!1697 result!1397) b_and!2505)))

(declare-fun m!10629 () Bool)

(assert (=> b!7788 m!10629))

(declare-fun m!10631 () Bool)

(assert (=> start!1492 m!10631))

(declare-fun m!10633 () Bool)

(assert (=> start!1492 m!10633))

(declare-fun m!10635 () Bool)

(assert (=> start!1492 m!10635))

(declare-fun m!10637 () Bool)

(assert (=> b!7793 m!10637))

(assert (=> b!7793 m!10637))

(assert (=> b!7793 m!10637))

(declare-fun m!10639 () Bool)

(assert (=> b!7793 m!10639))

(assert (=> b!7793 m!10637))

(declare-fun m!10641 () Bool)

(assert (=> b!7793 m!10641))

(assert (=> b!7793 m!10641))

(declare-fun m!10643 () Bool)

(assert (=> b!7793 m!10643))

(push 1)

(assert (not b_lambda!3819))

(assert b_and!2505)

(assert (not b!7787))

(assert (not b_next!1307))

(assert (not b!7793))

(assert b_and!2503)

(assert (not b!7792))

(assert b_and!2491)

(assert (not b_next!1301))

(assert (not b!7791))

(assert (not b_next!1305))

(assert (not b_next!1303))

(assert b_and!2499)

(assert (not b_next!1299))

(assert b_and!2493)

(assert (not start!1492))

(assert (not b_next!1297))

(assert b_and!2501)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2505)

(assert (not b_next!1307))

(assert b_and!2503)

(assert b_and!2491)

(assert (not b_next!1301))

(assert (not b_next!1305))

(assert (not b_next!1303))

(assert b_and!2499)

(assert (not b_next!1299))

(assert b_and!2493)

(assert (not b_next!1297))

(assert b_and!2501)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3821 () Bool)

(assert (= b_lambda!3819 (or (and b!7787 (= lambda!1630 proof!295)) (and b!7791 (= lambda!1632 proof!295)) (and b!7790 b_free!605 (= (evidence!115 thiss!1146) proof!295)) (and start!1492 b_free!607) b_lambda!3821)))

(declare-fun bs!1784 () Bool)

(declare-fun d!6115 () Bool)

(assert (= bs!1784 (and d!6115 b!7787)))

(declare-fun remove_null_balance!0 (List!177) Bool)

(assert (=> bs!1784 (= (dynLambda!175 lambda!1630) (remove_null_balance!0 (tail!404 xs!372)))))

(declare-fun m!10645 () Bool)

(assert (=> bs!1784 m!10645))

(assert (=> (and b!7787 (= lambda!1630 proof!295) b!7788) d!6115))

(declare-fun bs!1785 () Bool)

(declare-fun d!6117 () Bool)

(assert (= bs!1785 (and d!6117 b!7791)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!1785 (= (dynLambda!175 lambda!1632) trivial!1)))

(assert (=> (and b!7791 (= lambda!1632 proof!295) b!7788) d!6117))

(push 1)

(assert b_and!2505)

(assert (not b!7787))

(assert (not b_next!1307))

(assert (not b!7793))

(assert b_and!2503)

(assert (not b!7792))

(assert b_and!2491)

(assert (not b_next!1301))

(assert (not b!7791))

(assert (not b_next!1305))

(assert (not b_lambda!3821))

(assert (not b_next!1303))

(assert b_and!2499)

(assert (not b_next!1299))

(assert b_and!2493)

(assert (not start!1492))

(assert (not b_next!1297))

(assert (not bs!1784))

(assert b_and!2501)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2505)

(assert (not b_next!1307))

(assert b_and!2503)

(assert b_and!2491)

(assert (not b_next!1301))

(assert (not b_next!1305))

(assert (not b_next!1303))

(assert b_and!2499)

(assert (not b_next!1299))

(assert b_and!2493)

(assert (not b_next!1297))

(assert b_and!2501)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6119 () Bool)

(declare-fun fromParenthesis!0 (Parenthesis!47) Balance!121)

(assert (=> d!6119 (= (fromParenthesis!0 (head!392 xs!372)) (ite (is-OpenParenthesis!46 (head!392 xs!372)) (Balance!122 1 0) (Balance!122 0 1)))))

(assert (=> b!7787 d!6119))

(assert (=> b!7792 d!6119))

(declare-fun bs!1786 () Bool)

(declare-fun d!6121 () Bool)

(assert (= bs!1786 (and d!6121 b!7793)))

(declare-fun lambda!1657 () Int)

(assert (=> bs!1786 (= lambda!1657 lambda!1626)))

(declare-fun lambda!1658 () Int)

(assert (=> bs!1786 (= lambda!1658 lambda!1627)))

(declare-fun b!7819 () Bool)

(declare-fun e!4476 () Bool)

(assert (=> b!7819 (= e!4476 true)))

(declare-fun lt!1463 () Balance!121)

(assert (=> b!7819 (= lt!1463 (foldRight1!36 (map!157 (tail!404 xs!372) lambda!1657) lambda!1658))))

(declare-fun b!7820 () Bool)

(declare-fun e!4478 () List!178)

(declare-fun res!2339 () List!178)

(assert (=> b!7820 (= e!4478 res!2339)))

(assert (=> b!7820 true))

(declare-fun b!7821 () Bool)

(declare-fun e!4477 () Int)

(assert (=> b!7821 (= e!4477 lambda!1657)))

(declare-fun b!7822 () Bool)

(declare-fun e!4479 () Int)

(assert (=> b!7822 (= e!4479 lambda!1658)))

(declare-fun b!7823 () Bool)

(declare-fun e!4475 () Balance!121)

(declare-fun res!2338 () Balance!121)

(assert (=> b!7823 (= e!4475 res!2338)))

(assert (=> b!7823 true))

(assert (=> b!7823 true))

(declare-fun b!7824 () Bool)

(assert (=> b!7824 (= e!4477 lambda!1657)))

(declare-fun b!7825 () Bool)

(assert (=> b!7825 (= e!4475 (foldRight1!36 e!4478 e!4479))))

(declare-fun c!2723 () Bool)

(declare-fun lt!1464 () Bool)

(assert (=> b!7825 (= c!2723 lt!1464)))

(declare-fun c!2722 () Bool)

(declare-fun lt!1462 () Bool)

(assert (=> b!7825 (= c!2722 (or lt!1462 (not lt!1462)))))

(declare-fun because!2 (ProofOps!80 Bool) Bool)

(assert (=> d!6121 (because!2 (ProofOps!81 (= (foldRight1!36 (append!69 (map!157 (tail!404 xs!372) lambda!1657) (Cons!175 (Balance!122 0 0) Nil!176)) lambda!1658) (foldRight1!36 (map!157 (tail!404 xs!372) lambda!1657) lambda!1658))) e!4476)))

(declare-fun c!2724 () Bool)

(assert (=> d!6121 (= c!2724 lt!1462)))

(assert (=> d!6121 (= lt!1463 e!4475)))

(declare-fun c!2726 () Bool)

(assert (=> d!6121 (= c!2726 (or lt!1464 (not lt!1462)))))

(assert (=> d!6121 (= lt!1464 lt!1462)))

(assert (=> d!6121 (= lt!1462 (and (is-Cons!174 (tail!404 xs!372)) (is-Nil!175 (tail!404 (tail!404 xs!372)))))))

(assert (=> d!6121 (not (isEmpty!148 (tail!404 xs!372)))))

(assert (=> d!6121 (= (remove_null_balance!0 (tail!404 xs!372)) true)))

(declare-fun b!7826 () Bool)

(assert (=> b!7826 (= e!4478 (append!69 (map!157 (tail!404 xs!372) e!4477) (Cons!175 (Balance!122 0 0) Nil!176)))))

(declare-fun c!2725 () Bool)

(assert (=> b!7826 (= c!2725 lt!1462)))

(declare-fun b!7827 () Bool)

(assert (=> b!7827 (= e!4476 true)))

(assert (=> b!7827 (= lt!1463 (foldRight1!36 (map!157 (tail!404 xs!372) lambda!1657) lambda!1658))))

(declare-fun b!7828 () Bool)

(assert (=> b!7828 (= e!4479 lambda!1658)))

(assert (= (and b!7826 c!2725) b!7821))

(assert (= (and b!7826 (not c!2725)) b!7824))

(assert (= (and b!7825 c!2722) b!7826))

(assert (= (and b!7825 (not c!2722)) b!7820))

(assert (= (and b!7825 c!2723) b!7822))

(assert (= (and b!7825 (not c!2723)) b!7828))

(assert (= (and d!6121 c!2726) b!7825))

(assert (= (and d!6121 (not c!2726)) b!7823))

(assert (= (and d!6121 c!2724) b!7819))

(assert (= (and d!6121 (not c!2724)) b!7827))

(declare-fun m!10647 () Bool)

(assert (=> b!7827 m!10647))

(assert (=> b!7827 m!10647))

(declare-fun m!10649 () Bool)

(assert (=> b!7827 m!10649))

(declare-fun m!10651 () Bool)

(assert (=> b!7825 m!10651))

(declare-fun m!10653 () Bool)

(assert (=> d!6121 m!10653))

(assert (=> d!6121 m!10647))

(declare-fun m!10655 () Bool)

(assert (=> d!6121 m!10655))

(declare-fun m!10657 () Bool)

(assert (=> d!6121 m!10657))

(declare-fun m!10659 () Bool)

(assert (=> d!6121 m!10659))

(assert (=> d!6121 m!10647))

(assert (=> d!6121 m!10647))

(assert (=> d!6121 m!10657))

(assert (=> d!6121 m!10647))

(assert (=> d!6121 m!10649))

(declare-fun m!10661 () Bool)

(assert (=> b!7826 m!10661))

(assert (=> b!7826 m!10661))

(declare-fun m!10663 () Bool)

(assert (=> b!7826 m!10663))

(assert (=> b!7819 m!10647))

(assert (=> b!7819 m!10647))

(assert (=> b!7819 m!10649))

(assert (=> bs!1784 d!6121))

(declare-fun d!6123 () Bool)

(assert (=> d!6123 (= trivial!1 true)))

(assert (=> b!7791 d!6123))

(declare-fun d!6125 () Bool)

(assert (=> d!6125 (= (isEmpty!148 xs!372) (is-Nil!175 xs!372))))

(assert (=> start!1492 d!6125))

(declare-fun d!6127 () Bool)

(declare-fun res!2342 () Bool)

(declare-fun e!4482 () Bool)

(assert (=> d!6127 (=> (not res!2342) (not e!4482))))

(declare-fun dynLambda!176 (Int) Balance!121)

(assert (=> d!6127 (= res!2342 (= (dynLambda!176 (x!4275 thiss!1146)) (dynLambda!176 (y!481 thiss!1146))))))

(assert (=> d!6127 (= (inv!276 thiss!1146) e!4482)))

(declare-fun b!7831 () Bool)

(assert (=> b!7831 (= e!4482 (dynLambda!175 (evidence!115 thiss!1146)))))

(assert (= (and d!6127 res!2342) b!7831))

(declare-fun b_lambda!3823 () Bool)

(assert (=> (not b_lambda!3823) (not d!6127)))

(declare-fun t!1699 () Bool)

(declare-fun tb!1359 () Bool)

(assert (=> (and b!7790 (= (x!4275 thiss!1146) (x!4275 thiss!1146)) t!1699) tb!1359))

(declare-fun result!1399 () Bool)

(assert (=> tb!1359 (= result!1399 true)))

(assert (=> d!6127 t!1699))

(declare-fun b_and!2507 () Bool)

(assert (= b_and!2491 (and (=> t!1699 result!1399) b_and!2507)))

(declare-fun t!1701 () Bool)

(declare-fun tb!1361 () Bool)

(assert (=> (and b!7790 (= (y!481 thiss!1146) (x!4275 thiss!1146)) t!1701) tb!1361))

(declare-fun result!1401 () Bool)

(assert (=> tb!1361 (= result!1401 true)))

(assert (=> d!6127 t!1701))

(declare-fun b_and!2509 () Bool)

(assert (= b_and!2493 (and (=> t!1701 result!1401) b_and!2509)))

(declare-fun t!1703 () Bool)

(declare-fun tb!1363 () Bool)

(assert (=> (and b!7794 (= (x!4276 thiss!1182) (x!4275 thiss!1146)) t!1703) tb!1363))

(declare-fun result!1403 () Bool)

(assert (=> tb!1363 (= result!1403 true)))

(assert (=> d!6127 t!1703))

(declare-fun b_and!2511 () Bool)

(assert (= b_and!2499 (and (=> t!1703 result!1403) b_and!2511)))

(declare-fun tb!1365 () Bool)

(declare-fun t!1705 () Bool)

(assert (=> (and b!7794 (= (y!482 thiss!1182) (x!4275 thiss!1146)) t!1705) tb!1365))

(declare-fun result!1405 () Bool)

(assert (=> tb!1365 (= result!1405 true)))

(assert (=> d!6127 t!1705))

(declare-fun b_and!2513 () Bool)

(assert (= b_and!2501 (and (=> t!1705 result!1405) b_and!2513)))

(declare-fun b_lambda!3825 () Bool)

(assert (=> (not b_lambda!3825) (not d!6127)))

(declare-fun t!1707 () Bool)

(declare-fun tb!1367 () Bool)

(assert (=> (and b!7790 (= (x!4275 thiss!1146) (y!481 thiss!1146)) t!1707) tb!1367))

(declare-fun result!1407 () Bool)

(assert (=> tb!1367 (= result!1407 true)))

(assert (=> d!6127 t!1707))

(declare-fun b_and!2515 () Bool)

(assert (= b_and!2507 (and (=> t!1707 result!1407) b_and!2515)))

(declare-fun t!1709 () Bool)

(declare-fun tb!1369 () Bool)

(assert (=> (and b!7790 (= (y!481 thiss!1146) (y!481 thiss!1146)) t!1709) tb!1369))

(declare-fun result!1409 () Bool)

(assert (=> tb!1369 (= result!1409 true)))

(assert (=> d!6127 t!1709))

(declare-fun b_and!2517 () Bool)

(assert (= b_and!2509 (and (=> t!1709 result!1409) b_and!2517)))

(declare-fun tb!1371 () Bool)

(declare-fun t!1711 () Bool)

(assert (=> (and b!7794 (= (x!4276 thiss!1182) (y!481 thiss!1146)) t!1711) tb!1371))

(declare-fun result!1411 () Bool)

(assert (=> tb!1371 (= result!1411 true)))

(assert (=> d!6127 t!1711))

(declare-fun b_and!2519 () Bool)

(assert (= b_and!2511 (and (=> t!1711 result!1411) b_and!2519)))

(declare-fun tb!1373 () Bool)

(declare-fun t!1713 () Bool)

(assert (=> (and b!7794 (= (y!482 thiss!1182) (y!481 thiss!1146)) t!1713) tb!1373))

(declare-fun result!1413 () Bool)

(assert (=> tb!1373 (= result!1413 true)))

(assert (=> d!6127 t!1713))

(declare-fun b_and!2521 () Bool)

(assert (= b_and!2513 (and (=> t!1713 result!1413) b_and!2521)))

(declare-fun b_lambda!3827 () Bool)

(assert (=> (not b_lambda!3827) (not b!7831)))

(declare-fun t!1715 () Bool)

(declare-fun tb!1375 () Bool)

(assert (=> (and b!7790 (= (evidence!115 thiss!1146) (evidence!115 thiss!1146)) t!1715) tb!1375))

(declare-fun result!1415 () Bool)

(assert (=> tb!1375 (= result!1415 true)))

(assert (=> b!7831 t!1715))

(declare-fun b_and!2523 () Bool)

(assert (= b_and!2503 (and (=> t!1715 result!1415) b_and!2523)))

(declare-fun t!1717 () Bool)

(declare-fun tb!1377 () Bool)

(assert (=> (and start!1492 (= proof!295 (evidence!115 thiss!1146)) t!1717) tb!1377))

(declare-fun result!1417 () Bool)

(assert (=> tb!1377 (= result!1417 true)))

(assert (=> b!7831 t!1717))

(declare-fun b_and!2525 () Bool)

(assert (= b_and!2505 (and (=> t!1717 result!1417) b_and!2525)))

(declare-fun m!10665 () Bool)

(assert (=> d!6127 m!10665))

(declare-fun m!10667 () Bool)

(assert (=> d!6127 m!10667))

(declare-fun m!10669 () Bool)

(assert (=> b!7831 m!10669))

(assert (=> start!1492 d!6127))

(declare-fun d!6129 () Bool)

(assert (=> d!6129 (= (inv!277 thiss!1182) (= (dynLambda!176 (x!4276 thiss!1182)) (dynLambda!176 (y!482 thiss!1182))))))

(declare-fun b_lambda!3829 () Bool)

(assert (=> (not b_lambda!3829) (not d!6129)))

(declare-fun tb!1379 () Bool)

(declare-fun t!1719 () Bool)

(assert (=> (and b!7790 (= (x!4275 thiss!1146) (x!4276 thiss!1182)) t!1719) tb!1379))

(declare-fun result!1419 () Bool)

(assert (=> tb!1379 (= result!1419 true)))

(assert (=> d!6129 t!1719))

(declare-fun b_and!2527 () Bool)

(assert (= b_and!2515 (and (=> t!1719 result!1419) b_and!2527)))

(declare-fun tb!1381 () Bool)

(declare-fun t!1721 () Bool)

(assert (=> (and b!7790 (= (y!481 thiss!1146) (x!4276 thiss!1182)) t!1721) tb!1381))

(declare-fun result!1421 () Bool)

(assert (=> tb!1381 (= result!1421 true)))

(assert (=> d!6129 t!1721))

(declare-fun b_and!2529 () Bool)

(assert (= b_and!2517 (and (=> t!1721 result!1421) b_and!2529)))

(declare-fun t!1723 () Bool)

(declare-fun tb!1383 () Bool)

(assert (=> (and b!7794 (= (x!4276 thiss!1182) (x!4276 thiss!1182)) t!1723) tb!1383))

(declare-fun result!1423 () Bool)

(assert (=> tb!1383 (= result!1423 true)))

(assert (=> d!6129 t!1723))

(declare-fun b_and!2531 () Bool)

(assert (= b_and!2519 (and (=> t!1723 result!1423) b_and!2531)))

(declare-fun t!1725 () Bool)

(declare-fun tb!1385 () Bool)

(assert (=> (and b!7794 (= (y!482 thiss!1182) (x!4276 thiss!1182)) t!1725) tb!1385))

(declare-fun result!1425 () Bool)

(assert (=> tb!1385 (= result!1425 true)))

(assert (=> d!6129 t!1725))

(declare-fun b_and!2533 () Bool)

(assert (= b_and!2521 (and (=> t!1725 result!1425) b_and!2533)))

(declare-fun b_lambda!3831 () Bool)

(assert (=> (not b_lambda!3831) (not d!6129)))

(declare-fun tb!1387 () Bool)

(declare-fun t!1727 () Bool)

(assert (=> (and b!7790 (= (x!4275 thiss!1146) (y!482 thiss!1182)) t!1727) tb!1387))

(declare-fun result!1427 () Bool)

(assert (=> tb!1387 (= result!1427 true)))

(assert (=> d!6129 t!1727))

(declare-fun b_and!2535 () Bool)

(assert (= b_and!2527 (and (=> t!1727 result!1427) b_and!2535)))

(declare-fun tb!1389 () Bool)

(declare-fun t!1729 () Bool)

(assert (=> (and b!7790 (= (y!481 thiss!1146) (y!482 thiss!1182)) t!1729) tb!1389))

(declare-fun result!1429 () Bool)

(assert (=> tb!1389 (= result!1429 true)))

(assert (=> d!6129 t!1729))

(declare-fun b_and!2537 () Bool)

(assert (= b_and!2529 (and (=> t!1729 result!1429) b_and!2537)))

(declare-fun t!1731 () Bool)

(declare-fun tb!1391 () Bool)

(assert (=> (and b!7794 (= (x!4276 thiss!1182) (y!482 thiss!1182)) t!1731) tb!1391))

(declare-fun result!1431 () Bool)

(assert (=> tb!1391 (= result!1431 true)))

(assert (=> d!6129 t!1731))

(declare-fun b_and!2539 () Bool)

(assert (= b_and!2531 (and (=> t!1731 result!1431) b_and!2539)))

(declare-fun t!1733 () Bool)

(declare-fun tb!1393 () Bool)

(assert (=> (and b!7794 (= (y!482 thiss!1182) (y!482 thiss!1182)) t!1733) tb!1393))

(declare-fun result!1433 () Bool)

(assert (=> tb!1393 (= result!1433 true)))

(assert (=> d!6129 t!1733))

(declare-fun b_and!2541 () Bool)

(assert (= b_and!2533 (and (=> t!1733 result!1433) b_and!2541)))

(declare-fun m!10671 () Bool)

(assert (=> d!6129 m!10671))

(declare-fun m!10673 () Bool)

(assert (=> d!6129 m!10673))

(assert (=> start!1492 d!6129))

(declare-fun d!6131 () Bool)

(declare-fun c!2729 () Bool)

(assert (=> d!6131 (= c!2729 (is-Nil!175 xs!372))))

(declare-fun e!4485 () List!178)

(assert (=> d!6131 (= (map!157 xs!372 lambda!1626) e!4485)))

(declare-fun b!7836 () Bool)

(assert (=> b!7836 (= e!4485 Nil!176)))

(declare-fun b!7837 () Bool)

(declare-fun dynLambda!177 (Int Parenthesis!47) Balance!121)

(assert (=> b!7837 (= e!4485 (Cons!175 (dynLambda!177 lambda!1626 (head!392 xs!372)) (map!157 (tail!404 xs!372) lambda!1626)))))

(assert (= (and d!6131 c!2729) b!7836))

(assert (= (and d!6131 (not c!2729)) b!7837))

(declare-fun b_lambda!3833 () Bool)

(assert (=> (not b_lambda!3833) (not b!7837)))

(declare-fun m!10675 () Bool)

(assert (=> b!7837 m!10675))

(declare-fun m!10677 () Bool)

(assert (=> b!7837 m!10677))

(assert (=> b!7793 d!6131))

(declare-fun d!6133 () Bool)

(declare-fun c!2732 () Bool)

(assert (=> d!6133 (= c!2732 (is-Nil!176 (map!157 xs!372 lambda!1626)))))

(declare-fun e!4488 () List!178)

(assert (=> d!6133 (= (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176)) e!4488)))

(declare-fun b!7842 () Bool)

(assert (=> b!7842 (= e!4488 (Cons!175 (Balance!122 0 0) Nil!176))))

(declare-fun b!7843 () Bool)

(assert (=> b!7843 (= e!4488 (Cons!175 (head!393 (map!157 xs!372 lambda!1626)) (append!69 (tail!405 (map!157 xs!372 lambda!1626)) (Cons!175 (Balance!122 0 0) Nil!176))))))

(assert (= (and d!6133 c!2732) b!7842))

(assert (= (and d!6133 (not c!2732)) b!7843))

(declare-fun m!10679 () Bool)

(assert (=> b!7843 m!10679))

(assert (=> b!7793 d!6133))

(declare-fun d!6135 () Bool)

(declare-fun c!2735 () Bool)

(assert (=> d!6135 (= c!2735 (and (is-Cons!175 (map!157 xs!372 lambda!1626)) (is-Nil!176 (tail!405 (map!157 xs!372 lambda!1626)))))))

(declare-fun e!4491 () Balance!121)

(assert (=> d!6135 (= (foldRight1!36 (map!157 xs!372 lambda!1626) lambda!1627) e!4491)))

(declare-fun b!7848 () Bool)

(assert (=> b!7848 (= e!4491 (head!393 (map!157 xs!372 lambda!1626)))))

(declare-fun b!7849 () Bool)

(declare-fun dynLambda!178 (Int Balance!121 Balance!121) Balance!121)

(assert (=> b!7849 (= e!4491 (dynLambda!178 lambda!1627 (head!393 (map!157 xs!372 lambda!1626)) (foldRight1!36 (tail!405 (map!157 xs!372 lambda!1626)) lambda!1627)))))

(assert (= (and d!6135 c!2735) b!7848))

(assert (= (and d!6135 (not c!2735)) b!7849))

(declare-fun b_lambda!3835 () Bool)

(assert (=> (not b_lambda!3835) (not b!7849)))

(declare-fun m!10681 () Bool)

(assert (=> b!7849 m!10681))

(assert (=> b!7849 m!10681))

(declare-fun m!10683 () Bool)

(assert (=> b!7849 m!10683))

(assert (=> b!7793 d!6135))

(declare-fun d!6137 () Bool)

(declare-fun c!2736 () Bool)

(assert (=> d!6137 (= c!2736 (and (is-Cons!175 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176))) (is-Nil!176 (tail!405 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176))))))))

(declare-fun e!4492 () Balance!121)

(assert (=> d!6137 (= (foldRight1!36 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176)) lambda!1627) e!4492)))

(declare-fun b!7850 () Bool)

(assert (=> b!7850 (= e!4492 (head!393 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176))))))

(declare-fun b!7851 () Bool)

(assert (=> b!7851 (= e!4492 (dynLambda!178 lambda!1627 (head!393 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176))) (foldRight1!36 (tail!405 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176))) lambda!1627)))))

(assert (= (and d!6137 c!2736) b!7850))

(assert (= (and d!6137 (not c!2736)) b!7851))

(declare-fun b_lambda!3837 () Bool)

(assert (=> (not b_lambda!3837) (not b!7851)))

(declare-fun m!10685 () Bool)

(assert (=> b!7851 m!10685))

(assert (=> b!7851 m!10685))

(declare-fun m!10687 () Bool)

(assert (=> b!7851 m!10687))

(assert (=> b!7793 d!6137))

(declare-fun b_lambda!3839 () Bool)

(assert (= b_lambda!3835 (or b!7793 b_lambda!3839)))

(declare-fun bs!1787 () Bool)

(declare-fun d!6139 () Bool)

(assert (= bs!1787 (and d!6139 b!7793)))

(declare-fun ++!3 (Balance!121 Balance!121) Balance!121)

(assert (=> bs!1787 (= (dynLambda!178 lambda!1627 (head!393 (map!157 xs!372 lambda!1626)) (foldRight1!36 (tail!405 (map!157 xs!372 lambda!1626)) lambda!1627)) (++!3 (head!393 (map!157 xs!372 lambda!1626)) (foldRight1!36 (tail!405 (map!157 xs!372 lambda!1626)) lambda!1627)))))

(assert (=> bs!1787 m!10681))

(declare-fun m!10689 () Bool)

(assert (=> bs!1787 m!10689))

(assert (=> b!7849 d!6139))

(declare-fun b_lambda!3841 () Bool)

(assert (= b_lambda!3823 (or (and b!7787 (= lambda!1629 (x!4275 thiss!1146))) (and b!7790 b_free!601) (and b!7792 (= lambda!1631 (x!4275 thiss!1146))) (and b!7794 b_free!609 (= (x!4276 thiss!1182) (x!4275 thiss!1146))) (and b!7787 (= lambda!1628 (x!4275 thiss!1146))) (and b!7790 b_free!603 (= (y!481 thiss!1146) (x!4275 thiss!1146))) (and b!7794 b_free!611 (= (y!482 thiss!1182) (x!4275 thiss!1146))) b_lambda!3841)))

(declare-fun bs!1788 () Bool)

(declare-fun d!6141 () Bool)

(assert (= bs!1788 (and d!6141 b!7787)))

(assert (=> bs!1788 (= (dynLambda!176 lambda!1629) (++!3 (fromParenthesis!0 (head!392 xs!372)) (foldRight1!36 (append!69 (map!157 (tail!404 xs!372) lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176)) lambda!1627)))))

(assert (=> bs!1788 m!10677))

(declare-fun m!10691 () Bool)

(assert (=> bs!1788 m!10691))

(declare-fun m!10693 () Bool)

(assert (=> bs!1788 m!10693))

(declare-fun m!10695 () Bool)

(assert (=> bs!1788 m!10695))

(assert (=> bs!1788 m!10691))

(assert (=> bs!1788 m!10693))

(assert (=> bs!1788 m!10677))

(assert (=> (and b!7787 (= lambda!1629 (x!4275 thiss!1146)) d!6127) d!6141))

(declare-fun bs!1789 () Bool)

(declare-fun d!6143 () Bool)

(assert (= bs!1789 (and d!6143 b!7792)))

(assert (=> bs!1789 (= (dynLambda!176 lambda!1631) (++!3 (fromParenthesis!0 (head!392 xs!372)) (foldRight1!36 (map!157 (tail!404 xs!372) lambda!1626) lambda!1627)))))

(assert (=> bs!1789 m!10677))

(assert (=> bs!1789 m!10677))

(declare-fun m!10697 () Bool)

(assert (=> bs!1789 m!10697))

(assert (=> bs!1789 m!10697))

(declare-fun m!10699 () Bool)

(assert (=> bs!1789 m!10699))

(assert (=> (and b!7792 (= lambda!1631 (x!4275 thiss!1146)) d!6127) d!6143))

(declare-fun bs!1790 () Bool)

(declare-fun d!6145 () Bool)

(assert (= bs!1790 (and d!6145 b!7787)))

(assert (=> bs!1790 (= (dynLambda!176 lambda!1628) (foldRight1!36 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176)) lambda!1627))))

(assert (=> bs!1790 m!10637))

(assert (=> bs!1790 m!10637))

(assert (=> bs!1790 m!10641))

(assert (=> bs!1790 m!10641))

(assert (=> bs!1790 m!10643))

(assert (=> (and b!7787 (= lambda!1628 (x!4275 thiss!1146)) d!6127) d!6145))

(declare-fun b_lambda!3843 () Bool)

(assert (= b_lambda!3833 (or b!7793 b_lambda!3843)))

(declare-fun bs!1791 () Bool)

(declare-fun d!6147 () Bool)

(assert (= bs!1791 (and d!6147 b!7793)))

(assert (=> bs!1791 (= (dynLambda!177 lambda!1626 (head!392 xs!372)) (fromParenthesis!0 (head!392 xs!372)))))

(assert (=> bs!1791 m!10625))

(assert (=> b!7837 d!6147))

(declare-fun b_lambda!3845 () Bool)

(assert (= b_lambda!3827 (or (and b!7787 (= lambda!1630 (evidence!115 thiss!1146))) (and b!7791 (= lambda!1632 (evidence!115 thiss!1146))) (and b!7790 b_free!605) (and start!1492 b_free!607 (= proof!295 (evidence!115 thiss!1146))) b_lambda!3845)))

(declare-fun bs!1792 () Bool)

(declare-fun d!6149 () Bool)

(assert (= bs!1792 (and d!6149 b!7787)))

(assert (=> bs!1792 (= (dynLambda!175 lambda!1630) (remove_null_balance!0 (tail!404 xs!372)))))

(assert (=> bs!1792 m!10645))

(assert (=> (and b!7787 (= lambda!1630 (evidence!115 thiss!1146)) b!7831) d!6149))

(declare-fun bs!1793 () Bool)

(declare-fun d!6151 () Bool)

(assert (= bs!1793 (and d!6151 b!7791)))

(assert (=> bs!1793 (= (dynLambda!175 lambda!1632) trivial!1)))

(assert (=> (and b!7791 (= lambda!1632 (evidence!115 thiss!1146)) b!7831) d!6151))

(declare-fun b_lambda!3847 () Bool)

(assert (= b_lambda!3831 (or (and b!7787 (= lambda!1629 (y!482 thiss!1182))) (and b!7790 b_free!603 (= (y!481 thiss!1146) (y!482 thiss!1182))) (and b!7794 b_free!609 (= (x!4276 thiss!1182) (y!482 thiss!1182))) (and b!7790 b_free!601 (= (x!4275 thiss!1146) (y!482 thiss!1182))) (and b!7792 (= lambda!1631 (y!482 thiss!1182))) (and b!7787 (= lambda!1628 (y!482 thiss!1182))) (and b!7794 b_free!611) b_lambda!3847)))

(declare-fun bs!1794 () Bool)

(declare-fun d!6153 () Bool)

(assert (= bs!1794 (and d!6153 b!7792)))

(assert (=> bs!1794 (= (dynLambda!176 lambda!1631) (++!3 (fromParenthesis!0 (head!392 xs!372)) (foldRight1!36 (map!157 (tail!404 xs!372) lambda!1626) lambda!1627)))))

(assert (=> bs!1794 m!10677))

(assert (=> bs!1794 m!10677))

(assert (=> bs!1794 m!10697))

(assert (=> bs!1794 m!10697))

(assert (=> bs!1794 m!10699))

(assert (=> (and b!7792 (= lambda!1631 (y!482 thiss!1182)) d!6129) d!6153))

(declare-fun bs!1795 () Bool)

(declare-fun d!6155 () Bool)

(assert (= bs!1795 (and d!6155 b!7787)))

(assert (=> bs!1795 (= (dynLambda!176 lambda!1628) (foldRight1!36 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176)) lambda!1627))))

(assert (=> bs!1795 m!10637))

(assert (=> bs!1795 m!10637))

(assert (=> bs!1795 m!10641))

(assert (=> bs!1795 m!10641))

(assert (=> bs!1795 m!10643))

(assert (=> (and b!7787 (= lambda!1628 (y!482 thiss!1182)) d!6129) d!6155))

(declare-fun bs!1796 () Bool)

(declare-fun d!6157 () Bool)

(assert (= bs!1796 (and d!6157 b!7787)))

(assert (=> bs!1796 (= (dynLambda!176 lambda!1629) (++!3 (fromParenthesis!0 (head!392 xs!372)) (foldRight1!36 (append!69 (map!157 (tail!404 xs!372) lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176)) lambda!1627)))))

(assert (=> bs!1796 m!10677))

(assert (=> bs!1796 m!10691))

(assert (=> bs!1796 m!10693))

(assert (=> bs!1796 m!10695))

(assert (=> bs!1796 m!10691))

(assert (=> bs!1796 m!10693))

(assert (=> bs!1796 m!10677))

(assert (=> (and b!7787 (= lambda!1629 (y!482 thiss!1182)) d!6129) d!6157))

(declare-fun b_lambda!3849 () Bool)

(assert (= b_lambda!3829 (or (and b!7787 (= lambda!1629 (x!4276 thiss!1182))) (and b!7787 (= lambda!1628 (x!4276 thiss!1182))) (and b!7790 b_free!601 (= (x!4275 thiss!1146) (x!4276 thiss!1182))) (and b!7792 (= lambda!1631 (x!4276 thiss!1182))) (and b!7794 b_free!611 (= (y!482 thiss!1182) (x!4276 thiss!1182))) (and b!7794 b_free!609) (and b!7790 b_free!603 (= (y!481 thiss!1146) (x!4276 thiss!1182))) b_lambda!3849)))

(declare-fun bs!1797 () Bool)

(declare-fun d!6159 () Bool)

(assert (= bs!1797 (and d!6159 b!7787)))

(assert (=> bs!1797 (= (dynLambda!176 lambda!1629) (++!3 (fromParenthesis!0 (head!392 xs!372)) (foldRight1!36 (append!69 (map!157 (tail!404 xs!372) lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176)) lambda!1627)))))

(assert (=> bs!1797 m!10677))

(assert (=> bs!1797 m!10691))

(assert (=> bs!1797 m!10693))

(assert (=> bs!1797 m!10695))

(assert (=> bs!1797 m!10691))

(assert (=> bs!1797 m!10693))

(assert (=> bs!1797 m!10677))

(assert (=> (and b!7787 (= lambda!1629 (x!4276 thiss!1182)) d!6129) d!6159))

(declare-fun bs!1798 () Bool)

(declare-fun d!6161 () Bool)

(assert (= bs!1798 (and d!6161 b!7792)))

(assert (=> bs!1798 (= (dynLambda!176 lambda!1631) (++!3 (fromParenthesis!0 (head!392 xs!372)) (foldRight1!36 (map!157 (tail!404 xs!372) lambda!1626) lambda!1627)))))

(assert (=> bs!1798 m!10677))

(assert (=> bs!1798 m!10677))

(assert (=> bs!1798 m!10697))

(assert (=> bs!1798 m!10697))

(assert (=> bs!1798 m!10699))

(assert (=> (and b!7792 (= lambda!1631 (x!4276 thiss!1182)) d!6129) d!6161))

(declare-fun bs!1799 () Bool)

(declare-fun d!6163 () Bool)

(assert (= bs!1799 (and d!6163 b!7787)))

(assert (=> bs!1799 (= (dynLambda!176 lambda!1628) (foldRight1!36 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176)) lambda!1627))))

(assert (=> bs!1799 m!10637))

(assert (=> bs!1799 m!10637))

(assert (=> bs!1799 m!10641))

(assert (=> bs!1799 m!10641))

(assert (=> bs!1799 m!10643))

(assert (=> (and b!7787 (= lambda!1628 (x!4276 thiss!1182)) d!6129) d!6163))

(declare-fun b_lambda!3851 () Bool)

(assert (= b_lambda!3825 (or (and b!7787 (= lambda!1629 (y!481 thiss!1146))) (and b!7790 b_free!601 (= (x!4275 thiss!1146) (y!481 thiss!1146))) (and b!7792 (= lambda!1631 (y!481 thiss!1146))) (and b!7794 b_free!609 (= (x!4276 thiss!1182) (y!481 thiss!1146))) (and b!7794 b_free!611 (= (y!482 thiss!1182) (y!481 thiss!1146))) (and b!7787 (= lambda!1628 (y!481 thiss!1146))) (and b!7790 b_free!603) b_lambda!3851)))

(declare-fun bs!1800 () Bool)

(declare-fun d!6165 () Bool)

(assert (= bs!1800 (and d!6165 b!7792)))

(assert (=> bs!1800 (= (dynLambda!176 lambda!1631) (++!3 (fromParenthesis!0 (head!392 xs!372)) (foldRight1!36 (map!157 (tail!404 xs!372) lambda!1626) lambda!1627)))))

(assert (=> bs!1800 m!10677))

(assert (=> bs!1800 m!10677))

(assert (=> bs!1800 m!10697))

(assert (=> bs!1800 m!10697))

(assert (=> bs!1800 m!10699))

(assert (=> (and b!7792 (= lambda!1631 (y!481 thiss!1146)) d!6127) d!6165))

(declare-fun bs!1801 () Bool)

(declare-fun d!6167 () Bool)

(assert (= bs!1801 (and d!6167 b!7787)))

(assert (=> bs!1801 (= (dynLambda!176 lambda!1628) (foldRight1!36 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176)) lambda!1627))))

(assert (=> bs!1801 m!10637))

(assert (=> bs!1801 m!10637))

(assert (=> bs!1801 m!10641))

(assert (=> bs!1801 m!10641))

(assert (=> bs!1801 m!10643))

(assert (=> (and b!7787 (= lambda!1628 (y!481 thiss!1146)) d!6127) d!6167))

(declare-fun bs!1802 () Bool)

(declare-fun d!6169 () Bool)

(assert (= bs!1802 (and d!6169 b!7787)))

(assert (=> bs!1802 (= (dynLambda!176 lambda!1629) (++!3 (fromParenthesis!0 (head!392 xs!372)) (foldRight1!36 (append!69 (map!157 (tail!404 xs!372) lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176)) lambda!1627)))))

(assert (=> bs!1802 m!10677))

(assert (=> bs!1802 m!10691))

(assert (=> bs!1802 m!10693))

(assert (=> bs!1802 m!10695))

(assert (=> bs!1802 m!10691))

(assert (=> bs!1802 m!10693))

(assert (=> bs!1802 m!10677))

(assert (=> (and b!7787 (= lambda!1629 (y!481 thiss!1146)) d!6127) d!6169))

(declare-fun b_lambda!3853 () Bool)

(assert (= b_lambda!3837 (or b!7793 b_lambda!3853)))

(declare-fun bs!1803 () Bool)

(declare-fun d!6171 () Bool)

(assert (= bs!1803 (and d!6171 b!7793)))

(assert (=> bs!1803 (= (dynLambda!178 lambda!1627 (head!393 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176))) (foldRight1!36 (tail!405 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176))) lambda!1627)) (++!3 (head!393 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176))) (foldRight1!36 (tail!405 (append!69 (map!157 xs!372 lambda!1626) (Cons!175 (Balance!122 0 0) Nil!176))) lambda!1627)))))

(assert (=> bs!1803 m!10685))

(declare-fun m!10701 () Bool)

(assert (=> bs!1803 m!10701))

(assert (=> b!7851 d!6171))

(push 1)

(assert (not bs!1794))

(assert (not b_lambda!3839))

(assert (not b!7826))

(assert (not bs!1796))

(assert (not bs!1787))

(assert (not b!7819))

(assert (not bs!1803))

(assert b_and!2535)

(assert (not bs!1791))

(assert (not bs!1799))

(assert (not bs!1792))

(assert (not b!7827))

(assert (not bs!1800))

(assert (not b_next!1307))

(assert (not b_lambda!3853))

(assert b_and!2539)

(assert (not b_lambda!3843))

(assert (not b!7837))

(assert b_and!2541)

(assert (not b_lambda!3849))

(assert (not bs!1788))

(assert (not b!7851))

(assert (not b!7843))

(assert (not b_lambda!3841))

(assert (not bs!1789))

(assert (not bs!1802))

(assert (not b_lambda!3845))

(assert b_and!2537)

(assert (not d!6121))

(assert (not b!7825))

(assert b_and!2525)

(assert (not b_lambda!3851))

(assert (not b_next!1301))

(assert (not bs!1795))

(assert (not b_next!1305))

(assert (not b_lambda!3821))

(assert (not bs!1798))

(assert (not bs!1797))

(assert (not bs!1790))

(assert (not b_next!1303))

(assert (not b_lambda!3847))

(assert (not b!7849))

(assert (not b_next!1299))

(assert (not b_next!1297))

(assert (not bs!1801))

(assert b_and!2523)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2535)

(assert (not b_next!1307))

(assert b_and!2539)

(assert b_and!2541)

(assert b_and!2537)

(assert b_and!2525)

(assert (not b_next!1301))

(assert (not b_next!1305))

(assert (not b_next!1303))

(assert (not b_next!1299))

(assert (not b_next!1297))

(assert b_and!2523)

(check-sat)

(pop 1)

