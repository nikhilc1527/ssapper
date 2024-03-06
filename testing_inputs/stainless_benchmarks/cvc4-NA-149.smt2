; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!908 () Bool)

(assert start!908)

(declare-fun b!5963 () Bool)

(declare-fun b_free!117 () Bool)

(declare-fun b_next!169 () Bool)

(assert (=> b!5963 (= b_free!117 (not b_next!169))))

(declare-fun tp!313 () Bool)

(declare-fun b_and!1067 () Bool)

(assert (=> b!5963 (= tp!313 b_and!1067)))

(declare-fun b_free!119 () Bool)

(declare-fun b_next!171 () Bool)

(assert (=> b!5963 (= b_free!119 (not b_next!171))))

(declare-fun tp!311 () Bool)

(declare-fun b_and!1069 () Bool)

(assert (=> b!5963 (= tp!311 b_and!1069)))

(declare-fun b_free!121 () Bool)

(declare-fun b_next!173 () Bool)

(assert (=> b!5963 (= b_free!121 (not b_next!173))))

(declare-fun tp!309 () Bool)

(declare-fun b_and!1071 () Bool)

(assert (=> b!5963 (= tp!309 b_and!1071)))

(declare-fun b!5964 () Bool)

(declare-fun b_free!123 () Bool)

(declare-fun b_next!175 () Bool)

(assert (=> b!5964 (= b_free!123 (not b_next!175))))

(declare-fun tp!312 () Bool)

(declare-fun b_and!1073 () Bool)

(assert (=> b!5964 (= tp!312 b_and!1073)))

(declare-fun b_free!125 () Bool)

(declare-fun b_next!177 () Bool)

(assert (=> b!5964 (= b_free!125 (not b_next!177))))

(declare-fun tp!308 () Bool)

(declare-fun b_and!1075 () Bool)

(assert (=> b!5964 (= tp!308 b_and!1075)))

(declare-fun b_free!127 () Bool)

(declare-fun b_next!179 () Bool)

(assert (=> b!5964 (= b_free!127 (not b_next!179))))

(declare-fun tp!310 () Bool)

(declare-fun b_and!1077 () Bool)

(assert (=> b!5964 (= tp!310 b_and!1077)))

(declare-fun b!5962 () Bool)

(assert (=> b!5962 true))

(declare-datatypes () ((Balance!19 (Balance!20 (extraOpen!50 Int) (extraClose!50 Int)))))

(declare-datatypes () ((EqEvidence!12 (EqEvidence!13 (x!3094 Int) (y!407 Int) (evidence!73 Int)))))

(declare-fun thiss!1014 () EqEvidence!12)

(declare-fun b_next!181 () Bool)

(declare-fun lambda!283 () Int)

(assert (=> b!5963 (= b_next!169 (or (and b!5962 (= lambda!283 (x!3094 thiss!1014))) b_next!181))))

(declare-fun b_next!183 () Bool)

(assert (=> b!5963 (= b_next!171 (or (and b!5962 (= lambda!283 (y!407 thiss!1014))) b_next!183))))

(declare-fun b_next!185 () Bool)

(declare-fun that!266 () EqEvidence!12)

(assert (=> b!5964 (= b_next!175 (or (and b!5962 (= lambda!283 (x!3094 that!266))) b_next!185))))

(declare-fun b_next!187 () Bool)

(assert (=> b!5964 (= b_next!177 (or (and b!5962 (= lambda!283 (y!407 that!266))) b_next!187))))

(assert (=> b!5962 true))

(declare-fun b_next!189 () Bool)

(declare-fun lambda!286 () Int)

(assert (=> b!5963 (= b_next!173 (or (and b!5962 (= lambda!286 (evidence!73 thiss!1014))) b_next!189))))

(declare-fun b_next!191 () Bool)

(assert (=> b!5964 (= b_next!179 (or (and b!5962 (= lambda!286 (evidence!73 that!266))) b_next!191))))

(declare-fun bs!1161 () Bool)

(declare-fun b!5967 () Bool)

(assert (= bs!1161 (and b!5967 b!5962)))

(declare-fun lambda!287 () Int)

(assert (=> bs!1161 (not (= lambda!287 lambda!283))))

(assert (=> b!5967 true))

(declare-fun b_next!193 () Bool)

(assert (=> b!5963 (= b_next!181 (or (and b!5967 (= lambda!287 (x!3094 thiss!1014))) b_next!193))))

(declare-fun b_next!195 () Bool)

(assert (=> b!5963 (= b_next!183 (or (and b!5967 (= lambda!287 (y!407 thiss!1014))) b_next!195))))

(declare-fun b_next!197 () Bool)

(assert (=> b!5964 (= b_next!185 (or (and b!5967 (= lambda!287 (x!3094 that!266))) b_next!197))))

(declare-fun b_next!199 () Bool)

(assert (=> b!5964 (= b_next!187 (or (and b!5967 (= lambda!287 (y!407 that!266))) b_next!199))))

(declare-fun lambda!288 () Int)

(assert (=> bs!1161 (not (= lambda!288 lambda!286))))

(assert (=> b!5967 true))

(declare-fun b_next!201 () Bool)

(assert (=> b!5963 (= b_next!189 (or (and b!5967 (= lambda!288 (evidence!73 thiss!1014))) b_next!201))))

(declare-fun b_next!203 () Bool)

(assert (=> b!5964 (= b_next!191 (or (and b!5967 (= lambda!288 (evidence!73 that!266))) b_next!203))))

(declare-fun res!1607 () Bool)

(declare-fun e!3510 () Bool)

(assert (=> start!908 (=> (not res!1607) (not e!3510))))

(declare-datatypes () ((ProofOps!18 (ProofOps!19 (prop!113 Bool)))))

(declare-fun thiss!1009 () ProofOps!18)

(declare-datatypes () ((Parenthesis!11 (CloseParenthesis!10) (OpenParenthesis!10))))

(declare-datatypes () ((Tree!25 (Branch!16 (left!268 Tree!25) (right!271 Tree!25)) (Leaf!98 (value!1267 Parenthesis!11)))))

(declare-fun tree!30 () Tree!25)

(declare-datatypes () ((List!109 (Nil!107) (Cons!106 (head!324 Parenthesis!11) (tail!336 List!109)))))

(declare-fun isMatchedHybid!0 (List!109) Bool)

(declare-fun toList!26 (Tree!25) List!109)

(declare-fun isMatchedParallel!0 (Tree!25) Bool)

(assert (=> start!908 (= res!1607 (= thiss!1009 (ProofOps!19 (= (isMatchedHybid!0 (toList!26 tree!30)) (isMatchedParallel!0 tree!30)))))))

(assert (=> start!908 e!3510))

(assert (=> start!908 true))

(declare-fun e!3511 () Bool)

(declare-fun inv!214 (EqEvidence!12) Bool)

(assert (=> start!908 (and (inv!214 thiss!1014) e!3511)))

(declare-fun e!3509 () Bool)

(assert (=> start!908 (and (inv!214 that!266) e!3509)))

(declare-fun res!1606 () Bool)

(assert (=> b!5962 (=> (not res!1606) (not e!3510))))

(assert (=> b!5962 (= res!1606 (= thiss!1014 (EqEvidence!13 lambda!283 lambda!283 lambda!286)))))

(assert (=> b!5963 (= e!3511 (and tp!313 tp!311 tp!309))))

(assert (=> b!5964 (= e!3509 (and tp!312 tp!308 tp!310))))

(declare-fun b!5965 () Bool)

(declare-fun dynLambda!50 (Int) Balance!19)

(assert (=> b!5965 (= e!3510 (not (= (dynLambda!50 (y!407 thiss!1014)) (dynLambda!50 (x!3094 that!266)))))))

(declare-fun b!5966 () Bool)

(declare-fun res!1609 () Bool)

(assert (=> b!5966 (=> (not res!1609) (not e!3510))))

(declare-fun dynLambda!51 (Int) Bool)

(assert (=> b!5966 (= res!1609 (dynLambda!51 (evidence!73 thiss!1014)))))

(declare-fun res!1608 () Bool)

(assert (=> b!5967 (=> (not res!1608) (not e!3510))))

(assert (=> b!5967 (= res!1608 (= that!266 (EqEvidence!13 lambda!287 lambda!287 lambda!288)))))

(assert (= (and start!908 res!1607) b!5962))

(assert (= (and b!5962 res!1606) b!5967))

(assert (= (and b!5967 res!1608) b!5966))

(assert (= (and b!5966 res!1609) b!5965))

(assert (= start!908 b!5963))

(assert (= start!908 b!5964))

(declare-fun b_lambda!2711 () Bool)

(assert (=> (not b_lambda!2711) (not b!5965)))

(declare-fun t!949 () Bool)

(declare-fun tb!609 () Bool)

(assert (=> (and b!5963 (= (x!3094 thiss!1014) (y!407 thiss!1014)) t!949) tb!609))

(declare-fun result!649 () Bool)

(assert (=> tb!609 (= result!649 true)))

(assert (=> b!5965 t!949))

(declare-fun b_and!1079 () Bool)

(assert (= b_and!1067 (and (=> t!949 result!649) b_and!1079)))

(declare-fun t!951 () Bool)

(declare-fun tb!611 () Bool)

(assert (=> (and b!5963 (= (y!407 thiss!1014) (y!407 thiss!1014)) t!951) tb!611))

(declare-fun result!651 () Bool)

(assert (=> tb!611 (= result!651 true)))

(assert (=> b!5965 t!951))

(declare-fun b_and!1081 () Bool)

(assert (= b_and!1069 (and (=> t!951 result!651) b_and!1081)))

(declare-fun tb!613 () Bool)

(declare-fun t!953 () Bool)

(assert (=> (and b!5964 (= (x!3094 that!266) (y!407 thiss!1014)) t!953) tb!613))

(declare-fun result!653 () Bool)

(assert (=> tb!613 (= result!653 true)))

(assert (=> b!5965 t!953))

(declare-fun b_and!1083 () Bool)

(assert (= b_and!1073 (and (=> t!953 result!653) b_and!1083)))

(declare-fun tb!615 () Bool)

(declare-fun t!955 () Bool)

(assert (=> (and b!5964 (= (y!407 that!266) (y!407 thiss!1014)) t!955) tb!615))

(declare-fun result!655 () Bool)

(assert (=> tb!615 (= result!655 true)))

(assert (=> b!5965 t!955))

(declare-fun b_and!1085 () Bool)

(assert (= b_and!1075 (and (=> t!955 result!655) b_and!1085)))

(declare-fun b_lambda!2713 () Bool)

(assert (=> (not b_lambda!2713) (not b!5965)))

(declare-fun tb!617 () Bool)

(declare-fun t!957 () Bool)

(assert (=> (and b!5963 (= (x!3094 thiss!1014) (x!3094 that!266)) t!957) tb!617))

(declare-fun result!657 () Bool)

(assert (=> tb!617 (= result!657 true)))

(assert (=> b!5965 t!957))

(declare-fun b_and!1087 () Bool)

(assert (= b_and!1079 (and (=> t!957 result!657) b_and!1087)))

(declare-fun tb!619 () Bool)

(declare-fun t!959 () Bool)

(assert (=> (and b!5963 (= (y!407 thiss!1014) (x!3094 that!266)) t!959) tb!619))

(declare-fun result!659 () Bool)

(assert (=> tb!619 (= result!659 true)))

(assert (=> b!5965 t!959))

(declare-fun b_and!1089 () Bool)

(assert (= b_and!1081 (and (=> t!959 result!659) b_and!1089)))

(declare-fun t!961 () Bool)

(declare-fun tb!621 () Bool)

(assert (=> (and b!5964 (= (x!3094 that!266) (x!3094 that!266)) t!961) tb!621))

(declare-fun result!661 () Bool)

(assert (=> tb!621 (= result!661 true)))

(assert (=> b!5965 t!961))

(declare-fun b_and!1091 () Bool)

(assert (= b_and!1083 (and (=> t!961 result!661) b_and!1091)))

(declare-fun t!963 () Bool)

(declare-fun tb!623 () Bool)

(assert (=> (and b!5964 (= (y!407 that!266) (x!3094 that!266)) t!963) tb!623))

(declare-fun result!663 () Bool)

(assert (=> tb!623 (= result!663 true)))

(assert (=> b!5965 t!963))

(declare-fun b_and!1093 () Bool)

(assert (= b_and!1085 (and (=> t!963 result!663) b_and!1093)))

(declare-fun b_lambda!2715 () Bool)

(assert (=> (not b_lambda!2715) (not b!5966)))

(declare-fun t!965 () Bool)

(declare-fun tb!625 () Bool)

(assert (=> (and b!5963 (= (evidence!73 thiss!1014) (evidence!73 thiss!1014)) t!965) tb!625))

(declare-fun result!665 () Bool)

(assert (=> tb!625 (= result!665 true)))

(assert (=> b!5966 t!965))

(declare-fun b_and!1095 () Bool)

(assert (= b_and!1071 (and (=> t!965 result!665) b_and!1095)))

(declare-fun t!967 () Bool)

(declare-fun tb!627 () Bool)

(assert (=> (and b!5964 (= (evidence!73 that!266) (evidence!73 thiss!1014)) t!967) tb!627))

(declare-fun result!667 () Bool)

(assert (=> tb!627 (= result!667 true)))

(assert (=> b!5966 t!967))

(declare-fun b_and!1097 () Bool)

(assert (= b_and!1077 (and (=> t!967 result!667) b_and!1097)))

(declare-fun m!8509 () Bool)

(assert (=> start!908 m!8509))

(declare-fun m!8511 () Bool)

(assert (=> start!908 m!8511))

(declare-fun m!8513 () Bool)

(assert (=> start!908 m!8513))

(declare-fun m!8515 () Bool)

(assert (=> start!908 m!8515))

(assert (=> start!908 m!8509))

(declare-fun m!8517 () Bool)

(assert (=> start!908 m!8517))

(declare-fun m!8519 () Bool)

(assert (=> b!5965 m!8519))

(declare-fun m!8521 () Bool)

(assert (=> b!5965 m!8521))

(declare-fun m!8523 () Bool)

(assert (=> b!5966 m!8523))

(push 1)

(assert (not b_lambda!2713))

(assert (not b_lambda!2715))

(assert b_and!1089)

(assert b_and!1097)

(assert (not b_next!195))

(assert (not b_next!199))

(assert b_and!1087)

(assert b_and!1095)

(assert (not b_lambda!2711))

(assert (not b_next!201))

(assert b_and!1093)

(assert b_and!1091)

(assert (not start!908))

(assert (not b_next!203))

(assert (not b_next!193))

(assert (not b_next!197))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1089)

(assert b_and!1097)

(assert (not b_next!195))

(assert (not b_next!199))

(assert b_and!1087)

(assert b_and!1095)

(assert (not b_next!201))

(assert b_and!1093)

(assert b_and!1091)

(assert (not b_next!203))

(assert (not b_next!193))

(assert (not b_next!197))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2717 () Bool)

(assert (= b_lambda!2715 (or (and b!5962 (= lambda!286 (evidence!73 thiss!1014))) (and b!5967 (= lambda!288 (evidence!73 thiss!1014))) (and b!5963 b_free!121) (and b!5964 b_free!127 (= (evidence!73 that!266) (evidence!73 thiss!1014))) b_lambda!2717)))

(declare-fun bs!1162 () Bool)

(declare-fun d!4713 () Bool)

(assert (= bs!1162 (and d!4713 b!5962)))

(declare-fun lambda!285 () Int)

(declare-fun toList_map_commutativity!0 (Tree!25 Int) Bool)

(assert (=> bs!1162 (= (dynLambda!51 lambda!286) (toList_map_commutativity!0 tree!30 lambda!285))))

(declare-fun m!8525 () Bool)

(assert (=> bs!1162 m!8525))

(assert (=> (and b!5962 (= lambda!286 (evidence!73 thiss!1014)) b!5966) d!4713))

(declare-fun bs!1163 () Bool)

(declare-fun d!4715 () Bool)

(assert (= bs!1163 (and d!4715 b!5967)))

(declare-datatypes () ((Tree!26 (Branch!17 (left!269 Tree!26) (right!272 Tree!26)) (Leaf!99 (value!1268 Balance!19)))))

(declare-fun fold_foldRight1_equivalence!0 (Tree!26) Bool)

