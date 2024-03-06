; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1170 () Bool)

(assert start!1170)

(declare-fun b!6774 () Bool)

(declare-fun b_free!355 () Bool)

(declare-fun b_next!741 () Bool)

(assert (=> b!6774 (= b_free!355 (not b_next!741))))

(declare-fun tp!665 () Bool)

(declare-fun b_and!1747 () Bool)

(assert (=> b!6774 (= tp!665 b_and!1747)))

(declare-fun b_free!357 () Bool)

(declare-fun b_next!743 () Bool)

(assert (=> b!6774 (= b_free!357 (not b_next!743))))

(declare-fun tp!664 () Bool)

(declare-fun b_and!1749 () Bool)

(assert (=> b!6774 (= tp!664 b_and!1749)))

(declare-fun b_free!359 () Bool)

(declare-fun b_next!745 () Bool)

(assert (=> b!6774 (= b_free!359 (not b_next!745))))

(declare-fun tp!663 () Bool)

(declare-fun b_and!1751 () Bool)

(assert (=> b!6774 (= tp!663 b_and!1751)))

(declare-fun b!6778 () Bool)

(declare-fun b_free!361 () Bool)

(declare-fun b_next!747 () Bool)

(assert (=> b!6778 (= b_free!361 (not b_next!747))))

(declare-fun tp!666 () Bool)

(declare-fun b_and!1753 () Bool)

(assert (=> b!6778 (= tp!666 b_and!1753)))

(declare-fun b_free!363 () Bool)

(declare-fun b_next!749 () Bool)

(assert (=> b!6778 (= b_free!363 (not b_next!749))))

(declare-fun tp!667 () Bool)

(declare-fun b_and!1755 () Bool)

(assert (=> b!6778 (= tp!667 b_and!1755)))

(declare-fun b!6775 () Bool)

(assert (=> b!6775 true))

(declare-fun lambda!982 () Int)

(declare-datatypes () ((Balance!65 (Balance!66 (extraOpen!73 Int) (extraClose!73 Int)))))

(declare-datatypes () ((EqEvidence!54 (EqEvidence!55 (x!3692 Int) (y!450 Int) (evidence!94 Int)))))

(declare-fun thiss!1203 () EqEvidence!54)

(declare-fun b_next!751 () Bool)

(assert (=> b!6774 (= b_next!741 (or (and b!6775 (= lambda!982 (x!3692 thiss!1203))) b_next!751))))

(declare-fun b_next!753 () Bool)

(assert (=> b!6774 (= b_next!743 (or (and b!6775 (= lambda!982 (y!450 thiss!1203))) b_next!753))))

(declare-fun b_next!755 () Bool)

(declare-datatypes () ((EqProof!28 (EqProof!29 (x!3693 Int) (y!451 Int)))))

(declare-fun that!349 () EqProof!28)

(assert (=> b!6778 (= b_next!747 (or (and b!6775 (= lambda!982 (x!3693 that!349))) b_next!755))))

(declare-fun b_next!757 () Bool)

(assert (=> b!6778 (= b_next!749 (or (and b!6775 (= lambda!982 (y!451 that!349))) b_next!757))))

(declare-fun lambda!986 () Int)

(assert (=> b!6775 (not (= lambda!986 lambda!982))))

(assert (=> b!6775 true))

(declare-fun b_next!759 () Bool)

(assert (=> b!6774 (= b_next!751 (or (and b!6775 (= lambda!986 (x!3692 thiss!1203))) b_next!759))))

(declare-fun b_next!761 () Bool)

(assert (=> b!6774 (= b_next!753 (or (and b!6775 (= lambda!986 (y!450 thiss!1203))) b_next!761))))

(declare-fun b_next!763 () Bool)

(assert (=> b!6778 (= b_next!755 (or (and b!6775 (= lambda!986 (x!3693 that!349))) b_next!763))))

(declare-fun b_next!765 () Bool)

(assert (=> b!6778 (= b_next!757 (or (and b!6775 (= lambda!986 (y!451 that!349))) b_next!765))))

(assert (=> b!6775 true))

(declare-fun lambda!987 () Int)

(declare-fun b_next!767 () Bool)

(assert (=> b!6774 (= b_next!745 (or (and b!6775 (= lambda!987 (evidence!94 thiss!1203))) b_next!767))))

(declare-fun bs!1530 () Bool)

(declare-fun b!6780 () Bool)

(assert (= bs!1530 (and b!6780 b!6775)))

(declare-fun lambda!988 () Int)

(assert (=> bs!1530 (not (= lambda!988 lambda!982))))

(assert (=> bs!1530 (not (= lambda!988 lambda!986))))

(assert (=> b!6780 true))

(declare-fun b_next!769 () Bool)

(assert (=> b!6774 (= b_next!759 (or (and b!6780 (= lambda!988 (x!3692 thiss!1203))) b_next!769))))

(declare-fun b_next!771 () Bool)

(assert (=> b!6774 (= b_next!761 (or (and b!6780 (= lambda!988 (y!450 thiss!1203))) b_next!771))))

(declare-fun b_next!773 () Bool)

(assert (=> b!6778 (= b_next!763 (or (and b!6780 (= lambda!988 (x!3693 that!349))) b_next!773))))

(declare-fun b_next!775 () Bool)

(assert (=> b!6778 (= b_next!765 (or (and b!6780 (= lambda!988 (y!451 that!349))) b_next!775))))

(declare-fun e!3995 () Bool)

(assert (=> b!6774 (= e!3995 (and tp!665 tp!664 tp!663))))

(declare-fun res!1891 () Bool)

(declare-fun e!3994 () Bool)

(assert (=> b!6775 (=> (not res!1891) (not e!3994))))

(assert (=> b!6775 (= res!1891 (= thiss!1203 (EqEvidence!55 lambda!982 lambda!986 lambda!987)))))

(declare-fun b!6776 () Bool)

(declare-fun dynLambda!105 (Int) Balance!65)

(assert (=> b!6776 (= e!3994 (not (= (dynLambda!105 (y!450 thiss!1203)) (dynLambda!105 (x!3693 that!349)))))))

(declare-fun b!6777 () Bool)

(declare-fun res!1889 () Bool)

(assert (=> b!6777 (=> (not res!1889) (not e!3994))))

(declare-datatypes () ((ProofOps!44 (ProofOps!45 (prop!131 Bool)))))

(declare-fun thiss!1201 () ProofOps!44)

(declare-datatypes () ((Parenthesis!27 (CloseParenthesis!26) (OpenParenthesis!26))))

(declare-datatypes () ((List!137 (Nil!135) (Cons!134 (head!352 Parenthesis!27) (tail!364 List!137)))))

(declare-fun xs!395 () List!137)

(declare-fun isMatchedSequential!0 (List!137) Bool)

(declare-fun isMatchedHybid!0 (List!137) Bool)

