; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1238 () Bool)

(assert start!1238)

(declare-fun b!6951 () Bool)

(declare-fun b_free!371 () Bool)

(declare-fun b_next!789 () Bool)

(assert (=> b!6951 (= b_free!371 (not b_next!789))))

(declare-fun tp!688 () Bool)

(declare-fun b_and!1815 () Bool)

(assert (=> b!6951 (= tp!688 b_and!1815)))

(declare-fun b_free!373 () Bool)

(declare-fun b_next!791 () Bool)

(assert (=> b!6951 (= b_free!373 (not b_next!791))))

(declare-fun tp!686 () Bool)

(declare-fun b_and!1817 () Bool)

(assert (=> b!6951 (= tp!686 b_and!1817)))

(declare-fun b_free!375 () Bool)

(declare-fun b_next!793 () Bool)

(assert (=> b!6951 (= b_free!375 (not b_next!793))))

(declare-fun tp!685 () Bool)

(declare-fun b_and!1819 () Bool)

(assert (=> b!6951 (= tp!685 b_and!1819)))

(declare-fun b_free!377 () Bool)

(declare-fun b_next!795 () Bool)

(assert (=> start!1238 (= b_free!377 (not b_next!795))))

(declare-fun tp!687 () Bool)

(declare-fun b_and!1821 () Bool)

(assert (=> start!1238 (= tp!687 b_and!1821)))

(declare-fun lambda!1091 () Int)

(declare-fun b_next!797 () Bool)

(declare-fun b!6954 () Bool)

(declare-fun f!690 () Int)

(assert (=> start!1238 (= b_next!795 (or (and b!6954 (= lambda!1091 f!690)) b_next!797))))

(declare-fun b!6955 () Bool)

(assert (=> b!6955 true))

(declare-fun lambda!1092 () Int)

(declare-datatypes () ((Balance!75 (Balance!76 (extraOpen!78 Int) (extraClose!78 Int)))))

(declare-datatypes () ((EqEvidence!56 (EqEvidence!57 (x!3782 Int) (y!452 Int) (evidence!95 Int)))))

(declare-fun thiss!1122 () EqEvidence!56)

(declare-fun b_next!799 () Bool)

(assert (=> b!6951 (= b_next!789 (or (and b!6955 (= lambda!1092 (x!3782 thiss!1122))) b_next!799))))

(declare-fun b_next!801 () Bool)

(assert (=> b!6951 (= b_next!791 (or (and b!6955 (= lambda!1092 (y!452 thiss!1122))) b_next!801))))

(declare-fun m!9791 () Bool)

(assert (=> b!6955 m!9791))

(declare-fun lambda!1093 () Int)

(assert (=> b!6955 (not (= lambda!1093 lambda!1092))))

(assert (=> b!6955 true))

(declare-fun dynLambda!117 (Int) Balance!75)

(assert (=> (and b!6951 b!6955 (= (dynLambda!117 lambda!1093) (dynLambda!117 (x!3782 thiss!1122)))) (= lambda!1093 (x!3782 thiss!1122))))

(assert (=> (and b!6951 b!6955 (= (dynLambda!117 lambda!1093) (dynLambda!117 (y!452 thiss!1122)))) (= lambda!1093 (y!452 thiss!1122))))

(declare-fun b_next!803 () Bool)

(assert (=> b!6951 (= b_next!799 (or (and b!6955 (= lambda!1093 (x!3782 thiss!1122))) b_next!803))))

(declare-fun b_next!805 () Bool)

(assert (=> b!6951 (= b_next!801 (or (and b!6955 (= lambda!1093 (y!452 thiss!1122))) b_next!805))))

(declare-fun m!9793 () Bool)

(assert (=> b!6955 m!9793))

(declare-fun lambda!1094 () Int)

(declare-fun dynLambda!118 (Int) Bool)

