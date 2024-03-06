; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7592 () Bool)

(assert start!7592)

(declare-fun res!24905 () Bool)

(declare-fun e!28442 () Bool)

(assert (=> start!7592 (=> (not res!24905) (not e!28442))))

(declare-datatypes () ((IntSet!32 (Empty!157) (Node!118 (left!1148 IntSet!32) (elem!218 (_ BitVec 32)) (right!1151 IntSet!32)))))

(declare-fun thiss!7629 () IntSet!32)

(declare-fun res!24705 () Bool)

(assert (=> start!7592 (= res!24905 (and (is-Empty!157 thiss!7629) (= res!24705 false)))))

(assert (=> start!7592 e!28442))

(declare-fun e!28443 () Bool)

(declare-fun inv!977 (IntSet!32) Bool)

(assert (=> start!7592 (and (inv!977 thiss!7629) e!28443)))

(assert (=> start!7592 true))

(declare-fun x!21384 () (_ BitVec 32))

(declare-fun b!54326 () Bool)

(declare-fun content!17 (IntSet!32) (Set (_ BitVec 32)))

(assert (=> b!54326 (= e!28442 (not (= res!24705 (member x!21384 (content!17 thiss!7629)))))))

(declare-fun b!54327 () Bool)

(declare-fun tp!15309 () Bool)

(declare-fun tp!15310 () Bool)

(assert (=> b!54327 (= e!28443 (and (inv!977 (left!1148 thiss!7629)) tp!15309 (inv!977 (right!1151 thiss!7629)) tp!15310))))

(assert (= (and start!7592 res!24905) b!54326))

(assert (= (and start!7592 (is-Node!118 thiss!7629)) b!54327))

(declare-fun m!58272 () Bool)

(assert (=> start!7592 m!58272))

(declare-fun m!58274 () Bool)

(assert (=> b!54326 m!58274))

(declare-fun m!58276 () Bool)

(assert (=> b!54326 m!58276))

(declare-fun m!58278 () Bool)

(assert (=> b!54327 m!58278))

(declare-fun m!58280 () Bool)

(assert (=> b!54327 m!58280))

(push 1)

(assert (not b!54327))

(assert (not start!7592))

