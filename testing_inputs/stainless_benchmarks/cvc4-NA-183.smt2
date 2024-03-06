; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1314 () Bool)

(assert start!1314)

(declare-fun b!7192 () Bool)

(declare-fun b_free!407 () Bool)

(declare-fun b_next!877 () Bool)

(assert (=> b!7192 (= b_free!407 (not b_next!877))))

(declare-fun tp!739 () Bool)

(declare-fun b_and!1915 () Bool)

(assert (=> b!7192 (= tp!739 b_and!1915)))

(declare-fun b_free!409 () Bool)

(declare-fun b_next!879 () Bool)

(assert (=> b!7192 (= b_free!409 (not b_next!879))))

(declare-fun tp!741 () Bool)

(declare-fun b_and!1917 () Bool)

(assert (=> b!7192 (= tp!741 b_and!1917)))

(declare-fun b_free!411 () Bool)

(declare-fun b_next!881 () Bool)

(assert (=> b!7192 (= b_free!411 (not b_next!881))))

(declare-fun tp!740 () Bool)

(declare-fun b_and!1919 () Bool)

(assert (=> b!7192 (= tp!740 b_and!1919)))

(declare-fun b_free!413 () Bool)

(declare-fun b_next!883 () Bool)

(assert (=> start!1314 (= b_free!413 (not b_next!883))))

(declare-fun tp!742 () Bool)

(declare-fun b_and!1921 () Bool)

(assert (=> start!1314 (= tp!742 b_and!1921)))

(declare-fun b!7188 () Bool)

(declare-fun b_next!885 () Bool)

(declare-fun lambda!1236 () Int)

(declare-fun f!706 () Int)

(assert (=> start!1314 (= b_next!883 (or (and b!7188 (= lambda!1236 f!706)) b_next!885))))

(declare-fun b!7190 () Bool)

(assert (=> b!7190 true))

(declare-fun b_next!887 () Bool)

(declare-fun lambda!1237 () Int)

(declare-datatypes () ((Balance!85 (Balance!86 (extraOpen!83 Int) (extraClose!83 Int)))))

(declare-datatypes () ((EqEvidence!64 (EqEvidence!65 (x!3904 Int) (y!457 Int) (evidence!99 Int)))))

(declare-fun thiss!1145 () EqEvidence!64)

(assert (=> b!7192 (= b_next!877 (or (and b!7190 (= lambda!1237 (x!3904 thiss!1145))) b_next!887))))

(declare-fun b_next!889 () Bool)

(assert (=> b!7192 (= b_next!879 (or (and b!7190 (= lambda!1237 (y!457 thiss!1145))) b_next!889))))

(declare-fun m!10025 () Bool)

(assert (=> b!7190 m!10025))

(declare-fun lambda!1238 () Int)

(assert (=> b!7190 (not (= lambda!1238 lambda!1237))))

(assert (=> b!7190 true))

(declare-fun b_next!891 () Bool)

(assert (=> b!7192 (= b_next!887 (or (and b!7190 (= lambda!1238 (x!3904 thiss!1145))) b_next!891))))

(declare-fun b_next!893 () Bool)

(assert (=> b!7192 (= b_next!889 (or (and b!7190 (= lambda!1238 (y!457 thiss!1145))) b_next!893))))

(declare-fun m!10027 () Bool)

(assert (=> b!7190 m!10027))

(declare-fun lambda!1239 () Int)

(declare-fun dynLambda!135 (Int) Bool)

(assert (=> (and b!7192 b!7190 (= (dynLambda!135 lambda!1239) (dynLambda!135 (evidence!99 thiss!1145)))) (= lambda!1239 (evidence!99 thiss!1145))))

(declare-fun b_next!895 () Bool)

(assert (=> b!7192 (= b_next!881 (or (and b!7190 (= lambda!1239 (evidence!99 thiss!1145))) b_next!895))))

(declare-fun b!7186 () Bool)

(declare-fun res!2072 () Bool)

