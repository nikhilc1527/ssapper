; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1266 () Bool)

(assert start!1266)

(declare-fun b_free!381 () Bool)

(declare-fun b_next!813 () Bool)

(assert (=> start!1266 (= b_free!381 (not b_next!813))))

(declare-fun tp!701 () Bool)

(declare-fun b_and!1835 () Bool)

(assert (=> start!1266 (= tp!701 b_and!1835)))

(declare-fun b!7037 () Bool)

(declare-fun b_free!383 () Bool)

(declare-fun b_next!815 () Bool)

(assert (=> b!7037 (= b_free!383 (not b_next!815))))

(declare-fun tp!700 () Bool)

(declare-fun b_and!1837 () Bool)

(assert (=> b!7037 (= tp!700 b_and!1837)))

(declare-fun b_free!385 () Bool)

(declare-fun b_next!817 () Bool)

(assert (=> b!7037 (= b_free!385 (not b_next!817))))

(declare-fun tp!702 () Bool)

(declare-fun b_and!1839 () Bool)

(assert (=> b!7037 (= tp!702 b_and!1839)))

(declare-fun b_free!387 () Bool)

(declare-fun b_next!819 () Bool)

(assert (=> b!7037 (= b_free!387 (not b_next!819))))

(declare-fun tp!703 () Bool)

(declare-fun b_and!1841 () Bool)

(assert (=> b!7037 (= tp!703 b_and!1841)))

(declare-fun f!698 () Int)

(declare-fun lambda!1136 () Int)

(declare-fun b!7040 () Bool)

(declare-fun b_next!821 () Bool)

(assert (=> start!1266 (= b_next!813 (or (and b!7040 (= lambda!1136 f!698)) b_next!821))))

(declare-fun b!7036 () Bool)

(assert (=> b!7036 true))

(declare-fun b_next!823 () Bool)

(declare-datatypes () ((Balance!79 (Balance!80 (extraOpen!80 Int) (extraClose!80 Int)))))

(declare-datatypes () ((EqEvidence!58 (EqEvidence!59 (x!3818 Int) (y!453 Int) (evidence!96 Int)))))

(declare-fun thiss!1147 () EqEvidence!58)

(declare-fun lambda!1137 () Int)

(assert (=> b!7037 (= b_next!815 (or (and b!7036 (= lambda!1137 (x!3818 thiss!1147))) b_next!823))))

(declare-fun b_next!825 () Bool)

(assert (=> b!7037 (= b_next!817 (or (and b!7036 (= lambda!1137 (y!453 thiss!1147))) b_next!825))))

(declare-fun m!9865 () Bool)

(assert (=> b!7036 m!9865))

(declare-fun lambda!1138 () Int)

(declare-fun dynLambda!123 (Int) Bool)

(assert (=> (and b!7037 b!7036 (= (dynLambda!123 lambda!1138) (dynLambda!123 (evidence!96 thiss!1147)))) (= lambda!1138 (evidence!96 thiss!1147))))

(declare-fun b_next!827 () Bool)

(assert (=> b!7037 (= b_next!819 (or (and b!7036 (= lambda!1138 (evidence!96 thiss!1147))) b_next!827))))

(declare-fun b!7033 () Bool)

(declare-fun res!2008 () Bool)

(declare-fun e!4104 () Bool)

(assert (=> b!7033 (=> (not res!2008) (not e!4104))))

(declare-datatypes () ((Parenthesis!34 (CloseParenthesis!33) (OpenParenthesis!33))))

(declare-datatypes () ((List!151 (Nil!149) (Cons!148 (head!366 Parenthesis!34) (tail!378 List!151)))))

(declare-fun xs!372 () List!151)

(declare-datatypes () ((List!152 (Nil!150) (Cons!149 (head!367 Balance!79) (tail!379 List!152)))))

(declare-fun thiss!1160 () List!152)

(declare-fun lambda!1135 () Int)

(declare-fun append!56 (List!152 List!152) List!152)

(declare-fun map!144 (List!151 Int) List!152)

