; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1928 () Bool)

(assert start!1928)

(declare-fun b_free!1191 () Bool)

(declare-fun b_next!2957 () Bool)

(assert (=> start!1928 (= b_free!1191 (not b_next!2957))))

(declare-fun tp!1909 () Bool)

(declare-fun b_and!4357 () Bool)

(assert (=> start!1928 (= tp!1909 b_and!4357)))

(declare-fun f!585 () Int)

(declare-fun b_next!2959 () Bool)

(declare-fun lambda!2435 () Int)

(assert (=> start!1928 (= b_next!2957 (or (and start!1928 (= lambda!2435 f!585)) b_next!2959))))

(declare-fun res!3166 () Bool)

(declare-fun e!5712 () Bool)

(assert (=> start!1928 (=> (not res!3166) (not e!5712))))

(assert (=> start!1928 (= res!3166 (= f!585 lambda!2435))))

(assert (=> start!1928 e!5712))

(assert (=> start!1928 tp!1909))

(assert (=> start!1928 true))

(declare-fun b!9609 () Bool)

(declare-datatypes () ((Balance!225 (Balance!226 (extraOpen!153 Int) (extraClose!153 Int)))))

(declare-datatypes () ((Tree!75 (Branch!66 (left!456 Tree!75) (right!459 Tree!75)) (Leaf!148 (value!1317 Balance!225)))))

(declare-fun tree!25 () Tree!75)

(declare-datatypes () ((ProofOps!172 (ProofOps!173 (prop!210 Bool)))))

(declare-fun because!2 (ProofOps!172 Bool) Bool)

(declare-fun fold!51 (Tree!75 Int) Balance!225)

(declare-datatypes () ((List!229 (Nil!227) (Cons!226 (head!444 Balance!225) (tail!456 List!229)))))

(declare-fun foldRight1!82 (List!229 Int) Balance!225)

(declare-fun toList!75 (Tree!75) List!229)

(assert (=> b!9609 (= e!5712 (not (because!2 (ProofOps!173 (= (fold!51 tree!25 f!585) (foldRight1!82 (toList!75 tree!25) f!585))) true)))))

(declare-fun e!5713 () Balance!225)

(assert (=> b!9609 (= (fold!51 tree!25 f!585) e!5713)))

(declare-fun c!3086 () Bool)

(declare-fun lt!1668 () Bool)

(assert (=> b!9609 (= c!3086 (or lt!1668 (not lt!1668)))))

(declare-fun lt!1667 () List!229)

(assert (=> b!9609 (= lt!1667 (toList!75 tree!25))))

(assert (=> b!9609 (= lt!1668 (is-Leaf!148 tree!25))))

(declare-fun b!9611 () Bool)

(declare-fun res!3165 () Balance!225)

(assert (=> b!9611 (= e!5713 res!3165)))

(assert (=> b!9611 true))

(declare-fun b!9610 () Bool)

(assert (=> b!9610 (= e!5713 (foldRight1!82 lt!1667 f!585))))

(assert (= (and start!1928 res!3166) b!9609))

(assert (= (and b!9609 c!3086) b!9610))

(assert (= (and b!9609 (not c!3086)) b!9611))

(declare-fun m!12783 () Bool)

(assert (=> b!9609 m!12783))

(declare-fun m!12785 () Bool)

(assert (=> b!9609 m!12785))

(assert (=> b!9609 m!12785))

(declare-fun m!12787 () Bool)

(assert (=> b!9609 m!12787))

(declare-fun m!12789 () Bool)

(assert (=> b!9609 m!12789))

(declare-fun m!12791 () Bool)

(assert (=> b!9610 m!12791))

(push 1)

(assert (not b!9610))

(assert (not b!9609))

(assert b_and!4357)

(assert (not b_next!2959))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4357)

(assert (not b_next!2959))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7953 () Bool)

(declare-fun c!3089 () Bool)

(assert (=> d!7953 (= c!3089 (and (is-Cons!226 lt!1667) (is-Nil!227 (tail!456 lt!1667))))))

(declare-fun e!5716 () Balance!225)

(assert (=> d!7953 (= (foldRight1!82 lt!1667 f!585) e!5716)))

