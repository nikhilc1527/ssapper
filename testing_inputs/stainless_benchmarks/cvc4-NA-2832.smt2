; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14744 () Bool)

(assert start!14744)

(declare-datatypes () ((P!56 (Charlie!56) (Alice!56) (Bob!56))))

(declare-datatypes () ((List!862 (Cons!800 (h!4660 P!56) (t!52874 List!862)) (Nil!802))))

(declare-fun lt!21543 () List!862)

(assert (=> start!14744 (= lt!21543 (Cons!800 Charlie!56 Nil!802))))

(declare-fun a!232 () P!56)

(declare-datatypes () ((tuple2!458 (tuple2!459 (_1!268 P!56) (_2!268 P!56)))))

(declare-datatypes () ((List!863 (Cons!801 (h!4661 tuple2!458) (t!52875 List!863)) (Nil!803))))

(declare-fun size!976 (List!863) Int)

(declare-fun size!977 (List!862) Int)

(assert (=> start!14744 (not (= (size!976 (Cons!801 (tuple2!459 a!232 (h!4660 lt!21543)) Nil!803)) (size!977 lt!21543)))))

(assert (=> start!14744 true))

(declare-fun bs!42999 () Bool)

(assert (= bs!42999 start!14744))

(declare-fun m!89739 () Bool)

(assert (=> bs!42999 m!89739))

(declare-fun m!89741 () Bool)

(assert (=> bs!42999 m!89741))

(push 1)

(assert (not start!14744))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61452 () Bool)

(declare-fun lt!21546 () Int)

(assert (=> d!61452 (>= lt!21546 0)))

(declare-fun e!51568 () Int)

(assert (=> d!61452 (= lt!21546 e!51568)))

(declare-fun c!23160 () Bool)

(assert (=> d!61452 (= c!23160 (is-Nil!803 (Cons!801 (tuple2!459 a!232 (h!4660 lt!21543)) Nil!803)))))

(assert (=> d!61452 (= (size!976 (Cons!801 (tuple2!459 a!232 (h!4660 lt!21543)) Nil!803)) lt!21546)))

(declare-fun b!94154 () Bool)

(assert (=> b!94154 (= e!51568 0)))

(declare-fun b!94155 () Bool)

(assert (=> b!94155 (= e!51568 (+ 1 (size!976 (t!52875 (Cons!801 (tuple2!459 a!232 (h!4660 lt!21543)) Nil!803)))))))

(assert (= (and d!61452 c!23160) b!94154))

(assert (= (and d!61452 (not c!23160)) b!94155))

(declare-fun m!89743 () Bool)

(assert (=> b!94155 m!89743))

(assert (=> start!14744 d!61452))

(declare-fun d!61454 () Bool)

(declare-fun lt!21549 () Int)

(assert (=> d!61454 (>= lt!21549 0)))

(declare-fun e!51571 () Int)

(assert (=> d!61454 (= lt!21549 e!51571)))

(declare-fun c!23163 () Bool)

(assert (=> d!61454 (= c!23163 (is-Nil!802 lt!21543))))

(assert (=> d!61454 (= (size!977 lt!21543) lt!21549)))

(declare-fun b!94160 () Bool)

(assert (=> b!94160 (= e!51571 0)))

(declare-fun b!94161 () Bool)

(assert (=> b!94161 (= e!51571 (+ 1 (size!977 (t!52874 lt!21543))))))

(assert (= (and d!61454 c!23163) b!94160))

(assert (= (and d!61454 (not c!23163)) b!94161))

(declare-fun m!89745 () Bool)

(assert (=> b!94161 m!89745))

(assert (=> start!14744 d!61454))

(push 1)

(assert (not b!94161))

(assert (not b!94155))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61456 () Bool)

(declare-fun lt!21550 () Int)

(assert (=> d!61456 (>= lt!21550 0)))

(declare-fun e!51572 () Int)

(assert (=> d!61456 (= lt!21550 e!51572)))

(declare-fun c!23164 () Bool)

(assert (=> d!61456 (= c!23164 (is-Nil!802 (t!52874 lt!21543)))))

(assert (=> d!61456 (= (size!977 (t!52874 lt!21543)) lt!21550)))

(declare-fun b!94162 () Bool)

(assert (=> b!94162 (= e!51572 0)))

(declare-fun b!94163 () Bool)

(assert (=> b!94163 (= e!51572 (+ 1 (size!977 (t!52874 (t!52874 lt!21543)))))))

(assert (= (and d!61456 c!23164) b!94162))

(assert (= (and d!61456 (not c!23164)) b!94163))

(declare-fun m!89747 () Bool)

(assert (=> b!94163 m!89747))

(assert (=> b!94161 d!61456))

(declare-fun d!61458 () Bool)

(declare-fun lt!21551 () Int)

(assert (=> d!61458 (>= lt!21551 0)))

(declare-fun e!51573 () Int)

(assert (=> d!61458 (= lt!21551 e!51573)))

(declare-fun c!23165 () Bool)

(assert (=> d!61458 (= c!23165 (is-Nil!803 (t!52875 (Cons!801 (tuple2!459 a!232 (h!4660 lt!21543)) Nil!803))))))

(assert (=> d!61458 (= (size!976 (t!52875 (Cons!801 (tuple2!459 a!232 (h!4660 lt!21543)) Nil!803))) lt!21551)))

(declare-fun b!94164 () Bool)

(assert (=> b!94164 (= e!51573 0)))

(declare-fun b!94165 () Bool)

(assert (=> b!94165 (= e!51573 (+ 1 (size!976 (t!52875 (t!52875 (Cons!801 (tuple2!459 a!232 (h!4660 lt!21543)) Nil!803))))))))

(assert (= (and d!61458 c!23165) b!94164))

(assert (= (and d!61458 (not c!23165)) b!94165))

(declare-fun m!89749 () Bool)

(assert (=> b!94165 m!89749))

(assert (=> b!94155 d!61458))

(push 1)

(assert (not b!94163))

(assert (not b!94165))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

