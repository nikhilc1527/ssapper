; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7584 () Bool)

(assert start!7584)

(declare-fun res!24873 () Bool)

(declare-fun e!28405 () Bool)

(assert (=> start!7584 (=> (not res!24873) (not e!28405))))

(declare-fun y!1642 () (_ BitVec 32))

(declare-fun x!21396 () (_ BitVec 32))

(declare-datatypes () ((Unit!904 (Unit!905))))

(declare-fun x$3!143 () Unit!904)

(declare-fun Unit!906 () Unit!904)

(assert (=> start!7584 (= res!24873 (and (not (= x!21396 y!1642)) (= x$3!143 Unit!906)))))

(assert (=> start!7584 e!28405))

(assert (=> start!7584 true))

(declare-datatypes () ((IntSet!31 (Empty!156) (Node!117 (left!1147 IntSet!31) (elem!217 (_ BitVec 32)) (right!1150 IntSet!31)))))

(declare-fun s!897 () IntSet!31)

(declare-fun e!28406 () Bool)

(declare-fun inv!977 (IntSet!31) Bool)

(assert (=> start!7584 (and (inv!977 s!897) e!28406)))

(declare-fun b!54277 () Bool)

(declare-fun contains!11 (IntSet!31 (_ BitVec 32)) Bool)

(declare-fun incl!2 (IntSet!31 (_ BitVec 32)) IntSet!31)

(assert (=> b!54277 (= e!28405 (not (= (contains!11 (incl!2 s!897 x!21396) y!1642) (contains!11 s!897 y!1642))))))

(declare-fun tp!15290 () Bool)

(declare-fun tp!15289 () Bool)

(declare-fun b!54278 () Bool)

(assert (=> b!54278 (= e!28406 (and (inv!977 (left!1147 s!897)) tp!15290 (inv!977 (right!1150 s!897)) tp!15289))))

(assert (= (and start!7584 res!24873) b!54277))

(assert (= (and start!7584 (is-Node!117 s!897)) b!54278))

(declare-fun m!58204 () Bool)

(assert (=> start!7584 m!58204))

(declare-fun m!58206 () Bool)

(assert (=> b!54277 m!58206))

(assert (=> b!54277 m!58206))

(declare-fun m!58208 () Bool)

(assert (=> b!54277 m!58208))

(declare-fun m!58210 () Bool)

(assert (=> b!54277 m!58210))

(declare-fun m!58212 () Bool)

(assert (=> b!54278 m!58212))

(declare-fun m!58214 () Bool)

(assert (=> b!54278 m!58214))

(push 1)

(assert (not b!54277))

(assert (not start!7584))

(assert (not b!54278))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44898 () Bool)

(declare-fun lt!9566 () Bool)

(declare-fun content!17 (IntSet!31) (Set (_ BitVec 32)))

(assert (=> d!44898 (= lt!9566 (member y!1642 (content!17 (incl!2 s!897 x!21396))))))

(declare-fun e!28412 () Bool)

(assert (=> d!44898 (= lt!9566 e!28412)))

(declare-fun res!24882 () Bool)

(assert (=> d!44898 (=> (not res!24882) (not e!28412))))

(assert (=> d!44898 (= res!24882 (not (is-Empty!156 (incl!2 s!897 x!21396))))))

(assert (=> d!44898 (= (contains!11 (incl!2 s!897 x!21396) y!1642) lt!9566)))

(declare-fun b!54285 () Bool)

(declare-fun lt!9567 () Bool)

(declare-fun lt!9568 () Bool)

(assert (=> b!54285 (= e!28412 (ite lt!9568 lt!9567 (or (not (bvsgt y!1642 (elem!217 (incl!2 s!897 x!21396)))) lt!9567)))))

(declare-fun e!28411 () Bool)

(assert (=> b!54285 (= lt!9567 e!28411)))

(declare-fun c!11795 () Bool)

(assert (=> b!54285 (= c!11795 (or lt!9568 (bvsgt y!1642 (elem!217 (incl!2 s!897 x!21396)))))))

