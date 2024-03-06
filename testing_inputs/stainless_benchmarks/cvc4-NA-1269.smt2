; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9034 () Bool)

(assert start!9034)

(declare-fun b!62666 () Bool)

(declare-fun e!33715 () Bool)

(declare-fun tp!16507 () Bool)

(assert (=> b!62666 (= e!33715 tp!16507)))

(declare-fun b!62667 () Bool)

(declare-fun e!33698 () Bool)

(declare-fun tp!16505 () Bool)

(assert (=> b!62667 (= e!33698 tp!16505)))

(declare-fun b!62668 () Bool)

(declare-fun e!33713 () Bool)

(declare-fun tp!16509 () Bool)

(assert (=> b!62668 (= e!33713 tp!16509)))

(declare-fun b!62669 () Bool)

(declare-fun e!33703 () Bool)

(declare-fun tp!16518 () Bool)

(assert (=> b!62669 (= e!33703 tp!16518)))

(declare-fun b!62670 () Bool)

(declare-fun e!33716 () Bool)

(declare-fun tp!16513 () Bool)

(assert (=> b!62670 (= e!33716 tp!16513)))

(declare-fun b!62671 () Bool)

(declare-fun e!33705 () Bool)

(declare-fun tp!16511 () Bool)

(assert (=> b!62671 (= e!33705 tp!16511)))

(declare-fun b!62672 () Bool)

(declare-fun res!29191 () Bool)

(declare-fun e!33700 () Bool)

(assert (=> b!62672 (=> (not res!29191) (not e!33700))))

(declare-datatypes () ((String!957 (String!958 (value!5171 String)))))

(declare-datatypes () ((List!574 (Cons!535 (h!779 String!957) (t!47370 List!574)) (Nil!536))))

(declare-datatypes () ((Unit!1035 (Unit!1036))))

(declare-datatypes () ((Object!335 (Open!335 (value!5172 Int)))))

(declare-datatypes () ((MsgQueue!9 (MsgQueue!10 (queue!186 Object!335) (msgs!13 List!574)))))

(declare-datatypes () ((tuple2!318 (tuple2!319 (_1!186 Unit!1035) (_2!186 MsgQueue!9)))))

(declare-fun res!29095 () tuple2!318)

(declare-fun queue!170 () MsgQueue!9)

(declare-fun tmp!491 () Unit!1035)

(declare-fun queue!173 () MsgQueue!9)

(declare-fun t!47360 () tuple2!318)

(declare-fun tmp!490 () Unit!1035)

(declare-fun res!29096 () Unit!1035)

(declare-fun Unit!1037 () Unit!1035)

(assert (=> b!62672 (= res!29191 (and (= t!47360 (tuple2!319 Unit!1037 (MsgQueue!10 (queue!186 queue!170) (msgs!13 (_2!186 res!29095))))) (= res!29096 (_1!186 t!47360)) (= queue!173 (_2!186 t!47360)) (= tmp!490 res!29096) (= tmp!491 (_1!186 res!29095))))))

(declare-fun b!62673 () Bool)

(declare-fun e!33704 () Bool)

(declare-fun tp!16506 () Bool)

(assert (=> b!62673 (= e!33704 tp!16506)))

(declare-fun b!62674 () Bool)

(declare-fun res!29196 () Bool)

(assert (=> b!62674 (=> (not res!29196) (not e!33700))))

(declare-fun tmp!494 () Unit!1035)

(declare-fun t!47361 () tuple2!318)

(declare-datatypes () ((Option!406 (Some!385 (v!2315 String!957)) (None!386))))

(declare-datatypes () ((tuple2!320 (tuple2!321 (_1!187 Option!406) (_2!187 MsgQueue!9)))))

(declare-fun res!29098 () tuple2!320)

(declare-fun res!29100 () Unit!1035)

(declare-fun queue!176 () MsgQueue!9)

(declare-fun a!686 () Option!406)

(declare-fun Unit!1038 () Unit!1035)

(assert (=> b!62674 (= res!29196 (and (= t!47361 (tuple2!319 Unit!1038 (MsgQueue!10 (queue!186 queue!173) (msgs!13 (_2!187 res!29098))))) (= res!29100 (_1!186 t!47361)) (= queue!176 (_2!186 t!47361)) (= tmp!494 res!29100) (= a!686 (_1!187 res!29098)) (= a!686 (Some!385 (String!958 "HHeelllloo")))))))

(declare-fun b!62675 () Bool)

(declare-fun res!29198 () Bool)

(assert (=> b!62675 (=> (not res!29198) (not e!33700))))

(declare-fun take!14 (MsgQueue!9) tuple2!320)

(assert (=> b!62675 (= res!29198 (= res!29098 (take!14 queue!173)))))

(declare-fun b!62676 () Bool)

(declare-fun res!29193 () Bool)

(assert (=> b!62676 (=> (not res!29193) (not e!33700))))

(declare-fun queue!167 () MsgQueue!9)

(declare-fun queue!166 () MsgQueue!9)

(assert (=> b!62676 (= res!29193 (= queue!167 queue!166))))

(declare-fun b!62677 () Bool)

(declare-fun res!29197 () Bool)

(assert (=> b!62677 (=> (not res!29197) (not e!33700))))

(declare-fun isEmpty!548 (MsgQueue!9) Bool)

(assert (=> b!62677 (= res!29197 (not (isEmpty!548 queue!173)))))

(declare-fun b!62678 () Bool)

(declare-fun e!33712 () Bool)

(declare-fun tp!16512 () Bool)

(assert (=> b!62678 (= e!33712 tp!16512)))

(declare-fun b!62679 () Bool)

(declare-fun e!33718 () Bool)

(declare-fun tp!16508 () Bool)

(assert (=> b!62679 (= e!33718 tp!16508)))

(declare-fun b!62680 () Bool)

(declare-fun res!29190 () Bool)

(assert (=> b!62680 (=> (not res!29190) (not e!33700))))

(declare-fun res!29093 () tuple2!318)

(declare-fun put!4 (MsgQueue!9 String!957) tuple2!318)

(assert (=> b!62680 (= res!29190 (= res!29093 (put!4 queue!167 (String!958 "WWoorrlldd"))))))

(declare-fun b!62681 () Bool)

(declare-fun res!29195 () Bool)

(assert (=> b!62681 (=> (not res!29195) (not e!33700))))

(declare-fun t!47359 () tuple2!318)

