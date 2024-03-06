; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3228 () Bool)

(assert start!3228)

(declare-fun b!17955 () Bool)

(declare-fun e!9669 () Bool)

(declare-fun i!301 () Int)

(declare-datatypes () ((T!1725 (T!1726 (val!35 Int)))))

(declare-datatypes () ((List!328 (Cons!322 (h!236 T!1725) (t!4323 List!328)) (Nil!323))))

(declare-fun l!750 () List!328)

(declare-fun size!201 (List!328) Int)

(assert (=> b!17955 (= e!9669 (> i!301 (size!201 l!750)))))

(declare-fun b!17956 () Bool)

(declare-fun res!7481 () Bool)

(declare-fun e!9672 () Bool)

(assert (=> b!17956 (=> (not res!7481) (not e!9672))))

(declare-fun i!298 () Int)

(assert (=> b!17956 (= res!7481 (>= i!298 0))))

(declare-fun b!17957 () Bool)

(declare-fun e!9671 () Bool)

(declare-fun tp!4224 () Bool)

(declare-fun tp!4227 () Bool)

(assert (=> b!17957 (= e!9671 (and tp!4224 tp!4227))))

(declare-fun b!17958 () Bool)

(declare-fun res!7480 () Bool)

(assert (=> b!17958 (=> (not res!7480) (not e!9672))))

(declare-fun y!824 () T!1725)

(declare-datatypes () ((Conc!17 (CC!16 (left!661 Conc!17) (right!664 Conc!17)) (Single!16 (x!8733 T!1725)) (Empty!27))))

(declare-fun xs!604 () Conc!17)

(declare-fun insertAppendAxiomInst!3 (Conc!17 Int T!1725) Bool)

(assert (=> b!17958 (= res!7480 (insertAppendAxiomInst!3 xs!604 i!298 y!824))))

(declare-fun b!17959 () Bool)

(declare-fun res!7477 () Bool)

(assert (=> b!17959 (=> (not res!7477) (not e!9672))))

(declare-fun res!5600 () Conc!17)

(declare-fun level!14 (Conc!17) Int)

(assert (=> b!17959 (= res!7477 (>= (level!14 res!5600) (level!14 xs!604)))))

(declare-fun b!17960 () Bool)

(declare-fun res!7470 () Bool)

(assert (=> b!17960 (=> (not res!7470) (not e!9672))))

(declare-fun concInv!15 (Conc!17) Bool)

(assert (=> b!17960 (= res!7470 (concInv!15 res!5600))))

(declare-fun res!7483 () Bool)

(assert (=> start!3228 (=> (not res!7483) (not e!9672))))

(assert (=> start!3228 (= res!7483 (concInv!15 xs!604))))

(assert (=> start!3228 e!9672))

(assert (=> start!3228 true))

(declare-fun e!9670 () Bool)

(assert (=> start!3228 e!9670))

(declare-fun tp_is_empty!69 () Bool)

(assert (=> start!3228 tp_is_empty!69))

(declare-fun e!9673 () Bool)

(assert (=> start!3228 e!9673))

(assert (=> start!3228 e!9671))

(declare-fun b!17961 () Bool)

(declare-fun res!7478 () Bool)

(assert (=> b!17961 (=> (not res!7478) (not e!9672))))

(declare-fun balanced!16 (Conc!17) Bool)

(assert (=> b!17961 (= res!7478 (balanced!16 xs!604))))

(declare-fun b!17962 () Bool)

(assert (=> b!17962 (= e!9672 e!9669)))

(declare-fun res!7471 () Bool)

(assert (=> b!17962 (=> res!7471 e!9669)))

(assert (=> b!17962 (= res!7471 (> 0 i!301))))

(declare-fun b!17963 () Bool)

(declare-fun tp!4226 () Bool)

(assert (=> b!17963 (= e!9670 (and tp_is_empty!69 tp!4226))))

(declare-fun b!17964 () Bool)

(declare-fun res!7473 () Bool)

(assert (=> b!17964 (=> (not res!7473) (not e!9672))))

(assert (=> b!17964 (= res!7473 (balanced!16 res!5600))))

(declare-fun b!17965 () Bool)

(declare-fun res!7479 () Bool)

(assert (=> b!17965 (=> (not res!7479) (not e!9672))))

(declare-fun isEmpty!279 (Conc!17) Bool)

