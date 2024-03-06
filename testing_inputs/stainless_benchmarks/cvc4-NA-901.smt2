; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6874 () Bool)

(assert start!6874)

(declare-fun res!23361 () Bool)

(declare-fun e!26405 () Bool)

(assert (=> start!6874 (=> (not res!23361) (not e!26405))))

(declare-datatypes () ((Nat!262 (Zero!246) (Succ!243 (n!1400 Nat!262)))))

(declare-fun n!773 () Nat!262)

(assert (=> start!6874 (= res!23361 (not (is-Zero!246 n!773)))))

(assert (=> start!6874 e!26405))

(assert (=> start!6874 true))

(declare-fun b!50898 () Bool)

(declare-fun res!23362 () Bool)

(assert (=> b!50898 (=> (not res!23362) (not e!26405))))

(declare-datatypes () ((Unit!826 (Unit!827))))

(declare-fun inductVal!101 () Unit!826)

(declare-fun plus_zero!0 (Nat!262) Unit!826)

(assert (=> b!50898 (= res!23362 (= inductVal!101 (plus_zero!0 (n!1400 n!773))))))

(declare-fun b!50899 () Bool)

(declare-fun res!23363 () Bool)

(assert (=> b!50899 (=> (not res!23363) (not e!26405))))

(declare-fun x$3!113 () Unit!826)

(declare-fun Unit!828 () Unit!826)

(assert (=> b!50899 (= res!23363 (= x$3!113 Unit!828))))

(declare-fun b!50900 () Bool)

(declare-fun +!5 (Nat!262 Nat!262) Nat!262)

(assert (=> b!50900 (= e!26405 (not (= (+!5 n!773 Zero!246) n!773)))))

(assert (= (and start!6874 res!23361) b!50898))

(assert (= (and b!50898 res!23362) b!50899))

(assert (= (and b!50899 res!23363) b!50900))

(declare-fun m!54471 () Bool)

(assert (=> b!50898 m!54471))

(declare-fun m!54473 () Bool)

(assert (=> b!50900 m!54473))

(push 1)

(assert (not b!50898))

(assert (not b!50900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!50906 () Bool)

(declare-fun e!26408 () Unit!826)

(declare-fun Unit!829 () Unit!826)

(assert (=> b!50906 (= e!26408 Unit!829)))

(declare-fun lt!8871 () Unit!826)

(assert (=> b!50906 (= lt!8871 (plus_zero!0 (n!1400 (n!1400 n!773))))))

(declare-fun d!43460 () Bool)

(assert (=> d!43460 (= (+!5 (n!1400 n!773) Zero!246) (n!1400 n!773))))

(declare-fun lt!8870 () Unit!826)

(assert (=> d!43460 (= lt!8870 e!26408)))

(declare-fun c!10754 () Bool)

(assert (=> d!43460 (= c!10754 (is-Zero!246 (n!1400 n!773)))))

(assert (=> d!43460 (= (plus_zero!0 (n!1400 n!773)) lt!8870)))

(declare-fun b!50905 () Bool)

(declare-fun Unit!830 () Unit!826)

(assert (=> b!50905 (= e!26408 Unit!830)))

(assert (= (and d!43460 c!10754) b!50905))

(assert (= (and d!43460 (not c!10754)) b!50906))

(declare-fun m!54475 () Bool)

(assert (=> b!50906 m!54475))

(declare-fun m!54477 () Bool)

(assert (=> d!43460 m!54477))

(assert (=> b!50898 d!43460))

(declare-fun d!43462 () Bool)

(declare-fun c!10757 () Bool)

(assert (=> d!43462 (= c!10757 (is-Zero!246 n!773))))

(declare-fun e!26411 () Nat!262)

(assert (=> d!43462 (= (+!5 n!773 Zero!246) e!26411)))

(declare-fun b!50911 () Bool)

(assert (=> b!50911 (= e!26411 Zero!246)))

(declare-fun b!50912 () Bool)

(assert (=> b!50912 (= e!26411 (Succ!243 (+!5 (n!1400 n!773) Zero!246)))))

(assert (= (and d!43462 c!10757) b!50911))

(assert (= (and d!43462 (not c!10757)) b!50912))

(assert (=> b!50912 m!54477))

(assert (=> b!50900 d!43462))

(push 1)

(assert (not d!43460))

(assert (not b!50912))

(assert (not b!50906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

