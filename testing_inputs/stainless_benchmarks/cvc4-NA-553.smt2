; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4130 () Bool)

(assert start!4130)

(declare-fun b!32965 () Bool)

(declare-fun res!15208 () Bool)

(declare-fun e!16698 () Bool)

(assert (=> b!32965 (=> (not res!15208) (not e!16698))))

(declare-fun i!263 () Int)

(declare-datatypes () ((T!1861 (T!1862 (val!103 Int)))))

(declare-datatypes () ((Conc!80 (CC!79 (left!724 Conc!80) (right!727 Conc!80)) (Single!79 (x!9002 T!1861)) (Empty!90))))

(declare-fun xs!586 () Conc!80)

(declare-fun size!292 (Conc!80) Int)

(assert (=> b!32965 (= res!15208 (< i!263 (size!292 xs!586)))))

(declare-fun b!32966 () Bool)

(declare-fun e!16699 () Bool)

(assert (=> b!32966 (= e!16698 e!16699)))

(declare-fun res!15217 () Bool)

(assert (=> b!32966 (=> res!15217 e!16699)))

(declare-fun y!785 () T!1861)

(declare-fun instAppendUpdateAxiom!6 (Conc!80 Int T!1861) Bool)

(assert (=> b!32966 (= res!15217 (not (instAppendUpdateAxiom!6 xs!586 i!263 y!785)))))

(declare-fun b!32967 () Bool)

(declare-fun res!15215 () Bool)

(assert (=> b!32967 (=> res!15215 e!16699)))

(declare-fun res!5575 () Conc!80)

(declare-fun balanced!73 (Conc!80) Bool)

(assert (=> b!32967 (= res!15215 (not (balanced!73 res!5575)))))

(declare-fun res!15210 () Bool)

(assert (=> start!4130 (=> (not res!15210) (not e!16698))))

(declare-fun concInv!72 (Conc!80) Bool)

(assert (=> start!4130 (= res!15210 (concInv!72 xs!586))))

(assert (=> start!4130 e!16698))

(declare-fun e!16700 () Bool)

(assert (=> start!4130 e!16700))

(assert (=> start!4130 true))

(declare-fun e!16697 () Bool)

(assert (=> start!4130 e!16697))

(declare-fun tp_is_empty!205 () Bool)

(assert (=> start!4130 tp_is_empty!205))

(declare-fun b!32968 () Bool)

(declare-fun tp!6844 () Bool)

(declare-fun tp!6845 () Bool)

(assert (=> b!32968 (= e!16697 (and tp!6844 tp!6845))))

(declare-fun b!32969 () Bool)

(declare-fun res!15209 () Bool)

(assert (=> b!32969 (=> (not res!15209) (not e!16698))))

(declare-fun isEmpty!334 (Conc!80) Bool)

(assert (=> b!32969 (= res!15209 (not (isEmpty!334 xs!586)))))

(declare-fun b!32970 () Bool)

(declare-fun res!15211 () Bool)

(assert (=> b!32970 (=> (not res!15211) (not e!16698))))

(assert (=> b!32970 (= res!15211 (>= i!263 0))))

(declare-fun b!32971 () Bool)

(declare-datatypes () ((List!370 (Cons!364 (h!281 T!1861) (t!4384 List!370)) (Nil!365))))

(declare-fun toList!125 (Conc!80) List!370)

(declare-fun updated!8 (List!370 Int T!1861) List!370)

(assert (=> b!32971 (= e!16699 (not (= (toList!125 res!5575) (updated!8 (toList!125 xs!586) i!263 y!785))))))

(declare-fun b!32972 () Bool)

(declare-fun res!15213 () Bool)

(assert (=> b!32972 (=> (not res!15213) (not e!16698))))

(assert (=> b!32972 (= res!15213 (and (is-Single!79 xs!586) (= res!5575 (Single!79 y!785))))))

(declare-fun b!32973 () Bool)

(declare-fun res!15214 () Bool)

(assert (=> b!32973 (=> res!15214 e!16699)))

(declare-fun level!63 (Conc!80) Int)

(assert (=> b!32973 (= res!15214 (not (= (level!63 res!5575) (level!63 xs!586))))))

(declare-fun b!32974 () Bool)

(assert (=> b!32974 (= e!16700 tp_is_empty!205)))

(declare-fun b!32975 () Bool)

