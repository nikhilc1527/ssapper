; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3056 () Bool)

(assert start!3056)

(declare-fun b!14852 () Bool)

(declare-fun e!8154 () Bool)

(declare-fun tp_is_empty!51 () Bool)

(assert (=> b!14852 (= e!8154 tp_is_empty!51)))

(declare-fun b!14853 () Bool)

(declare-fun res!5988 () Bool)

(declare-fun e!8153 () Bool)

(assert (=> b!14853 (=> (not res!5988) (not e!8153))))

(declare-datatypes () ((T!1707 (T!1708 (val!26 Int)))))

(declare-datatypes () ((Conc!8 (CC!7 (left!652 Conc!8) (right!655 Conc!8)) (Single!7 (x!8696 T!1707)) (Empty!18))))

(declare-fun xs!637 () Conc!8)

(declare-fun balanced!8 (Conc!8) Bool)

(assert (=> b!14853 (= res!5988 (balanced!8 xs!637))))

(declare-fun res!5994 () Bool)

(assert (=> start!3056 (=> (not res!5994) (not e!8153))))

(declare-fun concInv!7 (Conc!8) Bool)

(assert (=> start!3056 (= res!5994 (concInv!7 xs!637))))

(assert (=> start!3056 e!8153))

(assert (=> start!3056 e!8154))

(declare-fun e!8150 () Bool)

(declare-fun e!8151 () Bool)

(assert (=> start!3056 (and e!8150 e!8151)))

(assert (=> start!3056 true))

(declare-fun b!14854 () Bool)

(declare-fun res!5992 () Bool)

(declare-fun e!8152 () Bool)

(assert (=> b!14854 (=> res!5992 e!8152)))

(declare-fun n!315 () Int)

(declare-fun instSplitAxiom!5 (Conc!8 Int) Bool)

(assert (=> b!14854 (= res!5992 (not (instSplitAxiom!5 xs!637 n!315)))))

(declare-fun b!14855 () Bool)

(declare-fun res!5993 () Bool)

(assert (=> b!14855 (=> res!5993 e!8152)))

(declare-datatypes () ((tuple2!100 (tuple2!101 (_1!50 Conc!8) (_2!50 Conc!8)))))

(declare-fun res!5657 () tuple2!100)

(declare-fun level!7 (Conc!8) Int)

(assert (=> b!14855 (= res!5993 (< (level!7 xs!637) (level!7 (_1!50 res!5657))))))

(declare-fun b!14856 () Bool)

(declare-fun res!5989 () Bool)

(assert (=> b!14856 (=> (not res!5989) (not e!8153))))

(assert (=> b!14856 (= res!5989 (and (is-Empty!18 xs!637) (= res!5657 (tuple2!101 Empty!18 Empty!18))))))

(declare-fun b!14857 () Bool)

(declare-fun splitCorrectness!3 (tuple2!100 Conc!8 Int) Bool)

(assert (=> b!14857 (= e!8152 (not (splitCorrectness!3 res!5657 xs!637 n!315)))))

(declare-fun b!14858 () Bool)

(declare-fun tp!3638 () Bool)

(declare-fun tp!3635 () Bool)

(assert (=> b!14858 (= e!8151 (and tp!3638 tp!3635))))

(declare-fun b!14859 () Bool)

(declare-fun res!5996 () Bool)

(assert (=> b!14859 (=> res!5996 e!8152)))

(assert (=> b!14859 (= res!5996 (not (balanced!8 (_1!50 res!5657))))))

(declare-fun b!14860 () Bool)

(declare-fun res!5991 () Bool)

(assert (=> b!14860 (=> res!5991 e!8152)))

(assert (=> b!14860 (= res!5991 (not (balanced!8 (_2!50 res!5657))))))

(declare-fun b!14861 () Bool)

(assert (=> b!14861 (= e!8151 tp_is_empty!51)))

(declare-fun b!14862 () Bool)

(declare-fun res!5990 () Bool)

(assert (=> b!14862 (=> res!5990 e!8152)))

(assert (=> b!14862 (= res!5990 (< (level!7 xs!637) (level!7 (_2!50 res!5657))))))

(declare-fun b!14863 () Bool)

(assert (=> b!14863 (= e!8150 tp_is_empty!51)))

(declare-fun b!14864 () Bool)

(assert (=> b!14864 (= e!8153 e!8152)))

(declare-fun res!5995 () Bool)

(assert (=> b!14864 (=> res!5995 e!8152)))

(assert (=> b!14864 (= res!5995 (not (concInv!7 (_1!50 res!5657))))))

(declare-fun b!14865 () Bool)

(declare-fun res!5997 () Bool)

(assert (=> b!14865 (=> res!5997 e!8152)))

(assert (=> b!14865 (= res!5997 (not (concInv!7 (_2!50 res!5657))))))

(declare-fun b!14866 () Bool)

(declare-fun tp!3640 () Bool)

(declare-fun tp!3636 () Bool)

(assert (=> b!14866 (= e!8154 (and tp!3640 tp!3636))))

(declare-fun b!14867 () Bool)

(declare-fun tp!3637 () Bool)

(declare-fun tp!3639 () Bool)

(assert (=> b!14867 (= e!8150 (and tp!3637 tp!3639))))

(assert (= (and start!3056 res!5994) b!14853))

(assert (= (and b!14853 res!5988) b!14856))

(assert (= (and b!14856 res!5989) b!14864))

(assert (= (and b!14864 (not res!5995)) b!14859))

(assert (= (and b!14859 (not res!5996)) b!14865))

(assert (= (and b!14865 (not res!5997)) b!14860))

(assert (= (and b!14860 (not res!5991)) b!14855))

(assert (= (and b!14855 (not res!5993)) b!14862))

(assert (= (and b!14862 (not res!5990)) b!14854))

(assert (= (and b!14854 (not res!5992)) b!14857))

(assert (= (and start!3056 (is-CC!7 xs!637)) b!14866))

(assert (= (and start!3056 (is-Single!7 xs!637)) b!14852))

(assert (= (and start!3056 (is-CC!7 (_1!50 res!5657))) b!14867))

(assert (= (and start!3056 (is-Single!7 (_1!50 res!5657))) b!14863))

(assert (= (and start!3056 (is-CC!7 (_2!50 res!5657))) b!14858))

(assert (= (and start!3056 (is-Single!7 (_2!50 res!5657))) b!14861))

(declare-fun m!18393 () Bool)

(assert (=> b!14865 m!18393))

(declare-fun m!18395 () Bool)

(assert (=> b!14864 m!18395))

(declare-fun m!18397 () Bool)

(assert (=> b!14862 m!18397))

(declare-fun m!18399 () Bool)

(assert (=> b!14862 m!18399))

(declare-fun m!18401 () Bool)

(assert (=> b!14859 m!18401))

(declare-fun m!18403 () Bool)

(assert (=> start!3056 m!18403))

(declare-fun m!18405 () Bool)

(assert (=> b!14857 m!18405))

(declare-fun m!18407 () Bool)

(assert (=> b!14854 m!18407))

(assert (=> b!14855 m!18397))

(declare-fun m!18409 () Bool)

(assert (=> b!14855 m!18409))

(declare-fun m!18411 () Bool)

(assert (=> b!14853 m!18411))

(declare-fun m!18413 () Bool)

(assert (=> b!14860 m!18413))

(push 1)

(assert (not b!14855))

(assert (not b!14858))

(assert (not b!14862))

(assert (not b!14864))

(assert (not start!3056))

(assert (not b!14866))

(assert tp_is_empty!51)

(assert (not b!14853))

(assert (not b!14867))

(assert (not b!14857))

(assert (not b!14854))

(assert (not b!14860))

(assert (not b!14865))

(assert (not b!14859))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!14873 () Bool)

(declare-fun e!8157 () Int)

(declare-fun lt!2087 () Int)

(declare-fun lt!2088 () Int)

(assert (=> b!14873 (= e!8157 (+ 1 (ite (>= lt!2087 lt!2088) lt!2087 lt!2088)))))

(assert (=> b!14873 (= lt!2088 (level!7 (right!655 xs!637)))))

(assert (=> b!14873 (= lt!2087 (level!7 (left!652 xs!637)))))

(declare-fun d!11323 () Bool)

(declare-fun lt!2089 () Int)

(assert (=> d!11323 (>= lt!2089 0)))

(assert (=> d!11323 (= lt!2089 e!8157)))

(declare-fun c!3981 () Bool)

(assert (=> d!11323 (= c!3981 (or (is-Empty!18 xs!637) (is-Single!7 xs!637)))))

(assert (=> d!11323 (= (level!7 xs!637) lt!2089)))

(declare-fun b!14872 () Bool)

(assert (=> b!14872 (= e!8157 0)))

(assert (= (and d!11323 c!3981) b!14872))

(assert (= (and d!11323 (not c!3981)) b!14873))

(declare-fun m!18415 () Bool)

(assert (=> b!14873 m!18415))

(declare-fun m!18417 () Bool)

(assert (=> b!14873 m!18417))

(assert (=> b!14855 d!11323))

(declare-fun b!14875 () Bool)

(declare-fun e!8158 () Int)

(declare-fun lt!2090 () Int)

(declare-fun lt!2091 () Int)

(assert (=> b!14875 (= e!8158 (+ 1 (ite (>= lt!2090 lt!2091) lt!2090 lt!2091)))))

(assert (=> b!14875 (= lt!2091 (level!7 (right!655 (_1!50 res!5657))))))

(assert (=> b!14875 (= lt!2090 (level!7 (left!652 (_1!50 res!5657))))))

(declare-fun d!11325 () Bool)

(declare-fun lt!2092 () Int)

(assert (=> d!11325 (>= lt!2092 0)))

(assert (=> d!11325 (= lt!2092 e!8158)))

(declare-fun c!3982 () Bool)

(assert (=> d!11325 (= c!3982 (or (is-Empty!18 (_1!50 res!5657)) (is-Single!7 (_1!50 res!5657))))))

(assert (=> d!11325 (= (level!7 (_1!50 res!5657)) lt!2092)))

(declare-fun b!14874 () Bool)

(assert (=> b!14874 (= e!8158 0)))

(assert (= (and d!11325 c!3982) b!14874))

(assert (= (and d!11325 (not c!3982)) b!14875))

(declare-fun m!18419 () Bool)

(assert (=> b!14875 m!18419))

(declare-fun m!18421 () Bool)

(assert (=> b!14875 m!18421))

(assert (=> b!14855 d!11325))

(assert (=> b!14862 d!11323))

(declare-fun b!14877 () Bool)

(declare-fun e!8159 () Int)

(declare-fun lt!2093 () Int)

(declare-fun lt!2094 () Int)

(assert (=> b!14877 (= e!8159 (+ 1 (ite (>= lt!2093 lt!2094) lt!2093 lt!2094)))))

(assert (=> b!14877 (= lt!2094 (level!7 (right!655 (_2!50 res!5657))))))

(assert (=> b!14877 (= lt!2093 (level!7 (left!652 (_2!50 res!5657))))))

(declare-fun d!11327 () Bool)

(declare-fun lt!2095 () Int)

(assert (=> d!11327 (>= lt!2095 0)))

(assert (=> d!11327 (= lt!2095 e!8159)))

(declare-fun c!3983 () Bool)

(assert (=> d!11327 (= c!3983 (or (is-Empty!18 (_2!50 res!5657)) (is-Single!7 (_2!50 res!5657))))))

(assert (=> d!11327 (= (level!7 (_2!50 res!5657)) lt!2095)))

(declare-fun b!14876 () Bool)

(assert (=> b!14876 (= e!8159 0)))

(assert (= (and d!11327 c!3983) b!14876))

(assert (= (and d!11327 (not c!3983)) b!14877))

(declare-fun m!18423 () Bool)

(assert (=> b!14877 m!18423))

(declare-fun m!18425 () Bool)

(assert (=> b!14877 m!18425))

(assert (=> b!14862 d!11327))

(declare-fun d!11329 () Bool)

(declare-fun e!8162 () Bool)

(assert (=> d!11329 e!8162))

(declare-fun res!6000 () Bool)

(assert (=> d!11329 (=> res!6000 e!8162)))

(assert (=> d!11329 (= res!6000 (not (is-CC!7 xs!637)))))

(assert (=> d!11329 (= (instSplitAxiom!5 xs!637 n!315) true)))

(declare-fun b!14880 () Bool)

(declare-datatypes () ((List!321 (Cons!315 (h!229 T!1707) (t!4267 List!321)) (Nil!316))))

(declare-fun appendTakeDrop!2 (List!321 List!321 Int) Bool)

(declare-fun toList!81 (Conc!8) List!321)

(assert (=> b!14880 (= e!8162 (appendTakeDrop!2 (toList!81 (left!652 xs!637)) (toList!81 (right!655 xs!637)) n!315))))

(assert (= (and d!11329 (not res!6000)) b!14880))

(declare-fun m!18427 () Bool)

