; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7162 () Bool)

(assert start!7162)

(declare-fun b!52668 () Bool)

(declare-fun e!27341 () Bool)

(declare-datatypes () ((T!2988 (T!2989 (val!140 Int)))))

(declare-datatypes () ((List!417 (Cons!404 (h!603 T!2988) (t!46679 List!417)) (Nil!405))))

(declare-fun thiss!7168 () List!417)

(declare-fun l!1016 () List!417)

(assert (=> b!52668 (= e!27341 (and (= thiss!7168 l!1016) (= thiss!7168 Nil!405)))))

(declare-fun b!52669 () Bool)

(declare-fun res!23872 () Bool)

(assert (=> b!52669 (=> (not res!23872) (not e!27341))))

(declare-fun x2!44 () T!2988)

(declare-fun contains!41 (List!417 T!2988) Bool)

(assert (=> b!52669 (= res!23872 (contains!41 l!1016 x2!44))))

(declare-fun b!52670 () Bool)

(declare-fun e!27340 () Bool)

(declare-fun tp_is_empty!279 () Bool)

(declare-fun tp!14924 () Bool)

(assert (=> b!52670 (= e!27340 (and tp_is_empty!279 tp!14924))))

(declare-fun b!52671 () Bool)

(declare-fun e!27339 () Bool)

(declare-fun tp!14925 () Bool)

(assert (=> b!52671 (= e!27339 (and tp_is_empty!279 tp!14925))))

(declare-fun b!52672 () Bool)

(declare-fun res!23868 () Bool)

(assert (=> b!52672 (=> (not res!23868) (not e!27341))))

(declare-fun x1!42 () T!2988)

(declare-fun head!667 (List!417) T!2988)

(assert (=> b!52672 (= res!23868 (not (= (head!667 l!1016) x1!42)))))

(declare-fun b!52673 () Bool)

(declare-fun res!23871 () Bool)

(assert (=> b!52673 (=> (not res!23871) (not e!27341))))

(declare-fun isEmpty!434 (List!417) Bool)

(assert (=> b!52673 (= res!23871 (not (isEmpty!434 l!1016)))))

(declare-fun b!52674 () Bool)

(declare-fun res!23870 () Bool)

(assert (=> b!52674 (=> (not res!23870) (not e!27341))))

(assert (=> b!52674 (= res!23870 (not (= x1!42 x2!44)))))

(declare-fun b!52675 () Bool)

(declare-fun res!23867 () Bool)

(assert (=> b!52675 (=> (not res!23867) (not e!27341))))

(assert (=> b!52675 (= res!23867 (not (= (head!667 l!1016) x2!44)))))

(declare-fun res!23869 () Bool)

(assert (=> start!7162 (=> (not res!23869) (not e!27341))))

(assert (=> start!7162 (= res!23869 (contains!41 l!1016 x1!42))))

(assert (=> start!7162 e!27341))

(assert (=> start!7162 e!27340))

(assert (=> start!7162 tp_is_empty!279))

(assert (=> start!7162 e!27339))

(assert (= (and start!7162 res!23869) b!52669))

(assert (= (and b!52669 res!23872) b!52674))

(assert (= (and b!52674 res!23870) b!52673))

(assert (= (and b!52673 res!23871) b!52672))

(assert (= (and b!52672 res!23868) b!52675))

(assert (= (and b!52675 res!23867) b!52668))

(assert (= (and start!7162 (is-Cons!404 l!1016)) b!52670))

(assert (= (and start!7162 (is-Cons!404 thiss!7168)) b!52671))

(declare-fun m!56769 () Bool)

(assert (=> b!52672 m!56769))

(declare-fun m!56771 () Bool)

(assert (=> b!52673 m!56771))

(declare-fun m!56773 () Bool)

(assert (=> b!52669 m!56773))

(declare-fun m!56775 () Bool)

(assert (=> start!7162 m!56775))

(assert (=> b!52675 m!56769))

(push 1)

(assert tp_is_empty!279)

(assert (not b!52672))

(assert (not b!52671))

(assert (not b!52673))

(assert (not start!7162))

(assert (not b!52670))

(assert (not b!52669))

(assert (not b!52675))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44412 () Bool)

(assert (=> d!44412 (= (head!667 l!1016) (h!603 l!1016))))

(assert (=> b!52672 d!44412))