(assert (=> b!7033 (= res!2008 (= thiss!1160 (append!56 (map!144 (tail!378 xs!372) lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150))))))

(declare-fun b!7034 () Bool)

(declare-fun res!2004 () Bool)

(assert (=> b!7034 (=> (not res!2004) (not e!4104))))

(assert (=> b!7034 (= res!2004 (or (not (is-Cons!148 xs!372)) (not (is-Nil!149 (tail!378 xs!372)))))))

(declare-fun b!7035 () Bool)

(declare-fun res!2005 () Bool)

(assert (=> b!7035 (=> (not res!2005) (not e!4104))))

(declare-fun thiss!1159 () Balance!79)

(declare-fun fromParenthesis!0 (Parenthesis!34) Balance!79)

(assert (=> b!7035 (= res!2005 (= thiss!1159 (fromParenthesis!0 (head!366 xs!372))))))

(declare-fun res!2007 () Bool)

(assert (=> b!7036 (=> (not res!2007) (not e!4104))))

(assert (=> b!7036 (= res!2007 (= thiss!1147 (EqEvidence!59 lambda!1137 lambda!1137 lambda!1138)))))

(declare-fun e!4105 () Bool)

(assert (=> b!7037 (= e!4105 (and tp!700 tp!702 tp!703))))

(declare-fun b!7038 () Bool)

(declare-fun res!2009 () Bool)

(assert (=> b!7038 (=> (not res!2009) (not e!4104))))

(assert (=> b!7038 (= res!2009 (= f!698 lambda!1136))))

(declare-fun res!2003 () Bool)

(assert (=> start!1266 (=> (not res!2003) (not e!4104))))

(declare-fun isEmpty!132 (List!151) Bool)

(assert (=> start!1266 (= res!2003 (not (isEmpty!132 xs!372)))))

(assert (=> start!1266 e!4104))

(assert (=> start!1266 true))

(assert (=> start!1266 tp!701))

(declare-fun inv!248 (EqEvidence!58) Bool)

(assert (=> start!1266 (and (inv!248 thiss!1147) e!4105)))

(declare-fun b!7039 () Bool)

(declare-fun isEmpty!133 (List!152) Bool)

(assert (=> b!7039 (= e!4104 (isEmpty!133 thiss!1160))))

(declare-fun res!2006 () Bool)

(assert (=> b!7040 (=> (not res!2006) (not e!4104))))

(declare-datatypes () ((ProofOps!54 (ProofOps!55 (prop!137 Bool)))))

(declare-fun thiss!1106 () ProofOps!54)

(declare-fun foldRight1!23 (List!152 Int) Balance!79)

(assert (=> b!7040 (= res!2006 (= thiss!1106 (ProofOps!55 (= (foldRight1!23 (append!56 (map!144 xs!372 lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150)) lambda!1136) (foldRight1!23 (map!144 xs!372 lambda!1135) lambda!1136)))))))

(assert (= (and start!1266 res!2003) b!7040))

(assert (= (and b!7040 res!2006) b!7034))

(assert (= (and b!7034 res!2004) b!7036))

(assert (= (and b!7036 res!2007) b!7035))

(assert (= (and b!7035 res!2005) b!7033))

(assert (= (and b!7033 res!2008) b!7038))

(assert (= (and b!7038 res!2009) b!7039))

(assert (= start!1266 b!7037))

(declare-fun m!9867 () Bool)

(assert (=> start!1266 m!9867))

(declare-fun m!9869 () Bool)

(assert (=> start!1266 m!9869))

(declare-fun m!9871 () Bool)

(assert (=> b!7039 m!9871))

(declare-fun m!9873 () Bool)

(assert (=> b!7035 m!9873))

(declare-fun m!9875 () Bool)

(assert (=> b!7040 m!9875))

(declare-fun m!9877 () Bool)

(assert (=> b!7040 m!9877))

(declare-fun m!9879 () Bool)

(assert (=> b!7040 m!9879))

(assert (=> b!7040 m!9875))

