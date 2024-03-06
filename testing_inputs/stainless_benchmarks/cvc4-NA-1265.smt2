; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8968 () Bool)

(assert start!8968)

(declare-fun res!29019 () Bool)

(declare-fun e!33427 () Bool)

(assert (=> start!8968 (=> (not res!29019) (not e!33427))))

(declare-datatypes () ((List!569 (Cons!532 (h!770 Int) (t!47296 List!569)) (Nil!533))))

(declare-fun xs!978 () List!569)

(assert (=> start!8968 (= res!29019 (is-Cons!532 xs!978))))

(assert (=> start!8968 e!33427))

(assert (=> start!8968 true))

(declare-fun b!62346 () Bool)

(declare-fun res!29020 () Bool)

(assert (=> b!62346 (=> (not res!29020) (not e!33427))))

(declare-fun inductVal!158 () Bool)

(declare-fun test!5 (List!569) Bool)

(assert (=> b!62346 (= res!29020 (= inductVal!158 (test!5 (t!47296 xs!978))))))

(declare-fun lambda!9116 () Int)

(declare-fun b!62347 () Bool)

(declare-fun lambda!9117 () Int)

(declare-fun sum!1 (List!569) Int)

(declare-datatypes () ((Object!326 (MonoidExt!23 (__x!256 Int)) (BigIntAdditiveMonoid!2) (Integer!315 (value!5072 Int)) (Open!326 (value!5073 Int)))))

(declare-fun foldMap!3 (Int List!569 Int Object!326) Object!326)

(assert (=> b!62347 (= e!33427 (not (= (sum!1 xs!978) (value!5072 (foldMap!3 lambda!9116 xs!978 lambda!9117 BigIntAdditiveMonoid!2)))))))

(assert (= (and start!8968 res!29019) b!62346))

(assert (= (and b!62346 res!29020) b!62347))

(declare-fun m!68116 () Bool)

(assert (=> b!62346 m!68116))

(declare-fun m!68118 () Bool)

(assert (=> b!62347 m!68118))

(declare-fun m!68120 () Bool)

(assert (=> b!62347 m!68120))

(push 1)

(assert (not b!62347))

(assert (not b!62346))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52728 () Bool)

(declare-fun c!13642 () Bool)

(assert (=> d!52728 (= c!13642 (is-Nil!533 xs!978))))

(declare-fun e!33430 () Int)

(assert (=> d!52728 (= (sum!1 xs!978) e!33430)))

(declare-fun b!62352 () Bool)

(assert (=> b!62352 (= e!33430 0)))

(declare-fun b!62353 () Bool)

(assert (=> b!62353 (= e!33430 (+ (h!770 xs!978) (sum!1 (t!47296 xs!978))))))

(assert (= (and d!52728 c!13642) b!62352))

(assert (= (and d!52728 (not c!13642)) b!62353))

(declare-fun m!68122 () Bool)

(assert (=> b!62353 m!68122))

(assert (=> b!62347 d!52728))

(declare-fun d!52730 () Bool)

(declare-fun lt!11475 () Object!326)

(declare-fun foldMap!4 (List!569 Int Object!326) Object!326)

(assert (=> d!52730 (= lt!11475 (foldMap!4 xs!978 lambda!9117 BigIntAdditiveMonoid!2))))

(declare-fun e!33433 () Object!326)

(assert (=> d!52730 (= lt!11475 e!33433)))

(declare-fun c!13645 () Bool)

(assert (=> d!52730 (= c!13645 (is-Nil!533 xs!978))))

(assert (=> d!52730 (= (foldMap!3 lambda!9116 xs!978 lambda!9117 BigIntAdditiveMonoid!2) lt!11475)))

(declare-fun b!62358 () Bool)

(declare-fun empty!9 (Int Object!326) Object!326)

(assert (=> b!62358 (= e!33433 (empty!9 lambda!9116 BigIntAdditiveMonoid!2))))

(declare-fun b!62359 () Bool)

(declare-fun append!4 (Int Object!326 Object!326 Object!326) Object!326)

(declare-fun dynLambda!944 (Int Int) Object!326)

(assert (=> b!62359 (= e!33433 (append!4 lambda!9116 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9117 (h!770 xs!978)) (foldMap!3 lambda!9116 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2)))))

(assert (= (and d!52730 c!13645) b!62358))

(assert (= (and d!52730 (not c!13645)) b!62359))

(declare-fun b_lambda!15555 () Bool)

(assert (=> (not b_lambda!15555) (not b!62359)))

(declare-fun m!68124 () Bool)

(assert (=> d!52730 m!68124))

(declare-fun m!68126 () Bool)

(assert (=> b!62358 m!68126))

(declare-fun m!68128 () Bool)

(assert (=> b!62359 m!68128))

(declare-fun m!68130 () Bool)

(assert (=> b!62359 m!68130))

(assert (=> b!62359 m!68128))

(assert (=> b!62359 m!68130))

(declare-fun m!68132 () Bool)

(assert (=> b!62359 m!68132))

(assert (=> b!62347 d!52730))

(declare-fun bs!37401 () Bool)

(declare-fun b!62364 () Bool)

(assert (= bs!37401 (and b!62364 b!62347)))

(declare-fun lambda!9126 () Int)

(assert (=> bs!37401 (= lambda!9126 lambda!9116)))

(declare-fun lambda!9127 () Int)

(assert (=> bs!37401 (= lambda!9127 lambda!9117)))

(declare-fun bs!37402 () Bool)

(declare-fun b!62365 () Bool)

(assert (= bs!37402 (and b!62365 b!62347)))

(declare-fun lambda!9128 () Int)

(assert (=> bs!37402 (= lambda!9128 lambda!9116)))

(declare-fun bs!37403 () Bool)

(assert (= bs!37403 (and b!62365 b!62364)))

(assert (=> bs!37403 (= lambda!9128 lambda!9126)))

(declare-fun lambda!9129 () Int)

(assert (=> bs!37402 (= lambda!9129 lambda!9117)))

(assert (=> bs!37403 (= lambda!9129 lambda!9127)))

(declare-fun e!33436 () Bool)

(assert (=> b!62364 (= e!33436 (= (sum!1 (t!47296 xs!978)) (value!5072 (foldMap!3 lambda!9126 (t!47296 xs!978) lambda!9127 BigIntAdditiveMonoid!2))))))

(declare-fun lt!11478 () Bool)

(assert (=> b!62364 (= lt!11478 (test!5 (t!47296 (t!47296 xs!978))))))

(declare-fun d!52732 () Bool)

(assert (=> d!52732 e!33436))

(declare-fun c!13648 () Bool)

(assert (=> d!52732 (= c!13648 (is-Cons!532 (t!47296 xs!978)))))

(assert (=> d!52732 (= (test!5 (t!47296 xs!978)) true)))

(assert (=> b!62365 (= e!33436 (= (sum!1 (t!47296 xs!978)) (value!5072 (foldMap!3 lambda!9128 (t!47296 xs!978) lambda!9129 BigIntAdditiveMonoid!2))))))

(assert (= (and d!52732 c!13648) b!62364))

(assert (= (and d!52732 (not c!13648)) b!62365))

(assert (=> b!62364 m!68122))

(declare-fun m!68134 () Bool)

(assert (=> b!62364 m!68134))

(declare-fun m!68136 () Bool)

(assert (=> b!62364 m!68136))

(assert (=> b!62365 m!68122))

(declare-fun m!68138 () Bool)

(assert (=> b!62365 m!68138))

(assert (=> b!62346 d!52732))

(declare-fun b_lambda!15557 () Bool)

(assert (= b_lambda!15555 (or b!62347 b_lambda!15557)))

(declare-fun bs!37404 () Bool)

(declare-fun d!52734 () Bool)

(assert (= bs!37404 (and d!52734 b!62347)))

(assert (=> bs!37404 (= (dynLambda!944 lambda!9117 (h!770 xs!978)) (Integer!315 (h!770 xs!978)))))

(assert (=> b!62359 d!52734))

(push 1)

(assert (not b!62359))

(assert (not b_lambda!15557))

(assert (not b!62365))

(assert (not b!62364))

(assert (not b!62353))

(assert (not d!52730))

(assert (not b!62358))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!62371 () Bool)

(declare-fun e!33439 () Object!326)

(declare-fun lt!11484 () Int)

(assert (=> b!62371 (= e!33439 (Integer!315 lt!11484))))

(declare-fun dynLambda!945 (Int Object!326) Bool)

(assert (=> b!62371 (dynLambda!945 lambda!9116 (Integer!315 lt!11484))))

(declare-fun append!5 (Object!326 Int Int) Int)

(assert (=> b!62371 (= lt!11484 (append!5 BigIntAdditiveMonoid!2 (value!5072 (dynLambda!944 lambda!9117 (h!770 xs!978))) (value!5072 (foldMap!3 lambda!9116 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2))))))

(assert (=> b!62371 (is-Integer!315 (foldMap!3 lambda!9116 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2))))

(assert (=> b!62371 (is-Integer!315 (dynLambda!944 lambda!9117 (h!770 xs!978)))))

(declare-fun lt!11483 () Object!326)

(declare-fun d!52736 () Bool)

