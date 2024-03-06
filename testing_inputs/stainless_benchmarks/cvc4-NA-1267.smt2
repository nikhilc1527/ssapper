; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8996 () Bool)

(assert start!8996)

(declare-fun b!62478 () Bool)

(declare-fun e!33502 () Bool)

(declare-fun tp!16399 () Bool)

(assert (=> b!62478 (= e!33502 tp!16399)))

(declare-fun b!62479 () Bool)

(declare-fun res!29120 () Bool)

(declare-fun e!33504 () Bool)

(assert (=> b!62479 (=> (not res!29120) (not e!33504))))

(declare-datatypes () ((String!953 (String!954 (value!5167 String)))))

(declare-datatypes () ((List!572 (Cons!533 (h!777 String!953) (t!47366 List!572)) (Nil!534))))

(declare-datatypes () ((Object!333 (Open!333 (value!5168 Int)))))

(declare-datatypes () ((MsgQueue!5 (MsgQueue!6 (queue!184 Object!333) (msgs!11 List!572)))))

(declare-fun queue!167 () MsgQueue!5)

(declare-fun queue!166 () MsgQueue!5)

(assert (=> b!62479 (= res!29120 (= queue!167 queue!166))))

(declare-fun b!62480 () Bool)

(declare-fun e!33500 () Bool)

(declare-fun tp!16396 () Bool)

(assert (=> b!62480 (= e!33500 tp!16396)))

(declare-fun b!62481 () Bool)

(declare-fun e!33503 () Bool)

(declare-fun tp!16395 () Bool)

(assert (=> b!62481 (= e!33503 tp!16395)))

(declare-fun b!62482 () Bool)

(declare-fun queue!173 () MsgQueue!5)

(declare-fun isEmpty!544 (MsgQueue!5) Bool)

(assert (=> b!62482 (= e!33504 (isEmpty!544 queue!173))))

(declare-fun b!62483 () Bool)

(declare-fun e!33499 () Bool)

(declare-fun tp!16401 () Bool)

(assert (=> b!62483 (= e!33499 tp!16401)))

(declare-fun b!62484 () Bool)

(declare-fun res!29121 () Bool)

(assert (=> b!62484 (=> (not res!29121) (not e!33504))))

(declare-datatypes () ((Unit!1026 (Unit!1027))))

(declare-datatypes () ((tuple2!312 (tuple2!313 (_1!183 Unit!1026) (_2!183 MsgQueue!5)))))

(declare-fun res!29095 () tuple2!312)

(declare-fun queue!170 () MsgQueue!5)

(declare-fun tmp!491 () Unit!1026)

(declare-fun t!47360 () tuple2!312)

(declare-fun tmp!490 () Unit!1026)

(declare-fun res!29096 () Unit!1026)

(declare-fun Unit!1028 () Unit!1026)

(assert (=> b!62484 (= res!29121 (and (= t!47360 (tuple2!313 Unit!1028 (MsgQueue!6 (queue!184 queue!170) (msgs!11 (_2!183 res!29095))))) (= res!29096 (_1!183 t!47360)) (= queue!173 (_2!183 t!47360)) (= tmp!490 res!29096) (= tmp!491 (_1!183 res!29095))))))

(declare-fun b!62485 () Bool)

(declare-fun res!29125 () Bool)

(assert (=> b!62485 (=> (not res!29125) (not e!33504))))

(declare-fun t!47359 () tuple2!312)

(declare-fun res!29093 () tuple2!312)

(declare-fun res!29094 () Unit!1026)

(declare-fun tmp!486 () Unit!1026)

(declare-fun tmp!487 () Unit!1026)

(declare-fun Unit!1029 () Unit!1026)

(assert (=> b!62485 (= res!29125 (and (= t!47359 (tuple2!313 Unit!1029 (MsgQueue!6 (queue!184 queue!167) (msgs!11 (_2!183 res!29093))))) (= res!29094 (_1!183 t!47359)) (= queue!170 (_2!183 t!47359)) (= tmp!486 res!29094) (= tmp!487 (_1!183 res!29093))))))

