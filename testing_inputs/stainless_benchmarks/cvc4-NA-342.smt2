; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2592 () Bool)

(assert start!2592)

(declare-fun b_free!2021 () Bool)

(declare-fun b_next!4719 () Bool)

(assert (=> start!2592 (= b_free!2021 (not b_next!4719))))

(declare-fun tp!3203 () Bool)

(declare-fun b_and!7067 () Bool)

(assert (=> start!2592 (= tp!3203 b_and!7067)))

(declare-fun c!3586 () Bool)

(declare-datatypes () ((Parenthesis!76 (CloseParenthesis!75) (OpenParenthesis!75))))

(declare-datatypes () ((Tree!78 (Branch!69 (left!544 Tree!78) (right!547 Tree!78)) (Leaf!151 (value!1320 Parenthesis!76)))))

(declare-fun tree!37 () Tree!78)

(assert (=> start!2592 (= c!3586 (is-Leaf!151 tree!37))))

(declare-fun f!740 () Int)

(declare-fun e!6962 () Bool)

(declare-datatypes () ((ProofOps!288 (ProofOps!289 (prop!281 Bool)))))

(declare-fun because!2 (ProofOps!288 Bool) Bool)

(declare-datatypes () ((Balance!389 (Balance!390 (extraOpen!235 Int) (extraClose!235 Int)))))

(declare-datatypes () ((Tree!79 (Branch!70 (left!545 Tree!79) (right!548 Tree!79)) (Leaf!152 (value!1321 Balance!389)))))

(declare-datatypes () ((List!300 (Nil!298) (Cons!297 (head!515 Balance!389) (tail!527 List!300)))))

(declare-fun toList!78 (Tree!79) List!300)

(declare-fun map!163 (Tree!78 Int) Tree!79)

(declare-datatypes () ((List!301 (Nil!299) (Cons!298 (head!516 Parenthesis!76) (tail!528 List!301)))))

(declare-fun map!164 (List!301 Int) List!300)

(declare-fun toList!79 (Tree!78) List!301)

(assert (=> start!2592 (not (because!2 (ProofOps!289 (= (toList!78 (map!163 tree!37 f!740)) (map!164 (toList!79 tree!37) f!740))) e!6962))))

(assert (=> start!2592 true))

(assert (=> start!2592 tp!3203))

(declare-fun b!12712 () Bool)

(assert (=> b!12712 (= e!6962 true)))

(declare-fun b!12715 () Bool)

(declare-fun e!6963 () Bool)

(declare-fun map_append!0 (List!301 List!301 Int) Bool)

(assert (=> b!12715 (= e!6963 (map_append!0 (toList!79 (left!544 tree!37)) (toList!79 (right!547 tree!37)) f!740))))

(declare-fun b!12713 () Bool)

(assert (=> b!12713 (= e!6962 e!6963)))

(declare-fun res!4740 () Bool)

(assert (=> b!12713 (=> (not res!4740) (not e!6963))))

(declare-fun toList_map_commutativity!0 (Tree!78 Int) Bool)

(assert (=> b!12713 (= res!4740 (toList_map_commutativity!0 (left!544 tree!37) f!740))))

(declare-fun b!12714 () Bool)

(declare-fun res!4739 () Bool)

(assert (=> b!12714 (=> (not res!4739) (not e!6963))))

(assert (=> b!12714 (= res!4739 (toList_map_commutativity!0 (right!547 tree!37) f!740))))

(assert (= (and b!12713 res!4740) b!12714))

(assert (= (and b!12714 res!4739) b!12715))

(assert (= (and start!2592 c!3586) b!12712))

(assert (= (and start!2592 (not c!3586)) b!12713))

(declare-fun m!15947 () Bool)

(assert (=> start!2592 m!15947))

(declare-fun m!15949 () Bool)

(assert (=> start!2592 m!15949))

(assert (=> start!2592 m!15947))

(declare-fun m!15951 () Bool)

(assert (=> start!2592 m!15951))

(assert (=> start!2592 m!15951))

(declare-fun m!15953 () Bool)

(assert (=> start!2592 m!15953))

(declare-fun m!15955 () Bool)

(assert (=> start!2592 m!15955))

(declare-fun m!15957 () Bool)

(assert (=> b!12715 m!15957))

(declare-fun m!15959 () Bool)

(assert (=> b!12715 m!15959))

(assert (=> b!12715 m!15957))

(assert (=> b!12715 m!15959))

(declare-fun m!15961 () Bool)

(assert (=> b!12715 m!15961))

(declare-fun m!15963 () Bool)

(assert (=> b!12713 m!15963))

(declare-fun m!15965 () Bool)

(assert (=> b!12714 m!15965))

(push 1)

(assert (not b!12714))

(assert b_and!7067)

(assert (not b_next!4719))

(assert (not b!12713))

(assert (not start!2592))

(assert (not b!12715))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7067)

(assert (not b_next!4719))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!12724 () Bool)

(declare-fun e!6968 () Bool)

(assert (=> b!12724 (= e!6968 true)))

(declare-fun b!12727 () Bool)

(declare-fun e!6969 () Bool)

(assert (=> b!12727 (= e!6969 (map_append!0 (toList!79 (left!544 (left!544 tree!37))) (toList!79 (right!547 (left!544 tree!37))) f!740))))

(declare-fun b!12726 () Bool)

(declare-fun res!4745 () Bool)

(assert (=> b!12726 (=> (not res!4745) (not e!6969))))

(assert (=> b!12726 (= res!4745 (toList_map_commutativity!0 (right!547 (left!544 tree!37)) f!740))))

(declare-fun b!12725 () Bool)

(assert (=> b!12725 (= e!6968 e!6969)))

(declare-fun res!4746 () Bool)

(assert (=> b!12725 (=> (not res!4746) (not e!6969))))

(assert (=> b!12725 (= res!4746 (toList_map_commutativity!0 (left!544 (left!544 tree!37)) f!740))))

(declare-fun d!10037 () Bool)

(assert (=> d!10037 (because!2 (ProofOps!289 (= (toList!78 (map!163 (left!544 tree!37) f!740)) (map!164 (toList!79 (left!544 tree!37)) f!740))) e!6968)))

(declare-fun c!3589 () Bool)

(assert (=> d!10037 (= c!3589 (is-Leaf!151 (left!544 tree!37)))))

(assert (=> d!10037 (= (toList_map_commutativity!0 (left!544 tree!37) f!740) true)))

(assert (= (and b!12725 res!4746) b!12726))

(assert (= (and b!12726 res!4745) b!12727))

(assert (= (and d!10037 c!3589) b!12724))

(assert (= (and d!10037 (not c!3589)) b!12725))

(declare-fun m!15967 () Bool)

(assert (=> b!12727 m!15967))

(declare-fun m!15969 () Bool)

(assert (=> b!12727 m!15969))

(assert (=> b!12727 m!15967))

(assert (=> b!12727 m!15969))

(declare-fun m!15971 () Bool)

(assert (=> b!12727 m!15971))

(declare-fun m!15973 () Bool)

(assert (=> b!12726 m!15973))

(declare-fun m!15975 () Bool)

(assert (=> b!12725 m!15975))

(declare-fun m!15977 () Bool)

(assert (=> d!10037 m!15977))

(declare-fun m!15979 () Bool)

(assert (=> d!10037 m!15979))

(declare-fun m!15981 () Bool)

(assert (=> d!10037 m!15981))

(assert (=> d!10037 m!15957))

(assert (=> d!10037 m!15979))

(assert (=> d!10037 m!15957))

(declare-fun m!15983 () Bool)

(assert (=> d!10037 m!15983))

(assert (=> b!12713 d!10037))

(declare-fun b!12733 () Bool)

(declare-fun e!6972 () Bool)

(declare-fun append!143 (List!300 List!300) List!300)

(declare-fun append!144 (List!301 List!301) List!301)

(assert (=> b!12733 (= e!6972 (= (append!143 (map!164 (toList!79 (left!544 tree!37)) f!740) (map!164 (toList!79 (right!547 tree!37)) f!740)) (map!164 (append!144 (toList!79 (left!544 tree!37)) (toList!79 (right!547 tree!37))) f!740)))))

(declare-fun lt!1850 () Bool)

(assert (=> b!12733 (= lt!1850 (map_append!0 (tail!528 (toList!79 (left!544 tree!37))) (toList!79 (right!547 tree!37)) f!740))))

(declare-fun d!10039 () Bool)

(assert (=> d!10039 e!6972))

(declare-fun c!3592 () Bool)

(assert (=> d!10039 (= c!3592 (is-Nil!299 (toList!79 (left!544 tree!37))))))

(assert (=> d!10039 (= (map_append!0 (toList!79 (left!544 tree!37)) (toList!79 (right!547 tree!37)) f!740) true)))

(declare-fun b!12732 () Bool)

(assert (=> b!12732 (= e!6972 (= (append!143 (map!164 (toList!79 (left!544 tree!37)) f!740) (map!164 (toList!79 (right!547 tree!37)) f!740)) (map!164 (append!144 (toList!79 (left!544 tree!37)) (toList!79 (right!547 tree!37))) f!740)))))

(assert (= (and d!10039 c!3592) b!12732))

(assert (= (and d!10039 (not c!3592)) b!12733))

(assert (=> b!12733 m!15983))

(declare-fun m!15985 () Bool)

(assert (=> b!12733 m!15985))

(declare-fun m!15987 () Bool)

(assert (=> b!12733 m!15987))

(assert (=> b!12733 m!15959))

(assert (=> b!12733 m!15985))

(declare-fun m!15989 () Bool)

(assert (=> b!12733 m!15989))

(declare-fun m!15991 () Bool)

(assert (=> b!12733 m!15991))

(assert (=> b!12733 m!15957))

(assert (=> b!12733 m!15983))

(assert (=> b!12733 m!15957))

(assert (=> b!12733 m!15959))

(assert (=> b!12733 m!15989))

(assert (=> b!12733 m!15959))

(declare-fun m!15993 () Bool)

(assert (=> b!12733 m!15993))

(assert (=> b!12732 m!15983))

(assert (=> b!12732 m!15985))

(assert (=> b!12732 m!15987))

(assert (=> b!12732 m!15959))

(assert (=> b!12732 m!15985))

(assert (=> b!12732 m!15989))

(assert (=> b!12732 m!15991))

(assert (=> b!12732 m!15957))

(assert (=> b!12732 m!15983))

(assert (=> b!12732 m!15957))

(assert (=> b!12732 m!15959))

(assert (=> b!12732 m!15989))

(assert (=> b!12715 d!10039))

(declare-fun d!10041 () Bool)

(declare-fun lt!1853 () List!301)

(declare-fun isEmpty!224 (List!301) Bool)

(assert (=> d!10041 (not (isEmpty!224 lt!1853))))

(declare-fun e!6975 () List!301)

