; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14834 () Bool)

(assert start!14834)

(declare-datatypes () ((P!60 (Charlie!60) (Alice!60) (Bob!60))))

(declare-fun lt!21599 () P!60)

(declare-datatypes () ((List!872 (Cons!810 (h!4948 P!60) (t!53167 List!872)) (Nil!812))))

(declare-fun lt!21597 () List!872)

(assert (=> start!14834 (= lt!21599 (h!4948 lt!21597))))

(declare-fun lt!21598 () P!60)

(declare-fun lt!21596 () P!60)

(assert (=> start!14834 (= lt!21598 lt!21596)))

(assert (=> start!14834 (= lt!21597 (Cons!810 Charlie!60 Nil!812))))

(assert (=> start!14834 (= lt!21596 Alice!60)))

(declare-datatypes () ((tuple2!466 (tuple2!467 (_1!272 P!60) (_2!272 P!60)))))

(declare-datatypes () ((List!873 (Cons!811 (h!4949 tuple2!466) (t!53168 List!873)) (Nil!813))))

(declare-datatypes () ((List!874 (Cons!812 (h!4950 List!873) (t!53169 List!874)) (Nil!814))))

(declare-fun size!984 (List!874) Int)

(declare-fun size!985 (List!872) Int)

(assert (=> start!14834 (not (= (size!984 (Cons!812 (Cons!811 (tuple2!467 lt!21598 Alice!60) (Cons!811 (tuple2!467 lt!21598 Charlie!60) Nil!813)) (Cons!812 (Cons!811 (tuple2!467 lt!21599 Alice!60) (Cons!811 (tuple2!467 lt!21599 Charlie!60) Nil!813)) Nil!814))) (size!985 (Cons!810 lt!21596 lt!21597))))))

(declare-fun bs!43040 () Bool)

(assert (= bs!43040 start!14834))

(declare-fun m!89787 () Bool)

(assert (=> bs!43040 m!89787))

(declare-fun m!89789 () Bool)

(assert (=> bs!43040 m!89789))

(push 1)

(assert (not start!14834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61484 () Bool)

(declare-fun lt!21602 () Int)

(assert (=> d!61484 (>= lt!21602 0)))

(declare-fun e!51600 () Int)

(assert (=> d!61484 (= lt!21602 e!51600)))

(declare-fun c!23192 () Bool)

(assert (=> d!61484 (= c!23192 (is-Nil!814 (Cons!812 (Cons!811 (tuple2!467 lt!21598 Alice!60) (Cons!811 (tuple2!467 lt!21598 Charlie!60) Nil!813)) (Cons!812 (Cons!811 (tuple2!467 lt!21599 Alice!60) (Cons!811 (tuple2!467 lt!21599 Charlie!60) Nil!813)) Nil!814))))))

(assert (=> d!61484 (= (size!984 (Cons!812 (Cons!811 (tuple2!467 lt!21598 Alice!60) (Cons!811 (tuple2!467 lt!21598 Charlie!60) Nil!813)) (Cons!812 (Cons!811 (tuple2!467 lt!21599 Alice!60) (Cons!811 (tuple2!467 lt!21599 Charlie!60) Nil!813)) Nil!814))) lt!21602)))

(declare-fun b!94269 () Bool)

(assert (=> b!94269 (= e!51600 0)))

(declare-fun b!94270 () Bool)

(assert (=> b!94270 (= e!51600 (+ 1 (size!984 (t!53169 (Cons!812 (Cons!811 (tuple2!467 lt!21598 Alice!60) (Cons!811 (tuple2!467 lt!21598 Charlie!60) Nil!813)) (Cons!812 (Cons!811 (tuple2!467 lt!21599 Alice!60) (Cons!811 (tuple2!467 lt!21599 Charlie!60) Nil!813)) Nil!814))))))))

(assert (= (and d!61484 c!23192) b!94269))

(assert (= (and d!61484 (not c!23192)) b!94270))

(declare-fun m!89791 () Bool)

(assert (=> b!94270 m!89791))

(assert (=> start!14834 d!61484))

(declare-fun d!61486 () Bool)

(declare-fun lt!21605 () Int)

(assert (=> d!61486 (>= lt!21605 0)))

(declare-fun e!51603 () Int)

(assert (=> d!61486 (= lt!21605 e!51603)))

(declare-fun c!23195 () Bool)

(assert (=> d!61486 (= c!23195 (is-Nil!812 (Cons!810 lt!21596 lt!21597)))))

(assert (=> d!61486 (= (size!985 (Cons!810 lt!21596 lt!21597)) lt!21605)))

(declare-fun b!94275 () Bool)

(assert (=> b!94275 (= e!51603 0)))

(declare-fun b!94276 () Bool)

(assert (=> b!94276 (= e!51603 (+ 1 (size!985 (t!53167 (Cons!810 lt!21596 lt!21597)))))))

(assert (= (and d!61486 c!23195) b!94275))

(assert (= (and d!61486 (not c!23195)) b!94276))

(declare-fun m!89793 () Bool)

(assert (=> b!94276 m!89793))

(assert (=> start!14834 d!61486))

(push 1)

(assert (not b!94276))

(assert (not b!94270))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61488 () Bool)

