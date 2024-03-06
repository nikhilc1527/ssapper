; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9010 () Bool)

(assert start!9010)

(declare-fun b!62554 () Bool)

(declare-fun e!33585 () Bool)

(declare-fun tp!16451 () Bool)

(assert (=> b!62554 (= e!33585 tp!16451)))

(declare-fun b!62555 () Bool)

(declare-fun e!33580 () Bool)

(declare-fun tp!16448 () Bool)

(assert (=> b!62555 (= e!33580 tp!16448)))

(declare-fun b!62556 () Bool)

(declare-fun e!33583 () Bool)

(declare-fun tp!16444 () Bool)

(assert (=> b!62556 (= e!33583 tp!16444)))

(declare-fun b!62557 () Bool)

(declare-fun res!29151 () Bool)

(declare-fun e!33577 () Bool)

(assert (=> b!62557 (=> (not res!29151) (not e!33577))))

(declare-datatypes () ((String!955 (String!956 (value!5169 String)))))

(declare-datatypes () ((List!573 (Cons!534 (h!778 String!955) (t!47368 List!573)) (Nil!535))))

(declare-datatypes () ((Unit!1030 (Unit!1031))))

(declare-datatypes () ((Object!334 (Open!334 (value!5170 Int)))))

(declare-datatypes () ((MsgQueue!7 (MsgQueue!8 (queue!185 Object!334) (msgs!12 List!573)))))

(declare-datatypes () ((tuple2!314 (tuple2!315 (_1!184 Unit!1030) (_2!184 MsgQueue!7)))))

(declare-fun t!47359 () tuple2!314)

(declare-fun queue!170 () MsgQueue!7)

(declare-fun res!29093 () tuple2!314)

(declare-fun res!29094 () Unit!1030)

(declare-fun queue!167 () MsgQueue!7)

(declare-fun tmp!486 () Unit!1030)

(declare-fun tmp!487 () Unit!1030)

(declare-fun Unit!1032 () Unit!1030)

(assert (=> b!62557 (= res!29151 (and (= t!47359 (tuple2!315 Unit!1032 (MsgQueue!8 (queue!185 queue!167) (msgs!12 (_2!184 res!29093))))) (= res!29094 (_1!184 t!47359)) (= queue!170 (_2!184 t!47359)) (= tmp!486 res!29094) (= tmp!487 (_1!184 res!29093))))))

(declare-fun b!62558 () Bool)

(declare-fun tmp!494 () Unit!1030)

(declare-fun queue!173 () MsgQueue!7)

(declare-fun t!47361 () tuple2!314)

(declare-datatypes () ((Option!404 (Some!383 (v!2313 String!955)) (None!384))))

(declare-datatypes () ((tuple2!316 (tuple2!317 (_1!185 Option!404) (_2!185 MsgQueue!7)))))

(declare-fun res!29098 () tuple2!316)

(declare-fun res!29100 () Unit!1030)

(declare-fun queue!176 () MsgQueue!7)

(declare-fun a!686 () Option!404)

(declare-fun Unit!1033 () Unit!1030)

(assert (=> b!62558 (= e!33577 (and (= t!47361 (tuple2!315 Unit!1033 (MsgQueue!8 (queue!185 queue!173) (msgs!12 (_2!185 res!29098))))) (= res!29100 (_1!184 t!47361)) (= queue!176 (_2!184 t!47361)) (= tmp!494 res!29100) (= a!686 (_1!185 res!29098)) (not (= a!686 (Some!383 (String!956 "HHeelllloo"))))))))

(declare-fun b!62559 () Bool)

(declare-fun res!29152 () Bool)

(assert (=> b!62559 (=> (not res!29152) (not e!33577))))

(declare-fun res!29095 () tuple2!314)

(declare-fun tmp!491 () Unit!1030)

(declare-fun t!47360 () tuple2!314)

(declare-fun tmp!490 () Unit!1030)

(declare-fun res!29096 () Unit!1030)

(declare-fun Unit!1034 () Unit!1030)

(assert (=> b!62559 (= res!29152 (and (= t!47360 (tuple2!315 Unit!1034 (MsgQueue!8 (queue!185 queue!170) (msgs!12 (_2!184 res!29095))))) (= res!29096 (_1!184 t!47360)) (= queue!173 (_2!184 t!47360)) (= tmp!490 res!29096) (= tmp!491 (_1!184 res!29095))))))

(declare-fun b!62560 () Bool)

(declare-fun e!33589 () Bool)

(declare-fun tp!16446 () Bool)

(assert (=> b!62560 (= e!33589 tp!16446)))

(declare-fun b!62561 () Bool)

(declare-fun res!29156 () Bool)

(assert (=> b!62561 (=> (not res!29156) (not e!33577))))

