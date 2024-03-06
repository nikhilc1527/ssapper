; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7556 () Bool)

(assert start!7556)

(declare-fun b!54085 () Bool)

(declare-fun e!28252 () Bool)

(declare-datatypes () ((IntSet!26 (Empty!151) (Node!112 (left!1142 IntSet!26) (elem!212 (_ BitVec 32)) (right!1145 IntSet!26)))))

(declare-fun t2!31 () IntSet!26)

(declare-fun x!21403 () (_ BitVec 32))

(declare-fun contains!11 (IntSet!26 (_ BitVec 32)) Bool)

(assert (=> b!54085 (= e!28252 (not (contains!11 t2!31 x!21403)))))

(declare-fun e!28251 () Bool)

(declare-fun b!54087 () Bool)

(declare-fun tp!15186 () Bool)

(declare-fun tp!15185 () Bool)

(declare-fun inv!977 (IntSet!26) Bool)

(assert (=> b!54087 (= e!28251 (and (inv!977 (left!1142 t2!31)) tp!15185 (inv!977 (right!1145 t2!31)) tp!15186))))

(declare-fun b!54084 () Bool)

(declare-fun res!24777 () Bool)

(assert (=> b!54084 (=> (not res!24777) (not e!28252))))

(declare-fun t1!27 () IntSet!26)

(declare-fun union!3 (IntSet!26 IntSet!26) IntSet!26)

(assert (=> b!54084 (= res!24777 (not (= (contains!11 (union!3 t1!27 t2!31) x!21403) (contains!11 t1!27 x!21403))))))

(declare-fun res!24778 () Bool)

(assert (=> start!7556 (=> (not res!24778) (not e!28252))))

(declare-datatypes () ((Unit!901 (Unit!902))))

(declare-fun x$4!93 () Unit!901)

(declare-fun Unit!903 () Unit!901)

(assert (=> start!7556 (= res!24778 (= x$4!93 Unit!903))))

(assert (=> start!7556 e!28252))

(assert (=> start!7556 true))

(declare-fun e!28250 () Bool)

(assert (=> start!7556 (and (inv!977 t1!27) e!28250)))

(assert (=> start!7556 (and (inv!977 t2!31) e!28251)))

(declare-fun tp!15184 () Bool)

(declare-fun tp!15183 () Bool)

(declare-fun b!54086 () Bool)

(assert (=> b!54086 (= e!28250 (and (inv!977 (left!1142 t1!27)) tp!15184 (inv!977 (right!1145 t1!27)) tp!15183))))

(assert (= (and start!7556 res!24778) b!54084))

(assert (= (and b!54084 res!24777) b!54085))

(assert (= (and start!7556 (is-Node!112 t1!27)) b!54086))

(assert (= (and start!7556 (is-Node!112 t2!31)) b!54087))

(declare-fun m!57794 () Bool)

(assert (=> b!54087 m!57794))

(declare-fun m!57796 () Bool)

(assert (=> b!54087 m!57796))

(declare-fun m!57798 () Bool)

(assert (=> b!54086 m!57798))

(declare-fun m!57800 () Bool)

(assert (=> b!54086 m!57800))

(declare-fun m!57802 () Bool)

(assert (=> b!54084 m!57802))

(assert (=> b!54084 m!57802))

(declare-fun m!57804 () Bool)

(assert (=> b!54084 m!57804))

(declare-fun m!57806 () Bool)

(assert (=> b!54084 m!57806))

(declare-fun m!57808 () Bool)

(assert (=> start!7556 m!57808))

(declare-fun m!57810 () Bool)

(assert (=> start!7556 m!57810))

(declare-fun m!57812 () Bool)

(assert (=> b!54085 m!57812))

(push 1)

(assert (not b!54086))

(assert (not start!7556))

(assert (not b!54085))

(assert (not b!54087))

(assert (not b!54084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44824 () Bool)

(declare-fun lt!9536 () Bool)

(declare-fun content!17 (IntSet!26) (Set (_ BitVec 32)))

(assert (=> d!44824 (= lt!9536 (member x!21403 (content!17 t2!31)))))

(declare-fun e!28257 () Bool)

(assert (=> d!44824 (= lt!9536 e!28257)))

(declare-fun res!24788 () Bool)

(assert (=> d!44824 (=> (not res!24788) (not e!28257))))

(assert (=> d!44824 (= res!24788 (not (is-Empty!151 t2!31)))))

(assert (=> d!44824 (= (contains!11 t2!31 x!21403) lt!9536)))

(declare-fun lt!9535 () Bool)

(declare-fun b!54094 () Bool)

(declare-fun lt!9537 () Bool)

(assert (=> b!54094 (= e!28257 (ite lt!9535 lt!9537 (or (not (bvsgt x!21403 (elem!212 t2!31))) lt!9537)))))

(declare-fun e!28258 () Bool)

(assert (=> b!54094 (= lt!9537 e!28258)))

(declare-fun c!11767 () Bool)

(assert (=> b!54094 (= c!11767 (or lt!9535 (bvsgt x!21403 (elem!212 t2!31))))))

(assert (=> b!54094 (= lt!9535 (bvslt x!21403 (elem!212 t2!31)))))

(declare-fun b!54096 () Bool)

(declare-fun res!24787 () Bool)

(assert (=> b!54096 (= e!28258 res!24787)))

(assert (=> b!54096 true))

(assert (=> b!54096 true))

(declare-fun b!54095 () Bool)

(assert (=> b!54095 (= e!28258 (contains!11 (ite lt!9535 (left!1142 t2!31) (right!1145 t2!31)) x!21403))))

(assert (= (and d!44824 res!24788) b!54094))

(assert (= (and b!54094 c!11767) b!54095))

(assert (= (and b!54094 (not c!11767)) b!54096))

(declare-fun m!57814 () Bool)

(assert (=> d!44824 m!57814))

(declare-fun m!57816 () Bool)

(assert (=> d!44824 m!57816))

(declare-fun m!57818 () Bool)

(assert (=> b!54095 m!57818))

(assert (=> b!54085 d!44824))

(declare-fun b!54101 () Bool)

(declare-fun m!57820 () Bool)

(assert (=> b!54101 m!57820))

(declare-fun inst!180 () Bool)

(declare-fun x!21474 () (_ BitVec 32))

(assert (=> b!54101 (= inst!180 (=> true (or (not (member x!21474 (content!17 (left!1142 (left!1142 t2!31))))) (bvslt x!21474 (elem!212 (left!1142 t2!31))))))))

(declare-fun m!57822 () Bool)

(assert (=> b!54101 m!57822))

(declare-fun b!54102 () Bool)

(declare-fun m!57824 () Bool)

(assert (=> b!54102 m!57824))

(declare-fun inst!181 () Bool)

(declare-fun x!21475 () (_ BitVec 32))

(assert (=> b!54102 (= inst!181 (=> true (or (not (member x!21475 (content!17 (right!1145 (left!1142 t2!31))))) (bvslt (elem!212 (left!1142 t2!31)) x!21475))))))

(declare-fun m!57826 () Bool)

(assert (=> b!54102 m!57826))

(declare-fun bs!23998 () Bool)

(declare-fun neg-inst!169 () Bool)

(assert (= bs!23998 neg-inst!169))

(assert (=> bs!23998 m!57820))

(declare-fun bs!23999 () Bool)

(declare-fun s!915 () Bool)

(assert (= bs!23999 (and neg-inst!169 s!915)))

(assert (=> bs!23999 (=> true (or (not (member x!21474 (content!17 (left!1142 (left!1142 t2!31))))) (bvslt x!21474 (elem!212 (left!1142 t2!31)))))))

(assert (=> m!57822 s!915))

(declare-fun bs!24000 () Bool)

(assert (= bs!24000 (and neg-inst!169 b!54101)))

(assert (=> bs!24000 (= true inst!180)))

(declare-fun bs!24001 () Bool)

(declare-fun neg-inst!168 () Bool)

(assert (= bs!24001 neg-inst!168))

(assert (=> bs!24001 m!57824))

(declare-fun bs!24002 () Bool)

(declare-fun s!917 () Bool)

(assert (= bs!24002 (and neg-inst!168 s!917)))

(assert (=> bs!24002 (=> true (or (not (member x!21475 (content!17 (right!1145 (left!1142 t2!31))))) (bvslt (elem!212 (left!1142 t2!31)) x!21475)))))

(assert (=> m!57826 s!917))

(declare-fun bs!24003 () Bool)

(assert (= bs!24003 (and neg-inst!168 b!54102)))

(assert (=> bs!24003 (= true inst!181)))

(declare-fun d!44826 () Bool)

(declare-fun res!24793 () Bool)

(declare-fun e!28263 () Bool)

(assert (=> d!44826 (=> res!24793 e!28263)))

(assert (=> d!44826 (= res!24793 (not (is-Node!112 (left!1142 t2!31))))))

(assert (=> d!44826 (= (inv!977 (left!1142 t2!31)) e!28263)))

(declare-fun e!28264 () Bool)

(assert (=> b!54101 (= e!28263 e!28264)))

(declare-fun res!24794 () Bool)

(assert (=> b!54101 (=> (not res!24794) (not e!28264))))

(assert (=> b!54101 (= res!24794 inst!180)))

(assert (=> b!54102 (= e!28264 inst!181)))

(assert (= (and d!44826 (not res!24793)) b!54101))

(assert (= neg-inst!169 inst!180))

(assert (= (and b!54101 res!24794) b!54102))

(assert (= neg-inst!168 inst!181))

(assert (=> b!54087 d!44826))

(declare-fun b!54103 () Bool)

(declare-fun m!57828 () Bool)

(assert (=> b!54103 m!57828))

(declare-fun inst!182 () Bool)

(declare-fun x!21476 () (_ BitVec 32))

(assert (=> b!54103 (= inst!182 (=> true (or (not (member x!21476 (content!17 (left!1142 (right!1145 t2!31))))) (bvslt x!21476 (elem!212 (right!1145 t2!31))))))))

(declare-fun m!57830 () Bool)

(assert (=> b!54103 m!57830))

(declare-fun bs!24004 () Bool)

(assert (= bs!24004 (and b!54103 b!54101)))

(assert (=> (and bs!24004 (= (content!17 (left!1142 (right!1145 t2!31))) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 (right!1145 t2!31)) (elem!212 (left!1142 t2!31)))) (= inst!182 inst!180)))

