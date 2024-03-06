; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1298 () Bool)

(assert start!1298)

(declare-fun b!7139 () Bool)

(declare-fun b_free!399 () Bool)

(declare-fun b_next!857 () Bool)

(assert (=> b!7139 (= b_free!399 (not b_next!857))))

(declare-fun tp!730 () Bool)

(declare-fun b_and!1897 () Bool)

(assert (=> b!7139 (= tp!730 b_and!1897)))

(declare-fun b_free!401 () Bool)

(declare-fun b_next!859 () Bool)

(assert (=> b!7139 (= b_free!401 (not b_next!859))))

(declare-fun tp!727 () Bool)

(declare-fun b_and!1899 () Bool)

(assert (=> b!7139 (= tp!727 b_and!1899)))

(declare-fun b_free!403 () Bool)

(declare-fun b_next!861 () Bool)

(assert (=> b!7139 (= b_free!403 (not b_next!861))))

(declare-fun tp!728 () Bool)

(declare-fun b_and!1901 () Bool)

(assert (=> b!7139 (= tp!728 b_and!1901)))

(declare-fun b_free!405 () Bool)

(declare-fun b_next!863 () Bool)

(assert (=> start!1298 (= b_free!405 (not b_next!863))))

(declare-fun tp!729 () Bool)

(declare-fun b_and!1903 () Bool)

(assert (=> start!1298 (= tp!729 b_and!1903)))

(declare-fun f!702 () Int)

(declare-fun b!7136 () Bool)

(declare-fun lambda!1205 () Int)

(declare-fun b_next!865 () Bool)

(assert (=> start!1298 (= b_next!863 (or (and b!7136 (= lambda!1205 f!702)) b_next!865))))

(declare-fun b!7140 () Bool)

(assert (=> b!7140 true))

(declare-datatypes () ((Balance!83 (Balance!84 (extraOpen!82 Int) (extraClose!82 Int)))))

(declare-datatypes () ((EqEvidence!62 (EqEvidence!63 (x!3880 Int) (y!456 Int) (evidence!98 Int)))))

(declare-fun thiss!1146 () EqEvidence!62)

(declare-fun b_next!867 () Bool)

(declare-fun lambda!1206 () Int)

(assert (=> b!7139 (= b_next!857 (or (and b!7140 (= lambda!1206 (x!3880 thiss!1146))) b_next!867))))

(declare-fun b_next!869 () Bool)

(assert (=> b!7139 (= b_next!859 (or (and b!7140 (= lambda!1206 (y!456 thiss!1146))) b_next!869))))

(declare-fun m!9971 () Bool)

(assert (=> b!7140 m!9971))

(declare-fun lambda!1207 () Int)

(assert (=> b!7140 (not (= lambda!1207 lambda!1206))))

(assert (=> b!7140 true))

(declare-fun b_next!871 () Bool)

(assert (=> b!7139 (= b_next!867 (or (and b!7140 (= lambda!1207 (x!3880 thiss!1146))) b_next!871))))

(declare-fun b_next!873 () Bool)

(assert (=> b!7139 (= b_next!869 (or (and b!7140 (= lambda!1207 (y!456 thiss!1146))) b_next!873))))

(assert (=> b!7140 true))

(declare-fun b_next!875 () Bool)

(declare-fun lambda!1208 () Int)

(assert (=> b!7139 (= b_next!861 (or (and b!7140 (= lambda!1208 (evidence!98 thiss!1146))) b_next!875))))

(declare-fun b!7135 () Bool)

(declare-fun e!4147 () Bool)

(declare-datatypes () ((List!155 (Nil!153) (Cons!152 (head!370 Balance!83) (tail!382 List!155)))))

(declare-fun thiss!1185 () List!155)

(declare-fun isEmpty!135 (List!155) Bool)

(assert (=> b!7135 (= e!4147 (isEmpty!135 thiss!1185))))

(declare-fun res!2048 () Bool)

(assert (=> b!7136 (=> (not res!2048) (not e!4147))))

(declare-datatypes () ((Parenthesis!36 (CloseParenthesis!35) (OpenParenthesis!35))))

