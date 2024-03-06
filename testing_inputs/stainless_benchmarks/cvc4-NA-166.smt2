; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1100 () Bool)

(assert start!1100)

(declare-fun b!6522 () Bool)

(declare-fun b_free!275 () Bool)

(declare-fun b_next!565 () Bool)

(assert (=> b!6522 (= b_free!275 (not b_next!565))))

(declare-fun tp!550 () Bool)

(declare-fun b_and!1507 () Bool)

(assert (=> b!6522 (= tp!550 b_and!1507)))

(declare-fun b_free!277 () Bool)

(declare-fun b_next!567 () Bool)

(assert (=> b!6522 (= b_free!277 (not b_next!567))))

(declare-fun tp!546 () Bool)

(declare-fun b_and!1509 () Bool)

(assert (=> b!6522 (= tp!546 b_and!1509)))

(declare-fun b_free!279 () Bool)

(declare-fun b_next!569 () Bool)

(assert (=> b!6522 (= b_free!279 (not b_next!569))))

(declare-fun tp!548 () Bool)

(declare-fun b_and!1511 () Bool)

(assert (=> b!6522 (= tp!548 b_and!1511)))

(declare-fun b!6524 () Bool)

(declare-fun b_free!281 () Bool)

(declare-fun b_next!571 () Bool)

(assert (=> b!6524 (= b_free!281 (not b_next!571))))

(declare-fun tp!545 () Bool)

(declare-fun b_and!1513 () Bool)

(assert (=> b!6524 (= tp!545 b_and!1513)))

(declare-fun b_free!283 () Bool)

(declare-fun b_next!573 () Bool)

(assert (=> b!6524 (= b_free!283 (not b_next!573))))

(declare-fun tp!547 () Bool)

(declare-fun b_and!1515 () Bool)

(assert (=> b!6524 (= tp!547 b_and!1515)))

(declare-fun b_free!285 () Bool)

(declare-fun b_next!575 () Bool)

(assert (=> b!6524 (= b_free!285 (not b_next!575))))

(declare-fun tp!549 () Bool)

(declare-fun b_and!1517 () Bool)

(assert (=> b!6524 (= tp!549 b_and!1517)))

(declare-fun b!6518 () Bool)

(assert (=> b!6518 true))

(declare-fun lambda!776 () Int)

(declare-fun b_next!577 () Bool)

(declare-datatypes () ((Balance!51 (Balance!52 (extraOpen!66 Int) (extraClose!66 Int)))))

(declare-datatypes () ((EqEvidence!40 (EqEvidence!41 (x!3532 Int) (y!440 Int) (evidence!87 Int)))))

(declare-fun thiss!1205 () EqEvidence!40)

(assert (=> b!6522 (= b_next!565 (or (and b!6518 (= lambda!776 (x!3532 thiss!1205))) b_next!577))))

(declare-fun b_next!579 () Bool)

(assert (=> b!6522 (= b_next!567 (or (and b!6518 (= lambda!776 (y!440 thiss!1205))) b_next!579))))

(declare-fun b_next!581 () Bool)

(declare-fun that!333 () EqEvidence!40)

(assert (=> b!6524 (= b_next!571 (or (and b!6518 (= lambda!776 (x!3532 that!333))) b_next!581))))

(declare-fun b_next!583 () Bool)

(assert (=> b!6524 (= b_next!573 (or (and b!6518 (= lambda!776 (y!440 that!333))) b_next!583))))

(declare-fun lambda!778 () Int)

(declare-fun lambda!777 () Int)

(assert (=> b!6518 (not (= lambda!778 lambda!777))))

(declare-fun lambda!779 () Int)

(assert (=> b!6518 (= (= lambda!778 lambda!777) (= lambda!779 lambda!776))))

(assert (=> b!6518 true))

(declare-fun b_next!585 () Bool)

(assert (=> b!6522 (= b_next!577 (or (and b!6518 (= lambda!779 (x!3532 thiss!1205))) b_next!585))))

(declare-fun b_next!587 () Bool)

(assert (=> b!6522 (= b_next!579 (or (and b!6518 (= lambda!779 (y!440 thiss!1205))) b_next!587))))

(declare-fun b_next!589 () Bool)

(assert (=> b!6524 (= b_next!581 (or (and b!6518 (= lambda!779 (x!3532 that!333))) b_next!589))))

(declare-fun b_next!591 () Bool)

(assert (=> b!6524 (= b_next!583 (or (and b!6518 (= lambda!779 (y!440 that!333))) b_next!591))))

(assert (=> b!6518 true))

(declare-fun b_next!593 () Bool)

(declare-fun lambda!780 () Int)

(assert (=> b!6522 (= b_next!569 (or (and b!6518 (= lambda!780 (evidence!87 thiss!1205))) b_next!593))))

(declare-fun b_next!595 () Bool)

(assert (=> b!6524 (= b_next!575 (or (and b!6518 (= lambda!780 (evidence!87 that!333))) b_next!595))))

(declare-fun bs!1437 () Bool)

(declare-fun b!6523 () Bool)

(assert (= bs!1437 (and b!6523 b!6518)))

(declare-fun lambda!783 () Int)

(assert (=> bs!1437 (not (= lambda!783 lambda!776))))

(assert (=> bs!1437 (not (= lambda!783 lambda!779))))

(assert (=> b!6523 true))

(declare-fun b_next!597 () Bool)

(assert (=> b!6522 (= b_next!585 (or (and b!6523 (= lambda!783 (x!3532 thiss!1205))) b_next!597))))

(declare-fun b_next!599 () Bool)

(assert (=> b!6522 (= b_next!587 (or (and b!6523 (= lambda!783 (y!440 thiss!1205))) b_next!599))))

(declare-fun b_next!601 () Bool)

(assert (=> b!6524 (= b_next!589 (or (and b!6523 (= lambda!783 (x!3532 that!333))) b_next!601))))

(declare-fun b_next!603 () Bool)

(assert (=> b!6524 (= b_next!591 (or (and b!6523 (= lambda!783 (y!440 that!333))) b_next!603))))

(declare-fun lambda!784 () Int)

(assert (=> bs!1437 (not (= lambda!784 lambda!780))))

(assert (=> b!6523 true))

(declare-fun b_next!605 () Bool)

(assert (=> b!6522 (= b_next!593 (or (and b!6523 (= lambda!784 (evidence!87 thiss!1205))) b_next!605))))

(declare-fun b_next!607 () Bool)

(assert (=> b!6524 (= b_next!595 (or (and b!6523 (= lambda!784 (evidence!87 that!333))) b_next!607))))

(declare-fun res!1792 () Bool)

(declare-fun e!3864 () Bool)

(assert (=> b!6518 (=> (not res!1792) (not e!3864))))

(assert (=> b!6518 (= res!1792 (= thiss!1205 (EqEvidence!41 lambda!776 lambda!779 lambda!780)))))

(declare-fun b!6519 () Bool)

(declare-fun dynLambda!92 (Int) Balance!51)

(assert (=> b!6519 (= e!3864 (not (= (dynLambda!92 (y!440 thiss!1205)) (dynLambda!92 (x!3532 that!333)))))))

(declare-fun b!6520 () Bool)

(declare-fun res!1794 () Bool)

(assert (=> b!6520 (=> (not res!1794) (not e!3864))))

(declare-datatypes () ((ProofOps!38 (ProofOps!39 (prop!126 Bool)))))

(declare-fun thiss!1201 () ProofOps!38)

(declare-datatypes () ((Parenthesis!24 (CloseParenthesis!23) (OpenParenthesis!23))))

