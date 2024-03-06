; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8174 () Bool)

(assert start!8174)

(declare-fun b_free!7285 () Bool)

(declare-fun b_next!39047 () Bool)

(assert (=> start!8174 (= b_free!7285 (not b_next!39047))))

(declare-fun tp!16274 () Bool)

(declare-fun b_and!58533 () Bool)

(assert (=> start!8174 (= tp!16274 b_and!58533)))

(declare-fun b_free!7287 () Bool)

(declare-fun b_next!39049 () Bool)

(assert (=> start!8174 (= b_free!7287 (not b_next!39049))))

(declare-fun tp!16272 () Bool)

(declare-fun b_and!58535 () Bool)

(assert (=> start!8174 (= tp!16272 b_and!58535)))

(declare-fun b!58000 () Bool)

(assert (=> b!58000 true))

(declare-fun order!443 () Int)

(declare-fun f!3249 () Int)

(declare-fun order!445 () Int)

(declare-fun lambda!9094 () Int)

(declare-fun dynLambda!923 (Int Int) Int)

(declare-fun dynLambda!924 (Int Int) Int)

(assert (=> b!58000 (< (dynLambda!923 order!443 f!3249) (dynLambda!924 order!445 lambda!9094))))

(assert (=> b!58000 true))

(declare-fun g!110 () Int)

(declare-fun order!447 () Int)

(declare-fun dynLambda!925 (Int Int) Int)

(assert (=> b!58000 (< (dynLambda!925 order!447 g!110) (dynLambda!924 order!445 lambda!9094))))

(declare-fun b!57997 () Bool)

(declare-fun e!30843 () Bool)

(declare-fun tp_is_empty!313 () Bool)

(declare-fun tp!16275 () Bool)

(assert (=> b!57997 (= e!30843 (and tp_is_empty!313 tp!16275))))

(declare-fun b!57998 () Bool)

(declare-fun e!30844 () Bool)

(declare-fun tp_is_empty!317 () Bool)

(declare-fun tp!16273 () Bool)

(assert (=> b!57998 (= e!30844 (and tp_is_empty!317 tp!16273))))

(declare-fun b!57999 () Bool)

(declare-fun e!30846 () Bool)

(declare-fun tp_is_empty!315 () Bool)

(declare-fun tp!16276 () Bool)

(assert (=> b!57999 (= e!30846 (and tp_is_empty!315 tp!16276))))

(declare-fun res!26876 () Bool)

(declare-fun e!30845 () Bool)

(assert (=> b!58000 (=> (not res!26876) (not e!30845))))

(declare-datatypes () ((V!383 (V!384 (val!159 Int)))))

(declare-datatypes () ((List!461 (Cons!437 (h!674 V!383) (t!47088 List!461)) (Nil!438))))

(declare-fun glist!10 () List!461)

(declare-datatypes () ((T!3702 (T!3703 (val!160 Int)))))

(declare-datatypes () ((List!462 (Cons!438 (h!675 T!3702) (t!47089 List!462)) (Nil!439))))

(declare-fun list!286 () List!462)

(declare-datatypes () ((U!38 (U!39 (val!161 Int)))))

(declare-datatypes () ((List!463 (Cons!439 (h!676 U!38) (t!47090 List!463)) (Nil!440))))

(declare-fun flist!10 () List!463)

(declare-datatypes () ((ProofOps!324 (ProofOps!325 (prop!376 Bool)))))

(declare-fun thiss!8481 () ProofOps!324)

(declare-fun append!156 (List!461 List!461) List!461)

(declare-fun flatMap!18 (List!463 Int) List!461)

(declare-fun append!157 (List!463 List!463) List!463)

(declare-fun flatMap!19 (List!462 Int) List!463)

(declare-fun flatMap!20 (List!462 Int) List!461)

(assert (=> b!58000 (= res!26876 (= thiss!8481 (ProofOps!325 (= (append!156 glist!10 (flatMap!18 (append!157 flist!10 (flatMap!19 list!286 f!3249)) g!110)) (append!156 (append!156 glist!10 (flatMap!18 flist!10 g!110)) (flatMap!20 list!286 lambda!9094))))))))

(declare-fun b!58001 () Bool)

(assert (=> b!58001 (= e!30845 false)))

(declare-fun res!26877 () Bool)

(assert (=> start!8174 (=> (not res!26877) (not e!30845))))

(declare-fun thiss!8479 () ProofOps!324)

(declare-fun associative_lemma!5 (List!462 Int Int) Bool)

(assert (=> start!8174 (= res!26877 (= thiss!8479 (ProofOps!325 (associative_lemma!5 list!286 f!3249 g!110))))))

(assert (=> start!8174 e!30845))

(assert (=> start!8174 e!30843))

(assert (=> start!8174 tp!16274))

(assert (=> start!8174 tp!16272))

(assert (=> start!8174 e!30846))

(assert (=> start!8174 true))

(assert (=> start!8174 e!30844))

(assert (= (and start!8174 res!26877) b!58000))

(assert (= (and b!58000 res!26876) b!58001))

(assert (= (and start!8174 (is-Cons!437 glist!10)) b!57997))

(assert (= (and start!8174 (is-Cons!438 list!286)) b!57999))

(assert (= (and start!8174 (is-Cons!439 flist!10)) b!57998))

(declare-fun m!62566 () Bool)

(assert (=> b!58000 m!62566))

(declare-fun m!62568 () Bool)

(assert (=> b!58000 m!62568))

(declare-fun m!62570 () Bool)

(assert (=> b!58000 m!62570))

(declare-fun m!62572 () Bool)

(assert (=> b!58000 m!62572))

(declare-fun m!62574 () Bool)

(assert (=> b!58000 m!62574))

(declare-fun m!62576 () Bool)

(assert (=> b!58000 m!62576))

(assert (=> b!58000 m!62572))

(declare-fun m!62578 () Bool)

(assert (=> b!58000 m!62578))

(assert (=> b!58000 m!62566))

(assert (=> b!58000 m!62578))

(assert (=> b!58000 m!62570))

(declare-fun m!62580 () Bool)

(assert (=> b!58000 m!62580))

(assert (=> b!58000 m!62568))

(assert (=> b!58000 m!62574))

(declare-fun m!62582 () Bool)

(assert (=> start!8174 m!62582))

(push 1)

(assert (not start!8174))

(assert (not b_next!39049))

(assert tp_is_empty!315)

(assert tp_is_empty!313)

(assert tp_is_empty!317)

(assert (not b!57999))

(assert (not b_next!39047))

(assert b_and!58533)

(assert (not b!58000))

(assert b_and!58535)

(assert (not b!57997))

(assert (not b!57998))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58533)

(assert b_and!58535)

(assert (not b_next!39047))

(assert (not b_next!39049))

(check-sat)

(pop 1)

