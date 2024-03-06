; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!886 () Bool)

(assert start!886)

(declare-fun b!5898 () Bool)

(declare-fun b_free!81 () Bool)

(declare-fun b_next!109 () Bool)

(assert (=> b!5898 (= b_free!81 (not b_next!109))))

(declare-fun tp!257 () Bool)

(declare-fun b_and!991 () Bool)

(assert (=> b!5898 (= tp!257 b_and!991)))

(declare-fun b_free!83 () Bool)

(declare-fun b_next!111 () Bool)

(assert (=> b!5898 (= b_free!83 (not b_next!111))))

(declare-fun tp!255 () Bool)

(declare-fun b_and!993 () Bool)

(assert (=> b!5898 (= tp!255 b_and!993)))

(declare-fun b_free!85 () Bool)

(declare-fun b_next!113 () Bool)

(assert (=> start!886 (= b_free!85 (not b_next!113))))

(declare-fun tp!259 () Bool)

(declare-fun b_and!995 () Bool)

(assert (=> start!886 (= tp!259 b_and!995)))

(declare-fun b!5902 () Bool)

(declare-fun b_free!87 () Bool)

(declare-fun b_next!115 () Bool)

(assert (=> b!5902 (= b_free!87 (not b_next!115))))

(declare-fun tp!254 () Bool)

(declare-fun b_and!997 () Bool)

(assert (=> b!5902 (= tp!254 b_and!997)))

(declare-fun b_free!89 () Bool)

(declare-fun b_next!117 () Bool)

(assert (=> b!5902 (= b_free!89 (not b_next!117))))

(declare-fun tp!258 () Bool)

(declare-fun b_and!999 () Bool)

(assert (=> b!5902 (= tp!258 b_and!999)))

(declare-fun b_free!91 () Bool)

(declare-fun b_next!119 () Bool)

(assert (=> b!5902 (= b_free!91 (not b_next!119))))

(declare-fun tp!256 () Bool)

(declare-fun b_and!1001 () Bool)

(assert (=> b!5902 (= tp!256 b_and!1001)))

(declare-fun b!5897 () Bool)

(assert (=> b!5897 true))

(declare-datatypes () ((Balance!13 (Balance!14 (extraOpen!47 Int) (extraClose!47 Int)))))

(declare-datatypes () ((EqProof!6 (EqProof!7 (x!3042 Int) (y!401 Int)))))

(declare-fun thiss!1024 () EqProof!6)

(declare-fun b_next!121 () Bool)

(declare-fun lambda!224 () Int)

(assert (=> b!5898 (= b_next!109 (or (and b!5897 (= lambda!224 (x!3042 thiss!1024))) b_next!121))))

(declare-fun b_next!123 () Bool)

(assert (=> b!5898 (= b_next!111 (or (and b!5897 (= lambda!224 (y!401 thiss!1024))) b_next!123))))

(declare-fun b_next!125 () Bool)

(declare-datatypes () ((EqEvidence!6 (EqEvidence!7 (x!3043 Int) (y!402 Int) (evidence!70 Int)))))

(declare-fun thiss!1014 () EqEvidence!6)

(assert (=> b!5902 (= b_next!115 (or (and b!5897 (= lambda!224 (x!3043 thiss!1014))) b_next!125))))

(declare-fun b_next!127 () Bool)

(assert (=> b!5902 (= b_next!117 (or (and b!5897 (= lambda!224 (y!402 thiss!1014))) b_next!127))))

(assert (=> b!5897 true))

(declare-fun b_next!129 () Bool)

(declare-fun lambda!227 () Int)

(declare-fun proof!267 () Int)

(assert (=> start!886 (= b_next!113 (or (and b!5897 (= lambda!227 proof!267)) b_next!129))))

(declare-fun b_next!131 () Bool)

(assert (=> b!5902 (= b_next!119 (or (and b!5897 (= lambda!227 (evidence!70 thiss!1014))) b_next!131))))

(declare-fun bs!1132 () Bool)

(declare-fun b!5899 () Bool)

(assert (= bs!1132 (and b!5899 b!5897)))

(declare-fun lambda!228 () Int)

(assert (=> bs!1132 (not (= lambda!228 lambda!224))))

(assert (=> b!5899 true))

(declare-fun b_next!133 () Bool)

(assert (=> b!5898 (= b_next!121 (or (and b!5899 (= lambda!228 (x!3042 thiss!1024))) b_next!133))))

(declare-fun b_next!135 () Bool)

(assert (=> b!5898 (= b_next!123 (or (and b!5899 (= lambda!228 (y!401 thiss!1024))) b_next!135))))

(declare-fun b_next!137 () Bool)

(assert (=> b!5902 (= b_next!125 (or (and b!5899 (= lambda!228 (x!3043 thiss!1014))) b_next!137))))

(declare-fun b_next!139 () Bool)

(assert (=> b!5902 (= b_next!127 (or (and b!5899 (= lambda!228 (y!402 thiss!1014))) b_next!139))))

(declare-fun bs!1133 () Bool)

(declare-fun b!5901 () Bool)

(assert (= bs!1133 (and b!5901 b!5897)))

(declare-fun lambda!229 () Int)

(assert (=> bs!1133 (not (= lambda!229 lambda!227))))

(assert (=> b!5901 true))

(declare-fun b_next!141 () Bool)

(assert (=> start!886 (= b_next!129 (or (and b!5901 (= lambda!229 proof!267)) b_next!141))))

(declare-fun b_next!143 () Bool)

(assert (=> b!5902 (= b_next!131 (or (and b!5901 (= lambda!229 (evidence!70 thiss!1014))) b_next!143))))

(declare-fun res!1578 () Bool)

(declare-fun e!3459 () Bool)

(assert (=> b!5897 (=> (not res!1578) (not e!3459))))

(assert (=> b!5897 (= res!1578 (= thiss!1014 (EqEvidence!7 lambda!224 lambda!224 lambda!227)))))

(declare-fun e!3457 () Bool)

(assert (=> b!5898 (= e!3457 (and tp!257 tp!255))))

