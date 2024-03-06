; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7410 () Bool)

(assert start!7410)

(declare-fun res!24324 () Bool)

(declare-fun e!27871 () Bool)

(assert (=> start!7410 (=> (not res!24324) (not e!27871))))

(declare-datatypes () ((List!438 (Nil!418) (Cons!417 (head!677 (_ BitVec 32)) (tail!703 List!438)))))

(declare-fun l!1121 () List!438)

(declare-fun e!27867 () (_ BitVec 32))

(assert (=> start!7410 (= res!24324 (and (not (is-Nil!418 l!1121)) (= e!27867 (head!677 l!1121))))))

(assert (=> start!7410 e!27871))

(assert (=> start!7410 true))

(declare-fun b!53470 () Bool)

(declare-fun res!24325 () Bool)

(assert (=> b!53470 (=> (not res!24325) (not e!27871))))

(declare-fun l!1132 () List!438)

(declare-fun sort!1 (List!438) List!438)

(assert (=> b!53470 (= res!24325 (= l!1132 (sort!1 (tail!703 l!1121))))))

(declare-fun b!53471 () Bool)

(declare-fun isSorted!5 (List!438) Bool)

(assert (=> b!53471 (= e!27871 (not (isSorted!5 l!1132)))))

(assert (= (and start!7410 res!24324) b!53470))

(assert (= (and b!53470 res!24325) b!53471))

(declare-fun m!57382 () Bool)

(assert (=> b!53470 m!57382))

(declare-fun m!57384 () Bool)

(assert (=> b!53471 m!57384))

(push 1)

(assert (not b!53471))

(assert (not b!53470))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44683 () Bool)

(declare-fun res!24330 () Bool)

(declare-fun e!27876 () Bool)

(assert (=> d!44683 (=> res!24330 e!27876)))

(assert (=> d!44683 (= res!24330 (or (is-Nil!418 l!1132) (and (is-Cons!417 l!1132) (is-Nil!418 (tail!703 l!1132)))))))

(assert (=> d!44683 (= (isSorted!5 l!1132) e!27876)))

(declare-fun b!53476 () Bool)

(declare-fun e!27877 () Bool)

(assert (=> b!53476 (= e!27876 e!27877)))

(declare-fun res!24331 () Bool)

(assert (=> b!53476 (=> (not res!24331) (not e!27877))))

(assert (=> b!53476 (= res!24331 (bvsle (head!677 l!1132) (head!677 (tail!703 l!1132))))))

(declare-fun b!53477 () Bool)

(assert (=> b!53477 (= e!27877 (isSorted!5 (Cons!417 (head!677 (tail!703 l!1132)) (tail!703 (tail!703 l!1132)))))))

(assert (= (and d!44683 (not res!24330)) b!53476))

(assert (= (and b!53476 res!24331) b!53477))

(declare-fun m!57386 () Bool)

(assert (=> b!53477 m!57386))

(assert (=> b!53471 d!44683))

(declare-fun b!53488 () Bool)

(declare-fun res!24338 () Bool)

(declare-fun e!27883 () Bool)

(assert (=> b!53488 (=> (not res!24338) (not e!27883))))

(declare-fun lt!9323 () List!438)

(assert (=> b!53488 (= res!24338 (isSorted!5 lt!9323))))

(declare-fun b!53486 () Bool)

(declare-fun e!27882 () List!438)

(assert (=> b!53486 (= e!27882 Nil!418)))

(declare-fun d!44685 () Bool)

(assert (=> d!44685 e!27883))

(declare-fun res!24337 () Bool)

(assert (=> d!44685 (=> (not res!24337) (not e!27883))))

(declare-fun contents!0 (List!438) (Set (_ BitVec 32)))

(assert (=> d!44685 (= res!24337 (= (contents!0 lt!9323) (contents!0 (tail!703 l!1121))))))

(assert (=> d!44685 (= lt!9323 e!27882)))

(declare-fun c!11603 () Bool)

(assert (=> d!44685 (= c!11603 (is-Nil!418 (tail!703 l!1121)))))

(assert (=> d!44685 (= (sort!1 (tail!703 l!1121)) lt!9323)))

(declare-fun b!53487 () Bool)

(declare-fun sortedIns!1 ((_ BitVec 32) List!438) List!438)

(assert (=> b!53487 (= e!27882 (sortedIns!1 (head!677 (tail!703 l!1121)) (sort!1 (tail!703 (tail!703 l!1121)))))))

(declare-fun b!53489 () Bool)

(declare-fun size!18 (List!438) Int)

(assert (=> b!53489 (= e!27883 (= (size!18 lt!9323) (size!18 (tail!703 l!1121))))))

(assert (= (and d!44685 c!11603) b!53486))

(assert (= (and d!44685 (not c!11603)) b!53487))

(assert (= (and d!44685 res!24337) b!53488))

(assert (= (and b!53488 res!24338) b!53489))

(declare-fun m!57388 () Bool)

(assert (=> b!53488 m!57388))

(declare-fun m!57390 () Bool)

(assert (=> d!44685 m!57390))

(declare-fun m!57392 () Bool)

(assert (=> d!44685 m!57392))

(declare-fun m!57394 () Bool)

(assert (=> b!53487 m!57394))

(assert (=> b!53487 m!57394))

(declare-fun m!57396 () Bool)

(assert (=> b!53487 m!57396))

(declare-fun m!57398 () Bool)

(assert (=> b!53489 m!57398))

(declare-fun m!57400 () Bool)

(assert (=> b!53489 m!57400))

(assert (=> b!53470 d!44685))

(push 1)

(assert (not d!44685))

(assert (not b!53477))

(assert (not b!53489))

(assert (not b!53487))

(assert (not b!53488))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