(assert (=> d!10041 (= lt!1853 e!6975)))

(declare-fun c!3595 () Bool)

(assert (=> d!10041 (= c!3595 (is-Leaf!151 (left!544 tree!37)))))

(assert (=> d!10041 (= (toList!79 (left!544 tree!37)) lt!1853)))

(declare-fun b!12738 () Bool)

(assert (=> b!12738 (= e!6975 (Cons!298 (value!1320 (left!544 tree!37)) Nil!299))))

(declare-fun b!12739 () Bool)

(assert (=> b!12739 (= e!6975 (append!144 (toList!79 (left!544 (left!544 tree!37))) (toList!79 (right!547 (left!544 tree!37)))))))

(assert (= (and d!10041 c!3595) b!12738))

(assert (= (and d!10041 (not c!3595)) b!12739))

(declare-fun m!15995 () Bool)

(assert (=> d!10041 m!15995))

(assert (=> b!12739 m!15967))

(assert (=> b!12739 m!15969))

(assert (=> b!12739 m!15967))

(assert (=> b!12739 m!15969))

(declare-fun m!15997 () Bool)

(assert (=> b!12739 m!15997))

(assert (=> b!12715 d!10041))

(declare-fun d!10043 () Bool)

(declare-fun lt!1854 () List!301)

(assert (=> d!10043 (not (isEmpty!224 lt!1854))))

(declare-fun e!6976 () List!301)

(assert (=> d!10043 (= lt!1854 e!6976)))

(declare-fun c!3596 () Bool)

(assert (=> d!10043 (= c!3596 (is-Leaf!151 (right!547 tree!37)))))

(assert (=> d!10043 (= (toList!79 (right!547 tree!37)) lt!1854)))

(declare-fun b!12740 () Bool)

(assert (=> b!12740 (= e!6976 (Cons!298 (value!1320 (right!547 tree!37)) Nil!299))))

(declare-fun b!12741 () Bool)

(assert (=> b!12741 (= e!6976 (append!144 (toList!79 (left!544 (right!547 tree!37))) (toList!79 (right!547 (right!547 tree!37)))))))

(assert (= (and d!10043 c!3596) b!12740))

(assert (= (and d!10043 (not c!3596)) b!12741))

(declare-fun m!15999 () Bool)

(assert (=> d!10043 m!15999))

(declare-fun m!16001 () Bool)

(assert (=> b!12741 m!16001))

(declare-fun m!16003 () Bool)

(assert (=> b!12741 m!16003))

(assert (=> b!12741 m!16001))

(assert (=> b!12741 m!16003))

(declare-fun m!16005 () Bool)

(assert (=> b!12741 m!16005))

(assert (=> b!12715 d!10043))

(declare-fun d!10045 () Bool)

(assert (=> d!10045 (= (because!2 (ProofOps!289 (= (toList!78 (map!163 tree!37 f!740)) (map!164 (toList!79 tree!37) f!740))) e!6962) (and e!6962 (prop!281 (ProofOps!289 (= (toList!78 (map!163 tree!37 f!740)) (map!164 (toList!79 tree!37) f!740))))))))

(assert (=> start!2592 d!10045))

(declare-fun b!12747 () Bool)

(assert (=> b!12747 true))

(declare-fun order!341 () Int)

(declare-fun lambda!3446 () Int)

(declare-fun order!343 () Int)

(declare-fun dynLambda!545 (Int Int) Int)

(declare-fun dynLambda!546 (Int Int) Int)

(assert (=> b!12747 (< (dynLambda!545 order!341 f!740) (dynLambda!546 order!343 lambda!3446))))

(assert (=> b!12747 true))

(declare-fun lambda!3447 () Int)

(assert (=> b!12747 (= (= (right!547 tree!37) (left!544 tree!37)) (= lambda!3447 lambda!3446))))

(assert (=> b!12747 true))

(assert (=> b!12747 (< (dynLambda!545 order!341 f!740) (dynLambda!546 order!343 lambda!3447))))

(assert (=> b!12747 true))

(declare-fun e!6995 () Tree!79)

(declare-datatypes () ((tuple2!92 (tuple2!93 (_1!46 Tree!79) (_2!46 Tree!79)))))

(declare-fun lt!1857 () tuple2!92)

(assert (=> b!12747 (= e!6995 (Branch!70 (_1!46 lt!1857) (_2!46 lt!1857)))))

(declare-fun dynLambda!547 (Int) Tree!79)

(assert (=> b!12747 (= lt!1857 (tuple2!93 (dynLambda!547 lambda!3446) (dynLambda!547 lambda!3447)))))

(declare-fun d!10047 () Bool)

(declare-fun c!3599 () Bool)

(assert (=> d!10047 (= c!3599 (is-Leaf!151 tree!37))))

(assert (=> d!10047 (= (map!163 tree!37 f!740) e!6995)))

(declare-fun b!12746 () Bool)

(declare-fun dynLambda!548 (Int Parenthesis!76) Balance!389)

(assert (=> b!12746 (= e!6995 (Leaf!152 (dynLambda!548 f!740 (value!1320 tree!37))))))

(assert (= (and d!10047 c!3599) b!12746))

(assert (= (and d!10047 (not c!3599)) b!12747))

(declare-fun b_lambda!7265 () Bool)

(assert (=> (not b_lambda!7265) (not b!12747)))

(declare-fun b_lambda!7267 () Bool)

(assert (=> (not b_lambda!7267) (not b!12747)))

(declare-fun b_lambda!7269 () Bool)

(assert (=> (not b_lambda!7269) (not b!12746)))

(declare-fun t!4017 () Bool)

(declare-fun tb!3677 () Bool)

(assert (=> (and start!2592 (= f!740 f!740) t!4017) tb!3677))

(declare-fun result!3733 () Bool)

(assert (=> tb!3677 (= result!3733 true)))

(assert (=> b!12746 t!4017))

(declare-fun b_and!7069 () Bool)

(assert (= b_and!7067 (and (=> t!4017 result!3733) b_and!7069)))

(declare-fun m!16007 () Bool)

(assert (=> b!12747 m!16007))

(declare-fun m!16009 () Bool)

(assert (=> b!12747 m!16009))

(declare-fun m!16011 () Bool)

(assert (=> b!12746 m!16011))

(assert (=> start!2592 d!10047))

(declare-fun d!10049 () Bool)

(declare-fun c!3602 () Bool)

(assert (=> d!10049 (= c!3602 (is-Nil!299 (toList!79 tree!37)))))

(declare-fun e!6998 () List!300)

(assert (=> d!10049 (= (map!164 (toList!79 tree!37) f!740) e!6998)))

(declare-fun b!12756 () Bool)

(assert (=> b!12756 (= e!6998 Nil!298)))

(declare-fun b!12757 () Bool)

(assert (=> b!12757 (= e!6998 (Cons!297 (dynLambda!548 f!740 (head!516 (toList!79 tree!37))) (map!164 (tail!528 (toList!79 tree!37)) f!740)))))

(assert (= (and d!10049 c!3602) b!12756))

(assert (= (and d!10049 (not c!3602)) b!12757))

(declare-fun b_lambda!7271 () Bool)

(assert (=> (not b_lambda!7271) (not b!12757)))

(declare-fun t!4019 () Bool)

(declare-fun tb!3679 () Bool)

(assert (=> (and start!2592 (= f!740 f!740) t!4019) tb!3679))

(declare-fun result!3735 () Bool)

(assert (=> tb!3679 (= result!3735 true)))

(assert (=> b!12757 t!4019))

(declare-fun b_and!7071 () Bool)

(assert (= b_and!7069 (and (=> t!4019 result!3735) b_and!7071)))

(declare-fun m!16013 () Bool)

(assert (=> b!12757 m!16013))

(declare-fun m!16015 () Bool)

(assert (=> b!12757 m!16015))

(assert (=> start!2592 d!10049))

(declare-fun d!10051 () Bool)

(declare-fun lt!1858 () List!301)

(assert (=> d!10051 (not (isEmpty!224 lt!1858))))

(declare-fun e!6999 () List!301)

(assert (=> d!10051 (= lt!1858 e!6999)))

(declare-fun c!3603 () Bool)

(assert (=> d!10051 (= c!3603 (is-Leaf!151 tree!37))))

(assert (=> d!10051 (= (toList!79 tree!37) lt!1858)))

(declare-fun b!12758 () Bool)

(assert (=> b!12758 (= e!6999 (Cons!298 (value!1320 tree!37) Nil!299))))

(declare-fun b!12759 () Bool)

(assert (=> b!12759 (= e!6999 (append!144 (toList!79 (left!544 tree!37)) (toList!79 (right!547 tree!37))))))

(assert (= (and d!10051 c!3603) b!12758))

(assert (= (and d!10051 (not c!3603)) b!12759))

(declare-fun m!16017 () Bool)

(assert (=> d!10051 m!16017))

(assert (=> b!12759 m!15957))

(assert (=> b!12759 m!15959))

(assert (=> b!12759 m!15957))

(assert (=> b!12759 m!15959))

(assert (=> b!12759 m!15989))

(assert (=> start!2592 d!10051))

(declare-fun d!10053 () Bool)

(declare-fun lt!1861 () List!300)

(declare-fun isEmpty!225 (List!300) Bool)

(assert (=> d!10053 (not (isEmpty!225 lt!1861))))

(declare-fun e!7002 () List!300)

(assert (=> d!10053 (= lt!1861 e!7002)))

(declare-fun c!3606 () Bool)

(assert (=> d!10053 (= c!3606 (is-Leaf!152 (map!163 tree!37 f!740)))))

(assert (=> d!10053 (= (toList!78 (map!163 tree!37 f!740)) lt!1861)))

(declare-fun b!12764 () Bool)

(assert (=> b!12764 (= e!7002 (Cons!297 (value!1321 (map!163 tree!37 f!740)) Nil!298))))

(declare-fun b!12765 () Bool)

(assert (=> b!12765 (= e!7002 (append!143 (toList!78 (left!545 (map!163 tree!37 f!740))) (toList!78 (right!548 (map!163 tree!37 f!740)))))))

(assert (= (and d!10053 c!3606) b!12764))

(assert (= (and d!10053 (not c!3606)) b!12765))

(declare-fun m!16019 () Bool)

(assert (=> d!10053 m!16019))

(declare-fun m!16021 () Bool)

(assert (=> b!12765 m!16021))

(declare-fun m!16023 () Bool)

(assert (=> b!12765 m!16023))

(assert (=> b!12765 m!16021))

(assert (=> b!12765 m!16023))

(declare-fun m!16025 () Bool)

(assert (=> b!12765 m!16025))

(assert (=> start!2592 d!10053))

(declare-fun b!12766 () Bool)

(declare-fun e!7003 () Bool)

(assert (=> b!12766 (= e!7003 true)))

