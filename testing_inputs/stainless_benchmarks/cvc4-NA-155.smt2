; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!998 () Bool)

(assert start!998)

(declare-fun b_free!159 () Bool)

(declare-fun b_next!309 () Bool)

(assert (=> start!998 (= b_free!159 (not b_next!309))))

(declare-fun tp!367 () Bool)

(declare-fun b_and!1221 () Bool)

(assert (=> start!998 (= tp!367 b_and!1221)))

(declare-fun b!6232 () Bool)

(declare-fun b_free!161 () Bool)

(declare-fun b_next!311 () Bool)

(assert (=> b!6232 (= b_free!161 (not b_next!311))))

(declare-fun tp!369 () Bool)

(declare-fun b_and!1223 () Bool)

(assert (=> b!6232 (= tp!369 b_and!1223)))

(declare-fun b_free!163 () Bool)

(declare-fun b_next!313 () Bool)

(assert (=> b!6232 (= b_free!163 (not b_next!313))))

(declare-fun tp!368 () Bool)

(declare-fun b_and!1225 () Bool)

(assert (=> b!6232 (= tp!368 b_and!1225)))

(declare-fun b_free!165 () Bool)

(declare-fun b_next!315 () Bool)

(assert (=> b!6232 (= b_free!165 (not b_next!315))))

(declare-fun tp!370 () Bool)

(declare-fun b_and!1227 () Bool)

(assert (=> b!6232 (= tp!370 b_and!1227)))

(declare-fun b!6231 () Bool)

(assert (=> b!6231 true))

(declare-fun b_next!317 () Bool)

(declare-datatypes () ((Balance!29 (Balance!30 (extraOpen!55 Int) (extraClose!55 Int)))))

(declare-datatypes () ((EqEvidence!20 (EqEvidence!21 (x!3254 Int) (y!426 Int) (evidence!77 Int)))))

(declare-fun thiss!1204 () EqEvidence!20)

(declare-fun lambda!439 () Int)

(assert (=> b!6232 (= b_next!311 (or (and b!6231 (= lambda!439 (x!3254 thiss!1204))) b_next!317))))

(declare-fun b_next!319 () Bool)

(assert (=> b!6232 (= b_next!313 (or (and b!6231 (= lambda!439 (y!426 thiss!1204))) b_next!319))))

(declare-fun lambda!441 () Int)

(declare-fun f!722 () Int)

(declare-fun b_next!321 () Bool)

(assert (=> start!998 (= b_next!309 (or (and b!6231 (= lambda!441 f!722)) b_next!321))))

(declare-fun lambda!443 () Int)

(assert (=> b!6231 (not (= lambda!443 lambda!439))))

(assert (=> b!6231 true))

(declare-fun b_next!323 () Bool)

(assert (=> b!6232 (= b_next!317 (or (and b!6231 (= lambda!443 (x!3254 thiss!1204))) b_next!323))))

(declare-fun b_next!325 () Bool)

(assert (=> b!6232 (= b_next!319 (or (and b!6231 (= lambda!443 (y!426 thiss!1204))) b_next!325))))

(assert (=> b!6231 true))

(declare-fun lambda!444 () Int)

(declare-fun b_next!327 () Bool)

(assert (=> b!6232 (= b_next!315 (or (and b!6231 (= lambda!444 (evidence!77 thiss!1204))) b_next!327))))

(declare-fun b!6230 () Bool)

(declare-fun res!1674 () Bool)

(declare-fun e!3729 () Bool)

(assert (=> b!6230 (=> (not res!1674) (not e!3729))))

(declare-datatypes () ((List!118 (Nil!116) (Cons!115 (head!333 Balance!29) (tail!345 List!118)))))

(declare-fun thiss!1229 () List!118)

(declare-datatypes () ((Parenthesis!17 (CloseParenthesis!16) (OpenParenthesis!16))))

(declare-datatypes () ((List!119 (Nil!117) (Cons!116 (head!334 Parenthesis!17) (tail!346 List!119)))))

(declare-fun xs!395 () List!119)

(declare-fun lambda!442 () Int)

(declare-fun append!45 (List!118 List!118) List!118)

(declare-fun map!128 (List!119 Int) List!118)

(assert (=> b!6230 (= res!1674 (= thiss!1229 (append!45 (map!128 xs!395 lambda!442) (Cons!115 (Balance!30 0 0) Nil!116))))))

(declare-fun res!1673 () Bool)

(assert (=> b!6231 (=> (not res!1673) (not e!3729))))