(assert (not b!54326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!54332 () Bool)

(declare-fun m!58282 () Bool)

(assert (=> b!54332 m!58282))

(declare-fun inst!250 () Bool)

(declare-fun x!21611 () (_ BitVec 32))

(assert (=> b!54332 (= inst!250 (=> true (or (not (member x!21611 (content!17 (left!1148 (left!1148 thiss!7629))))) (bvslt x!21611 (elem!218 (left!1148 thiss!7629))))))))

(declare-fun m!58284 () Bool)

(assert (=> b!54332 m!58284))

(declare-fun b!54333 () Bool)

(declare-fun m!58286 () Bool)

(assert (=> b!54333 m!58286))

(declare-fun inst!251 () Bool)

(declare-fun x!21612 () (_ BitVec 32))

(assert (=> b!54333 (= inst!251 (=> true (or (not (member x!21612 (content!17 (right!1151 (left!1148 thiss!7629))))) (bvslt (elem!218 (left!1148 thiss!7629)) x!21612))))))

(declare-fun m!58288 () Bool)

(assert (=> b!54333 m!58288))

(declare-fun bs!24886 () Bool)

(declare-fun neg-inst!239 () Bool)

(assert (= bs!24886 neg-inst!239))

(assert (=> bs!24886 m!58282))

(declare-fun bs!24887 () Bool)

(declare-fun s!1025 () Bool)

(assert (= bs!24887 (and neg-inst!239 s!1025)))

(assert (=> bs!24887 (=> true (or (not (member x!21611 (content!17 (left!1148 (left!1148 thiss!7629))))) (bvslt x!21611 (elem!218 (left!1148 thiss!7629)))))))

(assert (=> m!58284 s!1025))

(declare-fun bs!24888 () Bool)

(assert (= bs!24888 (and neg-inst!239 b!54332)))

(assert (=> bs!24888 (= true inst!250)))

(declare-fun bs!24889 () Bool)

(declare-fun neg-inst!238 () Bool)

(assert (= bs!24889 neg-inst!238))

(assert (=> bs!24889 m!58286))

(declare-fun bs!24890 () Bool)

(declare-fun s!1027 () Bool)

(assert (= bs!24890 (and neg-inst!238 s!1027)))

(assert (=> bs!24890 (=> true (or (not (member x!21612 (content!17 (right!1151 (left!1148 thiss!7629))))) (bvslt (elem!218 (left!1148 thiss!7629)) x!21612)))))

(assert (=> m!58288 s!1027))

(declare-fun bs!24891 () Bool)

(assert (= bs!24891 (and neg-inst!238 b!54333)))

(assert (=> bs!24891 (= true inst!251)))

(declare-fun d!44910 () Bool)

(declare-fun res!24911 () Bool)

(declare-fun e!28449 () Bool)

(assert (=> d!44910 (=> res!24911 e!28449)))

(assert (=> d!44910 (= res!24911 (not (is-Node!118 (left!1148 thiss!7629))))))

(assert (=> d!44910 (= (inv!977 (left!1148 thiss!7629)) e!28449)))

(declare-fun e!28448 () Bool)

(assert (=> b!54332 (= e!28449 e!28448)))

(declare-fun res!24910 () Bool)

(assert (=> b!54332 (=> (not res!24910) (not e!28448))))

(assert (=> b!54332 (= res!24910 inst!250)))

(assert (=> b!54333 (= e!28448 inst!251)))

(assert (= (and d!44910 (not res!24911)) b!54332))

(assert (= neg-inst!239 inst!250))

(assert (= (and b!54332 res!24910) b!54333))

(assert (= neg-inst!238 inst!251))

(assert (=> b!54327 d!44910))

(declare-fun b!54334 () Bool)

(declare-fun m!58290 () Bool)

(assert (=> b!54334 m!58290))

(declare-fun inst!252 () Bool)

(declare-fun x!21613 () (_ BitVec 32))

(assert (=> b!54334 (= inst!252 (=> true (or (not (member x!21613 (content!17 (left!1148 (right!1151 thiss!7629))))) (bvslt x!21613 (elem!218 (right!1151 thiss!7629))))))))

(declare-fun m!58292 () Bool)

(assert (=> b!54334 m!58292))

(declare-fun bs!24892 () Bool)

(assert (= bs!24892 (and b!54334 neg-inst!239)))

(assert (=> (and bs!24892 (= (content!17 (left!1148 (right!1151 thiss!7629))) (content!17 (left!1148 (left!1148 thiss!7629)))) (= (elem!218 (right!1151 thiss!7629)) (elem!218 (left!1148 thiss!7629)))) (= inst!252 true)))

(declare-fun bs!24893 () Bool)

(assert (= bs!24893 (and b!54334 b!54332)))

(assert (=> (and bs!24893 (= (content!17 (left!1148 (right!1151 thiss!7629))) (content!17 (left!1148 (left!1148 thiss!7629)))) (= (elem!218 (right!1151 thiss!7629)) (elem!218 (left!1148 thiss!7629)))) (= inst!252 inst!250)))

(declare-fun b!54335 () Bool)

(declare-fun m!58294 () Bool)

(assert (=> b!54335 m!58294))

(declare-fun inst!253 () Bool)

(declare-fun x!21614 () (_ BitVec 32))

(assert (=> b!54335 (= inst!253 (=> true (or (not (member x!21614 (content!17 (right!1151 (right!1151 thiss!7629))))) (bvslt (elem!218 (right!1151 thiss!7629)) x!21614))))))

(declare-fun m!58296 () Bool)

(assert (=> b!54335 m!58296))

(declare-fun bs!24894 () Bool)

(assert (= bs!24894 (and b!54335 b!54333)))

(assert (=> (and bs!24894 (= (content!17 (right!1151 (right!1151 thiss!7629))) (content!17 (right!1151 (left!1148 thiss!7629)))) (= (elem!218 (right!1151 thiss!7629)) (elem!218 (left!1148 thiss!7629)))) (= inst!253 inst!251)))

(declare-fun bs!24895 () Bool)

(assert (= bs!24895 (and b!54335 neg-inst!238)))

(assert (=> (and bs!24895 (= (content!17 (right!1151 (right!1151 thiss!7629))) (content!17 (right!1151 (left!1148 thiss!7629)))) (= (elem!218 (right!1151 thiss!7629)) (elem!218 (left!1148 thiss!7629)))) (= inst!253 true)))

(declare-fun bs!24896 () Bool)

(declare-fun neg-inst!241 () Bool)

(assert (= bs!24896 neg-inst!241))

(assert (=> bs!24896 m!58290))

(declare-fun bs!24897 () Bool)

(declare-fun s!1029 () Bool)

(assert (= bs!24897 (and neg-inst!241 s!1029)))

(assert (=> bs!24897 (=> true (or (not (member x!21613 (content!17 (left!1148 (right!1151 thiss!7629))))) (bvslt x!21613 (elem!218 (right!1151 thiss!7629)))))))

(assert (=> m!58292 s!1029))

(declare-fun bs!24898 () Bool)

(assert (= bs!24898 (and neg-inst!241 b!54334)))

(assert (=> bs!24898 (= true inst!252)))

(declare-fun bs!24899 () Bool)

(assert (= bs!24899 (and neg-inst!241 neg-inst!239)))

(assert (=> (and bs!24899 (= (content!17 (left!1148 (right!1151 thiss!7629))) (content!17 (left!1148 (left!1148 thiss!7629)))) (= (elem!218 (right!1151 thiss!7629)) (elem!218 (left!1148 thiss!7629)))) (= true true)))

(declare-fun bs!24900 () Bool)

(assert (= bs!24900 (and neg-inst!241 b!54332)))

(assert (=> (and bs!24900 (= (content!17 (left!1148 (right!1151 thiss!7629))) (content!17 (left!1148 (left!1148 thiss!7629)))) (= (elem!218 (right!1151 thiss!7629)) (elem!218 (left!1148 thiss!7629)))) (= true inst!250)))

(declare-fun bs!24901 () Bool)

(declare-fun neg-inst!240 () Bool)

(assert (= bs!24901 neg-inst!240))

(assert (=> bs!24901 m!58294))

(declare-fun bs!24902 () Bool)

(declare-fun s!1031 () Bool)

(assert (= bs!24902 (and neg-inst!240 s!1031)))

(assert (=> bs!24902 (=> true (or (not (member x!21614 (content!17 (right!1151 (right!1151 thiss!7629))))) (bvslt (elem!218 (right!1151 thiss!7629)) x!21614)))))

(assert (=> m!58296 s!1031))

(declare-fun bs!24903 () Bool)

(assert (= bs!24903 (and neg-inst!240 b!54335)))

(assert (=> bs!24903 (= true inst!253)))

(declare-fun bs!24904 () Bool)

(assert (= bs!24904 (and neg-inst!240 b!54333)))

(assert (=> (and bs!24904 (= (content!17 (right!1151 (right!1151 thiss!7629))) (content!17 (right!1151 (left!1148 thiss!7629)))) (= (elem!218 (right!1151 thiss!7629)) (elem!218 (left!1148 thiss!7629)))) (= true inst!251)))

(declare-fun bs!24905 () Bool)

(assert (= bs!24905 (and neg-inst!240 neg-inst!238)))

(assert (=> (and bs!24905 (= (content!17 (right!1151 (right!1151 thiss!7629))) (content!17 (right!1151 (left!1148 thiss!7629)))) (= (elem!218 (right!1151 thiss!7629)) (elem!218 (left!1148 thiss!7629)))) (= true true)))

(declare-fun d!44912 () Bool)

(declare-fun res!24913 () Bool)

(declare-fun e!28451 () Bool)

(assert (=> d!44912 (=> res!24913 e!28451)))

(assert (=> d!44912 (= res!24913 (not (is-Node!118 (right!1151 thiss!7629))))))

(assert (=> d!44912 (= (inv!977 (right!1151 thiss!7629)) e!28451)))

(declare-fun e!28450 () Bool)

(assert (=> b!54334 (= e!28451 e!28450)))

(declare-fun res!24912 () Bool)

(assert (=> b!54334 (=> (not res!24912) (not e!28450))))

(assert (=> b!54334 (= res!24912 inst!252)))

(assert (=> b!54335 (= e!28450 inst!253)))

(assert (= (and d!44912 (not res!24913)) b!54334))

(assert (= neg-inst!241 inst!252))

(assert (= (and b!54334 res!24912) b!54335))

(assert (= neg-inst!240 inst!253))

(assert (=> b!54327 d!44912))

(declare-fun b!54336 () Bool)

(declare-fun m!58298 () Bool)

(assert (=> b!54336 m!58298))

(declare-fun inst!254 () Bool)

(declare-fun x!21615 () (_ BitVec 32))

(assert (=> b!54336 (= inst!254 (=> true (or (not (member x!21615 (content!17 (left!1148 thiss!7629)))) (bvslt x!21615 (elem!218 thiss!7629)))))))

(declare-fun m!58300 () Bool)

(assert (=> b!54336 m!58300))

(declare-fun bs!24906 () Bool)

(assert (= bs!24906 (and b!54336 b!54334)))

(assert (=> (and bs!24906 (= (content!17 (left!1148 thiss!7629)) (content!17 (left!1148 (right!1151 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (right!1151 thiss!7629)))) (= inst!254 inst!252)))

(declare-fun bs!24907 () Bool)

(assert (= bs!24907 (and b!54336 neg-inst!239)))

(assert (=> (and bs!24907 (= (content!17 (left!1148 thiss!7629)) (content!17 (left!1148 (left!1148 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (left!1148 thiss!7629)))) (= inst!254 true)))

(declare-fun bs!24908 () Bool)

(assert (= bs!24908 (and b!54336 b!54332)))

(assert (=> (and bs!24908 (= (content!17 (left!1148 thiss!7629)) (content!17 (left!1148 (left!1148 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (left!1148 thiss!7629)))) (= inst!254 inst!250)))

(declare-fun bs!24909 () Bool)

(assert (= bs!24909 (and b!54336 neg-inst!241)))

(assert (=> (and bs!24909 (= (content!17 (left!1148 thiss!7629)) (content!17 (left!1148 (right!1151 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (right!1151 thiss!7629)))) (= inst!254 true)))

(declare-fun b!54337 () Bool)

(declare-fun m!58302 () Bool)

(assert (=> b!54337 m!58302))

(declare-fun inst!255 () Bool)

(declare-fun x!21616 () (_ BitVec 32))

(assert (=> b!54337 (= inst!255 (=> true (or (not (member x!21616 (content!17 (right!1151 thiss!7629)))) (bvslt (elem!218 thiss!7629) x!21616))))))

(declare-fun m!58304 () Bool)

(assert (=> b!54337 m!58304))

(declare-fun bs!24910 () Bool)

(assert (= bs!24910 (and b!54337 b!54335)))

(assert (=> (and bs!24910 (= (content!17 (right!1151 thiss!7629)) (content!17 (right!1151 (right!1151 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (right!1151 thiss!7629)))) (= inst!255 inst!253)))

(declare-fun bs!24911 () Bool)

(assert (= bs!24911 (and b!54337 b!54333)))

(assert (=> (and bs!24911 (= (content!17 (right!1151 thiss!7629)) (content!17 (right!1151 (left!1148 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (left!1148 thiss!7629)))) (= inst!255 inst!251)))

(declare-fun bs!24912 () Bool)

(assert (= bs!24912 (and b!54337 neg-inst!238)))

(assert (=> (and bs!24912 (= (content!17 (right!1151 thiss!7629)) (content!17 (right!1151 (left!1148 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (left!1148 thiss!7629)))) (= inst!255 true)))

(declare-fun bs!24913 () Bool)

(assert (= bs!24913 (and b!54337 neg-inst!240)))

(assert (=> (and bs!24913 (= (content!17 (right!1151 thiss!7629)) (content!17 (right!1151 (right!1151 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (right!1151 thiss!7629)))) (= inst!255 true)))

(declare-fun bs!24914 () Bool)

(declare-fun neg-inst!243 () Bool)

(assert (= bs!24914 neg-inst!243))

(assert (=> bs!24914 m!58298))

(declare-fun bs!24915 () Bool)

(declare-fun s!1033 () Bool)

(assert (= bs!24915 (and neg-inst!243 s!1033)))

(assert (=> bs!24915 (=> true (or (not (member x!21615 (content!17 (left!1148 thiss!7629)))) (bvslt x!21615 (elem!218 thiss!7629))))))

(assert (=> m!58300 s!1033))

(declare-fun bs!24916 () Bool)

(assert (= bs!24916 (and neg-inst!243 b!54334)))

(assert (=> (and bs!24916 (= (content!17 (left!1148 thiss!7629)) (content!17 (left!1148 (right!1151 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (right!1151 thiss!7629)))) (= true inst!252)))

(declare-fun bs!24917 () Bool)

(assert (= bs!24917 (and neg-inst!243 neg-inst!239)))

(assert (=> (and bs!24917 (= (content!17 (left!1148 thiss!7629)) (content!17 (left!1148 (left!1148 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (left!1148 thiss!7629)))) (= true true)))

(declare-fun bs!24918 () Bool)

(assert (= bs!24918 (and neg-inst!243 b!54336)))

(assert (=> bs!24918 (= true inst!254)))

(declare-fun bs!24919 () Bool)

(assert (= bs!24919 (and neg-inst!243 b!54332)))

(assert (=> (and bs!24919 (= (content!17 (left!1148 thiss!7629)) (content!17 (left!1148 (left!1148 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (left!1148 thiss!7629)))) (= true inst!250)))

(declare-fun bs!24920 () Bool)

(assert (= bs!24920 (and neg-inst!243 neg-inst!241)))

(assert (=> (and bs!24920 (= (content!17 (left!1148 thiss!7629)) (content!17 (left!1148 (right!1151 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (right!1151 thiss!7629)))) (= true true)))

(declare-fun bs!24921 () Bool)

(declare-fun neg-inst!242 () Bool)

(assert (= bs!24921 neg-inst!242))

(assert (=> bs!24921 m!58302))

(declare-fun bs!24922 () Bool)

(declare-fun s!1035 () Bool)

(assert (= bs!24922 (and neg-inst!242 s!1035)))

(assert (=> bs!24922 (=> true (or (not (member x!21616 (content!17 (right!1151 thiss!7629)))) (bvslt (elem!218 thiss!7629) x!21616)))))

(assert (=> m!58304 s!1035))

(declare-fun bs!24923 () Bool)

(assert (= bs!24923 (and neg-inst!242 b!54337)))

(assert (=> bs!24923 (= true inst!255)))

(declare-fun bs!24924 () Bool)

(assert (= bs!24924 (and neg-inst!242 b!54335)))

(assert (=> (and bs!24924 (= (content!17 (right!1151 thiss!7629)) (content!17 (right!1151 (right!1151 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (right!1151 thiss!7629)))) (= true inst!253)))

(declare-fun bs!24925 () Bool)

(assert (= bs!24925 (and neg-inst!242 b!54333)))

(assert (=> (and bs!24925 (= (content!17 (right!1151 thiss!7629)) (content!17 (right!1151 (left!1148 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (left!1148 thiss!7629)))) (= true inst!251)))

(declare-fun bs!24926 () Bool)

(assert (= bs!24926 (and neg-inst!242 neg-inst!238)))

(assert (=> (and bs!24926 (= (content!17 (right!1151 thiss!7629)) (content!17 (right!1151 (left!1148 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (left!1148 thiss!7629)))) (= true true)))

(declare-fun bs!24927 () Bool)

(assert (= bs!24927 (and neg-inst!242 neg-inst!240)))

(assert (=> (and bs!24927 (= (content!17 (right!1151 thiss!7629)) (content!17 (right!1151 (right!1151 thiss!7629)))) (= (elem!218 thiss!7629) (elem!218 (right!1151 thiss!7629)))) (= true true)))

(declare-fun d!44914 () Bool)

(declare-fun res!24915 () Bool)

(declare-fun e!28453 () Bool)

(assert (=> d!44914 (=> res!24915 e!28453)))

(assert (=> d!44914 (= res!24915 (not (is-Node!118 thiss!7629)))))

(assert (=> d!44914 (= (inv!977 thiss!7629) e!28453)))

(declare-fun e!28452 () Bool)

(assert (=> b!54336 (= e!28453 e!28452)))

(declare-fun res!24914 () Bool)

(assert (=> b!54336 (=> (not res!24914) (not e!28452))))

(assert (=> b!54336 (= res!24914 inst!254)))

(assert (=> b!54337 (= e!28452 inst!255)))

(assert (= (and d!44914 (not res!24915)) b!54336))

(assert (= neg-inst!243 inst!254))

(assert (= (and b!54336 res!24914) b!54337))

(assert (= neg-inst!242 inst!255))

(assert (=> start!7592 d!44914))

(declare-fun d!44916 () Bool)

(declare-fun c!11805 () Bool)

(assert (=> d!44916 (= c!11805 (is-Empty!157 thiss!7629))))

(declare-fun e!28456 () (Set (_ BitVec 32)))

(assert (=> d!44916 (= (content!17 thiss!7629) e!28456)))

(declare-fun b!54342 () Bool)

(assert (=> b!54342 (= e!28456 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54343 () Bool)

(assert (=> b!54343 (= e!28456 (union (union (content!17 (left!1148 thiss!7629)) (insert (elem!218 thiss!7629) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1151 thiss!7629))))))

(assert (= (and d!44916 c!11805) b!54342))

(assert (= (and d!44916 (not c!11805)) b!54343))

(assert (=> b!54343 m!58298))

(declare-fun m!58306 () Bool)

(assert (=> b!54343 m!58306))

(assert (=> b!54343 m!58302))

(assert (=> b!54326 d!44916))

(declare-fun tp!15315 () Bool)

(declare-fun e!28459 () Bool)

(declare-fun tp!15316 () Bool)

(declare-fun b!54348 () Bool)

(assert (=> b!54348 (= e!28459 (and (inv!977 (left!1148 (left!1148 thiss!7629))) tp!15315 (inv!977 (right!1151 (left!1148 thiss!7629))) tp!15316))))

(assert (=> b!54327 (= tp!15309 (and (inv!977 (left!1148 thiss!7629)) e!28459))))

(assert (= (and b!54327 (is-Node!118 (left!1148 thiss!7629))) b!54348))

(declare-fun m!58308 () Bool)

(assert (=> b!54348 m!58308))

(declare-fun m!58310 () Bool)

(assert (=> b!54348 m!58310))

(assert (=> b!54327 m!58278))

(declare-fun tp!15318 () Bool)

(declare-fun e!28460 () Bool)

(declare-fun b!54349 () Bool)

(declare-fun tp!15317 () Bool)

(assert (=> b!54349 (= e!28460 (and (inv!977 (left!1148 (right!1151 thiss!7629))) tp!15317 (inv!977 (right!1151 (right!1151 thiss!7629))) tp!15318))))

(assert (=> b!54327 (= tp!15310 (and (inv!977 (right!1151 thiss!7629)) e!28460))))

(assert (= (and b!54327 (is-Node!118 (right!1151 thiss!7629))) b!54349))

(declare-fun m!58312 () Bool)

(assert (=> b!54349 m!58312))

(declare-fun m!58314 () Bool)

(assert (=> b!54349 m!58314))

(assert (=> b!54327 m!58280))

(push 1)

(assert (not b!54343))

(assert (not b!54327))

(assert (not b!54336))

(assert (not b!54334))

(assert (not neg-inst!239))

(assert (not neg-inst!242))

(assert (not b!54337))

(assert (not neg-inst!240))

(assert (not neg-inst!243))

(assert (not b!54348))

(assert (not neg-inst!241))

(assert (not b!54335))

(assert (not neg-inst!238))

(assert (not b!54332))

(assert (not b!54349))

(assert (not b!54333))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

