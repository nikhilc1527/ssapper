; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8764 () Bool)

(assert start!8764)

(declare-fun res!28291 () Bool)

(declare-fun e!32434 () Bool)

(assert (=> start!8764 (=> (not res!28291) (not e!32434))))

(declare-datatypes () ((List!549 (Cons!514 (h!742 Int) (t!47244 List!549)) (Nil!515))))

(declare-fun list!592 () List!549)

(declare-fun list!593 () List!549)

(assert (=> start!8764 (= res!28291 (and (is-Cons!514 list!592) (is-Cons!514 (t!47244 list!592)) (= list!593 list!592)))))

(assert (=> start!8764 e!32434))

(assert (=> start!8764 true))

(declare-fun b!60656 () Bool)

(declare-fun size!517 (List!549) Int)

(assert (=> b!60656 (= e!32434 (<= (size!517 list!593) 1))))

(assert (= (and start!8764 res!28291) b!60656))

(declare-fun m!65514 () Bool)

(assert (=> b!60656 m!65514))

(push 1)

(assert (not b!60656))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51631 () Bool)

(declare-fun lt!11192 () Int)

(assert (=> d!51631 (>= lt!11192 0)))

(declare-fun e!32437 () Int)

(assert (=> d!51631 (= lt!11192 e!32437)))

(declare-fun c!13146 () Bool)

(assert (=> d!51631 (= c!13146 (is-Nil!515 list!593))))

(assert (=> d!51631 (= (size!517 list!593) lt!11192)))

(declare-fun b!60661 () Bool)

(assert (=> b!60661 (= e!32437 0)))

(declare-fun b!60662 () Bool)

(assert (=> b!60662 (= e!32437 (+ 1 (size!517 (t!47244 list!593))))))

(assert (= (and d!51631 c!13146) b!60661))

(assert (= (and d!51631 (not c!13146)) b!60662))

(declare-fun m!65516 () Bool)

(assert (=> b!60662 m!65516))

(assert (=> b!60656 d!51631))

(push 1)

(assert (not b!60662))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51633 () Bool)

(declare-fun lt!11193 () Int)

(assert (=> d!51633 (>= lt!11193 0)))

(declare-fun e!32438 () Int)

(assert (=> d!51633 (= lt!11193 e!32438)))

(declare-fun c!13147 () Bool)

(assert (=> d!51633 (= c!13147 (is-Nil!515 (t!47244 list!593)))))

(assert (=> d!51633 (= (size!517 (t!47244 list!593)) lt!11193)))

(declare-fun b!60663 () Bool)

(assert (=> b!60663 (= e!32438 0)))

(declare-fun b!60664 () Bool)

(assert (=> b!60664 (= e!32438 (+ 1 (size!517 (t!47244 (t!47244 list!593)))))))

(assert (= (and d!51633 c!13147) b!60663))

(assert (= (and d!51633 (not c!13147)) b!60664))

(declare-fun m!65518 () Bool)

(assert (=> b!60664 m!65518))

(assert (=> b!60662 d!51633))

(push 1)

(assert (not b!60664))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51635 () Bool)

(declare-fun lt!11194 () Int)

(assert (=> d!51635 (>= lt!11194 0)))

(declare-fun e!32439 () Int)

(assert (=> d!51635 (= lt!11194 e!32439)))

(declare-fun c!13148 () Bool)

(assert (=> d!51635 (= c!13148 (is-Nil!515 (t!47244 (t!47244 list!593))))))

(assert (=> d!51635 (= (size!517 (t!47244 (t!47244 list!593))) lt!11194)))

(declare-fun b!60665 () Bool)

(assert (=> b!60665 (= e!32439 0)))

(declare-fun b!60666 () Bool)

(assert (=> b!60666 (= e!32439 (+ 1 (size!517 (t!47244 (t!47244 (t!47244 list!593))))))))

(assert (= (and d!51635 c!13148) b!60665))

(assert (= (and d!51635 (not c!13148)) b!60666))

(declare-fun m!65520 () Bool)

(assert (=> b!60666 m!65520))

(assert (=> b!60664 d!51635))

(push 1)

(assert (not b!60666))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

