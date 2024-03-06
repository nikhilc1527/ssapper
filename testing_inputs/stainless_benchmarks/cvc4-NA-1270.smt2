; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9058 () Bool)

(assert start!9058)

(declare-fun b!62796 () Bool)

(declare-fun e!33855 () Bool)

(declare-fun tp!16578 () Bool)

(assert (=> b!62796 (= e!33855 tp!16578)))

(declare-fun b!62797 () Bool)

(declare-fun e!33857 () Bool)

(declare-fun tp!16590 () Bool)

(assert (=> b!62797 (= e!33857 tp!16590)))

(declare-fun b!62798 () Bool)

(declare-fun res!29245 () Bool)

(declare-fun e!33856 () Bool)

(assert (=> b!62798 (=> (not res!29245) (not e!33856))))

(declare-datatypes () ((String!959 (String!960 (value!5173 String)))))

(declare-datatypes () ((List!575 (Cons!536 (h!780 String!959) (t!47372 List!575)) (Nil!537))))

(declare-datatypes () ((Object!336 (Open!336 (value!5174 Int)))))

(declare-datatypes () ((MsgQueue!11 (MsgQueue!12 (queue!187 Object!336) (msgs!14 List!575)))))

(declare-fun queue!167 () MsgQueue!11)

(declare-fun queue!166 () MsgQueue!11)

(assert (=> b!62798 (= res!29245 (= queue!167 queue!166))))

(declare-fun b!62799 () Bool)

(declare-fun e!33846 () Bool)

(declare-fun tp!16580 () Bool)

(assert (=> b!62799 (= e!33846 tp!16580)))

(declare-fun b!62800 () Bool)

(declare-fun res!29244 () Bool)

(assert (=> b!62800 (=> (not res!29244) (not e!33856))))

(declare-datatypes () ((Option!408 (Some!387 (v!2317 String!959)) (None!388))))

(declare-datatypes () ((tuple2!322 (tuple2!323 (_1!188 Option!408) (_2!188 MsgQueue!11)))))

(declare-fun res!29101 () tuple2!322)

(declare-fun queue!176 () MsgQueue!11)

(declare-fun take!15 (MsgQueue!11) tuple2!322)

(assert (=> b!62800 (= res!29244 (= res!29101 (take!15 queue!176)))))

(declare-fun b!62801 () Bool)

(declare-fun e!33845 () Bool)

(declare-fun tp!16577 () Bool)

(assert (=> b!62801 (= e!33845 tp!16577)))

(declare-fun b!62802 () Bool)

(declare-fun e!33850 () Bool)

(declare-fun tp!16589 () Bool)

(assert (=> b!62802 (= e!33850 tp!16589)))

(declare-fun b!62803 () Bool)

(declare-fun res!29243 () Bool)

(assert (=> b!62803 (=> (not res!29243) (not e!33856))))

(declare-fun b!62449 () Option!408)

(declare-datatypes () ((Unit!1041 (Unit!1042))))

(declare-fun res!29103 () Unit!1041)

(declare-fun queue!179 () MsgQueue!11)

(declare-fun tmp!497 () Unit!1041)

(declare-datatypes () ((tuple2!324 (tuple2!325 (_1!189 Unit!1041) (_2!189 MsgQueue!11)))))

(declare-fun t!47362 () tuple2!324)

(declare-fun Unit!1043 () Unit!1041)

(assert (=> b!62803 (= res!29243 (and (= t!47362 (tuple2!325 Unit!1043 (MsgQueue!12 (queue!187 queue!176) (msgs!14 (_2!188 res!29101))))) (= res!29103 (_1!189 t!47362)) (= queue!179 (_2!189 t!47362)) (= tmp!497 res!29103) (= b!62449 (_1!188 res!29101)) (= b!62449 (Some!387 (String!960 "WWoorrlldd")))))))

(declare-fun b!62804 () Bool)

(declare-fun res!29238 () Bool)

(assert (=> b!62804 (=> (not res!29238) (not e!33856))))

(declare-fun queue!173 () MsgQueue!11)

(declare-fun isEmpty!550 (MsgQueue!11) Bool)

(assert (=> b!62804 (= res!29238 (not (isEmpty!550 queue!173)))))

(declare-fun b!62805 () Bool)

(declare-fun e!33843 () Bool)

(declare-fun tp!16585 () Bool)

(assert (=> b!62805 (= e!33843 tp!16585)))

(declare-fun b!62806 () Bool)

(declare-fun e!33853 () Bool)

(declare-fun tp!16586 () Bool)

(assert (=> b!62806 (= e!33853 tp!16586)))

(declare-fun b!62807 () Bool)

(declare-fun res!29241 () Bool)

(assert (=> b!62807 (=> (not res!29241) (not e!33856))))

(declare-fun res!29093 () tuple2!324)

(declare-fun put!5 (MsgQueue!11 String!959) tuple2!324)

(assert (=> b!62807 (= res!29241 (= res!29093 (put!5 queue!167 (String!960 "WWoorrlldd"))))))

(declare-fun b!62808 () Bool)

(declare-fun e!33842 () Bool)

(declare-fun tp!16579 () Bool)

(assert (=> b!62808 (= e!33842 tp!16579)))

(declare-fun b!62809 () Bool)

(declare-fun e!33849 () Bool)

(declare-fun inv!1153 (String!959) Bool)

(assert (=> b!62809 (= e!33849 (inv!1153 (v!2317 (_1!188 res!29101))))))

(declare-fun res!29236 () Bool)

(assert (=> start!9058 (=> (not res!29236) (not e!33856))))

(assert (=> start!9058 (= res!29236 (isEmpty!550 queue!166))))

(assert (=> start!9058 e!33856))

(declare-fun e!33841 () Bool)

(assert (=> start!9058 e!33841))

(declare-fun e!33860 () Bool)

(assert (=> start!9058 e!33860))

(assert (=> start!9058 e!33855))

(assert (=> start!9058 e!33857))

(assert (=> start!9058 (and e!33849 e!33853)))

(declare-fun e!33847 () Bool)

(assert (=> start!9058 e!33847))

(assert (=> start!9058 true))

(declare-fun e!33854 () Bool)

(assert (=> start!9058 e!33854))

(assert (=> start!9058 e!33846))

(declare-fun e!33859 () Bool)

(assert (=> start!9058 e!33859))

(declare-fun e!33839 () Bool)

(assert (=> start!9058 e!33839))

(assert (=> start!9058 e!33843))

(assert (=> start!9058 e!33845))

(assert (=> start!9058 e!33842))

