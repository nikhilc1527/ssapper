; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!874 () Bool)

(assert start!874)

(declare-fun b!5862 () Bool)

(declare-fun b_free!75 () Bool)

(declare-fun b_next!97 () Bool)

(assert (=> b!5862 (= b_free!75 (not b_next!97))))

(declare-fun tp!239 () Bool)

(declare-fun b_and!975 () Bool)

(assert (=> b!5862 (= tp!239 b_and!975)))

(declare-fun b_free!77 () Bool)

(declare-fun b_next!99 () Bool)

(assert (=> b!5862 (= b_free!77 (not b_next!99))))

(declare-fun tp!240 () Bool)

(declare-fun b_and!977 () Bool)

(assert (=> b!5862 (= tp!240 b_and!977)))

(declare-fun b_free!79 () Bool)

(declare-fun b_next!101 () Bool)

(assert (=> start!874 (= b_free!79 (not b_next!101))))

(declare-fun tp!241 () Bool)

(declare-fun b_and!979 () Bool)

(assert (=> start!874 (= tp!241 b_and!979)))

(declare-fun b!5859 () Bool)

(assert (=> b!5859 true))

(declare-fun b_next!103 () Bool)

(declare-datatypes () ((Balance!11 (Balance!12 (extraOpen!46 Int) (extraClose!46 Int)))))

(declare-datatypes () ((EqProof!4 (EqProof!5 (x!3013 Int) (y!400 Int)))))

(declare-fun thiss!1015 () EqProof!4)

(declare-fun lambda!176 () Int)

(assert (=> b!5862 (= b_next!97 (or (and b!5859 (= lambda!176 (x!3013 thiss!1015))) b_next!103))))

(declare-fun b_next!105 () Bool)

(assert (=> b!5862 (= b_next!99 (or (and b!5859 (= lambda!176 (y!400 thiss!1015))) b_next!105))))

(declare-fun b!5860 () Bool)

(assert (=> b!5860 true))

(declare-fun b_next!107 () Bool)

(declare-fun lambda!179 () Int)

(declare-fun proof!266 () Int)

(assert (=> start!874 (= b_next!101 (or (and b!5860 (= lambda!179 proof!266)) b_next!107))))

(declare-fun res!1560 () Bool)

(declare-fun e!3441 () Bool)

(assert (=> start!874 (=> (not res!1560) (not e!3441))))

(declare-datatypes () ((ProofOps!14 (ProofOps!15 (prop!108 Bool)))))

(declare-fun thiss!1009 () ProofOps!14)

(declare-datatypes () ((Parenthesis!7 (CloseParenthesis!6) (OpenParenthesis!6))))

(declare-datatypes () ((Tree!19 (Branch!10 (left!257 Tree!19) (right!260 Tree!19)) (Leaf!92 (value!1261 Parenthesis!7)))))

(declare-fun tree!30 () Tree!19)

(declare-datatypes () ((List!103 (Nil!101) (Cons!100 (head!318 Parenthesis!7) (tail!330 List!103)))))

(declare-fun isMatchedHybid!0 (List!103) Bool)

(declare-fun toList!20 (Tree!19) List!103)

(declare-fun isMatchedParallel!0 (Tree!19) Bool)

(assert (=> start!874 (= res!1560 (= thiss!1009 (ProofOps!15 (= (isMatchedHybid!0 (toList!20 tree!30)) (isMatchedParallel!0 tree!30)))))))

(assert (=> start!874 e!3441))

(assert (=> start!874 true))

(declare-fun e!3440 () Bool)

(declare-fun inv!209 (EqProof!4) Bool)

(assert (=> start!874 (and (inv!209 thiss!1015) e!3440)))

(assert (=> start!874 tp!241))

(assert (=> b!5862 (= e!3440 (and tp!239 tp!240))))

(declare-fun res!1562 () Bool)

(assert (=> b!5860 (=> (not res!1562) (not e!3441))))

(assert (=> b!5860 (= res!1562 (= proof!266 lambda!179))))

(declare-fun res!1561 () Bool)

