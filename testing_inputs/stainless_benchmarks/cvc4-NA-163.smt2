; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1078 () Bool)

(assert start!1078)

(declare-fun b_free!239 () Bool)

(declare-fun b_next!497 () Bool)

(assert (=> start!1078 (= b_free!239 (not b_next!497))))

(declare-fun tp!491 () Bool)

(declare-fun b_and!1431 () Bool)

(assert (=> start!1078 (= tp!491 b_and!1431)))

(declare-fun b!6457 () Bool)

(declare-fun b_free!241 () Bool)

(declare-fun b_next!499 () Bool)

(assert (=> b!6457 (= b_free!241 (not b_next!499))))

(declare-fun tp!492 () Bool)

(declare-fun b_and!1433 () Bool)

(assert (=> b!6457 (= tp!492 b_and!1433)))

(declare-fun b_free!243 () Bool)

(declare-fun b_next!501 () Bool)

(assert (=> b!6457 (= b_free!243 (not b_next!501))))

(declare-fun tp!495 () Bool)

(declare-fun b_and!1435 () Bool)

(assert (=> b!6457 (= tp!495 b_and!1435)))

(declare-fun b!6459 () Bool)

(declare-fun b_free!245 () Bool)

(declare-fun b_next!503 () Bool)

(assert (=> b!6459 (= b_free!245 (not b_next!503))))

(declare-fun tp!494 () Bool)

(declare-fun b_and!1437 () Bool)

(assert (=> b!6459 (= tp!494 b_and!1437)))

(declare-fun b_free!247 () Bool)

(declare-fun b_next!505 () Bool)

(assert (=> b!6459 (= b_free!247 (not b_next!505))))

(declare-fun tp!493 () Bool)

(declare-fun b_and!1439 () Bool)

(assert (=> b!6459 (= tp!493 b_and!1439)))

(declare-fun b_free!249 () Bool)

(declare-fun b_next!507 () Bool)

(assert (=> b!6459 (= b_free!249 (not b_next!507))))

(declare-fun tp!496 () Bool)

(declare-fun b_and!1441 () Bool)

(assert (=> b!6459 (= tp!496 b_and!1441)))

(declare-fun b!6463 () Bool)

(assert (=> b!6463 true))

(declare-fun b_next!509 () Bool)

(declare-datatypes () ((Balance!45 (Balance!46 (extraOpen!63 Int) (extraClose!63 Int)))))

(declare-datatypes () ((EqProof!20 (EqProof!21 (x!3473 Int) (y!436 Int)))))

(declare-fun thiss!1217 () EqProof!20)

(declare-fun lambda!712 () Int)

(assert (=> b!6457 (= b_next!499 (or (and b!6463 (= lambda!712 (x!3473 thiss!1217))) b_next!509))))

(declare-fun b_next!511 () Bool)

(assert (=> b!6457 (= b_next!501 (or (and b!6463 (= lambda!712 (y!436 thiss!1217))) b_next!511))))

(declare-fun b_next!513 () Bool)

(declare-datatypes () ((EqEvidence!34 (EqEvidence!35 (x!3474 Int) (y!437 Int) (evidence!84 Int)))))

(declare-fun thiss!1205 () EqEvidence!34)

(assert (=> b!6459 (= b_next!503 (or (and b!6463 (= lambda!712 (x!3474 thiss!1205))) b_next!513))))

(declare-fun b_next!515 () Bool)

(assert (=> b!6459 (= b_next!505 (or (and b!6463 (= lambda!712 (y!437 thiss!1205))) b_next!515))))

(declare-fun lambda!714 () Int)

(declare-fun lambda!713 () Int)

(assert (=> b!6463 (not (= lambda!714 lambda!713))))

(declare-fun lambda!715 () Int)

(assert (=> b!6463 (= (= lambda!714 lambda!713) (= lambda!715 lambda!712))))

(assert (=> b!6463 true))

(declare-fun b_next!517 () Bool)

(assert (=> b!6457 (= b_next!509 (or (and b!6463 (= lambda!715 (x!3473 thiss!1217))) b_next!517))))

(declare-fun b_next!519 () Bool)

(assert (=> b!6457 (= b_next!511 (or (and b!6463 (= lambda!715 (y!436 thiss!1217))) b_next!519))))

(declare-fun b_next!521 () Bool)

(assert (=> b!6459 (= b_next!513 (or (and b!6463 (= lambda!715 (x!3474 thiss!1205))) b_next!521))))

(declare-fun b_next!523 () Bool)

(assert (=> b!6459 (= b_next!515 (or (and b!6463 (= lambda!715 (y!437 thiss!1205))) b_next!523))))

(assert (=> b!6463 true))

(declare-fun b_next!525 () Bool)

(declare-fun proof!300 () Int)

(declare-fun lambda!716 () Int)

(assert (=> start!1078 (= b_next!497 (or (and b!6463 (= lambda!716 proof!300)) b_next!525))))

(declare-fun b_next!527 () Bool)

(assert (=> b!6459 (= b_next!507 (or (and b!6463 (= lambda!716 (evidence!84 thiss!1205))) b_next!527))))

(declare-fun bs!1402 () Bool)

(declare-fun b!6462 () Bool)

(assert (= bs!1402 (and b!6462 b!6463)))

(declare-fun lambda!719 () Int)

(assert (=> bs!1402 (not (= lambda!719 lambda!712))))

(assert (=> bs!1402 (not (= lambda!719 lambda!715))))

(assert (=> b!6462 true))

(declare-fun b_next!529 () Bool)

(assert (=> b!6457 (= b_next!517 (or (and b!6462 (= lambda!719 (x!3473 thiss!1217))) b_next!529))))

(declare-fun b_next!531 () Bool)

(assert (=> b!6457 (= b_next!519 (or (and b!6462 (= lambda!719 (y!436 thiss!1217))) b_next!531))))

(declare-fun b_next!533 () Bool)

(assert (=> b!6459 (= b_next!521 (or (and b!6462 (= lambda!719 (x!3474 thiss!1205))) b_next!533))))

(declare-fun b_next!535 () Bool)