(assert (=> b!14880 m!18427))

(declare-fun m!18429 () Bool)

(assert (=> b!14880 m!18429))

(assert (=> b!14880 m!18427))

(assert (=> b!14880 m!18429))

(declare-fun m!18431 () Bool)

(assert (=> b!14880 m!18431))

(assert (=> b!14854 d!11329))

(declare-fun b!14892 () Bool)

(declare-fun e!8168 () Bool)

(assert (=> b!14892 (= e!8168 (balanced!8 (right!655 xs!637)))))

(declare-fun d!11331 () Bool)

(declare-fun res!6012 () Bool)

(declare-fun e!8167 () Bool)

(assert (=> d!11331 (=> res!6012 e!8167)))

(assert (=> d!11331 (= res!6012 (not (is-CC!7 xs!637)))))

(assert (=> d!11331 (= (balanced!8 xs!637) e!8167)))

(declare-fun b!14890 () Bool)

(declare-fun res!6009 () Bool)

(assert (=> b!14890 (=> (not res!6009) (not e!8168))))

(assert (=> b!14890 (= res!6009 (<= (- (level!7 (left!652 xs!637)) (level!7 (right!655 xs!637))) 1))))

(declare-fun b!14889 () Bool)

(assert (=> b!14889 (= e!8167 e!8168)))

(declare-fun res!6011 () Bool)

(assert (=> b!14889 (=> (not res!6011) (not e!8168))))

(assert (=> b!14889 (= res!6011 (>= (- (level!7 (left!652 xs!637)) (level!7 (right!655 xs!637))) (- 1)))))

(declare-fun b!14891 () Bool)

(declare-fun res!6010 () Bool)

(assert (=> b!14891 (=> (not res!6010) (not e!8168))))

(assert (=> b!14891 (= res!6010 (balanced!8 (left!652 xs!637)))))

(assert (= (and d!11331 (not res!6012)) b!14889))

(assert (= (and b!14889 res!6011) b!14890))

(assert (= (and b!14890 res!6009) b!14891))

(assert (= (and b!14891 res!6010) b!14892))

(declare-fun m!18433 () Bool)

(assert (=> b!14892 m!18433))

(assert (=> b!14890 m!18417))

(assert (=> b!14890 m!18415))

(assert (=> b!14889 m!18417))

(assert (=> b!14889 m!18415))

(declare-fun m!18435 () Bool)

(assert (=> b!14891 m!18435))

(assert (=> b!14853 d!11331))

(declare-fun b!14902 () Bool)

(declare-fun res!6023 () Bool)

(declare-fun e!8174 () Bool)

(assert (=> b!14902 (=> (not res!6023) (not e!8174))))

(declare-fun isEmpty!272 (Conc!8) Bool)

(assert (=> b!14902 (= res!6023 (not (isEmpty!272 (right!655 xs!637))))))

(declare-fun b!14903 () Bool)

(declare-fun res!6024 () Bool)

(assert (=> b!14903 (=> (not res!6024) (not e!8174))))

(assert (=> b!14903 (= res!6024 (concInv!7 (left!652 xs!637)))))

(declare-fun b!14904 () Bool)

(assert (=> b!14904 (= e!8174 (concInv!7 (right!655 xs!637)))))

(declare-fun d!11333 () Bool)

(declare-fun res!6021 () Bool)

(declare-fun e!8173 () Bool)

(assert (=> d!11333 (=> res!6021 e!8173)))

(assert (=> d!11333 (= res!6021 (not (is-CC!7 xs!637)))))

(assert (=> d!11333 (= (concInv!7 xs!637) e!8173)))

(declare-fun b!14901 () Bool)

(assert (=> b!14901 (= e!8173 e!8174)))

(declare-fun res!6022 () Bool)

(assert (=> b!14901 (=> (not res!6022) (not e!8174))))

(assert (=> b!14901 (= res!6022 (not (isEmpty!272 (left!652 xs!637))))))

(assert (= (and d!11333 (not res!6021)) b!14901))

(assert (= (and b!14901 res!6022) b!14902))

(assert (= (and b!14902 res!6023) b!14903))

(assert (= (and b!14903 res!6024) b!14904))

(declare-fun m!18437 () Bool)

(assert (=> b!14902 m!18437))

(declare-fun m!18439 () Bool)

(assert (=> b!14903 m!18439))

(declare-fun m!18441 () Bool)

(assert (=> b!14904 m!18441))

(declare-fun m!18443 () Bool)

(assert (=> b!14901 m!18443))

(assert (=> start!3056 d!11333))

(declare-fun d!11335 () Bool)

(declare-fun res!6027 () Bool)

(declare-fun e!8177 () Bool)

(assert (=> d!11335 (=> (not res!6027) (not e!8177))))

(declare-fun take!6 (List!321 Int) List!321)

(assert (=> d!11335 (= res!6027 (= (toList!81 (_1!50 res!5657)) (take!6 (toList!81 xs!637) n!315)))))

(assert (=> d!11335 (= (splitCorrectness!3 res!5657 xs!637 n!315) e!8177)))

(declare-fun b!14907 () Bool)

(declare-fun drop!4 (List!321 Int) List!321)

(assert (=> b!14907 (= e!8177 (= (toList!81 (_2!50 res!5657)) (drop!4 (toList!81 xs!637) n!315)))))

(assert (= (and d!11335 res!6027) b!14907))

(declare-fun m!18445 () Bool)

(assert (=> d!11335 m!18445))

(declare-fun m!18447 () Bool)

(assert (=> d!11335 m!18447))

(assert (=> d!11335 m!18447))

(declare-fun m!18449 () Bool)

(assert (=> d!11335 m!18449))

(declare-fun m!18451 () Bool)

(assert (=> b!14907 m!18451))

(assert (=> b!14907 m!18447))

(assert (=> b!14907 m!18447))

(declare-fun m!18453 () Bool)

(assert (=> b!14907 m!18453))

(assert (=> b!14857 d!11335))

(declare-fun b!14909 () Bool)

(declare-fun res!6030 () Bool)

(declare-fun e!8179 () Bool)

(assert (=> b!14909 (=> (not res!6030) (not e!8179))))

(assert (=> b!14909 (= res!6030 (not (isEmpty!272 (right!655 (_1!50 res!5657)))))))

(declare-fun b!14910 () Bool)

(declare-fun res!6031 () Bool)

(assert (=> b!14910 (=> (not res!6031) (not e!8179))))

(assert (=> b!14910 (= res!6031 (concInv!7 (left!652 (_1!50 res!5657))))))

(declare-fun b!14911 () Bool)

(assert (=> b!14911 (= e!8179 (concInv!7 (right!655 (_1!50 res!5657))))))

(declare-fun d!11337 () Bool)

(declare-fun res!6028 () Bool)

(declare-fun e!8178 () Bool)

(assert (=> d!11337 (=> res!6028 e!8178)))

(assert (=> d!11337 (= res!6028 (not (is-CC!7 (_1!50 res!5657))))))

(assert (=> d!11337 (= (concInv!7 (_1!50 res!5657)) e!8178)))

(declare-fun b!14908 () Bool)

(assert (=> b!14908 (= e!8178 e!8179)))

(declare-fun res!6029 () Bool)

(assert (=> b!14908 (=> (not res!6029) (not e!8179))))

(assert (=> b!14908 (= res!6029 (not (isEmpty!272 (left!652 (_1!50 res!5657)))))))

(assert (= (and d!11337 (not res!6028)) b!14908))

(assert (= (and b!14908 res!6029) b!14909))

(assert (= (and b!14909 res!6030) b!14910))

(assert (= (and b!14910 res!6031) b!14911))

(declare-fun m!18455 () Bool)

(assert (=> b!14909 m!18455))

(declare-fun m!18457 () Bool)

(assert (=> b!14910 m!18457))

(declare-fun m!18459 () Bool)

(assert (=> b!14911 m!18459))

(declare-fun m!18461 () Bool)

(assert (=> b!14908 m!18461))

(assert (=> b!14864 d!11337))

(declare-fun b!14915 () Bool)

(declare-fun e!8181 () Bool)

(assert (=> b!14915 (= e!8181 (balanced!8 (right!655 (_1!50 res!5657))))))

(declare-fun d!11339 () Bool)

(declare-fun res!6035 () Bool)

(declare-fun e!8180 () Bool)

(assert (=> d!11339 (=> res!6035 e!8180)))

(assert (=> d!11339 (= res!6035 (not (is-CC!7 (_1!50 res!5657))))))

(assert (=> d!11339 (= (balanced!8 (_1!50 res!5657)) e!8180)))

(declare-fun b!14913 () Bool)

(declare-fun res!6032 () Bool)

(assert (=> b!14913 (=> (not res!6032) (not e!8181))))

(assert (=> b!14913 (= res!6032 (<= (- (level!7 (left!652 (_1!50 res!5657))) (level!7 (right!655 (_1!50 res!5657)))) 1))))

(declare-fun b!14912 () Bool)

(assert (=> b!14912 (= e!8180 e!8181)))

(declare-fun res!6034 () Bool)

(assert (=> b!14912 (=> (not res!6034) (not e!8181))))

(assert (=> b!14912 (= res!6034 (>= (- (level!7 (left!652 (_1!50 res!5657))) (level!7 (right!655 (_1!50 res!5657)))) (- 1)))))

(declare-fun b!14914 () Bool)

(declare-fun res!6033 () Bool)

(assert (=> b!14914 (=> (not res!6033) (not e!8181))))

(assert (=> b!14914 (= res!6033 (balanced!8 (left!652 (_1!50 res!5657))))))

(assert (= (and d!11339 (not res!6035)) b!14912))

(assert (= (and b!14912 res!6034) b!14913))

(assert (= (and b!14913 res!6032) b!14914))

(assert (= (and b!14914 res!6033) b!14915))

(declare-fun m!18463 () Bool)

(assert (=> b!14915 m!18463))

(assert (=> b!14913 m!18421))

(assert (=> b!14913 m!18419))

(assert (=> b!14912 m!18421))

(assert (=> b!14912 m!18419))

(declare-fun m!18465 () Bool)

(assert (=> b!14914 m!18465))

(assert (=> b!14859 d!11339))

(declare-fun b!14917 () Bool)

(declare-fun res!6038 () Bool)

(declare-fun e!8183 () Bool)

(assert (=> b!14917 (=> (not res!6038) (not e!8183))))

(assert (=> b!14917 (= res!6038 (not (isEmpty!272 (right!655 (_2!50 res!5657)))))))

(declare-fun b!14918 () Bool)

(declare-fun res!6039 () Bool)

(assert (=> b!14918 (=> (not res!6039) (not e!8183))))

(assert (=> b!14918 (= res!6039 (concInv!7 (left!652 (_2!50 res!5657))))))

(declare-fun b!14919 () Bool)

(assert (=> b!14919 (= e!8183 (concInv!7 (right!655 (_2!50 res!5657))))))

(declare-fun d!11341 () Bool)

(declare-fun res!6036 () Bool)

(declare-fun e!8182 () Bool)

(assert (=> d!11341 (=> res!6036 e!8182)))

(assert (=> d!11341 (= res!6036 (not (is-CC!7 (_2!50 res!5657))))))

(assert (=> d!11341 (= (concInv!7 (_2!50 res!5657)) e!8182)))

(declare-fun b!14916 () Bool)

(assert (=> b!14916 (= e!8182 e!8183)))

(declare-fun res!6037 () Bool)

(assert (=> b!14916 (=> (not res!6037) (not e!8183))))

(assert (=> b!14916 (= res!6037 (not (isEmpty!272 (left!652 (_2!50 res!5657)))))))

(assert (= (and d!11341 (not res!6036)) b!14916))

(assert (= (and b!14916 res!6037) b!14917))

(assert (= (and b!14917 res!6038) b!14918))

(assert (= (and b!14918 res!6039) b!14919))

(declare-fun m!18467 () Bool)

(assert (=> b!14917 m!18467))

(declare-fun m!18469 () Bool)

(assert (=> b!14918 m!18469))

(declare-fun m!18471 () Bool)

(assert (=> b!14919 m!18471))

(declare-fun m!18473 () Bool)

(assert (=> b!14916 m!18473))

(assert (=> b!14865 d!11341))

(declare-fun b!14923 () Bool)

(declare-fun e!8185 () Bool)

(assert (=> b!14923 (= e!8185 (balanced!8 (right!655 (_2!50 res!5657))))))

(declare-fun d!11343 () Bool)

(declare-fun res!6043 () Bool)

(declare-fun e!8184 () Bool)

(assert (=> d!11343 (=> res!6043 e!8184)))

(assert (=> d!11343 (= res!6043 (not (is-CC!7 (_2!50 res!5657))))))

(assert (=> d!11343 (= (balanced!8 (_2!50 res!5657)) e!8184)))

(declare-fun b!14921 () Bool)

(declare-fun res!6040 () Bool)

(assert (=> b!14921 (=> (not res!6040) (not e!8185))))

