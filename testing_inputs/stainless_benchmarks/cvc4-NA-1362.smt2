; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9532 () Bool)

(assert start!9532)

(declare-fun res!34449 () Bool)

(declare-fun e!38112 () Bool)

(assert (=> start!9532 (=> (not res!34449) (not e!38112))))

(declare-datatypes () ((Formula!62 (And!67 (lhs!989 Formula!62) (rhs!989 Formula!62)) (Literal!61 (id!4842 Int)) (Implies!67 (lhs!990 Formula!62) (rhs!990 Formula!62)) (Or!67 (lhs!991 Formula!62) (rhs!991 Formula!62)) (Not!67 (f!4231 Formula!62)))))

(declare-fun formula!15 () Formula!62)

(assert (=> start!9532 (= res!34449 (and (not (is-And!67 formula!15)) (is-Or!67 formula!15)))))

(assert (=> start!9532 e!38112))

(assert (=> start!9532 true))

(declare-fun b!70462 () Bool)

(declare-fun res!34450 () Bool)

(assert (=> b!70462 (=> (not res!34450) (not e!38112))))

(declare-fun res!29377 () Int)

(declare-fun nnfMeasure!0 (Formula!62) Int)

(assert (=> b!70462 (= res!34450 (= res!29377 (+ (+ (nnfMeasure!0 (lhs!991 formula!15)) (nnfMeasure!0 (rhs!991 formula!15))) 1)))))

(declare-fun b!70463 () Bool)

(assert (=> b!70463 (= e!38112 (< res!29377 0))))

(assert (= (and start!9532 res!34449) b!70462))

(assert (= (and b!70462 res!34450) b!70463))

(declare-fun m!70617 () Bool)

(assert (=> b!70462 m!70617))

(declare-fun m!70619 () Bool)

(assert (=> b!70462 m!70619))

(push 1)

