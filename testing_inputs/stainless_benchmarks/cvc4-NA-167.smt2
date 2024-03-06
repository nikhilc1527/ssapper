; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1120 () Bool)

(assert start!1120)

(declare-fun b!6588 () Bool)

(declare-fun b_free!287 () Bool)

(declare-fun b_next!609 () Bool)

(assert (=> b!6588 (= b_free!287 (not b_next!609))))

(declare-fun tp!564 () Bool)

(declare-fun b_and!1579 () Bool)

(assert (=> b!6588 (= tp!564 b_and!1579)))

(declare-fun b_free!289 () Bool)

(declare-fun b_next!611 () Bool)

(assert (=> b!6588 (= b_free!289 (not b_next!611))))

(declare-fun tp!566 () Bool)

(declare-fun b_and!1581 () Bool)

(assert (=> b!6588 (= tp!566 b_and!1581)))

(declare-fun b_free!291 () Bool)

(declare-fun b_next!613 () Bool)

(assert (=> b!6588 (= b_free!291 (not b_next!613))))

(declare-fun tp!563 () Bool)

(declare-fun b_and!1583 () Bool)

(assert (=> b!6588 (= tp!563 b_and!1583)))

(declare-fun b_free!293 () Bool)

(declare-fun b_next!615 () Bool)

(assert (=> start!1120 (= b_free!293 (not b_next!615))))

(declare-fun tp!567 () Bool)

(declare-fun b_and!1585 () Bool)

(assert (=> start!1120 (= tp!567 b_and!1585)))

(declare-fun b!6586 () Bool)

(declare-fun b_free!295 () Bool)

(declare-fun b_next!617 () Bool)

(assert (=> b!6586 (= b_free!295 (not b_next!617))))

(declare-fun tp!565 () Bool)

(declare-fun b_and!1587 () Bool)

(assert (=> b!6586 (= tp!565 b_and!1587)))

(declare-fun b_free!297 () Bool)

(declare-fun b_next!619 () Bool)

(assert (=> b!6586 (= b_free!297 (not b_next!619))))

(declare-fun tp!568 () Bool)

(declare-fun b_and!1589 () Bool)

(assert (=> b!6586 (= tp!568 b_and!1589)))

(declare-fun b!6583 () Bool)

(assert (=> b!6583 true))

(declare-fun lambda!842 () Int)

(declare-fun b_next!621 () Bool)

(declare-datatypes () ((Balance!53 (Balance!54 (extraOpen!67 Int) (extraClose!67 Int)))))

(declare-datatypes () ((EqEvidence!42 (EqEvidence!43 (x!3589 Int) (y!441 Int) (evidence!88 Int)))))

(declare-fun thiss!1204 () EqEvidence!42)

(assert (=> b!6588 (= b_next!609 (or (and b!6583 (= lambda!842 (x!3589 thiss!1204))) b_next!621))))

(declare-fun b_next!623 () Bool)

(assert (=> b!6588 (= b_next!611 (or (and b!6583 (= lambda!842 (y!441 thiss!1204))) b_next!623))))

(declare-fun b_next!625 () Bool)

(declare-datatypes () ((EqProof!22 (EqProof!23 (x!3590 Int) (y!442 Int)))))

(declare-fun thiss!1228 () EqProof!22)

(assert (=> b!6586 (= b_next!617 (or (and b!6583 (= lambda!842 (x!3590 thiss!1228))) b_next!625))))

(declare-fun b_next!627 () Bool)

(assert (=> b!6586 (= b_next!619 (or (and b!6583 (= lambda!842 (y!442 thiss!1228))) b_next!627))))

(declare-fun lambda!846 () Int)

(assert (=> b!6583 (not (= lambda!846 lambda!842))))

(assert (=> b!6583 true))

(declare-fun b_next!629 () Bool)

(assert (=> b!6588 (= b_next!621 (or (and b!6583 (= lambda!846 (x!3589 thiss!1204))) b_next!629))))

(declare-fun b_next!631 () Bool)

(assert (=> b!6588 (= b_next!623 (or (and b!6583 (= lambda!846 (y!441 thiss!1204))) b_next!631))))

(declare-fun b_next!633 () Bool)

(assert (=> b!6586 (= b_next!625 (or (and b!6583 (= lambda!846 (x!3590 thiss!1228))) b_next!633))))

(declare-fun b_next!635 () Bool)

(assert (=> b!6586 (= b_next!627 (or (and b!6583 (= lambda!846 (y!442 thiss!1228))) b_next!635))))

(assert (=> b!6583 true))

(declare-fun lambda!847 () Int)

(declare-fun b_next!637 () Bool)

(assert (=> b!6588 (= b_next!613 (or (and b!6583 (= lambda!847 (evidence!88 thiss!1204))) b_next!637))))

(declare-fun b_next!639 () Bool)

(declare-fun proof!301 () Int)

(assert (=> start!1120 (= b_next!615 (or (and b!6583 (= lambda!847 proof!301)) b_next!639))))

(declare-fun bs!1472 () Bool)

(declare-fun b!6582 () Bool)

(assert (= bs!1472 (and b!6582 b!6583)))

(declare-fun lambda!848 () Int)

(assert (=> bs!1472 (not (= lambda!848 lambda!842))))

(assert (=> bs!1472 (not (= lambda!848 lambda!846))))

(assert (=> b!6582 true))

(declare-fun b_next!641 () Bool)

(assert (=> b!6588 (= b_next!629 (or (and b!6582 (= lambda!848 (x!3589 thiss!1204))) b_next!641))))

(declare-fun b_next!643 () Bool)

(assert (=> b!6588 (= b_next!631 (or (and b!6582 (= lambda!848 (y!441 thiss!1204))) b_next!643))))

(declare-fun b_next!645 () Bool)

(assert (=> b!6586 (= b_next!633 (or (and b!6582 (= lambda!848 (x!3590 thiss!1228))) b_next!645))))

(declare-fun b_next!647 () Bool)

(assert (=> b!6586 (= b_next!635 (or (and b!6582 (= lambda!848 (y!442 thiss!1228))) b_next!647))))

(declare-fun bs!1473 () Bool)

(declare-fun b!6585 () Bool)

(assert (= bs!1473 (and b!6585 b!6583)))

(declare-fun lambda!849 () Int)

(assert (=> bs!1473 (not (= lambda!849 lambda!847))))

(assert (=> b!6585 true))

