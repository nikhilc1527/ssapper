; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!194 () Bool)

(assert start!194)

(declare-fun b!998 () Bool)

(declare-fun e!669 () Bool)

(declare-datatypes () ((List!51 (Cons!51 (head!223 (_ BitVec 32)) (tail!235 List!51)) (Nil!52))))

(declare-datatypes () ((AbsQueue!3 (Queue!2 (front!45 List!51) (rear!47 List!51)))))

(declare-fun queue!67 () AbsQueue!3)

(declare-fun isEmpty!12 (AbsQueue!3) Bool)

(assert (=> b!998 (= e!669 (isEmpty!12 queue!67))))

(declare-fun b!999 () Bool)

(declare-fun res!709 () Bool)

(declare-fun e!668 () Bool)

(assert (=> b!999 (=> (not res!709) (not e!668))))

(declare-fun e3!1 () (_ BitVec 32))

(declare-fun q2!1 () AbsQueue!3)

(declare-fun q3!1 () AbsQueue!3)

(declare-fun enqueue!0 (AbsQueue!3 (_ BitVec 32)) AbsQueue!3)

(assert (=> b!999 (= res!709 (= q3!1 (enqueue!0 q2!1 e3!1)))))

(declare-fun res!707 () Bool)

(assert (=> start!194 (=> (not res!707) (not e!668))))

(declare-fun queue!56 () AbsQueue!3)

(assert (=> start!194 (= res!707 (isEmpty!12 queue!56))))

(assert (=> start!194 e!668))

(assert (=> start!194 true))

(declare-fun b!1000 () Bool)

(declare-fun res!708 () Bool)

(assert (=> b!1000 (=> (not res!708) (not e!668))))

(declare-fun q1!1 () AbsQueue!3)

(declare-fun e2!3 () (_ BitVec 32))

(assert (=> b!1000 (= res!708 (= q2!1 (enqueue!0 q1!1 e2!3)))))

(declare-fun b!1001 () Bool)

(assert (=> b!1001 (= e!668 e!669)))

(declare-fun res!705 () Bool)

(assert (=> b!1001 (=> res!705 e!669)))

(declare-fun isAmortized!0 (AbsQueue!3) Bool)

(assert (=> b!1001 (= res!705 (not (isAmortized!0 queue!67)))))

(declare-fun b!1002 () Bool)

(declare-fun res!703 () Bool)

(assert (=> b!1002 (=> (not res!703) (not e!668))))

(declare-fun e1prime!1 () (_ BitVec 32))

(declare-fun front!8 (AbsQueue!3) (_ BitVec 32))

(assert (=> b!1002 (= res!703 (= e1prime!1 (front!8 q3!1)))))

(declare-fun b!1003 () Bool)

(declare-fun res!706 () Bool)

(assert (=> b!1003 (=> (not res!706) (not e!668))))

(assert (=> b!1003 (= res!706 (= queue!67 q3!1))))

(declare-fun b!1004 () Bool)

(declare-fun res!704 () Bool)

(assert (=> b!1004 (=> (not res!704) (not e!668))))

(declare-fun e1!2 () (_ BitVec 32))

(assert (=> b!1004 (= res!704 (= q1!1 (enqueue!0 queue!56 e1!2)))))

(assert (= (and start!194 res!707) b!1004))

(assert (= (and b!1004 res!704) b!1000))

(assert (= (and b!1000 res!708) b!999))

(assert (= (and b!999 res!709) b!1002))

(assert (= (and b!1002 res!703) b!1003))

(assert (= (and b!1003 res!706) b!1001))

(assert (= (and b!1001 (not res!705)) b!998))

(declare-fun m!891 () Bool)

(assert (=> b!999 m!891))

(declare-fun m!893 () Bool)

(assert (=> start!194 m!893))

(declare-fun m!895 () Bool)

(assert (=> b!1004 m!895))

(declare-fun m!897 () Bool)

(assert (=> b!1001 m!897))

(declare-fun m!899 () Bool)

(assert (=> b!1002 m!899))

(declare-fun m!901 () Bool)

(assert (=> b!998 m!901))

(declare-fun m!903 () Bool)

(assert (=> b!1000 m!903))

(push 1)

(assert (not b!1004))

(assert (not b!998))

(assert (not b!999))

(assert (not b!1002))

(assert (not start!194))

(assert (not b!1001))

(assert (not b!1000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!414 () Bool)

(declare-fun lt!154 () AbsQueue!3)

(assert (=> d!414 (isAmortized!0 lt!154)))

(declare-fun amortizedQueue!0 (List!51 List!51) AbsQueue!3)

(assert (=> d!414 (= lt!154 (amortizedQueue!0 (front!45 q1!1) (Cons!51 e2!3 (rear!47 q1!1))))))

(assert (=> d!414 (= (enqueue!0 q1!1 e2!3) lt!154)))

(declare-fun bs!153 () Bool)

(assert (= bs!153 d!414))

(declare-fun m!905 () Bool)

(assert (=> bs!153 m!905))

(declare-fun m!907 () Bool)

(assert (=> bs!153 m!907))

(assert (=> b!1000 d!414))

(declare-fun d!416 () Bool)

(assert (=> d!416 (= (front!8 q3!1) (head!223 (front!45 q3!1)))))

(assert (=> b!1002 d!416))

(declare-fun d!418 () Bool)

(declare-fun lt!155 () AbsQueue!3)

(assert (=> d!418 (isAmortized!0 lt!155)))

(assert (=> d!418 (= lt!155 (amortizedQueue!0 (front!45 q2!1) (Cons!51 e3!1 (rear!47 q2!1))))))

(assert (=> d!418 (= (enqueue!0 q2!1 e3!1) lt!155)))

(declare-fun bs!154 () Bool)

(assert (= bs!154 d!418))

(declare-fun m!909 () Bool)

(assert (=> bs!154 m!909))

(declare-fun m!911 () Bool)

(assert (=> bs!154 m!911))

(assert (=> b!999 d!418))

(declare-fun d!420 () Bool)

(assert (=> d!420 (= (isEmpty!12 queue!56) (and (is-Nil!52 (front!45 queue!56)) (is-Nil!52 (rear!47 queue!56))))))

(assert (=> start!194 d!420))

(declare-fun d!422 () Bool)

(declare-fun size!23 (List!51) Int)

(assert (=> d!422 (= (isAmortized!0 queue!67) (>= (size!23 (front!45 queue!67)) (size!23 (rear!47 queue!67))))))

(declare-fun bs!155 () Bool)

(assert (= bs!155 d!422))

(declare-fun m!913 () Bool)

(assert (=> bs!155 m!913))

(declare-fun m!915 () Bool)

(assert (=> bs!155 m!915))

(assert (=> b!1001 d!422))

(declare-fun d!424 () Bool)

(assert (=> d!424 (= (isEmpty!12 queue!67) (and (is-Nil!52 (front!45 queue!67)) (is-Nil!52 (rear!47 queue!67))))))

(assert (=> b!998 d!424))

(declare-fun d!426 () Bool)

(declare-fun lt!156 () AbsQueue!3)

(assert (=> d!426 (isAmortized!0 lt!156)))

(assert (=> d!426 (= lt!156 (amortizedQueue!0 (front!45 queue!56) (Cons!51 e1!2 (rear!47 queue!56))))))

(assert (=> d!426 (= (enqueue!0 queue!56 e1!2) lt!156)))

(declare-fun bs!156 () Bool)

(assert (= bs!156 d!426))

(declare-fun m!917 () Bool)

(assert (=> bs!156 m!917))

(declare-fun m!919 () Bool)

(assert (=> bs!156 m!919))

(assert (=> b!1004 d!426))

(push 1)

(assert (not d!414))

(assert (not d!422))

(assert (not d!418))

(assert (not d!426))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!428 () Bool)

(assert (=> d!428 (= (isAmortized!0 lt!154) (>= (size!23 (front!45 lt!154)) (size!23 (rear!47 lt!154))))))

(declare-fun bs!157 () Bool)

(assert (= bs!157 d!428))

(declare-fun m!921 () Bool)

(assert (=> bs!157 m!921))

(declare-fun m!923 () Bool)

(assert (=> bs!157 m!923))

(assert (=> d!414 d!428))

(declare-fun d!430 () Bool)

(declare-fun lt!159 () AbsQueue!3)

(assert (=> d!430 (isAmortized!0 lt!159)))

(declare-fun e!672 () AbsQueue!3)

(assert (=> d!430 (= lt!159 e!672)))

(declare-fun c!205 () Bool)

(assert (=> d!430 (= c!205 (<= (size!23 (Cons!51 e2!3 (rear!47 q1!1))) (size!23 (front!45 q1!1))))))

(assert (=> d!430 (= (amortizedQueue!0 (front!45 q1!1) (Cons!51 e2!3 (rear!47 q1!1))) lt!159)))

(declare-fun b!1009 () Bool)

(assert (=> b!1009 (= e!672 (Queue!2 (front!45 q1!1) (Cons!51 e2!3 (rear!47 q1!1))))))

(declare-fun b!1010 () Bool)

(declare-fun concat!2 (List!51 List!51) List!51)

(declare-fun reverse!5 (List!51) List!51)

(assert (=> b!1010 (= e!672 (Queue!2 (concat!2 (front!45 q1!1) (reverse!5 (Cons!51 e2!3 (rear!47 q1!1)))) Nil!52))))

(assert (= (and d!430 c!205) b!1009))

(assert (= (and d!430 (not c!205)) b!1010))

(declare-fun m!925 () Bool)

(assert (=> d!430 m!925))

(declare-fun m!927 () Bool)

(assert (=> d!430 m!927))

(declare-fun m!929 () Bool)

(assert (=> d!430 m!929))

(declare-fun m!931 () Bool)

(assert (=> b!1010 m!931))

(assert (=> b!1010 m!931))

(declare-fun m!933 () Bool)

(assert (=> b!1010 m!933))

(assert (=> d!414 d!430))

(declare-fun d!432 () Bool)

(declare-fun lt!162 () Int)

(assert (=> d!432 (>= lt!162 0)))

(declare-fun e!675 () Int)

(assert (=> d!432 (= lt!162 e!675)))

(declare-fun c!208 () Bool)

(assert (=> d!432 (= c!208 (is-Nil!52 (front!45 queue!67)))))

(assert (=> d!432 (= (size!23 (front!45 queue!67)) lt!162)))

(declare-fun b!1015 () Bool)

(assert (=> b!1015 (= e!675 0)))

(declare-fun b!1016 () Bool)

(assert (=> b!1016 (= e!675 (+ 1 (size!23 (tail!235 (front!45 queue!67)))))))

(assert (= (and d!432 c!208) b!1015))

(assert (= (and d!432 (not c!208)) b!1016))

(declare-fun m!935 () Bool)

(assert (=> b!1016 m!935))

(assert (=> d!422 d!432))

(declare-fun d!434 () Bool)

(declare-fun lt!163 () Int)

(assert (=> d!434 (>= lt!163 0)))

(declare-fun e!676 () Int)

(assert (=> d!434 (= lt!163 e!676)))

(declare-fun c!209 () Bool)

(assert (=> d!434 (= c!209 (is-Nil!52 (rear!47 queue!67)))))

(assert (=> d!434 (= (size!23 (rear!47 queue!67)) lt!163)))

(declare-fun b!1017 () Bool)

(assert (=> b!1017 (= e!676 0)))

(declare-fun b!1018 () Bool)

(assert (=> b!1018 (= e!676 (+ 1 (size!23 (tail!235 (rear!47 queue!67)))))))

(assert (= (and d!434 c!209) b!1017))

(assert (= (and d!434 (not c!209)) b!1018))

(declare-fun m!937 () Bool)

(assert (=> b!1018 m!937))

(assert (=> d!422 d!434))

(declare-fun d!436 () Bool)

(assert (=> d!436 (= (isAmortized!0 lt!155) (>= (size!23 (front!45 lt!155)) (size!23 (rear!47 lt!155))))))

(declare-fun bs!158 () Bool)

(assert (= bs!158 d!436))

(declare-fun m!939 () Bool)

(assert (=> bs!158 m!939))

(declare-fun m!941 () Bool)

(assert (=> bs!158 m!941))

(assert (=> d!418 d!436))

(declare-fun d!438 () Bool)

(declare-fun lt!164 () AbsQueue!3)

(assert (=> d!438 (isAmortized!0 lt!164)))

(declare-fun e!677 () AbsQueue!3)

(assert (=> d!438 (= lt!164 e!677)))

(declare-fun c!210 () Bool)

(assert (=> d!438 (= c!210 (<= (size!23 (Cons!51 e3!1 (rear!47 q2!1))) (size!23 (front!45 q2!1))))))

(assert (=> d!438 (= (amortizedQueue!0 (front!45 q2!1) (Cons!51 e3!1 (rear!47 q2!1))) lt!164)))

(declare-fun b!1019 () Bool)

(assert (=> b!1019 (= e!677 (Queue!2 (front!45 q2!1) (Cons!51 e3!1 (rear!47 q2!1))))))

(declare-fun b!1020 () Bool)

(assert (=> b!1020 (= e!677 (Queue!2 (concat!2 (front!45 q2!1) (reverse!5 (Cons!51 e3!1 (rear!47 q2!1)))) Nil!52))))

