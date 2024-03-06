; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2206 () Bool)

(assert start!2206)

(declare-fun b_free!1461 () Bool)

(declare-fun b_next!3529 () Bool)

(assert (=> start!2206 (= b_free!1461 (not b_next!3529))))

(declare-fun tp!2353 () Bool)

(declare-fun b_and!5073 () Bool)

(assert (=> start!2206 (= tp!2353 b_and!5073)))

(declare-fun b_free!1463 () Bool)

(declare-fun b_next!3531 () Bool)

(assert (=> start!2206 (= b_free!1463 (not b_next!3531))))

(declare-fun tp!2356 () Bool)

(declare-fun b_and!5075 () Bool)

(assert (=> start!2206 (= tp!2356 b_and!5075)))

(declare-fun b!10968 () Bool)

(declare-fun b_free!1465 () Bool)

(declare-fun b_next!3533 () Bool)

(assert (=> b!10968 (= b_free!1465 (not b_next!3533))))

(declare-fun tp!2354 () Bool)

(declare-fun b_and!5077 () Bool)

(assert (=> b!10968 (= tp!2354 b_and!5077)))

(declare-fun b_free!1467 () Bool)

(declare-fun b_next!3535 () Bool)

(assert (=> b!10968 (= b_free!1467 (not b_next!3535))))

(declare-fun tp!2355 () Bool)

(declare-fun b_and!5079 () Bool)

(assert (=> b!10968 (= tp!2355 b_and!5079)))

(declare-fun f!539 () Int)

(declare-fun b!10967 () Bool)

(declare-fun b_next!3537 () Bool)

(declare-fun lambda!2905 () Int)

(assert (=> start!2206 (= b_next!3529 (or (and b!10967 (= lambda!2905 f!539)) b_next!3537))))

(declare-fun f!562 () Int)

(declare-fun b_next!3539 () Bool)

(assert (=> start!2206 (= b_next!3531 (or (and b!10967 (= lambda!2905 f!562)) b_next!3539))))

(declare-fun b!10969 () Bool)

(assert (=> b!10969 true))

(declare-fun order!177 () Int)

(declare-fun lambda!2906 () Int)

(declare-fun order!175 () Int)

(declare-fun dynLambda!374 (Int Int) Int)

(declare-fun dynLambda!375 (Int Int) Int)

(assert (=> b!10969 (< (dynLambda!374 order!175 f!539) (dynLambda!375 order!177 lambda!2906))))

(assert (=> b!10969 true))

(assert (=> b!10969 true))

(declare-fun b_next!3541 () Bool)

(declare-datatypes () ((Balance!289 (Balance!290 (extraOpen!185 Int) (extraClose!185 Int)))))

(declare-datatypes () ((EqProof!104 (EqProof!105 (x!6120 Int) (y!623 Int)))))

(declare-fun thiss!748 () EqProof!104)

(assert (=> b!10968 (= b_next!3533 (or (and b!10969 (= lambda!2906 (x!6120 thiss!748))) b_next!3541))))

(declare-fun b_next!3543 () Bool)

(assert (=> b!10968 (= b_next!3535 (or (and b!10969 (= lambda!2906 (y!623 thiss!748))) b_next!3543))))

(declare-fun b!10965 () Bool)

(declare-fun res!3944 () Bool)

(declare-fun e!6291 () Bool)

(assert (=> b!10965 (=> (not res!3944) (not e!6291))))

(declare-datatypes () ((List!264 (Nil!262) (Cons!261 (head!479 Balance!289) (tail!491 List!264)))))

(declare-fun thiss!753 () List!264)

(declare-fun xs!292 () List!264)

(assert (=> b!10965 (= res!3944 (and (= thiss!753 xs!292) (= f!562 f!539)))))

(declare-fun b!10966 () Bool)

(declare-fun isEmpty!192 (List!264) Bool)

(assert (=> b!10966 (= e!6291 (isEmpty!192 thiss!753))))

(declare-fun res!3945 () Bool)

(assert (=> b!10967 (=> (not res!3945) (not e!6291))))

(assert (=> b!10967 (= res!3945 (= f!539 lambda!2905))))

(declare-fun e!6290 () Bool)

(assert (=> b!10968 (= e!6290 (and tp!2354 tp!2355))))

(declare-fun res!3950 () Bool)

(assert (=> b!10969 (=> (not res!3950) (not e!6291))))

(assert (=> b!10969 (= res!3950 (= thiss!748 (EqProof!105 lambda!2906 lambda!2906)))))

(declare-fun res!3946 () Bool)

(assert (=> start!2206 (=> (not res!3946) (not e!6291))))

(assert (=> start!2206 (= res!3946 (not (isEmpty!192 xs!292)))))

(assert (=> start!2206 e!6291))