(declare-datatypes () ((List!131 (Nil!129) (Cons!128 (head!346 Parenthesis!24) (tail!358 List!131)))))

(declare-fun xs!395 () List!131)

(declare-fun isMatchedSequential!0 (List!131) Bool)

(declare-fun isMatchedHybid!0 (List!131) Bool)

(assert (=> b!6520 (= res!1794 (= thiss!1201 (ProofOps!39 (= (isMatchedSequential!0 xs!395) (isMatchedHybid!0 xs!395)))))))

(declare-fun b!6521 () Bool)

(declare-fun res!1791 () Bool)

(assert (=> b!6521 (=> (not res!1791) (not e!3864))))

(declare-fun dynLambda!93 (Int) Bool)

(assert (=> b!6521 (= res!1791 (dynLambda!93 (evidence!87 thiss!1205)))))

(declare-fun e!3863 () Bool)

(assert (=> b!6522 (= e!3863 (and tp!550 tp!546 tp!548))))

(declare-fun res!1793 () Bool)

(assert (=> b!6523 (=> (not res!1793) (not e!3864))))

(assert (=> b!6523 (= res!1793 (= that!333 (EqEvidence!41 lambda!783 lambda!783 lambda!784)))))

(declare-fun e!3862 () Bool)

(assert (=> b!6524 (= e!3862 (and tp!545 tp!547 tp!549))))

(declare-fun res!1790 () Bool)

(assert (=> start!1100 (=> (not res!1790) (not e!3864))))

(declare-fun isEmpty!117 (List!131) Bool)

(assert (=> start!1100 (= res!1790 (not (isEmpty!117 xs!395)))))

(assert (=> start!1100 e!3864))

(assert (=> start!1100 true))

(declare-fun inv!235 (EqEvidence!40) Bool)

(assert (=> start!1100 (and (inv!235 thiss!1205) e!3863)))

(assert (=> start!1100 (and (inv!235 that!333) e!3862)))

(assert (= (and start!1100 res!1790) b!6520))

(assert (= (and b!6520 res!1794) b!6518))

(assert (= (and b!6518 res!1792) b!6523))

(assert (= (and b!6523 res!1793) b!6521))

(assert (= (and b!6521 res!1791) b!6519))

(assert (= start!1100 b!6522))

(assert (= start!1100 b!6524))

(declare-fun b_lambda!3095 () Bool)

(assert (=> (not b_lambda!3095) (not b!6519)))

(declare-fun t!1173 () Bool)

(declare-fun tb!833 () Bool)

(assert (=> (and b!6522 (= (x!3532 thiss!1205) (y!440 thiss!1205)) t!1173) tb!833))

(declare-fun result!873 () Bool)

(assert (=> tb!833 (= result!873 true)))

(assert (=> b!6519 t!1173))

(declare-fun b_and!1519 () Bool)

(assert (= b_and!1507 (and (=> t!1173 result!873) b_and!1519)))

(declare-fun t!1175 () Bool)

(declare-fun tb!835 () Bool)

(assert (=> (and b!6522 (= (y!440 thiss!1205) (y!440 thiss!1205)) t!1175) tb!835))

(declare-fun result!875 () Bool)

(assert (=> tb!835 (= result!875 true)))

(assert (=> b!6519 t!1175))

(declare-fun b_and!1521 () Bool)

(assert (= b_and!1509 (and (=> t!1175 result!875) b_and!1521)))

(declare-fun t!1177 () Bool)

(declare-fun tb!837 () Bool)

(assert (=> (and b!6524 (= (x!3532 that!333) (y!440 thiss!1205)) t!1177) tb!837))

(declare-fun result!877 () Bool)

(assert (=> tb!837 (= result!877 true)))

(assert (=> b!6519 t!1177))

(declare-fun b_and!1523 () Bool)

(assert (= b_and!1513 (and (=> t!1177 result!877) b_and!1523)))

(declare-fun t!1179 () Bool)

(declare-fun tb!839 () Bool)

(assert (=> (and b!6524 (= (y!440 that!333) (y!440 thiss!1205)) t!1179) tb!839))

(declare-fun result!879 () Bool)

(assert (=> tb!839 (= result!879 true)))

(assert (=> b!6519 t!1179))

(declare-fun b_and!1525 () Bool)

(assert (= b_and!1515 (and (=> t!1179 result!879) b_and!1525)))

(declare-fun b_lambda!3097 () Bool)

(assert (=> (not b_lambda!3097) (not b!6519)))

(declare-fun t!1181 () Bool)

(declare-fun tb!841 () Bool)

(assert (=> (and b!6522 (= (x!3532 thiss!1205) (x!3532 that!333)) t!1181) tb!841))

(declare-fun result!881 () Bool)

(assert (=> tb!841 (= result!881 true)))

(assert (=> b!6519 t!1181))

(declare-fun b_and!1527 () Bool)

(assert (= b_and!1519 (and (=> t!1181 result!881) b_and!1527)))

(declare-fun tb!843 () Bool)

(declare-fun t!1183 () Bool)

(assert (=> (and b!6522 (= (y!440 thiss!1205) (x!3532 that!333)) t!1183) tb!843))

(declare-fun result!883 () Bool)

(assert (=> tb!843 (= result!883 true)))

(assert (=> b!6519 t!1183))

(declare-fun b_and!1529 () Bool)

(assert (= b_and!1521 (and (=> t!1183 result!883) b_and!1529)))

(declare-fun t!1185 () Bool)

(declare-fun tb!845 () Bool)

(assert (=> (and b!6524 (= (x!3532 that!333) (x!3532 that!333)) t!1185) tb!845))

(declare-fun result!885 () Bool)

(assert (=> tb!845 (= result!885 true)))

(assert (=> b!6519 t!1185))

(declare-fun b_and!1531 () Bool)

(assert (= b_and!1523 (and (=> t!1185 result!885) b_and!1531)))

(declare-fun t!1187 () Bool)

(declare-fun tb!847 () Bool)

(assert (=> (and b!6524 (= (y!440 that!333) (x!3532 that!333)) t!1187) tb!847))

(declare-fun result!887 () Bool)

(assert (=> tb!847 (= result!887 true)))

(assert (=> b!6519 t!1187))

(declare-fun b_and!1533 () Bool)

(assert (= b_and!1525 (and (=> t!1187 result!887) b_and!1533)))

(declare-fun b_lambda!3099 () Bool)

(assert (=> (not b_lambda!3099) (not b!6521)))

(declare-fun t!1189 () Bool)

(declare-fun tb!849 () Bool)

(assert (=> (and b!6522 (= (evidence!87 thiss!1205) (evidence!87 thiss!1205)) t!1189) tb!849))

(declare-fun result!889 () Bool)

(assert (=> tb!849 (= result!889 true)))

(assert (=> b!6521 t!1189))

(declare-fun b_and!1535 () Bool)

(assert (= b_and!1511 (and (=> t!1189 result!889) b_and!1535)))

(declare-fun t!1191 () Bool)

(declare-fun tb!851 () Bool)

(assert (=> (and b!6524 (= (evidence!87 that!333) (evidence!87 thiss!1205)) t!1191) tb!851))

(declare-fun result!891 () Bool)

(assert (=> tb!851 (= result!891 true)))

(assert (=> b!6521 t!1191))

(declare-fun b_and!1537 () Bool)

(assert (= b_and!1517 (and (=> t!1191 result!891) b_and!1537)))

(declare-fun m!9341 () Bool)

(assert (=> b!6519 m!9341))

(declare-fun m!9343 () Bool)

(assert (=> b!6519 m!9343))

(declare-fun m!9345 () Bool)

