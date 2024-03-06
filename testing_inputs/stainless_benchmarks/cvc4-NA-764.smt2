; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5858 () Bool)

(assert start!5858)

(declare-fun res!20920 () Bool)

(declare-fun e!22922 () Bool)

(assert (=> start!5858 (=> (not res!20920) (not e!22922))))

(declare-datatypes () ((Nat!125 (Zero!109) (Succ!106 (n!1250 Nat!125)))))

(declare-fun n2!72 () Nat!125)

(declare-fun >!2 (Nat!125 Nat!125) Bool)

(assert (=> start!5858 (= res!20920 (>!2 n2!72 Zero!109))))

(assert (=> start!5858 e!22922))

(assert (=> start!5858 true))

(declare-fun b!44256 () Bool)

(declare-fun res!20921 () Bool)

(assert (=> b!44256 (=> (not res!20921) (not e!22922))))

(declare-fun n1!61 () Nat!125)

(declare-datatypes () ((Unit!453 (Unit!454))))

(declare-fun x$65!37 () Unit!453)

(declare-fun Unit!455 () Unit!453)

(assert (=> b!44256 (= res!20921 (and (is-Zero!109 n1!61) (= x$65!37 Unit!455)))))

(declare-fun b!44257 () Bool)

(declare-fun <!2 (Nat!125 Nat!125) Bool)

(declare-fun +!5 (Nat!125 Nat!125) Nat!125)

(assert (=> b!44257 (= e!22922 (not (<!2 n1!61 (+!5 n1!61 n2!72))))))

(assert (= (and start!5858 res!20920) b!44256))

(assert (= (and b!44256 res!20921) b!44257))

(declare-fun m!47477 () Bool)

(assert (=> start!5858 m!47477))

(declare-fun m!47479 () Bool)

(assert (=> b!44257 m!47479))

(assert (=> b!44257 m!47479))

(declare-fun m!47481 () Bool)

(assert (=> b!44257 m!47481))

(push 1)

(assert (not b!44257))

(assert (not start!5858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31318 () Bool)

(declare-fun lt!8073 () Bool)

(declare-fun repr!0 (Nat!125) Int)

(assert (=> d!31318 (= lt!8073 (< (repr!0 n1!61) (repr!0 (+!5 n1!61 n2!72))))))

(declare-fun e!22925 () Bool)

(assert (=> d!31318 (= lt!8073 e!22925)))

(declare-fun c!9458 () Bool)

(assert (=> d!31318 (= c!9458 (and (is-Succ!106 n1!61) (is-Succ!106 (+!5 n1!61 n2!72))))))

(assert (=> d!31318 (= (<!2 n1!61 (+!5 n1!61 n2!72)) lt!8073)))

(declare-fun b!44262 () Bool)

(assert (=> b!44262 (= e!22925 (<!2 (n!1250 n1!61) (n!1250 (+!5 n1!61 n2!72))))))

(declare-fun b!44263 () Bool)

(assert (=> b!44263 (= e!22925 (and (is-Zero!109 n1!61) (is-Succ!106 (+!5 n1!61 n2!72))))))

(assert (= (and d!31318 c!9458) b!44262))

(assert (= (and d!31318 (not c!9458)) b!44263))

(declare-fun m!47483 () Bool)

(assert (=> d!31318 m!47483))

(assert (=> d!31318 m!47479))

(declare-fun m!47485 () Bool)

(assert (=> d!31318 m!47485))

(declare-fun m!47487 () Bool)

(assert (=> b!44262 m!47487))

(assert (=> b!44257 d!31318))

(declare-fun d!31320 () Bool)

(declare-fun c!9461 () Bool)

(assert (=> d!31320 (= c!9461 (is-Zero!109 n1!61))))

(declare-fun e!22928 () Nat!125)

(assert (=> d!31320 (= (+!5 n1!61 n2!72) e!22928)))

(declare-fun b!44268 () Bool)

(assert (=> b!44268 (= e!22928 n2!72)))

(declare-fun b!44269 () Bool)

(assert (=> b!44269 (= e!22928 (Succ!106 (+!5 (n!1250 n1!61) n2!72)))))

(assert (= (and d!31320 c!9461) b!44268))

(assert (= (and d!31320 (not c!9461)) b!44269))

(declare-fun m!47489 () Bool)

(assert (=> b!44269 m!47489))

(assert (=> b!44257 d!31320))

(declare-fun d!31322 () Bool)

(declare-fun res!20924 () Bool)

(declare-fun e!22931 () Bool)

(assert (=> d!31322 (=> (not res!20924) (not e!22931))))

(assert (=> d!31322 (= res!20924 (not (<!2 n2!72 Zero!109)))))

(assert (=> d!31322 (= (>!2 n2!72 Zero!109) e!22931)))

(declare-fun b!44272 () Bool)

(assert (=> b!44272 (= e!22931 (not (= n2!72 Zero!109)))))

(assert (= (and d!31322 res!20924) b!44272))

(declare-fun m!47491 () Bool)

(assert (=> d!31322 m!47491))

(assert (=> start!5858 d!31322))

(push 1)

(assert (not b!44269))

(assert (not d!31318))

(assert (not d!31322))

(assert (not b!44262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

