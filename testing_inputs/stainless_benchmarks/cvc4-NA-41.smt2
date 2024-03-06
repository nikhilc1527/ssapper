; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!258 () Bool)

(assert start!258)

(declare-fun b!1727 () Bool)

(declare-fun res!831 () Bool)

(declare-fun e!1034 () Bool)

(assert (=> b!1727 (=> (not res!831) (not e!1034))))

(declare-datatypes () ((List!54 (Cons!54 (head!226 (_ BitVec 32)) (tail!238 List!54)) (Nil!55))))

(declare-datatypes () ((AbsQueue!6 (Queue!5 (front!51 List!54) (rear!53 List!54)))))

(declare-fun q4!1 () AbsQueue!6)

(declare-fun q3!1 () AbsQueue!6)

(declare-fun tail!159 (AbsQueue!6) AbsQueue!6)

(assert (=> b!1727 (= res!831 (= q4!1 (tail!159 q3!1)))))

(declare-fun res!832 () Bool)

(assert (=> start!258 (=> (not res!832) (not e!1034))))

(declare-fun queue!56 () AbsQueue!6)

(declare-fun isEmpty!12 (AbsQueue!6) Bool)

(assert (=> start!258 (= res!832 (isEmpty!12 queue!56))))

(assert (=> start!258 e!1034))

(assert (=> start!258 true))

(declare-fun b!1728 () Bool)

(declare-fun e!1035 () Bool)

(declare-fun queue!73 () AbsQueue!6)

(assert (=> b!1728 (= e!1035 (isEmpty!12 queue!73))))

(declare-fun b!1729 () Bool)

(declare-fun res!834 () Bool)

(assert (=> b!1729 (=> (not res!834) (not e!1034))))

(declare-fun e1prime!1 () (_ BitVec 32))

(declare-fun front!8 (AbsQueue!6) (_ BitVec 32))

(assert (=> b!1729 (= res!834 (= e1prime!1 (front!8 q3!1)))))

(declare-fun b!1730 () Bool)

(declare-fun res!836 () Bool)

(assert (=> b!1730 (=> (not res!836) (not e!1034))))

(declare-fun e2prime!1 () (_ BitVec 32))

(assert (=> b!1730 (= res!836 (= e2prime!1 (front!8 q4!1)))))

(declare-fun b!1731 () Bool)

(declare-fun res!835 () Bool)

(assert (=> b!1731 (=> (not res!835) (not e!1034))))

(declare-fun q5!1 () AbsQueue!6)

(assert (=> b!1731 (= res!835 (= q5!1 (tail!159 q4!1)))))

(declare-fun b!1732 () Bool)

(declare-fun res!829 () Bool)

(assert (=> b!1732 (=> (not res!829) (not e!1034))))

(assert (=> b!1732 (= res!829 (= queue!73 q5!1))))

(declare-fun b!1733 () Bool)

(declare-fun res!837 () Bool)

(assert (=> b!1733 (=> (not res!837) (not e!1034))))

(declare-fun e3!1 () (_ BitVec 32))

(declare-fun q2!1 () AbsQueue!6)

(declare-fun enqueue!0 (AbsQueue!6 (_ BitVec 32)) AbsQueue!6)

(assert (=> b!1733 (= res!837 (= q3!1 (enqueue!0 q2!1 e3!1)))))

(declare-fun b!1734 () Bool)

(assert (=> b!1734 (= e!1034 e!1035)))

(declare-fun res!838 () Bool)

(assert (=> b!1734 (=> res!838 e!1035)))

(declare-fun isAmortized!0 (AbsQueue!6) Bool)

(assert (=> b!1734 (= res!838 (not (isAmortized!0 queue!73)))))

(declare-fun b!1735 () Bool)

(declare-fun res!833 () Bool)

(assert (=> b!1735 (=> (not res!833) (not e!1034))))

(declare-fun q1!1 () AbsQueue!6)

(declare-fun e2!3 () (_ BitVec 32))

(assert (=> b!1735 (= res!833 (= q2!1 (enqueue!0 q1!1 e2!3)))))

(declare-fun b!1736 () Bool)

(declare-fun res!830 () Bool)

(assert (=> b!1736 (=> (not res!830) (not e!1034))))

(declare-fun e1!2 () (_ BitVec 32))

(assert (=> b!1736 (= res!830 (= q1!1 (enqueue!0 queue!56 e1!2)))))

(assert (= (and start!258 res!832) b!1736))

(assert (= (and b!1736 res!830) b!1735))

(assert (= (and b!1735 res!833) b!1733))

(assert (= (and b!1733 res!837) b!1729))

(assert (= (and b!1729 res!834) b!1727))

(assert (= (and b!1727 res!831) b!1730))

(assert (= (and b!1730 res!836) b!1731))

(assert (= (and b!1731 res!835) b!1732))

(assert (= (and b!1732 res!829) b!1734))

(assert (= (and b!1734 (not res!838)) b!1728))

(declare-fun m!2231 () Bool)

(assert (=> b!1734 m!2231))

(declare-fun m!2233 () Bool)

(assert (=> b!1731 m!2233))

(declare-fun m!2235 () Bool)

(assert (=> b!1730 m!2235))

(declare-fun m!2237 () Bool)

(assert (=> b!1727 m!2237))

(declare-fun m!2239 () Bool)

(assert (=> b!1733 m!2239))

(declare-fun m!2241 () Bool)

(assert (=> b!1736 m!2241))

(declare-fun m!2243 () Bool)

(assert (=> b!1728 m!2243))

(declare-fun m!2245 () Bool)

(assert (=> b!1729 m!2245))

(declare-fun m!2247 () Bool)

(assert (=> b!1735 m!2247))

(declare-fun m!2249 () Bool)

(assert (=> start!258 m!2249))

(push 1)

(assert (not b!1735))

(assert (not b!1728))

(assert (not b!1733))

(assert (not b!1730))

(assert (not b!1731))

(assert (not start!258))

(assert (not b!1729))

(assert (not b!1736))

(assert (not b!1734))

(assert (not b!1727))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1060 () Bool)

(declare-fun lt!417 () AbsQueue!6)

(assert (=> d!1060 (isAmortized!0 lt!417)))

(declare-fun amortizedQueue!0 (List!54 List!54) AbsQueue!6)

(assert (=> d!1060 (= lt!417 (amortizedQueue!0 (tail!238 (front!51 q4!1)) (rear!53 q4!1)))))

(declare-fun e!1038 () Bool)

(assert (=> d!1060 e!1038))

(declare-fun res!841 () Bool)

(assert (=> d!1060 (=> (not res!841) (not e!1038))))

(assert (=> d!1060 (= res!841 (isAmortized!0 q4!1))))

(assert (=> d!1060 (= (tail!159 q4!1) lt!417)))

(declare-fun b!1739 () Bool)

(assert (=> b!1739 (= e!1038 (not (isEmpty!12 q4!1)))))

(assert (= (and d!1060 res!841) b!1739))

(declare-fun m!2251 () Bool)

(assert (=> d!1060 m!2251))

(declare-fun m!2253 () Bool)

(assert (=> d!1060 m!2253))

(declare-fun m!2255 () Bool)

(assert (=> d!1060 m!2255))

(declare-fun m!2257 () Bool)

(assert (=> b!1739 m!2257))

(assert (=> b!1731 d!1060))

(declare-fun d!1062 () Bool)

(declare-fun lt!418 () AbsQueue!6)

(assert (=> d!1062 (isAmortized!0 lt!418)))

(assert (=> d!1062 (= lt!418 (amortizedQueue!0 (tail!238 (front!51 q3!1)) (rear!53 q3!1)))))

(declare-fun e!1039 () Bool)

(assert (=> d!1062 e!1039))

(declare-fun res!842 () Bool)

(assert (=> d!1062 (=> (not res!842) (not e!1039))))

(assert (=> d!1062 (= res!842 (isAmortized!0 q3!1))))

(assert (=> d!1062 (= (tail!159 q3!1) lt!418)))

(declare-fun b!1740 () Bool)

(assert (=> b!1740 (= e!1039 (not (isEmpty!12 q3!1)))))

(assert (= (and d!1062 res!842) b!1740))

(declare-fun m!2259 () Bool)

(assert (=> d!1062 m!2259))

(declare-fun m!2261 () Bool)

(assert (=> d!1062 m!2261))

(declare-fun m!2263 () Bool)

(assert (=> d!1062 m!2263))

(declare-fun m!2265 () Bool)

(assert (=> b!1740 m!2265))

(assert (=> b!1727 d!1062))

(declare-fun d!1064 () Bool)

(assert (=> d!1064 (= (isEmpty!12 queue!56) (and (is-Nil!55 (front!51 queue!56)) (is-Nil!55 (rear!53 queue!56))))))

(assert (=> start!258 d!1064))

(declare-fun d!1066 () Bool)

(assert (=> d!1066 (= (front!8 q4!1) (head!226 (front!51 q4!1)))))

(assert (=> b!1730 d!1066))

(declare-fun d!1068 () Bool)

(declare-fun lt!421 () AbsQueue!6)

(assert (=> d!1068 (isAmortized!0 lt!421)))

(assert (=> d!1068 (= lt!421 (amortizedQueue!0 (front!51 q2!1) (Cons!54 e3!1 (rear!53 q2!1))))))

(assert (=> d!1068 (= (enqueue!0 q2!1 e3!1) lt!421)))

(declare-fun bs!192 () Bool)

(assert (= bs!192 d!1068))

(declare-fun m!2267 () Bool)

(assert (=> bs!192 m!2267))

(declare-fun m!2269 () Bool)

(assert (=> bs!192 m!2269))

(assert (=> b!1733 d!1068))

(declare-fun d!1070 () Bool)

(declare-fun size!23 (List!54) Int)

(assert (=> d!1070 (= (isAmortized!0 queue!73) (>= (size!23 (front!51 queue!73)) (size!23 (rear!53 queue!73))))))

(declare-fun bs!193 () Bool)

(assert (= bs!193 d!1070))

(declare-fun m!2271 () Bool)

(assert (=> bs!193 m!2271))

(declare-fun m!2273 () Bool)

(assert (=> bs!193 m!2273))

(assert (=> b!1734 d!1070))

(declare-fun d!1072 () Bool)

(declare-fun lt!422 () AbsQueue!6)

(assert (=> d!1072 (isAmortized!0 lt!422)))

(assert (=> d!1072 (= lt!422 (amortizedQueue!0 (front!51 q1!1) (Cons!54 e2!3 (rear!53 q1!1))))))

(assert (=> d!1072 (= (enqueue!0 q1!1 e2!3) lt!422)))

(declare-fun bs!194 () Bool)

(assert (= bs!194 d!1072))

(declare-fun m!2275 () Bool)

(assert (=> bs!194 m!2275))

(declare-fun m!2277 () Bool)

(assert (=> bs!194 m!2277))

(assert (=> b!1735 d!1072))

(declare-fun d!1074 () Bool)

(assert (=> d!1074 (= (isEmpty!12 queue!73) (and (is-Nil!55 (front!51 queue!73)) (is-Nil!55 (rear!53 queue!73))))))

(assert (=> b!1728 d!1074))

(declare-fun d!1076 () Bool)

(assert (=> d!1076 (= (front!8 q3!1) (head!226 (front!51 q3!1)))))

(assert (=> b!1729 d!1076))

(declare-fun d!1078 () Bool)

(declare-fun lt!423 () AbsQueue!6)

(assert (=> d!1078 (isAmortized!0 lt!423)))

(assert (=> d!1078 (= lt!423 (amortizedQueue!0 (front!51 queue!56) (Cons!54 e1!2 (rear!53 queue!56))))))

(assert (=> d!1078 (= (enqueue!0 queue!56 e1!2) lt!423)))

(declare-fun bs!195 () Bool)

(assert (= bs!195 d!1078))

(declare-fun m!2279 () Bool)

(assert (=> bs!195 m!2279))

(declare-fun m!2281 () Bool)

(assert (=> bs!195 m!2281))

(assert (=> b!1736 d!1078))

(push 1)

(assert (not d!1078))

(assert (not b!1740))

(assert (not b!1739))

(assert (not d!1060))

(assert (not d!1070))

(assert (not d!1062))

(assert (not d!1068))

(assert (not d!1072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1080 () Bool)

(assert (=> d!1080 (= (isEmpty!12 q4!1) (and (is-Nil!55 (front!51 q4!1)) (is-Nil!55 (rear!53 q4!1))))))

(assert (=> b!1739 d!1080))

(declare-fun d!1082 () Bool)

(declare-fun lt!426 () Int)

(assert (=> d!1082 (>= lt!426 0)))

(declare-fun e!1042 () Int)

(assert (=> d!1082 (= lt!426 e!1042)))

(declare-fun c!508 () Bool)

(assert (=> d!1082 (= c!508 (is-Nil!55 (front!51 queue!73)))))

(assert (=> d!1082 (= (size!23 (front!51 queue!73)) lt!426)))

(declare-fun b!1745 () Bool)

(assert (=> b!1745 (= e!1042 0)))

(declare-fun b!1746 () Bool)

(assert (=> b!1746 (= e!1042 (+ 1 (size!23 (tail!238 (front!51 queue!73)))))))

(assert (= (and d!1082 c!508) b!1745))

(assert (= (and d!1082 (not c!508)) b!1746))

(declare-fun m!2283 () Bool)

(assert (=> b!1746 m!2283))

(assert (=> d!1070 d!1082))

(declare-fun d!1084 () Bool)

(declare-fun lt!427 () Int)

(assert (=> d!1084 (>= lt!427 0)))

(declare-fun e!1043 () Int)

(assert (=> d!1084 (= lt!427 e!1043)))

(declare-fun c!509 () Bool)

(assert (=> d!1084 (= c!509 (is-Nil!55 (rear!53 queue!73)))))

(assert (=> d!1084 (= (size!23 (rear!53 queue!73)) lt!427)))

(declare-fun b!1747 () Bool)

(assert (=> b!1747 (= e!1043 0)))

(declare-fun b!1748 () Bool)

(assert (=> b!1748 (= e!1043 (+ 1 (size!23 (tail!238 (rear!53 queue!73)))))))

(assert (= (and d!1084 c!509) b!1747))

(assert (= (and d!1084 (not c!509)) b!1748))

(declare-fun m!2285 () Bool)

(assert (=> b!1748 m!2285))

(assert (=> d!1070 d!1084))

(declare-fun d!1086 () Bool)

(assert (=> d!1086 (= (isEmpty!12 q3!1) (and (is-Nil!55 (front!51 q3!1)) (is-Nil!55 (rear!53 q3!1))))))

(assert (=> b!1740 d!1086))

(declare-fun d!1088 () Bool)

(assert (=> d!1088 (= (isAmortized!0 lt!421) (>= (size!23 (front!51 lt!421)) (size!23 (rear!53 lt!421))))))

(declare-fun bs!196 () Bool)

(assert (= bs!196 d!1088))

(declare-fun m!2287 () Bool)

(assert (=> bs!196 m!2287))

(declare-fun m!2289 () Bool)

(assert (=> bs!196 m!2289))

(assert (=> d!1068 d!1088))

(declare-fun d!1090 () Bool)

(declare-fun lt!430 () AbsQueue!6)

(assert (=> d!1090 (isAmortized!0 lt!430)))

(declare-fun e!1046 () AbsQueue!6)

(assert (=> d!1090 (= lt!430 e!1046)))

(declare-fun c!512 () Bool)

(assert (=> d!1090 (= c!512 (<= (size!23 (Cons!54 e3!1 (rear!53 q2!1))) (size!23 (front!51 q2!1))))))

(assert (=> d!1090 (= (amortizedQueue!0 (front!51 q2!1) (Cons!54 e3!1 (rear!53 q2!1))) lt!430)))

(declare-fun b!1753 () Bool)

(assert (=> b!1753 (= e!1046 (Queue!5 (front!51 q2!1) (Cons!54 e3!1 (rear!53 q2!1))))))

(declare-fun b!1754 () Bool)

(declare-fun concat!2 (List!54 List!54) List!54)

(declare-fun reverse!5 (List!54) List!54)

(assert (=> b!1754 (= e!1046 (Queue!5 (concat!2 (front!51 q2!1) (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))) Nil!55))))

(assert (= (and d!1090 c!512) b!1753))

(assert (= (and d!1090 (not c!512)) b!1754))

(declare-fun m!2291 () Bool)

(assert (=> d!1090 m!2291))

(declare-fun m!2293 () Bool)

(assert (=> d!1090 m!2293))

(declare-fun m!2295 () Bool)

(assert (=> d!1090 m!2295))

(declare-fun m!2297 () Bool)

(assert (=> b!1754 m!2297))

(assert (=> b!1754 m!2297))

(declare-fun m!2299 () Bool)

(assert (=> b!1754 m!2299))

(assert (=> d!1068 d!1090))

(declare-fun d!1092 () Bool)

(assert (=> d!1092 (= (isAmortized!0 lt!423) (>= (size!23 (front!51 lt!423)) (size!23 (rear!53 lt!423))))))

(declare-fun bs!197 () Bool)

(assert (= bs!197 d!1092))

(declare-fun m!2301 () Bool)

(assert (=> bs!197 m!2301))

(declare-fun m!2303 () Bool)

(assert (=> bs!197 m!2303))

(assert (=> d!1078 d!1092))

(declare-fun d!1094 () Bool)

(declare-fun lt!431 () AbsQueue!6)

(assert (=> d!1094 (isAmortized!0 lt!431)))

(declare-fun e!1047 () AbsQueue!6)

(assert (=> d!1094 (= lt!431 e!1047)))

(declare-fun c!513 () Bool)

(assert (=> d!1094 (= c!513 (<= (size!23 (Cons!54 e1!2 (rear!53 queue!56))) (size!23 (front!51 queue!56))))))

(assert (=> d!1094 (= (amortizedQueue!0 (front!51 queue!56) (Cons!54 e1!2 (rear!53 queue!56))) lt!431)))

(declare-fun b!1755 () Bool)

(assert (=> b!1755 (= e!1047 (Queue!5 (front!51 queue!56) (Cons!54 e1!2 (rear!53 queue!56))))))

(declare-fun b!1756 () Bool)

(assert (=> b!1756 (= e!1047 (Queue!5 (concat!2 (front!51 queue!56) (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))) Nil!55))))

(assert (= (and d!1094 c!513) b!1755))

(assert (= (and d!1094 (not c!513)) b!1756))

(declare-fun m!2305 () Bool)

(assert (=> d!1094 m!2305))

(declare-fun m!2307 () Bool)

(assert (=> d!1094 m!2307))

(declare-fun m!2309 () Bool)

(assert (=> d!1094 m!2309))

(declare-fun m!2311 () Bool)

(assert (=> b!1756 m!2311))

(assert (=> b!1756 m!2311))

(declare-fun m!2313 () Bool)

(assert (=> b!1756 m!2313))

(assert (=> d!1078 d!1094))

(declare-fun d!1096 () Bool)

(assert (=> d!1096 (= (isAmortized!0 lt!417) (>= (size!23 (front!51 lt!417)) (size!23 (rear!53 lt!417))))))

(declare-fun bs!198 () Bool)

(assert (= bs!198 d!1096))

(declare-fun m!2315 () Bool)

(assert (=> bs!198 m!2315))

(declare-fun m!2317 () Bool)

(assert (=> bs!198 m!2317))

(assert (=> d!1060 d!1096))

(declare-fun d!1098 () Bool)

(declare-fun lt!432 () AbsQueue!6)

(assert (=> d!1098 (isAmortized!0 lt!432)))

(declare-fun e!1048 () AbsQueue!6)

(assert (=> d!1098 (= lt!432 e!1048)))

(declare-fun c!514 () Bool)

(assert (=> d!1098 (= c!514 (<= (size!23 (rear!53 q4!1)) (size!23 (tail!238 (front!51 q4!1)))))))

(assert (=> d!1098 (= (amortizedQueue!0 (tail!238 (front!51 q4!1)) (rear!53 q4!1)) lt!432)))

(declare-fun b!1757 () Bool)

(assert (=> b!1757 (= e!1048 (Queue!5 (tail!238 (front!51 q4!1)) (rear!53 q4!1)))))

(declare-fun b!1758 () Bool)

(assert (=> b!1758 (= e!1048 (Queue!5 (concat!2 (tail!238 (front!51 q4!1)) (reverse!5 (rear!53 q4!1))) Nil!55))))

(assert (= (and d!1098 c!514) b!1757))

(assert (= (and d!1098 (not c!514)) b!1758))

(declare-fun m!2319 () Bool)

(assert (=> d!1098 m!2319))

(declare-fun m!2321 () Bool)

(assert (=> d!1098 m!2321))

(declare-fun m!2323 () Bool)

(assert (=> d!1098 m!2323))

(declare-fun m!2325 () Bool)

(assert (=> b!1758 m!2325))

(assert (=> b!1758 m!2325))

(declare-fun m!2327 () Bool)

(assert (=> b!1758 m!2327))

(assert (=> d!1060 d!1098))

(declare-fun d!1100 () Bool)

(assert (=> d!1100 (= (isAmortized!0 q4!1) (>= (size!23 (front!51 q4!1)) (size!23 (rear!53 q4!1))))))

(declare-fun bs!199 () Bool)

(assert (= bs!199 d!1100))

(declare-fun m!2329 () Bool)

(assert (=> bs!199 m!2329))

(assert (=> bs!199 m!2321))

(assert (=> d!1060 d!1100))

(declare-fun d!1102 () Bool)

(assert (=> d!1102 (= (isAmortized!0 lt!418) (>= (size!23 (front!51 lt!418)) (size!23 (rear!53 lt!418))))))

(declare-fun bs!200 () Bool)

(assert (= bs!200 d!1102))

(declare-fun m!2331 () Bool)

(assert (=> bs!200 m!2331))

(declare-fun m!2333 () Bool)

(assert (=> bs!200 m!2333))

(assert (=> d!1062 d!1102))

(declare-fun d!1104 () Bool)

(declare-fun lt!433 () AbsQueue!6)

(assert (=> d!1104 (isAmortized!0 lt!433)))

(declare-fun e!1049 () AbsQueue!6)

(assert (=> d!1104 (= lt!433 e!1049)))

(declare-fun c!515 () Bool)

(assert (=> d!1104 (= c!515 (<= (size!23 (rear!53 q3!1)) (size!23 (tail!238 (front!51 q3!1)))))))

(assert (=> d!1104 (= (amortizedQueue!0 (tail!238 (front!51 q3!1)) (rear!53 q3!1)) lt!433)))

(declare-fun b!1759 () Bool)

(assert (=> b!1759 (= e!1049 (Queue!5 (tail!238 (front!51 q3!1)) (rear!53 q3!1)))))

(declare-fun b!1760 () Bool)

(assert (=> b!1760 (= e!1049 (Queue!5 (concat!2 (tail!238 (front!51 q3!1)) (reverse!5 (rear!53 q3!1))) Nil!55))))

(assert (= (and d!1104 c!515) b!1759))

(assert (= (and d!1104 (not c!515)) b!1760))

(declare-fun m!2335 () Bool)

(assert (=> d!1104 m!2335))

(declare-fun m!2337 () Bool)

(assert (=> d!1104 m!2337))

(declare-fun m!2339 () Bool)

(assert (=> d!1104 m!2339))

(declare-fun m!2341 () Bool)

(assert (=> b!1760 m!2341))

(assert (=> b!1760 m!2341))

(declare-fun m!2343 () Bool)

(assert (=> b!1760 m!2343))

(assert (=> d!1062 d!1104))

(declare-fun d!1106 () Bool)

(assert (=> d!1106 (= (isAmortized!0 q3!1) (>= (size!23 (front!51 q3!1)) (size!23 (rear!53 q3!1))))))

(declare-fun bs!201 () Bool)

(assert (= bs!201 d!1106))

(declare-fun m!2345 () Bool)

(assert (=> bs!201 m!2345))

(assert (=> bs!201 m!2337))

(assert (=> d!1062 d!1106))

(declare-fun d!1108 () Bool)

(assert (=> d!1108 (= (isAmortized!0 lt!422) (>= (size!23 (front!51 lt!422)) (size!23 (rear!53 lt!422))))))

(declare-fun bs!202 () Bool)

(assert (= bs!202 d!1108))

(declare-fun m!2347 () Bool)

(assert (=> bs!202 m!2347))

(declare-fun m!2349 () Bool)

(assert (=> bs!202 m!2349))

(assert (=> d!1072 d!1108))

(declare-fun d!1110 () Bool)

(declare-fun lt!434 () AbsQueue!6)

(assert (=> d!1110 (isAmortized!0 lt!434)))

(declare-fun e!1050 () AbsQueue!6)

(assert (=> d!1110 (= lt!434 e!1050)))

(declare-fun c!516 () Bool)

(assert (=> d!1110 (= c!516 (<= (size!23 (Cons!54 e2!3 (rear!53 q1!1))) (size!23 (front!51 q1!1))))))

(assert (=> d!1110 (= (amortizedQueue!0 (front!51 q1!1) (Cons!54 e2!3 (rear!53 q1!1))) lt!434)))

(declare-fun b!1761 () Bool)

(assert (=> b!1761 (= e!1050 (Queue!5 (front!51 q1!1) (Cons!54 e2!3 (rear!53 q1!1))))))

(declare-fun b!1762 () Bool)

(assert (=> b!1762 (= e!1050 (Queue!5 (concat!2 (front!51 q1!1) (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))) Nil!55))))

(assert (= (and d!1110 c!516) b!1761))

(assert (= (and d!1110 (not c!516)) b!1762))

(declare-fun m!2351 () Bool)

(assert (=> d!1110 m!2351))

(declare-fun m!2353 () Bool)

(assert (=> d!1110 m!2353))

(declare-fun m!2355 () Bool)

(assert (=> d!1110 m!2355))

(declare-fun m!2357 () Bool)

(assert (=> b!1762 m!2357))

(assert (=> b!1762 m!2357))

(declare-fun m!2359 () Bool)

(assert (=> b!1762 m!2359))

(assert (=> d!1072 d!1110))

(push 1)

(assert (not d!1108))

(assert (not b!1760))

(assert (not b!1748))

(assert (not d!1110))

(assert (not b!1756))

(assert (not d!1098))

(assert (not d!1092))

(assert (not d!1100))

(assert (not d!1106))

(assert (not d!1104))

(assert (not b!1746))

(assert (not d!1096))

(assert (not d!1090))

(assert (not b!1762))

(assert (not d!1088))

(assert (not b!1754))

(assert (not d!1094))

(assert (not d!1102))

(assert (not b!1758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1112 () Bool)

(declare-fun lt!435 () Int)

(assert (=> d!1112 (>= lt!435 0)))

(declare-fun e!1051 () Int)

(assert (=> d!1112 (= lt!435 e!1051)))

(declare-fun c!517 () Bool)

(assert (=> d!1112 (= c!517 (is-Nil!55 (front!51 q3!1)))))

(assert (=> d!1112 (= (size!23 (front!51 q3!1)) lt!435)))

(declare-fun b!1763 () Bool)

(assert (=> b!1763 (= e!1051 0)))

(declare-fun b!1764 () Bool)

(assert (=> b!1764 (= e!1051 (+ 1 (size!23 (tail!238 (front!51 q3!1)))))))

(assert (= (and d!1112 c!517) b!1763))

(assert (= (and d!1112 (not c!517)) b!1764))

(assert (=> b!1764 m!2339))

(assert (=> d!1106 d!1112))

(declare-fun d!1114 () Bool)

(declare-fun lt!436 () Int)

(assert (=> d!1114 (>= lt!436 0)))

(declare-fun e!1052 () Int)

(assert (=> d!1114 (= lt!436 e!1052)))

(declare-fun c!518 () Bool)

(assert (=> d!1114 (= c!518 (is-Nil!55 (rear!53 q3!1)))))

(assert (=> d!1114 (= (size!23 (rear!53 q3!1)) lt!436)))

(declare-fun b!1765 () Bool)

(assert (=> b!1765 (= e!1052 0)))

(declare-fun b!1766 () Bool)

(assert (=> b!1766 (= e!1052 (+ 1 (size!23 (tail!238 (rear!53 q3!1)))))))

(assert (= (and d!1114 c!518) b!1765))

(assert (= (and d!1114 (not c!518)) b!1766))

(declare-fun m!2361 () Bool)

(assert (=> b!1766 m!2361))

(assert (=> d!1106 d!1114))

(declare-fun d!1116 () Bool)

(declare-fun e!1057 () Bool)

(assert (=> d!1116 e!1057))

(declare-fun res!846 () Bool)

(assert (=> d!1116 (=> (not res!846) (not e!1057))))

(declare-fun lt!439 () List!54)

(assert (=> d!1116 (= res!846 (= (size!23 lt!439) (+ (size!23 (front!51 q1!1)) (size!23 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))))))))

(declare-fun e!1058 () List!54)

(assert (=> d!1116 (= lt!439 e!1058)))

(declare-fun c!521 () Bool)

(assert (=> d!1116 (= c!521 (is-Nil!55 (front!51 q1!1)))))

(assert (=> d!1116 (= (concat!2 (front!51 q1!1) (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))) lt!439)))

(declare-fun b!1773 () Bool)

(assert (=> b!1773 (= e!1058 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1))))))

(declare-fun b!1774 () Bool)

(assert (=> b!1774 (= e!1058 (Cons!54 (head!226 (front!51 q1!1)) (concat!2 (tail!238 (front!51 q1!1)) (reverse!5 (Cons!54 e2!3 (rear!53 q1!1))))))))

(declare-fun b!1775 () Bool)

(declare-fun content!22 (List!54) (Set (_ BitVec 32)))

(assert (=> b!1775 (= e!1057 (= (content!22 lt!439) (union (content!22 (front!51 q1!1)) (content!22 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))))))))

(assert (= (and d!1116 c!521) b!1773))

(assert (= (and d!1116 (not c!521)) b!1774))

(assert (= (and d!1116 res!846) b!1775))

(declare-fun m!2363 () Bool)

(assert (=> d!1116 m!2363))

(assert (=> d!1116 m!2355))

(assert (=> d!1116 m!2357))

(declare-fun m!2365 () Bool)

(assert (=> d!1116 m!2365))

(assert (=> b!1774 m!2357))

(declare-fun m!2367 () Bool)

(assert (=> b!1774 m!2367))

(declare-fun m!2369 () Bool)

(assert (=> b!1775 m!2369))

(declare-fun m!2371 () Bool)

(assert (=> b!1775 m!2371))

(assert (=> b!1775 m!2357))

(declare-fun m!2373 () Bool)

(assert (=> b!1775 m!2373))

(assert (=> b!1762 d!1116))

(declare-fun d!1118 () Bool)

(declare-fun lt!442 () List!54)

(assert (=> d!1118 (= (content!22 lt!442) (content!22 (Cons!54 e2!3 (rear!53 q1!1))))))

(declare-fun e!1061 () List!54)

(assert (=> d!1118 (= lt!442 e!1061)))

(declare-fun c!524 () Bool)

(assert (=> d!1118 (= c!524 (is-Nil!55 (Cons!54 e2!3 (rear!53 q1!1))))))

(assert (=> d!1118 (= (reverse!5 (Cons!54 e2!3 (rear!53 q1!1))) lt!442)))

(declare-fun b!1780 () Bool)

(assert (=> b!1780 (= e!1061 Nil!55)))

(declare-fun b!1781 () Bool)

(assert (=> b!1781 (= e!1061 (concat!2 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))) (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55)))))

(assert (= (and d!1118 c!524) b!1780))

(assert (= (and d!1118 (not c!524)) b!1781))

(declare-fun m!2375 () Bool)

(assert (=> d!1118 m!2375))

(declare-fun m!2377 () Bool)

(assert (=> d!1118 m!2377))

(declare-fun m!2379 () Bool)

(assert (=> b!1781 m!2379))

(assert (=> b!1781 m!2379))

(declare-fun m!2381 () Bool)

(assert (=> b!1781 m!2381))

(assert (=> b!1762 d!1118))

(declare-fun d!1120 () Bool)

(assert (=> d!1120 (= (isAmortized!0 lt!430) (>= (size!23 (front!51 lt!430)) (size!23 (rear!53 lt!430))))))

(declare-fun bs!203 () Bool)

(assert (= bs!203 d!1120))

(declare-fun m!2383 () Bool)

(assert (=> bs!203 m!2383))

(declare-fun m!2385 () Bool)

(assert (=> bs!203 m!2385))

(assert (=> d!1090 d!1120))

(declare-fun d!1122 () Bool)

(declare-fun lt!443 () Int)

(assert (=> d!1122 (>= lt!443 0)))

(declare-fun e!1062 () Int)

(assert (=> d!1122 (= lt!443 e!1062)))

(declare-fun c!525 () Bool)

(assert (=> d!1122 (= c!525 (is-Nil!55 (Cons!54 e3!1 (rear!53 q2!1))))))

(assert (=> d!1122 (= (size!23 (Cons!54 e3!1 (rear!53 q2!1))) lt!443)))

(declare-fun b!1782 () Bool)

(assert (=> b!1782 (= e!1062 0)))

(declare-fun b!1783 () Bool)

(assert (=> b!1783 (= e!1062 (+ 1 (size!23 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))))))

(assert (= (and d!1122 c!525) b!1782))

(assert (= (and d!1122 (not c!525)) b!1783))

(declare-fun m!2387 () Bool)

(assert (=> b!1783 m!2387))

(assert (=> d!1090 d!1122))

(declare-fun d!1124 () Bool)

(declare-fun lt!444 () Int)

(assert (=> d!1124 (>= lt!444 0)))

(declare-fun e!1063 () Int)

(assert (=> d!1124 (= lt!444 e!1063)))

(declare-fun c!526 () Bool)

(assert (=> d!1124 (= c!526 (is-Nil!55 (front!51 q2!1)))))

(assert (=> d!1124 (= (size!23 (front!51 q2!1)) lt!444)))

(declare-fun b!1784 () Bool)

(assert (=> b!1784 (= e!1063 0)))

(declare-fun b!1785 () Bool)

(assert (=> b!1785 (= e!1063 (+ 1 (size!23 (tail!238 (front!51 q2!1)))))))

(assert (= (and d!1124 c!526) b!1784))

(assert (= (and d!1124 (not c!526)) b!1785))

(declare-fun m!2389 () Bool)

(assert (=> b!1785 m!2389))

(assert (=> d!1090 d!1124))

(declare-fun d!1126 () Bool)

(declare-fun e!1064 () Bool)

(assert (=> d!1126 e!1064))

(declare-fun res!847 () Bool)

(assert (=> d!1126 (=> (not res!847) (not e!1064))))

(declare-fun lt!445 () List!54)

(assert (=> d!1126 (= res!847 (= (size!23 lt!445) (+ (size!23 (front!51 q2!1)) (size!23 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))))))))

(declare-fun e!1065 () List!54)

(assert (=> d!1126 (= lt!445 e!1065)))

(declare-fun c!527 () Bool)

(assert (=> d!1126 (= c!527 (is-Nil!55 (front!51 q2!1)))))

(assert (=> d!1126 (= (concat!2 (front!51 q2!1) (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))) lt!445)))

(declare-fun b!1786 () Bool)

(assert (=> b!1786 (= e!1065 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1))))))

(declare-fun b!1787 () Bool)

(assert (=> b!1787 (= e!1065 (Cons!54 (head!226 (front!51 q2!1)) (concat!2 (tail!238 (front!51 q2!1)) (reverse!5 (Cons!54 e3!1 (rear!53 q2!1))))))))

(declare-fun b!1788 () Bool)

(assert (=> b!1788 (= e!1064 (= (content!22 lt!445) (union (content!22 (front!51 q2!1)) (content!22 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))))))))

(assert (= (and d!1126 c!527) b!1786))

(assert (= (and d!1126 (not c!527)) b!1787))

(assert (= (and d!1126 res!847) b!1788))

(declare-fun m!2391 () Bool)

(assert (=> d!1126 m!2391))

(assert (=> d!1126 m!2295))

(assert (=> d!1126 m!2297))

(declare-fun m!2393 () Bool)

(assert (=> d!1126 m!2393))

(assert (=> b!1787 m!2297))

(declare-fun m!2395 () Bool)

(assert (=> b!1787 m!2395))

(declare-fun m!2397 () Bool)

(assert (=> b!1788 m!2397))

(declare-fun m!2399 () Bool)

(assert (=> b!1788 m!2399))

(assert (=> b!1788 m!2297))

(declare-fun m!2401 () Bool)

(assert (=> b!1788 m!2401))

(assert (=> b!1754 d!1126))

(declare-fun d!1128 () Bool)

(declare-fun lt!446 () List!54)

(assert (=> d!1128 (= (content!22 lt!446) (content!22 (Cons!54 e3!1 (rear!53 q2!1))))))

(declare-fun e!1066 () List!54)

(assert (=> d!1128 (= lt!446 e!1066)))

(declare-fun c!528 () Bool)

(assert (=> d!1128 (= c!528 (is-Nil!55 (Cons!54 e3!1 (rear!53 q2!1))))))

(assert (=> d!1128 (= (reverse!5 (Cons!54 e3!1 (rear!53 q2!1))) lt!446)))

(declare-fun b!1789 () Bool)

(assert (=> b!1789 (= e!1066 Nil!55)))

(declare-fun b!1790 () Bool)

(assert (=> b!1790 (= e!1066 (concat!2 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))) (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55)))))

(assert (= (and d!1128 c!528) b!1789))

(assert (= (and d!1128 (not c!528)) b!1790))

(declare-fun m!2403 () Bool)

(assert (=> d!1128 m!2403))

(declare-fun m!2405 () Bool)

(assert (=> d!1128 m!2405))

(declare-fun m!2407 () Bool)

(assert (=> b!1790 m!2407))

(assert (=> b!1790 m!2407))

(declare-fun m!2409 () Bool)

(assert (=> b!1790 m!2409))

(assert (=> b!1754 d!1128))

(declare-fun d!1130 () Bool)

(assert (=> d!1130 (= (isAmortized!0 lt!432) (>= (size!23 (front!51 lt!432)) (size!23 (rear!53 lt!432))))))

(declare-fun bs!204 () Bool)

(assert (= bs!204 d!1130))

(declare-fun m!2411 () Bool)

(assert (=> bs!204 m!2411))

(declare-fun m!2413 () Bool)

(assert (=> bs!204 m!2413))

(assert (=> d!1098 d!1130))

(declare-fun d!1132 () Bool)

(declare-fun lt!447 () Int)

(assert (=> d!1132 (>= lt!447 0)))

(declare-fun e!1067 () Int)

(assert (=> d!1132 (= lt!447 e!1067)))

(declare-fun c!529 () Bool)

(assert (=> d!1132 (= c!529 (is-Nil!55 (rear!53 q4!1)))))

(assert (=> d!1132 (= (size!23 (rear!53 q4!1)) lt!447)))

(declare-fun b!1791 () Bool)

(assert (=> b!1791 (= e!1067 0)))

(declare-fun b!1792 () Bool)

(assert (=> b!1792 (= e!1067 (+ 1 (size!23 (tail!238 (rear!53 q4!1)))))))

(assert (= (and d!1132 c!529) b!1791))

(assert (= (and d!1132 (not c!529)) b!1792))

(declare-fun m!2415 () Bool)

(assert (=> b!1792 m!2415))

(assert (=> d!1098 d!1132))

(declare-fun d!1134 () Bool)

(declare-fun lt!448 () Int)

(assert (=> d!1134 (>= lt!448 0)))

(declare-fun e!1068 () Int)

(assert (=> d!1134 (= lt!448 e!1068)))

(declare-fun c!530 () Bool)

(assert (=> d!1134 (= c!530 (is-Nil!55 (tail!238 (front!51 q4!1))))))

