; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1142 () Bool)

(assert start!1142)

(declare-fun b!6670 () Bool)

(declare-fun b_free!323 () Bool)

(declare-fun b_next!677 () Bool)

(assert (=> b!6670 (= b_free!323 (not b_next!677))))

(declare-fun tp!622 () Bool)

(declare-fun b_and!1655 () Bool)

(assert (=> b!6670 (= tp!622 b_and!1655)))

(declare-fun b_free!325 () Bool)

(declare-fun b_next!679 () Bool)

(assert (=> b!6670 (= b_free!325 (not b_next!679))))

(declare-fun tp!619 () Bool)

(declare-fun b_and!1657 () Bool)

(assert (=> b!6670 (= tp!619 b_and!1657)))

(declare-fun b_free!327 () Bool)

(declare-fun b_next!681 () Bool)

(assert (=> b!6670 (= b_free!327 (not b_next!681))))

(declare-fun tp!617 () Bool)

(declare-fun b_and!1659 () Bool)

(assert (=> b!6670 (= tp!617 b_and!1659)))

(declare-fun b!6673 () Bool)

(declare-fun b_free!329 () Bool)

(declare-fun b_next!683 () Bool)

(assert (=> b!6673 (= b_free!329 (not b_next!683))))

(declare-fun tp!618 () Bool)

(declare-fun b_and!1661 () Bool)

(assert (=> b!6673 (= tp!618 b_and!1661)))

(declare-fun b_free!331 () Bool)

(declare-fun b_next!685 () Bool)

(assert (=> b!6673 (= b_free!331 (not b_next!685))))

(declare-fun tp!620 () Bool)

(declare-fun b_and!1663 () Bool)

(assert (=> b!6673 (= tp!620 b_and!1663)))

(declare-fun b_free!333 () Bool)

(declare-fun b_next!687 () Bool)

(assert (=> b!6673 (= b_free!333 (not b_next!687))))

(declare-fun tp!621 () Bool)

(declare-fun b_and!1665 () Bool)

(assert (=> b!6673 (= tp!621 b_and!1665)))

(declare-fun b!6671 () Bool)

(assert (=> b!6671 true))

(declare-datatypes () ((Balance!59 (Balance!60 (extraOpen!70 Int) (extraClose!70 Int)))))

(declare-datatypes () ((EqEvidence!48 (EqEvidence!49 (x!3641 Int) (y!445 Int) (evidence!91 Int)))))

(declare-fun thiss!1204 () EqEvidence!48)

(declare-fun lambda!915 () Int)

(declare-fun b_next!689 () Bool)

(assert (=> b!6670 (= b_next!677 (or (and b!6671 (= lambda!915 (x!3641 thiss!1204))) b_next!689))))

(declare-fun b_next!691 () Bool)

(assert (=> b!6670 (= b_next!679 (or (and b!6671 (= lambda!915 (y!445 thiss!1204))) b_next!691))))

(declare-fun b_next!693 () Bool)

(declare-fun that!338 () EqEvidence!48)

(assert (=> b!6673 (= b_next!683 (or (and b!6671 (= lambda!915 (x!3641 that!338))) b_next!693))))

(declare-fun b_next!695 () Bool)

(assert (=> b!6673 (= b_next!685 (or (and b!6671 (= lambda!915 (y!445 that!338))) b_next!695))))

(declare-fun lambda!919 () Int)

(assert (=> b!6671 (not (= lambda!919 lambda!915))))

(assert (=> b!6671 true))

(declare-fun b_next!697 () Bool)

(assert (=> b!6670 (= b_next!689 (or (and b!6671 (= lambda!919 (x!3641 thiss!1204))) b_next!697))))

(declare-fun b_next!699 () Bool)

(assert (=> b!6670 (= b_next!691 (or (and b!6671 (= lambda!919 (y!445 thiss!1204))) b_next!699))))

(declare-fun b_next!701 () Bool)

(assert (=> b!6673 (= b_next!693 (or (and b!6671 (= lambda!919 (x!3641 that!338))) b_next!701))))

(declare-fun b_next!703 () Bool)

(assert (=> b!6673 (= b_next!695 (or (and b!6671 (= lambda!919 (y!445 that!338))) b_next!703))))

(assert (=> b!6671 true))

(declare-fun b_next!705 () Bool)

(declare-fun lambda!920 () Int)

(assert (=> b!6670 (= b_next!681 (or (and b!6671 (= lambda!920 (evidence!91 thiss!1204))) b_next!705))))

(declare-fun b_next!707 () Bool)

(assert (=> b!6673 (= b_next!687 (or (and b!6671 (= lambda!920 (evidence!91 that!338))) b_next!707))))

(declare-fun bs!1500 () Bool)

(declare-fun b!6672 () Bool)

(assert (= bs!1500 (and b!6672 b!6671)))

(declare-fun lambda!921 () Int)

(assert (=> bs!1500 (not (= lambda!921 lambda!915))))

(assert (=> bs!1500 (not (= lambda!921 lambda!919))))

(assert (=> b!6672 true))

(declare-fun b_next!709 () Bool)

(assert (=> b!6670 (= b_next!697 (or (and b!6672 (= lambda!921 (x!3641 thiss!1204))) b_next!709))))

(declare-fun b_next!711 () Bool)

(assert (=> b!6670 (= b_next!699 (or (and b!6672 (= lambda!921 (y!445 thiss!1204))) b_next!711))))

(declare-fun b_next!713 () Bool)

(assert (=> b!6673 (= b_next!701 (or (and b!6672 (= lambda!921 (x!3641 that!338))) b_next!713))))

(declare-fun b_next!715 () Bool)

(assert (=> b!6673 (= b_next!703 (or (and b!6672 (= lambda!921 (y!445 that!338))) b_next!715))))

(declare-fun lambda!922 () Int)

(assert (=> bs!1500 (not (= lambda!922 lambda!920))))

(assert (=> b!6672 true))

(declare-fun b_next!717 () Bool)

(assert (=> b!6670 (= b_next!705 (or (and b!6672 (= lambda!922 (evidence!91 thiss!1204))) b_next!717))))

(declare-fun b_next!719 () Bool)

(assert (=> b!6673 (= b_next!707 (or (and b!6672 (= lambda!922 (evidence!91 that!338))) b_next!719))))

(declare-fun b!6667 () Bool)

(declare-fun res!1850 () Bool)

(declare-fun e!3937 () Bool)

(assert (=> b!6667 (=> (not res!1850) (not e!3937))))

(declare-datatypes () ((ProofOps!42 (ProofOps!43 (prop!129 Bool)))))

(declare-fun thiss!1201 () ProofOps!42)

(declare-datatypes () ((Parenthesis!26 (CloseParenthesis!25) (OpenParenthesis!25))))

(declare-datatypes () ((List!135 (Nil!133) (Cons!132 (head!350 Parenthesis!26) (tail!362 List!135)))))

(declare-fun xs!395 () List!135)

(declare-fun isMatchedSequential!0 (List!135) Bool)

(declare-fun isMatchedHybid!0 (List!135) Bool)

(assert (=> b!6667 (= res!1850 (= thiss!1201 (ProofOps!43 (= (isMatchedSequential!0 xs!395) (isMatchedHybid!0 xs!395)))))))

(declare-fun b!6668 () Bool)

(declare-fun res!1848 () Bool)

(assert (=> b!6668 (=> (not res!1848) (not e!3937))))

(declare-fun dynLambda!100 (Int) Bool)

(assert (=> b!6668 (= res!1848 (dynLambda!100 (evidence!91 thiss!1204)))))

(declare-fun b!6669 () Bool)

(declare-fun dynLambda!101 (Int) Balance!59)

(assert (=> b!6669 (= e!3937 (not (= (dynLambda!101 (y!445 thiss!1204)) (dynLambda!101 (x!3641 that!338)))))))

(declare-fun e!3938 () Bool)