(declare-fun e!33851 () Bool)

(declare-fun e!33844 () Bool)

(assert (=> start!9058 (and e!33851 e!33844)))

(assert (=> start!9058 e!33850))

(declare-fun e!33848 () Bool)

(assert (=> start!9058 e!33848))

(declare-fun b!62810 () Bool)

(declare-fun a!686 () Option!408)

(assert (=> b!62810 (= e!33848 (inv!1153 (v!2317 a!686)))))

(declare-fun b!62811 () Bool)

(assert (=> b!62811 (= e!33856 (not (isEmpty!550 queue!179)))))

(declare-fun b!62812 () Bool)

(declare-fun tp!16582 () Bool)

(assert (=> b!62812 (= e!33847 tp!16582)))

(declare-fun b!62813 () Bool)

(declare-fun res!29098 () tuple2!322)

(assert (=> b!62813 (= e!33851 (inv!1153 (v!2317 (_1!188 res!29098))))))

(declare-fun b!62814 () Bool)

(declare-fun tp!16581 () Bool)

(assert (=> b!62814 (= e!33841 tp!16581)))

(declare-fun b!62815 () Bool)

(assert (=> b!62815 (= e!33860 (inv!1153 (v!2317 b!62449)))))

(declare-fun b!62816 () Bool)

(declare-fun tp!16587 () Bool)

(assert (=> b!62816 (= e!33859 tp!16587)))

(declare-fun b!62817 () Bool)

(declare-fun res!29235 () Bool)

(assert (=> b!62817 (=> (not res!29235) (not e!33856))))

(declare-fun res!29095 () tuple2!324)

(declare-fun queue!170 () MsgQueue!11)

(assert (=> b!62817 (= res!29235 (= res!29095 (put!5 queue!170 (String!960 "HHeelllloo"))))))

(declare-fun b!62818 () Bool)

(declare-fun res!29240 () Bool)

(assert (=> b!62818 (=> (not res!29240) (not e!33856))))

(declare-fun tmp!491 () Unit!1041)

(declare-fun t!47360 () tuple2!324)

(declare-fun tmp!490 () Unit!1041)

(declare-fun res!29096 () Unit!1041)

(declare-fun Unit!1044 () Unit!1041)

(assert (=> b!62818 (= res!29240 (and (= t!47360 (tuple2!325 Unit!1044 (MsgQueue!12 (queue!187 queue!170) (msgs!14 (_2!189 res!29095))))) (= res!29096 (_1!189 t!47360)) (= queue!173 (_2!189 t!47360)) (= tmp!490 res!29096) (= tmp!491 (_1!189 res!29095))))))

(declare-fun b!62819 () Bool)

(declare-fun tp!16584 () Bool)

(assert (=> b!62819 (= e!33854 tp!16584)))

(declare-fun b!62820 () Bool)

(declare-fun res!29237 () Bool)

(assert (=> b!62820 (=> (not res!29237) (not e!33856))))

(declare-fun tmp!494 () Unit!1041)

(declare-fun t!47361 () tuple2!324)

(declare-fun res!29100 () Unit!1041)

(declare-fun Unit!1045 () Unit!1041)

(assert (=> b!62820 (= res!29237 (and (= t!47361 (tuple2!325 Unit!1045 (MsgQueue!12 (queue!187 queue!173) (msgs!14 (_2!188 res!29098))))) (= res!29100 (_1!189 t!47361)) (= queue!176 (_2!189 t!47361)) (= tmp!494 res!29100) (= a!686 (_1!188 res!29098)) (= a!686 (Some!387 (String!960 "HHeelllloo")))))))

(declare-fun b!62821 () Bool)

(declare-fun res!29242 () Bool)

(assert (=> b!62821 (=> (not res!29242) (not e!33856))))

(assert (=> b!62821 (= res!29242 (= res!29098 (take!15 queue!173)))))

(declare-fun b!62822 () Bool)

(declare-fun tp!16588 () Bool)

(assert (=> b!62822 (= e!33839 tp!16588)))

(declare-fun b!62823 () Bool)

(declare-fun tp!16583 () Bool)

(assert (=> b!62823 (= e!33844 tp!16583)))

(declare-fun b!62824 () Bool)

(declare-fun res!29239 () Bool)

(assert (=> b!62824 (=> (not res!29239) (not e!33856))))

(declare-fun t!47359 () tuple2!324)

(declare-fun res!29094 () Unit!1041)

(declare-fun tmp!486 () Unit!1041)

(declare-fun tmp!487 () Unit!1041)

(declare-fun Unit!1046 () Unit!1041)

(assert (=> b!62824 (= res!29239 (and (= t!47359 (tuple2!325 Unit!1046 (MsgQueue!12 (queue!187 queue!167) (msgs!14 (_2!189 res!29093))))) (= res!29094 (_1!189 t!47359)) (= queue!170 (_2!189 t!47359)) (= tmp!486 res!29094) (= tmp!487 (_1!189 res!29093))))))

(assert (= (and start!9058 res!29236) b!62798))

(assert (= (and b!62798 res!29245) b!62807))

(assert (= (and b!62807 res!29241) b!62824))

(assert (= (and b!62824 res!29239) b!62817))

(assert (= (and b!62817 res!29235) b!62818))

(assert (= (and b!62818 res!29240) b!62804))

(assert (= (and b!62804 res!29238) b!62821))

(assert (= (and b!62821 res!29242) b!62820))

(assert (= (and b!62820 res!29237) b!62800))

(assert (= (and b!62800 res!29244) b!62803))

(assert (= (and b!62803 res!29243) b!62811))

(assert (= start!9058 b!62814))

(assert (= (and start!9058 (is-Some!387 b!62449)) b!62815))

(assert (= start!9058 b!62796))

(assert (= start!9058 b!62797))

(assert (= (and start!9058 (is-Some!387 (_1!188 res!29101))) b!62809))

(assert (= start!9058 b!62806))

(assert (= start!9058 b!62812))

(assert (= start!9058 b!62819))

(assert (= start!9058 b!62799))

(assert (= start!9058 b!62816))

(assert (= start!9058 b!62822))

(assert (= start!9058 b!62805))

(assert (= start!9058 b!62801))

(assert (= start!9058 b!62808))

(assert (= (and start!9058 (is-Some!387 (_1!188 res!29098))) b!62813))

(assert (= start!9058 b!62823))

(assert (= start!9058 b!62802))

(assert (= (and start!9058 (is-Some!387 a!686)) b!62810))

(declare-fun m!68574 () Bool)