(assert (=> d!1134 (= (size!23 (tail!238 (front!51 q4!1))) lt!448)))

(declare-fun b!1793 () Bool)

(assert (=> b!1793 (= e!1068 0)))

(declare-fun b!1794 () Bool)

(assert (=> b!1794 (= e!1068 (+ 1 (size!23 (tail!238 (tail!238 (front!51 q4!1))))))))

(assert (= (and d!1134 c!530) b!1793))

(assert (= (and d!1134 (not c!530)) b!1794))

(declare-fun m!2417 () Bool)

(assert (=> b!1794 m!2417))

(assert (=> d!1098 d!1134))

(declare-fun d!1136 () Bool)

(declare-fun lt!449 () Int)

(assert (=> d!1136 (>= lt!449 0)))

(declare-fun e!1069 () Int)

(assert (=> d!1136 (= lt!449 e!1069)))

(declare-fun c!531 () Bool)

(assert (=> d!1136 (= c!531 (is-Nil!55 (front!51 lt!417)))))

(assert (=> d!1136 (= (size!23 (front!51 lt!417)) lt!449)))

(declare-fun b!1795 () Bool)

(assert (=> b!1795 (= e!1069 0)))

(declare-fun b!1796 () Bool)

(assert (=> b!1796 (= e!1069 (+ 1 (size!23 (tail!238 (front!51 lt!417)))))))

(assert (= (and d!1136 c!531) b!1795))

(assert (= (and d!1136 (not c!531)) b!1796))

(declare-fun m!2419 () Bool)

(assert (=> b!1796 m!2419))

(assert (=> d!1096 d!1136))

(declare-fun d!1138 () Bool)

(declare-fun lt!450 () Int)

(assert (=> d!1138 (>= lt!450 0)))

(declare-fun e!1070 () Int)

(assert (=> d!1138 (= lt!450 e!1070)))

(declare-fun c!532 () Bool)

(assert (=> d!1138 (= c!532 (is-Nil!55 (rear!53 lt!417)))))

(assert (=> d!1138 (= (size!23 (rear!53 lt!417)) lt!450)))

(declare-fun b!1797 () Bool)

(assert (=> b!1797 (= e!1070 0)))

(declare-fun b!1798 () Bool)

(assert (=> b!1798 (= e!1070 (+ 1 (size!23 (tail!238 (rear!53 lt!417)))))))

(assert (= (and d!1138 c!532) b!1797))

(assert (= (and d!1138 (not c!532)) b!1798))

(declare-fun m!2421 () Bool)

(assert (=> b!1798 m!2421))

(assert (=> d!1096 d!1138))

(declare-fun d!1140 () Bool)

(declare-fun e!1071 () Bool)

(assert (=> d!1140 e!1071))

(declare-fun res!848 () Bool)

(assert (=> d!1140 (=> (not res!848) (not e!1071))))

(declare-fun lt!451 () List!54)

(assert (=> d!1140 (= res!848 (= (size!23 lt!451) (+ (size!23 (tail!238 (front!51 q3!1))) (size!23 (reverse!5 (rear!53 q3!1))))))))

(declare-fun e!1072 () List!54)

(assert (=> d!1140 (= lt!451 e!1072)))

(declare-fun c!533 () Bool)

(assert (=> d!1140 (= c!533 (is-Nil!55 (tail!238 (front!51 q3!1))))))

(assert (=> d!1140 (= (concat!2 (tail!238 (front!51 q3!1)) (reverse!5 (rear!53 q3!1))) lt!451)))

(declare-fun b!1799 () Bool)

(assert (=> b!1799 (= e!1072 (reverse!5 (rear!53 q3!1)))))

(declare-fun b!1800 () Bool)

(assert (=> b!1800 (= e!1072 (Cons!54 (head!226 (tail!238 (front!51 q3!1))) (concat!2 (tail!238 (tail!238 (front!51 q3!1))) (reverse!5 (rear!53 q3!1)))))))

(declare-fun b!1801 () Bool)

(assert (=> b!1801 (= e!1071 (= (content!22 lt!451) (union (content!22 (tail!238 (front!51 q3!1))) (content!22 (reverse!5 (rear!53 q3!1))))))))

(assert (= (and d!1140 c!533) b!1799))

(assert (= (and d!1140 (not c!533)) b!1800))

(assert (= (and d!1140 res!848) b!1801))

(declare-fun m!2423 () Bool)

(assert (=> d!1140 m!2423))

(assert (=> d!1140 m!2339))

(assert (=> d!1140 m!2341))

(declare-fun m!2425 () Bool)

(assert (=> d!1140 m!2425))

(assert (=> b!1800 m!2341))

(declare-fun m!2427 () Bool)

(assert (=> b!1800 m!2427))

(declare-fun m!2429 () Bool)

(assert (=> b!1801 m!2429))

(declare-fun m!2431 () Bool)

(assert (=> b!1801 m!2431))

(assert (=> b!1801 m!2341))

(declare-fun m!2433 () Bool)

(assert (=> b!1801 m!2433))

(assert (=> b!1760 d!1140))

(declare-fun d!1142 () Bool)

(declare-fun lt!452 () List!54)

(assert (=> d!1142 (= (content!22 lt!452) (content!22 (rear!53 q3!1)))))

(declare-fun e!1073 () List!54)

(assert (=> d!1142 (= lt!452 e!1073)))

(declare-fun c!534 () Bool)

(assert (=> d!1142 (= c!534 (is-Nil!55 (rear!53 q3!1)))))

(assert (=> d!1142 (= (reverse!5 (rear!53 q3!1)) lt!452)))

(declare-fun b!1802 () Bool)

(assert (=> b!1802 (= e!1073 Nil!55)))

(declare-fun b!1803 () Bool)

(assert (=> b!1803 (= e!1073 (concat!2 (reverse!5 (tail!238 (rear!53 q3!1))) (Cons!54 (head!226 (rear!53 q3!1)) Nil!55)))))

(assert (= (and d!1142 c!534) b!1802))

(assert (= (and d!1142 (not c!534)) b!1803))

(declare-fun m!2435 () Bool)

(assert (=> d!1142 m!2435))

(declare-fun m!2437 () Bool)

(assert (=> d!1142 m!2437))

(declare-fun m!2439 () Bool)

(assert (=> b!1803 m!2439))

(assert (=> b!1803 m!2439))

(declare-fun m!2441 () Bool)

(assert (=> b!1803 m!2441))

(assert (=> b!1760 d!1142))

(declare-fun d!1144 () Bool)

(declare-fun e!1074 () Bool)

(assert (=> d!1144 e!1074))

(declare-fun res!849 () Bool)

(assert (=> d!1144 (=> (not res!849) (not e!1074))))

(declare-fun lt!453 () List!54)

(assert (=> d!1144 (= res!849 (= (size!23 lt!453) (+ (size!23 (tail!238 (front!51 q4!1))) (size!23 (reverse!5 (rear!53 q4!1))))))))

(declare-fun e!1075 () List!54)

(assert (=> d!1144 (= lt!453 e!1075)))

(declare-fun c!535 () Bool)

(assert (=> d!1144 (= c!535 (is-Nil!55 (tail!238 (front!51 q4!1))))))

(assert (=> d!1144 (= (concat!2 (tail!238 (front!51 q4!1)) (reverse!5 (rear!53 q4!1))) lt!453)))

(declare-fun b!1804 () Bool)

(assert (=> b!1804 (= e!1075 (reverse!5 (rear!53 q4!1)))))

(declare-fun b!1805 () Bool)

(assert (=> b!1805 (= e!1075 (Cons!54 (head!226 (tail!238 (front!51 q4!1))) (concat!2 (tail!238 (tail!238 (front!51 q4!1))) (reverse!5 (rear!53 q4!1)))))))

(declare-fun b!1806 () Bool)

(assert (=> b!1806 (= e!1074 (= (content!22 lt!453) (union (content!22 (tail!238 (front!51 q4!1))) (content!22 (reverse!5 (rear!53 q4!1))))))))

(assert (= (and d!1144 c!535) b!1804))

(assert (= (and d!1144 (not c!535)) b!1805))

(assert (= (and d!1144 res!849) b!1806))

(declare-fun m!2443 () Bool)

(assert (=> d!1144 m!2443))

(assert (=> d!1144 m!2323))

(assert (=> d!1144 m!2325))

(declare-fun m!2445 () Bool)

(assert (=> d!1144 m!2445))

(assert (=> b!1805 m!2325))

(declare-fun m!2447 () Bool)

(assert (=> b!1805 m!2447))

(declare-fun m!2449 () Bool)

(assert (=> b!1806 m!2449))

(declare-fun m!2451 () Bool)

(assert (=> b!1806 m!2451))

(assert (=> b!1806 m!2325))

(declare-fun m!2453 () Bool)

(assert (=> b!1806 m!2453))

(assert (=> b!1758 d!1144))

(declare-fun d!1146 () Bool)

(declare-fun lt!454 () List!54)

(assert (=> d!1146 (= (content!22 lt!454) (content!22 (rear!53 q4!1)))))

(declare-fun e!1076 () List!54)

(assert (=> d!1146 (= lt!454 e!1076)))

(declare-fun c!536 () Bool)

(assert (=> d!1146 (= c!536 (is-Nil!55 (rear!53 q4!1)))))

(assert (=> d!1146 (= (reverse!5 (rear!53 q4!1)) lt!454)))

(declare-fun b!1807 () Bool)

(assert (=> b!1807 (= e!1076 Nil!55)))

(declare-fun b!1808 () Bool)

(assert (=> b!1808 (= e!1076 (concat!2 (reverse!5 (tail!238 (rear!53 q4!1))) (Cons!54 (head!226 (rear!53 q4!1)) Nil!55)))))

(assert (= (and d!1146 c!536) b!1807))

(assert (= (and d!1146 (not c!536)) b!1808))

(declare-fun m!2455 () Bool)

(assert (=> d!1146 m!2455))

(declare-fun m!2457 () Bool)

(assert (=> d!1146 m!2457))

(declare-fun m!2459 () Bool)

(assert (=> b!1808 m!2459))

(assert (=> b!1808 m!2459))

(declare-fun m!2461 () Bool)

(assert (=> b!1808 m!2461))

(assert (=> b!1758 d!1146))

(declare-fun d!1148 () Bool)

(declare-fun lt!455 () Int)

(assert (=> d!1148 (>= lt!455 0)))

(declare-fun e!1077 () Int)

(assert (=> d!1148 (= lt!455 e!1077)))

(declare-fun c!537 () Bool)

(assert (=> d!1148 (= c!537 (is-Nil!55 (front!51 lt!422)))))

(assert (=> d!1148 (= (size!23 (front!51 lt!422)) lt!455)))

(declare-fun b!1809 () Bool)

(assert (=> b!1809 (= e!1077 0)))

(declare-fun b!1810 () Bool)

(assert (=> b!1810 (= e!1077 (+ 1 (size!23 (tail!238 (front!51 lt!422)))))))

(assert (= (and d!1148 c!537) b!1809))

(assert (= (and d!1148 (not c!537)) b!1810))

(declare-fun m!2463 () Bool)

(assert (=> b!1810 m!2463))

(assert (=> d!1108 d!1148))

(declare-fun d!1150 () Bool)

(declare-fun lt!456 () Int)

(assert (=> d!1150 (>= lt!456 0)))

(declare-fun e!1078 () Int)

(assert (=> d!1150 (= lt!456 e!1078)))

(declare-fun c!538 () Bool)

(assert (=> d!1150 (= c!538 (is-Nil!55 (rear!53 lt!422)))))

(assert (=> d!1150 (= (size!23 (rear!53 lt!422)) lt!456)))

(declare-fun b!1811 () Bool)

(assert (=> b!1811 (= e!1078 0)))

(declare-fun b!1812 () Bool)

(assert (=> b!1812 (= e!1078 (+ 1 (size!23 (tail!238 (rear!53 lt!422)))))))

(assert (= (and d!1150 c!538) b!1811))

(assert (= (and d!1150 (not c!538)) b!1812))

(declare-fun m!2465 () Bool)

(assert (=> b!1812 m!2465))

(assert (=> d!1108 d!1150))

(declare-fun d!1152 () Bool)

(assert (=> d!1152 (= (isAmortized!0 lt!434) (>= (size!23 (front!51 lt!434)) (size!23 (rear!53 lt!434))))))

(declare-fun bs!205 () Bool)

(assert (= bs!205 d!1152))

(declare-fun m!2467 () Bool)

(assert (=> bs!205 m!2467))

(declare-fun m!2469 () Bool)

(assert (=> bs!205 m!2469))

(assert (=> d!1110 d!1152))

(declare-fun d!1154 () Bool)

(declare-fun lt!457 () Int)

(assert (=> d!1154 (>= lt!457 0)))

(declare-fun e!1079 () Int)

(assert (=> d!1154 (= lt!457 e!1079)))

(declare-fun c!539 () Bool)

(assert (=> d!1154 (= c!539 (is-Nil!55 (Cons!54 e2!3 (rear!53 q1!1))))))

(assert (=> d!1154 (= (size!23 (Cons!54 e2!3 (rear!53 q1!1))) lt!457)))

(declare-fun b!1813 () Bool)

(assert (=> b!1813 (= e!1079 0)))

(declare-fun b!1814 () Bool)

(assert (=> b!1814 (= e!1079 (+ 1 (size!23 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))))))

(assert (= (and d!1154 c!539) b!1813))

(assert (= (and d!1154 (not c!539)) b!1814))

(declare-fun m!2471 () Bool)

(assert (=> b!1814 m!2471))

(assert (=> d!1110 d!1154))

(declare-fun d!1156 () Bool)

(declare-fun lt!458 () Int)

(assert (=> d!1156 (>= lt!458 0)))

(declare-fun e!1080 () Int)

(assert (=> d!1156 (= lt!458 e!1080)))

(declare-fun c!540 () Bool)

(assert (=> d!1156 (= c!540 (is-Nil!55 (front!51 q1!1)))))

(assert (=> d!1156 (= (size!23 (front!51 q1!1)) lt!458)))

(declare-fun b!1815 () Bool)

(assert (=> b!1815 (= e!1080 0)))

(declare-fun b!1816 () Bool)

(assert (=> b!1816 (= e!1080 (+ 1 (size!23 (tail!238 (front!51 q1!1)))))))

(assert (= (and d!1156 c!540) b!1815))

(assert (= (and d!1156 (not c!540)) b!1816))

(declare-fun m!2473 () Bool)

(assert (=> b!1816 m!2473))

(assert (=> d!1110 d!1156))

(declare-fun d!1158 () Bool)

(declare-fun lt!459 () Int)

(assert (=> d!1158 (>= lt!459 0)))

(declare-fun e!1081 () Int)

(assert (=> d!1158 (= lt!459 e!1081)))

(declare-fun c!541 () Bool)

(assert (=> d!1158 (= c!541 (is-Nil!55 (tail!238 (front!51 queue!73))))))

(assert (=> d!1158 (= (size!23 (tail!238 (front!51 queue!73))) lt!459)))

(declare-fun b!1817 () Bool)

(assert (=> b!1817 (= e!1081 0)))

(declare-fun b!1818 () Bool)

(assert (=> b!1818 (= e!1081 (+ 1 (size!23 (tail!238 (tail!238 (front!51 queue!73))))))))

(assert (= (and d!1158 c!541) b!1817))

(assert (= (and d!1158 (not c!541)) b!1818))

(declare-fun m!2475 () Bool)

(assert (=> b!1818 m!2475))

(assert (=> b!1746 d!1158))

(declare-fun d!1160 () Bool)

(declare-fun lt!460 () Int)

(assert (=> d!1160 (>= lt!460 0)))

(declare-fun e!1082 () Int)

(assert (=> d!1160 (= lt!460 e!1082)))

(declare-fun c!542 () Bool)

(assert (=> d!1160 (= c!542 (is-Nil!55 (front!51 q4!1)))))

(assert (=> d!1160 (= (size!23 (front!51 q4!1)) lt!460)))

(declare-fun b!1819 () Bool)

(assert (=> b!1819 (= e!1082 0)))

(declare-fun b!1820 () Bool)

(assert (=> b!1820 (= e!1082 (+ 1 (size!23 (tail!238 (front!51 q4!1)))))))

(assert (= (and d!1160 c!542) b!1819))

(assert (= (and d!1160 (not c!542)) b!1820))

(assert (=> b!1820 m!2323))

(assert (=> d!1100 d!1160))

(assert (=> d!1100 d!1132))

(declare-fun d!1162 () Bool)

(declare-fun e!1083 () Bool)

(assert (=> d!1162 e!1083))

(declare-fun res!850 () Bool)

(assert (=> d!1162 (=> (not res!850) (not e!1083))))

(declare-fun lt!461 () List!54)

(assert (=> d!1162 (= res!850 (= (size!23 lt!461) (+ (size!23 (front!51 queue!56)) (size!23 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))))))))

(declare-fun e!1084 () List!54)

(assert (=> d!1162 (= lt!461 e!1084)))

(declare-fun c!543 () Bool)

(assert (=> d!1162 (= c!543 (is-Nil!55 (front!51 queue!56)))))

(assert (=> d!1162 (= (concat!2 (front!51 queue!56) (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))) lt!461)))

(declare-fun b!1821 () Bool)

(assert (=> b!1821 (= e!1084 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56))))))

(declare-fun b!1822 () Bool)

(assert (=> b!1822 (= e!1084 (Cons!54 (head!226 (front!51 queue!56)) (concat!2 (tail!238 (front!51 queue!56)) (reverse!5 (Cons!54 e1!2 (rear!53 queue!56))))))))

(declare-fun b!1823 () Bool)

(assert (=> b!1823 (= e!1083 (= (content!22 lt!461) (union (content!22 (front!51 queue!56)) (content!22 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))))))))

(assert (= (and d!1162 c!543) b!1821))

(assert (= (and d!1162 (not c!543)) b!1822))

(assert (= (and d!1162 res!850) b!1823))

(declare-fun m!2477 () Bool)

(assert (=> d!1162 m!2477))

(assert (=> d!1162 m!2309))

(assert (=> d!1162 m!2311))

(declare-fun m!2479 () Bool)

(assert (=> d!1162 m!2479))

(assert (=> b!1822 m!2311))

(declare-fun m!2481 () Bool)

(assert (=> b!1822 m!2481))

(declare-fun m!2483 () Bool)

(assert (=> b!1823 m!2483))

(declare-fun m!2485 () Bool)

(assert (=> b!1823 m!2485))

(assert (=> b!1823 m!2311))

(declare-fun m!2487 () Bool)

(assert (=> b!1823 m!2487))

(assert (=> b!1756 d!1162))

(declare-fun d!1164 () Bool)

(declare-fun lt!462 () List!54)

(assert (=> d!1164 (= (content!22 lt!462) (content!22 (Cons!54 e1!2 (rear!53 queue!56))))))

(declare-fun e!1085 () List!54)

(assert (=> d!1164 (= lt!462 e!1085)))

(declare-fun c!544 () Bool)

(assert (=> d!1164 (= c!544 (is-Nil!55 (Cons!54 e1!2 (rear!53 queue!56))))))

(assert (=> d!1164 (= (reverse!5 (Cons!54 e1!2 (rear!53 queue!56))) lt!462)))

(declare-fun b!1824 () Bool)

(assert (=> b!1824 (= e!1085 Nil!55)))

(declare-fun b!1825 () Bool)

(assert (=> b!1825 (= e!1085 (concat!2 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))) (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55)))))

(assert (= (and d!1164 c!544) b!1824))

(assert (= (and d!1164 (not c!544)) b!1825))

(declare-fun m!2489 () Bool)

(assert (=> d!1164 m!2489))

(declare-fun m!2491 () Bool)

(assert (=> d!1164 m!2491))

(declare-fun m!2493 () Bool)

(assert (=> b!1825 m!2493))

(assert (=> b!1825 m!2493))

(declare-fun m!2495 () Bool)

(assert (=> b!1825 m!2495))

(assert (=> b!1756 d!1164))

(declare-fun d!1166 () Bool)

(declare-fun lt!463 () Int)

(assert (=> d!1166 (>= lt!463 0)))

(declare-fun e!1086 () Int)

(assert (=> d!1166 (= lt!463 e!1086)))

(declare-fun c!545 () Bool)

(assert (=> d!1166 (= c!545 (is-Nil!55 (front!51 lt!418)))))

(assert (=> d!1166 (= (size!23 (front!51 lt!418)) lt!463)))

(declare-fun b!1826 () Bool)

(assert (=> b!1826 (= e!1086 0)))

(declare-fun b!1827 () Bool)

(assert (=> b!1827 (= e!1086 (+ 1 (size!23 (tail!238 (front!51 lt!418)))))))

(assert (= (and d!1166 c!545) b!1826))

(assert (= (and d!1166 (not c!545)) b!1827))

(declare-fun m!2497 () Bool)

(assert (=> b!1827 m!2497))

(assert (=> d!1102 d!1166))

(declare-fun d!1168 () Bool)

(declare-fun lt!464 () Int)

(assert (=> d!1168 (>= lt!464 0)))

(declare-fun e!1087 () Int)

(assert (=> d!1168 (= lt!464 e!1087)))

(declare-fun c!546 () Bool)

(assert (=> d!1168 (= c!546 (is-Nil!55 (rear!53 lt!418)))))

(assert (=> d!1168 (= (size!23 (rear!53 lt!418)) lt!464)))

(declare-fun b!1828 () Bool)

(assert (=> b!1828 (= e!1087 0)))

(declare-fun b!1829 () Bool)

(assert (=> b!1829 (= e!1087 (+ 1 (size!23 (tail!238 (rear!53 lt!418)))))))

(assert (= (and d!1168 c!546) b!1828))

(assert (= (and d!1168 (not c!546)) b!1829))

(declare-fun m!2499 () Bool)

(assert (=> b!1829 m!2499))

(assert (=> d!1102 d!1168))

(declare-fun d!1170 () Bool)

(assert (=> d!1170 (= (isAmortized!0 lt!431) (>= (size!23 (front!51 lt!431)) (size!23 (rear!53 lt!431))))))

(declare-fun bs!206 () Bool)

(assert (= bs!206 d!1170))

(declare-fun m!2501 () Bool)

(assert (=> bs!206 m!2501))

(declare-fun m!2503 () Bool)

(assert (=> bs!206 m!2503))

(assert (=> d!1094 d!1170))

(declare-fun d!1172 () Bool)

(declare-fun lt!465 () Int)

(assert (=> d!1172 (>= lt!465 0)))

(declare-fun e!1088 () Int)

(assert (=> d!1172 (= lt!465 e!1088)))

(declare-fun c!547 () Bool)

(assert (=> d!1172 (= c!547 (is-Nil!55 (Cons!54 e1!2 (rear!53 queue!56))))))

(assert (=> d!1172 (= (size!23 (Cons!54 e1!2 (rear!53 queue!56))) lt!465)))

(declare-fun b!1830 () Bool)

(assert (=> b!1830 (= e!1088 0)))

(declare-fun b!1831 () Bool)

(assert (=> b!1831 (= e!1088 (+ 1 (size!23 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))))))

(assert (= (and d!1172 c!547) b!1830))

(assert (= (and d!1172 (not c!547)) b!1831))

(declare-fun m!2505 () Bool)

(assert (=> b!1831 m!2505))

(assert (=> d!1094 d!1172))

(declare-fun d!1174 () Bool)

(declare-fun lt!466 () Int)

(assert (=> d!1174 (>= lt!466 0)))

(declare-fun e!1089 () Int)

(assert (=> d!1174 (= lt!466 e!1089)))

(declare-fun c!548 () Bool)

(assert (=> d!1174 (= c!548 (is-Nil!55 (front!51 queue!56)))))

(assert (=> d!1174 (= (size!23 (front!51 queue!56)) lt!466)))

(declare-fun b!1832 () Bool)

(assert (=> b!1832 (= e!1089 0)))

(declare-fun b!1833 () Bool)

(assert (=> b!1833 (= e!1089 (+ 1 (size!23 (tail!238 (front!51 queue!56)))))))

(assert (= (and d!1174 c!548) b!1832))

(assert (= (and d!1174 (not c!548)) b!1833))

(declare-fun m!2507 () Bool)

(assert (=> b!1833 m!2507))

(assert (=> d!1094 d!1174))

(declare-fun d!1176 () Bool)

(declare-fun lt!467 () Int)

(assert (=> d!1176 (>= lt!467 0)))

(declare-fun e!1090 () Int)

(assert (=> d!1176 (= lt!467 e!1090)))

(declare-fun c!549 () Bool)

(assert (=> d!1176 (= c!549 (is-Nil!55 (front!51 lt!423)))))

(assert (=> d!1176 (= (size!23 (front!51 lt!423)) lt!467)))

(declare-fun b!1834 () Bool)

(assert (=> b!1834 (= e!1090 0)))

(declare-fun b!1835 () Bool)

(assert (=> b!1835 (= e!1090 (+ 1 (size!23 (tail!238 (front!51 lt!423)))))))

(assert (= (and d!1176 c!549) b!1834))

(assert (= (and d!1176 (not c!549)) b!1835))

(declare-fun m!2509 () Bool)

(assert (=> b!1835 m!2509))

(assert (=> d!1092 d!1176))

(declare-fun d!1178 () Bool)

(declare-fun lt!468 () Int)

(assert (=> d!1178 (>= lt!468 0)))

(declare-fun e!1091 () Int)

(assert (=> d!1178 (= lt!468 e!1091)))

(declare-fun c!550 () Bool)

(assert (=> d!1178 (= c!550 (is-Nil!55 (rear!53 lt!423)))))

(assert (=> d!1178 (= (size!23 (rear!53 lt!423)) lt!468)))

(declare-fun b!1836 () Bool)

(assert (=> b!1836 (= e!1091 0)))

(declare-fun b!1837 () Bool)

(assert (=> b!1837 (= e!1091 (+ 1 (size!23 (tail!238 (rear!53 lt!423)))))))

(assert (= (and d!1178 c!550) b!1836))

(assert (= (and d!1178 (not c!550)) b!1837))

(declare-fun m!2511 () Bool)

(assert (=> b!1837 m!2511))

(assert (=> d!1092 d!1178))

(declare-fun d!1180 () Bool)

(declare-fun lt!469 () Int)

(assert (=> d!1180 (>= lt!469 0)))

(declare-fun e!1092 () Int)

(assert (=> d!1180 (= lt!469 e!1092)))

(declare-fun c!551 () Bool)

(assert (=> d!1180 (= c!551 (is-Nil!55 (front!51 lt!421)))))

(assert (=> d!1180 (= (size!23 (front!51 lt!421)) lt!469)))

(declare-fun b!1838 () Bool)

(assert (=> b!1838 (= e!1092 0)))

(declare-fun b!1839 () Bool)

(assert (=> b!1839 (= e!1092 (+ 1 (size!23 (tail!238 (front!51 lt!421)))))))

(assert (= (and d!1180 c!551) b!1838))

(assert (= (and d!1180 (not c!551)) b!1839))

(declare-fun m!2513 () Bool)

(assert (=> b!1839 m!2513))

(assert (=> d!1088 d!1180))

(declare-fun d!1182 () Bool)

(declare-fun lt!470 () Int)

(assert (=> d!1182 (>= lt!470 0)))

(declare-fun e!1093 () Int)

(assert (=> d!1182 (= lt!470 e!1093)))

(declare-fun c!552 () Bool)

(assert (=> d!1182 (= c!552 (is-Nil!55 (rear!53 lt!421)))))

(assert (=> d!1182 (= (size!23 (rear!53 lt!421)) lt!470)))

(declare-fun b!1840 () Bool)

(assert (=> b!1840 (= e!1093 0)))

(declare-fun b!1841 () Bool)

(assert (=> b!1841 (= e!1093 (+ 1 (size!23 (tail!238 (rear!53 lt!421)))))))

(assert (= (and d!1182 c!552) b!1840))

(assert (= (and d!1182 (not c!552)) b!1841))

(declare-fun m!2515 () Bool)

(assert (=> b!1841 m!2515))

(assert (=> d!1088 d!1182))

(declare-fun d!1184 () Bool)

(declare-fun lt!471 () Int)

(assert (=> d!1184 (>= lt!471 0)))

(declare-fun e!1094 () Int)

(assert (=> d!1184 (= lt!471 e!1094)))

(declare-fun c!553 () Bool)

(assert (=> d!1184 (= c!553 (is-Nil!55 (tail!238 (rear!53 queue!73))))))

(assert (=> d!1184 (= (size!23 (tail!238 (rear!53 queue!73))) lt!471)))

(declare-fun b!1842 () Bool)

(assert (=> b!1842 (= e!1094 0)))

(declare-fun b!1843 () Bool)

(assert (=> b!1843 (= e!1094 (+ 1 (size!23 (tail!238 (tail!238 (rear!53 queue!73))))))))

(assert (= (and d!1184 c!553) b!1842))

(assert (= (and d!1184 (not c!553)) b!1843))

(declare-fun m!2517 () Bool)

(assert (=> b!1843 m!2517))

(assert (=> b!1748 d!1184))

(declare-fun d!1186 () Bool)

(assert (=> d!1186 (= (isAmortized!0 lt!433) (>= (size!23 (front!51 lt!433)) (size!23 (rear!53 lt!433))))))

(declare-fun bs!207 () Bool)

(assert (= bs!207 d!1186))

(declare-fun m!2519 () Bool)

(assert (=> bs!207 m!2519))

(declare-fun m!2521 () Bool)

(assert (=> bs!207 m!2521))

(assert (=> d!1104 d!1186))

(assert (=> d!1104 d!1114))

(declare-fun d!1188 () Bool)

(declare-fun lt!472 () Int)

(assert (=> d!1188 (>= lt!472 0)))

(declare-fun e!1095 () Int)

(assert (=> d!1188 (= lt!472 e!1095)))

(declare-fun c!554 () Bool)

(assert (=> d!1188 (= c!554 (is-Nil!55 (tail!238 (front!51 q3!1))))))

(assert (=> d!1188 (= (size!23 (tail!238 (front!51 q3!1))) lt!472)))

(declare-fun b!1844 () Bool)

(assert (=> b!1844 (= e!1095 0)))

(declare-fun b!1845 () Bool)

(assert (=> b!1845 (= e!1095 (+ 1 (size!23 (tail!238 (tail!238 (front!51 q3!1))))))))

(assert (= (and d!1188 c!554) b!1844))

(assert (= (and d!1188 (not c!554)) b!1845))

(declare-fun m!2523 () Bool)

(assert (=> b!1845 m!2523))

(assert (=> d!1104 d!1188))

(push 1)

(assert (not b!1814))

(assert (not b!1810))

(assert (not b!1820))

(assert (not d!1130))

(assert (not d!1120))

(assert (not b!1825))

(assert (not b!1764))

(assert (not b!1806))

(assert (not b!1787))

(assert (not d!1126))

(assert (not b!1833))

(assert (not b!1775))

(assert (not b!1808))

(assert (not b!1841))

(assert (not b!1829))

(assert (not d!1162))

(assert (not b!1812))

(assert (not b!1790))

(assert (not d!1170))

(assert (not d!1116))

(assert (not b!1794))

(assert (not b!1788))

(assert (not b!1818))

(assert (not d!1140))

(assert (not d!1128))

(assert (not b!1781))

(assert (not d!1144))

(assert (not b!1803))

(assert (not b!1843))

(assert (not b!1839))

(assert (not d!1152))

(assert (not d!1146))

(assert (not d!1164))

(assert (not d!1186))

(assert (not d!1142))

(assert (not b!1827))

(assert (not b!1835))

(assert (not b!1837))

(assert (not b!1845))

(assert (not b!1783))

(assert (not b!1800))

(assert (not d!1118))

(assert (not b!1766))

(assert (not b!1831))

(assert (not b!1823))

(assert (not b!1798))

(assert (not b!1796))

(assert (not b!1792))

(assert (not b!1816))

(assert (not b!1785))

(assert (not b!1822))

(assert (not b!1805))

(assert (not b!1801))

