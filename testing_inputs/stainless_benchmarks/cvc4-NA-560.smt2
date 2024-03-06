; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4216 () Bool)

(assert start!4216)

(declare-fun b!33914 () Bool)

(declare-fun res!15646 () Bool)

(declare-fun e!17146 () Bool)

(assert (=> b!33914 (=> (not res!15646) (not e!17146))))

(declare-datatypes () ((T!1875 (T!1876 (val!110 Int)))))

(declare-datatypes () ((Conc!87 (CC!86 (left!731 Conc!87) (right!734 Conc!87)) (Single!86 (x!9026 T!1875)) (Empty!97))))

(declare-fun xs!676 () Conc!87)

(assert (=> b!33914 (= res!15646 (is-CC!86 xs!676))))

(declare-fun b!33915 () Bool)

(declare-fun res!15647 () Bool)

(assert (=> b!33915 (=> (not res!15647) (not e!17146))))

(declare-fun i!326 () Int)

(declare-fun size!300 (Conc!87) Int)

(assert (=> b!33915 (= res!15647 (< i!326 (size!300 xs!676)))))

(declare-fun res!15645 () Bool)

(assert (=> start!4216 (=> (not res!15645) (not e!17146))))

(assert (=> start!4216 (= res!15645 (>= i!326 0))))

(assert (=> start!4216 e!17146))

(assert (=> start!4216 true))

(declare-fun e!17145 () Bool)

(assert (=> start!4216 e!17145))

(declare-fun tp_is_empty!219 () Bool)

(assert (=> start!4216 tp_is_empty!219))

(declare-fun b!33916 () Bool)

(assert (=> b!33916 (= e!17145 tp_is_empty!219)))

(declare-fun b!33917 () Bool)

(declare-fun y!930 () T!1875)

(declare-datatypes () ((List!374 (Cons!368 (h!285 T!1875) (t!4396 List!374)) (Nil!369))))

(declare-fun appendUpdate!8 (List!374 List!374 Int T!1875) Bool)

(declare-fun toList!129 (Conc!87) List!374)

(assert (=> b!33917 (= e!17146 (not (appendUpdate!8 (toList!129 (left!731 xs!676)) (toList!129 (right!734 xs!676)) i!326 y!930)))))

(declare-fun b!33918 () Bool)

(declare-fun tp!6992 () Bool)

(declare-fun tp!6993 () Bool)

(assert (=> b!33918 (= e!17145 (and tp!6992 tp!6993))))

(assert (= (and start!4216 res!15645) b!33915))

(assert (= (and b!33915 res!15647) b!33914))

(assert (= (and b!33914 res!15646) b!33917))

(assert (= (and start!4216 (is-CC!86 xs!676)) b!33918))

(assert (= (and start!4216 (is-Single!86 xs!676)) b!33916))

(declare-fun m!36089 () Bool)

(assert (=> b!33915 m!36089))

(declare-fun m!36091 () Bool)

(assert (=> b!33917 m!36091))

(declare-fun m!36093 () Bool)

(assert (=> b!33917 m!36093))

(assert (=> b!33917 m!36091))

(assert (=> b!33917 m!36093))

(declare-fun m!36095 () Bool)

(assert (=> b!33917 m!36095))

(push 1)

(assert (not b!33917))

(assert (not b!33915))

(assert (not b!33918))

(assert tp_is_empty!219)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!17153 () List!374)

(declare-fun d!16929 () Bool)

(declare-fun updated!11 (List!374 Int T!1875) List!374)

(declare-fun ++!54 (List!374 List!374) List!374)

(assert (=> d!16929 (= (updated!11 (++!54 (toList!129 (left!731 xs!676)) (toList!129 (right!734 xs!676))) i!326 y!930) e!17153)))

(declare-fun c!7278 () Bool)

(declare-fun size!301 (List!374) Int)

(assert (=> d!16929 (= c!7278 (< i!326 (size!301 (toList!129 (left!731 xs!676)))))))

(declare-fun lt!6389 () Bool)

(declare-fun e!17154 () Bool)

(assert (=> d!16929 (= lt!6389 e!17154)))

(declare-fun res!15656 () Bool)

(assert (=> d!16929 (=> res!15656 e!17154)))

(assert (=> d!16929 (= res!15656 (or (is-Nil!369 (toList!129 (left!731 xs!676))) (= i!326 0)))))

(declare-fun e!17155 () Bool)

(assert (=> d!16929 e!17155))

(declare-fun res!15657 () Bool)

(assert (=> d!16929 (=> (not res!15657) (not e!17155))))

(assert (=> d!16929 (= res!15657 (<= 0 i!326))))

(assert (=> d!16929 (= (appendUpdate!8 (toList!129 (left!731 xs!676)) (toList!129 (right!734 xs!676)) i!326 y!930) true)))

(declare-fun b!33929 () Bool)

(assert (=> b!33929 (= e!17153 (++!54 (updated!11 (toList!129 (left!731 xs!676)) i!326 y!930) (toList!129 (right!734 xs!676))))))