(assert (=> b!62810 m!68574))

(declare-fun m!68576 () Bool)

(assert (=> b!62811 m!68576))

(declare-fun m!68578 () Bool)

(assert (=> b!62804 m!68578))

(declare-fun m!68580 () Bool)

(assert (=> b!62815 m!68580))

(declare-fun m!68582 () Bool)

(assert (=> b!62809 m!68582))

(declare-fun m!68584 () Bool)

(assert (=> start!9058 m!68584))

(declare-fun m!68586 () Bool)

(assert (=> b!62821 m!68586))

(declare-fun m!68588 () Bool)

(assert (=> b!62817 m!68588))

(declare-fun m!68590 () Bool)

(assert (=> b!62800 m!68590))

(declare-fun m!68592 () Bool)

(assert (=> b!62807 m!68592))

(declare-fun m!68594 () Bool)

(assert (=> b!62813 m!68594))

(push 1)

(assert (not start!9058))

(assert (not b!62796))

(assert (not b!62800))

(assert (not b!62813))

(assert (not b!62815))

(assert (not b!62817))

(assert (not b!62819))

(assert (not b!62804))

(assert (not b!62822))

(assert (not b!62814))

(assert (not b!62810))

(assert (not b!62805))

(assert (not b!62823))

(assert (not b!62806))

(assert (not b!62811))

(assert (not b!62816))

(assert (not b!62797))

(assert (not b!62802))

(assert (not b!62821))

(assert (not b!62807))

(assert (not b!62808))

(assert (not b!62812))

(assert (not b!62801))

(assert (not b!62799))

