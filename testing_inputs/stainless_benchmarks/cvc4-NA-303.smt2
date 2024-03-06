; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2326 () Bool)

(assert start!2326)

(declare-fun b_free!1595 () Bool)

(declare-fun b_next!3849 () Bool)

(assert (=> start!2326 (= b_free!1595 (not b_next!3849))))

(declare-fun tp!2566 () Bool)

(declare-fun b_and!5635 () Bool)

(assert (=> start!2326 (= tp!2566 b_and!5635)))

(declare-fun b_free!1597 () Bool)

(declare-fun b_next!3851 () Bool)

(assert (=> start!2326 (= b_free!1597 (not b_next!3851))))

(declare-fun tp!2563 () Bool)

(declare-fun b_and!5637 () Bool)

(assert (=> start!2326 (= tp!2563 b_and!5637)))

(declare-fun b!11600 () Bool)

(declare-fun b_free!1599 () Bool)

(declare-fun b_next!3853 () Bool)

(assert (=> b!11600 (= b_free!1599 (not b_next!3853))))

(declare-fun tp!2564 () Bool)

(declare-fun b_and!5639 () Bool)

(assert (=> b!11600 (= tp!2564 b_and!5639)))

(declare-fun b_free!1601 () Bool)

(declare-fun b_next!3855 () Bool)

(assert (=> b!11600 (= b_free!1601 (not b_next!3855))))

(declare-fun tp!2561 () Bool)

(declare-fun b_and!5641 () Bool)

(assert (=> b!11600 (= tp!2561 b_and!5641)))

(declare-fun b_free!1603 () Bool)

(declare-fun b_next!3857 () Bool)

(assert (=> b!11600 (= b_free!1603 (not b_next!3857))))

(declare-fun tp!2562 () Bool)

(declare-fun b_and!5643 () Bool)

(assert (=> b!11600 (= tp!2562 b_and!5643)))

(declare-fun b!11607 () Bool)

(declare-fun b_free!1605 () Bool)

(declare-fun b_next!3859 () Bool)

(assert (=> b!11607 (= b_free!1605 (not b_next!3859))))

(declare-fun tp!2560 () Bool)

(declare-fun b_and!5645 () Bool)

(assert (=> b!11607 (= tp!2560 b_and!5645)))

(declare-fun b_free!1607 () Bool)

(declare-fun b_next!3861 () Bool)

(assert (=> b!11607 (= b_free!1607 (not b_next!3861))))

(declare-fun tp!2565 () Bool)

(declare-fun b_and!5647 () Bool)

(assert (=> b!11607 (= tp!2565 b_and!5647)))

(declare-fun lambda!3100 () Int)

(declare-fun f!539 () Int)

(declare-fun b!11604 () Bool)

(declare-fun b_next!3863 () Bool)

(assert (=> start!2326 (= b_next!3849 (or (and b!11604 (= lambda!3100 f!539)) b_next!3863))))

(declare-fun b!11606 () Bool)

(assert (=> b!11606 true))

(declare-fun order!257 () Int)

(declare-fun order!259 () Int)

(declare-fun lambda!3101 () Int)

(declare-fun dynLambda!449 (Int Int) Int)

(declare-fun dynLambda!450 (Int Int) Int)

(assert (=> b!11606 (< (dynLambda!449 order!257 f!539) (dynLambda!450 order!259 lambda!3101))))

(assert (=> b!11606 true))

(assert (=> b!11606 true))

(declare-fun b_next!3865 () Bool)

(declare-datatypes () ((Balance!315 (Balance!316 (extraOpen!198 Int) (extraClose!198 Int)))))

(declare-datatypes () ((EqEvidence!244 (EqEvidence!245 (x!6584 Int) (y!639 Int) (evidence!189 Int)))))

(declare-fun thiss!722 () EqEvidence!244)

(assert (=> b!11600 (= b_next!3853 (or (and b!11606 (= lambda!3101 (x!6584 thiss!722))) b_next!3865))))

(declare-fun b_next!3867 () Bool)

(assert (=> b!11600 (= b_next!3855 (or (and b!11606 (= lambda!3101 (y!639 thiss!722))) b_next!3867))))

(declare-datatypes () ((EqProof!116 (EqProof!117 (x!6585 Int) (y!640 Int)))))

(declare-fun thiss!730 () EqProof!116)

(declare-fun b_next!3869 () Bool)

(assert (=> b!11607 (= b_next!3859 (or (and b!11606 (= lambda!3101 (x!6585 thiss!730))) b_next!3869))))

(declare-fun b_next!3871 () Bool)

(assert (=> b!11607 (= b_next!3861 (or (and b!11606 (= lambda!3101 (y!640 thiss!730))) b_next!3871))))

(assert (=> b!11606 true))

(declare-fun lambda!3102 () Int)

(declare-fun order!261 () Int)

(declare-fun dynLambda!451 (Int Int) Int)

(assert (=> b!11606 (< (dynLambda!449 order!257 f!539) (dynLambda!451 order!261 lambda!3102))))

(assert (=> b!11606 true))

(declare-fun proof!207 () Int)

(declare-fun b_next!3873 () Bool)

(assert (=> start!2326 (= b_next!3851 (or (and b!11606 (= lambda!3102 proof!207)) b_next!3873))))

(declare-fun b_next!3875 () Bool)

(assert (=> b!11600 (= b_next!3857 (or (and b!11606 (= lambda!3102 (evidence!189 thiss!722))) b_next!3875))))

(declare-fun bs!2959 () Bool)

(declare-fun b!11603 () Bool)

(assert (= bs!2959 (and b!11603 b!11606)))

(declare-fun lambda!3103 () Int)

(assert (=> bs!2959 (not (= lambda!3103 lambda!3101))))

(assert (=> b!11603 true))

(assert (=> b!11603 (< (dynLambda!449 order!257 f!539) (dynLambda!450 order!259 lambda!3103))))

(assert (=> b!11603 true))

(assert (=> b!11603 true))

(declare-fun b_next!3877 () Bool)

(assert (=> b!11600 (= b_next!3865 (or (and b!11603 (= lambda!3103 (x!6584 thiss!722))) b_next!3877))))

(declare-fun b_next!3879 () Bool)

(assert (=> b!11600 (= b_next!3867 (or (and b!11603 (= lambda!3103 (y!639 thiss!722))) b_next!3879))))

(declare-fun b_next!3881 () Bool)

(assert (=> b!11607 (= b_next!3869 (or (and b!11603 (= lambda!3103 (x!6585 thiss!730))) b_next!3881))))

(declare-fun b_next!3883 () Bool)

(assert (=> b!11607 (= b_next!3871 (or (and b!11603 (= lambda!3103 (y!640 thiss!730))) b_next!3883))))

