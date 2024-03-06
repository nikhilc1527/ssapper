; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1342 () Bool)

(assert start!1342)

(declare-fun b!7277 () Bool)

(declare-fun b_free!421 () Bool)

(declare-fun b_next!909 () Bool)

(assert (=> b!7277 (= b_free!421 (not b_next!909))))

(declare-fun tp!764 () Bool)

(declare-fun b_and!1949 () Bool)

(assert (=> b!7277 (= tp!764 b_and!1949)))

(declare-fun b_free!423 () Bool)

(declare-fun b_next!911 () Bool)

(assert (=> b!7277 (= b_free!423 (not b_next!911))))

(declare-fun tp!769 () Bool)

(declare-fun b_and!1951 () Bool)

(assert (=> b!7277 (= tp!769 b_and!1951)))

(declare-fun b_free!425 () Bool)

(declare-fun b_next!913 () Bool)

(assert (=> b!7277 (= b_free!425 (not b_next!913))))

(declare-fun tp!765 () Bool)

(declare-fun b_and!1953 () Bool)

(assert (=> b!7277 (= tp!765 b_and!1953)))

(declare-fun b_free!427 () Bool)

(declare-fun b_next!915 () Bool)

(assert (=> start!1342 (= b_free!427 (not b_next!915))))

(declare-fun tp!768 () Bool)

(declare-fun b_and!1955 () Bool)

(assert (=> start!1342 (= tp!768 b_and!1955)))

(declare-fun b!7278 () Bool)

(declare-fun b_free!429 () Bool)

(declare-fun b_next!917 () Bool)

(assert (=> b!7278 (= b_free!429 (not b_next!917))))

(declare-fun tp!766 () Bool)

(declare-fun b_and!1957 () Bool)

(assert (=> b!7278 (= tp!766 b_and!1957)))

(declare-fun b_free!431 () Bool)

(declare-fun b_next!919 () Bool)

(assert (=> b!7278 (= b_free!431 (not b_next!919))))

(declare-fun tp!767 () Bool)

(declare-fun b_and!1959 () Bool)

(assert (=> b!7278 (= tp!767 b_and!1959)))

(declare-fun b!7280 () Bool)

(assert (=> b!7280 true))

(declare-datatypes () ((Balance!89 (Balance!90 (extraOpen!85 Int) (extraClose!85 Int)))))

(declare-datatypes () ((EqEvidence!66 (EqEvidence!67 (x!3961 Int) (y!459 Int) (evidence!100 Int)))))

(declare-fun thiss!1124 () EqEvidence!66)

(declare-fun lambda!1296 () Int)

(declare-fun b_next!921 () Bool)

(assert (=> b!7277 (= b_next!909 (or (and b!7280 (= lambda!1296 (x!3961 thiss!1124))) b_next!921))))

(declare-fun b_next!923 () Bool)

(assert (=> b!7277 (= b_next!911 (or (and b!7280 (= lambda!1296 (y!459 thiss!1124))) b_next!923))))

(declare-fun b_next!925 () Bool)

(declare-datatypes () ((EqProof!34 (EqProof!35 (x!3962 Int) (y!460 Int)))))

(declare-fun thiss!1134 () EqProof!34)

(assert (=> b!7278 (= b_next!917 (or (and b!7280 (= lambda!1296 (x!3962 thiss!1134))) b_next!925))))

(declare-fun b_next!927 () Bool)

(assert (=> b!7278 (= b_next!919 (or (and b!7280 (= lambda!1296 (y!460 thiss!1134))) b_next!927))))

(declare-fun m!10111 () Bool)

(assert (=> b!7280 m!10111))

(declare-fun lambda!1297 () Int)

(declare-fun dynLambda!143 (Int) Bool)

(assert (=> (and b!7277 b!7280 (= (dynLambda!143 lambda!1297) (dynLambda!143 (evidence!100 thiss!1124)))) (= lambda!1297 (evidence!100 thiss!1124))))

(declare-fun proof!285 () Int)

(assert (=> (and start!1342 b!7280 (= (dynLambda!143 lambda!1297) (dynLambda!143 proof!285))) (= lambda!1297 proof!285)))

(declare-fun b_next!929 () Bool)

(assert (=> b!7277 (= b_next!913 (or (and b!7280 (= lambda!1297 (evidence!100 thiss!1124))) b_next!929))))

(declare-fun b_next!931 () Bool)

(assert (=> start!1342 (= b_next!915 (or (and b!7280 (= lambda!1297 proof!285)) b_next!931))))

(declare-fun b!7281 () Bool)

(declare-fun m!10113 () Bool)

(assert (=> b!7281 m!10113))

(assert (=> b!7281 m!10113))

(declare-fun m!10115 () Bool)

(assert (=> b!7281 m!10115))

(declare-fun bs!1632 () Bool)

(assert (= bs!1632 (and b!7281 b!7280)))

(declare-fun lambda!1298 () Int)

(assert (=> bs!1632 (not (= lambda!1298 lambda!1296))))

(assert (=> b!7281 true))

(declare-fun dynLambda!144 (Int) Balance!89)

(assert (=> (and b!7277 b!7281 (= (dynLambda!144 lambda!1298) (dynLambda!144 (x!3961 thiss!1124)))) (= lambda!1298 (x!3961 thiss!1124))))

(assert (=> (and b!7277 b!7281 (= (dynLambda!144 lambda!1298) (dynLambda!144 (y!459 thiss!1124)))) (= lambda!1298 (y!459 thiss!1124))))

