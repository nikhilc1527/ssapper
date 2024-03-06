; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10092 () Bool)

(assert start!10092)

(declare-fun b_free!7319 () Bool)

(declare-fun b_next!39095 () Bool)

(assert (=> start!10092 (= b_free!7319 (not b_next!39095))))

(declare-fun tp!16879 () Bool)

(declare-fun b_and!58755 () Bool)

(assert (=> start!10092 (= tp!16879 b_and!58755)))

(declare-fun b!72864 () Bool)

(assert (=> b!72864 true))

(declare-fun order!471 () Int)

(declare-fun p!702 () Int)

(declare-fun lambda!9196 () Int)

(declare-fun dynLambda!963 (Int Int) Int)

(assert (=> b!72864 (< (dynLambda!963 order!471 p!702) (dynLambda!963 order!471 lambda!9196))))

(declare-fun b!72860 () Bool)

(declare-fun res!35578 () Bool)

(declare-fun e!39372 () Bool)

(assert (=> b!72860 (=> (not res!35578) (not e!39372))))

(declare-datatypes () ((IList!9 (Cons!588 (head!1009 Int) (tail!1030 IList!9)) (Nil!590))))

(declare-fun l1!412 () IList!9)

(declare-datatypes () ((tuple2!394 (tuple2!395 (_1!232 IList!9) (_2!232 IList!9)))))

(declare-fun x$1!1010 () tuple2!394)

(declare-fun l2!405 () IList!9)

(assert (=> b!72860 (= res!35578 (and (= l1!412 (_1!232 x$1!1010)) (= l2!405 (_2!232 x$1!1010))))))

(declare-fun res!35576 () Bool)

(assert (=> start!10092 (=> (not res!35576) (not e!39372))))

(declare-fun l!1390 () IList!9)

(assert (=> start!10092 (= res!35576 (not (is-Nil!590 l!1390)))))

(assert (=> start!10092 e!39372))

(assert (=> start!10092 tp!16879))

(assert (=> start!10092 true))

(declare-fun b!72861 () Bool)

(declare-fun e!39373 () Bool)

(assert (=> b!72861 (= e!39372 e!39373)))

(declare-fun res!35581 () Bool)

(assert (=> b!72861 (=> res!35581 e!39373)))

(declare-fun res!35489 () tuple2!394)

(declare-fun filter!4 (IList!9 Int) IList!9)

(assert (=> b!72861 (= res!35581 (not (= (_1!232 res!35489) (filter!4 l!1390 p!702))))))

(declare-fun b!72862 () Bool)

(declare-fun res!35580 () Bool)

(assert (=> b!72862 (=> (not res!35580) (not e!39372))))

(declare-fun partition!1 (IList!9 Int) tuple2!394)

(assert (=> b!72862 (= res!35580 (= x$1!1010 (partition!1 (tail!1030 l!1390) p!702)))))

(declare-fun b!72863 () Bool)

(declare-fun res!35577 () Bool)

(assert (=> b!72863 (=> (not res!35577) (not e!39372))))

(declare-fun dynLambda!964 (Int Int) Bool)

(assert (=> b!72863 (= res!35577 (not (dynLambda!964 p!702 (head!1009 l!1390))))))

(assert (=> b!72864 (= e!39373 (not (= (_2!232 res!35489) (filter!4 l!1390 lambda!9196))))))

(declare-fun b!72865 () Bool)

(declare-fun res!35579 () Bool)

(assert (=> b!72865 (=> (not res!35579) (not e!39372))))

(assert (=> b!72865 (= res!35579 (= res!35489 (tuple2!395 l1!412 (Cons!588 (head!1009 l!1390) l2!405))))))

(assert (= (and start!10092 res!35576) b!72862))

(assert (= (and b!72862 res!35580) b!72860))

(assert (= (and b!72860 res!35578) b!72863))

(assert (= (and b!72863 res!35577) b!72865))

(assert (= (and b!72865 res!35579) b!72861))

(assert (= (and b!72861 (not res!35581)) b!72864))

(declare-fun b_lambda!15793 () Bool)

(assert (=> (not b_lambda!15793) (not b!72863)))