(assert (=> (and b!6951 b!6955 (= (dynLambda!118 lambda!1094) (dynLambda!118 (evidence!95 thiss!1122)))) (= lambda!1094 (evidence!95 thiss!1122))))

(declare-fun b_next!807 () Bool)

(assert (=> b!6951 (= b_next!793 (or (and b!6955 (= lambda!1094 (evidence!95 thiss!1122))) b_next!807))))

(declare-fun b!6950 () Bool)

(declare-fun e!4073 () Bool)

(declare-datatypes () ((List!147 (Nil!145) (Cons!144 (head!362 Balance!75) (tail!374 List!147)))))

(declare-fun thiss!1138 () List!147)

(declare-fun isEmpty!128 (List!147) Bool)

(assert (=> b!6950 (= e!4073 (isEmpty!128 thiss!1138))))

(declare-fun e!4072 () Bool)

(assert (=> b!6951 (= e!4072 (and tp!688 tp!686 tp!685))))

(declare-fun b!6952 () Bool)

(declare-fun res!1970 () Bool)

(assert (=> b!6952 (=> (not res!1970) (not e!4073))))

(declare-datatypes () ((Parenthesis!32 (CloseParenthesis!31) (OpenParenthesis!31))))

(declare-datatypes () ((List!148 (Nil!146) (Cons!145 (head!363 Parenthesis!32) (tail!375 List!148)))))

(declare-fun xs!372 () List!148)

(assert (=> b!6952 (= res!1970 (and (is-Cons!145 xs!372) (is-Nil!146 (tail!375 xs!372))))))

(declare-fun res!1965 () Bool)

(assert (=> start!1238 (=> (not res!1965) (not e!4073))))

(declare-fun isEmpty!129 (List!148) Bool)

(assert (=> start!1238 (= res!1965 (not (isEmpty!129 xs!372)))))

(assert (=> start!1238 e!4073))

(assert (=> start!1238 true))

(declare-fun inv!247 (EqEvidence!56) Bool)

(assert (=> start!1238 (and (inv!247 thiss!1122) e!4072)))

(assert (=> start!1238 tp!687))

(declare-fun b!6953 () Bool)

(declare-fun res!1968 () Bool)

(assert (=> b!6953 (=> (not res!1968) (not e!4073))))

(assert (=> b!6953 (= res!1968 (= f!690 lambda!1091))))

(declare-fun res!1966 () Bool)

(assert (=> b!6954 (=> (not res!1966) (not e!4073))))

(declare-datatypes () ((ProofOps!50 (ProofOps!51 (prop!135 Bool)))))

(declare-fun thiss!1106 () ProofOps!50)

(declare-fun lambda!1090 () Int)

(declare-fun foldRight1!21 (List!147 Int) Balance!75)

(declare-fun append!54 (List!147 List!147) List!147)

(declare-fun map!142 (List!148 Int) List!147)

(assert (=> b!6954 (= res!1966 (= thiss!1106 (ProofOps!51 (= (foldRight1!21 (append!54 (map!142 xs!372 lambda!1090) (Cons!144 (Balance!76 0 0) Nil!145)) lambda!1091) (foldRight1!21 (map!142 xs!372 lambda!1090) lambda!1091)))))))

(declare-fun res!1967 () Bool)

(assert (=> b!6955 (=> (not res!1967) (not e!4073))))

(assert (=> b!6955 (= res!1967 (= thiss!1122 (EqEvidence!57 lambda!1092 lambda!1093 lambda!1094)))))

(declare-fun b!6956 () Bool)

(declare-fun res!1969 () Bool)

(assert (=> b!6956 (=> (not res!1969) (not e!4073))))

(assert (=> b!6956 (= res!1969 (= thiss!1138 (map!142 xs!372 lambda!1090)))))

(assert (= (and start!1238 res!1965) b!6954))

(assert (= (and b!6954 res!1966) b!6952))

(assert (= (and b!6952 res!1970) b!6955))

