; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6880 () Bool)

(assert start!6880)

(declare-fun res!23366 () Bool)

(declare-fun e!26414 () Bool)

(assert (=> start!6880 (=> (not res!23366) (not e!26414))))

(declare-datatypes () ((Nat!263 (Zero!247) (Succ!244 (n!1402 Nat!263)))))

(declare-fun n1!57 () Nat!263)

(declare-datatypes () ((Unit!831 (Unit!832))))

(declare-fun x$7!59 () Unit!831)

(declare-fun Unit!833 () Unit!831)

(assert (=> start!6880 (= res!23366 (and (is-Zero!247 n1!57) (= x$7!59 Unit!833)))))

(assert (=> start!6880 e!26414))

(assert (=> start!6880 true))

(declare-fun b!50915 () Bool)

(declare-fun n2!68 () Nat!263)

(declare-fun +!5 (Nat!263 Nat!263) Nat!263)

(assert (=> b!50915 (= e!26414 (not (= (+!5 n1!57 (Succ!244 n2!68)) (Succ!244 (+!5 n1!57 n2!68)))))))

(assert (= (and start!6880 res!23366) b!50915))

(declare-fun m!54479 () Bool)

(assert (=> b!50915 m!54479))

(declare-fun m!54481 () Bool)

(assert (=> b!50915 m!54481))

(push 1)

(assert (not b!50915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43464 () Bool)

(declare-fun c!10760 () Bool)

(assert (=> d!43464 (= c!10760 (is-Zero!247 n1!57))))

(declare-fun e!26417 () Nat!263)

(assert (=> d!43464 (= (+!5 n1!57 (Succ!244 n2!68)) e!26417)))

(declare-fun b!50920 () Bool)

(assert (=> b!50920 (= e!26417 (Succ!244 n2!68))))

(declare-fun b!50921 () Bool)

(assert (=> b!50921 (= e!26417 (Succ!244 (+!5 (n!1402 n1!57) (Succ!244 n2!68))))))

(assert (= (and d!43464 c!10760) b!50920))

(assert (= (and d!43464 (not c!10760)) b!50921))

(declare-fun m!54483 () Bool)

(assert (=> b!50921 m!54483))

(assert (=> b!50915 d!43464))

(declare-fun d!43466 () Bool)

(declare-fun c!10761 () Bool)

(assert (=> d!43466 (= c!10761 (is-Zero!247 n1!57))))

(declare-fun e!26418 () Nat!263)

(assert (=> d!43466 (= (+!5 n1!57 n2!68) e!26418)))

(declare-fun b!50922 () Bool)

(assert (=> b!50922 (= e!26418 n2!68)))

(declare-fun b!50923 () Bool)

(assert (=> b!50923 (= e!26418 (Succ!244 (+!5 (n!1402 n1!57) n2!68)))))

(assert (= (and d!43466 c!10761) b!50922))

(assert (= (and d!43466 (not c!10761)) b!50923))

(declare-fun m!54485 () Bool)

(assert (=> b!50923 m!54485))

(assert (=> b!50915 d!43466))

(push 1)

(assert (not b!50923))

(assert (not b!50921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