(declare-fun b!11601 () Bool)

(declare-fun m!14497 () Bool)

(assert (=> b!11601 m!14497))

(declare-fun bs!2960 () Bool)

(assert (= bs!2960 (and b!11601 b!11606)))

(declare-fun lambda!3104 () Int)

(assert (=> bs!2960 (not (= lambda!3104 lambda!3102))))

(declare-fun dynLambda!452 (Int) Bool)

(assert (=> (and start!2326 b!11601 (= (dynLambda!452 lambda!3104) (dynLambda!452 proof!207))) (= lambda!3104 proof!207)))

(assert (=> (and b!11600 b!11601 (= (dynLambda!452 lambda!3104) (dynLambda!452 (evidence!189 thiss!722)))) (= lambda!3104 (evidence!189 thiss!722))))

(declare-fun b_next!3885 () Bool)

(assert (=> start!2326 (= b_next!3873 (or (and b!11601 (= lambda!3104 proof!207)) b_next!3885))))

(declare-fun b_next!3887 () Bool)

(assert (=> b!11600 (= b_next!3875 (or (and b!11601 (= lambda!3104 (evidence!189 thiss!722))) b_next!3887))))

(declare-fun e!6479 () Bool)

(assert (=> b!11600 (= e!6479 (and tp!2564 tp!2561 tp!2562))))

(declare-fun res!4271 () Bool)

(declare-fun e!6477 () Bool)

(assert (=> b!11601 (=> (not res!4271) (not e!6477))))

(assert (=> b!11601 (= res!4271 (= proof!207 lambda!3104))))

(declare-fun res!4270 () Bool)

(assert (=> start!2326 (=> (not res!4270) (not e!6477))))

(declare-datatypes () ((List!277 (Nil!275) (Cons!274 (head!492 Balance!315) (tail!504 List!277)))))

(declare-fun xs!292 () List!277)

(declare-fun isEmpty!205 (List!277) Bool)

(assert (=> start!2326 (= res!4270 (not (isEmpty!205 xs!292)))))

(assert (=> start!2326 e!6477))

(assert (=> start!2326 tp!2566))

(declare-fun inv!384 (EqEvidence!244) Bool)

(assert (=> start!2326 (and (inv!384 thiss!722) e!6479)))

(assert (=> start!2326 true))

(declare-fun e!6478 () Bool)

(declare-fun inv!385 (EqProof!116) Bool)

(assert (=> start!2326 (and (inv!385 thiss!730) e!6478)))

(assert (=> start!2326 tp!2563))

(declare-fun b!11602 () Bool)

(declare-fun res!4272 () Bool)

(assert (=> b!11602 (=> (not res!4272) (not e!6477))))

(declare-fun ys!54 () List!277)

(declare-datatypes () ((ProofOps!254 (ProofOps!255 (prop!260 Bool)))))

(declare-fun thiss!710 () ProofOps!254)

(declare-fun dynLambda!453 (Int Balance!315 Balance!315) Balance!315)

(declare-fun foldRight1!107 (List!277 Int) Balance!315)

(declare-fun append!126 (List!277 List!277) List!277)

(assert (=> b!11602 (= res!4272 (= thiss!710 (ProofOps!255 (= (dynLambda!453 f!539 (foldRight1!107 xs!292 f!539) (foldRight1!107 ys!54 f!539)) (foldRight1!107 (append!126 xs!292 ys!54) f!539)))))))

(declare-fun res!4267 () Bool)

(assert (=> b!11603 (=> (not res!4267) (not e!6477))))

(assert (=> b!11603 (= res!4267 (= thiss!730 (EqProof!117 lambda!3103 lambda!3103)))))

(declare-fun res!4268 () Bool)

(assert (=> b!11604 (=> (not res!4268) (not e!6477))))

(assert (=> b!11604 (= res!4268 (= f!539 lambda!3100))))

(declare-fun b!11605 () Bool)

(declare-fun res!4273 () Bool)

(assert (=> b!11605 (=> (not res!4273) (not e!6477))))

(assert (=> b!11605 (= res!4273 (and (is-Cons!274 xs!292) (is-Nil!275 (tail!504 xs!292))))))

(declare-fun res!4274 () Bool)

(assert (=> b!11606 (=> (not res!4274) (not e!6477))))

(assert (=> b!11606 (= res!4274 (= thiss!722 (EqEvidence!245 lambda!3101 lambda!3101 lambda!3102)))))

(assert (=> b!11607 (= e!6478 (and tp!2560 tp!2565))))

(declare-fun b!11608 () Bool)

(declare-fun res!4269 () Bool)

(assert (=> b!11608 (=> (not res!4269) (not e!6477))))

(assert (=> b!11608 (= res!4269 (not (isEmpty!205 ys!54)))))

(declare-fun b!11609 () Bool)

(assert (=> b!11609 (= e!6477 (not (dynLambda!452 proof!207)))))

(assert (= (and start!2326 res!4270) b!11608))

(assert (= (and b!11608 res!4269) b!11604))

(assert (= (and b!11604 res!4268) b!11602))

(assert (= (and b!11602 res!4272) b!11605))

(assert (= (and b!11605 res!4273) b!11606))

(assert (= (and b!11606 res!4274) b!11603))

(assert (= (and b!11603 res!4267) b!11601))

(assert (= (and b!11601 res!4271) b!11609))

(assert (= start!2326 b!11600))

(assert (= start!2326 b!11607))

(declare-fun b_lambda!6047 () Bool)

(assert (=> (not b_lambda!6047) (not b!11602)))

(declare-fun t!3331 () Bool)

(declare-fun tb!2991 () Bool)

(assert (=> (and start!2326 (= f!539 f!539) t!3331) tb!2991))

(declare-fun result!3043 () Bool)

(assert (=> tb!2991 (= result!3043 true)))

(assert (=> b!11602 t!3331))

(declare-fun b_and!5649 () Bool)

(assert (= b_and!5635 (and (=> t!3331 result!3043) b_and!5649)))

(declare-fun b_lambda!6049 () Bool)

(assert (=> (not b_lambda!6049) (not b!11609)))

(declare-fun t!3333 () Bool)

(declare-fun tb!2993 () Bool)

(assert (=> (and start!2326 (= proof!207 proof!207) t!3333) tb!2993))

(declare-fun result!3045 () Bool)

(assert (=> tb!2993 (= result!3045 true)))

(assert (=> b!11609 t!3333))

(declare-fun b_and!5651 () Bool)

(assert (= b_and!5637 (and (=> t!3333 result!3045) b_and!5651)))

(declare-fun tb!2995 () Bool)

(declare-fun t!3335 () Bool)