(assert (not b!70462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!15014 () Int)

(declare-fun b!70492 () Bool)

(declare-fun e!38133 () Int)

(declare-fun lt!15016 () Bool)

(declare-fun lt!15011 () Int)

(assert (=> b!70492 (= e!38133 (ite lt!15016 (+ (+ lt!15011 lt!15014) 3) (ite (is-Not!67 (lhs!991 formula!15)) (+ lt!15011 1) 0)))))

(declare-fun e!38128 () Int)

(assert (=> b!70492 (= lt!15011 e!38128)))

(declare-fun c!16832 () Bool)

(assert (=> b!70492 (= c!16832 (or lt!15016 (is-Not!67 (lhs!991 formula!15))))))

(assert (=> b!70492 (= lt!15016 (is-Implies!67 (lhs!991 formula!15)))))

(declare-fun b!70493 () Bool)

(declare-fun lt!15013 () Int)

(assert (=> b!70493 (= e!38128 lt!15013)))

(declare-fun b!70494 () Bool)

(declare-fun e!38132 () Int)

(declare-fun lt!15012 () Int)

(assert (=> b!70494 (= e!38132 lt!15012)))

(declare-fun b!70495 () Bool)

(declare-fun e!38127 () Int)

(declare-fun lt!15018 () Int)

(assert (=> b!70495 (= e!38127 (+ (+ lt!15012 lt!15018) 1))))

(declare-fun b!70496 () Bool)

(declare-fun e!38129 () Int)

(declare-fun lt!15015 () Bool)

(assert (=> b!70496 (= e!38129 (nnfMeasure!0 (ite lt!15015 (lhs!989 (lhs!991 formula!15)) (ite (is-Or!67 (lhs!991 formula!15)) (lhs!991 (lhs!991 formula!15)) (ite (is-Implies!67 (lhs!991 formula!15)) (lhs!990 (lhs!991 formula!15)) (f!4231 (lhs!991 formula!15)))))))))

(declare-fun b!70497 () Bool)

(declare-fun e!38130 () Int)

(assert (=> b!70497 (= e!38130 (nnfMeasure!0 (ite lt!15015 (rhs!989 (lhs!991 formula!15)) (ite (is-Or!67 (lhs!991 formula!15)) (rhs!991 (lhs!991 formula!15)) (rhs!990 (lhs!991 formula!15))))))))

(declare-fun b!70498 () Bool)

(declare-fun res!34480 () Int)

(assert (=> b!70498 (= e!38129 res!34480)))

(assert (=> b!70498 true))

(declare-fun b!70499 () Bool)

(declare-fun e!38131 () Int)

(assert (=> b!70499 (= e!38131 lt!15018)))

(declare-fun d!53672 () Bool)

(declare-fun lt!15019 () Int)

(assert (=> d!53672 (>= lt!15019 0)))

(assert (=> d!53672 (= lt!15019 e!38127)))

(declare-fun c!16833 () Bool)

(assert (=> d!53672 (= c!16833 lt!15015)))

(assert (=> d!53672 (= lt!15018 e!38130)))

(declare-fun c!16831 () Bool)

(assert (=> d!53672 (= c!16831 (or lt!15015 (is-Or!67 (lhs!991 formula!15)) (is-Implies!67 (lhs!991 formula!15))))))

(assert (=> d!53672 (= lt!15012 e!38129)))

(declare-fun c!16834 () Bool)

(assert (=> d!53672 (= c!16834 (or lt!15015 (is-Or!67 (lhs!991 formula!15)) (is-Implies!67 (lhs!991 formula!15)) (is-Not!67 (lhs!991 formula!15))))))

(assert (=> d!53672 (= lt!15015 (is-And!67 (lhs!991 formula!15)))))

(assert (=> d!53672 (= (nnfMeasure!0 (lhs!991 formula!15)) lt!15019)))

(declare-fun b!70500 () Bool)

(assert (=> b!70500 (= e!38133 (+ (+ lt!15013 lt!15014) 1))))

(declare-fun b!70501 () Bool)

(declare-fun res!34481 () Int)

(assert (=> b!70501 (= e!38132 res!34481)))

(assert (=> b!70501 true))

(declare-fun b!70502 () Bool)

(declare-fun res!34478 () Int)

(assert (=> b!70502 (= e!38131 res!34478)))

(assert (=> b!70502 true))

(declare-fun b!70503 () Bool)

(declare-fun res!34477 () Int)

(assert (=> b!70503 (= e!38130 res!34477)))

(assert (=> b!70503 true))

(declare-fun b!70504 () Bool)

(declare-fun res!34479 () Int)

(assert (=> b!70504 (= e!38128 res!34479)))

(assert (=> b!70504 true))

(assert (=> b!70504 true))

(declare-fun b!70505 () Bool)

(assert (=> b!70505 (= e!38127 e!38133)))

(declare-fun c!16835 () Bool)

(declare-fun lt!15017 () Bool)

(assert (=> b!70505 (= c!16835 lt!15017)))

(assert (=> b!70505 (= lt!15014 e!38131)))

(declare-fun c!16836 () Bool)

(assert (=> b!70505 (= c!16836 (or lt!15017 (is-Implies!67 (lhs!991 formula!15))))))

(assert (=> b!70505 (= lt!15013 e!38132)))

(declare-fun c!16830 () Bool)

(assert (=> b!70505 (= c!16830 (or lt!15017 (is-Implies!67 (lhs!991 formula!15)) (is-Not!67 (lhs!991 formula!15))))))

(assert (=> b!70505 (= lt!15017 (is-Or!67 (lhs!991 formula!15)))))

(assert (= (and d!53672 c!16834) b!70496))

(assert (= (and d!53672 (not c!16834)) b!70498))

(assert (= (and d!53672 c!16831) b!70497))

(assert (= (and d!53672 (not c!16831)) b!70503))

(assert (= (and b!70505 c!16830) b!70494))

(assert (= (and b!70505 (not c!16830)) b!70501))

(assert (= (and b!70505 c!16836) b!70499))

(assert (= (and b!70505 (not c!16836)) b!70502))

(assert (= (and b!70492 c!16832) b!70493))

(assert (= (and b!70492 (not c!16832)) b!70504))

(assert (= (and b!70505 c!16835) b!70500))

(assert (= (and b!70505 (not c!16835)) b!70492))

(assert (= (and d!53672 c!16833) b!70495))

(assert (= (and d!53672 (not c!16833)) b!70505))

(declare-fun m!70621 () Bool)

(assert (=> b!70496 m!70621))

(declare-fun m!70623 () Bool)

(assert (=> b!70497 m!70623))

(assert (=> b!70462 d!53672))

(declare-fun lt!15020 () Int)

(declare-fun lt!15023 () Int)

(declare-fun b!70506 () Bool)

(declare-fun lt!15025 () Bool)

(declare-fun e!38140 () Int)

(assert (=> b!70506 (= e!38140 (ite lt!15025 (+ (+ lt!15020 lt!15023) 3) (ite (is-Not!67 (rhs!991 formula!15)) (+ lt!15020 1) 0)))))

(declare-fun e!38135 () Int)

(assert (=> b!70506 (= lt!15020 e!38135)))

(declare-fun c!16839 () Bool)

(assert (=> b!70506 (= c!16839 (or lt!15025 (is-Not!67 (rhs!991 formula!15))))))

(assert (=> b!70506 (= lt!15025 (is-Implies!67 (rhs!991 formula!15)))))

(declare-fun b!70507 () Bool)

(declare-fun lt!15022 () Int)

(assert (=> b!70507 (= e!38135 lt!15022)))

(declare-fun b!70508 () Bool)

(declare-fun e!38139 () Int)

(declare-fun lt!15021 () Int)

(assert (=> b!70508 (= e!38139 lt!15021)))

(declare-fun b!70509 () Bool)

(declare-fun e!38134 () Int)

(declare-fun lt!15027 () Int)

(assert (=> b!70509 (= e!38134 (+ (+ lt!15021 lt!15027) 1))))

(declare-fun b!70510 () Bool)

(declare-fun e!38136 () Int)

(declare-fun lt!15024 () Bool)

(assert (=> b!70510 (= e!38136 (nnfMeasure!0 (ite lt!15024 (lhs!989 (rhs!991 formula!15)) (ite (is-Or!67 (rhs!991 formula!15)) (lhs!991 (rhs!991 formula!15)) (ite (is-Implies!67 (rhs!991 formula!15)) (lhs!990 (rhs!991 formula!15)) (f!4231 (rhs!991 formula!15)))))))))

(declare-fun b!70511 () Bool)

(declare-fun e!38137 () Int)

(assert (=> b!70511 (= e!38137 (nnfMeasure!0 (ite lt!15024 (rhs!989 (rhs!991 formula!15)) (ite (is-Or!67 (rhs!991 formula!15)) (rhs!991 (rhs!991 formula!15)) (rhs!990 (rhs!991 formula!15))))))))

(declare-fun b!70512 () Bool)

(declare-fun res!34485 () Int)

(assert (=> b!70512 (= e!38136 res!34485)))

(assert (=> b!70512 true))

(declare-fun b!70513 () Bool)

(declare-fun e!38138 () Int)

(assert (=> b!70513 (= e!38138 lt!15027)))

(declare-fun d!53674 () Bool)

(declare-fun lt!15028 () Int)

(assert (=> d!53674 (>= lt!15028 0)))

(assert (=> d!53674 (= lt!15028 e!38134)))

(declare-fun c!16840 () Bool)

(assert (=> d!53674 (= c!16840 lt!15024)))

(assert (=> d!53674 (= lt!15027 e!38137)))

(declare-fun c!16838 () Bool)

(assert (=> d!53674 (= c!16838 (or lt!15024 (is-Or!67 (rhs!991 formula!15)) (is-Implies!67 (rhs!991 formula!15))))))

(assert (=> d!53674 (= lt!15021 e!38136)))

(declare-fun c!16841 () Bool)

(assert (=> d!53674 (= c!16841 (or lt!15024 (is-Or!67 (rhs!991 formula!15)) (is-Implies!67 (rhs!991 formula!15)) (is-Not!67 (rhs!991 formula!15))))))

(assert (=> d!53674 (= lt!15024 (is-And!67 (rhs!991 formula!15)))))

(assert (=> d!53674 (= (nnfMeasure!0 (rhs!991 formula!15)) lt!15028)))

(declare-fun b!70514 () Bool)

(assert (=> b!70514 (= e!38140 (+ (+ lt!15022 lt!15023) 1))))

(declare-fun b!70515 () Bool)

(declare-fun res!34486 () Int)

(assert (=> b!70515 (= e!38139 res!34486)))

(assert (=> b!70515 true))

(declare-fun b!70516 () Bool)

(declare-fun res!34483 () Int)

(assert (=> b!70516 (= e!38138 res!34483)))

(assert (=> b!70516 true))

(declare-fun b!70517 () Bool)

(declare-fun res!34482 () Int)

(assert (=> b!70517 (= e!38137 res!34482)))

(assert (=> b!70517 true))

(declare-fun b!70518 () Bool)

(declare-fun res!34484 () Int)

(assert (=> b!70518 (= e!38135 res!34484)))

(assert (=> b!70518 true))

(assert (=> b!70518 true))

(declare-fun b!70519 () Bool)

(assert (=> b!70519 (= e!38134 e!38140)))

(declare-fun c!16842 () Bool)

(declare-fun lt!15026 () Bool)

(assert (=> b!70519 (= c!16842 lt!15026)))

(assert (=> b!70519 (= lt!15023 e!38138)))

(declare-fun c!16843 () Bool)

(assert (=> b!70519 (= c!16843 (or lt!15026 (is-Implies!67 (rhs!991 formula!15))))))

(assert (=> b!70519 (= lt!15022 e!38139)))

(declare-fun c!16837 () Bool)

(assert (=> b!70519 (= c!16837 (or lt!15026 (is-Implies!67 (rhs!991 formula!15)) (is-Not!67 (rhs!991 formula!15))))))

(assert (=> b!70519 (= lt!15026 (is-Or!67 (rhs!991 formula!15)))))

(assert (= (and d!53674 c!16841) b!70510))

(assert (= (and d!53674 (not c!16841)) b!70512))

(assert (= (and d!53674 c!16838) b!70511))

(assert (= (and d!53674 (not c!16838)) b!70517))

(assert (= (and b!70519 c!16837) b!70508))

(assert (= (and b!70519 (not c!16837)) b!70515))

(assert (= (and b!70519 c!16843) b!70513))

(assert (= (and b!70519 (not c!16843)) b!70516))

(assert (= (and b!70506 c!16839) b!70507))

(assert (= (and b!70506 (not c!16839)) b!70518))

(assert (= (and b!70519 c!16842) b!70514))

(assert (= (and b!70519 (not c!16842)) b!70506))

(assert (= (and d!53674 c!16840) b!70509))

(assert (= (and d!53674 (not c!16840)) b!70519))

(declare-fun m!70625 () Bool)

(assert (=> b!70510 m!70625))

(declare-fun m!70627 () Bool)

(assert (=> b!70511 m!70627))

(assert (=> b!70462 d!53674))

(push 1)

(assert (not b!70510))

(assert (not b!70496))

(assert (not b!70497))

(assert (not b!70511))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