(assert (=> b!7040 m!9875))

(assert (=> b!7040 m!9877))

(assert (=> b!7040 m!9875))

(declare-fun m!9881 () Bool)

(assert (=> b!7040 m!9881))

(declare-fun m!9883 () Bool)

(assert (=> b!7033 m!9883))

(assert (=> b!7033 m!9883))

(declare-fun m!9885 () Bool)

(assert (=> b!7033 m!9885))

(push 1)

(assert (not b!7036))

(assert b_and!1839)

(assert (not b!7039))

(assert (not b_next!827))

(assert b_and!1835)

(assert b_and!1837)

(assert (not b!7033))

(assert (not b_next!825))

(assert (not b_next!823))

(assert (not b!7040))

(assert b_and!1841)

(assert (not start!1266))

(assert (not b!7035))

(assert (not b_next!821))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1839)

(assert (not b_next!827))

(assert b_and!1835)

(assert b_and!1837)

(assert (not b_next!825))

(assert (not b_next!823))

(assert b_and!1841)

(assert (not b_next!821))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5531 () Bool)

(declare-fun c!2544 () Bool)

(assert (=> d!5531 (= c!2544 (is-Nil!150 (map!144 (tail!378 xs!372) lambda!1135)))))

(declare-fun e!4108 () List!152)

(assert (=> d!5531 (= (append!56 (map!144 (tail!378 xs!372) lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150)) e!4108)))

(declare-fun b!7047 () Bool)

(assert (=> b!7047 (= e!4108 (Cons!149 (Balance!80 0 0) Nil!150))))

(declare-fun b!7048 () Bool)

(assert (=> b!7048 (= e!4108 (Cons!149 (head!367 (map!144 (tail!378 xs!372) lambda!1135)) (append!56 (tail!379 (map!144 (tail!378 xs!372) lambda!1135)) (Cons!149 (Balance!80 0 0) Nil!150))))))

(assert (= (and d!5531 c!2544) b!7047))

(assert (= (and d!5531 (not c!2544)) b!7048))

(declare-fun m!9887 () Bool)

(assert (=> b!7048 m!9887))

(assert (=> b!7033 d!5531))

(declare-fun d!5533 () Bool)

(declare-fun c!2547 () Bool)

(assert (=> d!5533 (= c!2547 (is-Nil!149 (tail!378 xs!372)))))

(declare-fun e!4111 () List!152)

(assert (=> d!5533 (= (map!144 (tail!378 xs!372) lambda!1135) e!4111)))

(declare-fun b!7053 () Bool)

(assert (=> b!7053 (= e!4111 Nil!150)))

(declare-fun b!7054 () Bool)

(declare-fun dynLambda!124 (Int Parenthesis!34) Balance!79)

(assert (=> b!7054 (= e!4111 (Cons!149 (dynLambda!124 lambda!1135 (head!366 (tail!378 xs!372))) (map!144 (tail!378 (tail!378 xs!372)) lambda!1135)))))

(assert (= (and d!5533 c!2547) b!7053))

(assert (= (and d!5533 (not c!2547)) b!7054))

(declare-fun b_lambda!3343 () Bool)

(assert (=> (not b_lambda!3343) (not b!7054)))

(declare-fun m!9889 () Bool)

(assert (=> b!7054 m!9889))

(declare-fun m!9891 () Bool)

(assert (=> b!7054 m!9891))

(assert (=> b!7033 d!5533))

(declare-fun d!5535 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!5535 (= trivial!1 true)))

(assert (=> b!7036 d!5535))

(declare-fun d!5537 () Bool)

(declare-fun c!2550 () Bool)

(assert (=> d!5537 (= c!2550 (and (is-Cons!149 (map!144 xs!372 lambda!1135)) (is-Nil!150 (tail!379 (map!144 xs!372 lambda!1135)))))))

(declare-fun e!4114 () Balance!79)

(assert (=> d!5537 (= (foldRight1!23 (map!144 xs!372 lambda!1135) lambda!1136) e!4114)))

