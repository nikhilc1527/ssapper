; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!408 () Bool)

(assert start!408)

(declare-fun res!1078 () Bool)

(declare-fun e!1982 () Bool)

(assert (=> start!408 (=> (not res!1078) (not e!1982))))

(declare-datatypes () ((List!66 (Cons!66 (head!238 (_ BitVec 32)) (tail!250 List!66)) (Nil!67))))

(declare-datatypes () ((AbsQueue!15 (Queue!14 (front!64 List!66) (rear!66 List!66)))))

(declare-fun queue!45 () AbsQueue!15)

(declare-fun isEmpty!12 (AbsQueue!15) Bool)

(assert (=> start!408 (= res!1078 (isEmpty!12 queue!45))))

(assert (=> start!408 e!1982))

(assert (=> start!408 true))

(declare-fun b!3520 () Bool)

(declare-fun elem!55 () (_ BitVec 32))

(declare-fun front!8 (AbsQueue!15) (_ BitVec 32))

(declare-fun enqueue!0 (AbsQueue!15 (_ BitVec 32)) AbsQueue!15)

(assert (=> b!3520 (= e!1982 (not (= (front!8 (enqueue!0 queue!45 elem!55)) elem!55)))))

(assert (= (and start!408 res!1078) b!3520))

(declare-fun m!5523 () Bool)

(assert (=> start!408 m!5523))

(declare-fun m!5525 () Bool)

(assert (=> b!3520 m!5525))

(assert (=> b!3520 m!5525))

(declare-fun m!5527 () Bool)

(assert (=> b!3520 m!5527))

(push 1)

(assert (not b!3520))

(assert (not start!408))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2592 () Bool)

(assert (=> d!2592 (= (front!8 (enqueue!0 queue!45 elem!55)) (head!238 (front!64 (enqueue!0 queue!45 elem!55))))))

(assert (=> b!3520 d!2592))

(declare-fun d!2594 () Bool)

(declare-fun lt!999 () AbsQueue!15)

(declare-fun isAmortized!0 (AbsQueue!15) Bool)

(assert (=> d!2594 (isAmortized!0 lt!999)))

(declare-fun amortizedQueue!0 (List!66 List!66) AbsQueue!15)

(assert (=> d!2594 (= lt!999 (amortizedQueue!0 (front!64 queue!45) (Cons!66 elem!55 (rear!66 queue!45))))))

(assert (=> d!2594 (= (enqueue!0 queue!45 elem!55) lt!999)))

(declare-fun bs!248 () Bool)

(assert (= bs!248 d!2594))

(declare-fun m!5529 () Bool)

(assert (=> bs!248 m!5529))

(declare-fun m!5531 () Bool)

(assert (=> bs!248 m!5531))

(assert (=> b!3520 d!2594))

(declare-fun d!2596 () Bool)

(assert (=> d!2596 (= (isEmpty!12 queue!45) (and (is-Nil!67 (front!64 queue!45)) (is-Nil!67 (rear!66 queue!45))))))

(assert (=> start!408 d!2596))

(push 1)

(assert (not d!2594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2598 () Bool)

(declare-fun size!23 (List!66) Int)

(assert (=> d!2598 (= (isAmortized!0 lt!999) (>= (size!23 (front!64 lt!999)) (size!23 (rear!66 lt!999))))))

(declare-fun bs!249 () Bool)

(assert (= bs!249 d!2598))

(declare-fun m!5533 () Bool)

(assert (=> bs!249 m!5533))

(declare-fun m!5535 () Bool)

(assert (=> bs!249 m!5535))

(assert (=> d!2594 d!2598))

(declare-fun d!2600 () Bool)

(declare-fun lt!1002 () AbsQueue!15)

(assert (=> d!2600 (isAmortized!0 lt!1002)))

(declare-fun e!1985 () AbsQueue!15)

(assert (=> d!2600 (= lt!1002 e!1985)))

(declare-fun c!1285 () Bool)

(assert (=> d!2600 (= c!1285 (<= (size!23 (Cons!66 elem!55 (rear!66 queue!45))) (size!23 (front!64 queue!45))))))

(assert (=> d!2600 (= (amortizedQueue!0 (front!64 queue!45) (Cons!66 elem!55 (rear!66 queue!45))) lt!1002)))

(declare-fun b!3525 () Bool)

(assert (=> b!3525 (= e!1985 (Queue!14 (front!64 queue!45) (Cons!66 elem!55 (rear!66 queue!45))))))

(declare-fun b!3526 () Bool)

(declare-fun concat!2 (List!66 List!66) List!66)

(declare-fun reverse!5 (List!66) List!66)

(assert (=> b!3526 (= e!1985 (Queue!14 (concat!2 (front!64 queue!45) (reverse!5 (Cons!66 elem!55 (rear!66 queue!45)))) Nil!67))))

(assert (= (and d!2600 c!1285) b!3525))

(assert (= (and d!2600 (not c!1285)) b!3526))

(declare-fun m!5537 () Bool)

(assert (=> d!2600 m!5537))

(declare-fun m!5539 () Bool)

(assert (=> d!2600 m!5539))

(declare-fun m!5541 () Bool)

(assert (=> d!2600 m!5541))

(declare-fun m!5543 () Bool)

(assert (=> b!3526 m!5543))

(assert (=> b!3526 m!5543))

(declare-fun m!5545 () Bool)

(assert (=> b!3526 m!5545))

(assert (=> d!2594 d!2600))

(push 1)

(assert (not d!2598))

(assert (not d!2600))

(assert (not b!3526))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2602 () Bool)