(declare-fun lt!21606 () Int)

(assert (=> d!61488 (>= lt!21606 0)))

(declare-fun e!51604 () Int)

(assert (=> d!61488 (= lt!21606 e!51604)))

(declare-fun c!23196 () Bool)

(assert (=> d!61488 (= c!23196 (is-Nil!812 (t!53167 (Cons!810 lt!21596 lt!21597))))))

(assert (=> d!61488 (= (size!985 (t!53167 (Cons!810 lt!21596 lt!21597))) lt!21606)))

(declare-fun b!94277 () Bool)

(assert (=> b!94277 (= e!51604 0)))

(declare-fun b!94278 () Bool)

(assert (=> b!94278 (= e!51604 (+ 1 (size!985 (t!53167 (t!53167 (Cons!810 lt!21596 lt!21597))))))))

(assert (= (and d!61488 c!23196) b!94277))

(assert (= (and d!61488 (not c!23196)) b!94278))

(declare-fun m!89795 () Bool)

(assert (=> b!94278 m!89795))

(assert (=> b!94276 d!61488))

(declare-fun d!61490 () Bool)

(declare-fun lt!21607 () Int)

(assert (=> d!61490 (>= lt!21607 0)))

(declare-fun e!51605 () Int)

(assert (=> d!61490 (= lt!21607 e!51605)))

(declare-fun c!23197 () Bool)

(assert (=> d!61490 (= c!23197 (is-Nil!814 (t!53169 (Cons!812 (Cons!811 (tuple2!467 lt!21598 Alice!60) (Cons!811 (tuple2!467 lt!21598 Charlie!60) Nil!813)) (Cons!812 (Cons!811 (tuple2!467 lt!21599 Alice!60) (Cons!811 (tuple2!467 lt!21599 Charlie!60) Nil!813)) Nil!814)))))))

(assert (=> d!61490 (= (size!984 (t!53169 (Cons!812 (Cons!811 (tuple2!467 lt!21598 Alice!60) (Cons!811 (tuple2!467 lt!21598 Charlie!60) Nil!813)) (Cons!812 (Cons!811 (tuple2!467 lt!21599 Alice!60) (Cons!811 (tuple2!467 lt!21599 Charlie!60) Nil!813)) Nil!814)))) lt!21607)))

(declare-fun b!94279 () Bool)

(assert (=> b!94279 (= e!51605 0)))

(declare-fun b!94280 () Bool)

