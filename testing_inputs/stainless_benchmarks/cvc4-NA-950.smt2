; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7194 () Bool)

(assert start!7194)

(declare-datatypes () ((T!2994 (T!2995 (val!143 Int)))))

(declare-fun x1!42 () T!2994)

(declare-fun x2!44 () T!2994)

(declare-fun e!27414 () Bool)

(declare-fun b!52813 () Bool)

(declare-datatypes () ((List!420 (Cons!407 (h!609 T!2994) (t!46684 List!420)) (Nil!408))))

(declare-fun l!1016 () List!420)

(declare-fun indexOf!4 (List!420 T!2994) Int)

(assert (=> b!52813 (= e!27414 (= (indexOf!4 l!1016 x1!42) (indexOf!4 l!1016 x2!44)))))

(declare-fun b!52814 () Bool)

(declare-fun e!27413 () Bool)

(declare-fun head!670 (List!420) T!2994)

(assert (=> b!52814 (= e!27413 (= (head!670 l!1016) x2!44))))

(declare-fun b!52815 () Bool)

(declare-fun res!23968 () Bool)

(assert (=> b!52815 (=> (not res!23968) (not e!27414))))

(assert (=> b!52815 (= res!23968 (not (= x1!42 x2!44)))))

(declare-fun b!52816 () Bool)

(declare-fun res!23967 () Bool)

(assert (=> b!52816 (=> (not res!23967) (not e!27414))))

(declare-fun contains!44 (List!420 T!2994) Bool)

(assert (=> b!52816 (= res!23967 (contains!44 l!1016 x2!44))))

(declare-fun b!52817 () Bool)

(declare-fun res!23972 () Bool)

(assert (=> b!52817 (=> (not res!23972) (not e!27414))))

(declare-datatypes () ((Unit!867 (Unit!868))))

(declare-fun x$1!746 () Unit!867)

(declare-fun Unit!869 () Unit!867)

(assert (=> b!52817 (= res!23972 (= x$1!746 Unit!869))))

(declare-fun res!23970 () Bool)

(assert (=> start!7194 (=> (not res!23970) (not e!27414))))

(assert (=> start!7194 (= res!23970 (contains!44 l!1016 x1!42))))

(assert (=> start!7194 e!27414))

(declare-fun e!27415 () Bool)

(assert (=> start!7194 e!27415))

(declare-fun tp_is_empty!285 () Bool)

(assert (=> start!7194 tp_is_empty!285))

(assert (=> start!7194 true))

(declare-fun b!52818 () Bool)

(declare-fun res!23973 () Bool)

(assert (=> b!52818 (=> (not res!23973) (not e!27414))))

(assert (=> b!52818 (= res!23973 e!27413)))

(declare-fun res!23969 () Bool)

(assert (=> b!52818 (=> res!23969 e!27413)))

(declare-fun isEmpty!437 (List!420) Bool)

(assert (=> b!52818 (= res!23969 (isEmpty!437 l!1016))))

(declare-fun b!52819 () Bool)

(declare-fun tp!14948 () Bool)

(assert (=> b!52819 (= e!27415 (and tp_is_empty!285 tp!14948))))

(declare-fun b!52820 () Bool)

(declare-fun res!23971 () Bool)

(assert (=> b!52820 (=> res!23971 e!27413)))

(assert (=> b!52820 (= res!23971 (= (head!670 l!1016) x1!42))))

(assert (= (and start!7194 res!23970) b!52816))

(assert (= (and b!52816 res!23967) b!52815))

(assert (= (and b!52815 res!23968) b!52818))

(assert (= (and b!52818 (not res!23969)) b!52820))

(assert (= (and b!52820 (not res!23971)) b!52814))

(assert (= (and b!52818 res!23973) b!52817))

(assert (= (and b!52817 res!23972) b!52813))

(assert (= (and start!7194 (is-Cons!407 l!1016)) b!52819))

(declare-fun m!56855 () Bool)

(assert (=> b!52813 m!56855))

(declare-fun m!56857 () Bool)

(assert (=> b!52813 m!56857))

(declare-fun m!56859 () Bool)

(assert (=> b!52818 m!56859))

(declare-fun m!56861 () Bool)

