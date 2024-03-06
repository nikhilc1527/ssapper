; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3584 () Bool)

(assert start!3584)

(declare-fun b!22935 () Bool)

(declare-fun res!10111 () Bool)

(declare-fun e!11960 () Bool)

(assert (=> b!22935 (=> (not res!10111) (not e!11960))))

(declare-datatypes () ((T!1785 (T!1786 (val!65 Int)))))

(declare-datatypes () ((Conc!42 (CC!41 (left!686 Conc!42) (right!689 Conc!42)) (Single!41 (x!8832 T!1785)) (Empty!52))))

(declare-fun xs!572 () Conc!42)

(declare-fun balanced!39 (Conc!42) Bool)

(assert (=> b!22935 (= res!10111 (balanced!39 xs!572))))

(declare-fun b!22936 () Bool)

(declare-fun res!10117 () Bool)

(assert (=> b!22936 (=> (not res!10117) (not e!11960))))

(declare-fun i!252 () Int)

(declare-fun size!244 (Conc!42) Int)

(assert (=> b!22936 (= res!10117 (< i!252 (size!244 (left!686 xs!572))))))

(declare-fun b!22937 () Bool)

(declare-fun e!11961 () Bool)

(declare-fun index!10 () Int)

(declare-datatypes () ((List!348 (Cons!342 (h!256 T!1785) (t!4343 List!348)) (Nil!343))))

(declare-fun thiss!2719 () List!348)

(declare-fun size!245 (List!348) Int)

(assert (=> b!22937 (= e!11961 (>= index!10 (size!245 thiss!2719)))))

(declare-fun b!22938 () Bool)

(declare-fun res!10114 () Bool)

(assert (=> b!22938 (=> (not res!10114) (not e!11960))))

(declare-fun isEmpty!301 (Conc!42) Bool)

(assert (=> b!22938 (= res!10114 (not (isEmpty!301 xs!572)))))

(declare-fun res!10119 () Bool)

(assert (=> start!3584 (=> (not res!10119) (not e!11960))))

(declare-fun concInv!38 (Conc!42) Bool)

(assert (=> start!3584 (= res!10119 (concInv!38 xs!572))))

(assert (=> start!3584 e!11960))

(assert (=> start!3584 true))

(declare-fun tp_is_empty!129 () Bool)

(assert (=> start!3584 tp_is_empty!129))

(declare-fun e!11959 () Bool)

(assert (=> start!3584 e!11959))

(declare-fun e!11962 () Bool)

(assert (=> start!3584 e!11962))

(declare-fun b!22939 () Bool)

(declare-fun res!10118 () Bool)

(assert (=> b!22939 (=> (not res!10118) (not e!11960))))

(assert (=> b!22939 (= res!10118 (>= i!252 0))))

(declare-fun b!22940 () Bool)

(declare-fun res!10113 () Bool)

(assert (=> b!22940 (=> (not res!10113) (not e!11960))))

(declare-fun toList!103 (Conc!42) List!348)

(assert (=> b!22940 (= res!10113 (= thiss!2719 (toList!103 xs!572)))))

(declare-fun b!22941 () Bool)

(assert (=> b!22941 (= e!11959 tp_is_empty!129)))

(declare-fun b!22942 () Bool)

(declare-fun tp!5038 () Bool)

(declare-fun tp!5037 () Bool)

(assert (=> b!22942 (= e!11959 (and tp!5038 tp!5037))))

(declare-fun b!22943 () Bool)

(declare-fun tp!5036 () Bool)

(assert (=> b!22943 (= e!11962 (and tp_is_empty!129 tp!5036))))

(declare-fun b!22944 () Bool)

(declare-fun res!10109 () Bool)

(assert (=> b!22944 (=> (not res!10109) (not e!11960))))

(declare-fun res!5554 () T!1785)

(declare-fun lookup!4 (Conc!42 Int) T!1785)

(assert (=> b!22944 (= res!10109 (= res!5554 (lookup!4 (left!686 xs!572) i!252)))))

(declare-fun b!22945 () Bool)

(declare-fun res!10112 () Bool)

(assert (=> b!22945 (=> (not res!10112) (not e!11960))))

(assert (=> b!22945 (= res!10112 (= index!10 i!252))))

(declare-fun b!22946 () Bool)

(declare-fun res!10110 () Bool)

(assert (=> b!22946 (=> (not res!10110) (not e!11960))))

