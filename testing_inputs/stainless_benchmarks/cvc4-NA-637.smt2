; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4590 () Bool)

(assert start!4590)

(declare-fun b_free!2187 () Bool)

(declare-fun b_next!5297 () Bool)

(assert (=> start!4590 (= b_free!2187 (not b_next!5297))))

(declare-fun tp!7301 () Bool)

(declare-fun b_and!7939 () Bool)

(assert (=> start!4590 (= tp!7301 b_and!7939)))

(declare-fun b_next!5299 () Bool)

(declare-fun lambda!4147 () Int)

(declare-fun f!2349 () Int)

(assert (=> start!4590 (= b_next!5297 (or (and start!4590 (= lambda!4147 f!2349)) b_next!5299))))

(declare-fun res!16259 () Bool)

(declare-fun e!17737 () Bool)

(assert (=> start!4590 (=> (not res!16259) (not e!17737))))

(assert (=> start!4590 (= res!16259 (= f!2349 lambda!4147))))

(assert (=> start!4590 e!17737))

(assert (=> start!4590 tp!7301))

(assert (=> start!4590 true))

(declare-fun b!35117 () Bool)

(declare-fun res!16260 () Bool)

(assert (=> b!35117 (=> (not res!16260) (not e!17737))))

(declare-datatypes () ((List!396 (Nil!387) (Cons!386 (head!601 (_ BitVec 32)) (tail!625 List!396)))))

(declare-fun l2!241 () List!396)

(declare-fun l1!247 () List!396)

(declare-fun list!209 () List!396)

(declare-fun append!17 (List!396 List!396) List!396)

(assert (=> b!35117 (= res!16260 (= list!209 (append!17 l1!247 l2!241)))))

(declare-fun b!35118 () Bool)

(declare-fun e!17738 () Bool)

(declare-datatypes () ((ProofOps!294 (ProofOps!295 (prop!317 Bool)))))

(declare-fun because!1 (ProofOps!294 Bool) Bool)

(declare-fun lemma_reassociative_presplit!0 (List!396 List!396) Bool)

(assert (=> b!35118 (= e!17737 (not (because!1 (ProofOps!295 (lemma_reassociative_presplit!0 l1!247 l2!241)) e!17738)))))

(declare-fun res!16258 () Bool)

(assert (=> b!35118 (=> res!16258 e!17738)))

(assert (=> b!35118 (= res!16258 (not (is-Cons!386 l1!247)))))

(declare-fun b!35119 () Bool)

(declare-fun lemma_reassociative_presplit_induct!0 (List!396 List!396) Bool)

(assert (=> b!35119 (= e!17738 (lemma_reassociative_presplit_induct!0 (tail!625 l1!247) l2!241))))

(assert (= (and start!4590 res!16259) b!35117))

(assert (= (and b!35117 res!16260) b!35118))

(assert (= (and b!35118 (not res!16258)) b!35119))

(declare-fun m!37907 () Bool)

(assert (=> b!35117 m!37907))

(declare-fun m!37909 () Bool)

(assert (=> b!35118 m!37909))

(declare-fun m!37911 () Bool)

(assert (=> b!35118 m!37911))

(declare-fun m!37913 () Bool)

(assert (=> b!35119 m!37913))

(push 1)

(assert b_and!7939)

(assert (not b!35118))

(assert (not b!35119))

(assert (not b_next!5299))

(assert (not b!35117))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7939)

(assert (not b_next!5299))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18398 () Bool)

(declare-fun c!7457 () Bool)

(assert (=> d!18398 (= c!7457 (is-Cons!386 l1!247))))

(declare-fun e!17741 () List!396)

(assert (=> d!18398 (= (append!17 l1!247 l2!241) e!17741)))

(declare-fun b!35124 () Bool)

(assert (=> b!35124 (= e!17741 (Cons!386 (head!601 l1!247) (append!17 (tail!625 l1!247) l2!241)))))

(declare-fun b!35125 () Bool)

(assert (=> b!35125 (= e!17741 l2!241)))

(assert (= (and d!18398 c!7457) b!35124))

(assert (= (and d!18398 (not c!7457)) b!35125))

(declare-fun m!37915 () Bool)

(assert (=> b!35124 m!37915))

(assert (=> b!35117 d!18398))

(declare-fun d!18400 () Bool)

(declare-fun e!17744 () Bool)

(assert (=> d!18400 (because!1 (ProofOps!295 (lemma_reassociative_presplit!0 (tail!625 l1!247) l2!241)) e!17744)))