(declare-fun b_next!649 () Bool)

(assert (=> b!6588 (= b_next!637 (or (and b!6585 (= lambda!849 (evidence!88 thiss!1204))) b_next!649))))

(declare-fun b_next!651 () Bool)

(assert (=> start!1120 (= b_next!639 (or (and b!6585 (= lambda!849 proof!301)) b_next!651))))

(declare-fun res!1810 () Bool)

(declare-fun e!3892 () Bool)

(assert (=> b!6582 (=> (not res!1810) (not e!3892))))

(assert (=> b!6582 (= res!1810 (= thiss!1228 (EqProof!23 lambda!848 lambda!848)))))

(declare-fun res!1813 () Bool)

(assert (=> b!6583 (=> (not res!1813) (not e!3892))))

(assert (=> b!6583 (= res!1813 (= thiss!1204 (EqEvidence!43 lambda!842 lambda!846 lambda!847)))))

(declare-fun res!1812 () Bool)

(assert (=> start!1120 (=> (not res!1812) (not e!3892))))

(declare-datatypes () ((Parenthesis!25 (CloseParenthesis!24) (OpenParenthesis!24))))

(declare-datatypes () ((List!133 (Nil!131) (Cons!130 (head!348 Parenthesis!25) (tail!360 List!133)))))

(declare-fun xs!395 () List!133)

(declare-fun isEmpty!118 (List!133) Bool)

(assert (=> start!1120 (= res!1812 (not (isEmpty!118 xs!395)))))

(assert (=> start!1120 e!3892))

(assert (=> start!1120 true))

(declare-fun e!3891 () Bool)

(declare-fun inv!236 (EqEvidence!42) Bool)

(assert (=> start!1120 (and (inv!236 thiss!1204) e!3891)))

(assert (=> start!1120 tp!567))

(declare-fun e!3893 () Bool)

(declare-fun inv!237 (EqProof!22) Bool)

(assert (=> start!1120 (and (inv!237 thiss!1228) e!3893)))

(declare-fun b!6584 () Bool)

(declare-fun res!1811 () Bool)

(assert (=> b!6584 (=> (not res!1811) (not e!3892))))

(declare-datatypes () ((ProofOps!40 (ProofOps!41 (prop!127 Bool)))))

(declare-fun thiss!1201 () ProofOps!40)

(declare-fun isMatchedSequential!0 (List!133) Bool)

(declare-fun isMatchedHybid!0 (List!133) Bool)

(assert (=> b!6584 (= res!1811 (= thiss!1201 (ProofOps!41 (= (isMatchedSequential!0 xs!395) (isMatchedHybid!0 xs!395)))))))

(declare-fun res!1809 () Bool)

(assert (=> b!6585 (=> (not res!1809) (not e!3892))))

(assert (=> b!6585 (= res!1809 (= proof!301 lambda!849))))

(assert (=> b!6586 (= e!3893 (and tp!565 tp!568))))

(declare-fun b!6587 () Bool)

(declare-fun dynLambda!97 (Int) Bool)

(assert (=> b!6587 (= e!3892 (not (dynLambda!97 proof!301)))))

(assert (=> b!6588 (= e!3891 (and tp!564 tp!566 tp!563))))

(assert (= (and start!1120 res!1812) b!6584))

(assert (= (and b!6584 res!1811) b!6583))

(assert (= (and b!6583 res!1813) b!6582))

(assert (= (and b!6582 res!1810) b!6585))

(assert (= (and b!6585 res!1809) b!6587))

(assert (= start!1120 b!6588))

(assert (= start!1120 b!6586))

(declare-fun b_lambda!3147 () Bool)

(assert (=> (not b_lambda!3147) (not b!6587)))

(declare-fun t!1213 () Bool)

(declare-fun tb!873 () Bool)

(assert (=> (and b!6588 (= (evidence!88 thiss!1204) proof!301) t!1213) tb!873))

(declare-fun result!913 () Bool)

(assert (=> tb!873 (= result!913 true)))

(assert (=> b!6587 t!1213))

(declare-fun b_and!1591 () Bool)

(assert (= b_and!1583 (and (=> t!1213 result!913) b_and!1591)))

(declare-fun t!1215 () Bool)

(declare-fun tb!875 () Bool)

(assert (=> (and start!1120 (= proof!301 proof!301) t!1215) tb!875))

(declare-fun result!915 () Bool)

(assert (=> tb!875 (= result!915 true)))

(assert (=> b!6587 t!1215))

(declare-fun b_and!1593 () Bool)

(assert (= b_and!1585 (and (=> t!1215 result!915) b_and!1593)))

(declare-fun m!9429 () Bool)

(assert (=> start!1120 m!9429))

(declare-fun m!9431 () Bool)

(assert (=> start!1120 m!9431))

(declare-fun m!9433 () Bool)

(assert (=> start!1120 m!9433))

(declare-fun m!9435 () Bool)

(assert (=> b!6584 m!9435))

(declare-fun m!9437 () Bool)

(assert (=> b!6584 m!9437))

(declare-fun m!9439 () Bool)

(assert (=> b!6587 m!9439))

(push 1)

(assert (not b_next!647))

(assert (not b_next!643))

(assert (not b_lambda!3147))

(assert (not b_next!649))

(assert (not b_next!645))

(assert (not start!1120))

(assert b_and!1589)

(assert (not b_next!651))

(assert (not b!6584))

(assert b_and!1587)

(assert b_and!1579)

(assert b_and!1593)

(assert b_and!1581)

(assert (not b_next!641))

(assert b_and!1591)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!647))

(assert (not b_next!643))

(assert (not b_next!649))

(assert (not b_next!645))

(assert b_and!1589)

(assert (not b_next!651))

(assert b_and!1587)

(assert b_and!1579)

(assert b_and!1593)

(assert b_and!1581)

(assert (not b_next!641))

(assert b_and!1591)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3149 () Bool)

(assert (= b_lambda!3147 (or (and b!6583 (= lambda!847 proof!301)) (and b!6585 (= lambda!849 proof!301)) (and b!6588 b_free!291 (= (evidence!88 thiss!1204) proof!301)) (and start!1120 b_free!293) b_lambda!3149)))

(declare-fun bs!1474 () Bool)

(declare-fun d!5253 () Bool)

(assert (= bs!1474 (and d!5253 b!6583)))

(declare-fun lambda!845 () Int)