(declare-fun bs!24005 () Bool)

(assert (= bs!24005 (and b!54103 neg-inst!169)))

(assert (=> (and bs!24005 (= (content!17 (left!1142 (right!1145 t2!31))) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 (right!1145 t2!31)) (elem!212 (left!1142 t2!31)))) (= inst!182 true)))

(declare-fun b!54104 () Bool)

(declare-fun m!57832 () Bool)

(assert (=> b!54104 m!57832))

(declare-fun inst!183 () Bool)

(declare-fun x!21477 () (_ BitVec 32))

(assert (=> b!54104 (= inst!183 (=> true (or (not (member x!21477 (content!17 (right!1145 (right!1145 t2!31))))) (bvslt (elem!212 (right!1145 t2!31)) x!21477))))))

(declare-fun m!57834 () Bool)

(assert (=> b!54104 m!57834))

(declare-fun bs!24006 () Bool)

(assert (= bs!24006 (and b!54104 neg-inst!168)))

(assert (=> (and bs!24006 (= (content!17 (right!1145 (right!1145 t2!31))) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 (right!1145 t2!31)) (elem!212 (left!1142 t2!31)))) (= inst!183 true)))

(declare-fun bs!24007 () Bool)

(assert (= bs!24007 (and b!54104 b!54102)))

(assert (=> (and bs!24007 (= (content!17 (right!1145 (right!1145 t2!31))) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 (right!1145 t2!31)) (elem!212 (left!1142 t2!31)))) (= inst!183 inst!181)))

(declare-fun bs!24008 () Bool)

(declare-fun neg-inst!171 () Bool)

(assert (= bs!24008 neg-inst!171))

(assert (=> bs!24008 m!57828))

(declare-fun bs!24009 () Bool)

(declare-fun s!919 () Bool)

(assert (= bs!24009 (and neg-inst!171 s!919)))

(assert (=> bs!24009 (=> true (or (not (member x!21476 (content!17 (left!1142 (right!1145 t2!31))))) (bvslt x!21476 (elem!212 (right!1145 t2!31)))))))

(assert (=> m!57830 s!919))

(declare-fun bs!24010 () Bool)

(assert (= bs!24010 (and neg-inst!171 b!54103)))

(assert (=> bs!24010 (= true inst!182)))

(declare-fun bs!24011 () Bool)

(assert (= bs!24011 (and neg-inst!171 b!54101)))

(assert (=> (and bs!24011 (= (content!17 (left!1142 (right!1145 t2!31))) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 (right!1145 t2!31)) (elem!212 (left!1142 t2!31)))) (= true inst!180)))

(declare-fun bs!24012 () Bool)

(assert (= bs!24012 (and neg-inst!171 neg-inst!169)))

(assert (=> (and bs!24012 (= (content!17 (left!1142 (right!1145 t2!31))) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 (right!1145 t2!31)) (elem!212 (left!1142 t2!31)))) (= true true)))

(declare-fun bs!24013 () Bool)

(declare-fun neg-inst!170 () Bool)

(assert (= bs!24013 neg-inst!170))

(assert (=> bs!24013 m!57832))

(declare-fun bs!24014 () Bool)

(declare-fun s!921 () Bool)

(assert (= bs!24014 (and neg-inst!170 s!921)))

(assert (=> bs!24014 (=> true (or (not (member x!21477 (content!17 (right!1145 (right!1145 t2!31))))) (bvslt (elem!212 (right!1145 t2!31)) x!21477)))))

(assert (=> m!57834 s!921))

(declare-fun bs!24015 () Bool)

(assert (= bs!24015 (and neg-inst!170 neg-inst!168)))

(assert (=> (and bs!24015 (= (content!17 (right!1145 (right!1145 t2!31))) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 (right!1145 t2!31)) (elem!212 (left!1142 t2!31)))) (= true true)))

(declare-fun bs!24016 () Bool)

(assert (= bs!24016 (and neg-inst!170 b!54104)))

(assert (=> bs!24016 (= true inst!183)))

(declare-fun bs!24017 () Bool)

(assert (= bs!24017 (and neg-inst!170 b!54102)))

(assert (=> (and bs!24017 (= (content!17 (right!1145 (right!1145 t2!31))) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 (right!1145 t2!31)) (elem!212 (left!1142 t2!31)))) (= true inst!181)))

(declare-fun d!44828 () Bool)

(declare-fun res!24795 () Bool)

(declare-fun e!28265 () Bool)

(assert (=> d!44828 (=> res!24795 e!28265)))

(assert (=> d!44828 (= res!24795 (not (is-Node!112 (right!1145 t2!31))))))

(assert (=> d!44828 (= (inv!977 (right!1145 t2!31)) e!28265)))

(declare-fun e!28266 () Bool)

(assert (=> b!54103 (= e!28265 e!28266)))

(declare-fun res!24796 () Bool)

(assert (=> b!54103 (=> (not res!24796) (not e!28266))))

(assert (=> b!54103 (= res!24796 inst!182)))

(assert (=> b!54104 (= e!28266 inst!183)))

(assert (= (and d!44828 (not res!24795)) b!54103))

(assert (= neg-inst!171 inst!182))

(assert (= (and b!54103 res!24796) b!54104))

(assert (= neg-inst!170 inst!183))

(assert (=> b!54087 d!44828))

(declare-fun b!54105 () Bool)

(declare-fun m!57836 () Bool)

(assert (=> b!54105 m!57836))

(declare-fun inst!184 () Bool)

(declare-fun x!21478 () (_ BitVec 32))

(assert (=> b!54105 (= inst!184 (=> true (or (not (member x!21478 (content!17 (left!1142 t1!27)))) (bvslt x!21478 (elem!212 t1!27)))))))

(declare-fun m!57838 () Bool)

(assert (=> b!54105 m!57838))

(declare-fun bs!24018 () Bool)

(assert (= bs!24018 (and b!54105 neg-inst!171)))

(assert (=> (and bs!24018 (= (content!17 (left!1142 t1!27)) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 t1!27) (elem!212 (right!1145 t2!31)))) (= inst!184 true)))

(declare-fun bs!24019 () Bool)

(assert (= bs!24019 (and b!54105 b!54103)))

(assert (=> (and bs!24019 (= (content!17 (left!1142 t1!27)) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 t1!27) (elem!212 (right!1145 t2!31)))) (= inst!184 inst!182)))

(declare-fun bs!24020 () Bool)

(assert (= bs!24020 (and b!54105 b!54101)))

(assert (=> (and bs!24020 (= (content!17 (left!1142 t1!27)) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 t1!27) (elem!212 (left!1142 t2!31)))) (= inst!184 inst!180)))

(declare-fun bs!24021 () Bool)

(assert (= bs!24021 (and b!54105 neg-inst!169)))

(assert (=> (and bs!24021 (= (content!17 (left!1142 t1!27)) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 t1!27) (elem!212 (left!1142 t2!31)))) (= inst!184 true)))

(declare-fun b!54106 () Bool)

(declare-fun m!57840 () Bool)

