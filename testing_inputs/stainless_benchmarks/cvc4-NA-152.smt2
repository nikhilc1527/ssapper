; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!954 () Bool)

(assert start!954)

(declare-fun b!6114 () Bool)

(declare-fun b_free!149 () Bool)

(declare-fun b_next!257 () Bool)

(assert (=> b!6114 (= b_free!149 (not b_next!257))))

(declare-fun tp!356 () Bool)

(declare-fun b_and!1159 () Bool)

(assert (=> b!6114 (= tp!356 b_and!1159)))

(declare-fun b_free!151 () Bool)

(declare-fun b_next!259 () Bool)

(assert (=> b!6114 (= b_free!151 (not b_next!259))))

(declare-fun tp!358 () Bool)

(declare-fun b_and!1161 () Bool)

(assert (=> b!6114 (= tp!358 b_and!1161)))

(declare-fun b_free!153 () Bool)

(declare-fun b_next!261 () Bool)

(assert (=> b!6114 (= b_free!153 (not b_next!261))))

(declare-fun tp!357 () Bool)

(declare-fun b_and!1163 () Bool)

(assert (=> b!6114 (= tp!357 b_and!1163)))

(declare-fun b!6117 () Bool)

(declare-fun b_free!155 () Bool)

(declare-fun b_next!263 () Bool)

(assert (=> b!6117 (= b_free!155 (not b_next!263))))

(declare-fun tp!354 () Bool)

(declare-fun b_and!1165 () Bool)

(assert (=> b!6117 (= tp!354 b_and!1165)))

(declare-fun b_free!157 () Bool)

(declare-fun b_next!265 () Bool)

(assert (=> b!6117 (= b_free!157 (not b_next!265))))

(declare-fun tp!355 () Bool)

(declare-fun b_and!1167 () Bool)

(assert (=> b!6117 (= tp!355 b_and!1167)))

(declare-fun b!6116 () Bool)

(assert (=> b!6116 true))

(declare-fun lambda!352 () Int)

(declare-fun b_next!267 () Bool)

(declare-datatypes () ((Balance!25 (Balance!26 (extraOpen!53 Int) (extraClose!53 Int)))))

(declare-datatypes () ((EqEvidence!18 (EqEvidence!19 (x!3159 Int) (y!416 Int) (evidence!76 Int)))))

(declare-fun thiss!1013 () EqEvidence!18)

(assert (=> b!6114 (= b_next!257 (or (and b!6116 (= lambda!352 (x!3159 thiss!1013))) b_next!267))))

(declare-fun b_next!269 () Bool)

(assert (=> b!6114 (= b_next!259 (or (and b!6116 (= lambda!352 (y!416 thiss!1013))) b_next!269))))

(declare-fun b_next!271 () Bool)

(declare-datatypes () ((EqProof!12 (EqProof!13 (x!3160 Int) (y!417 Int)))))

(declare-fun that!277 () EqProof!12)

(assert (=> b!6117 (= b_next!263 (or (and b!6116 (= lambda!352 (x!3160 that!277))) b_next!271))))

(declare-fun b_next!273 () Bool)

(assert (=> b!6117 (= b_next!265 (or (and b!6116 (= lambda!352 (y!417 that!277))) b_next!273))))

(declare-fun lambda!355 () Int)

(assert (=> b!6116 (not (= lambda!355 lambda!352))))

(assert (=> b!6116 true))

(declare-fun b_next!275 () Bool)

(assert (=> b!6114 (= b_next!267 (or (and b!6116 (= lambda!355 (x!3159 thiss!1013))) b_next!275))))

(declare-fun b_next!277 () Bool)

(assert (=> b!6114 (= b_next!269 (or (and b!6116 (= lambda!355 (y!416 thiss!1013))) b_next!277))))

(declare-fun b_next!279 () Bool)

(assert (=> b!6117 (= b_next!271 (or (and b!6116 (= lambda!355 (x!3160 that!277))) b_next!279))))

(declare-fun b_next!281 () Bool)

(assert (=> b!6117 (= b_next!273 (or (and b!6116 (= lambda!355 (y!417 that!277))) b_next!281))))

(assert (=> b!6116 true))

(declare-fun lambda!356 () Int)

(declare-fun b_next!283 () Bool)

(assert (=> b!6114 (= b_next!261 (or (and b!6116 (= lambda!356 (evidence!76 thiss!1013))) b_next!283))))

(declare-fun bs!1226 () Bool)

(declare-fun b!6115 () Bool)

(assert (= bs!1226 (and b!6115 b!6116)))

(declare-fun lambda!357 () Int)

(assert (=> bs!1226 (not (= lambda!357 lambda!352))))

(assert (=> bs!1226 (not (= lambda!357 lambda!355))))

(assert (=> b!6115 true))

(declare-fun b_next!285 () Bool)

(assert (=> b!6114 (= b_next!275 (or (and b!6115 (= lambda!357 (x!3159 thiss!1013))) b_next!285))))

(declare-fun b_next!287 () Bool)

(assert (=> b!6114 (= b_next!277 (or (and b!6115 (= lambda!357 (y!416 thiss!1013))) b_next!287))))

(declare-fun b_next!289 () Bool)

(assert (=> b!6117 (= b_next!279 (or (and b!6115 (= lambda!357 (x!3160 that!277))) b_next!289))))

(declare-fun b_next!291 () Bool)

(assert (=> b!6117 (= b_next!281 (or (and b!6115 (= lambda!357 (y!417 that!277))) b_next!291))))

(declare-fun res!1643 () Bool)

(declare-fun e!3619 () Bool)

(assert (=> start!954 (=> (not res!1643) (not e!3619))))

(declare-datatypes () ((ProofOps!20 (ProofOps!21 (prop!116 Bool)))))

(declare-fun thiss!1009 () ProofOps!20)

(declare-datatypes () ((Parenthesis!14 (CloseParenthesis!13) (OpenParenthesis!13))))

(declare-datatypes () ((Tree!29 (Branch!20 (left!276 Tree!29) (right!279 Tree!29)) (Leaf!102 (value!1271 Parenthesis!14)))))

(declare-fun tree!30 () Tree!29)

(declare-datatypes () ((List!113 (Nil!111) (Cons!110 (head!328 Parenthesis!14) (tail!340 List!113)))))

(declare-fun isMatchedHybid!0 (List!113) Bool)

(declare-fun toList!30 (Tree!29) List!113)

(declare-fun isMatchedParallel!0 (Tree!29) Bool)

(assert (=> start!954 (= res!1643 (= thiss!1009 (ProofOps!21 (= (isMatchedHybid!0 (toList!30 tree!30)) (isMatchedParallel!0 tree!30)))))))

(assert (=> start!954 e!3619))

(assert (=> start!954 true))

(declare-fun e!3620 () Bool)

(declare-fun inv!219 (EqEvidence!18) Bool)

(assert (=> start!954 (and (inv!219 thiss!1013) e!3620)))

(declare-fun e!3618 () Bool)

(declare-fun inv!220 (EqProof!12) Bool)

(assert (=> start!954 (and (inv!220 that!277) e!3618)))

(declare-fun b!6112 () Bool)

(declare-fun res!1640 () Bool)

(assert (=> b!6112 (=> (not res!1640) (not e!3619))))

(declare-fun dynLambda!59 (Int) Bool)

(assert (=> b!6112 (= res!1640 (dynLambda!59 (evidence!76 thiss!1013)))))

(declare-fun b!6113 () Bool)

(declare-fun dynLambda!60 (Int) Balance!25)

(assert (=> b!6113 (= e!3619 (not (= (dynLambda!60 (y!416 thiss!1013)) (dynLambda!60 (x!3160 that!277)))))))

(assert (=> b!6114 (= e!3620 (and tp!356 tp!358 tp!357))))

(declare-fun res!1641 () Bool)

(assert (=> b!6115 (=> (not res!1641) (not e!3619))))

(assert (=> b!6115 (= res!1641 (= that!277 (EqProof!13 lambda!357 lambda!357)))))

(declare-fun res!1642 () Bool)

(assert (=> b!6116 (=> (not res!1642) (not e!3619))))

(assert (=> b!6116 (= res!1642 (= thiss!1013 (EqEvidence!19 lambda!352 lambda!355 lambda!356)))))

(assert (=> b!6117 (= e!3618 (and tp!354 tp!355))))

(assert (= (and start!954 res!1643) b!6116))

(assert (= (and b!6116 res!1642) b!6115))

(assert (= (and b!6115 res!1641) b!6112))

(assert (= (and b!6112 res!1640) b!6113))

(assert (= start!954 b!6114))

