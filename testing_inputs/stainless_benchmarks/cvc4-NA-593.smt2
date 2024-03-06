; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4404 () Bool)

(assert start!4404)

(declare-fun res!16015 () Bool)

(declare-fun e!17569 () Bool)

(assert (=> start!4404 (=> (not res!16015) (not e!17569))))

(declare-datatypes () ((Object!145 (Open!145 (value!2458 Int)))))

(declare-datatypes () ((TrieMapWrapper!12 (TrieMapWrapper!13 (theMap!11 Object!145)))))

(declare-fun wrapper!5 () TrieMapWrapper!12)

(declare-fun res!16018 () TrieMapWrapper!12)

(assert (=> start!4404 (= res!16015 (= wrapper!5 res!16018))))

(assert (=> start!4404 true))

(assert (=> start!4404 e!17569))

(declare-fun b!34800 () Bool)

(declare-fun res!16016 () Bool)

(assert (=> b!34800 (=> (not res!16016) (not e!17569))))

(declare-fun wrapper!6 () TrieMapWrapper!12)

(declare-datatypes () ((Unit!232 (Unit!233))))

(declare-fun tmp!92 () Unit!232)

(declare-datatypes () ((tuple2!130 (tuple2!131 (_1!65 Unit!232) (_2!65 TrieMapWrapper!12)))))

(declare-fun res!15945 () tuple2!130)

(declare-fun tmp!91 () Unit!232)

(declare-fun Unit!234 () Unit!232)

(assert (=> b!34800 (= res!16016 (and (= wrapper!6 (_2!65 res!15945)) (= tmp!91 Unit!234) (= tmp!92 (_1!65 res!15945))))))

(declare-fun b!34801 () Bool)

(declare-fun res!16017 () Bool)

(assert (=> b!34801 (=> (not res!16017) (not e!17569))))

(declare-datatypes () ((String!442 (String!443 (value!2459 String)))))

(declare-fun insert!24 (TrieMapWrapper!12 Int String!442) tuple2!130)

(assert (=> b!34801 (= res!16017 (= res!15945 (insert!24 wrapper!5 42 (String!443 "HHeelllloo"))))))

(declare-fun b!34802 () Bool)

(declare-fun apply!50 (TrieMapWrapper!12 Int) String!442)

(assert (=> b!34802 (= e!17569 (not (= (apply!50 wrapper!6 42) (String!443 "HHeelllloo"))))))

(declare-fun b!34803 () Bool)

(declare-fun res!16014 () Bool)

(assert (=> b!34803 (=> (not res!16014) (not e!17569))))

(declare-fun contains!36 (TrieMapWrapper!12 Int) Bool)

(assert (=> b!34803 (= res!16014 (contains!36 wrapper!6 42))))

(declare-fun b!34804 () Bool)

(declare-fun res!16019 () Bool)

(assert (=> b!34804 (=> (not res!16019) (not e!17569))))

(assert (=> b!34804 (= res!16019 (not (contains!36 wrapper!5 42)))))

(assert (= (and start!4404 res!16015) b!34804))

(assert (= (and b!34804 res!16019) b!34801))

(assert (= (and b!34801 res!16017) b!34800))

(assert (= (and b!34800 res!16016) b!34803))

(assert (= (and b!34803 res!16014) b!34802))

(declare-fun m!37367 () Bool)

(assert (=> b!34801 m!37367))

(declare-fun m!37369 () Bool)

(assert (=> b!34802 m!37369))

(declare-fun m!37371 () Bool)

(assert (=> b!34803 m!37371))

(declare-fun m!37373 () Bool)

(assert (=> b!34804 m!37373))

(push 1)

(assert (not b!34802))

(assert (not b!34804))

(assert (not b!34801))

(assert (not b!34803))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18254 () Bool)

(assert (=> d!18254 true))

(declare-fun res!16022 () String!442)

(declare-fun inv!573 (String!442) Bool)

(assert (=> d!18254 (inv!573 res!16022)))

(assert (=> d!18254 (= (apply!50 wrapper!6 42) res!16022)))

(declare-fun bs!11197 () Bool)

(assert (= bs!11197 d!18254))

(declare-fun m!37375 () Bool)

(assert (=> bs!11197 m!37375))

(assert (=> b!34802 d!18254))

(declare-fun d!18256 () Bool)

(assert (=> d!18256 true))

(assert (=> d!18256 true))

(declare-fun res!16025 () Bool)

(assert (=> d!18256 (= (contains!36 wrapper!5 42) res!16025)))

(assert (=> b!34804 d!18256))

(declare-fun d!18258 () Bool)

(declare-fun e!17575 () Bool)

(assert (=> d!18258 e!17575))

(declare-fun res!16031 () Bool)

(assert (=> d!18258 (=> (not res!16031) (not e!17575))))

(declare-fun res!16030 () tuple2!130)

(assert (=> d!18258 (= res!16031 (contains!36 (_2!65 res!16030) 42))))

(assert (=> d!18258 true))

(assert (=> d!18258 (= (insert!24 wrapper!5 42 (String!443 "HHeelllloo")) res!16030)))

(declare-fun b!34807 () Bool)

(assert (=> b!34807 (= e!17575 (= (apply!50 (_2!65 res!16030) 42) (String!443 "HHeelllloo")))))

(assert (= (and d!18258 res!16031) b!34807))

(declare-fun m!37377 () Bool)

(assert (=> d!18258 m!37377))

(declare-fun m!37379 () Bool)

(assert (=> b!34807 m!37379))

(assert (=> b!34801 d!18258))

(declare-fun d!18260 () Bool)

(assert (=> d!18260 true))

(assert (=> d!18260 true))

(declare-fun res!16032 () Bool)

(assert (=> d!18260 (= (contains!36 wrapper!6 42) res!16032)))

(assert (=> b!34803 d!18260))

(declare-fun bs!11198 () Bool)

(declare-fun s!760 () Bool)

(assert (= bs!11198 (and start!4404 s!760)))

(assert (=> bs!11198 (=> true (not (contains!36 res!16018 42)))))

(declare-fun m!37381 () Bool)

(assert (=> m!37371 m!37381))

(assert (=> m!37371 s!760))

(assert (=> m!37373 s!760))

(push 1)

(assert (not d!18258))

(assert (not bs!11198))

(assert (not b!34807))

(assert (not d!18254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