(assert (not b!1774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1190 () Bool)

(declare-fun c!557 () Bool)

(assert (=> d!1190 (= c!557 (is-Nil!55 lt!452))))

(declare-fun e!1098 () (Set (_ BitVec 32)))

(assert (=> d!1190 (= (content!22 lt!452) e!1098)))

(declare-fun b!1850 () Bool)

(assert (=> b!1850 (= e!1098 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1851 () Bool)

(assert (=> b!1851 (= e!1098 (union (insert (head!226 lt!452) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!452))))))

(assert (= (and d!1190 c!557) b!1850))

(assert (= (and d!1190 (not c!557)) b!1851))

(declare-fun m!2525 () Bool)

(assert (=> b!1851 m!2525))

(declare-fun m!2527 () Bool)

(assert (=> b!1851 m!2527))

(assert (=> d!1142 d!1190))

(declare-fun d!1192 () Bool)

(declare-fun c!558 () Bool)

(assert (=> d!1192 (= c!558 (is-Nil!55 (rear!53 q3!1)))))

(declare-fun e!1099 () (Set (_ BitVec 32)))

(assert (=> d!1192 (= (content!22 (rear!53 q3!1)) e!1099)))

(declare-fun b!1852 () Bool)

(assert (=> b!1852 (= e!1099 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1853 () Bool)

(assert (=> b!1853 (= e!1099 (union (insert (head!226 (rear!53 q3!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (rear!53 q3!1)))))))

(assert (= (and d!1192 c!558) b!1852))

(assert (= (and d!1192 (not c!558)) b!1853))

(declare-fun m!2529 () Bool)

(assert (=> b!1853 m!2529))

(declare-fun m!2531 () Bool)

(assert (=> b!1853 m!2531))

(assert (=> d!1142 d!1192))

(declare-fun d!1194 () Bool)

(declare-fun lt!473 () Int)

(assert (=> d!1194 (>= lt!473 0)))

(declare-fun e!1100 () Int)

(assert (=> d!1194 (= lt!473 e!1100)))

(declare-fun c!559 () Bool)

(assert (=> d!1194 (= c!559 (is-Nil!55 (tail!238 (front!51 q2!1))))))

(assert (=> d!1194 (= (size!23 (tail!238 (front!51 q2!1))) lt!473)))

(declare-fun b!1854 () Bool)

(assert (=> b!1854 (= e!1100 0)))

(declare-fun b!1855 () Bool)

(assert (=> b!1855 (= e!1100 (+ 1 (size!23 (tail!238 (tail!238 (front!51 q2!1))))))))

(assert (= (and d!1194 c!559) b!1854))

(assert (= (and d!1194 (not c!559)) b!1855))

(declare-fun m!2533 () Bool)

(assert (=> b!1855 m!2533))

(assert (=> b!1785 d!1194))

(declare-fun d!1196 () Bool)

(declare-fun c!560 () Bool)

(assert (=> d!1196 (= c!560 (is-Nil!55 lt!451))))

(declare-fun e!1101 () (Set (_ BitVec 32)))

(assert (=> d!1196 (= (content!22 lt!451) e!1101)))

(declare-fun b!1856 () Bool)

(assert (=> b!1856 (= e!1101 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1857 () Bool)

(assert (=> b!1857 (= e!1101 (union (insert (head!226 lt!451) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!451))))))

(assert (= (and d!1196 c!560) b!1856))

(assert (= (and d!1196 (not c!560)) b!1857))

(declare-fun m!2535 () Bool)

(assert (=> b!1857 m!2535))

(declare-fun m!2537 () Bool)

(assert (=> b!1857 m!2537))

(assert (=> b!1801 d!1196))

(declare-fun d!1198 () Bool)

(declare-fun c!561 () Bool)

(assert (=> d!1198 (= c!561 (is-Nil!55 (tail!238 (front!51 q3!1))))))

(declare-fun e!1102 () (Set (_ BitVec 32)))

(assert (=> d!1198 (= (content!22 (tail!238 (front!51 q3!1))) e!1102)))

(declare-fun b!1858 () Bool)

(assert (=> b!1858 (= e!1102 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1859 () Bool)

(assert (=> b!1859 (= e!1102 (union (insert (head!226 (tail!238 (front!51 q3!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (front!51 q3!1))))))))

(assert (= (and d!1198 c!561) b!1858))

(assert (= (and d!1198 (not c!561)) b!1859))

(declare-fun m!2539 () Bool)

(assert (=> b!1859 m!2539))

(declare-fun m!2541 () Bool)

(assert (=> b!1859 m!2541))

(assert (=> b!1801 d!1198))

(declare-fun d!1200 () Bool)

(declare-fun c!562 () Bool)

(assert (=> d!1200 (= c!562 (is-Nil!55 (reverse!5 (rear!53 q3!1))))))

(declare-fun e!1103 () (Set (_ BitVec 32)))

(assert (=> d!1200 (= (content!22 (reverse!5 (rear!53 q3!1))) e!1103)))

(declare-fun b!1860 () Bool)

(assert (=> b!1860 (= e!1103 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1861 () Bool)

(assert (=> b!1861 (= e!1103 (union (insert (head!226 (reverse!5 (rear!53 q3!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (reverse!5 (rear!53 q3!1))))))))

(assert (= (and d!1200 c!562) b!1860))

(assert (= (and d!1200 (not c!562)) b!1861))

(declare-fun m!2543 () Bool)

(assert (=> b!1861 m!2543))

(declare-fun m!2545 () Bool)

(assert (=> b!1861 m!2545))

(assert (=> b!1801 d!1200))

(declare-fun d!1202 () Bool)

(declare-fun lt!474 () Int)

(assert (=> d!1202 (>= lt!474 0)))

(declare-fun e!1104 () Int)

(assert (=> d!1202 (= lt!474 e!1104)))

(declare-fun c!563 () Bool)

(assert (=> d!1202 (= c!563 (is-Nil!55 (tail!238 (rear!53 lt!417))))))

(assert (=> d!1202 (= (size!23 (tail!238 (rear!53 lt!417))) lt!474)))

(declare-fun b!1862 () Bool)

(assert (=> b!1862 (= e!1104 0)))

(declare-fun b!1863 () Bool)

(assert (=> b!1863 (= e!1104 (+ 1 (size!23 (tail!238 (tail!238 (rear!53 lt!417))))))))

(assert (= (and d!1202 c!563) b!1862))

(assert (= (and d!1202 (not c!563)) b!1863))

(declare-fun m!2547 () Bool)

(assert (=> b!1863 m!2547))

(assert (=> b!1798 d!1202))

(declare-fun d!1204 () Bool)

(declare-fun lt!475 () Int)

(assert (=> d!1204 (>= lt!475 0)))

(declare-fun e!1105 () Int)

(assert (=> d!1204 (= lt!475 e!1105)))

(declare-fun c!564 () Bool)

(assert (=> d!1204 (= c!564 (is-Nil!55 (tail!238 (front!51 lt!423))))))

(assert (=> d!1204 (= (size!23 (tail!238 (front!51 lt!423))) lt!475)))

(declare-fun b!1864 () Bool)

(assert (=> b!1864 (= e!1105 0)))

(declare-fun b!1865 () Bool)

(assert (=> b!1865 (= e!1105 (+ 1 (size!23 (tail!238 (tail!238 (front!51 lt!423))))))))

(assert (= (and d!1204 c!564) b!1864))

(assert (= (and d!1204 (not c!564)) b!1865))

(declare-fun m!2549 () Bool)

(assert (=> b!1865 m!2549))

(assert (=> b!1835 d!1204))

(declare-fun d!1206 () Bool)

(declare-fun lt!476 () Int)

(assert (=> d!1206 (>= lt!476 0)))

(declare-fun e!1106 () Int)

(assert (=> d!1206 (= lt!476 e!1106)))

(declare-fun c!565 () Bool)

(assert (=> d!1206 (= c!565 (is-Nil!55 (tail!238 (front!51 lt!421))))))

(assert (=> d!1206 (= (size!23 (tail!238 (front!51 lt!421))) lt!476)))

(declare-fun b!1866 () Bool)

(assert (=> b!1866 (= e!1106 0)))

(declare-fun b!1867 () Bool)

(assert (=> b!1867 (= e!1106 (+ 1 (size!23 (tail!238 (tail!238 (front!51 lt!421))))))))

(assert (= (and d!1206 c!565) b!1866))

(assert (= (and d!1206 (not c!565)) b!1867))

(declare-fun m!2551 () Bool)

(assert (=> b!1867 m!2551))

(assert (=> b!1839 d!1206))

(declare-fun d!1208 () Bool)

(declare-fun lt!477 () Int)

(assert (=> d!1208 (>= lt!477 0)))

(declare-fun e!1107 () Int)

(assert (=> d!1208 (= lt!477 e!1107)))

(declare-fun c!566 () Bool)

(assert (=> d!1208 (= c!566 (is-Nil!55 lt!461))))

(assert (=> d!1208 (= (size!23 lt!461) lt!477)))

(declare-fun b!1868 () Bool)

(assert (=> b!1868 (= e!1107 0)))

(declare-fun b!1869 () Bool)

(assert (=> b!1869 (= e!1107 (+ 1 (size!23 (tail!238 lt!461))))))

(assert (= (and d!1208 c!566) b!1868))

(assert (= (and d!1208 (not c!566)) b!1869))

(declare-fun m!2553 () Bool)

(assert (=> b!1869 m!2553))

(assert (=> d!1162 d!1208))

(assert (=> d!1162 d!1174))

(declare-fun d!1210 () Bool)

(declare-fun lt!478 () Int)

(assert (=> d!1210 (>= lt!478 0)))

(declare-fun e!1108 () Int)

(assert (=> d!1210 (= lt!478 e!1108)))

(declare-fun c!567 () Bool)

(assert (=> d!1210 (= c!567 (is-Nil!55 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))))))

(assert (=> d!1210 (= (size!23 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))) lt!478)))

(declare-fun b!1870 () Bool)

(assert (=> b!1870 (= e!1108 0)))

(declare-fun b!1871 () Bool)

(assert (=> b!1871 (= e!1108 (+ 1 (size!23 (tail!238 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))))))))

(assert (= (and d!1210 c!567) b!1870))

(assert (= (and d!1210 (not c!567)) b!1871))

(declare-fun m!2555 () Bool)

(assert (=> b!1871 m!2555))

(assert (=> d!1162 d!1210))

(declare-fun d!1212 () Bool)

(declare-fun lt!479 () Int)

(assert (=> d!1212 (>= lt!479 0)))

(declare-fun e!1109 () Int)

(assert (=> d!1212 (= lt!479 e!1109)))

(declare-fun c!568 () Bool)

(assert (=> d!1212 (= c!568 (is-Nil!55 (tail!238 (front!51 queue!56))))))

(assert (=> d!1212 (= (size!23 (tail!238 (front!51 queue!56))) lt!479)))

(declare-fun b!1872 () Bool)

(assert (=> b!1872 (= e!1109 0)))

(declare-fun b!1873 () Bool)

(assert (=> b!1873 (= e!1109 (+ 1 (size!23 (tail!238 (tail!238 (front!51 queue!56))))))))

(assert (= (and d!1212 c!568) b!1872))

(assert (= (and d!1212 (not c!568)) b!1873))

(declare-fun m!2557 () Bool)

(assert (=> b!1873 m!2557))

(assert (=> b!1833 d!1212))

(declare-fun d!1214 () Bool)

(declare-fun lt!480 () Int)

(assert (=> d!1214 (>= lt!480 0)))

(declare-fun e!1110 () Int)

(assert (=> d!1214 (= lt!480 e!1110)))

(declare-fun c!569 () Bool)

(assert (=> d!1214 (= c!569 (is-Nil!55 (front!51 lt!433)))))

(assert (=> d!1214 (= (size!23 (front!51 lt!433)) lt!480)))

(declare-fun b!1874 () Bool)

(assert (=> b!1874 (= e!1110 0)))

(declare-fun b!1875 () Bool)

(assert (=> b!1875 (= e!1110 (+ 1 (size!23 (tail!238 (front!51 lt!433)))))))

(assert (= (and d!1214 c!569) b!1874))

(assert (= (and d!1214 (not c!569)) b!1875))

(declare-fun m!2559 () Bool)

(assert (=> b!1875 m!2559))

(assert (=> d!1186 d!1214))

(declare-fun d!1216 () Bool)

(declare-fun lt!481 () Int)

(assert (=> d!1216 (>= lt!481 0)))

(declare-fun e!1111 () Int)

(assert (=> d!1216 (= lt!481 e!1111)))

(declare-fun c!570 () Bool)

(assert (=> d!1216 (= c!570 (is-Nil!55 (rear!53 lt!433)))))

(assert (=> d!1216 (= (size!23 (rear!53 lt!433)) lt!481)))

(declare-fun b!1876 () Bool)

(assert (=> b!1876 (= e!1111 0)))

(declare-fun b!1877 () Bool)

(assert (=> b!1877 (= e!1111 (+ 1 (size!23 (tail!238 (rear!53 lt!433)))))))

(assert (= (and d!1216 c!570) b!1876))

(assert (= (and d!1216 (not c!570)) b!1877))

(declare-fun m!2561 () Bool)

(assert (=> b!1877 m!2561))

(assert (=> d!1186 d!1216))

(declare-fun d!1218 () Bool)

(declare-fun lt!482 () Int)

(assert (=> d!1218 (>= lt!482 0)))

(declare-fun e!1112 () Int)

(assert (=> d!1218 (= lt!482 e!1112)))

(declare-fun c!571 () Bool)

(assert (=> d!1218 (= c!571 (is-Nil!55 (tail!238 (rear!53 lt!418))))))

(assert (=> d!1218 (= (size!23 (tail!238 (rear!53 lt!418))) lt!482)))

(declare-fun b!1878 () Bool)

(assert (=> b!1878 (= e!1112 0)))

(declare-fun b!1879 () Bool)

(assert (=> b!1879 (= e!1112 (+ 1 (size!23 (tail!238 (tail!238 (rear!53 lt!418))))))))

(assert (= (and d!1218 c!571) b!1878))

(assert (= (and d!1218 (not c!571)) b!1879))

(declare-fun m!2563 () Bool)

(assert (=> b!1879 m!2563))

(assert (=> b!1829 d!1218))

(declare-fun d!1220 () Bool)

(declare-fun lt!483 () Int)

(assert (=> d!1220 (>= lt!483 0)))

(declare-fun e!1113 () Int)

(assert (=> d!1220 (= lt!483 e!1113)))

(declare-fun c!572 () Bool)

(assert (=> d!1220 (= c!572 (is-Nil!55 lt!453))))

(assert (=> d!1220 (= (size!23 lt!453) lt!483)))

(declare-fun b!1880 () Bool)

(assert (=> b!1880 (= e!1113 0)))

(declare-fun b!1881 () Bool)

(assert (=> b!1881 (= e!1113 (+ 1 (size!23 (tail!238 lt!453))))))

(assert (= (and d!1220 c!572) b!1880))

(assert (= (and d!1220 (not c!572)) b!1881))

(declare-fun m!2565 () Bool)

(assert (=> b!1881 m!2565))

(assert (=> d!1144 d!1220))

(assert (=> d!1144 d!1134))

(declare-fun d!1222 () Bool)

(declare-fun lt!484 () Int)

(assert (=> d!1222 (>= lt!484 0)))

(declare-fun e!1114 () Int)

(assert (=> d!1222 (= lt!484 e!1114)))

(declare-fun c!573 () Bool)

(assert (=> d!1222 (= c!573 (is-Nil!55 (reverse!5 (rear!53 q4!1))))))

(assert (=> d!1222 (= (size!23 (reverse!5 (rear!53 q4!1))) lt!484)))

(declare-fun b!1882 () Bool)

(assert (=> b!1882 (= e!1114 0)))

(declare-fun b!1883 () Bool)

(assert (=> b!1883 (= e!1114 (+ 1 (size!23 (tail!238 (reverse!5 (rear!53 q4!1))))))))

(assert (= (and d!1222 c!573) b!1882))

(assert (= (and d!1222 (not c!573)) b!1883))

(declare-fun m!2567 () Bool)

(assert (=> b!1883 m!2567))

(assert (=> d!1144 d!1222))

(declare-fun d!1224 () Bool)

(declare-fun c!574 () Bool)

(assert (=> d!1224 (= c!574 (is-Nil!55 lt!453))))

(declare-fun e!1115 () (Set (_ BitVec 32)))

(assert (=> d!1224 (= (content!22 lt!453) e!1115)))

(declare-fun b!1884 () Bool)

(assert (=> b!1884 (= e!1115 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1885 () Bool)

(assert (=> b!1885 (= e!1115 (union (insert (head!226 lt!453) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!453))))))

(assert (= (and d!1224 c!574) b!1884))

(assert (= (and d!1224 (not c!574)) b!1885))

(declare-fun m!2569 () Bool)

(assert (=> b!1885 m!2569))

(declare-fun m!2571 () Bool)

(assert (=> b!1885 m!2571))

(assert (=> b!1806 d!1224))

(declare-fun d!1226 () Bool)

(declare-fun c!575 () Bool)

(assert (=> d!1226 (= c!575 (is-Nil!55 (tail!238 (front!51 q4!1))))))

(declare-fun e!1116 () (Set (_ BitVec 32)))

(assert (=> d!1226 (= (content!22 (tail!238 (front!51 q4!1))) e!1116)))

(declare-fun b!1886 () Bool)

(assert (=> b!1886 (= e!1116 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1887 () Bool)

(assert (=> b!1887 (= e!1116 (union (insert (head!226 (tail!238 (front!51 q4!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (front!51 q4!1))))))))

(assert (= (and d!1226 c!575) b!1886))

(assert (= (and d!1226 (not c!575)) b!1887))

(declare-fun m!2573 () Bool)

(assert (=> b!1887 m!2573))

(declare-fun m!2575 () Bool)

(assert (=> b!1887 m!2575))

(assert (=> b!1806 d!1226))

(declare-fun d!1228 () Bool)

(declare-fun c!576 () Bool)

(assert (=> d!1228 (= c!576 (is-Nil!55 (reverse!5 (rear!53 q4!1))))))

(declare-fun e!1117 () (Set (_ BitVec 32)))

(assert (=> d!1228 (= (content!22 (reverse!5 (rear!53 q4!1))) e!1117)))

(declare-fun b!1888 () Bool)

(assert (=> b!1888 (= e!1117 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1889 () Bool)

(assert (=> b!1889 (= e!1117 (union (insert (head!226 (reverse!5 (rear!53 q4!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (reverse!5 (rear!53 q4!1))))))))

(assert (= (and d!1228 c!576) b!1888))

(assert (= (and d!1228 (not c!576)) b!1889))

(declare-fun m!2577 () Bool)

(assert (=> b!1889 m!2577))

(declare-fun m!2579 () Bool)

(assert (=> b!1889 m!2579))

(assert (=> b!1806 d!1228))

(declare-fun d!1230 () Bool)

(declare-fun lt!485 () Int)

(assert (=> d!1230 (>= lt!485 0)))

(declare-fun e!1118 () Int)

(assert (=> d!1230 (= lt!485 e!1118)))

(declare-fun c!577 () Bool)

(assert (=> d!1230 (= c!577 (is-Nil!55 (front!51 lt!432)))))

(assert (=> d!1230 (= (size!23 (front!51 lt!432)) lt!485)))

(declare-fun b!1890 () Bool)

(assert (=> b!1890 (= e!1118 0)))

(declare-fun b!1891 () Bool)

(assert (=> b!1891 (= e!1118 (+ 1 (size!23 (tail!238 (front!51 lt!432)))))))

(assert (= (and d!1230 c!577) b!1890))

(assert (= (and d!1230 (not c!577)) b!1891))

(declare-fun m!2581 () Bool)

(assert (=> b!1891 m!2581))

(assert (=> d!1130 d!1230))

(declare-fun d!1232 () Bool)

(declare-fun lt!486 () Int)

(assert (=> d!1232 (>= lt!486 0)))

(declare-fun e!1119 () Int)

(assert (=> d!1232 (= lt!486 e!1119)))

(declare-fun c!578 () Bool)

(assert (=> d!1232 (= c!578 (is-Nil!55 (rear!53 lt!432)))))

(assert (=> d!1232 (= (size!23 (rear!53 lt!432)) lt!486)))

(declare-fun b!1892 () Bool)

(assert (=> b!1892 (= e!1119 0)))

(declare-fun b!1893 () Bool)

(assert (=> b!1893 (= e!1119 (+ 1 (size!23 (tail!238 (rear!53 lt!432)))))))

(assert (= (and d!1232 c!578) b!1892))

(assert (= (and d!1232 (not c!578)) b!1893))

(declare-fun m!2583 () Bool)

(assert (=> b!1893 m!2583))

(assert (=> d!1130 d!1232))

(declare-fun d!1234 () Bool)

(declare-fun c!579 () Bool)

(assert (=> d!1234 (= c!579 (is-Nil!55 lt!454))))

(declare-fun e!1120 () (Set (_ BitVec 32)))

(assert (=> d!1234 (= (content!22 lt!454) e!1120)))

(declare-fun b!1894 () Bool)

(assert (=> b!1894 (= e!1120 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1895 () Bool)

(assert (=> b!1895 (= e!1120 (union (insert (head!226 lt!454) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!454))))))

(assert (= (and d!1234 c!579) b!1894))

(assert (= (and d!1234 (not c!579)) b!1895))

(declare-fun m!2585 () Bool)

(assert (=> b!1895 m!2585))

(declare-fun m!2587 () Bool)

(assert (=> b!1895 m!2587))

(assert (=> d!1146 d!1234))

(declare-fun d!1236 () Bool)

(declare-fun c!580 () Bool)

(assert (=> d!1236 (= c!580 (is-Nil!55 (rear!53 q4!1)))))

(declare-fun e!1121 () (Set (_ BitVec 32)))

(assert (=> d!1236 (= (content!22 (rear!53 q4!1)) e!1121)))

(declare-fun b!1896 () Bool)

(assert (=> b!1896 (= e!1121 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1897 () Bool)

(assert (=> b!1897 (= e!1121 (union (insert (head!226 (rear!53 q4!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (rear!53 q4!1)))))))

(assert (= (and d!1236 c!580) b!1896))

(assert (= (and d!1236 (not c!580)) b!1897))

(declare-fun m!2589 () Bool)

(assert (=> b!1897 m!2589))

(declare-fun m!2591 () Bool)

(assert (=> b!1897 m!2591))

(assert (=> d!1146 d!1236))

(declare-fun d!1238 () Bool)

(declare-fun lt!487 () Int)

(assert (=> d!1238 (>= lt!487 0)))

(declare-fun e!1122 () Int)

(assert (=> d!1238 (= lt!487 e!1122)))

(declare-fun c!581 () Bool)

(assert (=> d!1238 (= c!581 (is-Nil!55 (tail!238 (rear!53 q4!1))))))

(assert (=> d!1238 (= (size!23 (tail!238 (rear!53 q4!1))) lt!487)))

(declare-fun b!1898 () Bool)

(assert (=> b!1898 (= e!1122 0)))

(declare-fun b!1899 () Bool)

(assert (=> b!1899 (= e!1122 (+ 1 (size!23 (tail!238 (tail!238 (rear!53 q4!1))))))))

(assert (= (and d!1238 c!581) b!1898))

(assert (= (and d!1238 (not c!581)) b!1899))

(declare-fun m!2593 () Bool)

(assert (=> b!1899 m!2593))

(assert (=> b!1792 d!1238))

(declare-fun d!1240 () Bool)

(declare-fun e!1123 () Bool)

(assert (=> d!1240 e!1123))

(declare-fun res!851 () Bool)

(assert (=> d!1240 (=> (not res!851) (not e!1123))))

(declare-fun lt!488 () List!54)

(assert (=> d!1240 (= res!851 (= (size!23 lt!488) (+ (size!23 (tail!238 (front!51 queue!56))) (size!23 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))))))))

(declare-fun e!1124 () List!54)

(assert (=> d!1240 (= lt!488 e!1124)))

(declare-fun c!582 () Bool)

(assert (=> d!1240 (= c!582 (is-Nil!55 (tail!238 (front!51 queue!56))))))

(assert (=> d!1240 (= (concat!2 (tail!238 (front!51 queue!56)) (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))) lt!488)))

(declare-fun b!1900 () Bool)

(assert (=> b!1900 (= e!1124 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56))))))

(declare-fun b!1901 () Bool)

(assert (=> b!1901 (= e!1124 (Cons!54 (head!226 (tail!238 (front!51 queue!56))) (concat!2 (tail!238 (tail!238 (front!51 queue!56))) (reverse!5 (Cons!54 e1!2 (rear!53 queue!56))))))))

(declare-fun b!1902 () Bool)

(assert (=> b!1902 (= e!1123 (= (content!22 lt!488) (union (content!22 (tail!238 (front!51 queue!56))) (content!22 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))))))))

(assert (= (and d!1240 c!582) b!1900))

(assert (= (and d!1240 (not c!582)) b!1901))

(assert (= (and d!1240 res!851) b!1902))

(declare-fun m!2595 () Bool)

(assert (=> d!1240 m!2595))

(assert (=> d!1240 m!2507))

(assert (=> d!1240 m!2311))

(assert (=> d!1240 m!2479))

(assert (=> b!1901 m!2311))

(declare-fun m!2597 () Bool)

(assert (=> b!1901 m!2597))

(declare-fun m!2599 () Bool)

(assert (=> b!1902 m!2599))

(declare-fun m!2601 () Bool)

(assert (=> b!1902 m!2601))

(assert (=> b!1902 m!2311))

(assert (=> b!1902 m!2487))

(assert (=> b!1822 d!1240))

(declare-fun d!1242 () Bool)

(declare-fun e!1125 () Bool)

(assert (=> d!1242 e!1125))

(declare-fun res!852 () Bool)

(assert (=> d!1242 (=> (not res!852) (not e!1125))))

(declare-fun lt!489 () List!54)

(assert (=> d!1242 (= res!852 (= (size!23 lt!489) (+ (size!23 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))) (size!23 (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55)))))))

(declare-fun e!1126 () List!54)

(assert (=> d!1242 (= lt!489 e!1126)))

(declare-fun c!583 () Bool)

(assert (=> d!1242 (= c!583 (is-Nil!55 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))))))

(assert (=> d!1242 (= (concat!2 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))) (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55)) lt!489)))

(declare-fun b!1903 () Bool)

(assert (=> b!1903 (= e!1126 (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55))))

(declare-fun b!1904 () Bool)

(assert (=> b!1904 (= e!1126 (Cons!54 (head!226 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))) (concat!2 (tail!238 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))) (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55))))))

(declare-fun b!1905 () Bool)

(assert (=> b!1905 (= e!1125 (= (content!22 lt!489) (union (content!22 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))) (content!22 (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55)))))))

(assert (= (and d!1242 c!583) b!1903))

(assert (= (and d!1242 (not c!583)) b!1904))

(assert (= (and d!1242 res!852) b!1905))

(declare-fun m!2603 () Bool)

(assert (=> d!1242 m!2603))

(assert (=> d!1242 m!2407))

(declare-fun m!2605 () Bool)

(assert (=> d!1242 m!2605))

(declare-fun m!2607 () Bool)

(assert (=> d!1242 m!2607))

(declare-fun m!2609 () Bool)

(assert (=> b!1904 m!2609))

(declare-fun m!2611 () Bool)

(assert (=> b!1905 m!2611))

(assert (=> b!1905 m!2407))

(declare-fun m!2613 () Bool)

(assert (=> b!1905 m!2613))

(declare-fun m!2615 () Bool)

(assert (=> b!1905 m!2615))

(assert (=> b!1790 d!1242))

(declare-fun d!1244 () Bool)

(declare-fun lt!490 () List!54)

(assert (=> d!1244 (= (content!22 lt!490) (content!22 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))))

(declare-fun e!1127 () List!54)

(assert (=> d!1244 (= lt!490 e!1127)))

(declare-fun c!584 () Bool)

(assert (=> d!1244 (= c!584 (is-Nil!55 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))))

(assert (=> d!1244 (= (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))) lt!490)))

(declare-fun b!1906 () Bool)

(assert (=> b!1906 (= e!1127 Nil!55)))

(declare-fun b!1907 () Bool)

(assert (=> b!1907 (= e!1127 (concat!2 (reverse!5 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))) (Cons!54 (head!226 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))) Nil!55)))))

(assert (= (and d!1244 c!584) b!1906))

(assert (= (and d!1244 (not c!584)) b!1907))

(declare-fun m!2617 () Bool)

(assert (=> d!1244 m!2617))

(declare-fun m!2619 () Bool)

(assert (=> d!1244 m!2619))

(declare-fun m!2621 () Bool)

(assert (=> b!1907 m!2621))

(assert (=> b!1907 m!2621))

(declare-fun m!2623 () Bool)

(assert (=> b!1907 m!2623))

(assert (=> b!1790 d!1244))

(declare-fun d!1246 () Bool)

(declare-fun c!585 () Bool)

(assert (=> d!1246 (= c!585 (is-Nil!55 lt!442))))

(declare-fun e!1128 () (Set (_ BitVec 32)))

(assert (=> d!1246 (= (content!22 lt!442) e!1128)))

(declare-fun b!1908 () Bool)

(assert (=> b!1908 (= e!1128 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1909 () Bool)

(assert (=> b!1909 (= e!1128 (union (insert (head!226 lt!442) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!442))))))

(assert (= (and d!1246 c!585) b!1908))

(assert (= (and d!1246 (not c!585)) b!1909))

(declare-fun m!2625 () Bool)

(assert (=> b!1909 m!2625))

(declare-fun m!2627 () Bool)

(assert (=> b!1909 m!2627))

(assert (=> d!1118 d!1246))

(declare-fun d!1248 () Bool)

(declare-fun c!586 () Bool)

(assert (=> d!1248 (= c!586 (is-Nil!55 (Cons!54 e2!3 (rear!53 q1!1))))))

(declare-fun e!1129 () (Set (_ BitVec 32)))

(assert (=> d!1248 (= (content!22 (Cons!54 e2!3 (rear!53 q1!1))) e!1129)))

(declare-fun b!1910 () Bool)

(assert (=> b!1910 (= e!1129 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1911 () Bool)

(assert (=> b!1911 (= e!1129 (union (insert (head!226 (Cons!54 e2!3 (rear!53 q1!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))))))

(assert (= (and d!1248 c!586) b!1910))

(assert (= (and d!1248 (not c!586)) b!1911))

(declare-fun m!2629 () Bool)

(assert (=> b!1911 m!2629))

(declare-fun m!2631 () Bool)

(assert (=> b!1911 m!2631))

(assert (=> d!1118 d!1248))

(declare-fun d!1250 () Bool)

(declare-fun lt!491 () Int)

(assert (=> d!1250 (>= lt!491 0)))

(declare-fun e!1130 () Int)

(assert (=> d!1250 (= lt!491 e!1130)))

(declare-fun c!587 () Bool)

(assert (=> d!1250 (= c!587 (is-Nil!55 (tail!238 (tail!238 (front!51 q4!1)))))))

(assert (=> d!1250 (= (size!23 (tail!238 (tail!238 (front!51 q4!1)))) lt!491)))

(declare-fun b!1912 () Bool)

(assert (=> b!1912 (= e!1130 0)))

(declare-fun b!1913 () Bool)

(assert (=> b!1913 (= e!1130 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (front!51 q4!1)))))))))

(assert (= (and d!1250 c!587) b!1912))

(assert (= (and d!1250 (not c!587)) b!1913))

(declare-fun m!2633 () Bool)

(assert (=> b!1913 m!2633))

(assert (=> b!1794 d!1250))

(declare-fun d!1252 () Bool)

(declare-fun e!1131 () Bool)

(assert (=> d!1252 e!1131))

(declare-fun res!853 () Bool)

(assert (=> d!1252 (=> (not res!853) (not e!1131))))

(declare-fun lt!492 () List!54)

(assert (=> d!1252 (= res!853 (= (size!23 lt!492) (+ (size!23 (tail!238 (tail!238 (front!51 q4!1)))) (size!23 (reverse!5 (rear!53 q4!1))))))))

(declare-fun e!1132 () List!54)

(assert (=> d!1252 (= lt!492 e!1132)))

(declare-fun c!588 () Bool)

(assert (=> d!1252 (= c!588 (is-Nil!55 (tail!238 (tail!238 (front!51 q4!1)))))))

(assert (=> d!1252 (= (concat!2 (tail!238 (tail!238 (front!51 q4!1))) (reverse!5 (rear!53 q4!1))) lt!492)))

(declare-fun b!1914 () Bool)

(assert (=> b!1914 (= e!1132 (reverse!5 (rear!53 q4!1)))))

(declare-fun b!1915 () Bool)

(assert (=> b!1915 (= e!1132 (Cons!54 (head!226 (tail!238 (tail!238 (front!51 q4!1)))) (concat!2 (tail!238 (tail!238 (tail!238 (front!51 q4!1)))) (reverse!5 (rear!53 q4!1)))))))

(declare-fun b!1916 () Bool)

(assert (=> b!1916 (= e!1131 (= (content!22 lt!492) (union (content!22 (tail!238 (tail!238 (front!51 q4!1)))) (content!22 (reverse!5 (rear!53 q4!1))))))))

(assert (= (and d!1252 c!588) b!1914))

(assert (= (and d!1252 (not c!588)) b!1915))

(assert (= (and d!1252 res!853) b!1916))

(declare-fun m!2635 () Bool)

(assert (=> d!1252 m!2635))

(assert (=> d!1252 m!2417))

(assert (=> d!1252 m!2325))

(assert (=> d!1252 m!2445))

(assert (=> b!1915 m!2325))

(declare-fun m!2637 () Bool)

(assert (=> b!1915 m!2637))

(declare-fun m!2639 () Bool)

(assert (=> b!1916 m!2639))

(assert (=> b!1916 m!2575))

(assert (=> b!1916 m!2325))

(assert (=> b!1916 m!2453))

(assert (=> b!1805 d!1252))

(declare-fun d!1254 () Bool)

(declare-fun lt!493 () Int)

(assert (=> d!1254 (>= lt!493 0)))

(declare-fun e!1133 () Int)

(assert (=> d!1254 (= lt!493 e!1133)))

(declare-fun c!589 () Bool)

(assert (=> d!1254 (= c!589 (is-Nil!55 lt!439))))

(assert (=> d!1254 (= (size!23 lt!439) lt!493)))

(declare-fun b!1917 () Bool)

(assert (=> b!1917 (= e!1133 0)))

(declare-fun b!1918 () Bool)

(assert (=> b!1918 (= e!1133 (+ 1 (size!23 (tail!238 lt!439))))))

(assert (= (and d!1254 c!589) b!1917))

(assert (= (and d!1254 (not c!589)) b!1918))

(declare-fun m!2641 () Bool)

(assert (=> b!1918 m!2641))

(assert (=> d!1116 d!1254))

(assert (=> d!1116 d!1156))

(declare-fun d!1256 () Bool)

(declare-fun lt!494 () Int)

(assert (=> d!1256 (>= lt!494 0)))

(declare-fun e!1134 () Int)

(assert (=> d!1256 (= lt!494 e!1134)))

(declare-fun c!590 () Bool)

(assert (=> d!1256 (= c!590 (is-Nil!55 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))))))

(assert (=> d!1256 (= (size!23 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))) lt!494)))

(declare-fun b!1919 () Bool)

(assert (=> b!1919 (= e!1134 0)))

(declare-fun b!1920 () Bool)

(assert (=> b!1920 (= e!1134 (+ 1 (size!23 (tail!238 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))))))))

(assert (= (and d!1256 c!590) b!1919))

(assert (= (and d!1256 (not c!590)) b!1920))

(declare-fun m!2643 () Bool)

(assert (=> b!1920 m!2643))

(assert (=> d!1116 d!1256))

(declare-fun d!1258 () Bool)

(declare-fun lt!495 () Int)

(assert (=> d!1258 (>= lt!495 0)))

(declare-fun e!1135 () Int)

(assert (=> d!1258 (= lt!495 e!1135)))

(declare-fun c!591 () Bool)

(assert (=> d!1258 (= c!591 (is-Nil!55 (tail!238 (rear!53 q3!1))))))

(assert (=> d!1258 (= (size!23 (tail!238 (rear!53 q3!1))) lt!495)))

(declare-fun b!1921 () Bool)

(assert (=> b!1921 (= e!1135 0)))

(declare-fun b!1922 () Bool)

(assert (=> b!1922 (= e!1135 (+ 1 (size!23 (tail!238 (tail!238 (rear!53 q3!1))))))))

(assert (= (and d!1258 c!591) b!1921))

(assert (= (and d!1258 (not c!591)) b!1922))

(declare-fun m!2645 () Bool)

(assert (=> b!1922 m!2645))

(assert (=> b!1766 d!1258))

(declare-fun d!1260 () Bool)

(declare-fun lt!496 () Int)

(assert (=> d!1260 (>= lt!496 0)))

(declare-fun e!1136 () Int)

(assert (=> d!1260 (= lt!496 e!1136)))

(declare-fun c!592 () Bool)

(assert (=> d!1260 (= c!592 (is-Nil!55 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))))

(assert (=> d!1260 (= (size!23 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))) lt!496)))

(declare-fun b!1923 () Bool)

(assert (=> b!1923 (= e!1136 0)))

(declare-fun b!1924 () Bool)

(assert (=> b!1924 (= e!1136 (+ 1 (size!23 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))))))

(assert (= (and d!1260 c!592) b!1923))

(assert (= (and d!1260 (not c!592)) b!1924))

(declare-fun m!2647 () Bool)

(assert (=> b!1924 m!2647))

(assert (=> b!1831 d!1260))

(declare-fun d!1262 () Bool)

(declare-fun lt!497 () Int)

(assert (=> d!1262 (>= lt!497 0)))

(declare-fun e!1137 () Int)

(assert (=> d!1262 (= lt!497 e!1137)))

(declare-fun c!593 () Bool)

(assert (=> d!1262 (= c!593 (is-Nil!55 (tail!238 (front!51 lt!418))))))

(assert (=> d!1262 (= (size!23 (tail!238 (front!51 lt!418))) lt!497)))

(declare-fun b!1925 () Bool)

(assert (=> b!1925 (= e!1137 0)))

(declare-fun b!1926 () Bool)

(assert (=> b!1926 (= e!1137 (+ 1 (size!23 (tail!238 (tail!238 (front!51 lt!418))))))))

(assert (= (and d!1262 c!593) b!1925))

(assert (= (and d!1262 (not c!593)) b!1926))

(declare-fun m!2649 () Bool)

(assert (=> b!1926 m!2649))

(assert (=> b!1827 d!1262))

(declare-fun d!1264 () Bool)

(declare-fun c!594 () Bool)

(assert (=> d!1264 (= c!594 (is-Nil!55 lt!462))))

(declare-fun e!1138 () (Set (_ BitVec 32)))

(assert (=> d!1264 (= (content!22 lt!462) e!1138)))

(declare-fun b!1927 () Bool)

(assert (=> b!1927 (= e!1138 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1928 () Bool)

(assert (=> b!1928 (= e!1138 (union (insert (head!226 lt!462) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!462))))))

(assert (= (and d!1264 c!594) b!1927))

(assert (= (and d!1264 (not c!594)) b!1928))

(declare-fun m!2651 () Bool)

(assert (=> b!1928 m!2651))

(declare-fun m!2653 () Bool)

(assert (=> b!1928 m!2653))

(assert (=> d!1164 d!1264))

(declare-fun d!1266 () Bool)

(declare-fun c!595 () Bool)

(assert (=> d!1266 (= c!595 (is-Nil!55 (Cons!54 e1!2 (rear!53 queue!56))))))

(declare-fun e!1139 () (Set (_ BitVec 32)))

(assert (=> d!1266 (= (content!22 (Cons!54 e1!2 (rear!53 queue!56))) e!1139)))

(declare-fun b!1929 () Bool)

(assert (=> b!1929 (= e!1139 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1930 () Bool)

(assert (=> b!1930 (= e!1139 (union (insert (head!226 (Cons!54 e1!2 (rear!53 queue!56))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))))))

(assert (= (and d!1266 c!595) b!1929))

(assert (= (and d!1266 (not c!595)) b!1930))

(declare-fun m!2655 () Bool)

(assert (=> b!1930 m!2655))

(declare-fun m!2657 () Bool)

(assert (=> b!1930 m!2657))

(assert (=> d!1164 d!1266))

(declare-fun d!1268 () Bool)

(declare-fun lt!498 () Int)

(assert (=> d!1268 (>= lt!498 0)))

(declare-fun e!1140 () Int)

(assert (=> d!1268 (= lt!498 e!1140)))

(declare-fun c!596 () Bool)

(assert (=> d!1268 (= c!596 (is-Nil!55 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))))

(assert (=> d!1268 (= (size!23 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))) lt!498)))

(declare-fun b!1931 () Bool)

(assert (=> b!1931 (= e!1140 0)))

(declare-fun b!1932 () Bool)

(assert (=> b!1932 (= e!1140 (+ 1 (size!23 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))))))

(assert (= (and d!1268 c!596) b!1931))

(assert (= (and d!1268 (not c!596)) b!1932))

(declare-fun m!2659 () Bool)

(assert (=> b!1932 m!2659))

(assert (=> b!1783 d!1268))

(declare-fun d!1270 () Bool)

(declare-fun c!597 () Bool)

(assert (=> d!1270 (= c!597 (is-Nil!55 lt!445))))

(declare-fun e!1141 () (Set (_ BitVec 32)))

(assert (=> d!1270 (= (content!22 lt!445) e!1141)))

(declare-fun b!1933 () Bool)

(assert (=> b!1933 (= e!1141 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1934 () Bool)

(assert (=> b!1934 (= e!1141 (union (insert (head!226 lt!445) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!445))))))

(assert (= (and d!1270 c!597) b!1933))

(assert (= (and d!1270 (not c!597)) b!1934))

(declare-fun m!2661 () Bool)

(assert (=> b!1934 m!2661))

(declare-fun m!2663 () Bool)

(assert (=> b!1934 m!2663))

(assert (=> b!1788 d!1270))

(declare-fun d!1272 () Bool)

(declare-fun c!598 () Bool)

(assert (=> d!1272 (= c!598 (is-Nil!55 (front!51 q2!1)))))

(declare-fun e!1142 () (Set (_ BitVec 32)))

(assert (=> d!1272 (= (content!22 (front!51 q2!1)) e!1142)))

(declare-fun b!1935 () Bool)

(assert (=> b!1935 (= e!1142 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1936 () Bool)

(assert (=> b!1936 (= e!1142 (union (insert (head!226 (front!51 q2!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (front!51 q2!1)))))))

(assert (= (and d!1272 c!598) b!1935))

(assert (= (and d!1272 (not c!598)) b!1936))

(declare-fun m!2665 () Bool)

(assert (=> b!1936 m!2665))

(declare-fun m!2667 () Bool)

(assert (=> b!1936 m!2667))

(assert (=> b!1788 d!1272))

(declare-fun d!1274 () Bool)

(declare-fun c!599 () Bool)

(assert (=> d!1274 (= c!599 (is-Nil!55 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))))))

(declare-fun e!1143 () (Set (_ BitVec 32)))

(assert (=> d!1274 (= (content!22 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))) e!1143)))

(declare-fun b!1937 () Bool)

(assert (=> b!1937 (= e!1143 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1938 () Bool)

(assert (=> b!1938 (= e!1143 (union (insert (head!226 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))))))))

(assert (= (and d!1274 c!599) b!1937))

(assert (= (and d!1274 (not c!599)) b!1938))

(declare-fun m!2669 () Bool)

(assert (=> b!1938 m!2669))

(declare-fun m!2671 () Bool)

(assert (=> b!1938 m!2671))

(assert (=> b!1788 d!1274))

(declare-fun d!1276 () Bool)

(declare-fun lt!499 () Int)

(assert (=> d!1276 (>= lt!499 0)))

(declare-fun e!1144 () Int)

(assert (=> d!1276 (= lt!499 e!1144)))

(declare-fun c!600 () Bool)

(assert (=> d!1276 (= c!600 (is-Nil!55 (front!51 lt!431)))))

(assert (=> d!1276 (= (size!23 (front!51 lt!431)) lt!499)))

(declare-fun b!1939 () Bool)

(assert (=> b!1939 (= e!1144 0)))

(declare-fun b!1940 () Bool)

(assert (=> b!1940 (= e!1144 (+ 1 (size!23 (tail!238 (front!51 lt!431)))))))

(assert (= (and d!1276 c!600) b!1939))

(assert (= (and d!1276 (not c!600)) b!1940))

(declare-fun m!2673 () Bool)

(assert (=> b!1940 m!2673))

(assert (=> d!1170 d!1276))

(declare-fun d!1278 () Bool)

(declare-fun lt!500 () Int)

(assert (=> d!1278 (>= lt!500 0)))

(declare-fun e!1145 () Int)

(assert (=> d!1278 (= lt!500 e!1145)))

(declare-fun c!601 () Bool)

(assert (=> d!1278 (= c!601 (is-Nil!55 (rear!53 lt!431)))))

(assert (=> d!1278 (= (size!23 (rear!53 lt!431)) lt!500)))

(declare-fun b!1941 () Bool)

(assert (=> b!1941 (= e!1145 0)))

(declare-fun b!1942 () Bool)

(assert (=> b!1942 (= e!1145 (+ 1 (size!23 (tail!238 (rear!53 lt!431)))))))

(assert (= (and d!1278 c!601) b!1941))

(assert (= (and d!1278 (not c!601)) b!1942))

(declare-fun m!2675 () Bool)

(assert (=> b!1942 m!2675))

(assert (=> d!1170 d!1278))

(declare-fun d!1280 () Bool)

(declare-fun e!1146 () Bool)

(assert (=> d!1280 e!1146))

(declare-fun res!854 () Bool)

(assert (=> d!1280 (=> (not res!854) (not e!1146))))

(declare-fun lt!501 () List!54)

(assert (=> d!1280 (= res!854 (= (size!23 lt!501) (+ (size!23 (tail!238 (front!51 q2!1))) (size!23 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))))))))

(declare-fun e!1147 () List!54)

(assert (=> d!1280 (= lt!501 e!1147)))

(declare-fun c!602 () Bool)

(assert (=> d!1280 (= c!602 (is-Nil!55 (tail!238 (front!51 q2!1))))))

(assert (=> d!1280 (= (concat!2 (tail!238 (front!51 q2!1)) (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))) lt!501)))

(declare-fun b!1943 () Bool)

(assert (=> b!1943 (= e!1147 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1))))))

(declare-fun b!1944 () Bool)

(assert (=> b!1944 (= e!1147 (Cons!54 (head!226 (tail!238 (front!51 q2!1))) (concat!2 (tail!238 (tail!238 (front!51 q2!1))) (reverse!5 (Cons!54 e3!1 (rear!53 q2!1))))))))

(declare-fun b!1945 () Bool)

(assert (=> b!1945 (= e!1146 (= (content!22 lt!501) (union (content!22 (tail!238 (front!51 q2!1))) (content!22 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))))))))

(assert (= (and d!1280 c!602) b!1943))

(assert (= (and d!1280 (not c!602)) b!1944))

(assert (= (and d!1280 res!854) b!1945))

(declare-fun m!2677 () Bool)

