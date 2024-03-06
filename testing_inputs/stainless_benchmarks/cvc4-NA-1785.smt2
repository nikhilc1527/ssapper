; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12188 () Bool)

(assert start!12188)

(declare-fun b!91060 () Bool)

(declare-fun b_free!7697 () Bool)

(declare-fun b_next!40085 () Bool)

(assert (=> b!91060 (= b_free!7697 (not b_next!40085))))

(declare-fun tp!17979 () Bool)

(declare-fun b_and!60831 () Bool)

(assert (=> b!91060 (= tp!17979 b_and!60831)))

(declare-fun b_free!7699 () Bool)

(declare-fun b_next!40087 () Bool)

(assert (=> b!91060 (= b_free!7699 (not b_next!40087))))

(declare-fun tp!17981 () Bool)

(declare-fun b_and!60833 () Bool)

(assert (=> b!91060 (= tp!17981 b_and!60833)))

(declare-fun b_free!7701 () Bool)

(declare-fun b_next!40089 () Bool)

(assert (=> b!91060 (= b_free!7701 (not b_next!40089))))

(declare-fun tp!17982 () Bool)

(declare-fun b_and!60835 () Bool)

(assert (=> b!91060 (= tp!17982 b_and!60835)))

(declare-fun b!91059 () Bool)

(declare-fun res!47785 () Bool)

(declare-fun e!49781 () Bool)

(assert (=> b!91059 (=> res!47785 e!49781)))

(declare-datatypes () ((B!696 (B!697 (val!239 Int)))))

(declare-datatypes () ((List!777 (Cons!726 (h!1152 B!696) (t!49074 List!777)) (Nil!728))))

(declare-fun res!47670 () List!777)

(declare-fun x!32553 () B!696)

(declare-fun contains!71 (List!777 B!696) Bool)

(assert (=> b!91059 (= res!47785 (not (contains!71 res!47670 x!32553)))))

(declare-fun inst!506 () Bool)

(declare-fun tp_is_empty!483 () Bool)

(assert (=> b!91059 (= inst!506 (=> tp_is_empty!483 e!49781))))

(declare-fun b!91064 () Bool)

(declare-datatypes () ((A!3921 (A!3922 (val!240 Int)))))

(declare-datatypes () ((~>>!27 (~>>!28 (pre!35 Int) (f!5190 Int) (post!23 Int)))))

(declare-fun f!5180 () ~>>!27)

(declare-fun dynLambda!1123 (Int B!696) Bool)

(assert (=> b!91064 (= e!49781 (dynLambda!1123 (post!23 f!5180) x!32553))))

(assert (= (and b!91059 (not res!47785)) b!91064))

(declare-fun b_lambda!18561 () Bool)

(assert (=> (not b_lambda!18561) (not b!91064)))

(declare-fun t!49073 () Bool)

(declare-fun tb!46833 () Bool)

(assert (=> (and b!91060 (= (post!23 f!5180) (post!23 f!5180)) t!49073) tb!46833))

(declare-fun result!47359 () Bool)

(assert (=> tb!46833 (= result!47359 true)))

(assert (=> b!91064 t!49073))

(declare-fun b_and!60837 () Bool)

(assert (= b_and!60835 (and (=> t!49073 result!47359) b_and!60837)))

(declare-fun m!86816 () Bool)

(assert (=> b!91059 m!86816))

(declare-fun m!86818 () Bool)

(assert (=> b!91064 m!86818))

(declare-fun bs!41766 () Bool)

(declare-fun b!91062 () Bool)

(declare-fun s!2748 () Bool)

(assert (= bs!41766 (and start!12188 b!91062 b!91059 s!2748)))

(declare-fun content!181 (List!777) (Set B!696))

(assert (=> bs!41766 (=> true (= (contains!71 res!47670 x!32553) (member x!32553 (content!181 res!47670))))))

(declare-fun m!86820 () Bool)

(assert (=> m!86816 m!86820))

(declare-fun bs!41767 () Bool)

(declare-fun m!86822 () Bool)

(assert (= bs!41767 m!86822))

(assert (=> bs!41767 s!2748))

(assert (=> m!86816 m!86822))

(assert (=> m!86816 s!2748))

(declare-fun e!49779 () Bool)

(assert (=> b!91059 (= e!49779 (not inst!506))))

(assert (=> b!91059 true))

(declare-fun e!49777 () Bool)

(assert (=> b!91060 (= e!49777 (and tp!17979 tp!17981 tp!17982))))

(declare-fun res!47784 () Bool)

(assert (=> start!12188 (=> (not res!47784) (not e!49779))))

(assert (=> start!12188 (= res!47784 true)))

(assert (=> start!12188 true))

(assert (=> start!12188 e!49779))

(declare-fun e!49778 () Bool)