(declare-fun append!167 (Object!326 Object!326 Object!326) Object!326)

(assert (=> d!52736 (= lt!11483 (append!167 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9117 (h!770 xs!978)) (foldMap!3 lambda!9116 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2)))))

(assert (=> d!52736 (= lt!11483 e!33439)))

(declare-fun c!13651 () Bool)

(declare-fun isMonoidExt!0 (Object!326 Int) Bool)

(assert (=> d!52736 (= c!13651 (isMonoidExt!0 BigIntAdditiveMonoid!2 lambda!9116))))

(assert (=> d!52736 (= (append!4 lambda!9116 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9117 (h!770 xs!978)) (foldMap!3 lambda!9116 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2)) lt!11483)))

(declare-fun b!62370 () Bool)

(declare-fun append!165 (Int Object!326 Object!326 Object!326) Object!326)

(assert (=> b!62370 (= e!33439 (append!165 lambda!9116 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9117 (h!770 xs!978)) (foldMap!3 lambda!9116 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2)))))

(assert (= (and d!52736 c!13651) b!62370))

(assert (= (and d!52736 (not c!13651)) b!62371))

(declare-fun b_lambda!15559 () Bool)

(assert (=> (not b_lambda!15559) (not b!62371)))

(declare-fun m!68140 () Bool)

(assert (=> b!62371 m!68140))

(declare-fun m!68142 () Bool)

(assert (=> b!62371 m!68142))

(assert (=> d!52736 m!68128))

(assert (=> d!52736 m!68130))

(declare-fun m!68144 () Bool)

(assert (=> d!52736 m!68144))

(declare-fun m!68146 () Bool)

(assert (=> d!52736 m!68146))

(assert (=> b!62370 m!68128))

(assert (=> b!62370 m!68130))

(declare-fun m!68148 () Bool)

(assert (=> b!62370 m!68148))

(assert (=> b!62359 d!52736))

(declare-fun d!52738 () Bool)

(declare-fun lt!11485 () Object!326)

(assert (=> d!52738 (= lt!11485 (foldMap!4 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2))))

(declare-fun e!33440 () Object!326)

(assert (=> d!52738 (= lt!11485 e!33440)))

(declare-fun c!13652 () Bool)

(assert (=> d!52738 (= c!13652 (is-Nil!533 (t!47296 xs!978)))))

(assert (=> d!52738 (= (foldMap!3 lambda!9116 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2) lt!11485)))

(declare-fun b!62372 () Bool)

(assert (=> b!62372 (= e!33440 (empty!9 lambda!9116 BigIntAdditiveMonoid!2))))

(declare-fun b!62373 () Bool)

(assert (=> b!62373 (= e!33440 (append!4 lambda!9116 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9117 (h!770 (t!47296 xs!978))) (foldMap!3 lambda!9116 (t!47296 (t!47296 xs!978)) lambda!9117 BigIntAdditiveMonoid!2)))))

(assert (= (and d!52738 c!13652) b!62372))

(assert (= (and d!52738 (not c!13652)) b!62373))

(declare-fun b_lambda!15561 () Bool)

(assert (=> (not b_lambda!15561) (not b!62373)))

(declare-fun m!68150 () Bool)

(assert (=> d!52738 m!68150))

(assert (=> b!62372 m!68126))

(declare-fun m!68152 () Bool)

(assert (=> b!62373 m!68152))

(declare-fun m!68154 () Bool)

(assert (=> b!62373 m!68154))

(assert (=> b!62373 m!68152))

(assert (=> b!62373 m!68154))

(declare-fun m!68156 () Bool)

(assert (=> b!62373 m!68156))

(assert (=> b!62359 d!52738))

(declare-fun d!52740 () Bool)

(declare-fun c!13653 () Bool)

(assert (=> d!52740 (= c!13653 (is-Nil!533 (t!47296 xs!978)))))

(declare-fun e!33441 () Int)

(assert (=> d!52740 (= (sum!1 (t!47296 xs!978)) e!33441)))

(declare-fun b!62374 () Bool)

(assert (=> b!62374 (= e!33441 0)))

(declare-fun b!62375 () Bool)

(assert (=> b!62375 (= e!33441 (+ (h!770 (t!47296 xs!978)) (sum!1 (t!47296 (t!47296 xs!978)))))))

(assert (= (and d!52740 c!13653) b!62374))

(assert (= (and d!52740 (not c!13653)) b!62375))

(declare-fun m!68158 () Bool)

(assert (=> b!62375 m!68158))

(assert (=> b!62364 d!52740))

(declare-fun d!52742 () Bool)

(declare-fun lt!11486 () Object!326)

(assert (=> d!52742 (= lt!11486 (foldMap!4 (t!47296 xs!978) lambda!9127 BigIntAdditiveMonoid!2))))

(declare-fun e!33442 () Object!326)

(assert (=> d!52742 (= lt!11486 e!33442)))

(declare-fun c!13654 () Bool)

(assert (=> d!52742 (= c!13654 (is-Nil!533 (t!47296 xs!978)))))

(assert (=> d!52742 (= (foldMap!3 lambda!9126 (t!47296 xs!978) lambda!9127 BigIntAdditiveMonoid!2) lt!11486)))

(declare-fun b!62376 () Bool)

(assert (=> b!62376 (= e!33442 (empty!9 lambda!9126 BigIntAdditiveMonoid!2))))

(declare-fun b!62377 () Bool)

(assert (=> b!62377 (= e!33442 (append!4 lambda!9126 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9127 (h!770 (t!47296 xs!978))) (foldMap!3 lambda!9126 (t!47296 (t!47296 xs!978)) lambda!9127 BigIntAdditiveMonoid!2)))))

(assert (= (and d!52742 c!13654) b!62376))

(assert (= (and d!52742 (not c!13654)) b!62377))

(declare-fun b_lambda!15563 () Bool)

(assert (=> (not b_lambda!15563) (not b!62377)))

(declare-fun m!68160 () Bool)

(assert (=> d!52742 m!68160))

(declare-fun m!68162 () Bool)

(assert (=> b!62376 m!68162))

(declare-fun m!68164 () Bool)

(assert (=> b!62377 m!68164))

(declare-fun m!68166 () Bool)

(assert (=> b!62377 m!68166))

(assert (=> b!62377 m!68164))

(assert (=> b!62377 m!68166))

(declare-fun m!68168 () Bool)

(assert (=> b!62377 m!68168))

(assert (=> b!62364 d!52742))

(declare-fun bs!37405 () Bool)

(declare-fun b!62378 () Bool)

(assert (= bs!37405 (and b!62378 b!62347)))

(declare-fun lambda!9130 () Int)

(assert (=> bs!37405 (= lambda!9130 lambda!9116)))

(declare-fun bs!37406 () Bool)

(assert (= bs!37406 (and b!62378 b!62364)))

(assert (=> bs!37406 (= lambda!9130 lambda!9126)))

(declare-fun bs!37407 () Bool)

(assert (= bs!37407 (and b!62378 b!62365)))

(assert (=> bs!37407 (= lambda!9130 lambda!9128)))

(declare-fun lambda!9131 () Int)

(assert (=> bs!37405 (= lambda!9131 lambda!9117)))

(assert (=> bs!37406 (= lambda!9131 lambda!9127)))

(assert (=> bs!37407 (= lambda!9131 lambda!9129)))

(declare-fun bs!37408 () Bool)

(declare-fun b!62379 () Bool)

(assert (= bs!37408 (and b!62379 b!62347)))

(declare-fun lambda!9132 () Int)

(assert (=> bs!37408 (= lambda!9132 lambda!9116)))

(declare-fun bs!37409 () Bool)

(assert (= bs!37409 (and b!62379 b!62364)))

(assert (=> bs!37409 (= lambda!9132 lambda!9126)))

(declare-fun bs!37410 () Bool)

(assert (= bs!37410 (and b!62379 b!62365)))

(assert (=> bs!37410 (= lambda!9132 lambda!9128)))

(declare-fun bs!37411 () Bool)

(assert (= bs!37411 (and b!62379 b!62378)))

(assert (=> bs!37411 (= lambda!9132 lambda!9130)))

(declare-fun lambda!9133 () Int)

(assert (=> bs!37408 (= lambda!9133 lambda!9117)))

(assert (=> bs!37409 (= lambda!9133 lambda!9127)))

(assert (=> bs!37410 (= lambda!9133 lambda!9129)))

(assert (=> bs!37411 (= lambda!9133 lambda!9131)))

(declare-fun e!33443 () Bool)

(assert (=> b!62378 (= e!33443 (= (sum!1 (t!47296 (t!47296 xs!978))) (value!5072 (foldMap!3 lambda!9130 (t!47296 (t!47296 xs!978)) lambda!9131 BigIntAdditiveMonoid!2))))))

(declare-fun lt!11487 () Bool)

(assert (=> b!62378 (= lt!11487 (test!5 (t!47296 (t!47296 (t!47296 xs!978)))))))

(declare-fun d!52744 () Bool)

(assert (=> d!52744 e!33443))

(declare-fun c!13655 () Bool)

(assert (=> d!52744 (= c!13655 (is-Cons!532 (t!47296 (t!47296 xs!978))))))

(assert (=> d!52744 (= (test!5 (t!47296 (t!47296 xs!978))) true)))

