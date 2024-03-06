; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7148 () Bool)

(assert start!7148)

(declare-fun b!52597 () Bool)

(declare-fun e!27299 () Bool)

(declare-datatypes () ((T!2984 (T!2985 (val!138 Int)))))

(declare-datatypes () ((List!415 (Cons!402 (h!600 T!2984) (t!46677 List!415)) (Nil!403))))

(declare-fun thiss!7164 () List!415)

(declare-fun l!1016 () List!415)

(assert (=> b!52597 (= e!27299 (and (= thiss!7164 l!1016) (= thiss!7164 Nil!403)))))

(declare-fun b!52598 () Bool)

(declare-fun e!27297 () Bool)

(declare-fun tp_is_empty!275 () Bool)

(declare-fun tp!14905 () Bool)

(assert (=> b!52598 (= e!27297 (and tp_is_empty!275 tp!14905))))

(declare-fun b!52599 () Bool)

(declare-fun res!23823 () Bool)

(assert (=> b!52599 (=> (not res!23823) (not e!27299))))

(declare-fun x2!44 () T!2984)

(declare-fun contains!39 (List!415 T!2984) Bool)

(assert (=> b!52599 (= res!23823 (contains!39 l!1016 x2!44))))

(declare-fun b!52600 () Bool)

(declare-fun res!23822 () Bool)

(assert (=> b!52600 (=> (not res!23822) (not e!27299))))

(declare-fun x1!42 () T!2984)

(assert (=> b!52600 (= res!23822 (not (= x1!42 x2!44)))))

(declare-fun b!52601 () Bool)

(declare-fun e!27298 () Bool)

(declare-fun tp!14904 () Bool)

(assert (=> b!52601 (= e!27298 (and tp_is_empty!275 tp!14904))))

(declare-fun res!23821 () Bool)

(assert (=> start!7148 (=> (not res!23821) (not e!27299))))

(assert (=> start!7148 (= res!23821 (contains!39 l!1016 x1!42))))

(assert (=> start!7148 e!27299))

(assert (=> start!7148 e!27298))

(assert (=> start!7148 tp_is_empty!275))

(assert (=> start!7148 e!27297))

(declare-fun b!52602 () Bool)

(declare-fun res!23820 () Bool)

(assert (=> b!52602 (=> (not res!23820) (not e!27299))))

(declare-fun isEmpty!432 (List!415) Bool)

(assert (=> b!52602 (= res!23820 (not (isEmpty!432 l!1016)))))

(assert (= (and start!7148 res!23821) b!52599))

(assert (= (and b!52599 res!23823) b!52600))

(assert (= (and b!52600 res!23822) b!52602))

(assert (= (and b!52602 res!23820) b!52597))

(assert (= (and start!7148 (is-Cons!402 l!1016)) b!52601))

(assert (= (and start!7148 (is-Cons!402 thiss!7164)) b!52598))

(declare-fun m!56735 () Bool)

(assert (=> b!52599 m!56735))

(declare-fun m!56737 () Bool)

(assert (=> start!7148 m!56737))

(declare-fun m!56739 () Bool)

(assert (=> b!52602 m!56739))

(push 1)

(assert (not b!52601))

(assert (not b!52602))

(assert (not b!52599))

(assert (not start!7148))

(assert (not b!52598))

(assert tp_is_empty!275)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44398 () Bool)

(declare-fun lt!9201 () Bool)

(declare-fun content!90 (List!415) (Set T!2984))

(assert (=> d!44398 (= lt!9201 (member x1!42 (content!90 l!1016)))))

(declare-fun e!27304 () Bool)

(assert (=> d!44398 (= lt!9201 e!27304)))

(declare-fun res!23828 () Bool)

(assert (=> d!44398 (=> (not res!23828) (not e!27304))))

(assert (=> d!44398 (= res!23828 (is-Cons!402 l!1016))))

(assert (=> d!44398 (= (contains!39 l!1016 x1!42) lt!9201)))

(declare-fun b!52607 () Bool)

(declare-fun e!27305 () Bool)

(assert (=> b!52607 (= e!27304 e!27305)))

(declare-fun res!23829 () Bool)

(assert (=> b!52607 (=> res!23829 e!27305)))

(assert (=> b!52607 (= res!23829 (= (h!600 l!1016) x1!42))))

(declare-fun b!52608 () Bool)

(assert (=> b!52608 (= e!27305 (contains!39 (t!46677 l!1016) x1!42))))

(assert (= (and d!44398 res!23828) b!52607))

(assert (= (and b!52607 (not res!23829)) b!52608))

(declare-fun m!56741 () Bool)

(assert (=> d!44398 m!56741))

(declare-fun m!56743 () Bool)

(assert (=> d!44398 m!56743))

(declare-fun m!56745 () Bool)

(assert (=> b!52608 m!56745))

(assert (=> start!7148 d!44398))

(declare-fun d!44400 () Bool)

(assert (=> d!44400 (= (isEmpty!432 l!1016) (is-Nil!403 l!1016))))

(assert (=> b!52602 d!44400))

(declare-fun d!44402 () Bool)

(declare-fun lt!9202 () Bool)

(assert (=> d!44402 (= lt!9202 (member x2!44 (content!90 l!1016)))))

(declare-fun e!27306 () Bool)

(assert (=> d!44402 (= lt!9202 e!27306)))

(declare-fun res!23830 () Bool)

(assert (=> d!44402 (=> (not res!23830) (not e!27306))))

(assert (=> d!44402 (= res!23830 (is-Cons!402 l!1016))))

(assert (=> d!44402 (= (contains!39 l!1016 x2!44) lt!9202)))

(declare-fun b!52609 () Bool)

(declare-fun e!27307 () Bool)

(assert (=> b!52609 (= e!27306 e!27307)))

(declare-fun res!23831 () Bool)

(assert (=> b!52609 (=> res!23831 e!27307)))

(assert (=> b!52609 (= res!23831 (= (h!600 l!1016) x2!44))))

(declare-fun b!52610 () Bool)

(assert (=> b!52610 (= e!27307 (contains!39 (t!46677 l!1016) x2!44))))

(assert (= (and d!44402 res!23830) b!52609))

(assert (= (and b!52609 (not res!23831)) b!52610))

(assert (=> d!44402 m!56741))

(declare-fun m!56747 () Bool)

(assert (=> d!44402 m!56747))

(declare-fun m!56749 () Bool)

(assert (=> b!52610 m!56749))

(assert (=> b!52599 d!44402))

(declare-fun b!52615 () Bool)

(declare-fun e!27310 () Bool)

(declare-fun tp!14908 () Bool)

(assert (=> b!52615 (= e!27310 (and tp_is_empty!275 tp!14908))))

(assert (=> b!52601 (= tp!14904 e!27310)))

(assert (= (and b!52601 (is-Cons!402 (t!46677 l!1016))) b!52615))

(declare-fun b!52616 () Bool)

(declare-fun e!27311 () Bool)

(declare-fun tp!14909 () Bool)

(assert (=> b!52616 (= e!27311 (and tp_is_empty!275 tp!14909))))

(assert (=> b!52598 (= tp!14905 e!27311)))

(assert (= (and b!52598 (is-Cons!402 (t!46677 thiss!7164))) b!52616))

(push 1)

(assert (not b!52608))

(assert (not b!52615))

(assert (not d!44402))

(assert (not d!44398))

(assert (not b!52610))

(assert (not b!52616))

(assert tp_is_empty!275)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

