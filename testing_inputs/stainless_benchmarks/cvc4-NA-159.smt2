; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1042 () Bool)

(assert start!1042)

(declare-fun b_free!191 () Bool)

(declare-fun b_next!401 () Bool)

(assert (=> start!1042 (= b_free!191 (not b_next!401))))

(declare-fun tp!419 () Bool)

(declare-fun b_and!1283 () Bool)

(assert (=> start!1042 (= tp!419 b_and!1283)))

(declare-fun b!6358 () Bool)

(declare-fun b_free!193 () Bool)

(declare-fun b_next!403 () Bool)

(assert (=> b!6358 (= b_free!193 (not b_next!403))))

(declare-fun tp!423 () Bool)

(declare-fun b_and!1285 () Bool)

(assert (=> b!6358 (= tp!423 b_and!1285)))

(declare-fun b_free!195 () Bool)

(declare-fun b_next!405 () Bool)

(assert (=> b!6358 (= b_free!195 (not b_next!405))))

(declare-fun tp!421 () Bool)

(declare-fun b_and!1287 () Bool)

(assert (=> b!6358 (= tp!421 b_and!1287)))

(declare-fun b!6353 () Bool)

(declare-fun b_free!197 () Bool)

(declare-fun b_next!407 () Bool)

(assert (=> b!6353 (= b_free!197 (not b_next!407))))

(declare-fun tp!424 () Bool)

(declare-fun b_and!1289 () Bool)

(assert (=> b!6353 (= tp!424 b_and!1289)))

(declare-fun b_free!199 () Bool)

(declare-fun b_next!409 () Bool)

(assert (=> b!6353 (= b_free!199 (not b_next!409))))

(declare-fun tp!420 () Bool)

(declare-fun b_and!1291 () Bool)

(assert (=> b!6353 (= tp!420 b_and!1291)))

(declare-fun b_free!201 () Bool)

(declare-fun b_next!411 () Bool)

(assert (=> b!6353 (= b_free!201 (not b_next!411))))

(declare-fun tp!422 () Bool)

(declare-fun b_and!1293 () Bool)

(assert (=> b!6353 (= tp!422 b_and!1293)))

(declare-fun b!6354 () Bool)

(assert (=> b!6354 true))

(declare-fun b_next!413 () Bool)

(declare-fun lambda!574 () Int)

(declare-datatypes () ((Balance!37 (Balance!38 (extraOpen!59 Int) (extraClose!59 Int)))))

(declare-datatypes () ((EqProof!18 (EqProof!19 (x!3369 Int) (y!431 Int)))))

(declare-fun thiss!1212 () EqProof!18)

(assert (=> b!6358 (= b_next!403 (or (and b!6354 (= lambda!574 (x!3369 thiss!1212))) b_next!413))))

(declare-fun b_next!415 () Bool)

(assert (=> b!6358 (= b_next!405 (or (and b!6354 (= lambda!574 (y!431 thiss!1212))) b_next!415))))

(declare-fun b_next!417 () Bool)

(declare-datatypes () ((EqEvidence!26 (EqEvidence!27 (x!3370 Int) (y!432 Int) (evidence!80 Int)))))

(declare-fun thiss!1206 () EqEvidence!26)

(assert (=> b!6353 (= b_next!407 (or (and b!6354 (= lambda!574 (x!3370 thiss!1206))) b_next!417))))

(declare-fun b_next!419 () Bool)

(assert (=> b!6353 (= b_next!409 (or (and b!6354 (= lambda!574 (y!432 thiss!1206))) b_next!419))))

(assert (=> b!6354 true))

(declare-fun lambda!576 () Int)

(declare-fun proof!299 () Int)

(declare-fun b_next!421 () Bool)

(assert (=> start!1042 (= b_next!401 (or (and b!6354 (= lambda!576 proof!299)) b_next!421))))

(declare-fun b_next!423 () Bool)

(assert (=> b!6353 (= b_next!411 (or (and b!6354 (= lambda!576 (evidence!80 thiss!1206))) b_next!423))))

(declare-fun bs!1321 () Bool)

(declare-fun b!6357 () Bool)

(assert (= bs!1321 (and b!6357 b!6354)))

(declare-fun lambda!577 () Int)

(declare-fun lambda!575 () Int)

(assert (=> bs!1321 (not (= lambda!577 lambda!575))))

(declare-fun lambda!578 () Int)

(assert (=> bs!1321 (= (= lambda!577 lambda!575) (= lambda!578 lambda!574))))

(assert (=> b!6357 true))

(declare-fun b_next!425 () Bool)

(assert (=> b!6358 (= b_next!413 (or (and b!6357 (= lambda!578 (x!3369 thiss!1212))) b_next!425))))

(declare-fun b_next!427 () Bool)

(assert (=> b!6358 (= b_next!415 (or (and b!6357 (= lambda!578 (y!431 thiss!1212))) b_next!427))))

(declare-fun b_next!429 () Bool)

(assert (=> b!6353 (= b_next!417 (or (and b!6357 (= lambda!578 (x!3370 thiss!1206))) b_next!429))))

(declare-fun b_next!431 () Bool)

(assert (=> b!6353 (= b_next!419 (or (and b!6357 (= lambda!578 (y!432 thiss!1206))) b_next!431))))

(declare-fun bs!1322 () Bool)

(declare-fun b!6359 () Bool)

(assert (= bs!1322 (and b!6359 b!6354)))

(declare-fun lambda!579 () Int)

(assert (=> bs!1322 (not (= lambda!579 lambda!576))))

(assert (=> b!6359 true))

(declare-fun b_next!433 () Bool)