(assert (=> b!62379 (= e!33443 (= (sum!1 (t!47296 (t!47296 xs!978))) (value!5072 (foldMap!3 lambda!9132 (t!47296 (t!47296 xs!978)) lambda!9133 BigIntAdditiveMonoid!2))))))

(assert (= (and d!52744 c!13655) b!62378))

(assert (= (and d!52744 (not c!13655)) b!62379))

(assert (=> b!62378 m!68158))

(declare-fun m!68170 () Bool)

(assert (=> b!62378 m!68170))

(declare-fun m!68172 () Bool)

(assert (=> b!62378 m!68172))

(assert (=> b!62379 m!68158))

(declare-fun m!68174 () Bool)

(assert (=> b!62379 m!68174))

(assert (=> b!62364 d!52744))

(declare-fun d!52746 () Bool)

(assert (=> d!52746 true))

(assert (=> d!52746 true))

(declare-fun res!29025 () Object!326)

(assert (=> d!52746 (= (foldMap!4 xs!978 lambda!9117 BigIntAdditiveMonoid!2) res!29025)))

(assert (=> d!52730 d!52746))

(declare-fun b!62385 () Bool)

(declare-fun e!33446 () Object!326)

(declare-fun lt!11493 () Int)

(assert (=> b!62385 (= e!33446 (Integer!315 lt!11493))))

(assert (=> b!62385 (dynLambda!945 lambda!9116 (Integer!315 lt!11493))))

(declare-fun empty!10 (Object!326) Int)

(assert (=> b!62385 (= lt!11493 (empty!10 BigIntAdditiveMonoid!2))))

(declare-fun d!52748 () Bool)

(declare-fun lt!11492 () Object!326)

(declare-fun empty!126 (Object!326) Object!326)

(assert (=> d!52748 (= lt!11492 (empty!126 BigIntAdditiveMonoid!2))))

(assert (=> d!52748 (= lt!11492 e!33446)))

(declare-fun c!13658 () Bool)

(assert (=> d!52748 (= c!13658 (isMonoidExt!0 BigIntAdditiveMonoid!2 lambda!9116))))

(assert (=> d!52748 (= (empty!9 lambda!9116 BigIntAdditiveMonoid!2) lt!11492)))

(declare-fun b!62384 () Bool)

(declare-fun empty!125 (Int Object!326) Object!326)

(assert (=> b!62384 (= e!33446 (empty!125 lambda!9116 BigIntAdditiveMonoid!2))))

(assert (= (and d!52748 c!13658) b!62384))

(assert (= (and d!52748 (not c!13658)) b!62385))

(declare-fun b_lambda!15565 () Bool)

(assert (=> (not b_lambda!15565) (not b!62385)))

(declare-fun m!68176 () Bool)

(assert (=> b!62385 m!68176))

(declare-fun m!68178 () Bool)

(assert (=> b!62385 m!68178))

(declare-fun m!68180 () Bool)

(assert (=> d!52748 m!68180))

(assert (=> d!52748 m!68146))

(declare-fun m!68182 () Bool)

(assert (=> b!62384 m!68182))

(assert (=> b!62358 d!52748))

(assert (=> b!62353 d!52740))

(assert (=> b!62365 d!52740))

(declare-fun d!52750 () Bool)

(declare-fun lt!11494 () Object!326)

(assert (=> d!52750 (= lt!11494 (foldMap!4 (t!47296 xs!978) lambda!9129 BigIntAdditiveMonoid!2))))

(declare-fun e!33447 () Object!326)

(assert (=> d!52750 (= lt!11494 e!33447)))

(declare-fun c!13659 () Bool)

(assert (=> d!52750 (= c!13659 (is-Nil!533 (t!47296 xs!978)))))

(assert (=> d!52750 (= (foldMap!3 lambda!9128 (t!47296 xs!978) lambda!9129 BigIntAdditiveMonoid!2) lt!11494)))

(declare-fun b!62386 () Bool)

(assert (=> b!62386 (= e!33447 (empty!9 lambda!9128 BigIntAdditiveMonoid!2))))

(declare-fun b!62387 () Bool)

(assert (=> b!62387 (= e!33447 (append!4 lambda!9128 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9129 (h!770 (t!47296 xs!978))) (foldMap!3 lambda!9128 (t!47296 (t!47296 xs!978)) lambda!9129 BigIntAdditiveMonoid!2)))))

(assert (= (and d!52750 c!13659) b!62386))

(assert (= (and d!52750 (not c!13659)) b!62387))

(declare-fun b_lambda!15567 () Bool)

(assert (=> (not b_lambda!15567) (not b!62387)))

(declare-fun m!68184 () Bool)

(assert (=> d!52750 m!68184))

(declare-fun m!68186 () Bool)

(assert (=> b!62386 m!68186))

(declare-fun m!68188 () Bool)

(assert (=> b!62387 m!68188))

(declare-fun m!68190 () Bool)

(assert (=> b!62387 m!68190))

(assert (=> b!62387 m!68188))

(assert (=> b!62387 m!68190))

(declare-fun m!68192 () Bool)

(assert (=> b!62387 m!68192))

(assert (=> b!62365 d!52750))

(declare-fun lt!11497 () Object!326)

(assert (=> d!52730 (= lt!11497 (foldMap!3 lambda!9116 xs!978 lambda!9117 BigIntAdditiveMonoid!2))))

(assert (=> d!52730 (= true (dynLambda!945 lambda!9116 lt!11497))))

(declare-fun b_lambda!15569 () Bool)

(assert (=> (not b_lambda!15569) (not d!52730)))

(declare-fun m!68194 () Bool)

(assert (=> d!52730 m!68194))

(declare-fun b_lambda!15571 () Bool)

(assert (= b_lambda!15561 (or b!62347 b_lambda!15571)))

(declare-fun bs!37412 () Bool)

(declare-fun d!52752 () Bool)

(assert (= bs!37412 (and d!52752 b!62347)))

(assert (=> bs!37412 (= (dynLambda!944 lambda!9117 (h!770 (t!47296 xs!978))) (Integer!315 (h!770 (t!47296 xs!978))))))

(assert (=> b!62373 d!52752))

(declare-fun b_lambda!15573 () Bool)

(assert (= b_lambda!15559 (or b!62347 b_lambda!15573)))

(declare-fun bs!37413 () Bool)

(declare-fun d!52754 () Bool)

(assert (= bs!37413 (and d!52754 b!62347)))

(assert (=> bs!37413 (= (dynLambda!945 lambda!9116 (Integer!315 lt!11484)) (is-Integer!315 (Integer!315 lt!11484)))))

(assert (=> b!62371 d!52754))

(declare-fun b_lambda!15575 () Bool)

(assert (= b_lambda!15567 (or b!62365 b_lambda!15575)))

(declare-fun bs!37414 () Bool)

(declare-fun d!52756 () Bool)

(assert (= bs!37414 (and d!52756 b!62365)))

(assert (=> bs!37414 (= (dynLambda!944 lambda!9129 (h!770 (t!47296 xs!978))) (Integer!315 (h!770 (t!47296 xs!978))))))

(assert (=> b!62387 d!52756))

(declare-fun b_lambda!15577 () Bool)

(assert (= b_lambda!15565 (or b!62347 b_lambda!15577)))

(declare-fun bs!37415 () Bool)

(declare-fun d!52758 () Bool)

(assert (= bs!37415 (and d!52758 b!62347)))

(assert (=> bs!37415 (= (dynLambda!945 lambda!9116 (Integer!315 lt!11493)) (is-Integer!315 (Integer!315 lt!11493)))))

(assert (=> b!62385 d!52758))

(declare-fun b_lambda!15579 () Bool)

(assert (= b_lambda!15569 (or b!62347 b_lambda!15579)))

(declare-fun bs!37416 () Bool)

(declare-fun d!52760 () Bool)

(assert (= bs!37416 (and d!52760 b!62347)))

(assert (=> bs!37416 (= (dynLambda!945 lambda!9116 lt!11497) (is-Integer!315 lt!11497))))

(assert (=> d!52730 d!52760))

(declare-fun b_lambda!15581 () Bool)

(assert (= b_lambda!15563 (or b!62364 b_lambda!15581)))

(declare-fun bs!37417 () Bool)

(declare-fun d!52762 () Bool)

(assert (= bs!37417 (and d!52762 b!62364)))

(assert (=> bs!37417 (= (dynLambda!944 lambda!9127 (h!770 (t!47296 xs!978))) (Integer!315 (h!770 (t!47296 xs!978))))))

(assert (=> b!62377 d!52762))

(push 1)

(assert (not b!62378))

(assert (not b_lambda!15573))

(assert (not b!62386))

(assert (not b!62371))

(assert (not b!62387))

(assert (not b_lambda!15575))

(assert (not b!62376))

(assert (not b_lambda!15557))

(assert (not b_lambda!15581))

(assert (not b_lambda!15579))

(assert (not b!62370))

(assert (not d!52742))

(assert (not b!62384))

(assert (not d!52738))

(assert (not b!62372))

(assert (not b!62373))

(assert (not b_lambda!15571))

(assert (not b_lambda!15577))

(assert (not d!52736))