(assert (=> b!6459 (= b_next!523 (or (and b!6462 (= lambda!719 (y!437 thiss!1205))) b_next!535))))

(declare-fun bs!1403 () Bool)

(declare-fun b!6461 () Bool)

(assert (= bs!1403 (and b!6461 b!6463)))

(declare-fun lambda!720 () Int)

(assert (=> bs!1403 (not (= lambda!720 lambda!716))))

(assert (=> b!6461 true))

(declare-fun b_next!537 () Bool)

(assert (=> start!1078 (= b_next!525 (or (and b!6461 (= lambda!720 proof!300)) b_next!537))))

(declare-fun b_next!539 () Bool)

(assert (=> b!6459 (= b_next!527 (or (and b!6461 (= lambda!720 (evidence!84 thiss!1205))) b_next!539))))

(declare-fun e!3829 () Bool)

(assert (=> b!6457 (= e!3829 (and tp!492 tp!495))))

(declare-fun b!6458 () Bool)

(declare-fun res!1775 () Bool)

(declare-fun e!3831 () Bool)

(assert (=> b!6458 (=> (not res!1775) (not e!3831))))

(declare-datatypes () ((ProofOps!36 (ProofOps!37 (prop!125 Bool)))))

(declare-fun thiss!1201 () ProofOps!36)

(declare-datatypes () ((Parenthesis!23 (CloseParenthesis!22) (OpenParenthesis!22))))

(declare-datatypes () ((List!129 (Nil!127) (Cons!126 (head!344 Parenthesis!23) (tail!356 List!129)))))

(declare-fun xs!395 () List!129)

(declare-fun isMatchedSequential!0 (List!129) Bool)

(declare-fun isMatchedHybid!0 (List!129) Bool)

(assert (=> b!6458 (= res!1775 (= thiss!1201 (ProofOps!37 (= (isMatchedSequential!0 xs!395) (isMatchedHybid!0 xs!395)))))))

(declare-fun e!3830 () Bool)

(assert (=> b!6459 (= e!3830 (and tp!494 tp!493 tp!496))))

(declare-fun b!6460 () Bool)

(declare-fun dynLambda!89 (Int) Bool)

(assert (=> b!6460 (= e!3831 (not (dynLambda!89 proof!300)))))

(declare-fun res!1776 () Bool)

(assert (=> b!6461 (=> (not res!1776) (not e!3831))))

(assert (=> b!6461 (= res!1776 (= proof!300 lambda!720))))

(declare-fun res!1774 () Bool)

(assert (=> b!6462 (=> (not res!1774) (not e!3831))))

(assert (=> b!6462 (= res!1774 (= thiss!1217 (EqProof!21 lambda!719 lambda!719)))))

(declare-fun res!1773 () Bool)

(assert (=> b!6463 (=> (not res!1773) (not e!3831))))

(assert (=> b!6463 (= res!1773 (= thiss!1205 (EqEvidence!35 lambda!712 lambda!715 lambda!716)))))

(declare-fun res!1772 () Bool)

(assert (=> start!1078 (=> (not res!1772) (not e!3831))))

(declare-fun isEmpty!116 (List!129) Bool)

(assert (=> start!1078 (= res!1772 (not (isEmpty!116 xs!395)))))

(assert (=> start!1078 e!3831))

(assert (=> start!1078 true))

(assert (=> start!1078 tp!491))

(declare-fun inv!231 (EqProof!20) Bool)

(assert (=> start!1078 (and (inv!231 thiss!1217) e!3829)))

(declare-fun inv!232 (EqEvidence!34) Bool)

(assert (=> start!1078 (and (inv!232 thiss!1205) e!3830)))

(assert (= (and start!1078 res!1772) b!6458))

(assert (= (and b!6458 res!1775) b!6463))

(assert (= (and b!6463 res!1773) b!6462))

(assert (= (and b!6462 res!1774) b!6461))

(assert (= (and b!6461 res!1776) b!6460))

(assert (= start!1078 b!6457))

(assert (= start!1078 b!6459))

(declare-fun b_lambda!3067 () Bool)

(assert (=> (not b_lambda!3067) (not b!6460)))

(declare-fun t!1133 () Bool)

(declare-fun tb!793 () Bool)

(assert (=> (and start!1078 (= proof!300 proof!300) t!1133) tb!793))

(declare-fun result!833 () Bool)

(assert (=> tb!793 (= result!833 true)))

(assert (=> b!6460 t!1133))

(declare-fun b_and!1443 () Bool)

(assert (= b_and!1431 (and (=> t!1133 result!833) b_and!1443)))

(declare-fun t!1135 () Bool)

(declare-fun tb!795 () Bool)

(assert (=> (and b!6459 (= (evidence!84 thiss!1205) proof!300) t!1135) tb!795))

(declare-fun result!835 () Bool)

(assert (=> tb!795 (= result!835 true)))

(assert (=> b!6460 t!1135))

(declare-fun b_and!1445 () Bool)

(assert (= b_and!1441 (and (=> t!1135 result!835) b_and!1445)))

(declare-fun m!9263 () Bool)

(assert (=> b!6458 m!9263))

(declare-fun m!9265 () Bool)

(assert (=> b!6458 m!9265))

(declare-fun m!9267 () Bool)

(assert (=> b!6460 m!9267))

(declare-fun m!9269 () Bool)

(assert (=> start!1078 m!9269))

(declare-fun m!9271 () Bool)

(assert (=> start!1078 m!9271))

(declare-fun m!9273 () Bool)

(assert (=> start!1078 m!9273))

(push 1)

(assert b_and!1445)

(assert b_and!1439)

(assert b_and!1437)

(assert (not b_lambda!3067))

(assert (not start!1078))

(assert (not b!6458))

(assert b_and!1433)

(assert (not b_next!535))

(assert (not b_next!539))

(assert b_and!1435)

(assert b_and!1443)

(assert (not b_next!529))

(assert (not b_next!533))

(assert (not b_next!537))

(assert (not b_next!531))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1445)

(assert b_and!1439)

(assert b_and!1437)

(assert b_and!1433)

(assert (not b_next!535))