(declare-fun put!3 (MsgQueue!7 String!955) tuple2!314)

(assert (=> b!62561 (= res!29156 (= res!29095 (put!3 queue!170 (String!956 "HHeelllloo"))))))

(declare-fun b!62562 () Bool)

(declare-fun e!33584 () Bool)

(declare-fun tp!16442 () Bool)

(assert (=> b!62562 (= e!33584 tp!16442)))

(declare-fun b!62563 () Bool)

(declare-fun e!33582 () Bool)

(declare-fun tp!16452 () Bool)

(assert (=> b!62563 (= e!33582 tp!16452)))

(declare-fun b!62564 () Bool)

(declare-fun e!33588 () Bool)

(declare-fun tp!16450 () Bool)

(assert (=> b!62564 (= e!33588 tp!16450)))

(declare-fun b!62565 () Bool)

(declare-fun res!29154 () Bool)

(assert (=> b!62565 (=> (not res!29154) (not e!33577))))

(assert (=> b!62565 (= res!29154 (= res!29093 (put!3 queue!167 (String!956 "WWoorrlldd"))))))

(declare-fun b!62566 () Bool)

(declare-fun e!33579 () Bool)

(declare-fun tp!16447 () Bool)

(assert (=> b!62566 (= e!33579 tp!16447)))

(declare-fun b!62567 () Bool)

(declare-fun e!33590 () Bool)

(declare-fun tp!16449 () Bool)

(assert (=> b!62567 (= e!33590 tp!16449)))

(declare-fun b!62568 () Bool)

(declare-fun res!29153 () Bool)

(assert (=> b!62568 (=> (not res!29153) (not e!33577))))

(declare-fun isEmpty!546 (MsgQueue!7) Bool)

(assert (=> b!62568 (= res!29153 (not (isEmpty!546 queue!173)))))

(declare-fun b!62569 () Bool)

(declare-fun e!33581 () Bool)

(declare-fun tp!16445 () Bool)

(assert (=> b!62569 (= e!33581 tp!16445)))

(declare-fun b!62570 () Bool)

(declare-fun e!33591 () Bool)

(declare-fun tp!16443 () Bool)

(assert (=> b!62570 (= e!33591 tp!16443)))

(declare-fun res!29157 () Bool)

(assert (=> start!9010 (=> (not res!29157) (not e!33577))))

(declare-fun queue!166 () MsgQueue!7)

(assert (=> start!9010 (= res!29157 (isEmpty!546 queue!166))))

(assert (=> start!9010 e!33577))

(assert (=> start!9010 e!33584))

(assert (=> start!9010 e!33583))

(assert (=> start!9010 e!33588))

(assert (=> start!9010 e!33579))

(assert (=> start!9010 e!33585))

(assert (=> start!9010 true))

(assert (=> start!9010 e!33581))

(assert (=> start!9010 e!33582))

(assert (=> start!9010 e!33580))

(assert (=> start!9010 e!33589))

(declare-fun e!33586 () Bool)

(assert (=> start!9010 (and e!33586 e!33591)))

(assert (=> start!9010 e!33590))

(declare-fun e!33576 () Bool)

(assert (=> start!9010 e!33576))

(declare-fun b!62571 () Bool)

(declare-fun res!29150 () Bool)

(assert (=> b!62571 (=> (not res!29150) (not e!33577))))

(declare-fun take!13 (MsgQueue!7) tuple2!316)

(assert (=> b!62571 (= res!29150 (= res!29098 (take!13 queue!173)))))

(declare-fun b!62572 () Bool)

(declare-fun inv!1153 (String!955) Bool)

(assert (=> b!62572 (= e!33576 (inv!1153 (v!2313 a!686)))))

(declare-fun b!62573 () Bool)

(declare-fun res!29155 () Bool)

(assert (=> b!62573 (=> (not res!29155) (not e!33577))))

(assert (=> b!62573 (= res!29155 (= queue!167 queue!166))))

(declare-fun b!62574 () Bool)

(assert (=> b!62574 (= e!33586 (inv!1153 (v!2313 (_1!185 res!29098))))))

(assert (= (and start!9010 res!29157) b!62573))

(assert (= (and b!62573 res!29155) b!62565))

(assert (= (and b!62565 res!29154) b!62557))

(assert (= (and b!62557 res!29151) b!62561))

(assert (= (and b!62561 res!29156) b!62559))

(assert (= (and b!62559 res!29152) b!62568))

(assert (= (and b!62568 res!29153) b!62571))

(assert (= (and b!62571 res!29150) b!62558))

(assert (= start!9010 b!62562))

(assert (= start!9010 b!62556))

(assert (= start!9010 b!62564))

(assert (= start!9010 b!62566))

(assert (= start!9010 b!62554))