(assert (= start!954 b!6117))

(declare-fun b_lambda!2855 () Bool)

(assert (=> (not b_lambda!2855) (not b!6112)))

(declare-fun t!989 () Bool)

(declare-fun tb!649 () Bool)

(assert (=> (and b!6114 (= (evidence!76 thiss!1013) (evidence!76 thiss!1013)) t!989) tb!649))

(declare-fun result!689 () Bool)

(assert (=> tb!649 (= result!689 true)))

(assert (=> b!6112 t!989))

(declare-fun b_and!1169 () Bool)

(assert (= b_and!1163 (and (=> t!989 result!689) b_and!1169)))

(declare-fun b_lambda!2857 () Bool)

(assert (=> (not b_lambda!2857) (not b!6113)))

(declare-fun t!991 () Bool)

(declare-fun tb!651 () Bool)

(assert (=> (and b!6114 (= (x!3159 thiss!1013) (y!416 thiss!1013)) t!991) tb!651))

(declare-fun result!691 () Bool)

(assert (=> tb!651 (= result!691 true)))

(assert (=> b!6113 t!991))

(declare-fun b_and!1171 () Bool)

(assert (= b_and!1159 (and (=> t!991 result!691) b_and!1171)))

(declare-fun t!993 () Bool)

(declare-fun tb!653 () Bool)

(assert (=> (and b!6114 (= (y!416 thiss!1013) (y!416 thiss!1013)) t!993) tb!653))

(declare-fun result!693 () Bool)

(assert (=> tb!653 (= result!693 true)))

(assert (=> b!6113 t!993))

(declare-fun b_and!1173 () Bool)

(assert (= b_and!1161 (and (=> t!993 result!693) b_and!1173)))

(declare-fun t!995 () Bool)

(declare-fun tb!655 () Bool)

(assert (=> (and b!6117 (= (x!3160 that!277) (y!416 thiss!1013)) t!995) tb!655))

(declare-fun result!695 () Bool)

(assert (=> tb!655 (= result!695 true)))

(assert (=> b!6113 t!995))

(declare-fun b_and!1175 () Bool)

(assert (= b_and!1165 (and (=> t!995 result!695) b_and!1175)))

(declare-fun t!997 () Bool)

(declare-fun tb!657 () Bool)

(assert (=> (and b!6117 (= (y!417 that!277) (y!416 thiss!1013)) t!997) tb!657))

(declare-fun result!697 () Bool)

(assert (=> tb!657 (= result!697 true)))

(assert (=> b!6113 t!997))

(declare-fun b_and!1177 () Bool)

(assert (= b_and!1167 (and (=> t!997 result!697) b_and!1177)))

(declare-fun b_lambda!2859 () Bool)

(assert (=> (not b_lambda!2859) (not b!6113)))

(declare-fun tb!659 () Bool)

(declare-fun t!999 () Bool)

(assert (=> (and b!6114 (= (x!3159 thiss!1013) (x!3160 that!277)) t!999) tb!659))

(declare-fun result!699 () Bool)

(assert (=> tb!659 (= result!699 true)))

(assert (=> b!6113 t!999))

(declare-fun b_and!1179 () Bool)

(assert (= b_and!1171 (and (=> t!999 result!699) b_and!1179)))

(declare-fun t!1001 () Bool)

(declare-fun tb!661 () Bool)

(assert (=> (and b!6114 (= (y!416 thiss!1013) (x!3160 that!277)) t!1001) tb!661))

(declare-fun result!701 () Bool)

(assert (=> tb!661 (= result!701 true)))

(assert (=> b!6113 t!1001))

(declare-fun b_and!1181 () Bool)

(assert (= b_and!1173 (and (=> t!1001 result!701) b_and!1181)))

(declare-fun t!1003 () Bool)

(declare-fun tb!663 () Bool)

(assert (=> (and b!6117 (= (x!3160 that!277) (x!3160 that!277)) t!1003) tb!663))

(declare-fun result!703 () Bool)

(assert (=> tb!663 (= result!703 true)))

(assert (=> b!6113 t!1003))

(declare-fun b_and!1183 () Bool)

(assert (= b_and!1175 (and (=> t!1003 result!703) b_and!1183)))

(declare-fun t!1005 () Bool)

(declare-fun tb!665 () Bool)

(assert (=> (and b!6117 (= (y!417 that!277) (x!3160 that!277)) t!1005) tb!665))

(declare-fun result!705 () Bool)

(assert (=> tb!665 (= result!705 true)))

(assert (=> b!6113 t!1005))

(declare-fun b_and!1185 () Bool)

(assert (= b_and!1177 (and (=> t!1005 result!705) b_and!1185)))

(declare-fun m!8791 () Bool)

(assert (=> start!954 m!8791))

(declare-fun m!8793 () Bool)

(assert (=> start!954 m!8793))

(declare-fun m!8795 () Bool)

(assert (=> start!954 m!8795))

(declare-fun m!8797 () Bool)

(assert (=> start!954 m!8797))

(assert (=> start!954 m!8791))

(declare-fun m!8799 () Bool)

(assert (=> start!954 m!8799))

(declare-fun m!8801 () Bool)

(assert (=> b!6112 m!8801))

(declare-fun m!8803 () Bool)

(assert (=> b!6113 m!8803))

(declare-fun m!8805 () Bool)

(assert (=> b!6113 m!8805))

(push 1)

(assert (not b_next!287))

(assert (not b_next!285))

(assert (not start!954))

(assert b_and!1185)

(assert b_and!1169)

(assert (not b_next!289))

(assert (not b_next!291))

(assert (not b_lambda!2859))

(assert b_and!1183)

(assert (not b_next!283))

(assert b_and!1181)

(assert (not b_lambda!2855))

(assert b_and!1179)

(assert (not b_lambda!2857))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!287))

(assert (not b_next!285))

(assert b_and!1185)

(assert b_and!1169)

(assert (not b_next!289))

(assert (not b_next!291))

(assert b_and!1183)

(assert (not b_next!283))

(assert b_and!1181)

(assert b_and!1179)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2861 () Bool)

(assert (= b_lambda!2857 (or (and b!6114 b_free!149 (= (x!3159 thiss!1013) (y!416 thiss!1013))) (and b!6117 b_free!157 (= (y!417 that!277) (y!416 thiss!1013))) (and b!6116 (= lambda!355 (y!416 thiss!1013))) (and b!6117 b_free!155 (= (x!3160 that!277) (y!416 thiss!1013))) (and b!6115 (= lambda!357 (y!416 thiss!1013))) (and b!6114 b_free!151) (and b!6116 (= lambda!352 (y!416 thiss!1013))) b_lambda!2861)))

(declare-fun bs!1227 () Bool)

(declare-fun d!4875 () Bool)

(assert (= bs!1227 (and d!4875 b!6115)))

(declare-fun lambda!353 () Int)

(declare-fun lambda!354 () Int)

(declare-datatypes () ((Tree!30 (Branch!21 (left!277 Tree!30) (right!280 Tree!30)) (Leaf!103 (value!1272 Balance!25)))))

(declare-fun fold!8 (Tree!30 Int) Balance!25)

(declare-fun map!124 (Tree!29 Int) Tree!30)

(assert (=> bs!1227 (= (dynLambda!60 lambda!357) (fold!8 (map!124 tree!30 lambda!354) lambda!353))))

(declare-fun m!8807 () Bool)

(assert (=> bs!1227 m!8807))

(assert (=> bs!1227 m!8807))

(declare-fun m!8809 () Bool)

(assert (=> bs!1227 m!8809))

(assert (=> (and b!6115 (= lambda!357 (y!416 thiss!1013)) b!6113) d!4875))

(declare-fun bs!1228 () Bool)

(declare-fun d!4877 () Bool)

(assert (= bs!1228 (and d!4877 b!6116)))

(declare-datatypes () ((List!114 (Nil!112) (Cons!111 (head!329 Balance!25) (tail!341 List!114)))))

(declare-fun foldRight1!7 (List!114 Int) Balance!25)

(declare-fun toList!31 (Tree!30) List!114)

(assert (=> bs!1228 (= (dynLambda!60 lambda!355) (foldRight1!7 (toList!31 (map!124 tree!30 lambda!354)) lambda!353))))

(assert (=> bs!1228 m!8807))

(assert (=> bs!1228 m!8807))

(declare-fun m!8811 () Bool)

(assert (=> bs!1228 m!8811))

(assert (=> bs!1228 m!8811))

(declare-fun m!8813 () Bool)

(assert (=> bs!1228 m!8813))

