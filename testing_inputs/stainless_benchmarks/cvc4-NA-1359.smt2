; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9522 () Bool)

(assert start!9522)

(declare-fun res!34387 () Bool)

(declare-fun e!38066 () Bool)

(assert (=> start!9522 (=> (not res!34387) (not e!38066))))

(declare-datatypes () ((Formula!59 (And!64 (lhs!980 Formula!59) (rhs!980 Formula!59)) (Literal!58 (id!4839 Int)) (Implies!64 (lhs!981 Formula!59) (rhs!981 Formula!59)) (Or!64 (lhs!982 Formula!59) (rhs!982 Formula!59)) (Not!64 (f!4227 Formula!59)))))

(declare-fun formula!50 () Formula!59)

(declare-fun x$2!378 () Formula!59)

(assert (=> start!9522 (= res!34387 (and (not (is-And!64 formula!50)) (not (is-Or!64 formula!50)) (not (is-Implies!64 formula!50)) (or (not (is-Not!64 formula!50)) (not (is-And!64 (f!4227 formula!50)))) (or (not (is-Not!64 formula!50)) (not (is-Or!64 (f!4227 formula!50)))) (or (not (is-Not!64 formula!50)) (not (is-Implies!64 (f!4227 formula!50)))) (or (not (is-Not!64 formula!50)) (not (is-Not!64 (f!4227 formula!50)))) (or (not (is-Not!64 formula!50)) (not (is-Literal!58 (f!4227 formula!50)))) (= x$2!378 formula!50)))))

(assert (=> start!9522 e!38066))

(assert (=> start!9522 true))

(declare-fun b!70374 () Bool)

(declare-fun isNNF!1 (Formula!59) Bool)

(assert (=> b!70374 (= e!38066 (not (isNNF!1 x$2!378)))))

(assert (= (and start!9522 res!34387) b!70374))

(declare-fun m!70599 () Bool)

(assert (=> b!70374 m!70599))

(push 1)

(assert (not b!70374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!70389 () Bool)

(declare-fun e!38077 () Bool)

(declare-fun lt!14954 () Bool)

(assert (=> b!70389 (= e!38077 (isNNF!1 (ite lt!14954 (lhs!980 x$2!378) (lhs!982 x$2!378))))))

(declare-fun d!53666 () Bool)

(declare-fun c!16786 () Bool)

(assert (=> d!53666 (= c!16786 (or lt!14954 (is-Or!64 x$2!378)))))

(declare-fun lt!14955 () Bool)

(declare-fun lt!14956 () Bool)

(assert (=> d!53666 (= lt!14955 (and lt!14954 lt!14956))))

(assert (=> d!53666 (= lt!14956 e!38077)))

(declare-fun c!16787 () Bool)

(assert (=> d!53666 (= c!16787 (or lt!14954 (is-Or!64 x$2!378)))))

(assert (=> d!53666 (= lt!14954 (is-And!64 x$2!378))))

(declare-fun e!38078 () Bool)

(assert (=> d!53666 (= (isNNF!1 x$2!378) e!38078)))

(declare-fun b!70390 () Bool)

(declare-fun e!38076 () Bool)

(assert (=> b!70390 (= e!38076 (isNNF!1 (ite lt!14955 (rhs!980 x$2!378) (rhs!982 x$2!378))))))

(declare-fun b!70391 () Bool)

(assert (=> b!70391 (= e!38078 (and (not (is-Implies!64 x$2!378)) (or (and (is-Not!64 x$2!378) (is-Literal!58 (f!4227 x$2!378))) (not (is-Not!64 x$2!378)))))))

(declare-fun b!70392 () Bool)

(declare-fun e!38075 () Bool)

(assert (=> b!70392 (= e!38078 e!38075)))

(declare-fun res!34402 () Bool)

(assert (=> b!70392 (=> (not res!34402) (not e!38075))))

(assert (=> b!70392 (= res!34402 lt!14956)))

(declare-fun b!70393 () Bool)

(assert (=> b!70393 (= e!38075 e!38076)))

(declare-fun c!16785 () Bool)

(assert (=> b!70393 (= c!16785 (or lt!14955 (and (not lt!14954) (is-Or!64 x$2!378) lt!14956)))))

(declare-fun b!70394 () Bool)

(declare-fun res!34400 () Bool)

(assert (=> b!70394 (= e!38076 res!34400)))

(assert (=> b!70394 true))

(assert (=> b!70394 true))

(declare-fun b!70395 () Bool)

(declare-fun res!34401 () Bool)

(assert (=> b!70395 (= e!38077 res!34401)))

(assert (=> b!70395 true))

(assert (= (and d!53666 c!16787) b!70389))

(assert (= (and d!53666 (not c!16787)) b!70395))

(assert (= (and b!70392 res!34402) b!70393))

(assert (= (and b!70393 c!16785) b!70390))

(assert (= (and b!70393 (not c!16785)) b!70394))

(assert (= (and d!53666 c!16786) b!70392))

(assert (= (and d!53666 (not c!16786)) b!70391))

(declare-fun m!70601 () Bool)

(assert (=> b!70389 m!70601))

(declare-fun m!70603 () Bool)

(assert (=> b!70390 m!70603))

(assert (=> b!70374 d!53666))

(push 1)

(assert (not b!70390))

(assert (not b!70389))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