(assert (=> (and b!11600 (= (evidence!189 thiss!722) proof!207) t!3335) tb!2995))

(declare-fun result!3047 () Bool)

(assert (=> tb!2995 (= result!3047 true)))

(assert (=> b!11609 t!3335))

(declare-fun b_and!5653 () Bool)

(assert (= b_and!5643 (and (=> t!3335 result!3047) b_and!5653)))

(declare-fun m!14499 () Bool)

(assert (=> start!2326 m!14499))

(declare-fun m!14501 () Bool)

(assert (=> start!2326 m!14501))

(declare-fun m!14503 () Bool)

(assert (=> start!2326 m!14503))

(declare-fun m!14505 () Bool)

(assert (=> b!11602 m!14505))

(declare-fun m!14507 () Bool)

(assert (=> b!11602 m!14507))

(declare-fun m!14509 () Bool)

(assert (=> b!11602 m!14509))

(assert (=> b!11602 m!14507))

(assert (=> b!11602 m!14509))

(declare-fun m!14511 () Bool)

(assert (=> b!11602 m!14511))

(assert (=> b!11602 m!14505))

(declare-fun m!14513 () Bool)

(assert (=> b!11602 m!14513))

(declare-fun m!14515 () Bool)

(assert (=> b!11608 m!14515))

(declare-fun m!14517 () Bool)

(assert (=> b!11609 m!14517))

(push 1)

(assert b_and!5651)

(assert b_and!5647)

(assert b_and!5645)

(assert (not b!11608))

(assert b_and!5649)

(assert (not start!2326))

(assert b_and!5641)

(assert (not b_next!3887))

(assert (not b_next!3863))

(assert (not b!11601))

(assert (not b_next!3879))

(assert b_and!5639)

(assert (not b_next!3883))

(assert (not b_next!3885))

(assert (not b_next!3877))

(assert (not b_lambda!6047))

(assert (not b!11602))

(assert b_and!5653)

(assert (not b_lambda!6049))

(assert (not b_next!3881))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5651)

(assert b_and!5647)

(assert b_and!5645)

(assert b_and!5649)

(assert b_and!5641)

(assert (not b_next!3887))

(assert (not b_next!3863))

(assert (not b_next!3879))

(assert b_and!5639)

(assert (not b_next!3883))

(assert (not b_next!3885))

(assert (not b_next!3877))

(assert b_and!5653)

(assert (not b_next!3881))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6051 () Bool)

(assert (= b_lambda!6047 (or (and b!11604 (= lambda!3100 f!539)) (and start!2326 b_free!1595) b_lambda!6051)))

(declare-fun bs!2961 () Bool)

(declare-fun d!8935 () Bool)

(assert (= bs!2961 (and d!8935 b!11604)))

(declare-fun ++!3 (Balance!315 Balance!315) Balance!315)

(assert (=> bs!2961 (= (dynLambda!453 lambda!3100 (foldRight1!107 xs!292 f!539) (foldRight1!107 ys!54 f!539)) (++!3 (foldRight1!107 xs!292 f!539) (foldRight1!107 ys!54 f!539)))))

(assert (=> bs!2961 m!14507))

(assert (=> bs!2961 m!14509))

(declare-fun m!14519 () Bool)

(assert (=> bs!2961 m!14519))

(assert (=> (and b!11604 (= lambda!3100 f!539) b!11602) d!8935))

(declare-fun b_lambda!6053 () Bool)

(assert (= b_lambda!6049 (or (and b!11606 (= lambda!3102 proof!207)) (and b!11601 (= lambda!3104 proof!207)) (and start!2326 b_free!1597) (and b!11600 b_free!1603 (= (evidence!189 thiss!722) proof!207)) b_lambda!6053)))

(declare-fun bs!2962 () Bool)

(declare-fun d!8937 () Bool)

(assert (= bs!2962 (and d!8937 b!11606)))

(assert (=> bs!2962 (= (dynLambda!452 lambda!3102) (= (foldRight1!107 xs!292 f!539) (head!492 xs!292)))))

(assert (=> bs!2962 m!14507))

(assert (=> (and b!11606 (= lambda!3102 proof!207) b!11609) d!8937))

(declare-fun bs!2963 () Bool)

(declare-fun d!8939 () Bool)

(assert (= bs!2963 (and d!8939 b!11601)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2963 (= (dynLambda!452 lambda!3104) trivial!1)))

(assert (=> (and b!11601 (= lambda!3104 proof!207) b!11609) d!8939))

(push 1)

(assert b_and!5651)

(assert b_and!5647)

(assert b_and!5645)

(assert (not b!11608))

(assert b_and!5649)

(assert (not start!2326))

(assert b_and!5641)

(assert (not b_next!3887))

(assert (not b_next!3863))

(assert (not b!11601))

(assert (not b_next!3879))

(assert (not b_lambda!6051))

(assert b_and!5639)

(assert (not b_lambda!6053))

(assert (not b_next!3883))

(assert (not b_next!3885))

(assert (not b_next!3877))

(assert (not bs!2962))

(assert (not b!11602))

(assert b_and!5653)

(assert (not bs!2961))

(assert (not b_next!3881))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5651)

(assert b_and!5647)

(assert b_and!5645)

(assert b_and!5649)

(assert b_and!5641)

(assert (not b_next!3887))

(assert (not b_next!3863))

(assert (not b_next!3879))

(assert b_and!5639)

(assert (not b_next!3883))

(assert (not b_next!3885))

(assert (not b_next!3877))

(assert b_and!5653)

(assert (not b_next!3881))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8941 () Bool)

(declare-fun c!3407 () Bool)

(assert (=> d!8941 (= c!3407 (and (is-Cons!274 xs!292) (is-Nil!275 (tail!504 xs!292))))))

(declare-fun e!6482 () Balance!315)

(assert (=> d!8941 (= (foldRight1!107 xs!292 f!539) e!6482)))

(declare-fun b!11622 () Bool)

(assert (=> b!11622 (= e!6482 (head!492 xs!292))))

(declare-fun b!11623 () Bool)

(assert (=> b!11623 (= e!6482 (dynLambda!453 f!539 (head!492 xs!292) (foldRight1!107 (tail!504 xs!292) f!539)))))

(assert (= (and d!8941 c!3407) b!11622))

(assert (= (and d!8941 (not c!3407)) b!11623))

(declare-fun b_lambda!6055 () Bool)

(assert (=> (not b_lambda!6055) (not b!11623)))

(declare-fun t!3337 () Bool)

(declare-fun tb!2997 () Bool)

(assert (=> (and start!2326 (= f!539 f!539) t!3337) tb!2997))

(declare-fun result!3049 () Bool)

