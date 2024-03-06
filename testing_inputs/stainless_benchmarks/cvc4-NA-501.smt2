; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3444 () Bool)

(assert start!3444)

(declare-fun b!20970 () Bool)

(declare-fun res!9068 () Bool)

(declare-fun e!10982 () Bool)

(assert (=> b!20970 (=> (not res!9068) (not e!10982))))

(declare-fun i!298 () Int)

(declare-datatypes () ((T!1757 (T!1758 (val!51 Int)))))

(declare-datatypes () ((Conc!33 (CC!32 (left!677 Conc!33) (right!680 Conc!33)) (Single!32 (x!8795 T!1757)) (Empty!43))))

(declare-fun xs!604 () Conc!33)

(declare-fun size!225 (Conc!33) Int)

(assert (=> b!20970 (= res!9068 (< i!298 (size!225 (left!677 xs!604))))))

(declare-fun b!20971 () Bool)

(declare-fun e!10983 () Bool)

(declare-fun tp!4752 () Bool)

(declare-fun tp!4751 () Bool)

(assert (=> b!20971 (= e!10983 (and tp!4752 tp!4751))))

(declare-fun b!20972 () Bool)

(declare-fun e!10981 () Bool)

(declare-fun tp!4750 () Bool)

(declare-fun tp!4749 () Bool)

(assert (=> b!20972 (= e!10981 (and tp!4750 tp!4749))))

(declare-fun b!20973 () Bool)

(declare-fun tp_is_empty!101 () Bool)

(assert (=> b!20973 (= e!10981 tp_is_empty!101)))

(declare-fun b!20974 () Bool)

(declare-fun res!9069 () Bool)

(assert (=> b!20974 (=> (not res!9069) (not e!10982))))

(declare-fun y!824 () T!1757)

(declare-fun res!5609 () Conc!33)

(declare-fun concatNonEmpty!11 (Conc!33 Conc!33) Conc!33)

(declare-fun insert!20 (Conc!33 Int T!1757) Conc!33)

(assert (=> b!20974 (= res!9069 (= res!5609 (concatNonEmpty!11 (insert!20 (left!677 xs!604) i!298 y!824) (right!680 xs!604))))))

(declare-fun b!20975 () Bool)

(declare-fun res!9063 () Bool)

(declare-fun e!10984 () Bool)

(assert (=> b!20975 (=> res!9063 e!10984)))

(declare-fun insertAppendAxiomInst!13 (Conc!33 Int T!1757) Bool)

(assert (=> b!20975 (= res!9063 (not (insertAppendAxiomInst!13 xs!604 i!298 y!824)))))

(declare-fun b!20976 () Bool)

(declare-fun res!9067 () Bool)

(assert (=> b!20976 (=> res!9067 e!10984)))

(declare-fun isEmpty!295 (Conc!33) Bool)

(assert (=> b!20976 (= res!9067 (isEmpty!295 res!5609))))

(declare-fun b!20977 () Bool)

(declare-fun res!9062 () Bool)

(assert (=> b!20977 (=> res!9062 e!10984)))

(declare-fun level!30 (Conc!33) Int)

(assert (=> b!20977 (= res!9062 (< (level!30 res!5609) (level!30 xs!604)))))

(declare-fun b!20978 () Bool)

(declare-datatypes () ((List!338 (Cons!332 (h!246 T!1757) (t!4333 List!338)) (Nil!333))))

(declare-fun toList!98 (Conc!33) List!338)

(declare-fun insertAtIndex!11 (List!338 Int T!1757) List!338)

(assert (=> b!20978 (= e!10984 (not (= (toList!98 res!5609) (insertAtIndex!11 (toList!98 xs!604) i!298 y!824))))))

(declare-fun b!20979 () Bool)

(declare-fun res!9066 () Bool)

(assert (=> b!20979 (=> res!9066 e!10984)))

(declare-fun balanced!32 (Conc!33) Bool)

(assert (=> b!20979 (= res!9066 (not (balanced!32 res!5609)))))

(declare-fun res!9070 () Bool)

(assert (=> start!3444 (=> (not res!9070) (not e!10982))))

(declare-fun concInv!31 (Conc!33) Bool)

(assert (=> start!3444 (= res!9070 (concInv!31 xs!604))))

(assert (=> start!3444 e!10982))

(assert (=> start!3444 e!10983))

(assert (=> start!3444 true))

(assert (=> start!3444 e!10981))

(assert (=> start!3444 tp_is_empty!101))

(declare-fun b!20980 () Bool)

(assert (=> b!20980 (= e!10983 tp_is_empty!101)))

(declare-fun b!20981 () Bool)

(declare-fun res!9071 () Bool)

(assert (=> b!20981 (=> res!9071 e!10984)))

(assert (=> b!20981 (= res!9071 (> (- (level!30 res!5609) (level!30 xs!604)) 1))))

(declare-fun b!20982 () Bool)

(assert (=> b!20982 (= e!10982 e!10984)))

(declare-fun res!9059 () Bool)

(assert (=> b!20982 (=> res!9059 e!10984)))

(assert (=> b!20982 (= res!9059 (not (concInv!31 res!5609)))))

(declare-fun b!20983 () Bool)

(declare-fun res!9065 () Bool)

(assert (=> b!20983 (=> (not res!9065) (not e!10982))))

(assert (=> b!20983 (= res!9065 (balanced!32 xs!604))))

(declare-fun b!20984 () Bool)

(declare-fun res!9064 () Bool)

(assert (=> b!20984 (=> (not res!9064) (not e!10982))))

(assert (=> b!20984 (= res!9064 (<= i!298 (size!225 xs!604)))))

(declare-fun b!20985 () Bool)

(declare-fun res!9061 () Bool)

(assert (=> b!20985 (=> (not res!9061) (not e!10982))))

(assert (=> b!20985 (= res!9061 (and (not (is-Empty!43 xs!604)) (not (is-Single!32 xs!604))))))

(declare-fun b!20986 () Bool)

(declare-fun res!9060 () Bool)

(assert (=> b!20986 (=> (not res!9060) (not e!10982))))

(assert (=> b!20986 (= res!9060 (>= i!298 0))))

(assert (= (and start!3444 res!9070) b!20983))

(assert (= (and b!20983 res!9065) b!20986))

(assert (= (and b!20986 res!9060) b!20984))

(assert (= (and b!20984 res!9064) b!20985))

(assert (= (and b!20985 res!9061) b!20970))

(assert (= (and b!20970 res!9068) b!20974))

(assert (= (and b!20974 res!9069) b!20982))

(assert (= (and b!20982 (not res!9059)) b!20979))

(assert (= (and b!20979 (not res!9066)) b!20981))

(assert (= (and b!20981 (not res!9071)) b!20977))

(assert (= (and b!20977 (not res!9062)) b!20976))

(assert (= (and b!20976 (not res!9067)) b!20975))

(assert (= (and b!20975 (not res!9063)) b!20978))

(assert (= (and start!3444 (is-CC!32 xs!604)) b!20971))

(assert (= (and start!3444 (is-Single!32 xs!604)) b!20980))

(assert (= (and start!3444 (is-CC!32 res!5609)) b!20972))

(assert (= (and start!3444 (is-Single!32 res!5609)) b!20973))

(declare-fun m!23171 () Bool)

(assert (=> b!20977 m!23171))

(declare-fun m!23173 () Bool)

(assert (=> b!20977 m!23173))

(declare-fun m!23175 () Bool)

(assert (=> start!3444 m!23175))

(assert (=> b!20981 m!23171))

(assert (=> b!20981 m!23173))

(declare-fun m!23177 () Bool)

(assert (=> b!20974 m!23177))

(assert (=> b!20974 m!23177))

(declare-fun m!23179 () Bool)

(assert (=> b!20974 m!23179))

(declare-fun m!23181 () Bool)

(assert (=> b!20984 m!23181))

(declare-fun m!23183 () Bool)

(assert (=> b!20975 m!23183))

(declare-fun m!23185 () Bool)

(assert (=> b!20982 m!23185))

(declare-fun m!23187 () Bool)

(assert (=> b!20976 m!23187))

(declare-fun m!23189 () Bool)

(assert (=> b!20979 m!23189))

(declare-fun m!23191 () Bool)

(assert (=> b!20983 m!23191))

(declare-fun m!23193 () Bool)

(assert (=> b!20970 m!23193))

(declare-fun m!23195 () Bool)

(assert (=> b!20978 m!23195))

(declare-fun m!23197 () Bool)

(assert (=> b!20978 m!23197))

(assert (=> b!20978 m!23197))

(declare-fun m!23199 () Bool)

(assert (=> b!20978 m!23199))

(push 1)

(assert (not b!20976))

(assert (not start!3444))

(assert (not b!20974))

(assert (not b!20983))

(assert (not b!20984))

(assert (not b!20978))

(assert (not b!20982))

(assert (not b!20979))

(assert (not b!20972))

(assert (not b!20977))

(assert (not b!20971))

(assert tp_is_empty!101)

(assert (not b!20981))

(assert (not b!20975))

(assert (not b!20970))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!12821 () Bool)

(declare-fun e!10990 () Bool)

(assert (=> d!12821 e!10990))

(declare-fun res!9077 () Bool)

(assert (=> d!12821 (=> res!9077 e!10990)))

(assert (=> d!12821 (= res!9077 (not (is-CC!32 xs!604)))))

(declare-fun e!10989 () Bool)

(assert (=> d!12821 e!10989))

(declare-fun res!9076 () Bool)

(assert (=> d!12821 (=> (not res!9076) (not e!10989))))

(assert (=> d!12821 (= res!9076 (>= i!298 0))))

(assert (=> d!12821 (= (insertAppendAxiomInst!13 xs!604 i!298 y!824) true)))

(declare-fun b!20991 () Bool)

(assert (=> b!20991 (= e!10989 (<= i!298 (size!225 xs!604)))))

(declare-fun b!20992 () Bool)

(declare-fun appendInsertIndex!12 (List!338 List!338 Int T!1757) Bool)

(assert (=> b!20992 (= e!10990 (appendInsertIndex!12 (toList!98 (left!677 xs!604)) (toList!98 (right!680 xs!604)) i!298 y!824))))

(assert (= (and d!12821 res!9076) b!20991))

(assert (= (and d!12821 (not res!9077)) b!20992))

(assert (=> b!20991 m!23181))

(declare-fun m!23201 () Bool)

(assert (=> b!20992 m!23201))

(declare-fun m!23203 () Bool)

(assert (=> b!20992 m!23203))

(assert (=> b!20992 m!23201))

(assert (=> b!20992 m!23203))

(declare-fun m!23205 () Bool)

(assert (=> b!20992 m!23205))

(assert (=> b!20975 d!12821))

(declare-fun b!20998 () Bool)

(declare-fun e!10993 () Int)

(declare-fun lt!3186 () Int)

(declare-fun lt!3188 () Int)

(assert (=> b!20998 (= e!10993 (+ 1 (ite (>= lt!3186 lt!3188) lt!3186 lt!3188)))))

(assert (=> b!20998 (= lt!3188 (level!30 (right!680 res!5609)))))

(assert (=> b!20998 (= lt!3186 (level!30 (left!677 res!5609)))))

(declare-fun d!12823 () Bool)

(declare-fun lt!3187 () Int)

(assert (=> d!12823 (>= lt!3187 0)))

(assert (=> d!12823 (= lt!3187 e!10993)))

(declare-fun c!5047 () Bool)

(assert (=> d!12823 (= c!5047 (or (is-Empty!43 res!5609) (is-Single!32 res!5609)))))

(assert (=> d!12823 (= (level!30 res!5609) lt!3187)))

(declare-fun b!20997 () Bool)

(assert (=> b!20997 (= e!10993 0)))

(assert (= (and d!12823 c!5047) b!20997))

(assert (= (and d!12823 (not c!5047)) b!20998))

(declare-fun m!23207 () Bool)

(assert (=> b!20998 m!23207))

(declare-fun m!23209 () Bool)

(assert (=> b!20998 m!23209))

(assert (=> b!20981 d!12823))

(declare-fun b!21000 () Bool)

(declare-fun e!10994 () Int)

(declare-fun lt!3189 () Int)

(declare-fun lt!3191 () Int)

(assert (=> b!21000 (= e!10994 (+ 1 (ite (>= lt!3189 lt!3191) lt!3189 lt!3191)))))

(assert (=> b!21000 (= lt!3191 (level!30 (right!680 xs!604)))))

(assert (=> b!21000 (= lt!3189 (level!30 (left!677 xs!604)))))

(declare-fun d!12825 () Bool)

(declare-fun lt!3190 () Int)

(assert (=> d!12825 (>= lt!3190 0)))

(assert (=> d!12825 (= lt!3190 e!10994)))

(declare-fun c!5048 () Bool)

(assert (=> d!12825 (= c!5048 (or (is-Empty!43 xs!604) (is-Single!32 xs!604)))))

(assert (=> d!12825 (= (level!30 xs!604) lt!3190)))

(declare-fun b!20999 () Bool)

(assert (=> b!20999 (= e!10994 0)))

(assert (= (and d!12825 c!5048) b!20999))

(assert (= (and d!12825 (not c!5048)) b!21000))

(declare-fun m!23211 () Bool)

(assert (=> b!21000 m!23211))

(declare-fun m!23213 () Bool)

(assert (=> b!21000 m!23213))

(assert (=> b!20981 d!12825))

(declare-fun b!21011 () Bool)

(declare-fun res!9087 () Bool)

(declare-fun e!11000 () Bool)

(assert (=> b!21011 (=> (not res!9087) (not e!11000))))

(assert (=> b!21011 (= res!9087 (balanced!32 (left!677 res!5609)))))

(declare-fun b!21012 () Bool)

(assert (=> b!21012 (= e!11000 (balanced!32 (right!680 res!5609)))))

(declare-fun b!21010 () Bool)

(declare-fun res!9088 () Bool)

(assert (=> b!21010 (=> (not res!9088) (not e!11000))))

(assert (=> b!21010 (= res!9088 (<= (- (level!30 (left!677 res!5609)) (level!30 (right!680 res!5609))) 1))))

(declare-fun d!12827 () Bool)

(declare-fun res!9089 () Bool)

(declare-fun e!10999 () Bool)

(assert (=> d!12827 (=> res!9089 e!10999)))

(assert (=> d!12827 (= res!9089 (not (is-CC!32 res!5609)))))

(assert (=> d!12827 (= (balanced!32 res!5609) e!10999)))

(declare-fun b!21009 () Bool)

(assert (=> b!21009 (= e!10999 e!11000)))

(declare-fun res!9086 () Bool)

(assert (=> b!21009 (=> (not res!9086) (not e!11000))))

(assert (=> b!21009 (= res!9086 (>= (- (level!30 (left!677 res!5609)) (level!30 (right!680 res!5609))) (- 1)))))

(assert (= (and d!12827 (not res!9089)) b!21009))

(assert (= (and b!21009 res!9086) b!21010))

(assert (= (and b!21010 res!9088) b!21011))

(assert (= (and b!21011 res!9087) b!21012))

(declare-fun m!23215 () Bool)

(assert (=> b!21011 m!23215))

(declare-fun m!23217 () Bool)

(assert (=> b!21012 m!23217))

(assert (=> b!21010 m!23209))

(assert (=> b!21010 m!23207))

(assert (=> b!21009 m!23209))

(assert (=> b!21009 m!23207))

(assert (=> b!20979 d!12827))

(declare-fun b!21023 () Bool)

(declare-fun res!9100 () Bool)

(declare-fun e!11006 () Bool)

(assert (=> b!21023 (=> (not res!9100) (not e!11006))))

(assert (=> b!21023 (= res!9100 (concInv!31 (left!677 res!5609)))))

(declare-fun b!21021 () Bool)

(declare-fun e!11005 () Bool)

(assert (=> b!21021 (= e!11005 e!11006)))

(declare-fun res!9099 () Bool)

(assert (=> b!21021 (=> (not res!9099) (not e!11006))))

(assert (=> b!21021 (= res!9099 (not (isEmpty!295 (left!677 res!5609))))))

(declare-fun b!21022 () Bool)

(declare-fun res!9098 () Bool)

(assert (=> b!21022 (=> (not res!9098) (not e!11006))))

(assert (=> b!21022 (= res!9098 (not (isEmpty!295 (right!680 res!5609))))))

(declare-fun b!21024 () Bool)

(assert (=> b!21024 (= e!11006 (concInv!31 (right!680 res!5609)))))

(declare-fun d!12829 () Bool)

(declare-fun res!9101 () Bool)

(assert (=> d!12829 (=> res!9101 e!11005)))

(assert (=> d!12829 (= res!9101 (not (is-CC!32 res!5609)))))

(assert (=> d!12829 (= (concInv!31 res!5609) e!11005)))

(assert (= (and d!12829 (not res!9101)) b!21021))

(assert (= (and b!21021 res!9099) b!21022))

(assert (= (and b!21022 res!9098) b!21023))

(assert (= (and b!21023 res!9100) b!21024))

(declare-fun m!23219 () Bool)

(assert (=> b!21023 m!23219))

(declare-fun m!23221 () Bool)

(assert (=> b!21021 m!23221))

(declare-fun m!23223 () Bool)

(assert (=> b!21022 m!23223))

(declare-fun m!23225 () Bool)

(assert (=> b!21024 m!23225))

(assert (=> b!20982 d!12829))

(declare-fun b!21034 () Bool)

(declare-fun e!11011 () List!338)

(declare-fun e!11012 () List!338)

(assert (=> b!21034 (= e!11011 e!11012)))

(declare-fun c!5054 () Bool)

(assert (=> b!21034 (= c!5054 (is-Single!32 res!5609))))

(declare-fun b!21033 () Bool)

(assert (=> b!21033 (= e!11011 Nil!333)))

(declare-fun d!12831 () Bool)

(declare-fun lt!3194 () List!338)

(declare-fun size!226 (List!338) Int)

(assert (=> d!12831 (= (size!226 lt!3194) (size!225 res!5609))))

(assert (=> d!12831 (= lt!3194 e!11011)))

(declare-fun c!5053 () Bool)

(assert (=> d!12831 (= c!5053 (is-Empty!43 res!5609))))

(assert (=> d!12831 (= (toList!98 res!5609) lt!3194)))

(declare-fun b!21035 () Bool)

(assert (=> b!21035 (= e!11012 (Cons!332 (x!8795 res!5609) Nil!333))))

(declare-fun b!21036 () Bool)

(declare-fun ++!21 (List!338 List!338) List!338)

(assert (=> b!21036 (= e!11012 (++!21 (toList!98 (left!677 res!5609)) (toList!98 (right!680 res!5609))))))

(assert (= (and b!21034 c!5054) b!21035))

(assert (= (and b!21034 (not c!5054)) b!21036))

(assert (= (and d!12831 c!5053) b!21033))

(assert (= (and d!12831 (not c!5053)) b!21034))

(declare-fun m!23227 () Bool)

(assert (=> d!12831 m!23227))

(declare-fun m!23229 () Bool)

(assert (=> d!12831 m!23229))

(declare-fun m!23231 () Bool)

(assert (=> b!21036 m!23231))

(declare-fun m!23233 () Bool)

(assert (=> b!21036 m!23233))

(assert (=> b!21036 m!23231))

(assert (=> b!21036 m!23233))

(declare-fun m!23235 () Bool)

(assert (=> b!21036 m!23235))

(assert (=> b!20978 d!12831))

(declare-fun b!21048 () Bool)

(declare-fun e!11018 () List!338)

(assert (=> b!21048 (= e!11018 (Cons!332 (h!246 (toList!98 xs!604)) (insertAtIndex!11 (t!4333 (toList!98 xs!604)) (- i!298 1) y!824)))))

(declare-fun b!21045 () Bool)

(declare-fun e!11017 () List!338)

(assert (=> b!21045 (= e!11017 (Cons!332 y!824 Nil!333))))

(declare-fun b!21047 () Bool)

(assert (=> b!21047 (= e!11018 (Cons!332 y!824 (toList!98 xs!604)))))

(declare-fun b!21046 () Bool)

(assert (=> b!21046 (= e!11017 e!11018)))

(declare-fun c!5060 () Bool)

(assert (=> b!21046 (= c!5060 (= i!298 0))))

(declare-fun d!12833 () Bool)

(declare-fun c!5059 () Bool)

(assert (=> d!12833 (= c!5059 (is-Nil!333 (toList!98 xs!604)))))

(assert (=> d!12833 (= (insertAtIndex!11 (toList!98 xs!604) i!298 y!824) e!11017)))

(assert (= (and b!21046 c!5060) b!21047))

(assert (= (and b!21046 (not c!5060)) b!21048))

(assert (= (and d!12833 c!5059) b!21045))

(assert (= (and d!12833 (not c!5059)) b!21046))

(declare-fun m!23237 () Bool)

(assert (=> b!21048 m!23237))

(assert (=> b!20978 d!12833))

(declare-fun b!21050 () Bool)

(declare-fun e!11019 () List!338)

(declare-fun e!11020 () List!338)

(assert (=> b!21050 (= e!11019 e!11020)))

(declare-fun c!5062 () Bool)

(assert (=> b!21050 (= c!5062 (is-Single!32 xs!604))))

(declare-fun b!21049 () Bool)

(assert (=> b!21049 (= e!11019 Nil!333)))

(declare-fun d!12835 () Bool)

(declare-fun lt!3195 () List!338)

(assert (=> d!12835 (= (size!226 lt!3195) (size!225 xs!604))))

(assert (=> d!12835 (= lt!3195 e!11019)))

(declare-fun c!5061 () Bool)

(assert (=> d!12835 (= c!5061 (is-Empty!43 xs!604))))

(assert (=> d!12835 (= (toList!98 xs!604) lt!3195)))

(declare-fun b!21051 () Bool)

(assert (=> b!21051 (= e!11020 (Cons!332 (x!8795 xs!604) Nil!333))))

(declare-fun b!21052 () Bool)

(assert (=> b!21052 (= e!11020 (++!21 (toList!98 (left!677 xs!604)) (toList!98 (right!680 xs!604))))))

(assert (= (and b!21050 c!5062) b!21051))

(assert (= (and b!21050 (not c!5062)) b!21052))

(assert (= (and d!12835 c!5061) b!21049))

(assert (= (and d!12835 (not c!5061)) b!21050))

(declare-fun m!23239 () Bool)

(assert (=> d!12835 m!23239))

(assert (=> d!12835 m!23181))

(assert (=> b!21052 m!23201))

(assert (=> b!21052 m!23203))

(assert (=> b!21052 m!23201))

(assert (=> b!21052 m!23203))

(declare-fun m!23241 () Bool)

(assert (=> b!21052 m!23241))

(assert (=> b!20978 d!12835))

(declare-fun d!12837 () Bool)

(declare-fun lt!3198 () Int)

(assert (=> d!12837 (>= lt!3198 0)))

(declare-fun e!11025 () Int)

(assert (=> d!12837 (= lt!3198 e!11025)))

(declare-fun c!5067 () Bool)

(assert (=> d!12837 (= c!5067 (is-Empty!43 (left!677 xs!604)))))

(assert (=> d!12837 (= (size!225 (left!677 xs!604)) lt!3198)))

(declare-fun b!21063 () Bool)

(declare-fun e!11026 () Int)

(assert (=> b!21063 (= e!11026 1)))

(declare-fun b!21064 () Bool)

(assert (=> b!21064 (= e!11026 (+ (size!225 (left!677 (left!677 xs!604))) (size!225 (right!680 (left!677 xs!604)))))))

(declare-fun b!21061 () Bool)

(assert (=> b!21061 (= e!11025 0)))

(declare-fun b!21062 () Bool)

(assert (=> b!21062 (= e!11025 e!11026)))

(declare-fun c!5068 () Bool)

(assert (=> b!21062 (= c!5068 (is-Single!32 (left!677 xs!604)))))

(assert (= (and b!21062 c!5068) b!21063))

(assert (= (and b!21062 (not c!5068)) b!21064))

(assert (= (and d!12837 c!5067) b!21061))

(assert (= (and d!12837 (not c!5067)) b!21062))

(declare-fun m!23243 () Bool)

(assert (=> b!21064 m!23243))

(declare-fun m!23245 () Bool)

(assert (=> b!21064 m!23245))

(assert (=> b!20970 d!12837))

(declare-fun d!12839 () Bool)

(assert (=> d!12839 (= (isEmpty!295 res!5609) (= res!5609 Empty!43))))

(assert (=> b!20976 d!12839))

(declare-fun b!21067 () Bool)

(declare-fun res!9105 () Bool)

(declare-fun e!11028 () Bool)

(assert (=> b!21067 (=> (not res!9105) (not e!11028))))

(assert (=> b!21067 (= res!9105 (concInv!31 (left!677 xs!604)))))

(declare-fun b!21065 () Bool)

(declare-fun e!11027 () Bool)

(assert (=> b!21065 (= e!11027 e!11028)))

(declare-fun res!9104 () Bool)

(assert (=> b!21065 (=> (not res!9104) (not e!11028))))

(assert (=> b!21065 (= res!9104 (not (isEmpty!295 (left!677 xs!604))))))

(declare-fun b!21066 () Bool)

(declare-fun res!9103 () Bool)

(assert (=> b!21066 (=> (not res!9103) (not e!11028))))

(assert (=> b!21066 (= res!9103 (not (isEmpty!295 (right!680 xs!604))))))

(declare-fun b!21068 () Bool)

(assert (=> b!21068 (= e!11028 (concInv!31 (right!680 xs!604)))))

(declare-fun d!12841 () Bool)

(declare-fun res!9106 () Bool)

(assert (=> d!12841 (=> res!9106 e!11027)))

(assert (=> d!12841 (= res!9106 (not (is-CC!32 xs!604)))))

(assert (=> d!12841 (= (concInv!31 xs!604) e!11027)))

(assert (= (and d!12841 (not res!9106)) b!21065))

(assert (= (and b!21065 res!9104) b!21066))

(assert (= (and b!21066 res!9103) b!21067))

(assert (= (and b!21067 res!9105) b!21068))

(declare-fun m!23247 () Bool)

(assert (=> b!21067 m!23247))