(assert (=> (and b!7278 b!7281 (= (dynLambda!144 lambda!1298) (dynLambda!144 (x!3962 thiss!1134)))) (= lambda!1298 (x!3962 thiss!1134))))

(assert (=> (and b!7278 b!7281 (= (dynLambda!144 lambda!1298) (dynLambda!144 (y!460 thiss!1134)))) (= lambda!1298 (y!460 thiss!1134))))

(declare-fun b_next!933 () Bool)

(assert (=> b!7277 (= b_next!921 (or (and b!7281 (= lambda!1298 (x!3961 thiss!1124))) b_next!933))))

(declare-fun b_next!935 () Bool)

(assert (=> b!7277 (= b_next!923 (or (and b!7281 (= lambda!1298 (y!459 thiss!1124))) b_next!935))))

(declare-fun b_next!937 () Bool)

(assert (=> b!7278 (= b_next!925 (or (and b!7281 (= lambda!1298 (x!3962 thiss!1134))) b_next!937))))

(declare-fun b_next!939 () Bool)

(assert (=> b!7278 (= b_next!927 (or (and b!7281 (= lambda!1298 (y!460 thiss!1134))) b_next!939))))

(declare-fun b!7274 () Bool)

(declare-fun res!2107 () Bool)

(declare-fun e!4205 () Bool)

(assert (=> b!7274 (=> (not res!2107) (not e!4205))))

(declare-datatypes () ((Parenthesis!39 (CloseParenthesis!38) (OpenParenthesis!38))))

(declare-datatypes () ((List!161 (Nil!159) (Cons!158 (head!376 Parenthesis!39) (tail!388 List!161)))))

(declare-fun xs!372 () List!161)

(assert (=> b!7274 (= res!2107 (and (is-Cons!158 xs!372) (is-Nil!159 (tail!388 xs!372))))))

(declare-fun b!7275 () Bool)

(declare-fun res!2108 () Bool)

(assert (=> b!7275 (=> (not res!2108) (not e!4205))))

(assert (=> b!7275 (= res!2108 (= proof!285 lambda!1297))))

(declare-fun res!2110 () Bool)

(assert (=> start!1342 (=> (not res!2110) (not e!4205))))

(declare-fun isEmpty!140 (List!161) Bool)

(assert (=> start!1342 (= res!2110 (not (isEmpty!140 xs!372)))))

(assert (=> start!1342 e!4205))

(assert (=> start!1342 true))

(declare-fun e!4204 () Bool)

(declare-fun inv!254 (EqEvidence!66) Bool)

(assert (=> start!1342 (and (inv!254 thiss!1124) e!4204)))

(assert (=> start!1342 tp!768))

(declare-fun e!4206 () Bool)

(declare-fun inv!255 (EqProof!34) Bool)

(assert (=> start!1342 (and (inv!255 thiss!1134) e!4206)))

(declare-fun b!7276 () Bool)

(assert (=> b!7276 (= e!4205 (not (dynLambda!143 proof!285)))))

(assert (=> b!7277 (= e!4204 (and tp!764 tp!769 tp!765))))

(assert (=> b!7278 (= e!4206 (and tp!766 tp!767))))

(declare-fun b!7279 () Bool)

(declare-fun res!2111 () Bool)

(assert (=> b!7279 (=> (not res!2111) (not e!4205))))

(declare-datatypes () ((ProofOps!64 (ProofOps!65 (prop!142 Bool)))))

(declare-fun thiss!1106 () ProofOps!64)

(declare-fun lambda!1295 () Int)

(declare-fun lambda!1294 () Int)

(declare-datatypes () ((List!162 (Nil!160) (Cons!159 (head!377 Balance!89) (tail!389 List!162)))))

(declare-fun foldRight1!28 (List!162 Int) Balance!89)

(declare-fun append!61 (List!162 List!162) List!162)

(declare-fun map!149 (List!161 Int) List!162)

(assert (=> b!7279 (= res!2111 (= thiss!1106 (ProofOps!65 (= (foldRight1!28 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160)) lambda!1295) (foldRight1!28 (map!149 xs!372 lambda!1294) lambda!1295)))))))

(declare-fun res!2106 () Bool)

(assert (=> b!7280 (=> (not res!2106) (not e!4205))))

(assert (=> b!7280 (= res!2106 (= thiss!1124 (EqEvidence!67 lambda!1296 lambda!1296 lambda!1297)))))

(declare-fun res!2109 () Bool)

(assert (=> b!7281 (=> (not res!2109) (not e!4205))))

(assert (=> b!7281 (= res!2109 (= thiss!1134 (EqProof!35 lambda!1298 lambda!1298)))))

(assert (= (and start!1342 res!2110) b!7279))

(assert (= (and b!7279 res!2111) b!7274))

(assert (= (and b!7274 res!2107) b!7280))

(assert (= (and b!7280 res!2106) b!7281))

(assert (= (and b!7281 res!2109) b!7275))

(assert (= (and b!7275 res!2108) b!7276))

(assert (= start!1342 b!7277))

(assert (= start!1342 b!7278))

(declare-fun b_lambda!3479 () Bool)

(assert (=> (not b_lambda!3479) (not b!7276)))

(declare-fun t!1411 () Bool)

(declare-fun tb!1071 () Bool)

(assert (=> (and b!7277 (= (evidence!100 thiss!1124) proof!285) t!1411) tb!1071))

(declare-fun result!1111 () Bool)

