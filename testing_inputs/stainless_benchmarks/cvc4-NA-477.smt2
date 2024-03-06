; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3078 () Bool)

(assert start!3078)

(declare-fun b!15164 () Bool)

(declare-fun e!8308 () Bool)

(declare-fun tp_is_empty!53 () Bool)

(assert (=> b!15164 (= e!8308 tp_is_empty!53)))

(declare-datatypes () ((T!1709 (T!1710 (val!27 Int)))))

(declare-datatypes () ((Conc!9 (CC!8 (left!653 Conc!9) (right!656 Conc!9)) (Single!8 (x!8700 T!1709)) (Empty!19))))

(declare-fun xs!637 () Conc!9)

(declare-fun n!315 () Int)

(declare-fun b!15165 () Bool)

(declare-datatypes () ((tuple2!102 (tuple2!103 (_1!51 Conc!9) (_2!51 Conc!9)))))

(declare-fun res!5658 () tuple2!102)

(declare-fun e!8306 () Bool)

(declare-fun splitCorrectness!4 (tuple2!102 Conc!9 Int) Bool)

(assert (=> b!15165 (= e!8306 (not (splitCorrectness!4 res!5658 xs!637 n!315)))))

(declare-fun b!15166 () Bool)

(declare-fun res!6146 () Bool)

(declare-fun e!8309 () Bool)

(assert (=> b!15166 (=> (not res!6146) (not e!8309))))

(declare-fun balanced!9 (Conc!9) Bool)

(assert (=> b!15166 (= res!6146 (balanced!9 xs!637))))

(declare-fun b!15167 () Bool)

(assert (=> b!15167 (= e!8309 e!8306)))

(declare-fun res!6142 () Bool)

(assert (=> b!15167 (=> res!6142 e!8306)))

(declare-fun concInv!8 (Conc!9) Bool)

(assert (=> b!15167 (= res!6142 (not (concInv!8 (_1!51 res!5658))))))

(declare-fun b!15168 () Bool)

(declare-fun e!8305 () Bool)

(declare-fun tp!3698 () Bool)

(declare-fun tp!3695 () Bool)

(assert (=> b!15168 (= e!8305 (and tp!3698 tp!3695))))

(declare-fun b!15169 () Bool)

(declare-fun res!6137 () Bool)

(assert (=> b!15169 (=> res!6137 e!8306)))

(assert (=> b!15169 (= res!6137 (not (concInv!8 (_2!51 res!5658))))))

(declare-fun b!15170 () Bool)

(declare-fun res!6144 () Bool)

(assert (=> b!15170 (=> (not res!6144) (not e!8309))))

(assert (=> b!15170 (= res!6144 (and (not (is-Empty!19 xs!637)) (is-Single!8 xs!637) (<= n!315 0) (= res!5658 (tuple2!103 Empty!19 xs!637))))))

(declare-fun b!15171 () Bool)

(declare-fun e!8307 () Bool)

(assert (=> b!15171 (= e!8307 tp_is_empty!53)))

(declare-fun b!15172 () Bool)

(declare-fun tp!3696 () Bool)

(declare-fun tp!3694 () Bool)

(assert (=> b!15172 (= e!8308 (and tp!3696 tp!3694))))

(declare-fun b!15173 () Bool)

(declare-fun tp!3697 () Bool)

(declare-fun tp!3693 () Bool)

(assert (=> b!15173 (= e!8307 (and tp!3697 tp!3693))))

(declare-fun b!15174 () Bool)

(assert (=> b!15174 (= e!8305 tp_is_empty!53)))

(declare-fun b!15175 () Bool)

(declare-fun res!6139 () Bool)

(assert (=> b!15175 (=> res!6139 e!8306)))

(declare-fun instSplitAxiom!6 (Conc!9 Int) Bool)

(assert (=> b!15175 (= res!6139 (not (instSplitAxiom!6 xs!637 n!315)))))

(declare-fun b!15176 () Bool)

(declare-fun res!6141 () Bool)

(assert (=> b!15176 (=> res!6141 e!8306)))

(declare-fun level!8 (Conc!9) Int)

(assert (=> b!15176 (= res!6141 (< (level!8 xs!637) (level!8 (_2!51 res!5658))))))

(declare-fun b!15177 () Bool)

(declare-fun res!6140 () Bool)

(assert (=> b!15177 (=> res!6140 e!8306)))

(assert (=> b!15177 (= res!6140 (not (balanced!9 (_2!51 res!5658))))))

(declare-fun b!15178 () Bool)

(declare-fun res!6138 () Bool)

(assert (=> b!15178 (=> res!6138 e!8306)))

(assert (=> b!15178 (= res!6138 (not (balanced!9 (_1!51 res!5658))))))

(declare-fun res!6143 () Bool)

(assert (=> start!3078 (=> (not res!6143) (not e!8309))))

(assert (=> start!3078 (= res!6143 (concInv!8 xs!637))))

(assert (=> start!3078 e!8309))

(assert (=> start!3078 e!8308))

(assert (=> start!3078 true))

(assert (=> start!3078 (and e!8305 e!8307)))

(declare-fun b!15179 () Bool)

(declare-fun res!6145 () Bool)

(assert (=> b!15179 (=> res!6145 e!8306)))

(assert (=> b!15179 (= res!6145 (< (level!8 xs!637) (level!8 (_1!51 res!5658))))))

(assert (= (and start!3078 res!6143) b!15166))

(assert (= (and b!15166 res!6146) b!15170))

(assert (= (and b!15170 res!6144) b!15167))

(assert (= (and b!15167 (not res!6142)) b!15178))

(assert (= (and b!15178 (not res!6138)) b!15169))

(assert (= (and b!15169 (not res!6137)) b!15177))

(assert (= (and b!15177 (not res!6140)) b!15179))

(assert (= (and b!15179 (not res!6145)) b!15176))

(assert (= (and b!15176 (not res!6141)) b!15175))

(assert (= (and b!15175 (not res!6139)) b!15165))

(assert (= (and start!3078 (is-CC!8 xs!637)) b!15172))

(assert (= (and start!3078 (is-Single!8 xs!637)) b!15164))

(assert (= (and start!3078 (is-CC!8 (_1!51 res!5658))) b!15168))

(assert (= (and start!3078 (is-Single!8 (_1!51 res!5658))) b!15174))

(assert (= (and start!3078 (is-CC!8 (_2!51 res!5658))) b!15173))

(assert (= (and start!3078 (is-Single!8 (_2!51 res!5658))) b!15171))

(declare-fun m!18657 () Bool)

(assert (=> b!15179 m!18657))

(declare-fun m!18659 () Bool)

(assert (=> b!15179 m!18659))

(declare-fun m!18661 () Bool)

(assert (=> start!3078 m!18661))

(declare-fun m!18663 () Bool)

(assert (=> b!15169 m!18663))

(assert (=> b!15176 m!18657))

(declare-fun m!18665 () Bool)

(assert (=> b!15176 m!18665))

(declare-fun m!18667 () Bool)

(assert (=> b!15178 m!18667))

(declare-fun m!18669 () Bool)

(assert (=> b!15177 m!18669))

(declare-fun m!18671 () Bool)

(assert (=> b!15166 m!18671))

(declare-fun m!18673 () Bool)

(assert (=> b!15167 m!18673))

(declare-fun m!18675 () Bool)

(assert (=> b!15175 m!18675))

(declare-fun m!18677 () Bool)

(assert (=> b!15165 m!18677))

(push 1)

(assert (not b!15166))

(assert (not b!15179))

(assert (not b!15169))

(assert (not b!15176))

(assert (not b!15172))

(assert tp_is_empty!53)

(assert (not b!15175))

(assert (not b!15177))

(assert (not b!15168))

(assert (not b!15173))

(assert (not b!15178))

(assert (not start!3078))

(assert (not b!15167))

(assert (not b!15165))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!11409 () Bool)

(declare-fun res!6149 () Bool)

(declare-fun e!8312 () Bool)

(assert (=> d!11409 (=> (not res!6149) (not e!8312))))

(declare-datatypes () ((List!322 (Cons!316 (h!230 T!1709) (t!4275 List!322)) (Nil!317))))

(declare-fun toList!82 (Conc!9) List!322)

(declare-fun take!7 (List!322 Int) List!322)

(assert (=> d!11409 (= res!6149 (= (toList!82 (_1!51 res!5658)) (take!7 (toList!82 xs!637) n!315)))))

(assert (=> d!11409 (= (splitCorrectness!4 res!5658 xs!637 n!315) e!8312)))

(declare-fun b!15182 () Bool)

(declare-fun drop!5 (List!322 Int) List!322)

(assert (=> b!15182 (= e!8312 (= (toList!82 (_2!51 res!5658)) (drop!5 (toList!82 xs!637) n!315)))))

(assert (= (and d!11409 res!6149) b!15182))

(declare-fun m!18679 () Bool)

(assert (=> d!11409 m!18679))

(declare-fun m!18681 () Bool)

(assert (=> d!11409 m!18681))

(assert (=> d!11409 m!18681))

(declare-fun m!18683 () Bool)

(assert (=> d!11409 m!18683))

(declare-fun m!18685 () Bool)

(assert (=> b!15182 m!18685))

(assert (=> b!15182 m!18681))

(assert (=> b!15182 m!18681))

(declare-fun m!18687 () Bool)

(assert (=> b!15182 m!18687))

(assert (=> b!15165 d!11409))

(declare-fun b!15191 () Bool)

(declare-fun e!8318 () Bool)

(declare-fun e!8317 () Bool)

(assert (=> b!15191 (= e!8318 e!8317)))

(declare-fun res!6158 () Bool)

(assert (=> b!15191 (=> (not res!6158) (not e!8317))))

(declare-fun isEmpty!273 (Conc!9) Bool)

(assert (=> b!15191 (= res!6158 (not (isEmpty!273 (left!653 (_1!51 res!5658)))))))

(declare-fun b!15192 () Bool)

(declare-fun res!6159 () Bool)

(assert (=> b!15192 (=> (not res!6159) (not e!8317))))

(assert (=> b!15192 (= res!6159 (not (isEmpty!273 (right!656 (_1!51 res!5658)))))))

(declare-fun b!15194 () Bool)

(assert (=> b!15194 (= e!8317 (concInv!8 (right!656 (_1!51 res!5658))))))

(declare-fun b!15193 () Bool)

(declare-fun res!6161 () Bool)

(assert (=> b!15193 (=> (not res!6161) (not e!8317))))

(assert (=> b!15193 (= res!6161 (concInv!8 (left!653 (_1!51 res!5658))))))

(declare-fun d!11411 () Bool)

(declare-fun res!6160 () Bool)

(assert (=> d!11411 (=> res!6160 e!8318)))

(assert (=> d!11411 (= res!6160 (not (is-CC!8 (_1!51 res!5658))))))

(assert (=> d!11411 (= (concInv!8 (_1!51 res!5658)) e!8318)))

(assert (= (and d!11411 (not res!6160)) b!15191))

(assert (= (and b!15191 res!6158) b!15192))

(assert (= (and b!15192 res!6159) b!15193))

(assert (= (and b!15193 res!6161) b!15194))

(declare-fun m!18689 () Bool)

(assert (=> b!15191 m!18689))

(declare-fun m!18691 () Bool)

(assert (=> b!15192 m!18691))

(declare-fun m!18693 () Bool)

(assert (=> b!15194 m!18693))

(declare-fun m!18695 () Bool)

(assert (=> b!15193 m!18695))

(assert (=> b!15167 d!11411))

(declare-fun b!15200 () Bool)

(declare-fun e!8321 () Int)

(declare-fun lt!2140 () Int)

(declare-fun lt!2139 () Int)

(assert (=> b!15200 (= e!8321 (+ 1 (ite (>= lt!2140 lt!2139) lt!2140 lt!2139)))))

(assert (=> b!15200 (= lt!2139 (level!8 (right!656 xs!637)))))

(assert (=> b!15200 (= lt!2140 (level!8 (left!653 xs!637)))))

(declare-fun d!11413 () Bool)

(declare-fun lt!2141 () Int)

(assert (=> d!11413 (>= lt!2141 0)))

(assert (=> d!11413 (= lt!2141 e!8321)))

(declare-fun c!4039 () Bool)

(assert (=> d!11413 (= c!4039 (or (is-Empty!19 xs!637) (is-Single!8 xs!637)))))

(assert (=> d!11413 (= (level!8 xs!637) lt!2141)))

(declare-fun b!15199 () Bool)

(assert (=> b!15199 (= e!8321 0)))

(assert (= (and d!11413 c!4039) b!15199))

(assert (= (and d!11413 (not c!4039)) b!15200))

(declare-fun m!18697 () Bool)

(assert (=> b!15200 m!18697))

(declare-fun m!18699 () Bool)

(assert (=> b!15200 m!18699))

(assert (=> b!15176 d!11413))

(declare-fun b!15202 () Bool)

(declare-fun e!8322 () Int)