(assert (= (and b!6955 res!1967) b!6956))

(assert (= (and b!6956 res!1969) b!6953))

(assert (= (and b!6953 res!1968) b!6950))

(assert (= start!1238 b!6951))

(declare-fun m!9795 () Bool)

(assert (=> b!6950 m!9795))

(declare-fun m!9797 () Bool)

(assert (=> start!1238 m!9797))

(declare-fun m!9799 () Bool)

(assert (=> start!1238 m!9799))

(declare-fun m!9801 () Bool)

(assert (=> b!6954 m!9801))

(declare-fun m!9803 () Bool)

(assert (=> b!6954 m!9803))

(declare-fun m!9805 () Bool)

(assert (=> b!6954 m!9805))

(assert (=> b!6954 m!9805))

(assert (=> b!6954 m!9805))

(assert (=> b!6954 m!9801))

(assert (=> b!6954 m!9805))

(declare-fun m!9807 () Bool)

(assert (=> b!6954 m!9807))

(assert (=> b!6956 m!9805))

(push 1)

(assert (not start!1238))

(assert (not b!6955))

(assert (not b_next!803))

(assert (not b!6954))

(assert b_and!1821)

(assert (not b_next!807))

(assert (not b_next!797))

(assert b_and!1819)

(assert (not b!6950))

(assert b_and!1817)

(assert (not b!6956))

(assert b_and!1815)

(assert (not b_next!805))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!803))

(assert b_and!1821)

(assert (not b_next!807))

(assert (not b_next!797))

(assert b_and!1819)

(assert b_and!1817)

(assert b_and!1815)

(assert (not b_next!805))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5479 () Bool)

(assert (=> d!5479 (= (isEmpty!129 xs!372) (is-Nil!146 xs!372))))

(assert (=> start!1238 d!5479))

(declare-fun d!5481 () Bool)

(declare-fun res!1973 () Bool)

(declare-fun e!4076 () Bool)

(assert (=> d!5481 (=> (not res!1973) (not e!4076))))

(assert (=> d!5481 (= res!1973 (= (dynLambda!117 (x!3782 thiss!1122)) (dynLambda!117 (y!452 thiss!1122))))))

(assert (=> d!5481 (= (inv!247 thiss!1122) e!4076)))

(declare-fun b!6961 () Bool)

(assert (=> b!6961 (= e!4076 (dynLambda!118 (evidence!95 thiss!1122)))))

(assert (= (and d!5481 res!1973) b!6961))

(declare-fun b_lambda!3307 () Bool)

(assert (=> (not b_lambda!3307) (not d!5481)))

(declare-fun t!1327 () Bool)

(declare-fun tb!987 () Bool)

(assert (=> (and b!6951 (= (x!3782 thiss!1122) (x!3782 thiss!1122)) t!1327) tb!987))

(declare-fun result!1027 () Bool)

(assert (=> tb!987 (= result!1027 true)))

(assert (=> d!5481 t!1327))

(declare-fun b_and!1823 () Bool)

(assert (= b_and!1815 (and (=> t!1327 result!1027) b_and!1823)))

(declare-fun t!1329 () Bool)

(declare-fun tb!989 () Bool)

(assert (=> (and b!6951 (= (y!452 thiss!1122) (x!3782 thiss!1122)) t!1329) tb!989))

(declare-fun result!1029 () Bool)

(assert (=> tb!989 (= result!1029 true)))

(assert (=> d!5481 t!1329))

(declare-fun b_and!1825 () Bool)

(assert (= b_and!1817 (and (=> t!1329 result!1029) b_and!1825)))

(declare-fun b_lambda!3309 () Bool)

(assert (=> (not b_lambda!3309) (not d!5481)))

(declare-fun t!1331 () Bool)

(declare-fun tb!991 () Bool)

(assert (=> (and b!6951 (= (x!3782 thiss!1122) (y!452 thiss!1122)) t!1331) tb!991))