(assert (=> (and b!6116 (= lambda!355 (y!416 thiss!1013)) b!6113) d!4877))

(declare-fun bs!1229 () Bool)

(declare-fun d!4879 () Bool)

(assert (= bs!1229 (and d!4879 b!6116)))

(declare-fun map!125 (List!113 Int) List!114)

(assert (=> bs!1229 (= (dynLambda!60 lambda!352) (foldRight1!7 (map!125 (toList!30 tree!30) lambda!354) lambda!353))))

(assert (=> bs!1229 m!8791))

(assert (=> bs!1229 m!8791))

(declare-fun m!8815 () Bool)

(assert (=> bs!1229 m!8815))

(assert (=> bs!1229 m!8815))

(declare-fun m!8817 () Bool)

(assert (=> bs!1229 m!8817))

(assert (=> (and b!6116 (= lambda!352 (y!416 thiss!1013)) b!6113) d!4879))

(declare-fun b_lambda!2863 () Bool)

(assert (= b_lambda!2859 (or (and b!6117 b_free!157 (= (y!417 that!277) (x!3160 that!277))) (and b!6115 (= lambda!357 (x!3160 that!277))) (and b!6114 b_free!151 (= (y!416 thiss!1013) (x!3160 that!277))) (and b!6117 b_free!155) (and b!6116 (= lambda!352 (x!3160 that!277))) (and b!6114 b_free!149 (= (x!3159 thiss!1013) (x!3160 that!277))) (and b!6116 (= lambda!355 (x!3160 that!277))) b_lambda!2863)))

(declare-fun bs!1230 () Bool)

(declare-fun d!4881 () Bool)

(assert (= bs!1230 (and d!4881 b!6116)))

(assert (=> bs!1230 (= (dynLambda!60 lambda!355) (foldRight1!7 (toList!31 (map!124 tree!30 lambda!354)) lambda!353))))

(assert (=> bs!1230 m!8807))

(assert (=> bs!1230 m!8807))

(assert (=> bs!1230 m!8811))

(assert (=> bs!1230 m!8811))

(assert (=> bs!1230 m!8813))

(assert (=> (and b!6116 (= lambda!355 (x!3160 that!277)) b!6113) d!4881))

(declare-fun bs!1231 () Bool)

(declare-fun d!4883 () Bool)

(assert (= bs!1231 (and d!4883 b!6115)))

(assert (=> bs!1231 (= (dynLambda!60 lambda!357) (fold!8 (map!124 tree!30 lambda!354) lambda!353))))

(assert (=> bs!1231 m!8807))

(assert (=> bs!1231 m!8807))

(assert (=> bs!1231 m!8809))

(assert (=> (and b!6115 (= lambda!357 (x!3160 that!277)) b!6113) d!4883))

(declare-fun bs!1232 () Bool)

(declare-fun d!4885 () Bool)

(assert (= bs!1232 (and d!4885 b!6116)))

(assert (=> bs!1232 (= (dynLambda!60 lambda!352) (foldRight1!7 (map!125 (toList!30 tree!30) lambda!354) lambda!353))))

(assert (=> bs!1232 m!8791))

(assert (=> bs!1232 m!8791))

(assert (=> bs!1232 m!8815))

(assert (=> bs!1232 m!8815))

(assert (=> bs!1232 m!8817))

(assert (=> (and b!6116 (= lambda!352 (x!3160 that!277)) b!6113) d!4885))

(declare-fun b_lambda!2865 () Bool)

(assert (= b_lambda!2855 (or (and b!6116 (= lambda!356 (evidence!76 thiss!1013))) (and b!6114 b_free!153) b_lambda!2865)))

(declare-fun bs!1233 () Bool)

(declare-fun d!4887 () Bool)

(assert (= bs!1233 (and d!4887 b!6116)))

(declare-fun fold_foldRight1_equivalence!0 (Tree!30) Bool)

(assert (=> bs!1233 (= (dynLambda!59 lambda!356) (fold_foldRight1_equivalence!0 (map!124 tree!30 lambda!354)))))

(assert (=> bs!1233 m!8807))

(assert (=> bs!1233 m!8807))

(declare-fun m!8819 () Bool)

(assert (=> bs!1233 m!8819))

(assert (=> (and b!6116 (= lambda!356 (evidence!76 thiss!1013)) b!6112) d!4887))

(push 1)

(assert (not b_next!287))

(assert (not b_next!285))

(assert (not b_lambda!2863))

(assert (not start!954))

(assert (not bs!1228))

(assert (not b_lambda!2861))

(assert b_and!1185)

(assert b_and!1169)

(assert (not bs!1227))

(assert (not b_next!289))

(assert (not b_next!291))

(assert (not b_lambda!2865))

(assert b_and!1183)

(assert (not bs!1231))

(assert (not bs!1232))

(assert (not bs!1229))

(assert (not b_next!283))

(assert b_and!1181)

(assert (not bs!1230))

(assert b_and!1179)

(assert (not bs!1233))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!287))

(assert (not b_next!285))

(assert b_and!1185)

(assert b_and!1169)

(assert (not b_next!289))

(assert (not b_next!291))

(assert b_and!1183)

(assert (not b_next!283))

(assert b_and!1181)

(assert b_and!1179)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4889 () Bool)

(declare-fun c!2327 () Bool)

(assert (=> d!4889 (= c!2327 (and (is-Cons!111 (map!125 (toList!30 tree!30) lambda!354)) (is-Nil!112 (tail!341 (map!125 (toList!30 tree!30) lambda!354)))))))

(declare-fun e!3623 () Balance!25)

(assert (=> d!4889 (= (foldRight1!7 (map!125 (toList!30 tree!30) lambda!354) lambda!353) e!3623)))

(declare-fun b!6126 () Bool)

(assert (=> b!6126 (= e!3623 (head!329 (map!125 (toList!30 tree!30) lambda!354)))))

(declare-fun b!6127 () Bool)

(declare-fun dynLambda!61 (Int Balance!25 Balance!25) Balance!25)

(assert (=> b!6127 (= e!3623 (dynLambda!61 lambda!353 (head!329 (map!125 (toList!30 tree!30) lambda!354)) (foldRight1!7 (tail!341 (map!125 (toList!30 tree!30) lambda!354)) lambda!353)))))

(assert (= (and d!4889 c!2327) b!6126))

(assert (= (and d!4889 (not c!2327)) b!6127))

(declare-fun b_lambda!2867 () Bool)

(assert (=> (not b_lambda!2867) (not b!6127)))

(declare-fun m!8821 () Bool)

(assert (=> b!6127 m!8821))

(assert (=> b!6127 m!8821))

(declare-fun m!8823 () Bool)

(assert (=> b!6127 m!8823))

(assert (=> bs!1229 d!4889))

(declare-fun d!4891 () Bool)

(declare-fun c!2330 () Bool)

(assert (=> d!4891 (= c!2330 (is-Nil!111 (toList!30 tree!30)))))

(declare-fun e!3626 () List!114)

(assert (=> d!4891 (= (map!125 (toList!30 tree!30) lambda!354) e!3626)))

(declare-fun b!6132 () Bool)

(assert (=> b!6132 (= e!3626 Nil!112)))

(declare-fun b!6133 () Bool)

(declare-fun dynLambda!62 (Int Parenthesis!14) Balance!25)

(assert (=> b!6133 (= e!3626 (Cons!111 (dynLambda!62 lambda!354 (head!328 (toList!30 tree!30))) (map!125 (tail!340 (toList!30 tree!30)) lambda!354)))))

(assert (= (and d!4891 c!2330) b!6132))

(assert (= (and d!4891 (not c!2330)) b!6133))

(declare-fun b_lambda!2869 () Bool)

(assert (=> (not b_lambda!2869) (not b!6133)))

(declare-fun m!8825 () Bool)

(assert (=> b!6133 m!8825))

(declare-fun m!8827 () Bool)

(assert (=> b!6133 m!8827))

(assert (=> bs!1229 d!4891))

(declare-fun d!4893 () Bool)

(declare-fun lt!1342 () List!113)

(declare-fun isEmpty!104 (List!113) Bool)

(assert (=> d!4893 (not (isEmpty!104 lt!1342))))

(declare-fun e!3629 () List!113)

(assert (=> d!4893 (= lt!1342 e!3629)))

(declare-fun c!2333 () Bool)

(assert (=> d!4893 (= c!2333 (is-Leaf!102 tree!30))))

(assert (=> d!4893 (= (toList!30 tree!30) lt!1342)))

(declare-fun b!6138 () Bool)

(assert (=> b!6138 (= e!3629 (Cons!110 (value!1271 tree!30) Nil!111))))