(declare-fun res!29094 () Unit!1035)

(declare-fun tmp!486 () Unit!1035)

(declare-fun tmp!487 () Unit!1035)

(declare-fun Unit!1039 () Unit!1035)

(assert (=> b!62681 (= res!29195 (and (= t!47359 (tuple2!319 Unit!1039 (MsgQueue!10 (queue!186 queue!167) (msgs!13 (_2!186 res!29093))))) (= res!29094 (_1!186 t!47359)) (= queue!170 (_2!186 t!47359)) (= tmp!486 res!29094) (= tmp!487 (_1!186 res!29093))))))

(declare-fun b!62682 () Bool)

(declare-fun e!33714 () Bool)

(declare-fun tp!16515 () Bool)

(assert (=> b!62682 (= e!33714 tp!16515)))

(declare-fun b!62683 () Bool)

(declare-fun e!33708 () Bool)

(declare-fun tp!16514 () Bool)

(assert (=> b!62683 (= e!33708 tp!16514)))

(declare-fun b!62684 () Bool)

(declare-fun e!33710 () Bool)

(declare-fun b!62449 () Option!406)

(declare-fun inv!1153 (String!957) Bool)

(assert (=> b!62684 (= e!33710 (inv!1153 (v!2315 b!62449)))))

(declare-fun b!62685 () Bool)

(declare-fun e!33702 () Bool)

(assert (=> b!62685 (= e!33702 (inv!1153 (v!2315 a!686)))))

(declare-fun b!62686 () Bool)

(declare-fun res!29199 () Bool)

(assert (=> b!62686 (=> (not res!29199) (not e!33700))))

(declare-fun res!29101 () tuple2!320)

(assert (=> b!62686 (= res!29199 (= res!29101 (take!14 queue!176)))))

(declare-fun res!29103 () Unit!1035)

(declare-fun queue!179 () MsgQueue!9)

(declare-fun tmp!497 () Unit!1035)

(declare-fun b!62687 () Bool)

(declare-fun t!47362 () tuple2!318)

(declare-fun Unit!1040 () Unit!1035)

(assert (=> b!62687 (= e!33700 (and (= t!47362 (tuple2!319 Unit!1040 (MsgQueue!10 (queue!186 queue!176) (msgs!13 (_2!187 res!29101))))) (= res!29103 (_1!186 t!47362)) (= queue!179 (_2!186 t!47362)) (= tmp!497 res!29103) (= b!62449 (_1!187 res!29101)) (not (= b!62449 (Some!385 (String!958 "WWoorrlldd"))))))))

(declare-fun b!62688 () Bool)

(declare-fun e!33711 () Bool)

(assert (=> b!62688 (= e!33711 (inv!1153 (v!2315 (_1!187 res!29101))))))

(declare-fun res!29192 () Bool)

(assert (=> start!9034 (=> (not res!29192) (not e!33700))))

(assert (=> start!9034 (= res!29192 (isEmpty!548 queue!166))))

(assert (=> start!9034 e!33700))

(assert (=> start!9034 e!33714))

(assert (=> start!9034 e!33710))

(assert (=> start!9034 e!33712))

(assert (=> start!9034 e!33705))

(declare-fun e!33707 () Bool)

(assert (=> start!9034 (and e!33711 e!33707)))

(assert (=> start!9034 e!33704))

(assert (=> start!9034 true))

(assert (=> start!9034 e!33713))

(assert (=> start!9034 e!33718))

(declare-fun e!33699 () Bool)

(assert (=> start!9034 e!33699))

(declare-fun e!33706 () Bool)

(assert (=> start!9034 e!33706))

(assert (=> start!9034 e!33708))

(assert (=> start!9034 e!33698))

(assert (=> start!9034 e!33703))

(declare-fun e!33697 () Bool)

(assert (=> start!9034 (and e!33697 e!33715)))

(assert (=> start!9034 e!33716))

(assert (=> start!9034 e!33702))

(declare-fun b!62689 () Bool)

(declare-fun res!29194 () Bool)

(assert (=> b!62689 (=> (not res!29194) (not e!33700))))

(assert (=> b!62689 (= res!29194 (= res!29095 (put!4 queue!170 (String!958 "HHeelllloo"))))))

(declare-fun b!62690 () Bool)

(declare-fun tp!16517 () Bool)

(assert (=> b!62690 (= e!33707 tp!16517)))

(declare-fun b!62691 () Bool)

(declare-fun tp!16510 () Bool)

(assert (=> b!62691 (= e!33699 tp!16510)))

(declare-fun b!62692 () Bool)

(declare-fun tp!16516 () Bool)

(assert (=> b!62692 (= e!33706 tp!16516)))

(declare-fun b!62693 () Bool)

(assert (=> b!62693 (= e!33697 (inv!1153 (v!2315 (_1!187 res!29098))))))

(assert (= (and start!9034 res!29192) b!62676))

(assert (= (and b!62676 res!29193) b!62680))

(assert (= (and b!62680 res!29190) b!62681))

(assert (= (and b!62681 res!29195) b!62689))

(assert (= (and b!62689 res!29194) b!62672))

(assert (= (and b!62672 res!29191) b!62677))

(assert (= (and b!62677 res!29197) b!62675))

(assert (= (and b!62675 res!29198) b!62674))

(assert (= (and b!62674 res!29196) b!62686))

(assert (= (and b!62686 res!29199) b!62687))

(assert (= start!9034 b!62682))

(assert (= (and start!9034 (is-Some!385 b!62449)) b!62684))

(assert (= start!9034 b!62678))

(assert (= start!9034 b!62671))

(assert (= (and start!9034 (is-Some!385 (_1!187 res!29101))) b!62688))

(assert (= start!9034 b!62690))

(assert (= start!9034 b!62673))

(assert (= start!9034 b!62668))

(assert (= start!9034 b!62679))

(assert (= start!9034 b!62691))

(assert (= start!9034 b!62692))

(assert (= start!9034 b!62683))

(assert (= start!9034 b!62667))

(assert (= start!9034 b!62669))

(assert (= (and start!9034 (is-Some!385 (_1!187 res!29098))) b!62693))

(assert (= start!9034 b!62666))

(assert (= start!9034 b!62670))

(assert (= (and start!9034 (is-Some!385 a!686)) b!62685))

(declare-fun m!68452 () Bool)

(assert (=> b!62680 m!68452))

