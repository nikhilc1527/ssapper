; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3938 () Bool)

(assert start!3938)

(declare-fun b!28964 () Bool)

(declare-fun e!14804 () Bool)

(declare-fun tp_is_empty!175 () Bool)

(assert (=> b!28964 (= e!14804 tp_is_empty!175)))

(declare-fun b!28965 () Bool)

(declare-fun res!13222 () Bool)

(declare-fun e!14805 () Bool)

(assert (=> b!28965 (=> (not res!13222) (not e!14805))))

(declare-fun diff!6 () Int)

(declare-datatypes () ((T!1831 (T!1832 (val!88 Int)))))

(declare-datatypes () ((Conc!65 (CC!64 (left!709 Conc!65) (right!712 Conc!65)) (Single!64 (x!8939 T!1831)) (Empty!75))))

(declare-fun ys!77 () Conc!65)

(declare-fun xs!533 () Conc!65)

(declare-fun level!53 (Conc!65) Int)

(assert (=> b!28965 (= res!13222 (= diff!6 (- (level!53 ys!77) (level!53 xs!533))))))

(declare-fun b!28966 () Bool)

(declare-fun res!13223 () Bool)

(assert (=> b!28966 (=> (not res!13223) (not e!14805))))

(declare-fun balanced!60 (Conc!65) Bool)

(assert (=> b!28966 (= res!13223 (balanced!60 ys!77))))

(declare-fun b!28967 () Bool)

(declare-fun res!13219 () Bool)

(assert (=> b!28967 (=> (not res!13219) (not e!14805))))

(assert (=> b!28967 (= res!13219 (balanced!60 xs!533))))

(declare-fun b!28968 () Bool)

(declare-fun e!14803 () Bool)

(assert (=> b!28968 (= e!14803 tp_is_empty!175)))

(declare-fun b!28969 () Bool)

(declare-fun res!13220 () Bool)

(assert (=> b!28969 (=> (not res!13220) (not e!14805))))

(declare-fun isEmpty!321 (Conc!65) Bool)

(assert (=> b!28969 (= res!13220 (not (isEmpty!321 ys!77)))))

(declare-fun b!28970 () Bool)

(declare-fun res!13225 () Bool)

(assert (=> b!28970 (=> (not res!13225) (not e!14805))))

(assert (=> b!28970 (= res!13225 (not (isEmpty!321 xs!533)))))

(declare-fun res!13221 () Bool)

(assert (=> start!3938 (=> (not res!13221) (not e!14805))))

(declare-fun concInv!59 (Conc!65) Bool)

(assert (=> start!3938 (= res!13221 (concInv!59 xs!533))))

(assert (=> start!3938 e!14805))

(assert (=> start!3938 e!14803))

(assert (=> start!3938 e!14804))

(assert (=> start!3938 true))

(declare-fun b!28971 () Bool)

(declare-fun tp!6155 () Bool)

(declare-fun tp!6157 () Bool)

(assert (=> b!28971 (= e!14804 (and tp!6155 tp!6157))))

(declare-fun b!28972 () Bool)

(declare-fun res!13224 () Bool)

(assert (=> b!28972 (=> (not res!13224) (not e!14805))))

(assert (=> b!28972 (= res!13224 (concInv!59 ys!77))))

(declare-fun b!28973 () Bool)

(declare-fun tp!6156 () Bool)

(declare-fun tp!6154 () Bool)

(assert (=> b!28973 (= e!14803 (and tp!6156 tp!6154))))

(declare-fun b!28974 () Bool)

(assert (=> b!28974 (= e!14805 (and (or (< diff!6 (- 1)) (> diff!6 1)) (< diff!6 (- 1)) (not (is-CC!64 xs!533))))))

(assert (= (and start!3938 res!13221) b!28967))

(assert (= (and b!28967 res!13219) b!28972))

(assert (= (and b!28972 res!13224) b!28966))

(assert (= (and b!28966 res!13223) b!28970))

(assert (= (and b!28970 res!13225) b!28969))