(declare-fun b!6139 () Bool)

(declare-fun append!42 (List!113 List!113) List!113)

(assert (=> b!6139 (= e!3629 (append!42 (toList!30 (left!276 tree!30)) (toList!30 (right!279 tree!30))))))

(assert (= (and d!4893 c!2333) b!6138))

(assert (= (and d!4893 (not c!2333)) b!6139))

(declare-fun m!8829 () Bool)

(assert (=> d!4893 m!8829))

(declare-fun m!8831 () Bool)

(assert (=> b!6139 m!8831))

(declare-fun m!8833 () Bool)

(assert (=> b!6139 m!8833))

(assert (=> b!6139 m!8831))

(assert (=> b!6139 m!8833))

(declare-fun m!8835 () Bool)

(assert (=> b!6139 m!8835))

(assert (=> bs!1229 d!4893))

(declare-fun d!4895 () Bool)

(declare-fun c!2334 () Bool)

(assert (=> d!4895 (= c!2334 (and (is-Cons!111 (toList!31 (map!124 tree!30 lambda!354))) (is-Nil!112 (tail!341 (toList!31 (map!124 tree!30 lambda!354))))))))

(declare-fun e!3630 () Balance!25)

(assert (=> d!4895 (= (foldRight1!7 (toList!31 (map!124 tree!30 lambda!354)) lambda!353) e!3630)))

(declare-fun b!6140 () Bool)

(assert (=> b!6140 (= e!3630 (head!329 (toList!31 (map!124 tree!30 lambda!354))))))

(declare-fun b!6141 () Bool)

(assert (=> b!6141 (= e!3630 (dynLambda!61 lambda!353 (head!329 (toList!31 (map!124 tree!30 lambda!354))) (foldRight1!7 (tail!341 (toList!31 (map!124 tree!30 lambda!354))) lambda!353)))))

(assert (= (and d!4895 c!2334) b!6140))

(assert (= (and d!4895 (not c!2334)) b!6141))

(declare-fun b_lambda!2871 () Bool)

(assert (=> (not b_lambda!2871) (not b!6141)))

(declare-fun m!8837 () Bool)

(assert (=> b!6141 m!8837))

(assert (=> b!6141 m!8837))

(declare-fun m!8839 () Bool)

(assert (=> b!6141 m!8839))

(assert (=> bs!1228 d!4895))

(declare-fun d!4897 () Bool)

(declare-fun lt!1345 () List!114)

(declare-fun isEmpty!105 (List!114) Bool)

(assert (=> d!4897 (not (isEmpty!105 lt!1345))))

(declare-fun e!3633 () List!114)

(assert (=> d!4897 (= lt!1345 e!3633)))

(declare-fun c!2337 () Bool)

(assert (=> d!4897 (= c!2337 (is-Leaf!103 (map!124 tree!30 lambda!354)))))

(assert (=> d!4897 (= (toList!31 (map!124 tree!30 lambda!354)) lt!1345)))

(declare-fun b!6146 () Bool)

(assert (=> b!6146 (= e!3633 (Cons!111 (value!1272 (map!124 tree!30 lambda!354)) Nil!112))))

(declare-fun b!6147 () Bool)

(declare-fun append!43 (List!114 List!114) List!114)

(assert (=> b!6147 (= e!3633 (append!43 (toList!31 (left!277 (map!124 tree!30 lambda!354))) (toList!31 (right!280 (map!124 tree!30 lambda!354)))))))

(assert (= (and d!4897 c!2337) b!6146))

(assert (= (and d!4897 (not c!2337)) b!6147))

(declare-fun m!8841 () Bool)

(assert (=> d!4897 m!8841))

(declare-fun m!8843 () Bool)

(assert (=> b!6147 m!8843))

(declare-fun m!8845 () Bool)

(assert (=> b!6147 m!8845))

(assert (=> b!6147 m!8843))

(assert (=> b!6147 m!8845))

(declare-fun m!8847 () Bool)

(assert (=> b!6147 m!8847))

(assert (=> bs!1228 d!4897))

(declare-fun b!6153 () Bool)

(assert (=> b!6153 true))

(declare-fun order!43 () Int)

(declare-fun order!41 () Int)

(declare-fun lambda!362 () Int)

(declare-fun dynLambda!63 (Int Int) Int)

(declare-fun dynLambda!64 (Int Int) Int)

(assert (=> b!6153 (< (dynLambda!63 order!41 lambda!354) (dynLambda!64 order!43 lambda!362))))

(assert (=> b!6153 true))

(declare-fun lambda!363 () Int)

(assert (=> b!6153 (= (= (right!279 tree!30) (left!276 tree!30)) (= lambda!363 lambda!362))))

(assert (=> b!6153 true))

(assert (=> b!6153 (< (dynLambda!63 order!41 lambda!354) (dynLambda!64 order!43 lambda!363))))

(assert (=> b!6153 true))

(declare-fun e!3652 () Tree!30)

(declare-datatypes () ((tuple2!34 (tuple2!35 (_1!17 Tree!30) (_2!17 Tree!30)))))

(declare-fun lt!1348 () tuple2!34)

(assert (=> b!6153 (= e!3652 (Branch!21 (_1!17 lt!1348) (_2!17 lt!1348)))))

(declare-fun dynLambda!65 (Int) Tree!30)

(assert (=> b!6153 (= lt!1348 (tuple2!35 (dynLambda!65 lambda!362) (dynLambda!65 lambda!363)))))

(declare-fun d!4899 () Bool)

(declare-fun c!2340 () Bool)

(assert (=> d!4899 (= c!2340 (is-Leaf!102 tree!30))))

(assert (=> d!4899 (= (map!124 tree!30 lambda!354) e!3652)))

(declare-fun b!6152 () Bool)

(assert (=> b!6152 (= e!3652 (Leaf!103 (dynLambda!62 lambda!354 (value!1271 tree!30))))))

(assert (= (and d!4899 c!2340) b!6152))

(assert (= (and d!4899 (not c!2340)) b!6153))

(declare-fun b_lambda!2873 () Bool)

(assert (=> (not b_lambda!2873) (not b!6153)))

(declare-fun b_lambda!2875 () Bool)

(assert (=> (not b_lambda!2875) (not b!6153)))

(declare-fun b_lambda!2877 () Bool)

(assert (=> (not b_lambda!2877) (not b!6152)))

(declare-fun m!8849 () Bool)

(assert (=> b!6153 m!8849))

(declare-fun m!8851 () Bool)

(assert (=> b!6153 m!8851))

(declare-fun m!8853 () Bool)

(assert (=> b!6152 m!8853))

(assert (=> bs!1228 d!4899))

(declare-fun bs!1234 () Bool)

(declare-fun b!6163 () Bool)

(assert (= bs!1234 (and b!6163 b!6116)))

(declare-fun lambda!368 () Int)

(assert (=> bs!1234 (not (= lambda!368 lambda!352))))

(assert (=> bs!1234 (not (= lambda!368 lambda!355))))

(declare-fun bs!1235 () Bool)

(assert (= bs!1235 (and b!6163 b!6115)))

(assert (=> bs!1235 (not (= lambda!368 lambda!357))))

(assert (=> b!6163 true))

(declare-fun order!45 () Int)

(declare-fun order!47 () Int)

(declare-fun dynLambda!66 (Int Int) Int)

(declare-fun dynLambda!67 (Int Int) Int)

(assert (=> b!6163 (< (dynLambda!66 order!45 lambda!353) (dynLambda!67 order!47 lambda!368))))

(assert (=> b!6163 true))

(declare-fun b_next!293 () Bool)

(assert (=> b!6114 (= b_next!285 (or (and b!6163 (= lambda!368 (x!3159 thiss!1013))) b_next!293))))

(declare-fun b_next!295 () Bool)

(assert (=> b!6114 (= b_next!287 (or (and b!6163 (= lambda!368 (y!416 thiss!1013))) b_next!295))))

(declare-fun b_next!297 () Bool)

(assert (=> b!6117 (= b_next!289 (or (and b!6163 (= lambda!368 (x!3160 that!277))) b_next!297))))

(declare-fun b_next!299 () Bool)

(assert (=> b!6117 (= b_next!291 (or (and b!6163 (= lambda!368 (y!417 that!277))) b_next!299))))

(declare-fun lambda!369 () Int)

(assert (=> bs!1234 (not (= lambda!369 lambda!352))))

(assert (=> bs!1234 (not (= lambda!369 lambda!355))))

(assert (=> bs!1235 (not (= lambda!369 lambda!357))))