(assert (not b_next!539))

(assert b_and!1435)

(assert b_and!1443)

(assert (not b_next!529))

(assert (not b_next!533))

(assert (not b_next!537))

(assert (not b_next!531))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3069 () Bool)

(assert (= b_lambda!3067 (or (and b!6463 (= lambda!716 proof!300)) (and b!6461 (= lambda!720 proof!300)) (and start!1078 b_free!239) (and b!6459 b_free!249 (= (evidence!84 thiss!1205) proof!300)) b_lambda!3069)))

(declare-fun bs!1404 () Bool)

(declare-fun d!5141 () Bool)

(assert (= bs!1404 (and d!5141 b!6463)))

(declare-fun foldRight_map_commutivity!0 (List!129) Bool)

(assert (=> bs!1404 (= (dynLambda!89 lambda!716) (foldRight_map_commutivity!0 xs!395))))

(declare-fun m!9275 () Bool)

(assert (=> bs!1404 m!9275))

(assert (=> (and b!6463 (= lambda!716 proof!300) b!6460) d!5141))

(declare-fun bs!1405 () Bool)

(declare-fun d!5143 () Bool)

(assert (= bs!1405 (and d!5143 b!6461)))

(declare-fun lambda!718 () Int)

(declare-fun lambda!717 () Int)

(declare-datatypes () ((List!130 (Nil!128) (Cons!127 (head!345 Balance!45) (tail!357 List!130)))))

(declare-fun foldRight_accumulator_equivalence!2 (List!130 Balance!45 Int) Bool)

(declare-fun map!133 (List!129 Int) List!130)

(assert (=> bs!1405 (= (dynLambda!89 lambda!720) (foldRight_accumulator_equivalence!2 (map!133 xs!395 lambda!718) (Balance!46 0 0) lambda!717))))

(declare-fun m!9277 () Bool)

(assert (=> bs!1405 m!9277))

(assert (=> bs!1405 m!9277))

(declare-fun m!9279 () Bool)

(assert (=> bs!1405 m!9279))

(assert (=> (and b!6461 (= lambda!720 proof!300) b!6460) d!5143))

(push 1)

(assert b_and!1445)

(assert b_and!1439)

(assert (not b_lambda!3069))

(assert b_and!1437)

(assert (not start!1078))

(assert (not b!6458))

(assert b_and!1433)

(assert (not b_next!535))

(assert (not b_next!539))

(assert b_and!1435)

(assert b_and!1443)

(assert (not bs!1405))

(assert (not b_next!529))

(assert (not bs!1404))

(assert (not b_next!533))

(assert (not b_next!537))

(assert (not b_next!531))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1445)

(assert b_and!1439)

(assert b_and!1437)

(assert b_and!1433)

(assert (not b_next!535))

(assert (not b_next!539))

(assert b_and!1435)

(assert b_and!1443)

(assert (not b_next!529))

(assert (not b_next!533))

(assert (not b_next!537))

(assert (not b_next!531))

(check-sat)

(get-model)

(pop 1)

(declare-fun e!3834 () Bool)

(declare-fun b!6473 () Bool)

(declare-fun foldRight!19 (List!130 Balance!45 Int) Balance!45)

(declare-fun foldRight1!14 (List!130 Int) Balance!45)

(declare-fun append!47 (List!130 List!130) List!130)

(assert (=> b!6473 (= e!3834 (= (foldRight!19 (map!133 xs!395 lambda!718) (Balance!46 0 0) lambda!717) (foldRight1!14 (append!47 (map!133 xs!395 lambda!718) (Cons!127 (Balance!46 0 0) Nil!128)) lambda!717)))))

(declare-fun lt!1378 () Bool)

(assert (=> b!6473 (= lt!1378 (foldRight_accumulator_equivalence!2 (tail!357 (map!133 xs!395 lambda!718)) (Balance!46 0 0) lambda!717))))

(declare-fun d!5145 () Bool)

(assert (=> d!5145 e!3834))

(declare-fun c!2389 () Bool)

(assert (=> d!5145 (= c!2389 (is-Nil!128 (map!133 xs!395 lambda!718)))))

(assert (=> d!5145 (= (foldRight_accumulator_equivalence!2 (map!133 xs!395 lambda!718) (Balance!46 0 0) lambda!717) true)))

(declare-fun b!6472 () Bool)

(assert (=> b!6472 (= e!3834 (= (foldRight!19 (map!133 xs!395 lambda!718) (Balance!46 0 0) lambda!717) (foldRight1!14 (append!47 (map!133 xs!395 lambda!718) (Cons!127 (Balance!46 0 0) Nil!128)) lambda!717)))))

(assert (= (and d!5145 c!2389) b!6472))

(assert (= (and d!5145 (not c!2389)) b!6473))

(assert (=> b!6473 m!9277))

(declare-fun m!9281 () Bool)

(assert (=> b!6473 m!9281))

(assert (=> b!6473 m!9277))

(declare-fun m!9283 () Bool)

(assert (=> b!6473 m!9283))

(assert (=> b!6473 m!9283))

(declare-fun m!9285 () Bool)

(assert (=> b!6473 m!9285))

(declare-fun m!9287 () Bool)

(assert (=> b!6473 m!9287))

(assert (=> b!6472 m!9277))

(assert (=> b!6472 m!9281))

(assert (=> b!6472 m!9277))

(assert (=> b!6472 m!9283))

(assert (=> b!6472 m!9283))

(assert (=> b!6472 m!9285))

(assert (=> bs!1405 d!5145))

(declare-fun d!5147 () Bool)

(declare-fun c!2392 () Bool)

(assert (=> d!5147 (= c!2392 (is-Nil!127 xs!395))))

(declare-fun e!3837 () List!130)

(assert (=> d!5147 (= (map!133 xs!395 lambda!718) e!3837)))

(declare-fun b!6478 () Bool)

(assert (=> b!6478 (= e!3837 Nil!128)))

(declare-fun b!6479 () Bool)

(declare-fun dynLambda!90 (Int Parenthesis!23) Balance!45)