(declare-fun result!1031 () Bool)

(assert (=> tb!991 (= result!1031 true)))

(assert (=> d!5481 t!1331))

(declare-fun b_and!1827 () Bool)

(assert (= b_and!1823 (and (=> t!1331 result!1031) b_and!1827)))

(declare-fun t!1333 () Bool)

(declare-fun tb!993 () Bool)

(assert (=> (and b!6951 (= (y!452 thiss!1122) (y!452 thiss!1122)) t!1333) tb!993))

(declare-fun result!1033 () Bool)

(assert (=> tb!993 (= result!1033 true)))

(assert (=> d!5481 t!1333))

(declare-fun b_and!1829 () Bool)

(assert (= b_and!1825 (and (=> t!1333 result!1033) b_and!1829)))

(declare-fun b_lambda!3311 () Bool)

(assert (=> (not b_lambda!3311) (not b!6961)))

(declare-fun t!1335 () Bool)

(declare-fun tb!995 () Bool)

(assert (=> (and b!6951 (= (evidence!95 thiss!1122) (evidence!95 thiss!1122)) t!1335) tb!995))

(declare-fun result!1035 () Bool)

(assert (=> tb!995 (= result!1035 true)))

(assert (=> b!6961 t!1335))

(declare-fun b_and!1831 () Bool)

(assert (= b_and!1819 (and (=> t!1335 result!1035) b_and!1831)))

(declare-fun m!9809 () Bool)

(assert (=> d!5481 m!9809))

(declare-fun m!9811 () Bool)

(assert (=> d!5481 m!9811))

(declare-fun m!9813 () Bool)

(assert (=> b!6961 m!9813))

(assert (=> start!1238 d!5481))

(declare-fun d!5483 () Bool)

(declare-fun c!2524 () Bool)

(assert (=> d!5483 (= c!2524 (is-Nil!146 xs!372))))

(declare-fun e!4079 () List!147)

(assert (=> d!5483 (= (map!142 xs!372 lambda!1090) e!4079)))

(declare-fun b!6966 () Bool)

(assert (=> b!6966 (= e!4079 Nil!145)))

(declare-fun b!6967 () Bool)

(declare-fun dynLambda!119 (Int Parenthesis!32) Balance!75)

(assert (=> b!6967 (= e!4079 (Cons!144 (dynLambda!119 lambda!1090 (head!363 xs!372)) (map!142 (tail!375 xs!372) lambda!1090)))))

(assert (= (and d!5483 c!2524) b!6966))

(assert (= (and d!5483 (not c!2524)) b!6967))

(declare-fun b_lambda!3313 () Bool)

(assert (=> (not b_lambda!3313) (not b!6967)))

(declare-fun m!9815 () Bool)

(assert (=> b!6967 m!9815))

(declare-fun m!9817 () Bool)

(assert (=> b!6967 m!9817))

(assert (=> b!6956 d!5483))

(declare-fun d!5485 () Bool)

(declare-fun fromParenthesis!0 (Parenthesis!32) Balance!75)

(assert (=> d!5485 (= (fromParenthesis!0 (head!363 xs!372)) (ite (is-OpenParenthesis!31 (head!363 xs!372)) (Balance!76 1 0) (Balance!76 0 1)))))

(assert (=> b!6955 d!5485))

(declare-fun d!5487 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!5487 (= trivial!1 true)))

(assert (=> b!6955 d!5487))

(declare-fun d!5489 () Bool)

(assert (=> d!5489 (= (isEmpty!128 thiss!1138) (is-Nil!145 thiss!1138))))

(assert (=> b!6950 d!5489))

(declare-fun d!5491 () Bool)

(declare-fun c!2527 () Bool)

(assert (=> d!5491 (= c!2527 (is-Nil!145 (map!142 xs!372 lambda!1090)))))

(declare-fun e!4082 () List!147)