(assert (=> b!17965 (= res!7479 (not (isEmpty!279 res!5600)))))

(declare-fun b!17966 () Bool)

(declare-fun res!7482 () Bool)

(assert (=> b!17966 (=> (not res!7482) (not e!9672))))

(assert (=> b!17966 (= res!7482 (and (is-Empty!27 xs!604) (= res!5600 (Single!16 y!824))))))

(declare-fun b!17967 () Bool)

(declare-fun res!7475 () Bool)

(assert (=> b!17967 (=> (not res!7475) (not e!9672))))

(declare-fun size!202 (Conc!17) Int)

(assert (=> b!17967 (= res!7475 (<= i!298 (size!202 xs!604)))))

(declare-fun b!17968 () Bool)

(declare-fun res!7472 () Bool)

(assert (=> b!17968 (=> (not res!7472) (not e!9672))))

(declare-fun toList!88 (Conc!17) List!328)

(assert (=> b!17968 (= res!7472 (= l!750 (toList!88 xs!604)))))

(declare-fun b!17969 () Bool)

(assert (=> b!17969 (= e!9673 tp_is_empty!69)))

(declare-fun b!17970 () Bool)

(assert (=> b!17970 (= e!9671 tp_is_empty!69)))

(declare-fun b!17971 () Bool)

(declare-fun res!7476 () Bool)

(assert (=> b!17971 (=> (not res!7476) (not e!9672))))

(declare-fun y!831 () T!1725)

(assert (=> b!17971 (= res!7476 (and (= i!301 i!298) (= y!831 y!824)))))

(declare-fun b!17972 () Bool)

(declare-fun res!7474 () Bool)

(assert (=> b!17972 (=> (not res!7474) (not e!9672))))

(assert (=> b!17972 (= res!7474 (<= (- (level!14 res!5600) (level!14 xs!604)) 1))))

(declare-fun b!17973 () Bool)

(declare-fun tp!4225 () Bool)

(declare-fun tp!4223 () Bool)

(assert (=> b!17973 (= e!9673 (and tp!4225 tp!4223))))

(assert (= (and start!3228 res!7483) b!17961))

(assert (= (and b!17961 res!7478) b!17956))

(assert (= (and b!17956 res!7481) b!17967))

(assert (= (and b!17967 res!7475) b!17966))

(assert (= (and b!17966 res!7482) b!17960))

(assert (= (and b!17960 res!7470) b!17964))

(assert (= (and b!17964 res!7473) b!17972))

(assert (= (and b!17972 res!7474) b!17959))

(assert (= (and b!17959 res!7477) b!17965))

(assert (= (and b!17965 res!7479) b!17958))

(assert (= (and b!17958 res!7480) b!17968))

(assert (= (and b!17968 res!7472) b!17971))

(assert (= (and b!17971 res!7476) b!17962))

(assert (= (and b!17962 (not res!7471)) b!17955))

(assert (= (and start!3228 (is-Cons!322 l!750)) b!17963))

(assert (= (and start!3228 (is-CC!16 xs!604)) b!17973))

(assert (= (and start!3228 (is-Single!16 xs!604)) b!17969))

(assert (= (and start!3228 (is-CC!16 res!5600)) b!17957))

(assert (= (and start!3228 (is-Single!16 res!5600)) b!17970))

(declare-fun m!21011 () Bool)

(assert (=> b!17958 m!21011))

(declare-fun m!21013 () Bool)

(assert (=> b!17961 m!21013))

(declare-fun m!21015 () Bool)

(assert (=> b!17965 m!21015))

(declare-fun m!21017 () Bool)

(assert (=> b!17964 m!21017))

(declare-fun m!21019 () Bool)

(assert (=> b!17960 m!21019))

(declare-fun m!21021 () Bool)

(assert (=> start!3228 m!21021))

(declare-fun m!21023 () Bool)

(assert (=> b!17972 m!21023))

(declare-fun m!21025 () Bool)

(assert (=> b!17972 m!21025))

(declare-fun m!21027 () Bool)

(assert (=> b!17955 m!21027))

(declare-fun m!21029 () Bool)

(assert (=> b!17968 m!21029))

(declare-fun m!21031 () Bool)

(assert (=> b!17967 m!21031))

(assert (=> b!17959 m!21023))

(assert (=> b!17959 m!21025))

(push 1)

(assert (not b!17973))