(declare-fun tp!6843 () Bool)

(declare-fun tp!6842 () Bool)

(assert (=> b!32975 (= e!16700 (and tp!6843 tp!6842))))

(declare-fun b!32976 () Bool)

(assert (=> b!32976 (= e!16697 tp_is_empty!205)))

(declare-fun b!32977 () Bool)

(declare-fun res!15216 () Bool)

(assert (=> b!32977 (=> (not res!15216) (not e!16698))))

(assert (=> b!32977 (= res!15216 (balanced!73 xs!586))))

(declare-fun b!32978 () Bool)

(declare-fun res!15212 () Bool)

(assert (=> b!32978 (=> res!15212 e!16699)))

(assert (=> b!32978 (= res!15212 (not (concInv!72 res!5575)))))

(assert (= (and start!4130 res!15210) b!32977))

(assert (= (and b!32977 res!15216) b!32969))

(assert (= (and b!32969 res!15209) b!32970))

(assert (= (and b!32970 res!15211) b!32965))

(assert (= (and b!32965 res!15208) b!32972))

(assert (= (and b!32972 res!15213) b!32966))

(assert (= (and b!32966 (not res!15217)) b!32973))

(assert (= (and b!32973 (not res!15214)) b!32978))

(assert (= (and b!32978 (not res!15212)) b!32967))

(assert (= (and b!32967 (not res!15215)) b!32971))

(assert (= (and start!4130 (is-CC!79 xs!586)) b!32975))

(assert (= (and start!4130 (is-Single!79 xs!586)) b!32974))

(assert (= (and start!4130 (is-CC!79 res!5575)) b!32968))

(assert (= (and start!4130 (is-Single!79 res!5575)) b!32976))

(declare-fun m!35309 () Bool)

(assert (=> b!32973 m!35309))

(declare-fun m!35311 () Bool)

(assert (=> b!32973 m!35311))

(declare-fun m!35313 () Bool)

(assert (=> b!32971 m!35313))

(declare-fun m!35315 () Bool)

(assert (=> b!32971 m!35315))

(assert (=> b!32971 m!35315))

(declare-fun m!35317 () Bool)

(assert (=> b!32971 m!35317))

(declare-fun m!35319 () Bool)

(assert (=> b!32977 m!35319))

(declare-fun m!35321 () Bool)

(assert (=> start!4130 m!35321))

(declare-fun m!35323 () Bool)

(assert (=> b!32978 m!35323))

(declare-fun m!35325 () Bool)

(assert (=> b!32966 m!35325))

(declare-fun m!35327 () Bool)

(assert (=> b!32967 m!35327))

(declare-fun m!35329 () Bool)

(assert (=> b!32969 m!35329))

(declare-fun m!35331 () Bool)

(assert (=> b!32965 m!35331))

(push 1)

(assert (not b!32966))

(assert (not b!32977))

(assert (not b!32975))

(assert (not b!32965))

(assert (not b!32973))

(assert (not b!32968))

(assert (not start!4130))

(assert (not b!32969))

(assert (not b!32971))

(assert (not b!32978))

(assert tp_is_empty!205)

(assert (not b!32967))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!32984 () Bool)

(declare-fun e!16703 () Int)

(declare-fun lt!6225 () Int)

(declare-fun lt!6224 () Int)

(assert (=> b!32984 (= e!16703 (+ 1 (ite (>= lt!6225 lt!6224) lt!6225 lt!6224)))))

(assert (=> b!32984 (= lt!6224 (level!63 (right!727 res!5575)))))

(assert (=> b!32984 (= lt!6225 (level!63 (left!724 res!5575)))))

(declare-fun d!16681 () Bool)

(declare-fun lt!6226 () Int)

(assert (=> d!16681 (>= lt!6226 0)))

(assert (=> d!16681 (= lt!6226 e!16703)))

(declare-fun c!7095 () Bool)

(assert (=> d!16681 (= c!7095 (or (is-Empty!90 res!5575) (is-Single!79 res!5575)))))

(assert (=> d!16681 (= (level!63 res!5575) lt!6226)))

(declare-fun b!32983 () Bool)

(assert (=> b!32983 (= e!16703 0)))

(assert (= (and d!16681 c!7095) b!32983))

(assert (= (and d!16681 (not c!7095)) b!32984))

(declare-fun m!35333 () Bool)

(assert (=> b!32984 m!35333))

