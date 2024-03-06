; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5678 () Bool)

(assert start!5678)

(declare-fun res!20621 () Bool)

(declare-fun e!22565 () Bool)

(assert (=> start!5678 (=> (not res!20621) (not e!22565))))

(declare-datatypes () ((Nat!109 (Zero!93) (Succ!90 (n!1234 Nat!109)))))

(declare-fun n1!218 () Nat!109)

(declare-fun n!813 () Nat!109)

(declare-fun n2!230 () Nat!109)

(assert (=> start!5678 (= res!20621 (and (= n1!218 (Succ!90 (Succ!90 Zero!93))) (= n2!230 n!813)))))

(assert (=> start!5678 e!22565))

(assert (=> start!5678 true))

(declare-fun b!43510 () Bool)

(declare-fun >!2 (Nat!109 Nat!109) Bool)

(assert (=> b!43510 (= e!22565 (not (>!2 n1!218 Zero!93)))))

(assert (= (and start!5678 res!20621) b!43510))

(declare-fun m!46743 () Bool)

(assert (=> b!43510 m!46743))

(push 1)

(assert (not b!43510))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30924 () Bool)

(declare-fun res!20624 () Bool)

(declare-fun e!22568 () Bool)

(assert (=> d!30924 (=> (not res!20624) (not e!22568))))

(declare-fun <!2 (Nat!109 Nat!109) Bool)

(assert (=> d!30924 (= res!20624 (not (<!2 n1!218 Zero!93)))))

(assert (=> d!30924 (= (>!2 n1!218 Zero!93) e!22568)))

(declare-fun b!43513 () Bool)

(assert (=> b!43513 (= e!22568 (not (= n1!218 Zero!93)))))

(assert (= (and d!30924 res!20624) b!43513))

(declare-fun m!46745 () Bool)

(assert (=> d!30924 m!46745))

(assert (=> b!43510 d!30924))

(push 1)

(assert (not d!30924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30926 () Bool)

(declare-fun lt!7948 () Bool)

(declare-fun repr!0 (Nat!109) Int)

(assert (=> d!30926 (= lt!7948 (< (repr!0 n1!218) (repr!0 Zero!93)))))

(declare-fun e!22571 () Bool)

(assert (=> d!30926 (= lt!7948 e!22571)))

(declare-fun c!9234 () Bool)

(assert (=> d!30926 (= c!9234 (and (is-Succ!90 n1!218) (is-Succ!90 Zero!93)))))

(assert (=> d!30926 (= (<!2 n1!218 Zero!93) lt!7948)))

(declare-fun b!43518 () Bool)

(assert (=> b!43518 (= e!22571 (<!2 (n!1234 n1!218) (n!1234 Zero!93)))))

(declare-fun b!43519 () Bool)

(assert (=> b!43519 (= e!22571 (and (is-Zero!93 n1!218) (is-Succ!90 Zero!93)))))

(assert (= (and d!30926 c!9234) b!43518))

(assert (= (and d!30926 (not c!9234)) b!43519))

(declare-fun m!46747 () Bool)

(assert (=> d!30926 m!46747))

(declare-fun m!46749 () Bool)

(assert (=> d!30926 m!46749))

(declare-fun m!46751 () Bool)

(assert (=> b!43518 m!46751))

(assert (=> d!30924 d!30926))

(push 1)

(assert (not d!30926))

(assert (not b!43518))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