(declare-fun b!12769 () Bool)

(declare-fun e!7004 () Bool)

(assert (=> b!12769 (= e!7004 (map_append!0 (toList!79 (left!544 (right!547 tree!37))) (toList!79 (right!547 (right!547 tree!37))) f!740))))

(declare-fun b!12768 () Bool)

(declare-fun res!4749 () Bool)

(assert (=> b!12768 (=> (not res!4749) (not e!7004))))

(assert (=> b!12768 (= res!4749 (toList_map_commutativity!0 (right!547 (right!547 tree!37)) f!740))))

(declare-fun b!12767 () Bool)

(assert (=> b!12767 (= e!7003 e!7004)))

(declare-fun res!4750 () Bool)

(assert (=> b!12767 (=> (not res!4750) (not e!7004))))

(assert (=> b!12767 (= res!4750 (toList_map_commutativity!0 (left!544 (right!547 tree!37)) f!740))))

(declare-fun d!10055 () Bool)

(assert (=> d!10055 (because!2 (ProofOps!289 (= (toList!78 (map!163 (right!547 tree!37) f!740)) (map!164 (toList!79 (right!547 tree!37)) f!740))) e!7003)))

(declare-fun c!3607 () Bool)

(assert (=> d!10055 (= c!3607 (is-Leaf!151 (right!547 tree!37)))))

(assert (=> d!10055 (= (toList_map_commutativity!0 (right!547 tree!37) f!740) true)))

(assert (= (and b!12767 res!4750) b!12768))

(assert (= (and b!12768 res!4749) b!12769))

(assert (= (and d!10055 c!3607) b!12766))

(assert (= (and d!10055 (not c!3607)) b!12767))

(assert (=> b!12769 m!16001))

(assert (=> b!12769 m!16003))

(assert (=> b!12769 m!16001))

(assert (=> b!12769 m!16003))

(declare-fun m!16027 () Bool)

(assert (=> b!12769 m!16027))

(declare-fun m!16029 () Bool)

(assert (=> b!12768 m!16029))

(declare-fun m!16031 () Bool)

(assert (=> b!12767 m!16031))

(declare-fun m!16033 () Bool)

(assert (=> d!10055 m!16033))

(declare-fun m!16035 () Bool)

(assert (=> d!10055 m!16035))

(declare-fun m!16037 () Bool)

(assert (=> d!10055 m!16037))

(assert (=> d!10055 m!15959))

(assert (=> d!10055 m!16035))

(assert (=> d!10055 m!15959))

(assert (=> d!10055 m!15985))

(assert (=> b!12714 d!10055))

(declare-fun b_lambda!7273 () Bool)

(assert (= b_lambda!7267 (or b!12747 b_lambda!7273)))

(declare-fun bs!3411 () Bool)

(declare-fun d!10057 () Bool)

(assert (= bs!3411 (and d!10057 b!12747)))

(assert (=> bs!3411 (= (dynLambda!547 lambda!3447) (map!163 (right!547 tree!37) f!740))))

(assert (=> bs!3411 m!16035))

(assert (=> b!12747 d!10057))

(declare-fun b_lambda!7275 () Bool)

(assert (= b_lambda!7265 (or b!12747 b_lambda!7275)))

(declare-fun bs!3412 () Bool)

(declare-fun d!10059 () Bool)

(assert (= bs!3412 (and d!10059 b!12747)))

(assert (=> bs!3412 (= (dynLambda!547 lambda!3446) (map!163 (left!544 tree!37) f!740))))

(assert (=> bs!3412 m!15979))

(assert (=> b!12747 d!10059))

(declare-fun b_lambda!7277 () Bool)

(assert (= b_lambda!7269 (or (and start!2592 b_free!2021) b_lambda!7277)))

(declare-fun b_lambda!7279 () Bool)

(assert (= b_lambda!7271 (or (and start!2592 b_free!2021) b_lambda!7279)))

(push 1)

(assert (not b!12726))

(assert (not b!12725))

(assert (not b!12739))

(assert (not b_next!4719))

(assert (not d!10041))

(assert (not d!10051))

(assert (not b_lambda!7275))

(assert (not b!12759))

(assert (not b_lambda!7273))

(assert (not b!12741))

(assert (not d!10043))

(assert (not d!10037))

(assert (not b!12732))

(assert (not b!12768))

(assert (not b!12757))

(assert (not b!12765))

(assert (not b!12733))

(assert (not bs!3412))

(assert (not d!10055))

(assert (not bs!3411))

(assert (not b!12769))

(assert (not b_lambda!7279))

(assert (not b!12727))

(assert (not b!12767))

(assert (not d!10053))

(assert (not b_lambda!7277))

(assert b_and!7071)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7071)

(assert (not b_next!4719))

(check-sat)

(get-model)

(pop 1)

(assert (=> d!10055 d!10043))

(declare-fun d!10061 () Bool)

(declare-fun lt!1862 () List!300)

(assert (=> d!10061 (not (isEmpty!225 lt!1862))))

(declare-fun e!7005 () List!300)

(assert (=> d!10061 (= lt!1862 e!7005)))

(declare-fun c!3608 () Bool)

(assert (=> d!10061 (= c!3608 (is-Leaf!152 (map!163 (right!547 tree!37) f!740)))))

(assert (=> d!10061 (= (toList!78 (map!163 (right!547 tree!37) f!740)) lt!1862)))

(declare-fun b!12770 () Bool)

(assert (=> b!12770 (= e!7005 (Cons!297 (value!1321 (map!163 (right!547 tree!37) f!740)) Nil!298))))

(declare-fun b!12771 () Bool)

(assert (=> b!12771 (= e!7005 (append!143 (toList!78 (left!545 (map!163 (right!547 tree!37) f!740))) (toList!78 (right!548 (map!163 (right!547 tree!37) f!740)))))))

(assert (= (and d!10061 c!3608) b!12770))

(assert (= (and d!10061 (not c!3608)) b!12771))

(declare-fun m!16039 () Bool)

(assert (=> d!10061 m!16039))

(declare-fun m!16041 () Bool)

(assert (=> b!12771 m!16041))

(declare-fun m!16043 () Bool)

(assert (=> b!12771 m!16043))

(assert (=> b!12771 m!16041))

(assert (=> b!12771 m!16043))

(declare-fun m!16045 () Bool)

(assert (=> b!12771 m!16045))

(assert (=> d!10055 d!10061))

(declare-fun d!10063 () Bool)

(assert (=> d!10063 (= (because!2 (ProofOps!289 (= (toList!78 (map!163 (right!547 tree!37) f!740)) (map!164 (toList!79 (right!547 tree!37)) f!740))) e!7003) (and e!7003 (prop!281 (ProofOps!289 (= (toList!78 (map!163 (right!547 tree!37) f!740)) (map!164 (toList!79 (right!547 tree!37)) f!740))))))))

(assert (=> d!10055 d!10063))

(declare-fun bs!3413 () Bool)

(declare-fun b!12773 () Bool)

(assert (= bs!3413 (and b!12773 b!12747)))

(declare-fun lambda!3448 () Int)

(assert (=> bs!3413 (= (= (left!544 (right!547 tree!37)) (left!544 tree!37)) (= lambda!3448 lambda!3446))))

(assert (=> bs!3413 (= (= (left!544 (right!547 tree!37)) (right!547 tree!37)) (= lambda!3448 lambda!3447))))

(assert (=> b!12773 true))

(assert (=> b!12773 (< (dynLambda!545 order!341 f!740) (dynLambda!546 order!343 lambda!3448))))

(assert (=> b!12773 true))

(declare-fun lambda!3449 () Int)

(assert (=> bs!3413 (= (= (right!547 (right!547 tree!37)) (left!544 tree!37)) (= lambda!3449 lambda!3446))))

(assert (=> bs!3413 (= (= (right!547 (right!547 tree!37)) (right!547 tree!37)) (= lambda!3449 lambda!3447))))

(assert (=> b!12773 (= (= (right!547 (right!547 tree!37)) (left!544 (right!547 tree!37))) (= lambda!3449 lambda!3448))))

(assert (=> b!12773 true))

(assert (=> b!12773 (< (dynLambda!545 order!341 f!740) (dynLambda!546 order!343 lambda!3449))))

(assert (=> b!12773 true))

(declare-fun e!7006 () Tree!79)

(declare-fun lt!1863 () tuple2!92)

(assert (=> b!12773 (= e!7006 (Branch!70 (_1!46 lt!1863) (_2!46 lt!1863)))))

(assert (=> b!12773 (= lt!1863 (tuple2!93 (dynLambda!547 lambda!3448) (dynLambda!547 lambda!3449)))))

(declare-fun d!10065 () Bool)

(declare-fun c!3609 () Bool)

(assert (=> d!10065 (= c!3609 (is-Leaf!151 (right!547 tree!37)))))

(assert (=> d!10065 (= (map!163 (right!547 tree!37) f!740) e!7006)))

(declare-fun b!12772 () Bool)

(assert (=> b!12772 (= e!7006 (Leaf!152 (dynLambda!548 f!740 (value!1320 (right!547 tree!37)))))))

(assert (= (and d!10065 c!3609) b!12772))

(assert (= (and d!10065 (not c!3609)) b!12773))

(declare-fun b_lambda!7281 () Bool)

(assert (=> (not b_lambda!7281) (not b!12773)))

(declare-fun b_lambda!7283 () Bool)

(assert (=> (not b_lambda!7283) (not b!12773)))

(declare-fun b_lambda!7285 () Bool)

(assert (=> (not b_lambda!7285) (not b!12772)))

(declare-fun t!4021 () Bool)

(declare-fun tb!3681 () Bool)

(assert (=> (and start!2592 (= f!740 f!740) t!4021) tb!3681))

(declare-fun result!3737 () Bool)

(assert (=> tb!3681 (= result!3737 true)))

(assert (=> b!12772 t!4021))

(declare-fun b_and!7073 () Bool)

(assert (= b_and!7071 (and (=> t!4021 result!3737) b_and!7073)))

(declare-fun m!16047 () Bool)

(assert (=> b!12773 m!16047))

(declare-fun m!16049 () Bool)

(assert (=> b!12773 m!16049))

(declare-fun m!16051 () Bool)

(assert (=> b!12772 m!16051))

(assert (=> d!10055 d!10065))

(declare-fun d!10067 () Bool)

(declare-fun c!3610 () Bool)

(assert (=> d!10067 (= c!3610 (is-Nil!299 (toList!79 (right!547 tree!37))))))

(declare-fun e!7007 () List!300)

(assert (=> d!10067 (= (map!164 (toList!79 (right!547 tree!37)) f!740) e!7007)))

(declare-fun b!12774 () Bool)

(assert (=> b!12774 (= e!7007 Nil!298)))

(declare-fun b!12775 () Bool)