(assert (=> start!1042 (= b_next!421 (or (and b!6359 (= lambda!579 proof!299)) b_next!433))))

(declare-fun b_next!435 () Bool)

(assert (=> b!6353 (= b_next!423 (or (and b!6359 (= lambda!579 (evidence!80 thiss!1206))) b_next!435))))

(declare-fun e!3777 () Bool)

(assert (=> b!6353 (= e!3777 (and tp!424 tp!420 tp!422))))

(declare-fun res!1735 () Bool)

(declare-fun e!3778 () Bool)

(assert (=> start!1042 (=> (not res!1735) (not e!3778))))

(declare-datatypes () ((Parenthesis!21 (CloseParenthesis!20) (OpenParenthesis!20))))

(declare-datatypes () ((List!125 (Nil!123) (Cons!122 (head!340 Parenthesis!21) (tail!352 List!125)))))

(declare-fun xs!395 () List!125)

(declare-fun isEmpty!114 (List!125) Bool)

(assert (=> start!1042 (= res!1735 (not (isEmpty!114 xs!395)))))

(assert (=> start!1042 e!3778))

(assert (=> start!1042 true))

(assert (=> start!1042 tp!419))

(declare-fun e!3776 () Bool)

(declare-fun inv!226 (EqProof!18) Bool)

(assert (=> start!1042 (and (inv!226 thiss!1212) e!3776)))

(declare-fun inv!227 (EqEvidence!26) Bool)

(assert (=> start!1042 (and (inv!227 thiss!1206) e!3777)))

(declare-fun res!1736 () Bool)

(assert (=> b!6354 (=> (not res!1736) (not e!3778))))

(assert (=> b!6354 (= res!1736 (= thiss!1206 (EqEvidence!27 lambda!574 lambda!574 lambda!576)))))

(declare-fun b!6355 () Bool)

(declare-fun res!1739 () Bool)

(assert (=> b!6355 (=> (not res!1739) (not e!3778))))

(declare-datatypes () ((ProofOps!32 (ProofOps!33 (prop!123 Bool)))))

(declare-fun thiss!1201 () ProofOps!32)

(declare-fun isMatchedSequential!0 (List!125) Bool)

(declare-fun isMatchedHybid!0 (List!125) Bool)

(assert (=> b!6355 (= res!1739 (= thiss!1201 (ProofOps!33 (= (isMatchedSequential!0 xs!395) (isMatchedHybid!0 xs!395)))))))

(declare-fun b!6356 () Bool)

(declare-fun dynLambda!84 (Int) Bool)

(assert (=> b!6356 (= e!3778 (not (dynLambda!84 proof!299)))))

(declare-fun res!1738 () Bool)

(assert (=> b!6357 (=> (not res!1738) (not e!3778))))

(assert (=> b!6357 (= res!1738 (= thiss!1212 (EqProof!19 lambda!578 lambda!578)))))

(assert (=> b!6358 (= e!3776 (and tp!423 tp!421))))

(declare-fun res!1737 () Bool)

(assert (=> b!6359 (=> (not res!1737) (not e!3778))))

(assert (=> b!6359 (= res!1737 (= proof!299 lambda!579))))

(assert (= (and start!1042 res!1735) b!6355))

(assert (= (and b!6355 res!1739) b!6354))

(assert (= (and b!6354 res!1736) b!6357))

(assert (= (and b!6357 res!1738) b!6359))

(assert (= (and b!6359 res!1737) b!6356))

(assert (= start!1042 b!6358))

(assert (= start!1042 b!6353))

(declare-fun b_lambda!2999 () Bool)

(assert (=> (not b_lambda!2999) (not b!6356)))

(declare-fun t!1053 () Bool)

(declare-fun tb!713 () Bool)

(assert (=> (and start!1042 (= proof!299 proof!299) t!1053) tb!713))

(declare-fun result!753 () Bool)

(assert (=> tb!713 (= result!753 true)))

(assert (=> b!6356 t!1053))

(declare-fun b_and!1295 () Bool)

(assert (= b_and!1283 (and (=> t!1053 result!753) b_and!1295)))

(declare-fun tb!715 () Bool)

(declare-fun t!1055 () Bool)

(assert (=> (and b!6353 (= (evidence!80 thiss!1206) proof!299) t!1055) tb!715))

(declare-fun result!755 () Bool)

(assert (=> tb!715 (= result!755 true)))

(assert (=> b!6356 t!1055))

(declare-fun b_and!1297 () Bool)

(assert (= b_and!1293 (and (=> t!1055 result!755) b_and!1297)))

(declare-fun m!9113 () Bool)

(assert (=> start!1042 m!9113))

(declare-fun m!9115 () Bool)

(assert (=> start!1042 m!9115))

(declare-fun m!9117 () Bool)

(assert (=> start!1042 m!9117))

(declare-fun m!9119 () Bool)

(assert (=> b!6355 m!9119))

(declare-fun m!9121 () Bool)

(assert (=> b!6355 m!9121))

(declare-fun m!9123 () Bool)

(assert (=> b!6356 m!9123))

(push 1)

(assert (not b_next!431))

(assert b_and!1285)

(assert b_and!1297)

(assert (not b_next!429))

(assert (not start!1042))

(assert b_and!1291)

(assert (not b_next!435))

(assert b_and!1287)

(assert b_and!1295)

(assert b_and!1289)

(assert (not b_next!433))

(assert (not b_next!427))

(assert (not b!6355))

(assert (not b_next!425))

(assert (not b_lambda!2999))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!431))

(assert b_and!1285)

(assert b_and!1297)

