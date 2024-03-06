; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1992 () Bool)

(assert start!1992)

(declare-fun b!9878 () Bool)

(declare-fun b_free!1221 () Bool)

(declare-fun b_next!3037 () Bool)

(assert (=> b!9878 (= b_free!1221 (not b_next!3037))))

(declare-fun tp!1965 () Bool)

(declare-fun b_and!4443 () Bool)

(assert (=> b!9878 (= tp!1965 b_and!4443)))

(declare-fun b_free!1223 () Bool)

(declare-fun b_next!3039 () Bool)

(assert (=> b!9878 (= b_free!1223 (not b_next!3039))))

(declare-fun tp!1968 () Bool)

(declare-fun b_and!4445 () Bool)

(assert (=> b!9878 (= tp!1968 b_and!4445)))

(declare-fun b_free!1225 () Bool)

(declare-fun b_next!3041 () Bool)

(assert (=> b!9878 (= b_free!1225 (not b_next!3041))))

(declare-fun tp!1964 () Bool)

(declare-fun b_and!4447 () Bool)

(assert (=> b!9878 (= tp!1964 b_and!4447)))

(declare-fun b!9872 () Bool)

(declare-fun b_free!1227 () Bool)

(declare-fun b_next!3043 () Bool)

(assert (=> b!9872 (= b_free!1227 (not b_next!3043))))

(declare-fun tp!1969 () Bool)

(declare-fun b_and!4449 () Bool)

(assert (=> b!9872 (= tp!1969 b_and!4449)))

(declare-fun b_free!1229 () Bool)

(declare-fun b_next!3045 () Bool)

(assert (=> b!9872 (= b_free!1229 (not b_next!3045))))

(declare-fun tp!1967 () Bool)

(declare-fun b_and!4451 () Bool)

(assert (=> b!9872 (= tp!1967 b_and!4451)))

(declare-fun b_free!1231 () Bool)

(declare-fun b_next!3047 () Bool)

(assert (=> b!9872 (= b_free!1231 (not b_next!3047))))

(declare-fun tp!1966 () Bool)

(declare-fun b_and!4453 () Bool)

(assert (=> b!9872 (= tp!1966 b_and!4453)))

(declare-fun e!5838 () Bool)

(assert (=> b!9872 (= e!5838 (and tp!1969 tp!1967 tp!1966))))

(declare-fun b!9873 () Bool)

(declare-fun e!5839 () Bool)

(assert (=> b!9873 (= e!5839 false)))

(declare-fun b!9874 () Bool)

(declare-fun res!3308 () Bool)

(assert (=> b!9874 (=> (not res!3308) (not e!5839))))

(declare-datatypes () ((Parenthesis!57 (CloseParenthesis!56) (OpenParenthesis!56))))

(declare-datatypes () ((List!234 (Nil!232) (Cons!231 (head!449 Parenthesis!57) (tail!461 List!234)))))

(declare-fun xs!280 () List!234)

(declare-fun lambda!2552 () Int)

(declare-fun counter!4 () Int)

(declare-fun foldRight!37 (List!234 Int Int) Int)

(assert (=> b!9874 (= res!3308 (= counter!4 (foldRight!37 xs!280 0 lambda!2552)))))

(declare-fun b!9875 () Bool)

(declare-fun res!3307 () Bool)

(assert (=> b!9875 (=> (not res!3307) (not e!5839))))

(declare-fun original_sequential_helper!0 (List!234) Bool)

(assert (=> b!9875 (= res!3307 (original_sequential_helper!0 (tail!461 xs!280)))))

(declare-fun b!9876 () Bool)

(declare-fun res!3304 () Bool)

(assert (=> b!9876 (=> (not res!3304) (not e!5839))))

(assert (=> b!9876 (= res!3304 (not (is-Nil!232 xs!280)))))

(declare-fun b!9877 () Bool)

(declare-fun e!5837 () Bool)

(declare-datatypes () ((Balance!235 (Balance!236 (extraOpen!158 Int) (extraClose!158 Int)))))