(assert (not b!62809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53026 () Bool)

(assert (=> d!53026 (= (inv!1153 (v!2317 (_1!188 res!29101))) (= (mod (str.len (value!5173 (v!2317 (_1!188 res!29101)))) 2) 0))))

(assert (=> b!62809 d!53026))

(declare-fun d!53028 () Bool)

(declare-fun lt!11571 () MsgQueue!11)

(declare-fun $colon$colon!13 (List!575 String!959) List!575)

(assert (=> d!53028 (= lt!11571 (MsgQueue!12 (queue!187 queue!167) ($colon$colon!13 (msgs!14 queue!167) (String!960 "WWoorrlldd"))))))

(declare-fun _put!4 (MsgQueue!11 String!959) Unit!1041)

(assert (=> d!53028 (= (put!5 queue!167 (String!960 "WWoorrlldd")) (tuple2!325 (_put!4 lt!11571 (String!960 "WWoorrlldd")) lt!11571))))

(declare-fun bs!37497 () Bool)

(assert (= bs!37497 d!53028))

(declare-fun m!68596 () Bool)

(assert (=> bs!37497 m!68596))

(declare-fun m!68598 () Bool)

(assert (=> bs!37497 m!68598))

(assert (=> b!62807 d!53028))

(declare-fun d!53030 () Bool)

(declare-fun res!29248 () Bool)

(declare-fun isEmpty!551 (List!575) Bool)

(assert (=> d!53030 (= res!29248 (isEmpty!551 (msgs!14 queue!179)))))

(assert (=> d!53030 true))

(assert (=> d!53030 (= (isEmpty!550 queue!179) res!29248)))

(declare-fun bs!37498 () Bool)

(assert (= bs!37498 d!53030))

(declare-fun m!68600 () Bool)

(assert (=> bs!37498 m!68600))

(assert (=> b!62811 d!53030))

(declare-fun d!53032 () Bool)

(declare-fun res!29249 () Bool)

(assert (=> d!53032 (= res!29249 (isEmpty!551 (msgs!14 queue!173)))))

(assert (=> d!53032 true))

(assert (=> d!53032 (= (isEmpty!550 queue!173) res!29249)))

(declare-fun bs!37499 () Bool)

(assert (= bs!37499 d!53032))

(declare-fun m!68602 () Bool)

(assert (=> bs!37499 m!68602))

(assert (=> b!62804 d!53032))

(declare-fun d!53034 () Bool)

(assert (=> d!53034 (= (inv!1153 (v!2317 b!62449)) (= (mod (str.len (value!5173 (v!2317 b!62449))) 2) 0))))

(assert (=> b!62815 d!53034))

(declare-fun d!53036 () Bool)

(declare-fun lt!11572 () MsgQueue!11)

(assert (=> d!53036 (= lt!11572 (MsgQueue!12 (queue!187 queue!170) ($colon$colon!13 (msgs!14 queue!170) (String!960 "HHeelllloo"))))))

(assert (=> d!53036 (= (put!5 queue!170 (String!960 "HHeelllloo")) (tuple2!325 (_put!4 lt!11572 (String!960 "HHeelllloo")) lt!11572))))

(declare-fun bs!37500 () Bool)

(assert (= bs!37500 d!53036))

(declare-fun m!68604 () Bool)

(assert (=> bs!37500 m!68604))

(declare-fun m!68606 () Bool)

(assert (=> bs!37500 m!68606))

(assert (=> b!62817 d!53036))

(declare-fun d!53038 () Bool)

(assert (=> d!53038 (= (inv!1153 (v!2317 a!686)) (= (mod (str.len (value!5173 (v!2317 a!686))) 2) 0))))

(assert (=> b!62810 d!53038))

(declare-fun d!53040 () Bool)

(declare-fun res!29250 () Bool)

(assert (=> d!53040 (= res!29250 (isEmpty!551 (msgs!14 queue!166)))))

(assert (=> d!53040 true))

(assert (=> d!53040 (= (isEmpty!550 queue!166) res!29250)))

(declare-fun bs!37501 () Bool)

(assert (= bs!37501 d!53040))

(declare-fun m!68608 () Bool)

(assert (=> bs!37501 m!68608))

(assert (=> start!9058 d!53040))

(declare-fun d!53042 () Bool)

(declare-fun lt!11577 () Option!408)

(declare-fun headOption!6 (List!575) Option!408)

(assert (=> d!53042 (= lt!11577 (headOption!6 (msgs!14 queue!173)))))

(declare-datatypes () ((Option!409 (Some!388 (v!2318 List!575)) (None!389))))

(declare-fun lt!11578 () Option!409)

(declare-fun tailOption!5 (List!575) Option!409)

(assert (=> d!53042 (= lt!11578 (tailOption!5 (msgs!14 queue!173)))))

(declare-fun _take!3 (MsgQueue!11) Option!408)

(assert (=> d!53042 (= lt!11577 (_take!3 queue!173))))

(declare-fun lambda!9150 () Int)

(declare-fun getOrElse!7 (Option!409 Int) List!575)

(assert (=> d!53042 (= (take!15 queue!173) (tuple2!323 lt!11577 (MsgQueue!12 (queue!187 queue!173) (getOrElse!7 lt!11578 lambda!9150))))))

(declare-fun bs!37502 () Bool)

(assert (= bs!37502 d!53042))

(declare-fun m!68610 () Bool)

(assert (=> bs!37502 m!68610))

(declare-fun m!68612 () Bool)

(assert (=> bs!37502 m!68612))

(declare-fun m!68614 () Bool)

(assert (=> bs!37502 m!68614))

(declare-fun m!68616 () Bool)

(assert (=> bs!37502 m!68616))

(assert (=> b!62821 d!53042))

(declare-fun d!53044 () Bool)

(assert (=> d!53044 (= (inv!1153 (v!2317 (_1!188 res!29098))) (= (mod (str.len (value!5173 (v!2317 (_1!188 res!29098)))) 2) 0))))

(assert (=> b!62813 d!53044))

(declare-fun bs!37503 () Bool)

(declare-fun d!53046 () Bool)

(assert (= bs!37503 (and d!53046 d!53042)))

(declare-fun lambda!9151 () Int)

(assert (=> bs!37503 (= lambda!9151 lambda!9150)))

(declare-fun lt!11579 () Option!408)

(assert (=> d!53046 (= lt!11579 (headOption!6 (msgs!14 queue!176)))))

(declare-fun lt!11580 () Option!409)

(assert (=> d!53046 (= lt!11580 (tailOption!5 (msgs!14 queue!176)))))

(assert (=> d!53046 (= lt!11579 (_take!3 queue!176))))

(assert (=> d!53046 (= (take!15 queue!176) (tuple2!323 lt!11579 (MsgQueue!12 (queue!187 queue!176) (getOrElse!7 lt!11580 lambda!9151))))))

(declare-fun bs!37504 () Bool)

(assert (= bs!37504 d!53046))

(declare-fun m!68618 () Bool)

(assert (=> bs!37504 m!68618))

(declare-fun m!68620 () Bool)

(assert (=> bs!37504 m!68620))

(declare-fun m!68622 () Bool)

(assert (=> bs!37504 m!68622))

(declare-fun m!68624 () Bool)

(assert (=> bs!37504 m!68624))

(assert (=> b!62800 d!53046))

(declare-fun b!62829 () Bool)

(declare-fun e!33865 () Bool)

(declare-fun tp!16593 () Bool)

(assert (=> b!62829 (= e!33865 (and (inv!1153 (h!780 (msgs!14 queue!179))) tp!16593))))

(assert (=> b!62799 (= tp!16580 e!33865)))

(assert (= (and b!62799 (is-Cons!536 (msgs!14 queue!179))) b!62829))

(declare-fun m!68626 () Bool)

(assert (=> b!62829 m!68626))

(declare-fun b!62830 () Bool)

(declare-fun e!33867 () Bool)

(declare-fun tp!16594 () Bool)

(assert (=> b!62830 (= e!33867 (and (inv!1153 (h!780 (msgs!14 (_2!188 res!29101)))) tp!16594))))

(assert (=> b!62806 (= tp!16586 e!33867)))

(assert (= (and b!62806 (is-Cons!536 (msgs!14 (_2!188 res!29101)))) b!62830))

(declare-fun m!68628 () Bool)

(assert (=> b!62830 m!68628))

(declare-fun b!62831 () Bool)

(declare-fun e!33869 () Bool)

(declare-fun tp!16595 () Bool)

(assert (=> b!62831 (= e!33869 (and (inv!1153 (h!780 (msgs!14 (_2!189 res!29093)))) tp!16595))))

(assert (=> b!62819 (= tp!16584 e!33869)))

(assert (= (and b!62819 (is-Cons!536 (msgs!14 (_2!189 res!29093)))) b!62831))

(declare-fun m!68630 () Bool)

(assert (=> b!62831 m!68630))

(declare-fun b!62832 () Bool)

(declare-fun e!33871 () Bool)

(declare-fun tp!16596 () Bool)

(assert (=> b!62832 (= e!33871 (and (inv!1153 (h!780 (msgs!14 queue!166))) tp!16596))))

(assert (=> b!62796 (= tp!16578 e!33871)))

(assert (= (and b!62796 (is-Cons!536 (msgs!14 queue!166))) b!62832))

(declare-fun m!68632 () Bool)

(assert (=> b!62832 m!68632))

(declare-fun b!62833 () Bool)

(declare-fun e!33873 () Bool)

(declare-fun tp!16597 () Bool)

(assert (=> b!62833 (= e!33873 (and (inv!1153 (h!780 (msgs!14 (_2!189 t!47362)))) tp!16597))))

(assert (=> b!62808 (= tp!16579 e!33873)))

(assert (= (and b!62808 (is-Cons!536 (msgs!14 (_2!189 t!47362)))) b!62833))

(declare-fun m!68634 () Bool)

(assert (=> b!62833 m!68634))

(declare-fun b!62834 () Bool)

(declare-fun e!33875 () Bool)

(declare-fun tp!16598 () Bool)

(assert (=> b!62834 (= e!33875 (and (inv!1153 (h!780 (msgs!14 queue!173))) tp!16598))))

(assert (=> b!62822 (= tp!16588 e!33875)))

(assert (= (and b!62822 (is-Cons!536 (msgs!14 queue!173))) b!62834))

(declare-fun m!68636 () Bool)

(assert (=> b!62834 m!68636))

(declare-fun b!62835 () Bool)

(declare-fun e!33877 () Bool)

(declare-fun tp!16599 () Bool)

(assert (=> b!62835 (= e!33877 (and (inv!1153 (h!780 (msgs!14 queue!176))) tp!16599))))

(assert (=> b!62802 (= tp!16589 e!33877)))

(assert (= (and b!62802 (is-Cons!536 (msgs!14 queue!176))) b!62835))

(declare-fun m!68638 () Bool)

(assert (=> b!62835 m!68638))

(declare-fun b!62836 () Bool)

(declare-fun e!33879 () Bool)

(declare-fun tp!16600 () Bool)

(assert (=> b!62836 (= e!33879 (and (inv!1153 (h!780 (msgs!14 queue!170))) tp!16600))))

(assert (=> b!62812 (= tp!16582 e!33879)))

(assert (= (and b!62812 (is-Cons!536 (msgs!14 queue!170))) b!62836))

(declare-fun m!68640 () Bool)

(assert (=> b!62836 m!68640))

(declare-fun b!62837 () Bool)

(declare-fun e!33881 () Bool)

(declare-fun tp!16601 () Bool)

(assert (=> b!62837 (= e!33881 (and (inv!1153 (h!780 (msgs!14 (_2!189 t!47360)))) tp!16601))))

(assert (=> b!62805 (= tp!16585 e!33881)))

(assert (= (and b!62805 (is-Cons!536 (msgs!14 (_2!189 t!47360)))) b!62837))

(declare-fun m!68642 () Bool)

(assert (=> b!62837 m!68642))

(declare-fun b!62838 () Bool)

(declare-fun e!33883 () Bool)

(declare-fun tp!16602 () Bool)

(assert (=> b!62838 (= e!33883 (and (inv!1153 (h!780 (msgs!14 (_2!189 t!47359)))) tp!16602))))

(assert (=> b!62814 (= tp!16581 e!33883)))

(assert (= (and b!62814 (is-Cons!536 (msgs!14 (_2!189 t!47359)))) b!62838))

(declare-fun m!68644 () Bool)

(assert (=> b!62838 m!68644))

(declare-fun b!62839 () Bool)

(declare-fun e!33885 () Bool)

(declare-fun tp!16603 () Bool)

(assert (=> b!62839 (= e!33885 (and (inv!1153 (h!780 (msgs!14 (_2!189 t!47361)))) tp!16603))))

(assert (=> b!62801 (= tp!16577 e!33885)))

(assert (= (and b!62801 (is-Cons!536 (msgs!14 (_2!189 t!47361)))) b!62839))

(declare-fun m!68646 () Bool)

(assert (=> b!62839 m!68646))

(declare-fun b!62840 () Bool)

(declare-fun e!33887 () Bool)

(declare-fun tp!16604 () Bool)

(assert (=> b!62840 (= e!33887 (and (inv!1153 (h!780 (msgs!14 (_2!188 res!29098)))) tp!16604))))

(assert (=> b!62823 (= tp!16583 e!33887)))

(assert (= (and b!62823 (is-Cons!536 (msgs!14 (_2!188 res!29098)))) b!62840))

(declare-fun m!68648 () Bool)

(assert (=> b!62840 m!68648))

(declare-fun b!62841 () Bool)

(declare-fun e!33889 () Bool)

(declare-fun tp!16605 () Bool)

(assert (=> b!62841 (= e!33889 (and (inv!1153 (h!780 (msgs!14 queue!167))) tp!16605))))

(assert (=> b!62816 (= tp!16587 e!33889)))

(assert (= (and b!62816 (is-Cons!536 (msgs!14 queue!167))) b!62841))

(declare-fun m!68650 () Bool)

(assert (=> b!62841 m!68650))

(declare-fun b!62842 () Bool)

(declare-fun e!33891 () Bool)

(declare-fun tp!16606 () Bool)

(assert (=> b!62842 (= e!33891 (and (inv!1153 (h!780 (msgs!14 (_2!189 res!29095)))) tp!16606))))

(assert (=> b!62797 (= tp!16590 e!33891)))

(assert (= (and b!62797 (is-Cons!536 (msgs!14 (_2!189 res!29095)))) b!62842))

(declare-fun m!68652 () Bool)

(assert (=> b!62842 m!68652))

(push 1)

(assert (not b!62835))

(assert (not d!53042))

(assert (not b!62834))

(assert (not d!53028))

(assert (not d!53032))

(assert (not b!62829))

(assert (not b!62837))

(assert (not d!53030))

(assert (not b!62841))

(assert (not b!62831))

(assert (not d!53040))

(assert (not b!62840))

(assert (not b!62830))

(assert (not b!62839))

(assert (not d!53036))

(assert (not b!62838))

(assert (not d!53046))

(assert (not b!62842))

(assert (not b!62833))

(assert (not b!62832))

(assert (not b!62836))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53048 () Bool)

