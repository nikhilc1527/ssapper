; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14920 () Bool)

(assert start!14920)

(declare-fun res!49314 () Bool)

(declare-fun e!51621 () Bool)

(assert (=> start!14920 (=> res!49314 e!51621)))

(declare-datatypes () ((P!62 (Charlie!62) (Alice!62) (Bob!62))))

(declare-datatypes () ((tuple2!470 (tuple2!471 (_1!274 P!62) (_2!274 P!62)))))

(declare-datatypes () ((List!876 (Cons!814 (h!5302 tuple2!470) (t!53593 List!876)) (Nil!816))))

(declare-fun lt!21626 () List!876)

(declare-fun lt!21628 () List!876)

(declare-fun lt!21627 () List!876)

(declare-fun content!197 (List!876) (Set tuple2!470))

(assert (=> start!14920 (= res!49314 (not (= (content!197 lt!21628) (union (content!197 (t!53593 lt!21626)) (content!197 lt!21627)))))))

(assert (=> start!14920 (= lt!21628 (Cons!814 (h!5302 (t!53593 lt!21626)) lt!21627))))

(assert (=> start!14920 (= lt!21627 Nil!816)))

(assert (=> start!14920 (= lt!21626 (Cons!814 (tuple2!471 Charlie!62 Alice!62) (Cons!814 (tuple2!471 Charlie!62 Charlie!62) Nil!816)))))

(assert (=> start!14920 e!51621))

(declare-fun b!94389 () Bool)

(declare-fun res!49313 () Bool)

(assert (=> b!94389 (=> res!49313 e!51621)))

(declare-fun size!987 (List!876) Int)

(assert (=> b!94389 (= res!49313 (not (= (size!987 lt!21628) (+ (size!987 (t!53593 lt!21626)) (size!987 lt!21627)))))))

(declare-fun b!94390 () Bool)

(assert (=> b!94390 (= e!51621 (and (= lt!21627 Nil!816) (not (= lt!21628 (t!53593 lt!21626)))))))

(assert (= (and start!14920 (not res!49314)) b!94389))

(assert (= (and b!94389 (not res!49313)) b!94390))

(declare-fun m!89823 () Bool)

(assert (=> start!14920 m!89823))

(declare-fun m!89825 () Bool)

(assert (=> start!14920 m!89825))

(declare-fun m!89827 () Bool)

(assert (=> start!14920 m!89827))

(declare-fun m!89829 () Bool)

(assert (=> b!94389 m!89829))

(declare-fun m!89831 () Bool)

(assert (=> b!94389 m!89831))

(declare-fun m!89833 () Bool)

(assert (=> b!94389 m!89833))

(push 1)

(assert (not b!94389))