(assert (=> b!54106 m!57840))

(declare-fun inst!185 () Bool)

(declare-fun x!21479 () (_ BitVec 32))

(assert (=> b!54106 (= inst!185 (=> true (or (not (member x!21479 (content!17 (right!1145 t1!27)))) (bvslt (elem!212 t1!27) x!21479))))))

(declare-fun m!57842 () Bool)

(assert (=> b!54106 m!57842))

(declare-fun bs!24022 () Bool)

(assert (= bs!24022 (and b!54106 neg-inst!168)))

(assert (=> (and bs!24022 (= (content!17 (right!1145 t1!27)) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 t1!27) (elem!212 (left!1142 t2!31)))) (= inst!185 true)))

(declare-fun bs!24023 () Bool)

(assert (= bs!24023 (and b!54106 b!54104)))

(assert (=> (and bs!24023 (= (content!17 (right!1145 t1!27)) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 t1!27) (elem!212 (right!1145 t2!31)))) (= inst!185 inst!183)))

(declare-fun bs!24024 () Bool)

(assert (= bs!24024 (and b!54106 b!54102)))

(assert (=> (and bs!24024 (= (content!17 (right!1145 t1!27)) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 t1!27) (elem!212 (left!1142 t2!31)))) (= inst!185 inst!181)))

(declare-fun bs!24025 () Bool)

(assert (= bs!24025 (and b!54106 neg-inst!170)))

(assert (=> (and bs!24025 (= (content!17 (right!1145 t1!27)) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 t1!27) (elem!212 (right!1145 t2!31)))) (= inst!185 true)))

(declare-fun bs!24026 () Bool)

(declare-fun neg-inst!173 () Bool)

(assert (= bs!24026 neg-inst!173))

(assert (=> bs!24026 m!57836))

(declare-fun bs!24027 () Bool)

(declare-fun s!923 () Bool)

(assert (= bs!24027 (and neg-inst!173 s!923)))

(assert (=> bs!24027 (=> true (or (not (member x!21478 (content!17 (left!1142 t1!27)))) (bvslt x!21478 (elem!212 t1!27))))))

(assert (=> m!57838 s!923))

(declare-fun bs!24028 () Bool)

(assert (= bs!24028 (and neg-inst!173 neg-inst!171)))

(assert (=> (and bs!24028 (= (content!17 (left!1142 t1!27)) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 t1!27) (elem!212 (right!1145 t2!31)))) (= true true)))

(declare-fun bs!24029 () Bool)

(assert (= bs!24029 (and neg-inst!173 b!54103)))

(assert (=> (and bs!24029 (= (content!17 (left!1142 t1!27)) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 t1!27) (elem!212 (right!1145 t2!31)))) (= true inst!182)))

(declare-fun bs!24030 () Bool)

(assert (= bs!24030 (and neg-inst!173 b!54101)))

(assert (=> (and bs!24030 (= (content!17 (left!1142 t1!27)) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 t1!27) (elem!212 (left!1142 t2!31)))) (= true inst!180)))

(declare-fun bs!24031 () Bool)

(assert (= bs!24031 (and neg-inst!173 b!54105)))

(assert (=> bs!24031 (= true inst!184)))

(declare-fun bs!24032 () Bool)

(assert (= bs!24032 (and neg-inst!173 neg-inst!169)))

(assert (=> (and bs!24032 (= (content!17 (left!1142 t1!27)) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 t1!27) (elem!212 (left!1142 t2!31)))) (= true true)))

(declare-fun bs!24033 () Bool)

(declare-fun neg-inst!172 () Bool)

(assert (= bs!24033 neg-inst!172))

(assert (=> bs!24033 m!57840))

(declare-fun bs!24034 () Bool)

(declare-fun s!925 () Bool)

(assert (= bs!24034 (and neg-inst!172 s!925)))

(assert (=> bs!24034 (=> true (or (not (member x!21479 (content!17 (right!1145 t1!27)))) (bvslt (elem!212 t1!27) x!21479)))))

(assert (=> m!57842 s!925))

(declare-fun bs!24035 () Bool)

(assert (= bs!24035 (and neg-inst!172 b!54106)))

(assert (=> bs!24035 (= true inst!185)))

(declare-fun bs!24036 () Bool)

(assert (= bs!24036 (and neg-inst!172 neg-inst!168)))

(assert (=> (and bs!24036 (= (content!17 (right!1145 t1!27)) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 t1!27) (elem!212 (left!1142 t2!31)))) (= true true)))

(declare-fun bs!24037 () Bool)

(assert (= bs!24037 (and neg-inst!172 b!54104)))

(assert (=> (and bs!24037 (= (content!17 (right!1145 t1!27)) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 t1!27) (elem!212 (right!1145 t2!31)))) (= true inst!183)))

(declare-fun bs!24038 () Bool)

(assert (= bs!24038 (and neg-inst!172 b!54102)))

(assert (=> (and bs!24038 (= (content!17 (right!1145 t1!27)) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 t1!27) (elem!212 (left!1142 t2!31)))) (= true inst!181)))

(declare-fun bs!24039 () Bool)

(assert (= bs!24039 (and neg-inst!172 neg-inst!170)))

(assert (=> (and bs!24039 (= (content!17 (right!1145 t1!27)) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 t1!27) (elem!212 (right!1145 t2!31)))) (= true true)))

(declare-fun d!44830 () Bool)

(declare-fun res!24797 () Bool)

(declare-fun e!28267 () Bool)

(assert (=> d!44830 (=> res!24797 e!28267)))

(assert (=> d!44830 (= res!24797 (not (is-Node!112 t1!27)))))

(assert (=> d!44830 (= (inv!977 t1!27) e!28267)))

(declare-fun e!28268 () Bool)

(assert (=> b!54105 (= e!28267 e!28268)))

(declare-fun res!24798 () Bool)

(assert (=> b!54105 (=> (not res!24798) (not e!28268))))

(assert (=> b!54105 (= res!24798 inst!184)))

(assert (=> b!54106 (= e!28268 inst!185)))

(assert (= (and d!44830 (not res!24797)) b!54105))

(assert (= neg-inst!173 inst!184))

(assert (= (and b!54105 res!24798) b!54106))

(assert (= neg-inst!172 inst!185))

(assert (=> start!7556 d!44830))

(declare-fun b!54107 () Bool)

(declare-fun m!57844 () Bool)

(assert (=> b!54107 m!57844))

(declare-fun inst!186 () Bool)

(declare-fun x!21480 () (_ BitVec 32))

(assert (=> b!54107 (= inst!186 (=> true (or (not (member x!21480 (content!17 (left!1142 t2!31)))) (bvslt x!21480 (elem!212 t2!31)))))))

(declare-fun m!57846 () Bool)

(assert (=> b!54107 m!57846))

(declare-fun bs!24040 () Bool)

(assert (= bs!24040 (and b!54107 neg-inst!171)))

(assert (=> (and bs!24040 (= (content!17 (left!1142 t2!31)) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 t2!31) (elem!212 (right!1145 t2!31)))) (= inst!186 true)))

(declare-fun bs!24041 () Bool)

(assert (= bs!24041 (and b!54107 b!54103)))

(assert (=> (and bs!24041 (= (content!17 (left!1142 t2!31)) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 t2!31) (elem!212 (right!1145 t2!31)))) (= inst!186 inst!182)))

(declare-fun bs!24042 () Bool)

(assert (= bs!24042 (and b!54107 b!54101)))

(assert (=> (and bs!24042 (= (content!17 (left!1142 t2!31)) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 t2!31) (elem!212 (left!1142 t2!31)))) (= inst!186 inst!180)))

(declare-fun bs!24043 () Bool)

(assert (= bs!24043 (and b!54107 b!54105)))

(assert (=> (and bs!24043 (= (content!17 (left!1142 t2!31)) (content!17 (left!1142 t1!27))) (= (elem!212 t2!31) (elem!212 t1!27))) (= inst!186 inst!184)))

(declare-fun bs!24044 () Bool)

(assert (= bs!24044 (and b!54107 neg-inst!173)))

(assert (=> (and bs!24044 (= (content!17 (left!1142 t2!31)) (content!17 (left!1142 t1!27))) (= (elem!212 t2!31) (elem!212 t1!27))) (= inst!186 true)))

(declare-fun bs!24045 () Bool)

(assert (= bs!24045 (and b!54107 neg-inst!169)))

(assert (=> (and bs!24045 (= (content!17 (left!1142 t2!31)) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 t2!31) (elem!212 (left!1142 t2!31)))) (= inst!186 true)))

(declare-fun b!54108 () Bool)

(declare-fun m!57848 () Bool)

(assert (=> b!54108 m!57848))

(declare-fun inst!187 () Bool)

