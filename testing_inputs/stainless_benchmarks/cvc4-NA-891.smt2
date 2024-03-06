; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6810 () Bool)

(assert start!6810)

(declare-fun res!23219 () Bool)

(declare-fun e!26255 () Bool)

(assert (=> start!6810 (=> (not res!23219) (not e!26255))))

(declare-datatypes () ((Nat!252 (Zero!236) (Succ!233 (n!1389 Nat!252)))))

(declare-fun n1!161 () Nat!252)

(declare-datatypes () ((Unit!800 (Unit!801))))

(declare-fun x$6!63 () Unit!800)

(declare-fun Unit!802 () Unit!800)

(assert (=> start!6810 (= res!23219 (and (is-Zero!236 n1!161) (= x$6!63 Unit!802)))))

(assert (=> start!6810 e!26255))

(assert (=> start!6810 true))

(declare-fun n2!172 () Nat!252)

(declare-fun b!50574 () Bool)

(declare-fun n3!45 () Nat!252)

(declare-fun +!5 (Nat!252 Nat!252) Nat!252)

(assert (=> b!50574 (= e!26255 (not (= (+!5 (+!5 n1!161 n2!172) n3!45) (+!5 n1!161 (+!5 n2!172 n3!45)))))))

(assert (= (and start!6810 res!23219) b!50574))

(declare-fun m!54205 () Bool)

(assert (=> b!50574 m!54205))

(assert (=> b!50574 m!54205))

(declare-fun m!54207 () Bool)

(assert (=> b!50574 m!54207))

(declare-fun m!54209 () Bool)

(assert (=> b!50574 m!54209))

(assert (=> b!50574 m!54209))

(declare-fun m!54211 () Bool)

(assert (=> b!50574 m!54211))

(push 1)

(assert (not b!50574))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43120 () Bool)

(declare-fun c!10712 () Bool)

(assert (=> d!43120 (= c!10712 (is-Zero!236 (+!5 n1!161 n2!172)))))

(declare-fun e!26258 () Nat!252)

(assert (=> d!43120 (= (+!5 (+!5 n1!161 n2!172) n3!45) e!26258)))

(declare-fun b!50579 () Bool)

(assert (=> b!50579 (= e!26258 n3!45)))

(declare-fun b!50580 () Bool)

(assert (=> b!50580 (= e!26258 (Succ!233 (+!5 (n!1389 (+!5 n1!161 n2!172)) n3!45)))))

(assert (= (and d!43120 c!10712) b!50579))

(assert (= (and d!43120 (not c!10712)) b!50580))

(declare-fun m!54213 () Bool)

(assert (=> b!50580 m!54213))

(assert (=> b!50574 d!43120))

(declare-fun d!43122 () Bool)

(declare-fun c!10713 () Bool)

(assert (=> d!43122 (= c!10713 (is-Zero!236 n1!161))))

(declare-fun e!26259 () Nat!252)

(assert (=> d!43122 (= (+!5 n1!161 n2!172) e!26259)))

(declare-fun b!50581 () Bool)

(assert (=> b!50581 (= e!26259 n2!172)))

(declare-fun b!50582 () Bool)

(assert (=> b!50582 (= e!26259 (Succ!233 (+!5 (n!1389 n1!161) n2!172)))))

(assert (= (and d!43122 c!10713) b!50581))

(assert (= (and d!43122 (not c!10713)) b!50582))

(declare-fun m!54215 () Bool)

(assert (=> b!50582 m!54215))

(assert (=> b!50574 d!43122))

(declare-fun d!43124 () Bool)

(declare-fun c!10714 () Bool)

(assert (=> d!43124 (= c!10714 (is-Zero!236 n1!161))))

(declare-fun e!26260 () Nat!252)

(assert (=> d!43124 (= (+!5 n1!161 (+!5 n2!172 n3!45)) e!26260)))

(declare-fun b!50583 () Bool)

(assert (=> b!50583 (= e!26260 (+!5 n2!172 n3!45))))

(declare-fun b!50584 () Bool)

(assert (=> b!50584 (= e!26260 (Succ!233 (+!5 (n!1389 n1!161) (+!5 n2!172 n3!45))))))

(assert (= (and d!43124 c!10714) b!50583))

(assert (= (and d!43124 (not c!10714)) b!50584))

(assert (=> b!50584 m!54209))

(declare-fun m!54217 () Bool)

(assert (=> b!50584 m!54217))

(assert (=> b!50574 d!43124))

(declare-fun d!43126 () Bool)

(declare-fun c!10715 () Bool)

(assert (=> d!43126 (= c!10715 (is-Zero!236 n2!172))))

(declare-fun e!26261 () Nat!252)

(assert (=> d!43126 (= (+!5 n2!172 n3!45) e!26261)))

(declare-fun b!50585 () Bool)

(assert (=> b!50585 (= e!26261 n3!45)))

(declare-fun b!50586 () Bool)

(assert (=> b!50586 (= e!26261 (Succ!233 (+!5 (n!1389 n2!172) n3!45)))))

(assert (= (and d!43126 c!10715) b!50585))

(assert (= (and d!43126 (not c!10715)) b!50586))

(declare-fun m!54219 () Bool)

(assert (=> b!50586 m!54219))

(assert (=> b!50574 d!43126))

(push 1)

(assert (not b!50580))

(assert (not b!50586))

(assert (not b!50584))

(assert (not b!50582))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