(declare-fun m!35335 () Bool)

(assert (=> b!32984 m!35335))

(assert (=> b!32973 d!16681))

(declare-fun b!32986 () Bool)

(declare-fun e!16704 () Int)

(declare-fun lt!6228 () Int)

(declare-fun lt!6227 () Int)

(assert (=> b!32986 (= e!16704 (+ 1 (ite (>= lt!6228 lt!6227) lt!6228 lt!6227)))))

(assert (=> b!32986 (= lt!6227 (level!63 (right!727 xs!586)))))

(assert (=> b!32986 (= lt!6228 (level!63 (left!724 xs!586)))))

(declare-fun d!16683 () Bool)

(declare-fun lt!6229 () Int)

(assert (=> d!16683 (>= lt!6229 0)))

(assert (=> d!16683 (= lt!6229 e!16704)))

(declare-fun c!7096 () Bool)

(assert (=> d!16683 (= c!7096 (or (is-Empty!90 xs!586) (is-Single!79 xs!586)))))

(assert (=> d!16683 (= (level!63 xs!586) lt!6229)))

(declare-fun b!32985 () Bool)

(assert (=> b!32985 (= e!16704 0)))

(assert (= (and d!16683 c!7096) b!32985))

(assert (= (and d!16683 (not c!7096)) b!32986))

(declare-fun m!35337 () Bool)

(assert (=> b!32986 m!35337))

(declare-fun m!35339 () Bool)

(assert (=> b!32986 m!35339))

(assert (=> b!32973 d!16683))

(declare-fun d!16685 () Bool)

(declare-fun res!15229 () Bool)

(declare-fun e!16710 () Bool)

(assert (=> d!16685 (=> res!15229 e!16710)))

(assert (=> d!16685 (= res!15229 (not (is-CC!79 res!5575)))))

(assert (=> d!16685 (= (balanced!73 res!5575) e!16710)))

(declare-fun b!32996 () Bool)

(declare-fun res!15226 () Bool)

(declare-fun e!16709 () Bool)

(assert (=> b!32996 (=> (not res!15226) (not e!16709))))

(assert (=> b!32996 (= res!15226 (<= (- (level!63 (left!724 res!5575)) (level!63 (right!727 res!5575))) 1))))

(declare-fun b!32998 () Bool)

(assert (=> b!32998 (= e!16709 (balanced!73 (right!727 res!5575)))))

(declare-fun b!32997 () Bool)

(declare-fun res!15228 () Bool)

(assert (=> b!32997 (=> (not res!15228) (not e!16709))))

(assert (=> b!32997 (= res!15228 (balanced!73 (left!724 res!5575)))))

(declare-fun b!32995 () Bool)

(assert (=> b!32995 (= e!16710 e!16709)))

(declare-fun res!15227 () Bool)

(assert (=> b!32995 (=> (not res!15227) (not e!16709))))

(assert (=> b!32995 (= res!15227 (>= (- (level!63 (left!724 res!5575)) (level!63 (right!727 res!5575))) (- 1)))))

(assert (= (and d!16685 (not res!15229)) b!32995))

(assert (= (and b!32995 res!15227) b!32996))

(assert (= (and b!32996 res!15226) b!32997))

(assert (= (and b!32997 res!15228) b!32998))

(assert (=> b!32996 m!35335))

(assert (=> b!32996 m!35333))

(declare-fun m!35341 () Bool)

(assert (=> b!32998 m!35341))

(declare-fun m!35343 () Bool)

(assert (=> b!32997 m!35343))

(assert (=> b!32995 m!35335))

(assert (=> b!32995 m!35333))

(assert (=> b!32967 d!16685))

(declare-fun b!33008 () Bool)

(declare-fun e!16716 () Int)

(declare-fun e!16715 () Int)

(assert (=> b!33008 (= e!16716 e!16715)))

(declare-fun c!7102 () Bool)

(assert (=> b!33008 (= c!7102 (is-Single!79 xs!586))))

(declare-fun d!16687 () Bool)

(declare-fun lt!6232 () Int)

(assert (=> d!16687 (>= lt!6232 0)))

(assert (=> d!16687 (= lt!6232 e!16716)))

(declare-fun c!7101 () Bool)

(assert (=> d!16687 (= c!7101 (is-Empty!90 xs!586))))

(assert (=> d!16687 (= (size!292 xs!586) lt!6232)))

