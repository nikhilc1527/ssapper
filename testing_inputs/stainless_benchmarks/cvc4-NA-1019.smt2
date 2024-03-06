; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7540 () Bool)

(assert start!7540)

(declare-fun res!24732 () Bool)

(declare-fun e!28198 () Bool)

(assert (=> start!7540 (=> (not res!24732) (not e!28198))))

(declare-datatypes () ((Unit!892 (Unit!893))))

(declare-fun x$2!299 () Unit!892)

(declare-fun Unit!894 () Unit!892)

(assert (=> start!7540 (= res!24732 (= x$2!299 Unit!894))))

(assert (=> start!7540 e!28198))

(assert (=> start!7540 true))

(declare-datatypes () ((IntSet!23 (Empty!148) (Node!109 (left!1138 IntSet!23) (elem!209 (_ BitVec 32)) (right!1141 IntSet!23)))))

(declare-fun s!891 () IntSet!23)

(declare-fun e!28199 () Bool)

(declare-fun inv!977 (IntSet!23) Bool)

(assert (=> start!7540 (and (inv!977 s!891) e!28199)))

(declare-fun b!54016 () Bool)

(declare-fun x!21377 () (_ BitVec 32))

(declare-fun contains!11 (IntSet!23 (_ BitVec 32)) Bool)

(declare-fun incl!2 (IntSet!23 (_ BitVec 32)) IntSet!23)

(assert (=> b!54016 (= e!28198 (not (contains!11 (incl!2 s!891 x!21377) x!21377)))))

(declare-fun b!54017 () Bool)

(declare-fun tp!15148 () Bool)

(declare-fun tp!15147 () Bool)

(assert (=> b!54017 (= e!28199 (and (inv!977 (left!1138 s!891)) tp!15147 (inv!977 (right!1141 s!891)) tp!15148))))

(assert (= (and start!7540 res!24732) b!54016))

(assert (= (and start!7540 (is-Node!109 s!891)) b!54017))

(declare-fun m!57712 () Bool)

(assert (=> start!7540 m!57712))

(declare-fun m!57714 () Bool)

(assert (=> b!54016 m!57714))

(assert (=> b!54016 m!57714))

(declare-fun m!57716 () Bool)

(assert (=> b!54016 m!57716))

(declare-fun m!57718 () Bool)

(assert (=> b!54017 m!57718))

(declare-fun m!57720 () Bool)

(assert (=> b!54017 m!57720))

(push 1)

(assert (not b!54017))

(assert (not start!7540))