(assert (=> b!6670 (= e!3938 (and tp!622 tp!619 tp!617))))

(declare-fun res!1852 () Bool)

(assert (=> b!6671 (=> (not res!1852) (not e!3937))))

(assert (=> b!6671 (= res!1852 (= thiss!1204 (EqEvidence!49 lambda!915 lambda!919 lambda!920)))))

(declare-fun res!1851 () Bool)

(assert (=> b!6672 (=> (not res!1851) (not e!3937))))

(assert (=> b!6672 (= res!1851 (= that!338 (EqEvidence!49 lambda!921 lambda!921 lambda!922)))))

(declare-fun e!3936 () Bool)

(assert (=> b!6673 (= e!3936 (and tp!618 tp!620 tp!621))))

(declare-fun res!1849 () Bool)

(assert (=> start!1142 (=> (not res!1849) (not e!3937))))

(declare-fun isEmpty!119 (List!135) Bool)

(assert (=> start!1142 (= res!1849 (not (isEmpty!119 xs!395)))))

(assert (=> start!1142 e!3937))

(assert (=> start!1142 true))

(declare-fun inv!240 (EqEvidence!48) Bool)

(assert (=> start!1142 (and (inv!240 thiss!1204) e!3938)))

(assert (=> start!1142 (and (inv!240 that!338) e!3936)))

(assert (= (and start!1142 res!1849) b!6667))

(assert (= (and b!6667 res!1850) b!6671))

(assert (= (and b!6671 res!1852) b!6672))

(assert (= (and b!6672 res!1851) b!6668))

(assert (= (and b!6668 res!1848) b!6669))

(assert (= start!1142 b!6670))

(assert (= start!1142 b!6673))

(declare-fun b_lambda!3175 () Bool)

(assert (=> (not b_lambda!3175) (not b!6668)))

(declare-fun t!1253 () Bool)

(declare-fun tb!913 () Bool)

(assert (=> (and b!6670 (= (evidence!91 thiss!1204) (evidence!91 thiss!1204)) t!1253) tb!913))

(declare-fun result!953 () Bool)

(assert (=> tb!913 (= result!953 true)))

(assert (=> b!6668 t!1253))

(declare-fun b_and!1667 () Bool)

(assert (= b_and!1659 (and (=> t!1253 result!953) b_and!1667)))

(declare-fun t!1255 () Bool)

(declare-fun tb!915 () Bool)

(assert (=> (and b!6673 (= (evidence!91 that!338) (evidence!91 thiss!1204)) t!1255) tb!915))

(declare-fun result!955 () Bool)

(assert (=> tb!915 (= result!955 true)))

(assert (=> b!6668 t!1255))

(declare-fun b_and!1669 () Bool)

(assert (= b_and!1665 (and (=> t!1255 result!955) b_and!1669)))

(declare-fun b_lambda!3177 () Bool)

(assert (=> (not b_lambda!3177) (not b!6669)))

(declare-fun t!1257 () Bool)

(declare-fun tb!917 () Bool)

(assert (=> (and b!6670 (= (x!3641 thiss!1204) (y!445 thiss!1204)) t!1257) tb!917))

(declare-fun result!957 () Bool)

(assert (=> tb!917 (= result!957 true)))

(assert (=> b!6669 t!1257))

(declare-fun b_and!1671 () Bool)

(assert (= b_and!1655 (and (=> t!1257 result!957) b_and!1671)))

(declare-fun t!1259 () Bool)

(declare-fun tb!919 () Bool)

(assert (=> (and b!6670 (= (y!445 thiss!1204) (y!445 thiss!1204)) t!1259) tb!919))

(declare-fun result!959 () Bool)

(assert (=> tb!919 (= result!959 true)))

(assert (=> b!6669 t!1259))

(declare-fun b_and!1673 () Bool)

(assert (= b_and!1657 (and (=> t!1259 result!959) b_and!1673)))

(declare-fun tb!921 () Bool)

(declare-fun t!1261 () Bool)

(assert (=> (and b!6673 (= (x!3641 that!338) (y!445 thiss!1204)) t!1261) tb!921))

(declare-fun result!961 () Bool)

(assert (=> tb!921 (= result!961 true)))

(assert (=> b!6669 t!1261))

(declare-fun b_and!1675 () Bool)

(assert (= b_and!1661 (and (=> t!1261 result!961) b_and!1675)))

(declare-fun t!1263 () Bool)

(declare-fun tb!923 () Bool)

(assert (=> (and b!6673 (= (y!445 that!338) (y!445 thiss!1204)) t!1263) tb!923))

(declare-fun result!963 () Bool)

(assert (=> tb!923 (= result!963 true)))

(assert (=> b!6669 t!1263))

(declare-fun b_and!1677 () Bool)

(assert (= b_and!1663 (and (=> t!1263 result!963) b_and!1677)))

(declare-fun b_lambda!3179 () Bool)

(assert (=> (not b_lambda!3179) (not b!6669)))

(declare-fun t!1265 () Bool)

(declare-fun tb!925 () Bool)

(assert (=> (and b!6670 (= (x!3641 thiss!1204) (x!3641 that!338)) t!1265) tb!925))

(declare-fun result!965 () Bool)

(assert (=> tb!925 (= result!965 true)))

(assert (=> b!6669 t!1265))

(declare-fun b_and!1679 () Bool)

(assert (= b_and!1671 (and (=> t!1265 result!965) b_and!1679)))

(declare-fun t!1267 () Bool)

(declare-fun tb!927 () Bool)

(assert (=> (and b!6670 (= (y!445 thiss!1204) (x!3641 that!338)) t!1267) tb!927))

(declare-fun result!967 () Bool)

(assert (=> tb!927 (= result!967 true)))

(assert (=> b!6669 t!1267))

(declare-fun b_and!1681 () Bool)

(assert (= b_and!1673 (and (=> t!1267 result!967) b_and!1681)))

(declare-fun t!1269 () Bool)

(declare-fun tb!929 () Bool)

(assert (=> (and b!6673 (= (x!3641 that!338) (x!3641 that!338)) t!1269) tb!929))

(declare-fun result!969 () Bool)

(assert (=> tb!929 (= result!969 true)))

(assert (=> b!6669 t!1269))

(declare-fun b_and!1683 () Bool)

(assert (= b_and!1675 (and (=> t!1269 result!969) b_and!1683)))

(declare-fun t!1271 () Bool)

(declare-fun tb!931 () Bool)

(assert (=> (and b!6673 (= (y!445 that!338) (x!3641 that!338)) t!1271) tb!931))

(declare-fun result!971 () Bool)

(assert (=> tb!931 (= result!971 true)))

(assert (=> b!6669 t!1271))

(declare-fun b_and!1685 () Bool)

(assert (= b_and!1677 (and (=> t!1271 result!971) b_and!1685)))

(declare-fun m!9507 () Bool)

(assert (=> b!6667 m!9507))

(declare-fun m!9509 () Bool)

(assert (=> b!6667 m!9509))

(declare-fun m!9511 () Bool)

(assert (=> b!6668 m!9511))

(declare-fun m!9513 () Bool)

(assert (=> b!6669 m!9513))

(declare-fun m!9515 () Bool)

(assert (=> b!6669 m!9515))

(declare-fun m!9517 () Bool)

(assert (=> start!1142 m!9517))

(declare-fun m!9519 () Bool)

(assert (=> start!1142 m!9519))

(declare-fun m!9521 () Bool)

(assert (=> start!1142 m!9521))

(push 1)

(assert (not b_next!711))

(assert (not b_next!715))

(assert b_and!1685)

(assert b_and!1679)

(assert b_and!1683)

(assert (not b!6667))

(assert (not b_next!713))

(assert (not b_lambda!3175))

(assert (not b_next!717))

(assert b_and!1667)

(assert b_and!1681)

(assert (not b_lambda!3177))

(assert (not b_next!709))

(assert (not start!1142))

(assert b_and!1669)

(assert (not b_next!719))

