; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4764 () Bool)

(assert start!4764)

(declare-fun b!37421 () Bool)

(declare-fun res!17783 () Bool)

(declare-fun e!19239 () Bool)

(assert (=> b!37421 (=> (not res!17783) (not e!19239))))

(declare-datatypes () ((Unit!277 (Unit!278))))

(declare-fun tmp!239 () Unit!277)

(declare-datatypes () ((Nat!29 (Zero!13) (Succ!10 (n!1091 Nat!29)))))

(declare-fun n3!64 () Nat!29)

(declare-fun n4!2 () Nat!29)

(declare-fun inverse_lemma!0 (Nat!29 Nat!29) Unit!277)

(assert (=> b!37421 (= res!17783 (= tmp!239 (inverse_lemma!0 n3!64 n4!2)))))

(declare-fun b!37420 () Bool)

(declare-fun res!17782 () Bool)

(assert (=> b!37420 (=> (not res!17782) (not e!19239))))

(declare-fun n2!375 () Nat!29)

(declare-fun tmp!238 () Unit!277)

(declare-fun n1!359 () Nat!29)

(assert (=> b!37420 (= res!17782 (= tmp!238 (inverse_lemma!0 n1!359 n2!375)))))

(declare-fun b!37422 () Bool)

(declare-datatypes () ((tuple2!152 (tuple2!153 (_1!102 Nat!29) (_2!102 Nat!29)))))

(assert (=> b!37422 (= e!19239 (not (= (tuple2!153 n1!359 n2!375) (tuple2!153 n3!64 n4!2))))))

(declare-fun res!17785 () Bool)

(assert (=> start!4764 (=> (not res!17785) (not e!19239))))

(declare-fun pair!0 (Nat!29 Nat!29) Nat!29)

(assert (=> start!4764 (= res!17785 (= (pair!0 n1!359 n2!375) (pair!0 n3!64 n4!2)))))

(assert (=> start!4764 e!19239))

(assert (=> start!4764 true))

(declare-fun b!37419 () Bool)

(declare-fun res!17784 () Bool)

(assert (=> b!37419 (=> (not res!17784) (not e!19239))))

(declare-fun project!0 (Nat!29) tuple2!152)

(assert (=> b!37419 (= res!17784 (= (project!0 (pair!0 n1!359 n2!375)) (project!0 (pair!0 n3!64 n4!2))))))

(assert (= (and start!4764 res!17785) b!37419))

(assert (= (and b!37419 res!17784) b!37420))

(assert (= (and b!37420 res!17782) b!37421))

(assert (= (and b!37421 res!17783) b!37422))

(declare-fun m!38699 () Bool)

(assert (=> b!37421 m!38699))

(declare-fun m!38701 () Bool)

(assert (=> b!37420 m!38701))

(declare-fun m!38703 () Bool)

(assert (=> start!4764 m!38703))

(declare-fun m!38705 () Bool)

(assert (=> start!4764 m!38705))

(assert (=> b!37419 m!38703))

(assert (=> b!37419 m!38703))

(declare-fun m!38707 () Bool)

(assert (=> b!37419 m!38707))

(assert (=> b!37419 m!38705))

(assert (=> b!37419 m!38705))

(declare-fun m!38709 () Bool)

(assert (=> b!37419 m!38709))

(push 1)

(assert (not start!4764))

(assert (not b!37419))

(assert (not b!37421))

