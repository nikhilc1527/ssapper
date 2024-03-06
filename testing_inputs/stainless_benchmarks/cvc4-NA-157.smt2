; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1016 () Bool)

(assert start!1016)

(declare-fun b!6296 () Bool)

(declare-fun b_free!177 () Bool)

(declare-fun b_next!367 () Bool)

(assert (=> b!6296 (= b_free!177 (not b_next!367))))

(declare-fun tp!396 () Bool)

(declare-fun b_and!1249 () Bool)

(assert (=> b!6296 (= tp!396 b_and!1249)))

(declare-fun b_free!179 () Bool)

(declare-fun b_next!369 () Bool)

(assert (=> b!6296 (= b_free!179 (not b_next!369))))

(declare-fun tp!394 () Bool)

(declare-fun b_and!1251 () Bool)

(assert (=> b!6296 (= tp!394 b_and!1251)))

(declare-fun b_free!181 () Bool)

(declare-fun b_next!371 () Bool)

(assert (=> b!6296 (= b_free!181 (not b_next!371))))

(declare-fun tp!395 () Bool)

(declare-fun b_and!1253 () Bool)

(assert (=> b!6296 (= tp!395 b_and!1253)))

(declare-fun b_free!183 () Bool)

(declare-fun b_next!373 () Bool)

(assert (=> start!1016 (= b_free!183 (not b_next!373))))

(declare-fun tp!397 () Bool)

(declare-fun b_and!1255 () Bool)

(assert (=> start!1016 (= tp!397 b_and!1255)))

(declare-fun b!6299 () Bool)

(assert (=> b!6299 true))

(declare-datatypes () ((Balance!33 (Balance!34 (extraOpen!57 Int) (extraClose!57 Int)))))

(declare-datatypes () ((EqEvidence!24 (EqEvidence!25 (x!3318 Int) (y!429 Int) (evidence!79 Int)))))

(declare-fun thiss!1203 () EqEvidence!24)

(declare-fun b_next!375 () Bool)

(declare-fun lambda!505 () Int)

(assert (=> b!6296 (= b_next!367 (or (and b!6299 (= lambda!505 (x!3318 thiss!1203))) b_next!375))))

(declare-fun b_next!377 () Bool)

(assert (=> b!6296 (= b_next!369 (or (and b!6299 (= lambda!505 (y!429 thiss!1203))) b_next!377))))

(declare-fun b_next!379 () Bool)

(declare-fun lambda!507 () Int)

(declare-fun f!726 () Int)

(assert (=> start!1016 (= b_next!373 (or (and b!6299 (= lambda!507 f!726)) b_next!379))))

(declare-fun lambda!509 () Int)

(assert (=> b!6299 (not (= lambda!509 lambda!505))))

(assert (=> b!6299 true))

(declare-fun b_next!381 () Bool)

(assert (=> b!6296 (= b_next!375 (or (and b!6299 (= lambda!509 (x!3318 thiss!1203))) b_next!381))))

(declare-fun b_next!383 () Bool)

(assert (=> b!6296 (= b_next!377 (or (and b!6299 (= lambda!509 (y!429 thiss!1203))) b_next!383))))

(assert (=> b!6299 true))

(declare-fun b_next!385 () Bool)

(declare-fun lambda!510 () Int)

(assert (=> b!6296 (= b_next!371 (or (and b!6299 (= lambda!510 (evidence!79 thiss!1203))) b_next!385))))

(declare-fun b!6295 () Bool)

(declare-fun res!1707 () Bool)

(declare-fun e!3754 () Bool)

(assert (=> b!6295 (=> (not res!1707) (not e!3754))))

(declare-datatypes () ((ProofOps!28 (ProofOps!29 (prop!121 Bool)))))

(declare-fun thiss!1201 () ProofOps!28)

(declare-datatypes () ((Parenthesis!19 (CloseParenthesis!18) (OpenParenthesis!18))))

(declare-datatypes () ((List!121 (Nil!119) (Cons!118 (head!336 Parenthesis!19) (tail!348 List!121)))))

(declare-fun xs!395 () List!121)

(declare-fun isMatchedSequential!0 (List!121) Bool)

(declare-fun isMatchedHybid!0 (List!121) Bool)