(assert (=> tb!2997 (= result!3049 true)))

(assert (=> b!11623 t!3337))

(declare-fun b_and!5655 () Bool)

(assert (= b_and!5649 (and (=> t!3337 result!3049) b_and!5655)))

(declare-fun m!14521 () Bool)

(assert (=> b!11623 m!14521))

(assert (=> b!11623 m!14521))

(declare-fun m!14523 () Bool)

(assert (=> b!11623 m!14523))

(assert (=> bs!2962 d!8941))

(declare-fun d!8943 () Bool)

(declare-fun lt!1775 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!8943 (= lt!1775 (min!4 (extraOpen!198 (foldRight1!107 xs!292 f!539)) (extraClose!198 (foldRight1!107 ys!54 f!539))))))

(assert (=> d!8943 (= (++!3 (foldRight1!107 xs!292 f!539) (foldRight1!107 ys!54 f!539)) (Balance!316 (- (+ (extraOpen!198 (foldRight1!107 xs!292 f!539)) (extraOpen!198 (foldRight1!107 ys!54 f!539))) lt!1775) (- (+ (extraClose!198 (foldRight1!107 xs!292 f!539)) (extraClose!198 (foldRight1!107 ys!54 f!539))) lt!1775)))))

(declare-fun bs!2964 () Bool)

(assert (= bs!2964 d!8943))

(declare-fun m!14525 () Bool)

(assert (=> bs!2964 m!14525))

(assert (=> bs!2961 d!8943))

(declare-fun d!8945 () Bool)

(assert (=> d!8945 (= (isEmpty!205 ys!54) (is-Nil!275 ys!54))))

(assert (=> b!11608 d!8945))

(declare-fun d!8947 () Bool)

(assert (=> d!8947 (= (isEmpty!205 xs!292) (is-Nil!275 xs!292))))

(assert (=> start!2326 d!8947))

(declare-fun d!8949 () Bool)

(declare-fun res!4277 () Bool)

(declare-fun e!6485 () Bool)

(assert (=> d!8949 (=> (not res!4277) (not e!6485))))

(declare-fun dynLambda!454 (Int) Balance!315)

(assert (=> d!8949 (= res!4277 (= (dynLambda!454 (x!6584 thiss!722)) (dynLambda!454 (y!639 thiss!722))))))

(assert (=> d!8949 (= (inv!384 thiss!722) e!6485)))

(declare-fun b!11626 () Bool)

(assert (=> b!11626 (= e!6485 (dynLambda!452 (evidence!189 thiss!722)))))

(assert (= (and d!8949 res!4277) b!11626))

(declare-fun b_lambda!6057 () Bool)

(assert (=> (not b_lambda!6057) (not d!8949)))

(declare-fun t!3339 () Bool)

(declare-fun tb!2999 () Bool)

(assert (=> (and b!11600 (= (x!6584 thiss!722) (x!6584 thiss!722)) t!3339) tb!2999))

(declare-fun result!3051 () Bool)

(assert (=> tb!2999 (= result!3051 true)))

(assert (=> d!8949 t!3339))

(declare-fun b_and!5657 () Bool)

(assert (= b_and!5639 (and (=> t!3339 result!3051) b_and!5657)))

(declare-fun t!3341 () Bool)

(declare-fun tb!3001 () Bool)

(assert (=> (and b!11600 (= (y!639 thiss!722) (x!6584 thiss!722)) t!3341) tb!3001))

(declare-fun result!3053 () Bool)

(assert (=> tb!3001 (= result!3053 true)))

(assert (=> d!8949 t!3341))

(declare-fun b_and!5659 () Bool)

(assert (= b_and!5641 (and (=> t!3341 result!3053) b_and!5659)))

(declare-fun tb!3003 () Bool)

(declare-fun t!3343 () Bool)

(assert (=> (and b!11607 (= (x!6585 thiss!730) (x!6584 thiss!722)) t!3343) tb!3003))

(declare-fun result!3055 () Bool)

(assert (=> tb!3003 (= result!3055 true)))

(assert (=> d!8949 t!3343))

(declare-fun b_and!5661 () Bool)

(assert (= b_and!5645 (and (=> t!3343 result!3055) b_and!5661)))

(declare-fun tb!3005 () Bool)

(declare-fun t!3345 () Bool)

(assert (=> (and b!11607 (= (y!640 thiss!730) (x!6584 thiss!722)) t!3345) tb!3005))

(declare-fun result!3057 () Bool)

(assert (=> tb!3005 (= result!3057 true)))

(assert (=> d!8949 t!3345))

(declare-fun b_and!5663 () Bool)

(assert (= b_and!5647 (and (=> t!3345 result!3057) b_and!5663)))

(declare-fun b_lambda!6059 () Bool)

(assert (=> (not b_lambda!6059) (not d!8949)))

(declare-fun t!3347 () Bool)

(declare-fun tb!3007 () Bool)

(assert (=> (and b!11600 (= (x!6584 thiss!722) (y!639 thiss!722)) t!3347) tb!3007))

(declare-fun result!3059 () Bool)

(assert (=> tb!3007 (= result!3059 true)))

(assert (=> d!8949 t!3347))

(declare-fun b_and!5665 () Bool)

(assert (= b_and!5657 (and (=> t!3347 result!3059) b_and!5665)))

(declare-fun t!3349 () Bool)

(declare-fun tb!3009 () Bool)

(assert (=> (and b!11600 (= (y!639 thiss!722) (y!639 thiss!722)) t!3349) tb!3009))

(declare-fun result!3061 () Bool)

(assert (=> tb!3009 (= result!3061 true)))

(assert (=> d!8949 t!3349))

(declare-fun b_and!5667 () Bool)

(assert (= b_and!5659 (and (=> t!3349 result!3061) b_and!5667)))

(declare-fun tb!3011 () Bool)

(declare-fun t!3351 () Bool)

(assert (=> (and b!11607 (= (x!6585 thiss!730) (y!639 thiss!722)) t!3351) tb!3011))

(declare-fun result!3063 () Bool)

(assert (=> tb!3011 (= result!3063 true)))

(assert (=> d!8949 t!3351))

(declare-fun b_and!5669 () Bool)

(assert (= b_and!5661 (and (=> t!3351 result!3063) b_and!5669)))

(declare-fun tb!3013 () Bool)

(declare-fun t!3353 () Bool)

(assert (=> (and b!11607 (= (y!640 thiss!730) (y!639 thiss!722)) t!3353) tb!3013))

(declare-fun result!3065 () Bool)

(assert (=> tb!3013 (= result!3065 true)))

(assert (=> d!8949 t!3353))

(declare-fun b_and!5671 () Bool)

