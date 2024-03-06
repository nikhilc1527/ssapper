; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2248 () Bool)

(assert start!2248)

(declare-fun b!11200 () Bool)

(declare-fun b_free!1511 () Bool)

(declare-fun b_next!3637 () Bool)

(assert (=> b!11200 (= b_free!1511 (not b_next!3637))))

(declare-fun tp!2436 () Bool)

(declare-fun b_and!5279 () Bool)

(assert (=> b!11200 (= tp!2436 b_and!5279)))

(declare-fun b_free!1513 () Bool)

(declare-fun b_next!3639 () Bool)

(assert (=> b!11200 (= b_free!1513 (not b_next!3639))))

(declare-fun tp!2438 () Bool)

(declare-fun b_and!5281 () Bool)

(assert (=> b!11200 (= tp!2438 b_and!5281)))

(declare-fun b_free!1515 () Bool)

(declare-fun b_next!3641 () Bool)

(assert (=> b!11200 (= b_free!1515 (not b_next!3641))))

(declare-fun tp!2434 () Bool)

(declare-fun b_and!5283 () Bool)

(assert (=> b!11200 (= tp!2434 b_and!5283)))

(declare-fun b_free!1517 () Bool)

(declare-fun b_next!3643 () Bool)

(assert (=> start!2248 (= b_free!1517 (not b_next!3643))))

(declare-fun tp!2437 () Bool)

(declare-fun b_and!5285 () Bool)

(assert (=> start!2248 (= tp!2437 b_and!5285)))

(declare-fun b_free!1519 () Bool)

(declare-fun b_next!3645 () Bool)

(assert (=> start!2248 (= b_free!1519 (not b_next!3645))))

(declare-fun tp!2439 () Bool)

(declare-fun b_and!5287 () Bool)

(assert (=> start!2248 (= tp!2439 b_and!5287)))

(declare-fun b!11206 () Bool)

(declare-fun b_free!1521 () Bool)

(declare-fun b_next!3647 () Bool)

(assert (=> b!11206 (= b_free!1521 (not b_next!3647))))

(declare-fun tp!2435 () Bool)

(declare-fun b_and!5289 () Bool)

(assert (=> b!11206 (= tp!2435 b_and!5289)))

(declare-fun b_free!1523 () Bool)

(declare-fun b_next!3649 () Bool)

(assert (=> b!11206 (= b_free!1523 (not b_next!3649))))

(declare-fun tp!2440 () Bool)

(declare-fun b_and!5291 () Bool)

(assert (=> b!11206 (= tp!2440 b_and!5291)))

(declare-fun f!539 () Int)

(declare-fun b!11199 () Bool)

(declare-fun lambda!2984 () Int)

(declare-fun b_next!3651 () Bool)

(assert (=> start!2248 (= b_next!3643 (or (and b!11199 (= lambda!2984 f!539)) b_next!3651))))

(declare-fun b_next!3653 () Bool)

(declare-fun f!572 () Int)

(assert (=> start!2248 (= b_next!3645 (or (and b!11199 (= lambda!2984 f!572)) b_next!3653))))

(declare-fun b!11202 () Bool)

(assert (=> b!11202 true))

(declare-fun lambda!2985 () Int)

(declare-fun order!207 () Int)

(declare-fun order!209 () Int)

(declare-fun dynLambda!402 (Int Int) Int)

(declare-fun dynLambda!403 (Int Int) Int)

(assert (=> b!11202 (< (dynLambda!402 order!207 f!539) (dynLambda!403 order!209 lambda!2985))))

(assert (=> b!11202 true))

(assert (=> b!11202 true))

(declare-datatypes () ((Balance!299 (Balance!300 (extraOpen!190 Int) (extraClose!190 Int)))))

(declare-datatypes () ((EqEvidence!230 (EqEvidence!231 (x!6324 Int) (y!629 Int) (evidence!182 Int)))))

(declare-fun thiss!747 () EqEvidence!230)

(declare-fun b_next!3655 () Bool)

(assert (=> b!11200 (= b_next!3637 (or (and b!11202 (= lambda!2985 (x!6324 thiss!747))) b_next!3655))))

(declare-fun b_next!3657 () Bool)

(assert (=> b!11200 (= b_next!3639 (or (and b!11202 (= lambda!2985 (y!629 thiss!747))) b_next!3657))))

(declare-fun b_next!3659 () Bool)

(declare-datatypes () ((EqProof!110 (EqProof!111 (x!6325 Int) (y!630 Int)))))

(declare-fun thiss!757 () EqProof!110)

(assert (=> b!11206 (= b_next!3647 (or (and b!11202 (= lambda!2985 (x!6325 thiss!757))) b_next!3659))))

(declare-fun b_next!3661 () Bool)

(assert (=> b!11206 (= b_next!3649 (or (and b!11202 (= lambda!2985 (y!630 thiss!757))) b_next!3661))))

(assert (=> b!11202 true))

(declare-fun lambda!2987 () Int)

(declare-fun order!211 () Int)

(declare-fun dynLambda!404 (Int Int) Int)