(declare-fun res!1579 () Bool)

(assert (=> b!5899 (=> (not res!1579) (not e!3459))))

(assert (=> b!5899 (= res!1579 (= thiss!1024 (EqProof!7 lambda!228 lambda!228)))))

(declare-fun b!5900 () Bool)

(declare-fun dynLambda!44 (Int) Bool)

(assert (=> b!5900 (= e!3459 (not (dynLambda!44 proof!267)))))

(declare-fun res!1580 () Bool)

(assert (=> b!5901 (=> (not res!1580) (not e!3459))))

(assert (=> b!5901 (= res!1580 (= proof!267 lambda!229))))

(declare-fun res!1581 () Bool)

(assert (=> start!886 (=> (not res!1581) (not e!3459))))

(declare-datatypes () ((ProofOps!16 (ProofOps!17 (prop!110 Bool)))))

(declare-fun thiss!1009 () ProofOps!16)

(declare-datatypes () ((Parenthesis!8 (CloseParenthesis!7) (OpenParenthesis!7))))

(declare-datatypes () ((Tree!21 (Branch!12 (left!261 Tree!21) (right!264 Tree!21)) (Leaf!94 (value!1263 Parenthesis!8)))))

(declare-fun tree!30 () Tree!21)

(declare-datatypes () ((List!105 (Nil!103) (Cons!102 (head!320 Parenthesis!8) (tail!332 List!105)))))

(declare-fun isMatchedHybid!0 (List!105) Bool)

(declare-fun toList!22 (Tree!21) List!105)

(declare-fun isMatchedParallel!0 (Tree!21) Bool)

(assert (=> start!886 (= res!1581 (= thiss!1009 (ProofOps!17 (= (isMatchedHybid!0 (toList!22 tree!30)) (isMatchedParallel!0 tree!30)))))))

(assert (=> start!886 e!3459))

(declare-fun inv!210 (EqProof!6) Bool)

(assert (=> start!886 (and (inv!210 thiss!1024) e!3457)))

(assert (=> start!886 true))

(assert (=> start!886 tp!259))

(declare-fun e!3458 () Bool)

(declare-fun inv!211 (EqEvidence!6) Bool)

(assert (=> start!886 (and (inv!211 thiss!1014) e!3458)))

(assert (=> b!5902 (= e!3458 (and tp!254 tp!258 tp!256))))

(assert (= (and start!886 res!1581) b!5897))

(assert (= (and b!5897 res!1578) b!5899))

(assert (= (and b!5899 res!1579) b!5901))

(assert (= (and b!5901 res!1580) b!5900))

(assert (= start!886 b!5898))

(assert (= start!886 b!5902))

(declare-fun b_lambda!2675 () Bool)

(assert (=> (not b_lambda!2675) (not b!5900)))

(declare-fun t!909 () Bool)

(declare-fun tb!569 () Bool)

(assert (=> (and start!886 (= proof!267 proof!267) t!909) tb!569))

(declare-fun result!609 () Bool)

(assert (=> tb!569 (= result!609 true)))

(assert (=> b!5900 t!909))

(declare-fun b_and!1003 () Bool)

(assert (= b_and!995 (and (=> t!909 result!609) b_and!1003)))

(declare-fun t!911 () Bool)

(declare-fun tb!571 () Bool)

(assert (=> (and b!5902 (= (evidence!70 thiss!1014) proof!267) t!911) tb!571))

(declare-fun result!611 () Bool)

(assert (=> tb!571 (= result!611 true)))

(assert (=> b!5900 t!911))

(declare-fun b_and!1005 () Bool)

(assert (= b_and!1001 (and (=> t!911 result!611) b_and!1005)))

(declare-fun m!8415 () Bool)

(assert (=> b!5900 m!8415))

(declare-fun m!8417 () Bool)

(assert (=> start!886 m!8417))

(declare-fun m!8419 () Bool)

(assert (=> start!886 m!8419))

(declare-fun m!8421 () Bool)

(assert (=> start!886 m!8421))

(declare-fun m!8423 () Bool)

(assert (=> start!886 m!8423))

(assert (=> start!886 m!8417))

(declare-fun m!8425 () Bool)

(assert (=> start!886 m!8425))

(push 1)

(assert (not b_next!135))

(assert (not b_next!139))

(assert (not b_next!141))

(assert (not b_lambda!2675))

(assert b_and!997)

(assert (not b_next!143))

(assert b_and!1005)

(assert b_and!999)

(assert (not b_next!137))

(assert b_and!1003)

(assert b_and!991)

(assert b_and!993)

(assert (not b_next!133))

(assert (not start!886))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!135))

(assert (not b_next!139))

(assert (not b_next!141))

(assert b_and!997)

(assert (not b_next!143))

(assert b_and!1005)

(assert b_and!999)

(assert (not b_next!137))

(assert b_and!1003)

(assert b_and!991)

(assert b_and!993)

(assert (not b_next!133))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2677 () Bool)

(assert (= b_lambda!2675 (or (and b!5897 (= lambda!227 proof!267)) (and b!5901 (= lambda!229 proof!267)) (and start!886 b_free!85) (and b!5902 b_free!91 (= (evidence!70 thiss!1014) proof!267)) b_lambda!2677)))

(declare-fun bs!1134 () Bool)

(declare-fun d!4667 () Bool)

(assert (= bs!1134 (and d!4667 b!5897)))

(declare-fun lambda!226 () Int)

(declare-fun toList_map_commutativity!0 (Tree!21 Int) Bool)

(assert (=> bs!1134 (= (dynLambda!44 lambda!227) (toList_map_commutativity!0 tree!30 lambda!226))))

(declare-fun m!8427 () Bool)

(assert (=> bs!1134 m!8427))

(assert (=> (and b!5897 (= lambda!227 proof!267) b!5900) d!4667))

(declare-fun bs!1135 () Bool)

(declare-fun d!4669 () Bool)

(assert (= bs!1135 (and d!4669 b!5901)))

(declare-datatypes () ((Tree!22 (Branch!13 (left!262 Tree!22) (right!265 Tree!22)) (Leaf!95 (value!1264 Balance!13)))))