(assert (=> start!12188 e!49778))

(assert (=> start!12188 e!49777))

(declare-fun e!49780 () Bool)

(assert (=> start!12188 e!49780))

(declare-fun b!91061 () Bool)

(declare-fun tp_is_empty!485 () Bool)

(declare-fun tp!17980 () Bool)

(assert (=> b!91061 (= e!49778 (and tp_is_empty!485 tp!17980))))

(declare-fun res!47783 () Bool)

(assert (=> b!91062 (=> (not res!47783) (not e!49779))))

(declare-datatypes () ((List!778 (Cons!727 (h!1153 A!3921) (t!49075 List!778)) (Nil!729))))

(declare-fun l!1713 () List!778)

(assert (=> b!91062 (= res!47783 (and (not (is-Cons!727 l!1713)) (= res!47670 Nil!728)))))

(declare-fun b!91063 () Bool)

(declare-fun tp!17978 () Bool)

(assert (=> b!91063 (= e!49780 (and tp_is_empty!483 tp!17978))))

(assert (= (and start!12188 res!47784) b!91062))

(assert (= (and b!91062 res!47783) b!91059))

(assert (= (and start!12188 (is-Cons!727 l!1713)) b!91061))

(assert (= start!12188 b!91060))

(assert (= (and start!12188 (is-Cons!726 res!47670)) b!91063))

(push 1)

(assert b_and!60831)

(assert tp_is_empty!485)

(assert (not b_next!40085))

(assert (not b!91063))

(assert (not b!91059))

(assert (not b_next!40089))

(assert b_and!60837)

(assert (not b_lambda!18561))

(assert tp_is_empty!483)

(assert (not b!91061))

(assert (not bs!41766))

(assert (not b_next!40087))

(assert b_and!60833)

(check-sat)

(pop 1)

(push 1)

(assert b_and!60831)

(assert (not b_next!40085))

(assert (not b_next!40089))

(assert b_and!60837)

(assert (not b_next!40087))

(assert b_and!60833)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18563 () Bool)

(assert (= b_lambda!18561 (or (and b!91060 b_free!7701) b_lambda!18563)))

(push 1)

(assert b_and!60831)

(assert tp_is_empty!485)

(assert (not b_next!40085))

(assert (not b_lambda!18563))

(assert (not b!91063))

(assert (not b!91059))

(assert (not b_next!40089))

(assert b_and!60837)

(assert tp_is_empty!483)

(assert (not b!91061))

(assert (not bs!41766))

(assert (not b_next!40087))

(assert b_and!60833)

(check-sat)

(pop 1)

(push 1)

(assert b_and!60831)

(assert (not b_next!40085))

(assert (not b_next!40089))

(assert b_and!60837)

(assert (not b_next!40087))

(assert b_and!60833)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59776 () Bool)

(declare-fun lt!20542 () Bool)

(assert (=> d!59776 (= lt!20542 (member x!32553 (content!181 res!47670)))))

(declare-fun e!49787 () Bool)

(assert (=> d!59776 (= lt!20542 e!49787)))

(declare-fun res!47791 () Bool)

(assert (=> d!59776 (=> (not res!47791) (not e!49787))))

(assert (=> d!59776 (= res!47791 (is-Cons!726 res!47670))))

(assert (=> d!59776 (= (contains!71 res!47670 x!32553) lt!20542)))

(declare-fun b!91069 () Bool)

(declare-fun e!49786 () Bool)

(assert (=> b!91069 (= e!49787 e!49786)))

(declare-fun res!47790 () Bool)

(assert (=> b!91069 (=> res!47790 e!49786)))

(assert (=> b!91069 (= res!47790 (= (h!1152 res!47670) x!32553))))

(declare-fun b!91070 () Bool)

(assert (=> b!91070 (= e!49786 (contains!71 (t!49074 res!47670) x!32553))))

(assert (= (and d!59776 res!47791) b!91069))

(assert (= (and b!91069 (not res!47790)) b!91070))

(assert (=> d!59776 m!86820))

(assert (=> d!59776 m!86822))

(declare-fun bs!41768 () Bool)

(declare-fun m!86824 () Bool)

(assert (= bs!41768 m!86824))

(assert (=> bs!41768 s!2748))

(assert (=> b!91070 m!86824))

(assert (=> b!91059 d!59776))

(assert (=> bs!41766 d!59776))

(declare-fun d!59778 () Bool)

(declare-fun c!22175 () Bool)

(assert (=> d!59778 (= c!22175 (is-Nil!728 res!47670))))

(declare-fun e!49790 () (Set B!696))

(assert (=> d!59778 (= (content!181 res!47670) e!49790)))

(declare-fun b!91075 () Bool)

(assert (=> b!91075 (= e!49790 (as emptyset (Set B!696)))))

