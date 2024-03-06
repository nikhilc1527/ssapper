; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8122 () Bool)

(assert start!8122)

(declare-fun res!26828 () Bool)

(declare-fun e!30739 () Bool)

(assert (=> start!8122 (=> (not res!26828) (not e!30739))))

(declare-datatypes () ((MutableBox!3 (MutableBox!4 (value!4232 Bool)))))

(declare-fun box1!4 () MutableBox!3)

(declare-fun box2!2 () MutableBox!3)

(assert (=> start!8122 (= res!26828 (and (= box1!4 (MutableBox!4 false)) (= box2!2 box1!4)))))

(assert (=> start!8122 e!30739))

(assert (=> start!8122 true))

(declare-fun b!57839 () Bool)

(declare-fun res!26829 () Bool)

(assert (=> b!57839 (=> (not res!26829) (not e!30739))))

(declare-datatypes () ((Unit!964 (Unit!965))))

(declare-datatypes () ((tuple2!282 (tuple2!283 (_1!168 Unit!964) (_2!168 MutableBox!3)))))

(declare-fun res!26822 () tuple2!282)

(declare-fun mutate!0 (MutableBox!3) tuple2!282)

(assert (=> b!57839 (= res!26829 (= res!26822 (mutate!0 box1!4)))))

(declare-fun tmp!452 () Unit!964)

(declare-fun res!26823 () Unit!964)

(declare-fun tmp!453 () Unit!964)

(declare-fun box1!6 () MutableBox!3)

(declare-fun t!47056 () tuple2!282)

(declare-fun b!57840 () Bool)

(declare-fun Unit!966 () Unit!964)

(assert (=> b!57840 (= e!30739 (and (= t!47056 (tuple2!283 Unit!966 (_2!168 res!26822))) (= res!26823 (_1!168 t!47056)) (= box1!6 (_2!168 t!47056)) (= tmp!452 res!26823) (= tmp!453 (_1!168 res!26822)) (not (value!4232 box1!6))))))

(assert (= (and start!8122 res!26828) b!57839))

(assert (= (and b!57839 res!26829) b!57840))

(declare-fun m!62394 () Bool)

(assert (=> b!57839 m!62394))

(push 1)

(assert (not b!57839))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50322 () Bool)

(declare-fun Unit!967 () Unit!964)

(assert (=> d!50322 (= (mutate!0 box1!4) (tuple2!283 Unit!967 (MutableBox!4 true)))))

(assert (=> b!57839 d!50322))

(push 1)

(check-sat)

(pop 1)