(assert (not b!17963))

(assert (not b!17968))

(assert tp_is_empty!69)

(assert (not b!17959))

(assert (not b!17964))

(assert (not start!3228))

(assert (not b!17965))

(assert (not b!17961))

(assert (not b!17957))

(assert (not b!17958))

(assert (not b!17972))

(assert (not b!17960))

(assert (not b!17967))

(assert (not b!17955))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!12131 () Bool)

(declare-fun res!7492 () Bool)

(declare-fun e!9678 () Bool)

(assert (=> d!12131 (=> res!7492 e!9678)))

(assert (=> d!12131 (= res!7492 (not (is-CC!16 res!5600)))))

(assert (=> d!12131 (= (balanced!16 res!5600) e!9678)))

(declare-fun b!17985 () Bool)

(declare-fun e!9679 () Bool)

(assert (=> b!17985 (= e!9679 (balanced!16 (right!664 res!5600)))))

(declare-fun b!17983 () Bool)

(declare-fun res!7494 () Bool)

(assert (=> b!17983 (=> (not res!7494) (not e!9679))))

(assert (=> b!17983 (= res!7494 (<= (- (level!14 (left!661 res!5600)) (level!14 (right!664 res!5600))) 1))))

(declare-fun b!17984 () Bool)

(declare-fun res!7493 () Bool)

(assert (=> b!17984 (=> (not res!7493) (not e!9679))))

(assert (=> b!17984 (= res!7493 (balanced!16 (left!661 res!5600)))))

(declare-fun b!17982 () Bool)

(assert (=> b!17982 (= e!9678 e!9679)))

(declare-fun res!7495 () Bool)

(assert (=> b!17982 (=> (not res!7495) (not e!9679))))

(assert (=> b!17982 (= res!7495 (>= (- (level!14 (left!661 res!5600)) (level!14 (right!664 res!5600))) (- 1)))))

(assert (= (and d!12131 (not res!7492)) b!17982))

(assert (= (and b!17982 res!7495) b!17983))

(assert (= (and b!17983 res!7494) b!17984))

(assert (= (and b!17984 res!7493) b!17985))

(declare-fun m!21033 () Bool)

(assert (=> b!17985 m!21033))

(declare-fun m!21035 () Bool)

(assert (=> b!17983 m!21035))

(declare-fun m!21037 () Bool)

(assert (=> b!17983 m!21037))

(declare-fun m!21039 () Bool)

(assert (=> b!17984 m!21039))

(assert (=> b!17982 m!21035))

(assert (=> b!17982 m!21037))

(assert (=> b!17964 d!12131))

(declare-fun d!12133 () Bool)

(assert (=> d!12133 (= (isEmpty!279 res!5600) (= res!5600 Empty!27))))

(assert (=> b!17965 d!12133))

(declare-fun b!17995 () Bool)

(declare-fun e!9685 () Int)

(declare-fun e!9684 () Int)

(assert (=> b!17995 (= e!9685 e!9684)))

(declare-fun c!4574 () Bool)

(assert (=> b!17995 (= c!4574 (is-Single!16 xs!604))))

(declare-fun b!17996 () Bool)

(assert (=> b!17996 (= e!9684 1)))

(declare-fun b!17997 () Bool)

(assert (=> b!17997 (= e!9684 (+ (size!202 (left!661 xs!604)) (size!202 (right!664 xs!604))))))

(declare-fun d!12135 () Bool)

(declare-fun lt!2722 () Int)

(assert (=> d!12135 (>= lt!2722 0)))

(assert (=> d!12135 (= lt!2722 e!9685)))

(declare-fun c!4575 () Bool)

(assert (=> d!12135 (= c!4575 (is-Empty!27 xs!604))))

(assert (=> d!12135 (= (size!202 xs!604) lt!2722)))

(declare-fun b!17994 () Bool)

(assert (=> b!17994 (= e!9685 0)))

(assert (= (and b!17995 c!4574) b!17996))

(assert (= (and b!17995 (not c!4574)) b!17997))

(assert (= (and d!12135 c!4575) b!17994))

(assert (= (and d!12135 (not c!4575)) b!17995))

(declare-fun m!21041 () Bool)

(assert (=> b!17997 m!21041))

(declare-fun m!21043 () Bool)

(assert (=> b!17997 m!21043))

(assert (=> b!17967 d!12135))