(assert (= (and d!438 c!210) b!1019))

(assert (= (and d!438 (not c!210)) b!1020))

(declare-fun m!943 () Bool)

(assert (=> d!438 m!943))

(declare-fun m!945 () Bool)

(assert (=> d!438 m!945))

(declare-fun m!947 () Bool)

(assert (=> d!438 m!947))

(declare-fun m!949 () Bool)

(assert (=> b!1020 m!949))

(assert (=> b!1020 m!949))

(declare-fun m!951 () Bool)

(assert (=> b!1020 m!951))

(assert (=> d!418 d!438))

(declare-fun d!440 () Bool)

(assert (=> d!440 (= (isAmortized!0 lt!156) (>= (size!23 (front!45 lt!156)) (size!23 (rear!47 lt!156))))))

(declare-fun bs!159 () Bool)

(assert (= bs!159 d!440))

(declare-fun m!953 () Bool)

(assert (=> bs!159 m!953))

(declare-fun m!955 () Bool)

(assert (=> bs!159 m!955))

(assert (=> d!426 d!440))

(declare-fun d!442 () Bool)

(declare-fun lt!165 () AbsQueue!3)

(assert (=> d!442 (isAmortized!0 lt!165)))

(declare-fun e!678 () AbsQueue!3)

(assert (=> d!442 (= lt!165 e!678)))

(declare-fun c!211 () Bool)

(assert (=> d!442 (= c!211 (<= (size!23 (Cons!51 e1!2 (rear!47 queue!56))) (size!23 (front!45 queue!56))))))

(assert (=> d!442 (= (amortizedQueue!0 (front!45 queue!56) (Cons!51 e1!2 (rear!47 queue!56))) lt!165)))

(declare-fun b!1021 () Bool)

(assert (=> b!1021 (= e!678 (Queue!2 (front!45 queue!56) (Cons!51 e1!2 (rear!47 queue!56))))))

(declare-fun b!1022 () Bool)

(assert (=> b!1022 (= e!678 (Queue!2 (concat!2 (front!45 queue!56) (reverse!5 (Cons!51 e1!2 (rear!47 queue!56)))) Nil!52))))

(assert (= (and d!442 c!211) b!1021))

(assert (= (and d!442 (not c!211)) b!1022))

(declare-fun m!957 () Bool)

(assert (=> d!442 m!957))

(declare-fun m!959 () Bool)

(assert (=> d!442 m!959))

(declare-fun m!961 () Bool)

(assert (=> d!442 m!961))

(declare-fun m!963 () Bool)

(assert (=> b!1022 m!963))

(assert (=> b!1022 m!963))

(declare-fun m!965 () Bool)

(assert (=> b!1022 m!965))

(assert (=> d!426 d!442))

(push 1)

(assert (not d!438))

(assert (not b!1020))

(assert (not d!436))

(assert (not d!430))

(assert (not b!1018))

(assert (not d!428))

(assert (not d!440))

(assert (not b!1016))

(assert (not d!442))

(assert (not b!1010))

(assert (not b!1022))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!444 () Bool)

(declare-fun lt!166 () Int)

(assert (=> d!444 (>= lt!166 0)))

(declare-fun e!679 () Int)

(assert (=> d!444 (= lt!166 e!679)))

(declare-fun c!212 () Bool)

(assert (=> d!444 (= c!212 (is-Nil!52 (tail!235 (rear!47 queue!67))))))

(assert (=> d!444 (= (size!23 (tail!235 (rear!47 queue!67))) lt!166)))

(declare-fun b!1023 () Bool)

(assert (=> b!1023 (= e!679 0)))

(declare-fun b!1024 () Bool)

(assert (=> b!1024 (= e!679 (+ 1 (size!23 (tail!235 (tail!235 (rear!47 queue!67))))))))

(assert (= (and d!444 c!212) b!1023))

(assert (= (and d!444 (not c!212)) b!1024))

(declare-fun m!967 () Bool)

(assert (=> b!1024 m!967))

(assert (=> b!1018 d!444))

(declare-fun d!446 () Bool)

(declare-fun e!684 () Bool)

(assert (=> d!446 e!684))

(declare-fun res!713 () Bool)

(assert (=> d!446 (=> (not res!713) (not e!684))))

(declare-fun lt!169 () List!51)

(assert (=> d!446 (= res!713 (= (size!23 lt!169) (+ (size!23 (front!45 q1!1)) (size!23 (reverse!5 (Cons!51 e2!3 (rear!47 q1!1)))))))))

(declare-fun e!685 () List!51)

(assert (=> d!446 (= lt!169 e!685)))

(declare-fun c!215 () Bool)

(assert (=> d!446 (= c!215 (is-Nil!52 (front!45 q1!1)))))

(assert (=> d!446 (= (concat!2 (front!45 q1!1) (reverse!5 (Cons!51 e2!3 (rear!47 q1!1)))) lt!169)))

(declare-fun b!1031 () Bool)

(assert (=> b!1031 (= e!685 (reverse!5 (Cons!51 e2!3 (rear!47 q1!1))))))

(declare-fun b!1032 () Bool)

(assert (=> b!1032 (= e!685 (Cons!51 (head!223 (front!45 q1!1)) (concat!2 (tail!235 (front!45 q1!1)) (reverse!5 (Cons!51 e2!3 (rear!47 q1!1))))))))

(declare-fun b!1033 () Bool)

(declare-fun content!22 (List!51) (Set (_ BitVec 32)))

(assert (=> b!1033 (= e!684 (= (content!22 lt!169) (union (content!22 (front!45 q1!1)) (content!22 (reverse!5 (Cons!51 e2!3 (rear!47 q1!1)))))))))

(assert (= (and d!446 c!215) b!1031))

(assert (= (and d!446 (not c!215)) b!1032))

(assert (= (and d!446 res!713) b!1033))

(declare-fun m!969 () Bool)

(assert (=> d!446 m!969))

(assert (=> d!446 m!929))

(assert (=> d!446 m!931))

(declare-fun m!971 () Bool)

(assert (=> d!446 m!971))

(assert (=> b!1032 m!931))

(declare-fun m!973 () Bool)

(assert (=> b!1032 m!973))

(declare-fun m!975 () Bool)

(assert (=> b!1033 m!975))

(declare-fun m!977 () Bool)

(assert (=> b!1033 m!977))

(assert (=> b!1033 m!931))

(declare-fun m!979 () Bool)

(assert (=> b!1033 m!979))

(assert (=> b!1010 d!446))

(declare-fun d!448 () Bool)

(declare-fun lt!172 () List!51)

(assert (=> d!448 (= (content!22 lt!172) (content!22 (Cons!51 e2!3 (rear!47 q1!1))))))

(declare-fun e!688 () List!51)

(assert (=> d!448 (= lt!172 e!688)))

(declare-fun c!218 () Bool)

(assert (=> d!448 (= c!218 (is-Nil!52 (Cons!51 e2!3 (rear!47 q1!1))))))

(assert (=> d!448 (= (reverse!5 (Cons!51 e2!3 (rear!47 q1!1))) lt!172)))

(declare-fun b!1038 () Bool)

(assert (=> b!1038 (= e!688 Nil!52)))

(declare-fun b!1039 () Bool)

(assert (=> b!1039 (= e!688 (concat!2 (reverse!5 (tail!235 (Cons!51 e2!3 (rear!47 q1!1)))) (Cons!51 (head!223 (Cons!51 e2!3 (rear!47 q1!1))) Nil!52)))))

(assert (= (and d!448 c!218) b!1038))

(assert (= (and d!448 (not c!218)) b!1039))

(declare-fun m!981 () Bool)

(assert (=> d!448 m!981))

(declare-fun m!983 () Bool)

(assert (=> d!448 m!983))

(declare-fun m!985 () Bool)

(assert (=> b!1039 m!985))

(assert (=> b!1039 m!985))

(declare-fun m!987 () Bool)

(assert (=> b!1039 m!987))

(assert (=> b!1010 d!448))

(declare-fun d!450 () Bool)

(declare-fun e!689 () Bool)

(assert (=> d!450 e!689))

(declare-fun res!714 () Bool)

(assert (=> d!450 (=> (not res!714) (not e!689))))

(declare-fun lt!173 () List!51)

(assert (=> d!450 (= res!714 (= (size!23 lt!173) (+ (size!23 (front!45 q2!1)) (size!23 (reverse!5 (Cons!51 e3!1 (rear!47 q2!1)))))))))

(declare-fun e!690 () List!51)

(assert (=> d!450 (= lt!173 e!690)))

(declare-fun c!219 () Bool)

(assert (=> d!450 (= c!219 (is-Nil!52 (front!45 q2!1)))))

(assert (=> d!450 (= (concat!2 (front!45 q2!1) (reverse!5 (Cons!51 e3!1 (rear!47 q2!1)))) lt!173)))

(declare-fun b!1040 () Bool)

(assert (=> b!1040 (= e!690 (reverse!5 (Cons!51 e3!1 (rear!47 q2!1))))))

(declare-fun b!1041 () Bool)

(assert (=> b!1041 (= e!690 (Cons!51 (head!223 (front!45 q2!1)) (concat!2 (tail!235 (front!45 q2!1)) (reverse!5 (Cons!51 e3!1 (rear!47 q2!1))))))))

(declare-fun b!1042 () Bool)

(assert (=> b!1042 (= e!689 (= (content!22 lt!173) (union (content!22 (front!45 q2!1)) (content!22 (reverse!5 (Cons!51 e3!1 (rear!47 q2!1)))))))))

(assert (= (and d!450 c!219) b!1040))

(assert (= (and d!450 (not c!219)) b!1041))

(assert (= (and d!450 res!714) b!1042))

(declare-fun m!989 () Bool)

(assert (=> d!450 m!989))

(assert (=> d!450 m!947))

(assert (=> d!450 m!949))

(declare-fun m!991 () Bool)

(assert (=> d!450 m!991))

(assert (=> b!1041 m!949))

(declare-fun m!993 () Bool)

(assert (=> b!1041 m!993))

(declare-fun m!995 () Bool)

(assert (=> b!1042 m!995))

(declare-fun m!997 () Bool)

(assert (=> b!1042 m!997))

(assert (=> b!1042 m!949))

(declare-fun m!999 () Bool)

(assert (=> b!1042 m!999))

(assert (=> b!1020 d!450))

(declare-fun d!452 () Bool)

(declare-fun lt!174 () List!51)

(assert (=> d!452 (= (content!22 lt!174) (content!22 (Cons!51 e3!1 (rear!47 q2!1))))))

(declare-fun e!691 () List!51)

(assert (=> d!452 (= lt!174 e!691)))

(declare-fun c!220 () Bool)

(assert (=> d!452 (= c!220 (is-Nil!52 (Cons!51 e3!1 (rear!47 q2!1))))))

(assert (=> d!452 (= (reverse!5 (Cons!51 e3!1 (rear!47 q2!1))) lt!174)))

(declare-fun b!1043 () Bool)

(assert (=> b!1043 (= e!691 Nil!52)))

(declare-fun b!1044 () Bool)

(assert (=> b!1044 (= e!691 (concat!2 (reverse!5 (tail!235 (Cons!51 e3!1 (rear!47 q2!1)))) (Cons!51 (head!223 (Cons!51 e3!1 (rear!47 q2!1))) Nil!52)))))

(assert (= (and d!452 c!220) b!1043))

(assert (= (and d!452 (not c!220)) b!1044))

(declare-fun m!1001 () Bool)

(assert (=> d!452 m!1001))

(declare-fun m!1003 () Bool)

(assert (=> d!452 m!1003))

(declare-fun m!1005 () Bool)

(assert (=> b!1044 m!1005))

(assert (=> b!1044 m!1005))

(declare-fun m!1007 () Bool)

(assert (=> b!1044 m!1007))

(assert (=> b!1020 d!452))

(declare-fun d!454 () Bool)

(declare-fun lt!175 () Int)

(assert (=> d!454 (>= lt!175 0)))

(declare-fun e!692 () Int)

(assert (=> d!454 (= lt!175 e!692)))

(declare-fun c!221 () Bool)

(assert (=> d!454 (= c!221 (is-Nil!52 (front!45 lt!156)))))

(assert (=> d!454 (= (size!23 (front!45 lt!156)) lt!175)))

(declare-fun b!1045 () Bool)

(assert (=> b!1045 (= e!692 0)))

(declare-fun b!1046 () Bool)

(assert (=> b!1046 (= e!692 (+ 1 (size!23 (tail!235 (front!45 lt!156)))))))

(assert (= (and d!454 c!221) b!1045))

(assert (= (and d!454 (not c!221)) b!1046))

(declare-fun m!1009 () Bool)

(assert (=> b!1046 m!1009))

(assert (=> d!440 d!454))

(declare-fun d!456 () Bool)

(declare-fun lt!176 () Int)

(assert (=> d!456 (>= lt!176 0)))

(declare-fun e!693 () Int)

(assert (=> d!456 (= lt!176 e!693)))

(declare-fun c!222 () Bool)

(assert (=> d!456 (= c!222 (is-Nil!52 (rear!47 lt!156)))))

(assert (=> d!456 (= (size!23 (rear!47 lt!156)) lt!176)))