(declare-fun map!122 (Tree!25 Int) Tree!26)

(assert (=> bs!1163 (= (dynLambda!51 lambda!288) (fold_foldRight1_equivalence!0 (map!122 tree!30 lambda!285)))))

(declare-fun m!8527 () Bool)

(assert (=> bs!1163 m!8527))

(assert (=> bs!1163 m!8527))

(declare-fun m!8529 () Bool)

(assert (=> bs!1163 m!8529))

(assert (=> (and b!5967 (= lambda!288 (evidence!73 thiss!1014)) b!5966) d!4715))

(declare-fun b_lambda!2719 () Bool)

(assert (= b_lambda!2713 (or (and b!5963 b_free!119 (= (y!407 thiss!1014) (x!3094 that!266))) (and b!5963 b_free!117 (= (x!3094 thiss!1014) (x!3094 that!266))) (and b!5962 (= lambda!283 (x!3094 that!266))) (and b!5967 (= lambda!287 (x!3094 that!266))) (and b!5964 b_free!123) (and b!5964 b_free!125 (= (y!407 that!266) (x!3094 that!266))) b_lambda!2719)))

(declare-fun bs!1164 () Bool)

(declare-fun d!4717 () Bool)

(assert (= bs!1164 (and d!4717 b!5967)))

(declare-fun lambda!284 () Int)

(declare-datatypes () ((List!110 (Nil!108) (Cons!107 (head!325 Balance!19) (tail!337 List!110)))))

(declare-fun foldRight1!6 (List!110 Int) Balance!19)

(declare-fun toList!27 (Tree!26) List!110)

(assert (=> bs!1164 (= (dynLambda!50 lambda!287) (foldRight1!6 (toList!27 (map!122 tree!30 lambda!285)) lambda!284))))

(assert (=> bs!1164 m!8527))

(assert (=> bs!1164 m!8527))

(declare-fun m!8531 () Bool)

(assert (=> bs!1164 m!8531))

(assert (=> bs!1164 m!8531))

(declare-fun m!8533 () Bool)

(assert (=> bs!1164 m!8533))

(assert (=> (and b!5967 (= lambda!287 (x!3094 that!266)) b!5965) d!4717))

(declare-fun bs!1165 () Bool)

(declare-fun d!4719 () Bool)

(assert (= bs!1165 (and d!4719 b!5962)))

(declare-fun map!123 (List!109 Int) List!110)

(assert (=> bs!1165 (= (dynLambda!50 lambda!283) (foldRight1!6 (map!123 (toList!26 tree!30) lambda!285) lambda!284))))

(assert (=> bs!1165 m!8509))

(assert (=> bs!1165 m!8509))

(declare-fun m!8535 () Bool)

(assert (=> bs!1165 m!8535))

(assert (=> bs!1165 m!8535))

(declare-fun m!8537 () Bool)

(assert (=> bs!1165 m!8537))

(assert (=> (and b!5962 (= lambda!283 (x!3094 that!266)) b!5965) d!4719))

(declare-fun b_lambda!2721 () Bool)

(assert (= b_lambda!2711 (or (and b!5963 b_free!117 (= (x!3094 thiss!1014) (y!407 thiss!1014))) (and b!5964 b_free!125 (= (y!407 that!266) (y!407 thiss!1014))) (and b!5963 b_free!119) (and b!5964 b_free!123 (= (x!3094 that!266) (y!407 thiss!1014))) (and b!5962 (= lambda!283 (y!407 thiss!1014))) (and b!5967 (= lambda!287 (y!407 thiss!1014))) b_lambda!2721)))

(declare-fun bs!1166 () Bool)

(declare-fun d!4721 () Bool)

(assert (= bs!1166 (and d!4721 b!5962)))

(assert (=> bs!1166 (= (dynLambda!50 lambda!283) (foldRight1!6 (map!123 (toList!26 tree!30) lambda!285) lambda!284))))

(assert (=> bs!1166 m!8509))

(assert (=> bs!1166 m!8509))

(assert (=> bs!1166 m!8535))

(assert (=> bs!1166 m!8535))

(assert (=> bs!1166 m!8537))

(assert (=> (and b!5962 (= lambda!283 (y!407 thiss!1014)) b!5965) d!4721))

(declare-fun bs!1167 () Bool)

(declare-fun d!4723 () Bool)

(assert (= bs!1167 (and d!4723 b!5967)))

(assert (=> bs!1167 (= (dynLambda!50 lambda!287) (foldRight1!6 (toList!27 (map!122 tree!30 lambda!285)) lambda!284))))

(assert (=> bs!1167 m!8527))

(assert (=> bs!1167 m!8527))

(assert (=> bs!1167 m!8531))

(assert (=> bs!1167 m!8531))

(assert (=> bs!1167 m!8533))

(assert (=> (and b!5967 (= lambda!287 (y!407 thiss!1014)) b!5965) d!4723))

(push 1)

(assert (not bs!1163))

(assert (not bs!1162))

(assert (not b_lambda!2721))

(assert b_and!1089)

(assert b_and!1097)

(assert (not b_next!195))

(assert (not b_next!199))

(assert b_and!1087)

(assert b_and!1095)

(assert (not bs!1166))

(assert (not b_lambda!2717))

(assert (not b_next!201))

(assert (not bs!1165))

(assert b_and!1093)

(assert b_and!1091)

(assert (not start!908))

(assert (not b_next!203))

(assert (not b_lambda!2719))

(assert (not bs!1164))

(assert (not b_next!193))

(assert (not bs!1167))

(assert (not b_next!197))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1089)

(assert b_and!1097)

(assert (not b_next!195))

(assert (not b_next!199))

(assert b_and!1087)

(assert b_and!1095)

(assert (not b_next!201))

(assert b_and!1093)

(assert b_and!1091)

(assert (not b_next!203))

(assert (not b_next!193))

(assert (not b_next!197))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4725 () Bool)

(declare-fun c!2280 () Bool)

(assert (=> d!4725 (= c!2280 (and (is-Cons!107 (toList!27 (map!122 tree!30 lambda!285))) (is-Nil!108 (tail!337 (toList!27 (map!122 tree!30 lambda!285))))))))

(declare-fun e!3514 () Balance!19)

(assert (=> d!4725 (= (foldRight1!6 (toList!27 (map!122 tree!30 lambda!285)) lambda!284) e!3514)))

(declare-fun b!5976 () Bool)

(assert (=> b!5976 (= e!3514 (head!325 (toList!27 (map!122 tree!30 lambda!285))))))

(declare-fun b!5977 () Bool)

(declare-fun dynLambda!52 (Int Balance!19 Balance!19) Balance!19)

(assert (=> b!5977 (= e!3514 (dynLambda!52 lambda!284 (head!325 (toList!27 (map!122 tree!30 lambda!285))) (foldRight1!6 (tail!337 (toList!27 (map!122 tree!30 lambda!285))) lambda!284)))))

(assert (= (and d!4725 c!2280) b!5976))

(assert (= (and d!4725 (not c!2280)) b!5977))

(declare-fun b_lambda!2723 () Bool)

(assert (=> (not b_lambda!2723) (not b!5977)))

(declare-fun m!8539 () Bool)

(assert (=> b!5977 m!8539))

(assert (=> b!5977 m!8539))

(declare-fun m!8541 () Bool)

(assert (=> b!5977 m!8541))

(assert (=> bs!1167 d!4725))

(declare-fun d!4727 () Bool)

(declare-fun lt!1309 () List!110)

(declare-fun isEmpty!102 (List!110) Bool)

(assert (=> d!4727 (not (isEmpty!102 lt!1309))))

(declare-fun e!3517 () List!110)

(assert (=> d!4727 (= lt!1309 e!3517)))

(declare-fun c!2283 () Bool)

(assert (=> d!4727 (= c!2283 (is-Leaf!99 (map!122 tree!30 lambda!285)))))

(assert (=> d!4727 (= (toList!27 (map!122 tree!30 lambda!285)) lt!1309)))

(declare-fun b!5982 () Bool)

(assert (=> b!5982 (= e!3517 (Cons!107 (value!1268 (map!122 tree!30 lambda!285)) Nil!108))))

(declare-fun b!5983 () Bool)

(declare-fun append!40 (List!110 List!110) List!110)

(assert (=> b!5983 (= e!3517 (append!40 (toList!27 (left!269 (map!122 tree!30 lambda!285))) (toList!27 (right!272 (map!122 tree!30 lambda!285)))))))

(assert (= (and d!4727 c!2283) b!5982))

(assert (= (and d!4727 (not c!2283)) b!5983))

(declare-fun m!8543 () Bool)

(assert (=> d!4727 m!8543))

(declare-fun m!8545 () Bool)

(assert (=> b!5983 m!8545))

(declare-fun m!8547 () Bool)

(assert (=> b!5983 m!8547))

(assert (=> b!5983 m!8545))

(assert (=> b!5983 m!8547))

(declare-fun m!8549 () Bool)

(assert (=> b!5983 m!8549))

(assert (=> bs!1167 d!4727))

(declare-fun b!5989 () Bool)

(assert (=> b!5989 true))

(declare-fun order!33 () Int)

(declare-fun order!35 () Int)

(declare-fun lambda!293 () Int)

(declare-fun dynLambda!53 (Int Int) Int)

(declare-fun dynLambda!54 (Int Int) Int)

(assert (=> b!5989 (< (dynLambda!53 order!33 lambda!285) (dynLambda!54 order!35 lambda!293))))

(assert (=> b!5989 true))

(declare-fun lambda!294 () Int)

(assert (=> b!5989 (= (= (right!271 tree!30) (left!268 tree!30)) (= lambda!294 lambda!293))))

(assert (=> b!5989 true))

(assert (=> b!5989 (< (dynLambda!53 order!33 lambda!285) (dynLambda!54 order!35 lambda!294))))

(assert (=> b!5989 true))

(declare-fun e!3536 () Tree!26)

(declare-datatypes () ((tuple2!30 (tuple2!31 (_1!15 Tree!26) (_2!15 Tree!26)))))

(declare-fun lt!1312 () tuple2!30)

(assert (=> b!5989 (= e!3536 (Branch!17 (_1!15 lt!1312) (_2!15 lt!1312)))))

(declare-fun dynLambda!55 (Int) Tree!26)

(assert (=> b!5989 (= lt!1312 (tuple2!31 (dynLambda!55 lambda!293) (dynLambda!55 lambda!294)))))

(declare-fun d!4729 () Bool)

(declare-fun c!2286 () Bool)

(assert (=> d!4729 (= c!2286 (is-Leaf!98 tree!30))))

(assert (=> d!4729 (= (map!122 tree!30 lambda!285) e!3536)))

(declare-fun b!5988 () Bool)

(declare-fun dynLambda!56 (Int Parenthesis!11) Balance!19)

(assert (=> b!5988 (= e!3536 (Leaf!99 (dynLambda!56 lambda!285 (value!1267 tree!30))))))

(assert (= (and d!4729 c!2286) b!5988))

(assert (= (and d!4729 (not c!2286)) b!5989))

(declare-fun b_lambda!2725 () Bool)

(assert (=> (not b_lambda!2725) (not b!5989)))

(declare-fun b_lambda!2727 () Bool)

(assert (=> (not b_lambda!2727) (not b!5989)))

(declare-fun b_lambda!2729 () Bool)

(assert (=> (not b_lambda!2729) (not b!5988)))

(declare-fun m!8551 () Bool)

(assert (=> b!5989 m!8551))

(declare-fun m!8553 () Bool)

(assert (=> b!5989 m!8553))

(declare-fun m!8555 () Bool)

(assert (=> b!5988 m!8555))

(assert (=> bs!1167 d!4729))

(declare-fun d!4731 () Bool)

(declare-fun c!2287 () Bool)

(assert (=> d!4731 (= c!2287 (and (is-Cons!107 (map!123 (toList!26 tree!30) lambda!285)) (is-Nil!108 (tail!337 (map!123 (toList!26 tree!30) lambda!285)))))))

(declare-fun e!3537 () Balance!19)

(assert (=> d!4731 (= (foldRight1!6 (map!123 (toList!26 tree!30) lambda!285) lambda!284) e!3537)))

(declare-fun b!5994 () Bool)

(assert (=> b!5994 (= e!3537 (head!325 (map!123 (toList!26 tree!30) lambda!285)))))

(declare-fun b!5995 () Bool)

(assert (=> b!5995 (= e!3537 (dynLambda!52 lambda!284 (head!325 (map!123 (toList!26 tree!30) lambda!285)) (foldRight1!6 (tail!337 (map!123 (toList!26 tree!30) lambda!285)) lambda!284)))))

(assert (= (and d!4731 c!2287) b!5994))

(assert (= (and d!4731 (not c!2287)) b!5995))

(declare-fun b_lambda!2731 () Bool)

(assert (=> (not b_lambda!2731) (not b!5995)))

(declare-fun m!8557 () Bool)

(assert (=> b!5995 m!8557))

(assert (=> b!5995 m!8557))

(declare-fun m!8559 () Bool)

(assert (=> b!5995 m!8559))

(assert (=> bs!1166 d!4731))

(declare-fun d!4733 () Bool)

(declare-fun c!2290 () Bool)

(assert (=> d!4733 (= c!2290 (is-Nil!107 (toList!26 tree!30)))))

(declare-fun e!3540 () List!110)

(assert (=> d!4733 (= (map!123 (toList!26 tree!30) lambda!285) e!3540)))

(declare-fun b!6000 () Bool)

(assert (=> b!6000 (= e!3540 Nil!108)))

(declare-fun b!6001 () Bool)

(assert (=> b!6001 (= e!3540 (Cons!107 (dynLambda!56 lambda!285 (head!324 (toList!26 tree!30))) (map!123 (tail!336 (toList!26 tree!30)) lambda!285)))))

(assert (= (and d!4733 c!2290) b!6000))

(assert (= (and d!4733 (not c!2290)) b!6001))

(declare-fun b_lambda!2733 () Bool)

(assert (=> (not b_lambda!2733) (not b!6001)))

(declare-fun m!8561 () Bool)

(assert (=> b!6001 m!8561))

(declare-fun m!8563 () Bool)

(assert (=> b!6001 m!8563))

(assert (=> bs!1166 d!4733))

(declare-fun d!4735 () Bool)

(declare-fun lt!1315 () List!109)

(declare-fun isEmpty!103 (List!109) Bool)

(assert (=> d!4735 (not (isEmpty!103 lt!1315))))

(declare-fun e!3543 () List!109)

(assert (=> d!4735 (= lt!1315 e!3543)))

(declare-fun c!2293 () Bool)

(assert (=> d!4735 (= c!2293 (is-Leaf!98 tree!30))))

(assert (=> d!4735 (= (toList!26 tree!30) lt!1315)))

(declare-fun b!6006 () Bool)

(assert (=> b!6006 (= e!3543 (Cons!106 (value!1267 tree!30) Nil!107))))

(declare-fun b!6007 () Bool)

(declare-fun append!41 (List!109 List!109) List!109)

(assert (=> b!6007 (= e!3543 (append!41 (toList!26 (left!268 tree!30)) (toList!26 (right!271 tree!30))))))

(assert (= (and d!4735 c!2293) b!6006))

(assert (= (and d!4735 (not c!2293)) b!6007))

(declare-fun m!8565 () Bool)

(assert (=> d!4735 m!8565))

(declare-fun m!8567 () Bool)

(assert (=> b!6007 m!8567))

(declare-fun m!8569 () Bool)

(assert (=> b!6007 m!8569))

(assert (=> b!6007 m!8567))

(assert (=> b!6007 m!8569))

(declare-fun m!8571 () Bool)

(assert (=> b!6007 m!8571))

(assert (=> bs!1166 d!4735))

(assert (=> bs!1164 d!4725))

(assert (=> bs!1164 d!4727))

(assert (=> bs!1164 d!4729))

(assert (=> bs!1165 d!4731))

(assert (=> bs!1165 d!4733))

(assert (=> bs!1165 d!4735))

(assert (=> start!908 d!4735))

(declare-fun bs!1168 () Bool)

(declare-fun d!4737 () Bool)

(assert (= bs!1168 (and d!4737 b!5962)))

(declare-fun lambda!299 () Int)

(assert (=> bs!1168 (= lambda!299 lambda!285)))

(declare-fun lambda!300 () Int)

