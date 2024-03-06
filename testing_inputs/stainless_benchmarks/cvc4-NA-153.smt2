; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!978 () Bool)

(assert start!978)

(declare-datatypes () ((Parenthesis!15 (CloseParenthesis!14) (OpenParenthesis!14))))

(declare-datatypes () ((Tree!31 (Branch!22 (left!280 Tree!31) (right!283 Tree!31)) (Leaf!104 (value!1273 Parenthesis!15)))))

(declare-fun tree!30 () Tree!31)

(declare-fun lambda!393 () Int)

(declare-fun lambda!394 () Int)

(declare-datatypes () ((Balance!27 (Balance!28 (extraOpen!54 Int) (extraClose!54 Int)))))

(declare-datatypes () ((List!115 (Nil!113) (Cons!112 (head!330 Balance!27) (tail!342 List!115)))))

(declare-fun foldRight1!8 (List!115 Int) Balance!27)

(declare-datatypes () ((List!116 (Nil!114) (Cons!113 (head!331 Parenthesis!15) (tail!343 List!116)))))

(declare-fun map!126 (List!116 Int) List!115)

(declare-fun toList!32 (Tree!31) List!116)

(declare-datatypes () ((Tree!32 (Branch!23 (left!281 Tree!32) (right!284 Tree!32)) (Leaf!105 (value!1274 Balance!27)))))

(declare-fun fold!9 (Tree!32 Int) Balance!27)

(declare-fun map!127 (Tree!31 Int) Tree!32)

(assert (=> start!978 (= (foldRight1!8 (map!126 (toList!32 tree!30) lambda!393) lambda!394) (fold!9 (map!127 tree!30 lambda!393) lambda!394))))

(declare-datatypes () ((ProofOps!22 (ProofOps!23 (prop!118 Bool)))))

(declare-fun because!2 (ProofOps!22 Bool) Bool)

(declare-fun isMatchedHybid!0 (List!116) Bool)

(declare-fun isMatchedParallel!0 (Tree!31) Bool)

(assert (=> start!978 (not (because!2 (ProofOps!23 (= (isMatchedHybid!0 (toList!32 tree!30)) (isMatchedParallel!0 tree!30))) true))))

(assert (=> start!978 true))

(declare-fun bs!1269 () Bool)

(assert (= bs!1269 start!978))

(declare-fun m!8901 () Bool)

(assert (=> bs!1269 m!8901))

(assert (=> bs!1269 m!8901))

(declare-fun m!8903 () Bool)

(assert (=> bs!1269 m!8903))

(assert (=> bs!1269 m!8903))

(declare-fun m!8905 () Bool)

(assert (=> bs!1269 m!8905))

(declare-fun m!8907 () Bool)

(assert (=> bs!1269 m!8907))

(declare-fun m!8909 () Bool)

(assert (=> bs!1269 m!8909))

(assert (=> bs!1269 m!8901))

(declare-fun m!8911 () Bool)

(assert (=> bs!1269 m!8911))

(declare-fun m!8913 () Bool)

(assert (=> bs!1269 m!8913))

(assert (=> bs!1269 m!8907))

(declare-fun m!8915 () Bool)

(assert (=> bs!1269 m!8915))

(push 1)