(declare-fun lt!1005 () Int)

(assert (=> d!2602 (>= lt!1005 0)))

(declare-fun e!1988 () Int)

(assert (=> d!2602 (= lt!1005 e!1988)))

(declare-fun c!1288 () Bool)

(assert (=> d!2602 (= c!1288 (is-Nil!67 (front!64 lt!999)))))

(assert (=> d!2602 (= (size!23 (front!64 lt!999)) lt!1005)))

(declare-fun b!3531 () Bool)

(assert (=> b!3531 (= e!1988 0)))

(declare-fun b!3532 () Bool)

(assert (=> b!3532 (= e!1988 (+ 1 (size!23 (tail!250 (front!64 lt!999)))))))

(assert (= (and d!2602 c!1288) b!3531))

(assert (= (and d!2602 (not c!1288)) b!3532))

(declare-fun m!5547 () Bool)

(assert (=> b!3532 m!5547))

(assert (=> d!2598 d!2602))

(declare-fun d!2604 () Bool)

(declare-fun lt!1006 () Int)

(assert (=> d!2604 (>= lt!1006 0)))

(declare-fun e!1989 () Int)

(assert (=> d!2604 (= lt!1006 e!1989)))

(declare-fun c!1289 () Bool)

(assert (=> d!2604 (= c!1289 (is-Nil!67 (rear!66 lt!999)))))

(assert (=> d!2604 (= (size!23 (rear!66 lt!999)) lt!1006)))

(declare-fun b!3533 () Bool)

(assert (=> b!3533 (= e!1989 0)))

(declare-fun b!3534 () Bool)

(assert (=> b!3534 (= e!1989 (+ 1 (size!23 (tail!250 (rear!66 lt!999)))))))

(assert (= (and d!2604 c!1289) b!3533))

(assert (= (and d!2604 (not c!1289)) b!3534))

(declare-fun m!5549 () Bool)

(assert (=> b!3534 m!5549))

(assert (=> d!2598 d!2604))

(declare-fun d!2606 () Bool)

(assert (=> d!2606 (= (isAmortized!0 lt!1002) (>= (size!23 (front!64 lt!1002)) (size!23 (rear!66 lt!1002))))))

(declare-fun bs!250 () Bool)

(assert (= bs!250 d!2606))

(declare-fun m!5551 () Bool)

(assert (=> bs!250 m!5551))

(declare-fun m!5553 () Bool)

(assert (=> bs!250 m!5553))

(assert (=> d!2600 d!2606))

(declare-fun d!2608 () Bool)

(declare-fun lt!1007 () Int)

(assert (=> d!2608 (>= lt!1007 0)))

(declare-fun e!1990 () Int)

(assert (=> d!2608 (= lt!1007 e!1990)))

(declare-fun c!1290 () Bool)

(assert (=> d!2608 (= c!1290 (is-Nil!67 (Cons!66 elem!55 (rear!66 queue!45))))))

(assert (=> d!2608 (= (size!23 (Cons!66 elem!55 (rear!66 queue!45))) lt!1007)))

(declare-fun b!3535 () Bool)

(assert (=> b!3535 (= e!1990 0)))

(declare-fun b!3536 () Bool)

(assert (=> b!3536 (= e!1990 (+ 1 (size!23 (tail!250 (Cons!66 elem!55 (rear!66 queue!45))))))))

(assert (= (and d!2608 c!1290) b!3535))

(assert (= (and d!2608 (not c!1290)) b!3536))