(assert (not b_lambda!3179))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!711))

(assert (not b_next!715))

(assert b_and!1685)

(assert b_and!1679)

(assert b_and!1683)

(assert (not b_next!713))

(assert (not b_next!717))

(assert b_and!1667)

(assert b_and!1681)

(assert (not b_next!709))

(assert b_and!1669)

(assert (not b_next!719))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3181 () Bool)

(assert (= b_lambda!3179 (or (and b!6671 (= lambda!919 (x!3641 that!338))) (and b!6670 b_free!325 (= (y!445 thiss!1204) (x!3641 that!338))) (and b!6673 b_free!329) (and b!6671 (= lambda!915 (x!3641 that!338))) (and b!6670 b_free!323 (= (x!3641 thiss!1204) (x!3641 that!338))) (and b!6672 (= lambda!921 (x!3641 that!338))) (and b!6673 b_free!331 (= (y!445 that!338) (x!3641 that!338))) b_lambda!3181)))

(declare-fun bs!1501 () Bool)

(declare-fun d!5303 () Bool)

(assert (= bs!1501 (and d!5303 b!6671)))

(declare-fun lambda!916 () Int)

(declare-fun foldRight!25 (List!135 Balance!59 Int) Balance!59)

(assert (=> bs!1501 (= (dynLambda!101 lambda!915) (foldRight!25 xs!395 (Balance!60 0 0) lambda!916))))

(declare-fun m!9523 () Bool)

(assert (=> bs!1501 m!9523))

(assert (=> (and b!6671 (= lambda!915 (x!3641 that!338)) b!6669) d!5303))

(declare-fun bs!1502 () Bool)

(declare-fun d!5305 () Bool)

(assert (= bs!1502 (and d!5305 b!6672)))

(declare-fun lambda!917 () Int)

(declare-fun lambda!918 () Int)

(declare-datatypes () ((List!136 (Nil!134) (Cons!133 (head!351 Balance!59) (tail!363 List!136)))))

(declare-fun foldRight1!17 (List!136 Int) Balance!59)

(declare-fun append!50 (List!136 List!136) List!136)

(declare-fun map!136 (List!135 Int) List!136)

(assert (=> bs!1502 (= (dynLambda!101 lambda!921) (foldRight1!17 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134)) lambda!917))))

(declare-fun m!9525 () Bool)

(assert (=> bs!1502 m!9525))

(assert (=> bs!1502 m!9525))

(declare-fun m!9527 () Bool)

(assert (=> bs!1502 m!9527))

(assert (=> bs!1502 m!9527))

(declare-fun m!9529 () Bool)

(assert (=> bs!1502 m!9529))

(assert (=> (and b!6672 (= lambda!921 (x!3641 that!338)) b!6669) d!5305))

(declare-fun bs!1503 () Bool)

(declare-fun d!5307 () Bool)

(assert (= bs!1503 (and d!5307 b!6671)))

(declare-fun foldRight!26 (List!136 Balance!59 Int) Balance!59)

(assert (=> bs!1503 (= (dynLambda!101 lambda!919) (foldRight!26 (map!136 xs!395 lambda!918) (Balance!60 0 0) lambda!917))))

(assert (=> bs!1503 m!9525))

(assert (=> bs!1503 m!9525))

(declare-fun m!9531 () Bool)

(assert (=> bs!1503 m!9531))

(assert (=> (and b!6671 (= lambda!919 (x!3641 that!338)) b!6669) d!5307))

(declare-fun b_lambda!3183 () Bool)

(assert (= b_lambda!3177 (or (and b!6671 (= lambda!919 (y!445 thiss!1204))) (and b!6670 b_free!325) (and b!6670 b_free!323 (= (x!3641 thiss!1204) (y!445 thiss!1204))) (and b!6673 b_free!329 (= (x!3641 that!338) (y!445 thiss!1204))) (and b!6672 (= lambda!921 (y!445 thiss!1204))) (and b!6671 (= lambda!915 (y!445 thiss!1204))) (and b!6673 b_free!331 (= (y!445 that!338) (y!445 thiss!1204))) b_lambda!3183)))

(declare-fun bs!1504 () Bool)

(declare-fun d!5309 () Bool)

(assert (= bs!1504 (and d!5309 b!6671)))

(assert (=> bs!1504 (= (dynLambda!101 lambda!915) (foldRight!25 xs!395 (Balance!60 0 0) lambda!916))))

(assert (=> bs!1504 m!9523))

(assert (=> (and b!6671 (= lambda!915 (y!445 thiss!1204)) b!6669) d!5309))

(declare-fun bs!1505 () Bool)

(declare-fun d!5311 () Bool)

(assert (= bs!1505 (and d!5311 b!6671)))

(assert (=> bs!1505 (= (dynLambda!101 lambda!919) (foldRight!26 (map!136 xs!395 lambda!918) (Balance!60 0 0) lambda!917))))

(assert (=> bs!1505 m!9525))

(assert (=> bs!1505 m!9525))

(assert (=> bs!1505 m!9531))

(assert (=> (and b!6671 (= lambda!919 (y!445 thiss!1204)) b!6669) d!5311))

(declare-fun bs!1506 () Bool)

(declare-fun d!5313 () Bool)

(assert (= bs!1506 (and d!5313 b!6672)))

(assert (=> bs!1506 (= (dynLambda!101 lambda!921) (foldRight1!17 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134)) lambda!917))))

(assert (=> bs!1506 m!9525))

(assert (=> bs!1506 m!9525))

(assert (=> bs!1506 m!9527))

(assert (=> bs!1506 m!9527))

(assert (=> bs!1506 m!9529))

(assert (=> (and b!6672 (= lambda!921 (y!445 thiss!1204)) b!6669) d!5313))

(declare-fun b_lambda!3185 () Bool)

(assert (= b_lambda!3175 (or (and b!6671 (= lambda!920 (evidence!91 thiss!1204))) (and b!6672 (= lambda!922 (evidence!91 thiss!1204))) (and b!6670 b_free!327) (and b!6673 b_free!333 (= (evidence!91 that!338) (evidence!91 thiss!1204))) b_lambda!3185)))

(declare-fun bs!1507 () Bool)

(declare-fun d!5315 () Bool)

(assert (= bs!1507 (and d!5315 b!6671)))

(declare-fun foldRight_accumulator_equivalence!5 (List!136 Balance!59 Int) Bool)

(assert (=> bs!1507 (= (dynLambda!100 lambda!920) (foldRight_accumulator_equivalence!5 (map!136 xs!395 lambda!918) (Balance!60 0 0) lambda!917))))

(assert (=> bs!1507 m!9525))

(assert (=> bs!1507 m!9525))

(declare-fun m!9533 () Bool)

(assert (=> bs!1507 m!9533))

(assert (=> (and b!6671 (= lambda!920 (evidence!91 thiss!1204)) b!6668) d!5315))

(declare-fun bs!1508 () Bool)

(declare-fun d!5317 () Bool)

(assert (= bs!1508 (and d!5317 b!6672)))

(declare-fun remove_null_balance!0 (List!135) Bool)

(assert (=> bs!1508 (= (dynLambda!100 lambda!922) (remove_null_balance!0 xs!395))))

(declare-fun m!9535 () Bool)

(assert (=> bs!1508 m!9535))

(assert (=> (and b!6672 (= lambda!922 (evidence!91 thiss!1204)) b!6668) d!5317))

(push 1)

(assert (not b_next!711))

(assert (not bs!1505))

(assert (not b_next!715))

(assert (not bs!1506))

(assert b_and!1685)

(assert b_and!1679)

(assert b_and!1683)

(assert (not b_lambda!3181))

(assert (not bs!1507))

(assert (not b_lambda!3185))

(assert (not bs!1508))

(assert (not b!6667))

(assert (not b_next!713))

(assert (not bs!1504))

(assert (not bs!1501))

(assert (not b_next!717))

(assert b_and!1667)

