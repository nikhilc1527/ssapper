; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7154 () Bool)

(assert start!7154)

(declare-fun b!52631 () Bool)

(declare-fun e!27318 () Bool)

(declare-fun tp_is_empty!277 () Bool)

(declare-fun tp!14915 () Bool)

(assert (=> b!52631 (= e!27318 (and tp_is_empty!277 tp!14915))))

(declare-fun b!52632 () Bool)

(declare-fun e!27319 () Bool)

(declare-fun tp!14914 () Bool)

(assert (=> b!52632 (= e!27319 (and tp_is_empty!277 tp!14914))))

(declare-fun b!52633 () Bool)

(declare-fun res!23845 () Bool)

(declare-fun e!27320 () Bool)

(assert (=> b!52633 (=> (not res!23845) (not e!27320))))

(declare-datatypes () ((T!2986 (T!2987 (val!139 Int)))))

(declare-datatypes () ((List!416 (Cons!403 (h!601 T!2986) (t!46678 List!416)) (Nil!404))))

(declare-fun l!1016 () List!416)

(declare-fun x2!44 () T!2986)

(declare-fun contains!40 (List!416 T!2986) Bool)

(assert (=> b!52633 (= res!23845 (contains!40 l!1016 x2!44))))

(declare-fun res!23843 () Bool)

(assert (=> start!7154 (=> (not res!23843) (not e!27320))))

(declare-fun x1!42 () T!2986)

(assert (=> start!7154 (= res!23843 (contains!40 l!1016 x1!42))))

(assert (=> start!7154 e!27320))

(assert (=> start!7154 e!27319))

(assert (=> start!7154 tp_is_empty!277))

(assert (=> start!7154 e!27318))

(declare-fun b!52634 () Bool)

(declare-fun res!23844 () Bool)

(assert (=> b!52634 (=> (not res!23844) (not e!27320))))

(declare-fun isEmpty!433 (List!416) Bool)

(assert (=> b!52634 (= res!23844 (not (isEmpty!433 l!1016)))))

(declare-fun b!52635 () Bool)

(declare-fun thiss!7166 () List!416)

(assert (=> b!52635 (= e!27320 (and (= thiss!7166 l!1016) (= thiss!7166 Nil!404)))))

(declare-fun b!52636 () Bool)

(declare-fun res!23842 () Bool)

(assert (=> b!52636 (=> (not res!23842) (not e!27320))))

(assert (=> b!52636 (= res!23842 (not (= x1!42 x2!44)))))

(declare-fun b!52637 () Bool)

(declare-fun res!23846 () Bool)

(assert (=> b!52637 (=> (not res!23846) (not e!27320))))

(declare-fun head!666 (List!416) T!2986)

(assert (=> b!52637 (= res!23846 (not (= (head!666 l!1016) x1!42)))))

(assert (= (and start!7154 res!23843) b!52633))

(assert (= (and b!52633 res!23845) b!52636))

(assert (= (and b!52636 res!23842) b!52634))

(assert (= (and b!52634 res!23844) b!52637))

(assert (= (and b!52637 res!23846) b!52635))

(assert (= (and start!7154 (is-Cons!403 l!1016)) b!52632))

(assert (= (and start!7154 (is-Cons!403 thiss!7166)) b!52631))

(declare-fun m!56751 () Bool)

(assert (=> b!52633 m!56751))

(declare-fun m!56753 () Bool)

(assert (=> start!7154 m!56753))

(declare-fun m!56755 () Bool)

(assert (=> b!52634 m!56755))

(declare-fun m!56757 () Bool)

(assert (=> b!52637 m!56757))

(push 1)

(assert (not b!52634))

(assert (not b!52631))

(assert (not start!7154))

(assert (not b!52637))

(assert tp_is_empty!277)

(assert (not b!52633))