(assert (=> b!6479 (= e!3837 (Cons!127 (dynLambda!90 lambda!718 (head!344 xs!395)) (map!133 (tail!356 xs!395) lambda!718)))))

(assert (= (and d!5147 c!2392) b!6478))

(assert (= (and d!5147 (not c!2392)) b!6479))

(declare-fun b_lambda!3071 () Bool)

(assert (=> (not b_lambda!3071) (not b!6479)))

(declare-fun m!9289 () Bool)

(assert (=> b!6479 m!9289))

(declare-fun m!9291 () Bool)

(assert (=> b!6479 m!9291))

(assert (=> bs!1405 d!5147))

(declare-fun bs!1406 () Bool)

(declare-fun b!6484 () Bool)

(assert (= bs!1406 (and b!6484 b!6463)))

(declare-fun lambda!733 () Int)

(assert (=> bs!1406 (not (= lambda!733 lambda!713))))

(assert (=> bs!1406 (= lambda!733 lambda!714)))

(declare-fun bs!1407 () Bool)

(assert (= bs!1407 (and b!6484 b!6462)))

(declare-fun lambda!734 () Int)

(assert (=> bs!1407 (= lambda!734 lambda!718)))

(declare-fun lambda!735 () Int)

(assert (=> bs!1407 (= lambda!735 lambda!717)))

(declare-fun bs!1408 () Bool)

(declare-fun b!6485 () Bool)

(assert (= bs!1408 (and b!6485 b!6463)))

(declare-fun lambda!736 () Int)

(assert (=> bs!1408 (not (= lambda!736 lambda!713))))

(assert (=> bs!1408 (= lambda!736 lambda!714)))

(declare-fun bs!1409 () Bool)

(assert (= bs!1409 (and b!6485 b!6484)))

(assert (=> bs!1409 (= lambda!736 lambda!733)))

(declare-fun bs!1410 () Bool)

(assert (= bs!1410 (and b!6485 b!6462)))

(declare-fun lambda!737 () Int)

(assert (=> bs!1410 (= lambda!737 lambda!718)))

(assert (=> bs!1409 (= lambda!737 lambda!734)))

(declare-fun lambda!738 () Int)

(assert (=> bs!1410 (= lambda!738 lambda!717)))

(assert (=> bs!1409 (= lambda!738 lambda!735)))

(declare-fun e!3840 () Bool)

(declare-fun foldRight!20 (List!129 Balance!45 Int) Balance!45)

(assert (=> b!6485 (= e!3840 (= (foldRight!20 xs!395 (Balance!46 0 0) lambda!736) (foldRight!19 (map!133 xs!395 lambda!737) (Balance!46 0 0) lambda!738)))))

(declare-fun lt!1381 () Bool)

(assert (=> b!6485 (= lt!1381 (foldRight_map_commutivity!0 (tail!356 xs!395)))))

(declare-fun d!5149 () Bool)

(assert (=> d!5149 e!3840))

(declare-fun c!2395 () Bool)

(assert (=> d!5149 (= c!2395 (is-Nil!127 xs!395))))

(assert (=> d!5149 (= (foldRight_map_commutivity!0 xs!395) true)))

(assert (=> b!6484 (= e!3840 (= (foldRight!20 xs!395 (Balance!46 0 0) lambda!733) (foldRight!19 (map!133 xs!395 lambda!734) (Balance!46 0 0) lambda!735)))))

(assert (= (and d!5149 c!2395) b!6484))

(assert (= (and d!5149 (not c!2395)) b!6485))

(declare-fun m!9293 () Bool)

(assert (=> b!6485 m!9293))

(declare-fun m!9295 () Bool)

(assert (=> b!6485 m!9295))

(assert (=> b!6485 m!9295))

(declare-fun m!9297 () Bool)

(assert (=> b!6485 m!9297))

(declare-fun m!9299 () Bool)

(assert (=> b!6485 m!9299))

(declare-fun m!9301 () Bool)

(assert (=> b!6484 m!9301))

(declare-fun m!9303 () Bool)

(assert (=> b!6484 m!9303))

(assert (=> b!6484 m!9303))

(declare-fun m!9305 () Bool)

(assert (=> b!6484 m!9305))

(assert (=> bs!1404 d!5149))

(declare-fun bs!1411 () Bool)

(declare-fun d!5151 () Bool)

(assert (= bs!1411 (and d!5151 b!6463)))

(declare-fun lambda!741 () Int)

(assert (=> bs!1411 (= lambda!741 lambda!713)))

(assert (=> bs!1411 (not (= lambda!741 lambda!714))))

(declare-fun bs!1412 () Bool)

(assert (= bs!1412 (and d!5151 b!6484)))

(assert (=> bs!1412 (not (= lambda!741 lambda!733))))

(declare-fun bs!1413 () Bool)

(assert (= bs!1413 (and d!5151 b!6485)))

(assert (=> bs!1413 (not (= lambda!741 lambda!736))))

(declare-fun isBalanced!0 (Balance!45) Bool)

(assert (=> d!5151 (= (isMatchedSequential!0 xs!395) (isBalanced!0 (foldRight!20 xs!395 (Balance!46 0 0) lambda!741)))))

(declare-fun bs!1414 () Bool)

(assert (= bs!1414 d!5151))

(declare-fun m!9307 () Bool)

(assert (=> bs!1414 m!9307))

(assert (=> bs!1414 m!9307))

(declare-fun m!9309 () Bool)

(assert (=> bs!1414 m!9309))

(assert (=> b!6458 d!5151))

(declare-fun bs!1415 () Bool)

(declare-fun d!5153 () Bool)

(assert (= bs!1415 (and d!5153 b!6462)))

(declare-fun lambda!746 () Int)

(assert (=> bs!1415 (= lambda!746 lambda!718)))

(declare-fun bs!1416 () Bool)

(assert (= bs!1416 (and d!5153 b!6484)))

(assert (=> bs!1416 (= lambda!746 lambda!734)))

(declare-fun bs!1417 () Bool)

(assert (= bs!1417 (and d!5153 b!6485)))

(assert (=> bs!1417 (= lambda!746 lambda!737)))

(declare-fun lambda!747 () Int)