(declare-fun m!23249 () Bool)

(assert (=> b!21065 m!23249))

(declare-fun m!23251 () Bool)

(assert (=> b!21066 m!23251))

(declare-fun m!23253 () Bool)

(assert (=> b!21068 m!23253))

(assert (=> start!3444 d!12841))

(assert (=> b!20977 d!12823))

(assert (=> b!20977 d!12825))

(declare-fun b!21111 () Bool)

(declare-fun e!11048 () Bool)

(assert (=> b!21111 (= e!11048 (not (isEmpty!295 (right!680 xs!604))))))

(declare-fun b!21112 () Bool)

(declare-fun res!9168 () Bool)

(declare-fun e!11050 () Bool)

(assert (=> b!21112 (=> (not res!9168) (not e!11050))))

(declare-fun appendAssocInst!7 (Conc!33 Conc!33) Bool)

(assert (=> b!21112 (= res!9168 (appendAssocInst!7 (insert!20 (left!677 xs!604) i!298 y!824) (right!680 xs!604)))))

(declare-fun b!21113 () Bool)

(declare-fun e!11053 () Int)

(declare-fun res!9165 () Int)

(assert (=> b!21113 (= e!11053 res!9165)))

(assert (=> b!21113 true))

(declare-fun b!21114 () Bool)

(declare-fun res!9162 () Bool)

(assert (=> b!21114 (=> (not res!9162) (not e!11050))))

(declare-fun lt!3232 () Conc!33)

(assert (=> b!21114 (= res!9162 (balanced!32 lt!3232))))

(declare-fun b!21115 () Bool)

(declare-fun res!9166 () Bool)

(assert (=> b!21115 (=> (not res!9166) (not e!11050))))

(declare-fun lt!3246 () Int)

(declare-fun lt!3245 () Int)

(declare-fun lt!3242 () Int)

(assert (=> b!21115 (= res!9166 (>= lt!3245 (ite (>= lt!3242 lt!3246) lt!3242 lt!3246)))))

(assert (=> b!21115 (= lt!3246 (level!30 (right!680 xs!604)))))

(assert (=> b!21115 (= lt!3242 (level!30 (insert!20 (left!677 xs!604) i!298 y!824)))))

(assert (=> b!21115 (= lt!3245 (level!30 lt!3232))))

(declare-fun b!21116 () Bool)

(declare-fun res!9173 () Bool)

(assert (=> b!21116 (=> (not res!9173) (not e!11048))))

(assert (=> b!21116 (= res!9173 (not (isEmpty!295 (insert!20 (left!677 xs!604) i!298 y!824))))))

(declare-fun e!11047 () Conc!33)

(declare-fun b!21117 () Bool)

(assert (=> b!21117 (= e!11047 (CC!32 (insert!20 (left!677 xs!604) i!298 y!824) (right!680 xs!604)))))

(declare-fun lt!3234 () Bool)

(declare-fun e!11055 () Int)

(declare-fun b!21118 () Bool)

(assert (=> b!21118 (= e!11055 (level!30 (ite lt!3234 (insert!20 (left!677 xs!604) i!298 y!824) (right!680 xs!604))))))

(declare-fun e!11049 () Bool)

(declare-fun b!21119 () Bool)

(assert (=> b!21119 (= e!11049 (balanced!32 (insert!20 (left!677 xs!604) i!298 y!824)))))

(declare-fun b!21120 () Bool)

(declare-fun res!9174 () Bool)

(assert (=> b!21120 (=> (not res!9174) (not e!11048))))

(assert (=> b!21120 (= res!9174 (balanced!32 (right!680 xs!604)))))

(declare-fun b!21121 () Bool)

(declare-fun e!11052 () Conc!33)

(declare-fun res!9163 () Conc!33)

(assert (=> b!21121 (= e!11052 res!9163)))

(assert (=> b!21121 true))

(declare-fun e!11051 () Bool)

(assert (=> b!21121 e!11051))

(declare-fun b!21122 () Bool)

(declare-fun lt!3240 () Conc!33)

(assert (=> b!21122 (= e!11053 (level!30 lt!3240))))

(declare-fun b!21123 () Bool)

(declare-fun concatCorrectness!5 (Conc!33 Conc!33 Conc!33) Bool)

(assert (=> b!21123 (= e!11050 (concatCorrectness!5 lt!3232 (insert!20 (left!677 xs!604) i!298 y!824) (right!680 xs!604)))))

(declare-fun b!21124 () Bool)

(declare-fun tp!4757 () Bool)

(declare-fun tp!4758 () Bool)

(assert (=> b!21124 (= e!11051 (and tp!4757 tp!4758))))

(declare-fun b!21125 () Bool)

(declare-fun res!9172 () Int)

(assert (=> b!21125 (= e!11055 res!9172)))

(assert (=> b!21125 true))

(assert (=> b!21125 true))

(declare-fun b!21126 () Bool)

(declare-fun e!11054 () Bool)

(assert (=> b!21126 (= e!11054 e!11050)))

(declare-fun res!9169 () Bool)

(assert (=> b!21126 (=> (not res!9169) (not e!11050))))

(declare-fun lt!3235 () Int)

(declare-fun lt!3233 () Int)

(declare-fun lt!3244 () Int)

(assert (=> b!21126 (= res!9169 (<= lt!3233 (+ (ite (>= lt!3235 lt!3244) lt!3235 lt!3244) 1)))))

(assert (=> b!21126 (= lt!3244 (level!30 (right!680 xs!604)))))

(assert (=> b!21126 (= lt!3235 (level!30 (insert!20 (left!677 xs!604) i!298 y!824)))))

(assert (=> b!21126 (= lt!3233 (level!30 lt!3232))))

(declare-fun b!21127 () Bool)

(assert (=> b!21127 (= e!11051 tp_is_empty!101)))

(declare-fun d!12843 () Bool)

(assert (=> d!12843 e!11054))

(declare-fun res!9171 () Bool)

(assert (=> d!12843 (=> (not res!9171) (not e!11054))))

(assert (=> d!12843 (= res!9171 (is-CC!32 lt!3232))))

(assert (=> d!12843 (= lt!3232 e!11047)))

(declare-fun c!5080 () Bool)

(declare-fun lt!3231 () Int)

(assert (=> d!12843 (= c!5080 (and (>= lt!3231 (- 1)) (<= lt!3231 1)))))

(assert (=> d!12843 (= lt!3231 (- (level!30 (right!680 xs!604)) (level!30 (insert!20 (left!677 xs!604) i!298 y!824))))))

(assert (=> d!12843 e!11048))

(declare-fun res!9170 () Bool)

(assert (=> d!12843 (=> (not res!9170) (not e!11048))))

(assert (=> d!12843 (= res!9170 e!11049)))

(declare-fun res!9167 () Bool)

(assert (=> d!12843 (=> (not res!9167) (not e!11049))))

(assert (=> d!12843 (= res!9167 (concInv!31 (insert!20 (left!677 xs!604) i!298 y!824)))))

(assert (=> d!12843 (= (concatNonEmpty!11 (insert!20 (left!677 xs!604) i!298 y!824) (right!680 xs!604)) lt!3232)))

(declare-fun b!21128 () Bool)

(declare-fun res!9161 () Bool)

(assert (=> b!21128 (=> (not res!9161) (not e!11048))))

(assert (=> b!21128 (= res!9161 (concInv!31 (right!680 xs!604)))))

(declare-fun b!21129 () Bool)

(declare-fun res!9164 () Bool)

(assert (=> b!21129 (=> (not res!9164) (not e!11050))))

(assert (=> b!21129 (= res!9164 (concInv!31 lt!3232))))

(declare-fun lt!3243 () Int)

(declare-fun lt!3236 () Int)

(declare-fun b!21130 () Bool)

(declare-fun lt!3237 () Bool)

(assert (=> b!21130 (= e!11052 (concatNonEmpty!11 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824)) (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))))))

(declare-fun b!21131 () Bool)

(declare-fun lt!3239 () Int)

(declare-fun lt!3241 () Int)

(declare-fun lt!3238 () Bool)

(assert (=> b!21131 (= e!11047 (ite lt!3238 (let ((res!9110 lt!3240)) (ite (>= lt!3236 lt!3243) (CC!32 (left!677 (insert!20 (left!677 xs!604) i!298 y!824)) res!9110) (ite (= lt!3239 (- lt!3241 3)) (CC!32 (left!677 (insert!20 (left!677 xs!604) i!298 y!824)) (CC!32 (left!677 (right!680 (insert!20 (left!677 xs!604) i!298 y!824))) res!9110)) (CC!32 (CC!32 (left!677 (insert!20 (left!677 xs!604) i!298 y!824)) (left!677 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) res!9110)))) (let ((res!9113 lt!3240)) (ite (>= lt!3236 lt!3243) (CC!32 res!9113 (right!680 (right!680 xs!604))) (ite (= lt!3239 (- lt!3241 3)) (CC!32 (CC!32 res!9113 (right!680 (left!677 (right!680 xs!604)))) (right!680 (right!680 xs!604))) (CC!32 res!9113 (CC!32 (right!680 (left!677 (right!680 xs!604))) (right!680 (right!680 xs!604)))))))))))

(assert (=> b!21131 (= lt!3241 e!11055)))

(declare-fun c!5077 () Bool)

(assert (=> b!21131 (= c!5077 (or lt!3234 (and (not lt!3238) (not (>= lt!3236 lt!3243)))))))

(assert (=> b!21131 (= lt!3234 (and lt!3238 (not (>= lt!3236 lt!3243))))))

(assert (=> b!21131 (= lt!3239 e!11053)))

(declare-fun c!5079 () Bool)

(assert (=> b!21131 (= c!5079 (or (and lt!3238 (not (>= lt!3236 lt!3243))) (and (not lt!3238) (not (>= lt!3236 lt!3243)))))))

(assert (=> b!21131 (= lt!3240 e!11052)))

(declare-fun c!5078 () Bool)

(assert (=> b!21131 (= c!5078 (or lt!3237 (not lt!3238)))))

(assert (=> b!21131 (= lt!3237 lt!3238)))

(assert (=> b!21131 (= lt!3243 (level!30 (ite lt!3238 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (left!677 (right!680 xs!604)))))))

(assert (=> b!21131 (= lt!3236 (level!30 (ite lt!3238 (left!677 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 xs!604)))))))

(assert (=> b!21131 (= lt!3238 (< lt!3231 (- 1)))))

(assert (= (and d!12843 res!9167) b!21119))

(assert (= (and d!12843 res!9170) b!21128))

(assert (= (and b!21128 res!9161) b!21120))

(assert (= (and b!21120 res!9174) b!21116))

(assert (= (and b!21116 res!9173) b!21111))

(assert (= (and b!21121 (is-CC!32 res!9163)) b!21124))

(assert (= (and b!21121 (is-Single!32 res!9163)) b!21127))

(assert (= (and b!21131 c!5078) b!21130))

(assert (= (and b!21131 (not c!5078)) b!21121))

(assert (= (and b!21131 c!5079) b!21122))

(assert (= (and b!21131 (not c!5079)) b!21113))

(assert (= (and b!21131 c!5077) b!21118))

(assert (= (and b!21131 (not c!5077)) b!21125))

(assert (= (and d!12843 c!5080) b!21117))

(assert (= (and d!12843 (not c!5080)) b!21131))

(assert (= (and d!12843 res!9171) b!21126))

(assert (= (and b!21126 res!9169) b!21115))

(assert (= (and b!21115 res!9166) b!21129))

(assert (= (and b!21129 res!9164) b!21114))

(assert (= (and b!21114 res!9162) b!21112))

(assert (= (and b!21112 res!9168) b!21123))

(assert (=> d!12843 m!23211))

(assert (=> d!12843 m!23177))

(declare-fun m!23255 () Bool)

(assert (=> d!12843 m!23255))

(assert (=> d!12843 m!23177))

(declare-fun m!23257 () Bool)

(assert (=> d!12843 m!23257))

(assert (=> b!21128 m!23253))

(declare-fun m!23259 () Bool)

(assert (=> b!21130 m!23259))

(assert (=> b!21119 m!23177))

(declare-fun m!23261 () Bool)

(assert (=> b!21119 m!23261))

(declare-fun m!23263 () Bool)

(assert (=> b!21114 m!23263))

(assert (=> b!21116 m!23177))

(declare-fun m!23265 () Bool)

(assert (=> b!21116 m!23265))

(assert (=> b!21115 m!23211))

(assert (=> b!21115 m!23177))

(assert (=> b!21115 m!23255))

(declare-fun m!23267 () Bool)

(assert (=> b!21115 m!23267))

(declare-fun m!23269 () Bool)

(assert (=> b!21129 m!23269))

(assert (=> b!21123 m!23177))

(declare-fun m!23271 () Bool)

(assert (=> b!21123 m!23271))

(assert (=> b!21111 m!23251))

(assert (=> b!21126 m!23211))

(assert (=> b!21126 m!23177))

(assert (=> b!21126 m!23255))

(assert (=> b!21126 m!23267))

(declare-fun m!23273 () Bool)

(assert (=> b!21122 m!23273))

(declare-fun m!23275 () Bool)

(assert (=> b!21118 m!23275))

(declare-fun m!23277 () Bool)

(assert (=> b!21131 m!23277))

(declare-fun m!23279 () Bool)

(assert (=> b!21131 m!23279))

(declare-fun m!23281 () Bool)

(assert (=> b!21120 m!23281))

(assert (=> b!21112 m!23177))

(declare-fun m!23283 () Bool)

(assert (=> b!21112 m!23283))

(assert (=> b!20974 d!12843))

(declare-fun b!21162 () Bool)

(declare-fun e!11076 () Conc!33)

(assert (=> b!21162 (= e!11076 (Single!32 y!824))))

(declare-fun b!21163 () Bool)

(declare-fun e!11072 () Bool)

(assert (=> b!21163 (= e!11072 (balanced!32 (left!677 xs!604)))))

(declare-fun b!21164 () Bool)

(declare-fun res!9200 () Bool)

(declare-fun e!11073 () Bool)

(assert (=> b!21164 (=> (not res!9200) (not e!11073))))

(declare-fun lt!3249 () Conc!33)

(assert (=> b!21164 (= res!9200 (not (isEmpty!295 lt!3249)))))

(declare-fun b!21165 () Bool)

(declare-fun e!11071 () Conc!33)

(assert (=> b!21165 (= e!11076 e!11071)))

(declare-fun c!5089 () Bool)

(assert (=> b!21165 (= c!5089 (is-Single!32 (left!677 xs!604)))))

(declare-fun b!21166 () Bool)

(declare-fun e!11070 () Bool)

(assert (=> b!21166 (= e!11070 (balanced!32 lt!3249))))

(declare-fun b!21167 () Bool)

(declare-fun res!9199 () Bool)

(declare-fun e!11075 () Bool)

(assert (=> b!21167 (=> (not res!9199) (not e!11075))))

(assert (=> b!21167 (= res!9199 (>= i!298 0))))

(declare-fun b!21168 () Bool)

(declare-fun res!9198 () Bool)

(assert (=> b!21168 (=> (not res!9198) (not e!11073))))

(assert (=> b!21168 (= res!9198 (insertAppendAxiomInst!13 (left!677 xs!604) i!298 y!824))))

(declare-fun b!21169 () Bool)

(declare-fun e!11074 () Conc!33)

(assert (=> b!21169 (= e!11071 e!11074)))

(declare-fun c!5087 () Bool)

(assert (=> b!21169 (= c!5087 (< i!298 (size!225 (left!677 (left!677 xs!604)))))))

(declare-fun b!21170 () Bool)

(assert (=> b!21170 (= e!11071 (ite (= i!298 0) (CC!32 (Single!32 y!824) (left!677 xs!604)) (CC!32 (left!677 xs!604) (Single!32 y!824))))))

(declare-fun b!21171 () Bool)

(assert (=> b!21171 (= e!11074 (concatNonEmpty!11 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824) (right!680 (left!677 xs!604))))))

(declare-fun b!21172 () Bool)

(assert (=> b!21172 (= e!11074 (concatNonEmpty!11 (left!677 (left!677 xs!604)) (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)))))

(declare-fun b!21173 () Bool)

(declare-fun res!9201 () Bool)

(assert (=> b!21173 (=> (not res!9201) (not e!11073))))

(assert (=> b!21173 (= res!9201 (<= (- (level!30 lt!3249) (level!30 (left!677 xs!604))) 1))))

(declare-fun d!12845 () Bool)

(assert (=> d!12845 e!11073))

(declare-fun res!9202 () Bool)

(assert (=> d!12845 (=> (not res!9202) (not e!11073))))

(assert (=> d!12845 (= res!9202 e!11070)))

(declare-fun res!9194 () Bool)

(assert (=> d!12845 (=> (not res!9194) (not e!11070))))

(assert (=> d!12845 (= res!9194 (concInv!31 lt!3249))))

(assert (=> d!12845 (= lt!3249 e!11076)))

(declare-fun c!5088 () Bool)

(assert (=> d!12845 (= c!5088 (is-Empty!43 (left!677 xs!604)))))

(assert (=> d!12845 e!11075))

(declare-fun res!9195 () Bool)

(assert (=> d!12845 (=> (not res!9195) (not e!11075))))

(assert (=> d!12845 (= res!9195 e!11072)))

(declare-fun res!9196 () Bool)

(assert (=> d!12845 (=> (not res!9196) (not e!11072))))

(assert (=> d!12845 (= res!9196 (concInv!31 (left!677 xs!604)))))

(assert (=> d!12845 (= (insert!20 (left!677 xs!604) i!298 y!824) lt!3249)))

(declare-fun b!21174 () Bool)

(declare-fun res!9197 () Bool)

(assert (=> b!21174 (=> (not res!9197) (not e!11073))))

(assert (=> b!21174 (= res!9197 (>= (level!30 lt!3249) (level!30 (left!677 xs!604))))))

(declare-fun b!21175 () Bool)

(assert (=> b!21175 (= e!11073 (= (toList!98 lt!3249) (insertAtIndex!11 (toList!98 (left!677 xs!604)) i!298 y!824)))))

(declare-fun b!21176 () Bool)

(assert (=> b!21176 (= e!11075 (<= i!298 (size!225 (left!677 xs!604))))))

(assert (= (and d!12845 res!9196) b!21163))

(assert (= (and d!12845 res!9195) b!21167))

(assert (= (and b!21167 res!9199) b!21176))

(assert (= (and b!21169 c!5087) b!21171))

(assert (= (and b!21169 (not c!5087)) b!21172))

(assert (= (and b!21165 c!5089) b!21170))

(assert (= (and b!21165 (not c!5089)) b!21169))

(assert (= (and d!12845 c!5088) b!21162))

(assert (= (and d!12845 (not c!5088)) b!21165))

(assert (= (and d!12845 res!9194) b!21166))

(assert (= (and d!12845 res!9202) b!21173))

(assert (= (and b!21173 res!9201) b!21174))

(assert (= (and b!21174 res!9197) b!21164))

(assert (= (and b!21164 res!9200) b!21168))

(assert (= (and b!21168 res!9198) b!21175))

(declare-fun m!23285 () Bool)

(assert (=> d!12845 m!23285))

(assert (=> d!12845 m!23247))

(declare-fun m!23287 () Bool)

(assert (=> b!21166 m!23287))

(declare-fun m!23289 () Bool)

(assert (=> b!21168 m!23289))

(declare-fun m!23291 () Bool)

(assert (=> b!21171 m!23291))

(assert (=> b!21171 m!23291))

(declare-fun m!23293 () Bool)

(assert (=> b!21171 m!23293))

(declare-fun m!23295 () Bool)

(assert (=> b!21175 m!23295))

(assert (=> b!21175 m!23201))

(assert (=> b!21175 m!23201))

(declare-fun m!23297 () Bool)

(assert (=> b!21175 m!23297))

(assert (=> b!21172 m!23243))

(declare-fun m!23299 () Bool)

(assert (=> b!21172 m!23299))

(assert (=> b!21172 m!23299))

(declare-fun m!23301 () Bool)

(assert (=> b!21172 m!23301))

(declare-fun m!23303 () Bool)

(assert (=> b!21163 m!23303))

(assert (=> b!21176 m!23193))

(declare-fun m!23305 () Bool)

(assert (=> b!21173 m!23305))

(assert (=> b!21173 m!23213))

(assert (=> b!21174 m!23305))

(assert (=> b!21174 m!23213))

(assert (=> b!21169 m!23243))

(declare-fun m!23307 () Bool)

(assert (=> b!21164 m!23307))

(assert (=> b!20974 d!12845))

(declare-fun b!21179 () Bool)

(declare-fun res!9204 () Bool)

(declare-fun e!11078 () Bool)

(assert (=> b!21179 (=> (not res!9204) (not e!11078))))

(assert (=> b!21179 (= res!9204 (balanced!32 (left!677 xs!604)))))

(declare-fun b!21180 () Bool)

(assert (=> b!21180 (= e!11078 (balanced!32 (right!680 xs!604)))))

(declare-fun b!21178 () Bool)

(declare-fun res!9205 () Bool)

(assert (=> b!21178 (=> (not res!9205) (not e!11078))))

(assert (=> b!21178 (= res!9205 (<= (- (level!30 (left!677 xs!604)) (level!30 (right!680 xs!604))) 1))))

(declare-fun d!12847 () Bool)

(declare-fun res!9206 () Bool)

(declare-fun e!11077 () Bool)

(assert (=> d!12847 (=> res!9206 e!11077)))

(assert (=> d!12847 (= res!9206 (not (is-CC!32 xs!604)))))

(assert (=> d!12847 (= (balanced!32 xs!604) e!11077)))

(declare-fun b!21177 () Bool)

(assert (=> b!21177 (= e!11077 e!11078)))

(declare-fun res!9203 () Bool)

(assert (=> b!21177 (=> (not res!9203) (not e!11078))))

(assert (=> b!21177 (= res!9203 (>= (- (level!30 (left!677 xs!604)) (level!30 (right!680 xs!604))) (- 1)))))

(assert (= (and d!12847 (not res!9206)) b!21177))

(assert (= (and b!21177 res!9203) b!21178))

(assert (= (and b!21178 res!9205) b!21179))

(assert (= (and b!21179 res!9204) b!21180))

(assert (=> b!21179 m!23303))

(assert (=> b!21180 m!23281))

(assert (=> b!21178 m!23213))

(assert (=> b!21178 m!23211))

(assert (=> b!21177 m!23213))

(assert (=> b!21177 m!23211))

(assert (=> b!20983 d!12847))

(declare-fun d!12849 () Bool)

(declare-fun lt!3250 () Int)

(assert (=> d!12849 (>= lt!3250 0)))

(declare-fun e!11079 () Int)

(assert (=> d!12849 (= lt!3250 e!11079)))

(declare-fun c!5090 () Bool)

(assert (=> d!12849 (= c!5090 (is-Empty!43 xs!604))))

(assert (=> d!12849 (= (size!225 xs!604) lt!3250)))

(declare-fun b!21183 () Bool)

(declare-fun e!11080 () Int)

(assert (=> b!21183 (= e!11080 1)))

(declare-fun b!21184 () Bool)

(assert (=> b!21184 (= e!11080 (+ (size!225 (left!677 xs!604)) (size!225 (right!680 xs!604))))))

(declare-fun b!21181 () Bool)

(assert (=> b!21181 (= e!11079 0)))

(declare-fun b!21182 () Bool)

(assert (=> b!21182 (= e!11079 e!11080)))

(declare-fun c!5091 () Bool)

(assert (=> b!21182 (= c!5091 (is-Single!32 xs!604))))

(assert (= (and b!21182 c!5091) b!21183))

(assert (= (and b!21182 (not c!5091)) b!21184))

(assert (= (and d!12849 c!5090) b!21181))

(assert (= (and d!12849 (not c!5090)) b!21182))

(assert (=> b!21184 m!23193))

(declare-fun m!23309 () Bool)

(assert (=> b!21184 m!23309))

(assert (=> b!20984 d!12849))

(declare-fun b!21191 () Bool)

(declare-fun e!11083 () Bool)

(declare-fun tp!4763 () Bool)

(declare-fun tp!4764 () Bool)

(assert (=> b!21191 (= e!11083 (and tp!4763 tp!4764))))

(declare-fun b!21192 () Bool)

(assert (=> b!21192 (= e!11083 tp_is_empty!101)))

(assert (=> b!20972 (= tp!4750 e!11083)))

(assert (= (and b!20972 (is-CC!32 (left!677 res!5609))) b!21191))

(assert (= (and b!20972 (is-Single!32 (left!677 res!5609))) b!21192))

(declare-fun b!21193 () Bool)

(declare-fun e!11084 () Bool)

(declare-fun tp!4765 () Bool)

(declare-fun tp!4766 () Bool)

(assert (=> b!21193 (= e!11084 (and tp!4765 tp!4766))))

(declare-fun b!21194 () Bool)

(assert (=> b!21194 (= e!11084 tp_is_empty!101)))

(assert (=> b!20972 (= tp!4749 e!11084)))

(assert (= (and b!20972 (is-CC!32 (right!680 res!5609))) b!21193))

(assert (= (and b!20972 (is-Single!32 (right!680 res!5609))) b!21194))

(declare-fun b!21195 () Bool)

(declare-fun e!11085 () Bool)

(declare-fun tp!4767 () Bool)

(declare-fun tp!4768 () Bool)

(assert (=> b!21195 (= e!11085 (and tp!4767 tp!4768))))

(declare-fun b!21196 () Bool)

(assert (=> b!21196 (= e!11085 tp_is_empty!101)))

(assert (=> b!20971 (= tp!4752 e!11085)))

(assert (= (and b!20971 (is-CC!32 (left!677 xs!604))) b!21195))

(assert (= (and b!20971 (is-Single!32 (left!677 xs!604))) b!21196))

(declare-fun b!21197 () Bool)

(declare-fun e!11086 () Bool)

(declare-fun tp!4769 () Bool)

(declare-fun tp!4770 () Bool)

(assert (=> b!21197 (= e!11086 (and tp!4769 tp!4770))))

(declare-fun b!21198 () Bool)

