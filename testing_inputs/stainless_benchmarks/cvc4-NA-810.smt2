; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6126 () Bool)

(assert start!6126)

(declare-fun res!21507 () Bool)

(declare-fun e!23618 () Bool)

(assert (=> start!6126 (=> (not res!21507) (not e!23618))))

(declare-datatypes () ((Nat!171 (Zero!155) (Succ!152 (n!1303 Nat!171)))))

(declare-fun n1!172 () Nat!171)

(assert (=> start!6126 (= res!21507 (not (is-Zero!155 n1!172)))))

(assert (=> start!6126 e!23618))

(assert (=> start!6126 true))

(declare-fun b!45516 () Bool)

(declare-fun res!21508 () Bool)

(assert (=> b!45516 (=> (not res!21508) (not e!23618))))

(declare-fun n2!183 () Nat!171)

(declare-datatypes () ((Unit!541 (Unit!542))))

(declare-fun inductVal!95 () Unit!541)

(declare-fun increasing_plus!0 (Nat!171 Nat!171) Unit!541)

(assert (=> b!45516 (= res!21508 (= inductVal!95 (increasing_plus!0 (n!1303 n1!172) n2!183)))))

(declare-fun b!45517 () Bool)

(declare-fun res!21509 () Bool)

(assert (=> b!45517 (=> (not res!21509) (not e!23618))))

(declare-fun x$64!38 () Unit!541)

(declare-fun Unit!543 () Unit!541)

(assert (=> b!45517 (= res!21509 (= x$64!38 Unit!543))))

(declare-fun b!45518 () Bool)

(declare-fun <=!2 (Nat!171 Nat!171) Bool)

(declare-fun +!5 (Nat!171 Nat!171) Nat!171)

(assert (=> b!45518 (= e!23618 (not (<=!2 n1!172 (+!5 n1!172 n2!183))))))

(assert (= (and start!6126 res!21507) b!45516))

(assert (= (and b!45516 res!21508) b!45517))

(assert (= (and b!45517 res!21509) b!45518))

(declare-fun m!48549 () Bool)

(assert (=> b!45516 m!48549))

(declare-fun m!48551 () Bool)

(assert (=> b!45518 m!48551))

(assert (=> b!45518 m!48551))

(declare-fun m!48553 () Bool)

(assert (=> b!45518 m!48553))

(push 1)

(assert (not b!45516))

(assert (not b!45518))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!45524 () Bool)

(declare-fun e!23621 () Unit!541)

(declare-fun Unit!544 () Unit!541)

(assert (=> b!45524 (= e!23621 Unit!544)))

(declare-fun lt!8322 () Unit!541)

(assert (=> b!45524 (= lt!8322 (increasing_plus!0 (n!1303 (n!1303 n1!172)) n2!183))))

(declare-fun d!31990 () Bool)

(assert (=> d!31990 (<=!2 (n!1303 n1!172) (+!5 (n!1303 n1!172) n2!183))))

(declare-fun lt!8321 () Unit!541)

(assert (=> d!31990 (= lt!8321 e!23621)))

(declare-fun c!9653 () Bool)

(assert (=> d!31990 (= c!9653 (is-Zero!155 (n!1303 n1!172)))))

(assert (=> d!31990 (= (increasing_plus!0 (n!1303 n1!172) n2!183) lt!8321)))

(declare-fun b!45523 () Bool)

(declare-fun Unit!545 () Unit!541)

(assert (=> b!45523 (= e!23621 Unit!545)))

(assert (= (and d!31990 c!9653) b!45523))

(assert (= (and d!31990 (not c!9653)) b!45524))

(declare-fun m!48555 () Bool)

(assert (=> b!45524 m!48555))

(declare-fun m!48557 () Bool)

(assert (=> d!31990 m!48557))

(assert (=> d!31990 m!48557))

(declare-fun m!48559 () Bool)

(assert (=> d!31990 m!48559))

(assert (=> b!45516 d!31990))

(declare-fun d!31992 () Bool)

(declare-fun res!21512 () Bool)

(declare-fun e!23624 () Bool)

(assert (=> d!31992 (=> res!21512 e!23624)))

(declare-fun <!2 (Nat!171 Nat!171) Bool)

(assert (=> d!31992 (= res!21512 (<!2 n1!172 (+!5 n1!172 n2!183)))))

(assert (=> d!31992 (= (<=!2 n1!172 (+!5 n1!172 n2!183)) e!23624)))

(declare-fun b!45527 () Bool)

(assert (=> b!45527 (= e!23624 (= n1!172 (+!5 n1!172 n2!183)))))

(assert (= (and d!31992 (not res!21512)) b!45527))

(assert (=> d!31992 m!48551))

(declare-fun m!48561 () Bool)

(assert (=> d!31992 m!48561))

(assert (=> b!45518 d!31992))

(declare-fun d!31994 () Bool)

(declare-fun c!9656 () Bool)

(assert (=> d!31994 (= c!9656 (is-Zero!155 n1!172))))

(declare-fun e!23627 () Nat!171)

(assert (=> d!31994 (= (+!5 n1!172 n2!183) e!23627)))

(declare-fun b!45532 () Bool)

(assert (=> b!45532 (= e!23627 n2!183)))

(declare-fun b!45533 () Bool)

(assert (=> b!45533 (= e!23627 (Succ!152 (+!5 (n!1303 n1!172) n2!183)))))

(assert (= (and d!31994 c!9656) b!45532))