(declare-fun fold_foldRight1_equivalence!0 (Tree!22) Bool)

(declare-fun map!120 (Tree!21 Int) Tree!22)

(assert (=> bs!1135 (= (dynLambda!44 lambda!229) (fold_foldRight1_equivalence!0 (map!120 tree!30 lambda!226)))))

(declare-fun m!8429 () Bool)

(assert (=> bs!1135 m!8429))

(assert (=> bs!1135 m!8429))

(declare-fun m!8431 () Bool)

(assert (=> bs!1135 m!8431))

(assert (=> (and b!5901 (= lambda!229 proof!267) b!5900) d!4669))

(push 1)

(assert (not b_next!135))

(assert (not b_next!139))

(assert (not b_next!141))

(assert b_and!997)

(assert (not b_next!143))

(assert b_and!1005)

(assert b_and!999)

(assert (not b_next!137))

(assert (not bs!1134))

(assert b_and!1003)

(assert b_and!991)

(assert b_and!993)

(assert (not b_next!133))

(assert (not b_lambda!2677))

(assert (not start!886))

(assert (not bs!1135))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!135))

(assert (not b_next!139))

(assert (not b_next!141))

(assert b_and!997)

(assert (not b_next!143))

(assert b_and!1005)

(assert b_and!999)

(assert (not b_next!137))

(assert b_and!1003)

(assert b_and!991)

(assert b_and!993)

(assert (not b_next!133))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4671 () Bool)

(declare-fun lt!1297 () List!105)

(declare-fun isEmpty!101 (List!105) Bool)

(assert (=> d!4671 (not (isEmpty!101 lt!1297))))

(declare-fun e!3462 () List!105)

(assert (=> d!4671 (= lt!1297 e!3462)))

(declare-fun c!2271 () Bool)

(assert (=> d!4671 (= c!2271 (is-Leaf!94 tree!30))))

(assert (=> d!4671 (= (toList!22 tree!30) lt!1297)))

(declare-fun b!5911 () Bool)

(assert (=> b!5911 (= e!3462 (Cons!102 (value!1263 tree!30) Nil!103))))

(declare-fun b!5912 () Bool)

(declare-fun append!39 (List!105 List!105) List!105)

(assert (=> b!5912 (= e!3462 (append!39 (toList!22 (left!261 tree!30)) (toList!22 (right!264 tree!30))))))

(assert (= (and d!4671 c!2271) b!5911))

(assert (= (and d!4671 (not c!2271)) b!5912))

(declare-fun m!8433 () Bool)

(assert (=> d!4671 m!8433))

(declare-fun m!8435 () Bool)

(assert (=> b!5912 m!8435))

(declare-fun m!8437 () Bool)

(assert (=> b!5912 m!8437))

(assert (=> b!5912 m!8435))

(assert (=> b!5912 m!8437))

(declare-fun m!8439 () Bool)

(assert (=> b!5912 m!8439))

(assert (=> start!886 d!4671))

(declare-fun d!4673 () Bool)

(declare-fun dynLambda!45 (Int) Balance!13)

(assert (=> d!4673 (= (inv!210 thiss!1024) (= (dynLambda!45 (x!3042 thiss!1024)) (dynLambda!45 (y!401 thiss!1024))))))

(declare-fun b_lambda!2679 () Bool)

(assert (=> (not b_lambda!2679) (not d!4673)))

(declare-fun t!913 () Bool)

(declare-fun tb!573 () Bool)

(assert (=> (and b!5898 (= (x!3042 thiss!1024) (x!3042 thiss!1024)) t!913) tb!573))

(declare-fun result!613 () Bool)

(assert (=> tb!573 (= result!613 true)))

(assert (=> d!4673 t!913))

(declare-fun b_and!1007 () Bool)

(assert (= b_and!991 (and (=> t!913 result!613) b_and!1007)))

(declare-fun t!915 () Bool)

(declare-fun tb!575 () Bool)

(assert (=> (and b!5898 (= (y!401 thiss!1024) (x!3042 thiss!1024)) t!915) tb!575))

(declare-fun result!615 () Bool)

(assert (=> tb!575 (= result!615 true)))

(assert (=> d!4673 t!915))

(declare-fun b_and!1009 () Bool)

(assert (= b_and!993 (and (=> t!915 result!615) b_and!1009)))

(declare-fun t!917 () Bool)

(declare-fun tb!577 () Bool)

(assert (=> (and b!5902 (= (x!3043 thiss!1014) (x!3042 thiss!1024)) t!917) tb!577))

(declare-fun result!617 () Bool)

(assert (=> tb!577 (= result!617 true)))

(assert (=> d!4673 t!917))

(declare-fun b_and!1011 () Bool)

(assert (= b_and!997 (and (=> t!917 result!617) b_and!1011)))

(declare-fun tb!579 () Bool)

(declare-fun t!919 () Bool)

(assert (=> (and b!5902 (= (y!402 thiss!1014) (x!3042 thiss!1024)) t!919) tb!579))

(declare-fun result!619 () Bool)

(assert (=> tb!579 (= result!619 true)))

(assert (=> d!4673 t!919))

(declare-fun b_and!1013 () Bool)

(assert (= b_and!999 (and (=> t!919 result!619) b_and!1013)))

(declare-fun b_lambda!2681 () Bool)

(assert (=> (not b_lambda!2681) (not d!4673)))

(declare-fun t!921 () Bool)

(declare-fun tb!581 () Bool)

(assert (=> (and b!5898 (= (x!3042 thiss!1024) (y!401 thiss!1024)) t!921) tb!581))

(declare-fun result!621 () Bool)

(assert (=> tb!581 (= result!621 true)))

(assert (=> d!4673 t!921))

(declare-fun b_and!1015 () Bool)

(assert (= b_and!1007 (and (=> t!921 result!621) b_and!1015)))

(declare-fun t!923 () Bool)

(declare-fun tb!583 () Bool)

(assert (=> (and b!5898 (= (y!401 thiss!1024) (y!401 thiss!1024)) t!923) tb!583))