(declare-fun b!9616 () Bool)

(assert (=> b!9616 (= e!5716 (head!444 lt!1667))))

(declare-fun b!9617 () Bool)

(declare-fun dynLambda!311 (Int Balance!225 Balance!225) Balance!225)

(assert (=> b!9617 (= e!5716 (dynLambda!311 f!585 (head!444 lt!1667) (foldRight1!82 (tail!456 lt!1667) f!585)))))

(assert (= (and d!7953 c!3089) b!9616))

(assert (= (and d!7953 (not c!3089)) b!9617))

(declare-fun b_lambda!5183 () Bool)

(assert (=> (not b_lambda!5183) (not b!9617)))

(declare-fun t!2677 () Bool)

(declare-fun tb!2337 () Bool)

(assert (=> (and start!1928 (= f!585 f!585) t!2677) tb!2337))

(declare-fun result!2377 () Bool)

(assert (=> tb!2337 (= result!2377 true)))

(assert (=> b!9617 t!2677))

(declare-fun b_and!4359 () Bool)

(assert (= b_and!4357 (and (=> t!2677 result!2377) b_and!4359)))

(declare-fun m!12793 () Bool)

(assert (=> b!9617 m!12793))

(assert (=> b!9617 m!12793))

(declare-fun m!12795 () Bool)

(assert (=> b!9617 m!12795))

(assert (=> b!9610 d!7953))

(declare-fun d!7955 () Bool)

(assert (=> d!7955 (= (because!2 (ProofOps!173 (= (fold!51 tree!25 f!585) (foldRight1!82 (toList!75 tree!25) f!585))) true) (prop!210 (ProofOps!173 (= (fold!51 tree!25 f!585) (foldRight1!82 (toList!75 tree!25) f!585)))))))

(assert (=> b!9609 d!7955))

(declare-fun b!9623 () Bool)

(assert (=> b!9623 true))

(declare-fun lambda!2440 () Int)

(declare-fun order!153 () Int)

(declare-fun order!155 () Int)

(declare-fun dynLambda!312 (Int Int) Int)

(declare-fun dynLambda!313 (Int Int) Int)

(assert (=> b!9623 (< (dynLambda!312 order!153 f!585) (dynLambda!313 order!155 lambda!2440))))

(assert (=> b!9623 true))

(declare-fun lambda!2441 () Int)

(assert (=> b!9623 (= (= (right!459 tree!25) (left!456 tree!25)) (= lambda!2441 lambda!2440))))

(assert (=> b!9623 true))

(assert (=> b!9623 (< (dynLambda!312 order!153 f!585) (dynLambda!313 order!155 lambda!2441))))

(assert (=> b!9623 true))

(declare-fun e!5735 () Balance!225)

(declare-datatypes () ((tuple2!90 (tuple2!91 (_1!45 Balance!225) (_2!45 Balance!225)))))

(declare-fun lt!1671 () tuple2!90)

(assert (=> b!9623 (= e!5735 (dynLambda!311 f!585 (_1!45 lt!1671) (_2!45 lt!1671)))))

(declare-fun dynLambda!314 (Int) Balance!225)

(assert (=> b!9623 (= lt!1671 (tuple2!91 (dynLambda!314 lambda!2440) (dynLambda!314 lambda!2441)))))

(declare-fun d!7957 () Bool)

(declare-fun c!3092 () Bool)

(assert (=> d!7957 (= c!3092 (is-Leaf!148 tree!25))))

(assert (=> d!7957 (= (fold!51 tree!25 f!585) e!5735)))

(declare-fun b!9622 () Bool)

(assert (=> b!9622 (= e!5735 (value!1317 tree!25))))

(assert (= (and d!7957 c!3092) b!9622))

(assert (= (and d!7957 (not c!3092)) b!9623))

(declare-fun b_lambda!5185 () Bool)

(assert (=> (not b_lambda!5185) (not b!9623)))

(declare-fun t!2679 () Bool)

(declare-fun tb!2339 () Bool)

(assert (=> (and start!1928 (= f!585 f!585) t!2679) tb!2339))

(declare-fun result!2379 () Bool)

(assert (=> tb!2339 (= result!2379 true)))