(assert (=> d!53048 (= ($colon$colon!13 (msgs!14 queue!167) (String!960 "WWoorrlldd")) (Cons!536 (String!960 "WWoorrlldd") (msgs!14 queue!167)))))

(assert (=> d!53028 d!53048))

(declare-fun d!53050 () Bool)

(assert (=> d!53050 true))

(assert (=> d!53050 true))

(declare-fun res!29254 () Unit!1041)

(assert (=> d!53050 (= (_put!4 lt!11571 (String!960 "WWoorrlldd")) res!29254)))

(assert (=> d!53028 d!53050))

(declare-fun d!53052 () Bool)

(assert (=> d!53052 (= (isEmpty!551 (msgs!14 queue!179)) (is-Nil!537 (msgs!14 queue!179)))))

(assert (=> d!53030 d!53052))

(declare-fun d!53054 () Bool)

(assert (=> d!53054 (= (inv!1153 (h!780 (msgs!14 (_2!189 t!47360)))) (= (mod (str.len (value!5173 (h!780 (msgs!14 (_2!189 t!47360))))) 2) 0))))

(assert (=> b!62837 d!53054))

(declare-fun d!53056 () Bool)

(declare-fun lt!11583 () Option!408)

(declare-fun isDefined!14 (Option!408) Bool)

(assert (=> d!53056 (not (= (isDefined!14 lt!11583) (isEmpty!551 (msgs!14 queue!173))))))

(assert (=> d!53056 (= lt!11583 (ite (is-Cons!536 (msgs!14 queue!173)) (Some!387 (h!780 (msgs!14 queue!173))) None!388))))

(assert (=> d!53056 (= (headOption!6 (msgs!14 queue!173)) lt!11583)))

(declare-fun bs!37505 () Bool)

(assert (= bs!37505 d!53056))

(declare-fun m!68654 () Bool)

(assert (=> bs!37505 m!68654))

(assert (=> bs!37505 m!68602))

(assert (=> d!53042 d!53056))

(declare-fun d!53058 () Bool)

(declare-fun lt!11586 () Option!409)

(declare-fun isDefined!15 (Option!409) Bool)

(assert (=> d!53058 (not (= (isDefined!15 lt!11586) (isEmpty!551 (msgs!14 queue!173))))))

(assert (=> d!53058 (= lt!11586 (ite (is-Cons!536 (msgs!14 queue!173)) (Some!388 (t!47372 (msgs!14 queue!173))) None!389))))

(assert (=> d!53058 (= (tailOption!5 (msgs!14 queue!173)) lt!11586)))

(declare-fun bs!37506 () Bool)

(assert (= bs!37506 d!53058))