(assert (=> b!6520 m!9345))

(declare-fun m!9347 () Bool)

(assert (=> b!6520 m!9347))

(declare-fun m!9349 () Bool)

(assert (=> b!6521 m!9349))

(declare-fun m!9351 () Bool)

(assert (=> start!1100 m!9351))

(declare-fun m!9353 () Bool)

(assert (=> start!1100 m!9353))

(declare-fun m!9355 () Bool)

(assert (=> start!1100 m!9355))

(push 1)

(assert (not b_next!607))

(assert b_and!1533)

(assert (not b_next!597))

(assert b_and!1537)

(assert (not b_next!601))

(assert b_and!1531)

(assert (not b_lambda!3095))

(assert (not b_next!599))

(assert (not start!1100))

(assert b_and!1535)

(assert (not b_next!603))

(assert (not b!6520))

(assert b_and!1529)

(assert (not b_lambda!3099))

(assert (not b_lambda!3097))

(assert b_and!1527)

(assert (not b_next!605))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!607))

(assert b_and!1533)

(assert (not b_next!597))

(assert b_and!1537)

(assert (not b_next!601))

(assert b_and!1531)

(assert (not b_next!599))

(assert b_and!1535)

(assert (not b_next!603))

(assert b_and!1529)

(assert b_and!1527)

(assert (not b_next!605))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3101 () Bool)

(assert (= b_lambda!3097 (or (and b!6522 b_free!277 (= (y!440 thiss!1205) (x!3532 that!333))) (and b!6518 (= lambda!776 (x!3532 that!333))) (and b!6522 b_free!275 (= (x!3532 thiss!1205) (x!3532 that!333))) (and b!6524 b_free!281) (and b!6524 b_free!283 (= (y!440 that!333) (x!3532 that!333))) (and b!6523 (= lambda!783 (x!3532 that!333))) (and b!6518 (= lambda!779 (x!3532 that!333))) b_lambda!3101)))

(declare-fun bs!1438 () Bool)

(declare-fun d!5191 () Bool)

(assert (= bs!1438 (and d!5191 b!6518)))

(declare-fun foldRight!21 (List!131 Balance!51 Int) Balance!51)

(assert (=> bs!1438 (= (dynLambda!92 lambda!779) (foldRight!21 xs!395 (Balance!52 0 0) lambda!778))))

(declare-fun m!9357 () Bool)

(assert (=> bs!1438 m!9357))

(assert (=> (and b!6518 (= lambda!779 (x!3532 that!333)) b!6519) d!5191))

(declare-fun bs!1439 () Bool)

(declare-fun d!5193 () Bool)

(assert (= bs!1439 (and d!5193 b!6523)))

(declare-fun lambda!781 () Int)

(declare-fun lambda!782 () Int)

(declare-datatypes () ((List!132 (Nil!130) (Cons!129 (head!347 Balance!51) (tail!359 List!132)))))

(declare-fun foldRight!22 (List!132 Balance!51 Int) Balance!51)

(declare-fun map!134 (List!131 Int) List!132)

(assert (=> bs!1439 (= (dynLambda!92 lambda!783) (foldRight!22 (map!134 xs!395 lambda!782) (Balance!52 0 0) lambda!781))))

(declare-fun m!9359 () Bool)

(assert (=> bs!1439 m!9359))

(assert (=> bs!1439 m!9359))

(declare-fun m!9361 () Bool)

(assert (=> bs!1439 m!9361))

(assert (=> (and b!6523 (= lambda!783 (x!3532 that!333)) b!6519) d!5193))

(declare-fun bs!1440 () Bool)

(declare-fun d!5195 () Bool)

(assert (= bs!1440 (and d!5195 b!6518)))

(assert (=> bs!1440 (= (dynLambda!92 lambda!776) (foldRight!21 xs!395 (Balance!52 0 0) lambda!777))))

(declare-fun m!9363 () Bool)

(assert (=> bs!1440 m!9363))

(assert (=> (and b!6518 (= lambda!776 (x!3532 that!333)) b!6519) d!5195))

(declare-fun b_lambda!3103 () Bool)

(assert (= b_lambda!3095 (or (and b!6524 b_free!281 (= (x!3532 that!333) (y!440 thiss!1205))) (and b!6522 b_free!275 (= (x!3532 thiss!1205) (y!440 thiss!1205))) (and b!6523 (= lambda!783 (y!440 thiss!1205))) (and b!6524 b_free!283 (= (y!440 that!333) (y!440 thiss!1205))) (and b!6522 b_free!277) (and b!6518 (= lambda!776 (y!440 thiss!1205))) (and b!6518 (= lambda!779 (y!440 thiss!1205))) b_lambda!3103)))

(declare-fun bs!1441 () Bool)

(declare-fun d!5197 () Bool)

(assert (= bs!1441 (and d!5197 b!6523)))

(assert (=> bs!1441 (= (dynLambda!92 lambda!783) (foldRight!22 (map!134 xs!395 lambda!782) (Balance!52 0 0) lambda!781))))

(assert (=> bs!1441 m!9359))

(assert (=> bs!1441 m!9359))

(assert (=> bs!1441 m!9361))

(assert (=> (and b!6523 (= lambda!783 (y!440 thiss!1205)) b!6519) d!5197))

(declare-fun bs!1442 () Bool)

(declare-fun d!5199 () Bool)

(assert (= bs!1442 (and d!5199 b!6518)))

(assert (=> bs!1442 (= (dynLambda!92 lambda!779) (foldRight!21 xs!395 (Balance!52 0 0) lambda!778))))

(assert (=> bs!1442 m!9357))

(assert (=> (and b!6518 (= lambda!779 (y!440 thiss!1205)) b!6519) d!5199))

(declare-fun bs!1443 () Bool)

(declare-fun d!5201 () Bool)

(assert (= bs!1443 (and d!5201 b!6518)))

(assert (=> bs!1443 (= (dynLambda!92 lambda!776) (foldRight!21 xs!395 (Balance!52 0 0) lambda!777))))

(assert (=> bs!1443 m!9363))

(assert (=> (and b!6518 (= lambda!776 (y!440 thiss!1205)) b!6519) d!5201))

(declare-fun b_lambda!3105 () Bool)

(assert (= b_lambda!3099 (or (and b!6518 (= lambda!780 (evidence!87 thiss!1205))) (and b!6523 (= lambda!784 (evidence!87 thiss!1205))) (and b!6522 b_free!279) (and b!6524 b_free!285 (= (evidence!87 that!333) (evidence!87 thiss!1205))) b_lambda!3105)))

(declare-fun bs!1444 () Bool)

(declare-fun d!5203 () Bool)

(assert (= bs!1444 (and d!5203 b!6518)))

(declare-fun foldRight_map_commutivity!0 (List!131) Bool)

(assert (=> bs!1444 (= (dynLambda!93 lambda!780) (foldRight_map_commutivity!0 xs!395))))

(declare-fun m!9365 () Bool)

(assert (=> bs!1444 m!9365))

(assert (=> (and b!6518 (= lambda!780 (evidence!87 thiss!1205)) b!6521) d!5203))

(declare-fun bs!1445 () Bool)

(declare-fun d!5205 () Bool)

(assert (= bs!1445 (and d!5205 b!6523)))

(declare-fun foldRight_accumulator_equivalence!3 (List!132 Balance!51 Int) Bool)

(assert (=> bs!1445 (= (dynLambda!93 lambda!784) (foldRight_accumulator_equivalence!3 (map!134 xs!395 lambda!782) (Balance!52 0 0) lambda!781))))