(assert (=> tb!1071 (= result!1111 true)))

(assert (=> b!7276 t!1411))

(declare-fun b_and!1961 () Bool)

(assert (= b_and!1953 (and (=> t!1411 result!1111) b_and!1961)))

(declare-fun t!1413 () Bool)

(declare-fun tb!1073 () Bool)

(assert (=> (and start!1342 (= proof!285 proof!285) t!1413) tb!1073))

(declare-fun result!1113 () Bool)

(assert (=> tb!1073 (= result!1113 true)))

(assert (=> b!7276 t!1413))

(declare-fun b_and!1963 () Bool)

(assert (= b_and!1955 (and (=> t!1413 result!1113) b_and!1963)))

(declare-fun m!10117 () Bool)

(assert (=> start!1342 m!10117))

(declare-fun m!10119 () Bool)

(assert (=> start!1342 m!10119))

(declare-fun m!10121 () Bool)

(assert (=> start!1342 m!10121))

(declare-fun m!10123 () Bool)

(assert (=> b!7276 m!10123))

(declare-fun m!10125 () Bool)

(assert (=> b!7279 m!10125))

(declare-fun m!10127 () Bool)

(assert (=> b!7279 m!10127))

(declare-fun m!10129 () Bool)

(assert (=> b!7279 m!10129))

(assert (=> b!7279 m!10129))

(declare-fun m!10131 () Bool)

(assert (=> b!7279 m!10131))

(assert (=> b!7279 m!10129))

(assert (=> b!7279 m!10129))

(assert (=> b!7279 m!10125))

(push 1)

(assert (not start!1342))

(assert b_and!1959)

(assert b_and!1961)

(assert (not b_next!933))

(assert b_and!1951)

(assert b_and!1957)

(assert (not b_next!935))

(assert (not b_lambda!3479))

(assert (not b!7280))

(assert (not b_next!939))

(assert (not b_next!937))

(assert b_and!1949)

(assert (not b_next!931))

(assert (not b!7279))

(assert (not b!7281))

(assert (not b!7275))

(assert (not b_next!929))

(assert b_and!1963)

(check-sat)

(pop 1)

(push 1)

(assert b_and!1959)

(assert b_and!1961)

(assert (not b_next!933))

(assert b_and!1951)

(assert b_and!1957)

(assert (not b_next!935))

(assert (not b_next!939))

(assert (not b_next!937))

(assert b_and!1949)

(assert (not b_next!931))

(assert (not b_next!929))

(assert b_and!1963)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3481 () Bool)

(assert (= b_lambda!3479 (or (and b!7280 (= lambda!1297 proof!285)) (and b!7277 b_free!425 (= (evidence!100 thiss!1124) proof!285)) (and start!1342 b_free!427) b_lambda!3481)))

(declare-fun bs!1633 () Bool)

(declare-fun d!5707 () Bool)

(assert (= bs!1633 (and d!5707 b!7280)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!1633 (= (dynLambda!143 lambda!1297) trivial!1)))

(assert (=> (and b!7280 (= lambda!1297 proof!285) b!7276) d!5707))

(push 1)

(assert (not start!1342))

(assert b_and!1959)

(assert b_and!1961)

(assert (not b_next!933))

(assert b_and!1951)

(assert b_and!1957)

(assert (not b_next!935))

(assert (not b!7280))

(assert (not b_next!939))

(assert (not b_next!937))

(assert b_and!1949)

(assert (not b_next!931))

(assert (not b!7279))

(assert (not b!7281))

(assert (not b!7275))

(assert (not b_next!929))

(assert b_and!1963)

(assert (not b_lambda!3481))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1959)

(assert b_and!1961)

(assert (not b_next!933))

(assert b_and!1951)

(assert b_and!1957)

(assert (not b_next!935))

(assert (not b_next!939))

(assert (not b_next!937))

(assert b_and!1949)

(assert (not b_next!931))

(assert (not b_next!929))

(assert b_and!1963)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5709 () Bool)

(declare-fun c!2597 () Bool)

(assert (=> d!5709 (= c!2597 (is-Nil!160 (map!149 xs!372 lambda!1294)))))

(declare-fun e!4209 () List!162)

(assert (=> d!5709 (= (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160)) e!4209)))

(declare-fun b!7288 () Bool)

(assert (=> b!7288 (= e!4209 (Cons!159 (Balance!90 0 0) Nil!160))))

(declare-fun b!7289 () Bool)

(assert (=> b!7289 (= e!4209 (Cons!159 (head!377 (map!149 xs!372 lambda!1294)) (append!61 (tail!389 (map!149 xs!372 lambda!1294)) (Cons!159 (Balance!90 0 0) Nil!160))))))

(assert (= (and d!5709 c!2597) b!7288))

(assert (= (and d!5709 (not c!2597)) b!7289))

(declare-fun m!10133 () Bool)

(assert (=> b!7289 m!10133))

(assert (=> b!7279 d!5709))

(declare-fun d!5711 () Bool)

(declare-fun c!2600 () Bool)

(assert (=> d!5711 (= c!2600 (and (is-Cons!159 (map!149 xs!372 lambda!1294)) (is-Nil!160 (tail!389 (map!149 xs!372 lambda!1294)))))))

(declare-fun e!4212 () Balance!89)

(assert (=> d!5711 (= (foldRight1!28 (map!149 xs!372 lambda!1294) lambda!1295) e!4212)))

(declare-fun b!7294 () Bool)