(declare-fun res!16263 () Bool)

(assert (=> d!18400 (=> res!16263 e!17744)))

(assert (=> d!18400 (= res!16263 (not (is-Cons!386 (tail!625 l1!247))))))

(assert (=> d!18400 (= (lemma_reassociative_presplit_induct!0 (tail!625 l1!247) l2!241) true)))

(declare-fun b!35128 () Bool)

(assert (=> b!35128 (= e!17744 (lemma_reassociative_presplit_induct!0 (tail!625 (tail!625 l1!247)) l2!241))))

(assert (= (and d!18400 (not res!16263)) b!35128))

(declare-fun m!37917 () Bool)

(assert (=> d!18400 m!37917))

(declare-fun m!37919 () Bool)

(assert (=> d!18400 m!37919))

(declare-fun m!37921 () Bool)

(assert (=> b!35128 m!37921))

(assert (=> b!35119 d!18400))

(declare-fun d!18402 () Bool)

(assert (=> d!18402 (= (because!1 (ProofOps!295 (lemma_reassociative_presplit!0 l1!247 l2!241)) e!17738) (and e!17738 (prop!317 (ProofOps!295 (lemma_reassociative_presplit!0 l1!247 l2!241)))))))

(assert (=> b!35118 d!18402))

(declare-fun bs!11264 () Bool)

(declare-fun d!18404 () Bool)

(assert (= bs!11264 (and d!18404 start!4590)))

(declare-fun lambda!4150 () Int)

(assert (=> bs!11264 (= lambda!4150 lambda!4147)))

(declare-fun b_next!5301 () Bool)

(assert (=> start!4590 (= b_next!5299 (or (and d!18404 (= lambda!4150 f!2349)) b_next!5301))))

(declare-fun foldRight!76 (List!396 (_ BitVec 32) Int) (_ BitVec 32))