(assert (not b_next!429))

(assert b_and!1291)

(assert (not b_next!435))

(assert b_and!1287)

(assert b_and!1295)

(assert b_and!1289)

(assert (not b_next!433))

(assert (not b_next!427))

(assert (not b_next!425))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3001 () Bool)

(assert (= b_lambda!2999 (or (and b!6354 (= lambda!576 proof!299)) (and b!6359 (= lambda!579 proof!299)) (and start!1042 b_free!191) (and b!6353 b_free!201 (= (evidence!80 thiss!1206) proof!299)) b_lambda!3001)))

(declare-fun bs!1323 () Bool)

(declare-fun d!5057 () Bool)

(assert (= bs!1323 (and d!5057 b!6354)))

(declare-fun folds_equivalence!0 (List!125) Bool)

(assert (=> bs!1323 (= (dynLambda!84 lambda!576) (folds_equivalence!0 xs!395))))

(declare-fun m!9125 () Bool)

(assert (=> bs!1323 m!9125))

(assert (=> (and b!6354 (= lambda!576 proof!299) b!6356) d!5057))

(declare-fun bs!1324 () Bool)

(declare-fun d!5059 () Bool)

(assert (= bs!1324 (and d!5059 b!6359)))

(declare-fun foldRight_map_commutivity!0 (List!125) Bool)

(assert (=> bs!1324 (= (dynLambda!84 lambda!579) (foldRight_map_commutivity!0 xs!395))))

(declare-fun m!9127 () Bool)

(assert (=> bs!1324 m!9127))

(assert (=> (and b!6359 (= lambda!579 proof!299) b!6356) d!5059))

(push 1)

(assert (not b_next!431))

(assert (not bs!1324))

(assert b_and!1285)

(assert b_and!1297)

(assert (not b_next!429))

(assert (not start!1042))

(assert b_and!1291)

(assert (not b_next!435))

(assert b_and!1287)

(assert (not b_lambda!3001))

(assert b_and!1295)

(assert b_and!1289)

(assert (not bs!1323))

(assert (not b_next!433))

(assert (not b_next!427))

(assert (not b!6355))

(assert (not b_next!425))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!431))

(assert b_and!1285)

(assert b_and!1297)

(assert (not b_next!429))

(assert b_and!1291)

(assert (not b_next!435))

(assert b_and!1287)

(assert b_and!1295)

(assert b_and!1289)

(assert (not b_next!433))

(assert (not b_next!427))

(assert (not b_next!425))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1325 () Bool)

(declare-fun d!5061 () Bool)

(assert (= bs!1325 (and d!5061 b!6354)))

(declare-fun lambda!582 () Int)

(assert (=> bs!1325 (= lambda!582 lambda!575)))

(declare-fun bs!1326 () Bool)

(assert (= bs!1326 (and d!5061 b!6357)))

(assert (=> bs!1326 (not (= lambda!582 lambda!577))))

(declare-fun isBalanced!0 (Balance!37) Bool)

(declare-fun foldRight!15 (List!125 Balance!37 Int) Balance!37)

(assert (=> d!5061 (= (isMatchedSequential!0 xs!395) (isBalanced!0 (foldRight!15 xs!395 (Balance!38 0 0) lambda!582)))))

(declare-fun bs!1327 () Bool)

(assert (= bs!1327 d!5061))

(declare-fun m!9129 () Bool)

(assert (=> bs!1327 m!9129))

(assert (=> bs!1327 m!9129))

(declare-fun m!9131 () Bool)

(assert (=> bs!1327 m!9131))

(assert (=> b!6355 d!5061))

(declare-fun d!5063 () Bool)

(declare-fun lambda!587 () Int)

(declare-fun lambda!588 () Int)

(declare-datatypes () ((List!126 (Nil!124) (Cons!123 (head!341 Balance!37) (tail!353 List!126)))))

(declare-fun foldRight1!12 (List!126 Int) Balance!37)

(declare-fun map!131 (List!125 Int) List!126)

(assert (=> d!5063 (= (isMatchedHybid!0 xs!395) (isBalanced!0 (foldRight1!12 (map!131 xs!395 lambda!587) lambda!588)))))

(declare-fun bs!1328 () Bool)

(assert (= bs!1328 d!5063))

(declare-fun m!9133 () Bool)

(assert (=> bs!1328 m!9133))

(assert (=> bs!1328 m!9133))

(declare-fun m!9135 () Bool)

(assert (=> bs!1328 m!9135))

(assert (=> bs!1328 m!9135))

(declare-fun m!9137 () Bool)

(assert (=> bs!1328 m!9137))

(assert (=> b!6355 d!5063))

(declare-fun d!5065 () Bool)

(assert (=> d!5065 (= (isEmpty!114 xs!395) (is-Nil!123 xs!395))))

(assert (=> start!1042 d!5065))

(declare-fun d!5067 () Bool)

(declare-fun dynLambda!85 (Int) Balance!37)

(assert (=> d!5067 (= (inv!226 thiss!1212) (= (dynLambda!85 (x!3369 thiss!1212)) (dynLambda!85 (y!431 thiss!1212))))))

(declare-fun b_lambda!3003 () Bool)

(assert (=> (not b_lambda!3003) (not d!5067)))

(declare-fun t!1057 () Bool)

(declare-fun tb!717 () Bool)

(assert (=> (and b!6358 (= (x!3369 thiss!1212) (x!3369 thiss!1212)) t!1057) tb!717))

(declare-fun result!757 () Bool)

(assert (=> tb!717 (= result!757 true)))

(assert (=> d!5067 t!1057))