(assert (=> b!14921 (= res!6040 (<= (- (level!7 (left!652 (_2!50 res!5657))) (level!7 (right!655 (_2!50 res!5657)))) 1))))

(declare-fun b!14920 () Bool)

(assert (=> b!14920 (= e!8184 e!8185)))

(declare-fun res!6042 () Bool)

(assert (=> b!14920 (=> (not res!6042) (not e!8185))))

(assert (=> b!14920 (= res!6042 (>= (- (level!7 (left!652 (_2!50 res!5657))) (level!7 (right!655 (_2!50 res!5657)))) (- 1)))))

(declare-fun b!14922 () Bool)

(declare-fun res!6041 () Bool)

(assert (=> b!14922 (=> (not res!6041) (not e!8185))))

(assert (=> b!14922 (= res!6041 (balanced!8 (left!652 (_2!50 res!5657))))))

(assert (= (and d!11343 (not res!6043)) b!14920))

(assert (= (and b!14920 res!6042) b!14921))

(assert (= (and b!14921 res!6040) b!14922))

(assert (= (and b!14922 res!6041) b!14923))

(declare-fun m!18475 () Bool)

(assert (=> b!14923 m!18475))

(assert (=> b!14921 m!18425))

(assert (=> b!14921 m!18423))

(assert (=> b!14920 m!18425))

(assert (=> b!14920 m!18423))

(declare-fun m!18477 () Bool)

(assert (=> b!14922 m!18477))

(assert (=> b!14860 d!11343))

(declare-fun b!14930 () Bool)

(declare-fun e!8188 () Bool)

(declare-fun tp!3645 () Bool)

(declare-fun tp!3646 () Bool)

(assert (=> b!14930 (= e!8188 (and tp!3645 tp!3646))))

(declare-fun b!14931 () Bool)

(assert (=> b!14931 (= e!8188 tp_is_empty!51)))

(assert (=> b!14867 (= tp!3637 e!8188)))

(assert (= (and b!14867 (is-CC!7 (left!652 (_1!50 res!5657)))) b!14930))

(assert (= (and b!14867 (is-Single!7 (left!652 (_1!50 res!5657)))) b!14931))

(declare-fun b!14932 () Bool)

(declare-fun e!8189 () Bool)

(declare-fun tp!3647 () Bool)

(declare-fun tp!3648 () Bool)

(assert (=> b!14932 (= e!8189 (and tp!3647 tp!3648))))

(declare-fun b!14933 () Bool)

(assert (=> b!14933 (= e!8189 tp_is_empty!51)))

(assert (=> b!14867 (= tp!3639 e!8189)))

(assert (= (and b!14867 (is-CC!7 (right!655 (_1!50 res!5657)))) b!14932))

(assert (= (and b!14867 (is-Single!7 (right!655 (_1!50 res!5657)))) b!14933))

(declare-fun b!14934 () Bool)

(declare-fun e!8190 () Bool)

(declare-fun tp!3649 () Bool)

(declare-fun tp!3650 () Bool)

(assert (=> b!14934 (= e!8190 (and tp!3649 tp!3650))))

(declare-fun b!14935 () Bool)

(assert (=> b!14935 (= e!8190 tp_is_empty!51)))

(assert (=> b!14866 (= tp!3640 e!8190)))

(assert (= (and b!14866 (is-CC!7 (left!652 xs!637))) b!14934))

(assert (= (and b!14866 (is-Single!7 (left!652 xs!637))) b!14935))

(declare-fun b!14936 () Bool)

(declare-fun e!8191 () Bool)

(declare-fun tp!3651 () Bool)

(declare-fun tp!3652 () Bool)

(assert (=> b!14936 (= e!8191 (and tp!3651 tp!3652))))

(declare-fun b!14937 () Bool)

(assert (=> b!14937 (= e!8191 tp_is_empty!51)))

(assert (=> b!14866 (= tp!3636 e!8191)))

(assert (= (and b!14866 (is-CC!7 (right!655 xs!637))) b!14936))

(assert (= (and b!14866 (is-Single!7 (right!655 xs!637))) b!14937))

(declare-fun b!14938 () Bool)

(declare-fun e!8192 () Bool)

(declare-fun tp!3653 () Bool)

(declare-fun tp!3654 () Bool)

(assert (=> b!14938 (= e!8192 (and tp!3653 tp!3654))))

(declare-fun b!14939 () Bool)

(assert (=> b!14939 (= e!8192 tp_is_empty!51)))

(assert (=> b!14858 (= tp!3638 e!8192)))

(assert (= (and b!14858 (is-CC!7 (left!652 (_2!50 res!5657)))) b!14938))

(assert (= (and b!14858 (is-Single!7 (left!652 (_2!50 res!5657)))) b!14939))

(declare-fun b!14940 () Bool)

(declare-fun e!8193 () Bool)

(declare-fun tp!3655 () Bool)

(declare-fun tp!3656 () Bool)

(assert (=> b!14940 (= e!8193 (and tp!3655 tp!3656))))

(declare-fun b!14941 () Bool)

(assert (=> b!14941 (= e!8193 tp_is_empty!51)))

(assert (=> b!14858 (= tp!3635 e!8193)))

(assert (= (and b!14858 (is-CC!7 (right!655 (_2!50 res!5657)))) b!14940))

(assert (= (and b!14858 (is-Single!7 (right!655 (_2!50 res!5657)))) b!14941))

(push 1)

(assert (not b!14891))

(assert (not b!14909))

(assert (not b!14902))

(assert (not b!14913))

(assert (not b!14914))

(assert (not b!14922))

(assert (not b!14940))

(assert (not b!14875))

(assert (not b!14932))

(assert (not b!14873))

(assert (not b!14919))

(assert (not b!14923))

(assert (not b!14916))

(assert (not b!14903))

(assert (not b!14934))

(assert (not b!14904))

(assert (not b!14880))

(assert (not b!14938))

(assert (not d!11335))

(assert (not b!14936))

(assert (not b!14921))

(assert (not b!14915))

(assert (not b!14918))

(assert (not b!14890))

(assert tp_is_empty!51)

(assert (not b!14901))

(assert (not b!14920))

(assert (not b!14912))

(assert (not b!14877))

(assert (not b!14907))

(assert (not b!14889))

(assert (not b!14910))

(assert (not b!14930))

(assert (not b!14908))

(assert (not b!14917))

(assert (not b!14892))

(assert (not b!14911))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!14943 () Bool)

(declare-fun e!8194 () Int)

(declare-fun lt!2096 () Int)

(declare-fun lt!2097 () Int)

(assert (=> b!14943 (= e!8194 (+ 1 (ite (>= lt!2096 lt!2097) lt!2096 lt!2097)))))

(assert (=> b!14943 (= lt!2097 (level!7 (right!655 (right!655 (_2!50 res!5657)))))))

(assert (=> b!14943 (= lt!2096 (level!7 (left!652 (right!655 (_2!50 res!5657)))))))

(declare-fun d!11345 () Bool)

(declare-fun lt!2098 () Int)

(assert (=> d!11345 (>= lt!2098 0)))

(assert (=> d!11345 (= lt!2098 e!8194)))

(declare-fun c!3984 () Bool)

(assert (=> d!11345 (= c!3984 (or (is-Empty!18 (right!655 (_2!50 res!5657))) (is-Single!7 (right!655 (_2!50 res!5657)))))))

(assert (=> d!11345 (= (level!7 (right!655 (_2!50 res!5657))) lt!2098)))

(declare-fun b!14942 () Bool)

(assert (=> b!14942 (= e!8194 0)))

(assert (= (and d!11345 c!3984) b!14942))

(assert (= (and d!11345 (not c!3984)) b!14943))

(declare-fun m!18479 () Bool)

(assert (=> b!14943 m!18479))

(declare-fun m!18481 () Bool)

(assert (=> b!14943 m!18481))

(assert (=> b!14877 d!11345))

(declare-fun b!14945 () Bool)

(declare-fun e!8195 () Int)

(declare-fun lt!2099 () Int)

(declare-fun lt!2100 () Int)

(assert (=> b!14945 (= e!8195 (+ 1 (ite (>= lt!2099 lt!2100) lt!2099 lt!2100)))))

(assert (=> b!14945 (= lt!2100 (level!7 (right!655 (left!652 (_2!50 res!5657)))))))

(assert (=> b!14945 (= lt!2099 (level!7 (left!652 (left!652 (_2!50 res!5657)))))))

(declare-fun d!11347 () Bool)

(declare-fun lt!2101 () Int)

(assert (=> d!11347 (>= lt!2101 0)))

(assert (=> d!11347 (= lt!2101 e!8195)))

(declare-fun c!3985 () Bool)

(assert (=> d!11347 (= c!3985 (or (is-Empty!18 (left!652 (_2!50 res!5657))) (is-Single!7 (left!652 (_2!50 res!5657)))))))

(assert (=> d!11347 (= (level!7 (left!652 (_2!50 res!5657))) lt!2101)))

(declare-fun b!14944 () Bool)

(assert (=> b!14944 (= e!8195 0)))

(assert (= (and d!11347 c!3985) b!14944))

(assert (= (and d!11347 (not c!3985)) b!14945))

(declare-fun m!18483 () Bool)

(assert (=> b!14945 m!18483))

(declare-fun m!18485 () Bool)

(assert (=> b!14945 m!18485))

(assert (=> b!14877 d!11347))

(declare-fun b!14947 () Bool)

(declare-fun res!6046 () Bool)

(declare-fun e!8197 () Bool)

(assert (=> b!14947 (=> (not res!6046) (not e!8197))))

(assert (=> b!14947 (= res!6046 (not (isEmpty!272 (right!655 (right!655 (_1!50 res!5657))))))))

(declare-fun b!14948 () Bool)

(declare-fun res!6047 () Bool)

(assert (=> b!14948 (=> (not res!6047) (not e!8197))))

(assert (=> b!14948 (= res!6047 (concInv!7 (left!652 (right!655 (_1!50 res!5657)))))))

(declare-fun b!14949 () Bool)

(assert (=> b!14949 (= e!8197 (concInv!7 (right!655 (right!655 (_1!50 res!5657)))))))

(declare-fun d!11349 () Bool)

(declare-fun res!6044 () Bool)

(declare-fun e!8196 () Bool)

(assert (=> d!11349 (=> res!6044 e!8196)))

(assert (=> d!11349 (= res!6044 (not (is-CC!7 (right!655 (_1!50 res!5657)))))))

(assert (=> d!11349 (= (concInv!7 (right!655 (_1!50 res!5657))) e!8196)))

(declare-fun b!14946 () Bool)

(assert (=> b!14946 (= e!8196 e!8197)))

(declare-fun res!6045 () Bool)

(assert (=> b!14946 (=> (not res!6045) (not e!8197))))

(assert (=> b!14946 (= res!6045 (not (isEmpty!272 (left!652 (right!655 (_1!50 res!5657))))))))

(assert (= (and d!11349 (not res!6044)) b!14946))

(assert (= (and b!14946 res!6045) b!14947))

(assert (= (and b!14947 res!6046) b!14948))

(assert (= (and b!14948 res!6047) b!14949))

(declare-fun m!18487 () Bool)

(assert (=> b!14947 m!18487))

(declare-fun m!18489 () Bool)

(assert (=> b!14948 m!18489))

(declare-fun m!18491 () Bool)

(assert (=> b!14949 m!18491))

(declare-fun m!18493 () Bool)

(assert (=> b!14946 m!18493))

(assert (=> b!14911 d!11349))

(assert (=> b!14921 d!11347))

(assert (=> b!14921 d!11345))

(declare-fun b!14951 () Bool)

(declare-fun e!8198 () Int)

(declare-fun lt!2102 () Int)

(declare-fun lt!2103 () Int)

(assert (=> b!14951 (= e!8198 (+ 1 (ite (>= lt!2102 lt!2103) lt!2102 lt!2103)))))

(assert (=> b!14951 (= lt!2103 (level!7 (right!655 (left!652 xs!637))))))

(assert (=> b!14951 (= lt!2102 (level!7 (left!652 (left!652 xs!637))))))

(declare-fun d!11351 () Bool)

(declare-fun lt!2104 () Int)

(assert (=> d!11351 (>= lt!2104 0)))

(assert (=> d!11351 (= lt!2104 e!8198)))

(declare-fun c!3986 () Bool)

(assert (=> d!11351 (= c!3986 (or (is-Empty!18 (left!652 xs!637)) (is-Single!7 (left!652 xs!637))))))

(assert (=> d!11351 (= (level!7 (left!652 xs!637)) lt!2104)))

(declare-fun b!14950 () Bool)

(assert (=> b!14950 (= e!8198 0)))

(assert (= (and d!11351 c!3986) b!14950))

(assert (= (and d!11351 (not c!3986)) b!14951))

(declare-fun m!18495 () Bool)

(assert (=> b!14951 m!18495))

(declare-fun m!18497 () Bool)