(assert (= (and b!28969 res!13220) b!28965))

(assert (= (and b!28965 res!13222) b!28974))

(assert (= (and start!3938 (is-CC!64 xs!533)) b!28973))

(assert (= (and start!3938 (is-Single!64 xs!533)) b!28968))

(assert (= (and start!3938 (is-CC!64 ys!77)) b!28971))

(assert (= (and start!3938 (is-Single!64 ys!77)) b!28964))

(declare-fun m!30893 () Bool)

(assert (=> b!28972 m!30893))

(declare-fun m!30895 () Bool)

(assert (=> b!28969 m!30895))

(declare-fun m!30897 () Bool)

(assert (=> b!28965 m!30897))

(declare-fun m!30899 () Bool)

(assert (=> b!28965 m!30899))

(declare-fun m!30901 () Bool)

(assert (=> b!28966 m!30901))

(declare-fun m!30903 () Bool)

(assert (=> b!28967 m!30903))

(declare-fun m!30905 () Bool)

(assert (=> start!3938 m!30905))

(declare-fun m!30907 () Bool)

(assert (=> b!28970 m!30907))

(push 1)

(assert (not b!28970))

(assert (not b!28971))

(assert (not b!28967))

(assert (not start!3938))

(assert tp_is_empty!175)

(assert (not b!28969))

(assert (not b!28966))

(assert (not b!28972))

(assert (not b!28965))

(assert (not b!28973))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!15287 () Bool)

(declare-fun res!13234 () Bool)

(declare-fun e!14811 () Bool)

(assert (=> d!15287 (=> res!13234 e!14811)))

(assert (=> d!15287 (= res!13234 (not (is-CC!64 ys!77)))))

(assert (=> d!15287 (= (concInv!59 ys!77) e!14811)))

(declare-fun b!28986 () Bool)

(declare-fun e!14810 () Bool)

(assert (=> b!28986 (= e!14810 (concInv!59 (right!712 ys!77)))))

(declare-fun b!28985 () Bool)

(declare-fun res!13237 () Bool)

(assert (=> b!28985 (=> (not res!13237) (not e!14810))))

(assert (=> b!28985 (= res!13237 (concInv!59 (left!709 ys!77)))))

(declare-fun b!28983 () Bool)

(assert (=> b!28983 (= e!14811 e!14810)))

(declare-fun res!13235 () Bool)

(assert (=> b!28983 (=> (not res!13235) (not e!14810))))

(assert (=> b!28983 (= res!13235 (not (isEmpty!321 (left!709 ys!77))))))

(declare-fun b!28984 () Bool)

(declare-fun res!13236 () Bool)

(assert (=> b!28984 (=> (not res!13236) (not e!14810))))

(assert (=> b!28984 (= res!13236 (not (isEmpty!321 (right!712 ys!77))))))

(assert (= (and d!15287 (not res!13234)) b!28983))

(assert (= (and b!28983 res!13235) b!28984))

(assert (= (and b!28984 res!13236) b!28985))

(assert (= (and b!28985 res!13237) b!28986))

(declare-fun m!30909 () Bool)

(assert (=> b!28986 m!30909))

(declare-fun m!30911 () Bool)

(assert (=> b!28985 m!30911))

(declare-fun m!30913 () Bool)

(assert (=> b!28983 m!30913))

(declare-fun m!30915 () Bool)

(assert (=> b!28984 m!30915))

(assert (=> b!28972 d!15287))

(declare-fun d!15289 () Bool)

(assert (=> d!15289 (= (isEmpty!321 ys!77) (= ys!77 Empty!75))))

(assert (=> b!28969 d!15289))

(declare-fun d!15291 () Bool)

(declare-fun res!13238 () Bool)

(declare-fun e!14813 () Bool)

(assert (=> d!15291 (=> res!13238 e!14813)))

(assert (=> d!15291 (= res!13238 (not (is-CC!64 xs!533)))))

(assert (=> d!15291 (= (concInv!59 xs!533) e!14813)))

(declare-fun b!28990 () Bool)

