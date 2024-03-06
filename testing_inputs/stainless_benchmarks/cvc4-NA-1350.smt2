; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9472 () Bool)

(assert start!9472)

(declare-fun res!33717 () Bool)

(declare-fun e!37529 () Bool)

(assert (=> start!9472 (=> (not res!33717) (not e!37529))))

(declare-datatypes () ((Formula!50 (And!55 (lhs!953 Formula!50) (rhs!953 Formula!50)) (Literal!49 (id!4830 Int)) (Implies!55 (lhs!954 Formula!50) (rhs!954 Formula!50)) (Or!55 (lhs!955 Formula!50) (rhs!955 Formula!50)) (Not!55 (f!4209 Formula!50)))))

(declare-fun f!3853 () Formula!50)

(declare-fun x$1!896 () Formula!50)

(assert (=> start!9472 (= res!33717 (and (not (is-And!55 f!3853)) (not (is-Or!55 f!3853)) (not (is-Implies!55 f!3853)) (not (is-Not!55 f!3853)) (= x$1!896 f!3853)))))

(assert (=> start!9472 e!37529))

(assert (=> start!9472 true))

(declare-fun b!69339 () Bool)

(declare-fun isSimplified!1 (Formula!50) Bool)

(assert (=> b!69339 (= e!37529 (not (isSimplified!1 x$1!896)))))

(assert (= (and start!9472 res!33717) b!69339))

(declare-fun m!70449 () Bool)

(assert (=> b!69339 m!70449))

(push 1)

(assert (not b!69339))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!69366 () Bool)

(declare-fun e!37549 () Bool)

(declare-fun res!33745 () Bool)

(assert (=> b!69366 (= e!37549 res!33745)))

(assert (=> b!69366 true))

(declare-fun b!69367 () Bool)

(declare-fun e!37546 () Bool)

(declare-fun res!33746 () Bool)

(assert (=> b!69367 (= e!37546 res!33746)))

(assert (=> b!69367 true))

(declare-fun b!69368 () Bool)

(declare-fun e!37552 () Bool)

(declare-fun res!33747 () Bool)

(assert (=> b!69368 (= e!37552 res!33747)))

(assert (=> b!69368 true))

(assert (=> b!69368 true))

(declare-fun b!69369 () Bool)

(declare-fun e!37550 () Bool)

(declare-fun e!37547 () Bool)

(assert (=> b!69369 (= e!37550 e!37547)))

(declare-fun res!33748 () Bool)

(assert (=> b!69369 (=> (not res!33748) (not e!37547))))

(declare-fun lt!14430 () Bool)

(assert (=> b!69369 (= res!33748 lt!14430)))

(assert (=> b!69369 (= lt!14430 (is-Or!55 x$1!896))))

(declare-fun b!69370 () Bool)

(declare-fun lt!14427 () Bool)

(assert (=> b!69370 (= e!37549 (isSimplified!1 (ite lt!14427 (rhs!953 x$1!896) (rhs!955 x$1!896))))))

(declare-fun b!69371 () Bool)

(declare-fun e!37548 () Bool)

(declare-fun lt!14433 () Bool)

(assert (=> b!69371 (= e!37548 lt!14433)))

(declare-fun b!69372 () Bool)

(declare-fun e!37553 () Bool)

(assert (=> b!69372 (= e!37553 e!37550)))

(declare-fun res!33743 () Bool)

(assert (=> b!69372 (=> (not res!33743) (not e!37550))))

(declare-fun lt!14432 () Bool)

(assert (=> b!69372 (= res!33743 (not lt!14432))))

(declare-fun b!69373 () Bool)

(assert (=> b!69373 (= e!37547 e!37548)))

(declare-fun c!16314 () Bool)

(assert (=> b!69373 (= c!16314 (or lt!14430 (and (not (is-Implies!55 x$1!896)) (is-Not!55 x$1!896))))))

(declare-fun b!69374 () Bool)

(assert (=> b!69374 (= e!37552 lt!14433)))

(declare-fun b!69375 () Bool)

(assert (=> b!69375 (= e!37546 (isSimplified!1 (ite lt!14432 (lhs!953 x$1!896) (ite (is-Or!55 x$1!896) (lhs!955 x$1!896) (f!4209 x$1!896)))))))

(declare-fun b!69376 () Bool)

(declare-fun e!37551 () Bool)

(declare-fun lt!14429 () Bool)

(assert (=> b!69376 (= e!37551 (and lt!14433 lt!14429))))

(declare-fun d!53624 () Bool)

(declare-fun c!16315 () Bool)

(assert (=> d!53624 (= c!16315 lt!14432)))

(assert (=> d!53624 (= lt!14429 e!37549)))

(declare-fun c!16313 () Bool)

(assert (=> d!53624 (= c!16313 e!37553)))

(declare-fun res!33749 () Bool)

(assert (=> d!53624 (=> res!33749 e!37553)))

(assert (=> d!53624 (= res!33749 lt!14427)))

(assert (=> d!53624 (= lt!14427 (and lt!14432 lt!14433))))

(assert (=> d!53624 (= lt!14433 e!37546)))

(declare-fun c!16312 () Bool)

(assert (=> d!53624 (= c!16312 (or lt!14432 (is-Or!55 x$1!896) (and (not (is-Implies!55 x$1!896)) (is-Not!55 x$1!896))))))

(assert (=> d!53624 (= lt!14432 (is-And!55 x$1!896))))

(assert (=> d!53624 (= (isSimplified!1 x$1!896) e!37551)))

(declare-fun b!69377 () Bool)

(declare-fun res!33744 () Bool)

(assert (=> b!69377 (= e!37548 res!33744)))

(assert (=> b!69377 true))

(declare-fun lt!14428 () Bool)

(declare-fun lt!14431 () Bool)

(declare-fun b!69378 () Bool)

(assert (=> b!69378 (= e!37551 (ite lt!14428 (and lt!14431 lt!14429) (and (not (is-Implies!55 x$1!896)) (or (not (is-Not!55 x$1!896)) lt!14431))))))

(assert (=> b!69378 (= lt!14431 e!37552)))

(declare-fun c!16316 () Bool)

(assert (=> b!69378 (= c!16316 (or lt!14428 (and (not (is-Implies!55 x$1!896)) (is-Not!55 x$1!896))))))

(assert (=> b!69378 (= lt!14428 (is-Or!55 x$1!896))))

(assert (= (and d!53624 c!16312) b!69375))

(assert (= (and d!53624 (not c!16312)) b!69367))

(assert (= (and d!53624 (not res!33749)) b!69372))

(assert (= (and b!69372 res!33743) b!69369))

(assert (= (and b!69369 res!33748) b!69373))

(assert (= (and b!69373 c!16314) b!69371))

(assert (= (and b!69373 (not c!16314)) b!69377))

(assert (= (and d!53624 c!16313) b!69370))

(assert (= (and d!53624 (not c!16313)) b!69366))

(assert (= (and b!69378 c!16316) b!69374))

(assert (= (and b!69378 (not c!16316)) b!69368))

(assert (= (and d!53624 c!16315) b!69376))

(assert (= (and d!53624 (not c!16315)) b!69378))

(declare-fun m!70451 () Bool)

(assert (=> b!69370 m!70451))

(declare-fun m!70453 () Bool)

(assert (=> b!69375 m!70453))

(assert (=> b!69339 d!53624))

(push 1)

(assert (not b!69375))

(assert (not b!69370))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

