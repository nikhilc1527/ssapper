; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8672 () Bool)

(assert start!8672)

(declare-fun b!60078 () Bool)

(declare-fun e!32050 () Bool)

(declare-fun e!32049 () Bool)

(assert (=> b!60078 (= e!32050 e!32049)))

(declare-fun res!27928 () Bool)

(assert (=> b!60078 (=> (not res!27928) (not e!32049))))

(declare-datatypes () ((List!537 (Cons!503 (head!845 (_ BitVec 32)) (tail!871 List!537)) (Nil!504))))

(declare-datatypes () ((LList!13 (LNil!12) (LCons!12 (head!846 List!537) (tail!872 LList!13)))))

(declare-fun llist!36 () LList!13)

(declare-fun lSize!0 (LList!13) Int)

(assert (=> b!60078 (= res!27928 (> (lSize!0 llist!36) 1))))

(declare-fun res!27929 () Bool)

(declare-fun e!32051 () Bool)

(assert (=> start!8672 (=> (not res!27929) (not e!32051))))

(declare-fun lIsSorted!0 (LList!13) Bool)

(assert (=> start!8672 (= res!27929 (lIsSorted!0 llist!36))))

(assert (=> start!8672 e!32051))

(assert (=> start!8672 true))

(declare-fun b!60079 () Bool)

(declare-fun res!27931 () Bool)

(assert (=> b!60079 (=> (not res!27931) (not e!32051))))

(declare-fun res!27410 () LList!13)

(assert (=> b!60079 (= res!27931 (and (is-LNil!12 llist!36) (= res!27410 LNil!12)))))

(declare-fun b!60080 () Bool)

(declare-fun res!27930 () Bool)

(assert (=> b!60080 (=> res!27930 e!32050)))

(assert (=> b!60080 (= res!27930 (not (lIsSorted!0 res!27410)))))

(declare-fun b!60081 () Bool)

(assert (=> b!60081 (= e!32051 e!32050)))

(declare-fun res!27932 () Bool)

(assert (=> b!60081 (=> res!27932 e!32050)))

(declare-fun lContent!0 (LList!13) (Set (_ BitVec 32)))

(assert (=> b!60081 (= res!27932 (not (= (lContent!0 res!27410) (lContent!0 llist!36))))))

(declare-fun b!60082 () Bool)

(assert (=> b!60082 (= e!32049 (>= (lSize!0 res!27410) (lSize!0 llist!36)))))

(assert (= (and start!8672 res!27929) b!60079))

(assert (= (and b!60079 res!27931) b!60081))

(assert (= (and b!60081 (not res!27932)) b!60080))

(assert (= (and b!60080 (not res!27930)) b!60078))

(assert (= (and b!60078 res!27928) b!60082))

(declare-fun m!64924 () Bool)

(assert (=> start!8672 m!64924))

(declare-fun m!64926 () Bool)

(assert (=> b!60078 m!64926))

(declare-fun m!64928 () Bool)

(assert (=> b!60081 m!64928))

(declare-fun m!64930 () Bool)

(assert (=> b!60081 m!64930))

(declare-fun m!64932 () Bool)

(assert (=> b!60082 m!64932))

(assert (=> b!60082 m!64926))

(declare-fun m!64934 () Bool)

(assert (=> b!60080 m!64934))

(push 1)

(assert (not b!60081))

(assert (not start!8672))

(assert (not b!60078))

(assert (not b!60080))

(assert (not b!60082))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51349 () Bool)

(declare-fun lt!11113 () Int)

(assert (=> d!51349 (>= lt!11113 0)))

(declare-fun e!32054 () Int)

(assert (=> d!51349 (= lt!11113 e!32054)))

(declare-fun c!13020 () Bool)

(assert (=> d!51349 (= c!13020 (is-LNil!12 res!27410))))

(assert (=> d!51349 (= (lSize!0 res!27410) lt!11113)))

(declare-fun b!60087 () Bool)

(assert (=> b!60087 (= e!32054 0)))

(declare-fun b!60088 () Bool)

(assert (=> b!60088 (= e!32054 (+ 1 (lSize!0 (tail!872 res!27410))))))

(assert (= (and d!51349 c!13020) b!60087))

(assert (= (and d!51349 (not c!13020)) b!60088))

(declare-fun m!64936 () Bool)

(assert (=> b!60088 m!64936))

(assert (=> b!60082 d!51349))

(declare-fun d!51351 () Bool)

(declare-fun lt!11114 () Int)

(assert (=> d!51351 (>= lt!11114 0)))

(declare-fun e!32055 () Int)

(assert (=> d!51351 (= lt!11114 e!32055)))

(declare-fun c!13021 () Bool)

(assert (=> d!51351 (= c!13021 (is-LNil!12 llist!36))))

(assert (=> d!51351 (= (lSize!0 llist!36) lt!11114)))

(declare-fun b!60089 () Bool)

(assert (=> b!60089 (= e!32055 0)))

(declare-fun b!60090 () Bool)