(assert (=> b!6231 (= res!1673 (= thiss!1204 (EqEvidence!21 lambda!439 lambda!443 lambda!444)))))

(declare-fun e!3730 () Bool)

(assert (=> b!6232 (= e!3730 (and tp!369 tp!368 tp!370))))

(declare-fun b!6233 () Bool)

(declare-fun isEmpty!108 (List!118) Bool)

(assert (=> b!6233 (= e!3729 (isEmpty!108 thiss!1229))))

(declare-fun res!1672 () Bool)

(assert (=> start!998 (=> (not res!1672) (not e!3729))))

(declare-fun isEmpty!109 (List!119) Bool)

(assert (=> start!998 (= res!1672 (not (isEmpty!109 xs!395)))))

(assert (=> start!998 e!3729))

(assert (=> start!998 true))

(assert (=> start!998 tp!367))

(declare-fun inv!221 (EqEvidence!20) Bool)

(assert (=> start!998 (and (inv!221 thiss!1204) e!3730)))

(declare-fun b!6234 () Bool)

(declare-fun res!1676 () Bool)

(assert (=> b!6234 (=> (not res!1676) (not e!3729))))

(declare-datatypes () ((ProofOps!24 (ProofOps!25 (prop!119 Bool)))))

(declare-fun thiss!1201 () ProofOps!24)

(declare-fun isMatchedSequential!0 (List!119) Bool)

(declare-fun isMatchedHybid!0 (List!119) Bool)

(assert (=> b!6234 (= res!1676 (= thiss!1201 (ProofOps!25 (= (isMatchedSequential!0 xs!395) (isMatchedHybid!0 xs!395)))))))

(declare-fun b!6235 () Bool)

(declare-fun res!1675 () Bool)

(assert (=> b!6235 (=> (not res!1675) (not e!3729))))

(assert (=> b!6235 (= res!1675 (= f!722 lambda!441))))

(assert (= (and start!998 res!1672) b!6234))

(assert (= (and b!6234 res!1676) b!6231))

(assert (= (and b!6231 res!1673) b!6230))

(assert (= (and b!6230 res!1674) b!6235))

(assert (= (and b!6235 res!1675) b!6233))

(assert (= start!998 b!6232))

(declare-fun m!8977 () Bool)

(assert (=> b!6230 m!8977))

(assert (=> b!6230 m!8977))

(declare-fun m!8979 () Bool)

(assert (=> b!6230 m!8979))

(declare-fun m!8981 () Bool)

(assert (=> b!6233 m!8981))

(declare-fun m!8983 () Bool)

(assert (=> start!998 m!8983))

(declare-fun m!8985 () Bool)

(assert (=> start!998 m!8985))

(declare-fun m!8987 () Bool)

(assert (=> b!6234 m!8987))

(declare-fun m!8989 () Bool)

(assert (=> b!6234 m!8989))

(push 1)

(assert (not b!6233))

(assert b_and!1221)

(assert b_and!1223)

(assert b_and!1227)

(assert (not b_next!325))

(assert (not b!6230))

(assert (not b_next!327))

(assert (not b!6234))

(assert (not start!998))

(assert (not b_next!323))

(assert b_and!1225)

(assert (not b_next!321))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1221)

(assert b_and!1223)

(assert b_and!1227)

(assert (not b_next!325))

(assert (not b_next!327))

(assert (not b_next!323))

(assert b_and!1225)

(assert (not b_next!321))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4991 () Bool)

(assert (=> d!4991 (= (isEmpty!109 xs!395) (is-Nil!117 xs!395))))

(assert (=> start!998 d!4991))

(declare-fun d!4993 () Bool)

(declare-fun res!1679 () Bool)

(declare-fun e!3733 () Bool)

(assert (=> d!4993 (=> (not res!1679) (not e!3733))))

(declare-fun dynLambda!76 (Int) Balance!29)

(assert (=> d!4993 (= res!1679 (= (dynLambda!76 (x!3254 thiss!1204)) (dynLambda!76 (y!426 thiss!1204))))))

(assert (=> d!4993 (= (inv!221 thiss!1204) e!3733)))

(declare-fun b!6242 () Bool)

(declare-fun dynLambda!77 (Int) Bool)

(assert (=> b!6242 (= e!3733 (dynLambda!77 (evidence!77 thiss!1204)))))

(assert (= (and d!4993 res!1679) b!6242))

(declare-fun b_lambda!2955 () Bool)