(declare-fun m!68454 () Bool)

(assert (=> b!62677 m!68454))

(declare-fun m!68456 () Bool)

(assert (=> b!62675 m!68456))

(declare-fun m!68458 () Bool)

(assert (=> b!62693 m!68458))

(declare-fun m!68460 () Bool)

(assert (=> b!62686 m!68460))

(declare-fun m!68462 () Bool)

(assert (=> b!62688 m!68462))

(declare-fun m!68464 () Bool)

(assert (=> start!9034 m!68464))

(declare-fun m!68466 () Bool)

(assert (=> b!62689 m!68466))

(declare-fun m!68468 () Bool)

(assert (=> b!62685 m!68468))

(declare-fun m!68470 () Bool)

(assert (=> b!62684 m!68470))

(push 1)

(assert (not b!62684))

(assert (not b!62693))

(assert (not b!62683))

(assert (not b!62668))

(assert (not b!62677))

(assert (not b!62679))

(assert (not b!62671))

(assert (not b!62686))

(assert (not b!62680))

(assert (not b!62678))

(assert (not b!62692))

(assert (not b!62690))

(assert (not b!62670))

(assert (not b!62691))

(assert (not b!62689))

(assert (not b!62682))

(assert (not b!62688))

(assert (not start!9034))

(assert (not b!62673))

(assert (not b!62666))

(assert (not b!62669))

(assert (not b!62675))

(assert (not b!62685))

(assert (not b!62667))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52946 () Bool)

(assert (=> d!52946 (= (inv!1153 (v!2315 (_1!187 res!29098))) (= (mod (str.len (value!5171 (v!2315 (_1!187 res!29098)))) 2) 0))))

(assert (=> b!62693 d!52946))

(declare-fun d!52948 () Bool)

(declare-fun lt!11553 () Option!406)

(declare-fun headOption!5 (List!574) Option!406)

(assert (=> d!52948 (= lt!11553 (headOption!5 (msgs!13 queue!176)))))

(declare-datatypes () ((Option!407 (Some!386 (v!2316 List!574)) (None!387))))

(declare-fun lt!11554 () Option!407)

(declare-fun tailOption!4 (List!574) Option!407)

(assert (=> d!52948 (= lt!11554 (tailOption!4 (msgs!13 queue!176)))))

(declare-fun _take!2 (MsgQueue!9) Option!406)

(assert (=> d!52948 (= lt!11553 (_take!2 queue!176))))

(declare-fun lambda!9146 () Int)

(declare-fun getOrElse!6 (Option!407 Int) List!574)

(assert (=> d!52948 (= (take!14 queue!176) (tuple2!321 lt!11553 (MsgQueue!10 (queue!186 queue!176) (getOrElse!6 lt!11554 lambda!9146))))))

(declare-fun bs!37483 () Bool)

(assert (= bs!37483 d!52948))

(declare-fun m!68472 () Bool)

(assert (=> bs!37483 m!68472))

(declare-fun m!68474 () Bool)

(assert (=> bs!37483 m!68474))

(declare-fun m!68476 () Bool)

(assert (=> bs!37483 m!68476))

(declare-fun m!68478 () Bool)

(assert (=> bs!37483 m!68478))

(assert (=> b!62686 d!52948))

(declare-fun d!52950 () Bool)

(declare-fun lt!11557 () MsgQueue!9)

(declare-fun $colon$colon!12 (List!574 String!957) List!574)

(assert (=> d!52950 (= lt!11557 (MsgQueue!10 (queue!186 queue!167) ($colon$colon!12 (msgs!13 queue!167) (String!958 "WWoorrlldd"))))))

(declare-fun _put!3 (MsgQueue!9 String!957) Unit!1035)

(assert (=> d!52950 (= (put!4 queue!167 (String!958 "WWoorrlldd")) (tuple2!319 (_put!3 lt!11557 (String!958 "WWoorrlldd")) lt!11557))))

(declare-fun bs!37484 () Bool)

(assert (= bs!37484 d!52950))

(declare-fun m!68480 () Bool)

(assert (=> bs!37484 m!68480))

(declare-fun m!68482 () Bool)

(assert (=> bs!37484 m!68482))

(assert (=> b!62680 d!52950))

(declare-fun d!52952 () Bool)

(assert (=> d!52952 (= (inv!1153 (v!2315 (_1!187 res!29101))) (= (mod (str.len (value!5171 (v!2315 (_1!187 res!29101)))) 2) 0))))

(assert (=> b!62688 d!52952))

(declare-fun d!52954 () Bool)

(declare-fun res!29203 () Bool)

(declare-fun isEmpty!549 (List!574) Bool)

(assert (=> d!52954 (= res!29203 (isEmpty!549 (msgs!13 queue!166)))))

(assert (=> d!52954 true))

(assert (=> d!52954 (= (isEmpty!548 queue!166) res!29203)))

(declare-fun bs!37485 () Bool)

(assert (= bs!37485 d!52954))

(declare-fun m!68484 () Bool)

(assert (=> bs!37485 m!68484))

(assert (=> start!9034 d!52954))

(declare-fun d!52956 () Bool)

(declare-fun lt!11558 () MsgQueue!9)

(assert (=> d!52956 (= lt!11558 (MsgQueue!10 (queue!186 queue!170) ($colon$colon!12 (msgs!13 queue!170) (String!958 "HHeelllloo"))))))

(assert (=> d!52956 (= (put!4 queue!170 (String!958 "HHeelllloo")) (tuple2!319 (_put!3 lt!11558 (String!958 "HHeelllloo")) lt!11558))))

(declare-fun bs!37486 () Bool)

(assert (= bs!37486 d!52956))

(declare-fun m!68486 () Bool)

(assert (=> bs!37486 m!68486))

(declare-fun m!68488 () Bool)

(assert (=> bs!37486 m!68488))

(assert (=> b!62689 d!52956))

(declare-fun d!52958 () Bool)

(declare-fun res!29204 () Bool)

(assert (=> d!52958 (= res!29204 (isEmpty!549 (msgs!13 queue!173)))))

(assert (=> d!52958 true))

(assert (=> d!52958 (= (isEmpty!548 queue!173) res!29204)))

(declare-fun bs!37487 () Bool)

(assert (= bs!37487 d!52958))

(declare-fun m!68490 () Bool)

(assert (=> bs!37487 m!68490))

(assert (=> b!62677 d!52958))