(assert (=> b!11202 (< (dynLambda!402 order!207 f!539) (dynLambda!404 order!211 lambda!2987))))

(assert (=> b!11202 true))

(assert (=> b!11202 true))

(declare-fun lambda!2986 () Int)

(declare-fun order!213 () Int)

(declare-fun dynLambda!405 (Int Int) Int)

(assert (=> b!11202 (< (dynLambda!402 order!207 f!539) (dynLambda!405 order!213 lambda!2986))))

(assert (=> b!11202 true))

(declare-fun b_next!3663 () Bool)

(assert (=> b!11200 (= b_next!3641 (or (and b!11202 (= lambda!2986 (evidence!182 thiss!747))) b_next!3663))))

(declare-fun bs!2883 () Bool)

(declare-fun b!11203 () Bool)

(assert (= bs!2883 (and b!11203 b!11202)))

(declare-fun lambda!2988 () Int)

(assert (=> bs!2883 (not (= lambda!2988 lambda!2985))))

(assert (=> b!11203 true))

(assert (=> b!11203 (< (dynLambda!402 order!207 f!539) (dynLambda!403 order!209 lambda!2988))))

(assert (=> b!11203 true))

(assert (=> b!11203 true))

(declare-fun b_next!3665 () Bool)

(assert (=> b!11200 (= b_next!3655 (or (and b!11203 (= lambda!2988 (x!6324 thiss!747))) b_next!3665))))

(declare-fun b_next!3667 () Bool)

(assert (=> b!11200 (= b_next!3657 (or (and b!11203 (= lambda!2988 (y!629 thiss!747))) b_next!3667))))

(declare-fun b_next!3669 () Bool)

(assert (=> b!11206 (= b_next!3659 (or (and b!11203 (= lambda!2988 (x!6325 thiss!757))) b_next!3669))))

(declare-fun b_next!3671 () Bool)

(assert (=> b!11206 (= b_next!3661 (or (and b!11203 (= lambda!2988 (y!630 thiss!757))) b_next!3671))))

(declare-fun b!11197 () Bool)

(declare-fun res!4067 () Bool)

(declare-fun e!6356 () Bool)

(assert (=> b!11197 (=> (not res!4067) (not e!6356))))

(declare-fun a!347 () Balance!299)

(declare-datatypes () ((List!269 (Nil!267) (Cons!266 (head!484 Balance!299) (tail!496 List!269)))))

(declare-fun xs!292 () List!269)

(assert (=> b!11197 (= res!4067 (= a!347 (head!484 xs!292)))))

(declare-fun b!11198 () Bool)

(declare-fun res!4065 () Bool)

(assert (=> b!11198 (=> (not res!4065) (not e!6356))))

(assert (=> b!11198 (= res!4065 (or (not (is-Cons!266 xs!292)) (not (is-Nil!267 (tail!496 xs!292)))))))

(declare-fun res!4070 () Bool)

(assert (=> b!11199 (=> (not res!4070) (not e!6356))))

(assert (=> b!11199 (= res!4070 (= f!539 lambda!2984))))

(declare-fun e!6357 () Bool)

(assert (=> b!11200 (= e!6357 (and tp!2436 tp!2438 tp!2434))))

(declare-fun b!11201 () Bool)

(declare-fun thiss!764 () List!269)

(declare-fun isEmpty!197 (List!269) Bool)

(assert (=> b!11201 (= e!6356 (isEmpty!197 thiss!764))))

(declare-fun res!4073 () Bool)

(assert (=> b!11202 (=> (not res!4073) (not e!6356))))

(assert (=> b!11202 (= res!4073 (= thiss!747 (EqEvidence!231 lambda!2985 lambda!2985 lambda!2986)))))

(declare-fun res!4064 () Bool)

(assert (=> b!11203 (=> (not res!4064) (not e!6356))))

(assert (=> b!11203 (= res!4064 (= thiss!757 (EqProof!111 lambda!2988 lambda!2988)))))

(declare-fun b!11204 () Bool)

(declare-fun res!4068 () Bool)

(assert (=> b!11204 (=> (not res!4068) (not e!6356))))

(declare-fun b!5620 () Balance!299)

(declare-fun foldRight1!99 (List!269 Int) Balance!299)

(assert (=> b!11204 (= res!4068 (= b!5620 (foldRight1!99 (tail!496 xs!292) f!539)))))

(declare-fun b!11205 () Bool)

(declare-fun res!4069 () Bool)

(assert (=> b!11205 (=> (not res!4069) (not e!6356))))

(declare-fun ys!54 () List!269)

(assert (=> b!11205 (= res!4069 (and (= thiss!764 ys!54) (= f!572 f!539)))))

(declare-fun res!4071 () Bool)

(assert (=> start!2248 (=> (not res!4071) (not e!6356))))

(assert (=> start!2248 (= res!4071 (not (isEmpty!197 xs!292)))))

(assert (=> start!2248 e!6356))

(declare-fun inv!374 (EqEvidence!230) Bool)

(assert (=> start!2248 (and (inv!374 thiss!747) e!6357)))

(assert (=> start!2248 tp!2437))

(assert (=> start!2248 true))

(assert (=> start!2248 tp!2439))