(assert (=> b!12775 (= e!7007 (Cons!297 (dynLambda!548 f!740 (head!516 (toList!79 (right!547 tree!37)))) (map!164 (tail!528 (toList!79 (right!547 tree!37))) f!740)))))

(assert (= (and d!10067 c!3610) b!12774))

(assert (= (and d!10067 (not c!3610)) b!12775))

(declare-fun b_lambda!7287 () Bool)

(assert (=> (not b_lambda!7287) (not b!12775)))

(declare-fun t!4023 () Bool)

(declare-fun tb!3683 () Bool)

(assert (=> (and start!2592 (= f!740 f!740) t!4023) tb!3683))

(declare-fun result!3739 () Bool)

(assert (=> tb!3683 (= result!3739 true)))

(assert (=> b!12775 t!4023))

(declare-fun b_and!7075 () Bool)

(assert (= b_and!7073 (and (=> t!4023 result!3739) b_and!7075)))

(declare-fun m!16053 () Bool)

(assert (=> b!12775 m!16053))

(declare-fun m!16055 () Bool)

(assert (=> b!12775 m!16055))

(assert (=> d!10055 d!10067))

(declare-fun d!10069 () Bool)

(assert (=> d!10069 (= (isEmpty!224 lt!1858) (is-Nil!299 lt!1858))))

(assert (=> d!10051 d!10069))

(declare-fun bs!3414 () Bool)

(declare-fun b!12777 () Bool)

(assert (= bs!3414 (and b!12777 b!12747)))

(declare-fun lambda!3450 () Int)

(assert (=> bs!3414 (= (= (left!544 (left!544 tree!37)) (left!544 tree!37)) (= lambda!3450 lambda!3446))))

(assert (=> bs!3414 (= (= (left!544 (left!544 tree!37)) (right!547 tree!37)) (= lambda!3450 lambda!3447))))

(declare-fun bs!3415 () Bool)

(assert (= bs!3415 (and b!12777 b!12773)))

(assert (=> bs!3415 (= (= (left!544 (left!544 tree!37)) (left!544 (right!547 tree!37))) (= lambda!3450 lambda!3448))))

(assert (=> bs!3415 (= (= (left!544 (left!544 tree!37)) (right!547 (right!547 tree!37))) (= lambda!3450 lambda!3449))))

(assert (=> b!12777 true))

(assert (=> b!12777 (< (dynLambda!545 order!341 f!740) (dynLambda!546 order!343 lambda!3450))))

(assert (=> b!12777 true))

(declare-fun lambda!3451 () Int)

(assert (=> bs!3415 (= (= (right!547 (left!544 tree!37)) (right!547 (right!547 tree!37))) (= lambda!3451 lambda!3449))))

(assert (=> bs!3414 (= (= (right!547 (left!544 tree!37)) (right!547 tree!37)) (= lambda!3451 lambda!3447))))

(assert (=> bs!3414 (= (= (right!547 (left!544 tree!37)) (left!544 tree!37)) (= lambda!3451 lambda!3446))))

(assert (=> bs!3415 (= (= (right!547 (left!544 tree!37)) (left!544 (right!547 tree!37))) (= lambda!3451 lambda!3448))))

(assert (=> b!12777 (= (= (right!547 (left!544 tree!37)) (left!544 (left!544 tree!37))) (= lambda!3451 lambda!3450))))

(assert (=> b!12777 true))

(assert (=> b!12777 (< (dynLambda!545 order!341 f!740) (dynLambda!546 order!343 lambda!3451))))

(assert (=> b!12777 true))

(declare-fun e!7008 () Tree!79)

(declare-fun lt!1864 () tuple2!92)

(assert (=> b!12777 (= e!7008 (Branch!70 (_1!46 lt!1864) (_2!46 lt!1864)))))

(assert (=> b!12777 (= lt!1864 (tuple2!93 (dynLambda!547 lambda!3450) (dynLambda!547 lambda!3451)))))

(declare-fun d!10071 () Bool)

(declare-fun c!3611 () Bool)

(assert (=> d!10071 (= c!3611 (is-Leaf!151 (left!544 tree!37)))))

(assert (=> d!10071 (= (map!163 (left!544 tree!37) f!740) e!7008)))

(declare-fun b!12776 () Bool)

(assert (=> b!12776 (= e!7008 (Leaf!152 (dynLambda!548 f!740 (value!1320 (left!544 tree!37)))))))

(assert (= (and d!10071 c!3611) b!12776))

(assert (= (and d!10071 (not c!3611)) b!12777))

(declare-fun b_lambda!7289 () Bool)

(assert (=> (not b_lambda!7289) (not b!12777)))

(declare-fun b_lambda!7291 () Bool)

(assert (=> (not b_lambda!7291) (not b!12777)))

(declare-fun b_lambda!7293 () Bool)

(assert (=> (not b_lambda!7293) (not b!12776)))

(declare-fun t!4025 () Bool)

(declare-fun tb!3685 () Bool)

(assert (=> (and start!2592 (= f!740 f!740) t!4025) tb!3685))

(declare-fun result!3741 () Bool)

(assert (=> tb!3685 (= result!3741 true)))

(assert (=> b!12776 t!4025))

(declare-fun b_and!7077 () Bool)

(assert (= b_and!7075 (and (=> t!4025 result!3741) b_and!7077)))

(declare-fun m!16057 () Bool)

(assert (=> b!12777 m!16057))

(declare-fun m!16059 () Bool)

(assert (=> b!12777 m!16059))

(declare-fun m!16061 () Bool)

(assert (=> b!12776 m!16061))

(assert (=> d!10037 d!10071))

(declare-fun d!10073 () Bool)

(declare-fun lt!1865 () List!300)

(assert (=> d!10073 (not (isEmpty!225 lt!1865))))

(declare-fun e!7009 () List!300)

(assert (=> d!10073 (= lt!1865 e!7009)))

(declare-fun c!3612 () Bool)

(assert (=> d!10073 (= c!3612 (is-Leaf!152 (map!163 (left!544 tree!37) f!740)))))

(assert (=> d!10073 (= (toList!78 (map!163 (left!544 tree!37) f!740)) lt!1865)))

(declare-fun b!12778 () Bool)

(assert (=> b!12778 (= e!7009 (Cons!297 (value!1321 (map!163 (left!544 tree!37) f!740)) Nil!298))))

(declare-fun b!12779 () Bool)

(assert (=> b!12779 (= e!7009 (append!143 (toList!78 (left!545 (map!163 (left!544 tree!37) f!740))) (toList!78 (right!548 (map!163 (left!544 tree!37) f!740)))))))

(assert (= (and d!10073 c!3612) b!12778))

(assert (= (and d!10073 (not c!3612)) b!12779))

(declare-fun m!16063 () Bool)

(assert (=> d!10073 m!16063))

(declare-fun m!16065 () Bool)

(assert (=> b!12779 m!16065))

(declare-fun m!16067 () Bool)

(assert (=> b!12779 m!16067))

(assert (=> b!12779 m!16065))

(assert (=> b!12779 m!16067))

(declare-fun m!16069 () Bool)

(assert (=> b!12779 m!16069))

(assert (=> d!10037 d!10073))

(declare-fun d!10075 () Bool)

(assert (=> d!10075 (= (because!2 (ProofOps!289 (= (toList!78 (map!163 (left!544 tree!37) f!740)) (map!164 (toList!79 (left!544 tree!37)) f!740))) e!6968) (and e!6968 (prop!281 (ProofOps!289 (= (toList!78 (map!163 (left!544 tree!37) f!740)) (map!164 (toList!79 (left!544 tree!37)) f!740))))))))

(assert (=> d!10037 d!10075))

(declare-fun d!10077 () Bool)

(declare-fun c!3613 () Bool)

(assert (=> d!10077 (= c!3613 (is-Nil!299 (toList!79 (left!544 tree!37))))))

(declare-fun e!7010 () List!300)

(assert (=> d!10077 (= (map!164 (toList!79 (left!544 tree!37)) f!740) e!7010)))

(declare-fun b!12780 () Bool)

(assert (=> b!12780 (= e!7010 Nil!298)))

(declare-fun b!12781 () Bool)

(assert (=> b!12781 (= e!7010 (Cons!297 (dynLambda!548 f!740 (head!516 (toList!79 (left!544 tree!37)))) (map!164 (tail!528 (toList!79 (left!544 tree!37))) f!740)))))

(assert (= (and d!10077 c!3613) b!12780))

(assert (= (and d!10077 (not c!3613)) b!12781))

(declare-fun b_lambda!7295 () Bool)

(assert (=> (not b_lambda!7295) (not b!12781)))

(declare-fun t!4027 () Bool)

(declare-fun tb!3687 () Bool)

(assert (=> (and start!2592 (= f!740 f!740) t!4027) tb!3687))

(declare-fun result!3743 () Bool)

(assert (=> tb!3687 (= result!3743 true)))

(assert (=> b!12781 t!4027))

(declare-fun b_and!7079 () Bool)

(assert (= b_and!7077 (and (=> t!4027 result!3743) b_and!7079)))

(declare-fun m!16071 () Bool)

(assert (=> b!12781 m!16071))

(declare-fun m!16073 () Bool)

(assert (=> b!12781 m!16073))

(assert (=> d!10037 d!10077))

(assert (=> d!10037 d!10041))

(declare-fun d!10079 () Bool)

(declare-fun c!3616 () Bool)

(assert (=> d!10079 (= c!3616 (is-Nil!299 (toList!79 (left!544 tree!37))))))

(declare-fun e!7013 () List!301)

(assert (=> d!10079 (= (append!144 (toList!79 (left!544 tree!37)) (toList!79 (right!547 tree!37))) e!7013)))

(declare-fun b!12786 () Bool)

(assert (=> b!12786 (= e!7013 (toList!79 (right!547 tree!37)))))

(declare-fun b!12787 () Bool)

(assert (=> b!12787 (= e!7013 (Cons!298 (head!516 (toList!79 (left!544 tree!37))) (append!144 (tail!528 (toList!79 (left!544 tree!37))) (toList!79 (right!547 tree!37)))))))

(assert (= (and d!10079 c!3616) b!12786))

(assert (= (and d!10079 (not c!3616)) b!12787))

(assert (=> b!12787 m!15959))

(declare-fun m!16075 () Bool)

(assert (=> b!12787 m!16075))

(assert (=> b!12759 d!10079))

(assert (=> b!12759 d!10041))

(assert (=> b!12759 d!10043))

(declare-fun d!10081 () Bool)

(assert (=> d!10081 (= (isEmpty!225 lt!1861) (is-Nil!298 lt!1861))))

(assert (=> d!10053 d!10081))

(declare-fun d!10083 () Bool)

(assert (=> d!10083 (= (isEmpty!224 lt!1853) (is-Nil!299 lt!1853))))

(assert (=> d!10041 d!10083))

