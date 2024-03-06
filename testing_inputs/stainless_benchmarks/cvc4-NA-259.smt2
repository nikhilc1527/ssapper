; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1994 () Bool)

(assert start!1994)

(declare-fun b!9903 () Bool)

(declare-fun b_free!1233 () Bool)

(declare-fun b_next!3049 () Bool)

(assert (=> b!9903 (= b_free!1233 (not b_next!3049))))

(declare-fun tp!1986 () Bool)

(declare-fun b_and!4455 () Bool)

(assert (=> b!9903 (= tp!1986 b_and!4455)))

(declare-fun b_free!1235 () Bool)

(declare-fun b_next!3051 () Bool)

(assert (=> b!9903 (= b_free!1235 (not b_next!3051))))

(declare-fun tp!1987 () Bool)

(declare-fun b_and!4457 () Bool)

(assert (=> b!9903 (= tp!1987 b_and!4457)))

(declare-fun b_free!1237 () Bool)

(declare-fun b_next!3053 () Bool)

(assert (=> b!9903 (= b_free!1237 (not b_next!3053))))

(declare-fun tp!1984 () Bool)

(declare-fun b_and!4459 () Bool)

(assert (=> b!9903 (= tp!1984 b_and!4459)))

(declare-fun b!9900 () Bool)

(declare-fun b_free!1239 () Bool)

(declare-fun b_next!3055 () Bool)

(assert (=> b!9900 (= b_free!1239 (not b_next!3055))))

(declare-fun tp!1982 () Bool)

(declare-fun b_and!4461 () Bool)

(assert (=> b!9900 (= tp!1982 b_and!4461)))

(declare-fun b_free!1241 () Bool)

(declare-fun b_next!3057 () Bool)

(assert (=> b!9900 (= b_free!1241 (not b_next!3057))))

(declare-fun tp!1985 () Bool)

(declare-fun b_and!4463 () Bool)

(assert (=> b!9900 (= tp!1985 b_and!4463)))

(declare-fun b_free!1243 () Bool)

(declare-fun b_next!3059 () Bool)

(assert (=> b!9900 (= b_free!1243 (not b_next!3059))))

(declare-fun tp!1983 () Bool)

(declare-fun b_and!4465 () Bool)

(assert (=> b!9900 (= tp!1983 b_and!4465)))

(declare-fun res!3324 () Bool)

(declare-fun e!5850 () Bool)

(assert (=> start!1994 (=> (not res!3324) (not e!5850))))

(declare-fun lambda!2557 () Int)

(declare-datatypes () ((Balance!237 (Balance!238 (extraOpen!159 Int) (extraClose!159 Int)))))

(declare-fun balance!3 () Balance!237)

(declare-datatypes () ((Parenthesis!58 (CloseParenthesis!57) (OpenParenthesis!57))))

(declare-datatypes () ((List!235 (Nil!233) (Cons!232 (head!450 Parenthesis!58) (tail!462 List!235)))))

(declare-fun xs!280 () List!235)

(declare-fun foldRight!39 (List!235 Balance!237 Int) Balance!237)

(assert (=> start!1994 (= res!3324 (= balance!3 (foldRight!39 xs!280 (Balance!238 0 0) lambda!2557)))))

(assert (=> start!1994 e!5850))

(declare-datatypes () ((EqEvidence!192 (EqEvidence!193 (x!5588 Int) (y!601 Int) (evidence!163 Int)))))

(declare-fun that!164 () EqEvidence!192)

(declare-fun e!5852 () Bool)

(declare-fun inv!346 (EqEvidence!192) Bool)

(assert (=> start!1994 (and (inv!346 that!164) e!5852)))

(assert (=> start!1994 true))

(declare-fun thiss!673 () EqEvidence!192)

(declare-fun e!5849 () Bool)

(assert (=> start!1994 (and (inv!346 thiss!673) e!5849)))

(declare-fun b!9896 () Bool)

(declare-fun res!3321 () Bool)

(assert (=> b!9896 (=> (not res!3321) (not e!5850))))

(assert (=> b!9896 (= res!3321 (not (is-Nil!233 xs!280)))))