(declare-fun b_and!1299 () Bool)

(assert (= b_and!1285 (and (=> t!1057 result!757) b_and!1299)))

(declare-fun t!1059 () Bool)

(declare-fun tb!719 () Bool)

(assert (=> (and b!6358 (= (y!431 thiss!1212) (x!3369 thiss!1212)) t!1059) tb!719))

(declare-fun result!759 () Bool)

(assert (=> tb!719 (= result!759 true)))

(assert (=> d!5067 t!1059))

(declare-fun b_and!1301 () Bool)

(assert (= b_and!1287 (and (=> t!1059 result!759) b_and!1301)))

(declare-fun t!1061 () Bool)

(declare-fun tb!721 () Bool)

(assert (=> (and b!6353 (= (x!3370 thiss!1206) (x!3369 thiss!1212)) t!1061) tb!721))

(declare-fun result!761 () Bool)

(assert (=> tb!721 (= result!761 true)))

(assert (=> d!5067 t!1061))

(declare-fun b_and!1303 () Bool)

(assert (= b_and!1289 (and (=> t!1061 result!761) b_and!1303)))

(declare-fun tb!723 () Bool)

(declare-fun t!1063 () Bool)

(assert (=> (and b!6353 (= (y!432 thiss!1206) (x!3369 thiss!1212)) t!1063) tb!723))

(declare-fun result!763 () Bool)

(assert (=> tb!723 (= result!763 true)))

(assert (=> d!5067 t!1063))

(declare-fun b_and!1305 () Bool)

(assert (= b_and!1291 (and (=> t!1063 result!763) b_and!1305)))

(declare-fun b_lambda!3005 () Bool)

(assert (=> (not b_lambda!3005) (not d!5067)))

(declare-fun t!1065 () Bool)

(declare-fun tb!725 () Bool)

(assert (=> (and b!6358 (= (x!3369 thiss!1212) (y!431 thiss!1212)) t!1065) tb!725))

(declare-fun result!765 () Bool)

(assert (=> tb!725 (= result!765 true)))

(assert (=> d!5067 t!1065))

(declare-fun b_and!1307 () Bool)

(assert (= b_and!1299 (and (=> t!1065 result!765) b_and!1307)))

(declare-fun t!1067 () Bool)

(declare-fun tb!727 () Bool)

(assert (=> (and b!6358 (= (y!431 thiss!1212) (y!431 thiss!1212)) t!1067) tb!727))

(declare-fun result!767 () Bool)

(assert (=> tb!727 (= result!767 true)))

(assert (=> d!5067 t!1067))

(declare-fun b_and!1309 () Bool)

(assert (= b_and!1301 (and (=> t!1067 result!767) b_and!1309)))

(declare-fun t!1069 () Bool)

(declare-fun tb!729 () Bool)

(assert (=> (and b!6353 (= (x!3370 thiss!1206) (y!431 thiss!1212)) t!1069) tb!729))

(declare-fun result!769 () Bool)

(assert (=> tb!729 (= result!769 true)))

(assert (=> d!5067 t!1069))

(declare-fun b_and!1311 () Bool)

(assert (= b_and!1303 (and (=> t!1069 result!769) b_and!1311)))

(declare-fun tb!731 () Bool)

(declare-fun t!1071 () Bool)

(assert (=> (and b!6353 (= (y!432 thiss!1206) (y!431 thiss!1212)) t!1071) tb!731))

(declare-fun result!771 () Bool)

(assert (=> tb!731 (= result!771 true)))

(assert (=> d!5067 t!1071))

(declare-fun b_and!1313 () Bool)

(assert (= b_and!1305 (and (=> t!1071 result!771) b_and!1313)))

(declare-fun m!9139 () Bool)

(assert (=> d!5067 m!9139))

(declare-fun m!9141 () Bool)

(assert (=> d!5067 m!9141))

(assert (=> start!1042 d!5067))

(declare-fun d!5069 () Bool)

(declare-fun res!1742 () Bool)

(declare-fun e!3781 () Bool)

(assert (=> d!5069 (=> (not res!1742) (not e!3781))))

(assert (=> d!5069 (= res!1742 (= (dynLambda!85 (x!3370 thiss!1206)) (dynLambda!85 (y!432 thiss!1206))))))

(assert (=> d!5069 (= (inv!227 thiss!1206) e!3781)))

(declare-fun b!6366 () Bool)

(assert (=> b!6366 (= e!3781 (dynLambda!84 (evidence!80 thiss!1206)))))

(assert (= (and d!5069 res!1742) b!6366))

(declare-fun b_lambda!3007 () Bool)

(assert (=> (not b_lambda!3007) (not d!5069)))

(declare-fun tb!733 () Bool)

(declare-fun t!1073 () Bool)

(assert (=> (and b!6358 (= (x!3369 thiss!1212) (x!3370 thiss!1206)) t!1073) tb!733))

(declare-fun result!773 () Bool)

(assert (=> tb!733 (= result!773 true)))

(assert (=> d!5069 t!1073))

(declare-fun b_and!1315 () Bool)

(assert (= b_and!1307 (and (=> t!1073 result!773) b_and!1315)))

(declare-fun t!1075 () Bool)

(declare-fun tb!735 () Bool)

(assert (=> (and b!6358 (= (y!431 thiss!1212) (x!3370 thiss!1206)) t!1075) tb!735))

(declare-fun result!775 () Bool)

(assert (=> tb!735 (= result!775 true)))

(assert (=> d!5069 t!1075))

(declare-fun b_and!1317 () Bool)

(assert (= b_and!1309 (and (=> t!1075 result!775) b_and!1317)))

