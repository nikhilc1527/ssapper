; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2176 () Bool)

(assert start!2176)

(declare-fun b_free!1423 () Bool)

(declare-fun b_next!3445 () Bool)

(assert (=> start!2176 (= b_free!1423 (not b_next!3445))))

(declare-fun tp!2299 () Bool)

(declare-fun b_and!4947 () Bool)

(assert (=> start!2176 (= tp!2299 b_and!4947)))

(declare-fun b_free!1425 () Bool)

(declare-fun b_next!3447 () Bool)

(assert (=> start!2176 (= b_free!1425 (not b_next!3447))))

(declare-fun tp!2301 () Bool)

(declare-fun b_and!4949 () Bool)

(assert (=> start!2176 (= tp!2301 b_and!4949)))

(declare-fun b!10806 () Bool)

(declare-fun b_free!1427 () Bool)

(declare-fun b_next!3449 () Bool)

(assert (=> b!10806 (= b_free!1427 (not b_next!3449))))

(declare-fun tp!2302 () Bool)

(declare-fun b_and!4951 () Bool)

(assert (=> b!10806 (= tp!2302 b_and!4951)))

(declare-fun b_free!1429 () Bool)

(declare-fun b_next!3451 () Bool)

(assert (=> b!10806 (= b_free!1429 (not b_next!3451))))

(declare-fun tp!2298 () Bool)

(declare-fun b_and!4953 () Bool)

(assert (=> b!10806 (= tp!2298 b_and!4953)))

(declare-fun b_free!1431 () Bool)

(declare-fun b_next!3453 () Bool)

(assert (=> b!10806 (= b_free!1431 (not b_next!3453))))

(declare-fun tp!2300 () Bool)

(declare-fun b_and!4955 () Bool)

(assert (=> b!10806 (= tp!2300 b_and!4955)))

(declare-fun f!539 () Int)

(declare-fun b_next!3455 () Bool)

(declare-fun lambda!2866 () Int)

(declare-fun b!10805 () Bool)

(assert (=> start!2176 (= b_next!3445 (or (and b!10805 (= lambda!2866 f!539)) b_next!3455))))

(declare-fun b_next!3457 () Bool)

(declare-fun f!552 () Int)

(assert (=> start!2176 (= b_next!3447 (or (and b!10805 (= lambda!2866 f!552)) b_next!3457))))

(declare-fun b!10811 () Bool)

(assert (=> b!10811 true))

(declare-fun order!163 () Int)

(declare-fun lambda!2867 () Int)

(declare-fun order!161 () Int)

(declare-fun dynLambda!358 (Int Int) Int)

(declare-fun dynLambda!359 (Int Int) Int)

(assert (=> b!10811 (< (dynLambda!358 order!161 f!539) (dynLambda!359 order!163 lambda!2867))))

(assert (=> b!10811 true))

(assert (=> b!10811 true))

(declare-datatypes () ((Balance!279 (Balance!280 (extraOpen!180 Int) (extraClose!180 Int)))))

(declare-datatypes () ((EqEvidence!218 (EqEvidence!219 (x!6053 Int) (y!620 Int) (evidence!176 Int)))))

(declare-fun thiss!722 () EqEvidence!218)

(declare-fun b_next!3459 () Bool)

(assert (=> b!10806 (= b_next!3449 (or (and b!10811 (= lambda!2867 (x!6053 thiss!722))) b_next!3459))))

(declare-fun b_next!3461 () Bool)

(assert (=> b!10806 (= b_next!3451 (or (and b!10811 (= lambda!2867 (y!620 thiss!722))) b_next!3461))))

(assert (=> b!10811 true))

(declare-fun order!165 () Int)

(declare-fun lambda!2868 () Int)

(declare-fun dynLambda!360 (Int Int) Int)

(assert (=> b!10811 (< (dynLambda!358 order!161 f!539) (dynLambda!360 order!165 lambda!2868))))

(assert (=> b!10811 true))

(declare-fun b_next!3463 () Bool)

(assert (=> b!10806 (= b_next!3453 (or (and b!10811 (= lambda!2868 (evidence!176 thiss!722))) b_next!3463))))

(declare-fun b!10804 () Bool)

(declare-fun res!3842 () Bool)

(declare-fun e!6245 () Bool)

(assert (=> b!10804 (=> (not res!3842) (not e!6245))))

(declare-datatypes () ((List!259 (Nil!257) (Cons!256 (head!474 Balance!279) (tail!486 List!259)))))

(declare-fun ys!54 () List!259)

(declare-datatypes () ((ProofOps!218 (ProofOps!219 (prop!242 Bool)))))

(declare-fun thiss!710 () ProofOps!218)

(declare-fun xs!292 () List!259)

(declare-fun dynLambda!361 (Int Balance!279 Balance!279) Balance!279)

(declare-fun foldRight1!89 (List!259 Int) Balance!279)

(declare-fun append!108 (List!259 List!259) List!259)

(assert (=> b!10804 (= res!3842 (= thiss!710 (ProofOps!219 (= (dynLambda!361 f!539 (foldRight1!89 xs!292 f!539) (foldRight1!89 ys!54 f!539)) (foldRight1!89 (append!108 xs!292 ys!54) f!539)))))))

(declare-fun res!3845 () Bool)