(assert (=> (not b_lambda!2955) (not d!4993)))

(declare-fun t!1023 () Bool)

(declare-fun tb!683 () Bool)

(assert (=> (and b!6232 (= (x!3254 thiss!1204) (x!3254 thiss!1204)) t!1023) tb!683))

(declare-fun result!723 () Bool)

(assert (=> tb!683 (= result!723 true)))

(assert (=> d!4993 t!1023))

(declare-fun b_and!1229 () Bool)

(assert (= b_and!1223 (and (=> t!1023 result!723) b_and!1229)))

(declare-fun t!1025 () Bool)

(declare-fun tb!685 () Bool)

(assert (=> (and b!6232 (= (y!426 thiss!1204) (x!3254 thiss!1204)) t!1025) tb!685))

(declare-fun result!725 () Bool)

(assert (=> tb!685 (= result!725 true)))

(assert (=> d!4993 t!1025))

(declare-fun b_and!1231 () Bool)

(assert (= b_and!1225 (and (=> t!1025 result!725) b_and!1231)))

(declare-fun b_lambda!2957 () Bool)

(assert (=> (not b_lambda!2957) (not d!4993)))

(declare-fun t!1027 () Bool)

(declare-fun tb!687 () Bool)

(assert (=> (and b!6232 (= (x!3254 thiss!1204) (y!426 thiss!1204)) t!1027) tb!687))

(declare-fun result!727 () Bool)

(assert (=> tb!687 (= result!727 true)))

(assert (=> d!4993 t!1027))

(declare-fun b_and!1233 () Bool)

(assert (= b_and!1229 (and (=> t!1027 result!727) b_and!1233)))

(declare-fun t!1029 () Bool)

(declare-fun tb!689 () Bool)

(assert (=> (and b!6232 (= (y!426 thiss!1204) (y!426 thiss!1204)) t!1029) tb!689))

(declare-fun result!729 () Bool)

(assert (=> tb!689 (= result!729 true)))

(assert (=> d!4993 t!1029))

(declare-fun b_and!1235 () Bool)

(assert (= b_and!1231 (and (=> t!1029 result!729) b_and!1235)))

(declare-fun b_lambda!2959 () Bool)

(assert (=> (not b_lambda!2959) (not b!6242)))

(declare-fun t!1031 () Bool)

(declare-fun tb!691 () Bool)

(assert (=> (and b!6232 (= (evidence!77 thiss!1204) (evidence!77 thiss!1204)) t!1031) tb!691))

(declare-fun result!731 () Bool)

(assert (=> tb!691 (= result!731 true)))

(assert (=> b!6242 t!1031))

(declare-fun b_and!1237 () Bool)

(assert (= b_and!1227 (and (=> t!1031 result!731) b_and!1237)))

(declare-fun m!8991 () Bool)

(assert (=> d!4993 m!8991))

(declare-fun m!8993 () Bool)

(assert (=> d!4993 m!8993))

(declare-fun m!8995 () Bool)

(assert (=> b!6242 m!8995))

(assert (=> start!998 d!4993))

(declare-fun bs!1285 () Bool)

(declare-fun d!4995 () Bool)

(assert (= bs!1285 (and d!4995 b!6231)))

(declare-fun lambda!447 () Int)

(declare-fun lambda!440 () Int)

(assert (=> bs!1285 (= lambda!447 lambda!440)))

(declare-fun isBalanced!0 (Balance!29) Bool)

(declare-fun foldRight!11 (List!119 Balance!29 Int) Balance!29)

(assert (=> d!4995 (= (isMatchedSequential!0 xs!395) (isBalanced!0 (foldRight!11 xs!395 (Balance!30 0 0) lambda!447)))))

(declare-fun bs!1286 () Bool)

(assert (= bs!1286 d!4995))

(declare-fun m!8997 () Bool)

(assert (=> bs!1286 m!8997))

(assert (=> bs!1286 m!8997))

(declare-fun m!8999 () Bool)

(assert (=> bs!1286 m!8999))

(assert (=> b!6234 d!4995))

(declare-fun bs!1287 () Bool)

(declare-fun d!4997 () Bool)

(assert (= bs!1287 (and d!4997 b!6231)))

(declare-fun lambda!452 () Int)

(assert (=> bs!1287 (= lambda!452 lambda!442)))

(declare-fun lambda!453 () Int)

(assert (=> bs!1287 (= lambda!453 lambda!441)))

(declare-fun b_next!329 () Bool)

