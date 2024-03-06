; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7424 () Bool)

(assert start!7424)

(declare-fun b!53530 () Bool)

(declare-fun e!27908 () Bool)

(declare-fun e!27909 () Bool)

(assert (=> b!53530 (= e!27908 e!27909)))

(declare-fun res!24364 () Bool)

(assert (=> b!53530 (=> res!24364 e!27909)))

(declare-datatypes () ((List!440 (Nil!420) (Cons!419 (head!679 (_ BitVec 32)) (tail!705 List!440)))))

(declare-fun res!24317 () List!440)

(declare-fun l!1121 () List!440)

(declare-fun contents!0 (List!440) (Set (_ BitVec 32)))

(assert (=> b!53530 (= res!24364 (not (= (contents!0 res!24317) (contents!0 l!1121))))))

(declare-fun res!24363 () Bool)

(assert (=> start!7424 (=> (not res!24363) (not e!27908))))

(assert (=> start!7424 (= res!24363 (not (is-Nil!420 l!1121)))))

(assert (=> start!7424 e!27908))

(assert (=> start!7424 true))

(declare-fun b!53529 () Bool)

(declare-fun res!24365 () Bool)

(assert (=> b!53529 (=> (not res!24365) (not e!27908))))

(declare-fun sortedIns!1 ((_ BitVec 32) List!440) List!440)

(declare-fun sort!1 (List!440) List!440)

(assert (=> b!53529 (= res!24365 (= res!24317 (sortedIns!1 (head!679 l!1121) (sort!1 (tail!705 l!1121)))))))

(declare-fun b!53532 () Bool)

(declare-fun size!18 (List!440) Int)

(assert (=> b!53532 (= e!27909 (not (= (size!18 res!24317) (size!18 l!1121))))))

(declare-fun b!53531 () Bool)

(declare-fun res!24362 () Bool)

(assert (=> b!53531 (=> res!24362 e!27909)))

(declare-fun isSorted!5 (List!440) Bool)

(assert (=> b!53531 (= res!24362 (not (isSorted!5 res!24317)))))

(assert (= (and start!7424 res!24363) b!53529))

(assert (= (and b!53529 res!24365) b!53530))

(assert (= (and b!53530 (not res!24364)) b!53531))

(assert (= (and b!53531 (not res!24362)) b!53532))

(declare-fun m!57426 () Bool)

(assert (=> b!53530 m!57426))

(declare-fun m!57428 () Bool)

(assert (=> b!53530 m!57428))

(declare-fun m!57430 () Bool)

(assert (=> b!53529 m!57430))

(assert (=> b!53529 m!57430))

(declare-fun m!57432 () Bool)

(assert (=> b!53529 m!57432))

(declare-fun m!57434 () Bool)

(assert (=> b!53532 m!57434))

(declare-fun m!57436 () Bool)

(assert (=> b!53532 m!57436))

(declare-fun m!57438 () Bool)

(assert (=> b!53531 m!57438))

(push 1)

(assert (not b!53532))

(assert (not b!53529))

(assert (not b!53531))

(assert (not b!53530))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44697 () Bool)

(declare-fun lt!9330 () Int)

(assert (=> d!44697 (>= lt!9330 0)))

(declare-fun e!27912 () Int)

(assert (=> d!44697 (= lt!9330 e!27912)))

(declare-fun c!11614 () Bool)

(assert (=> d!44697 (= c!11614 (is-Nil!420 res!24317))))

(assert (=> d!44697 (= (size!18 res!24317) lt!9330)))

(declare-fun b!53537 () Bool)

(assert (=> b!53537 (= e!27912 0)))

(declare-fun b!53538 () Bool)

(assert (=> b!53538 (= e!27912 (+ 1 (size!18 (tail!705 res!24317))))))

(assert (= (and d!44697 c!11614) b!53537))

(assert (= (and d!44697 (not c!11614)) b!53538))

(declare-fun m!57440 () Bool)

(assert (=> b!53538 m!57440))

(assert (=> b!53532 d!44697))

(declare-fun d!44699 () Bool)

(declare-fun lt!9331 () Int)

(assert (=> d!44699 (>= lt!9331 0)))

(declare-fun e!27913 () Int)

(assert (=> d!44699 (= lt!9331 e!27913)))

(declare-fun c!11615 () Bool)

(assert (=> d!44699 (= c!11615 (is-Nil!420 l!1121))))

(assert (=> d!44699 (= (size!18 l!1121) lt!9331)))

(declare-fun b!53539 () Bool)

(assert (=> b!53539 (= e!27913 0)))

(declare-fun b!53540 () Bool)

(assert (=> b!53540 (= e!27913 (+ 1 (size!18 (tail!705 l!1121))))))

(assert (= (and d!44699 c!11615) b!53539))

(assert (= (and d!44699 (not c!11615)) b!53540))

(declare-fun m!57442 () Bool)

(assert (=> b!53540 m!57442))