(assert (=> d!1280 m!2677))

(assert (=> d!1280 m!2389))

(assert (=> d!1280 m!2297))

(assert (=> d!1280 m!2393))

(assert (=> b!1944 m!2297))

(declare-fun m!2679 () Bool)

(assert (=> b!1944 m!2679))

(declare-fun m!2681 () Bool)

(assert (=> b!1945 m!2681))

(assert (=> b!1945 m!2667))

(assert (=> b!1945 m!2297))

(assert (=> b!1945 m!2401))

(assert (=> b!1787 d!1280))

(declare-fun d!1282 () Bool)

(declare-fun lt!502 () Int)

(assert (=> d!1282 (>= lt!502 0)))

(declare-fun e!1148 () Int)

(assert (=> d!1282 (= lt!502 e!1148)))

(declare-fun c!603 () Bool)

(assert (=> d!1282 (= c!603 (is-Nil!55 (tail!238 (front!51 lt!417))))))

(assert (=> d!1282 (= (size!23 (tail!238 (front!51 lt!417))) lt!502)))

(declare-fun b!1946 () Bool)

(assert (=> b!1946 (= e!1148 0)))

(declare-fun b!1947 () Bool)

(assert (=> b!1947 (= e!1148 (+ 1 (size!23 (tail!238 (tail!238 (front!51 lt!417))))))))

(assert (= (and d!1282 c!603) b!1946))

(assert (= (and d!1282 (not c!603)) b!1947))

(declare-fun m!2683 () Bool)

(assert (=> b!1947 m!2683))

(assert (=> b!1796 d!1282))

(declare-fun d!1284 () Bool)

(declare-fun c!604 () Bool)

(assert (=> d!1284 (= c!604 (is-Nil!55 lt!439))))

(declare-fun e!1149 () (Set (_ BitVec 32)))

(assert (=> d!1284 (= (content!22 lt!439) e!1149)))

(declare-fun b!1948 () Bool)

(assert (=> b!1948 (= e!1149 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1949 () Bool)

(assert (=> b!1949 (= e!1149 (union (insert (head!226 lt!439) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!439))))))

(assert (= (and d!1284 c!604) b!1948))

(assert (= (and d!1284 (not c!604)) b!1949))

(declare-fun m!2685 () Bool)

(assert (=> b!1949 m!2685))

(declare-fun m!2687 () Bool)

(assert (=> b!1949 m!2687))

(assert (=> b!1775 d!1284))

(declare-fun d!1286 () Bool)

(declare-fun c!605 () Bool)

(assert (=> d!1286 (= c!605 (is-Nil!55 (front!51 q1!1)))))

(declare-fun e!1150 () (Set (_ BitVec 32)))

(assert (=> d!1286 (= (content!22 (front!51 q1!1)) e!1150)))

(declare-fun b!1950 () Bool)

(assert (=> b!1950 (= e!1150 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1951 () Bool)

(assert (=> b!1951 (= e!1150 (union (insert (head!226 (front!51 q1!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (front!51 q1!1)))))))

(assert (= (and d!1286 c!605) b!1950))

(assert (= (and d!1286 (not c!605)) b!1951))

(declare-fun m!2689 () Bool)

(assert (=> b!1951 m!2689))

(declare-fun m!2691 () Bool)

(assert (=> b!1951 m!2691))

(assert (=> b!1775 d!1286))

(declare-fun d!1288 () Bool)

(declare-fun c!606 () Bool)

(assert (=> d!1288 (= c!606 (is-Nil!55 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))))))

(declare-fun e!1151 () (Set (_ BitVec 32)))

(assert (=> d!1288 (= (content!22 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))) e!1151)))

(declare-fun b!1952 () Bool)

(assert (=> b!1952 (= e!1151 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1953 () Bool)

(assert (=> b!1953 (= e!1151 (union (insert (head!226 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))))))))

(assert (= (and d!1288 c!606) b!1952))

(assert (= (and d!1288 (not c!606)) b!1953))

(declare-fun m!2693 () Bool)

(assert (=> b!1953 m!2693))

(declare-fun m!2695 () Bool)

(assert (=> b!1953 m!2695))

(assert (=> b!1775 d!1288))

(assert (=> b!1820 d!1134))

(declare-fun d!1290 () Bool)

(declare-fun e!1152 () Bool)

(assert (=> d!1290 e!1152))

(declare-fun res!855 () Bool)

(assert (=> d!1290 (=> (not res!855) (not e!1152))))

(declare-fun lt!503 () List!54)

(assert (=> d!1290 (= res!855 (= (size!23 lt!503) (+ (size!23 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))) (size!23 (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55)))))))

(declare-fun e!1153 () List!54)

(assert (=> d!1290 (= lt!503 e!1153)))

(declare-fun c!607 () Bool)

(assert (=> d!1290 (= c!607 (is-Nil!55 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))))))

(assert (=> d!1290 (= (concat!2 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))) (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55)) lt!503)))

(declare-fun b!1954 () Bool)

(assert (=> b!1954 (= e!1153 (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55))))

(declare-fun b!1955 () Bool)

(assert (=> b!1955 (= e!1153 (Cons!54 (head!226 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))) (concat!2 (tail!238 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))) (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55))))))

(declare-fun b!1956 () Bool)

(assert (=> b!1956 (= e!1152 (= (content!22 lt!503) (union (content!22 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))) (content!22 (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55)))))))

(assert (= (and d!1290 c!607) b!1954))

(assert (= (and d!1290 (not c!607)) b!1955))

(assert (= (and d!1290 res!855) b!1956))

(declare-fun m!2697 () Bool)

(assert (=> d!1290 m!2697))

(assert (=> d!1290 m!2379))

(declare-fun m!2699 () Bool)

(assert (=> d!1290 m!2699))

(declare-fun m!2701 () Bool)

(assert (=> d!1290 m!2701))

(declare-fun m!2703 () Bool)

(assert (=> b!1955 m!2703))

(declare-fun m!2705 () Bool)

(assert (=> b!1956 m!2705))

(assert (=> b!1956 m!2379))

(declare-fun m!2707 () Bool)

(assert (=> b!1956 m!2707))

(declare-fun m!2709 () Bool)

(assert (=> b!1956 m!2709))

(assert (=> b!1781 d!1290))

(declare-fun d!1292 () Bool)

(declare-fun lt!504 () List!54)

(assert (=> d!1292 (= (content!22 lt!504) (content!22 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))))

(declare-fun e!1154 () List!54)

(assert (=> d!1292 (= lt!504 e!1154)))

(declare-fun c!608 () Bool)

(assert (=> d!1292 (= c!608 (is-Nil!55 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))))

(assert (=> d!1292 (= (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))) lt!504)))

(declare-fun b!1957 () Bool)

(assert (=> b!1957 (= e!1154 Nil!55)))

(declare-fun b!1958 () Bool)

(assert (=> b!1958 (= e!1154 (concat!2 (reverse!5 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))) (Cons!54 (head!226 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))) Nil!55)))))

(assert (= (and d!1292 c!608) b!1957))

(assert (= (and d!1292 (not c!608)) b!1958))

(declare-fun m!2711 () Bool)

(assert (=> d!1292 m!2711))

(assert (=> d!1292 m!2631))

(declare-fun m!2713 () Bool)

(assert (=> b!1958 m!2713))

(assert (=> b!1958 m!2713))

(declare-fun m!2715 () Bool)

(assert (=> b!1958 m!2715))

(assert (=> b!1781 d!1292))

(declare-fun d!1294 () Bool)

(declare-fun lt!505 () Int)

(assert (=> d!1294 (>= lt!505 0)))

(declare-fun e!1155 () Int)

(assert (=> d!1294 (= lt!505 e!1155)))

(declare-fun c!609 () Bool)

(assert (=> d!1294 (= c!609 (is-Nil!55 (tail!238 (tail!238 (front!51 queue!73)))))))

(assert (=> d!1294 (= (size!23 (tail!238 (tail!238 (front!51 queue!73)))) lt!505)))

(declare-fun b!1959 () Bool)

(assert (=> b!1959 (= e!1155 0)))

(declare-fun b!1960 () Bool)

(assert (=> b!1960 (= e!1155 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (front!51 queue!73)))))))))

(assert (= (and d!1294 c!609) b!1959))

(assert (= (and d!1294 (not c!609)) b!1960))

(declare-fun m!2717 () Bool)

(assert (=> b!1960 m!2717))

(assert (=> b!1818 d!1294))

(declare-fun d!1296 () Bool)

(declare-fun e!1156 () Bool)

(assert (=> d!1296 e!1156))

(declare-fun res!856 () Bool)

(assert (=> d!1296 (=> (not res!856) (not e!1156))))

(declare-fun lt!506 () List!54)

(assert (=> d!1296 (= res!856 (= (size!23 lt!506) (+ (size!23 (reverse!5 (tail!238 (rear!53 q4!1)))) (size!23 (Cons!54 (head!226 (rear!53 q4!1)) Nil!55)))))))

(declare-fun e!1157 () List!54)

(assert (=> d!1296 (= lt!506 e!1157)))

(declare-fun c!610 () Bool)

(assert (=> d!1296 (= c!610 (is-Nil!55 (reverse!5 (tail!238 (rear!53 q4!1)))))))

(assert (=> d!1296 (= (concat!2 (reverse!5 (tail!238 (rear!53 q4!1))) (Cons!54 (head!226 (rear!53 q4!1)) Nil!55)) lt!506)))

(declare-fun b!1961 () Bool)

(assert (=> b!1961 (= e!1157 (Cons!54 (head!226 (rear!53 q4!1)) Nil!55))))

(declare-fun b!1962 () Bool)

(assert (=> b!1962 (= e!1157 (Cons!54 (head!226 (reverse!5 (tail!238 (rear!53 q4!1)))) (concat!2 (tail!238 (reverse!5 (tail!238 (rear!53 q4!1)))) (Cons!54 (head!226 (rear!53 q4!1)) Nil!55))))))

(declare-fun b!1963 () Bool)

(assert (=> b!1963 (= e!1156 (= (content!22 lt!506) (union (content!22 (reverse!5 (tail!238 (rear!53 q4!1)))) (content!22 (Cons!54 (head!226 (rear!53 q4!1)) Nil!55)))))))

(assert (= (and d!1296 c!610) b!1961))

(assert (= (and d!1296 (not c!610)) b!1962))

(assert (= (and d!1296 res!856) b!1963))

(declare-fun m!2719 () Bool)

(assert (=> d!1296 m!2719))

(assert (=> d!1296 m!2459))

(declare-fun m!2721 () Bool)

(assert (=> d!1296 m!2721))

(declare-fun m!2723 () Bool)

(assert (=> d!1296 m!2723))

(declare-fun m!2725 () Bool)

(assert (=> b!1962 m!2725))

(declare-fun m!2727 () Bool)

(assert (=> b!1963 m!2727))

(assert (=> b!1963 m!2459))

(declare-fun m!2729 () Bool)

(assert (=> b!1963 m!2729))

(declare-fun m!2731 () Bool)

(assert (=> b!1963 m!2731))

(assert (=> b!1808 d!1296))

(declare-fun d!1298 () Bool)

(declare-fun lt!507 () List!54)

(assert (=> d!1298 (= (content!22 lt!507) (content!22 (tail!238 (rear!53 q4!1))))))

(declare-fun e!1158 () List!54)

(assert (=> d!1298 (= lt!507 e!1158)))

(declare-fun c!611 () Bool)

(assert (=> d!1298 (= c!611 (is-Nil!55 (tail!238 (rear!53 q4!1))))))

(assert (=> d!1298 (= (reverse!5 (tail!238 (rear!53 q4!1))) lt!507)))

(declare-fun b!1964 () Bool)

(assert (=> b!1964 (= e!1158 Nil!55)))

(declare-fun b!1965 () Bool)

(assert (=> b!1965 (= e!1158 (concat!2 (reverse!5 (tail!238 (tail!238 (rear!53 q4!1)))) (Cons!54 (head!226 (tail!238 (rear!53 q4!1))) Nil!55)))))

(assert (= (and d!1298 c!611) b!1964))

(assert (= (and d!1298 (not c!611)) b!1965))

(declare-fun m!2733 () Bool)

(assert (=> d!1298 m!2733))

(assert (=> d!1298 m!2591))

(declare-fun m!2735 () Bool)

(assert (=> b!1965 m!2735))

(assert (=> b!1965 m!2735))

(declare-fun m!2737 () Bool)

(assert (=> b!1965 m!2737))

(assert (=> b!1808 d!1298))

(declare-fun d!1300 () Bool)

(declare-fun e!1159 () Bool)

(assert (=> d!1300 e!1159))

(declare-fun res!857 () Bool)

(assert (=> d!1300 (=> (not res!857) (not e!1159))))

(declare-fun lt!508 () List!54)

(assert (=> d!1300 (= res!857 (= (size!23 lt!508) (+ (size!23 (tail!238 (front!51 q1!1))) (size!23 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))))))))

(declare-fun e!1160 () List!54)

(assert (=> d!1300 (= lt!508 e!1160)))

(declare-fun c!612 () Bool)

(assert (=> d!1300 (= c!612 (is-Nil!55 (tail!238 (front!51 q1!1))))))

(assert (=> d!1300 (= (concat!2 (tail!238 (front!51 q1!1)) (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))) lt!508)))

(declare-fun b!1966 () Bool)

(assert (=> b!1966 (= e!1160 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1))))))

(declare-fun b!1967 () Bool)

(assert (=> b!1967 (= e!1160 (Cons!54 (head!226 (tail!238 (front!51 q1!1))) (concat!2 (tail!238 (tail!238 (front!51 q1!1))) (reverse!5 (Cons!54 e2!3 (rear!53 q1!1))))))))

(declare-fun b!1968 () Bool)

(assert (=> b!1968 (= e!1159 (= (content!22 lt!508) (union (content!22 (tail!238 (front!51 q1!1))) (content!22 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))))))))

(assert (= (and d!1300 c!612) b!1966))

(assert (= (and d!1300 (not c!612)) b!1967))

(assert (= (and d!1300 res!857) b!1968))

(declare-fun m!2739 () Bool)

(assert (=> d!1300 m!2739))

(assert (=> d!1300 m!2473))

(assert (=> d!1300 m!2357))

(assert (=> d!1300 m!2365))

(assert (=> b!1967 m!2357))

(declare-fun m!2741 () Bool)

(assert (=> b!1967 m!2741))

(declare-fun m!2743 () Bool)

(assert (=> b!1968 m!2743))

(assert (=> b!1968 m!2691))

(assert (=> b!1968 m!2357))

(assert (=> b!1968 m!2373))

(assert (=> b!1774 d!1300))

(assert (=> b!1764 d!1188))

(declare-fun d!1302 () Bool)

(declare-fun lt!509 () Int)

(assert (=> d!1302 (>= lt!509 0)))

(declare-fun e!1161 () Int)

(assert (=> d!1302 (= lt!509 e!1161)))

(declare-fun c!613 () Bool)

(assert (=> d!1302 (= c!613 (is-Nil!55 (tail!238 (front!51 lt!422))))))

(assert (=> d!1302 (= (size!23 (tail!238 (front!51 lt!422))) lt!509)))

(declare-fun b!1969 () Bool)

(assert (=> b!1969 (= e!1161 0)))

(declare-fun b!1970 () Bool)

(assert (=> b!1970 (= e!1161 (+ 1 (size!23 (tail!238 (tail!238 (front!51 lt!422))))))))

(assert (= (and d!1302 c!613) b!1969))

(assert (= (and d!1302 (not c!613)) b!1970))

(declare-fun m!2745 () Bool)

(assert (=> b!1970 m!2745))

(assert (=> b!1810 d!1302))

(declare-fun d!1304 () Bool)

(declare-fun lt!510 () Int)

(assert (=> d!1304 (>= lt!510 0)))

(declare-fun e!1162 () Int)

(assert (=> d!1304 (= lt!510 e!1162)))

(declare-fun c!614 () Bool)

(assert (=> d!1304 (= c!614 (is-Nil!55 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))))

(assert (=> d!1304 (= (size!23 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))) lt!510)))

(declare-fun b!1971 () Bool)

(assert (=> b!1971 (= e!1162 0)))

(declare-fun b!1972 () Bool)

(assert (=> b!1972 (= e!1162 (+ 1 (size!23 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))))))

(assert (= (and d!1304 c!614) b!1971))

(assert (= (and d!1304 (not c!614)) b!1972))

(declare-fun m!2747 () Bool)

(assert (=> b!1972 m!2747))

(assert (=> b!1814 d!1304))

(declare-fun d!1306 () Bool)

(declare-fun e!1163 () Bool)

(assert (=> d!1306 e!1163))

(declare-fun res!858 () Bool)

(assert (=> d!1306 (=> (not res!858) (not e!1163))))

(declare-fun lt!511 () List!54)

(assert (=> d!1306 (= res!858 (= (size!23 lt!511) (+ (size!23 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))) (size!23 (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55)))))))

(declare-fun e!1164 () List!54)

(assert (=> d!1306 (= lt!511 e!1164)))

(declare-fun c!615 () Bool)

(assert (=> d!1306 (= c!615 (is-Nil!55 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))))))

(assert (=> d!1306 (= (concat!2 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))) (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55)) lt!511)))

(declare-fun b!1973 () Bool)

(assert (=> b!1973 (= e!1164 (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55))))

(declare-fun b!1974 () Bool)

(assert (=> b!1974 (= e!1164 (Cons!54 (head!226 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))) (concat!2 (tail!238 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))) (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55))))))

(declare-fun b!1975 () Bool)

(assert (=> b!1975 (= e!1163 (= (content!22 lt!511) (union (content!22 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))) (content!22 (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55)))))))

(assert (= (and d!1306 c!615) b!1973))

(assert (= (and d!1306 (not c!615)) b!1974))

(assert (= (and d!1306 res!858) b!1975))

(declare-fun m!2749 () Bool)

(assert (=> d!1306 m!2749))

(assert (=> d!1306 m!2493))

(declare-fun m!2751 () Bool)

(assert (=> d!1306 m!2751))

(declare-fun m!2753 () Bool)

(assert (=> d!1306 m!2753))

(declare-fun m!2755 () Bool)

(assert (=> b!1974 m!2755))

(declare-fun m!2757 () Bool)

(assert (=> b!1975 m!2757))

(assert (=> b!1975 m!2493))

(declare-fun m!2759 () Bool)

(assert (=> b!1975 m!2759))

(declare-fun m!2761 () Bool)

(assert (=> b!1975 m!2761))

(assert (=> b!1825 d!1306))

(declare-fun d!1308 () Bool)

(declare-fun lt!512 () List!54)

(assert (=> d!1308 (= (content!22 lt!512) (content!22 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))))

(declare-fun e!1165 () List!54)

(assert (=> d!1308 (= lt!512 e!1165)))

(declare-fun c!616 () Bool)

(assert (=> d!1308 (= c!616 (is-Nil!55 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))))

(assert (=> d!1308 (= (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))) lt!512)))

(declare-fun b!1976 () Bool)

(assert (=> b!1976 (= e!1165 Nil!55)))

(declare-fun b!1977 () Bool)

(assert (=> b!1977 (= e!1165 (concat!2 (reverse!5 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))) (Cons!54 (head!226 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))) Nil!55)))))

(assert (= (and d!1308 c!616) b!1976))

(assert (= (and d!1308 (not c!616)) b!1977))

(declare-fun m!2763 () Bool)

(assert (=> d!1308 m!2763))

(assert (=> d!1308 m!2657))

(declare-fun m!2765 () Bool)

(assert (=> b!1977 m!2765))

(assert (=> b!1977 m!2765))

(declare-fun m!2767 () Bool)

(assert (=> b!1977 m!2767))

(assert (=> b!1825 d!1308))

(declare-fun d!1310 () Bool)

(declare-fun lt!513 () Int)

(assert (=> d!1310 (>= lt!513 0)))

(declare-fun e!1166 () Int)

(assert (=> d!1310 (= lt!513 e!1166)))

(declare-fun c!617 () Bool)

(assert (=> d!1310 (= c!617 (is-Nil!55 lt!451))))

(assert (=> d!1310 (= (size!23 lt!451) lt!513)))

(declare-fun b!1978 () Bool)

(assert (=> b!1978 (= e!1166 0)))

(declare-fun b!1979 () Bool)

(assert (=> b!1979 (= e!1166 (+ 1 (size!23 (tail!238 lt!451))))))

(assert (= (and d!1310 c!617) b!1978))

(assert (= (and d!1310 (not c!617)) b!1979))

(declare-fun m!2769 () Bool)

(assert (=> b!1979 m!2769))

(assert (=> d!1140 d!1310))

(assert (=> d!1140 d!1188))

(declare-fun d!1312 () Bool)

(declare-fun lt!514 () Int)

(assert (=> d!1312 (>= lt!514 0)))

(declare-fun e!1167 () Int)

(assert (=> d!1312 (= lt!514 e!1167)))

(declare-fun c!618 () Bool)

(assert (=> d!1312 (= c!618 (is-Nil!55 (reverse!5 (rear!53 q3!1))))))

(assert (=> d!1312 (= (size!23 (reverse!5 (rear!53 q3!1))) lt!514)))

(declare-fun b!1980 () Bool)

(assert (=> b!1980 (= e!1167 0)))

(declare-fun b!1981 () Bool)

(assert (=> b!1981 (= e!1167 (+ 1 (size!23 (tail!238 (reverse!5 (rear!53 q3!1))))))))

(assert (= (and d!1312 c!618) b!1980))

(assert (= (and d!1312 (not c!618)) b!1981))

(declare-fun m!2771 () Bool)

(assert (=> b!1981 m!2771))

(assert (=> d!1140 d!1312))

(declare-fun d!1314 () Bool)

(declare-fun e!1168 () Bool)

(assert (=> d!1314 e!1168))

(declare-fun res!859 () Bool)

(assert (=> d!1314 (=> (not res!859) (not e!1168))))

(declare-fun lt!515 () List!54)

(assert (=> d!1314 (= res!859 (= (size!23 lt!515) (+ (size!23 (tail!238 (tail!238 (front!51 q3!1)))) (size!23 (reverse!5 (rear!53 q3!1))))))))

(declare-fun e!1169 () List!54)

(assert (=> d!1314 (= lt!515 e!1169)))

(declare-fun c!619 () Bool)

(assert (=> d!1314 (= c!619 (is-Nil!55 (tail!238 (tail!238 (front!51 q3!1)))))))

(assert (=> d!1314 (= (concat!2 (tail!238 (tail!238 (front!51 q3!1))) (reverse!5 (rear!53 q3!1))) lt!515)))

(declare-fun b!1982 () Bool)

(assert (=> b!1982 (= e!1169 (reverse!5 (rear!53 q3!1)))))

(declare-fun b!1983 () Bool)

(assert (=> b!1983 (= e!1169 (Cons!54 (head!226 (tail!238 (tail!238 (front!51 q3!1)))) (concat!2 (tail!238 (tail!238 (tail!238 (front!51 q3!1)))) (reverse!5 (rear!53 q3!1)))))))

(declare-fun b!1984 () Bool)

(assert (=> b!1984 (= e!1168 (= (content!22 lt!515) (union (content!22 (tail!238 (tail!238 (front!51 q3!1)))) (content!22 (reverse!5 (rear!53 q3!1))))))))

(assert (= (and d!1314 c!619) b!1982))

(assert (= (and d!1314 (not c!619)) b!1983))

(assert (= (and d!1314 res!859) b!1984))

(declare-fun m!2773 () Bool)

(assert (=> d!1314 m!2773))

(assert (=> d!1314 m!2523))

(assert (=> d!1314 m!2341))

(assert (=> d!1314 m!2425))

(assert (=> b!1983 m!2341))

(declare-fun m!2775 () Bool)

(assert (=> b!1983 m!2775))

(declare-fun m!2777 () Bool)

(assert (=> b!1984 m!2777))

(assert (=> b!1984 m!2541))

(assert (=> b!1984 m!2341))

(assert (=> b!1984 m!2433))

(assert (=> b!1800 d!1314))

(declare-fun d!1316 () Bool)

(declare-fun lt!516 () Int)

(assert (=> d!1316 (>= lt!516 0)))

(declare-fun e!1170 () Int)

(assert (=> d!1316 (= lt!516 e!1170)))

(declare-fun c!620 () Bool)

(assert (=> d!1316 (= c!620 (is-Nil!55 (front!51 lt!430)))))

(assert (=> d!1316 (= (size!23 (front!51 lt!430)) lt!516)))

(declare-fun b!1985 () Bool)

(assert (=> b!1985 (= e!1170 0)))

(declare-fun b!1986 () Bool)

(assert (=> b!1986 (= e!1170 (+ 1 (size!23 (tail!238 (front!51 lt!430)))))))

(assert (= (and d!1316 c!620) b!1985))

(assert (= (and d!1316 (not c!620)) b!1986))

(declare-fun m!2779 () Bool)

(assert (=> b!1986 m!2779))

(assert (=> d!1120 d!1316))

(declare-fun d!1318 () Bool)

(declare-fun lt!517 () Int)

(assert (=> d!1318 (>= lt!517 0)))

(declare-fun e!1171 () Int)

(assert (=> d!1318 (= lt!517 e!1171)))

(declare-fun c!621 () Bool)

(assert (=> d!1318 (= c!621 (is-Nil!55 (rear!53 lt!430)))))

(assert (=> d!1318 (= (size!23 (rear!53 lt!430)) lt!517)))

(declare-fun b!1987 () Bool)

(assert (=> b!1987 (= e!1171 0)))

(declare-fun b!1988 () Bool)

(assert (=> b!1988 (= e!1171 (+ 1 (size!23 (tail!238 (rear!53 lt!430)))))))

(assert (= (and d!1318 c!621) b!1987))

(assert (= (and d!1318 (not c!621)) b!1988))

(declare-fun m!2781 () Bool)

(assert (=> b!1988 m!2781))

(assert (=> d!1120 d!1318))

(declare-fun d!1320 () Bool)

(declare-fun e!1172 () Bool)

(assert (=> d!1320 e!1172))

(declare-fun res!860 () Bool)

(assert (=> d!1320 (=> (not res!860) (not e!1172))))

(declare-fun lt!518 () List!54)

(assert (=> d!1320 (= res!860 (= (size!23 lt!518) (+ (size!23 (reverse!5 (tail!238 (rear!53 q3!1)))) (size!23 (Cons!54 (head!226 (rear!53 q3!1)) Nil!55)))))))

(declare-fun e!1173 () List!54)

(assert (=> d!1320 (= lt!518 e!1173)))

(declare-fun c!622 () Bool)

(assert (=> d!1320 (= c!622 (is-Nil!55 (reverse!5 (tail!238 (rear!53 q3!1)))))))

(assert (=> d!1320 (= (concat!2 (reverse!5 (tail!238 (rear!53 q3!1))) (Cons!54 (head!226 (rear!53 q3!1)) Nil!55)) lt!518)))

(declare-fun b!1989 () Bool)

(assert (=> b!1989 (= e!1173 (Cons!54 (head!226 (rear!53 q3!1)) Nil!55))))

(declare-fun b!1990 () Bool)

(assert (=> b!1990 (= e!1173 (Cons!54 (head!226 (reverse!5 (tail!238 (rear!53 q3!1)))) (concat!2 (tail!238 (reverse!5 (tail!238 (rear!53 q3!1)))) (Cons!54 (head!226 (rear!53 q3!1)) Nil!55))))))

(declare-fun b!1991 () Bool)

(assert (=> b!1991 (= e!1172 (= (content!22 lt!518) (union (content!22 (reverse!5 (tail!238 (rear!53 q3!1)))) (content!22 (Cons!54 (head!226 (rear!53 q3!1)) Nil!55)))))))

(assert (= (and d!1320 c!622) b!1989))

(assert (= (and d!1320 (not c!622)) b!1990))

(assert (= (and d!1320 res!860) b!1991))

(declare-fun m!2783 () Bool)

(assert (=> d!1320 m!2783))

(assert (=> d!1320 m!2439))

(declare-fun m!2785 () Bool)

(assert (=> d!1320 m!2785))

(declare-fun m!2787 () Bool)

(assert (=> d!1320 m!2787))

(declare-fun m!2789 () Bool)

(assert (=> b!1990 m!2789))

(declare-fun m!2791 () Bool)

(assert (=> b!1991 m!2791))

(assert (=> b!1991 m!2439))

(declare-fun m!2793 () Bool)

(assert (=> b!1991 m!2793))

(declare-fun m!2795 () Bool)

(assert (=> b!1991 m!2795))

(assert (=> b!1803 d!1320))

(declare-fun d!1322 () Bool)

(declare-fun lt!519 () List!54)

(assert (=> d!1322 (= (content!22 lt!519) (content!22 (tail!238 (rear!53 q3!1))))))

(declare-fun e!1174 () List!54)

(assert (=> d!1322 (= lt!519 e!1174)))

(declare-fun c!623 () Bool)

(assert (=> d!1322 (= c!623 (is-Nil!55 (tail!238 (rear!53 q3!1))))))

(assert (=> d!1322 (= (reverse!5 (tail!238 (rear!53 q3!1))) lt!519)))

(declare-fun b!1992 () Bool)

(assert (=> b!1992 (= e!1174 Nil!55)))

(declare-fun b!1993 () Bool)

(assert (=> b!1993 (= e!1174 (concat!2 (reverse!5 (tail!238 (tail!238 (rear!53 q3!1)))) (Cons!54 (head!226 (tail!238 (rear!53 q3!1))) Nil!55)))))

(assert (= (and d!1322 c!623) b!1992))

(assert (= (and d!1322 (not c!623)) b!1993))

(declare-fun m!2797 () Bool)

(assert (=> d!1322 m!2797))

(assert (=> d!1322 m!2531))

(declare-fun m!2799 () Bool)

(assert (=> b!1993 m!2799))

(assert (=> b!1993 m!2799))

(declare-fun m!2801 () Bool)

(assert (=> b!1993 m!2801))

(assert (=> b!1803 d!1322))

(declare-fun d!1324 () Bool)

(declare-fun lt!520 () Int)

(assert (=> d!1324 (>= lt!520 0)))

(declare-fun e!1175 () Int)

(assert (=> d!1324 (= lt!520 e!1175)))

(declare-fun c!624 () Bool)

(assert (=> d!1324 (= c!624 (is-Nil!55 (tail!238 (tail!238 (front!51 q3!1)))))))

(assert (=> d!1324 (= (size!23 (tail!238 (tail!238 (front!51 q3!1)))) lt!520)))

(declare-fun b!1994 () Bool)

(assert (=> b!1994 (= e!1175 0)))

(declare-fun b!1995 () Bool)

(assert (=> b!1995 (= e!1175 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (front!51 q3!1)))))))))

(assert (= (and d!1324 c!624) b!1994))

(assert (= (and d!1324 (not c!624)) b!1995))

(declare-fun m!2803 () Bool)

(assert (=> b!1995 m!2803))

(assert (=> b!1845 d!1324))

(declare-fun d!1326 () Bool)

(declare-fun lt!521 () Int)

(assert (=> d!1326 (>= lt!521 0)))

(declare-fun e!1176 () Int)

(assert (=> d!1326 (= lt!521 e!1176)))

(declare-fun c!625 () Bool)

(assert (=> d!1326 (= c!625 (is-Nil!55 lt!445))))

(assert (=> d!1326 (= (size!23 lt!445) lt!521)))

(declare-fun b!1996 () Bool)

(assert (=> b!1996 (= e!1176 0)))

(declare-fun b!1997 () Bool)

(assert (=> b!1997 (= e!1176 (+ 1 (size!23 (tail!238 lt!445))))))

(assert (= (and d!1326 c!625) b!1996))

(assert (= (and d!1326 (not c!625)) b!1997))

(declare-fun m!2805 () Bool)

(assert (=> b!1997 m!2805))

(assert (=> d!1126 d!1326))

(assert (=> d!1126 d!1124))

(declare-fun d!1328 () Bool)

(declare-fun lt!522 () Int)

(assert (=> d!1328 (>= lt!522 0)))

(declare-fun e!1177 () Int)

(assert (=> d!1328 (= lt!522 e!1177)))

(declare-fun c!626 () Bool)

(assert (=> d!1328 (= c!626 (is-Nil!55 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))))))

(assert (=> d!1328 (= (size!23 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))) lt!522)))

(declare-fun b!1998 () Bool)

(assert (=> b!1998 (= e!1177 0)))

(declare-fun b!1999 () Bool)

(assert (=> b!1999 (= e!1177 (+ 1 (size!23 (tail!238 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))))))))

(assert (= (and d!1328 c!626) b!1998))

(assert (= (and d!1328 (not c!626)) b!1999))

(declare-fun m!2807 () Bool)

(assert (=> b!1999 m!2807))

(assert (=> d!1126 d!1328))

(declare-fun d!1330 () Bool)

(declare-fun lt!523 () Int)

(assert (=> d!1330 (>= lt!523 0)))

(declare-fun e!1178 () Int)

(assert (=> d!1330 (= lt!523 e!1178)))

(declare-fun c!627 () Bool)

(assert (=> d!1330 (= c!627 (is-Nil!55 (front!51 lt!434)))))

(assert (=> d!1330 (= (size!23 (front!51 lt!434)) lt!523)))

(declare-fun b!2000 () Bool)

(assert (=> b!2000 (= e!1178 0)))

(declare-fun b!2001 () Bool)

(assert (=> b!2001 (= e!1178 (+ 1 (size!23 (tail!238 (front!51 lt!434)))))))

(assert (= (and d!1330 c!627) b!2000))

(assert (= (and d!1330 (not c!627)) b!2001))

(declare-fun m!2809 () Bool)

(assert (=> b!2001 m!2809))

(assert (=> d!1152 d!1330))

(declare-fun d!1332 () Bool)

(declare-fun lt!524 () Int)

(assert (=> d!1332 (>= lt!524 0)))

(declare-fun e!1179 () Int)

(assert (=> d!1332 (= lt!524 e!1179)))

(declare-fun c!628 () Bool)

(assert (=> d!1332 (= c!628 (is-Nil!55 (rear!53 lt!434)))))

(assert (=> d!1332 (= (size!23 (rear!53 lt!434)) lt!524)))

(declare-fun b!2002 () Bool)

(assert (=> b!2002 (= e!1179 0)))

(declare-fun b!2003 () Bool)

(assert (=> b!2003 (= e!1179 (+ 1 (size!23 (tail!238 (rear!53 lt!434)))))))

(assert (= (and d!1332 c!628) b!2002))

(assert (= (and d!1332 (not c!628)) b!2003))

(declare-fun m!2811 () Bool)

(assert (=> b!2003 m!2811))

(assert (=> d!1152 d!1332))

(declare-fun d!1334 () Bool)

(declare-fun lt!525 () Int)

(assert (=> d!1334 (>= lt!525 0)))

(declare-fun e!1180 () Int)

(assert (=> d!1334 (= lt!525 e!1180)))

(declare-fun c!629 () Bool)

(assert (=> d!1334 (= c!629 (is-Nil!55 (tail!238 (tail!238 (rear!53 queue!73)))))))

(assert (=> d!1334 (= (size!23 (tail!238 (tail!238 (rear!53 queue!73)))) lt!525)))

(declare-fun b!2004 () Bool)

(assert (=> b!2004 (= e!1180 0)))

(declare-fun b!2005 () Bool)

(assert (=> b!2005 (= e!1180 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (rear!53 queue!73)))))))))

(assert (= (and d!1334 c!629) b!2004))

(assert (= (and d!1334 (not c!629)) b!2005))

(declare-fun m!2813 () Bool)

(assert (=> b!2005 m!2813))

(assert (=> b!1843 d!1334))

(declare-fun d!1336 () Bool)

(declare-fun lt!526 () Int)

(assert (=> d!1336 (>= lt!526 0)))

(declare-fun e!1181 () Int)

(assert (=> d!1336 (= lt!526 e!1181)))

(declare-fun c!630 () Bool)

(assert (=> d!1336 (= c!630 (is-Nil!55 (tail!238 (rear!53 lt!422))))))

(assert (=> d!1336 (= (size!23 (tail!238 (rear!53 lt!422))) lt!526)))

(declare-fun b!2006 () Bool)

(assert (=> b!2006 (= e!1181 0)))

(declare-fun b!2007 () Bool)

(assert (=> b!2007 (= e!1181 (+ 1 (size!23 (tail!238 (tail!238 (rear!53 lt!422))))))))

(assert (= (and d!1336 c!630) b!2006))

(assert (= (and d!1336 (not c!630)) b!2007))

(declare-fun m!2815 () Bool)

(assert (=> b!2007 m!2815))

(assert (=> b!1812 d!1336))

(declare-fun d!1338 () Bool)

(declare-fun lt!527 () Int)

(assert (=> d!1338 (>= lt!527 0)))

(declare-fun e!1182 () Int)

(assert (=> d!1338 (= lt!527 e!1182)))

(declare-fun c!631 () Bool)

(assert (=> d!1338 (= c!631 (is-Nil!55 (tail!238 (front!51 q1!1))))))

(assert (=> d!1338 (= (size!23 (tail!238 (front!51 q1!1))) lt!527)))

(declare-fun b!2008 () Bool)

(assert (=> b!2008 (= e!1182 0)))

(declare-fun b!2009 () Bool)

(assert (=> b!2009 (= e!1182 (+ 1 (size!23 (tail!238 (tail!238 (front!51 q1!1))))))))

(assert (= (and d!1338 c!631) b!2008))

(assert (= (and d!1338 (not c!631)) b!2009))

(declare-fun m!2817 () Bool)

(assert (=> b!2009 m!2817))

(assert (=> b!1816 d!1338))

(declare-fun d!1340 () Bool)

(declare-fun lt!528 () Int)

(assert (=> d!1340 (>= lt!528 0)))

(declare-fun e!1183 () Int)

(assert (=> d!1340 (= lt!528 e!1183)))

(declare-fun c!632 () Bool)

(assert (=> d!1340 (= c!632 (is-Nil!55 (tail!238 (rear!53 lt!423))))))

(assert (=> d!1340 (= (size!23 (tail!238 (rear!53 lt!423))) lt!528)))

(declare-fun b!2010 () Bool)

(assert (=> b!2010 (= e!1183 0)))

(declare-fun b!2011 () Bool)

(assert (=> b!2011 (= e!1183 (+ 1 (size!23 (tail!238 (tail!238 (rear!53 lt!423))))))))

(assert (= (and d!1340 c!632) b!2010))

(assert (= (and d!1340 (not c!632)) b!2011))

(declare-fun m!2819 () Bool)

(assert (=> b!2011 m!2819))

(assert (=> b!1837 d!1340))

(declare-fun d!1342 () Bool)

(declare-fun c!633 () Bool)

(assert (=> d!1342 (= c!633 (is-Nil!55 lt!461))))

(declare-fun e!1184 () (Set (_ BitVec 32)))

(assert (=> d!1342 (= (content!22 lt!461) e!1184)))

(declare-fun b!2012 () Bool)