(declare-fun b!62486 () Bool)

(declare-fun res!29122 () Bool)

(assert (=> b!62486 (=> (not res!29122) (not e!33504))))

(declare-fun put!2 (MsgQueue!5 String!953) tuple2!312)

(assert (=> b!62486 (= res!29122 (= res!29093 (put!2 queue!167 (String!954 "WWoorrlldd"))))))

(declare-fun b!62487 () Bool)

(declare-fun e!33506 () Bool)

(declare-fun tp!16400 () Bool)

(assert (=> b!62487 (= e!33506 tp!16400)))

(declare-fun b!62488 () Bool)

(declare-fun e!33501 () Bool)

(declare-fun tp!16398 () Bool)

(assert (=> b!62488 (= e!33501 tp!16398)))

(declare-fun res!29124 () Bool)

(assert (=> start!8996 (=> (not res!29124) (not e!33504))))

(assert (=> start!8996 (= res!29124 (isEmpty!544 queue!166))))

(assert (=> start!8996 e!33504))

(assert (=> start!8996 e!33506))

(assert (=> start!8996 e!33503))

(assert (=> start!8996 e!33500))

(assert (=> start!8996 e!33501))

(assert (=> start!8996 e!33499))

(assert (=> start!8996 true))

(declare-fun e!33505 () Bool)

(assert (=> start!8996 e!33505))

(assert (=> start!8996 e!33502))

(declare-fun e!33498 () Bool)

(assert (=> start!8996 e!33498))

(declare-fun b!62489 () Bool)

(declare-fun res!29123 () Bool)

(assert (=> b!62489 (=> (not res!29123) (not e!33504))))

(assert (=> b!62489 (= res!29123 (= res!29095 (put!2 queue!170 (String!954 "HHeelllloo"))))))

(declare-fun b!62490 () Bool)

(declare-fun tp!16397 () Bool)

(assert (=> b!62490 (= e!33498 tp!16397)))

(declare-fun b!62491 () Bool)

(declare-fun tp!16394 () Bool)

(assert (=> b!62491 (= e!33505 tp!16394)))

(assert (= (and start!8996 res!29124) b!62479))

(assert (= (and b!62479 res!29120) b!62486))

(assert (= (and b!62486 res!29122) b!62485))

(assert (= (and b!62485 res!29125) b!62489))

(assert (= (and b!62489 res!29123) b!62484))

(assert (= (and b!62484 res!29121) b!62482))

(assert (= start!8996 b!62487))

(assert (= start!8996 b!62481))

(assert (= start!8996 b!62480))

(assert (= start!8996 b!62488))

(assert (= start!8996 b!62483))

(assert (= start!8996 b!62491))

(assert (= start!8996 b!62478))

(assert (= start!8996 b!62490))

(declare-fun m!68314 () Bool)

(assert (=> b!62482 m!68314))

(declare-fun m!68316 () Bool)

(assert (=> b!62486 m!68316))

(declare-fun m!68318 () Bool)

(assert (=> start!8996 m!68318))

(declare-fun m!68320 () Bool)

(assert (=> b!62489 m!68320))

(push 1)

(assert (not start!8996))

(assert (not b!62488))

(assert (not b!62491))

(assert (not b!62481))

(assert (not b!62480))

(assert (not b!62487))

(assert (not b!62486))

(assert (not b!62483))

(assert (not b!62478))

(assert (not b!62489))

(assert (not b!62482))

(assert (not b!62490))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52852 () Bool)

(declare-fun lt!11531 () MsgQueue!5)

(declare-fun $colon$colon!10 (List!572 String!953) List!572)

(assert (=> d!52852 (= lt!11531 (MsgQueue!6 (queue!184 queue!167) ($colon$colon!10 (msgs!11 queue!167) (String!954 "WWoorrlldd"))))))

(declare-fun _put!1 (MsgQueue!5 String!953) Unit!1026)

