; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8714 () Bool)

(assert start!8714)

(declare-fun res!28118 () Bool)

(declare-fun e!32287 () Bool)

(assert (=> start!8714 (=> (not res!28118) (not e!32287))))

(declare-datatypes () ((List!541 (Cons!507 (head!852 (_ BitVec 32)) (tail!878 List!541)) (Nil!508))))

(declare-fun list1!2 () List!541)

(declare-fun isSorted!4 (List!541) Bool)

(assert (=> start!8714 (= res!28118 (isSorted!4 list1!2))))

(assert (=> start!8714 e!32287))

(assert (=> start!8714 true))

(declare-fun b!60436 () Bool)

(declare-fun e!32286 () Bool)

(assert (=> b!60436 (= e!32287 e!32286)))

(declare-fun res!28117 () Bool)

(assert (=> b!60436 (=> res!28117 e!32286)))

(declare-fun list1!11 () List!541)

(assert (=> b!60436 (= res!28117 (not (isSorted!4 list1!11)))))

(declare-fun b!60437 () Bool)

(declare-fun list2!11 () List!541)

(assert (=> b!60437 (= e!32286 (not (isSorted!4 list2!11)))))

(declare-fun b!60435 () Bool)

(declare-fun res!28119 () Bool)

(assert (=> b!60435 (=> (not res!28119) (not e!32287))))

(declare-fun list2!2 () List!541)

(declare-fun head!808 () (_ BitVec 32))

(assert (=> b!60435 (= res!28119 (and (not (is-Nil!508 list2!2)) (not (is-Nil!508 list1!2)) (bvsgt (head!852 list1!2) (head!852 list2!2)) (= head!808 (head!852 list2!2)) (= list1!11 list1!2) (= list2!11 (tail!878 list2!2))))))

(declare-fun b!60434 () Bool)

(declare-fun res!28116 () Bool)

(assert (=> b!60434 (=> (not res!28116) (not e!32287))))

(assert (=> b!60434 (= res!28116 (isSorted!4 list2!2))))

(assert (= (and start!8714 res!28118) b!60434))

(assert (= (and b!60434 res!28116) b!60435))

(assert (= (and b!60435 res!28119) b!60436))

(assert (= (and b!60436 (not res!28117)) b!60437))

(declare-fun m!65314 () Bool)

(assert (=> start!8714 m!65314))

(declare-fun m!65316 () Bool)

(assert (=> b!60436 m!65316))

(declare-fun m!65318 () Bool)

(assert (=> b!60437 m!65318))

(declare-fun m!65320 () Bool)

(assert (=> b!60434 m!65320))

(push 1)

(assert (not b!60434))

(assert (not b!60436))

(assert (not b!60437))