(assert (=> b!14951 m!18497))

(assert (=> b!14890 d!11351))

(declare-fun b!14953 () Bool)

(declare-fun e!8199 () Int)

(declare-fun lt!2105 () Int)

(declare-fun lt!2106 () Int)

(assert (=> b!14953 (= e!8199 (+ 1 (ite (>= lt!2105 lt!2106) lt!2105 lt!2106)))))

(assert (=> b!14953 (= lt!2106 (level!7 (right!655 (right!655 xs!637))))))

(assert (=> b!14953 (= lt!2105 (level!7 (left!652 (right!655 xs!637))))))

(declare-fun d!11353 () Bool)

(declare-fun lt!2107 () Int)

(assert (=> d!11353 (>= lt!2107 0)))

(assert (=> d!11353 (= lt!2107 e!8199)))

(declare-fun c!3987 () Bool)

(assert (=> d!11353 (= c!3987 (or (is-Empty!18 (right!655 xs!637)) (is-Single!7 (right!655 xs!637))))))

(assert (=> d!11353 (= (level!7 (right!655 xs!637)) lt!2107)))

(declare-fun b!14952 () Bool)

(assert (=> b!14952 (= e!8199 0)))

(assert (= (and d!11353 c!3987) b!14952))

(assert (= (and d!11353 (not c!3987)) b!14953))

(declare-fun m!18499 () Bool)

(assert (=> b!14953 m!18499))

(declare-fun m!18501 () Bool)

(assert (=> b!14953 m!18501))

(assert (=> b!14890 d!11353))

(declare-fun b!14955 () Bool)

(declare-fun res!6050 () Bool)

(declare-fun e!8201 () Bool)

(assert (=> b!14955 (=> (not res!6050) (not e!8201))))

(assert (=> b!14955 (= res!6050 (not (isEmpty!272 (right!655 (right!655 xs!637)))))))

(declare-fun b!14956 () Bool)

(declare-fun res!6051 () Bool)

(assert (=> b!14956 (=> (not res!6051) (not e!8201))))

(assert (=> b!14956 (= res!6051 (concInv!7 (left!652 (right!655 xs!637))))))

(declare-fun b!14957 () Bool)

(assert (=> b!14957 (= e!8201 (concInv!7 (right!655 (right!655 xs!637))))))

(declare-fun d!11355 () Bool)

(declare-fun res!6048 () Bool)

(declare-fun e!8200 () Bool)

(assert (=> d!11355 (=> res!6048 e!8200)))

(assert (=> d!11355 (= res!6048 (not (is-CC!7 (right!655 xs!637))))))

(assert (=> d!11355 (= (concInv!7 (right!655 xs!637)) e!8200)))

(declare-fun b!14954 () Bool)

(assert (=> b!14954 (= e!8200 e!8201)))

(declare-fun res!6049 () Bool)

(assert (=> b!14954 (=> (not res!6049) (not e!8201))))

(assert (=> b!14954 (= res!6049 (not (isEmpty!272 (left!652 (right!655 xs!637)))))))

(assert (= (and d!11355 (not res!6048)) b!14954))

(assert (= (and b!14954 res!6049) b!14955))

(assert (= (and b!14955 res!6050) b!14956))

(assert (= (and b!14956 res!6051) b!14957))

(declare-fun m!18503 () Bool)

(assert (=> b!14955 m!18503))

(declare-fun m!18505 () Bool)

(assert (=> b!14956 m!18505))

(declare-fun m!18507 () Bool)

(assert (=> b!14957 m!18507))

(declare-fun m!18509 () Bool)

(assert (=> b!14954 m!18509))

(assert (=> b!14904 d!11355))

(declare-fun b!14969 () Bool)

(declare-fun e!8207 () List!321)

(declare-fun ++!6 (List!321 List!321) List!321)

(assert (=> b!14969 (= e!8207 (++!6 (toList!81 (left!652 (_1!50 res!5657))) (toList!81 (right!655 (_1!50 res!5657)))))))

(declare-fun b!14966 () Bool)

(declare-fun e!8206 () List!321)

(assert (=> b!14966 (= e!8206 Nil!316)))

(declare-fun b!14967 () Bool)

(assert (=> b!14967 (= e!8206 e!8207)))

(declare-fun c!3993 () Bool)

(assert (=> b!14967 (= c!3993 (is-Single!7 (_1!50 res!5657)))))

(declare-fun b!14968 () Bool)

(assert (=> b!14968 (= e!8207 (Cons!315 (x!8696 (_1!50 res!5657)) Nil!316))))

(declare-fun d!11357 () Bool)

(declare-fun lt!2110 () List!321)

(declare-fun size!186 (List!321) Int)

(declare-fun size!187 (Conc!8) Int)

(assert (=> d!11357 (= (size!186 lt!2110) (size!187 (_1!50 res!5657)))))

(assert (=> d!11357 (= lt!2110 e!8206)))

(declare-fun c!3992 () Bool)

(assert (=> d!11357 (= c!3992 (is-Empty!18 (_1!50 res!5657)))))

(assert (=> d!11357 (= (toList!81 (_1!50 res!5657)) lt!2110)))

(assert (= (and b!14967 c!3993) b!14968))

(assert (= (and b!14967 (not c!3993)) b!14969))

(assert (= (and d!11357 c!3992) b!14966))

(assert (= (and d!11357 (not c!3992)) b!14967))

(declare-fun m!18511 () Bool)

(assert (=> b!14969 m!18511))

(declare-fun m!18513 () Bool)

(assert (=> b!14969 m!18513))

(assert (=> b!14969 m!18511))

(assert (=> b!14969 m!18513))

(declare-fun m!18515 () Bool)

(assert (=> b!14969 m!18515))

(declare-fun m!18517 () Bool)

(assert (=> d!11357 m!18517))

(declare-fun m!18519 () Bool)

(assert (=> d!11357 m!18519))

(assert (=> d!11335 d!11357))

(declare-fun b!14984 () Bool)

(declare-fun e!8217 () Int)

(declare-fun e!8218 () Int)

(assert (=> b!14984 (= e!8217 e!8218)))

(declare-fun c!4002 () Bool)

(assert (=> b!14984 (= c!4002 (>= n!315 (size!186 (toList!81 xs!637))))))

(declare-fun d!11359 () Bool)

(declare-fun e!8219 () Bool)

(assert (=> d!11359 e!8219))

(declare-fun res!6056 () Bool)

(assert (=> d!11359 (=> (not res!6056) (not e!8219))))

(declare-fun lt!2113 () List!321)

(declare-fun content!51 (List!321) (Set T!1707))

(assert (=> d!11359 (= res!6056 (subset (content!51 lt!2113) (content!51 (toList!81 xs!637))))))

(declare-fun e!8216 () List!321)

(assert (=> d!11359 (= lt!2113 e!8216)))

(declare-fun c!4000 () Bool)

(assert (=> d!11359 (= c!4000 (or (is-Nil!316 (toList!81 xs!637)) (<= n!315 0)))))

(assert (=> d!11359 (= (take!6 (toList!81 xs!637) n!315) lt!2113)))

(declare-fun b!14985 () Bool)

(assert (=> b!14985 (= e!8218 (size!186 (toList!81 xs!637)))))

(declare-fun b!14986 () Bool)

(assert (=> b!14986 (= e!8218 n!315)))

(declare-fun b!14987 () Bool)

(assert (=> b!14987 (= e!8216 (Cons!315 (h!229 (toList!81 xs!637)) (take!6 (t!4267 (toList!81 xs!637)) (- n!315 1))))))

(declare-fun b!14988 () Bool)

(assert (=> b!14988 (= e!8217 0)))

(declare-fun b!14989 () Bool)

(assert (=> b!14989 (= e!8219 (= (size!186 lt!2113) e!8217))))

(declare-fun c!4001 () Bool)

(assert (=> b!14989 (= c!4001 (<= n!315 0))))

(declare-fun b!14990 () Bool)

(assert (=> b!14990 (= e!8216 Nil!316)))

(assert (= (and d!11359 c!4000) b!14990))

(assert (= (and d!11359 (not c!4000)) b!14987))

(assert (= (and d!11359 res!6056) b!14989))

(assert (= (and b!14984 c!4002) b!14985))

(assert (= (and b!14984 (not c!4002)) b!14986))

(assert (= (and b!14989 c!4001) b!14988))

(assert (= (and b!14989 (not c!4001)) b!14984))

(declare-fun m!18521 () Bool)

(assert (=> b!14989 m!18521))

(assert (=> b!14984 m!18447))

(declare-fun m!18523 () Bool)

(assert (=> b!14984 m!18523))

(declare-fun m!18525 () Bool)

(assert (=> b!14987 m!18525))

(declare-fun m!18527 () Bool)

(assert (=> d!11359 m!18527))

(assert (=> d!11359 m!18447))

(declare-fun m!18529 () Bool)

(assert (=> d!11359 m!18529))

(assert (=> b!14985 m!18447))

(assert (=> b!14985 m!18523))

(assert (=> d!11335 d!11359))

(declare-fun b!14994 () Bool)

(declare-fun e!8221 () List!321)

(assert (=> b!14994 (= e!8221 (++!6 (toList!81 (left!652 xs!637)) (toList!81 (right!655 xs!637))))))

(declare-fun b!14991 () Bool)

(declare-fun e!8220 () List!321)

(assert (=> b!14991 (= e!8220 Nil!316)))

(declare-fun b!14992 () Bool)

(assert (=> b!14992 (= e!8220 e!8221)))

(declare-fun c!4004 () Bool)

(assert (=> b!14992 (= c!4004 (is-Single!7 xs!637))))

(declare-fun b!14993 () Bool)

(assert (=> b!14993 (= e!8221 (Cons!315 (x!8696 xs!637) Nil!316))))

(declare-fun d!11361 () Bool)

(declare-fun lt!2114 () List!321)

(assert (=> d!11361 (= (size!186 lt!2114) (size!187 xs!637))))

(assert (=> d!11361 (= lt!2114 e!8220)))

(declare-fun c!4003 () Bool)

(assert (=> d!11361 (= c!4003 (is-Empty!18 xs!637))))

(assert (=> d!11361 (= (toList!81 xs!637) lt!2114)))

(assert (= (and b!14992 c!4004) b!14993))

(assert (= (and b!14992 (not c!4004)) b!14994))

(assert (= (and d!11361 c!4003) b!14991))

(assert (= (and d!11361 (not c!4003)) b!14992))

(assert (=> b!14994 m!18427))

(assert (=> b!14994 m!18429))

(assert (=> b!14994 m!18427))

(assert (=> b!14994 m!18429))

(declare-fun m!18531 () Bool)

(assert (=> b!14994 m!18531))

(declare-fun m!18533 () Bool)

(assert (=> d!11361 m!18533))

(declare-fun m!18535 () Bool)

(assert (=> d!11361 m!18535))

(assert (=> d!11335 d!11361))

(declare-fun b!14998 () Bool)

(declare-fun e!8223 () Bool)

(assert (=> b!14998 (= e!8223 (balanced!8 (right!655 (left!652 xs!637))))))

(declare-fun d!11363 () Bool)

(declare-fun res!6060 () Bool)

(declare-fun e!8222 () Bool)

(assert (=> d!11363 (=> res!6060 e!8222)))

(assert (=> d!11363 (= res!6060 (not (is-CC!7 (left!652 xs!637))))))

(assert (=> d!11363 (= (balanced!8 (left!652 xs!637)) e!8222)))

(declare-fun b!14996 () Bool)

(declare-fun res!6057 () Bool)

(assert (=> b!14996 (=> (not res!6057) (not e!8223))))

(assert (=> b!14996 (= res!6057 (<= (- (level!7 (left!652 (left!652 xs!637))) (level!7 (right!655 (left!652 xs!637)))) 1))))

(declare-fun b!14995 () Bool)

(assert (=> b!14995 (= e!8222 e!8223)))

(declare-fun res!6059 () Bool)

(assert (=> b!14995 (=> (not res!6059) (not e!8223))))

(assert (=> b!14995 (= res!6059 (>= (- (level!7 (left!652 (left!652 xs!637))) (level!7 (right!655 (left!652 xs!637)))) (- 1)))))

(declare-fun b!14997 () Bool)

(declare-fun res!6058 () Bool)

(assert (=> b!14997 (=> (not res!6058) (not e!8223))))

(assert (=> b!14997 (= res!6058 (balanced!8 (left!652 (left!652 xs!637))))))

(assert (= (and d!11363 (not res!6060)) b!14995))

(assert (= (and b!14995 res!6059) b!14996))

(assert (= (and b!14996 res!6057) b!14997))

(assert (= (and b!14997 res!6058) b!14998))

(declare-fun m!18537 () Bool)

(assert (=> b!14998 m!18537))

(assert (=> b!14996 m!18497))

(assert (=> b!14996 m!18495))

(assert (=> b!14995 m!18497))

(assert (=> b!14995 m!18495))