(declare-fun x!21481 () (_ BitVec 32))

(assert (=> b!54108 (= inst!187 (=> true (or (not (member x!21481 (content!17 (right!1145 t2!31)))) (bvslt (elem!212 t2!31) x!21481))))))

(declare-fun m!57850 () Bool)

(assert (=> b!54108 m!57850))

(declare-fun bs!24046 () Bool)

(assert (= bs!24046 (and b!54108 b!54106)))

(assert (=> (and bs!24046 (= (content!17 (right!1145 t2!31)) (content!17 (right!1145 t1!27))) (= (elem!212 t2!31) (elem!212 t1!27))) (= inst!187 inst!185)))

(declare-fun bs!24047 () Bool)

(assert (= bs!24047 (and b!54108 neg-inst!168)))

(assert (=> (and bs!24047 (= (content!17 (right!1145 t2!31)) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 t2!31) (elem!212 (left!1142 t2!31)))) (= inst!187 true)))

(declare-fun bs!24048 () Bool)

(assert (= bs!24048 (and b!54108 b!54102)))

(assert (=> (and bs!24048 (= (content!17 (right!1145 t2!31)) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 t2!31) (elem!212 (left!1142 t2!31)))) (= inst!187 inst!181)))

(declare-fun bs!24049 () Bool)

(assert (= bs!24049 (and b!54108 b!54104)))

(assert (=> (and bs!24049 (= (content!17 (right!1145 t2!31)) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 t2!31) (elem!212 (right!1145 t2!31)))) (= inst!187 inst!183)))

(declare-fun bs!24050 () Bool)

(assert (= bs!24050 (and b!54108 neg-inst!170)))

(assert (=> (and bs!24050 (= (content!17 (right!1145 t2!31)) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 t2!31) (elem!212 (right!1145 t2!31)))) (= inst!187 true)))

(declare-fun bs!24051 () Bool)

(assert (= bs!24051 (and b!54108 neg-inst!172)))

(assert (=> (and bs!24051 (= (content!17 (right!1145 t2!31)) (content!17 (right!1145 t1!27))) (= (elem!212 t2!31) (elem!212 t1!27))) (= inst!187 true)))

(declare-fun bs!24052 () Bool)

(declare-fun neg-inst!175 () Bool)

(assert (= bs!24052 neg-inst!175))

(assert (=> bs!24052 m!57844))

(declare-fun bs!24053 () Bool)

(declare-fun s!927 () Bool)

(assert (= bs!24053 (and neg-inst!175 s!927)))

(assert (=> bs!24053 (=> true (or (not (member x!21480 (content!17 (left!1142 t2!31)))) (bvslt x!21480 (elem!212 t2!31))))))

(assert (=> m!57846 s!927))

(declare-fun bs!24054 () Bool)

(assert (= bs!24054 (and neg-inst!175 b!54107)))

(assert (=> bs!24054 (= true inst!186)))

(declare-fun bs!24055 () Bool)

(assert (= bs!24055 (and neg-inst!175 neg-inst!171)))

(assert (=> (and bs!24055 (= (content!17 (left!1142 t2!31)) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 t2!31) (elem!212 (right!1145 t2!31)))) (= true true)))

(declare-fun bs!24056 () Bool)

(assert (= bs!24056 (and neg-inst!175 b!54101)))

(assert (=> (and bs!24056 (= (content!17 (left!1142 t2!31)) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 t2!31) (elem!212 (left!1142 t2!31)))) (= true inst!180)))

(declare-fun bs!24057 () Bool)

(assert (= bs!24057 (and neg-inst!175 b!54103)))

(assert (=> (and bs!24057 (= (content!17 (left!1142 t2!31)) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 t2!31) (elem!212 (right!1145 t2!31)))) (= true inst!182)))

(declare-fun bs!24058 () Bool)

(assert (= bs!24058 (and neg-inst!175 b!54105)))

(assert (=> (and bs!24058 (= (content!17 (left!1142 t2!31)) (content!17 (left!1142 t1!27))) (= (elem!212 t2!31) (elem!212 t1!27))) (= true inst!184)))

(declare-fun bs!24059 () Bool)

(assert (= bs!24059 (and neg-inst!175 neg-inst!173)))

(assert (=> (and bs!24059 (= (content!17 (left!1142 t2!31)) (content!17 (left!1142 t1!27))) (= (elem!212 t2!31) (elem!212 t1!27))) (= true true)))

(declare-fun bs!24060 () Bool)

(assert (= bs!24060 (and neg-inst!175 neg-inst!169)))

(assert (=> (and bs!24060 (= (content!17 (left!1142 t2!31)) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 t2!31) (elem!212 (left!1142 t2!31)))) (= true true)))

(declare-fun bs!24061 () Bool)

(declare-fun neg-inst!174 () Bool)

(assert (= bs!24061 neg-inst!174))

(assert (=> bs!24061 m!57848))

(declare-fun bs!24062 () Bool)

(declare-fun s!929 () Bool)

(assert (= bs!24062 (and neg-inst!174 s!929)))

(assert (=> bs!24062 (=> true (or (not (member x!21481 (content!17 (right!1145 t2!31)))) (bvslt (elem!212 t2!31) x!21481)))))

(assert (=> m!57850 s!929))

(declare-fun bs!24063 () Bool)

(assert (= bs!24063 (and neg-inst!174 b!54106)))

(assert (=> (and bs!24063 (= (content!17 (right!1145 t2!31)) (content!17 (right!1145 t1!27))) (= (elem!212 t2!31) (elem!212 t1!27))) (= true inst!185)))

(declare-fun bs!24064 () Bool)

(assert (= bs!24064 (and neg-inst!174 neg-inst!168)))

(assert (=> (and bs!24064 (= (content!17 (right!1145 t2!31)) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 t2!31) (elem!212 (left!1142 t2!31)))) (= true true)))

(declare-fun bs!24065 () Bool)

(assert (= bs!24065 (and neg-inst!174 b!54102)))

(assert (=> (and bs!24065 (= (content!17 (right!1145 t2!31)) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 t2!31) (elem!212 (left!1142 t2!31)))) (= true inst!181)))

(declare-fun bs!24066 () Bool)

(assert (= bs!24066 (and neg-inst!174 b!54104)))

(assert (=> (and bs!24066 (= (content!17 (right!1145 t2!31)) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 t2!31) (elem!212 (right!1145 t2!31)))) (= true inst!183)))

(declare-fun bs!24067 () Bool)

(assert (= bs!24067 (and neg-inst!174 neg-inst!170)))

(assert (=> (and bs!24067 (= (content!17 (right!1145 t2!31)) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 t2!31) (elem!212 (right!1145 t2!31)))) (= true true)))

(declare-fun bs!24068 () Bool)

(assert (= bs!24068 (and neg-inst!174 b!54108)))

(assert (=> bs!24068 (= true inst!187)))

(declare-fun bs!24069 () Bool)

(assert (= bs!24069 (and neg-inst!174 neg-inst!172)))

(assert (=> (and bs!24069 (= (content!17 (right!1145 t2!31)) (content!17 (right!1145 t1!27))) (= (elem!212 t2!31) (elem!212 t1!27))) (= true true)))

(declare-fun d!44832 () Bool)

(declare-fun res!24799 () Bool)

(declare-fun e!28269 () Bool)

(assert (=> d!44832 (=> res!24799 e!28269)))

(assert (=> d!44832 (= res!24799 (not (is-Node!112 t2!31)))))

(assert (=> d!44832 (= (inv!977 t2!31) e!28269)))

(declare-fun e!28270 () Bool)

(assert (=> b!54107 (= e!28269 e!28270)))

(declare-fun res!24800 () Bool)

(assert (=> b!54107 (=> (not res!24800) (not e!28270))))

(assert (=> b!54107 (= res!24800 inst!186)))

(assert (=> b!54108 (= e!28270 inst!187)))

(assert (= (and d!44832 (not res!24799)) b!54107))

(assert (= neg-inst!175 inst!186))

(assert (= (and b!54107 res!24800) b!54108))

(assert (= neg-inst!174 inst!187))

(assert (=> start!7556 d!44832))

(declare-fun lt!9539 () Bool)

(declare-fun d!44834 () Bool)

(assert (=> d!44834 (= lt!9539 (member x!21403 (content!17 (union!3 t1!27 t2!31))))))

(declare-fun e!28271 () Bool)

(assert (=> d!44834 (= lt!9539 e!28271)))

(declare-fun res!24802 () Bool)

(assert (=> d!44834 (=> (not res!24802) (not e!28271))))

(assert (=> d!44834 (= res!24802 (not (is-Empty!151 (union!3 t1!27 t2!31))))))