(assert (=> b!6163 (= (= (right!280 (map!124 tree!30 lambda!354)) (left!277 (map!124 tree!30 lambda!354))) (= lambda!369 lambda!368))))

(assert (=> b!6163 true))

(assert (=> b!6163 (< (dynLambda!66 order!45 lambda!353) (dynLambda!67 order!47 lambda!369))))

(assert (=> b!6163 true))

(declare-fun b_next!301 () Bool)

(assert (=> b!6114 (= b_next!293 (or (and b!6163 (= lambda!369 (x!3159 thiss!1013))) b_next!301))))

(declare-fun b_next!303 () Bool)

(assert (=> b!6114 (= b_next!295 (or (and b!6163 (= lambda!369 (y!416 thiss!1013))) b_next!303))))

(declare-fun b_next!305 () Bool)

(assert (=> b!6117 (= b_next!297 (or (and b!6163 (= lambda!369 (x!3160 that!277))) b_next!305))))

(declare-fun b_next!307 () Bool)

(assert (=> b!6117 (= b_next!299 (or (and b!6163 (= lambda!369 (y!417 that!277))) b_next!307))))

(declare-fun e!3671 () Balance!25)

(declare-datatypes () ((tuple2!36 (tuple2!37 (_1!18 Balance!25) (_2!18 Balance!25)))))

(declare-fun lt!1351 () tuple2!36)

(assert (=> b!6163 (= e!3671 (dynLambda!61 lambda!353 (_1!18 lt!1351) (_2!18 lt!1351)))))

(assert (=> b!6163 (= lt!1351 (tuple2!37 (dynLambda!60 lambda!368) (dynLambda!60 lambda!369)))))

(declare-fun d!4901 () Bool)

(declare-fun c!2343 () Bool)

(assert (=> d!4901 (= c!2343 (is-Leaf!103 (map!124 tree!30 lambda!354)))))

(assert (=> d!4901 (= (fold!8 (map!124 tree!30 lambda!354) lambda!353) e!3671)))

(declare-fun b!6162 () Bool)

(assert (=> b!6162 (= e!3671 (value!1272 (map!124 tree!30 lambda!354)))))

(assert (= (and d!4901 c!2343) b!6162))

(assert (= (and d!4901 (not c!2343)) b!6163))

(declare-fun b_lambda!2879 () Bool)

(assert (=> (not b_lambda!2879) (not b!6163)))

(declare-fun b_lambda!2881 () Bool)

(assert (=> (not b_lambda!2881) (not b!6163)))

(declare-fun b_lambda!2883 () Bool)

(assert (=> (not b_lambda!2883) (not b!6163)))

(declare-fun m!8855 () Bool)

(assert (=> b!6163 m!8855))

(declare-fun m!8857 () Bool)

(assert (=> b!6163 m!8857))

(declare-fun m!8859 () Bool)

(assert (=> b!6163 m!8859))

(assert (=> bs!1231 d!4901))

(assert (=> bs!1231 d!4899))

(assert (=> bs!1232 d!4889))

(assert (=> bs!1232 d!4891))

(assert (=> bs!1232 d!4893))

(assert (=> start!954 d!4893))

(declare-fun d!4903 () Bool)

(declare-fun res!1648 () Bool)

(declare-fun e!3674 () Bool)

(assert (=> d!4903 (=> (not res!1648) (not e!3674))))

(assert (=> d!4903 (= res!1648 (= (dynLambda!60 (x!3159 thiss!1013)) (dynLambda!60 (y!416 thiss!1013))))))

(assert (=> d!4903 (= (inv!219 thiss!1013) e!3674)))

(declare-fun b!6170 () Bool)

(assert (=> b!6170 (= e!3674 (dynLambda!59 (evidence!76 thiss!1013)))))

(assert (= (and d!4903 res!1648) b!6170))

(declare-fun b_lambda!2885 () Bool)

(assert (=> (not b_lambda!2885) (not d!4903)))

(declare-fun t!1007 () Bool)

(declare-fun tb!667 () Bool)

(assert (=> (and b!6114 (= (x!3159 thiss!1013) (x!3159 thiss!1013)) t!1007) tb!667))

(declare-fun result!707 () Bool)

(assert (=> tb!667 (= result!707 true)))

(assert (=> d!4903 t!1007))

(declare-fun b_and!1187 () Bool)

(assert (= b_and!1179 (and (=> t!1007 result!707) b_and!1187)))

(declare-fun t!1009 () Bool)

(declare-fun tb!669 () Bool)

(assert (=> (and b!6114 (= (y!416 thiss!1013) (x!3159 thiss!1013)) t!1009) tb!669))

(declare-fun result!709 () Bool)

(assert (=> tb!669 (= result!709 true)))

(assert (=> d!4903 t!1009))

(declare-fun b_and!1189 () Bool)

(assert (= b_and!1181 (and (=> t!1009 result!709) b_and!1189)))

(declare-fun tb!671 () Bool)

(declare-fun t!1011 () Bool)

(assert (=> (and b!6117 (= (x!3160 that!277) (x!3159 thiss!1013)) t!1011) tb!671))

(declare-fun result!711 () Bool)

(assert (=> tb!671 (= result!711 true)))

(assert (=> d!4903 t!1011))

(declare-fun b_and!1191 () Bool)

(assert (= b_and!1183 (and (=> t!1011 result!711) b_and!1191)))

(declare-fun tb!673 () Bool)

(declare-fun t!1013 () Bool)

(assert (=> (and b!6117 (= (y!417 that!277) (x!3159 thiss!1013)) t!1013) tb!673))

(declare-fun result!713 () Bool)

(assert (=> tb!673 (= result!713 true)))

(assert (=> d!4903 t!1013))

(declare-fun b_and!1193 () Bool)

(assert (= b_and!1185 (and (=> t!1013 result!713) b_and!1193)))

(declare-fun b_lambda!2887 () Bool)

(assert (=> (not b_lambda!2887) (not d!4903)))

(assert (=> d!4903 t!991))

(declare-fun b_and!1195 () Bool)

(assert (= b_and!1187 (and (=> t!991 result!691) b_and!1195)))

(assert (=> d!4903 t!993))

(declare-fun b_and!1197 () Bool)

(assert (= b_and!1189 (and (=> t!993 result!693) b_and!1197)))

(assert (=> d!4903 t!995))

(declare-fun b_and!1199 () Bool)

(assert (= b_and!1191 (and (=> t!995 result!695) b_and!1199)))

(assert (=> d!4903 t!997))

(declare-fun b_and!1201 () Bool)

(assert (= b_and!1193 (and (=> t!997 result!697) b_and!1201)))

(declare-fun b_lambda!2889 () Bool)

(assert (=> (not b_lambda!2889) (not b!6170)))

(assert (=> b!6170 t!989))

(declare-fun b_and!1203 () Bool)

(assert (= b_and!1169 (and (=> t!989 result!689) b_and!1203)))

(declare-fun m!8861 () Bool)

(assert (=> d!4903 m!8861))

(assert (=> d!4903 m!8803))

(assert (=> b!6170 m!8801))

(assert (=> start!954 d!4903))

(declare-fun d!4905 () Bool)

(assert (=> d!4905 (= (inv!220 that!277) (= (dynLambda!60 (x!3160 that!277)) (dynLambda!60 (y!417 that!277))))))

(declare-fun b_lambda!2891 () Bool)

(assert (=> (not b_lambda!2891) (not d!4905)))

(assert (=> d!4905 t!999))

(declare-fun b_and!1205 () Bool)

(assert (= b_and!1195 (and (=> t!999 result!699) b_and!1205)))

(assert (=> d!4905 t!1001))

(declare-fun b_and!1207 () Bool)

(assert (= b_and!1197 (and (=> t!1001 result!701) b_and!1207)))

(assert (=> d!4905 t!1003))

(declare-fun b_and!1209 () Bool)

(assert (= b_and!1199 (and (=> t!1003 result!703) b_and!1209)))

(assert (=> d!4905 t!1005))

(declare-fun b_and!1211 () Bool)

(assert (= b_and!1201 (and (=> t!1005 result!705) b_and!1211)))

(declare-fun b_lambda!2893 () Bool)

(assert (=> (not b_lambda!2893) (not d!4905)))

(declare-fun t!1015 () Bool)

(declare-fun tb!675 () Bool)

(assert (=> (and b!6114 (= (x!3159 thiss!1013) (y!417 that!277)) t!1015) tb!675))

(declare-fun result!715 () Bool)

(assert (=> tb!675 (= result!715 true)))

(assert (=> d!4905 t!1015))

(declare-fun b_and!1213 () Bool)

(assert (= b_and!1205 (and (=> t!1015 result!715) b_and!1213)))