(assert (=> d!52852 (= (put!2 queue!167 (String!954 "WWoorrlldd")) (tuple2!313 (_put!1 lt!11531 (String!954 "WWoorrlldd")) lt!11531))))

(declare-fun bs!37469 () Bool)

(assert (= bs!37469 d!52852))

(declare-fun m!68322 () Bool)

(assert (=> bs!37469 m!68322))

(declare-fun m!68324 () Bool)

(assert (=> bs!37469 m!68324))

(assert (=> b!62486 d!52852))

(declare-fun d!52854 () Bool)

(declare-fun res!29128 () Bool)

(declare-fun isEmpty!545 (List!572) Bool)

(assert (=> d!52854 (= res!29128 (isEmpty!545 (msgs!11 queue!166)))))

(assert (=> d!52854 true))

(assert (=> d!52854 (= (isEmpty!544 queue!166) res!29128)))

(declare-fun bs!37470 () Bool)

(assert (= bs!37470 d!52854))

(declare-fun m!68326 () Bool)

(assert (=> bs!37470 m!68326))

(assert (=> start!8996 d!52854))

(declare-fun d!52856 () Bool)

(declare-fun res!29129 () Bool)

(assert (=> d!52856 (= res!29129 (isEmpty!545 (msgs!11 queue!173)))))

(assert (=> d!52856 true))

(assert (=> d!52856 (= (isEmpty!544 queue!173) res!29129)))

(declare-fun bs!37471 () Bool)

(assert (= bs!37471 d!52856))

(declare-fun m!68328 () Bool)

(assert (=> bs!37471 m!68328))

(assert (=> b!62482 d!52856))

(declare-fun d!52858 () Bool)

(declare-fun lt!11532 () MsgQueue!5)

(assert (=> d!52858 (= lt!11532 (MsgQueue!6 (queue!184 queue!170) ($colon$colon!10 (msgs!11 queue!170) (String!954 "HHeelllloo"))))))

(assert (=> d!52858 (= (put!2 queue!170 (String!954 "HHeelllloo")) (tuple2!313 (_put!1 lt!11532 (String!954 "HHeelllloo")) lt!11532))))

(declare-fun bs!37472 () Bool)

(assert (= bs!37472 d!52858))

(declare-fun m!68330 () Bool)

(assert (=> bs!37472 m!68330))

(declare-fun m!68332 () Bool)

(assert (=> bs!37472 m!68332))

(assert (=> b!62489 d!52858))

(declare-fun b!62496 () Bool)

(declare-fun e!33511 () Bool)

(declare-fun tp!16404 () Bool)

(declare-fun inv!1153 (String!953) Bool)

(assert (=> b!62496 (= e!33511 (and (inv!1153 (h!777 (msgs!11 (_2!183 t!47359)))) tp!16404))))

(assert (=> b!62487 (= tp!16400 e!33511)))

(assert (= (and b!62487 (is-Cons!533 (msgs!11 (_2!183 t!47359)))) b!62496))

(declare-fun m!68334 () Bool)

(assert (=> b!62496 m!68334))

(declare-fun b!62497 () Bool)

(declare-fun e!33513 () Bool)

(declare-fun tp!16405 () Bool)

(assert (=> b!62497 (= e!33513 (and (inv!1153 (h!777 (msgs!11 queue!170))) tp!16405))))

(assert (=> b!62488 (= tp!16398 e!33513)))

(assert (= (and b!62488 (is-Cons!533 (msgs!11 queue!170))) b!62497))

(declare-fun m!68336 () Bool)

(assert (=> b!62497 m!68336))

(declare-fun b!62498 () Bool)

(declare-fun e!33515 () Bool)

(declare-fun tp!16406 () Bool)

(assert (=> b!62498 (= e!33515 (and (inv!1153 (h!777 (msgs!11 (_2!183 res!29095)))) tp!16406))))

(assert (=> b!62480 (= tp!16396 e!33515)))

(assert (= (and b!62480 (is-Cons!533 (msgs!11 (_2!183 res!29095)))) b!62498))