(assert (=> b!53532 d!44699))

(declare-fun d!44701 () Bool)

(declare-fun e!27923 () Bool)

(assert (=> d!44701 e!27923))

(declare-fun res!24374 () Bool)

(assert (=> d!44701 (=> (not res!24374) (not e!27923))))

(declare-fun lt!9334 () List!440)

(assert (=> d!44701 (= res!24374 (is-Cons!419 lt!9334))))

(declare-fun e!27921 () List!440)

(assert (=> d!44701 (= lt!9334 e!27921)))

(declare-fun c!11621 () Bool)

(assert (=> d!44701 (= c!11621 (is-Nil!420 (sort!1 (tail!705 l!1121))))))

(assert (=> d!44701 (isSorted!5 (sort!1 (tail!705 l!1121)))))

(assert (=> d!44701 (= (sortedIns!1 (head!679 l!1121) (sort!1 (tail!705 l!1121))) lt!9334)))

(declare-fun b!53555 () Bool)

(assert (=> b!53555 (= e!27921 (Cons!419 (head!679 l!1121) Nil!420))))

(declare-fun b!53556 () Bool)

(declare-fun res!24373 () Bool)

(assert (=> b!53556 (=> (not res!24373) (not e!27923))))

(assert (=> b!53556 (= res!24373 (isSorted!5 lt!9334))))

(declare-fun b!53557 () Bool)

(assert (=> b!53557 (= e!27923 (= (size!18 lt!9334) (+ (size!18 (sort!1 (tail!705 l!1121))) 1)))))

(declare-fun b!53558 () Bool)

(declare-fun e!27922 () List!440)

(assert (=> b!53558 (= e!27922 (Cons!419 (head!679 l!1121) (sort!1 (tail!705 l!1121))))))

(declare-fun b!53559 () Bool)

(assert (=> b!53559 (= e!27922 (Cons!419 (head!679 (sort!1 (tail!705 l!1121))) (sortedIns!1 (head!679 l!1121) (tail!705 (sort!1 (tail!705 l!1121))))))))

(declare-fun b!53560 () Bool)

(declare-fun res!24375 () Bool)

(assert (=> b!53560 (=> (not res!24375) (not e!27923))))

(assert (=> b!53560 (= res!24375 (= (contents!0 lt!9334) (union (contents!0 (sort!1 (tail!705 l!1121))) (insert (head!679 l!1121) (as emptyset (Set (_ BitVec 32)))))))))

(declare-fun b!53561 () Bool)

(assert (=> b!53561 (= e!27921 e!27922)))

(declare-fun c!11620 () Bool)

(assert (=> b!53561 (= c!11620 (bvsle (head!679 (sort!1 (tail!705 l!1121))) (head!679 l!1121)))))

(assert (= (and b!53561 c!11620) b!53559))

(assert (= (and b!53561 (not c!11620)) b!53558))

(assert (= (and d!44701 c!11621) b!53555))

(assert (= (and d!44701 (not c!11621)) b!53561))

(assert (= (and d!44701 res!24374) b!53560))

(assert (= (and b!53560 res!24375) b!53556))

(assert (= (and b!53556 res!24373) b!53557))

(declare-fun m!57444 () Bool)

(assert (=> b!53559 m!57444))

(assert (=> d!44701 m!57430))

(declare-fun m!57446 () Bool)

(assert (=> d!44701 m!57446))

(declare-fun m!57448 () Bool)

(assert (=> b!53560 m!57448))

(assert (=> b!53560 m!57430))

(declare-fun m!57450 () Bool)

(assert (=> b!53560 m!57450))

(declare-fun m!57452 () Bool)

(assert (=> b!53560 m!57452))

(declare-fun m!57454 () Bool)

(assert (=> b!53556 m!57454))

(declare-fun m!57456 () Bool)

(assert (=> b!53557 m!57456))

(assert (=> b!53557 m!57430))

(declare-fun m!57458 () Bool)

(assert (=> b!53557 m!57458))

(assert (=> b!53529 d!44701))

(declare-fun b!53573 () Bool)

(declare-fun e!27928 () Bool)

(declare-fun lt!9337 () List!440)

(assert (=> b!53573 (= e!27928 (= (size!18 lt!9337) (size!18 (tail!705 l!1121))))))

(declare-fun b!53570 () Bool)

(declare-fun e!27929 () List!440)

(assert (=> b!53570 (= e!27929 Nil!420)))

(declare-fun d!44703 () Bool)

(assert (=> d!44703 e!27928))

(declare-fun res!24381 () Bool)

(assert (=> d!44703 (=> (not res!24381) (not e!27928))))

(assert (=> d!44703 (= res!24381 (= (contents!0 lt!9337) (contents!0 (tail!705 l!1121))))))

(assert (=> d!44703 (= lt!9337 e!27929)))

(declare-fun c!11624 () Bool)