(declare-fun m!5555 () Bool)

(assert (=> b!3536 m!5555))

(assert (=> d!2600 d!2608))

(declare-fun d!2610 () Bool)

(declare-fun lt!1008 () Int)

(assert (=> d!2610 (>= lt!1008 0)))

(declare-fun e!1991 () Int)

(assert (=> d!2610 (= lt!1008 e!1991)))

(declare-fun c!1291 () Bool)

(assert (=> d!2610 (= c!1291 (is-Nil!67 (front!64 queue!45)))))

(assert (=> d!2610 (= (size!23 (front!64 queue!45)) lt!1008)))

(declare-fun b!3537 () Bool)

(assert (=> b!3537 (= e!1991 0)))

(declare-fun b!3538 () Bool)

(assert (=> b!3538 (= e!1991 (+ 1 (size!23 (tail!250 (front!64 queue!45)))))))

(assert (= (and d!2610 c!1291) b!3537))

(assert (= (and d!2610 (not c!1291)) b!3538))

(declare-fun m!5557 () Bool)

(assert (=> b!3538 m!5557))

(assert (=> d!2600 d!2610))

(declare-fun d!2612 () Bool)

(declare-fun e!1997 () Bool)

(assert (=> d!2612 e!1997))

(declare-fun res!1082 () Bool)

(assert (=> d!2612 (=> (not res!1082) (not e!1997))))

(declare-fun lt!1011 () List!66)

(assert (=> d!2612 (= res!1082 (= (size!23 lt!1011) (+ (size!23 (front!64 queue!45)) (size!23 (reverse!5 (Cons!66 elem!55 (rear!66 queue!45)))))))))

(declare-fun e!1996 () List!66)

(assert (=> d!2612 (= lt!1011 e!1996)))

(declare-fun c!1294 () Bool)

(assert (=> d!2612 (= c!1294 (is-Nil!67 (front!64 queue!45)))))

(assert (=> d!2612 (= (concat!2 (front!64 queue!45) (reverse!5 (Cons!66 elem!55 (rear!66 queue!45)))) lt!1011)))

(declare-fun b!3545 () Bool)

(assert (=> b!3545 (= e!1996 (reverse!5 (Cons!66 elem!55 (rear!66 queue!45))))))

(declare-fun b!3546 () Bool)

(assert (=> b!3546 (= e!1996 (Cons!66 (head!238 (front!64 queue!45)) (concat!2 (tail!250 (front!64 queue!45)) (reverse!5 (Cons!66 elem!55 (rear!66 queue!45))))))))

(declare-fun b!3547 () Bool)

(declare-fun content!22 (List!66) (Set (_ BitVec 32)))

(assert (=> b!3547 (= e!1997 (= (content!22 lt!1011) (union (content!22 (front!64 queue!45)) (content!22 (reverse!5 (Cons!66 elem!55 (rear!66 queue!45)))))))))

(assert (= (and d!2612 c!1294) b!3545))

(assert (= (and d!2612 (not c!1294)) b!3546))

(assert (= (and d!2612 res!1082) b!3547))

(declare-fun m!5559 () Bool)

(assert (=> d!2612 m!5559))

(assert (=> d!2612 m!5541))

(assert (=> d!2612 m!5543))

(declare-fun m!5561 () Bool)

(assert (=> d!2612 m!5561))

(assert (=> b!3546 m!5543))

(declare-fun m!5563 () Bool)

(assert (=> b!3546 m!5563))

(declare-fun m!5565 () Bool)

(assert (=> b!3547 m!5565))

(declare-fun m!5567 () Bool)

(assert (=> b!3547 m!5567))

(assert (=> b!3547 m!5543))

(declare-fun m!5569 () Bool)

(assert (=> b!3547 m!5569))

(assert (=> b!3526 d!2612))

(declare-fun d!2614 () Bool)

(declare-fun lt!1014 () List!66)

(assert (=> d!2614 (= (content!22 lt!1014) (content!22 (Cons!66 elem!55 (rear!66 queue!45))))))

(declare-fun e!2000 () List!66)

(assert (=> d!2614 (= lt!1014 e!2000)))

(declare-fun c!1297 () Bool)

(assert (=> d!2614 (= c!1297 (is-Nil!67 (Cons!66 elem!55 (rear!66 queue!45))))))

(assert (=> d!2614 (= (reverse!5 (Cons!66 elem!55 (rear!66 queue!45))) lt!1014)))

(declare-fun b!3552 () Bool)

