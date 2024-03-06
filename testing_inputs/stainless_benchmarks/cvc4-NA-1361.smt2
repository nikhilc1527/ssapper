; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9528 () Bool)

(assert start!9528)

(declare-fun res!34407 () Bool)

(declare-fun e!38081 () Bool)

(assert (=> start!9528 (=> (not res!34407) (not e!38081))))

(declare-datatypes () ((Formula!61 (And!66 (lhs!986 Formula!61) (rhs!986 Formula!61)) (Literal!60 (id!4841 Int)) (Implies!66 (lhs!987 Formula!61) (rhs!987 Formula!61)) (Or!66 (lhs!988 Formula!61) (rhs!988 Formula!61)) (Not!66 (f!4230 Formula!61)))))

(declare-fun formula!15 () Formula!61)

(assert (=> start!9528 (= res!34407 (is-And!66 formula!15))))

(assert (=> start!9528 e!38081))

(assert (=> start!9528 true))

(declare-fun b!70400 () Bool)

(declare-fun res!34408 () Bool)

(assert (=> b!70400 (=> (not res!34408) (not e!38081))))

(declare-fun res!29374 () Int)

(declare-fun nnfMeasure!0 (Formula!61) Int)

(assert (=> b!70400 (= res!34408 (= res!29374 (+ (+ (nnfMeasure!0 (lhs!986 formula!15)) (nnfMeasure!0 (rhs!986 formula!15))) 1)))))

(declare-fun b!70401 () Bool)

(assert (=> b!70401 (= e!38081 (< res!29374 0))))

(assert (= (and start!9528 res!34407) b!70400))

(assert (= (and b!70400 res!34408) b!70401))

(declare-fun m!70605 () Bool)

(assert (=> b!70400 m!70605))

(declare-fun m!70607 () Bool)

(assert (=> b!70400 m!70607))

(push 1)