(assert (=> b!52816 m!56861))

(declare-fun m!56863 () Bool)

(assert (=> b!52814 m!56863))

(declare-fun m!56865 () Bool)

(assert (=> start!7194 m!56865))

(assert (=> b!52820 m!56863))

(push 1)

(assert (not b!52816))

(assert (not b!52820))

(assert tp_is_empty!285)

(assert (not b!52819))

(assert (not b!52814))

(assert (not b!52813))

(assert (not b!52818))

(assert (not start!7194))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44450 () Bool)

(assert (=> d!44450 (= (isEmpty!437 l!1016) (is-Nil!408 l!1016))))

(assert (=> b!52818 d!44450))

(declare-fun d!44452 () Bool)

(declare-fun lt!9231 () Bool)

(declare-fun content!95 (List!420) (Set T!2994))

(assert (=> d!44452 (= lt!9231 (member x2!44 (content!95 l!1016)))))

(declare-fun e!27420 () Bool)

(assert (=> d!44452 (= lt!9231 e!27420)))

(declare-fun res!23979 () Bool)

(assert (=> d!44452 (=> (not res!23979) (not e!27420))))

(assert (=> d!44452 (= res!23979 (is-Cons!407 l!1016))))

(assert (=> d!44452 (= (contains!44 l!1016 x2!44) lt!9231)))

(declare-fun b!52825 () Bool)

(declare-fun e!27421 () Bool)

(assert (=> b!52825 (= e!27420 e!27421)))

(declare-fun res!23978 () Bool)

(assert (=> b!52825 (=> res!23978 e!27421)))

(assert (=> b!52825 (= res!23978 (= (h!609 l!1016) x2!44))))

(declare-fun b!52826 () Bool)

(assert (=> b!52826 (= e!27421 (contains!44 (t!46684 l!1016) x2!44))))

(assert (= (and d!44452 res!23979) b!52825))

(assert (= (and b!52825 (not res!23978)) b!52826))

(declare-fun m!56867 () Bool)

(assert (=> d!44452 m!56867))

(declare-fun m!56869 () Bool)

(assert (=> d!44452 m!56869))

(declare-fun m!56871 () Bool)

(assert (=> b!52826 m!56871))

(assert (=> b!52816 d!44452))

(declare-fun d!44454 () Bool)

(assert (=> d!44454 (= (head!670 l!1016) (h!609 l!1016))))

(assert (=> b!52814 d!44454))

(assert (=> b!52820 d!44454))

(declare-fun b!52835 () Bool)

(declare-fun e!27426 () Int)

(assert (=> b!52835 (= e!27426 (- 1))))

(declare-fun d!44456 () Bool)

(declare-fun lt!9236 () Int)

(assert (=> d!44456 (= (>= lt!9236 0) (member x1!42 (content!95 l!1016)))))

(assert (=> d!44456 (= lt!9236 e!27426)))

(declare-fun c!11471 () Bool)

(assert (=> d!44456 (= c!11471 (is-Nil!408 l!1016))))

(assert (=> d!44456 (= (indexOf!4 l!1016 x1!42) lt!9236)))

(declare-fun b!52836 () Bool)

(declare-fun e!27427 () Int)

(assert (=> b!52836 (= e!27426 e!27427)))

(declare-fun c!11472 () Bool)

(assert (=> b!52836 (= c!11472 (and (is-Cons!407 l!1016) (= (h!609 l!1016) x1!42)))))

(declare-fun b!52837 () Bool)

(assert (=> b!52837 (= e!27427 0)))

(declare-fun b!52838 () Bool)

(declare-fun lt!9237 () Int)

(assert (=> b!52838 (= e!27427 (ite (= lt!9237 (- 1)) (- 1) (+ lt!9237 1)))))

(assert (=> b!52838 (= lt!9237 (indexOf!4 (t!46684 l!1016) x1!42))))

(assert (= (and b!52836 c!11472) b!52837))

(assert (= (and b!52836 (not c!11472)) b!52838))

(assert (= (and d!44456 c!11471) b!52835))

(assert (= (and d!44456 (not c!11471)) b!52836))

(assert (=> d!44456 m!56867))

