; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1030 () Bool)

(assert start!1030)

(declare-fun b!6326 () Bool)

(declare-fun b_free!185 () Bool)

(declare-fun b_next!389 () Bool)

(assert (=> b!6326 (= b_free!185 (not b_next!389))))

(declare-fun tp!404 () Bool)

(declare-fun b_and!1267 () Bool)

(assert (=> b!6326 (= tp!404 b_and!1267)))

(declare-fun b_free!187 () Bool)

(declare-fun b_next!391 () Bool)

(assert (=> b!6326 (= b_free!187 (not b_next!391))))

(declare-fun tp!405 () Bool)

(declare-fun b_and!1269 () Bool)

(assert (=> b!6326 (= tp!405 b_and!1269)))

(declare-fun b_free!189 () Bool)

(declare-fun b_next!393 () Bool)

(assert (=> start!1030 (= b_free!189 (not b_next!393))))

(declare-fun tp!406 () Bool)

(declare-fun b_and!1271 () Bool)

(assert (=> start!1030 (= tp!406 b_and!1271)))

(declare-fun b!6325 () Bool)

(assert (=> b!6325 true))

(declare-datatypes () ((Balance!35 (Balance!36 (extraOpen!58 Int) (extraClose!58 Int)))))

(declare-datatypes () ((EqProof!16 (EqProof!17 (x!3340 Int) (y!430 Int)))))

(declare-fun thiss!1207 () EqProof!16)

(declare-fun lambda!530 () Int)

(declare-fun b_next!395 () Bool)

(assert (=> b!6326 (= b_next!389 (or (and b!6325 (= lambda!530 (x!3340 thiss!1207))) b_next!395))))

(declare-fun b_next!397 () Bool)

(assert (=> b!6326 (= b_next!391 (or (and b!6325 (= lambda!530 (y!430 thiss!1207))) b_next!397))))

(declare-fun b!6324 () Bool)

(assert (=> b!6324 true))

(declare-fun proof!298 () Int)

(declare-fun lambda!532 () Int)

(declare-fun b_next!399 () Bool)

(assert (=> start!1030 (= b_next!393 (or (and b!6324 (= lambda!532 proof!298)) b_next!399))))

(declare-fun res!1721 () Bool)

(declare-fun e!3766 () Bool)

(assert (=> b!6324 (=> (not res!1721) (not e!3766))))

(assert (=> b!6324 (= res!1721 (= proof!298 lambda!532))))

(declare-fun res!1723 () Bool)

(assert (=> b!6325 (=> (not res!1723) (not e!3766))))

(assert (=> b!6325 (= res!1723 (= thiss!1207 (EqProof!17 lambda!530 lambda!530)))))

(declare-fun res!1722 () Bool)

(assert (=> start!1030 (=> (not res!1722) (not e!3766))))

(declare-datatypes () ((Parenthesis!20 (CloseParenthesis!19) (OpenParenthesis!19))))

(declare-datatypes () ((List!123 (Nil!121) (Cons!120 (head!338 Parenthesis!20) (tail!350 List!123)))))

(declare-fun xs!395 () List!123)

(declare-fun isEmpty!113 (List!123) Bool)

(assert (=> start!1030 (= res!1722 (not (isEmpty!113 xs!395)))))

(assert (=> start!1030 e!3766))

(assert (=> start!1030 true))

(declare-fun e!3765 () Bool)

(declare-fun inv!225 (EqProof!16) Bool)

(assert (=> start!1030 (and (inv!225 thiss!1207) e!3765)))

(assert (=> start!1030 tp!406))

(assert (=> b!6326 (= e!3765 (and tp!404 tp!405))))

(declare-fun b!6327 () Bool)

(declare-fun res!1724 () Bool)

(assert (=> b!6327 (=> (not res!1724) (not e!3766))))

(declare-datatypes () ((ProofOps!30 (ProofOps!31 (prop!122 Bool)))))

(declare-fun thiss!1201 () ProofOps!30)

(declare-fun isMatchedSequential!0 (List!123) Bool)

(declare-fun isMatchedHybid!0 (List!123) Bool)

(assert (=> b!6327 (= res!1724 (= thiss!1201 (ProofOps!31 (= (isMatchedSequential!0 xs!395) (isMatchedHybid!0 xs!395)))))))

(declare-fun b!6328 () Bool)

(declare-fun dynLambda!82 (Int) Bool)

(assert (=> b!6328 (= e!3766 (not (dynLambda!82 proof!298)))))