(declare-fun d!12137 () Bool)

(declare-fun lt!2725 () List!328)

(assert (=> d!12137 (= (size!201 lt!2725) (size!202 xs!604))))

(declare-fun e!9691 () List!328)

(assert (=> d!12137 (= lt!2725 e!9691)))

(declare-fun c!4581 () Bool)

(assert (=> d!12137 (= c!4581 (is-Empty!27 xs!604))))

(assert (=> d!12137 (= (toList!88 xs!604) lt!2725)))

(declare-fun b!18008 () Bool)

(declare-fun e!9690 () List!328)

(assert (=> b!18008 (= e!9690 (Cons!322 (x!8733 xs!604) Nil!323))))

(declare-fun b!18007 () Bool)

(assert (=> b!18007 (= e!9691 e!9690)))

(declare-fun c!4580 () Bool)

(assert (=> b!18007 (= c!4580 (is-Single!16 xs!604))))

(declare-fun b!18009 () Bool)

(declare-fun ++!13 (List!328 List!328) List!328)

(assert (=> b!18009 (= e!9690 (++!13 (toList!88 (left!661 xs!604)) (toList!88 (right!664 xs!604))))))

(declare-fun b!18006 () Bool)

(assert (=> b!18006 (= e!9691 Nil!323)))

(assert (= (and b!18007 c!4580) b!18008))

(assert (= (and b!18007 (not c!4580)) b!18009))

(assert (= (and d!12137 c!4581) b!18006))

(assert (= (and d!12137 (not c!4581)) b!18007))

(declare-fun m!21045 () Bool)

(assert (=> d!12137 m!21045))

(assert (=> d!12137 m!21031))

(declare-fun m!21047 () Bool)

(assert (=> b!18009 m!21047))

(declare-fun m!21049 () Bool)

(assert (=> b!18009 m!21049))

(assert (=> b!18009 m!21047))

(assert (=> b!18009 m!21049))

(declare-fun m!21051 () Bool)

(assert (=> b!18009 m!21051))

(assert (=> b!17968 d!12137))

(declare-fun d!12139 () Bool)

(declare-fun res!7497 () Bool)

(declare-fun e!9692 () Bool)

(assert (=> d!12139 (=> res!7497 e!9692)))

(assert (=> d!12139 (= res!7497 (not (is-CC!16 xs!604)))))

(assert (=> d!12139 (= (balanced!16 xs!604) e!9692)))

(declare-fun b!18013 () Bool)

(declare-fun e!9693 () Bool)

(assert (=> b!18013 (= e!9693 (balanced!16 (right!664 xs!604)))))

(declare-fun b!18011 () Bool)

(declare-fun res!7499 () Bool)

(assert (=> b!18011 (=> (not res!7499) (not e!9693))))

(assert (=> b!18011 (= res!7499 (<= (- (level!14 (left!661 xs!604)) (level!14 (right!664 xs!604))) 1))))

(declare-fun b!18012 () Bool)

(declare-fun res!7498 () Bool)

(assert (=> b!18012 (=> (not res!7498) (not e!9693))))

(assert (=> b!18012 (= res!7498 (balanced!16 (left!661 xs!604)))))

(declare-fun b!18010 () Bool)

(assert (=> b!18010 (= e!9692 e!9693)))

(declare-fun res!7500 () Bool)

(assert (=> b!18010 (=> (not res!7500) (not e!9693))))

(assert (=> b!18010 (= res!7500 (>= (- (level!14 (left!661 xs!604)) (level!14 (right!664 xs!604))) (- 1)))))

(assert (= (and d!12139 (not res!7497)) b!18010))

(assert (= (and b!18010 res!7500) b!18011))

(assert (= (and b!18011 res!7499) b!18012))

(assert (= (and b!18012 res!7498) b!18013))

(declare-fun m!21053 () Bool)

(assert (=> b!18013 m!21053))

(declare-fun m!21055 () Bool)

(assert (=> b!18011 m!21055))

(declare-fun m!21057 () Bool)

(assert (=> b!18011 m!21057))

(declare-fun m!21059 () Bool)

(assert (=> b!18012 m!21059))

(assert (=> b!18010 m!21055))

(assert (=> b!18010 m!21057))

(assert (=> b!17961 d!12139))

(declare-fun d!12141 () Bool)

(declare-fun e!9699 () Bool)

