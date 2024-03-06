; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!548 () Bool)

(assert start!548)

(declare-fun res!1243 () Bool)

(declare-fun e!2289 () Bool)

(assert (=> start!548 (=> (not res!1243) (not e!2289))))

(declare-datatypes () ((List!80 (Cons!80 (head!252 (_ BitVec 32)) (tail!264 List!80)) (Nil!81))))

(declare-fun l!318 () List!80)

(assert (=> start!548 (= res!1243 (not (is-Nil!81 l!318)))))

(assert (=> start!548 e!2289))

(assert (=> start!548 true))

(declare-fun b!4109 () Bool)

(declare-fun res!1244 () Bool)

(assert (=> b!4109 (=> (not res!1244) (not e!2289))))

(declare-fun x$2!76 () List!80)

(declare-fun concat!2 (List!80 List!80) List!80)

(declare-fun reverse!5 (List!80) List!80)

(assert (=> b!4109 (= res!1244 (= x$2!76 (concat!2 (reverse!5 (tail!264 l!318)) (Cons!80 (head!252 l!318) Nil!81))))))

(declare-fun b!4110 () Bool)

(declare-fun content!22 (List!80) (Set (_ BitVec 32)))

(assert (=> b!4110 (= e!2289 (not (= (content!22 x$2!76) (content!22 l!318))))))

(assert (= (and start!548 res!1243) b!4109))

(assert (= (and b!4109 res!1244) b!4110))

(declare-fun m!6467 () Bool)

(assert (=> b!4109 m!6467))

(assert (=> b!4109 m!6467))

(declare-fun m!6469 () Bool)

(assert (=> b!4109 m!6469))

(declare-fun m!6471 () Bool)

(assert (=> b!4110 m!6471))

(declare-fun m!6473 () Bool)

(assert (=> b!4110 m!6473))

(push 1)

(assert (not b!4110))