(assert (=> b!21198 (= e!11086 tp_is_empty!101)))

(assert (=> b!20971 (= tp!4751 e!11086)))

(assert (= (and b!20971 (is-CC!32 (right!680 xs!604))) b!21197))

(assert (= (and b!20971 (is-Single!32 (right!680 xs!604))) b!21198))

(push 1)

(assert (not b!21178))

(assert (not b!21024))

(assert (not b!21123))

(assert (not b!21172))

(assert (not b!21116))

(assert (not b!21052))

(assert (not b!21128))

(assert (not b!21174))

(assert (not b!21120))

(assert (not b!21126))

(assert (not b!21124))

(assert (not d!12845))

(assert (not b!21022))

(assert (not b!21173))

(assert (not b!21131))

(assert (not b!20998))

(assert (not b!21023))

(assert (not b!21065))

(assert (not b!21011))

(assert (not b!21176))

(assert (not b!21193))

(assert (not b!21191))

(assert (not b!21177))

(assert (not b!21048))

(assert (not b!21195))

(assert (not b!20992))

(assert (not b!21118))

(assert (not b!21115))

(assert (not b!21111))

(assert (not b!21184))

(assert (not b!21114))

(assert (not b!21175))

(assert (not b!21179))

(assert (not b!21068))

(assert (not b!21012))

(assert (not b!21009))

(assert (not b!21197))

(assert (not b!21129))

(assert (not b!21168))

(assert (not b!21130))

(assert (not b!21122))

(assert (not b!21119))

(assert (not b!21066))

(assert (not b!21171))

(assert (not b!21166))

(assert (not d!12831))

(assert (not b!20991))

(assert (not b!21021))

(assert (not b!21000))

(assert (not b!21064))

(assert (not b!21010))

(assert tp_is_empty!101)

(assert (not b!21169))

(assert (not b!21180))

(assert (not d!12835))

(assert (not b!21164))

(assert (not b!21067))

(assert (not b!21036))

(assert (not d!12843))

(assert (not b!21163))

(assert (not b!21112))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!21201 () Bool)

(declare-fun res!9208 () Bool)

(declare-fun e!11088 () Bool)

(assert (=> b!21201 (=> (not res!9208) (not e!11088))))

(assert (=> b!21201 (= res!9208 (balanced!32 (left!677 (right!680 res!5609))))))

(declare-fun b!21202 () Bool)

(assert (=> b!21202 (= e!11088 (balanced!32 (right!680 (right!680 res!5609))))))

(declare-fun b!21200 () Bool)

(declare-fun res!9209 () Bool)

(assert (=> b!21200 (=> (not res!9209) (not e!11088))))

(assert (=> b!21200 (= res!9209 (<= (- (level!30 (left!677 (right!680 res!5609))) (level!30 (right!680 (right!680 res!5609)))) 1))))

(declare-fun d!12851 () Bool)

(declare-fun res!9210 () Bool)

(declare-fun e!11087 () Bool)

(assert (=> d!12851 (=> res!9210 e!11087)))

(assert (=> d!12851 (= res!9210 (not (is-CC!32 (right!680 res!5609))))))

(assert (=> d!12851 (= (balanced!32 (right!680 res!5609)) e!11087)))

(declare-fun b!21199 () Bool)

(assert (=> b!21199 (= e!11087 e!11088)))

(declare-fun res!9207 () Bool)

(assert (=> b!21199 (=> (not res!9207) (not e!11088))))

(assert (=> b!21199 (= res!9207 (>= (- (level!30 (left!677 (right!680 res!5609))) (level!30 (right!680 (right!680 res!5609)))) (- 1)))))

(assert (= (and d!12851 (not res!9210)) b!21199))

(assert (= (and b!21199 res!9207) b!21200))

(assert (= (and b!21200 res!9209) b!21201))

(assert (= (and b!21201 res!9208) b!21202))

(declare-fun m!23311 () Bool)

(assert (=> b!21201 m!23311))

(declare-fun m!23313 () Bool)

(assert (=> b!21202 m!23313))

(declare-fun m!23315 () Bool)

(assert (=> b!21200 m!23315))

(declare-fun m!23317 () Bool)

(assert (=> b!21200 m!23317))

(assert (=> b!21199 m!23315))

(assert (=> b!21199 m!23317))

(assert (=> b!21012 d!12851))

(declare-fun d!12853 () Bool)

(assert (=> d!12853 (= (isEmpty!295 (right!680 res!5609)) (= (right!680 res!5609) Empty!43))))

(assert (=> b!21022 d!12853))

(declare-fun e!11099 () Bool)

(declare-fun b!21213 () Bool)

(assert (=> b!21213 (= e!11099 (appendInsertIndex!12 (t!4333 (toList!98 (left!677 xs!604))) (toList!98 (right!680 xs!604)) (- i!298 1) y!824))))

(declare-fun d!12855 () Bool)

(declare-fun e!11100 () Bool)

(assert (=> d!12855 e!11100))

(declare-fun res!9218 () Bool)

(assert (=> d!12855 (=> (not res!9218) (not e!11100))))

(assert (=> d!12855 (= res!9218 e!11099)))

(declare-fun res!9217 () Bool)

(assert (=> d!12855 (=> res!9217 e!11099)))

(assert (=> d!12855 (= res!9217 (or (is-Nil!333 (toList!98 (left!677 xs!604))) (= i!298 0)))))

(declare-fun e!11097 () Bool)

(assert (=> d!12855 e!11097))

(declare-fun res!9219 () Bool)

(assert (=> d!12855 (=> (not res!9219) (not e!11097))))

(assert (=> d!12855 (= res!9219 (<= 0 i!298))))

(assert (=> d!12855 (= (appendInsertIndex!12 (toList!98 (left!677 xs!604)) (toList!98 (right!680 xs!604)) i!298 y!824) true)))

(declare-fun e!11098 () List!338)

(declare-fun b!21214 () Bool)

(assert (=> b!21214 (= e!11098 (++!21 (insertAtIndex!11 (toList!98 (left!677 xs!604)) i!298 y!824) (toList!98 (right!680 xs!604))))))

(declare-fun b!21215 () Bool)

(assert (=> b!21215 (= e!11100 (= (insertAtIndex!11 (++!21 (toList!98 (left!677 xs!604)) (toList!98 (right!680 xs!604))) i!298 y!824) e!11098))))

(declare-fun c!5094 () Bool)

(assert (=> b!21215 (= c!5094 (< i!298 (size!226 (toList!98 (left!677 xs!604)))))))

(declare-fun b!21216 () Bool)

(assert (=> b!21216 (= e!11097 (<= i!298 (+ (size!226 (toList!98 (left!677 xs!604))) (size!226 (toList!98 (right!680 xs!604))))))))

(declare-fun b!21217 () Bool)

(assert (=> b!21217 (= e!11098 (++!21 (toList!98 (left!677 xs!604)) (insertAtIndex!11 (toList!98 (right!680 xs!604)) (- i!298 (size!226 (toList!98 (left!677 xs!604)))) y!824)))))

(assert (= (and d!12855 res!9219) b!21216))

(assert (= (and d!12855 (not res!9217)) b!21213))

(assert (= (and d!12855 res!9218) b!21215))

(assert (= (and b!21215 c!5094) b!21214))

(assert (= (and b!21215 (not c!5094)) b!21217))

(assert (=> b!21213 m!23203))

(declare-fun m!23319 () Bool)

(assert (=> b!21213 m!23319))

(assert (=> b!21217 m!23201))

(declare-fun m!23321 () Bool)

(assert (=> b!21217 m!23321))

(assert (=> b!21217 m!23203))

(declare-fun m!23323 () Bool)

(assert (=> b!21217 m!23323))

(assert (=> b!21217 m!23201))

(assert (=> b!21217 m!23323))

(declare-fun m!23325 () Bool)

(assert (=> b!21217 m!23325))

(assert (=> b!21214 m!23201))

(assert (=> b!21214 m!23297))

(assert (=> b!21214 m!23297))

(assert (=> b!21214 m!23203))

(declare-fun m!23327 () Bool)

(assert (=> b!21214 m!23327))

(assert (=> b!21215 m!23201))

(assert (=> b!21215 m!23203))

(assert (=> b!21215 m!23241))

(assert (=> b!21215 m!23241))

(declare-fun m!23329 () Bool)

(assert (=> b!21215 m!23329))

(assert (=> b!21215 m!23201))

(assert (=> b!21215 m!23321))

(assert (=> b!21216 m!23201))

(assert (=> b!21216 m!23321))

(assert (=> b!21216 m!23203))

(declare-fun m!23331 () Bool)

(assert (=> b!21216 m!23331))

(assert (=> b!20992 d!12855))

(declare-fun b!21219 () Bool)

(declare-fun e!11101 () List!338)

(declare-fun e!11102 () List!338)

(assert (=> b!21219 (= e!11101 e!11102)))

(declare-fun c!5096 () Bool)

(assert (=> b!21219 (= c!5096 (is-Single!32 (left!677 xs!604)))))

(declare-fun b!21218 () Bool)

(assert (=> b!21218 (= e!11101 Nil!333)))

(declare-fun d!12857 () Bool)

(declare-fun lt!3251 () List!338)

(assert (=> d!12857 (= (size!226 lt!3251) (size!225 (left!677 xs!604)))))

(assert (=> d!12857 (= lt!3251 e!11101)))

(declare-fun c!5095 () Bool)

(assert (=> d!12857 (= c!5095 (is-Empty!43 (left!677 xs!604)))))

(assert (=> d!12857 (= (toList!98 (left!677 xs!604)) lt!3251)))

(declare-fun b!21220 () Bool)

(assert (=> b!21220 (= e!11102 (Cons!332 (x!8795 (left!677 xs!604)) Nil!333))))

(declare-fun b!21221 () Bool)

(assert (=> b!21221 (= e!11102 (++!21 (toList!98 (left!677 (left!677 xs!604))) (toList!98 (right!680 (left!677 xs!604)))))))

(assert (= (and b!21219 c!5096) b!21220))

(assert (= (and b!21219 (not c!5096)) b!21221))

(assert (= (and d!12857 c!5095) b!21218))

(assert (= (and d!12857 (not c!5095)) b!21219))

(declare-fun m!23333 () Bool)

(assert (=> d!12857 m!23333))

(assert (=> d!12857 m!23193))

(declare-fun m!23335 () Bool)

(assert (=> b!21221 m!23335))

(declare-fun m!23337 () Bool)

(assert (=> b!21221 m!23337))

(assert (=> b!21221 m!23335))

(assert (=> b!21221 m!23337))

(declare-fun m!23339 () Bool)

(assert (=> b!21221 m!23339))

(assert (=> b!20992 d!12857))

(declare-fun b!21223 () Bool)

(declare-fun e!11103 () List!338)

(declare-fun e!11104 () List!338)

(assert (=> b!21223 (= e!11103 e!11104)))

(declare-fun c!5098 () Bool)

(assert (=> b!21223 (= c!5098 (is-Single!32 (right!680 xs!604)))))

(declare-fun b!21222 () Bool)

(assert (=> b!21222 (= e!11103 Nil!333)))

(declare-fun d!12859 () Bool)

(declare-fun lt!3252 () List!338)

(assert (=> d!12859 (= (size!226 lt!3252) (size!225 (right!680 xs!604)))))

(assert (=> d!12859 (= lt!3252 e!11103)))

(declare-fun c!5097 () Bool)

(assert (=> d!12859 (= c!5097 (is-Empty!43 (right!680 xs!604)))))

(assert (=> d!12859 (= (toList!98 (right!680 xs!604)) lt!3252)))

(declare-fun b!21224 () Bool)

(assert (=> b!21224 (= e!11104 (Cons!332 (x!8795 (right!680 xs!604)) Nil!333))))

(declare-fun b!21225 () Bool)

(assert (=> b!21225 (= e!11104 (++!21 (toList!98 (left!677 (right!680 xs!604))) (toList!98 (right!680 (right!680 xs!604)))))))

(assert (= (and b!21223 c!5098) b!21224))

(assert (= (and b!21223 (not c!5098)) b!21225))

(assert (= (and d!12859 c!5097) b!21222))

(assert (= (and d!12859 (not c!5097)) b!21223))

(declare-fun m!23341 () Bool)

(assert (=> d!12859 m!23341))

(assert (=> d!12859 m!23309))

(declare-fun m!23343 () Bool)

(assert (=> b!21225 m!23343))

(declare-fun m!23345 () Bool)

(assert (=> b!21225 m!23345))

(assert (=> b!21225 m!23343))

(assert (=> b!21225 m!23345))

(declare-fun m!23347 () Bool)

(assert (=> b!21225 m!23347))

(assert (=> b!20992 d!12859))

(declare-fun b!21228 () Bool)

(declare-fun res!9221 () Bool)

(declare-fun e!11106 () Bool)

(assert (=> b!21228 (=> (not res!9221) (not e!11106))))

(assert (=> b!21228 (= res!9221 (balanced!32 (left!677 lt!3249)))))

(declare-fun b!21229 () Bool)

(assert (=> b!21229 (= e!11106 (balanced!32 (right!680 lt!3249)))))

(declare-fun b!21227 () Bool)

(declare-fun res!9222 () Bool)

(assert (=> b!21227 (=> (not res!9222) (not e!11106))))

(assert (=> b!21227 (= res!9222 (<= (- (level!30 (left!677 lt!3249)) (level!30 (right!680 lt!3249))) 1))))

(declare-fun d!12861 () Bool)

(declare-fun res!9223 () Bool)

(declare-fun e!11105 () Bool)

(assert (=> d!12861 (=> res!9223 e!11105)))

(assert (=> d!12861 (= res!9223 (not (is-CC!32 lt!3249)))))

(assert (=> d!12861 (= (balanced!32 lt!3249) e!11105)))

(declare-fun b!21226 () Bool)

(assert (=> b!21226 (= e!11105 e!11106)))

(declare-fun res!9220 () Bool)

(assert (=> b!21226 (=> (not res!9220) (not e!11106))))

(assert (=> b!21226 (= res!9220 (>= (- (level!30 (left!677 lt!3249)) (level!30 (right!680 lt!3249))) (- 1)))))

(assert (= (and d!12861 (not res!9223)) b!21226))

(assert (= (and b!21226 res!9220) b!21227))

(assert (= (and b!21227 res!9222) b!21228))

(assert (= (and b!21228 res!9221) b!21229))

(declare-fun m!23349 () Bool)

(assert (=> b!21228 m!23349))

(declare-fun m!23351 () Bool)

(assert (=> b!21229 m!23351))

(declare-fun m!23353 () Bool)

(assert (=> b!21227 m!23353))

(declare-fun m!23355 () Bool)

(assert (=> b!21227 m!23355))

(assert (=> b!21226 m!23353))

(assert (=> b!21226 m!23355))

(assert (=> b!21166 d!12861))

(declare-fun b!21232 () Bool)

(declare-fun res!9226 () Bool)

(declare-fun e!11108 () Bool)

(assert (=> b!21232 (=> (not res!9226) (not e!11108))))

(assert (=> b!21232 (= res!9226 (concInv!31 (left!677 (left!677 res!5609))))))

(declare-fun b!21230 () Bool)

(declare-fun e!11107 () Bool)

(assert (=> b!21230 (= e!11107 e!11108)))

(declare-fun res!9225 () Bool)

(assert (=> b!21230 (=> (not res!9225) (not e!11108))))

(assert (=> b!21230 (= res!9225 (not (isEmpty!295 (left!677 (left!677 res!5609)))))))

(declare-fun b!21231 () Bool)

(declare-fun res!9224 () Bool)

(assert (=> b!21231 (=> (not res!9224) (not e!11108))))

(assert (=> b!21231 (= res!9224 (not (isEmpty!295 (right!680 (left!677 res!5609)))))))

(declare-fun b!21233 () Bool)

(assert (=> b!21233 (= e!11108 (concInv!31 (right!680 (left!677 res!5609))))))

(declare-fun d!12863 () Bool)

(declare-fun res!9227 () Bool)

(assert (=> d!12863 (=> res!9227 e!11107)))

(assert (=> d!12863 (= res!9227 (not (is-CC!32 (left!677 res!5609))))))

(assert (=> d!12863 (= (concInv!31 (left!677 res!5609)) e!11107)))

(assert (= (and d!12863 (not res!9227)) b!21230))

(assert (= (and b!21230 res!9225) b!21231))

(assert (= (and b!21231 res!9224) b!21232))

(assert (= (and b!21232 res!9226) b!21233))

(declare-fun m!23357 () Bool)

(assert (=> b!21232 m!23357))

(declare-fun m!23359 () Bool)

(assert (=> b!21230 m!23359))

(declare-fun m!23361 () Bool)

(assert (=> b!21231 m!23361))

(declare-fun m!23363 () Bool)

(assert (=> b!21233 m!23363))

(assert (=> b!21023 d!12863))

(declare-fun b!21235 () Bool)

(declare-fun e!11109 () Int)

(declare-fun lt!3253 () Int)

(declare-fun lt!3255 () Int)

(assert (=> b!21235 (= e!11109 (+ 1 (ite (>= lt!3253 lt!3255) lt!3253 lt!3255)))))

(assert (=> b!21235 (= lt!3255 (level!30 (right!680 lt!3240)))))

(assert (=> b!21235 (= lt!3253 (level!30 (left!677 lt!3240)))))

(declare-fun d!12865 () Bool)

(declare-fun lt!3254 () Int)

(assert (=> d!12865 (>= lt!3254 0)))

(assert (=> d!12865 (= lt!3254 e!11109)))

(declare-fun c!5099 () Bool)

(assert (=> d!12865 (= c!5099 (or (is-Empty!43 lt!3240) (is-Single!32 lt!3240)))))

(assert (=> d!12865 (= (level!30 lt!3240) lt!3254)))

(declare-fun b!21234 () Bool)

(assert (=> b!21234 (= e!11109 0)))

(assert (= (and d!12865 c!5099) b!21234))

(assert (= (and d!12865 (not c!5099)) b!21235))

(declare-fun m!23365 () Bool)

(assert (=> b!21235 m!23365))

(declare-fun m!23367 () Bool)

(assert (=> b!21235 m!23367))

(assert (=> b!21122 d!12865))

(declare-fun b!21237 () Bool)

(declare-fun e!11110 () Int)

(declare-fun lt!3256 () Int)

(declare-fun lt!3258 () Int)

(assert (=> b!21237 (= e!11110 (+ 1 (ite (>= lt!3256 lt!3258) lt!3256 lt!3258)))))

(assert (=> b!21237 (= lt!3258 (level!30 (right!680 (left!677 res!5609))))))

(assert (=> b!21237 (= lt!3256 (level!30 (left!677 (left!677 res!5609))))))

(declare-fun d!12867 () Bool)

(declare-fun lt!3257 () Int)

(assert (=> d!12867 (>= lt!3257 0)))

(assert (=> d!12867 (= lt!3257 e!11110)))

(declare-fun c!5100 () Bool)

(assert (=> d!12867 (= c!5100 (or (is-Empty!43 (left!677 res!5609)) (is-Single!32 (left!677 res!5609))))))

(assert (=> d!12867 (= (level!30 (left!677 res!5609)) lt!3257)))

(declare-fun b!21236 () Bool)

(assert (=> b!21236 (= e!11110 0)))

(assert (= (and d!12867 c!5100) b!21236))

(assert (= (and d!12867 (not c!5100)) b!21237))

(declare-fun m!23369 () Bool)

(assert (=> b!21237 m!23369))

(declare-fun m!23371 () Bool)

(assert (=> b!21237 m!23371))

(assert (=> b!21009 d!12867))

(declare-fun b!21239 () Bool)

(declare-fun e!11111 () Int)

(declare-fun lt!3259 () Int)

(declare-fun lt!3261 () Int)

(assert (=> b!21239 (= e!11111 (+ 1 (ite (>= lt!3259 lt!3261) lt!3259 lt!3261)))))

(assert (=> b!21239 (= lt!3261 (level!30 (right!680 (right!680 res!5609))))))

(assert (=> b!21239 (= lt!3259 (level!30 (left!677 (right!680 res!5609))))))

(declare-fun d!12869 () Bool)

(declare-fun lt!3260 () Int)

(assert (=> d!12869 (>= lt!3260 0)))

(assert (=> d!12869 (= lt!3260 e!11111)))

(declare-fun c!5101 () Bool)

(assert (=> d!12869 (= c!5101 (or (is-Empty!43 (right!680 res!5609)) (is-Single!32 (right!680 res!5609))))))

(assert (=> d!12869 (= (level!30 (right!680 res!5609)) lt!3260)))

(declare-fun b!21238 () Bool)

(assert (=> b!21238 (= e!11111 0)))

(assert (= (and d!12869 c!5101) b!21238))

(assert (= (and d!12869 (not c!5101)) b!21239))

(assert (=> b!21239 m!23317))

(assert (=> b!21239 m!23315))

(assert (=> b!21009 d!12869))

(declare-fun b!21242 () Bool)

(declare-fun res!9230 () Bool)

(declare-fun e!11113 () Bool)

(assert (=> b!21242 (=> (not res!9230) (not e!11113))))

(assert (=> b!21242 (= res!9230 (concInv!31 (left!677 (right!680 res!5609))))))

(declare-fun b!21240 () Bool)

(declare-fun e!11112 () Bool)

(assert (=> b!21240 (= e!11112 e!11113)))

(declare-fun res!9229 () Bool)

(assert (=> b!21240 (=> (not res!9229) (not e!11113))))

(assert (=> b!21240 (= res!9229 (not (isEmpty!295 (left!677 (right!680 res!5609)))))))

(declare-fun b!21241 () Bool)

(declare-fun res!9228 () Bool)

(assert (=> b!21241 (=> (not res!9228) (not e!11113))))

(assert (=> b!21241 (= res!9228 (not (isEmpty!295 (right!680 (right!680 res!5609)))))))

(declare-fun b!21243 () Bool)

(assert (=> b!21243 (= e!11113 (concInv!31 (right!680 (right!680 res!5609))))))

(declare-fun d!12871 () Bool)

(declare-fun res!9231 () Bool)

(assert (=> d!12871 (=> res!9231 e!11112)))

(assert (=> d!12871 (= res!9231 (not (is-CC!32 (right!680 res!5609))))))

(assert (=> d!12871 (= (concInv!31 (right!680 res!5609)) e!11112)))

(assert (= (and d!12871 (not res!9231)) b!21240))

(assert (= (and b!21240 res!9229) b!21241))

(assert (= (and b!21241 res!9228) b!21242))

(assert (= (and b!21242 res!9230) b!21243))

(declare-fun m!23373 () Bool)

(assert (=> b!21242 m!23373))

(declare-fun m!23375 () Bool)

(assert (=> b!21240 m!23375))

(declare-fun m!23377 () Bool)

(assert (=> b!21241 m!23377))

(declare-fun m!23379 () Bool)

(assert (=> b!21243 m!23379))

(assert (=> b!21024 d!12871))

(declare-fun b!21245 () Bool)

(declare-fun e!11114 () Int)

(declare-fun lt!3262 () Int)

(declare-fun lt!3264 () Int)

(assert (=> b!21245 (= e!11114 (+ 1 (ite (>= lt!3262 lt!3264) lt!3262 lt!3264)))))

(assert (=> b!21245 (= lt!3264 (level!30 (right!680 lt!3249)))))

(assert (=> b!21245 (= lt!3262 (level!30 (left!677 lt!3249)))))

(declare-fun d!12873 () Bool)

(declare-fun lt!3263 () Int)

(assert (=> d!12873 (>= lt!3263 0)))

(assert (=> d!12873 (= lt!3263 e!11114)))

(declare-fun c!5102 () Bool)

(assert (=> d!12873 (= c!5102 (or (is-Empty!43 lt!3249) (is-Single!32 lt!3249)))))

(assert (=> d!12873 (= (level!30 lt!3249) lt!3263)))

(declare-fun b!21244 () Bool)

(assert (=> b!21244 (= e!11114 0)))

(assert (= (and d!12873 c!5102) b!21244))

(assert (= (and d!12873 (not c!5102)) b!21245))

(assert (=> b!21245 m!23355))

(assert (=> b!21245 m!23353))

(assert (=> b!21173 d!12873))

(declare-fun b!21247 () Bool)

(declare-fun e!11115 () Int)

(declare-fun lt!3265 () Int)

(declare-fun lt!3267 () Int)

(assert (=> b!21247 (= e!11115 (+ 1 (ite (>= lt!3265 lt!3267) lt!3265 lt!3267)))))

(assert (=> b!21247 (= lt!3267 (level!30 (right!680 (left!677 xs!604))))))

(assert (=> b!21247 (= lt!3265 (level!30 (left!677 (left!677 xs!604))))))

(declare-fun d!12875 () Bool)

(declare-fun lt!3266 () Int)

(assert (=> d!12875 (>= lt!3266 0)))

(assert (=> d!12875 (= lt!3266 e!11115)))

(declare-fun c!5103 () Bool)

(assert (=> d!12875 (= c!5103 (or (is-Empty!43 (left!677 xs!604)) (is-Single!32 (left!677 xs!604))))))

(assert (=> d!12875 (= (level!30 (left!677 xs!604)) lt!3266)))

(declare-fun b!21246 () Bool)

(assert (=> b!21246 (= e!11115 0)))

(assert (= (and d!12875 c!5103) b!21246))

(assert (= (and d!12875 (not c!5103)) b!21247))

(declare-fun m!23381 () Bool)

(assert (=> b!21247 m!23381))

(declare-fun m!23383 () Bool)

(assert (=> b!21247 m!23383))

(assert (=> b!21173 d!12875))

(assert (=> b!20998 d!12869))

(assert (=> b!20998 d!12867))

(declare-fun b!21266 () Bool)

(declare-fun e!11136 () Bool)

(declare-fun e!11141 () Bool)

(assert (=> b!21266 (= e!11136 e!11141)))

(declare-fun res!9251 () Bool)

(assert (=> b!21266 (=> (not res!9251) (not e!11141))))

(declare-fun appendAssoc!4 (List!338 List!338 List!338) Bool)

