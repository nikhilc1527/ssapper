; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1890 () Bool)

(assert start!1890)

(declare-fun b!9427 () Bool)

(declare-fun b_free!1111 () Bool)

(declare-fun b_next!2771 () Bool)

(assert (=> b!9427 (= b_free!1111 (not b_next!2771))))

(declare-fun tp!1802 () Bool)

(declare-fun b_and!4141 () Bool)

(assert (=> b!9427 (= tp!1802 b_and!4141)))

(declare-fun b_free!1113 () Bool)

(declare-fun b_next!2773 () Bool)

(assert (=> b!9427 (= b_free!1113 (not b_next!2773))))

(declare-fun tp!1801 () Bool)

(declare-fun b_and!4143 () Bool)

(assert (=> b!9427 (= tp!1801 b_and!4143)))

(declare-fun b_free!1115 () Bool)

(declare-fun b_next!2775 () Bool)

(assert (=> b!9427 (= b_free!1115 (not b_next!2775))))

(declare-fun tp!1805 () Bool)

(declare-fun b_and!4145 () Bool)

(assert (=> b!9427 (= tp!1805 b_and!4145)))

(declare-fun b_free!1117 () Bool)

(declare-fun b_next!2777 () Bool)

(assert (=> start!1890 (= b_free!1117 (not b_next!2777))))

(declare-fun tp!1806 () Bool)

(declare-fun b_and!4147 () Bool)

(assert (=> start!1890 (= tp!1806 b_and!4147)))

(declare-fun b!9428 () Bool)

(declare-fun b_free!1119 () Bool)

(declare-fun b_next!2779 () Bool)

(assert (=> b!9428 (= b_free!1119 (not b_next!2779))))

(declare-fun tp!1807 () Bool)

(declare-fun b_and!4149 () Bool)

(assert (=> b!9428 (= tp!1807 b_and!4149)))

(declare-fun b_free!1121 () Bool)

(declare-fun b_next!2781 () Bool)

(assert (=> b!9428 (= b_free!1121 (not b_next!2781))))

(declare-fun tp!1803 () Bool)

(declare-fun b_and!4151 () Bool)

(assert (=> b!9428 (= tp!1803 b_and!4151)))

(declare-fun b_free!1123 () Bool)

(declare-fun b_next!2783 () Bool)

(assert (=> b!9428 (= b_free!1123 (not b_next!2783))))

(declare-fun tp!1804 () Bool)

(declare-fun b_and!4153 () Bool)

(assert (=> b!9428 (= tp!1804 b_and!4153)))

(declare-fun f!585 () Int)

(declare-fun lambda!2368 () Int)

(declare-fun b_next!2785 () Bool)

(assert (=> start!1890 (= b_next!2777 (or (and start!1890 (= lambda!2368 f!585)) b_next!2785))))

(declare-fun b!9425 () Bool)

(declare-fun res!3073 () Bool)

(declare-fun e!5583 () Bool)

(assert (=> b!9425 (=> (not res!3073) (not e!5583))))

(declare-datatypes () ((ProofOps!158 (ProofOps!159 (prop!202 Bool)))))

(declare-fun thiss!829 () ProofOps!158)

(declare-datatypes () ((Balance!211 (Balance!212 (extraOpen!146 Int) (extraClose!146 Int)))))

(declare-datatypes () ((Tree!68 (Branch!59 (left!443 Tree!68) (right!446 Tree!68)) (Leaf!141 (value!1310 Balance!211)))))

(declare-fun tree!25 () Tree!68)

(declare-fun fold!44 (Tree!68 Int) Balance!211)

(declare-datatypes () ((List!222 (Nil!220) (Cons!219 (head!437 Balance!211) (tail!449 List!222)))))

(declare-fun foldRight1!75 (List!222 Int) Balance!211)

(declare-fun toList!68 (Tree!68) List!222)

(assert (=> b!9425 (= res!3073 (= thiss!829 (ProofOps!159 (= (fold!44 tree!25 f!585) (foldRight1!75 (toList!68 tree!25) f!585)))))))

(declare-fun e!5585 () Bool)

(assert (=> b!9427 (= e!5585 (and tp!1802 tp!1801 tp!1805))))

(declare-fun b!9426 () Bool)

(assert (=> b!9426 (= e!5583 false)))

(declare-fun e!5584 () Bool)

(assert (=> b!9428 (= e!5584 (and tp!1807 tp!1803 tp!1804))))

(declare-fun res!3072 () Bool)

(assert (=> start!1890 (=> (not res!3072) (not e!5583))))

(assert (=> start!1890 (= res!3072 (= f!585 lambda!2368))))

(assert (=> start!1890 e!5583))

(assert (=> start!1890 true))

(declare-datatypes () ((EqEvidence!174 (EqEvidence!175 (x!5317 Int) (y!580 Int) (evidence!154 Int)))))

(declare-fun thiss!853 () EqEvidence!174)

(declare-fun inv!331 (EqEvidence!174) Bool)

(assert (=> start!1890 (and (inv!331 thiss!853) e!5585)))

(assert (=> start!1890 tp!1806))

(declare-fun that!241 () EqEvidence!174)

(assert (=> start!1890 (and (inv!331 that!241) e!5584)))

(assert (= (and start!1890 res!3072) b!9425))

(assert (= (and b!9425 res!3073) b!9426))

(assert (= start!1890 b!9427))

(assert (= start!1890 b!9428))

(declare-fun m!12551 () Bool)

(assert (=> b!9425 m!12551))

(declare-fun m!12553 () Bool)

(assert (=> b!9425 m!12553))

(assert (=> b!9425 m!12553))

(declare-fun m!12555 () Bool)

(assert (=> b!9425 m!12555))

(declare-fun m!12557 () Bool)

(assert (=> start!1890 m!12557))

(declare-fun m!12559 () Bool)

(assert (=> start!1890 m!12559))

(push 1)

(assert b_and!4151)

(assert (not b_next!2783))

(assert b_and!4147)

(assert b_and!4141)

(assert (not b_next!2773))

(assert (not b_next!2781))

(assert b_and!4145)

(assert (not b_next!2775))

(assert (not start!1890))

(assert (not b!9425))

(assert b_and!4149)

(assert b_and!4153)

(assert b_and!4143)

(assert (not b_next!2785))

(assert (not b_next!2779))

(assert (not b_next!2771))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4151)

(assert (not b_next!2783))

(assert b_and!4147)

(assert b_and!4141)

(assert (not b_next!2773))

(assert (not b_next!2781))

(assert b_and!4145)

(assert (not b_next!2775))

(assert b_and!4149)

(assert b_and!4153)

(assert b_and!4143)

(assert (not b_next!2785))

(assert (not b_next!2779))

(assert (not b_next!2771))

(check-sat)

(pop 1)

