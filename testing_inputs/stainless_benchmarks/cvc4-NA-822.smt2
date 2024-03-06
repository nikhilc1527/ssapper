; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6190 () Bool)

(assert start!6190)

(declare-fun res!21687 () Bool)

(declare-fun e!23813 () Bool)

(assert (=> start!6190 (=> (not res!21687) (not e!23813))))

(declare-datatypes () ((Nat!183 (Zero!167) (Succ!164 (n!1318 Nat!183)))))

(declare-fun n!591 () Nat!183)

(declare-datatypes () ((Unit!575 (Unit!576))))

(declare-fun x$5!54 () Unit!575)

(declare-fun Unit!577 () Unit!575)

(assert (=> start!6190 (= res!21687 (and (is-Zero!167 n!591) (= x$5!54 Unit!577)))))

(assert (=> start!6190 e!23813))

(assert (=> start!6190 true))

(declare-fun b!45899 () Bool)

(declare-fun -!4 (Nat!183 Nat!183) Nat!183)

(assert (=> b!45899 (= e!23813 (not (= (-!4 n!591 n!591) Zero!167)))))

(assert (= (and start!6190 res!21687) b!45899))

(declare-fun m!48795 () Bool)

(assert (=> b!45899 m!48795))

(push 1)

(assert (not b!45899))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!45910 () Bool)

(declare-fun e!23820 () Bool)

(declare-fun lt!8363 () Nat!183)

(declare-fun repr!0 (Nat!183) Int)

(assert (=> b!45910 (= e!23820 (< (repr!0 lt!8363) (repr!0 n!591)))))

(declare-fun d!32062 () Bool)

(declare-fun e!23822 () Bool)

(assert (=> d!32062 e!23822))

(declare-fun res!21697 () Bool)

(assert (=> d!32062 (=> (not res!21697) (not e!23822))))

(assert (=> d!32062 (= res!21697 (<= (repr!0 lt!8363) (repr!0 n!591)))))

(declare-fun e!23821 () Nat!183)

(assert (=> d!32062 (= lt!8363 e!23821)))

(declare-fun c!9704 () Bool)

(assert (=> d!32062 (= c!9704 (and (is-Succ!164 n!591) (is-Succ!164 n!591)))))

(assert (=> d!32062 (= (-!4 n!591 n!591) lt!8363)))

(declare-fun b!45911 () Bool)

(assert (=> b!45911 (= e!23821 n!591)))

(declare-fun b!45912 () Bool)

(assert (=> b!45912 (= e!23822 e!23820)))

(declare-fun res!21696 () Bool)

(assert (=> b!45912 (=> res!21696 e!23820)))

(declare-fun >!2 (Nat!183 Nat!183) Bool)

(assert (=> b!45912 (= res!21696 (not (>!2 n!591 Zero!167)))))

(declare-fun b!45913 () Bool)

(assert (=> b!45913 (= e!23821 (-!4 (n!1318 n!591) (n!1318 n!591)))))

(declare-fun b!45914 () Bool)

(declare-fun res!21695 () Bool)

(assert (=> b!45914 (=> res!21695 e!23820)))

(assert (=> b!45914 (= res!21695 (not (>!2 n!591 Zero!167)))))

(assert (= (and d!32062 c!9704) b!45913))

(assert (= (and d!32062 (not c!9704)) b!45911))

(assert (= (and d!32062 res!21697) b!45912))

(assert (= (and b!45912 (not res!21696)) b!45914))

(assert (= (and b!45914 (not res!21695)) b!45910))

(declare-fun m!48797 () Bool)

(assert (=> b!45914 m!48797))

(declare-fun m!48799 () Bool)

(assert (=> d!32062 m!48799))

(declare-fun m!48801 () Bool)

(assert (=> d!32062 m!48801))

(assert (=> b!45910 m!48799))

(assert (=> b!45910 m!48801))

(declare-fun m!48803 () Bool)

(assert (=> b!45913 m!48803))

(assert (=> b!45912 m!48797))

(assert (=> b!45899 d!32062))

(push 1)

(assert (not d!32062))

(assert (not b!45913))

(assert (not b!45912))

(assert (not b!45914))

(assert (not b!45910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

