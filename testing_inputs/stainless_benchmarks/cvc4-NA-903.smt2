; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6884 () Bool)

(assert start!6884)

(declare-fun res!23373 () Bool)

(declare-fun e!26421 () Bool)

(assert (=> start!6884 (=> (not res!23373) (not e!26421))))

(declare-datatypes () ((Nat!264 (Zero!248) (Succ!245 (n!1403 Nat!264)))))

(declare-fun n1!57 () Nat!264)

(assert (=> start!6884 (= res!23373 (not (is-Zero!248 n1!57)))))

(assert (=> start!6884 e!26421))

(assert (=> start!6884 true))

(declare-fun b!50930 () Bool)

(declare-fun res!23374 () Bool)

(assert (=> b!50930 (=> (not res!23374) (not e!26421))))

(declare-datatypes () ((Unit!834 (Unit!835))))

(declare-fun inductVal!79 () Unit!834)

(declare-fun n2!68 () Nat!264)

(declare-fun plus_succ!0 (Nat!264 Nat!264) Unit!834)

(assert (=> b!50930 (= res!23374 (= inductVal!79 (plus_succ!0 (n!1403 n1!57) n2!68)))))

(declare-fun b!50931 () Bool)

(declare-fun res!23375 () Bool)

(assert (=> b!50931 (=> (not res!23375) (not e!26421))))

(declare-fun x$7!61 () Unit!834)

(declare-fun Unit!836 () Unit!834)

(assert (=> b!50931 (= res!23375 (= x$7!61 Unit!836))))

(declare-fun b!50932 () Bool)

(declare-fun +!5 (Nat!264 Nat!264) Nat!264)

(assert (=> b!50932 (= e!26421 (not (= (+!5 n1!57 (Succ!245 n2!68)) (Succ!245 (+!5 n1!57 n2!68)))))))

(assert (= (and start!6884 res!23373) b!50930))

(assert (= (and b!50930 res!23374) b!50931))

(assert (= (and b!50931 res!23375) b!50932))

(declare-fun m!54487 () Bool)

(assert (=> b!50930 m!54487))

(declare-fun m!54489 () Bool)

(assert (=> b!50932 m!54489))

(declare-fun m!54491 () Bool)

(assert (=> b!50932 m!54491))

(push 1)

(assert (not b!50930))

(assert (not b!50932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43468 () Bool)

(assert (=> d!43468 (= (+!5 (n!1403 n1!57) (Succ!245 n2!68)) (Succ!245 (+!5 (n!1403 n1!57) n2!68)))))

(assert (=> d!43468 true))

(declare-fun x$7!85 () Unit!834)

(assert (=> d!43468 (= (plus_succ!0 (n!1403 n1!57) n2!68) x$7!85)))

(declare-fun bs!23700 () Bool)

(assert (= bs!23700 d!43468))

(declare-fun m!54493 () Bool)

(assert (=> bs!23700 m!54493))

(declare-fun m!54495 () Bool)

(assert (=> bs!23700 m!54495))

(assert (=> b!50930 d!43468))

(declare-fun d!43470 () Bool)

(declare-fun c!10764 () Bool)

(assert (=> d!43470 (= c!10764 (is-Zero!248 n1!57))))

(declare-fun e!26424 () Nat!264)

(assert (=> d!43470 (= (+!5 n1!57 (Succ!245 n2!68)) e!26424)))

(declare-fun b!50937 () Bool)

(assert (=> b!50937 (= e!26424 (Succ!245 n2!68))))

(declare-fun b!50938 () Bool)

(assert (=> b!50938 (= e!26424 (Succ!245 (+!5 (n!1403 n1!57) (Succ!245 n2!68))))))

(assert (= (and d!43470 c!10764) b!50937))

(assert (= (and d!43470 (not c!10764)) b!50938))

(assert (=> b!50938 m!54493))

(assert (=> b!50932 d!43470))

(declare-fun d!43472 () Bool)

(declare-fun c!10765 () Bool)

(assert (=> d!43472 (= c!10765 (is-Zero!248 n1!57))))

(declare-fun e!26425 () Nat!264)

(assert (=> d!43472 (= (+!5 n1!57 n2!68) e!26425)))

(declare-fun b!50939 () Bool)

(assert (=> b!50939 (= e!26425 n2!68)))

(declare-fun b!50940 () Bool)

(assert (=> b!50940 (= e!26425 (Succ!245 (+!5 (n!1403 n1!57) n2!68)))))

(assert (= (and d!43472 c!10765) b!50939))

(assert (= (and d!43472 (not c!10765)) b!50940))

(assert (=> b!50940 m!54495))

(assert (=> b!50932 d!43472))

(push 1)

(assert (not b!50938))

(assert (not d!43468))

(assert (not b!50940))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

