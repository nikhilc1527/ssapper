; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11552 () Bool)

(assert start!11552)

(declare-fun b_free!7505 () Bool)

(declare-fun b_next!39825 () Bool)

(assert (=> start!11552 (= b_free!7505 (not b_next!39825))))

(declare-fun tp!17250 () Bool)

(declare-fun b_and!60123 () Bool)

(assert (=> start!11552 (= tp!17250 b_and!60123)))

(declare-fun b_free!7507 () Bool)

(declare-fun b_next!39827 () Bool)

(assert (=> start!11552 (= b_free!7507 (not b_next!39827))))

(declare-fun tp!17251 () Bool)

(declare-fun b_and!60125 () Bool)

(assert (=> start!11552 (= tp!17251 b_and!60125)))

(declare-fun b!88344 () Bool)

(assert (=> b!88344 true))

(declare-fun order!493 () Int)

(declare-fun key!514 () Int)

(declare-fun lambda!10877 () Int)

(declare-fun order!495 () Int)

(declare-fun dynLambda!1051 (Int Int) Int)

(declare-fun dynLambda!1052 (Int Int) Int)

(assert (=> b!88344 (< (dynLambda!1051 order!493 key!514) (dynLambda!1052 order!495 lambda!10877))))

(declare-fun b_next!39829 () Bool)

(declare-fun keyAnn!5 () Int)

(assert (=> start!11552 (= b_next!39827 (or (and b!88344 (= lambda!10877 keyAnn!5)) b_next!39829))))

(declare-fun res!46220 () Bool)

(declare-fun e!47983 () Bool)

(assert (=> b!88344 (=> (not res!46220) (not e!47983))))

(assert (=> b!88344 (= res!46220 (= keyAnn!5 lambda!10877))))

(declare-fun b!88345 () Bool)

(declare-fun e!47984 () Bool)

(declare-fun tp_is_empty!375 () Bool)

(declare-fun tp!17252 () Bool)

(assert (=> b!88345 (= e!47984 (and tp_is_empty!375 tp!17252))))

(declare-fun b!88346 () Bool)

(declare-datatypes () ((T!5995 (T!5996 (val!190 Int)))))

(declare-datatypes () ((tuple2!404 (tuple2!405 (_1!237 T!5995) (_2!237 Int)))))

(declare-datatypes () ((List!731 (Cons!685 (h!1089 tuple2!404) (t!48694 List!731)) (Nil!687))))

(declare-fun lAnnSorted!4 () List!731)

(declare-fun isStableSorted!3 (List!731 Int) Bool)

(assert (=> b!88346 (= e!47983 (not (isStableSorted!3 lAnnSorted!4 key!514)))))

(declare-fun b!88347 () Bool)

(declare-fun e!47982 () Bool)

(declare-fun tp!17254 () Bool)

(assert (=> b!88347 (= e!47982 (and tp_is_empty!375 tp!17254))))

(declare-fun res!46221 () Bool)

(assert (=> start!11552 (=> (not res!46221) (not e!47983))))

(declare-fun lAnn!4 () List!731)

(declare-datatypes () ((List!732 (Cons!686 (h!1090 T!5995) (t!48695 List!732)) (Nil!688))))

(declare-fun l!1571 () List!732)

(declare-fun n!1722 () Int)

(declare-fun annotateList!4 (List!732 Int) List!731)

(assert (=> start!11552 (= res!46221 (= lAnn!4 (annotateList!4 l!1571 n!1722)))))

(assert (=> start!11552 e!47983))

(assert (=> start!11552 e!47982))

(assert (=> start!11552 tp!17250))

(assert (=> start!11552 e!47984))

(assert (=> start!11552 tp!17251))

(declare-fun e!47981 () Bool)

(assert (=> start!11552 e!47981))

(assert (=> start!11552 true))

(declare-fun b!88348 () Bool)

(declare-fun tp!17253 () Bool)

(assert (=> b!88348 (= e!47981 (and tp_is_empty!375 tp!17253))))

(declare-fun b!88349 () Bool)

(declare-fun res!46219 () Bool)

(assert (=> b!88349 (=> (not res!46219) (not e!47983))))

(assert (=> b!88349 (= res!46219 (is-Nil!687 lAnn!4))))

(declare-fun b!88350 () Bool)

(declare-fun res!46218 () Bool)

(assert (=> b!88350 (=> (not res!46218) (not e!47983))))

(declare-fun sort!5 (List!731 Int) List!731)

(assert (=> b!88350 (= res!46218 (= lAnnSorted!4 (sort!5 lAnn!4 keyAnn!5)))))