(assert (= b_and!5663 (and (=> t!3353 result!3065) b_and!5671)))

(declare-fun b_lambda!6061 () Bool)

(assert (=> (not b_lambda!6061) (not b!11626)))

(declare-fun tb!3015 () Bool)

(declare-fun t!3355 () Bool)

(assert (=> (and start!2326 (= proof!207 (evidence!189 thiss!722)) t!3355) tb!3015))

(declare-fun result!3067 () Bool)

(assert (=> tb!3015 (= result!3067 true)))

(assert (=> b!11626 t!3355))

(declare-fun b_and!5673 () Bool)

(assert (= b_and!5651 (and (=> t!3355 result!3067) b_and!5673)))

(declare-fun t!3357 () Bool)

(declare-fun tb!3017 () Bool)

(assert (=> (and b!11600 (= (evidence!189 thiss!722) (evidence!189 thiss!722)) t!3357) tb!3017))

(declare-fun result!3069 () Bool)

(assert (=> tb!3017 (= result!3069 true)))

(assert (=> b!11626 t!3357))

(declare-fun b_and!5675 () Bool)

(assert (= b_and!5653 (and (=> t!3357 result!3069) b_and!5675)))

(declare-fun m!14527 () Bool)

(assert (=> d!8949 m!14527))

(declare-fun m!14529 () Bool)

(assert (=> d!8949 m!14529))

(declare-fun m!14531 () Bool)

(assert (=> b!11626 m!14531))

(assert (=> start!2326 d!8949))

(declare-fun d!8951 () Bool)

(assert (=> d!8951 (= (inv!385 thiss!730) (= (dynLambda!454 (x!6585 thiss!730)) (dynLambda!454 (y!640 thiss!730))))))

(declare-fun b_lambda!6063 () Bool)

(assert (=> (not b_lambda!6063) (not d!8951)))

(declare-fun t!3359 () Bool)

(declare-fun tb!3019 () Bool)

(assert (=> (and b!11600 (= (x!6584 thiss!722) (x!6585 thiss!730)) t!3359) tb!3019))

(declare-fun result!3071 () Bool)

(assert (=> tb!3019 (= result!3071 true)))

(assert (=> d!8951 t!3359))

(declare-fun b_and!5677 () Bool)

(assert (= b_and!5665 (and (=> t!3359 result!3071) b_and!5677)))

(declare-fun tb!3021 () Bool)

(declare-fun t!3361 () Bool)

(assert (=> (and b!11600 (= (y!639 thiss!722) (x!6585 thiss!730)) t!3361) tb!3021))

(declare-fun result!3073 () Bool)

(assert (=> tb!3021 (= result!3073 true)))

(assert (=> d!8951 t!3361))

(declare-fun b_and!5679 () Bool)

(assert (= b_and!5667 (and (=> t!3361 result!3073) b_and!5679)))

(declare-fun t!3363 () Bool)

(declare-fun tb!3023 () Bool)

(assert (=> (and b!11607 (= (x!6585 thiss!730) (x!6585 thiss!730)) t!3363) tb!3023))

(declare-fun result!3075 () Bool)

(assert (=> tb!3023 (= result!3075 true)))

(assert (=> d!8951 t!3363))

(declare-fun b_and!5681 () Bool)

(assert (= b_and!5669 (and (=> t!3363 result!3075) b_and!5681)))

(declare-fun t!3365 () Bool)

(declare-fun tb!3025 () Bool)

(assert (=> (and b!11607 (= (y!640 thiss!730) (x!6585 thiss!730)) t!3365) tb!3025))

(declare-fun result!3077 () Bool)

(assert (=> tb!3025 (= result!3077 true)))

(assert (=> d!8951 t!3365))

(declare-fun b_and!5683 () Bool)

(assert (= b_and!5671 (and (=> t!3365 result!3077) b_and!5683)))

(declare-fun b_lambda!6065 () Bool)

(assert (=> (not b_lambda!6065) (not d!8951)))

(declare-fun tb!3027 () Bool)

(declare-fun t!3367 () Bool)

(assert (=> (and b!11600 (= (x!6584 thiss!722) (y!640 thiss!730)) t!3367) tb!3027))

(declare-fun result!3079 () Bool)

(assert (=> tb!3027 (= result!3079 true)))

(assert (=> d!8951 t!3367))

(declare-fun b_and!5685 () Bool)

(assert (= b_and!5677 (and (=> t!3367 result!3079) b_and!5685)))

(declare-fun tb!3029 () Bool)

(declare-fun t!3369 () Bool)

(assert (=> (and b!11600 (= (y!639 thiss!722) (y!640 thiss!730)) t!3369) tb!3029))

(declare-fun result!3081 () Bool)

(assert (=> tb!3029 (= result!3081 true)))

(assert (=> d!8951 t!3369))

(declare-fun b_and!5687 () Bool)

(assert (= b_and!5679 (and (=> t!3369 result!3081) b_and!5687)))

(declare-fun t!3371 () Bool)

(declare-fun tb!3031 () Bool)

(assert (=> (and b!11607 (= (x!6585 thiss!730) (y!640 thiss!730)) t!3371) tb!3031))

(declare-fun result!3083 () Bool)

(assert (=> tb!3031 (= result!3083 true)))

(assert (=> d!8951 t!3371))

(declare-fun b_and!5689 () Bool)

(assert (= b_and!5681 (and (=> t!3371 result!3083) b_and!5689)))

(declare-fun t!3373 () Bool)

(declare-fun tb!3033 () Bool)

(assert (=> (and b!11607 (= (y!640 thiss!730) (y!640 thiss!730)) t!3373) tb!3033))

(declare-fun result!3085 () Bool)

(assert (=> tb!3033 (= result!3085 true)))

(assert (=> d!8951 t!3373))

(declare-fun b_and!5691 () Bool)

(assert (= b_and!5683 (and (=> t!3373 result!3085) b_and!5691)))

(declare-fun m!14533 () Bool)

(assert (=> d!8951 m!14533))

(declare-fun m!14535 () Bool)

(assert (=> d!8951 m!14535))

(assert (=> start!2326 d!8951))

(declare-fun d!8953 () Bool)

(assert (=> d!8953 (= trivial!1 true)))

(assert (=> b!11601 d!8953))

(assert (=> b!11602 d!8941))

(declare-fun d!8955 () Bool)

(declare-fun c!3408 () Bool)

(assert (=> d!8955 (= c!3408 (and (is-Cons!274 ys!54) (is-Nil!275 (tail!504 ys!54))))))

(declare-fun e!6486 () Balance!315)

(assert (=> d!8955 (= (foldRight1!107 ys!54 f!539) e!6486)))

(declare-fun b!11627 () Bool)