(declare-fun e!4167 () Bool)

(assert (=> b!7186 (=> (not res!2072) (not e!4167))))

(declare-fun lambda!1235 () Int)

(declare-datatypes () ((Parenthesis!37 (CloseParenthesis!36) (OpenParenthesis!36))))

(declare-datatypes () ((List!157 (Nil!155) (Cons!154 (head!372 Parenthesis!37) (tail!384 List!157)))))

(declare-fun xs!372 () List!157)

(declare-datatypes () ((List!158 (Nil!156) (Cons!155 (head!373 Balance!85) (tail!385 List!158)))))

(declare-fun thiss!1191 () List!158)

(declare-fun map!147 (List!157 Int) List!158)

(assert (=> b!7186 (= res!2072 (= thiss!1191 (map!147 xs!372 lambda!1235)))))

(declare-fun b!7187 () Bool)

(declare-fun res!2074 () Bool)

(assert (=> b!7187 (=> (not res!2074) (not e!4167))))

(assert (=> b!7187 (= res!2074 (= f!706 lambda!1236))))

(declare-fun res!2070 () Bool)

(assert (=> start!1314 (=> (not res!2070) (not e!4167))))

(declare-fun isEmpty!137 (List!157) Bool)

(assert (=> start!1314 (= res!2070 (not (isEmpty!137 xs!372)))))

(assert (=> start!1314 e!4167))

(assert (=> start!1314 true))

(declare-fun e!4168 () Bool)

(declare-fun inv!252 (EqEvidence!64) Bool)

(assert (=> start!1314 (and (inv!252 thiss!1145) e!4168)))

(assert (=> start!1314 tp!742))

(declare-fun res!2073 () Bool)

(assert (=> b!7188 (=> (not res!2073) (not e!4167))))

(declare-datatypes () ((ProofOps!60 (ProofOps!61 (prop!140 Bool)))))

(declare-fun thiss!1106 () ProofOps!60)

(declare-fun foldRight1!26 (List!158 Int) Balance!85)

(declare-fun append!59 (List!158 List!158) List!158)

(assert (=> b!7188 (= res!2073 (= thiss!1106 (ProofOps!61 (= (foldRight1!26 (append!59 (map!147 xs!372 lambda!1235) (Cons!155 (Balance!86 0 0) Nil!156)) lambda!1236) (foldRight1!26 (map!147 xs!372 lambda!1235) lambda!1236)))))))

(declare-fun b!7189 () Bool)

(declare-fun isEmpty!138 (List!158) Bool)

(assert (=> b!7189 (= e!4167 (isEmpty!138 thiss!1191))))

(declare-fun res!2075 () Bool)

(assert (=> b!7190 (=> (not res!2075) (not e!4167))))

(assert (=> b!7190 (= res!2075 (= thiss!1145 (EqEvidence!65 lambda!1237 lambda!1238 lambda!1239)))))

(declare-fun b!7191 () Bool)

(declare-fun res!2071 () Bool)

(assert (=> b!7191 (=> (not res!2071) (not e!4167))))

(assert (=> b!7191 (= res!2071 (or (not (is-Cons!154 xs!372)) (not (is-Nil!155 (tail!384 xs!372)))))))

(assert (=> b!7192 (= e!4168 (and tp!739 tp!741 tp!740))))

(assert (= (and start!1314 res!2070) b!7188))

(assert (= (and b!7188 res!2073) b!7191))

(assert (= (and b!7191 res!2071) b!7190))

(assert (= (and b!7190 res!2075) b!7186))

(assert (= (and b!7186 res!2072) b!7187))

(assert (= (and b!7187 res!2074) b!7189))

(assert (= start!1314 b!7192))

(declare-fun m!10029 () Bool)

(assert (=> b!7186 m!10029))

(declare-fun m!10031 () Bool)

(assert (=> start!1314 m!10031))

(declare-fun m!10033 () Bool)

(assert (=> start!1314 m!10033))

(assert (=> b!7188 m!10029))