(assert (not b!54016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!54022 () Bool)

(declare-fun m!57722 () Bool)

(assert (=> b!54022 m!57722))

(declare-fun inst!170 () Bool)

(declare-fun x!21438 () (_ BitVec 32))

(declare-fun content!17 (IntSet!23) (Set (_ BitVec 32)))

(assert (=> b!54022 (= inst!170 (=> true (or (not (member x!21438 (content!17 (left!1138 (left!1138 s!891))))) (bvslt x!21438 (elem!209 (left!1138 s!891))))))))

(declare-fun m!57724 () Bool)

(assert (=> b!54022 m!57724))

(declare-fun b!54023 () Bool)

(declare-fun m!57726 () Bool)

(assert (=> b!54023 m!57726))

(declare-fun inst!171 () Bool)

(declare-fun x!21439 () (_ BitVec 32))

(assert (=> b!54023 (= inst!171 (=> true (or (not (member x!21439 (content!17 (right!1141 (left!1138 s!891))))) (bvslt (elem!209 (left!1138 s!891)) x!21439))))))

(declare-fun m!57728 () Bool)

(assert (=> b!54023 m!57728))

(declare-fun bs!23952 () Bool)

(declare-fun neg-inst!158 () Bool)

(assert (= bs!23952 neg-inst!158))

(assert (=> bs!23952 m!57722))

(declare-fun bs!23953 () Bool)

(declare-fun s!902 () Bool)

(assert (= bs!23953 (and neg-inst!158 s!902)))

(assert (=> bs!23953 (=> true (or (not (member x!21438 (content!17 (left!1138 (left!1138 s!891))))) (bvslt x!21438 (elem!209 (left!1138 s!891)))))))

(assert (=> m!57724 s!902))

(declare-fun bs!23954 () Bool)

(assert (= bs!23954 (and neg-inst!158 b!54022)))

(assert (=> bs!23954 (= true inst!170)))

(declare-fun bs!23955 () Bool)

(declare-fun neg-inst!159 () Bool)

(assert (= bs!23955 neg-inst!159))

(assert (=> bs!23955 m!57726))

(declare-fun bs!23956 () Bool)

(declare-fun s!904 () Bool)

(assert (= bs!23956 (and neg-inst!159 s!904)))

(assert (=> bs!23956 (=> true (or (not (member x!21439 (content!17 (right!1141 (left!1138 s!891))))) (bvslt (elem!209 (left!1138 s!891)) x!21439)))))

(assert (=> m!57728 s!904))

(declare-fun bs!23957 () Bool)

(assert (= bs!23957 (and neg-inst!159 b!54023)))

(assert (=> bs!23957 (= true inst!171)))

(declare-fun d!44811 () Bool)

(declare-fun res!24737 () Bool)

(declare-fun e!28205 () Bool)

(assert (=> d!44811 (=> res!24737 e!28205)))

(assert (=> d!44811 (= res!24737 (not (is-Node!109 (left!1138 s!891))))))

(assert (=> d!44811 (= (inv!977 (left!1138 s!891)) e!28205)))

(declare-fun e!28204 () Bool)

(assert (=> b!54022 (= e!28205 e!28204)))

(declare-fun res!24738 () Bool)

(assert (=> b!54022 (=> (not res!24738) (not e!28204))))

(assert (=> b!54022 (= res!24738 inst!170)))

(assert (=> b!54023 (= e!28204 inst!171)))

(assert (= (and d!44811 (not res!24737)) b!54022))

(assert (= neg-inst!158 inst!170))

(assert (= (and b!54022 res!24738) b!54023))

(assert (= neg-inst!159 inst!171))

(assert (=> b!54017 d!44811))

(declare-fun b!54024 () Bool)

(declare-fun m!57730 () Bool)

(assert (=> b!54024 m!57730))

(declare-fun inst!172 () Bool)

(declare-fun x!21440 () (_ BitVec 32))

(assert (=> b!54024 (= inst!172 (=> true (or (not (member x!21440 (content!17 (left!1138 (right!1141 s!891))))) (bvslt x!21440 (elem!209 (right!1141 s!891))))))))

(declare-fun m!57732 () Bool)

(assert (=> b!54024 m!57732))

(declare-fun bs!23958 () Bool)

(assert (= bs!23958 (and b!54024 neg-inst!158)))

(assert (=> (and bs!23958 (= (content!17 (left!1138 (right!1141 s!891))) (content!17 (left!1138 (left!1138 s!891)))) (= (elem!209 (right!1141 s!891)) (elem!209 (left!1138 s!891)))) (= inst!172 true)))

(declare-fun bs!23959 () Bool)

(assert (= bs!23959 (and b!54024 b!54022)))

(assert (=> (and bs!23959 (= (content!17 (left!1138 (right!1141 s!891))) (content!17 (left!1138 (left!1138 s!891)))) (= (elem!209 (right!1141 s!891)) (elem!209 (left!1138 s!891)))) (= inst!172 inst!170)))

(declare-fun b!54025 () Bool)

(declare-fun m!57734 () Bool)

(assert (=> b!54025 m!57734))

(declare-fun inst!173 () Bool)

(declare-fun x!21441 () (_ BitVec 32))

(assert (=> b!54025 (= inst!173 (=> true (or (not (member x!21441 (content!17 (right!1141 (right!1141 s!891))))) (bvslt (elem!209 (right!1141 s!891)) x!21441))))))

(declare-fun m!57736 () Bool)

(assert (=> b!54025 m!57736))

(declare-fun bs!23960 () Bool)

(assert (= bs!23960 (and b!54025 neg-inst!159)))

(assert (=> (and bs!23960 (= (content!17 (right!1141 (right!1141 s!891))) (content!17 (right!1141 (left!1138 s!891)))) (= (elem!209 (right!1141 s!891)) (elem!209 (left!1138 s!891)))) (= inst!173 true)))

(declare-fun bs!23961 () Bool)

(assert (= bs!23961 (and b!54025 b!54023)))

(assert (=> (and bs!23961 (= (content!17 (right!1141 (right!1141 s!891))) (content!17 (right!1141 (left!1138 s!891)))) (= (elem!209 (right!1141 s!891)) (elem!209 (left!1138 s!891)))) (= inst!173 inst!171)))

(declare-fun bs!23962 () Bool)

(declare-fun neg-inst!160 () Bool)

(assert (= bs!23962 neg-inst!160))

(assert (=> bs!23962 m!57730))

(declare-fun bs!23963 () Bool)

(declare-fun s!906 () Bool)

(assert (= bs!23963 (and neg-inst!160 s!906)))

(assert (=> bs!23963 (=> true (or (not (member x!21440 (content!17 (left!1138 (right!1141 s!891))))) (bvslt x!21440 (elem!209 (right!1141 s!891)))))))

(assert (=> m!57732 s!906))

(declare-fun bs!23964 () Bool)

(assert (= bs!23964 (and neg-inst!160 neg-inst!158)))

(assert (=> (and bs!23964 (= (content!17 (left!1138 (right!1141 s!891))) (content!17 (left!1138 (left!1138 s!891)))) (= (elem!209 (right!1141 s!891)) (elem!209 (left!1138 s!891)))) (= true true)))

(declare-fun bs!23965 () Bool)

(assert (= bs!23965 (and neg-inst!160 b!54024)))

(assert (=> bs!23965 (= true inst!172)))

(declare-fun bs!23966 () Bool)

(assert (= bs!23966 (and neg-inst!160 b!54022)))

(assert (=> (and bs!23966 (= (content!17 (left!1138 (right!1141 s!891))) (content!17 (left!1138 (left!1138 s!891)))) (= (elem!209 (right!1141 s!891)) (elem!209 (left!1138 s!891)))) (= true inst!170)))

(declare-fun bs!23967 () Bool)

(declare-fun neg-inst!161 () Bool)

(assert (= bs!23967 neg-inst!161))

(assert (=> bs!23967 m!57734))

(declare-fun bs!23968 () Bool)

(declare-fun s!908 () Bool)

(assert (= bs!23968 (and neg-inst!161 s!908)))

(assert (=> bs!23968 (=> true (or (not (member x!21441 (content!17 (right!1141 (right!1141 s!891))))) (bvslt (elem!209 (right!1141 s!891)) x!21441)))))

(assert (=> m!57736 s!908))

(declare-fun bs!23969 () Bool)

(assert (= bs!23969 (and neg-inst!161 neg-inst!159)))

(assert (=> (and bs!23969 (= (content!17 (right!1141 (right!1141 s!891))) (content!17 (right!1141 (left!1138 s!891)))) (= (elem!209 (right!1141 s!891)) (elem!209 (left!1138 s!891)))) (= true true)))

(declare-fun bs!23970 () Bool)

(assert (= bs!23970 (and neg-inst!161 b!54023)))

(assert (=> (and bs!23970 (= (content!17 (right!1141 (right!1141 s!891))) (content!17 (right!1141 (left!1138 s!891)))) (= (elem!209 (right!1141 s!891)) (elem!209 (left!1138 s!891)))) (= true inst!171)))

(declare-fun bs!23971 () Bool)

(assert (= bs!23971 (and neg-inst!161 b!54025)))

(assert (=> bs!23971 (= true inst!173)))

(declare-fun d!44813 () Bool)

(declare-fun res!24739 () Bool)

(declare-fun e!28207 () Bool)

(assert (=> d!44813 (=> res!24739 e!28207)))

(assert (=> d!44813 (= res!24739 (not (is-Node!109 (right!1141 s!891))))))

(assert (=> d!44813 (= (inv!977 (right!1141 s!891)) e!28207)))

(declare-fun e!28206 () Bool)

(assert (=> b!54024 (= e!28207 e!28206)))

(declare-fun res!24740 () Bool)

(assert (=> b!54024 (=> (not res!24740) (not e!28206))))

(assert (=> b!54024 (= res!24740 inst!172)))

(assert (=> b!54025 (= e!28206 inst!173)))

(assert (= (and d!44813 (not res!24739)) b!54024))

(assert (= neg-inst!160 inst!172))

(assert (= (and b!54024 res!24740) b!54025))

(assert (= neg-inst!161 inst!173))

(assert (=> b!54017 d!44813))

(declare-fun b!54026 () Bool)

(declare-fun m!57738 () Bool)

(assert (=> b!54026 m!57738))

(declare-fun inst!174 () Bool)

(declare-fun x!21442 () (_ BitVec 32))

(assert (=> b!54026 (= inst!174 (=> true (or (not (member x!21442 (content!17 (left!1138 s!891)))) (bvslt x!21442 (elem!209 s!891)))))))

(declare-fun m!57740 () Bool)

(assert (=> b!54026 m!57740))

(declare-fun bs!23972 () Bool)

(assert (= bs!23972 (and b!54026 neg-inst!160)))

(assert (=> (and bs!23972 (= (content!17 (left!1138 s!891)) (content!17 (left!1138 (right!1141 s!891)))) (= (elem!209 s!891) (elem!209 (right!1141 s!891)))) (= inst!174 true)))

(declare-fun bs!23973 () Bool)

(assert (= bs!23973 (and b!54026 neg-inst!158)))

(assert (=> (and bs!23973 (= (content!17 (left!1138 s!891)) (content!17 (left!1138 (left!1138 s!891)))) (= (elem!209 s!891) (elem!209 (left!1138 s!891)))) (= inst!174 true)))

(declare-fun bs!23974 () Bool)

(assert (= bs!23974 (and b!54026 b!54024)))

(assert (=> (and bs!23974 (= (content!17 (left!1138 s!891)) (content!17 (left!1138 (right!1141 s!891)))) (= (elem!209 s!891) (elem!209 (right!1141 s!891)))) (= inst!174 inst!172)))

(declare-fun bs!23975 () Bool)

(assert (= bs!23975 (and b!54026 b!54022)))

(assert (=> (and bs!23975 (= (content!17 (left!1138 s!891)) (content!17 (left!1138 (left!1138 s!891)))) (= (elem!209 s!891) (elem!209 (left!1138 s!891)))) (= inst!174 inst!170)))

(declare-fun b!54027 () Bool)

(declare-fun m!57742 () Bool)

(assert (=> b!54027 m!57742))

(declare-fun inst!175 () Bool)

(declare-fun x!21443 () (_ BitVec 32))

(assert (=> b!54027 (= inst!175 (=> true (or (not (member x!21443 (content!17 (right!1141 s!891)))) (bvslt (elem!209 s!891) x!21443))))))

(declare-fun m!57744 () Bool)

(assert (=> b!54027 m!57744))

(declare-fun bs!23976 () Bool)

(assert (= bs!23976 (and b!54027 neg-inst!159)))

(assert (=> (and bs!23976 (= (content!17 (right!1141 s!891)) (content!17 (right!1141 (left!1138 s!891)))) (= (elem!209 s!891) (elem!209 (left!1138 s!891)))) (= inst!175 true)))

(declare-fun bs!23977 () Bool)

(assert (= bs!23977 (and b!54027 b!54023)))

(assert (=> (and bs!23977 (= (content!17 (right!1141 s!891)) (content!17 (right!1141 (left!1138 s!891)))) (= (elem!209 s!891) (elem!209 (left!1138 s!891)))) (= inst!175 inst!171)))

(declare-fun bs!23978 () Bool)

(assert (= bs!23978 (and b!54027 b!54025)))

(assert (=> (and bs!23978 (= (content!17 (right!1141 s!891)) (content!17 (right!1141 (right!1141 s!891)))) (= (elem!209 s!891) (elem!209 (right!1141 s!891)))) (= inst!175 inst!173)))

(declare-fun bs!23979 () Bool)

(assert (= bs!23979 (and b!54027 neg-inst!161)))

(assert (=> (and bs!23979 (= (content!17 (right!1141 s!891)) (content!17 (right!1141 (right!1141 s!891)))) (= (elem!209 s!891) (elem!209 (right!1141 s!891)))) (= inst!175 true)))

(declare-fun bs!23980 () Bool)

(declare-fun neg-inst!162 () Bool)

(assert (= bs!23980 neg-inst!162))

(assert (=> bs!23980 m!57738))

(declare-fun bs!23981 () Bool)

(declare-fun s!910 () Bool)

(assert (= bs!23981 (and neg-inst!162 s!910)))

(assert (=> bs!23981 (=> true (or (not (member x!21442 (content!17 (left!1138 s!891)))) (bvslt x!21442 (elem!209 s!891))))))

(assert (=> m!57740 s!910))

(declare-fun bs!23982 () Bool)

(assert (= bs!23982 (and neg-inst!162 b!54026)))

(assert (=> bs!23982 (= true inst!174)))

(declare-fun bs!23983 () Bool)

(assert (= bs!23983 (and neg-inst!162 neg-inst!160)))

(assert (=> (and bs!23983 (= (content!17 (left!1138 s!891)) (content!17 (left!1138 (right!1141 s!891)))) (= (elem!209 s!891) (elem!209 (right!1141 s!891)))) (= true true)))

(declare-fun bs!23984 () Bool)

(assert (= bs!23984 (and neg-inst!162 neg-inst!158)))

(assert (=> (and bs!23984 (= (content!17 (left!1138 s!891)) (content!17 (left!1138 (left!1138 s!891)))) (= (elem!209 s!891) (elem!209 (left!1138 s!891)))) (= true true)))

(declare-fun bs!23985 () Bool)

(assert (= bs!23985 (and neg-inst!162 b!54024)))

(assert (=> (and bs!23985 (= (content!17 (left!1138 s!891)) (content!17 (left!1138 (right!1141 s!891)))) (= (elem!209 s!891) (elem!209 (right!1141 s!891)))) (= true inst!172)))

(declare-fun bs!23986 () Bool)

(assert (= bs!23986 (and neg-inst!162 b!54022)))

(assert (=> (and bs!23986 (= (content!17 (left!1138 s!891)) (content!17 (left!1138 (left!1138 s!891)))) (= (elem!209 s!891) (elem!209 (left!1138 s!891)))) (= true inst!170)))

(declare-fun bs!23987 () Bool)

(declare-fun neg-inst!163 () Bool)

(assert (= bs!23987 neg-inst!163))

(assert (=> bs!23987 m!57742))

(declare-fun bs!23988 () Bool)

(declare-fun s!912 () Bool)

(assert (= bs!23988 (and neg-inst!163 s!912)))

(assert (=> bs!23988 (=> true (or (not (member x!21443 (content!17 (right!1141 s!891)))) (bvslt (elem!209 s!891) x!21443)))))

(assert (=> m!57744 s!912))

(declare-fun bs!23989 () Bool)

(assert (= bs!23989 (and neg-inst!163 neg-inst!159)))

(assert (=> (and bs!23989 (= (content!17 (right!1141 s!891)) (content!17 (right!1141 (left!1138 s!891)))) (= (elem!209 s!891) (elem!209 (left!1138 s!891)))) (= true true)))

(declare-fun bs!23990 () Bool)

(assert (= bs!23990 (and neg-inst!163 b!54023)))

(assert (=> (and bs!23990 (= (content!17 (right!1141 s!891)) (content!17 (right!1141 (left!1138 s!891)))) (= (elem!209 s!891) (elem!209 (left!1138 s!891)))) (= true inst!171)))

(declare-fun bs!23991 () Bool)

(assert (= bs!23991 (and neg-inst!163 b!54027)))

(assert (=> bs!23991 (= true inst!175)))

(declare-fun bs!23992 () Bool)

(assert (= bs!23992 (and neg-inst!163 b!54025)))

(assert (=> (and bs!23992 (= (content!17 (right!1141 s!891)) (content!17 (right!1141 (right!1141 s!891)))) (= (elem!209 s!891) (elem!209 (right!1141 s!891)))) (= true inst!173)))

(declare-fun bs!23993 () Bool)

(assert (= bs!23993 (and neg-inst!163 neg-inst!161)))

(assert (=> (and bs!23993 (= (content!17 (right!1141 s!891)) (content!17 (right!1141 (right!1141 s!891)))) (= (elem!209 s!891) (elem!209 (right!1141 s!891)))) (= true true)))

(declare-fun d!44815 () Bool)

(declare-fun res!24741 () Bool)

(declare-fun e!28209 () Bool)

(assert (=> d!44815 (=> res!24741 e!28209)))

(assert (=> d!44815 (= res!24741 (not (is-Node!109 s!891)))))

(assert (=> d!44815 (= (inv!977 s!891) e!28209)))

(declare-fun e!28208 () Bool)

(assert (=> b!54026 (= e!28209 e!28208)))

(declare-fun res!24742 () Bool)

(assert (=> b!54026 (=> (not res!24742) (not e!28208))))

(assert (=> b!54026 (= res!24742 inst!174)))

(assert (=> b!54027 (= e!28208 inst!175)))

(assert (= (and d!44815 (not res!24741)) b!54026))

(assert (= neg-inst!162 inst!174))

(assert (= (and b!54026 res!24742) b!54027))

(assert (= neg-inst!163 inst!175))

(assert (=> start!7540 d!44815))

(declare-fun d!44817 () Bool)

(declare-fun lt!9508 () Bool)

(assert (=> d!44817 (= lt!9508 (member x!21377 (content!17 (incl!2 s!891 x!21377))))))

(declare-fun e!28214 () Bool)

(assert (=> d!44817 (= lt!9508 e!28214)))

(declare-fun res!24752 () Bool)

(assert (=> d!44817 (=> (not res!24752) (not e!28214))))

(assert (=> d!44817 (= res!24752 (not (is-Empty!148 (incl!2 s!891 x!21377))))))

(assert (=> d!44817 (= (contains!11 (incl!2 s!891 x!21377) x!21377) lt!9508)))

(declare-fun lt!9510 () Bool)

(declare-fun lt!9509 () Bool)

(declare-fun b!54034 () Bool)

(assert (=> b!54034 (= e!28214 (ite lt!9510 lt!9509 (or (not (bvsgt x!21377 (elem!209 (incl!2 s!891 x!21377)))) lt!9509)))))

(declare-fun e!28215 () Bool)

(assert (=> b!54034 (= lt!9509 e!28215)))

(declare-fun c!11755 () Bool)

(assert (=> b!54034 (= c!11755 (or lt!9510 (bvsgt x!21377 (elem!209 (incl!2 s!891 x!21377)))))))

(assert (=> b!54034 (= lt!9510 (bvslt x!21377 (elem!209 (incl!2 s!891 x!21377))))))

(declare-fun b!54036 () Bool)

(declare-fun res!24751 () Bool)

(assert (=> b!54036 (= e!28215 res!24751)))

(assert (=> b!54036 true))

(assert (=> b!54036 true))

(declare-fun b!54035 () Bool)

(assert (=> b!54035 (= e!28215 (contains!11 (ite lt!9510 (left!1138 (incl!2 s!891 x!21377)) (right!1141 (incl!2 s!891 x!21377))) x!21377))))

(assert (= (and d!44817 res!24752) b!54034))

(assert (= (and b!54034 c!11755) b!54035))

(assert (= (and b!54034 (not c!11755)) b!54036))

(assert (=> d!44817 m!57714))

(declare-fun m!57746 () Bool)

(assert (=> d!44817 m!57746))

(declare-fun m!57748 () Bool)

(assert (=> d!44817 m!57748))

(declare-fun m!57750 () Bool)

(assert (=> b!54035 m!57750))

(assert (=> b!54016 d!44817))

(declare-fun d!44819 () Bool)

(declare-fun lt!9518 () IntSet!23)

(assert (=> d!44819 (= (content!17 lt!9518) (union (content!17 s!891) (insert x!21377 (as emptyset (Set (_ BitVec 32))))))))

(declare-fun e!28224 () IntSet!23)

(assert (=> d!44819 (= lt!9518 e!28224)))

(declare-fun c!11760 () Bool)

(assert (=> d!44819 (= c!11760 (is-Empty!148 s!891))))

(assert (=> d!44819 (= (incl!2 s!891 x!21377) lt!9518)))

(declare-fun b!54047 () Bool)

(assert (=> b!54047 (= e!28224 (Node!109 Empty!148 x!21377 Empty!148))))

(declare-fun b!54048 () Bool)

(declare-fun e!28222 () IntSet!23)

(declare-fun res!24759 () IntSet!23)

(assert (=> b!54048 (= e!28222 res!24759)))

(assert (=> b!54048 true))

(declare-fun e!28223 () Bool)

(assert (=> b!54048 (and (inv!977 res!24759) e!28223)))

(declare-fun b!54049 () Bool)

(declare-fun tp!15154 () Bool)

(declare-fun tp!15153 () Bool)

(assert (=> b!54049 (= e!28223 (and (inv!977 (left!1138 res!24759)) tp!15153 (inv!977 (right!1141 res!24759)) tp!15154))))

(declare-fun lt!9519 () Bool)

(declare-fun b!54050 () Bool)

(declare-fun lt!9517 () IntSet!23)

(assert (=> b!54050 (= e!28224 (ite lt!9519 (Node!109 lt!9517 (elem!209 s!891) (right!1141 s!891)) (ite (bvsgt x!21377 (elem!209 s!891)) (Node!109 (left!1138 s!891) (elem!209 s!891) lt!9517) s!891)))))

(assert (=> b!54050 (= lt!9517 e!28222)))

(declare-fun c!11761 () Bool)

(assert (=> b!54050 (= c!11761 (or lt!9519 (bvsgt x!21377 (elem!209 s!891))))))

(assert (=> b!54050 (= lt!9519 (bvslt x!21377 (elem!209 s!891)))))

(declare-fun b!54051 () Bool)

(assert (=> b!54051 (= e!28222 (incl!2 (ite lt!9519 (left!1138 s!891) (right!1141 s!891)) x!21377))))

(assert (= (and b!54048 (is-Node!109 res!24759)) b!54049))

(assert (= (and b!54050 c!11761) b!54051))

(assert (= (and b!54050 (not c!11761)) b!54048))

(assert (= (and d!44819 c!11760) b!54047))

(assert (= (and d!44819 (not c!11760)) b!54050))

(declare-fun m!57752 () Bool)

(assert (=> d!44819 m!57752))

(declare-fun m!57754 () Bool)

(assert (=> d!44819 m!57754))

(declare-fun m!57756 () Bool)

(assert (=> d!44819 m!57756))

(declare-fun m!57758 () Bool)

(assert (=> b!54048 m!57758))

(declare-fun m!57760 () Bool)

(assert (=> b!54049 m!57760))

(declare-fun m!57762 () Bool)

(assert (=> b!54049 m!57762))

(declare-fun m!57764 () Bool)

(assert (=> b!54051 m!57764))

(assert (=> b!54016 d!44819))

(declare-fun tp!15159 () Bool)

(declare-fun tp!15160 () Bool)

(declare-fun b!54056 () Bool)

(declare-fun e!28227 () Bool)

(assert (=> b!54056 (= e!28227 (and (inv!977 (left!1138 (left!1138 s!891))) tp!15159 (inv!977 (right!1141 (left!1138 s!891))) tp!15160))))

(assert (=> b!54017 (= tp!15147 (and (inv!977 (left!1138 s!891)) e!28227))))

(assert (= (and b!54017 (is-Node!109 (left!1138 s!891))) b!54056))

(declare-fun m!57766 () Bool)

(assert (=> b!54056 m!57766))

(declare-fun m!57768 () Bool)

(assert (=> b!54056 m!57768))

(assert (=> b!54017 m!57718))

(declare-fun tp!15161 () Bool)

(declare-fun tp!15162 () Bool)

(declare-fun b!54057 () Bool)

(declare-fun e!28228 () Bool)

(assert (=> b!54057 (= e!28228 (and (inv!977 (left!1138 (right!1141 s!891))) tp!15161 (inv!977 (right!1141 (right!1141 s!891))) tp!15162))))

(assert (=> b!54017 (= tp!15148 (and (inv!977 (right!1141 s!891)) e!28228))))

(assert (= (and b!54017 (is-Node!109 (right!1141 s!891))) b!54057))

(declare-fun m!57770 () Bool)

(assert (=> b!54057 m!57770))

(declare-fun m!57772 () Bool)

(assert (=> b!54057 m!57772))

(assert (=> b!54017 m!57720))

(push 1)

(assert (not b!54024))

(assert (not b!54017))

(assert (not neg-inst!159))

(assert (not b!54023))

(assert (not b!54049))

(assert (not b!54022))

(assert (not b!54026))

(assert (not neg-inst!161))

(assert (not d!44817))

(assert (not b!54056))

(assert (not neg-inst!163))

(assert (not b!54051))

(assert (not b!54048))

(assert (not b!54057))

(assert (not neg-inst!160))

(assert (not neg-inst!162))

(assert (not neg-inst!158))

(assert (not b!54035))

(assert (not b!54027))

(assert (not b!54025))

(assert (not d!44819))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