(declare-fun tb!677 () Bool)

(declare-fun t!1017 () Bool)

(assert (=> (and b!6114 (= (y!416 thiss!1013) (y!417 that!277)) t!1017) tb!677))

(declare-fun result!717 () Bool)

(assert (=> tb!677 (= result!717 true)))

(assert (=> d!4905 t!1017))

(declare-fun b_and!1215 () Bool)

(assert (= b_and!1207 (and (=> t!1017 result!717) b_and!1215)))

(declare-fun t!1019 () Bool)

(declare-fun tb!679 () Bool)

(assert (=> (and b!6117 (= (x!3160 that!277) (y!417 that!277)) t!1019) tb!679))

(declare-fun result!719 () Bool)

(assert (=> tb!679 (= result!719 true)))

(assert (=> d!4905 t!1019))

(declare-fun b_and!1217 () Bool)

(assert (= b_and!1209 (and (=> t!1019 result!719) b_and!1217)))

(declare-fun t!1021 () Bool)

(declare-fun tb!681 () Bool)

(assert (=> (and b!6117 (= (y!417 that!277) (y!417 that!277)) t!1021) tb!681))

(declare-fun result!721 () Bool)

(assert (=> tb!681 (= result!721 true)))

(assert (=> d!4905 t!1021))

(declare-fun b_and!1219 () Bool)

(assert (= b_and!1211 (and (=> t!1021 result!721) b_and!1219)))

(assert (=> d!4905 m!8805))

(declare-fun m!8863 () Bool)

(assert (=> d!4905 m!8863))

(assert (=> start!954 d!4905))

(declare-fun bs!1236 () Bool)

(declare-fun d!4907 () Bool)

(assert (= bs!1236 (and d!4907 b!6116)))

(declare-fun lambda!374 () Int)

(assert (=> bs!1236 (= lambda!374 lambda!354)))

(declare-fun lambda!375 () Int)

(assert (=> bs!1236 (= lambda!375 lambda!353)))

(declare-fun isBalanced!0 (Balance!25) Bool)

(assert (=> d!4907 (= (isMatchedHybid!0 (toList!30 tree!30)) (isBalanced!0 (foldRight1!7 (map!125 (toList!30 tree!30) lambda!374) lambda!375)))))

(declare-fun bs!1237 () Bool)

(assert (= bs!1237 d!4907))

(assert (=> bs!1237 m!8791))

(declare-fun m!8865 () Bool)

(assert (=> bs!1237 m!8865))

(assert (=> bs!1237 m!8865))

(declare-fun m!8867 () Bool)

(assert (=> bs!1237 m!8867))

(assert (=> bs!1237 m!8867))

(declare-fun m!8869 () Bool)

(assert (=> bs!1237 m!8869))

(assert (=> start!954 d!4907))

(declare-fun bs!1238 () Bool)

(declare-fun d!4909 () Bool)

(assert (= bs!1238 (and d!4909 b!6116)))

(declare-fun lambda!380 () Int)

(assert (=> bs!1238 (= lambda!380 lambda!354)))

(declare-fun bs!1239 () Bool)

(assert (= bs!1239 (and d!4909 d!4907)))

(assert (=> bs!1239 (= lambda!380 lambda!374)))

(declare-fun lambda!381 () Int)

(assert (=> bs!1238 (= lambda!381 lambda!353)))

(assert (=> bs!1239 (= lambda!381 lambda!375)))

(assert (=> d!4909 (= (isMatchedParallel!0 tree!30) (isBalanced!0 (fold!8 (map!124 tree!30 lambda!380) lambda!381)))))

(declare-fun bs!1240 () Bool)

(assert (= bs!1240 d!4909))

(declare-fun m!8871 () Bool)

(assert (=> bs!1240 m!8871))

(assert (=> bs!1240 m!8871))

(declare-fun m!8873 () Bool)

(assert (=> bs!1240 m!8873))

(assert (=> bs!1240 m!8873))

(declare-fun m!8875 () Bool)

(assert (=> bs!1240 m!8875))

(assert (=> start!954 d!4909))

(declare-fun bs!1241 () Bool)

(declare-fun d!4911 () Bool)

(assert (= bs!1241 (and d!4911 b!6116)))

(declare-fun lambda!384 () Int)

(assert (=> bs!1241 (= lambda!384 lambda!353)))

(declare-fun bs!1242 () Bool)

(assert (= bs!1242 (and d!4911 d!4907)))

(assert (=> bs!1242 (= lambda!384 lambda!375)))

(declare-fun bs!1243 () Bool)

(assert (= bs!1243 (and d!4911 d!4909)))

(assert (=> bs!1243 (= lambda!384 lambda!381)))

(declare-fun because!2 (ProofOps!20 Bool) Bool)

(assert (=> d!4911 (because!2 (ProofOps!21 (= (fold!8 (map!124 tree!30 lambda!354) lambda!384) (foldRight1!7 (toList!31 (map!124 tree!30 lambda!354)) lambda!384))) true)))

(assert (=> d!4911 (= (fold!8 (map!124 tree!30 lambda!354) lambda!384) (foldRight1!7 (toList!31 (map!124 tree!30 lambda!354)) lambda!384))))

(assert (=> d!4911 (= (fold_foldRight1_equivalence!0 (map!124 tree!30 lambda!354)) true)))

(declare-fun bs!1244 () Bool)

(assert (= bs!1244 d!4911))

(assert (=> bs!1244 m!8807))

(declare-fun m!8877 () Bool)

(assert (=> bs!1244 m!8877))

(assert (=> bs!1244 m!8807))

(assert (=> bs!1244 m!8811))

(assert (=> bs!1244 m!8811))

(declare-fun m!8879 () Bool)

(assert (=> bs!1244 m!8879))

(declare-fun m!8881 () Bool)

(assert (=> bs!1244 m!8881))

(assert (=> bs!1233 d!4911))

(assert (=> bs!1233 d!4899))

(assert (=> bs!1227 d!4901))

(assert (=> bs!1227 d!4899))

(assert (=> bs!1230 d!4895))

(assert (=> bs!1230 d!4897))

(assert (=> bs!1230 d!4899))

(declare-fun b_lambda!2895 () Bool)

(assert (= b_lambda!2889 (or (and b!6116 (= lambda!356 (evidence!76 thiss!1013))) (and b!6114 b_free!153) b_lambda!2895)))

(assert (=> (and b!6116 (= lambda!356 (evidence!76 thiss!1013)) b!6170) d!4887))

(declare-fun b_lambda!2897 () Bool)

(assert (= b_lambda!2875 (or b!6153 b_lambda!2897)))

(declare-fun bs!1245 () Bool)

(declare-fun d!4913 () Bool)

(assert (= bs!1245 (and d!4913 b!6153)))

(assert (=> bs!1245 (= (dynLambda!65 lambda!363) (map!124 (right!279 tree!30) lambda!354))))

(declare-fun m!8883 () Bool)

(assert (=> bs!1245 m!8883))

(assert (=> b!6153 d!4913))

(declare-fun b_lambda!2899 () Bool)

(assert (= b_lambda!2877 (or b!6116 b_lambda!2899)))

(declare-fun bs!1246 () Bool)

(declare-fun d!4915 () Bool)

(assert (= bs!1246 (and d!4915 b!6116)))

(declare-fun fromParenthesis!0 (Parenthesis!14) Balance!25)

(assert (=> bs!1246 (= (dynLambda!62 lambda!354 (value!1271 tree!30)) (fromParenthesis!0 (value!1271 tree!30)))))

(declare-fun m!8885 () Bool)

(assert (=> bs!1246 m!8885))

(assert (=> b!6152 d!4915))

(declare-fun b_lambda!2901 () Bool)

(assert (= b_lambda!2883 (or b!6163 b_lambda!2901)))

(declare-fun bs!1247 () Bool)

(declare-fun d!4917 () Bool)

(assert (= bs!1247 (and d!4917 b!6163)))

(assert (=> bs!1247 (= (dynLambda!60 lambda!369) (fold!8 (right!280 (map!124 tree!30 lambda!354)) lambda!353))))

(declare-fun m!8887 () Bool)

(assert (=> bs!1247 m!8887))

(assert (=> b!6163 d!4917))

(declare-fun b_lambda!2903 () Bool)