(assert (= start!9010 b!62569))

(assert (= start!9010 b!62563))

(assert (= start!9010 b!62555))

(assert (= start!9010 b!62560))

(assert (= (and start!9010 (is-Some!383 (_1!185 res!29098))) b!62574))

(assert (= start!9010 b!62570))

(assert (= start!9010 b!62567))

(assert (= (and start!9010 (is-Some!383 a!686)) b!62572))

(declare-fun m!68366 () Bool)

(assert (=> b!62561 m!68366))

(declare-fun m!68368 () Bool)

(assert (=> b!62574 m!68368))

(declare-fun m!68370 () Bool)

(assert (=> start!9010 m!68370))

(declare-fun m!68372 () Bool)

(assert (=> b!62565 m!68372))

(declare-fun m!68374 () Bool)

(assert (=> b!62571 m!68374))

(declare-fun m!68376 () Bool)

(assert (=> b!62572 m!68376))

(declare-fun m!68378 () Bool)

(assert (=> b!62568 m!68378))

(push 1)

(assert (not b!62574))

(assert (not b!62565))

(assert (not b!62556))

(assert (not b!62555))

(assert (not b!62571))

(assert (not b!62566))

(assert (not b!62563))

(assert (not b!62568))

(assert (not b!62570))

(assert (not b!62562))

(assert (not start!9010))

(assert (not b!62561))

(assert (not b!62564))

(assert (not b!62569))

(assert (not b!62572))

(assert (not b!62554))

(assert (not b!62567))

(assert (not b!62560))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52888 () Bool)

(assert (=> d!52888 (= (inv!1153 (v!2313 (_1!185 res!29098))) (= (mod (str.len (value!5169 (v!2313 (_1!185 res!29098)))) 2) 0))))

(assert (=> b!62574 d!52888))

(declare-fun d!52890 () Bool)

(declare-fun lt!11537 () Option!404)

(declare-fun headOption!4 (List!573) Option!404)

(assert (=> d!52890 (= lt!11537 (headOption!4 (msgs!12 queue!173)))))

(declare-datatypes () ((Option!405 (Some!384 (v!2314 List!573)) (None!385))))

(declare-fun lt!11538 () Option!405)

(declare-fun tailOption!3 (List!573) Option!405)

(assert (=> d!52890 (= lt!11538 (tailOption!3 (msgs!12 queue!173)))))

(declare-fun _take!1 (MsgQueue!7) Option!404)

(assert (=> d!52890 (= lt!11537 (_take!1 queue!173))))

(declare-fun lambda!9143 () Int)

(declare-fun getOrElse!5 (Option!405 Int) List!573)

(assert (=> d!52890 (= (take!13 queue!173) (tuple2!317 lt!11537 (MsgQueue!8 (queue!185 queue!173) (getOrElse!5 lt!11538 lambda!9143))))))

(declare-fun bs!37474 () Bool)

(assert (= bs!37474 d!52890))

(declare-fun m!68380 () Bool)

(assert (=> bs!37474 m!68380))

(declare-fun m!68382 () Bool)

(assert (=> bs!37474 m!68382))

(declare-fun m!68384 () Bool)

(assert (=> bs!37474 m!68384))

(declare-fun m!68386 () Bool)

(assert (=> bs!37474 m!68386))

(assert (=> b!62571 d!52890))

(declare-fun d!52892 () Bool)

(declare-fun lt!11541 () MsgQueue!7)

(declare-fun $colon$colon!11 (List!573 String!955) List!573)

(assert (=> d!52892 (= lt!11541 (MsgQueue!8 (queue!185 queue!167) ($colon$colon!11 (msgs!12 queue!167) (String!956 "WWoorrlldd"))))))

(declare-fun _put!2 (MsgQueue!7 String!955) Unit!1030)

(assert (=> d!52892 (= (put!3 queue!167 (String!956 "WWoorrlldd")) (tuple2!315 (_put!2 lt!11541 (String!956 "WWoorrlldd")) lt!11541))))

(declare-fun bs!37475 () Bool)

(assert (= bs!37475 d!52892))

(declare-fun m!68388 () Bool)

(assert (=> bs!37475 m!68388))

(declare-fun m!68390 () Bool)

(assert (=> bs!37475 m!68390))

(assert (=> b!62565 d!52892))

(declare-fun d!52894 () Bool)

(assert (=> d!52894 (= (inv!1153 (v!2313 a!686)) (= (mod (str.len (value!5169 (v!2313 a!686))) 2) 0))))

(assert (=> b!62572 d!52894))

(declare-fun d!52896 () Bool)

(declare-fun res!29161 () Bool)

(declare-fun isEmpty!547 (List!573) Bool)