(declare-fun m!10035 () Bool)

(assert (=> b!7188 m!10035))

(assert (=> b!7188 m!10029))

(declare-fun m!10037 () Bool)

(assert (=> b!7188 m!10037))

(assert (=> b!7188 m!10029))

(assert (=> b!7188 m!10029))

(assert (=> b!7188 m!10035))

(declare-fun m!10039 () Bool)

(assert (=> b!7188 m!10039))

(declare-fun m!10041 () Bool)

(assert (=> b!7189 m!10041))

(push 1)

(assert (not b_next!895))

(assert (not b_next!885))

(assert b_and!1915)

(assert b_and!1917)

(assert (not b_next!893))

(assert (not b!7189))

(assert (not b!7190))

(assert (not b_next!891))

(assert b_and!1919)

(assert (not b!7186))

(assert (not start!1314))

(assert (not b!7188))

(assert b_and!1921)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!895))

(assert (not b_next!885))

(assert b_and!1915)

(assert b_and!1917)

(assert (not b_next!893))

(assert (not b_next!891))

(assert b_and!1919)

(assert b_and!1921)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5647 () Bool)

(declare-fun c!2577 () Bool)

(assert (=> d!5647 (= c!2577 (and (is-Cons!155 (append!59 (map!147 xs!372 lambda!1235) (Cons!155 (Balance!86 0 0) Nil!156))) (is-Nil!156 (tail!385 (append!59 (map!147 xs!372 lambda!1235) (Cons!155 (Balance!86 0 0) Nil!156))))))))

(declare-fun e!4171 () Balance!85)

(assert (=> d!5647 (= (foldRight1!26 (append!59 (map!147 xs!372 lambda!1235) (Cons!155 (Balance!86 0 0) Nil!156)) lambda!1236) e!4171)))

(declare-fun b!7199 () Bool)

(assert (=> b!7199 (= e!4171 (head!373 (append!59 (map!147 xs!372 lambda!1235) (Cons!155 (Balance!86 0 0) Nil!156))))))

(declare-fun b!7200 () Bool)

(declare-fun dynLambda!136 (Int Balance!85 Balance!85) Balance!85)

(assert (=> b!7200 (= e!4171 (dynLambda!136 lambda!1236 (head!373 (append!59 (map!147 xs!372 lambda!1235) (Cons!155 (Balance!86 0 0) Nil!156))) (foldRight1!26 (tail!385 (append!59 (map!147 xs!372 lambda!1235) (Cons!155 (Balance!86 0 0) Nil!156))) lambda!1236)))))

(assert (= (and d!5647 c!2577) b!7199))

(assert (= (and d!5647 (not c!2577)) b!7200))

(declare-fun b_lambda!3431 () Bool)

(assert (=> (not b_lambda!3431) (not b!7200)))

(declare-fun m!10043 () Bool)

(assert (=> b!7200 m!10043))

(assert (=> b!7200 m!10043))

(declare-fun m!10045 () Bool)

(assert (=> b!7200 m!10045))

(assert (=> b!7188 d!5647))

(declare-fun d!5649 () Bool)

(declare-fun c!2580 () Bool)

(assert (=> d!5649 (= c!2580 (is-Nil!156 (map!147 xs!372 lambda!1235)))))

(declare-fun e!4174 () List!158)

(assert (=> d!5649 (= (append!59 (map!147 xs!372 lambda!1235) (Cons!155 (Balance!86 0 0) Nil!156)) e!4174)))

(declare-fun b!7205 () Bool)

(assert (=> b!7205 (= e!4174 (Cons!155 (Balance!86 0 0) Nil!156))))

(declare-fun b!7206 () Bool)

(assert (=> b!7206 (= e!4174 (Cons!155 (head!373 (map!147 xs!372 lambda!1235)) (append!59 (tail!385 (map!147 xs!372 lambda!1235)) (Cons!155 (Balance!86 0 0) Nil!156))))))

(assert (= (and d!5649 c!2580) b!7205))