(assert (not b!52632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44404 () Bool)

(assert (=> d!44404 (= (head!666 l!1016) (h!601 l!1016))))

(assert (=> b!52637 d!44404))

(declare-fun d!44406 () Bool)

(assert (=> d!44406 (= (isEmpty!433 l!1016) (is-Nil!404 l!1016))))

(assert (=> b!52634 d!44406))

(declare-fun d!44408 () Bool)

(declare-fun lt!9205 () Bool)

(declare-fun content!91 (List!416) (Set T!2986))

(assert (=> d!44408 (= lt!9205 (member x1!42 (content!91 l!1016)))))

(declare-fun e!27326 () Bool)

(assert (=> d!44408 (= lt!9205 e!27326)))

(declare-fun res!23851 () Bool)

(assert (=> d!44408 (=> (not res!23851) (not e!27326))))

(assert (=> d!44408 (= res!23851 (is-Cons!403 l!1016))))

(assert (=> d!44408 (= (contains!40 l!1016 x1!42) lt!9205)))

(declare-fun b!52642 () Bool)

(declare-fun e!27325 () Bool)

(assert (=> b!52642 (= e!27326 e!27325)))

(declare-fun res!23852 () Bool)

(assert (=> b!52642 (=> res!23852 e!27325)))

(assert (=> b!52642 (= res!23852 (= (h!601 l!1016) x1!42))))

(declare-fun b!52643 () Bool)

(assert (=> b!52643 (= e!27325 (contains!40 (t!46678 l!1016) x1!42))))

(assert (= (and d!44408 res!23851) b!52642))

(assert (= (and b!52642 (not res!23852)) b!52643))

(declare-fun m!56759 () Bool)

(assert (=> d!44408 m!56759))

(declare-fun m!56761 () Bool)

(assert (=> d!44408 m!56761))

(declare-fun m!56763 () Bool)

(assert (=> b!52643 m!56763))

(assert (=> start!7154 d!44408))

(declare-fun d!44410 () Bool)

(declare-fun lt!9206 () Bool)

(assert (=> d!44410 (= lt!9206 (member x2!44 (content!91 l!1016)))))

(declare-fun e!27328 () Bool)

(assert (=> d!44410 (= lt!9206 e!27328)))

(declare-fun res!23853 () Bool)

(assert (=> d!44410 (=> (not res!23853) (not e!27328))))

(assert (=> d!44410 (= res!23853 (is-Cons!403 l!1016))))

(assert (=> d!44410 (= (contains!40 l!1016 x2!44) lt!9206)))

(declare-fun b!52644 () Bool)

(declare-fun e!27327 () Bool)

(assert (=> b!52644 (= e!27328 e!27327)))

(declare-fun res!23854 () Bool)

(assert (=> b!52644 (=> res!23854 e!27327)))

(assert (=> b!52644 (= res!23854 (= (h!601 l!1016) x2!44))))

(declare-fun b!52645 () Bool)

(assert (=> b!52645 (= e!27327 (contains!40 (t!46678 l!1016) x2!44))))

(assert (= (and d!44410 res!23853) b!52644))

(assert (= (and b!52644 (not res!23854)) b!52645))

(assert (=> d!44410 m!56759))

(declare-fun m!56765 () Bool)

(assert (=> d!44410 m!56765))

(declare-fun m!56767 () Bool)

(assert (=> b!52645 m!56767))

(assert (=> b!52633 d!44410))

(declare-fun b!52650 () Bool)

(declare-fun e!27331 () Bool)

(declare-fun tp!14918 () Bool)

(assert (=> b!52650 (= e!27331 (and tp_is_empty!277 tp!14918))))

(assert (=> b!52632 (= tp!14914 e!27331)))

(assert (= (and b!52632 (is-Cons!403 (t!46678 l!1016))) b!52650))

(declare-fun b!52651 () Bool)

(declare-fun e!27332 () Bool)

(declare-fun tp!14919 () Bool)

(assert (=> b!52651 (= e!27332 (and tp_is_empty!277 tp!14919))))

(assert (=> b!52631 (= tp!14915 e!27332)))

(assert (= (and b!52631 (is-Cons!403 (t!46678 thiss!7166))) b!52651))

(push 1)

(assert (not b!52651))

(assert (not b!52650))

(assert tp_is_empty!277)

(assert (not d!44410))

(assert (not b!52643))

(assert (not d!44408))

(assert (not b!52645))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

