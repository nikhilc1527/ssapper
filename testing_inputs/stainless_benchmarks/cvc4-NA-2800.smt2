; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14664 () Bool)

(assert start!14664)

(declare-datatypes () ((P!52 (Charlie!52) (Alice!52) (Bob!52))))

(declare-datatypes () ((List!854 (Cons!792 (h!4524 P!52) (t!52735 List!854)) (Nil!794))))

(declare-fun size!968 (List!854) Int)

(declare-datatypes () ((S!123 (S!124 (who!2188 P!52) (amount!2188 Int)))))

(declare-datatypes () ((List!855 (Cons!793 (h!4525 S!123) (t!52736 List!855)) (Nil!795))))

(declare-fun size!969 (List!855) Int)

(assert (=> start!14664 (not (= (size!968 Nil!794) (size!969 Nil!795)))))

(declare-fun bs!42963 () Bool)

(assert (= bs!42963 start!14664))

(declare-fun m!89695 () Bool)

(assert (=> bs!42963 m!89695))

(declare-fun m!89697 () Bool)

(assert (=> bs!42963 m!89697))

(push 1)

(assert (not start!14664))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61424 () Bool)

(declare-fun lt!21504 () Int)

(assert (=> d!61424 (>= lt!21504 0)))

(declare-fun e!51538 () Int)

(assert (=> d!61424 (= lt!21504 e!51538)))

(declare-fun c!23130 () Bool)

(assert (=> d!61424 (= c!23130 (is-Nil!794 Nil!794))))

(assert (=> d!61424 (= (size!968 Nil!794) lt!21504)))

(declare-fun b!94077 () Bool)

(assert (=> b!94077 (= e!51538 0)))

(declare-fun b!94078 () Bool)

(assert (=> b!94078 (= e!51538 (+ 1 (size!968 (t!52735 Nil!794))))))

(assert (= (and d!61424 c!23130) b!94077))

(assert (= (and d!61424 (not c!23130)) b!94078))

(declare-fun m!89699 () Bool)

(assert (=> b!94078 m!89699))

(assert (=> start!14664 d!61424))

(declare-fun d!61426 () Bool)

(declare-fun lt!21507 () Int)

(assert (=> d!61426 (>= lt!21507 0)))

(declare-fun e!51541 () Int)

(assert (=> d!61426 (= lt!21507 e!51541)))

(declare-fun c!23133 () Bool)

(assert (=> d!61426 (= c!23133 (is-Nil!795 Nil!795))))

(assert (=> d!61426 (= (size!969 Nil!795) lt!21507)))

(declare-fun b!94083 () Bool)

(assert (=> b!94083 (= e!51541 0)))

(declare-fun b!94084 () Bool)

(assert (=> b!94084 (= e!51541 (+ 1 (size!969 (t!52736 Nil!795))))))

(assert (= (and d!61426 c!23133) b!94083))

(assert (= (and d!61426 (not c!23133)) b!94084))

(declare-fun m!89701 () Bool)

(assert (=> b!94084 m!89701))

(assert (=> start!14664 d!61426))

(push 1)

(assert (not b!94078))

(assert (not b!94084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