(assert (=> b!54285 (= lt!9568 (bvslt y!1642 (elem!217 (incl!2 s!897 x!21396))))))

(declare-fun b!54287 () Bool)

(declare-fun res!24883 () Bool)

(assert (=> b!54287 (= e!28411 res!24883)))

(assert (=> b!54287 true))

(assert (=> b!54287 true))

(declare-fun b!54286 () Bool)

(assert (=> b!54286 (= e!28411 (contains!11 (ite lt!9568 (left!1147 (incl!2 s!897 x!21396)) (right!1150 (incl!2 s!897 x!21396))) y!1642))))

(assert (= (and d!44898 res!24882) b!54285))

(assert (= (and b!54285 c!11795) b!54286))

(assert (= (and b!54285 (not c!11795)) b!54287))

(assert (=> d!44898 m!58206))

(declare-fun m!58216 () Bool)

(assert (=> d!44898 m!58216))

(declare-fun m!58218 () Bool)

(assert (=> d!44898 m!58218))

(declare-fun m!58220 () Bool)

(assert (=> b!54286 m!58220))

(assert (=> b!54277 d!44898))

(declare-fun e!28421 () IntSet!31)

(declare-fun b!54298 () Bool)

(declare-fun lt!9575 () Bool)

(assert (=> b!54298 (= e!28421 (incl!2 (ite lt!9575 (left!1147 s!897) (right!1150 s!897)) x!21396))))

(declare-fun b!54299 () Bool)

(declare-fun e!28419 () IntSet!31)

(assert (=> b!54299 (= e!28419 (Node!117 Empty!156 x!21396 Empty!156))))

(declare-fun b!54300 () Bool)

(declare-fun res!24890 () IntSet!31)

(assert (=> b!54300 (= e!28421 res!24890)))

(assert (=> b!54300 true))

(declare-fun e!28420 () Bool)

(assert (=> b!54300 (and (inv!977 res!24890) e!28420)))

(declare-fun d!44900 () Bool)

(declare-fun lt!9577 () IntSet!31)

(assert (=> d!44900 (= (content!17 lt!9577) (union (content!17 s!897) (insert x!21396 (as emptyset (Set (_ BitVec 32))))))))

(assert (=> d!44900 (= lt!9577 e!28419)))

(declare-fun c!11801 () Bool)

(assert (=> d!44900 (= c!11801 (is-Empty!156 s!897))))

(assert (=> d!44900 (= (incl!2 s!897 x!21396) lt!9577)))

(declare-fun lt!9576 () IntSet!31)

(declare-fun b!54301 () Bool)

(assert (=> b!54301 (= e!28419 (ite lt!9575 (Node!117 lt!9576 (elem!217 s!897) (right!1150 s!897)) (ite (bvsgt x!21396 (elem!217 s!897)) (Node!117 (left!1147 s!897) (elem!217 s!897) lt!9576) s!897)))))

(assert (=> b!54301 (= lt!9576 e!28421)))

(declare-fun c!11800 () Bool)

(assert (=> b!54301 (= c!11800 (or lt!9575 (bvsgt x!21396 (elem!217 s!897))))))

(assert (=> b!54301 (= lt!9575 (bvslt x!21396 (elem!217 s!897)))))

(declare-fun b!54302 () Bool)

(declare-fun tp!15295 () Bool)

(declare-fun tp!15296 () Bool)

(assert (=> b!54302 (= e!28420 (and (inv!977 (left!1147 res!24890)) tp!15296 (inv!977 (right!1150 res!24890)) tp!15295))))

(assert (= (and b!54300 (is-Node!117 res!24890)) b!54302))

(assert (= (and b!54301 c!11800) b!54298))

(assert (= (and b!54301 (not c!11800)) b!54300))

(assert (= (and d!44900 c!11801) b!54299))

(assert (= (and d!44900 (not c!11801)) b!54301))

(declare-fun m!58222 () Bool)

(assert (=> b!54298 m!58222))

(declare-fun m!58224 () Bool)

(assert (=> b!54300 m!58224))

(declare-fun m!58226 () Bool)

