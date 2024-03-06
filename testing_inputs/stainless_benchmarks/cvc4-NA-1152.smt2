; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8312 () Bool)

(assert start!8312)

(declare-fun res!27155 () Bool)

(declare-fun e!31162 () Bool)

(assert (=> start!8312 (=> (not res!27155) (not e!31162))))

(declare-datatypes () ((List!489 (Cons!463 (head!736 (_ BitVec 32)) (tail!762 List!489)) (Nil!464))))

(declare-fun l1!344 () List!489)

(assert (=> start!8312 (= res!27155 (is-Cons!463 l1!344))))

(assert (=> start!8312 e!31162))

(assert (=> start!8312 true))

(declare-fun b!58548 () Bool)

(declare-fun res!27156 () Bool)

(assert (=> b!58548 (=> (not res!27156) (not e!31162))))

(declare-fun l2!337 () List!489)

(declare-fun inductVal!152 () Bool)

(declare-fun sizeAppend!0 (List!489 List!489) Bool)

(assert (=> b!58548 (= res!27156 (= inductVal!152 (sizeAppend!0 (tail!762 l1!344) l2!337)))))

(declare-fun b!58549 () Bool)

(declare-fun size!17 (List!489) Int)

(declare-fun append!9 (List!489 List!489) List!489)

(assert (=> b!58549 (= e!31162 (not (= (size!17 (append!9 l1!344 l2!337)) (+ (size!17 l1!344) (size!17 l2!337)))))))

(assert (= (and start!8312 res!27155) b!58548))

(assert (= (and b!58548 res!27156) b!58549))

(declare-fun m!63120 () Bool)

(assert (=> b!58548 m!63120))

(declare-fun m!63122 () Bool)

(assert (=> b!58549 m!63122))

(assert (=> b!58549 m!63122))

(declare-fun m!63124 () Bool)

(assert (=> b!58549 m!63124))

(declare-fun m!63126 () Bool)

(assert (=> b!58549 m!63126))

(declare-fun m!63128 () Bool)

(assert (=> b!58549 m!63128))

(push 1)

(assert (not b!58548))

(assert (not b!58549))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!58554 () Bool)

(declare-fun e!31165 () Bool)

(assert (=> b!58554 (= e!31165 (= (size!17 (append!9 (tail!762 l1!344) l2!337)) (+ (size!17 (tail!762 l1!344)) (size!17 l2!337))))))

(declare-fun lt!10707 () Bool)

(assert (=> b!58554 (= lt!10707 (sizeAppend!0 (tail!762 (tail!762 l1!344)) l2!337))))

(declare-fun d!50658 () Bool)

(assert (=> d!50658 e!31165))

(declare-fun c!12544 () Bool)

(assert (=> d!50658 (= c!12544 (is-Cons!463 (tail!762 l1!344)))))

(assert (=> d!50658 (= (sizeAppend!0 (tail!762 l1!344) l2!337) true)))

(declare-fun b!58555 () Bool)

(assert (=> b!58555 (= e!31165 (= (size!17 (append!9 (tail!762 l1!344) l2!337)) (+ (size!17 (tail!762 l1!344)) (size!17 l2!337))))))

(assert (= (and d!50658 c!12544) b!58554))

(assert (= (and d!50658 (not c!12544)) b!58555))

(declare-fun m!63130 () Bool)

(assert (=> b!58554 m!63130))

(declare-fun m!63132 () Bool)

(assert (=> b!58554 m!63132))

(assert (=> b!58554 m!63128))

(declare-fun m!63134 () Bool)

(assert (=> b!58554 m!63134))

(declare-fun m!63136 () Bool)

(assert (=> b!58554 m!63136))

(assert (=> b!58554 m!63130))

(assert (=> b!58555 m!63130))

(assert (=> b!58555 m!63130))

(assert (=> b!58555 m!63132))

(assert (=> b!58555 m!63134))

(assert (=> b!58555 m!63128))

(assert (=> b!58548 d!50658))

(declare-fun d!50660 () Bool)

(declare-fun lt!10710 () Int)

(assert (=> d!50660 (>= lt!10710 0)))

(declare-fun e!31168 () Int)

(assert (=> d!50660 (= lt!10710 e!31168)))

