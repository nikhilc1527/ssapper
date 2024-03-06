; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12626 () Bool)

(assert start!12626)

(declare-fun res!48882 () Bool)

(declare-fun e!50855 () Bool)

(assert (=> start!12626 (=> (not res!48882) (not e!50855))))

(declare-datatypes () ((List!800 (Cons!742 (head!1173 (_ BitVec 32)) (tail!1169 List!800)) (Nil!744))))

(declare-fun l1!495 () List!800)

(declare-fun l2!487 () List!800)

(declare-fun size!26 (List!800) Int)

(assert (=> start!12626 (= res!48882 (= (size!26 l1!495) (size!26 l2!487)))))

(assert (=> start!12626 e!50855))

(assert (=> start!12626 true))

(declare-fun b!92969 () Bool)

(declare-fun res!48883 () Bool)

(assert (=> b!92969 (=> (not res!48883) (not e!50855))))

(assert (=> b!92969 (= res!48883 (not (is-Nil!744 l1!495)))))

(declare-fun b!92970 () Bool)

(declare-fun res!48884 () Bool)

(assert (=> b!92970 (=> (not res!48884) (not e!50855))))

(declare-datatypes () ((IntPair!10 (IP!8 (fst!18 (_ BitVec 32)) (snd!18 (_ BitVec 32))))))

(declare-datatypes () ((IntPairList!9 (IPNil!7) (IPCons!7 (head!1174 IntPair!10) (tail!1170 IntPairList!9)))))

(declare-fun x$2!578 () IntPairList!9)

(declare-fun zip!4 (List!800 List!800) IntPairList!9)

(assert (=> b!92970 (= res!48884 (= x$2!578 (IPCons!7 (IP!8 (head!1173 l1!495) (head!1173 l2!487)) (zip!4 (tail!1169 l1!495) (tail!1169 l2!487)))))))

(declare-fun b!92971 () Bool)

(declare-fun iplSize!1 (IntPairList!9) Int)

(assert (=> b!92971 (= e!50855 (not (= (iplSize!1 x$2!578) (size!26 l1!495))))))

(assert (= (and start!12626 res!48882) b!92969))

(assert (= (and b!92969 res!48883) b!92970))

(assert (= (and b!92970 res!48884) b!92971))

(declare-fun m!88570 () Bool)

(assert (=> start!12626 m!88570))

(declare-fun m!88572 () Bool)

(assert (=> start!12626 m!88572))

(declare-fun m!88574 () Bool)

(assert (=> b!92970 m!88574))

(declare-fun m!88576 () Bool)

(assert (=> b!92971 m!88576))

(assert (=> b!92971 m!88570))

(push 1)

(assert (not b!92971))

(assert (not b!92970))

(assert (not start!12626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60760 () Bool)

(declare-fun lt!21079 () Int)

(assert (=> d!60760 (>= lt!21079 0)))

(declare-fun e!50858 () Int)

(assert (=> d!60760 (= lt!21079 e!50858)))

(declare-fun c!22724 () Bool)

(assert (=> d!60760 (= c!22724 (is-IPNil!7 x$2!578))))

(assert (=> d!60760 (= (iplSize!1 x$2!578) lt!21079)))

(declare-fun b!92976 () Bool)

(assert (=> b!92976 (= e!50858 0)))

(declare-fun b!92977 () Bool)

(assert (=> b!92977 (= e!50858 (+ 1 (iplSize!1 (tail!1170 x$2!578))))))

(assert (= (and d!60760 c!22724) b!92976))

(assert (= (and d!60760 (not c!22724)) b!92977))

(declare-fun m!88578 () Bool)

(assert (=> b!92977 m!88578))

(assert (=> b!92971 d!60760))

(declare-fun d!60762 () Bool)

(declare-fun lt!21082 () Int)

(assert (=> d!60762 (>= lt!21082 0)))

(declare-fun e!50861 () Int)

(assert (=> d!60762 (= lt!21082 e!50861)))

(declare-fun c!22727 () Bool)

(assert (=> d!60762 (= c!22727 (is-Nil!744 l1!495))))

(assert (=> d!60762 (= (size!26 l1!495) lt!21082)))

(declare-fun b!92982 () Bool)

(assert (=> b!92982 (= e!50861 0)))

(declare-fun b!92983 () Bool)

(assert (=> b!92983 (= e!50861 (+ 1 (size!26 (tail!1169 l1!495))))))

(assert (= (and d!60762 c!22727) b!92982))

(assert (= (and d!60762 (not c!22727)) b!92983))

(declare-fun m!88580 () Bool)

(assert (=> b!92983 m!88580))

(assert (=> b!92971 d!60762))

(declare-fun d!60764 () Bool)

(declare-fun lt!21085 () IntPairList!9)

(assert (=> d!60764 (= (iplSize!1 lt!21085) (size!26 (tail!1169 l1!495)))))

(declare-fun e!50864 () IntPairList!9)

(assert (=> d!60764 (= lt!21085 e!50864)))

(declare-fun c!22730 () Bool)

(assert (=> d!60764 (= c!22730 (is-Nil!744 (tail!1169 l1!495)))))

(assert (=> d!60764 (= (size!26 (tail!1169 l1!495)) (size!26 (tail!1169 l2!487)))))

(assert (=> d!60764 (= (zip!4 (tail!1169 l1!495) (tail!1169 l2!487)) lt!21085)))

(declare-fun b!92988 () Bool)

(assert (=> b!92988 (= e!50864 IPNil!7)))

(declare-fun b!92989 () Bool)

(assert (=> b!92989 (= e!50864 (IPCons!7 (IP!8 (head!1173 (tail!1169 l1!495)) (head!1173 (tail!1169 l2!487))) (zip!4 (tail!1169 (tail!1169 l1!495)) (tail!1169 (tail!1169 l2!487)))))))

(assert (= (and d!60764 c!22730) b!92988))

(assert (= (and d!60764 (not c!22730)) b!92989))

(declare-fun m!88582 () Bool)

(assert (=> d!60764 m!88582))

(assert (=> d!60764 m!88580))

(declare-fun m!88584 () Bool)

(assert (=> d!60764 m!88584))

(declare-fun m!88586 () Bool)

(assert (=> b!92989 m!88586))

(assert (=> b!92970 d!60764))

(assert (=> start!12626 d!60762))

(declare-fun d!60766 () Bool)

(declare-fun lt!21086 () Int)

(assert (=> d!60766 (>= lt!21086 0)))

(declare-fun e!50865 () Int)

(assert (=> d!60766 (= lt!21086 e!50865)))

(declare-fun c!22731 () Bool)

(assert (=> d!60766 (= c!22731 (is-Nil!744 l2!487))))

(assert (=> d!60766 (= (size!26 l2!487) lt!21086)))

(declare-fun b!92990 () Bool)

(assert (=> b!92990 (= e!50865 0)))

(declare-fun b!92991 () Bool)

(assert (=> b!92991 (= e!50865 (+ 1 (size!26 (tail!1169 l2!487))))))

(assert (= (and d!60766 c!22731) b!92990))

(assert (= (and d!60766 (not c!22731)) b!92991))

(assert (=> b!92991 m!88584))

(assert (=> start!12626 d!60766))

(push 1)

(assert (not b!92991))

(assert (not b!92977))

(assert (not b!92983))

(assert (not b!92989))

(assert (not d!60764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