(assert (= (and start!1030 res!1722) b!6327))

(assert (= (and b!6327 res!1724) b!6325))

(assert (= (and b!6325 res!1723) b!6324))

(assert (= (and b!6324 res!1721) b!6328))

(assert (= start!1030 b!6326))

(declare-fun b_lambda!2987 () Bool)

(assert (=> (not b_lambda!2987) (not b!6328)))

(declare-fun t!1043 () Bool)

(declare-fun tb!703 () Bool)

(assert (=> (and start!1030 (= proof!298 proof!298) t!1043) tb!703))

(declare-fun result!743 () Bool)

(assert (=> tb!703 (= result!743 true)))

(assert (=> b!6328 t!1043))

(declare-fun b_and!1273 () Bool)

(assert (= b_and!1271 (and (=> t!1043 result!743) b_and!1273)))

(declare-fun m!9075 () Bool)

(assert (=> start!1030 m!9075))

(declare-fun m!9077 () Bool)

(assert (=> start!1030 m!9077))

(declare-fun m!9079 () Bool)

(assert (=> b!6327 m!9079))

(declare-fun m!9081 () Bool)

(assert (=> b!6327 m!9081))

(declare-fun m!9083 () Bool)

(assert (=> b!6328 m!9083))

(push 1)

(assert (not b_next!397))

(assert (not b!6327))

(assert b_and!1269)

(assert b_and!1273)

(assert b_and!1267)

(assert (not b_lambda!2987))

(assert (not start!1030))

(assert (not b_next!399))

(assert (not b_next!395))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!397))

(assert b_and!1269)

(assert b_and!1273)

(assert b_and!1267)

(assert (not b_next!399))

(assert (not b_next!395))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2989 () Bool)

(assert (= b_lambda!2987 (or (and b!6324 (= lambda!532 proof!298)) (and start!1030 b_free!189) b_lambda!2989)))

(declare-fun bs!1309 () Bool)

(declare-fun d!5041 () Bool)

(assert (= bs!1309 (and d!5041 b!6324)))

(declare-fun folds_equivalence!0 (List!123) Bool)

(assert (=> bs!1309 (= (dynLambda!82 lambda!532) (folds_equivalence!0 xs!395))))

(declare-fun m!9085 () Bool)

(assert (=> bs!1309 m!9085))

(assert (=> (and b!6324 (= lambda!532 proof!298) b!6328) d!5041))

(push 1)

(assert (not b_next!397))

(assert (not b!6327))

(assert b_and!1269)

(assert (not bs!1309))

(assert b_and!1273)

(assert b_and!1267)

(assert (not b_lambda!2989))

(assert (not start!1030))

(assert (not b_next!399))

(assert (not b_next!395))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!397))

(assert b_and!1269)

(assert b_and!1273)

(assert b_and!1267)

(assert (not b_next!399))

(assert (not b_next!395))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1310 () Bool)

(declare-fun b!6337 () Bool)

(assert (= bs!1310 (and b!6337 b!6325)))

(declare-fun lambda!541 () Int)

(declare-fun lambda!531 () Int)

(assert (=> bs!1310 (not (= lambda!541 lambda!531))))

(declare-fun lambda!542 () Int)

(assert (=> bs!1310 (= lambda!542 lambda!531)))

(assert (=> b!6337 (not (= lambda!542 lambda!541))))

(declare-fun bs!1311 () Bool)

(declare-fun b!6338 () Bool)

(assert (= bs!1311 (and b!6338 b!6325)))

(declare-fun lambda!543 () Int)

(assert (=> bs!1311 (not (= lambda!543 lambda!531))))

(declare-fun bs!1312 () Bool)

(assert (= bs!1312 (and b!6338 b!6337)))

(assert (=> bs!1312 (= lambda!543 lambda!541)))

(assert (=> bs!1312 (not (= lambda!543 lambda!542))))

(declare-fun lambda!544 () Int)

(assert (=> bs!1311 (= lambda!544 lambda!531)))

(assert (=> bs!1312 (not (= lambda!544 lambda!541))))

(assert (=> bs!1312 (= lambda!544 lambda!542)))

(assert (=> b!6338 (not (= lambda!544 lambda!543))))

(declare-fun e!3769 () Bool)

(declare-fun foldRight!14 (List!123 Balance!35 Int) Balance!35)

(assert (=> b!6338 (= e!3769 (= (foldRight!14 xs!395 (Balance!36 0 0) lambda!543) (foldRight!14 xs!395 (Balance!36 0 0) lambda!544)))))