(declare-datatypes () ((List!156 (Nil!154) (Cons!153 (head!371 Parenthesis!36) (tail!383 List!156)))))

(declare-fun xs!372 () List!156)

(declare-datatypes () ((ProofOps!58 (ProofOps!59 (prop!139 Bool)))))

(declare-fun thiss!1106 () ProofOps!58)

(declare-fun lambda!1204 () Int)

(declare-fun foldRight1!25 (List!155 Int) Balance!83)

(declare-fun append!58 (List!155 List!155) List!155)

(declare-fun map!146 (List!156 Int) List!155)

(assert (=> b!7136 (= res!2048 (= thiss!1106 (ProofOps!59 (= (foldRight1!25 (append!58 (map!146 xs!372 lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153)) lambda!1205) (foldRight1!25 (map!146 xs!372 lambda!1204) lambda!1205)))))))

(declare-fun b!7137 () Bool)

(declare-fun res!2051 () Bool)

(assert (=> b!7137 (=> (not res!2051) (not e!4147))))

(assert (=> b!7137 (= res!2051 (= thiss!1185 (map!146 (tail!383 xs!372) lambda!1204)))))

(declare-fun res!2053 () Bool)

(assert (=> start!1298 (=> (not res!2053) (not e!4147))))

(declare-fun isEmpty!136 (List!156) Bool)

(assert (=> start!1298 (= res!2053 (not (isEmpty!136 xs!372)))))

(assert (=> start!1298 e!4147))

(declare-fun e!4148 () Bool)

(declare-fun inv!251 (EqEvidence!62) Bool)

(assert (=> start!1298 (and (inv!251 thiss!1146) e!4148)))

(assert (=> start!1298 true))

(assert (=> start!1298 tp!729))

(declare-fun b!7138 () Bool)

(declare-fun res!2054 () Bool)

(assert (=> b!7138 (=> (not res!2054) (not e!4147))))

(assert (=> b!7138 (= res!2054 (or (not (is-Cons!153 xs!372)) (not (is-Nil!154 (tail!383 xs!372)))))))

(assert (=> b!7139 (= e!4148 (and tp!730 tp!727 tp!728))))

(declare-fun res!2050 () Bool)

(assert (=> b!7140 (=> (not res!2050) (not e!4147))))

(assert (=> b!7140 (= res!2050 (= thiss!1146 (EqEvidence!63 lambda!1206 lambda!1207 lambda!1208)))))

(declare-fun b!7141 () Bool)

(declare-fun res!2052 () Bool)

(assert (=> b!7141 (=> (not res!2052) (not e!4147))))

(declare-fun thiss!1184 () Balance!83)

(declare-fun fromParenthesis!0 (Parenthesis!36) Balance!83)

(assert (=> b!7141 (= res!2052 (= thiss!1184 (fromParenthesis!0 (head!371 xs!372))))))

(declare-fun b!7142 () Bool)

(declare-fun res!2049 () Bool)

(assert (=> b!7142 (=> (not res!2049) (not e!4147))))

(assert (=> b!7142 (= res!2049 (= f!702 lambda!1205))))

(assert (= (and start!1298 res!2053) b!7136))

(assert (= (and b!7136 res!2048) b!7138))

(assert (= (and b!7138 res!2054) b!7140))

(assert (= (and b!7140 res!2050) b!7141))

(assert (= (and b!7141 res!2052) b!7137))

(assert (= (and b!7137 res!2051) b!7142))

(assert (= (and b!7142 res!2049) b!7135))

(assert (= start!1298 b!7139))

(declare-fun m!9973 () Bool)

(assert (=> start!1298 m!9973))

(declare-fun m!9975 () Bool)

(assert (=> start!1298 m!9975))

(declare-fun m!9977 () Bool)

(assert (=> b!7137 m!9977))

(assert (=> b!7141 m!9971))

(declare-fun m!9979 () Bool)

(assert (=> b!7135 m!9979))

(declare-fun m!9981 () Bool)

(assert (=> b!7136 m!9981))

(declare-fun m!9983 () Bool)

(assert (=> b!7136 m!9983))

(assert (=> b!7136 m!9981))

(declare-fun m!9985 () Bool)

(assert (=> b!7136 m!9985))