(assert (=> bs!1168 (= lambda!300 lambda!284)))

(declare-fun isBalanced!0 (Balance!19) Bool)

(assert (=> d!4737 (= (isMatchedHybid!0 (toList!26 tree!30)) (isBalanced!0 (foldRight1!6 (map!123 (toList!26 tree!30) lambda!299) lambda!300)))))

(declare-fun bs!1169 () Bool)

(assert (= bs!1169 d!4737))

(assert (=> bs!1169 m!8509))

(declare-fun m!8573 () Bool)

(assert (=> bs!1169 m!8573))

(assert (=> bs!1169 m!8573))

(declare-fun m!8575 () Bool)

(assert (=> bs!1169 m!8575))

(assert (=> bs!1169 m!8575))

(declare-fun m!8577 () Bool)

(assert (=> bs!1169 m!8577))

(assert (=> start!908 d!4737))

(declare-fun d!4739 () Bool)

(declare-fun res!1614 () Bool)

(declare-fun e!3546 () Bool)

(assert (=> d!4739 (=> (not res!1614) (not e!3546))))

(assert (=> d!4739 (= res!1614 (= (dynLambda!50 (x!3094 that!266)) (dynLambda!50 (y!407 that!266))))))

(assert (=> d!4739 (= (inv!214 that!266) e!3546)))

(declare-fun b!6010 () Bool)

(assert (=> b!6010 (= e!3546 (dynLambda!51 (evidence!73 that!266)))))

(assert (= (and d!4739 res!1614) b!6010))

(declare-fun b_lambda!2735 () Bool)

(assert (=> (not b_lambda!2735) (not d!4739)))

(assert (=> d!4739 t!957))

(declare-fun b_and!1099 () Bool)

(assert (= b_and!1087 (and (=> t!957 result!657) b_and!1099)))

(assert (=> d!4739 t!959))

(declare-fun b_and!1101 () Bool)

(assert (= b_and!1089 (and (=> t!959 result!659) b_and!1101)))

(assert (=> d!4739 t!961))

(declare-fun b_and!1103 () Bool)

(assert (= b_and!1091 (and (=> t!961 result!661) b_and!1103)))

(assert (=> d!4739 t!963))

(declare-fun b_and!1105 () Bool)

(assert (= b_and!1093 (and (=> t!963 result!663) b_and!1105)))

(declare-fun b_lambda!2737 () Bool)

(assert (=> (not b_lambda!2737) (not d!4739)))

(declare-fun tb!629 () Bool)

(declare-fun t!969 () Bool)

(assert (=> (and b!5963 (= (x!3094 thiss!1014) (y!407 that!266)) t!969) tb!629))

(declare-fun result!669 () Bool)

(assert (=> tb!629 (= result!669 true)))

(assert (=> d!4739 t!969))

(declare-fun b_and!1107 () Bool)

(assert (= b_and!1099 (and (=> t!969 result!669) b_and!1107)))

(declare-fun tb!631 () Bool)

(declare-fun t!971 () Bool)

(assert (=> (and b!5963 (= (y!407 thiss!1014) (y!407 that!266)) t!971) tb!631))

(declare-fun result!671 () Bool)

(assert (=> tb!631 (= result!671 true)))

(assert (=> d!4739 t!971))

(declare-fun b_and!1109 () Bool)

(assert (= b_and!1101 (and (=> t!971 result!671) b_and!1109)))

(declare-fun t!973 () Bool)

(declare-fun tb!633 () Bool)

(assert (=> (and b!5964 (= (x!3094 that!266) (y!407 that!266)) t!973) tb!633))

(declare-fun result!673 () Bool)

(assert (=> tb!633 (= result!673 true)))

(assert (=> d!4739 t!973))

(declare-fun b_and!1111 () Bool)

(assert (= b_and!1103 (and (=> t!973 result!673) b_and!1111)))

(declare-fun t!975 () Bool)

(declare-fun tb!635 () Bool)

(assert (=> (and b!5964 (= (y!407 that!266) (y!407 that!266)) t!975) tb!635))

(declare-fun result!675 () Bool)

(assert (=> tb!635 (= result!675 true)))

(assert (=> d!4739 t!975))

(declare-fun b_and!1113 () Bool)

(assert (= b_and!1105 (and (=> t!975 result!675) b_and!1113)))

(declare-fun b_lambda!2739 () Bool)

(assert (=> (not b_lambda!2739) (not b!6010)))

(declare-fun t!977 () Bool)

(declare-fun tb!637 () Bool)

(assert (=> (and b!5963 (= (evidence!73 thiss!1014) (evidence!73 that!266)) t!977) tb!637))

(declare-fun result!677 () Bool)

(assert (=> tb!637 (= result!677 true)))

(assert (=> b!6010 t!977))

(declare-fun b_and!1115 () Bool)

(assert (= b_and!1095 (and (=> t!977 result!677) b_and!1115)))

(declare-fun t!979 () Bool)

(declare-fun tb!639 () Bool)

(assert (=> (and b!5964 (= (evidence!73 that!266) (evidence!73 that!266)) t!979) tb!639))

(declare-fun result!679 () Bool)

(assert (=> tb!639 (= result!679 true)))

(assert (=> b!6010 t!979))

(declare-fun b_and!1117 () Bool)

(assert (= b_and!1097 (and (=> t!979 result!679) b_and!1117)))

(assert (=> d!4739 m!8521))

(declare-fun m!8579 () Bool)

(assert (=> d!4739 m!8579))

(declare-fun m!8581 () Bool)

(assert (=> b!6010 m!8581))

(assert (=> start!908 d!4739))

(declare-fun bs!1170 () Bool)

(declare-fun d!4741 () Bool)

(assert (= bs!1170 (and d!4741 b!5962)))

(declare-fun lambda!305 () Int)

(assert (=> bs!1170 (= lambda!305 lambda!285)))

(declare-fun bs!1171 () Bool)

(assert (= bs!1171 (and d!4741 d!4737)))

(assert (=> bs!1171 (= lambda!305 lambda!299)))

(declare-fun lambda!306 () Int)

(assert (=> bs!1170 (= lambda!306 lambda!284)))

(assert (=> bs!1171 (= lambda!306 lambda!300)))

(declare-fun fold!7 (Tree!26 Int) Balance!19)

(assert (=> d!4741 (= (isMatchedParallel!0 tree!30) (isBalanced!0 (fold!7 (map!122 tree!30 lambda!305) lambda!306)))))

(declare-fun bs!1172 () Bool)

(assert (= bs!1172 d!4741))

(declare-fun m!8583 () Bool)

(assert (=> bs!1172 m!8583))

(assert (=> bs!1172 m!8583))

(declare-fun m!8585 () Bool)

(assert (=> bs!1172 m!8585))

(assert (=> bs!1172 m!8585))

(declare-fun m!8587 () Bool)

(assert (=> bs!1172 m!8587))

(assert (=> start!908 d!4741))

(declare-fun d!4743 () Bool)

(declare-fun res!1615 () Bool)

(declare-fun e!3547 () Bool)

(assert (=> d!4743 (=> (not res!1615) (not e!3547))))

(assert (=> d!4743 (= res!1615 (= (dynLambda!50 (x!3094 thiss!1014)) (dynLambda!50 (y!407 thiss!1014))))))

(assert (=> d!4743 (= (inv!214 thiss!1014) e!3547)))

(declare-fun b!6011 () Bool)

(assert (=> b!6011 (= e!3547 (dynLambda!51 (evidence!73 thiss!1014)))))

(assert (= (and d!4743 res!1615) b!6011))

(declare-fun b_lambda!2741 () Bool)

(assert (=> (not b_lambda!2741) (not d!4743)))

(declare-fun t!981 () Bool)

(declare-fun tb!641 () Bool)

(assert (=> (and b!5963 (= (x!3094 thiss!1014) (x!3094 thiss!1014)) t!981) tb!641))

(declare-fun result!681 () Bool)

(assert (=> tb!641 (= result!681 true)))

(assert (=> d!4743 t!981))

(declare-fun b_and!1119 () Bool)

(assert (= b_and!1107 (and (=> t!981 result!681) b_and!1119)))

(declare-fun t!983 () Bool)

(declare-fun tb!643 () Bool)

(assert (=> (and b!5963 (= (y!407 thiss!1014) (x!3094 thiss!1014)) t!983) tb!643))

(declare-fun result!683 () Bool)

(assert (=> tb!643 (= result!683 true)))

(assert (=> d!4743 t!983))

(declare-fun b_and!1121 () Bool)

(assert (= b_and!1109 (and (=> t!983 result!683) b_and!1121)))

(declare-fun tb!645 () Bool)

(declare-fun t!985 () Bool)

(assert (=> (and b!5964 (= (x!3094 that!266) (x!3094 thiss!1014)) t!985) tb!645))

(declare-fun result!685 () Bool)

(assert (=> tb!645 (= result!685 true)))

(assert (=> d!4743 t!985))

(declare-fun b_and!1123 () Bool)

(assert (= b_and!1111 (and (=> t!985 result!685) b_and!1123)))

(declare-fun t!987 () Bool)

(declare-fun tb!647 () Bool)

(assert (=> (and b!5964 (= (y!407 that!266) (x!3094 thiss!1014)) t!987) tb!647))

(declare-fun result!687 () Bool)

(assert (=> tb!647 (= result!687 true)))

(assert (=> d!4743 t!987))

(declare-fun b_and!1125 () Bool)

(assert (= b_and!1113 (and (=> t!987 result!687) b_and!1125)))

(declare-fun b_lambda!2743 () Bool)

(assert (=> (not b_lambda!2743) (not d!4743)))

(assert (=> d!4743 t!949))

(declare-fun b_and!1127 () Bool)

(assert (= b_and!1119 (and (=> t!949 result!649) b_and!1127)))

(assert (=> d!4743 t!951))

(declare-fun b_and!1129 () Bool)

(assert (= b_and!1121 (and (=> t!951 result!651) b_and!1129)))

(assert (=> d!4743 t!953))

(declare-fun b_and!1131 () Bool)

(assert (= b_and!1123 (and (=> t!953 result!653) b_and!1131)))

(assert (=> d!4743 t!955))

(declare-fun b_and!1133 () Bool)

(assert (= b_and!1125 (and (=> t!955 result!655) b_and!1133)))

(declare-fun b_lambda!2745 () Bool)

(assert (=> (not b_lambda!2745) (not b!6011)))

(assert (=> b!6011 t!965))

(declare-fun b_and!1135 () Bool)

(assert (= b_and!1115 (and (=> t!965 result!665) b_and!1135)))

(assert (=> b!6011 t!967))

(declare-fun b_and!1137 () Bool)

(assert (= b_and!1117 (and (=> t!967 result!667) b_and!1137)))

(declare-fun m!8589 () Bool)

(assert (=> d!4743 m!8589))

(assert (=> d!4743 m!8519))

(assert (=> b!6011 m!8523))

(assert (=> start!908 d!4743))

(declare-fun b!6022 () Bool)

(declare-fun res!1620 () Bool)

(declare-fun e!3552 () Bool)

(assert (=> b!6022 (=> (not res!1620) (not e!3552))))

(assert (=> b!6022 (= res!1620 (toList_map_commutativity!0 (right!271 tree!30) lambda!285))))

(declare-fun b!6023 () Bool)

(declare-fun map_append!0 (List!109 List!109 Int) Bool)

(assert (=> b!6023 (= e!3552 (map_append!0 (toList!26 (left!268 tree!30)) (toList!26 (right!271 tree!30)) lambda!285))))

(declare-fun b!6021 () Bool)

(declare-fun e!3553 () Bool)

(assert (=> b!6021 (= e!3553 e!3552)))

(declare-fun res!1621 () Bool)

(assert (=> b!6021 (=> (not res!1621) (not e!3552))))

(assert (=> b!6021 (= res!1621 (toList_map_commutativity!0 (left!268 tree!30) lambda!285))))

(declare-fun d!4745 () Bool)

(declare-fun because!2 (ProofOps!18 Bool) Bool)

(assert (=> d!4745 (because!2 (ProofOps!19 (= (toList!27 (map!122 tree!30 lambda!285)) (map!123 (toList!26 tree!30) lambda!285))) e!3553)))

(declare-fun c!2296 () Bool)

(assert (=> d!4745 (= c!2296 (is-Leaf!98 tree!30))))

(assert (=> d!4745 (= (toList_map_commutativity!0 tree!30 lambda!285) true)))

(declare-fun b!6020 () Bool)

(assert (=> b!6020 (= e!3553 true)))

(assert (= (and b!6021 res!1621) b!6022))

(assert (= (and b!6022 res!1620) b!6023))

(assert (= (and d!4745 c!2296) b!6020))

(assert (= (and d!4745 (not c!2296)) b!6021))

(declare-fun m!8591 () Bool)

(assert (=> b!6022 m!8591))

(assert (=> b!6023 m!8567))

(assert (=> b!6023 m!8569))

(assert (=> b!6023 m!8567))

(assert (=> b!6023 m!8569))

(declare-fun m!8593 () Bool)

(assert (=> b!6023 m!8593))

(declare-fun m!8595 () Bool)

(assert (=> b!6021 m!8595))

(assert (=> d!4745 m!8527))

(declare-fun m!8597 () Bool)

(assert (=> d!4745 m!8597))

(assert (=> d!4745 m!8509))

(assert (=> d!4745 m!8535))

(assert (=> d!4745 m!8527))

(assert (=> d!4745 m!8531))

(assert (=> d!4745 m!8509))

(assert (=> bs!1162 d!4745))

(declare-fun bs!1173 () Bool)

(declare-fun d!4747 () Bool)

(assert (= bs!1173 (and d!4747 b!5962)))

(declare-fun lambda!309 () Int)

(assert (=> bs!1173 (= lambda!309 lambda!284)))

(declare-fun bs!1174 () Bool)

(assert (= bs!1174 (and d!4747 d!4737)))

(assert (=> bs!1174 (= lambda!309 lambda!300)))

(declare-fun bs!1175 () Bool)

(assert (= bs!1175 (and d!4747 d!4741)))

(assert (=> bs!1175 (= lambda!309 lambda!306)))

(assert (=> d!4747 (because!2 (ProofOps!19 (= (fold!7 (map!122 tree!30 lambda!285) lambda!309) (foldRight1!6 (toList!27 (map!122 tree!30 lambda!285)) lambda!309))) true)))

(assert (=> d!4747 (= (fold!7 (map!122 tree!30 lambda!285) lambda!309) (foldRight1!6 (toList!27 (map!122 tree!30 lambda!285)) lambda!309))))

(assert (=> d!4747 (= (fold_foldRight1_equivalence!0 (map!122 tree!30 lambda!285)) true)))

(declare-fun bs!1176 () Bool)

(assert (= bs!1176 d!4747))

(assert (=> bs!1176 m!8527))

(declare-fun m!8599 () Bool)

(assert (=> bs!1176 m!8599))

(assert (=> bs!1176 m!8527))

(assert (=> bs!1176 m!8531))

(assert (=> bs!1176 m!8531))

(declare-fun m!8601 () Bool)

(assert (=> bs!1176 m!8601))

(declare-fun m!8603 () Bool)

(assert (=> bs!1176 m!8603))

(assert (=> bs!1163 d!4747))

(assert (=> bs!1163 d!4729))

(declare-fun b_lambda!2747 () Bool)

(assert (= b_lambda!2743 (or (and b!5963 b_free!117 (= (x!3094 thiss!1014) (y!407 thiss!1014))) (and b!5964 b_free!125 (= (y!407 that!266) (y!407 thiss!1014))) (and b!5963 b_free!119) (and b!5964 b_free!123 (= (x!3094 that!266) (y!407 thiss!1014))) (and b!5962 (= lambda!283 (y!407 thiss!1014))) (and b!5967 (= lambda!287 (y!407 thiss!1014))) b_lambda!2747)))

(assert (=> (and b!5962 (= lambda!283 (y!407 thiss!1014)) d!4743) d!4721))

(assert (=> (and b!5967 (= lambda!287 (y!407 thiss!1014)) d!4743) d!4723))

(declare-fun b_lambda!2749 () Bool)

(assert (= b_lambda!2745 (or (and b!5962 (= lambda!286 (evidence!73 thiss!1014))) (and b!5967 (= lambda!288 (evidence!73 thiss!1014))) (and b!5963 b_free!121) (and b!5964 b_free!127 (= (evidence!73 that!266) (evidence!73 thiss!1014))) b_lambda!2749)))