(assert (=> bs!1415 (= lambda!747 lambda!717)))

(assert (=> bs!1416 (= lambda!747 lambda!735)))

(assert (=> bs!1417 (= lambda!747 lambda!738)))

(assert (=> d!5153 (= (isMatchedHybid!0 xs!395) (isBalanced!0 (foldRight1!14 (map!133 xs!395 lambda!746) lambda!747)))))

(declare-fun bs!1418 () Bool)

(assert (= bs!1418 d!5153))

(declare-fun m!9311 () Bool)

(assert (=> bs!1418 m!9311))

(assert (=> bs!1418 m!9311))

(declare-fun m!9313 () Bool)

(assert (=> bs!1418 m!9313))

(assert (=> bs!1418 m!9313))

(declare-fun m!9315 () Bool)

(assert (=> bs!1418 m!9315))

(assert (=> b!6458 d!5153))

(declare-fun d!5155 () Bool)

(assert (=> d!5155 (= (isEmpty!116 xs!395) (is-Nil!127 xs!395))))

(assert (=> start!1078 d!5155))

(declare-fun d!5157 () Bool)

(declare-fun dynLambda!91 (Int) Balance!45)

(assert (=> d!5157 (= (inv!231 thiss!1217) (= (dynLambda!91 (x!3473 thiss!1217)) (dynLambda!91 (y!436 thiss!1217))))))

(declare-fun b_lambda!3073 () Bool)

(assert (=> (not b_lambda!3073) (not d!5157)))

(declare-fun t!1137 () Bool)

(declare-fun tb!797 () Bool)

(assert (=> (and b!6457 (= (x!3473 thiss!1217) (x!3473 thiss!1217)) t!1137) tb!797))

(declare-fun result!837 () Bool)

(assert (=> tb!797 (= result!837 true)))

(assert (=> d!5157 t!1137))

(declare-fun b_and!1447 () Bool)

(assert (= b_and!1433 (and (=> t!1137 result!837) b_and!1447)))

(declare-fun t!1139 () Bool)

(declare-fun tb!799 () Bool)

(assert (=> (and b!6457 (= (y!436 thiss!1217) (x!3473 thiss!1217)) t!1139) tb!799))

(declare-fun result!839 () Bool)

(assert (=> tb!799 (= result!839 true)))

(assert (=> d!5157 t!1139))

(declare-fun b_and!1449 () Bool)

(assert (= b_and!1435 (and (=> t!1139 result!839) b_and!1449)))

(declare-fun t!1141 () Bool)

(declare-fun tb!801 () Bool)

(assert (=> (and b!6459 (= (x!3474 thiss!1205) (x!3473 thiss!1217)) t!1141) tb!801))

(declare-fun result!841 () Bool)

(assert (=> tb!801 (= result!841 true)))

(assert (=> d!5157 t!1141))

(declare-fun b_and!1451 () Bool)

(assert (= b_and!1437 (and (=> t!1141 result!841) b_and!1451)))

(declare-fun t!1143 () Bool)

(declare-fun tb!803 () Bool)

(assert (=> (and b!6459 (= (y!437 thiss!1205) (x!3473 thiss!1217)) t!1143) tb!803))

(declare-fun result!843 () Bool)

(assert (=> tb!803 (= result!843 true)))

(assert (=> d!5157 t!1143))

(declare-fun b_and!1453 () Bool)

(assert (= b_and!1439 (and (=> t!1143 result!843) b_and!1453)))

(declare-fun b_lambda!3075 () Bool)

(assert (=> (not b_lambda!3075) (not d!5157)))

(declare-fun t!1145 () Bool)

(declare-fun tb!805 () Bool)

(assert (=> (and b!6457 (= (x!3473 thiss!1217) (y!436 thiss!1217)) t!1145) tb!805))

(declare-fun result!845 () Bool)

(assert (=> tb!805 (= result!845 true)))

(assert (=> d!5157 t!1145))

(declare-fun b_and!1455 () Bool)

(assert (= b_and!1447 (and (=> t!1145 result!845) b_and!1455)))

(declare-fun t!1147 () Bool)

(declare-fun tb!807 () Bool)

(assert (=> (and b!6457 (= (y!436 thiss!1217) (y!436 thiss!1217)) t!1147) tb!807))

(declare-fun result!847 () Bool)

(assert (=> tb!807 (= result!847 true)))

(assert (=> d!5157 t!1147))

(declare-fun b_and!1457 () Bool)

(assert (= b_and!1449 (and (=> t!1147 result!847) b_and!1457)))

(declare-fun t!1149 () Bool)

(declare-fun tb!809 () Bool)

(assert (=> (and b!6459 (= (x!3474 thiss!1205) (y!436 thiss!1217)) t!1149) tb!809))

(declare-fun result!849 () Bool)

(assert (=> tb!809 (= result!849 true)))

(assert (=> d!5157 t!1149))

(declare-fun b_and!1459 () Bool)

(assert (= b_and!1451 (and (=> t!1149 result!849) b_and!1459)))

(declare-fun t!1151 () Bool)

(declare-fun tb!811 () Bool)

(assert (=> (and b!6459 (= (y!437 thiss!1205) (y!436 thiss!1217)) t!1151) tb!811))

(declare-fun result!851 () Bool)

(assert (=> tb!811 (= result!851 true)))

(assert (=> d!5157 t!1151))

(declare-fun b_and!1461 () Bool)

(assert (= b_and!1453 (and (=> t!1151 result!851) b_and!1461)))

(declare-fun m!9317 () Bool)

(assert (=> d!5157 m!9317))

(declare-fun m!9319 () Bool)

(assert (=> d!5157 m!9319))

(assert (=> start!1078 d!5157))

(declare-fun d!5159 () Bool)

(declare-fun res!1779 () Bool)

(declare-fun e!3843 () Bool)

(assert (=> d!5159 (=> (not res!1779) (not e!3843))))

(assert (=> d!5159 (= res!1779 (= (dynLambda!91 (x!3474 thiss!1205)) (dynLambda!91 (y!437 thiss!1205))))))

(assert (=> d!5159 (= (inv!232 thiss!1205) e!3843)))

