; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2382 () Bool)

(assert start!2382)

(declare-fun b_free!1731 () Bool)

(declare-fun b_next!4105 () Bool)

(assert (=> start!2382 (= b_free!1731 (not b_next!4105))))

(declare-fun tp!2766 () Bool)

(declare-fun b_and!6023 () Bool)

(assert (=> start!2382 (= tp!2766 b_and!6023)))

(declare-fun b!11859 () Bool)

(declare-fun b_free!1733 () Bool)

(declare-fun b_next!4107 () Bool)

(assert (=> b!11859 (= b_free!1733 (not b_next!4107))))

(declare-fun tp!2767 () Bool)

(declare-fun b_and!6025 () Bool)

(assert (=> b!11859 (= tp!2767 b_and!6025)))

(declare-fun b_free!1735 () Bool)

(declare-fun b_next!4109 () Bool)

(assert (=> b!11859 (= b_free!1735 (not b_next!4109))))

(declare-fun tp!2762 () Bool)

(declare-fun b_and!6027 () Bool)

(assert (=> b!11859 (= tp!2762 b_and!6027)))

(declare-fun b!11858 () Bool)

(declare-fun b_free!1737 () Bool)

(declare-fun b_next!4111 () Bool)

(assert (=> b!11858 (= b_free!1737 (not b_next!4111))))

(declare-fun tp!2763 () Bool)

(declare-fun b_and!6029 () Bool)

(assert (=> b!11858 (= tp!2763 b_and!6029)))

(declare-fun b_free!1739 () Bool)

(declare-fun b_next!4113 () Bool)

(assert (=> b!11858 (= b_free!1739 (not b_next!4113))))

(declare-fun tp!2764 () Bool)

(declare-fun b_and!6031 () Bool)

(assert (=> b!11858 (= tp!2764 b_and!6031)))

(declare-fun b_free!1741 () Bool)

(declare-fun b_next!4115 () Bool)

(assert (=> b!11858 (= b_free!1741 (not b_next!4115))))

(declare-fun tp!2765 () Bool)

(declare-fun b_and!6033 () Bool)

(assert (=> b!11858 (= tp!2765 b_and!6033)))

(declare-fun f!539 () Int)

(declare-fun lambda!3176 () Int)

(declare-fun b!11863 () Bool)

(declare-fun b_next!4117 () Bool)

(assert (=> start!2382 (= b_next!4105 (or (and b!11863 (= lambda!3176 f!539)) b_next!4117))))

(declare-fun b!11860 () Bool)

(assert (=> b!11860 true))

(declare-fun order!279 () Int)

(declare-fun lambda!3177 () Int)

(declare-fun order!277 () Int)

(declare-fun dynLambda!471 (Int Int) Int)

(declare-fun dynLambda!472 (Int Int) Int)

(assert (=> b!11860 (< (dynLambda!471 order!277 f!539) (dynLambda!472 order!279 lambda!3177))))

(assert (=> b!11860 true))

(assert (=> b!11860 true))

(declare-datatypes () ((Balance!335 (Balance!336 (extraOpen!208 Int) (extraClose!208 Int)))))

(declare-datatypes () ((EqProof!124 (EqProof!125 (x!6712 Int) (y!653 Int)))))

(declare-fun that!180 () EqProof!124)

(declare-fun b_next!4119 () Bool)

(assert (=> b!11859 (= b_next!4107 (or (and b!11860 (= lambda!3177 (x!6712 that!180))) b_next!4119))))

(declare-fun b_next!4121 () Bool)

(assert (=> b!11859 (= b_next!4109 (or (and b!11860 (= lambda!3177 (y!653 that!180))) b_next!4121))))

(declare-fun b_next!4123 () Bool)

(declare-datatypes () ((EqEvidence!264 (EqEvidence!265 (x!6713 Int) (y!654 Int) (evidence!199 Int)))))

(declare-fun thiss!720 () EqEvidence!264)