(assert (=> (and b!5962 (= lambda!286 (evidence!73 thiss!1014)) b!6011) d!4713))

(assert (=> (and b!5967 (= lambda!288 (evidence!73 thiss!1014)) b!6011) d!4715))

(declare-fun b_lambda!2751 () Bool)

(assert (= b_lambda!2741 (or (and b!5967 (= lambda!287 (x!3094 thiss!1014))) (and b!5964 b_free!123 (= (x!3094 that!266) (x!3094 thiss!1014))) (and b!5963 b_free!117) (and b!5963 b_free!119 (= (y!407 thiss!1014) (x!3094 thiss!1014))) (and b!5962 (= lambda!283 (x!3094 thiss!1014))) (and b!5964 b_free!125 (= (y!407 that!266) (x!3094 thiss!1014))) b_lambda!2751)))

(declare-fun bs!1177 () Bool)

(declare-fun d!4749 () Bool)

(assert (= bs!1177 (and d!4749 b!5967)))

(assert (=> bs!1177 (= (dynLambda!50 lambda!287) (foldRight1!6 (toList!27 (map!122 tree!30 lambda!285)) lambda!284))))

(assert (=> bs!1177 m!8527))

(assert (=> bs!1177 m!8527))

(assert (=> bs!1177 m!8531))

(assert (=> bs!1177 m!8531))

(assert (=> bs!1177 m!8533))

(assert (=> (and b!5967 (= lambda!287 (x!3094 thiss!1014)) d!4743) d!4749))

(declare-fun bs!1178 () Bool)

(declare-fun d!4751 () Bool)

(assert (= bs!1178 (and d!4751 b!5962)))

(assert (=> bs!1178 (= (dynLambda!50 lambda!283) (foldRight1!6 (map!123 (toList!26 tree!30) lambda!285) lambda!284))))

(assert (=> bs!1178 m!8509))

(assert (=> bs!1178 m!8509))

(assert (=> bs!1178 m!8535))

(assert (=> bs!1178 m!8535))

(assert (=> bs!1178 m!8537))

(assert (=> (and b!5962 (= lambda!283 (x!3094 thiss!1014)) d!4743) d!4751))

(declare-fun b_lambda!2753 () Bool)

(assert (= b_lambda!2739 (or (and b!5962 (= lambda!286 (evidence!73 that!266))) (and b!5967 (= lambda!288 (evidence!73 that!266))) (and b!5963 b_free!121 (= (evidence!73 thiss!1014) (evidence!73 that!266))) (and b!5964 b_free!127) b_lambda!2753)))

(declare-fun bs!1179 () Bool)

(declare-fun d!4753 () Bool)

(assert (= bs!1179 (and d!4753 b!5962)))

(assert (=> bs!1179 (= (dynLambda!51 lambda!286) (toList_map_commutativity!0 tree!30 lambda!285))))

(assert (=> bs!1179 m!8525))

(assert (=> (and b!5962 (= lambda!286 (evidence!73 that!266)) b!6010) d!4753))

(declare-fun bs!1180 () Bool)

(declare-fun d!4755 () Bool)

(assert (= bs!1180 (and d!4755 b!5967)))

(assert (=> bs!1180 (= (dynLambda!51 lambda!288) (fold_foldRight1_equivalence!0 (map!122 tree!30 lambda!285)))))

(assert (=> bs!1180 m!8527))

(assert (=> bs!1180 m!8527))

(assert (=> bs!1180 m!8529))

(assert (=> (and b!5967 (= lambda!288 (evidence!73 that!266)) b!6010) d!4755))

(declare-fun b_lambda!2755 () Bool)

(assert (= b_lambda!2737 (or (and b!5962 (= lambda!283 (y!407 that!266))) (and b!5964 b_free!125) (and b!5963 b_free!119 (= (y!407 thiss!1014) (y!407 that!266))) (and b!5967 (= lambda!287 (y!407 that!266))) (and b!5963 b_free!117 (= (x!3094 thiss!1014) (y!407 that!266))) (and b!5964 b_free!123 (= (x!3094 that!266) (y!407 that!266))) b_lambda!2755)))

(declare-fun bs!1181 () Bool)

(declare-fun d!4757 () Bool)

(assert (= bs!1181 (and d!4757 b!5962)))

(assert (=> bs!1181 (= (dynLambda!50 lambda!283) (foldRight1!6 (map!123 (toList!26 tree!30) lambda!285) lambda!284))))

(assert (=> bs!1181 m!8509))

(assert (=> bs!1181 m!8509))

(assert (=> bs!1181 m!8535))

(assert (=> bs!1181 m!8535))

(assert (=> bs!1181 m!8537))

(assert (=> (and b!5962 (= lambda!283 (y!407 that!266)) d!4739) d!4757))

(declare-fun bs!1182 () Bool)

(declare-fun d!4759 () Bool)

(assert (= bs!1182 (and d!4759 b!5967)))

(assert (=> bs!1182 (= (dynLambda!50 lambda!287) (foldRight1!6 (toList!27 (map!122 tree!30 lambda!285)) lambda!284))))

(assert (=> bs!1182 m!8527))

(assert (=> bs!1182 m!8527))

(assert (=> bs!1182 m!8531))

(assert (=> bs!1182 m!8531))

(assert (=> bs!1182 m!8533))

(assert (=> (and b!5967 (= lambda!287 (y!407 that!266)) d!4739) d!4759))

(declare-fun b_lambda!2757 () Bool)

(assert (= b_lambda!2733 (or b!5962 b_lambda!2757)))

(declare-fun bs!1183 () Bool)

(declare-fun d!4761 () Bool)

(assert (= bs!1183 (and d!4761 b!5962)))

(declare-fun fromParenthesis!0 (Parenthesis!11) Balance!19)

(assert (=> bs!1183 (= (dynLambda!56 lambda!285 (head!324 (toList!26 tree!30))) (fromParenthesis!0 (head!324 (toList!26 tree!30))))))

(declare-fun m!8605 () Bool)

(assert (=> bs!1183 m!8605))

(assert (=> b!6001 d!4761))

(declare-fun b_lambda!2759 () Bool)

(assert (= b_lambda!2723 (or b!5962 b_lambda!2759)))

(declare-fun bs!1184 () Bool)

(declare-fun d!4763 () Bool)

(assert (= bs!1184 (and d!4763 b!5962)))

(declare-fun ++!3 (Balance!19 Balance!19) Balance!19)

(assert (=> bs!1184 (= (dynLambda!52 lambda!284 (head!325 (toList!27 (map!122 tree!30 lambda!285))) (foldRight1!6 (tail!337 (toList!27 (map!122 tree!30 lambda!285))) lambda!284)) (++!3 (head!325 (toList!27 (map!122 tree!30 lambda!285))) (foldRight1!6 (tail!337 (toList!27 (map!122 tree!30 lambda!285))) lambda!284)))))

(assert (=> bs!1184 m!8539))

(declare-fun m!8607 () Bool)

(assert (=> bs!1184 m!8607))

(assert (=> b!5977 d!4763))

(declare-fun b_lambda!2761 () Bool)

(assert (= b_lambda!2735 (or (and b!5963 b_free!119 (= (y!407 thiss!1014) (x!3094 that!266))) (and b!5963 b_free!117 (= (x!3094 thiss!1014) (x!3094 that!266))) (and b!5962 (= lambda!283 (x!3094 that!266))) (and b!5967 (= lambda!287 (x!3094 that!266))) (and b!5964 b_free!123) (and b!5964 b_free!125 (= (y!407 that!266) (x!3094 that!266))) b_lambda!2761)))

(assert (=> (and b!5967 (= lambda!287 (x!3094 that!266)) d!4739) d!4717))

(assert (=> (and b!5962 (= lambda!283 (x!3094 that!266)) d!4739) d!4719))

(declare-fun b_lambda!2763 () Bool)

(assert (= b_lambda!2731 (or b!5962 b_lambda!2763)))

(declare-fun bs!1185 () Bool)

(declare-fun d!4765 () Bool)

(assert (= bs!1185 (and d!4765 b!5962)))

(assert (=> bs!1185 (= (dynLambda!52 lambda!284 (head!325 (map!123 (toList!26 tree!30) lambda!285)) (foldRight1!6 (tail!337 (map!123 (toList!26 tree!30) lambda!285)) lambda!284)) (++!3 (head!325 (map!123 (toList!26 tree!30) lambda!285)) (foldRight1!6 (tail!337 (map!123 (toList!26 tree!30) lambda!285)) lambda!284)))))

(assert (=> bs!1185 m!8557))

(declare-fun m!8609 () Bool)

(assert (=> bs!1185 m!8609))

(assert (=> b!5995 d!4765))

(declare-fun b_lambda!2765 () Bool)

(assert (= b_lambda!2729 (or b!5962 b_lambda!2765)))

(declare-fun bs!1186 () Bool)

(declare-fun d!4767 () Bool)

(assert (= bs!1186 (and d!4767 b!5962)))

(assert (=> bs!1186 (= (dynLambda!56 lambda!285 (value!1267 tree!30)) (fromParenthesis!0 (value!1267 tree!30)))))

(declare-fun m!8611 () Bool)

(assert (=> bs!1186 m!8611))

(assert (=> b!5988 d!4767))

(declare-fun b_lambda!2767 () Bool)

(assert (= b_lambda!2725 (or b!5989 b_lambda!2767)))

(declare-fun bs!1187 () Bool)

(declare-fun d!4769 () Bool)

(assert (= bs!1187 (and d!4769 b!5989)))

(assert (=> bs!1187 (= (dynLambda!55 lambda!293) (map!122 (left!268 tree!30) lambda!285))))

(declare-fun m!8613 () Bool)

(assert (=> bs!1187 m!8613))

(assert (=> b!5989 d!4769))

(declare-fun b_lambda!2769 () Bool)

(assert (= b_lambda!2727 (or b!5989 b_lambda!2769)))

(declare-fun bs!1188 () Bool)

(declare-fun d!4771 () Bool)

(assert (= bs!1188 (and d!4771 b!5989)))

(assert (=> bs!1188 (= (dynLambda!55 lambda!294) (map!122 (right!271 tree!30) lambda!285))))

(declare-fun m!8615 () Bool)

(assert (=> bs!1188 m!8615))

(assert (=> b!5989 d!4771))

(push 1)

(assert (not b_lambda!2759))

(assert (not b!6001))

(assert (not b_lambda!2751))

(assert (not bs!1177))

(assert (not b_lambda!2721))

(assert b_and!1137)

(assert (not bs!1184))

(assert (not bs!1186))

(assert (not bs!1183))

(assert b_and!1129)

(assert (not d!4747))

(assert (not b_next!195))

(assert (not bs!1181))

(assert (not bs!1179))

(assert (not d!4727))

(assert (not b_next!199))

(assert (not bs!1187))

(assert b_and!1131)

(assert (not d!4745))

(assert (not b_lambda!2717))

(assert (not bs!1178))

(assert (not b_next!201))

(assert (not b_lambda!2765))

(assert b_and!1133)

(assert (not b_lambda!2753))

(assert (not b_next!203))

(assert (not d!4735))

(assert (not b!5995))

(assert (not b_lambda!2757))

(assert (not b_lambda!2719))

(assert (not b_lambda!2761))

(assert (not d!4741))

(assert (not d!4737))

(assert (not b_lambda!2747))

(assert (not b!6023))

(assert b_and!1127)

(assert (not b_lambda!2763))

(assert (not b!5983))

(assert (not b!6007))

(assert (not b_lambda!2769))

(assert (not b_next!193))

(assert (not bs!1188))

(assert b_and!1135)

(assert (not b!5977))

(assert (not b_lambda!2749))

(assert (not b!6022))

(assert (not b!6021))

(assert (not bs!1182))

(assert (not b_lambda!2755))

(assert (not b_lambda!2767))

(assert (not b_next!197))

(assert (not bs!1185))

(assert (not bs!1180))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1137)

(assert b_and!1129)

(assert (not b_next!195))

(assert (not b_next!199))

(assert b_and!1131)

(assert (not b_next!201))

(assert b_and!1133)

(assert (not b_next!203))

(assert b_and!1127)

(assert (not b_next!193))

(assert b_and!1135)

(assert (not b_next!197))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4773 () Bool)

(assert (=> d!4773 (= (isEmpty!102 lt!1309) (is-Nil!108 lt!1309))))

(assert (=> d!4727 d!4773))

(declare-fun d!4775 () Bool)

(declare-fun c!2297 () Bool)

(assert (=> d!4775 (= c!2297 (and (is-Cons!107 (tail!337 (map!123 (toList!26 tree!30) lambda!285))) (is-Nil!108 (tail!337 (tail!337 (map!123 (toList!26 tree!30) lambda!285))))))))

(declare-fun e!3554 () Balance!19)

(assert (=> d!4775 (= (foldRight1!6 (tail!337 (map!123 (toList!26 tree!30) lambda!285)) lambda!284) e!3554)))

(declare-fun b!6024 () Bool)

(assert (=> b!6024 (= e!3554 (head!325 (tail!337 (map!123 (toList!26 tree!30) lambda!285))))))

(declare-fun b!6025 () Bool)

(assert (=> b!6025 (= e!3554 (dynLambda!52 lambda!284 (head!325 (tail!337 (map!123 (toList!26 tree!30) lambda!285))) (foldRight1!6 (tail!337 (tail!337 (map!123 (toList!26 tree!30) lambda!285))) lambda!284)))))

(assert (= (and d!4775 c!2297) b!6024))

(assert (= (and d!4775 (not c!2297)) b!6025))

(declare-fun b_lambda!2771 () Bool)

(assert (=> (not b_lambda!2771) (not b!6025)))

(declare-fun m!8617 () Bool)

(assert (=> b!6025 m!8617))

(assert (=> b!6025 m!8617))

(declare-fun m!8619 () Bool)

(assert (=> b!6025 m!8619))

(assert (=> b!5995 d!4775))

(declare-fun bs!1189 () Bool)

(declare-fun b!6027 () Bool)

(assert (= bs!1189 (and b!6027 b!5989)))

(declare-fun lambda!310 () Int)

(assert (=> bs!1189 (= (= (left!268 (left!268 tree!30)) (left!268 tree!30)) (= lambda!310 lambda!293))))

(assert (=> bs!1189 (= (= (left!268 (left!268 tree!30)) (right!271 tree!30)) (= lambda!310 lambda!294))))

(assert (=> b!6027 true))

(assert (=> b!6027 (< (dynLambda!53 order!33 lambda!285) (dynLambda!54 order!35 lambda!310))))

(assert (=> b!6027 true))

(declare-fun lambda!311 () Int)

(assert (=> bs!1189 (= (= (right!271 (left!268 tree!30)) (left!268 tree!30)) (= lambda!311 lambda!293))))

(assert (=> bs!1189 (= (= (right!271 (left!268 tree!30)) (right!271 tree!30)) (= lambda!311 lambda!294))))

(assert (=> b!6027 (= (= (right!271 (left!268 tree!30)) (left!268 (left!268 tree!30))) (= lambda!311 lambda!310))))

(assert (=> b!6027 true))

(assert (=> b!6027 (< (dynLambda!53 order!33 lambda!285) (dynLambda!54 order!35 lambda!311))))

(assert (=> b!6027 true))

(declare-fun e!3555 () Tree!26)

(declare-fun lt!1316 () tuple2!30)

(assert (=> b!6027 (= e!3555 (Branch!17 (_1!15 lt!1316) (_2!15 lt!1316)))))

(assert (=> b!6027 (= lt!1316 (tuple2!31 (dynLambda!55 lambda!310) (dynLambda!55 lambda!311)))))

(declare-fun d!4777 () Bool)

(declare-fun c!2298 () Bool)

(assert (=> d!4777 (= c!2298 (is-Leaf!98 (left!268 tree!30)))))

(assert (=> d!4777 (= (map!122 (left!268 tree!30) lambda!285) e!3555)))

(declare-fun b!6026 () Bool)

(assert (=> b!6026 (= e!3555 (Leaf!99 (dynLambda!56 lambda!285 (value!1267 (left!268 tree!30)))))))

(assert (= (and d!4777 c!2298) b!6026))