(assert (=> d!44900 m!58226))

(declare-fun m!58228 () Bool)

(assert (=> d!44900 m!58228))

(declare-fun m!58230 () Bool)

(assert (=> d!44900 m!58230))

(declare-fun m!58232 () Bool)

(assert (=> b!54302 m!58232))

(declare-fun m!58234 () Bool)

(assert (=> b!54302 m!58234))

(assert (=> b!54277 d!44900))

(declare-fun d!44902 () Bool)

(declare-fun lt!9578 () Bool)

(assert (=> d!44902 (= lt!9578 (member y!1642 (content!17 s!897)))))

(declare-fun e!28423 () Bool)

(assert (=> d!44902 (= lt!9578 e!28423)))

(declare-fun res!24891 () Bool)

(assert (=> d!44902 (=> (not res!24891) (not e!28423))))

(assert (=> d!44902 (= res!24891 (not (is-Empty!156 s!897)))))

(assert (=> d!44902 (= (contains!11 s!897 y!1642) lt!9578)))

(declare-fun lt!9580 () Bool)

(declare-fun b!54303 () Bool)

(declare-fun lt!9579 () Bool)

(assert (=> b!54303 (= e!28423 (ite lt!9580 lt!9579 (or (not (bvsgt y!1642 (elem!217 s!897))) lt!9579)))))

(declare-fun e!28422 () Bool)

(assert (=> b!54303 (= lt!9579 e!28422)))

(declare-fun c!11802 () Bool)

(assert (=> b!54303 (= c!11802 (or lt!9580 (bvsgt y!1642 (elem!217 s!897))))))

(assert (=> b!54303 (= lt!9580 (bvslt y!1642 (elem!217 s!897)))))

(declare-fun b!54305 () Bool)

(declare-fun res!24892 () Bool)

(assert (=> b!54305 (= e!28422 res!24892)))

(assert (=> b!54305 true))

(assert (=> b!54305 true))

(declare-fun b!54304 () Bool)

(assert (=> b!54304 (= e!28422 (contains!11 (ite lt!9580 (left!1147 s!897) (right!1150 s!897)) y!1642))))

(assert (= (and d!44902 res!24891) b!54303))

(assert (= (and b!54303 c!11802) b!54304))

(assert (= (and b!54303 (not c!11802)) b!54305))

(assert (=> d!44902 m!58228))

(declare-fun m!58236 () Bool)

(assert (=> d!44902 m!58236))

(declare-fun m!58238 () Bool)

(assert (=> b!54304 m!58238))

(assert (=> b!54277 d!44902))

(declare-fun b!54310 () Bool)

(declare-fun m!58240 () Bool)

(assert (=> b!54310 m!58240))

(declare-fun inst!240 () Bool)

(declare-fun x!21585 () (_ BitVec 32))

(assert (=> b!54310 (= inst!240 (=> true (or (not (member x!21585 (content!17 (left!1147 s!897)))) (bvslt x!21585 (elem!217 s!897)))))))

(declare-fun m!58242 () Bool)

(assert (=> b!54310 m!58242))

(declare-fun b!54311 () Bool)

(declare-fun m!58244 () Bool)

(assert (=> b!54311 m!58244))

(declare-fun inst!241 () Bool)

(declare-fun x!21586 () (_ BitVec 32))

(assert (=> b!54311 (= inst!241 (=> true (or (not (member x!21586 (content!17 (right!1150 s!897)))) (bvslt (elem!217 s!897) x!21586))))))

(declare-fun m!58246 () Bool)

(assert (=> b!54311 m!58246))

(declare-fun bs!24843 () Bool)

(declare-fun neg-inst!228 () Bool)

(assert (= bs!24843 neg-inst!228))

(assert (=> bs!24843 m!58240))

(declare-fun bs!24844 () Bool)

(declare-fun s!1013 () Bool)

(assert (= bs!24844 (and neg-inst!228 s!1013)))

(assert (=> bs!24844 (=> true (or (not (member x!21585 (content!17 (left!1147 s!897)))) (bvslt x!21585 (elem!217 s!897))))))