(declare-fun b!33010 () Bool)

(assert (=> b!33010 (= e!16715 (+ (size!292 (left!724 xs!586)) (size!292 (right!727 xs!586))))))

(declare-fun b!33007 () Bool)

(assert (=> b!33007 (= e!16716 0)))

(declare-fun b!33009 () Bool)

(assert (=> b!33009 (= e!16715 1)))

(assert (= (and b!33008 c!7102) b!33009))

(assert (= (and b!33008 (not c!7102)) b!33010))

(assert (= (and d!16687 c!7101) b!33007))

(assert (= (and d!16687 (not c!7101)) b!33008))

(declare-fun m!35345 () Bool)

(assert (=> b!33010 m!35345))

(declare-fun m!35347 () Bool)

(assert (=> b!33010 m!35347))

(assert (=> b!32965 d!16687))

(declare-fun d!16689 () Bool)

(declare-fun res!15240 () Bool)

(declare-fun e!16721 () Bool)

(assert (=> d!16689 (=> res!15240 e!16721)))

(assert (=> d!16689 (= res!15240 (not (is-CC!79 xs!586)))))

(assert (=> d!16689 (= (concInv!72 xs!586) e!16721)))

(declare-fun b!33020 () Bool)

(declare-fun res!15241 () Bool)

(declare-fun e!16722 () Bool)

(assert (=> b!33020 (=> (not res!15241) (not e!16722))))

(assert (=> b!33020 (= res!15241 (not (isEmpty!334 (right!727 xs!586))))))

(declare-fun b!33021 () Bool)

(declare-fun res!15238 () Bool)

(assert (=> b!33021 (=> (not res!15238) (not e!16722))))

(assert (=> b!33021 (= res!15238 (concInv!72 (left!724 xs!586)))))

(declare-fun b!33022 () Bool)

(assert (=> b!33022 (= e!16722 (concInv!72 (right!727 xs!586)))))

(declare-fun b!33019 () Bool)

(assert (=> b!33019 (= e!16721 e!16722)))

(declare-fun res!15239 () Bool)

(assert (=> b!33019 (=> (not res!15239) (not e!16722))))

(assert (=> b!33019 (= res!15239 (not (isEmpty!334 (left!724 xs!586))))))

(assert (= (and d!16689 (not res!15240)) b!33019))

(assert (= (and b!33019 res!15239) b!33020))

(assert (= (and b!33020 res!15241) b!33021))

(assert (= (and b!33021 res!15238) b!33022))

(declare-fun m!35349 () Bool)

(assert (=> b!33020 m!35349))

(declare-fun m!35351 () Bool)

(assert (=> b!33021 m!35351))

(declare-fun m!35353 () Bool)

(assert (=> b!33022 m!35353))

(declare-fun m!35355 () Bool)

(assert (=> b!33019 m!35355))

(assert (=> start!4130 d!16689))

(declare-fun b!33032 () Bool)

(declare-fun e!16727 () List!370)

(declare-fun e!16728 () List!370)

(assert (=> b!33032 (= e!16727 e!16728)))

(declare-fun c!7107 () Bool)

(assert (=> b!33032 (= c!7107 (is-Single!79 res!5575))))

(declare-fun b!33033 () Bool)

(assert (=> b!33033 (= e!16728 (Cons!364 (x!9002 res!5575) Nil!365))))

(declare-fun d!16691 () Bool)

(declare-fun lt!6235 () List!370)

(declare-fun size!293 (List!370) Int)

(assert (=> d!16691 (= (size!293 lt!6235) (size!292 res!5575))))

(assert (=> d!16691 (= lt!6235 e!16727)))

(declare-fun c!7108 () Bool)

(assert (=> d!16691 (= c!7108 (is-Empty!90 res!5575))))

(assert (=> d!16691 (= (toList!125 res!5575) lt!6235)))

(declare-fun b!33031 () Bool)

(assert (=> b!33031 (= e!16727 Nil!365)))

(declare-fun b!33034 () Bool)

(declare-fun ++!50 (List!370 List!370) List!370)

(assert (=> b!33034 (= e!16728 (++!50 (toList!125 (left!724 res!5575)) (toList!125 (right!727 res!5575))))))

(assert (= (and b!33032 c!7107) b!33033))

(assert (= (and b!33032 (not c!7107)) b!33034))