(assert (= (and d!4777 (not c!2298)) b!6027))

(declare-fun b_lambda!2773 () Bool)

(assert (=> (not b_lambda!2773) (not b!6027)))

(declare-fun b_lambda!2775 () Bool)

(assert (=> (not b_lambda!2775) (not b!6027)))

(declare-fun b_lambda!2777 () Bool)

(assert (=> (not b_lambda!2777) (not b!6026)))

(declare-fun m!8621 () Bool)

(assert (=> b!6027 m!8621))

(declare-fun m!8623 () Bool)

(assert (=> b!6027 m!8623))

(declare-fun m!8625 () Bool)

(assert (=> b!6026 m!8625))

(assert (=> bs!1187 d!4777))

(declare-fun b!6033 () Bool)

(declare-fun e!3558 () Bool)

(assert (=> b!6033 (= e!3558 (= (append!40 (map!123 (toList!26 (left!268 tree!30)) lambda!285) (map!123 (toList!26 (right!271 tree!30)) lambda!285)) (map!123 (append!41 (toList!26 (left!268 tree!30)) (toList!26 (right!271 tree!30))) lambda!285)))))

(declare-fun lt!1319 () Bool)

(assert (=> b!6033 (= lt!1319 (map_append!0 (tail!336 (toList!26 (left!268 tree!30))) (toList!26 (right!271 tree!30)) lambda!285))))

(declare-fun d!4779 () Bool)

(assert (=> d!4779 e!3558))

(declare-fun c!2301 () Bool)

(assert (=> d!4779 (= c!2301 (is-Nil!107 (toList!26 (left!268 tree!30))))))

(assert (=> d!4779 (= (map_append!0 (toList!26 (left!268 tree!30)) (toList!26 (right!271 tree!30)) lambda!285) true)))

(declare-fun b!6032 () Bool)

(assert (=> b!6032 (= e!3558 (= (append!40 (map!123 (toList!26 (left!268 tree!30)) lambda!285) (map!123 (toList!26 (right!271 tree!30)) lambda!285)) (map!123 (append!41 (toList!26 (left!268 tree!30)) (toList!26 (right!271 tree!30))) lambda!285)))))

(assert (= (and d!4779 c!2301) b!6032))

(assert (= (and d!4779 (not c!2301)) b!6033))

(declare-fun m!8627 () Bool)

(assert (=> b!6033 m!8627))

(declare-fun m!8629 () Bool)

(assert (=> b!6033 m!8629))

(declare-fun m!8631 () Bool)

(assert (=> b!6033 m!8631))

(assert (=> b!6033 m!8571))

(declare-fun m!8633 () Bool)

(assert (=> b!6033 m!8633))

(assert (=> b!6033 m!8567))

(assert (=> b!6033 m!8627))

(assert (=> b!6033 m!8569))

(declare-fun m!8635 () Bool)

(assert (=> b!6033 m!8635))

(assert (=> b!6033 m!8567))

(assert (=> b!6033 m!8569))

(assert (=> b!6033 m!8571))

(assert (=> b!6033 m!8569))

(assert (=> b!6033 m!8629))

(assert (=> b!6032 m!8627))

(assert (=> b!6032 m!8629))

(assert (=> b!6032 m!8631))

(assert (=> b!6032 m!8571))

(assert (=> b!6032 m!8633))

(assert (=> b!6032 m!8567))

(assert (=> b!6032 m!8627))

(assert (=> b!6032 m!8567))

(assert (=> b!6032 m!8569))

(assert (=> b!6032 m!8571))

(assert (=> b!6032 m!8569))

(assert (=> b!6032 m!8629))

(assert (=> b!6023 d!4779))

(declare-fun d!4781 () Bool)

(declare-fun lt!1320 () List!109)

(assert (=> d!4781 (not (isEmpty!103 lt!1320))))

(declare-fun e!3559 () List!109)

(assert (=> d!4781 (= lt!1320 e!3559)))

(declare-fun c!2302 () Bool)

(assert (=> d!4781 (= c!2302 (is-Leaf!98 (left!268 tree!30)))))

(assert (=> d!4781 (= (toList!26 (left!268 tree!30)) lt!1320)))

(declare-fun b!6034 () Bool)

(assert (=> b!6034 (= e!3559 (Cons!106 (value!1267 (left!268 tree!30)) Nil!107))))

(declare-fun b!6035 () Bool)

(assert (=> b!6035 (= e!3559 (append!41 (toList!26 (left!268 (left!268 tree!30))) (toList!26 (right!271 (left!268 tree!30)))))))

(assert (= (and d!4781 c!2302) b!6034))

(assert (= (and d!4781 (not c!2302)) b!6035))

(declare-fun m!8637 () Bool)

(assert (=> d!4781 m!8637))

(declare-fun m!8639 () Bool)

(assert (=> b!6035 m!8639))

(declare-fun m!8641 () Bool)

(assert (=> b!6035 m!8641))

(assert (=> b!6035 m!8639))

(assert (=> b!6035 m!8641))

(declare-fun m!8643 () Bool)

(assert (=> b!6035 m!8643))

(assert (=> b!6023 d!4781))

(declare-fun d!4783 () Bool)

(declare-fun lt!1321 () List!109)

(assert (=> d!4783 (not (isEmpty!103 lt!1321))))

(declare-fun e!3560 () List!109)

(assert (=> d!4783 (= lt!1321 e!3560)))

(declare-fun c!2303 () Bool)

(assert (=> d!4783 (= c!2303 (is-Leaf!98 (right!271 tree!30)))))

(assert (=> d!4783 (= (toList!26 (right!271 tree!30)) lt!1321)))

(declare-fun b!6036 () Bool)

(assert (=> b!6036 (= e!3560 (Cons!106 (value!1267 (right!271 tree!30)) Nil!107))))

(declare-fun b!6037 () Bool)

(assert (=> b!6037 (= e!3560 (append!41 (toList!26 (left!268 (right!271 tree!30))) (toList!26 (right!271 (right!271 tree!30)))))))

(assert (= (and d!4783 c!2303) b!6036))

(assert (= (and d!4783 (not c!2303)) b!6037))

(declare-fun m!8645 () Bool)

(assert (=> d!4783 m!8645))

(declare-fun m!8647 () Bool)

(assert (=> b!6037 m!8647))

(declare-fun m!8649 () Bool)

(assert (=> b!6037 m!8649))

(assert (=> b!6037 m!8647))

(assert (=> b!6037 m!8649))

(declare-fun m!8651 () Bool)

(assert (=> b!6037 m!8651))

(assert (=> b!6023 d!4783))

(declare-fun d!4785 () Bool)

(assert (=> d!4785 (= (because!2 (ProofOps!19 (= (fold!7 (map!122 tree!30 lambda!285) lambda!309) (foldRight1!6 (toList!27 (map!122 tree!30 lambda!285)) lambda!309))) true) (prop!113 (ProofOps!19 (= (fold!7 (map!122 tree!30 lambda!285) lambda!309) (foldRight1!6 (toList!27 (map!122 tree!30 lambda!285)) lambda!309)))))))

(assert (=> d!4747 d!4785))

(declare-fun bs!1190 () Bool)

(declare-fun b!6043 () Bool)

(assert (= bs!1190 (and b!6043 b!5962)))

(declare-fun lambda!316 () Int)

(assert (=> bs!1190 (not (= lambda!316 lambda!283))))

(declare-fun bs!1191 () Bool)

(assert (= bs!1191 (and b!6043 b!5967)))

(assert (=> bs!1191 (not (= lambda!316 lambda!287))))

(assert (=> b!6043 true))

(declare-fun order!39 () Int)

(declare-fun order!37 () Int)

(declare-fun dynLambda!57 (Int Int) Int)

(declare-fun dynLambda!58 (Int Int) Int)

(assert (=> b!6043 (< (dynLambda!57 order!37 lambda!309) (dynLambda!58 order!39 lambda!316))))

(assert (=> b!6043 true))

(declare-fun b_next!205 () Bool)

(assert (=> b!5963 (= b_next!193 (or (and b!6043 (= lambda!316 (x!3094 thiss!1014))) b_next!205))))

(declare-fun b_next!207 () Bool)

(assert (=> b!5963 (= b_next!195 (or (and b!6043 (= lambda!316 (y!407 thiss!1014))) b_next!207))))

(declare-fun b_next!209 () Bool)

(assert (=> b!5964 (= b_next!197 (or (and b!6043 (= lambda!316 (x!3094 that!266))) b_next!209))))

(declare-fun b_next!211 () Bool)

(assert (=> b!5964 (= b_next!199 (or (and b!6043 (= lambda!316 (y!407 that!266))) b_next!211))))

(declare-fun lambda!317 () Int)

(assert (=> bs!1190 (not (= lambda!317 lambda!283))))

(assert (=> bs!1191 (not (= lambda!317 lambda!287))))

(assert (=> b!6043 (= (= (right!272 (map!122 tree!30 lambda!285)) (left!269 (map!122 tree!30 lambda!285))) (= lambda!317 lambda!316))))

(assert (=> b!6043 true))

(assert (=> b!6043 (< (dynLambda!57 order!37 lambda!309) (dynLambda!58 order!39 lambda!317))))

(assert (=> b!6043 true))

(declare-fun b_next!213 () Bool)

(assert (=> b!5963 (= b_next!205 (or (and b!6043 (= lambda!317 (x!3094 thiss!1014))) b_next!213))))

(declare-fun b_next!215 () Bool)

(assert (=> b!5963 (= b_next!207 (or (and b!6043 (= lambda!317 (y!407 thiss!1014))) b_next!215))))

(declare-fun b_next!217 () Bool)

(assert (=> b!5964 (= b_next!209 (or (and b!6043 (= lambda!317 (x!3094 that!266))) b_next!217))))

(declare-fun b_next!219 () Bool)

(assert (=> b!5964 (= b_next!211 (or (and b!6043 (= lambda!317 (y!407 that!266))) b_next!219))))

(declare-fun e!3579 () Balance!19)

(declare-datatypes () ((tuple2!32 (tuple2!33 (_1!16 Balance!19) (_2!16 Balance!19)))))

(declare-fun lt!1324 () tuple2!32)

(assert (=> b!6043 (= e!3579 (dynLambda!52 lambda!309 (_1!16 lt!1324) (_2!16 lt!1324)))))

(assert (=> b!6043 (= lt!1324 (tuple2!33 (dynLambda!50 lambda!316) (dynLambda!50 lambda!317)))))

(declare-fun d!4787 () Bool)

(declare-fun c!2306 () Bool)

(assert (=> d!4787 (= c!2306 (is-Leaf!99 (map!122 tree!30 lambda!285)))))

(assert (=> d!4787 (= (fold!7 (map!122 tree!30 lambda!285) lambda!309) e!3579)))

(declare-fun b!6042 () Bool)

(assert (=> b!6042 (= e!3579 (value!1268 (map!122 tree!30 lambda!285)))))

(assert (= (and d!4787 c!2306) b!6042))

(assert (= (and d!4787 (not c!2306)) b!6043))

(declare-fun b_lambda!2779 () Bool)

(assert (=> (not b_lambda!2779) (not b!6043)))

(declare-fun b_lambda!2781 () Bool)

(assert (=> (not b_lambda!2781) (not b!6043)))

(declare-fun b_lambda!2783 () Bool)

(assert (=> (not b_lambda!2783) (not b!6043)))

(declare-fun m!8653 () Bool)

(assert (=> b!6043 m!8653))

(declare-fun m!8655 () Bool)

(assert (=> b!6043 m!8655))

(declare-fun m!8657 () Bool)

(assert (=> b!6043 m!8657))

(assert (=> d!4747 d!4787))

(declare-fun d!4789 () Bool)

(declare-fun c!2307 () Bool)

(assert (=> d!4789 (= c!2307 (and (is-Cons!107 (toList!27 (map!122 tree!30 lambda!285))) (is-Nil!108 (tail!337 (toList!27 (map!122 tree!30 lambda!285))))))))

(declare-fun e!3580 () Balance!19)

(assert (=> d!4789 (= (foldRight1!6 (toList!27 (map!122 tree!30 lambda!285)) lambda!309) e!3580)))

(declare-fun b!6048 () Bool)

(assert (=> b!6048 (= e!3580 (head!325 (toList!27 (map!122 tree!30 lambda!285))))))

(declare-fun b!6049 () Bool)

(assert (=> b!6049 (= e!3580 (dynLambda!52 lambda!309 (head!325 (toList!27 (map!122 tree!30 lambda!285))) (foldRight1!6 (tail!337 (toList!27 (map!122 tree!30 lambda!285))) lambda!309)))))

(assert (= (and d!4789 c!2307) b!6048))

(assert (= (and d!4789 (not c!2307)) b!6049))

(declare-fun b_lambda!2785 () Bool)

(assert (=> (not b_lambda!2785) (not b!6049)))

(declare-fun m!8659 () Bool)

(assert (=> b!6049 m!8659))

(assert (=> b!6049 m!8659))

(declare-fun m!8661 () Bool)

(assert (=> b!6049 m!8661))

(assert (=> d!4747 d!4789))

(assert (=> d!4747 d!4727))

(assert (=> bs!1180 d!4747))

(assert (=> bs!1180 d!4729))

(declare-fun d!4791 () Bool)

(declare-fun c!2310 () Bool)

(assert (=> d!4791 (= c!2310 (is-Nil!107 (toList!26 (left!268 tree!30))))))

(declare-fun e!3583 () List!109)

(assert (=> d!4791 (= (append!41 (toList!26 (left!268 tree!30)) (toList!26 (right!271 tree!30))) e!3583)))

(declare-fun b!6054 () Bool)

(assert (=> b!6054 (= e!3583 (toList!26 (right!271 tree!30)))))

(declare-fun b!6055 () Bool)

(assert (=> b!6055 (= e!3583 (Cons!106 (head!324 (toList!26 (left!268 tree!30))) (append!41 (tail!336 (toList!26 (left!268 tree!30))) (toList!26 (right!271 tree!30)))))))

(assert (= (and d!4791 c!2310) b!6054))

(assert (= (and d!4791 (not c!2310)) b!6055))

(assert (=> b!6055 m!8569))

(declare-fun m!8663 () Bool)

(assert (=> b!6055 m!8663))

(assert (=> b!6007 d!4791))

(assert (=> b!6007 d!4781))

(assert (=> b!6007 d!4783))

(assert (=> bs!1178 d!4731))

(assert (=> bs!1178 d!4733))

(assert (=> bs!1178 d!4735))

(declare-fun bs!1192 () Bool)

(declare-fun b!6057 () Bool)

(assert (= bs!1192 (and b!6057 b!5989)))

(declare-fun lambda!318 () Int)

(assert (=> bs!1192 (= (= (left!268 (right!271 tree!30)) (left!268 tree!30)) (= lambda!318 lambda!293))))

(assert (=> bs!1192 (= (= (left!268 (right!271 tree!30)) (right!271 tree!30)) (= lambda!318 lambda!294))))

(declare-fun bs!1193 () Bool)

(assert (= bs!1193 (and b!6057 b!6027)))

(assert (=> bs!1193 (= (= (left!268 (right!271 tree!30)) (left!268 (left!268 tree!30))) (= lambda!318 lambda!310))))

(assert (=> bs!1193 (= (= (left!268 (right!271 tree!30)) (right!271 (left!268 tree!30))) (= lambda!318 lambda!311))))

(assert (=> b!6057 true))

(assert (=> b!6057 (< (dynLambda!53 order!33 lambda!285) (dynLambda!54 order!35 lambda!318))))

(assert (=> b!6057 true))

(declare-fun lambda!319 () Int)

(assert (=> bs!1193 (= (= (right!271 (right!271 tree!30)) (right!271 (left!268 tree!30))) (= lambda!319 lambda!311))))

(assert (=> b!6057 (= (= (right!271 (right!271 tree!30)) (left!268 (right!271 tree!30))) (= lambda!319 lambda!318))))

(assert (=> bs!1192 (= (= (right!271 (right!271 tree!30)) (left!268 tree!30)) (= lambda!319 lambda!293))))

(assert (=> bs!1193 (= (= (right!271 (right!271 tree!30)) (left!268 (left!268 tree!30))) (= lambda!319 lambda!310))))

(assert (=> bs!1192 (= (= (right!271 (right!271 tree!30)) (right!271 tree!30)) (= lambda!319 lambda!294))))

