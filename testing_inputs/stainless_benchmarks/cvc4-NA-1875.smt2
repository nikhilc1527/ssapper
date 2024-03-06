; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12570 () Bool)

(assert start!12570)

(declare-fun res!48683 () Bool)

(declare-fun e!50634 () Bool)

(assert (=> start!12570 (=> (not res!48683) (not e!50634))))

(declare-datatypes () ((A!4528 (C!96) (BExt!8 (__x!373 Int)) (AExt!12 (__x!374 Int)))))

(declare-fun thiss!11106 () A!4528)

(assert (=> start!12570 (= res!48683 (or (is-C!96 thiss!11106) (is-BExt!8 thiss!11106)))))

(assert (=> start!12570 e!50634))

(assert (=> start!12570 true))

(declare-fun b!92522 () Bool)

(declare-fun res!48682 () Bool)

(assert (=> b!92522 (=> (not res!48682) (not e!50634))))

(declare-fun res!48674 () Bool)

(declare-fun value!87 (A!4528) Int)

(assert (=> b!92522 (= res!48682 (= res!48674 (= (value!87 thiss!11106) 0)))))

(declare-fun b!92523 () Bool)

(declare-fun e!50635 () Bool)

(assert (=> b!92523 (= e!50634 e!50635)))

(declare-fun res!48681 () Bool)

(assert (=> b!92523 (=> res!48681 e!50635)))

(assert (=> b!92523 (= res!48681 (not res!48674))))

(declare-fun b!92524 () Bool)

(assert (=> b!92524 (= e!50635 (= (value!87 thiss!11106) 0))))

(assert (= (and start!12570 res!48683) b!92522))

(assert (= (and b!92522 res!48682) b!92523))

(assert (= (and b!92523 (not res!48681)) b!92524))

(declare-fun m!88154 () Bool)

(assert (=> b!92522 m!88154))

(assert (=> b!92524 m!88154))

(push 1)

(assert (not b!92522))

(assert (not b!92524))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!92534 () Bool)

(declare-fun e!50640 () Int)

(declare-fun e!50641 () Int)

(assert (=> b!92534 (= e!50640 e!50641)))

(declare-fun c!22532 () Bool)

(assert (=> b!92534 (= c!22532 (is-BExt!8 thiss!11106))))

(declare-fun b!92533 () Bool)

(declare-fun value!88 (A!4528) Int)

(assert (=> b!92533 (= e!50640 (value!88 thiss!11106))))

(declare-fun b!92535 () Bool)

(declare-fun value!9542 (A!4528) Int)

(assert (=> b!92535 (= e!50641 (value!9542 thiss!11106))))

(declare-fun d!60626 () Bool)

(declare-fun c!22531 () Bool)

(assert (=> d!60626 (= c!22531 (is-C!96 thiss!11106))))

(assert (=> d!60626 (= (value!87 thiss!11106) e!50640)))

(declare-fun b!92536 () Bool)

(declare-fun value!9541 (A!4528) Int)

(assert (=> b!92536 (= e!50641 (value!9541 thiss!11106))))

(assert (= (and b!92534 c!22532) b!92535))

(assert (= (and b!92534 (not c!22532)) b!92536))

(assert (= (and d!60626 c!22531) b!92533))

(assert (= (and d!60626 (not c!22531)) b!92534))

(declare-fun m!88156 () Bool)

(assert (=> b!92533 m!88156))

(declare-fun m!88158 () Bool)

(assert (=> b!92535 m!88158))

(declare-fun m!88160 () Bool)

(assert (=> b!92536 m!88160))

(assert (=> b!92522 d!60626))

(assert (=> b!92524 d!60626))

(push 1)

(assert (not b!92536))

(assert (not b!92533))

(assert (not b!92535))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60628 () Bool)

(assert (=> d!60628 true))

(assert (=> d!60628 true))

(declare-fun res!48686 () Int)

(assert (=> d!60628 (= (value!9541 thiss!11106) res!48686)))

(assert (=> b!92536 d!60628))

(declare-fun d!60630 () Bool)

(assert (=> d!60630 (= (value!88 thiss!11106) 0)))

(assert (=> b!92533 d!60630))

(declare-fun d!60632 () Bool)

(assert (=> d!60632 true))

(assert (=> d!60632 true))

(declare-fun res!48689 () Int)

(assert (=> d!60632 (= (value!9542 thiss!11106) res!48689)))

(assert (=> b!92535 d!60632))

(push 1)

(check-sat)

(get-model)

(pop 1)

