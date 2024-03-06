; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4792 () Bool)

(assert start!4792)

(declare-fun res!17882 () Bool)

(declare-fun e!19332 () Bool)

(assert (=> start!4792 (=> (not res!17882) (not e!19332))))

(declare-datatypes () ((Nat!40 (Zero!24) (Succ!21 (n!1103 Nat!40)))))

(declare-fun n1!166 () Nat!40)

(declare-fun >!2 (Nat!40 Nat!40) Bool)

(assert (=> start!4792 (= res!17882 (>!2 n1!166 Zero!24))))

(assert (=> start!4792 e!19332))

(assert (=> start!4792 true))

(declare-fun b!37592 () Bool)

(declare-fun res!17883 () Bool)

(assert (=> b!37592 (=> (not res!17883) (not e!19332))))

(declare-fun n2!177 () Nat!40)

(declare-fun <=!2 (Nat!40 Nat!40) Bool)

(assert (=> b!37592 (= res!17883 (<=!2 n1!166 n2!177))))

(declare-fun b!37593 () Bool)

(declare-fun res!17884 () Bool)

(assert (=> b!37593 (=> (not res!17884) (not e!19332))))

(declare-fun res!17692 () Nat!40)

(declare-fun n2!178 () Nat!40)

(declare-fun t!5153 () Nat!40)

(declare-fun n1!167 () Nat!40)

(declare-fun p1!51 () Nat!40)

(assert (=> b!37593 (= res!17884 (and (= t!5153 (n!1103 n1!166)) (= res!17692 t!5153) (= p1!51 res!17692) (= n1!167 p1!51) (= n2!178 p1!51)))))

(declare-fun b!37594 () Bool)

(assert (=> b!37594 (= e!19332 (not (<=!2 n1!167 n2!178)))))

(assert (= (and start!4792 res!17882) b!37592))

(assert (= (and b!37592 res!17883) b!37593))

(assert (= (and b!37593 res!17884) b!37594))

(declare-fun m!38883 () Bool)

(assert (=> start!4792 m!38883))

(declare-fun m!38885 () Bool)

(assert (=> b!37592 m!38885))

(declare-fun m!38887 () Bool)

(assert (=> b!37594 m!38887))

(push 1)

(assert (not b!37594))

(assert (not b!37592))

(assert (not start!4792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18844 () Bool)

(declare-fun res!17887 () Bool)

(declare-fun e!19335 () Bool)

(assert (=> d!18844 (=> res!17887 e!19335)))

(declare-fun <!2 (Nat!40 Nat!40) Bool)

(assert (=> d!18844 (= res!17887 (<!2 n1!167 n2!178))))

(assert (=> d!18844 (= (<=!2 n1!167 n2!178) e!19335)))

(declare-fun b!37597 () Bool)

(assert (=> b!37597 (= e!19335 (= n1!167 n2!178))))

(assert (= (and d!18844 (not res!17887)) b!37597))

(declare-fun m!38889 () Bool)

(assert (=> d!18844 m!38889))

(assert (=> b!37594 d!18844))

(declare-fun d!18846 () Bool)

(declare-fun res!17888 () Bool)

(declare-fun e!19336 () Bool)

(assert (=> d!18846 (=> res!17888 e!19336)))

(assert (=> d!18846 (= res!17888 (<!2 n1!166 n2!177))))

(assert (=> d!18846 (= (<=!2 n1!166 n2!177) e!19336)))

(declare-fun b!37598 () Bool)

(assert (=> b!37598 (= e!19336 (= n1!166 n2!177))))

(assert (= (and d!18846 (not res!17888)) b!37598))

(declare-fun m!38891 () Bool)

(assert (=> d!18846 m!38891))

(assert (=> b!37592 d!18846))

(declare-fun d!18848 () Bool)

(declare-fun res!17891 () Bool)

(declare-fun e!19339 () Bool)

(assert (=> d!18848 (=> (not res!17891) (not e!19339))))

(assert (=> d!18848 (= res!17891 (not (<!2 n1!166 Zero!24)))))

(assert (=> d!18848 (= (>!2 n1!166 Zero!24) e!19339)))

(declare-fun b!37601 () Bool)

(assert (=> b!37601 (= e!19339 (not (= n1!166 Zero!24)))))

(assert (= (and d!18848 res!17891) b!37601))

(declare-fun m!38893 () Bool)

(assert (=> d!18848 m!38893))

(assert (=> start!4792 d!18848))

(push 1)

(assert (not d!18848))

(assert (not d!18844))

(assert (not d!18846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