(assert (=> b!3552 (= e!2000 Nil!67)))

(declare-fun b!3553 () Bool)

(assert (=> b!3553 (= e!2000 (concat!2 (reverse!5 (tail!250 (Cons!66 elem!55 (rear!66 queue!45)))) (Cons!66 (head!238 (Cons!66 elem!55 (rear!66 queue!45))) Nil!67)))))

(assert (= (and d!2614 c!1297) b!3552))

(assert (= (and d!2614 (not c!1297)) b!3553))

(declare-fun m!5571 () Bool)

(assert (=> d!2614 m!5571))

(declare-fun m!5573 () Bool)

(assert (=> d!2614 m!5573))

(declare-fun m!5575 () Bool)

(assert (=> b!3553 m!5575))

(assert (=> b!3553 m!5575))

(declare-fun m!5577 () Bool)

(assert (=> b!3553 m!5577))

(assert (=> b!3526 d!2614))

(push 1)

(assert (not b!3547))

(assert (not b!3536))

(assert (not b!3532))

(assert (not b!3546))

(assert (not b!3538))

(assert (not b!3534))

(assert (not d!2606))

(assert (not d!2614))

(assert (not d!2612))

(assert (not b!3553))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2616 () Bool)

(declare-fun e!2002 () Bool)

(assert (=> d!2616 e!2002))

(declare-fun res!1083 () Bool)

(assert (=> d!2616 (=> (not res!1083) (not e!2002))))

(declare-fun lt!1015 () List!66)

(assert (=> d!2616 (= res!1083 (= (size!23 lt!1015) (+ (size!23 (reverse!5 (tail!250 (Cons!66 elem!55 (rear!66 queue!45))))) (size!23 (Cons!66 (head!238 (Cons!66 elem!55 (rear!66 queue!45))) Nil!67)))))))

(declare-fun e!2001 () List!66)

(assert (=> d!2616 (= lt!1015 e!2001)))

(declare-fun c!1298 () Bool)

(assert (=> d!2616 (= c!1298 (is-Nil!67 (reverse!5 (tail!250 (Cons!66 elem!55 (rear!66 queue!45))))))))

(assert (=> d!2616 (= (concat!2 (reverse!5 (tail!250 (Cons!66 elem!55 (rear!66 queue!45)))) (Cons!66 (head!238 (Cons!66 elem!55 (rear!66 queue!45))) Nil!67)) lt!1015)))

(declare-fun b!3554 () Bool)

(assert (=> b!3554 (= e!2001 (Cons!66 (head!238 (Cons!66 elem!55 (rear!66 queue!45))) Nil!67))))

(declare-fun b!3555 () Bool)

(assert (=> b!3555 (= e!2001 (Cons!66 (head!238 (reverse!5 (tail!250 (Cons!66 elem!55 (rear!66 queue!45))))) (concat!2 (tail!250 (reverse!5 (tail!250 (Cons!66 elem!55 (rear!66 queue!45))))) (Cons!66 (head!238 (Cons!66 elem!55 (rear!66 queue!45))) Nil!67))))))

(declare-fun b!3556 () Bool)

(assert (=> b!3556 (= e!2002 (= (content!22 lt!1015) (union (content!22 (reverse!5 (tail!250 (Cons!66 elem!55 (rear!66 queue!45))))) (content!22 (Cons!66 (head!238 (Cons!66 elem!55 (rear!66 queue!45))) Nil!67)))))))

(assert (= (and d!2616 c!1298) b!3554))

(assert (= (and d!2616 (not c!1298)) b!3555))

(assert (= (and d!2616 res!1083) b!3556))

(declare-fun m!5579 () Bool)

(assert (=> d!2616 m!5579))

(assert (=> d!2616 m!5575))

(declare-fun m!5581 () Bool)

(assert (=> d!2616 m!5581))

(declare-fun m!5583 () Bool)

(assert (=> d!2616 m!5583))

(declare-fun m!5585 () Bool)

(assert (=> b!3555 m!5585))

(declare-fun m!5587 () Bool)

(assert (=> b!3556 m!5587))

(assert (=> b!3556 m!5575))

(declare-fun m!5589 () Bool)

(assert (=> b!3556 m!5589))

(declare-fun m!5591 () Bool)

(assert (=> b!3556 m!5591))

(assert (=> b!3553 d!2616))

(declare-fun d!2618 () Bool)

(declare-fun lt!1016 () List!66)

(assert (=> d!2618 (= (content!22 lt!1016) (content!22 (tail!250 (Cons!66 elem!55 (rear!66 queue!45)))))))