(declare-fun lt!2143 () Int)

(declare-fun lt!2142 () Int)

(assert (=> b!15202 (= e!8322 (+ 1 (ite (>= lt!2143 lt!2142) lt!2143 lt!2142)))))

(assert (=> b!15202 (= lt!2142 (level!8 (right!656 (_2!51 res!5658))))))

(assert (=> b!15202 (= lt!2143 (level!8 (left!653 (_2!51 res!5658))))))

(declare-fun d!11415 () Bool)

(declare-fun lt!2144 () Int)

(assert (=> d!11415 (>= lt!2144 0)))

(assert (=> d!11415 (= lt!2144 e!8322)))

(declare-fun c!4040 () Bool)

(assert (=> d!11415 (= c!4040 (or (is-Empty!19 (_2!51 res!5658)) (is-Single!8 (_2!51 res!5658))))))

(assert (=> d!11415 (= (level!8 (_2!51 res!5658)) lt!2144)))

(declare-fun b!15201 () Bool)

(assert (=> b!15201 (= e!8322 0)))

(assert (= (and d!11415 c!4040) b!15201))

(assert (= (and d!11415 (not c!4040)) b!15202))

(declare-fun m!18701 () Bool)

(assert (=> b!15202 m!18701))

(declare-fun m!18703 () Bool)

(assert (=> b!15202 m!18703))

(assert (=> b!15176 d!11415))

(declare-fun b!15203 () Bool)

(declare-fun e!8324 () Bool)

(declare-fun e!8323 () Bool)

(assert (=> b!15203 (= e!8324 e!8323)))

(declare-fun res!6162 () Bool)

(assert (=> b!15203 (=> (not res!6162) (not e!8323))))

(assert (=> b!15203 (= res!6162 (not (isEmpty!273 (left!653 (_2!51 res!5658)))))))

(declare-fun b!15204 () Bool)

(declare-fun res!6163 () Bool)

(assert (=> b!15204 (=> (not res!6163) (not e!8323))))

(assert (=> b!15204 (= res!6163 (not (isEmpty!273 (right!656 (_2!51 res!5658)))))))

(declare-fun b!15206 () Bool)

(assert (=> b!15206 (= e!8323 (concInv!8 (right!656 (_2!51 res!5658))))))

(declare-fun b!15205 () Bool)

(declare-fun res!6165 () Bool)

(assert (=> b!15205 (=> (not res!6165) (not e!8323))))

(assert (=> b!15205 (= res!6165 (concInv!8 (left!653 (_2!51 res!5658))))))

(declare-fun d!11417 () Bool)

(declare-fun res!6164 () Bool)

(assert (=> d!11417 (=> res!6164 e!8324)))

(assert (=> d!11417 (= res!6164 (not (is-CC!8 (_2!51 res!5658))))))

(assert (=> d!11417 (= (concInv!8 (_2!51 res!5658)) e!8324)))

(assert (= (and d!11417 (not res!6164)) b!15203))

(assert (= (and b!15203 res!6162) b!15204))

(assert (= (and b!15204 res!6163) b!15205))

(assert (= (and b!15205 res!6165) b!15206))

(declare-fun m!18705 () Bool)

(assert (=> b!15203 m!18705))

(declare-fun m!18707 () Bool)

(assert (=> b!15204 m!18707))

(declare-fun m!18709 () Bool)

(assert (=> b!15206 m!18709))

(declare-fun m!18711 () Bool)

(assert (=> b!15205 m!18711))

(assert (=> b!15169 d!11417))

(declare-fun d!11419 () Bool)

(declare-fun res!6174 () Bool)

(declare-fun e!8330 () Bool)

(assert (=> d!11419 (=> res!6174 e!8330)))

(assert (=> d!11419 (= res!6174 (not (is-CC!8 (_2!51 res!5658))))))

(assert (=> d!11419 (= (balanced!9 (_2!51 res!5658)) e!8330)))

(declare-fun b!15217 () Bool)

(declare-fun res!6177 () Bool)

(declare-fun e!8329 () Bool)

(assert (=> b!15217 (=> (not res!6177) (not e!8329))))

(assert (=> b!15217 (= res!6177 (balanced!9 (left!653 (_2!51 res!5658))))))

(declare-fun b!15215 () Bool)

(assert (=> b!15215 (= e!8330 e!8329)))

(declare-fun res!6176 () Bool)

(assert (=> b!15215 (=> (not res!6176) (not e!8329))))

(assert (=> b!15215 (= res!6176 (>= (- (level!8 (left!653 (_2!51 res!5658))) (level!8 (right!656 (_2!51 res!5658)))) (- 1)))))

(declare-fun b!15218 () Bool)

(assert (=> b!15218 (= e!8329 (balanced!9 (right!656 (_2!51 res!5658))))))

(declare-fun b!15216 () Bool)

(declare-fun res!6175 () Bool)

(assert (=> b!15216 (=> (not res!6175) (not e!8329))))

(assert (=> b!15216 (= res!6175 (<= (- (level!8 (left!653 (_2!51 res!5658))) (level!8 (right!656 (_2!51 res!5658)))) 1))))

(assert (= (and d!11419 (not res!6174)) b!15215))

(assert (= (and b!15215 res!6176) b!15216))

(assert (= (and b!15216 res!6175) b!15217))

(assert (= (and b!15217 res!6177) b!15218))

(declare-fun m!18713 () Bool)

(assert (=> b!15217 m!18713))

(assert (=> b!15215 m!18703))

(assert (=> b!15215 m!18701))

(declare-fun m!18715 () Bool)

(assert (=> b!15218 m!18715))

(assert (=> b!15216 m!18703))

(assert (=> b!15216 m!18701))

(assert (=> b!15177 d!11419))

(declare-fun d!11421 () Bool)

(declare-fun res!6178 () Bool)

(declare-fun e!8332 () Bool)

(assert (=> d!11421 (=> res!6178 e!8332)))

(assert (=> d!11421 (= res!6178 (not (is-CC!8 xs!637)))))

(assert (=> d!11421 (= (balanced!9 xs!637) e!8332)))

(declare-fun b!15221 () Bool)

(declare-fun res!6181 () Bool)

(declare-fun e!8331 () Bool)

(assert (=> b!15221 (=> (not res!6181) (not e!8331))))

(assert (=> b!15221 (= res!6181 (balanced!9 (left!653 xs!637)))))

(declare-fun b!15219 () Bool)

(assert (=> b!15219 (= e!8332 e!8331)))

(declare-fun res!6180 () Bool)

(assert (=> b!15219 (=> (not res!6180) (not e!8331))))

(assert (=> b!15219 (= res!6180 (>= (- (level!8 (left!653 xs!637)) (level!8 (right!656 xs!637))) (- 1)))))

(declare-fun b!15222 () Bool)

(assert (=> b!15222 (= e!8331 (balanced!9 (right!656 xs!637)))))

(declare-fun b!15220 () Bool)

(declare-fun res!6179 () Bool)

(assert (=> b!15220 (=> (not res!6179) (not e!8331))))

(assert (=> b!15220 (= res!6179 (<= (- (level!8 (left!653 xs!637)) (level!8 (right!656 xs!637))) 1))))

(assert (= (and d!11421 (not res!6178)) b!15219))

(assert (= (and b!15219 res!6180) b!15220))

(assert (= (and b!15220 res!6179) b!15221))

(assert (= (and b!15221 res!6181) b!15222))

(declare-fun m!18717 () Bool)

(assert (=> b!15221 m!18717))

(assert (=> b!15219 m!18699))

(assert (=> b!15219 m!18697))

(declare-fun m!18719 () Bool)

(assert (=> b!15222 m!18719))

(assert (=> b!15220 m!18699))

(assert (=> b!15220 m!18697))

(assert (=> b!15166 d!11421))

(declare-fun d!11423 () Bool)

(declare-fun e!8335 () Bool)

(assert (=> d!11423 e!8335))

(declare-fun res!6184 () Bool)

(assert (=> d!11423 (=> res!6184 e!8335)))

(assert (=> d!11423 (= res!6184 (not (is-CC!8 xs!637)))))

(assert (=> d!11423 (= (instSplitAxiom!6 xs!637 n!315) true)))

(declare-fun b!15225 () Bool)

(declare-fun appendTakeDrop!3 (List!322 List!322 Int) Bool)

(assert (=> b!15225 (= e!8335 (appendTakeDrop!3 (toList!82 (left!653 xs!637)) (toList!82 (right!656 xs!637)) n!315))))

(assert (= (and d!11423 (not res!6184)) b!15225))

(declare-fun m!18721 () Bool)

(assert (=> b!15225 m!18721))

(declare-fun m!18723 () Bool)

(assert (=> b!15225 m!18723))

(assert (=> b!15225 m!18721))

(assert (=> b!15225 m!18723))

(declare-fun m!18725 () Bool)

(assert (=> b!15225 m!18725))

(assert (=> b!15175 d!11423))

(declare-fun d!11425 () Bool)

(declare-fun res!6185 () Bool)

(declare-fun e!8337 () Bool)

(assert (=> d!11425 (=> res!6185 e!8337)))

(assert (=> d!11425 (= res!6185 (not (is-CC!8 (_1!51 res!5658))))))

(assert (=> d!11425 (= (balanced!9 (_1!51 res!5658)) e!8337)))

(declare-fun b!15228 () Bool)

(declare-fun res!6188 () Bool)

(declare-fun e!8336 () Bool)

(assert (=> b!15228 (=> (not res!6188) (not e!8336))))

(assert (=> b!15228 (= res!6188 (balanced!9 (left!653 (_1!51 res!5658))))))

(declare-fun b!15226 () Bool)

(assert (=> b!15226 (= e!8337 e!8336)))

(declare-fun res!6187 () Bool)

(assert (=> b!15226 (=> (not res!6187) (not e!8336))))

(assert (=> b!15226 (= res!6187 (>= (- (level!8 (left!653 (_1!51 res!5658))) (level!8 (right!656 (_1!51 res!5658)))) (- 1)))))

(declare-fun b!15229 () Bool)

(assert (=> b!15229 (= e!8336 (balanced!9 (right!656 (_1!51 res!5658))))))

(declare-fun b!15227 () Bool)

(declare-fun res!6186 () Bool)

(assert (=> b!15227 (=> (not res!6186) (not e!8336))))

(assert (=> b!15227 (= res!6186 (<= (- (level!8 (left!653 (_1!51 res!5658))) (level!8 (right!656 (_1!51 res!5658)))) 1))))

(assert (= (and d!11425 (not res!6185)) b!15226))

(assert (= (and b!15226 res!6187) b!15227))

(assert (= (and b!15227 res!6186) b!15228))

(assert (= (and b!15228 res!6188) b!15229))

(declare-fun m!18727 () Bool)

(assert (=> b!15228 m!18727))

(declare-fun m!18729 () Bool)

(assert (=> b!15226 m!18729))

(declare-fun m!18731 () Bool)

(assert (=> b!15226 m!18731))

(declare-fun m!18733 () Bool)

(assert (=> b!15229 m!18733))

(assert (=> b!15227 m!18729))

(assert (=> b!15227 m!18731))

(assert (=> b!15178 d!11425))

(assert (=> b!15179 d!11413))

(declare-fun b!15231 () Bool)

(declare-fun e!8338 () Int)

(declare-fun lt!2146 () Int)

(declare-fun lt!2145 () Int)

(assert (=> b!15231 (= e!8338 (+ 1 (ite (>= lt!2146 lt!2145) lt!2146 lt!2145)))))

(assert (=> b!15231 (= lt!2145 (level!8 (right!656 (_1!51 res!5658))))))

(assert (=> b!15231 (= lt!2146 (level!8 (left!653 (_1!51 res!5658))))))

(declare-fun d!11427 () Bool)

(declare-fun lt!2147 () Int)

(assert (=> d!11427 (>= lt!2147 0)))

(assert (=> d!11427 (= lt!2147 e!8338)))

(declare-fun c!4041 () Bool)

(assert (=> d!11427 (= c!4041 (or (is-Empty!19 (_1!51 res!5658)) (is-Single!8 (_1!51 res!5658))))))

(assert (=> d!11427 (= (level!8 (_1!51 res!5658)) lt!2147)))

(declare-fun b!15230 () Bool)

(assert (=> b!15230 (= e!8338 0)))

(assert (= (and d!11427 c!4041) b!15230))

(assert (= (and d!11427 (not c!4041)) b!15231))

(assert (=> b!15231 m!18731))

(assert (=> b!15231 m!18729))

(assert (=> b!15179 d!11427))

(declare-fun b!15232 () Bool)

(declare-fun e!8340 () Bool)

(declare-fun e!8339 () Bool)

(assert (=> b!15232 (= e!8340 e!8339)))

(declare-fun res!6189 () Bool)

(assert (=> b!15232 (=> (not res!6189) (not e!8339))))

(assert (=> b!15232 (= res!6189 (not (isEmpty!273 (left!653 xs!637))))))