(assert (=> start!998 (= b_next!321 (or (and d!4997 (= lambda!453 f!722)) b_next!329))))

(declare-fun foldRight1!9 (List!118 Int) Balance!29)

(assert (=> d!4997 (= (isMatchedHybid!0 xs!395) (isBalanced!0 (foldRight1!9 (map!128 xs!395 lambda!452) lambda!453)))))

(declare-fun bs!1288 () Bool)

(assert (= bs!1288 d!4997))

(declare-fun m!9001 () Bool)

(assert (=> bs!1288 m!9001))

(assert (=> bs!1288 m!9001))

(declare-fun m!9003 () Bool)

(assert (=> bs!1288 m!9003))

(assert (=> bs!1288 m!9003))

(declare-fun m!9005 () Bool)

(assert (=> bs!1288 m!9005))

(assert (=> b!6234 d!4997))

(declare-fun d!4999 () Bool)

(assert (=> d!4999 (= (isEmpty!108 thiss!1229) (is-Nil!116 thiss!1229))))

(assert (=> b!6233 d!4999))

(declare-fun d!5001 () Bool)

(declare-fun c!2361 () Bool)

(assert (=> d!5001 (= c!2361 (is-Nil!116 (map!128 xs!395 lambda!442)))))

(declare-fun e!3736 () List!118)

(assert (=> d!5001 (= (append!45 (map!128 xs!395 lambda!442) (Cons!115 (Balance!30 0 0) Nil!116)) e!3736)))

(declare-fun b!6247 () Bool)

(assert (=> b!6247 (= e!3736 (Cons!115 (Balance!30 0 0) Nil!116))))

(declare-fun b!6248 () Bool)

(assert (=> b!6248 (= e!3736 (Cons!115 (head!333 (map!128 xs!395 lambda!442)) (append!45 (tail!345 (map!128 xs!395 lambda!442)) (Cons!115 (Balance!30 0 0) Nil!116))))))

(assert (= (and d!5001 c!2361) b!6247))

(assert (= (and d!5001 (not c!2361)) b!6248))

(declare-fun m!9007 () Bool)

(assert (=> b!6248 m!9007))

(assert (=> b!6230 d!5001))

(declare-fun d!5003 () Bool)

(declare-fun c!2364 () Bool)

(assert (=> d!5003 (= c!2364 (is-Nil!117 xs!395))))

(declare-fun e!3739 () List!118)

(assert (=> d!5003 (= (map!128 xs!395 lambda!442) e!3739)))

(declare-fun b!6253 () Bool)

(assert (=> b!6253 (= e!3739 Nil!116)))

(declare-fun b!6254 () Bool)

(declare-fun dynLambda!78 (Int Parenthesis!17) Balance!29)

(assert (=> b!6254 (= e!3739 (Cons!115 (dynLambda!78 lambda!442 (head!334 xs!395)) (map!128 (tail!346 xs!395) lambda!442)))))

(assert (= (and d!5003 c!2364) b!6253))

(assert (= (and d!5003 (not c!2364)) b!6254))

(declare-fun b_lambda!2961 () Bool)

(assert (=> (not b_lambda!2961) (not b!6254)))

(declare-fun m!9009 () Bool)

(assert (=> b!6254 m!9009))

(declare-fun m!9011 () Bool)

(assert (=> b!6254 m!9011))

(assert (=> b!6230 d!5003))

(declare-fun b_lambda!2963 () Bool)

(assert (= b_lambda!2959 (or (and b!6231 (= lambda!444 (evidence!77 thiss!1204))) (and b!6232 b_free!165) b_lambda!2963)))

(declare-fun bs!1289 () Bool)

(declare-fun d!5005 () Bool)

(assert (= bs!1289 (and d!5005 b!6231)))

(declare-fun foldRight_accumulator_equivalence!1 (List!118 Balance!29 Int) Bool)

(assert (=> bs!1289 (= (dynLambda!77 lambda!444) (foldRight_accumulator_equivalence!1 (map!128 xs!395 lambda!442) (Balance!30 0 0) lambda!441))))

(assert (=> bs!1289 m!8977))

(assert (=> bs!1289 m!8977))

(declare-fun m!9013 () Bool)

(assert (=> bs!1289 m!9013))

(assert (=> (and b!6231 (= lambda!444 (evidence!77 thiss!1204)) b!6242) d!5005))

(declare-fun b_lambda!2965 () Bool)

