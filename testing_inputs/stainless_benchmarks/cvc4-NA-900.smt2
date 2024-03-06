; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6870 () Bool)

(assert start!6870)

(declare-fun res!23354 () Bool)

(declare-fun e!26399 () Bool)

(assert (=> start!6870 (=> (not res!23354) (not e!26399))))

(declare-datatypes () ((Nat!261 (Zero!245) (Succ!242 (n!1399 Nat!261)))))

(declare-fun n!773 () Nat!261)

(declare-datatypes () ((Unit!823 (Unit!824))))

(declare-fun x$3!111 () Unit!823)

(declare-fun Unit!825 () Unit!823)

(assert (=> start!6870 (= res!23354 (and (is-Zero!245 n!773) (= x$3!111 Unit!825)))))

(assert (=> start!6870 e!26399))

(assert (=> start!6870 true))

(declare-fun b!50885 () Bool)

(declare-fun +!5 (Nat!261 Nat!261) Nat!261)

(assert (=> b!50885 (= e!26399 (not (= (+!5 n!773 Zero!245) n!773)))))

(assert (= (and start!6870 res!23354) b!50885))

(declare-fun m!54467 () Bool)

(assert (=> b!50885 m!54467))

(push 1)

(assert (not b!50885))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43458 () Bool)

(declare-fun c!10751 () Bool)

(assert (=> d!43458 (= c!10751 (is-Zero!245 n!773))))

(declare-fun e!26402 () Nat!261)

(assert (=> d!43458 (= (+!5 n!773 Zero!245) e!26402)))

(declare-fun b!50890 () Bool)

(assert (=> b!50890 (= e!26402 Zero!245)))

(declare-fun b!50891 () Bool)

(assert (=> b!50891 (= e!26402 (Succ!242 (+!5 (n!1399 n!773) Zero!245)))))

(assert (= (and d!43458 c!10751) b!50890))

(assert (= (and d!43458 (not c!10751)) b!50891))

(declare-fun m!54469 () Bool)

(assert (=> b!50891 m!54469))

(assert (=> b!50885 d!43458))

(push 1)

(assert (not b!50891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