(declare-fun b!12788 () Bool)

(declare-fun e!7014 () Bool)

(assert (=> b!12788 (= e!7014 true)))

(declare-fun b!12791 () Bool)

(declare-fun e!7015 () Bool)

(assert (=> b!12791 (= e!7015 (map_append!0 (toList!79 (left!544 (left!544 (left!544 tree!37)))) (toList!79 (right!547 (left!544 (left!544 tree!37)))) f!740))))

(declare-fun b!12790 () Bool)

(declare-fun res!4751 () Bool)

(assert (=> b!12790 (=> (not res!4751) (not e!7015))))

(assert (=> b!12790 (= res!4751 (toList_map_commutativity!0 (right!547 (left!544 (left!544 tree!37))) f!740))))

(declare-fun b!12789 () Bool)

(assert (=> b!12789 (= e!7014 e!7015)))

(declare-fun res!4752 () Bool)

(assert (=> b!12789 (=> (not res!4752) (not e!7015))))

(assert (=> b!12789 (= res!4752 (toList_map_commutativity!0 (left!544 (left!544 (left!544 tree!37))) f!740))))

(declare-fun d!10085 () Bool)

(assert (=> d!10085 (because!2 (ProofOps!289 (= (toList!78 (map!163 (left!544 (left!544 tree!37)) f!740)) (map!164 (toList!79 (left!544 (left!544 tree!37))) f!740))) e!7014)))

(declare-fun c!3617 () Bool)

(assert (=> d!10085 (= c!3617 (is-Leaf!151 (left!544 (left!544 tree!37))))))

(assert (=> d!10085 (= (toList_map_commutativity!0 (left!544 (left!544 tree!37)) f!740) true)))

(assert (= (and b!12789 res!4752) b!12790))

(assert (= (and b!12790 res!4751) b!12791))

(assert (= (and d!10085 c!3617) b!12788))

(assert (= (and d!10085 (not c!3617)) b!12789))

(declare-fun m!16077 () Bool)

(assert (=> b!12791 m!16077))

(declare-fun m!16079 () Bool)

(assert (=> b!12791 m!16079))

(assert (=> b!12791 m!16077))

(assert (=> b!12791 m!16079))

(declare-fun m!16081 () Bool)

(assert (=> b!12791 m!16081))

(declare-fun m!16083 () Bool)

(assert (=> b!12790 m!16083))

(declare-fun m!16085 () Bool)

(assert (=> b!12789 m!16085))

(declare-fun m!16087 () Bool)

(assert (=> d!10085 m!16087))

(declare-fun m!16089 () Bool)

(assert (=> d!10085 m!16089))

(declare-fun m!16091 () Bool)

(assert (=> d!10085 m!16091))

(assert (=> d!10085 m!15967))

(assert (=> d!10085 m!16089))

(assert (=> d!10085 m!15967))

(declare-fun m!16093 () Bool)

(assert (=> d!10085 m!16093))

(assert (=> b!12725 d!10085))

(declare-fun d!10087 () Bool)

(declare-fun c!3620 () Bool)

(assert (=> d!10087 (= c!3620 (is-Nil!298 (toList!78 (left!545 (map!163 tree!37 f!740)))))))

(declare-fun e!7018 () List!300)

(assert (=> d!10087 (= (append!143 (toList!78 (left!545 (map!163 tree!37 f!740))) (toList!78 (right!548 (map!163 tree!37 f!740)))) e!7018)))

(declare-fun b!12796 () Bool)

(assert (=> b!12796 (= e!7018 (toList!78 (right!548 (map!163 tree!37 f!740))))))

(declare-fun b!12797 () Bool)

(assert (=> b!12797 (= e!7018 (Cons!297 (head!515 (toList!78 (left!545 (map!163 tree!37 f!740)))) (append!143 (tail!527 (toList!78 (left!545 (map!163 tree!37 f!740)))) (toList!78 (right!548 (map!163 tree!37 f!740))))))))

(assert (= (and d!10087 c!3620) b!12796))

(assert (= (and d!10087 (not c!3620)) b!12797))

(assert (=> b!12797 m!16023))

(declare-fun m!16095 () Bool)

(assert (=> b!12797 m!16095))

(assert (=> b!12765 d!10087))

(declare-fun d!10089 () Bool)

(declare-fun lt!1866 () List!300)

(assert (=> d!10089 (not (isEmpty!225 lt!1866))))

(declare-fun e!7019 () List!300)

(assert (=> d!10089 (= lt!1866 e!7019)))

(declare-fun c!3621 () Bool)

(assert (=> d!10089 (= c!3621 (is-Leaf!152 (left!545 (map!163 tree!37 f!740))))))

(assert (=> d!10089 (= (toList!78 (left!545 (map!163 tree!37 f!740))) lt!1866)))

(declare-fun b!12798 () Bool)

(assert (=> b!12798 (= e!7019 (Cons!297 (value!1321 (left!545 (map!163 tree!37 f!740))) Nil!298))))

(declare-fun b!12799 () Bool)

(assert (=> b!12799 (= e!7019 (append!143 (toList!78 (left!545 (left!545 (map!163 tree!37 f!740)))) (toList!78 (right!548 (left!545 (map!163 tree!37 f!740))))))))

(assert (= (and d!10089 c!3621) b!12798))

(assert (= (and d!10089 (not c!3621)) b!12799))

(declare-fun m!16097 () Bool)

(assert (=> d!10089 m!16097))

(declare-fun m!16099 () Bool)

(assert (=> b!12799 m!16099))

(declare-fun m!16101 () Bool)

(assert (=> b!12799 m!16101))

(assert (=> b!12799 m!16099))

(assert (=> b!12799 m!16101))

(declare-fun m!16103 () Bool)

(assert (=> b!12799 m!16103))

(assert (=> b!12765 d!10089))

(declare-fun d!10091 () Bool)

(declare-fun lt!1867 () List!300)

(assert (=> d!10091 (not (isEmpty!225 lt!1867))))

(declare-fun e!7020 () List!300)

(assert (=> d!10091 (= lt!1867 e!7020)))

(declare-fun c!3622 () Bool)

(assert (=> d!10091 (= c!3622 (is-Leaf!152 (right!548 (map!163 tree!37 f!740))))))

(assert (=> d!10091 (= (toList!78 (right!548 (map!163 tree!37 f!740))) lt!1867)))

(declare-fun b!12800 () Bool)

(assert (=> b!12800 (= e!7020 (Cons!297 (value!1321 (right!548 (map!163 tree!37 f!740))) Nil!298))))

(declare-fun b!12801 () Bool)

(assert (=> b!12801 (= e!7020 (append!143 (toList!78 (left!545 (right!548 (map!163 tree!37 f!740)))) (toList!78 (right!548 (right!548 (map!163 tree!37 f!740))))))))

(assert (= (and d!10091 c!3622) b!12800))

(assert (= (and d!10091 (not c!3622)) b!12801))

(declare-fun m!16105 () Bool)

(assert (=> d!10091 m!16105))

(declare-fun m!16107 () Bool)

(assert (=> b!12801 m!16107))

(declare-fun m!16109 () Bool)

(assert (=> b!12801 m!16109))

(assert (=> b!12801 m!16107))

(assert (=> b!12801 m!16109))

(declare-fun m!16111 () Bool)

(assert (=> b!12801 m!16111))

(assert (=> b!12765 d!10091))

(declare-fun d!10093 () Bool)

(assert (=> d!10093 (= (isEmpty!224 lt!1854) (is-Nil!299 lt!1854))))

(assert (=> d!10043 d!10093))

(declare-fun b!12803 () Bool)

(declare-fun e!7021 () Bool)

(assert (=> b!12803 (= e!7021 (= (append!143 (map!164 (toList!79 (left!544 (left!544 tree!37))) f!740) (map!164 (toList!79 (right!547 (left!544 tree!37))) f!740)) (map!164 (append!144 (toList!79 (left!544 (left!544 tree!37))) (toList!79 (right!547 (left!544 tree!37)))) f!740)))))

(declare-fun lt!1868 () Bool)

(assert (=> b!12803 (= lt!1868 (map_append!0 (tail!528 (toList!79 (left!544 (left!544 tree!37)))) (toList!79 (right!547 (left!544 tree!37))) f!740))))

(declare-fun d!10095 () Bool)

(assert (=> d!10095 e!7021))

(declare-fun c!3623 () Bool)

(assert (=> d!10095 (= c!3623 (is-Nil!299 (toList!79 (left!544 (left!544 tree!37)))))))

(assert (=> d!10095 (= (map_append!0 (toList!79 (left!544 (left!544 tree!37))) (toList!79 (right!547 (left!544 tree!37))) f!740) true)))

(declare-fun b!12802 () Bool)

(assert (=> b!12802 (= e!7021 (= (append!143 (map!164 (toList!79 (left!544 (left!544 tree!37))) f!740) (map!164 (toList!79 (right!547 (left!544 tree!37))) f!740)) (map!164 (append!144 (toList!79 (left!544 (left!544 tree!37))) (toList!79 (right!547 (left!544 tree!37)))) f!740)))))

(assert (= (and d!10095 c!3623) b!12802))

(assert (= (and d!10095 (not c!3623)) b!12803))

(assert (=> b!12803 m!16093))

(declare-fun m!16113 () Bool)

(assert (=> b!12803 m!16113))

(declare-fun m!16115 () Bool)

(assert (=> b!12803 m!16115))

(assert (=> b!12803 m!15969))

(assert (=> b!12803 m!16113))

(assert (=> b!12803 m!15997))

(declare-fun m!16117 () Bool)

(assert (=> b!12803 m!16117))

(assert (=> b!12803 m!15967))

(assert (=> b!12803 m!16093))

(assert (=> b!12803 m!15967))

(assert (=> b!12803 m!15969))

(assert (=> b!12803 m!15997))

(assert (=> b!12803 m!15969))

(declare-fun m!16119 () Bool)

(assert (=> b!12803 m!16119))

(assert (=> b!12802 m!16093))

(assert (=> b!12802 m!16113))

(assert (=> b!12802 m!16115))

(assert (=> b!12802 m!15969))

(assert (=> b!12802 m!16113))

(assert (=> b!12802 m!15997))

(assert (=> b!12802 m!16117))

(assert (=> b!12802 m!15967))

(assert (=> b!12802 m!16093))

(assert (=> b!12802 m!15967))

(assert (=> b!12802 m!15969))

(assert (=> b!12802 m!15997))

(assert (=> b!12727 d!10095))

(declare-fun d!10097 () Bool)

(declare-fun lt!1869 () List!301)

(assert (=> d!10097 (not (isEmpty!224 lt!1869))))

(declare-fun e!7022 () List!301)

(assert (=> d!10097 (= lt!1869 e!7022)))

(declare-fun c!3624 () Bool)