(assert (=> b!21266 (= res!9251 (appendAssoc!4 (toList!98 (insert!20 (left!677 xs!604) i!298 y!824)) (toList!98 (left!677 (left!677 (right!680 xs!604)))) (toList!98 (right!680 (left!677 (right!680 xs!604))))))))

(declare-fun b!21267 () Bool)

(declare-fun e!11137 () Bool)

(declare-fun e!11135 () Bool)

(assert (=> b!21267 (= e!11137 e!11135)))

(declare-fun res!9250 () Bool)

(assert (=> b!21267 (=> (not res!9250) (not e!11135))))

(assert (=> b!21267 (= res!9250 (appendAssoc!4 (toList!98 (left!677 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (toList!98 (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (toList!98 (right!680 xs!604))))))

(declare-fun b!21268 () Bool)

(assert (=> b!21268 (= e!11141 (appendAssoc!4 (++!21 (toList!98 (insert!20 (left!677 xs!604) i!298 y!824)) (toList!98 (left!677 (left!677 (right!680 xs!604))))) (toList!98 (right!680 (left!677 (right!680 xs!604)))) (toList!98 (right!680 (right!680 xs!604)))))))

(declare-fun b!21269 () Bool)

(assert (=> b!21269 (= e!11135 (appendAssoc!4 (toList!98 (left!677 (insert!20 (left!677 xs!604) i!298 y!824))) (toList!98 (left!677 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (++!21 (toList!98 (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (toList!98 (right!680 xs!604)))))))

(declare-fun b!21270 () Bool)

(declare-fun e!11139 () Bool)

(declare-fun e!11134 () Bool)

(assert (=> b!21270 (= e!11139 e!11134)))

(declare-fun res!9253 () Bool)

(assert (=> b!21270 (=> (not res!9253) (not e!11134))))

(assert (=> b!21270 (= res!9253 (appendAssoc!4 (toList!98 (insert!20 (left!677 xs!604) i!298 y!824)) (toList!98 (left!677 (right!680 xs!604))) (toList!98 (right!680 (right!680 xs!604)))))))

(declare-fun b!21271 () Bool)

(declare-fun e!11138 () Bool)

(assert (=> b!21271 (= e!11138 e!11137)))

(declare-fun res!9256 () Bool)

(assert (=> b!21271 (=> res!9256 e!11137)))

(assert (=> b!21271 (= res!9256 (not (is-CC!32 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))))))

(declare-fun b!21272 () Bool)

(assert (=> b!21272 (= e!11134 e!11136)))

(declare-fun res!9255 () Bool)

(assert (=> b!21272 (=> res!9255 e!11136)))

(assert (=> b!21272 (= res!9255 (not (is-CC!32 (left!677 (right!680 xs!604)))))))

(declare-fun d!12877 () Bool)

(declare-fun e!11142 () Bool)

(assert (=> d!12877 e!11142))

(declare-fun res!9258 () Bool)

(assert (=> d!12877 (=> (not res!9258) (not e!11142))))

(declare-fun e!11140 () Bool)

(assert (=> d!12877 (= res!9258 e!11140)))

(declare-fun res!9254 () Bool)

(assert (=> d!12877 (=> res!9254 e!11140)))

(assert (=> d!12877 (= res!9254 (not (is-CC!32 (insert!20 (left!677 xs!604) i!298 y!824))))))

(assert (=> d!12877 (= (appendAssocInst!7 (insert!20 (left!677 xs!604) i!298 y!824) (right!680 xs!604)) true)))

(declare-fun b!21273 () Bool)

(assert (=> b!21273 (= e!11142 e!11139)))

(declare-fun res!9257 () Bool)

(assert (=> b!21273 (=> res!9257 e!11139)))

(assert (=> b!21273 (= res!9257 (not (is-CC!32 (right!680 xs!604))))))

(declare-fun b!21274 () Bool)

(assert (=> b!21274 (= e!11140 e!11138)))

(declare-fun res!9252 () Bool)

(assert (=> b!21274 (=> (not res!9252) (not e!11138))))

(assert (=> b!21274 (= res!9252 (appendAssoc!4 (toList!98 (left!677 (insert!20 (left!677 xs!604) i!298 y!824))) (toList!98 (right!680 (insert!20 (left!677 xs!604) i!298 y!824))) (toList!98 (right!680 xs!604))))))

(assert (= (and d!12877 (not res!9254)) b!21274))

(assert (= (and b!21274 res!9252) b!21271))

(assert (= (and b!21271 (not res!9256)) b!21267))

(assert (= (and b!21267 res!9250) b!21269))

(assert (= (and d!12877 res!9258) b!21273))

(assert (= (and b!21273 (not res!9257)) b!21270))

(assert (= (and b!21270 res!9253) b!21272))

(assert (= (and b!21272 (not res!9255)) b!21266))

(assert (= (and b!21266 res!9251) b!21268))

(assert (=> b!21266 m!23177))

(declare-fun m!23385 () Bool)

(assert (=> b!21266 m!23385))

(declare-fun m!23387 () Bool)

(assert (=> b!21266 m!23387))

(declare-fun m!23389 () Bool)

(assert (=> b!21266 m!23389))

(assert (=> b!21266 m!23385))

(assert (=> b!21266 m!23387))

(assert (=> b!21266 m!23389))

(declare-fun m!23391 () Bool)

(assert (=> b!21266 m!23391))

(declare-fun m!23393 () Bool)

(assert (=> b!21269 m!23393))

(declare-fun m!23395 () Bool)

(assert (=> b!21269 m!23395))

(assert (=> b!21269 m!23395))

(assert (=> b!21269 m!23393))

(declare-fun m!23397 () Bool)

(assert (=> b!21269 m!23397))

(declare-fun m!23399 () Bool)

(assert (=> b!21269 m!23399))

(assert (=> b!21269 m!23203))

(declare-fun m!23401 () Bool)

(assert (=> b!21269 m!23401))

(assert (=> b!21269 m!23203))

(assert (=> b!21269 m!23397))

(assert (=> b!21269 m!23401))

(assert (=> b!21268 m!23389))

(assert (=> b!21268 m!23387))

(assert (=> b!21268 m!23345))

(assert (=> b!21268 m!23177))

(assert (=> b!21268 m!23385))

(declare-fun m!23403 () Bool)

(assert (=> b!21268 m!23403))

(assert (=> b!21268 m!23389))

(assert (=> b!21268 m!23345))

(declare-fun m!23405 () Bool)

(assert (=> b!21268 m!23405))

(assert (=> b!21268 m!23385))

(assert (=> b!21268 m!23387))

(assert (=> b!21268 m!23403))

(assert (=> b!21274 m!23395))

(declare-fun m!23407 () Bool)

(assert (=> b!21274 m!23407))

(assert (=> b!21274 m!23203))

(assert (=> b!21274 m!23395))

(assert (=> b!21274 m!23407))

(assert (=> b!21274 m!23203))

(declare-fun m!23409 () Bool)

(assert (=> b!21274 m!23409))

(assert (=> b!21270 m!23177))

(assert (=> b!21270 m!23385))

(assert (=> b!21270 m!23343))

(assert (=> b!21270 m!23345))

(assert (=> b!21270 m!23385))

(assert (=> b!21270 m!23343))

(assert (=> b!21270 m!23345))

(declare-fun m!23411 () Bool)

(assert (=> b!21270 m!23411))

(assert (=> b!21267 m!23393))

(assert (=> b!21267 m!23401))

(assert (=> b!21267 m!23203))

(assert (=> b!21267 m!23393))

(assert (=> b!21267 m!23401))

(assert (=> b!21267 m!23203))

(declare-fun m!23413 () Bool)

(assert (=> b!21267 m!23413))

(assert (=> b!21112 d!12877))

(declare-fun b!21277 () Bool)

(declare-fun res!9261 () Bool)

(declare-fun e!11144 () Bool)

(assert (=> b!21277 (=> (not res!9261) (not e!11144))))

(assert (=> b!21277 (= res!9261 (concInv!31 (left!677 (right!680 xs!604))))))

(declare-fun b!21275 () Bool)

(declare-fun e!11143 () Bool)

(assert (=> b!21275 (= e!11143 e!11144)))

(declare-fun res!9260 () Bool)

(assert (=> b!21275 (=> (not res!9260) (not e!11144))))

(assert (=> b!21275 (= res!9260 (not (isEmpty!295 (left!677 (right!680 xs!604)))))))

(declare-fun b!21276 () Bool)

(declare-fun res!9259 () Bool)

(assert (=> b!21276 (=> (not res!9259) (not e!11144))))

(assert (=> b!21276 (= res!9259 (not (isEmpty!295 (right!680 (right!680 xs!604)))))))

(declare-fun b!21278 () Bool)

(assert (=> b!21278 (= e!11144 (concInv!31 (right!680 (right!680 xs!604))))))

(declare-fun d!12879 () Bool)

(declare-fun res!9262 () Bool)

(assert (=> d!12879 (=> res!9262 e!11143)))

(assert (=> d!12879 (= res!9262 (not (is-CC!32 (right!680 xs!604))))))

(assert (=> d!12879 (= (concInv!31 (right!680 xs!604)) e!11143)))

(assert (= (and d!12879 (not res!9262)) b!21275))

(assert (= (and b!21275 res!9260) b!21276))

(assert (= (and b!21276 res!9259) b!21277))

(assert (= (and b!21277 res!9261) b!21278))

(declare-fun m!23415 () Bool)

(assert (=> b!21277 m!23415))

(declare-fun m!23417 () Bool)

(assert (=> b!21275 m!23417))

(declare-fun m!23419 () Bool)

(assert (=> b!21276 m!23419))

(declare-fun m!23421 () Bool)

(assert (=> b!21278 m!23421))

(assert (=> b!21068 d!12879))

(assert (=> b!21128 d!12879))

(declare-fun b!21281 () Bool)

(declare-fun res!9264 () Bool)

(declare-fun e!11146 () Bool)

(assert (=> b!21281 (=> (not res!9264) (not e!11146))))

(assert (=> b!21281 (= res!9264 (balanced!32 (left!677 (left!677 xs!604))))))

(declare-fun b!21282 () Bool)

(assert (=> b!21282 (= e!11146 (balanced!32 (right!680 (left!677 xs!604))))))

(declare-fun b!21280 () Bool)

(declare-fun res!9265 () Bool)

(assert (=> b!21280 (=> (not res!9265) (not e!11146))))

(assert (=> b!21280 (= res!9265 (<= (- (level!30 (left!677 (left!677 xs!604))) (level!30 (right!680 (left!677 xs!604)))) 1))))

(declare-fun d!12881 () Bool)

(declare-fun res!9266 () Bool)

(declare-fun e!11145 () Bool)

(assert (=> d!12881 (=> res!9266 e!11145)))

(assert (=> d!12881 (= res!9266 (not (is-CC!32 (left!677 xs!604))))))

(assert (=> d!12881 (= (balanced!32 (left!677 xs!604)) e!11145)))

(declare-fun b!21279 () Bool)

(assert (=> b!21279 (= e!11145 e!11146)))

(declare-fun res!9263 () Bool)

(assert (=> b!21279 (=> (not res!9263) (not e!11146))))

(assert (=> b!21279 (= res!9263 (>= (- (level!30 (left!677 (left!677 xs!604))) (level!30 (right!680 (left!677 xs!604)))) (- 1)))))

(assert (= (and d!12881 (not res!9266)) b!21279))

(assert (= (and b!21279 res!9263) b!21280))

(assert (= (and b!21280 res!9265) b!21281))

(assert (= (and b!21281 res!9264) b!21282))

(declare-fun m!23423 () Bool)

(assert (=> b!21281 m!23423))

(declare-fun m!23425 () Bool)

(assert (=> b!21282 m!23425))

(assert (=> b!21280 m!23383))

(assert (=> b!21280 m!23381))

(assert (=> b!21279 m!23383))

(assert (=> b!21279 m!23381))

(assert (=> b!21179 d!12881))

(declare-fun b!21285 () Bool)

(declare-fun res!9269 () Bool)

(declare-fun e!11148 () Bool)

(assert (=> b!21285 (=> (not res!9269) (not e!11148))))

(assert (=> b!21285 (= res!9269 (concInv!31 (left!677 lt!3249)))))

(declare-fun b!21283 () Bool)

(declare-fun e!11147 () Bool)

(assert (=> b!21283 (= e!11147 e!11148)))

(declare-fun res!9268 () Bool)

(assert (=> b!21283 (=> (not res!9268) (not e!11148))))

(assert (=> b!21283 (= res!9268 (not (isEmpty!295 (left!677 lt!3249))))))

(declare-fun b!21284 () Bool)

(declare-fun res!9267 () Bool)

(assert (=> b!21284 (=> (not res!9267) (not e!11148))))

(assert (=> b!21284 (= res!9267 (not (isEmpty!295 (right!680 lt!3249))))))

(declare-fun b!21286 () Bool)

(assert (=> b!21286 (= e!11148 (concInv!31 (right!680 lt!3249)))))

(declare-fun d!12883 () Bool)

(declare-fun res!9270 () Bool)

(assert (=> d!12883 (=> res!9270 e!11147)))

(assert (=> d!12883 (= res!9270 (not (is-CC!32 lt!3249)))))

(assert (=> d!12883 (= (concInv!31 lt!3249) e!11147)))

(assert (= (and d!12883 (not res!9270)) b!21283))

(assert (= (and b!21283 res!9268) b!21284))

(assert (= (and b!21284 res!9267) b!21285))

(assert (= (and b!21285 res!9269) b!21286))

(declare-fun m!23427 () Bool)

(assert (=> b!21285 m!23427))

(declare-fun m!23429 () Bool)

(assert (=> b!21283 m!23429))

(declare-fun m!23431 () Bool)

(assert (=> b!21284 m!23431))

(declare-fun m!23433 () Bool)

(assert (=> b!21286 m!23433))

(assert (=> d!12845 d!12883))

(declare-fun b!21289 () Bool)

(declare-fun res!9273 () Bool)

(declare-fun e!11150 () Bool)

(assert (=> b!21289 (=> (not res!9273) (not e!11150))))

(assert (=> b!21289 (= res!9273 (concInv!31 (left!677 (left!677 xs!604))))))

(declare-fun b!21287 () Bool)

(declare-fun e!11149 () Bool)

(assert (=> b!21287 (= e!11149 e!11150)))

(declare-fun res!9272 () Bool)

(assert (=> b!21287 (=> (not res!9272) (not e!11150))))

(assert (=> b!21287 (= res!9272 (not (isEmpty!295 (left!677 (left!677 xs!604)))))))

(declare-fun b!21288 () Bool)

(declare-fun res!9271 () Bool)

(assert (=> b!21288 (=> (not res!9271) (not e!11150))))

(assert (=> b!21288 (= res!9271 (not (isEmpty!295 (right!680 (left!677 xs!604)))))))

(declare-fun b!21290 () Bool)

(assert (=> b!21290 (= e!11150 (concInv!31 (right!680 (left!677 xs!604))))))

(declare-fun d!12885 () Bool)

(declare-fun res!9274 () Bool)

(assert (=> d!12885 (=> res!9274 e!11149)))

(assert (=> d!12885 (= res!9274 (not (is-CC!32 (left!677 xs!604))))))

(assert (=> d!12885 (= (concInv!31 (left!677 xs!604)) e!11149)))

(assert (= (and d!12885 (not res!9274)) b!21287))

(assert (= (and b!21287 res!9272) b!21288))

(assert (= (and b!21288 res!9271) b!21289))

(assert (= (and b!21289 res!9273) b!21290))

(declare-fun m!23435 () Bool)

(assert (=> b!21289 m!23435))

(declare-fun m!23437 () Bool)

(assert (=> b!21287 m!23437))

(declare-fun m!23439 () Bool)

(assert (=> b!21288 m!23439))

(declare-fun m!23441 () Bool)

(assert (=> b!21290 m!23441))

(assert (=> d!12845 d!12885))

(declare-fun e!11152 () List!338)

(declare-fun b!21294 () Bool)

(assert (=> b!21294 (= e!11152 (Cons!332 (h!246 (t!4333 (toList!98 xs!604))) (insertAtIndex!11 (t!4333 (t!4333 (toList!98 xs!604))) (- (- i!298 1) 1) y!824)))))

(declare-fun b!21291 () Bool)

(declare-fun e!11151 () List!338)

(assert (=> b!21291 (= e!11151 (Cons!332 y!824 Nil!333))))

(declare-fun b!21293 () Bool)

(assert (=> b!21293 (= e!11152 (Cons!332 y!824 (t!4333 (toList!98 xs!604))))))

(declare-fun b!21292 () Bool)

(assert (=> b!21292 (= e!11151 e!11152)))

(declare-fun c!5105 () Bool)

(assert (=> b!21292 (= c!5105 (= (- i!298 1) 0))))

(declare-fun d!12887 () Bool)

(declare-fun c!5104 () Bool)

(assert (=> d!12887 (= c!5104 (is-Nil!333 (t!4333 (toList!98 xs!604))))))

(assert (=> d!12887 (= (insertAtIndex!11 (t!4333 (toList!98 xs!604)) (- i!298 1) y!824) e!11151)))

(assert (= (and b!21292 c!5105) b!21293))

(assert (= (and b!21292 (not c!5105)) b!21294))

(assert (= (and d!12887 c!5104) b!21291))

(assert (= (and d!12887 (not c!5104)) b!21292))

(declare-fun m!23443 () Bool)

(assert (=> b!21294 m!23443))

(assert (=> b!21048 d!12887))

(declare-fun d!12889 () Bool)

(declare-fun e!11154 () Bool)

(assert (=> d!12889 e!11154))

(declare-fun res!9276 () Bool)

(assert (=> d!12889 (=> res!9276 e!11154)))

(assert (=> d!12889 (= res!9276 (not (is-CC!32 (left!677 xs!604))))))

(declare-fun e!11153 () Bool)

(assert (=> d!12889 e!11153))

(declare-fun res!9275 () Bool)

(assert (=> d!12889 (=> (not res!9275) (not e!11153))))

(assert (=> d!12889 (= res!9275 (>= i!298 0))))

(assert (=> d!12889 (= (insertAppendAxiomInst!13 (left!677 xs!604) i!298 y!824) true)))

(declare-fun b!21295 () Bool)

(assert (=> b!21295 (= e!11153 (<= i!298 (size!225 (left!677 xs!604))))))

(declare-fun b!21296 () Bool)

(assert (=> b!21296 (= e!11154 (appendInsertIndex!12 (toList!98 (left!677 (left!677 xs!604))) (toList!98 (right!680 (left!677 xs!604))) i!298 y!824))))

(assert (= (and d!12889 res!9275) b!21295))

(assert (= (and d!12889 (not res!9276)) b!21296))

(assert (=> b!21295 m!23193))

(assert (=> b!21296 m!23335))

(assert (=> b!21296 m!23337))

(assert (=> b!21296 m!23335))

(assert (=> b!21296 m!23337))

(declare-fun m!23445 () Bool)

(assert (=> b!21296 m!23445))

(assert (=> b!21168 d!12889))

(assert (=> b!21176 d!12837))

(declare-fun b!21298 () Bool)

(declare-fun e!11155 () Int)

(declare-fun lt!3268 () Int)

(declare-fun lt!3270 () Int)

(assert (=> b!21298 (= e!11155 (+ 1 (ite (>= lt!3268 lt!3270) lt!3268 lt!3270)))))

(assert (=> b!21298 (= lt!3270 (level!30 (right!680 (ite lt!3238 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (left!677 (right!680 xs!604))))))))

(assert (=> b!21298 (= lt!3268 (level!30 (left!677 (ite lt!3238 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (left!677 (right!680 xs!604))))))))

(declare-fun d!12891 () Bool)

(declare-fun lt!3269 () Int)

(assert (=> d!12891 (>= lt!3269 0)))

(assert (=> d!12891 (= lt!3269 e!11155)))

(declare-fun c!5106 () Bool)

(assert (=> d!12891 (= c!5106 (or (is-Empty!43 (ite lt!3238 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (left!677 (right!680 xs!604)))) (is-Single!32 (ite lt!3238 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (left!677 (right!680 xs!604))))))))

(assert (=> d!12891 (= (level!30 (ite lt!3238 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (left!677 (right!680 xs!604)))) lt!3269)))

(declare-fun b!21297 () Bool)

(assert (=> b!21297 (= e!11155 0)))

(assert (= (and d!12891 c!5106) b!21297))

(assert (= (and d!12891 (not c!5106)) b!21298))

(declare-fun m!23447 () Bool)

(assert (=> b!21298 m!23447))

(declare-fun m!23449 () Bool)

(assert (=> b!21298 m!23449))

(assert (=> b!21131 d!12891))

(declare-fun b!21300 () Bool)

(declare-fun e!11156 () Int)

(declare-fun lt!3271 () Int)

(declare-fun lt!3273 () Int)

(assert (=> b!21300 (= e!11156 (+ 1 (ite (>= lt!3271 lt!3273) lt!3271 lt!3273)))))

(assert (=> b!21300 (= lt!3273 (level!30 (right!680 (ite lt!3238 (left!677 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 xs!604))))))))

(assert (=> b!21300 (= lt!3271 (level!30 (left!677 (ite lt!3238 (left!677 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 xs!604))))))))

(declare-fun d!12893 () Bool)

(declare-fun lt!3272 () Int)

(assert (=> d!12893 (>= lt!3272 0)))

(assert (=> d!12893 (= lt!3272 e!11156)))

(declare-fun c!5107 () Bool)

(assert (=> d!12893 (= c!5107 (or (is-Empty!43 (ite lt!3238 (left!677 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 xs!604)))) (is-Single!32 (ite lt!3238 (left!677 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 xs!604))))))))

(assert (=> d!12893 (= (level!30 (ite lt!3238 (left!677 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 xs!604)))) lt!3272)))

(declare-fun b!21299 () Bool)

(assert (=> b!21299 (= e!11156 0)))

(assert (= (and d!12893 c!5107) b!21299))

(assert (= (and d!12893 (not c!5107)) b!21300))

(declare-fun m!23451 () Bool)

(assert (=> b!21300 m!23451))

(declare-fun m!23453 () Bool)

(assert (=> b!21300 m!23453))

(assert (=> b!21131 d!12893))

(declare-fun b!21310 () Bool)

(declare-fun e!11162 () List!338)

(assert (=> b!21310 (= e!11162 (Cons!332 (h!246 (toList!98 (left!677 res!5609))) (++!21 (t!4333 (toList!98 (left!677 res!5609))) (toList!98 (right!680 res!5609)))))))

(declare-fun d!12895 () Bool)

(declare-fun e!11161 () Bool)

(assert (=> d!12895 e!11161))

(declare-fun res!9282 () Bool)

(assert (=> d!12895 (=> (not res!9282) (not e!11161))))

(declare-fun lt!3276 () List!338)

(declare-fun content!59 (List!338) (Set T!1757))

(assert (=> d!12895 (= res!9282 (= (content!59 lt!3276) (union (content!59 (toList!98 (left!677 res!5609))) (content!59 (toList!98 (right!680 res!5609))))))))

(assert (=> d!12895 (= lt!3276 e!11162)))

(declare-fun c!5110 () Bool)

(assert (=> d!12895 (= c!5110 (is-Nil!333 (toList!98 (left!677 res!5609))))))

(assert (=> d!12895 (= (++!21 (toList!98 (left!677 res!5609)) (toList!98 (right!680 res!5609))) lt!3276)))

(declare-fun b!21311 () Bool)

(declare-fun res!9283 () Bool)

(assert (=> b!21311 (=> (not res!9283) (not e!11161))))

(assert (=> b!21311 (= res!9283 (= (size!226 lt!3276) (+ (size!226 (toList!98 (left!677 res!5609))) (size!226 (toList!98 (right!680 res!5609))))))))

(declare-fun b!21312 () Bool)

(assert (=> b!21312 (= e!11161 (or (not (= (toList!98 (right!680 res!5609)) Nil!333)) (= lt!3276 (toList!98 (left!677 res!5609)))))))

(declare-fun b!21309 () Bool)

(assert (=> b!21309 (= e!11162 (toList!98 (right!680 res!5609)))))

(assert (= (and d!12895 c!5110) b!21309))

(assert (= (and d!12895 (not c!5110)) b!21310))

(assert (= (and d!12895 res!9282) b!21311))

(assert (= (and b!21311 res!9283) b!21312))

(assert (=> b!21310 m!23233))

(declare-fun m!23455 () Bool)

(assert (=> b!21310 m!23455))

(declare-fun m!23457 () Bool)

(assert (=> d!12895 m!23457))

(assert (=> d!12895 m!23231))

(declare-fun m!23459 () Bool)

(assert (=> d!12895 m!23459))

(assert (=> d!12895 m!23233))

(declare-fun m!23461 () Bool)

(assert (=> d!12895 m!23461))

(declare-fun m!23463 () Bool)

(assert (=> b!21311 m!23463))

(assert (=> b!21311 m!23231))

(declare-fun m!23465 () Bool)

(assert (=> b!21311 m!23465))

(assert (=> b!21311 m!23233))

(declare-fun m!23467 () Bool)

(assert (=> b!21311 m!23467))

(assert (=> b!21036 d!12895))

(declare-fun b!21314 () Bool)

(declare-fun e!11163 () List!338)

(declare-fun e!11164 () List!338)

(assert (=> b!21314 (= e!11163 e!11164)))

(declare-fun c!5112 () Bool)

(assert (=> b!21314 (= c!5112 (is-Single!32 (left!677 res!5609)))))

(declare-fun b!21313 () Bool)

(assert (=> b!21313 (= e!11163 Nil!333)))

(declare-fun d!12897 () Bool)

(declare-fun lt!3277 () List!338)

(assert (=> d!12897 (= (size!226 lt!3277) (size!225 (left!677 res!5609)))))

(assert (=> d!12897 (= lt!3277 e!11163)))

(declare-fun c!5111 () Bool)

(assert (=> d!12897 (= c!5111 (is-Empty!43 (left!677 res!5609)))))

(assert (=> d!12897 (= (toList!98 (left!677 res!5609)) lt!3277)))

(declare-fun b!21315 () Bool)

(assert (=> b!21315 (= e!11164 (Cons!332 (x!8795 (left!677 res!5609)) Nil!333))))

(declare-fun b!21316 () Bool)

(assert (=> b!21316 (= e!11164 (++!21 (toList!98 (left!677 (left!677 res!5609))) (toList!98 (right!680 (left!677 res!5609)))))))

(assert (= (and b!21314 c!5112) b!21315))

(assert (= (and b!21314 (not c!5112)) b!21316))

(assert (= (and d!12897 c!5111) b!21313))

(assert (= (and d!12897 (not c!5111)) b!21314))

(declare-fun m!23469 () Bool)

(assert (=> d!12897 m!23469))

(declare-fun m!23471 () Bool)

(assert (=> d!12897 m!23471))

(declare-fun m!23473 () Bool)

(assert (=> b!21316 m!23473))

(declare-fun m!23475 () Bool)

(assert (=> b!21316 m!23475))

(assert (=> b!21316 m!23473))

(assert (=> b!21316 m!23475))

(declare-fun m!23477 () Bool)

(assert (=> b!21316 m!23477))

(assert (=> b!21036 d!12897))

(declare-fun b!21318 () Bool)

(declare-fun e!11165 () List!338)

(declare-fun e!11166 () List!338)

(assert (=> b!21318 (= e!11165 e!11166)))

(declare-fun c!5114 () Bool)

(assert (=> b!21318 (= c!5114 (is-Single!32 (right!680 res!5609)))))

(declare-fun b!21317 () Bool)

(assert (=> b!21317 (= e!11165 Nil!333)))

(declare-fun d!12899 () Bool)

(declare-fun lt!3278 () List!338)

(assert (=> d!12899 (= (size!226 lt!3278) (size!225 (right!680 res!5609)))))

(assert (=> d!12899 (= lt!3278 e!11165)))

(declare-fun c!5113 () Bool)

(assert (=> d!12899 (= c!5113 (is-Empty!43 (right!680 res!5609)))))

(assert (=> d!12899 (= (toList!98 (right!680 res!5609)) lt!3278)))

(declare-fun b!21319 () Bool)

(assert (=> b!21319 (= e!11166 (Cons!332 (x!8795 (right!680 res!5609)) Nil!333))))

(declare-fun b!21320 () Bool)

(assert (=> b!21320 (= e!11166 (++!21 (toList!98 (left!677 (right!680 res!5609))) (toList!98 (right!680 (right!680 res!5609)))))))

(assert (= (and b!21318 c!5114) b!21319))

(assert (= (and b!21318 (not c!5114)) b!21320))

(assert (= (and d!12899 c!5113) b!21317))

(assert (= (and d!12899 (not c!5113)) b!21318))

(declare-fun m!23479 () Bool)

(assert (=> d!12899 m!23479))

(declare-fun m!23481 () Bool)

(assert (=> d!12899 m!23481))

(declare-fun m!23483 () Bool)

(assert (=> b!21320 m!23483))

(declare-fun m!23485 () Bool)

(assert (=> b!21320 m!23485))

(assert (=> b!21320 m!23483))

(assert (=> b!21320 m!23485))

(declare-fun m!23487 () Bool)

(assert (=> b!21320 m!23487))

(assert (=> b!21036 d!12899))

(declare-fun d!12901 () Bool)

(declare-fun lt!3279 () Int)

(assert (=> d!12901 (>= lt!3279 0)))

(declare-fun e!11167 () Int)

(assert (=> d!12901 (= lt!3279 e!11167)))

(declare-fun c!5115 () Bool)

(assert (=> d!12901 (= c!5115 (is-Empty!43 (left!677 (left!677 xs!604))))))

(assert (=> d!12901 (= (size!225 (left!677 (left!677 xs!604))) lt!3279)))

(declare-fun b!21323 () Bool)

(declare-fun e!11168 () Int)

(assert (=> b!21323 (= e!11168 1)))

(declare-fun b!21324 () Bool)

(assert (=> b!21324 (= e!11168 (+ (size!225 (left!677 (left!677 (left!677 xs!604)))) (size!225 (right!680 (left!677 (left!677 xs!604))))))))

(declare-fun b!21321 () Bool)

(assert (=> b!21321 (= e!11167 0)))

(declare-fun b!21322 () Bool)

(assert (=> b!21322 (= e!11167 e!11168)))

(declare-fun c!5116 () Bool)

(assert (=> b!21322 (= c!5116 (is-Single!32 (left!677 (left!677 xs!604))))))

(assert (= (and b!21322 c!5116) b!21323))

(assert (= (and b!21322 (not c!5116)) b!21324))

(assert (= (and d!12901 c!5115) b!21321))

(assert (= (and d!12901 (not c!5115)) b!21322))

(declare-fun m!23489 () Bool)

(assert (=> b!21324 m!23489))

(declare-fun m!23491 () Bool)

(assert (=> b!21324 m!23491))

(assert (=> b!21064 d!12901))

(declare-fun d!12903 () Bool)

(declare-fun lt!3280 () Int)

(assert (=> d!12903 (>= lt!3280 0)))

(declare-fun e!11169 () Int)

(assert (=> d!12903 (= lt!3280 e!11169)))

(declare-fun c!5117 () Bool)

(assert (=> d!12903 (= c!5117 (is-Empty!43 (right!680 (left!677 xs!604))))))

(assert (=> d!12903 (= (size!225 (right!680 (left!677 xs!604))) lt!3280)))

(declare-fun b!21327 () Bool)

(declare-fun e!11170 () Int)

(assert (=> b!21327 (= e!11170 1)))

(declare-fun b!21328 () Bool)

(assert (=> b!21328 (= e!11170 (+ (size!225 (left!677 (right!680 (left!677 xs!604)))) (size!225 (right!680 (right!680 (left!677 xs!604))))))))

(declare-fun b!21325 () Bool)

(assert (=> b!21325 (= e!11169 0)))

(declare-fun b!21326 () Bool)

(assert (=> b!21326 (= e!11169 e!11170)))

(declare-fun c!5118 () Bool)

(assert (=> b!21326 (= c!5118 (is-Single!32 (right!680 (left!677 xs!604))))))

(assert (= (and b!21326 c!5118) b!21327))

(assert (= (and b!21326 (not c!5118)) b!21328))

(assert (= (and d!12903 c!5117) b!21325))

(assert (= (and d!12903 (not c!5117)) b!21326))

(declare-fun m!23493 () Bool)

(assert (=> b!21328 m!23493))

(declare-fun m!23495 () Bool)

(assert (=> b!21328 m!23495))

(assert (=> b!21064 d!12903))

(assert (=> b!21067 d!12885))

(declare-fun b!21331 () Bool)

(declare-fun res!9286 () Bool)

(declare-fun e!11172 () Bool)

(assert (=> b!21331 (=> (not res!9286) (not e!11172))))

(assert (=> b!21331 (= res!9286 (concInv!31 (left!677 lt!3232)))))

(declare-fun b!21329 () Bool)

(declare-fun e!11171 () Bool)

(assert (=> b!21329 (= e!11171 e!11172)))

(declare-fun res!9285 () Bool)

(assert (=> b!21329 (=> (not res!9285) (not e!11172))))

(assert (=> b!21329 (= res!9285 (not (isEmpty!295 (left!677 lt!3232))))))

(declare-fun b!21330 () Bool)

(declare-fun res!9284 () Bool)

(assert (=> b!21330 (=> (not res!9284) (not e!11172))))

(assert (=> b!21330 (= res!9284 (not (isEmpty!295 (right!680 lt!3232))))))

(declare-fun b!21332 () Bool)

(assert (=> b!21332 (= e!11172 (concInv!31 (right!680 lt!3232)))))

(declare-fun d!12905 () Bool)

(declare-fun res!9287 () Bool)

(assert (=> d!12905 (=> res!9287 e!11171)))

(assert (=> d!12905 (= res!9287 (not (is-CC!32 lt!3232)))))

(assert (=> d!12905 (= (concInv!31 lt!3232) e!11171)))

(assert (= (and d!12905 (not res!9287)) b!21329))

(assert (= (and b!21329 res!9285) b!21330))

(assert (= (and b!21330 res!9284) b!21331))

(assert (= (and b!21331 res!9286) b!21332))

(declare-fun m!23497 () Bool)

(assert (=> b!21331 m!23497))

(declare-fun m!23499 () Bool)

(assert (=> b!21329 m!23499))

(declare-fun m!23501 () Bool)

(assert (=> b!21330 m!23501))

(declare-fun m!23503 () Bool)

(assert (=> b!21332 m!23503))

(assert (=> b!21129 d!12905))

(declare-fun d!12907 () Bool)

(assert (=> d!12907 (= (isEmpty!295 (right!680 xs!604)) (= (right!680 xs!604) Empty!43))))

(assert (=> b!21111 d!12907))

(declare-fun b!21335 () Bool)

(declare-fun res!9289 () Bool)

(declare-fun e!11174 () Bool)

(assert (=> b!21335 (=> (not res!9289) (not e!11174))))

(assert (=> b!21335 (= res!9289 (balanced!32 (left!677 (left!677 res!5609))))))

(declare-fun b!21336 () Bool)

(assert (=> b!21336 (= e!11174 (balanced!32 (right!680 (left!677 res!5609))))))

(declare-fun b!21334 () Bool)

(declare-fun res!9290 () Bool)

(assert (=> b!21334 (=> (not res!9290) (not e!11174))))

(assert (=> b!21334 (= res!9290 (<= (- (level!30 (left!677 (left!677 res!5609))) (level!30 (right!680 (left!677 res!5609)))) 1))))

(declare-fun d!12909 () Bool)

(declare-fun res!9291 () Bool)

(declare-fun e!11173 () Bool)

(assert (=> d!12909 (=> res!9291 e!11173)))

(assert (=> d!12909 (= res!9291 (not (is-CC!32 (left!677 res!5609))))))

(assert (=> d!12909 (= (balanced!32 (left!677 res!5609)) e!11173)))

(declare-fun b!21333 () Bool)

(assert (=> b!21333 (= e!11173 e!11174)))

(declare-fun res!9288 () Bool)

(assert (=> b!21333 (=> (not res!9288) (not e!11174))))

(assert (=> b!21333 (= res!9288 (>= (- (level!30 (left!677 (left!677 res!5609))) (level!30 (right!680 (left!677 res!5609)))) (- 1)))))

(assert (= (and d!12909 (not res!9291)) b!21333))

(assert (= (and b!21333 res!9288) b!21334))

(assert (= (and b!21334 res!9290) b!21335))

(assert (= (and b!21335 res!9289) b!21336))

(declare-fun m!23505 () Bool)

(assert (=> b!21335 m!23505))

(declare-fun m!23507 () Bool)

(assert (=> b!21336 m!23507))

(assert (=> b!21334 m!23371))

(assert (=> b!21334 m!23369))

(assert (=> b!21333 m!23371))

(assert (=> b!21333 m!23369))

(assert (=> b!21011 d!12909))

(declare-fun b!21338 () Bool)

(declare-fun e!11175 () Int)

(declare-fun lt!3281 () Int)

(declare-fun lt!3283 () Int)

(assert (=> b!21338 (= e!11175 (+ 1 (ite (>= lt!3281 lt!3283) lt!3281 lt!3283)))))

(assert (=> b!21338 (= lt!3283 (level!30 (right!680 (ite lt!3234 (insert!20 (left!677 xs!604) i!298 y!824) (right!680 xs!604)))))))

(assert (=> b!21338 (= lt!3281 (level!30 (left!677 (ite lt!3234 (insert!20 (left!677 xs!604) i!298 y!824) (right!680 xs!604)))))))

(declare-fun d!12911 () Bool)

(declare-fun lt!3282 () Int)

(assert (=> d!12911 (>= lt!3282 0)))

(assert (=> d!12911 (= lt!3282 e!11175)))

(declare-fun c!5119 () Bool)

(assert (=> d!12911 (= c!5119 (or (is-Empty!43 (ite lt!3234 (insert!20 (left!677 xs!604) i!298 y!824) (right!680 xs!604))) (is-Single!32 (ite lt!3234 (insert!20 (left!677 xs!604) i!298 y!824) (right!680 xs!604)))))))

(assert (=> d!12911 (= (level!30 (ite lt!3234 (insert!20 (left!677 xs!604) i!298 y!824) (right!680 xs!604))) lt!3282)))

(declare-fun b!21337 () Bool)

(assert (=> b!21337 (= e!11175 0)))

(assert (= (and d!12911 c!5119) b!21337))

(assert (= (and d!12911 (not c!5119)) b!21338))

(declare-fun m!23509 () Bool)

(assert (=> b!21338 m!23509))

(declare-fun m!23511 () Bool)

(assert (=> b!21338 m!23511))

(assert (=> b!21118 d!12911))

(assert (=> b!21184 d!12837))

(declare-fun d!12913 () Bool)

(declare-fun lt!3284 () Int)

(assert (=> d!12913 (>= lt!3284 0)))

(declare-fun e!11176 () Int)

(assert (=> d!12913 (= lt!3284 e!11176)))

(declare-fun c!5120 () Bool)

(assert (=> d!12913 (= c!5120 (is-Empty!43 (right!680 xs!604)))))

(assert (=> d!12913 (= (size!225 (right!680 xs!604)) lt!3284)))

(declare-fun b!21341 () Bool)

(declare-fun e!11177 () Int)

(assert (=> b!21341 (= e!11177 1)))

(declare-fun b!21342 () Bool)

(assert (=> b!21342 (= e!11177 (+ (size!225 (left!677 (right!680 xs!604))) (size!225 (right!680 (right!680 xs!604)))))))

(declare-fun b!21339 () Bool)

(assert (=> b!21339 (= e!11176 0)))

(declare-fun b!21340 () Bool)

(assert (=> b!21340 (= e!11176 e!11177)))

(declare-fun c!5121 () Bool)

(assert (=> b!21340 (= c!5121 (is-Single!32 (right!680 xs!604)))))

(assert (= (and b!21340 c!5121) b!21341))

(assert (= (and b!21340 (not c!5121)) b!21342))

(assert (= (and d!12913 c!5120) b!21339))

(assert (= (and d!12913 (not c!5120)) b!21340))

(declare-fun m!23513 () Bool)

(assert (=> b!21342 m!23513))

(declare-fun m!23515 () Bool)

(assert (=> b!21342 m!23515))

(assert (=> b!21184 d!12913))

(declare-fun d!12915 () Bool)

(assert (=> d!12915 (= (isEmpty!295 (left!677 res!5609)) (= (left!677 res!5609) Empty!43))))

(assert (=> b!21021 d!12915))

(declare-fun b!21344 () Bool)

(declare-fun e!11178 () Int)

(declare-fun lt!3285 () Int)

(declare-fun lt!3287 () Int)

(assert (=> b!21344 (= e!11178 (+ 1 (ite (>= lt!3285 lt!3287) lt!3285 lt!3287)))))

(assert (=> b!21344 (= lt!3287 (level!30 (right!680 (right!680 xs!604))))))

(assert (=> b!21344 (= lt!3285 (level!30 (left!677 (right!680 xs!604))))))

(declare-fun d!12917 () Bool)

(declare-fun lt!3286 () Int)

(assert (=> d!12917 (>= lt!3286 0)))

(assert (=> d!12917 (= lt!3286 e!11178)))

(declare-fun c!5122 () Bool)

(assert (=> d!12917 (= c!5122 (or (is-Empty!43 (right!680 xs!604)) (is-Single!32 (right!680 xs!604))))))

(assert (=> d!12917 (= (level!30 (right!680 xs!604)) lt!3286)))

(declare-fun b!21343 () Bool)

(assert (=> b!21343 (= e!11178 0)))

(assert (= (and d!12917 c!5122) b!21343))

(assert (= (and d!12917 (not c!5122)) b!21344))

(declare-fun m!23517 () Bool)

(assert (=> b!21344 m!23517))

(declare-fun m!23519 () Bool)

(assert (=> b!21344 m!23519))

(assert (=> d!12843 d!12917))

(declare-fun b!21346 () Bool)

(declare-fun e!11179 () Int)

(declare-fun lt!3288 () Int)

(declare-fun lt!3290 () Int)

(assert (=> b!21346 (= e!11179 (+ 1 (ite (>= lt!3288 lt!3290) lt!3288 lt!3290)))))

(assert (=> b!21346 (= lt!3290 (level!30 (right!680 (insert!20 (left!677 xs!604) i!298 y!824))))))

(assert (=> b!21346 (= lt!3288 (level!30 (left!677 (insert!20 (left!677 xs!604) i!298 y!824))))))

(declare-fun d!12919 () Bool)

(declare-fun lt!3289 () Int)

(assert (=> d!12919 (>= lt!3289 0)))

(assert (=> d!12919 (= lt!3289 e!11179)))

(declare-fun c!5123 () Bool)

(assert (=> d!12919 (= c!5123 (or (is-Empty!43 (insert!20 (left!677 xs!604) i!298 y!824)) (is-Single!32 (insert!20 (left!677 xs!604) i!298 y!824))))))

(assert (=> d!12919 (= (level!30 (insert!20 (left!677 xs!604) i!298 y!824)) lt!3289)))

(declare-fun b!21345 () Bool)

(assert (=> b!21345 (= e!11179 0)))

(assert (= (and d!12919 c!5123) b!21345))

(assert (= (and d!12919 (not c!5123)) b!21346))

(declare-fun m!23521 () Bool)

(assert (=> b!21346 m!23521))

(declare-fun m!23523 () Bool)

(assert (=> b!21346 m!23523))

(assert (=> d!12843 d!12919))

(declare-fun b!21349 () Bool)

(declare-fun res!9294 () Bool)

(declare-fun e!11181 () Bool)

(assert (=> b!21349 (=> (not res!9294) (not e!11181))))

(assert (=> b!21349 (= res!9294 (concInv!31 (left!677 (insert!20 (left!677 xs!604) i!298 y!824))))))

(declare-fun b!21347 () Bool)

(declare-fun e!11180 () Bool)

(assert (=> b!21347 (= e!11180 e!11181)))

(declare-fun res!9293 () Bool)

(assert (=> b!21347 (=> (not res!9293) (not e!11181))))

(assert (=> b!21347 (= res!9293 (not (isEmpty!295 (left!677 (insert!20 (left!677 xs!604) i!298 y!824)))))))

(declare-fun b!21348 () Bool)

(declare-fun res!9292 () Bool)

(assert (=> b!21348 (=> (not res!9292) (not e!11181))))

(assert (=> b!21348 (= res!9292 (not (isEmpty!295 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))))))

(declare-fun b!21350 () Bool)

(assert (=> b!21350 (= e!11181 (concInv!31 (right!680 (insert!20 (left!677 xs!604) i!298 y!824))))))

(declare-fun d!12921 () Bool)

(declare-fun res!9295 () Bool)

(assert (=> d!12921 (=> res!9295 e!11180)))

(assert (=> d!12921 (= res!9295 (not (is-CC!32 (insert!20 (left!677 xs!604) i!298 y!824))))))

(assert (=> d!12921 (= (concInv!31 (insert!20 (left!677 xs!604) i!298 y!824)) e!11180)))

(assert (= (and d!12921 (not res!9295)) b!21347))

(assert (= (and b!21347 res!9293) b!21348))

(assert (= (and b!21348 res!9292) b!21349))

(assert (= (and b!21349 res!9294) b!21350))

(declare-fun m!23525 () Bool)

(assert (=> b!21349 m!23525))

(declare-fun m!23527 () Bool)

(assert (=> b!21347 m!23527))

(declare-fun m!23529 () Bool)

(assert (=> b!21348 m!23529))

(declare-fun m!23531 () Bool)

(assert (=> b!21350 m!23531))

(assert (=> d!12843 d!12921))

(declare-fun b!21351 () Bool)

(declare-fun e!11183 () Bool)

(assert (=> b!21351 (= e!11183 (not (isEmpty!295 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604))))))))))