(assert (not b!62375))

(assert (not d!52750))

(assert (not b!62377))

(assert (not b!62385))

(assert (not d!52748))

(assert (not b!62379))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52764 () Bool)

(assert (=> d!52764 (= (append!5 BigIntAdditiveMonoid!2 (value!5072 (dynLambda!944 lambda!9117 (h!770 xs!978))) (value!5072 (foldMap!3 lambda!9116 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2))) (+ (value!5072 (dynLambda!944 lambda!9117 (h!770 xs!978))) (value!5072 (foldMap!3 lambda!9116 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2))))))

(assert (=> b!62371 d!52764))

(declare-fun d!52766 () Bool)

(declare-fun res!29029 () Object!326)

(declare-fun empty!127 (Object!326) Object!326)

(assert (=> d!52766 (= res!29029 (empty!127 BigIntAdditiveMonoid!2))))

(declare-fun lt!11500 () Object!326)

(assert (=> d!52766 (dynLambda!945 lambda!9116 lt!11500)))

(assert (=> d!52766 (= lt!11500 res!29029)))

(assert (=> d!52766 (= (empty!125 lambda!9116 BigIntAdditiveMonoid!2) res!29029)))

(declare-fun b_lambda!15583 () Bool)

(assert (=> (not b_lambda!15583) (not d!52766)))

(declare-fun bs!37418 () Bool)

(assert (= bs!37418 d!52766))

(declare-fun m!68196 () Bool)

(assert (=> bs!37418 m!68196))

(declare-fun m!68198 () Bool)

(assert (=> bs!37418 m!68198))

(assert (=> b!62384 d!52766))

(declare-fun d!52768 () Bool)

(assert (=> d!52768 (= (empty!10 BigIntAdditiveMonoid!2) 0)))

(assert (=> b!62385 d!52768))

(declare-fun b!62391 () Bool)

(declare-fun e!33448 () Object!326)

(declare-fun lt!11502 () Int)

(assert (=> b!62391 (= e!33448 (Integer!315 lt!11502))))

(assert (=> b!62391 (dynLambda!945 lambda!9126 (Integer!315 lt!11502))))

(assert (=> b!62391 (= lt!11502 (append!5 BigIntAdditiveMonoid!2 (value!5072 (dynLambda!944 lambda!9127 (h!770 (t!47296 xs!978)))) (value!5072 (foldMap!3 lambda!9126 (t!47296 (t!47296 xs!978)) lambda!9127 BigIntAdditiveMonoid!2))))))

(assert (=> b!62391 (is-Integer!315 (foldMap!3 lambda!9126 (t!47296 (t!47296 xs!978)) lambda!9127 BigIntAdditiveMonoid!2))))

(assert (=> b!62391 (is-Integer!315 (dynLambda!944 lambda!9127 (h!770 (t!47296 xs!978))))))

(declare-fun lt!11501 () Object!326)

(declare-fun d!52770 () Bool)

(assert (=> d!52770 (= lt!11501 (append!167 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9127 (h!770 (t!47296 xs!978))) (foldMap!3 lambda!9126 (t!47296 (t!47296 xs!978)) lambda!9127 BigIntAdditiveMonoid!2)))))

(assert (=> d!52770 (= lt!11501 e!33448)))

(declare-fun c!13660 () Bool)

(assert (=> d!52770 (= c!13660 (isMonoidExt!0 BigIntAdditiveMonoid!2 lambda!9126))))

(assert (=> d!52770 (= (append!4 lambda!9126 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9127 (h!770 (t!47296 xs!978))) (foldMap!3 lambda!9126 (t!47296 (t!47296 xs!978)) lambda!9127 BigIntAdditiveMonoid!2)) lt!11501)))

(declare-fun b!62390 () Bool)

(assert (=> b!62390 (= e!33448 (append!165 lambda!9126 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9127 (h!770 (t!47296 xs!978))) (foldMap!3 lambda!9126 (t!47296 (t!47296 xs!978)) lambda!9127 BigIntAdditiveMonoid!2)))))

(assert (= (and d!52770 c!13660) b!62390))

(assert (= (and d!52770 (not c!13660)) b!62391))

(declare-fun b_lambda!15585 () Bool)

(assert (=> (not b_lambda!15585) (not b!62391)))

(declare-fun m!68200 () Bool)

(assert (=> b!62391 m!68200))

(declare-fun m!68202 () Bool)

(assert (=> b!62391 m!68202))

(assert (=> d!52770 m!68164))

(assert (=> d!52770 m!68166))

(declare-fun m!68204 () Bool)

(assert (=> d!52770 m!68204))

(declare-fun m!68206 () Bool)

(assert (=> d!52770 m!68206))

(assert (=> b!62390 m!68164))

(assert (=> b!62390 m!68166))

(declare-fun m!68208 () Bool)

(assert (=> b!62390 m!68208))

(assert (=> b!62377 d!52770))

(declare-fun d!52772 () Bool)

(declare-fun lt!11503 () Object!326)

(assert (=> d!52772 (= lt!11503 (foldMap!4 (t!47296 (t!47296 xs!978)) lambda!9127 BigIntAdditiveMonoid!2))))

(declare-fun e!33449 () Object!326)

(assert (=> d!52772 (= lt!11503 e!33449)))

(declare-fun c!13661 () Bool)

(assert (=> d!52772 (= c!13661 (is-Nil!533 (t!47296 (t!47296 xs!978))))))

(assert (=> d!52772 (= (foldMap!3 lambda!9126 (t!47296 (t!47296 xs!978)) lambda!9127 BigIntAdditiveMonoid!2) lt!11503)))

(declare-fun b!62392 () Bool)

(assert (=> b!62392 (= e!33449 (empty!9 lambda!9126 BigIntAdditiveMonoid!2))))

(declare-fun b!62393 () Bool)

(assert (=> b!62393 (= e!33449 (append!4 lambda!9126 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9127 (h!770 (t!47296 (t!47296 xs!978)))) (foldMap!3 lambda!9126 (t!47296 (t!47296 (t!47296 xs!978))) lambda!9127 BigIntAdditiveMonoid!2)))))

(assert (= (and d!52772 c!13661) b!62392))

(assert (= (and d!52772 (not c!13661)) b!62393))

(declare-fun b_lambda!15587 () Bool)

(assert (=> (not b_lambda!15587) (not b!62393)))

(declare-fun m!68210 () Bool)

(assert (=> d!52772 m!68210))

(assert (=> b!62392 m!68162))

(declare-fun m!68212 () Bool)

(assert (=> b!62393 m!68212))

(declare-fun m!68214 () Bool)

(assert (=> b!62393 m!68214))

(assert (=> b!62393 m!68212))

(assert (=> b!62393 m!68214))

(declare-fun m!68216 () Bool)

(assert (=> b!62393 m!68216))

(assert (=> b!62377 d!52772))

(declare-fun d!52774 () Bool)

(declare-fun c!13662 () Bool)

(assert (=> d!52774 (= c!13662 (is-Nil!533 (t!47296 (t!47296 xs!978))))))

(declare-fun e!33450 () Int)

(assert (=> d!52774 (= (sum!1 (t!47296 (t!47296 xs!978))) e!33450)))

(declare-fun b!62394 () Bool)

(assert (=> b!62394 (= e!33450 0)))

(declare-fun b!62395 () Bool)

(assert (=> b!62395 (= e!33450 (+ (h!770 (t!47296 (t!47296 xs!978))) (sum!1 (t!47296 (t!47296 (t!47296 xs!978))))))))

(assert (= (and d!52774 c!13662) b!62394))

(assert (= (and d!52774 (not c!13662)) b!62395))

(declare-fun m!68218 () Bool)

(assert (=> b!62395 m!68218))

(assert (=> b!62378 d!52774))

(declare-fun d!52776 () Bool)

(declare-fun lt!11504 () Object!326)

(assert (=> d!52776 (= lt!11504 (foldMap!4 (t!47296 (t!47296 xs!978)) lambda!9131 BigIntAdditiveMonoid!2))))

(declare-fun e!33451 () Object!326)

(assert (=> d!52776 (= lt!11504 e!33451)))

(declare-fun c!13663 () Bool)

(assert (=> d!52776 (= c!13663 (is-Nil!533 (t!47296 (t!47296 xs!978))))))

(assert (=> d!52776 (= (foldMap!3 lambda!9130 (t!47296 (t!47296 xs!978)) lambda!9131 BigIntAdditiveMonoid!2) lt!11504)))

(declare-fun b!62396 () Bool)

(assert (=> b!62396 (= e!33451 (empty!9 lambda!9130 BigIntAdditiveMonoid!2))))

(declare-fun b!62397 () Bool)

(assert (=> b!62397 (= e!33451 (append!4 lambda!9130 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9131 (h!770 (t!47296 (t!47296 xs!978)))) (foldMap!3 lambda!9130 (t!47296 (t!47296 (t!47296 xs!978))) lambda!9131 BigIntAdditiveMonoid!2)))))

(assert (= (and d!52776 c!13663) b!62396))

(assert (= (and d!52776 (not c!13663)) b!62397))

(declare-fun b_lambda!15589 () Bool)

(assert (=> (not b_lambda!15589) (not b!62397)))