(assert (=> b!2012 (= e!1184 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2013 () Bool)

(assert (=> b!2013 (= e!1184 (union (insert (head!226 lt!461) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!461))))))

(assert (= (and d!1342 c!633) b!2012))

(assert (= (and d!1342 (not c!633)) b!2013))

(declare-fun m!2821 () Bool)

(assert (=> b!2013 m!2821))

(declare-fun m!2823 () Bool)

(assert (=> b!2013 m!2823))

(assert (=> b!1823 d!1342))

(declare-fun d!1344 () Bool)

(declare-fun c!634 () Bool)

(assert (=> d!1344 (= c!634 (is-Nil!55 (front!51 queue!56)))))

(declare-fun e!1185 () (Set (_ BitVec 32)))

(assert (=> d!1344 (= (content!22 (front!51 queue!56)) e!1185)))

(declare-fun b!2014 () Bool)

(assert (=> b!2014 (= e!1185 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2015 () Bool)

(assert (=> b!2015 (= e!1185 (union (insert (head!226 (front!51 queue!56)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (front!51 queue!56)))))))

(assert (= (and d!1344 c!634) b!2014))

(assert (= (and d!1344 (not c!634)) b!2015))

(declare-fun m!2825 () Bool)

(assert (=> b!2015 m!2825))

(assert (=> b!2015 m!2601))

(assert (=> b!1823 d!1344))

(declare-fun d!1346 () Bool)

(declare-fun c!635 () Bool)

(assert (=> d!1346 (= c!635 (is-Nil!55 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))))))

(declare-fun e!1186 () (Set (_ BitVec 32)))

(assert (=> d!1346 (= (content!22 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))) e!1186)))

(declare-fun b!2016 () Bool)

(assert (=> b!2016 (= e!1186 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2017 () Bool)

(assert (=> b!2017 (= e!1186 (union (insert (head!226 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))))))))

(assert (= (and d!1346 c!635) b!2016))

(assert (= (and d!1346 (not c!635)) b!2017))

(declare-fun m!2827 () Bool)

(assert (=> b!2017 m!2827))

(declare-fun m!2829 () Bool)

(assert (=> b!2017 m!2829))

(assert (=> b!1823 d!1346))

(declare-fun d!1348 () Bool)

(declare-fun lt!529 () Int)

(assert (=> d!1348 (>= lt!529 0)))

(declare-fun e!1187 () Int)

(assert (=> d!1348 (= lt!529 e!1187)))

(declare-fun c!636 () Bool)

(assert (=> d!1348 (= c!636 (is-Nil!55 (tail!238 (rear!53 lt!421))))))

(assert (=> d!1348 (= (size!23 (tail!238 (rear!53 lt!421))) lt!529)))

(declare-fun b!2018 () Bool)

(assert (=> b!2018 (= e!1187 0)))

(declare-fun b!2019 () Bool)

(assert (=> b!2019 (= e!1187 (+ 1 (size!23 (tail!238 (tail!238 (rear!53 lt!421))))))))

(assert (= (and d!1348 c!636) b!2018))

(assert (= (and d!1348 (not c!636)) b!2019))

(declare-fun m!2831 () Bool)

(assert (=> b!2019 m!2831))

(assert (=> b!1841 d!1348))

(declare-fun d!1350 () Bool)

(declare-fun c!637 () Bool)

(assert (=> d!1350 (= c!637 (is-Nil!55 lt!446))))

(declare-fun e!1188 () (Set (_ BitVec 32)))

(assert (=> d!1350 (= (content!22 lt!446) e!1188)))

(declare-fun b!2020 () Bool)

(assert (=> b!2020 (= e!1188 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2021 () Bool)

(assert (=> b!2021 (= e!1188 (union (insert (head!226 lt!446) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!446))))))

(assert (= (and d!1350 c!637) b!2020))

(assert (= (and d!1350 (not c!637)) b!2021))

(declare-fun m!2833 () Bool)

(assert (=> b!2021 m!2833))

(declare-fun m!2835 () Bool)

(assert (=> b!2021 m!2835))

(assert (=> d!1128 d!1350))

(declare-fun d!1352 () Bool)

(declare-fun c!638 () Bool)

(assert (=> d!1352 (= c!638 (is-Nil!55 (Cons!54 e3!1 (rear!53 q2!1))))))

(declare-fun e!1189 () (Set (_ BitVec 32)))

(assert (=> d!1352 (= (content!22 (Cons!54 e3!1 (rear!53 q2!1))) e!1189)))

(declare-fun b!2022 () Bool)

(assert (=> b!2022 (= e!1189 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2023 () Bool)

(assert (=> b!2023 (= e!1189 (union (insert (head!226 (Cons!54 e3!1 (rear!53 q2!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))))))

(assert (= (and d!1352 c!638) b!2022))

(assert (= (and d!1352 (not c!638)) b!2023))

(declare-fun m!2837 () Bool)

(assert (=> b!2023 m!2837))

(assert (=> b!2023 m!2619))

(assert (=> d!1128 d!1352))

(push 1)

(assert (not b!1851))

(assert (not b!1972))

(assert (not b!1953))

(assert (not b!1942))

(assert (not b!1981))

(assert (not b!2001))

(assert (not b!1857))

(assert (not b!1934))

(assert (not b!1869))

(assert (not b!1955))

(assert (not b!1895))

(assert (not b!2015))

(assert (not b!2019))

(assert (not b!1861))

(assert (not b!1975))

(assert (not b!1988))

(assert (not b!2003))

(assert (not b!1918))

(assert (not b!1916))

(assert (not b!1930))

(assert (not b!1855))

(assert (not b!1902))

(assert (not b!1926))

(assert (not b!1897))

(assert (not b!1875))

(assert (not b!1960))

(assert (not b!1958))

(assert (not b!1871))

(assert (not b!1873))

(assert (not b!1947))

(assert (not b!1997))

(assert (not b!1995))

(assert (not d!1314))

(assert (not b!1983))

(assert (not b!1949))

(assert (not d!1242))

(assert (not b!1936))

(assert (not b!1956))

(assert (not b!1920))

(assert (not d!1280))

(assert (not d!1300))

(assert (not b!1999))

(assert (not d!1290))

(assert (not b!1984))

(assert (not b!1979))

(assert (not b!1970))

(assert (not d!1320))

(assert (not b!1991))

(assert (not b!1974))

(assert (not b!1891))

(assert (not b!1911))

(assert (not b!1986))

(assert (not b!1968))

(assert (not b!1963))

(assert (not d!1292))

(assert (not b!2007))

(assert (not b!1859))

(assert (not b!2013))

(assert (not b!1905))

(assert (not b!2017))

(assert (not d!1322))

(assert (not b!1889))

(assert (not b!1990))

(assert (not b!1938))

(assert (not b!1867))

(assert (not b!1904))

(assert (not b!1922))

(assert (not b!1962))

(assert (not b!1853))

(assert (not b!1913))

(assert (not b!1879))

(assert (not b!2009))

(assert (not d!1244))

(assert (not b!1928))

(assert (not d!1252))

(assert (not b!1951))

(assert (not b!1909))

(assert (not d!1298))

(assert (not b!1945))

(assert (not b!1865))

(assert (not b!1932))

(assert (not b!2011))

(assert (not b!1901))

(assert (not b!1877))

(assert (not b!2021))

(assert (not b!1881))

(assert (not b!1940))

(assert (not b!1893))

(assert (not b!2005))

(assert (not b!1885))

(assert (not b!1977))

(assert (not b!1899))

(assert (not b!1944))

(assert (not d!1306))

(assert (not b!1924))

(assert (not b!1993))

(assert (not b!1967))

(assert (not b!1965))

(assert (not b!2023))

(assert (not d!1240))

(assert (not b!1907))

(assert (not d!1308))

(assert (not b!1863))

(assert (not d!1296))

(assert (not b!1883))

(assert (not b!1887))

(assert (not b!1915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1354 () Bool)

(declare-fun lt!530 () Int)

(assert (=> d!1354 (>= lt!530 0)))

(declare-fun e!1190 () Int)

(assert (=> d!1354 (= lt!530 e!1190)))

(declare-fun c!639 () Bool)

(assert (=> d!1354 (= c!639 (is-Nil!55 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))))))

(assert (=> d!1354 (= (size!23 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))) lt!530)))

(declare-fun b!2024 () Bool)

(assert (=> b!2024 (= e!1190 0)))

(declare-fun b!2025 () Bool)

(assert (=> b!2025 (= e!1190 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))))))))

(assert (= (and d!1354 c!639) b!2024))

(assert (= (and d!1354 (not c!639)) b!2025))

(declare-fun m!2839 () Bool)

(assert (=> b!2025 m!2839))

(assert (=> b!1972 d!1354))

(declare-fun d!1356 () Bool)

(declare-fun c!640 () Bool)

(assert (=> d!1356 (= c!640 (is-Nil!55 lt!492))))

(declare-fun e!1191 () (Set (_ BitVec 32)))

(assert (=> d!1356 (= (content!22 lt!492) e!1191)))

(declare-fun b!2026 () Bool)

(assert (=> b!2026 (= e!1191 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2027 () Bool)

(assert (=> b!2027 (= e!1191 (union (insert (head!226 lt!492) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!492))))))

(assert (= (and d!1356 c!640) b!2026))

(assert (= (and d!1356 (not c!640)) b!2027))

(declare-fun m!2841 () Bool)

(assert (=> b!2027 m!2841))

(declare-fun m!2843 () Bool)

(assert (=> b!2027 m!2843))

(assert (=> b!1916 d!1356))

(declare-fun d!1358 () Bool)

(declare-fun c!641 () Bool)

(assert (=> d!1358 (= c!641 (is-Nil!55 (tail!238 (tail!238 (front!51 q4!1)))))))

(declare-fun e!1192 () (Set (_ BitVec 32)))

(assert (=> d!1358 (= (content!22 (tail!238 (tail!238 (front!51 q4!1)))) e!1192)))

(declare-fun b!2028 () Bool)

(assert (=> b!2028 (= e!1192 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2029 () Bool)

(assert (=> b!2029 (= e!1192 (union (insert (head!226 (tail!238 (tail!238 (front!51 q4!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (tail!238 (front!51 q4!1)))))))))

(assert (= (and d!1358 c!641) b!2028))

(assert (= (and d!1358 (not c!641)) b!2029))

(declare-fun m!2845 () Bool)

(assert (=> b!2029 m!2845))

(declare-fun m!2847 () Bool)

(assert (=> b!2029 m!2847))

(assert (=> b!1916 d!1358))

(assert (=> b!1916 d!1228))

(declare-fun d!1360 () Bool)

(declare-fun lt!531 () Int)

(assert (=> d!1360 (>= lt!531 0)))

(declare-fun e!1193 () Int)

(assert (=> d!1360 (= lt!531 e!1193)))

(declare-fun c!642 () Bool)

(assert (=> d!1360 (= c!642 (is-Nil!55 (tail!238 lt!451)))))

(assert (=> d!1360 (= (size!23 (tail!238 lt!451)) lt!531)))

(declare-fun b!2030 () Bool)

(assert (=> b!2030 (= e!1193 0)))

(declare-fun b!2031 () Bool)

(assert (=> b!2031 (= e!1193 (+ 1 (size!23 (tail!238 (tail!238 lt!451)))))))

(assert (= (and d!1360 c!642) b!2030))

(assert (= (and d!1360 (not c!642)) b!2031))

(declare-fun m!2849 () Bool)

(assert (=> b!2031 m!2849))

(assert (=> b!1979 d!1360))

(declare-fun d!1362 () Bool)

(declare-fun lt!532 () Int)

(assert (=> d!1362 (>= lt!532 0)))

(declare-fun e!1194 () Int)

(assert (=> d!1362 (= lt!532 e!1194)))

(declare-fun c!643 () Bool)

(assert (=> d!1362 (= c!643 (is-Nil!55 (tail!238 (front!51 lt!431))))))

(assert (=> d!1362 (= (size!23 (tail!238 (front!51 lt!431))) lt!532)))

(declare-fun b!2032 () Bool)

(assert (=> b!2032 (= e!1194 0)))

(declare-fun b!2033 () Bool)

(assert (=> b!2033 (= e!1194 (+ 1 (size!23 (tail!238 (tail!238 (front!51 lt!431))))))))

(assert (= (and d!1362 c!643) b!2032))

(assert (= (and d!1362 (not c!643)) b!2033))

(declare-fun m!2851 () Bool)

(assert (=> b!2033 m!2851))

(assert (=> b!1940 d!1362))

(declare-fun d!1364 () Bool)

(declare-fun e!1195 () Bool)

(assert (=> d!1364 e!1195))

(declare-fun res!861 () Bool)

(assert (=> d!1364 (=> (not res!861) (not e!1195))))

(declare-fun lt!533 () List!54)

(assert (=> d!1364 (= res!861 (= (size!23 lt!533) (+ (size!23 (reverse!5 (tail!238 (tail!238 (rear!53 q3!1))))) (size!23 (Cons!54 (head!226 (tail!238 (rear!53 q3!1))) Nil!55)))))))

(declare-fun e!1196 () List!54)

(assert (=> d!1364 (= lt!533 e!1196)))

(declare-fun c!644 () Bool)

(assert (=> d!1364 (= c!644 (is-Nil!55 (reverse!5 (tail!238 (tail!238 (rear!53 q3!1))))))))

(assert (=> d!1364 (= (concat!2 (reverse!5 (tail!238 (tail!238 (rear!53 q3!1)))) (Cons!54 (head!226 (tail!238 (rear!53 q3!1))) Nil!55)) lt!533)))

(declare-fun b!2034 () Bool)

(assert (=> b!2034 (= e!1196 (Cons!54 (head!226 (tail!238 (rear!53 q3!1))) Nil!55))))

(declare-fun b!2035 () Bool)

(assert (=> b!2035 (= e!1196 (Cons!54 (head!226 (reverse!5 (tail!238 (tail!238 (rear!53 q3!1))))) (concat!2 (tail!238 (reverse!5 (tail!238 (tail!238 (rear!53 q3!1))))) (Cons!54 (head!226 (tail!238 (rear!53 q3!1))) Nil!55))))))

(declare-fun b!2036 () Bool)

(assert (=> b!2036 (= e!1195 (= (content!22 lt!533) (union (content!22 (reverse!5 (tail!238 (tail!238 (rear!53 q3!1))))) (content!22 (Cons!54 (head!226 (tail!238 (rear!53 q3!1))) Nil!55)))))))

(assert (= (and d!1364 c!644) b!2034))

(assert (= (and d!1364 (not c!644)) b!2035))

(assert (= (and d!1364 res!861) b!2036))

(declare-fun m!2853 () Bool)

(assert (=> d!1364 m!2853))

(assert (=> d!1364 m!2799))

(declare-fun m!2855 () Bool)

(assert (=> d!1364 m!2855))

(declare-fun m!2857 () Bool)

(assert (=> d!1364 m!2857))

(declare-fun m!2859 () Bool)

(assert (=> b!2035 m!2859))

(declare-fun m!2861 () Bool)

(assert (=> b!2036 m!2861))

(assert (=> b!2036 m!2799))

(declare-fun m!2863 () Bool)

(assert (=> b!2036 m!2863))

(declare-fun m!2865 () Bool)

(assert (=> b!2036 m!2865))

(assert (=> b!1993 d!1364))

(declare-fun d!1366 () Bool)

(declare-fun lt!534 () List!54)

(assert (=> d!1366 (= (content!22 lt!534) (content!22 (tail!238 (tail!238 (rear!53 q3!1)))))))

(declare-fun e!1197 () List!54)

(assert (=> d!1366 (= lt!534 e!1197)))

(declare-fun c!645 () Bool)

(assert (=> d!1366 (= c!645 (is-Nil!55 (tail!238 (tail!238 (rear!53 q3!1)))))))

(assert (=> d!1366 (= (reverse!5 (tail!238 (tail!238 (rear!53 q3!1)))) lt!534)))

(declare-fun b!2037 () Bool)

(assert (=> b!2037 (= e!1197 Nil!55)))

(declare-fun b!2038 () Bool)

(assert (=> b!2038 (= e!1197 (concat!2 (reverse!5 (tail!238 (tail!238 (tail!238 (rear!53 q3!1))))) (Cons!54 (head!226 (tail!238 (tail!238 (rear!53 q3!1)))) Nil!55)))))

(assert (= (and d!1366 c!645) b!2037))

(assert (= (and d!1366 (not c!645)) b!2038))

(declare-fun m!2867 () Bool)

(assert (=> d!1366 m!2867))

(declare-fun m!2869 () Bool)

(assert (=> d!1366 m!2869))

(declare-fun m!2871 () Bool)

(assert (=> b!2038 m!2871))

(assert (=> b!2038 m!2871))

(declare-fun m!2873 () Bool)

(assert (=> b!2038 m!2873))

(assert (=> b!1993 d!1366))

(declare-fun d!1368 () Bool)

(declare-fun c!646 () Bool)

(assert (=> d!1368 (= c!646 (is-Nil!55 (tail!238 lt!439)))))

(declare-fun e!1198 () (Set (_ BitVec 32)))

(assert (=> d!1368 (= (content!22 (tail!238 lt!439)) e!1198)))

(declare-fun b!2039 () Bool)

(assert (=> b!2039 (= e!1198 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2040 () Bool)

(assert (=> b!2040 (= e!1198 (union (insert (head!226 (tail!238 lt!439)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 lt!439)))))))

(assert (= (and d!1368 c!646) b!2039))

(assert (= (and d!1368 (not c!646)) b!2040))

(declare-fun m!2875 () Bool)

(assert (=> b!2040 m!2875))

(declare-fun m!2877 () Bool)

(assert (=> b!2040 m!2877))

(assert (=> b!1949 d!1368))

(declare-fun d!1370 () Bool)

(declare-fun c!647 () Bool)

(assert (=> d!1370 (= c!647 (is-Nil!55 lt!488))))

(declare-fun e!1199 () (Set (_ BitVec 32)))

(assert (=> d!1370 (= (content!22 lt!488) e!1199)))

(declare-fun b!2041 () Bool)

(assert (=> b!2041 (= e!1199 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2042 () Bool)

(assert (=> b!2042 (= e!1199 (union (insert (head!226 lt!488) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!488))))))

(assert (= (and d!1370 c!647) b!2041))

(assert (= (and d!1370 (not c!647)) b!2042))

(declare-fun m!2879 () Bool)

(assert (=> b!2042 m!2879))

(declare-fun m!2881 () Bool)

(assert (=> b!2042 m!2881))

(assert (=> b!1902 d!1370))

(declare-fun d!1372 () Bool)

(declare-fun c!648 () Bool)

(assert (=> d!1372 (= c!648 (is-Nil!55 (tail!238 (front!51 queue!56))))))

(declare-fun e!1200 () (Set (_ BitVec 32)))

(assert (=> d!1372 (= (content!22 (tail!238 (front!51 queue!56))) e!1200)))

(declare-fun b!2043 () Bool)

(assert (=> b!2043 (= e!1200 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2044 () Bool)

(assert (=> b!2044 (= e!1200 (union (insert (head!226 (tail!238 (front!51 queue!56))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (front!51 queue!56))))))))

(assert (= (and d!1372 c!648) b!2043))

(assert (= (and d!1372 (not c!648)) b!2044))

(declare-fun m!2883 () Bool)

(assert (=> b!2044 m!2883))

(declare-fun m!2885 () Bool)

(assert (=> b!2044 m!2885))

(assert (=> b!1902 d!1372))

(assert (=> b!1902 d!1346))

(declare-fun d!1374 () Bool)

(declare-fun c!649 () Bool)

(assert (=> d!1374 (= c!649 (is-Nil!55 lt!512))))

(declare-fun e!1201 () (Set (_ BitVec 32)))

(assert (=> d!1374 (= (content!22 lt!512) e!1201)))

(declare-fun b!2045 () Bool)

(assert (=> b!2045 (= e!1201 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2046 () Bool)

(assert (=> b!2046 (= e!1201 (union (insert (head!226 lt!512) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!512))))))

(assert (= (and d!1374 c!649) b!2045))

(assert (= (and d!1374 (not c!649)) b!2046))

(declare-fun m!2887 () Bool)

(assert (=> b!2046 m!2887))

(declare-fun m!2889 () Bool)

(assert (=> b!2046 m!2889))

(assert (=> d!1308 d!1374))

(declare-fun d!1376 () Bool)

(declare-fun c!650 () Bool)

(assert (=> d!1376 (= c!650 (is-Nil!55 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))))

(declare-fun e!1202 () (Set (_ BitVec 32)))

(assert (=> d!1376 (= (content!22 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))) e!1202)))

(declare-fun b!2047 () Bool)

(assert (=> b!2047 (= e!1202 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2048 () Bool)

(assert (=> b!2048 (= e!1202 (union (insert (head!226 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))))))

(assert (= (and d!1376 c!650) b!2047))

(assert (= (and d!1376 (not c!650)) b!2048))

(declare-fun m!2891 () Bool)

(assert (=> b!2048 m!2891))

(declare-fun m!2893 () Bool)

(assert (=> b!2048 m!2893))

(assert (=> d!1308 d!1376))

(declare-fun d!1378 () Bool)

(declare-fun lt!535 () Int)

(assert (=> d!1378 (>= lt!535 0)))

(declare-fun e!1203 () Int)

(assert (=> d!1378 (= lt!535 e!1203)))

(declare-fun c!651 () Bool)

(assert (=> d!1378 (= c!651 (is-Nil!55 (tail!238 (tail!238 (rear!53 lt!421)))))))

(assert (=> d!1378 (= (size!23 (tail!238 (tail!238 (rear!53 lt!421)))) lt!535)))

(declare-fun b!2049 () Bool)

(assert (=> b!2049 (= e!1203 0)))

(declare-fun b!2050 () Bool)

(assert (=> b!2050 (= e!1203 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (rear!53 lt!421)))))))))

(assert (= (and d!1378 c!651) b!2049))

(assert (= (and d!1378 (not c!651)) b!2050))

(declare-fun m!2895 () Bool)

(assert (=> b!2050 m!2895))

(assert (=> b!2019 d!1378))

(declare-fun d!1380 () Bool)

(declare-fun lt!536 () Int)

(assert (=> d!1380 (>= lt!536 0)))

(declare-fun e!1204 () Int)

(assert (=> d!1380 (= lt!536 e!1204)))

(declare-fun c!652 () Bool)

(assert (=> d!1380 (= c!652 (is-Nil!55 (tail!238 (tail!238 (rear!53 lt!418)))))))

(assert (=> d!1380 (= (size!23 (tail!238 (tail!238 (rear!53 lt!418)))) lt!536)))

(declare-fun b!2051 () Bool)

(assert (=> b!2051 (= e!1204 0)))

(declare-fun b!2052 () Bool)

(assert (=> b!2052 (= e!1204 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (rear!53 lt!418)))))))))

(assert (= (and d!1380 c!652) b!2051))

(assert (= (and d!1380 (not c!652)) b!2052))

(declare-fun m!2897 () Bool)

(assert (=> b!2052 m!2897))

(assert (=> b!1879 d!1380))

(declare-fun d!1382 () Bool)

(declare-fun c!653 () Bool)

(assert (=> d!1382 (= c!653 (is-Nil!55 (tail!238 lt!453)))))

(declare-fun e!1205 () (Set (_ BitVec 32)))

(assert (=> d!1382 (= (content!22 (tail!238 lt!453)) e!1205)))

(declare-fun b!2053 () Bool)

(assert (=> b!2053 (= e!1205 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2054 () Bool)

(assert (=> b!2054 (= e!1205 (union (insert (head!226 (tail!238 lt!453)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 lt!453)))))))

(assert (= (and d!1382 c!653) b!2053))

(assert (= (and d!1382 (not c!653)) b!2054))

(declare-fun m!2899 () Bool)

(assert (=> b!2054 m!2899))

(declare-fun m!2901 () Bool)

(assert (=> b!2054 m!2901))

(assert (=> b!1885 d!1382))

(declare-fun d!1384 () Bool)

(declare-fun e!1206 () Bool)

(assert (=> d!1384 e!1206))

(declare-fun res!862 () Bool)

(assert (=> d!1384 (=> (not res!862) (not e!1206))))

(declare-fun lt!537 () List!54)

(assert (=> d!1384 (= res!862 (= (size!23 lt!537) (+ (size!23 (tail!238 (tail!238 (front!51 queue!56)))) (size!23 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))))))))

(declare-fun e!1207 () List!54)

(assert (=> d!1384 (= lt!537 e!1207)))

(declare-fun c!654 () Bool)

(assert (=> d!1384 (= c!654 (is-Nil!55 (tail!238 (tail!238 (front!51 queue!56)))))))

(assert (=> d!1384 (= (concat!2 (tail!238 (tail!238 (front!51 queue!56))) (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))) lt!537)))

(declare-fun b!2055 () Bool)

(assert (=> b!2055 (= e!1207 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56))))))

(declare-fun b!2056 () Bool)

(assert (=> b!2056 (= e!1207 (Cons!54 (head!226 (tail!238 (tail!238 (front!51 queue!56)))) (concat!2 (tail!238 (tail!238 (tail!238 (front!51 queue!56)))) (reverse!5 (Cons!54 e1!2 (rear!53 queue!56))))))))

(declare-fun b!2057 () Bool)

(assert (=> b!2057 (= e!1206 (= (content!22 lt!537) (union (content!22 (tail!238 (tail!238 (front!51 queue!56)))) (content!22 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56)))))))))

(assert (= (and d!1384 c!654) b!2055))

(assert (= (and d!1384 (not c!654)) b!2056))

(assert (= (and d!1384 res!862) b!2057))

(declare-fun m!2903 () Bool)

(assert (=> d!1384 m!2903))

(assert (=> d!1384 m!2557))

(assert (=> d!1384 m!2311))

(assert (=> d!1384 m!2479))

(assert (=> b!2056 m!2311))

(declare-fun m!2905 () Bool)

(assert (=> b!2056 m!2905))

(declare-fun m!2907 () Bool)

(assert (=> b!2057 m!2907))

(assert (=> b!2057 m!2885))

(assert (=> b!2057 m!2311))

(assert (=> b!2057 m!2487))

(assert (=> b!1901 d!1384))

(declare-fun d!1386 () Bool)

(declare-fun c!655 () Bool)

(assert (=> d!1386 (= c!655 (is-Nil!55 lt!515))))

(declare-fun e!1208 () (Set (_ BitVec 32)))

(assert (=> d!1386 (= (content!22 lt!515) e!1208)))

(declare-fun b!2058 () Bool)

(assert (=> b!2058 (= e!1208 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2059 () Bool)

(assert (=> b!2059 (= e!1208 (union (insert (head!226 lt!515) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!515))))))

(assert (= (and d!1386 c!655) b!2058))

(assert (= (and d!1386 (not c!655)) b!2059))

(declare-fun m!2909 () Bool)

(assert (=> b!2059 m!2909))

(declare-fun m!2911 () Bool)

(assert (=> b!2059 m!2911))

(assert (=> b!1984 d!1386))

(declare-fun d!1388 () Bool)

(declare-fun c!656 () Bool)

(assert (=> d!1388 (= c!656 (is-Nil!55 (tail!238 (tail!238 (front!51 q3!1)))))))

(declare-fun e!1209 () (Set (_ BitVec 32)))

(assert (=> d!1388 (= (content!22 (tail!238 (tail!238 (front!51 q3!1)))) e!1209)))

(declare-fun b!2060 () Bool)

(assert (=> b!2060 (= e!1209 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2061 () Bool)

(assert (=> b!2061 (= e!1209 (union (insert (head!226 (tail!238 (tail!238 (front!51 q3!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (tail!238 (front!51 q3!1)))))))))

(assert (= (and d!1388 c!656) b!2060))

(assert (= (and d!1388 (not c!656)) b!2061))

(declare-fun m!2913 () Bool)

(assert (=> b!2061 m!2913))

(declare-fun m!2915 () Bool)

(assert (=> b!2061 m!2915))

(assert (=> b!1984 d!1388))

(assert (=> b!1984 d!1200))

(declare-fun d!1390 () Bool)

(declare-fun c!657 () Bool)

(assert (=> d!1390 (= c!657 (is-Nil!55 (tail!238 (front!51 q1!1))))))

(declare-fun e!1210 () (Set (_ BitVec 32)))

(assert (=> d!1390 (= (content!22 (tail!238 (front!51 q1!1))) e!1210)))

(declare-fun b!2062 () Bool)

(assert (=> b!2062 (= e!1210 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2063 () Bool)

(assert (=> b!2063 (= e!1210 (union (insert (head!226 (tail!238 (front!51 q1!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (front!51 q1!1))))))))

(assert (= (and d!1390 c!657) b!2062))

(assert (= (and d!1390 (not c!657)) b!2063))

(declare-fun m!2917 () Bool)

(assert (=> b!2063 m!2917))

(declare-fun m!2919 () Bool)

(assert (=> b!2063 m!2919))

(assert (=> b!1951 d!1390))

(declare-fun d!1392 () Bool)

(declare-fun c!658 () Bool)

(assert (=> d!1392 (= c!658 (is-Nil!55 lt!511))))

(declare-fun e!1211 () (Set (_ BitVec 32)))

(assert (=> d!1392 (= (content!22 lt!511) e!1211)))

(declare-fun b!2064 () Bool)

(assert (=> b!2064 (= e!1211 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2065 () Bool)

(assert (=> b!2065 (= e!1211 (union (insert (head!226 lt!511) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!511))))))

(assert (= (and d!1392 c!658) b!2064))

(assert (= (and d!1392 (not c!658)) b!2065))

(declare-fun m!2921 () Bool)

(assert (=> b!2065 m!2921))

(declare-fun m!2923 () Bool)

(assert (=> b!2065 m!2923))

(assert (=> b!1975 d!1392))

(declare-fun d!1394 () Bool)

(declare-fun c!659 () Bool)

(assert (=> d!1394 (= c!659 (is-Nil!55 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))))))

(declare-fun e!1212 () (Set (_ BitVec 32)))

(assert (=> d!1394 (= (content!22 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))) e!1212)))

(declare-fun b!2066 () Bool)

(assert (=> b!2066 (= e!1212 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2067 () Bool)

(assert (=> b!2067 (= e!1212 (union (insert (head!226 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))))))))

(assert (= (and d!1394 c!659) b!2066))

(assert (= (and d!1394 (not c!659)) b!2067))

(declare-fun m!2925 () Bool)

(assert (=> b!2067 m!2925))

(declare-fun m!2927 () Bool)

(assert (=> b!2067 m!2927))

(assert (=> b!1975 d!1394))

(declare-fun d!1396 () Bool)

(declare-fun c!660 () Bool)

(assert (=> d!1396 (= c!660 (is-Nil!55 (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55)))))

(declare-fun e!1213 () (Set (_ BitVec 32)))

(assert (=> d!1396 (= (content!22 (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55)) e!1213)))

(declare-fun b!2068 () Bool)

(assert (=> b!2068 (= e!1213 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2069 () Bool)

(assert (=> b!2069 (= e!1213 (union (insert (head!226 (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55)))))))

(assert (= (and d!1396 c!660) b!2068))

(assert (= (and d!1396 (not c!660)) b!2069))

(declare-fun m!2929 () Bool)

(assert (=> b!2069 m!2929))

(declare-fun m!2931 () Bool)

(assert (=> b!2069 m!2931))

(assert (=> b!1975 d!1396))

(declare-fun d!1398 () Bool)

(declare-fun c!661 () Bool)

(assert (=> d!1398 (= c!661 (is-Nil!55 (tail!238 lt!461)))))

(declare-fun e!1214 () (Set (_ BitVec 32)))

(assert (=> d!1398 (= (content!22 (tail!238 lt!461)) e!1214)))

(declare-fun b!2070 () Bool)

(assert (=> b!2070 (= e!1214 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2071 () Bool)

(assert (=> b!2071 (= e!1214 (union (insert (head!226 (tail!238 lt!461)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 lt!461)))))))

(assert (= (and d!1398 c!661) b!2070))

(assert (= (and d!1398 (not c!661)) b!2071))

(declare-fun m!2933 () Bool)

(assert (=> b!2071 m!2933))

(declare-fun m!2935 () Bool)

(assert (=> b!2071 m!2935))

(assert (=> b!2013 d!1398))

(declare-fun d!1400 () Bool)

(declare-fun c!662 () Bool)

(assert (=> d!1400 (= c!662 (is-Nil!55 lt!518))))

(declare-fun e!1215 () (Set (_ BitVec 32)))

(assert (=> d!1400 (= (content!22 lt!518) e!1215)))

(declare-fun b!2072 () Bool)

(assert (=> b!2072 (= e!1215 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2073 () Bool)

(assert (=> b!2073 (= e!1215 (union (insert (head!226 lt!518) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!518))))))

(assert (= (and d!1400 c!662) b!2072))

(assert (= (and d!1400 (not c!662)) b!2073))

(declare-fun m!2937 () Bool)

(assert (=> b!2073 m!2937))

(declare-fun m!2939 () Bool)

(assert (=> b!2073 m!2939))

(assert (=> b!1991 d!1400))

(declare-fun d!1402 () Bool)

(declare-fun c!663 () Bool)

(assert (=> d!1402 (= c!663 (is-Nil!55 (reverse!5 (tail!238 (rear!53 q3!1)))))))

(declare-fun e!1216 () (Set (_ BitVec 32)))

(assert (=> d!1402 (= (content!22 (reverse!5 (tail!238 (rear!53 q3!1)))) e!1216)))

(declare-fun b!2074 () Bool)

(assert (=> b!2074 (= e!1216 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2075 () Bool)

(assert (=> b!2075 (= e!1216 (union (insert (head!226 (reverse!5 (tail!238 (rear!53 q3!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (reverse!5 (tail!238 (rear!53 q3!1)))))))))

(assert (= (and d!1402 c!663) b!2074))

(assert (= (and d!1402 (not c!663)) b!2075))

(declare-fun m!2941 () Bool)

(assert (=> b!2075 m!2941))

(declare-fun m!2943 () Bool)

(assert (=> b!2075 m!2943))

(assert (=> b!1991 d!1402))

(declare-fun d!1404 () Bool)

(declare-fun c!664 () Bool)

(assert (=> d!1404 (= c!664 (is-Nil!55 (Cons!54 (head!226 (rear!53 q3!1)) Nil!55)))))

(declare-fun e!1217 () (Set (_ BitVec 32)))

(assert (=> d!1404 (= (content!22 (Cons!54 (head!226 (rear!53 q3!1)) Nil!55)) e!1217)))

(declare-fun b!2076 () Bool)

(assert (=> b!2076 (= e!1217 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2077 () Bool)

(assert (=> b!2077 (= e!1217 (union (insert (head!226 (Cons!54 (head!226 (rear!53 q3!1)) Nil!55)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (Cons!54 (head!226 (rear!53 q3!1)) Nil!55)))))))

(assert (= (and d!1404 c!664) b!2076))

(assert (= (and d!1404 (not c!664)) b!2077))

(declare-fun m!2945 () Bool)

(assert (=> b!2077 m!2945))

(declare-fun m!2947 () Bool)

(assert (=> b!2077 m!2947))

(assert (=> b!1991 d!1404))

(declare-fun d!1406 () Bool)

(declare-fun c!665 () Bool)

(assert (=> d!1406 (= c!665 (is-Nil!55 (tail!238 (rear!53 q4!1))))))

(declare-fun e!1218 () (Set (_ BitVec 32)))

(assert (=> d!1406 (= (content!22 (tail!238 (rear!53 q4!1))) e!1218)))

(declare-fun b!2078 () Bool)

(assert (=> b!2078 (= e!1218 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2079 () Bool)

(assert (=> b!2079 (= e!1218 (union (insert (head!226 (tail!238 (rear!53 q4!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (rear!53 q4!1))))))))

(assert (= (and d!1406 c!665) b!2078))

(assert (= (and d!1406 (not c!665)) b!2079))

(declare-fun m!2949 () Bool)

(assert (=> b!2079 m!2949))

(declare-fun m!2951 () Bool)

(assert (=> b!2079 m!2951))

(assert (=> b!1897 d!1406))

(declare-fun d!1408 () Bool)

(declare-fun lt!538 () Int)

(assert (=> d!1408 (>= lt!538 0)))

(declare-fun e!1219 () Int)

(assert (=> d!1408 (= lt!538 e!1219)))

(declare-fun c!666 () Bool)

(assert (=> d!1408 (= c!666 (is-Nil!55 (tail!238 (tail!238 (rear!53 lt!417)))))))

(assert (=> d!1408 (= (size!23 (tail!238 (tail!238 (rear!53 lt!417)))) lt!538)))

(declare-fun b!2080 () Bool)

(assert (=> b!2080 (= e!1219 0)))

(declare-fun b!2081 () Bool)

(assert (=> b!2081 (= e!1219 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (rear!53 lt!417)))))))))

(assert (= (and d!1408 c!666) b!2080))

(assert (= (and d!1408 (not c!666)) b!2081))

(declare-fun m!2953 () Bool)

(assert (=> b!2081 m!2953))

(assert (=> b!1863 d!1408))

(declare-fun d!1410 () Bool)

(declare-fun lt!539 () Int)

(assert (=> d!1410 (>= lt!539 0)))

(declare-fun e!1220 () Int)

(assert (=> d!1410 (= lt!539 e!1220)))

(declare-fun c!667 () Bool)

(assert (=> d!1410 (= c!667 (is-Nil!55 (tail!238 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1))))))))

(assert (=> d!1410 (= (size!23 (tail!238 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1))))) lt!539)))

(declare-fun b!2082 () Bool)

(assert (=> b!2082 (= e!1220 0)))

(declare-fun b!2083 () Bool)

(assert (=> b!2083 (= e!1220 (+ 1 (size!23 (tail!238 (tail!238 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1))))))))))

(assert (= (and d!1410 c!667) b!2082))

(assert (= (and d!1410 (not c!667)) b!2083))

(declare-fun m!2955 () Bool)

(assert (=> b!2083 m!2955))

(assert (=> b!1920 d!1410))

(declare-fun d!1412 () Bool)

(declare-fun c!668 () Bool)

(assert (=> d!1412 (= c!668 (is-Nil!55 (tail!238 (reverse!5 (rear!53 q3!1)))))))

(declare-fun e!1221 () (Set (_ BitVec 32)))

(assert (=> d!1412 (= (content!22 (tail!238 (reverse!5 (rear!53 q3!1)))) e!1221)))

(declare-fun b!2084 () Bool)

(assert (=> b!2084 (= e!1221 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2085 () Bool)

(assert (=> b!2085 (= e!1221 (union (insert (head!226 (tail!238 (reverse!5 (rear!53 q3!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (reverse!5 (rear!53 q3!1)))))))))

(assert (= (and d!1412 c!668) b!2084))

(assert (= (and d!1412 (not c!668)) b!2085))

(declare-fun m!2957 () Bool)

(assert (=> b!2085 m!2957))

(declare-fun m!2959 () Bool)

(assert (=> b!2085 m!2959))

(assert (=> b!1861 d!1412))

(declare-fun d!1414 () Bool)

(declare-fun lt!540 () Int)

(assert (=> d!1414 (>= lt!540 0)))

(declare-fun e!1222 () Int)

(assert (=> d!1414 (= lt!540 e!1222)))

(declare-fun c!669 () Bool)

(assert (=> d!1414 (= c!669 (is-Nil!55 (tail!238 (tail!238 (rear!53 q3!1)))))))

(assert (=> d!1414 (= (size!23 (tail!238 (tail!238 (rear!53 q3!1)))) lt!540)))

(declare-fun b!2086 () Bool)

(assert (=> b!2086 (= e!1222 0)))

(declare-fun b!2087 () Bool)

(assert (=> b!2087 (= e!1222 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (rear!53 q3!1)))))))))

(assert (= (and d!1414 c!669) b!2086))

(assert (= (and d!1414 (not c!669)) b!2087))

(declare-fun m!2961 () Bool)

(assert (=> b!2087 m!2961))

(assert (=> b!1922 d!1414))

(declare-fun d!1416 () Bool)

(declare-fun e!1223 () Bool)

(assert (=> d!1416 e!1223))

(declare-fun res!863 () Bool)

(assert (=> d!1416 (=> (not res!863) (not e!1223))))

(declare-fun lt!541 () List!54)

(assert (=> d!1416 (= res!863 (= (size!23 lt!541) (+ (size!23 (tail!238 (reverse!5 (tail!238 (rear!53 q3!1))))) (size!23 (Cons!54 (head!226 (rear!53 q3!1)) Nil!55)))))))

(declare-fun e!1224 () List!54)

(assert (=> d!1416 (= lt!541 e!1224)))

(declare-fun c!670 () Bool)

(assert (=> d!1416 (= c!670 (is-Nil!55 (tail!238 (reverse!5 (tail!238 (rear!53 q3!1))))))))

(assert (=> d!1416 (= (concat!2 (tail!238 (reverse!5 (tail!238 (rear!53 q3!1)))) (Cons!54 (head!226 (rear!53 q3!1)) Nil!55)) lt!541)))

(declare-fun b!2088 () Bool)

(assert (=> b!2088 (= e!1224 (Cons!54 (head!226 (rear!53 q3!1)) Nil!55))))

(declare-fun b!2089 () Bool)

(assert (=> b!2089 (= e!1224 (Cons!54 (head!226 (tail!238 (reverse!5 (tail!238 (rear!53 q3!1))))) (concat!2 (tail!238 (tail!238 (reverse!5 (tail!238 (rear!53 q3!1))))) (Cons!54 (head!226 (rear!53 q3!1)) Nil!55))))))

(declare-fun b!2090 () Bool)

(assert (=> b!2090 (= e!1223 (= (content!22 lt!541) (union (content!22 (tail!238 (reverse!5 (tail!238 (rear!53 q3!1))))) (content!22 (Cons!54 (head!226 (rear!53 q3!1)) Nil!55)))))))

(assert (= (and d!1416 c!670) b!2088))

(assert (= (and d!1416 (not c!670)) b!2089))

(assert (= (and d!1416 res!863) b!2090))

(declare-fun m!2963 () Bool)

(assert (=> d!1416 m!2963))

(declare-fun m!2965 () Bool)

(assert (=> d!1416 m!2965))

(assert (=> d!1416 m!2787))

(declare-fun m!2967 () Bool)

(assert (=> b!2089 m!2967))

(declare-fun m!2969 () Bool)

(assert (=> b!2090 m!2969))

(assert (=> b!2090 m!2943))

(assert (=> b!2090 m!2795))

(assert (=> b!1990 d!1416))

(declare-fun d!1418 () Bool)

(declare-fun lt!542 () Int)

(assert (=> d!1418 (>= lt!542 0)))

(declare-fun e!1225 () Int)

(assert (=> d!1418 (= lt!542 e!1225)))

(declare-fun c!671 () Bool)

(assert (=> d!1418 (= c!671 (is-Nil!55 (tail!238 (tail!238 (front!51 lt!422)))))))

(assert (=> d!1418 (= (size!23 (tail!238 (tail!238 (front!51 lt!422)))) lt!542)))

(declare-fun b!2091 () Bool)

(assert (=> b!2091 (= e!1225 0)))

(declare-fun b!2092 () Bool)

(assert (=> b!2092 (= e!1225 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (front!51 lt!422)))))))))

