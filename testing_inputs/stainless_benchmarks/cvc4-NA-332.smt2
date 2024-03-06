; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2520 () Bool)

(assert start!2520)

(declare-fun b_free!1987 () Bool)

(declare-fun b_next!4653 () Bool)

(assert (=> start!2520 (= b_free!1987 (not b_next!4653))))

(declare-fun tp!3150 () Bool)

(declare-fun b_and!6947 () Bool)

(assert (=> start!2520 (= tp!3150 b_and!6947)))

(declare-fun b!12458 () Bool)

(declare-fun b_free!1989 () Bool)

(declare-fun b_next!4655 () Bool)

(assert (=> b!12458 (= b_free!1989 (not b_next!4655))))

(declare-fun tp!3149 () Bool)

(declare-fun b_and!6949 () Bool)

(assert (=> b!12458 (= tp!3149 b_and!6949)))

(declare-fun b_free!1991 () Bool)

(declare-fun b_next!4657 () Bool)

(assert (=> b!12458 (= b_free!1991 (not b_next!4657))))

(declare-fun tp!3151 () Bool)

(declare-fun b_and!6951 () Bool)

(assert (=> b!12458 (= tp!3151 b_and!6951)))

(declare-fun b_free!1993 () Bool)

(declare-fun b_next!4659 () Bool)

(assert (=> b!12458 (= b_free!1993 (not b_next!4659))))

(declare-fun tp!3146 () Bool)

(declare-fun b_and!6953 () Bool)

(assert (=> b!12458 (= tp!3146 b_and!6953)))

(declare-fun b!12459 () Bool)

(declare-fun b_free!1995 () Bool)

(declare-fun b_next!4661 () Bool)

(assert (=> b!12459 (= b_free!1995 (not b_next!4661))))

(declare-fun tp!3148 () Bool)

(declare-fun b_and!6955 () Bool)

(assert (=> b!12459 (= tp!3148 b_and!6955)))

(declare-fun b_free!1997 () Bool)

(declare-fun b_next!4663 () Bool)

(assert (=> b!12459 (= b_free!1997 (not b_next!4663))))

(declare-fun tp!3147 () Bool)

(declare-fun b_and!6957 () Bool)

(assert (=> b!12459 (= tp!3147 b_and!6957)))

(assert (=> start!2520 false))

(assert (=> start!2520 tp!3150))

(assert (=> start!2520 true))

(declare-datatypes () ((Balance!373 (Balance!374 (extraOpen!227 Int) (extraClose!227 Int)))))

(declare-datatypes () ((EqEvidence!300 (EqEvidence!301 (x!7170 Int) (y!678 Int) (evidence!217 Int)))))

(declare-fun thiss!743 () EqEvidence!300)

(declare-fun e!6838 () Bool)

(declare-fun inv!423 (EqEvidence!300) Bool)

(assert (=> start!2520 (and (inv!423 thiss!743) e!6838)))

(declare-datatypes () ((EqProof!138 (EqProof!139 (x!7171 Int) (y!679 Int)))))

(declare-fun that!199 () EqProof!138)

(declare-fun e!6837 () Bool)

(declare-fun inv!424 (EqProof!138) Bool)

(assert (=> start!2520 (and (inv!424 that!199) e!6837)))

(assert (=> b!12458 (= e!6838 (and tp!3149 tp!3151 tp!3146))))

(assert (=> b!12459 (= e!6837 (and tp!3148 tp!3147))))

(assert (= start!2520 b!12458))

(assert (= start!2520 b!12459))

(declare-fun m!15491 () Bool)

(assert (=> start!2520 m!15491))

(declare-fun m!15493 () Bool)

(assert (=> start!2520 m!15493))

(push 1)

(assert b_and!6949)

(assert b_and!6947)

(assert (not b_next!4659))

(assert (not b_next!4655))

(assert (not b_next!4657))

(assert b_and!6951)

(assert (not start!2520))

(assert (not b_next!4653))

(assert (not b_next!4663))

(assert b_and!6957)

(assert b_and!6955)

(assert (not b_next!4661))

(assert b_and!6953)

(check-sat)

(pop 1)

(push 1)

(assert b_and!6949)

(assert b_and!6947)

(assert (not b_next!4659))

(assert (not b_next!4655))

(assert (not b_next!4657))

(assert b_and!6951)

(assert (not b_next!4653))

(assert (not b_next!4663))

(assert b_and!6957)

(assert b_and!6955)

(assert (not b_next!4661))

(assert b_and!6953)

(check-sat)

(pop 1)

