; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15624 () Bool)

(assert start!15624)

(declare-fun res!51132 () Bool)

(declare-fun e!53866 () Bool)

(assert (=> start!15624 (=> (not res!51132) (not e!53866))))

(declare-fun y!2445 () Int)

(declare-fun precond!0 (Int) Bool)

(assert (=> start!15624 (= res!51132 (precond!0 y!2445))))

(assert (=> start!15624 e!53866))

(assert (=> start!15624 true))

(declare-fun b!98561 () Bool)

(declare-fun e!53867 () Bool)

(assert (=> b!98561 (= e!53866 e!53867)))

(declare-fun res!51133 () Bool)

(assert (=> b!98561 (=> res!51133 e!53867)))

(assert (=> b!98561 (= res!51133 (< y!2445 0))))

(declare-fun b!98562 () Bool)

(declare-fun nonterm!0 (Int) Int)

(assert (=> b!98562 (= e!53867 (not (= (nonterm!0 0) 0)))))

(assert (= (and start!15624 res!51132) b!98561))

(assert (= (and b!98561 (not res!51133)) b!98562))

(declare-fun m!92596 () Bool)

(assert (=> start!15624 m!92596))

(declare-fun m!92598 () Bool)

(assert (=> b!98562 m!92598))

(push 1)

(assert (not start!15624))

(assert (not b!98562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63342 () Bool)

(assert (=> d!63342 (= (precond!0 y!2445) (< y!2445 0))))

(assert (=> start!15624 d!63342))

(declare-fun d!63344 () Bool)

(assert (=> d!63344 false))

(declare-fun lt!23054 () Int)

(assert (=> d!63344 (= lt!23054 (nonterm!0 (+ 0 1)))))

(assert (=> d!63344 (= (nonterm!0 0) lt!23054)))

(declare-fun bs!43711 () Bool)

(assert (= bs!43711 d!63344))

(declare-fun m!92600 () Bool)

(assert (=> bs!43711 m!92600))

(assert (=> b!98562 d!63344))

(push 1)

(assert (not d!63344))

(check-sat)

(get-model)

(pop 1)

