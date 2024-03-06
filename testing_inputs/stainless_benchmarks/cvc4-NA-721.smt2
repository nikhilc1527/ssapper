; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5146 () Bool)

(assert start!5146)

(declare-fun b!39430 () Bool)

(declare-fun res!18899 () Bool)

(declare-fun e!20330 () Bool)

(assert (=> b!39430 (=> (not res!18899) (not e!20330))))

(declare-datatypes () ((Unit!358 (Unit!359))))

(declare-fun tmp!180 () Unit!358)

(declare-datatypes () ((Nat!82 (Zero!66) (Succ!63 (n!1166 Nat!82)))))

(declare-fun n2!205 () Nat!82)

(declare-fun n1!194 () Nat!82)

(declare-fun plus_succ!0 (Nat!82 Nat!82) Unit!358)

(assert (=> b!39430 (= res!18899 (= tmp!180 (plus_succ!0 n1!194 n2!205)))))

(declare-fun b!39431 () Bool)

(declare-fun res!18900 () Bool)

(assert (=> b!39431 (=> (not res!18900) (not e!20330))))

(declare-fun n3!50 () Nat!82)

(assert (=> b!39431 (= res!18900 (and (is-Succ!63 n3!50) (= n2!205 (n!1166 n3!50))))))

(declare-fun b!39432 () Bool)

(declare-fun res!18898 () Bool)

(assert (=> b!39432 (=> (not res!18898) (not e!20330))))

(declare-fun n1!198 () Nat!82)

(declare-fun +!5 (Nat!82 Nat!82) Nat!82)

(assert (=> b!39432 (= res!18898 (= n1!198 (+!5 n1!194 n2!205)))))

(declare-fun b!39433 () Bool)

(declare-fun n2!209 () Nat!82)

(declare-fun <=!2 (Nat!82 Nat!82) Bool)

(assert (=> b!39433 (= e!20330 (not (<=!2 n1!198 n2!209)))))

(declare-fun res!18897 () Bool)

(assert (=> start!5146 (=> (not res!18897) (not e!20330))))

(declare-fun <!2 (Nat!82 Nat!82) Bool)

(assert (=> start!5146 (= res!18897 (<!2 n2!205 n3!50))))

(assert (=> start!5146 e!20330))

(assert (=> start!5146 true))

(declare-fun b!39434 () Bool)

(declare-fun res!18901 () Bool)

(assert (=> b!39434 (=> (not res!18901) (not e!20330))))

(assert (=> b!39434 (= res!18901 (= n2!209 (+!5 n1!194 n2!205)))))

(assert (= (and start!5146 res!18897) b!39431))

(assert (= (and b!39431 res!18900) b!39430))

(assert (= (and b!39430 res!18899) b!39432))

(assert (= (and b!39432 res!18898) b!39434))

(assert (= (and b!39434 res!18901) b!39433))

(declare-fun m!40593 () Bool)

(assert (=> b!39433 m!40593))

(declare-fun m!40595 () Bool)

(assert (=> b!39430 m!40595))

(declare-fun m!40597 () Bool)

(assert (=> start!5146 m!40597))

(declare-fun m!40599 () Bool)

(assert (=> b!39432 m!40599))

(assert (=> b!39434 m!40599))

(push 1)

(assert (not b!39430))

(assert (not b!39434))

(assert (not b!39433))

(assert (not start!5146))

(assert (not b!39432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!20000 () Bool)

(declare-fun lt!7618 () Bool)

(declare-fun repr!0 (Nat!82) Int)

(assert (=> d!20000 (= lt!7618 (< (repr!0 n2!205) (repr!0 n3!50)))))

(declare-fun e!20333 () Bool)

(assert (=> d!20000 (= lt!7618 e!20333)))

(declare-fun c!8398 () Bool)

(assert (=> d!20000 (= c!8398 (and (is-Succ!63 n2!205) (is-Succ!63 n3!50)))))

(assert (=> d!20000 (= (<!2 n2!205 n3!50) lt!7618)))

(declare-fun b!39439 () Bool)

(assert (=> b!39439 (= e!20333 (<!2 (n!1166 n2!205) (n!1166 n3!50)))))

(declare-fun b!39440 () Bool)

(assert (=> b!39440 (= e!20333 (and (is-Zero!66 n2!205) (is-Succ!63 n3!50)))))

(assert (= (and d!20000 c!8398) b!39439))

(assert (= (and d!20000 (not c!8398)) b!39440))

(declare-fun m!40601 () Bool)

(assert (=> d!20000 m!40601))

(declare-fun m!40603 () Bool)

(assert (=> d!20000 m!40603))

(declare-fun m!40605 () Bool)

(assert (=> b!39439 m!40605))

(assert (=> start!5146 d!20000))

(declare-fun d!20002 () Bool)

(declare-fun c!8401 () Bool)

(assert (=> d!20002 (= c!8401 (is-Zero!66 n1!194))))

(declare-fun e!20336 () Nat!82)

(assert (=> d!20002 (= (+!5 n1!194 n2!205) e!20336)))

(declare-fun b!39445 () Bool)

(assert (=> b!39445 (= e!20336 n2!205)))

(declare-fun b!39446 () Bool)

(assert (=> b!39446 (= e!20336 (Succ!63 (+!5 (n!1166 n1!194) n2!205)))))

(assert (= (and d!20002 c!8401) b!39445))

(assert (= (and d!20002 (not c!8401)) b!39446))

(declare-fun m!40607 () Bool)

(assert (=> b!39446 m!40607))

(assert (=> b!39432 d!20002))

(assert (=> b!39434 d!20002))

(declare-fun d!20004 () Bool)

(declare-fun res!18904 () Bool)

(declare-fun e!20339 () Bool)

(assert (=> d!20004 (=> res!18904 e!20339)))

(assert (=> d!20004 (= res!18904 (<!2 n1!198 n2!209))))

(assert (=> d!20004 (= (<=!2 n1!198 n2!209) e!20339)))

(declare-fun b!39449 () Bool)

(assert (=> b!39449 (= e!20339 (= n1!198 n2!209))))

(assert (= (and d!20004 (not res!18904)) b!39449))

(declare-fun m!40609 () Bool)

(assert (=> d!20004 m!40609))

(assert (=> b!39433 d!20004))

(declare-fun d!20006 () Bool)

(assert (=> d!20006 (= (+!5 n1!194 (Succ!63 n2!205)) (Succ!63 (+!5 n1!194 n2!205)))))

(assert (=> d!20006 true))

(declare-fun x$7!67 () Unit!358)

(assert (=> d!20006 (= (plus_succ!0 n1!194 n2!205) x$7!67)))

(declare-fun bs!12079 () Bool)

(assert (= bs!12079 d!20006))

(declare-fun m!40611 () Bool)

(assert (=> bs!12079 m!40611))

(assert (=> bs!12079 m!40599))

(assert (=> b!39430 d!20006))

(push 1)

(assert (not b!39446))

(assert (not d!20004))

(assert (not b!39439))

(assert (not d!20006))

(assert (not d!20000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