(declare-fun m!68338 () Bool)

(assert (=> b!62498 m!68338))

(declare-fun b!62499 () Bool)

(declare-fun e!33517 () Bool)

(declare-fun tp!16407 () Bool)

(assert (=> b!62499 (= e!33517 (and (inv!1153 (h!777 (msgs!11 queue!173))) tp!16407))))

(assert (=> b!62478 (= tp!16399 e!33517)))

(assert (= (and b!62478 (is-Cons!533 (msgs!11 queue!173))) b!62499))

(declare-fun m!68340 () Bool)

(assert (=> b!62499 m!68340))

(declare-fun b!62500 () Bool)

(declare-fun e!33519 () Bool)

(declare-fun tp!16408 () Bool)

(assert (=> b!62500 (= e!33519 (and (inv!1153 (h!777 (msgs!11 (_2!183 t!47360)))) tp!16408))))

(assert (=> b!62490 (= tp!16397 e!33519)))

(assert (= (and b!62490 (is-Cons!533 (msgs!11 (_2!183 t!47360)))) b!62500))

(declare-fun m!68342 () Bool)

(assert (=> b!62500 m!68342))

(declare-fun b!62501 () Bool)

(declare-fun e!33521 () Bool)

(declare-fun tp!16409 () Bool)

(assert (=> b!62501 (= e!33521 (and (inv!1153 (h!777 (msgs!11 queue!167))) tp!16409))))

(assert (=> b!62491 (= tp!16394 e!33521)))

(assert (= (and b!62491 (is-Cons!533 (msgs!11 queue!167))) b!62501))

(declare-fun m!68344 () Bool)

(assert (=> b!62501 m!68344))

(declare-fun b!62502 () Bool)

(declare-fun e!33523 () Bool)

(declare-fun tp!16410 () Bool)

(assert (=> b!62502 (= e!33523 (and (inv!1153 (h!777 (msgs!11 (_2!183 res!29093)))) tp!16410))))

(assert (=> b!62483 (= tp!16401 e!33523)))

(assert (= (and b!62483 (is-Cons!533 (msgs!11 (_2!183 res!29093)))) b!62502))

(declare-fun m!68346 () Bool)

(assert (=> b!62502 m!68346))

(declare-fun b!62503 () Bool)

(declare-fun e!33525 () Bool)

(declare-fun tp!16411 () Bool)

(assert (=> b!62503 (= e!33525 (and (inv!1153 (h!777 (msgs!11 queue!166))) tp!16411))))

(assert (=> b!62481 (= tp!16395 e!33525)))

(assert (= (and b!62481 (is-Cons!533 (msgs!11 queue!166))) b!62503))

(declare-fun m!68348 () Bool)

(assert (=> b!62503 m!68348))

(push 1)

(assert (not b!62496))

(assert (not d!52858))

(assert (not b!62501))

(assert (not b!62497))

(assert (not b!62498))

(assert (not d!52856))

(assert (not d!52852))

(assert (not d!52854))

(assert (not b!62500))

(assert (not b!62499))

(assert (not b!62503))

(assert (not b!62502))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52860 () Bool)

(assert (=> d!52860 (= (inv!1153 (h!777 (msgs!11 queue!170))) (= (mod (str.len (value!5167 (h!777 (msgs!11 queue!170)))) 2) 0))))

(assert (=> b!62497 d!52860))

(declare-fun d!52862 () Bool)

(assert (=> d!52862 (= (isEmpty!545 (msgs!11 queue!173)) (is-Nil!534 (msgs!11 queue!173)))))

(assert (=> d!52856 d!52862))

(declare-fun d!52864 () Bool)

(assert (=> d!52864 (= ($colon$colon!10 (msgs!11 queue!170) (String!954 "HHeelllloo")) (Cons!533 (String!954 "HHeelllloo") (msgs!11 queue!170)))))

(assert (=> d!52858 d!52864))

(declare-fun d!52866 () Bool)

(assert (=> d!52866 true))

(assert (=> d!52866 true))

