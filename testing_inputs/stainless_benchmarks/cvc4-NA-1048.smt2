; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7710 () Bool)

(assert start!7710)

(declare-fun res!25369 () Bool)

(declare-fun e!29017 () Bool)

(assert (=> start!7710 (=> (not res!25369) (not e!29017))))

(declare-fun x!22044 () (_ BitVec 32))

(declare-datatypes () ((IntSet!53 (Node!137 (left!1223 IntSet!53) (elem!289 (_ BitVec 32)) (right!1226 IntSet!53)) (Empty!176))))

(declare-fun s!1759 () IntSet!53)

(declare-datatypes () ((Unit!917 (Unit!918))))

(declare-fun x$2!304 () Unit!917)

(declare-fun Unit!919 () Unit!917)

(assert (=> start!7710 (= res!25369 (and (or (not (is-Node!137 s!1759)) (bvsge x!22044 (elem!289 s!1759))) (or (not (is-Node!137 s!1759)) (bvsle x!22044 (elem!289 s!1759))) (= x$2!304 Unit!919)))))

(assert (=> start!7710 e!29017))

(assert (=> start!7710 true))

(declare-fun b!55113 () Bool)

(declare-fun contains!9 (IntSet!53 (_ BitVec 32)) Bool)

(declare-fun incl!0 (IntSet!53 (_ BitVec 32)) IntSet!53)

(assert (=> b!55113 (= e!29017 (not (contains!9 (incl!0 s!1759 x!22044) x!22044)))))

(assert (= (and start!7710 res!25369) b!55113))

(declare-fun m!59956 () Bool)

(assert (=> b!55113 m!59956))

(assert (=> b!55113 m!59956))

(declare-fun m!59958 () Bool)

(assert (=> b!55113 m!59958))

(push 1)

(assert (not b!55113))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45208 () Bool)

(declare-fun res!25378 () Bool)

(declare-fun e!29023 () Bool)

(assert (=> d!45208 (=> (not res!25378) (not e!29023))))

(assert (=> d!45208 (= res!25378 (not (is-Empty!176 (incl!0 s!1759 x!22044))))))

(assert (=> d!45208 (= (contains!9 (incl!0 s!1759 x!22044) x!22044) e!29023)))

(declare-fun lt!9749 () Bool)

(declare-fun b!55120 () Bool)

(declare-fun lt!9750 () Bool)

(assert (=> b!55120 (= e!29023 (ite lt!9750 lt!9749 (or (not (bvsgt x!22044 (elem!289 (incl!0 s!1759 x!22044)))) lt!9749)))))

(declare-fun e!29022 () Bool)

(assert (=> b!55120 (= lt!9749 e!29022)))

(declare-fun c!11968 () Bool)

(assert (=> b!55120 (= c!11968 (or lt!9750 (bvsgt x!22044 (elem!289 (incl!0 s!1759 x!22044)))))))

(assert (=> b!55120 (= lt!9750 (bvslt x!22044 (elem!289 (incl!0 s!1759 x!22044))))))

(declare-fun b!55122 () Bool)

(declare-fun res!25377 () Bool)

(assert (=> b!55122 (= e!29022 res!25377)))

(assert (=> b!55122 true))

(assert (=> b!55122 true))

(declare-fun b!55121 () Bool)

(assert (=> b!55121 (= e!29022 (contains!9 (ite lt!9750 (left!1223 (incl!0 s!1759 x!22044)) (right!1226 (incl!0 s!1759 x!22044))) x!22044))))

(assert (= (and d!45208 res!25378) b!55120))

(assert (= (and b!55120 c!11968) b!55121))

(assert (= (and b!55120 (not c!11968)) b!55122))

(declare-fun m!59960 () Bool)

(assert (=> b!55121 m!59960))

(assert (=> b!55113 d!45208))

(declare-fun d!45210 () Bool)

(declare-fun c!11974 () Bool)

(assert (=> d!45210 (= c!11974 (is-Empty!176 s!1759))))

(declare-fun e!29029 () IntSet!53)

(assert (=> d!45210 (= (incl!0 s!1759 x!22044) e!29029)))

(declare-fun b!55134 () Bool)

(declare-fun e!29028 () IntSet!53)

(declare-fun res!25384 () IntSet!53)

(assert (=> b!55134 (= e!29028 res!25384)))

(assert (=> b!55134 true))

(assert (=> b!55134 true))

(declare-fun lt!9755 () IntSet!53)

(declare-fun b!55132 () Bool)

(declare-fun lt!9756 () Bool)

(assert (=> b!55132 (= e!29029 (ite lt!9756 (Node!137 lt!9755 (elem!289 s!1759) (right!1226 s!1759)) (ite (bvsgt x!22044 (elem!289 s!1759)) (Node!137 (left!1223 s!1759) (elem!289 s!1759) lt!9755) s!1759)))))

(assert (=> b!55132 (= lt!9755 e!29028)))

(declare-fun c!11973 () Bool)

(assert (=> b!55132 (= c!11973 (or lt!9756 (bvsgt x!22044 (elem!289 s!1759))))))

(assert (=> b!55132 (= lt!9756 (bvslt x!22044 (elem!289 s!1759)))))

(declare-fun b!55133 () Bool)

(assert (=> b!55133 (= e!29028 (incl!0 (ite lt!9756 (left!1223 s!1759) (right!1226 s!1759)) x!22044))))

(declare-fun b!55131 () Bool)

(assert (=> b!55131 (= e!29029 (Node!137 Empty!176 x!22044 Empty!176))))

(assert (= (and b!55132 c!11973) b!55133))

(assert (= (and b!55132 (not c!11973)) b!55134))

(assert (= (and d!45210 c!11974) b!55131))

(assert (= (and d!45210 (not c!11974)) b!55132))

(declare-fun m!59962 () Bool)

(assert (=> b!55133 m!59962))

(assert (=> b!55113 d!45210))

(push 1)

(assert (not b!55133))

(assert (not b!55121))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