(assert (=> d!52896 (= res!29161 (isEmpty!547 (msgs!12 queue!173)))))

(assert (=> d!52896 true))

(assert (=> d!52896 (= (isEmpty!546 queue!173) res!29161)))

(declare-fun bs!37476 () Bool)

(assert (= bs!37476 d!52896))

(declare-fun m!68392 () Bool)

(assert (=> bs!37476 m!68392))

(assert (=> b!62568 d!52896))

(declare-fun d!52898 () Bool)

(declare-fun res!29162 () Bool)

(assert (=> d!52898 (= res!29162 (isEmpty!547 (msgs!12 queue!166)))))

(assert (=> d!52898 true))

(assert (=> d!52898 (= (isEmpty!546 queue!166) res!29162)))

(declare-fun bs!37477 () Bool)

(assert (= bs!37477 d!52898))

(declare-fun m!68394 () Bool)

(assert (=> bs!37477 m!68394))

(assert (=> start!9010 d!52898))

(declare-fun d!52900 () Bool)

(declare-fun lt!11542 () MsgQueue!7)

(assert (=> d!52900 (= lt!11542 (MsgQueue!8 (queue!185 queue!170) ($colon$colon!11 (msgs!12 queue!170) (String!956 "HHeelllloo"))))))

(assert (=> d!52900 (= (put!3 queue!170 (String!956 "HHeelllloo")) (tuple2!315 (_put!2 lt!11542 (String!956 "HHeelllloo")) lt!11542))))

(declare-fun bs!37478 () Bool)

(assert (= bs!37478 d!52900))

(declare-fun m!68396 () Bool)

(assert (=> bs!37478 m!68396))

(declare-fun m!68398 () Bool)

(assert (=> bs!37478 m!68398))

(assert (=> b!62561 d!52900))

(declare-fun b!62579 () Bool)

(declare-fun e!33596 () Bool)

(declare-fun tp!16455 () Bool)

(assert (=> b!62579 (= e!33596 (and (inv!1153 (h!778 (msgs!12 (_2!184 res!29095)))) tp!16455))))

(assert (=> b!62564 (= tp!16450 e!33596)))

(assert (= (and b!62564 (is-Cons!534 (msgs!12 (_2!184 res!29095)))) b!62579))

(declare-fun m!68400 () Bool)

(assert (=> b!62579 m!68400))

(declare-fun b!62580 () Bool)

(declare-fun e!33598 () Bool)

(declare-fun tp!16456 () Bool)

(assert (=> b!62580 (= e!33598 (and (inv!1153 (h!778 (msgs!12 (_2!185 res!29098)))) tp!16456))))

(assert (=> b!62570 (= tp!16443 e!33598)))

(assert (= (and b!62570 (is-Cons!534 (msgs!12 (_2!185 res!29098)))) b!62580))

(declare-fun m!68402 () Bool)

(assert (=> b!62580 m!68402))

(declare-fun b!62581 () Bool)

(declare-fun e!33600 () Bool)

(declare-fun tp!16457 () Bool)

(assert (=> b!62581 (= e!33600 (and (inv!1153 (h!778 (msgs!12 queue!167))) tp!16457))))

(assert (=> b!62569 (= tp!16445 e!33600)))

(assert (= (and b!62569 (is-Cons!534 (msgs!12 queue!167))) b!62581))

(declare-fun m!68404 () Bool)

(assert (=> b!62581 m!68404))

(declare-fun b!62582 () Bool)

(declare-fun e!33602 () Bool)

(declare-fun tp!16458 () Bool)

(assert (=> b!62582 (= e!33602 (and (inv!1153 (h!778 (msgs!12 (_2!184 t!47360)))) tp!16458))))

(assert (=> b!62555 (= tp!16448 e!33602)))

(assert (= (and b!62555 (is-Cons!534 (msgs!12 (_2!184 t!47360)))) b!62582))

(declare-fun m!68406 () Bool)

(assert (=> b!62582 m!68406))

(declare-fun b!62583 () Bool)

(declare-fun e!33604 () Bool)

(declare-fun tp!16459 () Bool)

(assert (=> b!62583 (= e!33604 (and (inv!1153 (h!778 (msgs!12 (_2!184 t!47359)))) tp!16459))))

(assert (=> b!62562 (= tp!16442 e!33604)))

(assert (= (and b!62562 (is-Cons!534 (msgs!12 (_2!184 t!47359)))) b!62583))

(declare-fun m!68408 () Bool)

(assert (=> b!62583 m!68408))

(declare-fun b!62584 () Bool)

(declare-fun e!33606 () Bool)

(declare-fun tp!16460 () Bool)

(assert (=> b!62584 (= e!33606 (and (inv!1153 (h!778 (msgs!12 (_2!184 t!47361)))) tp!16460))))