(declare-fun m!68220 () Bool)

(assert (=> d!52776 m!68220))

(declare-fun m!68222 () Bool)

(assert (=> b!62396 m!68222))

(declare-fun m!68224 () Bool)

(assert (=> b!62397 m!68224))

(declare-fun m!68226 () Bool)

(assert (=> b!62397 m!68226))

(assert (=> b!62397 m!68224))

(assert (=> b!62397 m!68226))

(declare-fun m!68228 () Bool)

(assert (=> b!62397 m!68228))

(assert (=> b!62378 d!52776))

(declare-fun bs!37419 () Bool)

(declare-fun b!62398 () Bool)

(assert (= bs!37419 (and b!62398 b!62364)))

(declare-fun lambda!9134 () Int)

(assert (=> bs!37419 (= lambda!9134 lambda!9126)))

(declare-fun bs!37420 () Bool)

(assert (= bs!37420 (and b!62398 b!62365)))

(assert (=> bs!37420 (= lambda!9134 lambda!9128)))

(declare-fun bs!37421 () Bool)

(assert (= bs!37421 (and b!62398 b!62347)))

(assert (=> bs!37421 (= lambda!9134 lambda!9116)))

(declare-fun bs!37422 () Bool)

(assert (= bs!37422 (and b!62398 b!62379)))

(assert (=> bs!37422 (= lambda!9134 lambda!9132)))

(declare-fun bs!37423 () Bool)

(assert (= bs!37423 (and b!62398 b!62378)))

(assert (=> bs!37423 (= lambda!9134 lambda!9130)))

(declare-fun lambda!9135 () Int)

(assert (=> bs!37421 (= lambda!9135 lambda!9117)))

(assert (=> bs!37419 (= lambda!9135 lambda!9127)))

(assert (=> bs!37423 (= lambda!9135 lambda!9131)))

(assert (=> bs!37420 (= lambda!9135 lambda!9129)))

(assert (=> bs!37422 (= lambda!9135 lambda!9133)))

(declare-fun bs!37424 () Bool)

(declare-fun b!62399 () Bool)

(assert (= bs!37424 (and b!62399 b!62364)))

(declare-fun lambda!9136 () Int)

(assert (=> bs!37424 (= lambda!9136 lambda!9126)))

(declare-fun bs!37425 () Bool)

(assert (= bs!37425 (and b!62399 b!62365)))

(assert (=> bs!37425 (= lambda!9136 lambda!9128)))

(declare-fun bs!37426 () Bool)

(assert (= bs!37426 (and b!62399 b!62347)))

(assert (=> bs!37426 (= lambda!9136 lambda!9116)))

(declare-fun bs!37427 () Bool)

(assert (= bs!37427 (and b!62399 b!62398)))

(assert (=> bs!37427 (= lambda!9136 lambda!9134)))

(declare-fun bs!37428 () Bool)

(assert (= bs!37428 (and b!62399 b!62379)))

(assert (=> bs!37428 (= lambda!9136 lambda!9132)))

(declare-fun bs!37429 () Bool)

(assert (= bs!37429 (and b!62399 b!62378)))

(assert (=> bs!37429 (= lambda!9136 lambda!9130)))

(declare-fun lambda!9137 () Int)

(assert (=> bs!37426 (= lambda!9137 lambda!9117)))

(assert (=> bs!37424 (= lambda!9137 lambda!9127)))

(assert (=> bs!37429 (= lambda!9137 lambda!9131)))

(assert (=> bs!37425 (= lambda!9137 lambda!9129)))

(assert (=> bs!37427 (= lambda!9137 lambda!9135)))

(assert (=> bs!37428 (= lambda!9137 lambda!9133)))

(declare-fun e!33452 () Bool)

(assert (=> b!62398 (= e!33452 (= (sum!1 (t!47296 (t!47296 (t!47296 xs!978)))) (value!5072 (foldMap!3 lambda!9134 (t!47296 (t!47296 (t!47296 xs!978))) lambda!9135 BigIntAdditiveMonoid!2))))))

(declare-fun lt!11505 () Bool)

(assert (=> b!62398 (= lt!11505 (test!5 (t!47296 (t!47296 (t!47296 (t!47296 xs!978))))))))

(declare-fun d!52778 () Bool)

(assert (=> d!52778 e!33452))

(declare-fun c!13664 () Bool)

(assert (=> d!52778 (= c!13664 (is-Cons!532 (t!47296 (t!47296 (t!47296 xs!978)))))))

(assert (=> d!52778 (= (test!5 (t!47296 (t!47296 (t!47296 xs!978)))) true)))

(assert (=> b!62399 (= e!33452 (= (sum!1 (t!47296 (t!47296 (t!47296 xs!978)))) (value!5072 (foldMap!3 lambda!9136 (t!47296 (t!47296 (t!47296 xs!978))) lambda!9137 BigIntAdditiveMonoid!2))))))

(assert (= (and d!52778 c!13664) b!62398))

(assert (= (and d!52778 (not c!13664)) b!62399))

(assert (=> b!62398 m!68218))

(declare-fun m!68230 () Bool)

(assert (=> b!62398 m!68230))

(declare-fun m!68232 () Bool)

(assert (=> b!62398 m!68232))

(assert (=> b!62399 m!68218))

(declare-fun m!68234 () Bool)

(assert (=> b!62399 m!68234))

(assert (=> b!62378 d!52778))

(declare-fun d!52780 () Bool)

(assert (=> d!52780 true))

(assert (=> d!52780 true))

(declare-fun res!29032 () Object!326)

(assert (=> d!52780 (= (empty!126 BigIntAdditiveMonoid!2) res!29032)))

(assert (=> d!52748 d!52780))

(declare-fun d!52782 () Bool)

(assert (=> d!52782 (= (isMonoidExt!0 BigIntAdditiveMonoid!2 lambda!9116) (is-MonoidExt!23 BigIntAdditiveMonoid!2))))

(assert (=> d!52748 d!52782))

(declare-fun d!52784 () Bool)

(assert (=> d!52784 true))

(assert (=> d!52784 true))

(declare-fun res!29033 () Object!326)

(assert (=> d!52784 (= (foldMap!4 (t!47296 xs!978) lambda!9127 BigIntAdditiveMonoid!2) res!29033)))

(assert (=> d!52742 d!52784))

(assert (=> b!62372 d!52748))

(declare-fun d!52786 () Bool)

(assert (=> d!52786 true))

(assert (=> d!52786 true))

(declare-fun res!29034 () Object!326)

(assert (=> d!52786 (= (foldMap!4 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2) res!29034)))

(assert (=> d!52738 d!52786))

(declare-fun d!52788 () Bool)

(declare-fun res!29037 () Object!326)

(declare-fun append!166 (Object!326 Object!326 Object!326) Object!326)

(assert (=> d!52788 (= res!29037 (append!166 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9117 (h!770 xs!978)) (foldMap!3 lambda!9116 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2)))))

(declare-fun lt!11508 () Object!326)

(assert (=> d!52788 (dynLambda!945 lambda!9116 lt!11508)))

(assert (=> d!52788 (= lt!11508 res!29037)))

(assert (=> d!52788 (= (append!165 lambda!9116 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9117 (h!770 xs!978)) (foldMap!3 lambda!9116 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2)) res!29037)))

(declare-fun b_lambda!15591 () Bool)

(assert (=> (not b_lambda!15591) (not d!52788)))

(declare-fun bs!37430 () Bool)

(assert (= bs!37430 d!52788))

(assert (=> bs!37430 m!68128))

(assert (=> bs!37430 m!68130))

(declare-fun m!68236 () Bool)

(assert (=> bs!37430 m!68236))

(declare-fun m!68238 () Bool)

(assert (=> bs!37430 m!68238))

(assert (=> b!62370 d!52788))

(declare-fun b!62401 () Bool)

(declare-fun e!33453 () Object!326)

(declare-fun lt!11510 () Int)

(assert (=> b!62401 (= e!33453 (Integer!315 lt!11510))))

(assert (=> b!62401 (dynLambda!945 lambda!9116 (Integer!315 lt!11510))))

(assert (=> b!62401 (= lt!11510 (append!5 BigIntAdditiveMonoid!2 (value!5072 (dynLambda!944 lambda!9117 (h!770 (t!47296 xs!978)))) (value!5072 (foldMap!3 lambda!9116 (t!47296 (t!47296 xs!978)) lambda!9117 BigIntAdditiveMonoid!2))))))

(assert (=> b!62401 (is-Integer!315 (foldMap!3 lambda!9116 (t!47296 (t!47296 xs!978)) lambda!9117 BigIntAdditiveMonoid!2))))

(assert (=> b!62401 (is-Integer!315 (dynLambda!944 lambda!9117 (h!770 (t!47296 xs!978))))))

(declare-fun d!52790 () Bool)

(declare-fun lt!11509 () Object!326)

(assert (=> d!52790 (= lt!11509 (append!167 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9117 (h!770 (t!47296 xs!978))) (foldMap!3 lambda!9116 (t!47296 (t!47296 xs!978)) lambda!9117 BigIntAdditiveMonoid!2)))))

(assert (=> d!52790 (= lt!11509 e!33453)))

(declare-fun c!13665 () Bool)

