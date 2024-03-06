; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6912 () Bool)

(assert start!6912)

(declare-fun res!23460 () Bool)

(declare-fun e!26449 () Bool)

(assert (=> start!6912 (=> (not res!23460) (not e!26449))))

(declare-datatypes () ((T!2885 (TExt!4 (__x!58 Int) (x!19851 Int)))))

(declare-fun thiss!7073 () T!2885)

(declare-fun thiss!7072 () T!2885)

(assert (=> start!6912 (= res!23460 (= thiss!7073 thiss!7072))))

(assert (=> start!6912 e!26449))

(assert (=> start!6912 true))

(declare-fun b!50992 () Bool)

(declare-fun res!23461 () Bool)

(assert (=> b!50992 (=> (not res!23461) (not e!26449))))

(declare-datatypes () ((Unit!852 (Unit!853))))

(declare-datatypes () ((tuple2!266 (tuple2!267 (_1!159 Unit!852) (_2!159 T!2885)))))

(declare-fun res!23417 () tuple2!266)

(declare-fun havoc!1 (T!2885) tuple2!266)

(assert (=> b!50992 (= res!23461 (= res!23417 (havoc!1 thiss!7073)))))

(declare-fun b!50993 () Bool)

(declare-fun res!23462 () Bool)

(assert (=> b!50993 (=> (not res!23462) (not e!26449))))

(declare-fun tmp!413 () Unit!852)

(declare-fun res!23420 () tuple2!266)

(declare-fun thiss!7076 () T!2885)

(declare-fun Unit!854 () Unit!852)

(assert (=> b!50993 (= res!23462 (and (= thiss!7076 (_2!159 res!23417)) (= tmp!413 Unit!854) (= res!23420 (tuple2!267 (_1!159 res!23417) thiss!7076))))))

(declare-fun b!50994 () Bool)

(declare-fun x!388 (T!2885) Int)

(assert (=> b!50994 (= e!26449 (not (= (x!388 (_2!159 res!23420)) (x!388 thiss!7072))))))

(assert (= (and start!6912 res!23460) b!50992))

(assert (= (and b!50992 res!23461) b!50993))

(assert (= (and b!50993 res!23462) b!50994))

(declare-fun m!54531 () Bool)

(assert (=> b!50992 m!54531))

(declare-fun m!54533 () Bool)

(assert (=> b!50994 m!54533))

(declare-fun m!54535 () Bool)

(assert (=> b!50994 m!54535))

(push 1)

(assert (not b!50994))

(assert (not b!50992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43500 () Bool)

(assert (=> d!43500 (= (x!388 (_2!159 res!23420)) (x!19851 (_2!159 res!23420)))))

(assert (=> b!50994 d!43500))

(declare-fun d!43502 () Bool)

(assert (=> d!43502 (= (x!388 thiss!7072) (x!19851 thiss!7072))))

(assert (=> b!50994 d!43502))

(declare-fun d!43504 () Bool)

(declare-fun res!23465 () tuple2!266)

(assert (=> d!43504 (= (x!388 (_2!159 res!23465)) (x!388 thiss!7073))))

(assert (=> d!43504 true))

(assert (=> d!43504 (= (havoc!1 thiss!7073) res!23465)))

(declare-fun bs!23712 () Bool)

(assert (= bs!23712 d!43504))

(declare-fun m!54537 () Bool)

(assert (=> bs!23712 m!54537))

(declare-fun m!54539 () Bool)

(assert (=> bs!23712 m!54539))

(assert (=> b!50992 d!43504))

(push 1)

(assert (not d!43504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