(declare-fun lt!1363 () Bool)

(assert (=> b!6338 (= lt!1363 (folds_equivalence!0 (tail!350 xs!395)))))

(declare-fun d!5043 () Bool)

(assert (=> d!5043 e!3769))

(declare-fun c!2370 () Bool)

(assert (=> d!5043 (= c!2370 (is-Nil!121 xs!395))))

(assert (=> d!5043 (= (folds_equivalence!0 xs!395) true)))

(assert (=> b!6337 (= e!3769 (= (foldRight!14 xs!395 (Balance!36 0 0) lambda!541) (foldRight!14 xs!395 (Balance!36 0 0) lambda!542)))))

(assert (= (and d!5043 c!2370) b!6337))

(assert (= (and d!5043 (not c!2370)) b!6338))

(declare-fun m!9087 () Bool)

(assert (=> b!6338 m!9087))

(declare-fun m!9089 () Bool)

(assert (=> b!6338 m!9089))

(declare-fun m!9091 () Bool)

(assert (=> b!6338 m!9091))

(declare-fun m!9093 () Bool)

(assert (=> b!6337 m!9093))

(declare-fun m!9095 () Bool)

(assert (=> b!6337 m!9095))

(assert (=> bs!1309 d!5043))

(declare-fun d!5045 () Bool)

(assert (=> d!5045 (= (isEmpty!113 xs!395) (is-Nil!121 xs!395))))

(assert (=> start!1030 d!5045))

(declare-fun d!5047 () Bool)

(declare-fun dynLambda!83 (Int) Balance!35)

(assert (=> d!5047 (= (inv!225 thiss!1207) (= (dynLambda!83 (x!3340 thiss!1207)) (dynLambda!83 (y!430 thiss!1207))))))

(declare-fun b_lambda!2991 () Bool)

(assert (=> (not b_lambda!2991) (not d!5047)))

(declare-fun t!1045 () Bool)

(declare-fun tb!705 () Bool)

(assert (=> (and b!6326 (= (x!3340 thiss!1207) (x!3340 thiss!1207)) t!1045) tb!705))

(declare-fun result!745 () Bool)

(assert (=> tb!705 (= result!745 true)))

(assert (=> d!5047 t!1045))

(declare-fun b_and!1275 () Bool)

(assert (= b_and!1267 (and (=> t!1045 result!745) b_and!1275)))

(declare-fun t!1047 () Bool)

(declare-fun tb!707 () Bool)

(assert (=> (and b!6326 (= (y!430 thiss!1207) (x!3340 thiss!1207)) t!1047) tb!707))

(declare-fun result!747 () Bool)

(assert (=> tb!707 (= result!747 true)))

(assert (=> d!5047 t!1047))

(declare-fun b_and!1277 () Bool)

(assert (= b_and!1269 (and (=> t!1047 result!747) b_and!1277)))

(declare-fun b_lambda!2993 () Bool)

(assert (=> (not b_lambda!2993) (not d!5047)))

(declare-fun t!1049 () Bool)

(declare-fun tb!709 () Bool)

(assert (=> (and b!6326 (= (x!3340 thiss!1207) (y!430 thiss!1207)) t!1049) tb!709))

(declare-fun result!749 () Bool)

(assert (=> tb!709 (= result!749 true)))

(assert (=> d!5047 t!1049))

(declare-fun b_and!1279 () Bool)

(assert (= b_and!1275 (and (=> t!1049 result!749) b_and!1279)))

(declare-fun t!1051 () Bool)

(declare-fun tb!711 () Bool)

(assert (=> (and b!6326 (= (y!430 thiss!1207) (y!430 thiss!1207)) t!1051) tb!711))

(declare-fun result!751 () Bool)

(assert (=> tb!711 (= result!751 true)))

(assert (=> d!5047 t!1051))

(declare-fun b_and!1281 () Bool)

(assert (= b_and!1277 (and (=> t!1051 result!751) b_and!1281)))

(declare-fun m!9097 () Bool)

(assert (=> d!5047 m!9097))

(declare-fun m!9099 () Bool)

(assert (=> d!5047 m!9099))

(assert (=> start!1030 d!5047))

(declare-fun bs!1313 () Bool)

(declare-fun d!5049 () Bool)

(assert (= bs!1313 (and d!5049 b!6337)))

(declare-fun lambda!547 () Int)

(assert (=> bs!1313 (= lambda!547 lambda!542)))