(assert (=> m!58242 s!1013))

(declare-fun bs!24845 () Bool)

(assert (= bs!24845 (and neg-inst!228 b!54310)))

(assert (=> bs!24845 (= true inst!240)))

(declare-fun bs!24846 () Bool)

(declare-fun neg-inst!229 () Bool)

(assert (= bs!24846 neg-inst!229))

(assert (=> bs!24846 m!58244))

(declare-fun bs!24847 () Bool)

(declare-fun s!1015 () Bool)

(assert (= bs!24847 (and neg-inst!229 s!1015)))

(assert (=> bs!24847 (=> true (or (not (member x!21586 (content!17 (right!1150 s!897)))) (bvslt (elem!217 s!897) x!21586)))))

(assert (=> m!58246 s!1015))

(declare-fun bs!24848 () Bool)

(assert (= bs!24848 (and neg-inst!229 b!54311)))

(assert (=> bs!24848 (= true inst!241)))

(declare-fun d!44904 () Bool)

(declare-fun res!24897 () Bool)

(declare-fun e!28428 () Bool)

(assert (=> d!44904 (=> res!24897 e!28428)))

(assert (=> d!44904 (= res!24897 (not (is-Node!117 s!897)))))

(assert (=> d!44904 (= (inv!977 s!897) e!28428)))

(declare-fun e!28429 () Bool)

(assert (=> b!54310 (= e!28428 e!28429)))

(declare-fun res!24898 () Bool)

(assert (=> b!54310 (=> (not res!24898) (not e!28429))))

(assert (=> b!54310 (= res!24898 inst!240)))

(assert (=> b!54311 (= e!28429 inst!241)))

(assert (= (and d!44904 (not res!24897)) b!54310))

(assert (= neg-inst!228 inst!240))

(assert (= (and b!54310 res!24898) b!54311))

(assert (= neg-inst!229 inst!241))

(assert (=> start!7584 d!44904))

(declare-fun b!54312 () Bool)

(declare-fun m!58248 () Bool)

(assert (=> b!54312 m!58248))

(declare-fun inst!242 () Bool)

(declare-fun x!21587 () (_ BitVec 32))

(assert (=> b!54312 (= inst!242 (=> true (or (not (member x!21587 (content!17 (left!1147 (left!1147 s!897))))) (bvslt x!21587 (elem!217 (left!1147 s!897))))))))

(declare-fun m!58250 () Bool)

(assert (=> b!54312 m!58250))

(declare-fun bs!24849 () Bool)

(assert (= bs!24849 (and b!54312 neg-inst!228)))

(assert (=> (and bs!24849 (= (content!17 (left!1147 (left!1147 s!897))) (content!17 (left!1147 s!897))) (= (elem!217 (left!1147 s!897)) (elem!217 s!897))) (= inst!242 true)))

(declare-fun bs!24850 () Bool)

(assert (= bs!24850 (and b!54312 b!54310)))

(assert (=> (and bs!24850 (= (content!17 (left!1147 (left!1147 s!897))) (content!17 (left!1147 s!897))) (= (elem!217 (left!1147 s!897)) (elem!217 s!897))) (= inst!242 inst!240)))

(declare-fun b!54313 () Bool)

(declare-fun m!58252 () Bool)

(assert (=> b!54313 m!58252))

(declare-fun inst!243 () Bool)

(declare-fun x!21588 () (_ BitVec 32))

(assert (=> b!54313 (= inst!243 (=> true (or (not (member x!21588 (content!17 (right!1150 (left!1147 s!897))))) (bvslt (elem!217 (left!1147 s!897)) x!21588))))))

(declare-fun m!58254 () Bool)

(assert (=> b!54313 m!58254))

(declare-fun bs!24851 () Bool)

(assert (= bs!24851 (and b!54313 neg-inst!229)))

(assert (=> (and bs!24851 (= (content!17 (right!1150 (left!1147 s!897))) (content!17 (right!1150 s!897))) (= (elem!217 (left!1147 s!897)) (elem!217 s!897))) (= inst!243 true)))