(assert (= (and d!16691 c!7108) b!33031))

(assert (= (and d!16691 (not c!7108)) b!33032))

(declare-fun m!35357 () Bool)

(assert (=> d!16691 m!35357))

(declare-fun m!35359 () Bool)

(assert (=> d!16691 m!35359))

(declare-fun m!35361 () Bool)

(assert (=> b!33034 m!35361))

(declare-fun m!35363 () Bool)

(assert (=> b!33034 m!35363))

(assert (=> b!33034 m!35361))

(assert (=> b!33034 m!35363))

(declare-fun m!35365 () Bool)

(assert (=> b!33034 m!35365))

(assert (=> b!32971 d!16691))

(declare-fun d!16693 () Bool)

(declare-fun c!7111 () Bool)

(assert (=> d!16693 (= c!7111 (and (is-Cons!364 (toList!125 xs!586)) (= i!263 0)))))

(declare-fun e!16731 () List!370)

(assert (=> d!16693 (= (updated!8 (toList!125 xs!586) i!263 y!785) e!16731)))

(declare-fun b!33039 () Bool)

(assert (=> b!33039 (= e!16731 (Cons!364 y!785 (t!4384 (toList!125 xs!586))))))

(declare-fun b!33040 () Bool)

(assert (=> b!33040 (= e!16731 (Cons!364 (h!281 (toList!125 xs!586)) (updated!8 (t!4384 (toList!125 xs!586)) (- i!263 1) y!785)))))

(assert (= (and d!16693 c!7111) b!33039))

(assert (= (and d!16693 (not c!7111)) b!33040))

(declare-fun m!35367 () Bool)

(assert (=> b!33040 m!35367))

(assert (=> b!32971 d!16693))

(declare-fun b!33042 () Bool)

(declare-fun e!16732 () List!370)

(declare-fun e!16733 () List!370)

(assert (=> b!33042 (= e!16732 e!16733)))

(declare-fun c!7112 () Bool)

(assert (=> b!33042 (= c!7112 (is-Single!79 xs!586))))

(declare-fun b!33043 () Bool)

(assert (=> b!33043 (= e!16733 (Cons!364 (x!9002 xs!586) Nil!365))))

(declare-fun d!16695 () Bool)

(declare-fun lt!6236 () List!370)

(assert (=> d!16695 (= (size!293 lt!6236) (size!292 xs!586))))

(assert (=> d!16695 (= lt!6236 e!16732)))

(declare-fun c!7113 () Bool)

(assert (=> d!16695 (= c!7113 (is-Empty!90 xs!586))))

(assert (=> d!16695 (= (toList!125 xs!586) lt!6236)))

(declare-fun b!33041 () Bool)

(assert (=> b!33041 (= e!16732 Nil!365)))

(declare-fun b!33044 () Bool)

(assert (=> b!33044 (= e!16733 (++!50 (toList!125 (left!724 xs!586)) (toList!125 (right!727 xs!586))))))

(assert (= (and b!33042 c!7112) b!33043))

(assert (= (and b!33042 (not c!7112)) b!33044))

(assert (= (and d!16695 c!7113) b!33041))

(assert (= (and d!16695 (not c!7113)) b!33042))

(declare-fun m!35369 () Bool)

(assert (=> d!16695 m!35369))

(assert (=> d!16695 m!35331))

(declare-fun m!35371 () Bool)

(assert (=> b!33044 m!35371))

(declare-fun m!35373 () Bool)

(assert (=> b!33044 m!35373))

(assert (=> b!33044 m!35371))

(assert (=> b!33044 m!35373))

(declare-fun m!35375 () Bool)

(assert (=> b!33044 m!35375))

(assert (=> b!32971 d!16695))

(declare-fun d!16697 () Bool)

(declare-fun e!16739 () Bool)

(assert (=> d!16697 e!16739))

(declare-fun res!15248 () Bool)

(assert (=> d!16697 (=> res!15248 e!16739)))

(assert (=> d!16697 (= res!15248 (not (is-CC!79 xs!586)))))

(declare-fun e!16738 () Bool)

(assert (=> d!16697 e!16738))

(declare-fun res!15247 () Bool)

(assert (=> d!16697 (=> (not res!15247) (not e!16738))))

(assert (=> d!16697 (= res!15247 (>= i!263 0))))

(assert (=> d!16697 (= (instAppendUpdateAxiom!6 xs!586 i!263 y!785) true)))