(declare-fun t!47523 () Bool)

(declare-fun tb!46149 () Bool)

(assert (=> (and start!10092 (= p!702 p!702) t!47523) tb!46149))

(declare-fun result!46577 () Bool)

(assert (=> tb!46149 (= result!46577 true)))

(assert (=> b!72863 t!47523))

(declare-fun b_and!58757 () Bool)

(assert (= b_and!58755 (and (=> t!47523 result!46577) b_and!58757)))

(declare-fun m!72648 () Bool)

(assert (=> b!72861 m!72648))

(declare-fun m!72650 () Bool)

(assert (=> b!72862 m!72650))

(declare-fun m!72652 () Bool)

(assert (=> b!72863 m!72652))

(declare-fun m!72654 () Bool)

(assert (=> b!72864 m!72654))

(push 1)

(assert (not b_next!39095))

(assert (not b!72862))

(assert (not b_lambda!15793))

(assert (not b!72861))

(assert (not b!72864))

(assert b_and!58757)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58757)

(assert (not b_next!39095))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15795 () Bool)

(assert (= b_lambda!15793 (or (and start!10092 b_free!7319) b_lambda!15795)))

(push 1)

(assert (not b_next!39095))

(assert (not b!72862))

(assert (not b!72861))

(assert (not b!72864))

(assert (not b_lambda!15795))

(assert b_and!58757)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58757)

(assert (not b_next!39095))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!72878 () Bool)

(declare-fun e!39382 () IList!9)

(declare-fun lt!15470 () IList!9)

(assert (=> b!72878 (= e!39382 lt!15470)))

(declare-fun d!54695 () Bool)

(declare-fun c!17576 () Bool)

(assert (=> d!54695 (= c!17576 (is-Nil!590 l!1390))))

(declare-fun e!39381 () IList!9)

(assert (=> d!54695 (= (filter!4 l!1390 p!702) e!39381)))

(declare-fun b!72879 () Bool)

(assert (=> b!72879 (= e!39382 (Cons!588 (head!1009 l!1390) lt!15470))))

(declare-fun b!72880 () Bool)

(assert (=> b!72880 (= e!39381 e!39382)))

(declare-fun c!17575 () Bool)

(declare-fun e!39380 () Bool)

(assert (=> b!72880 (= c!17575 e!39380)))

(declare-fun res!35587 () Bool)

(assert (=> b!72880 (=> (not res!35587) (not e!39380))))

(assert (=> b!72880 (= res!35587 (is-Cons!588 l!1390))))

(assert (=> b!72880 (= lt!15470 (filter!4 (tail!1030 l!1390) p!702))))

(declare-fun b!72881 () Bool)

(assert (=> b!72881 (= e!39380 (dynLambda!964 p!702 (head!1009 l!1390)))))

(declare-fun b!72882 () Bool)

(assert (=> b!72882 (= e!39381 Nil!590)))

(assert (= (and b!72880 res!35587) b!72881))

(assert (= (and b!72880 c!17575) b!72879))

(assert (= (and b!72880 (not c!17575)) b!72878))

(assert (= (and d!54695 c!17576) b!72882))

(assert (= (and d!54695 (not c!17576)) b!72880))

(declare-fun b_lambda!15797 () Bool)

(assert (=> (not b_lambda!15797) (not b!72881)))

(assert (=> b!72881 t!47523))

(declare-fun b_and!58759 () Bool)

(assert (= b_and!58757 (and (=> t!47523 result!46577) b_and!58759)))

(declare-fun m!72656 () Bool)

(assert (=> b!72880 m!72656))

(assert (=> b!72881 m!72652))

(assert (=> b!72861 d!54695))

(declare-fun bs!37782 () Bool)

(declare-fun b!72896 () Bool)

(assert (= bs!37782 (and b!72896 b!72864)))

(declare-fun lambda!9199 () Int)

(assert (=> bs!37782 (= lambda!9199 lambda!9196)))

(assert (=> b!72896 true))

(assert (=> b!72896 (< (dynLambda!963 order!471 p!702) (dynLambda!963 order!471 lambda!9199))))

(declare-fun b!72893 () Bool)

(declare-fun e!39389 () tuple2!394)