(assert (= (and start!11552 res!46221) b!88344))

(assert (= (and b!88344 res!46220) b!88350))

(assert (= (and b!88350 res!46218) b!88349))

(assert (= (and b!88349 res!46219) b!88346))

(assert (= (and start!11552 (is-Cons!685 lAnn!4)) b!88347))

(assert (= (and start!11552 (is-Cons!686 l!1571)) b!88345))

(assert (= (and start!11552 (is-Cons!685 lAnnSorted!4)) b!88348))

(declare-fun m!84460 () Bool)

(assert (=> b!88346 m!84460))

(declare-fun m!84462 () Bool)

(assert (=> start!11552 m!84462))

(declare-fun m!84464 () Bool)

(assert (=> b!88350 m!84464))

(push 1)

(assert (not b!88347))

(assert tp_is_empty!375)

(assert (not b!88350))

(assert (not b!88345))

(assert (not start!11552))

(assert (not b!88346))

(assert (not b_next!39825))

(assert b_and!60125)

(assert b_and!60123)

(assert (not b!88348))

(assert (not b_next!39829))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60123)

(assert b_and!60125)

(assert (not b_next!39829))

(assert (not b_next!39825))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58673 () Bool)

(declare-fun lt!20265 () List!731)

(declare-fun l2AtLeast!4 (List!731 Int) Bool)

(assert (=> d!58673 (l2AtLeast!4 lt!20265 n!1722)))

(declare-fun e!47987 () List!731)

(assert (=> d!58673 (= lt!20265 e!47987)))

(declare-fun c!21783 () Bool)

(assert (=> d!58673 (= c!21783 (is-Nil!688 l!1571))))

(assert (=> d!58673 (= (annotateList!4 l!1571 n!1722) lt!20265)))

(declare-fun b!88357 () Bool)

(assert (=> b!88357 (= e!47987 Nil!687)))

(declare-fun b!88358 () Bool)

(declare-fun hint!3 (List!731 Bool) List!731)

(declare-fun $colon$colon!18 (List!731 tuple2!404) List!731)

(declare-fun trivProp2!3 (List!731 Int) Bool)

(assert (=> b!88358 (= e!47987 (hint!3 ($colon$colon!18 (annotateList!4 (t!48695 l!1571) (+ n!1722 1)) (tuple2!405 (h!1090 l!1571) n!1722)) (trivProp2!3 (annotateList!4 (t!48695 l!1571) (+ n!1722 1)) n!1722)))))

(assert (= (and d!58673 c!21783) b!88357))

(assert (= (and d!58673 (not c!21783)) b!88358))

(declare-fun m!84466 () Bool)

(assert (=> d!58673 m!84466))

(declare-fun m!84468 () Bool)

(assert (=> b!88358 m!84468))

(assert (=> b!88358 m!84468))

(declare-fun m!84470 () Bool)

(assert (=> b!88358 m!84470))

(assert (=> b!88358 m!84468))

(declare-fun m!84472 () Bool)

(assert (=> b!88358 m!84472))

(assert (=> b!88358 m!84470))

(assert (=> b!88358 m!84472))

(declare-fun m!84474 () Bool)

(assert (=> b!88358 m!84474))

(assert (=> start!11552 d!58673))

(declare-fun d!58675 () Bool)

(declare-fun res!46225 () Bool)

(declare-fun e!47990 () Bool)

(assert (=> d!58675 (=> res!46225 e!47990)))

(assert (=> d!58675 (= res!46225 (is-Nil!687 lAnnSorted!4))))

(assert (=> d!58675 (= (isStableSorted!3 lAnnSorted!4 key!514) e!47990)))

(declare-fun b!88361 () Bool)

(declare-fun isStableSortedAndAtLeast!3 (List!731 Int Int Int) Bool)

(declare-fun dynLambda!1053 (Int T!5995) Int)

(assert (=> b!88361 (= e!47990 (isStableSortedAndAtLeast!3 (t!48694 lAnnSorted!4) key!514 (dynLambda!1053 key!514 (_1!237 (h!1089 lAnnSorted!4))) (_2!237 (h!1089 lAnnSorted!4))))))

(assert (= (and d!58675 (not res!46225)) b!88361))

(declare-fun b_lambda!17563 () Bool)

(assert (=> (not b_lambda!17563) (not b!88361)))

(declare-fun t!48697 () Bool)

(declare-fun tb!46601 () Bool)

(assert (=> (and start!11552 (= key!514 key!514) t!48697) tb!46601))

(declare-fun result!47039 () Bool)

(assert (=> tb!46601 (= result!47039 true)))

