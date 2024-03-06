; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8810 () Bool)

(assert start!8810)

(declare-fun b!61339 () Bool)

(declare-fun e!32812 () Bool)

(declare-datatypes () ((List!553 (Cons!518 (h!746 Int) (t!47248 List!553)) (Nil!519))))

(declare-fun list!641 () List!553)

(declare-fun size!521 (List!553) Int)

(assert (=> b!61339 (= e!32812 (> (size!521 (t!47248 list!641)) 2))))

(declare-fun res!28583 () Bool)

(declare-fun e!32811 () Bool)

(assert (=> start!8810 (=> (not res!28583) (not e!32811))))

(assert (=> start!8810 (= res!28583 (> (size!521 list!641) 1))))

(assert (=> start!8810 e!32811))

(assert (=> start!8810 true))

(declare-fun b!61338 () Bool)

(declare-fun res!28582 () Bool)

(assert (=> b!61338 (=> (not res!28582) (not e!32811))))

(assert (=> b!61338 (= res!28582 e!32812)))

(declare-fun res!28581 () Bool)

(assert (=> b!61338 (=> res!28581 e!32812)))

(assert (=> b!61338 (= res!28581 (not (is-Cons!518 list!641)))))

(declare-fun b!61341 () Bool)

(declare-fun list!648 () List!553)

(assert (=> b!61341 (= e!32811 (<= (size!521 list!648) 1))))

(declare-fun b!61340 () Bool)

(declare-fun res!28584 () Bool)

(assert (=> b!61340 (=> (not res!28584) (not e!32811))))

(assert (=> b!61340 (= res!28584 (= list!648 (t!47248 (t!47248 list!641))))))

(assert (= (and start!8810 res!28583) b!61338))

(assert (= (and b!61338 (not res!28581)) b!61339))

(assert (= (and b!61338 res!28582) b!61340))

(assert (= (and b!61340 res!28584) b!61341))

(declare-fun m!66844 () Bool)

(assert (=> b!61339 m!66844))

(declare-fun m!66846 () Bool)

(assert (=> start!8810 m!66846))

(declare-fun m!66848 () Bool)

(assert (=> b!61341 m!66848))

(push 1)

(assert (not b!61341))

(assert (not start!8810))

(assert (not b!61339))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52079 () Bool)

(declare-fun lt!11334 () Int)

(assert (=> d!52079 (>= lt!11334 0)))

(declare-fun e!32815 () Int)

(assert (=> d!52079 (= lt!11334 e!32815)))

(declare-fun c!13345 () Bool)

(assert (=> d!52079 (= c!13345 (is-Nil!519 list!648))))

(assert (=> d!52079 (= (size!521 list!648) lt!11334)))

(declare-fun b!61346 () Bool)

(assert (=> b!61346 (= e!32815 0)))

(declare-fun b!61347 () Bool)

(assert (=> b!61347 (= e!32815 (+ 1 (size!521 (t!47248 list!648))))))

(assert (= (and d!52079 c!13345) b!61346))

(assert (= (and d!52079 (not c!13345)) b!61347))

(declare-fun m!66850 () Bool)

(assert (=> b!61347 m!66850))

(assert (=> b!61341 d!52079))

(declare-fun d!52081 () Bool)

(declare-fun lt!11335 () Int)

(assert (=> d!52081 (>= lt!11335 0)))

(declare-fun e!32816 () Int)

(assert (=> d!52081 (= lt!11335 e!32816)))

(declare-fun c!13346 () Bool)

(assert (=> d!52081 (= c!13346 (is-Nil!519 list!641))))

(assert (=> d!52081 (= (size!521 list!641) lt!11335)))

(declare-fun b!61348 () Bool)

(assert (=> b!61348 (= e!32816 0)))

(declare-fun b!61349 () Bool)

(assert (=> b!61349 (= e!32816 (+ 1 (size!521 (t!47248 list!641))))))

(assert (= (and d!52081 c!13346) b!61348))

(assert (= (and d!52081 (not c!13346)) b!61349))

(assert (=> b!61349 m!66844))

(assert (=> start!8810 d!52081))

(declare-fun d!52083 () Bool)

(declare-fun lt!11336 () Int)

(assert (=> d!52083 (>= lt!11336 0)))

(declare-fun e!32817 () Int)

(assert (=> d!52083 (= lt!11336 e!32817)))

(declare-fun c!13347 () Bool)

(assert (=> d!52083 (= c!13347 (is-Nil!519 (t!47248 list!641)))))

(assert (=> d!52083 (= (size!521 (t!47248 list!641)) lt!11336)))

(declare-fun b!61350 () Bool)

(assert (=> b!61350 (= e!32817 0)))

(declare-fun b!61351 () Bool)

(assert (=> b!61351 (= e!32817 (+ 1 (size!521 (t!47248 (t!47248 list!641)))))))

(assert (= (and d!52083 c!13347) b!61350))

(assert (= (and d!52083 (not c!13347)) b!61351))

(declare-fun m!66852 () Bool)

(assert (=> b!61351 m!66852))

(assert (=> b!61339 d!52083))

(push 1)

(assert (not b!61347))

(assert (not b!61349))

(assert (not b!61351))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