(declare-fun b!7059 () Bool)

(assert (=> b!7059 (= e!4114 (head!367 (map!144 xs!372 lambda!1135)))))

(declare-fun b!7060 () Bool)

(declare-fun dynLambda!125 (Int Balance!79 Balance!79) Balance!79)

(assert (=> b!7060 (= e!4114 (dynLambda!125 lambda!1136 (head!367 (map!144 xs!372 lambda!1135)) (foldRight1!23 (tail!379 (map!144 xs!372 lambda!1135)) lambda!1136)))))

(assert (= (and d!5537 c!2550) b!7059))

(assert (= (and d!5537 (not c!2550)) b!7060))

(declare-fun b_lambda!3345 () Bool)

(assert (=> (not b_lambda!3345) (not b!7060)))

(declare-fun m!9893 () Bool)

(assert (=> b!7060 m!9893))

(assert (=> b!7060 m!9893))

(declare-fun m!9895 () Bool)

(assert (=> b!7060 m!9895))

(assert (=> b!7040 d!5537))

(declare-fun d!5539 () Bool)

(declare-fun c!2551 () Bool)

(assert (=> d!5539 (= c!2551 (is-Nil!150 (map!144 xs!372 lambda!1135)))))

(declare-fun e!4115 () List!152)

(assert (=> d!5539 (= (append!56 (map!144 xs!372 lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150)) e!4115)))

(declare-fun b!7061 () Bool)

(assert (=> b!7061 (= e!4115 (Cons!149 (Balance!80 0 0) Nil!150))))

(declare-fun b!7062 () Bool)

(assert (=> b!7062 (= e!4115 (Cons!149 (head!367 (map!144 xs!372 lambda!1135)) (append!56 (tail!379 (map!144 xs!372 lambda!1135)) (Cons!149 (Balance!80 0 0) Nil!150))))))

(assert (= (and d!5539 c!2551) b!7061))

(assert (= (and d!5539 (not c!2551)) b!7062))

(declare-fun m!9897 () Bool)

(assert (=> b!7062 m!9897))

(assert (=> b!7040 d!5539))

(declare-fun d!5541 () Bool)

(declare-fun c!2552 () Bool)

(assert (=> d!5541 (= c!2552 (is-Nil!149 xs!372))))

(declare-fun e!4116 () List!152)

(assert (=> d!5541 (= (map!144 xs!372 lambda!1135) e!4116)))

(declare-fun b!7063 () Bool)

(assert (=> b!7063 (= e!4116 Nil!150)))

(declare-fun b!7064 () Bool)

(assert (=> b!7064 (= e!4116 (Cons!149 (dynLambda!124 lambda!1135 (head!366 xs!372)) (map!144 (tail!378 xs!372) lambda!1135)))))

(assert (= (and d!5541 c!2552) b!7063))

(assert (= (and d!5541 (not c!2552)) b!7064))

(declare-fun b_lambda!3347 () Bool)

(assert (=> (not b_lambda!3347) (not b!7064)))

(declare-fun m!9899 () Bool)

(assert (=> b!7064 m!9899))

(assert (=> b!7064 m!9883))

(assert (=> b!7040 d!5541))

(declare-fun d!5543 () Bool)

(declare-fun c!2553 () Bool)

(assert (=> d!5543 (= c!2553 (and (is-Cons!149 (append!56 (map!144 xs!372 lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150))) (is-Nil!150 (tail!379 (append!56 (map!144 xs!372 lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150))))))))

(declare-fun e!4117 () Balance!79)

(assert (=> d!5543 (= (foldRight1!23 (append!56 (map!144 xs!372 lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150)) lambda!1136) e!4117)))

(declare-fun b!7065 () Bool)

(assert (=> b!7065 (= e!4117 (head!367 (append!56 (map!144 xs!372 lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150))))))

(declare-fun b!7066 () Bool)