(assert (= (and d!5649 (not c!2580)) b!7206))

(declare-fun m!10047 () Bool)

(assert (=> b!7206 m!10047))

(assert (=> b!7188 d!5649))

(declare-fun d!5651 () Bool)

(declare-fun c!2583 () Bool)

(assert (=> d!5651 (= c!2583 (is-Nil!155 xs!372))))

(declare-fun e!4177 () List!158)

(assert (=> d!5651 (= (map!147 xs!372 lambda!1235) e!4177)))

(declare-fun b!7211 () Bool)

(assert (=> b!7211 (= e!4177 Nil!156)))

(declare-fun b!7212 () Bool)

(declare-fun dynLambda!137 (Int Parenthesis!37) Balance!85)

(assert (=> b!7212 (= e!4177 (Cons!155 (dynLambda!137 lambda!1235 (head!372 xs!372)) (map!147 (tail!384 xs!372) lambda!1235)))))

(assert (= (and d!5651 c!2583) b!7211))

(assert (= (and d!5651 (not c!2583)) b!7212))

(declare-fun b_lambda!3433 () Bool)

(assert (=> (not b_lambda!3433) (not b!7212)))

(declare-fun m!10049 () Bool)

(assert (=> b!7212 m!10049))

(declare-fun m!10051 () Bool)

(assert (=> b!7212 m!10051))

(assert (=> b!7188 d!5651))

(declare-fun d!5653 () Bool)

(declare-fun c!2584 () Bool)

(assert (=> d!5653 (= c!2584 (and (is-Cons!155 (map!147 xs!372 lambda!1235)) (is-Nil!156 (tail!385 (map!147 xs!372 lambda!1235)))))))

(declare-fun e!4178 () Balance!85)

(assert (=> d!5653 (= (foldRight1!26 (map!147 xs!372 lambda!1235) lambda!1236) e!4178)))

(declare-fun b!7213 () Bool)

(assert (=> b!7213 (= e!4178 (head!373 (map!147 xs!372 lambda!1235)))))

(declare-fun b!7214 () Bool)

(assert (=> b!7214 (= e!4178 (dynLambda!136 lambda!1236 (head!373 (map!147 xs!372 lambda!1235)) (foldRight1!26 (tail!385 (map!147 xs!372 lambda!1235)) lambda!1236)))))

(assert (= (and d!5653 c!2584) b!7213))

(assert (= (and d!5653 (not c!2584)) b!7214))

(declare-fun b_lambda!3435 () Bool)

(assert (=> (not b_lambda!3435) (not b!7214)))

(declare-fun m!10053 () Bool)

(assert (=> b!7214 m!10053))

(assert (=> b!7214 m!10053))

(declare-fun m!10055 () Bool)

(assert (=> b!7214 m!10055))

(assert (=> b!7188 d!5653))

(declare-fun d!5655 () Bool)

(assert (=> d!5655 (= (isEmpty!138 thiss!1191) (is-Nil!156 thiss!1191))))

(assert (=> b!7189 d!5655))

(declare-fun d!5657 () Bool)

(declare-fun fromParenthesis!0 (Parenthesis!37) Balance!85)

(assert (=> d!5657 (= (fromParenthesis!0 (head!372 xs!372)) (ite (is-OpenParenthesis!36 (head!372 xs!372)) (Balance!86 1 0) (Balance!86 0 1)))))

(assert (=> b!7190 d!5657))

(declare-fun d!5659 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!5659 (= trivial!1 true)))

(assert (=> b!7190 d!5659))

(declare-fun d!5661 () Bool)

(assert (=> d!5661 (= (isEmpty!137 xs!372) (is-Nil!155 xs!372))))

(assert (=> start!1314 d!5661))

(declare-fun d!5663 () Bool)

(declare-fun res!2078 () Bool)

(declare-fun e!4181 () Bool)

(assert (=> d!5663 (=> (not res!2078) (not e!4181))))