(assert (=> b!5859 (=> (not res!1561) (not e!3441))))

(assert (=> b!5859 (= res!1561 (= thiss!1015 (EqProof!5 lambda!176 lambda!176)))))

(declare-fun b!5861 () Bool)

(declare-fun dynLambda!42 (Int) Bool)

(assert (=> b!5861 (= e!3441 (not (dynLambda!42 proof!266)))))

(assert (= (and start!874 res!1560) b!5859))

(assert (= (and b!5859 res!1561) b!5860))

(assert (= (and b!5860 res!1562) b!5861))

(assert (= start!874 b!5862))

(declare-fun b_lambda!2663 () Bool)

(assert (=> (not b_lambda!2663) (not b!5861)))

(declare-fun t!899 () Bool)

(declare-fun tb!559 () Bool)

(assert (=> (and start!874 (= proof!266 proof!266) t!899) tb!559))

(declare-fun result!599 () Bool)

(assert (=> tb!559 (= result!599 true)))

(assert (=> b!5861 t!899))

(declare-fun b_and!981 () Bool)

(assert (= b_and!979 (and (=> t!899 result!599) b_and!981)))

(declare-fun m!8363 () Bool)

(assert (=> start!874 m!8363))

(assert (=> start!874 m!8363))

(declare-fun m!8365 () Bool)

(assert (=> start!874 m!8365))

(declare-fun m!8367 () Bool)

(assert (=> start!874 m!8367))

(declare-fun m!8369 () Bool)

(assert (=> start!874 m!8369))

(declare-fun m!8371 () Bool)

(assert (=> b!5861 m!8371))

(push 1)

(assert (not b_next!105))

(assert b_and!975)

(assert (not b_next!103))

(assert b_and!977)

(assert (not start!874))

(assert b_and!981)

(assert (not b_next!107))

(assert (not b_lambda!2663))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!105))

(assert b_and!975)

(assert (not b_next!103))

(assert b_and!977)

(assert b_and!981)

(assert (not b_next!107))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2665 () Bool)

(assert (= b_lambda!2663 (or (and b!5860 (= lambda!179 proof!266)) (and start!874 b_free!79) b_lambda!2665)))

(declare-fun bs!1123 () Bool)

(declare-fun d!4651 () Bool)

(assert (= bs!1123 (and d!4651 b!5860)))

(declare-fun lambda!178 () Int)

(declare-fun toList_map_commutativity!0 (Tree!19 Int) Bool)

(assert (=> bs!1123 (= (dynLambda!42 lambda!179) (toList_map_commutativity!0 tree!30 lambda!178))))

(declare-fun m!8373 () Bool)

(assert (=> bs!1123 m!8373))

(assert (=> (and b!5860 (= lambda!179 proof!266) b!5861) d!4651))

(push 1)

(assert (not bs!1123))

(assert (not b_next!105))

(assert b_and!975)

(assert (not b_next!103))

(assert b_and!977)

(assert (not b_lambda!2665))

(assert (not start!874))

(assert b_and!981)

(assert (not b_next!107))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!105))

(assert b_and!975)

(assert (not b_next!103))

(assert b_and!977)

(assert b_and!981)

(assert (not b_next!107))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5875 () Bool)

(declare-fun e!3447 () Bool)

(assert (=> b!5875 (= e!3447 true)))

(declare-fun b!5876 () Bool)

(declare-fun e!3446 () Bool)

(assert (=> b!5876 (= e!3447 e!3446)))

(declare-fun res!1567 () Bool)

(assert (=> b!5876 (=> (not res!1567) (not e!3446))))

(assert (=> b!5876 (= res!1567 (toList_map_commutativity!0 (left!257 tree!30) lambda!178))))

(declare-fun b!5878 () Bool)

(declare-fun map_append!0 (List!103 List!103 Int) Bool)

(assert (=> b!5878 (= e!3446 (map_append!0 (toList!20 (left!257 tree!30)) (toList!20 (right!260 tree!30)) lambda!178))))

(declare-fun b!5877 () Bool)