(assert (=> b!7136 m!9983))

(declare-fun m!9987 () Bool)

(assert (=> b!7136 m!9987))

(assert (=> b!7136 m!9981))

(assert (=> b!7136 m!9981))

(push 1)

(assert (not b!7136))

(assert (not b_next!865))

(assert b_and!1897)

(assert (not b_next!873))

(assert (not b!7140))

(assert (not b!7137))

(assert (not b_next!875))

(assert (not b!7135))

(assert b_and!1899)

(assert (not b_next!871))

(assert (not b!7141))

(assert b_and!1903)

(assert b_and!1901)

(assert (not start!1298))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!865))

(assert b_and!1897)

(assert (not b_next!873))

(assert (not b_next!875))

(assert b_and!1899)

(assert (not b_next!871))

(assert b_and!1903)

(assert b_and!1901)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5611 () Bool)

(assert (=> d!5611 (= (fromParenthesis!0 (head!371 xs!372)) (ite (is-OpenParenthesis!35 (head!371 xs!372)) (Balance!84 1 0) (Balance!84 0 1)))))

(assert (=> b!7140 d!5611))

(declare-fun d!5613 () Bool)

(assert (=> d!5613 (= (isEmpty!135 thiss!1185) (is-Nil!153 thiss!1185))))

(assert (=> b!7135 d!5613))

(assert (=> b!7141 d!5611))

(declare-fun d!5615 () Bool)

(assert (=> d!5615 (= (isEmpty!136 xs!372) (is-Nil!154 xs!372))))

(assert (=> start!1298 d!5615))

(declare-fun d!5617 () Bool)

(declare-fun res!2057 () Bool)

(declare-fun e!4151 () Bool)

(assert (=> d!5617 (=> (not res!2057) (not e!4151))))

(declare-fun dynLambda!131 (Int) Balance!83)

(assert (=> d!5617 (= res!2057 (= (dynLambda!131 (x!3880 thiss!1146)) (dynLambda!131 (y!456 thiss!1146))))))

(assert (=> d!5617 (= (inv!251 thiss!1146) e!4151)))

(declare-fun b!7149 () Bool)

(declare-fun dynLambda!132 (Int) Bool)

(assert (=> b!7149 (= e!4151 (dynLambda!132 (evidence!98 thiss!1146)))))

(assert (= (and d!5617 res!2057) b!7149))

(declare-fun b_lambda!3403 () Bool)

(assert (=> (not b_lambda!3403) (not d!5617)))

(declare-fun t!1381 () Bool)

(declare-fun tb!1041 () Bool)

(assert (=> (and b!7139 (= (x!3880 thiss!1146) (x!3880 thiss!1146)) t!1381) tb!1041))

(declare-fun result!1081 () Bool)

(assert (=> tb!1041 (= result!1081 true)))

(assert (=> d!5617 t!1381))

(declare-fun b_and!1905 () Bool)

(assert (= b_and!1897 (and (=> t!1381 result!1081) b_and!1905)))

(declare-fun t!1383 () Bool)

(declare-fun tb!1043 () Bool)

(assert (=> (and b!7139 (= (y!456 thiss!1146) (x!3880 thiss!1146)) t!1383) tb!1043))

(declare-fun result!1083 () Bool)

(assert (=> tb!1043 (= result!1083 true)))

(assert (=> d!5617 t!1383))

(declare-fun b_and!1907 () Bool)

(assert (= b_and!1899 (and (=> t!1383 result!1083) b_and!1907)))

(declare-fun b_lambda!3405 () Bool)

(assert (=> (not b_lambda!3405) (not d!5617)))

(declare-fun t!1385 () Bool)

(declare-fun tb!1045 () Bool)

(assert (=> (and b!7139 (= (x!3880 thiss!1146) (y!456 thiss!1146)) t!1385) tb!1045))

(declare-fun result!1085 () Bool)

(assert (=> tb!1045 (= result!1085 true)))

(assert (=> d!5617 t!1385))

(declare-fun b_and!1909 () Bool)

(assert (= b_and!1905 (and (=> t!1385 result!1085) b_and!1909)))

(declare-fun t!1387 () Bool)

(declare-fun tb!1047 () Bool)

