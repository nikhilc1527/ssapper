; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4392 () Bool)

(assert start!4392)

(declare-fun b!34766 () Bool)

(declare-fun res!15967 () Bool)

(declare-fun e!17557 () Bool)

(assert (=> b!34766 (=> (not res!15967) (not e!17557))))

(declare-datatypes () ((Object!142 (Open!142 (value!2453 Int)))))

(declare-datatypes () ((TrieMapWrapper!6 (TrieMapWrapper!7 (theMap!8 Object!142)))))

(declare-fun wrapper!6 () TrieMapWrapper!6)

(declare-datatypes () ((Unit!226 (Unit!227))))

(declare-fun tmp!92 () Unit!226)

(declare-datatypes () ((tuple2!126 (tuple2!127 (_1!63 Unit!226) (_2!63 TrieMapWrapper!6)))))

(declare-fun res!15945 () tuple2!126)

(declare-fun tmp!91 () Unit!226)

(declare-fun Unit!228 () Unit!226)

(assert (=> b!34766 (= res!15967 (and (= wrapper!6 (_2!63 res!15945)) (= tmp!91 Unit!228) (= tmp!92 (_1!63 res!15945))))))

(declare-fun b!34767 () Bool)

(declare-fun res!15961 () Bool)

(assert (=> b!34767 (=> (not res!15961) (not e!17557))))

(declare-fun wrapper!5 () TrieMapWrapper!6)

(declare-datatypes () ((String!438 (String!439 (value!2454 String)))))

(declare-fun insert!22 (TrieMapWrapper!6 Int String!438) tuple2!126)

(assert (=> b!34767 (= res!15961 (= res!15945 (insert!22 wrapper!5 42 (String!439 "HHeelllloo"))))))

(declare-fun b!34768 () Bool)

(declare-fun res!15966 () Bool)

(assert (=> b!34768 (=> (not res!15966) (not e!17557))))

(declare-fun contains!33 (TrieMapWrapper!6 Int) Bool)

(assert (=> b!34768 (= res!15966 (contains!33 wrapper!6 42))))

(declare-fun res!15964 () Bool)

(assert (=> start!4392 (=> (not res!15964) (not e!17557))))

(declare-fun res!15962 () TrieMapWrapper!6)

(assert (=> start!4392 (= res!15964 (= wrapper!5 res!15962))))

(assert (=> start!4392 true))

(assert (=> start!4392 e!17557))

(declare-fun b!34769 () Bool)

(declare-fun thiss!3957 () TrieMapWrapper!6)

(declare-fun k!135 () Int)

(assert (=> b!34769 (= e!17557 (not (contains!33 thiss!3957 k!135)))))

(declare-fun b!34770 () Bool)

(declare-fun res!15965 () Bool)

(assert (=> b!34770 (=> (not res!15965) (not e!17557))))

(assert (=> b!34770 (= res!15965 (not (contains!33 wrapper!5 42)))))

(declare-fun b!34771 () Bool)

(declare-fun res!15963 () Bool)

(assert (=> b!34771 (=> (not res!15963) (not e!17557))))

(assert (=> b!34771 (= res!15963 (and (= thiss!3957 wrapper!6) (= k!135 42)))))

(assert (= (and start!4392 res!15964) b!34770))

(assert (= (and b!34770 res!15965) b!34767))

(assert (= (and b!34767 res!15961) b!34766))

(assert (= (and b!34766 res!15967) b!34768))

(assert (= (and b!34768 res!15966) b!34771))

(assert (= (and b!34771 res!15963) b!34769))

(declare-fun m!37343 () Bool)

(assert (=> b!34767 m!37343))

(declare-fun m!37345 () Bool)

(assert (=> b!34768 m!37345))

(declare-fun m!37347 () Bool)

(assert (=> b!34769 m!37347))

(declare-fun m!37349 () Bool)

(assert (=> b!34770 m!37349))

(push 1)

(assert (not b!34768))

(assert (not b!34770))

(assert (not b!34767))

(assert (not b!34769))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