(assert (=> d!18404 (= (lemma_reassociative_presplit!0 l1!247 l2!241) (= (foldRight!76 (append!17 l1!247 l2!241) #b00000000000000000000000000000000 lambda!4150) (bvadd (foldRight!76 l1!247 #b00000000000000000000000000000000 lambda!4150) (foldRight!76 l2!241 #b00000000000000000000000000000000 lambda!4150))))))

(declare-fun bs!11265 () Bool)

(assert (= bs!11265 d!18404))

(assert (=> bs!11265 m!37907))

(assert (=> bs!11265 m!37907))

(declare-fun m!37923 () Bool)

(assert (=> bs!11265 m!37923))

(declare-fun m!37925 () Bool)

(assert (=> bs!11265 m!37925))

(declare-fun m!37927 () Bool)

(assert (=> bs!11265 m!37927))

(assert (=> b!35118 d!18404))

(push 1)

(assert b_and!7939)

(assert (not d!18404))

(assert (not b_next!5301))

(assert (not d!18400))

(assert (not b!35128))

(assert (not b!35124))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7939)

(assert (not b_next!5301))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18406 () Bool)

(declare-fun e!17745 () Bool)

(assert (=> d!18406 (because!1 (ProofOps!295 (lemma_reassociative_presplit!0 (tail!625 (tail!625 l1!247)) l2!241)) e!17745)))

(declare-fun res!16264 () Bool)

(assert (=> d!18406 (=> res!16264 e!17745)))

(assert (=> d!18406 (= res!16264 (not (is-Cons!386 (tail!625 (tail!625 l1!247)))))))

(assert (=> d!18406 (= (lemma_reassociative_presplit_induct!0 (tail!625 (tail!625 l1!247)) l2!241) true)))

(declare-fun b!35129 () Bool)

(assert (=> b!35129 (= e!17745 (lemma_reassociative_presplit_induct!0 (tail!625 (tail!625 (tail!625 l1!247))) l2!241))))

(assert (= (and d!18406 (not res!16264)) b!35129))

(declare-fun m!37929 () Bool)

(assert (=> d!18406 m!37929))

(declare-fun m!37931 () Bool)

(assert (=> d!18406 m!37931))

(declare-fun m!37933 () Bool)

(assert (=> b!35129 m!37933))

(assert (=> b!35128 d!18406))

(declare-fun d!18408 () Bool)

(declare-fun c!7458 () Bool)

(assert (=> d!18408 (= c!7458 (is-Cons!386 (tail!625 l1!247)))))

(declare-fun e!17746 () List!396)

(assert (=> d!18408 (= (append!17 (tail!625 l1!247) l2!241) e!17746)))

(declare-fun b!35130 () Bool)

(assert (=> b!35130 (= e!17746 (Cons!386 (head!601 (tail!625 l1!247)) (append!17 (tail!625 (tail!625 l1!247)) l2!241)))))

(declare-fun b!35131 () Bool)

(assert (=> b!35131 (= e!17746 l2!241)))

(assert (= (and d!18408 c!7458) b!35130))

(assert (= (and d!18408 (not c!7458)) b!35131))

(declare-fun m!37935 () Bool)

(assert (=> b!35130 m!37935))

(assert (=> b!35124 d!18408))

(declare-fun d!18410 () Bool)

(declare-fun c!7461 () Bool)

(assert (=> d!18410 (= c!7461 (is-Cons!386 l1!247))))

(declare-fun e!17749 () (_ BitVec 32))

(assert (=> d!18410 (= (foldRight!76 l1!247 #b00000000000000000000000000000000 lambda!4150) e!17749)))

(declare-fun b!35136 () Bool)

(declare-fun dynLambda!642 (Int (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!35136 (= e!17749 (dynLambda!642 lambda!4150 (head!601 l1!247) (foldRight!76 (tail!625 l1!247) #b00000000000000000000000000000000 lambda!4150)))))

(declare-fun b!35137 () Bool)

(assert (=> b!35137 (= e!17749 #b00000000000000000000000000000000)))

(assert (= (and d!18410 c!7461) b!35136))

(assert (= (and d!18410 (not c!7461)) b!35137))

(declare-fun b_lambda!9547 () Bool)

(assert (=> (not b_lambda!9547) (not b!35136)))

(declare-fun m!37937 () Bool)

(assert (=> b!35136 m!37937))

(assert (=> b!35136 m!37937))

(declare-fun m!37939 () Bool)

(assert (=> b!35136 m!37939))

(assert (=> d!18404 d!18410))

(assert (=> d!18404 d!18398))

(declare-fun d!18412 () Bool)

(declare-fun c!7462 () Bool)

(assert (=> d!18412 (= c!7462 (is-Cons!386 (append!17 l1!247 l2!241)))))

(declare-fun e!17750 () (_ BitVec 32))

(assert (=> d!18412 (= (foldRight!76 (append!17 l1!247 l2!241) #b00000000000000000000000000000000 lambda!4150) e!17750)))

(declare-fun b!35138 () Bool)

(assert (=> b!35138 (= e!17750 (dynLambda!642 lambda!4150 (head!601 (append!17 l1!247 l2!241)) (foldRight!76 (tail!625 (append!17 l1!247 l2!241)) #b00000000000000000000000000000000 lambda!4150)))))

(declare-fun b!35139 () Bool)

(assert (=> b!35139 (= e!17750 #b00000000000000000000000000000000)))

(assert (= (and d!18412 c!7462) b!35138))

(assert (= (and d!18412 (not c!7462)) b!35139))

(declare-fun b_lambda!9549 () Bool)

(assert (=> (not b_lambda!9549) (not b!35138)))

(declare-fun m!37941 () Bool)

(assert (=> b!35138 m!37941))

(assert (=> b!35138 m!37941))

(declare-fun m!37943 () Bool)

(assert (=> b!35138 m!37943))

(assert (=> d!18404 d!18412))

(declare-fun d!18414 () Bool)

(declare-fun c!7463 () Bool)

(assert (=> d!18414 (= c!7463 (is-Cons!386 l2!241))))

(declare-fun e!17751 () (_ BitVec 32))

(assert (=> d!18414 (= (foldRight!76 l2!241 #b00000000000000000000000000000000 lambda!4150) e!17751)))

(declare-fun b!35140 () Bool)

(assert (=> b!35140 (= e!17751 (dynLambda!642 lambda!4150 (head!601 l2!241) (foldRight!76 (tail!625 l2!241) #b00000000000000000000000000000000 lambda!4150)))))

(declare-fun b!35141 () Bool)

(assert (=> b!35141 (= e!17751 #b00000000000000000000000000000000)))

(assert (= (and d!18414 c!7463) b!35140))

(assert (= (and d!18414 (not c!7463)) b!35141))

(declare-fun b_lambda!9551 () Bool)

(assert (=> (not b_lambda!9551) (not b!35140)))

(declare-fun m!37945 () Bool)

(assert (=> b!35140 m!37945))

(assert (=> b!35140 m!37945))

(declare-fun m!37947 () Bool)

(assert (=> b!35140 m!37947))

(assert (=> d!18404 d!18414))

(declare-fun d!18416 () Bool)

(assert (=> d!18416 (= (because!1 (ProofOps!295 (lemma_reassociative_presplit!0 (tail!625 l1!247) l2!241)) e!17744) (and e!17744 (prop!317 (ProofOps!295 (lemma_reassociative_presplit!0 (tail!625 l1!247) l2!241)))))))

(assert (=> d!18400 d!18416))

(declare-fun bs!11266 () Bool)

(declare-fun d!18418 () Bool)

(assert (= bs!11266 (and d!18418 start!4590)))

(declare-fun lambda!4151 () Int)

(assert (=> bs!11266 (= lambda!4151 lambda!4147)))

(declare-fun bs!11267 () Bool)

(assert (= bs!11267 (and d!18418 d!18404)))

(assert (=> bs!11267 (= lambda!4151 lambda!4150)))

(declare-fun b_next!5303 () Bool)

(assert (=> start!4590 (= b_next!5301 (or (and d!18418 (= lambda!4151 f!2349)) b_next!5303))))

(assert (=> d!18418 (= (lemma_reassociative_presplit!0 (tail!625 l1!247) l2!241) (= (foldRight!76 (append!17 (tail!625 l1!247) l2!241) #b00000000000000000000000000000000 lambda!4151) (bvadd (foldRight!76 (tail!625 l1!247) #b00000000000000000000000000000000 lambda!4151) (foldRight!76 l2!241 #b00000000000000000000000000000000 lambda!4151))))))

(declare-fun bs!11268 () Bool)

(assert (= bs!11268 d!18418))

(assert (=> bs!11268 m!37915))

(assert (=> bs!11268 m!37915))

(declare-fun m!37949 () Bool)

(assert (=> bs!11268 m!37949))

(declare-fun m!37951 () Bool)

(assert (=> bs!11268 m!37951))

(declare-fun m!37953 () Bool)

(assert (=> bs!11268 m!37953))

(assert (=> d!18400 d!18418))

(declare-fun b_lambda!9553 () Bool)

(assert (= b_lambda!9547 (or d!18404 b_lambda!9553)))

(declare-fun bs!11269 () Bool)

(declare-fun d!18420 () Bool)

(assert (= bs!11269 (and d!18420 d!18404)))

(assert (=> bs!11269 (= (dynLambda!642 lambda!4150 (head!601 l1!247) (foldRight!76 (tail!625 l1!247) #b00000000000000000000000000000000 lambda!4150)) (bvadd (head!601 l1!247) (foldRight!76 (tail!625 l1!247) #b00000000000000000000000000000000 lambda!4150)))))

(assert (=> b!35136 d!18420))

(declare-fun b_lambda!9555 () Bool)

(assert (= b_lambda!9549 (or d!18404 b_lambda!9555)))

(declare-fun bs!11270 () Bool)

(declare-fun d!18422 () Bool)

(assert (= bs!11270 (and d!18422 d!18404)))

(assert (=> bs!11270 (= (dynLambda!642 lambda!4150 (head!601 (append!17 l1!247 l2!241)) (foldRight!76 (tail!625 (append!17 l1!247 l2!241)) #b00000000000000000000000000000000 lambda!4150)) (bvadd (head!601 (append!17 l1!247 l2!241)) (foldRight!76 (tail!625 (append!17 l1!247 l2!241)) #b00000000000000000000000000000000 lambda!4150)))))

(assert (=> b!35138 d!18422))

(declare-fun b_lambda!9557 () Bool)

(assert (= b_lambda!9551 (or d!18404 b_lambda!9557)))

(declare-fun bs!11271 () Bool)

(declare-fun d!18424 () Bool)

(assert (= bs!11271 (and d!18424 d!18404)))

(assert (=> bs!11271 (= (dynLambda!642 lambda!4150 (head!601 l2!241) (foldRight!76 (tail!625 l2!241) #b00000000000000000000000000000000 lambda!4150)) (bvadd (head!601 l2!241) (foldRight!76 (tail!625 l2!241) #b00000000000000000000000000000000 lambda!4150)))))

(assert (=> b!35140 d!18424))

(push 1)

(assert (not b!35136))

(assert (not b_lambda!9553))

(assert b_and!7939)

(assert (not b!35138))

(assert (not b!35129))

(assert (not b!35140))

(assert (not b_lambda!9555))

(assert (not b_next!5303))

(assert (not d!18406))

(assert (not b_lambda!9557))

(assert (not d!18418))

(assert (not b!35130))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7939)

(assert (not b_next!5303))

(check-sat)

(pop 1)