(assert (not start!14920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61504 () Bool)

(declare-fun lt!21631 () Int)

(assert (=> d!61504 (>= lt!21631 0)))

(declare-fun e!51624 () Int)

(assert (=> d!61504 (= lt!21631 e!51624)))

(declare-fun c!23210 () Bool)

(assert (=> d!61504 (= c!23210 (is-Nil!816 lt!21628))))

(assert (=> d!61504 (= (size!987 lt!21628) lt!21631)))

(declare-fun b!94395 () Bool)

(assert (=> b!94395 (= e!51624 0)))

(declare-fun b!94396 () Bool)

(assert (=> b!94396 (= e!51624 (+ 1 (size!987 (t!53593 lt!21628))))))

(assert (= (and d!61504 c!23210) b!94395))

(assert (= (and d!61504 (not c!23210)) b!94396))

(declare-fun m!89835 () Bool)

(assert (=> b!94396 m!89835))

(assert (=> b!94389 d!61504))

(declare-fun d!61506 () Bool)

(declare-fun lt!21632 () Int)

(assert (=> d!61506 (>= lt!21632 0)))

(declare-fun e!51625 () Int)

(assert (=> d!61506 (= lt!21632 e!51625)))

(declare-fun c!23211 () Bool)

(assert (=> d!61506 (= c!23211 (is-Nil!816 (t!53593 lt!21626)))))

(assert (=> d!61506 (= (size!987 (t!53593 lt!21626)) lt!21632)))

(declare-fun b!94397 () Bool)

(assert (=> b!94397 (= e!51625 0)))

(declare-fun b!94398 () Bool)

(assert (=> b!94398 (= e!51625 (+ 1 (size!987 (t!53593 (t!53593 lt!21626)))))))

(assert (= (and d!61506 c!23211) b!94397))

(assert (= (and d!61506 (not c!23211)) b!94398))

(declare-fun m!89837 () Bool)

(assert (=> b!94398 m!89837))

(assert (=> b!94389 d!61506))

(declare-fun d!61508 () Bool)

(declare-fun lt!21633 () Int)

(assert (=> d!61508 (>= lt!21633 0)))

(declare-fun e!51626 () Int)

(assert (=> d!61508 (= lt!21633 e!51626)))

(declare-fun c!23212 () Bool)

(assert (=> d!61508 (= c!23212 (is-Nil!816 lt!21627))))

(assert (=> d!61508 (= (size!987 lt!21627) lt!21633)))

(declare-fun b!94399 () Bool)

(assert (=> b!94399 (= e!51626 0)))

(declare-fun b!94400 () Bool)

(assert (=> b!94400 (= e!51626 (+ 1 (size!987 (t!53593 lt!21627))))))

(assert (= (and d!61508 c!23212) b!94399))

(assert (= (and d!61508 (not c!23212)) b!94400))

(declare-fun m!89839 () Bool)

(assert (=> b!94400 m!89839))

(assert (=> b!94389 d!61508))

(declare-fun d!61510 () Bool)

(declare-fun c!23215 () Bool)

(assert (=> d!61510 (= c!23215 (is-Nil!816 lt!21628))))

(declare-fun e!51629 () (Set tuple2!470))

(assert (=> d!61510 (= (content!197 lt!21628) e!51629)))

(declare-fun b!94405 () Bool)

(assert (=> b!94405 (= e!51629 (as emptyset (Set tuple2!470)))))

(declare-fun b!94406 () Bool)

(assert (=> b!94406 (= e!51629 (union (insert (h!5302 lt!21628) (as emptyset (Set tuple2!470))) (content!197 (t!53593 lt!21628))))))

(assert (= (and d!61510 c!23215) b!94405))

(assert (= (and d!61510 (not c!23215)) b!94406))

(declare-fun m!89841 () Bool)

(assert (=> b!94406 m!89841))

(declare-fun m!89843 () Bool)

(assert (=> b!94406 m!89843))

(assert (=> start!14920 d!61510))

(declare-fun d!61512 () Bool)

(declare-fun c!23216 () Bool)

(assert (=> d!61512 (= c!23216 (is-Nil!816 (t!53593 lt!21626)))))

(declare-fun e!51630 () (Set tuple2!470))

(assert (=> d!61512 (= (content!197 (t!53593 lt!21626)) e!51630)))

(declare-fun b!94407 () Bool)

(assert (=> b!94407 (= e!51630 (as emptyset (Set tuple2!470)))))

(declare-fun b!94408 () Bool)

(assert (=> b!94408 (= e!51630 (union (insert (h!5302 (t!53593 lt!21626)) (as emptyset (Set tuple2!470))) (content!197 (t!53593 (t!53593 lt!21626)))))))

(assert (= (and d!61512 c!23216) b!94407))

(assert (= (and d!61512 (not c!23216)) b!94408))

(declare-fun m!89845 () Bool)

(assert (=> b!94408 m!89845))

(declare-fun m!89847 () Bool)

(assert (=> b!94408 m!89847))

(assert (=> start!14920 d!61512))

(declare-fun d!61514 () Bool)

(declare-fun c!23217 () Bool)

(assert (=> d!61514 (= c!23217 (is-Nil!816 lt!21627))))

(declare-fun e!51631 () (Set tuple2!470))

(assert (=> d!61514 (= (content!197 lt!21627) e!51631)))

(declare-fun b!94409 () Bool)

(assert (=> b!94409 (= e!51631 (as emptyset (Set tuple2!470)))))

(declare-fun b!94410 () Bool)

(assert (=> b!94410 (= e!51631 (union (insert (h!5302 lt!21627) (as emptyset (Set tuple2!470))) (content!197 (t!53593 lt!21627))))))

(assert (= (and d!61514 c!23217) b!94409))

(assert (= (and d!61514 (not c!23217)) b!94410))

(declare-fun m!89849 () Bool)

(assert (=> b!94410 m!89849))

(declare-fun m!89851 () Bool)

(assert (=> b!94410 m!89851))

(assert (=> start!14920 d!61514))

(push 1)

(assert (not b!94408))

(assert (not b!94396))

(assert (not b!94410))

(assert (not b!94406))

(assert (not b!94400))

(assert (not b!94398))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