(declare-fun m!68656 () Bool)

(assert (=> bs!37506 m!68656))

(assert (=> bs!37506 m!68602))

(assert (=> d!53042 d!53058))

(declare-fun d!53060 () Bool)

(declare-fun res!29257 () Option!408)

(assert (=> d!53060 (= res!29257 (headOption!6 (msgs!14 queue!173)))))

(declare-fun e!33897 () Bool)

(assert (=> d!53060 e!33897))

(assert (=> d!53060 (= (_take!3 queue!173) res!29257)))

(declare-fun b!62845 () Bool)

(assert (=> b!62845 (= e!33897 (inv!1153 (v!2317 res!29257)))))

(assert (= (and d!53060 (is-Some!387 res!29257)) b!62845))

(assert (=> d!53060 m!68610))

(declare-fun m!68658 () Bool)

(assert (=> b!62845 m!68658))

(assert (=> d!53042 d!53060))

(declare-fun d!53062 () Bool)

(declare-fun c!13682 () Bool)

(assert (=> d!53062 (= c!13682 (is-Some!388 lt!11578))))

(declare-fun e!33901 () List!575)

(assert (=> d!53062 (= (getOrElse!7 lt!11578 lambda!9150) e!33901)))

(declare-fun b!62850 () Bool)

(assert (=> b!62850 (= e!33901 (v!2318 lt!11578))))

(declare-fun b!62851 () Bool)

(declare-fun dynLambda!950 (Int) List!575)

(assert (=> b!62851 (= e!33901 (dynLambda!950 lambda!9150))))

(assert (= (and d!53062 c!13682) b!62850))

(assert (= (and d!53062 (not c!13682)) b!62851))

(declare-fun b_lambda!15707 () Bool)

(assert (=> (not b_lambda!15707) (not b!62851)))

(declare-fun m!68660 () Bool)

(assert (=> b!62851 m!68660))

(assert (=> d!53042 d!53062))

(declare-fun d!53064 () Bool)

(assert (=> d!53064 (= (isEmpty!551 (msgs!14 queue!166)) (is-Nil!537 (msgs!14 queue!166)))))

(assert (=> d!53040 d!53064))

(declare-fun d!53066 () Bool)

(assert (=> d!53066 (= (inv!1153 (h!780 (msgs!14 (_2!189 res!29093)))) (= (mod (str.len (value!5173 (h!780 (msgs!14 (_2!189 res!29093))))) 2) 0))))

(assert (=> b!62831 d!53066))

(declare-fun d!53068 () Bool)

(assert (=> d!53068 (= (inv!1153 (h!780 (msgs!14 queue!170))) (= (mod (str.len (value!5173 (h!780 (msgs!14 queue!170)))) 2) 0))))

(assert (=> b!62836 d!53068))

(declare-fun d!53070 () Bool)

(assert (=> d!53070 (= (inv!1153 (h!780 (msgs!14 queue!179))) (= (mod (str.len (value!5173 (h!780 (msgs!14 queue!179)))) 2) 0))))

(assert (=> b!62829 d!53070))

(declare-fun d!53072 () Bool)

(assert (=> d!53072 (= (inv!1153 (h!780 (msgs!14 (_2!188 res!29101)))) (= (mod (str.len (value!5173 (h!780 (msgs!14 (_2!188 res!29101))))) 2) 0))))

(assert (=> b!62830 d!53072))

(declare-fun d!53074 () Bool)

(declare-fun lt!11587 () Option!408)

(assert (=> d!53074 (not (= (isDefined!14 lt!11587) (isEmpty!551 (msgs!14 queue!176))))))

(assert (=> d!53074 (= lt!11587 (ite (is-Cons!536 (msgs!14 queue!176)) (Some!387 (h!780 (msgs!14 queue!176))) None!388))))

(assert (=> d!53074 (= (headOption!6 (msgs!14 queue!176)) lt!11587)))

(declare-fun bs!37507 () Bool)

(assert (= bs!37507 d!53074))

(declare-fun m!68662 () Bool)

(assert (=> bs!37507 m!68662))

(declare-fun m!68664 () Bool)

(assert (=> bs!37507 m!68664))

(assert (=> d!53046 d!53074))

(declare-fun d!53076 () Bool)

(declare-fun lt!11588 () Option!409)

(assert (=> d!53076 (not (= (isDefined!15 lt!11588) (isEmpty!551 (msgs!14 queue!176))))))

(assert (=> d!53076 (= lt!11588 (ite (is-Cons!536 (msgs!14 queue!176)) (Some!388 (t!47372 (msgs!14 queue!176))) None!389))))

(assert (=> d!53076 (= (tailOption!5 (msgs!14 queue!176)) lt!11588)))

(declare-fun bs!37508 () Bool)

(assert (= bs!37508 d!53076))

(declare-fun m!68666 () Bool)

(assert (=> bs!37508 m!68666))

(assert (=> bs!37508 m!68664))

(assert (=> d!53046 d!53076))

(declare-fun d!53078 () Bool)

(declare-fun res!29258 () Option!408)

(assert (=> d!53078 (= res!29258 (headOption!6 (msgs!14 queue!176)))))

(declare-fun e!33902 () Bool)

(assert (=> d!53078 e!33902))

(assert (=> d!53078 (= (_take!3 queue!176) res!29258)))

(declare-fun b!62852 () Bool)

(assert (=> b!62852 (= e!33902 (inv!1153 (v!2317 res!29258)))))

(assert (= (and d!53078 (is-Some!387 res!29258)) b!62852))

(assert (=> d!53078 m!68618))

(declare-fun m!68668 () Bool)

(assert (=> b!62852 m!68668))

(assert (=> d!53046 d!53078))

(declare-fun d!53080 () Bool)

(declare-fun c!13683 () Bool)

(assert (=> d!53080 (= c!13683 (is-Some!388 lt!11580))))

(declare-fun e!33904 () List!575)

(assert (=> d!53080 (= (getOrElse!7 lt!11580 lambda!9151) e!33904)))

(declare-fun b!62853 () Bool)

(assert (=> b!62853 (= e!33904 (v!2318 lt!11580))))

(declare-fun b!62854 () Bool)

(assert (=> b!62854 (= e!33904 (dynLambda!950 lambda!9151))))

(assert (= (and d!53080 c!13683) b!62853))

(assert (= (and d!53080 (not c!13683)) b!62854))

(declare-fun b_lambda!15709 () Bool)

(assert (=> (not b_lambda!15709) (not b!62854)))

(declare-fun m!68670 () Bool)

(assert (=> b!62854 m!68670))