(declare-fun dynLambda!138 (Int) Balance!85)

(assert (=> d!5663 (= res!2078 (= (dynLambda!138 (x!3904 thiss!1145)) (dynLambda!138 (y!457 thiss!1145))))))

(assert (=> d!5663 (= (inv!252 thiss!1145) e!4181)))

(declare-fun b!7217 () Bool)

(assert (=> b!7217 (= e!4181 (dynLambda!135 (evidence!99 thiss!1145)))))

(assert (= (and d!5663 res!2078) b!7217))

(declare-fun b_lambda!3437 () Bool)

(assert (=> (not b_lambda!3437) (not d!5663)))

(declare-fun t!1391 () Bool)

(declare-fun tb!1051 () Bool)

(assert (=> (and b!7192 (= (x!3904 thiss!1145) (x!3904 thiss!1145)) t!1391) tb!1051))

(declare-fun result!1091 () Bool)

(assert (=> tb!1051 (= result!1091 true)))

(assert (=> d!5663 t!1391))

(declare-fun b_and!1923 () Bool)

(assert (= b_and!1915 (and (=> t!1391 result!1091) b_and!1923)))

(declare-fun t!1393 () Bool)

(declare-fun tb!1053 () Bool)

(assert (=> (and b!7192 (= (y!457 thiss!1145) (x!3904 thiss!1145)) t!1393) tb!1053))

(declare-fun result!1093 () Bool)

(assert (=> tb!1053 (= result!1093 true)))

(assert (=> d!5663 t!1393))

(declare-fun b_and!1925 () Bool)

(assert (= b_and!1917 (and (=> t!1393 result!1093) b_and!1925)))

(declare-fun b_lambda!3439 () Bool)

(assert (=> (not b_lambda!3439) (not d!5663)))

(declare-fun t!1395 () Bool)

(declare-fun tb!1055 () Bool)

(assert (=> (and b!7192 (= (x!3904 thiss!1145) (y!457 thiss!1145)) t!1395) tb!1055))

(declare-fun result!1095 () Bool)

(assert (=> tb!1055 (= result!1095 true)))

(assert (=> d!5663 t!1395))

(declare-fun b_and!1927 () Bool)

(assert (= b_and!1923 (and (=> t!1395 result!1095) b_and!1927)))

(declare-fun t!1397 () Bool)

(declare-fun tb!1057 () Bool)

(assert (=> (and b!7192 (= (y!457 thiss!1145) (y!457 thiss!1145)) t!1397) tb!1057))

(declare-fun result!1097 () Bool)

(assert (=> tb!1057 (= result!1097 true)))

(assert (=> d!5663 t!1397))

(declare-fun b_and!1929 () Bool)

(assert (= b_and!1925 (and (=> t!1397 result!1097) b_and!1929)))

(declare-fun b_lambda!3441 () Bool)

(assert (=> (not b_lambda!3441) (not b!7217)))

(declare-fun t!1399 () Bool)

(declare-fun tb!1059 () Bool)

(assert (=> (and b!7192 (= (evidence!99 thiss!1145) (evidence!99 thiss!1145)) t!1399) tb!1059))

(declare-fun result!1099 () Bool)

(assert (=> tb!1059 (= result!1099 true)))

(assert (=> b!7217 t!1399))

(declare-fun b_and!1931 () Bool)

(assert (= b_and!1919 (and (=> t!1399 result!1099) b_and!1931)))

(declare-fun m!10057 () Bool)

(assert (=> d!5663 m!10057))

(declare-fun m!10059 () Bool)

(assert (=> d!5663 m!10059))

(declare-fun m!10061 () Bool)

(assert (=> b!7217 m!10061))

(assert (=> start!1314 d!5663))

(assert (=> b!7186 d!5651))

(declare-fun b_lambda!3443 () Bool)

(assert (= b_lambda!3437 (or (and b!7190 (= lambda!1237 (x!3904 thiss!1145))) (and b!7190 (= lambda!1238 (x!3904 thiss!1145))) (and b!7192 b_free!407) (and b!7192 b_free!409 (= (y!457 thiss!1145) (x!3904 thiss!1145))) b_lambda!3443)))