(assert (= b_lambda!2955 (or (and b!6231 (= lambda!439 (x!3254 thiss!1204))) (and b!6231 (= lambda!443 (x!3254 thiss!1204))) (and b!6232 b_free!161) (and b!6232 b_free!163 (= (y!426 thiss!1204) (x!3254 thiss!1204))) b_lambda!2965)))

(declare-fun bs!1290 () Bool)

(declare-fun d!5007 () Bool)

(assert (= bs!1290 (and d!5007 b!6231)))

(assert (=> bs!1290 (= (dynLambda!76 lambda!439) (foldRight!11 xs!395 (Balance!30 0 0) lambda!440))))

(declare-fun m!9015 () Bool)

(assert (=> bs!1290 m!9015))

(assert (=> (and b!6231 (= lambda!439 (x!3254 thiss!1204)) d!4993) d!5007))

(declare-fun bs!1291 () Bool)

(declare-fun d!5009 () Bool)

(assert (= bs!1291 (and d!5009 b!6231)))

(declare-fun foldRight!12 (List!118 Balance!29 Int) Balance!29)

(assert (=> bs!1291 (= (dynLambda!76 lambda!443) (foldRight!12 (map!128 xs!395 lambda!442) (Balance!30 0 0) lambda!441))))

(assert (=> bs!1291 m!8977))

(assert (=> bs!1291 m!8977))

(declare-fun m!9017 () Bool)

(assert (=> bs!1291 m!9017))

(assert (=> (and b!6231 (= lambda!443 (x!3254 thiss!1204)) d!4993) d!5009))

(declare-fun b_lambda!2967 () Bool)

(assert (= b_lambda!2957 (or (and b!6231 (= lambda!439 (y!426 thiss!1204))) (and b!6231 (= lambda!443 (y!426 thiss!1204))) (and b!6232 b_free!161 (= (x!3254 thiss!1204) (y!426 thiss!1204))) (and b!6232 b_free!163) b_lambda!2967)))

(declare-fun bs!1292 () Bool)

(declare-fun d!5011 () Bool)

(assert (= bs!1292 (and d!5011 b!6231)))

(assert (=> bs!1292 (= (dynLambda!76 lambda!439) (foldRight!11 xs!395 (Balance!30 0 0) lambda!440))))

(assert (=> bs!1292 m!9015))

(assert (=> (and b!6231 (= lambda!439 (y!426 thiss!1204)) d!4993) d!5011))

(declare-fun bs!1293 () Bool)

(declare-fun d!5013 () Bool)

(assert (= bs!1293 (and d!5013 b!6231)))

(assert (=> bs!1293 (= (dynLambda!76 lambda!443) (foldRight!12 (map!128 xs!395 lambda!442) (Balance!30 0 0) lambda!441))))

(assert (=> bs!1293 m!8977))

(assert (=> bs!1293 m!8977))

(assert (=> bs!1293 m!9017))

(assert (=> (and b!6231 (= lambda!443 (y!426 thiss!1204)) d!4993) d!5013))

(declare-fun b_lambda!2969 () Bool)

(assert (= b_lambda!2961 (or b!6231 b_lambda!2969)))

(declare-fun bs!1294 () Bool)

(declare-fun d!5015 () Bool)

(assert (= bs!1294 (and d!5015 b!6231)))

(declare-fun fromParenthesis!0 (Parenthesis!17) Balance!29)

(assert (=> bs!1294 (= (dynLambda!78 lambda!442 (head!334 xs!395)) (fromParenthesis!0 (head!334 xs!395)))))

(declare-fun m!9019 () Bool)

(assert (=> bs!1294 m!9019))

(assert (=> b!6254 d!5015))

(push 1)

(assert (not bs!1293))

(assert b_and!1221)

(assert (not b_lambda!2963))

(assert (not d!4995))

(assert (not bs!1291))

(assert b_and!1235)

(assert (not bs!1290))

(assert b_and!1237)

(assert (not b_next!325))

(assert (not b!6254))

(assert (not b_next!327))

(assert b_and!1233)

(assert (not bs!1292))

(assert (not b_lambda!2967))

(assert (not bs!1289))

(assert (not b!6248))

(assert (not d!4997))

(assert (not bs!1294))

(assert (not b_next!329))

(assert (not b_next!323))

(assert (not b_lambda!2969))

(assert (not b_lambda!2965))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1221)

(assert b_and!1235)

(assert b_and!1237)

(assert (not b_next!325))

(assert (not b_next!327))

(assert b_and!1233)

(assert (not b_next!329))

(assert (not b_next!323))

(check-sat)

(pop 1)