(assert (not start!978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4959 () Bool)

(declare-fun lt!1354 () List!116)

(declare-fun isEmpty!106 (List!116) Bool)

(assert (=> d!4959 (not (isEmpty!106 lt!1354))))

(declare-fun e!3677 () List!116)

(assert (=> d!4959 (= lt!1354 e!3677)))

(declare-fun c!2346 () Bool)

(assert (=> d!4959 (= c!2346 (is-Leaf!104 tree!30))))

(assert (=> d!4959 (= (toList!32 tree!30) lt!1354)))

(declare-fun b!6175 () Bool)

(assert (=> b!6175 (= e!3677 (Cons!113 (value!1273 tree!30) Nil!114))))

(declare-fun b!6176 () Bool)

(declare-fun append!44 (List!116 List!116) List!116)

(assert (=> b!6176 (= e!3677 (append!44 (toList!32 (left!280 tree!30)) (toList!32 (right!283 tree!30))))))

(assert (= (and d!4959 c!2346) b!6175))

(assert (= (and d!4959 (not c!2346)) b!6176))

(declare-fun m!8917 () Bool)

(assert (=> d!4959 m!8917))

(declare-fun m!8919 () Bool)

(assert (=> b!6176 m!8919))

(declare-fun m!8921 () Bool)

(assert (=> b!6176 m!8921))

(assert (=> b!6176 m!8919))

(assert (=> b!6176 m!8921))

(declare-fun m!8923 () Bool)

(assert (=> b!6176 m!8923))

(assert (=> start!978 d!4959))

(declare-fun d!4961 () Bool)

(declare-fun c!2349 () Bool)

(assert (=> d!4961 (= c!2349 (and (is-Cons!112 (map!126 (toList!32 tree!30) lambda!393)) (is-Nil!113 (tail!342 (map!126 (toList!32 tree!30) lambda!393)))))))

(declare-fun e!3680 () Balance!27)

(assert (=> d!4961 (= (foldRight1!8 (map!126 (toList!32 tree!30) lambda!393) lambda!394) e!3680)))

(declare-fun b!6181 () Bool)

(assert (=> b!6181 (= e!3680 (head!330 (map!126 (toList!32 tree!30) lambda!393)))))

(declare-fun b!6182 () Bool)

(declare-fun dynLambda!68 (Int Balance!27 Balance!27) Balance!27)

(assert (=> b!6182 (= e!3680 (dynLambda!68 lambda!394 (head!330 (map!126 (toList!32 tree!30) lambda!393)) (foldRight1!8 (tail!342 (map!126 (toList!32 tree!30) lambda!393)) lambda!394)))))

(assert (= (and d!4961 c!2349) b!6181))

(assert (= (and d!4961 (not c!2349)) b!6182))

(declare-fun b_lambda!2923 () Bool)

(assert (=> (not b_lambda!2923) (not b!6182)))

(declare-fun m!8925 () Bool)

(assert (=> b!6182 m!8925))

(assert (=> b!6182 m!8925))

(declare-fun m!8927 () Bool)

(assert (=> b!6182 m!8927))

(assert (=> start!978 d!4961))

(declare-fun d!4963 () Bool)

(assert (=> d!4963 (= (because!2 (ProofOps!23 (= (isMatchedHybid!0 (toList!32 tree!30)) (isMatchedParallel!0 tree!30))) true) (prop!118 (ProofOps!23 (= (isMatchedHybid!0 (toList!32 tree!30)) (isMatchedParallel!0 tree!30)))))))

(assert (=> start!978 d!4963))

(declare-fun b!6188 () Bool)

(assert (=> b!6188 true))

(declare-fun order!51 () Int)

(declare-fun lambda!399 () Int)

(declare-fun order!49 () Int)

(declare-fun dynLambda!69 (Int Int) Int)

(declare-fun dynLambda!70 (Int Int) Int)

(assert (=> b!6188 (< (dynLambda!69 order!49 lambda!393) (dynLambda!70 order!51 lambda!399))))

(assert (=> b!6188 true))

(declare-fun lambda!400 () Int)

(assert (=> b!6188 (= (= (right!283 tree!30) (left!280 tree!30)) (= lambda!400 lambda!399))))

(assert (=> b!6188 true))

(assert (=> b!6188 (< (dynLambda!69 order!49 lambda!393) (dynLambda!70 order!51 lambda!400))))

(assert (=> b!6188 true))

(declare-fun e!3699 () Tree!32)

(declare-datatypes () ((tuple2!38 (tuple2!39 (_1!19 Tree!32) (_2!19 Tree!32)))))

(declare-fun lt!1357 () tuple2!38)

(assert (=> b!6188 (= e!3699 (Branch!23 (_1!19 lt!1357) (_2!19 lt!1357)))))

(declare-fun dynLambda!71 (Int) Tree!32)

(assert (=> b!6188 (= lt!1357 (tuple2!39 (dynLambda!71 lambda!399) (dynLambda!71 lambda!400)))))

(declare-fun d!4965 () Bool)

(declare-fun c!2352 () Bool)

(assert (=> d!4965 (= c!2352 (is-Leaf!104 tree!30))))

(assert (=> d!4965 (= (map!127 tree!30 lambda!393) e!3699)))

(declare-fun b!6187 () Bool)

(declare-fun dynLambda!72 (Int Parenthesis!15) Balance!27)

(assert (=> b!6187 (= e!3699 (Leaf!105 (dynLambda!72 lambda!393 (value!1273 tree!30))))))

(assert (= (and d!4965 c!2352) b!6187))

(assert (= (and d!4965 (not c!2352)) b!6188))

(declare-fun b_lambda!2925 () Bool)

(assert (=> (not b_lambda!2925) (not b!6188)))

(declare-fun b_lambda!2927 () Bool)

(assert (=> (not b_lambda!2927) (not b!6188)))

(declare-fun b_lambda!2929 () Bool)

(assert (=> (not b_lambda!2929) (not b!6187)))

(declare-fun m!8929 () Bool)

(assert (=> b!6188 m!8929))

(declare-fun m!8931 () Bool)

(assert (=> b!6188 m!8931))

(declare-fun m!8933 () Bool)

(assert (=> b!6187 m!8933))

(assert (=> start!978 d!4965))

(declare-fun bs!1270 () Bool)

(declare-fun d!4967 () Bool)

(assert (= bs!1270 (and d!4967 start!978)))

(declare-fun lambda!405 () Int)

(assert (=> bs!1270 (= lambda!405 lambda!393)))

(declare-fun lambda!406 () Int)

(assert (=> bs!1270 (= lambda!406 lambda!394)))

(declare-fun isBalanced!0 (Balance!27) Bool)

(assert (=> d!4967 (= (isMatchedHybid!0 (toList!32 tree!30)) (isBalanced!0 (foldRight1!8 (map!126 (toList!32 tree!30) lambda!405) lambda!406)))))

(declare-fun bs!1271 () Bool)

(assert (= bs!1271 d!4967))

(assert (=> bs!1271 m!8901))

(declare-fun m!8935 () Bool)

(assert (=> bs!1271 m!8935))

(assert (=> bs!1271 m!8935))

(declare-fun m!8937 () Bool)

(assert (=> bs!1271 m!8937))

(assert (=> bs!1271 m!8937))

(declare-fun m!8939 () Bool)

(assert (=> bs!1271 m!8939))

(assert (=> start!978 d!4967))

(declare-fun bs!1272 () Bool)

(declare-fun d!4969 () Bool)

(assert (= bs!1272 (and d!4969 start!978)))

(declare-fun lambda!411 () Int)

(assert (=> bs!1272 (= lambda!411 lambda!393)))

(declare-fun bs!1273 () Bool)

(assert (= bs!1273 (and d!4969 d!4967)))

(assert (=> bs!1273 (= lambda!411 lambda!405)))

(declare-fun lambda!412 () Int)

(assert (=> bs!1272 (= lambda!412 lambda!394)))

(assert (=> bs!1273 (= lambda!412 lambda!406)))

(assert (=> d!4969 (= (isMatchedParallel!0 tree!30) (isBalanced!0 (fold!9 (map!127 tree!30 lambda!411) lambda!412)))))

(declare-fun bs!1274 () Bool)

(assert (= bs!1274 d!4969))

(declare-fun m!8941 () Bool)

(assert (=> bs!1274 m!8941))

(assert (=> bs!1274 m!8941))

(declare-fun m!8943 () Bool)

(assert (=> bs!1274 m!8943))

(assert (=> bs!1274 m!8943))

(declare-fun m!8945 () Bool)

(assert (=> bs!1274 m!8945))

(assert (=> start!978 d!4969))

(declare-fun d!4971 () Bool)

(declare-fun c!2355 () Bool)

(assert (=> d!4971 (= c!2355 (is-Nil!114 (toList!32 tree!30)))))

(declare-fun e!3702 () List!115)

(assert (=> d!4971 (= (map!126 (toList!32 tree!30) lambda!393) e!3702)))

(declare-fun b!6197 () Bool)

(assert (=> b!6197 (= e!3702 Nil!113)))

(declare-fun b!6198 () Bool)

(assert (=> b!6198 (= e!3702 (Cons!112 (dynLambda!72 lambda!393 (head!331 (toList!32 tree!30))) (map!126 (tail!343 (toList!32 tree!30)) lambda!393)))))

(assert (= (and d!4971 c!2355) b!6197))

(assert (= (and d!4971 (not c!2355)) b!6198))

(declare-fun b_lambda!2931 () Bool)

(assert (=> (not b_lambda!2931) (not b!6198)))

(declare-fun m!8947 () Bool)

(assert (=> b!6198 m!8947))

(declare-fun m!8949 () Bool)

(assert (=> b!6198 m!8949))

(assert (=> start!978 d!4971))

(declare-fun b!6204 () Bool)

(assert (=> b!6204 true))

(declare-fun lambda!417 () Int)

(declare-fun order!55 () Int)

(declare-fun order!53 () Int)

(declare-fun dynLambda!73 (Int Int) Int)

(declare-fun dynLambda!74 (Int Int) Int)

(assert (=> b!6204 (< (dynLambda!73 order!53 lambda!394) (dynLambda!74 order!55 lambda!417))))

(assert (=> b!6204 true))

(declare-fun lambda!418 () Int)

(assert (=> b!6204 (= (= (right!284 (map!127 tree!30 lambda!393)) (left!281 (map!127 tree!30 lambda!393))) (= lambda!418 lambda!417))))

(assert (=> b!6204 true))

(assert (=> b!6204 (< (dynLambda!73 order!53 lambda!394) (dynLambda!74 order!55 lambda!418))))

(assert (=> b!6204 true))

(declare-fun e!3721 () Balance!27)

(declare-datatypes () ((tuple2!40 (tuple2!41 (_1!20 Balance!27) (_2!20 Balance!27)))))

(declare-fun lt!1360 () tuple2!40)

(assert (=> b!6204 (= e!3721 (dynLambda!68 lambda!394 (_1!20 lt!1360) (_2!20 lt!1360)))))

(declare-fun dynLambda!75 (Int) Balance!27)

(assert (=> b!6204 (= lt!1360 (tuple2!41 (dynLambda!75 lambda!417) (dynLambda!75 lambda!418)))))

(declare-fun d!4973 () Bool)

(declare-fun c!2358 () Bool)

(assert (=> d!4973 (= c!2358 (is-Leaf!105 (map!127 tree!30 lambda!393)))))

(assert (=> d!4973 (= (fold!9 (map!127 tree!30 lambda!393) lambda!394) e!3721)))

(declare-fun b!6203 () Bool)

(assert (=> b!6203 (= e!3721 (value!1274 (map!127 tree!30 lambda!393)))))

(assert (= (and d!4973 c!2358) b!6203))

(assert (= (and d!4973 (not c!2358)) b!6204))

(declare-fun b_lambda!2933 () Bool)

(assert (=> (not b_lambda!2933) (not b!6204)))

(declare-fun b_lambda!2935 () Bool)

(assert (=> (not b_lambda!2935) (not b!6204)))

(declare-fun b_lambda!2937 () Bool)

(assert (=> (not b_lambda!2937) (not b!6204)))

(declare-fun m!8951 () Bool)

(assert (=> b!6204 m!8951))

(declare-fun m!8953 () Bool)

(assert (=> b!6204 m!8953))

(declare-fun m!8955 () Bool)

(assert (=> b!6204 m!8955))

(assert (=> start!978 d!4973))

(declare-fun b_lambda!2939 () Bool)

(assert (= b_lambda!2935 (or b!6204 b_lambda!2939)))

(declare-fun bs!1275 () Bool)

(declare-fun d!4975 () Bool)

(assert (= bs!1275 (and d!4975 b!6204)))

(assert (=> bs!1275 (= (dynLambda!75 lambda!417) (fold!9 (left!281 (map!127 tree!30 lambda!393)) lambda!394))))

(declare-fun m!8957 () Bool)

(assert (=> bs!1275 m!8957))

(assert (=> b!6204 d!4975))

(declare-fun b_lambda!2941 () Bool)

(assert (= b_lambda!2923 (or start!978 b_lambda!2941)))

(declare-fun bs!1276 () Bool)

(declare-fun d!4977 () Bool)

(assert (= bs!1276 (and d!4977 start!978)))

(declare-fun ++!3 (Balance!27 Balance!27) Balance!27)

(assert (=> bs!1276 (= (dynLambda!68 lambda!394 (head!330 (map!126 (toList!32 tree!30) lambda!393)) (foldRight1!8 (tail!342 (map!126 (toList!32 tree!30) lambda!393)) lambda!394)) (++!3 (head!330 (map!126 (toList!32 tree!30) lambda!393)) (foldRight1!8 (tail!342 (map!126 (toList!32 tree!30) lambda!393)) lambda!394)))))

(assert (=> bs!1276 m!8925))

(declare-fun m!8959 () Bool)

(assert (=> bs!1276 m!8959))

(assert (=> b!6182 d!4977))

(declare-fun b_lambda!2943 () Bool)

(assert (= b_lambda!2925 (or b!6188 b_lambda!2943)))

(declare-fun bs!1277 () Bool)

(declare-fun d!4979 () Bool)

(assert (= bs!1277 (and d!4979 b!6188)))

(assert (=> bs!1277 (= (dynLambda!71 lambda!399) (map!127 (left!280 tree!30) lambda!393))))

(declare-fun m!8961 () Bool)

(assert (=> bs!1277 m!8961))

(assert (=> b!6188 d!4979))

(declare-fun b_lambda!2945 () Bool)

(assert (= b_lambda!2937 (or b!6204 b_lambda!2945)))

(declare-fun bs!1278 () Bool)

(declare-fun d!4981 () Bool)

(assert (= bs!1278 (and d!4981 b!6204)))

(assert (=> bs!1278 (= (dynLambda!75 lambda!418) (fold!9 (right!284 (map!127 tree!30 lambda!393)) lambda!394))))

(declare-fun m!8963 () Bool)

(assert (=> bs!1278 m!8963))

(assert (=> b!6204 d!4981))

(declare-fun b_lambda!2947 () Bool)

(assert (= b_lambda!2933 (or start!978 b_lambda!2947)))

(declare-fun bs!1279 () Bool)

(declare-fun d!4983 () Bool)

(assert (= bs!1279 (and d!4983 start!978)))

(assert (=> bs!1279 (= (dynLambda!68 lambda!394 (_1!20 lt!1360) (_2!20 lt!1360)) (++!3 (_1!20 lt!1360) (_2!20 lt!1360)))))

(declare-fun m!8965 () Bool)

(assert (=> bs!1279 m!8965))

(assert (=> b!6204 d!4983))

(declare-fun b_lambda!2949 () Bool)

(assert (= b_lambda!2929 (or start!978 b_lambda!2949)))

(declare-fun bs!1280 () Bool)

(declare-fun d!4985 () Bool)

(assert (= bs!1280 (and d!4985 start!978)))

(declare-fun fromParenthesis!0 (Parenthesis!15) Balance!27)

(assert (=> bs!1280 (= (dynLambda!72 lambda!393 (value!1273 tree!30)) (fromParenthesis!0 (value!1273 tree!30)))))

(declare-fun m!8967 () Bool)

(assert (=> bs!1280 m!8967))

(assert (=> b!6187 d!4985))

(declare-fun b_lambda!2951 () Bool)

(assert (= b_lambda!2931 (or start!978 b_lambda!2951)))

(declare-fun bs!1281 () Bool)

(declare-fun d!4987 () Bool)

(assert (= bs!1281 (and d!4987 start!978)))

(assert (=> bs!1281 (= (dynLambda!72 lambda!393 (head!331 (toList!32 tree!30))) (fromParenthesis!0 (head!331 (toList!32 tree!30))))))

(declare-fun m!8969 () Bool)

(assert (=> bs!1281 m!8969))

(assert (=> b!6198 d!4987))

(declare-fun b_lambda!2953 () Bool)

(assert (= b_lambda!2927 (or b!6188 b_lambda!2953)))

(declare-fun bs!1282 () Bool)

(declare-fun d!4989 () Bool)

(assert (= bs!1282 (and d!4989 b!6188)))

(assert (=> bs!1282 (= (dynLambda!71 lambda!400) (map!127 (right!283 tree!30) lambda!393))))

(declare-fun m!8971 () Bool)

(assert (=> bs!1282 m!8971))

(assert (=> b!6188 d!4989))

(push 1)

(assert (not b_lambda!2939))

(assert (not bs!1281))

(assert (not b_lambda!2941))

(assert (not bs!1280))

(assert (not b_lambda!2945))

(assert (not b_lambda!2943))

(assert (not d!4967))

(assert (not b_lambda!2953))

(assert (not b_lambda!2951))

(assert (not bs!1277))

(assert (not bs!1278))

(assert (not b_lambda!2949))

(assert (not b_lambda!2947))

(assert (not d!4969))

(assert (not b!6198))

(assert (not b!6176))

(assert (not bs!1282))

(assert (not b!6182))

(assert (not d!4959))

(assert (not bs!1276))

(assert (not bs!1275))

(assert (not bs!1279))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