(assert (=> d!52790 (= c!13665 (isMonoidExt!0 BigIntAdditiveMonoid!2 lambda!9116))))

(assert (=> d!52790 (= (append!4 lambda!9116 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9117 (h!770 (t!47296 xs!978))) (foldMap!3 lambda!9116 (t!47296 (t!47296 xs!978)) lambda!9117 BigIntAdditiveMonoid!2)) lt!11509)))

(declare-fun b!62400 () Bool)

(assert (=> b!62400 (= e!33453 (append!165 lambda!9116 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9117 (h!770 (t!47296 xs!978))) (foldMap!3 lambda!9116 (t!47296 (t!47296 xs!978)) lambda!9117 BigIntAdditiveMonoid!2)))))

(assert (= (and d!52790 c!13665) b!62400))

(assert (= (and d!52790 (not c!13665)) b!62401))

(declare-fun b_lambda!15593 () Bool)

(assert (=> (not b_lambda!15593) (not b!62401)))

(declare-fun m!68240 () Bool)

(assert (=> b!62401 m!68240))

(declare-fun m!68242 () Bool)

(assert (=> b!62401 m!68242))

(assert (=> d!52790 m!68152))

(assert (=> d!52790 m!68154))

(declare-fun m!68244 () Bool)

(assert (=> d!52790 m!68244))

(assert (=> d!52790 m!68146))

(assert (=> b!62400 m!68152))

(assert (=> b!62400 m!68154))

(declare-fun m!68246 () Bool)

(assert (=> b!62400 m!68246))

(assert (=> b!62373 d!52790))

(declare-fun d!52792 () Bool)

(declare-fun lt!11511 () Object!326)

(assert (=> d!52792 (= lt!11511 (foldMap!4 (t!47296 (t!47296 xs!978)) lambda!9117 BigIntAdditiveMonoid!2))))

(declare-fun e!33454 () Object!326)

(assert (=> d!52792 (= lt!11511 e!33454)))

(declare-fun c!13666 () Bool)

(assert (=> d!52792 (= c!13666 (is-Nil!533 (t!47296 (t!47296 xs!978))))))

(assert (=> d!52792 (= (foldMap!3 lambda!9116 (t!47296 (t!47296 xs!978)) lambda!9117 BigIntAdditiveMonoid!2) lt!11511)))

(declare-fun b!62402 () Bool)

(assert (=> b!62402 (= e!33454 (empty!9 lambda!9116 BigIntAdditiveMonoid!2))))

(declare-fun b!62403 () Bool)

(assert (=> b!62403 (= e!33454 (append!4 lambda!9116 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9117 (h!770 (t!47296 (t!47296 xs!978)))) (foldMap!3 lambda!9116 (t!47296 (t!47296 (t!47296 xs!978))) lambda!9117 BigIntAdditiveMonoid!2)))))

(assert (= (and d!52792 c!13666) b!62402))

(assert (= (and d!52792 (not c!13666)) b!62403))

(declare-fun b_lambda!15595 () Bool)

(assert (=> (not b_lambda!15595) (not b!62403)))

(declare-fun m!68248 () Bool)

(assert (=> d!52792 m!68248))

(assert (=> b!62402 m!68126))

(declare-fun m!68250 () Bool)

(assert (=> b!62403 m!68250))

(declare-fun m!68252 () Bool)

(assert (=> b!62403 m!68252))

(assert (=> b!62403 m!68250))

(assert (=> b!62403 m!68252))

(declare-fun m!68254 () Bool)

(assert (=> b!62403 m!68254))

(assert (=> b!62373 d!52792))

(declare-fun b!62405 () Bool)

(declare-fun e!33455 () Object!326)

(declare-fun lt!11513 () Int)

(assert (=> b!62405 (= e!33455 (Integer!315 lt!11513))))

(assert (=> b!62405 (dynLambda!945 lambda!9128 (Integer!315 lt!11513))))

(assert (=> b!62405 (= lt!11513 (append!5 BigIntAdditiveMonoid!2 (value!5072 (dynLambda!944 lambda!9129 (h!770 (t!47296 xs!978)))) (value!5072 (foldMap!3 lambda!9128 (t!47296 (t!47296 xs!978)) lambda!9129 BigIntAdditiveMonoid!2))))))

(assert (=> b!62405 (is-Integer!315 (foldMap!3 lambda!9128 (t!47296 (t!47296 xs!978)) lambda!9129 BigIntAdditiveMonoid!2))))

(assert (=> b!62405 (is-Integer!315 (dynLambda!944 lambda!9129 (h!770 (t!47296 xs!978))))))

(declare-fun d!52794 () Bool)

(declare-fun lt!11512 () Object!326)

(assert (=> d!52794 (= lt!11512 (append!167 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9129 (h!770 (t!47296 xs!978))) (foldMap!3 lambda!9128 (t!47296 (t!47296 xs!978)) lambda!9129 BigIntAdditiveMonoid!2)))))

(assert (=> d!52794 (= lt!11512 e!33455)))

(declare-fun c!13667 () Bool)

(assert (=> d!52794 (= c!13667 (isMonoidExt!0 BigIntAdditiveMonoid!2 lambda!9128))))

(assert (=> d!52794 (= (append!4 lambda!9128 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9129 (h!770 (t!47296 xs!978))) (foldMap!3 lambda!9128 (t!47296 (t!47296 xs!978)) lambda!9129 BigIntAdditiveMonoid!2)) lt!11512)))

(declare-fun b!62404 () Bool)

(assert (=> b!62404 (= e!33455 (append!165 lambda!9128 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9129 (h!770 (t!47296 xs!978))) (foldMap!3 lambda!9128 (t!47296 (t!47296 xs!978)) lambda!9129 BigIntAdditiveMonoid!2)))))

(assert (= (and d!52794 c!13667) b!62404))

(assert (= (and d!52794 (not c!13667)) b!62405))

(declare-fun b_lambda!15597 () Bool)

(assert (=> (not b_lambda!15597) (not b!62405)))

(declare-fun m!68256 () Bool)

(assert (=> b!62405 m!68256))

(declare-fun m!68258 () Bool)

(assert (=> b!62405 m!68258))

(assert (=> d!52794 m!68188))

(assert (=> d!52794 m!68190))

(declare-fun m!68260 () Bool)

(assert (=> d!52794 m!68260))

(declare-fun m!68262 () Bool)

(assert (=> d!52794 m!68262))

(assert (=> b!62404 m!68188))

(assert (=> b!62404 m!68190))

(declare-fun m!68264 () Bool)

(assert (=> b!62404 m!68264))

(assert (=> b!62387 d!52794))

(declare-fun d!52796 () Bool)

(declare-fun lt!11514 () Object!326)

(assert (=> d!52796 (= lt!11514 (foldMap!4 (t!47296 (t!47296 xs!978)) lambda!9129 BigIntAdditiveMonoid!2))))

(declare-fun e!33456 () Object!326)

(assert (=> d!52796 (= lt!11514 e!33456)))

(declare-fun c!13668 () Bool)

(assert (=> d!52796 (= c!13668 (is-Nil!533 (t!47296 (t!47296 xs!978))))))

(assert (=> d!52796 (= (foldMap!3 lambda!9128 (t!47296 (t!47296 xs!978)) lambda!9129 BigIntAdditiveMonoid!2) lt!11514)))

(declare-fun b!62406 () Bool)

(assert (=> b!62406 (= e!33456 (empty!9 lambda!9128 BigIntAdditiveMonoid!2))))

(declare-fun b!62407 () Bool)

(assert (=> b!62407 (= e!33456 (append!4 lambda!9128 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9129 (h!770 (t!47296 (t!47296 xs!978)))) (foldMap!3 lambda!9128 (t!47296 (t!47296 (t!47296 xs!978))) lambda!9129 BigIntAdditiveMonoid!2)))))

(assert (= (and d!52796 c!13668) b!62406))

(assert (= (and d!52796 (not c!13668)) b!62407))

(declare-fun b_lambda!15599 () Bool)

(assert (=> (not b_lambda!15599) (not b!62407)))

(declare-fun m!68266 () Bool)

(assert (=> d!52796 m!68266))

(assert (=> b!62406 m!68186))

(declare-fun m!68268 () Bool)

(assert (=> b!62407 m!68268))

(declare-fun m!68270 () Bool)

(assert (=> b!62407 m!68270))

(assert (=> b!62407 m!68268))

(assert (=> b!62407 m!68270))

(declare-fun m!68272 () Bool)

(assert (=> b!62407 m!68272))

(assert (=> b!62387 d!52796))

(assert (=> b!62379 d!52774))

(declare-fun d!52798 () Bool)

(declare-fun lt!11515 () Object!326)

(assert (=> d!52798 (= lt!11515 (foldMap!4 (t!47296 (t!47296 xs!978)) lambda!9133 BigIntAdditiveMonoid!2))))

(declare-fun e!33457 () Object!326)

(assert (=> d!52798 (= lt!11515 e!33457)))

(declare-fun c!13669 () Bool)

(assert (=> d!52798 (= c!13669 (is-Nil!533 (t!47296 (t!47296 xs!978))))))