(assert (=> b!6777 (= res!1889 (= thiss!1201 (ProofOps!45 (= (isMatchedSequential!0 xs!395) (isMatchedHybid!0 xs!395)))))))

(declare-fun e!3996 () Bool)

(assert (=> b!6778 (= e!3996 (and tp!666 tp!667))))

(declare-fun res!1890 () Bool)

(assert (=> start!1170 (=> (not res!1890) (not e!3994))))

(declare-fun isEmpty!120 (List!137) Bool)

(assert (=> start!1170 (= res!1890 (not (isEmpty!120 xs!395)))))

(assert (=> start!1170 e!3994))

(assert (=> start!1170 true))

(declare-fun inv!245 (EqEvidence!54) Bool)

(assert (=> start!1170 (and (inv!245 thiss!1203) e!3995)))

(declare-fun inv!246 (EqProof!28) Bool)

(assert (=> start!1170 (and (inv!246 that!349) e!3996)))

(declare-fun b!6779 () Bool)

(declare-fun res!1892 () Bool)

(assert (=> b!6779 (=> (not res!1892) (not e!3994))))

(declare-fun dynLambda!106 (Int) Bool)

(assert (=> b!6779 (= res!1892 (dynLambda!106 (evidence!94 thiss!1203)))))

(declare-fun res!1888 () Bool)

(assert (=> b!6780 (=> (not res!1888) (not e!3994))))

(assert (=> b!6780 (= res!1888 (= that!349 (EqProof!29 lambda!988 lambda!988)))))

(assert (= (and start!1170 res!1890) b!6777))

(assert (= (and b!6777 res!1889) b!6775))

(assert (= (and b!6775 res!1891) b!6780))

(assert (= (and b!6780 res!1888) b!6779))

(assert (= (and b!6779 res!1892) b!6776))

(assert (= start!1170 b!6774))

(assert (= start!1170 b!6778))

(declare-fun b_lambda!3227 () Bool)

(assert (=> (not b_lambda!3227) (not b!6776)))

(declare-fun t!1293 () Bool)

(declare-fun tb!953 () Bool)

(assert (=> (and b!6774 (= (x!3692 thiss!1203) (y!450 thiss!1203)) t!1293) tb!953))

(declare-fun result!993 () Bool)

(assert (=> tb!953 (= result!993 true)))

(assert (=> b!6776 t!1293))

(declare-fun b_and!1757 () Bool)

(assert (= b_and!1747 (and (=> t!1293 result!993) b_and!1757)))

(declare-fun t!1295 () Bool)

(declare-fun tb!955 () Bool)

(assert (=> (and b!6774 (= (y!450 thiss!1203) (y!450 thiss!1203)) t!1295) tb!955))

(declare-fun result!995 () Bool)

(assert (=> tb!955 (= result!995 true)))

(assert (=> b!6776 t!1295))

(declare-fun b_and!1759 () Bool)

(assert (= b_and!1749 (and (=> t!1295 result!995) b_and!1759)))

(declare-fun tb!957 () Bool)

(declare-fun t!1297 () Bool)

(assert (=> (and b!6778 (= (x!3693 that!349) (y!450 thiss!1203)) t!1297) tb!957))

(declare-fun result!997 () Bool)

(assert (=> tb!957 (= result!997 true)))

(assert (=> b!6776 t!1297))

(declare-fun b_and!1761 () Bool)

(assert (= b_and!1753 (and (=> t!1297 result!997) b_and!1761)))

(declare-fun tb!959 () Bool)

(declare-fun t!1299 () Bool)

(assert (=> (and b!6778 (= (y!451 that!349) (y!450 thiss!1203)) t!1299) tb!959))

(declare-fun result!999 () Bool)

(assert (=> tb!959 (= result!999 true)))

(assert (=> b!6776 t!1299))

(declare-fun b_and!1763 () Bool)

(assert (= b_and!1755 (and (=> t!1299 result!999) b_and!1763)))

(declare-fun b_lambda!3229 () Bool)

(assert (=> (not b_lambda!3229) (not b!6776)))

(declare-fun tb!961 () Bool)

(declare-fun t!1301 () Bool)

(assert (=> (and b!6774 (= (x!3692 thiss!1203) (x!3693 that!349)) t!1301) tb!961))

(declare-fun result!1001 () Bool)

(assert (=> tb!961 (= result!1001 true)))

(assert (=> b!6776 t!1301))

(declare-fun b_and!1765 () Bool)

(assert (= b_and!1757 (and (=> t!1301 result!1001) b_and!1765)))

(declare-fun tb!963 () Bool)

(declare-fun t!1303 () Bool)

(assert (=> (and b!6774 (= (y!450 thiss!1203) (x!3693 that!349)) t!1303) tb!963))

(declare-fun result!1003 () Bool)

(assert (=> tb!963 (= result!1003 true)))

(assert (=> b!6776 t!1303))

(declare-fun b_and!1767 () Bool)

(assert (= b_and!1759 (and (=> t!1303 result!1003) b_and!1767)))

(declare-fun t!1305 () Bool)

(declare-fun tb!965 () Bool)

(assert (=> (and b!6778 (= (x!3693 that!349) (x!3693 that!349)) t!1305) tb!965))

(declare-fun result!1005 () Bool)

(assert (=> tb!965 (= result!1005 true)))

(assert (=> b!6776 t!1305))

(declare-fun b_and!1769 () Bool)

(assert (= b_and!1761 (and (=> t!1305 result!1005) b_and!1769)))

(declare-fun t!1307 () Bool)

(declare-fun tb!967 () Bool)

(assert (=> (and b!6778 (= (y!451 that!349) (x!3693 that!349)) t!1307) tb!967))

(declare-fun result!1007 () Bool)

(assert (=> tb!967 (= result!1007 true)))

(assert (=> b!6776 t!1307))

(declare-fun b_and!1771 () Bool)

(assert (= b_and!1763 (and (=> t!1307 result!1007) b_and!1771)))

(declare-fun b_lambda!3231 () Bool)

(assert (=> (not b_lambda!3231) (not b!6779)))

(declare-fun t!1309 () Bool)

(declare-fun tb!969 () Bool)

(assert (=> (and b!6774 (= (evidence!94 thiss!1203) (evidence!94 thiss!1203)) t!1309) tb!969))

(declare-fun result!1009 () Bool)

(assert (=> tb!969 (= result!1009 true)))

(assert (=> b!6779 t!1309))

(declare-fun b_and!1773 () Bool)

(assert (= b_and!1751 (and (=> t!1309 result!1009) b_and!1773)))

(declare-fun m!9605 () Bool)

(assert (=> b!6776 m!9605))

(declare-fun m!9607 () Bool)

(assert (=> b!6776 m!9607))

(declare-fun m!9609 () Bool)

(assert (=> b!6777 m!9609))

(declare-fun m!9611 () Bool)

(assert (=> b!6777 m!9611))

(declare-fun m!9613 () Bool)

(assert (=> start!1170 m!9613))

