; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1588 () Bool)

(assert start!1588)

(declare-fun b_free!679 () Bool)

(declare-fun b_next!1433 () Bool)

(assert (=> start!1588 (= b_free!679 (not b_next!1433))))

(declare-fun tp!1144 () Bool)

(declare-fun b_and!2721 () Bool)

(assert (=> start!1588 (= tp!1144 b_and!2721)))

(declare-fun b_free!681 () Bool)

(declare-fun b_next!1435 () Bool)

(assert (=> start!1588 (= b_free!681 (not b_next!1435))))

(declare-fun tp!1143 () Bool)

(declare-fun b_and!2723 () Bool)

(assert (=> start!1588 (= tp!1143 b_and!2723)))

(declare-fun lambda!1806 () Int)

(declare-fun f!585 () Int)

(declare-fun b_next!1437 () Bool)

(assert (=> start!1588 (= b_next!1433 (or (and start!1588 (= lambda!1806 f!585)) b_next!1437))))

(declare-fun f!588 () Int)

(declare-fun b_next!1439 () Bool)

(assert (=> start!1588 (= b_next!1435 (or (and start!1588 (= lambda!1806 f!588)) b_next!1439))))

(declare-fun res!2450 () Bool)

(declare-fun e!4640 () Bool)

(assert (=> start!1588 (=> (not res!2450) (not e!4640))))

(assert (=> start!1588 (= res!2450 (= f!585 lambda!1806))))

(assert (=> start!1588 e!4640))

(assert (=> start!1588 tp!1144))

(assert (=> start!1588 true))

(assert (=> start!1588 tp!1143))

(declare-fun b!8130 () Bool)

(declare-fun res!2451 () Bool)

(assert (=> b!8130 (=> (not res!2451) (not e!4640))))

(declare-datatypes () ((Balance!141 (Balance!142 (extraOpen!111 Int) (extraClose!111 Int)))))

(declare-datatypes () ((List!187 (Nil!185) (Cons!184 (head!402 Balance!141) (tail!414 List!187)))))

(declare-fun thiss!832 () List!187)

(declare-datatypes () ((Tree!33 (Branch!24 (left!342 Tree!33) (right!345 Tree!33)) (Leaf!106 (value!1275 Balance!141)))))

(declare-fun tree!25 () Tree!33)

(declare-fun toList!33 (Tree!33) List!187)

(assert (=> b!8130 (= res!2451 (= thiss!832 (toList!33 tree!25)))))

(declare-fun b!8131 () Bool)

(declare-fun res!2449 () Bool)

(assert (=> b!8131 (=> (not res!2449) (not e!4640))))

(assert (=> b!8131 (= res!2449 (= f!588 f!585))))

(declare-fun b!8132 () Bool)

(declare-fun isEmpty!153 (List!187) Bool)

(assert (=> b!8132 (= e!4640 (isEmpty!153 thiss!832))))

(assert (= (and start!1588 res!2450) b!8130))

(assert (= (and b!8130 res!2451) b!8131))

(assert (= (and b!8131 res!2449) b!8132))

(declare-fun m!10985 () Bool)

(assert (=> b!8130 m!10985))

(declare-fun m!10987 () Bool)

(assert (=> b!8132 m!10987))

(push 1)

(assert (not b!8130))

(assert (not b!8132))

(assert b_and!2721)

(assert (not b_next!1437))

(assert (not b_next!1439))

(assert b_and!2723)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2721)

(assert b_and!2723)

(assert (not b_next!1439))

(assert (not b_next!1437))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6363 () Bool)

(declare-fun lt!1495 () List!187)

(assert (=> d!6363 (not (isEmpty!153 lt!1495))))

(declare-fun e!4643 () List!187)

(assert (=> d!6363 (= lt!1495 e!4643)))

(declare-fun c!2826 () Bool)

(assert (=> d!6363 (= c!2826 (is-Leaf!106 tree!25))))

(assert (=> d!6363 (= (toList!33 tree!25) lt!1495)))

(declare-fun b!8137 () Bool)

(assert (=> b!8137 (= e!4643 (Cons!184 (value!1275 tree!25) Nil!185))))

(declare-fun b!8138 () Bool)

(declare-fun append!74 (List!187 List!187) List!187)

(assert (=> b!8138 (= e!4643 (append!74 (toList!33 (left!342 tree!25)) (toList!33 (right!345 tree!25))))))

(assert (= (and d!6363 c!2826) b!8137))

(assert (= (and d!6363 (not c!2826)) b!8138))

(declare-fun m!10989 () Bool)

(assert (=> d!6363 m!10989))

(declare-fun m!10991 () Bool)

(assert (=> b!8138 m!10991))

(declare-fun m!10993 () Bool)

(assert (=> b!8138 m!10993))

(assert (=> b!8138 m!10991))

(assert (=> b!8138 m!10993))

(declare-fun m!10995 () Bool)

(assert (=> b!8138 m!10995))

(assert (=> b!8130 d!6363))

(declare-fun d!6365 () Bool)

(assert (=> d!6365 (= (isEmpty!153 thiss!832) (is-Nil!185 thiss!832))))

(assert (=> b!8132 d!6365))

(push 1)

(assert (not b!8138))

(assert (not d!6363))

(assert b_and!2721)

(assert (not b_next!1437))

(assert (not b_next!1439))

(assert b_and!2723)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2721)

(assert b_and!2723)

(assert (not b_next!1439))

(assert (not b_next!1437))

(check-sat)

(pop 1)