(assert (=> d!44834 (= (contains!11 (union!3 t1!27 t2!31) x!21403) lt!9539)))

(declare-fun lt!9538 () Bool)

(declare-fun b!54109 () Bool)

(declare-fun lt!9540 () Bool)

(assert (=> b!54109 (= e!28271 (ite lt!9538 lt!9540 (or (not (bvsgt x!21403 (elem!212 (union!3 t1!27 t2!31)))) lt!9540)))))

(declare-fun e!28272 () Bool)

(assert (=> b!54109 (= lt!9540 e!28272)))

(declare-fun c!11768 () Bool)

(assert (=> b!54109 (= c!11768 (or lt!9538 (bvsgt x!21403 (elem!212 (union!3 t1!27 t2!31)))))))

(assert (=> b!54109 (= lt!9538 (bvslt x!21403 (elem!212 (union!3 t1!27 t2!31))))))

(declare-fun b!54111 () Bool)

(declare-fun res!24801 () Bool)

(assert (=> b!54111 (= e!28272 res!24801)))

(assert (=> b!54111 true))

(assert (=> b!54111 true))

(declare-fun b!54110 () Bool)

(assert (=> b!54110 (= e!28272 (contains!11 (ite lt!9538 (left!1142 (union!3 t1!27 t2!31)) (right!1145 (union!3 t1!27 t2!31))) x!21403))))

(assert (= (and d!44834 res!24802) b!54109))

(assert (= (and b!54109 c!11768) b!54110))

(assert (= (and b!54109 (not c!11768)) b!54111))

(assert (=> d!44834 m!57802))

(declare-fun m!57852 () Bool)

(assert (=> d!44834 m!57852))

(declare-fun m!57854 () Bool)

(assert (=> d!44834 m!57854))

(declare-fun m!57856 () Bool)

(assert (=> b!54110 m!57856))

(assert (=> b!54084 d!44834))

(declare-fun d!44836 () Bool)

(declare-fun lt!9543 () IntSet!26)

(assert (=> d!44836 (= (content!17 lt!9543) (union (content!17 t1!27) (content!17 t2!31)))))

(declare-fun e!28275 () IntSet!26)

(assert (=> d!44836 (= lt!9543 e!28275)))

(declare-fun c!11771 () Bool)

(assert (=> d!44836 (= c!11771 (is-Empty!151 t1!27))))

(assert (=> d!44836 (= (union!3 t1!27 t2!31) lt!9543)))

(declare-fun b!54116 () Bool)

(assert (=> b!54116 (= e!28275 t2!31)))

(declare-fun b!54117 () Bool)

(declare-fun incl!2 (IntSet!26 (_ BitVec 32)) IntSet!26)

(assert (=> b!54117 (= e!28275 (incl!2 (union!3 (left!1142 t1!27) (union!3 (right!1145 t1!27) t2!31)) (elem!212 t1!27)))))

(assert (= (and d!44836 c!11771) b!54116))

(assert (= (and d!44836 (not c!11771)) b!54117))

(declare-fun m!57858 () Bool)

(assert (=> d!44836 m!57858))

(declare-fun m!57860 () Bool)

(assert (=> d!44836 m!57860))

(assert (=> d!44836 m!57814))

(declare-fun m!57862 () Bool)

(assert (=> b!54117 m!57862))

(assert (=> b!54117 m!57862))

(declare-fun m!57864 () Bool)

(assert (=> b!54117 m!57864))

(assert (=> b!54117 m!57864))

(declare-fun m!57866 () Bool)

(assert (=> b!54117 m!57866))

(assert (=> b!54084 d!44836))

(declare-fun d!44838 () Bool)

(declare-fun lt!9545 () Bool)

(assert (=> d!44838 (= lt!9545 (member x!21403 (content!17 t1!27)))))

(declare-fun e!28276 () Bool)

(assert (=> d!44838 (= lt!9545 e!28276)))

(declare-fun res!24805 () Bool)

(assert (=> d!44838 (=> (not res!24805) (not e!28276))))

(assert (=> d!44838 (= res!24805 (not (is-Empty!151 t1!27)))))

(assert (=> d!44838 (= (contains!11 t1!27 x!21403) lt!9545)))

(declare-fun lt!9544 () Bool)

(declare-fun b!54118 () Bool)

(declare-fun lt!9546 () Bool)

(assert (=> b!54118 (= e!28276 (ite lt!9544 lt!9546 (or (not (bvsgt x!21403 (elem!212 t1!27))) lt!9546)))))

(declare-fun e!28277 () Bool)

(assert (=> b!54118 (= lt!9546 e!28277)))

(declare-fun c!11772 () Bool)

(assert (=> b!54118 (= c!11772 (or lt!9544 (bvsgt x!21403 (elem!212 t1!27))))))

(assert (=> b!54118 (= lt!9544 (bvslt x!21403 (elem!212 t1!27)))))

(declare-fun b!54120 () Bool)

(declare-fun res!24804 () Bool)

(assert (=> b!54120 (= e!28277 res!24804)))

(assert (=> b!54120 true))

(assert (=> b!54120 true))

(declare-fun b!54119 () Bool)

(assert (=> b!54119 (= e!28277 (contains!11 (ite lt!9544 (left!1142 t1!27) (right!1145 t1!27)) x!21403))))

(assert (= (and d!44838 res!24805) b!54118))

(assert (= (and b!54118 c!11772) b!54119))

(assert (= (and b!54118 (not c!11772)) b!54120))

(assert (=> d!44838 m!57860))

(declare-fun m!57868 () Bool)

(assert (=> d!44838 m!57868))

(declare-fun m!57870 () Bool)

(assert (=> b!54119 m!57870))

(assert (=> b!54084 d!44838))

(declare-fun b!54121 () Bool)

(declare-fun m!57872 () Bool)

(assert (=> b!54121 m!57872))

(declare-fun inst!188 () Bool)

(declare-fun x!21482 () (_ BitVec 32))

(assert (=> b!54121 (= inst!188 (=> true (or (not (member x!21482 (content!17 (left!1142 (left!1142 t1!27))))) (bvslt x!21482 (elem!212 (left!1142 t1!27))))))))

(declare-fun m!57874 () Bool)

(assert (=> b!54121 m!57874))

(declare-fun bs!24070 () Bool)

(assert (= bs!24070 (and b!54121 b!54107)))

(assert (=> (and bs!24070 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 t2!31))) (= (elem!212 (left!1142 t1!27)) (elem!212 t2!31))) (= inst!188 inst!186)))

(declare-fun bs!24071 () Bool)

(assert (= bs!24071 (and b!54121 neg-inst!171)))

(assert (=> (and bs!24071 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (right!1145 t2!31)))) (= inst!188 true)))

(declare-fun bs!24072 () Bool)

(assert (= bs!24072 (and b!54121 b!54101)))

(assert (=> (and bs!24072 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (left!1142 t2!31)))) (= inst!188 inst!180)))

(declare-fun bs!24073 () Bool)

(assert (= bs!24073 (and b!54121 b!54103)))

(assert (=> (and bs!24073 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (right!1145 t2!31)))) (= inst!188 inst!182)))

(declare-fun bs!24074 () Bool)

(assert (= bs!24074 (and b!54121 neg-inst!175)))

(assert (=> (and bs!24074 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 t2!31))) (= (elem!212 (left!1142 t1!27)) (elem!212 t2!31))) (= inst!188 true)))

(declare-fun bs!24075 () Bool)

(assert (= bs!24075 (and b!54121 b!54105)))

(assert (=> (and bs!24075 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 t1!27))) (= (elem!212 (left!1142 t1!27)) (elem!212 t1!27))) (= inst!188 inst!184)))

(declare-fun bs!24076 () Bool)

(assert (= bs!24076 (and b!54121 neg-inst!173)))

(assert (=> (and bs!24076 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 t1!27))) (= (elem!212 (left!1142 t1!27)) (elem!212 t1!27))) (= inst!188 true)))

(declare-fun bs!24077 () Bool)

(assert (= bs!24077 (and b!54121 neg-inst!169)))

(assert (=> (and bs!24077 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (left!1142 t2!31)))) (= inst!188 true)))

(declare-fun b!54122 () Bool)

(declare-fun m!57876 () Bool)

(assert (=> b!54122 m!57876))

(declare-fun inst!189 () Bool)

(declare-fun x!21483 () (_ BitVec 32))

(assert (=> b!54122 (= inst!189 (=> true (or (not (member x!21483 (content!17 (right!1145 (left!1142 t1!27))))) (bvslt (elem!212 (left!1142 t1!27)) x!21483))))))

(declare-fun m!57878 () Bool)

(assert (=> b!54122 m!57878))

(declare-fun bs!24078 () Bool)