(assert (not b!70400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!70430 () Bool)

(declare-fun e!38098 () Int)

(declare-fun lt!14981 () Int)

(assert (=> b!70430 (= e!38098 lt!14981)))

(declare-fun b!70431 () Bool)

(declare-fun e!38102 () Int)

(declare-fun lt!14976 () Int)

(assert (=> b!70431 (= e!38102 (+ (+ lt!14981 lt!14976) 1))))

(declare-fun b!70432 () Bool)

(declare-fun e!38096 () Int)

(assert (=> b!70432 (= e!38096 e!38102)))

(declare-fun c!16804 () Bool)

(declare-fun lt!14982 () Bool)

(assert (=> b!70432 (= c!16804 lt!14982)))

(declare-fun e!38099 () Int)

(assert (=> b!70432 (= lt!14976 e!38099)))

(declare-fun c!16805 () Bool)

(assert (=> b!70432 (= c!16805 (or lt!14982 (is-Implies!66 (lhs!986 formula!15))))))

(declare-fun e!38097 () Int)

(assert (=> b!70432 (= lt!14981 e!38097)))

(declare-fun c!16806 () Bool)

(assert (=> b!70432 (= c!16806 (or lt!14982 (is-Implies!66 (lhs!986 formula!15)) (is-Not!66 (lhs!986 formula!15))))))

(assert (=> b!70432 (= lt!14982 (is-Or!66 (lhs!986 formula!15)))))

(declare-fun b!70433 () Bool)

(declare-fun res!34438 () Int)

(assert (=> b!70433 (= e!38099 res!34438)))

(assert (=> b!70433 true))

(declare-fun b!70434 () Bool)

(declare-fun e!38100 () Int)

(declare-fun res!34435 () Int)

(assert (=> b!70434 (= e!38100 res!34435)))

(assert (=> b!70434 true))

(declare-fun b!70435 () Bool)

(declare-fun e!38101 () Int)

(declare-fun lt!14979 () Bool)

(assert (=> b!70435 (= e!38101 (nnfMeasure!0 (ite lt!14979 (rhs!986 (lhs!986 formula!15)) (ite (is-Or!66 (lhs!986 formula!15)) (rhs!988 (lhs!986 formula!15)) (rhs!987 (lhs!986 formula!15))))))))

(declare-fun b!70436 () Bool)

(assert (=> b!70436 (= e!38100 (nnfMeasure!0 (ite lt!14979 (lhs!986 (lhs!986 formula!15)) (ite (is-Or!66 (lhs!986 formula!15)) (lhs!988 (lhs!986 formula!15)) (ite (is-Implies!66 (lhs!986 formula!15)) (lhs!987 (lhs!986 formula!15)) (f!4230 (lhs!986 formula!15)))))))))

(declare-fun b!70437 () Bool)

(declare-fun lt!14983 () Int)

(declare-fun lt!14980 () Int)

(assert (=> b!70437 (= e!38096 (+ (+ lt!14983 lt!14980) 1))))

(declare-fun b!70438 () Bool)

(declare-fun res!34436 () Int)

(assert (=> b!70438 (= e!38101 res!34436)))

(assert (=> b!70438 true))

(declare-fun d!53668 () Bool)

(declare-fun lt!14977 () Int)

(assert (=> d!53668 (>= lt!14977 0)))

(assert (=> d!53668 (= lt!14977 e!38096)))

(declare-fun c!16807 () Bool)

(assert (=> d!53668 (= c!16807 lt!14979)))

(assert (=> d!53668 (= lt!14980 e!38101)))

(declare-fun c!16803 () Bool)

(assert (=> d!53668 (= c!16803 (or lt!14979 (is-Or!66 (lhs!986 formula!15)) (is-Implies!66 (lhs!986 formula!15))))))

(assert (=> d!53668 (= lt!14983 e!38100)))

(declare-fun c!16802 () Bool)

(assert (=> d!53668 (= c!16802 (or lt!14979 (is-Or!66 (lhs!986 formula!15)) (is-Implies!66 (lhs!986 formula!15)) (is-Not!66 (lhs!986 formula!15))))))

(assert (=> d!53668 (= lt!14979 (is-And!66 (lhs!986 formula!15)))))

(assert (=> d!53668 (= (nnfMeasure!0 (lhs!986 formula!15)) lt!14977)))

(declare-fun b!70439 () Bool)

(declare-fun res!34437 () Int)

(assert (=> b!70439 (= e!38098 res!34437)))

(assert (=> b!70439 true))

(assert (=> b!70439 true))

(declare-fun b!70440 () Bool)

(assert (=> b!70440 (= e!38099 lt!14980)))

(declare-fun b!70441 () Bool)

(assert (=> b!70441 (= e!38097 lt!14983)))

(declare-fun lt!14978 () Bool)

(declare-fun b!70442 () Bool)

(declare-fun lt!14975 () Int)

(assert (=> b!70442 (= e!38102 (ite lt!14978 (+ (+ lt!14975 lt!14976) 3) (ite (is-Not!66 (lhs!986 formula!15)) (+ lt!14975 1) 0)))))

(assert (=> b!70442 (= lt!14975 e!38098)))

(declare-fun c!16808 () Bool)

(assert (=> b!70442 (= c!16808 (or lt!14978 (is-Not!66 (lhs!986 formula!15))))))

(assert (=> b!70442 (= lt!14978 (is-Implies!66 (lhs!986 formula!15)))))

(declare-fun b!70443 () Bool)

(declare-fun res!34439 () Int)

(assert (=> b!70443 (= e!38097 res!34439)))

(assert (=> b!70443 true))

(assert (= (and d!53668 c!16802) b!70436))

(assert (= (and d!53668 (not c!16802)) b!70434))

(assert (= (and d!53668 c!16803) b!70435))

(assert (= (and d!53668 (not c!16803)) b!70438))

(assert (= (and b!70432 c!16806) b!70441))

(assert (= (and b!70432 (not c!16806)) b!70443))

(assert (= (and b!70432 c!16805) b!70440))

(assert (= (and b!70432 (not c!16805)) b!70433))

(assert (= (and b!70442 c!16808) b!70430))

(assert (= (and b!70442 (not c!16808)) b!70439))

(assert (= (and b!70432 c!16804) b!70431))

(assert (= (and b!70432 (not c!16804)) b!70442))

(assert (= (and d!53668 c!16807) b!70437))

(assert (= (and d!53668 (not c!16807)) b!70432))

(declare-fun m!70609 () Bool)

(assert (=> b!70435 m!70609))

(declare-fun m!70611 () Bool)

(assert (=> b!70436 m!70611))

(assert (=> b!70400 d!53668))

(declare-fun b!70444 () Bool)

(declare-fun e!38105 () Int)

(declare-fun lt!14990 () Int)

(assert (=> b!70444 (= e!38105 lt!14990)))

(declare-fun b!70445 () Bool)

(declare-fun e!38109 () Int)

(declare-fun lt!14985 () Int)

(assert (=> b!70445 (= e!38109 (+ (+ lt!14990 lt!14985) 1))))

(declare-fun b!70446 () Bool)

(declare-fun e!38103 () Int)

(assert (=> b!70446 (= e!38103 e!38109)))

(declare-fun c!16811 () Bool)

(declare-fun lt!14991 () Bool)

(assert (=> b!70446 (= c!16811 lt!14991)))

(declare-fun e!38106 () Int)

(assert (=> b!70446 (= lt!14985 e!38106)))

(declare-fun c!16812 () Bool)

(assert (=> b!70446 (= c!16812 (or lt!14991 (is-Implies!66 (rhs!986 formula!15))))))

(declare-fun e!38104 () Int)

(assert (=> b!70446 (= lt!14990 e!38104)))

(declare-fun c!16813 () Bool)

(assert (=> b!70446 (= c!16813 (or lt!14991 (is-Implies!66 (rhs!986 formula!15)) (is-Not!66 (rhs!986 formula!15))))))

(assert (=> b!70446 (= lt!14991 (is-Or!66 (rhs!986 formula!15)))))

(declare-fun b!70447 () Bool)

(declare-fun res!34443 () Int)

(assert (=> b!70447 (= e!38106 res!34443)))

(assert (=> b!70447 true))

(declare-fun b!70448 () Bool)

(declare-fun e!38107 () Int)

(declare-fun res!34440 () Int)

(assert (=> b!70448 (= e!38107 res!34440)))

(assert (=> b!70448 true))

(declare-fun b!70449 () Bool)

(declare-fun e!38108 () Int)

(declare-fun lt!14988 () Bool)

(assert (=> b!70449 (= e!38108 (nnfMeasure!0 (ite lt!14988 (rhs!986 (rhs!986 formula!15)) (ite (is-Or!66 (rhs!986 formula!15)) (rhs!988 (rhs!986 formula!15)) (rhs!987 (rhs!986 formula!15))))))))

(declare-fun b!70450 () Bool)

(assert (=> b!70450 (= e!38107 (nnfMeasure!0 (ite lt!14988 (lhs!986 (rhs!986 formula!15)) (ite (is-Or!66 (rhs!986 formula!15)) (lhs!988 (rhs!986 formula!15)) (ite (is-Implies!66 (rhs!986 formula!15)) (lhs!987 (rhs!986 formula!15)) (f!4230 (rhs!986 formula!15)))))))))

(declare-fun b!70451 () Bool)

(declare-fun lt!14992 () Int)

(declare-fun lt!14989 () Int)

(assert (=> b!70451 (= e!38103 (+ (+ lt!14992 lt!14989) 1))))

(declare-fun b!70452 () Bool)

(declare-fun res!34441 () Int)

(assert (=> b!70452 (= e!38108 res!34441)))

(assert (=> b!70452 true))

(declare-fun d!53670 () Bool)

(declare-fun lt!14986 () Int)

(assert (=> d!53670 (>= lt!14986 0)))

(assert (=> d!53670 (= lt!14986 e!38103)))

(declare-fun c!16814 () Bool)

(assert (=> d!53670 (= c!16814 lt!14988)))

(assert (=> d!53670 (= lt!14989 e!38108)))

(declare-fun c!16810 () Bool)

(assert (=> d!53670 (= c!16810 (or lt!14988 (is-Or!66 (rhs!986 formula!15)) (is-Implies!66 (rhs!986 formula!15))))))

(assert (=> d!53670 (= lt!14992 e!38107)))

(declare-fun c!16809 () Bool)

(assert (=> d!53670 (= c!16809 (or lt!14988 (is-Or!66 (rhs!986 formula!15)) (is-Implies!66 (rhs!986 formula!15)) (is-Not!66 (rhs!986 formula!15))))))

(assert (=> d!53670 (= lt!14988 (is-And!66 (rhs!986 formula!15)))))

(assert (=> d!53670 (= (nnfMeasure!0 (rhs!986 formula!15)) lt!14986)))

(declare-fun b!70453 () Bool)

(declare-fun res!34442 () Int)

(assert (=> b!70453 (= e!38105 res!34442)))

(assert (=> b!70453 true))

(assert (=> b!70453 true))

(declare-fun b!70454 () Bool)

(assert (=> b!70454 (= e!38106 lt!14989)))

(declare-fun b!70455 () Bool)

(assert (=> b!70455 (= e!38104 lt!14992)))

(declare-fun b!70456 () Bool)

(declare-fun lt!14987 () Bool)

(declare-fun lt!14984 () Int)

(assert (=> b!70456 (= e!38109 (ite lt!14987 (+ (+ lt!14984 lt!14985) 3) (ite (is-Not!66 (rhs!986 formula!15)) (+ lt!14984 1) 0)))))

(assert (=> b!70456 (= lt!14984 e!38105)))

(declare-fun c!16815 () Bool)

(assert (=> b!70456 (= c!16815 (or lt!14987 (is-Not!66 (rhs!986 formula!15))))))

(assert (=> b!70456 (= lt!14987 (is-Implies!66 (rhs!986 formula!15)))))

(declare-fun b!70457 () Bool)

(declare-fun res!34444 () Int)

(assert (=> b!70457 (= e!38104 res!34444)))

(assert (=> b!70457 true))

(assert (= (and d!53670 c!16809) b!70450))

(assert (= (and d!53670 (not c!16809)) b!70448))

(assert (= (and d!53670 c!16810) b!70449))

(assert (= (and d!53670 (not c!16810)) b!70452))

(assert (= (and b!70446 c!16813) b!70455))

(assert (= (and b!70446 (not c!16813)) b!70457))

(assert (= (and b!70446 c!16812) b!70454))

(assert (= (and b!70446 (not c!16812)) b!70447))

(assert (= (and b!70456 c!16815) b!70444))

(assert (= (and b!70456 (not c!16815)) b!70453))

(assert (= (and b!70446 c!16811) b!70445))

(assert (= (and b!70446 (not c!16811)) b!70456))

(assert (= (and d!53670 c!16814) b!70451))

(assert (= (and d!53670 (not c!16814)) b!70446))

(declare-fun m!70613 () Bool)

(assert (=> b!70449 m!70613))

(declare-fun m!70615 () Bool)

(assert (=> b!70450 m!70615))

(assert (=> b!70400 d!53670))

(push 1)

(assert (not b!70435))

(assert (not b!70450))

(assert (not b!70436))

(assert (not b!70449))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