(assert (=> b!6295 (= res!1707 (= thiss!1201 (ProofOps!29 (= (isMatchedSequential!0 xs!395) (isMatchedHybid!0 xs!395)))))))

(declare-fun e!3753 () Bool)

(assert (=> b!6296 (= e!3753 (and tp!396 tp!394 tp!395))))

(declare-fun b!6297 () Bool)

(declare-fun res!1708 () Bool)

(assert (=> b!6297 (=> (not res!1708) (not e!3754))))

(declare-fun lambda!508 () Int)

(declare-datatypes () ((List!122 (Nil!120) (Cons!119 (head!337 Balance!33) (tail!349 List!122)))))

(declare-fun thiss!1251 () List!122)

(declare-fun map!129 (List!121 Int) List!122)

(assert (=> b!6297 (= res!1708 (= thiss!1251 (map!129 xs!395 lambda!508)))))

(declare-fun b!6298 () Bool)

(declare-fun isEmpty!111 (List!122) Bool)

(assert (=> b!6298 (= e!3754 (isEmpty!111 thiss!1251))))

(declare-fun res!1706 () Bool)

(assert (=> b!6299 (=> (not res!1706) (not e!3754))))

(assert (=> b!6299 (= res!1706 (= thiss!1203 (EqEvidence!25 lambda!505 lambda!509 lambda!510)))))

(declare-fun res!1709 () Bool)

(assert (=> start!1016 (=> (not res!1709) (not e!3754))))

(declare-fun isEmpty!112 (List!121) Bool)

(assert (=> start!1016 (= res!1709 (not (isEmpty!112 xs!395)))))

(assert (=> start!1016 e!3754))

(declare-fun inv!224 (EqEvidence!24) Bool)

(assert (=> start!1016 (and (inv!224 thiss!1203) e!3753)))

(assert (=> start!1016 true))

(assert (=> start!1016 tp!397))

(declare-fun b!6300 () Bool)

(declare-fun res!1705 () Bool)

(assert (=> b!6300 (=> (not res!1705) (not e!3754))))

(assert (=> b!6300 (= res!1705 (= f!726 lambda!507))))

(assert (= (and start!1016 res!1709) b!6295))

(assert (= (and b!6295 res!1707) b!6299))

(assert (= (and b!6299 res!1706) b!6297))

(assert (= (and b!6297 res!1708) b!6300))

(assert (= (and b!6300 res!1705) b!6298))

(assert (= start!1016 b!6296))

(declare-fun m!9033 () Bool)

(assert (=> b!6295 m!9033))

(declare-fun m!9035 () Bool)

(assert (=> b!6295 m!9035))

(declare-fun m!9037 () Bool)

(assert (=> b!6297 m!9037))

(declare-fun m!9039 () Bool)

(assert (=> b!6298 m!9039))

(declare-fun m!9041 () Bool)

(assert (=> start!1016 m!9041))

(declare-fun m!9043 () Bool)

(assert (=> start!1016 m!9043))

(push 1)

(assert b_and!1251)

(assert (not b_next!385))

(assert (not b!6295))

(assert b_and!1249)

(assert (not b_next!381))

(assert b_and!1253)

(assert (not b_next!383))

(assert (not b!6298))

(assert (not b!6297))

(assert (not b_next!379))

(assert b_and!1255)

(assert (not start!1016))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1251)

(assert (not b_next!385))

(assert b_and!1249)

(assert (not b_next!381))

(assert b_and!1253)

(assert (not b_next!383))

(assert (not b_next!379))

(assert b_and!1255)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1298 () Bool)

(declare-fun d!5017 () Bool)

(assert (= bs!1298 (and d!5017 b!6299)))

(declare-fun lambda!513 () Int)

(declare-fun lambda!506 () Int)

(assert (=> bs!1298 (= lambda!513 lambda!506)))

(declare-fun isBalanced!0 (Balance!33) Bool)

(declare-fun foldRight!13 (List!121 Balance!33 Int) Balance!33)

(assert (=> d!5017 (= (isMatchedSequential!0 xs!395) (isBalanced!0 (foldRight!13 xs!395 (Balance!34 0 0) lambda!513)))))

(declare-fun bs!1299 () Bool)

(assert (= bs!1299 d!5017))

(declare-fun m!9045 () Bool)