(declare-fun b!21352 () Bool)

(declare-fun res!9303 () Bool)

(declare-fun e!11185 () Bool)

(assert (=> b!21352 (=> (not res!9303) (not e!11185))))

(assert (=> b!21352 (= res!9303 (appendAssocInst!7 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824)) (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))))))

(declare-fun b!21353 () Bool)

(declare-fun e!11188 () Int)

(declare-fun res!9300 () Int)

(assert (=> b!21353 (= e!11188 res!9300)))

(assert (=> b!21353 true))

(declare-fun b!21354 () Bool)

(declare-fun res!9297 () Bool)

(assert (=> b!21354 (=> (not res!9297) (not e!11185))))

(declare-fun lt!3292 () Conc!33)

(assert (=> b!21354 (= res!9297 (balanced!32 lt!3292))))

(declare-fun b!21355 () Bool)

(declare-fun res!9301 () Bool)

(assert (=> b!21355 (=> (not res!9301) (not e!11185))))

(declare-fun lt!3302 () Int)

(declare-fun lt!3306 () Int)

(declare-fun lt!3305 () Int)

(assert (=> b!21355 (= res!9301 (>= lt!3305 (ite (>= lt!3302 lt!3306) lt!3302 lt!3306)))))

(assert (=> b!21355 (= lt!3306 (level!30 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))))))

(assert (=> b!21355 (= lt!3302 (level!30 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824))))))

(assert (=> b!21355 (= lt!3305 (level!30 lt!3292))))

(declare-fun b!21356 () Bool)

(declare-fun res!9308 () Bool)

(assert (=> b!21356 (=> (not res!9308) (not e!11183))))

(assert (=> b!21356 (= res!9308 (not (isEmpty!295 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824)))))))

(declare-fun b!21357 () Bool)

(declare-fun e!11182 () Conc!33)

(assert (=> b!21357 (= e!11182 (CC!32 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824)) (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))))))

(declare-fun e!11190 () Int)

(declare-fun lt!3294 () Bool)

(declare-fun b!21358 () Bool)

(assert (=> b!21358 (= e!11190 (level!30 (ite lt!3294 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824)) (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604))))))))))

(declare-fun e!11184 () Bool)

(declare-fun b!21359 () Bool)

(assert (=> b!21359 (= e!11184 (balanced!32 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824))))))

(declare-fun b!21360 () Bool)

(declare-fun res!9309 () Bool)

(assert (=> b!21360 (=> (not res!9309) (not e!11183))))

(assert (=> b!21360 (= res!9309 (balanced!32 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))))))

(declare-fun b!21361 () Bool)

(declare-fun e!11187 () Conc!33)

(declare-fun res!9298 () Conc!33)

(assert (=> b!21361 (= e!11187 res!9298)))

(assert (=> b!21361 true))

(declare-fun e!11186 () Bool)

(assert (=> b!21361 e!11186))

(declare-fun b!21362 () Bool)

(declare-fun lt!3300 () Conc!33)

(assert (=> b!21362 (= e!11188 (level!30 lt!3300))))

(declare-fun b!21363 () Bool)

(assert (=> b!21363 (= e!11185 (concatCorrectness!5 lt!3292 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824)) (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))))))

(declare-fun b!21364 () Bool)

(declare-fun tp!4771 () Bool)

(declare-fun tp!4772 () Bool)

(assert (=> b!21364 (= e!11186 (and tp!4771 tp!4772))))

(declare-fun b!21365 () Bool)

(declare-fun res!9307 () Int)

(assert (=> b!21365 (= e!11190 res!9307)))

(assert (=> b!21365 true))

(assert (=> b!21365 true))

(declare-fun b!21366 () Bool)

(declare-fun e!11189 () Bool)

(assert (=> b!21366 (= e!11189 e!11185)))

(declare-fun res!9304 () Bool)

(assert (=> b!21366 (=> (not res!9304) (not e!11185))))

(declare-fun lt!3304 () Int)

(declare-fun lt!3293 () Int)

(declare-fun lt!3295 () Int)

(assert (=> b!21366 (= res!9304 (<= lt!3293 (+ (ite (>= lt!3295 lt!3304) lt!3295 lt!3304) 1)))))

(assert (=> b!21366 (= lt!3304 (level!30 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))))))

(assert (=> b!21366 (= lt!3295 (level!30 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824))))))

(assert (=> b!21366 (= lt!3293 (level!30 lt!3292))))

(declare-fun b!21367 () Bool)

(assert (=> b!21367 (= e!11186 tp_is_empty!101)))

(declare-fun d!12923 () Bool)

(assert (=> d!12923 e!11189))

(declare-fun res!9306 () Bool)

(assert (=> d!12923 (=> (not res!9306) (not e!11189))))

(assert (=> d!12923 (= res!9306 (is-CC!32 lt!3292))))

(assert (=> d!12923 (= lt!3292 e!11182)))

(declare-fun c!5127 () Bool)

(declare-fun lt!3291 () Int)

(assert (=> d!12923 (= c!5127 (and (>= lt!3291 (- 1)) (<= lt!3291 1)))))

(assert (=> d!12923 (= lt!3291 (- (level!30 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))) (level!30 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824)))))))

(assert (=> d!12923 e!11183))

(declare-fun res!9305 () Bool)

(assert (=> d!12923 (=> (not res!9305) (not e!11183))))

(assert (=> d!12923 (= res!9305 e!11184)))

(declare-fun res!9302 () Bool)

(assert (=> d!12923 (=> (not res!9302) (not e!11184))))

(assert (=> d!12923 (= res!9302 (concInv!31 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824))))))

(assert (=> d!12923 (= (concatNonEmpty!11 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824)) (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))) lt!3292)))

(declare-fun b!21368 () Bool)

(declare-fun res!9296 () Bool)

(assert (=> b!21368 (=> (not res!9296) (not e!11183))))

(assert (=> b!21368 (= res!9296 (concInv!31 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))))))

(declare-fun b!21369 () Bool)

(declare-fun res!9299 () Bool)

(assert (=> b!21369 (=> (not res!9299) (not e!11185))))

(assert (=> b!21369 (= res!9299 (concInv!31 lt!3292))))

(declare-fun lt!3303 () Int)

(declare-fun lt!3296 () Int)

(declare-fun b!21370 () Bool)

(declare-fun lt!3297 () Bool)