(assert (=> b!9623 t!2679))

(declare-fun b_and!4361 () Bool)

(assert (= b_and!4359 (and (=> t!2679 result!2379) b_and!4361)))

(declare-fun b_lambda!5187 () Bool)

(assert (=> (not b_lambda!5187) (not b!9623)))

(declare-fun b_lambda!5189 () Bool)

(assert (=> (not b_lambda!5189) (not b!9623)))

(declare-fun m!12797 () Bool)

(assert (=> b!9623 m!12797))

(declare-fun m!12799 () Bool)

(assert (=> b!9623 m!12799))

(declare-fun m!12801 () Bool)

(assert (=> b!9623 m!12801))

(assert (=> b!9609 d!7957))

(declare-fun d!7959 () Bool)

(declare-fun c!3093 () Bool)

(assert (=> d!7959 (= c!3093 (and (is-Cons!226 (toList!75 tree!25)) (is-Nil!227 (tail!456 (toList!75 tree!25)))))))

(declare-fun e!5736 () Balance!225)

(assert (=> d!7959 (= (foldRight1!82 (toList!75 tree!25) f!585) e!5736)))

(declare-fun b!9628 () Bool)

(assert (=> b!9628 (= e!5736 (head!444 (toList!75 tree!25)))))

(declare-fun b!9629 () Bool)

(assert (=> b!9629 (= e!5736 (dynLambda!311 f!585 (head!444 (toList!75 tree!25)) (foldRight1!82 (tail!456 (toList!75 tree!25)) f!585)))))

(assert (= (and d!7959 c!3093) b!9628))

(assert (= (and d!7959 (not c!3093)) b!9629))

(declare-fun b_lambda!5191 () Bool)

(assert (=> (not b_lambda!5191) (not b!9629)))

(declare-fun t!2681 () Bool)

(declare-fun tb!2341 () Bool)

(assert (=> (and start!1928 (= f!585 f!585) t!2681) tb!2341))

(declare-fun result!2381 () Bool)

(assert (=> tb!2341 (= result!2381 true)))

(assert (=> b!9629 t!2681))

(declare-fun b_and!4363 () Bool)

(assert (= b_and!4361 (and (=> t!2681 result!2381) b_and!4363)))

(declare-fun m!12803 () Bool)

(assert (=> b!9629 m!12803))

(assert (=> b!9629 m!12803))

(declare-fun m!12805 () Bool)

(assert (=> b!9629 m!12805))

(assert (=> b!9609 d!7959))

(declare-fun d!7961 () Bool)

(declare-fun lt!1674 () List!229)

(declare-fun isEmpty!178 (List!229) Bool)

(assert (=> d!7961 (not (isEmpty!178 lt!1674))))

(declare-fun e!5739 () List!229)

(assert (=> d!7961 (= lt!1674 e!5739)))

(declare-fun c!3096 () Bool)

(assert (=> d!7961 (= c!3096 (is-Leaf!148 tree!25))))

(assert (=> d!7961 (= (toList!75 tree!25) lt!1674)))

(declare-fun b!9634 () Bool)

(assert (=> b!9634 (= e!5739 (Cons!226 (value!1317 tree!25) Nil!227))))

(declare-fun b!9635 () Bool)

(declare-fun append!99 (List!229 List!229) List!229)

(assert (=> b!9635 (= e!5739 (append!99 (toList!75 (left!456 tree!25)) (toList!75 (right!459 tree!25))))))

(assert (= (and d!7961 c!3096) b!9634))

(assert (= (and d!7961 (not c!3096)) b!9635))

(declare-fun m!12807 () Bool)

(assert (=> d!7961 m!12807))

(declare-fun m!12809 () Bool)

(assert (=> b!9635 m!12809))

(declare-fun m!12811 () Bool)

(assert (=> b!9635 m!12811))

(assert (=> b!9635 m!12809))

(assert (=> b!9635 m!12811))

(declare-fun m!12813 () Bool)

(assert (=> b!9635 m!12813))

(assert (=> b!9609 d!7961))

(declare-fun b_lambda!5193 () Bool)

(assert (= b_lambda!5185 (or (and start!1928 (= lambda!2435 f!585)) (and start!1928 b_free!1191) b_lambda!5193)))