(assert (=> b!11858 (= b_next!4111 (or (and b!11860 (= lambda!3177 (x!6713 thiss!720))) b_next!4123))))

(declare-fun b_next!4125 () Bool)

(assert (=> b!11858 (= b_next!4113 (or (and b!11860 (= lambda!3177 (y!654 thiss!720))) b_next!4125))))

(declare-fun lambda!3178 () Int)

(assert (=> b!11860 (not (= lambda!3178 lambda!3177))))

(assert (=> b!11860 true))

(assert (=> b!11860 (< (dynLambda!471 order!277 f!539) (dynLambda!472 order!279 lambda!3178))))

(assert (=> b!11860 true))

(assert (=> b!11860 true))

(declare-fun b_next!4127 () Bool)

(assert (=> b!11859 (= b_next!4119 (or (and b!11860 (= lambda!3178 (x!6712 that!180))) b_next!4127))))

(declare-fun b_next!4129 () Bool)

(assert (=> b!11859 (= b_next!4121 (or (and b!11860 (= lambda!3178 (y!653 that!180))) b_next!4129))))

(declare-fun b_next!4131 () Bool)

(assert (=> b!11858 (= b_next!4123 (or (and b!11860 (= lambda!3178 (x!6713 thiss!720))) b_next!4131))))

(declare-fun b_next!4133 () Bool)

(assert (=> b!11858 (= b_next!4125 (or (and b!11860 (= lambda!3178 (y!654 thiss!720))) b_next!4133))))

(assert (=> b!11860 true))

(assert (=> b!11860 true))

(declare-fun b_next!4135 () Bool)

(declare-fun lambda!3179 () Int)

(assert (=> b!11858 (= b_next!4115 (or (and b!11860 (= lambda!3179 (evidence!199 thiss!720))) b_next!4135))))

(declare-fun bs!3052 () Bool)

(declare-fun b!11857 () Bool)

(assert (= bs!3052 (and b!11857 b!11860)))

(declare-fun lambda!3180 () Int)

(assert (=> bs!3052 (not (= lambda!3180 lambda!3177))))

(assert (=> bs!3052 (not (= lambda!3180 lambda!3178))))

(assert (=> b!11857 true))

(assert (=> b!11857 (< (dynLambda!471 order!277 f!539) (dynLambda!472 order!279 lambda!3180))))

(assert (=> b!11857 true))

(assert (=> b!11857 true))

(declare-fun b_next!4137 () Bool)

(assert (=> b!11859 (= b_next!4127 (or (and b!11857 (= lambda!3180 (x!6712 that!180))) b_next!4137))))

(declare-fun b_next!4139 () Bool)

(assert (=> b!11859 (= b_next!4129 (or (and b!11857 (= lambda!3180 (y!653 that!180))) b_next!4139))))

(declare-fun b_next!4141 () Bool)

(assert (=> b!11858 (= b_next!4131 (or (and b!11857 (= lambda!3180 (x!6713 thiss!720))) b_next!4141))))

(declare-fun b_next!4143 () Bool)

(assert (=> b!11858 (= b_next!4133 (or (and b!11857 (= lambda!3180 (y!654 thiss!720))) b_next!4143))))

(declare-fun b!11855 () Bool)

(declare-fun res!4376 () Bool)

(declare-fun e!6589 () Bool)

(assert (=> b!11855 (=> (not res!4376) (not e!6589))))

(declare-datatypes () ((List!281 (Nil!279) (Cons!278 (head!496 Balance!335) (tail!508 List!281)))))

(declare-fun ys!54 () List!281)

(declare-fun isEmpty!209 (List!281) Bool)

(assert (=> b!11855 (= res!4376 (not (isEmpty!209 ys!54)))))

(declare-fun b!11856 () Bool)

(declare-fun res!4374 () Bool)

(assert (=> b!11856 (=> (not res!4374) (not e!6589))))

(declare-fun dynLambda!473 (Int) Bool)