(assert (=> d!53046 d!53080))

(declare-fun d!53082 () Bool)

(assert (=> d!53082 (= (inv!1153 (h!780 (msgs!14 (_2!188 res!29098)))) (= (mod (str.len (value!5173 (h!780 (msgs!14 (_2!188 res!29098))))) 2) 0))))

(assert (=> b!62840 d!53082))

(declare-fun d!53084 () Bool)

(assert (=> d!53084 (= (inv!1153 (h!780 (msgs!14 (_2!189 t!47361)))) (= (mod (str.len (value!5173 (h!780 (msgs!14 (_2!189 t!47361))))) 2) 0))))

(assert (=> b!62839 d!53084))

(declare-fun d!53086 () Bool)

(assert (=> d!53086 (= (inv!1153 (h!780 (msgs!14 (_2!189 t!47359)))) (= (mod (str.len (value!5173 (h!780 (msgs!14 (_2!189 t!47359))))) 2) 0))))

(assert (=> b!62838 d!53086))

(declare-fun d!53088 () Bool)

(assert (=> d!53088 (= ($colon$colon!13 (msgs!14 queue!170) (String!960 "HHeelllloo")) (Cons!536 (String!960 "HHeelllloo") (msgs!14 queue!170)))))

(assert (=> d!53036 d!53088))

(declare-fun d!53090 () Bool)

(assert (=> d!53090 true))

(assert (=> d!53090 true))

(declare-fun res!29259 () Unit!1041)

(assert (=> d!53090 (= (_put!4 lt!11572 (String!960 "HHeelllloo")) res!29259)))

(assert (=> d!53036 d!53090))

(declare-fun d!53092 () Bool)

(assert (=> d!53092 (= (inv!1153 (h!780 (msgs!14 queue!166))) (= (mod (str.len (value!5173 (h!780 (msgs!14 queue!166)))) 2) 0))))

(assert (=> b!62832 d!53092))

(declare-fun d!53094 () Bool)

(assert (=> d!53094 (= (inv!1153 (h!780 (msgs!14 queue!173))) (= (mod (str.len (value!5173 (h!780 (msgs!14 queue!173)))) 2) 0))))

(assert (=> b!62834 d!53094))

(declare-fun d!53096 () Bool)

(assert (=> d!53096 (= (inv!1153 (h!780 (msgs!14 (_2!189 res!29095)))) (= (mod (str.len (value!5173 (h!780 (msgs!14 (_2!189 res!29095))))) 2) 0))))

(assert (=> b!62842 d!53096))

(declare-fun d!53098 () Bool)

(assert (=> d!53098 (= (isEmpty!551 (msgs!14 queue!173)) (is-Nil!537 (msgs!14 queue!173)))))

(assert (=> d!53032 d!53098))

(declare-fun d!53100 () Bool)

(assert (=> d!53100 (= (inv!1153 (h!780 (msgs!14 queue!167))) (= (mod (str.len (value!5173 (h!780 (msgs!14 queue!167)))) 2) 0))))

(assert (=> b!62841 d!53100))

(declare-fun d!53102 () Bool)

(assert (=> d!53102 (= (inv!1153 (h!780 (msgs!14 (_2!189 t!47362)))) (= (mod (str.len (value!5173 (h!780 (msgs!14 (_2!189 t!47362))))) 2) 0))))

(assert (=> b!62833 d!53102))

(declare-fun d!53104 () Bool)

(assert (=> d!53104 (= (inv!1153 (h!780 (msgs!14 queue!176))) (= (mod (str.len (value!5173 (h!780 (msgs!14 queue!176)))) 2) 0))))

(assert (=> b!62835 d!53104))

(declare-fun b!62855 () Bool)

(declare-fun e!33905 () Bool)

(declare-fun tp!16607 () Bool)

(assert (=> b!62855 (= e!33905 (and (inv!1153 (h!780 (t!47372 (msgs!14 (_2!189 t!47360))))) tp!16607))))

(assert (=> b!62837 (= tp!16601 e!33905)))

(assert (= (and b!62837 (is-Cons!536 (t!47372 (msgs!14 (_2!189 t!47360))))) b!62855))

(declare-fun m!68672 () Bool)

(assert (=> b!62855 m!68672))

(declare-fun b!62856 () Bool)

(declare-fun e!33907 () Bool)

(declare-fun tp!16608 () Bool)

(assert (=> b!62856 (= e!33907 (and (inv!1153 (h!780 (t!47372 (msgs!14 (_2!189 res!29093))))) tp!16608))))

(assert (=> b!62831 (= tp!16595 e!33907)))

(assert (= (and b!62831 (is-Cons!536 (t!47372 (msgs!14 (_2!189 res!29093))))) b!62856))

(declare-fun m!68674 () Bool)

(assert (=> b!62856 m!68674))

(declare-fun b!62857 () Bool)

(declare-fun e!33909 () Bool)

(declare-fun tp!16609 () Bool)

(assert (=> b!62857 (= e!33909 (and (inv!1153 (h!780 (t!47372 (msgs!14 queue!170)))) tp!16609))))

(assert (=> b!62836 (= tp!16600 e!33909)))

(assert (= (and b!62836 (is-Cons!536 (t!47372 (msgs!14 queue!170)))) b!62857))

(declare-fun m!68676 () Bool)

(assert (=> b!62857 m!68676))

(declare-fun b!62858 () Bool)

(declare-fun e!33911 () Bool)

(declare-fun tp!16610 () Bool)

(assert (=> b!62858 (= e!33911 (and (inv!1153 (h!780 (t!47372 (msgs!14 queue!179)))) tp!16610))))

(assert (=> b!62829 (= tp!16593 e!33911)))

(assert (= (and b!62829 (is-Cons!536 (t!47372 (msgs!14 queue!179)))) b!62858))

(declare-fun m!68678 () Bool)

(assert (=> b!62858 m!68678))

(declare-fun b!62859 () Bool)

(declare-fun e!33913 () Bool)

(declare-fun tp!16611 () Bool)

(assert (=> b!62859 (= e!33913 (and (inv!1153 (h!780 (t!47372 (msgs!14 (_2!188 res!29101))))) tp!16611))))

(assert (=> b!62830 (= tp!16594 e!33913)))

(assert (= (and b!62830 (is-Cons!536 (t!47372 (msgs!14 (_2!188 res!29101))))) b!62859))

(declare-fun m!68680 () Bool)

(assert (=> b!62859 m!68680))

(declare-fun b!62860 () Bool)

(declare-fun e!33915 () Bool)