(declare-fun res!1568 () Bool)

(assert (=> b!5877 (=> (not res!1568) (not e!3446))))

(assert (=> b!5877 (= res!1568 (toList_map_commutativity!0 (right!260 tree!30) lambda!178))))

(declare-fun d!4653 () Bool)

(declare-fun because!2 (ProofOps!14 Bool) Bool)

(declare-datatypes () ((Tree!20 (Branch!11 (left!258 Tree!20) (right!261 Tree!20)) (Leaf!93 (value!1262 Balance!11)))))

(declare-datatypes () ((List!104 (Nil!102) (Cons!101 (head!319 Balance!11) (tail!331 List!104)))))

(declare-fun toList!21 (Tree!20) List!104)

(declare-fun map!118 (Tree!19 Int) Tree!20)

(declare-fun map!119 (List!103 Int) List!104)

(assert (=> d!4653 (because!2 (ProofOps!15 (= (toList!21 (map!118 tree!30 lambda!178)) (map!119 (toList!20 tree!30) lambda!178))) e!3447)))

(declare-fun c!2265 () Bool)

(assert (=> d!4653 (= c!2265 (is-Leaf!92 tree!30))))

(assert (=> d!4653 (= (toList_map_commutativity!0 tree!30 lambda!178) true)))

(assert (= (and b!5876 res!1567) b!5877))

(assert (= (and b!5877 res!1568) b!5878))

(assert (= (and d!4653 c!2265) b!5875))

(assert (= (and d!4653 (not c!2265)) b!5876))

(declare-fun m!8375 () Bool)

(assert (=> b!5876 m!8375))

(declare-fun m!8377 () Bool)

(assert (=> b!5878 m!8377))

(declare-fun m!8379 () Bool)

(assert (=> b!5878 m!8379))

(assert (=> b!5878 m!8377))

(assert (=> b!5878 m!8379))

(declare-fun m!8381 () Bool)

(assert (=> b!5878 m!8381))

(declare-fun m!8383 () Bool)

(assert (=> b!5877 m!8383))

(declare-fun m!8385 () Bool)

(assert (=> d!4653 m!8385))

(assert (=> d!4653 m!8385))

(declare-fun m!8387 () Bool)

(assert (=> d!4653 m!8387))

(assert (=> d!4653 m!8363))

(assert (=> d!4653 m!8363))

(declare-fun m!8389 () Bool)

(assert (=> d!4653 m!8389))

(declare-fun m!8391 () Bool)

(assert (=> d!4653 m!8391))

(assert (=> bs!1123 d!4653))

(declare-fun bs!1124 () Bool)

(declare-fun d!4655 () Bool)

(assert (= bs!1124 (and d!4655 b!5859)))

(declare-fun lambda!184 () Int)

(assert (=> bs!1124 (= lambda!184 lambda!178)))

(declare-fun lambda!185 () Int)

(declare-fun lambda!177 () Int)

(assert (=> bs!1124 (= lambda!185 lambda!177)))

(declare-fun isBalanced!0 (Balance!11) Bool)

(declare-fun foldRight1!4 (List!104 Int) Balance!11)

(assert (=> d!4655 (= (isMatchedHybid!0 (toList!20 tree!30)) (isBalanced!0 (foldRight1!4 (map!119 (toList!20 tree!30) lambda!184) lambda!185)))))

(declare-fun bs!1125 () Bool)

(assert (= bs!1125 d!4655))

(assert (=> bs!1125 m!8363))

(declare-fun m!8393 () Bool)

(assert (=> bs!1125 m!8393))

(assert (=> bs!1125 m!8393))

(declare-fun m!8395 () Bool)

(assert (=> bs!1125 m!8395))

(assert (=> bs!1125 m!8395))

(declare-fun m!8397 () Bool)

(assert (=> bs!1125 m!8397))

(assert (=> start!874 d!4655))

(declare-fun d!4657 () Bool)

(declare-fun lt!1294 () List!103)

(declare-fun isEmpty!100 (List!103) Bool)

(assert (=> d!4657 (not (isEmpty!100 lt!1294))))