(assert (=> b!11856 (= res!4374 (dynLambda!473 (evidence!199 thiss!720)))))

(declare-fun res!4380 () Bool)

(assert (=> b!11857 (=> (not res!4380) (not e!6589))))

(assert (=> b!11857 (= res!4380 (= that!180 (EqProof!125 lambda!3180 lambda!3180)))))

(declare-fun e!6591 () Bool)

(assert (=> b!11858 (= e!6591 (and tp!2763 tp!2764 tp!2765))))

(declare-fun e!6590 () Bool)

(assert (=> b!11859 (= e!6590 (and tp!2767 tp!2762))))

(declare-fun res!4377 () Bool)

(assert (=> start!2382 (=> (not res!4377) (not e!6589))))

(declare-fun xs!292 () List!281)

(assert (=> start!2382 (= res!4377 (not (isEmpty!209 xs!292)))))

(assert (=> start!2382 e!6589))

(assert (=> start!2382 tp!2766))

(declare-fun inv!398 (EqProof!124) Bool)

(assert (=> start!2382 (and (inv!398 that!180) e!6590)))

(assert (=> start!2382 true))

(declare-fun inv!399 (EqEvidence!264) Bool)

(assert (=> start!2382 (and (inv!399 thiss!720) e!6591)))

(declare-fun res!4375 () Bool)

(assert (=> b!11860 (=> (not res!4375) (not e!6589))))

(assert (=> b!11860 (= res!4375 (= thiss!720 (EqEvidence!265 lambda!3177 lambda!3178 lambda!3179)))))

(declare-fun b!11861 () Bool)

(declare-fun dynLambda!474 (Int) Balance!335)

(assert (=> b!11861 (= e!6589 (not (= (dynLambda!474 (y!654 thiss!720)) (dynLambda!474 (x!6712 that!180)))))))

(declare-fun b!11862 () Bool)

(declare-fun res!4373 () Bool)

(assert (=> b!11862 (=> (not res!4373) (not e!6589))))

(assert (=> b!11862 (= res!4373 (and (is-Cons!278 xs!292) (is-Nil!279 (tail!508 xs!292))))))

(declare-fun res!4379 () Bool)

(assert (=> b!11863 (=> (not res!4379) (not e!6589))))

(assert (=> b!11863 (= res!4379 (= f!539 lambda!3176))))

(declare-fun b!11864 () Bool)

(declare-fun res!4378 () Bool)

(assert (=> b!11864 (=> (not res!4378) (not e!6589))))

(declare-datatypes () ((ProofOps!262 (ProofOps!263 (prop!264 Bool)))))

(declare-fun thiss!710 () ProofOps!262)

(declare-fun dynLambda!475 (Int Balance!335 Balance!335) Balance!335)

(declare-fun foldRight1!111 (List!281 Int) Balance!335)

(declare-fun append!130 (List!281 List!281) List!281)

(assert (=> b!11864 (= res!4378 (= thiss!710 (ProofOps!263 (= (dynLambda!475 f!539 (foldRight1!111 xs!292 f!539) (foldRight1!111 ys!54 f!539)) (foldRight1!111 (append!130 xs!292 ys!54) f!539)))))))

(assert (= (and start!2382 res!4377) b!11855))

(assert (= (and b!11855 res!4376) b!11863))

(assert (= (and b!11863 res!4379) b!11864))

(assert (= (and b!11864 res!4378) b!11862))

(assert (= (and b!11862 res!4373) b!11860))

(assert (= (and b!11860 res!4375) b!11857))

(assert (= (and b!11857 res!4380) b!11856))

(assert (= (and b!11856 res!4374) b!11861))

(assert (= start!2382 b!11859))

(assert (= start!2382 b!11858))

(declare-fun b_lambda!6295 () Bool)

(assert (=> (not b_lambda!6295) (not b!11856)))

(declare-fun t!3515 () Bool)

(declare-fun tb!3175 () Bool)

