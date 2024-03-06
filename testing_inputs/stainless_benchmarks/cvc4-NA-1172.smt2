; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8422 () Bool)

(assert start!8422)

(declare-fun res!27273 () Bool)

(declare-fun e!31381 () Bool)

(assert (=> start!8422 (=> (not res!27273) (not e!31381))))

(declare-datatypes () ((List!507 (Cons!481 (head!758 (_ BitVec 32)) (tail!784 List!507)) (Nil!482))))

(declare-fun l!1270 () List!507)

(declare-fun res!27138 () Int)

(declare-fun acc!20 () Int)

(assert (=> start!8422 (= res!27273 (and (>= acc!20 0) (is-Nil!482 l!1270) (= res!27138 acc!20)))))

(assert (=> start!8422 e!31381))

(assert (=> start!8422 true))

(declare-fun b!58975 () Bool)

(declare-fun size!17 (List!507) Int)

(assert (=> b!58975 (= e!31381 (not (= res!27138 (+ (size!17 l!1270) acc!20))))))

(assert (= (and start!8422 res!27273) b!58975))

(declare-fun m!63656 () Bool)

(assert (=> b!58975 m!63656))

(push 1)

(assert (not b!58975))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50860 () Bool)

(declare-fun lt!10845 () Int)

(assert (=> d!50860 (>= lt!10845 0)))

(declare-fun e!31384 () Int)

(assert (=> d!50860 (= lt!10845 e!31384)))

(declare-fun c!12712 () Bool)

(assert (=> d!50860 (= c!12712 (is-Nil!482 l!1270))))

(assert (=> d!50860 (= (size!17 l!1270) lt!10845)))

(declare-fun b!58980 () Bool)

(assert (=> b!58980 (= e!31384 0)))

(declare-fun b!58981 () Bool)

(assert (=> b!58981 (= e!31384 (+ 1 (size!17 (tail!784 l!1270))))))

(assert (= (and d!50860 c!12712) b!58980))

(assert (= (and d!50860 (not c!12712)) b!58981))

(declare-fun m!63658 () Bool)

(assert (=> b!58981 m!63658))

(assert (=> b!58975 d!50860))

(push 1)

(assert (not b!58981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