(assert (=> start!2206 tp!2353))

(assert (=> start!2206 true))

(assert (=> start!2206 tp!2356))

(declare-fun inv!368 (EqProof!104) Bool)

(assert (=> start!2206 (and (inv!368 thiss!748) e!6290)))

(declare-fun b!10970 () Bool)

(declare-fun res!3947 () Bool)

(assert (=> b!10970 (=> (not res!3947) (not e!6291))))

(declare-fun ys!54 () List!264)

(declare-datatypes () ((ProofOps!228 (ProofOps!229 (prop!247 Bool)))))

(declare-fun thiss!710 () ProofOps!228)

(declare-fun dynLambda!376 (Int Balance!289 Balance!289) Balance!289)

(declare-fun foldRight1!94 (List!264 Int) Balance!289)

(declare-fun append!113 (List!264 List!264) List!264)

(assert (=> b!10970 (= res!3947 (= thiss!710 (ProofOps!229 (= (dynLambda!376 f!539 (foldRight1!94 xs!292 f!539) (foldRight1!94 ys!54 f!539)) (foldRight1!94 (append!113 xs!292 ys!54) f!539)))))))

(declare-fun b!10971 () Bool)

(declare-fun res!3949 () Bool)

(assert (=> b!10971 (=> (not res!3949) (not e!6291))))

(assert (=> b!10971 (= res!3949 (not (isEmpty!192 ys!54)))))

(declare-fun b!10972 () Bool)

(declare-fun res!3948 () Bool)

(assert (=> b!10972 (=> (not res!3948) (not e!6291))))

(assert (=> b!10972 (= res!3948 (or (not (is-Cons!261 xs!292)) (not (is-Nil!262 (tail!491 xs!292)))))))

(assert (= (and start!2206 res!3946) b!10971))

(assert (= (and b!10971 res!3949) b!10967))

(assert (= (and b!10967 res!3945) b!10970))

(assert (= (and b!10970 res!3947) b!10972))

(assert (= (and b!10972 res!3948) b!10969))

(assert (= (and b!10969 res!3950) b!10965))

(assert (= (and b!10965 res!3944) b!10966))

(assert (= start!2206 b!10968))

(declare-fun b_lambda!5659 () Bool)

(assert (=> (not b_lambda!5659) (not b!10970)))

(declare-fun t!3025 () Bool)

(declare-fun tb!2685 () Bool)

(assert (=> (and start!2206 (= f!539 f!539) t!3025) tb!2685))

(declare-fun result!2737 () Bool)

(assert (=> tb!2685 (= result!2737 true)))

(assert (=> b!10970 t!3025))

(declare-fun b_and!5081 () Bool)

(assert (= b_and!5073 (and (=> t!3025 result!2737) b_and!5081)))

(declare-fun t!3027 () Bool)

(declare-fun tb!2687 () Bool)

(assert (=> (and start!2206 (= f!562 f!539) t!3027) tb!2687))

(declare-fun result!2739 () Bool)

(assert (=> tb!2687 (= result!2739 true)))

(assert (=> b!10970 t!3027))

(declare-fun b_and!5083 () Bool)

(assert (= b_and!5075 (and (=> t!3027 result!2739) b_and!5083)))

(declare-fun m!13937 () Bool)

(assert (=> b!10966 m!13937))

(declare-fun m!13939 () Bool)

(assert (=> start!2206 m!13939))

(declare-fun m!13941 () Bool)

(assert (=> start!2206 m!13941))

(declare-fun m!13943 () Bool)

(assert (=> b!10970 m!13943))

(declare-fun m!13945 () Bool)

(assert (=> b!10970 m!13945))

(declare-fun m!13947 () Bool)

(assert (=> b!10970 m!13947))

(assert (=> b!10970 m!13945))

(assert (=> b!10970 m!13947))

(declare-fun m!13949 () Bool)

(assert (=> b!10970 m!13949))

(assert (=> b!10970 m!13943))

(declare-fun m!13951 () Bool)

(assert (=> b!10970 m!13951))

(declare-fun m!13953 () Bool)

(assert (=> b!10971 m!13953))

(push 1)

(assert (not b_next!3537))

(assert (not b!10966))

(assert (not b_lambda!5659))

(assert b_and!5083)

(assert (not start!2206))

(assert (not b_next!3541))

(assert b_and!5081)

(assert b_and!5077)

(assert (not b_next!3539))

(assert b_and!5079)

(assert (not b_next!3543))

(assert (not b!10971))

(assert (not b!10970))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3537))

(assert b_and!5083)

(assert (not b_next!3541))

(assert b_and!5081)

(assert b_and!5077)

(assert (not b_next!3539))

(assert b_and!5079)

(assert (not b_next!3543))

(check-sat)

(pop 1)