(assert (=> b!7294 (= e!4212 (head!377 (map!149 xs!372 lambda!1294)))))

(declare-fun b!7295 () Bool)

(declare-fun dynLambda!145 (Int Balance!89 Balance!89) Balance!89)

(assert (=> b!7295 (= e!4212 (dynLambda!145 lambda!1295 (head!377 (map!149 xs!372 lambda!1294)) (foldRight1!28 (tail!389 (map!149 xs!372 lambda!1294)) lambda!1295)))))

(assert (= (and d!5711 c!2600) b!7294))

(assert (= (and d!5711 (not c!2600)) b!7295))

(declare-fun b_lambda!3483 () Bool)

(assert (=> (not b_lambda!3483) (not b!7295)))

(declare-fun m!10135 () Bool)

(assert (=> b!7295 m!10135))

(assert (=> b!7295 m!10135))

(declare-fun m!10137 () Bool)

(assert (=> b!7295 m!10137))

(assert (=> b!7279 d!5711))

(declare-fun d!5713 () Bool)

(declare-fun c!2603 () Bool)

(assert (=> d!5713 (= c!2603 (is-Nil!159 xs!372))))

(declare-fun e!4215 () List!162)

(assert (=> d!5713 (= (map!149 xs!372 lambda!1294) e!4215)))

(declare-fun b!7300 () Bool)

(assert (=> b!7300 (= e!4215 Nil!160)))

(declare-fun b!7301 () Bool)

(declare-fun dynLambda!146 (Int Parenthesis!39) Balance!89)

(assert (=> b!7301 (= e!4215 (Cons!159 (dynLambda!146 lambda!1294 (head!376 xs!372)) (map!149 (tail!388 xs!372) lambda!1294)))))

(assert (= (and d!5713 c!2603) b!7300))

(assert (= (and d!5713 (not c!2603)) b!7301))

(declare-fun b_lambda!3485 () Bool)

(assert (=> (not b_lambda!3485) (not b!7301)))

(declare-fun m!10139 () Bool)

(assert (=> b!7301 m!10139))

(declare-fun m!10141 () Bool)

(assert (=> b!7301 m!10141))

(assert (=> b!7279 d!5713))

(declare-fun d!5715 () Bool)

(declare-fun c!2604 () Bool)

(assert (=> d!5715 (= c!2604 (and (is-Cons!159 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160))) (is-Nil!160 (tail!389 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160))))))))

(declare-fun e!4216 () Balance!89)

(assert (=> d!5715 (= (foldRight1!28 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160)) lambda!1295) e!4216)))

(declare-fun b!7302 () Bool)

(assert (=> b!7302 (= e!4216 (head!377 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160))))))

(declare-fun b!7303 () Bool)

(assert (=> b!7303 (= e!4216 (dynLambda!145 lambda!1295 (head!377 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160))) (foldRight1!28 (tail!389 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160))) lambda!1295)))))

(assert (= (and d!5715 c!2604) b!7302))

(assert (= (and d!5715 (not c!2604)) b!7303))

(declare-fun b_lambda!3487 () Bool)

(assert (=> (not b_lambda!3487) (not b!7303)))

(declare-fun m!10143 () Bool)

(assert (=> b!7303 m!10143))

(assert (=> b!7303 m!10143))

(declare-fun m!10145 () Bool)

(assert (=> b!7303 m!10145))

(assert (=> b!7279 d!5715))

(declare-fun d!5717 () Bool)

(assert (=> d!5717 (= trivial!1 true)))

(assert (=> b!7275 d!5717))

(declare-fun d!5719 () Bool)

(declare-fun lt!1423 () Int)

(declare-fun min!4 (Int Int) Int)

(declare-fun fromParenthesis!0 (Parenthesis!39) Balance!89)

(assert (=> d!5719 (= lt!1423 (min!4 (extraOpen!85 (fromParenthesis!0 (head!376 xs!372))) (extraClose!85 (Balance!90 0 0))))))

(declare-fun ++!3 (Balance!89 Balance!89) Balance!89)

(assert (=> d!5719 (= (++!3 (fromParenthesis!0 (head!376 xs!372)) (Balance!90 0 0)) (Balance!90 (- (+ (extraOpen!85 (fromParenthesis!0 (head!376 xs!372))) (extraOpen!85 (Balance!90 0 0))) lt!1423) (- (+ (extraClose!85 (fromParenthesis!0 (head!376 xs!372))) (extraClose!85 (Balance!90 0 0))) lt!1423)))))

(declare-fun bs!1634 () Bool)

(assert (= bs!1634 d!5719))

(declare-fun m!10147 () Bool)

(assert (=> bs!1634 m!10147))

(assert (=> b!7281 d!5719))

(declare-fun d!5721 () Bool)

(assert (=> d!5721 (= (fromParenthesis!0 (head!376 xs!372)) (ite (is-OpenParenthesis!38 (head!376 xs!372)) (Balance!90 1 0) (Balance!90 0 1)))))

(assert (=> b!7281 d!5721))

(declare-fun d!5723 () Bool)

(assert (=> d!5723 (= (isEmpty!140 xs!372) (is-Nil!159 xs!372))))

(assert (=> start!1342 d!5723))

(declare-fun d!5725 () Bool)

(declare-fun res!2114 () Bool)

(declare-fun e!4219 () Bool)

(assert (=> d!5725 (=> (not res!2114) (not e!4219))))

