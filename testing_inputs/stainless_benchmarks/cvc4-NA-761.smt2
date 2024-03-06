; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5830 () Bool)

(assert start!5830)

(declare-fun res!20883 () Bool)

(declare-fun e!22853 () Bool)

(assert (=> start!5830 (=> (not res!20883) (not e!22853))))

(declare-datatypes () ((Nat!122 (Zero!106) (Succ!103 (n!1247 Nat!122)))))

(declare-fun n1!48 () Nat!122)

(declare-fun >!2 (Nat!122 Nat!122) Bool)

(assert (=> start!5830 (= res!20883 (>!2 n1!48 Zero!106))))

(assert (=> start!5830 e!22853))

(assert (=> start!5830 true))

(declare-fun b!44125 () Bool)

(declare-fun res!20884 () Bool)

(assert (=> b!44125 (=> (not res!20884) (not e!22853))))

(declare-fun n2!59 () Nat!122)

(assert (=> b!44125 (= res!20884 (>!2 n2!59 Zero!106))))

(declare-fun b!44126 () Bool)

(assert (=> b!44126 (= e!22853 (and (or (not (is-Succ!103 n1!48)) (not (is-Zero!106 (n!1247 n1!48)))) (not (is-Succ!103 n1!48))))))

(assert (= (and start!5830 res!20883) b!44125))

(assert (= (and b!44125 res!20884) b!44126))

(declare-fun m!47341 () Bool)

(assert (=> start!5830 m!47341))

(declare-fun m!47343 () Bool)

(assert (=> b!44125 m!47343))

(push 1)

(assert (not start!5830))

(assert (not b!44125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31232 () Bool)

(declare-fun res!20887 () Bool)

(declare-fun e!22856 () Bool)

(assert (=> d!31232 (=> (not res!20887) (not e!22856))))

(declare-fun <!2 (Nat!122 Nat!122) Bool)

(assert (=> d!31232 (= res!20887 (not (<!2 n1!48 Zero!106)))))

(assert (=> d!31232 (= (>!2 n1!48 Zero!106) e!22856)))

(declare-fun b!44129 () Bool)

(assert (=> b!44129 (= e!22856 (not (= n1!48 Zero!106)))))

(assert (= (and d!31232 res!20887) b!44129))

(declare-fun m!47345 () Bool)

(assert (=> d!31232 m!47345))

(assert (=> start!5830 d!31232))

(declare-fun d!31234 () Bool)

(declare-fun res!20888 () Bool)

(declare-fun e!22857 () Bool)

(assert (=> d!31234 (=> (not res!20888) (not e!22857))))

(assert (=> d!31234 (= res!20888 (not (<!2 n2!59 Zero!106)))))

(assert (=> d!31234 (= (>!2 n2!59 Zero!106) e!22857)))

(declare-fun b!44130 () Bool)

(assert (=> b!44130 (= e!22857 (not (= n2!59 Zero!106)))))

(assert (= (and d!31234 res!20888) b!44130))

(declare-fun m!47347 () Bool)

(assert (=> d!31234 m!47347))

(assert (=> b!44125 d!31234))

(push 1)

(assert (not d!31232))

(assert (not d!31234))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