(declare-fun lambda!844 () Int)

(declare-datatypes () ((List!134 (Nil!132) (Cons!131 (head!349 Balance!53) (tail!361 List!134)))))

(declare-fun foldRight_accumulator_equivalence!4 (List!134 Balance!53 Int) Bool)

(declare-fun map!135 (List!133 Int) List!134)

(assert (=> bs!1474 (= (dynLambda!97 lambda!847) (foldRight_accumulator_equivalence!4 (map!135 xs!395 lambda!845) (Balance!54 0 0) lambda!844))))

(declare-fun m!9441 () Bool)

(assert (=> bs!1474 m!9441))

(assert (=> bs!1474 m!9441))

(declare-fun m!9443 () Bool)

(assert (=> bs!1474 m!9443))

(assert (=> (and b!6583 (= lambda!847 proof!301) b!6587) d!5253))

(declare-fun bs!1475 () Bool)

(declare-fun d!5255 () Bool)

(assert (= bs!1475 (and d!5255 b!6585)))

(declare-fun remove_null_balance!0 (List!133) Bool)

(assert (=> bs!1475 (= (dynLambda!97 lambda!849) (remove_null_balance!0 xs!395))))

(declare-fun m!9445 () Bool)

(assert (=> bs!1475 m!9445))

(assert (=> (and b!6585 (= lambda!849 proof!301) b!6587) d!5255))

(push 1)

(assert (not b_next!647))

(assert (not b_next!643))

(assert (not b_next!649))

(assert (not b_next!645))

(assert (not bs!1475))

(assert (not start!1120))

(assert b_and!1589)

(assert (not b_next!651))

(assert (not b!6584))

(assert b_and!1587)

(assert (not bs!1474))

(assert (not b_lambda!3149))

(assert b_and!1579)

(assert b_and!1593)

(assert b_and!1581)

(assert (not b_next!641))

(assert b_and!1591)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!647))

(assert (not b_next!643))

(assert (not b_next!649))

(assert (not b_next!645))

(assert b_and!1589)

(assert (not b_next!651))

(assert b_and!1587)

(assert b_and!1579)

(assert b_and!1593)

(assert b_and!1581)

(assert (not b_next!641))

(assert b_and!1591)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!3896 () Bool)

(declare-fun b!6598 () Bool)

(declare-fun foldRight!23 (List!134 Balance!53 Int) Balance!53)

(declare-fun foldRight1!16 (List!134 Int) Balance!53)

(declare-fun append!49 (List!134 List!134) List!134)

(assert (=> b!6598 (= e!3896 (= (foldRight!23 (map!135 xs!395 lambda!845) (Balance!54 0 0) lambda!844) (foldRight1!16 (append!49 (map!135 xs!395 lambda!845) (Cons!131 (Balance!54 0 0) Nil!132)) lambda!844)))))

(declare-fun lt!1390 () Bool)

(assert (=> b!6598 (= lt!1390 (foldRight_accumulator_equivalence!4 (tail!361 (map!135 xs!395 lambda!845)) (Balance!54 0 0) lambda!844))))

(declare-fun d!5257 () Bool)

(assert (=> d!5257 e!3896))

(declare-fun c!2414 () Bool)

(assert (=> d!5257 (= c!2414 (is-Nil!132 (map!135 xs!395 lambda!845)))))

(assert (=> d!5257 (= (foldRight_accumulator_equivalence!4 (map!135 xs!395 lambda!845) (Balance!54 0 0) lambda!844) true)))

(declare-fun b!6597 () Bool)

(assert (=> b!6597 (= e!3896 (= (foldRight!23 (map!135 xs!395 lambda!845) (Balance!54 0 0) lambda!844) (foldRight1!16 (append!49 (map!135 xs!395 lambda!845) (Cons!131 (Balance!54 0 0) Nil!132)) lambda!844)))))

(assert (= (and d!5257 c!2414) b!6597))

(assert (= (and d!5257 (not c!2414)) b!6598))

(assert (=> b!6598 m!9441))

(declare-fun m!9447 () Bool)

(assert (=> b!6598 m!9447))

(assert (=> b!6598 m!9441))

(declare-fun m!9449 () Bool)

(assert (=> b!6598 m!9449))

(assert (=> b!6598 m!9449))

(declare-fun m!9451 () Bool)

(assert (=> b!6598 m!9451))

(declare-fun m!9453 () Bool)

(assert (=> b!6598 m!9453))

(assert (=> b!6597 m!9441))

(assert (=> b!6597 m!9447))

(assert (=> b!6597 m!9441))

(assert (=> b!6597 m!9449))

(assert (=> b!6597 m!9449))

(assert (=> b!6597 m!9451))

(assert (=> bs!1474 d!5257))

(declare-fun d!5259 () Bool)

(declare-fun c!2417 () Bool)

(assert (=> d!5259 (= c!2417 (is-Nil!131 xs!395))))

(declare-fun e!3899 () List!134)

(assert (=> d!5259 (= (map!135 xs!395 lambda!845) e!3899)))

(declare-fun b!6603 () Bool)

(assert (=> b!6603 (= e!3899 Nil!132)))

(declare-fun b!6604 () Bool)

(declare-fun dynLambda!98 (Int Parenthesis!25) Balance!53)

(assert (=> b!6604 (= e!3899 (Cons!131 (dynLambda!98 lambda!845 (head!348 xs!395)) (map!135 (tail!360 xs!395) lambda!845)))))

(assert (= (and d!5259 c!2417) b!6603))

(assert (= (and d!5259 (not c!2417)) b!6604))

(declare-fun b_lambda!3151 () Bool)

(assert (=> (not b_lambda!3151) (not b!6604)))

(declare-fun m!9455 () Bool)

(assert (=> b!6604 m!9455))

(declare-fun m!9457 () Bool)

(assert (=> b!6604 m!9457))

(assert (=> bs!1474 d!5259))

(declare-fun bs!1476 () Bool)

(declare-fun d!5261 () Bool)

(assert (= bs!1476 (and d!5261 b!6583)))

(declare-fun lambda!874 () Int)

(assert (=> bs!1476 (= lambda!874 lambda!845)))

(declare-fun lambda!875 () Int)

(assert (=> bs!1476 (= lambda!875 lambda!844)))

(declare-fun b!6625 () Bool)

(declare-fun e!3912 () List!134)

(declare-fun res!1834 () List!134)