(assert (not start!8714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51535 () Bool)

(declare-fun res!28124 () Bool)

(declare-fun e!32292 () Bool)

(assert (=> d!51535 (=> res!28124 e!32292)))

(assert (=> d!51535 (= res!28124 (or (is-Nil!508 list2!2) (and (is-Cons!507 list2!2) (is-Nil!508 (tail!878 list2!2)))))))

(assert (=> d!51535 (= (isSorted!4 list2!2) e!32292)))

(declare-fun b!60442 () Bool)

(declare-fun e!32293 () Bool)

(assert (=> b!60442 (= e!32292 e!32293)))

(declare-fun res!28125 () Bool)

(assert (=> b!60442 (=> (not res!28125) (not e!32293))))

(assert (=> b!60442 (= res!28125 (not (and (is-Cons!507 list2!2) (is-Cons!507 (tail!878 list2!2)) (bvsgt (head!852 list2!2) (head!852 (tail!878 list2!2))))))))

(declare-fun b!60443 () Bool)

(assert (=> b!60443 (= e!32293 (isSorted!4 (tail!878 list2!2)))))

(assert (= (and d!51535 (not res!28124)) b!60442))

(assert (= (and b!60442 res!28125) b!60443))

(declare-fun m!65322 () Bool)

(assert (=> b!60443 m!65322))

(assert (=> b!60434 d!51535))

(declare-fun d!51537 () Bool)

(declare-fun res!28126 () Bool)

(declare-fun e!32294 () Bool)

(assert (=> d!51537 (=> res!28126 e!32294)))

(assert (=> d!51537 (= res!28126 (or (is-Nil!508 list1!11) (and (is-Cons!507 list1!11) (is-Nil!508 (tail!878 list1!11)))))))

(assert (=> d!51537 (= (isSorted!4 list1!11) e!32294)))

(declare-fun b!60444 () Bool)

(declare-fun e!32295 () Bool)

(assert (=> b!60444 (= e!32294 e!32295)))

(declare-fun res!28127 () Bool)

(assert (=> b!60444 (=> (not res!28127) (not e!32295))))

(assert (=> b!60444 (= res!28127 (not (and (is-Cons!507 list1!11) (is-Cons!507 (tail!878 list1!11)) (bvsgt (head!852 list1!11) (head!852 (tail!878 list1!11))))))))

(declare-fun b!60445 () Bool)

(assert (=> b!60445 (= e!32295 (isSorted!4 (tail!878 list1!11)))))

(assert (= (and d!51537 (not res!28126)) b!60444))

(assert (= (and b!60444 res!28127) b!60445))

(declare-fun m!65324 () Bool)

(assert (=> b!60445 m!65324))

(assert (=> b!60436 d!51537))

(declare-fun d!51539 () Bool)

(declare-fun res!28128 () Bool)

(declare-fun e!32296 () Bool)

(assert (=> d!51539 (=> res!28128 e!32296)))

(assert (=> d!51539 (= res!28128 (or (is-Nil!508 list2!11) (and (is-Cons!507 list2!11) (is-Nil!508 (tail!878 list2!11)))))))

(assert (=> d!51539 (= (isSorted!4 list2!11) e!32296)))

(declare-fun b!60446 () Bool)

(declare-fun e!32297 () Bool)

(assert (=> b!60446 (= e!32296 e!32297)))

(declare-fun res!28129 () Bool)

(assert (=> b!60446 (=> (not res!28129) (not e!32297))))

(assert (=> b!60446 (= res!28129 (not (and (is-Cons!507 list2!11) (is-Cons!507 (tail!878 list2!11)) (bvsgt (head!852 list2!11) (head!852 (tail!878 list2!11))))))))

(declare-fun b!60447 () Bool)

(assert (=> b!60447 (= e!32297 (isSorted!4 (tail!878 list2!11)))))

(assert (= (and d!51539 (not res!28128)) b!60446))

(assert (= (and b!60446 res!28129) b!60447))

(declare-fun m!65326 () Bool)

(assert (=> b!60447 m!65326))

(assert (=> b!60437 d!51539))

(declare-fun d!51541 () Bool)

(declare-fun res!28130 () Bool)

(declare-fun e!32298 () Bool)

(assert (=> d!51541 (=> res!28130 e!32298)))

(assert (=> d!51541 (= res!28130 (or (is-Nil!508 list1!2) (and (is-Cons!507 list1!2) (is-Nil!508 (tail!878 list1!2)))))))

(assert (=> d!51541 (= (isSorted!4 list1!2) e!32298)))

(declare-fun b!60448 () Bool)

(declare-fun e!32299 () Bool)

(assert (=> b!60448 (= e!32298 e!32299)))

(declare-fun res!28131 () Bool)

(assert (=> b!60448 (=> (not res!28131) (not e!32299))))

(assert (=> b!60448 (= res!28131 (not (and (is-Cons!507 list1!2) (is-Cons!507 (tail!878 list1!2)) (bvsgt (head!852 list1!2) (head!852 (tail!878 list1!2))))))))

(declare-fun b!60449 () Bool)

(assert (=> b!60449 (= e!32299 (isSorted!4 (tail!878 list1!2)))))

(assert (= (and d!51541 (not res!28130)) b!60448))

(assert (= (and b!60448 res!28131) b!60449))

(declare-fun m!65328 () Bool)

(assert (=> b!60449 m!65328))

(assert (=> start!8714 d!51541))

(push 1)

(assert (not b!60449))

(assert (not b!60447))

(assert (not b!60445))

(assert (not b!60443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