(assert (=> bs!1445 m!9359))

(assert (=> bs!1445 m!9359))

(declare-fun m!9367 () Bool)

(assert (=> bs!1445 m!9367))

(assert (=> (and b!6523 (= lambda!784 (evidence!87 thiss!1205)) b!6521) d!5205))

(push 1)

(assert (not bs!1445))

(assert (not b_next!607))

(assert b_and!1533)

(assert (not b_next!597))

(assert b_and!1537)

(assert (not b_next!601))

(assert (not bs!1440))

(assert (not bs!1438))

(assert b_and!1531)

(assert (not b_lambda!3101))

(assert (not bs!1439))

(assert (not bs!1443))

(assert (not b_next!599))

(assert (not bs!1441))

(assert (not b_lambda!3103))

(assert (not bs!1442))

(assert (not start!1100))

(assert b_and!1535)

(assert (not b_next!603))

(assert (not b!6520))

(assert b_and!1529)

(assert (not b_lambda!3105))

(assert b_and!1527)

(assert (not bs!1444))

(assert (not b_next!605))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!607))

(assert b_and!1533)

(assert (not b_next!597))

(assert b_and!1537)

(assert (not b_next!601))

(assert b_and!1531)

(assert (not b_next!599))

(assert b_and!1535)

(assert (not b_next!603))

(assert b_and!1529)

(assert b_and!1527)

(assert (not b_next!605))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5207 () Bool)

(declare-fun c!2398 () Bool)

(assert (=> d!5207 (= c!2398 (is-Nil!129 xs!395))))

(declare-fun e!3867 () Balance!51)

(assert (=> d!5207 (= (foldRight!21 xs!395 (Balance!52 0 0) lambda!778) e!3867)))

(declare-fun b!6533 () Bool)

(assert (=> b!6533 (= e!3867 (Balance!52 0 0))))

(declare-fun b!6534 () Bool)

(declare-fun dynLambda!94 (Int Parenthesis!24 Balance!51) Balance!51)

(assert (=> b!6534 (= e!3867 (dynLambda!94 lambda!778 (head!346 xs!395) (foldRight!21 (tail!358 xs!395) (Balance!52 0 0) lambda!778)))))

(assert (= (and d!5207 c!2398) b!6533))

(assert (= (and d!5207 (not c!2398)) b!6534))

(declare-fun b_lambda!3107 () Bool)

(assert (=> (not b_lambda!3107) (not b!6534)))

(declare-fun m!9369 () Bool)

(assert (=> b!6534 m!9369))

(assert (=> b!6534 m!9369))

(declare-fun m!9371 () Bool)

(assert (=> b!6534 m!9371))

(assert (=> bs!1442 d!5207))

(declare-fun bs!1446 () Bool)

(declare-fun d!5209 () Bool)

(assert (= bs!1446 (and d!5209 b!6518)))

(declare-fun lambda!787 () Int)

(assert (=> bs!1446 (= lambda!787 lambda!777)))

(assert (=> bs!1446 (not (= lambda!787 lambda!778))))

(declare-fun isBalanced!0 (Balance!51) Bool)

(assert (=> d!5209 (= (isMatchedSequential!0 xs!395) (isBalanced!0 (foldRight!21 xs!395 (Balance!52 0 0) lambda!787)))))

(declare-fun bs!1447 () Bool)

(assert (= bs!1447 d!5209))

(declare-fun m!9373 () Bool)

(assert (=> bs!1447 m!9373))

(assert (=> bs!1447 m!9373))

(declare-fun m!9375 () Bool)

(assert (=> bs!1447 m!9375))

(assert (=> b!6520 d!5209))

(declare-fun bs!1448 () Bool)

(declare-fun d!5211 () Bool)

(assert (= bs!1448 (and d!5211 b!6523)))

(declare-fun lambda!792 () Int)

(assert (=> bs!1448 (= lambda!792 lambda!782)))

(declare-fun lambda!793 () Int)

(assert (=> bs!1448 (= lambda!793 lambda!781)))

(declare-fun foldRight1!15 (List!132 Int) Balance!51)

(assert (=> d!5211 (= (isMatchedHybid!0 xs!395) (isBalanced!0 (foldRight1!15 (map!134 xs!395 lambda!792) lambda!793)))))

(declare-fun bs!1449 () Bool)

(assert (= bs!1449 d!5211))

(declare-fun m!9377 () Bool)

(assert (=> bs!1449 m!9377))

(assert (=> bs!1449 m!9377))

(declare-fun m!9379 () Bool)

(assert (=> bs!1449 m!9379))

(assert (=> bs!1449 m!9379))

(declare-fun m!9381 () Bool)

(assert (=> bs!1449 m!9381))

(assert (=> b!6520 d!5211))

(declare-fun d!5213 () Bool)

(declare-fun c!2401 () Bool)

(assert (=> d!5213 (= c!2401 (is-Nil!130 (map!134 xs!395 lambda!782)))))

(declare-fun e!3870 () Balance!51)

(assert (=> d!5213 (= (foldRight!22 (map!134 xs!395 lambda!782) (Balance!52 0 0) lambda!781) e!3870)))

(declare-fun b!6539 () Bool)

(assert (=> b!6539 (= e!3870 (Balance!52 0 0))))

(declare-fun b!6540 () Bool)

(declare-fun dynLambda!95 (Int Balance!51 Balance!51) Balance!51)

(assert (=> b!6540 (= e!3870 (dynLambda!95 lambda!781 (head!347 (map!134 xs!395 lambda!782)) (foldRight!22 (tail!359 (map!134 xs!395 lambda!782)) (Balance!52 0 0) lambda!781)))))

(assert (= (and d!5213 c!2401) b!6539))

(assert (= (and d!5213 (not c!2401)) b!6540))

(declare-fun b_lambda!3109 () Bool)

(assert (=> (not b_lambda!3109) (not b!6540)))

(declare-fun m!9383 () Bool)

(assert (=> b!6540 m!9383))

(assert (=> b!6540 m!9383))

(declare-fun m!9385 () Bool)

(assert (=> b!6540 m!9385))

(assert (=> bs!1441 d!5213))

(declare-fun d!5215 () Bool)

(declare-fun c!2404 () Bool)

(assert (=> d!5215 (= c!2404 (is-Nil!129 xs!395))))

(declare-fun e!3873 () List!132)

(assert (=> d!5215 (= (map!134 xs!395 lambda!782) e!3873)))

(declare-fun b!6545 () Bool)

(assert (=> b!6545 (= e!3873 Nil!130)))

(declare-fun b!6546 () Bool)

(declare-fun dynLambda!96 (Int Parenthesis!24) Balance!51)

(assert (=> b!6546 (= e!3873 (Cons!129 (dynLambda!96 lambda!782 (head!346 xs!395)) (map!134 (tail!358 xs!395) lambda!782)))))

(assert (= (and d!5215 c!2404) b!6545))

(assert (= (and d!5215 (not c!2404)) b!6546))

(declare-fun b_lambda!3111 () Bool)

(assert (=> (not b_lambda!3111) (not b!6546)))

(declare-fun m!9387 () Bool)

(assert (=> b!6546 m!9387))

(declare-fun m!9389 () Bool)

(assert (=> b!6546 m!9389))

(assert (=> bs!1441 d!5215))

(declare-fun d!5217 () Bool)

(declare-fun c!2405 () Bool)

(assert (=> d!5217 (= c!2405 (is-Nil!129 xs!395))))

(declare-fun e!3874 () Balance!51)

(assert (=> d!5217 (= (foldRight!21 xs!395 (Balance!52 0 0) lambda!777) e!3874)))

