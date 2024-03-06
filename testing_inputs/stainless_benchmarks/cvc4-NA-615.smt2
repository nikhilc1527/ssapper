; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4466 () Bool)

(assert start!4466)

(declare-fun b_free!2163 () Bool)

(declare-fun b_next!5273 () Bool)

(assert (=> start!4466 (= b_free!2163 (not b_next!5273))))

(declare-fun tp!7267 () Bool)

(declare-fun b_and!7889 () Bool)

(assert (=> start!4466 (= tp!7267 b_and!7889)))

(declare-fun b_free!2165 () Bool)

(declare-fun b_next!5275 () Bool)

(assert (=> start!4466 (= b_free!2165 (not b_next!5275))))

(declare-fun tp!7268 () Bool)

(declare-fun b_and!7891 () Bool)

(assert (=> start!4466 (= tp!7268 b_and!7891)))

(declare-fun b!34884 () Bool)

(declare-fun e!17615 () Bool)

(declare-datatypes () ((List!386 (Cons!378 (h!325 Int) (t!4972 List!386)) (Nil!379))))

(declare-fun l!959 () List!386)

(declare-fun n!438 () Int)

(declare-fun size!361 (List!386) Int)

(assert (=> b!34884 (= e!17615 (> (size!361 l!959) n!438))))

(declare-fun b!34881 () Bool)

(declare-fun res!16097 () Bool)

(assert (=> b!34881 (=> (not res!16097) (not e!17615))))

(declare-fun e!17614 () Bool)

(assert (=> b!34881 (= res!16097 e!17614)))

(declare-fun res!16094 () Bool)

(assert (=> b!34881 (=> res!16094 e!17614)))

(declare-fun l!956 () List!386)

(assert (=> b!34881 (= res!16094 (is-Nil!379 l!956))))

(declare-fun b!34883 () Bool)

(declare-fun res!16095 () Bool)

(assert (=> b!34883 (=> (not res!16095) (not e!17615))))

(declare-fun p!510 () Int)

(declare-fun p!507 () Int)

(declare-fun n!435 () Int)

(assert (=> b!34883 (= res!16095 (and (= p!510 p!507) (= l!959 l!956) (= n!438 n!435)))))

(declare-fun res!16096 () Bool)

(assert (=> start!4466 (=> (not res!16096) (not e!17615))))

(assert (=> start!4466 (= res!16096 (<= (size!361 l!956) n!435))))

(assert (=> start!4466 e!17615))

(assert (=> start!4466 true))

(assert (=> start!4466 tp!7267))

(assert (=> start!4466 tp!7268))

(declare-fun b!34882 () Bool)

(declare-fun filter_check!0 (Int List!386 Int) Bool)

(assert (=> b!34882 (= e!17614 (filter_check!0 p!507 (t!4972 l!956) n!435))))

(assert (= (and start!4466 res!16096) b!34881))

(assert (= (and b!34881 (not res!16094)) b!34882))

(assert (= (and b!34881 res!16097) b!34883))

(assert (= (and b!34883 res!16095) b!34884))

(declare-fun m!37425 () Bool)

(assert (=> b!34884 m!37425))

(declare-fun m!37427 () Bool)

(assert (=> start!4466 m!37427))

(declare-fun m!37429 () Bool)

(assert (=> b!34882 m!37429))

(push 1)

(assert (not b!34884))

(assert (not b!34882))

(assert (not start!4466))

(assert (not b_next!5273))

(assert (not b_next!5275))

(assert b_and!7891)

(assert b_and!7889)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7889)

(assert b_and!7891)

(assert (not b_next!5273))

(assert (not b_next!5275))

(check-sat)

(pop 1)