(declare-fun b!91076 () Bool)

(assert (=> b!91076 (= e!49790 (union (insert (h!1152 res!47670) (as emptyset (Set B!696))) (content!181 (t!49074 res!47670))))))

(assert (= (and d!59778 c!22175) b!91075))

(assert (= (and d!59778 (not c!22175)) b!91076))

(declare-fun m!86826 () Bool)

(assert (=> b!91076 m!86826))

(declare-fun m!86828 () Bool)

(assert (=> b!91076 m!86828))

(assert (=> bs!41766 d!59778))

(declare-fun b!91081 () Bool)

(declare-fun e!49793 () Bool)

(declare-fun tp!17985 () Bool)

(assert (=> b!91081 (= e!49793 (and tp_is_empty!485 tp!17985))))

(assert (=> b!91061 (= tp!17980 e!49793)))

(assert (= (and b!91061 (is-Cons!727 (t!49075 l!1713))) b!91081))

(declare-fun b!91086 () Bool)

(declare-fun e!49796 () Bool)

(declare-fun tp!17988 () Bool)

(assert (=> b!91086 (= e!49796 (and tp_is_empty!483 tp!17988))))

(assert (=> b!91063 (= tp!17978 e!49796)))

(assert (= (and b!91063 (is-Cons!726 (t!49074 res!47670))) b!91086))

(declare-fun result!47365 () Bool)

(assert (=> start!12188 (= result!47365 tp_is_empty!485)))

(declare-fun bs!41769 () Bool)

(declare-fun s!2750 () Bool)

(assert (= bs!41769 (and start!12188 s!2750)))

(declare-fun x!32540 () A!3921)

(declare-fun contains!72 (List!778 A!3921) Bool)

(declare-fun content!182 (List!778) (Set A!3921))

(assert (=> bs!41769 (=> true (= (contains!72 l!1713 x!32540) (member x!32540 (content!182 l!1713))))))

(declare-fun bs!41770 () Bool)

(declare-fun m!86830 () Bool)

(assert (= bs!41770 m!86830))

(assert (=> bs!41770 s!2750))

(declare-fun bs!41771 () Bool)

(declare-fun s!2752 () Bool)

(assert (= bs!41771 (and start!12188 s!2752)))

(declare-fun res!47792 () Bool)

(declare-fun e!49797 () Bool)

(assert (=> bs!41771 (=> res!47792 e!49797)))

(assert (=> bs!41771 (= res!47792 (not (contains!72 l!1713 x!32540)))))

(assert (=> bs!41771 (=> true e!49797)))

(declare-fun b!91089 () Bool)

(declare-fun dynLambda!1124 (Int A!3921) Bool)

(assert (=> b!91089 (= e!49797 (dynLambda!1124 (pre!35 f!5180) x!32540))))

(assert (= (and bs!41771 (not res!47792)) b!91089))

(declare-fun b_lambda!18565 () Bool)

(assert (=> (not b_lambda!18565) (not b!91089)))

(declare-fun t!49077 () Bool)

(declare-fun tb!46835 () Bool)

(assert (=> (and b!91060 (= (pre!35 f!5180) (pre!35 f!5180)) t!49077) tb!46835))

(declare-fun result!47369 () Bool)

(assert (=> tb!46835 (= result!47369 true)))

(assert (=> b!91089 t!49077))

(declare-fun b_and!60839 () Bool)

(assert (= b_and!60831 (and (=> t!49077 result!47369) b_and!60839)))

(assert (=> bs!41770 s!2752))

(declare-fun bs!41772 () Bool)

(assert (= bs!41772 result!47365))

(assert (=> bs!41772 m!86830))

(declare-fun m!86832 () Bool)

(assert (=> bs!41772 m!86832))

(declare-fun bs!41773 () Bool)

(declare-fun m!86834 () Bool)

(assert (= bs!41773 m!86834))

(assert (=> bs!41773 s!2750))

(assert (=> bs!41772 m!86834))

(assert (=> bs!41772 s!2750))

(push 1)

(assert tp_is_empty!485)

(assert (not b!91070))

(assert (not b_lambda!18565))

(assert (not b_next!40085))

(assert (not b_lambda!18563))

(assert (not b!91081))

(assert (not b_next!40089))

(assert b_and!60837)

(assert (not d!59776))

(assert tp_is_empty!483)

(assert b_and!60839)

(assert (not bs!41769))

(assert (not b_next!40087))

(assert (not b!91086))

(assert (not bs!41771))

(assert (not b!91076))

(assert b_and!60833)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!40085))

(assert (not b_next!40089))

(assert b_and!60837)

(assert b_and!60839)

(assert (not b_next!40087))

(assert b_and!60833)

(check-sat)

(pop 1)