(declare-fun bs!37488 () Bool)

(declare-fun d!52960 () Bool)

(assert (= bs!37488 (and d!52960 d!52948)))

(declare-fun lambda!9147 () Int)

(assert (=> bs!37488 (= lambda!9147 lambda!9146)))

(declare-fun lt!11559 () Option!406)

(assert (=> d!52960 (= lt!11559 (headOption!5 (msgs!13 queue!173)))))

(declare-fun lt!11560 () Option!407)

(assert (=> d!52960 (= lt!11560 (tailOption!4 (msgs!13 queue!173)))))

(assert (=> d!52960 (= lt!11559 (_take!2 queue!173))))

(assert (=> d!52960 (= (take!14 queue!173) (tuple2!321 lt!11559 (MsgQueue!10 (queue!186 queue!173) (getOrElse!6 lt!11560 lambda!9147))))))

(declare-fun bs!37489 () Bool)

(assert (= bs!37489 d!52960))

(declare-fun m!68492 () Bool)

(assert (=> bs!37489 m!68492))

(declare-fun m!68494 () Bool)

(assert (=> bs!37489 m!68494))

(declare-fun m!68496 () Bool)

(assert (=> bs!37489 m!68496))

(declare-fun m!68498 () Bool)

(assert (=> bs!37489 m!68498))

(assert (=> b!62675 d!52960))

(declare-fun d!52962 () Bool)

(assert (=> d!52962 (= (inv!1153 (v!2315 b!62449)) (= (mod (str.len (value!5171 (v!2315 b!62449))) 2) 0))))

(assert (=> b!62684 d!52962))

(declare-fun d!52964 () Bool)

(assert (=> d!52964 (= (inv!1153 (v!2315 a!686)) (= (mod (str.len (value!5171 (v!2315 a!686))) 2) 0))))

(assert (=> b!62685 d!52964))

(declare-fun b!62698 () Bool)

(declare-fun e!33723 () Bool)

(declare-fun tp!16521 () Bool)

(assert (=> b!62698 (= e!33723 (and (inv!1153 (h!779 (msgs!13 (_2!187 res!29098)))) tp!16521))))

(assert (=> b!62666 (= tp!16507 e!33723)))

(assert (= (and b!62666 (is-Cons!535 (msgs!13 (_2!187 res!29098)))) b!62698))

(declare-fun m!68500 () Bool)

(assert (=> b!62698 m!68500))

(declare-fun b!62699 () Bool)

(declare-fun e!33725 () Bool)

(declare-fun tp!16522 () Bool)

(assert (=> b!62699 (= e!33725 (and (inv!1153 (h!779 (msgs!13 queue!167))) tp!16522))))

(assert (=> b!62691 (= tp!16510 e!33725)))

(assert (= (and b!62691 (is-Cons!535 (msgs!13 queue!167))) b!62699))

(declare-fun m!68502 () Bool)

(assert (=> b!62699 m!68502))

(declare-fun b!62700 () Bool)

(declare-fun e!33727 () Bool)

(declare-fun tp!16523 () Bool)

(assert (=> b!62700 (= e!33727 (and (inv!1153 (h!779 (msgs!13 (_2!186 res!29095)))) tp!16523))))

(assert (=> b!62671 (= tp!16511 e!33727)))

(assert (= (and b!62671 (is-Cons!535 (msgs!13 (_2!186 res!29095)))) b!62700))

(declare-fun m!68504 () Bool)

(assert (=> b!62700 m!68504))

(declare-fun b!62701 () Bool)

(declare-fun e!33729 () Bool)

(declare-fun tp!16524 () Bool)

(assert (=> b!62701 (= e!33729 (and (inv!1153 (h!779 (msgs!13 queue!166))) tp!16524))))

(assert (=> b!62678 (= tp!16512 e!33729)))

(assert (= (and b!62678 (is-Cons!535 (msgs!13 queue!166))) b!62701))

(declare-fun m!68506 () Bool)

(assert (=> b!62701 m!68506))

(declare-fun b!62702 () Bool)

(declare-fun e!33731 () Bool)

(declare-fun tp!16525 () Bool)

(assert (=> b!62702 (= e!33731 (and (inv!1153 (h!779 (msgs!13 queue!179))) tp!16525))))

(assert (=> b!62679 (= tp!16508 e!33731)))

(assert (= (and b!62679 (is-Cons!535 (msgs!13 queue!179))) b!62702))

(declare-fun m!68508 () Bool)

(assert (=> b!62702 m!68508))

(declare-fun b!62703 () Bool)

(declare-fun e!33733 () Bool)

(declare-fun tp!16526 () Bool)

(assert (=> b!62703 (= e!33733 (and (inv!1153 (h!779 (msgs!13 (_2!186 t!47359)))) tp!16526))))

(assert (=> b!62682 (= tp!16515 e!33733)))

(assert (= (and b!62682 (is-Cons!535 (msgs!13 (_2!186 t!47359)))) b!62703))

(declare-fun m!68510 () Bool)

(assert (=> b!62703 m!68510))

(declare-fun b!62704 () Bool)

(declare-fun e!33735 () Bool)

(declare-fun tp!16527 () Bool)

(assert (=> b!62704 (= e!33735 (and (inv!1153 (h!779 (msgs!13 queue!176))) tp!16527))))

(assert (=> b!62670 (= tp!16513 e!33735)))

(assert (= (and b!62670 (is-Cons!535 (msgs!13 queue!176))) b!62704))

(declare-fun m!68512 () Bool)

(assert (=> b!62704 m!68512))

(declare-fun b!62705 () Bool)

(declare-fun e!33737 () Bool)

(declare-fun tp!16528 () Bool)

(assert (=> b!62705 (= e!33737 (and (inv!1153 (h!779 (msgs!13 (_2!186 res!29093)))) tp!16528))))

(assert (=> b!62668 (= tp!16509 e!33737)))

(assert (= (and b!62668 (is-Cons!535 (msgs!13 (_2!186 res!29093)))) b!62705))

(declare-fun m!68514 () Bool)

(assert (=> b!62705 m!68514))

(declare-fun b!62706 () Bool)

(declare-fun e!33739 () Bool)

(declare-fun tp!16529 () Bool)

(assert (=> b!62706 (= e!33739 (and (inv!1153 (h!779 (msgs!13 queue!173))) tp!16529))))