(assert (=> (and b!11858 (= (evidence!199 thiss!720) (evidence!199 thiss!720)) t!3515) tb!3175))

(declare-fun result!3227 () Bool)

(assert (=> tb!3175 (= result!3227 true)))

(assert (=> b!11856 t!3515))

(declare-fun b_and!6035 () Bool)

(assert (= b_and!6033 (and (=> t!3515 result!3227) b_and!6035)))

(declare-fun b_lambda!6297 () Bool)

(assert (=> (not b_lambda!6297) (not b!11861)))

(declare-fun t!3517 () Bool)

(declare-fun tb!3177 () Bool)

(assert (=> (and b!11859 (= (x!6712 that!180) (y!654 thiss!720)) t!3517) tb!3177))

(declare-fun result!3229 () Bool)

(assert (=> tb!3177 (= result!3229 true)))

(assert (=> b!11861 t!3517))

(declare-fun b_and!6037 () Bool)

(assert (= b_and!6025 (and (=> t!3517 result!3229) b_and!6037)))

(declare-fun t!3519 () Bool)

(declare-fun tb!3179 () Bool)

(assert (=> (and b!11859 (= (y!653 that!180) (y!654 thiss!720)) t!3519) tb!3179))

(declare-fun result!3231 () Bool)

(assert (=> tb!3179 (= result!3231 true)))

(assert (=> b!11861 t!3519))

(declare-fun b_and!6039 () Bool)

(assert (= b_and!6027 (and (=> t!3519 result!3231) b_and!6039)))

(declare-fun t!3521 () Bool)

(declare-fun tb!3181 () Bool)

(assert (=> (and b!11858 (= (x!6713 thiss!720) (y!654 thiss!720)) t!3521) tb!3181))

(declare-fun result!3233 () Bool)

(assert (=> tb!3181 (= result!3233 true)))

(assert (=> b!11861 t!3521))

(declare-fun b_and!6041 () Bool)

(assert (= b_and!6029 (and (=> t!3521 result!3233) b_and!6041)))

(declare-fun t!3523 () Bool)

(declare-fun tb!3183 () Bool)

(assert (=> (and b!11858 (= (y!654 thiss!720) (y!654 thiss!720)) t!3523) tb!3183))

(declare-fun result!3235 () Bool)

(assert (=> tb!3183 (= result!3235 true)))

(assert (=> b!11861 t!3523))

(declare-fun b_and!6043 () Bool)

(assert (= b_and!6031 (and (=> t!3523 result!3235) b_and!6043)))

(declare-fun b_lambda!6299 () Bool)

(assert (=> (not b_lambda!6299) (not b!11861)))

(declare-fun t!3525 () Bool)

(declare-fun tb!3185 () Bool)

(assert (=> (and b!11859 (= (x!6712 that!180) (x!6712 that!180)) t!3525) tb!3185))

(declare-fun result!3237 () Bool)

(assert (=> tb!3185 (= result!3237 true)))

(assert (=> b!11861 t!3525))

(declare-fun b_and!6045 () Bool)

(assert (= b_and!6037 (and (=> t!3525 result!3237) b_and!6045)))

(declare-fun t!3527 () Bool)

(declare-fun tb!3187 () Bool)

(assert (=> (and b!11859 (= (y!653 that!180) (x!6712 that!180)) t!3527) tb!3187))

(declare-fun result!3239 () Bool)

(assert (=> tb!3187 (= result!3239 true)))

(assert (=> b!11861 t!3527))

(declare-fun b_and!6047 () Bool)

(assert (= b_and!6039 (and (=> t!3527 result!3239) b_and!6047)))

(declare-fun tb!3189 () Bool)

(declare-fun t!3529 () Bool)

(assert (=> (and b!11858 (= (x!6713 thiss!720) (x!6712 that!180)) t!3529) tb!3189))

(declare-fun result!3241 () Bool)

(assert (=> tb!3189 (= result!3241 true)))

(assert (=> b!11861 t!3529))

(declare-fun b_and!6049 () Bool)