(assert (=> d!5725 (= res!2114 (= (dynLambda!144 (x!3961 thiss!1124)) (dynLambda!144 (y!459 thiss!1124))))))

(assert (=> d!5725 (= (inv!254 thiss!1124) e!4219)))

(declare-fun b!7306 () Bool)

(assert (=> b!7306 (= e!4219 (dynLambda!143 (evidence!100 thiss!1124)))))

(assert (= (and d!5725 res!2114) b!7306))

(declare-fun b_lambda!3489 () Bool)

(assert (=> (not b_lambda!3489) (not d!5725)))

(declare-fun t!1415 () Bool)

(declare-fun tb!1075 () Bool)

(assert (=> (and b!7277 (= (x!3961 thiss!1124) (x!3961 thiss!1124)) t!1415) tb!1075))

(declare-fun result!1115 () Bool)

(assert (=> tb!1075 (= result!1115 true)))

(assert (=> d!5725 t!1415))

(declare-fun b_and!1965 () Bool)

(assert (= b_and!1949 (and (=> t!1415 result!1115) b_and!1965)))

(declare-fun t!1417 () Bool)

(declare-fun tb!1077 () Bool)

(assert (=> (and b!7277 (= (y!459 thiss!1124) (x!3961 thiss!1124)) t!1417) tb!1077))

(declare-fun result!1117 () Bool)

(assert (=> tb!1077 (= result!1117 true)))

(assert (=> d!5725 t!1417))

(declare-fun b_and!1967 () Bool)

(assert (= b_and!1951 (and (=> t!1417 result!1117) b_and!1967)))

(declare-fun tb!1079 () Bool)

(declare-fun t!1419 () Bool)

(assert (=> (and b!7278 (= (x!3962 thiss!1134) (x!3961 thiss!1124)) t!1419) tb!1079))

(declare-fun result!1119 () Bool)

(assert (=> tb!1079 (= result!1119 true)))

(assert (=> d!5725 t!1419))

(declare-fun b_and!1969 () Bool)

(assert (= b_and!1957 (and (=> t!1419 result!1119) b_and!1969)))

(declare-fun t!1421 () Bool)

(declare-fun tb!1081 () Bool)

(assert (=> (and b!7278 (= (y!460 thiss!1134) (x!3961 thiss!1124)) t!1421) tb!1081))

(declare-fun result!1121 () Bool)

(assert (=> tb!1081 (= result!1121 true)))

(assert (=> d!5725 t!1421))

(declare-fun b_and!1971 () Bool)

(assert (= b_and!1959 (and (=> t!1421 result!1121) b_and!1971)))

(declare-fun b_lambda!3491 () Bool)

(assert (=> (not b_lambda!3491) (not d!5725)))

(declare-fun t!1423 () Bool)

(declare-fun tb!1083 () Bool)

(assert (=> (and b!7277 (= (x!3961 thiss!1124) (y!459 thiss!1124)) t!1423) tb!1083))

(declare-fun result!1123 () Bool)

(assert (=> tb!1083 (= result!1123 true)))

(assert (=> d!5725 t!1423))

(declare-fun b_and!1973 () Bool)

(assert (= b_and!1965 (and (=> t!1423 result!1123) b_and!1973)))

(declare-fun t!1425 () Bool)

(declare-fun tb!1085 () Bool)

(assert (=> (and b!7277 (= (y!459 thiss!1124) (y!459 thiss!1124)) t!1425) tb!1085))

(declare-fun result!1125 () Bool)

(assert (=> tb!1085 (= result!1125 true)))

(assert (=> d!5725 t!1425))

(declare-fun b_and!1975 () Bool)

(assert (= b_and!1967 (and (=> t!1425 result!1125) b_and!1975)))

(declare-fun tb!1087 () Bool)

(declare-fun t!1427 () Bool)

(assert (=> (and b!7278 (= (x!3962 thiss!1134) (y!459 thiss!1124)) t!1427) tb!1087))

(declare-fun result!1127 () Bool)

(assert (=> tb!1087 (= result!1127 true)))

(assert (=> d!5725 t!1427))

(declare-fun b_and!1977 () Bool)

(assert (= b_and!1969 (and (=> t!1427 result!1127) b_and!1977)))

(declare-fun t!1429 () Bool)

(declare-fun tb!1089 () Bool)

(assert (=> (and b!7278 (= (y!460 thiss!1134) (y!459 thiss!1124)) t!1429) tb!1089))

(declare-fun result!1129 () Bool)

(assert (=> tb!1089 (= result!1129 true)))

(assert (=> d!5725 t!1429))

(declare-fun b_and!1979 () Bool)

(assert (= b_and!1971 (and (=> t!1429 result!1129) b_and!1979)))

(declare-fun b_lambda!3493 () Bool)

(assert (=> (not b_lambda!3493) (not b!7306)))

(declare-fun t!1431 () Bool)

(declare-fun tb!1091 () Bool)

(assert (=> (and b!7277 (= (evidence!100 thiss!1124) (evidence!100 thiss!1124)) t!1431) tb!1091))

(declare-fun result!1131 () Bool)

(assert (=> tb!1091 (= result!1131 true)))

(assert (=> b!7306 t!1431))

(declare-fun b_and!1981 () Bool)

(assert (= b_and!1961 (and (=> t!1431 result!1131) b_and!1981)))

(declare-fun tb!1093 () Bool)

(declare-fun t!1433 () Bool)

(assert (=> (and start!1342 (= proof!285 (evidence!100 thiss!1124)) t!1433) tb!1093))