(assert (=> b!21370 (= e!11187 (concatNonEmpty!11 (ite lt!3297 (ite (>= lt!3296 lt!3303) (right!680 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824))) (right!680 (right!680 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824))))) (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824))) (ite lt!3297 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604))))) (ite (>= lt!3296 lt!3303) (left!677 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))) (left!677 (left!677 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))))))))))

(declare-fun lt!3299 () Int)

(declare-fun lt!3298 () Bool)

(declare-fun b!21371 () Bool)

(declare-fun lt!3301 () Int)

(assert (=> b!21371 (= e!11182 (ite lt!3298 (let ((res!9110 lt!3300)) (ite (>= lt!3296 lt!3303) (CC!32 (left!677 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824))) res!9110) (ite (= lt!3299 (- lt!3301 3)) (CC!32 (left!677 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824))) (CC!32 (left!677 (right!680 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824)))) res!9110)) (CC!32 (CC!32 (left!677 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824))) (left!677 (right!680 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824))))) res!9110)))) (let ((res!9113 lt!3300)) (ite (>= lt!3296 lt!3303) (CC!32 res!9113 (right!680 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604))))))) (ite (= lt!3299 (- lt!3301 3)) (CC!32 (CC!32 res!9113 (right!680 (left!677 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))))) (right!680 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604))))))) (CC!32 res!9113 (CC!32 (right!680 (left!677 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604))))))) (right!680 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))))))))))))

(assert (=> b!21371 (= lt!3301 e!11190)))

(declare-fun c!5124 () Bool)

(assert (=> b!21371 (= c!5124 (or lt!3294 (and (not lt!3298) (not (>= lt!3296 lt!3303)))))))

(assert (=> b!21371 (= lt!3294 (and lt!3298 (not (>= lt!3296 lt!3303))))))

(assert (=> b!21371 (= lt!3299 e!11188)))

(declare-fun c!5126 () Bool)

(assert (=> b!21371 (= c!5126 (or (and lt!3298 (not (>= lt!3296 lt!3303))) (and (not lt!3298) (not (>= lt!3296 lt!3303)))))))

(assert (=> b!21371 (= lt!3300 e!11187)))

(declare-fun c!5125 () Bool)

(assert (=> b!21371 (= c!5125 (or lt!3297 (not lt!3298)))))

(assert (=> b!21371 (= lt!3297 lt!3298)))

(assert (=> b!21371 (= lt!3303 (level!30 (ite lt!3298 (right!680 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824))) (left!677 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))))))))

(assert (=> b!21371 (= lt!3296 (level!30 (ite lt!3298 (left!677 (ite lt!3237 (ite (>= lt!3236 lt!3243) (right!680 (insert!20 (left!677 xs!604) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (insert!20 (left!677 xs!604) i!298 y!824))) (right!680 (ite lt!3237 (right!680 xs!604) (ite (>= lt!3236 lt!3243) (left!677 (right!680 xs!604)) (left!677 (left!677 (right!680 xs!604)))))))))))

(assert (=> b!21371 (= lt!3298 (< lt!3291 (- 1)))))

(assert (= (and d!12923 res!9302) b!21359))

(assert (= (and d!12923 res!9305) b!21368))

(assert (= (and b!21368 res!9296) b!21360))

(assert (= (and b!21360 res!9309) b!21356))

(assert (= (and b!21356 res!9308) b!21351))

(assert (= (and b!21361 (is-CC!32 res!9298)) b!21364))

(assert (= (and b!21361 (is-Single!32 res!9298)) b!21367))

(assert (= (and b!21371 c!5125) b!21370))

(assert (= (and b!21371 (not c!5125)) b!21361))

(assert (= (and b!21371 c!5126) b!21362))

(assert (= (and b!21371 (not c!5126)) b!21353))

(assert (= (and b!21371 c!5124) b!21358))

(assert (= (and b!21371 (not c!5124)) b!21365))

(assert (= (and d!12923 c!5127) b!21357))

(assert (= (and d!12923 (not c!5127)) b!21371))

(assert (= (and d!12923 res!9306) b!21366))

(assert (= (and b!21366 res!9304) b!21355))

(assert (= (and b!21355 res!9301) b!21369))

(assert (= (and b!21369 res!9299) b!21354))

(assert (= (and b!21354 res!9297) b!21352))

(assert (= (and b!21352 res!9303) b!21363))

(declare-fun m!23533 () Bool)

(assert (=> d!12923 m!23533))

(declare-fun m!23535 () Bool)

(assert (=> d!12923 m!23535))

(declare-fun m!23537 () Bool)

(assert (=> d!12923 m!23537))

(declare-fun m!23539 () Bool)

(assert (=> b!21368 m!23539))

(declare-fun m!23541 () Bool)

(assert (=> b!21370 m!23541))

(declare-fun m!23543 () Bool)

(assert (=> b!21359 m!23543))

(declare-fun m!23545 () Bool)

(assert (=> b!21354 m!23545))

(declare-fun m!23547 () Bool)

(assert (=> b!21356 m!23547))

(assert (=> b!21355 m!23533))

(assert (=> b!21355 m!23535))

(declare-fun m!23549 () Bool)

(assert (=> b!21355 m!23549))

(declare-fun m!23551 () Bool)

(assert (=> b!21369 m!23551))

(declare-fun m!23553 () Bool)

(assert (=> b!21363 m!23553))

(declare-fun m!23555 () Bool)

(assert (=> b!21351 m!23555))

(assert (=> b!21366 m!23533))

(assert (=> b!21366 m!23535))

(assert (=> b!21366 m!23549))

(declare-fun m!23557 () Bool)

(assert (=> b!21362 m!23557))

(declare-fun m!23559 () Bool)

(assert (=> b!21358 m!23559))

(declare-fun m!23561 () Bool)

(assert (=> b!21371 m!23561))

(declare-fun m!23563 () Bool)

(assert (=> b!21371 m!23563))

(declare-fun m!23565 () Bool)

(assert (=> b!21360 m!23565))

(declare-fun m!23567 () Bool)

(assert (=> b!21352 m!23567))

(assert (=> b!21130 d!12923))

(declare-fun b!21372 () Bool)

(declare-fun e!11192 () Bool)

(assert (=> b!21372 (= e!11192 (not (isEmpty!295 (right!680 (left!677 xs!604)))))))

(declare-fun b!21373 () Bool)

(declare-fun res!9317 () Bool)

(declare-fun e!11194 () Bool)

(assert (=> b!21373 (=> (not res!9317) (not e!11194))))

(assert (=> b!21373 (= res!9317 (appendAssocInst!7 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824) (right!680 (left!677 xs!604))))))

(declare-fun b!21374 () Bool)

(declare-fun e!11197 () Int)

(declare-fun res!9314 () Int)

(assert (=> b!21374 (= e!11197 res!9314)))

(assert (=> b!21374 true))

(declare-fun b!21375 () Bool)

(declare-fun res!9311 () Bool)

(assert (=> b!21375 (=> (not res!9311) (not e!11194))))

(declare-fun lt!3308 () Conc!33)

(assert (=> b!21375 (= res!9311 (balanced!32 lt!3308))))

(declare-fun b!21376 () Bool)

(declare-fun res!9315 () Bool)

(assert (=> b!21376 (=> (not res!9315) (not e!11194))))

(declare-fun lt!3318 () Int)

(declare-fun lt!3322 () Int)

(declare-fun lt!3321 () Int)

(assert (=> b!21376 (= res!9315 (>= lt!3321 (ite (>= lt!3318 lt!3322) lt!3318 lt!3322)))))

(assert (=> b!21376 (= lt!3322 (level!30 (right!680 (left!677 xs!604))))))

(assert (=> b!21376 (= lt!3318 (level!30 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824)))))

(assert (=> b!21376 (= lt!3321 (level!30 lt!3308))))

(declare-fun b!21377 () Bool)

(declare-fun res!9322 () Bool)

(assert (=> b!21377 (=> (not res!9322) (not e!11192))))

(assert (=> b!21377 (= res!9322 (not (isEmpty!295 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824))))))

(declare-fun e!11191 () Conc!33)

(declare-fun b!21378 () Bool)

(assert (=> b!21378 (= e!11191 (CC!32 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824) (right!680 (left!677 xs!604))))))

(declare-fun e!11199 () Int)

(declare-fun lt!3310 () Bool)

(declare-fun b!21379 () Bool)

(assert (=> b!21379 (= e!11199 (level!30 (ite lt!3310 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824) (right!680 (left!677 xs!604)))))))

(declare-fun e!11193 () Bool)

(declare-fun b!21380 () Bool)

(assert (=> b!21380 (= e!11193 (balanced!32 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824)))))

(declare-fun b!21381 () Bool)

(declare-fun res!9323 () Bool)

(assert (=> b!21381 (=> (not res!9323) (not e!11192))))

(assert (=> b!21381 (= res!9323 (balanced!32 (right!680 (left!677 xs!604))))))

(declare-fun b!21382 () Bool)

(declare-fun e!11196 () Conc!33)

(declare-fun res!9312 () Conc!33)

(assert (=> b!21382 (= e!11196 res!9312)))

(assert (=> b!21382 true))

(declare-fun e!11195 () Bool)

(assert (=> b!21382 e!11195))

(declare-fun b!21383 () Bool)

(declare-fun lt!3316 () Conc!33)

(assert (=> b!21383 (= e!11197 (level!30 lt!3316))))

(declare-fun b!21384 () Bool)

(assert (=> b!21384 (= e!11194 (concatCorrectness!5 lt!3308 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824) (right!680 (left!677 xs!604))))))

(declare-fun b!21385 () Bool)

(declare-fun tp!4773 () Bool)

(declare-fun tp!4774 () Bool)

(assert (=> b!21385 (= e!11195 (and tp!4773 tp!4774))))

(declare-fun b!21386 () Bool)

(declare-fun res!9321 () Int)

(assert (=> b!21386 (= e!11199 res!9321)))

(assert (=> b!21386 true))

(assert (=> b!21386 true))

(declare-fun b!21387 () Bool)

(declare-fun e!11198 () Bool)

(assert (=> b!21387 (= e!11198 e!11194)))

(declare-fun res!9318 () Bool)

(assert (=> b!21387 (=> (not res!9318) (not e!11194))))

(declare-fun lt!3320 () Int)

(declare-fun lt!3309 () Int)

(declare-fun lt!3311 () Int)

(assert (=> b!21387 (= res!9318 (<= lt!3309 (+ (ite (>= lt!3311 lt!3320) lt!3311 lt!3320) 1)))))

(assert (=> b!21387 (= lt!3320 (level!30 (right!680 (left!677 xs!604))))))

(assert (=> b!21387 (= lt!3311 (level!30 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824)))))

(assert (=> b!21387 (= lt!3309 (level!30 lt!3308))))

(declare-fun b!21388 () Bool)

(assert (=> b!21388 (= e!11195 tp_is_empty!101)))

(declare-fun d!12925 () Bool)

(assert (=> d!12925 e!11198))

(declare-fun res!9320 () Bool)

(assert (=> d!12925 (=> (not res!9320) (not e!11198))))

(assert (=> d!12925 (= res!9320 (is-CC!32 lt!3308))))

(assert (=> d!12925 (= lt!3308 e!11191)))

(declare-fun c!5131 () Bool)

(declare-fun lt!3307 () Int)

(assert (=> d!12925 (= c!5131 (and (>= lt!3307 (- 1)) (<= lt!3307 1)))))

(assert (=> d!12925 (= lt!3307 (- (level!30 (right!680 (left!677 xs!604))) (level!30 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824))))))

(assert (=> d!12925 e!11192))

(declare-fun res!9319 () Bool)

(assert (=> d!12925 (=> (not res!9319) (not e!11192))))

(assert (=> d!12925 (= res!9319 e!11193)))

(declare-fun res!9316 () Bool)

(assert (=> d!12925 (=> (not res!9316) (not e!11193))))

(assert (=> d!12925 (= res!9316 (concInv!31 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824)))))

(assert (=> d!12925 (= (concatNonEmpty!11 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824) (right!680 (left!677 xs!604))) lt!3308)))

(declare-fun b!21389 () Bool)

(declare-fun res!9310 () Bool)

(assert (=> b!21389 (=> (not res!9310) (not e!11192))))

(assert (=> b!21389 (= res!9310 (concInv!31 (right!680 (left!677 xs!604))))))

(declare-fun b!21390 () Bool)

(declare-fun res!9313 () Bool)

(assert (=> b!21390 (=> (not res!9313) (not e!11194))))

(assert (=> b!21390 (= res!9313 (concInv!31 lt!3308))))

(declare-fun lt!3313 () Bool)

(declare-fun b!21391 () Bool)

(declare-fun lt!3312 () Int)

(declare-fun lt!3319 () Int)

(assert (=> b!21391 (= e!11196 (concatNonEmpty!11 (ite lt!3313 (ite (>= lt!3312 lt!3319) (right!680 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824)) (right!680 (right!680 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824)))) (insert!20 (left!677 (left!677 xs!604)) i!298 y!824)) (ite lt!3313 (right!680 (left!677 xs!604)) (ite (>= lt!3312 lt!3319) (left!677 (right!680 (left!677 xs!604))) (left!677 (left!677 (right!680 (left!677 xs!604))))))))))

(declare-fun lt!3314 () Bool)

(declare-fun lt!3315 () Int)

(declare-fun lt!3317 () Int)

(declare-fun b!21392 () Bool)

(assert (=> b!21392 (= e!11191 (ite lt!3314 (let ((res!9110 lt!3316)) (ite (>= lt!3312 lt!3319) (CC!32 (left!677 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824)) res!9110) (ite (= lt!3315 (- lt!3317 3)) (CC!32 (left!677 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824)) (CC!32 (left!677 (right!680 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824))) res!9110)) (CC!32 (CC!32 (left!677 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824)) (left!677 (right!680 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824)))) res!9110)))) (let ((res!9113 lt!3316)) (ite (>= lt!3312 lt!3319) (CC!32 res!9113 (right!680 (right!680 (left!677 xs!604)))) (ite (= lt!3315 (- lt!3317 3)) (CC!32 (CC!32 res!9113 (right!680 (left!677 (right!680 (left!677 xs!604))))) (right!680 (right!680 (left!677 xs!604)))) (CC!32 res!9113 (CC!32 (right!680 (left!677 (right!680 (left!677 xs!604)))) (right!680 (right!680 (left!677 xs!604))))))))))))

(assert (=> b!21392 (= lt!3317 e!11199)))

(declare-fun c!5128 () Bool)

(assert (=> b!21392 (= c!5128 (or lt!3310 (and (not lt!3314) (not (>= lt!3312 lt!3319)))))))

(assert (=> b!21392 (= lt!3310 (and lt!3314 (not (>= lt!3312 lt!3319))))))

(assert (=> b!21392 (= lt!3315 e!11197)))

(declare-fun c!5130 () Bool)

(assert (=> b!21392 (= c!5130 (or (and lt!3314 (not (>= lt!3312 lt!3319))) (and (not lt!3314) (not (>= lt!3312 lt!3319)))))))

(assert (=> b!21392 (= lt!3316 e!11196)))

(declare-fun c!5129 () Bool)

(assert (=> b!21392 (= c!5129 (or lt!3313 (not lt!3314)))))

(assert (=> b!21392 (= lt!3313 lt!3314)))

(assert (=> b!21392 (= lt!3319 (level!30 (ite lt!3314 (right!680 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824)) (left!677 (right!680 (left!677 xs!604))))))))

(assert (=> b!21392 (= lt!3312 (level!30 (ite lt!3314 (left!677 (insert!20 (left!677 (left!677 xs!604)) i!298 y!824)) (right!680 (right!680 (left!677 xs!604))))))))

(assert (=> b!21392 (= lt!3314 (< lt!3307 (- 1)))))

(assert (= (and d!12925 res!9316) b!21380))

(assert (= (and d!12925 res!9319) b!21389))

(assert (= (and b!21389 res!9310) b!21381))

(assert (= (and b!21381 res!9323) b!21377))

(assert (= (and b!21377 res!9322) b!21372))

(assert (= (and b!21382 (is-CC!32 res!9312)) b!21385))

(assert (= (and b!21382 (is-Single!32 res!9312)) b!21388))

(assert (= (and b!21392 c!5129) b!21391))

(assert (= (and b!21392 (not c!5129)) b!21382))

(assert (= (and b!21392 c!5130) b!21383))

(assert (= (and b!21392 (not c!5130)) b!21374))

(assert (= (and b!21392 c!5128) b!21379))

(assert (= (and b!21392 (not c!5128)) b!21386))

(assert (= (and d!12925 c!5131) b!21378))

(assert (= (and d!12925 (not c!5131)) b!21392))

(assert (= (and d!12925 res!9320) b!21387))

(assert (= (and b!21387 res!9318) b!21376))

(assert (= (and b!21376 res!9315) b!21390))

(assert (= (and b!21390 res!9313) b!21375))

(assert (= (and b!21375 res!9311) b!21373))

(assert (= (and b!21373 res!9317) b!21384))

(assert (=> d!12925 m!23381))

(assert (=> d!12925 m!23291))

(declare-fun m!23569 () Bool)

(assert (=> d!12925 m!23569))

(assert (=> d!12925 m!23291))

(declare-fun m!23571 () Bool)

(assert (=> d!12925 m!23571))

(assert (=> b!21389 m!23441))

(declare-fun m!23573 () Bool)

(assert (=> b!21391 m!23573))

(assert (=> b!21380 m!23291))

(declare-fun m!23575 () Bool)

(assert (=> b!21380 m!23575))

(declare-fun m!23577 () Bool)

(assert (=> b!21375 m!23577))

(assert (=> b!21377 m!23291))

(declare-fun m!23579 () Bool)

(assert (=> b!21377 m!23579))

(assert (=> b!21376 m!23381))

(assert (=> b!21376 m!23291))

(assert (=> b!21376 m!23569))

(declare-fun m!23581 () Bool)

(assert (=> b!21376 m!23581))

(declare-fun m!23583 () Bool)

(assert (=> b!21390 m!23583))

(assert (=> b!21384 m!23291))

(declare-fun m!23585 () Bool)

(assert (=> b!21384 m!23585))

(assert (=> b!21372 m!23439))

(assert (=> b!21387 m!23381))

(assert (=> b!21387 m!23291))

(assert (=> b!21387 m!23569))

(assert (=> b!21387 m!23581))

(declare-fun m!23587 () Bool)

(assert (=> b!21383 m!23587))

(declare-fun m!23589 () Bool)

(assert (=> b!21379 m!23589))

(declare-fun m!23591 () Bool)

(assert (=> b!21392 m!23591))

(declare-fun m!23593 () Bool)

(assert (=> b!21392 m!23593))

(assert (=> b!21381 m!23425))

(assert (=> b!21373 m!23291))

(declare-fun m!23595 () Bool)

(assert (=> b!21373 m!23595))

(assert (=> b!21171 d!12925))

(declare-fun b!21393 () Bool)

(declare-fun e!11206 () Conc!33)

(assert (=> b!21393 (= e!11206 (Single!32 y!824))))

(declare-fun b!21394 () Bool)

(declare-fun e!11202 () Bool)

(assert (=> b!21394 (= e!11202 (balanced!32 (left!677 (left!677 xs!604))))))

(declare-fun b!21395 () Bool)

(declare-fun res!9330 () Bool)

(declare-fun e!11203 () Bool)

(assert (=> b!21395 (=> (not res!9330) (not e!11203))))

(declare-fun lt!3323 () Conc!33)

(assert (=> b!21395 (= res!9330 (not (isEmpty!295 lt!3323)))))

(declare-fun b!21396 () Bool)

(declare-fun e!11201 () Conc!33)

(assert (=> b!21396 (= e!11206 e!11201)))

(declare-fun c!5134 () Bool)

(assert (=> b!21396 (= c!5134 (is-Single!32 (left!677 (left!677 xs!604))))))

(declare-fun b!21397 () Bool)

(declare-fun e!11200 () Bool)

(assert (=> b!21397 (= e!11200 (balanced!32 lt!3323))))

(declare-fun b!21398 () Bool)

(declare-fun res!9329 () Bool)

(declare-fun e!11205 () Bool)

(assert (=> b!21398 (=> (not res!9329) (not e!11205))))

(assert (=> b!21398 (= res!9329 (>= i!298 0))))

(declare-fun b!21399 () Bool)

(declare-fun res!9328 () Bool)

(assert (=> b!21399 (=> (not res!9328) (not e!11203))))

(assert (=> b!21399 (= res!9328 (insertAppendAxiomInst!13 (left!677 (left!677 xs!604)) i!298 y!824))))

(declare-fun b!21400 () Bool)

(declare-fun e!11204 () Conc!33)

(assert (=> b!21400 (= e!11201 e!11204)))

(declare-fun c!5132 () Bool)

(assert (=> b!21400 (= c!5132 (< i!298 (size!225 (left!677 (left!677 (left!677 xs!604))))))))

(declare-fun b!21401 () Bool)

(assert (=> b!21401 (= e!11201 (ite (= i!298 0) (CC!32 (Single!32 y!824) (left!677 (left!677 xs!604))) (CC!32 (left!677 (left!677 xs!604)) (Single!32 y!824))))))

(declare-fun b!21402 () Bool)

(assert (=> b!21402 (= e!11204 (concatNonEmpty!11 (insert!20 (left!677 (left!677 (left!677 xs!604))) i!298 y!824) (right!680 (left!677 (left!677 xs!604)))))))

(declare-fun b!21403 () Bool)

(assert (=> b!21403 (= e!11204 (concatNonEmpty!11 (left!677 (left!677 (left!677 xs!604))) (insert!20 (right!680 (left!677 (left!677 xs!604))) (- i!298 (size!225 (left!677 (left!677 (left!677 xs!604))))) y!824)))))

(declare-fun b!21404 () Bool)

(declare-fun res!9331 () Bool)

(assert (=> b!21404 (=> (not res!9331) (not e!11203))))

(assert (=> b!21404 (= res!9331 (<= (- (level!30 lt!3323) (level!30 (left!677 (left!677 xs!604)))) 1))))

(declare-fun d!12927 () Bool)

(assert (=> d!12927 e!11203))

(declare-fun res!9332 () Bool)

(assert (=> d!12927 (=> (not res!9332) (not e!11203))))

(assert (=> d!12927 (= res!9332 e!11200)))

(declare-fun res!9324 () Bool)

(assert (=> d!12927 (=> (not res!9324) (not e!11200))))

(assert (=> d!12927 (= res!9324 (concInv!31 lt!3323))))

(assert (=> d!12927 (= lt!3323 e!11206)))

(declare-fun c!5133 () Bool)

(assert (=> d!12927 (= c!5133 (is-Empty!43 (left!677 (left!677 xs!604))))))

(assert (=> d!12927 e!11205))

(declare-fun res!9325 () Bool)

(assert (=> d!12927 (=> (not res!9325) (not e!11205))))

(assert (=> d!12927 (= res!9325 e!11202)))

(declare-fun res!9326 () Bool)

(assert (=> d!12927 (=> (not res!9326) (not e!11202))))

(assert (=> d!12927 (= res!9326 (concInv!31 (left!677 (left!677 xs!604))))))

(assert (=> d!12927 (= (insert!20 (left!677 (left!677 xs!604)) i!298 y!824) lt!3323)))

(declare-fun b!21405 () Bool)

(declare-fun res!9327 () Bool)

(assert (=> b!21405 (=> (not res!9327) (not e!11203))))

(assert (=> b!21405 (= res!9327 (>= (level!30 lt!3323) (level!30 (left!677 (left!677 xs!604)))))))

(declare-fun b!21406 () Bool)

(assert (=> b!21406 (= e!11203 (= (toList!98 lt!3323) (insertAtIndex!11 (toList!98 (left!677 (left!677 xs!604))) i!298 y!824)))))

(declare-fun b!21407 () Bool)

(assert (=> b!21407 (= e!11205 (<= i!298 (size!225 (left!677 (left!677 xs!604)))))))

(assert (= (and d!12927 res!9326) b!21394))

(assert (= (and d!12927 res!9325) b!21398))

(assert (= (and b!21398 res!9329) b!21407))

(assert (= (and b!21400 c!5132) b!21402))

(assert (= (and b!21400 (not c!5132)) b!21403))

(assert (= (and b!21396 c!5134) b!21401))

(assert (= (and b!21396 (not c!5134)) b!21400))

(assert (= (and d!12927 c!5133) b!21393))

(assert (= (and d!12927 (not c!5133)) b!21396))

(assert (= (and d!12927 res!9324) b!21397))

(assert (= (and d!12927 res!9332) b!21404))

(assert (= (and b!21404 res!9331) b!21405))

(assert (= (and b!21405 res!9327) b!21395))

(assert (= (and b!21395 res!9330) b!21399))

(assert (= (and b!21399 res!9328) b!21406))

(declare-fun m!23597 () Bool)

(assert (=> d!12927 m!23597))

(assert (=> d!12927 m!23435))

(declare-fun m!23599 () Bool)

(assert (=> b!21397 m!23599))

(declare-fun m!23601 () Bool)

(assert (=> b!21399 m!23601))

(declare-fun m!23603 () Bool)

(assert (=> b!21402 m!23603))

(assert (=> b!21402 m!23603))

(declare-fun m!23605 () Bool)

(assert (=> b!21402 m!23605))

(declare-fun m!23607 () Bool)

(assert (=> b!21406 m!23607))

(assert (=> b!21406 m!23335))

(assert (=> b!21406 m!23335))

(declare-fun m!23609 () Bool)

(assert (=> b!21406 m!23609))

(assert (=> b!21403 m!23489))

(declare-fun m!23611 () Bool)

(assert (=> b!21403 m!23611))

(assert (=> b!21403 m!23611))

(declare-fun m!23613 () Bool)

(assert (=> b!21403 m!23613))

(assert (=> b!21394 m!23423))

(assert (=> b!21407 m!23243))

(declare-fun m!23615 () Bool)

(assert (=> b!21404 m!23615))

(assert (=> b!21404 m!23383))

(assert (=> b!21405 m!23615))

(assert (=> b!21405 m!23383))

(assert (=> b!21400 m!23489))

(declare-fun m!23617 () Bool)