(assert (=> b!11627 (= e!6486 (head!492 ys!54))))

(declare-fun b!11628 () Bool)

(assert (=> b!11628 (= e!6486 (dynLambda!453 f!539 (head!492 ys!54) (foldRight1!107 (tail!504 ys!54) f!539)))))

(assert (= (and d!8955 c!3408) b!11627))

(assert (= (and d!8955 (not c!3408)) b!11628))

(declare-fun b_lambda!6067 () Bool)

(assert (=> (not b_lambda!6067) (not b!11628)))

(declare-fun t!3375 () Bool)

(declare-fun tb!3035 () Bool)

(assert (=> (and start!2326 (= f!539 f!539) t!3375) tb!3035))

(declare-fun result!3087 () Bool)

(assert (=> tb!3035 (= result!3087 true)))

(assert (=> b!11628 t!3375))

(declare-fun b_and!5693 () Bool)

(assert (= b_and!5655 (and (=> t!3375 result!3087) b_and!5693)))

(declare-fun m!14537 () Bool)

(assert (=> b!11628 m!14537))

(assert (=> b!11628 m!14537))

(declare-fun m!14539 () Bool)

(assert (=> b!11628 m!14539))

(assert (=> b!11602 d!8955))

(declare-fun d!8957 () Bool)

(declare-fun c!3409 () Bool)

(assert (=> d!8957 (= c!3409 (and (is-Cons!274 (append!126 xs!292 ys!54)) (is-Nil!275 (tail!504 (append!126 xs!292 ys!54)))))))

(declare-fun e!6487 () Balance!315)

(assert (=> d!8957 (= (foldRight1!107 (append!126 xs!292 ys!54) f!539) e!6487)))

(declare-fun b!11629 () Bool)

(assert (=> b!11629 (= e!6487 (head!492 (append!126 xs!292 ys!54)))))

(declare-fun b!11630 () Bool)

(assert (=> b!11630 (= e!6487 (dynLambda!453 f!539 (head!492 (append!126 xs!292 ys!54)) (foldRight1!107 (tail!504 (append!126 xs!292 ys!54)) f!539)))))

(assert (= (and d!8957 c!3409) b!11629))

(assert (= (and d!8957 (not c!3409)) b!11630))

(declare-fun b_lambda!6069 () Bool)

(assert (=> (not b_lambda!6069) (not b!11630)))

(declare-fun t!3377 () Bool)

(declare-fun tb!3037 () Bool)

(assert (=> (and start!2326 (= f!539 f!539) t!3377) tb!3037))

(declare-fun result!3089 () Bool)

(assert (=> tb!3037 (= result!3089 true)))

(assert (=> b!11630 t!3377))

(declare-fun b_and!5695 () Bool)

(assert (= b_and!5693 (and (=> t!3377 result!3089) b_and!5695)))

(declare-fun m!14541 () Bool)

(assert (=> b!11630 m!14541))

(assert (=> b!11630 m!14541))

(declare-fun m!14543 () Bool)

(assert (=> b!11630 m!14543))

(assert (=> b!11602 d!8957))

(declare-fun d!8959 () Bool)

(declare-fun c!3412 () Bool)

(assert (=> d!8959 (= c!3412 (is-Nil!275 xs!292))))

(declare-fun e!6490 () List!277)

(assert (=> d!8959 (= (append!126 xs!292 ys!54) e!6490)))

(declare-fun b!11635 () Bool)

(assert (=> b!11635 (= e!6490 ys!54)))

(declare-fun b!11636 () Bool)

(assert (=> b!11636 (= e!6490 (Cons!274 (head!492 xs!292) (append!126 (tail!504 xs!292) ys!54)))))

(assert (= (and d!8959 c!3412) b!11635))

(assert (= (and d!8959 (not c!3412)) b!11636))

(declare-fun m!14545 () Bool)

(assert (=> b!11636 m!14545))

(assert (=> b!11602 d!8959))

(declare-fun b_lambda!6071 () Bool)

(assert (= b_lambda!6061 (or (and b!11606 (= lambda!3102 (evidence!189 thiss!722))) (and b!11601 (= lambda!3104 (evidence!189 thiss!722))) (and start!2326 b_free!1597 (= proof!207 (evidence!189 thiss!722))) (and b!11600 b_free!1603) b_lambda!6071)))

(declare-fun bs!2965 () Bool)

(declare-fun d!8961 () Bool)

(assert (= bs!2965 (and d!8961 b!11606)))

(assert (=> bs!2965 (= (dynLambda!452 lambda!3102) (= (foldRight1!107 xs!292 f!539) (head!492 xs!292)))))

(assert (=> bs!2965 m!14507))

(assert (=> (and b!11606 (= lambda!3102 (evidence!189 thiss!722)) b!11626) d!8961))

(declare-fun bs!2966 () Bool)

(declare-fun d!8963 () Bool)

(assert (= bs!2966 (and d!8963 b!11601)))

(assert (=> bs!2966 (= (dynLambda!452 lambda!3104) trivial!1)))

(assert (=> (and b!11601 (= lambda!3104 (evidence!189 thiss!722)) b!11626) d!8963))

(declare-fun b_lambda!6073 () Bool)

(assert (= b_lambda!6057 (or (and b!11606 (= lambda!3101 (x!6584 thiss!722))) (and b!11607 b_free!1605 (= (x!6585 thiss!730) (x!6584 thiss!722))) (and b!11607 b_free!1607 (= (y!640 thiss!730) (x!6584 thiss!722))) (and b!11600 b_free!1601 (= (y!639 thiss!722) (x!6584 thiss!722))) (and b!11603 (= lambda!3103 (x!6584 thiss!722))) (and b!11600 b_free!1599) b_lambda!6073)))

(declare-fun bs!2967 () Bool)

(declare-fun d!8965 () Bool)

(assert (= bs!2967 (and d!8965 b!11606)))

(assert (=> bs!2967 (= (dynLambda!454 lambda!3101) (dynLambda!453 f!539 (foldRight1!107 xs!292 f!539) (foldRight1!107 ys!54 f!539)))))

(declare-fun b_lambda!6087 () Bool)

(assert (=> (not b_lambda!6087) (not bs!2967)))

(assert (=> bs!2967 t!3331))

(declare-fun b_and!5697 () Bool)

(assert (= b_and!5695 (and (=> t!3331 result!3043) b_and!5697)))

(assert (=> bs!2967 m!14507))

(assert (=> bs!2967 m!14509))

(assert (=> bs!2967 m!14507))

(assert (=> bs!2967 m!14509))

(assert (=> bs!2967 m!14511))

(assert (=> (and b!11606 (= lambda!3101 (x!6584 thiss!722)) d!8949) d!8965))