(assert (=> b!62692 (= tp!16516 e!33739)))

(assert (= (and b!62692 (is-Cons!535 (msgs!13 queue!173))) b!62706))

(declare-fun m!68516 () Bool)

(assert (=> b!62706 m!68516))

(declare-fun b!62707 () Bool)

(declare-fun e!33741 () Bool)

(declare-fun tp!16530 () Bool)

(assert (=> b!62707 (= e!33741 (and (inv!1153 (h!779 (msgs!13 (_2!186 t!47361)))) tp!16530))))

(assert (=> b!62667 (= tp!16505 e!33741)))

(assert (= (and b!62667 (is-Cons!535 (msgs!13 (_2!186 t!47361)))) b!62707))

(declare-fun m!68518 () Bool)

(assert (=> b!62707 m!68518))

(declare-fun b!62708 () Bool)

(declare-fun e!33743 () Bool)

(declare-fun tp!16531 () Bool)

(assert (=> b!62708 (= e!33743 (and (inv!1153 (h!779 (msgs!13 (_2!186 t!47362)))) tp!16531))))

(assert (=> b!62669 (= tp!16518 e!33743)))

(assert (= (and b!62669 (is-Cons!535 (msgs!13 (_2!186 t!47362)))) b!62708))

(declare-fun m!68520 () Bool)

(assert (=> b!62708 m!68520))

(declare-fun b!62709 () Bool)

(declare-fun e!33745 () Bool)

(declare-fun tp!16532 () Bool)

(assert (=> b!62709 (= e!33745 (and (inv!1153 (h!779 (msgs!13 (_2!186 t!47360)))) tp!16532))))

(assert (=> b!62683 (= tp!16514 e!33745)))

(assert (= (and b!62683 (is-Cons!535 (msgs!13 (_2!186 t!47360)))) b!62709))

(declare-fun m!68522 () Bool)

(assert (=> b!62709 m!68522))

(declare-fun b!62710 () Bool)

(declare-fun e!33747 () Bool)

(declare-fun tp!16533 () Bool)

(assert (=> b!62710 (= e!33747 (and (inv!1153 (h!779 (msgs!13 queue!170))) tp!16533))))

(assert (=> b!62673 (= tp!16506 e!33747)))

(assert (= (and b!62673 (is-Cons!535 (msgs!13 queue!170))) b!62710))

(declare-fun m!68524 () Bool)

(assert (=> b!62710 m!68524))

(declare-fun b!62711 () Bool)

(declare-fun e!33749 () Bool)

(declare-fun tp!16534 () Bool)

(assert (=> b!62711 (= e!33749 (and (inv!1153 (h!779 (msgs!13 (_2!187 res!29101)))) tp!16534))))

(assert (=> b!62690 (= tp!16517 e!33749)))

(assert (= (and b!62690 (is-Cons!535 (msgs!13 (_2!187 res!29101)))) b!62711))

(declare-fun m!68526 () Bool)

(assert (=> b!62711 m!68526))

(push 1)

(assert (not b!62707))

(assert (not b!62699))

(assert (not d!52958))

(assert (not b!62701))

(assert (not d!52954))

(assert (not b!62710))

(assert (not b!62709))

(assert (not b!62700))

(assert (not b!62704))

(assert (not b!62711))

(assert (not b!62706))

(assert (not d!52956))

(assert (not d!52948))

(assert (not b!62703))

(assert (not b!62708))

(assert (not b!62702))

(assert (not b!62698))

(assert (not b!62705))

(assert (not d!52960))