(declare-fun t!1077 () Bool)

(declare-fun tb!737 () Bool)

(assert (=> (and b!6353 (= (x!3370 thiss!1206) (x!3370 thiss!1206)) t!1077) tb!737))

(declare-fun result!777 () Bool)

(assert (=> tb!737 (= result!777 true)))

(assert (=> d!5069 t!1077))

(declare-fun b_and!1319 () Bool)

(assert (= b_and!1311 (and (=> t!1077 result!777) b_and!1319)))

(declare-fun t!1079 () Bool)

(declare-fun tb!739 () Bool)

(assert (=> (and b!6353 (= (y!432 thiss!1206) (x!3370 thiss!1206)) t!1079) tb!739))

(declare-fun result!779 () Bool)

(assert (=> tb!739 (= result!779 true)))

(assert (=> d!5069 t!1079))

(declare-fun b_and!1321 () Bool)

(assert (= b_and!1313 (and (=> t!1079 result!779) b_and!1321)))

(declare-fun b_lambda!3009 () Bool)

(assert (=> (not b_lambda!3009) (not d!5069)))

(declare-fun t!1081 () Bool)

(declare-fun tb!741 () Bool)

(assert (=> (and b!6358 (= (x!3369 thiss!1212) (y!432 thiss!1206)) t!1081) tb!741))

(declare-fun result!781 () Bool)

(assert (=> tb!741 (= result!781 true)))

(assert (=> d!5069 t!1081))

(declare-fun b_and!1323 () Bool)

(assert (= b_and!1315 (and (=> t!1081 result!781) b_and!1323)))

(declare-fun t!1083 () Bool)

(declare-fun tb!743 () Bool)

(assert (=> (and b!6358 (= (y!431 thiss!1212) (y!432 thiss!1206)) t!1083) tb!743))

(declare-fun result!783 () Bool)

(assert (=> tb!743 (= result!783 true)))

(assert (=> d!5069 t!1083))

(declare-fun b_and!1325 () Bool)

(assert (= b_and!1317 (and (=> t!1083 result!783) b_and!1325)))

(declare-fun t!1085 () Bool)

(declare-fun tb!745 () Bool)

(assert (=> (and b!6353 (= (x!3370 thiss!1206) (y!432 thiss!1206)) t!1085) tb!745))

(declare-fun result!785 () Bool)

(assert (=> tb!745 (= result!785 true)))

(assert (=> d!5069 t!1085))

(declare-fun b_and!1327 () Bool)

(assert (= b_and!1319 (and (=> t!1085 result!785) b_and!1327)))

(declare-fun t!1087 () Bool)

(declare-fun tb!747 () Bool)

(assert (=> (and b!6353 (= (y!432 thiss!1206) (y!432 thiss!1206)) t!1087) tb!747))

(declare-fun result!787 () Bool)

(assert (=> tb!747 (= result!787 true)))

(assert (=> d!5069 t!1087))

(declare-fun b_and!1329 () Bool)

(assert (= b_and!1321 (and (=> t!1087 result!787) b_and!1329)))

(declare-fun b_lambda!3011 () Bool)

(assert (=> (not b_lambda!3011) (not b!6366)))

(declare-fun tb!749 () Bool)

(declare-fun t!1089 () Bool)

(assert (=> (and start!1042 (= proof!299 (evidence!80 thiss!1206)) t!1089) tb!749))

(declare-fun result!789 () Bool)

(assert (=> tb!749 (= result!789 true)))

(assert (=> b!6366 t!1089))

(declare-fun b_and!1331 () Bool)

(assert (= b_and!1295 (and (=> t!1089 result!789) b_and!1331)))

(declare-fun t!1091 () Bool)

(declare-fun tb!751 () Bool)

(assert (=> (and b!6353 (= (evidence!80 thiss!1206) (evidence!80 thiss!1206)) t!1091) tb!751))

(declare-fun result!791 () Bool)

(assert (=> tb!751 (= result!791 true)))

(assert (=> b!6366 t!1091))

(declare-fun b_and!1333 () Bool)

(assert (= b_and!1297 (and (=> t!1091 result!791) b_and!1333)))

(declare-fun m!9143 () Bool)

(assert (=> d!5069 m!9143))

(declare-fun m!9145 () Bool)

(assert (=> d!5069 m!9145))

(declare-fun m!9147 () Bool)

(assert (=> b!6366 m!9147))

(assert (=> start!1042 d!5069))

(declare-fun bs!1329 () Bool)

(declare-fun b!6371 () Bool)

(assert (= bs!1329 (and b!6371 b!6354)))

(declare-fun lambda!597 () Int)

(assert (=> bs!1329 (not (= lambda!597 lambda!575))))

(declare-fun bs!1330 () Bool)

(assert (= bs!1330 (and b!6371 b!6357)))

(assert (=> bs!1330 (= lambda!597 lambda!577)))

(declare-fun bs!1331 () Bool)

(assert (= bs!1331 (and b!6371 d!5061)))

(assert (=> bs!1331 (not (= lambda!597 lambda!582))))

(declare-fun lambda!598 () Int)

(assert (=> bs!1329 (= lambda!598 lambda!575)))

(assert (=> bs!1330 (not (= lambda!598 lambda!577))))

(assert (=> bs!1331 (= lambda!598 lambda!582)))

(assert (=> b!6371 (not (= lambda!598 lambda!597))))

(declare-fun bs!1332 () Bool)

(declare-fun b!6372 () Bool)

(assert (= bs!1332 (and b!6372 b!6371)))

(declare-fun lambda!599 () Int)