(assert (=> d!10097 (= c!3624 (is-Leaf!151 (left!544 (left!544 tree!37))))))

(assert (=> d!10097 (= (toList!79 (left!544 (left!544 tree!37))) lt!1869)))

(declare-fun b!12804 () Bool)

(assert (=> b!12804 (= e!7022 (Cons!298 (value!1320 (left!544 (left!544 tree!37))) Nil!299))))

(declare-fun b!12805 () Bool)

(assert (=> b!12805 (= e!7022 (append!144 (toList!79 (left!544 (left!544 (left!544 tree!37)))) (toList!79 (right!547 (left!544 (left!544 tree!37))))))))

(assert (= (and d!10097 c!3624) b!12804))

(assert (= (and d!10097 (not c!3624)) b!12805))

(declare-fun m!16121 () Bool)

(assert (=> d!10097 m!16121))

(assert (=> b!12805 m!16077))

(assert (=> b!12805 m!16079))

(assert (=> b!12805 m!16077))

(assert (=> b!12805 m!16079))

(declare-fun m!16123 () Bool)

(assert (=> b!12805 m!16123))

(assert (=> b!12727 d!10097))

(declare-fun d!10099 () Bool)

(declare-fun lt!1870 () List!301)

(assert (=> d!10099 (not (isEmpty!224 lt!1870))))

(declare-fun e!7023 () List!301)

(assert (=> d!10099 (= lt!1870 e!7023)))

(declare-fun c!3625 () Bool)

(assert (=> d!10099 (= c!3625 (is-Leaf!151 (right!547 (left!544 tree!37))))))

(assert (=> d!10099 (= (toList!79 (right!547 (left!544 tree!37))) lt!1870)))

(declare-fun b!12806 () Bool)

(assert (=> b!12806 (= e!7023 (Cons!298 (value!1320 (right!547 (left!544 tree!37))) Nil!299))))

(declare-fun b!12807 () Bool)

(assert (=> b!12807 (= e!7023 (append!144 (toList!79 (left!544 (right!547 (left!544 tree!37)))) (toList!79 (right!547 (right!547 (left!544 tree!37))))))))

(assert (= (and d!10099 c!3625) b!12806))

(assert (= (and d!10099 (not c!3625)) b!12807))

(declare-fun m!16125 () Bool)

(assert (=> d!10099 m!16125))

(declare-fun m!16127 () Bool)

(assert (=> b!12807 m!16127))

(declare-fun m!16129 () Bool)

(assert (=> b!12807 m!16129))

(assert (=> b!12807 m!16127))

(assert (=> b!12807 m!16129))

(declare-fun m!16131 () Bool)

(assert (=> b!12807 m!16131))

(assert (=> b!12727 d!10099))

(assert (=> bs!3412 d!10071))

(declare-fun b!12808 () Bool)

(declare-fun e!7024 () Bool)

(assert (=> b!12808 (= e!7024 true)))

(declare-fun b!12811 () Bool)

(declare-fun e!7025 () Bool)

(assert (=> b!12811 (= e!7025 (map_append!0 (toList!79 (left!544 (right!547 (right!547 tree!37)))) (toList!79 (right!547 (right!547 (right!547 tree!37)))) f!740))))

(declare-fun b!12810 () Bool)

(declare-fun res!4753 () Bool)

(assert (=> b!12810 (=> (not res!4753) (not e!7025))))

(assert (=> b!12810 (= res!4753 (toList_map_commutativity!0 (right!547 (right!547 (right!547 tree!37))) f!740))))

(declare-fun b!12809 () Bool)

(assert (=> b!12809 (= e!7024 e!7025)))

(declare-fun res!4754 () Bool)

(assert (=> b!12809 (=> (not res!4754) (not e!7025))))

(assert (=> b!12809 (= res!4754 (toList_map_commutativity!0 (left!544 (right!547 (right!547 tree!37))) f!740))))

(declare-fun d!10101 () Bool)

(assert (=> d!10101 (because!2 (ProofOps!289 (= (toList!78 (map!163 (right!547 (right!547 tree!37)) f!740)) (map!164 (toList!79 (right!547 (right!547 tree!37))) f!740))) e!7024)))

(declare-fun c!3626 () Bool)

(assert (=> d!10101 (= c!3626 (is-Leaf!151 (right!547 (right!547 tree!37))))))

(assert (=> d!10101 (= (toList_map_commutativity!0 (right!547 (right!547 tree!37)) f!740) true)))

(assert (= (and b!12809 res!4754) b!12810))

(assert (= (and b!12810 res!4753) b!12811))

(assert (= (and d!10101 c!3626) b!12808))

(assert (= (and d!10101 (not c!3626)) b!12809))

(declare-fun m!16133 () Bool)

(assert (=> b!12811 m!16133))

(declare-fun m!16135 () Bool)

(assert (=> b!12811 m!16135))

(assert (=> b!12811 m!16133))

(assert (=> b!12811 m!16135))

(declare-fun m!16137 () Bool)

(assert (=> b!12811 m!16137))

(declare-fun m!16139 () Bool)

(assert (=> b!12810 m!16139))

(declare-fun m!16141 () Bool)

(assert (=> b!12809 m!16141))

(declare-fun m!16143 () Bool)

(assert (=> d!10101 m!16143))

(declare-fun m!16145 () Bool)

(assert (=> d!10101 m!16145))

(declare-fun m!16147 () Bool)

(assert (=> d!10101 m!16147))

(assert (=> d!10101 m!16003))

(assert (=> d!10101 m!16145))

(assert (=> d!10101 m!16003))

(declare-fun m!16149 () Bool)

(assert (=> d!10101 m!16149))

(assert (=> b!12768 d!10101))

(assert (=> bs!3411 d!10065))

(declare-fun b!12813 () Bool)

(declare-fun e!7026 () Bool)

(assert (=> b!12813 (= e!7026 (= (append!143 (map!164 (toList!79 (left!544 (right!547 tree!37))) f!740) (map!164 (toList!79 (right!547 (right!547 tree!37))) f!740)) (map!164 (append!144 (toList!79 (left!544 (right!547 tree!37))) (toList!79 (right!547 (right!547 tree!37)))) f!740)))))

(declare-fun lt!1871 () Bool)

(assert (=> b!12813 (= lt!1871 (map_append!0 (tail!528 (toList!79 (left!544 (right!547 tree!37)))) (toList!79 (right!547 (right!547 tree!37))) f!740))))

(declare-fun d!10103 () Bool)

(assert (=> d!10103 e!7026))

(declare-fun c!3627 () Bool)

(assert (=> d!10103 (= c!3627 (is-Nil!299 (toList!79 (left!544 (right!547 tree!37)))))))

(assert (=> d!10103 (= (map_append!0 (toList!79 (left!544 (right!547 tree!37))) (toList!79 (right!547 (right!547 tree!37))) f!740) true)))

(declare-fun b!12812 () Bool)

(assert (=> b!12812 (= e!7026 (= (append!143 (map!164 (toList!79 (left!544 (right!547 tree!37))) f!740) (map!164 (toList!79 (right!547 (right!547 tree!37))) f!740)) (map!164 (append!144 (toList!79 (left!544 (right!547 tree!37))) (toList!79 (right!547 (right!547 tree!37)))) f!740)))))

(assert (= (and d!10103 c!3627) b!12812))

(assert (= (and d!10103 (not c!3627)) b!12813))

(declare-fun m!16151 () Bool)

(assert (=> b!12813 m!16151))

(assert (=> b!12813 m!16149))

(declare-fun m!16153 () Bool)

(assert (=> b!12813 m!16153))

(assert (=> b!12813 m!16003))

(assert (=> b!12813 m!16149))

(assert (=> b!12813 m!16005))

(declare-fun m!16155 () Bool)

(assert (=> b!12813 m!16155))

(assert (=> b!12813 m!16001))

(assert (=> b!12813 m!16151))

(assert (=> b!12813 m!16001))

(assert (=> b!12813 m!16003))

(assert (=> b!12813 m!16005))

(assert (=> b!12813 m!16003))

(declare-fun m!16157 () Bool)

(assert (=> b!12813 m!16157))

(assert (=> b!12812 m!16151))

(assert (=> b!12812 m!16149))

(assert (=> b!12812 m!16153))

(assert (=> b!12812 m!16003))

(assert (=> b!12812 m!16149))

(assert (=> b!12812 m!16005))

(assert (=> b!12812 m!16155))

(assert (=> b!12812 m!16001))

(assert (=> b!12812 m!16151))

(assert (=> b!12812 m!16001))

(assert (=> b!12812 m!16003))

(assert (=> b!12812 m!16005))

(assert (=> b!12769 d!10103))

(declare-fun d!10105 () Bool)

(declare-fun lt!1872 () List!301)

(assert (=> d!10105 (not (isEmpty!224 lt!1872))))

(declare-fun e!7027 () List!301)

(assert (=> d!10105 (= lt!1872 e!7027)))

(declare-fun c!3628 () Bool)

(assert (=> d!10105 (= c!3628 (is-Leaf!151 (left!544 (right!547 tree!37))))))

(assert (=> d!10105 (= (toList!79 (left!544 (right!547 tree!37))) lt!1872)))

(declare-fun b!12814 () Bool)

(assert (=> b!12814 (= e!7027 (Cons!298 (value!1320 (left!544 (right!547 tree!37))) Nil!299))))

(declare-fun b!12815 () Bool)

(assert (=> b!12815 (= e!7027 (append!144 (toList!79 (left!544 (left!544 (right!547 tree!37)))) (toList!79 (right!547 (left!544 (right!547 tree!37))))))))

(assert (= (and d!10105 c!3628) b!12814))

(assert (= (and d!10105 (not c!3628)) b!12815))

(declare-fun m!16159 () Bool)

(assert (=> d!10105 m!16159))

(declare-fun m!16161 () Bool)

(assert (=> b!12815 m!16161))

(declare-fun m!16163 () Bool)

(assert (=> b!12815 m!16163))

(assert (=> b!12815 m!16161))

(assert (=> b!12815 m!16163))

(declare-fun m!16165 () Bool)

(assert (=> b!12815 m!16165))

(assert (=> b!12769 d!10105))

(declare-fun d!10107 () Bool)

(declare-fun lt!1873 () List!301)

(assert (=> d!10107 (not (isEmpty!224 lt!1873))))

(declare-fun e!7028 () List!301)

(assert (=> d!10107 (= lt!1873 e!7028)))

(declare-fun c!3629 () Bool)

(assert (=> d!10107 (= c!3629 (is-Leaf!151 (right!547 (right!547 tree!37))))))

(assert (=> d!10107 (= (toList!79 (right!547 (right!547 tree!37))) lt!1873)))

(declare-fun b!12816 () Bool)

(assert (=> b!12816 (= e!7028 (Cons!298 (value!1320 (right!547 (right!547 tree!37))) Nil!299))))