(declare-fun b!6547 () Bool)

(assert (=> b!6547 (= e!3874 (Balance!52 0 0))))

(declare-fun b!6548 () Bool)

(assert (=> b!6548 (= e!3874 (dynLambda!94 lambda!777 (head!346 xs!395) (foldRight!21 (tail!358 xs!395) (Balance!52 0 0) lambda!777)))))

(assert (= (and d!5217 c!2405) b!6547))

(assert (= (and d!5217 (not c!2405)) b!6548))

(declare-fun b_lambda!3113 () Bool)

(assert (=> (not b_lambda!3113) (not b!6548)))

(declare-fun m!9391 () Bool)

(assert (=> b!6548 m!9391))

(assert (=> b!6548 m!9391))

(declare-fun m!9393 () Bool)

(assert (=> b!6548 m!9393))

(assert (=> bs!1440 d!5217))

(declare-fun d!5219 () Bool)

(assert (=> d!5219 (= (isEmpty!117 xs!395) (is-Nil!129 xs!395))))

(assert (=> start!1100 d!5219))

(declare-fun d!5221 () Bool)

(declare-fun res!1797 () Bool)

(declare-fun e!3877 () Bool)

(assert (=> d!5221 (=> (not res!1797) (not e!3877))))

(assert (=> d!5221 (= res!1797 (= (dynLambda!92 (x!3532 thiss!1205)) (dynLambda!92 (y!440 thiss!1205))))))

(assert (=> d!5221 (= (inv!235 thiss!1205) e!3877)))

(declare-fun b!6551 () Bool)

(assert (=> b!6551 (= e!3877 (dynLambda!93 (evidence!87 thiss!1205)))))

(assert (= (and d!5221 res!1797) b!6551))

(declare-fun b_lambda!3115 () Bool)

(assert (=> (not b_lambda!3115) (not d!5221)))

(declare-fun t!1193 () Bool)

(declare-fun tb!853 () Bool)

(assert (=> (and b!6522 (= (x!3532 thiss!1205) (x!3532 thiss!1205)) t!1193) tb!853))

(declare-fun result!893 () Bool)

(assert (=> tb!853 (= result!893 true)))

(assert (=> d!5221 t!1193))

(declare-fun b_and!1539 () Bool)

(assert (= b_and!1527 (and (=> t!1193 result!893) b_and!1539)))

(declare-fun t!1195 () Bool)

(declare-fun tb!855 () Bool)

(assert (=> (and b!6522 (= (y!440 thiss!1205) (x!3532 thiss!1205)) t!1195) tb!855))

(declare-fun result!895 () Bool)

(assert (=> tb!855 (= result!895 true)))

(assert (=> d!5221 t!1195))

(declare-fun b_and!1541 () Bool)

(assert (= b_and!1529 (and (=> t!1195 result!895) b_and!1541)))

(declare-fun t!1197 () Bool)

(declare-fun tb!857 () Bool)

(assert (=> (and b!6524 (= (x!3532 that!333) (x!3532 thiss!1205)) t!1197) tb!857))

(declare-fun result!897 () Bool)

(assert (=> tb!857 (= result!897 true)))

(assert (=> d!5221 t!1197))

(declare-fun b_and!1543 () Bool)

(assert (= b_and!1531 (and (=> t!1197 result!897) b_and!1543)))

(declare-fun t!1199 () Bool)

(declare-fun tb!859 () Bool)

(assert (=> (and b!6524 (= (y!440 that!333) (x!3532 thiss!1205)) t!1199) tb!859))

(declare-fun result!899 () Bool)

(assert (=> tb!859 (= result!899 true)))

(assert (=> d!5221 t!1199))

(declare-fun b_and!1545 () Bool)

(assert (= b_and!1533 (and (=> t!1199 result!899) b_and!1545)))

(declare-fun b_lambda!3117 () Bool)

(assert (=> (not b_lambda!3117) (not d!5221)))

(assert (=> d!5221 t!1173))

(declare-fun b_and!1547 () Bool)

(assert (= b_and!1539 (and (=> t!1173 result!873) b_and!1547)))

(assert (=> d!5221 t!1175))

(declare-fun b_and!1549 () Bool)

(assert (= b_and!1541 (and (=> t!1175 result!875) b_and!1549)))

(assert (=> d!5221 t!1177))

(declare-fun b_and!1551 () Bool)

(assert (= b_and!1543 (and (=> t!1177 result!877) b_and!1551)))

(assert (=> d!5221 t!1179))

(declare-fun b_and!1553 () Bool)

(assert (= b_and!1545 (and (=> t!1179 result!879) b_and!1553)))

(declare-fun b_lambda!3119 () Bool)

(assert (=> (not b_lambda!3119) (not b!6551)))

(assert (=> b!6551 t!1189))

(declare-fun b_and!1555 () Bool)

(assert (= b_and!1535 (and (=> t!1189 result!889) b_and!1555)))

(assert (=> b!6551 t!1191))

(declare-fun b_and!1557 () Bool)

(assert (= b_and!1537 (and (=> t!1191 result!891) b_and!1557)))

(declare-fun m!9395 () Bool)

(assert (=> d!5221 m!9395))

(assert (=> d!5221 m!9341))

(assert (=> b!6551 m!9349))

(assert (=> start!1100 d!5221))

(declare-fun d!5223 () Bool)

(declare-fun res!1798 () Bool)

(declare-fun e!3878 () Bool)

(assert (=> d!5223 (=> (not res!1798) (not e!3878))))

(assert (=> d!5223 (= res!1798 (= (dynLambda!92 (x!3532 that!333)) (dynLambda!92 (y!440 that!333))))))

(assert (=> d!5223 (= (inv!235 that!333) e!3878)))

(declare-fun b!6552 () Bool)

(assert (=> b!6552 (= e!3878 (dynLambda!93 (evidence!87 that!333)))))

(assert (= (and d!5223 res!1798) b!6552))

(declare-fun b_lambda!3121 () Bool)

(assert (=> (not b_lambda!3121) (not d!5223)))

(assert (=> d!5223 t!1181))

(declare-fun b_and!1559 () Bool)

(assert (= b_and!1547 (and (=> t!1181 result!881) b_and!1559)))

(assert (=> d!5223 t!1183))

(declare-fun b_and!1561 () Bool)

(assert (= b_and!1549 (and (=> t!1183 result!883) b_and!1561)))

(assert (=> d!5223 t!1185))

(declare-fun b_and!1563 () Bool)

(assert (= b_and!1551 (and (=> t!1185 result!885) b_and!1563)))

(assert (=> d!5223 t!1187))

(declare-fun b_and!1565 () Bool)

(assert (= b_and!1553 (and (=> t!1187 result!887) b_and!1565)))

(declare-fun b_lambda!3123 () Bool)

(assert (=> (not b_lambda!3123) (not d!5223)))

(declare-fun tb!861 () Bool)

(declare-fun t!1201 () Bool)

(assert (=> (and b!6522 (= (x!3532 thiss!1205) (y!440 that!333)) t!1201) tb!861))

(declare-fun result!901 () Bool)

(assert (=> tb!861 (= result!901 true)))

(assert (=> d!5223 t!1201))

(declare-fun b_and!1567 () Bool)

(assert (= b_and!1559 (and (=> t!1201 result!901) b_and!1567)))

(declare-fun t!1203 () Bool)

(declare-fun tb!863 () Bool)

(assert (=> (and b!6522 (= (y!440 thiss!1205) (y!440 that!333)) t!1203) tb!863))

(declare-fun result!903 () Bool)

(assert (=> tb!863 (= result!903 true)))