(assert (=> bs!1332 (= lambda!599 lambda!597)))

(declare-fun bs!1333 () Bool)

(assert (= bs!1333 (and b!6372 d!5061)))

(assert (=> bs!1333 (not (= lambda!599 lambda!582))))

(declare-fun bs!1334 () Bool)

(assert (= bs!1334 (and b!6372 b!6357)))

(assert (=> bs!1334 (= lambda!599 lambda!577)))

(assert (=> bs!1332 (not (= lambda!599 lambda!598))))

(declare-fun bs!1335 () Bool)

(assert (= bs!1335 (and b!6372 b!6354)))

(assert (=> bs!1335 (not (= lambda!599 lambda!575))))

(declare-fun lambda!600 () Int)

(assert (=> bs!1332 (not (= lambda!600 lambda!597))))

(assert (=> bs!1333 (= lambda!600 lambda!582)))

(assert (=> bs!1334 (not (= lambda!600 lambda!577))))

(assert (=> b!6372 (not (= lambda!600 lambda!599))))

(assert (=> bs!1332 (= lambda!600 lambda!598)))

(assert (=> bs!1335 (= lambda!600 lambda!575)))

(declare-fun e!3784 () Bool)

(assert (=> b!6372 (= e!3784 (= (foldRight!15 xs!395 (Balance!38 0 0) lambda!599) (foldRight!15 xs!395 (Balance!38 0 0) lambda!600)))))

(declare-fun lt!1366 () Bool)

(assert (=> b!6372 (= lt!1366 (folds_equivalence!0 (tail!352 xs!395)))))

(declare-fun d!5071 () Bool)

(assert (=> d!5071 e!3784))

(declare-fun c!2373 () Bool)

(assert (=> d!5071 (= c!2373 (is-Nil!123 xs!395))))

(assert (=> d!5071 (= (folds_equivalence!0 xs!395) true)))

(assert (=> b!6371 (= e!3784 (= (foldRight!15 xs!395 (Balance!38 0 0) lambda!597) (foldRight!15 xs!395 (Balance!38 0 0) lambda!598)))))

(assert (= (and d!5071 c!2373) b!6371))

(assert (= (and d!5071 (not c!2373)) b!6372))

(declare-fun m!9149 () Bool)

(assert (=> b!6372 m!9149))

(declare-fun m!9151 () Bool)

(assert (=> b!6372 m!9151))

(declare-fun m!9153 () Bool)

(assert (=> b!6372 m!9153))

(declare-fun m!9155 () Bool)

(assert (=> b!6371 m!9155))

(declare-fun m!9157 () Bool)

(assert (=> b!6371 m!9157))

(assert (=> bs!1323 d!5071))

(declare-fun bs!1336 () Bool)

(declare-fun b!6377 () Bool)

(assert (= bs!1336 (and b!6377 b!6371)))

(declare-fun lambda!613 () Int)

(assert (=> bs!1336 (= lambda!613 lambda!597)))

(declare-fun bs!1337 () Bool)

(assert (= bs!1337 (and b!6377 d!5061)))

(assert (=> bs!1337 (not (= lambda!613 lambda!582))))

(declare-fun bs!1338 () Bool)

(assert (= bs!1338 (and b!6377 b!6372)))

(assert (=> bs!1338 (not (= lambda!613 lambda!600))))

(declare-fun bs!1339 () Bool)

(assert (= bs!1339 (and b!6377 b!6357)))

(assert (=> bs!1339 (= lambda!613 lambda!577)))

(assert (=> bs!1338 (= lambda!613 lambda!599)))

(assert (=> bs!1336 (not (= lambda!613 lambda!598))))

(declare-fun bs!1340 () Bool)

(assert (= bs!1340 (and b!6377 b!6354)))

(assert (=> bs!1340 (not (= lambda!613 lambda!575))))

(declare-fun bs!1341 () Bool)

(assert (= bs!1341 (and b!6377 d!5063)))

(declare-fun lambda!614 () Int)

(assert (=> bs!1341 (= lambda!614 lambda!587)))

(declare-fun lambda!615 () Int)

(assert (=> bs!1341 (= lambda!615 lambda!588)))

(declare-fun bs!1342 () Bool)

(declare-fun b!6378 () Bool)

(assert (= bs!1342 (and b!6378 b!6371)))

(declare-fun lambda!616 () Int)

(assert (=> bs!1342 (= lambda!616 lambda!597)))

(declare-fun bs!1343 () Bool)

(assert (= bs!1343 (and b!6378 d!5061)))

(assert (=> bs!1343 (not (= lambda!616 lambda!582))))

(declare-fun bs!1344 () Bool)

(assert (= bs!1344 (and b!6378 b!6372)))

(assert (=> bs!1344 (not (= lambda!616 lambda!600))))

(declare-fun bs!1345 () Bool)

(assert (= bs!1345 (and b!6378 b!6377)))

(assert (=> bs!1345 (= lambda!616 lambda!613)))

(declare-fun bs!1346 () Bool)

(assert (= bs!1346 (and b!6378 b!6357)))

(assert (=> bs!1346 (= lambda!616 lambda!577)))

(assert (=> bs!1344 (= lambda!616 lambda!599)))

(assert (=> bs!1342 (not (= lambda!616 lambda!598))))

(declare-fun bs!1347 () Bool)

(assert (= bs!1347 (and b!6378 b!6354)))

(assert (=> bs!1347 (not (= lambda!616 lambda!575))))

(declare-fun bs!1348 () Bool)

(assert (= bs!1348 (and b!6378 d!5063)))

(declare-fun lambda!617 () Int)