(declare-fun e!3450 () List!103)

(assert (=> d!4657 (= lt!1294 e!3450)))

(declare-fun c!2268 () Bool)

(assert (=> d!4657 (= c!2268 (is-Leaf!92 tree!30))))

(assert (=> d!4657 (= (toList!20 tree!30) lt!1294)))

(declare-fun b!5883 () Bool)

(assert (=> b!5883 (= e!3450 (Cons!100 (value!1261 tree!30) Nil!101))))

(declare-fun b!5884 () Bool)

(declare-fun append!38 (List!103 List!103) List!103)

(assert (=> b!5884 (= e!3450 (append!38 (toList!20 (left!257 tree!30)) (toList!20 (right!260 tree!30))))))

(assert (= (and d!4657 c!2268) b!5883))

(assert (= (and d!4657 (not c!2268)) b!5884))

(declare-fun m!8399 () Bool)

(assert (=> d!4657 m!8399))

(assert (=> b!5884 m!8377))

(assert (=> b!5884 m!8379))

(assert (=> b!5884 m!8377))

(assert (=> b!5884 m!8379))

(declare-fun m!8401 () Bool)

(assert (=> b!5884 m!8401))

(assert (=> start!874 d!4657))

(declare-fun bs!1126 () Bool)

(declare-fun d!4659 () Bool)

(assert (= bs!1126 (and d!4659 b!5859)))

(declare-fun lambda!190 () Int)

(assert (=> bs!1126 (= lambda!190 lambda!178)))

(declare-fun bs!1127 () Bool)

(assert (= bs!1127 (and d!4659 d!4655)))

(assert (=> bs!1127 (= lambda!190 lambda!184)))

(declare-fun lambda!191 () Int)

(assert (=> bs!1126 (= lambda!191 lambda!177)))

(assert (=> bs!1127 (= lambda!191 lambda!185)))

(declare-fun fold!5 (Tree!20 Int) Balance!11)

(assert (=> d!4659 (= (isMatchedParallel!0 tree!30) (isBalanced!0 (fold!5 (map!118 tree!30 lambda!190) lambda!191)))))

(declare-fun bs!1128 () Bool)

(assert (= bs!1128 d!4659))

(declare-fun m!8403 () Bool)

(assert (=> bs!1128 m!8403))

(assert (=> bs!1128 m!8403))

(declare-fun m!8405 () Bool)

(assert (=> bs!1128 m!8405))

(assert (=> bs!1128 m!8405))

(declare-fun m!8407 () Bool)

(assert (=> bs!1128 m!8407))

(assert (=> start!874 d!4659))

(declare-fun d!4661 () Bool)

(declare-fun dynLambda!43 (Int) Balance!11)

(assert (=> d!4661 (= (inv!209 thiss!1015) (= (dynLambda!43 (x!3013 thiss!1015)) (dynLambda!43 (y!400 thiss!1015))))))

(declare-fun b_lambda!2667 () Bool)

(assert (=> (not b_lambda!2667) (not d!4661)))

(declare-fun t!901 () Bool)

(declare-fun tb!561 () Bool)

(assert (=> (and b!5862 (= (x!3013 thiss!1015) (x!3013 thiss!1015)) t!901) tb!561))

(declare-fun result!601 () Bool)

(assert (=> tb!561 (= result!601 true)))

(assert (=> d!4661 t!901))

(declare-fun b_and!983 () Bool)

(assert (= b_and!975 (and (=> t!901 result!601) b_and!983)))

(declare-fun t!903 () Bool)

(declare-fun tb!563 () Bool)

(assert (=> (and b!5862 (= (y!400 thiss!1015) (x!3013 thiss!1015)) t!903) tb!563))

(declare-fun result!603 () Bool)

(assert (=> tb!563 (= result!603 true)))

(assert (=> d!4661 t!903))

(declare-fun b_and!985 () Bool)

(assert (= b_and!977 (and (=> t!903 result!603) b_and!985)))

(declare-fun b_lambda!2669 () Bool)