(assert (= (and d!1418 c!671) b!2091))

(assert (= (and d!1418 (not c!671)) b!2092))

(declare-fun m!2971 () Bool)

(assert (=> b!2092 m!2971))

(assert (=> b!1970 d!1418))

(declare-fun d!1420 () Bool)

(declare-fun c!672 () Bool)

(assert (=> d!1420 (= c!672 (is-Nil!55 (tail!238 lt!454)))))

(declare-fun e!1226 () (Set (_ BitVec 32)))

(assert (=> d!1420 (= (content!22 (tail!238 lt!454)) e!1226)))

(declare-fun b!2093 () Bool)

(assert (=> b!2093 (= e!1226 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2094 () Bool)

(assert (=> b!2094 (= e!1226 (union (insert (head!226 (tail!238 lt!454)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 lt!454)))))))

(assert (= (and d!1420 c!672) b!2093))

(assert (= (and d!1420 (not c!672)) b!2094))

(declare-fun m!2973 () Bool)

(assert (=> b!2094 m!2973))

(declare-fun m!2975 () Bool)

(assert (=> b!2094 m!2975))

(assert (=> b!1895 d!1420))

(declare-fun d!1422 () Bool)

(declare-fun lt!543 () Int)

(assert (=> d!1422 (>= lt!543 0)))

(declare-fun e!1227 () Int)

(assert (=> d!1422 (= lt!543 e!1227)))

(declare-fun c!673 () Bool)

(assert (=> d!1422 (= c!673 (is-Nil!55 (tail!238 (tail!238 (rear!53 lt!422)))))))

(assert (=> d!1422 (= (size!23 (tail!238 (tail!238 (rear!53 lt!422)))) lt!543)))

(declare-fun b!2095 () Bool)

(assert (=> b!2095 (= e!1227 0)))

(declare-fun b!2096 () Bool)

(assert (=> b!2096 (= e!1227 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (rear!53 lt!422)))))))))

(assert (= (and d!1422 c!673) b!2095))

(assert (= (and d!1422 (not c!673)) b!2096))

(declare-fun m!2977 () Bool)

(assert (=> b!2096 m!2977))

(assert (=> b!2007 d!1422))

(declare-fun d!1424 () Bool)

(declare-fun c!674 () Bool)

(assert (=> d!1424 (= c!674 (is-Nil!55 (tail!238 lt!452)))))

(declare-fun e!1228 () (Set (_ BitVec 32)))

(assert (=> d!1424 (= (content!22 (tail!238 lt!452)) e!1228)))

(declare-fun b!2097 () Bool)

(assert (=> b!2097 (= e!1228 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2098 () Bool)

(assert (=> b!2098 (= e!1228 (union (insert (head!226 (tail!238 lt!452)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 lt!452)))))))

(assert (= (and d!1424 c!674) b!2097))

(assert (= (and d!1424 (not c!674)) b!2098))

(declare-fun m!2979 () Bool)

(assert (=> b!2098 m!2979))

(declare-fun m!2981 () Bool)

(assert (=> b!2098 m!2981))

(assert (=> b!1851 d!1424))

(declare-fun d!1426 () Bool)

(declare-fun lt!544 () Int)

(assert (=> d!1426 (>= lt!544 0)))

(declare-fun e!1229 () Int)

(assert (=> d!1426 (= lt!544 e!1229)))

(declare-fun c!675 () Bool)

(assert (=> d!1426 (= c!675 (is-Nil!55 (tail!238 (front!51 lt!434))))))

(assert (=> d!1426 (= (size!23 (tail!238 (front!51 lt!434))) lt!544)))

(declare-fun b!2099 () Bool)

(assert (=> b!2099 (= e!1229 0)))

(declare-fun b!2100 () Bool)

(assert (=> b!2100 (= e!1229 (+ 1 (size!23 (tail!238 (tail!238 (front!51 lt!434))))))))

(assert (= (and d!1426 c!675) b!2099))

(assert (= (and d!1426 (not c!675)) b!2100))

(declare-fun m!2983 () Bool)

(assert (=> b!2100 m!2983))

(assert (=> b!2001 d!1426))

(declare-fun d!1428 () Bool)

(declare-fun lt!545 () Int)

(assert (=> d!1428 (>= lt!545 0)))

(declare-fun e!1230 () Int)

(assert (=> d!1428 (= lt!545 e!1230)))

(declare-fun c!676 () Bool)

(assert (=> d!1428 (= c!676 (is-Nil!55 lt!511))))

(assert (=> d!1428 (= (size!23 lt!511) lt!545)))

(declare-fun b!2101 () Bool)

(assert (=> b!2101 (= e!1230 0)))

(declare-fun b!2102 () Bool)

(assert (=> b!2102 (= e!1230 (+ 1 (size!23 (tail!238 lt!511))))))

(assert (= (and d!1428 c!676) b!2101))

(assert (= (and d!1428 (not c!676)) b!2102))

(declare-fun m!2985 () Bool)

(assert (=> b!2102 m!2985))

(assert (=> d!1306 d!1428))

(declare-fun d!1430 () Bool)

(declare-fun lt!546 () Int)

(assert (=> d!1430 (>= lt!546 0)))

(declare-fun e!1231 () Int)

(assert (=> d!1430 (= lt!546 e!1231)))

(declare-fun c!677 () Bool)

(assert (=> d!1430 (= c!677 (is-Nil!55 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))))))

(assert (=> d!1430 (= (size!23 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))) lt!546)))

(declare-fun b!2103 () Bool)

(assert (=> b!2103 (= e!1231 0)))

(declare-fun b!2104 () Bool)

(assert (=> b!2104 (= e!1231 (+ 1 (size!23 (tail!238 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))))))))

(assert (= (and d!1430 c!677) b!2103))

(assert (= (and d!1430 (not c!677)) b!2104))

(declare-fun m!2987 () Bool)

(assert (=> b!2104 m!2987))

(assert (=> d!1306 d!1430))

(declare-fun d!1432 () Bool)

(declare-fun lt!547 () Int)

(assert (=> d!1432 (>= lt!547 0)))

(declare-fun e!1232 () Int)

(assert (=> d!1432 (= lt!547 e!1232)))

(declare-fun c!678 () Bool)

(assert (=> d!1432 (= c!678 (is-Nil!55 (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55)))))

(assert (=> d!1432 (= (size!23 (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55)) lt!547)))

(declare-fun b!2105 () Bool)

(assert (=> b!2105 (= e!1232 0)))

(declare-fun b!2106 () Bool)

(assert (=> b!2106 (= e!1232 (+ 1 (size!23 (tail!238 (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55)))))))

(assert (= (and d!1432 c!678) b!2105))

(assert (= (and d!1432 (not c!678)) b!2106))

(declare-fun m!2989 () Bool)

(assert (=> b!2106 m!2989))

(assert (=> d!1306 d!1432))

(declare-fun d!1434 () Bool)

(declare-fun lt!548 () Int)

(assert (=> d!1434 (>= lt!548 0)))

(declare-fun e!1233 () Int)

(assert (=> d!1434 (= lt!548 e!1233)))

(declare-fun c!679 () Bool)

(assert (=> d!1434 (= c!679 (is-Nil!55 (tail!238 (tail!238 (tail!238 (front!51 queue!73))))))))

(assert (=> d!1434 (= (size!23 (tail!238 (tail!238 (tail!238 (front!51 queue!73))))) lt!548)))

(declare-fun b!2107 () Bool)

(assert (=> b!2107 (= e!1233 0)))

(declare-fun b!2108 () Bool)

(assert (=> b!2108 (= e!1233 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (tail!238 (front!51 queue!73))))))))))

(assert (= (and d!1434 c!679) b!2107))

(assert (= (and d!1434 (not c!679)) b!2108))

(declare-fun m!2991 () Bool)

(assert (=> b!2108 m!2991))

(assert (=> b!1960 d!1434))

(declare-fun d!1436 () Bool)

(declare-fun lt!549 () Int)

(assert (=> d!1436 (>= lt!549 0)))

(declare-fun e!1234 () Int)

(assert (=> d!1436 (= lt!549 e!1234)))

(declare-fun c!680 () Bool)

(assert (=> d!1436 (= c!680 (is-Nil!55 lt!508))))

(assert (=> d!1436 (= (size!23 lt!508) lt!549)))

(declare-fun b!2109 () Bool)

(assert (=> b!2109 (= e!1234 0)))

(declare-fun b!2110 () Bool)

(assert (=> b!2110 (= e!1234 (+ 1 (size!23 (tail!238 lt!508))))))

(assert (= (and d!1436 c!680) b!2109))

(assert (= (and d!1436 (not c!680)) b!2110))

(declare-fun m!2993 () Bool)

(assert (=> b!2110 m!2993))

(assert (=> d!1300 d!1436))

(assert (=> d!1300 d!1338))

(assert (=> d!1300 d!1256))

(declare-fun d!1438 () Bool)

(declare-fun lt!550 () Int)

(assert (=> d!1438 (>= lt!550 0)))

(declare-fun e!1235 () Int)

(assert (=> d!1438 (= lt!550 e!1235)))

(declare-fun c!681 () Bool)

(assert (=> d!1438 (= c!681 (is-Nil!55 lt!503))))

(assert (=> d!1438 (= (size!23 lt!503) lt!550)))

(declare-fun b!2111 () Bool)

(assert (=> b!2111 (= e!1235 0)))

(declare-fun b!2112 () Bool)

(assert (=> b!2112 (= e!1235 (+ 1 (size!23 (tail!238 lt!503))))))

(assert (= (and d!1438 c!681) b!2111))

(assert (= (and d!1438 (not c!681)) b!2112))

(declare-fun m!2995 () Bool)

(assert (=> b!2112 m!2995))

(assert (=> d!1290 d!1438))

(declare-fun d!1440 () Bool)

(declare-fun lt!551 () Int)

(assert (=> d!1440 (>= lt!551 0)))

(declare-fun e!1236 () Int)

(assert (=> d!1440 (= lt!551 e!1236)))

(declare-fun c!682 () Bool)

(assert (=> d!1440 (= c!682 (is-Nil!55 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))))))

(assert (=> d!1440 (= (size!23 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))) lt!551)))

(declare-fun b!2113 () Bool)

(assert (=> b!2113 (= e!1236 0)))

(declare-fun b!2114 () Bool)

(assert (=> b!2114 (= e!1236 (+ 1 (size!23 (tail!238 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))))))))

(assert (= (and d!1440 c!682) b!2113))

(assert (= (and d!1440 (not c!682)) b!2114))

(declare-fun m!2997 () Bool)

(assert (=> b!2114 m!2997))

(assert (=> d!1290 d!1440))

(declare-fun d!1442 () Bool)

(declare-fun lt!552 () Int)

(assert (=> d!1442 (>= lt!552 0)))

(declare-fun e!1237 () Int)

(assert (=> d!1442 (= lt!552 e!1237)))

(declare-fun c!683 () Bool)

(assert (=> d!1442 (= c!683 (is-Nil!55 (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55)))))

(assert (=> d!1442 (= (size!23 (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55)) lt!552)))

(declare-fun b!2115 () Bool)

(assert (=> b!2115 (= e!1237 0)))

(declare-fun b!2116 () Bool)

(assert (=> b!2116 (= e!1237 (+ 1 (size!23 (tail!238 (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55)))))))

(assert (= (and d!1442 c!683) b!2115))

(assert (= (and d!1442 (not c!683)) b!2116))

(declare-fun m!2999 () Bool)

(assert (=> b!2116 m!2999))

(assert (=> d!1290 d!1442))

(declare-fun d!1444 () Bool)

(declare-fun lt!553 () Int)

(assert (=> d!1444 (>= lt!553 0)))

(declare-fun e!1238 () Int)

(assert (=> d!1444 (= lt!553 e!1238)))

(declare-fun c!684 () Bool)

(assert (=> d!1444 (= c!684 (is-Nil!55 (tail!238 (front!51 lt!433))))))

(assert (=> d!1444 (= (size!23 (tail!238 (front!51 lt!433))) lt!553)))

(declare-fun b!2117 () Bool)

(assert (=> b!2117 (= e!1238 0)))

(declare-fun b!2118 () Bool)

(assert (=> b!2118 (= e!1238 (+ 1 (size!23 (tail!238 (tail!238 (front!51 lt!433))))))))

(assert (= (and d!1444 c!684) b!2117))

(assert (= (and d!1444 (not c!684)) b!2118))

(declare-fun m!3001 () Bool)

(assert (=> b!2118 m!3001))

(assert (=> b!1875 d!1444))

(declare-fun d!1446 () Bool)

(declare-fun lt!554 () Int)

(assert (=> d!1446 (>= lt!554 0)))

(declare-fun e!1239 () Int)

(assert (=> d!1446 (= lt!554 e!1239)))

(declare-fun c!685 () Bool)

(assert (=> d!1446 (= c!685 (is-Nil!55 (tail!238 (tail!238 (tail!238 (front!51 q4!1))))))))

(assert (=> d!1446 (= (size!23 (tail!238 (tail!238 (tail!238 (front!51 q4!1))))) lt!554)))

(declare-fun b!2119 () Bool)

(assert (=> b!2119 (= e!1239 0)))

(declare-fun b!2120 () Bool)

(assert (=> b!2120 (= e!1239 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (tail!238 (front!51 q4!1))))))))))

(assert (= (and d!1446 c!685) b!2119))

(assert (= (and d!1446 (not c!685)) b!2120))

(declare-fun m!3003 () Bool)

(assert (=> b!2120 m!3003))

(assert (=> b!1913 d!1446))

(declare-fun d!1448 () Bool)

(declare-fun c!686 () Bool)

(assert (=> d!1448 (= c!686 (is-Nil!55 lt!504))))

(declare-fun e!1240 () (Set (_ BitVec 32)))

(assert (=> d!1448 (= (content!22 lt!504) e!1240)))

(declare-fun b!2121 () Bool)

(assert (=> b!2121 (= e!1240 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2122 () Bool)

(assert (=> b!2122 (= e!1240 (union (insert (head!226 lt!504) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!504))))))

(assert (= (and d!1448 c!686) b!2121))

(assert (= (and d!1448 (not c!686)) b!2122))

(declare-fun m!3005 () Bool)

(assert (=> b!2122 m!3005))

(declare-fun m!3007 () Bool)

(assert (=> b!2122 m!3007))

(assert (=> d!1292 d!1448))

(declare-fun d!1450 () Bool)

(declare-fun c!687 () Bool)

(assert (=> d!1450 (= c!687 (is-Nil!55 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))))

(declare-fun e!1241 () (Set (_ BitVec 32)))

(assert (=> d!1450 (= (content!22 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))) e!1241)))

(declare-fun b!2123 () Bool)

(assert (=> b!2123 (= e!1241 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2124 () Bool)

(assert (=> b!2124 (= e!1241 (union (insert (head!226 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))))))

(assert (= (and d!1450 c!687) b!2123))

(assert (= (and d!1450 (not c!687)) b!2124))

(declare-fun m!3009 () Bool)

(assert (=> b!2124 m!3009))

(declare-fun m!3011 () Bool)

(assert (=> b!2124 m!3011))

(assert (=> d!1292 d!1450))

(declare-fun d!1452 () Bool)

(declare-fun lt!555 () Int)

(assert (=> d!1452 (>= lt!555 0)))

(declare-fun e!1242 () Int)

(assert (=> d!1452 (= lt!555 e!1242)))

(declare-fun c!688 () Bool)

(assert (=> d!1452 (= c!688 (is-Nil!55 (tail!238 lt!453)))))

(assert (=> d!1452 (= (size!23 (tail!238 lt!453)) lt!555)))

(declare-fun b!2125 () Bool)

(assert (=> b!2125 (= e!1242 0)))

(declare-fun b!2126 () Bool)

(assert (=> b!2126 (= e!1242 (+ 1 (size!23 (tail!238 (tail!238 lt!453)))))))

(assert (= (and d!1452 c!688) b!2125))

(assert (= (and d!1452 (not c!688)) b!2126))

(declare-fun m!3013 () Bool)

(assert (=> b!2126 m!3013))

(assert (=> b!1881 d!1452))

(declare-fun d!1454 () Bool)

(declare-fun e!1243 () Bool)

(assert (=> d!1454 e!1243))

(declare-fun res!864 () Bool)

(assert (=> d!1454 (=> (not res!864) (not e!1243))))

(declare-fun lt!556 () List!54)

(assert (=> d!1454 (= res!864 (= (size!23 lt!556) (+ (size!23 (tail!238 (tail!238 (front!51 q1!1)))) (size!23 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))))))))

(declare-fun e!1244 () List!54)

(assert (=> d!1454 (= lt!556 e!1244)))

(declare-fun c!689 () Bool)

(assert (=> d!1454 (= c!689 (is-Nil!55 (tail!238 (tail!238 (front!51 q1!1)))))))

(assert (=> d!1454 (= (concat!2 (tail!238 (tail!238 (front!51 q1!1))) (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))) lt!556)))

(declare-fun b!2127 () Bool)

(assert (=> b!2127 (= e!1244 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1))))))

(declare-fun b!2128 () Bool)

(assert (=> b!2128 (= e!1244 (Cons!54 (head!226 (tail!238 (tail!238 (front!51 q1!1)))) (concat!2 (tail!238 (tail!238 (tail!238 (front!51 q1!1)))) (reverse!5 (Cons!54 e2!3 (rear!53 q1!1))))))))

(declare-fun b!2129 () Bool)

(assert (=> b!2129 (= e!1243 (= (content!22 lt!556) (union (content!22 (tail!238 (tail!238 (front!51 q1!1)))) (content!22 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1)))))))))

(assert (= (and d!1454 c!689) b!2127))

(assert (= (and d!1454 (not c!689)) b!2128))

(assert (= (and d!1454 res!864) b!2129))

(declare-fun m!3015 () Bool)

(assert (=> d!1454 m!3015))

(assert (=> d!1454 m!2817))

(assert (=> d!1454 m!2357))

(assert (=> d!1454 m!2365))

(assert (=> b!2128 m!2357))

(declare-fun m!3017 () Bool)

(assert (=> b!2128 m!3017))

(declare-fun m!3019 () Bool)

(assert (=> b!2129 m!3019))

(assert (=> b!2129 m!2919))

(assert (=> b!2129 m!2357))

(assert (=> b!2129 m!2373))

(assert (=> b!1967 d!1454))

(assert (=> b!1911 d!1450))

(declare-fun d!1456 () Bool)

(declare-fun e!1245 () Bool)

(assert (=> d!1456 e!1245))

(declare-fun res!865 () Bool)

(assert (=> d!1456 (=> (not res!865) (not e!1245))))

(declare-fun lt!557 () List!54)

(assert (=> d!1456 (= res!865 (= (size!23 lt!557) (+ (size!23 (tail!238 (tail!238 (front!51 q2!1)))) (size!23 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))))))))

(declare-fun e!1246 () List!54)

(assert (=> d!1456 (= lt!557 e!1246)))

(declare-fun c!690 () Bool)

(assert (=> d!1456 (= c!690 (is-Nil!55 (tail!238 (tail!238 (front!51 q2!1)))))))

(assert (=> d!1456 (= (concat!2 (tail!238 (tail!238 (front!51 q2!1))) (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))) lt!557)))

(declare-fun b!2130 () Bool)

(assert (=> b!2130 (= e!1246 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1))))))

(declare-fun b!2131 () Bool)

(assert (=> b!2131 (= e!1246 (Cons!54 (head!226 (tail!238 (tail!238 (front!51 q2!1)))) (concat!2 (tail!238 (tail!238 (tail!238 (front!51 q2!1)))) (reverse!5 (Cons!54 e3!1 (rear!53 q2!1))))))))

(declare-fun b!2132 () Bool)

(assert (=> b!2132 (= e!1245 (= (content!22 lt!557) (union (content!22 (tail!238 (tail!238 (front!51 q2!1)))) (content!22 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1)))))))))

(assert (= (and d!1456 c!690) b!2130))

(assert (= (and d!1456 (not c!690)) b!2131))

(assert (= (and d!1456 res!865) b!2132))

(declare-fun m!3021 () Bool)

(assert (=> d!1456 m!3021))

(assert (=> d!1456 m!2533))

(assert (=> d!1456 m!2297))

(assert (=> d!1456 m!2393))

(assert (=> b!2131 m!2297))

(declare-fun m!3023 () Bool)

(assert (=> b!2131 m!3023))

(declare-fun m!3025 () Bool)

(assert (=> b!2132 m!3025))

(declare-fun m!3027 () Bool)

(assert (=> b!2132 m!3027))

(assert (=> b!2132 m!2297))

(assert (=> b!2132 m!2401))

(assert (=> b!1944 d!1456))

(declare-fun d!1458 () Bool)

(declare-fun lt!558 () Int)

(assert (=> d!1458 (>= lt!558 0)))

(declare-fun e!1247 () Int)

(assert (=> d!1458 (= lt!558 e!1247)))

(declare-fun c!691 () Bool)

(assert (=> d!1458 (= c!691 (is-Nil!55 (tail!238 (tail!238 (front!51 lt!423)))))))

(assert (=> d!1458 (= (size!23 (tail!238 (tail!238 (front!51 lt!423)))) lt!558)))

(declare-fun b!2133 () Bool)

(assert (=> b!2133 (= e!1247 0)))

(declare-fun b!2134 () Bool)

(assert (=> b!2134 (= e!1247 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (front!51 lt!423)))))))))

(assert (= (and d!1458 c!691) b!2133))

(assert (= (and d!1458 (not c!691)) b!2134))

(declare-fun m!3029 () Bool)

(assert (=> b!2134 m!3029))

(assert (=> b!1865 d!1458))

(declare-fun d!1460 () Bool)

(declare-fun e!1248 () Bool)

(assert (=> d!1460 e!1248))

(declare-fun res!866 () Bool)

(assert (=> d!1460 (=> (not res!866) (not e!1248))))

(declare-fun lt!559 () List!54)

(assert (=> d!1460 (= res!866 (= (size!23 lt!559) (+ (size!23 (tail!238 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))) (size!23 (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55)))))))

(declare-fun e!1249 () List!54)

(assert (=> d!1460 (= lt!559 e!1249)))

(declare-fun c!692 () Bool)

(assert (=> d!1460 (= c!692 (is-Nil!55 (tail!238 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))))))

(assert (=> d!1460 (= (concat!2 (tail!238 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))) (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55)) lt!559)))

(declare-fun b!2135 () Bool)

(assert (=> b!2135 (= e!1249 (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55))))

(declare-fun b!2136 () Bool)

(assert (=> b!2136 (= e!1249 (Cons!54 (head!226 (tail!238 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))) (concat!2 (tail!238 (tail!238 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))) (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55))))))

(declare-fun b!2137 () Bool)

(assert (=> b!2137 (= e!1248 (= (content!22 lt!559) (union (content!22 (tail!238 (reverse!5 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))) (content!22 (Cons!54 (head!226 (Cons!54 e1!2 (rear!53 queue!56))) Nil!55)))))))

(assert (= (and d!1460 c!692) b!2135))

(assert (= (and d!1460 (not c!692)) b!2136))

(assert (= (and d!1460 res!866) b!2137))

(declare-fun m!3031 () Bool)

(assert (=> d!1460 m!3031))

(assert (=> d!1460 m!2987))

(assert (=> d!1460 m!2753))

(declare-fun m!3033 () Bool)

(assert (=> b!2136 m!3033))

(declare-fun m!3035 () Bool)

(assert (=> b!2137 m!3035))

(assert (=> b!2137 m!2927))

(assert (=> b!2137 m!2761))

(assert (=> b!1974 d!1460))

(declare-fun d!1462 () Bool)

(declare-fun c!693 () Bool)

(assert (=> d!1462 (= c!693 (is-Nil!55 lt!519))))

(declare-fun e!1250 () (Set (_ BitVec 32)))

(assert (=> d!1462 (= (content!22 lt!519) e!1250)))

(declare-fun b!2138 () Bool)

(assert (=> b!2138 (= e!1250 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2139 () Bool)

(assert (=> b!2139 (= e!1250 (union (insert (head!226 lt!519) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!519))))))

(assert (= (and d!1462 c!693) b!2138))

(assert (= (and d!1462 (not c!693)) b!2139))

(declare-fun m!3037 () Bool)

(assert (=> b!2139 m!3037))

(declare-fun m!3039 () Bool)

(assert (=> b!2139 m!3039))

(assert (=> d!1322 d!1462))

(declare-fun d!1464 () Bool)

(declare-fun c!694 () Bool)

(assert (=> d!1464 (= c!694 (is-Nil!55 (tail!238 (rear!53 q3!1))))))

(declare-fun e!1251 () (Set (_ BitVec 32)))

(assert (=> d!1464 (= (content!22 (tail!238 (rear!53 q3!1))) e!1251)))

(declare-fun b!2140 () Bool)

(assert (=> b!2140 (= e!1251 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2141 () Bool)

(assert (=> b!2141 (= e!1251 (union (insert (head!226 (tail!238 (rear!53 q3!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (rear!53 q3!1))))))))

(assert (= (and d!1464 c!694) b!2140))

(assert (= (and d!1464 (not c!694)) b!2141))

(declare-fun m!3041 () Bool)

(assert (=> b!2141 m!3041))

(assert (=> b!2141 m!2869))

(assert (=> d!1322 d!1464))

(declare-fun d!1466 () Bool)

(declare-fun lt!560 () Int)

(assert (=> d!1466 (>= lt!560 0)))

(declare-fun e!1252 () Int)

(assert (=> d!1466 (= lt!560 e!1252)))

(declare-fun c!695 () Bool)

(assert (=> d!1466 (= c!695 (is-Nil!55 (tail!238 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1))))))))

(assert (=> d!1466 (= (size!23 (tail!238 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1))))) lt!560)))

(declare-fun b!2142 () Bool)

(assert (=> b!2142 (= e!1252 0)))

(declare-fun b!2143 () Bool)

(assert (=> b!2143 (= e!1252 (+ 1 (size!23 (tail!238 (tail!238 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1))))))))))

(assert (= (and d!1466 c!695) b!2142))

(assert (= (and d!1466 (not c!695)) b!2143))

(declare-fun m!3043 () Bool)

(assert (=> b!2143 m!3043))

(assert (=> b!1999 d!1466))

(declare-fun d!1468 () Bool)

(declare-fun c!696 () Bool)

(assert (=> d!1468 (= c!696 (is-Nil!55 lt!501))))

(declare-fun e!1253 () (Set (_ BitVec 32)))

(assert (=> d!1468 (= (content!22 lt!501) e!1253)))

(declare-fun b!2144 () Bool)

(assert (=> b!2144 (= e!1253 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2145 () Bool)

(assert (=> b!2145 (= e!1253 (union (insert (head!226 lt!501) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!501))))))

(assert (= (and d!1468 c!696) b!2144))

(assert (= (and d!1468 (not c!696)) b!2145))

(declare-fun m!3045 () Bool)

(assert (=> b!2145 m!3045))

(declare-fun m!3047 () Bool)

(assert (=> b!2145 m!3047))

(assert (=> b!1945 d!1468))

(declare-fun d!1470 () Bool)

(declare-fun c!697 () Bool)

(assert (=> d!1470 (= c!697 (is-Nil!55 (tail!238 (front!51 q2!1))))))

(declare-fun e!1254 () (Set (_ BitVec 32)))

(assert (=> d!1470 (= (content!22 (tail!238 (front!51 q2!1))) e!1254)))

(declare-fun b!2146 () Bool)

(assert (=> b!2146 (= e!1254 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2147 () Bool)

(assert (=> b!2147 (= e!1254 (union (insert (head!226 (tail!238 (front!51 q2!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (front!51 q2!1))))))))

(assert (= (and d!1470 c!697) b!2146))

(assert (= (and d!1470 (not c!697)) b!2147))

(declare-fun m!3049 () Bool)

(assert (=> b!2147 m!3049))

(assert (=> b!2147 m!3027))

(assert (=> b!1945 d!1470))

(assert (=> b!1945 d!1274))

(declare-fun d!1472 () Bool)

(declare-fun e!1255 () Bool)

(assert (=> d!1472 e!1255))

(declare-fun res!867 () Bool)

(assert (=> d!1472 (=> (not res!867) (not e!1255))))

(declare-fun lt!561 () List!54)

(assert (=> d!1472 (= res!867 (= (size!23 lt!561) (+ (size!23 (tail!238 (tail!238 (tail!238 (front!51 q4!1))))) (size!23 (reverse!5 (rear!53 q4!1))))))))

(declare-fun e!1256 () List!54)

(assert (=> d!1472 (= lt!561 e!1256)))

(declare-fun c!698 () Bool)

(assert (=> d!1472 (= c!698 (is-Nil!55 (tail!238 (tail!238 (tail!238 (front!51 q4!1))))))))

(assert (=> d!1472 (= (concat!2 (tail!238 (tail!238 (tail!238 (front!51 q4!1)))) (reverse!5 (rear!53 q4!1))) lt!561)))

(declare-fun b!2148 () Bool)

(assert (=> b!2148 (= e!1256 (reverse!5 (rear!53 q4!1)))))

(declare-fun b!2149 () Bool)

(assert (=> b!2149 (= e!1256 (Cons!54 (head!226 (tail!238 (tail!238 (tail!238 (front!51 q4!1))))) (concat!2 (tail!238 (tail!238 (tail!238 (tail!238 (front!51 q4!1))))) (reverse!5 (rear!53 q4!1)))))))

(declare-fun b!2150 () Bool)

(assert (=> b!2150 (= e!1255 (= (content!22 lt!561) (union (content!22 (tail!238 (tail!238 (tail!238 (front!51 q4!1))))) (content!22 (reverse!5 (rear!53 q4!1))))))))

(assert (= (and d!1472 c!698) b!2148))

(assert (= (and d!1472 (not c!698)) b!2149))

(assert (= (and d!1472 res!867) b!2150))

(declare-fun m!3051 () Bool)

(assert (=> d!1472 m!3051))

(assert (=> d!1472 m!2633))

(assert (=> d!1472 m!2325))

(assert (=> d!1472 m!2445))

(assert (=> b!2149 m!2325))

(declare-fun m!3053 () Bool)

(assert (=> b!2149 m!3053))

(declare-fun m!3055 () Bool)

(assert (=> b!2150 m!3055))

(assert (=> b!2150 m!2847))

(assert (=> b!2150 m!2325))

(assert (=> b!2150 m!2453))

(assert (=> b!1915 d!1472))

(declare-fun d!1474 () Bool)

(declare-fun e!1257 () Bool)

(assert (=> d!1474 e!1257))

(declare-fun res!868 () Bool)

(assert (=> d!1474 (=> (not res!868) (not e!1257))))

(declare-fun lt!562 () List!54)

(assert (=> d!1474 (= res!868 (= (size!23 lt!562) (+ (size!23 (tail!238 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))) (size!23 (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55)))))))

(declare-fun e!1258 () List!54)

(assert (=> d!1474 (= lt!562 e!1258)))

(declare-fun c!699 () Bool)

(assert (=> d!1474 (= c!699 (is-Nil!55 (tail!238 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))))))

(assert (=> d!1474 (= (concat!2 (tail!238 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))) (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55)) lt!562)))

(declare-fun b!2151 () Bool)

(assert (=> b!2151 (= e!1258 (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55))))

(declare-fun b!2152 () Bool)

(assert (=> b!2152 (= e!1258 (Cons!54 (head!226 (tail!238 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))) (concat!2 (tail!238 (tail!238 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))) (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55))))))

(declare-fun b!2153 () Bool)

(assert (=> b!2153 (= e!1257 (= (content!22 lt!562) (union (content!22 (tail!238 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))) (content!22 (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55)))))))

(assert (= (and d!1474 c!699) b!2151))

(assert (= (and d!1474 (not c!699)) b!2152))

(assert (= (and d!1474 res!868) b!2153))

(declare-fun m!3057 () Bool)

(assert (=> d!1474 m!3057))

(declare-fun m!3059 () Bool)

(assert (=> d!1474 m!3059))

(assert (=> d!1474 m!2607))

(declare-fun m!3061 () Bool)

(assert (=> b!2152 m!3061))

(declare-fun m!3063 () Bool)

(assert (=> b!2153 m!3063))

(declare-fun m!3065 () Bool)

(assert (=> b!2153 m!3065))

(assert (=> b!2153 m!2615))

(assert (=> b!1904 d!1474))

(declare-fun d!1476 () Bool)

(declare-fun lt!563 () Int)

(assert (=> d!1476 (>= lt!563 0)))

(declare-fun e!1259 () Int)

(assert (=> d!1476 (= lt!563 e!1259)))

(declare-fun c!700 () Bool)

(assert (=> d!1476 (= c!700 (is-Nil!55 (tail!238 (rear!53 lt!433))))))

(assert (=> d!1476 (= (size!23 (tail!238 (rear!53 lt!433))) lt!563)))

(declare-fun b!2154 () Bool)

(assert (=> b!2154 (= e!1259 0)))

(declare-fun b!2155 () Bool)

(assert (=> b!2155 (= e!1259 (+ 1 (size!23 (tail!238 (tail!238 (rear!53 lt!433))))))))

(assert (= (and d!1476 c!700) b!2154))

(assert (= (and d!1476 (not c!700)) b!2155))

(declare-fun m!3067 () Bool)

(assert (=> b!2155 m!3067))

(assert (=> b!1877 d!1476))

(declare-fun d!1478 () Bool)

(declare-fun c!701 () Bool)

(assert (=> d!1478 (= c!701 (is-Nil!55 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))))

(declare-fun e!1260 () (Set (_ BitVec 32)))

(assert (=> d!1478 (= (content!22 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))) e!1260)))

(declare-fun b!2156 () Bool)

(assert (=> b!2156 (= e!1260 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2157 () Bool)

(assert (=> b!2157 (= e!1260 (union (insert (head!226 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))))))

(assert (= (and d!1478 c!701) b!2156))

(assert (= (and d!1478 (not c!701)) b!2157))

(declare-fun m!3069 () Bool)

(assert (=> b!2157 m!3069))

(declare-fun m!3071 () Bool)

(assert (=> b!2157 m!3071))

(assert (=> b!2023 d!1478))

(declare-fun d!1480 () Bool)

(declare-fun lt!564 () Int)

(assert (=> d!1480 (>= lt!564 0)))

(declare-fun e!1261 () Int)

(assert (=> d!1480 (= lt!564 e!1261)))

(declare-fun c!702 () Bool)

(assert (=> d!1480 (= c!702 (is-Nil!55 (tail!238 (tail!238 (rear!53 lt!423)))))))

(assert (=> d!1480 (= (size!23 (tail!238 (tail!238 (rear!53 lt!423)))) lt!564)))

(declare-fun b!2158 () Bool)

(assert (=> b!2158 (= e!1261 0)))

(declare-fun b!2159 () Bool)

(assert (=> b!2159 (= e!1261 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (rear!53 lt!423)))))))))

(assert (= (and d!1480 c!702) b!2158))

(assert (= (and d!1480 (not c!702)) b!2159))

(declare-fun m!3073 () Bool)

(assert (=> b!2159 m!3073))

(assert (=> b!2011 d!1480))

(declare-fun d!1482 () Bool)

(declare-fun e!1262 () Bool)

(assert (=> d!1482 e!1262))

(declare-fun res!869 () Bool)

(assert (=> d!1482 (=> (not res!869) (not e!1262))))

(declare-fun lt!565 () List!54)

(assert (=> d!1482 (= res!869 (= (size!23 lt!565) (+ (size!23 (tail!238 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))) (size!23 (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55)))))))

(declare-fun e!1263 () List!54)

(assert (=> d!1482 (= lt!565 e!1263)))

(declare-fun c!703 () Bool)

(assert (=> d!1482 (= c!703 (is-Nil!55 (tail!238 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))))))

(assert (=> d!1482 (= (concat!2 (tail!238 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))) (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55)) lt!565)))

(declare-fun b!2160 () Bool)

(assert (=> b!2160 (= e!1263 (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55))))

(declare-fun b!2161 () Bool)

(assert (=> b!2161 (= e!1263 (Cons!54 (head!226 (tail!238 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))) (concat!2 (tail!238 (tail!238 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))) (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55))))))

(declare-fun b!2162 () Bool)

(assert (=> b!2162 (= e!1262 (= (content!22 lt!565) (union (content!22 (tail!238 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))) (content!22 (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55)))))))

(assert (= (and d!1482 c!703) b!2160))

(assert (= (and d!1482 (not c!703)) b!2161))

(assert (= (and d!1482 res!869) b!2162))

(declare-fun m!3075 () Bool)

(assert (=> d!1482 m!3075))

(assert (=> d!1482 m!2997))

(assert (=> d!1482 m!2701))

(declare-fun m!3077 () Bool)