(assert b_and!1681)

(assert (not b_next!709))

(assert (not bs!1502))

(assert (not start!1142))

(assert b_and!1669)

(assert (not bs!1503))

(assert (not b_lambda!3183))

(assert (not b_next!719))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!711))

(assert (not b_next!715))

(assert b_and!1685)

(assert b_and!1679)

(assert b_and!1683)

(assert (not b_next!713))

(assert (not b_next!717))

(assert b_and!1667)

(assert b_and!1681)

(assert (not b_next!709))

(assert b_and!1669)

(assert (not b_next!719))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5319 () Bool)

(declare-fun c!2435 () Bool)

(assert (=> d!5319 (= c!2435 (is-Nil!133 xs!395))))

(declare-fun e!3941 () Balance!59)

(assert (=> d!5319 (= (foldRight!25 xs!395 (Balance!60 0 0) lambda!916) e!3941)))

(declare-fun b!6682 () Bool)

(assert (=> b!6682 (= e!3941 (Balance!60 0 0))))

(declare-fun b!6683 () Bool)

(declare-fun dynLambda!102 (Int Parenthesis!26 Balance!59) Balance!59)

(assert (=> b!6683 (= e!3941 (dynLambda!102 lambda!916 (head!350 xs!395) (foldRight!25 (tail!362 xs!395) (Balance!60 0 0) lambda!916)))))

(assert (= (and d!5319 c!2435) b!6682))

(assert (= (and d!5319 (not c!2435)) b!6683))

(declare-fun b_lambda!3187 () Bool)

(assert (=> (not b_lambda!3187) (not b!6683)))

(declare-fun m!9537 () Bool)

(assert (=> b!6683 m!9537))

(assert (=> b!6683 m!9537))

(declare-fun m!9539 () Bool)

(assert (=> b!6683 m!9539))

(assert (=> bs!1504 d!5319))

(declare-fun d!5321 () Bool)

(declare-fun c!2438 () Bool)

(assert (=> d!5321 (= c!2438 (is-Nil!134 (map!136 xs!395 lambda!918)))))

(declare-fun e!3944 () Balance!59)

(assert (=> d!5321 (= (foldRight!26 (map!136 xs!395 lambda!918) (Balance!60 0 0) lambda!917) e!3944)))

(declare-fun b!6688 () Bool)

(assert (=> b!6688 (= e!3944 (Balance!60 0 0))))

(declare-fun b!6689 () Bool)

(declare-fun dynLambda!103 (Int Balance!59 Balance!59) Balance!59)

(assert (=> b!6689 (= e!3944 (dynLambda!103 lambda!917 (head!351 (map!136 xs!395 lambda!918)) (foldRight!26 (tail!363 (map!136 xs!395 lambda!918)) (Balance!60 0 0) lambda!917)))))

(assert (= (and d!5321 c!2438) b!6688))

(assert (= (and d!5321 (not c!2438)) b!6689))

(declare-fun b_lambda!3189 () Bool)

(assert (=> (not b_lambda!3189) (not b!6689)))

(declare-fun m!9541 () Bool)

(assert (=> b!6689 m!9541))

(assert (=> b!6689 m!9541))

(declare-fun m!9543 () Bool)

(assert (=> b!6689 m!9543))

(assert (=> bs!1503 d!5321))

(declare-fun d!5323 () Bool)

(declare-fun c!2441 () Bool)

(assert (=> d!5323 (= c!2441 (is-Nil!133 xs!395))))

(declare-fun e!3947 () List!136)

(assert (=> d!5323 (= (map!136 xs!395 lambda!918) e!3947)))

(declare-fun b!6694 () Bool)

(assert (=> b!6694 (= e!3947 Nil!134)))

(declare-fun b!6695 () Bool)

(declare-fun dynLambda!104 (Int Parenthesis!26) Balance!59)

(assert (=> b!6695 (= e!3947 (Cons!133 (dynLambda!104 lambda!918 (head!350 xs!395)) (map!136 (tail!362 xs!395) lambda!918)))))

(assert (= (and d!5323 c!2441) b!6694))

(assert (= (and d!5323 (not c!2441)) b!6695))

(declare-fun b_lambda!3191 () Bool)

(assert (=> (not b_lambda!3191) (not b!6695)))

(declare-fun m!9545 () Bool)

(assert (=> b!6695 m!9545))

(declare-fun m!9547 () Bool)

(assert (=> b!6695 m!9547))

(assert (=> bs!1503 d!5323))

(declare-fun d!5325 () Bool)

(declare-fun c!2444 () Bool)

(assert (=> d!5325 (= c!2444 (and (is-Cons!133 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134))) (is-Nil!134 (tail!363 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134))))))))

(declare-fun e!3950 () Balance!59)

(assert (=> d!5325 (= (foldRight1!17 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134)) lambda!917) e!3950)))

(declare-fun b!6700 () Bool)

(assert (=> b!6700 (= e!3950 (head!351 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134))))))

(declare-fun b!6701 () Bool)

(assert (=> b!6701 (= e!3950 (dynLambda!103 lambda!917 (head!351 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134))) (foldRight1!17 (tail!363 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134))) lambda!917)))))

(assert (= (and d!5325 c!2444) b!6700))

(assert (= (and d!5325 (not c!2444)) b!6701))

(declare-fun b_lambda!3193 () Bool)

(assert (=> (not b_lambda!3193) (not b!6701)))

(declare-fun m!9549 () Bool)

(assert (=> b!6701 m!9549))

(assert (=> b!6701 m!9549))

(declare-fun m!9551 () Bool)

(assert (=> b!6701 m!9551))

(assert (=> bs!1502 d!5325))

(declare-fun d!5327 () Bool)

(declare-fun c!2447 () Bool)

(assert (=> d!5327 (= c!2447 (is-Nil!134 (map!136 xs!395 lambda!918)))))

(declare-fun e!3953 () List!136)

(assert (=> d!5327 (= (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134)) e!3953)))

(declare-fun b!6706 () Bool)

(assert (=> b!6706 (= e!3953 (Cons!133 (Balance!60 0 0) Nil!134))))

(declare-fun b!6707 () Bool)

(assert (=> b!6707 (= e!3953 (Cons!133 (head!351 (map!136 xs!395 lambda!918)) (append!50 (tail!363 (map!136 xs!395 lambda!918)) (Cons!133 (Balance!60 0 0) Nil!134))))))

(assert (= (and d!5327 c!2447) b!6706))

(assert (= (and d!5327 (not c!2447)) b!6707))

(declare-fun m!9553 () Bool)

(assert (=> b!6707 m!9553))

(assert (=> bs!1502 d!5327))

(assert (=> bs!1502 d!5323))

(declare-fun d!5329 () Bool)

(assert (=> d!5329 (= (isEmpty!119 xs!395) (is-Nil!133 xs!395))))

(assert (=> start!1142 d!5329))

(declare-fun d!5331 () Bool)

(declare-fun res!1855 () Bool)

(declare-fun e!3956 () Bool)

(assert (=> d!5331 (=> (not res!1855) (not e!3956))))

(assert (=> d!5331 (= res!1855 (= (dynLambda!101 (x!3641 thiss!1204)) (dynLambda!101 (y!445 thiss!1204))))))

(assert (=> d!5331 (= (inv!240 thiss!1204) e!3956)))

(declare-fun b!6710 () Bool)

(assert (=> b!6710 (= e!3956 (dynLambda!100 (evidence!91 thiss!1204)))))

(assert (= (and d!5331 res!1855) b!6710))

(declare-fun b_lambda!3195 () Bool)

(assert (=> (not b_lambda!3195) (not d!5331)))

(declare-fun t!1273 () Bool)

(declare-fun tb!933 () Bool)

(assert (=> (and b!6670 (= (x!3641 thiss!1204) (x!3641 thiss!1204)) t!1273) tb!933))

(declare-fun result!973 () Bool)

(assert (=> tb!933 (= result!973 true)))