(declare-fun b!33927 () Bool)

(assert (=> b!33927 (= e!17155 (< i!326 (+ (size!301 (toList!129 (left!731 xs!676))) (size!301 (toList!129 (right!734 xs!676))))))))

(declare-fun b!33930 () Bool)

(assert (=> b!33930 (= e!17153 (++!54 (toList!129 (left!731 xs!676)) (updated!11 (toList!129 (right!734 xs!676)) (- i!326 (size!301 (toList!129 (left!731 xs!676)))) y!930)))))

(declare-fun b!33928 () Bool)

(assert (=> b!33928 (= e!17154 (appendUpdate!8 (t!4396 (toList!129 (left!731 xs!676))) (toList!129 (right!734 xs!676)) (- i!326 1) y!930))))

(assert (= (and d!16929 res!15657) b!33927))

(assert (= (and d!16929 (not res!15656)) b!33928))

(assert (= (and d!16929 c!7278) b!33929))

(assert (= (and d!16929 (not c!7278)) b!33930))

(assert (=> b!33929 m!36091))

(declare-fun m!36097 () Bool)

(assert (=> b!33929 m!36097))

(assert (=> b!33929 m!36097))

(assert (=> b!33929 m!36093))

(declare-fun m!36099 () Bool)

(assert (=> b!33929 m!36099))

(assert (=> b!33928 m!36093))

(declare-fun m!36101 () Bool)

(assert (=> b!33928 m!36101))

(assert (=> b!33927 m!36091))

(declare-fun m!36103 () Bool)

(assert (=> b!33927 m!36103))

(assert (=> b!33927 m!36093))

(declare-fun m!36105 () Bool)

(assert (=> b!33927 m!36105))

(assert (=> b!33930 m!36091))

(assert (=> b!33930 m!36103))

(assert (=> b!33930 m!36093))

(declare-fun m!36107 () Bool)

(assert (=> b!33930 m!36107))

(assert (=> b!33930 m!36091))

(assert (=> b!33930 m!36107))

(declare-fun m!36109 () Bool)

(assert (=> b!33930 m!36109))

(assert (=> d!16929 m!36091))

(assert (=> d!16929 m!36093))

(declare-fun m!36111 () Bool)

(assert (=> d!16929 m!36111))

(assert (=> d!16929 m!36111))

(declare-fun m!36113 () Bool)

(assert (=> d!16929 m!36113))

(assert (=> d!16929 m!36091))

(assert (=> d!16929 m!36103))

(assert (=> b!33917 d!16929))

(declare-fun b!33942 () Bool)

(declare-fun e!17161 () List!374)

(assert (=> b!33942 (= e!17161 (++!54 (toList!129 (left!731 (left!731 xs!676))) (toList!129 (right!734 (left!731 xs!676)))))))

(declare-fun b!33941 () Bool)

(assert (=> b!33941 (= e!17161 (Cons!368 (x!9026 (left!731 xs!676)) Nil!369))))

(declare-fun d!16931 () Bool)

(declare-fun lt!6392 () List!374)

(assert (=> d!16931 (= (size!301 lt!6392) (size!300 (left!731 xs!676)))))

(declare-fun e!17160 () List!374)

(assert (=> d!16931 (= lt!6392 e!17160)))

(declare-fun c!7284 () Bool)

(assert (=> d!16931 (= c!7284 (is-Empty!97 (left!731 xs!676)))))

(assert (=> d!16931 (= (toList!129 (left!731 xs!676)) lt!6392)))

(declare-fun b!33940 () Bool)

(assert (=> b!33940 (= e!17160 e!17161)))

(declare-fun c!7283 () Bool)

(assert (=> b!33940 (= c!7283 (is-Single!86 (left!731 xs!676)))))

(declare-fun b!33939 () Bool)

(assert (=> b!33939 (= e!17160 Nil!369)))

(assert (= (and b!33940 c!7283) b!33941))

(assert (= (and b!33940 (not c!7283)) b!33942))

(assert (= (and d!16931 c!7284) b!33939))

(assert (= (and d!16931 (not c!7284)) b!33940))

(declare-fun m!36115 () Bool)

(assert (=> b!33942 m!36115))

(declare-fun m!36117 () Bool)

(assert (=> b!33942 m!36117))

(assert (=> b!33942 m!36115))

(assert (=> b!33942 m!36117))

(declare-fun m!36119 () Bool)

(assert (=> b!33942 m!36119))

(declare-fun m!36121 () Bool)

(assert (=> d!16931 m!36121))

(declare-fun m!36123 () Bool)

(assert (=> d!16931 m!36123))

(assert (=> b!33917 d!16931))

(declare-fun b!33946 () Bool)

(declare-fun e!17163 () List!374)

(assert (=> b!33946 (= e!17163 (++!54 (toList!129 (left!731 (right!734 xs!676))) (toList!129 (right!734 (right!734 xs!676)))))))