(declare-fun bs!24852 () Bool)

(assert (= bs!24852 (and b!54313 b!54311)))

(assert (=> (and bs!24852 (= (content!17 (right!1150 (left!1147 s!897))) (content!17 (right!1150 s!897))) (= (elem!217 (left!1147 s!897)) (elem!217 s!897))) (= inst!243 inst!241)))

(declare-fun bs!24853 () Bool)

(declare-fun neg-inst!230 () Bool)

(assert (= bs!24853 neg-inst!230))

(assert (=> bs!24853 m!58248))

(declare-fun bs!24854 () Bool)

(declare-fun s!1017 () Bool)

(assert (= bs!24854 (and neg-inst!230 s!1017)))

(assert (=> bs!24854 (=> true (or (not (member x!21587 (content!17 (left!1147 (left!1147 s!897))))) (bvslt x!21587 (elem!217 (left!1147 s!897)))))))

(assert (=> m!58250 s!1017))

(declare-fun bs!24855 () Bool)

(assert (= bs!24855 (and neg-inst!230 neg-inst!228)))

(assert (=> (and bs!24855 (= (content!17 (left!1147 (left!1147 s!897))) (content!17 (left!1147 s!897))) (= (elem!217 (left!1147 s!897)) (elem!217 s!897))) (= true true)))

(declare-fun bs!24856 () Bool)

(assert (= bs!24856 (and neg-inst!230 b!54312)))

(assert (=> bs!24856 (= true inst!242)))

(declare-fun bs!24857 () Bool)

(assert (= bs!24857 (and neg-inst!230 b!54310)))

(assert (=> (and bs!24857 (= (content!17 (left!1147 (left!1147 s!897))) (content!17 (left!1147 s!897))) (= (elem!217 (left!1147 s!897)) (elem!217 s!897))) (= true inst!240)))

(declare-fun bs!24858 () Bool)

(declare-fun neg-inst!231 () Bool)

(assert (= bs!24858 neg-inst!231))

(assert (=> bs!24858 m!58252))

(declare-fun bs!24859 () Bool)

(declare-fun s!1019 () Bool)

(assert (= bs!24859 (and neg-inst!231 s!1019)))

(assert (=> bs!24859 (=> true (or (not (member x!21588 (content!17 (right!1150 (left!1147 s!897))))) (bvslt (elem!217 (left!1147 s!897)) x!21588)))))

(assert (=> m!58254 s!1019))

(declare-fun bs!24860 () Bool)

(assert (= bs!24860 (and neg-inst!231 neg-inst!229)))

(assert (=> (and bs!24860 (= (content!17 (right!1150 (left!1147 s!897))) (content!17 (right!1150 s!897))) (= (elem!217 (left!1147 s!897)) (elem!217 s!897))) (= true true)))

(declare-fun bs!24861 () Bool)

(assert (= bs!24861 (and neg-inst!231 b!54313)))

(assert (=> bs!24861 (= true inst!243)))

(declare-fun bs!24862 () Bool)

(assert (= bs!24862 (and neg-inst!231 b!54311)))

(assert (=> (and bs!24862 (= (content!17 (right!1150 (left!1147 s!897))) (content!17 (right!1150 s!897))) (= (elem!217 (left!1147 s!897)) (elem!217 s!897))) (= true inst!241)))

(declare-fun d!44906 () Bool)

(declare-fun res!24899 () Bool)

(declare-fun e!28430 () Bool)

(assert (=> d!44906 (=> res!24899 e!28430)))

(assert (=> d!44906 (= res!24899 (not (is-Node!117 (left!1147 s!897))))))

(assert (=> d!44906 (= (inv!977 (left!1147 s!897)) e!28430)))

(declare-fun e!28431 () Bool)

(assert (=> b!54312 (= e!28430 e!28431)))

(declare-fun res!24900 () Bool)

(assert (=> b!54312 (=> (not res!24900) (not e!28431))))

(assert (=> b!54312 (= res!24900 inst!242)))