(assert (=> b!7066 (= e!4117 (dynLambda!125 lambda!1136 (head!367 (append!56 (map!144 xs!372 lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150))) (foldRight1!23 (tail!379 (append!56 (map!144 xs!372 lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150))) lambda!1136)))))

(assert (= (and d!5543 c!2553) b!7065))

(assert (= (and d!5543 (not c!2553)) b!7066))

(declare-fun b_lambda!3349 () Bool)

(assert (=> (not b_lambda!3349) (not b!7066)))

(declare-fun m!9901 () Bool)

(assert (=> b!7066 m!9901))

(assert (=> b!7066 m!9901))

(declare-fun m!9903 () Bool)

(assert (=> b!7066 m!9903))

(assert (=> b!7040 d!5543))

(declare-fun d!5545 () Bool)

(assert (=> d!5545 (= (isEmpty!132 xs!372) (is-Nil!149 xs!372))))

(assert (=> start!1266 d!5545))

(declare-fun d!5547 () Bool)

(declare-fun res!2012 () Bool)

(declare-fun e!4120 () Bool)

(assert (=> d!5547 (=> (not res!2012) (not e!4120))))

(declare-fun dynLambda!126 (Int) Balance!79)

(assert (=> d!5547 (= res!2012 (= (dynLambda!126 (x!3818 thiss!1147)) (dynLambda!126 (y!453 thiss!1147))))))

(assert (=> d!5547 (= (inv!248 thiss!1147) e!4120)))

(declare-fun b!7069 () Bool)

(assert (=> b!7069 (= e!4120 (dynLambda!123 (evidence!96 thiss!1147)))))

(assert (= (and d!5547 res!2012) b!7069))

(declare-fun b_lambda!3351 () Bool)

(assert (=> (not b_lambda!3351) (not d!5547)))

(declare-fun t!1337 () Bool)

(declare-fun tb!997 () Bool)

(assert (=> (and b!7037 (= (x!3818 thiss!1147) (x!3818 thiss!1147)) t!1337) tb!997))

(declare-fun result!1037 () Bool)

(assert (=> tb!997 (= result!1037 true)))

(assert (=> d!5547 t!1337))

(declare-fun b_and!1843 () Bool)

(assert (= b_and!1837 (and (=> t!1337 result!1037) b_and!1843)))

(declare-fun t!1339 () Bool)

(declare-fun tb!999 () Bool)

(assert (=> (and b!7037 (= (y!453 thiss!1147) (x!3818 thiss!1147)) t!1339) tb!999))

(declare-fun result!1039 () Bool)

(assert (=> tb!999 (= result!1039 true)))

(assert (=> d!5547 t!1339))

(declare-fun b_and!1845 () Bool)

(assert (= b_and!1839 (and (=> t!1339 result!1039) b_and!1845)))

(declare-fun b_lambda!3353 () Bool)

(assert (=> (not b_lambda!3353) (not d!5547)))

(declare-fun t!1341 () Bool)

(declare-fun tb!1001 () Bool)

(assert (=> (and b!7037 (= (x!3818 thiss!1147) (y!453 thiss!1147)) t!1341) tb!1001))

(declare-fun result!1041 () Bool)

(assert (=> tb!1001 (= result!1041 true)))

(assert (=> d!5547 t!1341))

(declare-fun b_and!1847 () Bool)

(assert (= b_and!1843 (and (=> t!1341 result!1041) b_and!1847)))

(declare-fun t!1343 () Bool)

(declare-fun tb!1003 () Bool)

(assert (=> (and b!7037 (= (y!453 thiss!1147) (y!453 thiss!1147)) t!1343) tb!1003))

(declare-fun result!1043 () Bool)

(assert (=> tb!1003 (= result!1043 true)))

(assert (=> d!5547 t!1343))

(declare-fun b_and!1849 () Bool)

(assert (= b_and!1845 (and (=> t!1343 result!1043) b_and!1849)))

(declare-fun b_lambda!3355 () Bool)

(assert (=> (not b_lambda!3355) (not b!7069)))

(declare-fun t!1345 () Bool)

(declare-fun tb!1005 () Bool)

