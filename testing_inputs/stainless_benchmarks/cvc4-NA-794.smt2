; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6006 () Bool)

(assert start!6006)

(declare-fun b!44845 () Bool)

(declare-fun res!21250 () Bool)

(declare-fun e!23194 () Bool)

(assert (=> b!44845 (=> (not res!21250) (not e!23194))))

(declare-datatypes () ((Unit!500 (Unit!501))))

(declare-fun t!5183 () Unit!500)

(declare-fun x$63!38 () Unit!500)

(declare-fun res!17769 () Unit!500)

(assert (=> b!44845 (= res!21250 (and (= res!17769 t!5183) (= x$63!38 res!17769)))))

(declare-fun b!44846 () Bool)

(declare-fun res!21253 () Bool)

(assert (=> b!44846 (=> (not res!21253) (not e!23194))))

(declare-datatypes () ((Nat!155 (Zero!139) (Succ!136 (n!1287 Nat!155)))))

(declare-fun that!1602 () Nat!155)

(declare-fun n2!401 () Nat!155)

(assert (=> b!44846 (= res!21253 (= that!1602 n2!401))))

(declare-fun b!44847 () Bool)

(declare-fun e!23195 () Unit!500)

(declare-fun Unit!502 () Unit!500)

(assert (=> b!44847 (= e!23195 Unit!502)))

(declare-fun b!44848 () Bool)

(declare-fun res!21251 () Bool)

(assert (=> b!44848 (=> (not res!21251) (not e!23194))))

(declare-fun n1!385 () Nat!155)

(declare-fun thiss!6571 () Nat!155)

(declare-fun *!4 (Nat!155 Nat!155) Nat!155)

(assert (=> b!44848 (= res!21251 (= thiss!6571 (*!4 n1!385 n2!401)))))

(declare-fun res!21252 () Bool)

(assert (=> start!6006 (=> (not res!21252) (not e!23194))))

(declare-fun >!2 (Nat!155 Nat!155) Bool)

(assert (=> start!6006 (= res!21252 (>!2 n2!401 Zero!139))))

(assert (=> start!6006 e!23194))

(assert (=> start!6006 true))

(declare-fun b!44849 () Bool)

(declare-fun Unit!503 () Unit!500)

(assert (=> b!44849 (= e!23195 Unit!503)))

(declare-fun /!2 (Nat!155 Nat!155) Nat!155)

(assert (=> b!44849 (= (/!2 (*!4 n1!385 n2!401) n2!401) n1!385)))

(declare-fun b!44850 () Bool)

(assert (=> b!44850 (= e!23194 (not (>!2 that!1602 Zero!139)))))

(declare-fun b!44851 () Bool)

(declare-fun res!21249 () Bool)

(assert (=> b!44851 (=> (not res!21249) (not e!23194))))

(assert (=> b!44851 (= res!21249 (= t!5183 e!23195))))

(declare-fun c!9564 () Bool)

(assert (=> b!44851 (= c!9564 (is-Succ!136 n1!385))))

(assert (= (and start!6006 res!21252) b!44851))

(assert (= (and b!44851 c!9564) b!44849))

(assert (= (and b!44851 (not c!9564)) b!44847))

(assert (= (and b!44851 res!21249) b!44845))

(assert (= (and b!44845 res!21250) b!44848))

(assert (= (and b!44848 res!21251) b!44846))

(assert (= (and b!44846 res!21253) b!44850))

(declare-fun m!47923 () Bool)

(assert (=> b!44848 m!47923))

(declare-fun m!47925 () Bool)

(assert (=> start!6006 m!47925))

(assert (=> b!44849 m!47923))

(assert (=> b!44849 m!47923))

(declare-fun m!47927 () Bool)

(assert (=> b!44849 m!47927))

(declare-fun m!47929 () Bool)

(assert (=> b!44850 m!47929))

(push 1)

(assert (not b!44848))

(assert (not b!44850))

(assert (not start!6006))

(assert (not b!44849))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