(assert (=> (and b!7139 (= (y!456 thiss!1146) (y!456 thiss!1146)) t!1387) tb!1047))

(declare-fun result!1087 () Bool)

(assert (=> tb!1047 (= result!1087 true)))

(assert (=> d!5617 t!1387))

(declare-fun b_and!1911 () Bool)

(assert (= b_and!1907 (and (=> t!1387 result!1087) b_and!1911)))

(declare-fun b_lambda!3407 () Bool)

(assert (=> (not b_lambda!3407) (not b!7149)))

(declare-fun t!1389 () Bool)

(declare-fun tb!1049 () Bool)

(assert (=> (and b!7139 (= (evidence!98 thiss!1146) (evidence!98 thiss!1146)) t!1389) tb!1049))

(declare-fun result!1089 () Bool)

(assert (=> tb!1049 (= result!1089 true)))

(assert (=> b!7149 t!1389))

(declare-fun b_and!1913 () Bool)

(assert (= b_and!1901 (and (=> t!1389 result!1089) b_and!1913)))

(declare-fun m!9989 () Bool)

(assert (=> d!5617 m!9989))

(declare-fun m!9991 () Bool)

(assert (=> d!5617 m!9991))

(declare-fun m!9993 () Bool)

(assert (=> b!7149 m!9993))

(assert (=> start!1298 d!5617))

(declare-fun d!5619 () Bool)

(declare-fun c!2566 () Bool)

(assert (=> d!5619 (= c!2566 (and (is-Cons!152 (append!58 (map!146 xs!372 lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153))) (is-Nil!153 (tail!382 (append!58 (map!146 xs!372 lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153))))))))

(declare-fun e!4154 () Balance!83)

(assert (=> d!5619 (= (foldRight1!25 (append!58 (map!146 xs!372 lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153)) lambda!1205) e!4154)))

(declare-fun b!7154 () Bool)

(assert (=> b!7154 (= e!4154 (head!370 (append!58 (map!146 xs!372 lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153))))))

(declare-fun b!7155 () Bool)

(declare-fun dynLambda!133 (Int Balance!83 Balance!83) Balance!83)

(assert (=> b!7155 (= e!4154 (dynLambda!133 lambda!1205 (head!370 (append!58 (map!146 xs!372 lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153))) (foldRight1!25 (tail!382 (append!58 (map!146 xs!372 lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153))) lambda!1205)))))

(assert (= (and d!5619 c!2566) b!7154))

(assert (= (and d!5619 (not c!2566)) b!7155))

(declare-fun b_lambda!3409 () Bool)

(assert (=> (not b_lambda!3409) (not b!7155)))

(declare-fun m!9995 () Bool)

(assert (=> b!7155 m!9995))

(assert (=> b!7155 m!9995))

(declare-fun m!9997 () Bool)

(assert (=> b!7155 m!9997))

(assert (=> b!7136 d!5619))

(declare-fun d!5621 () Bool)

(declare-fun c!2567 () Bool)

(assert (=> d!5621 (= c!2567 (and (is-Cons!152 (map!146 xs!372 lambda!1204)) (is-Nil!153 (tail!382 (map!146 xs!372 lambda!1204)))))))

(declare-fun e!4155 () Balance!83)

(assert (=> d!5621 (= (foldRight1!25 (map!146 xs!372 lambda!1204) lambda!1205) e!4155)))

(declare-fun b!7156 () Bool)

(assert (=> b!7156 (= e!4155 (head!370 (map!146 xs!372 lambda!1204)))))

(declare-fun b!7157 () Bool)

(assert (=> b!7157 (= e!4155 (dynLambda!133 lambda!1205 (head!370 (map!146 xs!372 lambda!1204)) (foldRight1!25 (tail!382 (map!146 xs!372 lambda!1204)) lambda!1205)))))

(assert (= (and d!5621 c!2567) b!7156))

(assert (= (and d!5621 (not c!2567)) b!7157))

(declare-fun b_lambda!3411 () Bool)

(assert (=> (not b_lambda!3411) (not b!7157)))

(declare-fun m!9999 () Bool)

(assert (=> b!7157 m!9999))

(assert (=> b!7157 m!9999))