(assert (=> b!6057 true))

(assert (=> b!6057 (< (dynLambda!53 order!33 lambda!285) (dynLambda!54 order!35 lambda!319))))

(assert (=> b!6057 true))

(declare-fun e!3584 () Tree!26)

(declare-fun lt!1325 () tuple2!30)

(assert (=> b!6057 (= e!3584 (Branch!17 (_1!15 lt!1325) (_2!15 lt!1325)))))

(assert (=> b!6057 (= lt!1325 (tuple2!31 (dynLambda!55 lambda!318) (dynLambda!55 lambda!319)))))

(declare-fun d!4793 () Bool)

(declare-fun c!2311 () Bool)

(assert (=> d!4793 (= c!2311 (is-Leaf!98 (right!271 tree!30)))))

(assert (=> d!4793 (= (map!122 (right!271 tree!30) lambda!285) e!3584)))

(declare-fun b!6056 () Bool)

(assert (=> b!6056 (= e!3584 (Leaf!99 (dynLambda!56 lambda!285 (value!1267 (right!271 tree!30)))))))

(assert (= (and d!4793 c!2311) b!6056))

(assert (= (and d!4793 (not c!2311)) b!6057))

(declare-fun b_lambda!2787 () Bool)

(assert (=> (not b_lambda!2787) (not b!6057)))

(declare-fun b_lambda!2789 () Bool)

(assert (=> (not b_lambda!2789) (not b!6057)))

(declare-fun b_lambda!2791 () Bool)

(assert (=> (not b_lambda!2791) (not b!6056)))

(declare-fun m!8665 () Bool)

(assert (=> b!6057 m!8665))

(declare-fun m!8667 () Bool)

(assert (=> b!6057 m!8667))

(declare-fun m!8669 () Bool)

(assert (=> b!6056 m!8669))

(assert (=> bs!1188 d!4793))

(declare-fun d!4795 () Bool)

(declare-fun c!2312 () Bool)

(assert (=> d!4795 (= c!2312 (is-Nil!107 (tail!336 (toList!26 tree!30))))))

(declare-fun e!3585 () List!110)

(assert (=> d!4795 (= (map!123 (tail!336 (toList!26 tree!30)) lambda!285) e!3585)))

(declare-fun b!6058 () Bool)

(assert (=> b!6058 (= e!3585 Nil!108)))

(declare-fun b!6059 () Bool)

(assert (=> b!6059 (= e!3585 (Cons!107 (dynLambda!56 lambda!285 (head!324 (tail!336 (toList!26 tree!30)))) (map!123 (tail!336 (tail!336 (toList!26 tree!30))) lambda!285)))))

(assert (= (and d!4795 c!2312) b!6058))

(assert (= (and d!4795 (not c!2312)) b!6059))

(declare-fun b_lambda!2793 () Bool)

(assert (=> (not b_lambda!2793) (not b!6059)))

(declare-fun m!8671 () Bool)

(assert (=> b!6059 m!8671))

(declare-fun m!8673 () Bool)

(assert (=> b!6059 m!8673))

(assert (=> b!6001 d!4795))

(assert (=> bs!1179 d!4745))

(assert (=> d!4745 d!4735))

(assert (=> d!4745 d!4733))

(assert (=> d!4745 d!4727))

(declare-fun d!4797 () Bool)

(assert (=> d!4797 (= (because!2 (ProofOps!19 (= (toList!27 (map!122 tree!30 lambda!285)) (map!123 (toList!26 tree!30) lambda!285))) e!3553) (and e!3553 (prop!113 (ProofOps!19 (= (toList!27 (map!122 tree!30 lambda!285)) (map!123 (toList!26 tree!30) lambda!285))))))))

(assert (=> d!4745 d!4797))

(assert (=> d!4745 d!4729))

(declare-fun d!4799 () Bool)

(assert (=> d!4799 (= (isEmpty!103 lt!1315) (is-Nil!107 lt!1315))))

(assert (=> d!4735 d!4799))

(declare-fun d!4801 () Bool)

(assert (=> d!4801 (= (isBalanced!0 (foldRight1!6 (map!123 (toList!26 tree!30) lambda!299) lambda!300)) (and (= (extraOpen!50 (foldRight1!6 (map!123 (toList!26 tree!30) lambda!299) lambda!300)) 0) (= (extraClose!50 (foldRight1!6 (map!123 (toList!26 tree!30) lambda!299) lambda!300)) 0)))))

(assert (=> d!4737 d!4801))

(declare-fun d!4803 () Bool)

(declare-fun c!2313 () Bool)

(assert (=> d!4803 (= c!2313 (and (is-Cons!107 (map!123 (toList!26 tree!30) lambda!299)) (is-Nil!108 (tail!337 (map!123 (toList!26 tree!30) lambda!299)))))))

(declare-fun e!3586 () Balance!19)

(assert (=> d!4803 (= (foldRight1!6 (map!123 (toList!26 tree!30) lambda!299) lambda!300) e!3586)))

(declare-fun b!6060 () Bool)

(assert (=> b!6060 (= e!3586 (head!325 (map!123 (toList!26 tree!30) lambda!299)))))

(declare-fun b!6061 () Bool)

(assert (=> b!6061 (= e!3586 (dynLambda!52 lambda!300 (head!325 (map!123 (toList!26 tree!30) lambda!299)) (foldRight1!6 (tail!337 (map!123 (toList!26 tree!30) lambda!299)) lambda!300)))))

(assert (= (and d!4803 c!2313) b!6060))

(assert (= (and d!4803 (not c!2313)) b!6061))

(declare-fun b_lambda!2795 () Bool)

(assert (=> (not b_lambda!2795) (not b!6061)))

(declare-fun m!8675 () Bool)

(assert (=> b!6061 m!8675))

(assert (=> b!6061 m!8675))

(declare-fun m!8677 () Bool)

(assert (=> b!6061 m!8677))

(assert (=> d!4737 d!4803))

(declare-fun d!4805 () Bool)

(declare-fun c!2314 () Bool)

(assert (=> d!4805 (= c!2314 (is-Nil!107 (toList!26 tree!30)))))

(declare-fun e!3587 () List!110)

(assert (=> d!4805 (= (map!123 (toList!26 tree!30) lambda!299) e!3587)))

(declare-fun b!6062 () Bool)

(assert (=> b!6062 (= e!3587 Nil!108)))

(declare-fun b!6063 () Bool)

(assert (=> b!6063 (= e!3587 (Cons!107 (dynLambda!56 lambda!299 (head!324 (toList!26 tree!30))) (map!123 (tail!336 (toList!26 tree!30)) lambda!299)))))

(assert (= (and d!4805 c!2314) b!6062))

(assert (= (and d!4805 (not c!2314)) b!6063))

(declare-fun b_lambda!2797 () Bool)

(assert (=> (not b_lambda!2797) (not b!6063)))

(declare-fun m!8679 () Bool)

(assert (=> b!6063 m!8679))

(declare-fun m!8681 () Bool)

(assert (=> b!6063 m!8681))

(assert (=> d!4737 d!4805))

(declare-fun d!4807 () Bool)

(assert (=> d!4807 (= (fromParenthesis!0 (head!324 (toList!26 tree!30))) (ite (is-OpenParenthesis!10 (head!324 (toList!26 tree!30))) (Balance!20 1 0) (Balance!20 0 1)))))

(assert (=> bs!1183 d!4807))

(declare-fun d!4809 () Bool)

(assert (=> d!4809 (= (isBalanced!0 (fold!7 (map!122 tree!30 lambda!305) lambda!306)) (and (= (extraOpen!50 (fold!7 (map!122 tree!30 lambda!305) lambda!306)) 0) (= (extraClose!50 (fold!7 (map!122 tree!30 lambda!305) lambda!306)) 0)))))

(assert (=> d!4741 d!4809))

(declare-fun bs!1194 () Bool)

(declare-fun b!6065 () Bool)

(assert (= bs!1194 (and b!6065 b!5962)))

(declare-fun lambda!320 () Int)

(assert (=> bs!1194 (not (= lambda!320 lambda!283))))

(declare-fun bs!1195 () Bool)

(assert (= bs!1195 (and b!6065 b!5967)))

(assert (=> bs!1195 (not (= lambda!320 lambda!287))))

(declare-fun bs!1196 () Bool)

(assert (= bs!1196 (and b!6065 b!6043)))

(assert (=> bs!1196 (= (and (= (left!269 (map!122 tree!30 lambda!305)) (left!269 (map!122 tree!30 lambda!285))) (= lambda!306 lambda!309)) (= lambda!320 lambda!316))))

(assert (=> bs!1196 (= (and (= (left!269 (map!122 tree!30 lambda!305)) (right!272 (map!122 tree!30 lambda!285))) (= lambda!306 lambda!309)) (= lambda!320 lambda!317))))

(assert (=> b!6065 true))

(assert (=> b!6065 (< (dynLambda!57 order!37 lambda!306) (dynLambda!58 order!39 lambda!320))))

(assert (=> b!6065 true))

(declare-fun b_next!221 () Bool)

(assert (=> b!5963 (= b_next!213 (or (and b!6065 (= lambda!320 (x!3094 thiss!1014))) b_next!221))))

(declare-fun b_next!223 () Bool)

(assert (=> b!5963 (= b_next!215 (or (and b!6065 (= lambda!320 (y!407 thiss!1014))) b_next!223))))

(declare-fun b_next!225 () Bool)

(assert (=> b!5964 (= b_next!217 (or (and b!6065 (= lambda!320 (x!3094 that!266))) b_next!225))))

(declare-fun b_next!227 () Bool)

(assert (=> b!5964 (= b_next!219 (or (and b!6065 (= lambda!320 (y!407 that!266))) b_next!227))))

(declare-fun lambda!321 () Int)

(assert (=> bs!1196 (= (and (= (right!272 (map!122 tree!30 lambda!305)) (right!272 (map!122 tree!30 lambda!285))) (= lambda!306 lambda!309)) (= lambda!321 lambda!317))))

(assert (=> b!6065 (= (= (right!272 (map!122 tree!30 lambda!305)) (left!269 (map!122 tree!30 lambda!305))) (= lambda!321 lambda!320))))

(assert (=> bs!1195 (not (= lambda!321 lambda!287))))

(assert (=> bs!1196 (= (and (= (right!272 (map!122 tree!30 lambda!305)) (left!269 (map!122 tree!30 lambda!285))) (= lambda!306 lambda!309)) (= lambda!321 lambda!316))))

(assert (=> bs!1194 (not (= lambda!321 lambda!283))))

(assert (=> b!6065 true))

(assert (=> b!6065 (< (dynLambda!57 order!37 lambda!306) (dynLambda!58 order!39 lambda!321))))

(assert (=> b!6065 true))

(declare-fun b_next!229 () Bool)

(assert (=> b!5963 (= b_next!221 (or (and b!6065 (= lambda!321 (x!3094 thiss!1014))) b_next!229))))

(declare-fun b_next!231 () Bool)

(assert (=> b!5963 (= b_next!223 (or (and b!6065 (= lambda!321 (y!407 thiss!1014))) b_next!231))))

(declare-fun b_next!233 () Bool)

(assert (=> b!5964 (= b_next!225 (or (and b!6065 (= lambda!321 (x!3094 that!266))) b_next!233))))

(declare-fun b_next!235 () Bool)

(assert (=> b!5964 (= b_next!227 (or (and b!6065 (= lambda!321 (y!407 that!266))) b_next!235))))

(declare-fun e!3588 () Balance!19)

(declare-fun lt!1326 () tuple2!32)

(assert (=> b!6065 (= e!3588 (dynLambda!52 lambda!306 (_1!16 lt!1326) (_2!16 lt!1326)))))

(assert (=> b!6065 (= lt!1326 (tuple2!33 (dynLambda!50 lambda!320) (dynLambda!50 lambda!321)))))

(declare-fun d!4811 () Bool)

(declare-fun c!2315 () Bool)

(assert (=> d!4811 (= c!2315 (is-Leaf!99 (map!122 tree!30 lambda!305)))))

(assert (=> d!4811 (= (fold!7 (map!122 tree!30 lambda!305) lambda!306) e!3588)))

(declare-fun b!6064 () Bool)

(assert (=> b!6064 (= e!3588 (value!1268 (map!122 tree!30 lambda!305)))))

(assert (= (and d!4811 c!2315) b!6064))

(assert (= (and d!4811 (not c!2315)) b!6065))

(declare-fun b_lambda!2799 () Bool)

(assert (=> (not b_lambda!2799) (not b!6065)))

(declare-fun b_lambda!2801 () Bool)

(assert (=> (not b_lambda!2801) (not b!6065)))

(declare-fun b_lambda!2803 () Bool)

(assert (=> (not b_lambda!2803) (not b!6065)))

(declare-fun m!8683 () Bool)

(assert (=> b!6065 m!8683))

(declare-fun m!8685 () Bool)

(assert (=> b!6065 m!8685))

(declare-fun m!8687 () Bool)

(assert (=> b!6065 m!8687))

(assert (=> d!4741 d!4811))

(declare-fun bs!1197 () Bool)

(declare-fun b!6067 () Bool)

(assert (= bs!1197 (and b!6067 b!6027)))

(declare-fun lambda!322 () Int)

(assert (=> bs!1197 (= (and (= (left!268 tree!30) (right!271 (left!268 tree!30))) (= lambda!305 lambda!285)) (= lambda!322 lambda!311))))

(declare-fun bs!1198 () Bool)

(assert (= bs!1198 (and b!6067 b!6057)))

(assert (=> bs!1198 (= (and (= (left!268 tree!30) (left!268 (right!271 tree!30))) (= lambda!305 lambda!285)) (= lambda!322 lambda!318))))

(declare-fun bs!1199 () Bool)

(assert (= bs!1199 (and b!6067 b!5989)))

(assert (=> bs!1199 (= (= lambda!305 lambda!285) (= lambda!322 lambda!293))))

(assert (=> bs!1197 (= (and (= (left!268 tree!30) (left!268 (left!268 tree!30))) (= lambda!305 lambda!285)) (= lambda!322 lambda!310))))

(assert (=> bs!1199 (= (and (= (left!268 tree!30) (right!271 tree!30)) (= lambda!305 lambda!285)) (= lambda!322 lambda!294))))

(assert (=> bs!1198 (= (and (= (left!268 tree!30) (right!271 (right!271 tree!30))) (= lambda!305 lambda!285)) (= lambda!322 lambda!319))))

(assert (=> b!6067 true))

(assert (=> b!6067 (< (dynLambda!53 order!33 lambda!305) (dynLambda!54 order!35 lambda!322))))

(assert (=> b!6067 true))

(declare-fun lambda!323 () Int)

(assert (=> bs!1197 (= (and (= (right!271 tree!30) (right!271 (left!268 tree!30))) (= lambda!305 lambda!285)) (= lambda!323 lambda!311))))

(assert (=> bs!1198 (= (and (= (right!271 tree!30) (left!268 (right!271 tree!30))) (= lambda!305 lambda!285)) (= lambda!323 lambda!318))))

(assert (=> bs!1199 (= (and (= (right!271 tree!30) (left!268 tree!30)) (= lambda!305 lambda!285)) (= lambda!323 lambda!293))))

(assert (=> bs!1197 (= (and (= (right!271 tree!30) (left!268 (left!268 tree!30))) (= lambda!305 lambda!285)) (= lambda!323 lambda!310))))

(assert (=> b!6067 (= (= (right!271 tree!30) (left!268 tree!30)) (= lambda!323 lambda!322))))

(assert (=> bs!1199 (= (= lambda!305 lambda!285) (= lambda!323 lambda!294))))

(assert (=> bs!1198 (= (and (= (right!271 tree!30) (right!271 (right!271 tree!30))) (= lambda!305 lambda!285)) (= lambda!323 lambda!319))))

(assert (=> b!6067 true))

(assert (=> b!6067 (< (dynLambda!53 order!33 lambda!305) (dynLambda!54 order!35 lambda!323))))

(assert (=> b!6067 true))

(declare-fun e!3589 () Tree!26)

(declare-fun lt!1327 () tuple2!30)

(assert (=> b!6067 (= e!3589 (Branch!17 (_1!15 lt!1327) (_2!15 lt!1327)))))