(declare-fun m!18539 () Bool)

(assert (=> b!14997 m!18539))

(assert (=> b!14891 d!11363))

(declare-fun b!15000 () Bool)

(declare-fun e!8224 () Int)

(declare-fun lt!2115 () Int)

(declare-fun lt!2116 () Int)

(assert (=> b!15000 (= e!8224 (+ 1 (ite (>= lt!2115 lt!2116) lt!2115 lt!2116)))))

(assert (=> b!15000 (= lt!2116 (level!7 (right!655 (left!652 (_1!50 res!5657)))))))

(assert (=> b!15000 (= lt!2115 (level!7 (left!652 (left!652 (_1!50 res!5657)))))))

(declare-fun d!11365 () Bool)

(declare-fun lt!2117 () Int)

(assert (=> d!11365 (>= lt!2117 0)))

(assert (=> d!11365 (= lt!2117 e!8224)))

(declare-fun c!4005 () Bool)

(assert (=> d!11365 (= c!4005 (or (is-Empty!18 (left!652 (_1!50 res!5657))) (is-Single!7 (left!652 (_1!50 res!5657)))))))

(assert (=> d!11365 (= (level!7 (left!652 (_1!50 res!5657))) lt!2117)))

(declare-fun b!14999 () Bool)

(assert (=> b!14999 (= e!8224 0)))

(assert (= (and d!11365 c!4005) b!14999))

(assert (= (and d!11365 (not c!4005)) b!15000))

(declare-fun m!18541 () Bool)

(assert (=> b!15000 m!18541))

(declare-fun m!18543 () Bool)

(assert (=> b!15000 m!18543))

(assert (=> b!14913 d!11365))

(declare-fun b!15002 () Bool)

(declare-fun e!8225 () Int)

(declare-fun lt!2118 () Int)

(declare-fun lt!2119 () Int)

(assert (=> b!15002 (= e!8225 (+ 1 (ite (>= lt!2118 lt!2119) lt!2118 lt!2119)))))

(assert (=> b!15002 (= lt!2119 (level!7 (right!655 (right!655 (_1!50 res!5657)))))))

(assert (=> b!15002 (= lt!2118 (level!7 (left!652 (right!655 (_1!50 res!5657)))))))

(declare-fun d!11367 () Bool)

(declare-fun lt!2120 () Int)

(assert (=> d!11367 (>= lt!2120 0)))

(assert (=> d!11367 (= lt!2120 e!8225)))

(declare-fun c!4006 () Bool)

(assert (=> d!11367 (= c!4006 (or (is-Empty!18 (right!655 (_1!50 res!5657))) (is-Single!7 (right!655 (_1!50 res!5657)))))))

(assert (=> d!11367 (= (level!7 (right!655 (_1!50 res!5657))) lt!2120)))

(declare-fun b!15001 () Bool)

(assert (=> b!15001 (= e!8225 0)))

(assert (= (and d!11367 c!4006) b!15001))

(assert (= (and d!11367 (not c!4006)) b!15002))

(declare-fun m!18545 () Bool)

(assert (=> b!15002 m!18545))

(declare-fun m!18547 () Bool)

(assert (=> b!15002 m!18547))

(assert (=> b!14913 d!11367))

(assert (=> b!14889 d!11351))

(assert (=> b!14889 d!11353))

(declare-fun d!11369 () Bool)

(assert (=> d!11369 (= (isEmpty!272 (left!652 xs!637)) (= (left!652 xs!637) Empty!18))))

(assert (=> b!14901 d!11369))

(assert (=> b!14875 d!11367))

(assert (=> b!14875 d!11365))

(assert (=> b!14873 d!11353))

(assert (=> b!14873 d!11351))

(declare-fun d!11371 () Bool)

(assert (=> d!11371 (= (isEmpty!272 (right!655 (_1!50 res!5657))) (= (right!655 (_1!50 res!5657)) Empty!18))))

(assert (=> b!14909 d!11371))

(declare-fun b!15006 () Bool)

(declare-fun e!8227 () Bool)

(assert (=> b!15006 (= e!8227 (balanced!8 (right!655 (left!652 (_1!50 res!5657)))))))

(declare-fun d!11373 () Bool)

(declare-fun res!6064 () Bool)

(declare-fun e!8226 () Bool)

(assert (=> d!11373 (=> res!6064 e!8226)))

(assert (=> d!11373 (= res!6064 (not (is-CC!7 (left!652 (_1!50 res!5657)))))))

(assert (=> d!11373 (= (balanced!8 (left!652 (_1!50 res!5657))) e!8226)))

(declare-fun b!15004 () Bool)

(declare-fun res!6061 () Bool)

(assert (=> b!15004 (=> (not res!6061) (not e!8227))))

(assert (=> b!15004 (= res!6061 (<= (- (level!7 (left!652 (left!652 (_1!50 res!5657)))) (level!7 (right!655 (left!652 (_1!50 res!5657))))) 1))))

(declare-fun b!15003 () Bool)

(assert (=> b!15003 (= e!8226 e!8227)))

(declare-fun res!6063 () Bool)

(assert (=> b!15003 (=> (not res!6063) (not e!8227))))

(assert (=> b!15003 (= res!6063 (>= (- (level!7 (left!652 (left!652 (_1!50 res!5657)))) (level!7 (right!655 (left!652 (_1!50 res!5657))))) (- 1)))))

(declare-fun b!15005 () Bool)

(declare-fun res!6062 () Bool)

(assert (=> b!15005 (=> (not res!6062) (not e!8227))))

(assert (=> b!15005 (= res!6062 (balanced!8 (left!652 (left!652 (_1!50 res!5657)))))))

(assert (= (and d!11373 (not res!6064)) b!15003))

(assert (= (and b!15003 res!6063) b!15004))

(assert (= (and b!15004 res!6061) b!15005))

(assert (= (and b!15005 res!6062) b!15006))

(declare-fun m!18549 () Bool)

(assert (=> b!15006 m!18549))

(assert (=> b!15004 m!18543))

(assert (=> b!15004 m!18541))

(assert (=> b!15003 m!18543))

(assert (=> b!15003 m!18541))

(declare-fun m!18551 () Bool)

(assert (=> b!15005 m!18551))

(assert (=> b!14914 d!11373))

(declare-fun b!15008 () Bool)

(declare-fun res!6067 () Bool)

(declare-fun e!8229 () Bool)

(assert (=> b!15008 (=> (not res!6067) (not e!8229))))

(assert (=> b!15008 (= res!6067 (not (isEmpty!272 (right!655 (right!655 (_2!50 res!5657))))))))

(declare-fun b!15009 () Bool)

(declare-fun res!6068 () Bool)

(assert (=> b!15009 (=> (not res!6068) (not e!8229))))

(assert (=> b!15009 (= res!6068 (concInv!7 (left!652 (right!655 (_2!50 res!5657)))))))

(declare-fun b!15010 () Bool)

(assert (=> b!15010 (= e!8229 (concInv!7 (right!655 (right!655 (_2!50 res!5657)))))))

(declare-fun d!11375 () Bool)

(declare-fun res!6065 () Bool)

(declare-fun e!8228 () Bool)

(assert (=> d!11375 (=> res!6065 e!8228)))

(assert (=> d!11375 (= res!6065 (not (is-CC!7 (right!655 (_2!50 res!5657)))))))

(assert (=> d!11375 (= (concInv!7 (right!655 (_2!50 res!5657))) e!8228)))

(declare-fun b!15007 () Bool)

(assert (=> b!15007 (= e!8228 e!8229)))

(declare-fun res!6066 () Bool)

(assert (=> b!15007 (=> (not res!6066) (not e!8229))))

(assert (=> b!15007 (= res!6066 (not (isEmpty!272 (left!652 (right!655 (_2!50 res!5657))))))))

(assert (= (and d!11375 (not res!6065)) b!15007))

(assert (= (and b!15007 res!6066) b!15008))

(assert (= (and b!15008 res!6067) b!15009))

(assert (= (and b!15009 res!6068) b!15010))

(declare-fun m!18553 () Bool)

(assert (=> b!15008 m!18553))

(declare-fun m!18555 () Bool)

(assert (=> b!15009 m!18555))

(declare-fun m!18557 () Bool)

(assert (=> b!15010 m!18557))

(declare-fun m!18559 () Bool)

(assert (=> b!15007 m!18559))

(assert (=> b!14919 d!11375))

(assert (=> b!14920 d!11347))

(assert (=> b!14920 d!11345))

(declare-fun b!15012 () Bool)

(declare-fun res!6071 () Bool)

(declare-fun e!8231 () Bool)

(assert (=> b!15012 (=> (not res!6071) (not e!8231))))

(assert (=> b!15012 (= res!6071 (not (isEmpty!272 (right!655 (left!652 xs!637)))))))

(declare-fun b!15013 () Bool)

(declare-fun res!6072 () Bool)

(assert (=> b!15013 (=> (not res!6072) (not e!8231))))

(assert (=> b!15013 (= res!6072 (concInv!7 (left!652 (left!652 xs!637))))))

(declare-fun b!15014 () Bool)

(assert (=> b!15014 (= e!8231 (concInv!7 (right!655 (left!652 xs!637))))))

(declare-fun d!11377 () Bool)

(declare-fun res!6069 () Bool)

(declare-fun e!8230 () Bool)

(assert (=> d!11377 (=> res!6069 e!8230)))

(assert (=> d!11377 (= res!6069 (not (is-CC!7 (left!652 xs!637))))))

(assert (=> d!11377 (= (concInv!7 (left!652 xs!637)) e!8230)))

(declare-fun b!15011 () Bool)

(assert (=> b!15011 (= e!8230 e!8231)))

(declare-fun res!6070 () Bool)

(assert (=> b!15011 (=> (not res!6070) (not e!8231))))

(assert (=> b!15011 (= res!6070 (not (isEmpty!272 (left!652 (left!652 xs!637)))))))

(assert (= (and d!11377 (not res!6069)) b!15011))

(assert (= (and b!15011 res!6070) b!15012))

(assert (= (and b!15012 res!6071) b!15013))

(assert (= (and b!15013 res!6072) b!15014))

(declare-fun m!18561 () Bool)

(assert (=> b!15012 m!18561))

(declare-fun m!18563 () Bool)

(assert (=> b!15013 m!18563))

(declare-fun m!18565 () Bool)

(assert (=> b!15014 m!18565))

(declare-fun m!18567 () Bool)

(assert (=> b!15011 m!18567))

(assert (=> b!14903 d!11377))

(declare-fun b!15018 () Bool)

(declare-fun e!8233 () Bool)

(assert (=> b!15018 (= e!8233 (balanced!8 (right!655 (right!655 (_2!50 res!5657)))))))

(declare-fun d!11379 () Bool)

(declare-fun res!6076 () Bool)

(declare-fun e!8232 () Bool)

(assert (=> d!11379 (=> res!6076 e!8232)))

(assert (=> d!11379 (= res!6076 (not (is-CC!7 (right!655 (_2!50 res!5657)))))))

(assert (=> d!11379 (= (balanced!8 (right!655 (_2!50 res!5657))) e!8232)))

(declare-fun b!15016 () Bool)

(declare-fun res!6073 () Bool)

(assert (=> b!15016 (=> (not res!6073) (not e!8233))))

(assert (=> b!15016 (= res!6073 (<= (- (level!7 (left!652 (right!655 (_2!50 res!5657)))) (level!7 (right!655 (right!655 (_2!50 res!5657))))) 1))))

(declare-fun b!15015 () Bool)

(assert (=> b!15015 (= e!8232 e!8233)))

(declare-fun res!6075 () Bool)

(assert (=> b!15015 (=> (not res!6075) (not e!8233))))

(assert (=> b!15015 (= res!6075 (>= (- (level!7 (left!652 (right!655 (_2!50 res!5657)))) (level!7 (right!655 (right!655 (_2!50 res!5657))))) (- 1)))))

(declare-fun b!15017 () Bool)

(declare-fun res!6074 () Bool)

(assert (=> b!15017 (=> (not res!6074) (not e!8233))))

(assert (=> b!15017 (= res!6074 (balanced!8 (left!652 (right!655 (_2!50 res!5657)))))))

(assert (= (and d!11379 (not res!6076)) b!15015))

(assert (= (and b!15015 res!6075) b!15016))

(assert (= (and b!15016 res!6073) b!15017))

(assert (= (and b!15017 res!6074) b!15018))

(declare-fun m!18569 () Bool)

(assert (=> b!15018 m!18569))

(assert (=> b!15016 m!18481))

(assert (=> b!15016 m!18479))

(assert (=> b!15015 m!18481))

(assert (=> b!15015 m!18479))

(declare-fun m!18571 () Bool)

(assert (=> b!15017 m!18571))

(assert (=> b!14923 d!11379))

(declare-fun d!11381 () Bool)

(assert (=> d!11381 (= (isEmpty!272 (left!652 (_2!50 res!5657))) (= (left!652 (_2!50 res!5657)) Empty!18))))