(declare-fun m!10001 () Bool)

(assert (=> b!7157 m!10001))

(assert (=> b!7136 d!5621))

(declare-fun d!5623 () Bool)

(declare-fun c!2570 () Bool)

(assert (=> d!5623 (= c!2570 (is-Nil!154 xs!372))))

(declare-fun e!4158 () List!155)

(assert (=> d!5623 (= (map!146 xs!372 lambda!1204) e!4158)))

(declare-fun b!7162 () Bool)

(assert (=> b!7162 (= e!4158 Nil!153)))

(declare-fun b!7163 () Bool)

(declare-fun dynLambda!134 (Int Parenthesis!36) Balance!83)

(assert (=> b!7163 (= e!4158 (Cons!152 (dynLambda!134 lambda!1204 (head!371 xs!372)) (map!146 (tail!383 xs!372) lambda!1204)))))

(assert (= (and d!5623 c!2570) b!7162))

(assert (= (and d!5623 (not c!2570)) b!7163))

(declare-fun b_lambda!3413 () Bool)

(assert (=> (not b_lambda!3413) (not b!7163)))

(declare-fun m!10003 () Bool)

(assert (=> b!7163 m!10003))

(assert (=> b!7163 m!9977))

(assert (=> b!7136 d!5623))

(declare-fun d!5625 () Bool)

(declare-fun c!2573 () Bool)

(assert (=> d!5625 (= c!2573 (is-Nil!153 (map!146 xs!372 lambda!1204)))))

(declare-fun e!4161 () List!155)

(assert (=> d!5625 (= (append!58 (map!146 xs!372 lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153)) e!4161)))

(declare-fun b!7168 () Bool)

(assert (=> b!7168 (= e!4161 (Cons!152 (Balance!84 0 0) Nil!153))))

(declare-fun b!7169 () Bool)

(assert (=> b!7169 (= e!4161 (Cons!152 (head!370 (map!146 xs!372 lambda!1204)) (append!58 (tail!382 (map!146 xs!372 lambda!1204)) (Cons!152 (Balance!84 0 0) Nil!153))))))

(assert (= (and d!5625 c!2573) b!7168))

(assert (= (and d!5625 (not c!2573)) b!7169))

(declare-fun m!10005 () Bool)

(assert (=> b!7169 m!10005))

(assert (=> b!7136 d!5625))

(declare-fun d!5627 () Bool)

(declare-fun c!2574 () Bool)

(assert (=> d!5627 (= c!2574 (is-Nil!154 (tail!383 xs!372)))))

(declare-fun e!4162 () List!155)

(assert (=> d!5627 (= (map!146 (tail!383 xs!372) lambda!1204) e!4162)))

(declare-fun b!7170 () Bool)

(assert (=> b!7170 (= e!4162 Nil!153)))

(declare-fun b!7171 () Bool)

(assert (=> b!7171 (= e!4162 (Cons!152 (dynLambda!134 lambda!1204 (head!371 (tail!383 xs!372))) (map!146 (tail!383 (tail!383 xs!372)) lambda!1204)))))

(assert (= (and d!5627 c!2574) b!7170))

(assert (= (and d!5627 (not c!2574)) b!7171))

(declare-fun b_lambda!3415 () Bool)

(assert (=> (not b_lambda!3415) (not b!7171)))

(declare-fun m!10007 () Bool)

(assert (=> b!7171 m!10007))

(declare-fun m!10009 () Bool)

(assert (=> b!7171 m!10009))

(assert (=> b!7137 d!5627))

(declare-fun b_lambda!3417 () Bool)

(assert (= b_lambda!3415 (or b!7136 b_lambda!3417)))

(declare-fun bs!1606 () Bool)

(declare-fun d!5629 () Bool)

(assert (= bs!1606 (and d!5629 b!7136)))

(assert (=> bs!1606 (= (dynLambda!134 lambda!1204 (head!371 (tail!383 xs!372))) (fromParenthesis!0 (head!371 (tail!383 xs!372))))))

(declare-fun m!10011 () Bool)

(assert (=> bs!1606 m!10011))

(assert (=> b!7171 d!5629))

(declare-fun b_lambda!3419 () Bool)