(assert (=> b!6067 (= lt!1327 (tuple2!31 (dynLambda!55 lambda!322) (dynLambda!55 lambda!323)))))

(declare-fun d!4813 () Bool)

(declare-fun c!2316 () Bool)

(assert (=> d!4813 (= c!2316 (is-Leaf!98 tree!30))))

(assert (=> d!4813 (= (map!122 tree!30 lambda!305) e!3589)))

(declare-fun b!6066 () Bool)

(assert (=> b!6066 (= e!3589 (Leaf!99 (dynLambda!56 lambda!305 (value!1267 tree!30))))))

(assert (= (and d!4813 c!2316) b!6066))

(assert (= (and d!4813 (not c!2316)) b!6067))

(declare-fun b_lambda!2805 () Bool)

(assert (=> (not b_lambda!2805) (not b!6067)))

(declare-fun b_lambda!2807 () Bool)

(assert (=> (not b_lambda!2807) (not b!6067)))

(declare-fun b_lambda!2809 () Bool)

(assert (=> (not b_lambda!2809) (not b!6066)))

(declare-fun m!8689 () Bool)

(assert (=> b!6067 m!8689))

(declare-fun m!8691 () Bool)

(assert (=> b!6067 m!8691))

(declare-fun m!8693 () Bool)

(assert (=> b!6066 m!8693))

(assert (=> d!4741 d!4813))

(declare-fun d!4815 () Bool)

(declare-fun c!2319 () Bool)

(assert (=> d!4815 (= c!2319 (is-Nil!108 (toList!27 (left!269 (map!122 tree!30 lambda!285)))))))

(declare-fun e!3592 () List!110)

(assert (=> d!4815 (= (append!40 (toList!27 (left!269 (map!122 tree!30 lambda!285))) (toList!27 (right!272 (map!122 tree!30 lambda!285)))) e!3592)))

(declare-fun b!6072 () Bool)

(assert (=> b!6072 (= e!3592 (toList!27 (right!272 (map!122 tree!30 lambda!285))))))

(declare-fun b!6073 () Bool)

(assert (=> b!6073 (= e!3592 (Cons!107 (head!325 (toList!27 (left!269 (map!122 tree!30 lambda!285)))) (append!40 (tail!337 (toList!27 (left!269 (map!122 tree!30 lambda!285)))) (toList!27 (right!272 (map!122 tree!30 lambda!285))))))))

(assert (= (and d!4815 c!2319) b!6072))

(assert (= (and d!4815 (not c!2319)) b!6073))

(assert (=> b!6073 m!8547))

(declare-fun m!8695 () Bool)

(assert (=> b!6073 m!8695))

(assert (=> b!5983 d!4815))

(declare-fun d!4817 () Bool)

(declare-fun lt!1328 () List!110)

(assert (=> d!4817 (not (isEmpty!102 lt!1328))))

(declare-fun e!3593 () List!110)

(assert (=> d!4817 (= lt!1328 e!3593)))

(declare-fun c!2320 () Bool)

(assert (=> d!4817 (= c!2320 (is-Leaf!99 (left!269 (map!122 tree!30 lambda!285))))))

(assert (=> d!4817 (= (toList!27 (left!269 (map!122 tree!30 lambda!285))) lt!1328)))

(declare-fun b!6074 () Bool)

(assert (=> b!6074 (= e!3593 (Cons!107 (value!1268 (left!269 (map!122 tree!30 lambda!285))) Nil!108))))

(declare-fun b!6075 () Bool)

(assert (=> b!6075 (= e!3593 (append!40 (toList!27 (left!269 (left!269 (map!122 tree!30 lambda!285)))) (toList!27 (right!272 (left!269 (map!122 tree!30 lambda!285))))))))

(assert (= (and d!4817 c!2320) b!6074))

(assert (= (and d!4817 (not c!2320)) b!6075))

(declare-fun m!8697 () Bool)

(assert (=> d!4817 m!8697))

(declare-fun m!8699 () Bool)

(assert (=> b!6075 m!8699))

(declare-fun m!8701 () Bool)

(assert (=> b!6075 m!8701))

(assert (=> b!6075 m!8699))

(assert (=> b!6075 m!8701))

(declare-fun m!8703 () Bool)

(assert (=> b!6075 m!8703))

(assert (=> b!5983 d!4817))

(declare-fun d!4819 () Bool)

(declare-fun lt!1329 () List!110)

(assert (=> d!4819 (not (isEmpty!102 lt!1329))))

(declare-fun e!3594 () List!110)

(assert (=> d!4819 (= lt!1329 e!3594)))

(declare-fun c!2321 () Bool)

(assert (=> d!4819 (= c!2321 (is-Leaf!99 (right!272 (map!122 tree!30 lambda!285))))))

(assert (=> d!4819 (= (toList!27 (right!272 (map!122 tree!30 lambda!285))) lt!1329)))

(declare-fun b!6076 () Bool)

(assert (=> b!6076 (= e!3594 (Cons!107 (value!1268 (right!272 (map!122 tree!30 lambda!285))) Nil!108))))

(declare-fun b!6077 () Bool)

(assert (=> b!6077 (= e!3594 (append!40 (toList!27 (left!269 (right!272 (map!122 tree!30 lambda!285)))) (toList!27 (right!272 (right!272 (map!122 tree!30 lambda!285))))))))

(assert (= (and d!4819 c!2321) b!6076))

(assert (= (and d!4819 (not c!2321)) b!6077))

(declare-fun m!8705 () Bool)

(assert (=> d!4819 m!8705))

(declare-fun m!8707 () Bool)

(assert (=> b!6077 m!8707))

(declare-fun m!8709 () Bool)

(assert (=> b!6077 m!8709))

(assert (=> b!6077 m!8707))

(assert (=> b!6077 m!8709))

(declare-fun m!8711 () Bool)

(assert (=> b!6077 m!8711))

(assert (=> b!5983 d!4819))

(declare-fun d!4821 () Bool)

(declare-fun c!2322 () Bool)

(assert (=> d!4821 (= c!2322 (and (is-Cons!107 (tail!337 (toList!27 (map!122 tree!30 lambda!285)))) (is-Nil!108 (tail!337 (tail!337 (toList!27 (map!122 tree!30 lambda!285)))))))))

(declare-fun e!3595 () Balance!19)

(assert (=> d!4821 (= (foldRight1!6 (tail!337 (toList!27 (map!122 tree!30 lambda!285))) lambda!284) e!3595)))

(declare-fun b!6078 () Bool)

(assert (=> b!6078 (= e!3595 (head!325 (tail!337 (toList!27 (map!122 tree!30 lambda!285)))))))

(declare-fun b!6079 () Bool)

(assert (=> b!6079 (= e!3595 (dynLambda!52 lambda!284 (head!325 (tail!337 (toList!27 (map!122 tree!30 lambda!285)))) (foldRight1!6 (tail!337 (tail!337 (toList!27 (map!122 tree!30 lambda!285)))) lambda!284)))))

(assert (= (and d!4821 c!2322) b!6078))

(assert (= (and d!4821 (not c!2322)) b!6079))

(declare-fun b_lambda!2811 () Bool)

(assert (=> (not b_lambda!2811) (not b!6079)))

(declare-fun m!8713 () Bool)

(assert (=> b!6079 m!8713))

(assert (=> b!6079 m!8713))

(declare-fun m!8715 () Bool)

(assert (=> b!6079 m!8715))

(assert (=> b!5977 d!4821))

(declare-fun d!4823 () Bool)

(assert (=> d!4823 (= (fromParenthesis!0 (value!1267 tree!30)) (ite (is-OpenParenthesis!10 (value!1267 tree!30)) (Balance!20 1 0) (Balance!20 0 1)))))

(assert (=> bs!1186 d!4823))

(assert (=> bs!1182 d!4725))

(assert (=> bs!1182 d!4727))

(assert (=> bs!1182 d!4729))

(assert (=> bs!1181 d!4731))

(assert (=> bs!1181 d!4733))

(assert (=> bs!1181 d!4735))

(declare-fun b!6082 () Bool)

(declare-fun res!1628 () Bool)

(declare-fun e!3596 () Bool)

(assert (=> b!6082 (=> (not res!1628) (not e!3596))))

(assert (=> b!6082 (= res!1628 (toList_map_commutativity!0 (right!271 (right!271 tree!30)) lambda!285))))

(declare-fun b!6083 () Bool)

(assert (=> b!6083 (= e!3596 (map_append!0 (toList!26 (left!268 (right!271 tree!30))) (toList!26 (right!271 (right!271 tree!30))) lambda!285))))

(declare-fun b!6081 () Bool)

(declare-fun e!3597 () Bool)

(assert (=> b!6081 (= e!3597 e!3596)))

(declare-fun res!1629 () Bool)

(assert (=> b!6081 (=> (not res!1629) (not e!3596))))

(assert (=> b!6081 (= res!1629 (toList_map_commutativity!0 (left!268 (right!271 tree!30)) lambda!285))))

(declare-fun d!4825 () Bool)

(assert (=> d!4825 (because!2 (ProofOps!19 (= (toList!27 (map!122 (right!271 tree!30) lambda!285)) (map!123 (toList!26 (right!271 tree!30)) lambda!285))) e!3597)))

(declare-fun c!2323 () Bool)

(assert (=> d!4825 (= c!2323 (is-Leaf!98 (right!271 tree!30)))))

(assert (=> d!4825 (= (toList_map_commutativity!0 (right!271 tree!30) lambda!285) true)))

(declare-fun b!6080 () Bool)

(assert (=> b!6080 (= e!3597 true)))

(assert (= (and b!6081 res!1629) b!6082))

(assert (= (and b!6082 res!1628) b!6083))

(assert (= (and d!4825 c!2323) b!6080))

(assert (= (and d!4825 (not c!2323)) b!6081))

(declare-fun m!8717 () Bool)

(assert (=> b!6082 m!8717))

(assert (=> b!6083 m!8647))

(assert (=> b!6083 m!8649))

(assert (=> b!6083 m!8647))

(assert (=> b!6083 m!8649))

(declare-fun m!8719 () Bool)

(assert (=> b!6083 m!8719))

(declare-fun m!8721 () Bool)

(assert (=> b!6081 m!8721))

(assert (=> d!4825 m!8615))

(declare-fun m!8723 () Bool)

(assert (=> d!4825 m!8723))

(assert (=> d!4825 m!8569))

(assert (=> d!4825 m!8629))

(assert (=> d!4825 m!8615))

(declare-fun m!8725 () Bool)

(assert (=> d!4825 m!8725))

(assert (=> d!4825 m!8569))

(assert (=> b!6022 d!4825))

(declare-fun lt!1332 () Int)

(declare-fun d!4827 () Bool)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!4827 (= lt!1332 (min!4 (extraOpen!50 (head!325 (map!123 (toList!26 tree!30) lambda!285))) (extraClose!50 (foldRight1!6 (tail!337 (map!123 (toList!26 tree!30) lambda!285)) lambda!284))))))

(assert (=> d!4827 (= (++!3 (head!325 (map!123 (toList!26 tree!30) lambda!285)) (foldRight1!6 (tail!337 (map!123 (toList!26 tree!30) lambda!285)) lambda!284)) (Balance!20 (- (+ (extraOpen!50 (head!325 (map!123 (toList!26 tree!30) lambda!285))) (extraOpen!50 (foldRight1!6 (tail!337 (map!123 (toList!26 tree!30) lambda!285)) lambda!284))) lt!1332) (- (+ (extraClose!50 (head!325 (map!123 (toList!26 tree!30) lambda!285))) (extraClose!50 (foldRight1!6 (tail!337 (map!123 (toList!26 tree!30) lambda!285)) lambda!284))) lt!1332)))))

(declare-fun bs!1200 () Bool)

(assert (= bs!1200 d!4827))

(declare-fun m!8727 () Bool)

(assert (=> bs!1200 m!8727))

(assert (=> bs!1185 d!4827))

(declare-fun lt!1333 () Int)

(declare-fun d!4829 () Bool)

(assert (=> d!4829 (= lt!1333 (min!4 (extraOpen!50 (head!325 (toList!27 (map!122 tree!30 lambda!285)))) (extraClose!50 (foldRight1!6 (tail!337 (toList!27 (map!122 tree!30 lambda!285))) lambda!284))))))

(assert (=> d!4829 (= (++!3 (head!325 (toList!27 (map!122 tree!30 lambda!285))) (foldRight1!6 (tail!337 (toList!27 (map!122 tree!30 lambda!285))) lambda!284)) (Balance!20 (- (+ (extraOpen!50 (head!325 (toList!27 (map!122 tree!30 lambda!285)))) (extraOpen!50 (foldRight1!6 (tail!337 (toList!27 (map!122 tree!30 lambda!285))) lambda!284))) lt!1333) (- (+ (extraClose!50 (head!325 (toList!27 (map!122 tree!30 lambda!285)))) (extraClose!50 (foldRight1!6 (tail!337 (toList!27 (map!122 tree!30 lambda!285))) lambda!284))) lt!1333)))))

(declare-fun bs!1201 () Bool)

(assert (= bs!1201 d!4829))

(declare-fun m!8729 () Bool)

(assert (=> bs!1201 m!8729))

(assert (=> bs!1184 d!4829))

(assert (=> bs!1177 d!4725))

(assert (=> bs!1177 d!4727))

(assert (=> bs!1177 d!4729))

(declare-fun b!6086 () Bool)

(declare-fun res!1630 () Bool)

(declare-fun e!3598 () Bool)

(assert (=> b!6086 (=> (not res!1630) (not e!3598))))

(assert (=> b!6086 (= res!1630 (toList_map_commutativity!0 (right!271 (left!268 tree!30)) lambda!285))))

(declare-fun b!6087 () Bool)

(assert (=> b!6087 (= e!3598 (map_append!0 (toList!26 (left!268 (left!268 tree!30))) (toList!26 (right!271 (left!268 tree!30))) lambda!285))))

(declare-fun b!6085 () Bool)

(declare-fun e!3599 () Bool)

(assert (=> b!6085 (= e!3599 e!3598)))

(declare-fun res!1631 () Bool)

(assert (=> b!6085 (=> (not res!1631) (not e!3598))))

(assert (=> b!6085 (= res!1631 (toList_map_commutativity!0 (left!268 (left!268 tree!30)) lambda!285))))

(declare-fun d!4831 () Bool)

(assert (=> d!4831 (because!2 (ProofOps!19 (= (toList!27 (map!122 (left!268 tree!30) lambda!285)) (map!123 (toList!26 (left!268 tree!30)) lambda!285))) e!3599)))

(declare-fun c!2324 () Bool)

(assert (=> d!4831 (= c!2324 (is-Leaf!98 (left!268 tree!30)))))

(assert (=> d!4831 (= (toList_map_commutativity!0 (left!268 tree!30) lambda!285) true)))

(declare-fun b!6084 () Bool)

(assert (=> b!6084 (= e!3599 true)))

(assert (= (and b!6085 res!1631) b!6086))

(assert (= (and b!6086 res!1630) b!6087))

(assert (= (and d!4831 c!2324) b!6084))

(assert (= (and d!4831 (not c!2324)) b!6085))

(declare-fun m!8731 () Bool)

(assert (=> b!6086 m!8731))

(assert (=> b!6087 m!8639))

(assert (=> b!6087 m!8641))

(assert (=> b!6087 m!8639))

(assert (=> b!6087 m!8641))

(declare-fun m!8733 () Bool)

(assert (=> b!6087 m!8733))

(declare-fun m!8735 () Bool)

(assert (=> b!6085 m!8735))

(assert (=> d!4831 m!8613))

(declare-fun m!8737 () Bool)

(assert (=> d!4831 m!8737))

(assert (=> d!4831 m!8567))

(assert (=> d!4831 m!8627))

(assert (=> d!4831 m!8613))

(declare-fun m!8739 () Bool)

(assert (=> d!4831 m!8739))

(assert (=> d!4831 m!8567))

(assert (=> b!6021 d!4831))

(declare-fun b_lambda!2813 () Bool)

(assert (= b_lambda!2811 (or b!5962 b_lambda!2813)))

(declare-fun bs!1202 () Bool)

(declare-fun d!4833 () Bool)

(assert (= bs!1202 (and d!4833 b!5962)))