(assert (= bs!24078 (and b!54122 b!54106)))

(assert (=> (and bs!24078 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 t1!27))) (= (elem!212 (left!1142 t1!27)) (elem!212 t1!27))) (= inst!189 inst!185)))

(declare-fun bs!24079 () Bool)

(assert (= bs!24079 (and b!54122 neg-inst!174)))

(assert (=> (and bs!24079 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 t2!31))) (= (elem!212 (left!1142 t1!27)) (elem!212 t2!31))) (= inst!189 true)))

(declare-fun bs!24080 () Bool)

(assert (= bs!24080 (and b!54122 neg-inst!168)))

(assert (=> (and bs!24080 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (left!1142 t2!31)))) (= inst!189 true)))

(declare-fun bs!24081 () Bool)

(assert (= bs!24081 (and b!54122 b!54102)))

(assert (=> (and bs!24081 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (left!1142 t2!31)))) (= inst!189 inst!181)))

(declare-fun bs!24082 () Bool)

(assert (= bs!24082 (and b!54122 b!54104)))

(assert (=> (and bs!24082 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (right!1145 t2!31)))) (= inst!189 inst!183)))

(declare-fun bs!24083 () Bool)

(assert (= bs!24083 (and b!54122 neg-inst!170)))

(assert (=> (and bs!24083 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (right!1145 t2!31)))) (= inst!189 true)))

(declare-fun bs!24084 () Bool)

(assert (= bs!24084 (and b!54122 b!54108)))

(assert (=> (and bs!24084 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 t2!31))) (= (elem!212 (left!1142 t1!27)) (elem!212 t2!31))) (= inst!189 inst!187)))

(declare-fun bs!24085 () Bool)

(assert (= bs!24085 (and b!54122 neg-inst!172)))

(assert (=> (and bs!24085 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 t1!27))) (= (elem!212 (left!1142 t1!27)) (elem!212 t1!27))) (= inst!189 true)))

(declare-fun bs!24086 () Bool)

(declare-fun neg-inst!177 () Bool)

(assert (= bs!24086 neg-inst!177))

(assert (=> bs!24086 m!57872))

(declare-fun bs!24087 () Bool)

(declare-fun s!932 () Bool)

(assert (= bs!24087 (and neg-inst!177 s!932)))

(assert (=> bs!24087 (=> true (or (not (member x!21482 (content!17 (left!1142 (left!1142 t1!27))))) (bvslt x!21482 (elem!212 (left!1142 t1!27)))))))

(assert (=> m!57874 s!932))

(declare-fun bs!24088 () Bool)

(assert (= bs!24088 (and neg-inst!177 b!54107)))

(assert (=> (and bs!24088 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 t2!31))) (= (elem!212 (left!1142 t1!27)) (elem!212 t2!31))) (= true inst!186)))

(declare-fun bs!24089 () Bool)

(assert (= bs!24089 (and neg-inst!177 neg-inst!171)))

(assert (=> (and bs!24089 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (right!1145 t2!31)))) (= true true)))

(declare-fun bs!24090 () Bool)

(assert (= bs!24090 (and neg-inst!177 b!54101)))

(assert (=> (and bs!24090 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (left!1142 t2!31)))) (= true inst!180)))

(declare-fun bs!24091 () Bool)

(assert (= bs!24091 (and neg-inst!177 b!54103)))

(assert (=> (and bs!24091 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (right!1145 t2!31)))) (= true inst!182)))

(declare-fun bs!24092 () Bool)

(assert (= bs!24092 (and neg-inst!177 neg-inst!175)))

(assert (=> (and bs!24092 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 t2!31))) (= (elem!212 (left!1142 t1!27)) (elem!212 t2!31))) (= true true)))

(declare-fun bs!24093 () Bool)

(assert (= bs!24093 (and neg-inst!177 b!54105)))

(assert (=> (and bs!24093 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 t1!27))) (= (elem!212 (left!1142 t1!27)) (elem!212 t1!27))) (= true inst!184)))

(declare-fun bs!24094 () Bool)

(assert (= bs!24094 (and neg-inst!177 b!54121)))

(assert (=> bs!24094 (= true inst!188)))

(declare-fun bs!24095 () Bool)

(assert (= bs!24095 (and neg-inst!177 neg-inst!173)))

(assert (=> (and bs!24095 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 t1!27))) (= (elem!212 (left!1142 t1!27)) (elem!212 t1!27))) (= true true)))

(declare-fun bs!24096 () Bool)

(assert (= bs!24096 (and neg-inst!177 neg-inst!169)))

(assert (=> (and bs!24096 (= (content!17 (left!1142 (left!1142 t1!27))) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (left!1142 t2!31)))) (= true true)))

(declare-fun bs!24097 () Bool)

(declare-fun neg-inst!176 () Bool)

(assert (= bs!24097 neg-inst!176))

(assert (=> bs!24097 m!57876))

(declare-fun bs!24098 () Bool)

(declare-fun s!934 () Bool)

(assert (= bs!24098 (and neg-inst!176 s!934)))

(assert (=> bs!24098 (=> true (or (not (member x!21483 (content!17 (right!1145 (left!1142 t1!27))))) (bvslt (elem!212 (left!1142 t1!27)) x!21483)))))

(assert (=> m!57878 s!934))

(declare-fun bs!24099 () Bool)

(assert (= bs!24099 (and neg-inst!176 b!54106)))

(assert (=> (and bs!24099 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 t1!27))) (= (elem!212 (left!1142 t1!27)) (elem!212 t1!27))) (= true inst!185)))

(declare-fun bs!24100 () Bool)

(assert (= bs!24100 (and neg-inst!176 neg-inst!174)))

(assert (=> (and bs!24100 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 t2!31))) (= (elem!212 (left!1142 t1!27)) (elem!212 t2!31))) (= true true)))

(declare-fun bs!24101 () Bool)

(assert (= bs!24101 (and neg-inst!176 neg-inst!168)))

(assert (=> (and bs!24101 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (left!1142 t2!31)))) (= true true)))

(declare-fun bs!24102 () Bool)

(assert (= bs!24102 (and neg-inst!176 b!54102)))

(assert (=> (and bs!24102 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (left!1142 t2!31)))) (= true inst!181)))

(declare-fun bs!24103 () Bool)

(assert (= bs!24103 (and neg-inst!176 b!54104)))

(assert (=> (and bs!24103 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (right!1145 t2!31)))) (= true inst!183)))

(declare-fun bs!24104 () Bool)

(assert (= bs!24104 (and neg-inst!176 neg-inst!170)))

(assert (=> (and bs!24104 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 (left!1142 t1!27)) (elem!212 (right!1145 t2!31)))) (= true true)))

(declare-fun bs!24105 () Bool)

(assert (= bs!24105 (and neg-inst!176 b!54108)))

(assert (=> (and bs!24105 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 t2!31))) (= (elem!212 (left!1142 t1!27)) (elem!212 t2!31))) (= true inst!187)))

(declare-fun bs!24106 () Bool)

(assert (= bs!24106 (and neg-inst!176 b!54122)))

(assert (=> bs!24106 (= true inst!189)))

(declare-fun bs!24107 () Bool)

(assert (= bs!24107 (and neg-inst!176 neg-inst!172)))

(assert (=> (and bs!24107 (= (content!17 (right!1145 (left!1142 t1!27))) (content!17 (right!1145 t1!27))) (= (elem!212 (left!1142 t1!27)) (elem!212 t1!27))) (= true true)))

(declare-fun d!44840 () Bool)

(declare-fun res!24806 () Bool)

(declare-fun e!28278 () Bool)

(assert (=> d!44840 (=> res!24806 e!28278)))

(assert (=> d!44840 (= res!24806 (not (is-Node!112 (left!1142 t1!27))))))

(assert (=> d!44840 (= (inv!977 (left!1142 t1!27)) e!28278)))

(declare-fun e!28279 () Bool)

(assert (=> b!54121 (= e!28278 e!28279)))

(declare-fun res!24807 () Bool)

(assert (=> b!54121 (=> (not res!24807) (not e!28279))))

(assert (=> b!54121 (= res!24807 inst!188)))

(assert (=> b!54122 (= e!28279 inst!189)))

(assert (= (and d!44840 (not res!24806)) b!54121))

(assert (= neg-inst!177 inst!188))

(assert (= (and b!54121 res!24807) b!54122))

(assert (= neg-inst!176 inst!189))

(assert (=> b!54086 d!44840))

(declare-fun b!54123 () Bool)

(declare-fun m!57880 () Bool)

(assert (=> b!54123 m!57880))

(declare-fun inst!190 () Bool)

(declare-fun x!21484 () (_ BitVec 32))