(assert (=> bs!1299 m!9045))

(assert (=> bs!1299 m!9045))

(declare-fun m!9047 () Bool)

(assert (=> bs!1299 m!9047))

(assert (=> b!6295 d!5017))

(declare-fun bs!1300 () Bool)

(declare-fun d!5019 () Bool)

(assert (= bs!1300 (and d!5019 b!6299)))

(declare-fun lambda!518 () Int)

(assert (=> bs!1300 (= lambda!518 lambda!508)))

(declare-fun lambda!519 () Int)

(assert (=> bs!1300 (= lambda!519 lambda!507)))

(declare-fun b_next!387 () Bool)

(assert (=> start!1016 (= b_next!379 (or (and d!5019 (= lambda!519 f!726)) b_next!387))))

(declare-fun foldRight1!10 (List!122 Int) Balance!33)

(assert (=> d!5019 (= (isMatchedHybid!0 xs!395) (isBalanced!0 (foldRight1!10 (map!129 xs!395 lambda!518) lambda!519)))))

(declare-fun bs!1301 () Bool)

(assert (= bs!1301 d!5019))

(declare-fun m!9049 () Bool)

(assert (=> bs!1301 m!9049))

(assert (=> bs!1301 m!9049))

(declare-fun m!9051 () Bool)

(assert (=> bs!1301 m!9051))

(assert (=> bs!1301 m!9051))

(declare-fun m!9053 () Bool)

(assert (=> bs!1301 m!9053))

(assert (=> b!6295 d!5019))

(declare-fun d!5021 () Bool)

(declare-fun c!2367 () Bool)

(assert (=> d!5021 (= c!2367 (is-Nil!119 xs!395))))

(declare-fun e!3757 () List!122)

(assert (=> d!5021 (= (map!129 xs!395 lambda!508) e!3757)))

(declare-fun b!6309 () Bool)

(assert (=> b!6309 (= e!3757 Nil!120)))

(declare-fun b!6310 () Bool)

(declare-fun dynLambda!79 (Int Parenthesis!19) Balance!33)

(assert (=> b!6310 (= e!3757 (Cons!119 (dynLambda!79 lambda!508 (head!336 xs!395)) (map!129 (tail!348 xs!395) lambda!508)))))

(assert (= (and d!5021 c!2367) b!6309))

(assert (= (and d!5021 (not c!2367)) b!6310))

(declare-fun b_lambda!2971 () Bool)

(assert (=> (not b_lambda!2971) (not b!6310)))

(declare-fun m!9055 () Bool)

(assert (=> b!6310 m!9055))

(declare-fun m!9057 () Bool)

(assert (=> b!6310 m!9057))

(assert (=> b!6297 d!5021))

(declare-fun d!5023 () Bool)

(assert (=> d!5023 (= (isEmpty!112 xs!395) (is-Nil!119 xs!395))))

(assert (=> start!1016 d!5023))

(declare-fun d!5025 () Bool)

(declare-fun res!1712 () Bool)

(declare-fun e!3760 () Bool)

(assert (=> d!5025 (=> (not res!1712) (not e!3760))))

(declare-fun dynLambda!80 (Int) Balance!33)

(assert (=> d!5025 (= res!1712 (= (dynLambda!80 (x!3318 thiss!1203)) (dynLambda!80 (y!429 thiss!1203))))))

(assert (=> d!5025 (= (inv!224 thiss!1203) e!3760)))

(declare-fun b!6313 () Bool)

(declare-fun dynLambda!81 (Int) Bool)

(assert (=> b!6313 (= e!3760 (dynLambda!81 (evidence!79 thiss!1203)))))

(assert (= (and d!5025 res!1712) b!6313))

(declare-fun b_lambda!2973 () Bool)

(assert (=> (not b_lambda!2973) (not d!5025)))

(declare-fun t!1033 () Bool)

(declare-fun tb!693 () Bool)

(assert (=> (and b!6296 (= (x!3318 thiss!1203) (x!3318 thiss!1203)) t!1033) tb!693))

(declare-fun result!733 () Bool)

(assert (=> tb!693 (= result!733 true)))

(assert (=> d!5025 t!1033))

(declare-fun b_and!1257 () Bool)

(assert (= b_and!1249 (and (=> t!1033 result!733) b_and!1257)))