(assert (=> bs!1202 (= (dynLambda!52 lambda!284 (head!325 (tail!337 (toList!27 (map!122 tree!30 lambda!285)))) (foldRight1!6 (tail!337 (tail!337 (toList!27 (map!122 tree!30 lambda!285)))) lambda!284)) (++!3 (head!325 (tail!337 (toList!27 (map!122 tree!30 lambda!285)))) (foldRight1!6 (tail!337 (tail!337 (toList!27 (map!122 tree!30 lambda!285)))) lambda!284)))))

(assert (=> bs!1202 m!8713))

(declare-fun m!8741 () Bool)

(assert (=> bs!1202 m!8741))

(assert (=> b!6079 d!4833))

(declare-fun b_lambda!2815 () Bool)

(assert (= b_lambda!2791 (or b!5962 b_lambda!2815)))

(declare-fun bs!1203 () Bool)

(declare-fun d!4835 () Bool)

(assert (= bs!1203 (and d!4835 b!5962)))

(assert (=> bs!1203 (= (dynLambda!56 lambda!285 (value!1267 (right!271 tree!30))) (fromParenthesis!0 (value!1267 (right!271 tree!30))))))

(declare-fun m!8743 () Bool)

(assert (=> bs!1203 m!8743))

(assert (=> b!6056 d!4835))

(declare-fun b_lambda!2817 () Bool)

(assert (= b_lambda!2803 (or b!6065 b_lambda!2817)))

(declare-fun bs!1204 () Bool)

(declare-fun d!4837 () Bool)

(assert (= bs!1204 (and d!4837 b!6065)))

(assert (=> bs!1204 (= (dynLambda!50 lambda!321) (fold!7 (right!272 (map!122 tree!30 lambda!305)) lambda!306))))

(declare-fun m!8745 () Bool)

(assert (=> bs!1204 m!8745))

(assert (=> b!6065 d!4837))

(declare-fun b_lambda!2819 () Bool)

(assert (= b_lambda!2787 (or b!6057 b_lambda!2819)))

(declare-fun bs!1205 () Bool)

(declare-fun d!4839 () Bool)

(assert (= bs!1205 (and d!4839 b!6057)))

(assert (=> bs!1205 (= (dynLambda!55 lambda!318) (map!122 (left!268 (right!271 tree!30)) lambda!285))))

(declare-fun m!8747 () Bool)

(assert (=> bs!1205 m!8747))

(assert (=> b!6057 d!4839))

(declare-fun b_lambda!2821 () Bool)

(assert (= b_lambda!2771 (or b!5962 b_lambda!2821)))

(declare-fun bs!1206 () Bool)

(declare-fun d!4841 () Bool)

(assert (= bs!1206 (and d!4841 b!5962)))

(assert (=> bs!1206 (= (dynLambda!52 lambda!284 (head!325 (tail!337 (map!123 (toList!26 tree!30) lambda!285))) (foldRight1!6 (tail!337 (tail!337 (map!123 (toList!26 tree!30) lambda!285))) lambda!284)) (++!3 (head!325 (tail!337 (map!123 (toList!26 tree!30) lambda!285))) (foldRight1!6 (tail!337 (tail!337 (map!123 (toList!26 tree!30) lambda!285))) lambda!284)))))

(assert (=> bs!1206 m!8617))

(declare-fun m!8749 () Bool)

(assert (=> bs!1206 m!8749))

(assert (=> b!6025 d!4841))

(declare-fun b_lambda!2823 () Bool)

(assert (= b_lambda!2793 (or b!5962 b_lambda!2823)))

(declare-fun bs!1207 () Bool)

(declare-fun d!4843 () Bool)

(assert (= bs!1207 (and d!4843 b!5962)))

(assert (=> bs!1207 (= (dynLambda!56 lambda!285 (head!324 (tail!336 (toList!26 tree!30)))) (fromParenthesis!0 (head!324 (tail!336 (toList!26 tree!30)))))))

(declare-fun m!8751 () Bool)

(assert (=> bs!1207 m!8751))

(assert (=> b!6059 d!4843))

(declare-fun b_lambda!2825 () Bool)

(assert (= b_lambda!2809 (or d!4741 b_lambda!2825)))

(declare-fun bs!1208 () Bool)

(declare-fun d!4845 () Bool)

(assert (= bs!1208 (and d!4845 d!4741)))

(assert (=> bs!1208 (= (dynLambda!56 lambda!305 (value!1267 tree!30)) (fromParenthesis!0 (value!1267 tree!30)))))

(assert (=> bs!1208 m!8611))

(assert (=> b!6066 d!4845))

(declare-fun b_lambda!2827 () Bool)

(assert (= b_lambda!2805 (or b!6067 b_lambda!2827)))

(declare-fun bs!1209 () Bool)

(declare-fun d!4847 () Bool)

(assert (= bs!1209 (and d!4847 b!6067)))

(assert (=> bs!1209 (= (dynLambda!55 lambda!322) (map!122 (left!268 tree!30) lambda!305))))

(declare-fun m!8753 () Bool)

(assert (=> bs!1209 m!8753))

(assert (=> b!6067 d!4847))

(declare-fun b_lambda!2829 () Bool)

(assert (= b_lambda!2801 (or b!6065 b_lambda!2829)))

(declare-fun bs!1210 () Bool)

(declare-fun d!4849 () Bool)

(assert (= bs!1210 (and d!4849 b!6065)))

(assert (=> bs!1210 (= (dynLambda!50 lambda!320) (fold!7 (left!269 (map!122 tree!30 lambda!305)) lambda!306))))

(declare-fun m!8755 () Bool)

(assert (=> bs!1210 m!8755))

(assert (=> b!6065 d!4849))

(declare-fun b_lambda!2831 () Bool)

(assert (= b_lambda!2779 (or d!4747 b_lambda!2831)))

(declare-fun bs!1211 () Bool)

(declare-fun d!4851 () Bool)

(assert (= bs!1211 (and d!4851 d!4747)))

(assert (=> bs!1211 (= (dynLambda!52 lambda!309 (_1!16 lt!1324) (_2!16 lt!1324)) (++!3 (_1!16 lt!1324) (_2!16 lt!1324)))))

(declare-fun m!8757 () Bool)

(assert (=> bs!1211 m!8757))

(assert (=> b!6043 d!4851))

(declare-fun b_lambda!2833 () Bool)

(assert (= b_lambda!2773 (or b!6027 b_lambda!2833)))

(declare-fun bs!1212 () Bool)

(declare-fun d!4853 () Bool)

(assert (= bs!1212 (and d!4853 b!6027)))

(assert (=> bs!1212 (= (dynLambda!55 lambda!310) (map!122 (left!268 (left!268 tree!30)) lambda!285))))

(declare-fun m!8759 () Bool)

(assert (=> bs!1212 m!8759))

(assert (=> b!6027 d!4853))

(declare-fun b_lambda!2835 () Bool)

(assert (= b_lambda!2795 (or d!4737 b_lambda!2835)))

(declare-fun bs!1213 () Bool)

(declare-fun d!4855 () Bool)

(assert (= bs!1213 (and d!4855 d!4737)))

(assert (=> bs!1213 (= (dynLambda!52 lambda!300 (head!325 (map!123 (toList!26 tree!30) lambda!299)) (foldRight1!6 (tail!337 (map!123 (toList!26 tree!30) lambda!299)) lambda!300)) (++!3 (head!325 (map!123 (toList!26 tree!30) lambda!299)) (foldRight1!6 (tail!337 (map!123 (toList!26 tree!30) lambda!299)) lambda!300)))))

(assert (=> bs!1213 m!8675))

(declare-fun m!8761 () Bool)

(assert (=> bs!1213 m!8761))

(assert (=> b!6061 d!4855))

(declare-fun b_lambda!2837 () Bool)

(assert (= b_lambda!2783 (or b!6043 b_lambda!2837)))

(declare-fun bs!1214 () Bool)

(declare-fun d!4857 () Bool)

(assert (= bs!1214 (and d!4857 b!6043)))

(assert (=> bs!1214 (= (dynLambda!50 lambda!317) (fold!7 (right!272 (map!122 tree!30 lambda!285)) lambda!309))))

(declare-fun m!8763 () Bool)

(assert (=> bs!1214 m!8763))

(assert (=> b!6043 d!4857))

(declare-fun b_lambda!2839 () Bool)

(assert (= b_lambda!2777 (or b!5962 b_lambda!2839)))

(declare-fun bs!1215 () Bool)

(declare-fun d!4859 () Bool)

(assert (= bs!1215 (and d!4859 b!5962)))

(assert (=> bs!1215 (= (dynLambda!56 lambda!285 (value!1267 (left!268 tree!30))) (fromParenthesis!0 (value!1267 (left!268 tree!30))))))

(declare-fun m!8765 () Bool)

(assert (=> bs!1215 m!8765))

(assert (=> b!6026 d!4859))

(declare-fun b_lambda!2841 () Bool)

(assert (= b_lambda!2797 (or d!4737 b_lambda!2841)))

(declare-fun bs!1216 () Bool)

(declare-fun d!4861 () Bool)

(assert (= bs!1216 (and d!4861 d!4737)))

(assert (=> bs!1216 (= (dynLambda!56 lambda!299 (head!324 (toList!26 tree!30))) (fromParenthesis!0 (head!324 (toList!26 tree!30))))))

(assert (=> bs!1216 m!8605))

(assert (=> b!6063 d!4861))

(declare-fun b_lambda!2843 () Bool)

(assert (= b_lambda!2799 (or d!4741 b_lambda!2843)))

(declare-fun bs!1217 () Bool)

(declare-fun d!4863 () Bool)

(assert (= bs!1217 (and d!4863 d!4741)))

(assert (=> bs!1217 (= (dynLambda!52 lambda!306 (_1!16 lt!1326) (_2!16 lt!1326)) (++!3 (_1!16 lt!1326) (_2!16 lt!1326)))))

(declare-fun m!8767 () Bool)

(assert (=> bs!1217 m!8767))

(assert (=> b!6065 d!4863))

(declare-fun b_lambda!2845 () Bool)

(assert (= b_lambda!2785 (or d!4747 b_lambda!2845)))

(declare-fun bs!1218 () Bool)

(declare-fun d!4865 () Bool)

(assert (= bs!1218 (and d!4865 d!4747)))

(assert (=> bs!1218 (= (dynLambda!52 lambda!309 (head!325 (toList!27 (map!122 tree!30 lambda!285))) (foldRight1!6 (tail!337 (toList!27 (map!122 tree!30 lambda!285))) lambda!309)) (++!3 (head!325 (toList!27 (map!122 tree!30 lambda!285))) (foldRight1!6 (tail!337 (toList!27 (map!122 tree!30 lambda!285))) lambda!309)))))

(assert (=> bs!1218 m!8659))

(declare-fun m!8769 () Bool)

(assert (=> bs!1218 m!8769))

(assert (=> b!6049 d!4865))

(declare-fun b_lambda!2847 () Bool)

(assert (= b_lambda!2789 (or b!6057 b_lambda!2847)))

(declare-fun bs!1219 () Bool)

(declare-fun d!4867 () Bool)

(assert (= bs!1219 (and d!4867 b!6057)))

(assert (=> bs!1219 (= (dynLambda!55 lambda!319) (map!122 (right!271 (right!271 tree!30)) lambda!285))))

(declare-fun m!8771 () Bool)

(assert (=> bs!1219 m!8771))

(assert (=> b!6057 d!4867))

(declare-fun b_lambda!2849 () Bool)

(assert (= b_lambda!2775 (or b!6027 b_lambda!2849)))

(declare-fun bs!1220 () Bool)

(declare-fun d!4869 () Bool)

(assert (= bs!1220 (and d!4869 b!6027)))

(assert (=> bs!1220 (= (dynLambda!55 lambda!311) (map!122 (right!271 (left!268 tree!30)) lambda!285))))

(declare-fun m!8773 () Bool)

(assert (=> bs!1220 m!8773))

(assert (=> b!6027 d!4869))

(declare-fun b_lambda!2851 () Bool)

(assert (= b_lambda!2807 (or b!6067 b_lambda!2851)))

(declare-fun bs!1221 () Bool)

(declare-fun d!4871 () Bool)

(assert (= bs!1221 (and d!4871 b!6067)))

(assert (=> bs!1221 (= (dynLambda!55 lambda!323) (map!122 (right!271 tree!30) lambda!305))))

(declare-fun m!8775 () Bool)

(assert (=> bs!1221 m!8775))

(assert (=> b!6067 d!4871))

(declare-fun b_lambda!2853 () Bool)

(assert (= b_lambda!2781 (or b!6043 b_lambda!2853)))

(declare-fun bs!1222 () Bool)

(declare-fun d!4873 () Bool)

(assert (= bs!1222 (and d!4873 b!6043)))

(assert (=> bs!1222 (= (dynLambda!50 lambda!316) (fold!7 (left!269 (map!122 tree!30 lambda!285)) lambda!309))))

(declare-fun m!8777 () Bool)

(assert (=> bs!1222 m!8777))

(assert (=> b!6043 d!4873))

(push 1)

(assert (not b_lambda!2759))

(assert (not b!6063))

(assert (not d!4829))

(assert (not bs!1221))

(assert (not b!6085))

(assert (not d!4781))

(assert (not b_lambda!2751))

(assert (not b!6082))

(assert (not b!6025))

(assert (not b_lambda!2721))

(assert b_and!1137)

(assert (not b_lambda!2821))

(assert (not b!6079))

(assert (not bs!1219))

(assert (not b_lambda!2817))

(assert (not b_lambda!2835))

(assert (not b_lambda!2839))

(assert (not b!6033))

(assert (not b_lambda!2815))

(assert (not b_lambda!2833))

(assert (not bs!1207))

(assert (not b!6081))

(assert (not d!4819))

(assert (not b_next!233))

(assert (not b!6061))

(assert (not d!4831))

(assert (not b!6075))

(assert b_and!1129)

(assert (not b!6032))

(assert (not b!6087))

(assert (not bs!1202))

(assert (not b_lambda!2847))

(assert (not bs!1205))

(assert (not b!6055))

(assert (not b!6059))

(assert (not bs!1218))

(assert (not bs!1214))

(assert (not bs!1215))

(assert (not bs!1222))

(assert (not bs!1206))

(assert (not bs!1203))

(assert (not b_lambda!2849))

(assert (not b_lambda!2827))

(assert b_and!1131)

(assert (not bs!1204))

(assert (not b_lambda!2717))

(assert (not bs!1209))

(assert (not b_lambda!2837))

(assert (not b!6049))

(assert (not bs!1220))

(assert (not b_next!201))

(assert (not d!4827))

(assert (not b!6077))

(assert (not b_lambda!2765))

(assert (not b_lambda!2825))

(assert (not bs!1210))

(assert (not b!6037))

(assert (not b_lambda!2841))

(assert (not d!4783))

(assert b_and!1133)

(assert (not b_lambda!2831))

(assert (not bs!1208))

(assert (not b_next!229))

(assert (not b_lambda!2753))

(assert (not b_next!203))

(assert (not b_lambda!2853))

(assert (not b_lambda!2829))

(assert (not b_lambda!2757))

(assert (not b_lambda!2719))

(assert (not b_next!235))

(assert (not b_lambda!2761))

(assert (not bs!1217))

(assert (not b_lambda!2823))

(assert (not b_lambda!2747))

(assert (not b_next!231))

(assert (not b_lambda!2851))

(assert (not b_lambda!2843))

(assert (not b_lambda!2845))

(assert b_and!1127)

(assert (not b_lambda!2763))

(assert (not b_lambda!2813))

(assert (not b_lambda!2819))

(assert (not b!6073))

(assert (not b!6086))

(assert (not d!4825))

(assert (not d!4817))

(assert (not b_lambda!2769))

(assert b_and!1135)

(assert (not bs!1213))

(assert (not b_lambda!2749))

(assert (not b_lambda!2755))

(assert (not bs!1216))

(assert (not bs!1211))

(assert (not b!6083))

(assert (not b_lambda!2767))

(assert (not b!6035))

(assert (not bs!1212))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1137)

(assert (not b_next!233))

(assert b_and!1129)

(assert b_and!1131)

(assert (not b_next!201))

(assert b_and!1133)

(assert (not b_next!229))

(assert (not b_next!203))

(assert (not b_next!235))

(assert (not b_next!231))

(assert b_and!1127)

(assert b_and!1135)

(check-sat)

(pop 1)