(assert (=> d!5331 t!1273))

(declare-fun b_and!1687 () Bool)

(assert (= b_and!1679 (and (=> t!1273 result!973) b_and!1687)))

(declare-fun t!1275 () Bool)

(declare-fun tb!935 () Bool)

(assert (=> (and b!6670 (= (y!445 thiss!1204) (x!3641 thiss!1204)) t!1275) tb!935))

(declare-fun result!975 () Bool)

(assert (=> tb!935 (= result!975 true)))

(assert (=> d!5331 t!1275))

(declare-fun b_and!1689 () Bool)

(assert (= b_and!1681 (and (=> t!1275 result!975) b_and!1689)))

(declare-fun t!1277 () Bool)

(declare-fun tb!937 () Bool)

(assert (=> (and b!6673 (= (x!3641 that!338) (x!3641 thiss!1204)) t!1277) tb!937))

(declare-fun result!977 () Bool)

(assert (=> tb!937 (= result!977 true)))

(assert (=> d!5331 t!1277))

(declare-fun b_and!1691 () Bool)

(assert (= b_and!1683 (and (=> t!1277 result!977) b_and!1691)))

(declare-fun t!1279 () Bool)

(declare-fun tb!939 () Bool)

(assert (=> (and b!6673 (= (y!445 that!338) (x!3641 thiss!1204)) t!1279) tb!939))

(declare-fun result!979 () Bool)

(assert (=> tb!939 (= result!979 true)))

(assert (=> d!5331 t!1279))

(declare-fun b_and!1693 () Bool)

(assert (= b_and!1685 (and (=> t!1279 result!979) b_and!1693)))

(declare-fun b_lambda!3197 () Bool)

(assert (=> (not b_lambda!3197) (not d!5331)))

(assert (=> d!5331 t!1257))

(declare-fun b_and!1695 () Bool)

(assert (= b_and!1687 (and (=> t!1257 result!957) b_and!1695)))

(assert (=> d!5331 t!1259))

(declare-fun b_and!1697 () Bool)

(assert (= b_and!1689 (and (=> t!1259 result!959) b_and!1697)))

(assert (=> d!5331 t!1261))

(declare-fun b_and!1699 () Bool)

(assert (= b_and!1691 (and (=> t!1261 result!961) b_and!1699)))

(assert (=> d!5331 t!1263))

(declare-fun b_and!1701 () Bool)

(assert (= b_and!1693 (and (=> t!1263 result!963) b_and!1701)))

(declare-fun b_lambda!3199 () Bool)

(assert (=> (not b_lambda!3199) (not b!6710)))

(assert (=> b!6710 t!1253))

(declare-fun b_and!1703 () Bool)

(assert (= b_and!1667 (and (=> t!1253 result!953) b_and!1703)))

(assert (=> b!6710 t!1255))

(declare-fun b_and!1705 () Bool)

(assert (= b_and!1669 (and (=> t!1255 result!955) b_and!1705)))

(declare-fun m!9555 () Bool)

(assert (=> d!5331 m!9555))

(assert (=> d!5331 m!9513))

(assert (=> b!6710 m!9511))

(assert (=> start!1142 d!5331))

(declare-fun d!5333 () Bool)

(declare-fun res!1856 () Bool)

(declare-fun e!3957 () Bool)

(assert (=> d!5333 (=> (not res!1856) (not e!3957))))

(assert (=> d!5333 (= res!1856 (= (dynLambda!101 (x!3641 that!338)) (dynLambda!101 (y!445 that!338))))))

(assert (=> d!5333 (= (inv!240 that!338) e!3957)))

(declare-fun b!6711 () Bool)

(assert (=> b!6711 (= e!3957 (dynLambda!100 (evidence!91 that!338)))))

(assert (= (and d!5333 res!1856) b!6711))

(declare-fun b_lambda!3201 () Bool)

(assert (=> (not b_lambda!3201) (not d!5333)))

(assert (=> d!5333 t!1265))

(declare-fun b_and!1707 () Bool)

(assert (= b_and!1695 (and (=> t!1265 result!965) b_and!1707)))

(assert (=> d!5333 t!1267))

(declare-fun b_and!1709 () Bool)

(assert (= b_and!1697 (and (=> t!1267 result!967) b_and!1709)))

(assert (=> d!5333 t!1269))

(declare-fun b_and!1711 () Bool)

(assert (= b_and!1699 (and (=> t!1269 result!969) b_and!1711)))

(assert (=> d!5333 t!1271))

(declare-fun b_and!1713 () Bool)

(assert (= b_and!1701 (and (=> t!1271 result!971) b_and!1713)))

(declare-fun b_lambda!3203 () Bool)

(assert (=> (not b_lambda!3203) (not d!5333)))

(declare-fun t!1281 () Bool)

(declare-fun tb!941 () Bool)

(assert (=> (and b!6670 (= (x!3641 thiss!1204) (y!445 that!338)) t!1281) tb!941))

(declare-fun result!981 () Bool)

(assert (=> tb!941 (= result!981 true)))

(assert (=> d!5333 t!1281))

(declare-fun b_and!1715 () Bool)

(assert (= b_and!1707 (and (=> t!1281 result!981) b_and!1715)))

(declare-fun t!1283 () Bool)

(declare-fun tb!943 () Bool)

(assert (=> (and b!6670 (= (y!445 thiss!1204) (y!445 that!338)) t!1283) tb!943))

(declare-fun result!983 () Bool)

(assert (=> tb!943 (= result!983 true)))

(assert (=> d!5333 t!1283))

(declare-fun b_and!1717 () Bool)

(assert (= b_and!1709 (and (=> t!1283 result!983) b_and!1717)))

(declare-fun t!1285 () Bool)

(declare-fun tb!945 () Bool)

(assert (=> (and b!6673 (= (x!3641 that!338) (y!445 that!338)) t!1285) tb!945))

(declare-fun result!985 () Bool)

(assert (=> tb!945 (= result!985 true)))

(assert (=> d!5333 t!1285))

(declare-fun b_and!1719 () Bool)

(assert (= b_and!1711 (and (=> t!1285 result!985) b_and!1719)))

(declare-fun t!1287 () Bool)

(declare-fun tb!947 () Bool)

(assert (=> (and b!6673 (= (y!445 that!338) (y!445 that!338)) t!1287) tb!947))

(declare-fun result!987 () Bool)

(assert (=> tb!947 (= result!987 true)))

(assert (=> d!5333 t!1287))

(declare-fun b_and!1721 () Bool)

(assert (= b_and!1713 (and (=> t!1287 result!987) b_and!1721)))

(declare-fun b_lambda!3205 () Bool)

(assert (=> (not b_lambda!3205) (not b!6711)))

(declare-fun tb!949 () Bool)

(declare-fun t!1289 () Bool)

(assert (=> (and b!6670 (= (evidence!91 thiss!1204) (evidence!91 that!338)) t!1289) tb!949))

(declare-fun result!989 () Bool)

(assert (=> tb!949 (= result!989 true)))

(assert (=> b!6711 t!1289))

(declare-fun b_and!1723 () Bool)

(assert (= b_and!1703 (and (=> t!1289 result!989) b_and!1723)))

(declare-fun t!1291 () Bool)

(declare-fun tb!951 () Bool)

(assert (=> (and b!6673 (= (evidence!91 that!338) (evidence!91 that!338)) t!1291) tb!951))

(declare-fun result!991 () Bool)

(assert (=> tb!951 (= result!991 true)))

(assert (=> b!6711 t!1291))

(declare-fun b_and!1725 () Bool)

(assert (= b_and!1705 (and (=> t!1291 result!991) b_and!1725)))

(assert (=> d!5333 m!9515))

(declare-fun m!9557 () Bool)

(assert (=> d!5333 m!9557))

(declare-fun m!9559 () Bool)

(assert (=> b!6711 m!9559))

(assert (=> start!1142 d!5333))