(declare-fun e!14812 () Bool)

(assert (=> b!28990 (= e!14812 (concInv!59 (right!712 xs!533)))))

(declare-fun b!28989 () Bool)

(declare-fun res!13241 () Bool)

(assert (=> b!28989 (=> (not res!13241) (not e!14812))))

(assert (=> b!28989 (= res!13241 (concInv!59 (left!709 xs!533)))))

(declare-fun b!28987 () Bool)

(assert (=> b!28987 (= e!14813 e!14812)))

(declare-fun res!13239 () Bool)

(assert (=> b!28987 (=> (not res!13239) (not e!14812))))

(assert (=> b!28987 (= res!13239 (not (isEmpty!321 (left!709 xs!533))))))

(declare-fun b!28988 () Bool)

(declare-fun res!13240 () Bool)

(assert (=> b!28988 (=> (not res!13240) (not e!14812))))

(assert (=> b!28988 (= res!13240 (not (isEmpty!321 (right!712 xs!533))))))

(assert (= (and d!15291 (not res!13238)) b!28987))

(assert (= (and b!28987 res!13239) b!28988))

(assert (= (and b!28988 res!13240) b!28989))

(assert (= (and b!28989 res!13241) b!28990))

(declare-fun m!30917 () Bool)

(assert (=> b!28990 m!30917))

(declare-fun m!30919 () Bool)

(assert (=> b!28989 m!30919))

(declare-fun m!30921 () Bool)

(assert (=> b!28987 m!30921))

(declare-fun m!30923 () Bool)

(assert (=> b!28988 m!30923))

(assert (=> start!3938 d!15291))

(declare-fun b!29000 () Bool)

(declare-fun res!13250 () Bool)

(declare-fun e!14818 () Bool)

(assert (=> b!29000 (=> (not res!13250) (not e!14818))))

(assert (=> b!29000 (= res!13250 (<= (- (level!53 (left!709 xs!533)) (level!53 (right!712 xs!533))) 1))))

(declare-fun b!28999 () Bool)

(declare-fun e!14819 () Bool)

(assert (=> b!28999 (= e!14819 e!14818)))

(declare-fun res!13252 () Bool)

(assert (=> b!28999 (=> (not res!13252) (not e!14818))))

(assert (=> b!28999 (= res!13252 (>= (- (level!53 (left!709 xs!533)) (level!53 (right!712 xs!533))) (- 1)))))

(declare-fun d!15293 () Bool)

(declare-fun res!13253 () Bool)

(assert (=> d!15293 (=> res!13253 e!14819)))

(assert (=> d!15293 (= res!13253 (not (is-CC!64 xs!533)))))

(assert (=> d!15293 (= (balanced!60 xs!533) e!14819)))

(declare-fun b!29001 () Bool)

(declare-fun res!13251 () Bool)

(assert (=> b!29001 (=> (not res!13251) (not e!14818))))

(assert (=> b!29001 (= res!13251 (balanced!60 (left!709 xs!533)))))

(declare-fun b!29002 () Bool)

(assert (=> b!29002 (= e!14818 (balanced!60 (right!712 xs!533)))))

(assert (= (and d!15293 (not res!13253)) b!28999))

(assert (= (and b!28999 res!13252) b!29000))

(assert (= (and b!29000 res!13250) b!29001))

(assert (= (and b!29001 res!13251) b!29002))

(declare-fun m!30925 () Bool)

(assert (=> b!29000 m!30925))

(declare-fun m!30927 () Bool)

(assert (=> b!29000 m!30927))

(assert (=> b!28999 m!30925))

(assert (=> b!28999 m!30927))

(declare-fun m!30929 () Bool)

(assert (=> b!29001 m!30929))

(declare-fun m!30931 () Bool)

(assert (=> b!29002 m!30931))

(assert (=> b!28967 d!15293))

(declare-fun b!29008 () Bool)

(declare-fun e!14822 () Int)

(declare-fun lt!5133 () Int)

(declare-fun lt!5132 () Int)

