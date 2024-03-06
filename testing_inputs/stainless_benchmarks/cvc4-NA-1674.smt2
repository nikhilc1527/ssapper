; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11650 () Bool)

(assert start!11650)

(declare-fun b!89301 () Bool)

(declare-fun e!48672 () Bool)

(declare-fun e!48674 () Bool)

(assert (=> b!89301 (= e!48672 e!48674)))

(declare-fun res!46794 () Bool)

(assert (=> b!89301 (=> res!46794 e!48674)))

(declare-datatypes () ((T!6011 (T!6012 (val!198 Int)))))

(declare-datatypes () ((List!742 (Cons!696 (h!1100 T!6011) (t!48824 List!742)) (Nil!698))))

(declare-fun l!1596 () List!742)

(declare-fun res!45952 () List!742)

(declare-fun t!48611 () T!6011)

(declare-fun content!165 (List!742) (Set T!6011))

(assert (=> b!89301 (= res!46794 (not (= (content!165 res!45952) (union (insert t!48611 (as emptyset (Set T!6011))) (content!165 l!1596)))))))

(declare-fun b!89302 () Bool)

(declare-fun res!46796 () Bool)

(assert (=> b!89302 (=> (not res!46796) (not e!48672))))

(declare-fun x$1!1166 () T!6011)

(declare-fun $colon$colon!23 (List!742 T!6011) List!742)

(assert (=> b!89302 (= res!46796 (= res!45952 ($colon$colon!23 l!1596 x$1!1166)))))

(declare-fun b!89303 () Bool)

(declare-fun e!48673 () Bool)

(declare-fun tp_is_empty!391 () Bool)

(declare-fun tp!17431 () Bool)

(assert (=> b!89303 (= e!48673 (and tp_is_empty!391 tp!17431))))

(declare-fun res!46795 () Bool)

(assert (=> start!11650 (=> (not res!46795) (not e!48672))))

(assert (=> start!11650 (= res!46795 (and (is-Nil!698 l!1596) (= x$1!1166 t!48611)))))

(assert (=> start!11650 e!48672))

(declare-fun e!48671 () Bool)

(assert (=> start!11650 e!48671))

(assert (=> start!11650 tp_is_empty!391))

(assert (=> start!11650 e!48673))

(declare-fun b!89304 () Bool)

(declare-fun tp!17432 () Bool)

(assert (=> b!89304 (= e!48671 (and tp_is_empty!391 tp!17432))))

(declare-fun b!89305 () Bool)

(declare-fun length!17 (List!742) Int)

(assert (=> b!89305 (= e!48674 (not (= (length!17 res!45952) (+ 1 (length!17 l!1596)))))))

(assert (= (and start!11650 res!46795) b!89302))

(assert (= (and b!89302 res!46796) b!89301))

(assert (= (and b!89301 (not res!46794)) b!89305))

(assert (= (and start!11650 (is-Cons!696 l!1596)) b!89304))

(assert (= (and start!11650 (is-Cons!696 res!45952)) b!89303))

(declare-fun m!85402 () Bool)

(assert (=> b!89301 m!85402))

(declare-fun m!85404 () Bool)

(assert (=> b!89301 m!85404))

(declare-fun m!85406 () Bool)

(assert (=> b!89301 m!85406))

(declare-fun m!85408 () Bool)

(assert (=> b!89302 m!85408))

(declare-fun m!85410 () Bool)

(assert (=> b!89305 m!85410))

(declare-fun m!85412 () Bool)

(assert (=> b!89305 m!85412))

(push 1)

(assert (not b!89302))

(assert (not b!89303))

(assert (not b!89301))

(assert (not b!89304))

(assert tp_is_empty!391)