(assert (=> bs!1506 d!5325))

(assert (=> bs!1506 d!5327))

(assert (=> bs!1506 d!5323))

(declare-fun bs!1509 () Bool)

(declare-fun d!5335 () Bool)

(assert (= bs!1509 (and d!5335 b!6671)))

(declare-fun lambda!947 () Int)

(assert (=> bs!1509 (= lambda!947 lambda!918)))

(declare-fun lambda!948 () Int)

(assert (=> bs!1509 (= lambda!948 lambda!917)))

(declare-fun b!6732 () Bool)

(declare-fun e!3972 () List!136)

(declare-fun res!1876 () List!136)

(assert (=> b!6732 (= e!3972 res!1876)))

(assert (=> b!6732 true))

(declare-fun b!6733 () Bool)

(declare-fun e!3968 () Int)

(assert (=> b!6733 (= e!3968 lambda!948)))

(declare-fun b!6734 () Bool)

(declare-fun e!3969 () Bool)

(assert (=> b!6734 (= e!3969 true)))

(declare-fun lt!1407 () Balance!59)

(assert (=> b!6734 (= lt!1407 (foldRight1!17 (map!136 xs!395 lambda!947) lambda!948))))

(declare-fun b!6735 () Bool)

(declare-fun e!3970 () Int)

(assert (=> b!6735 (= e!3970 lambda!947)))

(declare-fun b!6736 () Bool)

(assert (=> b!6736 (= e!3968 lambda!948)))

(declare-fun b!6737 () Bool)

(declare-fun e!3971 () Balance!59)

(assert (=> b!6737 (= e!3971 (foldRight1!17 e!3972 e!3968))))

(declare-fun c!2458 () Bool)

(declare-fun lt!1408 () Bool)

(assert (=> b!6737 (= c!2458 lt!1408)))

(declare-fun c!2460 () Bool)

(declare-fun lt!1406 () Bool)

(assert (=> b!6737 (= c!2460 (or lt!1406 (not lt!1406)))))

(declare-fun because!2 (ProofOps!42 Bool) Bool)

(assert (=> d!5335 (because!2 (ProofOps!43 (= (foldRight1!17 (append!50 (map!136 xs!395 lambda!947) (Cons!133 (Balance!60 0 0) Nil!134)) lambda!948) (foldRight1!17 (map!136 xs!395 lambda!947) lambda!948))) e!3969)))

(declare-fun c!2462 () Bool)

(assert (=> d!5335 (= c!2462 lt!1406)))

(assert (=> d!5335 (= lt!1407 e!3971)))

(declare-fun c!2459 () Bool)

(assert (=> d!5335 (= c!2459 (or lt!1408 (not lt!1406)))))

(assert (=> d!5335 (= lt!1408 lt!1406)))

(assert (=> d!5335 (= lt!1406 (and (is-Cons!132 xs!395) (is-Nil!133 (tail!362 xs!395))))))

(assert (=> d!5335 (not (isEmpty!119 xs!395))))

(assert (=> d!5335 (= (remove_null_balance!0 xs!395) true)))

(declare-fun b!6738 () Bool)

(declare-fun res!1877 () Balance!59)

(assert (=> b!6738 (= e!3971 res!1877)))

(assert (=> b!6738 true))

(assert (=> b!6738 true))

(declare-fun b!6739 () Bool)

(assert (=> b!6739 (= e!3972 (append!50 (map!136 xs!395 e!3970) (Cons!133 (Balance!60 0 0) Nil!134)))))

(declare-fun c!2461 () Bool)

(assert (=> b!6739 (= c!2461 lt!1406)))

(declare-fun b!6740 () Bool)

(assert (=> b!6740 (= e!3970 lambda!947)))

(declare-fun b!6741 () Bool)

(assert (=> b!6741 (= e!3969 true)))

(assert (=> b!6741 (= lt!1407 (foldRight1!17 (map!136 xs!395 lambda!947) lambda!948))))

(assert (= (and b!6739 c!2461) b!6735))

(assert (= (and b!6739 (not c!2461)) b!6740))

(assert (= (and b!6737 c!2460) b!6739))

(assert (= (and b!6737 (not c!2460)) b!6732))

(assert (= (and b!6737 c!2458) b!6736))

(assert (= (and b!6737 (not c!2458)) b!6733))

(assert (= (and d!5335 c!2459) b!6737))

(assert (= (and d!5335 (not c!2459)) b!6738))

(assert (= (and d!5335 c!2462) b!6734))

(assert (= (and d!5335 (not c!2462)) b!6741))

(declare-fun m!9561 () Bool)

(assert (=> b!6739 m!9561))

(assert (=> b!6739 m!9561))

(declare-fun m!9563 () Bool)

(assert (=> b!6739 m!9563))

(declare-fun m!9565 () Bool)

(assert (=> b!6734 m!9565))

(assert (=> b!6734 m!9565))

(declare-fun m!9567 () Bool)

(assert (=> b!6734 m!9567))

(declare-fun m!9569 () Bool)

(assert (=> d!5335 m!9569))

(declare-fun m!9571 () Bool)

(assert (=> d!5335 m!9571))

(declare-fun m!9573 () Bool)

(assert (=> d!5335 m!9573))

(assert (=> d!5335 m!9517))

(assert (=> d!5335 m!9565))

(assert (=> d!5335 m!9571))

(assert (=> d!5335 m!9565))

(assert (=> d!5335 m!9567))

(assert (=> d!5335 m!9565))

(assert (=> d!5335 m!9565))

(assert (=> b!6741 m!9565))

(assert (=> b!6741 m!9565))

(assert (=> b!6741 m!9567))

(declare-fun m!9575 () Bool)

(assert (=> b!6737 m!9575))

(assert (=> bs!1508 d!5335))

(declare-fun bs!1510 () Bool)

(declare-fun d!5337 () Bool)

(assert (= bs!1510 (and d!5337 b!6671)))

(declare-fun lambda!951 () Int)

(assert (=> bs!1510 (= lambda!951 lambda!916)))

(declare-fun isBalanced!0 (Balance!59) Bool)

(assert (=> d!5337 (= (isMatchedSequential!0 xs!395) (isBalanced!0 (foldRight!25 xs!395 (Balance!60 0 0) lambda!951)))))

(declare-fun bs!1511 () Bool)

(assert (= bs!1511 d!5337))

(declare-fun m!9577 () Bool)

(assert (=> bs!1511 m!9577))

(assert (=> bs!1511 m!9577))

(declare-fun m!9579 () Bool)

(assert (=> bs!1511 m!9579))

(assert (=> b!6667 d!5337))

(declare-fun bs!1512 () Bool)

(declare-fun d!5339 () Bool)

(assert (= bs!1512 (and d!5339 b!6671)))

(declare-fun lambda!956 () Int)

(assert (=> bs!1512 (= lambda!956 lambda!918)))

(declare-fun bs!1513 () Bool)

(assert (= bs!1513 (and d!5339 d!5335)))

(assert (=> bs!1513 (= lambda!956 lambda!947)))

(declare-fun lambda!957 () Int)

(assert (=> bs!1512 (= lambda!957 lambda!917)))

(assert (=> bs!1513 (= lambda!957 lambda!948)))

(assert (=> d!5339 (= (isMatchedHybid!0 xs!395) (isBalanced!0 (foldRight1!17 (map!136 xs!395 lambda!956) lambda!957)))))

(declare-fun bs!1514 () Bool)

(assert (= bs!1514 d!5339))

(declare-fun m!9581 () Bool)

(assert (=> bs!1514 m!9581))

(assert (=> bs!1514 m!9581))

(declare-fun m!9583 () Bool)

(assert (=> bs!1514 m!9583))

(assert (=> bs!1514 m!9583))

(declare-fun m!9585 () Bool)

(assert (=> bs!1514 m!9585))

(assert (=> b!6667 d!5339))

(assert (=> bs!1505 d!5321))

(assert (=> bs!1505 d!5323))