(assert (= b_and!6041 (and (=> t!3529 result!3241) b_and!6049)))

(declare-fun tb!3191 () Bool)

(declare-fun t!3531 () Bool)

(assert (=> (and b!11858 (= (y!654 thiss!720) (x!6712 that!180)) t!3531) tb!3191))

(declare-fun result!3243 () Bool)

(assert (=> tb!3191 (= result!3243 true)))

(assert (=> b!11861 t!3531))

(declare-fun b_and!6051 () Bool)

(assert (= b_and!6043 (and (=> t!3531 result!3243) b_and!6051)))

(declare-fun b_lambda!6301 () Bool)

(assert (=> (not b_lambda!6301) (not b!11864)))

(declare-fun t!3533 () Bool)

(declare-fun tb!3193 () Bool)

(assert (=> (and start!2382 (= f!539 f!539) t!3533) tb!3193))

(declare-fun result!3245 () Bool)

(assert (=> tb!3193 (= result!3245 true)))

(assert (=> b!11864 t!3533))

(declare-fun b_and!6053 () Bool)

(assert (= b_and!6023 (and (=> t!3533 result!3245) b_and!6053)))

(declare-fun m!14773 () Bool)

(assert (=> b!11861 m!14773))

(declare-fun m!14775 () Bool)

(assert (=> b!11861 m!14775))

(declare-fun m!14777 () Bool)

(assert (=> b!11856 m!14777))

(declare-fun m!14779 () Bool)

(assert (=> b!11855 m!14779))

(declare-fun m!14781 () Bool)

(assert (=> start!2382 m!14781))

(declare-fun m!14783 () Bool)

(assert (=> start!2382 m!14783))

(declare-fun m!14785 () Bool)

(assert (=> start!2382 m!14785))

(declare-fun m!14787 () Bool)

(assert (=> b!11864 m!14787))

(declare-fun m!14789 () Bool)

(assert (=> b!11864 m!14789))

(declare-fun m!14791 () Bool)

(assert (=> b!11864 m!14791))

(assert (=> b!11864 m!14789))

(assert (=> b!11864 m!14791))

(declare-fun m!14793 () Bool)

(assert (=> b!11864 m!14793))

(assert (=> b!11864 m!14787))

(declare-fun m!14795 () Bool)

(assert (=> b!11864 m!14795))

(push 1)

(assert b_and!6045)

(assert (not b_next!4141))

(assert (not b_lambda!6301))

(assert (not b_lambda!6297))

(assert (not b_next!4139))

(assert (not b_next!4137))

(assert (not b_next!4117))

(assert b_and!6047)

(assert b_and!6051)

(assert (not b_next!4135))

(assert (not start!2382))

(assert b_and!6035)

(assert (not b_next!4143))

(assert (not b!11855))

(assert b_and!6053)

(assert (not b_lambda!6295))

(assert (not b!11864))

(assert (not b_lambda!6299))

(assert b_and!6049)

(check-sat)

(pop 1)

(push 1)

(assert b_and!6045)

(assert (not b_next!4141))

(assert (not b_next!4139))

(assert (not b_next!4137))

(assert (not b_next!4117))

(assert b_and!6047)

(assert b_and!6051)

(assert (not b_next!4135))

(assert b_and!6035)

(assert (not b_next!4143))

(assert b_and!6053)

(assert b_and!6049)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6303 () Bool)

(assert (= b_lambda!6301 (or (and b!11863 (= lambda!3176 f!539)) (and start!2382 b_free!1731) b_lambda!6303)))

(declare-fun bs!3053 () Bool)

(declare-fun d!9157 () Bool)

(assert (= bs!3053 (and d!9157 b!11863)))

(declare-fun ++!3 (Balance!335 Balance!335) Balance!335)

(assert (=> bs!3053 (= (dynLambda!475 lambda!3176 (foldRight1!111 xs!292 f!539) (foldRight1!111 ys!54 f!539)) (++!3 (foldRight1!111 xs!292 f!539) (foldRight1!111 ys!54 f!539)))))

