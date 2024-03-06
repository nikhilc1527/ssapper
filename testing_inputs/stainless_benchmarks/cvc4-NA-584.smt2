; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4360 () Bool)

(assert start!4360)

(declare-fun b_free!2081 () Bool)

(declare-fun b_next!4931 () Bool)

(assert (=> start!4360 (= b_free!2081 (not b_next!4931))))

(declare-fun tp!7147 () Bool)

(declare-fun b_and!7481 () Bool)

(assert (=> start!4360 (= tp!7147 b_and!7481)))

(declare-fun b_free!2083 () Bool)

(declare-fun b_next!4933 () Bool)

(assert (=> start!4360 (= b_free!2083 (not b_next!4933))))

(declare-fun tp!7148 () Bool)

(declare-fun b_and!7483 () Bool)

(assert (=> start!4360 (= tp!7148 b_and!7483)))

(assert (=> start!4360 true))

(declare-fun lambda!4062 () Int)

(declare-fun f!2168 () Int)

(declare-fun b_next!4935 () Bool)

(assert (=> start!4360 (= b_next!4933 (or (and start!4360 (= lambda!4062 f!2168)) b_next!4935))))

(declare-fun b!34632 () Bool)

(assert (=> b!34632 true))

(declare-fun g!53 () Int)

(declare-fun lambda!4063 () Int)

(declare-fun b_next!4937 () Bool)

(assert (=> start!4360 (= b_next!4931 (or (and b!34632 (= lambda!4063 g!53)) b_next!4937))))

(declare-fun b!34633 () Bool)

(assert (=> b!34633 true))

(declare-fun res!15865 () Bool)

(declare-fun e!17499 () Bool)

(assert (=> start!4360 (=> (not res!15865) (not e!17499))))

(assert (=> start!4360 (= res!15865 (= f!2168 lambda!4062))))

(assert (=> start!4360 e!17499))

(assert (=> start!4360 true))

(assert (=> start!4360 tp!7147))

(assert (=> start!4360 tp!7148))

(declare-fun b!34634 () Bool)

(declare-fun res!15868 () Bool)

(assert (=> b!34634 (=> (not res!15868) (not e!17499))))

(declare-datatypes () ((Unit!200 (Unit!201))))

(declare-fun tmp!77 () Unit!200)

(declare-datatypes () ((Countable!7 (CountableExt!3 (__x!47 Int)))))

(declare-fun e!17469 () Countable!7)

(declare-fun lambda!4064 () Int)

(declare-fun gof!4 (Countable!7 Int) Unit!200)

(assert (=> b!34634 (= res!15868 (= tmp!77 (gof!4 e!17469 lambda!4064)))))

(declare-fun res!15866 () Bool)

(assert (=> b!34632 (=> (not res!15866) (not e!17499))))

(assert (=> b!34632 (= res!15866 (= g!53 lambda!4063))))

(declare-fun res!15867 () Bool)

(assert (=> b!34633 (=> (not res!15867) (not e!17499))))

(declare-fun d!20 (Countable!7 Int) Int)

(declare-fun dynLambda!627 (Int Int) Int)

(declare-fun dynLambda!628 (Int Int) Int)

(declare-fun dynLambda!629 (Int Int) Int)

(assert (=> b!34633 (= res!15867 (= (d!20 e!17469 (dynLambda!627 f!2168 lambda!4064)) (+ (dynLambda!628 (dynLambda!629 g!53 (dynLambda!627 f!2168 lambda!4064)) (dynLambda!627 f!2168 lambda!4064)) 1)))))

(declare-fun b!34635 () Bool)

(declare-fun tmp!78 () Unit!200)

(declare-fun Unit!202 () Unit!200)

(assert (=> b!34635 (= e!17499 (= tmp!78 Unit!202))))

(assert (=> b!34635 (= (d!20 e!17469 (dynLambda!627 f!2168 lambda!4064)) (+ (d!20 e!17469 (dynLambda!627 f!2168 lambda!4064)) 1))))

(assert (= (and start!4360 res!15865) b!34632))

(assert (= (and b!34632 res!15866) b!34633))