(declare-fun b!1047 () Bool)

(assert (=> b!1047 (= e!693 0)))

(declare-fun b!1048 () Bool)

(assert (=> b!1048 (= e!693 (+ 1 (size!23 (tail!235 (rear!47 lt!156)))))))

(assert (= (and d!456 c!222) b!1047))

(assert (= (and d!456 (not c!222)) b!1048))

(declare-fun m!1011 () Bool)

(assert (=> b!1048 m!1011))

(assert (=> d!440 d!456))

(declare-fun d!458 () Bool)

(assert (=> d!458 (= (isAmortized!0 lt!159) (>= (size!23 (front!45 lt!159)) (size!23 (rear!47 lt!159))))))

(declare-fun bs!160 () Bool)

(assert (= bs!160 d!458))

(declare-fun m!1013 () Bool)

(assert (=> bs!160 m!1013))

(declare-fun m!1015 () Bool)

(assert (=> bs!160 m!1015))

(assert (=> d!430 d!458))

(declare-fun d!460 () Bool)

(declare-fun lt!177 () Int)

(assert (=> d!460 (>= lt!177 0)))

(declare-fun e!694 () Int)

(assert (=> d!460 (= lt!177 e!694)))

(declare-fun c!223 () Bool)

(assert (=> d!460 (= c!223 (is-Nil!52 (Cons!51 e2!3 (rear!47 q1!1))))))

(assert (=> d!460 (= (size!23 (Cons!51 e2!3 (rear!47 q1!1))) lt!177)))

(declare-fun b!1049 () Bool)

(assert (=> b!1049 (= e!694 0)))

(declare-fun b!1050 () Bool)

(assert (=> b!1050 (= e!694 (+ 1 (size!23 (tail!235 (Cons!51 e2!3 (rear!47 q1!1))))))))

(assert (= (and d!460 c!223) b!1049))

(assert (= (and d!460 (not c!223)) b!1050))

(declare-fun m!1017 () Bool)

(assert (=> b!1050 m!1017))

(assert (=> d!430 d!460))

(declare-fun d!462 () Bool)

(declare-fun lt!178 () Int)

(assert (=> d!462 (>= lt!178 0)))

(declare-fun e!695 () Int)

(assert (=> d!462 (= lt!178 e!695)))

(declare-fun c!224 () Bool)

(assert (=> d!462 (= c!224 (is-Nil!52 (front!45 q1!1)))))

(assert (=> d!462 (= (size!23 (front!45 q1!1)) lt!178)))

(declare-fun b!1051 () Bool)

(assert (=> b!1051 (= e!695 0)))

(declare-fun b!1052 () Bool)

(assert (=> b!1052 (= e!695 (+ 1 (size!23 (tail!235 (front!45 q1!1)))))))

(assert (= (and d!462 c!224) b!1051))

(assert (= (and d!462 (not c!224)) b!1052))

(declare-fun m!1019 () Bool)

(assert (=> b!1052 m!1019))

(assert (=> d!430 d!462))

(declare-fun d!464 () Bool)

(assert (=> d!464 (= (isAmortized!0 lt!165) (>= (size!23 (front!45 lt!165)) (size!23 (rear!47 lt!165))))))

(declare-fun bs!161 () Bool)

(assert (= bs!161 d!464))

(declare-fun m!1021 () Bool)

(assert (=> bs!161 m!1021))

(declare-fun m!1023 () Bool)

(assert (=> bs!161 m!1023))

(assert (=> d!442 d!464))

(declare-fun d!466 () Bool)

(declare-fun lt!179 () Int)

(assert (=> d!466 (>= lt!179 0)))

(declare-fun e!696 () Int)

(assert (=> d!466 (= lt!179 e!696)))

(declare-fun c!225 () Bool)

(assert (=> d!466 (= c!225 (is-Nil!52 (Cons!51 e1!2 (rear!47 queue!56))))))

(assert (=> d!466 (= (size!23 (Cons!51 e1!2 (rear!47 queue!56))) lt!179)))

(declare-fun b!1053 () Bool)

(assert (=> b!1053 (= e!696 0)))

(declare-fun b!1054 () Bool)

(assert (=> b!1054 (= e!696 (+ 1 (size!23 (tail!235 (Cons!51 e1!2 (rear!47 queue!56))))))))

(assert (= (and d!466 c!225) b!1053))

(assert (= (and d!466 (not c!225)) b!1054))

(declare-fun m!1025 () Bool)

(assert (=> b!1054 m!1025))

(assert (=> d!442 d!466))

(declare-fun d!468 () Bool)

(declare-fun lt!180 () Int)

(assert (=> d!468 (>= lt!180 0)))

(declare-fun e!697 () Int)

(assert (=> d!468 (= lt!180 e!697)))

(declare-fun c!226 () Bool)

(assert (=> d!468 (= c!226 (is-Nil!52 (front!45 queue!56)))))

(assert (=> d!468 (= (size!23 (front!45 queue!56)) lt!180)))

(declare-fun b!1055 () Bool)

(assert (=> b!1055 (= e!697 0)))

(declare-fun b!1056 () Bool)

(assert (=> b!1056 (= e!697 (+ 1 (size!23 (tail!235 (front!45 queue!56)))))))

(assert (= (and d!468 c!226) b!1055))

(assert (= (and d!468 (not c!226)) b!1056))

(declare-fun m!1027 () Bool)

(assert (=> b!1056 m!1027))

(assert (=> d!442 d!468))

(declare-fun d!470 () Bool)

(declare-fun lt!181 () Int)

(assert (=> d!470 (>= lt!181 0)))

(declare-fun e!698 () Int)

(assert (=> d!470 (= lt!181 e!698)))

(declare-fun c!227 () Bool)

(assert (=> d!470 (= c!227 (is-Nil!52 (tail!235 (front!45 queue!67))))))

(assert (=> d!470 (= (size!23 (tail!235 (front!45 queue!67))) lt!181)))

(declare-fun b!1057 () Bool)

(assert (=> b!1057 (= e!698 0)))

(declare-fun b!1058 () Bool)

(assert (=> b!1058 (= e!698 (+ 1 (size!23 (tail!235 (tail!235 (front!45 queue!67))))))))

(assert (= (and d!470 c!227) b!1057))

(assert (= (and d!470 (not c!227)) b!1058))

(declare-fun m!1029 () Bool)

(assert (=> b!1058 m!1029))

(assert (=> b!1016 d!470))

(declare-fun d!472 () Bool)

(assert (=> d!472 (= (isAmortized!0 lt!164) (>= (size!23 (front!45 lt!164)) (size!23 (rear!47 lt!164))))))

(declare-fun bs!162 () Bool)

(assert (= bs!162 d!472))

(declare-fun m!1031 () Bool)

(assert (=> bs!162 m!1031))

(declare-fun m!1033 () Bool)

(assert (=> bs!162 m!1033))

(assert (=> d!438 d!472))

(declare-fun d!474 () Bool)

(declare-fun lt!182 () Int)

(assert (=> d!474 (>= lt!182 0)))

(declare-fun e!699 () Int)

(assert (=> d!474 (= lt!182 e!699)))

(declare-fun c!228 () Bool)

(assert (=> d!474 (= c!228 (is-Nil!52 (Cons!51 e3!1 (rear!47 q2!1))))))

(assert (=> d!474 (= (size!23 (Cons!51 e3!1 (rear!47 q2!1))) lt!182)))

(declare-fun b!1059 () Bool)

(assert (=> b!1059 (= e!699 0)))

(declare-fun b!1060 () Bool)

(assert (=> b!1060 (= e!699 (+ 1 (size!23 (tail!235 (Cons!51 e3!1 (rear!47 q2!1))))))))

(assert (= (and d!474 c!228) b!1059))

(assert (= (and d!474 (not c!228)) b!1060))

(declare-fun m!1035 () Bool)

(assert (=> b!1060 m!1035))

(assert (=> d!438 d!474))

(declare-fun d!476 () Bool)

(declare-fun lt!183 () Int)

(assert (=> d!476 (>= lt!183 0)))

(declare-fun e!700 () Int)

(assert (=> d!476 (= lt!183 e!700)))

(declare-fun c!229 () Bool)

(assert (=> d!476 (= c!229 (is-Nil!52 (front!45 q2!1)))))

(assert (=> d!476 (= (size!23 (front!45 q2!1)) lt!183)))

(declare-fun b!1061 () Bool)

(assert (=> b!1061 (= e!700 0)))

(declare-fun b!1062 () Bool)

(assert (=> b!1062 (= e!700 (+ 1 (size!23 (tail!235 (front!45 q2!1)))))))

(assert (= (and d!476 c!229) b!1061))

(assert (= (and d!476 (not c!229)) b!1062))

(declare-fun m!1037 () Bool)

(assert (=> b!1062 m!1037))

(assert (=> d!438 d!476))

(declare-fun d!478 () Bool)

(declare-fun e!701 () Bool)

(assert (=> d!478 e!701))

(declare-fun res!715 () Bool)

(assert (=> d!478 (=> (not res!715) (not e!701))))

(declare-fun lt!184 () List!51)

(assert (=> d!478 (= res!715 (= (size!23 lt!184) (+ (size!23 (front!45 queue!56)) (size!23 (reverse!5 (Cons!51 e1!2 (rear!47 queue!56)))))))))

(declare-fun e!702 () List!51)

(assert (=> d!478 (= lt!184 e!702)))

(declare-fun c!230 () Bool)

(assert (=> d!478 (= c!230 (is-Nil!52 (front!45 queue!56)))))

(assert (=> d!478 (= (concat!2 (front!45 queue!56) (reverse!5 (Cons!51 e1!2 (rear!47 queue!56)))) lt!184)))

(declare-fun b!1063 () Bool)

(assert (=> b!1063 (= e!702 (reverse!5 (Cons!51 e1!2 (rear!47 queue!56))))))

(declare-fun b!1064 () Bool)

(assert (=> b!1064 (= e!702 (Cons!51 (head!223 (front!45 queue!56)) (concat!2 (tail!235 (front!45 queue!56)) (reverse!5 (Cons!51 e1!2 (rear!47 queue!56))))))))

(declare-fun b!1065 () Bool)

(assert (=> b!1065 (= e!701 (= (content!22 lt!184) (union (content!22 (front!45 queue!56)) (content!22 (reverse!5 (Cons!51 e1!2 (rear!47 queue!56)))))))))

(assert (= (and d!478 c!230) b!1063))

(assert (= (and d!478 (not c!230)) b!1064))

(assert (= (and d!478 res!715) b!1065))

(declare-fun m!1039 () Bool)

(assert (=> d!478 m!1039))

(assert (=> d!478 m!961))

(assert (=> d!478 m!963))

(declare-fun m!1041 () Bool)

(assert (=> d!478 m!1041))

(assert (=> b!1064 m!963))

(declare-fun m!1043 () Bool)

(assert (=> b!1064 m!1043))

(declare-fun m!1045 () Bool)

(assert (=> b!1065 m!1045))

(declare-fun m!1047 () Bool)

(assert (=> b!1065 m!1047))

(assert (=> b!1065 m!963))

(declare-fun m!1049 () Bool)

(assert (=> b!1065 m!1049))

(assert (=> b!1022 d!478))

(declare-fun d!480 () Bool)

(declare-fun lt!185 () List!51)

(assert (=> d!480 (= (content!22 lt!185) (content!22 (Cons!51 e1!2 (rear!47 queue!56))))))

(declare-fun e!703 () List!51)

(assert (=> d!480 (= lt!185 e!703)))

(declare-fun c!231 () Bool)

(assert (=> d!480 (= c!231 (is-Nil!52 (Cons!51 e1!2 (rear!47 queue!56))))))

(assert (=> d!480 (= (reverse!5 (Cons!51 e1!2 (rear!47 queue!56))) lt!185)))

(declare-fun b!1066 () Bool)

(assert (=> b!1066 (= e!703 Nil!52)))

(declare-fun b!1067 () Bool)

(assert (=> b!1067 (= e!703 (concat!2 (reverse!5 (tail!235 (Cons!51 e1!2 (rear!47 queue!56)))) (Cons!51 (head!223 (Cons!51 e1!2 (rear!47 queue!56))) Nil!52)))))

(assert (= (and d!480 c!231) b!1066))

(assert (= (and d!480 (not c!231)) b!1067))

(declare-fun m!1051 () Bool)

(assert (=> d!480 m!1051))

(declare-fun m!1053 () Bool)

(assert (=> d!480 m!1053))

(declare-fun m!1055 () Bool)

(assert (=> b!1067 m!1055))

(assert (=> b!1067 m!1055))

(declare-fun m!1057 () Bool)

(assert (=> b!1067 m!1057))

(assert (=> b!1022 d!480))

(declare-fun d!482 () Bool)

(declare-fun lt!186 () Int)

(assert (=> d!482 (>= lt!186 0)))

(declare-fun e!704 () Int)

(assert (=> d!482 (= lt!186 e!704)))

(declare-fun c!232 () Bool)

(assert (=> d!482 (= c!232 (is-Nil!52 (front!45 lt!155)))))

(assert (=> d!482 (= (size!23 (front!45 lt!155)) lt!186)))

(declare-fun b!1068 () Bool)