(assert (=> b!21395 m!23617))

(assert (=> b!21171 d!12927))

(assert (=> b!21000 d!12917))

(assert (=> b!21000 d!12875))

(declare-fun d!12929 () Bool)

(assert (=> d!12929 (= (isEmpty!295 (insert!20 (left!677 xs!604) i!298 y!824)) (= (insert!20 (left!677 xs!604) i!298 y!824) Empty!43))))

(assert (=> b!21116 d!12929))

(declare-fun e!11208 () Bool)

(declare-fun b!21408 () Bool)

(assert (=> b!21408 (= e!11208 (not (isEmpty!295 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824))))))

(declare-fun b!21409 () Bool)

(declare-fun res!9340 () Bool)

(declare-fun e!11210 () Bool)

(assert (=> b!21409 (=> (not res!9340) (not e!11210))))

(assert (=> b!21409 (= res!9340 (appendAssocInst!7 (left!677 (left!677 xs!604)) (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)))))

(declare-fun b!21410 () Bool)

(declare-fun e!11213 () Int)

(declare-fun res!9337 () Int)

(assert (=> b!21410 (= e!11213 res!9337)))

(assert (=> b!21410 true))

(declare-fun b!21411 () Bool)

(declare-fun res!9334 () Bool)

(assert (=> b!21411 (=> (not res!9334) (not e!11210))))

(declare-fun lt!3325 () Conc!33)

(assert (=> b!21411 (= res!9334 (balanced!32 lt!3325))))

(declare-fun b!21412 () Bool)

(declare-fun res!9338 () Bool)

(assert (=> b!21412 (=> (not res!9338) (not e!11210))))

(declare-fun lt!3335 () Int)

(declare-fun lt!3339 () Int)

(declare-fun lt!3338 () Int)

(assert (=> b!21412 (= res!9338 (>= lt!3338 (ite (>= lt!3335 lt!3339) lt!3335 lt!3339)))))

(assert (=> b!21412 (= lt!3339 (level!30 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)))))

(assert (=> b!21412 (= lt!3335 (level!30 (left!677 (left!677 xs!604))))))

(assert (=> b!21412 (= lt!3338 (level!30 lt!3325))))

(declare-fun b!21413 () Bool)

(declare-fun res!9345 () Bool)

(assert (=> b!21413 (=> (not res!9345) (not e!11208))))

(assert (=> b!21413 (= res!9345 (not (isEmpty!295 (left!677 (left!677 xs!604)))))))

(declare-fun e!11207 () Conc!33)

(declare-fun b!21414 () Bool)

(assert (=> b!21414 (= e!11207 (CC!32 (left!677 (left!677 xs!604)) (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)))))

(declare-fun e!11215 () Int)

(declare-fun b!21415 () Bool)

(declare-fun lt!3327 () Bool)

(assert (=> b!21415 (= e!11215 (level!30 (ite lt!3327 (left!677 (left!677 xs!604)) (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824))))))

(declare-fun b!21416 () Bool)

(declare-fun e!11209 () Bool)

(assert (=> b!21416 (= e!11209 (balanced!32 (left!677 (left!677 xs!604))))))

(declare-fun b!21417 () Bool)

(declare-fun res!9346 () Bool)

(assert (=> b!21417 (=> (not res!9346) (not e!11208))))

(assert (=> b!21417 (= res!9346 (balanced!32 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)))))

(declare-fun b!21418 () Bool)

(declare-fun e!11212 () Conc!33)

(declare-fun res!9335 () Conc!33)

(assert (=> b!21418 (= e!11212 res!9335)))

(assert (=> b!21418 true))

(declare-fun e!11211 () Bool)

(assert (=> b!21418 e!11211))

(declare-fun b!21419 () Bool)

(declare-fun lt!3333 () Conc!33)

(assert (=> b!21419 (= e!11213 (level!30 lt!3333))))

(declare-fun b!21420 () Bool)

(assert (=> b!21420 (= e!11210 (concatCorrectness!5 lt!3325 (left!677 (left!677 xs!604)) (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)))))

(declare-fun b!21421 () Bool)

(declare-fun tp!4775 () Bool)

(declare-fun tp!4776 () Bool)

(assert (=> b!21421 (= e!11211 (and tp!4775 tp!4776))))

(declare-fun b!21422 () Bool)

(declare-fun res!9344 () Int)

(assert (=> b!21422 (= e!11215 res!9344)))

(assert (=> b!21422 true))

(assert (=> b!21422 true))

(declare-fun b!21423 () Bool)

(declare-fun e!11214 () Bool)

(assert (=> b!21423 (= e!11214 e!11210)))

(declare-fun res!9341 () Bool)

(assert (=> b!21423 (=> (not res!9341) (not e!11210))))

(declare-fun lt!3326 () Int)

(declare-fun lt!3328 () Int)

(declare-fun lt!3337 () Int)

(assert (=> b!21423 (= res!9341 (<= lt!3326 (+ (ite (>= lt!3328 lt!3337) lt!3328 lt!3337) 1)))))

(assert (=> b!21423 (= lt!3337 (level!30 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)))))

(assert (=> b!21423 (= lt!3328 (level!30 (left!677 (left!677 xs!604))))))

(assert (=> b!21423 (= lt!3326 (level!30 lt!3325))))

(declare-fun b!21424 () Bool)

(assert (=> b!21424 (= e!11211 tp_is_empty!101)))

(declare-fun d!12931 () Bool)

(assert (=> d!12931 e!11214))

(declare-fun res!9343 () Bool)

(assert (=> d!12931 (=> (not res!9343) (not e!11214))))

(assert (=> d!12931 (= res!9343 (is-CC!32 lt!3325))))

(assert (=> d!12931 (= lt!3325 e!11207)))

(declare-fun c!5138 () Bool)

(declare-fun lt!3324 () Int)

(assert (=> d!12931 (= c!5138 (and (>= lt!3324 (- 1)) (<= lt!3324 1)))))

(assert (=> d!12931 (= lt!3324 (- (level!30 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)) (level!30 (left!677 (left!677 xs!604)))))))

(assert (=> d!12931 e!11208))

(declare-fun res!9342 () Bool)

(assert (=> d!12931 (=> (not res!9342) (not e!11208))))

(assert (=> d!12931 (= res!9342 e!11209)))

(declare-fun res!9339 () Bool)

(assert (=> d!12931 (=> (not res!9339) (not e!11209))))

(assert (=> d!12931 (= res!9339 (concInv!31 (left!677 (left!677 xs!604))))))

(assert (=> d!12931 (= (concatNonEmpty!11 (left!677 (left!677 xs!604)) (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)) lt!3325)))

(declare-fun b!21425 () Bool)

(declare-fun res!9333 () Bool)

(assert (=> b!21425 (=> (not res!9333) (not e!11208))))

(assert (=> b!21425 (= res!9333 (concInv!31 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)))))

(declare-fun b!21426 () Bool)

(declare-fun res!9336 () Bool)

(assert (=> b!21426 (=> (not res!9336) (not e!11210))))

(assert (=> b!21426 (= res!9336 (concInv!31 lt!3325))))

(declare-fun lt!3336 () Int)

(declare-fun lt!3329 () Int)

(declare-fun lt!3330 () Bool)

(declare-fun b!21427 () Bool)

(assert (=> b!21427 (= e!11212 (concatNonEmpty!11 (ite lt!3330 (ite (>= lt!3329 lt!3336) (right!680 (left!677 (left!677 xs!604))) (right!680 (right!680 (left!677 (left!677 xs!604))))) (left!677 (left!677 xs!604))) (ite lt!3330 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824) (ite (>= lt!3329 lt!3336) (left!677 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)) (left!677 (left!677 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)))))))))

(declare-fun b!21428 () Bool)

(declare-fun lt!3332 () Int)

(declare-fun lt!3334 () Int)

(declare-fun lt!3331 () Bool)

(assert (=> b!21428 (= e!11207 (ite lt!3331 (let ((res!9110 lt!3333)) (ite (>= lt!3329 lt!3336) (CC!32 (left!677 (left!677 (left!677 xs!604))) res!9110) (ite (= lt!3332 (- lt!3334 3)) (CC!32 (left!677 (left!677 (left!677 xs!604))) (CC!32 (left!677 (right!680 (left!677 (left!677 xs!604)))) res!9110)) (CC!32 (CC!32 (left!677 (left!677 (left!677 xs!604))) (left!677 (right!680 (left!677 (left!677 xs!604))))) res!9110)))) (let ((res!9113 lt!3333)) (ite (>= lt!3329 lt!3336) (CC!32 res!9113 (right!680 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824))) (ite (= lt!3332 (- lt!3334 3)) (CC!32 (CC!32 res!9113 (right!680 (left!677 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)))) (right!680 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824))) (CC!32 res!9113 (CC!32 (right!680 (left!677 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824))) (right!680 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)))))))))))

(assert (=> b!21428 (= lt!3334 e!11215)))

(declare-fun c!5135 () Bool)

(assert (=> b!21428 (= c!5135 (or lt!3327 (and (not lt!3331) (not (>= lt!3329 lt!3336)))))))

(assert (=> b!21428 (= lt!3327 (and lt!3331 (not (>= lt!3329 lt!3336))))))

(assert (=> b!21428 (= lt!3332 e!11213)))

(declare-fun c!5137 () Bool)

(assert (=> b!21428 (= c!5137 (or (and lt!3331 (not (>= lt!3329 lt!3336))) (and (not lt!3331) (not (>= lt!3329 lt!3336)))))))

(assert (=> b!21428 (= lt!3333 e!11212)))

(declare-fun c!5136 () Bool)

(assert (=> b!21428 (= c!5136 (or lt!3330 (not lt!3331)))))

(assert (=> b!21428 (= lt!3330 lt!3331)))

(assert (=> b!21428 (= lt!3336 (level!30 (ite lt!3331 (right!680 (left!677 (left!677 xs!604))) (left!677 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)))))))

(assert (=> b!21428 (= lt!3329 (level!30 (ite lt!3331 (left!677 (left!677 (left!677 xs!604))) (right!680 (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)))))))

(assert (=> b!21428 (= lt!3331 (< lt!3324 (- 1)))))

(assert (= (and d!12931 res!9339) b!21416))

(assert (= (and d!12931 res!9342) b!21425))

(assert (= (and b!21425 res!9333) b!21417))

(assert (= (and b!21417 res!9346) b!21413))

(assert (= (and b!21413 res!9345) b!21408))

(assert (= (and b!21418 (is-CC!32 res!9335)) b!21421))

(assert (= (and b!21418 (is-Single!32 res!9335)) b!21424))

(assert (= (and b!21428 c!5136) b!21427))

(assert (= (and b!21428 (not c!5136)) b!21418))

(assert (= (and b!21428 c!5137) b!21419))

(assert (= (and b!21428 (not c!5137)) b!21410))

(assert (= (and b!21428 c!5135) b!21415))

(assert (= (and b!21428 (not c!5135)) b!21422))

(assert (= (and d!12931 c!5138) b!21414))

(assert (= (and d!12931 (not c!5138)) b!21428))

(assert (= (and d!12931 res!9343) b!21423))

(assert (= (and b!21423 res!9341) b!21412))

(assert (= (and b!21412 res!9338) b!21426))

(assert (= (and b!21426 res!9336) b!21411))

(assert (= (and b!21411 res!9334) b!21409))

(assert (= (and b!21409 res!9340) b!21420))

(assert (=> d!12931 m!23299))

(declare-fun m!23619 () Bool)

(assert (=> d!12931 m!23619))

(assert (=> d!12931 m!23383))

(assert (=> d!12931 m!23435))

(assert (=> b!21425 m!23299))

(declare-fun m!23621 () Bool)

(assert (=> b!21425 m!23621))

(declare-fun m!23623 () Bool)

(assert (=> b!21427 m!23623))

(assert (=> b!21416 m!23423))

(declare-fun m!23625 () Bool)

(assert (=> b!21411 m!23625))

(assert (=> b!21413 m!23437))

(assert (=> b!21412 m!23299))

(assert (=> b!21412 m!23619))

(assert (=> b!21412 m!23383))

(declare-fun m!23627 () Bool)

(assert (=> b!21412 m!23627))

(declare-fun m!23629 () Bool)

(assert (=> b!21426 m!23629))

(assert (=> b!21420 m!23299))

(declare-fun m!23631 () Bool)

(assert (=> b!21420 m!23631))

(assert (=> b!21408 m!23299))

(declare-fun m!23633 () Bool)

(assert (=> b!21408 m!23633))

(assert (=> b!21423 m!23299))

(assert (=> b!21423 m!23619))

(assert (=> b!21423 m!23383))

(assert (=> b!21423 m!23627))

(declare-fun m!23635 () Bool)

(assert (=> b!21419 m!23635))

(declare-fun m!23637 () Bool)

(assert (=> b!21415 m!23637))

(declare-fun m!23639 () Bool)

(assert (=> b!21428 m!23639))

(declare-fun m!23641 () Bool)

(assert (=> b!21428 m!23641))

(assert (=> b!21417 m!23299))

(declare-fun m!23643 () Bool)

(assert (=> b!21417 m!23643))

(assert (=> b!21409 m!23299))

(declare-fun m!23645 () Bool)

(assert (=> b!21409 m!23645))

(assert (=> b!21172 d!12931))

(declare-fun b!21429 () Bool)

(declare-fun e!11222 () Conc!33)

(assert (=> b!21429 (= e!11222 (Single!32 y!824))))

(declare-fun b!21430 () Bool)

(declare-fun e!11218 () Bool)

(assert (=> b!21430 (= e!11218 (balanced!32 (right!680 (left!677 xs!604))))))

(declare-fun b!21431 () Bool)

(declare-fun res!9353 () Bool)

(declare-fun e!11219 () Bool)

(assert (=> b!21431 (=> (not res!9353) (not e!11219))))

(declare-fun lt!3340 () Conc!33)

(assert (=> b!21431 (= res!9353 (not (isEmpty!295 lt!3340)))))

(declare-fun b!21432 () Bool)

(declare-fun e!11217 () Conc!33)

(assert (=> b!21432 (= e!11222 e!11217)))

(declare-fun c!5141 () Bool)

(assert (=> b!21432 (= c!5141 (is-Single!32 (right!680 (left!677 xs!604))))))

(declare-fun b!21433 () Bool)

(declare-fun e!11216 () Bool)

(assert (=> b!21433 (= e!11216 (balanced!32 lt!3340))))

(declare-fun b!21434 () Bool)

(declare-fun res!9352 () Bool)

(declare-fun e!11221 () Bool)

(assert (=> b!21434 (=> (not res!9352) (not e!11221))))

(assert (=> b!21434 (= res!9352 (>= (- i!298 (size!225 (left!677 (left!677 xs!604)))) 0))))

(declare-fun b!21435 () Bool)

(declare-fun res!9351 () Bool)

(assert (=> b!21435 (=> (not res!9351) (not e!11219))))

(assert (=> b!21435 (= res!9351 (insertAppendAxiomInst!13 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824))))

(declare-fun b!21436 () Bool)

(declare-fun e!11220 () Conc!33)

(assert (=> b!21436 (= e!11217 e!11220)))

(declare-fun c!5139 () Bool)

(assert (=> b!21436 (= c!5139 (< (- i!298 (size!225 (left!677 (left!677 xs!604)))) (size!225 (left!677 (right!680 (left!677 xs!604))))))))

(declare-fun b!21437 () Bool)

(assert (=> b!21437 (= e!11217 (ite (= (- i!298 (size!225 (left!677 (left!677 xs!604)))) 0) (CC!32 (Single!32 y!824) (right!680 (left!677 xs!604))) (CC!32 (right!680 (left!677 xs!604)) (Single!32 y!824))))))

(declare-fun b!21438 () Bool)

(assert (=> b!21438 (= e!11220 (concatNonEmpty!11 (insert!20 (left!677 (right!680 (left!677 xs!604))) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824) (right!680 (right!680 (left!677 xs!604)))))))

(declare-fun b!21439 () Bool)

(assert (=> b!21439 (= e!11220 (concatNonEmpty!11 (left!677 (right!680 (left!677 xs!604))) (insert!20 (right!680 (right!680 (left!677 xs!604))) (- (- i!298 (size!225 (left!677 (left!677 xs!604)))) (size!225 (left!677 (right!680 (left!677 xs!604))))) y!824)))))

(declare-fun b!21440 () Bool)

(declare-fun res!9354 () Bool)

(assert (=> b!21440 (=> (not res!9354) (not e!11219))))

(assert (=> b!21440 (= res!9354 (<= (- (level!30 lt!3340) (level!30 (right!680 (left!677 xs!604)))) 1))))

(declare-fun d!12933 () Bool)

(assert (=> d!12933 e!11219))

(declare-fun res!9355 () Bool)

(assert (=> d!12933 (=> (not res!9355) (not e!11219))))

(assert (=> d!12933 (= res!9355 e!11216)))

(declare-fun res!9347 () Bool)

(assert (=> d!12933 (=> (not res!9347) (not e!11216))))

(assert (=> d!12933 (= res!9347 (concInv!31 lt!3340))))

(assert (=> d!12933 (= lt!3340 e!11222)))

(declare-fun c!5140 () Bool)

(assert (=> d!12933 (= c!5140 (is-Empty!43 (right!680 (left!677 xs!604))))))

(assert (=> d!12933 e!11221))

(declare-fun res!9348 () Bool)

(assert (=> d!12933 (=> (not res!9348) (not e!11221))))

(assert (=> d!12933 (= res!9348 e!11218)))

(declare-fun res!9349 () Bool)

(assert (=> d!12933 (=> (not res!9349) (not e!11218))))

(assert (=> d!12933 (= res!9349 (concInv!31 (right!680 (left!677 xs!604))))))

(assert (=> d!12933 (= (insert!20 (right!680 (left!677 xs!604)) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824) lt!3340)))

(declare-fun b!21441 () Bool)

(declare-fun res!9350 () Bool)

(assert (=> b!21441 (=> (not res!9350) (not e!11219))))

(assert (=> b!21441 (= res!9350 (>= (level!30 lt!3340) (level!30 (right!680 (left!677 xs!604)))))))

(declare-fun b!21442 () Bool)

(assert (=> b!21442 (= e!11219 (= (toList!98 lt!3340) (insertAtIndex!11 (toList!98 (right!680 (left!677 xs!604))) (- i!298 (size!225 (left!677 (left!677 xs!604)))) y!824)))))

(declare-fun b!21443 () Bool)

(assert (=> b!21443 (= e!11221 (<= (- i!298 (size!225 (left!677 (left!677 xs!604)))) (size!225 (right!680 (left!677 xs!604)))))))

(assert (= (and d!12933 res!9349) b!21430))

(assert (= (and d!12933 res!9348) b!21434))

(assert (= (and b!21434 res!9352) b!21443))

(assert (= (and b!21436 c!5139) b!21438))

(assert (= (and b!21436 (not c!5139)) b!21439))

(assert (= (and b!21432 c!5141) b!21437))

(assert (= (and b!21432 (not c!5141)) b!21436))

(assert (= (and d!12933 c!5140) b!21429))

(assert (= (and d!12933 (not c!5140)) b!21432))

(assert (= (and d!12933 res!9347) b!21433))

(assert (= (and d!12933 res!9355) b!21440))

(assert (= (and b!21440 res!9354) b!21441))

(assert (= (and b!21441 res!9350) b!21431))

(assert (= (and b!21431 res!9353) b!21435))

(assert (= (and b!21435 res!9351) b!21442))

(declare-fun m!23647 () Bool)

(assert (=> d!12933 m!23647))

(assert (=> d!12933 m!23441))

(declare-fun m!23649 () Bool)

(assert (=> b!21433 m!23649))

(declare-fun m!23651 () Bool)

(assert (=> b!21435 m!23651))

(declare-fun m!23653 () Bool)

(assert (=> b!21438 m!23653))

(assert (=> b!21438 m!23653))

(declare-fun m!23655 () Bool)

(assert (=> b!21438 m!23655))

(declare-fun m!23657 () Bool)

(assert (=> b!21442 m!23657))

(assert (=> b!21442 m!23337))

(assert (=> b!21442 m!23337))

(declare-fun m!23659 () Bool)

(assert (=> b!21442 m!23659))

(assert (=> b!21439 m!23493))

(declare-fun m!23661 () Bool)

(assert (=> b!21439 m!23661))

(assert (=> b!21439 m!23661))

(declare-fun m!23663 () Bool)

(assert (=> b!21439 m!23663))

(assert (=> b!21430 m!23425))

(assert (=> b!21443 m!23245))

(declare-fun m!23665 () Bool)

(assert (=> b!21440 m!23665))

(assert (=> b!21440 m!23381))

(assert (=> b!21441 m!23665))

(assert (=> b!21441 m!23381))

(assert (=> b!21436 m!23493))

(declare-fun m!23667 () Bool)

(assert (=> b!21431 m!23667))

(assert (=> b!21172 d!12933))

(assert (=> b!21172 d!12901))

(assert (=> b!21066 d!12907))

(declare-fun d!12935 () Bool)

(assert (=> d!12935 (= (concatCorrectness!5 lt!3232 (insert!20 (left!677 xs!604) i!298 y!824) (right!680 xs!604)) (= (toList!98 lt!3232) (++!21 (toList!98 (insert!20 (left!677 xs!604) i!298 y!824)) (toList!98 (right!680 xs!604)))))))

(declare-fun bs!5049 () Bool)

(assert (= bs!5049 d!12935))

(assert (=> bs!5049 m!23203))

(assert (=> bs!5049 m!23177))

(assert (=> bs!5049 m!23385))

(declare-fun m!23669 () Bool)

(assert (=> bs!5049 m!23669))

(assert (=> bs!5049 m!23385))

(assert (=> bs!5049 m!23203))

(declare-fun m!23671 () Bool)

(assert (=> bs!5049 m!23671))

(assert (=> b!21123 d!12935))

(assert (=> b!21010 d!12867))

(assert (=> b!21010 d!12869))

(declare-fun b!21446 () Bool)

(declare-fun res!9358 () Bool)

(declare-fun e!11224 () Bool)

(assert (=> b!21446 (=> (not res!9358) (not e!11224))))

(assert (=> b!21446 (= res!9358 (balanced!32 (left!677 (right!680 xs!604))))))

(declare-fun b!21447 () Bool)

(assert (=> b!21447 (= e!11224 (balanced!32 (right!680 (right!680 xs!604))))))

(declare-fun b!21445 () Bool)

(declare-fun res!9359 () Bool)

(assert (=> b!21445 (=> (not res!9359) (not e!11224))))

(assert (=> b!21445 (= res!9359 (<= (- (level!30 (left!677 (right!680 xs!604))) (level!30 (right!680 (right!680 xs!604)))) 1))))

(declare-fun d!12937 () Bool)

(declare-fun res!9360 () Bool)

(declare-fun e!11223 () Bool)

(assert (=> d!12937 (=> res!9360 e!11223)))

(assert (=> d!12937 (= res!9360 (not (is-CC!32 (right!680 xs!604))))))

(assert (=> d!12937 (= (balanced!32 (right!680 xs!604)) e!11223)))

(declare-fun b!21444 () Bool)

(assert (=> b!21444 (= e!11223 e!11224)))

(declare-fun res!9357 () Bool)

(assert (=> b!21444 (=> (not res!9357) (not e!11224))))

(assert (=> b!21444 (= res!9357 (>= (- (level!30 (left!677 (right!680 xs!604))) (level!30 (right!680 (right!680 xs!604)))) (- 1)))))

(assert (= (and d!12937 (not res!9360)) b!21444))

(assert (= (and b!21444 res!9357) b!21445))

(assert (= (and b!21445 res!9359) b!21446))

(assert (= (and b!21446 res!9358) b!21447))

(declare-fun m!23673 () Bool)

(assert (=> b!21446 m!23673))

(declare-fun m!23675 () Bool)

(assert (=> b!21447 m!23675))

(assert (=> b!21445 m!23519))

(assert (=> b!21445 m!23517))

(assert (=> b!21444 m!23519))

(assert (=> b!21444 m!23517))

(assert (=> b!21120 d!12937))

(assert (=> b!21177 d!12875))

(assert (=> b!21177 d!12917))

(assert (=> b!21180 d!12937))

(assert (=> b!21174 d!12873))

(assert (=> b!21174 d!12875))

(declare-fun d!12939 () Bool)

(declare-fun lt!3343 () Int)

(assert (=> d!12939 (>= lt!3343 0)))

(declare-fun e!11227 () Int)

(assert (=> d!12939 (= lt!3343 e!11227)))

(declare-fun c!5144 () Bool)

(assert (=> d!12939 (= c!5144 (is-Nil!333 lt!3195))))

(assert (=> d!12939 (= (size!226 lt!3195) lt!3343)))

(declare-fun b!21452 () Bool)

(assert (=> b!21452 (= e!11227 0)))

(declare-fun b!21453 () Bool)

(assert (=> b!21453 (= e!11227 (+ 1 (size!226 (t!4333 lt!3195))))))

(assert (= (and d!12939 c!5144) b!21452))

(assert (= (and d!12939 (not c!5144)) b!21453))

(declare-fun m!23677 () Bool)

(assert (=> b!21453 m!23677))

(assert (=> d!12835 d!12939))

(assert (=> d!12835 d!12849))

(assert (=> b!21178 d!12875))

(assert (=> b!21178 d!12917))

(assert (=> b!20991 d!12849))

(declare-fun b!21456 () Bool)

(declare-fun res!9362 () Bool)

(declare-fun e!11229 () Bool)

(assert (=> b!21456 (=> (not res!9362) (not e!11229))))

(assert (=> b!21456 (= res!9362 (balanced!32 (left!677 lt!3232)))))

(declare-fun b!21457 () Bool)

(assert (=> b!21457 (= e!11229 (balanced!32 (right!680 lt!3232)))))

(declare-fun b!21455 () Bool)

(declare-fun res!9363 () Bool)

(assert (=> b!21455 (=> (not res!9363) (not e!11229))))

(assert (=> b!21455 (= res!9363 (<= (- (level!30 (left!677 lt!3232)) (level!30 (right!680 lt!3232))) 1))))