(declare-fun m!9615 () Bool)

(assert (=> start!1170 m!9615))

(declare-fun m!9617 () Bool)

(assert (=> start!1170 m!9617))

(declare-fun m!9619 () Bool)

(assert (=> b!6779 m!9619))

(push 1)

(assert (not b_next!775))

(assert b_and!1769)

(assert (not b_next!771))

(assert (not b_next!773))

(assert b_and!1771)

(assert (not b_next!769))

(assert (not b_lambda!3229))

(assert (not b_next!767))

(assert (not b!6777))

(assert b_and!1765)

(assert (not start!1170))

(assert (not b_lambda!3227))

(assert (not b_lambda!3231))

(assert b_and!1773)

(assert b_and!1767)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!775))

(assert b_and!1769)

(assert (not b_next!771))

(assert (not b_next!773))

(assert b_and!1771)

(assert (not b_next!769))

(assert (not b_next!767))

(assert b_and!1765)

(assert b_and!1773)

(assert b_and!1767)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3233 () Bool)

(assert (= b_lambda!3231 (or (and b!6775 (= lambda!987 (evidence!94 thiss!1203))) (and b!6774 b_free!359) b_lambda!3233)))

(declare-fun bs!1531 () Bool)

(declare-fun d!5367 () Bool)

(assert (= bs!1531 (and d!5367 b!6775)))

(declare-fun remove_null_balance!0 (List!137) Bool)

(assert (=> bs!1531 (= (dynLambda!106 lambda!987) (remove_null_balance!0 xs!395))))

(declare-fun m!9621 () Bool)

(assert (=> bs!1531 m!9621))

(assert (=> (and b!6775 (= lambda!987 (evidence!94 thiss!1203)) b!6779) d!5367))

(declare-fun b_lambda!3235 () Bool)

(assert (= b_lambda!3229 (or (and b!6774 b_free!355 (= (x!3692 thiss!1203) (x!3693 that!349))) (and b!6778 b_free!361) (and b!6778 b_free!363 (= (y!451 that!349) (x!3693 that!349))) (and b!6780 (= lambda!988 (x!3693 that!349))) (and b!6774 b_free!357 (= (y!450 thiss!1203) (x!3693 that!349))) (and b!6775 (= lambda!982 (x!3693 that!349))) (and b!6775 (= lambda!986 (x!3693 that!349))) b_lambda!3235)))

(declare-fun bs!1532 () Bool)

(declare-fun d!5369 () Bool)

(assert (= bs!1532 (and d!5369 b!6775)))

(declare-fun lambda!983 () Int)

(declare-fun foldRight!27 (List!137 Balance!65 Int) Balance!65)

(assert (=> bs!1532 (= (dynLambda!105 lambda!982) (foldRight!27 xs!395 (Balance!66 0 0) lambda!983))))

(declare-fun m!9623 () Bool)

(assert (=> bs!1532 m!9623))

(assert (=> (and b!6775 (= lambda!982 (x!3693 that!349)) b!6776) d!5369))

(declare-fun bs!1533 () Bool)

(declare-fun d!5371 () Bool)

(assert (= bs!1533 (and d!5371 b!6780)))

(declare-fun lambda!985 () Int)

(declare-fun lambda!984 () Int)

(declare-datatypes () ((List!138 (Nil!136) (Cons!135 (head!353 Balance!65) (tail!365 List!138)))))

(declare-fun foldRight1!18 (List!138 Int) Balance!65)

(declare-fun map!137 (List!137 Int) List!138)

(assert (=> bs!1533 (= (dynLambda!105 lambda!988) (foldRight1!18 (map!137 xs!395 lambda!985) lambda!984))))

(declare-fun m!9625 () Bool)

(assert (=> bs!1533 m!9625))

(assert (=> bs!1533 m!9625))

(declare-fun m!9627 () Bool)

(assert (=> bs!1533 m!9627))

(assert (=> (and b!6780 (= lambda!988 (x!3693 that!349)) b!6776) d!5371))

(declare-fun bs!1534 () Bool)

(declare-fun d!5373 () Bool)

(assert (= bs!1534 (and d!5373 b!6775)))

(declare-fun append!51 (List!138 List!138) List!138)

(assert (=> bs!1534 (= (dynLambda!105 lambda!986) (foldRight1!18 (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136)) lambda!984))))

(assert (=> bs!1534 m!9625))

(assert (=> bs!1534 m!9625))

(declare-fun m!9629 () Bool)

(assert (=> bs!1534 m!9629))

(assert (=> bs!1534 m!9629))

(declare-fun m!9631 () Bool)

(assert (=> bs!1534 m!9631))

(assert (=> (and b!6775 (= lambda!986 (x!3693 that!349)) b!6776) d!5373))

(declare-fun b_lambda!3237 () Bool)

(assert (= b_lambda!3227 (or (and b!6775 (= lambda!986 (y!450 thiss!1203))) (and b!6774 b_free!355 (= (x!3692 thiss!1203) (y!450 thiss!1203))) (and b!6774 b_free!357) (and b!6775 (= lambda!982 (y!450 thiss!1203))) (and b!6778 b_free!363 (= (y!451 that!349) (y!450 thiss!1203))) (and b!6778 b_free!361 (= (x!3693 that!349) (y!450 thiss!1203))) (and b!6780 (= lambda!988 (y!450 thiss!1203))) b_lambda!3237)))

(declare-fun bs!1535 () Bool)

(declare-fun d!5375 () Bool)

(assert (= bs!1535 (and d!5375 b!6775)))

(assert (=> bs!1535 (= (dynLambda!105 lambda!982) (foldRight!27 xs!395 (Balance!66 0 0) lambda!983))))

(assert (=> bs!1535 m!9623))

(assert (=> (and b!6775 (= lambda!982 (y!450 thiss!1203)) b!6776) d!5375))

(declare-fun bs!1536 () Bool)

(declare-fun d!5377 () Bool)

(assert (= bs!1536 (and d!5377 b!6780)))

(assert (=> bs!1536 (= (dynLambda!105 lambda!988) (foldRight1!18 (map!137 xs!395 lambda!985) lambda!984))))

(assert (=> bs!1536 m!9625))

(assert (=> bs!1536 m!9625))

(assert (=> bs!1536 m!9627))

(assert (=> (and b!6780 (= lambda!988 (y!450 thiss!1203)) b!6776) d!5377))

(declare-fun bs!1537 () Bool)

(declare-fun d!5379 () Bool)

(assert (= bs!1537 (and d!5379 b!6775)))

(assert (=> bs!1537 (= (dynLambda!105 lambda!986) (foldRight1!18 (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136)) lambda!984))))

(assert (=> bs!1537 m!9625))

(assert (=> bs!1537 m!9625))

(assert (=> bs!1537 m!9629))

(assert (=> bs!1537 m!9629))

(assert (=> bs!1537 m!9631))