(assert (=> b!1068 (= e!704 0)))

(declare-fun b!1069 () Bool)

(assert (=> b!1069 (= e!704 (+ 1 (size!23 (tail!235 (front!45 lt!155)))))))

(assert (= (and d!482 c!232) b!1068))

(assert (= (and d!482 (not c!232)) b!1069))

(declare-fun m!1059 () Bool)

(assert (=> b!1069 m!1059))

(assert (=> d!436 d!482))

(declare-fun d!484 () Bool)

(declare-fun lt!187 () Int)

(assert (=> d!484 (>= lt!187 0)))

(declare-fun e!705 () Int)

(assert (=> d!484 (= lt!187 e!705)))

(declare-fun c!233 () Bool)

(assert (=> d!484 (= c!233 (is-Nil!52 (rear!47 lt!155)))))

(assert (=> d!484 (= (size!23 (rear!47 lt!155)) lt!187)))

(declare-fun b!1070 () Bool)

(assert (=> b!1070 (= e!705 0)))

(declare-fun b!1071 () Bool)

(assert (=> b!1071 (= e!705 (+ 1 (size!23 (tail!235 (rear!47 lt!155)))))))

(assert (= (and d!484 c!233) b!1070))

(assert (= (and d!484 (not c!233)) b!1071))

(declare-fun m!1061 () Bool)

(assert (=> b!1071 m!1061))

(assert (=> d!436 d!484))

(declare-fun d!486 () Bool)

(declare-fun lt!188 () Int)

(assert (=> d!486 (>= lt!188 0)))

(declare-fun e!706 () Int)

(assert (=> d!486 (= lt!188 e!706)))

(declare-fun c!234 () Bool)

(assert (=> d!486 (= c!234 (is-Nil!52 (front!45 lt!154)))))

(assert (=> d!486 (= (size!23 (front!45 lt!154)) lt!188)))

(declare-fun b!1072 () Bool)

(assert (=> b!1072 (= e!706 0)))

(declare-fun b!1073 () Bool)

(assert (=> b!1073 (= e!706 (+ 1 (size!23 (tail!235 (front!45 lt!154)))))))

(assert (= (and d!486 c!234) b!1072))

(assert (= (and d!486 (not c!234)) b!1073))

(declare-fun m!1063 () Bool)

(assert (=> b!1073 m!1063))

(assert (=> d!428 d!486))

(declare-fun d!488 () Bool)

(declare-fun lt!189 () Int)

(assert (=> d!488 (>= lt!189 0)))

(declare-fun e!707 () Int)

(assert (=> d!488 (= lt!189 e!707)))

(declare-fun c!235 () Bool)

(assert (=> d!488 (= c!235 (is-Nil!52 (rear!47 lt!154)))))

(assert (=> d!488 (= (size!23 (rear!47 lt!154)) lt!189)))

(declare-fun b!1074 () Bool)

(assert (=> b!1074 (= e!707 0)))

(declare-fun b!1075 () Bool)

(assert (=> b!1075 (= e!707 (+ 1 (size!23 (tail!235 (rear!47 lt!154)))))))

(assert (= (and d!488 c!235) b!1074))

(assert (= (and d!488 (not c!235)) b!1075))

(declare-fun m!1065 () Bool)

(assert (=> b!1075 m!1065))

(assert (=> d!428 d!488))

(push 1)

(assert (not d!450))

(assert (not b!1058))

(assert (not d!464))

(assert (not d!472))

(assert (not b!1056))

(assert (not b!1062))

(assert (not b!1071))

(assert (not d!452))

(assert (not b!1039))

(assert (not d!458))

(assert (not b!1024))

(assert (not b!1048))

(assert (not b!1069))

(assert (not b!1065))

(assert (not b!1073))

(assert (not d!478))

(assert (not b!1052))

(assert (not b!1042))

(assert (not b!1032))

(assert (not d!480))

(assert (not b!1046))

(assert (not b!1054))

(assert (not b!1060))

(assert (not b!1033))

(assert (not b!1067))

(assert (not b!1050))

(assert (not b!1064))

(assert (not d!446))

(assert (not d!448))

(assert (not b!1075))

(assert (not b!1041))