(assert (= b_lambda!2891 (or (and b!6117 b_free!157 (= (y!417 that!277) (x!3160 that!277))) (and b!6115 (= lambda!357 (x!3160 that!277))) (and b!6114 b_free!151 (= (y!416 thiss!1013) (x!3160 that!277))) (and b!6117 b_free!155) (and b!6116 (= lambda!352 (x!3160 that!277))) (and b!6114 b_free!149 (= (x!3159 thiss!1013) (x!3160 that!277))) (and b!6163 (= lambda!368 (x!3160 that!277))) (and b!6116 (= lambda!355 (x!3160 that!277))) (and b!6163 (= lambda!369 (x!3160 that!277))) b_lambda!2903)))

(assert (=> (and b!6116 (= lambda!355 (x!3160 that!277)) d!4905) d!4881))

(declare-fun bs!1248 () Bool)

(declare-fun d!4919 () Bool)

(assert (= bs!1248 (and d!4919 b!6163)))

(assert (=> bs!1248 (= (dynLambda!60 lambda!369) (fold!8 (right!280 (map!124 tree!30 lambda!354)) lambda!353))))

(assert (=> bs!1248 m!8887))

(assert (=> (and b!6163 (= lambda!369 (x!3160 that!277)) d!4905) d!4919))

(assert (=> (and b!6115 (= lambda!357 (x!3160 that!277)) d!4905) d!4883))

(assert (=> (and b!6116 (= lambda!352 (x!3160 that!277)) d!4905) d!4885))

(declare-fun bs!1249 () Bool)

(declare-fun d!4921 () Bool)

(assert (= bs!1249 (and d!4921 b!6163)))

(assert (=> bs!1249 (= (dynLambda!60 lambda!368) (fold!8 (left!277 (map!124 tree!30 lambda!354)) lambda!353))))

(declare-fun m!8889 () Bool)

(assert (=> bs!1249 m!8889))

(assert (=> (and b!6163 (= lambda!368 (x!3160 that!277)) d!4905) d!4921))

(declare-fun b_lambda!2905 () Bool)

(assert (= b_lambda!2871 (or b!6116 b_lambda!2905)))

(declare-fun bs!1250 () Bool)

(declare-fun d!4923 () Bool)

(assert (= bs!1250 (and d!4923 b!6116)))

(declare-fun ++!3 (Balance!25 Balance!25) Balance!25)

(assert (=> bs!1250 (= (dynLambda!61 lambda!353 (head!329 (toList!31 (map!124 tree!30 lambda!354))) (foldRight1!7 (tail!341 (toList!31 (map!124 tree!30 lambda!354))) lambda!353)) (++!3 (head!329 (toList!31 (map!124 tree!30 lambda!354))) (foldRight1!7 (tail!341 (toList!31 (map!124 tree!30 lambda!354))) lambda!353)))))

(assert (=> bs!1250 m!8837))

(declare-fun m!8891 () Bool)

(assert (=> bs!1250 m!8891))

(assert (=> b!6141 d!4923))

(declare-fun b_lambda!2907 () Bool)

(assert (= b_lambda!2887 (or (and b!6163 (= lambda!369 (y!416 thiss!1013))) (and b!6163 (= lambda!368 (y!416 thiss!1013))) (and b!6114 b_free!149 (= (x!3159 thiss!1013) (y!416 thiss!1013))) (and b!6117 b_free!157 (= (y!417 that!277) (y!416 thiss!1013))) (and b!6116 (= lambda!355 (y!416 thiss!1013))) (and b!6117 b_free!155 (= (x!3160 that!277) (y!416 thiss!1013))) (and b!6115 (= lambda!357 (y!416 thiss!1013))) (and b!6114 b_free!151) (and b!6116 (= lambda!352 (y!416 thiss!1013))) b_lambda!2907)))

(assert (=> (and b!6115 (= lambda!357 (y!416 thiss!1013)) d!4903) d!4875))

(declare-fun bs!1251 () Bool)

(declare-fun d!4925 () Bool)

(assert (= bs!1251 (and d!4925 b!6163)))

(assert (=> bs!1251 (= (dynLambda!60 lambda!369) (fold!8 (right!280 (map!124 tree!30 lambda!354)) lambda!353))))

(assert (=> bs!1251 m!8887))

(assert (=> (and b!6163 (= lambda!369 (y!416 thiss!1013)) d!4903) d!4925))

(assert (=> (and b!6116 (= lambda!355 (y!416 thiss!1013)) d!4903) d!4877))

(assert (=> (and b!6116 (= lambda!352 (y!416 thiss!1013)) d!4903) d!4879))

(declare-fun bs!1252 () Bool)

(declare-fun d!4927 () Bool)

(assert (= bs!1252 (and d!4927 b!6163)))

(assert (=> bs!1252 (= (dynLambda!60 lambda!368) (fold!8 (left!277 (map!124 tree!30 lambda!354)) lambda!353))))

(assert (=> bs!1252 m!8889))

(assert (=> (and b!6163 (= lambda!368 (y!416 thiss!1013)) d!4903) d!4927))

(declare-fun b_lambda!2909 () Bool)

(assert (= b_lambda!2879 (or b!6116 b_lambda!2909)))

(declare-fun bs!1253 () Bool)

(declare-fun d!4929 () Bool)

(assert (= bs!1253 (and d!4929 b!6116)))

(assert (=> bs!1253 (= (dynLambda!61 lambda!353 (_1!18 lt!1351) (_2!18 lt!1351)) (++!3 (_1!18 lt!1351) (_2!18 lt!1351)))))

(declare-fun m!8893 () Bool)

(assert (=> bs!1253 m!8893))

(assert (=> b!6163 d!4929))

(declare-fun b_lambda!2911 () Bool)

(assert (= b_lambda!2893 (or (and b!6114 b_free!149 (= (x!3159 thiss!1013) (y!417 that!277))) (and b!6117 b_free!157) (and b!6163 (= lambda!368 (y!417 that!277))) (and b!6116 (= lambda!355 (y!417 that!277))) (and b!6117 b_free!155 (= (x!3160 that!277) (y!417 that!277))) (and b!6163 (= lambda!369 (y!417 that!277))) (and b!6116 (= lambda!352 (y!417 that!277))) (and b!6115 (= lambda!357 (y!417 that!277))) (and b!6114 b_free!151 (= (y!416 thiss!1013) (y!417 that!277))) b_lambda!2911)))

(declare-fun bs!1254 () Bool)

(declare-fun d!4931 () Bool)

(assert (= bs!1254 (and d!4931 b!6163)))

(assert (=> bs!1254 (= (dynLambda!60 lambda!368) (fold!8 (left!277 (map!124 tree!30 lambda!354)) lambda!353))))

(assert (=> bs!1254 m!8889))

(assert (=> (and b!6163 (= lambda!368 (y!417 that!277)) d!4905) d!4931))

(declare-fun bs!1255 () Bool)

(declare-fun d!4933 () Bool)

(assert (= bs!1255 (and d!4933 b!6116)))

(assert (=> bs!1255 (= (dynLambda!60 lambda!355) (foldRight1!7 (toList!31 (map!124 tree!30 lambda!354)) lambda!353))))

(assert (=> bs!1255 m!8807))

(assert (=> bs!1255 m!8807))

(assert (=> bs!1255 m!8811))

(assert (=> bs!1255 m!8811))

(assert (=> bs!1255 m!8813))

(assert (=> (and b!6116 (= lambda!355 (y!417 that!277)) d!4905) d!4933))

(declare-fun bs!1256 () Bool)

(declare-fun d!4935 () Bool)

(assert (= bs!1256 (and d!4935 b!6163)))

(assert (=> bs!1256 (= (dynLambda!60 lambda!369) (fold!8 (right!280 (map!124 tree!30 lambda!354)) lambda!353))))

(assert (=> bs!1256 m!8887))

(assert (=> (and b!6163 (= lambda!369 (y!417 that!277)) d!4905) d!4935))

(declare-fun bs!1257 () Bool)

(declare-fun d!4937 () Bool)

(assert (= bs!1257 (and d!4937 b!6115)))

(assert (=> bs!1257 (= (dynLambda!60 lambda!357) (fold!8 (map!124 tree!30 lambda!354) lambda!353))))

(assert (=> bs!1257 m!8807))

(assert (=> bs!1257 m!8807))

(assert (=> bs!1257 m!8809))

(assert (=> (and b!6115 (= lambda!357 (y!417 that!277)) d!4905) d!4937))

(declare-fun bs!1258 () Bool)

(declare-fun d!4939 () Bool)

(assert (= bs!1258 (and d!4939 b!6116)))

(assert (=> bs!1258 (= (dynLambda!60 lambda!352) (foldRight1!7 (map!125 (toList!30 tree!30) lambda!354) lambda!353))))

(assert (=> bs!1258 m!8791))

(assert (=> bs!1258 m!8791))