(assert (=> b!2161 m!3077))

(declare-fun m!3079 () Bool)

(assert (=> b!2162 m!3079))

(declare-fun m!3081 () Bool)

(assert (=> b!2162 m!3081))

(assert (=> b!2162 m!2709))

(assert (=> b!1955 d!1482))

(assert (=> b!1853 d!1464))

(declare-fun d!1484 () Bool)

(declare-fun lt!566 () Int)

(assert (=> d!1484 (>= lt!566 0)))

(declare-fun e!1264 () Int)

(assert (=> d!1484 (= lt!566 e!1264)))

(declare-fun c!704 () Bool)

(assert (=> d!1484 (= c!704 (is-Nil!55 (tail!238 (rear!53 lt!432))))))

(assert (=> d!1484 (= (size!23 (tail!238 (rear!53 lt!432))) lt!566)))

(declare-fun b!2163 () Bool)

(assert (=> b!2163 (= e!1264 0)))

(declare-fun b!2164 () Bool)

(assert (=> b!2164 (= e!1264 (+ 1 (size!23 (tail!238 (tail!238 (rear!53 lt!432))))))))

(assert (= (and d!1484 c!704) b!2163))

(assert (= (and d!1484 (not c!704)) b!2164))

(declare-fun m!3083 () Bool)

(assert (=> b!2164 m!3083))

(assert (=> b!1893 d!1484))

(declare-fun d!1486 () Bool)

(declare-fun lt!567 () Int)

(assert (=> d!1486 (>= lt!567 0)))

(declare-fun e!1265 () Int)

(assert (=> d!1486 (= lt!567 e!1265)))

(declare-fun c!705 () Bool)

(assert (=> d!1486 (= c!705 (is-Nil!55 (tail!238 (rear!53 lt!430))))))

(assert (=> d!1486 (= (size!23 (tail!238 (rear!53 lt!430))) lt!567)))

(declare-fun b!2165 () Bool)

(assert (=> b!2165 (= e!1265 0)))

(declare-fun b!2166 () Bool)

(assert (=> b!2166 (= e!1265 (+ 1 (size!23 (tail!238 (tail!238 (rear!53 lt!430))))))))

(assert (= (and d!1486 c!705) b!2165))

(assert (= (and d!1486 (not c!705)) b!2166))

(declare-fun m!3085 () Bool)

(assert (=> b!2166 m!3085))

(assert (=> b!1988 d!1486))

(declare-fun d!1488 () Bool)

(declare-fun c!706 () Bool)

(assert (=> d!1488 (= c!706 (is-Nil!55 (tail!238 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1))))))))

(declare-fun e!1266 () (Set (_ BitVec 32)))

(assert (=> d!1488 (= (content!22 (tail!238 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1))))) e!1266)))

(declare-fun b!2167 () Bool)

(assert (=> b!2167 (= e!1266 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2168 () Bool)

(assert (=> b!2168 (= e!1266 (union (insert (head!226 (tail!238 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1))))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (reverse!5 (Cons!54 e3!1 (rear!53 q2!1))))))))))

(assert (= (and d!1488 c!706) b!2167))

(assert (= (and d!1488 (not c!706)) b!2168))

(declare-fun m!3087 () Bool)

(assert (=> b!2168 m!3087))

(declare-fun m!3089 () Bool)

(assert (=> b!2168 m!3089))

(assert (=> b!1938 d!1488))

(declare-fun d!1490 () Bool)

(declare-fun c!707 () Bool)

(assert (=> d!1490 (= c!707 (is-Nil!55 lt!508))))

(declare-fun e!1267 () (Set (_ BitVec 32)))

(assert (=> d!1490 (= (content!22 lt!508) e!1267)))

(declare-fun b!2169 () Bool)

(assert (=> b!2169 (= e!1267 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2170 () Bool)

(assert (=> b!2170 (= e!1267 (union (insert (head!226 lt!508) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!508))))))

(assert (= (and d!1490 c!707) b!2169))

(assert (= (and d!1490 (not c!707)) b!2170))

(declare-fun m!3091 () Bool)

(assert (=> b!2170 m!3091))

(declare-fun m!3093 () Bool)

(assert (=> b!2170 m!3093))

(assert (=> b!1968 d!1490))

(assert (=> b!1968 d!1390))

(assert (=> b!1968 d!1288))

(declare-fun d!1492 () Bool)

(declare-fun lt!568 () Int)

(assert (=> d!1492 (>= lt!568 0)))

(declare-fun e!1268 () Int)

(assert (=> d!1492 (= lt!568 e!1268)))

(declare-fun c!708 () Bool)

(assert (=> d!1492 (= c!708 (is-Nil!55 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))))))

(assert (=> d!1492 (= (size!23 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))) lt!568)))

(declare-fun b!2171 () Bool)

(assert (=> b!2171 (= e!1268 0)))

(declare-fun b!2172 () Bool)

(assert (=> b!2172 (= e!1268 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))))))))

(assert (= (and d!1492 c!708) b!2171))

(assert (= (and d!1492 (not c!708)) b!2172))

(declare-fun m!3095 () Bool)

(assert (=> b!2172 m!3095))

(assert (=> b!1924 d!1492))

(declare-fun d!1494 () Bool)

(declare-fun e!1269 () Bool)

(assert (=> d!1494 e!1269))

(declare-fun res!870 () Bool)

(assert (=> d!1494 (=> (not res!870) (not e!1269))))

(declare-fun lt!569 () List!54)

(assert (=> d!1494 (= res!870 (= (size!23 lt!569) (+ (size!23 (reverse!5 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))) (size!23 (Cons!54 (head!226 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))) Nil!55)))))))

(declare-fun e!1270 () List!54)

(assert (=> d!1494 (= lt!569 e!1270)))

(declare-fun c!709 () Bool)

(assert (=> d!1494 (= c!709 (is-Nil!55 (reverse!5 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))))))

(assert (=> d!1494 (= (concat!2 (reverse!5 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))) (Cons!54 (head!226 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))) Nil!55)) lt!569)))

(declare-fun b!2173 () Bool)

(assert (=> b!2173 (= e!1270 (Cons!54 (head!226 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))) Nil!55))))

(declare-fun b!2174 () Bool)

(assert (=> b!2174 (= e!1270 (Cons!54 (head!226 (reverse!5 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))) (concat!2 (tail!238 (reverse!5 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))) (Cons!54 (head!226 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))) Nil!55))))))

(declare-fun b!2175 () Bool)

(assert (=> b!2175 (= e!1269 (= (content!22 lt!569) (union (content!22 (reverse!5 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))) (content!22 (Cons!54 (head!226 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))) Nil!55)))))))

(assert (= (and d!1494 c!709) b!2173))

(assert (= (and d!1494 (not c!709)) b!2174))

(assert (= (and d!1494 res!870) b!2175))

(declare-fun m!3097 () Bool)

(assert (=> d!1494 m!3097))

(assert (=> d!1494 m!2621))

(declare-fun m!3099 () Bool)

(assert (=> d!1494 m!3099))

(declare-fun m!3101 () Bool)

(assert (=> d!1494 m!3101))

(declare-fun m!3103 () Bool)

(assert (=> b!2174 m!3103))

(declare-fun m!3105 () Bool)

(assert (=> b!2175 m!3105))

(assert (=> b!2175 m!2621))

(declare-fun m!3107 () Bool)

(assert (=> b!2175 m!3107))

(declare-fun m!3109 () Bool)

(assert (=> b!2175 m!3109))

(assert (=> b!1907 d!1494))

(declare-fun d!1496 () Bool)

(declare-fun lt!570 () List!54)

(assert (=> d!1496 (= (content!22 lt!570) (content!22 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))))))

(declare-fun e!1271 () List!54)

(assert (=> d!1496 (= lt!570 e!1271)))

(declare-fun c!710 () Bool)

(assert (=> d!1496 (= c!710 (is-Nil!55 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))))))

(assert (=> d!1496 (= (reverse!5 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))) lt!570)))

(declare-fun b!2176 () Bool)

(assert (=> b!2176 (= e!1271 Nil!55)))

(declare-fun b!2177 () Bool)

(assert (=> b!2177 (= e!1271 (concat!2 (reverse!5 (tail!238 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1)))))) (Cons!54 (head!226 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))) Nil!55)))))

(assert (= (and d!1496 c!710) b!2176))

(assert (= (and d!1496 (not c!710)) b!2177))

(declare-fun m!3111 () Bool)

(assert (=> d!1496 m!3111))

(assert (=> d!1496 m!3071))

(declare-fun m!3113 () Bool)

(assert (=> b!2177 m!3113))

(assert (=> b!2177 m!3113))

(declare-fun m!3115 () Bool)

(assert (=> b!2177 m!3115))

(assert (=> b!1907 d!1496))

(declare-fun d!1498 () Bool)

(declare-fun c!711 () Bool)

(assert (=> d!1498 (= c!711 (is-Nil!55 lt!503))))

(declare-fun e!1272 () (Set (_ BitVec 32)))

(assert (=> d!1498 (= (content!22 lt!503) e!1272)))

(declare-fun b!2178 () Bool)

(assert (=> b!2178 (= e!1272 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2179 () Bool)

(assert (=> b!2179 (= e!1272 (union (insert (head!226 lt!503) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!503))))))

(assert (= (and d!1498 c!711) b!2178))

(assert (= (and d!1498 (not c!711)) b!2179))

(declare-fun m!3117 () Bool)

(assert (=> b!2179 m!3117))

(declare-fun m!3119 () Bool)

(assert (=> b!2179 m!3119))

(assert (=> b!1956 d!1498))

(declare-fun d!1500 () Bool)

(declare-fun c!712 () Bool)

(assert (=> d!1500 (= c!712 (is-Nil!55 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))))))

(declare-fun e!1273 () (Set (_ BitVec 32)))

(assert (=> d!1500 (= (content!22 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))) e!1273)))

(declare-fun b!2180 () Bool)

(assert (=> b!2180 (= e!1273 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2181 () Bool)

(assert (=> b!2181 (= e!1273 (union (insert (head!226 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (reverse!5 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))))))))

(assert (= (and d!1500 c!712) b!2180))

(assert (= (and d!1500 (not c!712)) b!2181))

(declare-fun m!3121 () Bool)

(assert (=> b!2181 m!3121))

(assert (=> b!2181 m!3081))

(assert (=> b!1956 d!1500))

(declare-fun d!1502 () Bool)

(declare-fun c!713 () Bool)

(assert (=> d!1502 (= c!713 (is-Nil!55 (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55)))))

(declare-fun e!1274 () (Set (_ BitVec 32)))

(assert (=> d!1502 (= (content!22 (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55)) e!1274)))

(declare-fun b!2182 () Bool)

(assert (=> b!2182 (= e!1274 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2183 () Bool)

(assert (=> b!2183 (= e!1274 (union (insert (head!226 (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (Cons!54 (head!226 (Cons!54 e2!3 (rear!53 q1!1))) Nil!55)))))))

(assert (= (and d!1502 c!713) b!2182))

(assert (= (and d!1502 (not c!713)) b!2183))

(declare-fun m!3123 () Bool)

(assert (=> b!2183 m!3123))

(declare-fun m!3125 () Bool)

(assert (=> b!2183 m!3125))

(assert (=> b!1956 d!1502))

(declare-fun d!1504 () Bool)

(declare-fun lt!571 () Int)

(assert (=> d!1504 (>= lt!571 0)))

(declare-fun e!1275 () Int)

(assert (=> d!1504 (= lt!571 e!1275)))

(declare-fun c!714 () Bool)

(assert (=> d!1504 (= c!714 (is-Nil!55 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))))))

(assert (=> d!1504 (= (size!23 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))) lt!571)))

(declare-fun b!2184 () Bool)

(assert (=> b!2184 (= e!1275 0)))

(declare-fun b!2185 () Bool)

(assert (=> b!2185 (= e!1275 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))))))))

(assert (= (and d!1504 c!714) b!2184))

(assert (= (and d!1504 (not c!714)) b!2185))

(declare-fun m!3127 () Bool)

(assert (=> b!2185 m!3127))

(assert (=> b!1932 d!1504))

(declare-fun d!1506 () Bool)

(declare-fun e!1276 () Bool)

(assert (=> d!1506 e!1276))

(declare-fun res!871 () Bool)

(assert (=> d!1506 (=> (not res!871) (not e!1276))))

(declare-fun lt!572 () List!54)

(assert (=> d!1506 (= res!871 (= (size!23 lt!572) (+ (size!23 (tail!238 (reverse!5 (tail!238 (rear!53 q4!1))))) (size!23 (Cons!54 (head!226 (rear!53 q4!1)) Nil!55)))))))

(declare-fun e!1277 () List!54)

(assert (=> d!1506 (= lt!572 e!1277)))

(declare-fun c!715 () Bool)

(assert (=> d!1506 (= c!715 (is-Nil!55 (tail!238 (reverse!5 (tail!238 (rear!53 q4!1))))))))

(assert (=> d!1506 (= (concat!2 (tail!238 (reverse!5 (tail!238 (rear!53 q4!1)))) (Cons!54 (head!226 (rear!53 q4!1)) Nil!55)) lt!572)))

(declare-fun b!2186 () Bool)

(assert (=> b!2186 (= e!1277 (Cons!54 (head!226 (rear!53 q4!1)) Nil!55))))

(declare-fun b!2187 () Bool)

(assert (=> b!2187 (= e!1277 (Cons!54 (head!226 (tail!238 (reverse!5 (tail!238 (rear!53 q4!1))))) (concat!2 (tail!238 (tail!238 (reverse!5 (tail!238 (rear!53 q4!1))))) (Cons!54 (head!226 (rear!53 q4!1)) Nil!55))))))

(declare-fun b!2188 () Bool)

(assert (=> b!2188 (= e!1276 (= (content!22 lt!572) (union (content!22 (tail!238 (reverse!5 (tail!238 (rear!53 q4!1))))) (content!22 (Cons!54 (head!226 (rear!53 q4!1)) Nil!55)))))))

(assert (= (and d!1506 c!715) b!2186))

(assert (= (and d!1506 (not c!715)) b!2187))

(assert (= (and d!1506 res!871) b!2188))

(declare-fun m!3129 () Bool)

(assert (=> d!1506 m!3129))

(declare-fun m!3131 () Bool)

(assert (=> d!1506 m!3131))

(assert (=> d!1506 m!2723))

(declare-fun m!3133 () Bool)

(assert (=> b!2187 m!3133))

(declare-fun m!3135 () Bool)

(assert (=> b!2188 m!3135))

(declare-fun m!3137 () Bool)

(assert (=> b!2188 m!3137))

(assert (=> b!2188 m!2731))

(assert (=> b!1962 d!1506))

(declare-fun d!1508 () Bool)

(declare-fun lt!573 () Int)

(assert (=> d!1508 (>= lt!573 0)))

(declare-fun e!1278 () Int)

(assert (=> d!1508 (= lt!573 e!1278)))

(declare-fun c!716 () Bool)

(assert (=> d!1508 (= c!716 (is-Nil!55 (tail!238 (tail!238 (front!51 lt!417)))))))

(assert (=> d!1508 (= (size!23 (tail!238 (tail!238 (front!51 lt!417)))) lt!573)))

(declare-fun b!2189 () Bool)

(assert (=> b!2189 (= e!1278 0)))

(declare-fun b!2190 () Bool)

(assert (=> b!2190 (= e!1278 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (front!51 lt!417)))))))))

(assert (= (and d!1508 c!716) b!2189))

(assert (= (and d!1508 (not c!716)) b!2190))

(declare-fun m!3139 () Bool)

(assert (=> b!2190 m!3139))

(assert (=> b!1947 d!1508))

(declare-fun d!1510 () Bool)

(declare-fun lt!574 () Int)

(assert (=> d!1510 (>= lt!574 0)))

(declare-fun e!1279 () Int)

(assert (=> d!1510 (= lt!574 e!1279)))

(declare-fun c!717 () Bool)

(assert (=> d!1510 (= c!717 (is-Nil!55 lt!518))))

(assert (=> d!1510 (= (size!23 lt!518) lt!574)))

(declare-fun b!2191 () Bool)

(assert (=> b!2191 (= e!1279 0)))

(declare-fun b!2192 () Bool)

(assert (=> b!2192 (= e!1279 (+ 1 (size!23 (tail!238 lt!518))))))

(assert (= (and d!1510 c!717) b!2191))

(assert (= (and d!1510 (not c!717)) b!2192))

(declare-fun m!3141 () Bool)

(assert (=> b!2192 m!3141))

(assert (=> d!1320 d!1510))

(declare-fun d!1512 () Bool)

(declare-fun lt!575 () Int)

(assert (=> d!1512 (>= lt!575 0)))

(declare-fun e!1280 () Int)

(assert (=> d!1512 (= lt!575 e!1280)))

(declare-fun c!718 () Bool)

(assert (=> d!1512 (= c!718 (is-Nil!55 (reverse!5 (tail!238 (rear!53 q3!1)))))))

(assert (=> d!1512 (= (size!23 (reverse!5 (tail!238 (rear!53 q3!1)))) lt!575)))

(declare-fun b!2193 () Bool)

(assert (=> b!2193 (= e!1280 0)))

(declare-fun b!2194 () Bool)

(assert (=> b!2194 (= e!1280 (+ 1 (size!23 (tail!238 (reverse!5 (tail!238 (rear!53 q3!1)))))))))

(assert (= (and d!1512 c!718) b!2193))

(assert (= (and d!1512 (not c!718)) b!2194))

(assert (=> b!2194 m!2965))

(assert (=> d!1320 d!1512))

(declare-fun d!1514 () Bool)

(declare-fun lt!576 () Int)

(assert (=> d!1514 (>= lt!576 0)))

(declare-fun e!1281 () Int)

(assert (=> d!1514 (= lt!576 e!1281)))

(declare-fun c!719 () Bool)

(assert (=> d!1514 (= c!719 (is-Nil!55 (Cons!54 (head!226 (rear!53 q3!1)) Nil!55)))))

(assert (=> d!1514 (= (size!23 (Cons!54 (head!226 (rear!53 q3!1)) Nil!55)) lt!576)))

(declare-fun b!2195 () Bool)

(assert (=> b!2195 (= e!1281 0)))

(declare-fun b!2196 () Bool)

(assert (=> b!2196 (= e!1281 (+ 1 (size!23 (tail!238 (Cons!54 (head!226 (rear!53 q3!1)) Nil!55)))))))

(assert (= (and d!1514 c!719) b!2195))

(assert (= (and d!1514 (not c!719)) b!2196))

(declare-fun m!3143 () Bool)

(assert (=> b!2196 m!3143))

(assert (=> d!1320 d!1514))

(declare-fun d!1516 () Bool)

(declare-fun lt!577 () Int)

(assert (=> d!1516 (>= lt!577 0)))

(declare-fun e!1282 () Int)

(assert (=> d!1516 (= lt!577 e!1282)))

(declare-fun c!720 () Bool)

(assert (=> d!1516 (= c!720 (is-Nil!55 (tail!238 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56))))))))

(assert (=> d!1516 (= (size!23 (tail!238 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56))))) lt!577)))

(declare-fun b!2197 () Bool)

(assert (=> b!2197 (= e!1282 0)))

(declare-fun b!2198 () Bool)

(assert (=> b!2198 (= e!1282 (+ 1 (size!23 (tail!238 (tail!238 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56))))))))))

(assert (= (and d!1516 c!720) b!2197))

(assert (= (and d!1516 (not c!720)) b!2198))

(declare-fun m!3145 () Bool)

(assert (=> b!2198 m!3145))

(assert (=> b!1871 d!1516))

(declare-fun d!1518 () Bool)

(declare-fun c!721 () Bool)

(assert (=> d!1518 (= c!721 (is-Nil!55 (tail!238 lt!451)))))

(declare-fun e!1283 () (Set (_ BitVec 32)))

(assert (=> d!1518 (= (content!22 (tail!238 lt!451)) e!1283)))

(declare-fun b!2199 () Bool)

(assert (=> b!2199 (= e!1283 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2200 () Bool)

(assert (=> b!2200 (= e!1283 (union (insert (head!226 (tail!238 lt!451)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 lt!451)))))))

(assert (= (and d!1518 c!721) b!2199))

(assert (= (and d!1518 (not c!721)) b!2200))

(declare-fun m!3147 () Bool)

(assert (=> b!2200 m!3147))

(declare-fun m!3149 () Bool)

(assert (=> b!2200 m!3149))

(assert (=> b!1857 d!1518))

(assert (=> b!1887 d!1358))

(declare-fun d!1520 () Bool)

(declare-fun c!722 () Bool)

(assert (=> d!1520 (= c!722 (is-Nil!55 lt!507))))

(declare-fun e!1284 () (Set (_ BitVec 32)))

(assert (=> d!1520 (= (content!22 lt!507) e!1284)))

(declare-fun b!2201 () Bool)

(assert (=> b!2201 (= e!1284 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2202 () Bool)

(assert (=> b!2202 (= e!1284 (union (insert (head!226 lt!507) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!507))))))

(assert (= (and d!1520 c!722) b!2201))

(assert (= (and d!1520 (not c!722)) b!2202))

(declare-fun m!3151 () Bool)

(assert (=> b!2202 m!3151))

(declare-fun m!3153 () Bool)

(assert (=> b!2202 m!3153))

(assert (=> d!1298 d!1520))

(assert (=> d!1298 d!1406))

(declare-fun d!1522 () Bool)

(declare-fun lt!578 () Int)

(assert (=> d!1522 (>= lt!578 0)))

(declare-fun e!1285 () Int)

(assert (=> d!1522 (= lt!578 e!1285)))

(declare-fun c!723 () Bool)

(assert (=> d!1522 (= c!723 (is-Nil!55 (tail!238 (front!51 lt!432))))))

(assert (=> d!1522 (= (size!23 (tail!238 (front!51 lt!432))) lt!578)))

(declare-fun b!2203 () Bool)

(assert (=> b!2203 (= e!1285 0)))

(declare-fun b!2204 () Bool)

(assert (=> b!2204 (= e!1285 (+ 1 (size!23 (tail!238 (tail!238 (front!51 lt!432))))))))

(assert (= (and d!1522 c!723) b!2203))

(assert (= (and d!1522 (not c!723)) b!2204))

(declare-fun m!3155 () Bool)

(assert (=> b!2204 m!3155))

(assert (=> b!1891 d!1522))

(declare-fun d!1524 () Bool)

(declare-fun c!724 () Bool)

(assert (=> d!1524 (= c!724 (is-Nil!55 (tail!238 (reverse!5 (rear!53 q4!1)))))))

(declare-fun e!1286 () (Set (_ BitVec 32)))

(assert (=> d!1524 (= (content!22 (tail!238 (reverse!5 (rear!53 q4!1)))) e!1286)))

(declare-fun b!2205 () Bool)

(assert (=> b!2205 (= e!1286 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2206 () Bool)

(assert (=> b!2206 (= e!1286 (union (insert (head!226 (tail!238 (reverse!5 (rear!53 q4!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (reverse!5 (rear!53 q4!1)))))))))

(assert (= (and d!1524 c!724) b!2205))

(assert (= (and d!1524 (not c!724)) b!2206))

(declare-fun m!3157 () Bool)

(assert (=> b!2206 m!3157))

(declare-fun m!3159 () Bool)

(assert (=> b!2206 m!3159))

(assert (=> b!1889 d!1524))

(assert (=> b!1859 d!1388))

(declare-fun d!1526 () Bool)

(declare-fun lt!579 () Int)

(assert (=> d!1526 (>= lt!579 0)))

(declare-fun e!1287 () Int)

(assert (=> d!1526 (= lt!579 e!1287)))

(declare-fun c!725 () Bool)

(assert (=> d!1526 (= c!725 (is-Nil!55 (tail!238 (reverse!5 (rear!53 q3!1)))))))

(assert (=> d!1526 (= (size!23 (tail!238 (reverse!5 (rear!53 q3!1)))) lt!579)))

(declare-fun b!2207 () Bool)

(assert (=> b!2207 (= e!1287 0)))

(declare-fun b!2208 () Bool)

(assert (=> b!2208 (= e!1287 (+ 1 (size!23 (tail!238 (tail!238 (reverse!5 (rear!53 q3!1)))))))))

(assert (= (and d!1526 c!725) b!2207))

(assert (= (and d!1526 (not c!725)) b!2208))

(declare-fun m!3161 () Bool)

(assert (=> b!2208 m!3161))

(assert (=> b!1981 d!1526))

(declare-fun d!1528 () Bool)

(declare-fun lt!580 () Int)

(assert (=> d!1528 (>= lt!580 0)))

(declare-fun e!1288 () Int)

(assert (=> d!1528 (= lt!580 e!1288)))

(declare-fun c!726 () Bool)

(assert (=> d!1528 (= c!726 (is-Nil!55 lt!506))))

(assert (=> d!1528 (= (size!23 lt!506) lt!580)))

(declare-fun b!2209 () Bool)

(assert (=> b!2209 (= e!1288 0)))

(declare-fun b!2210 () Bool)

(assert (=> b!2210 (= e!1288 (+ 1 (size!23 (tail!238 lt!506))))))

(assert (= (and d!1528 c!726) b!2209))

(assert (= (and d!1528 (not c!726)) b!2210))

(declare-fun m!3163 () Bool)

(assert (=> b!2210 m!3163))

(assert (=> d!1296 d!1528))

(declare-fun d!1530 () Bool)

(declare-fun lt!581 () Int)

(assert (=> d!1530 (>= lt!581 0)))

(declare-fun e!1289 () Int)

(assert (=> d!1530 (= lt!581 e!1289)))

(declare-fun c!727 () Bool)

(assert (=> d!1530 (= c!727 (is-Nil!55 (reverse!5 (tail!238 (rear!53 q4!1)))))))

(assert (=> d!1530 (= (size!23 (reverse!5 (tail!238 (rear!53 q4!1)))) lt!581)))

(declare-fun b!2211 () Bool)

(assert (=> b!2211 (= e!1289 0)))

(declare-fun b!2212 () Bool)

(assert (=> b!2212 (= e!1289 (+ 1 (size!23 (tail!238 (reverse!5 (tail!238 (rear!53 q4!1)))))))))

(assert (= (and d!1530 c!727) b!2211))

(assert (= (and d!1530 (not c!727)) b!2212))

(assert (=> b!2212 m!3131))

(assert (=> d!1296 d!1530))

(declare-fun d!1532 () Bool)

(declare-fun lt!582 () Int)

(assert (=> d!1532 (>= lt!582 0)))

(declare-fun e!1290 () Int)

(assert (=> d!1532 (= lt!582 e!1290)))

(declare-fun c!728 () Bool)

(assert (=> d!1532 (= c!728 (is-Nil!55 (Cons!54 (head!226 (rear!53 q4!1)) Nil!55)))))

(assert (=> d!1532 (= (size!23 (Cons!54 (head!226 (rear!53 q4!1)) Nil!55)) lt!582)))

(declare-fun b!2213 () Bool)

(assert (=> b!2213 (= e!1290 0)))

(declare-fun b!2214 () Bool)

(assert (=> b!2214 (= e!1290 (+ 1 (size!23 (tail!238 (Cons!54 (head!226 (rear!53 q4!1)) Nil!55)))))))

(assert (= (and d!1532 c!728) b!2213))

(assert (= (and d!1532 (not c!728)) b!2214))

(declare-fun m!3165 () Bool)

(assert (=> b!2214 m!3165))

(assert (=> d!1296 d!1532))

(declare-fun d!1534 () Bool)

(declare-fun lt!583 () Int)

(assert (=> d!1534 (>= lt!583 0)))

(declare-fun e!1291 () Int)

(assert (=> d!1534 (= lt!583 e!1291)))

(declare-fun c!729 () Bool)

(assert (=> d!1534 (= c!729 (is-Nil!55 (tail!238 (rear!53 lt!431))))))

(assert (=> d!1534 (= (size!23 (tail!238 (rear!53 lt!431))) lt!583)))

(declare-fun b!2215 () Bool)

(assert (=> b!2215 (= e!1291 0)))

(declare-fun b!2216 () Bool)

(assert (=> b!2216 (= e!1291 (+ 1 (size!23 (tail!238 (tail!238 (rear!53 lt!431))))))))

(assert (= (and d!1534 c!729) b!2215))

(assert (= (and d!1534 (not c!729)) b!2216))

(declare-fun m!3167 () Bool)

(assert (=> b!2216 m!3167))

(assert (=> b!1942 d!1534))

(declare-fun d!1536 () Bool)

(declare-fun c!730 () Bool)

(assert (=> d!1536 (= c!730 (is-Nil!55 lt!489))))

(declare-fun e!1292 () (Set (_ BitVec 32)))

(assert (=> d!1536 (= (content!22 lt!489) e!1292)))

(declare-fun b!2217 () Bool)

(assert (=> b!2217 (= e!1292 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2218 () Bool)

(assert (=> b!2218 (= e!1292 (union (insert (head!226 lt!489) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!489))))))

(assert (= (and d!1536 c!730) b!2217))

(assert (= (and d!1536 (not c!730)) b!2218))

(declare-fun m!3169 () Bool)

(assert (=> b!2218 m!3169))

(declare-fun m!3171 () Bool)

(assert (=> b!2218 m!3171))

(assert (=> b!1905 d!1536))

(declare-fun d!1538 () Bool)

(declare-fun c!731 () Bool)

(assert (=> d!1538 (= c!731 (is-Nil!55 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))))))

(declare-fun e!1293 () (Set (_ BitVec 32)))

(assert (=> d!1538 (= (content!22 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))) e!1293)))

(declare-fun b!2219 () Bool)

(assert (=> b!2219 (= e!1293 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2220 () Bool)

(assert (=> b!2220 (= e!1293 (union (insert (head!226 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))))))))

(assert (= (and d!1538 c!731) b!2219))

(assert (= (and d!1538 (not c!731)) b!2220))

(declare-fun m!3173 () Bool)

(assert (=> b!2220 m!3173))

(assert (=> b!2220 m!3065))

(assert (=> b!1905 d!1538))

(declare-fun d!1540 () Bool)

(declare-fun c!732 () Bool)

(assert (=> d!1540 (= c!732 (is-Nil!55 (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55)))))

(declare-fun e!1294 () (Set (_ BitVec 32)))

(assert (=> d!1540 (= (content!22 (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55)) e!1294)))

(declare-fun b!2221 () Bool)

(assert (=> b!2221 (= e!1294 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2222 () Bool)

(assert (=> b!2222 (= e!1294 (union (insert (head!226 (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55)))))))

(assert (= (and d!1540 c!732) b!2221))

(assert (= (and d!1540 (not c!732)) b!2222))

(declare-fun m!3175 () Bool)

(assert (=> b!2222 m!3175))

(declare-fun m!3177 () Bool)

(assert (=> b!2222 m!3177))

(assert (=> b!1905 d!1540))

(declare-fun d!1542 () Bool)

(declare-fun c!733 () Bool)

(assert (=> d!1542 (= c!733 (is-Nil!55 (tail!238 lt!446)))))

(declare-fun e!1295 () (Set (_ BitVec 32)))

(assert (=> d!1542 (= (content!22 (tail!238 lt!446)) e!1295)))

(declare-fun b!2223 () Bool)

(assert (=> b!2223 (= e!1295 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2224 () Bool)

(assert (=> b!2224 (= e!1295 (union (insert (head!226 (tail!238 lt!446)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 lt!446)))))))

(assert (= (and d!1542 c!733) b!2223))

(assert (= (and d!1542 (not c!733)) b!2224))

(declare-fun m!3179 () Bool)

(assert (=> b!2224 m!3179))

(declare-fun m!3181 () Bool)

(assert (=> b!2224 m!3181))

(assert (=> b!2021 d!1542))

(declare-fun d!1544 () Bool)

(declare-fun lt!584 () Int)

(assert (=> d!1544 (>= lt!584 0)))

(declare-fun e!1296 () Int)

(assert (=> d!1544 (= lt!584 e!1296)))

(declare-fun c!734 () Bool)

(assert (=> d!1544 (= c!734 (is-Nil!55 (tail!238 (front!51 lt!430))))))

(assert (=> d!1544 (= (size!23 (tail!238 (front!51 lt!430))) lt!584)))

(declare-fun b!2225 () Bool)

(assert (=> b!2225 (= e!1296 0)))

(declare-fun b!2226 () Bool)

(assert (=> b!2226 (= e!1296 (+ 1 (size!23 (tail!238 (tail!238 (front!51 lt!430))))))))

(assert (= (and d!1544 c!734) b!2225))

(assert (= (and d!1544 (not c!734)) b!2226))

(declare-fun m!3183 () Bool)

(assert (=> b!2226 m!3183))

(assert (=> b!1986 d!1544))

(declare-fun d!1546 () Bool)

(declare-fun lt!585 () Int)

(assert (=> d!1546 (>= lt!585 0)))

(declare-fun e!1297 () Int)

(assert (=> d!1546 (= lt!585 e!1297)))

(declare-fun c!735 () Bool)

(assert (=> d!1546 (= c!735 (is-Nil!55 (tail!238 (tail!238 (rear!53 q4!1)))))))

(assert (=> d!1546 (= (size!23 (tail!238 (tail!238 (rear!53 q4!1)))) lt!585)))

(declare-fun b!2227 () Bool)

(assert (=> b!2227 (= e!1297 0)))

(declare-fun b!2228 () Bool)

(assert (=> b!2228 (= e!1297 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (rear!53 q4!1)))))))))

(assert (= (and d!1546 c!735) b!2227))

(assert (= (and d!1546 (not c!735)) b!2228))

(declare-fun m!3185 () Bool)

(assert (=> b!2228 m!3185))

(assert (=> b!1899 d!1546))

(declare-fun d!1548 () Bool)

(declare-fun lt!586 () Int)

(assert (=> d!1548 (>= lt!586 0)))

(declare-fun e!1298 () Int)

(assert (=> d!1548 (= lt!586 e!1298)))

(declare-fun c!736 () Bool)

(assert (=> d!1548 (= c!736 (is-Nil!55 (tail!238 (tail!238 (front!51 queue!56)))))))

(assert (=> d!1548 (= (size!23 (tail!238 (tail!238 (front!51 queue!56)))) lt!586)))

(declare-fun b!2229 () Bool)

(assert (=> b!2229 (= e!1298 0)))

(declare-fun b!2230 () Bool)

(assert (=> b!2230 (= e!1298 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (front!51 queue!56)))))))))

(assert (= (and d!1548 c!736) b!2229))

(assert (= (and d!1548 (not c!736)) b!2230))

(declare-fun m!3187 () Bool)

(assert (=> b!2230 m!3187))

(assert (=> b!1873 d!1548))

(declare-fun d!1550 () Bool)

(declare-fun c!737 () Bool)

(assert (=> d!1550 (= c!737 (is-Nil!55 (tail!238 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1))))))))

(declare-fun e!1299 () (Set (_ BitVec 32)))

(assert (=> d!1550 (= (content!22 (tail!238 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1))))) e!1299)))

(declare-fun b!2231 () Bool)

(assert (=> b!2231 (= e!1299 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2232 () Bool)

(assert (=> b!2232 (= e!1299 (union (insert (head!226 (tail!238 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1))))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (reverse!5 (Cons!54 e2!3 (rear!53 q1!1))))))))))

(assert (= (and d!1550 c!737) b!2231))

(assert (= (and d!1550 (not c!737)) b!2232))

(declare-fun m!3189 () Bool)

(assert (=> b!2232 m!3189))

(declare-fun m!3191 () Bool)

(assert (=> b!2232 m!3191))

(assert (=> b!1953 d!1550))

(declare-fun d!1552 () Bool)

(declare-fun lt!587 () Int)

(assert (=> d!1552 (>= lt!587 0)))

(declare-fun e!1300 () Int)

(assert (=> d!1552 (= lt!587 e!1300)))

(declare-fun c!738 () Bool)

(assert (=> d!1552 (= c!738 (is-Nil!55 (tail!238 lt!461)))))

(assert (=> d!1552 (= (size!23 (tail!238 lt!461)) lt!587)))

(declare-fun b!2233 () Bool)

(assert (=> b!2233 (= e!1300 0)))

(declare-fun b!2234 () Bool)

(assert (=> b!2234 (= e!1300 (+ 1 (size!23 (tail!238 (tail!238 lt!461)))))))

(assert (= (and d!1552 c!738) b!2233))

(assert (= (and d!1552 (not c!738)) b!2234))

(declare-fun m!3193 () Bool)

(assert (=> b!2234 m!3193))

(assert (=> b!1869 d!1552))

(declare-fun d!1554 () Bool)

(declare-fun lt!588 () Int)

(assert (=> d!1554 (>= lt!588 0)))

(declare-fun e!1301 () Int)

(assert (=> d!1554 (= lt!588 e!1301)))

(declare-fun c!739 () Bool)

(assert (=> d!1554 (= c!739 (is-Nil!55 (tail!238 lt!439)))))

(assert (=> d!1554 (= (size!23 (tail!238 lt!439)) lt!588)))

(declare-fun b!2235 () Bool)

(assert (=> b!2235 (= e!1301 0)))

(declare-fun b!2236 () Bool)

(assert (=> b!2236 (= e!1301 (+ 1 (size!23 (tail!238 (tail!238 lt!439)))))))

(assert (= (and d!1554 c!739) b!2235))

(assert (= (and d!1554 (not c!739)) b!2236))

(declare-fun m!3195 () Bool)

(assert (=> b!2236 m!3195))

(assert (=> b!1918 d!1554))

(assert (=> b!2015 d!1372))

(declare-fun d!1556 () Bool)

(declare-fun e!1302 () Bool)

(assert (=> d!1556 e!1302))

(declare-fun res!872 () Bool)

(assert (=> d!1556 (=> (not res!872) (not e!1302))))

(declare-fun lt!589 () List!54)

(assert (=> d!1556 (= res!872 (= (size!23 lt!589) (+ (size!23 (reverse!5 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))) (size!23 (Cons!54 (head!226 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))) Nil!55)))))))

(declare-fun e!1303 () List!54)

(assert (=> d!1556 (= lt!589 e!1303)))

(declare-fun c!740 () Bool)

(assert (=> d!1556 (= c!740 (is-Nil!55 (reverse!5 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))))))

(assert (=> d!1556 (= (concat!2 (reverse!5 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))) (Cons!54 (head!226 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))) Nil!55)) lt!589)))

(declare-fun b!2237 () Bool)

(assert (=> b!2237 (= e!1303 (Cons!54 (head!226 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))) Nil!55))))

(declare-fun b!2238 () Bool)

(assert (=> b!2238 (= e!1303 (Cons!54 (head!226 (reverse!5 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))) (concat!2 (tail!238 (reverse!5 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))) (Cons!54 (head!226 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))) Nil!55))))))

(declare-fun b!2239 () Bool)

(assert (=> b!2239 (= e!1302 (= (content!22 lt!589) (union (content!22 (reverse!5 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))) (content!22 (Cons!54 (head!226 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))) Nil!55)))))))

(assert (= (and d!1556 c!740) b!2237))

(assert (= (and d!1556 (not c!740)) b!2238))

(assert (= (and d!1556 res!872) b!2239))

(declare-fun m!3197 () Bool)

(assert (=> d!1556 m!3197))

(assert (=> d!1556 m!2765))

(declare-fun m!3199 () Bool)

(assert (=> d!1556 m!3199))

(declare-fun m!3201 () Bool)

(assert (=> d!1556 m!3201))

(declare-fun m!3203 () Bool)

(assert (=> b!2238 m!3203))

(declare-fun m!3205 () Bool)

(assert (=> b!2239 m!3205))

(assert (=> b!2239 m!2765))

(declare-fun m!3207 () Bool)