(assert (=> (and b!6775 (= lambda!986 (y!450 thiss!1203)) b!6776) d!5379))

(push 1)

(assert (not bs!1534))

(assert (not b_next!775))

(assert b_and!1769)

(assert (not b_next!771))

(assert (not b_lambda!3235))

(assert (not b_next!773))

(assert b_and!1771)

(assert (not b_next!769))

(assert (not bs!1533))

(assert (not b_lambda!3237))

(assert (not b_next!767))

(assert (not b!6777))

(assert (not bs!1535))

(assert (not b_lambda!3233))

(assert b_and!1765)

(assert (not start!1170))

(assert (not bs!1531))

(assert (not bs!1537))

(assert b_and!1773)

(assert (not bs!1532))

(assert b_and!1767)

(assert (not bs!1536))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!775))

(assert b_and!1769)

(assert (not b_next!771))

(assert (not b_next!773))

(assert b_and!1771)

(assert (not b_next!769))

(assert (not b_next!767))

(assert b_and!1765)

(assert b_and!1773)

(assert b_and!1767)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5381 () Bool)

(declare-fun c!2468 () Bool)

(assert (=> d!5381 (= c!2468 (and (is-Cons!135 (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136))) (is-Nil!136 (tail!365 (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136))))))))

(declare-fun e!3999 () Balance!65)

(assert (=> d!5381 (= (foldRight1!18 (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136)) lambda!984) e!3999)))

(declare-fun b!6789 () Bool)

(assert (=> b!6789 (= e!3999 (head!353 (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136))))))

(declare-fun b!6790 () Bool)

(declare-fun dynLambda!107 (Int Balance!65 Balance!65) Balance!65)

(assert (=> b!6790 (= e!3999 (dynLambda!107 lambda!984 (head!353 (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136))) (foldRight1!18 (tail!365 (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136))) lambda!984)))))

(assert (= (and d!5381 c!2468) b!6789))

(assert (= (and d!5381 (not c!2468)) b!6790))

(declare-fun b_lambda!3239 () Bool)

(assert (=> (not b_lambda!3239) (not b!6790)))

(declare-fun m!9633 () Bool)

(assert (=> b!6790 m!9633))

(assert (=> b!6790 m!9633))

(declare-fun m!9635 () Bool)

(assert (=> b!6790 m!9635))

(assert (=> bs!1537 d!5381))

(declare-fun d!5383 () Bool)

(declare-fun c!2471 () Bool)

(assert (=> d!5383 (= c!2471 (is-Nil!136 (map!137 xs!395 lambda!985)))))

(declare-fun e!4002 () List!138)

(assert (=> d!5383 (= (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136)) e!4002)))

(declare-fun b!6795 () Bool)

(assert (=> b!6795 (= e!4002 (Cons!135 (Balance!66 0 0) Nil!136))))

(declare-fun b!6796 () Bool)

(assert (=> b!6796 (= e!4002 (Cons!135 (head!353 (map!137 xs!395 lambda!985)) (append!51 (tail!365 (map!137 xs!395 lambda!985)) (Cons!135 (Balance!66 0 0) Nil!136))))))

(assert (= (and d!5383 c!2471) b!6795))

(assert (= (and d!5383 (not c!2471)) b!6796))

(declare-fun m!9637 () Bool)

(assert (=> b!6796 m!9637))

(assert (=> bs!1537 d!5383))

(declare-fun d!5385 () Bool)

(declare-fun c!2474 () Bool)

(assert (=> d!5385 (= c!2474 (is-Nil!135 xs!395))))

(declare-fun e!4005 () List!138)

(assert (=> d!5385 (= (map!137 xs!395 lambda!985) e!4005)))

(declare-fun b!6801 () Bool)

(assert (=> b!6801 (= e!4005 Nil!136)))

(declare-fun b!6802 () Bool)

(declare-fun dynLambda!108 (Int Parenthesis!27) Balance!65)

(assert (=> b!6802 (= e!4005 (Cons!135 (dynLambda!108 lambda!985 (head!352 xs!395)) (map!137 (tail!364 xs!395) lambda!985)))))

(assert (= (and d!5385 c!2474) b!6801))

(assert (= (and d!5385 (not c!2474)) b!6802))

(declare-fun b_lambda!3241 () Bool)

(assert (=> (not b_lambda!3241) (not b!6802)))

(declare-fun m!9639 () Bool)

(assert (=> b!6802 m!9639))

(declare-fun m!9641 () Bool)

(assert (=> b!6802 m!9641))

(assert (=> bs!1537 d!5385))

(assert (=> bs!1534 d!5381))

(assert (=> bs!1534 d!5383))

(assert (=> bs!1534 d!5385))

(declare-fun bs!1538 () Bool)

(declare-fun d!5387 () Bool)

(assert (= bs!1538 (and d!5387 b!6775)))

(declare-fun lambda!1013 () Int)

(assert (=> bs!1538 (= lambda!1013 lambda!985)))

(declare-fun lambda!1014 () Int)

(assert (=> bs!1538 (= lambda!1014 lambda!984)))

(declare-fun b!6823 () Bool)

(declare-fun e!4017 () Int)

(assert (=> b!6823 (= e!4017 lambda!1014)))

(declare-fun b!6824 () Bool)

(declare-fun e!4020 () Int)

(assert (=> b!6824 (= e!4020 lambda!1013)))

(declare-fun b!6825 () Bool)

(declare-fun e!4019 () List!138)

(declare-fun res!1913 () List!138)

(assert (=> b!6825 (= e!4019 res!1913)))

(assert (=> b!6825 true))

(declare-fun b!6826 () Bool)

(declare-fun e!4018 () Balance!65)

(declare-fun res!1912 () Balance!65)

(assert (=> b!6826 (= e!4018 res!1912)))

(assert (=> b!6826 true))

(assert (=> b!6826 true))

(declare-fun b!6827 () Bool)

(assert (=> b!6827 (= e!4018 (foldRight1!18 e!4019 e!4017))))

(declare-fun c!2488 () Bool)

(declare-fun lt!1418 () Bool)

(assert (=> b!6827 (= c!2488 lt!1418)))

(declare-fun c!2487 () Bool)

(declare-fun lt!1420 () Bool)

(assert (=> b!6827 (= c!2487 (or lt!1420 (not lt!1420)))))

(declare-fun e!4016 () Bool)

(declare-fun because!2 (ProofOps!44 Bool) Bool)

(assert (=> d!5387 (because!2 (ProofOps!45 (= (foldRight1!18 (append!51 (map!137 xs!395 lambda!1013) (Cons!135 (Balance!66 0 0) Nil!136)) lambda!1014) (foldRight1!18 (map!137 xs!395 lambda!1013) lambda!1014))) e!4016)))

(declare-fun c!2486 () Bool)

(assert (=> d!5387 (= c!2486 lt!1420)))

(declare-fun lt!1419 () Balance!65)

(assert (=> d!5387 (= lt!1419 e!4018)))