(assert (=> b!54313 (= e!28431 inst!243)))

(assert (= (and d!44906 (not res!24899)) b!54312))

(assert (= neg-inst!230 inst!242))

(assert (= (and b!54312 res!24900) b!54313))

(assert (= neg-inst!231 inst!243))

(assert (=> b!54278 d!44906))

(declare-fun b!54314 () Bool)

(declare-fun m!58256 () Bool)

(assert (=> b!54314 m!58256))

(declare-fun inst!244 () Bool)

(declare-fun x!21589 () (_ BitVec 32))

(assert (=> b!54314 (= inst!244 (=> true (or (not (member x!21589 (content!17 (left!1147 (right!1150 s!897))))) (bvslt x!21589 (elem!217 (right!1150 s!897))))))))

(declare-fun m!58258 () Bool)

(assert (=> b!54314 m!58258))

(declare-fun bs!24863 () Bool)

(assert (= bs!24863 (and b!54314 neg-inst!230)))

(assert (=> (and bs!24863 (= (content!17 (left!1147 (right!1150 s!897))) (content!17 (left!1147 (left!1147 s!897)))) (= (elem!217 (right!1150 s!897)) (elem!217 (left!1147 s!897)))) (= inst!244 true)))

(declare-fun bs!24864 () Bool)

(assert (= bs!24864 (and b!54314 neg-inst!228)))

(assert (=> (and bs!24864 (= (content!17 (left!1147 (right!1150 s!897))) (content!17 (left!1147 s!897))) (= (elem!217 (right!1150 s!897)) (elem!217 s!897))) (= inst!244 true)))

(declare-fun bs!24865 () Bool)

(assert (= bs!24865 (and b!54314 b!54312)))

(assert (=> (and bs!24865 (= (content!17 (left!1147 (right!1150 s!897))) (content!17 (left!1147 (left!1147 s!897)))) (= (elem!217 (right!1150 s!897)) (elem!217 (left!1147 s!897)))) (= inst!244 inst!242)))

(declare-fun bs!24866 () Bool)

(assert (= bs!24866 (and b!54314 b!54310)))

(assert (=> (and bs!24866 (= (content!17 (left!1147 (right!1150 s!897))) (content!17 (left!1147 s!897))) (= (elem!217 (right!1150 s!897)) (elem!217 s!897))) (= inst!244 inst!240)))

(declare-fun b!54315 () Bool)

(declare-fun m!58260 () Bool)

(assert (=> b!54315 m!58260))

(declare-fun inst!245 () Bool)

(declare-fun x!21590 () (_ BitVec 32))

(assert (=> b!54315 (= inst!245 (=> true (or (not (member x!21590 (content!17 (right!1150 (right!1150 s!897))))) (bvslt (elem!217 (right!1150 s!897)) x!21590))))))

(declare-fun m!58262 () Bool)

(assert (=> b!54315 m!58262))

(declare-fun bs!24867 () Bool)

(assert (= bs!24867 (and b!54315 neg-inst!229)))

(assert (=> (and bs!24867 (= (content!17 (right!1150 (right!1150 s!897))) (content!17 (right!1150 s!897))) (= (elem!217 (right!1150 s!897)) (elem!217 s!897))) (= inst!245 true)))

(declare-fun bs!24868 () Bool)

(assert (= bs!24868 (and b!54315 b!54313)))

(assert (=> (and bs!24868 (= (content!17 (right!1150 (right!1150 s!897))) (content!17 (right!1150 (left!1147 s!897)))) (= (elem!217 (right!1150 s!897)) (elem!217 (left!1147 s!897)))) (= inst!245 inst!243)))

(declare-fun bs!24869 () Bool)

(assert (= bs!24869 (and b!54315 b!54311)))

(assert (=> (and bs!24869 (= (content!17 (right!1150 (right!1150 s!897))) (content!17 (right!1150 s!897))) (= (elem!217 (right!1150 s!897)) (elem!217 s!897))) (= inst!245 inst!241)))

(declare-fun bs!24870 () Bool)

(assert (= bs!24870 (and b!54315 neg-inst!231)))