(assert (not b!4109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2966 () Bool)

(declare-fun c!1502 () Bool)

(assert (=> d!2966 (= c!1502 (is-Nil!81 x$2!76))))

(declare-fun e!2292 () (Set (_ BitVec 32)))

(assert (=> d!2966 (= (content!22 x$2!76) e!2292)))

(declare-fun b!4115 () Bool)

(assert (=> b!4115 (= e!2292 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4116 () Bool)

(assert (=> b!4116 (= e!2292 (union (insert (head!252 x$2!76) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 x$2!76))))))

(assert (= (and d!2966 c!1502) b!4115))

(assert (= (and d!2966 (not c!1502)) b!4116))

(declare-fun m!6475 () Bool)

(assert (=> b!4116 m!6475))

(declare-fun m!6477 () Bool)

(assert (=> b!4116 m!6477))

(assert (=> b!4110 d!2966))

(declare-fun d!2968 () Bool)

(declare-fun c!1503 () Bool)

(assert (=> d!2968 (= c!1503 (is-Nil!81 l!318))))

(declare-fun e!2293 () (Set (_ BitVec 32)))

(assert (=> d!2968 (= (content!22 l!318) e!2293)))

(declare-fun b!4117 () Bool)

(assert (=> b!4117 (= e!2293 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4118 () Bool)

(assert (=> b!4118 (= e!2293 (union (insert (head!252 l!318) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 l!318))))))

(assert (= (and d!2968 c!1503) b!4117))

(assert (= (and d!2968 (not c!1503)) b!4118))

(declare-fun m!6479 () Bool)

(assert (=> b!4118 m!6479))

(declare-fun m!6481 () Bool)

(assert (=> b!4118 m!6481))

(assert (=> b!4110 d!2968))

(declare-fun d!2970 () Bool)

(declare-fun e!2298 () Bool)

(assert (=> d!2970 e!2298))

(declare-fun res!1248 () Bool)

(assert (=> d!2970 (=> (not res!1248) (not e!2298))))

(declare-fun lt!1172 () List!80)

(declare-fun size!23 (List!80) Int)

(assert (=> d!2970 (= res!1248 (= (size!23 lt!1172) (+ (size!23 (reverse!5 (tail!264 l!318))) (size!23 (Cons!80 (head!252 l!318) Nil!81)))))))

(declare-fun e!2299 () List!80)

(assert (=> d!2970 (= lt!1172 e!2299)))

(declare-fun c!1506 () Bool)

(assert (=> d!2970 (= c!1506 (is-Nil!81 (reverse!5 (tail!264 l!318))))))

(assert (=> d!2970 (= (concat!2 (reverse!5 (tail!264 l!318)) (Cons!80 (head!252 l!318) Nil!81)) lt!1172)))

(declare-fun b!4125 () Bool)

(assert (=> b!4125 (= e!2299 (Cons!80 (head!252 l!318) Nil!81))))

(declare-fun b!4126 () Bool)

(assert (=> b!4126 (= e!2299 (Cons!80 (head!252 (reverse!5 (tail!264 l!318))) (concat!2 (tail!264 (reverse!5 (tail!264 l!318))) (Cons!80 (head!252 l!318) Nil!81))))))

(declare-fun b!4127 () Bool)

(assert (=> b!4127 (= e!2298 (= (content!22 lt!1172) (union (content!22 (reverse!5 (tail!264 l!318))) (content!22 (Cons!80 (head!252 l!318) Nil!81)))))))

(assert (= (and d!2970 c!1506) b!4125))

(assert (= (and d!2970 (not c!1506)) b!4126))

(assert (= (and d!2970 res!1248) b!4127))

(declare-fun m!6483 () Bool)

(assert (=> d!2970 m!6483))

(assert (=> d!2970 m!6467))

(declare-fun m!6485 () Bool)

(assert (=> d!2970 m!6485))

(declare-fun m!6487 () Bool)

(assert (=> d!2970 m!6487))

(declare-fun m!6489 () Bool)

(assert (=> b!4126 m!6489))

(declare-fun m!6491 () Bool)

(assert (=> b!4127 m!6491))

(assert (=> b!4127 m!6467))

(declare-fun m!6493 () Bool)

(assert (=> b!4127 m!6493))

(declare-fun m!6495 () Bool)

(assert (=> b!4127 m!6495))

(assert (=> b!4109 d!2970))

(declare-fun d!2972 () Bool)

(declare-fun lt!1175 () List!80)

(assert (=> d!2972 (= (content!22 lt!1175) (content!22 (tail!264 l!318)))))

(declare-fun e!2302 () List!80)

(assert (=> d!2972 (= lt!1175 e!2302)))

(declare-fun c!1509 () Bool)

(assert (=> d!2972 (= c!1509 (is-Nil!81 (tail!264 l!318)))))

(assert (=> d!2972 (= (reverse!5 (tail!264 l!318)) lt!1175)))

(declare-fun b!4132 () Bool)

(assert (=> b!4132 (= e!2302 Nil!81)))

(declare-fun b!4133 () Bool)

(assert (=> b!4133 (= e!2302 (concat!2 (reverse!5 (tail!264 (tail!264 l!318))) (Cons!80 (head!252 (tail!264 l!318)) Nil!81)))))

(assert (= (and d!2972 c!1509) b!4132))

(assert (= (and d!2972 (not c!1509)) b!4133))

(declare-fun m!6497 () Bool)

(assert (=> d!2972 m!6497))

(assert (=> d!2972 m!6481))

(declare-fun m!6499 () Bool)

(assert (=> b!4133 m!6499))

(assert (=> b!4133 m!6499))

(declare-fun m!6501 () Bool)

(assert (=> b!4133 m!6501))

(assert (=> b!4109 d!2972))

(push 1)

(assert (not b!4118))

(assert (not b!4127))

(assert (not b!4126))

(assert (not d!2970))

(assert (not b!4133))

(assert (not d!2972))

(assert (not b!4116))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2974 () Bool)

(declare-fun c!1510 () Bool)

(assert (=> d!2974 (= c!1510 (is-Nil!81 (tail!264 x$2!76)))))

(declare-fun e!2303 () (Set (_ BitVec 32)))

(assert (=> d!2974 (= (content!22 (tail!264 x$2!76)) e!2303)))

(declare-fun b!4134 () Bool)

(assert (=> b!4134 (= e!2303 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4135 () Bool)

(assert (=> b!4135 (= e!2303 (union (insert (head!252 (tail!264 x$2!76)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 (tail!264 x$2!76)))))))

(assert (= (and d!2974 c!1510) b!4134))

(assert (= (and d!2974 (not c!1510)) b!4135))

(declare-fun m!6503 () Bool)

(assert (=> b!4135 m!6503))

(declare-fun m!6505 () Bool)

(assert (=> b!4135 m!6505))

(assert (=> b!4116 d!2974))

(declare-fun d!2976 () Bool)

(declare-fun c!1511 () Bool)

(assert (=> d!2976 (= c!1511 (is-Nil!81 lt!1172))))

(declare-fun e!2304 () (Set (_ BitVec 32)))

(assert (=> d!2976 (= (content!22 lt!1172) e!2304)))

(declare-fun b!4136 () Bool)

(assert (=> b!4136 (= e!2304 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4137 () Bool)

(assert (=> b!4137 (= e!2304 (union (insert (head!252 lt!1172) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 lt!1172))))))

(assert (= (and d!2976 c!1511) b!4136))

(assert (= (and d!2976 (not c!1511)) b!4137))

(declare-fun m!6507 () Bool)

(assert (=> b!4137 m!6507))

(declare-fun m!6509 () Bool)

(assert (=> b!4137 m!6509))

(assert (=> b!4127 d!2976))

(declare-fun d!2978 () Bool)

(declare-fun c!1512 () Bool)

(assert (=> d!2978 (= c!1512 (is-Nil!81 (reverse!5 (tail!264 l!318))))))

(declare-fun e!2305 () (Set (_ BitVec 32)))

(assert (=> d!2978 (= (content!22 (reverse!5 (tail!264 l!318))) e!2305)))

(declare-fun b!4138 () Bool)

(assert (=> b!4138 (= e!2305 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4139 () Bool)

(assert (=> b!4139 (= e!2305 (union (insert (head!252 (reverse!5 (tail!264 l!318))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 (reverse!5 (tail!264 l!318))))))))

(assert (= (and d!2978 c!1512) b!4138))

(assert (= (and d!2978 (not c!1512)) b!4139))

(declare-fun m!6511 () Bool)

(assert (=> b!4139 m!6511))

(declare-fun m!6513 () Bool)

(assert (=> b!4139 m!6513))

(assert (=> b!4127 d!2978))

(declare-fun d!2980 () Bool)

(declare-fun c!1513 () Bool)

(assert (=> d!2980 (= c!1513 (is-Nil!81 (Cons!80 (head!252 l!318) Nil!81)))))

(declare-fun e!2306 () (Set (_ BitVec 32)))

(assert (=> d!2980 (= (content!22 (Cons!80 (head!252 l!318) Nil!81)) e!2306)))

(declare-fun b!4140 () Bool)

(assert (=> b!4140 (= e!2306 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4141 () Bool)

(assert (=> b!4141 (= e!2306 (union (insert (head!252 (Cons!80 (head!252 l!318) Nil!81)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 (Cons!80 (head!252 l!318) Nil!81)))))))

(assert (= (and d!2980 c!1513) b!4140))

(assert (= (and d!2980 (not c!1513)) b!4141))

(declare-fun m!6515 () Bool)

(assert (=> b!4141 m!6515))

(declare-fun m!6517 () Bool)

(assert (=> b!4141 m!6517))

(assert (=> b!4127 d!2980))

(declare-fun d!2982 () Bool)

(declare-fun c!1514 () Bool)

(assert (=> d!2982 (= c!1514 (is-Nil!81 (tail!264 l!318)))))

(declare-fun e!2307 () (Set (_ BitVec 32)))

(assert (=> d!2982 (= (content!22 (tail!264 l!318)) e!2307)))

(declare-fun b!4142 () Bool)

(assert (=> b!4142 (= e!2307 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4143 () Bool)

(assert (=> b!4143 (= e!2307 (union (insert (head!252 (tail!264 l!318)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 (tail!264 l!318)))))))

(assert (= (and d!2982 c!1514) b!4142))

(assert (= (and d!2982 (not c!1514)) b!4143))

(declare-fun m!6519 () Bool)

(assert (=> b!4143 m!6519))

(declare-fun m!6521 () Bool)

(assert (=> b!4143 m!6521))

(assert (=> b!4118 d!2982))

(declare-fun d!2984 () Bool)

(declare-fun e!2308 () Bool)

(assert (=> d!2984 e!2308))

(declare-fun res!1249 () Bool)

(assert (=> d!2984 (=> (not res!1249) (not e!2308))))

(declare-fun lt!1176 () List!80)

(assert (=> d!2984 (= res!1249 (= (size!23 lt!1176) (+ (size!23 (reverse!5 (tail!264 (tail!264 l!318)))) (size!23 (Cons!80 (head!252 (tail!264 l!318)) Nil!81)))))))

(declare-fun e!2309 () List!80)

(assert (=> d!2984 (= lt!1176 e!2309)))

(declare-fun c!1515 () Bool)

(assert (=> d!2984 (= c!1515 (is-Nil!81 (reverse!5 (tail!264 (tail!264 l!318)))))))

(assert (=> d!2984 (= (concat!2 (reverse!5 (tail!264 (tail!264 l!318))) (Cons!80 (head!252 (tail!264 l!318)) Nil!81)) lt!1176)))

(declare-fun b!4144 () Bool)

(assert (=> b!4144 (= e!2309 (Cons!80 (head!252 (tail!264 l!318)) Nil!81))))

(declare-fun b!4145 () Bool)

(assert (=> b!4145 (= e!2309 (Cons!80 (head!252 (reverse!5 (tail!264 (tail!264 l!318)))) (concat!2 (tail!264 (reverse!5 (tail!264 (tail!264 l!318)))) (Cons!80 (head!252 (tail!264 l!318)) Nil!81))))))

(declare-fun b!4146 () Bool)

(assert (=> b!4146 (= e!2308 (= (content!22 lt!1176) (union (content!22 (reverse!5 (tail!264 (tail!264 l!318)))) (content!22 (Cons!80 (head!252 (tail!264 l!318)) Nil!81)))))))

(assert (= (and d!2984 c!1515) b!4144))

(assert (= (and d!2984 (not c!1515)) b!4145))

(assert (= (and d!2984 res!1249) b!4146))

(declare-fun m!6523 () Bool)

(assert (=> d!2984 m!6523))

(assert (=> d!2984 m!6499))

(declare-fun m!6525 () Bool)

(assert (=> d!2984 m!6525))

(declare-fun m!6527 () Bool)

(assert (=> d!2984 m!6527))

(declare-fun m!6529 () Bool)

(assert (=> b!4145 m!6529))

(declare-fun m!6531 () Bool)

(assert (=> b!4146 m!6531))

(assert (=> b!4146 m!6499))

(declare-fun m!6533 () Bool)

(assert (=> b!4146 m!6533))

(declare-fun m!6535 () Bool)

(assert (=> b!4146 m!6535))

(assert (=> b!4133 d!2984))

(declare-fun d!2986 () Bool)

(declare-fun lt!1177 () List!80)

(assert (=> d!2986 (= (content!22 lt!1177) (content!22 (tail!264 (tail!264 l!318))))))

(declare-fun e!2310 () List!80)

(assert (=> d!2986 (= lt!1177 e!2310)))

(declare-fun c!1516 () Bool)

(assert (=> d!2986 (= c!1516 (is-Nil!81 (tail!264 (tail!264 l!318))))))

(assert (=> d!2986 (= (reverse!5 (tail!264 (tail!264 l!318))) lt!1177)))

(declare-fun b!4147 () Bool)

(assert (=> b!4147 (= e!2310 Nil!81)))

(declare-fun b!4148 () Bool)

(assert (=> b!4148 (= e!2310 (concat!2 (reverse!5 (tail!264 (tail!264 (tail!264 l!318)))) (Cons!80 (head!252 (tail!264 (tail!264 l!318))) Nil!81)))))

(assert (= (and d!2986 c!1516) b!4147))

(assert (= (and d!2986 (not c!1516)) b!4148))

(declare-fun m!6537 () Bool)

(assert (=> d!2986 m!6537))

(assert (=> d!2986 m!6521))

(declare-fun m!6539 () Bool)

(assert (=> b!4148 m!6539))

(assert (=> b!4148 m!6539))

(declare-fun m!6541 () Bool)

(assert (=> b!4148 m!6541))

(assert (=> b!4133 d!2986))

(declare-fun d!2988 () Bool)

(declare-fun lt!1180 () Int)

(assert (=> d!2988 (>= lt!1180 0)))

(declare-fun e!2313 () Int)

(assert (=> d!2988 (= lt!1180 e!2313)))

(declare-fun c!1519 () Bool)

(assert (=> d!2988 (= c!1519 (is-Nil!81 lt!1172))))

(assert (=> d!2988 (= (size!23 lt!1172) lt!1180)))

(declare-fun b!4153 () Bool)

(assert (=> b!4153 (= e!2313 0)))

(declare-fun b!4154 () Bool)

(assert (=> b!4154 (= e!2313 (+ 1 (size!23 (tail!264 lt!1172))))))

(assert (= (and d!2988 c!1519) b!4153))

(assert (= (and d!2988 (not c!1519)) b!4154))

(declare-fun m!6543 () Bool)

(assert (=> b!4154 m!6543))

(assert (=> d!2970 d!2988))

(declare-fun d!2990 () Bool)

(declare-fun lt!1181 () Int)

(assert (=> d!2990 (>= lt!1181 0)))

(declare-fun e!2314 () Int)

(assert (=> d!2990 (= lt!1181 e!2314)))

(declare-fun c!1520 () Bool)

(assert (=> d!2990 (= c!1520 (is-Nil!81 (reverse!5 (tail!264 l!318))))))

(assert (=> d!2990 (= (size!23 (reverse!5 (tail!264 l!318))) lt!1181)))

(declare-fun b!4155 () Bool)

(assert (=> b!4155 (= e!2314 0)))

(declare-fun b!4156 () Bool)

(assert (=> b!4156 (= e!2314 (+ 1 (size!23 (tail!264 (reverse!5 (tail!264 l!318))))))))

(assert (= (and d!2990 c!1520) b!4155))

(assert (= (and d!2990 (not c!1520)) b!4156))

(declare-fun m!6545 () Bool)

(assert (=> b!4156 m!6545))

(assert (=> d!2970 d!2990))

(declare-fun d!2992 () Bool)

(declare-fun lt!1182 () Int)

(assert (=> d!2992 (>= lt!1182 0)))

(declare-fun e!2315 () Int)

(assert (=> d!2992 (= lt!1182 e!2315)))

(declare-fun c!1521 () Bool)

(assert (=> d!2992 (= c!1521 (is-Nil!81 (Cons!80 (head!252 l!318) Nil!81)))))

(assert (=> d!2992 (= (size!23 (Cons!80 (head!252 l!318) Nil!81)) lt!1182)))

(declare-fun b!4157 () Bool)

(assert (=> b!4157 (= e!2315 0)))

(declare-fun b!4158 () Bool)

(assert (=> b!4158 (= e!2315 (+ 1 (size!23 (tail!264 (Cons!80 (head!252 l!318) Nil!81)))))))

(assert (= (and d!2992 c!1521) b!4157))

(assert (= (and d!2992 (not c!1521)) b!4158))

(declare-fun m!6547 () Bool)

(assert (=> b!4158 m!6547))

(assert (=> d!2970 d!2992))

(declare-fun d!2994 () Bool)

(declare-fun c!1522 () Bool)

(assert (=> d!2994 (= c!1522 (is-Nil!81 lt!1175))))

(declare-fun e!2316 () (Set (_ BitVec 32)))

(assert (=> d!2994 (= (content!22 lt!1175) e!2316)))

(declare-fun b!4159 () Bool)

(assert (=> b!4159 (= e!2316 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4160 () Bool)

(assert (=> b!4160 (= e!2316 (union (insert (head!252 lt!1175) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 lt!1175))))))

(assert (= (and d!2994 c!1522) b!4159))

(assert (= (and d!2994 (not c!1522)) b!4160))

(declare-fun m!6549 () Bool)

(assert (=> b!4160 m!6549))

(declare-fun m!6551 () Bool)

(assert (=> b!4160 m!6551))

(assert (=> d!2972 d!2994))

(assert (=> d!2972 d!2982))

(declare-fun d!2996 () Bool)

(declare-fun e!2317 () Bool)

(assert (=> d!2996 e!2317))

(declare-fun res!1250 () Bool)

(assert (=> d!2996 (=> (not res!1250) (not e!2317))))

(declare-fun lt!1183 () List!80)

(assert (=> d!2996 (= res!1250 (= (size!23 lt!1183) (+ (size!23 (tail!264 (reverse!5 (tail!264 l!318)))) (size!23 (Cons!80 (head!252 l!318) Nil!81)))))))

(declare-fun e!2318 () List!80)

(assert (=> d!2996 (= lt!1183 e!2318)))

(declare-fun c!1523 () Bool)

(assert (=> d!2996 (= c!1523 (is-Nil!81 (tail!264 (reverse!5 (tail!264 l!318)))))))

(assert (=> d!2996 (= (concat!2 (tail!264 (reverse!5 (tail!264 l!318))) (Cons!80 (head!252 l!318) Nil!81)) lt!1183)))

(declare-fun b!4161 () Bool)

(assert (=> b!4161 (= e!2318 (Cons!80 (head!252 l!318) Nil!81))))

(declare-fun b!4162 () Bool)

(assert (=> b!4162 (= e!2318 (Cons!80 (head!252 (tail!264 (reverse!5 (tail!264 l!318)))) (concat!2 (tail!264 (tail!264 (reverse!5 (tail!264 l!318)))) (Cons!80 (head!252 l!318) Nil!81))))))

(declare-fun b!4163 () Bool)

(assert (=> b!4163 (= e!2317 (= (content!22 lt!1183) (union (content!22 (tail!264 (reverse!5 (tail!264 l!318)))) (content!22 (Cons!80 (head!252 l!318) Nil!81)))))))

(assert (= (and d!2996 c!1523) b!4161))

(assert (= (and d!2996 (not c!1523)) b!4162))

(assert (= (and d!2996 res!1250) b!4163))

(declare-fun m!6553 () Bool)

(assert (=> d!2996 m!6553))

(assert (=> d!2996 m!6545))

(assert (=> d!2996 m!6487))

(declare-fun m!6555 () Bool)

(assert (=> b!4162 m!6555))

(declare-fun m!6557 () Bool)

(assert (=> b!4163 m!6557))

(assert (=> b!4163 m!6513))

(assert (=> b!4163 m!6495))

(assert (=> b!4126 d!2996))

(push 1)

(assert (not b!4137))

(assert (not d!2996))

(assert (not d!2986))

(assert (not b!4154))

(assert (not b!4146))

(assert (not b!4141))

(assert (not b!4148))

(assert (not b!4139))

(assert (not b!4160))

(assert (not b!4156))

(assert (not b!4145))

(assert (not b!4162))

(assert (not b!4135))

(assert (not b!4158))

(assert (not b!4163))

(assert (not d!2984))

(assert (not b!4143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2998 () Bool)

(declare-fun e!2319 () Bool)

(assert (=> d!2998 e!2319))

(declare-fun res!1251 () Bool)

(assert (=> d!2998 (=> (not res!1251) (not e!2319))))

(declare-fun lt!1184 () List!80)

(assert (=> d!2998 (= res!1251 (= (size!23 lt!1184) (+ (size!23 (tail!264 (reverse!5 (tail!264 (tail!264 l!318))))) (size!23 (Cons!80 (head!252 (tail!264 l!318)) Nil!81)))))))

(declare-fun e!2320 () List!80)

(assert (=> d!2998 (= lt!1184 e!2320)))

(declare-fun c!1524 () Bool)

(assert (=> d!2998 (= c!1524 (is-Nil!81 (tail!264 (reverse!5 (tail!264 (tail!264 l!318))))))))

(assert (=> d!2998 (= (concat!2 (tail!264 (reverse!5 (tail!264 (tail!264 l!318)))) (Cons!80 (head!252 (tail!264 l!318)) Nil!81)) lt!1184)))

(declare-fun b!4164 () Bool)

(assert (=> b!4164 (= e!2320 (Cons!80 (head!252 (tail!264 l!318)) Nil!81))))

(declare-fun b!4165 () Bool)

(assert (=> b!4165 (= e!2320 (Cons!80 (head!252 (tail!264 (reverse!5 (tail!264 (tail!264 l!318))))) (concat!2 (tail!264 (tail!264 (reverse!5 (tail!264 (tail!264 l!318))))) (Cons!80 (head!252 (tail!264 l!318)) Nil!81))))))

(declare-fun b!4166 () Bool)

(assert (=> b!4166 (= e!2319 (= (content!22 lt!1184) (union (content!22 (tail!264 (reverse!5 (tail!264 (tail!264 l!318))))) (content!22 (Cons!80 (head!252 (tail!264 l!318)) Nil!81)))))))

(assert (= (and d!2998 c!1524) b!4164))

(assert (= (and d!2998 (not c!1524)) b!4165))

(assert (= (and d!2998 res!1251) b!4166))

(declare-fun m!6559 () Bool)

(assert (=> d!2998 m!6559))

(declare-fun m!6561 () Bool)

(assert (=> d!2998 m!6561))

(assert (=> d!2998 m!6527))

(declare-fun m!6563 () Bool)

(assert (=> b!4165 m!6563))

(declare-fun m!6565 () Bool)

(assert (=> b!4166 m!6565))

(declare-fun m!6567 () Bool)

(assert (=> b!4166 m!6567))

(assert (=> b!4166 m!6535))

(assert (=> b!4145 d!2998))

(declare-fun d!3000 () Bool)

(declare-fun c!1525 () Bool)

(assert (=> d!3000 (= c!1525 (is-Nil!81 (tail!264 (reverse!5 (tail!264 l!318)))))))

(declare-fun e!2321 () (Set (_ BitVec 32)))

(assert (=> d!3000 (= (content!22 (tail!264 (reverse!5 (tail!264 l!318)))) e!2321)))

(declare-fun b!4167 () Bool)

(assert (=> b!4167 (= e!2321 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4168 () Bool)

(assert (=> b!4168 (= e!2321 (union (insert (head!252 (tail!264 (reverse!5 (tail!264 l!318)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 (tail!264 (reverse!5 (tail!264 l!318)))))))))

(assert (= (and d!3000 c!1525) b!4167))

(assert (= (and d!3000 (not c!1525)) b!4168))

(declare-fun m!6569 () Bool)

(assert (=> b!4168 m!6569))

(declare-fun m!6571 () Bool)

(assert (=> b!4168 m!6571))

(assert (=> b!4139 d!3000))

(declare-fun d!3002 () Bool)

(declare-fun c!1526 () Bool)

(assert (=> d!3002 (= c!1526 (is-Nil!81 (tail!264 lt!1172)))))

(declare-fun e!2322 () (Set (_ BitVec 32)))

(assert (=> d!3002 (= (content!22 (tail!264 lt!1172)) e!2322)))

(declare-fun b!4169 () Bool)

(assert (=> b!4169 (= e!2322 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4170 () Bool)

(assert (=> b!4170 (= e!2322 (union (insert (head!252 (tail!264 lt!1172)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 (tail!264 lt!1172)))))))

(assert (= (and d!3002 c!1526) b!4169))

(assert (= (and d!3002 (not c!1526)) b!4170))

(declare-fun m!6573 () Bool)

(assert (=> b!4170 m!6573))

(declare-fun m!6575 () Bool)

(assert (=> b!4170 m!6575))

(assert (=> b!4137 d!3002))

(declare-fun d!3004 () Bool)

(declare-fun c!1527 () Bool)

(assert (=> d!3004 (= c!1527 (is-Nil!81 (tail!264 (tail!264 l!318))))))

(declare-fun e!2323 () (Set (_ BitVec 32)))

(assert (=> d!3004 (= (content!22 (tail!264 (tail!264 l!318))) e!2323)))

(declare-fun b!4171 () Bool)

(assert (=> b!4171 (= e!2323 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4172 () Bool)

(assert (=> b!4172 (= e!2323 (union (insert (head!252 (tail!264 (tail!264 l!318))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 (tail!264 (tail!264 l!318))))))))

(assert (= (and d!3004 c!1527) b!4171))

(assert (= (and d!3004 (not c!1527)) b!4172))

(declare-fun m!6577 () Bool)

(assert (=> b!4172 m!6577))

(declare-fun m!6579 () Bool)

(assert (=> b!4172 m!6579))

(assert (=> b!4143 d!3004))

(declare-fun d!3006 () Bool)

(declare-fun e!2324 () Bool)

(assert (=> d!3006 e!2324))

(declare-fun res!1252 () Bool)

(assert (=> d!3006 (=> (not res!1252) (not e!2324))))

(declare-fun lt!1185 () List!80)

(assert (=> d!3006 (= res!1252 (= (size!23 lt!1185) (+ (size!23 (tail!264 (tail!264 (reverse!5 (tail!264 l!318))))) (size!23 (Cons!80 (head!252 l!318) Nil!81)))))))

(declare-fun e!2325 () List!80)

(assert (=> d!3006 (= lt!1185 e!2325)))

(declare-fun c!1528 () Bool)

(assert (=> d!3006 (= c!1528 (is-Nil!81 (tail!264 (tail!264 (reverse!5 (tail!264 l!318))))))))

(assert (=> d!3006 (= (concat!2 (tail!264 (tail!264 (reverse!5 (tail!264 l!318)))) (Cons!80 (head!252 l!318) Nil!81)) lt!1185)))

(declare-fun b!4173 () Bool)

(assert (=> b!4173 (= e!2325 (Cons!80 (head!252 l!318) Nil!81))))

(declare-fun b!4174 () Bool)

(assert (=> b!4174 (= e!2325 (Cons!80 (head!252 (tail!264 (tail!264 (reverse!5 (tail!264 l!318))))) (concat!2 (tail!264 (tail!264 (tail!264 (reverse!5 (tail!264 l!318))))) (Cons!80 (head!252 l!318) Nil!81))))))

(declare-fun b!4175 () Bool)

(assert (=> b!4175 (= e!2324 (= (content!22 lt!1185) (union (content!22 (tail!264 (tail!264 (reverse!5 (tail!264 l!318))))) (content!22 (Cons!80 (head!252 l!318) Nil!81)))))))

(assert (= (and d!3006 c!1528) b!4173))

(assert (= (and d!3006 (not c!1528)) b!4174))

(assert (= (and d!3006 res!1252) b!4175))

(declare-fun m!6581 () Bool)

(assert (=> d!3006 m!6581))

(declare-fun m!6583 () Bool)

(assert (=> d!3006 m!6583))

(assert (=> d!3006 m!6487))

(declare-fun m!6585 () Bool)

(assert (=> b!4174 m!6585))

(declare-fun m!6587 () Bool)

(assert (=> b!4175 m!6587))

(assert (=> b!4175 m!6571))

(assert (=> b!4175 m!6495))

(assert (=> b!4162 d!3006))

(declare-fun d!3008 () Bool)

(declare-fun c!1529 () Bool)

(assert (=> d!3008 (= c!1529 (is-Nil!81 (tail!264 (tail!264 x$2!76))))))

(declare-fun e!2326 () (Set (_ BitVec 32)))

(assert (=> d!3008 (= (content!22 (tail!264 (tail!264 x$2!76))) e!2326)))

(declare-fun b!4176 () Bool)

(assert (=> b!4176 (= e!2326 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4177 () Bool)

(assert (=> b!4177 (= e!2326 (union (insert (head!252 (tail!264 (tail!264 x$2!76))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 (tail!264 (tail!264 x$2!76))))))))

(assert (= (and d!3008 c!1529) b!4176))

(assert (= (and d!3008 (not c!1529)) b!4177))

(declare-fun m!6589 () Bool)

(assert (=> b!4177 m!6589))

(declare-fun m!6591 () Bool)

(assert (=> b!4177 m!6591))

(assert (=> b!4135 d!3008))

(declare-fun d!3010 () Bool)

(declare-fun c!1530 () Bool)

(assert (=> d!3010 (= c!1530 (is-Nil!81 lt!1176))))

(declare-fun e!2327 () (Set (_ BitVec 32)))

(assert (=> d!3010 (= (content!22 lt!1176) e!2327)))

(declare-fun b!4178 () Bool)

(assert (=> b!4178 (= e!2327 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4179 () Bool)

(assert (=> b!4179 (= e!2327 (union (insert (head!252 lt!1176) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 lt!1176))))))

(assert (= (and d!3010 c!1530) b!4178))

(assert (= (and d!3010 (not c!1530)) b!4179))

(declare-fun m!6593 () Bool)

(assert (=> b!4179 m!6593))

(declare-fun m!6595 () Bool)

(assert (=> b!4179 m!6595))

(assert (=> b!4146 d!3010))

(declare-fun d!3012 () Bool)

(declare-fun c!1531 () Bool)

(assert (=> d!3012 (= c!1531 (is-Nil!81 (reverse!5 (tail!264 (tail!264 l!318)))))))

(declare-fun e!2328 () (Set (_ BitVec 32)))

(assert (=> d!3012 (= (content!22 (reverse!5 (tail!264 (tail!264 l!318)))) e!2328)))

(declare-fun b!4180 () Bool)

(assert (=> b!4180 (= e!2328 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4181 () Bool)

(assert (=> b!4181 (= e!2328 (union (insert (head!252 (reverse!5 (tail!264 (tail!264 l!318)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 (reverse!5 (tail!264 (tail!264 l!318)))))))))

(assert (= (and d!3012 c!1531) b!4180))

(assert (= (and d!3012 (not c!1531)) b!4181))

(declare-fun m!6597 () Bool)

(assert (=> b!4181 m!6597))

(assert (=> b!4181 m!6567))

(assert (=> b!4146 d!3012))

(declare-fun d!3014 () Bool)

(declare-fun c!1532 () Bool)

(assert (=> d!3014 (= c!1532 (is-Nil!81 (Cons!80 (head!252 (tail!264 l!318)) Nil!81)))))

(declare-fun e!2329 () (Set (_ BitVec 32)))

(assert (=> d!3014 (= (content!22 (Cons!80 (head!252 (tail!264 l!318)) Nil!81)) e!2329)))

(declare-fun b!4182 () Bool)

(assert (=> b!4182 (= e!2329 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4183 () Bool)

(assert (=> b!4183 (= e!2329 (union (insert (head!252 (Cons!80 (head!252 (tail!264 l!318)) Nil!81)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 (Cons!80 (head!252 (tail!264 l!318)) Nil!81)))))))

(assert (= (and d!3014 c!1532) b!4182))

(assert (= (and d!3014 (not c!1532)) b!4183))

(declare-fun m!6599 () Bool)

(assert (=> b!4183 m!6599))

(declare-fun m!6601 () Bool)

(assert (=> b!4183 m!6601))

(assert (=> b!4146 d!3014))

(declare-fun d!3016 () Bool)

(declare-fun c!1533 () Bool)

(assert (=> d!3016 (= c!1533 (is-Nil!81 (tail!264 (Cons!80 (head!252 l!318) Nil!81))))))

(declare-fun e!2330 () (Set (_ BitVec 32)))

(assert (=> d!3016 (= (content!22 (tail!264 (Cons!80 (head!252 l!318) Nil!81))) e!2330)))

(declare-fun b!4184 () Bool)

(assert (=> b!4184 (= e!2330 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4185 () Bool)

(assert (=> b!4185 (= e!2330 (union (insert (head!252 (tail!264 (Cons!80 (head!252 l!318) Nil!81))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 (tail!264 (Cons!80 (head!252 l!318) Nil!81))))))))

(assert (= (and d!3016 c!1533) b!4184))

(assert (= (and d!3016 (not c!1533)) b!4185))

(declare-fun m!6603 () Bool)

(assert (=> b!4185 m!6603))

(declare-fun m!6605 () Bool)

(assert (=> b!4185 m!6605))

(assert (=> b!4141 d!3016))

(declare-fun d!3018 () Bool)

(declare-fun c!1534 () Bool)

(assert (=> d!3018 (= c!1534 (is-Nil!81 (tail!264 lt!1175)))))

(declare-fun e!2331 () (Set (_ BitVec 32)))

(assert (=> d!3018 (= (content!22 (tail!264 lt!1175)) e!2331)))

(declare-fun b!4186 () Bool)

(assert (=> b!4186 (= e!2331 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4187 () Bool)

(assert (=> b!4187 (= e!2331 (union (insert (head!252 (tail!264 lt!1175)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 (tail!264 lt!1175)))))))

(assert (= (and d!3018 c!1534) b!4186))

(assert (= (and d!3018 (not c!1534)) b!4187))

(declare-fun m!6607 () Bool)

(assert (=> b!4187 m!6607))

(declare-fun m!6609 () Bool)

(assert (=> b!4187 m!6609))

(assert (=> b!4160 d!3018))

(declare-fun d!3020 () Bool)

(declare-fun lt!1186 () Int)

(assert (=> d!3020 (>= lt!1186 0)))

(declare-fun e!2332 () Int)

(assert (=> d!3020 (= lt!1186 e!2332)))

(declare-fun c!1535 () Bool)

(assert (=> d!3020 (= c!1535 (is-Nil!81 lt!1183))))

(assert (=> d!3020 (= (size!23 lt!1183) lt!1186)))

(declare-fun b!4188 () Bool)

(assert (=> b!4188 (= e!2332 0)))

(declare-fun b!4189 () Bool)

(assert (=> b!4189 (= e!2332 (+ 1 (size!23 (tail!264 lt!1183))))))

(assert (= (and d!3020 c!1535) b!4188))

(assert (= (and d!3020 (not c!1535)) b!4189))

(declare-fun m!6611 () Bool)

(assert (=> b!4189 m!6611))

(assert (=> d!2996 d!3020))

(declare-fun d!3022 () Bool)

(declare-fun lt!1187 () Int)

(assert (=> d!3022 (>= lt!1187 0)))

(declare-fun e!2333 () Int)

(assert (=> d!3022 (= lt!1187 e!2333)))

(declare-fun c!1536 () Bool)

(assert (=> d!3022 (= c!1536 (is-Nil!81 (tail!264 (reverse!5 (tail!264 l!318)))))))

(assert (=> d!3022 (= (size!23 (tail!264 (reverse!5 (tail!264 l!318)))) lt!1187)))

(declare-fun b!4190 () Bool)

(assert (=> b!4190 (= e!2333 0)))

(declare-fun b!4191 () Bool)

(assert (=> b!4191 (= e!2333 (+ 1 (size!23 (tail!264 (tail!264 (reverse!5 (tail!264 l!318)))))))))

(assert (= (and d!3022 c!1536) b!4190))

(assert (= (and d!3022 (not c!1536)) b!4191))

(assert (=> b!4191 m!6583))

(assert (=> d!2996 d!3022))

(assert (=> d!2996 d!2992))

(declare-fun d!3024 () Bool)

(declare-fun lt!1188 () Int)

(assert (=> d!3024 (>= lt!1188 0)))

(declare-fun e!2334 () Int)

(assert (=> d!3024 (= lt!1188 e!2334)))

(declare-fun c!1537 () Bool)

(assert (=> d!3024 (= c!1537 (is-Nil!81 lt!1176))))

(assert (=> d!3024 (= (size!23 lt!1176) lt!1188)))

(declare-fun b!4192 () Bool)

(assert (=> b!4192 (= e!2334 0)))

(declare-fun b!4193 () Bool)

(assert (=> b!4193 (= e!2334 (+ 1 (size!23 (tail!264 lt!1176))))))

(assert (= (and d!3024 c!1537) b!4192))

(assert (= (and d!3024 (not c!1537)) b!4193))

(declare-fun m!6613 () Bool)

(assert (=> b!4193 m!6613))

(assert (=> d!2984 d!3024))

(declare-fun d!3026 () Bool)

(declare-fun lt!1189 () Int)

(assert (=> d!3026 (>= lt!1189 0)))

(declare-fun e!2335 () Int)

(assert (=> d!3026 (= lt!1189 e!2335)))

(declare-fun c!1538 () Bool)

(assert (=> d!3026 (= c!1538 (is-Nil!81 (reverse!5 (tail!264 (tail!264 l!318)))))))

(assert (=> d!3026 (= (size!23 (reverse!5 (tail!264 (tail!264 l!318)))) lt!1189)))

(declare-fun b!4194 () Bool)

(assert (=> b!4194 (= e!2335 0)))

(declare-fun b!4195 () Bool)

(assert (=> b!4195 (= e!2335 (+ 1 (size!23 (tail!264 (reverse!5 (tail!264 (tail!264 l!318)))))))))

(assert (= (and d!3026 c!1538) b!4194))

(assert (= (and d!3026 (not c!1538)) b!4195))

(assert (=> b!4195 m!6561))

(assert (=> d!2984 d!3026))

(declare-fun d!3028 () Bool)

(declare-fun lt!1190 () Int)

(assert (=> d!3028 (>= lt!1190 0)))

(declare-fun e!2336 () Int)

(assert (=> d!3028 (= lt!1190 e!2336)))

(declare-fun c!1539 () Bool)

(assert (=> d!3028 (= c!1539 (is-Nil!81 (Cons!80 (head!252 (tail!264 l!318)) Nil!81)))))

(assert (=> d!3028 (= (size!23 (Cons!80 (head!252 (tail!264 l!318)) Nil!81)) lt!1190)))

(declare-fun b!4196 () Bool)

(assert (=> b!4196 (= e!2336 0)))

(declare-fun b!4197 () Bool)

(assert (=> b!4197 (= e!2336 (+ 1 (size!23 (tail!264 (Cons!80 (head!252 (tail!264 l!318)) Nil!81)))))))

(assert (= (and d!3028 c!1539) b!4196))

(assert (= (and d!3028 (not c!1539)) b!4197))

(declare-fun m!6615 () Bool)

(assert (=> b!4197 m!6615))

(assert (=> d!2984 d!3028))

(declare-fun d!3030 () Bool)

(declare-fun c!1540 () Bool)

(assert (=> d!3030 (= c!1540 (is-Nil!81 lt!1183))))

(declare-fun e!2337 () (Set (_ BitVec 32)))

(assert (=> d!3030 (= (content!22 lt!1183) e!2337)))

(declare-fun b!4198 () Bool)

(assert (=> b!4198 (= e!2337 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4199 () Bool)

(assert (=> b!4199 (= e!2337 (union (insert (head!252 lt!1183) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 lt!1183))))))

(assert (= (and d!3030 c!1540) b!4198))

(assert (= (and d!3030 (not c!1540)) b!4199))

(declare-fun m!6617 () Bool)

(assert (=> b!4199 m!6617))

(declare-fun m!6619 () Bool)

(assert (=> b!4199 m!6619))

(assert (=> b!4163 d!3030))

(assert (=> b!4163 d!3000))

(assert (=> b!4163 d!2980))

(declare-fun d!3032 () Bool)

(declare-fun e!2338 () Bool)

(assert (=> d!3032 e!2338))

(declare-fun res!1253 () Bool)

(assert (=> d!3032 (=> (not res!1253) (not e!2338))))

(declare-fun lt!1191 () List!80)

(assert (=> d!3032 (= res!1253 (= (size!23 lt!1191) (+ (size!23 (reverse!5 (tail!264 (tail!264 (tail!264 l!318))))) (size!23 (Cons!80 (head!252 (tail!264 (tail!264 l!318))) Nil!81)))))))

(declare-fun e!2339 () List!80)

(assert (=> d!3032 (= lt!1191 e!2339)))

(declare-fun c!1541 () Bool)

(assert (=> d!3032 (= c!1541 (is-Nil!81 (reverse!5 (tail!264 (tail!264 (tail!264 l!318))))))))

(assert (=> d!3032 (= (concat!2 (reverse!5 (tail!264 (tail!264 (tail!264 l!318)))) (Cons!80 (head!252 (tail!264 (tail!264 l!318))) Nil!81)) lt!1191)))

(declare-fun b!4200 () Bool)

(assert (=> b!4200 (= e!2339 (Cons!80 (head!252 (tail!264 (tail!264 l!318))) Nil!81))))

(declare-fun b!4201 () Bool)

(assert (=> b!4201 (= e!2339 (Cons!80 (head!252 (reverse!5 (tail!264 (tail!264 (tail!264 l!318))))) (concat!2 (tail!264 (reverse!5 (tail!264 (tail!264 (tail!264 l!318))))) (Cons!80 (head!252 (tail!264 (tail!264 l!318))) Nil!81))))))

(declare-fun b!4202 () Bool)

(assert (=> b!4202 (= e!2338 (= (content!22 lt!1191) (union (content!22 (reverse!5 (tail!264 (tail!264 (tail!264 l!318))))) (content!22 (Cons!80 (head!252 (tail!264 (tail!264 l!318))) Nil!81)))))))

(assert (= (and d!3032 c!1541) b!4200))

(assert (= (and d!3032 (not c!1541)) b!4201))

(assert (= (and d!3032 res!1253) b!4202))

(declare-fun m!6621 () Bool)

(assert (=> d!3032 m!6621))

(assert (=> d!3032 m!6539))

(declare-fun m!6623 () Bool)

(assert (=> d!3032 m!6623))

(declare-fun m!6625 () Bool)

(assert (=> d!3032 m!6625))

(declare-fun m!6627 () Bool)

(assert (=> b!4201 m!6627))

(declare-fun m!6629 () Bool)

(assert (=> b!4202 m!6629))

(assert (=> b!4202 m!6539))

(declare-fun m!6631 () Bool)

(assert (=> b!4202 m!6631))

(declare-fun m!6633 () Bool)

(assert (=> b!4202 m!6633))

(assert (=> b!4148 d!3032))

(declare-fun d!3034 () Bool)

(declare-fun lt!1192 () List!80)

(assert (=> d!3034 (= (content!22 lt!1192) (content!22 (tail!264 (tail!264 (tail!264 l!318)))))))

(declare-fun e!2340 () List!80)

(assert (=> d!3034 (= lt!1192 e!2340)))

(declare-fun c!1542 () Bool)

(assert (=> d!3034 (= c!1542 (is-Nil!81 (tail!264 (tail!264 (tail!264 l!318)))))))

(assert (=> d!3034 (= (reverse!5 (tail!264 (tail!264 (tail!264 l!318)))) lt!1192)))

(declare-fun b!4203 () Bool)

(assert (=> b!4203 (= e!2340 Nil!81)))

(declare-fun b!4204 () Bool)

(assert (=> b!4204 (= e!2340 (concat!2 (reverse!5 (tail!264 (tail!264 (tail!264 (tail!264 l!318))))) (Cons!80 (head!252 (tail!264 (tail!264 (tail!264 l!318)))) Nil!81)))))

(assert (= (and d!3034 c!1542) b!4203))

(assert (= (and d!3034 (not c!1542)) b!4204))

(declare-fun m!6635 () Bool)

(assert (=> d!3034 m!6635))

(assert (=> d!3034 m!6579))

(declare-fun m!6637 () Bool)

(assert (=> b!4204 m!6637))

(assert (=> b!4204 m!6637))

(declare-fun m!6639 () Bool)

(assert (=> b!4204 m!6639))

(assert (=> b!4148 d!3034))

(declare-fun d!3036 () Bool)

(declare-fun lt!1193 () Int)

(assert (=> d!3036 (>= lt!1193 0)))

(declare-fun e!2341 () Int)

(assert (=> d!3036 (= lt!1193 e!2341)))

(declare-fun c!1543 () Bool)

(assert (=> d!3036 (= c!1543 (is-Nil!81 (tail!264 lt!1172)))))

(assert (=> d!3036 (= (size!23 (tail!264 lt!1172)) lt!1193)))

(declare-fun b!4205 () Bool)

(assert (=> b!4205 (= e!2341 0)))

(declare-fun b!4206 () Bool)

(assert (=> b!4206 (= e!2341 (+ 1 (size!23 (tail!264 (tail!264 lt!1172)))))))

(assert (= (and d!3036 c!1543) b!4205))

(assert (= (and d!3036 (not c!1543)) b!4206))

(declare-fun m!6641 () Bool)

(assert (=> b!4206 m!6641))

(assert (=> b!4154 d!3036))

(declare-fun d!3038 () Bool)

(declare-fun lt!1194 () Int)

(assert (=> d!3038 (>= lt!1194 0)))

(declare-fun e!2342 () Int)

(assert (=> d!3038 (= lt!1194 e!2342)))

(declare-fun c!1544 () Bool)

(assert (=> d!3038 (= c!1544 (is-Nil!81 (tail!264 (Cons!80 (head!252 l!318) Nil!81))))))

(assert (=> d!3038 (= (size!23 (tail!264 (Cons!80 (head!252 l!318) Nil!81))) lt!1194)))

(declare-fun b!4207 () Bool)

(assert (=> b!4207 (= e!2342 0)))

(declare-fun b!4208 () Bool)

(assert (=> b!4208 (= e!2342 (+ 1 (size!23 (tail!264 (tail!264 (Cons!80 (head!252 l!318) Nil!81))))))))

(assert (= (and d!3038 c!1544) b!4207))

(assert (= (and d!3038 (not c!1544)) b!4208))

(declare-fun m!6643 () Bool)

(assert (=> b!4208 m!6643))

(assert (=> b!4158 d!3038))

(declare-fun d!3040 () Bool)

(declare-fun c!1545 () Bool)

(assert (=> d!3040 (= c!1545 (is-Nil!81 lt!1177))))

(declare-fun e!2343 () (Set (_ BitVec 32)))

(assert (=> d!3040 (= (content!22 lt!1177) e!2343)))

(declare-fun b!4209 () Bool)

(assert (=> b!4209 (= e!2343 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4210 () Bool)

(assert (=> b!4210 (= e!2343 (union (insert (head!252 lt!1177) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!264 lt!1177))))))

(assert (= (and d!3040 c!1545) b!4209))

(assert (= (and d!3040 (not c!1545)) b!4210))

(declare-fun m!6645 () Bool)

(assert (=> b!4210 m!6645))

(declare-fun m!6647 () Bool)

(assert (=> b!4210 m!6647))

(assert (=> d!2986 d!3040))

(assert (=> d!2986 d!3004))

(assert (=> b!4156 d!3022))

(push 1)

(assert (not b!4172))

(assert (not d!3006))

(assert (not b!4179))

(assert (not b!4202))

(assert (not d!3034))

(assert (not b!4177))

(assert (not b!4210))

(assert (not b!4208))

(assert (not b!4181))

(assert (not b!4191))

(assert (not b!4195))

(assert (not b!4185))

(assert (not b!4168))

(assert (not b!4193))

(assert (not b!4199))

(assert (not b!4189))

(assert (not b!4187))

(assert (not b!4201))

(assert (not d!2998))

(assert (not b!4197))

(assert (not b!4170))

(assert (not d!3032))

(assert (not b!4174))

(assert (not b!4166))

(assert (not b!4175))

(assert (not b!4206))

(assert (not b!4165))

(assert (not b!4183))

(assert (not b!4204))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