(declare-fun t!1035 () Bool)

(declare-fun tb!695 () Bool)

(assert (=> (and b!6296 (= (y!429 thiss!1203) (x!3318 thiss!1203)) t!1035) tb!695))

(declare-fun result!735 () Bool)

(assert (=> tb!695 (= result!735 true)))

(assert (=> d!5025 t!1035))

(declare-fun b_and!1259 () Bool)

(assert (= b_and!1251 (and (=> t!1035 result!735) b_and!1259)))

(declare-fun b_lambda!2975 () Bool)

(assert (=> (not b_lambda!2975) (not d!5025)))

(declare-fun t!1037 () Bool)

(declare-fun tb!697 () Bool)

(assert (=> (and b!6296 (= (x!3318 thiss!1203) (y!429 thiss!1203)) t!1037) tb!697))

(declare-fun result!737 () Bool)

(assert (=> tb!697 (= result!737 true)))

(assert (=> d!5025 t!1037))

(declare-fun b_and!1261 () Bool)

(assert (= b_and!1257 (and (=> t!1037 result!737) b_and!1261)))

(declare-fun t!1039 () Bool)

(declare-fun tb!699 () Bool)

(assert (=> (and b!6296 (= (y!429 thiss!1203) (y!429 thiss!1203)) t!1039) tb!699))

(declare-fun result!739 () Bool)

(assert (=> tb!699 (= result!739 true)))

(assert (=> d!5025 t!1039))

(declare-fun b_and!1263 () Bool)

(assert (= b_and!1259 (and (=> t!1039 result!739) b_and!1263)))

(declare-fun b_lambda!2977 () Bool)

(assert (=> (not b_lambda!2977) (not b!6313)))

(declare-fun t!1041 () Bool)

(declare-fun tb!701 () Bool)

(assert (=> (and b!6296 (= (evidence!79 thiss!1203) (evidence!79 thiss!1203)) t!1041) tb!701))

(declare-fun result!741 () Bool)

(assert (=> tb!701 (= result!741 true)))

(assert (=> b!6313 t!1041))

(declare-fun b_and!1265 () Bool)

(assert (= b_and!1253 (and (=> t!1041 result!741) b_and!1265)))

(declare-fun m!9059 () Bool)

(assert (=> d!5025 m!9059))

(declare-fun m!9061 () Bool)

(assert (=> d!5025 m!9061))

(declare-fun m!9063 () Bool)

(assert (=> b!6313 m!9063))

(assert (=> start!1016 d!5025))

(declare-fun d!5027 () Bool)

(assert (=> d!5027 (= (isEmpty!111 thiss!1251) (is-Nil!120 thiss!1251))))

(assert (=> b!6298 d!5027))

(declare-fun b_lambda!2979 () Bool)

(assert (= b_lambda!2977 (or (and b!6299 (= lambda!510 (evidence!79 thiss!1203))) (and b!6296 b_free!181) b_lambda!2979)))

(declare-fun bs!1302 () Bool)

(declare-fun d!5029 () Bool)

(assert (= bs!1302 (and d!5029 b!6299)))

(declare-fun remove_null_balance!0 (List!121) Bool)

(assert (=> bs!1302 (= (dynLambda!81 lambda!510) (remove_null_balance!0 xs!395))))

(declare-fun m!9065 () Bool)

(assert (=> bs!1302 m!9065))

(assert (=> (and b!6299 (= lambda!510 (evidence!79 thiss!1203)) b!6313) d!5029))

(declare-fun b_lambda!2981 () Bool)

(assert (= b_lambda!2975 (or (and b!6299 (= lambda!505 (y!429 thiss!1203))) (and b!6299 (= lambda!509 (y!429 thiss!1203))) (and b!6296 b_free!177 (= (x!3318 thiss!1203) (y!429 thiss!1203))) (and b!6296 b_free!179) b_lambda!2981)))

(declare-fun bs!1303 () Bool)

(declare-fun d!5031 () Bool)

(assert (= bs!1303 (and d!5031 b!6299)))

(assert (=> bs!1303 (= (dynLambda!80 lambda!505) (foldRight!13 xs!395 (Balance!34 0 0) lambda!506))))

(declare-fun m!9067 () Bool)