(assert (=> d!5223 t!1203))

(declare-fun b_and!1569 () Bool)

(assert (= b_and!1561 (and (=> t!1203 result!903) b_and!1569)))

(declare-fun t!1205 () Bool)

(declare-fun tb!865 () Bool)

(assert (=> (and b!6524 (= (x!3532 that!333) (y!440 that!333)) t!1205) tb!865))

(declare-fun result!905 () Bool)

(assert (=> tb!865 (= result!905 true)))

(assert (=> d!5223 t!1205))

(declare-fun b_and!1571 () Bool)

(assert (= b_and!1563 (and (=> t!1205 result!905) b_and!1571)))

(declare-fun t!1207 () Bool)

(declare-fun tb!867 () Bool)

(assert (=> (and b!6524 (= (y!440 that!333) (y!440 that!333)) t!1207) tb!867))

(declare-fun result!907 () Bool)

(assert (=> tb!867 (= result!907 true)))

(assert (=> d!5223 t!1207))

(declare-fun b_and!1573 () Bool)

(assert (= b_and!1565 (and (=> t!1207 result!907) b_and!1573)))

(declare-fun b_lambda!3125 () Bool)

(assert (=> (not b_lambda!3125) (not b!6552)))

(declare-fun t!1209 () Bool)

(declare-fun tb!869 () Bool)

(assert (=> (and b!6522 (= (evidence!87 thiss!1205) (evidence!87 that!333)) t!1209) tb!869))

(declare-fun result!909 () Bool)

(assert (=> tb!869 (= result!909 true)))

(assert (=> b!6552 t!1209))

(declare-fun b_and!1575 () Bool)

(assert (= b_and!1555 (and (=> t!1209 result!909) b_and!1575)))

(declare-fun t!1211 () Bool)

(declare-fun tb!871 () Bool)

(assert (=> (and b!6524 (= (evidence!87 that!333) (evidence!87 that!333)) t!1211) tb!871))

(declare-fun result!911 () Bool)

(assert (=> tb!871 (= result!911 true)))

(assert (=> b!6552 t!1211))

(declare-fun b_and!1577 () Bool)

(assert (= b_and!1557 (and (=> t!1211 result!911) b_and!1577)))

(assert (=> d!5223 m!9343))

(declare-fun m!9397 () Bool)

(assert (=> d!5223 m!9397))

(declare-fun m!9399 () Bool)

(assert (=> b!6552 m!9399))

(assert (=> start!1100 d!5223))

(assert (=> bs!1438 d!5207))

(assert (=> bs!1439 d!5213))

(assert (=> bs!1439 d!5215))

(declare-fun e!3881 () Bool)

(declare-fun b!6558 () Bool)

(declare-fun append!48 (List!132 List!132) List!132)

(assert (=> b!6558 (= e!3881 (= (foldRight!22 (map!134 xs!395 lambda!782) (Balance!52 0 0) lambda!781) (foldRight1!15 (append!48 (map!134 xs!395 lambda!782) (Cons!129 (Balance!52 0 0) Nil!130)) lambda!781)))))

(declare-fun lt!1384 () Bool)

(assert (=> b!6558 (= lt!1384 (foldRight_accumulator_equivalence!3 (tail!359 (map!134 xs!395 lambda!782)) (Balance!52 0 0) lambda!781))))

(declare-fun d!5225 () Bool)

(assert (=> d!5225 e!3881))

(declare-fun c!2408 () Bool)

(assert (=> d!5225 (= c!2408 (is-Nil!130 (map!134 xs!395 lambda!782)))))

(assert (=> d!5225 (= (foldRight_accumulator_equivalence!3 (map!134 xs!395 lambda!782) (Balance!52 0 0) lambda!781) true)))

(declare-fun b!6557 () Bool)

(assert (=> b!6557 (= e!3881 (= (foldRight!22 (map!134 xs!395 lambda!782) (Balance!52 0 0) lambda!781) (foldRight1!15 (append!48 (map!134 xs!395 lambda!782) (Cons!129 (Balance!52 0 0) Nil!130)) lambda!781)))))

(assert (= (and d!5225 c!2408) b!6557))

(assert (= (and d!5225 (not c!2408)) b!6558))

(assert (=> b!6558 m!9359))

(assert (=> b!6558 m!9361))

(assert (=> b!6558 m!9359))

(declare-fun m!9401 () Bool)

(assert (=> b!6558 m!9401))

(assert (=> b!6558 m!9401))

(declare-fun m!9403 () Bool)

(assert (=> b!6558 m!9403))

(declare-fun m!9405 () Bool)

(assert (=> b!6558 m!9405))

(assert (=> b!6557 m!9359))

(assert (=> b!6557 m!9361))

(assert (=> b!6557 m!9359))

(assert (=> b!6557 m!9401))

(assert (=> b!6557 m!9401))

(assert (=> b!6557 m!9403))

(assert (=> bs!1445 d!5225))

(assert (=> bs!1445 d!5215))

(assert (=> bs!1443 d!5217))

(declare-fun bs!1450 () Bool)

(declare-fun b!6563 () Bool)

(assert (= bs!1450 (and b!6563 b!6518)))

(declare-fun lambda!806 () Int)

(assert (=> bs!1450 (not (= lambda!806 lambda!777))))

(assert (=> bs!1450 (= lambda!806 lambda!778)))

(declare-fun bs!1451 () Bool)

(assert (= bs!1451 (and b!6563 d!5209)))

(assert (=> bs!1451 (not (= lambda!806 lambda!787))))

(declare-fun bs!1452 () Bool)

(assert (= bs!1452 (and b!6563 b!6523)))

(declare-fun lambda!807 () Int)

(assert (=> bs!1452 (= lambda!807 lambda!782)))

(declare-fun bs!1453 () Bool)

(assert (= bs!1453 (and b!6563 d!5211)))

(assert (=> bs!1453 (= lambda!807 lambda!792)))

(declare-fun lambda!808 () Int)

(assert (=> bs!1452 (= lambda!808 lambda!781)))

(assert (=> bs!1453 (= lambda!808 lambda!793)))

(declare-fun bs!1454 () Bool)

(declare-fun b!6564 () Bool)

(assert (= bs!1454 (and b!6564 b!6518)))

(declare-fun lambda!809 () Int)

(assert (=> bs!1454 (not (= lambda!809 lambda!777))))

(assert (=> bs!1454 (= lambda!809 lambda!778)))

(declare-fun bs!1455 () Bool)

(assert (= bs!1455 (and b!6564 d!5209)))

(assert (=> bs!1455 (not (= lambda!809 lambda!787))))

(declare-fun bs!1456 () Bool)

(assert (= bs!1456 (and b!6564 b!6563)))

(assert (=> bs!1456 (= lambda!809 lambda!806)))

(declare-fun bs!1457 () Bool)

(assert (= bs!1457 (and b!6564 b!6523)))

(declare-fun lambda!810 () Int)

(assert (=> bs!1457 (= lambda!810 lambda!782)))

(declare-fun bs!1458 () Bool)

(assert (= bs!1458 (and b!6564 d!5211)))

(assert (=> bs!1458 (= lambda!810 lambda!792)))

(assert (=> bs!1456 (= lambda!810 lambda!807)))

(declare-fun lambda!811 () Int)

(assert (=> bs!1457 (= lambda!811 lambda!781)))

(assert (=> bs!1458 (= lambda!811 lambda!793)))

(assert (=> bs!1456 (= lambda!811 lambda!808)))

(declare-fun e!3884 () Bool)

