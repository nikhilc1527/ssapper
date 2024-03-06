; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8962 () Bool)

(assert start!8962)

(declare-fun b_free!7293 () Bool)

(declare-fun b_next!39055 () Bool)

(assert (=> start!8962 (= b_free!7293 (not b_next!39055))))

(declare-fun tp!16354 () Bool)

(declare-fun b_and!58583 () Bool)

(assert (=> start!8962 (= tp!16354 b_and!58583)))

(declare-fun b_free!7295 () Bool)

(declare-fun b_next!39057 () Bool)

(assert (=> start!8962 (= b_free!7295 (not b_next!39057))))

(declare-fun tp!16352 () Bool)

(declare-fun b_and!58585 () Bool)

(assert (=> start!8962 (= tp!16352 b_and!58585)))

(declare-fun b!62308 () Bool)

(assert (=> b!62308 true))

(declare-fun lambda!9111 () Int)

(declare-fun order!457 () Int)

(declare-fun f!3549 () Int)

(declare-fun order!455 () Int)

(declare-fun dynLambda!941 (Int Int) Int)

(declare-fun dynLambda!942 (Int Int) Int)

(assert (=> b!62308 (< (dynLambda!941 order!455 f!3549) (dynLambda!942 order!457 lambda!9111))))

(assert (=> b!62308 true))

(declare-fun order!459 () Int)

(declare-fun g!137 () Int)

(declare-fun dynLambda!943 (Int Int) Int)

(assert (=> b!62308 (< (dynLambda!943 order!459 g!137) (dynLambda!942 order!457 lambda!9111))))

(declare-fun res!28981 () Bool)

(declare-fun e!33401 () Bool)

(assert (=> start!8962 (=> (not res!28981) (not e!33401))))

(declare-datatypes () ((T!4425 (T!4426 (val!169 Int)))))

(declare-datatypes () ((List!564 (Cons!528 (h!761 T!4425) (t!47286 List!564)) (Nil!529))))

(declare-fun list!707 () List!564)

(declare-datatypes () ((ProofOps!352 (ProofOps!353 (prop!455 Bool)))))

(declare-fun thiss!8890 () ProofOps!352)

(declare-fun associative_lemma!7 (List!564 Int Int) Bool)

(assert (=> start!8962 (= res!28981 (= thiss!8890 (ProofOps!353 (associative_lemma!7 list!707 f!3549 g!137))))))

(assert (=> start!8962 e!33401))

(declare-fun e!33402 () Bool)

(assert (=> start!8962 e!33402))

(assert (=> start!8962 true))

(declare-fun e!33403 () Bool)

(assert (=> start!8962 e!33403))

(assert (=> start!8962 tp!16354))

(assert (=> start!8962 tp!16352))

(declare-fun e!33404 () Bool)

(assert (=> start!8962 e!33404))

(declare-fun b!62305 () Bool)

(declare-fun tp_is_empty!337 () Bool)

(declare-fun tp!16350 () Bool)

(assert (=> b!62305 (= e!33404 (and tp_is_empty!337 tp!16350))))

(declare-fun b!62306 () Bool)

(declare-fun tp_is_empty!333 () Bool)

(declare-fun tp!16353 () Bool)

(assert (=> b!62306 (= e!33402 (and tp_is_empty!333 tp!16353))))

(declare-fun b!62307 () Bool)

(assert (=> b!62307 (= e!33401 false)))

(declare-fun res!28980 () Bool)

(assert (=> b!62308 (=> (not res!28980) (not e!33401))))

(declare-datatypes () ((U!57 (U!58 (val!170 Int)))))

(declare-datatypes () ((List!565 (Cons!529 (h!762 U!57) (t!47287 List!565)) (Nil!530))))

(declare-fun flist!18 () List!565)

(declare-fun thiss!8892 () ProofOps!352)

(declare-datatypes () ((V!439 (V!440 (val!171 Int)))))

(declare-datatypes () ((List!566 (Cons!530 (h!763 V!439) (t!47288 List!566)) (Nil!531))))

(declare-fun glist!18 () List!566)

(declare-fun append!162 (List!566 List!566) List!566)

(declare-fun flatMap!24 (List!565 Int) List!566)

(declare-fun append!163 (List!565 List!565) List!565)

(declare-fun flatMap!25 (List!564 Int) List!565)

(declare-fun flatMap!26 (List!564 Int) List!566)

(assert (=> b!62308 (= res!28980 (= thiss!8892 (ProofOps!353 (= (append!162 glist!18 (flatMap!24 (append!163 flist!18 (flatMap!25 list!707 f!3549)) g!137)) (append!162 (append!162 glist!18 (flatMap!24 flist!18 g!137)) (flatMap!26 list!707 lambda!9111))))))))

(declare-fun b!62309 () Bool)

(declare-fun tp_is_empty!335 () Bool)

(declare-fun tp!16351 () Bool)

(assert (=> b!62309 (= e!33403 (and tp_is_empty!335 tp!16351))))

(assert (= (and start!8962 res!28981) b!62308))

(assert (= (and b!62308 res!28980) b!62307))

(assert (= (and start!8962 (is-Cons!529 flist!18)) b!62306))

(assert (= (and start!8962 (is-Cons!528 list!707)) b!62309))

(assert (= (and start!8962 (is-Cons!530 glist!18)) b!62305))

(declare-fun m!68094 () Bool)

(assert (=> start!8962 m!68094))

(declare-fun m!68096 () Bool)

(assert (=> b!62308 m!68096))

(assert (=> b!62308 m!68096))

(declare-fun m!68098 () Bool)

(assert (=> b!62308 m!68098))

(declare-fun m!68100 () Bool)

(assert (=> b!62308 m!68100))

(declare-fun m!68102 () Bool)

(assert (=> b!62308 m!68102))

(declare-fun m!68104 () Bool)

(assert (=> b!62308 m!68104))

(assert (=> b!62308 m!68098))

(declare-fun m!68106 () Bool)

(assert (=> b!62308 m!68106))

(assert (=> b!62308 m!68106))

(declare-fun m!68108 () Bool)

(assert (=> b!62308 m!68108))

(assert (=> b!62308 m!68102))

(declare-fun m!68110 () Bool)

(assert (=> b!62308 m!68110))

(assert (=> b!62308 m!68110))

(assert (=> b!62308 m!68100))

(push 1)

(assert (not start!8962))

(assert (not b!62305))

(assert (not b_next!39055))

(assert (not b!62308))

(assert tp_is_empty!333)

(assert tp_is_empty!337)

(assert b_and!58583)

(assert b_and!58585)

(assert tp_is_empty!335)

(assert (not b!62306))

(assert (not b_next!39057))

(assert (not b!62309))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58583)

(assert b_and!58585)

(assert (not b_next!39057))

(assert (not b_next!39055))

(check-sat)

(pop 1)