(declare-fun e!2003 () List!66)

(assert (=> d!2618 (= lt!1016 e!2003)))

(declare-fun c!1299 () Bool)

(assert (=> d!2618 (= c!1299 (is-Nil!67 (tail!250 (Cons!66 elem!55 (rear!66 queue!45)))))))

(assert (=> d!2618 (= (reverse!5 (tail!250 (Cons!66 elem!55 (rear!66 queue!45)))) lt!1016)))

(declare-fun b!3557 () Bool)

(assert (=> b!3557 (= e!2003 Nil!67)))

(declare-fun b!3558 () Bool)

(assert (=> b!3558 (= e!2003 (concat!2 (reverse!5 (tail!250 (tail!250 (Cons!66 elem!55 (rear!66 queue!45))))) (Cons!66 (head!238 (tail!250 (Cons!66 elem!55 (rear!66 queue!45)))) Nil!67)))))

(assert (= (and d!2618 c!1299) b!3557))

(assert (= (and d!2618 (not c!1299)) b!3558))

(declare-fun m!5593 () Bool)

(assert (=> d!2618 m!5593))

(declare-fun m!5595 () Bool)

(assert (=> d!2618 m!5595))

(declare-fun m!5597 () Bool)

(assert (=> b!3558 m!5597))

(assert (=> b!3558 m!5597))

(declare-fun m!5599 () Bool)

(assert (=> b!3558 m!5599))

(assert (=> b!3553 d!2618))

(declare-fun d!2620 () Bool)

(declare-fun lt!1017 () Int)

(assert (=> d!2620 (>= lt!1017 0)))

(declare-fun e!2004 () Int)

(assert (=> d!2620 (= lt!1017 e!2004)))

(declare-fun c!1300 () Bool)

(assert (=> d!2620 (= c!1300 (is-Nil!67 (tail!250 (Cons!66 elem!55 (rear!66 queue!45)))))))

(assert (=> d!2620 (= (size!23 (tail!250 (Cons!66 elem!55 (rear!66 queue!45)))) lt!1017)))

(declare-fun b!3559 () Bool)

(assert (=> b!3559 (= e!2004 0)))

(declare-fun b!3560 () Bool)

(assert (=> b!3560 (= e!2004 (+ 1 (size!23 (tail!250 (tail!250 (Cons!66 elem!55 (rear!66 queue!45)))))))))

(assert (= (and d!2620 c!1300) b!3559))

(assert (= (and d!2620 (not c!1300)) b!3560))

(declare-fun m!5601 () Bool)

(assert (=> b!3560 m!5601))

(assert (=> b!3536 d!2620))

(declare-fun d!2622 () Bool)

(declare-fun lt!1018 () Int)

(assert (=> d!2622 (>= lt!1018 0)))

(declare-fun e!2005 () Int)

(assert (=> d!2622 (= lt!1018 e!2005)))

(declare-fun c!1301 () Bool)

(assert (=> d!2622 (= c!1301 (is-Nil!67 lt!1011))))

(assert (=> d!2622 (= (size!23 lt!1011) lt!1018)))

(declare-fun b!3561 () Bool)

(assert (=> b!3561 (= e!2005 0)))

(declare-fun b!3562 () Bool)

(assert (=> b!3562 (= e!2005 (+ 1 (size!23 (tail!250 lt!1011))))))

(assert (= (and d!2622 c!1301) b!3561))

(assert (= (and d!2622 (not c!1301)) b!3562))

(declare-fun m!5603 () Bool)

(assert (=> b!3562 m!5603))

(assert (=> d!2612 d!2622))

(assert (=> d!2612 d!2610))

(declare-fun d!2624 () Bool)

(declare-fun lt!1019 () Int)

(assert (=> d!2624 (>= lt!1019 0)))

(declare-fun e!2006 () Int)

(assert (=> d!2624 (= lt!1019 e!2006)))

(declare-fun c!1302 () Bool)

(assert (=> d!2624 (= c!1302 (is-Nil!67 (reverse!5 (Cons!66 elem!55 (rear!66 queue!45)))))))

(assert (=> d!2624 (= (size!23 (reverse!5 (Cons!66 elem!55 (rear!66 queue!45)))) lt!1019)))

(declare-fun b!3563 () Bool)

(assert (=> b!3563 (= e!2006 0)))

(declare-fun b!3564 () Bool)

(assert (=> b!3564 (= e!2006 (+ 1 (size!23 (tail!250 (reverse!5 (Cons!66 elem!55 (rear!66 queue!45)))))))))