(declare-fun b!6488 () Bool)

(assert (=> b!6488 (= e!3843 (dynLambda!89 (evidence!84 thiss!1205)))))

(assert (= (and d!5159 res!1779) b!6488))

(declare-fun b_lambda!3077 () Bool)

(assert (=> (not b_lambda!3077) (not d!5159)))

(declare-fun tb!813 () Bool)

(declare-fun t!1153 () Bool)

(assert (=> (and b!6457 (= (x!3473 thiss!1217) (x!3474 thiss!1205)) t!1153) tb!813))

(declare-fun result!853 () Bool)

(assert (=> tb!813 (= result!853 true)))

(assert (=> d!5159 t!1153))

(declare-fun b_and!1463 () Bool)

(assert (= b_and!1455 (and (=> t!1153 result!853) b_and!1463)))

(declare-fun t!1155 () Bool)

(declare-fun tb!815 () Bool)

(assert (=> (and b!6457 (= (y!436 thiss!1217) (x!3474 thiss!1205)) t!1155) tb!815))

(declare-fun result!855 () Bool)

(assert (=> tb!815 (= result!855 true)))

(assert (=> d!5159 t!1155))

(declare-fun b_and!1465 () Bool)

(assert (= b_and!1457 (and (=> t!1155 result!855) b_and!1465)))

(declare-fun t!1157 () Bool)

(declare-fun tb!817 () Bool)

(assert (=> (and b!6459 (= (x!3474 thiss!1205) (x!3474 thiss!1205)) t!1157) tb!817))

(declare-fun result!857 () Bool)

(assert (=> tb!817 (= result!857 true)))

(assert (=> d!5159 t!1157))

(declare-fun b_and!1467 () Bool)

(assert (= b_and!1459 (and (=> t!1157 result!857) b_and!1467)))

(declare-fun t!1159 () Bool)

(declare-fun tb!819 () Bool)

(assert (=> (and b!6459 (= (y!437 thiss!1205) (x!3474 thiss!1205)) t!1159) tb!819))

(declare-fun result!859 () Bool)

(assert (=> tb!819 (= result!859 true)))

(assert (=> d!5159 t!1159))

(declare-fun b_and!1469 () Bool)

(assert (= b_and!1461 (and (=> t!1159 result!859) b_and!1469)))

(declare-fun b_lambda!3079 () Bool)

(assert (=> (not b_lambda!3079) (not d!5159)))

(declare-fun t!1161 () Bool)

(declare-fun tb!821 () Bool)

(assert (=> (and b!6457 (= (x!3473 thiss!1217) (y!437 thiss!1205)) t!1161) tb!821))

(declare-fun result!861 () Bool)

(assert (=> tb!821 (= result!861 true)))

(assert (=> d!5159 t!1161))

(declare-fun b_and!1471 () Bool)

(assert (= b_and!1463 (and (=> t!1161 result!861) b_and!1471)))

(declare-fun t!1163 () Bool)

(declare-fun tb!823 () Bool)

(assert (=> (and b!6457 (= (y!436 thiss!1217) (y!437 thiss!1205)) t!1163) tb!823))

(declare-fun result!863 () Bool)

(assert (=> tb!823 (= result!863 true)))

(assert (=> d!5159 t!1163))

(declare-fun b_and!1473 () Bool)

(assert (= b_and!1465 (and (=> t!1163 result!863) b_and!1473)))

(declare-fun t!1165 () Bool)

(declare-fun tb!825 () Bool)

(assert (=> (and b!6459 (= (x!3474 thiss!1205) (y!437 thiss!1205)) t!1165) tb!825))

(declare-fun result!865 () Bool)

(assert (=> tb!825 (= result!865 true)))

(assert (=> d!5159 t!1165))

(declare-fun b_and!1475 () Bool)

(assert (= b_and!1467 (and (=> t!1165 result!865) b_and!1475)))

(declare-fun t!1167 () Bool)

(declare-fun tb!827 () Bool)

(assert (=> (and b!6459 (= (y!437 thiss!1205) (y!437 thiss!1205)) t!1167) tb!827))

(declare-fun result!867 () Bool)

(assert (=> tb!827 (= result!867 true)))

(assert (=> d!5159 t!1167))

(declare-fun b_and!1477 () Bool)

(assert (= b_and!1469 (and (=> t!1167 result!867) b_and!1477)))

(declare-fun b_lambda!3081 () Bool)

(assert (=> (not b_lambda!3081) (not b!6488)))

(declare-fun t!1169 () Bool)

(declare-fun tb!829 () Bool)

(assert (=> (and start!1078 (= proof!300 (evidence!84 thiss!1205)) t!1169) tb!829))

(declare-fun result!869 () Bool)

(assert (=> tb!829 (= result!869 true)))

(assert (=> b!6488 t!1169))

(declare-fun b_and!1479 () Bool)

(assert (= b_and!1443 (and (=> t!1169 result!869) b_and!1479)))

(declare-fun t!1171 () Bool)

(declare-fun tb!831 () Bool)

(assert (=> (and b!6459 (= (evidence!84 thiss!1205) (evidence!84 thiss!1205)) t!1171) tb!831))

(declare-fun result!871 () Bool)

(assert (=> tb!831 (= result!871 true)))

(assert (=> b!6488 t!1171))

(declare-fun b_and!1481 () Bool)

(assert (= b_and!1445 (and (=> t!1171 result!871) b_and!1481)))

(declare-fun m!9321 () Bool)

(assert (=> d!5159 m!9321))

(declare-fun m!9323 () Bool)

(assert (=> d!5159 m!9323))

(declare-fun m!9325 () Bool)

(assert (=> b!6488 m!9325))

(assert (=> start!1078 d!5159))

(declare-fun b_lambda!3083 () Bool)