(declare-fun result!1133 () Bool)

(assert (=> tb!1093 (= result!1133 true)))

(assert (=> b!7306 t!1433))

(declare-fun b_and!1983 () Bool)

(assert (= b_and!1963 (and (=> t!1433 result!1133) b_and!1983)))

(declare-fun m!10149 () Bool)

(assert (=> d!5725 m!10149))

(declare-fun m!10151 () Bool)

(assert (=> d!5725 m!10151))

(declare-fun m!10153 () Bool)

(assert (=> b!7306 m!10153))

(assert (=> start!1342 d!5725))

(declare-fun d!5727 () Bool)

(assert (=> d!5727 (= (inv!255 thiss!1134) (= (dynLambda!144 (x!3962 thiss!1134)) (dynLambda!144 (y!460 thiss!1134))))))

(declare-fun b_lambda!3495 () Bool)

(assert (=> (not b_lambda!3495) (not d!5727)))

(declare-fun tb!1095 () Bool)

(declare-fun t!1435 () Bool)

(assert (=> (and b!7277 (= (x!3961 thiss!1124) (x!3962 thiss!1134)) t!1435) tb!1095))

(declare-fun result!1135 () Bool)

(assert (=> tb!1095 (= result!1135 true)))

(assert (=> d!5727 t!1435))

(declare-fun b_and!1985 () Bool)

(assert (= b_and!1973 (and (=> t!1435 result!1135) b_and!1985)))

(declare-fun tb!1097 () Bool)

(declare-fun t!1437 () Bool)

(assert (=> (and b!7277 (= (y!459 thiss!1124) (x!3962 thiss!1134)) t!1437) tb!1097))

(declare-fun result!1137 () Bool)

(assert (=> tb!1097 (= result!1137 true)))

(assert (=> d!5727 t!1437))

(declare-fun b_and!1987 () Bool)

(assert (= b_and!1975 (and (=> t!1437 result!1137) b_and!1987)))

(declare-fun t!1439 () Bool)

(declare-fun tb!1099 () Bool)

(assert (=> (and b!7278 (= (x!3962 thiss!1134) (x!3962 thiss!1134)) t!1439) tb!1099))

(declare-fun result!1139 () Bool)

(assert (=> tb!1099 (= result!1139 true)))

(assert (=> d!5727 t!1439))

(declare-fun b_and!1989 () Bool)

(assert (= b_and!1977 (and (=> t!1439 result!1139) b_and!1989)))

(declare-fun t!1441 () Bool)

(declare-fun tb!1101 () Bool)

(assert (=> (and b!7278 (= (y!460 thiss!1134) (x!3962 thiss!1134)) t!1441) tb!1101))

(declare-fun result!1141 () Bool)

(assert (=> tb!1101 (= result!1141 true)))

(assert (=> d!5727 t!1441))

(declare-fun b_and!1991 () Bool)

(assert (= b_and!1979 (and (=> t!1441 result!1141) b_and!1991)))

(declare-fun b_lambda!3497 () Bool)

(assert (=> (not b_lambda!3497) (not d!5727)))

(declare-fun t!1443 () Bool)

(declare-fun tb!1103 () Bool)

(assert (=> (and b!7277 (= (x!3961 thiss!1124) (y!460 thiss!1134)) t!1443) tb!1103))

(declare-fun result!1143 () Bool)

(assert (=> tb!1103 (= result!1143 true)))

(assert (=> d!5727 t!1443))

(declare-fun b_and!1993 () Bool)

(assert (= b_and!1985 (and (=> t!1443 result!1143) b_and!1993)))

(declare-fun tb!1105 () Bool)

(declare-fun t!1445 () Bool)

(assert (=> (and b!7277 (= (y!459 thiss!1124) (y!460 thiss!1134)) t!1445) tb!1105))

(declare-fun result!1145 () Bool)

(assert (=> tb!1105 (= result!1145 true)))

(assert (=> d!5727 t!1445))

(declare-fun b_and!1995 () Bool)

(assert (= b_and!1987 (and (=> t!1445 result!1145) b_and!1995)))

(declare-fun t!1447 () Bool)

(declare-fun tb!1107 () Bool)

(assert (=> (and b!7278 (= (x!3962 thiss!1134) (y!460 thiss!1134)) t!1447) tb!1107))

(declare-fun result!1147 () Bool)

(assert (=> tb!1107 (= result!1147 true)))

(assert (=> d!5727 t!1447))

(declare-fun b_and!1997 () Bool)

(assert (= b_and!1989 (and (=> t!1447 result!1147) b_and!1997)))

(declare-fun t!1449 () Bool)

(declare-fun tb!1109 () Bool)

(assert (=> (and b!7278 (= (y!460 thiss!1134) (y!460 thiss!1134)) t!1449) tb!1109))

(declare-fun result!1149 () Bool)

(assert (=> tb!1109 (= result!1149 true)))

(assert (=> d!5727 t!1449))

(declare-fun b_and!1999 () Bool)

(assert (= b_and!1991 (and (=> t!1449 result!1149) b_and!1999)))

(declare-fun m!10155 () Bool)

(assert (=> d!5727 m!10155))

(declare-fun m!10157 () Bool)

(assert (=> d!5727 m!10157))

(assert (=> start!1342 d!5727))

(assert (=> b!7280 d!5717))

(declare-fun b_lambda!3499 () Bool)

