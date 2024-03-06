; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8412 () Bool)

(assert start!8412)

(declare-fun res!27268 () Bool)

(declare-fun e!31367 () Bool)

(assert (=> start!8412 (=> (not res!27268) (not e!31367))))

(declare-datatypes () ((List!504 (Cons!478 (head!755 (_ BitVec 32)) (tail!781 List!504)) (Nil!479))))

(declare-fun l!1197 () List!504)

(assert (=> start!8412 (= res!27268 (not (is-Nil!479 l!1197)))))

(assert (=> start!8412 e!31367))

(assert (=> start!8412 true))

(declare-fun b!58949 () Bool)

(declare-fun res!27269 () Bool)

(assert (=> b!58949 (=> (not res!27269) (not e!31367))))

(declare-fun x$3!152 () List!504)

(declare-fun drunk!0 (List!504) List!504)

(assert (=> b!58949 (= res!27269 (= x$3!152 (Cons!478 (head!755 l!1197) (Cons!478 (head!755 l!1197) (drunk!0 (tail!781 l!1197))))))))

(declare-fun b!58950 () Bool)

(declare-fun size!17 (List!504) Int)

(assert (=> b!58950 (= e!31367 (not (= (size!17 x$3!152) (* 2 (size!17 l!1197)))))))

(assert (= (and start!8412 res!27268) b!58949))

(assert (= (and b!58949 res!27269) b!58950))

(declare-fun m!63632 () Bool)

(assert (=> b!58949 m!63632))

(declare-fun m!63634 () Bool)

(assert (=> b!58950 m!63634))

(declare-fun m!63636 () Bool)

(assert (=> b!58950 m!63636))

(push 1)

(assert (not b!58950))

