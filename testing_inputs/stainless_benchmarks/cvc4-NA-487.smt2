; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3248 () Bool)

(assert start!3248)

(declare-fun b!18161 () Bool)

(declare-fun res!7592 () Bool)

(declare-fun e!9753 () Bool)

(assert (=> b!18161 (=> (not res!7592) (not e!9753))))

(declare-fun i!298 () Int)

(declare-datatypes () ((T!1729 (T!1730 (val!37 Int)))))

(declare-datatypes () ((Conc!19 (CC!18 (left!663 Conc!19) (right!666 Conc!19)) (Single!18 (x!8740 T!1729)) (Empty!29))))

(declare-fun xs!604 () Conc!19)

(declare-fun size!204 (Conc!19) Int)

(assert (=> b!18161 (= res!7592 (<= i!298 (size!204 xs!604)))))

(declare-fun b!18162 () Bool)

(declare-fun res!7594 () Bool)

(assert (=> b!18162 (=> (not res!7594) (not e!9753))))

(declare-fun res!5603 () Conc!19)

(declare-fun isEmpty!281 (Conc!19) Bool)

(assert (=> b!18162 (= res!7594 (not (isEmpty!281 res!5603)))))

(declare-fun b!18163 () Bool)

(declare-fun res!7600 () Bool)

(assert (=> b!18163 (=> (not res!7600) (not e!9753))))

(declare-fun balanced!18 (Conc!19) Bool)

(assert (=> b!18163 (= res!7600 (balanced!18 res!5603))))

(declare-fun b!18164 () Bool)

(declare-fun e!9751 () Bool)

(declare-fun tp!4272 () Bool)

(declare-fun tp!4271 () Bool)

(assert (=> b!18164 (= e!9751 (and tp!4272 tp!4271))))

(declare-fun b!18165 () Bool)

(declare-fun res!7598 () Bool)

(assert (=> b!18165 (=> (not res!7598) (not e!9753))))

(declare-fun level!16 (Conc!19) Int)

(assert (=> b!18165 (= res!7598 (<= (- (level!16 res!5603) (level!16 xs!604)) 1))))

(declare-fun res!7588 () Bool)

(assert (=> start!3248 (=> (not res!7588) (not e!9753))))

(declare-fun concInv!17 (Conc!19) Bool)

(assert (=> start!3248 (= res!7588 (concInv!17 xs!604))))

(assert (=> start!3248 e!9753))

(declare-fun tp_is_empty!73 () Bool)

(assert (=> start!3248 tp_is_empty!73))

(declare-fun e!9752 () Bool)

(assert (=> start!3248 e!9752))

(assert (=> start!3248 true))

(declare-fun e!9749 () Bool)

(assert (=> start!3248 e!9749))

(assert (=> start!3248 e!9751))

(declare-fun b!18166 () Bool)

(declare-fun e!9750 () Bool)

(assert (=> b!18166 (= e!9753 e!9750)))

(declare-fun res!7591 () Bool)

(assert (=> b!18166 (=> res!7591 e!9750)))

(declare-fun i!305 () Int)

(assert (=> b!18166 (= res!7591 (> 0 i!305))))

(declare-fun b!18167 () Bool)

(declare-fun tp!4275 () Bool)

(assert (=> b!18167 (= e!9749 (and tp_is_empty!73 tp!4275))))

(declare-fun b!18168 () Bool)

(declare-fun tp!4274 () Bool)

(declare-fun tp!4273 () Bool)

(assert (=> b!18168 (= e!9752 (and tp!4274 tp!4273))))

(declare-fun b!18169 () Bool)

(declare-fun res!7590 () Bool)

(assert (=> b!18169 (=> (not res!7590) (not e!9753))))

(assert (=> b!18169 (= res!7590 (balanced!18 xs!604))))

(declare-fun b!18170 () Bool)

(declare-fun res!7595 () Bool)

(assert (=> b!18170 (=> (not res!7595) (not e!9753))))

(declare-datatypes () ((List!329 (Cons!323 (h!237 T!1729) (t!4324 List!329)) (Nil!324))))

(declare-fun l!761 () List!329)

(declare-fun toList!89 (Conc!19) List!329)

(assert (=> b!18170 (= res!7595 (= l!761 (toList!89 xs!604)))))

(declare-fun b!18171 () Bool)

(declare-fun res!7593 () Bool)