(assert (=> b!60090 (= e!32055 (+ 1 (lSize!0 (tail!872 llist!36))))))

(assert (= (and d!51351 c!13021) b!60089))

(assert (= (and d!51351 (not c!13021)) b!60090))

(declare-fun m!64938 () Bool)

(assert (=> b!60090 m!64938))

(assert (=> b!60082 d!51351))

(declare-fun d!51353 () Bool)

(declare-fun res!27937 () Bool)

(declare-fun e!32060 () Bool)

(assert (=> d!51353 (=> res!27937 e!32060)))

(assert (=> d!51353 (= res!27937 (is-LNil!12 llist!36))))

(assert (=> d!51353 (= (lIsSorted!0 llist!36) e!32060)))

(declare-fun b!60095 () Bool)

(declare-fun e!32061 () Bool)

(assert (=> b!60095 (= e!32060 e!32061)))

(declare-fun res!27938 () Bool)

(assert (=> b!60095 (=> (not res!27938) (not e!32061))))

(declare-fun isSorted!4 (List!537) Bool)

(assert (=> b!60095 (= res!27938 (isSorted!4 (head!846 llist!36)))))

(declare-fun b!60096 () Bool)

(assert (=> b!60096 (= e!32061 (lIsSorted!0 (tail!872 llist!36)))))

(assert (= (and d!51353 (not res!27937)) b!60095))

(assert (= (and b!60095 res!27938) b!60096))

(declare-fun m!64940 () Bool)

(assert (=> b!60095 m!64940))

(declare-fun m!64942 () Bool)

(assert (=> b!60096 m!64942))

(assert (=> start!8672 d!51353))

(declare-fun d!51355 () Bool)

(declare-fun res!27939 () Bool)

(declare-fun e!32062 () Bool)

(assert (=> d!51355 (=> res!27939 e!32062)))

(assert (=> d!51355 (= res!27939 (is-LNil!12 res!27410))))

(assert (=> d!51355 (= (lIsSorted!0 res!27410) e!32062)))

(declare-fun b!60097 () Bool)

(declare-fun e!32063 () Bool)

(assert (=> b!60097 (= e!32062 e!32063)))

(declare-fun res!27940 () Bool)

(assert (=> b!60097 (=> (not res!27940) (not e!32063))))

(assert (=> b!60097 (= res!27940 (isSorted!4 (head!846 res!27410)))))

(declare-fun b!60098 () Bool)

(assert (=> b!60098 (= e!32063 (lIsSorted!0 (tail!872 res!27410)))))

(assert (= (and d!51355 (not res!27939)) b!60097))

(assert (= (and b!60097 res!27940) b!60098))

(declare-fun m!64944 () Bool)

(assert (=> b!60097 m!64944))

(declare-fun m!64946 () Bool)

(assert (=> b!60098 m!64946))

(assert (=> b!60080 d!51355))

(assert (=> b!60078 d!51351))

(declare-fun d!51357 () Bool)

(declare-fun c!13024 () Bool)

(assert (=> d!51357 (= c!13024 (is-LNil!12 res!27410))))

(declare-fun e!32066 () (Set (_ BitVec 32)))

(assert (=> d!51357 (= (lContent!0 res!27410) e!32066)))

(declare-fun b!60103 () Bool)

(assert (=> b!60103 (= e!32066 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60104 () Bool)

(declare-fun content!15 (List!537) (Set (_ BitVec 32)))

(assert (=> b!60104 (= e!32066 (union (content!15 (head!846 res!27410)) (lContent!0 (tail!872 res!27410))))))

(assert (= (and d!51357 c!13024) b!60103))

(assert (= (and d!51357 (not c!13024)) b!60104))

(declare-fun m!64948 () Bool)

(assert (=> b!60104 m!64948))

(declare-fun m!64950 () Bool)

(assert (=> b!60104 m!64950))

(assert (=> b!60081 d!51357))

(declare-fun d!51359 () Bool)

(declare-fun c!13025 () Bool)

(assert (=> d!51359 (= c!13025 (is-LNil!12 llist!36))))

(declare-fun e!32067 () (Set (_ BitVec 32)))

(assert (=> d!51359 (= (lContent!0 llist!36) e!32067)))

(declare-fun b!60105 () Bool)

(assert (=> b!60105 (= e!32067 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60106 () Bool)

(assert (=> b!60106 (= e!32067 (union (content!15 (head!846 llist!36)) (lContent!0 (tail!872 llist!36))))))

(assert (= (and d!51359 c!13025) b!60105))

(assert (= (and d!51359 (not c!13025)) b!60106))

(declare-fun m!64952 () Bool)

(assert (=> b!60106 m!64952))

(declare-fun m!64954 () Bool)

(assert (=> b!60106 m!64954))

(assert (=> b!60081 d!51359))

(push 1)

(assert (not b!60090))

(assert (not b!60088))

(assert (not b!60104))

(assert (not b!60096))

(assert (not b!60098))

(assert (not b!60095))

(assert (not b!60106))

(assert (not b!60097))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