(declare-fun c!12547 () Bool)

(assert (=> d!50660 (= c!12547 (is-Nil!464 (append!9 l1!344 l2!337)))))

(assert (=> d!50660 (= (size!17 (append!9 l1!344 l2!337)) lt!10710)))

(declare-fun b!58560 () Bool)

(assert (=> b!58560 (= e!31168 0)))

(declare-fun b!58561 () Bool)

(assert (=> b!58561 (= e!31168 (+ 1 (size!17 (tail!762 (append!9 l1!344 l2!337)))))))

(assert (= (and d!50660 c!12547) b!58560))

(assert (= (and d!50660 (not c!12547)) b!58561))

(declare-fun m!63138 () Bool)

(assert (=> b!58561 m!63138))

(assert (=> b!58549 d!50660))

(declare-fun d!50662 () Bool)

(declare-fun lt!10713 () List!489)

(declare-fun content!16 (List!489) (Set (_ BitVec 32)))

(assert (=> d!50662 (= (content!16 lt!10713) (union (content!16 l1!344) (content!16 l2!337)))))

(declare-fun e!31171 () List!489)

(assert (=> d!50662 (= lt!10713 e!31171)))

(declare-fun c!12550 () Bool)

(assert (=> d!50662 (= c!12550 (is-Nil!464 l1!344))))

(assert (=> d!50662 (= (append!9 l1!344 l2!337) lt!10713)))

(declare-fun b!58566 () Bool)

(assert (=> b!58566 (= e!31171 l2!337)))

(declare-fun b!58567 () Bool)

(assert (=> b!58567 (= e!31171 (Cons!463 (head!736 l1!344) (append!9 (tail!762 l1!344) l2!337)))))

(assert (= (and d!50662 c!12550) b!58566))

(assert (= (and d!50662 (not c!12550)) b!58567))

(declare-fun m!63140 () Bool)

(assert (=> d!50662 m!63140))

(declare-fun m!63142 () Bool)

(assert (=> d!50662 m!63142))

(declare-fun m!63144 () Bool)

(assert (=> d!50662 m!63144))

(assert (=> b!58567 m!63130))

(assert (=> b!58549 d!50662))

(declare-fun d!50664 () Bool)

(declare-fun lt!10714 () Int)

(assert (=> d!50664 (>= lt!10714 0)))

(declare-fun e!31172 () Int)

(assert (=> d!50664 (= lt!10714 e!31172)))

(declare-fun c!12551 () Bool)

(assert (=> d!50664 (= c!12551 (is-Nil!464 l1!344))))

(assert (=> d!50664 (= (size!17 l1!344) lt!10714)))

(declare-fun b!58568 () Bool)

(assert (=> b!58568 (= e!31172 0)))

(declare-fun b!58569 () Bool)

(assert (=> b!58569 (= e!31172 (+ 1 (size!17 (tail!762 l1!344))))))

(assert (= (and d!50664 c!12551) b!58568))

(assert (= (and d!50664 (not c!12551)) b!58569))

(assert (=> b!58569 m!63134))

(assert (=> b!58549 d!50664))

(declare-fun d!50666 () Bool)

(declare-fun lt!10715 () Int)

(assert (=> d!50666 (>= lt!10715 0)))

(declare-fun e!31173 () Int)

(assert (=> d!50666 (= lt!10715 e!31173)))

(declare-fun c!12552 () Bool)

(assert (=> d!50666 (= c!12552 (is-Nil!464 l2!337))))

(assert (=> d!50666 (= (size!17 l2!337) lt!10715)))

(declare-fun b!58570 () Bool)

(assert (=> b!58570 (= e!31173 0)))

(declare-fun b!58571 () Bool)

(assert (=> b!58571 (= e!31173 (+ 1 (size!17 (tail!762 l2!337))))))

(assert (= (and d!50666 c!12552) b!58570))

(assert (= (and d!50666 (not c!12552)) b!58571))

(declare-fun m!63146 () Bool)

(assert (=> b!58571 m!63146))

(assert (=> b!58549 d!50666))

(push 1)

(assert (not d!50662))

(assert (not b!58554))

(assert (not b!58555))

(assert (not b!58567))

(assert (not b!58571))

(assert (not b!58561))

(assert (not b!58569))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