(assert (=> b!54123 (= inst!190 (=> true (or (not (member x!21484 (content!17 (left!1142 (right!1145 t1!27))))) (bvslt x!21484 (elem!212 (right!1145 t1!27))))))))

(declare-fun m!57882 () Bool)

(assert (=> b!54123 m!57882))

(declare-fun bs!24108 () Bool)

(assert (= bs!24108 (and b!54123 neg-inst!177)))

(assert (=> (and bs!24108 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 (left!1142 t1!27)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t1!27)))) (= inst!190 true)))

(declare-fun bs!24109 () Bool)

(assert (= bs!24109 (and b!54123 b!54107)))

(assert (=> (and bs!24109 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 t2!31))) (= (elem!212 (right!1145 t1!27)) (elem!212 t2!31))) (= inst!190 inst!186)))

(declare-fun bs!24110 () Bool)

(assert (= bs!24110 (and b!54123 neg-inst!171)))

(assert (=> (and bs!24110 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (right!1145 t2!31)))) (= inst!190 true)))

(declare-fun bs!24111 () Bool)

(assert (= bs!24111 (and b!54123 b!54101)))

(assert (=> (and bs!24111 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t2!31)))) (= inst!190 inst!180)))

(declare-fun bs!24112 () Bool)

(assert (= bs!24112 (and b!54123 b!54103)))

(assert (=> (and bs!24112 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (right!1145 t2!31)))) (= inst!190 inst!182)))

(declare-fun bs!24113 () Bool)

(assert (= bs!24113 (and b!54123 neg-inst!175)))

(assert (=> (and bs!24113 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 t2!31))) (= (elem!212 (right!1145 t1!27)) (elem!212 t2!31))) (= inst!190 true)))

(declare-fun bs!24114 () Bool)

(assert (= bs!24114 (and b!54123 b!54105)))

(assert (=> (and bs!24114 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 t1!27))) (= (elem!212 (right!1145 t1!27)) (elem!212 t1!27))) (= inst!190 inst!184)))

(declare-fun bs!24115 () Bool)

(assert (= bs!24115 (and b!54123 b!54121)))

(assert (=> (and bs!24115 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 (left!1142 t1!27)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t1!27)))) (= inst!190 inst!188)))

(declare-fun bs!24116 () Bool)

(assert (= bs!24116 (and b!54123 neg-inst!173)))

(assert (=> (and bs!24116 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 t1!27))) (= (elem!212 (right!1145 t1!27)) (elem!212 t1!27))) (= inst!190 true)))

(declare-fun bs!24117 () Bool)

(assert (= bs!24117 (and b!54123 neg-inst!169)))

(assert (=> (and bs!24117 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t2!31)))) (= inst!190 true)))

(declare-fun b!54124 () Bool)

(declare-fun m!57884 () Bool)

(assert (=> b!54124 m!57884))

(declare-fun inst!191 () Bool)

(declare-fun x!21485 () (_ BitVec 32))

(assert (=> b!54124 (= inst!191 (=> true (or (not (member x!21485 (content!17 (right!1145 (right!1145 t1!27))))) (bvslt (elem!212 (right!1145 t1!27)) x!21485))))))

(declare-fun m!57886 () Bool)

(assert (=> b!54124 m!57886))

(declare-fun bs!24118 () Bool)

(assert (= bs!24118 (and b!54124 b!54106)))

(assert (=> (and bs!24118 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 t1!27))) (= (elem!212 (right!1145 t1!27)) (elem!212 t1!27))) (= inst!191 inst!185)))

(declare-fun bs!24119 () Bool)

(assert (= bs!24119 (and b!54124 neg-inst!174)))

(assert (=> (and bs!24119 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 t2!31))) (= (elem!212 (right!1145 t1!27)) (elem!212 t2!31))) (= inst!191 true)))

(declare-fun bs!24120 () Bool)

(assert (= bs!24120 (and b!54124 neg-inst!168)))

(assert (=> (and bs!24120 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t2!31)))) (= inst!191 true)))

(declare-fun bs!24121 () Bool)

(assert (= bs!24121 (and b!54124 b!54102)))

(assert (=> (and bs!24121 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t2!31)))) (= inst!191 inst!181)))

(declare-fun bs!24122 () Bool)

(assert (= bs!24122 (and b!54124 b!54104)))

(assert (=> (and bs!24122 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (right!1145 t2!31)))) (= inst!191 inst!183)))

(declare-fun bs!24123 () Bool)

(assert (= bs!24123 (and b!54124 neg-inst!176)))

(assert (=> (and bs!24123 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 (left!1142 t1!27)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t1!27)))) (= inst!191 true)))

(declare-fun bs!24124 () Bool)

(assert (= bs!24124 (and b!54124 neg-inst!170)))

(assert (=> (and bs!24124 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (right!1145 t2!31)))) (= inst!191 true)))

(declare-fun bs!24125 () Bool)

(assert (= bs!24125 (and b!54124 b!54108)))

(assert (=> (and bs!24125 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 t2!31))) (= (elem!212 (right!1145 t1!27)) (elem!212 t2!31))) (= inst!191 inst!187)))

(declare-fun bs!24126 () Bool)

(assert (= bs!24126 (and b!54124 b!54122)))

(assert (=> (and bs!24126 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 (left!1142 t1!27)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t1!27)))) (= inst!191 inst!189)))

(declare-fun bs!24127 () Bool)

(assert (= bs!24127 (and b!54124 neg-inst!172)))

(assert (=> (and bs!24127 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 t1!27))) (= (elem!212 (right!1145 t1!27)) (elem!212 t1!27))) (= inst!191 true)))

(declare-fun bs!24128 () Bool)

(declare-fun neg-inst!179 () Bool)

(assert (= bs!24128 neg-inst!179))

(assert (=> bs!24128 m!57880))

(declare-fun bs!24129 () Bool)

(declare-fun s!936 () Bool)

(assert (= bs!24129 (and neg-inst!179 s!936)))

(assert (=> bs!24129 (=> true (or (not (member x!21484 (content!17 (left!1142 (right!1145 t1!27))))) (bvslt x!21484 (elem!212 (right!1145 t1!27)))))))

(assert (=> m!57882 s!936))

(declare-fun bs!24130 () Bool)

(assert (= bs!24130 (and neg-inst!179 neg-inst!177)))

(assert (=> (and bs!24130 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 (left!1142 t1!27)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t1!27)))) (= true true)))

(declare-fun bs!24131 () Bool)

(assert (= bs!24131 (and neg-inst!179 b!54107)))

(assert (=> (and bs!24131 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 t2!31))) (= (elem!212 (right!1145 t1!27)) (elem!212 t2!31))) (= true inst!186)))

(declare-fun bs!24132 () Bool)

(assert (= bs!24132 (and neg-inst!179 b!54123)))

(assert (=> bs!24132 (= true inst!190)))

(declare-fun bs!24133 () Bool)

(assert (= bs!24133 (and neg-inst!179 neg-inst!171)))

(assert (=> (and bs!24133 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (right!1145 t2!31)))) (= true true)))

(declare-fun bs!24134 () Bool)

(assert (= bs!24134 (and neg-inst!179 b!54101)))

(assert (=> (and bs!24134 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t2!31)))) (= true inst!180)))

(declare-fun bs!24135 () Bool)

(assert (= bs!24135 (and neg-inst!179 b!54103)))

(assert (=> (and bs!24135 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 (right!1145 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (right!1145 t2!31)))) (= true inst!182)))

(declare-fun bs!24136 () Bool)

(assert (= bs!24136 (and neg-inst!179 neg-inst!175)))

(assert (=> (and bs!24136 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 t2!31))) (= (elem!212 (right!1145 t1!27)) (elem!212 t2!31))) (= true true)))

(declare-fun bs!24137 () Bool)

(assert (= bs!24137 (and neg-inst!179 b!54105)))

(assert (=> (and bs!24137 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 t1!27))) (= (elem!212 (right!1145 t1!27)) (elem!212 t1!27))) (= true inst!184)))

(declare-fun bs!24138 () Bool)

(assert (= bs!24138 (and neg-inst!179 b!54121)))

(assert (=> (and bs!24138 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 (left!1142 t1!27)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t1!27)))) (= true inst!188)))

(declare-fun bs!24139 () Bool)

(assert (= bs!24139 (and neg-inst!179 neg-inst!173)))

(assert (=> (and bs!24139 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 t1!27))) (= (elem!212 (right!1145 t1!27)) (elem!212 t1!27))) (= true true)))

(declare-fun bs!24140 () Bool)

(assert (= bs!24140 (and neg-inst!179 neg-inst!169)))