(declare-fun b!6747 () Bool)

(declare-fun e!3975 () Bool)

(assert (=> b!6747 (= e!3975 (= (foldRight!26 (map!136 xs!395 lambda!918) (Balance!60 0 0) lambda!917) (foldRight1!17 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134)) lambda!917)))))

(declare-fun lt!1411 () Bool)

(assert (=> b!6747 (= lt!1411 (foldRight_accumulator_equivalence!5 (tail!363 (map!136 xs!395 lambda!918)) (Balance!60 0 0) lambda!917))))

(declare-fun d!5341 () Bool)

(assert (=> d!5341 e!3975))

(declare-fun c!2465 () Bool)

(assert (=> d!5341 (= c!2465 (is-Nil!134 (map!136 xs!395 lambda!918)))))

(assert (=> d!5341 (= (foldRight_accumulator_equivalence!5 (map!136 xs!395 lambda!918) (Balance!60 0 0) lambda!917) true)))

(declare-fun b!6746 () Bool)

(assert (=> b!6746 (= e!3975 (= (foldRight!26 (map!136 xs!395 lambda!918) (Balance!60 0 0) lambda!917) (foldRight1!17 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134)) lambda!917)))))

(assert (= (and d!5341 c!2465) b!6746))

(assert (= (and d!5341 (not c!2465)) b!6747))

(assert (=> b!6747 m!9525))

(assert (=> b!6747 m!9531))

(assert (=> b!6747 m!9525))

(assert (=> b!6747 m!9527))

(assert (=> b!6747 m!9527))

(assert (=> b!6747 m!9529))

(declare-fun m!9587 () Bool)

(assert (=> b!6747 m!9587))

(assert (=> b!6746 m!9525))

(assert (=> b!6746 m!9531))

(assert (=> b!6746 m!9525))

(assert (=> b!6746 m!9527))

(assert (=> b!6746 m!9527))

(assert (=> b!6746 m!9529))

(assert (=> bs!1507 d!5341))

(assert (=> bs!1507 d!5323))

(assert (=> bs!1501 d!5319))

(declare-fun b_lambda!3207 () Bool)

(assert (= b_lambda!3201 (or (and b!6671 (= lambda!919 (x!3641 that!338))) (and b!6670 b_free!325 (= (y!445 thiss!1204) (x!3641 that!338))) (and b!6673 b_free!329) (and b!6671 (= lambda!915 (x!3641 that!338))) (and b!6670 b_free!323 (= (x!3641 thiss!1204) (x!3641 that!338))) (and b!6672 (= lambda!921 (x!3641 that!338))) (and b!6673 b_free!331 (= (y!445 that!338) (x!3641 that!338))) b_lambda!3207)))

(assert (=> (and b!6671 (= lambda!915 (x!3641 that!338)) d!5333) d!5303))

(assert (=> (and b!6672 (= lambda!921 (x!3641 that!338)) d!5333) d!5305))

(assert (=> (and b!6671 (= lambda!919 (x!3641 that!338)) d!5333) d!5307))

(declare-fun b_lambda!3209 () Bool)

(assert (= b_lambda!3191 (or b!6671 b_lambda!3209)))

(declare-fun bs!1515 () Bool)

(declare-fun d!5343 () Bool)

(assert (= bs!1515 (and d!5343 b!6671)))

(declare-fun fromParenthesis!0 (Parenthesis!26) Balance!59)

(assert (=> bs!1515 (= (dynLambda!104 lambda!918 (head!350 xs!395)) (fromParenthesis!0 (head!350 xs!395)))))

(declare-fun m!9589 () Bool)

(assert (=> bs!1515 m!9589))

(assert (=> b!6695 d!5343))

(declare-fun b_lambda!3211 () Bool)

(assert (= b_lambda!3195 (or (and b!6673 b_free!331 (= (y!445 that!338) (x!3641 thiss!1204))) (and b!6672 (= lambda!921 (x!3641 thiss!1204))) (and b!6670 b_free!323) (and b!6671 (= lambda!919 (x!3641 thiss!1204))) (and b!6671 (= lambda!915 (x!3641 thiss!1204))) (and b!6673 b_free!329 (= (x!3641 that!338) (x!3641 thiss!1204))) (and b!6670 b_free!325 (= (y!445 thiss!1204) (x!3641 thiss!1204))) b_lambda!3211)))

(declare-fun bs!1516 () Bool)

(declare-fun d!5345 () Bool)

(assert (= bs!1516 (and d!5345 b!6671)))

(assert (=> bs!1516 (= (dynLambda!101 lambda!919) (foldRight!26 (map!136 xs!395 lambda!918) (Balance!60 0 0) lambda!917))))

(assert (=> bs!1516 m!9525))

(assert (=> bs!1516 m!9525))

(assert (=> bs!1516 m!9531))

(assert (=> (and b!6671 (= lambda!919 (x!3641 thiss!1204)) d!5331) d!5345))

(declare-fun bs!1517 () Bool)

(declare-fun d!5347 () Bool)

(assert (= bs!1517 (and d!5347 b!6671)))

(assert (=> bs!1517 (= (dynLambda!101 lambda!915) (foldRight!25 xs!395 (Balance!60 0 0) lambda!916))))

(assert (=> bs!1517 m!9523))

(assert (=> (and b!6671 (= lambda!915 (x!3641 thiss!1204)) d!5331) d!5347))

(declare-fun bs!1518 () Bool)

(declare-fun d!5349 () Bool)

(assert (= bs!1518 (and d!5349 b!6672)))

(assert (=> bs!1518 (= (dynLambda!101 lambda!921) (foldRight1!17 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134)) lambda!917))))

(assert (=> bs!1518 m!9525))

(assert (=> bs!1518 m!9525))

(assert (=> bs!1518 m!9527))

(assert (=> bs!1518 m!9527))

(assert (=> bs!1518 m!9529))

(assert (=> (and b!6672 (= lambda!921 (x!3641 thiss!1204)) d!5331) d!5349))

(declare-fun b_lambda!3213 () Bool)

(assert (= b_lambda!3197 (or (and b!6671 (= lambda!919 (y!445 thiss!1204))) (and b!6670 b_free!325) (and b!6670 b_free!323 (= (x!3641 thiss!1204) (y!445 thiss!1204))) (and b!6673 b_free!329 (= (x!3641 that!338) (y!445 thiss!1204))) (and b!6672 (= lambda!921 (y!445 thiss!1204))) (and b!6671 (= lambda!915 (y!445 thiss!1204))) (and b!6673 b_free!331 (= (y!445 that!338) (y!445 thiss!1204))) b_lambda!3213)))

(assert (=> (and b!6671 (= lambda!915 (y!445 thiss!1204)) d!5331) d!5309))

(assert (=> (and b!6671 (= lambda!919 (y!445 thiss!1204)) d!5331) d!5311))

(assert (=> (and b!6672 (= lambda!921 (y!445 thiss!1204)) d!5331) d!5313))

(declare-fun b_lambda!3215 () Bool)

(assert (= b_lambda!3199 (or (and b!6671 (= lambda!920 (evidence!91 thiss!1204))) (and b!6672 (= lambda!922 (evidence!91 thiss!1204))) (and b!6670 b_free!327) (and b!6673 b_free!333 (= (evidence!91 that!338) (evidence!91 thiss!1204))) b_lambda!3215)))

(assert (=> (and b!6671 (= lambda!920 (evidence!91 thiss!1204)) b!6710) d!5315))

(assert (=> (and b!6672 (= lambda!922 (evidence!91 thiss!1204)) b!6710) d!5317))

(declare-fun b_lambda!3217 () Bool)

(assert (= b_lambda!3203 (or (and b!6673 b_free!329 (= (x!3641 that!338) (y!445 that!338))) (and b!6670 b_free!323 (= (x!3641 thiss!1204) (y!445 that!338))) (and b!6672 (= lambda!921 (y!445 that!338))) (and b!6671 (= lambda!919 (y!445 that!338))) (and b!6671 (= lambda!915 (y!445 that!338))) (and b!6670 b_free!325 (= (y!445 thiss!1204) (y!445 that!338))) (and b!6673 b_free!331) b_lambda!3217)))