(assert (= (and d!31994 (not c!9656)) b!45533))

(assert (=> b!45533 m!48557))

(assert (=> b!45518 d!31994))

(push 1)

(assert (not b!45524))

(assert (not b!45533))

(assert (not d!31992))

(assert (not d!31990))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!45535 () Bool)

(declare-fun e!23628 () Unit!541)

(declare-fun Unit!546 () Unit!541)

(assert (=> b!45535 (= e!23628 Unit!546)))

(declare-fun lt!8324 () Unit!541)

(assert (=> b!45535 (= lt!8324 (increasing_plus!0 (n!1303 (n!1303 (n!1303 n1!172))) n2!183))))

(declare-fun d!31996 () Bool)

(assert (=> d!31996 (<=!2 (n!1303 (n!1303 n1!172)) (+!5 (n!1303 (n!1303 n1!172)) n2!183))))

(declare-fun lt!8323 () Unit!541)

(assert (=> d!31996 (= lt!8323 e!23628)))

(declare-fun c!9657 () Bool)

(assert (=> d!31996 (= c!9657 (is-Zero!155 (n!1303 (n!1303 n1!172))))))

(assert (=> d!31996 (= (increasing_plus!0 (n!1303 (n!1303 n1!172)) n2!183) lt!8323)))

(declare-fun b!45534 () Bool)

(declare-fun Unit!547 () Unit!541)

(assert (=> b!45534 (= e!23628 Unit!547)))

(assert (= (and d!31996 c!9657) b!45534))

(assert (= (and d!31996 (not c!9657)) b!45535))

(declare-fun m!48563 () Bool)

(assert (=> b!45535 m!48563))

(declare-fun m!48565 () Bool)

(assert (=> d!31996 m!48565))

(assert (=> d!31996 m!48565))

(declare-fun m!48567 () Bool)

(assert (=> d!31996 m!48567))

(assert (=> b!45524 d!31996))

(declare-fun d!31998 () Bool)

(declare-fun c!9658 () Bool)

(assert (=> d!31998 (= c!9658 (is-Zero!155 (n!1303 n1!172)))))

(declare-fun e!23629 () Nat!171)

(assert (=> d!31998 (= (+!5 (n!1303 n1!172) n2!183) e!23629)))

(declare-fun b!45536 () Bool)

(assert (=> b!45536 (= e!23629 n2!183)))

(declare-fun b!45537 () Bool)

(assert (=> b!45537 (= e!23629 (Succ!152 (+!5 (n!1303 (n!1303 n1!172)) n2!183)))))

(assert (= (and d!31998 c!9658) b!45536))

(assert (= (and d!31998 (not c!9658)) b!45537))

(assert (=> b!45537 m!48565))

(assert (=> b!45533 d!31998))

(declare-fun d!32000 () Bool)

(declare-fun lt!8327 () Bool)

(declare-fun repr!0 (Nat!171) Int)

(assert (=> d!32000 (= lt!8327 (< (repr!0 n1!172) (repr!0 (+!5 n1!172 n2!183))))))

(declare-fun e!23632 () Bool)

(assert (=> d!32000 (= lt!8327 e!23632)))

(declare-fun c!9661 () Bool)

(assert (=> d!32000 (= c!9661 (and (is-Succ!152 n1!172) (is-Succ!152 (+!5 n1!172 n2!183))))))

(assert (=> d!32000 (= (<!2 n1!172 (+!5 n1!172 n2!183)) lt!8327)))

(declare-fun b!45542 () Bool)

(assert (=> b!45542 (= e!23632 (<!2 (n!1303 n1!172) (n!1303 (+!5 n1!172 n2!183))))))

(declare-fun b!45543 () Bool)

(assert (=> b!45543 (= e!23632 (and (is-Zero!155 n1!172) (is-Succ!152 (+!5 n1!172 n2!183))))))

(assert (= (and d!32000 c!9661) b!45542))

(assert (= (and d!32000 (not c!9661)) b!45543))

(declare-fun m!48569 () Bool)

(assert (=> d!32000 m!48569))

(assert (=> d!32000 m!48551))

(declare-fun m!48571 () Bool)

(assert (=> d!32000 m!48571))

(declare-fun m!48573 () Bool)

(assert (=> b!45542 m!48573))

(assert (=> d!31992 d!32000))

(declare-fun d!32002 () Bool)

(declare-fun res!21513 () Bool)

(declare-fun e!23633 () Bool)

(assert (=> d!32002 (=> res!21513 e!23633)))

(assert (=> d!32002 (= res!21513 (<!2 (n!1303 n1!172) (+!5 (n!1303 n1!172) n2!183)))))

(assert (=> d!32002 (= (<=!2 (n!1303 n1!172) (+!5 (n!1303 n1!172) n2!183)) e!23633)))

(declare-fun b!45544 () Bool)

(assert (=> b!45544 (= e!23633 (= (n!1303 n1!172) (+!5 (n!1303 n1!172) n2!183)))))

(assert (= (and d!32002 (not res!21513)) b!45544))

(assert (=> d!32002 m!48557))

(declare-fun m!48575 () Bool)

(assert (=> d!32002 m!48575))

(assert (=> d!31990 d!32002))

(assert (=> d!31990 d!31998))

(push 1)

(assert (not d!31996))

(assert (not b!45535))

(assert (not d!32000))

(assert (not b!45537))

(assert (not d!32002))

(assert (not b!45542))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