(declare-fun result!623 () Bool)

(assert (=> tb!583 (= result!623 true)))

(assert (=> d!4673 t!923))

(declare-fun b_and!1017 () Bool)

(assert (= b_and!1009 (and (=> t!923 result!623) b_and!1017)))

(declare-fun t!925 () Bool)

(declare-fun tb!585 () Bool)

(assert (=> (and b!5902 (= (x!3043 thiss!1014) (y!401 thiss!1024)) t!925) tb!585))

(declare-fun result!625 () Bool)

(assert (=> tb!585 (= result!625 true)))

(assert (=> d!4673 t!925))

(declare-fun b_and!1019 () Bool)

(assert (= b_and!1011 (and (=> t!925 result!625) b_and!1019)))

(declare-fun t!927 () Bool)

(declare-fun tb!587 () Bool)

(assert (=> (and b!5902 (= (y!402 thiss!1014) (y!401 thiss!1024)) t!927) tb!587))

(declare-fun result!627 () Bool)

(assert (=> tb!587 (= result!627 true)))

(assert (=> d!4673 t!927))

(declare-fun b_and!1021 () Bool)

(assert (= b_and!1013 (and (=> t!927 result!627) b_and!1021)))

(declare-fun m!8441 () Bool)

(assert (=> d!4673 m!8441))

(declare-fun m!8443 () Bool)

(assert (=> d!4673 m!8443))

(assert (=> start!886 d!4673))

(declare-fun bs!1136 () Bool)

(declare-fun d!4675 () Bool)

(assert (= bs!1136 (and d!4675 b!5897)))

(declare-fun lambda!234 () Int)

(assert (=> bs!1136 (= lambda!234 lambda!226)))

(declare-fun lambda!235 () Int)

(declare-fun lambda!225 () Int)

(assert (=> bs!1136 (= lambda!235 lambda!225)))

(declare-fun isBalanced!0 (Balance!13) Bool)

(declare-datatypes () ((List!106 (Nil!104) (Cons!103 (head!321 Balance!13) (tail!333 List!106)))))

(declare-fun foldRight1!5 (List!106 Int) Balance!13)

(declare-fun map!121 (List!105 Int) List!106)

(assert (=> d!4675 (= (isMatchedHybid!0 (toList!22 tree!30)) (isBalanced!0 (foldRight1!5 (map!121 (toList!22 tree!30) lambda!234) lambda!235)))))

(declare-fun bs!1137 () Bool)

(assert (= bs!1137 d!4675))

(assert (=> bs!1137 m!8417))

(declare-fun m!8445 () Bool)

(assert (=> bs!1137 m!8445))

(assert (=> bs!1137 m!8445))

(declare-fun m!8447 () Bool)

(assert (=> bs!1137 m!8447))

(assert (=> bs!1137 m!8447))

(declare-fun m!8449 () Bool)

(assert (=> bs!1137 m!8449))

(assert (=> start!886 d!4675))

(declare-fun bs!1138 () Bool)

(declare-fun d!4677 () Bool)

(assert (= bs!1138 (and d!4677 b!5897)))

(declare-fun lambda!240 () Int)

(assert (=> bs!1138 (= lambda!240 lambda!226)))

(declare-fun bs!1139 () Bool)

(assert (= bs!1139 (and d!4677 d!4675)))

(assert (=> bs!1139 (= lambda!240 lambda!234)))

(declare-fun lambda!241 () Int)

(assert (=> bs!1138 (= lambda!241 lambda!225)))

(assert (=> bs!1139 (= lambda!241 lambda!235)))

(declare-fun fold!6 (Tree!22 Int) Balance!13)

(assert (=> d!4677 (= (isMatchedParallel!0 tree!30) (isBalanced!0 (fold!6 (map!120 tree!30 lambda!240) lambda!241)))))

(declare-fun bs!1140 () Bool)

(assert (= bs!1140 d!4677))

(declare-fun m!8451 () Bool)

(assert (=> bs!1140 m!8451))

(assert (=> bs!1140 m!8451))

(declare-fun m!8453 () Bool)

(assert (=> bs!1140 m!8453))

(assert (=> bs!1140 m!8453))

(declare-fun m!8455 () Bool)

(assert (=> bs!1140 m!8455))

(assert (=> start!886 d!4677))

(declare-fun d!4679 () Bool)

(declare-fun res!1585 () Bool)

(declare-fun e!3465 () Bool)

(assert (=> d!4679 (=> (not res!1585) (not e!3465))))

(assert (=> d!4679 (= res!1585 (= (dynLambda!45 (x!3043 thiss!1014)) (dynLambda!45 (y!402 thiss!1014))))))

(assert (=> d!4679 (= (inv!211 thiss!1014) e!3465)))

(declare-fun b!5915 () Bool)

(assert (=> b!5915 (= e!3465 (dynLambda!44 (evidence!70 thiss!1014)))))

(assert (= (and d!4679 res!1585) b!5915))

(declare-fun b_lambda!2683 () Bool)

(assert (=> (not b_lambda!2683) (not d!4679)))

(declare-fun tb!589 () Bool)

(declare-fun t!929 () Bool)

(assert (=> (and b!5898 (= (x!3042 thiss!1024) (x!3043 thiss!1014)) t!929) tb!589))

(declare-fun result!629 () Bool)

(assert (=> tb!589 (= result!629 true)))

(assert (=> d!4679 t!929))

(declare-fun b_and!1023 () Bool)

(assert (= b_and!1015 (and (=> t!929 result!629) b_and!1023)))

(declare-fun tb!591 () Bool)

(declare-fun t!931 () Bool)

(assert (=> (and b!5898 (= (y!401 thiss!1024) (x!3043 thiss!1014)) t!931) tb!591))

(declare-fun result!631 () Bool)

(assert (=> tb!591 (= result!631 true)))

(assert (=> d!4679 t!931))

(declare-fun b_and!1025 () Bool)

(assert (= b_and!1017 (and (=> t!931 result!631) b_and!1025)))

(declare-fun t!933 () Bool)