(assert (not b!58949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50846 () Bool)

(declare-fun lt!10834 () Int)

(assert (=> d!50846 (>= lt!10834 0)))

(declare-fun e!31370 () Int)

(assert (=> d!50846 (= lt!10834 e!31370)))

(declare-fun c!12701 () Bool)

(assert (=> d!50846 (= c!12701 (is-Nil!479 x$3!152))))

(assert (=> d!50846 (= (size!17 x$3!152) lt!10834)))

(declare-fun b!58955 () Bool)

(assert (=> b!58955 (= e!31370 0)))

(declare-fun b!58956 () Bool)

(assert (=> b!58956 (= e!31370 (+ 1 (size!17 (tail!781 x$3!152))))))

(assert (= (and d!50846 c!12701) b!58955))

(assert (= (and d!50846 (not c!12701)) b!58956))

(declare-fun m!63638 () Bool)

(assert (=> b!58956 m!63638))

(assert (=> b!58950 d!50846))

(declare-fun d!50848 () Bool)

(declare-fun lt!10835 () Int)

(assert (=> d!50848 (>= lt!10835 0)))

(declare-fun e!31371 () Int)

(assert (=> d!50848 (= lt!10835 e!31371)))

(declare-fun c!12702 () Bool)

(assert (=> d!50848 (= c!12702 (is-Nil!479 l!1197))))

(assert (=> d!50848 (= (size!17 l!1197) lt!10835)))

(declare-fun b!58957 () Bool)

(assert (=> b!58957 (= e!31371 0)))

(declare-fun b!58958 () Bool)

(assert (=> b!58958 (= e!31371 (+ 1 (size!17 (tail!781 l!1197))))))

(assert (= (and d!50848 c!12702) b!58957))

(assert (= (and d!50848 (not c!12702)) b!58958))

(declare-fun m!63640 () Bool)

(assert (=> b!58958 m!63640))

(assert (=> b!58950 d!50848))

(declare-fun d!50850 () Bool)

(declare-fun lt!10838 () List!504)

(assert (=> d!50850 (= (size!17 lt!10838) (* 2 (size!17 (tail!781 l!1197))))))

(declare-fun e!31374 () List!504)

(assert (=> d!50850 (= lt!10838 e!31374)))

(declare-fun c!12705 () Bool)

(assert (=> d!50850 (= c!12705 (is-Nil!479 (tail!781 l!1197)))))

(assert (=> d!50850 (= (drunk!0 (tail!781 l!1197)) lt!10838)))

(declare-fun b!58963 () Bool)

(assert (=> b!58963 (= e!31374 Nil!479)))

(declare-fun b!58964 () Bool)

(assert (=> b!58964 (= e!31374 (Cons!478 (head!755 (tail!781 l!1197)) (Cons!478 (head!755 (tail!781 l!1197)) (drunk!0 (tail!781 (tail!781 l!1197))))))))

(assert (= (and d!50850 c!12705) b!58963))

(assert (= (and d!50850 (not c!12705)) b!58964))

(declare-fun m!63642 () Bool)

(assert (=> d!50850 m!63642))

(assert (=> d!50850 m!63640))

(declare-fun m!63644 () Bool)

(assert (=> b!58964 m!63644))

(assert (=> b!58949 d!50850))

(push 1)

(assert (not b!58958))

(assert (not d!50850))

(assert (not b!58956))

(assert (not b!58964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50852 () Bool)

(declare-fun lt!10839 () Int)

(assert (=> d!50852 (>= lt!10839 0)))

(declare-fun e!31375 () Int)

(assert (=> d!50852 (= lt!10839 e!31375)))

(declare-fun c!12706 () Bool)

(assert (=> d!50852 (= c!12706 (is-Nil!479 (tail!781 l!1197)))))

(assert (=> d!50852 (= (size!17 (tail!781 l!1197)) lt!10839)))

(declare-fun b!58965 () Bool)

(assert (=> b!58965 (= e!31375 0)))

(declare-fun b!58966 () Bool)

(assert (=> b!58966 (= e!31375 (+ 1 (size!17 (tail!781 (tail!781 l!1197)))))))

(assert (= (and d!50852 c!12706) b!58965))

(assert (= (and d!50852 (not c!12706)) b!58966))

(declare-fun m!63646 () Bool)

(assert (=> b!58966 m!63646))

(assert (=> b!58958 d!50852))

(declare-fun d!50854 () Bool)

(declare-fun lt!10840 () Int)

(assert (=> d!50854 (>= lt!10840 0)))

(declare-fun e!31376 () Int)

(assert (=> d!50854 (= lt!10840 e!31376)))

(declare-fun c!12707 () Bool)

(assert (=> d!50854 (= c!12707 (is-Nil!479 lt!10838))))

(assert (=> d!50854 (= (size!17 lt!10838) lt!10840)))

(declare-fun b!58967 () Bool)

(assert (=> b!58967 (= e!31376 0)))

(declare-fun b!58968 () Bool)

(assert (=> b!58968 (= e!31376 (+ 1 (size!17 (tail!781 lt!10838))))))

(assert (= (and d!50854 c!12707) b!58967))

(assert (= (and d!50854 (not c!12707)) b!58968))

(declare-fun m!63648 () Bool)

(assert (=> b!58968 m!63648))

(assert (=> d!50850 d!50854))

(assert (=> d!50850 d!50852))

(declare-fun d!50856 () Bool)

(declare-fun lt!10841 () Int)

(assert (=> d!50856 (>= lt!10841 0)))

(declare-fun e!31377 () Int)

(assert (=> d!50856 (= lt!10841 e!31377)))

(declare-fun c!12708 () Bool)

(assert (=> d!50856 (= c!12708 (is-Nil!479 (tail!781 x$3!152)))))

(assert (=> d!50856 (= (size!17 (tail!781 x$3!152)) lt!10841)))

(declare-fun b!58969 () Bool)

(assert (=> b!58969 (= e!31377 0)))

(declare-fun b!58970 () Bool)

(assert (=> b!58970 (= e!31377 (+ 1 (size!17 (tail!781 (tail!781 x$3!152)))))))

(assert (= (and d!50856 c!12708) b!58969))

(assert (= (and d!50856 (not c!12708)) b!58970))

(declare-fun m!63650 () Bool)

(assert (=> b!58970 m!63650))

(assert (=> b!58956 d!50856))

(declare-fun d!50858 () Bool)

(declare-fun lt!10842 () List!504)

(assert (=> d!50858 (= (size!17 lt!10842) (* 2 (size!17 (tail!781 (tail!781 l!1197)))))))

(declare-fun e!31378 () List!504)

(assert (=> d!50858 (= lt!10842 e!31378)))

(declare-fun c!12709 () Bool)

(assert (=> d!50858 (= c!12709 (is-Nil!479 (tail!781 (tail!781 l!1197))))))

(assert (=> d!50858 (= (drunk!0 (tail!781 (tail!781 l!1197))) lt!10842)))

(declare-fun b!58971 () Bool)

(assert (=> b!58971 (= e!31378 Nil!479)))

(declare-fun b!58972 () Bool)

(assert (=> b!58972 (= e!31378 (Cons!478 (head!755 (tail!781 (tail!781 l!1197))) (Cons!478 (head!755 (tail!781 (tail!781 l!1197))) (drunk!0 (tail!781 (tail!781 (tail!781 l!1197)))))))))

(assert (= (and d!50858 c!12709) b!58971))

(assert (= (and d!50858 (not c!12709)) b!58972))

(declare-fun m!63652 () Bool)

(assert (=> d!50858 m!63652))

(assert (=> d!50858 m!63646))

(declare-fun m!63654 () Bool)

(assert (=> b!58972 m!63654))

(assert (=> b!58964 d!50858))

(push 1)

(assert (not b!58970))

(assert (not b!58968))

(assert (not b!58972))

(assert (not d!50858))

(assert (not b!58966))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