(assert (=> b!6625 (= e!3912 res!1834)))

(assert (=> b!6625 true))

(declare-fun b!6626 () Bool)

(declare-fun e!3911 () Balance!53)

(declare-fun res!1833 () Balance!53)

(assert (=> b!6626 (= e!3911 res!1833)))

(assert (=> b!6626 true))

(assert (=> b!6626 true))

(declare-fun b!6627 () Bool)

(declare-fun e!3914 () Int)

(assert (=> b!6627 (= e!3911 (foldRight1!16 e!3912 e!3914))))

(declare-fun c!2431 () Bool)

(declare-fun lt!1399 () Bool)

(assert (=> b!6627 (= c!2431 lt!1399)))

(declare-fun c!2432 () Bool)

(declare-fun lt!1398 () Bool)

(assert (=> b!6627 (= c!2432 (or lt!1398 (not lt!1398)))))

(declare-fun e!3913 () Bool)

(declare-fun because!2 (ProofOps!40 Bool) Bool)

(assert (=> d!5261 (because!2 (ProofOps!41 (= (foldRight1!16 (append!49 (map!135 xs!395 lambda!874) (Cons!131 (Balance!54 0 0) Nil!132)) lambda!875) (foldRight1!16 (map!135 xs!395 lambda!874) lambda!875))) e!3913)))

(declare-fun c!2430 () Bool)

(assert (=> d!5261 (= c!2430 lt!1398)))

(declare-fun lt!1397 () Balance!53)

(assert (=> d!5261 (= lt!1397 e!3911)))

(declare-fun c!2428 () Bool)

(assert (=> d!5261 (= c!2428 (or lt!1399 (not lt!1398)))))

(assert (=> d!5261 (= lt!1399 lt!1398)))

(assert (=> d!5261 (= lt!1398 (and (is-Cons!130 xs!395) (is-Nil!131 (tail!360 xs!395))))))

(assert (=> d!5261 (not (isEmpty!118 xs!395))))

(assert (=> d!5261 (= (remove_null_balance!0 xs!395) true)))

(declare-fun b!6628 () Bool)

(assert (=> b!6628 (= e!3914 lambda!875)))

(declare-fun b!6629 () Bool)

(assert (=> b!6629 (= e!3913 true)))

(assert (=> b!6629 (= lt!1397 (foldRight1!16 (map!135 xs!395 lambda!874) lambda!875))))

(declare-fun b!6630 () Bool)

(assert (=> b!6630 (= e!3914 lambda!875)))

(declare-fun b!6631 () Bool)

(declare-fun e!3910 () Int)

(assert (=> b!6631 (= e!3910 lambda!874)))

(declare-fun b!6632 () Bool)

(assert (=> b!6632 (= e!3913 true)))

(assert (=> b!6632 (= lt!1397 (foldRight1!16 (map!135 xs!395 lambda!874) lambda!875))))

(declare-fun b!6633 () Bool)

(assert (=> b!6633 (= e!3912 (append!49 (map!135 xs!395 e!3910) (Cons!131 (Balance!54 0 0) Nil!132)))))

(declare-fun c!2429 () Bool)

(assert (=> b!6633 (= c!2429 lt!1398)))

(declare-fun b!6634 () Bool)

(assert (=> b!6634 (= e!3910 lambda!874)))

(assert (= (and b!6633 c!2429) b!6631))

(assert (= (and b!6633 (not c!2429)) b!6634))

(assert (= (and b!6627 c!2432) b!6633))

(assert (= (and b!6627 (not c!2432)) b!6625))

(assert (= (and b!6627 c!2431) b!6630))

(assert (= (and b!6627 (not c!2431)) b!6628))

(assert (= (and d!5261 c!2428) b!6627))

(assert (= (and d!5261 (not c!2428)) b!6626))

(assert (= (and d!5261 c!2430) b!6632))

(assert (= (and d!5261 (not c!2430)) b!6629))

(declare-fun m!9459 () Bool)

(assert (=> d!5261 m!9459))

(declare-fun m!9461 () Bool)

(assert (=> d!5261 m!9461))

(assert (=> d!5261 m!9429))

(declare-fun m!9463 () Bool)

(assert (=> d!5261 m!9463))

(assert (=> d!5261 m!9463))

(assert (=> d!5261 m!9459))

(declare-fun m!9465 () Bool)

(assert (=> d!5261 m!9465))

(assert (=> d!5261 m!9463))

(assert (=> d!5261 m!9463))

(declare-fun m!9467 () Bool)

(assert (=> d!5261 m!9467))

(assert (=> b!6629 m!9463))

(assert (=> b!6629 m!9463))

(assert (=> b!6629 m!9467))

(declare-fun m!9469 () Bool)

(assert (=> b!6627 m!9469))

(assert (=> b!6632 m!9463))

(assert (=> b!6632 m!9463))

(assert (=> b!6632 m!9467))

(declare-fun m!9471 () Bool)

(assert (=> b!6633 m!9471))

(assert (=> b!6633 m!9471))

(declare-fun m!9473 () Bool)

(assert (=> b!6633 m!9473))

(assert (=> bs!1475 d!5261))

(declare-fun d!5263 () Bool)

(assert (=> d!5263 (= (isEmpty!118 xs!395) (is-Nil!131 xs!395))))

(assert (=> start!1120 d!5263))

(declare-fun d!5265 () Bool)

(declare-fun res!1837 () Bool)

(declare-fun e!3917 () Bool)

(assert (=> d!5265 (=> (not res!1837) (not e!3917))))

(declare-fun dynLambda!99 (Int) Balance!53)

(assert (=> d!5265 (= res!1837 (= (dynLambda!99 (x!3589 thiss!1204)) (dynLambda!99 (y!441 thiss!1204))))))

(assert (=> d!5265 (= (inv!236 thiss!1204) e!3917)))

(declare-fun b!6637 () Bool)

(assert (=> b!6637 (= e!3917 (dynLambda!97 (evidence!88 thiss!1204)))))

(assert (= (and d!5265 res!1837) b!6637))

(declare-fun b_lambda!3153 () Bool)

(assert (=> (not b_lambda!3153) (not d!5265)))

(declare-fun t!1217 () Bool)

(declare-fun tb!877 () Bool)

(assert (=> (and b!6588 (= (x!3589 thiss!1204) (x!3589 thiss!1204)) t!1217) tb!877))

