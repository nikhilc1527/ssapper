; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5106 () Bool)

(assert start!5106)

(declare-fun res!18797 () Bool)

(declare-fun e!20253 () Bool)

(assert (=> start!5106 (=> (not res!18797) (not e!20253))))

(declare-datatypes () ((Nat!77 (Zero!61) (Succ!58 (n!1158 Nat!77)))))

(declare-fun n1!376 () Nat!77)

(declare-fun n3!65 () Nat!77)

(declare-fun <=!2 (Nat!77 Nat!77) Bool)

(assert (=> start!5106 (= res!18797 (<=!2 n1!376 n3!65))))

(assert (=> start!5106 e!20253))

(assert (=> start!5106 true))

(declare-fun b!39272 () Bool)

(declare-fun res!18798 () Bool)

(assert (=> b!39272 (=> (not res!18798) (not e!20253))))

(declare-fun n2!392 () Nat!77)

(declare-fun n4!3 () Nat!77)

(assert (=> b!39272 (= res!18798 (<=!2 n2!392 n4!3))))

(declare-fun b!39273 () Bool)

(declare-fun res!18799 () Bool)

(assert (=> b!39273 (=> (not res!18799) (not e!20253))))

(declare-fun n2!395 () Nat!77)

(declare-fun n1!379 () Nat!77)

(assert (=> b!39273 (= res!18799 (and (not (is-Zero!61 n3!65)) (or (not (= n1!376 n3!65)) (not (= n2!392 n4!3))) (not (= n1!376 n3!65)) (= n1!379 n1!376) (= n2!395 n3!65)))))

(declare-fun b!39274 () Bool)

(declare-fun <!2 (Nat!77 Nat!77) Bool)

(assert (=> b!39274 (= e!20253 (not (<!2 n1!379 n2!395)))))

(assert (= (and start!5106 res!18797) b!39272))

(assert (= (and b!39272 res!18798) b!39273))

(assert (= (and b!39273 res!18799) b!39274))

(declare-fun m!40447 () Bool)

(assert (=> start!5106 m!40447))

(declare-fun m!40449 () Bool)

(assert (=> b!39272 m!40449))

(declare-fun m!40451 () Bool)

(assert (=> b!39274 m!40451))

(push 1)

(assert (not start!5106))

(assert (not b!39272))

(assert (not b!39274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!19930 () Bool)

(declare-fun res!18802 () Bool)

(declare-fun e!20256 () Bool)

(assert (=> d!19930 (=> res!18802 e!20256)))

(assert (=> d!19930 (= res!18802 (<!2 n1!376 n3!65))))

(assert (=> d!19930 (= (<=!2 n1!376 n3!65) e!20256)))

(declare-fun b!39277 () Bool)

(assert (=> b!39277 (= e!20256 (= n1!376 n3!65))))

(assert (= (and d!19930 (not res!18802)) b!39277))

(declare-fun m!40453 () Bool)

(assert (=> d!19930 m!40453))

(assert (=> start!5106 d!19930))

(declare-fun d!19932 () Bool)

(declare-fun res!18803 () Bool)

(declare-fun e!20257 () Bool)

(assert (=> d!19932 (=> res!18803 e!20257)))

(assert (=> d!19932 (= res!18803 (<!2 n2!392 n4!3))))

(assert (=> d!19932 (= (<=!2 n2!392 n4!3) e!20257)))

(declare-fun b!39278 () Bool)

(assert (=> b!39278 (= e!20257 (= n2!392 n4!3))))

(assert (= (and d!19932 (not res!18803)) b!39278))

(declare-fun m!40455 () Bool)

(assert (=> d!19932 m!40455))

(assert (=> b!39272 d!19932))

(declare-fun d!19934 () Bool)

(declare-fun lt!7592 () Bool)

(declare-fun repr!0 (Nat!77) Int)

(assert (=> d!19934 (= lt!7592 (< (repr!0 n1!379) (repr!0 n2!395)))))

(declare-fun e!20260 () Bool)

(assert (=> d!19934 (= lt!7592 e!20260)))

(declare-fun c!8369 () Bool)

(assert (=> d!19934 (= c!8369 (and (is-Succ!58 n1!379) (is-Succ!58 n2!395)))))

(assert (=> d!19934 (= (<!2 n1!379 n2!395) lt!7592)))

(declare-fun b!39283 () Bool)

(assert (=> b!39283 (= e!20260 (<!2 (n!1158 n1!379) (n!1158 n2!395)))))

(declare-fun b!39284 () Bool)

(assert (=> b!39284 (= e!20260 (and (is-Zero!61 n1!379) (is-Succ!58 n2!395)))))

(assert (= (and d!19934 c!8369) b!39283))

(assert (= (and d!19934 (not c!8369)) b!39284))

(declare-fun m!40457 () Bool)

(assert (=> d!19934 m!40457))

(declare-fun m!40459 () Bool)

(assert (=> d!19934 m!40459))

(declare-fun m!40461 () Bool)

(assert (=> b!39283 m!40461))

(assert (=> b!39274 d!19934))

(push 1)

(assert (not d!19932))

(assert (not d!19934))

(assert (not b!39283))

(assert (not d!19930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