(declare-fun c!2489 () Bool)

(assert (=> d!5387 (= c!2489 (or lt!1418 (not lt!1420)))))

(assert (=> d!5387 (= lt!1418 lt!1420)))

(assert (=> d!5387 (= lt!1420 (and (is-Cons!134 xs!395) (is-Nil!135 (tail!364 xs!395))))))

(assert (=> d!5387 (not (isEmpty!120 xs!395))))

(assert (=> d!5387 (= (remove_null_balance!0 xs!395) true)))

(declare-fun b!6828 () Bool)

(assert (=> b!6828 (= e!4020 lambda!1013)))

(declare-fun b!6829 () Bool)

(assert (=> b!6829 (= e!4019 (append!51 (map!137 xs!395 e!4020) (Cons!135 (Balance!66 0 0) Nil!136)))))

(declare-fun c!2485 () Bool)

(assert (=> b!6829 (= c!2485 lt!1420)))

(declare-fun b!6830 () Bool)

(assert (=> b!6830 (= e!4016 true)))

(assert (=> b!6830 (= lt!1419 (foldRight1!18 (map!137 xs!395 lambda!1013) lambda!1014))))

(declare-fun b!6831 () Bool)

(assert (=> b!6831 (= e!4017 lambda!1014)))

(declare-fun b!6832 () Bool)

(assert (=> b!6832 (= e!4016 true)))

(assert (=> b!6832 (= lt!1419 (foldRight1!18 (map!137 xs!395 lambda!1013) lambda!1014))))

(assert (= (and b!6829 c!2485) b!6828))

(assert (= (and b!6829 (not c!2485)) b!6824))

(assert (= (and b!6827 c!2487) b!6829))

(assert (= (and b!6827 (not c!2487)) b!6825))

(assert (= (and b!6827 c!2488) b!6831))

(assert (= (and b!6827 (not c!2488)) b!6823))

(assert (= (and d!5387 c!2489) b!6827))

(assert (= (and d!5387 (not c!2489)) b!6826))

(assert (= (and d!5387 c!2486) b!6832))

(assert (= (and d!5387 (not c!2486)) b!6830))

(declare-fun m!9643 () Bool)

(assert (=> b!6830 m!9643))

(assert (=> b!6830 m!9643))

(declare-fun m!9645 () Bool)

(assert (=> b!6830 m!9645))

(assert (=> d!5387 m!9643))

(declare-fun m!9647 () Bool)

(assert (=> d!5387 m!9647))

(assert (=> d!5387 m!9613))

(assert (=> d!5387 m!9643))

(assert (=> d!5387 m!9647))

(declare-fun m!9649 () Bool)

(assert (=> d!5387 m!9649))

(declare-fun m!9651 () Bool)

(assert (=> d!5387 m!9651))

(assert (=> d!5387 m!9643))

(assert (=> d!5387 m!9643))

(assert (=> d!5387 m!9645))

(assert (=> b!6832 m!9643))

(assert (=> b!6832 m!9643))

(assert (=> b!6832 m!9645))

(declare-fun m!9653 () Bool)

(assert (=> b!6829 m!9653))

(assert (=> b!6829 m!9653))

(declare-fun m!9655 () Bool)

(assert (=> b!6829 m!9655))

(declare-fun m!9657 () Bool)

(assert (=> b!6827 m!9657))

(assert (=> bs!1531 d!5387))

(declare-fun d!5389 () Bool)

(declare-fun c!2490 () Bool)

(assert (=> d!5389 (= c!2490 (and (is-Cons!135 (map!137 xs!395 lambda!985)) (is-Nil!136 (tail!365 (map!137 xs!395 lambda!985)))))))

(declare-fun e!4021 () Balance!65)

(assert (=> d!5389 (= (foldRight1!18 (map!137 xs!395 lambda!985) lambda!984) e!4021)))

(declare-fun b!6833 () Bool)

(assert (=> b!6833 (= e!4021 (head!353 (map!137 xs!395 lambda!985)))))

(declare-fun b!6834 () Bool)

(assert (=> b!6834 (= e!4021 (dynLambda!107 lambda!984 (head!353 (map!137 xs!395 lambda!985)) (foldRight1!18 (tail!365 (map!137 xs!395 lambda!985)) lambda!984)))))

(assert (= (and d!5389 c!2490) b!6833))

(assert (= (and d!5389 (not c!2490)) b!6834))

(declare-fun b_lambda!3243 () Bool)

(assert (=> (not b_lambda!3243) (not b!6834)))

(declare-fun m!9659 () Bool)

(assert (=> b!6834 m!9659))

(assert (=> b!6834 m!9659))

(declare-fun m!9661 () Bool)

(assert (=> b!6834 m!9661))

(assert (=> bs!1533 d!5389))

(assert (=> bs!1533 d!5385))

(declare-fun d!5391 () Bool)

(declare-fun c!2493 () Bool)

(assert (=> d!5391 (= c!2493 (is-Nil!135 xs!395))))

(declare-fun e!4024 () Balance!65)

(assert (=> d!5391 (= (foldRight!27 xs!395 (Balance!66 0 0) lambda!983) e!4024)))

(declare-fun b!6839 () Bool)

(assert (=> b!6839 (= e!4024 (Balance!66 0 0))))

(declare-fun b!6840 () Bool)

(declare-fun dynLambda!109 (Int Parenthesis!27 Balance!65) Balance!65)

(assert (=> b!6840 (= e!4024 (dynLambda!109 lambda!983 (head!352 xs!395) (foldRight!27 (tail!364 xs!395) (Balance!66 0 0) lambda!983)))))

(assert (= (and d!5391 c!2493) b!6839))

(assert (= (and d!5391 (not c!2493)) b!6840))

(declare-fun b_lambda!3245 () Bool)

(assert (=> (not b_lambda!3245) (not b!6840)))

(declare-fun m!9663 () Bool)

(assert (=> b!6840 m!9663))

(assert (=> b!6840 m!9663))

(declare-fun m!9665 () Bool)

(assert (=> b!6840 m!9665))

(assert (=> bs!1535 d!5391))

(assert (=> bs!1532 d!5391))

(assert (=> bs!1536 d!5389))

(assert (=> bs!1536 d!5385))

(declare-fun bs!1539 () Bool)

(declare-fun d!5393 () Bool)

(assert (= bs!1539 (and d!5393 b!6775)))

(declare-fun lambda!1017 () Int)

(assert (=> bs!1539 (= lambda!1017 lambda!983)))

(declare-fun isBalanced!0 (Balance!65) Bool)

(assert (=> d!5393 (= (isMatchedSequential!0 xs!395) (isBalanced!0 (foldRight!27 xs!395 (Balance!66 0 0) lambda!1017)))))

(declare-fun bs!1540 () Bool)

(assert (= bs!1540 d!5393))

(declare-fun m!9667 () Bool)

(assert (=> bs!1540 m!9667))