(assert (= b_lambda!3491 (or (and b!7278 b_free!431 (= (y!460 thiss!1134) (y!459 thiss!1124))) (and b!7277 b_free!421 (= (x!3961 thiss!1124) (y!459 thiss!1124))) (and b!7280 (= lambda!1296 (y!459 thiss!1124))) (and b!7277 b_free!423) (and b!7278 b_free!429 (= (x!3962 thiss!1134) (y!459 thiss!1124))) (and b!7281 (= lambda!1298 (y!459 thiss!1124))) b_lambda!3499)))

(declare-fun bs!1635 () Bool)

(declare-fun d!5729 () Bool)

(assert (= bs!1635 (and d!5729 b!7281)))

(assert (=> bs!1635 (= (dynLambda!144 lambda!1298) (++!3 (fromParenthesis!0 (head!376 xs!372)) (Balance!90 0 0)))))

(assert (=> (and b!7281 (= lambda!1298 (y!459 thiss!1124)) d!5725) d!5729))

(declare-fun bs!1636 () Bool)

(declare-fun d!5731 () Bool)

(assert (= bs!1636 (and d!5731 b!7280)))

(assert (=> bs!1636 (= (dynLambda!144 lambda!1296) (foldRight1!28 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160)) lambda!1295))))

(assert (=> bs!1636 m!10129))

(assert (=> bs!1636 m!10129))

(assert (=> bs!1636 m!10125))

(assert (=> bs!1636 m!10125))

(assert (=> bs!1636 m!10127))

(assert (=> (and b!7280 (= lambda!1296 (y!459 thiss!1124)) d!5725) d!5731))

(declare-fun b_lambda!3501 () Bool)

(assert (= b_lambda!3497 (or (and b!7278 b_free!431) (and b!7280 (= lambda!1296 (y!460 thiss!1134))) (and b!7278 b_free!429 (= (x!3962 thiss!1134) (y!460 thiss!1134))) (and b!7277 b_free!423 (= (y!459 thiss!1124) (y!460 thiss!1134))) (and b!7277 b_free!421 (= (x!3961 thiss!1124) (y!460 thiss!1134))) (and b!7281 (= lambda!1298 (y!460 thiss!1134))) b_lambda!3501)))

(declare-fun bs!1637 () Bool)

(declare-fun d!5733 () Bool)

(assert (= bs!1637 (and d!5733 b!7280)))

(assert (=> bs!1637 (= (dynLambda!144 lambda!1296) (foldRight1!28 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160)) lambda!1295))))

(assert (=> bs!1637 m!10129))

(assert (=> bs!1637 m!10129))

(assert (=> bs!1637 m!10125))

(assert (=> bs!1637 m!10125))

(assert (=> bs!1637 m!10127))

(assert (=> (and b!7280 (= lambda!1296 (y!460 thiss!1134)) d!5727) d!5733))

(declare-fun bs!1638 () Bool)

(declare-fun d!5735 () Bool)

(assert (= bs!1638 (and d!5735 b!7281)))

(assert (=> bs!1638 (= (dynLambda!144 lambda!1298) (++!3 (fromParenthesis!0 (head!376 xs!372)) (Balance!90 0 0)))))

(assert (=> (and b!7281 (= lambda!1298 (y!460 thiss!1134)) d!5727) d!5735))

(declare-fun b_lambda!3503 () Bool)

(assert (= b_lambda!3489 (or (and b!7277 b_free!421) (and b!7278 b_free!429 (= (x!3962 thiss!1134) (x!3961 thiss!1124))) (and b!7281 (= lambda!1298 (x!3961 thiss!1124))) (and b!7278 b_free!431 (= (y!460 thiss!1134) (x!3961 thiss!1124))) (and b!7277 b_free!423 (= (y!459 thiss!1124) (x!3961 thiss!1124))) (and b!7280 (= lambda!1296 (x!3961 thiss!1124))) b_lambda!3503)))

(declare-fun bs!1639 () Bool)

(declare-fun d!5737 () Bool)

(assert (= bs!1639 (and d!5737 b!7281)))

(assert (=> bs!1639 (= (dynLambda!144 lambda!1298) (++!3 (fromParenthesis!0 (head!376 xs!372)) (Balance!90 0 0)))))

(assert (=> (and b!7281 (= lambda!1298 (x!3961 thiss!1124)) d!5725) d!5737))

(declare-fun bs!1640 () Bool)

(declare-fun d!5739 () Bool)

(assert (= bs!1640 (and d!5739 b!7280)))

(assert (=> bs!1640 (= (dynLambda!144 lambda!1296) (foldRight1!28 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160)) lambda!1295))))

(assert (=> bs!1640 m!10129))

(assert (=> bs!1640 m!10129))

(assert (=> bs!1640 m!10125))

(assert (=> bs!1640 m!10125))

(assert (=> bs!1640 m!10127))

(assert (=> (and b!7280 (= lambda!1296 (x!3961 thiss!1124)) d!5725) d!5739))

(declare-fun b_lambda!3505 () Bool)

(assert (= b_lambda!3495 (or (and b!7278 b_free!429) (and b!7277 b_free!421 (= (x!3961 thiss!1124) (x!3962 thiss!1134))) (and b!7280 (= lambda!1296 (x!3962 thiss!1134))) (and b!7278 b_free!431 (= (y!460 thiss!1134) (x!3962 thiss!1134))) (and b!7277 b_free!423 (= (y!459 thiss!1124) (x!3962 thiss!1134))) (and b!7281 (= lambda!1298 (x!3962 thiss!1134))) b_lambda!3505)))

