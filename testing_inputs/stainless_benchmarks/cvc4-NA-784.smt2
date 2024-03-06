; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5970 () Bool)

(assert start!5970)

(declare-fun res!21115 () Bool)

(declare-fun e!23101 () Bool)

(assert (=> start!5970 (=> (not res!21115) (not e!23101))))

(declare-datatypes () ((Nat!145 (Zero!129) (Succ!126 (n!1275 Nat!145)))))

(declare-fun n1!345 () Nat!145)

(declare-fun n2!361 () Nat!145)

(declare-fun <!2 (Nat!145 Nat!145) Bool)

(assert (=> start!5970 (= res!21115 (<!2 n1!345 n2!361))))

(assert (=> start!5970 e!23101))

(assert (=> start!5970 true))

(declare-fun b!44613 () Bool)

(declare-datatypes () ((Unit!484 (Unit!485))))

(declare-fun x$45!54 () Unit!484)

(declare-fun n!1039 () Nat!145)

(declare-fun Unit!486 () Unit!484)

(assert (=> b!44613 (= e!23101 (and (= n!1039 (n!1275 n2!361)) (or (not (is-Succ!126 n2!361)) (not (= (n!1275 n2!361) n1!345))) (is-Zero!129 n1!345) (= x$45!54 Unit!486) (not (is-Succ!126 n2!361))))))

(assert (= (and start!5970 res!21115) b!44613))

(declare-fun m!47787 () Bool)

(assert (=> start!5970 m!47787))

(push 1)

(assert (not start!5970))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31430 () Bool)

(declare-fun lt!8172 () Bool)

(declare-fun repr!0 (Nat!145) Int)

(assert (=> d!31430 (= lt!8172 (< (repr!0 n1!345) (repr!0 n2!361)))))

(declare-fun e!23104 () Bool)

(assert (=> d!31430 (= lt!8172 e!23104)))

(declare-fun c!9539 () Bool)

(assert (=> d!31430 (= c!9539 (and (is-Succ!126 n1!345) (is-Succ!126 n2!361)))))

(assert (=> d!31430 (= (<!2 n1!345 n2!361) lt!8172)))

(declare-fun b!44618 () Bool)

(assert (=> b!44618 (= e!23104 (<!2 (n!1275 n1!345) (n!1275 n2!361)))))

(declare-fun b!44619 () Bool)

(assert (=> b!44619 (= e!23104 (and (is-Zero!129 n1!345) (is-Succ!126 n2!361)))))

(assert (= (and d!31430 c!9539) b!44618))

(assert (= (and d!31430 (not c!9539)) b!44619))

(declare-fun m!47789 () Bool)

(assert (=> d!31430 m!47789))

(declare-fun m!47791 () Bool)

(assert (=> d!31430 m!47791))

(declare-fun m!47793 () Bool)

(assert (=> b!44618 m!47793))

(assert (=> start!5970 d!31430))

(push 1)

(assert (not d!31430))

(assert (not b!44618))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