(declare-fun b!33945 () Bool)

(assert (=> b!33945 (= e!17163 (Cons!368 (x!9026 (right!734 xs!676)) Nil!369))))

(declare-fun d!16933 () Bool)

(declare-fun lt!6393 () List!374)

(assert (=> d!16933 (= (size!301 lt!6393) (size!300 (right!734 xs!676)))))

(declare-fun e!17162 () List!374)

(assert (=> d!16933 (= lt!6393 e!17162)))

(declare-fun c!7286 () Bool)

(assert (=> d!16933 (= c!7286 (is-Empty!97 (right!734 xs!676)))))

(assert (=> d!16933 (= (toList!129 (right!734 xs!676)) lt!6393)))

(declare-fun b!33944 () Bool)

(assert (=> b!33944 (= e!17162 e!17163)))

(declare-fun c!7285 () Bool)

(assert (=> b!33944 (= c!7285 (is-Single!86 (right!734 xs!676)))))

(declare-fun b!33943 () Bool)

(assert (=> b!33943 (= e!17162 Nil!369)))

(assert (= (and b!33944 c!7285) b!33945))

(assert (= (and b!33944 (not c!7285)) b!33946))

(assert (= (and d!16933 c!7286) b!33943))

(assert (= (and d!16933 (not c!7286)) b!33944))

(declare-fun m!36125 () Bool)

(assert (=> b!33946 m!36125))

(declare-fun m!36127 () Bool)

(assert (=> b!33946 m!36127))

(assert (=> b!33946 m!36125))

(assert (=> b!33946 m!36127))

(declare-fun m!36129 () Bool)

(assert (=> b!33946 m!36129))

(declare-fun m!36131 () Bool)

(assert (=> d!16933 m!36131))

(declare-fun m!36133 () Bool)

(assert (=> d!16933 m!36133))

(assert (=> b!33917 d!16933))

(declare-fun b!33955 () Bool)

(declare-fun e!17169 () Int)

(assert (=> b!33955 (= e!17169 0)))

(declare-fun d!16935 () Bool)

(declare-fun lt!6396 () Int)

(assert (=> d!16935 (>= lt!6396 0)))

(assert (=> d!16935 (= lt!6396 e!17169)))

(declare-fun c!7292 () Bool)

(assert (=> d!16935 (= c!7292 (is-Empty!97 xs!676))))

(assert (=> d!16935 (= (size!300 xs!676) lt!6396)))

(declare-fun b!33958 () Bool)

(declare-fun e!17168 () Int)

(assert (=> b!33958 (= e!17168 (+ (size!300 (left!731 xs!676)) (size!300 (right!734 xs!676))))))

(declare-fun b!33956 () Bool)

(assert (=> b!33956 (= e!17169 e!17168)))

(declare-fun c!7291 () Bool)

(assert (=> b!33956 (= c!7291 (is-Single!86 xs!676))))

(declare-fun b!33957 () Bool)

(assert (=> b!33957 (= e!17168 1)))

(assert (= (and b!33956 c!7291) b!33957))

(assert (= (and b!33956 (not c!7291)) b!33958))

(assert (= (and d!16935 c!7292) b!33955))

(assert (= (and d!16935 (not c!7292)) b!33956))

(assert (=> b!33958 m!36123))

(assert (=> b!33958 m!36133))

(assert (=> b!33915 d!16935))

(declare-fun b!33965 () Bool)

(declare-fun e!17172 () Bool)

(declare-fun tp!6998 () Bool)

(declare-fun tp!6999 () Bool)

(assert (=> b!33965 (= e!17172 (and tp!6998 tp!6999))))

(declare-fun b!33966 () Bool)

(assert (=> b!33966 (= e!17172 tp_is_empty!219)))

(assert (=> b!33918 (= tp!6992 e!17172)))

(assert (= (and b!33918 (is-CC!86 (left!731 xs!676))) b!33965))

(assert (= (and b!33918 (is-Single!86 (left!731 xs!676))) b!33966))

(declare-fun b!33967 () Bool)

(declare-fun e!17173 () Bool)

(declare-fun tp!7000 () Bool)

(declare-fun tp!7001 () Bool)

(assert (=> b!33967 (= e!17173 (and tp!7000 tp!7001))))

(declare-fun b!33968 () Bool)

(assert (=> b!33968 (= e!17173 tp_is_empty!219)))

(assert (=> b!33918 (= tp!6993 e!17173)))

(assert (= (and b!33918 (is-CC!86 (right!734 xs!676))) b!33967))

(assert (= (and b!33918 (is-Single!86 (right!734 xs!676))) b!33968))

(push 1)

(assert (not b!33929))

(assert (not b!33942))

(assert (not b!33927))

(assert (not b!33967))

(assert (not b!33946))

(assert (not b!33958))

(assert (not d!16931))

(assert (not d!16933))

(assert (not b!33928))

(assert tp_is_empty!219)

(assert (not b!33930))

(assert (not d!16929))

(assert (not b!33965))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