(declare-fun bs!1641 () Bool)

(declare-fun d!5741 () Bool)

(assert (= bs!1641 (and d!5741 b!7281)))

(assert (=> bs!1641 (= (dynLambda!144 lambda!1298) (++!3 (fromParenthesis!0 (head!376 xs!372)) (Balance!90 0 0)))))

(assert (=> (and b!7281 (= lambda!1298 (x!3962 thiss!1134)) d!5727) d!5741))

(declare-fun bs!1642 () Bool)

(declare-fun d!5743 () Bool)

(assert (= bs!1642 (and d!5743 b!7280)))

(assert (=> bs!1642 (= (dynLambda!144 lambda!1296) (foldRight1!28 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160)) lambda!1295))))

(assert (=> bs!1642 m!10129))

(assert (=> bs!1642 m!10129))

(assert (=> bs!1642 m!10125))

(assert (=> bs!1642 m!10125))

(assert (=> bs!1642 m!10127))

(assert (=> (and b!7280 (= lambda!1296 (x!3962 thiss!1134)) d!5727) d!5743))

(declare-fun b_lambda!3507 () Bool)

(assert (= b_lambda!3493 (or (and b!7280 (= lambda!1297 (evidence!100 thiss!1124))) (and b!7277 b_free!425) (and start!1342 b_free!427 (= proof!285 (evidence!100 thiss!1124))) b_lambda!3507)))

(declare-fun bs!1643 () Bool)

(declare-fun d!5745 () Bool)

(assert (= bs!1643 (and d!5745 b!7280)))

(assert (=> bs!1643 (= (dynLambda!143 lambda!1297) trivial!1)))

(assert (=> (and b!7280 (= lambda!1297 (evidence!100 thiss!1124)) b!7306) d!5745))

(declare-fun b_lambda!3509 () Bool)

(assert (= b_lambda!3483 (or b!7279 b_lambda!3509)))

(declare-fun bs!1644 () Bool)

(declare-fun d!5747 () Bool)

(assert (= bs!1644 (and d!5747 b!7279)))

(assert (=> bs!1644 (= (dynLambda!145 lambda!1295 (head!377 (map!149 xs!372 lambda!1294)) (foldRight1!28 (tail!389 (map!149 xs!372 lambda!1294)) lambda!1295)) (++!3 (head!377 (map!149 xs!372 lambda!1294)) (foldRight1!28 (tail!389 (map!149 xs!372 lambda!1294)) lambda!1295)))))

(assert (=> bs!1644 m!10135))

(declare-fun m!10159 () Bool)

(assert (=> bs!1644 m!10159))

(assert (=> b!7295 d!5747))

(declare-fun b_lambda!3511 () Bool)

(assert (= b_lambda!3487 (or b!7279 b_lambda!3511)))

(declare-fun bs!1645 () Bool)

(declare-fun d!5749 () Bool)

(assert (= bs!1645 (and d!5749 b!7279)))

(assert (=> bs!1645 (= (dynLambda!145 lambda!1295 (head!377 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160))) (foldRight1!28 (tail!389 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160))) lambda!1295)) (++!3 (head!377 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160))) (foldRight1!28 (tail!389 (append!61 (map!149 xs!372 lambda!1294) (Cons!159 (Balance!90 0 0) Nil!160))) lambda!1295)))))

(assert (=> bs!1645 m!10143))

(declare-fun m!10161 () Bool)

(assert (=> bs!1645 m!10161))

(assert (=> b!7303 d!5749))

(declare-fun b_lambda!3513 () Bool)

(assert (= b_lambda!3485 (or b!7279 b_lambda!3513)))

(declare-fun bs!1646 () Bool)

(declare-fun d!5751 () Bool)

(assert (= bs!1646 (and d!5751 b!7279)))

(assert (=> bs!1646 (= (dynLambda!146 lambda!1294 (head!376 xs!372)) (fromParenthesis!0 (head!376 xs!372)))))

(assert (=> bs!1646 m!10113))

(assert (=> b!7301 d!5751))

(push 1)

(assert (not bs!1637))

(assert b_and!1981)

(assert (not bs!1642))

(assert b_and!1995)

(assert (not b_next!933))

(assert (not bs!1646))

(assert (not b_next!935))

(assert (not b_lambda!3509))

(assert (not bs!1645))

(assert (not b_lambda!3505))

(assert (not b!7303))

(assert (not b_lambda!3511))

(assert (not bs!1640))

(assert b_and!1999)

(assert (not b_next!939))

(assert (not b_next!937))

(assert (not b_lambda!3501))

(assert (not d!5719))

(assert b_and!1997)

(assert (not b_lambda!3503))

(assert (not bs!1636))

(assert (not b_next!931))

(assert (not b_lambda!3499))

(assert (not bs!1644))

(assert b_and!1993)

(assert (not b!7301))

(assert b_and!1983)

(assert (not b_next!929))

(assert (not b!7295))

(assert (not b_lambda!3507))

(assert (not b_lambda!3513))

(assert (not b_lambda!3481))

(assert (not b!7289))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1981)

(assert b_and!1995)

(assert (not b_next!933))

(assert (not b_next!935))

(assert b_and!1999)

(assert (not b_next!939))

(assert (not b_next!937))

(assert b_and!1997)

(assert (not b_next!931))

(assert b_and!1993)

(assert b_and!1983)

(assert (not b_next!929))

(check-sat)

(pop 1)