(assert (not d!52950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52966 () Bool)

(assert (=> d!52966 (= (inv!1153 (h!779 (msgs!13 queue!173))) (= (mod (str.len (value!5171 (h!779 (msgs!13 queue!173)))) 2) 0))))

(assert (=> b!62706 d!52966))

(declare-fun d!52968 () Bool)

(assert (=> d!52968 (= (inv!1153 (h!779 (msgs!13 queue!166))) (= (mod (str.len (value!5171 (h!779 (msgs!13 queue!166)))) 2) 0))))

(assert (=> b!62701 d!52968))

(declare-fun d!52970 () Bool)

(assert (=> d!52970 (= (inv!1153 (h!779 (msgs!13 queue!167))) (= (mod (str.len (value!5171 (h!779 (msgs!13 queue!167)))) 2) 0))))

(assert (=> b!62699 d!52970))

(declare-fun d!52972 () Bool)

(assert (=> d!52972 (= (inv!1153 (h!779 (msgs!13 (_2!187 res!29098)))) (= (mod (str.len (value!5171 (h!779 (msgs!13 (_2!187 res!29098))))) 2) 0))))

(assert (=> b!62698 d!52972))

(declare-fun d!52974 () Bool)

(declare-fun lt!11563 () Option!406)

(declare-fun isDefined!12 (Option!406) Bool)

(assert (=> d!52974 (not (= (isDefined!12 lt!11563) (isEmpty!549 (msgs!13 queue!176))))))

(assert (=> d!52974 (= lt!11563 (ite (is-Cons!535 (msgs!13 queue!176)) (Some!385 (h!779 (msgs!13 queue!176))) None!386))))

(assert (=> d!52974 (= (headOption!5 (msgs!13 queue!176)) lt!11563)))

(declare-fun bs!37490 () Bool)

(assert (= bs!37490 d!52974))

(declare-fun m!68528 () Bool)

(assert (=> bs!37490 m!68528))

(declare-fun m!68530 () Bool)

(assert (=> bs!37490 m!68530))

(assert (=> d!52948 d!52974))

(declare-fun d!52976 () Bool)

(declare-fun lt!11566 () Option!407)

(declare-fun isDefined!13 (Option!407) Bool)

(assert (=> d!52976 (not (= (isDefined!13 lt!11566) (isEmpty!549 (msgs!13 queue!176))))))

(assert (=> d!52976 (= lt!11566 (ite (is-Cons!535 (msgs!13 queue!176)) (Some!386 (t!47370 (msgs!13 queue!176))) None!387))))

(assert (=> d!52976 (= (tailOption!4 (msgs!13 queue!176)) lt!11566)))

(declare-fun bs!37491 () Bool)

(assert (= bs!37491 d!52976))

(declare-fun m!68532 () Bool)

(assert (=> bs!37491 m!68532))

(assert (=> bs!37491 m!68530))

(assert (=> d!52948 d!52976))

(declare-fun d!52978 () Bool)

(declare-fun res!29207 () Option!406)

(assert (=> d!52978 (= res!29207 (headOption!5 (msgs!13 queue!176)))))

(declare-fun e!33755 () Bool)

(assert (=> d!52978 e!33755))

(assert (=> d!52978 (= (_take!2 queue!176) res!29207)))

(declare-fun b!62714 () Bool)

(assert (=> b!62714 (= e!33755 (inv!1153 (v!2315 res!29207)))))

(assert (= (and d!52978 (is-Some!385 res!29207)) b!62714))

(assert (=> d!52978 m!68472))

(declare-fun m!68534 () Bool)

(assert (=> b!62714 m!68534))

(assert (=> d!52948 d!52978))

(declare-fun d!52980 () Bool)

(declare-fun c!13678 () Bool)

(assert (=> d!52980 (= c!13678 (is-Some!386 lt!11554))))

(declare-fun e!33759 () List!574)

(assert (=> d!52980 (= (getOrElse!6 lt!11554 lambda!9146) e!33759)))

(declare-fun b!62719 () Bool)

(assert (=> b!62719 (= e!33759 (v!2316 lt!11554))))

(declare-fun b!62720 () Bool)

(declare-fun dynLambda!949 (Int) List!574)

(assert (=> b!62720 (= e!33759 (dynLambda!949 lambda!9146))))

(assert (= (and d!52980 c!13678) b!62719))

(assert (= (and d!52980 (not c!13678)) b!62720))

(declare-fun b_lambda!15699 () Bool)

(assert (=> (not b_lambda!15699) (not b!62720)))

(declare-fun m!68536 () Bool)

(assert (=> b!62720 m!68536))

(assert (=> d!52948 d!52980))

(declare-fun d!52982 () Bool)

(declare-fun lt!11567 () Option!406)

(assert (=> d!52982 (not (= (isDefined!12 lt!11567) (isEmpty!549 (msgs!13 queue!173))))))

(assert (=> d!52982 (= lt!11567 (ite (is-Cons!535 (msgs!13 queue!173)) (Some!385 (h!779 (msgs!13 queue!173))) None!386))))

(assert (=> d!52982 (= (headOption!5 (msgs!13 queue!173)) lt!11567)))

(declare-fun bs!37492 () Bool)

(assert (= bs!37492 d!52982))

(declare-fun m!68538 () Bool)

(assert (=> bs!37492 m!68538))

(assert (=> bs!37492 m!68490))

(assert (=> d!52960 d!52982))

(declare-fun d!52984 () Bool)

(declare-fun lt!11568 () Option!407)

(assert (=> d!52984 (not (= (isDefined!13 lt!11568) (isEmpty!549 (msgs!13 queue!173))))))

(assert (=> d!52984 (= lt!11568 (ite (is-Cons!535 (msgs!13 queue!173)) (Some!386 (t!47370 (msgs!13 queue!173))) None!387))))

(assert (=> d!52984 (= (tailOption!4 (msgs!13 queue!173)) lt!11568)))

(declare-fun bs!37493 () Bool)

(assert (= bs!37493 d!52984))

(declare-fun m!68540 () Bool)

(assert (=> bs!37493 m!68540))

(assert (=> bs!37493 m!68490))

(assert (=> d!52960 d!52984))

(declare-fun d!52986 () Bool)

(declare-fun res!29208 () Option!406)

(assert (=> d!52986 (= res!29208 (headOption!5 (msgs!13 queue!173)))))

(declare-fun e!33760 () Bool)

(assert (=> d!52986 e!33760))

(assert (=> d!52986 (= (_take!2 queue!173) res!29208)))

(declare-fun b!62721 () Bool)

(assert (=> b!62721 (= e!33760 (inv!1153 (v!2315 res!29208)))))

(assert (= (and d!52986 (is-Some!385 res!29208)) b!62721))

(assert (=> d!52986 m!68492))

(declare-fun m!68542 () Bool)

(assert (=> b!62721 m!68542))

(assert (=> d!52960 d!52986))

(declare-fun d!52988 () Bool)

(declare-fun c!13679 () Bool)

(assert (=> d!52988 (= c!13679 (is-Some!386 lt!11560))))

(declare-fun e!33762 () List!574)

(assert (=> d!52988 (= (getOrElse!6 lt!11560 lambda!9147) e!33762)))

(declare-fun b!62722 () Bool)

(assert (=> b!62722 (= e!33762 (v!2316 lt!11560))))

(declare-fun b!62723 () Bool)

(assert (=> b!62723 (= e!33762 (dynLambda!949 lambda!9147))))

(assert (= (and d!52988 c!13679) b!62722))

(assert (= (and d!52988 (not c!13679)) b!62723))

(declare-fun b_lambda!15701 () Bool)

(assert (=> (not b_lambda!15701) (not b!62723)))

(declare-fun m!68544 () Bool)

(assert (=> b!62723 m!68544))

(assert (=> d!52960 d!52988))

(declare-fun d!52990 () Bool)

(assert (=> d!52990 (= (inv!1153 (h!779 (msgs!13 (_2!186 t!47360)))) (= (mod (str.len (value!5171 (h!779 (msgs!13 (_2!186 t!47360))))) 2) 0))))

(assert (=> b!62709 d!52990))

(declare-fun d!52992 () Bool)

(assert (=> d!52992 (= (inv!1153 (h!779 (msgs!13 (_2!186 t!47361)))) (= (mod (str.len (value!5171 (h!779 (msgs!13 (_2!186 t!47361))))) 2) 0))))

(assert (=> b!62707 d!52992))

(declare-fun d!52994 () Bool)

(assert (=> d!52994 (= (inv!1153 (h!779 (msgs!13 (_2!186 t!47359)))) (= (mod (str.len (value!5171 (h!779 (msgs!13 (_2!186 t!47359))))) 2) 0))))

(assert (=> b!62703 d!52994))

(declare-fun d!52996 () Bool)

(assert (=> d!52996 (= (inv!1153 (h!779 (msgs!13 queue!170))) (= (mod (str.len (value!5171 (h!779 (msgs!13 queue!170)))) 2) 0))))

(assert (=> b!62710 d!52996))

(declare-fun d!52998 () Bool)

(assert (=> d!52998 (= (inv!1153 (h!779 (msgs!13 (_2!186 res!29095)))) (= (mod (str.len (value!5171 (h!779 (msgs!13 (_2!186 res!29095))))) 2) 0))))

(assert (=> b!62700 d!52998))

(declare-fun d!53000 () Bool)

(assert (=> d!53000 (= ($colon$colon!12 (msgs!13 queue!167) (String!958 "WWoorrlldd")) (Cons!535 (String!958 "WWoorrlldd") (msgs!13 queue!167)))))

(assert (=> d!52950 d!53000))

(declare-fun d!53002 () Bool)

(assert (=> d!53002 true))

(assert (=> d!53002 true))

(declare-fun res!29211 () Unit!1035)

(assert (=> d!53002 (= (_put!3 lt!11557 (String!958 "WWoorrlldd")) res!29211)))

(assert (=> d!52950 d!53002))

(declare-fun d!53004 () Bool)

(assert (=> d!53004 (= (inv!1153 (h!779 (msgs!13 (_2!186 t!47362)))) (= (mod (str.len (value!5171 (h!779 (msgs!13 (_2!186 t!47362))))) 2) 0))))

(assert (=> b!62708 d!53004))

(declare-fun d!53006 () Bool)

(assert (=> d!53006 (= (inv!1153 (h!779 (msgs!13 queue!176))) (= (mod (str.len (value!5171 (h!779 (msgs!13 queue!176)))) 2) 0))))

(assert (=> b!62704 d!53006))

(declare-fun d!53008 () Bool)

(assert (=> d!53008 (= (inv!1153 (h!779 (msgs!13 (_2!186 res!29093)))) (= (mod (str.len (value!5171 (h!779 (msgs!13 (_2!186 res!29093))))) 2) 0))))

(assert (=> b!62705 d!53008))

(declare-fun d!53010 () Bool)

(assert (=> d!53010 (= (inv!1153 (h!779 (msgs!13 (_2!187 res!29101)))) (= (mod (str.len (value!5171 (h!779 (msgs!13 (_2!187 res!29101))))) 2) 0))))

(assert (=> b!62711 d!53010))

(declare-fun d!53012 () Bool)

(assert (=> d!53012 (= (isEmpty!549 (msgs!13 queue!173)) (is-Nil!536 (msgs!13 queue!173)))))

(assert (=> d!52958 d!53012))

(declare-fun d!53014 () Bool)

(assert (=> d!53014 (= (inv!1153 (h!779 (msgs!13 queue!179))) (= (mod (str.len (value!5171 (h!779 (msgs!13 queue!179)))) 2) 0))))

(assert (=> b!62702 d!53014))

(declare-fun d!53016 () Bool)

(assert (=> d!53016 (= ($colon$colon!12 (msgs!13 queue!170) (String!958 "HHeelllloo")) (Cons!535 (String!958 "HHeelllloo") (msgs!13 queue!170)))))

(assert (=> d!52956 d!53016))

(declare-fun d!53018 () Bool)

(assert (=> d!53018 true))

(assert (=> d!53018 true))

(declare-fun res!29212 () Unit!1035)

(assert (=> d!53018 (= (_put!3 lt!11558 (String!958 "HHeelllloo")) res!29212)))

(assert (=> d!52956 d!53018))

(declare-fun d!53020 () Bool)

(assert (=> d!53020 (= (isEmpty!549 (msgs!13 queue!166)) (is-Nil!536 (msgs!13 queue!166)))))

(assert (=> d!52954 d!53020))

(declare-fun b!62724 () Bool)

(declare-fun e!33763 () Bool)

(declare-fun tp!16535 () Bool)

(assert (=> b!62724 (= e!33763 (and (inv!1153 (h!779 (t!47370 (msgs!13 queue!173)))) tp!16535))))

(assert (=> b!62706 (= tp!16529 e!33763)))

(assert (= (and b!62706 (is-Cons!535 (t!47370 (msgs!13 queue!173)))) b!62724))

(declare-fun m!68546 () Bool)

(assert (=> b!62724 m!68546))

(declare-fun b!62725 () Bool)

(declare-fun e!33765 () Bool)

(declare-fun tp!16536 () Bool)

(assert (=> b!62725 (= e!33765 (and (inv!1153 (h!779 (t!47370 (msgs!13 queue!166)))) tp!16536))))

(assert (=> b!62701 (= tp!16524 e!33765)))

(assert (= (and b!62701 (is-Cons!535 (t!47370 (msgs!13 queue!166)))) b!62725))

(declare-fun m!68548 () Bool)

(assert (=> b!62725 m!68548))

(declare-fun b!62726 () Bool)

(declare-fun e!33767 () Bool)

(declare-fun tp!16537 () Bool)

(assert (=> b!62726 (= e!33767 (and (inv!1153 (h!779 (t!47370 (msgs!13 queue!167)))) tp!16537))))

(assert (=> b!62699 (= tp!16522 e!33767)))

(assert (= (and b!62699 (is-Cons!535 (t!47370 (msgs!13 queue!167)))) b!62726))

(declare-fun m!68550 () Bool)

(assert (=> b!62726 m!68550))

(declare-fun b!62727 () Bool)

(declare-fun e!33769 () Bool)

(declare-fun tp!16538 () Bool)

(assert (=> b!62727 (= e!33769 (and (inv!1153 (h!779 (t!47370 (msgs!13 (_2!187 res!29098))))) tp!16538))))

(assert (=> b!62698 (= tp!16521 e!33769)))

(assert (= (and b!62698 (is-Cons!535 (t!47370 (msgs!13 (_2!187 res!29098))))) b!62727))

(declare-fun m!68552 () Bool)

(assert (=> b!62727 m!68552))

(declare-fun b!62728 () Bool)

(declare-fun e!33771 () Bool)

(declare-fun tp!16539 () Bool)

(assert (=> b!62728 (= e!33771 (and (inv!1153 (h!779 (t!47370 (msgs!13 (_2!186 t!47360))))) tp!16539))))

(assert (=> b!62709 (= tp!16532 e!33771)))

(assert (= (and b!62709 (is-Cons!535 (t!47370 (msgs!13 (_2!186 t!47360))))) b!62728))

(declare-fun m!68554 () Bool)

(assert (=> b!62728 m!68554))

(declare-fun b!62729 () Bool)

(declare-fun e!33773 () Bool)

(declare-fun tp!16540 () Bool)

(assert (=> b!62729 (= e!33773 (and (inv!1153 (h!779 (t!47370 (msgs!13 (_2!186 t!47361))))) tp!16540))))

(assert (=> b!62707 (= tp!16530 e!33773)))

(assert (= (and b!62707 (is-Cons!535 (t!47370 (msgs!13 (_2!186 t!47361))))) b!62729))

(declare-fun m!68556 () Bool)

(assert (=> b!62729 m!68556))

(declare-fun b!62730 () Bool)

(declare-fun e!33775 () Bool)

(declare-fun tp!16541 () Bool)

(assert (=> b!62730 (= e!33775 (and (inv!1153 (h!779 (t!47370 (msgs!13 (_2!186 t!47359))))) tp!16541))))

(assert (=> b!62703 (= tp!16526 e!33775)))

(assert (= (and b!62703 (is-Cons!535 (t!47370 (msgs!13 (_2!186 t!47359))))) b!62730))

(declare-fun m!68558 () Bool)

(assert (=> b!62730 m!68558))

(declare-fun b!62731 () Bool)

(declare-fun e!33777 () Bool)

(declare-fun tp!16542 () Bool)

(assert (=> b!62731 (= e!33777 (and (inv!1153 (h!779 (t!47370 (msgs!13 queue!170)))) tp!16542))))

(assert (=> b!62710 (= tp!16533 e!33777)))

(assert (= (and b!62710 (is-Cons!535 (t!47370 (msgs!13 queue!170)))) b!62731))

(declare-fun m!68560 () Bool)

(assert (=> b!62731 m!68560))

(declare-fun b!62732 () Bool)

(declare-fun e!33779 () Bool)

(declare-fun tp!16543 () Bool)

(assert (=> b!62732 (= e!33779 (and (inv!1153 (h!779 (t!47370 (msgs!13 (_2!186 res!29095))))) tp!16543))))

(assert (=> b!62700 (= tp!16523 e!33779)))

(assert (= (and b!62700 (is-Cons!535 (t!47370 (msgs!13 (_2!186 res!29095))))) b!62732))

(declare-fun m!68562 () Bool)

(assert (=> b!62732 m!68562))

(declare-fun b!62733 () Bool)

(declare-fun e!33781 () Bool)

(declare-fun tp!16544 () Bool)

(assert (=> b!62733 (= e!33781 (and (inv!1153 (h!779 (t!47370 (msgs!13 (_2!186 t!47362))))) tp!16544))))

(assert (=> b!62708 (= tp!16531 e!33781)))

(assert (= (and b!62708 (is-Cons!535 (t!47370 (msgs!13 (_2!186 t!47362))))) b!62733))

(declare-fun m!68564 () Bool)

(assert (=> b!62733 m!68564))

(declare-fun b!62734 () Bool)

(declare-fun e!33783 () Bool)

(declare-fun tp!16545 () Bool)

(assert (=> b!62734 (= e!33783 (and (inv!1153 (h!779 (t!47370 (msgs!13 queue!176)))) tp!16545))))

(assert (=> b!62704 (= tp!16527 e!33783)))

(assert (= (and b!62704 (is-Cons!535 (t!47370 (msgs!13 queue!176)))) b!62734))

(declare-fun m!68566 () Bool)

(assert (=> b!62734 m!68566))

(declare-fun b!62735 () Bool)

(declare-fun e!33785 () Bool)

(declare-fun tp!16546 () Bool)

(assert (=> b!62735 (= e!33785 (and (inv!1153 (h!779 (t!47370 (msgs!13 (_2!186 res!29093))))) tp!16546))))

(assert (=> b!62705 (= tp!16528 e!33785)))

(assert (= (and b!62705 (is-Cons!535 (t!47370 (msgs!13 (_2!186 res!29093))))) b!62735))

(declare-fun m!68568 () Bool)

(assert (=> b!62735 m!68568))

(declare-fun b!62736 () Bool)

(declare-fun e!33787 () Bool)

(declare-fun tp!16547 () Bool)

(assert (=> b!62736 (= e!33787 (and (inv!1153 (h!779 (t!47370 (msgs!13 (_2!187 res!29101))))) tp!16547))))

(assert (=> b!62711 (= tp!16534 e!33787)))

(assert (= (and b!62711 (is-Cons!535 (t!47370 (msgs!13 (_2!187 res!29101))))) b!62736))

(declare-fun m!68570 () Bool)

(assert (=> b!62736 m!68570))

(declare-fun b!62737 () Bool)

(declare-fun e!33789 () Bool)

(declare-fun tp!16548 () Bool)

(assert (=> b!62737 (= e!33789 (and (inv!1153 (h!779 (t!47370 (msgs!13 queue!179)))) tp!16548))))

(assert (=> b!62702 (= tp!16525 e!33789)))

(assert (= (and b!62702 (is-Cons!535 (t!47370 (msgs!13 queue!179)))) b!62737))

(declare-fun m!68572 () Bool)

(assert (=> b!62737 m!68572))

(declare-fun b_lambda!15703 () Bool)

(assert (= b_lambda!15701 (or d!52960 b_lambda!15703)))

(declare-fun bs!37494 () Bool)

(declare-fun d!53022 () Bool)

(assert (= bs!37494 (and d!53022 d!52960)))

(assert (=> bs!37494 (= (dynLambda!949 lambda!9147) Nil!536)))

(assert (=> b!62723 d!53022))

(declare-fun b_lambda!15705 () Bool)

(assert (= b_lambda!15699 (or d!52948 b_lambda!15705)))

(declare-fun bs!37495 () Bool)

(declare-fun d!53024 () Bool)

(assert (= bs!37495 (and d!53024 d!52948)))

(assert (=> bs!37495 (= (dynLambda!949 lambda!9146) Nil!536)))

(assert (=> b!62720 d!53024))

(push 1)

(assert (not b!62737))

(assert (not b!62734))

(assert (not d!52986))

(assert (not b!62732))

(assert (not b!62721))

(assert (not b!62730))

(assert (not b!62729))

(assert (not b!62728))

(assert (not b!62736))

(assert (not d!52984))

(assert (not d!52974))

(assert (not b_lambda!15703))

(assert (not b!62726))

(assert (not b!62733))

(assert (not b_lambda!15705))

(assert (not b!62727))

(assert (not d!52982))

(assert (not d!52978))

(assert (not b!62714))

(assert (not b!62731))

(assert (not b!62735))

(assert (not d!52976))

(assert (not b!62724))

(assert (not b!62725))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