(assert (=> bs!1540 m!9667))

(declare-fun m!9669 () Bool)

(assert (=> bs!1540 m!9669))

(assert (=> b!6777 d!5393))

(declare-fun bs!1541 () Bool)

(declare-fun d!5395 () Bool)

(assert (= bs!1541 (and d!5395 b!6775)))

(declare-fun lambda!1022 () Int)

(assert (=> bs!1541 (= lambda!1022 lambda!985)))

(declare-fun bs!1542 () Bool)

(assert (= bs!1542 (and d!5395 d!5387)))

(assert (=> bs!1542 (= lambda!1022 lambda!1013)))

(declare-fun lambda!1023 () Int)

(assert (=> bs!1541 (= lambda!1023 lambda!984)))

(assert (=> bs!1542 (= lambda!1023 lambda!1014)))

(assert (=> d!5395 (= (isMatchedHybid!0 xs!395) (isBalanced!0 (foldRight1!18 (map!137 xs!395 lambda!1022) lambda!1023)))))

(declare-fun bs!1543 () Bool)

(assert (= bs!1543 d!5395))

(declare-fun m!9671 () Bool)

(assert (=> bs!1543 m!9671))

(assert (=> bs!1543 m!9671))

(declare-fun m!9673 () Bool)

(assert (=> bs!1543 m!9673))

(assert (=> bs!1543 m!9673))

(declare-fun m!9675 () Bool)

(assert (=> bs!1543 m!9675))

(assert (=> b!6777 d!5395))

(declare-fun d!5397 () Bool)

(assert (=> d!5397 (= (isEmpty!120 xs!395) (is-Nil!135 xs!395))))

(assert (=> start!1170 d!5397))

(declare-fun d!5399 () Bool)

(declare-fun res!1916 () Bool)

(declare-fun e!4027 () Bool)

(assert (=> d!5399 (=> (not res!1916) (not e!4027))))

(assert (=> d!5399 (= res!1916 (= (dynLambda!105 (x!3692 thiss!1203)) (dynLambda!105 (y!450 thiss!1203))))))

(assert (=> d!5399 (= (inv!245 thiss!1203) e!4027)))

(declare-fun b!6843 () Bool)

(assert (=> b!6843 (= e!4027 (dynLambda!106 (evidence!94 thiss!1203)))))

(assert (= (and d!5399 res!1916) b!6843))

(declare-fun b_lambda!3247 () Bool)

(assert (=> (not b_lambda!3247) (not d!5399)))

(declare-fun t!1311 () Bool)

(declare-fun tb!971 () Bool)

(assert (=> (and b!6774 (= (x!3692 thiss!1203) (x!3692 thiss!1203)) t!1311) tb!971))

(declare-fun result!1011 () Bool)

(assert (=> tb!971 (= result!1011 true)))

(assert (=> d!5399 t!1311))

(declare-fun b_and!1775 () Bool)

(assert (= b_and!1765 (and (=> t!1311 result!1011) b_and!1775)))

(declare-fun t!1313 () Bool)

(declare-fun tb!973 () Bool)

(assert (=> (and b!6774 (= (y!450 thiss!1203) (x!3692 thiss!1203)) t!1313) tb!973))

(declare-fun result!1013 () Bool)

(assert (=> tb!973 (= result!1013 true)))

(assert (=> d!5399 t!1313))

(declare-fun b_and!1777 () Bool)

(assert (= b_and!1767 (and (=> t!1313 result!1013) b_and!1777)))

(declare-fun tb!975 () Bool)

(declare-fun t!1315 () Bool)

(assert (=> (and b!6778 (= (x!3693 that!349) (x!3692 thiss!1203)) t!1315) tb!975))

(declare-fun result!1015 () Bool)

(assert (=> tb!975 (= result!1015 true)))

(assert (=> d!5399 t!1315))

(declare-fun b_and!1779 () Bool)

(assert (= b_and!1769 (and (=> t!1315 result!1015) b_and!1779)))

(declare-fun t!1317 () Bool)

(declare-fun tb!977 () Bool)

(assert (=> (and b!6778 (= (y!451 that!349) (x!3692 thiss!1203)) t!1317) tb!977))

(declare-fun result!1017 () Bool)

(assert (=> tb!977 (= result!1017 true)))

(assert (=> d!5399 t!1317))

(declare-fun b_and!1781 () Bool)

(assert (= b_and!1771 (and (=> t!1317 result!1017) b_and!1781)))

(declare-fun b_lambda!3249 () Bool)

(assert (=> (not b_lambda!3249) (not d!5399)))

(assert (=> d!5399 t!1293))

(declare-fun b_and!1783 () Bool)

(assert (= b_and!1775 (and (=> t!1293 result!993) b_and!1783)))

(assert (=> d!5399 t!1295))

(declare-fun b_and!1785 () Bool)

(assert (= b_and!1777 (and (=> t!1295 result!995) b_and!1785)))

(assert (=> d!5399 t!1297))

(declare-fun b_and!1787 () Bool)

(assert (= b_and!1779 (and (=> t!1297 result!997) b_and!1787)))

(assert (=> d!5399 t!1299))

(declare-fun b_and!1789 () Bool)

(assert (= b_and!1781 (and (=> t!1299 result!999) b_and!1789)))

(declare-fun b_lambda!3251 () Bool)

(assert (=> (not b_lambda!3251) (not b!6843)))

(assert (=> b!6843 t!1309))

(declare-fun b_and!1791 () Bool)

(assert (= b_and!1773 (and (=> t!1309 result!1009) b_and!1791)))

(declare-fun m!9677 () Bool)

(assert (=> d!5399 m!9677))

(assert (=> d!5399 m!9605))

(assert (=> b!6843 m!9619))

(assert (=> start!1170 d!5399))

(declare-fun d!5401 () Bool)

(assert (=> d!5401 (= (inv!246 that!349) (= (dynLambda!105 (x!3693 that!349)) (dynLambda!105 (y!451 that!349))))))

(declare-fun b_lambda!3253 () Bool)

(assert (=> (not b_lambda!3253) (not d!5401)))

(assert (=> d!5401 t!1301))

(declare-fun b_and!1793 () Bool)

(assert (= b_and!1783 (and (=> t!1301 result!1001) b_and!1793)))

(assert (=> d!5401 t!1303))

(declare-fun b_and!1795 () Bool)

(assert (= b_and!1785 (and (=> t!1303 result!1003) b_and!1795)))

(assert (=> d!5401 t!1305))

(declare-fun b_and!1797 () Bool)

(assert (= b_and!1787 (and (=> t!1305 result!1005) b_and!1797)))

(assert (=> d!5401 t!1307))

(declare-fun b_and!1799 () Bool)

(assert (= b_and!1789 (and (=> t!1307 result!1007) b_and!1799)))

(declare-fun b_lambda!3255 () Bool)

(assert (=> (not b_lambda!3255) (not d!5401)))

