; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15434 () Bool)

(assert start!15434)

(declare-datatypes () ((P!85 (Charlie!85) (Alice!85) (Bob!85))))

(declare-datatypes () ((S!131 (S!132 (who!3241 P!85) (amount!3241 Int)))))

(declare-fun lt!21790 () S!131)

(declare-datatypes () ((List!887 (Cons!825 (h!7215 S!131) (t!55526 List!887)) (Nil!827))))

(declare-fun lt!21789 () List!887)

(assert (=> start!15434 (= lt!21790 (h!7215 lt!21789))))

(assert (=> start!15434 (= lt!21789 (Cons!825 (S!132 Charlie!85 4000) Nil!827))))

(declare-fun size!998 (List!887) Int)

(assert (=> start!15434 (not (= (size!998 (Cons!825 (S!132 (who!3241 lt!21790) (- 2000 (amount!3241 lt!21790))) Nil!827)) (size!998 lt!21789)))))

(declare-fun bs!43323 () Bool)

(assert (= bs!43323 start!15434))

(declare-fun m!90223 () Bool)

(assert (=> bs!43323 m!90223))

(declare-fun m!90225 () Bool)

(assert (=> bs!43323 m!90225))

(push 1)

(assert (not start!15434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61714 () Bool)

(declare-fun lt!21793 () Int)

(assert (=> d!61714 (>= lt!21793 0)))

(declare-fun e!51816 () Int)

(assert (=> d!61714 (= lt!21793 e!51816)))

(declare-fun c!23335 () Bool)

(assert (=> d!61714 (= c!23335 (is-Nil!827 (Cons!825 (S!132 (who!3241 lt!21790) (- 2000 (amount!3241 lt!21790))) Nil!827)))))

(assert (=> d!61714 (= (size!998 (Cons!825 (S!132 (who!3241 lt!21790) (- 2000 (amount!3241 lt!21790))) Nil!827)) lt!21793)))

(declare-fun b!94981 () Bool)

(assert (=> b!94981 (= e!51816 0)))

(declare-fun b!94982 () Bool)

(assert (=> b!94982 (= e!51816 (+ 1 (size!998 (t!55526 (Cons!825 (S!132 (who!3241 lt!21790) (- 2000 (amount!3241 lt!21790))) Nil!827)))))))

(assert (= (and d!61714 c!23335) b!94981))

(assert (= (and d!61714 (not c!23335)) b!94982))

(declare-fun m!90227 () Bool)

(assert (=> b!94982 m!90227))

(assert (=> start!15434 d!61714))

(declare-fun d!61716 () Bool)

(declare-fun lt!21794 () Int)

(assert (=> d!61716 (>= lt!21794 0)))

(declare-fun e!51817 () Int)

(assert (=> d!61716 (= lt!21794 e!51817)))

(declare-fun c!23336 () Bool)

(assert (=> d!61716 (= c!23336 (is-Nil!827 lt!21789))))

(assert (=> d!61716 (= (size!998 lt!21789) lt!21794)))

(declare-fun b!94983 () Bool)

(assert (=> b!94983 (= e!51817 0)))

(declare-fun b!94984 () Bool)

(assert (=> b!94984 (= e!51817 (+ 1 (size!998 (t!55526 lt!21789))))))

(assert (= (and d!61716 c!23336) b!94983))

(assert (= (and d!61716 (not c!23336)) b!94984))

(declare-fun m!90229 () Bool)

(assert (=> b!94984 m!90229))

(assert (=> start!15434 d!61716))

(push 1)

(assert (not b!94982))

(assert (not b!94984))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