(assert (=> (and bs!24870 (= (content!17 (right!1150 (right!1150 s!897))) (content!17 (right!1150 (left!1147 s!897)))) (= (elem!217 (right!1150 s!897)) (elem!217 (left!1147 s!897)))) (= inst!245 true)))

(declare-fun bs!24871 () Bool)

(declare-fun neg-inst!232 () Bool)

(assert (= bs!24871 neg-inst!232))

(assert (=> bs!24871 m!58256))

(declare-fun bs!24872 () Bool)

(declare-fun s!1021 () Bool)

(assert (= bs!24872 (and neg-inst!232 s!1021)))

(assert (=> bs!24872 (=> true (or (not (member x!21589 (content!17 (left!1147 (right!1150 s!897))))) (bvslt x!21589 (elem!217 (right!1150 s!897)))))))

(assert (=> m!58258 s!1021))

(declare-fun bs!24873 () Bool)

(assert (= bs!24873 (and neg-inst!232 neg-inst!230)))

(assert (=> (and bs!24873 (= (content!17 (left!1147 (right!1150 s!897))) (content!17 (left!1147 (left!1147 s!897)))) (= (elem!217 (right!1150 s!897)) (elem!217 (left!1147 s!897)))) (= true true)))

(declare-fun bs!24874 () Bool)

(assert (= bs!24874 (and neg-inst!232 b!54314)))

(assert (=> bs!24874 (= true inst!244)))

(declare-fun bs!24875 () Bool)

(assert (= bs!24875 (and neg-inst!232 neg-inst!228)))

(assert (=> (and bs!24875 (= (content!17 (left!1147 (right!1150 s!897))) (content!17 (left!1147 s!897))) (= (elem!217 (right!1150 s!897)) (elem!217 s!897))) (= true true)))

(declare-fun bs!24876 () Bool)

(assert (= bs!24876 (and neg-inst!232 b!54312)))

(assert (=> (and bs!24876 (= (content!17 (left!1147 (right!1150 s!897))) (content!17 (left!1147 (left!1147 s!897)))) (= (elem!217 (right!1150 s!897)) (elem!217 (left!1147 s!897)))) (= true inst!242)))

(declare-fun bs!24877 () Bool)

(assert (= bs!24877 (and neg-inst!232 b!54310)))

(assert (=> (and bs!24877 (= (content!17 (left!1147 (right!1150 s!897))) (content!17 (left!1147 s!897))) (= (elem!217 (right!1150 s!897)) (elem!217 s!897))) (= true inst!240)))

(declare-fun bs!24878 () Bool)

(declare-fun neg-inst!233 () Bool)

(assert (= bs!24878 neg-inst!233))

(assert (=> bs!24878 m!58260))

(declare-fun bs!24879 () Bool)

(declare-fun s!1023 () Bool)

(assert (= bs!24879 (and neg-inst!233 s!1023)))

(assert (=> bs!24879 (=> true (or (not (member x!21590 (content!17 (right!1150 (right!1150 s!897))))) (bvslt (elem!217 (right!1150 s!897)) x!21590)))))

(assert (=> m!58262 s!1023))

(declare-fun bs!24880 () Bool)

(assert (= bs!24880 (and neg-inst!233 b!54315)))

(assert (=> bs!24880 (= true inst!245)))

(declare-fun bs!24881 () Bool)

(assert (= bs!24881 (and neg-inst!233 neg-inst!229)))

(assert (=> (and bs!24881 (= (content!17 (right!1150 (right!1150 s!897))) (content!17 (right!1150 s!897))) (= (elem!217 (right!1150 s!897)) (elem!217 s!897))) (= true true)))

(declare-fun bs!24882 () Bool)

(assert (= bs!24882 (and neg-inst!233 b!54313)))

(assert (=> (and bs!24882 (= (content!17 (right!1150 (right!1150 s!897))) (content!17 (right!1150 (left!1147 s!897)))) (= (elem!217 (right!1150 s!897)) (elem!217 (left!1147 s!897)))) (= true inst!243)))