(assert (not b!37420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18832 () Bool)

(declare-fun -!4 (Nat!29 Nat!29) Nat!29)

(declare-fun *!4 (Nat!29 Nat!29) Nat!29)

(declare-fun pow!0 (Nat!29 Nat!29) Nat!29)

(declare-fun +!5 (Nat!29 Nat!29) Nat!29)

(assert (=> d!18832 (= (pair!0 n1!359 n2!375) (-!4 (*!4 (pow!0 (Succ!10 (Succ!10 Zero!13)) n1!359) (+!5 (*!4 (Succ!10 (Succ!10 Zero!13)) n2!375) (Succ!10 Zero!13))) (Succ!10 Zero!13)))))

(declare-fun bs!11532 () Bool)

(assert (= bs!11532 d!18832))

(declare-fun m!38711 () Bool)

(assert (=> bs!11532 m!38711))

(declare-fun m!38713 () Bool)

(assert (=> bs!11532 m!38713))

(declare-fun m!38715 () Bool)

(assert (=> bs!11532 m!38715))

(declare-fun m!38717 () Bool)

(assert (=> bs!11532 m!38717))

(assert (=> bs!11532 m!38711))

(declare-fun m!38719 () Bool)

(assert (=> bs!11532 m!38719))

(assert (=> bs!11532 m!38715))

(assert (=> bs!11532 m!38713))

(assert (=> bs!11532 m!38719))

(assert (=> start!4764 d!18832))

(declare-fun d!18834 () Bool)

(assert (=> d!18834 (= (pair!0 n3!64 n4!2) (-!4 (*!4 (pow!0 (Succ!10 (Succ!10 Zero!13)) n3!64) (+!5 (*!4 (Succ!10 (Succ!10 Zero!13)) n4!2) (Succ!10 Zero!13))) (Succ!10 Zero!13)))))

(declare-fun bs!11533 () Bool)

(assert (= bs!11533 d!18834))

(declare-fun m!38721 () Bool)

(assert (=> bs!11533 m!38721))

(declare-fun m!38723 () Bool)

(assert (=> bs!11533 m!38723))

(declare-fun m!38725 () Bool)

(assert (=> bs!11533 m!38725))

(declare-fun m!38727 () Bool)

(assert (=> bs!11533 m!38727))

(assert (=> bs!11533 m!38721))

(declare-fun m!38729 () Bool)

(assert (=> bs!11533 m!38729))

(assert (=> bs!11533 m!38725))

(assert (=> bs!11533 m!38723))

(assert (=> bs!11533 m!38729))

(assert (=> start!4764 d!18834))

(declare-fun d!18836 () Bool)

(declare-fun log2_and_remainder!0 (Nat!29) tuple2!152)

(declare-fun /!2 (Nat!29 Nat!29) Nat!29)

(assert (=> d!18836 (= (project!0 (pair!0 n1!359 n2!375)) (tuple2!153 (_1!102 (log2_and_remainder!0 (Succ!10 (pair!0 n1!359 n2!375)))) (/!2 (-!4 (_2!102 (log2_and_remainder!0 (Succ!10 (pair!0 n1!359 n2!375)))) (Succ!10 Zero!13)) (Succ!10 (Succ!10 Zero!13)))))))

(declare-fun bs!11534 () Bool)

(assert (= bs!11534 d!18836))

(declare-fun m!38731 () Bool)

(assert (=> bs!11534 m!38731))

(declare-fun m!38733 () Bool)

(assert (=> bs!11534 m!38733))

(assert (=> bs!11534 m!38733))

(declare-fun m!38735 () Bool)

(assert (=> bs!11534 m!38735))

(assert (=> b!37419 d!18836))

(assert (=> b!37419 d!18832))

(declare-fun d!18838 () Bool)

(assert (=> d!18838 (= (project!0 (pair!0 n3!64 n4!2)) (tuple2!153 (_1!102 (log2_and_remainder!0 (Succ!10 (pair!0 n3!64 n4!2)))) (/!2 (-!4 (_2!102 (log2_and_remainder!0 (Succ!10 (pair!0 n3!64 n4!2)))) (Succ!10 Zero!13)) (Succ!10 (Succ!10 Zero!13)))))))

(declare-fun bs!11535 () Bool)

(assert (= bs!11535 d!18838))

(declare-fun m!38737 () Bool)

(assert (=> bs!11535 m!38737))

(declare-fun m!38739 () Bool)

(assert (=> bs!11535 m!38739))

(assert (=> bs!11535 m!38739))

(declare-fun m!38741 () Bool)

(assert (=> bs!11535 m!38741))

(assert (=> b!37419 d!18838))

(assert (=> b!37419 d!18834))

(declare-fun d!18840 () Bool)

(assert (=> d!18840 (= (project!0 (pair!0 n3!64 n4!2)) (tuple2!153 n3!64 n4!2))))

(assert (=> d!18840 true))

(declare-fun x$105!6 () Unit!277)

(assert (=> d!18840 (= (inverse_lemma!0 n3!64 n4!2) x$105!6)))

(declare-fun bs!11536 () Bool)

(assert (= bs!11536 d!18840))

(assert (=> bs!11536 m!38705))

(assert (=> bs!11536 m!38705))

(assert (=> bs!11536 m!38709))

(assert (=> b!37421 d!18840))

(declare-fun d!18842 () Bool)

(assert (=> d!18842 (= (project!0 (pair!0 n1!359 n2!375)) (tuple2!153 n1!359 n2!375))))

(assert (=> d!18842 true))

(declare-fun x$105!7 () Unit!277)

(assert (=> d!18842 (= (inverse_lemma!0 n1!359 n2!375) x$105!7)))

(declare-fun bs!11537 () Bool)

(assert (= bs!11537 d!18842))

(assert (=> bs!11537 m!38703))

(assert (=> bs!11537 m!38703))

(assert (=> bs!11537 m!38707))

(assert (=> b!37420 d!18842))

(push 1)

(assert (not d!18834))

(assert (not d!18836))

(assert (not d!18840))

(assert (not d!18832))

(assert (not d!18842))

(assert (not d!18838))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

