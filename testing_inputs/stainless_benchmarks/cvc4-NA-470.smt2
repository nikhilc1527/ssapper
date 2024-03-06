; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3016 () Bool)

(assert start!3016)

(declare-fun b_free!2041 () Bool)

(declare-fun b_next!4805 () Bool)

(assert (=> start!3016 (= b_free!2041 (not b_next!4805))))

(declare-fun tp!3419 () Bool)

(declare-fun b_and!7209 () Bool)

(assert (=> start!3016 (= tp!3419 b_and!7209)))

(declare-fun b_free!2043 () Bool)

(declare-fun b_next!4807 () Bool)

(assert (=> start!3016 (= b_free!2043 (not b_next!4807))))

(declare-fun tp!3420 () Bool)

(declare-fun b_and!7211 () Bool)

(assert (=> start!3016 (= tp!3420 b_and!7211)))

(declare-fun b!14224 () Bool)

(declare-fun e!7873 () Bool)

(declare-fun x$1!278 () (_ BitVec 32))

(assert (=> b!14224 (= e!7873 (not (= x$1!278 #b00000000000000000000000000000010)))))

(declare-fun b!14225 () Bool)

(declare-fun res!5506 () Bool)

(assert (=> b!14225 (=> (not res!5506) (not e!7873))))

(declare-fun x!8225 () (_ BitVec 32))

(declare-fun a!389 () (_ BitVec 32))

(declare-fun g!49 () Int)

(declare-fun dynLambda!562 (Int (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!14225 (= res!5506 (= a!389 (dynLambda!562 g!49 x!8225)))))

(declare-fun b!14226 () Bool)

(declare-fun res!5503 () Bool)

(assert (=> b!14226 (=> (not res!5503) (not e!7873))))

(assert (=> b!14226 (= res!5503 true)))

(declare-fun res!5504 () Bool)

(assert (=> start!3016 (=> (not res!5504) (not e!7873))))

(assert (=> start!3016 (= res!5504 (= (dynLambda!562 g!49 #b00000000000000000000000000000001) #b00000000000000000000000000000010))))

(assert (=> start!3016 e!7873))

(assert (=> start!3016 true))

(assert (=> start!3016 tp!3419))

(assert (=> start!3016 tp!3420))

(declare-fun b!14227 () Bool)

(declare-fun res!5505 () Bool)

(assert (=> b!14227 (=> (not res!5505) (not e!7873))))

(assert (=> b!14227 (= res!5505 (= x!8225 #b00000000000000000000000000000001))))

(declare-fun b!14228 () Bool)

(declare-fun res!5502 () Bool)

(assert (=> b!14228 (=> (not res!5502) (not e!7873))))

(declare-fun f!1994 () Int)

(assert (=> b!14228 (= res!5502 (= x$1!278 (dynLambda!562 f!1994 (dynLambda!562 g!49 a!389))))))

(assert (= (and start!3016 res!5504) b!14226))

(assert (= (and b!14226 res!5503) b!14225))

(assert (= (and b!14225 res!5506) b!14227))

(assert (= (and b!14227 res!5505) b!14228))

(assert (= (and b!14228 res!5502) b!14224))

(declare-fun b_lambda!7803 () Bool)

(assert (=> (not b_lambda!7803) (not b!14225)))

(declare-fun t!4182 () Bool)

(declare-fun tb!3799 () Bool)

(assert (=> (and start!3016 (= f!1994 g!49) t!4182) tb!3799))

(declare-fun result!3871 () Bool)

(assert (=> tb!3799 (= result!3871 true)))

(assert (=> b!14225 t!4182))

(declare-fun b_and!7213 () Bool)

(assert (= b_and!7209 (and (=> t!4182 result!3871) b_and!7213)))

(declare-fun t!4184 () Bool)

(declare-fun tb!3801 () Bool)

(assert (=> (and start!3016 (= g!49 g!49) t!4184) tb!3801))

(declare-fun result!3873 () Bool)

(assert (=> tb!3801 (= result!3873 true)))

(assert (=> b!14225 t!4184))

(declare-fun b_and!7215 () Bool)

(assert (= b_and!7211 (and (=> t!4184 result!3873) b_and!7215)))

(declare-fun b_lambda!7805 () Bool)

(assert (=> (not b_lambda!7805) (not start!3016)))

(declare-fun tb!3803 () Bool)

(declare-fun t!4186 () Bool)

(assert (=> (and start!3016 (= f!1994 g!49) t!4186) tb!3803))

(declare-fun result!3875 () Bool)

(assert (=> tb!3803 (= result!3875 true)))

(assert (=> start!3016 t!4186))

(declare-fun b_and!7217 () Bool)

(assert (= b_and!7213 (and (=> t!4186 result!3875) b_and!7217)))

(declare-fun t!4188 () Bool)

(declare-fun tb!3805 () Bool)

(assert (=> (and start!3016 (= g!49 g!49) t!4188) tb!3805))

(declare-fun result!3877 () Bool)

(assert (=> tb!3805 (= result!3877 true)))

(assert (=> start!3016 t!4188))

(declare-fun b_and!7219 () Bool)

(assert (= b_and!7215 (and (=> t!4188 result!3877) b_and!7219)))

(declare-fun b_lambda!7807 () Bool)

(assert (=> (not b_lambda!7807) (not b!14228)))

(declare-fun t!4190 () Bool)

(declare-fun tb!3807 () Bool)

(assert (=> (and start!3016 (= f!1994 f!1994) t!4190) tb!3807))

(declare-fun result!3879 () Bool)

(assert (=> tb!3807 (= result!3879 true)))

(assert (=> b!14228 t!4190))

(declare-fun b_and!7221 () Bool)

(assert (= b_and!7217 (and (=> t!4190 result!3879) b_and!7221)))

(declare-fun tb!3809 () Bool)

(declare-fun t!4192 () Bool)

(assert (=> (and start!3016 (= g!49 f!1994) t!4192) tb!3809))

(declare-fun result!3881 () Bool)

(assert (=> tb!3809 (= result!3881 true)))

(assert (=> b!14228 t!4192))

(declare-fun b_and!7223 () Bool)

(assert (= b_and!7219 (and (=> t!4192 result!3881) b_and!7223)))

(declare-fun b_lambda!7809 () Bool)

(assert (=> (not b_lambda!7809) (not b!14228)))

(declare-fun tb!3811 () Bool)

(declare-fun t!4194 () Bool)

(assert (=> (and start!3016 (= f!1994 g!49) t!4194) tb!3811))

(declare-fun result!3883 () Bool)

(assert (=> tb!3811 (= result!3883 true)))

(assert (=> b!14228 t!4194))

(declare-fun b_and!7225 () Bool)

(assert (= b_and!7221 (and (=> t!4194 result!3883) b_and!7225)))

(declare-fun t!4196 () Bool)

(declare-fun tb!3813 () Bool)

(assert (=> (and start!3016 (= g!49 g!49) t!4196) tb!3813))

(declare-fun result!3885 () Bool)

(assert (=> tb!3813 (= result!3885 true)))

(assert (=> b!14228 t!4196))

(declare-fun b_and!7227 () Bool)

(assert (= b_and!7223 (and (=> t!4196 result!3885) b_and!7227)))

(declare-fun m!18099 () Bool)

(assert (=> b!14225 m!18099))

(declare-fun m!18101 () Bool)

(assert (=> start!3016 m!18101))

(declare-fun m!18103 () Bool)

(assert (=> b!14228 m!18103))

(assert (=> b!14228 m!18103))

(declare-fun m!18105 () Bool)

(assert (=> b!14228 m!18105))

(push 1)

(assert (not b_lambda!7807))

(assert b_and!7227)

(assert (not b_lambda!7803))

(assert b_and!7225)

(assert (not b_next!4805))

(assert (not b_lambda!7809))

(assert (not b_next!4807))

(assert (not b_lambda!7805))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7225)

(assert b_and!7227)

(assert (not b_next!4807))

(assert (not b_next!4805))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7811 () Bool)

(assert (= b_lambda!7809 (or (and start!3016 b_free!2041 (= f!1994 g!49)) (and start!3016 b_free!2043) b_lambda!7811)))

(declare-fun b_lambda!7813 () Bool)

(assert (= b_lambda!7803 (or (and start!3016 b_free!2041 (= f!1994 g!49)) (and start!3016 b_free!2043) b_lambda!7813)))

(declare-fun b_lambda!7815 () Bool)

(assert (= b_lambda!7807 (or (and start!3016 b_free!2041) (and start!3016 b_free!2043 (= g!49 f!1994)) b_lambda!7815)))

(declare-fun b_lambda!7817 () Bool)

(assert (= b_lambda!7805 (or (and start!3016 b_free!2041 (= f!1994 g!49)) (and start!3016 b_free!2043) b_lambda!7817)))

(push 1)

(assert b_and!7227)

(assert (not b_lambda!7817))

(assert b_and!7225)

(assert (not b_next!4805))

(assert (not b_lambda!7815))

(assert (not b_next!4807))

(assert (not b_lambda!7813))

(assert (not b_lambda!7811))

(check-sat)

(get-model)

(pop 1)

(push 1)

(assert (not b_lambda!7811))

(assert (not b_lambda!7813))

(assert (not b_lambda!7815))

(assert (not b_lambda!7817))

(assert b_and!7225)

(assert b_and!7227)

(assert (not b_next!4807))

(assert (not b_next!4805))

(assert (not m!18099))

(assert (not m!18101))

(assert (not m!18103))

(assert (not m!18105))

(check-sat)

(pop 1)

(declare-fun bs!5012 () Bool)

(declare-fun s!711 () Bool)

(assert (= bs!5012 (and start!3016 b!14226 s!711)))

(assert (=> bs!5012 (=> true (= (dynLambda!562 f!1994 (dynLambda!562 g!49 x!8225)) x!8225))))

(declare-fun b_lambda!7819 () Bool)

(assert (=> (not b_lambda!7819) (not bs!5012)))

(declare-fun t!4198 () Bool)

(declare-fun tb!3815 () Bool)

(assert (=> (and start!3016 (= f!1994 f!1994) t!4198) tb!3815))

(declare-fun result!3887 () Bool)

(assert (=> tb!3815 (= result!3887 true)))

(assert (=> bs!5012 t!4198))

(declare-fun b_and!7229 () Bool)

(assert (= b_and!7225 (and (=> t!4198 result!3887) b_and!7229)))

(declare-fun t!4200 () Bool)

(declare-fun tb!3817 () Bool)

(assert (=> (and start!3016 (= g!49 f!1994) t!4200) tb!3817))

(declare-fun result!3889 () Bool)

(assert (=> tb!3817 (= result!3889 true)))

(assert (=> bs!5012 t!4200))

(declare-fun b_and!7231 () Bool)

(assert (= b_and!7227 (and (=> t!4200 result!3889) b_and!7231)))

(declare-fun b_lambda!7821 () Bool)

(assert (=> (not b_lambda!7821) (not bs!5012)))

(assert (=> bs!5012 t!4182))

(declare-fun b_and!7233 () Bool)

(assert (= b_and!7229 (and (=> t!4182 result!3871) b_and!7233)))

(assert (=> bs!5012 t!4184))

(declare-fun b_and!7235 () Bool)

(assert (= b_and!7231 (and (=> t!4184 result!3873) b_and!7235)))

(declare-fun m!18107 () Bool)

(assert (=> m!18099 m!18107))

(assert (=> m!18099 s!711))

(declare-fun bs!5013 () Bool)

(declare-fun s!713 () Bool)

(assert (= bs!5013 (and start!3016 b!14226 s!713)))

(assert (=> bs!5013 (=> true (= (dynLambda!562 f!1994 (dynLambda!562 g!49 #b00000000000000000000000000000001)) #b00000000000000000000000000000001))))

(declare-fun b_lambda!7823 () Bool)

(assert (=> (not b_lambda!7823) (not bs!5013)))

(declare-fun t!4202 () Bool)

(declare-fun tb!3819 () Bool)

(assert (=> (and start!3016 (= f!1994 f!1994) t!4202) tb!3819))

(declare-fun result!3891 () Bool)

(assert (=> tb!3819 (= result!3891 true)))

(assert (=> bs!5013 t!4202))

(declare-fun b_and!7237 () Bool)

(assert (= b_and!7233 (and (=> t!4202 result!3891) b_and!7237)))

(declare-fun tb!3821 () Bool)

(declare-fun t!4204 () Bool)

(assert (=> (and start!3016 (= g!49 f!1994) t!4204) tb!3821))

(declare-fun result!3893 () Bool)

(assert (=> tb!3821 (= result!3893 true)))

(assert (=> bs!5013 t!4204))

(declare-fun b_and!7239 () Bool)

(assert (= b_and!7235 (and (=> t!4204 result!3893) b_and!7239)))

(declare-fun b_lambda!7825 () Bool)

(assert (=> (not b_lambda!7825) (not bs!5013)))

(assert (=> bs!5013 t!4186))

(declare-fun b_and!7241 () Bool)

(assert (= b_and!7237 (and (=> t!4186 result!3875) b_and!7241)))

(assert (=> bs!5013 t!4188))

(declare-fun b_and!7243 () Bool)

(assert (= b_and!7239 (and (=> t!4188 result!3877) b_and!7243)))

(declare-fun m!18109 () Bool)

(assert (=> m!18101 m!18109))

(assert (=> m!18101 s!713))

(declare-fun bs!5014 () Bool)

(declare-fun s!715 () Bool)

(assert (= bs!5014 (and start!3016 b!14226 s!715)))

(assert (=> bs!5014 (=> true (= (dynLambda!562 f!1994 (dynLambda!562 g!49 a!389)) a!389))))

(declare-fun b_lambda!7827 () Bool)

(assert (=> (not b_lambda!7827) (not bs!5014)))

(assert (=> bs!5014 t!4190))

(declare-fun b_and!7245 () Bool)

(assert (= b_and!7241 (and (=> t!4190 result!3879) b_and!7245)))

(assert (=> bs!5014 t!4192))

(declare-fun b_and!7247 () Bool)

(assert (= b_and!7243 (and (=> t!4192 result!3881) b_and!7247)))

(declare-fun b_lambda!7829 () Bool)

(assert (=> (not b_lambda!7829) (not bs!5014)))

(assert (=> bs!5014 t!4194))

(declare-fun b_and!7249 () Bool)

(assert (= b_and!7245 (and (=> t!4194 result!3883) b_and!7249)))

(assert (=> bs!5014 t!4196))

(declare-fun b_and!7251 () Bool)

(assert (= b_and!7247 (and (=> t!4196 result!3885) b_and!7251)))

(assert (=> m!18103 m!18105))

(assert (=> m!18103 s!715))

(declare-fun bs!5015 () Bool)

(declare-fun s!717 () Bool)

(assert (= bs!5015 (and start!3016 b!14226 s!717)))

(assert (=> bs!5015 (=> true (= (dynLambda!562 f!1994 (dynLambda!562 g!49 (dynLambda!562 g!49 a!389))) (dynLambda!562 g!49 a!389)))))

(declare-fun b_lambda!7831 () Bool)

(assert (=> (not b_lambda!7831) (not bs!5015)))

(declare-fun t!4206 () Bool)

(declare-fun tb!3823 () Bool)

(assert (=> (and start!3016 (= f!1994 f!1994) t!4206) tb!3823))

(declare-fun result!3895 () Bool)

(assert (=> tb!3823 (= result!3895 true)))

(assert (=> bs!5015 t!4206))

(declare-fun b_and!7253 () Bool)

(assert (= b_and!7249 (and (=> t!4206 result!3895) b_and!7253)))

(declare-fun tb!3825 () Bool)

(declare-fun t!4208 () Bool)

(assert (=> (and start!3016 (= g!49 f!1994) t!4208) tb!3825))

(declare-fun result!3897 () Bool)

(assert (=> tb!3825 (= result!3897 true)))

(assert (=> bs!5015 t!4208))

(declare-fun b_and!7255 () Bool)

(assert (= b_and!7251 (and (=> t!4208 result!3897) b_and!7255)))

(declare-fun b_lambda!7833 () Bool)

(assert (=> (not b_lambda!7833) (not bs!5015)))

(declare-fun t!4210 () Bool)

(declare-fun tb!3827 () Bool)

(assert (=> (and start!3016 (= f!1994 g!49) t!4210) tb!3827))

(declare-fun result!3899 () Bool)

(assert (=> tb!3827 (= result!3899 true)))

(assert (=> bs!5015 t!4210))

(declare-fun b_and!7257 () Bool)

(assert (= b_and!7253 (and (=> t!4210 result!3899) b_and!7257)))

(declare-fun t!4212 () Bool)

(declare-fun tb!3829 () Bool)

(assert (=> (and start!3016 (= g!49 g!49) t!4212) tb!3829))

(declare-fun result!3901 () Bool)

(assert (=> tb!3829 (= result!3901 true)))

(assert (=> bs!5015 t!4212))

(declare-fun b_and!7259 () Bool)

(assert (= b_and!7255 (and (=> t!4212 result!3901) b_and!7259)))

(declare-fun m!18111 () Bool)

(assert (=> m!18105 m!18111))

(declare-fun m!18113 () Bool)

(assert (=> m!18105 m!18113))

(assert (=> m!18105 s!717))

(push 1)

(assert (not b_lambda!7825))

(assert (not b_lambda!7831))

(assert (not b_lambda!7817))

(assert (not b_lambda!7829))

(assert (not b_lambda!7833))

(assert b_and!7257)

(assert (not b_lambda!7819))

(assert (not b_next!4805))

(assert (not b_lambda!7827))

(assert (not b_lambda!7821))

(assert b_and!7259)

(assert (not b_lambda!7815))

(assert (not b_lambda!7823))

(assert (not b_next!4807))

(assert (not b_lambda!7813))

(assert (not b_lambda!7811))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7257)

(assert b_and!7259)

(assert (not b_next!4807))

(assert (not b_next!4805))

(check-sat)

(pop 1)