(declare-fun b!15233 () Bool)

(declare-fun res!6190 () Bool)

(assert (=> b!15233 (=> (not res!6190) (not e!8339))))

(assert (=> b!15233 (= res!6190 (not (isEmpty!273 (right!656 xs!637))))))

(declare-fun b!15235 () Bool)

(assert (=> b!15235 (= e!8339 (concInv!8 (right!656 xs!637)))))

(declare-fun b!15234 () Bool)

(declare-fun res!6192 () Bool)

(assert (=> b!15234 (=> (not res!6192) (not e!8339))))

(assert (=> b!15234 (= res!6192 (concInv!8 (left!653 xs!637)))))

(declare-fun d!11429 () Bool)

(declare-fun res!6191 () Bool)

(assert (=> d!11429 (=> res!6191 e!8340)))

(assert (=> d!11429 (= res!6191 (not (is-CC!8 xs!637)))))

(assert (=> d!11429 (= (concInv!8 xs!637) e!8340)))

(assert (= (and d!11429 (not res!6191)) b!15232))

(assert (= (and b!15232 res!6189) b!15233))

(assert (= (and b!15233 res!6190) b!15234))

(assert (= (and b!15234 res!6192) b!15235))

(declare-fun m!18735 () Bool)

(assert (=> b!15232 m!18735))

(declare-fun m!18737 () Bool)

(assert (=> b!15233 m!18737))

(declare-fun m!18739 () Bool)

(assert (=> b!15235 m!18739))

(declare-fun m!18741 () Bool)

(assert (=> b!15234 m!18741))

(assert (=> start!3078 d!11429))

(declare-fun b!15242 () Bool)

(declare-fun e!8343 () Bool)

(declare-fun tp!3703 () Bool)

(declare-fun tp!3704 () Bool)

(assert (=> b!15242 (= e!8343 (and tp!3703 tp!3704))))

(declare-fun b!15243 () Bool)

(assert (=> b!15243 (= e!8343 tp_is_empty!53)))

(assert (=> b!15172 (= tp!3696 e!8343)))

(assert (= (and b!15172 (is-CC!8 (left!653 xs!637))) b!15242))

(assert (= (and b!15172 (is-Single!8 (left!653 xs!637))) b!15243))

(declare-fun b!15244 () Bool)

(declare-fun e!8344 () Bool)

(declare-fun tp!3705 () Bool)

(declare-fun tp!3706 () Bool)

(assert (=> b!15244 (= e!8344 (and tp!3705 tp!3706))))

(declare-fun b!15245 () Bool)

(assert (=> b!15245 (= e!8344 tp_is_empty!53)))

(assert (=> b!15172 (= tp!3694 e!8344)))

(assert (= (and b!15172 (is-CC!8 (right!656 xs!637))) b!15244))

(assert (= (and b!15172 (is-Single!8 (right!656 xs!637))) b!15245))

(declare-fun b!15246 () Bool)

(declare-fun e!8345 () Bool)

(declare-fun tp!3707 () Bool)

(declare-fun tp!3708 () Bool)

(assert (=> b!15246 (= e!8345 (and tp!3707 tp!3708))))

(declare-fun b!15247 () Bool)

(assert (=> b!15247 (= e!8345 tp_is_empty!53)))

(assert (=> b!15173 (= tp!3697 e!8345)))

(assert (= (and b!15173 (is-CC!8 (left!653 (_2!51 res!5658)))) b!15246))

(assert (= (and b!15173 (is-Single!8 (left!653 (_2!51 res!5658)))) b!15247))

(declare-fun b!15248 () Bool)

(declare-fun e!8346 () Bool)

(declare-fun tp!3709 () Bool)

(declare-fun tp!3710 () Bool)

(assert (=> b!15248 (= e!8346 (and tp!3709 tp!3710))))

(declare-fun b!15249 () Bool)

(assert (=> b!15249 (= e!8346 tp_is_empty!53)))

(assert (=> b!15173 (= tp!3693 e!8346)))

(assert (= (and b!15173 (is-CC!8 (right!656 (_2!51 res!5658)))) b!15248))

(assert (= (and b!15173 (is-Single!8 (right!656 (_2!51 res!5658)))) b!15249))

(declare-fun b!15250 () Bool)

(declare-fun e!8347 () Bool)

(declare-fun tp!3711 () Bool)

(declare-fun tp!3712 () Bool)

(assert (=> b!15250 (= e!8347 (and tp!3711 tp!3712))))

(declare-fun b!15251 () Bool)

(assert (=> b!15251 (= e!8347 tp_is_empty!53)))

(assert (=> b!15168 (= tp!3698 e!8347)))

(assert (= (and b!15168 (is-CC!8 (left!653 (_1!51 res!5658)))) b!15250))

(assert (= (and b!15168 (is-Single!8 (left!653 (_1!51 res!5658)))) b!15251))

(declare-fun b!15252 () Bool)

(declare-fun e!8348 () Bool)

(declare-fun tp!3713 () Bool)

(declare-fun tp!3714 () Bool)

(assert (=> b!15252 (= e!8348 (and tp!3713 tp!3714))))

(declare-fun b!15253 () Bool)

(assert (=> b!15253 (= e!8348 tp_is_empty!53)))

(assert (=> b!15168 (= tp!3695 e!8348)))

(assert (= (and b!15168 (is-CC!8 (right!656 (_1!51 res!5658)))) b!15252))

(assert (= (and b!15168 (is-Single!8 (right!656 (_1!51 res!5658)))) b!15253))

(push 1)

(assert (not b!15204))

(assert (not b!15203))

(assert (not b!15182))

(assert (not b!15235))

(assert (not b!15219))

(assert (not b!15218))

(assert (not b!15217))

(assert (not b!15222))

(assert (not b!15193))

(assert (not b!15227))

(assert (not b!15232))

(assert (not b!15205))

(assert (not b!15221))

(assert (not b!15233))

(assert (not b!15248))

(assert (not b!15191))

(assert (not b!15216))

(assert (not b!15229))

(assert (not b!15220))

(assert (not b!15244))

(assert (not b!15200))

(assert tp_is_empty!53)

(assert (not b!15231))

(assert (not b!15250))

(assert (not b!15202))

(assert (not d!11409))

(assert (not b!15252))

(assert (not b!15194))

(assert (not b!15225))

(assert (not b!15228))

(assert (not b!15206))

(assert (not b!15215))

(assert (not b!15242))

(assert (not b!15226))

(assert (not b!15246))

(assert (not b!15234))