(assert (=> (not b_lambda!2669) (not d!4661)))

(declare-fun t!905 () Bool)

(declare-fun tb!565 () Bool)

(assert (=> (and b!5862 (= (x!3013 thiss!1015) (y!400 thiss!1015)) t!905) tb!565))

(declare-fun result!605 () Bool)

(assert (=> tb!565 (= result!605 true)))

(assert (=> d!4661 t!905))

(declare-fun b_and!987 () Bool)

(assert (= b_and!983 (and (=> t!905 result!605) b_and!987)))

(declare-fun t!907 () Bool)

(declare-fun tb!567 () Bool)

(assert (=> (and b!5862 (= (y!400 thiss!1015) (y!400 thiss!1015)) t!907) tb!567))

(declare-fun result!607 () Bool)

(assert (=> tb!567 (= result!607 true)))

(assert (=> d!4661 t!907))

(declare-fun b_and!989 () Bool)

(assert (= b_and!985 (and (=> t!907 result!607) b_and!989)))

(declare-fun m!8409 () Bool)

(assert (=> d!4661 m!8409))

(declare-fun m!8411 () Bool)

(assert (=> d!4661 m!8411))

(assert (=> start!874 d!4661))

(declare-fun b_lambda!2671 () Bool)

(assert (= b_lambda!2669 (or (and b!5859 (= lambda!176 (y!400 thiss!1015))) (and b!5862 b_free!75 (= (x!3013 thiss!1015) (y!400 thiss!1015))) (and b!5862 b_free!77) b_lambda!2671)))

(declare-fun bs!1129 () Bool)

(declare-fun d!4663 () Bool)

(assert (= bs!1129 (and d!4663 b!5859)))

(assert (=> bs!1129 (= (dynLambda!43 lambda!176) (foldRight1!4 (map!119 (toList!20 tree!30) lambda!178) lambda!177))))

(assert (=> bs!1129 m!8363))

(assert (=> bs!1129 m!8363))

(assert (=> bs!1129 m!8389))

(assert (=> bs!1129 m!8389))

(declare-fun m!8413 () Bool)

(assert (=> bs!1129 m!8413))

(assert (=> (and b!5859 (= lambda!176 (y!400 thiss!1015)) d!4661) d!4663))

(declare-fun b_lambda!2673 () Bool)

(assert (= b_lambda!2667 (or (and b!5859 (= lambda!176 (x!3013 thiss!1015))) (and b!5862 b_free!75) (and b!5862 b_free!77 (= (y!400 thiss!1015) (x!3013 thiss!1015))) b_lambda!2673)))

(declare-fun bs!1130 () Bool)

(declare-fun d!4665 () Bool)

(assert (= bs!1130 (and d!4665 b!5859)))

(assert (=> bs!1130 (= (dynLambda!43 lambda!176) (foldRight1!4 (map!119 (toList!20 tree!30) lambda!178) lambda!177))))

(assert (=> bs!1130 m!8363))

(assert (=> bs!1130 m!8363))

(assert (=> bs!1130 m!8389))

(assert (=> bs!1130 m!8389))

(assert (=> bs!1130 m!8413))

(assert (=> (and b!5859 (= lambda!176 (x!3013 thiss!1015)) d!4661) d!4665))

(push 1)

(assert (not b!5876))

(assert (not d!4659))

(assert b_and!987)

(assert (not d!4653))

(assert (not bs!1130))

(assert (not b_next!105))

(assert b_and!989)

(assert (not b_lambda!2673))

(assert (not d!4657))

(assert (not b!5878))

(assert (not d!4655))

(assert (not b_next!103))

(assert (not b_lambda!2665))

(assert (not b!5884))

(assert (not b_lambda!2671))

(assert b_and!981)

(assert (not bs!1129))

(assert (not b!5877))

(assert (not b_next!107))

(check-sat)

(pop 1)

(push 1)

(assert b_and!987)

(assert (not b_next!105))

(assert b_and!989)

(assert (not b_next!103))

(assert b_and!981)

(assert (not b_next!107))

(check-sat)

(pop 1)