(assert (=> b!14916 d!11381))

(declare-fun b!15022 () Bool)

(declare-fun e!8235 () Bool)

(assert (=> b!15022 (= e!8235 (balanced!8 (right!655 (right!655 xs!637))))))

(declare-fun d!11383 () Bool)

(declare-fun res!6080 () Bool)

(declare-fun e!8234 () Bool)

(assert (=> d!11383 (=> res!6080 e!8234)))

(assert (=> d!11383 (= res!6080 (not (is-CC!7 (right!655 xs!637))))))

(assert (=> d!11383 (= (balanced!8 (right!655 xs!637)) e!8234)))

(declare-fun b!15020 () Bool)

(declare-fun res!6077 () Bool)

(assert (=> b!15020 (=> (not res!6077) (not e!8235))))

(assert (=> b!15020 (= res!6077 (<= (- (level!7 (left!652 (right!655 xs!637))) (level!7 (right!655 (right!655 xs!637)))) 1))))

(declare-fun b!15019 () Bool)

(assert (=> b!15019 (= e!8234 e!8235)))

(declare-fun res!6079 () Bool)

(assert (=> b!15019 (=> (not res!6079) (not e!8235))))

(assert (=> b!15019 (= res!6079 (>= (- (level!7 (left!652 (right!655 xs!637))) (level!7 (right!655 (right!655 xs!637)))) (- 1)))))

(declare-fun b!15021 () Bool)

(declare-fun res!6078 () Bool)

(assert (=> b!15021 (=> (not res!6078) (not e!8235))))

(assert (=> b!15021 (= res!6078 (balanced!8 (left!652 (right!655 xs!637))))))

(assert (= (and d!11383 (not res!6080)) b!15019))

(assert (= (and b!15019 res!6079) b!15020))

(assert (= (and b!15020 res!6077) b!15021))

(assert (= (and b!15021 res!6078) b!15022))

(declare-fun m!18573 () Bool)

(assert (=> b!15022 m!18573))

(assert (=> b!15020 m!18501))

(assert (=> b!15020 m!18499))

(assert (=> b!15019 m!18501))

(assert (=> b!15019 m!18499))

(declare-fun m!18575 () Bool)

(assert (=> b!15021 m!18575))

(assert (=> b!14892 d!11383))

(declare-fun b!15026 () Bool)

(declare-fun e!8237 () Bool)

(assert (=> b!15026 (= e!8237 (balanced!8 (right!655 (right!655 (_1!50 res!5657)))))))

(declare-fun d!11385 () Bool)

(declare-fun res!6084 () Bool)

(declare-fun e!8236 () Bool)

(assert (=> d!11385 (=> res!6084 e!8236)))

(assert (=> d!11385 (= res!6084 (not (is-CC!7 (right!655 (_1!50 res!5657)))))))

(assert (=> d!11385 (= (balanced!8 (right!655 (_1!50 res!5657))) e!8236)))

(declare-fun b!15024 () Bool)

(declare-fun res!6081 () Bool)

(assert (=> b!15024 (=> (not res!6081) (not e!8237))))

(assert (=> b!15024 (= res!6081 (<= (- (level!7 (left!652 (right!655 (_1!50 res!5657)))) (level!7 (right!655 (right!655 (_1!50 res!5657))))) 1))))

(declare-fun b!15023 () Bool)

(assert (=> b!15023 (= e!8236 e!8237)))

(declare-fun res!6083 () Bool)

(assert (=> b!15023 (=> (not res!6083) (not e!8237))))

(assert (=> b!15023 (= res!6083 (>= (- (level!7 (left!652 (right!655 (_1!50 res!5657)))) (level!7 (right!655 (right!655 (_1!50 res!5657))))) (- 1)))))

(declare-fun b!15025 () Bool)

(declare-fun res!6082 () Bool)

(assert (=> b!15025 (=> (not res!6082) (not e!8237))))

(assert (=> b!15025 (= res!6082 (balanced!8 (left!652 (right!655 (_1!50 res!5657)))))))

(assert (= (and d!11385 (not res!6084)) b!15023))

(assert (= (and b!15023 res!6083) b!15024))

(assert (= (and b!15024 res!6081) b!15025))

(assert (= (and b!15025 res!6082) b!15026))

(declare-fun m!18577 () Bool)

(assert (=> b!15026 m!18577))

(assert (=> b!15024 m!18547))

(assert (=> b!15024 m!18545))

(assert (=> b!15023 m!18547))

(assert (=> b!15023 m!18545))

(declare-fun m!18579 () Bool)

(assert (=> b!15025 m!18579))

(assert (=> b!14915 d!11385))

(declare-fun b!15028 () Bool)

(declare-fun res!6087 () Bool)

(declare-fun e!8239 () Bool)

(assert (=> b!15028 (=> (not res!6087) (not e!8239))))

(assert (=> b!15028 (= res!6087 (not (isEmpty!272 (right!655 (left!652 (_2!50 res!5657))))))))

(declare-fun b!15029 () Bool)

(declare-fun res!6088 () Bool)

(assert (=> b!15029 (=> (not res!6088) (not e!8239))))

(assert (=> b!15029 (= res!6088 (concInv!7 (left!652 (left!652 (_2!50 res!5657)))))))

(declare-fun b!15030 () Bool)

(assert (=> b!15030 (= e!8239 (concInv!7 (right!655 (left!652 (_2!50 res!5657)))))))

(declare-fun d!11387 () Bool)

(declare-fun res!6085 () Bool)

(declare-fun e!8238 () Bool)

(assert (=> d!11387 (=> res!6085 e!8238)))

(assert (=> d!11387 (= res!6085 (not (is-CC!7 (left!652 (_2!50 res!5657)))))))

(assert (=> d!11387 (= (concInv!7 (left!652 (_2!50 res!5657))) e!8238)))

(declare-fun b!15027 () Bool)

(assert (=> b!15027 (= e!8238 e!8239)))

(declare-fun res!6086 () Bool)

(assert (=> b!15027 (=> (not res!6086) (not e!8239))))

(assert (=> b!15027 (= res!6086 (not (isEmpty!272 (left!652 (left!652 (_2!50 res!5657))))))))

(assert (= (and d!11387 (not res!6085)) b!15027))

(assert (= (and b!15027 res!6086) b!15028))

(assert (= (and b!15028 res!6087) b!15029))

(assert (= (and b!15029 res!6088) b!15030))

(declare-fun m!18581 () Bool)

(assert (=> b!15028 m!18581))

(declare-fun m!18583 () Bool)

(assert (=> b!15029 m!18583))

(declare-fun m!18585 () Bool)

(assert (=> b!15030 m!18585))

(declare-fun m!18587 () Bool)

(assert (=> b!15027 m!18587))

(assert (=> b!14918 d!11387))

(declare-fun d!11389 () Bool)

(assert (=> d!11389 (= (isEmpty!272 (right!655 (_2!50 res!5657))) (= (right!655 (_2!50 res!5657)) Empty!18))))

(assert (=> b!14917 d!11389))

(declare-fun b!15034 () Bool)

(declare-fun e!8241 () List!321)

(assert (=> b!15034 (= e!8241 (++!6 (toList!81 (left!652 (_2!50 res!5657))) (toList!81 (right!655 (_2!50 res!5657)))))))

(declare-fun b!15031 () Bool)

(declare-fun e!8240 () List!321)

(assert (=> b!15031 (= e!8240 Nil!316)))

(declare-fun b!15032 () Bool)

(assert (=> b!15032 (= e!8240 e!8241)))

(declare-fun c!4008 () Bool)

(assert (=> b!15032 (= c!4008 (is-Single!7 (_2!50 res!5657)))))

(declare-fun b!15033 () Bool)

(assert (=> b!15033 (= e!8241 (Cons!315 (x!8696 (_2!50 res!5657)) Nil!316))))

(declare-fun d!11391 () Bool)

(declare-fun lt!2121 () List!321)

(assert (=> d!11391 (= (size!186 lt!2121) (size!187 (_2!50 res!5657)))))

(assert (=> d!11391 (= lt!2121 e!8240)))

(declare-fun c!4007 () Bool)

(assert (=> d!11391 (= c!4007 (is-Empty!18 (_2!50 res!5657)))))

(assert (=> d!11391 (= (toList!81 (_2!50 res!5657)) lt!2121)))

(assert (= (and b!15032 c!4008) b!15033))

(assert (= (and b!15032 (not c!4008)) b!15034))

(assert (= (and d!11391 c!4007) b!15031))

(assert (= (and d!11391 (not c!4007)) b!15032))

(declare-fun m!18589 () Bool)

(assert (=> b!15034 m!18589))

(declare-fun m!18591 () Bool)

(assert (=> b!15034 m!18591))

(assert (=> b!15034 m!18589))

(assert (=> b!15034 m!18591))

(declare-fun m!18593 () Bool)

(assert (=> b!15034 m!18593))

(declare-fun m!18595 () Bool)

(assert (=> d!11391 m!18595))

(declare-fun m!18597 () Bool)

(assert (=> d!11391 m!18597))

(assert (=> b!14907 d!11391))

(declare-fun b!15053 () Bool)

(declare-fun e!8256 () Bool)

(declare-fun lt!2127 () List!321)

(declare-fun e!8252 () Int)

(assert (=> b!15053 (= e!8256 (= (size!186 lt!2127) e!8252))))

(declare-fun c!4017 () Bool)

(assert (=> b!15053 (= c!4017 (<= n!315 0))))

(declare-fun lt!2126 () Int)

(assert (=> b!15053 (= lt!2126 (size!186 (toList!81 xs!637)))))

(declare-fun b!15054 () Bool)

(declare-fun e!8254 () Int)

(assert (=> b!15054 (= e!8254 0)))

(declare-fun b!15055 () Bool)

(declare-fun e!8255 () List!321)

(assert (=> b!15055 (= e!8255 (drop!4 (t!4267 (toList!81 xs!637)) (- n!315 1)))))

(declare-fun b!15056 () Bool)

(declare-fun e!8253 () List!321)

(assert (=> b!15056 (= e!8253 Nil!316)))

(declare-fun b!15057 () Bool)

(assert (=> b!15057 (= e!8252 lt!2126)))

(declare-fun b!15058 () Bool)

(assert (=> b!15058 (= e!8252 e!8254)))

(declare-fun c!4020 () Bool)

(assert (=> b!15058 (= c!4020 (>= n!315 lt!2126))))

(declare-fun d!11393 () Bool)

(assert (=> d!11393 e!8256))

(declare-fun res!6095 () Bool)

(assert (=> d!11393 (=> (not res!6095) (not e!8256))))

(assert (=> d!11393 (= res!6095 (subset (content!51 lt!2127) (content!51 (toList!81 xs!637))))))

(assert (=> d!11393 (= lt!2127 e!8253)))

(declare-fun c!4019 () Bool)

(assert (=> d!11393 (= c!4019 (is-Nil!316 (toList!81 xs!637)))))

(assert (=> d!11393 (= (drop!4 (toList!81 xs!637) n!315) lt!2127)))

(declare-fun b!15059 () Bool)

(assert (=> b!15059 (= e!8255 (Cons!315 (h!229 (toList!81 xs!637)) (t!4267 (toList!81 xs!637))))))

(declare-fun b!15060 () Bool)

(assert (=> b!15060 (= e!8254 (- (size!186 (toList!81 xs!637)) n!315))))

(declare-fun b!15061 () Bool)

(assert (=> b!15061 (= e!8253 e!8255)))

(declare-fun c!4018 () Bool)

(assert (=> b!15061 (= c!4018 (<= n!315 0))))

(assert (= (and b!15061 c!4018) b!15059))

(assert (= (and b!15061 (not c!4018)) b!15055))

(assert (= (and d!11393 c!4019) b!15056))

(assert (= (and d!11393 (not c!4019)) b!15061))

(assert (= (and d!11393 res!6095) b!15053))

(assert (= (and b!15058 c!4020) b!15054))

(assert (= (and b!15058 (not c!4020)) b!15060))

(assert (= (and b!15053 c!4017) b!15057))

(assert (= (and b!15053 (not c!4017)) b!15058))

(declare-fun m!18599 () Bool)

(assert (=> b!15053 m!18599))

(assert (=> b!15053 m!18447))

(assert (=> b!15053 m!18523))

(declare-fun m!18601 () Bool)

(assert (=> b!15055 m!18601))

(declare-fun m!18603 () Bool)

(assert (=> d!11393 m!18603))

(assert (=> d!11393 m!18447))

(assert (=> d!11393 m!18529))

(assert (=> b!15060 m!18447))

(assert (=> b!15060 m!18523))

(assert (=> b!14907 d!11393))

(assert (=> b!14907 d!11361))

(assert (=> b!14912 d!11365))

(assert (=> b!14912 d!11367))

(declare-fun b!15065 () Bool)

(declare-fun e!8258 () Bool)