(assert (=> b!22946 (= res!10110 (not (is-Single!41 xs!572)))))

(declare-fun b!22947 () Bool)

(declare-fun res!10116 () Bool)

(assert (=> b!22947 (=> (not res!10116) (not e!11960))))

(declare-fun instAppendIndexAxiom!4 (Conc!42 Int) Bool)

(assert (=> b!22947 (= res!10116 (instAppendIndexAxiom!4 xs!572 i!252))))

(declare-fun b!22948 () Bool)

(assert (=> b!22948 (= e!11960 e!11961)))

(declare-fun res!10108 () Bool)

(assert (=> b!22948 (=> res!10108 e!11961)))

(assert (=> b!22948 (= res!10108 (> 0 index!10))))

(declare-fun b!22949 () Bool)

(declare-fun res!10115 () Bool)

(assert (=> b!22949 (=> (not res!10115) (not e!11960))))

(assert (=> b!22949 (= res!10115 (< i!252 (size!244 xs!572)))))

(assert (= (and start!3584 res!10119) b!22935))

(assert (= (and b!22935 res!10111) b!22938))

(assert (= (and b!22938 res!10114) b!22939))

(assert (= (and b!22939 res!10118) b!22949))

(assert (= (and b!22949 res!10115) b!22946))

(assert (= (and b!22946 res!10110) b!22936))

(assert (= (and b!22936 res!10117) b!22944))

(assert (= (and b!22944 res!10109) b!22947))

(assert (= (and b!22947 res!10116) b!22940))

(assert (= (and b!22940 res!10113) b!22945))

(assert (= (and b!22945 res!10112) b!22948))

(assert (= (and b!22948 (not res!10108)) b!22937))

(assert (= (and start!3584 (is-CC!41 xs!572)) b!22942))

(assert (= (and start!3584 (is-Single!41 xs!572)) b!22941))

(assert (= (and start!3584 (is-Cons!342 thiss!2719)) b!22943))

(declare-fun m!24721 () Bool)

(assert (=> b!22937 m!24721))

(declare-fun m!24723 () Bool)

(assert (=> start!3584 m!24723))

(declare-fun m!24725 () Bool)

(assert (=> b!22940 m!24725))

(declare-fun m!24727 () Bool)

(assert (=> b!22938 m!24727))

(declare-fun m!24729 () Bool)

(assert (=> b!22935 m!24729))

(declare-fun m!24731 () Bool)

(assert (=> b!22947 m!24731))

(declare-fun m!24733 () Bool)

(assert (=> b!22949 m!24733))

(declare-fun m!24735 () Bool)

(assert (=> b!22936 m!24735))

(declare-fun m!24737 () Bool)

(assert (=> b!22944 m!24737))

(push 1)

(assert (not b!22942))

(assert (not b!22949))

(assert (not b!22940))

(assert (not b!22937))

(assert (not b!22938))

(assert (not start!3584))

(assert (not b!22943))

(assert (not b!22947))

(assert tp_is_empty!129)

(assert (not b!22944))

(assert (not b!22935))

