; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4398 () Bool)

(assert start!4398)

(declare-fun b!34785 () Bool)

(declare-fun res!15987 () Bool)

(declare-fun e!17563 () Bool)

(assert (=> b!34785 (=> (not res!15987) (not e!17563))))

(declare-datatypes () ((Object!144 (Open!144 (value!2456 Int)))))

(declare-datatypes () ((TrieMapWrapper!10 (TrieMapWrapper!11 (theMap!10 Object!144)))))

(declare-fun wrapper!6 () TrieMapWrapper!10)

(declare-datatypes () ((Unit!229 (Unit!230))))

(declare-fun tmp!92 () Unit!229)

(declare-datatypes () ((tuple2!128 (tuple2!129 (_1!64 Unit!229) (_2!64 TrieMapWrapper!10)))))

(declare-fun res!15945 () tuple2!128)

(declare-fun tmp!91 () Unit!229)

(declare-fun Unit!231 () Unit!229)

(assert (=> b!34785 (= res!15987 (and (= wrapper!6 (_2!64 res!15945)) (= tmp!91 Unit!231) (= tmp!92 (_1!64 res!15945))))))

(declare-fun res!15991 () Bool)

(assert (=> start!4398 (=> (not res!15991) (not e!17563))))

(declare-fun wrapper!5 () TrieMapWrapper!10)

(declare-fun res!15990 () TrieMapWrapper!10)

(assert (=> start!4398 (= res!15991 (= wrapper!5 res!15990))))

(assert (=> start!4398 true))

(assert (=> start!4398 e!17563))

(declare-fun b!34786 () Bool)

(declare-fun contains!35 (TrieMapWrapper!10 Int) Bool)

(assert (=> b!34786 (= e!17563 (not (contains!35 wrapper!6 42)))))

(declare-fun b!34783 () Bool)

(declare-fun res!15988 () Bool)

(assert (=> b!34783 (=> (not res!15988) (not e!17563))))

(assert (=> b!34783 (= res!15988 (not (contains!35 wrapper!5 42)))))

(declare-fun b!34784 () Bool)

(declare-fun res!15989 () Bool)

(assert (=> b!34784 (=> (not res!15989) (not e!17563))))

(declare-datatypes () ((String!440 (String!441 (value!2457 String)))))

(declare-fun insert!23 (TrieMapWrapper!10 Int String!440) tuple2!128)

(assert (=> b!34784 (= res!15989 (= res!15945 (insert!23 wrapper!5 42 (String!441 "HHeelllloo"))))))

(assert (= (and start!4398 res!15991) b!34783))

(assert (= (and b!34783 res!15988) b!34784))

(assert (= (and b!34784 res!15989) b!34785))

(assert (= (and b!34785 res!15987) b!34786))

(declare-fun m!37355 () Bool)

(assert (=> b!34786 m!37355))

(declare-fun m!37357 () Bool)

(assert (=> b!34783 m!37357))

(declare-fun m!37359 () Bool)

(assert (=> b!34784 m!37359))

(push 1)

(assert (not b!34784))

(assert (not b!34786))

(assert (not b!34783))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18248 () Bool)

(declare-fun e!17566 () Bool)

(assert (=> d!18248 e!17566))

(declare-fun res!15997 () Bool)

(assert (=> d!18248 (=> (not res!15997) (not e!17566))))

(declare-fun res!15996 () tuple2!128)

(assert (=> d!18248 (= res!15997 (contains!35 (_2!64 res!15996) 42))))

(assert (=> d!18248 true))

(assert (=> d!18248 (= (insert!23 wrapper!5 42 (String!441 "HHeelllloo")) res!15996)))

(declare-fun b!34789 () Bool)

(declare-fun apply!49 (TrieMapWrapper!10 Int) String!440)

(assert (=> b!34789 (= e!17566 (= (apply!49 (_2!64 res!15996) 42) (String!441 "HHeelllloo")))))

(assert (= (and d!18248 res!15997) b!34789))

(declare-fun m!37361 () Bool)

(assert (=> d!18248 m!37361))

(declare-fun m!37363 () Bool)

(assert (=> b!34789 m!37363))

(assert (=> b!34784 d!18248))

(declare-fun d!18250 () Bool)

(assert (=> d!18250 true))

(assert (=> d!18250 true))

(declare-fun res!16000 () Bool)

(assert (=> d!18250 (= (contains!35 wrapper!6 42) res!16000)))

(assert (=> b!34786 d!18250))

(declare-fun d!18252 () Bool)

(assert (=> d!18252 true))

(assert (=> d!18252 true))

(declare-fun res!16001 () Bool)

(assert (=> d!18252 (= (contains!35 wrapper!5 42) res!16001)))

(assert (=> b!34783 d!18252))

(declare-fun bs!11195 () Bool)

(declare-fun s!758 () Bool)

(assert (= bs!11195 (and start!4398 s!758)))

(assert (=> bs!11195 (=> true (not (contains!35 res!15990 42)))))

(declare-fun m!37365 () Bool)

(assert (=> m!37355 m!37365))

(assert (=> m!37355 s!758))

(assert (=> m!37357 s!758))

(push 1)

(assert (not b!34789))

(assert (not bs!11195))

(assert (not d!18248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