(declare-fun res!29132 () Unit!1026)

(assert (=> d!52866 (= (_put!1 lt!11532 (String!954 "HHeelllloo")) res!29132)))

(assert (=> d!52858 d!52866))

(declare-fun d!52868 () Bool)

(assert (=> d!52868 (= ($colon$colon!10 (msgs!11 queue!167) (String!954 "WWoorrlldd")) (Cons!533 (String!954 "WWoorrlldd") (msgs!11 queue!167)))))

(assert (=> d!52852 d!52868))

(declare-fun d!52870 () Bool)

(assert (=> d!52870 true))

(assert (=> d!52870 true))

(declare-fun res!29133 () Unit!1026)

(assert (=> d!52870 (= (_put!1 lt!11531 (String!954 "WWoorrlldd")) res!29133)))

(assert (=> d!52852 d!52870))

(declare-fun d!52872 () Bool)

(assert (=> d!52872 (= (inv!1153 (h!777 (msgs!11 queue!166))) (= (mod (str.len (value!5167 (h!777 (msgs!11 queue!166)))) 2) 0))))

(assert (=> b!62503 d!52872))

(declare-fun d!52874 () Bool)

(assert (=> d!52874 (= (inv!1153 (h!777 (msgs!11 (_2!183 t!47359)))) (= (mod (str.len (value!5167 (h!777 (msgs!11 (_2!183 t!47359))))) 2) 0))))

(assert (=> b!62496 d!52874))

(declare-fun d!52876 () Bool)

(assert (=> d!52876 (= (inv!1153 (h!777 (msgs!11 (_2!183 res!29095)))) (= (mod (str.len (value!5167 (h!777 (msgs!11 (_2!183 res!29095))))) 2) 0))))

(assert (=> b!62498 d!52876))

(declare-fun d!52878 () Bool)

(assert (=> d!52878 (= (inv!1153 (h!777 (msgs!11 (_2!183 res!29093)))) (= (mod (str.len (value!5167 (h!777 (msgs!11 (_2!183 res!29093))))) 2) 0))))

(assert (=> b!62502 d!52878))

(declare-fun d!52880 () Bool)

(assert (=> d!52880 (= (inv!1153 (h!777 (msgs!11 queue!167))) (= (mod (str.len (value!5167 (h!777 (msgs!11 queue!167)))) 2) 0))))

(assert (=> b!62501 d!52880))

(declare-fun d!52882 () Bool)

(assert (=> d!52882 (= (inv!1153 (h!777 (msgs!11 queue!173))) (= (mod (str.len (value!5167 (h!777 (msgs!11 queue!173)))) 2) 0))))

(assert (=> b!62499 d!52882))

(declare-fun d!52884 () Bool)

(assert (=> d!52884 (= (inv!1153 (h!777 (msgs!11 (_2!183 t!47360)))) (= (mod (str.len (value!5167 (h!777 (msgs!11 (_2!183 t!47360))))) 2) 0))))

(assert (=> b!62500 d!52884))

(declare-fun d!52886 () Bool)

(assert (=> d!52886 (= (isEmpty!545 (msgs!11 queue!166)) (is-Nil!534 (msgs!11 queue!166)))))

(assert (=> d!52854 d!52886))

(declare-fun b!62504 () Bool)

(declare-fun e!33527 () Bool)

(declare-fun tp!16412 () Bool)

(assert (=> b!62504 (= e!33527 (and (inv!1153 (h!777 (t!47366 (msgs!11 queue!170)))) tp!16412))))

(assert (=> b!62497 (= tp!16405 e!33527)))

(assert (= (and b!62497 (is-Cons!533 (t!47366 (msgs!11 queue!170)))) b!62504))

(declare-fun m!68350 () Bool)

(assert (=> b!62504 m!68350))

(declare-fun b!62505 () Bool)

(declare-fun e!33529 () Bool)

(declare-fun tp!16413 () Bool)

(assert (=> b!62505 (= e!33529 (and (inv!1153 (h!777 (t!47366 (msgs!11 queue!166)))) tp!16413))))