(assert (=> d!5491 (= (append!54 (map!142 xs!372 lambda!1090) (Cons!144 (Balance!76 0 0) Nil!145)) e!4082)))

(declare-fun b!6972 () Bool)

(assert (=> b!6972 (= e!4082 (Cons!144 (Balance!76 0 0) Nil!145))))

(declare-fun b!6973 () Bool)

(assert (=> b!6973 (= e!4082 (Cons!144 (head!362 (map!142 xs!372 lambda!1090)) (append!54 (tail!374 (map!142 xs!372 lambda!1090)) (Cons!144 (Balance!76 0 0) Nil!145))))))

(assert (= (and d!5491 c!2527) b!6972))

(assert (= (and d!5491 (not c!2527)) b!6973))

(declare-fun m!9819 () Bool)

(assert (=> b!6973 m!9819))

(assert (=> b!6954 d!5491))

(declare-fun d!5493 () Bool)

(declare-fun c!2530 () Bool)

(assert (=> d!5493 (= c!2530 (and (is-Cons!144 (map!142 xs!372 lambda!1090)) (is-Nil!145 (tail!374 (map!142 xs!372 lambda!1090)))))))

(declare-fun e!4085 () Balance!75)

(assert (=> d!5493 (= (foldRight1!21 (map!142 xs!372 lambda!1090) lambda!1091) e!4085)))

(declare-fun b!6978 () Bool)

(assert (=> b!6978 (= e!4085 (head!362 (map!142 xs!372 lambda!1090)))))

(declare-fun b!6979 () Bool)

(declare-fun dynLambda!120 (Int Balance!75 Balance!75) Balance!75)

(assert (=> b!6979 (= e!4085 (dynLambda!120 lambda!1091 (head!362 (map!142 xs!372 lambda!1090)) (foldRight1!21 (tail!374 (map!142 xs!372 lambda!1090)) lambda!1091)))))

(assert (= (and d!5493 c!2530) b!6978))

(assert (= (and d!5493 (not c!2530)) b!6979))

(declare-fun b_lambda!3315 () Bool)

(assert (=> (not b_lambda!3315) (not b!6979)))

(declare-fun m!9821 () Bool)

(assert (=> b!6979 m!9821))

(assert (=> b!6979 m!9821))

(declare-fun m!9823 () Bool)

(assert (=> b!6979 m!9823))

(assert (=> b!6954 d!5493))

(assert (=> b!6954 d!5483))

(declare-fun d!5495 () Bool)

(declare-fun c!2531 () Bool)

(assert (=> d!5495 (= c!2531 (and (is-Cons!144 (append!54 (map!142 xs!372 lambda!1090) (Cons!144 (Balance!76 0 0) Nil!145))) (is-Nil!145 (tail!374 (append!54 (map!142 xs!372 lambda!1090) (Cons!144 (Balance!76 0 0) Nil!145))))))))

(declare-fun e!4086 () Balance!75)

(assert (=> d!5495 (= (foldRight1!21 (append!54 (map!142 xs!372 lambda!1090) (Cons!144 (Balance!76 0 0) Nil!145)) lambda!1091) e!4086)))

(declare-fun b!6980 () Bool)

(assert (=> b!6980 (= e!4086 (head!362 (append!54 (map!142 xs!372 lambda!1090) (Cons!144 (Balance!76 0 0) Nil!145))))))

(declare-fun b!6981 () Bool)

(assert (=> b!6981 (= e!4086 (dynLambda!120 lambda!1091 (head!362 (append!54 (map!142 xs!372 lambda!1090) (Cons!144 (Balance!76 0 0) Nil!145))) (foldRight1!21 (tail!374 (append!54 (map!142 xs!372 lambda!1090) (Cons!144 (Balance!76 0 0) Nil!145))) lambda!1091)))))

(assert (= (and d!5495 c!2531) b!6980))