(declare-fun bs!2968 () Bool)

(declare-fun d!8967 () Bool)

(assert (= bs!2968 (and d!8967 b!11603)))

(assert (=> bs!2968 (= (dynLambda!454 lambda!3103) (dynLambda!453 f!539 (head!492 xs!292) (foldRight1!107 ys!54 f!539)))))

(declare-fun b_lambda!6089 () Bool)

(assert (=> (not b_lambda!6089) (not bs!2968)))

(declare-fun t!3379 () Bool)

(declare-fun tb!3039 () Bool)

(assert (=> (and start!2326 (= f!539 f!539) t!3379) tb!3039))

(declare-fun result!3091 () Bool)

(assert (=> tb!3039 (= result!3091 true)))

(assert (=> bs!2968 t!3379))

(declare-fun b_and!5699 () Bool)

(assert (= b_and!5697 (and (=> t!3379 result!3091) b_and!5699)))

(assert (=> bs!2968 m!14509))

(assert (=> bs!2968 m!14509))

(declare-fun m!14547 () Bool)

(assert (=> bs!2968 m!14547))

(assert (=> (and b!11603 (= lambda!3103 (x!6584 thiss!722)) d!8949) d!8967))

(declare-fun b_lambda!6075 () Bool)

(assert (= b_lambda!6063 (or (and b!11600 b_free!1599 (= (x!6584 thiss!722) (x!6585 thiss!730))) (and b!11607 b_free!1605) (and b!11606 (= lambda!3101 (x!6585 thiss!730))) (and b!11607 b_free!1607 (= (y!640 thiss!730) (x!6585 thiss!730))) (and b!11600 b_free!1601 (= (y!639 thiss!722) (x!6585 thiss!730))) (and b!11603 (= lambda!3103 (x!6585 thiss!730))) b_lambda!6075)))

(declare-fun bs!2969 () Bool)

(declare-fun d!8969 () Bool)

(assert (= bs!2969 (and d!8969 b!11603)))

(assert (=> bs!2969 (= (dynLambda!454 lambda!3103) (dynLambda!453 f!539 (head!492 xs!292) (foldRight1!107 ys!54 f!539)))))

(declare-fun b_lambda!6091 () Bool)

(assert (=> (not b_lambda!6091) (not bs!2969)))

(assert (=> bs!2969 t!3379))

(declare-fun b_and!5701 () Bool)

(assert (= b_and!5699 (and (=> t!3379 result!3091) b_and!5701)))

(assert (=> bs!2969 m!14509))

(assert (=> bs!2969 m!14509))

(assert (=> bs!2969 m!14547))

(assert (=> (and b!11603 (= lambda!3103 (x!6585 thiss!730)) d!8951) d!8969))

(declare-fun bs!2970 () Bool)

(declare-fun d!8971 () Bool)

(assert (= bs!2970 (and d!8971 b!11606)))

(assert (=> bs!2970 (= (dynLambda!454 lambda!3101) (dynLambda!453 f!539 (foldRight1!107 xs!292 f!539) (foldRight1!107 ys!54 f!539)))))

(declare-fun b_lambda!6093 () Bool)

(assert (=> (not b_lambda!6093) (not bs!2970)))

(assert (=> bs!2970 t!3331))

(declare-fun b_and!5703 () Bool)

(assert (= b_and!5701 (and (=> t!3331 result!3043) b_and!5703)))

(assert (=> bs!2970 m!14507))

(assert (=> bs!2970 m!14509))

(assert (=> bs!2970 m!14507))

(assert (=> bs!2970 m!14509))

(assert (=> bs!2970 m!14511))

(assert (=> (and b!11606 (= lambda!3101 (x!6585 thiss!730)) d!8951) d!8971))

(declare-fun b_lambda!6077 () Bool)

(assert (= b_lambda!6069 (or (and b!11604 (= lambda!3100 f!539)) (and start!2326 b_free!1595) b_lambda!6077)))

(declare-fun bs!2971 () Bool)

(declare-fun d!8973 () Bool)

(assert (= bs!2971 (and d!8973 b!11604)))

(assert (=> bs!2971 (= (dynLambda!453 lambda!3100 (head!492 (append!126 xs!292 ys!54)) (foldRight1!107 (tail!504 (append!126 xs!292 ys!54)) f!539)) (++!3 (head!492 (append!126 xs!292 ys!54)) (foldRight1!107 (tail!504 (append!126 xs!292 ys!54)) f!539)))))

(assert (=> bs!2971 m!14541))

(declare-fun m!14549 () Bool)

(assert (=> bs!2971 m!14549))

(assert (=> (and b!11604 (= lambda!3100 f!539) b!11630) d!8973))

(declare-fun b_lambda!6079 () Bool)

(assert (= b_lambda!6067 (or (and b!11604 (= lambda!3100 f!539)) (and start!2326 b_free!1595) b_lambda!6079)))

(declare-fun bs!2972 () Bool)

(declare-fun d!8975 () Bool)

(assert (= bs!2972 (and d!8975 b!11604)))

(assert (=> bs!2972 (= (dynLambda!453 lambda!3100 (head!492 ys!54) (foldRight1!107 (tail!504 ys!54) f!539)) (++!3 (head!492 ys!54) (foldRight1!107 (tail!504 ys!54) f!539)))))

(assert (=> bs!2972 m!14537))

(declare-fun m!14551 () Bool)

(assert (=> bs!2972 m!14551))

(assert (=> (and b!11604 (= lambda!3100 f!539) b!11628) d!8975))

(declare-fun b_lambda!6081 () Bool)

(assert (= b_lambda!6059 (or (and b!11600 b_free!1599 (= (x!6584 thiss!722) (y!639 thiss!722))) (and b!11603 (= lambda!3103 (y!639 thiss!722))) (and b!11600 b_free!1601) (and b!11607 b_free!1605 (= (x!6585 thiss!730) (y!639 thiss!722))) (and b!11607 b_free!1607 (= (y!640 thiss!730) (y!639 thiss!722))) (and b!11606 (= lambda!3101 (y!639 thiss!722))) b_lambda!6081)))

(declare-fun bs!2973 () Bool)

(declare-fun d!8977 () Bool)

(assert (= bs!2973 (and d!8977 b!11603)))

(assert (=> bs!2973 (= (dynLambda!454 lambda!3103) (dynLambda!453 f!539 (head!492 xs!292) (foldRight1!107 ys!54 f!539)))))

(declare-fun b_lambda!6095 () Bool)

(assert (=> (not b_lambda!6095) (not bs!2973)))

(assert (=> bs!2973 t!3379))

(declare-fun b_and!5705 () Bool)