(assert (=> d!44703 (= c!11624 (is-Nil!420 (tail!705 l!1121)))))

(assert (=> d!44703 (= (sort!1 (tail!705 l!1121)) lt!9337)))

(declare-fun b!53572 () Bool)

(declare-fun res!24382 () Bool)

(assert (=> b!53572 (=> (not res!24382) (not e!27928))))

(assert (=> b!53572 (= res!24382 (isSorted!5 lt!9337))))

(declare-fun b!53571 () Bool)

(assert (=> b!53571 (= e!27929 (sortedIns!1 (head!679 (tail!705 l!1121)) (sort!1 (tail!705 (tail!705 l!1121)))))))

(assert (= (and d!44703 c!11624) b!53570))

(assert (= (and d!44703 (not c!11624)) b!53571))

(assert (= (and d!44703 res!24381) b!53572))

(assert (= (and b!53572 res!24382) b!53573))

(declare-fun m!57460 () Bool)

(assert (=> b!53573 m!57460))

(assert (=> b!53573 m!57442))

(declare-fun m!57462 () Bool)

(assert (=> d!44703 m!57462))

(declare-fun m!57464 () Bool)

(assert (=> d!44703 m!57464))

(declare-fun m!57466 () Bool)

(assert (=> b!53572 m!57466))

(declare-fun m!57468 () Bool)

(assert (=> b!53571 m!57468))

(assert (=> b!53571 m!57468))

(declare-fun m!57470 () Bool)

(assert (=> b!53571 m!57470))

(assert (=> b!53529 d!44703))

(declare-fun d!44705 () Bool)

(declare-fun res!24387 () Bool)

(declare-fun e!27934 () Bool)

(assert (=> d!44705 (=> res!24387 e!27934)))

(assert (=> d!44705 (= res!24387 (or (is-Nil!420 res!24317) (and (is-Cons!419 res!24317) (is-Nil!420 (tail!705 res!24317)))))))

(assert (=> d!44705 (= (isSorted!5 res!24317) e!27934)))

(declare-fun b!53578 () Bool)

(declare-fun e!27935 () Bool)

(assert (=> b!53578 (= e!27934 e!27935)))

(declare-fun res!24388 () Bool)

(assert (=> b!53578 (=> (not res!24388) (not e!27935))))

(assert (=> b!53578 (= res!24388 (bvsle (head!679 res!24317) (head!679 (tail!705 res!24317))))))

(declare-fun b!53579 () Bool)

(assert (=> b!53579 (= e!27935 (isSorted!5 (Cons!419 (head!679 (tail!705 res!24317)) (tail!705 (tail!705 res!24317)))))))

(assert (= (and d!44705 (not res!24387)) b!53578))

(assert (= (and b!53578 res!24388) b!53579))

(declare-fun m!57472 () Bool)

(assert (=> b!53579 m!57472))

(assert (=> b!53531 d!44705))

(declare-fun d!44707 () Bool)

(declare-fun c!11627 () Bool)

(assert (=> d!44707 (= c!11627 (is-Nil!420 res!24317))))

(declare-fun e!27938 () (Set (_ BitVec 32)))

(assert (=> d!44707 (= (contents!0 res!24317) e!27938)))

(declare-fun b!53584 () Bool)

(assert (=> b!53584 (= e!27938 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!53585 () Bool)

(assert (=> b!53585 (= e!27938 (union (contents!0 (tail!705 res!24317)) (insert (head!679 res!24317) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!44707 c!11627) b!53584))

(assert (= (and d!44707 (not c!11627)) b!53585))

(declare-fun m!57474 () Bool)

(assert (=> b!53585 m!57474))

(declare-fun m!57476 () Bool)

(assert (=> b!53585 m!57476))

(assert (=> b!53530 d!44707))

(declare-fun d!44709 () Bool)

(declare-fun c!11628 () Bool)

(assert (=> d!44709 (= c!11628 (is-Nil!420 l!1121))))

(declare-fun e!27939 () (Set (_ BitVec 32)))

(assert (=> d!44709 (= (contents!0 l!1121) e!27939)))

(declare-fun b!53586 () Bool)

(assert (=> b!53586 (= e!27939 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!53587 () Bool)

(assert (=> b!53587 (= e!27939 (union (contents!0 (tail!705 l!1121)) (insert (head!679 l!1121) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!44709 c!11628) b!53586))

(assert (= (and d!44709 (not c!11628)) b!53587))

(assert (=> b!53587 m!57464))

(assert (=> b!53587 m!57452))

(assert (=> b!53530 d!44709))

(push 1)

(assert (not b!53556))

(assert (not b!53538))

(assert (not d!44701))

(assert (not b!53573))

(assert (not b!53540))

(assert (not b!53585))

(assert (not d!44703))

(assert (not b!53559))

(assert (not b!53572))

(assert (not b!53579))

(assert (not b!53560))

(assert (not b!53587))

(assert (not b!53571))

(assert (not b!53557))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