(assert (=> b!62560 (= tp!16446 e!33606)))

(assert (= (and b!62560 (is-Cons!534 (msgs!12 (_2!184 t!47361)))) b!62584))

(declare-fun m!68410 () Bool)

(assert (=> b!62584 m!68410))

(declare-fun b!62585 () Bool)

(declare-fun e!33608 () Bool)

(declare-fun tp!16461 () Bool)

(assert (=> b!62585 (= e!33608 (and (inv!1153 (h!778 (msgs!12 queue!173))) tp!16461))))

(assert (=> b!62563 (= tp!16452 e!33608)))

(assert (= (and b!62563 (is-Cons!534 (msgs!12 queue!173))) b!62585))

(declare-fun m!68412 () Bool)

(assert (=> b!62585 m!68412))

(declare-fun b!62586 () Bool)

(declare-fun e!33610 () Bool)

(declare-fun tp!16462 () Bool)

(assert (=> b!62586 (= e!33610 (and (inv!1153 (h!778 (msgs!12 queue!170))) tp!16462))))

(assert (=> b!62566 (= tp!16447 e!33610)))

(assert (= (and b!62566 (is-Cons!534 (msgs!12 queue!170))) b!62586))

(declare-fun m!68414 () Bool)

(assert (=> b!62586 m!68414))

(declare-fun b!62587 () Bool)

(declare-fun e!33612 () Bool)

(declare-fun tp!16463 () Bool)

(assert (=> b!62587 (= e!33612 (and (inv!1153 (h!778 (msgs!12 queue!166))) tp!16463))))

(assert (=> b!62556 (= tp!16444 e!33612)))

(assert (= (and b!62556 (is-Cons!534 (msgs!12 queue!166))) b!62587))

(declare-fun m!68416 () Bool)

(assert (=> b!62587 m!68416))

(declare-fun b!62588 () Bool)

(declare-fun e!33614 () Bool)

(declare-fun tp!16464 () Bool)

(assert (=> b!62588 (= e!33614 (and (inv!1153 (h!778 (msgs!12 queue!176))) tp!16464))))

(assert (=> b!62567 (= tp!16449 e!33614)))

(assert (= (and b!62567 (is-Cons!534 (msgs!12 queue!176))) b!62588))

(declare-fun m!68418 () Bool)

(assert (=> b!62588 m!68418))

(declare-fun b!62589 () Bool)

(declare-fun e!33616 () Bool)

(declare-fun tp!16465 () Bool)

(assert (=> b!62589 (= e!33616 (and (inv!1153 (h!778 (msgs!12 (_2!184 res!29093)))) tp!16465))))

(assert (=> b!62554 (= tp!16451 e!33616)))

(assert (= (and b!62554 (is-Cons!534 (msgs!12 (_2!184 res!29093)))) b!62589))

(declare-fun m!68420 () Bool)

(assert (=> b!62589 m!68420))

(push 1)

(assert (not d!52892))

(assert (not d!52900))

(assert (not b!62587))

(assert (not b!62582))

(assert (not b!62585))

(assert (not b!62581))

(assert (not b!62586))

(assert (not b!62579))

(assert (not b!62589))

(assert (not b!62583))

(assert (not d!52890))

(assert (not d!52896))

(assert (not b!62588))

(assert (not b!62584))

(assert (not d!52898))

