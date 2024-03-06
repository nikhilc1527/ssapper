; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8426 () Bool)

(assert start!8426)

(declare-fun res!27279 () Bool)

(declare-fun e!31387 () Bool)

(assert (=> start!8426 (=> (not res!27279) (not e!31387))))

(declare-fun acc!20 () Int)

(declare-datatypes () ((List!508 (Cons!482 (head!759 (_ BitVec 32)) (tail!785 List!508)) (Nil!483))))

(declare-fun l!1270 () List!508)

(assert (=> start!8426 (= res!27279 (and (>= acc!20 0) (not (is-Nil!483 l!1270))))))

(assert (=> start!8426 e!31387))

(assert (=> start!8426 true))

(declare-fun b!58986 () Bool)

(declare-fun res!27280 () Bool)

(assert (=> b!58986 (=> (not res!27280) (not e!31387))))

(declare-fun res!27140 () Int)

(declare-fun sizeTailRecAcc!0 (List!508 Int) Int)

(assert (=> b!58986 (= res!27280 (= res!27140 (sizeTailRecAcc!0 (tail!785 l!1270) (+ acc!20 1))))))

(declare-fun b!58987 () Bool)

(declare-fun size!17 (List!508) Int)

(assert (=> b!58987 (= e!31387 (not (= res!27140 (+ (size!17 l!1270) acc!20))))))

(assert (= (and start!8426 res!27279) b!58986))

(assert (= (and b!58986 res!27280) b!58987))

(declare-fun m!63660 () Bool)

(assert (=> b!58986 m!63660))

(declare-fun m!63662 () Bool)

(assert (=> b!58987 m!63662))

(push 1)

(assert (not b!58986))

(assert (not b!58987))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50862 () Bool)

(declare-fun lt!10848 () Int)

(assert (=> d!50862 (= lt!10848 (+ (size!17 (tail!785 l!1270)) (+ acc!20 1)))))

(declare-fun e!31390 () Int)

(assert (=> d!50862 (= lt!10848 e!31390)))

(declare-fun c!12715 () Bool)

(assert (=> d!50862 (= c!12715 (is-Nil!483 (tail!785 l!1270)))))

(assert (=> d!50862 (>= (+ acc!20 1) 0)))

(assert (=> d!50862 (= (sizeTailRecAcc!0 (tail!785 l!1270) (+ acc!20 1)) lt!10848)))

(declare-fun b!58992 () Bool)

(assert (=> b!58992 (= e!31390 (+ acc!20 1))))

(declare-fun b!58993 () Bool)

(assert (=> b!58993 (= e!31390 (sizeTailRecAcc!0 (tail!785 (tail!785 l!1270)) (+ (+ acc!20 1) 1)))))

(assert (= (and d!50862 c!12715) b!58992))

(assert (= (and d!50862 (not c!12715)) b!58993))

(declare-fun m!63664 () Bool)

(assert (=> d!50862 m!63664))

(declare-fun m!63666 () Bool)

(assert (=> b!58993 m!63666))

(assert (=> b!58986 d!50862))

(declare-fun d!50864 () Bool)

(declare-fun lt!10851 () Int)

(assert (=> d!50864 (>= lt!10851 0)))

(declare-fun e!31393 () Int)

(assert (=> d!50864 (= lt!10851 e!31393)))

(declare-fun c!12718 () Bool)

(assert (=> d!50864 (= c!12718 (is-Nil!483 l!1270))))

(assert (=> d!50864 (= (size!17 l!1270) lt!10851)))

(declare-fun b!58998 () Bool)

(assert (=> b!58998 (= e!31393 0)))

(declare-fun b!58999 () Bool)

(assert (=> b!58999 (= e!31393 (+ 1 (size!17 (tail!785 l!1270))))))

(assert (= (and d!50864 c!12718) b!58998))

(assert (= (and d!50864 (not c!12718)) b!58999))

(assert (=> b!58999 m!63664))

(assert (=> b!58987 d!50864))

(push 1)

(assert (not b!58993))

(assert (not d!50862))

(assert (not b!58999))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