(assert (not b!89305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59153 () Bool)

(declare-fun c!21913 () Bool)

(assert (=> d!59153 (= c!21913 (is-Nil!698 res!45952))))

(declare-fun e!48677 () (Set T!6011))

(assert (=> d!59153 (= (content!165 res!45952) e!48677)))

(declare-fun b!89310 () Bool)

(assert (=> b!89310 (= e!48677 (as emptyset (Set T!6011)))))

(declare-fun b!89311 () Bool)

(assert (=> b!89311 (= e!48677 (union (insert (h!1100 res!45952) (as emptyset (Set T!6011))) (content!165 (t!48824 res!45952))))))

(assert (= (and d!59153 c!21913) b!89310))

(assert (= (and d!59153 (not c!21913)) b!89311))

(declare-fun m!85414 () Bool)

(assert (=> b!89311 m!85414))

(declare-fun m!85416 () Bool)

(assert (=> b!89311 m!85416))

(assert (=> b!89301 d!59153))

(declare-fun d!59155 () Bool)

(declare-fun c!21914 () Bool)

(assert (=> d!59155 (= c!21914 (is-Nil!698 l!1596))))

(declare-fun e!48678 () (Set T!6011))

(assert (=> d!59155 (= (content!165 l!1596) e!48678)))

(declare-fun b!89312 () Bool)

(assert (=> b!89312 (= e!48678 (as emptyset (Set T!6011)))))

(declare-fun b!89313 () Bool)

(assert (=> b!89313 (= e!48678 (union (insert (h!1100 l!1596) (as emptyset (Set T!6011))) (content!165 (t!48824 l!1596))))))

(assert (= (and d!59155 c!21914) b!89312))

(assert (= (and d!59155 (not c!21914)) b!89313))

(declare-fun m!85418 () Bool)

(assert (=> b!89313 m!85418))

(declare-fun m!85420 () Bool)

(assert (=> b!89313 m!85420))

(assert (=> b!89301 d!59155))

(declare-fun d!59157 () Bool)

(declare-fun size!719 (List!742) Int)

(assert (=> d!59157 (= (length!17 res!45952) (size!719 res!45952))))

(declare-fun bs!41491 () Bool)

(assert (= bs!41491 d!59157))

(declare-fun m!85422 () Bool)

(assert (=> bs!41491 m!85422))

(assert (=> b!89305 d!59157))

(declare-fun d!59159 () Bool)

(assert (=> d!59159 (= (length!17 l!1596) (size!719 l!1596))))

(declare-fun bs!41492 () Bool)

(assert (= bs!41492 d!59159))

(declare-fun m!85424 () Bool)

(assert (=> bs!41492 m!85424))

(assert (=> b!89305 d!59159))

(declare-fun d!59161 () Bool)

(assert (=> d!59161 (= ($colon$colon!23 l!1596 x$1!1166) (Cons!696 x$1!1166 l!1596))))

(assert (=> b!89302 d!59161))

(declare-fun b!89318 () Bool)

(declare-fun e!48681 () Bool)

(declare-fun tp!17435 () Bool)

(assert (=> b!89318 (= e!48681 (and tp_is_empty!391 tp!17435))))

(assert (=> b!89304 (= tp!17432 e!48681)))

(assert (= (and b!89304 (is-Cons!696 (t!48824 l!1596))) b!89318))

(declare-fun b!89319 () Bool)

(declare-fun e!48682 () Bool)

(declare-fun tp!17436 () Bool)

(assert (=> b!89319 (= e!48682 (and tp_is_empty!391 tp!17436))))

(assert (=> b!89303 (= tp!17431 e!48682)))

(assert (= (and b!89303 (is-Cons!696 (t!48824 res!45952))) b!89319))

(push 1)

(assert (not b!89319))

(assert (not d!59157))

(assert (not b!89313))

(assert (not b!89318))

(assert (not b!89311))

(assert (not d!59159))

(assert tp_is_empty!391)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59163 () Bool)

(declare-fun c!21915 () Bool)

(assert (=> d!59163 (= c!21915 (is-Nil!698 (t!48824 res!45952)))))

(declare-fun e!48683 () (Set T!6011))

(assert (=> d!59163 (= (content!165 (t!48824 res!45952)) e!48683)))

(declare-fun b!89320 () Bool)

(assert (=> b!89320 (= e!48683 (as emptyset (Set T!6011)))))

(declare-fun b!89321 () Bool)

(assert (=> b!89321 (= e!48683 (union (insert (h!1100 (t!48824 res!45952)) (as emptyset (Set T!6011))) (content!165 (t!48824 (t!48824 res!45952)))))))

(assert (= (and d!59163 c!21915) b!89320))

(assert (= (and d!59163 (not c!21915)) b!89321))

