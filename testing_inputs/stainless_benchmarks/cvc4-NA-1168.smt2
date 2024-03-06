; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8408 () Bool)

(assert start!8408)

(declare-fun res!27262 () Bool)

(declare-fun e!31360 () Bool)

(assert (=> start!8408 (=> (not res!27262) (not e!31360))))

(declare-datatypes () ((List!503 (Cons!477 (head!754 (_ BitVec 32)) (tail!780 List!503)) (Nil!478))))

(declare-fun l!1197 () List!503)

(declare-fun x$3!151 () List!503)

(assert (=> start!8408 (= res!27262 (and (is-Nil!478 l!1197) (= x$3!151 Nil!478)))))

(assert (=> start!8408 e!31360))

(assert (=> start!8408 true))

(declare-fun b!58936 () Bool)

(declare-fun size!17 (List!503) Int)

(assert (=> b!58936 (= e!31360 (not (= (size!17 x$3!151) (* 2 (size!17 l!1197)))))))

(assert (= (and start!8408 res!27262) b!58936))

(declare-fun m!63624 () Bool)

(assert (=> b!58936 m!63624))

(declare-fun m!63626 () Bool)

(assert (=> b!58936 m!63626))

(push 1)

(assert (not b!58936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50842 () Bool)

(declare-fun lt!10830 () Int)

(assert (=> d!50842 (>= lt!10830 0)))

(declare-fun e!31363 () Int)

(assert (=> d!50842 (= lt!10830 e!31363)))

(declare-fun c!12697 () Bool)

(assert (=> d!50842 (= c!12697 (is-Nil!478 x$3!151))))

(assert (=> d!50842 (= (size!17 x$3!151) lt!10830)))

(declare-fun b!58941 () Bool)

(assert (=> b!58941 (= e!31363 0)))

(declare-fun b!58942 () Bool)

(assert (=> b!58942 (= e!31363 (+ 1 (size!17 (tail!780 x$3!151))))))

(assert (= (and d!50842 c!12697) b!58941))

(assert (= (and d!50842 (not c!12697)) b!58942))

(declare-fun m!63628 () Bool)

(assert (=> b!58942 m!63628))

(assert (=> b!58936 d!50842))

(declare-fun d!50844 () Bool)

(declare-fun lt!10831 () Int)

(assert (=> d!50844 (>= lt!10831 0)))

(declare-fun e!31364 () Int)

(assert (=> d!50844 (= lt!10831 e!31364)))

(declare-fun c!12698 () Bool)

(assert (=> d!50844 (= c!12698 (is-Nil!478 l!1197))))

(assert (=> d!50844 (= (size!17 l!1197) lt!10831)))

(declare-fun b!58943 () Bool)

(assert (=> b!58943 (= e!31364 0)))

(declare-fun b!58944 () Bool)

(assert (=> b!58944 (= e!31364 (+ 1 (size!17 (tail!780 l!1197))))))

(assert (= (and d!50844 c!12698) b!58943))

(assert (= (and d!50844 (not c!12698)) b!58944))

(declare-fun m!63630 () Bool)

(assert (=> b!58944 m!63630))

(assert (=> b!58936 d!50844))

(push 1)

(assert (not b!58944))

(assert (not b!58942))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