(assert (=> b!88361 t!48697))

(declare-fun b_and!60127 () Bool)

(assert (= b_and!60123 (and (=> t!48697 result!47039) b_and!60127)))

(declare-fun m!84476 () Bool)

(assert (=> b!88361 m!84476))

(assert (=> b!88361 m!84476))

(declare-fun m!84478 () Bool)

(assert (=> b!88361 m!84478))

(assert (=> b!88346 d!58675))

(declare-fun d!58677 () Bool)

(declare-fun e!47996 () Bool)

(assert (=> d!58677 e!47996))

(declare-fun res!46229 () Bool)

(assert (=> d!58677 (=> (not res!46229) (not e!47996))))

(declare-fun lt!20268 () List!731)

(declare-fun content!159 (List!731) (Set tuple2!404))

(assert (=> d!58677 (= res!46229 (= (content!159 lt!20268) (content!159 lAnn!4)))))

(declare-fun e!47995 () List!731)

(assert (=> d!58677 (= lt!20268 e!47995)))

(declare-fun c!21786 () Bool)

(assert (=> d!58677 (= c!21786 (is-Nil!687 lAnn!4))))

(assert (=> d!58677 (= (sort!5 lAnn!4 keyAnn!5) lt!20268)))

(declare-fun b!88368 () Bool)

(assert (=> b!88368 (= e!47995 lAnn!4)))

(declare-fun b!88369 () Bool)

(declare-fun insert!29 (tuple2!404 List!731 Int) List!731)

(assert (=> b!88369 (= e!47995 (insert!29 (h!1089 lAnn!4) (sort!5 (t!48694 lAnn!4) keyAnn!5) keyAnn!5))))

(declare-fun b!88370 () Bool)

(declare-fun length!11 (List!731) Int)

(assert (=> b!88370 (= e!47996 (= (length!11 lt!20268) (length!11 lAnn!4)))))

(assert (= (and d!58677 c!21786) b!88368))

(assert (= (and d!58677 (not c!21786)) b!88369))

(assert (= (and d!58677 res!46229) b!88370))

(declare-fun m!84480 () Bool)

(assert (=> d!58677 m!84480))

(declare-fun m!84482 () Bool)

(assert (=> d!58677 m!84482))

(declare-fun m!84484 () Bool)

(assert (=> b!88369 m!84484))

(assert (=> b!88369 m!84484))

(declare-fun m!84486 () Bool)

(assert (=> b!88369 m!84486))

(declare-fun m!84488 () Bool)

(assert (=> b!88370 m!84488))

(declare-fun m!84490 () Bool)

(assert (=> b!88370 m!84490))

(assert (=> b!88350 d!58677))

(declare-fun b!88375 () Bool)

(declare-fun e!47999 () Bool)

(declare-fun tp!17257 () Bool)

(assert (=> b!88375 (= e!47999 (and tp_is_empty!375 tp!17257))))

(assert (=> b!88347 (= tp!17254 e!47999)))

(assert (= (and b!88347 (is-Cons!685 (t!48694 lAnn!4))) b!88375))

(declare-fun b!88376 () Bool)

(declare-fun e!48000 () Bool)

(declare-fun tp!17258 () Bool)

(assert (=> b!88376 (= e!48000 (and tp_is_empty!375 tp!17258))))

(assert (=> b!88348 (= tp!17253 e!48000)))

(assert (= (and b!88348 (is-Cons!685 (t!48694 lAnnSorted!4))) b!88376))

(declare-fun b!88381 () Bool)

(declare-fun e!48003 () Bool)

(declare-fun tp!17261 () Bool)

(assert (=> b!88381 (= e!48003 (and tp_is_empty!375 tp!17261))))

(assert (=> b!88345 (= tp!17252 e!48003)))

(assert (= (and b!88345 (is-Cons!686 (t!48695 l!1571))) b!88381))

(declare-fun b_lambda!17565 () Bool)

(assert (= b_lambda!17563 (or (and start!11552 b_free!7505) b_lambda!17565)))

(push 1)

(assert tp_is_empty!375)

(assert (not d!58677))

(assert (not b!88358))

(assert (not b_next!39825))

(assert b_and!60127)

(assert b_and!60125)

(assert (not b!88381))

(assert (not b_lambda!17565))

(assert (not b!88375))

(assert (not b!88361))

(assert (not b!88376))

(assert (not d!58673))

(assert (not b!88369))

(assert (not b!88370))

(assert (not b_next!39829))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60127)

(assert b_and!60125)

(assert (not b_next!39829))

(assert (not b_next!39825))

(check-sat)

(pop 1)