(assert (=> d!12141 e!9699))

(declare-fun res!7506 () Bool)

(assert (=> d!12141 (=> res!7506 e!9699)))

(assert (=> d!12141 (= res!7506 (not (is-CC!16 xs!604)))))

(declare-fun e!9698 () Bool)

(assert (=> d!12141 e!9698))

(declare-fun res!7505 () Bool)

(assert (=> d!12141 (=> (not res!7505) (not e!9698))))

(assert (=> d!12141 (= res!7505 (>= i!298 0))))

(assert (=> d!12141 (= (insertAppendAxiomInst!3 xs!604 i!298 y!824) true)))

(declare-fun b!18018 () Bool)

(assert (=> b!18018 (= e!9698 (<= i!298 (size!202 xs!604)))))

(declare-fun b!18019 () Bool)

(declare-fun appendInsertIndex!4 (List!328 List!328 Int T!1725) Bool)

(assert (=> b!18019 (= e!9699 (appendInsertIndex!4 (toList!88 (left!661 xs!604)) (toList!88 (right!664 xs!604)) i!298 y!824))))

(assert (= (and d!12141 res!7505) b!18018))

(assert (= (and d!12141 (not res!7506)) b!18019))

(assert (=> b!18018 m!21031))

(assert (=> b!18019 m!21047))

(assert (=> b!18019 m!21049))

(assert (=> b!18019 m!21047))

(assert (=> b!18019 m!21049))

(declare-fun m!21061 () Bool)

(assert (=> b!18019 m!21061))

(assert (=> b!17958 d!12141))

(declare-fun b!18025 () Bool)

(declare-fun e!9702 () Int)

(declare-fun lt!2734 () Int)

(declare-fun lt!2732 () Int)

(assert (=> b!18025 (= e!9702 (+ 1 (ite (>= lt!2734 lt!2732) lt!2734 lt!2732)))))

(assert (=> b!18025 (= lt!2732 (level!14 (right!664 res!5600)))))

(assert (=> b!18025 (= lt!2734 (level!14 (left!661 res!5600)))))

(declare-fun d!12143 () Bool)

(declare-fun lt!2733 () Int)

(assert (=> d!12143 (>= lt!2733 0)))

(assert (=> d!12143 (= lt!2733 e!9702)))

(declare-fun c!4584 () Bool)

(assert (=> d!12143 (= c!4584 (or (is-Empty!27 res!5600) (is-Single!16 res!5600)))))

(assert (=> d!12143 (= (level!14 res!5600) lt!2733)))

(declare-fun b!18024 () Bool)

(assert (=> b!18024 (= e!9702 0)))

(assert (= (and d!12143 c!4584) b!18024))

(assert (= (and d!12143 (not c!4584)) b!18025))

(assert (=> b!18025 m!21037))

(assert (=> b!18025 m!21035))

(assert (=> b!17972 d!12143))

(declare-fun b!18027 () Bool)

(declare-fun e!9703 () Int)

(declare-fun lt!2737 () Int)

(declare-fun lt!2735 () Int)

(assert (=> b!18027 (= e!9703 (+ 1 (ite (>= lt!2737 lt!2735) lt!2737 lt!2735)))))

(assert (=> b!18027 (= lt!2735 (level!14 (right!664 xs!604)))))

(assert (=> b!18027 (= lt!2737 (level!14 (left!661 xs!604)))))

(declare-fun d!12145 () Bool)

(declare-fun lt!2736 () Int)

(assert (=> d!12145 (>= lt!2736 0)))

(assert (=> d!12145 (= lt!2736 e!9703)))

(declare-fun c!4585 () Bool)

(assert (=> d!12145 (= c!4585 (or (is-Empty!27 xs!604) (is-Single!16 xs!604)))))

(assert (=> d!12145 (= (level!14 xs!604) lt!2736)))

(declare-fun b!18026 () Bool)

(assert (=> b!18026 (= e!9703 0)))

(assert (= (and d!12145 c!4585) b!18026))

(assert (= (and d!12145 (not c!4585)) b!18027))

(assert (=> b!18027 m!21057))

(assert (=> b!18027 m!21055))

(assert (=> b!17972 d!12145))

(assert (=> b!17959 d!12143))

(assert (=> b!17959 d!12145))

(declare-fun b!18037 () Bool)

(declare-fun res!7516 () Bool)