(assert (=> b!10805 (=> (not res!3845) (not e!6245))))

(assert (=> b!10805 (= res!3845 (= f!539 lambda!2866))))

(declare-fun e!6244 () Bool)

(assert (=> b!10806 (= e!6244 (and tp!2302 tp!2298 tp!2300))))

(declare-fun res!3844 () Bool)

(assert (=> start!2176 (=> (not res!3844) (not e!6245))))

(declare-fun isEmpty!187 (List!259) Bool)

(assert (=> start!2176 (= res!3844 (not (isEmpty!187 xs!292)))))

(assert (=> start!2176 e!6245))

(assert (=> start!2176 tp!2299))

(declare-fun inv!365 (EqEvidence!218) Bool)

(assert (=> start!2176 (and (inv!365 thiss!722) e!6244)))

(assert (=> start!2176 true))

(assert (=> start!2176 tp!2301))

(declare-fun b!10807 () Bool)

(declare-fun res!3848 () Bool)

(assert (=> b!10807 (=> (not res!3848) (not e!6245))))

(assert (=> b!10807 (= res!3848 (and (is-Cons!256 xs!292) (is-Nil!257 (tail!486 xs!292))))))

(declare-fun b!10808 () Bool)

(declare-fun res!3847 () Bool)

(assert (=> b!10808 (=> (not res!3847) (not e!6245))))

(assert (=> b!10808 (= res!3847 (not (isEmpty!187 ys!54)))))

(declare-fun b!10809 () Bool)

(declare-fun res!3843 () Bool)

(assert (=> b!10809 (=> (not res!3843) (not e!6245))))

(declare-fun thiss!731 () List!259)

(assert (=> b!10809 (= res!3843 (and (= thiss!731 ys!54) (= f!552 f!539)))))

(declare-fun b!10810 () Bool)

(assert (=> b!10810 (= e!6245 (isEmpty!187 thiss!731))))

(declare-fun res!3846 () Bool)

(assert (=> b!10811 (=> (not res!3846) (not e!6245))))

(assert (=> b!10811 (= res!3846 (= thiss!722 (EqEvidence!219 lambda!2867 lambda!2867 lambda!2868)))))

(assert (= (and start!2176 res!3844) b!10808))

(assert (= (and b!10808 res!3847) b!10805))

(assert (= (and b!10805 res!3845) b!10804))

(assert (= (and b!10804 res!3842) b!10807))

(assert (= (and b!10807 res!3848) b!10811))

(assert (= (and b!10811 res!3846) b!10809))

(assert (= (and b!10809 res!3843) b!10810))

(assert (= start!2176 b!10806))

(declare-fun b_lambda!5585 () Bool)

(assert (=> (not b_lambda!5585) (not b!10804)))

(declare-fun t!2957 () Bool)

(declare-fun tb!2617 () Bool)

(assert (=> (and start!2176 (= f!539 f!539) t!2957) tb!2617))

(declare-fun result!2669 () Bool)

(assert (=> tb!2617 (= result!2669 true)))

(assert (=> b!10804 t!2957))

(declare-fun b_and!4957 () Bool)

(assert (= b_and!4947 (and (=> t!2957 result!2669) b_and!4957)))

(declare-fun tb!2619 () Bool)

(declare-fun t!2959 () Bool)

(assert (=> (and start!2176 (= f!552 f!539) t!2959) tb!2619))

(declare-fun result!2671 () Bool)

(assert (=> tb!2619 (= result!2671 true)))

(assert (=> b!10804 t!2959))

(declare-fun b_and!4959 () Bool)

(assert (= b_and!4949 (and (=> t!2959 result!2671) b_and!4959)))

(declare-fun m!13785 () Bool)

(assert (=> b!10804 m!13785))

(declare-fun m!13787 () Bool)

(assert (=> b!10804 m!13787))

(declare-fun m!13789 () Bool)

(assert (=> b!10804 m!13789))

(assert (=> b!10804 m!13787))

(assert (=> b!10804 m!13789))

(declare-fun m!13791 () Bool)

(assert (=> b!10804 m!13791))

(assert (=> b!10804 m!13785))

(declare-fun m!13793 () Bool)

(assert (=> b!10804 m!13793))

(declare-fun m!13795 () Bool)

(assert (=> start!2176 m!13795))

(declare-fun m!13797 () Bool)

(assert (=> start!2176 m!13797))

(declare-fun m!13799 () Bool)

(assert (=> b!10808 m!13799))

(declare-fun m!13801 () Bool)

(assert (=> b!10810 m!13801))

(push 1)

(assert (not b!10808))

(assert (not b_lambda!5585))

(assert (not b_next!3457))

(assert (not b!10810))

(assert (not b_next!3463))

(assert b_and!4957)

(assert (not start!2176))

(assert b_and!4959)

(assert b_and!4955)

(assert (not b_next!3461))

(assert (not b_next!3455))

(assert (not b!10804))

(assert b_and!4951)

(assert (not b_next!3459))

(assert b_and!4953)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3457))

(assert (not b_next!3463))

(assert b_and!4957)

(assert b_and!4959)

(assert b_and!4955)

(assert (not b_next!3461))

(assert (not b_next!3455))

(assert b_and!4951)

(assert (not b_next!3459))

(assert b_and!4953)

(check-sat)

(pop 1)