(assert (= (and d!5495 (not c!2531)) b!6981))

(declare-fun b_lambda!3317 () Bool)

(assert (=> (not b_lambda!3317) (not b!6981)))

(declare-fun m!9825 () Bool)

(assert (=> b!6981 m!9825))

(assert (=> b!6981 m!9825))

(declare-fun m!9827 () Bool)

(assert (=> b!6981 m!9827))

(assert (=> b!6954 d!5495))

(declare-fun b_lambda!3319 () Bool)

(assert (= b_lambda!3311 (or (and b!6955 (= lambda!1094 (evidence!95 thiss!1122))) (and b!6951 b_free!375) b_lambda!3319)))

(declare-fun bs!1571 () Bool)

(declare-fun d!5497 () Bool)

(assert (= bs!1571 (and d!5497 b!6955)))

(assert (=> bs!1571 (= (dynLambda!118 lambda!1094) trivial!1)))

(assert (=> (and b!6955 (= lambda!1094 (evidence!95 thiss!1122)) b!6961) d!5497))

(declare-fun b_lambda!3321 () Bool)

(assert (= b_lambda!3315 (or b!6954 b_lambda!3321)))

(declare-fun bs!1572 () Bool)

(declare-fun d!5499 () Bool)

(assert (= bs!1572 (and d!5499 b!6954)))

(declare-fun ++!3 (Balance!75 Balance!75) Balance!75)

(assert (=> bs!1572 (= (dynLambda!120 lambda!1091 (head!362 (map!142 xs!372 lambda!1090)) (foldRight1!21 (tail!374 (map!142 xs!372 lambda!1090)) lambda!1091)) (++!3 (head!362 (map!142 xs!372 lambda!1090)) (foldRight1!21 (tail!374 (map!142 xs!372 lambda!1090)) lambda!1091)))))

(assert (=> bs!1572 m!9821))

(declare-fun m!9829 () Bool)

(assert (=> bs!1572 m!9829))

(assert (=> b!6979 d!5499))

(declare-fun b_lambda!3323 () Bool)

(assert (= b_lambda!3313 (or b!6954 b_lambda!3323)))

(declare-fun bs!1573 () Bool)

(declare-fun d!5501 () Bool)

(assert (= bs!1573 (and d!5501 b!6954)))

(assert (=> bs!1573 (= (dynLambda!119 lambda!1090 (head!363 xs!372)) (fromParenthesis!0 (head!363 xs!372)))))

(assert (=> bs!1573 m!9791))

(assert (=> b!6967 d!5501))

(declare-fun b_lambda!3325 () Bool)

(assert (= b_lambda!3309 (or (and b!6955 (= lambda!1092 (y!452 thiss!1122))) (and b!6955 (= lambda!1093 (y!452 thiss!1122))) (and b!6951 b_free!371 (= (x!3782 thiss!1122) (y!452 thiss!1122))) (and b!6951 b_free!373) b_lambda!3325)))

(declare-fun bs!1574 () Bool)

(declare-fun d!5503 () Bool)

(assert (= bs!1574 (and d!5503 b!6955)))

(assert (=> bs!1574 (= (dynLambda!117 lambda!1092) (foldRight1!21 (append!54 (map!142 xs!372 lambda!1090) (Cons!144 (Balance!76 0 0) Nil!145)) lambda!1091))))

(assert (=> bs!1574 m!9805))

(assert (=> bs!1574 m!9805))

(assert (=> bs!1574 m!9801))

(assert (=> bs!1574 m!9801))

(assert (=> bs!1574 m!9803))

(assert (=> (and b!6955 (= lambda!1092 (y!452 thiss!1122)) d!5481) d!5503))

(declare-fun bs!1575 () Bool)

(declare-fun d!5505 () Bool)

(assert (= bs!1575 (and d!5505 b!6955)))

(assert (=> bs!1575 (= (dynLambda!117 lambda!1093) (fromParenthesis!0 (head!363 xs!372)))))