(assert (=> (and b!7037 (= (evidence!96 thiss!1147) (evidence!96 thiss!1147)) t!1345) tb!1005))

(declare-fun result!1045 () Bool)

(assert (=> tb!1005 (= result!1045 true)))

(assert (=> b!7069 t!1345))

(declare-fun b_and!1851 () Bool)

(assert (= b_and!1841 (and (=> t!1345 result!1045) b_and!1851)))

(declare-fun m!9905 () Bool)

(assert (=> d!5547 m!9905))

(declare-fun m!9907 () Bool)

(assert (=> d!5547 m!9907))

(declare-fun m!9909 () Bool)

(assert (=> b!7069 m!9909))

(assert (=> start!1266 d!5547))

(declare-fun d!5549 () Bool)

(assert (=> d!5549 (= (fromParenthesis!0 (head!366 xs!372)) (ite (is-OpenParenthesis!33 (head!366 xs!372)) (Balance!80 1 0) (Balance!80 0 1)))))

(assert (=> b!7035 d!5549))

(declare-fun d!5551 () Bool)

(assert (=> d!5551 (= (isEmpty!133 thiss!1160) (is-Nil!150 thiss!1160))))

(assert (=> b!7039 d!5551))

(declare-fun b_lambda!3357 () Bool)

(assert (= b_lambda!3343 (or b!7040 b_lambda!3357)))

(declare-fun bs!1584 () Bool)

(declare-fun d!5553 () Bool)

(assert (= bs!1584 (and d!5553 b!7040)))

(assert (=> bs!1584 (= (dynLambda!124 lambda!1135 (head!366 (tail!378 xs!372))) (fromParenthesis!0 (head!366 (tail!378 xs!372))))))

(declare-fun m!9911 () Bool)

(assert (=> bs!1584 m!9911))

(assert (=> b!7054 d!5553))

(declare-fun b_lambda!3359 () Bool)

(assert (= b_lambda!3347 (or b!7040 b_lambda!3359)))

(declare-fun bs!1585 () Bool)

(declare-fun d!5555 () Bool)

(assert (= bs!1585 (and d!5555 b!7040)))

(assert (=> bs!1585 (= (dynLambda!124 lambda!1135 (head!366 xs!372)) (fromParenthesis!0 (head!366 xs!372)))))

(assert (=> bs!1585 m!9873))

(assert (=> b!7064 d!5555))

(declare-fun b_lambda!3361 () Bool)

(assert (= b_lambda!3353 (or (and b!7036 (= lambda!1137 (y!453 thiss!1147))) (and b!7037 b_free!383 (= (x!3818 thiss!1147) (y!453 thiss!1147))) (and b!7037 b_free!385) b_lambda!3361)))

(declare-fun bs!1586 () Bool)

(declare-fun d!5557 () Bool)

(assert (= bs!1586 (and d!5557 b!7036)))

(assert (=> bs!1586 (= (dynLambda!126 lambda!1137) (foldRight1!23 (append!56 (map!144 xs!372 lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150)) lambda!1136))))

(assert (=> bs!1586 m!9875))

(assert (=> bs!1586 m!9875))

(assert (=> bs!1586 m!9877))

(assert (=> bs!1586 m!9877))

(assert (=> bs!1586 m!9879))

(assert (=> (and b!7036 (= lambda!1137 (y!453 thiss!1147)) d!5547) d!5557))

(declare-fun b_lambda!3363 () Bool)

(assert (= b_lambda!3349 (or b!7040 b_lambda!3363)))

(declare-fun bs!1587 () Bool)

(declare-fun d!5559 () Bool)

(assert (= bs!1587 (and d!5559 b!7040)))

(declare-fun ++!3 (Balance!79 Balance!79) Balance!79)

(assert (=> bs!1587 (= (dynLambda!125 lambda!1136 (head!367 (append!56 (map!144 xs!372 lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150))) (foldRight1!23 (tail!379 (append!56 (map!144 xs!372 lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150))) lambda!1136)) (++!3 (head!367 (append!56 (map!144 xs!372 lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150))) (foldRight1!23 (tail!379 (append!56 (map!144 xs!372 lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150))) lambda!1136)))))