(declare-fun bs!24883 () Bool)

(assert (= bs!24883 (and neg-inst!233 b!54311)))

(assert (=> (and bs!24883 (= (content!17 (right!1150 (right!1150 s!897))) (content!17 (right!1150 s!897))) (= (elem!217 (right!1150 s!897)) (elem!217 s!897))) (= true inst!241)))

(declare-fun bs!24884 () Bool)

(assert (= bs!24884 (and neg-inst!233 neg-inst!231)))

(assert (=> (and bs!24884 (= (content!17 (right!1150 (right!1150 s!897))) (content!17 (right!1150 (left!1147 s!897)))) (= (elem!217 (right!1150 s!897)) (elem!217 (left!1147 s!897)))) (= true true)))

(declare-fun d!44908 () Bool)

(declare-fun res!24901 () Bool)

(declare-fun e!28432 () Bool)

(assert (=> d!44908 (=> res!24901 e!28432)))

(assert (=> d!44908 (= res!24901 (not (is-Node!117 (right!1150 s!897))))))

(assert (=> d!44908 (= (inv!977 (right!1150 s!897)) e!28432)))

(declare-fun e!28433 () Bool)

(assert (=> b!54314 (= e!28432 e!28433)))

(declare-fun res!24902 () Bool)

(assert (=> b!54314 (=> (not res!24902) (not e!28433))))

(assert (=> b!54314 (= res!24902 inst!244)))

(assert (=> b!54315 (= e!28433 inst!245)))

(assert (= (and d!44908 (not res!24901)) b!54314))

(assert (= neg-inst!232 inst!244))

(assert (= (and b!54314 res!24902) b!54315))

(assert (= neg-inst!233 inst!245))

(assert (=> b!54278 d!44908))

(declare-fun tp!15301 () Bool)

(declare-fun e!28436 () Bool)

(declare-fun tp!15302 () Bool)

(declare-fun b!54320 () Bool)

(assert (=> b!54320 (= e!28436 (and (inv!977 (left!1147 (left!1147 s!897))) tp!15301 (inv!977 (right!1150 (left!1147 s!897))) tp!15302))))

(assert (=> b!54278 (= tp!15290 (and (inv!977 (left!1147 s!897)) e!28436))))

(assert (= (and b!54278 (is-Node!117 (left!1147 s!897))) b!54320))

(declare-fun m!58264 () Bool)

(assert (=> b!54320 m!58264))

(declare-fun m!58266 () Bool)

(assert (=> b!54320 m!58266))

(assert (=> b!54278 m!58212))

(declare-fun tp!15303 () Bool)

(declare-fun b!54321 () Bool)

(declare-fun tp!15304 () Bool)

(declare-fun e!28437 () Bool)

(assert (=> b!54321 (= e!28437 (and (inv!977 (left!1147 (right!1150 s!897))) tp!15303 (inv!977 (right!1150 (right!1150 s!897))) tp!15304))))

(assert (=> b!54278 (= tp!15289 (and (inv!977 (right!1150 s!897)) e!28437))))

(assert (= (and b!54278 (is-Node!117 (right!1150 s!897))) b!54321))

(declare-fun m!58268 () Bool)

(assert (=> b!54321 m!58268))

(declare-fun m!58270 () Bool)

(assert (=> b!54321 m!58270))

(assert (=> b!54278 m!58214))

(push 1)

(assert (not b!54298))

(assert (not d!44900))

(assert (not d!44902))

(assert (not b!54315))

(assert (not b!54311))

(assert (not neg-inst!232))

(assert (not b!54314))

(assert (not b!54286))

(assert (not b!54300))

(assert (not b!54313))

(assert (not b!54304))

(assert (not b!54310))

(assert (not neg-inst!231))

(assert (not b!54312))

(assert (not neg-inst!230))

(assert (not b!54321))

(assert (not b!54278))

(assert (not neg-inst!229))

(assert (not b!54302))

(assert (not neg-inst!228))

(assert (not neg-inst!233))

(assert (not b!54320))

(assert (not d!44898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

