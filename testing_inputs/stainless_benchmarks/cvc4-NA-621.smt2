; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4520 () Bool)

(assert start!4520)

(declare-fun b_free!2179 () Bool)

(declare-fun b_next!5289 () Bool)

(assert (=> start!4520 (= b_free!2179 (not b_next!5289))))

(declare-fun tp!7291 () Bool)

(declare-fun b_and!7923 () Bool)

(assert (=> start!4520 (= tp!7291 b_and!7923)))

(declare-fun b_free!2181 () Bool)

(declare-fun b_next!5291 () Bool)

(assert (=> start!4520 (= b_free!2181 (not b_next!5291))))

(declare-fun tp!7292 () Bool)

(declare-fun b_and!7925 () Bool)

(assert (=> start!4520 (= tp!7292 b_and!7925)))

(declare-fun res!16182 () Bool)

(declare-fun e!17686 () Bool)

(assert (=> start!4520 (=> (not res!16182) (not e!17686))))

(declare-datatypes () ((List!392 (Cons!384 (h!335 Int) (t!5003 List!392)) (Nil!385))))

(declare-fun l!950 () List!392)

(declare-fun n!429 () Int)

(declare-fun size!367 (List!392) Int)

(assert (=> start!4520 (= res!16182 (<= (size!367 l!950) n!429))))

(assert (=> start!4520 e!17686))

(assert (=> start!4520 true))

(assert (=> start!4520 tp!7291))

(assert (=> start!4520 tp!7292))

(declare-fun b!35031 () Bool)

(declare-fun res!16183 () Bool)

(assert (=> b!35031 (=> (not res!16183) (not e!17686))))

(declare-fun isEmpty!387 (List!392) Bool)

(assert (=> b!35031 (= res!16183 (not (isEmpty!387 l!950)))))

(declare-fun b!35032 () Bool)

(declare-fun res!16184 () Bool)

(assert (=> b!35032 (=> (not res!16184) (not e!17686))))

(declare-fun p!499 () Int)

(declare-fun dynLambda!640 (Int Int) Bool)

(declare-fun head!545 (List!392) Int)

(assert (=> b!35032 (= res!16184 (not (dynLambda!640 p!499 (head!545 l!950))))))

(declare-fun b!35033 () Bool)

(declare-fun p!503 () Int)

(declare-fun thiss!4032 () List!392)

(assert (=> b!35033 (= e!17686 (and (= p!503 p!499) (= thiss!4032 l!950) (= thiss!4032 Nil!385)))))

(assert (= (and start!4520 res!16182) b!35031))

(assert (= (and b!35031 res!16183) b!35032))

(assert (= (and b!35032 res!16184) b!35033))

(declare-fun b_lambda!9539 () Bool)

(assert (=> (not b_lambda!9539) (not b!35032)))

(declare-fun t!5000 () Bool)

(declare-fun tb!4293 () Bool)

(assert (=> (and start!4520 (= p!499 p!499) t!5000) tb!4293))

(declare-fun result!4549 () Bool)

(assert (=> tb!4293 (= result!4549 true)))

(assert (=> b!35032 t!5000))

(declare-fun b_and!7927 () Bool)

(assert (= b_and!7923 (and (=> t!5000 result!4549) b_and!7927)))

(declare-fun t!5002 () Bool)

(declare-fun tb!4295 () Bool)

(assert (=> (and start!4520 (= p!503 p!499) t!5002) tb!4295))

(declare-fun result!4551 () Bool)

(assert (=> tb!4295 (= result!4551 true)))

(assert (=> b!35032 t!5002))

(declare-fun b_and!7929 () Bool)

(assert (= b_and!7925 (and (=> t!5002 result!4551) b_and!7929)))

(declare-fun m!37547 () Bool)

(assert (=> start!4520 m!37547))

(declare-fun m!37549 () Bool)

(assert (=> b!35031 m!37549))

(declare-fun m!37551 () Bool)

(assert (=> b!35032 m!37551))

(assert (=> b!35032 m!37551))

(declare-fun m!37553 () Bool)

(assert (=> b!35032 m!37553))

(push 1)

(assert b_and!7929)

(assert (not b_next!5291))

(assert b_and!7927)

(assert (not b_lambda!9539))

(assert (not b_next!5289))

(assert (not b!35032))

(assert (not b!35031))

(assert (not start!4520))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7927)

(assert b_and!7929)

(assert (not b_next!5291))

(assert (not b_next!5289))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9541 () Bool)

(assert (= b_lambda!9539 (or (and start!4520 b_free!2179) (and start!4520 b_free!2181 (= p!503 p!499)) b_lambda!9541)))

(push 1)

(assert b_and!7929)

(assert (not b_next!5291))

(assert b_and!7927)

(assert (not b_next!5289))

(assert (not b_lambda!9541))

(assert (not b!35032))

(assert (not b!35031))

(assert (not start!4520))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7927)

(assert b_and!7929)

(assert (not b_next!5291))

(assert (not b_next!5289))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18346 () Bool)

(assert (=> d!18346 (= (head!545 l!950) (h!335 l!950))))

(assert (=> b!35032 d!18346))

(declare-fun d!18348 () Bool)

(assert (=> d!18348 (= (isEmpty!387 l!950) (is-Nil!385 l!950))))

(assert (=> b!35031 d!18348))

(declare-fun d!18350 () Bool)

(declare-fun lt!6532 () Int)

(assert (=> d!18350 (>= lt!6532 0)))

(declare-fun e!17689 () Int)

(assert (=> d!18350 (= lt!6532 e!17689)))

(declare-fun c!7443 () Bool)

(assert (=> d!18350 (= c!7443 (is-Nil!385 l!950))))

(assert (=> d!18350 (= (size!367 l!950) lt!6532)))

(declare-fun b!35038 () Bool)

(assert (=> b!35038 (= e!17689 0)))

(declare-fun b!35039 () Bool)

(assert (=> b!35039 (= e!17689 (+ 1 (size!367 (t!5003 l!950))))))

(assert (= (and d!18350 c!7443) b!35038))

(assert (= (and d!18350 (not c!7443)) b!35039))

(declare-fun m!37555 () Bool)

(assert (=> b!35039 m!37555))

(assert (=> start!4520 d!18350))

(push 1)

(assert b_and!7929)

(assert (not b_next!5291))

(assert b_and!7927)

(assert (not b_next!5289))

(assert (not b_lambda!9541))

(assert (not b!35039))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7927)

(assert b_and!7929)

(assert (not b_next!5291))

(assert (not b_next!5289))

(check-sat)

(pop 1)