(declare-fun result!917 () Bool)

(assert (=> tb!877 (= result!917 true)))

(assert (=> d!5265 t!1217))

(declare-fun b_and!1595 () Bool)

(assert (= b_and!1579 (and (=> t!1217 result!917) b_and!1595)))

(declare-fun t!1219 () Bool)

(declare-fun tb!879 () Bool)

(assert (=> (and b!6588 (= (y!441 thiss!1204) (x!3589 thiss!1204)) t!1219) tb!879))

(declare-fun result!919 () Bool)

(assert (=> tb!879 (= result!919 true)))

(assert (=> d!5265 t!1219))

(declare-fun b_and!1597 () Bool)

(assert (= b_and!1581 (and (=> t!1219 result!919) b_and!1597)))

(declare-fun tb!881 () Bool)

(declare-fun t!1221 () Bool)

(assert (=> (and b!6586 (= (x!3590 thiss!1228) (x!3589 thiss!1204)) t!1221) tb!881))

(declare-fun result!921 () Bool)

(assert (=> tb!881 (= result!921 true)))

(assert (=> d!5265 t!1221))

(declare-fun b_and!1599 () Bool)

(assert (= b_and!1587 (and (=> t!1221 result!921) b_and!1599)))

(declare-fun tb!883 () Bool)

(declare-fun t!1223 () Bool)

(assert (=> (and b!6586 (= (y!442 thiss!1228) (x!3589 thiss!1204)) t!1223) tb!883))

(declare-fun result!923 () Bool)

(assert (=> tb!883 (= result!923 true)))

(assert (=> d!5265 t!1223))

(declare-fun b_and!1601 () Bool)

(assert (= b_and!1589 (and (=> t!1223 result!923) b_and!1601)))

(declare-fun b_lambda!3155 () Bool)

(assert (=> (not b_lambda!3155) (not d!5265)))

(declare-fun t!1225 () Bool)

(declare-fun tb!885 () Bool)

(assert (=> (and b!6588 (= (x!3589 thiss!1204) (y!441 thiss!1204)) t!1225) tb!885))

(declare-fun result!925 () Bool)

(assert (=> tb!885 (= result!925 true)))

(assert (=> d!5265 t!1225))

(declare-fun b_and!1603 () Bool)

(assert (= b_and!1595 (and (=> t!1225 result!925) b_and!1603)))

(declare-fun t!1227 () Bool)

(declare-fun tb!887 () Bool)

(assert (=> (and b!6588 (= (y!441 thiss!1204) (y!441 thiss!1204)) t!1227) tb!887))

(declare-fun result!927 () Bool)

(assert (=> tb!887 (= result!927 true)))

(assert (=> d!5265 t!1227))

(declare-fun b_and!1605 () Bool)

(assert (= b_and!1597 (and (=> t!1227 result!927) b_and!1605)))

(declare-fun tb!889 () Bool)

(declare-fun t!1229 () Bool)

(assert (=> (and b!6586 (= (x!3590 thiss!1228) (y!441 thiss!1204)) t!1229) tb!889))

(declare-fun result!929 () Bool)

(assert (=> tb!889 (= result!929 true)))

(assert (=> d!5265 t!1229))

(declare-fun b_and!1607 () Bool)

(assert (= b_and!1599 (and (=> t!1229 result!929) b_and!1607)))

(declare-fun tb!891 () Bool)

(declare-fun t!1231 () Bool)

(assert (=> (and b!6586 (= (y!442 thiss!1228) (y!441 thiss!1204)) t!1231) tb!891))

(declare-fun result!931 () Bool)

(assert (=> tb!891 (= result!931 true)))

(assert (=> d!5265 t!1231))

(declare-fun b_and!1609 () Bool)

(assert (= b_and!1601 (and (=> t!1231 result!931) b_and!1609)))

(declare-fun b_lambda!3157 () Bool)

(assert (=> (not b_lambda!3157) (not b!6637)))

(declare-fun t!1233 () Bool)

(declare-fun tb!893 () Bool)

(assert (=> (and b!6588 (= (evidence!88 thiss!1204) (evidence!88 thiss!1204)) t!1233) tb!893))

(declare-fun result!933 () Bool)

(assert (=> tb!893 (= result!933 true)))

(assert (=> b!6637 t!1233))

(declare-fun b_and!1611 () Bool)

(assert (= b_and!1591 (and (=> t!1233 result!933) b_and!1611)))

(declare-fun tb!895 () Bool)

(declare-fun t!1235 () Bool)

(assert (=> (and start!1120 (= proof!301 (evidence!88 thiss!1204)) t!1235) tb!895))

(declare-fun result!935 () Bool)

(assert (=> tb!895 (= result!935 true)))

(assert (=> b!6637 t!1235))

(declare-fun b_and!1613 () Bool)

(assert (= b_and!1593 (and (=> t!1235 result!935) b_and!1613)))

(declare-fun m!9475 () Bool)

(assert (=> d!5265 m!9475))

(declare-fun m!9477 () Bool)

(assert (=> d!5265 m!9477))

(declare-fun m!9479 () Bool)

(assert (=> b!6637 m!9479))

(assert (=> start!1120 d!5265))

(declare-fun d!5267 () Bool)

(assert (=> d!5267 (= (inv!237 thiss!1228) (= (dynLambda!99 (x!3590 thiss!1228)) (dynLambda!99 (y!442 thiss!1228))))))

(declare-fun b_lambda!3159 () Bool)

(assert (=> (not b_lambda!3159) (not d!5267)))

(declare-fun tb!897 () Bool)

(declare-fun t!1237 () Bool)

(assert (=> (and b!6588 (= (x!3589 thiss!1204) (x!3590 thiss!1228)) t!1237) tb!897))

(declare-fun result!937 () Bool)

(assert (=> tb!897 (= result!937 true)))

(assert (=> d!5267 t!1237))

(declare-fun b_and!1615 () Bool)

(assert (= b_and!1603 (and (=> t!1237 result!937) b_and!1615)))

(declare-fun tb!899 () Bool)

(declare-fun t!1239 () Bool)

(assert (=> (and b!6588 (= (y!441 thiss!1204) (x!3590 thiss!1228)) t!1239) tb!899))

(declare-fun result!939 () Bool)

(assert (=> tb!899 (= result!939 true)))

(assert (=> d!5267 t!1239))

(declare-fun b_and!1617 () Bool)