(declare-fun e!9708 () Bool)

(assert (=> b!18037 (=> (not res!7516) (not e!9708))))

(assert (=> b!18037 (= res!7516 (not (isEmpty!279 (right!664 res!5600))))))

(declare-fun d!12147 () Bool)

(declare-fun res!7517 () Bool)

(declare-fun e!9709 () Bool)

(assert (=> d!12147 (=> res!7517 e!9709)))

(assert (=> d!12147 (= res!7517 (not (is-CC!16 res!5600)))))

(assert (=> d!12147 (= (concInv!15 res!5600) e!9709)))

(declare-fun b!18036 () Bool)

(assert (=> b!18036 (= e!9709 e!9708)))

(declare-fun res!7515 () Bool)

(assert (=> b!18036 (=> (not res!7515) (not e!9708))))

(assert (=> b!18036 (= res!7515 (not (isEmpty!279 (left!661 res!5600))))))

(declare-fun b!18039 () Bool)

(assert (=> b!18039 (= e!9708 (concInv!15 (right!664 res!5600)))))

(declare-fun b!18038 () Bool)

(declare-fun res!7518 () Bool)

(assert (=> b!18038 (=> (not res!7518) (not e!9708))))

(assert (=> b!18038 (= res!7518 (concInv!15 (left!661 res!5600)))))

(assert (= (and d!12147 (not res!7517)) b!18036))

(assert (= (and b!18036 res!7515) b!18037))

(assert (= (and b!18037 res!7516) b!18038))

(assert (= (and b!18038 res!7518) b!18039))

(declare-fun m!21063 () Bool)

(assert (=> b!18037 m!21063))

(declare-fun m!21065 () Bool)

(assert (=> b!18036 m!21065))

(declare-fun m!21067 () Bool)

(assert (=> b!18039 m!21067))

(declare-fun m!21069 () Bool)

(assert (=> b!18038 m!21069))

(assert (=> b!17960 d!12147))

(declare-fun d!12149 () Bool)

(declare-fun lt!2740 () Int)

(assert (=> d!12149 (>= lt!2740 0)))

(declare-fun e!9712 () Int)

(assert (=> d!12149 (= lt!2740 e!9712)))

(declare-fun c!4588 () Bool)

(assert (=> d!12149 (= c!4588 (is-Nil!323 l!750))))

(assert (=> d!12149 (= (size!201 l!750) lt!2740)))

(declare-fun b!18044 () Bool)

(assert (=> b!18044 (= e!9712 0)))

(declare-fun b!18045 () Bool)

(assert (=> b!18045 (= e!9712 (+ 1 (size!201 (t!4323 l!750))))))

(assert (= (and d!12149 c!4588) b!18044))

(assert (= (and d!12149 (not c!4588)) b!18045))

(declare-fun m!21071 () Bool)

(assert (=> b!18045 m!21071))

(assert (=> b!17955 d!12149))

(declare-fun b!18047 () Bool)

(declare-fun res!7520 () Bool)

(declare-fun e!9713 () Bool)

(assert (=> b!18047 (=> (not res!7520) (not e!9713))))

(assert (=> b!18047 (= res!7520 (not (isEmpty!279 (right!664 xs!604))))))

(declare-fun d!12151 () Bool)

(declare-fun res!7521 () Bool)

(declare-fun e!9714 () Bool)

(assert (=> d!12151 (=> res!7521 e!9714)))

(assert (=> d!12151 (= res!7521 (not (is-CC!16 xs!604)))))

(assert (=> d!12151 (= (concInv!15 xs!604) e!9714)))

(declare-fun b!18046 () Bool)

(assert (=> b!18046 (= e!9714 e!9713)))

(declare-fun res!7519 () Bool)

(assert (=> b!18046 (=> (not res!7519) (not e!9713))))

(assert (=> b!18046 (= res!7519 (not (isEmpty!279 (left!661 xs!604))))))

(declare-fun b!18049 () Bool)

(assert (=> b!18049 (= e!9713 (concInv!15 (right!664 xs!604)))))

(declare-fun b!18048 () Bool)

(declare-fun res!7522 () Bool)

(assert (=> b!18048 (=> (not res!7522) (not e!9713))))

(assert (=> b!18048 (= res!7522 (concInv!15 (left!661 xs!604)))))

(assert (= (and d!12151 (not res!7521)) b!18046))