(declare-fun d!44414 () Bool)

(assert (=> d!44414 (= (isEmpty!434 l!1016) (is-Nil!405 l!1016))))

(assert (=> b!52673 d!44414))

(declare-fun d!44416 () Bool)

(declare-fun lt!9209 () Bool)

(declare-fun content!92 (List!417) (Set T!2988))

(assert (=> d!44416 (= lt!9209 (member x1!42 (content!92 l!1016)))))

(declare-fun e!27346 () Bool)

(assert (=> d!44416 (= lt!9209 e!27346)))

(declare-fun res!23877 () Bool)

(assert (=> d!44416 (=> (not res!23877) (not e!27346))))

(assert (=> d!44416 (= res!23877 (is-Cons!404 l!1016))))

(assert (=> d!44416 (= (contains!41 l!1016 x1!42) lt!9209)))

(declare-fun b!52680 () Bool)

(declare-fun e!27347 () Bool)

(assert (=> b!52680 (= e!27346 e!27347)))

(declare-fun res!23878 () Bool)

(assert (=> b!52680 (=> res!23878 e!27347)))

(assert (=> b!52680 (= res!23878 (= (h!603 l!1016) x1!42))))

(declare-fun b!52681 () Bool)

(assert (=> b!52681 (= e!27347 (contains!41 (t!46679 l!1016) x1!42))))

(assert (= (and d!44416 res!23877) b!52680))

(assert (= (and b!52680 (not res!23878)) b!52681))

(declare-fun m!56777 () Bool)

(assert (=> d!44416 m!56777))

(declare-fun m!56779 () Bool)

(assert (=> d!44416 m!56779))

(declare-fun m!56781 () Bool)

(assert (=> b!52681 m!56781))

(assert (=> start!7162 d!44416))

(assert (=> b!52675 d!44412))

(declare-fun d!44418 () Bool)

(declare-fun lt!9210 () Bool)

(assert (=> d!44418 (= lt!9210 (member x2!44 (content!92 l!1016)))))

(declare-fun e!27348 () Bool)

(assert (=> d!44418 (= lt!9210 e!27348)))

(declare-fun res!23879 () Bool)

(assert (=> d!44418 (=> (not res!23879) (not e!27348))))

(assert (=> d!44418 (= res!23879 (is-Cons!404 l!1016))))

(assert (=> d!44418 (= (contains!41 l!1016 x2!44) lt!9210)))

(declare-fun b!52682 () Bool)

(declare-fun e!27349 () Bool)

(assert (=> b!52682 (= e!27348 e!27349)))

(declare-fun res!23880 () Bool)

(assert (=> b!52682 (=> res!23880 e!27349)))

(assert (=> b!52682 (= res!23880 (= (h!603 l!1016) x2!44))))

(declare-fun b!52683 () Bool)

(assert (=> b!52683 (= e!27349 (contains!41 (t!46679 l!1016) x2!44))))

(assert (= (and d!44418 res!23879) b!52682))

(assert (= (and b!52682 (not res!23880)) b!52683))

(assert (=> d!44418 m!56777))

(declare-fun m!56783 () Bool)

(assert (=> d!44418 m!56783))

(declare-fun m!56785 () Bool)

(assert (=> b!52683 m!56785))

(assert (=> b!52669 d!44418))

(declare-fun b!52688 () Bool)

(declare-fun e!27352 () Bool)

(declare-fun tp!14928 () Bool)

(assert (=> b!52688 (= e!27352 (and tp_is_empty!279 tp!14928))))

(assert (=> b!52670 (= tp!14924 e!27352)))

(assert (= (and b!52670 (is-Cons!404 (t!46679 l!1016))) b!52688))

(declare-fun b!52689 () Bool)

(declare-fun e!27353 () Bool)

(declare-fun tp!14929 () Bool)

(assert (=> b!52689 (= e!27353 (and tp_is_empty!279 tp!14929))))

(assert (=> b!52671 (= tp!14925 e!27353)))

(assert (= (and b!52671 (is-Cons!404 (t!46679 thiss!7168))) b!52689))

(push 1)

(assert tp_is_empty!279)

(assert (not b!52683))

(assert (not b!52681))

(assert (not d!44416))

(assert (not d!44418))

(assert (not b!52689))

(assert (not b!52688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

