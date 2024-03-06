; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8170 () Bool)

(assert start!8170)

(declare-datatypes () ((T!3700 (T!3701 (val!158 Int)))))

(declare-datatypes () ((List!460 (Cons!436 (h!673 T!3700) (t!47087 List!460)) (Nil!437))))

(declare-fun list!305 () List!460)

(declare-fun append!155 (List!460 List!460) List!460)

(assert (=> start!8170 (not (= (append!155 list!305 Nil!437) list!305))))

(declare-fun e!30828 () Bool)

(assert (=> start!8170 e!30828))

(declare-fun b!57975 () Bool)

(declare-fun tp_is_empty!311 () Bool)

(declare-fun tp!16258 () Bool)

(assert (=> b!57975 (= e!30828 (and tp_is_empty!311 tp!16258))))

(assert (= (and start!8170 (is-Cons!436 list!305)) b!57975))

(declare-fun m!62562 () Bool)

(assert (=> start!8170 m!62562))

(push 1)

(assert (not start!8170))

(assert (not b!57975))

(assert tp_is_empty!311)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50424 () Bool)

(declare-fun lt!10633 () List!460)

(assert (=> d!50424 (or (= lt!10633 list!305) (not (= Nil!437 Nil!437)))))

(declare-fun e!30831 () List!460)

(assert (=> d!50424 (= lt!10633 e!30831)))

(declare-fun c!12376 () Bool)

(assert (=> d!50424 (= c!12376 (is-Cons!436 list!305))))

(assert (=> d!50424 (= (append!155 list!305 Nil!437) lt!10633)))

(declare-fun b!57980 () Bool)

(assert (=> b!57980 (= e!30831 (Cons!436 (h!673 list!305) (append!155 (t!47087 list!305) Nil!437)))))

(declare-fun b!57981 () Bool)

(assert (=> b!57981 (= e!30831 Nil!437)))

(assert (= (and d!50424 c!12376) b!57980))

(assert (= (and d!50424 (not c!12376)) b!57981))

(declare-fun m!62564 () Bool)

(assert (=> b!57980 m!62564))

(assert (=> start!8170 d!50424))

(declare-fun b!57986 () Bool)

(declare-fun e!30834 () Bool)

(declare-fun tp!16261 () Bool)

(assert (=> b!57986 (= e!30834 (and tp_is_empty!311 tp!16261))))

(assert (=> b!57975 (= tp!16258 e!30834)))

(assert (= (and b!57975 (is-Cons!436 (t!47087 list!305))) b!57986))

(push 1)

(assert (not b!57980))

(assert (not b!57986))

(assert tp_is_empty!311)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

