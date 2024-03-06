; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3006 () Bool)

(assert start!3006)

(declare-fun b_free!2027 () Bool)

(declare-fun b_next!4725 () Bool)

(assert (=> start!3006 (= b_free!2027 (not b_next!4725))))

(declare-fun tp!3399 () Bool)

(declare-fun b_and!7101 () Bool)

(assert (=> start!3006 (= tp!3399 b_and!7101)))

(declare-fun b_free!2029 () Bool)

(declare-fun b_next!4727 () Bool)

(assert (=> start!3006 (= b_free!2029 (not b_next!4727))))

(declare-fun tp!3398 () Bool)

(declare-fun b_and!7103 () Bool)

(assert (=> start!3006 (= tp!3398 b_and!7103)))

(declare-fun lambda!3492 () Int)

(declare-fun b_next!4729 () Bool)

(declare-fun add1!1 () Int)

(assert (=> start!3006 (= b_next!4725 (or (and start!3006 (= lambda!3492 add1!1)) b_next!4729))))

(declare-fun add2!1 () Int)

(declare-fun b_next!4731 () Bool)

(assert (=> start!3006 (= b_next!4727 (or (and start!3006 (= lambda!3492 add2!1)) b_next!4731))))

(declare-fun bs!4868 () Bool)

(declare-fun b!14114 () Bool)

(assert (= bs!4868 (and b!14114 start!3006)))

(declare-fun lambda!3493 () Int)

