; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15614 () Bool)

(assert start!15614)

(declare-datatypes () ((Foo!125 (Bar!85 (x!35429 Int)))))

(declare-fun inv!31 (Foo!125) Bool)

(assert (=> start!15614 (not (inv!31 (Bar!85 0)))))

(declare-fun bs!43707 () Bool)

(assert (= bs!43707 start!15614))

(declare-fun m!92588 () Bool)

(assert (=> bs!43707 m!92588))

(push 1)

(assert (not start!15614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63332 () Bool)

(declare-fun inv!32 (Foo!125) Bool)

(assert (=> d!63332 (= (inv!31 (Bar!85 0)) (inv!32 (Bar!85 0)))))

(declare-fun bs!43708 () Bool)

(assert (= bs!43708 d!63332))

(declare-fun m!92590 () Bool)

(assert (=> bs!43708 m!92590))

(assert (=> start!15614 d!63332))

(push 1)

(assert (not d!63332))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63334 () Bool)

(declare-fun res!51123 () Bool)

(declare-fun e!53861 () Bool)

(assert (=> d!63334 (=> (not res!51123) (not e!53861))))

(declare-fun Foo$inv!0 (Foo!125) Bool)

(assert (=> d!63334 (= res!51123 (Foo$inv!0 (Bar!85 0)))))

(assert (=> d!63334 (= (inv!32 (Bar!85 0)) e!53861)))

(declare-fun b!98556 () Bool)

(assert (=> b!98556 (= e!53861 (not (= (x!35429 (Bar!85 0)) 1)))))

(assert (= (and d!63334 res!51123) b!98556))

(declare-fun m!92592 () Bool)

(assert (=> d!63334 m!92592))

(assert (=> d!63332 d!63334))

(push 1)

(assert (not d!63334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63336 () Bool)

(declare-fun x!699 (Foo!125) Int)

(assert (=> d!63336 (= (Foo$inv!0 (Bar!85 0)) (not (= (x!699 (Bar!85 0)) 0)))))

(declare-fun bs!43709 () Bool)

(assert (= bs!43709 d!63336))

(declare-fun m!92594 () Bool)

(assert (=> bs!43709 m!92594))

(assert (=> d!63334 d!63336))

(push 1)

(assert (not d!63336))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63338 () Bool)

(assert (=> d!63338 (= (x!699 (Bar!85 0)) (x!35429 (Bar!85 0)))))

(assert (=> d!63336 d!63338))

(push 1)

(check-sat)

(get-model)

(pop 1)