(declare-fun bs!1616 () Bool)

(declare-fun d!5665 () Bool)

(assert (= bs!1616 (and d!5665 b!7190)))

(assert (=> bs!1616 (= (dynLambda!138 lambda!1237) (foldRight1!26 (append!59 (map!147 xs!372 lambda!1235) (Cons!155 (Balance!86 0 0) Nil!156)) lambda!1236))))

(assert (=> bs!1616 m!10029))

(assert (=> bs!1616 m!10029))

(assert (=> bs!1616 m!10035))

(assert (=> bs!1616 m!10035))

(assert (=> bs!1616 m!10039))

(assert (=> (and b!7190 (= lambda!1237 (x!3904 thiss!1145)) d!5663) d!5665))

(declare-fun bs!1617 () Bool)

(declare-fun d!5667 () Bool)

(assert (= bs!1617 (and d!5667 b!7190)))

(declare-fun ++!3 (Balance!85 Balance!85) Balance!85)

(assert (=> bs!1617 (= (dynLambda!138 lambda!1238) (++!3 (fromParenthesis!0 (head!372 xs!372)) (foldRight1!26 (map!147 (tail!384 xs!372) lambda!1235) lambda!1236)))))

(assert (=> bs!1617 m!10051))

(assert (=> bs!1617 m!10051))

(declare-fun m!10063 () Bool)

(assert (=> bs!1617 m!10063))

(assert (=> bs!1617 m!10063))

(declare-fun m!10065 () Bool)

(assert (=> bs!1617 m!10065))

(assert (=> (and b!7190 (= lambda!1238 (x!3904 thiss!1145)) d!5663) d!5667))

(declare-fun b_lambda!3445 () Bool)

(assert (= b_lambda!3433 (or b!7188 b_lambda!3445)))

(declare-fun bs!1618 () Bool)

(declare-fun d!5669 () Bool)

(assert (= bs!1618 (and d!5669 b!7188)))

(assert (=> bs!1618 (= (dynLambda!137 lambda!1235 (head!372 xs!372)) (fromParenthesis!0 (head!372 xs!372)))))

(assert (=> bs!1618 m!10025))

(assert (=> b!7212 d!5669))

(declare-fun b_lambda!3447 () Bool)

(assert (= b_lambda!3441 (or (and b!7190 (= lambda!1239 (evidence!99 thiss!1145))) (and b!7192 b_free!411) b_lambda!3447)))

(declare-fun bs!1619 () Bool)

(declare-fun d!5671 () Bool)

(assert (= bs!1619 (and d!5671 b!7190)))

(assert (=> bs!1619 (= (dynLambda!135 lambda!1239) trivial!1)))

(assert (=> (and b!7190 (= lambda!1239 (evidence!99 thiss!1145)) b!7217) d!5671))

(declare-fun b_lambda!3449 () Bool)

(assert (= b_lambda!3435 (or b!7188 b_lambda!3449)))

(declare-fun bs!1620 () Bool)

(declare-fun d!5673 () Bool)

(assert (= bs!1620 (and d!5673 b!7188)))

(assert (=> bs!1620 (= (dynLambda!136 lambda!1236 (head!373 (map!147 xs!372 lambda!1235)) (foldRight1!26 (tail!385 (map!147 xs!372 lambda!1235)) lambda!1236)) (++!3 (head!373 (map!147 xs!372 lambda!1235)) (foldRight1!26 (tail!385 (map!147 xs!372 lambda!1235)) lambda!1236)))))

(assert (=> bs!1620 m!10053))

(declare-fun m!10067 () Bool)

(assert (=> bs!1620 m!10067))

(assert (=> b!7214 d!5673))

(declare-fun b_lambda!3451 () Bool)

