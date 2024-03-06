; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2890 () Bool)

(assert start!2890)

(declare-fun res!5237 () Bool)

(declare-fun e!7603 () Bool)

(assert (=> start!2890 (=> (not res!5237) (not e!7603))))

(declare-fun y!690 () (_ BitVec 32))

(declare-fun x!7801 () (_ BitVec 32))

(declare-fun rightPropagateRightmostOne!0 ((_ BitVec 32)) (_ BitVec 32))

(assert (=> start!2890 (= res!5237 (= y!690 (rightPropagateRightmostOne!0 x!7801)))))

(assert (=> start!2890 e!7603))

(assert (=> start!2890 true))

(declare-fun b!13722 () Bool)

(assert (=> b!13722 (= e!7603 (not (= y!690 (rightPropagateRightmostOne!0 y!690))))))

(assert (= (and start!2890 res!5237) b!13722))

(declare-fun m!17579 () Bool)

(assert (=> start!2890 m!17579))

(declare-fun m!17581 () Bool)

(assert (=> b!13722 m!17581))

(push 1)

(assert (not start!2890))

(assert (not b!13722))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10602 () Bool)

(assert (=> d!10602 (= (rightPropagateRightmostOne!0 x!7801) (bvor x!7801 (bvsub x!7801 #b00000000000000000000000000000001)))))

(assert (=> start!2890 d!10602))

(declare-fun d!10604 () Bool)

(assert (=> d!10604 (= (rightPropagateRightmostOne!0 y!690) (bvor y!690 (bvsub y!690 #b00000000000000000000000000000001)))))

(assert (=> b!13722 d!10604))

(push 1)

(check-sat)

(pop 1)