(assert (not b!22936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!22961 () Bool)

(declare-fun e!11967 () Int)

(assert (=> b!22961 (= e!11967 (+ (size!244 (left!686 (left!686 xs!572))) (size!244 (right!689 (left!686 xs!572)))))))

(declare-fun d!13239 () Bool)

(declare-fun lt!3592 () Int)

(assert (=> d!13239 (>= lt!3592 0)))

(declare-fun e!11968 () Int)

(assert (=> d!13239 (= lt!3592 e!11968)))

(declare-fun c!5404 () Bool)

(assert (=> d!13239 (= c!5404 (is-Empty!52 (left!686 xs!572)))))

(assert (=> d!13239 (= (size!244 (left!686 xs!572)) lt!3592)))

(declare-fun b!22959 () Bool)

(assert (=> b!22959 (= e!11968 e!11967)))

(declare-fun c!5403 () Bool)

(assert (=> b!22959 (= c!5403 (is-Single!41 (left!686 xs!572)))))

(declare-fun b!22958 () Bool)

(assert (=> b!22958 (= e!11968 0)))

(declare-fun b!22960 () Bool)

(assert (=> b!22960 (= e!11967 1)))

(assert (= (and b!22959 c!5403) b!22960))

(assert (= (and b!22959 (not c!5403)) b!22961))

(assert (= (and d!13239 c!5404) b!22958))

(assert (= (and d!13239 (not c!5404)) b!22959))

(declare-fun m!24739 () Bool)

(assert (=> b!22961 m!24739))

(declare-fun m!24741 () Bool)

(assert (=> b!22961 m!24741))

(assert (=> b!22936 d!13239))

(declare-fun b!22980 () Bool)

(declare-fun e!11983 () Bool)

(declare-fun lt!3595 () T!1785)

(declare-fun apply!43 (List!348 Int) T!1785)

(assert (=> b!22980 (= e!11983 (= lt!3595 (apply!43 (toList!103 (left!686 xs!572)) i!252)))))

(declare-fun d!13241 () Bool)

(assert (=> d!13241 e!11983))

(declare-fun res!10133 () Bool)

(assert (=> d!13241 (=> (not res!10133) (not e!11983))))

(assert (=> d!13241 (= res!10133 (instAppendIndexAxiom!4 (left!686 xs!572) i!252))))

(declare-fun e!11982 () T!1785)

(assert (=> d!13241 (= lt!3595 e!11982)))

(declare-fun c!5410 () Bool)

(assert (=> d!13241 (= c!5410 (is-Single!41 (left!686 xs!572)))))

(declare-fun e!11980 () Bool)

(assert (=> d!13241 e!11980))

(declare-fun res!10132 () Bool)

(assert (=> d!13241 (=> (not res!10132) (not e!11980))))

(declare-fun e!11981 () Bool)

(assert (=> d!13241 (= res!10132 e!11981)))

(declare-fun res!10135 () Bool)

(assert (=> d!13241 (=> (not res!10135) (not e!11981))))

(assert (=> d!13241 (= res!10135 (concInv!38 (left!686 xs!572)))))

(assert (=> d!13241 (= (lookup!4 (left!686 xs!572) i!252) lt!3595)))

(declare-fun b!22981 () Bool)

(declare-fun res!10134 () Bool)

(assert (=> b!22981 (=> (not res!10134) (not e!11980))))

(assert (=> b!22981 (= res!10134 (not (isEmpty!301 (left!686 xs!572))))))

(declare-fun b!22982 () Bool)

(assert (=> b!22982 (= e!11982 (x!8832 (left!686 xs!572)))))

(declare-fun b!22983 () Bool)

(assert (=> b!22983 (= e!11980 (< i!252 (size!244 (left!686 xs!572))))))

(declare-fun b!22984 () Bool)

(declare-fun e!11979 () T!1785)

(assert (=> b!22984 (= e!11979 (lookup!4 (left!686 (left!686 xs!572)) i!252))))

(declare-fun b!22985 () Bool)

(assert (=> b!22985 (= e!11982 e!11979)))

(declare-fun c!5409 () Bool)

(assert (=> b!22985 (= c!5409 (< i!252 (size!244 (left!686 (left!686 xs!572)))))))

(declare-fun b!22986 () Bool)

(assert (=> b!22986 (= e!11981 (balanced!39 (left!686 xs!572)))))

(declare-fun b!22987 () Bool)

(declare-fun res!10131 () Bool)

(assert (=> b!22987 (=> (not res!10131) (not e!11980))))

(assert (=> b!22987 (= res!10131 (>= i!252 0))))

(declare-fun b!22988 () Bool)

(assert (=> b!22988 (= e!11979 (lookup!4 (right!689 (left!686 xs!572)) (- i!252 (size!244 (left!686 (left!686 xs!572))))))))

(assert (= (and d!13241 res!10135) b!22986))

(assert (= (and d!13241 res!10132) b!22981))

(assert (= (and b!22981 res!10134) b!22987))

(assert (= (and b!22987 res!10131) b!22983))

(assert (= (and b!22985 c!5409) b!22984))

(assert (= (and b!22985 (not c!5409)) b!22988))

(assert (= (and d!13241 c!5410) b!22982))

(assert (= (and d!13241 (not c!5410)) b!22985))

(assert (= (and d!13241 res!10133) b!22980))

(declare-fun m!24743 () Bool)

(assert (=> b!22984 m!24743))

(declare-fun m!24745 () Bool)

(assert (=> b!22981 m!24745))

(declare-fun m!24747 () Bool)

(assert (=> b!22980 m!24747))

(assert (=> b!22980 m!24747))

(declare-fun m!24749 () Bool)

(assert (=> b!22980 m!24749))

(declare-fun m!24751 () Bool)

(assert (=> d!13241 m!24751))

(declare-fun m!24753 () Bool)

(assert (=> d!13241 m!24753))

(assert (=> b!22988 m!24739))

(declare-fun m!24755 () Bool)

(assert (=> b!22988 m!24755))

(declare-fun m!24757 () Bool)

(assert (=> b!22986 m!24757))

(assert (=> b!22983 m!24735))

(assert (=> b!22985 m!24739))

(assert (=> b!22944 d!13241))

(declare-fun b!22997 () Bool)

(declare-fun e!11988 () Bool)

(declare-fun e!11989 () Bool)

(assert (=> b!22997 (= e!11988 e!11989)))

(declare-fun res!10144 () Bool)

(assert (=> b!22997 (=> (not res!10144) (not e!11989))))

(assert (=> b!22997 (= res!10144 (not (isEmpty!301 (left!686 xs!572))))))

(declare-fun b!22998 () Bool)

(declare-fun res!10146 () Bool)

(assert (=> b!22998 (=> (not res!10146) (not e!11989))))

(assert (=> b!22998 (= res!10146 (not (isEmpty!301 (right!689 xs!572))))))

(declare-fun b!23000 () Bool)

(assert (=> b!23000 (= e!11989 (concInv!38 (right!689 xs!572)))))

(declare-fun b!22999 () Bool)

(declare-fun res!10145 () Bool)

(assert (=> b!22999 (=> (not res!10145) (not e!11989))))

(assert (=> b!22999 (= res!10145 (concInv!38 (left!686 xs!572)))))

(declare-fun d!13243 () Bool)

(declare-fun res!10147 () Bool)

(assert (=> d!13243 (=> res!10147 e!11988)))

(assert (=> d!13243 (= res!10147 (not (is-CC!41 xs!572)))))

(assert (=> d!13243 (= (concInv!38 xs!572) e!11988)))

(assert (= (and d!13243 (not res!10147)) b!22997))

(assert (= (and b!22997 res!10144) b!22998))

(assert (= (and b!22998 res!10146) b!22999))

(assert (= (and b!22999 res!10145) b!23000))

(assert (=> b!22997 m!24745))

(declare-fun m!24759 () Bool)

(assert (=> b!22998 m!24759))

(declare-fun m!24761 () Bool)

(assert (=> b!23000 m!24761))

(assert (=> b!22999 m!24753))

(assert (=> start!3584 d!13243))

(declare-fun b!23010 () Bool)

(declare-fun e!11995 () List!348)

(declare-fun e!11994 () List!348)

(assert (=> b!23010 (= e!11995 e!11994)))

(declare-fun c!5416 () Bool)

(assert (=> b!23010 (= c!5416 (is-Single!41 xs!572))))

(declare-fun d!13245 () Bool)

(declare-fun lt!3598 () List!348)

(assert (=> d!13245 (= (size!245 lt!3598) (size!244 xs!572))))

(assert (=> d!13245 (= lt!3598 e!11995)))

(declare-fun c!5415 () Bool)

(assert (=> d!13245 (= c!5415 (is-Empty!52 xs!572))))

(assert (=> d!13245 (= (toList!103 xs!572) lt!3598)))

(declare-fun b!23011 () Bool)

(assert (=> b!23011 (= e!11994 (Cons!342 (x!8832 xs!572) Nil!343))))

(declare-fun b!23009 () Bool)

(assert (=> b!23009 (= e!11995 Nil!343)))

(declare-fun b!23012 () Bool)

(declare-fun ++!28 (List!348 List!348) List!348)

(assert (=> b!23012 (= e!11994 (++!28 (toList!103 (left!686 xs!572)) (toList!103 (right!689 xs!572))))))

(assert (= (and b!23010 c!5416) b!23011))

(assert (= (and b!23010 (not c!5416)) b!23012))

(assert (= (and d!13245 c!5415) b!23009))

(assert (= (and d!13245 (not c!5415)) b!23010))

(declare-fun m!24763 () Bool)

(assert (=> d!13245 m!24763))

(assert (=> d!13245 m!24733))

(assert (=> b!23012 m!24747))

(declare-fun m!24765 () Bool)

(assert (=> b!23012 m!24765))

(assert (=> b!23012 m!24747))

(assert (=> b!23012 m!24765))

(declare-fun m!24767 () Bool)

(assert (=> b!23012 m!24767))

(assert (=> b!22940 d!13245))

(declare-fun b!23016 () Bool)

(declare-fun e!11996 () Int)

(assert (=> b!23016 (= e!11996 (+ (size!244 (left!686 xs!572)) (size!244 (right!689 xs!572))))))

(declare-fun d!13247 () Bool)

(declare-fun lt!3599 () Int)

(assert (=> d!13247 (>= lt!3599 0)))

(declare-fun e!11997 () Int)

(assert (=> d!13247 (= lt!3599 e!11997)))

(declare-fun c!5418 () Bool)

(assert (=> d!13247 (= c!5418 (is-Empty!52 xs!572))))

(assert (=> d!13247 (= (size!244 xs!572) lt!3599)))

(declare-fun b!23014 () Bool)

(assert (=> b!23014 (= e!11997 e!11996)))

(declare-fun c!5417 () Bool)

(assert (=> b!23014 (= c!5417 (is-Single!41 xs!572))))

(declare-fun b!23013 () Bool)

(assert (=> b!23013 (= e!11997 0)))

(declare-fun b!23015 () Bool)

(assert (=> b!23015 (= e!11996 1)))

(assert (= (and b!23014 c!5417) b!23015))

(assert (= (and b!23014 (not c!5417)) b!23016))

(assert (= (and d!13247 c!5418) b!23013))

(assert (= (and d!13247 (not c!5418)) b!23014))

(assert (=> b!23016 m!24735))

(declare-fun m!24769 () Bool)

(assert (=> b!23016 m!24769))

(assert (=> b!22949 d!13247))

(declare-fun b!23027 () Bool)

(declare-fun res!10159 () Bool)

(declare-fun e!12003 () Bool)

(assert (=> b!23027 (=> (not res!10159) (not e!12003))))

(assert (=> b!23027 (= res!10159 (balanced!39 (left!686 xs!572)))))

(declare-fun b!23025 () Bool)

(declare-fun e!12002 () Bool)

(assert (=> b!23025 (= e!12002 e!12003)))

(declare-fun res!10157 () Bool)

(assert (=> b!23025 (=> (not res!10157) (not e!12003))))

(declare-fun level!34 (Conc!42) Int)

(assert (=> b!23025 (= res!10157 (>= (- (level!34 (left!686 xs!572)) (level!34 (right!689 xs!572))) (- 1)))))

(declare-fun b!23028 () Bool)

(assert (=> b!23028 (= e!12003 (balanced!39 (right!689 xs!572)))))

(declare-fun b!23026 () Bool)

(declare-fun res!10160 () Bool)

(assert (=> b!23026 (=> (not res!10160) (not e!12003))))

(assert (=> b!23026 (= res!10160 (<= (- (level!34 (left!686 xs!572)) (level!34 (right!689 xs!572))) 1))))

(declare-fun d!13249 () Bool)

(declare-fun res!10158 () Bool)

(assert (=> d!13249 (=> res!10158 e!12002)))

(assert (=> d!13249 (= res!10158 (not (is-CC!41 xs!572)))))

(assert (=> d!13249 (= (balanced!39 xs!572) e!12002)))

(assert (= (and d!13249 (not res!10158)) b!23025))

(assert (= (and b!23025 res!10157) b!23026))

(assert (= (and b!23026 res!10160) b!23027))

(assert (= (and b!23027 res!10159) b!23028))

(assert (=> b!23027 m!24757))

(declare-fun m!24771 () Bool)

(assert (=> b!23025 m!24771))

(declare-fun m!24773 () Bool)

(assert (=> b!23025 m!24773))

(declare-fun m!24775 () Bool)

(assert (=> b!23028 m!24775))

(assert (=> b!23026 m!24771))

(assert (=> b!23026 m!24773))

(assert (=> b!22935 d!13249))

(declare-fun d!13251 () Bool)

(declare-fun e!12009 () Bool)

(assert (=> d!13251 e!12009))

(declare-fun res!10166 () Bool)

(assert (=> d!13251 (=> res!10166 e!12009)))

(assert (=> d!13251 (= res!10166 (not (is-CC!41 xs!572)))))

(declare-fun e!12008 () Bool)

(assert (=> d!13251 e!12008))

(declare-fun res!10165 () Bool)

(assert (=> d!13251 (=> (not res!10165) (not e!12008))))

(assert (=> d!13251 (= res!10165 (<= 0 i!252))))

(assert (=> d!13251 (= (instAppendIndexAxiom!4 xs!572 i!252) true)))

(declare-fun b!23033 () Bool)

(assert (=> b!23033 (= e!12008 (< i!252 (size!244 xs!572)))))

(declare-fun b!23034 () Bool)

(declare-fun appendIndex!3 (List!348 List!348 Int) Bool)

(assert (=> b!23034 (= e!12009 (appendIndex!3 (toList!103 (left!686 xs!572)) (toList!103 (right!689 xs!572)) i!252))))

(assert (= (and d!13251 res!10165) b!23033))

(assert (= (and d!13251 (not res!10166)) b!23034))

(assert (=> b!23033 m!24733))

(assert (=> b!23034 m!24747))

(assert (=> b!23034 m!24765))

(assert (=> b!23034 m!24747))

(assert (=> b!23034 m!24765))

(declare-fun m!24777 () Bool)

(assert (=> b!23034 m!24777))

(assert (=> b!22947 d!13251))

(declare-fun d!13253 () Bool)

(declare-fun lt!3602 () Int)

(assert (=> d!13253 (>= lt!3602 0)))

(declare-fun e!12012 () Int)

(assert (=> d!13253 (= lt!3602 e!12012)))

(declare-fun c!5421 () Bool)

(assert (=> d!13253 (= c!5421 (is-Nil!343 thiss!2719))))

(assert (=> d!13253 (= (size!245 thiss!2719) lt!3602)))

(declare-fun b!23039 () Bool)

(assert (=> b!23039 (= e!12012 0)))

(declare-fun b!23040 () Bool)

(assert (=> b!23040 (= e!12012 (+ 1 (size!245 (t!4343 thiss!2719))))))

(assert (= (and d!13253 c!5421) b!23039))

(assert (= (and d!13253 (not c!5421)) b!23040))

(declare-fun m!24779 () Bool)

(assert (=> b!23040 m!24779))

(assert (=> b!22937 d!13253))

(declare-fun d!13255 () Bool)

(assert (=> d!13255 (= (isEmpty!301 xs!572) (= xs!572 Empty!52))))

(assert (=> b!22938 d!13255))

(declare-fun b!23045 () Bool)

(declare-fun e!12015 () Bool)

(declare-fun tp!5041 () Bool)

(assert (=> b!23045 (= e!12015 (and tp_is_empty!129 tp!5041))))

(assert (=> b!22943 (= tp!5036 e!12015)))

(assert (= (and b!22943 (is-Cons!342 (t!4343 thiss!2719))) b!23045))

(declare-fun b!23052 () Bool)

(declare-fun e!12018 () Bool)

(declare-fun tp!5046 () Bool)

(declare-fun tp!5047 () Bool)

(assert (=> b!23052 (= e!12018 (and tp!5046 tp!5047))))

(declare-fun b!23053 () Bool)

(assert (=> b!23053 (= e!12018 tp_is_empty!129)))

(assert (=> b!22942 (= tp!5038 e!12018)))

(assert (= (and b!22942 (is-CC!41 (left!686 xs!572))) b!23052))

(assert (= (and b!22942 (is-Single!41 (left!686 xs!572))) b!23053))

(declare-fun b!23054 () Bool)

(declare-fun e!12019 () Bool)

(declare-fun tp!5048 () Bool)

(declare-fun tp!5049 () Bool)

(assert (=> b!23054 (= e!12019 (and tp!5048 tp!5049))))

(declare-fun b!23055 () Bool)

(assert (=> b!23055 (= e!12019 tp_is_empty!129)))

(assert (=> b!22942 (= tp!5037 e!12019)))

(assert (= (and b!22942 (is-CC!41 (right!689 xs!572))) b!23054))

(assert (= (and b!22942 (is-Single!41 (right!689 xs!572))) b!23055))

(push 1)

(assert (not d!13245))

(assert (not b!22961))

(assert (not b!23040))

(assert (not b!23054))

(assert (not b!23028))

(assert (not b!23016))

(assert (not b!23027))

(assert (not b!23025))

(assert (not b!22986))

(assert (not b!22983))

(assert (not d!13241))

(assert (not b!22998))

(assert (not b!23052))

(assert (not b!22997))

(assert (not b!22984))

(assert (not b!23026))

(assert (not b!23012))

(assert (not b!22988))

(assert (not b!22980))

(assert (not b!22985))

(assert (not b!23045))

(assert (not b!23000))

(assert tp_is_empty!129)

(assert (not b!22999))

(assert (not b!23033))

(assert (not b!22981))

(assert (not b!23034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