(declare-fun tb!593 () Bool)

(assert (=> (and b!5902 (= (x!3043 thiss!1014) (x!3043 thiss!1014)) t!933) tb!593))

(declare-fun result!633 () Bool)

(assert (=> tb!593 (= result!633 true)))

(assert (=> d!4679 t!933))

(declare-fun b_and!1027 () Bool)

(assert (= b_and!1019 (and (=> t!933 result!633) b_and!1027)))

(declare-fun t!935 () Bool)

(declare-fun tb!595 () Bool)

(assert (=> (and b!5902 (= (y!402 thiss!1014) (x!3043 thiss!1014)) t!935) tb!595))

(declare-fun result!635 () Bool)

(assert (=> tb!595 (= result!635 true)))

(assert (=> d!4679 t!935))

(declare-fun b_and!1029 () Bool)

(assert (= b_and!1021 (and (=> t!935 result!635) b_and!1029)))

(declare-fun b_lambda!2685 () Bool)

(assert (=> (not b_lambda!2685) (not d!4679)))

(declare-fun tb!597 () Bool)

(declare-fun t!937 () Bool)

(assert (=> (and b!5898 (= (x!3042 thiss!1024) (y!402 thiss!1014)) t!937) tb!597))

(declare-fun result!637 () Bool)

(assert (=> tb!597 (= result!637 true)))

(assert (=> d!4679 t!937))

(declare-fun b_and!1031 () Bool)

(assert (= b_and!1023 (and (=> t!937 result!637) b_and!1031)))

(declare-fun tb!599 () Bool)

(declare-fun t!939 () Bool)

(assert (=> (and b!5898 (= (y!401 thiss!1024) (y!402 thiss!1014)) t!939) tb!599))

(declare-fun result!639 () Bool)

(assert (=> tb!599 (= result!639 true)))

(assert (=> d!4679 t!939))

(declare-fun b_and!1033 () Bool)

(assert (= b_and!1025 (and (=> t!939 result!639) b_and!1033)))

(declare-fun t!941 () Bool)

(declare-fun tb!601 () Bool)

(assert (=> (and b!5902 (= (x!3043 thiss!1014) (y!402 thiss!1014)) t!941) tb!601))

(declare-fun result!641 () Bool)

(assert (=> tb!601 (= result!641 true)))

(assert (=> d!4679 t!941))

(declare-fun b_and!1035 () Bool)

(assert (= b_and!1027 (and (=> t!941 result!641) b_and!1035)))

(declare-fun t!943 () Bool)

(declare-fun tb!603 () Bool)

(assert (=> (and b!5902 (= (y!402 thiss!1014) (y!402 thiss!1014)) t!943) tb!603))

(declare-fun result!643 () Bool)

(assert (=> tb!603 (= result!643 true)))

(assert (=> d!4679 t!943))

(declare-fun b_and!1037 () Bool)

(assert (= b_and!1029 (and (=> t!943 result!643) b_and!1037)))

(declare-fun b_lambda!2687 () Bool)

(assert (=> (not b_lambda!2687) (not b!5915)))

(declare-fun t!945 () Bool)

(declare-fun tb!605 () Bool)

(assert (=> (and start!886 (= proof!267 (evidence!70 thiss!1014)) t!945) tb!605))

(declare-fun result!645 () Bool)

(assert (=> tb!605 (= result!645 true)))

(assert (=> b!5915 t!945))

(declare-fun b_and!1039 () Bool)

(assert (= b_and!1003 (and (=> t!945 result!645) b_and!1039)))

(declare-fun t!947 () Bool)

(declare-fun tb!607 () Bool)

(assert (=> (and b!5902 (= (evidence!70 thiss!1014) (evidence!70 thiss!1014)) t!947) tb!607))

(declare-fun result!647 () Bool)

(assert (=> tb!607 (= result!647 true)))

(assert (=> b!5915 t!947))

(declare-fun b_and!1041 () Bool)

(assert (= b_and!1005 (and (=> t!947 result!647) b_and!1041)))

(declare-fun m!8457 () Bool)

(assert (=> d!4679 m!8457))

(declare-fun m!8459 () Bool)

(assert (=> d!4679 m!8459))

(declare-fun m!8461 () Bool)

(assert (=> b!5915 m!8461))

(assert (=> start!886 d!4679))

(declare-fun bs!1141 () Bool)

(declare-fun d!4681 () Bool)

(assert (= bs!1141 (and d!4681 b!5897)))

(declare-fun lambda!244 () Int)

(assert (=> bs!1141 (= lambda!244 lambda!225)))

(declare-fun bs!1142 () Bool)

(assert (= bs!1142 (and d!4681 d!4675)))

(assert (=> bs!1142 (= lambda!244 lambda!235)))

(declare-fun bs!1143 () Bool)

(assert (= bs!1143 (and d!4681 d!4677)))

(assert (=> bs!1143 (= lambda!244 lambda!241)))

(declare-fun because!2 (ProofOps!16 Bool) Bool)

(declare-fun toList!23 (Tree!22) List!106)

(assert (=> d!4681 (because!2 (ProofOps!17 (= (fold!6 (map!120 tree!30 lambda!226) lambda!244) (foldRight1!5 (toList!23 (map!120 tree!30 lambda!226)) lambda!244))) true)))

(assert (=> d!4681 (= (fold!6 (map!120 tree!30 lambda!226) lambda!244) (foldRight1!5 (toList!23 (map!120 tree!30 lambda!226)) lambda!244))))

(assert (=> d!4681 (= (fold_foldRight1_equivalence!0 (map!120 tree!30 lambda!226)) true)))

(declare-fun bs!1144 () Bool)

(assert (= bs!1144 d!4681))

(assert (=> bs!1144 m!8429))

(declare-fun m!8463 () Bool)

(assert (=> bs!1144 m!8463))

(assert (=> bs!1144 m!8429))

(declare-fun m!8465 () Bool)

(assert (=> bs!1144 m!8465))

(assert (=> bs!1144 m!8465))

(declare-fun m!8467 () Bool)