(assert (= b_lambda!3073 (or (and b!6462 (= lambda!719 (x!3473 thiss!1217))) (and b!6459 b_free!245 (= (x!3474 thiss!1205) (x!3473 thiss!1217))) (and b!6459 b_free!247 (= (y!437 thiss!1205) (x!3473 thiss!1217))) (and b!6457 b_free!243 (= (y!436 thiss!1217) (x!3473 thiss!1217))) (and b!6463 (= lambda!715 (x!3473 thiss!1217))) (and b!6463 (= lambda!712 (x!3473 thiss!1217))) (and b!6457 b_free!241) b_lambda!3083)))

(declare-fun bs!1419 () Bool)

(declare-fun d!5161 () Bool)

(assert (= bs!1419 (and d!5161 b!6463)))

(assert (=> bs!1419 (= (dynLambda!91 lambda!715) (foldRight!20 xs!395 (Balance!46 0 0) lambda!714))))

(declare-fun m!9327 () Bool)

(assert (=> bs!1419 m!9327))

(assert (=> (and b!6463 (= lambda!715 (x!3473 thiss!1217)) d!5157) d!5161))

(declare-fun bs!1420 () Bool)

(declare-fun d!5163 () Bool)

(assert (= bs!1420 (and d!5163 b!6462)))

(assert (=> bs!1420 (= (dynLambda!91 lambda!719) (foldRight!19 (map!133 xs!395 lambda!718) (Balance!46 0 0) lambda!717))))

(assert (=> bs!1420 m!9277))

(assert (=> bs!1420 m!9277))

(assert (=> bs!1420 m!9281))

(assert (=> (and b!6462 (= lambda!719 (x!3473 thiss!1217)) d!5157) d!5163))

(declare-fun bs!1421 () Bool)

(declare-fun d!5165 () Bool)

(assert (= bs!1421 (and d!5165 b!6463)))

(assert (=> bs!1421 (= (dynLambda!91 lambda!712) (foldRight!20 xs!395 (Balance!46 0 0) lambda!713))))

(declare-fun m!9329 () Bool)

(assert (=> bs!1421 m!9329))

(assert (=> (and b!6463 (= lambda!712 (x!3473 thiss!1217)) d!5157) d!5165))

(declare-fun b_lambda!3085 () Bool)

(assert (= b_lambda!3077 (or (and b!6457 b_free!243 (= (y!436 thiss!1217) (x!3474 thiss!1205))) (and b!6459 b_free!247 (= (y!437 thiss!1205) (x!3474 thiss!1205))) (and b!6463 (= lambda!715 (x!3474 thiss!1205))) (and b!6459 b_free!245) (and b!6463 (= lambda!712 (x!3474 thiss!1205))) (and b!6462 (= lambda!719 (x!3474 thiss!1205))) (and b!6457 b_free!241 (= (x!3473 thiss!1217) (x!3474 thiss!1205))) b_lambda!3085)))

(declare-fun bs!1422 () Bool)

(declare-fun d!5167 () Bool)

(assert (= bs!1422 (and d!5167 b!6462)))

(assert (=> bs!1422 (= (dynLambda!91 lambda!719) (foldRight!19 (map!133 xs!395 lambda!718) (Balance!46 0 0) lambda!717))))

(assert (=> bs!1422 m!9277))

(assert (=> bs!1422 m!9277))

(assert (=> bs!1422 m!9281))

(assert (=> (and b!6462 (= lambda!719 (x!3474 thiss!1205)) d!5159) d!5167))

(declare-fun bs!1423 () Bool)

(declare-fun d!5169 () Bool)

(assert (= bs!1423 (and d!5169 b!6463)))

(assert (=> bs!1423 (= (dynLambda!91 lambda!712) (foldRight!20 xs!395 (Balance!46 0 0) lambda!713))))

(assert (=> bs!1423 m!9329))

(assert (=> (and b!6463 (= lambda!712 (x!3474 thiss!1205)) d!5159) d!5169))

(declare-fun bs!1424 () Bool)

(declare-fun d!5171 () Bool)

(assert (= bs!1424 (and d!5171 b!6463)))

(assert (=> bs!1424 (= (dynLambda!91 lambda!715) (foldRight!20 xs!395 (Balance!46 0 0) lambda!714))))

(assert (=> bs!1424 m!9327))

(assert (=> (and b!6463 (= lambda!715 (x!3474 thiss!1205)) d!5159) d!5171))

(declare-fun b_lambda!3087 () Bool)

(assert (= b_lambda!3075 (or (and b!6462 (= lambda!719 (y!436 thiss!1217))) (and b!6459 b_free!245 (= (x!3474 thiss!1205) (y!436 thiss!1217))) (and b!6459 b_free!247 (= (y!437 thiss!1205) (y!436 thiss!1217))) (and b!6457 b_free!243) (and b!6457 b_free!241 (= (x!3473 thiss!1217) (y!436 thiss!1217))) (and b!6463 (= lambda!715 (y!436 thiss!1217))) (and b!6463 (= lambda!712 (y!436 thiss!1217))) b_lambda!3087)))

(declare-fun bs!1425 () Bool)

(declare-fun d!5173 () Bool)

(assert (= bs!1425 (and d!5173 b!6463)))

(assert (=> bs!1425 (= (dynLambda!91 lambda!712) (foldRight!20 xs!395 (Balance!46 0 0) lambda!713))))

(assert (=> bs!1425 m!9329))

(assert (=> (and b!6463 (= lambda!712 (y!436 thiss!1217)) d!5157) d!5173))

(declare-fun bs!1426 () Bool)

(declare-fun d!5175 () Bool)

(assert (= bs!1426 (and d!5175 b!6462)))

(assert (=> bs!1426 (= (dynLambda!91 lambda!719) (foldRight!19 (map!133 xs!395 lambda!718) (Balance!46 0 0) lambda!717))))

(assert (=> bs!1426 m!9277))

(assert (=> bs!1426 m!9277))

(assert (=> bs!1426 m!9281))

(assert (=> (and b!6462 (= lambda!719 (y!436 thiss!1217)) d!5157) d!5175))

(declare-fun bs!1427 () Bool)

(declare-fun d!5177 () Bool)

(assert (= bs!1427 (and d!5177 b!6463)))

(assert (=> bs!1427 (= (dynLambda!91 lambda!715) (foldRight!20 xs!395 (Balance!46 0 0) lambda!714))))