(declare-fun e!6355 () Bool)

(declare-fun inv!375 (EqProof!110) Bool)

(assert (=> start!2248 (and (inv!375 thiss!757) e!6355)))

(assert (=> b!11206 (= e!6355 (and tp!2435 tp!2440))))

(declare-fun b!11207 () Bool)

(declare-fun res!4066 () Bool)

(assert (=> b!11207 (=> (not res!4066) (not e!6356))))

(declare-datatypes () ((ProofOps!238 (ProofOps!239 (prop!252 Bool)))))

(declare-fun thiss!710 () ProofOps!238)

(declare-fun dynLambda!406 (Int Balance!299 Balance!299) Balance!299)

(declare-fun append!118 (List!269 List!269) List!269)

(assert (=> b!11207 (= res!4066 (= thiss!710 (ProofOps!239 (= (dynLambda!406 f!539 (foldRight1!99 xs!292 f!539) (foldRight1!99 ys!54 f!539)) (foldRight1!99 (append!118 xs!292 ys!54) f!539)))))))

(declare-fun b!11208 () Bool)

(declare-fun res!4072 () Bool)

(assert (=> b!11208 (=> (not res!4072) (not e!6356))))

(assert (=> b!11208 (= res!4072 (not (isEmpty!197 ys!54)))))

(assert (= (and start!2248 res!4071) b!11208))

(assert (= (and b!11208 res!4072) b!11199))

(assert (= (and b!11199 res!4070) b!11207))

(assert (= (and b!11207 res!4066) b!11198))

(assert (= (and b!11198 res!4065) b!11202))

(assert (= (and b!11202 res!4073) b!11203))

(assert (= (and b!11203 res!4064) b!11197))

(assert (= (and b!11197 res!4067) b!11204))

(assert (= (and b!11204 res!4068) b!11205))

(assert (= (and b!11205 res!4069) b!11201))

(assert (= start!2248 b!11200))

(assert (= start!2248 b!11206))

(declare-fun b_lambda!5787 () Bool)

(assert (=> (not b_lambda!5787) (not b!11207)))

(declare-fun t!3137 () Bool)

(declare-fun tb!2797 () Bool)

(assert (=> (and start!2248 (= f!539 f!539) t!3137) tb!2797))

(declare-fun result!2849 () Bool)

(assert (=> tb!2797 (= result!2849 true)))

(assert (=> b!11207 t!3137))

(declare-fun b_and!5293 () Bool)

(assert (= b_and!5285 (and (=> t!3137 result!2849) b_and!5293)))

(declare-fun tb!2799 () Bool)

(declare-fun t!3139 () Bool)

(assert (=> (and start!2248 (= f!572 f!539) t!3139) tb!2799))

(declare-fun result!2851 () Bool)

(assert (=> tb!2799 (= result!2851 true)))

(assert (=> b!11207 t!3139))

(declare-fun b_and!5295 () Bool)

(assert (= b_and!5287 (and (=> t!3139 result!2851) b_and!5295)))

(declare-fun m!14127 () Bool)

(assert (=> b!11207 m!14127))

(declare-fun m!14129 () Bool)

(assert (=> b!11207 m!14129))

(declare-fun m!14131 () Bool)

(assert (=> b!11207 m!14131))

(assert (=> b!11207 m!14129))

(assert (=> b!11207 m!14131))

(declare-fun m!14133 () Bool)

(assert (=> b!11207 m!14133))

(assert (=> b!11207 m!14127))

(declare-fun m!14135 () Bool)

(assert (=> b!11207 m!14135))

(declare-fun m!14137 () Bool)

(assert (=> b!11208 m!14137))

(declare-fun m!14139 () Bool)

(assert (=> start!2248 m!14139))

(declare-fun m!14141 () Bool)

(assert (=> start!2248 m!14141))

(declare-fun m!14143 () Bool)

(assert (=> start!2248 m!14143))

(declare-fun m!14145 () Bool)

(assert (=> b!11204 m!14145))

(declare-fun m!14147 () Bool)

(assert (=> b!11201 m!14147))

(push 1)

(assert b_and!5293)

(assert b_and!5289)

(assert b_and!5283)

(assert (not b!11207))

(assert (not b!11201))

(assert (not b_next!3651))

(assert (not b_lambda!5787))

(assert (not b_next!3663))

(assert (not b!11208))

(assert b_and!5279)

(assert (not b_next!3669))

(assert (not b_next!3665))

(assert b_and!5291)

(assert (not b_next!3667))

(assert (not start!2248))

(assert b_and!5295)

(assert (not b_next!3671))

(assert (not b!11204))

(assert b_and!5281)

(assert (not b_next!3653))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5293)

(assert b_and!5289)

(assert b_and!5283)

(assert (not b_next!3651))

(assert (not b_next!3663))

(assert b_and!5279)

(assert (not b_next!3669))

(assert (not b_next!3665))

(assert b_and!5291)

(assert (not b_next!3667))

(assert b_and!5295)

(assert (not b_next!3671))

(assert b_and!5281)

(assert (not b_next!3653))

(check-sat)

(pop 1)

