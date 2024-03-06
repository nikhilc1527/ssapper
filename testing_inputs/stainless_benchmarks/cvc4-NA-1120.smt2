; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8128 () Bool)

(assert start!8128)

(declare-datatypes () ((T!3686 (T!3687 (val!149 Int)))))

(declare-datatypes () ((List!451 (Cons!427 (h!664 T!3686) (t!47070 List!451)) (Nil!428))))

(declare-fun list!285 () List!451)

(declare-fun append!150 (List!451 List!451) List!451)

(assert (=> start!8128 (not (= (append!150 Nil!428 list!285) list!285))))

(declare-fun e!30742 () Bool)

(assert (=> start!8128 e!30742))

(declare-fun b!57846 () Bool)

(declare-fun tp_is_empty!297 () Bool)

(declare-fun tp!16218 () Bool)

(assert (=> b!57846 (= e!30742 (and tp_is_empty!297 tp!16218))))

(assert (= (and start!8128 (is-Cons!427 list!285)) b!57846))

(declare-fun m!62396 () Bool)

(assert (=> start!8128 m!62396))

(push 1)

(assert (not start!8128))

(assert (not b!57846))

(assert tp_is_empty!297)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50326 () Bool)

(declare-fun lt!10612 () List!451)

(assert (=> d!50326 (or (= lt!10612 Nil!428) (not (= list!285 Nil!428)))))

(declare-fun e!30745 () List!451)

(assert (=> d!50326 (= lt!10612 e!30745)))

(declare-fun c!12341 () Bool)

(assert (=> d!50326 (= c!12341 (is-Cons!427 Nil!428))))

(assert (=> d!50326 (= (append!150 Nil!428 list!285) lt!10612)))

(declare-fun b!57851 () Bool)

(assert (=> b!57851 (= e!30745 (Cons!427 (h!664 Nil!428) (append!150 (t!47070 Nil!428) list!285)))))

(declare-fun b!57852 () Bool)

(assert (=> b!57852 (= e!30745 list!285)))

(assert (= (and d!50326 c!12341) b!57851))

(assert (= (and d!50326 (not c!12341)) b!57852))

(declare-fun m!62398 () Bool)

(assert (=> b!57851 m!62398))

(assert (=> start!8128 d!50326))

(declare-fun b!57857 () Bool)

(declare-fun e!30748 () Bool)

(declare-fun tp!16221 () Bool)

(assert (=> b!57857 (= e!30748 (and tp_is_empty!297 tp!16221))))

(assert (=> b!57846 (= tp!16218 e!30748)))

(assert (= (and b!57846 (is-Cons!427 (t!47070 list!285))) b!57857))

(push 1)

(assert (not b!57851))

(assert (not b!57857))

(assert tp_is_empty!297)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