(assert (=> bs!3053 m!14789))

(assert (=> bs!3053 m!14791))

(declare-fun m!14797 () Bool)

(assert (=> bs!3053 m!14797))

(assert (=> (and b!11863 (= lambda!3176 f!539) b!11864) d!9157))

(declare-fun b_lambda!6305 () Bool)

(assert (= b_lambda!6295 (or (and b!11860 (= lambda!3179 (evidence!199 thiss!720))) (and b!11858 b_free!1741) b_lambda!6305)))

(declare-fun bs!3054 () Bool)

(declare-fun d!9159 () Bool)

(assert (= bs!3054 (and d!9159 b!11860)))

(assert (=> bs!3054 (= (dynLambda!473 lambda!3179) (= (append!130 xs!292 ys!54) (Cons!278 (head!496 xs!292) ys!54)))))

(assert (=> bs!3054 m!14787))

(assert (=> (and b!11860 (= lambda!3179 (evidence!199 thiss!720)) b!11856) d!9159))

(declare-fun b_lambda!6307 () Bool)

(assert (= b_lambda!6299 (or (and b!11858 b_free!1737 (= (x!6713 thiss!720) (x!6712 that!180))) (and b!11860 (= lambda!3178 (x!6712 that!180))) (and b!11859 b_free!1733) (and b!11859 b_free!1735 (= (y!653 that!180) (x!6712 that!180))) (and b!11858 b_free!1739 (= (y!654 thiss!720) (x!6712 that!180))) (and b!11857 (= lambda!3180 (x!6712 that!180))) (and b!11860 (= lambda!3177 (x!6712 that!180))) b_lambda!6307)))

(declare-fun bs!3055 () Bool)

(declare-fun d!9161 () Bool)

(assert (= bs!3055 (and d!9161 b!11857)))

(assert (=> bs!3055 (= (dynLambda!474 lambda!3180) (foldRight1!111 (append!130 xs!292 ys!54) f!539))))

(assert (=> bs!3055 m!14787))

(assert (=> bs!3055 m!14787))

(assert (=> bs!3055 m!14795))

(assert (=> (and b!11857 (= lambda!3180 (x!6712 that!180)) b!11861) d!9161))

(declare-fun bs!3056 () Bool)

(declare-fun d!9163 () Bool)

(assert (= bs!3056 (and d!9163 b!11860)))

(assert (=> bs!3056 (= (dynLambda!474 lambda!3177) (dynLambda!475 f!539 (foldRight1!111 xs!292 f!539) (foldRight1!111 ys!54 f!539)))))

(declare-fun b_lambda!6311 () Bool)

(assert (=> (not b_lambda!6311) (not bs!3056)))

(assert (=> bs!3056 t!3533))

(declare-fun b_and!6055 () Bool)

(assert (= b_and!6053 (and (=> t!3533 result!3245) b_and!6055)))

(assert (=> bs!3056 m!14789))

(assert (=> bs!3056 m!14791))

(assert (=> bs!3056 m!14789))

(assert (=> bs!3056 m!14791))

(assert (=> bs!3056 m!14793))

(assert (=> (and b!11860 (= lambda!3177 (x!6712 that!180)) b!11861) d!9163))

(declare-fun bs!3057 () Bool)

(declare-fun d!9165 () Bool)

(assert (= bs!3057 (and d!9165 b!11860)))

(assert (=> bs!3057 (= (dynLambda!474 lambda!3178) (foldRight1!111 (Cons!278 (head!496 xs!292) ys!54) f!539))))

(declare-fun m!14799 () Bool)

(assert (=> bs!3057 m!14799))

(assert (=> (and b!11860 (= lambda!3178 (x!6712 that!180)) b!11861) d!9165))

(declare-fun b_lambda!6309 () Bool)