(declare-fun b!33049 () Bool)

(assert (=> b!33049 (= e!16738 (< i!263 (size!292 xs!586)))))

(declare-fun b!33050 () Bool)

(declare-fun appendUpdate!5 (List!370 List!370 Int T!1861) Bool)

(assert (=> b!33050 (= e!16739 (appendUpdate!5 (toList!125 (left!724 xs!586)) (toList!125 (right!727 xs!586)) i!263 y!785))))

(assert (= (and d!16697 res!15247) b!33049))

(assert (= (and d!16697 (not res!15248)) b!33050))

(assert (=> b!33049 m!35331))

(assert (=> b!33050 m!35371))

(assert (=> b!33050 m!35373))

(assert (=> b!33050 m!35371))

(assert (=> b!33050 m!35373))

(declare-fun m!35377 () Bool)

(assert (=> b!33050 m!35377))

(assert (=> b!32966 d!16697))

(declare-fun d!16699 () Bool)

(declare-fun res!15251 () Bool)

(declare-fun e!16740 () Bool)

(assert (=> d!16699 (=> res!15251 e!16740)))

(assert (=> d!16699 (= res!15251 (not (is-CC!79 res!5575)))))

(assert (=> d!16699 (= (concInv!72 res!5575) e!16740)))

(declare-fun b!33052 () Bool)

(declare-fun res!15252 () Bool)

(declare-fun e!16741 () Bool)

(assert (=> b!33052 (=> (not res!15252) (not e!16741))))

(assert (=> b!33052 (= res!15252 (not (isEmpty!334 (right!727 res!5575))))))

(declare-fun b!33053 () Bool)

(declare-fun res!15249 () Bool)

(assert (=> b!33053 (=> (not res!15249) (not e!16741))))

(assert (=> b!33053 (= res!15249 (concInv!72 (left!724 res!5575)))))

(declare-fun b!33054 () Bool)

(assert (=> b!33054 (= e!16741 (concInv!72 (right!727 res!5575)))))

(declare-fun b!33051 () Bool)

(assert (=> b!33051 (= e!16740 e!16741)))

(declare-fun res!15250 () Bool)

(assert (=> b!33051 (=> (not res!15250) (not e!16741))))

(assert (=> b!33051 (= res!15250 (not (isEmpty!334 (left!724 res!5575))))))

(assert (= (and d!16699 (not res!15251)) b!33051))

(assert (= (and b!33051 res!15250) b!33052))

(assert (= (and b!33052 res!15252) b!33053))

(assert (= (and b!33053 res!15249) b!33054))

(declare-fun m!35379 () Bool)

(assert (=> b!33052 m!35379))

(declare-fun m!35381 () Bool)

(assert (=> b!33053 m!35381))

(declare-fun m!35383 () Bool)

(assert (=> b!33054 m!35383))

(declare-fun m!35385 () Bool)

(assert (=> b!33051 m!35385))

(assert (=> b!32978 d!16699))

(declare-fun d!16701 () Bool)

(assert (=> d!16701 (= (isEmpty!334 xs!586) (= xs!586 Empty!90))))

(assert (=> b!32969 d!16701))

(declare-fun d!16703 () Bool)

(declare-fun res!15256 () Bool)

(declare-fun e!16743 () Bool)

(assert (=> d!16703 (=> res!15256 e!16743)))

(assert (=> d!16703 (= res!15256 (not (is-CC!79 xs!586)))))

(assert (=> d!16703 (= (balanced!73 xs!586) e!16743)))

(declare-fun b!33056 () Bool)

(declare-fun res!15253 () Bool)

(declare-fun e!16742 () Bool)

(assert (=> b!33056 (=> (not res!15253) (not e!16742))))

(assert (=> b!33056 (= res!15253 (<= (- (level!63 (left!724 xs!586)) (level!63 (right!727 xs!586))) 1))))

(declare-fun b!33058 () Bool)

(assert (=> b!33058 (= e!16742 (balanced!73 (right!727 xs!586)))))

(declare-fun b!33057 () Bool)

(declare-fun res!15255 () Bool)

(assert (=> b!33057 (=> (not res!15255) (not e!16742))))

(assert (=> b!33057 (= res!15255 (balanced!73 (left!724 xs!586)))))

(declare-fun b!33055 () Bool)