(assert (not b!1044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!490 () Bool)

(declare-fun lt!190 () Int)

(assert (=> d!490 (>= lt!190 0)))

(declare-fun e!708 () Int)

(assert (=> d!490 (= lt!190 e!708)))

(declare-fun c!236 () Bool)

(assert (=> d!490 (= c!236 (is-Nil!52 (tail!235 (Cons!51 e3!1 (rear!47 q2!1)))))))

(assert (=> d!490 (= (size!23 (tail!235 (Cons!51 e3!1 (rear!47 q2!1)))) lt!190)))

(declare-fun b!1076 () Bool)

(assert (=> b!1076 (= e!708 0)))

(declare-fun b!1077 () Bool)

(assert (=> b!1077 (= e!708 (+ 1 (size!23 (tail!235 (tail!235 (Cons!51 e3!1 (rear!47 q2!1)))))))))

(assert (= (and d!490 c!236) b!1076))

(assert (= (and d!490 (not c!236)) b!1077))

(declare-fun m!1067 () Bool)

(assert (=> b!1077 m!1067))

(assert (=> b!1060 d!490))

(declare-fun d!492 () Bool)

(declare-fun c!239 () Bool)

(assert (=> d!492 (= c!239 (is-Nil!52 lt!173))))

(declare-fun e!711 () (Set (_ BitVec 32)))

(assert (=> d!492 (= (content!22 lt!173) e!711)))

(declare-fun b!1082 () Bool)

(assert (=> b!1082 (= e!711 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1083 () Bool)

(assert (=> b!1083 (= e!711 (union (insert (head!223 lt!173) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 lt!173))))))

(assert (= (and d!492 c!239) b!1082))

(assert (= (and d!492 (not c!239)) b!1083))

(declare-fun m!1069 () Bool)

(assert (=> b!1083 m!1069))

(declare-fun m!1071 () Bool)

(assert (=> b!1083 m!1071))

(assert (=> b!1042 d!492))

(declare-fun d!494 () Bool)

(declare-fun c!240 () Bool)

(assert (=> d!494 (= c!240 (is-Nil!52 (front!45 q2!1)))))

(declare-fun e!712 () (Set (_ BitVec 32)))

(assert (=> d!494 (= (content!22 (front!45 q2!1)) e!712)))

(declare-fun b!1084 () Bool)

(assert (=> b!1084 (= e!712 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1085 () Bool)

(assert (=> b!1085 (= e!712 (union (insert (head!223 (front!45 q2!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 (front!45 q2!1)))))))

(assert (= (and d!494 c!240) b!1084))

(assert (= (and d!494 (not c!240)) b!1085))

(declare-fun m!1073 () Bool)

(assert (=> b!1085 m!1073))

(declare-fun m!1075 () Bool)

(assert (=> b!1085 m!1075))

(assert (=> b!1042 d!494))

(declare-fun d!496 () Bool)

(declare-fun c!241 () Bool)

(assert (=> d!496 (= c!241 (is-Nil!52 (reverse!5 (Cons!51 e3!1 (rear!47 q2!1)))))))

(declare-fun e!713 () (Set (_ BitVec 32)))

(assert (=> d!496 (= (content!22 (reverse!5 (Cons!51 e3!1 (rear!47 q2!1)))) e!713)))

(declare-fun b!1086 () Bool)

(assert (=> b!1086 (= e!713 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1087 () Bool)

(assert (=> b!1087 (= e!713 (union (insert (head!223 (reverse!5 (Cons!51 e3!1 (rear!47 q2!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 (reverse!5 (Cons!51 e3!1 (rear!47 q2!1)))))))))

(assert (= (and d!496 c!241) b!1086))

(assert (= (and d!496 (not c!241)) b!1087))

(declare-fun m!1077 () Bool)

(assert (=> b!1087 m!1077))

(declare-fun m!1079 () Bool)

(assert (=> b!1087 m!1079))

(assert (=> b!1042 d!496))

(declare-fun d!498 () Bool)

(declare-fun e!714 () Bool)

(assert (=> d!498 e!714))

(declare-fun res!716 () Bool)

(assert (=> d!498 (=> (not res!716) (not e!714))))

(declare-fun lt!191 () List!51)

(assert (=> d!498 (= res!716 (= (size!23 lt!191) (+ (size!23 (tail!235 (front!45 q2!1))) (size!23 (reverse!5 (Cons!51 e3!1 (rear!47 q2!1)))))))))

(declare-fun e!715 () List!51)

(assert (=> d!498 (= lt!191 e!715)))

(declare-fun c!242 () Bool)

(assert (=> d!498 (= c!242 (is-Nil!52 (tail!235 (front!45 q2!1))))))

(assert (=> d!498 (= (concat!2 (tail!235 (front!45 q2!1)) (reverse!5 (Cons!51 e3!1 (rear!47 q2!1)))) lt!191)))

(declare-fun b!1088 () Bool)

(assert (=> b!1088 (= e!715 (reverse!5 (Cons!51 e3!1 (rear!47 q2!1))))))

(declare-fun b!1089 () Bool)

(assert (=> b!1089 (= e!715 (Cons!51 (head!223 (tail!235 (front!45 q2!1))) (concat!2 (tail!235 (tail!235 (front!45 q2!1))) (reverse!5 (Cons!51 e3!1 (rear!47 q2!1))))))))

(declare-fun b!1090 () Bool)

(assert (=> b!1090 (= e!714 (= (content!22 lt!191) (union (content!22 (tail!235 (front!45 q2!1))) (content!22 (reverse!5 (Cons!51 e3!1 (rear!47 q2!1)))))))))

(assert (= (and d!498 c!242) b!1088))

(assert (= (and d!498 (not c!242)) b!1089))

(assert (= (and d!498 res!716) b!1090))

(declare-fun m!1081 () Bool)

(assert (=> d!498 m!1081))

(assert (=> d!498 m!1037))

(assert (=> d!498 m!949))

(assert (=> d!498 m!991))

(assert (=> b!1089 m!949))

(declare-fun m!1083 () Bool)

(assert (=> b!1089 m!1083))

(declare-fun m!1085 () Bool)

(assert (=> b!1090 m!1085))

(assert (=> b!1090 m!1075))

(assert (=> b!1090 m!949))

(assert (=> b!1090 m!999))

(assert (=> b!1041 d!498))

(declare-fun d!500 () Bool)

(declare-fun c!243 () Bool)

(assert (=> d!500 (= c!243 (is-Nil!52 lt!185))))

(declare-fun e!716 () (Set (_ BitVec 32)))

(assert (=> d!500 (= (content!22 lt!185) e!716)))

(declare-fun b!1091 () Bool)

(assert (=> b!1091 (= e!716 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1092 () Bool)

(assert (=> b!1092 (= e!716 (union (insert (head!223 lt!185) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 lt!185))))))

(assert (= (and d!500 c!243) b!1091))

(assert (= (and d!500 (not c!243)) b!1092))

(declare-fun m!1087 () Bool)

(assert (=> b!1092 m!1087))

(declare-fun m!1089 () Bool)

(assert (=> b!1092 m!1089))

(assert (=> d!480 d!500))

(declare-fun d!502 () Bool)

(declare-fun c!244 () Bool)

(assert (=> d!502 (= c!244 (is-Nil!52 (Cons!51 e1!2 (rear!47 queue!56))))))

(declare-fun e!717 () (Set (_ BitVec 32)))

(assert (=> d!502 (= (content!22 (Cons!51 e1!2 (rear!47 queue!56))) e!717)))

(declare-fun b!1093 () Bool)

(assert (=> b!1093 (= e!717 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1094 () Bool)

(assert (=> b!1094 (= e!717 (union (insert (head!223 (Cons!51 e1!2 (rear!47 queue!56))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 (Cons!51 e1!2 (rear!47 queue!56))))))))

(assert (= (and d!502 c!244) b!1093))

(assert (= (and d!502 (not c!244)) b!1094))

(declare-fun m!1091 () Bool)

(assert (=> b!1094 m!1091))

(declare-fun m!1093 () Bool)

(assert (=> b!1094 m!1093))

(assert (=> d!480 d!502))

(declare-fun d!504 () Bool)

(declare-fun lt!192 () Int)

(assert (=> d!504 (>= lt!192 0)))

(declare-fun e!718 () Int)

(assert (=> d!504 (= lt!192 e!718)))

(declare-fun c!245 () Bool)

(assert (=> d!504 (= c!245 (is-Nil!52 (tail!235 (front!45 lt!156))))))

(assert (=> d!504 (= (size!23 (tail!235 (front!45 lt!156))) lt!192)))

(declare-fun b!1095 () Bool)

(assert (=> b!1095 (= e!718 0)))

(declare-fun b!1096 () Bool)

(assert (=> b!1096 (= e!718 (+ 1 (size!23 (tail!235 (tail!235 (front!45 lt!156))))))))

(assert (= (and d!504 c!245) b!1095))

(assert (= (and d!504 (not c!245)) b!1096))

(declare-fun m!1095 () Bool)

(assert (=> b!1096 m!1095))

(assert (=> b!1046 d!504))

(declare-fun d!506 () Bool)

(declare-fun lt!193 () Int)

(assert (=> d!506 (>= lt!193 0)))

(declare-fun e!719 () Int)

(assert (=> d!506 (= lt!193 e!719)))

(declare-fun c!246 () Bool)

(assert (=> d!506 (= c!246 (is-Nil!52 (tail!235 (front!45 lt!154))))))

(assert (=> d!506 (= (size!23 (tail!235 (front!45 lt!154))) lt!193)))

(declare-fun b!1097 () Bool)

(assert (=> b!1097 (= e!719 0)))

(declare-fun b!1098 () Bool)

(assert (=> b!1098 (= e!719 (+ 1 (size!23 (tail!235 (tail!235 (front!45 lt!154))))))))

(assert (= (and d!506 c!246) b!1097))

(assert (= (and d!506 (not c!246)) b!1098))

(declare-fun m!1097 () Bool)

(assert (=> b!1098 m!1097))

(assert (=> b!1073 d!506))

(declare-fun d!508 () Bool)

(declare-fun e!720 () Bool)

(assert (=> d!508 e!720))

(declare-fun res!717 () Bool)

(assert (=> d!508 (=> (not res!717) (not e!720))))

(declare-fun lt!194 () List!51)

(assert (=> d!508 (= res!717 (= (size!23 lt!194) (+ (size!23 (tail!235 (front!45 queue!56))) (size!23 (reverse!5 (Cons!51 e1!2 (rear!47 queue!56)))))))))

(declare-fun e!721 () List!51)

(assert (=> d!508 (= lt!194 e!721)))

(declare-fun c!247 () Bool)

(assert (=> d!508 (= c!247 (is-Nil!52 (tail!235 (front!45 queue!56))))))

(assert (=> d!508 (= (concat!2 (tail!235 (front!45 queue!56)) (reverse!5 (Cons!51 e1!2 (rear!47 queue!56)))) lt!194)))

(declare-fun b!1099 () Bool)

(assert (=> b!1099 (= e!721 (reverse!5 (Cons!51 e1!2 (rear!47 queue!56))))))

(declare-fun b!1100 () Bool)

(assert (=> b!1100 (= e!721 (Cons!51 (head!223 (tail!235 (front!45 queue!56))) (concat!2 (tail!235 (tail!235 (front!45 queue!56))) (reverse!5 (Cons!51 e1!2 (rear!47 queue!56))))))))

(declare-fun b!1101 () Bool)

(assert (=> b!1101 (= e!720 (= (content!22 lt!194) (union (content!22 (tail!235 (front!45 queue!56))) (content!22 (reverse!5 (Cons!51 e1!2 (rear!47 queue!56)))))))))

(assert (= (and d!508 c!247) b!1099))

(assert (= (and d!508 (not c!247)) b!1100))

(assert (= (and d!508 res!717) b!1101))

(declare-fun m!1099 () Bool)

(assert (=> d!508 m!1099))

(assert (=> d!508 m!1027))

(assert (=> d!508 m!963))

(assert (=> d!508 m!1041))

(assert (=> b!1100 m!963))

(declare-fun m!1101 () Bool)

(assert (=> b!1100 m!1101))

(declare-fun m!1103 () Bool)

(assert (=> b!1101 m!1103))

(declare-fun m!1105 () Bool)

(assert (=> b!1101 m!1105))

(assert (=> b!1101 m!963))

(assert (=> b!1101 m!1049))

(assert (=> b!1064 d!508))

(declare-fun d!510 () Bool)

(declare-fun lt!195 () Int)

(assert (=> d!510 (>= lt!195 0)))

(declare-fun e!722 () Int)

(assert (=> d!510 (= lt!195 e!722)))

(declare-fun c!248 () Bool)

(assert (=> d!510 (= c!248 (is-Nil!52 lt!173))))

(assert (=> d!510 (= (size!23 lt!173) lt!195)))

(declare-fun b!1102 () Bool)

(assert (=> b!1102 (= e!722 0)))

(declare-fun b!1103 () Bool)

(assert (=> b!1103 (= e!722 (+ 1 (size!23 (tail!235 lt!173))))))

(assert (= (and d!510 c!248) b!1102))

(assert (= (and d!510 (not c!248)) b!1103))

(declare-fun m!1107 () Bool)

(assert (=> b!1103 m!1107))

(assert (=> d!450 d!510))

(assert (=> d!450 d!476))

(declare-fun d!512 () Bool)

(declare-fun lt!196 () Int)

(assert (=> d!512 (>= lt!196 0)))

(declare-fun e!723 () Int)

(assert (=> d!512 (= lt!196 e!723)))

(declare-fun c!249 () Bool)

(assert (=> d!512 (= c!249 (is-Nil!52 (reverse!5 (Cons!51 e3!1 (rear!47 q2!1)))))))

(assert (=> d!512 (= (size!23 (reverse!5 (Cons!51 e3!1 (rear!47 q2!1)))) lt!196)))

(declare-fun b!1104 () Bool)

(assert (=> b!1104 (= e!723 0)))

(declare-fun b!1105 () Bool)

(assert (=> b!1105 (= e!723 (+ 1 (size!23 (tail!235 (reverse!5 (Cons!51 e3!1 (rear!47 q2!1)))))))))

(assert (= (and d!512 c!249) b!1104))

(assert (= (and d!512 (not c!249)) b!1105))

(declare-fun m!1109 () Bool)

(assert (=> b!1105 m!1109))

(assert (=> d!450 d!512))

(declare-fun d!514 () Bool)

(declare-fun lt!197 () Int)

(assert (=> d!514 (>= lt!197 0)))

(declare-fun e!724 () Int)

(assert (=> d!514 (= lt!197 e!724)))

(declare-fun c!250 () Bool)

(assert (=> d!514 (= c!250 (is-Nil!52 (tail!235 (Cons!51 e1!2 (rear!47 queue!56)))))))

(assert (=> d!514 (= (size!23 (tail!235 (Cons!51 e1!2 (rear!47 queue!56)))) lt!197)))

(declare-fun b!1106 () Bool)

(assert (=> b!1106 (= e!724 0)))

(declare-fun b!1107 () Bool)

(assert (=> b!1107 (= e!724 (+ 1 (size!23 (tail!235 (tail!235 (Cons!51 e1!2 (rear!47 queue!56)))))))))

(assert (= (and d!514 c!250) b!1106))

(assert (= (and d!514 (not c!250)) b!1107))

(declare-fun m!1111 () Bool)

(assert (=> b!1107 m!1111))

(assert (=> b!1054 d!514))

(declare-fun d!516 () Bool)

(declare-fun lt!198 () Int)

(assert (=> d!516 (>= lt!198 0)))

(declare-fun e!725 () Int)

(assert (=> d!516 (= lt!198 e!725)))

(declare-fun c!251 () Bool)

(assert (=> d!516 (= c!251 (is-Nil!52 (tail!235 (tail!235 (rear!47 queue!67)))))))

(assert (=> d!516 (= (size!23 (tail!235 (tail!235 (rear!47 queue!67)))) lt!198)))

(declare-fun b!1108 () Bool)

(assert (=> b!1108 (= e!725 0)))

(declare-fun b!1109 () Bool)

(assert (=> b!1109 (= e!725 (+ 1 (size!23 (tail!235 (tail!235 (tail!235 (rear!47 queue!67)))))))))

(assert (= (and d!516 c!251) b!1108))

(assert (= (and d!516 (not c!251)) b!1109))

(declare-fun m!1113 () Bool)

(assert (=> b!1109 m!1113))

(assert (=> b!1024 d!516))

(declare-fun d!518 () Bool)

(declare-fun lt!199 () Int)

(assert (=> d!518 (>= lt!199 0)))

(declare-fun e!726 () Int)

(assert (=> d!518 (= lt!199 e!726)))

(declare-fun c!252 () Bool)

(assert (=> d!518 (= c!252 (is-Nil!52 lt!169))))

(assert (=> d!518 (= (size!23 lt!169) lt!199)))

(declare-fun b!1110 () Bool)

(assert (=> b!1110 (= e!726 0)))

(declare-fun b!1111 () Bool)

(assert (=> b!1111 (= e!726 (+ 1 (size!23 (tail!235 lt!169))))))

(assert (= (and d!518 c!252) b!1110))

(assert (= (and d!518 (not c!252)) b!1111))

(declare-fun m!1115 () Bool)

(assert (=> b!1111 m!1115))

(assert (=> d!446 d!518))

(assert (=> d!446 d!462))

(declare-fun d!520 () Bool)

(declare-fun lt!200 () Int)

(assert (=> d!520 (>= lt!200 0)))

(declare-fun e!727 () Int)

(assert (=> d!520 (= lt!200 e!727)))

(declare-fun c!253 () Bool)

(assert (=> d!520 (= c!253 (is-Nil!52 (reverse!5 (Cons!51 e2!3 (rear!47 q1!1)))))))

(assert (=> d!520 (= (size!23 (reverse!5 (Cons!51 e2!3 (rear!47 q1!1)))) lt!200)))

(declare-fun b!1112 () Bool)

(assert (=> b!1112 (= e!727 0)))

(declare-fun b!1113 () Bool)

(assert (=> b!1113 (= e!727 (+ 1 (size!23 (tail!235 (reverse!5 (Cons!51 e2!3 (rear!47 q1!1)))))))))

(assert (= (and d!520 c!253) b!1112))

(assert (= (and d!520 (not c!253)) b!1113))

(declare-fun m!1117 () Bool)

(assert (=> b!1113 m!1117))

(assert (=> d!446 d!520))

(declare-fun d!522 () Bool)

(declare-fun lt!201 () Int)

(assert (=> d!522 (>= lt!201 0)))

(declare-fun e!728 () Int)

(assert (=> d!522 (= lt!201 e!728)))

(declare-fun c!254 () Bool)

(assert (=> d!522 (= c!254 (is-Nil!52 (tail!235 (rear!47 lt!155))))))

(assert (=> d!522 (= (size!23 (tail!235 (rear!47 lt!155))) lt!201)))

(declare-fun b!1114 () Bool)

(assert (=> b!1114 (= e!728 0)))

(declare-fun b!1115 () Bool)

(assert (=> b!1115 (= e!728 (+ 1 (size!23 (tail!235 (tail!235 (rear!47 lt!155))))))))

(assert (= (and d!522 c!254) b!1114))

(assert (= (and d!522 (not c!254)) b!1115))

(declare-fun m!1119 () Bool)

(assert (=> b!1115 m!1119))

(assert (=> b!1071 d!522))

(declare-fun d!524 () Bool)

(declare-fun e!729 () Bool)

(assert (=> d!524 e!729))

(declare-fun res!718 () Bool)

(assert (=> d!524 (=> (not res!718) (not e!729))))

(declare-fun lt!202 () List!51)

(assert (=> d!524 (= res!718 (= (size!23 lt!202) (+ (size!23 (reverse!5 (tail!235 (Cons!51 e3!1 (rear!47 q2!1))))) (size!23 (Cons!51 (head!223 (Cons!51 e3!1 (rear!47 q2!1))) Nil!52)))))))

(declare-fun e!730 () List!51)

(assert (=> d!524 (= lt!202 e!730)))

(declare-fun c!255 () Bool)

(assert (=> d!524 (= c!255 (is-Nil!52 (reverse!5 (tail!235 (Cons!51 e3!1 (rear!47 q2!1))))))))

(assert (=> d!524 (= (concat!2 (reverse!5 (tail!235 (Cons!51 e3!1 (rear!47 q2!1)))) (Cons!51 (head!223 (Cons!51 e3!1 (rear!47 q2!1))) Nil!52)) lt!202)))

(declare-fun b!1116 () Bool)

(assert (=> b!1116 (= e!730 (Cons!51 (head!223 (Cons!51 e3!1 (rear!47 q2!1))) Nil!52))))

(declare-fun b!1117 () Bool)

(assert (=> b!1117 (= e!730 (Cons!51 (head!223 (reverse!5 (tail!235 (Cons!51 e3!1 (rear!47 q2!1))))) (concat!2 (tail!235 (reverse!5 (tail!235 (Cons!51 e3!1 (rear!47 q2!1))))) (Cons!51 (head!223 (Cons!51 e3!1 (rear!47 q2!1))) Nil!52))))))

(declare-fun b!1118 () Bool)

(assert (=> b!1118 (= e!729 (= (content!22 lt!202) (union (content!22 (reverse!5 (tail!235 (Cons!51 e3!1 (rear!47 q2!1))))) (content!22 (Cons!51 (head!223 (Cons!51 e3!1 (rear!47 q2!1))) Nil!52)))))))

(assert (= (and d!524 c!255) b!1116))

(assert (= (and d!524 (not c!255)) b!1117))

(assert (= (and d!524 res!718) b!1118))

(declare-fun m!1121 () Bool)

(assert (=> d!524 m!1121))

(assert (=> d!524 m!1005))

(declare-fun m!1123 () Bool)

(assert (=> d!524 m!1123))

(declare-fun m!1125 () Bool)

(assert (=> d!524 m!1125))

(declare-fun m!1127 () Bool)

(assert (=> b!1117 m!1127))

(declare-fun m!1129 () Bool)

(assert (=> b!1118 m!1129))

(assert (=> b!1118 m!1005))

(declare-fun m!1131 () Bool)

(assert (=> b!1118 m!1131))

(declare-fun m!1133 () Bool)

(assert (=> b!1118 m!1133))

(assert (=> b!1044 d!524))

(declare-fun d!526 () Bool)

(declare-fun lt!203 () List!51)

(assert (=> d!526 (= (content!22 lt!203) (content!22 (tail!235 (Cons!51 e3!1 (rear!47 q2!1)))))))

(declare-fun e!731 () List!51)

(assert (=> d!526 (= lt!203 e!731)))

(declare-fun c!256 () Bool)

(assert (=> d!526 (= c!256 (is-Nil!52 (tail!235 (Cons!51 e3!1 (rear!47 q2!1)))))))

(assert (=> d!526 (= (reverse!5 (tail!235 (Cons!51 e3!1 (rear!47 q2!1)))) lt!203)))

(declare-fun b!1119 () Bool)

(assert (=> b!1119 (= e!731 Nil!52)))

(declare-fun b!1120 () Bool)

(assert (=> b!1120 (= e!731 (concat!2 (reverse!5 (tail!235 (tail!235 (Cons!51 e3!1 (rear!47 q2!1))))) (Cons!51 (head!223 (tail!235 (Cons!51 e3!1 (rear!47 q2!1)))) Nil!52)))))

(assert (= (and d!526 c!256) b!1119))

(assert (= (and d!526 (not c!256)) b!1120))

(declare-fun m!1135 () Bool)

(assert (=> d!526 m!1135))

(declare-fun m!1137 () Bool)

(assert (=> d!526 m!1137))

(declare-fun m!1139 () Bool)

(assert (=> b!1120 m!1139))

(assert (=> b!1120 m!1139))

(declare-fun m!1141 () Bool)

(assert (=> b!1120 m!1141))

(assert (=> b!1044 d!526))

(declare-fun d!528 () Bool)

(declare-fun lt!204 () Int)

(assert (=> d!528 (>= lt!204 0)))

(declare-fun e!732 () Int)

(assert (=> d!528 (= lt!204 e!732)))

(declare-fun c!257 () Bool)

(assert (=> d!528 (= c!257 (is-Nil!52 (tail!235 (tail!235 (front!45 queue!67)))))))

(assert (=> d!528 (= (size!23 (tail!235 (tail!235 (front!45 queue!67)))) lt!204)))

(declare-fun b!1121 () Bool)

(assert (=> b!1121 (= e!732 0)))

(declare-fun b!1122 () Bool)

(assert (=> b!1122 (= e!732 (+ 1 (size!23 (tail!235 (tail!235 (tail!235 (front!45 queue!67)))))))))

(assert (= (and d!528 c!257) b!1121))

(assert (= (and d!528 (not c!257)) b!1122))

(declare-fun m!1143 () Bool)

(assert (=> b!1122 m!1143))

(assert (=> b!1058 d!528))

(declare-fun d!530 () Bool)

(declare-fun c!258 () Bool)

(assert (=> d!530 (= c!258 (is-Nil!52 lt!169))))

(declare-fun e!733 () (Set (_ BitVec 32)))

(assert (=> d!530 (= (content!22 lt!169) e!733)))

(declare-fun b!1123 () Bool)

(assert (=> b!1123 (= e!733 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1124 () Bool)

(assert (=> b!1124 (= e!733 (union (insert (head!223 lt!169) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 lt!169))))))

(assert (= (and d!530 c!258) b!1123))

(assert (= (and d!530 (not c!258)) b!1124))

(declare-fun m!1145 () Bool)

(assert (=> b!1124 m!1145))

(declare-fun m!1147 () Bool)

(assert (=> b!1124 m!1147))

(assert (=> b!1033 d!530))

(declare-fun d!532 () Bool)

(declare-fun c!259 () Bool)

(assert (=> d!532 (= c!259 (is-Nil!52 (front!45 q1!1)))))

(declare-fun e!734 () (Set (_ BitVec 32)))

(assert (=> d!532 (= (content!22 (front!45 q1!1)) e!734)))

(declare-fun b!1125 () Bool)

(assert (=> b!1125 (= e!734 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1126 () Bool)

(assert (=> b!1126 (= e!734 (union (insert (head!223 (front!45 q1!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 (front!45 q1!1)))))))

(assert (= (and d!532 c!259) b!1125))

(assert (= (and d!532 (not c!259)) b!1126))

(declare-fun m!1149 () Bool)

(assert (=> b!1126 m!1149))

(declare-fun m!1151 () Bool)

(assert (=> b!1126 m!1151))

(assert (=> b!1033 d!532))

(declare-fun d!534 () Bool)

(declare-fun c!260 () Bool)

(assert (=> d!534 (= c!260 (is-Nil!52 (reverse!5 (Cons!51 e2!3 (rear!47 q1!1)))))))

(declare-fun e!735 () (Set (_ BitVec 32)))

(assert (=> d!534 (= (content!22 (reverse!5 (Cons!51 e2!3 (rear!47 q1!1)))) e!735)))

(declare-fun b!1127 () Bool)

(assert (=> b!1127 (= e!735 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1128 () Bool)

(assert (=> b!1128 (= e!735 (union (insert (head!223 (reverse!5 (Cons!51 e2!3 (rear!47 q1!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 (reverse!5 (Cons!51 e2!3 (rear!47 q1!1)))))))))

(assert (= (and d!534 c!260) b!1127))

(assert (= (and d!534 (not c!260)) b!1128))

(declare-fun m!1153 () Bool)

(assert (=> b!1128 m!1153))

(declare-fun m!1155 () Bool)

(assert (=> b!1128 m!1155))

(assert (=> b!1033 d!534))

(declare-fun d!536 () Bool)

(declare-fun lt!205 () Int)

(assert (=> d!536 (>= lt!205 0)))

(declare-fun e!736 () Int)

(assert (=> d!536 (= lt!205 e!736)))

(declare-fun c!261 () Bool)

(assert (=> d!536 (= c!261 (is-Nil!52 (tail!235 (front!45 queue!56))))))

(assert (=> d!536 (= (size!23 (tail!235 (front!45 queue!56))) lt!205)))

(declare-fun b!1129 () Bool)

(assert (=> b!1129 (= e!736 0)))

(declare-fun b!1130 () Bool)

(assert (=> b!1130 (= e!736 (+ 1 (size!23 (tail!235 (tail!235 (front!45 queue!56))))))))

(assert (= (and d!536 c!261) b!1129))

(assert (= (and d!536 (not c!261)) b!1130))

(declare-fun m!1157 () Bool)

(assert (=> b!1130 m!1157))

(assert (=> b!1056 d!536))

(declare-fun d!538 () Bool)

(declare-fun c!262 () Bool)

(assert (=> d!538 (= c!262 (is-Nil!52 lt!172))))

(declare-fun e!737 () (Set (_ BitVec 32)))

(assert (=> d!538 (= (content!22 lt!172) e!737)))

(declare-fun b!1131 () Bool)

(assert (=> b!1131 (= e!737 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1132 () Bool)

(assert (=> b!1132 (= e!737 (union (insert (head!223 lt!172) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 lt!172))))))

(assert (= (and d!538 c!262) b!1131))

(assert (= (and d!538 (not c!262)) b!1132))

(declare-fun m!1159 () Bool)

(assert (=> b!1132 m!1159))

(declare-fun m!1161 () Bool)

(assert (=> b!1132 m!1161))

(assert (=> d!448 d!538))

(declare-fun d!540 () Bool)

(declare-fun c!263 () Bool)

(assert (=> d!540 (= c!263 (is-Nil!52 (Cons!51 e2!3 (rear!47 q1!1))))))

(declare-fun e!738 () (Set (_ BitVec 32)))

(assert (=> d!540 (= (content!22 (Cons!51 e2!3 (rear!47 q1!1))) e!738)))

(declare-fun b!1133 () Bool)

(assert (=> b!1133 (= e!738 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1134 () Bool)

(assert (=> b!1134 (= e!738 (union (insert (head!223 (Cons!51 e2!3 (rear!47 q1!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 (Cons!51 e2!3 (rear!47 q1!1))))))))

(assert (= (and d!540 c!263) b!1133))

(assert (= (and d!540 (not c!263)) b!1134))

(declare-fun m!1163 () Bool)

(assert (=> b!1134 m!1163))

(declare-fun m!1165 () Bool)

(assert (=> b!1134 m!1165))

(assert (=> d!448 d!540))

(declare-fun d!542 () Bool)

(declare-fun lt!206 () Int)

(assert (=> d!542 (>= lt!206 0)))

(declare-fun e!739 () Int)

(assert (=> d!542 (= lt!206 e!739)))

(declare-fun c!264 () Bool)

(assert (=> d!542 (= c!264 (is-Nil!52 (front!45 lt!165)))))

(assert (=> d!542 (= (size!23 (front!45 lt!165)) lt!206)))

(declare-fun b!1135 () Bool)

(assert (=> b!1135 (= e!739 0)))

(declare-fun b!1136 () Bool)

(assert (=> b!1136 (= e!739 (+ 1 (size!23 (tail!235 (front!45 lt!165)))))))

(assert (= (and d!542 c!264) b!1135))

(assert (= (and d!542 (not c!264)) b!1136))

(declare-fun m!1167 () Bool)

(assert (=> b!1136 m!1167))

(assert (=> d!464 d!542))

(declare-fun d!544 () Bool)

(declare-fun lt!207 () Int)

(assert (=> d!544 (>= lt!207 0)))

(declare-fun e!740 () Int)

(assert (=> d!544 (= lt!207 e!740)))

(declare-fun c!265 () Bool)

(assert (=> d!544 (= c!265 (is-Nil!52 (rear!47 lt!165)))))

(assert (=> d!544 (= (size!23 (rear!47 lt!165)) lt!207)))

(declare-fun b!1137 () Bool)

(assert (=> b!1137 (= e!740 0)))

(declare-fun b!1138 () Bool)

(assert (=> b!1138 (= e!740 (+ 1 (size!23 (tail!235 (rear!47 lt!165)))))))

(assert (= (and d!544 c!265) b!1137))

(assert (= (and d!544 (not c!265)) b!1138))

(declare-fun m!1169 () Bool)

(assert (=> b!1138 m!1169))

(assert (=> d!464 d!544))

(declare-fun d!546 () Bool)

(declare-fun lt!208 () Int)

(assert (=> d!546 (>= lt!208 0)))

(declare-fun e!741 () Int)

(assert (=> d!546 (= lt!208 e!741)))

(declare-fun c!266 () Bool)

(assert (=> d!546 (= c!266 (is-Nil!52 (tail!235 (front!45 lt!155))))))

(assert (=> d!546 (= (size!23 (tail!235 (front!45 lt!155))) lt!208)))

(declare-fun b!1139 () Bool)

(assert (=> b!1139 (= e!741 0)))

(declare-fun b!1140 () Bool)

(assert (=> b!1140 (= e!741 (+ 1 (size!23 (tail!235 (tail!235 (front!45 lt!155))))))))

(assert (= (and d!546 c!266) b!1139))

(assert (= (and d!546 (not c!266)) b!1140))

(declare-fun m!1171 () Bool)

(assert (=> b!1140 m!1171))

(assert (=> b!1069 d!546))

(declare-fun d!548 () Bool)

(declare-fun lt!209 () Int)

(assert (=> d!548 (>= lt!209 0)))

(declare-fun e!742 () Int)

(assert (=> d!548 (= lt!209 e!742)))

(declare-fun c!267 () Bool)

(assert (=> d!548 (= c!267 (is-Nil!52 lt!184))))

(assert (=> d!548 (= (size!23 lt!184) lt!209)))

(declare-fun b!1141 () Bool)

(assert (=> b!1141 (= e!742 0)))

(declare-fun b!1142 () Bool)

(assert (=> b!1142 (= e!742 (+ 1 (size!23 (tail!235 lt!184))))))

(assert (= (and d!548 c!267) b!1141))

(assert (= (and d!548 (not c!267)) b!1142))

(declare-fun m!1173 () Bool)

(assert (=> b!1142 m!1173))

(assert (=> d!478 d!548))

(assert (=> d!478 d!468))

(declare-fun d!550 () Bool)

(declare-fun lt!210 () Int)

(assert (=> d!550 (>= lt!210 0)))

(declare-fun e!743 () Int)

(assert (=> d!550 (= lt!210 e!743)))

(declare-fun c!268 () Bool)

(assert (=> d!550 (= c!268 (is-Nil!52 (reverse!5 (Cons!51 e1!2 (rear!47 queue!56)))))))

(assert (=> d!550 (= (size!23 (reverse!5 (Cons!51 e1!2 (rear!47 queue!56)))) lt!210)))

(declare-fun b!1143 () Bool)

(assert (=> b!1143 (= e!743 0)))

(declare-fun b!1144 () Bool)

(assert (=> b!1144 (= e!743 (+ 1 (size!23 (tail!235 (reverse!5 (Cons!51 e1!2 (rear!47 queue!56)))))))))

(assert (= (and d!550 c!268) b!1143))

(assert (= (and d!550 (not c!268)) b!1144))

(declare-fun m!1175 () Bool)

(assert (=> b!1144 m!1175))

(assert (=> d!478 d!550))

(declare-fun d!552 () Bool)

(declare-fun e!744 () Bool)

(assert (=> d!552 e!744))

(declare-fun res!719 () Bool)

(assert (=> d!552 (=> (not res!719) (not e!744))))

(declare-fun lt!211 () List!51)

(assert (=> d!552 (= res!719 (= (size!23 lt!211) (+ (size!23 (tail!235 (front!45 q1!1))) (size!23 (reverse!5 (Cons!51 e2!3 (rear!47 q1!1)))))))))

(declare-fun e!745 () List!51)

(assert (=> d!552 (= lt!211 e!745)))

(declare-fun c!269 () Bool)

(assert (=> d!552 (= c!269 (is-Nil!52 (tail!235 (front!45 q1!1))))))

(assert (=> d!552 (= (concat!2 (tail!235 (front!45 q1!1)) (reverse!5 (Cons!51 e2!3 (rear!47 q1!1)))) lt!211)))

(declare-fun b!1145 () Bool)

(assert (=> b!1145 (= e!745 (reverse!5 (Cons!51 e2!3 (rear!47 q1!1))))))

(declare-fun b!1146 () Bool)

(assert (=> b!1146 (= e!745 (Cons!51 (head!223 (tail!235 (front!45 q1!1))) (concat!2 (tail!235 (tail!235 (front!45 q1!1))) (reverse!5 (Cons!51 e2!3 (rear!47 q1!1))))))))

(declare-fun b!1147 () Bool)

(assert (=> b!1147 (= e!744 (= (content!22 lt!211) (union (content!22 (tail!235 (front!45 q1!1))) (content!22 (reverse!5 (Cons!51 e2!3 (rear!47 q1!1)))))))))

(assert (= (and d!552 c!269) b!1145))

(assert (= (and d!552 (not c!269)) b!1146))

(assert (= (and d!552 res!719) b!1147))

(declare-fun m!1177 () Bool)

(assert (=> d!552 m!1177))

(assert (=> d!552 m!1019))

(assert (=> d!552 m!931))

(assert (=> d!552 m!971))

(assert (=> b!1146 m!931))

(declare-fun m!1179 () Bool)

(assert (=> b!1146 m!1179))

(declare-fun m!1181 () Bool)

(assert (=> b!1147 m!1181))

(assert (=> b!1147 m!1151))

(assert (=> b!1147 m!931))

(assert (=> b!1147 m!979))

(assert (=> b!1032 d!552))

(declare-fun d!554 () Bool)

(declare-fun lt!212 () Int)

(assert (=> d!554 (>= lt!212 0)))

(declare-fun e!746 () Int)

(assert (=> d!554 (= lt!212 e!746)))

(declare-fun c!270 () Bool)

(assert (=> d!554 (= c!270 (is-Nil!52 (tail!235 (Cons!51 e2!3 (rear!47 q1!1)))))))

(assert (=> d!554 (= (size!23 (tail!235 (Cons!51 e2!3 (rear!47 q1!1)))) lt!212)))

(declare-fun b!1148 () Bool)

(assert (=> b!1148 (= e!746 0)))

(declare-fun b!1149 () Bool)

(assert (=> b!1149 (= e!746 (+ 1 (size!23 (tail!235 (tail!235 (Cons!51 e2!3 (rear!47 q1!1)))))))))

(assert (= (and d!554 c!270) b!1148))

(assert (= (and d!554 (not c!270)) b!1149))

(declare-fun m!1183 () Bool)

(assert (=> b!1149 m!1183))

(assert (=> b!1050 d!554))

(declare-fun d!556 () Bool)

(declare-fun lt!213 () Int)

(assert (=> d!556 (>= lt!213 0)))

(declare-fun e!747 () Int)

(assert (=> d!556 (= lt!213 e!747)))

(declare-fun c!271 () Bool)

(assert (=> d!556 (= c!271 (is-Nil!52 (tail!235 (front!45 q1!1))))))

(assert (=> d!556 (= (size!23 (tail!235 (front!45 q1!1))) lt!213)))

(declare-fun b!1150 () Bool)

(assert (=> b!1150 (= e!747 0)))

(declare-fun b!1151 () Bool)

(assert (=> b!1151 (= e!747 (+ 1 (size!23 (tail!235 (tail!235 (front!45 q1!1))))))))

(assert (= (and d!556 c!271) b!1150))

(assert (= (and d!556 (not c!271)) b!1151))

(declare-fun m!1185 () Bool)

(assert (=> b!1151 m!1185))

(assert (=> b!1052 d!556))

(declare-fun d!558 () Bool)

(declare-fun lt!214 () Int)

(assert (=> d!558 (>= lt!214 0)))

(declare-fun e!748 () Int)

(assert (=> d!558 (= lt!214 e!748)))

(declare-fun c!272 () Bool)

(assert (=> d!558 (= c!272 (is-Nil!52 (front!45 lt!159)))))

(assert (=> d!558 (= (size!23 (front!45 lt!159)) lt!214)))

(declare-fun b!1152 () Bool)

(assert (=> b!1152 (= e!748 0)))

(declare-fun b!1153 () Bool)

(assert (=> b!1153 (= e!748 (+ 1 (size!23 (tail!235 (front!45 lt!159)))))))

(assert (= (and d!558 c!272) b!1152))

(assert (= (and d!558 (not c!272)) b!1153))

(declare-fun m!1187 () Bool)

(assert (=> b!1153 m!1187))

(assert (=> d!458 d!558))

(declare-fun d!560 () Bool)

(declare-fun lt!215 () Int)

(assert (=> d!560 (>= lt!215 0)))

(declare-fun e!749 () Int)

(assert (=> d!560 (= lt!215 e!749)))

(declare-fun c!273 () Bool)

(assert (=> d!560 (= c!273 (is-Nil!52 (rear!47 lt!159)))))

(assert (=> d!560 (= (size!23 (rear!47 lt!159)) lt!215)))

(declare-fun b!1154 () Bool)

(assert (=> b!1154 (= e!749 0)))

(declare-fun b!1155 () Bool)

(assert (=> b!1155 (= e!749 (+ 1 (size!23 (tail!235 (rear!47 lt!159)))))))

(assert (= (and d!560 c!273) b!1154))

(assert (= (and d!560 (not c!273)) b!1155))

(declare-fun m!1189 () Bool)

(assert (=> b!1155 m!1189))

(assert (=> d!458 d!560))

(declare-fun d!562 () Bool)

(declare-fun lt!216 () Int)

(assert (=> d!562 (>= lt!216 0)))

(declare-fun e!750 () Int)

(assert (=> d!562 (= lt!216 e!750)))

(declare-fun c!274 () Bool)

(assert (=> d!562 (= c!274 (is-Nil!52 (front!45 lt!164)))))

(assert (=> d!562 (= (size!23 (front!45 lt!164)) lt!216)))

(declare-fun b!1156 () Bool)

(assert (=> b!1156 (= e!750 0)))

(declare-fun b!1157 () Bool)

(assert (=> b!1157 (= e!750 (+ 1 (size!23 (tail!235 (front!45 lt!164)))))))

(assert (= (and d!562 c!274) b!1156))

(assert (= (and d!562 (not c!274)) b!1157))

(declare-fun m!1191 () Bool)

(assert (=> b!1157 m!1191))

(assert (=> d!472 d!562))

(declare-fun d!564 () Bool)

(declare-fun lt!217 () Int)

(assert (=> d!564 (>= lt!217 0)))

(declare-fun e!751 () Int)

(assert (=> d!564 (= lt!217 e!751)))

(declare-fun c!275 () Bool)

(assert (=> d!564 (= c!275 (is-Nil!52 (rear!47 lt!164)))))

(assert (=> d!564 (= (size!23 (rear!47 lt!164)) lt!217)))

(declare-fun b!1158 () Bool)

(assert (=> b!1158 (= e!751 0)))

(declare-fun b!1159 () Bool)

(assert (=> b!1159 (= e!751 (+ 1 (size!23 (tail!235 (rear!47 lt!164)))))))

(assert (= (and d!564 c!275) b!1158))

(assert (= (and d!564 (not c!275)) b!1159))

(declare-fun m!1193 () Bool)

(assert (=> b!1159 m!1193))

(assert (=> d!472 d!564))

(declare-fun d!566 () Bool)

(declare-fun lt!218 () Int)

(assert (=> d!566 (>= lt!218 0)))

(declare-fun e!752 () Int)

(assert (=> d!566 (= lt!218 e!752)))

(declare-fun c!276 () Bool)

(assert (=> d!566 (= c!276 (is-Nil!52 (tail!235 (rear!47 lt!156))))))

(assert (=> d!566 (= (size!23 (tail!235 (rear!47 lt!156))) lt!218)))

(declare-fun b!1160 () Bool)

(assert (=> b!1160 (= e!752 0)))

(declare-fun b!1161 () Bool)

(assert (=> b!1161 (= e!752 (+ 1 (size!23 (tail!235 (tail!235 (rear!47 lt!156))))))))

(assert (= (and d!566 c!276) b!1160))

(assert (= (and d!566 (not c!276)) b!1161))

(declare-fun m!1195 () Bool)

(assert (=> b!1161 m!1195))

(assert (=> b!1048 d!566))

(declare-fun d!568 () Bool)

(declare-fun e!753 () Bool)

(assert (=> d!568 e!753))

(declare-fun res!720 () Bool)

(assert (=> d!568 (=> (not res!720) (not e!753))))

(declare-fun lt!219 () List!51)

(assert (=> d!568 (= res!720 (= (size!23 lt!219) (+ (size!23 (reverse!5 (tail!235 (Cons!51 e1!2 (rear!47 queue!56))))) (size!23 (Cons!51 (head!223 (Cons!51 e1!2 (rear!47 queue!56))) Nil!52)))))))

(declare-fun e!754 () List!51)

(assert (=> d!568 (= lt!219 e!754)))

(declare-fun c!277 () Bool)

(assert (=> d!568 (= c!277 (is-Nil!52 (reverse!5 (tail!235 (Cons!51 e1!2 (rear!47 queue!56))))))))

(assert (=> d!568 (= (concat!2 (reverse!5 (tail!235 (Cons!51 e1!2 (rear!47 queue!56)))) (Cons!51 (head!223 (Cons!51 e1!2 (rear!47 queue!56))) Nil!52)) lt!219)))

(declare-fun b!1162 () Bool)

(assert (=> b!1162 (= e!754 (Cons!51 (head!223 (Cons!51 e1!2 (rear!47 queue!56))) Nil!52))))

(declare-fun b!1163 () Bool)

(assert (=> b!1163 (= e!754 (Cons!51 (head!223 (reverse!5 (tail!235 (Cons!51 e1!2 (rear!47 queue!56))))) (concat!2 (tail!235 (reverse!5 (tail!235 (Cons!51 e1!2 (rear!47 queue!56))))) (Cons!51 (head!223 (Cons!51 e1!2 (rear!47 queue!56))) Nil!52))))))

(declare-fun b!1164 () Bool)

(assert (=> b!1164 (= e!753 (= (content!22 lt!219) (union (content!22 (reverse!5 (tail!235 (Cons!51 e1!2 (rear!47 queue!56))))) (content!22 (Cons!51 (head!223 (Cons!51 e1!2 (rear!47 queue!56))) Nil!52)))))))

(assert (= (and d!568 c!277) b!1162))

(assert (= (and d!568 (not c!277)) b!1163))

(assert (= (and d!568 res!720) b!1164))

(declare-fun m!1197 () Bool)

(assert (=> d!568 m!1197))

(assert (=> d!568 m!1055))

(declare-fun m!1199 () Bool)

(assert (=> d!568 m!1199))

(declare-fun m!1201 () Bool)

(assert (=> d!568 m!1201))

(declare-fun m!1203 () Bool)

(assert (=> b!1163 m!1203))

(declare-fun m!1205 () Bool)

(assert (=> b!1164 m!1205))

(assert (=> b!1164 m!1055))

(declare-fun m!1207 () Bool)

(assert (=> b!1164 m!1207))

(declare-fun m!1209 () Bool)

(assert (=> b!1164 m!1209))

(assert (=> b!1067 d!568))

(declare-fun d!570 () Bool)

(declare-fun lt!220 () List!51)

(assert (=> d!570 (= (content!22 lt!220) (content!22 (tail!235 (Cons!51 e1!2 (rear!47 queue!56)))))))

(declare-fun e!755 () List!51)

(assert (=> d!570 (= lt!220 e!755)))

(declare-fun c!278 () Bool)

(assert (=> d!570 (= c!278 (is-Nil!52 (tail!235 (Cons!51 e1!2 (rear!47 queue!56)))))))

(assert (=> d!570 (= (reverse!5 (tail!235 (Cons!51 e1!2 (rear!47 queue!56)))) lt!220)))

(declare-fun b!1165 () Bool)

(assert (=> b!1165 (= e!755 Nil!52)))

(declare-fun b!1166 () Bool)

(assert (=> b!1166 (= e!755 (concat!2 (reverse!5 (tail!235 (tail!235 (Cons!51 e1!2 (rear!47 queue!56))))) (Cons!51 (head!223 (tail!235 (Cons!51 e1!2 (rear!47 queue!56)))) Nil!52)))))

(assert (= (and d!570 c!278) b!1165))

(assert (= (and d!570 (not c!278)) b!1166))

(declare-fun m!1211 () Bool)

(assert (=> d!570 m!1211))

(assert (=> d!570 m!1093))

(declare-fun m!1213 () Bool)

(assert (=> b!1166 m!1213))

(assert (=> b!1166 m!1213))

(declare-fun m!1215 () Bool)

(assert (=> b!1166 m!1215))

(assert (=> b!1067 d!570))

(declare-fun d!572 () Bool)

(declare-fun lt!221 () Int)

(assert (=> d!572 (>= lt!221 0)))

(declare-fun e!756 () Int)

(assert (=> d!572 (= lt!221 e!756)))

(declare-fun c!279 () Bool)

(assert (=> d!572 (= c!279 (is-Nil!52 (tail!235 (front!45 q2!1))))))

(assert (=> d!572 (= (size!23 (tail!235 (front!45 q2!1))) lt!221)))

(declare-fun b!1167 () Bool)

(assert (=> b!1167 (= e!756 0)))

(declare-fun b!1168 () Bool)

(assert (=> b!1168 (= e!756 (+ 1 (size!23 (tail!235 (tail!235 (front!45 q2!1))))))))

(assert (= (and d!572 c!279) b!1167))

(assert (= (and d!572 (not c!279)) b!1168))

(declare-fun m!1217 () Bool)

(assert (=> b!1168 m!1217))

(assert (=> b!1062 d!572))

(declare-fun d!574 () Bool)

(declare-fun c!280 () Bool)

(assert (=> d!574 (= c!280 (is-Nil!52 lt!174))))

(declare-fun e!757 () (Set (_ BitVec 32)))

(assert (=> d!574 (= (content!22 lt!174) e!757)))

(declare-fun b!1169 () Bool)

(assert (=> b!1169 (= e!757 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1170 () Bool)

(assert (=> b!1170 (= e!757 (union (insert (head!223 lt!174) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 lt!174))))))

(assert (= (and d!574 c!280) b!1169))

(assert (= (and d!574 (not c!280)) b!1170))

(declare-fun m!1219 () Bool)

(assert (=> b!1170 m!1219))

(declare-fun m!1221 () Bool)

(assert (=> b!1170 m!1221))

(assert (=> d!452 d!574))

(declare-fun d!576 () Bool)

(declare-fun c!281 () Bool)

(assert (=> d!576 (= c!281 (is-Nil!52 (Cons!51 e3!1 (rear!47 q2!1))))))

(declare-fun e!758 () (Set (_ BitVec 32)))

(assert (=> d!576 (= (content!22 (Cons!51 e3!1 (rear!47 q2!1))) e!758)))

(declare-fun b!1171 () Bool)

(assert (=> b!1171 (= e!758 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1172 () Bool)

(assert (=> b!1172 (= e!758 (union (insert (head!223 (Cons!51 e3!1 (rear!47 q2!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 (Cons!51 e3!1 (rear!47 q2!1))))))))

(assert (= (and d!576 c!281) b!1171))

(assert (= (and d!576 (not c!281)) b!1172))

(declare-fun m!1223 () Bool)

(assert (=> b!1172 m!1223))

(assert (=> b!1172 m!1137))

(assert (=> d!452 d!576))

(declare-fun d!578 () Bool)

(declare-fun c!282 () Bool)

(assert (=> d!578 (= c!282 (is-Nil!52 lt!184))))

(declare-fun e!759 () (Set (_ BitVec 32)))

(assert (=> d!578 (= (content!22 lt!184) e!759)))

(declare-fun b!1173 () Bool)

(assert (=> b!1173 (= e!759 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1174 () Bool)

(assert (=> b!1174 (= e!759 (union (insert (head!223 lt!184) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 lt!184))))))

(assert (= (and d!578 c!282) b!1173))

(assert (= (and d!578 (not c!282)) b!1174))

(declare-fun m!1225 () Bool)

(assert (=> b!1174 m!1225))

(declare-fun m!1227 () Bool)

(assert (=> b!1174 m!1227))

(assert (=> b!1065 d!578))

(declare-fun d!580 () Bool)

(declare-fun c!283 () Bool)

(assert (=> d!580 (= c!283 (is-Nil!52 (front!45 queue!56)))))

(declare-fun e!760 () (Set (_ BitVec 32)))

(assert (=> d!580 (= (content!22 (front!45 queue!56)) e!760)))

(declare-fun b!1175 () Bool)

(assert (=> b!1175 (= e!760 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1176 () Bool)

(assert (=> b!1176 (= e!760 (union (insert (head!223 (front!45 queue!56)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 (front!45 queue!56)))))))

(assert (= (and d!580 c!283) b!1175))

(assert (= (and d!580 (not c!283)) b!1176))

(declare-fun m!1229 () Bool)

(assert (=> b!1176 m!1229))

(assert (=> b!1176 m!1105))

(assert (=> b!1065 d!580))

(declare-fun d!582 () Bool)

(declare-fun c!284 () Bool)

(assert (=> d!582 (= c!284 (is-Nil!52 (reverse!5 (Cons!51 e1!2 (rear!47 queue!56)))))))

(declare-fun e!761 () (Set (_ BitVec 32)))

(assert (=> d!582 (= (content!22 (reverse!5 (Cons!51 e1!2 (rear!47 queue!56)))) e!761)))

(declare-fun b!1177 () Bool)

(assert (=> b!1177 (= e!761 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1178 () Bool)

(assert (=> b!1178 (= e!761 (union (insert (head!223 (reverse!5 (Cons!51 e1!2 (rear!47 queue!56)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!235 (reverse!5 (Cons!51 e1!2 (rear!47 queue!56)))))))))

(assert (= (and d!582 c!284) b!1177))

(assert (= (and d!582 (not c!284)) b!1178))

(declare-fun m!1231 () Bool)

(assert (=> b!1178 m!1231))

(declare-fun m!1233 () Bool)

(assert (=> b!1178 m!1233))

(assert (=> b!1065 d!582))

(declare-fun d!584 () Bool)

(declare-fun e!762 () Bool)

(assert (=> d!584 e!762))

(declare-fun res!721 () Bool)

(assert (=> d!584 (=> (not res!721) (not e!762))))

(declare-fun lt!222 () List!51)

(assert (=> d!584 (= res!721 (= (size!23 lt!222) (+ (size!23 (reverse!5 (tail!235 (Cons!51 e2!3 (rear!47 q1!1))))) (size!23 (Cons!51 (head!223 (Cons!51 e2!3 (rear!47 q1!1))) Nil!52)))))))

(declare-fun e!763 () List!51)

(assert (=> d!584 (= lt!222 e!763)))

(declare-fun c!285 () Bool)

(assert (=> d!584 (= c!285 (is-Nil!52 (reverse!5 (tail!235 (Cons!51 e2!3 (rear!47 q1!1))))))))

(assert (=> d!584 (= (concat!2 (reverse!5 (tail!235 (Cons!51 e2!3 (rear!47 q1!1)))) (Cons!51 (head!223 (Cons!51 e2!3 (rear!47 q1!1))) Nil!52)) lt!222)))

(declare-fun b!1179 () Bool)

(assert (=> b!1179 (= e!763 (Cons!51 (head!223 (Cons!51 e2!3 (rear!47 q1!1))) Nil!52))))

(declare-fun b!1180 () Bool)

(assert (=> b!1180 (= e!763 (Cons!51 (head!223 (reverse!5 (tail!235 (Cons!51 e2!3 (rear!47 q1!1))))) (concat!2 (tail!235 (reverse!5 (tail!235 (Cons!51 e2!3 (rear!47 q1!1))))) (Cons!51 (head!223 (Cons!51 e2!3 (rear!47 q1!1))) Nil!52))))))

(declare-fun b!1181 () Bool)

(assert (=> b!1181 (= e!762 (= (content!22 lt!222) (union (content!22 (reverse!5 (tail!235 (Cons!51 e2!3 (rear!47 q1!1))))) (content!22 (Cons!51 (head!223 (Cons!51 e2!3 (rear!47 q1!1))) Nil!52)))))))

(assert (= (and d!584 c!285) b!1179))

(assert (= (and d!584 (not c!285)) b!1180))

(assert (= (and d!584 res!721) b!1181))

(declare-fun m!1235 () Bool)

(assert (=> d!584 m!1235))

(assert (=> d!584 m!985))

(declare-fun m!1237 () Bool)

(assert (=> d!584 m!1237))

(declare-fun m!1239 () Bool)

(assert (=> d!584 m!1239))

(declare-fun m!1241 () Bool)

(assert (=> b!1180 m!1241))

(declare-fun m!1243 () Bool)

(assert (=> b!1181 m!1243))

(assert (=> b!1181 m!985))

(declare-fun m!1245 () Bool)

(assert (=> b!1181 m!1245))

(declare-fun m!1247 () Bool)

(assert (=> b!1181 m!1247))

(assert (=> b!1039 d!584))

(declare-fun d!586 () Bool)

(declare-fun lt!223 () List!51)

(assert (=> d!586 (= (content!22 lt!223) (content!22 (tail!235 (Cons!51 e2!3 (rear!47 q1!1)))))))

(declare-fun e!764 () List!51)

(assert (=> d!586 (= lt!223 e!764)))

(declare-fun c!286 () Bool)

(assert (=> d!586 (= c!286 (is-Nil!52 (tail!235 (Cons!51 e2!3 (rear!47 q1!1)))))))

(assert (=> d!586 (= (reverse!5 (tail!235 (Cons!51 e2!3 (rear!47 q1!1)))) lt!223)))

(declare-fun b!1182 () Bool)

(assert (=> b!1182 (= e!764 Nil!52)))

(declare-fun b!1183 () Bool)

(assert (=> b!1183 (= e!764 (concat!2 (reverse!5 (tail!235 (tail!235 (Cons!51 e2!3 (rear!47 q1!1))))) (Cons!51 (head!223 (tail!235 (Cons!51 e2!3 (rear!47 q1!1)))) Nil!52)))))

(assert (= (and d!586 c!286) b!1182))

(assert (= (and d!586 (not c!286)) b!1183))

(declare-fun m!1249 () Bool)

(assert (=> d!586 m!1249))

(assert (=> d!586 m!1165))

(declare-fun m!1251 () Bool)

(assert (=> b!1183 m!1251))

(assert (=> b!1183 m!1251))

(declare-fun m!1253 () Bool)

(assert (=> b!1183 m!1253))

(assert (=> b!1039 d!586))

(declare-fun d!588 () Bool)

(declare-fun lt!224 () Int)

(assert (=> d!588 (>= lt!224 0)))

(declare-fun e!765 () Int)

(assert (=> d!588 (= lt!224 e!765)))

(declare-fun c!287 () Bool)

(assert (=> d!588 (= c!287 (is-Nil!52 (tail!235 (rear!47 lt!154))))))

(assert (=> d!588 (= (size!23 (tail!235 (rear!47 lt!154))) lt!224)))

(declare-fun b!1184 () Bool)

(assert (=> b!1184 (= e!765 0)))

(declare-fun b!1185 () Bool)

(assert (=> b!1185 (= e!765 (+ 1 (size!23 (tail!235 (tail!235 (rear!47 lt!154))))))))

(assert (= (and d!588 c!287) b!1184))

(assert (= (and d!588 (not c!287)) b!1185))

(declare-fun m!1255 () Bool)

(assert (=> b!1185 m!1255))

(assert (=> b!1075 d!588))

(push 1)

(assert (not b!1083))

(assert (not b!1103))

(assert (not b!1101))

(assert (not b!1109))

(assert (not d!552))

(assert (not b!1090))

(assert (not b!1170))

(assert (not b!1111))

(assert (not b!1172))

(assert (not b!1142))

(assert (not d!524))

(assert (not b!1130))

(assert (not d!570))

(assert (not b!1132))

(assert (not b!1100))

(assert (not b!1113))

(assert (not b!1136))

(assert (not b!1163))

(assert (not b!1140))

(assert (not b!1134))

(assert (not b!1118))

(assert (not d!568))

(assert (not b!1185))

(assert (not b!1124))

(assert (not b!1107))

(assert (not b!1144))

(assert (not b!1085))

(assert (not b!1105))

(assert (not b!1174))

(assert (not b!1098))

(assert (not d!586))

(assert (not b!1096))

(assert (not b!1138))

(assert (not b!1115))

(assert (not b!1094))

(assert (not b!1149))

(assert (not b!1159))

(assert (not b!1157))

(assert (not b!1087))

(assert (not b!1180))

(assert (not b!1155))

(assert (not d!498))

(assert (not b!1126))

(assert (not b!1089))

(assert (not b!1183))

(assert (not b!1166))

(assert (not b!1147))

(assert (not b!1164))

(assert (not b!1122))

(assert (not b!1178))

(assert (not b!1117))

(assert (not b!1120))

(assert (not d!508))

(assert (not d!584))

(assert (not b!1128))

(assert (not b!1181))

(assert (not d!526))

(assert (not b!1153))

(assert (not b!1146))

(assert (not b!1077))

(assert (not b!1176))

(assert (not b!1168))

(assert (not b!1161))

(assert (not b!1151))

(assert (not b!1092))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