(declare-fun bs!1314 () Bool)

(assert (= bs!1314 (and d!5049 b!6325)))

(assert (=> bs!1314 (= lambda!547 lambda!531)))

(assert (=> bs!1313 (not (= lambda!547 lambda!541))))

(declare-fun bs!1315 () Bool)

(assert (= bs!1315 (and d!5049 b!6338)))

(assert (=> bs!1315 (= lambda!547 lambda!544)))

(assert (=> bs!1315 (not (= lambda!547 lambda!543))))

(declare-fun isBalanced!0 (Balance!35) Bool)

(assert (=> d!5049 (= (isMatchedSequential!0 xs!395) (isBalanced!0 (foldRight!14 xs!395 (Balance!36 0 0) lambda!547)))))

(declare-fun bs!1316 () Bool)

(assert (= bs!1316 d!5049))

(declare-fun m!9101 () Bool)

(assert (=> bs!1316 m!9101))

(assert (=> bs!1316 m!9101))

(declare-fun m!9103 () Bool)

(assert (=> bs!1316 m!9103))

(assert (=> b!6327 d!5049))

(declare-fun d!5051 () Bool)

(declare-fun lambda!552 () Int)

(declare-fun lambda!553 () Int)

(declare-datatypes () ((List!124 (Nil!122) (Cons!121 (head!339 Balance!35) (tail!351 List!124)))))

(declare-fun foldRight1!11 (List!124 Int) Balance!35)

(declare-fun map!130 (List!123 Int) List!124)

(assert (=> d!5051 (= (isMatchedHybid!0 xs!395) (isBalanced!0 (foldRight1!11 (map!130 xs!395 lambda!552) lambda!553)))))

(declare-fun bs!1317 () Bool)

(assert (= bs!1317 d!5051))

(declare-fun m!9105 () Bool)

(assert (=> bs!1317 m!9105))

(assert (=> bs!1317 m!9105))

(declare-fun m!9107 () Bool)

(assert (=> bs!1317 m!9107))

(assert (=> bs!1317 m!9107))

(declare-fun m!9109 () Bool)

(assert (=> bs!1317 m!9109))

(assert (=> b!6327 d!5051))

(declare-fun b_lambda!2995 () Bool)

(assert (= b_lambda!2991 (or (and b!6325 (= lambda!530 (x!3340 thiss!1207))) (and b!6326 b_free!185) (and b!6326 b_free!187 (= (y!430 thiss!1207) (x!3340 thiss!1207))) b_lambda!2995)))

(declare-fun bs!1318 () Bool)

(declare-fun d!5053 () Bool)

(assert (= bs!1318 (and d!5053 b!6325)))

(assert (=> bs!1318 (= (dynLambda!83 lambda!530) (foldRight!14 xs!395 (Balance!36 0 0) lambda!531))))

(declare-fun m!9111 () Bool)

(assert (=> bs!1318 m!9111))

(assert (=> (and b!6325 (= lambda!530 (x!3340 thiss!1207)) d!5047) d!5053))

(declare-fun b_lambda!2997 () Bool)

(assert (= b_lambda!2993 (or (and b!6325 (= lambda!530 (y!430 thiss!1207))) (and b!6326 b_free!185 (= (x!3340 thiss!1207) (y!430 thiss!1207))) (and b!6326 b_free!187) b_lambda!2997)))

(declare-fun bs!1319 () Bool)

(declare-fun d!5055 () Bool)

(assert (= bs!1319 (and d!5055 b!6325)))

(assert (=> bs!1319 (= (dynLambda!83 lambda!530) (foldRight!14 xs!395 (Balance!36 0 0) lambda!531))))

(assert (=> bs!1319 m!9111))

(assert (=> (and b!6325 (= lambda!530 (y!430 thiss!1207)) d!5047) d!5055))

(push 1)

(assert (not b_next!397))

(assert b_and!1281)

(assert (not d!5049))

(assert (not bs!1319))

(assert b_and!1273)

(assert (not b_lambda!2995))

(assert (not bs!1318))

(assert (not b_lambda!2989))

(assert (not b_lambda!2997))

(assert (not b!6337))

(assert (not b_next!399))

(assert (not b_next!395))

(assert b_and!1279)

(assert (not b!6338))

(assert (not d!5051))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!397))

(assert b_and!1281)

(assert b_and!1273)

(assert (not b_next!399))

(assert (not b_next!395))

(assert b_and!1279)

(check-sat)

(pop 1)