(assert (=> b!18171 (=> (not res!7593) (not e!9753))))

(declare-fun y!824 () T!1729)

(assert (=> b!18171 (= res!7593 (and (not (is-Empty!29 xs!604)) (is-Single!18 xs!604) (= i!298 0) (= res!5603 (CC!18 (Single!18 y!824) xs!604))))))

(declare-fun b!18172 () Bool)

(declare-fun res!7599 () Bool)

(assert (=> b!18172 (=> (not res!7599) (not e!9753))))

(assert (=> b!18172 (= res!7599 (>= i!298 0))))

(declare-fun b!18173 () Bool)

(declare-fun res!7596 () Bool)

(assert (=> b!18173 (=> (not res!7596) (not e!9753))))

(assert (=> b!18173 (= res!7596 (concInv!17 res!5603))))

(declare-fun b!18174 () Bool)

(assert (=> b!18174 (= e!9751 tp_is_empty!73)))

(declare-fun b!18175 () Bool)

(declare-fun size!205 (List!329) Int)

(assert (=> b!18175 (= e!9750 (> i!305 (size!205 l!761)))))

(declare-fun b!18176 () Bool)

(declare-fun res!7589 () Bool)

(assert (=> b!18176 (=> (not res!7589) (not e!9753))))

(assert (=> b!18176 (= res!7589 (>= (level!16 res!5603) (level!16 xs!604)))))

(declare-fun b!18177 () Bool)

(declare-fun res!7587 () Bool)

(assert (=> b!18177 (=> (not res!7587) (not e!9753))))

(declare-fun insertAppendAxiomInst!4 (Conc!19 Int T!1729) Bool)

(assert (=> b!18177 (= res!7587 (insertAppendAxiomInst!4 xs!604 i!298 y!824))))

(declare-fun b!18178 () Bool)

(declare-fun res!7597 () Bool)

(assert (=> b!18178 (=> (not res!7597) (not e!9753))))

(declare-fun y!839 () T!1729)

(assert (=> b!18178 (= res!7597 (and (= i!305 i!298) (= y!839 y!824)))))

(declare-fun b!18179 () Bool)

(assert (=> b!18179 (= e!9752 tp_is_empty!73)))

(assert (= (and start!3248 res!7588) b!18169))

(assert (= (and b!18169 res!7590) b!18172))

(assert (= (and b!18172 res!7599) b!18161))

(assert (= (and b!18161 res!7592) b!18171))

(assert (= (and b!18171 res!7593) b!18173))

(assert (= (and b!18173 res!7596) b!18163))

(assert (= (and b!18163 res!7600) b!18165))

(assert (= (and b!18165 res!7598) b!18176))

(assert (= (and b!18176 res!7589) b!18162))

(assert (= (and b!18162 res!7594) b!18177))

(assert (= (and b!18177 res!7587) b!18170))

(assert (= (and b!18170 res!7595) b!18178))

(assert (= (and b!18178 res!7597) b!18166))

(assert (= (and b!18166 (not res!7591)) b!18175))

(assert (= (and start!3248 (is-CC!18 xs!604)) b!18168))

(assert (= (and start!3248 (is-Single!18 xs!604)) b!18179))

(assert (= (and start!3248 (is-Cons!323 l!761)) b!18167))

(assert (= (and start!3248 (is-CC!18 res!5603)) b!18164))

(assert (= (and start!3248 (is-Single!18 res!5603)) b!18174))

(declare-fun m!21099 () Bool)

(assert (=> b!18177 m!21099))

(declare-fun m!21101 () Bool)

(assert (=> b!18176 m!21101))

(declare-fun m!21103 () Bool)

(assert (=> b!18176 m!21103))

(declare-fun m!21105 () Bool)

(assert (=> b!18173 m!21105))

(declare-fun m!21107 () Bool)

(assert (=> b!18175 m!21107))

(assert (=> b!18165 m!21101))

(assert (=> b!18165 m!21103))

(declare-fun m!21109 () Bool)

(assert (=> start!3248 m!21109))

(declare-fun m!21111 () Bool)

(assert (=> b!18162 m!21111))

(declare-fun m!21113 () Bool)

(assert (=> b!18161 m!21113))

(declare-fun m!21115 () Bool)

(assert (=> b!18170 m!21115))

(declare-fun m!21117 () Bool)

(assert (=> b!18163 m!21117))