(assert (=> b!2239 m!3207))

(declare-fun m!3209 () Bool)

(assert (=> b!2239 m!3209))

(assert (=> b!1977 d!1556))

(declare-fun d!1558 () Bool)

(declare-fun lt!590 () List!54)

(assert (=> d!1558 (= (content!22 lt!590) (content!22 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))))))

(declare-fun e!1304 () List!54)

(assert (=> d!1558 (= lt!590 e!1304)))

(declare-fun c!741 () Bool)

(assert (=> d!1558 (= c!741 (is-Nil!55 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))))))

(assert (=> d!1558 (= (reverse!5 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))) lt!590)))

(declare-fun b!2240 () Bool)

(assert (=> b!2240 (= e!1304 Nil!55)))

(declare-fun b!2241 () Bool)

(assert (=> b!2241 (= e!1304 (concat!2 (reverse!5 (tail!238 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56)))))) (Cons!54 (head!226 (tail!238 (tail!238 (Cons!54 e1!2 (rear!53 queue!56))))) Nil!55)))))

(assert (= (and d!1558 c!741) b!2240))

(assert (= (and d!1558 (not c!741)) b!2241))

(declare-fun m!3211 () Bool)

(assert (=> d!1558 m!3211))

(assert (=> d!1558 m!2893))

(declare-fun m!3213 () Bool)

(assert (=> b!2241 m!3213))

(assert (=> b!2241 m!3213))

(declare-fun m!3215 () Bool)

(assert (=> b!2241 m!3215))

(assert (=> b!1977 d!1558))

(declare-fun d!1560 () Bool)

(declare-fun lt!591 () Int)

(assert (=> d!1560 (>= lt!591 0)))

(declare-fun e!1305 () Int)

(assert (=> d!1560 (= lt!591 e!1305)))

(declare-fun c!742 () Bool)

(assert (=> d!1560 (= c!742 (is-Nil!55 (tail!238 lt!445)))))

(assert (=> d!1560 (= (size!23 (tail!238 lt!445)) lt!591)))

(declare-fun b!2242 () Bool)

(assert (=> b!2242 (= e!1305 0)))

(declare-fun b!2243 () Bool)

(assert (=> b!2243 (= e!1305 (+ 1 (size!23 (tail!238 (tail!238 lt!445)))))))

(assert (= (and d!1560 c!742) b!2242))

(assert (= (and d!1560 (not c!742)) b!2243))

(declare-fun m!3217 () Bool)

(assert (=> b!2243 m!3217))

(assert (=> b!1997 d!1560))

(declare-fun d!1562 () Bool)

(declare-fun lt!592 () Int)

(assert (=> d!1562 (>= lt!592 0)))

(declare-fun e!1306 () Int)

(assert (=> d!1562 (= lt!592 e!1306)))

(declare-fun c!743 () Bool)

(assert (=> d!1562 (= c!743 (is-Nil!55 lt!515))))

(assert (=> d!1562 (= (size!23 lt!515) lt!592)))

(declare-fun b!2244 () Bool)

(assert (=> b!2244 (= e!1306 0)))

(declare-fun b!2245 () Bool)

(assert (=> b!2245 (= e!1306 (+ 1 (size!23 (tail!238 lt!515))))))

(assert (= (and d!1562 c!743) b!2244))

(assert (= (and d!1562 (not c!743)) b!2245))

(declare-fun m!3219 () Bool)

(assert (=> b!2245 m!3219))

(assert (=> d!1314 d!1562))

(assert (=> d!1314 d!1324))

(assert (=> d!1314 d!1312))

(declare-fun d!1564 () Bool)

(declare-fun e!1307 () Bool)

(assert (=> d!1564 e!1307))

(declare-fun res!873 () Bool)

(assert (=> d!1564 (=> (not res!873) (not e!1307))))

(declare-fun lt!593 () List!54)

(assert (=> d!1564 (= res!873 (= (size!23 lt!593) (+ (size!23 (tail!238 (tail!238 (tail!238 (front!51 q3!1))))) (size!23 (reverse!5 (rear!53 q3!1))))))))

(declare-fun e!1308 () List!54)

(assert (=> d!1564 (= lt!593 e!1308)))

(declare-fun c!744 () Bool)

(assert (=> d!1564 (= c!744 (is-Nil!55 (tail!238 (tail!238 (tail!238 (front!51 q3!1))))))))

(assert (=> d!1564 (= (concat!2 (tail!238 (tail!238 (tail!238 (front!51 q3!1)))) (reverse!5 (rear!53 q3!1))) lt!593)))

(declare-fun b!2246 () Bool)

(assert (=> b!2246 (= e!1308 (reverse!5 (rear!53 q3!1)))))

(declare-fun b!2247 () Bool)

(assert (=> b!2247 (= e!1308 (Cons!54 (head!226 (tail!238 (tail!238 (tail!238 (front!51 q3!1))))) (concat!2 (tail!238 (tail!238 (tail!238 (tail!238 (front!51 q3!1))))) (reverse!5 (rear!53 q3!1)))))))

(declare-fun b!2248 () Bool)

(assert (=> b!2248 (= e!1307 (= (content!22 lt!593) (union (content!22 (tail!238 (tail!238 (tail!238 (front!51 q3!1))))) (content!22 (reverse!5 (rear!53 q3!1))))))))

(assert (= (and d!1564 c!744) b!2246))

(assert (= (and d!1564 (not c!744)) b!2247))

(assert (= (and d!1564 res!873) b!2248))

(declare-fun m!3221 () Bool)

(assert (=> d!1564 m!3221))

(assert (=> d!1564 m!2803))

(assert (=> d!1564 m!2341))

(assert (=> d!1564 m!2425))

(assert (=> b!2247 m!2341))

(declare-fun m!3223 () Bool)

(assert (=> b!2247 m!3223))

(declare-fun m!3225 () Bool)

(assert (=> b!2248 m!3225))

(assert (=> b!2248 m!2915))

(assert (=> b!2248 m!2341))

(assert (=> b!2248 m!2433))

(assert (=> b!1983 d!1564))

(assert (=> b!1930 d!1376))

(declare-fun d!1566 () Bool)

(declare-fun lt!594 () Int)

(assert (=> d!1566 (>= lt!594 0)))

(declare-fun e!1309 () Int)

(assert (=> d!1566 (= lt!594 e!1309)))

(declare-fun c!745 () Bool)

(assert (=> d!1566 (= c!745 (is-Nil!55 (tail!238 (tail!238 (front!51 lt!418)))))))

(assert (=> d!1566 (= (size!23 (tail!238 (tail!238 (front!51 lt!418)))) lt!594)))

(declare-fun b!2249 () Bool)

(assert (=> b!2249 (= e!1309 0)))

(declare-fun b!2250 () Bool)

(assert (=> b!2250 (= e!1309 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (front!51 lt!418)))))))))

(assert (= (and d!1566 c!745) b!2249))

(assert (= (and d!1566 (not c!745)) b!2250))

(declare-fun m!3227 () Bool)

(assert (=> b!2250 m!3227))

(assert (=> b!1926 d!1566))

(declare-fun d!1568 () Bool)

(declare-fun c!746 () Bool)

(assert (=> d!1568 (= c!746 (is-Nil!55 (tail!238 lt!442)))))

(declare-fun e!1310 () (Set (_ BitVec 32)))

(assert (=> d!1568 (= (content!22 (tail!238 lt!442)) e!1310)))

(declare-fun b!2251 () Bool)

(assert (=> b!2251 (= e!1310 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2252 () Bool)

(assert (=> b!2252 (= e!1310 (union (insert (head!226 (tail!238 lt!442)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 lt!442)))))))

(assert (= (and d!1568 c!746) b!2251))

(assert (= (and d!1568 (not c!746)) b!2252))

(declare-fun m!3229 () Bool)

(assert (=> b!2252 m!3229))

(declare-fun m!3231 () Bool)

(assert (=> b!2252 m!3231))

(assert (=> b!1909 d!1568))

(declare-fun d!1570 () Bool)

(declare-fun lt!595 () Int)

(assert (=> d!1570 (>= lt!595 0)))

(declare-fun e!1311 () Int)

(assert (=> d!1570 (= lt!595 e!1311)))

(declare-fun c!747 () Bool)

(assert (=> d!1570 (= c!747 (is-Nil!55 (tail!238 (tail!238 (tail!238 (rear!53 queue!73))))))))

(assert (=> d!1570 (= (size!23 (tail!238 (tail!238 (tail!238 (rear!53 queue!73))))) lt!595)))

(declare-fun b!2253 () Bool)

(assert (=> b!2253 (= e!1311 0)))

(declare-fun b!2254 () Bool)

(assert (=> b!2254 (= e!1311 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (tail!238 (rear!53 queue!73))))))))))

(assert (= (and d!1570 c!747) b!2253))

(assert (= (and d!1570 (not c!747)) b!2254))

(declare-fun m!3233 () Bool)

(assert (=> b!2254 m!3233))

(assert (=> b!2005 d!1570))

(assert (=> b!1936 d!1470))

(declare-fun d!1572 () Bool)

(declare-fun lt!596 () Int)

(assert (=> d!1572 (>= lt!596 0)))

(declare-fun e!1312 () Int)

(assert (=> d!1572 (= lt!596 e!1312)))

(declare-fun c!748 () Bool)

(assert (=> d!1572 (= c!748 (is-Nil!55 (tail!238 (tail!238 (front!51 q2!1)))))))

(assert (=> d!1572 (= (size!23 (tail!238 (tail!238 (front!51 q2!1)))) lt!596)))

(declare-fun b!2255 () Bool)

(assert (=> b!2255 (= e!1312 0)))

(declare-fun b!2256 () Bool)

(assert (=> b!2256 (= e!1312 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (front!51 q2!1)))))))))

(assert (= (and d!1572 c!748) b!2255))

(assert (= (and d!1572 (not c!748)) b!2256))

(declare-fun m!3235 () Bool)

(assert (=> b!2256 m!3235))

(assert (=> b!1855 d!1572))

(declare-fun d!1574 () Bool)

(declare-fun lt!597 () Int)

(assert (=> d!1574 (>= lt!597 0)))

(declare-fun e!1313 () Int)

(assert (=> d!1574 (= lt!597 e!1313)))

(declare-fun c!749 () Bool)

(assert (=> d!1574 (= c!749 (is-Nil!55 lt!492))))

(assert (=> d!1574 (= (size!23 lt!492) lt!597)))

(declare-fun b!2257 () Bool)

(assert (=> b!2257 (= e!1313 0)))

(declare-fun b!2258 () Bool)

(assert (=> b!2258 (= e!1313 (+ 1 (size!23 (tail!238 lt!492))))))

(assert (= (and d!1574 c!749) b!2257))

(assert (= (and d!1574 (not c!749)) b!2258))

(declare-fun m!3237 () Bool)

(assert (=> b!2258 m!3237))

(assert (=> d!1252 d!1574))

(assert (=> d!1252 d!1250))

(assert (=> d!1252 d!1222))

(declare-fun d!1576 () Bool)

(declare-fun lt!598 () Int)

(assert (=> d!1576 (>= lt!598 0)))

(declare-fun e!1314 () Int)

(assert (=> d!1576 (= lt!598 e!1314)))

(declare-fun c!750 () Bool)

(assert (=> d!1576 (= c!750 (is-Nil!55 (tail!238 (rear!53 lt!434))))))

(assert (=> d!1576 (= (size!23 (tail!238 (rear!53 lt!434))) lt!598)))

(declare-fun b!2259 () Bool)

(assert (=> b!2259 (= e!1314 0)))

(declare-fun b!2260 () Bool)

(assert (=> b!2260 (= e!1314 (+ 1 (size!23 (tail!238 (tail!238 (rear!53 lt!434))))))))

(assert (= (and d!1576 c!750) b!2259))

(assert (= (and d!1576 (not c!750)) b!2260))

(declare-fun m!3239 () Bool)

(assert (=> b!2260 m!3239))

(assert (=> b!2003 d!1576))

(declare-fun d!1578 () Bool)

(declare-fun lt!599 () Int)

(assert (=> d!1578 (>= lt!599 0)))

(declare-fun e!1315 () Int)

(assert (=> d!1578 (= lt!599 e!1315)))

(declare-fun c!751 () Bool)

(assert (=> d!1578 (= c!751 (is-Nil!55 (tail!238 (tail!238 (front!51 lt!421)))))))

(assert (=> d!1578 (= (size!23 (tail!238 (tail!238 (front!51 lt!421)))) lt!599)))

(declare-fun b!2261 () Bool)

(assert (=> b!2261 (= e!1315 0)))

(declare-fun b!2262 () Bool)

(assert (=> b!2262 (= e!1315 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (front!51 lt!421)))))))))

(assert (= (and d!1578 c!751) b!2261))

(assert (= (and d!1578 (not c!751)) b!2262))

(declare-fun m!3241 () Bool)

(assert (=> b!2262 m!3241))

(assert (=> b!1867 d!1578))

(declare-fun d!1580 () Bool)

(declare-fun c!752 () Bool)

(assert (=> d!1580 (= c!752 (is-Nil!55 (tail!238 lt!445)))))

(declare-fun e!1316 () (Set (_ BitVec 32)))

(assert (=> d!1580 (= (content!22 (tail!238 lt!445)) e!1316)))

(declare-fun b!2263 () Bool)

(assert (=> b!2263 (= e!1316 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2264 () Bool)

(assert (=> b!2264 (= e!1316 (union (insert (head!226 (tail!238 lt!445)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 lt!445)))))))

(assert (= (and d!1580 c!752) b!2263))

(assert (= (and d!1580 (not c!752)) b!2264))

(declare-fun m!3243 () Bool)

(assert (=> b!2264 m!3243))

(declare-fun m!3245 () Bool)

(assert (=> b!2264 m!3245))

(assert (=> b!1934 d!1580))

(declare-fun d!1582 () Bool)

(declare-fun lt!600 () Int)

(assert (=> d!1582 (>= lt!600 0)))

(declare-fun e!1317 () Int)

(assert (=> d!1582 (= lt!600 e!1317)))

(declare-fun c!753 () Bool)

(assert (=> d!1582 (= c!753 (is-Nil!55 lt!488))))

(assert (=> d!1582 (= (size!23 lt!488) lt!600)))

(declare-fun b!2265 () Bool)

(assert (=> b!2265 (= e!1317 0)))

(declare-fun b!2266 () Bool)

(assert (=> b!2266 (= e!1317 (+ 1 (size!23 (tail!238 lt!488))))))

(assert (= (and d!1582 c!753) b!2265))

(assert (= (and d!1582 (not c!753)) b!2266))

(declare-fun m!3247 () Bool)

(assert (=> b!2266 m!3247))

(assert (=> d!1240 d!1582))

(assert (=> d!1240 d!1212))

(assert (=> d!1240 d!1210))

(declare-fun d!1584 () Bool)

(declare-fun lt!601 () Int)

(assert (=> d!1584 (>= lt!601 0)))

(declare-fun e!1318 () Int)

(assert (=> d!1584 (= lt!601 e!1318)))

(declare-fun c!754 () Bool)

(assert (=> d!1584 (= c!754 (is-Nil!55 (tail!238 (tail!238 (front!51 q1!1)))))))

(assert (=> d!1584 (= (size!23 (tail!238 (tail!238 (front!51 q1!1)))) lt!601)))

(declare-fun b!2267 () Bool)

(assert (=> b!2267 (= e!1318 0)))

(declare-fun b!2268 () Bool)

(assert (=> b!2268 (= e!1318 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (front!51 q1!1)))))))))

(assert (= (and d!1584 c!754) b!2267))

(assert (= (and d!1584 (not c!754)) b!2268))

(declare-fun m!3249 () Bool)

(assert (=> b!2268 m!3249))

(assert (=> b!2009 d!1584))

(declare-fun d!1586 () Bool)

(declare-fun e!1319 () Bool)

(assert (=> d!1586 e!1319))

(declare-fun res!874 () Bool)

(assert (=> d!1586 (=> (not res!874) (not e!1319))))

(declare-fun lt!602 () List!54)

(assert (=> d!1586 (= res!874 (= (size!23 lt!602) (+ (size!23 (reverse!5 (tail!238 (tail!238 (rear!53 q4!1))))) (size!23 (Cons!54 (head!226 (tail!238 (rear!53 q4!1))) Nil!55)))))))

(declare-fun e!1320 () List!54)

(assert (=> d!1586 (= lt!602 e!1320)))

(declare-fun c!755 () Bool)

(assert (=> d!1586 (= c!755 (is-Nil!55 (reverse!5 (tail!238 (tail!238 (rear!53 q4!1))))))))

(assert (=> d!1586 (= (concat!2 (reverse!5 (tail!238 (tail!238 (rear!53 q4!1)))) (Cons!54 (head!226 (tail!238 (rear!53 q4!1))) Nil!55)) lt!602)))

(declare-fun b!2269 () Bool)

(assert (=> b!2269 (= e!1320 (Cons!54 (head!226 (tail!238 (rear!53 q4!1))) Nil!55))))

(declare-fun b!2270 () Bool)

(assert (=> b!2270 (= e!1320 (Cons!54 (head!226 (reverse!5 (tail!238 (tail!238 (rear!53 q4!1))))) (concat!2 (tail!238 (reverse!5 (tail!238 (tail!238 (rear!53 q4!1))))) (Cons!54 (head!226 (tail!238 (rear!53 q4!1))) Nil!55))))))

(declare-fun b!2271 () Bool)

(assert (=> b!2271 (= e!1319 (= (content!22 lt!602) (union (content!22 (reverse!5 (tail!238 (tail!238 (rear!53 q4!1))))) (content!22 (Cons!54 (head!226 (tail!238 (rear!53 q4!1))) Nil!55)))))))

(assert (= (and d!1586 c!755) b!2269))

(assert (= (and d!1586 (not c!755)) b!2270))

(assert (= (and d!1586 res!874) b!2271))

(declare-fun m!3251 () Bool)

(assert (=> d!1586 m!3251))

(assert (=> d!1586 m!2735))

(declare-fun m!3253 () Bool)

(assert (=> d!1586 m!3253))

(declare-fun m!3255 () Bool)

(assert (=> d!1586 m!3255))

(declare-fun m!3257 () Bool)

(assert (=> b!2270 m!3257))

(declare-fun m!3259 () Bool)

(assert (=> b!2271 m!3259))

(assert (=> b!2271 m!2735))

(declare-fun m!3261 () Bool)

(assert (=> b!2271 m!3261))

(declare-fun m!3263 () Bool)

(assert (=> b!2271 m!3263))

(assert (=> b!1965 d!1586))

(declare-fun d!1588 () Bool)

(declare-fun lt!603 () List!54)

(assert (=> d!1588 (= (content!22 lt!603) (content!22 (tail!238 (tail!238 (rear!53 q4!1)))))))

(declare-fun e!1321 () List!54)

(assert (=> d!1588 (= lt!603 e!1321)))

(declare-fun c!756 () Bool)

(assert (=> d!1588 (= c!756 (is-Nil!55 (tail!238 (tail!238 (rear!53 q4!1)))))))

(assert (=> d!1588 (= (reverse!5 (tail!238 (tail!238 (rear!53 q4!1)))) lt!603)))

(declare-fun b!2272 () Bool)

(assert (=> b!2272 (= e!1321 Nil!55)))

(declare-fun b!2273 () Bool)

(assert (=> b!2273 (= e!1321 (concat!2 (reverse!5 (tail!238 (tail!238 (tail!238 (rear!53 q4!1))))) (Cons!54 (head!226 (tail!238 (tail!238 (rear!53 q4!1)))) Nil!55)))))

(assert (= (and d!1588 c!756) b!2272))

(assert (= (and d!1588 (not c!756)) b!2273))

(declare-fun m!3265 () Bool)

(assert (=> d!1588 m!3265))

(assert (=> d!1588 m!2951))

(declare-fun m!3267 () Bool)

(assert (=> b!2273 m!3267))

(assert (=> b!2273 m!3267))

(declare-fun m!3269 () Bool)

(assert (=> b!2273 m!3269))

(assert (=> b!1965 d!1588))

(declare-fun d!1590 () Bool)

(declare-fun e!1322 () Bool)

(assert (=> d!1590 e!1322))

(declare-fun res!875 () Bool)

(assert (=> d!1590 (=> (not res!875) (not e!1322))))

(declare-fun lt!604 () List!54)

(assert (=> d!1590 (= res!875 (= (size!23 lt!604) (+ (size!23 (reverse!5 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))) (size!23 (Cons!54 (head!226 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))) Nil!55)))))))

(declare-fun e!1323 () List!54)

(assert (=> d!1590 (= lt!604 e!1323)))

(declare-fun c!757 () Bool)

(assert (=> d!1590 (= c!757 (is-Nil!55 (reverse!5 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))))))

(assert (=> d!1590 (= (concat!2 (reverse!5 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))) (Cons!54 (head!226 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))) Nil!55)) lt!604)))

(declare-fun b!2274 () Bool)

(assert (=> b!2274 (= e!1323 (Cons!54 (head!226 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))) Nil!55))))

(declare-fun b!2275 () Bool)

(assert (=> b!2275 (= e!1323 (Cons!54 (head!226 (reverse!5 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))) (concat!2 (tail!238 (reverse!5 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))) (Cons!54 (head!226 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))) Nil!55))))))

(declare-fun b!2276 () Bool)

(assert (=> b!2276 (= e!1322 (= (content!22 lt!604) (union (content!22 (reverse!5 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))) (content!22 (Cons!54 (head!226 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))) Nil!55)))))))

(assert (= (and d!1590 c!757) b!2274))

(assert (= (and d!1590 (not c!757)) b!2275))

(assert (= (and d!1590 res!875) b!2276))

(declare-fun m!3271 () Bool)

(assert (=> d!1590 m!3271))

(assert (=> d!1590 m!2713))

(declare-fun m!3273 () Bool)

(assert (=> d!1590 m!3273))

(declare-fun m!3275 () Bool)

(assert (=> d!1590 m!3275))

(declare-fun m!3277 () Bool)

(assert (=> b!2275 m!3277))

(declare-fun m!3279 () Bool)

(assert (=> b!2276 m!3279))

(assert (=> b!2276 m!2713))

(declare-fun m!3281 () Bool)

(assert (=> b!2276 m!3281))

(declare-fun m!3283 () Bool)

(assert (=> b!2276 m!3283))

(assert (=> b!1958 d!1590))

(declare-fun d!1592 () Bool)

(declare-fun lt!605 () List!54)

(assert (=> d!1592 (= (content!22 lt!605) (content!22 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))))))

(declare-fun e!1324 () List!54)

(assert (=> d!1592 (= lt!605 e!1324)))

(declare-fun c!758 () Bool)

(assert (=> d!1592 (= c!758 (is-Nil!55 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))))))

(assert (=> d!1592 (= (reverse!5 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))) lt!605)))

(declare-fun b!2277 () Bool)

(assert (=> b!2277 (= e!1324 Nil!55)))

(declare-fun b!2278 () Bool)

(assert (=> b!2278 (= e!1324 (concat!2 (reverse!5 (tail!238 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1)))))) (Cons!54 (head!226 (tail!238 (tail!238 (Cons!54 e2!3 (rear!53 q1!1))))) Nil!55)))))

(assert (= (and d!1592 c!758) b!2277))

(assert (= (and d!1592 (not c!758)) b!2278))

(declare-fun m!3285 () Bool)

(assert (=> d!1592 m!3285))

(assert (=> d!1592 m!3011))

(declare-fun m!3287 () Bool)

(assert (=> b!2278 m!3287))

(assert (=> b!2278 m!3287))

(declare-fun m!3289 () Bool)

(assert (=> b!2278 m!3289))

(assert (=> b!1958 d!1592))

(declare-fun d!1594 () Bool)

(declare-fun c!759 () Bool)

(assert (=> d!1594 (= c!759 (is-Nil!55 lt!490))))

(declare-fun e!1325 () (Set (_ BitVec 32)))

(assert (=> d!1594 (= (content!22 lt!490) e!1325)))

(declare-fun b!2279 () Bool)

(assert (=> b!2279 (= e!1325 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2280 () Bool)

(assert (=> b!2280 (= e!1325 (union (insert (head!226 lt!490) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!490))))))

(assert (= (and d!1594 c!759) b!2279))

(assert (= (and d!1594 (not c!759)) b!2280))

(declare-fun m!3291 () Bool)

(assert (=> b!2280 m!3291))

(declare-fun m!3293 () Bool)

(assert (=> b!2280 m!3293))

(assert (=> d!1244 d!1594))

(assert (=> d!1244 d!1478))

(declare-fun d!1596 () Bool)

(declare-fun c!760 () Bool)

(assert (=> d!1596 (= c!760 (is-Nil!55 (tail!238 lt!462)))))

(declare-fun e!1326 () (Set (_ BitVec 32)))

(assert (=> d!1596 (= (content!22 (tail!238 lt!462)) e!1326)))

(declare-fun b!2281 () Bool)

(assert (=> b!2281 (= e!1326 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2282 () Bool)

(assert (=> b!2282 (= e!1326 (union (insert (head!226 (tail!238 lt!462)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 lt!462)))))))

(assert (= (and d!1596 c!760) b!2281))

(assert (= (and d!1596 (not c!760)) b!2282))

(declare-fun m!3295 () Bool)

(assert (=> b!2282 m!3295))

(declare-fun m!3297 () Bool)

(assert (=> b!2282 m!3297))

(assert (=> b!1928 d!1596))

(declare-fun d!1598 () Bool)

(declare-fun lt!606 () Int)

(assert (=> d!1598 (>= lt!606 0)))

(declare-fun e!1327 () Int)

(assert (=> d!1598 (= lt!606 e!1327)))

(declare-fun c!761 () Bool)

(assert (=> d!1598 (= c!761 (is-Nil!55 lt!489))))

(assert (=> d!1598 (= (size!23 lt!489) lt!606)))

(declare-fun b!2283 () Bool)

(assert (=> b!2283 (= e!1327 0)))

(declare-fun b!2284 () Bool)

(assert (=> b!2284 (= e!1327 (+ 1 (size!23 (tail!238 lt!489))))))

(assert (= (and d!1598 c!761) b!2283))

(assert (= (and d!1598 (not c!761)) b!2284))

(declare-fun m!3299 () Bool)

(assert (=> b!2284 m!3299))

(assert (=> d!1242 d!1598))

(declare-fun d!1600 () Bool)

(declare-fun lt!607 () Int)

(assert (=> d!1600 (>= lt!607 0)))

(declare-fun e!1328 () Int)

(assert (=> d!1600 (= lt!607 e!1328)))

(declare-fun c!762 () Bool)

(assert (=> d!1600 (= c!762 (is-Nil!55 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))))))

(assert (=> d!1600 (= (size!23 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))) lt!607)))

(declare-fun b!2285 () Bool)

(assert (=> b!2285 (= e!1328 0)))

(declare-fun b!2286 () Bool)

(assert (=> b!2286 (= e!1328 (+ 1 (size!23 (tail!238 (reverse!5 (tail!238 (Cons!54 e3!1 (rear!53 q2!1))))))))))

(assert (= (and d!1600 c!762) b!2285))

(assert (= (and d!1600 (not c!762)) b!2286))

(assert (=> b!2286 m!3059))

(assert (=> d!1242 d!1600))

(declare-fun d!1602 () Bool)

(declare-fun lt!608 () Int)

(assert (=> d!1602 (>= lt!608 0)))

(declare-fun e!1329 () Int)

(assert (=> d!1602 (= lt!608 e!1329)))

(declare-fun c!763 () Bool)

(assert (=> d!1602 (= c!763 (is-Nil!55 (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55)))))

(assert (=> d!1602 (= (size!23 (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55)) lt!608)))

(declare-fun b!2287 () Bool)

(assert (=> b!2287 (= e!1329 0)))

(declare-fun b!2288 () Bool)

(assert (=> b!2288 (= e!1329 (+ 1 (size!23 (tail!238 (Cons!54 (head!226 (Cons!54 e3!1 (rear!53 q2!1))) Nil!55)))))))

(assert (= (and d!1602 c!763) b!2287))

(assert (= (and d!1602 (not c!763)) b!2288))

(declare-fun m!3301 () Bool)

(assert (=> b!2288 m!3301))

(assert (=> d!1242 d!1602))

(declare-fun d!1604 () Bool)

(declare-fun c!764 () Bool)

(assert (=> d!1604 (= c!764 (is-Nil!55 lt!506))))

(declare-fun e!1330 () (Set (_ BitVec 32)))

(assert (=> d!1604 (= (content!22 lt!506) e!1330)))

(declare-fun b!2289 () Bool)

(assert (=> b!2289 (= e!1330 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2290 () Bool)

(assert (=> b!2290 (= e!1330 (union (insert (head!226 lt!506) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 lt!506))))))

(assert (= (and d!1604 c!764) b!2289))

(assert (= (and d!1604 (not c!764)) b!2290))

(declare-fun m!3303 () Bool)

(assert (=> b!2290 m!3303))

(declare-fun m!3305 () Bool)

(assert (=> b!2290 m!3305))

(assert (=> b!1963 d!1604))

(declare-fun d!1606 () Bool)

(declare-fun c!765 () Bool)

(assert (=> d!1606 (= c!765 (is-Nil!55 (reverse!5 (tail!238 (rear!53 q4!1)))))))

(declare-fun e!1331 () (Set (_ BitVec 32)))

(assert (=> d!1606 (= (content!22 (reverse!5 (tail!238 (rear!53 q4!1)))) e!1331)))

(declare-fun b!2291 () Bool)

(assert (=> b!2291 (= e!1331 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2292 () Bool)

(assert (=> b!2292 (= e!1331 (union (insert (head!226 (reverse!5 (tail!238 (rear!53 q4!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (reverse!5 (tail!238 (rear!53 q4!1)))))))))

(assert (= (and d!1606 c!765) b!2291))

(assert (= (and d!1606 (not c!765)) b!2292))

(declare-fun m!3307 () Bool)

(assert (=> b!2292 m!3307))

(assert (=> b!2292 m!3137))

(assert (=> b!1963 d!1606))

(declare-fun d!1608 () Bool)

(declare-fun c!766 () Bool)

(assert (=> d!1608 (= c!766 (is-Nil!55 (Cons!54 (head!226 (rear!53 q4!1)) Nil!55)))))

(declare-fun e!1332 () (Set (_ BitVec 32)))

(assert (=> d!1608 (= (content!22 (Cons!54 (head!226 (rear!53 q4!1)) Nil!55)) e!1332)))

(declare-fun b!2293 () Bool)

(assert (=> b!2293 (= e!1332 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2294 () Bool)

(assert (=> b!2294 (= e!1332 (union (insert (head!226 (Cons!54 (head!226 (rear!53 q4!1)) Nil!55)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (Cons!54 (head!226 (rear!53 q4!1)) Nil!55)))))))

(assert (= (and d!1608 c!766) b!2293))

(assert (= (and d!1608 (not c!766)) b!2294))

(declare-fun m!3309 () Bool)

(assert (=> b!2294 m!3309))

(declare-fun m!3311 () Bool)

(assert (=> b!2294 m!3311))

(assert (=> b!1963 d!1608))

(declare-fun d!1610 () Bool)

(declare-fun c!767 () Bool)

(assert (=> d!1610 (= c!767 (is-Nil!55 (tail!238 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56))))))))

(declare-fun e!1333 () (Set (_ BitVec 32)))

(assert (=> d!1610 (= (content!22 (tail!238 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56))))) e!1333)))

(declare-fun b!2295 () Bool)

(assert (=> b!2295 (= e!1333 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2296 () Bool)

(assert (=> b!2296 (= e!1333 (union (insert (head!226 (tail!238 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56))))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!238 (tail!238 (reverse!5 (Cons!54 e1!2 (rear!53 queue!56))))))))))

(assert (= (and d!1610 c!767) b!2295))

(assert (= (and d!1610 (not c!767)) b!2296))

(declare-fun m!3313 () Bool)

(assert (=> b!2296 m!3313))

(declare-fun m!3315 () Bool)

(assert (=> b!2296 m!3315))

(assert (=> b!2017 d!1610))

(declare-fun d!1612 () Bool)

(declare-fun lt!609 () Int)

(assert (=> d!1612 (>= lt!609 0)))

(declare-fun e!1334 () Int)

(assert (=> d!1612 (= lt!609 e!1334)))

(declare-fun c!768 () Bool)

(assert (=> d!1612 (= c!768 (is-Nil!55 (tail!238 (tail!238 (tail!238 (front!51 q3!1))))))))

(assert (=> d!1612 (= (size!23 (tail!238 (tail!238 (tail!238 (front!51 q3!1))))) lt!609)))

(declare-fun b!2297 () Bool)

(assert (=> b!2297 (= e!1334 0)))

(declare-fun b!2298 () Bool)

(assert (=> b!2298 (= e!1334 (+ 1 (size!23 (tail!238 (tail!238 (tail!238 (tail!238 (front!51 q3!1))))))))))

(assert (= (and d!1612 c!768) b!2297))

(assert (= (and d!1612 (not c!768)) b!2298))

(declare-fun m!3317 () Bool)

(assert (=> b!2298 m!3317))

(assert (=> b!1995 d!1612))

(declare-fun d!1614 () Bool)

(declare-fun lt!610 () Int)

(assert (=> d!1614 (>= lt!610 0)))

(declare-fun e!1335 () Int)

(assert (=> d!1614 (= lt!610 e!1335)))

(declare-fun c!769 () Bool)

(assert (=> d!1614 (= c!769 (is-Nil!55 (tail!238 (reverse!5 (rear!53 q4!1)))))))

(assert (=> d!1614 (= (size!23 (tail!238 (reverse!5 (rear!53 q4!1)))) lt!610)))

(declare-fun b!2299 () Bool)

(assert (=> b!2299 (= e!1335 0)))

(declare-fun b!2300 () Bool)

(assert (=> b!2300 (= e!1335 (+ 1 (size!23 (tail!238 (tail!238 (reverse!5 (rear!53 q4!1)))))))))

(assert (= (and d!1614 c!769) b!2299))

(assert (= (and d!1614 (not c!769)) b!2300))

(declare-fun m!3319 () Bool)

(assert (=> b!2300 m!3319))

(assert (=> b!1883 d!1614))

(declare-fun d!1616 () Bool)

(declare-fun lt!611 () Int)

(assert (=> d!1616 (>= lt!611 0)))

(declare-fun e!1336 () Int)

(assert (=> d!1616 (= lt!611 e!1336)))

(declare-fun c!770 () Bool)

(assert (=> d!1616 (= c!770 (is-Nil!55 lt!501))))

(assert (=> d!1616 (= (size!23 lt!501) lt!611)))

(declare-fun b!2301 () Bool)

(assert (=> b!2301 (= e!1336 0)))

(declare-fun b!2302 () Bool)

(assert (=> b!2302 (= e!1336 (+ 1 (size!23 (tail!238 lt!501))))))

(assert (= (and d!1616 c!770) b!2301))

(assert (= (and d!1616 (not c!770)) b!2302))

(declare-fun m!3321 () Bool)

(assert (=> b!2302 m!3321))

(assert (=> d!1280 d!1616))

(assert (=> d!1280 d!1194))

(assert (=> d!1280 d!1328))

(push 1)

(assert (not b!2141))

(assert (not b!2286))

(assert (not b!2256))

(assert (not b!2149))

(assert (not d!1506))

(assert (not b!2208))

(assert (not b!2029))

(assert (not b!2226))

(assert (not b!2216))

(assert (not b!2108))

(assert (not b!2092))

(assert (not b!2275))

(assert (not b!2260))

(assert (not b!2044))

(assert (not b!2054))

(assert (not b!2027))

(assert (not b!2033))

(assert (not b!2155))

(assert (not b!2220))

(assert (not d!1364))

(assert (not b!2273))

(assert (not b!2214))

(assert (not b!2252))

(assert (not b!2181))

(assert (not b!2114))

(assert (not b!2152))

(assert (not d!1474))

(assert (not b!2243))

(assert (not b!2104))

(assert (not b!2164))

(assert (not b!2120))

(assert (not b!2224))

(assert (not b!2116))

(assert (not d!1556))

(assert (not b!2046))

(assert (not b!2288))

(assert (not b!2069))

(assert (not d!1496))

(assert (not b!2085))

(assert (not b!2145))

(assert (not b!2271))

(assert (not b!2254))

(assert (not b!2282))

(assert (not b!2250))

(assert (not b!2168))

(assert (not b!2276))

(assert (not b!2100))

(assert (not b!2204))

(assert (not b!2075))

(assert (not b!2098))

(assert (not b!2136))

(assert (not b!2270))

(assert (not b!2188))

(assert (not b!2284))

(assert (not b!2106))

(assert (not b!2294))

(assert (not b!2166))

(assert (not b!2266))

(assert (not d!1454))

(assert (not b!2134))

(assert (not b!2038))

(assert (not b!2292))

(assert (not b!2222))

(assert (not b!2110))

(assert (not b!2228))

(assert (not b!2094))

(assert (not d!1416))

(assert (not d!1482))

(assert (not b!2048))

(assert (not b!2143))

(assert (not b!2236))

(assert (not b!2050))

(assert (not b!2202))

(assert (not b!2230))

(assert (not b!2073))

(assert (not b!2150))

(assert (not b!2192))

(assert (not b!2210))

(assert (not b!2159))

(assert (not b!2268))

(assert (not b!2118))

(assert (not b!2035))

(assert (not b!2102))

(assert (not b!2025))

(assert (not b!2083))

(assert (not b!2218))

(assert (not b!2264))

(assert (not d!1586))

(assert (not b!2212))

(assert (not b!2162))

(assert (not b!2258))

(assert (not b!2040))

(assert (not b!2241))

(assert (not b!2262))

(assert (not b!2248))

(assert (not d!1472))

(assert (not b!2126))

(assert (not b!2061))

(assert (not b!2161))

(assert (not b!2298))

(assert (not b!2245))

(assert (not b!2124))

(assert (not b!2247))

(assert (not b!2280))

(assert (not d!1588))

(assert (not b!2290))

(assert (not b!2147))

(assert (not b!2122))

(assert (not b!2067))

(assert (not b!2185))

(assert (not b!2183))

(assert (not b!2170))

(assert (not b!2112))

(assert (not b!2052))

(assert (not b!2042))

(assert (not d!1384))

(assert (not b!2296))

(assert (not b!2079))

(assert (not b!2071))

(assert (not b!2077))

(assert (not b!2175))

(assert (not d!1564))

(assert (not b!2232))

(assert (not b!2174))

(assert (not b!2087))

(assert (not b!2239))

(assert (not b!2177))

(assert (not b!2194))

(assert (not b!2137))

(assert (not b!2278))

(assert (not b!2198))

(assert (not b!2187))

(assert (not d!1456))

(assert (not b!2139))

(assert (not d!1592))

(assert (not b!2153))

(assert (not b!2063))

(assert (not b!2096))

(assert (not b!2200))

(assert (not b!2238))

(assert (not b!2057))

(assert (not b!2157))

(assert (not d!1366))

(assert (not b!2081))

(assert (not b!2131))

(assert (not b!2206))

(assert (not b!2300))

(assert (not b!2031))

(assert (not d!1590))

(assert (not d!1460))

(assert (not d!1558))

(assert (not b!2196))

(assert (not b!2089))

(assert (not b!2129))

(assert (not b!2132))

(assert (not b!2065))

(assert (not b!2179))

(assert (not b!2128))

(assert (not b!2036))

(assert (not b!2190))

(assert (not b!2090))

(assert (not b!2056))

(assert (not b!2059))

(assert (not b!2302))

(assert (not b!2172))

(assert (not d!1494))

(assert (not b!2234))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