(declare-fun tp!16612 () Bool)

(assert (=> b!62860 (= e!33915 (and (inv!1153 (h!780 (t!47372 (msgs!14 (_2!188 res!29098))))) tp!16612))))

(assert (=> b!62840 (= tp!16604 e!33915)))

(assert (= (and b!62840 (is-Cons!536 (t!47372 (msgs!14 (_2!188 res!29098))))) b!62860))

(declare-fun m!68682 () Bool)

(assert (=> b!62860 m!68682))

(declare-fun b!62861 () Bool)

(declare-fun e!33917 () Bool)

(declare-fun tp!16613 () Bool)

(assert (=> b!62861 (= e!33917 (and (inv!1153 (h!780 (t!47372 (msgs!14 (_2!189 t!47361))))) tp!16613))))

(assert (=> b!62839 (= tp!16603 e!33917)))

(assert (= (and b!62839 (is-Cons!536 (t!47372 (msgs!14 (_2!189 t!47361))))) b!62861))

(declare-fun m!68684 () Bool)

(assert (=> b!62861 m!68684))

(declare-fun b!62862 () Bool)

(declare-fun e!33919 () Bool)

(declare-fun tp!16614 () Bool)

(assert (=> b!62862 (= e!33919 (and (inv!1153 (h!780 (t!47372 (msgs!14 (_2!189 t!47359))))) tp!16614))))

(assert (=> b!62838 (= tp!16602 e!33919)))

(assert (= (and b!62838 (is-Cons!536 (t!47372 (msgs!14 (_2!189 t!47359))))) b!62862))

(declare-fun m!68686 () Bool)

(assert (=> b!62862 m!68686))

(declare-fun b!62863 () Bool)

(declare-fun e!33921 () Bool)

(declare-fun tp!16615 () Bool)

(assert (=> b!62863 (= e!33921 (and (inv!1153 (h!780 (t!47372 (msgs!14 queue!166)))) tp!16615))))

(assert (=> b!62832 (= tp!16596 e!33921)))

(assert (= (and b!62832 (is-Cons!536 (t!47372 (msgs!14 queue!166)))) b!62863))

(declare-fun m!68688 () Bool)

(assert (=> b!62863 m!68688))

(declare-fun b!62864 () Bool)

(declare-fun e!33923 () Bool)

(declare-fun tp!16616 () Bool)

(assert (=> b!62864 (= e!33923 (and (inv!1153 (h!780 (t!47372 (msgs!14 queue!173)))) tp!16616))))

(assert (=> b!62834 (= tp!16598 e!33923)))

(assert (= (and b!62834 (is-Cons!536 (t!47372 (msgs!14 queue!173)))) b!62864))

(declare-fun m!68690 () Bool)

(assert (=> b!62864 m!68690))

(declare-fun b!62865 () Bool)

(declare-fun e!33925 () Bool)

(declare-fun tp!16617 () Bool)

(assert (=> b!62865 (= e!33925 (and (inv!1153 (h!780 (t!47372 (msgs!14 (_2!189 res!29095))))) tp!16617))))

(assert (=> b!62842 (= tp!16606 e!33925)))

(assert (= (and b!62842 (is-Cons!536 (t!47372 (msgs!14 (_2!189 res!29095))))) b!62865))

(declare-fun m!68692 () Bool)

(assert (=> b!62865 m!68692))

(declare-fun b!62866 () Bool)

(declare-fun e!33927 () Bool)

(declare-fun tp!16618 () Bool)

(assert (=> b!62866 (= e!33927 (and (inv!1153 (h!780 (t!47372 (msgs!14 queue!167)))) tp!16618))))

(assert (=> b!62841 (= tp!16605 e!33927)))

(assert (= (and b!62841 (is-Cons!536 (t!47372 (msgs!14 queue!167)))) b!62866))

(declare-fun m!68694 () Bool)

(assert (=> b!62866 m!68694))

(declare-fun b!62867 () Bool)

(declare-fun e!33929 () Bool)

(declare-fun tp!16619 () Bool)

(assert (=> b!62867 (= e!33929 (and (inv!1153 (h!780 (t!47372 (msgs!14 (_2!189 t!47362))))) tp!16619))))

(assert (=> b!62833 (= tp!16597 e!33929)))

(assert (= (and b!62833 (is-Cons!536 (t!47372 (msgs!14 (_2!189 t!47362))))) b!62867))

(declare-fun m!68696 () Bool)

(assert (=> b!62867 m!68696))

(declare-fun b!62868 () Bool)

(declare-fun e!33931 () Bool)

(declare-fun tp!16620 () Bool)

(assert (=> b!62868 (= e!33931 (and (inv!1153 (h!780 (t!47372 (msgs!14 queue!176)))) tp!16620))))

(assert (=> b!62835 (= tp!16599 e!33931)))

(assert (= (and b!62835 (is-Cons!536 (t!47372 (msgs!14 queue!176)))) b!62868))

(declare-fun m!68698 () Bool)

(assert (=> b!62868 m!68698))

(declare-fun b_lambda!15711 () Bool)

(assert (= b_lambda!15707 (or d!53042 b_lambda!15711)))

(declare-fun bs!37509 () Bool)

(declare-fun d!53106 () Bool)

(assert (= bs!37509 (and d!53106 d!53042)))

(assert (=> bs!37509 (= (dynLambda!950 lambda!9150) Nil!537)))

(assert (=> b!62851 d!53106))

(declare-fun b_lambda!15713 () Bool)

(assert (= b_lambda!15709 (or d!53046 b_lambda!15713)))

(declare-fun bs!37510 () Bool)

(declare-fun d!53108 () Bool)

(assert (= bs!37510 (and d!53108 d!53046)))

(assert (=> bs!37510 (= (dynLambda!950 lambda!9151) Nil!537)))

(assert (=> b!62854 d!53108))

(push 1)

(assert (not b_lambda!15713))

(assert (not b!62852))

(assert (not d!53074))

(assert (not b!62858))

(assert (not b!62866))

(assert (not b!62868))

(assert (not b!62864))

(assert (not b!62867))

(assert (not b!62857))

(assert (not b!62856))

(assert (not b!62860))

(assert (not d!53056))

(assert (not b!62855))

(assert (not b!62861))

(assert (not b!62845))

(assert (not d!53076))

(assert (not d!53078))

(assert (not d!53058))

(assert (not b!62862))

(assert (not d!53060))

(assert (not b!62865))

(assert (not b!62863))

(assert (not b!62859))

(assert (not b_lambda!15711))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