(assert (=> b!15065 (= e!8258 (balanced!8 (right!655 (left!652 (_2!50 res!5657)))))))

(declare-fun d!11395 () Bool)

(declare-fun res!6099 () Bool)

(declare-fun e!8257 () Bool)

(assert (=> d!11395 (=> res!6099 e!8257)))

(assert (=> d!11395 (= res!6099 (not (is-CC!7 (left!652 (_2!50 res!5657)))))))

(assert (=> d!11395 (= (balanced!8 (left!652 (_2!50 res!5657))) e!8257)))

(declare-fun b!15063 () Bool)

(declare-fun res!6096 () Bool)

(assert (=> b!15063 (=> (not res!6096) (not e!8258))))

(assert (=> b!15063 (= res!6096 (<= (- (level!7 (left!652 (left!652 (_2!50 res!5657)))) (level!7 (right!655 (left!652 (_2!50 res!5657))))) 1))))

(declare-fun b!15062 () Bool)

(assert (=> b!15062 (= e!8257 e!8258)))

(declare-fun res!6098 () Bool)

(assert (=> b!15062 (=> (not res!6098) (not e!8258))))

(assert (=> b!15062 (= res!6098 (>= (- (level!7 (left!652 (left!652 (_2!50 res!5657)))) (level!7 (right!655 (left!652 (_2!50 res!5657))))) (- 1)))))

(declare-fun b!15064 () Bool)

(declare-fun res!6097 () Bool)

(assert (=> b!15064 (=> (not res!6097) (not e!8258))))

(assert (=> b!15064 (= res!6097 (balanced!8 (left!652 (left!652 (_2!50 res!5657)))))))

(assert (= (and d!11395 (not res!6099)) b!15062))

(assert (= (and b!15062 res!6098) b!15063))

(assert (= (and b!15063 res!6096) b!15064))

(assert (= (and b!15064 res!6097) b!15065))

(declare-fun m!18605 () Bool)

(assert (=> b!15065 m!18605))

(assert (=> b!15063 m!18485))

(assert (=> b!15063 m!18483))

(assert (=> b!15062 m!18485))

(assert (=> b!15062 m!18483))

(declare-fun m!18607 () Bool)

(assert (=> b!15064 m!18607))

(assert (=> b!14922 d!11395))

(declare-fun b!15086 () Bool)

(declare-fun e!8272 () List!321)

(assert (=> b!15086 (= e!8272 (toList!81 (right!655 xs!637)))))

(declare-fun b!15087 () Bool)

(declare-fun e!8276 () List!321)

(assert (=> b!15087 (= e!8276 (++!6 (toList!81 (left!652 xs!637)) (take!6 (toList!81 (right!655 xs!637)) (- n!315 (size!186 (toList!81 (left!652 xs!637)))))))))

(declare-fun b!15088 () Bool)

(declare-fun e!8273 () List!321)

(declare-fun e!8271 () Bool)

(assert (=> b!15088 (= e!8271 (= (drop!4 (++!6 (toList!81 (left!652 xs!637)) (toList!81 (right!655 xs!637))) n!315) e!8273))))

(declare-fun c!4031 () Bool)

(assert (=> b!15088 (= c!4031 (< n!315 (size!186 (toList!81 (left!652 xs!637)))))))

(declare-fun b!15089 () Bool)

(assert (=> b!15089 (= e!8273 (++!6 (drop!4 (toList!81 (left!652 xs!637)) n!315) (toList!81 (right!655 xs!637))))))

(declare-fun b!15090 () Bool)

(declare-fun e!8274 () List!321)

(assert (=> b!15090 (= e!8274 (take!6 (toList!81 (left!652 xs!637)) n!315))))

(declare-fun b!15091 () Bool)

(assert (=> b!15091 (= e!8272 (drop!4 (toList!81 (right!655 xs!637)) (- n!315 (size!186 (toList!81 (left!652 xs!637))))))))

(declare-fun d!11397 () Bool)

(assert (=> d!11397 e!8271))

(declare-fun res!6111 () Bool)

(assert (=> d!11397 (=> (not res!6111) (not e!8271))))

(assert (=> d!11397 (= res!6111 (= (take!6 (++!6 (toList!81 (left!652 xs!637)) (toList!81 (right!655 xs!637))) n!315) e!8274))))

(declare-fun c!4032 () Bool)

(assert (=> d!11397 (= c!4032 (< n!315 (size!186 (toList!81 (left!652 xs!637)))))))

(declare-fun lt!2130 () Bool)

(declare-fun e!8275 () Bool)

(assert (=> d!11397 (= lt!2130 e!8275)))

(declare-fun res!6112 () Bool)

(assert (=> d!11397 (=> res!6112 e!8275)))

(assert (=> d!11397 (= res!6112 (or (is-Nil!316 (toList!81 (left!652 xs!637))) (<= n!315 0)))))

(assert (=> d!11397 (= (appendTakeDrop!2 (toList!81 (left!652 xs!637)) (toList!81 (right!655 xs!637)) n!315) true)))

(declare-fun b!15092 () Bool)

(assert (=> b!15092 (= e!8273 e!8272)))

(declare-fun c!4030 () Bool)

(assert (=> b!15092 (= c!4030 (> n!315 (size!186 (toList!81 (left!652 xs!637)))))))

(declare-fun b!15093 () Bool)

(assert (=> b!15093 (= e!8274 e!8276)))

(declare-fun c!4029 () Bool)

(assert (=> b!15093 (= c!4029 (> n!315 (size!186 (toList!81 (left!652 xs!637)))))))

(declare-fun b!15094 () Bool)

(assert (=> b!15094 (= e!8275 (appendTakeDrop!2 (t!4267 (toList!81 (left!652 xs!637))) (toList!81 (right!655 xs!637)) (- n!315 1)))))

(declare-fun b!15095 () Bool)

(assert (=> b!15095 (= e!8276 (toList!81 (left!652 xs!637)))))

(assert (= (and d!11397 (not res!6112)) b!15094))

(assert (= (and b!15093 c!4029) b!15087))

(assert (= (and b!15093 (not c!4029)) b!15095))

(assert (= (and d!11397 c!4032) b!15090))

(assert (= (and d!11397 (not c!4032)) b!15093))

(assert (= (and d!11397 res!6111) b!15088))

(assert (= (and b!15092 c!4030) b!15091))

(assert (= (and b!15092 (not c!4030)) b!15086))

(assert (= (and b!15088 c!4031) b!15089))

(assert (= (and b!15088 (not c!4031)) b!15092))

(assert (=> b!15093 m!18427))

(declare-fun m!18609 () Bool)

(assert (=> b!15093 m!18609))

(assert (=> b!15090 m!18427))

(declare-fun m!18611 () Bool)

(assert (=> b!15090 m!18611))

(assert (=> d!11397 m!18427))

(assert (=> d!11397 m!18429))

(assert (=> d!11397 m!18531))

(assert (=> d!11397 m!18531))

(declare-fun m!18613 () Bool)

(assert (=> d!11397 m!18613))

(assert (=> d!11397 m!18427))

(assert (=> d!11397 m!18609))

(assert (=> b!15091 m!18427))

(assert (=> b!15091 m!18609))

(assert (=> b!15091 m!18429))

(declare-fun m!18615 () Bool)

(assert (=> b!15091 m!18615))

(assert (=> b!15094 m!18429))

(declare-fun m!18617 () Bool)

(assert (=> b!15094 m!18617))

(assert (=> b!15087 m!18427))

(assert (=> b!15087 m!18609))

(assert (=> b!15087 m!18429))

(declare-fun m!18619 () Bool)

(assert (=> b!15087 m!18619))

(assert (=> b!15087 m!18427))

(assert (=> b!15087 m!18619))

(declare-fun m!18621 () Bool)

(assert (=> b!15087 m!18621))

(assert (=> b!15089 m!18427))

(declare-fun m!18623 () Bool)

(assert (=> b!15089 m!18623))

(assert (=> b!15089 m!18623))

(assert (=> b!15089 m!18429))

(declare-fun m!18625 () Bool)

(assert (=> b!15089 m!18625))

(assert (=> b!15092 m!18427))

(assert (=> b!15092 m!18609))

(assert (=> b!15088 m!18427))

(assert (=> b!15088 m!18429))

(assert (=> b!15088 m!18531))

(assert (=> b!15088 m!18531))

(declare-fun m!18627 () Bool)

(assert (=> b!15088 m!18627))

(assert (=> b!15088 m!18427))

(assert (=> b!15088 m!18609))

(assert (=> b!14880 d!11397))

(declare-fun b!15099 () Bool)

(declare-fun e!8278 () List!321)

(assert (=> b!15099 (= e!8278 (++!6 (toList!81 (left!652 (left!652 xs!637))) (toList!81 (right!655 (left!652 xs!637)))))))

(declare-fun b!15096 () Bool)

(declare-fun e!8277 () List!321)

(assert (=> b!15096 (= e!8277 Nil!316)))

(declare-fun b!15097 () Bool)

(assert (=> b!15097 (= e!8277 e!8278)))

(declare-fun c!4034 () Bool)

(assert (=> b!15097 (= c!4034 (is-Single!7 (left!652 xs!637)))))

(declare-fun b!15098 () Bool)

(assert (=> b!15098 (= e!8278 (Cons!315 (x!8696 (left!652 xs!637)) Nil!316))))

(declare-fun d!11399 () Bool)

(declare-fun lt!2131 () List!321)

(assert (=> d!11399 (= (size!186 lt!2131) (size!187 (left!652 xs!637)))))

(assert (=> d!11399 (= lt!2131 e!8277)))

(declare-fun c!4033 () Bool)

(assert (=> d!11399 (= c!4033 (is-Empty!18 (left!652 xs!637)))))

(assert (=> d!11399 (= (toList!81 (left!652 xs!637)) lt!2131)))

(assert (= (and b!15097 c!4034) b!15098))

(assert (= (and b!15097 (not c!4034)) b!15099))

(assert (= (and d!11399 c!4033) b!15096))

(assert (= (and d!11399 (not c!4033)) b!15097))

(declare-fun m!18629 () Bool)

(assert (=> b!15099 m!18629))

(declare-fun m!18631 () Bool)

(assert (=> b!15099 m!18631))

(assert (=> b!15099 m!18629))

(assert (=> b!15099 m!18631))

(declare-fun m!18633 () Bool)

(assert (=> b!15099 m!18633))

(declare-fun m!18635 () Bool)

(assert (=> d!11399 m!18635))

(declare-fun m!18637 () Bool)

(assert (=> d!11399 m!18637))

(assert (=> b!14880 d!11399))

(declare-fun b!15103 () Bool)

(declare-fun e!8280 () List!321)

(assert (=> b!15103 (= e!8280 (++!6 (toList!81 (left!652 (right!655 xs!637))) (toList!81 (right!655 (right!655 xs!637)))))))

(declare-fun b!15100 () Bool)

(declare-fun e!8279 () List!321)

(assert (=> b!15100 (= e!8279 Nil!316)))

(declare-fun b!15101 () Bool)

(assert (=> b!15101 (= e!8279 e!8280)))

(declare-fun c!4036 () Bool)

(assert (=> b!15101 (= c!4036 (is-Single!7 (right!655 xs!637)))))

(declare-fun b!15102 () Bool)

(assert (=> b!15102 (= e!8280 (Cons!315 (x!8696 (right!655 xs!637)) Nil!316))))

(declare-fun d!11401 () Bool)

(declare-fun lt!2132 () List!321)

(assert (=> d!11401 (= (size!186 lt!2132) (size!187 (right!655 xs!637)))))

(assert (=> d!11401 (= lt!2132 e!8279)))

(declare-fun c!4035 () Bool)

(assert (=> d!11401 (= c!4035 (is-Empty!18 (right!655 xs!637)))))

(assert (=> d!11401 (= (toList!81 (right!655 xs!637)) lt!2132)))

(assert (= (and b!15101 c!4036) b!15102))

(assert (= (and b!15101 (not c!4036)) b!15103))

(assert (= (and d!11401 c!4035) b!15100))

(assert (= (and d!11401 (not c!4035)) b!15101))

(declare-fun m!18639 () Bool)

(assert (=> b!15103 m!18639))

(declare-fun m!18641 () Bool)

(assert (=> b!15103 m!18641))

(assert (=> b!15103 m!18639))

(assert (=> b!15103 m!18641))

(declare-fun m!18643 () Bool)

(assert (=> b!15103 m!18643))

(declare-fun m!18645 () Bool)

(assert (=> d!11401 m!18645))

(declare-fun m!18647 () Bool)

(assert (=> d!11401 m!18647))

(assert (=> b!14880 d!11401))

(declare-fun d!11403 () Bool)

(assert (=> d!11403 (= (isEmpty!272 (left!652 (_1!50 res!5657))) (= (left!652 (_1!50 res!5657)) Empty!18))))

(assert (=> b!14908 d!11403))

(declare-fun d!11405 () Bool)