(assert (= (and b!34633 res!15867) b!34634))

(assert (= (and b!34634 res!15868) b!34635))

(declare-fun b_lambda!9417 () Bool)

(assert (=> (not b_lambda!9417) (not b!34633)))

(declare-fun b_lambda!9419 () Bool)

(assert (=> (not b_lambda!9419) (not b!34633)))

(declare-fun t!4669 () Bool)

(declare-fun tb!4005 () Bool)

(assert (=> (and start!4360 (= f!2168 f!2168) t!4669) tb!4005))

(declare-fun result!4261 () Bool)

(assert (=> tb!4005 (= result!4261 true)))

(assert (=> b!34633 t!4669))

(declare-fun b_and!7485 () Bool)

(assert (= b_and!7483 (and (=> t!4669 result!4261) b_and!7485)))

(declare-fun b_lambda!9421 () Bool)

(assert (=> (not b_lambda!9421) (not b!34633)))

(declare-fun t!4671 () Bool)

(declare-fun tb!4007 () Bool)

(assert (=> (and start!4360 (= g!53 g!53) t!4671) tb!4007))

(declare-fun b_free!2085 () Bool)

(declare-fun b_next!4939 () Bool)

(assert (=> tb!4007 (= b_free!2085 (and (or (not b!34633) (not (= lambda!4064 (dynLambda!629 g!53 (dynLambda!627 f!2168 lambda!4064))))) (not b_next!4939)))))

(declare-fun tb!4009 () Bool)

(declare-fun t!4673 () Bool)

(assert (=> (and tb!4007 (= (dynLambda!629 g!53 (dynLambda!627 f!2168 lambda!4064)) (dynLambda!629 g!53 (dynLambda!627 f!2168 lambda!4064))) t!4673) tb!4009))

(declare-fun result!4265 () Bool)

(assert (=> tb!4009 (= result!4265 true)))

(assert (=> b!34633 t!4673))

(declare-fun result!4263 () Bool)

(declare-fun b_and!7487 () Bool)

(assert (=> tb!4007 (= result!4263 (and (=> t!4673 result!4265) b_and!7487))))

(assert (=> b!34633 t!4671))

(declare-fun b_and!7489 () Bool)

(assert (= b_and!7481 (and (=> t!4671 result!4263) b_and!7489)))

(declare-fun b_lambda!9423 () Bool)

(assert (=> (not b_lambda!9423) (not b!34635)))

(assert (=> b!34635 t!4669))

(declare-fun b_and!7491 () Bool)

(assert (= b_and!7485 (and (=> t!4669 result!4261) b_and!7491)))

(declare-fun m!37243 () Bool)

(assert (=> b!34634 m!37243))

(declare-fun m!37245 () Bool)

(assert (=> b!34633 m!37245))

(assert (=> b!34633 m!37245))

(assert (=> b!34633 m!37245))

(assert (=> b!34633 m!37245))

(declare-fun m!37247 () Bool)

(assert (=> b!34633 m!37247))

(assert (=> b!34633 m!37245))

(declare-fun m!37249 () Bool)

(assert (=> b!34633 m!37249))

(assert (=> b!34633 m!37245))

(declare-fun m!37251 () Bool)

(assert (=> b!34633 m!37251))

(assert (=> b!34635 m!37245))

(assert (=> b!34635 m!37245))

(assert (=> b!34635 m!37247))

(assert (=> b!34635 m!37245))

(assert (=> b!34635 m!37245))

(assert (=> b!34635 m!37247))

(push 1)

(assert (not b_next!4939))

(assert (not b_lambda!9419))

(assert (not b!34633))

(assert (not b_next!4935))

(assert (not b!34634))

(assert (not b_lambda!9421))

(assert (not b_next!4937))

(assert (not b_lambda!9423))

(assert (not b!34635))

(assert b_and!7491)

(assert b_and!7489)

(assert (not b_lambda!9417))

(assert b_and!7487)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4939))

(assert (not b_next!4935))

(assert (not b_next!4937))

(assert b_and!7491)

(assert b_and!7489)

(assert b_and!7487)

(check-sat)

(pop 1)