(assert (=> b!33055 (= e!16743 e!16742)))

(declare-fun res!15254 () Bool)

(assert (=> b!33055 (=> (not res!15254) (not e!16742))))

(assert (=> b!33055 (= res!15254 (>= (- (level!63 (left!724 xs!586)) (level!63 (right!727 xs!586))) (- 1)))))

(assert (= (and d!16703 (not res!15256)) b!33055))

(assert (= (and b!33055 res!15254) b!33056))

(assert (= (and b!33056 res!15253) b!33057))

(assert (= (and b!33057 res!15255) b!33058))

(assert (=> b!33056 m!35339))

(assert (=> b!33056 m!35337))

(declare-fun m!35387 () Bool)

(assert (=> b!33058 m!35387))

(declare-fun m!35389 () Bool)

(assert (=> b!33057 m!35389))

(assert (=> b!33055 m!35339))

(assert (=> b!33055 m!35337))

(assert (=> b!32977 d!16703))

(declare-fun b!33065 () Bool)

(declare-fun e!16746 () Bool)

(declare-fun tp!6850 () Bool)

(declare-fun tp!6851 () Bool)

(assert (=> b!33065 (= e!16746 (and tp!6850 tp!6851))))

(declare-fun b!33066 () Bool)

(assert (=> b!33066 (= e!16746 tp_is_empty!205)))

(assert (=> b!32968 (= tp!6844 e!16746)))

(assert (= (and b!32968 (is-CC!79 (left!724 res!5575))) b!33065))

(assert (= (and b!32968 (is-Single!79 (left!724 res!5575))) b!33066))

(declare-fun b!33067 () Bool)

(declare-fun e!16747 () Bool)

(declare-fun tp!6852 () Bool)

(declare-fun tp!6853 () Bool)

(assert (=> b!33067 (= e!16747 (and tp!6852 tp!6853))))

(declare-fun b!33068 () Bool)

(assert (=> b!33068 (= e!16747 tp_is_empty!205)))

(assert (=> b!32968 (= tp!6845 e!16747)))

(assert (= (and b!32968 (is-CC!79 (right!727 res!5575))) b!33067))

(assert (= (and b!32968 (is-Single!79 (right!727 res!5575))) b!33068))

(declare-fun b!33069 () Bool)

(declare-fun e!16748 () Bool)

(declare-fun tp!6854 () Bool)

(declare-fun tp!6855 () Bool)

(assert (=> b!33069 (= e!16748 (and tp!6854 tp!6855))))

(declare-fun b!33070 () Bool)

(assert (=> b!33070 (= e!16748 tp_is_empty!205)))

(assert (=> b!32975 (= tp!6843 e!16748)))

(assert (= (and b!32975 (is-CC!79 (left!724 xs!586))) b!33069))

(assert (= (and b!32975 (is-Single!79 (left!724 xs!586))) b!33070))

(declare-fun b!33071 () Bool)

(declare-fun e!16749 () Bool)

(declare-fun tp!6856 () Bool)

(declare-fun tp!6857 () Bool)

(assert (=> b!33071 (= e!16749 (and tp!6856 tp!6857))))

(declare-fun b!33072 () Bool)

(assert (=> b!33072 (= e!16749 tp_is_empty!205)))

(assert (=> b!32975 (= tp!6842 e!16749)))

(assert (= (and b!32975 (is-CC!79 (right!727 xs!586))) b!33071))

(assert (= (and b!32975 (is-Single!79 (right!727 xs!586))) b!33072))

(push 1)

(assert (not b!32997))

(assert (not b!33044))

(assert (not b!33021))

(assert (not b!33071))

(assert (not b!33056))

(assert (not b!33065))

(assert (not b!33040))

(assert (not b!32995))

(assert (not b!33019))

(assert (not b!33022))

(assert (not d!16691))

(assert (not b!33058))

(assert (not b!33067))

(assert (not b!33049))

(assert (not b!33057))

(assert (not b!33052))

(assert (not b!32998))

(assert (not b!33050))

(assert (not b!33034))

(assert (not b!33055))

(assert (not b!33069))

(assert (not b!32984))

(assert (not b!33054))

(assert (not d!16695))

(assert (not b!33053))

(assert (not b!33010))

(assert (not b!33020))

(assert (not b!33051))

(assert (not b!32986))

(assert tp_is_empty!205)

(assert (not b!32996))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