(declare-fun m!85426 () Bool)

(assert (=> b!89321 m!85426))

(declare-fun m!85428 () Bool)

(assert (=> b!89321 m!85428))

(assert (=> b!89311 d!59163))

(declare-fun d!59165 () Bool)

(declare-fun c!21916 () Bool)

(assert (=> d!59165 (= c!21916 (is-Nil!698 (t!48824 l!1596)))))

(declare-fun e!48684 () (Set T!6011))

(assert (=> d!59165 (= (content!165 (t!48824 l!1596)) e!48684)))

(declare-fun b!89322 () Bool)

(assert (=> b!89322 (= e!48684 (as emptyset (Set T!6011)))))

(declare-fun b!89323 () Bool)

(assert (=> b!89323 (= e!48684 (union (insert (h!1100 (t!48824 l!1596)) (as emptyset (Set T!6011))) (content!165 (t!48824 (t!48824 l!1596)))))))

(assert (= (and d!59165 c!21916) b!89322))

(assert (= (and d!59165 (not c!21916)) b!89323))

(declare-fun m!85430 () Bool)

(assert (=> b!89323 m!85430))

(declare-fun m!85432 () Bool)

(assert (=> b!89323 m!85432))

(assert (=> b!89313 d!59165))

(declare-fun d!59167 () Bool)

(declare-fun lt!20395 () Int)

(assert (=> d!59167 (>= lt!20395 0)))

(declare-fun e!48687 () Int)

(assert (=> d!59167 (= lt!20395 e!48687)))

(declare-fun c!21919 () Bool)

(assert (=> d!59167 (= c!21919 (is-Nil!698 l!1596))))

(assert (=> d!59167 (= (size!719 l!1596) lt!20395)))

(declare-fun b!89328 () Bool)

(assert (=> b!89328 (= e!48687 0)))

(declare-fun b!89329 () Bool)

(assert (=> b!89329 (= e!48687 (+ 1 (size!719 (t!48824 l!1596))))))

(assert (= (and d!59167 c!21919) b!89328))

(assert (= (and d!59167 (not c!21919)) b!89329))

(declare-fun m!85434 () Bool)

(assert (=> b!89329 m!85434))

(assert (=> d!59159 d!59167))

(declare-fun d!59169 () Bool)

(declare-fun lt!20396 () Int)

(assert (=> d!59169 (>= lt!20396 0)))

(declare-fun e!48688 () Int)

(assert (=> d!59169 (= lt!20396 e!48688)))

(declare-fun c!21920 () Bool)

(assert (=> d!59169 (= c!21920 (is-Nil!698 res!45952))))

(assert (=> d!59169 (= (size!719 res!45952) lt!20396)))

(declare-fun b!89330 () Bool)

(assert (=> b!89330 (= e!48688 0)))

(declare-fun b!89331 () Bool)

(assert (=> b!89331 (= e!48688 (+ 1 (size!719 (t!48824 res!45952))))))

(assert (= (and d!59169 c!21920) b!89330))

(assert (= (and d!59169 (not c!21920)) b!89331))

(declare-fun m!85436 () Bool)

(assert (=> b!89331 m!85436))

(assert (=> d!59157 d!59169))

(declare-fun b!89332 () Bool)

(declare-fun e!48689 () Bool)

(declare-fun tp!17437 () Bool)

(assert (=> b!89332 (= e!48689 (and tp_is_empty!391 tp!17437))))

(assert (=> b!89319 (= tp!17436 e!48689)))

(assert (= (and b!89319 (is-Cons!696 (t!48824 (t!48824 res!45952)))) b!89332))

(declare-fun b!89333 () Bool)

(declare-fun e!48690 () Bool)

(declare-fun tp!17438 () Bool)

(assert (=> b!89333 (= e!48690 (and tp_is_empty!391 tp!17438))))

(assert (=> b!89318 (= tp!17435 e!48690)))

(assert (= (and b!89318 (is-Cons!696 (t!48824 (t!48824 l!1596)))) b!89333))

(push 1)

(assert (not b!89323))

(assert (not b!89331))

(assert (not b!89333))

(assert (not b!89321))

(assert (not b!89332))

(assert (not b!89329))

(assert tp_is_empty!391)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