(assert (=> b!94280 (= e!51605 (+ 1 (size!984 (t!53169 (t!53169 (Cons!812 (Cons!811 (tuple2!467 lt!21598 Alice!60) (Cons!811 (tuple2!467 lt!21598 Charlie!60) Nil!813)) (Cons!812 (Cons!811 (tuple2!467 lt!21599 Alice!60) (Cons!811 (tuple2!467 lt!21599 Charlie!60) Nil!813)) Nil!814)))))))))

(assert (= (and d!61490 c!23197) b!94279))

(assert (= (and d!61490 (not c!23197)) b!94280))

(declare-fun m!89797 () Bool)

(assert (=> b!94280 m!89797))

(assert (=> b!94270 d!61490))

(push 1)

(assert (not b!94278))

(assert (not b!94280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61492 () Bool)

(declare-fun lt!21608 () Int)

(assert (=> d!61492 (>= lt!21608 0)))

(declare-fun e!51606 () Int)

(assert (=> d!61492 (= lt!21608 e!51606)))

(declare-fun c!23198 () Bool)

(assert (=> d!61492 (= c!23198 (is-Nil!812 (t!53167 (t!53167 (Cons!810 lt!21596 lt!21597)))))))

(assert (=> d!61492 (= (size!985 (t!53167 (t!53167 (Cons!810 lt!21596 lt!21597)))) lt!21608)))

(declare-fun b!94281 () Bool)

(assert (=> b!94281 (= e!51606 0)))

(declare-fun b!94282 () Bool)

(assert (=> b!94282 (= e!51606 (+ 1 (size!985 (t!53167 (t!53167 (t!53167 (Cons!810 lt!21596 lt!21597)))))))))

(assert (= (and d!61492 c!23198) b!94281))

(assert (= (and d!61492 (not c!23198)) b!94282))

(declare-fun m!89799 () Bool)

(assert (=> b!94282 m!89799))

(assert (=> b!94278 d!61492))

(declare-fun d!61494 () Bool)

(declare-fun lt!21609 () Int)

(assert (=> d!61494 (>= lt!21609 0)))

(declare-fun e!51607 () Int)

(assert (=> d!61494 (= lt!21609 e!51607)))

(declare-fun c!23199 () Bool)

(assert (=> d!61494 (= c!23199 (is-Nil!814 (t!53169 (t!53169 (Cons!812 (Cons!811 (tuple2!467 lt!21598 Alice!60) (Cons!811 (tuple2!467 lt!21598 Charlie!60) Nil!813)) (Cons!812 (Cons!811 (tuple2!467 lt!21599 Alice!60) (Cons!811 (tuple2!467 lt!21599 Charlie!60) Nil!813)) Nil!814))))))))

(assert (=> d!61494 (= (size!984 (t!53169 (t!53169 (Cons!812 (Cons!811 (tuple2!467 lt!21598 Alice!60) (Cons!811 (tuple2!467 lt!21598 Charlie!60) Nil!813)) (Cons!812 (Cons!811 (tuple2!467 lt!21599 Alice!60) (Cons!811 (tuple2!467 lt!21599 Charlie!60) Nil!813)) Nil!814))))) lt!21609)))

(declare-fun b!94283 () Bool)

(assert (=> b!94283 (= e!51607 0)))

(declare-fun b!94284 () Bool)

(assert (=> b!94284 (= e!51607 (+ 1 (size!984 (t!53169 (t!53169 (t!53169 (Cons!812 (Cons!811 (tuple2!467 lt!21598 Alice!60) (Cons!811 (tuple2!467 lt!21598 Charlie!60) Nil!813)) (Cons!812 (Cons!811 (tuple2!467 lt!21599 Alice!60) (Cons!811 (tuple2!467 lt!21599 Charlie!60) Nil!813)) Nil!814))))))))))

(assert (= (and d!61494 c!23199) b!94283))

(assert (= (and d!61494 (not c!23199)) b!94284))

(declare-fun m!89801 () Bool)

(assert (=> b!94284 m!89801))

(assert (=> b!94280 d!61494))

(push 1)

(assert (not b!94282))

(assert (not b!94284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