(assert (=> (and bs!24140 (= (content!17 (left!1142 (right!1145 t1!27))) (content!17 (left!1142 (left!1142 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t2!31)))) (= true true)))

(declare-fun bs!24141 () Bool)

(declare-fun neg-inst!178 () Bool)

(assert (= bs!24141 neg-inst!178))

(assert (=> bs!24141 m!57884))

(declare-fun bs!24142 () Bool)

(declare-fun s!938 () Bool)

(assert (= bs!24142 (and neg-inst!178 s!938)))

(assert (=> bs!24142 (=> true (or (not (member x!21485 (content!17 (right!1145 (right!1145 t1!27))))) (bvslt (elem!212 (right!1145 t1!27)) x!21485)))))

(assert (=> m!57886 s!938))

(declare-fun bs!24143 () Bool)

(assert (= bs!24143 (and neg-inst!178 b!54106)))

(assert (=> (and bs!24143 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 t1!27))) (= (elem!212 (right!1145 t1!27)) (elem!212 t1!27))) (= true inst!185)))

(declare-fun bs!24144 () Bool)

(assert (= bs!24144 (and neg-inst!178 neg-inst!174)))

(assert (=> (and bs!24144 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 t2!31))) (= (elem!212 (right!1145 t1!27)) (elem!212 t2!31))) (= true true)))

(declare-fun bs!24145 () Bool)

(assert (= bs!24145 (and neg-inst!178 neg-inst!168)))

(assert (=> (and bs!24145 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t2!31)))) (= true true)))

(declare-fun bs!24146 () Bool)

(assert (= bs!24146 (and neg-inst!178 b!54102)))

(assert (=> (and bs!24146 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 (left!1142 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t2!31)))) (= true inst!181)))

(declare-fun bs!24147 () Bool)

(assert (= bs!24147 (and neg-inst!178 b!54104)))

(assert (=> (and bs!24147 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (right!1145 t2!31)))) (= true inst!183)))

(declare-fun bs!24148 () Bool)

(assert (= bs!24148 (and neg-inst!178 neg-inst!176)))

(assert (=> (and bs!24148 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 (left!1142 t1!27)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t1!27)))) (= true true)))

(declare-fun bs!24149 () Bool)

(assert (= bs!24149 (and neg-inst!178 neg-inst!170)))

(assert (=> (and bs!24149 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 (right!1145 t2!31)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (right!1145 t2!31)))) (= true true)))

(declare-fun bs!24150 () Bool)

(assert (= bs!24150 (and neg-inst!178 b!54108)))

(assert (=> (and bs!24150 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 t2!31))) (= (elem!212 (right!1145 t1!27)) (elem!212 t2!31))) (= true inst!187)))

(declare-fun bs!24151 () Bool)

(assert (= bs!24151 (and neg-inst!178 b!54124)))

(assert (=> bs!24151 (= true inst!191)))

(declare-fun bs!24152 () Bool)

(assert (= bs!24152 (and neg-inst!178 b!54122)))

(assert (=> (and bs!24152 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 (left!1142 t1!27)))) (= (elem!212 (right!1145 t1!27)) (elem!212 (left!1142 t1!27)))) (= true inst!189)))

(declare-fun bs!24153 () Bool)

(assert (= bs!24153 (and neg-inst!178 neg-inst!172)))

(assert (=> (and bs!24153 (= (content!17 (right!1145 (right!1145 t1!27))) (content!17 (right!1145 t1!27))) (= (elem!212 (right!1145 t1!27)) (elem!212 t1!27))) (= true true)))

(declare-fun d!44842 () Bool)

(declare-fun res!24808 () Bool)

(declare-fun e!28280 () Bool)

(assert (=> d!44842 (=> res!24808 e!28280)))

(assert (=> d!44842 (= res!24808 (not (is-Node!112 (right!1145 t1!27))))))

(assert (=> d!44842 (= (inv!977 (right!1145 t1!27)) e!28280)))

(declare-fun e!28281 () Bool)

(assert (=> b!54123 (= e!28280 e!28281)))

(declare-fun res!24809 () Bool)

(assert (=> b!54123 (=> (not res!24809) (not e!28281))))

(assert (=> b!54123 (= res!24809 inst!190)))

(assert (=> b!54124 (= e!28281 inst!191)))

(assert (= (and d!44842 (not res!24808)) b!54123))

(assert (= neg-inst!179 inst!190))

(assert (= (and b!54123 res!24809) b!54124))

(assert (= neg-inst!178 inst!191))

(assert (=> b!54086 d!44842))

(declare-fun tp!15191 () Bool)

(declare-fun tp!15192 () Bool)

(declare-fun e!28284 () Bool)

(declare-fun b!54129 () Bool)

(assert (=> b!54129 (= e!28284 (and (inv!977 (left!1142 (left!1142 t2!31))) tp!15191 (inv!977 (right!1145 (left!1142 t2!31))) tp!15192))))

(assert (=> b!54087 (= tp!15185 (and (inv!977 (left!1142 t2!31)) e!28284))))

(assert (= (and b!54087 (is-Node!112 (left!1142 t2!31))) b!54129))

(declare-fun m!57888 () Bool)

(assert (=> b!54129 m!57888))

(declare-fun m!57890 () Bool)

(assert (=> b!54129 m!57890))

(assert (=> b!54087 m!57794))

(declare-fun e!28285 () Bool)

(declare-fun b!54130 () Bool)

(declare-fun tp!15193 () Bool)

(declare-fun tp!15194 () Bool)

(assert (=> b!54130 (= e!28285 (and (inv!977 (left!1142 (right!1145 t2!31))) tp!15193 (inv!977 (right!1145 (right!1145 t2!31))) tp!15194))))

(assert (=> b!54087 (= tp!15186 (and (inv!977 (right!1145 t2!31)) e!28285))))

(assert (= (and b!54087 (is-Node!112 (right!1145 t2!31))) b!54130))

(declare-fun m!57892 () Bool)

(assert (=> b!54130 m!57892))

(declare-fun m!57894 () Bool)

(assert (=> b!54130 m!57894))

(assert (=> b!54087 m!57796))

(declare-fun tp!15195 () Bool)

(declare-fun e!28286 () Bool)

(declare-fun tp!15196 () Bool)

(declare-fun b!54131 () Bool)

(assert (=> b!54131 (= e!28286 (and (inv!977 (left!1142 (left!1142 t1!27))) tp!15195 (inv!977 (right!1145 (left!1142 t1!27))) tp!15196))))

(assert (=> b!54086 (= tp!15184 (and (inv!977 (left!1142 t1!27)) e!28286))))

(assert (= (and b!54086 (is-Node!112 (left!1142 t1!27))) b!54131))

(declare-fun m!57896 () Bool)

(assert (=> b!54131 m!57896))

(declare-fun m!57898 () Bool)

(assert (=> b!54131 m!57898))

(assert (=> b!54086 m!57798))

(declare-fun tp!15197 () Bool)

(declare-fun e!28287 () Bool)

(declare-fun tp!15198 () Bool)

(declare-fun b!54132 () Bool)

(assert (=> b!54132 (= e!28287 (and (inv!977 (left!1142 (right!1145 t1!27))) tp!15197 (inv!977 (right!1145 (right!1145 t1!27))) tp!15198))))

(assert (=> b!54086 (= tp!15183 (and (inv!977 (right!1145 t1!27)) e!28287))))

(assert (= (and b!54086 (is-Node!112 (right!1145 t1!27))) b!54132))

(declare-fun m!57900 () Bool)

(assert (=> b!54132 m!57900))

(declare-fun m!57902 () Bool)

(assert (=> b!54132 m!57902))

(assert (=> b!54086 m!57800))

(push 1)

(assert (not b!54086))

(assert (not b!54105))

(assert (not d!44838))

(assert (not b!54130))

(assert (not b!54131))

(assert (not d!44824))

(assert (not b!54106))

(assert (not b!54095))

(assert (not b!54124))

(assert (not b!54087))

(assert (not b!54122))

(assert (not neg-inst!169))

(assert (not neg-inst!173))

(assert (not neg-inst!170))

(assert (not b!54123))

(assert (not neg-inst!168))

(assert (not b!54107))

(assert (not b!54110))

(assert (not b!54129))

(assert (not b!54119))

(assert (not b!54103))

(assert (not neg-inst!179))

(assert (not d!44834))

(assert (not b!54104))

(assert (not neg-inst!172))

(assert (not b!54132))

(assert (not neg-inst!178))

(assert (not neg-inst!176))

(assert (not neg-inst!175))

(assert (not neg-inst!171))

(assert (not b!54102))

(assert (not neg-inst!177))

(assert (not b!54108))

(assert (not b!54121))

(assert (not b!54117))

(assert (not b!54101))

(assert (not neg-inst!174))

(assert (not d!44836))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