(assert (= (and b!18046 res!7519) b!18047))

(assert (= (and b!18047 res!7520) b!18048))

(assert (= (and b!18048 res!7522) b!18049))

(declare-fun m!21073 () Bool)

(assert (=> b!18047 m!21073))

(declare-fun m!21075 () Bool)

(assert (=> b!18046 m!21075))

(declare-fun m!21077 () Bool)

(assert (=> b!18049 m!21077))

(declare-fun m!21079 () Bool)

(assert (=> b!18048 m!21079))

(assert (=> start!3228 d!12151))

(declare-fun b!18056 () Bool)

(declare-fun e!9717 () Bool)

(declare-fun tp!4232 () Bool)

(declare-fun tp!4233 () Bool)

(assert (=> b!18056 (= e!9717 (and tp!4232 tp!4233))))

(declare-fun b!18057 () Bool)

(assert (=> b!18057 (= e!9717 tp_is_empty!69)))

(assert (=> b!17973 (= tp!4225 e!9717)))

(assert (= (and b!17973 (is-CC!16 (left!661 xs!604))) b!18056))

(assert (= (and b!17973 (is-Single!16 (left!661 xs!604))) b!18057))

(declare-fun b!18058 () Bool)

(declare-fun e!9718 () Bool)

(declare-fun tp!4234 () Bool)

(declare-fun tp!4235 () Bool)

(assert (=> b!18058 (= e!9718 (and tp!4234 tp!4235))))

(declare-fun b!18059 () Bool)

(assert (=> b!18059 (= e!9718 tp_is_empty!69)))

(assert (=> b!17973 (= tp!4223 e!9718)))

(assert (= (and b!17973 (is-CC!16 (right!664 xs!604))) b!18058))

(assert (= (and b!17973 (is-Single!16 (right!664 xs!604))) b!18059))

(declare-fun b!18064 () Bool)

(declare-fun e!9721 () Bool)

(declare-fun tp!4238 () Bool)

(assert (=> b!18064 (= e!9721 (and tp_is_empty!69 tp!4238))))

(assert (=> b!17963 (= tp!4226 e!9721)))

(assert (= (and b!17963 (is-Cons!322 (t!4323 l!750))) b!18064))

(declare-fun b!18065 () Bool)

(declare-fun e!9722 () Bool)

(declare-fun tp!4239 () Bool)

(declare-fun tp!4240 () Bool)

(assert (=> b!18065 (= e!9722 (and tp!4239 tp!4240))))

(declare-fun b!18066 () Bool)

(assert (=> b!18066 (= e!9722 tp_is_empty!69)))

(assert (=> b!17957 (= tp!4224 e!9722)))

(assert (= (and b!17957 (is-CC!16 (left!661 res!5600))) b!18065))

(assert (= (and b!17957 (is-Single!16 (left!661 res!5600))) b!18066))

(declare-fun b!18067 () Bool)

(declare-fun e!9723 () Bool)

(declare-fun tp!4241 () Bool)

(declare-fun tp!4242 () Bool)

(assert (=> b!18067 (= e!9723 (and tp!4241 tp!4242))))

(declare-fun b!18068 () Bool)

(assert (=> b!18068 (= e!9723 tp_is_empty!69)))

(assert (=> b!17957 (= tp!4227 e!9723)))

(assert (= (and b!17957 (is-CC!16 (right!664 res!5600))) b!18067))

(assert (= (and b!17957 (is-Single!16 (right!664 res!5600))) b!18068))

(push 1)

(assert (not b!18037))

(assert (not b!18056))

(assert (not b!18064))

(assert tp_is_empty!69)

(assert (not b!18049))

(assert (not b!18018))

(assert (not b!18047))

(assert (not b!18048))

(assert (not b!18039))

(assert (not b!18011))

(assert (not b!18046))

(assert (not b!18010))

(assert (not b!18058))

(assert (not b!18067))

(assert (not b!18019))

(assert (not b!18027))

(assert (not b!18013))

(assert (not b!18012))

(assert (not b!17982))

(assert (not b!18065))

(assert (not b!17984))

(assert (not b!17997))

(assert (not d!12137))

(assert (not b!17985))

(assert (not b!17983))

(assert (not b!18009))

(assert (not b!18025))

(assert (not b!18045))

(assert (not b!18038))

(assert (not b!18036))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