(assert (= b_lambda!3407 (or (and b!7140 (= lambda!1208 (evidence!98 thiss!1146))) (and b!7139 b_free!403) b_lambda!3419)))

(declare-fun bs!1607 () Bool)

(declare-fun d!5631 () Bool)

(assert (= bs!1607 (and d!5631 b!7140)))

(declare-fun remove_null_balance!0 (List!156) Bool)

(assert (=> bs!1607 (= (dynLambda!132 lambda!1208) (remove_null_balance!0 (tail!383 xs!372)))))

(declare-fun m!10013 () Bool)

(assert (=> bs!1607 m!10013))

(assert (=> (and b!7140 (= lambda!1208 (evidence!98 thiss!1146)) b!7149) d!5631))

(declare-fun b_lambda!3421 () Bool)

(assert (= b_lambda!3405 (or (and b!7140 (= lambda!1206 (y!456 thiss!1146))) (and b!7140 (= lambda!1207 (y!456 thiss!1146))) (and b!7139 b_free!399 (= (x!3880 thiss!1146) (y!456 thiss!1146))) (and b!7139 b_free!401) b_lambda!3421)))

(declare-fun bs!1608 () Bool)

(declare-fun d!5633 () Bool)

(assert (= bs!1608 (and d!5633 b!7140)))

(assert (=> bs!1608 (= (dynLambda!131 lambda!1206) (foldRight1!25 (append!58 (map!146 xs!372 lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153)) lambda!1205))))

(assert (=> bs!1608 m!9981))

(assert (=> bs!1608 m!9981))

(assert (=> bs!1608 m!9983))

(assert (=> bs!1608 m!9983))

(assert (=> bs!1608 m!9987))

(assert (=> (and b!7140 (= lambda!1206 (y!456 thiss!1146)) d!5617) d!5633))

(declare-fun bs!1609 () Bool)

(declare-fun d!5635 () Bool)

(assert (= bs!1609 (and d!5635 b!7140)))

(declare-fun ++!3 (Balance!83 Balance!83) Balance!83)

(assert (=> bs!1609 (= (dynLambda!131 lambda!1207) (++!3 (fromParenthesis!0 (head!371 xs!372)) (foldRight1!25 (append!58 (map!146 (tail!383 xs!372) lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153)) lambda!1205)))))

(declare-fun m!10015 () Bool)

(assert (=> bs!1609 m!10015))

(declare-fun m!10017 () Bool)

(assert (=> bs!1609 m!10017))

(assert (=> bs!1609 m!9977))

(assert (=> bs!1609 m!10017))

(declare-fun m!10019 () Bool)

(assert (=> bs!1609 m!10019))

(assert (=> bs!1609 m!9977))

(assert (=> bs!1609 m!10015))

(assert (=> (and b!7140 (= lambda!1207 (y!456 thiss!1146)) d!5617) d!5635))

(declare-fun b_lambda!3423 () Bool)

(assert (= b_lambda!3413 (or b!7136 b_lambda!3423)))

(declare-fun bs!1610 () Bool)

(declare-fun d!5637 () Bool)

(assert (= bs!1610 (and d!5637 b!7136)))

(assert (=> bs!1610 (= (dynLambda!134 lambda!1204 (head!371 xs!372)) (fromParenthesis!0 (head!371 xs!372)))))

(assert (=> bs!1610 m!9971))

(assert (=> b!7163 d!5637))

(declare-fun b_lambda!3425 () Bool)

(assert (= b_lambda!3403 (or (and b!7140 (= lambda!1206 (x!3880 thiss!1146))) (and b!7140 (= lambda!1207 (x!3880 thiss!1146))) (and b!7139 b_free!399) (and b!7139 b_free!401 (= (y!456 thiss!1146) (x!3880 thiss!1146))) b_lambda!3425)))

(declare-fun bs!1611 () Bool)

(declare-fun d!5639 () Bool)

(assert (= bs!1611 (and d!5639 b!7140)))

(assert (=> bs!1611 (= (dynLambda!131 lambda!1206) (foldRight1!25 (append!58 (map!146 xs!372 lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153)) lambda!1205))))

(assert (=> bs!1611 m!9981))