(assert (=> d!11405 (= (isEmpty!272 (right!655 xs!637)) (= (right!655 xs!637) Empty!18))))

(assert (=> b!14902 d!11405))

(declare-fun b!15105 () Bool)

(declare-fun res!6115 () Bool)

(declare-fun e!8282 () Bool)

(assert (=> b!15105 (=> (not res!6115) (not e!8282))))

(assert (=> b!15105 (= res!6115 (not (isEmpty!272 (right!655 (left!652 (_1!50 res!5657))))))))

(declare-fun b!15106 () Bool)

(declare-fun res!6116 () Bool)

(assert (=> b!15106 (=> (not res!6116) (not e!8282))))

(assert (=> b!15106 (= res!6116 (concInv!7 (left!652 (left!652 (_1!50 res!5657)))))))

(declare-fun b!15107 () Bool)

(assert (=> b!15107 (= e!8282 (concInv!7 (right!655 (left!652 (_1!50 res!5657)))))))

(declare-fun d!11407 () Bool)

(declare-fun res!6113 () Bool)

(declare-fun e!8281 () Bool)

(assert (=> d!11407 (=> res!6113 e!8281)))

(assert (=> d!11407 (= res!6113 (not (is-CC!7 (left!652 (_1!50 res!5657)))))))

(assert (=> d!11407 (= (concInv!7 (left!652 (_1!50 res!5657))) e!8281)))

(declare-fun b!15104 () Bool)

(assert (=> b!15104 (= e!8281 e!8282)))

(declare-fun res!6114 () Bool)

(assert (=> b!15104 (=> (not res!6114) (not e!8282))))

(assert (=> b!15104 (= res!6114 (not (isEmpty!272 (left!652 (left!652 (_1!50 res!5657))))))))

(assert (= (and d!11407 (not res!6113)) b!15104))

(assert (= (and b!15104 res!6114) b!15105))

(assert (= (and b!15105 res!6115) b!15106))

(assert (= (and b!15106 res!6116) b!15107))

(declare-fun m!18649 () Bool)

(assert (=> b!15105 m!18649))

(declare-fun m!18651 () Bool)

(assert (=> b!15106 m!18651))

(declare-fun m!18653 () Bool)

(assert (=> b!15107 m!18653))

(declare-fun m!18655 () Bool)

(assert (=> b!15104 m!18655))

(assert (=> b!14910 d!11407))

(declare-fun b!15108 () Bool)

(declare-fun e!8283 () Bool)

(declare-fun tp!3657 () Bool)

(declare-fun tp!3658 () Bool)

(assert (=> b!15108 (= e!8283 (and tp!3657 tp!3658))))

(declare-fun b!15109 () Bool)

(assert (=> b!15109 (= e!8283 tp_is_empty!51)))

(assert (=> b!14932 (= tp!3647 e!8283)))

(assert (= (and b!14932 (is-CC!7 (left!652 (right!655 (_1!50 res!5657))))) b!15108))

(assert (= (and b!14932 (is-Single!7 (left!652 (right!655 (_1!50 res!5657))))) b!15109))

(declare-fun b!15110 () Bool)

(declare-fun e!8284 () Bool)

(declare-fun tp!3659 () Bool)

(declare-fun tp!3660 () Bool)

(assert (=> b!15110 (= e!8284 (and tp!3659 tp!3660))))

(declare-fun b!15111 () Bool)

(assert (=> b!15111 (= e!8284 tp_is_empty!51)))

(assert (=> b!14932 (= tp!3648 e!8284)))

(assert (= (and b!14932 (is-CC!7 (right!655 (right!655 (_1!50 res!5657))))) b!15110))

(assert (= (and b!14932 (is-Single!7 (right!655 (right!655 (_1!50 res!5657))))) b!15111))

(declare-fun b!15112 () Bool)

(declare-fun e!8285 () Bool)

(declare-fun tp!3661 () Bool)

(declare-fun tp!3662 () Bool)

(assert (=> b!15112 (= e!8285 (and tp!3661 tp!3662))))

(declare-fun b!15113 () Bool)

(assert (=> b!15113 (= e!8285 tp_is_empty!51)))

(assert (=> b!14938 (= tp!3653 e!8285)))

(assert (= (and b!14938 (is-CC!7 (left!652 (left!652 (_2!50 res!5657))))) b!15112))

(assert (= (and b!14938 (is-Single!7 (left!652 (left!652 (_2!50 res!5657))))) b!15113))

(declare-fun b!15114 () Bool)

(declare-fun e!8286 () Bool)

(declare-fun tp!3663 () Bool)

(declare-fun tp!3664 () Bool)

(assert (=> b!15114 (= e!8286 (and tp!3663 tp!3664))))

(declare-fun b!15115 () Bool)

(assert (=> b!15115 (= e!8286 tp_is_empty!51)))

(assert (=> b!14938 (= tp!3654 e!8286)))

(assert (= (and b!14938 (is-CC!7 (right!655 (left!652 (_2!50 res!5657))))) b!15114))

(assert (= (and b!14938 (is-Single!7 (right!655 (left!652 (_2!50 res!5657))))) b!15115))

(declare-fun b!15116 () Bool)

(declare-fun e!8287 () Bool)

(declare-fun tp!3665 () Bool)

(declare-fun tp!3666 () Bool)

(assert (=> b!15116 (= e!8287 (and tp!3665 tp!3666))))

(declare-fun b!15117 () Bool)

(assert (=> b!15117 (= e!8287 tp_is_empty!51)))

(assert (=> b!14940 (= tp!3655 e!8287)))

(assert (= (and b!14940 (is-CC!7 (left!652 (right!655 (_2!50 res!5657))))) b!15116))

(assert (= (and b!14940 (is-Single!7 (left!652 (right!655 (_2!50 res!5657))))) b!15117))

(declare-fun b!15118 () Bool)

(declare-fun e!8288 () Bool)

(declare-fun tp!3667 () Bool)

(declare-fun tp!3668 () Bool)

(assert (=> b!15118 (= e!8288 (and tp!3667 tp!3668))))

(declare-fun b!15119 () Bool)

(assert (=> b!15119 (= e!8288 tp_is_empty!51)))

(assert (=> b!14940 (= tp!3656 e!8288)))

(assert (= (and b!14940 (is-CC!7 (right!655 (right!655 (_2!50 res!5657))))) b!15118))

(assert (= (and b!14940 (is-Single!7 (right!655 (right!655 (_2!50 res!5657))))) b!15119))

(declare-fun b!15120 () Bool)

(declare-fun e!8289 () Bool)

(declare-fun tp!3669 () Bool)

(declare-fun tp!3670 () Bool)

(assert (=> b!15120 (= e!8289 (and tp!3669 tp!3670))))

(declare-fun b!15121 () Bool)

(assert (=> b!15121 (= e!8289 tp_is_empty!51)))

(assert (=> b!14930 (= tp!3645 e!8289)))

(assert (= (and b!14930 (is-CC!7 (left!652 (left!652 (_1!50 res!5657))))) b!15120))

(assert (= (and b!14930 (is-Single!7 (left!652 (left!652 (_1!50 res!5657))))) b!15121))

(declare-fun b!15122 () Bool)

(declare-fun e!8290 () Bool)

(declare-fun tp!3671 () Bool)

(declare-fun tp!3672 () Bool)

(assert (=> b!15122 (= e!8290 (and tp!3671 tp!3672))))

(declare-fun b!15123 () Bool)

(assert (=> b!15123 (= e!8290 tp_is_empty!51)))

(assert (=> b!14930 (= tp!3646 e!8290)))

(assert (= (and b!14930 (is-CC!7 (right!655 (left!652 (_1!50 res!5657))))) b!15122))

(assert (= (and b!14930 (is-Single!7 (right!655 (left!652 (_1!50 res!5657))))) b!15123))

(declare-fun b!15124 () Bool)

(declare-fun e!8291 () Bool)

(declare-fun tp!3673 () Bool)

(declare-fun tp!3674 () Bool)

(assert (=> b!15124 (= e!8291 (and tp!3673 tp!3674))))

(declare-fun b!15125 () Bool)

(assert (=> b!15125 (= e!8291 tp_is_empty!51)))

(assert (=> b!14936 (= tp!3651 e!8291)))

(assert (= (and b!14936 (is-CC!7 (left!652 (right!655 xs!637)))) b!15124))

(assert (= (and b!14936 (is-Single!7 (left!652 (right!655 xs!637)))) b!15125))

(declare-fun b!15126 () Bool)

(declare-fun e!8292 () Bool)

(declare-fun tp!3675 () Bool)

(declare-fun tp!3676 () Bool)

(assert (=> b!15126 (= e!8292 (and tp!3675 tp!3676))))

(declare-fun b!15127 () Bool)

(assert (=> b!15127 (= e!8292 tp_is_empty!51)))

(assert (=> b!14936 (= tp!3652 e!8292)))

(assert (= (and b!14936 (is-CC!7 (right!655 (right!655 xs!637)))) b!15126))

(assert (= (and b!14936 (is-Single!7 (right!655 (right!655 xs!637)))) b!15127))

(declare-fun b!15128 () Bool)

(declare-fun e!8293 () Bool)

(declare-fun tp!3677 () Bool)

(declare-fun tp!3678 () Bool)

(assert (=> b!15128 (= e!8293 (and tp!3677 tp!3678))))

(declare-fun b!15129 () Bool)

(assert (=> b!15129 (= e!8293 tp_is_empty!51)))

(assert (=> b!14934 (= tp!3649 e!8293)))

(assert (= (and b!14934 (is-CC!7 (left!652 (left!652 xs!637)))) b!15128))

(assert (= (and b!14934 (is-Single!7 (left!652 (left!652 xs!637)))) b!15129))

(declare-fun b!15130 () Bool)

(declare-fun e!8294 () Bool)

(declare-fun tp!3679 () Bool)

(declare-fun tp!3680 () Bool)

(assert (=> b!15130 (= e!8294 (and tp!3679 tp!3680))))

(declare-fun b!15131 () Bool)

(assert (=> b!15131 (= e!8294 tp_is_empty!51)))

(assert (=> b!14934 (= tp!3650 e!8294)))

(assert (= (and b!14934 (is-CC!7 (right!655 (left!652 xs!637)))) b!15130))

(assert (= (and b!14934 (is-Single!7 (right!655 (left!652 xs!637)))) b!15131))

(push 1)

(assert (not b!15126))

(assert (not b!15020))

(assert (not b!15122))

(assert (not b!15116))

(assert (not b!14948))

(assert (not b!15053))

(assert (not b!14987))

(assert (not b!15002))

(assert (not b!15089))

(assert (not b!15130))

(assert (not b!14943))

(assert (not b!15007))

(assert (not b!15107))

(assert (not d!11397))

(assert (not b!14995))

(assert (not b!15014))

(assert (not b!15028))

(assert (not b!14997))

(assert (not b!15016))

(assert (not b!15021))

(assert (not b!14946))

(assert (not b!15114))

(assert (not b!15092))

(assert (not b!15009))

(assert (not b!15094))

(assert (not b!14955))

(assert (not b!15055))

(assert (not b!15093))

(assert (not b!15105))

(assert (not b!15099))

(assert (not b!15124))

(assert (not b!15004))

(assert (not d!11361))

(assert (not b!14957))

(assert (not b!15063))

(assert (not b!15110))

(assert (not b!14969))

(assert (not b!15090))

(assert (not b!15120))

(assert (not b!15011))

(assert (not b!15024))

(assert (not b!15062))

(assert (not b!15013))

(assert (not b!15017))

(assert (not b!14956))

(assert (not b!14953))

(assert (not b!15108))

(assert (not b!15030))

(assert (not b!14985))

(assert (not b!15112))

(assert (not d!11399))

(assert (not b!14996))

(assert (not b!15064))

(assert (not b!15103))

(assert (not b!15104))

(assert (not b!15029))

(assert (not b!15060))

(assert (not b!15019))

(assert (not b!14984))

(assert (not b!15128))

(assert tp_is_empty!51)

(assert (not b!15000))

(assert (not b!14989))

(assert (not b!15018))

(assert (not b!15088))

(assert (not b!15003))

(assert (not b!15006))

(assert (not b!14947))

(assert (not b!15027))

(assert (not b!15087))

(assert (not b!14951))

(assert (not b!14994))

(assert (not b!15026))

(assert (not b!15015))

(assert (not b!14998))

(assert (not b!15065))

(assert (not b!15010))

(assert (not b!15034))

(assert (not b!15022))

(assert (not b!15008))

(assert (not b!15023))

(assert (not b!14954))

(assert (not b!15025))

(assert (not b!15106))

(assert (not b!15012))

(assert (not d!11393))

(assert (not b!15091))

(assert (not b!14945))

(assert (not d!11357))

(assert (not b!15118))

(assert (not d!11359))

(assert (not d!11391))

(assert (not d!11401))

(assert (not b!15005))

(assert (not b!14949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