(assert (=> bs!1427 m!9327))

(assert (=> (and b!6463 (= lambda!715 (y!436 thiss!1217)) d!5157) d!5177))

(declare-fun b_lambda!3089 () Bool)

(assert (= b_lambda!3079 (or (and b!6457 b_free!241 (= (x!3473 thiss!1217) (y!437 thiss!1205))) (and b!6463 (= lambda!712 (y!437 thiss!1205))) (and b!6459 b_free!245 (= (x!3474 thiss!1205) (y!437 thiss!1205))) (and b!6463 (= lambda!715 (y!437 thiss!1205))) (and b!6462 (= lambda!719 (y!437 thiss!1205))) (and b!6459 b_free!247) (and b!6457 b_free!243 (= (y!436 thiss!1217) (y!437 thiss!1205))) b_lambda!3089)))

(declare-fun bs!1428 () Bool)

(declare-fun d!5179 () Bool)

(assert (= bs!1428 (and d!5179 b!6463)))

(assert (=> bs!1428 (= (dynLambda!91 lambda!712) (foldRight!20 xs!395 (Balance!46 0 0) lambda!713))))

(assert (=> bs!1428 m!9329))

(assert (=> (and b!6463 (= lambda!712 (y!437 thiss!1205)) d!5159) d!5179))

(declare-fun bs!1429 () Bool)

(declare-fun d!5181 () Bool)

(assert (= bs!1429 (and d!5181 b!6463)))

(assert (=> bs!1429 (= (dynLambda!91 lambda!715) (foldRight!20 xs!395 (Balance!46 0 0) lambda!714))))

(assert (=> bs!1429 m!9327))

(assert (=> (and b!6463 (= lambda!715 (y!437 thiss!1205)) d!5159) d!5181))

(declare-fun bs!1430 () Bool)

(declare-fun d!5183 () Bool)

(assert (= bs!1430 (and d!5183 b!6462)))

(assert (=> bs!1430 (= (dynLambda!91 lambda!719) (foldRight!19 (map!133 xs!395 lambda!718) (Balance!46 0 0) lambda!717))))

(assert (=> bs!1430 m!9277))

(assert (=> bs!1430 m!9277))

(assert (=> bs!1430 m!9281))

(assert (=> (and b!6462 (= lambda!719 (y!437 thiss!1205)) d!5159) d!5183))

(declare-fun b_lambda!3091 () Bool)

(assert (= b_lambda!3071 (or b!6462 b_lambda!3091)))

(declare-fun bs!1431 () Bool)

(declare-fun d!5185 () Bool)

(assert (= bs!1431 (and d!5185 b!6462)))

(declare-fun fromParenthesis!0 (Parenthesis!23) Balance!45)

(assert (=> bs!1431 (= (dynLambda!90 lambda!718 (head!344 xs!395)) (fromParenthesis!0 (head!344 xs!395)))))

(declare-fun m!9331 () Bool)

(assert (=> bs!1431 m!9331))

(assert (=> b!6479 d!5185))

(declare-fun b_lambda!3093 () Bool)

(assert (= b_lambda!3081 (or (and b!6463 (= lambda!716 (evidence!84 thiss!1205))) (and b!6461 (= lambda!720 (evidence!84 thiss!1205))) (and start!1078 b_free!239 (= proof!300 (evidence!84 thiss!1205))) (and b!6459 b_free!249) b_lambda!3093)))

(declare-fun bs!1432 () Bool)

(declare-fun d!5187 () Bool)

(assert (= bs!1432 (and d!5187 b!6463)))

(assert (=> bs!1432 (= (dynLambda!89 lambda!716) (foldRight_map_commutivity!0 xs!395))))

(assert (=> bs!1432 m!9275))

(assert (=> (and b!6463 (= lambda!716 (evidence!84 thiss!1205)) b!6488) d!5187))

(declare-fun bs!1433 () Bool)

(declare-fun d!5189 () Bool)

(assert (= bs!1433 (and d!5189 b!6461)))

(assert (=> bs!1433 (= (dynLambda!89 lambda!720) (foldRight_accumulator_equivalence!2 (map!133 xs!395 lambda!718) (Balance!46 0 0) lambda!717))))

(assert (=> bs!1433 m!9277))

(assert (=> bs!1433 m!9277))

(assert (=> bs!1433 m!9279))

(assert (=> (and b!6461 (= lambda!720 (evidence!84 thiss!1205)) b!6488) d!5189))

(push 1)

(assert b_and!1475)

(assert (not bs!1433))

(assert (not bs!1422))

(assert b_and!1473)

(assert b_and!1471)

(assert (not b_lambda!3069))

(assert (not bs!1424))

(assert (not bs!1428))

(assert b_and!1477)

(assert (not b!6472))

(assert (not bs!1421))

(assert (not bs!1429))

(assert (not bs!1427))

(assert (not b_lambda!3091))

(assert (not b_next!535))

(assert (not bs!1419))

(assert (not b_lambda!3089))

(assert b_and!1481)

(assert (not b_next!539))

(assert (not b!6485))

(assert (not bs!1425))

(assert (not b_lambda!3087))

(assert (not b!6479))

(assert (not d!5151))

(assert (not b_lambda!3085))

(assert (not b!6484))

(assert (not d!5153))

(assert (not bs!1430))

(assert (not b_lambda!3083))

(assert (not b_next!529))

(assert (not bs!1432))

(assert (not bs!1420))

(assert (not bs!1431))

(assert (not bs!1426))

(assert (not b_next!533))

(assert (not bs!1423))

(assert (not b!6473))

(assert (not b_next!537))

(assert (not b_lambda!3093))

(assert (not b_next!531))

(assert b_and!1479)

(check-sat)

(pop 1)

(push 1)

(assert b_and!1475)

(assert b_and!1473)

(assert b_and!1471)

(assert b_and!1477)

(assert (not b_next!535))

(assert b_and!1481)

(assert (not b_next!539))

(assert (not b_next!529))

(assert (not b_next!533))

(assert (not b_next!537))

(assert (not b_next!531))

(assert b_and!1479)

(check-sat)

(pop 1)