(assert (=> b!6564 (= e!3884 (= (foldRight!21 xs!395 (Balance!52 0 0) lambda!809) (foldRight!22 (map!134 xs!395 lambda!810) (Balance!52 0 0) lambda!811)))))

(declare-fun lt!1387 () Bool)

(assert (=> b!6564 (= lt!1387 (foldRight_map_commutivity!0 (tail!358 xs!395)))))

(declare-fun d!5227 () Bool)

(assert (=> d!5227 e!3884))

(declare-fun c!2411 () Bool)

(assert (=> d!5227 (= c!2411 (is-Nil!129 xs!395))))

(assert (=> d!5227 (= (foldRight_map_commutivity!0 xs!395) true)))

(assert (=> b!6563 (= e!3884 (= (foldRight!21 xs!395 (Balance!52 0 0) lambda!806) (foldRight!22 (map!134 xs!395 lambda!807) (Balance!52 0 0) lambda!808)))))

(assert (= (and d!5227 c!2411) b!6563))

(assert (= (and d!5227 (not c!2411)) b!6564))

(declare-fun m!9407 () Bool)

(assert (=> b!6564 m!9407))

(declare-fun m!9409 () Bool)

(assert (=> b!6564 m!9409))

(assert (=> b!6564 m!9409))

(declare-fun m!9411 () Bool)

(assert (=> b!6564 m!9411))

(declare-fun m!9413 () Bool)

(assert (=> b!6564 m!9413))

(declare-fun m!9415 () Bool)

(assert (=> b!6563 m!9415))

(declare-fun m!9417 () Bool)

(assert (=> b!6563 m!9417))

(assert (=> b!6563 m!9417))

(declare-fun m!9419 () Bool)

(assert (=> b!6563 m!9419))

(assert (=> bs!1444 d!5227))

(declare-fun b_lambda!3127 () Bool)

(assert (= b_lambda!3125 (or (and b!6518 (= lambda!780 (evidence!87 that!333))) (and b!6523 (= lambda!784 (evidence!87 that!333))) (and b!6522 b_free!279 (= (evidence!87 thiss!1205) (evidence!87 that!333))) (and b!6524 b_free!285) b_lambda!3127)))

(declare-fun bs!1459 () Bool)

(declare-fun d!5229 () Bool)

(assert (= bs!1459 (and d!5229 b!6518)))

(assert (=> bs!1459 (= (dynLambda!93 lambda!780) (foldRight_map_commutivity!0 xs!395))))

(assert (=> bs!1459 m!9365))

(assert (=> (and b!6518 (= lambda!780 (evidence!87 that!333)) b!6552) d!5229))

(declare-fun bs!1460 () Bool)

(declare-fun d!5231 () Bool)

(assert (= bs!1460 (and d!5231 b!6523)))

(assert (=> bs!1460 (= (dynLambda!93 lambda!784) (foldRight_accumulator_equivalence!3 (map!134 xs!395 lambda!782) (Balance!52 0 0) lambda!781))))

(assert (=> bs!1460 m!9359))

(assert (=> bs!1460 m!9359))

(assert (=> bs!1460 m!9367))

(assert (=> (and b!6523 (= lambda!784 (evidence!87 that!333)) b!6552) d!5231))

(declare-fun b_lambda!3129 () Bool)

(assert (= b_lambda!3117 (or (and b!6524 b_free!281 (= (x!3532 that!333) (y!440 thiss!1205))) (and b!6522 b_free!275 (= (x!3532 thiss!1205) (y!440 thiss!1205))) (and b!6523 (= lambda!783 (y!440 thiss!1205))) (and b!6524 b_free!283 (= (y!440 that!333) (y!440 thiss!1205))) (and b!6522 b_free!277) (and b!6518 (= lambda!776 (y!440 thiss!1205))) (and b!6518 (= lambda!779 (y!440 thiss!1205))) b_lambda!3129)))

(assert (=> (and b!6523 (= lambda!783 (y!440 thiss!1205)) d!5221) d!5197))

(assert (=> (and b!6518 (= lambda!779 (y!440 thiss!1205)) d!5221) d!5199))

(assert (=> (and b!6518 (= lambda!776 (y!440 thiss!1205)) d!5221) d!5201))

(declare-fun b_lambda!3131 () Bool)

(assert (= b_lambda!3111 (or b!6523 b_lambda!3131)))

(declare-fun bs!1461 () Bool)

(declare-fun d!5233 () Bool)

(assert (= bs!1461 (and d!5233 b!6523)))

(declare-fun fromParenthesis!0 (Parenthesis!24) Balance!51)

(assert (=> bs!1461 (= (dynLambda!96 lambda!782 (head!346 xs!395)) (fromParenthesis!0 (head!346 xs!395)))))

(declare-fun m!9421 () Bool)

(assert (=> bs!1461 m!9421))

(assert (=> b!6546 d!5233))

(declare-fun b_lambda!3133 () Bool)

(assert (= b_lambda!3123 (or (and b!6518 (= lambda!779 (y!440 that!333))) (and b!6518 (= lambda!776 (y!440 that!333))) (and b!6522 b_free!277 (= (y!440 thiss!1205) (y!440 that!333))) (and b!6523 (= lambda!783 (y!440 that!333))) (and b!6524 b_free!283) (and b!6522 b_free!275 (= (x!3532 thiss!1205) (y!440 that!333))) (and b!6524 b_free!281 (= (x!3532 that!333) (y!440 that!333))) b_lambda!3133)))

(declare-fun bs!1462 () Bool)

(declare-fun d!5235 () Bool)

(assert (= bs!1462 (and d!5235 b!6518)))

(assert (=> bs!1462 (= (dynLambda!92 lambda!779) (foldRight!21 xs!395 (Balance!52 0 0) lambda!778))))

(assert (=> bs!1462 m!9357))

(assert (=> (and b!6518 (= lambda!779 (y!440 that!333)) d!5223) d!5235))

(declare-fun bs!1463 () Bool)

(declare-fun d!5237 () Bool)

(assert (= bs!1463 (and d!5237 b!6518)))

(assert (=> bs!1463 (= (dynLambda!92 lambda!776) (foldRight!21 xs!395 (Balance!52 0 0) lambda!777))))

(assert (=> bs!1463 m!9363))

(assert (=> (and b!6518 (= lambda!776 (y!440 that!333)) d!5223) d!5237))

(declare-fun bs!1464 () Bool)

(declare-fun d!5239 () Bool)

(assert (= bs!1464 (and d!5239 b!6523)))

(assert (=> bs!1464 (= (dynLambda!92 lambda!783) (foldRight!22 (map!134 xs!395 lambda!782) (Balance!52 0 0) lambda!781))))

(assert (=> bs!1464 m!9359))

(assert (=> bs!1464 m!9359))

(assert (=> bs!1464 m!9361))

(assert (=> (and b!6523 (= lambda!783 (y!440 that!333)) d!5223) d!5239))

(declare-fun b_lambda!3135 () Bool)

(assert (= b_lambda!3121 (or (and b!6522 b_free!277 (= (y!440 thiss!1205) (x!3532 that!333))) (and b!6518 (= lambda!776 (x!3532 that!333))) (and b!6522 b_free!275 (= (x!3532 thiss!1205) (x!3532 that!333))) (and b!6524 b_free!281) (and b!6524 b_free!283 (= (y!440 that!333) (x!3532 that!333))) (and b!6523 (= lambda!783 (x!3532 that!333))) (and b!6518 (= lambda!779 (x!3532 that!333))) b_lambda!3135)))

(assert (=> (and b!6518 (= lambda!779 (x!3532 that!333)) d!5223) d!5191))