(assert (not b!62580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52902 () Bool)

(assert (=> d!52902 (= (inv!1153 (h!778 (msgs!12 (_2!184 res!29093)))) (= (mod (str.len (value!5169 (h!778 (msgs!12 (_2!184 res!29093))))) 2) 0))))

(assert (=> b!62589 d!52902))

(declare-fun d!52904 () Bool)

(assert (=> d!52904 (= (inv!1153 (h!778 (msgs!12 (_2!185 res!29098)))) (= (mod (str.len (value!5169 (h!778 (msgs!12 (_2!185 res!29098))))) 2) 0))))

(assert (=> b!62580 d!52904))

(declare-fun d!52906 () Bool)

(assert (=> d!52906 (= (inv!1153 (h!778 (msgs!12 (_2!184 t!47360)))) (= (mod (str.len (value!5169 (h!778 (msgs!12 (_2!184 t!47360))))) 2) 0))))

(assert (=> b!62582 d!52906))

(declare-fun d!52908 () Bool)

(assert (=> d!52908 (= (inv!1153 (h!778 (msgs!12 queue!166))) (= (mod (str.len (value!5169 (h!778 (msgs!12 queue!166)))) 2) 0))))

(assert (=> b!62587 d!52908))

(declare-fun d!52910 () Bool)

(assert (=> d!52910 (= (inv!1153 (h!778 (msgs!12 queue!176))) (= (mod (str.len (value!5169 (h!778 (msgs!12 queue!176)))) 2) 0))))

(assert (=> b!62588 d!52910))

(declare-fun d!52912 () Bool)

(assert (=> d!52912 (= (isEmpty!547 (msgs!12 queue!166)) (is-Nil!535 (msgs!12 queue!166)))))

(assert (=> d!52898 d!52912))

(declare-fun d!52914 () Bool)

(assert (=> d!52914 (= ($colon$colon!11 (msgs!12 queue!167) (String!956 "WWoorrlldd")) (Cons!534 (String!956 "WWoorrlldd") (msgs!12 queue!167)))))

(assert (=> d!52892 d!52914))

(declare-fun d!52916 () Bool)

(assert (=> d!52916 true))

(assert (=> d!52916 true))

(declare-fun res!29165 () Unit!1030)

(assert (=> d!52916 (= (_put!2 lt!11541 (String!956 "WWoorrlldd")) res!29165)))

(assert (=> d!52892 d!52916))

(declare-fun d!52918 () Bool)

(assert (=> d!52918 (= (inv!1153 (h!778 (msgs!12 queue!170))) (= (mod (str.len (value!5169 (h!778 (msgs!12 queue!170)))) 2) 0))))

(assert (=> b!62586 d!52918))

(declare-fun d!52920 () Bool)

(assert (=> d!52920 (= (inv!1153 (h!778 (msgs!12 queue!167))) (= (mod (str.len (value!5169 (h!778 (msgs!12 queue!167)))) 2) 0))))

(assert (=> b!62581 d!52920))

(declare-fun d!52922 () Bool)

(assert (=> d!52922 (= (inv!1153 (h!778 (msgs!12 (_2!184 t!47359)))) (= (mod (str.len (value!5169 (h!778 (msgs!12 (_2!184 t!47359))))) 2) 0))))

(assert (=> b!62583 d!52922))

(declare-fun d!52924 () Bool)

(assert (=> d!52924 (= (inv!1153 (h!778 (msgs!12 queue!173))) (= (mod (str.len (value!5169 (h!778 (msgs!12 queue!173)))) 2) 0))))

(assert (=> b!62585 d!52924))

(declare-fun d!52926 () Bool)

(assert (=> d!52926 (= (inv!1153 (h!778 (msgs!12 (_2!184 t!47361)))) (= (mod (str.len (value!5169 (h!778 (msgs!12 (_2!184 t!47361))))) 2) 0))))

(assert (=> b!62584 d!52926))

(declare-fun d!52928 () Bool)

(declare-fun lt!11545 () Option!404)

(declare-fun isDefined!10 (Option!404) Bool)

(assert (=> d!52928 (not (= (isDefined!10 lt!11545) (isEmpty!547 (msgs!12 queue!173))))))

(assert (=> d!52928 (= lt!11545 (ite (is-Cons!534 (msgs!12 queue!173)) (Some!383 (h!778 (msgs!12 queue!173))) None!384))))

(assert (=> d!52928 (= (headOption!4 (msgs!12 queue!173)) lt!11545)))

(declare-fun bs!37479 () Bool)

(assert (= bs!37479 d!52928))

(declare-fun m!68422 () Bool)

(assert (=> bs!37479 m!68422))

(assert (=> bs!37479 m!68392))

(assert (=> d!52890 d!52928))

(declare-fun d!52930 () Bool)

(declare-fun lt!11548 () Option!405)

(declare-fun isDefined!11 (Option!405) Bool)

(assert (=> d!52930 (not (= (isDefined!11 lt!11548) (isEmpty!547 (msgs!12 queue!173))))))

(assert (=> d!52930 (= lt!11548 (ite (is-Cons!534 (msgs!12 queue!173)) (Some!384 (t!47368 (msgs!12 queue!173))) None!385))))

(assert (=> d!52930 (= (tailOption!3 (msgs!12 queue!173)) lt!11548)))

(declare-fun bs!37480 () Bool)

(assert (= bs!37480 d!52930))

(declare-fun m!68424 () Bool)

(assert (=> bs!37480 m!68424))

(assert (=> bs!37480 m!68392))

(assert (=> d!52890 d!52930))

(declare-fun d!52932 () Bool)

(declare-fun res!29168 () Option!404)

(assert (=> d!52932 (= res!29168 (headOption!4 (msgs!12 queue!173)))))

(declare-fun e!33622 () Bool)

(assert (=> d!52932 e!33622))

(assert (=> d!52932 (= (_take!1 queue!173) res!29168)))

(declare-fun b!62592 () Bool)

(assert (=> b!62592 (= e!33622 (inv!1153 (v!2313 res!29168)))))

(assert (= (and d!52932 (is-Some!383 res!29168)) b!62592))

(assert (=> d!52932 m!68380))

(declare-fun m!68426 () Bool)

(assert (=> b!62592 m!68426))

(assert (=> d!52890 d!52932))

(declare-fun d!52934 () Bool)

(declare-fun c!13675 () Bool)

(assert (=> d!52934 (= c!13675 (is-Some!384 lt!11538))))

(declare-fun e!33626 () List!573)

(assert (=> d!52934 (= (getOrElse!5 lt!11538 lambda!9143) e!33626)))

(declare-fun b!62597 () Bool)

(assert (=> b!62597 (= e!33626 (v!2314 lt!11538))))

(declare-fun b!62598 () Bool)

(declare-fun dynLambda!948 (Int) List!573)

(assert (=> b!62598 (= e!33626 (dynLambda!948 lambda!9143))))

(assert (= (and d!52934 c!13675) b!62597))

(assert (= (and d!52934 (not c!13675)) b!62598))

(declare-fun b_lambda!15695 () Bool)

(assert (=> (not b_lambda!15695) (not b!62598)))

(declare-fun m!68428 () Bool)

(assert (=> b!62598 m!68428))

(assert (=> d!52890 d!52934))

(declare-fun d!52936 () Bool)

(assert (=> d!52936 (= ($colon$colon!11 (msgs!12 queue!170) (String!956 "HHeelllloo")) (Cons!534 (String!956 "HHeelllloo") (msgs!12 queue!170)))))

(assert (=> d!52900 d!52936))

(declare-fun d!52938 () Bool)

(assert (=> d!52938 true))

(assert (=> d!52938 true))

(declare-fun res!29169 () Unit!1030)

(assert (=> d!52938 (= (_put!2 lt!11542 (String!956 "HHeelllloo")) res!29169)))

(assert (=> d!52900 d!52938))

(declare-fun d!52940 () Bool)

(assert (=> d!52940 (= (inv!1153 (h!778 (msgs!12 (_2!184 res!29095)))) (= (mod (str.len (value!5169 (h!778 (msgs!12 (_2!184 res!29095))))) 2) 0))))

(assert (=> b!62579 d!52940))

(declare-fun d!52942 () Bool)

(assert (=> d!52942 (= (isEmpty!547 (msgs!12 queue!173)) (is-Nil!535 (msgs!12 queue!173)))))

(assert (=> d!52896 d!52942))

(declare-fun b!62599 () Bool)

(declare-fun e!33627 () Bool)

(declare-fun tp!16466 () Bool)

(assert (=> b!62599 (= e!33627 (and (inv!1153 (h!778 (t!47368 (msgs!12 (_2!184 res!29093))))) tp!16466))))

(assert (=> b!62589 (= tp!16465 e!33627)))

(assert (= (and b!62589 (is-Cons!534 (t!47368 (msgs!12 (_2!184 res!29093))))) b!62599))

(declare-fun m!68430 () Bool)

(assert (=> b!62599 m!68430))

(declare-fun b!62600 () Bool)

(declare-fun e!33629 () Bool)

(declare-fun tp!16467 () Bool)

(assert (=> b!62600 (= e!33629 (and (inv!1153 (h!778 (t!47368 (msgs!12 (_2!185 res!29098))))) tp!16467))))

(assert (=> b!62580 (= tp!16456 e!33629)))

(assert (= (and b!62580 (is-Cons!534 (t!47368 (msgs!12 (_2!185 res!29098))))) b!62600))

(declare-fun m!68432 () Bool)

(assert (=> b!62600 m!68432))

(declare-fun b!62601 () Bool)

(declare-fun e!33631 () Bool)

(declare-fun tp!16468 () Bool)

(assert (=> b!62601 (= e!33631 (and (inv!1153 (h!778 (t!47368 (msgs!12 (_2!184 t!47360))))) tp!16468))))

(assert (=> b!62582 (= tp!16458 e!33631)))

(assert (= (and b!62582 (is-Cons!534 (t!47368 (msgs!12 (_2!184 t!47360))))) b!62601))

(declare-fun m!68434 () Bool)

(assert (=> b!62601 m!68434))

(declare-fun b!62602 () Bool)

(declare-fun e!33633 () Bool)

(declare-fun tp!16469 () Bool)

(assert (=> b!62602 (= e!33633 (and (inv!1153 (h!778 (t!47368 (msgs!12 queue!166)))) tp!16469))))

(assert (=> b!62587 (= tp!16463 e!33633)))

(assert (= (and b!62587 (is-Cons!534 (t!47368 (msgs!12 queue!166)))) b!62602))

(declare-fun m!68436 () Bool)

(assert (=> b!62602 m!68436))

(declare-fun b!62603 () Bool)

(declare-fun e!33635 () Bool)

(declare-fun tp!16470 () Bool)

(assert (=> b!62603 (= e!33635 (and (inv!1153 (h!778 (t!47368 (msgs!12 queue!176)))) tp!16470))))

(assert (=> b!62588 (= tp!16464 e!33635)))

(assert (= (and b!62588 (is-Cons!534 (t!47368 (msgs!12 queue!176)))) b!62603))

(declare-fun m!68438 () Bool)

(assert (=> b!62603 m!68438))

(declare-fun b!62604 () Bool)

(declare-fun e!33637 () Bool)

(declare-fun tp!16471 () Bool)

(assert (=> b!62604 (= e!33637 (and (inv!1153 (h!778 (t!47368 (msgs!12 queue!170)))) tp!16471))))

(assert (=> b!62586 (= tp!16462 e!33637)))

(assert (= (and b!62586 (is-Cons!534 (t!47368 (msgs!12 queue!170)))) b!62604))

(declare-fun m!68440 () Bool)

(assert (=> b!62604 m!68440))

(declare-fun b!62605 () Bool)

(declare-fun e!33639 () Bool)

(declare-fun tp!16472 () Bool)

(assert (=> b!62605 (= e!33639 (and (inv!1153 (h!778 (t!47368 (msgs!12 queue!167)))) tp!16472))))

(assert (=> b!62581 (= tp!16457 e!33639)))

(assert (= (and b!62581 (is-Cons!534 (t!47368 (msgs!12 queue!167)))) b!62605))

(declare-fun m!68442 () Bool)

(assert (=> b!62605 m!68442))

(declare-fun b!62606 () Bool)

(declare-fun e!33641 () Bool)

(declare-fun tp!16473 () Bool)

(assert (=> b!62606 (= e!33641 (and (inv!1153 (h!778 (t!47368 (msgs!12 (_2!184 t!47359))))) tp!16473))))

(assert (=> b!62583 (= tp!16459 e!33641)))

(assert (= (and b!62583 (is-Cons!534 (t!47368 (msgs!12 (_2!184 t!47359))))) b!62606))

(declare-fun m!68444 () Bool)

(assert (=> b!62606 m!68444))

(declare-fun b!62607 () Bool)

(declare-fun e!33643 () Bool)

(declare-fun tp!16474 () Bool)

(assert (=> b!62607 (= e!33643 (and (inv!1153 (h!778 (t!47368 (msgs!12 queue!173)))) tp!16474))))

(assert (=> b!62585 (= tp!16461 e!33643)))

(assert (= (and b!62585 (is-Cons!534 (t!47368 (msgs!12 queue!173)))) b!62607))

(declare-fun m!68446 () Bool)

(assert (=> b!62607 m!68446))

(declare-fun b!62608 () Bool)

(declare-fun e!33645 () Bool)

(declare-fun tp!16475 () Bool)

(assert (=> b!62608 (= e!33645 (and (inv!1153 (h!778 (t!47368 (msgs!12 (_2!184 t!47361))))) tp!16475))))

(assert (=> b!62584 (= tp!16460 e!33645)))

(assert (= (and b!62584 (is-Cons!534 (t!47368 (msgs!12 (_2!184 t!47361))))) b!62608))

(declare-fun m!68448 () Bool)

(assert (=> b!62608 m!68448))

(declare-fun b!62609 () Bool)

(declare-fun e!33647 () Bool)

(declare-fun tp!16476 () Bool)

(assert (=> b!62609 (= e!33647 (and (inv!1153 (h!778 (t!47368 (msgs!12 (_2!184 res!29095))))) tp!16476))))

(assert (=> b!62579 (= tp!16455 e!33647)))

(assert (= (and b!62579 (is-Cons!534 (t!47368 (msgs!12 (_2!184 res!29095))))) b!62609))

(declare-fun m!68450 () Bool)

(assert (=> b!62609 m!68450))

(declare-fun b_lambda!15697 () Bool)

(assert (= b_lambda!15695 (or d!52890 b_lambda!15697)))

(declare-fun bs!37481 () Bool)

(declare-fun d!52944 () Bool)

(assert (= bs!37481 (and d!52944 d!52890)))

(assert (=> bs!37481 (= (dynLambda!948 lambda!9143) Nil!535)))

(assert (=> b!62598 d!52944))

(push 1)

(assert (not b!62603))

(assert (not b!62609))

(assert (not b!62608))

(assert (not b!62607))

(assert (not d!52930))

(assert (not d!52928))

(assert (not b!62602))

(assert (not b!62606))

(assert (not b!62601))

(assert (not b!62600))

(assert (not b!62604))

(assert (not d!52932))

(assert (not b_lambda!15697))

(assert (not b!62592))

(assert (not b!62605))

(assert (not b!62599))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