(declare-fun t!1319 () Bool)

(declare-fun tb!979 () Bool)

(assert (=> (and b!6774 (= (x!3692 thiss!1203) (y!451 that!349)) t!1319) tb!979))

(declare-fun result!1019 () Bool)

(assert (=> tb!979 (= result!1019 true)))

(assert (=> d!5401 t!1319))

(declare-fun b_and!1801 () Bool)

(assert (= b_and!1793 (and (=> t!1319 result!1019) b_and!1801)))

(declare-fun tb!981 () Bool)

(declare-fun t!1321 () Bool)

(assert (=> (and b!6774 (= (y!450 thiss!1203) (y!451 that!349)) t!1321) tb!981))

(declare-fun result!1021 () Bool)

(assert (=> tb!981 (= result!1021 true)))

(assert (=> d!5401 t!1321))

(declare-fun b_and!1803 () Bool)

(assert (= b_and!1795 (and (=> t!1321 result!1021) b_and!1803)))

(declare-fun t!1323 () Bool)

(declare-fun tb!983 () Bool)

(assert (=> (and b!6778 (= (x!3693 that!349) (y!451 that!349)) t!1323) tb!983))

(declare-fun result!1023 () Bool)

(assert (=> tb!983 (= result!1023 true)))

(assert (=> d!5401 t!1323))

(declare-fun b_and!1805 () Bool)

(assert (= b_and!1797 (and (=> t!1323 result!1023) b_and!1805)))

(declare-fun t!1325 () Bool)

(declare-fun tb!985 () Bool)

(assert (=> (and b!6778 (= (y!451 that!349) (y!451 that!349)) t!1325) tb!985))

(declare-fun result!1025 () Bool)

(assert (=> tb!985 (= result!1025 true)))

(assert (=> d!5401 t!1325))

(declare-fun b_and!1807 () Bool)

(assert (= b_and!1799 (and (=> t!1325 result!1025) b_and!1807)))

(assert (=> d!5401 m!9607))

(declare-fun m!9679 () Bool)

(assert (=> d!5401 m!9679))

(assert (=> start!1170 d!5401))

(declare-fun b_lambda!3257 () Bool)

(assert (= b_lambda!3255 (or (and b!6780 (= lambda!988 (y!451 that!349))) (and b!6774 b_free!357 (= (y!450 thiss!1203) (y!451 that!349))) (and b!6775 (= lambda!982 (y!451 that!349))) (and b!6775 (= lambda!986 (y!451 that!349))) (and b!6778 b_free!363) (and b!6778 b_free!361 (= (x!3693 that!349) (y!451 that!349))) (and b!6774 b_free!355 (= (x!3692 thiss!1203) (y!451 that!349))) b_lambda!3257)))

(declare-fun bs!1544 () Bool)

(declare-fun d!5403 () Bool)

(assert (= bs!1544 (and d!5403 b!6775)))

(assert (=> bs!1544 (= (dynLambda!105 lambda!986) (foldRight1!18 (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136)) lambda!984))))

(assert (=> bs!1544 m!9625))

(assert (=> bs!1544 m!9625))

(assert (=> bs!1544 m!9629))

(assert (=> bs!1544 m!9629))

(assert (=> bs!1544 m!9631))

(assert (=> (and b!6775 (= lambda!986 (y!451 that!349)) d!5401) d!5403))

(declare-fun bs!1545 () Bool)

(declare-fun d!5405 () Bool)

(assert (= bs!1545 (and d!5405 b!6775)))

(assert (=> bs!1545 (= (dynLambda!105 lambda!982) (foldRight!27 xs!395 (Balance!66 0 0) lambda!983))))

(assert (=> bs!1545 m!9623))

(assert (=> (and b!6775 (= lambda!982 (y!451 that!349)) d!5401) d!5405))

(declare-fun bs!1546 () Bool)

(declare-fun d!5407 () Bool)

(assert (= bs!1546 (and d!5407 b!6780)))

(assert (=> bs!1546 (= (dynLambda!105 lambda!988) (foldRight1!18 (map!137 xs!395 lambda!985) lambda!984))))

(assert (=> bs!1546 m!9625))

(assert (=> bs!1546 m!9625))

(assert (=> bs!1546 m!9627))

(assert (=> (and b!6780 (= lambda!988 (y!451 that!349)) d!5401) d!5407))

(declare-fun b_lambda!3259 () Bool)

(assert (= b_lambda!3251 (or (and b!6775 (= lambda!987 (evidence!94 thiss!1203))) (and b!6774 b_free!359) b_lambda!3259)))

(assert (=> (and b!6775 (= lambda!987 (evidence!94 thiss!1203)) b!6843) d!5367))

(declare-fun b_lambda!3261 () Bool)

(assert (= b_lambda!3253 (or (and b!6774 b_free!355 (= (x!3692 thiss!1203) (x!3693 that!349))) (and b!6778 b_free!361) (and b!6778 b_free!363 (= (y!451 that!349) (x!3693 that!349))) (and b!6780 (= lambda!988 (x!3693 that!349))) (and b!6774 b_free!357 (= (y!450 thiss!1203) (x!3693 that!349))) (and b!6775 (= lambda!982 (x!3693 that!349))) (and b!6775 (= lambda!986 (x!3693 that!349))) b_lambda!3261)))

(assert (=> (and b!6775 (= lambda!982 (x!3693 that!349)) d!5401) d!5369))

(assert (=> (and b!6780 (= lambda!988 (x!3693 that!349)) d!5401) d!5371))

(assert (=> (and b!6775 (= lambda!986 (x!3693 that!349)) d!5401) d!5373))

(declare-fun b_lambda!3263 () Bool)

(assert (= b_lambda!3245 (or b!6775 b_lambda!3263)))

(declare-fun bs!1547 () Bool)

(declare-fun d!5409 () Bool)

(assert (= bs!1547 (and d!5409 b!6775)))

(declare-fun +$colon!0 (Balance!65 Parenthesis!27) Balance!65)

(assert (=> bs!1547 (= (dynLambda!109 lambda!983 (head!352 xs!395) (foldRight!27 (tail!364 xs!395) (Balance!66 0 0) lambda!983)) (+$colon!0 (foldRight!27 (tail!364 xs!395) (Balance!66 0 0) lambda!983) (head!352 xs!395)))))

(assert (=> bs!1547 m!9663))

(declare-fun m!9681 () Bool)

(assert (=> bs!1547 m!9681))

(assert (=> b!6840 d!5409))

(declare-fun b_lambda!3265 () Bool)

(assert (= b_lambda!3239 (or b!6775 b_lambda!3265)))

(declare-fun bs!1548 () Bool)

(declare-fun d!5411 () Bool)

(assert (= bs!1548 (and d!5411 b!6775)))

(declare-fun ++!3 (Balance!65 Balance!65) Balance!65)