(declare-fun d!12941 () Bool)

(declare-fun res!9364 () Bool)

(declare-fun e!11228 () Bool)

(assert (=> d!12941 (=> res!9364 e!11228)))

(assert (=> d!12941 (= res!9364 (not (is-CC!32 lt!3232)))))

(assert (=> d!12941 (= (balanced!32 lt!3232) e!11228)))

(declare-fun b!21454 () Bool)

(assert (=> b!21454 (= e!11228 e!11229)))

(declare-fun res!9361 () Bool)

(assert (=> b!21454 (=> (not res!9361) (not e!11229))))

(assert (=> b!21454 (= res!9361 (>= (- (level!30 (left!677 lt!3232)) (level!30 (right!680 lt!3232))) (- 1)))))

(assert (= (and d!12941 (not res!9364)) b!21454))

(assert (= (and b!21454 res!9361) b!21455))

(assert (= (and b!21455 res!9363) b!21456))

(assert (= (and b!21456 res!9362) b!21457))

(declare-fun m!23679 () Bool)

(assert (=> b!21456 m!23679))

(declare-fun m!23681 () Bool)

(assert (=> b!21457 m!23681))

(declare-fun m!23683 () Bool)

(assert (=> b!21455 m!23683))

(declare-fun m!23685 () Bool)

(assert (=> b!21455 m!23685))

(assert (=> b!21454 m!23683))

(assert (=> b!21454 m!23685))

(assert (=> b!21114 d!12941))

(assert (=> b!21115 d!12917))

(assert (=> b!21115 d!12919))

(declare-fun b!21459 () Bool)

(declare-fun e!11230 () Int)

(declare-fun lt!3344 () Int)

(declare-fun lt!3346 () Int)

(assert (=> b!21459 (= e!11230 (+ 1 (ite (>= lt!3344 lt!3346) lt!3344 lt!3346)))))

(assert (=> b!21459 (= lt!3346 (level!30 (right!680 lt!3232)))))

(assert (=> b!21459 (= lt!3344 (level!30 (left!677 lt!3232)))))

(declare-fun d!12943 () Bool)

(declare-fun lt!3345 () Int)

(assert (=> d!12943 (>= lt!3345 0)))

(assert (=> d!12943 (= lt!3345 e!11230)))

(declare-fun c!5145 () Bool)

(assert (=> d!12943 (= c!5145 (or (is-Empty!43 lt!3232) (is-Single!32 lt!3232)))))

(assert (=> d!12943 (= (level!30 lt!3232) lt!3345)))

(declare-fun b!21458 () Bool)

(assert (=> b!21458 (= e!11230 0)))

(assert (= (and d!12943 c!5145) b!21458))

(assert (= (and d!12943 (not c!5145)) b!21459))

(assert (=> b!21459 m!23685))

(assert (=> b!21459 m!23683))

(assert (=> b!21115 d!12943))

(declare-fun b!21461 () Bool)

(declare-fun e!11232 () List!338)

(assert (=> b!21461 (= e!11232 (Cons!332 (h!246 (toList!98 (left!677 xs!604))) (++!21 (t!4333 (toList!98 (left!677 xs!604))) (toList!98 (right!680 xs!604)))))))

(declare-fun d!12945 () Bool)

(declare-fun e!11231 () Bool)

(assert (=> d!12945 e!11231))

(declare-fun res!9365 () Bool)

(assert (=> d!12945 (=> (not res!9365) (not e!11231))))

(declare-fun lt!3347 () List!338)

(assert (=> d!12945 (= res!9365 (= (content!59 lt!3347) (union (content!59 (toList!98 (left!677 xs!604))) (content!59 (toList!98 (right!680 xs!604))))))))

(assert (=> d!12945 (= lt!3347 e!11232)))

(declare-fun c!5146 () Bool)

(assert (=> d!12945 (= c!5146 (is-Nil!333 (toList!98 (left!677 xs!604))))))

(assert (=> d!12945 (= (++!21 (toList!98 (left!677 xs!604)) (toList!98 (right!680 xs!604))) lt!3347)))

(declare-fun b!21462 () Bool)

(declare-fun res!9366 () Bool)

(assert (=> b!21462 (=> (not res!9366) (not e!11231))))

(assert (=> b!21462 (= res!9366 (= (size!226 lt!3347) (+ (size!226 (toList!98 (left!677 xs!604))) (size!226 (toList!98 (right!680 xs!604))))))))

(declare-fun b!21463 () Bool)

(assert (=> b!21463 (= e!11231 (or (not (= (toList!98 (right!680 xs!604)) Nil!333)) (= lt!3347 (toList!98 (left!677 xs!604)))))))

(declare-fun b!21460 () Bool)

(assert (=> b!21460 (= e!11232 (toList!98 (right!680 xs!604)))))

(assert (= (and d!12945 c!5146) b!21460))

(assert (= (and d!12945 (not c!5146)) b!21461))

(assert (= (and d!12945 res!9365) b!21462))

(assert (= (and b!21462 res!9366) b!21463))

(assert (=> b!21461 m!23203))

(declare-fun m!23687 () Bool)

(assert (=> b!21461 m!23687))

(declare-fun m!23689 () Bool)

(assert (=> d!12945 m!23689))

(assert (=> d!12945 m!23201))

(declare-fun m!23691 () Bool)

(assert (=> d!12945 m!23691))

(assert (=> d!12945 m!23203))

(declare-fun m!23693 () Bool)

(assert (=> d!12945 m!23693))

(declare-fun m!23695 () Bool)

(assert (=> b!21462 m!23695))

(assert (=> b!21462 m!23201))

(assert (=> b!21462 m!23321))

(assert (=> b!21462 m!23203))

(assert (=> b!21462 m!23331))

(assert (=> b!21052 d!12945))

(assert (=> b!21052 d!12857))

(assert (=> b!21052 d!12859))

(assert (=> b!21126 d!12917))

(assert (=> b!21126 d!12919))

(assert (=> b!21126 d!12943))

(declare-fun b!21465 () Bool)

(declare-fun e!11233 () List!338)

(declare-fun e!11234 () List!338)

(assert (=> b!21465 (= e!11233 e!11234)))

(declare-fun c!5148 () Bool)

(assert (=> b!21465 (= c!5148 (is-Single!32 lt!3249))))

(declare-fun b!21464 () Bool)

(assert (=> b!21464 (= e!11233 Nil!333)))

(declare-fun d!12947 () Bool)

(declare-fun lt!3348 () List!338)

(assert (=> d!12947 (= (size!226 lt!3348) (size!225 lt!3249))))

(assert (=> d!12947 (= lt!3348 e!11233)))

(declare-fun c!5147 () Bool)

(assert (=> d!12947 (= c!5147 (is-Empty!43 lt!3249))))

(assert (=> d!12947 (= (toList!98 lt!3249) lt!3348)))

(declare-fun b!21466 () Bool)

(assert (=> b!21466 (= e!11234 (Cons!332 (x!8795 lt!3249) Nil!333))))

(declare-fun b!21467 () Bool)

(assert (=> b!21467 (= e!11234 (++!21 (toList!98 (left!677 lt!3249)) (toList!98 (right!680 lt!3249))))))

(assert (= (and b!21465 c!5148) b!21466))

(assert (= (and b!21465 (not c!5148)) b!21467))

(assert (= (and d!12947 c!5147) b!21464))

(assert (= (and d!12947 (not c!5147)) b!21465))

(declare-fun m!23697 () Bool)

(assert (=> d!12947 m!23697))

(declare-fun m!23699 () Bool)

(assert (=> d!12947 m!23699))

(declare-fun m!23701 () Bool)

(assert (=> b!21467 m!23701))

(declare-fun m!23703 () Bool)

(assert (=> b!21467 m!23703))

(assert (=> b!21467 m!23701))

(assert (=> b!21467 m!23703))

(declare-fun m!23705 () Bool)

(assert (=> b!21467 m!23705))

(assert (=> b!21175 d!12947))

(declare-fun e!11236 () List!338)

(declare-fun b!21471 () Bool)

(assert (=> b!21471 (= e!11236 (Cons!332 (h!246 (toList!98 (left!677 xs!604))) (insertAtIndex!11 (t!4333 (toList!98 (left!677 xs!604))) (- i!298 1) y!824)))))

(declare-fun b!21468 () Bool)

(declare-fun e!11235 () List!338)

(assert (=> b!21468 (= e!11235 (Cons!332 y!824 Nil!333))))

(declare-fun b!21470 () Bool)

(assert (=> b!21470 (= e!11236 (Cons!332 y!824 (toList!98 (left!677 xs!604))))))

(declare-fun b!21469 () Bool)

(assert (=> b!21469 (= e!11235 e!11236)))

(declare-fun c!5150 () Bool)

(assert (=> b!21469 (= c!5150 (= i!298 0))))

(declare-fun d!12949 () Bool)

(declare-fun c!5149 () Bool)

(assert (=> d!12949 (= c!5149 (is-Nil!333 (toList!98 (left!677 xs!604))))))

(assert (=> d!12949 (= (insertAtIndex!11 (toList!98 (left!677 xs!604)) i!298 y!824) e!11235)))

(assert (= (and b!21469 c!5150) b!21470))

(assert (= (and b!21469 (not c!5150)) b!21471))

(assert (= (and d!12949 c!5149) b!21468))

(assert (= (and d!12949 (not c!5149)) b!21469))

(declare-fun m!23707 () Bool)

(assert (=> b!21471 m!23707))

(assert (=> b!21175 d!12949))

(assert (=> b!21175 d!12857))

(declare-fun d!12951 () Bool)

(assert (=> d!12951 (= (isEmpty!295 lt!3249) (= lt!3249 Empty!43))))

(assert (=> b!21164 d!12951))

(assert (=> b!21169 d!12901))

(declare-fun d!12953 () Bool)

(declare-fun lt!3349 () Int)

(assert (=> d!12953 (>= lt!3349 0)))

(declare-fun e!11237 () Int)

(assert (=> d!12953 (= lt!3349 e!11237)))

(declare-fun c!5151 () Bool)

(assert (=> d!12953 (= c!5151 (is-Nil!333 lt!3194))))

(assert (=> d!12953 (= (size!226 lt!3194) lt!3349)))

(declare-fun b!21472 () Bool)

(assert (=> b!21472 (= e!11237 0)))

(declare-fun b!21473 () Bool)

(assert (=> b!21473 (= e!11237 (+ 1 (size!226 (t!4333 lt!3194))))))

(assert (= (and d!12953 c!5151) b!21472))

(assert (= (and d!12953 (not c!5151)) b!21473))

(declare-fun m!23709 () Bool)

(assert (=> b!21473 m!23709))

(assert (=> d!12831 d!12953))

(declare-fun d!12955 () Bool)

(declare-fun lt!3350 () Int)

(assert (=> d!12955 (>= lt!3350 0)))

(declare-fun e!11238 () Int)

(assert (=> d!12955 (= lt!3350 e!11238)))

(declare-fun c!5152 () Bool)

(assert (=> d!12955 (= c!5152 (is-Empty!43 res!5609))))

(assert (=> d!12955 (= (size!225 res!5609) lt!3350)))

(declare-fun b!21476 () Bool)

(declare-fun e!11239 () Int)

(assert (=> b!21476 (= e!11239 1)))

(declare-fun b!21477 () Bool)

(assert (=> b!21477 (= e!11239 (+ (size!225 (left!677 res!5609)) (size!225 (right!680 res!5609))))))

(declare-fun b!21474 () Bool)

(assert (=> b!21474 (= e!11238 0)))

(declare-fun b!21475 () Bool)

(assert (=> b!21475 (= e!11238 e!11239)))

(declare-fun c!5153 () Bool)

(assert (=> b!21475 (= c!5153 (is-Single!32 res!5609))))

(assert (= (and b!21475 c!5153) b!21476))

(assert (= (and b!21475 (not c!5153)) b!21477))

(assert (= (and d!12955 c!5152) b!21474))

(assert (= (and d!12955 (not c!5152)) b!21475))

(assert (=> b!21477 m!23471))

(assert (=> b!21477 m!23481))

(assert (=> d!12831 d!12955))

(assert (=> b!21163 d!12881))

(declare-fun d!12957 () Bool)

(assert (=> d!12957 (= (isEmpty!295 (left!677 xs!604)) (= (left!677 xs!604) Empty!43))))

(assert (=> b!21065 d!12957))

(declare-fun b!21480 () Bool)

(declare-fun res!9368 () Bool)

(declare-fun e!11241 () Bool)

(assert (=> b!21480 (=> (not res!9368) (not e!11241))))

(assert (=> b!21480 (= res!9368 (balanced!32 (left!677 (insert!20 (left!677 xs!604) i!298 y!824))))))

(declare-fun b!21481 () Bool)

(assert (=> b!21481 (= e!11241 (balanced!32 (right!680 (insert!20 (left!677 xs!604) i!298 y!824))))))

(declare-fun b!21479 () Bool)

(declare-fun res!9369 () Bool)

(assert (=> b!21479 (=> (not res!9369) (not e!11241))))

(assert (=> b!21479 (= res!9369 (<= (- (level!30 (left!677 (insert!20 (left!677 xs!604) i!298 y!824))) (level!30 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) 1))))

(declare-fun d!12959 () Bool)

(declare-fun res!9370 () Bool)

(declare-fun e!11240 () Bool)

(assert (=> d!12959 (=> res!9370 e!11240)))

(assert (=> d!12959 (= res!9370 (not (is-CC!32 (insert!20 (left!677 xs!604) i!298 y!824))))))

(assert (=> d!12959 (= (balanced!32 (insert!20 (left!677 xs!604) i!298 y!824)) e!11240)))

(declare-fun b!21478 () Bool)

(assert (=> b!21478 (= e!11240 e!11241)))

(declare-fun res!9367 () Bool)

(assert (=> b!21478 (=> (not res!9367) (not e!11241))))

(assert (=> b!21478 (= res!9367 (>= (- (level!30 (left!677 (insert!20 (left!677 xs!604) i!298 y!824))) (level!30 (right!680 (insert!20 (left!677 xs!604) i!298 y!824)))) (- 1)))))

(assert (= (and d!12959 (not res!9370)) b!21478))

(assert (= (and b!21478 res!9367) b!21479))

(assert (= (and b!21479 res!9369) b!21480))

(assert (= (and b!21480 res!9368) b!21481))

(declare-fun m!23711 () Bool)

(assert (=> b!21480 m!23711))

(declare-fun m!23713 () Bool)

(assert (=> b!21481 m!23713))

(assert (=> b!21479 m!23523))

(assert (=> b!21479 m!23521))

(assert (=> b!21478 m!23523))

(assert (=> b!21478 m!23521))

(assert (=> b!21119 d!12959))

(declare-fun b!21482 () Bool)

(declare-fun e!11242 () Bool)

(declare-fun tp!4777 () Bool)

(declare-fun tp!4778 () Bool)

(assert (=> b!21482 (= e!11242 (and tp!4777 tp!4778))))

(declare-fun b!21483 () Bool)

(assert (=> b!21483 (= e!11242 tp_is_empty!101)))

(assert (=> b!21197 (= tp!4769 e!11242)))

(assert (= (and b!21197 (is-CC!32 (left!677 (right!680 xs!604)))) b!21482))

(assert (= (and b!21197 (is-Single!32 (left!677 (right!680 xs!604)))) b!21483))

(declare-fun b!21484 () Bool)

(declare-fun e!11243 () Bool)

(declare-fun tp!4779 () Bool)

(declare-fun tp!4780 () Bool)

(assert (=> b!21484 (= e!11243 (and tp!4779 tp!4780))))

(declare-fun b!21485 () Bool)

(assert (=> b!21485 (= e!11243 tp_is_empty!101)))

(assert (=> b!21197 (= tp!4770 e!11243)))

(assert (= (and b!21197 (is-CC!32 (right!680 (right!680 xs!604)))) b!21484))

(assert (= (and b!21197 (is-Single!32 (right!680 (right!680 xs!604)))) b!21485))

(declare-fun b!21486 () Bool)

(declare-fun e!11244 () Bool)

(declare-fun tp!4781 () Bool)

(declare-fun tp!4782 () Bool)

(assert (=> b!21486 (= e!11244 (and tp!4781 tp!4782))))

(declare-fun b!21487 () Bool)

(assert (=> b!21487 (= e!11244 tp_is_empty!101)))

(assert (=> b!21195 (= tp!4767 e!11244)))

(assert (= (and b!21195 (is-CC!32 (left!677 (left!677 xs!604)))) b!21486))

(assert (= (and b!21195 (is-Single!32 (left!677 (left!677 xs!604)))) b!21487))

(declare-fun b!21488 () Bool)

(declare-fun e!11245 () Bool)

(declare-fun tp!4783 () Bool)

(declare-fun tp!4784 () Bool)

(assert (=> b!21488 (= e!11245 (and tp!4783 tp!4784))))

(declare-fun b!21489 () Bool)

(assert (=> b!21489 (= e!11245 tp_is_empty!101)))

(assert (=> b!21195 (= tp!4768 e!11245)))

(assert (= (and b!21195 (is-CC!32 (right!680 (left!677 xs!604)))) b!21488))

(assert (= (and b!21195 (is-Single!32 (right!680 (left!677 xs!604)))) b!21489))

(declare-fun b!21490 () Bool)

(declare-fun e!11246 () Bool)

(declare-fun tp!4785 () Bool)

(declare-fun tp!4786 () Bool)

(assert (=> b!21490 (= e!11246 (and tp!4785 tp!4786))))

(declare-fun b!21491 () Bool)

(assert (=> b!21491 (= e!11246 tp_is_empty!101)))

(assert (=> b!21193 (= tp!4765 e!11246)))

(assert (= (and b!21193 (is-CC!32 (left!677 (right!680 res!5609)))) b!21490))

(assert (= (and b!21193 (is-Single!32 (left!677 (right!680 res!5609)))) b!21491))

(declare-fun b!21492 () Bool)

(declare-fun e!11247 () Bool)

(declare-fun tp!4787 () Bool)

(declare-fun tp!4788 () Bool)

(assert (=> b!21492 (= e!11247 (and tp!4787 tp!4788))))

(declare-fun b!21493 () Bool)

(assert (=> b!21493 (= e!11247 tp_is_empty!101)))

(assert (=> b!21193 (= tp!4766 e!11247)))

(assert (= (and b!21193 (is-CC!32 (right!680 (right!680 res!5609)))) b!21492))

(assert (= (and b!21193 (is-Single!32 (right!680 (right!680 res!5609)))) b!21493))

(declare-fun b!21494 () Bool)

(declare-fun e!11248 () Bool)

(declare-fun tp!4789 () Bool)

(declare-fun tp!4790 () Bool)

(assert (=> b!21494 (= e!11248 (and tp!4789 tp!4790))))

(declare-fun b!21495 () Bool)

(assert (=> b!21495 (= e!11248 tp_is_empty!101)))

(assert (=> b!21124 (= tp!4757 e!11248)))

(assert (= (and b!21124 (is-CC!32 (left!677 res!9163))) b!21494))

(assert (= (and b!21124 (is-Single!32 (left!677 res!9163))) b!21495))

(declare-fun b!21496 () Bool)

(declare-fun e!11249 () Bool)

(declare-fun tp!4791 () Bool)

(declare-fun tp!4792 () Bool)

(assert (=> b!21496 (= e!11249 (and tp!4791 tp!4792))))

(declare-fun b!21497 () Bool)

(assert (=> b!21497 (= e!11249 tp_is_empty!101)))

(assert (=> b!21124 (= tp!4758 e!11249)))

(assert (= (and b!21124 (is-CC!32 (right!680 res!9163))) b!21496))

(assert (= (and b!21124 (is-Single!32 (right!680 res!9163))) b!21497))

(declare-fun b!21498 () Bool)

(declare-fun e!11250 () Bool)

(declare-fun tp!4793 () Bool)

(declare-fun tp!4794 () Bool)

(assert (=> b!21498 (= e!11250 (and tp!4793 tp!4794))))

(declare-fun b!21499 () Bool)

(assert (=> b!21499 (= e!11250 tp_is_empty!101)))

(assert (=> b!21191 (= tp!4763 e!11250)))

(assert (= (and b!21191 (is-CC!32 (left!677 (left!677 res!5609)))) b!21498))

(assert (= (and b!21191 (is-Single!32 (left!677 (left!677 res!5609)))) b!21499))

(declare-fun b!21500 () Bool)

(declare-fun e!11251 () Bool)

(declare-fun tp!4795 () Bool)

(declare-fun tp!4796 () Bool)

(assert (=> b!21500 (= e!11251 (and tp!4795 tp!4796))))

(declare-fun b!21501 () Bool)

(assert (=> b!21501 (= e!11251 tp_is_empty!101)))

(assert (=> b!21191 (= tp!4764 e!11251)))

(assert (= (and b!21191 (is-CC!32 (right!680 (left!677 res!5609)))) b!21500))

(assert (= (and b!21191 (is-Single!32 (right!680 (left!677 res!5609)))) b!21501))

(push 1)

(assert (not b!21344))

(assert (not b!21199))

(assert (not b!21488))

(assert (not b!21286))

(assert (not b!21270))

(assert (not b!21329))

(assert (not b!21500))

(assert (not b!21274))

(assert (not b!21445))

(assert (not b!21241))

(assert (not b!21355))

(assert (not b!21351))

(assert (not b!21201))

(assert (not b!21347))

(assert (not b!21287))

(assert (not b!21482))

(assert (not b!21385))

(assert (not b!21480))

(assert (not b!21459))

(assert (not b!21334))

(assert (not b!21333))

(assert (not b!21239))

(assert (not b!21435))

(assert (not b!21335))

(assert (not b!21376))

(assert (not b!21235))

(assert (not b!21370))

(assert (not b!21200))

(assert (not b!21477))

(assert (not b!21492))

(assert (not b!21383))

(assert (not b!21447))

(assert (not b!21346))

(assert (not b!21457))

(assert (not b!21350))

(assert (not b!21456))

(assert (not d!12945))

(assert (not b!21349))

(assert (not b!21423))

(assert (not b!21380))

(assert (not b!21431))

(assert (not b!21433))

(assert (not b!21281))

(assert (not b!21276))

(assert (not d!12947))

(assert (not b!21279))

(assert (not b!21202))

(assert (not b!21484))

(assert (not b!21381))

(assert (not b!21406))

(assert (not b!21296))

(assert (not b!21247))

(assert (not b!21400))

(assert (not d!12859))

(assert (not b!21352))

(assert (not b!21278))

(assert (not b!21430))

(assert (not b!21409))

(assert (not b!21404))

(assert (not b!21221))

(assert (not b!21267))

(assert (not b!21420))

(assert (not b!21330))

(assert (not b!21213))

(assert (not b!21377))

(assert (not d!12927))

(assert (not b!21467))

(assert (not b!21366))

(assert (not b!21438))

(assert (not d!12933))

(assert (not d!12923))

(assert (not d!12897))

(assert (not d!12931))

(assert (not b!21479))

(assert (not b!21419))

(assert (not b!21227))

(assert (not b!21290))

(assert (not b!21266))

(assert (not b!21338))

(assert (not b!21441))

(assert (not b!21389))

(assert (not d!12935))

(assert (not b!21421))

(assert (not b!21298))

(assert (not b!21225))

(assert (not b!21427))

(assert (not b!21372))

(assert (not b!21443))

(assert (not b!21444))

(assert (not b!21294))

(assert (not b!21369))

(assert (not b!21285))

(assert (not b!21217))

(assert (not b!21363))

(assert (not b!21316))

(assert (not b!21481))

(assert (not d!12895))

(assert (not b!21428))

(assert (not b!21368))

(assert (not b!21362))

(assert (not b!21360))

(assert (not b!21494))

(assert (not b!21359))

(assert (not b!21216))

(assert (not b!21288))

(assert (not b!21399))

(assert (not b!21375))

(assert (not b!21230))

(assert (not b!21231))

(assert (not b!21311))

(assert (not b!21403))

(assert (not b!21402))

(assert (not b!21471))

(assert (not b!21284))

(assert (not b!21233))

(assert (not b!21408))

(assert (not b!21486))

(assert (not b!21371))

(assert (not b!21453))

(assert (not b!21324))

(assert (not b!21439))

(assert (not d!12857))

(assert (not b!21228))

(assert (not b!21394))

(assert (not b!21282))

(assert (not b!21440))

(assert (not b!21226))

(assert (not b!21412))

(assert (not b!21245))

(assert (not b!21473))

(assert (not b!21280))

(assert (not b!21358))

(assert (not b!21268))

(assert (not b!21413))

(assert (not b!21373))

(assert (not b!21397))

(assert (not b!21354))

(assert (not b!21392))

(assert (not b!21436))

(assert (not b!21275))

(assert (not b!21332))

(assert (not b!21455))

(assert (not b!21328))

(assert (not b!21384))

(assert (not b!21390))

(assert (not b!21462))

(assert (not b!21242))

(assert (not b!21407))

(assert (not b!21342))

(assert (not d!12925))

(assert (not b!21416))

(assert (not b!21289))

(assert (not b!21446))

(assert tp_is_empty!101)

(assert (not b!21405))

(assert (not b!21232))

(assert (not b!21336))

(assert (not b!21379))

(assert (not b!21243))

(assert (not b!21391))

(assert (not b!21411))

(assert (not b!21498))

(assert (not b!21425))

(assert (not b!21214))

(assert (not b!21426))

(assert (not d!12899))

(assert (not b!21442))

(assert (not b!21364))

(assert (not b!21237))

(assert (not b!21295))

(assert (not b!21348))

(assert (not b!21490))

(assert (not b!21269))

(assert (not b!21215))

(assert (not b!21320))

(assert (not b!21229))

(assert (not b!21310))

(assert (not b!21300))

(assert (not b!21277))

(assert (not b!21478))

(assert (not b!21496))

(assert (not b!21461))

(assert (not b!21387))

(assert (not b!21356))

(assert (not b!21283))

(assert (not b!21240))

(assert (not b!21395))

(assert (not b!21417))

(assert (not b!21331))

(assert (not b!21454))

(assert (not b!21415))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

