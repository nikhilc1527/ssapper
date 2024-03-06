; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12620 () Bool)

(assert start!12620)

(declare-fun res!48873 () Bool)

(declare-fun e!50845 () Bool)

(assert (=> start!12620 (=> (not res!48873) (not e!50845))))

(declare-datatypes () ((List!799 (Cons!741 (head!1171 (_ BitVec 32)) (tail!1167 List!799)) (Nil!743))))

(declare-fun l1!495 () List!799)

(declare-fun l2!487 () List!799)

(declare-fun size!26 (List!799) Int)

(assert (=> start!12620 (= res!48873 (= (size!26 l1!495) (size!26 l2!487)))))

(assert (=> start!12620 e!50845))

(assert (=> start!12620 true))

(declare-fun b!92947 () Bool)

(declare-fun res!48874 () Bool)

(assert (=> b!92947 (=> (not res!48874) (not e!50845))))

(declare-datatypes () ((IntPair!9 (IP!7 (fst!17 (_ BitVec 32)) (snd!17 (_ BitVec 32))))))

(declare-datatypes () ((IntPairList!8 (IPNil!6) (IPCons!6 (head!1172 IntPair!9) (tail!1168 IntPairList!8)))))

(declare-fun x$2!577 () IntPairList!8)

(assert (=> b!92947 (= res!48874 (and (is-Nil!743 l1!495) (= x$2!577 IPNil!6)))))

(declare-fun b!92948 () Bool)

(declare-fun iplSize!1 (IntPairList!8) Int)

(assert (=> b!92948 (= e!50845 (not (= (iplSize!1 x$2!577) (size!26 l1!495))))))

(assert (= (and start!12620 res!48873) b!92947))

(assert (= (and b!92947 res!48874) b!92948))

(declare-fun m!88558 () Bool)

(assert (=> start!12620 m!88558))

(declare-fun m!88560 () Bool)

(assert (=> start!12620 m!88560))

(declare-fun m!88562 () Bool)

(assert (=> b!92948 m!88562))

(assert (=> b!92948 m!88558))

(push 1)

(assert (not b!92948))

(assert (not start!12620))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60754 () Bool)

(declare-fun lt!21072 () Int)

(assert (=> d!60754 (>= lt!21072 0)))

(declare-fun e!50848 () Int)

(assert (=> d!60754 (= lt!21072 e!50848)))

(declare-fun c!22717 () Bool)

(assert (=> d!60754 (= c!22717 (is-IPNil!6 x$2!577))))

(assert (=> d!60754 (= (iplSize!1 x$2!577) lt!21072)))

(declare-fun b!92953 () Bool)

(assert (=> b!92953 (= e!50848 0)))

(declare-fun b!92954 () Bool)

(assert (=> b!92954 (= e!50848 (+ 1 (iplSize!1 (tail!1168 x$2!577))))))

(assert (= (and d!60754 c!22717) b!92953))

(assert (= (and d!60754 (not c!22717)) b!92954))

(declare-fun m!88564 () Bool)

(assert (=> b!92954 m!88564))

(assert (=> b!92948 d!60754))

(declare-fun d!60756 () Bool)

(declare-fun lt!21075 () Int)

(assert (=> d!60756 (>= lt!21075 0)))

(declare-fun e!50851 () Int)

(assert (=> d!60756 (= lt!21075 e!50851)))

(declare-fun c!22720 () Bool)

(assert (=> d!60756 (= c!22720 (is-Nil!743 l1!495))))

(assert (=> d!60756 (= (size!26 l1!495) lt!21075)))

(declare-fun b!92959 () Bool)

(assert (=> b!92959 (= e!50851 0)))

(declare-fun b!92960 () Bool)

(assert (=> b!92960 (= e!50851 (+ 1 (size!26 (tail!1167 l1!495))))))

(assert (= (and d!60756 c!22720) b!92959))

(assert (= (and d!60756 (not c!22720)) b!92960))

(declare-fun m!88566 () Bool)

(assert (=> b!92960 m!88566))

(assert (=> b!92948 d!60756))

(assert (=> start!12620 d!60756))

(declare-fun d!60758 () Bool)

(declare-fun lt!21076 () Int)

(assert (=> d!60758 (>= lt!21076 0)))

(declare-fun e!50852 () Int)

(assert (=> d!60758 (= lt!21076 e!50852)))

(declare-fun c!22721 () Bool)

(assert (=> d!60758 (= c!22721 (is-Nil!743 l2!487))))

(assert (=> d!60758 (= (size!26 l2!487) lt!21076)))

(declare-fun b!92961 () Bool)

(assert (=> b!92961 (= e!50852 0)))

(declare-fun b!92962 () Bool)

(assert (=> b!92962 (= e!50852 (+ 1 (size!26 (tail!1167 l2!487))))))

(assert (= (and d!60758 c!22721) b!92961))

(assert (= (and d!60758 (not c!22721)) b!92962))

(declare-fun m!88568 () Bool)

(assert (=> b!92962 m!88568))

(assert (=> start!12620 d!60758))

(push 1)

(assert (not b!92960))

(assert (not b!92962))

(assert (not b!92954))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