(assert (= b_and!1605 (and (=> t!1239 result!939) b_and!1617)))

(declare-fun t!1241 () Bool)

(declare-fun tb!901 () Bool)

(assert (=> (and b!6586 (= (x!3590 thiss!1228) (x!3590 thiss!1228)) t!1241) tb!901))

(declare-fun result!941 () Bool)

(assert (=> tb!901 (= result!941 true)))

(assert (=> d!5267 t!1241))

(declare-fun b_and!1619 () Bool)

(assert (= b_and!1607 (and (=> t!1241 result!941) b_and!1619)))

(declare-fun t!1243 () Bool)

(declare-fun tb!903 () Bool)

(assert (=> (and b!6586 (= (y!442 thiss!1228) (x!3590 thiss!1228)) t!1243) tb!903))

(declare-fun result!943 () Bool)

(assert (=> tb!903 (= result!943 true)))

(assert (=> d!5267 t!1243))

(declare-fun b_and!1621 () Bool)

(assert (= b_and!1609 (and (=> t!1243 result!943) b_and!1621)))

(declare-fun b_lambda!3161 () Bool)

(assert (=> (not b_lambda!3161) (not d!5267)))

(declare-fun t!1245 () Bool)

(declare-fun tb!905 () Bool)

(assert (=> (and b!6588 (= (x!3589 thiss!1204) (y!442 thiss!1228)) t!1245) tb!905))

(declare-fun result!945 () Bool)

(assert (=> tb!905 (= result!945 true)))

(assert (=> d!5267 t!1245))

(declare-fun b_and!1623 () Bool)

(assert (= b_and!1615 (and (=> t!1245 result!945) b_and!1623)))

(declare-fun t!1247 () Bool)

(declare-fun tb!907 () Bool)

(assert (=> (and b!6588 (= (y!441 thiss!1204) (y!442 thiss!1228)) t!1247) tb!907))

(declare-fun result!947 () Bool)

(assert (=> tb!907 (= result!947 true)))

(assert (=> d!5267 t!1247))

(declare-fun b_and!1625 () Bool)

(assert (= b_and!1617 (and (=> t!1247 result!947) b_and!1625)))

(declare-fun t!1249 () Bool)

(declare-fun tb!909 () Bool)

(assert (=> (and b!6586 (= (x!3590 thiss!1228) (y!442 thiss!1228)) t!1249) tb!909))

(declare-fun result!949 () Bool)

(assert (=> tb!909 (= result!949 true)))

(assert (=> d!5267 t!1249))

(declare-fun b_and!1627 () Bool)

(assert (= b_and!1619 (and (=> t!1249 result!949) b_and!1627)))

(declare-fun t!1251 () Bool)

(declare-fun tb!911 () Bool)

(assert (=> (and b!6586 (= (y!442 thiss!1228) (y!442 thiss!1228)) t!1251) tb!911))

(declare-fun result!951 () Bool)

(assert (=> tb!911 (= result!951 true)))

(assert (=> d!5267 t!1251))

(declare-fun b_and!1629 () Bool)

(assert (= b_and!1621 (and (=> t!1251 result!951) b_and!1629)))

(declare-fun m!9481 () Bool)

(assert (=> d!5267 m!9481))

(declare-fun m!9483 () Bool)

(assert (=> d!5267 m!9483))

(assert (=> start!1120 d!5267))

(declare-fun bs!1477 () Bool)

(declare-fun d!5269 () Bool)

(assert (= bs!1477 (and d!5269 b!6583)))

(declare-fun lambda!878 () Int)

(declare-fun lambda!843 () Int)

(assert (=> bs!1477 (= lambda!878 lambda!843)))

(declare-fun isBalanced!0 (Balance!53) Bool)

(declare-fun foldRight!24 (List!133 Balance!53 Int) Balance!53)

(assert (=> d!5269 (= (isMatchedSequential!0 xs!395) (isBalanced!0 (foldRight!24 xs!395 (Balance!54 0 0) lambda!878)))))

(declare-fun bs!1478 () Bool)

(assert (= bs!1478 d!5269))

(declare-fun m!9485 () Bool)

(assert (=> bs!1478 m!9485))

(assert (=> bs!1478 m!9485))

(declare-fun m!9487 () Bool)

(assert (=> bs!1478 m!9487))

(assert (=> b!6584 d!5269))

(declare-fun bs!1479 () Bool)

(declare-fun d!5271 () Bool)

(assert (= bs!1479 (and d!5271 b!6583)))

(declare-fun lambda!883 () Int)

(assert (=> bs!1479 (= lambda!883 lambda!845)))

(declare-fun bs!1480 () Bool)

(assert (= bs!1480 (and d!5271 d!5261)))

(assert (=> bs!1480 (= lambda!883 lambda!874)))

(declare-fun lambda!884 () Int)

(assert (=> bs!1479 (= lambda!884 lambda!844)))

(assert (=> bs!1480 (= lambda!884 lambda!875)))

(assert (=> d!5271 (= (isMatchedHybid!0 xs!395) (isBalanced!0 (foldRight1!16 (map!135 xs!395 lambda!883) lambda!884)))))

(declare-fun bs!1481 () Bool)

(assert (= bs!1481 d!5271))

(declare-fun m!9489 () Bool)

(assert (=> bs!1481 m!9489))

(assert (=> bs!1481 m!9489))

(declare-fun m!9491 () Bool)

(assert (=> bs!1481 m!9491))

(assert (=> bs!1481 m!9491))

(declare-fun m!9493 () Bool)

(assert (=> bs!1481 m!9493))

(assert (=> b!6584 d!5271))

(declare-fun b_lambda!3163 () Bool)

(assert (= b_lambda!3159 (or (and b!6583 (= lambda!842 (x!3590 thiss!1228))) (and b!6582 (= lambda!848 (x!3590 thiss!1228))) (and b!6586 b_free!297 (= (y!442 thiss!1228) (x!3590 thiss!1228))) (and b!6588 b_free!287 (= (x!3589 thiss!1204) (x!3590 thiss!1228))) (and b!6586 b_free!295) (and b!6583 (= lambda!846 (x!3590 thiss!1228))) (and b!6588 b_free!289 (= (y!441 thiss!1204) (x!3590 thiss!1228))) b_lambda!3163)))

(declare-fun bs!1482 () Bool)

(declare-fun d!5273 () Bool)