(assert (= b_lambda!6297 (or (and b!11858 b_free!1737 (= (x!6713 thiss!720) (y!654 thiss!720))) (and b!11859 b_free!1735 (= (y!653 that!180) (y!654 thiss!720))) (and b!11860 (= lambda!3177 (y!654 thiss!720))) (and b!11859 b_free!1733 (= (x!6712 that!180) (y!654 thiss!720))) (and b!11857 (= lambda!3180 (y!654 thiss!720))) (and b!11858 b_free!1739) (and b!11860 (= lambda!3178 (y!654 thiss!720))) b_lambda!6309)))

(declare-fun bs!3058 () Bool)

(declare-fun d!9167 () Bool)

(assert (= bs!3058 (and d!9167 b!11857)))

(assert (=> bs!3058 (= (dynLambda!474 lambda!3180) (foldRight1!111 (append!130 xs!292 ys!54) f!539))))

(assert (=> bs!3058 m!14787))

(assert (=> bs!3058 m!14787))

(assert (=> bs!3058 m!14795))

(assert (=> (and b!11857 (= lambda!3180 (y!654 thiss!720)) b!11861) d!9167))

(declare-fun bs!3059 () Bool)

(declare-fun d!9169 () Bool)

(assert (= bs!3059 (and d!9169 b!11860)))

(assert (=> bs!3059 (= (dynLambda!474 lambda!3178) (foldRight1!111 (Cons!278 (head!496 xs!292) ys!54) f!539))))

(assert (=> bs!3059 m!14799))

(assert (=> (and b!11860 (= lambda!3178 (y!654 thiss!720)) b!11861) d!9169))

(declare-fun bs!3060 () Bool)

(declare-fun d!9171 () Bool)

(assert (= bs!3060 (and d!9171 b!11860)))

(assert (=> bs!3060 (= (dynLambda!474 lambda!3177) (dynLambda!475 f!539 (foldRight1!111 xs!292 f!539) (foldRight1!111 ys!54 f!539)))))

(declare-fun b_lambda!6313 () Bool)

(assert (=> (not b_lambda!6313) (not bs!3060)))

(assert (=> bs!3060 t!3533))

(declare-fun b_and!6057 () Bool)

(assert (= b_and!6055 (and (=> t!3533 result!3245) b_and!6057)))

(assert (=> bs!3060 m!14789))

(assert (=> bs!3060 m!14791))

(assert (=> bs!3060 m!14789))

(assert (=> bs!3060 m!14791))

(assert (=> bs!3060 m!14793))

(assert (=> (and b!11860 (= lambda!3177 (y!654 thiss!720)) b!11861) d!9171))

(push 1)

(assert b_and!6045)

(assert (not b_next!4141))

(assert (not bs!3060))

(assert (not b_next!4139))

(assert (not b_lambda!6309))

(assert (not bs!3054))

(assert (not b_next!4137))

(assert (not b_lambda!6311))

(assert (not b_next!4117))

(assert (not bs!3056))

(assert b_and!6047)

(assert b_and!6051)

(assert (not b_next!4135))

(assert (not b_lambda!6307))

(assert (not bs!3053))

(assert (not bs!3055))

(assert (not bs!3057))

(assert (not start!2382))

(assert b_and!6035)

(assert (not bs!3059))

(assert (not b_next!4143))

(assert (not b_lambda!6303))

(assert (not bs!3058))

(assert (not b!11855))

(assert b_and!6057)

(assert (not b!11864))

(assert (not b_lambda!6313))

(assert (not b_lambda!6305))

(assert b_and!6049)

(check-sat)

(pop 1)

(push 1)

(assert b_and!6045)

(assert (not b_next!4141))

(assert (not b_next!4139))

(assert (not b_next!4137))

(assert (not b_next!4117))

(assert b_and!6047)

(assert b_and!6051)

(assert (not b_next!4135))

(assert b_and!6035)

(assert (not b_next!4143))

(assert b_and!6057)

(assert b_and!6049)

(check-sat)

(pop 1)

