; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1892 () Bool)

(assert start!1892)

(declare-fun b!9439 () Bool)

(declare-fun b_free!1125 () Bool)

(declare-fun b_next!2787 () Bool)

(assert (=> b!9439 (= b_free!1125 (not b_next!2787))))

(declare-fun tp!1825 () Bool)

(declare-fun b_and!4155 () Bool)

(assert (=> b!9439 (= tp!1825 b_and!4155)))

(declare-fun b_free!1127 () Bool)

(declare-fun b_next!2789 () Bool)

(assert (=> b!9439 (= b_free!1127 (not b_next!2789))))

(declare-fun tp!1828 () Bool)

(declare-fun b_and!4157 () Bool)

(assert (=> b!9439 (= tp!1828 b_and!4157)))

(declare-fun b_free!1129 () Bool)

(declare-fun b_next!2791 () Bool)

(assert (=> b!9439 (= b_free!1129 (not b_next!2791))))

(declare-fun tp!1827 () Bool)

(declare-fun b_and!4159 () Bool)

(assert (=> b!9439 (= tp!1827 b_and!4159)))

(declare-fun b_free!1131 () Bool)

(declare-fun b_next!2793 () Bool)

(assert (=> start!1892 (= b_free!1131 (not b_next!2793))))

(declare-fun tp!1823 () Bool)

(declare-fun b_and!4161 () Bool)

(assert (=> start!1892 (= tp!1823 b_and!4161)))

(declare-fun b!9440 () Bool)

(declare-fun b_free!1133 () Bool)

(declare-fun b_next!2795 () Bool)

(assert (=> b!9440 (= b_free!1133 (not b_next!2795))))

(declare-fun tp!1824 () Bool)

(declare-fun b_and!4163 () Bool)

(assert (=> b!9440 (= tp!1824 b_and!4163)))

(declare-fun b_free!1135 () Bool)

(declare-fun b_next!2797 () Bool)

(assert (=> b!9440 (= b_free!1135 (not b_next!2797))))

(declare-fun tp!1822 () Bool)

(declare-fun b_and!4165 () Bool)

(assert (=> b!9440 (= tp!1822 b_and!4165)))

(declare-fun b_free!1137 () Bool)

(declare-fun b_next!2799 () Bool)

(assert (=> b!9440 (= b_free!1137 (not b_next!2799))))

(declare-fun tp!1826 () Bool)

(declare-fun b_and!4167 () Bool)

(assert (=> b!9440 (= tp!1826 b_and!4167)))

(declare-fun f!585 () Int)

(declare-fun lambda!2371 () Int)

(declare-fun b_next!2801 () Bool)

(assert (=> start!1892 (= b_next!2793 (or (and start!1892 (= lambda!2371 f!585)) b_next!2801))))

(declare-fun b!9438 () Bool)

(declare-fun e!5593 () Bool)

(assert (=> b!9438 (= e!5593 false)))

(declare-fun b!9437 () Bool)

(declare-fun res!3079 () Bool)

(assert (=> b!9437 (=> (not res!3079) (not e!5593))))

(declare-datatypes () ((ProofOps!160 (ProofOps!161 (prop!203 Bool)))))

(declare-fun thiss!829 () ProofOps!160)

(declare-datatypes () ((Balance!213 (Balance!214 (extraOpen!147 Int) (extraClose!147 Int)))))

(declare-datatypes () ((Tree!69 (Branch!60 (left!444 Tree!69) (right!447 Tree!69)) (Leaf!142 (value!1311 Balance!213)))))

(declare-fun tree!25 () Tree!69)

(declare-fun fold!45 (Tree!69 Int) Balance!213)

(declare-datatypes () ((List!223 (Nil!221) (Cons!220 (head!438 Balance!213) (tail!450 List!223)))))

(declare-fun foldRight1!76 (List!223 Int) Balance!213)

(declare-fun toList!69 (Tree!69) List!223)

(assert (=> b!9437 (= res!3079 (= thiss!829 (ProofOps!161 (= (fold!45 tree!25 f!585) (foldRight1!76 (toList!69 tree!25) f!585)))))))

(declare-fun e!5594 () Bool)

(assert (=> b!9440 (= e!5594 (and tp!1824 tp!1822 tp!1826))))

(declare-fun res!3078 () Bool)

(assert (=> start!1892 (=> (not res!3078) (not e!5593))))

(assert (=> start!1892 (= res!3078 (= f!585 lambda!2371))))

(assert (=> start!1892 e!5593))

(assert (=> start!1892 true))

(declare-datatypes () ((EqEvidence!176 (EqEvidence!177 (x!5322 Int) (y!581 Int) (evidence!155 Int)))))

(declare-fun thiss!853 () EqEvidence!176)

(declare-fun e!5592 () Bool)

(declare-fun inv!332 (EqEvidence!176) Bool)

(assert (=> start!1892 (and (inv!332 thiss!853) e!5592)))

(assert (=> start!1892 tp!1823))

(declare-fun that!241 () EqEvidence!176)

(assert (=> start!1892 (and (inv!332 that!241) e!5594)))

(assert (=> b!9439 (= e!5592 (and tp!1825 tp!1828 tp!1827))))

(assert (= (and start!1892 res!3078) b!9437))

(assert (= (and b!9437 res!3079) b!9438))

(assert (= start!1892 b!9439))

(assert (= start!1892 b!9440))

(declare-fun m!12561 () Bool)

(assert (=> b!9437 m!12561))

(declare-fun m!12563 () Bool)

(assert (=> b!9437 m!12563))

(assert (=> b!9437 m!12563))

(declare-fun m!12565 () Bool)

(assert (=> b!9437 m!12565))

(declare-fun m!12567 () Bool)

(assert (=> start!1892 m!12567))

(declare-fun m!12569 () Bool)

(assert (=> start!1892 m!12569))

(push 1)

(assert (not start!1892))

(assert (not b!9437))

(assert (not b_next!2799))

(assert b_and!4155)

(assert (not b_next!2787))

(assert b_and!4167)

(assert b_and!4159)

(assert (not b_next!2789))

(assert b_and!4161)

(assert b_and!4157)

(assert (not b_next!2791))

(assert (not b_next!2801))

(assert b_and!4163)

(assert (not b_next!2797))

(assert b_and!4165)

(assert (not b_next!2795))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2799))

(assert b_and!4155)

(assert (not b_next!2787))

(assert b_and!4167)

(assert b_and!4159)

(assert (not b_next!2789))

(assert b_and!4161)

(assert b_and!4157)

(assert (not b_next!2791))

(assert (not b_next!2801))

(assert b_and!4163)

(assert (not b_next!2797))

(assert b_and!4165)

(assert (not b_next!2795))

(check-sat)

(pop 1)