(assert (= bs!1482 (and d!5273 b!6582)))

(assert (=> bs!1482 (= (dynLambda!99 lambda!848) (foldRight1!16 (append!49 (map!135 xs!395 lambda!845) (Cons!131 (Balance!54 0 0) Nil!132)) lambda!844))))

(assert (=> bs!1482 m!9441))

(assert (=> bs!1482 m!9441))

(assert (=> bs!1482 m!9449))

(assert (=> bs!1482 m!9449))

(assert (=> bs!1482 m!9451))

(assert (=> (and b!6582 (= lambda!848 (x!3590 thiss!1228)) d!5267) d!5273))

(declare-fun bs!1483 () Bool)

(declare-fun d!5275 () Bool)

(assert (= bs!1483 (and d!5275 b!6583)))

(assert (=> bs!1483 (= (dynLambda!99 lambda!846) (foldRight!23 (map!135 xs!395 lambda!845) (Balance!54 0 0) lambda!844))))

(assert (=> bs!1483 m!9441))

(assert (=> bs!1483 m!9441))

(assert (=> bs!1483 m!9447))

(assert (=> (and b!6583 (= lambda!846 (x!3590 thiss!1228)) d!5267) d!5275))

(declare-fun bs!1484 () Bool)

(declare-fun d!5277 () Bool)

(assert (= bs!1484 (and d!5277 b!6583)))

(assert (=> bs!1484 (= (dynLambda!99 lambda!842) (foldRight!24 xs!395 (Balance!54 0 0) lambda!843))))

(declare-fun m!9495 () Bool)

(assert (=> bs!1484 m!9495))

(assert (=> (and b!6583 (= lambda!842 (x!3590 thiss!1228)) d!5267) d!5277))

(declare-fun b_lambda!3165 () Bool)

(assert (= b_lambda!3151 (or b!6583 b_lambda!3165)))

(declare-fun bs!1485 () Bool)

(declare-fun d!5279 () Bool)

(assert (= bs!1485 (and d!5279 b!6583)))

(declare-fun fromParenthesis!0 (Parenthesis!25) Balance!53)

(assert (=> bs!1485 (= (dynLambda!98 lambda!845 (head!348 xs!395)) (fromParenthesis!0 (head!348 xs!395)))))

(declare-fun m!9497 () Bool)

(assert (=> bs!1485 m!9497))

(assert (=> b!6604 d!5279))

(declare-fun b_lambda!3167 () Bool)

(assert (= b_lambda!3155 (or (and b!6588 b_free!287 (= (x!3589 thiss!1204) (y!441 thiss!1204))) (and b!6586 b_free!297 (= (y!442 thiss!1228) (y!441 thiss!1204))) (and b!6583 (= lambda!842 (y!441 thiss!1204))) (and b!6582 (= lambda!848 (y!441 thiss!1204))) (and b!6588 b_free!289) (and b!6586 b_free!295 (= (x!3590 thiss!1228) (y!441 thiss!1204))) (and b!6583 (= lambda!846 (y!441 thiss!1204))) b_lambda!3167)))

(declare-fun bs!1486 () Bool)

(declare-fun d!5281 () Bool)

(assert (= bs!1486 (and d!5281 b!6583)))

(assert (=> bs!1486 (= (dynLambda!99 lambda!842) (foldRight!24 xs!395 (Balance!54 0 0) lambda!843))))

(assert (=> bs!1486 m!9495))

(assert (=> (and b!6583 (= lambda!842 (y!441 thiss!1204)) d!5265) d!5281))

(declare-fun bs!1487 () Bool)

(declare-fun d!5283 () Bool)

(assert (= bs!1487 (and d!5283 b!6583)))

(assert (=> bs!1487 (= (dynLambda!99 lambda!846) (foldRight!23 (map!135 xs!395 lambda!845) (Balance!54 0 0) lambda!844))))

(assert (=> bs!1487 m!9441))

(assert (=> bs!1487 m!9441))

(assert (=> bs!1487 m!9447))

(assert (=> (and b!6583 (= lambda!846 (y!441 thiss!1204)) d!5265) d!5283))

(declare-fun bs!1488 () Bool)

(declare-fun d!5285 () Bool)

(assert (= bs!1488 (and d!5285 b!6582)))

(assert (=> bs!1488 (= (dynLambda!99 lambda!848) (foldRight1!16 (append!49 (map!135 xs!395 lambda!845) (Cons!131 (Balance!54 0 0) Nil!132)) lambda!844))))

(assert (=> bs!1488 m!9441))

(assert (=> bs!1488 m!9441))

(assert (=> bs!1488 m!9449))

(assert (=> bs!1488 m!9449))

(assert (=> bs!1488 m!9451))

(assert (=> (and b!6582 (= lambda!848 (y!441 thiss!1204)) d!5265) d!5285))

(declare-fun b_lambda!3169 () Bool)

(assert (= b_lambda!3161 (or (and b!6583 (= lambda!842 (y!442 thiss!1228))) (and b!6588 b_free!289 (= (y!441 thiss!1204) (y!442 thiss!1228))) (and b!6582 (= lambda!848 (y!442 thiss!1228))) (and b!6586 b_free!295 (= (x!3590 thiss!1228) (y!442 thiss!1228))) (and b!6588 b_free!287 (= (x!3589 thiss!1204) (y!442 thiss!1228))) (and b!6583 (= lambda!846 (y!442 thiss!1228))) (and b!6586 b_free!297) b_lambda!3169)))

(declare-fun bs!1489 () Bool)

(declare-fun d!5287 () Bool)

(assert (= bs!1489 (and d!5287 b!6583)))

(assert (=> bs!1489 (= (dynLambda!99 lambda!846) (foldRight!23 (map!135 xs!395 lambda!845) (Balance!54 0 0) lambda!844))))

(assert (=> bs!1489 m!9441))

(assert (=> bs!1489 m!9441))

(assert (=> bs!1489 m!9447))

(assert (=> (and b!6583 (= lambda!846 (y!442 thiss!1228)) d!5267) d!5287))

(declare-fun bs!1490 () Bool)

(declare-fun d!5289 () Bool)

(assert (= bs!1490 (and d!5289 b!6583)))

(assert (=> bs!1490 (= (dynLambda!99 lambda!842) (foldRight!24 xs!395 (Balance!54 0 0) lambda!843))))

(assert (=> bs!1490 m!9495))