(assert (=> (and b!6955 (= lambda!1093 (y!452 thiss!1122)) d!5481) d!5505))

(declare-fun b_lambda!3327 () Bool)

(assert (= b_lambda!3307 (or (and b!6955 (= lambda!1092 (x!3782 thiss!1122))) (and b!6955 (= lambda!1093 (x!3782 thiss!1122))) (and b!6951 b_free!371) (and b!6951 b_free!373 (= (y!452 thiss!1122) (x!3782 thiss!1122))) b_lambda!3327)))

(declare-fun bs!1576 () Bool)

(declare-fun d!5507 () Bool)

(assert (= bs!1576 (and d!5507 b!6955)))

(assert (=> bs!1576 (= (dynLambda!117 lambda!1092) (foldRight1!21 (append!54 (map!142 xs!372 lambda!1090) (Cons!144 (Balance!76 0 0) Nil!145)) lambda!1091))))

(assert (=> bs!1576 m!9805))

(assert (=> bs!1576 m!9805))

(assert (=> bs!1576 m!9801))

(assert (=> bs!1576 m!9801))

(assert (=> bs!1576 m!9803))

(assert (=> (and b!6955 (= lambda!1092 (x!3782 thiss!1122)) d!5481) d!5507))

(declare-fun bs!1577 () Bool)

(declare-fun d!5509 () Bool)

(assert (= bs!1577 (and d!5509 b!6955)))

(assert (=> bs!1577 (= (dynLambda!117 lambda!1093) (fromParenthesis!0 (head!363 xs!372)))))

(assert (=> (and b!6955 (= lambda!1093 (x!3782 thiss!1122)) d!5481) d!5509))

(declare-fun b_lambda!3329 () Bool)

(assert (= b_lambda!3317 (or b!6954 b_lambda!3329)))

(declare-fun bs!1578 () Bool)

(declare-fun d!5511 () Bool)

(assert (= bs!1578 (and d!5511 b!6954)))

(assert (=> bs!1578 (= (dynLambda!120 lambda!1091 (head!362 (append!54 (map!142 xs!372 lambda!1090) (Cons!144 (Balance!76 0 0) Nil!145))) (foldRight1!21 (tail!374 (append!54 (map!142 xs!372 lambda!1090) (Cons!144 (Balance!76 0 0) Nil!145))) lambda!1091)) (++!3 (head!362 (append!54 (map!142 xs!372 lambda!1090) (Cons!144 (Balance!76 0 0) Nil!145))) (foldRight1!21 (tail!374 (append!54 (map!142 xs!372 lambda!1090) (Cons!144 (Balance!76 0 0) Nil!145))) lambda!1091)))))

(assert (=> bs!1578 m!9825))

(declare-fun m!9831 () Bool)

(assert (=> bs!1578 m!9831))

(assert (=> b!6981 d!5511))

(push 1)

(assert b_and!1831)

(assert (not b_next!803))

(assert b_and!1827)

(assert b_and!1821)

(assert (not b_next!807))

(assert (not b_next!797))

(assert (not b!6979))

(assert (not b_lambda!3323))

(assert (not bs!1578))

(assert (not b_lambda!3321))

(assert (not b_lambda!3329))

(assert (not b_lambda!3319))

(assert (not b!6981))

(assert (not bs!1572))

(assert (not bs!1574))

(assert (not bs!1573))

(assert b_and!1829)

(assert (not b!6973))

(assert (not b_lambda!3327))

(assert (not bs!1576))

(assert (not b!6967))

(assert (not b_lambda!3325))

(assert (not b_next!805))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1831)

(assert (not b_next!803))

(assert b_and!1827)

(assert b_and!1821)

(assert (not b_next!807))

(assert (not b_next!797))

(assert b_and!1829)

(assert (not b_next!805))

(check-sat)

(pop 1)