(assert (=> b!62503 (= tp!16411 e!33529)))

(assert (= (and b!62503 (is-Cons!533 (t!47366 (msgs!11 queue!166)))) b!62505))

(declare-fun m!68352 () Bool)

(assert (=> b!62505 m!68352))

(declare-fun b!62506 () Bool)

(declare-fun e!33531 () Bool)

(declare-fun tp!16414 () Bool)

(assert (=> b!62506 (= e!33531 (and (inv!1153 (h!777 (t!47366 (msgs!11 (_2!183 t!47359))))) tp!16414))))

(assert (=> b!62496 (= tp!16404 e!33531)))

(assert (= (and b!62496 (is-Cons!533 (t!47366 (msgs!11 (_2!183 t!47359))))) b!62506))

(declare-fun m!68354 () Bool)

(assert (=> b!62506 m!68354))

(declare-fun b!62507 () Bool)

(declare-fun e!33533 () Bool)

(declare-fun tp!16415 () Bool)

(assert (=> b!62507 (= e!33533 (and (inv!1153 (h!777 (t!47366 (msgs!11 (_2!183 res!29095))))) tp!16415))))

(assert (=> b!62498 (= tp!16406 e!33533)))

(assert (= (and b!62498 (is-Cons!533 (t!47366 (msgs!11 (_2!183 res!29095))))) b!62507))

(declare-fun m!68356 () Bool)

(assert (=> b!62507 m!68356))

(declare-fun b!62508 () Bool)

(declare-fun e!33535 () Bool)

(declare-fun tp!16416 () Bool)

(assert (=> b!62508 (= e!33535 (and (inv!1153 (h!777 (t!47366 (msgs!11 (_2!183 res!29093))))) tp!16416))))

(assert (=> b!62502 (= tp!16410 e!33535)))

(assert (= (and b!62502 (is-Cons!533 (t!47366 (msgs!11 (_2!183 res!29093))))) b!62508))

(declare-fun m!68358 () Bool)

(assert (=> b!62508 m!68358))

(declare-fun b!62509 () Bool)

(declare-fun e!33537 () Bool)

(declare-fun tp!16417 () Bool)

(assert (=> b!62509 (= e!33537 (and (inv!1153 (h!777 (t!47366 (msgs!11 queue!167)))) tp!16417))))

(assert (=> b!62501 (= tp!16409 e!33537)))

(assert (= (and b!62501 (is-Cons!533 (t!47366 (msgs!11 queue!167)))) b!62509))

(declare-fun m!68360 () Bool)

(assert (=> b!62509 m!68360))

(declare-fun b!62510 () Bool)

(declare-fun e!33539 () Bool)

(declare-fun tp!16418 () Bool)

(assert (=> b!62510 (= e!33539 (and (inv!1153 (h!777 (t!47366 (msgs!11 queue!173)))) tp!16418))))

(assert (=> b!62499 (= tp!16407 e!33539)))

(assert (= (and b!62499 (is-Cons!533 (t!47366 (msgs!11 queue!173)))) b!62510))

(declare-fun m!68362 () Bool)

(assert (=> b!62510 m!68362))

(declare-fun b!62511 () Bool)

(declare-fun e!33541 () Bool)

(declare-fun tp!16419 () Bool)

(assert (=> b!62511 (= e!33541 (and (inv!1153 (h!777 (t!47366 (msgs!11 (_2!183 t!47360))))) tp!16419))))

(assert (=> b!62500 (= tp!16408 e!33541)))

(assert (= (and b!62500 (is-Cons!533 (t!47366 (msgs!11 (_2!183 t!47360))))) b!62511))

(declare-fun m!68364 () Bool)

(assert (=> b!62511 m!68364))

(push 1)

(assert (not b!62505))

(assert (not b!62508))

(assert (not b!62511))

(assert (not b!62507))

(assert (not b!62510))

(assert (not b!62504))

(assert (not b!62506))

(assert (not b!62509))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