(assert (=> bs!1611 m!9981))

(assert (=> bs!1611 m!9983))

(assert (=> bs!1611 m!9983))

(assert (=> bs!1611 m!9987))

(assert (=> (and b!7140 (= lambda!1206 (x!3880 thiss!1146)) d!5617) d!5639))

(declare-fun bs!1612 () Bool)

(declare-fun d!5641 () Bool)

(assert (= bs!1612 (and d!5641 b!7140)))

(assert (=> bs!1612 (= (dynLambda!131 lambda!1207) (++!3 (fromParenthesis!0 (head!371 xs!372)) (foldRight1!25 (append!58 (map!146 (tail!383 xs!372) lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153)) lambda!1205)))))

(assert (=> bs!1612 m!10015))

(assert (=> bs!1612 m!10017))

(assert (=> bs!1612 m!9977))

(assert (=> bs!1612 m!10017))

(assert (=> bs!1612 m!10019))

(assert (=> bs!1612 m!9977))

(assert (=> bs!1612 m!10015))

(assert (=> (and b!7140 (= lambda!1207 (x!3880 thiss!1146)) d!5617) d!5641))

(declare-fun b_lambda!3427 () Bool)

(assert (= b_lambda!3411 (or b!7136 b_lambda!3427)))

(declare-fun bs!1613 () Bool)

(declare-fun d!5643 () Bool)

(assert (= bs!1613 (and d!5643 b!7136)))

(assert (=> bs!1613 (= (dynLambda!133 lambda!1205 (head!370 (map!146 xs!372 lambda!1204)) (foldRight1!25 (tail!382 (map!146 xs!372 lambda!1204)) lambda!1205)) (++!3 (head!370 (map!146 xs!372 lambda!1204)) (foldRight1!25 (tail!382 (map!146 xs!372 lambda!1204)) lambda!1205)))))

(assert (=> bs!1613 m!9999))

(declare-fun m!10021 () Bool)

(assert (=> bs!1613 m!10021))

(assert (=> b!7157 d!5643))

(declare-fun b_lambda!3429 () Bool)

(assert (= b_lambda!3409 (or b!7136 b_lambda!3429)))

(declare-fun bs!1614 () Bool)

(declare-fun d!5645 () Bool)

(assert (= bs!1614 (and d!5645 b!7136)))

(assert (=> bs!1614 (= (dynLambda!133 lambda!1205 (head!370 (append!58 (map!146 xs!372 lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153))) (foldRight1!25 (tail!382 (append!58 (map!146 xs!372 lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153))) lambda!1205)) (++!3 (head!370 (append!58 (map!146 xs!372 lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153))) (foldRight1!25 (tail!382 (append!58 (map!146 xs!372 lambda!1204) (Cons!152 (Balance!84 0 0) Nil!153))) lambda!1205)))))

(assert (=> bs!1614 m!9995))

(declare-fun m!10023 () Bool)

(assert (=> bs!1614 m!10023))

(assert (=> b!7155 d!5645))

(push 1)

(assert b_and!1909)

(assert (not b_lambda!3419))

(assert (not bs!1606))

(assert (not b_lambda!3425))

(assert (not b_next!865))

(assert (not b_next!873))

(assert (not b!7163))

(assert (not bs!1613))

(assert (not b_next!875))

(assert (not bs!1609))

(assert b_and!1913)

(assert (not b!7169))

(assert (not bs!1612))

(assert (not b_lambda!3423))

(assert (not bs!1608))

(assert (not b_lambda!3429))

(assert (not b_next!871))

(assert (not bs!1611))

(assert (not bs!1614))

(assert b_and!1903)

(assert (not b!7157))

(assert (not bs!1607))

(assert (not b!7155))

(assert (not b_lambda!3417))

(assert b_and!1911)

(assert (not b!7171))

(assert (not b_lambda!3421))

(assert (not bs!1610))

(assert (not b_lambda!3427))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1909)

(assert (not b_next!865))

(assert (not b_next!873))

(assert (not b_next!875))

(assert b_and!1913)

(assert (not b_next!871))

(assert b_and!1903)

(assert b_and!1911)

(check-sat)

(pop 1)