(assert (=> d!52798 (= (foldMap!3 lambda!9132 (t!47296 (t!47296 xs!978)) lambda!9133 BigIntAdditiveMonoid!2) lt!11515)))

(declare-fun b!62408 () Bool)

(assert (=> b!62408 (= e!33457 (empty!9 lambda!9132 BigIntAdditiveMonoid!2))))

(declare-fun b!62409 () Bool)

(assert (=> b!62409 (= e!33457 (append!4 lambda!9132 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9133 (h!770 (t!47296 (t!47296 xs!978)))) (foldMap!3 lambda!9132 (t!47296 (t!47296 (t!47296 xs!978))) lambda!9133 BigIntAdditiveMonoid!2)))))

(assert (= (and d!52798 c!13669) b!62408))

(assert (= (and d!52798 (not c!13669)) b!62409))

(declare-fun b_lambda!15601 () Bool)

(assert (=> (not b_lambda!15601) (not b!62409)))

(declare-fun m!68274 () Bool)

(assert (=> d!52798 m!68274))

(declare-fun m!68276 () Bool)

(assert (=> b!62408 m!68276))

(declare-fun m!68278 () Bool)

(assert (=> b!62409 m!68278))

(declare-fun m!68280 () Bool)

(assert (=> b!62409 m!68280))

(assert (=> b!62409 m!68278))

(assert (=> b!62409 m!68280))

(declare-fun m!68282 () Bool)

(assert (=> b!62409 m!68282))

(assert (=> b!62379 d!52798))

(assert (=> b!62375 d!52774))

(declare-fun b!62411 () Bool)

(declare-fun e!33458 () Object!326)

(declare-fun lt!11517 () Int)

(assert (=> b!62411 (= e!33458 (Integer!315 lt!11517))))

(assert (=> b!62411 (dynLambda!945 lambda!9126 (Integer!315 lt!11517))))

(assert (=> b!62411 (= lt!11517 (empty!10 BigIntAdditiveMonoid!2))))

(declare-fun d!52800 () Bool)

(declare-fun lt!11516 () Object!326)

(assert (=> d!52800 (= lt!11516 (empty!126 BigIntAdditiveMonoid!2))))

(assert (=> d!52800 (= lt!11516 e!33458)))

(declare-fun c!13670 () Bool)

(assert (=> d!52800 (= c!13670 (isMonoidExt!0 BigIntAdditiveMonoid!2 lambda!9126))))

(assert (=> d!52800 (= (empty!9 lambda!9126 BigIntAdditiveMonoid!2) lt!11516)))

(declare-fun b!62410 () Bool)

(assert (=> b!62410 (= e!33458 (empty!125 lambda!9126 BigIntAdditiveMonoid!2))))

(assert (= (and d!52800 c!13670) b!62410))

(assert (= (and d!52800 (not c!13670)) b!62411))

(declare-fun b_lambda!15603 () Bool)

(assert (=> (not b_lambda!15603) (not b!62411)))

(declare-fun m!68284 () Bool)

(assert (=> b!62411 m!68284))

(assert (=> b!62411 m!68178))

(assert (=> d!52800 m!68180))

(assert (=> d!52800 m!68206))

(declare-fun m!68286 () Bool)

(assert (=> b!62410 m!68286))

(assert (=> b!62376 d!52800))

(declare-fun d!52802 () Bool)

(assert (=> d!52802 true))

(assert (=> d!52802 true))

(declare-fun res!29038 () Object!326)

(assert (=> d!52802 (= (foldMap!4 (t!47296 xs!978) lambda!9129 BigIntAdditiveMonoid!2) res!29038)))

(assert (=> d!52750 d!52802))

(declare-fun b!62413 () Bool)

(declare-fun e!33459 () Object!326)

(declare-fun lt!11519 () Int)

(assert (=> b!62413 (= e!33459 (Integer!315 lt!11519))))

(assert (=> b!62413 (dynLambda!945 lambda!9128 (Integer!315 lt!11519))))

(assert (=> b!62413 (= lt!11519 (empty!10 BigIntAdditiveMonoid!2))))

(declare-fun d!52804 () Bool)

(declare-fun lt!11518 () Object!326)

(assert (=> d!52804 (= lt!11518 (empty!126 BigIntAdditiveMonoid!2))))

(assert (=> d!52804 (= lt!11518 e!33459)))

(declare-fun c!13671 () Bool)

(assert (=> d!52804 (= c!13671 (isMonoidExt!0 BigIntAdditiveMonoid!2 lambda!9128))))

(assert (=> d!52804 (= (empty!9 lambda!9128 BigIntAdditiveMonoid!2) lt!11518)))

(declare-fun b!62412 () Bool)

(assert (=> b!62412 (= e!33459 (empty!125 lambda!9128 BigIntAdditiveMonoid!2))))

(assert (= (and d!52804 c!13671) b!62412))

(assert (= (and d!52804 (not c!13671)) b!62413))

(declare-fun b_lambda!15605 () Bool)

(assert (=> (not b_lambda!15605) (not b!62413)))

(declare-fun m!68288 () Bool)

(assert (=> b!62413 m!68288))

(assert (=> b!62413 m!68178))

(assert (=> d!52804 m!68180))

(assert (=> d!52804 m!68262))

(declare-fun m!68290 () Bool)

(assert (=> b!62412 m!68290))

(assert (=> b!62386 d!52804))

(declare-fun d!52806 () Bool)

(assert (=> d!52806 true))

(assert (=> d!52806 true))

(declare-fun res!29041 () Object!326)

(assert (=> d!52806 (= (append!167 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9117 (h!770 xs!978)) (foldMap!3 lambda!9116 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2)) res!29041)))

(assert (=> d!52736 d!52806))

(assert (=> d!52736 d!52782))

(declare-fun lt!11522 () Object!326)

(assert (=> d!52748 (= lt!11522 (empty!9 lambda!9116 BigIntAdditiveMonoid!2))))

(assert (=> d!52748 (= true (dynLambda!945 lambda!9116 lt!11522))))

(declare-fun b_lambda!15607 () Bool)

(assert (=> (not b_lambda!15607) (not d!52748)))

(declare-fun m!68292 () Bool)

(assert (=> d!52748 m!68292))

(declare-fun lt!11523 () Object!326)

(assert (=> d!52742 (= lt!11523 (foldMap!3 lambda!9126 (t!47296 xs!978) lambda!9127 BigIntAdditiveMonoid!2))))

(assert (=> d!52742 (= true (dynLambda!945 lambda!9126 lt!11523))))

(declare-fun b_lambda!15609 () Bool)

(assert (=> (not b_lambda!15609) (not d!52742)))

(declare-fun m!68294 () Bool)

(assert (=> d!52742 m!68294))

(declare-fun lt!11524 () Object!326)

(assert (=> d!52738 (= lt!11524 (foldMap!3 lambda!9116 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2))))

(assert (=> d!52738 (= true (dynLambda!945 lambda!9116 lt!11524))))

(declare-fun b_lambda!15611 () Bool)

(assert (=> (not b_lambda!15611) (not d!52738)))

(declare-fun m!68296 () Bool)

(assert (=> d!52738 m!68296))

(declare-fun lt!11525 () Object!326)

(assert (=> d!52750 (= lt!11525 (foldMap!3 lambda!9128 (t!47296 xs!978) lambda!9129 BigIntAdditiveMonoid!2))))

(assert (=> d!52750 (= true (dynLambda!945 lambda!9128 lt!11525))))

(declare-fun b_lambda!15613 () Bool)

(assert (=> (not b_lambda!15613) (not d!52750)))

(declare-fun m!68298 () Bool)

(assert (=> d!52750 m!68298))

(declare-fun lt!11528 () Object!326)

(assert (=> d!52736 (= lt!11528 (append!4 lambda!9116 BigIntAdditiveMonoid!2 (dynLambda!944 lambda!9117 (h!770 xs!978)) (foldMap!3 lambda!9116 (t!47296 xs!978) lambda!9117 BigIntAdditiveMonoid!2)))))

(assert (=> d!52736 (= true (dynLambda!945 lambda!9116 lt!11528))))

(declare-fun b_lambda!15615 () Bool)

(assert (=> (not b_lambda!15615) (not d!52736)))

(declare-fun m!68300 () Bool)

(assert (=> d!52736 m!68300))

(declare-fun b_lambda!15617 () Bool)

(assert (= b_lambda!15599 (or b!62365 b_lambda!15617)))

(declare-fun bs!37431 () Bool)

(declare-fun d!52808 () Bool)

(assert (= bs!37431 (and d!52808 b!62365)))

(assert (=> bs!37431 (= (dynLambda!944 lambda!9129 (h!770 (t!47296 (t!47296 xs!978)))) (Integer!315 (h!770 (t!47296 (t!47296 xs!978)))))))

(assert (=> b!62407 d!52808))

(declare-fun b_lambda!15619 () Bool)

(assert (= b_lambda!15611 (or b!62347 b_lambda!15619)))

(declare-fun bs!37432 () Bool)

(declare-fun d!52810 () Bool)

(assert (= bs!37432 (and d!52810 b!62347)))

(assert (=> bs!37432 (= (dynLambda!945 lambda!9116 lt!11524) (is-Integer!315 lt!11524))))

(assert (=> d!52738 d!52810))