(assert (=> bs!4868 (= (= #b00000000000000000000000000000010 #b00000000000000000000000000000001) (= lambda!3493 lambda!3492))))

(declare-fun b_next!4733 () Bool)

(assert (=> start!3006 (= b_next!4729 (or (and b!14114 (= lambda!3493 add1!1)) b_next!4733))))

(declare-fun b_next!4735 () Bool)

(assert (=> start!3006 (= b_next!4731 (or (and b!14114 (= lambda!3493 add2!1)) b_next!4735))))

(declare-fun res!5394 () Bool)

(declare-fun e!7794 () Bool)

(assert (=> start!3006 (=> (not res!5394) (not e!7794))))

(assert (=> start!3006 (= res!5394 (= add1!1 lambda!3492))))

(assert (=> start!3006 e!7794))

(assert (=> start!3006 tp!3399))

(assert (=> start!3006 tp!3398))

(declare-fun res!5395 () Bool)

(assert (=> b!14114 (=> (not res!5395) (not e!7794))))

(assert (=> b!14114 (= res!5395 (= add2!1 lambda!3493))))

(declare-fun b!14115 () Bool)

(declare-fun dynLambda!557 (Int (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!14115 (= e!7794 (not (= (dynLambda!557 add1!1 (dynLambda!557 add2!1 #b00000000000000000000000000000001)) #b00000000000000000000000000000100)))))

(assert (= (and start!3006 res!5394) b!14114))

(assert (= (and b!14114 res!5395) b!14115))

(declare-fun b_lambda!7369 () Bool)

(assert (=> (not b_lambda!7369) (not b!14115)))

(declare-fun t!4086 () Bool)

(declare-fun tb!3705 () Bool)

(assert (=> (and start!3006 (= add1!1 add1!1) t!4086) tb!3705))

(declare-fun result!3777 () Bool)

(assert (=> tb!3705 (= result!3777 true)))

(assert (=> b!14115 t!4086))

(declare-fun b_and!7105 () Bool)

(assert (= b_and!7101 (and (=> t!4086 result!3777) b_and!7105)))

(declare-fun tb!3707 () Bool)

(declare-fun t!4088 () Bool)

(assert (=> (and start!3006 (= add2!1 add1!1) t!4088) tb!3707))

(declare-fun result!3779 () Bool)

(assert (=> tb!3707 (= result!3779 true)))

(assert (=> b!14115 t!4088))

(declare-fun b_and!7107 () Bool)

(assert (= b_and!7103 (and (=> t!4088 result!3779) b_and!7107)))

(declare-fun b_lambda!7371 () Bool)

(assert (=> (not b_lambda!7371) (not b!14115)))

(declare-fun tb!3709 () Bool)

(declare-fun t!4090 () Bool)

(assert (=> (and start!3006 (= add1!1 add2!1) t!4090) tb!3709))

(declare-fun result!3781 () Bool)

(assert (=> tb!3709 (= result!3781 true)))

(assert (=> b!14115 t!4090))

(declare-fun b_and!7109 () Bool)

(assert (= b_and!7105 (and (=> t!4090 result!3781) b_and!7109)))

(declare-fun t!4092 () Bool)

(declare-fun tb!3711 () Bool)

(assert (=> (and start!3006 (= add2!1 add2!1) t!4092) tb!3711))

(declare-fun result!3783 () Bool)

(assert (=> tb!3711 (= result!3783 true)))

(assert (=> b!14115 t!4092))

(declare-fun b_and!7111 () Bool)

(assert (= b_and!7107 (and (=> t!4092 result!3783) b_and!7111)))

(declare-fun m!17993 () Bool)

(assert (=> b!14115 m!17993))

(assert (=> b!14115 m!17993))

(declare-fun m!17995 () Bool)

(assert (=> b!14115 m!17995))

(push 1)

(assert b_and!7109)

(assert (not b_next!4733))

(assert (not b_lambda!7369))

(assert (not b_next!4735))

(assert b_and!7111)

(assert (not b_lambda!7371))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7109)

(assert b_and!7111)

(assert (not b_next!4735))

(assert (not b_next!4733))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7373 () Bool)

(assert (= b_lambda!7371 (or (and start!3006 (= lambda!3492 add2!1)) (and b!14114 (= lambda!3493 add2!1)) (and start!3006 b_free!2027 (= add1!1 add2!1)) (and start!3006 b_free!2029) b_lambda!7373)))

(declare-fun bs!4869 () Bool)

(declare-fun d!10989 () Bool)

(assert (= bs!4869 (and d!10989 start!3006)))

(assert (=> bs!4869 (= (dynLambda!557 lambda!3492 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 #b00000000000000000000000000000001))))

(assert (=> (and start!3006 (= lambda!3492 add2!1) b!14115) d!10989))

(declare-fun bs!4870 () Bool)

(declare-fun d!10991 () Bool)

(assert (= bs!4870 (and d!10991 b!14114)))

(assert (=> bs!4870 (= (dynLambda!557 lambda!3493 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 #b00000000000000000000000000000010))))

(assert (=> (and b!14114 (= lambda!3493 add2!1) b!14115) d!10991))

(declare-fun b_lambda!7375 () Bool)

(assert (= b_lambda!7369 (or (and start!3006 (= lambda!3492 add1!1)) (and b!14114 (= lambda!3493 add1!1)) (and start!3006 b_free!2027) (and start!3006 b_free!2029 (= add2!1 add1!1)) b_lambda!7375)))

(declare-fun bs!4871 () Bool)

(declare-fun d!10993 () Bool)

(assert (= bs!4871 (and d!10993 start!3006)))

(assert (=> bs!4871 (= (dynLambda!557 lambda!3492 (dynLambda!557 add2!1 #b00000000000000000000000000000001)) (bvadd (dynLambda!557 add2!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> (and start!3006 (= lambda!3492 add1!1) b!14115) d!10993))

(declare-fun bs!4872 () Bool)

(declare-fun d!10995 () Bool)

(assert (= bs!4872 (and d!10995 b!14114)))

(assert (=> bs!4872 (= (dynLambda!557 lambda!3493 (dynLambda!557 add2!1 #b00000000000000000000000000000001)) (bvadd (dynLambda!557 add2!1 #b00000000000000000000000000000001) #b00000000000000000000000000000010))))

(assert (=> (and b!14114 (= lambda!3493 add1!1) b!14115) d!10995))

(push 1)

(assert b_and!7109)

(assert (not b_next!4733))

(assert (not b_lambda!7373))

(assert (not b_next!4735))

(assert b_and!7111)

(assert (not b_lambda!7375))

(check-sat)

(pop 1)