(declare-fun b!12817 () Bool)

(assert (=> b!12817 (= e!7028 (append!144 (toList!79 (left!544 (right!547 (right!547 tree!37)))) (toList!79 (right!547 (right!547 (right!547 tree!37))))))))

(assert (= (and d!10107 c!3629) b!12816))

(assert (= (and d!10107 (not c!3629)) b!12817))

(declare-fun m!16167 () Bool)

(assert (=> d!10107 m!16167))

(assert (=> b!12817 m!16133))

(assert (=> b!12817 m!16135))

(assert (=> b!12817 m!16133))

(assert (=> b!12817 m!16135))

(declare-fun m!16169 () Bool)

(assert (=> b!12817 m!16169))

(assert (=> b!12769 d!10107))

(declare-fun b!12818 () Bool)

(declare-fun e!7029 () Bool)

(assert (=> b!12818 (= e!7029 true)))

(declare-fun b!12821 () Bool)

(declare-fun e!7030 () Bool)

(assert (=> b!12821 (= e!7030 (map_append!0 (toList!79 (left!544 (left!544 (right!547 tree!37)))) (toList!79 (right!547 (left!544 (right!547 tree!37)))) f!740))))

(declare-fun b!12820 () Bool)

(declare-fun res!4755 () Bool)

(assert (=> b!12820 (=> (not res!4755) (not e!7030))))

(assert (=> b!12820 (= res!4755 (toList_map_commutativity!0 (right!547 (left!544 (right!547 tree!37))) f!740))))

(declare-fun b!12819 () Bool)

(assert (=> b!12819 (= e!7029 e!7030)))

(declare-fun res!4756 () Bool)

(assert (=> b!12819 (=> (not res!4756) (not e!7030))))

(assert (=> b!12819 (= res!4756 (toList_map_commutativity!0 (left!544 (left!544 (right!547 tree!37))) f!740))))

(declare-fun d!10109 () Bool)

(assert (=> d!10109 (because!2 (ProofOps!289 (= (toList!78 (map!163 (left!544 (right!547 tree!37)) f!740)) (map!164 (toList!79 (left!544 (right!547 tree!37))) f!740))) e!7029)))

(declare-fun c!3630 () Bool)

(assert (=> d!10109 (= c!3630 (is-Leaf!151 (left!544 (right!547 tree!37))))))

(assert (=> d!10109 (= (toList_map_commutativity!0 (left!544 (right!547 tree!37)) f!740) true)))

(assert (= (and b!12819 res!4756) b!12820))

(assert (= (and b!12820 res!4755) b!12821))

(assert (= (and d!10109 c!3630) b!12818))

(assert (= (and d!10109 (not c!3630)) b!12819))

(assert (=> b!12821 m!16161))

(assert (=> b!12821 m!16163))

(assert (=> b!12821 m!16161))

(assert (=> b!12821 m!16163))

(declare-fun m!16171 () Bool)

(assert (=> b!12821 m!16171))

(declare-fun m!16173 () Bool)

(assert (=> b!12820 m!16173))

(declare-fun m!16175 () Bool)

(assert (=> b!12819 m!16175))

(declare-fun m!16177 () Bool)

(assert (=> d!10109 m!16177))

(declare-fun m!16179 () Bool)

(assert (=> d!10109 m!16179))

(declare-fun m!16181 () Bool)

(assert (=> d!10109 m!16181))

(assert (=> d!10109 m!16001))

(assert (=> d!10109 m!16179))

(assert (=> d!10109 m!16001))

(assert (=> d!10109 m!16151))

(assert (=> b!12767 d!10109))

(declare-fun b!12822 () Bool)

(declare-fun e!7031 () Bool)

(assert (=> b!12822 (= e!7031 true)))

(declare-fun b!12825 () Bool)

(declare-fun e!7032 () Bool)

(assert (=> b!12825 (= e!7032 (map_append!0 (toList!79 (left!544 (right!547 (left!544 tree!37)))) (toList!79 (right!547 (right!547 (left!544 tree!37)))) f!740))))

(declare-fun b!12824 () Bool)

(declare-fun res!4757 () Bool)

(assert (=> b!12824 (=> (not res!4757) (not e!7032))))

(assert (=> b!12824 (= res!4757 (toList_map_commutativity!0 (right!547 (right!547 (left!544 tree!37))) f!740))))

(declare-fun b!12823 () Bool)

(assert (=> b!12823 (= e!7031 e!7032)))

(declare-fun res!4758 () Bool)

(assert (=> b!12823 (=> (not res!4758) (not e!7032))))

(assert (=> b!12823 (= res!4758 (toList_map_commutativity!0 (left!544 (right!547 (left!544 tree!37))) f!740))))

(declare-fun d!10111 () Bool)

(assert (=> d!10111 (because!2 (ProofOps!289 (= (toList!78 (map!163 (right!547 (left!544 tree!37)) f!740)) (map!164 (toList!79 (right!547 (left!544 tree!37))) f!740))) e!7031)))

(declare-fun c!3631 () Bool)

(assert (=> d!10111 (= c!3631 (is-Leaf!151 (right!547 (left!544 tree!37))))))

(assert (=> d!10111 (= (toList_map_commutativity!0 (right!547 (left!544 tree!37)) f!740) true)))

(assert (= (and b!12823 res!4758) b!12824))

(assert (= (and b!12824 res!4757) b!12825))

(assert (= (and d!10111 c!3631) b!12822))

(assert (= (and d!10111 (not c!3631)) b!12823))

(assert (=> b!12825 m!16127))

(assert (=> b!12825 m!16129))

(assert (=> b!12825 m!16127))

(assert (=> b!12825 m!16129))

(declare-fun m!16183 () Bool)

(assert (=> b!12825 m!16183))

(declare-fun m!16185 () Bool)

(assert (=> b!12824 m!16185))

(declare-fun m!16187 () Bool)

(assert (=> b!12823 m!16187))

(declare-fun m!16189 () Bool)

(assert (=> d!10111 m!16189))

(declare-fun m!16191 () Bool)

(assert (=> d!10111 m!16191))

(declare-fun m!16193 () Bool)

(assert (=> d!10111 m!16193))

(assert (=> d!10111 m!15969))

(assert (=> d!10111 m!16191))

(assert (=> d!10111 m!15969))

(assert (=> d!10111 m!16113))

(assert (=> b!12726 d!10111))

(declare-fun d!10113 () Bool)

(declare-fun c!3632 () Bool)

(assert (=> d!10113 (= c!3632 (is-Nil!299 (toList!79 (left!544 (right!547 tree!37)))))))

(declare-fun e!7033 () List!301)

(assert (=> d!10113 (= (append!144 (toList!79 (left!544 (right!547 tree!37))) (toList!79 (right!547 (right!547 tree!37)))) e!7033)))

(declare-fun b!12826 () Bool)

(assert (=> b!12826 (= e!7033 (toList!79 (right!547 (right!547 tree!37))))))

(declare-fun b!12827 () Bool)

(assert (=> b!12827 (= e!7033 (Cons!298 (head!516 (toList!79 (left!544 (right!547 tree!37)))) (append!144 (tail!528 (toList!79 (left!544 (right!547 tree!37)))) (toList!79 (right!547 (right!547 tree!37))))))))

(assert (= (and d!10113 c!3632) b!12826))

(assert (= (and d!10113 (not c!3632)) b!12827))

(assert (=> b!12827 m!16003))

(declare-fun m!16195 () Bool)

(assert (=> b!12827 m!16195))

(assert (=> b!12741 d!10113))

(assert (=> b!12741 d!10105))

(assert (=> b!12741 d!10107))

(assert (=> b!12732 d!10079))

(declare-fun d!10115 () Bool)

(declare-fun c!3633 () Bool)

(assert (=> d!10115 (= c!3633 (is-Nil!298 (map!164 (toList!79 (left!544 tree!37)) f!740)))))

(declare-fun e!7034 () List!300)

(assert (=> d!10115 (= (append!143 (map!164 (toList!79 (left!544 tree!37)) f!740) (map!164 (toList!79 (right!547 tree!37)) f!740)) e!7034)))

(declare-fun b!12828 () Bool)

(assert (=> b!12828 (= e!7034 (map!164 (toList!79 (right!547 tree!37)) f!740))))

(declare-fun b!12829 () Bool)

(assert (=> b!12829 (= e!7034 (Cons!297 (head!515 (map!164 (toList!79 (left!544 tree!37)) f!740)) (append!143 (tail!527 (map!164 (toList!79 (left!544 tree!37)) f!740)) (map!164 (toList!79 (right!547 tree!37)) f!740))))))

(assert (= (and d!10115 c!3633) b!12828))

(assert (= (and d!10115 (not c!3633)) b!12829))

(assert (=> b!12829 m!15985))

(declare-fun m!16197 () Bool)

(assert (=> b!12829 m!16197))

(assert (=> b!12732 d!10115))

(declare-fun d!10117 () Bool)

(declare-fun c!3634 () Bool)

(assert (=> d!10117 (= c!3634 (is-Nil!299 (append!144 (toList!79 (left!544 tree!37)) (toList!79 (right!547 tree!37)))))))

(declare-fun e!7035 () List!300)

(assert (=> d!10117 (= (map!164 (append!144 (toList!79 (left!544 tree!37)) (toList!79 (right!547 tree!37))) f!740) e!7035)))

(declare-fun b!12830 () Bool)

(assert (=> b!12830 (= e!7035 Nil!298)))

(declare-fun b!12831 () Bool)

(assert (=> b!12831 (= e!7035 (Cons!297 (dynLambda!548 f!740 (head!516 (append!144 (toList!79 (left!544 tree!37)) (toList!79 (right!547 tree!37))))) (map!164 (tail!528 (append!144 (toList!79 (left!544 tree!37)) (toList!79 (right!547 tree!37)))) f!740)))))

(assert (= (and d!10117 c!3634) b!12830))

(assert (= (and d!10117 (not c!3634)) b!12831))

(declare-fun b_lambda!7297 () Bool)

(assert (=> (not b_lambda!7297) (not b!12831)))

(declare-fun t!4029 () Bool)

(declare-fun tb!3689 () Bool)

(assert (=> (and start!2592 (= f!740 f!740) t!4029) tb!3689))

(declare-fun result!3745 () Bool)

(assert (=> tb!3689 (= result!3745 true)))

(assert (=> b!12831 t!4029))

(declare-fun b_and!7081 () Bool)

(assert (= b_and!7079 (and (=> t!4029 result!3745) b_and!7081)))

(declare-fun m!16199 () Bool)

(assert (=> b!12831 m!16199))

(declare-fun m!16201 () Bool)

(assert (=> b!12831 m!16201))

(assert (=> b!12732 d!10117))

(assert (=> b!12732 d!10077))

(assert (=> b!12732 d!10067))