(assert (=> bs!1303 m!9067))

(assert (=> (and b!6299 (= lambda!505 (y!429 thiss!1203)) d!5025) d!5031))

(declare-fun bs!1304 () Bool)

(declare-fun d!5033 () Bool)

(assert (= bs!1304 (and d!5033 b!6299)))

(declare-fun append!46 (List!122 List!122) List!122)

(assert (=> bs!1304 (= (dynLambda!80 lambda!509) (foldRight1!10 (append!46 (map!129 xs!395 lambda!508) (Cons!119 (Balance!34 0 0) Nil!120)) lambda!507))))

(assert (=> bs!1304 m!9037))

(assert (=> bs!1304 m!9037))

(declare-fun m!9069 () Bool)

(assert (=> bs!1304 m!9069))

(assert (=> bs!1304 m!9069))

(declare-fun m!9071 () Bool)

(assert (=> bs!1304 m!9071))

(assert (=> (and b!6299 (= lambda!509 (y!429 thiss!1203)) d!5025) d!5033))

(declare-fun b_lambda!2983 () Bool)

(assert (= b_lambda!2973 (or (and b!6299 (= lambda!505 (x!3318 thiss!1203))) (and b!6299 (= lambda!509 (x!3318 thiss!1203))) (and b!6296 b_free!177) (and b!6296 b_free!179 (= (y!429 thiss!1203) (x!3318 thiss!1203))) b_lambda!2983)))

(declare-fun bs!1305 () Bool)

(declare-fun d!5035 () Bool)

(assert (= bs!1305 (and d!5035 b!6299)))

(assert (=> bs!1305 (= (dynLambda!80 lambda!505) (foldRight!13 xs!395 (Balance!34 0 0) lambda!506))))

(assert (=> bs!1305 m!9067))

(assert (=> (and b!6299 (= lambda!505 (x!3318 thiss!1203)) d!5025) d!5035))

(declare-fun bs!1306 () Bool)

(declare-fun d!5037 () Bool)

(assert (= bs!1306 (and d!5037 b!6299)))

(assert (=> bs!1306 (= (dynLambda!80 lambda!509) (foldRight1!10 (append!46 (map!129 xs!395 lambda!508) (Cons!119 (Balance!34 0 0) Nil!120)) lambda!507))))

(assert (=> bs!1306 m!9037))

(assert (=> bs!1306 m!9037))

(assert (=> bs!1306 m!9069))

(assert (=> bs!1306 m!9069))

(assert (=> bs!1306 m!9071))

(assert (=> (and b!6299 (= lambda!509 (x!3318 thiss!1203)) d!5025) d!5037))

(declare-fun b_lambda!2985 () Bool)

(assert (= b_lambda!2971 (or b!6299 b_lambda!2985)))

(declare-fun bs!1307 () Bool)

(declare-fun d!5039 () Bool)

(assert (= bs!1307 (and d!5039 b!6299)))

(declare-fun fromParenthesis!0 (Parenthesis!19) Balance!33)

(assert (=> bs!1307 (= (dynLambda!79 lambda!508 (head!336 xs!395)) (fromParenthesis!0 (head!336 xs!395)))))

(declare-fun m!9073 () Bool)

(assert (=> bs!1307 m!9073))

(assert (=> b!6310 d!5039))

(push 1)

(assert b_and!1261)

(assert (not b_lambda!2983))

(assert (not bs!1305))

(assert (not d!5017))

(assert (not bs!1302))

(assert b_and!1265)

(assert (not b_next!385))

(assert (not d!5019))

(assert (not b_lambda!2985))

(assert (not b_next!387))

(assert b_and!1263)

(assert (not b!6310))

(assert (not b_lambda!2979))

(assert (not b_next!381))

(assert (not bs!1304))

(assert (not bs!1307))

(assert (not b_next!383))

(assert (not bs!1303))

(assert (not bs!1306))

(assert (not b_lambda!2981))

(assert b_and!1255)

(check-sat)

(pop 1)

(push 1)

(assert b_and!1261)

(assert b_and!1265)

(assert (not b_next!385))

(assert (not b_next!387))

(assert b_and!1263)

(assert (not b_next!381))

(assert (not b_next!383))

(assert b_and!1255)

(check-sat)

(pop 1)