(assert (=> b!72893 (= e!39389 (tuple2!395 Nil!590 Nil!590))))

(declare-fun lt!15481 () IList!9)

(declare-fun b!72894 () Bool)

(declare-fun e!39391 () tuple2!394)

(declare-fun lt!15482 () IList!9)

(assert (=> b!72894 (= e!39391 (tuple2!395 (Cons!588 (head!1009 (tail!1030 l!1390)) lt!15482) lt!15481))))

(declare-fun b!72895 () Bool)

(assert (=> b!72895 (= e!39389 e!39391)))

(declare-fun c!17582 () Bool)

(assert (=> b!72895 (= c!17582 (dynLambda!964 p!702 (head!1009 (tail!1030 l!1390))))))

(declare-fun lt!15485 () tuple2!394)

(assert (=> b!72895 (= lt!15481 (_2!232 lt!15485))))

(declare-fun lt!15484 () tuple2!394)

(assert (=> b!72895 (= lt!15482 (_1!232 lt!15484))))

(assert (=> b!72895 (= lt!15485 (partition!1 (tail!1030 (tail!1030 l!1390)) p!702))))

(assert (=> b!72895 (= lt!15484 (partition!1 (tail!1030 (tail!1030 l!1390)) p!702))))

(declare-fun lt!15483 () tuple2!394)

(declare-fun e!39390 () Bool)

(assert (=> b!72896 (= e!39390 (= (_2!232 lt!15483) (filter!4 (tail!1030 l!1390) lambda!9199)))))

(declare-fun b!72897 () Bool)

(assert (=> b!72897 (= e!39391 (tuple2!395 lt!15482 (Cons!588 (head!1009 (tail!1030 l!1390)) lt!15481)))))

(declare-fun d!54697 () Bool)

(assert (=> d!54697 e!39390))

(declare-fun res!35591 () Bool)

(assert (=> d!54697 (=> (not res!35591) (not e!39390))))

(assert (=> d!54697 (= res!35591 (= (_1!232 lt!15483) (filter!4 (tail!1030 l!1390) p!702)))))

(assert (=> d!54697 (= lt!15483 e!39389)))

(declare-fun c!17581 () Bool)

(assert (=> d!54697 (= c!17581 (is-Nil!590 (tail!1030 l!1390)))))

(assert (=> d!54697 (= (partition!1 (tail!1030 l!1390) p!702) lt!15483)))

(assert (= (and b!72895 c!17582) b!72894))

(assert (= (and b!72895 (not c!17582)) b!72897))

(assert (= (and d!54697 c!17581) b!72893))

(assert (= (and d!54697 (not c!17581)) b!72895))

(assert (= (and d!54697 res!35591) b!72896))

(declare-fun b_lambda!15799 () Bool)

(assert (=> (not b_lambda!15799) (not b!72895)))

(declare-fun t!47525 () Bool)

(declare-fun tb!46151 () Bool)

(assert (=> (and start!10092 (= p!702 p!702) t!47525) tb!46151))

(declare-fun result!46579 () Bool)

(assert (=> tb!46151 (= result!46579 true)))

(assert (=> b!72895 t!47525))

(declare-fun b_and!58761 () Bool)

(assert (= b_and!58759 (and (=> t!47525 result!46579) b_and!58761)))

(declare-fun m!72658 () Bool)

(assert (=> b!72895 m!72658))

(declare-fun m!72660 () Bool)

(assert (=> b!72895 m!72660))

(declare-fun m!72662 () Bool)

(assert (=> b!72896 m!72662))

(assert (=> d!54697 m!72656))

(assert (=> b!72862 d!54697))

(declare-fun b!72898 () Bool)

(declare-fun e!39394 () IList!9)

(declare-fun lt!15486 () IList!9)

(assert (=> b!72898 (= e!39394 lt!15486)))

(declare-fun d!54699 () Bool)

(declare-fun c!17584 () Bool)

(assert (=> d!54699 (= c!17584 (is-Nil!590 l!1390))))

(declare-fun e!39393 () IList!9)

(assert (=> d!54699 (= (filter!4 l!1390 lambda!9196) e!39393)))