(assert (= b_and!5703 (and (=> t!3379 result!3091) b_and!5705)))

(assert (=> bs!2973 m!14509))

(assert (=> bs!2973 m!14509))

(assert (=> bs!2973 m!14547))

(assert (=> (and b!11603 (= lambda!3103 (y!639 thiss!722)) d!8949) d!8977))

(declare-fun bs!2974 () Bool)

(declare-fun d!8979 () Bool)

(assert (= bs!2974 (and d!8979 b!11606)))

(assert (=> bs!2974 (= (dynLambda!454 lambda!3101) (dynLambda!453 f!539 (foldRight1!107 xs!292 f!539) (foldRight1!107 ys!54 f!539)))))

(declare-fun b_lambda!6097 () Bool)

(assert (=> (not b_lambda!6097) (not bs!2974)))

(assert (=> bs!2974 t!3331))

(declare-fun b_and!5707 () Bool)

(assert (= b_and!5705 (and (=> t!3331 result!3043) b_and!5707)))

(assert (=> bs!2974 m!14507))

(assert (=> bs!2974 m!14509))

(assert (=> bs!2974 m!14507))

(assert (=> bs!2974 m!14509))

(assert (=> bs!2974 m!14511))

(assert (=> (and b!11606 (= lambda!3101 (y!639 thiss!722)) d!8949) d!8979))

(declare-fun b_lambda!6083 () Bool)

(assert (= b_lambda!6065 (or (and b!11607 b_free!1607) (and b!11607 b_free!1605 (= (x!6585 thiss!730) (y!640 thiss!730))) (and b!11600 b_free!1599 (= (x!6584 thiss!722) (y!640 thiss!730))) (and b!11603 (= lambda!3103 (y!640 thiss!730))) (and b!11606 (= lambda!3101 (y!640 thiss!730))) (and b!11600 b_free!1601 (= (y!639 thiss!722) (y!640 thiss!730))) b_lambda!6083)))

(declare-fun bs!2975 () Bool)

(declare-fun d!8981 () Bool)

(assert (= bs!2975 (and d!8981 b!11603)))

(assert (=> bs!2975 (= (dynLambda!454 lambda!3103) (dynLambda!453 f!539 (head!492 xs!292) (foldRight1!107 ys!54 f!539)))))

(declare-fun b_lambda!6099 () Bool)

(assert (=> (not b_lambda!6099) (not bs!2975)))

(assert (=> bs!2975 t!3379))

(declare-fun b_and!5709 () Bool)

(assert (= b_and!5707 (and (=> t!3379 result!3091) b_and!5709)))

(assert (=> bs!2975 m!14509))

(assert (=> bs!2975 m!14509))

(assert (=> bs!2975 m!14547))

(assert (=> (and b!11603 (= lambda!3103 (y!640 thiss!730)) d!8951) d!8981))

(declare-fun bs!2976 () Bool)

(declare-fun d!8983 () Bool)

(assert (= bs!2976 (and d!8983 b!11606)))

(assert (=> bs!2976 (= (dynLambda!454 lambda!3101) (dynLambda!453 f!539 (foldRight1!107 xs!292 f!539) (foldRight1!107 ys!54 f!539)))))

(declare-fun b_lambda!6101 () Bool)

(assert (=> (not b_lambda!6101) (not bs!2976)))

(assert (=> bs!2976 t!3331))

(declare-fun b_and!5711 () Bool)

(assert (= b_and!5709 (and (=> t!3331 result!3043) b_and!5711)))

(assert (=> bs!2976 m!14507))

(assert (=> bs!2976 m!14509))

(assert (=> bs!2976 m!14507))

(assert (=> bs!2976 m!14509))

(assert (=> bs!2976 m!14511))

(assert (=> (and b!11606 (= lambda!3101 (y!640 thiss!730)) d!8951) d!8983))

(declare-fun b_lambda!6085 () Bool)

(assert (= b_lambda!6055 (or (and b!11604 (= lambda!3100 f!539)) (and start!2326 b_free!1595) b_lambda!6085)))

(declare-fun bs!2977 () Bool)

(declare-fun d!8985 () Bool)

(assert (= bs!2977 (and d!8985 b!11604)))

(assert (=> bs!2977 (= (dynLambda!453 lambda!3100 (head!492 xs!292) (foldRight1!107 (tail!504 xs!292) f!539)) (++!3 (head!492 xs!292) (foldRight1!107 (tail!504 xs!292) f!539)))))

(assert (=> bs!2977 m!14521))

(declare-fun m!14553 () Bool)

(assert (=> bs!2977 m!14553))

(assert (=> (and b!11604 (= lambda!3100 f!539) b!11623) d!8985))

(push 1)

(assert (not b_lambda!6099))

(assert b_and!5687)

(assert b_and!5691)

(assert (not bs!2969))

(assert (not b_lambda!6101))

(assert (not b_lambda!6075))

(assert b_and!5673)

(assert (not b!11630))

(assert b_and!5675)

(assert (not bs!2975))

(assert (not bs!2971))

(assert (not b_next!3887))

(assert (not bs!2967))

(assert (not b_lambda!6071))

(assert (not b_next!3863))

(assert (not bs!2976))

(assert (not b_next!3879))

(assert (not b_lambda!6091))

(assert (not bs!2968))

(assert (not b_lambda!6051))

(assert (not bs!2973))

(assert b_and!5711)

(assert (not bs!2974))

(assert (not b_lambda!6073))

(assert (not d!8943))

(assert (not bs!2972))

(assert (not b_lambda!6077))

(assert (not b_lambda!6089))

(assert (not b_lambda!6053))

(assert (not bs!2970))

(assert (not b!11623))

(assert (not b_lambda!6083))

(assert (not b_lambda!6097))

(assert (not bs!2965))

(assert (not b_lambda!6085))

(assert (not b_next!3883))

(assert (not b_lambda!6095))

(assert b_and!5689)

(assert b_and!5685)

(assert (not b_next!3885))

(assert (not b_next!3877))

(assert (not b_lambda!6081))

(assert (not bs!2977))

(assert (not b!11636))

(assert (not b_lambda!6079))

(assert (not b_lambda!6093))

(assert (not b!11628))

(assert (not b_next!3881))

(assert (not b_lambda!6087))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5687)

(assert b_and!5691)

(assert b_and!5673)

(assert b_and!5675)

(assert (not b_next!3887))

(assert (not b_next!3863))

(assert (not b_next!3879))

(assert b_and!5711)

(assert (not b_next!3883))

(assert b_and!5689)

(assert b_and!5685)

(assert (not b_next!3885))

(assert (not b_next!3877))

(assert (not b_next!3881))

(check-sat)

(pop 1)