(assert (=> bs!1548 (= (dynLambda!107 lambda!984 (head!353 (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136))) (foldRight1!18 (tail!365 (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136))) lambda!984)) (++!3 (head!353 (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136))) (foldRight1!18 (tail!365 (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136))) lambda!984)))))

(assert (=> bs!1548 m!9633))

(declare-fun m!9683 () Bool)

(assert (=> bs!1548 m!9683))

(assert (=> b!6790 d!5411))

(declare-fun b_lambda!3267 () Bool)

(assert (= b_lambda!3247 (or (and b!6774 b_free!357 (= (y!450 thiss!1203) (x!3692 thiss!1203))) (and b!6775 (= lambda!982 (x!3692 thiss!1203))) (and b!6778 b_free!363 (= (y!451 that!349) (x!3692 thiss!1203))) (and b!6778 b_free!361 (= (x!3693 that!349) (x!3692 thiss!1203))) (and b!6780 (= lambda!988 (x!3692 thiss!1203))) (and b!6775 (= lambda!986 (x!3692 thiss!1203))) (and b!6774 b_free!355) b_lambda!3267)))

(declare-fun bs!1549 () Bool)

(declare-fun d!5413 () Bool)

(assert (= bs!1549 (and d!5413 b!6775)))

(assert (=> bs!1549 (= (dynLambda!105 lambda!982) (foldRight!27 xs!395 (Balance!66 0 0) lambda!983))))

(assert (=> bs!1549 m!9623))

(assert (=> (and b!6775 (= lambda!982 (x!3692 thiss!1203)) d!5399) d!5413))

(declare-fun bs!1550 () Bool)

(declare-fun d!5415 () Bool)

(assert (= bs!1550 (and d!5415 b!6780)))

(assert (=> bs!1550 (= (dynLambda!105 lambda!988) (foldRight1!18 (map!137 xs!395 lambda!985) lambda!984))))

(assert (=> bs!1550 m!9625))

(assert (=> bs!1550 m!9625))

(assert (=> bs!1550 m!9627))

(assert (=> (and b!6780 (= lambda!988 (x!3692 thiss!1203)) d!5399) d!5415))

(declare-fun bs!1551 () Bool)

(declare-fun d!5417 () Bool)

(assert (= bs!1551 (and d!5417 b!6775)))

(assert (=> bs!1551 (= (dynLambda!105 lambda!986) (foldRight1!18 (append!51 (map!137 xs!395 lambda!985) (Cons!135 (Balance!66 0 0) Nil!136)) lambda!984))))

(assert (=> bs!1551 m!9625))

(assert (=> bs!1551 m!9625))

(assert (=> bs!1551 m!9629))

(assert (=> bs!1551 m!9629))

(assert (=> bs!1551 m!9631))

(assert (=> (and b!6775 (= lambda!986 (x!3692 thiss!1203)) d!5399) d!5417))

(declare-fun b_lambda!3269 () Bool)

(assert (= b_lambda!3243 (or b!6775 b_lambda!3269)))

(declare-fun bs!1552 () Bool)

(declare-fun d!5419 () Bool)

(assert (= bs!1552 (and d!5419 b!6775)))

(assert (=> bs!1552 (= (dynLambda!107 lambda!984 (head!353 (map!137 xs!395 lambda!985)) (foldRight1!18 (tail!365 (map!137 xs!395 lambda!985)) lambda!984)) (++!3 (head!353 (map!137 xs!395 lambda!985)) (foldRight1!18 (tail!365 (map!137 xs!395 lambda!985)) lambda!984)))))

(assert (=> bs!1552 m!9659))

(declare-fun m!9685 () Bool)

(assert (=> bs!1552 m!9685))

(assert (=> b!6834 d!5419))

(declare-fun b_lambda!3271 () Bool)

(assert (= b_lambda!3241 (or b!6775 b_lambda!3271)))

(declare-fun bs!1553 () Bool)

(declare-fun d!5421 () Bool)

(assert (= bs!1553 (and d!5421 b!6775)))

(declare-fun fromParenthesis!0 (Parenthesis!27) Balance!65)

(assert (=> bs!1553 (= (dynLambda!108 lambda!985 (head!352 xs!395)) (fromParenthesis!0 (head!352 xs!395)))))

(declare-fun m!9687 () Bool)

(assert (=> bs!1553 m!9687))

(assert (=> b!6802 d!5421))

(declare-fun b_lambda!3273 () Bool)

(assert (= b_lambda!3249 (or (and b!6775 (= lambda!986 (y!450 thiss!1203))) (and b!6774 b_free!355 (= (x!3692 thiss!1203) (y!450 thiss!1203))) (and b!6774 b_free!357) (and b!6775 (= lambda!982 (y!450 thiss!1203))) (and b!6778 b_free!363 (= (y!451 that!349) (y!450 thiss!1203))) (and b!6778 b_free!361 (= (x!3693 that!349) (y!450 thiss!1203))) (and b!6780 (= lambda!988 (y!450 thiss!1203))) b_lambda!3273)))

(assert (=> (and b!6775 (= lambda!982 (y!450 thiss!1203)) d!5399) d!5375))

(assert (=> (and b!6780 (= lambda!988 (y!450 thiss!1203)) d!5399) d!5377))

(assert (=> (and b!6775 (= lambda!986 (y!450 thiss!1203)) d!5399) d!5379))

(push 1)

(assert (not d!5387))

(assert (not b_lambda!3265))

(assert (not bs!1553))

(assert (not d!5395))

(assert (not b_next!775))

(assert (not d!5393))

(assert (not b_next!771))

(assert (not b_lambda!3235))

(assert (not b!6829))

(assert (not b!6840))

(assert (not b_lambda!3273))

(assert (not bs!1547))

(assert (not bs!1551))

(assert (not bs!1549))

(assert (not b!6796))

(assert (not b_lambda!3271))

(assert (not b_next!773))

(assert (not b_next!769))

(assert (not b_lambda!3237))

(assert b_and!1801)

(assert b_and!1805)

(assert (not b_lambda!3257))

(assert (not b_next!767))

(assert (not bs!1550))

(assert (not b_lambda!3233))

(assert (not b!6802))

(assert (not bs!1545))

(assert (not b!6832))

(assert (not b!6834))

(assert (not b_lambda!3261))

(assert (not b_lambda!3269))

(assert (not bs!1546))

(assert (not b_lambda!3267))

(assert b_and!1803)

(assert (not bs!1548))

(assert (not bs!1544))

(assert (not b!6827))

(assert (not b!6830))

(assert (not b_lambda!3259))

(assert (not bs!1552))

(assert (not b_lambda!3263))

(assert (not b!6790))

(assert b_and!1791)

(assert b_and!1807)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!775))

(assert (not b_next!771))

(assert (not b_next!773))

(assert (not b_next!769))

(assert b_and!1801)

(assert b_and!1805)

(assert (not b_next!767))

(assert b_and!1803)

(assert b_and!1791)

(assert b_and!1807)

(check-sat)

(pop 1)