(assert (=> (and b!6583 (= lambda!842 (y!442 thiss!1228)) d!5267) d!5289))

(declare-fun bs!1491 () Bool)

(declare-fun d!5291 () Bool)

(assert (= bs!1491 (and d!5291 b!6582)))

(assert (=> bs!1491 (= (dynLambda!99 lambda!848) (foldRight1!16 (append!49 (map!135 xs!395 lambda!845) (Cons!131 (Balance!54 0 0) Nil!132)) lambda!844))))

(assert (=> bs!1491 m!9441))

(assert (=> bs!1491 m!9441))

(assert (=> bs!1491 m!9449))

(assert (=> bs!1491 m!9449))

(assert (=> bs!1491 m!9451))

(assert (=> (and b!6582 (= lambda!848 (y!442 thiss!1228)) d!5267) d!5291))

(declare-fun b_lambda!3171 () Bool)

(assert (= b_lambda!3157 (or (and b!6583 (= lambda!847 (evidence!88 thiss!1204))) (and b!6585 (= lambda!849 (evidence!88 thiss!1204))) (and b!6588 b_free!291) (and start!1120 b_free!293 (= proof!301 (evidence!88 thiss!1204))) b_lambda!3171)))

(declare-fun bs!1492 () Bool)

(declare-fun d!5293 () Bool)

(assert (= bs!1492 (and d!5293 b!6583)))

(assert (=> bs!1492 (= (dynLambda!97 lambda!847) (foldRight_accumulator_equivalence!4 (map!135 xs!395 lambda!845) (Balance!54 0 0) lambda!844))))

(assert (=> bs!1492 m!9441))

(assert (=> bs!1492 m!9441))

(assert (=> bs!1492 m!9443))

(assert (=> (and b!6583 (= lambda!847 (evidence!88 thiss!1204)) b!6637) d!5293))

(declare-fun bs!1493 () Bool)

(declare-fun d!5295 () Bool)

(assert (= bs!1493 (and d!5295 b!6585)))

(assert (=> bs!1493 (= (dynLambda!97 lambda!849) (remove_null_balance!0 xs!395))))

(assert (=> bs!1493 m!9445))

(assert (=> (and b!6585 (= lambda!849 (evidence!88 thiss!1204)) b!6637) d!5295))

(declare-fun b_lambda!3173 () Bool)

(assert (= b_lambda!3153 (or (and b!6586 b_free!297 (= (y!442 thiss!1228) (x!3589 thiss!1204))) (and b!6583 (= lambda!846 (x!3589 thiss!1204))) (and b!6582 (= lambda!848 (x!3589 thiss!1204))) (and b!6588 b_free!289 (= (y!441 thiss!1204) (x!3589 thiss!1204))) (and b!6583 (= lambda!842 (x!3589 thiss!1204))) (and b!6588 b_free!287) (and b!6586 b_free!295 (= (x!3590 thiss!1228) (x!3589 thiss!1204))) b_lambda!3173)))

(declare-fun bs!1494 () Bool)

(declare-fun d!5297 () Bool)

(assert (= bs!1494 (and d!5297 b!6583)))

(assert (=> bs!1494 (= (dynLambda!99 lambda!842) (foldRight!24 xs!395 (Balance!54 0 0) lambda!843))))

(assert (=> bs!1494 m!9495))

(assert (=> (and b!6583 (= lambda!842 (x!3589 thiss!1204)) d!5265) d!5297))

(declare-fun bs!1495 () Bool)

(declare-fun d!5299 () Bool)

(assert (= bs!1495 (and d!5299 b!6582)))

(assert (=> bs!1495 (= (dynLambda!99 lambda!848) (foldRight1!16 (append!49 (map!135 xs!395 lambda!845) (Cons!131 (Balance!54 0 0) Nil!132)) lambda!844))))

(assert (=> bs!1495 m!9441))

(assert (=> bs!1495 m!9441))

(assert (=> bs!1495 m!9449))

(assert (=> bs!1495 m!9449))

(assert (=> bs!1495 m!9451))

(assert (=> (and b!6582 (= lambda!848 (x!3589 thiss!1204)) d!5265) d!5299))

(declare-fun bs!1496 () Bool)

(declare-fun d!5301 () Bool)

(assert (= bs!1496 (and d!5301 b!6583)))

(assert (=> bs!1496 (= (dynLambda!99 lambda!846) (foldRight!23 (map!135 xs!395 lambda!845) (Balance!54 0 0) lambda!844))))

(assert (=> bs!1496 m!9441))

(assert (=> bs!1496 m!9441))

(assert (=> bs!1496 m!9447))

(assert (=> (and b!6583 (= lambda!846 (x!3589 thiss!1204)) d!5265) d!5301))

(push 1)

(assert (not d!5269))

(assert (not b_next!647))

(assert (not b_next!643))

(assert (not bs!1491))

(assert (not b_next!649))

(assert (not b!6597))

(assert (not bs!1490))

(assert (not b!6632))

(assert (not bs!1488))

(assert (not b_next!645))

(assert (not d!5271))

(assert (not d!5261))

(assert (not b_lambda!3163))

(assert (not b_lambda!3167))

(assert (not bs!1496))

(assert (not bs!1485))

(assert b_and!1627)

(assert (not bs!1483))

(assert (not bs!1486))

(assert (not bs!1487))

(assert (not b_next!651))

(assert (not b!6604))

(assert b_and!1611)

(assert (not b_lambda!3169))

(assert (not b_lambda!3149))

(assert (not bs!1495))

(assert (not b_lambda!3165))

(assert (not bs!1492))

(assert (not b!6598))

(assert (not b_lambda!3173))

(assert b_and!1623)

(assert (not b!6633))

(assert (not bs!1489))

(assert (not bs!1494))

(assert b_and!1629)

(assert (not bs!1482))

(assert (not b!6627))

(assert b_and!1613)

(assert (not bs!1493))

(assert (not bs!1484))

(assert (not b_next!641))

(assert (not b!6629))

(assert b_and!1625)

(assert (not b_lambda!3171))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!647))

(assert (not b_next!643))

(assert (not b_next!649))

(assert (not b_next!645))

(assert b_and!1627)

(assert (not b_next!651))

(assert b_and!1611)

(assert b_and!1623)

(assert b_and!1629)

(assert b_and!1613)

(assert (not b_next!641))

(assert b_and!1625)

(check-sat)

(pop 1)