(declare-fun m!21119 () Bool)

(assert (=> b!18169 m!21119))

(push 1)

(assert (not b!18175))

(assert (not b!18162))

(assert (not b!18163))

(assert (not b!18165))

(assert (not b!18173))

(assert (not b!18164))

(assert (not b!18167))

(assert (not b!18169))

(assert (not b!18170))

(assert tp_is_empty!73)

(assert (not b!18177))

(assert (not b!18161))

(assert (not b!18176))

(assert (not start!3248))

(assert (not b!18168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!18191 () Bool)

(declare-fun e!9758 () Bool)

(assert (=> b!18191 (= e!9758 (concInv!17 (right!666 xs!604)))))

(declare-fun d!12153 () Bool)

(declare-fun res!7610 () Bool)

(declare-fun e!9759 () Bool)

(assert (=> d!12153 (=> res!7610 e!9759)))

(assert (=> d!12153 (= res!7610 (not (is-CC!18 xs!604)))))

(assert (=> d!12153 (= (concInv!17 xs!604) e!9759)))

(declare-fun b!18188 () Bool)

(assert (=> b!18188 (= e!9759 e!9758)))

(declare-fun res!7609 () Bool)

(assert (=> b!18188 (=> (not res!7609) (not e!9758))))

(assert (=> b!18188 (= res!7609 (not (isEmpty!281 (left!663 xs!604))))))

(declare-fun b!18190 () Bool)

(declare-fun res!7612 () Bool)

(assert (=> b!18190 (=> (not res!7612) (not e!9758))))

(assert (=> b!18190 (= res!7612 (concInv!17 (left!663 xs!604)))))

(declare-fun b!18189 () Bool)

(declare-fun res!7611 () Bool)

(assert (=> b!18189 (=> (not res!7611) (not e!9758))))

(assert (=> b!18189 (= res!7611 (not (isEmpty!281 (right!666 xs!604))))))

(assert (= (and d!12153 (not res!7610)) b!18188))

(assert (= (and b!18188 res!7609) b!18189))

(assert (= (and b!18189 res!7611) b!18190))

(assert (= (and b!18190 res!7612) b!18191))

(declare-fun m!21121 () Bool)

(assert (=> b!18191 m!21121))

(declare-fun m!21123 () Bool)

(assert (=> b!18188 m!21123))

(declare-fun m!21125 () Bool)

(assert (=> b!18190 m!21125))

(declare-fun m!21127 () Bool)

(assert (=> b!18189 m!21127))

(assert (=> start!3248 d!12153))

(declare-fun b!18200 () Bool)

(declare-fun e!9764 () Bool)

(declare-fun e!9765 () Bool)

(assert (=> b!18200 (= e!9764 e!9765)))

(declare-fun res!7621 () Bool)

(assert (=> b!18200 (=> (not res!7621) (not e!9765))))

(assert (=> b!18200 (= res!7621 (>= (- (level!16 (left!663 res!5603)) (level!16 (right!666 res!5603))) (- 1)))))

(declare-fun b!18201 () Bool)

(declare-fun res!7624 () Bool)

(assert (=> b!18201 (=> (not res!7624) (not e!9765))))

(assert (=> b!18201 (= res!7624 (<= (- (level!16 (left!663 res!5603)) (level!16 (right!666 res!5603))) 1))))

(declare-fun b!18203 () Bool)

(assert (=> b!18203 (= e!9765 (balanced!18 (right!666 res!5603)))))

(declare-fun b!18202 () Bool)

(declare-fun res!7623 () Bool)

(assert (=> b!18202 (=> (not res!7623) (not e!9765))))

(assert (=> b!18202 (= res!7623 (balanced!18 (left!663 res!5603)))))

(declare-fun d!12155 () Bool)

(declare-fun res!7622 () Bool)

(assert (=> d!12155 (=> res!7622 e!9764)))

(assert (=> d!12155 (= res!7622 (not (is-CC!18 res!5603)))))

(assert (=> d!12155 (= (balanced!18 res!5603) e!9764)))

(assert (= (and d!12155 (not res!7622)) b!18200))

(assert (= (and b!18200 res!7621) b!18201))

(assert (= (and b!18201 res!7624) b!18202))

(assert (= (and b!18202 res!7623) b!18203))

(declare-fun m!21129 () Bool)

(assert (=> b!18200 m!21129))

(declare-fun m!21131 () Bool)

(assert (=> b!18200 m!21131))

(assert (=> b!18201 m!21129))

(assert (=> b!18201 m!21131))

(declare-fun m!21133 () Bool)

(assert (=> b!18203 m!21133))

(declare-fun m!21135 () Bool)

(assert (=> b!18202 m!21135))

(assert (=> b!18163 d!12155))

(declare-fun b!18209 () Bool)

(declare-fun e!9768 () Int)

(declare-fun lt!2749 () Int)

(declare-fun lt!2747 () Int)

(assert (=> b!18209 (= e!9768 (+ 1 (ite (>= lt!2749 lt!2747) lt!2749 lt!2747)))))

(assert (=> b!18209 (= lt!2747 (level!16 (right!666 res!5603)))))

(assert (=> b!18209 (= lt!2749 (level!16 (left!663 res!5603)))))

(declare-fun d!12157 () Bool)

(declare-fun lt!2748 () Int)

(assert (=> d!12157 (>= lt!2748 0)))

(assert (=> d!12157 (= lt!2748 e!9768)))

(declare-fun c!4591 () Bool)

(assert (=> d!12157 (= c!4591 (or (is-Empty!29 res!5603) (is-Single!18 res!5603)))))

(assert (=> d!12157 (= (level!16 res!5603) lt!2748)))

(declare-fun b!18208 () Bool)

(assert (=> b!18208 (= e!9768 0)))

(assert (= (and d!12157 c!4591) b!18208))

(assert (= (and d!12157 (not c!4591)) b!18209))

(assert (=> b!18209 m!21131))

(assert (=> b!18209 m!21129))

(assert (=> b!18165 d!12157))

(declare-fun b!18211 () Bool)

(declare-fun e!9769 () Int)

(declare-fun lt!2752 () Int)

(declare-fun lt!2750 () Int)

(assert (=> b!18211 (= e!9769 (+ 1 (ite (>= lt!2752 lt!2750) lt!2752 lt!2750)))))

(assert (=> b!18211 (= lt!2750 (level!16 (right!666 xs!604)))))

(assert (=> b!18211 (= lt!2752 (level!16 (left!663 xs!604)))))

(declare-fun d!12159 () Bool)

(declare-fun lt!2751 () Int)

(assert (=> d!12159 (>= lt!2751 0)))

(assert (=> d!12159 (= lt!2751 e!9769)))

(declare-fun c!4592 () Bool)

(assert (=> d!12159 (= c!4592 (or (is-Empty!29 xs!604) (is-Single!18 xs!604)))))

(assert (=> d!12159 (= (level!16 xs!604) lt!2751)))

(declare-fun b!18210 () Bool)

(assert (=> b!18210 (= e!9769 0)))

(assert (= (and d!12159 c!4592) b!18210))

(assert (= (and d!12159 (not c!4592)) b!18211))

(declare-fun m!21137 () Bool)

(assert (=> b!18211 m!21137))

(declare-fun m!21139 () Bool)

(assert (=> b!18211 m!21139))

(assert (=> b!18165 d!12159))

(declare-fun b!18220 () Bool)

(declare-fun e!9774 () Int)

(assert (=> b!18220 (= e!9774 0)))

(declare-fun d!12161 () Bool)

(declare-fun lt!2755 () Int)

(assert (=> d!12161 (>= lt!2755 0)))

(assert (=> d!12161 (= lt!2755 e!9774)))

(declare-fun c!4598 () Bool)

(assert (=> d!12161 (= c!4598 (is-Empty!29 xs!604))))

(assert (=> d!12161 (= (size!204 xs!604) lt!2755)))

(declare-fun b!18221 () Bool)

(declare-fun e!9775 () Int)

(assert (=> b!18221 (= e!9774 e!9775)))

(declare-fun c!4597 () Bool)

(assert (=> b!18221 (= c!4597 (is-Single!18 xs!604))))

(declare-fun b!18222 () Bool)

(assert (=> b!18222 (= e!9775 1)))

(declare-fun b!18223 () Bool)

(assert (=> b!18223 (= e!9775 (+ (size!204 (left!663 xs!604)) (size!204 (right!666 xs!604))))))

(assert (= (and b!18221 c!4597) b!18222))

(assert (= (and b!18221 (not c!4597)) b!18223))

(assert (= (and d!12161 c!4598) b!18220))

(assert (= (and d!12161 (not c!4598)) b!18221))

(declare-fun m!21141 () Bool)

(assert (=> b!18223 m!21141))

(declare-fun m!21143 () Bool)

(assert (=> b!18223 m!21143))

(assert (=> b!18161 d!12161))

(assert (=> b!18176 d!12157))

(assert (=> b!18176 d!12159))

(declare-fun d!12163 () Bool)

(assert (=> d!12163 (= (isEmpty!281 res!5603) (= res!5603 Empty!29))))

(assert (=> b!18162 d!12163))

(declare-fun b!18224 () Bool)

(declare-fun e!9776 () Bool)

(declare-fun e!9777 () Bool)

(assert (=> b!18224 (= e!9776 e!9777)))

(declare-fun res!7625 () Bool)

(assert (=> b!18224 (=> (not res!7625) (not e!9777))))

(assert (=> b!18224 (= res!7625 (>= (- (level!16 (left!663 xs!604)) (level!16 (right!666 xs!604))) (- 1)))))

(declare-fun b!18225 () Bool)

(declare-fun res!7628 () Bool)

(assert (=> b!18225 (=> (not res!7628) (not e!9777))))

(assert (=> b!18225 (= res!7628 (<= (- (level!16 (left!663 xs!604)) (level!16 (right!666 xs!604))) 1))))

(declare-fun b!18227 () Bool)

(assert (=> b!18227 (= e!9777 (balanced!18 (right!666 xs!604)))))

(declare-fun b!18226 () Bool)

(declare-fun res!7627 () Bool)

(assert (=> b!18226 (=> (not res!7627) (not e!9777))))

(assert (=> b!18226 (= res!7627 (balanced!18 (left!663 xs!604)))))

(declare-fun d!12165 () Bool)

(declare-fun res!7626 () Bool)

(assert (=> d!12165 (=> res!7626 e!9776)))

(assert (=> d!12165 (= res!7626 (not (is-CC!18 xs!604)))))

(assert (=> d!12165 (= (balanced!18 xs!604) e!9776)))

(assert (= (and d!12165 (not res!7626)) b!18224))

(assert (= (and b!18224 res!7625) b!18225))

(assert (= (and b!18225 res!7628) b!18226))

(assert (= (and b!18226 res!7627) b!18227))

(assert (=> b!18224 m!21139))

(assert (=> b!18224 m!21137))

(assert (=> b!18225 m!21139))

(assert (=> b!18225 m!21137))

(declare-fun m!21145 () Bool)

(assert (=> b!18227 m!21145))

(declare-fun m!21147 () Bool)

(assert (=> b!18226 m!21147))

(assert (=> b!18169 d!12165))

(declare-fun b!18231 () Bool)

(declare-fun e!9778 () Bool)

(assert (=> b!18231 (= e!9778 (concInv!17 (right!666 res!5603)))))

(declare-fun d!12167 () Bool)

(declare-fun res!7630 () Bool)

(declare-fun e!9779 () Bool)

(assert (=> d!12167 (=> res!7630 e!9779)))

(assert (=> d!12167 (= res!7630 (not (is-CC!18 res!5603)))))

(assert (=> d!12167 (= (concInv!17 res!5603) e!9779)))

(declare-fun b!18228 () Bool)

(assert (=> b!18228 (= e!9779 e!9778)))

(declare-fun res!7629 () Bool)

(assert (=> b!18228 (=> (not res!7629) (not e!9778))))

(assert (=> b!18228 (= res!7629 (not (isEmpty!281 (left!663 res!5603))))))

(declare-fun b!18230 () Bool)

(declare-fun res!7632 () Bool)

(assert (=> b!18230 (=> (not res!7632) (not e!9778))))

(assert (=> b!18230 (= res!7632 (concInv!17 (left!663 res!5603)))))

(declare-fun b!18229 () Bool)

(declare-fun res!7631 () Bool)

(assert (=> b!18229 (=> (not res!7631) (not e!9778))))

(assert (=> b!18229 (= res!7631 (not (isEmpty!281 (right!666 res!5603))))))

(assert (= (and d!12167 (not res!7630)) b!18228))

(assert (= (and b!18228 res!7629) b!18229))

(assert (= (and b!18229 res!7631) b!18230))

(assert (= (and b!18230 res!7632) b!18231))

(declare-fun m!21149 () Bool)

(assert (=> b!18231 m!21149))

(declare-fun m!21151 () Bool)

(assert (=> b!18228 m!21151))

(declare-fun m!21153 () Bool)

(assert (=> b!18230 m!21153))

(declare-fun m!21155 () Bool)

(assert (=> b!18229 m!21155))

(assert (=> b!18173 d!12167))

(declare-fun d!12169 () Bool)

(declare-fun e!9785 () Bool)

(assert (=> d!12169 e!9785))

(declare-fun res!7638 () Bool)

(assert (=> d!12169 (=> res!7638 e!9785)))

(assert (=> d!12169 (= res!7638 (not (is-CC!18 xs!604)))))

(declare-fun e!9784 () Bool)

(assert (=> d!12169 e!9784))

(declare-fun res!7637 () Bool)

(assert (=> d!12169 (=> (not res!7637) (not e!9784))))

(assert (=> d!12169 (= res!7637 (>= i!298 0))))

(assert (=> d!12169 (= (insertAppendAxiomInst!4 xs!604 i!298 y!824) true)))

(declare-fun b!18236 () Bool)

(assert (=> b!18236 (= e!9784 (<= i!298 (size!204 xs!604)))))

(declare-fun b!18237 () Bool)

(declare-fun appendInsertIndex!5 (List!329 List!329 Int T!1729) Bool)

(assert (=> b!18237 (= e!9785 (appendInsertIndex!5 (toList!89 (left!663 xs!604)) (toList!89 (right!666 xs!604)) i!298 y!824))))

(assert (= (and d!12169 res!7637) b!18236))

(assert (= (and d!12169 (not res!7638)) b!18237))

(assert (=> b!18236 m!21113))

(declare-fun m!21157 () Bool)

(assert (=> b!18237 m!21157))

(declare-fun m!21159 () Bool)

(assert (=> b!18237 m!21159))

(assert (=> b!18237 m!21157))

(assert (=> b!18237 m!21159))

(declare-fun m!21161 () Bool)

(assert (=> b!18237 m!21161))

(assert (=> b!18177 d!12169))

(declare-fun d!12171 () Bool)

(declare-fun lt!2758 () Int)

(assert (=> d!12171 (>= lt!2758 0)))

(declare-fun e!9788 () Int)

(assert (=> d!12171 (= lt!2758 e!9788)))

(declare-fun c!4601 () Bool)

(assert (=> d!12171 (= c!4601 (is-Nil!324 l!761))))

(assert (=> d!12171 (= (size!205 l!761) lt!2758)))

(declare-fun b!18242 () Bool)

(assert (=> b!18242 (= e!9788 0)))

(declare-fun b!18243 () Bool)

(assert (=> b!18243 (= e!9788 (+ 1 (size!205 (t!4324 l!761))))))

(assert (= (and d!12171 c!4601) b!18242))

(assert (= (and d!12171 (not c!4601)) b!18243))

(declare-fun m!21163 () Bool)

(assert (=> b!18243 m!21163))

(assert (=> b!18175 d!12171))

(declare-fun b!18253 () Bool)

(declare-fun e!9793 () List!329)

(declare-fun e!9794 () List!329)

(assert (=> b!18253 (= e!9793 e!9794)))

(declare-fun c!4606 () Bool)

(assert (=> b!18253 (= c!4606 (is-Single!18 xs!604))))

(declare-fun b!18254 () Bool)

(assert (=> b!18254 (= e!9794 (Cons!323 (x!8740 xs!604) Nil!324))))

(declare-fun d!12173 () Bool)

(declare-fun lt!2761 () List!329)

(assert (=> d!12173 (= (size!205 lt!2761) (size!204 xs!604))))

(assert (=> d!12173 (= lt!2761 e!9793)))

(declare-fun c!4607 () Bool)

(assert (=> d!12173 (= c!4607 (is-Empty!29 xs!604))))

(assert (=> d!12173 (= (toList!89 xs!604) lt!2761)))

(declare-fun b!18255 () Bool)

(declare-fun ++!14 (List!329 List!329) List!329)

(assert (=> b!18255 (= e!9794 (++!14 (toList!89 (left!663 xs!604)) (toList!89 (right!666 xs!604))))))

(declare-fun b!18252 () Bool)

(assert (=> b!18252 (= e!9793 Nil!324)))

(assert (= (and b!18253 c!4606) b!18254))

(assert (= (and b!18253 (not c!4606)) b!18255))

(assert (= (and d!12173 c!4607) b!18252))

(assert (= (and d!12173 (not c!4607)) b!18253))

(declare-fun m!21165 () Bool)

(assert (=> d!12173 m!21165))

(assert (=> d!12173 m!21113))

(assert (=> b!18255 m!21157))

(assert (=> b!18255 m!21159))

(assert (=> b!18255 m!21157))

(assert (=> b!18255 m!21159))

(declare-fun m!21167 () Bool)

(assert (=> b!18255 m!21167))

(assert (=> b!18170 d!12173))

(declare-fun b!18262 () Bool)

(declare-fun e!9797 () Bool)

(declare-fun tp!4280 () Bool)

(declare-fun tp!4281 () Bool)

(assert (=> b!18262 (= e!9797 (and tp!4280 tp!4281))))

(declare-fun b!18263 () Bool)

(assert (=> b!18263 (= e!9797 tp_is_empty!73)))

(assert (=> b!18168 (= tp!4274 e!9797)))

(assert (= (and b!18168 (is-CC!18 (left!663 xs!604))) b!18262))

(assert (= (and b!18168 (is-Single!18 (left!663 xs!604))) b!18263))

(declare-fun b!18264 () Bool)

(declare-fun e!9798 () Bool)

(declare-fun tp!4282 () Bool)

(declare-fun tp!4283 () Bool)

(assert (=> b!18264 (= e!9798 (and tp!4282 tp!4283))))

(declare-fun b!18265 () Bool)

(assert (=> b!18265 (= e!9798 tp_is_empty!73)))

(assert (=> b!18168 (= tp!4273 e!9798)))

(assert (= (and b!18168 (is-CC!18 (right!666 xs!604))) b!18264))

(assert (= (and b!18168 (is-Single!18 (right!666 xs!604))) b!18265))

(declare-fun b!18270 () Bool)

(declare-fun e!9801 () Bool)

(declare-fun tp!4286 () Bool)

(assert (=> b!18270 (= e!9801 (and tp_is_empty!73 tp!4286))))

(assert (=> b!18167 (= tp!4275 e!9801)))

(assert (= (and b!18167 (is-Cons!323 (t!4324 l!761))) b!18270))

(declare-fun b!18271 () Bool)

(declare-fun e!9802 () Bool)

(declare-fun tp!4287 () Bool)

(declare-fun tp!4288 () Bool)

(assert (=> b!18271 (= e!9802 (and tp!4287 tp!4288))))

(declare-fun b!18272 () Bool)

(assert (=> b!18272 (= e!9802 tp_is_empty!73)))

(assert (=> b!18164 (= tp!4272 e!9802)))

(assert (= (and b!18164 (is-CC!18 (left!663 res!5603))) b!18271))

(assert (= (and b!18164 (is-Single!18 (left!663 res!5603))) b!18272))

(declare-fun b!18273 () Bool)

(declare-fun e!9803 () Bool)

(declare-fun tp!4289 () Bool)

(declare-fun tp!4290 () Bool)

(assert (=> b!18273 (= e!9803 (and tp!4289 tp!4290))))

(declare-fun b!18274 () Bool)

(assert (=> b!18274 (= e!9803 tp_is_empty!73)))

(assert (=> b!18164 (= tp!4271 e!9803)))

(assert (= (and b!18164 (is-CC!18 (right!666 res!5603))) b!18273))

(assert (= (and b!18164 (is-Single!18 (right!666 res!5603))) b!18274))

(push 1)

(assert (not b!18228))

(assert (not b!18225))

(assert (not b!18270))

(assert (not d!12173))

(assert (not b!18191))

(assert (not b!18203))

(assert (not b!18243))

(assert (not b!18227))

(assert (not b!18188))

(assert (not b!18201))

(assert (not b!18224))

(assert (not b!18231))

(assert (not b!18229))

(assert (not b!18237))

(assert (not b!18255))

(assert (not b!18236))

(assert (not b!18223))

(assert (not b!18230))

(assert tp_is_empty!73)

(assert (not b!18226))

(assert (not b!18264))

(assert (not b!18271))

(assert (not b!18189))

(assert (not b!18202))

(assert (not b!18262))

(assert (not b!18211))

(assert (not b!18273))

(assert (not b!18209))

(assert (not b!18190))

(assert (not b!18200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