(assert (=> bs!1348 (= lambda!617 lambda!587)))

(assert (=> bs!1345 (= lambda!617 lambda!614)))

(declare-fun lambda!618 () Int)

(assert (=> bs!1348 (= lambda!618 lambda!588)))

(assert (=> bs!1345 (= lambda!618 lambda!615)))

(declare-fun e!3787 () Bool)

(declare-fun foldRight!16 (List!126 Balance!37 Int) Balance!37)

(assert (=> b!6378 (= e!3787 (= (foldRight!15 xs!395 (Balance!38 0 0) lambda!616) (foldRight!16 (map!131 xs!395 lambda!617) (Balance!38 0 0) lambda!618)))))

(declare-fun lt!1369 () Bool)

(assert (=> b!6378 (= lt!1369 (foldRight_map_commutivity!0 (tail!352 xs!395)))))

(declare-fun d!5073 () Bool)

(assert (=> d!5073 e!3787))

(declare-fun c!2376 () Bool)

(assert (=> d!5073 (= c!2376 (is-Nil!123 xs!395))))

(assert (=> d!5073 (= (foldRight_map_commutivity!0 xs!395) true)))

(assert (=> b!6377 (= e!3787 (= (foldRight!15 xs!395 (Balance!38 0 0) lambda!613) (foldRight!16 (map!131 xs!395 lambda!614) (Balance!38 0 0) lambda!615)))))

(assert (= (and d!5073 c!2376) b!6377))

(assert (= (and d!5073 (not c!2376)) b!6378))

(declare-fun m!9159 () Bool)

(assert (=> b!6378 m!9159))

(declare-fun m!9161 () Bool)

(assert (=> b!6378 m!9161))

(assert (=> b!6378 m!9161))

(declare-fun m!9163 () Bool)

(assert (=> b!6378 m!9163))

(declare-fun m!9165 () Bool)

(assert (=> b!6378 m!9165))

(declare-fun m!9167 () Bool)

(assert (=> b!6377 m!9167))

(declare-fun m!9169 () Bool)

(assert (=> b!6377 m!9169))

(assert (=> b!6377 m!9169))

(declare-fun m!9171 () Bool)

(assert (=> b!6377 m!9171))

(assert (=> bs!1324 d!5073))

(declare-fun b_lambda!3013 () Bool)

(assert (= b_lambda!3011 (or (and b!6354 (= lambda!576 (evidence!80 thiss!1206))) (and b!6359 (= lambda!579 (evidence!80 thiss!1206))) (and start!1042 b_free!191 (= proof!299 (evidence!80 thiss!1206))) (and b!6353 b_free!201) b_lambda!3013)))

(declare-fun bs!1349 () Bool)

(declare-fun d!5075 () Bool)

(assert (= bs!1349 (and d!5075 b!6354)))

(assert (=> bs!1349 (= (dynLambda!84 lambda!576) (folds_equivalence!0 xs!395))))

(assert (=> bs!1349 m!9125))

(assert (=> (and b!6354 (= lambda!576 (evidence!80 thiss!1206)) b!6366) d!5075))

(declare-fun bs!1350 () Bool)

(declare-fun d!5077 () Bool)

(assert (= bs!1350 (and d!5077 b!6359)))

(assert (=> bs!1350 (= (dynLambda!84 lambda!579) (foldRight_map_commutivity!0 xs!395))))

(assert (=> bs!1350 m!9127))

(assert (=> (and b!6359 (= lambda!579 (evidence!80 thiss!1206)) b!6366) d!5077))

(declare-fun b_lambda!3015 () Bool)

(assert (= b_lambda!3003 (or (and b!6353 b_free!199 (= (y!432 thiss!1206) (x!3369 thiss!1212))) (and b!6353 b_free!197 (= (x!3370 thiss!1206) (x!3369 thiss!1212))) (and b!6357 (= lambda!578 (x!3369 thiss!1212))) (and b!6358 b_free!195 (= (y!431 thiss!1212) (x!3369 thiss!1212))) (and b!6358 b_free!193) (and b!6354 (= lambda!574 (x!3369 thiss!1212))) b_lambda!3015)))

(declare-fun bs!1351 () Bool)

(declare-fun d!5079 () Bool)

(assert (= bs!1351 (and d!5079 b!6354)))

(assert (=> bs!1351 (= (dynLambda!85 lambda!574) (foldRight!15 xs!395 (Balance!38 0 0) lambda!575))))

(declare-fun m!9173 () Bool)

(assert (=> bs!1351 m!9173))

(assert (=> (and b!6354 (= lambda!574 (x!3369 thiss!1212)) d!5067) d!5079))

(declare-fun bs!1352 () Bool)

(declare-fun d!5081 () Bool)

(assert (= bs!1352 (and d!5081 b!6357)))

(assert (=> bs!1352 (= (dynLambda!85 lambda!578) (foldRight!15 xs!395 (Balance!38 0 0) lambda!577))))

(declare-fun m!9175 () Bool)

(assert (=> bs!1352 m!9175))

(assert (=> (and b!6357 (= lambda!578 (x!3369 thiss!1212)) d!5067) d!5081))

(declare-fun b_lambda!3017 () Bool)

(assert (= b_lambda!3007 (or (and b!6354 (= lambda!574 (x!3370 thiss!1206))) (and b!6357 (= lambda!578 (x!3370 thiss!1206))) (and b!6358 b_free!193 (= (x!3369 thiss!1212) (x!3370 thiss!1206))) (and b!6358 b_free!195 (= (y!431 thiss!1212) (x!3370 thiss!1206))) (and b!6353 b_free!197) (and b!6353 b_free!199 (= (y!432 thiss!1206) (x!3370 thiss!1206))) b_lambda!3017)))