(declare-fun b!72899 () Bool)

(assert (=> b!72899 (= e!39394 (Cons!588 (head!1009 l!1390) lt!15486))))

(declare-fun b!72900 () Bool)

(assert (=> b!72900 (= e!39393 e!39394)))

(declare-fun c!17583 () Bool)

(declare-fun e!39392 () Bool)

(assert (=> b!72900 (= c!17583 e!39392)))

(declare-fun res!35592 () Bool)

(assert (=> b!72900 (=> (not res!35592) (not e!39392))))

(assert (=> b!72900 (= res!35592 (is-Cons!588 l!1390))))

(assert (=> b!72900 (= lt!15486 (filter!4 (tail!1030 l!1390) lambda!9196))))

(declare-fun b!72901 () Bool)

(assert (=> b!72901 (= e!39392 (dynLambda!964 lambda!9196 (head!1009 l!1390)))))

(declare-fun b!72902 () Bool)

(assert (=> b!72902 (= e!39393 Nil!590)))

(assert (= (and b!72900 res!35592) b!72901))

(assert (= (and b!72900 c!17583) b!72899))

(assert (= (and b!72900 (not c!17583)) b!72898))

(assert (= (and d!54699 c!17584) b!72902))

(assert (= (and d!54699 (not c!17584)) b!72900))

(declare-fun b_lambda!15801 () Bool)

(assert (=> (not b_lambda!15801) (not b!72901)))

(declare-fun m!72664 () Bool)

(assert (=> b!72900 m!72664))

(declare-fun m!72666 () Bool)

(assert (=> b!72901 m!72666))

(assert (=> b!72864 d!54699))

(declare-fun b_lambda!15803 () Bool)

(assert (= b_lambda!15797 (or (and start!10092 b_free!7319) (and b!72896 (= lambda!9199 p!702)) b_lambda!15803)))

(declare-fun bs!37783 () Bool)

(declare-fun d!54701 () Bool)

(assert (= bs!37783 (and d!54701 b!72896)))

(assert (=> bs!37783 (= (dynLambda!964 lambda!9199 (head!1009 l!1390)) (not (dynLambda!964 p!702 (head!1009 l!1390))))))

(declare-fun b_lambda!15809 () Bool)

(assert (=> (not b_lambda!15809) (not bs!37783)))

(assert (=> bs!37783 t!47523))

(declare-fun b_and!58763 () Bool)

(assert (= b_and!58761 (and (=> t!47523 result!46577) b_and!58763)))

(assert (=> bs!37783 m!72652))

(assert (=> (and b!72896 (= lambda!9199 p!702) b!72881) d!54701))

(declare-fun b_lambda!15805 () Bool)

(assert (= b_lambda!15799 (or (and start!10092 b_free!7319) b_lambda!15805)))

(declare-fun b_lambda!15807 () Bool)

(assert (= b_lambda!15801 (or b!72864 b_lambda!15807)))

(declare-fun bs!37784 () Bool)

(declare-fun d!54703 () Bool)

(assert (= bs!37784 (and d!54703 b!72864)))

(assert (=> bs!37784 (= (dynLambda!964 lambda!9196 (head!1009 l!1390)) (not (dynLambda!964 p!702 (head!1009 l!1390))))))

(declare-fun b_lambda!15811 () Bool)

(assert (=> (not b_lambda!15811) (not bs!37784)))

(assert (=> bs!37784 t!47523))

(declare-fun b_and!58765 () Bool)

(assert (= b_and!58763 (and (=> t!47523 result!46577) b_and!58765)))

(assert (=> bs!37784 m!72652))

(assert (=> b!72901 d!54703))

(push 1)

(assert (not d!54697))

(assert (not b_lambda!15809))

(assert (not b_next!39095))

(assert (not b_lambda!15803))

(assert (not b_lambda!15807))

(assert (not b_lambda!15805))

(assert (not b!72895))

(assert (not b_lambda!15795))

(assert (not b_lambda!15811))

(assert (not b!72880))

(assert (not b!72900))

(assert b_and!58765)

(assert (not b!72896))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58765)

(assert (not b_next!39095))

(check-sat)

(pop 1)