(declare-fun balance!3 () Balance!235)

(declare-fun nonNegative!0 (Balance!235) Bool)

(assert (=> b!9877 (= e!5837 (nonNegative!0 balance!3))))

(declare-fun res!3303 () Bool)

(assert (=> start!1992 (=> (not res!3303) (not e!5839))))

(declare-fun lambda!2551 () Int)

(declare-fun foldRight!38 (List!234 Balance!235 Int) Balance!235)

(assert (=> start!1992 (= res!3303 (= balance!3 (foldRight!38 xs!280 (Balance!236 0 0) lambda!2551)))))

(assert (=> start!1992 e!5839))

(declare-datatypes () ((EqEvidence!190 (EqEvidence!191 (x!5579 Int) (y!600 Int) (evidence!162 Int)))))

(declare-fun that!164 () EqEvidence!190)

(declare-fun e!5840 () Bool)

(declare-fun inv!345 (EqEvidence!190) Bool)

(assert (=> start!1992 (and (inv!345 that!164) e!5840)))

(assert (=> start!1992 true))

(declare-fun thiss!673 () EqEvidence!190)

(assert (=> start!1992 (and (inv!345 thiss!673) e!5838)))

(assert (=> b!9878 (= e!5840 (and tp!1965 tp!1968 tp!1964))))

(declare-fun b!9879 () Bool)

(declare-fun res!3305 () Bool)

(assert (=> b!9879 (=> (not res!3305) (not e!5839))))

(declare-datatypes () ((ProofOps!182 (ProofOps!183 (prop!218 Bool)))))

(declare-fun thiss!651 () ProofOps!182)

(assert (=> b!9879 (= res!3305 (= thiss!651 (ProofOps!183 e!5837)))))

(declare-fun res!3306 () Bool)

(assert (=> b!9879 (=> (not res!3306) (not e!5837))))

(declare-fun balanceToCounter!0 (Balance!235) Int)

(assert (=> b!9879 (= res!3306 (= (balanceToCounter!0 balance!3) counter!4))))

(assert (= (and start!1992 res!3303) b!9874))

(assert (= (and b!9874 res!3308) b!9879))

(assert (= (and b!9879 res!3306) b!9877))

(assert (= (and b!9879 res!3305) b!9876))

(assert (= (and b!9876 res!3304) b!9875))

(assert (= (and b!9875 res!3307) b!9873))

(assert (= start!1992 b!9878))

(assert (= start!1992 b!9872))

(declare-fun m!13049 () Bool)

(assert (=> b!9874 m!13049))

(declare-fun m!13051 () Bool)

(assert (=> start!1992 m!13051))

(declare-fun m!13053 () Bool)

(assert (=> start!1992 m!13053))

(declare-fun m!13055 () Bool)

(assert (=> start!1992 m!13055))

(declare-fun m!13057 () Bool)

(assert (=> b!9875 m!13057))

(declare-fun m!13059 () Bool)

(assert (=> b!9879 m!13059))

(declare-fun m!13061 () Bool)

(assert (=> b!9877 m!13061))

(push 1)

(assert (not start!1992))

(assert (not b!9875))

(assert (not b_next!3041))

(assert (not b!9874))

(assert b_and!4443)

(assert b_and!4449)

(assert (not b!9877))

(assert (not b!9879))

(assert (not b_next!3045))

(assert b_and!4445)

(assert (not b_next!3039))

(assert b_and!4451)

(assert b_and!4447)

(assert (not b_next!3047))

(assert b_and!4453)

(assert (not b_next!3037))

(assert (not b_next!3043))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3041))

(assert b_and!4443)

(assert b_and!4449)

(assert (not b_next!3045))

(assert b_and!4445)

(assert (not b_next!3039))

(assert b_and!4451)

(assert b_and!4447)

(assert (not b_next!3047))

(assert b_and!4453)

(assert (not b_next!3037))

(assert (not b_next!3043))

(check-sat)

(pop 1)