(assert (=> bs!1587 m!9901))

(declare-fun m!9913 () Bool)

(assert (=> bs!1587 m!9913))

(assert (=> b!7066 d!5559))

(declare-fun b_lambda!3365 () Bool)

(assert (= b_lambda!3345 (or b!7040 b_lambda!3365)))

(declare-fun bs!1588 () Bool)

(declare-fun d!5561 () Bool)

(assert (= bs!1588 (and d!5561 b!7040)))

(assert (=> bs!1588 (= (dynLambda!125 lambda!1136 (head!367 (map!144 xs!372 lambda!1135)) (foldRight1!23 (tail!379 (map!144 xs!372 lambda!1135)) lambda!1136)) (++!3 (head!367 (map!144 xs!372 lambda!1135)) (foldRight1!23 (tail!379 (map!144 xs!372 lambda!1135)) lambda!1136)))))

(assert (=> bs!1588 m!9893))

(declare-fun m!9915 () Bool)

(assert (=> bs!1588 m!9915))

(assert (=> b!7060 d!5561))

(declare-fun b_lambda!3367 () Bool)

(assert (= b_lambda!3351 (or (and b!7036 (= lambda!1137 (x!3818 thiss!1147))) (and b!7037 b_free!383) (and b!7037 b_free!385 (= (y!453 thiss!1147) (x!3818 thiss!1147))) b_lambda!3367)))

(declare-fun bs!1589 () Bool)

(declare-fun d!5563 () Bool)

(assert (= bs!1589 (and d!5563 b!7036)))

(assert (=> bs!1589 (= (dynLambda!126 lambda!1137) (foldRight1!23 (append!56 (map!144 xs!372 lambda!1135) (Cons!149 (Balance!80 0 0) Nil!150)) lambda!1136))))

(assert (=> bs!1589 m!9875))

(assert (=> bs!1589 m!9875))

(assert (=> bs!1589 m!9877))

(assert (=> bs!1589 m!9877))

(assert (=> bs!1589 m!9879))

(assert (=> (and b!7036 (= lambda!1137 (x!3818 thiss!1147)) d!5547) d!5563))

(declare-fun b_lambda!3369 () Bool)

(assert (= b_lambda!3355 (or (and b!7036 (= lambda!1138 (evidence!96 thiss!1147))) (and b!7037 b_free!387) b_lambda!3369)))

(declare-fun bs!1590 () Bool)

(declare-fun d!5565 () Bool)

(assert (= bs!1590 (and d!5565 b!7036)))

(assert (=> bs!1590 (= (dynLambda!123 lambda!1138) trivial!1)))

(assert (=> (and b!7036 (= lambda!1138 (evidence!96 thiss!1147)) b!7069) d!5565))

(push 1)

(assert (not b_lambda!3369))

(assert (not b!7060))

(assert (not bs!1585))

(assert (not b_lambda!3359))

(assert (not b_lambda!3357))

(assert (not b!7062))

(assert (not b_next!827))

(assert (not bs!1584))

(assert (not b_lambda!3361))

(assert b_and!1835)

(assert (not bs!1589))

(assert b_and!1851)

(assert (not b!7054))

(assert (not b!7064))

(assert (not b!7048))

(assert (not bs!1588))

(assert b_and!1847)

(assert (not b_next!825))

(assert b_and!1849)

(assert (not b_next!823))

(assert (not b!7066))

(assert (not b_lambda!3363))

(assert (not bs!1586))

(assert (not b_lambda!3365))

(assert (not bs!1587))

(assert (not b_lambda!3367))

(assert (not b_next!821))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!827))

(assert b_and!1835)

(assert b_and!1851)

(assert b_and!1847)

(assert (not b_next!825))

(assert b_and!1849)

(assert (not b_next!823))

(assert (not b_next!821))

(check-sat)

(pop 1)