(declare-fun b!9897 () Bool)

(declare-fun e!5851 () Bool)

(declare-fun nonNegative!0 (Balance!237) Bool)

(assert (=> b!9897 (= e!5851 (nonNegative!0 balance!3))))

(declare-fun b!9898 () Bool)

(assert (=> b!9898 (= e!5850 false)))

(declare-fun b!9899 () Bool)

(declare-fun res!3325 () Bool)

(assert (=> b!9899 (=> (not res!3325) (not e!5850))))

(declare-datatypes () ((ProofOps!184 (ProofOps!185 (prop!219 Bool)))))

(declare-fun thiss!651 () ProofOps!184)

(assert (=> b!9899 (= res!3325 (= thiss!651 (ProofOps!185 e!5851)))))

(declare-fun res!3323 () Bool)

(assert (=> b!9899 (=> (not res!3323) (not e!5851))))

(declare-fun counter!4 () Int)

(declare-fun balanceToCounter!0 (Balance!237) Int)

(assert (=> b!9899 (= res!3323 (= (balanceToCounter!0 balance!3) counter!4))))

(assert (=> b!9900 (= e!5849 (and tp!1982 tp!1985 tp!1983))))

(declare-fun b!9901 () Bool)

(declare-fun res!3322 () Bool)

(assert (=> b!9901 (=> (not res!3322) (not e!5850))))

(declare-fun original_sequential_helper!0 (List!235) Bool)

(assert (=> b!9901 (= res!3322 (original_sequential_helper!0 (tail!462 xs!280)))))

(declare-fun b!9902 () Bool)

(declare-fun res!3326 () Bool)

(assert (=> b!9902 (=> (not res!3326) (not e!5850))))

(declare-fun lambda!2558 () Int)

(declare-fun foldRight!40 (List!235 Int Int) Int)

(assert (=> b!9902 (= res!3326 (= counter!4 (foldRight!40 xs!280 0 lambda!2558)))))

(assert (=> b!9903 (= e!5852 (and tp!1986 tp!1987 tp!1984))))

(assert (= (and start!1994 res!3324) b!9902))

(assert (= (and b!9902 res!3326) b!9899))

(assert (= (and b!9899 res!3323) b!9897))

(assert (= (and b!9899 res!3325) b!9896))

(assert (= (and b!9896 res!3321) b!9901))

(assert (= (and b!9901 res!3322) b!9898))

(assert (= start!1994 b!9903))

(assert (= start!1994 b!9900))

(declare-fun m!13063 () Bool)

(assert (=> b!9897 m!13063))

(declare-fun m!13065 () Bool)

(assert (=> b!9901 m!13065))

(declare-fun m!13067 () Bool)

(assert (=> b!9899 m!13067))

(declare-fun m!13069 () Bool)

(assert (=> start!1994 m!13069))

(declare-fun m!13071 () Bool)

(assert (=> start!1994 m!13071))

(declare-fun m!13073 () Bool)

(assert (=> start!1994 m!13073))

(declare-fun m!13075 () Bool)

(assert (=> b!9902 m!13075))

(push 1)

(assert (not b!9899))

(assert b_and!4457)

(assert (not b!9902))

(assert (not b_next!3059))

(assert b_and!4459)

(assert (not b_next!3051))

(assert (not b_next!3049))

(assert (not b!9901))

(assert b_and!4463)

(assert (not b_next!3053))

(assert (not b_next!3057))

(assert (not start!1994))

(assert (not b!9897))

(assert b_and!4455)

(assert (not b_next!3055))

(assert b_and!4461)

(assert b_and!4465)

(check-sat)

(pop 1)

(push 1)

(assert b_and!4457)

(assert (not b_next!3059))

(assert b_and!4459)

(assert (not b_next!3051))

(assert (not b_next!3049))

(assert b_and!4463)

(assert (not b_next!3053))

(assert (not b_next!3057))

(assert b_and!4455)

(assert (not b_next!3055))

(assert b_and!4461)

(assert b_and!4465)

(check-sat)

(pop 1)

