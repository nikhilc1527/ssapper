; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7778 () Bool)

(assert start!7778)

(declare-fun b_free!7253 () Bool)

(declare-fun b_next!38575 () Bool)

(assert (=> start!7778 (= b_free!7253 (not b_next!38575))))

(declare-fun tp!15602 () Bool)

(declare-fun b_and!58339 () Bool)

(assert (=> start!7778 (= tp!15602 b_and!58339)))

(declare-fun res!25504 () Bool)

(declare-fun e!29137 () Bool)

(assert (=> start!7778 (=> (not res!25504) (not e!29137))))

(declare-fun x!22200 () (_ BitVec 32))

(assert (=> start!7778 (= res!25504 (bvsgt x!22200 #b00000000000000000000000000000000))))

(assert (=> start!7778 e!29137))

(assert (=> start!7778 true))

(assert (=> start!7778 tp!15602))

(declare-fun b!55323 () Bool)

(declare-fun res!25505 () Bool)

(assert (=> b!55323 (=> (not res!25505) (not e!29137))))

(declare-fun f!3179 () Int)

(declare-fun gen!0 ((_ BitVec 32)) Int)

(assert (=> b!55323 (= res!25505 (= f!3179 (gen!0 x!22200)))))

(declare-fun b!55324 () Bool)

(declare-fun dynLambda!897 (Int (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!55324 (= e!29137 (not (= (dynLambda!897 f!3179 x!22200) (bvadd x!22200 #b00000000000000000000000000000010))))))

(assert (= (and start!7778 res!25504) b!55323))

(assert (= (and b!55323 res!25505) b!55324))

(declare-fun b_lambda!14643 () Bool)

(assert (=> (not b_lambda!14643) (not b!55324)))

(declare-fun t!46895 () Bool)

(declare-fun tb!45897 () Bool)

(assert (=> (and start!7778 (= f!3179 f!3179) t!46895) tb!45897))

(declare-fun result!46231 () Bool)

(assert (=> tb!45897 (= result!46231 true)))

(assert (=> b!55324 t!46895))

(declare-fun b_and!58341 () Bool)

(assert (= b_and!58339 (and (=> t!46895 result!46231) b_and!58341)))

(declare-fun m!60094 () Bool)

(assert (=> b!55323 m!60094))

(declare-fun m!60096 () Bool)

(assert (=> b!55324 m!60096))

(push 1)

(assert (not b!55323))

(assert (not b_lambda!14643))

(assert b_and!58341)

(assert (not b_next!38575))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58341)

(assert (not b_next!38575))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!14645 () Bool)

(assert (= b_lambda!14643 (or (and start!7778 b_free!7253) b_lambda!14645)))

(push 1)

(assert (not b!55323))

(assert (not b_lambda!14645))

(assert b_and!58341)

(assert (not b_next!38575))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58341)

(assert (not b_next!38575))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!55329 () Bool)

(declare-fun b_next!38577 () Bool)

(declare-fun lambda!8601 () Int)

(assert (=> start!7778 (= b_next!38575 (or (and b!55329 (= lambda!8601 f!3179)) b_next!38577))))

(declare-fun bs!27561 () Bool)

(declare-fun b!55330 () Bool)

(assert (= bs!27561 (and b!55330 b!55329)))

(declare-fun lambda!8602 () Int)

(assert (=> bs!27561 (= (= #b00000000000000000000000000000001 #b00000000000000000000000000000010) (= lambda!8602 lambda!8601))))

(declare-fun b_next!38579 () Bool)

(assert (=> start!7778 (= b_next!38577 (or (and b!55330 (= lambda!8602 f!3179)) b_next!38579))))

(declare-fun d!45310 () Bool)

(declare-fun c!12039 () Bool)

(assert (=> d!45310 (= c!12039 (bvsgt x!22200 #b00000000000000000000000000000000))))

(declare-fun e!29140 () Int)

(assert (=> d!45310 (= (gen!0 x!22200) e!29140)))

(assert (=> b!55329 (= e!29140 lambda!8601)))

(assert (=> b!55330 (= e!29140 lambda!8602)))

(assert (= (and d!45310 c!12039) b!55329))

(assert (= (and d!45310 (not c!12039)) b!55330))

(assert (=> b!55323 d!45310))

(push 1)

(assert (not b_lambda!14645))

(assert b_and!58341)

(assert (not b_next!38579))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58341)

(assert (not b_next!38579))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!14647 () Bool)

(assert (= b_lambda!14645 (or (and b!55329 (= lambda!8601 f!3179)) (and b!55330 (= lambda!8602 f!3179)) b_lambda!14647)))

(declare-fun bs!27562 () Bool)

(declare-fun d!45312 () Bool)

(assert (= bs!27562 (and d!45312 b!55329)))

(assert (=> bs!27562 (= (dynLambda!897 lambda!8601 x!22200) (bvadd x!22200 #b00000000000000000000000000000010))))

(assert (=> (and b!55329 (= lambda!8601 f!3179) b!55324) d!45312))

(declare-fun bs!27563 () Bool)

(declare-fun d!45314 () Bool)

(assert (= bs!27563 (and d!45314 b!55330)))

(assert (=> bs!27563 (= (dynLambda!897 lambda!8602 x!22200) (bvadd x!22200 #b00000000000000000000000000000001))))

(assert (=> (and b!55330 (= lambda!8602 f!3179) b!55324) d!45314))

(push 1)

(assert (not b_lambda!14647))

(assert b_and!58341)

(assert (not b_next!38579))

(check-sat)

(pop 1)