(assert (=> bs!1144 m!8467))

(declare-fun m!8469 () Bool)

(assert (=> bs!1144 m!8469))

(assert (=> bs!1135 d!4681))

(declare-fun b!5921 () Bool)

(assert (=> b!5921 true))

(declare-fun lambda!249 () Int)

(declare-fun order!31 () Int)

(declare-fun order!29 () Int)

(declare-fun dynLambda!46 (Int Int) Int)

(declare-fun dynLambda!47 (Int Int) Int)

(assert (=> b!5921 (< (dynLambda!46 order!29 lambda!226) (dynLambda!47 order!31 lambda!249))))

(assert (=> b!5921 true))

(declare-fun lambda!250 () Int)

(assert (=> b!5921 (= (= (right!264 tree!30) (left!261 tree!30)) (= lambda!250 lambda!249))))

(assert (=> b!5921 true))

(assert (=> b!5921 (< (dynLambda!46 order!29 lambda!226) (dynLambda!47 order!31 lambda!250))))

(assert (=> b!5921 true))

(declare-fun e!3484 () Tree!22)

(declare-datatypes () ((tuple2!28 (tuple2!29 (_1!14 Tree!22) (_2!14 Tree!22)))))

(declare-fun lt!1300 () tuple2!28)

(assert (=> b!5921 (= e!3484 (Branch!13 (_1!14 lt!1300) (_2!14 lt!1300)))))

(declare-fun dynLambda!48 (Int) Tree!22)

(assert (=> b!5921 (= lt!1300 (tuple2!29 (dynLambda!48 lambda!249) (dynLambda!48 lambda!250)))))

(declare-fun d!4683 () Bool)

(declare-fun c!2274 () Bool)

(assert (=> d!4683 (= c!2274 (is-Leaf!94 tree!30))))

(assert (=> d!4683 (= (map!120 tree!30 lambda!226) e!3484)))

(declare-fun b!5920 () Bool)

(declare-fun dynLambda!49 (Int Parenthesis!8) Balance!13)

(assert (=> b!5920 (= e!3484 (Leaf!95 (dynLambda!49 lambda!226 (value!1263 tree!30))))))

(assert (= (and d!4683 c!2274) b!5920))

(assert (= (and d!4683 (not c!2274)) b!5921))

(declare-fun b_lambda!2689 () Bool)

(assert (=> (not b_lambda!2689) (not b!5921)))

(declare-fun b_lambda!2691 () Bool)

(assert (=> (not b_lambda!2691) (not b!5921)))

(declare-fun b_lambda!2693 () Bool)

(assert (=> (not b_lambda!2693) (not b!5920)))

(declare-fun m!8471 () Bool)

(assert (=> b!5921 m!8471))

(declare-fun m!8473 () Bool)

(assert (=> b!5921 m!8473))

(declare-fun m!8475 () Bool)

(assert (=> b!5920 m!8475))

(assert (=> bs!1135 d!4683))

(declare-fun d!4685 () Bool)

(declare-fun e!3490 () Bool)

(assert (=> d!4685 (because!2 (ProofOps!17 (= (toList!23 (map!120 tree!30 lambda!226)) (map!121 (toList!22 tree!30) lambda!226))) e!3490)))

(declare-fun c!2277 () Bool)

(assert (=> d!4685 (= c!2277 (is-Leaf!94 tree!30))))

(assert (=> d!4685 (= (toList_map_commutativity!0 tree!30 lambda!226) true)))

(declare-fun b!5936 () Bool)

(declare-fun res!1596 () Bool)

(declare-fun e!3489 () Bool)

(assert (=> b!5936 (=> (not res!1596) (not e!3489))))

(assert (=> b!5936 (= res!1596 (toList_map_commutativity!0 (right!264 tree!30) lambda!226))))

(declare-fun b!5934 () Bool)

(assert (=> b!5934 (= e!3490 true)))

(declare-fun b!5937 () Bool)

(declare-fun map_append!0 (List!105 List!105 Int) Bool)

(assert (=> b!5937 (= e!3489 (map_append!0 (toList!22 (left!261 tree!30)) (toList!22 (right!264 tree!30)) lambda!226))))

(declare-fun b!5935 () Bool)

(assert (=> b!5935 (= e!3490 e!3489)))

(declare-fun res!1597 () Bool)

(assert (=> b!5935 (=> (not res!1597) (not e!3489))))

(assert (=> b!5935 (= res!1597 (toList_map_commutativity!0 (left!261 tree!30) lambda!226))))

(assert (= (and b!5935 res!1597) b!5936))

(assert (= (and b!5936 res!1596) b!5937))

(assert (= (and d!4685 c!2277) b!5934))

(assert (= (and d!4685 (not c!2277)) b!5935))

(assert (=> d!4685 m!8429))

(assert (=> d!4685 m!8465))

(assert (=> d!4685 m!8417))

(declare-fun m!8477 () Bool)

(assert (=> d!4685 m!8477))

(assert (=> d!4685 m!8429))

(declare-fun m!8479 () Bool)

(assert (=> d!4685 m!8479))

(assert (=> d!4685 m!8417))

(declare-fun m!8481 () Bool)

(assert (=> b!5936 m!8481))

(assert (=> b!5937 m!8435))

(assert (=> b!5937 m!8437))

(assert (=> b!5937 m!8435))

(assert (=> b!5937 m!8437))

(declare-fun m!8483 () Bool)

(assert (=> b!5937 m!8483))

(declare-fun m!8485 () Bool)

(assert (=> b!5935 m!8485))

(assert (=> bs!1134 d!4685))

(declare-fun b_lambda!2695 () Bool)

(assert (= b_lambda!2681 (or (and b!5899 (= lambda!228 (y!401 thiss!1024))) (and b!5898 b_free!83) (and b!5902 b_free!87 (= (x!3043 thiss!1014) (y!401 thiss!1024))) (and b!5902 b_free!89 (= (y!402 thiss!1014) (y!401 thiss!1024))) (and b!5898 b_free!81 (= (x!3042 thiss!1024) (y!401 thiss!1024))) (and b!5897 (= lambda!224 (y!401 thiss!1024))) b_lambda!2695)))