(assert (not b!15192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!11431 () Bool)

(assert (=> d!11431 (= (isEmpty!273 (left!653 (_1!51 res!5658))) (= (left!653 (_1!51 res!5658)) Empty!19))))

(assert (=> b!15191 d!11431))

(declare-fun b!15255 () Bool)

(declare-fun e!8349 () Int)

(declare-fun lt!2149 () Int)

(declare-fun lt!2148 () Int)

(assert (=> b!15255 (= e!8349 (+ 1 (ite (>= lt!2149 lt!2148) lt!2149 lt!2148)))))

(assert (=> b!15255 (= lt!2148 (level!8 (right!656 (left!653 (_1!51 res!5658)))))))

(assert (=> b!15255 (= lt!2149 (level!8 (left!653 (left!653 (_1!51 res!5658)))))))

(declare-fun d!11433 () Bool)

(declare-fun lt!2150 () Int)

(assert (=> d!11433 (>= lt!2150 0)))

(assert (=> d!11433 (= lt!2150 e!8349)))

(declare-fun c!4042 () Bool)

(assert (=> d!11433 (= c!4042 (or (is-Empty!19 (left!653 (_1!51 res!5658))) (is-Single!8 (left!653 (_1!51 res!5658)))))))

(assert (=> d!11433 (= (level!8 (left!653 (_1!51 res!5658))) lt!2150)))

(declare-fun b!15254 () Bool)

(assert (=> b!15254 (= e!8349 0)))

(assert (= (and d!11433 c!4042) b!15254))

(assert (= (and d!11433 (not c!4042)) b!15255))

(declare-fun m!18743 () Bool)

(assert (=> b!15255 m!18743))

(declare-fun m!18745 () Bool)

(assert (=> b!15255 m!18745))

(assert (=> b!15227 d!11433))

(declare-fun b!15257 () Bool)

(declare-fun e!8350 () Int)

(declare-fun lt!2152 () Int)

(declare-fun lt!2151 () Int)

(assert (=> b!15257 (= e!8350 (+ 1 (ite (>= lt!2152 lt!2151) lt!2152 lt!2151)))))

(assert (=> b!15257 (= lt!2151 (level!8 (right!656 (right!656 (_1!51 res!5658)))))))

(assert (=> b!15257 (= lt!2152 (level!8 (left!653 (right!656 (_1!51 res!5658)))))))

(declare-fun d!11435 () Bool)

(declare-fun lt!2153 () Int)

(assert (=> d!11435 (>= lt!2153 0)))

(assert (=> d!11435 (= lt!2153 e!8350)))

(declare-fun c!4043 () Bool)

(assert (=> d!11435 (= c!4043 (or (is-Empty!19 (right!656 (_1!51 res!5658))) (is-Single!8 (right!656 (_1!51 res!5658)))))))

(assert (=> d!11435 (= (level!8 (right!656 (_1!51 res!5658))) lt!2153)))

(declare-fun b!15256 () Bool)

(assert (=> b!15256 (= e!8350 0)))

(assert (= (and d!11435 c!4043) b!15256))

(assert (= (and d!11435 (not c!4043)) b!15257))

(declare-fun m!18747 () Bool)

(assert (=> b!15257 m!18747))

(declare-fun m!18749 () Bool)

(assert (=> b!15257 m!18749))

(assert (=> b!15227 d!11435))

(declare-fun b!15258 () Bool)

(declare-fun e!8352 () Bool)

(declare-fun e!8351 () Bool)

(assert (=> b!15258 (= e!8352 e!8351)))

(declare-fun res!6193 () Bool)

(assert (=> b!15258 (=> (not res!6193) (not e!8351))))

(assert (=> b!15258 (= res!6193 (not (isEmpty!273 (left!653 (right!656 xs!637)))))))

(declare-fun b!15259 () Bool)

(declare-fun res!6194 () Bool)

(assert (=> b!15259 (=> (not res!6194) (not e!8351))))

(assert (=> b!15259 (= res!6194 (not (isEmpty!273 (right!656 (right!656 xs!637)))))))

(declare-fun b!15261 () Bool)

(assert (=> b!15261 (= e!8351 (concInv!8 (right!656 (right!656 xs!637))))))

(declare-fun b!15260 () Bool)

(declare-fun res!6196 () Bool)

(assert (=> b!15260 (=> (not res!6196) (not e!8351))))

(assert (=> b!15260 (= res!6196 (concInv!8 (left!653 (right!656 xs!637))))))

(declare-fun d!11437 () Bool)

(declare-fun res!6195 () Bool)

(assert (=> d!11437 (=> res!6195 e!8352)))

(assert (=> d!11437 (= res!6195 (not (is-CC!8 (right!656 xs!637))))))

(assert (=> d!11437 (= (concInv!8 (right!656 xs!637)) e!8352)))

(assert (= (and d!11437 (not res!6195)) b!15258))

(assert (= (and b!15258 res!6193) b!15259))

(assert (= (and b!15259 res!6194) b!15260))

(assert (= (and b!15260 res!6196) b!15261))

(declare-fun m!18751 () Bool)

(assert (=> b!15258 m!18751))

(declare-fun m!18753 () Bool)

(assert (=> b!15259 m!18753))

(declare-fun m!18755 () Bool)

(assert (=> b!15261 m!18755))

(declare-fun m!18757 () Bool)

(assert (=> b!15260 m!18757))

(assert (=> b!15235 d!11437))

(declare-fun b!15263 () Bool)

(declare-fun e!8353 () Int)

(declare-fun lt!2155 () Int)

(declare-fun lt!2154 () Int)

(assert (=> b!15263 (= e!8353 (+ 1 (ite (>= lt!2155 lt!2154) lt!2155 lt!2154)))))

(assert (=> b!15263 (= lt!2154 (level!8 (right!656 (left!653 xs!637))))))

(assert (=> b!15263 (= lt!2155 (level!8 (left!653 (left!653 xs!637))))))

(declare-fun d!11439 () Bool)

(declare-fun lt!2156 () Int)

(assert (=> d!11439 (>= lt!2156 0)))

(assert (=> d!11439 (= lt!2156 e!8353)))

(declare-fun c!4044 () Bool)

(assert (=> d!11439 (= c!4044 (or (is-Empty!19 (left!653 xs!637)) (is-Single!8 (left!653 xs!637))))))

(assert (=> d!11439 (= (level!8 (left!653 xs!637)) lt!2156)))

(declare-fun b!15262 () Bool)

(assert (=> b!15262 (= e!8353 0)))

(assert (= (and d!11439 c!4044) b!15262))

(assert (= (and d!11439 (not c!4044)) b!15263))

(declare-fun m!18759 () Bool)

(assert (=> b!15263 m!18759))

(declare-fun m!18761 () Bool)

(assert (=> b!15263 m!18761))

(assert (=> b!15219 d!11439))

(declare-fun b!15265 () Bool)

(declare-fun e!8354 () Int)

(declare-fun lt!2158 () Int)

(declare-fun lt!2157 () Int)

(assert (=> b!15265 (= e!8354 (+ 1 (ite (>= lt!2158 lt!2157) lt!2158 lt!2157)))))

(assert (=> b!15265 (= lt!2157 (level!8 (right!656 (right!656 xs!637))))))

(assert (=> b!15265 (= lt!2158 (level!8 (left!653 (right!656 xs!637))))))

(declare-fun d!11441 () Bool)

(declare-fun lt!2159 () Int)

(assert (=> d!11441 (>= lt!2159 0)))

(assert (=> d!11441 (= lt!2159 e!8354)))

(declare-fun c!4045 () Bool)

(assert (=> d!11441 (= c!4045 (or (is-Empty!19 (right!656 xs!637)) (is-Single!8 (right!656 xs!637))))))

(assert (=> d!11441 (= (level!8 (right!656 xs!637)) lt!2159)))

(declare-fun b!15264 () Bool)

(assert (=> b!15264 (= e!8354 0)))

(assert (= (and d!11441 c!4045) b!15264))

(assert (= (and d!11441 (not c!4045)) b!15265))

(declare-fun m!18763 () Bool)

(assert (=> b!15265 m!18763))

(declare-fun m!18765 () Bool)

(assert (=> b!15265 m!18765))

(assert (=> b!15219 d!11441))

(declare-fun d!11443 () Bool)

(declare-fun res!6197 () Bool)

(declare-fun e!8356 () Bool)

(assert (=> d!11443 (=> res!6197 e!8356)))

(assert (=> d!11443 (= res!6197 (not (is-CC!8 (right!656 (_1!51 res!5658)))))))

(assert (=> d!11443 (= (balanced!9 (right!656 (_1!51 res!5658))) e!8356)))

(declare-fun b!15268 () Bool)

(declare-fun res!6200 () Bool)

(declare-fun e!8355 () Bool)

(assert (=> b!15268 (=> (not res!6200) (not e!8355))))

(assert (=> b!15268 (= res!6200 (balanced!9 (left!653 (right!656 (_1!51 res!5658)))))))

(declare-fun b!15266 () Bool)

(assert (=> b!15266 (= e!8356 e!8355)))

(declare-fun res!6199 () Bool)

(assert (=> b!15266 (=> (not res!6199) (not e!8355))))

(assert (=> b!15266 (= res!6199 (>= (- (level!8 (left!653 (right!656 (_1!51 res!5658)))) (level!8 (right!656 (right!656 (_1!51 res!5658))))) (- 1)))))

(declare-fun b!15269 () Bool)

(assert (=> b!15269 (= e!8355 (balanced!9 (right!656 (right!656 (_1!51 res!5658)))))))

(declare-fun b!15267 () Bool)

(declare-fun res!6198 () Bool)

(assert (=> b!15267 (=> (not res!6198) (not e!8355))))

(assert (=> b!15267 (= res!6198 (<= (- (level!8 (left!653 (right!656 (_1!51 res!5658)))) (level!8 (right!656 (right!656 (_1!51 res!5658))))) 1))))

(assert (= (and d!11443 (not res!6197)) b!15266))

(assert (= (and b!15266 res!6199) b!15267))

(assert (= (and b!15267 res!6198) b!15268))

(assert (= (and b!15268 res!6200) b!15269))

(declare-fun m!18767 () Bool)

(assert (=> b!15268 m!18767))

(assert (=> b!15266 m!18749))

(assert (=> b!15266 m!18747))

(declare-fun m!18769 () Bool)

(assert (=> b!15269 m!18769))

(assert (=> b!15267 m!18749))

(assert (=> b!15267 m!18747))

(assert (=> b!15229 d!11443))

(declare-fun d!11445 () Bool)

(assert (=> d!11445 (= (isEmpty!273 (right!656 (_1!51 res!5658))) (= (right!656 (_1!51 res!5658)) Empty!19))))

(assert (=> b!15192 d!11445))

(declare-fun d!11447 () Bool)

(declare-fun res!6201 () Bool)

(declare-fun e!8358 () Bool)

(assert (=> d!11447 (=> res!6201 e!8358)))

(assert (=> d!11447 (= res!6201 (not (is-CC!8 (left!653 (_2!51 res!5658)))))))

(assert (=> d!11447 (= (balanced!9 (left!653 (_2!51 res!5658))) e!8358)))

(declare-fun b!15272 () Bool)

(declare-fun res!6204 () Bool)

(declare-fun e!8357 () Bool)

(assert (=> b!15272 (=> (not res!6204) (not e!8357))))

(assert (=> b!15272 (= res!6204 (balanced!9 (left!653 (left!653 (_2!51 res!5658)))))))

(declare-fun b!15270 () Bool)

(assert (=> b!15270 (= e!8358 e!8357)))

(declare-fun res!6203 () Bool)

(assert (=> b!15270 (=> (not res!6203) (not e!8357))))

(assert (=> b!15270 (= res!6203 (>= (- (level!8 (left!653 (left!653 (_2!51 res!5658)))) (level!8 (right!656 (left!653 (_2!51 res!5658))))) (- 1)))))

(declare-fun b!15273 () Bool)

(assert (=> b!15273 (= e!8357 (balanced!9 (right!656 (left!653 (_2!51 res!5658)))))))

(declare-fun b!15271 () Bool)

(declare-fun res!6202 () Bool)

(assert (=> b!15271 (=> (not res!6202) (not e!8357))))

(assert (=> b!15271 (= res!6202 (<= (- (level!8 (left!653 (left!653 (_2!51 res!5658)))) (level!8 (right!656 (left!653 (_2!51 res!5658))))) 1))))

(assert (= (and d!11447 (not res!6201)) b!15270))

(assert (= (and b!15270 res!6203) b!15271))

(assert (= (and b!15271 res!6202) b!15272))

(assert (= (and b!15272 res!6204) b!15273))

(declare-fun m!18771 () Bool)

(assert (=> b!15272 m!18771))

(declare-fun m!18773 () Bool)

(assert (=> b!15270 m!18773))

(declare-fun m!18775 () Bool)

(assert (=> b!15270 m!18775))

(declare-fun m!18777 () Bool)

(assert (=> b!15273 m!18777))

(assert (=> b!15271 m!18773))

(assert (=> b!15271 m!18775))

(assert (=> b!15217 d!11447))

(assert (=> b!15200 d!11441))

(assert (=> b!15200 d!11439))

(declare-fun b!15274 () Bool)

(declare-fun e!8360 () Bool)

(declare-fun e!8359 () Bool)

(assert (=> b!15274 (= e!8360 e!8359)))

(declare-fun res!6205 () Bool)

(assert (=> b!15274 (=> (not res!6205) (not e!8359))))

(assert (=> b!15274 (= res!6205 (not (isEmpty!273 (left!653 (right!656 (_2!51 res!5658))))))))

(declare-fun b!15275 () Bool)

(declare-fun res!6206 () Bool)

(assert (=> b!15275 (=> (not res!6206) (not e!8359))))

(assert (=> b!15275 (= res!6206 (not (isEmpty!273 (right!656 (right!656 (_2!51 res!5658))))))))

(declare-fun b!15277 () Bool)

(assert (=> b!15277 (= e!8359 (concInv!8 (right!656 (right!656 (_2!51 res!5658)))))))

(declare-fun b!15276 () Bool)

(declare-fun res!6208 () Bool)

(assert (=> b!15276 (=> (not res!6208) (not e!8359))))

(assert (=> b!15276 (= res!6208 (concInv!8 (left!653 (right!656 (_2!51 res!5658)))))))

(declare-fun d!11449 () Bool)

(declare-fun res!6207 () Bool)

(assert (=> d!11449 (=> res!6207 e!8360)))

(assert (=> d!11449 (= res!6207 (not (is-CC!8 (right!656 (_2!51 res!5658)))))))

(assert (=> d!11449 (= (concInv!8 (right!656 (_2!51 res!5658))) e!8360)))

(assert (= (and d!11449 (not res!6207)) b!15274))

(assert (= (and b!15274 res!6205) b!15275))

(assert (= (and b!15275 res!6206) b!15276))

(assert (= (and b!15276 res!6208) b!15277))

(declare-fun m!18779 () Bool)

(assert (=> b!15274 m!18779))

(declare-fun m!18781 () Bool)

(assert (=> b!15275 m!18781))

(declare-fun m!18783 () Bool)

(assert (=> b!15277 m!18783))

(declare-fun m!18785 () Bool)

(assert (=> b!15276 m!18785))

(assert (=> b!15206 d!11449))

(declare-fun d!11451 () Bool)

(declare-fun res!6209 () Bool)

(declare-fun e!8362 () Bool)

(assert (=> d!11451 (=> res!6209 e!8362)))

(assert (=> d!11451 (= res!6209 (not (is-CC!8 (right!656 (_2!51 res!5658)))))))

(assert (=> d!11451 (= (balanced!9 (right!656 (_2!51 res!5658))) e!8362)))

(declare-fun b!15280 () Bool)

(declare-fun res!6212 () Bool)

(declare-fun e!8361 () Bool)

(assert (=> b!15280 (=> (not res!6212) (not e!8361))))

(assert (=> b!15280 (= res!6212 (balanced!9 (left!653 (right!656 (_2!51 res!5658)))))))

(declare-fun b!15278 () Bool)

(assert (=> b!15278 (= e!8362 e!8361)))

(declare-fun res!6211 () Bool)

(assert (=> b!15278 (=> (not res!6211) (not e!8361))))

(assert (=> b!15278 (= res!6211 (>= (- (level!8 (left!653 (right!656 (_2!51 res!5658)))) (level!8 (right!656 (right!656 (_2!51 res!5658))))) (- 1)))))

(declare-fun b!15281 () Bool)

(assert (=> b!15281 (= e!8361 (balanced!9 (right!656 (right!656 (_2!51 res!5658)))))))

(declare-fun b!15279 () Bool)

(declare-fun res!6210 () Bool)

(assert (=> b!15279 (=> (not res!6210) (not e!8361))))

(assert (=> b!15279 (= res!6210 (<= (- (level!8 (left!653 (right!656 (_2!51 res!5658)))) (level!8 (right!656 (right!656 (_2!51 res!5658))))) 1))))

(assert (= (and d!11451 (not res!6209)) b!15278))

(assert (= (and b!15278 res!6211) b!15279))

(assert (= (and b!15279 res!6210) b!15280))

(assert (= (and b!15280 res!6212) b!15281))

(declare-fun m!18787 () Bool)

(assert (=> b!15280 m!18787))

(declare-fun m!18789 () Bool)

(assert (=> b!15278 m!18789))

(declare-fun m!18791 () Bool)

(assert (=> b!15278 m!18791))

(declare-fun m!18793 () Bool)

(assert (=> b!15281 m!18793))

(assert (=> b!15279 m!18789))

(assert (=> b!15279 m!18791))

(assert (=> b!15218 d!11451))

(declare-fun d!11453 () Bool)

(declare-fun lt!2162 () List!322)

(declare-fun size!188 (List!322) Int)

(declare-fun size!189 (Conc!9) Int)

(assert (=> d!11453 (= (size!188 lt!2162) (size!189 (_1!51 res!5658)))))

(declare-fun e!8367 () List!322)

(assert (=> d!11453 (= lt!2162 e!8367)))

(declare-fun c!4051 () Bool)

(assert (=> d!11453 (= c!4051 (is-Empty!19 (_1!51 res!5658)))))

(assert (=> d!11453 (= (toList!82 (_1!51 res!5658)) lt!2162)))

(declare-fun b!15292 () Bool)

(declare-fun e!8368 () List!322)

(assert (=> b!15292 (= e!8368 (Cons!316 (x!8700 (_1!51 res!5658)) Nil!317))))

(declare-fun b!15293 () Bool)

(declare-fun ++!7 (List!322 List!322) List!322)

(assert (=> b!15293 (= e!8368 (++!7 (toList!82 (left!653 (_1!51 res!5658))) (toList!82 (right!656 (_1!51 res!5658)))))))

(declare-fun b!15290 () Bool)

(assert (=> b!15290 (= e!8367 Nil!317)))

(declare-fun b!15291 () Bool)

(assert (=> b!15291 (= e!8367 e!8368)))

(declare-fun c!4050 () Bool)

(assert (=> b!15291 (= c!4050 (is-Single!8 (_1!51 res!5658)))))

(assert (= (and b!15291 c!4050) b!15292))

(assert (= (and b!15291 (not c!4050)) b!15293))

(assert (= (and d!11453 c!4051) b!15290))

(assert (= (and d!11453 (not c!4051)) b!15291))

(declare-fun m!18795 () Bool)

(assert (=> d!11453 m!18795))

(declare-fun m!18797 () Bool)

(assert (=> d!11453 m!18797))

(declare-fun m!18799 () Bool)

(assert (=> b!15293 m!18799))

(declare-fun m!18801 () Bool)

(assert (=> b!15293 m!18801))

(assert (=> b!15293 m!18799))

(assert (=> b!15293 m!18801))

(declare-fun m!18803 () Bool)

(assert (=> b!15293 m!18803))

(assert (=> d!11409 d!11453))

(declare-fun b!15308 () Bool)

(declare-fun e!8378 () List!322)

(assert (=> b!15308 (= e!8378 Nil!317)))

(declare-fun d!11455 () Bool)

(declare-fun e!8379 () Bool)

(assert (=> d!11455 e!8379))

(declare-fun res!6217 () Bool)

(assert (=> d!11455 (=> (not res!6217) (not e!8379))))

(declare-fun lt!2165 () List!322)

(declare-fun content!52 (List!322) (Set T!1709))

(assert (=> d!11455 (= res!6217 (subset (content!52 lt!2165) (content!52 (toList!82 xs!637))))))

(assert (=> d!11455 (= lt!2165 e!8378)))

(declare-fun c!4060 () Bool)

(assert (=> d!11455 (= c!4060 (or (is-Nil!317 (toList!82 xs!637)) (<= n!315 0)))))

(assert (=> d!11455 (= (take!7 (toList!82 xs!637) n!315) lt!2165)))

(declare-fun b!15309 () Bool)

(assert (=> b!15309 (= e!8378 (Cons!316 (h!230 (toList!82 xs!637)) (take!7 (t!4275 (toList!82 xs!637)) (- n!315 1))))))

(declare-fun b!15310 () Bool)

(declare-fun e!8380 () Int)

(assert (=> b!15310 (= e!8380 (size!188 (toList!82 xs!637)))))

(declare-fun b!15311 () Bool)

(assert (=> b!15311 (= e!8380 n!315)))

(declare-fun b!15312 () Bool)

(declare-fun e!8377 () Int)

(assert (=> b!15312 (= e!8377 0)))

(declare-fun b!15313 () Bool)

(assert (=> b!15313 (= e!8377 e!8380)))

(declare-fun c!4059 () Bool)

(assert (=> b!15313 (= c!4059 (>= n!315 (size!188 (toList!82 xs!637))))))

(declare-fun b!15314 () Bool)

(assert (=> b!15314 (= e!8379 (= (size!188 lt!2165) e!8377))))

(declare-fun c!4058 () Bool)

(assert (=> b!15314 (= c!4058 (<= n!315 0))))

(assert (= (and d!11455 c!4060) b!15308))

(assert (= (and d!11455 (not c!4060)) b!15309))

(assert (= (and d!11455 res!6217) b!15314))

(assert (= (and b!15313 c!4059) b!15310))

(assert (= (and b!15313 (not c!4059)) b!15311))

(assert (= (and b!15314 c!4058) b!15312))

(assert (= (and b!15314 (not c!4058)) b!15313))

(declare-fun m!18805 () Bool)

(assert (=> b!15314 m!18805))

(declare-fun m!18807 () Bool)

(assert (=> d!11455 m!18807))

(assert (=> d!11455 m!18681))

(declare-fun m!18809 () Bool)

(assert (=> d!11455 m!18809))

(assert (=> b!15313 m!18681))

(declare-fun m!18811 () Bool)

(assert (=> b!15313 m!18811))

(declare-fun m!18813 () Bool)

(assert (=> b!15309 m!18813))

(assert (=> b!15310 m!18681))

(assert (=> b!15310 m!18811))

(assert (=> d!11409 d!11455))

(declare-fun d!11457 () Bool)

(declare-fun lt!2166 () List!322)

(assert (=> d!11457 (= (size!188 lt!2166) (size!189 xs!637))))

(declare-fun e!8381 () List!322)

(assert (=> d!11457 (= lt!2166 e!8381)))

(declare-fun c!4062 () Bool)

(assert (=> d!11457 (= c!4062 (is-Empty!19 xs!637))))

(assert (=> d!11457 (= (toList!82 xs!637) lt!2166)))

(declare-fun b!15317 () Bool)

(declare-fun e!8382 () List!322)

(assert (=> b!15317 (= e!8382 (Cons!316 (x!8700 xs!637) Nil!317))))

(declare-fun b!15318 () Bool)

(assert (=> b!15318 (= e!8382 (++!7 (toList!82 (left!653 xs!637)) (toList!82 (right!656 xs!637))))))

(declare-fun b!15315 () Bool)

(assert (=> b!15315 (= e!8381 Nil!317)))

(declare-fun b!15316 () Bool)

(assert (=> b!15316 (= e!8381 e!8382)))

(declare-fun c!4061 () Bool)

(assert (=> b!15316 (= c!4061 (is-Single!8 xs!637))))

(assert (= (and b!15316 c!4061) b!15317))

(assert (= (and b!15316 (not c!4061)) b!15318))

(assert (= (and d!11457 c!4062) b!15315))

(assert (= (and d!11457 (not c!4062)) b!15316))

(declare-fun m!18815 () Bool)

(assert (=> d!11457 m!18815))

(declare-fun m!18817 () Bool)

(assert (=> d!11457 m!18817))

(assert (=> b!15318 m!18721))

(assert (=> b!15318 m!18723))

(assert (=> b!15318 m!18721))

(assert (=> b!15318 m!18723))

(declare-fun m!18819 () Bool)

(assert (=> b!15318 m!18819))

(assert (=> d!11409 d!11457))

(declare-fun d!11459 () Bool)

(declare-fun res!6218 () Bool)

(declare-fun e!8384 () Bool)

(assert (=> d!11459 (=> res!6218 e!8384)))

(assert (=> d!11459 (= res!6218 (not (is-CC!8 (left!653 xs!637))))))

(assert (=> d!11459 (= (balanced!9 (left!653 xs!637)) e!8384)))

(declare-fun b!15321 () Bool)

(declare-fun res!6221 () Bool)

(declare-fun e!8383 () Bool)

(assert (=> b!15321 (=> (not res!6221) (not e!8383))))

(assert (=> b!15321 (= res!6221 (balanced!9 (left!653 (left!653 xs!637))))))

(declare-fun b!15319 () Bool)

(assert (=> b!15319 (= e!8384 e!8383)))

(declare-fun res!6220 () Bool)

(assert (=> b!15319 (=> (not res!6220) (not e!8383))))

(assert (=> b!15319 (= res!6220 (>= (- (level!8 (left!653 (left!653 xs!637))) (level!8 (right!656 (left!653 xs!637)))) (- 1)))))

(declare-fun b!15322 () Bool)

(assert (=> b!15322 (= e!8383 (balanced!9 (right!656 (left!653 xs!637))))))

(declare-fun b!15320 () Bool)

(declare-fun res!6219 () Bool)

(assert (=> b!15320 (=> (not res!6219) (not e!8383))))

(assert (=> b!15320 (= res!6219 (<= (- (level!8 (left!653 (left!653 xs!637))) (level!8 (right!656 (left!653 xs!637)))) 1))))

(assert (= (and d!11459 (not res!6218)) b!15319))

(assert (= (and b!15319 res!6220) b!15320))

(assert (= (and b!15320 res!6219) b!15321))

(assert (= (and b!15321 res!6221) b!15322))

(declare-fun m!18821 () Bool)

(assert (=> b!15321 m!18821))

(assert (=> b!15319 m!18761))

(assert (=> b!15319 m!18759))

(declare-fun m!18823 () Bool)

(assert (=> b!15322 m!18823))

(assert (=> b!15320 m!18761))

(assert (=> b!15320 m!18759))

(assert (=> b!15221 d!11459))

(assert (=> b!15226 d!11433))

(assert (=> b!15226 d!11435))

(declare-fun b!15323 () Bool)

(declare-fun e!8386 () Bool)

(declare-fun e!8385 () Bool)

(assert (=> b!15323 (= e!8386 e!8385)))

(declare-fun res!6222 () Bool)

(assert (=> b!15323 (=> (not res!6222) (not e!8385))))

(assert (=> b!15323 (= res!6222 (not (isEmpty!273 (left!653 (left!653 xs!637)))))))

(declare-fun b!15324 () Bool)

(declare-fun res!6223 () Bool)

(assert (=> b!15324 (=> (not res!6223) (not e!8385))))

(assert (=> b!15324 (= res!6223 (not (isEmpty!273 (right!656 (left!653 xs!637)))))))

(declare-fun b!15326 () Bool)

(assert (=> b!15326 (= e!8385 (concInv!8 (right!656 (left!653 xs!637))))))

(declare-fun b!15325 () Bool)

(declare-fun res!6225 () Bool)

(assert (=> b!15325 (=> (not res!6225) (not e!8385))))

(assert (=> b!15325 (= res!6225 (concInv!8 (left!653 (left!653 xs!637))))))

(declare-fun d!11461 () Bool)

(declare-fun res!6224 () Bool)

(assert (=> d!11461 (=> res!6224 e!8386)))

(assert (=> d!11461 (= res!6224 (not (is-CC!8 (left!653 xs!637))))))

(assert (=> d!11461 (= (concInv!8 (left!653 xs!637)) e!8386)))

(assert (= (and d!11461 (not res!6224)) b!15323))

(assert (= (and b!15323 res!6222) b!15324))

(assert (= (and b!15324 res!6223) b!15325))

(assert (= (and b!15325 res!6225) b!15326))

(declare-fun m!18825 () Bool)

(assert (=> b!15323 m!18825))

(declare-fun m!18827 () Bool)

(assert (=> b!15324 m!18827))

(declare-fun m!18829 () Bool)

(assert (=> b!15326 m!18829))

(declare-fun m!18831 () Bool)

(assert (=> b!15325 m!18831))

(assert (=> b!15234 d!11461))

(declare-fun d!11463 () Bool)

(assert (=> d!11463 (= (isEmpty!273 (left!653 (_2!51 res!5658))) (= (left!653 (_2!51 res!5658)) Empty!19))))

(assert (=> b!15203 d!11463))

(declare-fun b!15347 () Bool)

(declare-fun e!8399 () List!322)

(assert (=> b!15347 (= e!8399 (toList!82 (left!653 xs!637)))))

(declare-fun b!15348 () Bool)

(declare-fun e!8400 () List!322)

(assert (=> b!15348 (= e!8400 (++!7 (drop!5 (toList!82 (left!653 xs!637)) n!315) (toList!82 (right!656 xs!637))))))

(declare-fun b!15349 () Bool)

(declare-fun e!8402 () List!322)

(assert (=> b!15349 (= e!8402 (drop!5 (toList!82 (right!656 xs!637)) (- n!315 (size!188 (toList!82 (left!653 xs!637))))))))

(declare-fun b!15350 () Bool)

(assert (=> b!15350 (= e!8400 e!8402)))

(declare-fun c!4073 () Bool)

(assert (=> b!15350 (= c!4073 (> n!315 (size!188 (toList!82 (left!653 xs!637)))))))

(declare-fun b!15351 () Bool)

(declare-fun e!8403 () List!322)

(assert (=> b!15351 (= e!8403 e!8399)))

(declare-fun c!4072 () Bool)

(assert (=> b!15351 (= c!4072 (> n!315 (size!188 (toList!82 (left!653 xs!637)))))))

(declare-fun b!15352 () Bool)

(declare-fun e!8401 () Bool)

(assert (=> b!15352 (= e!8401 (appendTakeDrop!3 (t!4275 (toList!82 (left!653 xs!637))) (toList!82 (right!656 xs!637)) (- n!315 1)))))

(declare-fun e!8404 () Bool)

(declare-fun b!15353 () Bool)

(assert (=> b!15353 (= e!8404 (= (drop!5 (++!7 (toList!82 (left!653 xs!637)) (toList!82 (right!656 xs!637))) n!315) e!8400))))

(declare-fun c!4074 () Bool)

(assert (=> b!15353 (= c!4074 (< n!315 (size!188 (toList!82 (left!653 xs!637)))))))

(declare-fun b!15354 () Bool)

(assert (=> b!15354 (= e!8403 (take!7 (toList!82 (left!653 xs!637)) n!315))))

(declare-fun d!11465 () Bool)

(assert (=> d!11465 e!8404))

(declare-fun res!6237 () Bool)

(assert (=> d!11465 (=> (not res!6237) (not e!8404))))

(assert (=> d!11465 (= res!6237 (= (take!7 (++!7 (toList!82 (left!653 xs!637)) (toList!82 (right!656 xs!637))) n!315) e!8403))))

(declare-fun c!4071 () Bool)

(assert (=> d!11465 (= c!4071 (< n!315 (size!188 (toList!82 (left!653 xs!637)))))))

(declare-fun lt!2169 () Bool)

(assert (=> d!11465 (= lt!2169 e!8401)))

(declare-fun res!6238 () Bool)

(assert (=> d!11465 (=> res!6238 e!8401)))

(assert (=> d!11465 (= res!6238 (or (is-Nil!317 (toList!82 (left!653 xs!637))) (<= n!315 0)))))

(assert (=> d!11465 (= (appendTakeDrop!3 (toList!82 (left!653 xs!637)) (toList!82 (right!656 xs!637)) n!315) true)))

(declare-fun b!15355 () Bool)

(assert (=> b!15355 (= e!8399 (++!7 (toList!82 (left!653 xs!637)) (take!7 (toList!82 (right!656 xs!637)) (- n!315 (size!188 (toList!82 (left!653 xs!637)))))))))

(declare-fun b!15356 () Bool)

(assert (=> b!15356 (= e!8402 (toList!82 (right!656 xs!637)))))

(assert (= (and d!11465 (not res!6238)) b!15352))

(assert (= (and b!15351 c!4072) b!15355))

(assert (= (and b!15351 (not c!4072)) b!15347))

(assert (= (and d!11465 c!4071) b!15354))

(assert (= (and d!11465 (not c!4071)) b!15351))

(assert (= (and d!11465 res!6237) b!15353))

(assert (= (and b!15350 c!4073) b!15349))

(assert (= (and b!15350 (not c!4073)) b!15356))

(assert (= (and b!15353 c!4074) b!15348))

(assert (= (and b!15353 (not c!4074)) b!15350))

(assert (=> b!15351 m!18721))

(declare-fun m!18833 () Bool)

(assert (=> b!15351 m!18833))

(assert (=> b!15349 m!18721))

(assert (=> b!15349 m!18833))

(assert (=> b!15349 m!18723))

(declare-fun m!18835 () Bool)

(assert (=> b!15349 m!18835))

(assert (=> b!15353 m!18721))

(assert (=> b!15353 m!18723))

(assert (=> b!15353 m!18819))

(assert (=> b!15353 m!18819))

(declare-fun m!18837 () Bool)

(assert (=> b!15353 m!18837))

(assert (=> b!15353 m!18721))

(assert (=> b!15353 m!18833))

(assert (=> d!11465 m!18721))

(assert (=> d!11465 m!18723))

(assert (=> d!11465 m!18819))

(assert (=> d!11465 m!18819))

(declare-fun m!18839 () Bool)

(assert (=> d!11465 m!18839))

(assert (=> d!11465 m!18721))

(assert (=> d!11465 m!18833))

(assert (=> b!15354 m!18721))

(declare-fun m!18841 () Bool)

(assert (=> b!15354 m!18841))

(assert (=> b!15355 m!18721))

(assert (=> b!15355 m!18833))

(assert (=> b!15355 m!18723))

(declare-fun m!18843 () Bool)

(assert (=> b!15355 m!18843))

(assert (=> b!15355 m!18721))

(assert (=> b!15355 m!18843))

(declare-fun m!18845 () Bool)

(assert (=> b!15355 m!18845))

(assert (=> b!15348 m!18721))

(declare-fun m!18847 () Bool)

(assert (=> b!15348 m!18847))

(assert (=> b!15348 m!18847))

(assert (=> b!15348 m!18723))

(declare-fun m!18849 () Bool)

(assert (=> b!15348 m!18849))

(assert (=> b!15352 m!18723))

(declare-fun m!18851 () Bool)

(assert (=> b!15352 m!18851))

(assert (=> b!15350 m!18721))

(assert (=> b!15350 m!18833))

(assert (=> b!15225 d!11465))

(declare-fun d!11467 () Bool)

(declare-fun lt!2170 () List!322)

(assert (=> d!11467 (= (size!188 lt!2170) (size!189 (left!653 xs!637)))))

(declare-fun e!8405 () List!322)

(assert (=> d!11467 (= lt!2170 e!8405)))

(declare-fun c!4076 () Bool)

(assert (=> d!11467 (= c!4076 (is-Empty!19 (left!653 xs!637)))))

(assert (=> d!11467 (= (toList!82 (left!653 xs!637)) lt!2170)))

(declare-fun b!15359 () Bool)

(declare-fun e!8406 () List!322)

(assert (=> b!15359 (= e!8406 (Cons!316 (x!8700 (left!653 xs!637)) Nil!317))))

(declare-fun b!15360 () Bool)

(assert (=> b!15360 (= e!8406 (++!7 (toList!82 (left!653 (left!653 xs!637))) (toList!82 (right!656 (left!653 xs!637)))))))

(declare-fun b!15357 () Bool)

(assert (=> b!15357 (= e!8405 Nil!317)))

(declare-fun b!15358 () Bool)

(assert (=> b!15358 (= e!8405 e!8406)))

(declare-fun c!4075 () Bool)

(assert (=> b!15358 (= c!4075 (is-Single!8 (left!653 xs!637)))))

(assert (= (and b!15358 c!4075) b!15359))

(assert (= (and b!15358 (not c!4075)) b!15360))

(assert (= (and d!11467 c!4076) b!15357))

(assert (= (and d!11467 (not c!4076)) b!15358))

(declare-fun m!18853 () Bool)

(assert (=> d!11467 m!18853))

(declare-fun m!18855 () Bool)

(assert (=> d!11467 m!18855))

(declare-fun m!18857 () Bool)

(assert (=> b!15360 m!18857))

(declare-fun m!18859 () Bool)

(assert (=> b!15360 m!18859))

(assert (=> b!15360 m!18857))

(assert (=> b!15360 m!18859))

(declare-fun m!18861 () Bool)

(assert (=> b!15360 m!18861))

(assert (=> b!15225 d!11467))

(declare-fun d!11469 () Bool)

(declare-fun lt!2171 () List!322)

(assert (=> d!11469 (= (size!188 lt!2171) (size!189 (right!656 xs!637)))))

(declare-fun e!8407 () List!322)

(assert (=> d!11469 (= lt!2171 e!8407)))

(declare-fun c!4078 () Bool)

(assert (=> d!11469 (= c!4078 (is-Empty!19 (right!656 xs!637)))))

(assert (=> d!11469 (= (toList!82 (right!656 xs!637)) lt!2171)))

(declare-fun b!15363 () Bool)

(declare-fun e!8408 () List!322)

(assert (=> b!15363 (= e!8408 (Cons!316 (x!8700 (right!656 xs!637)) Nil!317))))

(declare-fun b!15364 () Bool)

(assert (=> b!15364 (= e!8408 (++!7 (toList!82 (left!653 (right!656 xs!637))) (toList!82 (right!656 (right!656 xs!637)))))))

(declare-fun b!15361 () Bool)

(assert (=> b!15361 (= e!8407 Nil!317)))

(declare-fun b!15362 () Bool)

(assert (=> b!15362 (= e!8407 e!8408)))

(declare-fun c!4077 () Bool)

(assert (=> b!15362 (= c!4077 (is-Single!8 (right!656 xs!637)))))

(assert (= (and b!15362 c!4077) b!15363))

(assert (= (and b!15362 (not c!4077)) b!15364))

(assert (= (and d!11469 c!4078) b!15361))

(assert (= (and d!11469 (not c!4078)) b!15362))

(declare-fun m!18863 () Bool)

(assert (=> d!11469 m!18863))

(declare-fun m!18865 () Bool)

(assert (=> d!11469 m!18865))

(declare-fun m!18867 () Bool)

(assert (=> b!15364 m!18867))

(declare-fun m!18869 () Bool)

(assert (=> b!15364 m!18869))

(assert (=> b!15364 m!18867))

(assert (=> b!15364 m!18869))

(declare-fun m!18871 () Bool)

(assert (=> b!15364 m!18871))

(assert (=> b!15225 d!11469))

(declare-fun d!11471 () Bool)

(assert (=> d!11471 (= (isEmpty!273 (right!656 xs!637)) (= (right!656 xs!637) Empty!19))))

(assert (=> b!15233 d!11471))

(declare-fun d!11473 () Bool)

(declare-fun res!6239 () Bool)

(declare-fun e!8410 () Bool)

(assert (=> d!11473 (=> res!6239 e!8410)))

(assert (=> d!11473 (= res!6239 (not (is-CC!8 (right!656 xs!637))))))

(assert (=> d!11473 (= (balanced!9 (right!656 xs!637)) e!8410)))

(declare-fun b!15367 () Bool)

(declare-fun res!6242 () Bool)

(declare-fun e!8409 () Bool)

(assert (=> b!15367 (=> (not res!6242) (not e!8409))))

(assert (=> b!15367 (= res!6242 (balanced!9 (left!653 (right!656 xs!637))))))

(declare-fun b!15365 () Bool)

(assert (=> b!15365 (= e!8410 e!8409)))

(declare-fun res!6241 () Bool)

(assert (=> b!15365 (=> (not res!6241) (not e!8409))))

(assert (=> b!15365 (= res!6241 (>= (- (level!8 (left!653 (right!656 xs!637))) (level!8 (right!656 (right!656 xs!637)))) (- 1)))))

(declare-fun b!15368 () Bool)

(assert (=> b!15368 (= e!8409 (balanced!9 (right!656 (right!656 xs!637))))))

(declare-fun b!15366 () Bool)

(declare-fun res!6240 () Bool)

(assert (=> b!15366 (=> (not res!6240) (not e!8409))))

(assert (=> b!15366 (= res!6240 (<= (- (level!8 (left!653 (right!656 xs!637))) (level!8 (right!656 (right!656 xs!637)))) 1))))

(assert (= (and d!11473 (not res!6239)) b!15365))

(assert (= (and b!15365 res!6241) b!15366))

(assert (= (and b!15366 res!6240) b!15367))

(assert (= (and b!15367 res!6242) b!15368))

(declare-fun m!18873 () Bool)

(assert (=> b!15367 m!18873))

(assert (=> b!15365 m!18765))

(assert (=> b!15365 m!18763))

(declare-fun m!18875 () Bool)

(assert (=> b!15368 m!18875))

(assert (=> b!15366 m!18765))

(assert (=> b!15366 m!18763))

(assert (=> b!15222 d!11473))

(declare-fun b!15370 () Bool)

(declare-fun e!8411 () Int)

(declare-fun lt!2173 () Int)

(declare-fun lt!2172 () Int)

(assert (=> b!15370 (= e!8411 (+ 1 (ite (>= lt!2173 lt!2172) lt!2173 lt!2172)))))

(assert (=> b!15370 (= lt!2172 (level!8 (right!656 (left!653 (_2!51 res!5658)))))))

(assert (=> b!15370 (= lt!2173 (level!8 (left!653 (left!653 (_2!51 res!5658)))))))

(declare-fun d!11475 () Bool)

(declare-fun lt!2174 () Int)

(assert (=> d!11475 (>= lt!2174 0)))

(assert (=> d!11475 (= lt!2174 e!8411)))

(declare-fun c!4079 () Bool)

(assert (=> d!11475 (= c!4079 (or (is-Empty!19 (left!653 (_2!51 res!5658))) (is-Single!8 (left!653 (_2!51 res!5658)))))))

(assert (=> d!11475 (= (level!8 (left!653 (_2!51 res!5658))) lt!2174)))

(declare-fun b!15369 () Bool)

(assert (=> b!15369 (= e!8411 0)))

(assert (= (and d!11475 c!4079) b!15369))

(assert (= (and d!11475 (not c!4079)) b!15370))

(assert (=> b!15370 m!18775))

(assert (=> b!15370 m!18773))

(assert (=> b!15216 d!11475))

(declare-fun b!15372 () Bool)

(declare-fun e!8412 () Int)

(declare-fun lt!2176 () Int)

(declare-fun lt!2175 () Int)

(assert (=> b!15372 (= e!8412 (+ 1 (ite (>= lt!2176 lt!2175) lt!2176 lt!2175)))))

(assert (=> b!15372 (= lt!2175 (level!8 (right!656 (right!656 (_2!51 res!5658)))))))

(assert (=> b!15372 (= lt!2176 (level!8 (left!653 (right!656 (_2!51 res!5658)))))))

(declare-fun d!11477 () Bool)

(declare-fun lt!2177 () Int)

(assert (=> d!11477 (>= lt!2177 0)))

(assert (=> d!11477 (= lt!2177 e!8412)))

(declare-fun c!4080 () Bool)

(assert (=> d!11477 (= c!4080 (or (is-Empty!19 (right!656 (_2!51 res!5658))) (is-Single!8 (right!656 (_2!51 res!5658)))))))

(assert (=> d!11477 (= (level!8 (right!656 (_2!51 res!5658))) lt!2177)))

(declare-fun b!15371 () Bool)

(assert (=> b!15371 (= e!8412 0)))

(assert (= (and d!11477 c!4080) b!15371))

(assert (= (and d!11477 (not c!4080)) b!15372))

(assert (=> b!15372 m!18791))

(assert (=> b!15372 m!18789))

(assert (=> b!15216 d!11477))

(declare-fun d!11479 () Bool)

(declare-fun lt!2178 () List!322)

(assert (=> d!11479 (= (size!188 lt!2178) (size!189 (_2!51 res!5658)))))

(declare-fun e!8413 () List!322)

(assert (=> d!11479 (= lt!2178 e!8413)))

(declare-fun c!4082 () Bool)

(assert (=> d!11479 (= c!4082 (is-Empty!19 (_2!51 res!5658)))))

(assert (=> d!11479 (= (toList!82 (_2!51 res!5658)) lt!2178)))

(declare-fun b!15375 () Bool)

(declare-fun e!8414 () List!322)

(assert (=> b!15375 (= e!8414 (Cons!316 (x!8700 (_2!51 res!5658)) Nil!317))))

(declare-fun b!15376 () Bool)

(assert (=> b!15376 (= e!8414 (++!7 (toList!82 (left!653 (_2!51 res!5658))) (toList!82 (right!656 (_2!51 res!5658)))))))

(declare-fun b!15373 () Bool)

(assert (=> b!15373 (= e!8413 Nil!317)))

(declare-fun b!15374 () Bool)

(assert (=> b!15374 (= e!8413 e!8414)))

(declare-fun c!4081 () Bool)

(assert (=> b!15374 (= c!4081 (is-Single!8 (_2!51 res!5658)))))

(assert (= (and b!15374 c!4081) b!15375))

(assert (= (and b!15374 (not c!4081)) b!15376))

(assert (= (and d!11479 c!4082) b!15373))

(assert (= (and d!11479 (not c!4082)) b!15374))

(declare-fun m!18877 () Bool)

(assert (=> d!11479 m!18877))

(declare-fun m!18879 () Bool)

(assert (=> d!11479 m!18879))

(declare-fun m!18881 () Bool)

(assert (=> b!15376 m!18881))

(declare-fun m!18883 () Bool)

(assert (=> b!15376 m!18883))

(assert (=> b!15376 m!18881))

(assert (=> b!15376 m!18883))

(declare-fun m!18885 () Bool)

(assert (=> b!15376 m!18885))

(assert (=> b!15182 d!11479))

(declare-fun b!15395 () Bool)

(declare-fun e!8428 () List!322)

(declare-fun e!8425 () List!322)

(assert (=> b!15395 (= e!8428 e!8425)))

(declare-fun c!4093 () Bool)

(assert (=> b!15395 (= c!4093 (<= n!315 0))))

(declare-fun b!15396 () Bool)

(assert (=> b!15396 (= e!8428 Nil!317)))

(declare-fun b!15397 () Bool)

(declare-fun e!8429 () Int)

(declare-fun e!8427 () Int)

(assert (=> b!15397 (= e!8429 e!8427)))

(declare-fun c!4094 () Bool)

(declare-fun lt!2183 () Int)

(assert (=> b!15397 (= c!4094 (>= n!315 lt!2183))))

(declare-fun b!15398 () Bool)

(assert (=> b!15398 (= e!8429 lt!2183)))

(declare-fun b!15399 () Bool)

(assert (=> b!15399 (= e!8427 (- (size!188 (toList!82 xs!637)) n!315))))

(declare-fun b!15400 () Bool)

(assert (=> b!15400 (= e!8425 (Cons!316 (h!230 (toList!82 xs!637)) (t!4275 (toList!82 xs!637))))))

(declare-fun b!15401 () Bool)

(assert (=> b!15401 (= e!8425 (drop!5 (t!4275 (toList!82 xs!637)) (- n!315 1)))))

(declare-fun b!15402 () Bool)

(declare-fun e!8426 () Bool)

(declare-fun lt!2184 () List!322)

(assert (=> b!15402 (= e!8426 (= (size!188 lt!2184) e!8429))))

(declare-fun c!4091 () Bool)

(assert (=> b!15402 (= c!4091 (<= n!315 0))))

(assert (=> b!15402 (= lt!2183 (size!188 (toList!82 xs!637)))))

(declare-fun d!11481 () Bool)

(assert (=> d!11481 e!8426))

(declare-fun res!6249 () Bool)

(assert (=> d!11481 (=> (not res!6249) (not e!8426))))

(assert (=> d!11481 (= res!6249 (subset (content!52 lt!2184) (content!52 (toList!82 xs!637))))))

(assert (=> d!11481 (= lt!2184 e!8428)))

(declare-fun c!4092 () Bool)

(assert (=> d!11481 (= c!4092 (is-Nil!317 (toList!82 xs!637)))))

(assert (=> d!11481 (= (drop!5 (toList!82 xs!637) n!315) lt!2184)))

(declare-fun b!15403 () Bool)

(assert (=> b!15403 (= e!8427 0)))

(assert (= (and b!15395 c!4093) b!15400))

(assert (= (and b!15395 (not c!4093)) b!15401))

(assert (= (and d!11481 c!4092) b!15396))

(assert (= (and d!11481 (not c!4092)) b!15395))

(assert (= (and d!11481 res!6249) b!15402))

(assert (= (and b!15397 c!4094) b!15403))

(assert (= (and b!15397 (not c!4094)) b!15399))

(assert (= (and b!15402 c!4091) b!15398))

(assert (= (and b!15402 (not c!4091)) b!15397))

(assert (=> b!15399 m!18681))

(assert (=> b!15399 m!18811))

(declare-fun m!18887 () Bool)

(assert (=> b!15401 m!18887))

(declare-fun m!18889 () Bool)

(assert (=> b!15402 m!18889))

(assert (=> b!15402 m!18681))

(assert (=> b!15402 m!18811))

(declare-fun m!18891 () Bool)

(assert (=> d!11481 m!18891))

(assert (=> d!11481 m!18681))

(assert (=> d!11481 m!18809))

(assert (=> b!15182 d!11481))

(assert (=> b!15182 d!11457))

(assert (=> b!15231 d!11435))

(assert (=> b!15231 d!11433))

(assert (=> b!15220 d!11439))

(assert (=> b!15220 d!11441))

(declare-fun d!11483 () Bool)

(assert (=> d!11483 (= (isEmpty!273 (right!656 (_2!51 res!5658))) (= (right!656 (_2!51 res!5658)) Empty!19))))

(assert (=> b!15204 d!11483))

(declare-fun b!15404 () Bool)

(declare-fun e!8431 () Bool)

(declare-fun e!8430 () Bool)

(assert (=> b!15404 (= e!8431 e!8430)))

(declare-fun res!6250 () Bool)

(assert (=> b!15404 (=> (not res!6250) (not e!8430))))

(assert (=> b!15404 (= res!6250 (not (isEmpty!273 (left!653 (right!656 (_1!51 res!5658))))))))

(declare-fun b!15405 () Bool)

(declare-fun res!6251 () Bool)

(assert (=> b!15405 (=> (not res!6251) (not e!8430))))

(assert (=> b!15405 (= res!6251 (not (isEmpty!273 (right!656 (right!656 (_1!51 res!5658))))))))

(declare-fun b!15407 () Bool)

(assert (=> b!15407 (= e!8430 (concInv!8 (right!656 (right!656 (_1!51 res!5658)))))))

(declare-fun b!15406 () Bool)

(declare-fun res!6253 () Bool)

(assert (=> b!15406 (=> (not res!6253) (not e!8430))))

(assert (=> b!15406 (= res!6253 (concInv!8 (left!653 (right!656 (_1!51 res!5658)))))))

(declare-fun d!11485 () Bool)

(declare-fun res!6252 () Bool)

(assert (=> d!11485 (=> res!6252 e!8431)))

(assert (=> d!11485 (= res!6252 (not (is-CC!8 (right!656 (_1!51 res!5658)))))))

(assert (=> d!11485 (= (concInv!8 (right!656 (_1!51 res!5658))) e!8431)))

(assert (= (and d!11485 (not res!6252)) b!15404))

(assert (= (and b!15404 res!6250) b!15405))

(assert (= (and b!15405 res!6251) b!15406))

(assert (= (and b!15406 res!6253) b!15407))

(declare-fun m!18893 () Bool)

(assert (=> b!15404 m!18893))

(declare-fun m!18895 () Bool)

(assert (=> b!15405 m!18895))

(declare-fun m!18897 () Bool)

(assert (=> b!15407 m!18897))

(declare-fun m!18899 () Bool)

(assert (=> b!15406 m!18899))

(assert (=> b!15194 d!11485))

(declare-fun d!11487 () Bool)

(declare-fun res!6254 () Bool)

(declare-fun e!8433 () Bool)

(assert (=> d!11487 (=> res!6254 e!8433)))

(assert (=> d!11487 (= res!6254 (not (is-CC!8 (left!653 (_1!51 res!5658)))))))

(assert (=> d!11487 (= (balanced!9 (left!653 (_1!51 res!5658))) e!8433)))

(declare-fun b!15410 () Bool)

(declare-fun res!6257 () Bool)

(declare-fun e!8432 () Bool)

(assert (=> b!15410 (=> (not res!6257) (not e!8432))))

(assert (=> b!15410 (= res!6257 (balanced!9 (left!653 (left!653 (_1!51 res!5658)))))))

(declare-fun b!15408 () Bool)

(assert (=> b!15408 (= e!8433 e!8432)))

(declare-fun res!6256 () Bool)

(assert (=> b!15408 (=> (not res!6256) (not e!8432))))

(assert (=> b!15408 (= res!6256 (>= (- (level!8 (left!653 (left!653 (_1!51 res!5658)))) (level!8 (right!656 (left!653 (_1!51 res!5658))))) (- 1)))))

(declare-fun b!15411 () Bool)

(assert (=> b!15411 (= e!8432 (balanced!9 (right!656 (left!653 (_1!51 res!5658)))))))

(declare-fun b!15409 () Bool)

(declare-fun res!6255 () Bool)

(assert (=> b!15409 (=> (not res!6255) (not e!8432))))

(assert (=> b!15409 (= res!6255 (<= (- (level!8 (left!653 (left!653 (_1!51 res!5658)))) (level!8 (right!656 (left!653 (_1!51 res!5658))))) 1))))

(assert (= (and d!11487 (not res!6254)) b!15408))

(assert (= (and b!15408 res!6256) b!15409))

(assert (= (and b!15409 res!6255) b!15410))

(assert (= (and b!15410 res!6257) b!15411))

(declare-fun m!18901 () Bool)

(assert (=> b!15410 m!18901))

(assert (=> b!15408 m!18745))

(assert (=> b!15408 m!18743))

(declare-fun m!18903 () Bool)

(assert (=> b!15411 m!18903))

(assert (=> b!15409 m!18745))

(assert (=> b!15409 m!18743))

(assert (=> b!15228 d!11487))

(declare-fun d!11489 () Bool)

(assert (=> d!11489 (= (isEmpty!273 (left!653 xs!637)) (= (left!653 xs!637) Empty!19))))

(assert (=> b!15232 d!11489))

(assert (=> b!15215 d!11475))

(assert (=> b!15215 d!11477))

(declare-fun b!15412 () Bool)

(declare-fun e!8435 () Bool)

(declare-fun e!8434 () Bool)

(assert (=> b!15412 (= e!8435 e!8434)))

(declare-fun res!6258 () Bool)

(assert (=> b!15412 (=> (not res!6258) (not e!8434))))

(assert (=> b!15412 (= res!6258 (not (isEmpty!273 (left!653 (left!653 (_1!51 res!5658))))))))

(declare-fun b!15413 () Bool)

(declare-fun res!6259 () Bool)

(assert (=> b!15413 (=> (not res!6259) (not e!8434))))

(assert (=> b!15413 (= res!6259 (not (isEmpty!273 (right!656 (left!653 (_1!51 res!5658))))))))

(declare-fun b!15415 () Bool)

(assert (=> b!15415 (= e!8434 (concInv!8 (right!656 (left!653 (_1!51 res!5658)))))))

(declare-fun b!15414 () Bool)

(declare-fun res!6261 () Bool)

(assert (=> b!15414 (=> (not res!6261) (not e!8434))))

(assert (=> b!15414 (= res!6261 (concInv!8 (left!653 (left!653 (_1!51 res!5658)))))))

(declare-fun d!11491 () Bool)

(declare-fun res!6260 () Bool)

(assert (=> d!11491 (=> res!6260 e!8435)))

(assert (=> d!11491 (= res!6260 (not (is-CC!8 (left!653 (_1!51 res!5658)))))))

(assert (=> d!11491 (= (concInv!8 (left!653 (_1!51 res!5658))) e!8435)))

(assert (= (and d!11491 (not res!6260)) b!15412))

(assert (= (and b!15412 res!6258) b!15413))

(assert (= (and b!15413 res!6259) b!15414))

(assert (= (and b!15414 res!6261) b!15415))

(declare-fun m!18905 () Bool)

(assert (=> b!15412 m!18905))

(declare-fun m!18907 () Bool)

(assert (=> b!15413 m!18907))

(declare-fun m!18909 () Bool)

(assert (=> b!15415 m!18909))

(declare-fun m!18911 () Bool)

(assert (=> b!15414 m!18911))

(assert (=> b!15193 d!11491))

(declare-fun b!15416 () Bool)

(declare-fun e!8437 () Bool)

(declare-fun e!8436 () Bool)

(assert (=> b!15416 (= e!8437 e!8436)))

(declare-fun res!6262 () Bool)

(assert (=> b!15416 (=> (not res!6262) (not e!8436))))

(assert (=> b!15416 (= res!6262 (not (isEmpty!273 (left!653 (left!653 (_2!51 res!5658))))))))

(declare-fun b!15417 () Bool)

(declare-fun res!6263 () Bool)

(assert (=> b!15417 (=> (not res!6263) (not e!8436))))

(assert (=> b!15417 (= res!6263 (not (isEmpty!273 (right!656 (left!653 (_2!51 res!5658))))))))

(declare-fun b!15419 () Bool)

(assert (=> b!15419 (= e!8436 (concInv!8 (right!656 (left!653 (_2!51 res!5658)))))))

(declare-fun b!15418 () Bool)

(declare-fun res!6265 () Bool)

(assert (=> b!15418 (=> (not res!6265) (not e!8436))))

(assert (=> b!15418 (= res!6265 (concInv!8 (left!653 (left!653 (_2!51 res!5658)))))))

(declare-fun d!11493 () Bool)

(declare-fun res!6264 () Bool)

(assert (=> d!11493 (=> res!6264 e!8437)))

(assert (=> d!11493 (= res!6264 (not (is-CC!8 (left!653 (_2!51 res!5658)))))))

(assert (=> d!11493 (= (concInv!8 (left!653 (_2!51 res!5658))) e!8437)))

(assert (= (and d!11493 (not res!6264)) b!15416))

(assert (= (and b!15416 res!6262) b!15417))

(assert (= (and b!15417 res!6263) b!15418))

(assert (= (and b!15418 res!6265) b!15419))

(declare-fun m!18913 () Bool)

(assert (=> b!15416 m!18913))

(declare-fun m!18915 () Bool)

(assert (=> b!15417 m!18915))

(declare-fun m!18917 () Bool)

(assert (=> b!15419 m!18917))

(declare-fun m!18919 () Bool)

(assert (=> b!15418 m!18919))

(assert (=> b!15205 d!11493))

(assert (=> b!15202 d!11477))

(assert (=> b!15202 d!11475))

(declare-fun b!15420 () Bool)

(declare-fun e!8438 () Bool)

(declare-fun tp!3715 () Bool)

(declare-fun tp!3716 () Bool)

(assert (=> b!15420 (= e!8438 (and tp!3715 tp!3716))))

(declare-fun b!15421 () Bool)

(assert (=> b!15421 (= e!8438 tp_is_empty!53)))

(assert (=> b!15250 (= tp!3711 e!8438)))

(assert (= (and b!15250 (is-CC!8 (left!653 (left!653 (_1!51 res!5658))))) b!15420))

(assert (= (and b!15250 (is-Single!8 (left!653 (left!653 (_1!51 res!5658))))) b!15421))

(declare-fun b!15422 () Bool)

(declare-fun e!8439 () Bool)

(declare-fun tp!3717 () Bool)

(declare-fun tp!3718 () Bool)

(assert (=> b!15422 (= e!8439 (and tp!3717 tp!3718))))

(declare-fun b!15423 () Bool)

(assert (=> b!15423 (= e!8439 tp_is_empty!53)))

(assert (=> b!15250 (= tp!3712 e!8439)))

(assert (= (and b!15250 (is-CC!8 (right!656 (left!653 (_1!51 res!5658))))) b!15422))

(assert (= (and b!15250 (is-Single!8 (right!656 (left!653 (_1!51 res!5658))))) b!15423))

(declare-fun b!15424 () Bool)

(declare-fun e!8440 () Bool)

(declare-fun tp!3719 () Bool)

(declare-fun tp!3720 () Bool)

(assert (=> b!15424 (= e!8440 (and tp!3719 tp!3720))))

(declare-fun b!15425 () Bool)

(assert (=> b!15425 (= e!8440 tp_is_empty!53)))

(assert (=> b!15242 (= tp!3703 e!8440)))

(assert (= (and b!15242 (is-CC!8 (left!653 (left!653 xs!637)))) b!15424))

(assert (= (and b!15242 (is-Single!8 (left!653 (left!653 xs!637)))) b!15425))

(declare-fun b!15426 () Bool)

(declare-fun e!8441 () Bool)

(declare-fun tp!3721 () Bool)

(declare-fun tp!3722 () Bool)

(assert (=> b!15426 (= e!8441 (and tp!3721 tp!3722))))

(declare-fun b!15427 () Bool)

(assert (=> b!15427 (= e!8441 tp_is_empty!53)))

(assert (=> b!15242 (= tp!3704 e!8441)))

(assert (= (and b!15242 (is-CC!8 (right!656 (left!653 xs!637)))) b!15426))

(assert (= (and b!15242 (is-Single!8 (right!656 (left!653 xs!637)))) b!15427))

(declare-fun b!15428 () Bool)

(declare-fun e!8442 () Bool)

(declare-fun tp!3723 () Bool)

(declare-fun tp!3724 () Bool)

(assert (=> b!15428 (= e!8442 (and tp!3723 tp!3724))))

(declare-fun b!15429 () Bool)

(assert (=> b!15429 (= e!8442 tp_is_empty!53)))

(assert (=> b!15252 (= tp!3713 e!8442)))

(assert (= (and b!15252 (is-CC!8 (left!653 (right!656 (_1!51 res!5658))))) b!15428))

(assert (= (and b!15252 (is-Single!8 (left!653 (right!656 (_1!51 res!5658))))) b!15429))

(declare-fun b!15430 () Bool)

(declare-fun e!8443 () Bool)

(declare-fun tp!3725 () Bool)

(declare-fun tp!3726 () Bool)

(assert (=> b!15430 (= e!8443 (and tp!3725 tp!3726))))

(declare-fun b!15431 () Bool)

(assert (=> b!15431 (= e!8443 tp_is_empty!53)))

(assert (=> b!15252 (= tp!3714 e!8443)))

(assert (= (and b!15252 (is-CC!8 (right!656 (right!656 (_1!51 res!5658))))) b!15430))

(assert (= (and b!15252 (is-Single!8 (right!656 (right!656 (_1!51 res!5658))))) b!15431))

(declare-fun b!15432 () Bool)

(declare-fun e!8444 () Bool)

(declare-fun tp!3727 () Bool)

(declare-fun tp!3728 () Bool)

(assert (=> b!15432 (= e!8444 (and tp!3727 tp!3728))))

(declare-fun b!15433 () Bool)

(assert (=> b!15433 (= e!8444 tp_is_empty!53)))

(assert (=> b!15246 (= tp!3707 e!8444)))

(assert (= (and b!15246 (is-CC!8 (left!653 (left!653 (_2!51 res!5658))))) b!15432))

(assert (= (and b!15246 (is-Single!8 (left!653 (left!653 (_2!51 res!5658))))) b!15433))

(declare-fun b!15434 () Bool)

(declare-fun e!8445 () Bool)

(declare-fun tp!3729 () Bool)

(declare-fun tp!3730 () Bool)

(assert (=> b!15434 (= e!8445 (and tp!3729 tp!3730))))

(declare-fun b!15435 () Bool)

(assert (=> b!15435 (= e!8445 tp_is_empty!53)))

(assert (=> b!15246 (= tp!3708 e!8445)))

(assert (= (and b!15246 (is-CC!8 (right!656 (left!653 (_2!51 res!5658))))) b!15434))

(assert (= (and b!15246 (is-Single!8 (right!656 (left!653 (_2!51 res!5658))))) b!15435))

(declare-fun b!15436 () Bool)

(declare-fun e!8446 () Bool)

(declare-fun tp!3731 () Bool)

(declare-fun tp!3732 () Bool)

(assert (=> b!15436 (= e!8446 (and tp!3731 tp!3732))))

(declare-fun b!15437 () Bool)

(assert (=> b!15437 (= e!8446 tp_is_empty!53)))

(assert (=> b!15248 (= tp!3709 e!8446)))

(assert (= (and b!15248 (is-CC!8 (left!653 (right!656 (_2!51 res!5658))))) b!15436))

(assert (= (and b!15248 (is-Single!8 (left!653 (right!656 (_2!51 res!5658))))) b!15437))

(declare-fun b!15438 () Bool)

(declare-fun e!8447 () Bool)

(declare-fun tp!3733 () Bool)

(declare-fun tp!3734 () Bool)

(assert (=> b!15438 (= e!8447 (and tp!3733 tp!3734))))

(declare-fun b!15439 () Bool)

(assert (=> b!15439 (= e!8447 tp_is_empty!53)))

(assert (=> b!15248 (= tp!3710 e!8447)))

(assert (= (and b!15248 (is-CC!8 (right!656 (right!656 (_2!51 res!5658))))) b!15438))

(assert (= (and b!15248 (is-Single!8 (right!656 (right!656 (_2!51 res!5658))))) b!15439))

(declare-fun b!15440 () Bool)

(declare-fun e!8448 () Bool)

(declare-fun tp!3735 () Bool)

(declare-fun tp!3736 () Bool)

(assert (=> b!15440 (= e!8448 (and tp!3735 tp!3736))))

(declare-fun b!15441 () Bool)

(assert (=> b!15441 (= e!8448 tp_is_empty!53)))

(assert (=> b!15244 (= tp!3705 e!8448)))

(assert (= (and b!15244 (is-CC!8 (left!653 (right!656 xs!637)))) b!15440))

(assert (= (and b!15244 (is-Single!8 (left!653 (right!656 xs!637)))) b!15441))

(declare-fun b!15442 () Bool)

(declare-fun e!8449 () Bool)

(declare-fun tp!3737 () Bool)

(declare-fun tp!3738 () Bool)

(assert (=> b!15442 (= e!8449 (and tp!3737 tp!3738))))

(declare-fun b!15443 () Bool)

(assert (=> b!15443 (= e!8449 tp_is_empty!53)))

(assert (=> b!15244 (= tp!3706 e!8449)))

(assert (= (and b!15244 (is-CC!8 (right!656 (right!656 xs!637)))) b!15442))

(assert (= (and b!15244 (is-Single!8 (right!656 (right!656 xs!637)))) b!15443))

(push 1)

(assert (not b!15257))

(assert (not b!15275))

(assert (not b!15271))

(assert (not b!15411))

(assert (not b!15402))

(assert (not b!15310))

(assert (not b!15263))

(assert (not b!15348))

(assert (not b!15321))

(assert (not b!15259))

(assert (not b!15366))

(assert (not b!15309))

(assert (not d!11457))

(assert (not d!11465))

(assert (not b!15412))

(assert (not b!15323))

(assert (not b!15270))

(assert (not b!15313))

(assert (not b!15265))

(assert (not b!15406))

(assert (not b!15417))

(assert (not b!15430))

(assert (not b!15353))

(assert (not b!15442))

(assert (not b!15276))

(assert (not b!15274))

(assert (not b!15360))

(assert (not b!15413))

(assert (not b!15260))

(assert (not b!15322))

(assert (not b!15349))

(assert (not b!15355))

(assert (not d!11467))

(assert (not b!15255))

(assert (not b!15415))

(assert (not b!15278))

(assert (not b!15269))

(assert (not b!15293))

(assert (not b!15280))

(assert (not b!15372))

(assert (not b!15326))

(assert (not b!15408))

(assert (not b!15279))

(assert (not b!15401))

(assert (not b!15364))

(assert tp_is_empty!53)

(assert (not b!15418))

(assert (not b!15424))

(assert (not b!15272))

(assert (not b!15258))

(assert (not d!11479))

(assert (not b!15414))

(assert (not b!15419))

(assert (not b!15428))

(assert (not b!15351))

(assert (not b!15324))

(assert (not b!15350))

(assert (not b!15409))

(assert (not b!15352))

(assert (not b!15416))

(assert (not d!11469))

(assert (not b!15440))

(assert (not b!15410))

(assert (not b!15370))

(assert (not b!15399))

(assert (not b!15426))

(assert (not d!11481))

(assert (not b!15277))

(assert (not b!15267))

(assert (not b!15407))

(assert (not b!15319))

(assert (not b!15314))

(assert (not b!15266))

(assert (not b!15422))

(assert (not b!15354))

(assert (not b!15367))

(assert (not b!15438))

(assert (not b!15261))

(assert (not b!15320))

(assert (not b!15404))

(assert (not d!11455))

(assert (not b!15434))

(assert (not b!15420))

(assert (not b!15368))

(assert (not d!11453))

(assert (not b!15365))

(assert (not b!15432))

(assert (not b!15268))

(assert (not b!15325))

(assert (not b!15273))

(assert (not b!15318))

(assert (not b!15281))

(assert (not b!15436))

(assert (not b!15376))

(assert (not b!15405))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