(declare-fun d!10119 () Bool)

(declare-fun c!3635 () Bool)

(assert (=> d!10119 (= c!3635 (is-Nil!299 (tail!528 (toList!79 tree!37))))))

(declare-fun e!7036 () List!300)

(assert (=> d!10119 (= (map!164 (tail!528 (toList!79 tree!37)) f!740) e!7036)))

(declare-fun b!12832 () Bool)

(assert (=> b!12832 (= e!7036 Nil!298)))

(declare-fun b!12833 () Bool)

(assert (=> b!12833 (= e!7036 (Cons!297 (dynLambda!548 f!740 (head!516 (tail!528 (toList!79 tree!37)))) (map!164 (tail!528 (tail!528 (toList!79 tree!37))) f!740)))))

(assert (= (and d!10119 c!3635) b!12832))

(assert (= (and d!10119 (not c!3635)) b!12833))

(declare-fun b_lambda!7299 () Bool)

(assert (=> (not b_lambda!7299) (not b!12833)))

(declare-fun t!4031 () Bool)

(declare-fun tb!3691 () Bool)

(assert (=> (and start!2592 (= f!740 f!740) t!4031) tb!3691))

(declare-fun result!3747 () Bool)

(assert (=> tb!3691 (= result!3747 true)))

(assert (=> b!12833 t!4031))

(declare-fun b_and!7083 () Bool)

(assert (= b_and!7081 (and (=> t!4031 result!3747) b_and!7083)))

(declare-fun m!16203 () Bool)

(assert (=> b!12833 m!16203))

(declare-fun m!16205 () Bool)

(assert (=> b!12833 m!16205))

(assert (=> b!12757 d!10119))

(declare-fun b!12835 () Bool)

(declare-fun e!7037 () Bool)

(assert (=> b!12835 (= e!7037 (= (append!143 (map!164 (tail!528 (toList!79 (left!544 tree!37))) f!740) (map!164 (toList!79 (right!547 tree!37)) f!740)) (map!164 (append!144 (tail!528 (toList!79 (left!544 tree!37))) (toList!79 (right!547 tree!37))) f!740)))))

(declare-fun lt!1874 () Bool)

(assert (=> b!12835 (= lt!1874 (map_append!0 (tail!528 (tail!528 (toList!79 (left!544 tree!37)))) (toList!79 (right!547 tree!37)) f!740))))

(declare-fun d!10121 () Bool)

(assert (=> d!10121 e!7037))

(declare-fun c!3636 () Bool)

(assert (=> d!10121 (= c!3636 (is-Nil!299 (tail!528 (toList!79 (left!544 tree!37)))))))

(assert (=> d!10121 (= (map_append!0 (tail!528 (toList!79 (left!544 tree!37))) (toList!79 (right!547 tree!37)) f!740) true)))

(declare-fun b!12834 () Bool)

(assert (=> b!12834 (= e!7037 (= (append!143 (map!164 (tail!528 (toList!79 (left!544 tree!37))) f!740) (map!164 (toList!79 (right!547 tree!37)) f!740)) (map!164 (append!144 (tail!528 (toList!79 (left!544 tree!37))) (toList!79 (right!547 tree!37))) f!740)))))

(assert (= (and d!10121 c!3636) b!12834))

(assert (= (and d!10121 (not c!3636)) b!12835))

(assert (=> b!12835 m!16073))

(assert (=> b!12835 m!15985))

(declare-fun m!16207 () Bool)

(assert (=> b!12835 m!16207))

(assert (=> b!12835 m!15959))

(assert (=> b!12835 m!15985))

(assert (=> b!12835 m!16075))

(declare-fun m!16209 () Bool)

(assert (=> b!12835 m!16209))

(assert (=> b!12835 m!16073))

(assert (=> b!12835 m!15959))

(assert (=> b!12835 m!16075))

(assert (=> b!12835 m!15959))

(declare-fun m!16211 () Bool)

(assert (=> b!12835 m!16211))

(assert (=> b!12834 m!16073))

(assert (=> b!12834 m!15985))

(assert (=> b!12834 m!16207))

(assert (=> b!12834 m!15959))

(assert (=> b!12834 m!15985))

(assert (=> b!12834 m!16075))

(assert (=> b!12834 m!16209))

(assert (=> b!12834 m!16073))

(assert (=> b!12834 m!15959))

(assert (=> b!12834 m!16075))

(assert (=> b!12733 d!10121))

(assert (=> b!12733 d!10079))

(assert (=> b!12733 d!10115))

(assert (=> b!12733 d!10117))

(assert (=> b!12733 d!10077))

(assert (=> b!12733 d!10067))

(declare-fun d!10123 () Bool)

(declare-fun c!3637 () Bool)

(assert (=> d!10123 (= c!3637 (is-Nil!299 (toList!79 (left!544 (left!544 tree!37)))))))

(declare-fun e!7038 () List!301)

(assert (=> d!10123 (= (append!144 (toList!79 (left!544 (left!544 tree!37))) (toList!79 (right!547 (left!544 tree!37)))) e!7038)))

(declare-fun b!12836 () Bool)

(assert (=> b!12836 (= e!7038 (toList!79 (right!547 (left!544 tree!37))))))

(declare-fun b!12837 () Bool)

(assert (=> b!12837 (= e!7038 (Cons!298 (head!516 (toList!79 (left!544 (left!544 tree!37)))) (append!144 (tail!528 (toList!79 (left!544 (left!544 tree!37)))) (toList!79 (right!547 (left!544 tree!37))))))))

(assert (= (and d!10123 c!3637) b!12836))

(assert (= (and d!10123 (not c!3637)) b!12837))

(assert (=> b!12837 m!15969))

(declare-fun m!16213 () Bool)

(assert (=> b!12837 m!16213))

(assert (=> b!12739 d!10123))

(assert (=> b!12739 d!10097))

(assert (=> b!12739 d!10099))

(declare-fun b_lambda!7301 () Bool)

(assert (= b_lambda!7299 (or (and start!2592 b_free!2021) b_lambda!7301)))

(declare-fun b_lambda!7303 () Bool)

(assert (= b_lambda!7297 (or (and start!2592 b_free!2021) b_lambda!7303)))

(declare-fun b_lambda!7305 () Bool)

(assert (= b_lambda!7295 (or (and start!2592 b_free!2021) b_lambda!7305)))

(declare-fun b_lambda!7307 () Bool)

(assert (= b_lambda!7283 (or b!12773 b_lambda!7307)))

(declare-fun bs!3416 () Bool)

(declare-fun d!10125 () Bool)

(assert (= bs!3416 (and d!10125 b!12773)))

(assert (=> bs!3416 (= (dynLambda!547 lambda!3449) (map!163 (right!547 (right!547 tree!37)) f!740))))

(assert (=> bs!3416 m!16145))

(assert (=> b!12773 d!10125))

(declare-fun b_lambda!7309 () Bool)

(assert (= b_lambda!7285 (or (and start!2592 b_free!2021) b_lambda!7309)))

(declare-fun b_lambda!7311 () Bool)

(assert (= b_lambda!7289 (or b!12777 b_lambda!7311)))

(declare-fun bs!3417 () Bool)

(declare-fun d!10127 () Bool)

(assert (= bs!3417 (and d!10127 b!12777)))

(assert (=> bs!3417 (= (dynLambda!547 lambda!3450) (map!163 (left!544 (left!544 tree!37)) f!740))))

(assert (=> bs!3417 m!16089))

(assert (=> b!12777 d!10127))

(declare-fun b_lambda!7313 () Bool)

(assert (= b_lambda!7287 (or (and start!2592 b_free!2021) b_lambda!7313)))

(declare-fun b_lambda!7315 () Bool)

(assert (= b_lambda!7281 (or b!12773 b_lambda!7315)))

(declare-fun bs!3418 () Bool)

(declare-fun d!10129 () Bool)

(assert (= bs!3418 (and d!10129 b!12773)))

(assert (=> bs!3418 (= (dynLambda!547 lambda!3448) (map!163 (left!544 (right!547 tree!37)) f!740))))

(assert (=> bs!3418 m!16179))

(assert (=> b!12773 d!10129))

(declare-fun b_lambda!7317 () Bool)

(assert (= b_lambda!7293 (or (and start!2592 b_free!2021) b_lambda!7317)))

(declare-fun b_lambda!7319 () Bool)

(assert (= b_lambda!7291 (or b!12777 b_lambda!7319)))

(declare-fun bs!3419 () Bool)

(declare-fun d!10131 () Bool)

(assert (= bs!3419 (and d!10131 b!12777)))

(assert (=> bs!3419 (= (dynLambda!547 lambda!3451) (map!163 (right!547 (left!544 tree!37)) f!740))))

(assert (=> bs!3419 m!16191))

(assert (=> b!12777 d!10131))

(push 1)

(assert (not d!10085))

(assert (not d!10111))

(assert (not b!12801))

(assert (not b_lambda!7317))

(assert (not b_next!4719))

(assert b_and!7083)

(assert (not b!12807))

(assert (not d!10101))

(assert (not b!12837))

(assert (not b!12797))

(assert (not b!12815))

(assert (not b_lambda!7275))

(assert (not d!10089))

(assert (not b_lambda!7313))

(assert (not b!12799))

(assert (not bs!3417))

(assert (not b_lambda!7307))

(assert (not b!12829))

(assert (not bs!3418))

(assert (not b!12834))

(assert (not b_lambda!7273))

(assert (not b!12811))

(assert (not b_lambda!7303))

(assert (not d!10105))

(assert (not b!12833))

(assert (not b!12812))

(assert (not b!12817))

(assert (not b!12775))

(assert (not b!12787))

(assert (not b!12825))

(assert (not b!12771))

(assert (not b!12781))

(assert (not b!12827))

(assert (not b!12835))

(assert (not b!12779))

(assert (not d!10099))

(assert (not d!10109))

(assert (not b!12805))

(assert (not b!12791))

(assert (not b!12789))

(assert (not b!12790))

(assert (not d!10097))

(assert (not d!10107))

(assert (not b!12810))

(assert (not b_lambda!7301))

(assert (not b!12809))

(assert (not b!12831))

(assert (not b_lambda!7311))

(assert (not b!12821))

(assert (not b!12824))

(assert (not b_lambda!7279))

(assert (not d!10061))

(assert (not b!12819))

(assert (not bs!3416))

(assert (not b!12820))

(assert (not b_lambda!7319))

(assert (not b!12823))

(assert (not b!12802))

(assert (not b!12803))

(assert (not bs!3419))

(assert (not b_lambda!7309))

(assert (not b_lambda!7277))

(assert (not b_lambda!7305))

(assert (not b_lambda!7315))

(assert (not d!10091))

(assert (not d!10073))

(assert (not b!12813))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7083)

(assert (not b_next!4719))

(check-sat)

(pop 1)