(assert (=> b!29008 (= e!14822 (+ 1 (ite (>= lt!5133 lt!5132) lt!5133 lt!5132)))))

(assert (=> b!29008 (= lt!5132 (level!53 (right!712 ys!77)))))

(assert (=> b!29008 (= lt!5133 (level!53 (left!709 ys!77)))))

(declare-fun d!15295 () Bool)

(declare-fun lt!5131 () Int)

(assert (=> d!15295 (>= lt!5131 0)))

(assert (=> d!15295 (= lt!5131 e!14822)))

(declare-fun c!6379 () Bool)

(assert (=> d!15295 (= c!6379 (or (is-Empty!75 ys!77) (is-Single!64 ys!77)))))

(assert (=> d!15295 (= (level!53 ys!77) lt!5131)))

(declare-fun b!29007 () Bool)

(assert (=> b!29007 (= e!14822 0)))

(assert (= (and d!15295 c!6379) b!29007))

(assert (= (and d!15295 (not c!6379)) b!29008))

(declare-fun m!30933 () Bool)

(assert (=> b!29008 m!30933))

(declare-fun m!30935 () Bool)

(assert (=> b!29008 m!30935))

(assert (=> b!28965 d!15295))

(declare-fun b!29010 () Bool)

(declare-fun e!14823 () Int)

(declare-fun lt!5136 () Int)

(declare-fun lt!5135 () Int)

(assert (=> b!29010 (= e!14823 (+ 1 (ite (>= lt!5136 lt!5135) lt!5136 lt!5135)))))

(assert (=> b!29010 (= lt!5135 (level!53 (right!712 xs!533)))))

(assert (=> b!29010 (= lt!5136 (level!53 (left!709 xs!533)))))

(declare-fun d!15297 () Bool)

(declare-fun lt!5134 () Int)

(assert (=> d!15297 (>= lt!5134 0)))

(assert (=> d!15297 (= lt!5134 e!14823)))

(declare-fun c!6380 () Bool)

(assert (=> d!15297 (= c!6380 (or (is-Empty!75 xs!533) (is-Single!64 xs!533)))))

(assert (=> d!15297 (= (level!53 xs!533) lt!5134)))

(declare-fun b!29009 () Bool)

(assert (=> b!29009 (= e!14823 0)))

(assert (= (and d!15297 c!6380) b!29009))

(assert (= (and d!15297 (not c!6380)) b!29010))

(assert (=> b!29010 m!30927))

(assert (=> b!29010 m!30925))

(assert (=> b!28965 d!15297))

(declare-fun b!29012 () Bool)

(declare-fun res!13254 () Bool)

(declare-fun e!14824 () Bool)

(assert (=> b!29012 (=> (not res!13254) (not e!14824))))

(assert (=> b!29012 (= res!13254 (<= (- (level!53 (left!709 ys!77)) (level!53 (right!712 ys!77))) 1))))

(declare-fun b!29011 () Bool)

(declare-fun e!14825 () Bool)

(assert (=> b!29011 (= e!14825 e!14824)))

(declare-fun res!13256 () Bool)

(assert (=> b!29011 (=> (not res!13256) (not e!14824))))

(assert (=> b!29011 (= res!13256 (>= (- (level!53 (left!709 ys!77)) (level!53 (right!712 ys!77))) (- 1)))))

(declare-fun d!15299 () Bool)

(declare-fun res!13257 () Bool)

(assert (=> d!15299 (=> res!13257 e!14825)))

(assert (=> d!15299 (= res!13257 (not (is-CC!64 ys!77)))))

(assert (=> d!15299 (= (balanced!60 ys!77) e!14825)))

(declare-fun b!29013 () Bool)

(declare-fun res!13255 () Bool)

(assert (=> b!29013 (=> (not res!13255) (not e!14824))))

(assert (=> b!29013 (= res!13255 (balanced!60 (left!709 ys!77)))))

(declare-fun b!29014 () Bool)

(assert (=> b!29014 (= e!14824 (balanced!60 (right!712 ys!77)))))