(declare-fun bs!1519 () Bool)

(declare-fun d!5351 () Bool)

(assert (= bs!1519 (and d!5351 b!6671)))

(assert (=> bs!1519 (= (dynLambda!101 lambda!915) (foldRight!25 xs!395 (Balance!60 0 0) lambda!916))))

(assert (=> bs!1519 m!9523))

(assert (=> (and b!6671 (= lambda!915 (y!445 that!338)) d!5333) d!5351))

(declare-fun bs!1520 () Bool)

(declare-fun d!5353 () Bool)

(assert (= bs!1520 (and d!5353 b!6672)))

(assert (=> bs!1520 (= (dynLambda!101 lambda!921) (foldRight1!17 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134)) lambda!917))))

(assert (=> bs!1520 m!9525))

(assert (=> bs!1520 m!9525))

(assert (=> bs!1520 m!9527))

(assert (=> bs!1520 m!9527))

(assert (=> bs!1520 m!9529))

(assert (=> (and b!6672 (= lambda!921 (y!445 that!338)) d!5333) d!5353))

(declare-fun bs!1521 () Bool)

(declare-fun d!5355 () Bool)

(assert (= bs!1521 (and d!5355 b!6671)))

(assert (=> bs!1521 (= (dynLambda!101 lambda!919) (foldRight!26 (map!136 xs!395 lambda!918) (Balance!60 0 0) lambda!917))))

(assert (=> bs!1521 m!9525))

(assert (=> bs!1521 m!9525))

(assert (=> bs!1521 m!9531))

(assert (=> (and b!6671 (= lambda!919 (y!445 that!338)) d!5333) d!5355))

(declare-fun b_lambda!3219 () Bool)

(assert (= b_lambda!3189 (or b!6671 b_lambda!3219)))

(declare-fun bs!1522 () Bool)

(declare-fun d!5357 () Bool)

(assert (= bs!1522 (and d!5357 b!6671)))

(declare-fun ++!3 (Balance!59 Balance!59) Balance!59)

(assert (=> bs!1522 (= (dynLambda!103 lambda!917 (head!351 (map!136 xs!395 lambda!918)) (foldRight!26 (tail!363 (map!136 xs!395 lambda!918)) (Balance!60 0 0) lambda!917)) (++!3 (head!351 (map!136 xs!395 lambda!918)) (foldRight!26 (tail!363 (map!136 xs!395 lambda!918)) (Balance!60 0 0) lambda!917)))))

(assert (=> bs!1522 m!9541))

(declare-fun m!9591 () Bool)

(assert (=> bs!1522 m!9591))

(assert (=> b!6689 d!5357))

(declare-fun b_lambda!3221 () Bool)

(assert (= b_lambda!3193 (or b!6671 b_lambda!3221)))

(declare-fun bs!1523 () Bool)

(declare-fun d!5359 () Bool)

(assert (= bs!1523 (and d!5359 b!6671)))

(assert (=> bs!1523 (= (dynLambda!103 lambda!917 (head!351 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134))) (foldRight1!17 (tail!363 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134))) lambda!917)) (++!3 (head!351 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134))) (foldRight1!17 (tail!363 (append!50 (map!136 xs!395 lambda!918) (Cons!133 (Balance!60 0 0) Nil!134))) lambda!917)))))

(assert (=> bs!1523 m!9549))

(declare-fun m!9593 () Bool)

(assert (=> bs!1523 m!9593))

(assert (=> b!6701 d!5359))

(declare-fun b_lambda!3223 () Bool)

(assert (= b_lambda!3205 (or (and b!6671 (= lambda!920 (evidence!91 that!338))) (and b!6672 (= lambda!922 (evidence!91 that!338))) (and b!6670 b_free!327 (= (evidence!91 thiss!1204) (evidence!91 that!338))) (and b!6673 b_free!333) b_lambda!3223)))

(declare-fun bs!1524 () Bool)

(declare-fun d!5361 () Bool)

(assert (= bs!1524 (and d!5361 b!6671)))

(assert (=> bs!1524 (= (dynLambda!100 lambda!920) (foldRight_accumulator_equivalence!5 (map!136 xs!395 lambda!918) (Balance!60 0 0) lambda!917))))

(assert (=> bs!1524 m!9525))

(assert (=> bs!1524 m!9525))

(assert (=> bs!1524 m!9533))

(assert (=> (and b!6671 (= lambda!920 (evidence!91 that!338)) b!6711) d!5361))

(declare-fun bs!1525 () Bool)

(declare-fun d!5363 () Bool)

(assert (= bs!1525 (and d!5363 b!6672)))

(assert (=> bs!1525 (= (dynLambda!100 lambda!922) (remove_null_balance!0 xs!395))))

(assert (=> bs!1525 m!9535))

(assert (=> (and b!6672 (= lambda!922 (evidence!91 that!338)) b!6711) d!5363))

(declare-fun b_lambda!3225 () Bool)

(assert (= b_lambda!3187 (or b!6671 b_lambda!3225)))

(declare-fun bs!1526 () Bool)

(declare-fun d!5365 () Bool)

(assert (= bs!1526 (and d!5365 b!6671)))

(declare-fun +$colon!0 (Balance!59 Parenthesis!26) Balance!59)

(assert (=> bs!1526 (= (dynLambda!102 lambda!916 (head!350 xs!395) (foldRight!25 (tail!362 xs!395) (Balance!60 0 0) lambda!916)) (+$colon!0 (foldRight!25 (tail!362 xs!395) (Balance!60 0 0) lambda!916) (head!350 xs!395)))))

(assert (=> bs!1526 m!9537))

(declare-fun m!9595 () Bool)

(assert (=> bs!1526 m!9595))

(assert (=> b!6683 d!5365))

(push 1)

(assert (not b_next!711))

(assert (not b_next!715))

(assert (not b_lambda!3209))

(assert (not b_lambda!3207))

(assert b_and!1723)

(assert (not b!6707))

(assert (not d!5337))

(assert (not b!6683))

(assert (not bs!1524))

(assert (not b_lambda!3215))

(assert (not b_lambda!3181))

(assert (not b!6737))

(assert b_and!1719)

(assert (not bs!1525))

(assert (not b!6689))

(assert (not b_lambda!3213))

(assert (not bs!1522))

(assert b_and!1721)

(assert (not b_lambda!3185))

(assert (not bs!1523))

(assert (not b!6701))

(assert (not b_lambda!3217))

(assert (not d!5339))

(assert (not bs!1521))

(assert b_and!1725)

(assert (not b_lambda!3219))

(assert (not b!6734))

(assert (not b!6739))

(assert b_and!1717)

(assert (not b_next!713))

(assert (not bs!1526))

(assert (not b_lambda!3211))

(assert (not bs!1515))

(assert (not b!6741))

(assert b_and!1715)

(assert (not b_next!717))

(assert (not b_lambda!3221))

(assert (not b_next!709))

(assert (not b!6747))

(assert (not b!6746))

(assert (not bs!1516))

(assert (not b!6695))

(assert (not bs!1520))

(assert (not b_lambda!3223))

(assert (not d!5335))

(assert (not bs!1519))

(assert (not b_lambda!3183))

(assert (not b_next!719))

(assert (not b_lambda!3225))

(assert (not bs!1517))

(assert (not bs!1518))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!711))

(assert (not b_next!715))

(assert b_and!1723)

(assert b_and!1719)

(assert b_and!1721)

(assert b_and!1725)

(assert b_and!1717)

(assert (not b_next!713))

(assert b_and!1715)

(assert (not b_next!717))

(assert (not b_next!709))

(assert (not b_next!719))

(check-sat)

(pop 1)