(declare-fun m!56873 () Bool)

(assert (=> d!44456 m!56873))

(declare-fun m!56875 () Bool)

(assert (=> b!52838 m!56875))

(assert (=> b!52813 d!44456))

(declare-fun b!52839 () Bool)

(declare-fun e!27428 () Int)

(assert (=> b!52839 (= e!27428 (- 1))))

(declare-fun d!44458 () Bool)

(declare-fun lt!9238 () Int)

(assert (=> d!44458 (= (>= lt!9238 0) (member x2!44 (content!95 l!1016)))))

(assert (=> d!44458 (= lt!9238 e!27428)))

(declare-fun c!11473 () Bool)

(assert (=> d!44458 (= c!11473 (is-Nil!408 l!1016))))

(assert (=> d!44458 (= (indexOf!4 l!1016 x2!44) lt!9238)))

(declare-fun b!52840 () Bool)

(declare-fun e!27429 () Int)

(assert (=> b!52840 (= e!27428 e!27429)))

(declare-fun c!11474 () Bool)

(assert (=> b!52840 (= c!11474 (and (is-Cons!407 l!1016) (= (h!609 l!1016) x2!44)))))

(declare-fun b!52841 () Bool)

(assert (=> b!52841 (= e!27429 0)))

(declare-fun b!52842 () Bool)

(declare-fun lt!9239 () Int)

(assert (=> b!52842 (= e!27429 (ite (= lt!9239 (- 1)) (- 1) (+ lt!9239 1)))))

(assert (=> b!52842 (= lt!9239 (indexOf!4 (t!46684 l!1016) x2!44))))

(assert (= (and b!52840 c!11474) b!52841))

(assert (= (and b!52840 (not c!11474)) b!52842))

(assert (= (and d!44458 c!11473) b!52839))

(assert (= (and d!44458 (not c!11473)) b!52840))

(assert (=> d!44458 m!56867))

(assert (=> d!44458 m!56869))

(declare-fun m!56877 () Bool)

(assert (=> b!52842 m!56877))

(assert (=> b!52813 d!44458))

(declare-fun d!44460 () Bool)

(declare-fun lt!9240 () Bool)

(assert (=> d!44460 (= lt!9240 (member x1!42 (content!95 l!1016)))))

(declare-fun e!27430 () Bool)

(assert (=> d!44460 (= lt!9240 e!27430)))

(declare-fun res!23982 () Bool)

(assert (=> d!44460 (=> (not res!23982) (not e!27430))))

(assert (=> d!44460 (= res!23982 (is-Cons!407 l!1016))))

(assert (=> d!44460 (= (contains!44 l!1016 x1!42) lt!9240)))

(declare-fun b!52843 () Bool)

(declare-fun e!27431 () Bool)

(assert (=> b!52843 (= e!27430 e!27431)))

(declare-fun res!23981 () Bool)

(assert (=> b!52843 (=> res!23981 e!27431)))

(assert (=> b!52843 (= res!23981 (= (h!609 l!1016) x1!42))))

(declare-fun b!52844 () Bool)

(assert (=> b!52844 (= e!27431 (contains!44 (t!46684 l!1016) x1!42))))

(assert (= (and d!44460 res!23982) b!52843))

(assert (= (and b!52843 (not res!23981)) b!52844))

(assert (=> d!44460 m!56867))

(assert (=> d!44460 m!56873))

(declare-fun m!56879 () Bool)

(assert (=> b!52844 m!56879))

(assert (=> start!7194 d!44460))

(declare-fun b!52849 () Bool)

(declare-fun e!27434 () Bool)

(declare-fun tp!14951 () Bool)

(assert (=> b!52849 (= e!27434 (and tp_is_empty!285 tp!14951))))

(assert (=> b!52819 (= tp!14948 e!27434)))

(assert (= (and b!52819 (is-Cons!407 (t!46684 l!1016))) b!52849))

(push 1)

(assert (not d!44452))

(assert tp_is_empty!285)

(assert (not d!44458))

(assert (not b!52849))

(assert (not d!44460))

(assert (not d!44456))

(assert (not b!52844))

(assert (not b!52838))

(assert (not b!52842))

(assert (not b!52826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