(declare-fun bs!2619 () Bool)

(declare-fun d!7963 () Bool)

(assert (= bs!2619 (and d!7963 start!1928)))

(declare-fun ++!3 (Balance!225 Balance!225) Balance!225)

(assert (=> bs!2619 (= (dynLambda!311 lambda!2435 (_1!45 lt!1671) (_2!45 lt!1671)) (++!3 (_1!45 lt!1671) (_2!45 lt!1671)))))

(declare-fun m!12815 () Bool)

(assert (=> bs!2619 m!12815))

(assert (=> (and start!1928 (= lambda!2435 f!585) b!9623) d!7963))

(declare-fun b_lambda!5195 () Bool)

(assert (= b_lambda!5187 (or b!9623 b_lambda!5195)))

(declare-fun bs!2620 () Bool)

(declare-fun d!7965 () Bool)

(assert (= bs!2620 (and d!7965 b!9623)))

(assert (=> bs!2620 (= (dynLambda!314 lambda!2440) (fold!51 (left!456 tree!25) f!585))))

(declare-fun m!12817 () Bool)

(assert (=> bs!2620 m!12817))

(assert (=> b!9623 d!7965))

(declare-fun b_lambda!5197 () Bool)

(assert (= b_lambda!5191 (or (and start!1928 (= lambda!2435 f!585)) (and start!1928 b_free!1191) b_lambda!5197)))

(declare-fun bs!2621 () Bool)

(declare-fun d!7967 () Bool)

(assert (= bs!2621 (and d!7967 start!1928)))

(assert (=> bs!2621 (= (dynLambda!311 lambda!2435 (head!444 (toList!75 tree!25)) (foldRight1!82 (tail!456 (toList!75 tree!25)) f!585)) (++!3 (head!444 (toList!75 tree!25)) (foldRight1!82 (tail!456 (toList!75 tree!25)) f!585)))))

(assert (=> bs!2621 m!12803))

(declare-fun m!12819 () Bool)

(assert (=> bs!2621 m!12819))

(assert (=> (and start!1928 (= lambda!2435 f!585) b!9629) d!7967))

(declare-fun b_lambda!5199 () Bool)

(assert (= b_lambda!5183 (or (and start!1928 (= lambda!2435 f!585)) (and start!1928 b_free!1191) b_lambda!5199)))

(declare-fun bs!2622 () Bool)

(declare-fun d!7969 () Bool)

(assert (= bs!2622 (and d!7969 start!1928)))

(assert (=> bs!2622 (= (dynLambda!311 lambda!2435 (head!444 lt!1667) (foldRight1!82 (tail!456 lt!1667) f!585)) (++!3 (head!444 lt!1667) (foldRight1!82 (tail!456 lt!1667) f!585)))))

(assert (=> bs!2622 m!12793))

(declare-fun m!12821 () Bool)

(assert (=> bs!2622 m!12821))

(assert (=> (and start!1928 (= lambda!2435 f!585) b!9617) d!7969))

(declare-fun b_lambda!5201 () Bool)

(assert (= b_lambda!5189 (or b!9623 b_lambda!5201)))

(declare-fun bs!2623 () Bool)

(declare-fun d!7971 () Bool)

(assert (= bs!2623 (and d!7971 b!9623)))

(assert (=> bs!2623 (= (dynLambda!314 lambda!2441) (fold!51 (right!459 tree!25) f!585))))

(declare-fun m!12823 () Bool)

(assert (=> bs!2623 m!12823))

(assert (=> b!9623 d!7971))

(push 1)

(assert (not b_next!2959))

(assert (not b_lambda!5199))

(assert b_and!4363)

(assert (not bs!2619))

(assert (not d!7961))

(assert (not b!9635))

(assert (not bs!2623))

(assert (not bs!2622))

(assert (not bs!2621))

(assert (not bs!2620))

(assert (not b!9629))

(assert (not b_lambda!5193))

(assert (not b!9617))

(assert (not b_lambda!5201))

(assert (not b_lambda!5197))

(assert (not b_lambda!5195))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4363)

(assert (not b_next!2959))

(check-sat)

(pop 1)