(declare-fun b_lambda!15621 () Bool)

(assert (= b_lambda!15597 (or b!62365 b_lambda!15621)))

(declare-fun bs!37433 () Bool)

(declare-fun d!52812 () Bool)

(assert (= bs!37433 (and d!52812 b!62365)))

(assert (=> bs!37433 (= (dynLambda!945 lambda!9128 (Integer!315 lt!11513)) (is-Integer!315 (Integer!315 lt!11513)))))

(assert (=> b!62405 d!52812))

(declare-fun b_lambda!15623 () Bool)

(assert (= b_lambda!15613 (or b!62365 b_lambda!15623)))

(declare-fun bs!37434 () Bool)

(declare-fun d!52814 () Bool)

(assert (= bs!37434 (and d!52814 b!62365)))

(assert (=> bs!37434 (= (dynLambda!945 lambda!9128 lt!11525) (is-Integer!315 lt!11525))))

(assert (=> d!52750 d!52814))

(declare-fun b_lambda!15625 () Bool)

(assert (= b_lambda!15609 (or b!62364 b_lambda!15625)))

(declare-fun bs!37435 () Bool)

(declare-fun d!52816 () Bool)

(assert (= bs!37435 (and d!52816 b!62364)))

(assert (=> bs!37435 (= (dynLambda!945 lambda!9126 lt!11523) (is-Integer!315 lt!11523))))

(assert (=> d!52742 d!52816))

(declare-fun b_lambda!15627 () Bool)

(assert (= b_lambda!15583 (or b!62347 b_lambda!15627)))

(declare-fun bs!37436 () Bool)

(declare-fun d!52818 () Bool)

(assert (= bs!37436 (and d!52818 b!62347)))

(assert (=> bs!37436 (= (dynLambda!945 lambda!9116 lt!11500) (is-Integer!315 lt!11500))))

(assert (=> d!52766 d!52818))

(declare-fun b_lambda!15629 () Bool)

(assert (= b_lambda!15591 (or b!62347 b_lambda!15629)))

(declare-fun bs!37437 () Bool)

(declare-fun d!52820 () Bool)

(assert (= bs!37437 (and d!52820 b!62347)))

(assert (=> bs!37437 (= (dynLambda!945 lambda!9116 lt!11508) (is-Integer!315 lt!11508))))

(assert (=> d!52788 d!52820))

(declare-fun b_lambda!15631 () Bool)

(assert (= b_lambda!15589 (or b!62378 b_lambda!15631)))

(declare-fun bs!37438 () Bool)

(declare-fun d!52822 () Bool)

(assert (= bs!37438 (and d!52822 b!62378)))

(assert (=> bs!37438 (= (dynLambda!944 lambda!9131 (h!770 (t!47296 (t!47296 xs!978)))) (Integer!315 (h!770 (t!47296 (t!47296 xs!978)))))))

(assert (=> b!62397 d!52822))

(declare-fun b_lambda!15633 () Bool)

(assert (= b_lambda!15605 (or b!62365 b_lambda!15633)))

(declare-fun bs!37439 () Bool)

(declare-fun d!52824 () Bool)

(assert (= bs!37439 (and d!52824 b!62365)))

(assert (=> bs!37439 (= (dynLambda!945 lambda!9128 (Integer!315 lt!11519)) (is-Integer!315 (Integer!315 lt!11519)))))

(assert (=> b!62413 d!52824))

(declare-fun b_lambda!15635 () Bool)

(assert (= b_lambda!15585 (or b!62364 b_lambda!15635)))

(declare-fun bs!37440 () Bool)

(declare-fun d!52826 () Bool)

(assert (= bs!37440 (and d!52826 b!62364)))

(assert (=> bs!37440 (= (dynLambda!945 lambda!9126 (Integer!315 lt!11502)) (is-Integer!315 (Integer!315 lt!11502)))))

(assert (=> b!62391 d!52826))

(declare-fun b_lambda!15637 () Bool)

(assert (= b_lambda!15587 (or b!62364 b_lambda!15637)))

(declare-fun bs!37441 () Bool)

(declare-fun d!52828 () Bool)

(assert (= bs!37441 (and d!52828 b!62364)))

(assert (=> bs!37441 (= (dynLambda!944 lambda!9127 (h!770 (t!47296 (t!47296 xs!978)))) (Integer!315 (h!770 (t!47296 (t!47296 xs!978)))))))

(assert (=> b!62393 d!52828))

(declare-fun b_lambda!15639 () Bool)

(assert (= b_lambda!15603 (or b!62364 b_lambda!15639)))

(declare-fun bs!37442 () Bool)

(declare-fun d!52830 () Bool)

(assert (= bs!37442 (and d!52830 b!62364)))

(assert (=> bs!37442 (= (dynLambda!945 lambda!9126 (Integer!315 lt!11517)) (is-Integer!315 (Integer!315 lt!11517)))))

(assert (=> b!62411 d!52830))

(declare-fun b_lambda!15641 () Bool)

(assert (= b_lambda!15601 (or b!62379 b_lambda!15641)))

(declare-fun bs!37443 () Bool)

(declare-fun d!52832 () Bool)

(assert (= bs!37443 (and d!52832 b!62379)))

(assert (=> bs!37443 (= (dynLambda!944 lambda!9133 (h!770 (t!47296 (t!47296 xs!978)))) (Integer!315 (h!770 (t!47296 (t!47296 xs!978)))))))

(assert (=> b!62409 d!52832))

(declare-fun b_lambda!15643 () Bool)

(assert (= b_lambda!15615 (or b!62347 b_lambda!15643)))

(declare-fun bs!37444 () Bool)

(declare-fun d!52834 () Bool)

(assert (= bs!37444 (and d!52834 b!62347)))

(assert (=> bs!37444 (= (dynLambda!945 lambda!9116 lt!11528) (is-Integer!315 lt!11528))))

(assert (=> d!52736 d!52834))

(declare-fun b_lambda!15645 () Bool)

(assert (= b_lambda!15593 (or b!62347 b_lambda!15645)))

(declare-fun bs!37445 () Bool)

(declare-fun d!52836 () Bool)

(assert (= bs!37445 (and d!52836 b!62347)))

(assert (=> bs!37445 (= (dynLambda!945 lambda!9116 (Integer!315 lt!11510)) (is-Integer!315 (Integer!315 lt!11510)))))

(assert (=> b!62401 d!52836))

(declare-fun b_lambda!15647 () Bool)

(assert (= b_lambda!15595 (or b!62347 b_lambda!15647)))

(declare-fun bs!37446 () Bool)

(declare-fun d!52838 () Bool)

(assert (= bs!37446 (and d!52838 b!62347)))

(assert (=> bs!37446 (= (dynLambda!944 lambda!9117 (h!770 (t!47296 (t!47296 xs!978)))) (Integer!315 (h!770 (t!47296 (t!47296 xs!978)))))))

(assert (=> b!62403 d!52838))

(declare-fun b_lambda!15649 () Bool)

(assert (= b_lambda!15607 (or b!62347 b_lambda!15649)))

(declare-fun bs!37447 () Bool)

(declare-fun d!52840 () Bool)

(assert (= bs!37447 (and d!52840 b!62347)))

(assert (=> bs!37447 (= (dynLambda!945 lambda!9116 lt!11522) (is-Integer!315 lt!11522))))

(assert (=> d!52748 d!52840))

(push 1)

(assert (not b!62408))

(assert (not b_lambda!15649))

(assert (not b_lambda!15573))

(assert (not b!62395))

(assert (not b_lambda!15629))

(assert (not d!52770))

(assert (not b_lambda!15635))

(assert (not d!52792))

(assert (not b!62404))

(assert (not b_lambda!15575))

(assert (not b!62396))

(assert (not b_lambda!15645))

(assert (not b!62403))

(assert (not b_lambda!15557))

(assert (not b_lambda!15639))

(assert (not b_lambda!15581))

(assert (not b!62411))

(assert (not b!62400))

(assert (not b_lambda!15579))

(assert (not b_lambda!15617))

(assert (not b_lambda!15637))

(assert (not b_lambda!15619))

(assert (not b!62407))

(assert (not b!62405))

(assert (not b!62412))

(assert (not b!62392))

(assert (not b!62390))

(assert (not b!62398))

(assert (not b!62397))

(assert (not b_lambda!15643))

(assert (not d!52766))

(assert (not b_lambda!15633))

(assert (not b_lambda!15625))

(assert (not b!62413))

(assert (not b!62391))

(assert (not b!62406))

(assert (not d!52790))

(assert (not b_lambda!15623))

(assert (not d!52798))

(assert (not d!52804))

(assert (not b_lambda!15571))

(assert (not b_lambda!15647))

(assert (not b!62401))

(assert (not b_lambda!15577))

(assert (not b_lambda!15627))

(assert (not d!52788))

(assert (not b!62409))

(assert (not b_lambda!15631))

(assert (not b_lambda!15641))

(assert (not d!52800))

(assert (not d!52772))

(assert (not d!52796))

(assert (not b!62410))

(assert (not b!62402))

(assert (not d!52794))

(assert (not b!62393))

(assert (not b!62399))

(assert (not d!52776))

(assert (not b_lambda!15621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