(declare-fun bs!1145 () Bool)

(declare-fun d!4687 () Bool)

(assert (= bs!1145 (and d!4687 b!5897)))

(assert (=> bs!1145 (= (dynLambda!45 lambda!224) (foldRight1!5 (map!121 (toList!22 tree!30) lambda!226) lambda!225))))

(assert (=> bs!1145 m!8417))

(assert (=> bs!1145 m!8417))

(assert (=> bs!1145 m!8477))

(assert (=> bs!1145 m!8477))

(declare-fun m!8487 () Bool)

(assert (=> bs!1145 m!8487))

(assert (=> (and b!5897 (= lambda!224 (y!401 thiss!1024)) d!4673) d!4687))

(declare-fun bs!1146 () Bool)

(declare-fun d!4689 () Bool)

(assert (= bs!1146 (and d!4689 b!5899)))

(assert (=> bs!1146 (= (dynLambda!45 lambda!228) (foldRight1!5 (toList!23 (map!120 tree!30 lambda!226)) lambda!225))))

(assert (=> bs!1146 m!8429))

(assert (=> bs!1146 m!8429))

(assert (=> bs!1146 m!8465))

(assert (=> bs!1146 m!8465))

(declare-fun m!8489 () Bool)

(assert (=> bs!1146 m!8489))

(assert (=> (and b!5899 (= lambda!228 (y!401 thiss!1024)) d!4673) d!4689))

(declare-fun b_lambda!2697 () Bool)

(assert (= b_lambda!2685 (or (and b!5898 b_free!81 (= (x!3042 thiss!1024) (y!402 thiss!1014))) (and b!5898 b_free!83 (= (y!401 thiss!1024) (y!402 thiss!1014))) (and b!5902 b_free!89) (and b!5899 (= lambda!228 (y!402 thiss!1014))) (and b!5897 (= lambda!224 (y!402 thiss!1014))) (and b!5902 b_free!87 (= (x!3043 thiss!1014) (y!402 thiss!1014))) b_lambda!2697)))

(declare-fun bs!1147 () Bool)

(declare-fun d!4691 () Bool)

(assert (= bs!1147 (and d!4691 b!5899)))

(assert (=> bs!1147 (= (dynLambda!45 lambda!228) (foldRight1!5 (toList!23 (map!120 tree!30 lambda!226)) lambda!225))))

(assert (=> bs!1147 m!8429))

(assert (=> bs!1147 m!8429))

(assert (=> bs!1147 m!8465))

(assert (=> bs!1147 m!8465))

(assert (=> bs!1147 m!8489))

(assert (=> (and b!5899 (= lambda!228 (y!402 thiss!1014)) d!4679) d!4691))

(declare-fun bs!1148 () Bool)

(declare-fun d!4693 () Bool)

(assert (= bs!1148 (and d!4693 b!5897)))

(assert (=> bs!1148 (= (dynLambda!45 lambda!224) (foldRight1!5 (map!121 (toList!22 tree!30) lambda!226) lambda!225))))

(assert (=> bs!1148 m!8417))

(assert (=> bs!1148 m!8417))

(assert (=> bs!1148 m!8477))

(assert (=> bs!1148 m!8477))

(assert (=> bs!1148 m!8487))

(assert (=> (and b!5897 (= lambda!224 (y!402 thiss!1014)) d!4679) d!4693))

(declare-fun b_lambda!2699 () Bool)

(assert (= b_lambda!2679 (or (and b!5897 (= lambda!224 (x!3042 thiss!1024))) (and b!5902 b_free!89 (= (y!402 thiss!1014) (x!3042 thiss!1024))) (and b!5898 b_free!83 (= (y!401 thiss!1024) (x!3042 thiss!1024))) (and b!5899 (= lambda!228 (x!3042 thiss!1024))) (and b!5898 b_free!81) (and b!5902 b_free!87 (= (x!3043 thiss!1014) (x!3042 thiss!1024))) b_lambda!2699)))

(declare-fun bs!1149 () Bool)

(declare-fun d!4695 () Bool)

(assert (= bs!1149 (and d!4695 b!5897)))

(assert (=> bs!1149 (= (dynLambda!45 lambda!224) (foldRight1!5 (map!121 (toList!22 tree!30) lambda!226) lambda!225))))

(assert (=> bs!1149 m!8417))

(assert (=> bs!1149 m!8417))

(assert (=> bs!1149 m!8477))

(assert (=> bs!1149 m!8477))

(assert (=> bs!1149 m!8487))

(assert (=> (and b!5897 (= lambda!224 (x!3042 thiss!1024)) d!4673) d!4695))

(declare-fun bs!1150 () Bool)

(declare-fun d!4697 () Bool)

(assert (= bs!1150 (and d!4697 b!5899)))

(assert (=> bs!1150 (= (dynLambda!45 lambda!228) (foldRight1!5 (toList!23 (map!120 tree!30 lambda!226)) lambda!225))))

(assert (=> bs!1150 m!8429))

(assert (=> bs!1150 m!8429))

(assert (=> bs!1150 m!8465))

(assert (=> bs!1150 m!8465))

(assert (=> bs!1150 m!8489))

(assert (=> (and b!5899 (= lambda!228 (x!3042 thiss!1024)) d!4673) d!4697))

(declare-fun b_lambda!2701 () Bool)

(assert (= b_lambda!2687 (or (and b!5897 (= lambda!227 (evidence!70 thiss!1014))) (and b!5901 (= lambda!229 (evidence!70 thiss!1014))) (and start!886 b_free!85 (= proof!267 (evidence!70 thiss!1014))) (and b!5902 b_free!91) b_lambda!2701)))

(declare-fun bs!1151 () Bool)

(declare-fun d!4699 () Bool)

(assert (= bs!1151 (and d!4699 b!5897)))

(assert (=> bs!1151 (= (dynLambda!44 lambda!227) (toList_map_commutativity!0 tree!30 lambda!226))))

(assert (=> bs!1151 m!8427))

