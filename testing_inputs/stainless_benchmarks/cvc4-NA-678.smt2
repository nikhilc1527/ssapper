; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4790 () Bool)

(assert start!4790)

(declare-fun e!19328 () Bool)

(declare-datatypes () ((Nat!39 (Zero!23) (Succ!20 (n!1102 Nat!39)))))

(declare-fun n2!375 () Nat!39)

(declare-fun b!37585 () Bool)

(declare-fun n3!64 () Nat!39)

(declare-fun n1!359 () Nat!39)

(declare-fun n4!2 () Nat!39)

(declare-fun pair!0 (Nat!39 Nat!39) Nat!39)

(declare-datatypes () ((tuple2!166 (tuple2!167 (_1!109 Nat!39) (_2!109 Nat!39)))))

(assert (=> b!37585 (= e!19328 (not (= (= (pair!0 n1!359 n2!375) (pair!0 n3!64 n4!2)) (= (tuple2!167 n1!359 n2!375) (tuple2!167 n3!64 n4!2)))))))

(declare-fun b!37582 () Bool)

(declare-datatypes () ((Unit!293 (Unit!294))))

(declare-fun e!19329 () Unit!293)

(declare-fun Unit!295 () Unit!293)

(assert (=> b!37582 (= e!19329 Unit!295)))

(assert (=> b!37582 (= (= (tuple2!167 n1!359 n2!375) (tuple2!167 n3!64 n4!2)) true)))

(declare-fun lt!7491 () Unit!293)

(declare-fun inverse_lemma!0 (Nat!39 Nat!39) Unit!293)

(assert (=> b!37582 (= lt!7491 (inverse_lemma!0 n3!64 n4!2))))

(declare-fun lt!7492 () Unit!293)

(assert (=> b!37582 (= lt!7492 (inverse_lemma!0 n1!359 n2!375))))

(declare-fun res!17875 () Bool)

(assert (=> start!4790 (=> (not res!17875) (not e!19328))))

(declare-fun t!5175 () Unit!293)

(assert (=> start!4790 (= res!17875 (= t!5175 e!19329))))

(declare-fun c!8183 () Bool)

(assert (=> start!4790 (= c!8183 (= (pair!0 n1!359 n2!375) (pair!0 n3!64 n4!2)))))

(assert (=> start!4790 e!19328))

(assert (=> start!4790 true))

(declare-fun b!37584 () Bool)

(declare-fun res!17874 () Bool)

(assert (=> b!37584 (=> (not res!17874) (not e!19328))))

(declare-fun res!17753 () Unit!293)

(declare-fun x$108!1 () Unit!293)

(assert (=> b!37584 (= res!17874 (and (= res!17753 t!5175) (= x$108!1 res!17753)))))

(declare-fun b!37583 () Bool)

(declare-fun Unit!296 () Unit!293)

(assert (=> b!37583 (= e!19329 Unit!296)))

(assert (=> b!37583 (= (= (tuple2!167 n1!359 n2!375) (tuple2!167 n3!64 n4!2)) false)))

(assert (= (and start!4790 c!8183) b!37582))

(assert (= (and start!4790 (not c!8183)) b!37583))

(assert (= (and start!4790 res!17875) b!37584))

(assert (= (and b!37584 res!17874) b!37585))

(declare-fun m!38875 () Bool)

(assert (=> b!37585 m!38875))

(declare-fun m!38877 () Bool)

(assert (=> b!37585 m!38877))

(declare-fun m!38879 () Bool)

(assert (=> b!37582 m!38879))

(declare-fun m!38881 () Bool)

(assert (=> b!37582 m!38881))

(assert (=> start!4790 m!38875))

(assert (=> start!4790 m!38877))

(push 1)

(assert (not b!37585))

(assert (not b!37582))

(assert (not start!4790))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

