; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5652 () Bool)

(assert start!5652)

(declare-fun b!43400 () Bool)

(declare-fun e!22495 () Bool)

(declare-datatypes () ((Nat!106 (Zero!90) (Succ!87 (n!1227 Nat!106)))))

(declare-fun n1!240 () Nat!106)

(declare-fun n2!252 () Nat!106)

(declare-datatypes () ((tuple2!258 (tuple2!259 (_1!155 Nat!106) (_2!155 Nat!106)))))

(declare-fun log2_and_remainder!0 (Nat!106) tuple2!258)

(declare-fun pair!0 (Nat!106 Nat!106) Nat!106)

(declare-fun +!5 (Nat!106 Nat!106) Nat!106)

(declare-fun *!4 (Nat!106 Nat!106) Nat!106)

(assert (=> b!43400 (= e!22495 (not (= (log2_and_remainder!0 (Succ!87 (pair!0 n1!240 n2!252))) (tuple2!259 n1!240 (+!5 (*!4 (Succ!87 (Succ!87 Zero!90)) n2!252) (Succ!87 Zero!90))))))))

(declare-fun b!43401 () Bool)

(declare-fun e!22498 () Nat!106)

(declare-fun res!20574 () Nat!106)

(assert (=> b!43401 (= e!22498 res!20574)))

(assert (=> b!43401 true))

(declare-fun b!43402 () Bool)

(declare-fun e!22496 () tuple2!258)

(declare-fun res!20576 () tuple2!258)

(assert (=> b!43402 (= e!22496 res!20576)))

(assert (=> b!43402 true))

(declare-fun b!43403 () Bool)

(declare-fun lt!7942 () Nat!106)

(assert (=> b!43403 (= e!22496 (log2_and_remainder!0 (Succ!87 lt!7942)))))

(declare-fun b!43404 () Bool)

(declare-fun e!22497 () Nat!106)

(assert (=> b!43404 (= e!22497 (+!5 e!22498 (Succ!87 Zero!90)))))

(declare-fun c!9200 () Bool)

(declare-fun lt!7943 () Bool)

(assert (=> b!43404 (= c!9200 (or lt!7943 (not lt!7943)))))

(declare-fun b!43405 () Bool)

(assert (=> b!43405 (= e!22498 (*!4 (Succ!87 (Succ!87 Zero!90)) n2!252))))

(declare-fun res!20575 () Bool)

(assert (=> start!5652 (=> (not res!20575) (not e!22495))))

(declare-datatypes () ((Unit!404 (Unit!405))))

(declare-fun t!5168 () Unit!404)

(declare-fun e!22499 () Unit!404)

(assert (=> start!5652 (= res!20575 (= t!5168 e!22499))))

(declare-fun c!9199 () Bool)

(assert (=> start!5652 (= c!9199 lt!7943)))

(declare-fun lt!7945 () Nat!106)

(assert (=> start!5652 (= lt!7945 e!22497)))

(declare-fun c!9201 () Bool)

(assert (=> start!5652 (= c!9201 (or lt!7943 (not lt!7943)))))

(declare-fun lt!7944 () tuple2!258)

(assert (=> start!5652 (= lt!7944 e!22496)))

(declare-fun c!9202 () Bool)

(assert (=> start!5652 (= c!9202 (or lt!7943 (not lt!7943)))))

(assert (=> start!5652 (= lt!7942 (pair!0 n1!240 n2!252))))

(assert (=> start!5652 (= lt!7943 (is-Succ!87 n1!240))))

(assert (=> start!5652 e!22495))

(assert (=> start!5652 true))

(declare-fun b!43406 () Bool)

(declare-fun res!20578 () Bool)

(assert (=> b!43406 (=> (not res!20578) (not e!22495))))

(declare-fun res!17736 () Unit!404)

(declare-fun x$97!2 () Unit!404)

(assert (=> b!43406 (= res!20578 (and (= res!17736 t!5168) (= x$97!2 res!17736)))))

(declare-fun b!43407 () Bool)

(declare-fun res!20577 () Nat!106)

(assert (=> b!43407 (= e!22497 res!20577)))

(assert (=> b!43407 true))

(declare-fun b!43408 () Bool)

(declare-fun Unit!406 () Unit!404)

(assert (=> b!43408 (= e!22499 Unit!406)))

(assert (=> b!43408 (= lt!7944 (tuple2!259 Zero!90 lt!7945))))

(declare-fun b!43409 () Bool)

(declare-fun Unit!407 () Unit!404)

(assert (=> b!43409 (= e!22499 Unit!407)))

(assert (=> b!43409 (= lt!7944 (tuple2!259 n1!240 lt!7945))))

(assert (= (and start!5652 c!9202) b!43403))

(assert (= (and start!5652 (not c!9202)) b!43402))

(assert (= (and b!43404 c!9200) b!43405))

(assert (= (and b!43404 (not c!9200)) b!43401))

(assert (= (and start!5652 c!9201) b!43404))

(assert (= (and start!5652 (not c!9201)) b!43407))

(assert (= (and start!5652 c!9199) b!43409))

(assert (= (and start!5652 (not c!9199)) b!43408))

(assert (= (and start!5652 res!20575) b!43406))

(assert (= (and b!43406 res!20578) b!43400))

(declare-fun m!46629 () Bool)

(assert (=> b!43405 m!46629))

(declare-fun m!46631 () Bool)

(assert (=> b!43403 m!46631))

(declare-fun m!46633 () Bool)

(assert (=> b!43400 m!46633))

(declare-fun m!46635 () Bool)

(assert (=> b!43400 m!46635))

(assert (=> b!43400 m!46629))

(assert (=> b!43400 m!46629))

(declare-fun m!46637 () Bool)

(assert (=> b!43400 m!46637))

(assert (=> start!5652 m!46633))

(declare-fun m!46639 () Bool)

(assert (=> b!43404 m!46639))

(push 1)

(assert (not b!43404))

(assert (not b!43405))

(assert (not b!43400))

(assert (not b!43403))

(assert (not start!5652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