(assert (= b_lambda!3439 (or (and b!7190 (= lambda!1237 (y!457 thiss!1145))) (and b!7190 (= lambda!1238 (y!457 thiss!1145))) (and b!7192 b_free!407 (= (x!3904 thiss!1145) (y!457 thiss!1145))) (and b!7192 b_free!409) b_lambda!3451)))

(declare-fun bs!1621 () Bool)

(declare-fun d!5675 () Bool)

(assert (= bs!1621 (and d!5675 b!7190)))

(assert (=> bs!1621 (= (dynLambda!138 lambda!1237) (foldRight1!26 (append!59 (map!147 xs!372 lambda!1235) (Cons!155 (Balance!86 0 0) Nil!156)) lambda!1236))))

(assert (=> bs!1621 m!10029))

(assert (=> bs!1621 m!10029))

(assert (=> bs!1621 m!10035))

(assert (=> bs!1621 m!10035))

(assert (=> bs!1621 m!10039))

(assert (=> (and b!7190 (= lambda!1237 (y!457 thiss!1145)) d!5663) d!5675))

(declare-fun bs!1622 () Bool)

(declare-fun d!5677 () Bool)

(assert (= bs!1622 (and d!5677 b!7190)))

(assert (=> bs!1622 (= (dynLambda!138 lambda!1238) (++!3 (fromParenthesis!0 (head!372 xs!372)) (foldRight1!26 (map!147 (tail!384 xs!372) lambda!1235) lambda!1236)))))

(assert (=> bs!1622 m!10051))

(assert (=> bs!1622 m!10051))

(assert (=> bs!1622 m!10063))

(assert (=> bs!1622 m!10063))

(assert (=> bs!1622 m!10065))

(assert (=> (and b!7190 (= lambda!1238 (y!457 thiss!1145)) d!5663) d!5677))

(declare-fun b_lambda!3453 () Bool)

(assert (= b_lambda!3431 (or b!7188 b_lambda!3453)))

(declare-fun bs!1623 () Bool)

(declare-fun d!5679 () Bool)

(assert (= bs!1623 (and d!5679 b!7188)))

(assert (=> bs!1623 (= (dynLambda!136 lambda!1236 (head!373 (append!59 (map!147 xs!372 lambda!1235) (Cons!155 (Balance!86 0 0) Nil!156))) (foldRight1!26 (tail!385 (append!59 (map!147 xs!372 lambda!1235) (Cons!155 (Balance!86 0 0) Nil!156))) lambda!1236)) (++!3 (head!373 (append!59 (map!147 xs!372 lambda!1235) (Cons!155 (Balance!86 0 0) Nil!156))) (foldRight1!26 (tail!385 (append!59 (map!147 xs!372 lambda!1235) (Cons!155 (Balance!86 0 0) Nil!156))) lambda!1236)))))

(assert (=> bs!1623 m!10043))

(declare-fun m!10069 () Bool)

(assert (=> bs!1623 m!10069))

(assert (=> b!7200 d!5679))

(push 1)

(assert (not b!7214))

(assert (not b_next!895))

(assert (not b_next!885))

(assert (not b_lambda!3449))

(assert (not b!7212))

(assert (not b_next!893))

(assert (not b_lambda!3445))

(assert (not b_lambda!3447))

(assert (not b!7206))

(assert (not b_lambda!3453))

(assert (not bs!1618))

(assert (not bs!1623))

(assert (not b_next!891))

(assert (not b_lambda!3443))

(assert (not bs!1620))

(assert (not bs!1621))

(assert (not bs!1616))

(assert b_and!1927)

(assert b_and!1931)

(assert (not b!7200))

(assert (not b_lambda!3451))

(assert b_and!1921)

(assert (not bs!1617))

(assert (not bs!1622))

(assert b_and!1929)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!895))

(assert (not b_next!885))

(assert (not b_next!893))

(assert (not b_next!891))

(assert b_and!1927)

(assert b_and!1931)

(assert b_and!1921)

(assert b_and!1929)

(check-sat)

(pop 1)