(assert (=> bs!1258 m!8815))

(assert (=> bs!1258 m!8815))

(assert (=> bs!1258 m!8817))

(assert (=> (and b!6116 (= lambda!352 (y!417 that!277)) d!4905) d!4939))

(declare-fun b_lambda!2913 () Bool)

(assert (= b_lambda!2867 (or b!6116 b_lambda!2913)))

(declare-fun bs!1259 () Bool)

(declare-fun d!4941 () Bool)

(assert (= bs!1259 (and d!4941 b!6116)))

(assert (=> bs!1259 (= (dynLambda!61 lambda!353 (head!329 (map!125 (toList!30 tree!30) lambda!354)) (foldRight1!7 (tail!341 (map!125 (toList!30 tree!30) lambda!354)) lambda!353)) (++!3 (head!329 (map!125 (toList!30 tree!30) lambda!354)) (foldRight1!7 (tail!341 (map!125 (toList!30 tree!30) lambda!354)) lambda!353)))))

(assert (=> bs!1259 m!8821))

(declare-fun m!8895 () Bool)

(assert (=> bs!1259 m!8895))

(assert (=> b!6127 d!4941))

(declare-fun b_lambda!2915 () Bool)

(assert (= b_lambda!2869 (or b!6116 b_lambda!2915)))

(declare-fun bs!1260 () Bool)

(declare-fun d!4943 () Bool)

(assert (= bs!1260 (and d!4943 b!6116)))

(assert (=> bs!1260 (= (dynLambda!62 lambda!354 (head!328 (toList!30 tree!30))) (fromParenthesis!0 (head!328 (toList!30 tree!30))))))

(declare-fun m!8897 () Bool)

(assert (=> bs!1260 m!8897))

(assert (=> b!6133 d!4943))

(declare-fun b_lambda!2917 () Bool)

(assert (= b_lambda!2881 (or b!6163 b_lambda!2917)))

(declare-fun bs!1261 () Bool)

(declare-fun d!4945 () Bool)

(assert (= bs!1261 (and d!4945 b!6163)))

(assert (=> bs!1261 (= (dynLambda!60 lambda!368) (fold!8 (left!277 (map!124 tree!30 lambda!354)) lambda!353))))

(assert (=> bs!1261 m!8889))

(assert (=> b!6163 d!4945))

(declare-fun b_lambda!2919 () Bool)

(assert (= b_lambda!2885 (or (and b!6115 (= lambda!357 (x!3159 thiss!1013))) (and b!6114 b_free!151 (= (y!416 thiss!1013) (x!3159 thiss!1013))) (and b!6116 (= lambda!355 (x!3159 thiss!1013))) (and b!6116 (= lambda!352 (x!3159 thiss!1013))) (and b!6163 (= lambda!369 (x!3159 thiss!1013))) (and b!6117 b_free!157 (= (y!417 that!277) (x!3159 thiss!1013))) (and b!6117 b_free!155 (= (x!3160 that!277) (x!3159 thiss!1013))) (and b!6163 (= lambda!368 (x!3159 thiss!1013))) (and b!6114 b_free!149) b_lambda!2919)))

(declare-fun bs!1262 () Bool)

(declare-fun d!4947 () Bool)

(assert (= bs!1262 (and d!4947 b!6116)))

(assert (=> bs!1262 (= (dynLambda!60 lambda!352) (foldRight1!7 (map!125 (toList!30 tree!30) lambda!354) lambda!353))))

(assert (=> bs!1262 m!8791))

(assert (=> bs!1262 m!8791))

(assert (=> bs!1262 m!8815))

(assert (=> bs!1262 m!8815))

(assert (=> bs!1262 m!8817))

(assert (=> (and b!6116 (= lambda!352 (x!3159 thiss!1013)) d!4903) d!4947))

(declare-fun bs!1263 () Bool)

(declare-fun d!4949 () Bool)

(assert (= bs!1263 (and d!4949 b!6115)))

(assert (=> bs!1263 (= (dynLambda!60 lambda!357) (fold!8 (map!124 tree!30 lambda!354) lambda!353))))

(assert (=> bs!1263 m!8807))

(assert (=> bs!1263 m!8807))

(assert (=> bs!1263 m!8809))

(assert (=> (and b!6115 (= lambda!357 (x!3159 thiss!1013)) d!4903) d!4949))

(declare-fun bs!1264 () Bool)

(declare-fun d!4951 () Bool)

(assert (= bs!1264 (and d!4951 b!6163)))

(assert (=> bs!1264 (= (dynLambda!60 lambda!368) (fold!8 (left!277 (map!124 tree!30 lambda!354)) lambda!353))))

(assert (=> bs!1264 m!8889))

(assert (=> (and b!6163 (= lambda!368 (x!3159 thiss!1013)) d!4903) d!4951))

(declare-fun bs!1265 () Bool)

(declare-fun d!4953 () Bool)

(assert (= bs!1265 (and d!4953 b!6163)))

(assert (=> bs!1265 (= (dynLambda!60 lambda!369) (fold!8 (right!280 (map!124 tree!30 lambda!354)) lambda!353))))

(assert (=> bs!1265 m!8887))

(assert (=> (and b!6163 (= lambda!369 (x!3159 thiss!1013)) d!4903) d!4953))

(declare-fun bs!1266 () Bool)

(declare-fun d!4955 () Bool)

(assert (= bs!1266 (and d!4955 b!6116)))

(assert (=> bs!1266 (= (dynLambda!60 lambda!355) (foldRight1!7 (toList!31 (map!124 tree!30 lambda!354)) lambda!353))))

(assert (=> bs!1266 m!8807))

(assert (=> bs!1266 m!8807))

(assert (=> bs!1266 m!8811))

(assert (=> bs!1266 m!8811))

(assert (=> bs!1266 m!8813))

(assert (=> (and b!6116 (= lambda!355 (x!3159 thiss!1013)) d!4903) d!4955))

(declare-fun b_lambda!2921 () Bool)

(assert (= b_lambda!2873 (or b!6153 b_lambda!2921)))

(declare-fun bs!1267 () Bool)

(declare-fun d!4957 () Bool)

(assert (= bs!1267 (and d!4957 b!6153)))

(assert (=> bs!1267 (= (dynLambda!65 lambda!362) (map!124 (left!276 tree!30) lambda!354))))

(declare-fun m!8899 () Bool)

(assert (=> bs!1267 m!8899))

(assert (=> b!6153 d!4957))

(push 1)

(assert (not b_next!301))

(assert (not b_lambda!2895))

(assert b_and!1215)

(assert b_and!1203)

(assert (not bs!1266))

(assert (not b_lambda!2903))

(assert (not d!4911))

(assert (not d!4897))

(assert (not bs!1250))

(assert (not b_lambda!2863))

(assert (not bs!1264))

(assert (not bs!1261))

(assert b_and!1219)

(assert (not bs!1267))

(assert (not b_lambda!2861))

(assert (not bs!1265))

(assert (not b!6141))

(assert (not b_next!307))

(assert (not bs!1254))

(assert (not bs!1258))

(assert (not bs!1249))

(assert (not bs!1262))

(assert (not bs!1246))

(assert (not b_lambda!2915))

(assert (not b_lambda!2911))

(assert (not b_lambda!2901))

(assert (not bs!1248))

(assert (not d!4907))

(assert (not b_lambda!2865))

(assert (not b_next!303))

(assert (not b!6133))

(assert (not d!4893))

(assert (not b_lambda!2919))

(assert (not b_lambda!2897))

(assert (not b!6127))

(assert (not bs!1252))

(assert (not b_lambda!2899))

(assert b_and!1213)

(assert (not b_lambda!2921))

(assert (not bs!1255))

(assert b_and!1217)

(assert (not b_lambda!2917))

(assert (not bs!1260))

(assert (not bs!1263))

(assert (not b!6139))

(assert (not bs!1256))

(assert (not d!4909))

(assert (not bs!1245))

(assert (not b_lambda!2909))

(assert (not b_next!283))

(assert (not b!6147))

(assert (not b_lambda!2907))

(assert (not bs!1253))

(assert (not bs!1247))

(assert (not b_next!305))

(assert (not b_lambda!2905))

(assert (not b_lambda!2913))

(assert (not bs!1257))

(assert (not bs!1251))

(assert (not bs!1259))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!301))

(assert b_and!1215)

(assert b_and!1203)

(assert b_and!1219)

(assert (not b_next!307))

(assert (not b_next!303))

(assert b_and!1213)

(assert b_and!1217)

(assert (not b_next!283))

(assert (not b_next!305))

(check-sat)

(pop 1)