(declare-fun bs!1353 () Bool)

(declare-fun d!5083 () Bool)

(assert (= bs!1353 (and d!5083 b!6357)))

(assert (=> bs!1353 (= (dynLambda!85 lambda!578) (foldRight!15 xs!395 (Balance!38 0 0) lambda!577))))

(assert (=> bs!1353 m!9175))

(assert (=> (and b!6357 (= lambda!578 (x!3370 thiss!1206)) d!5069) d!5083))

(declare-fun bs!1354 () Bool)

(declare-fun d!5085 () Bool)

(assert (= bs!1354 (and d!5085 b!6354)))

(assert (=> bs!1354 (= (dynLambda!85 lambda!574) (foldRight!15 xs!395 (Balance!38 0 0) lambda!575))))

(assert (=> bs!1354 m!9173))

(assert (=> (and b!6354 (= lambda!574 (x!3370 thiss!1206)) d!5069) d!5085))

(declare-fun b_lambda!3019 () Bool)

(assert (= b_lambda!3005 (or (and b!6358 b_free!193 (= (x!3369 thiss!1212) (y!431 thiss!1212))) (and b!6357 (= lambda!578 (y!431 thiss!1212))) (and b!6353 b_free!199 (= (y!432 thiss!1206) (y!431 thiss!1212))) (and b!6358 b_free!195) (and b!6354 (= lambda!574 (y!431 thiss!1212))) (and b!6353 b_free!197 (= (x!3370 thiss!1206) (y!431 thiss!1212))) b_lambda!3019)))

(declare-fun bs!1355 () Bool)

(declare-fun d!5087 () Bool)

(assert (= bs!1355 (and d!5087 b!6354)))

(assert (=> bs!1355 (= (dynLambda!85 lambda!574) (foldRight!15 xs!395 (Balance!38 0 0) lambda!575))))

(assert (=> bs!1355 m!9173))

(assert (=> (and b!6354 (= lambda!574 (y!431 thiss!1212)) d!5067) d!5087))

(declare-fun bs!1356 () Bool)

(declare-fun d!5089 () Bool)

(assert (= bs!1356 (and d!5089 b!6357)))

(assert (=> bs!1356 (= (dynLambda!85 lambda!578) (foldRight!15 xs!395 (Balance!38 0 0) lambda!577))))

(assert (=> bs!1356 m!9175))

(assert (=> (and b!6357 (= lambda!578 (y!431 thiss!1212)) d!5067) d!5089))

(declare-fun b_lambda!3021 () Bool)

(assert (= b_lambda!3009 (or (and b!6358 b_free!193 (= (x!3369 thiss!1212) (y!432 thiss!1206))) (and b!6353 b_free!199) (and b!6358 b_free!195 (= (y!431 thiss!1212) (y!432 thiss!1206))) (and b!6357 (= lambda!578 (y!432 thiss!1206))) (and b!6353 b_free!197 (= (x!3370 thiss!1206) (y!432 thiss!1206))) (and b!6354 (= lambda!574 (y!432 thiss!1206))) b_lambda!3021)))

(declare-fun bs!1357 () Bool)

(declare-fun d!5091 () Bool)

(assert (= bs!1357 (and d!5091 b!6354)))

(assert (=> bs!1357 (= (dynLambda!85 lambda!574) (foldRight!15 xs!395 (Balance!38 0 0) lambda!575))))

(assert (=> bs!1357 m!9173))

(assert (=> (and b!6354 (= lambda!574 (y!432 thiss!1206)) d!5069) d!5091))

(declare-fun bs!1358 () Bool)

(declare-fun d!5093 () Bool)

(assert (= bs!1358 (and d!5093 b!6357)))

(assert (=> bs!1358 (= (dynLambda!85 lambda!578) (foldRight!15 xs!395 (Balance!38 0 0) lambda!577))))

(assert (=> bs!1358 m!9175))

(assert (=> (and b!6357 (= lambda!578 (y!432 thiss!1206)) d!5069) d!5093))

(push 1)

(assert b_and!1323)

(assert (not b_next!431))

(assert (not bs!1349))

(assert (not b_lambda!3015))

(assert (not bs!1356))

(assert (not bs!1352))

(assert (not b!6371))

(assert b_and!1333)

(assert (not b_lambda!3013))

(assert (not b_next!429))

(assert (not d!5061))

(assert (not b_next!435))

(assert (not b_lambda!3001))

(assert (not d!5063))

(assert (not bs!1358))

(assert (not b!6372))

(assert b_and!1331)

(assert (not b_lambda!3019))

(assert (not bs!1355))

(assert b_and!1329)

(assert (not b_lambda!3017))

(assert (not b!6377))

(assert (not bs!1350))

(assert (not b!6378))

(assert (not bs!1354))

(assert (not b_lambda!3021))

(assert (not b_next!433))

(assert (not b_next!427))

(assert (not bs!1357))

(assert (not bs!1353))

(assert (not b_next!425))

(assert b_and!1325)

(assert (not bs!1351))

(assert b_and!1327)

(check-sat)

(pop 1)

(push 1)

(assert b_and!1323)

(assert (not b_next!431))

(assert b_and!1333)

(assert (not b_next!429))

(assert (not b_next!435))

(assert b_and!1331)

(assert b_and!1329)

(assert (not b_next!433))

(assert (not b_next!427))

(assert (not b_next!425))

(assert b_and!1325)

(assert b_and!1327)

(check-sat)

(pop 1)