(assert (= (and d!2624 c!1302) b!3563))

(assert (= (and d!2624 (not c!1302)) b!3564))

(declare-fun m!5605 () Bool)

(assert (=> b!3564 m!5605))

(assert (=> d!2612 d!2624))

(declare-fun d!2626 () Bool)

(declare-fun c!1305 () Bool)

(assert (=> d!2626 (= c!1305 (is-Nil!67 lt!1011))))

(declare-fun e!2009 () (Set (_ BitVec 32)))

(assert (=> d!2626 (= (content!22 lt!1011) e!2009)))

(declare-fun b!3569 () Bool)

(assert (=> b!3569 (= e!2009 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3570 () Bool)

(assert (=> b!3570 (= e!2009 (union (insert (head!238 lt!1011) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!250 lt!1011))))))

(assert (= (and d!2626 c!1305) b!3569))

(assert (= (and d!2626 (not c!1305)) b!3570))

(declare-fun m!5607 () Bool)

(assert (=> b!3570 m!5607))

(declare-fun m!5609 () Bool)

(assert (=> b!3570 m!5609))

(assert (=> b!3547 d!2626))

(declare-fun d!2628 () Bool)

(declare-fun c!1306 () Bool)

(assert (=> d!2628 (= c!1306 (is-Nil!67 (front!64 queue!45)))))

(declare-fun e!2010 () (Set (_ BitVec 32)))

(assert (=> d!2628 (= (content!22 (front!64 queue!45)) e!2010)))

(declare-fun b!3571 () Bool)

(assert (=> b!3571 (= e!2010 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3572 () Bool)

(assert (=> b!3572 (= e!2010 (union (insert (head!238 (front!64 queue!45)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!250 (front!64 queue!45)))))))

(assert (= (and d!2628 c!1306) b!3571))

(assert (= (and d!2628 (not c!1306)) b!3572))

(declare-fun m!5611 () Bool)

(assert (=> b!3572 m!5611))

(declare-fun m!5613 () Bool)

(assert (=> b!3572 m!5613))

(assert (=> b!3547 d!2628))

(declare-fun d!2630 () Bool)

(declare-fun c!1307 () Bool)

(assert (=> d!2630 (= c!1307 (is-Nil!67 (reverse!5 (Cons!66 elem!55 (rear!66 queue!45)))))))

(declare-fun e!2011 () (Set (_ BitVec 32)))

(assert (=> d!2630 (= (content!22 (reverse!5 (Cons!66 elem!55 (rear!66 queue!45)))) e!2011)))

(declare-fun b!3573 () Bool)

(assert (=> b!3573 (= e!2011 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3574 () Bool)

(assert (=> b!3574 (= e!2011 (union (insert (head!238 (reverse!5 (Cons!66 elem!55 (rear!66 queue!45)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!250 (reverse!5 (Cons!66 elem!55 (rear!66 queue!45)))))))))

(assert (= (and d!2630 c!1307) b!3573))

(assert (= (and d!2630 (not c!1307)) b!3574))

(declare-fun m!5615 () Bool)

(assert (=> b!3574 m!5615))

(declare-fun m!5617 () Bool)

(assert (=> b!3574 m!5617))

(assert (=> b!3547 d!2630))

(declare-fun d!2632 () Bool)

(declare-fun lt!1020 () Int)

(assert (=> d!2632 (>= lt!1020 0)))

(declare-fun e!2012 () Int)

(assert (=> d!2632 (= lt!1020 e!2012)))

(declare-fun c!1308 () Bool)

(assert (=> d!2632 (= c!1308 (is-Nil!67 (front!64 lt!1002)))))

(assert (=> d!2632 (= (size!23 (front!64 lt!1002)) lt!1020)))

(declare-fun b!3575 () Bool)

(assert (=> b!3575 (= e!2012 0)))

(declare-fun b!3576 () Bool)

(assert (=> b!3576 (= e!2012 (+ 1 (size!23 (tail!250 (front!64 lt!1002)))))))

(assert (= (and d!2632 c!1308) b!3575))

(assert (= (and d!2632 (not c!1308)) b!3576))

(declare-fun m!5619 () Bool)

(assert (=> b!3576 m!5619))

(assert (=> d!2606 d!2632))

(declare-fun d!2634 () Bool)

(declare-fun lt!1021 () Int)

(assert (=> d!2634 (>= lt!1021 0)))

(declare-fun e!2013 () Int)

(assert (=> d!2634 (= lt!1021 e!2013)))

(declare-fun c!1309 () Bool)

(assert (=> d!2634 (= c!1309 (is-Nil!67 (rear!66 lt!1002)))))

(assert (=> d!2634 (= (size!23 (rear!66 lt!1002)) lt!1021)))

(declare-fun b!3577 () Bool)

(assert (=> b!3577 (= e!2013 0)))

(declare-fun b!3578 () Bool)

(assert (=> b!3578 (= e!2013 (+ 1 (size!23 (tail!250 (rear!66 lt!1002)))))))

(assert (= (and d!2634 c!1309) b!3577))

(assert (= (and d!2634 (not c!1309)) b!3578))

(declare-fun m!5621 () Bool)

(assert (=> b!3578 m!5621))

(assert (=> d!2606 d!2634))

(declare-fun d!2636 () Bool)

(declare-fun lt!1022 () Int)

(assert (=> d!2636 (>= lt!1022 0)))

(declare-fun e!2014 () Int)

(assert (=> d!2636 (= lt!1022 e!2014)))

(declare-fun c!1310 () Bool)

(assert (=> d!2636 (= c!1310 (is-Nil!67 (tail!250 (front!64 queue!45))))))

(assert (=> d!2636 (= (size!23 (tail!250 (front!64 queue!45))) lt!1022)))

(declare-fun b!3579 () Bool)

(assert (=> b!3579 (= e!2014 0)))

(declare-fun b!3580 () Bool)

(assert (=> b!3580 (= e!2014 (+ 1 (size!23 (tail!250 (tail!250 (front!64 queue!45))))))))

(assert (= (and d!2636 c!1310) b!3579))

(assert (= (and d!2636 (not c!1310)) b!3580))

(declare-fun m!5623 () Bool)

(assert (=> b!3580 m!5623))

(assert (=> b!3538 d!2636))

(declare-fun d!2638 () Bool)

(declare-fun lt!1023 () Int)

(assert (=> d!2638 (>= lt!1023 0)))

(declare-fun e!2015 () Int)

(assert (=> d!2638 (= lt!1023 e!2015)))

(declare-fun c!1311 () Bool)

(assert (=> d!2638 (= c!1311 (is-Nil!67 (tail!250 (front!64 lt!999))))))

(assert (=> d!2638 (= (size!23 (tail!250 (front!64 lt!999))) lt!1023)))

(declare-fun b!3581 () Bool)

(assert (=> b!3581 (= e!2015 0)))

(declare-fun b!3582 () Bool)

(assert (=> b!3582 (= e!2015 (+ 1 (size!23 (tail!250 (tail!250 (front!64 lt!999))))))))

(assert (= (and d!2638 c!1311) b!3581))

(assert (= (and d!2638 (not c!1311)) b!3582))

(declare-fun m!5625 () Bool)

(assert (=> b!3582 m!5625))

(assert (=> b!3532 d!2638))

(declare-fun d!2640 () Bool)

(declare-fun lt!1024 () Int)

(assert (=> d!2640 (>= lt!1024 0)))

(declare-fun e!2016 () Int)

(assert (=> d!2640 (= lt!1024 e!2016)))

(declare-fun c!1312 () Bool)

(assert (=> d!2640 (= c!1312 (is-Nil!67 (tail!250 (rear!66 lt!999))))))

(assert (=> d!2640 (= (size!23 (tail!250 (rear!66 lt!999))) lt!1024)))

(declare-fun b!3583 () Bool)

(assert (=> b!3583 (= e!2016 0)))

(declare-fun b!3584 () Bool)

(assert (=> b!3584 (= e!2016 (+ 1 (size!23 (tail!250 (tail!250 (rear!66 lt!999))))))))

(assert (= (and d!2640 c!1312) b!3583))

(assert (= (and d!2640 (not c!1312)) b!3584))

(declare-fun m!5627 () Bool)

(assert (=> b!3584 m!5627))

(assert (=> b!3534 d!2640))

(declare-fun d!2642 () Bool)

(declare-fun c!1313 () Bool)

(assert (=> d!2642 (= c!1313 (is-Nil!67 lt!1014))))

(declare-fun e!2017 () (Set (_ BitVec 32)))

(assert (=> d!2642 (= (content!22 lt!1014) e!2017)))

(declare-fun b!3585 () Bool)

(assert (=> b!3585 (= e!2017 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3586 () Bool)

(assert (=> b!3586 (= e!2017 (union (insert (head!238 lt!1014) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!250 lt!1014))))))

(assert (= (and d!2642 c!1313) b!3585))

(assert (= (and d!2642 (not c!1313)) b!3586))

(declare-fun m!5629 () Bool)

(assert (=> b!3586 m!5629))

(declare-fun m!5631 () Bool)

(assert (=> b!3586 m!5631))

(assert (=> d!2614 d!2642))

(declare-fun d!2644 () Bool)

(declare-fun c!1314 () Bool)

(assert (=> d!2644 (= c!1314 (is-Nil!67 (Cons!66 elem!55 (rear!66 queue!45))))))

(declare-fun e!2018 () (Set (_ BitVec 32)))

(assert (=> d!2644 (= (content!22 (Cons!66 elem!55 (rear!66 queue!45))) e!2018)))

(declare-fun b!3587 () Bool)

(assert (=> b!3587 (= e!2018 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3588 () Bool)

(assert (=> b!3588 (= e!2018 (union (insert (head!238 (Cons!66 elem!55 (rear!66 queue!45))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!250 (Cons!66 elem!55 (rear!66 queue!45))))))))

(assert (= (and d!2644 c!1314) b!3587))

(assert (= (and d!2644 (not c!1314)) b!3588))

(declare-fun m!5633 () Bool)

(assert (=> b!3588 m!5633))

(assert (=> b!3588 m!5595))

(assert (=> d!2614 d!2644))

(declare-fun d!2646 () Bool)

(declare-fun e!2020 () Bool)

(assert (=> d!2646 e!2020))

(declare-fun res!1084 () Bool)

(assert (=> d!2646 (=> (not res!1084) (not e!2020))))

(declare-fun lt!1025 () List!66)

(assert (=> d!2646 (= res!1084 (= (size!23 lt!1025) (+ (size!23 (tail!250 (front!64 queue!45))) (size!23 (reverse!5 (Cons!66 elem!55 (rear!66 queue!45)))))))))

(declare-fun e!2019 () List!66)

(assert (=> d!2646 (= lt!1025 e!2019)))

(declare-fun c!1315 () Bool)

(assert (=> d!2646 (= c!1315 (is-Nil!67 (tail!250 (front!64 queue!45))))))

(assert (=> d!2646 (= (concat!2 (tail!250 (front!64 queue!45)) (reverse!5 (Cons!66 elem!55 (rear!66 queue!45)))) lt!1025)))

(declare-fun b!3589 () Bool)

(assert (=> b!3589 (= e!2019 (reverse!5 (Cons!66 elem!55 (rear!66 queue!45))))))

(declare-fun b!3590 () Bool)

(assert (=> b!3590 (= e!2019 (Cons!66 (head!238 (tail!250 (front!64 queue!45))) (concat!2 (tail!250 (tail!250 (front!64 queue!45))) (reverse!5 (Cons!66 elem!55 (rear!66 queue!45))))))))

(declare-fun b!3591 () Bool)

(assert (=> b!3591 (= e!2020 (= (content!22 lt!1025) (union (content!22 (tail!250 (front!64 queue!45))) (content!22 (reverse!5 (Cons!66 elem!55 (rear!66 queue!45)))))))))

(assert (= (and d!2646 c!1315) b!3589))

(assert (= (and d!2646 (not c!1315)) b!3590))

(assert (= (and d!2646 res!1084) b!3591))

(declare-fun m!5635 () Bool)

(assert (=> d!2646 m!5635))

(assert (=> d!2646 m!5557))

(assert (=> d!2646 m!5543))

(assert (=> d!2646 m!5561))

(assert (=> b!3590 m!5543))

(declare-fun m!5637 () Bool)

(assert (=> b!3590 m!5637))

(declare-fun m!5639 () Bool)

(assert (=> b!3591 m!5639))

(assert (=> b!3591 m!5613))

(assert (=> b!3591 m!5543))

(assert (=> b!3591 m!5569))

(assert (=> b!3546 d!2646))

(push 1)

(assert (not b!3562))

(assert (not b!3580))

(assert (not b!3572))

(assert (not b!3591))

(assert (not b!3570))

(assert (not b!3560))

(assert (not b!3576))

(assert (not b!3574))

(assert (not b!3590))

(assert (not b!3578))

(assert (not b!3555))

(assert (not d!2646))

(assert (not b!3588))

(assert (not b!3556))

(assert (not b!3558))

(assert (not d!2616))

(assert (not d!2618))

(assert (not b!3564))

(assert (not b!3586))

(assert (not b!3582))

(assert (not b!3584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

