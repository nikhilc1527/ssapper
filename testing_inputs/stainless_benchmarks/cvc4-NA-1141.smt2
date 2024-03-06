; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8244 () Bool)

(assert start!8244)

(declare-fun res!27014 () Bool)

(declare-fun e!31071 () Bool)

(assert (=> start!8244 (=> (not res!27014) (not e!31071))))

(declare-datatypes () ((Monoid!18 (ListMonoid!10) (MonoidExt!10 (__x!242 Int)))))

(declare-fun thiss!8556 () Monoid!18)

(assert (=> start!8244 (= res!27014 (not (is-ListMonoid!10 thiss!8556)))))

(assert (=> start!8244 e!31071))

(assert (=> start!8244 true))

(declare-fun b!58384 () Bool)

(declare-fun res!27015 () Bool)

(assert (=> b!58384 (=> (not res!27015) (not e!31071))))

(declare-fun res!26929 () Bool)

(declare-datatypes () ((List!479 (Cons!454 (h!693 Int) (t!47134 List!479)) (Nil!455))))

(declare-fun x!26060 () List!479)

(declare-fun law_leftIdentity!9 (Monoid!18 List!479) Bool)

(assert (=> b!58384 (= res!27015 (= res!26929 (law_leftIdentity!9 thiss!8556 x!26060)))))

(declare-fun b!58385 () Bool)

(declare-fun e!31070 () Bool)

(assert (=> b!58385 (= e!31071 e!31070)))

(declare-fun res!27016 () Bool)

(assert (=> b!58385 (=> res!27016 e!31070)))

(assert (=> b!58385 (= res!27016 (not res!26929))))

(declare-fun b!58386 () Bool)

(declare-fun append!10 (Monoid!18 List!479 List!479) List!479)

(declare-fun empty!15 (Monoid!18) List!479)

(assert (=> b!58386 (= e!31070 (not (= (append!10 thiss!8556 (empty!15 thiss!8556) x!26060) x!26060)))))

(assert (= (and start!8244 res!27014) b!58384))

(assert (= (and b!58384 res!27015) b!58385))

(assert (= (and b!58385 (not res!27016)) b!58386))

(declare-fun m!62898 () Bool)

(assert (=> b!58384 m!62898))

(declare-fun m!62900 () Bool)

(assert (=> b!58386 m!62900))

(assert (=> b!58386 m!62900))

(declare-fun m!62902 () Bool)

(assert (=> b!58386 m!62902))

(push 1)

(assert (not b!58384))

(assert (not b!58386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50554 () Bool)

(declare-fun e!31074 () Bool)

(assert (=> d!50554 e!31074))

(declare-fun res!27022 () Bool)

(assert (=> d!50554 (=> (not res!27022) (not e!31074))))

(declare-fun res!27021 () Bool)

(assert (=> d!50554 (= res!27022 res!27021)))

(assert (=> d!50554 true))

(assert (=> d!50554 (= (law_leftIdentity!9 thiss!8556 x!26060) res!27021)))

(declare-fun b!58389 () Bool)

(assert (=> b!58389 (= e!31074 (= (append!10 thiss!8556 (empty!15 thiss!8556) x!26060) x!26060))))

(assert (= (and d!50554 res!27022) b!58389))

(assert (=> b!58389 m!62900))

(assert (=> b!58389 m!62900))

(assert (=> b!58389 m!62902))

(assert (=> b!58384 d!50554))

(declare-fun d!50556 () Bool)

(declare-fun c!12502 () Bool)

(assert (=> d!50556 (= c!12502 (is-ListMonoid!10 thiss!8556))))

(declare-fun e!31077 () List!479)

(assert (=> d!50556 (= (append!10 thiss!8556 (empty!15 thiss!8556) x!26060) e!31077)))

(declare-fun b!58394 () Bool)

(declare-fun append!11 (Monoid!18 List!479 List!479) List!479)

(assert (=> b!58394 (= e!31077 (append!11 thiss!8556 (empty!15 thiss!8556) x!26060))))

(declare-fun b!58395 () Bool)

(declare-fun append!161 (Monoid!18 List!479 List!479) List!479)

(assert (=> b!58395 (= e!31077 (append!161 thiss!8556 (empty!15 thiss!8556) x!26060))))

(assert (= (and d!50556 c!12502) b!58394))

(assert (= (and d!50556 (not c!12502)) b!58395))

(assert (=> b!58394 m!62900))

(declare-fun m!62904 () Bool)

(assert (=> b!58394 m!62904))

(assert (=> b!58395 m!62900))

(declare-fun m!62906 () Bool)

(assert (=> b!58395 m!62906))

(assert (=> b!58386 d!50556))

(declare-fun d!50558 () Bool)

(declare-fun c!12505 () Bool)

(assert (=> d!50558 (= c!12505 (is-ListMonoid!10 thiss!8556))))

(declare-fun e!31080 () List!479)

(assert (=> d!50558 (= (empty!15 thiss!8556) e!31080)))

(declare-fun b!58400 () Bool)

(declare-fun empty!16 (Monoid!18) List!479)

(assert (=> b!58400 (= e!31080 (empty!16 thiss!8556))))

(declare-fun b!58401 () Bool)

(declare-fun empty!118 (Monoid!18) List!479)

(assert (=> b!58401 (= e!31080 (empty!118 thiss!8556))))

(assert (= (and d!50558 c!12505) b!58400))

(assert (= (and d!50558 (not c!12505)) b!58401))

(declare-fun m!62908 () Bool)

(assert (=> b!58400 m!62908))

(declare-fun m!62910 () Bool)

(assert (=> b!58401 m!62910))

(assert (=> b!58386 d!50558))

(push 1)

(assert (not b!58389))

(assert (not b!58395))

(assert (not b!58400))

(assert (not b!58401))

(assert (not b!58394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