(assert (=> (and b!6523 (= lambda!783 (x!3532 that!333)) d!5223) d!5193))

(assert (=> (and b!6518 (= lambda!776 (x!3532 that!333)) d!5223) d!5195))

(declare-fun b_lambda!3137 () Bool)

(assert (= b_lambda!3115 (or (and b!6524 b_free!281 (= (x!3532 that!333) (x!3532 thiss!1205))) (and b!6518 (= lambda!776 (x!3532 thiss!1205))) (and b!6518 (= lambda!779 (x!3532 thiss!1205))) (and b!6522 b_free!275) (and b!6523 (= lambda!783 (x!3532 thiss!1205))) (and b!6524 b_free!283 (= (y!440 that!333) (x!3532 thiss!1205))) (and b!6522 b_free!277 (= (y!440 thiss!1205) (x!3532 thiss!1205))) b_lambda!3137)))

(declare-fun bs!1465 () Bool)

(declare-fun d!5241 () Bool)

(assert (= bs!1465 (and d!5241 b!6518)))

(assert (=> bs!1465 (= (dynLambda!92 lambda!776) (foldRight!21 xs!395 (Balance!52 0 0) lambda!777))))

(assert (=> bs!1465 m!9363))

(assert (=> (and b!6518 (= lambda!776 (x!3532 thiss!1205)) d!5221) d!5241))

(declare-fun bs!1466 () Bool)

(declare-fun d!5243 () Bool)

(assert (= bs!1466 (and d!5243 b!6523)))

(assert (=> bs!1466 (= (dynLambda!92 lambda!783) (foldRight!22 (map!134 xs!395 lambda!782) (Balance!52 0 0) lambda!781))))

(assert (=> bs!1466 m!9359))

(assert (=> bs!1466 m!9359))

(assert (=> bs!1466 m!9361))

(assert (=> (and b!6523 (= lambda!783 (x!3532 thiss!1205)) d!5221) d!5243))

(declare-fun bs!1467 () Bool)

(declare-fun d!5245 () Bool)

(assert (= bs!1467 (and d!5245 b!6518)))

(assert (=> bs!1467 (= (dynLambda!92 lambda!779) (foldRight!21 xs!395 (Balance!52 0 0) lambda!778))))

(assert (=> bs!1467 m!9357))

(assert (=> (and b!6518 (= lambda!779 (x!3532 thiss!1205)) d!5221) d!5245))

(declare-fun b_lambda!3139 () Bool)

(assert (= b_lambda!3107 (or b!6518 b_lambda!3139)))

(declare-fun bs!1468 () Bool)

(declare-fun d!5247 () Bool)

(assert (= bs!1468 (and d!5247 b!6518)))

(declare-fun ++!3 (Balance!51 Balance!51) Balance!51)

(assert (=> bs!1468 (= (dynLambda!94 lambda!778 (head!346 xs!395) (foldRight!21 (tail!358 xs!395) (Balance!52 0 0) lambda!778)) (++!3 (fromParenthesis!0 (head!346 xs!395)) (foldRight!21 (tail!358 xs!395) (Balance!52 0 0) lambda!778)))))

(assert (=> bs!1468 m!9421))

(assert (=> bs!1468 m!9421))

(assert (=> bs!1468 m!9369))

(declare-fun m!9423 () Bool)

(assert (=> bs!1468 m!9423))

(assert (=> b!6534 d!5247))

(declare-fun b_lambda!3141 () Bool)

(assert (= b_lambda!3109 (or b!6523 b_lambda!3141)))

(declare-fun bs!1469 () Bool)

(declare-fun d!5249 () Bool)

(assert (= bs!1469 (and d!5249 b!6523)))

(assert (=> bs!1469 (= (dynLambda!95 lambda!781 (head!347 (map!134 xs!395 lambda!782)) (foldRight!22 (tail!359 (map!134 xs!395 lambda!782)) (Balance!52 0 0) lambda!781)) (++!3 (head!347 (map!134 xs!395 lambda!782)) (foldRight!22 (tail!359 (map!134 xs!395 lambda!782)) (Balance!52 0 0) lambda!781)))))

(assert (=> bs!1469 m!9383))

(declare-fun m!9425 () Bool)

(assert (=> bs!1469 m!9425))

(assert (=> b!6540 d!5249))

(declare-fun b_lambda!3143 () Bool)

(assert (= b_lambda!3113 (or b!6518 b_lambda!3143)))

(declare-fun bs!1470 () Bool)

(declare-fun d!5251 () Bool)

(assert (= bs!1470 (and d!5251 b!6518)))

(declare-fun +$colon!0 (Balance!51 Parenthesis!24) Balance!51)

(assert (=> bs!1470 (= (dynLambda!94 lambda!777 (head!346 xs!395) (foldRight!21 (tail!358 xs!395) (Balance!52 0 0) lambda!777)) (+$colon!0 (foldRight!21 (tail!358 xs!395) (Balance!52 0 0) lambda!777) (head!346 xs!395)))))

(assert (=> bs!1470 m!9391))

(declare-fun m!9427 () Bool)

(assert (=> bs!1470 m!9427))

(assert (=> b!6548 d!5251))

(declare-fun b_lambda!3145 () Bool)

(assert (= b_lambda!3119 (or (and b!6518 (= lambda!780 (evidence!87 thiss!1205))) (and b!6523 (= lambda!784 (evidence!87 thiss!1205))) (and b!6522 b_free!279) (and b!6524 b_free!285 (= (evidence!87 that!333) (evidence!87 thiss!1205))) b_lambda!3145)))

(assert (=> (and b!6518 (= lambda!780 (evidence!87 thiss!1205)) b!6551) d!5203))

(assert (=> (and b!6523 (= lambda!784 (evidence!87 thiss!1205)) b!6551) d!5205))

(push 1)

(assert (not b!6534))

(assert (not b!6548))

(assert (not b_lambda!3137))

(assert (not bs!1461))

(assert (not d!5209))

(assert (not d!5211))

(assert b_and!1567)

(assert (not bs!1459))

(assert (not b_next!607))

(assert (not b_lambda!3141))

(assert (not bs!1462))

(assert (not b_lambda!3143))

(assert (not b_next!597))

(assert (not b_next!601))

(assert (not bs!1460))

(assert (not b!6546))

(assert (not b!6563))

(assert (not bs!1468))

(assert (not b_lambda!3129))

(assert (not b_lambda!3101))

(assert b_and!1573)

(assert (not bs!1467))

(assert (not b_lambda!3139))

(assert (not b_lambda!3135))

(assert (not b_next!599))

(assert (not bs!1464))

(assert (not b_lambda!3103))

(assert (not b_lambda!3127))

(assert b_and!1575)

(assert (not bs!1469))

(assert (not b!6540))

(assert (not bs!1470))

(assert (not bs!1463))

(assert (not b_lambda!3131))

(assert (not b!6558))

(assert (not b_next!603))

(assert (not b!6564))

(assert (not b!6557))

(assert b_and!1571)

(assert b_and!1577)

(assert (not b_lambda!3133))

(assert (not b_lambda!3105))

(assert (not bs!1465))

(assert b_and!1569)

(assert (not b_next!605))

(assert (not bs!1466))

(assert (not b_lambda!3145))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1567)

(assert (not b_next!607))

(assert (not b_next!597))

(assert (not b_next!601))

(assert b_and!1573)

(assert (not b_next!599))

(assert b_and!1575)

(assert (not b_next!603))

(assert b_and!1571)

(assert b_and!1577)

(assert b_and!1569)

(assert (not b_next!605))

(check-sat)

(pop 1)

