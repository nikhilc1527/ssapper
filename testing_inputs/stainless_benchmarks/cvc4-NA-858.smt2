; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6408 () Bool)

(assert start!6408)

(declare-fun res!22328 () Bool)

(declare-fun e!24802 () Bool)

(assert (=> start!6408 (=> (not res!22328) (not e!24802))))

(declare-datatypes () ((Nat!219 (Zero!203) (Succ!200 (n!1356 Nat!219)))))

(declare-fun n1!336 () Nat!219)

(declare-datatypes () ((Unit!645 (Unit!646))))

(declare-fun x$42!66 () Unit!645)

(declare-fun Unit!647 () Unit!645)

(assert (=> start!6408 (= res!22328 (and (is-Zero!203 n1!336) (= x$42!66 Unit!647)))))

(assert (=> start!6408 e!24802))

(assert (=> start!6408 true))

(declare-fun n2!352 () Nat!219)

(declare-fun b!47555 () Bool)

(declare-fun n3!59 () Nat!219)

(declare-fun *!4 (Nat!219 Nat!219) Nat!219)

(assert (=> b!47555 (= e!24802 (not (= (*!4 n1!336 (*!4 n2!352 n3!59)) (*!4 (*!4 n1!336 n2!352) n3!59))))))

(assert (= (and start!6408 res!22328) b!47555))

(declare-fun m!50435 () Bool)

(assert (=> b!47555 m!50435))

(assert (=> b!47555 m!50435))

(declare-fun m!50437 () Bool)

(assert (=> b!47555 m!50437))

(declare-fun m!50439 () Bool)

(assert (=> b!47555 m!50439))

(assert (=> b!47555 m!50439))

(declare-fun m!50441 () Bool)

(assert (=> b!47555 m!50441))

(push 1)

(assert (not b!47555))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33344 () Bool)

(declare-fun c!10042 () Bool)

(assert (=> d!33344 (= c!10042 (is-Zero!203 n1!336))))

(declare-fun e!24805 () Nat!219)

(assert (=> d!33344 (= (*!4 n1!336 (*!4 n2!352 n3!59)) e!24805)))

(declare-fun b!47560 () Bool)

(assert (=> b!47560 (= e!24805 Zero!203)))

(declare-fun b!47561 () Bool)

(declare-fun +!5 (Nat!219 Nat!219) Nat!219)

(assert (=> b!47561 (= e!24805 (+!5 (*!4 (n!1356 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (= (and d!33344 c!10042) b!47560))

(assert (= (and d!33344 (not c!10042)) b!47561))

(assert (=> b!47561 m!50435))

(declare-fun m!50443 () Bool)

(assert (=> b!47561 m!50443))

(assert (=> b!47561 m!50443))

(assert (=> b!47561 m!50435))

(declare-fun m!50445 () Bool)

(assert (=> b!47561 m!50445))

(assert (=> b!47555 d!33344))

(declare-fun d!33346 () Bool)

(declare-fun c!10043 () Bool)

(assert (=> d!33346 (= c!10043 (is-Zero!203 n2!352))))

(declare-fun e!24806 () Nat!219)

(assert (=> d!33346 (= (*!4 n2!352 n3!59) e!24806)))

(declare-fun b!47562 () Bool)

(assert (=> b!47562 (= e!24806 Zero!203)))

(declare-fun b!47563 () Bool)

(assert (=> b!47563 (= e!24806 (+!5 (*!4 (n!1356 n2!352) n3!59) n3!59))))

(assert (= (and d!33346 c!10043) b!47562))

(assert (= (and d!33346 (not c!10043)) b!47563))

(declare-fun m!50447 () Bool)

(assert (=> b!47563 m!50447))

(assert (=> b!47563 m!50447))

(declare-fun m!50449 () Bool)

(assert (=> b!47563 m!50449))

(assert (=> b!47555 d!33346))

(declare-fun d!33348 () Bool)

(declare-fun c!10044 () Bool)

(assert (=> d!33348 (= c!10044 (is-Zero!203 (*!4 n1!336 n2!352)))))

(declare-fun e!24807 () Nat!219)

(assert (=> d!33348 (= (*!4 (*!4 n1!336 n2!352) n3!59) e!24807)))

(declare-fun b!47564 () Bool)

(assert (=> b!47564 (= e!24807 Zero!203)))

(declare-fun b!47565 () Bool)

(assert (=> b!47565 (= e!24807 (+!5 (*!4 (n!1356 (*!4 n1!336 n2!352)) n3!59) n3!59))))

(assert (= (and d!33348 c!10044) b!47564))

(assert (= (and d!33348 (not c!10044)) b!47565))

(declare-fun m!50451 () Bool)

(assert (=> b!47565 m!50451))

(assert (=> b!47565 m!50451))

(declare-fun m!50453 () Bool)

(assert (=> b!47565 m!50453))

(assert (=> b!47555 d!33348))

(declare-fun d!33350 () Bool)

(declare-fun c!10045 () Bool)

(assert (=> d!33350 (= c!10045 (is-Zero!203 n1!336))))

(declare-fun e!24808 () Nat!219)

(assert (=> d!33350 (= (*!4 n1!336 n2!352) e!24808)))

(declare-fun b!47566 () Bool)

(assert (=> b!47566 (= e!24808 Zero!203)))

(declare-fun b!47567 () Bool)

(assert (=> b!47567 (= e!24808 (+!5 (*!4 (n!1356 n1!336) n2!352) n2!352))))

(assert (= (and d!33350 c!10045) b!47566))

(assert (= (and d!33350 (not c!10045)) b!47567))

(declare-fun m!50455 () Bool)

(assert (=> b!47567 m!50455))

(assert (=> b!47567 m!50455))

(declare-fun m!50457 () Bool)

(assert (=> b!47567 m!50457))

(assert (=> b!47555 d!33350))

(push 1)

(assert (not b!47561))

(assert (not b!47567))

(assert (not b!47565))

(assert (not b!47563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