(assert (=> (and b!5897 (= lambda!227 (evidence!70 thiss!1014)) b!5915) d!4699))

(declare-fun bs!1152 () Bool)

(declare-fun d!4701 () Bool)

(assert (= bs!1152 (and d!4701 b!5901)))

(assert (=> bs!1152 (= (dynLambda!44 lambda!229) (fold_foldRight1_equivalence!0 (map!120 tree!30 lambda!226)))))

(assert (=> bs!1152 m!8429))

(assert (=> bs!1152 m!8429))

(assert (=> bs!1152 m!8431))

(assert (=> (and b!5901 (= lambda!229 (evidence!70 thiss!1014)) b!5915) d!4701))

(declare-fun b_lambda!2703 () Bool)

(assert (= b_lambda!2683 (or (and b!5902 b_free!87) (and b!5902 b_free!89 (= (y!402 thiss!1014) (x!3043 thiss!1014))) (and b!5898 b_free!81 (= (x!3042 thiss!1024) (x!3043 thiss!1014))) (and b!5899 (= lambda!228 (x!3043 thiss!1014))) (and b!5897 (= lambda!224 (x!3043 thiss!1014))) (and b!5898 b_free!83 (= (y!401 thiss!1024) (x!3043 thiss!1014))) b_lambda!2703)))

(declare-fun bs!1153 () Bool)

(declare-fun d!4703 () Bool)

(assert (= bs!1153 (and d!4703 b!5897)))

(assert (=> bs!1153 (= (dynLambda!45 lambda!224) (foldRight1!5 (map!121 (toList!22 tree!30) lambda!226) lambda!225))))

(assert (=> bs!1153 m!8417))

(assert (=> bs!1153 m!8417))

(assert (=> bs!1153 m!8477))

(assert (=> bs!1153 m!8477))

(assert (=> bs!1153 m!8487))

(assert (=> (and b!5897 (= lambda!224 (x!3043 thiss!1014)) d!4679) d!4703))

(declare-fun bs!1154 () Bool)

(declare-fun d!4705 () Bool)

(assert (= bs!1154 (and d!4705 b!5899)))

(assert (=> bs!1154 (= (dynLambda!45 lambda!228) (foldRight1!5 (toList!23 (map!120 tree!30 lambda!226)) lambda!225))))

(assert (=> bs!1154 m!8429))

(assert (=> bs!1154 m!8429))

(assert (=> bs!1154 m!8465))

(assert (=> bs!1154 m!8465))

(assert (=> bs!1154 m!8489))

(assert (=> (and b!5899 (= lambda!228 (x!3043 thiss!1014)) d!4679) d!4705))

(declare-fun b_lambda!2705 () Bool)

(assert (= b_lambda!2693 (or b!5897 b_lambda!2705)))

(declare-fun bs!1155 () Bool)

(declare-fun d!4707 () Bool)

(assert (= bs!1155 (and d!4707 b!5897)))

(declare-fun fromParenthesis!0 (Parenthesis!8) Balance!13)

(assert (=> bs!1155 (= (dynLambda!49 lambda!226 (value!1263 tree!30)) (fromParenthesis!0 (value!1263 tree!30)))))

(declare-fun m!8491 () Bool)

(assert (=> bs!1155 m!8491))

(assert (=> b!5920 d!4707))

(declare-fun b_lambda!2707 () Bool)

(assert (= b_lambda!2689 (or b!5921 b_lambda!2707)))

(declare-fun bs!1156 () Bool)

(declare-fun d!4709 () Bool)

(assert (= bs!1156 (and d!4709 b!5921)))

(assert (=> bs!1156 (= (dynLambda!48 lambda!249) (map!120 (left!261 tree!30) lambda!226))))

(declare-fun m!8493 () Bool)

(assert (=> bs!1156 m!8493))

(assert (=> b!5921 d!4709))

(declare-fun b_lambda!2709 () Bool)

(assert (= b_lambda!2691 (or b!5921 b_lambda!2709)))

(declare-fun bs!1157 () Bool)

(declare-fun d!4711 () Bool)

(assert (= bs!1157 (and d!4711 b!5921)))

(assert (=> bs!1157 (= (dynLambda!48 lambda!250) (map!120 (right!264 tree!30) lambda!226))))

(declare-fun m!8495 () Bool)

(assert (=> bs!1157 m!8495))

(assert (=> b!5921 d!4711))

(push 1)

(assert (not b!5937))

(assert b_and!1037)

(assert (not b_next!135))

(assert (not d!4677))

(assert (not b_next!139))

(assert (not bs!1156))

(assert (not d!4681))

(assert (not b!5912))

(assert (not b_lambda!2709))

(assert (not bs!1145))

(assert (not bs!1146))

(assert (not bs!1150))

(assert (not b_lambda!2701))

(assert (not b_next!141))

(assert (not b_lambda!2699))

(assert (not b_lambda!2707))

(assert b_and!1041)

(assert (not d!4671))

(assert (not bs!1152))

(assert b_and!1033)

(assert (not bs!1147))

(assert (not bs!1148))

(assert (not b_lambda!2695))

(assert (not bs!1151))

(assert (not b!5935))

(assert (not b_next!143))

(assert (not d!4675))

(assert (not d!4685))

(assert (not bs!1157))

(assert (not b!5936))

(assert (not b_next!137))

(assert (not b_lambda!2705))

(assert (not bs!1155))

(assert (not b_lambda!2697))

(assert b_and!1031)

(assert (not bs!1154))

(assert b_and!1039)

(assert (not b_next!133))

(assert b_and!1035)

(assert (not b_lambda!2703))

(assert (not b_lambda!2677))

(assert (not bs!1153))

(assert (not bs!1149))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1037)

(assert (not b_next!135))

(assert (not b_next!139))

(assert (not b_next!141))

(assert b_and!1041)

(assert b_and!1033)

(assert (not b_next!143))

(assert (not b_next!137))

(assert b_and!1031)

(assert b_and!1039)

(assert (not b_next!133))

(assert b_and!1035)

(check-sat)

(pop 1)