(assert (= (and d!15299 (not res!13257)) b!29011))

(assert (= (and b!29011 res!13256) b!29012))

(assert (= (and b!29012 res!13254) b!29013))

(assert (= (and b!29013 res!13255) b!29014))

(assert (=> b!29012 m!30935))

(assert (=> b!29012 m!30933))

(assert (=> b!29011 m!30935))

(assert (=> b!29011 m!30933))

(declare-fun m!30937 () Bool)

(assert (=> b!29013 m!30937))

(declare-fun m!30939 () Bool)

(assert (=> b!29014 m!30939))

(assert (=> b!28966 d!15299))

(declare-fun d!15301 () Bool)

(assert (=> d!15301 (= (isEmpty!321 xs!533) (= xs!533 Empty!75))))

(assert (=> b!28970 d!15301))

(declare-fun b!29021 () Bool)

(declare-fun e!14828 () Bool)

(declare-fun tp!6162 () Bool)

(declare-fun tp!6163 () Bool)

(assert (=> b!29021 (= e!14828 (and tp!6162 tp!6163))))

(declare-fun b!29022 () Bool)

(assert (=> b!29022 (= e!14828 tp_is_empty!175)))

(assert (=> b!28971 (= tp!6155 e!14828)))

(assert (= (and b!28971 (is-CC!64 (left!709 ys!77))) b!29021))

(assert (= (and b!28971 (is-Single!64 (left!709 ys!77))) b!29022))

(declare-fun b!29023 () Bool)

(declare-fun e!14829 () Bool)

(declare-fun tp!6164 () Bool)

(declare-fun tp!6165 () Bool)

(assert (=> b!29023 (= e!14829 (and tp!6164 tp!6165))))

(declare-fun b!29024 () Bool)

(assert (=> b!29024 (= e!14829 tp_is_empty!175)))

(assert (=> b!28971 (= tp!6157 e!14829)))

(assert (= (and b!28971 (is-CC!64 (right!712 ys!77))) b!29023))

(assert (= (and b!28971 (is-Single!64 (right!712 ys!77))) b!29024))

(declare-fun b!29025 () Bool)

(declare-fun e!14830 () Bool)

(declare-fun tp!6166 () Bool)

(declare-fun tp!6167 () Bool)

(assert (=> b!29025 (= e!14830 (and tp!6166 tp!6167))))

(declare-fun b!29026 () Bool)

(assert (=> b!29026 (= e!14830 tp_is_empty!175)))

(assert (=> b!28973 (= tp!6156 e!14830)))

(assert (= (and b!28973 (is-CC!64 (left!709 xs!533))) b!29025))

(assert (= (and b!28973 (is-Single!64 (left!709 xs!533))) b!29026))

(declare-fun b!29027 () Bool)

(declare-fun e!14831 () Bool)

(declare-fun tp!6168 () Bool)

(declare-fun tp!6169 () Bool)

(assert (=> b!29027 (= e!14831 (and tp!6168 tp!6169))))

(declare-fun b!29028 () Bool)

(assert (=> b!29028 (= e!14831 tp_is_empty!175)))

(assert (=> b!28973 (= tp!6154 e!14831)))

(assert (= (and b!28973 (is-CC!64 (right!712 xs!533))) b!29027))

(assert (= (and b!28973 (is-Single!64 (right!712 xs!533))) b!29028))

(push 1)

(assert (not b!29010))

(assert (not b!29021))

(assert (not b!29014))

(assert (not b!28985))

(assert (not b!28987))

(assert (not b!29001))

(assert (not b!29000))

(assert (not b!28990))

(assert tp_is_empty!175)

(assert (not b!28986))

(assert (not b!29012))

(assert (not b!29002))

(assert (not b!29008))

(assert (not b!29027))

(assert (not b!28983))

(assert (not b!28999))

(assert (not b!29011))

(assert (not b!28989))

(assert (not b!28984))

(assert (not b!29023))

(assert (not b!29013))

(assert (not b!29025))

(assert (not b!28988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

