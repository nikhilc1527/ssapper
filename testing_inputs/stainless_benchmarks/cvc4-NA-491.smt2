; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3294 () Bool)

(assert start!3294)

(declare-fun b!18627 () Bool)

(declare-fun e!9938 () Bool)

(declare-fun tp!4380 () Bool)

(declare-fun tp!4375 () Bool)

(assert (=> b!18627 (= e!9938 (and tp!4380 tp!4375))))

(declare-fun b!18628 () Bool)

(declare-fun res!7845 () Bool)

(declare-fun e!9940 () Bool)

(assert (=> b!18628 (=> res!7845 e!9940)))

(declare-datatypes () ((T!1737 (T!1738 (val!41 Int)))))

(declare-datatypes () ((Conc!23 (CC!22 (left!667 Conc!23) (right!670 Conc!23)) (Single!22 (x!8756 T!1737)) (Empty!33))))

(declare-fun ys!115 () Conc!23)

(declare-fun concInv!21 (Conc!23) Bool)

(assert (=> b!18628 (= res!7845 (not (concInv!21 ys!115)))))

(declare-fun res!7855 () Bool)

(declare-fun e!9941 () Bool)

(assert (=> start!3294 (=> (not res!7855) (not e!9941))))

(declare-fun xs!604 () Conc!23)

(assert (=> start!3294 (= res!7855 (concInv!21 xs!604))))

(assert (=> start!3294 e!9941))

(declare-fun e!9939 () Bool)

(assert (=> start!3294 e!9939))

(declare-fun e!9942 () Bool)

(assert (=> start!3294 e!9942))

(declare-fun tp_is_empty!81 () Bool)

(assert (=> start!3294 tp_is_empty!81))

(assert (=> start!3294 e!9938))

(assert (=> start!3294 true))

(declare-fun b!18629 () Bool)

(declare-fun res!7856 () Bool)

(assert (=> b!18629 (=> (not res!7856) (not e!9941))))

(declare-fun i!298 () Int)

(declare-fun size!210 (Conc!23) Int)

(assert (=> b!18629 (= res!7856 (<= i!298 (size!210 xs!604)))))

(declare-fun b!18630 () Bool)

(assert (=> b!18630 (= e!9939 tp_is_empty!81)))

(declare-fun b!18631 () Bool)

(declare-fun res!7849 () Bool)

(assert (=> b!18631 (=> res!7849 e!9940)))

(declare-fun xs!611 () Conc!23)

(declare-fun isEmpty!285 (Conc!23) Bool)

(assert (=> b!18631 (= res!7849 (isEmpty!285 xs!611))))

(declare-fun b!18632 () Bool)

(assert (=> b!18632 (= e!9941 e!9940)))

(declare-fun res!7853 () Bool)

(assert (=> b!18632 (=> res!7853 e!9940)))

(assert (=> b!18632 (= res!7853 (not (concInv!21 xs!611)))))

(declare-fun b!18633 () Bool)

(declare-fun res!7846 () Bool)

(assert (=> b!18633 (=> res!7846 e!9940)))

(declare-fun balanced!22 (Conc!23) Bool)

(assert (=> b!18633 (= res!7846 (not (balanced!22 ys!115)))))

(declare-fun b!18634 () Bool)

(declare-fun res!7848 () Bool)

(assert (=> b!18634 (=> (not res!7848) (not e!9941))))

(assert (=> b!18634 (= res!7848 (balanced!22 xs!604))))

(declare-fun b!18635 () Bool)

(assert (=> b!18635 (= e!9942 tp_is_empty!81)))

(declare-fun b!18636 () Bool)

(declare-fun res!7851 () Bool)

(assert (=> b!18636 (=> res!7851 e!9940)))

(assert (=> b!18636 (= res!7851 (not (balanced!22 xs!611)))))

(declare-fun b!18637 () Bool)

(declare-fun res!7857 () Bool)

(assert (=> b!18637 (=> (not res!7857) (not e!9941))))

(declare-fun y!824 () T!1737)

(declare-fun insert!14 (Conc!23 Int T!1737) Conc!23)

(assert (=> b!18637 (= res!7857 (= xs!611 (insert!14 (left!667 xs!604) i!298 y!824)))))

(declare-fun b!18638 () Bool)

(declare-fun res!7852 () Bool)

(assert (=> b!18638 (=> (not res!7852) (not e!9941))))

(assert (=> b!18638 (= res!7852 (and (not (is-Empty!33 xs!604)) (not (is-Single!22 xs!604))))))

(declare-fun b!18639 () Bool)

(declare-fun res!7854 () Bool)

(assert (=> b!18639 (=> (not res!7854) (not e!9941))))

(assert (=> b!18639 (= res!7854 (< i!298 (size!210 (left!667 xs!604))))))

(declare-fun b!18640 () Bool)

(assert (=> b!18640 (= e!9938 tp_is_empty!81)))

(declare-fun b!18641 () Bool)

(declare-fun tp!4376 () Bool)

(declare-fun tp!4379 () Bool)

(assert (=> b!18641 (= e!9942 (and tp!4376 tp!4379))))

(declare-fun b!18642 () Bool)

(assert (=> b!18642 (= e!9940 (isEmpty!285 ys!115))))

(declare-fun b!18643 () Bool)

(declare-fun tp!4377 () Bool)

(declare-fun tp!4378 () Bool)

(assert (=> b!18643 (= e!9939 (and tp!4377 tp!4378))))

(declare-fun b!18644 () Bool)

(declare-fun res!7847 () Bool)

(assert (=> b!18644 (=> (not res!7847) (not e!9941))))

(assert (=> b!18644 (= res!7847 (>= i!298 0))))

(declare-fun b!18645 () Bool)

(declare-fun res!7850 () Bool)

(assert (=> b!18645 (=> (not res!7850) (not e!9941))))

(assert (=> b!18645 (= res!7850 (= ys!115 (right!670 xs!604)))))

(assert (= (and start!3294 res!7855) b!18634))

(assert (= (and b!18634 res!7848) b!18644))

(assert (= (and b!18644 res!7847) b!18629))

(assert (= (and b!18629 res!7856) b!18638))

(assert (= (and b!18638 res!7852) b!18639))

(assert (= (and b!18639 res!7854) b!18637))

(assert (= (and b!18637 res!7857) b!18645))

(assert (= (and b!18645 res!7850) b!18632))

(assert (= (and b!18632 (not res!7853)) b!18636))

(assert (= (and b!18636 (not res!7851)) b!18628))

(assert (= (and b!18628 (not res!7845)) b!18633))

(assert (= (and b!18633 (not res!7846)) b!18631))

(assert (= (and b!18631 (not res!7849)) b!18642))

(assert (= (and start!3294 (is-CC!22 xs!611)) b!18643))

(assert (= (and start!3294 (is-Single!22 xs!611)) b!18630))

(assert (= (and start!3294 (is-CC!22 ys!115)) b!18641))

(assert (= (and start!3294 (is-Single!22 ys!115)) b!18635))

(assert (= (and start!3294 (is-CC!22 xs!604)) b!18627))

(assert (= (and start!3294 (is-Single!22 xs!604)) b!18640))

(declare-fun m!21313 () Bool)

(assert (=> b!18633 m!21313))

(declare-fun m!21315 () Bool)

(assert (=> b!18629 m!21315))

(declare-fun m!21317 () Bool)

(assert (=> b!18637 m!21317))

(declare-fun m!21319 () Bool)

(assert (=> b!18628 m!21319))

(declare-fun m!21321 () Bool)

(assert (=> b!18639 m!21321))

(declare-fun m!21323 () Bool)

(assert (=> b!18634 m!21323))

(declare-fun m!21325 () Bool)

(assert (=> b!18631 m!21325))

(declare-fun m!21327 () Bool)

(assert (=> b!18632 m!21327))

(declare-fun m!21329 () Bool)

(assert (=> b!18636 m!21329))

(declare-fun m!21331 () Bool)

(assert (=> b!18642 m!21331))

(declare-fun m!21333 () Bool)

(assert (=> start!3294 m!21333))

(push 1)

(assert (not b!18641))

(assert (not b!18642))

(assert (not b!18639))

(assert (not b!18628))

(assert (not b!18631))

(assert (not b!18629))

(assert (not b!18636))

(assert (not b!18643))

(assert (not start!3294))

(assert (not b!18634))

(assert (not b!18637))

(assert tp_is_empty!81)

(assert (not b!18633))

(assert (not b!18627))

(assert (not b!18632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!18656 () Bool)

(declare-fun res!7869 () Bool)

(declare-fun e!9948 () Bool)

(assert (=> b!18656 (=> (not res!7869) (not e!9948))))

(assert (=> b!18656 (= res!7869 (balanced!22 (left!667 xs!604)))))

(declare-fun b!18657 () Bool)

(assert (=> b!18657 (= e!9948 (balanced!22 (right!670 xs!604)))))

(declare-fun b!18655 () Bool)

(declare-fun res!7866 () Bool)

(assert (=> b!18655 (=> (not res!7866) (not e!9948))))

(declare-fun level!20 (Conc!23) Int)

(assert (=> b!18655 (= res!7866 (<= (- (level!20 (left!667 xs!604)) (level!20 (right!670 xs!604))) 1))))

(declare-fun b!18654 () Bool)

(declare-fun e!9947 () Bool)

(assert (=> b!18654 (= e!9947 e!9948)))

(declare-fun res!7867 () Bool)

(assert (=> b!18654 (=> (not res!7867) (not e!9948))))

(assert (=> b!18654 (= res!7867 (>= (- (level!20 (left!667 xs!604)) (level!20 (right!670 xs!604))) (- 1)))))

(declare-fun d!12211 () Bool)

(declare-fun res!7868 () Bool)

(assert (=> d!12211 (=> res!7868 e!9947)))

(assert (=> d!12211 (= res!7868 (not (is-CC!22 xs!604)))))

(assert (=> d!12211 (= (balanced!22 xs!604) e!9947)))

(assert (= (and d!12211 (not res!7868)) b!18654))

(assert (= (and b!18654 res!7867) b!18655))

(assert (= (and b!18655 res!7866) b!18656))

(assert (= (and b!18656 res!7869) b!18657))

(declare-fun m!21335 () Bool)

(assert (=> b!18656 m!21335))

(declare-fun m!21337 () Bool)

(assert (=> b!18657 m!21337))

(declare-fun m!21339 () Bool)

(assert (=> b!18655 m!21339))

(declare-fun m!21341 () Bool)

(assert (=> b!18655 m!21341))

(assert (=> b!18654 m!21339))

(assert (=> b!18654 m!21341))

(assert (=> b!18634 d!12211))

(declare-fun b!18668 () Bool)

(declare-fun res!7879 () Bool)

(declare-fun e!9954 () Bool)

(assert (=> b!18668 (=> (not res!7879) (not e!9954))))

(assert (=> b!18668 (= res!7879 (concInv!21 (left!667 ys!115)))))

(declare-fun b!18666 () Bool)

(declare-fun e!9953 () Bool)

(assert (=> b!18666 (= e!9953 e!9954)))

(declare-fun res!7881 () Bool)

(assert (=> b!18666 (=> (not res!7881) (not e!9954))))

(assert (=> b!18666 (= res!7881 (not (isEmpty!285 (left!667 ys!115))))))

(declare-fun d!12213 () Bool)

(declare-fun res!7878 () Bool)

(assert (=> d!12213 (=> res!7878 e!9953)))

(assert (=> d!12213 (= res!7878 (not (is-CC!22 ys!115)))))

(assert (=> d!12213 (= (concInv!21 ys!115) e!9953)))

(declare-fun b!18669 () Bool)

(assert (=> b!18669 (= e!9954 (concInv!21 (right!670 ys!115)))))

(declare-fun b!18667 () Bool)

(declare-fun res!7880 () Bool)

(assert (=> b!18667 (=> (not res!7880) (not e!9954))))

(assert (=> b!18667 (= res!7880 (not (isEmpty!285 (right!670 ys!115))))))

(assert (= (and d!12213 (not res!7878)) b!18666))

(assert (= (and b!18666 res!7881) b!18667))

(assert (= (and b!18667 res!7880) b!18668))

(assert (= (and b!18668 res!7879) b!18669))

(declare-fun m!21343 () Bool)

(assert (=> b!18668 m!21343))

(declare-fun m!21345 () Bool)

(assert (=> b!18666 m!21345))

(declare-fun m!21347 () Bool)

(assert (=> b!18669 m!21347))

(declare-fun m!21349 () Bool)

(assert (=> b!18667 m!21349))

(assert (=> b!18628 d!12213))

(declare-fun b!18672 () Bool)

(declare-fun res!7883 () Bool)

(declare-fun e!9956 () Bool)

(assert (=> b!18672 (=> (not res!7883) (not e!9956))))

(assert (=> b!18672 (= res!7883 (concInv!21 (left!667 xs!604)))))

(declare-fun b!18670 () Bool)

(declare-fun e!9955 () Bool)

(assert (=> b!18670 (= e!9955 e!9956)))

(declare-fun res!7885 () Bool)

(assert (=> b!18670 (=> (not res!7885) (not e!9956))))

(assert (=> b!18670 (= res!7885 (not (isEmpty!285 (left!667 xs!604))))))

(declare-fun d!12215 () Bool)

(declare-fun res!7882 () Bool)

(assert (=> d!12215 (=> res!7882 e!9955)))

(assert (=> d!12215 (= res!7882 (not (is-CC!22 xs!604)))))

(assert (=> d!12215 (= (concInv!21 xs!604) e!9955)))

(declare-fun b!18673 () Bool)

(assert (=> b!18673 (= e!9956 (concInv!21 (right!670 xs!604)))))

(declare-fun b!18671 () Bool)

(declare-fun res!7884 () Bool)

(assert (=> b!18671 (=> (not res!7884) (not e!9956))))

(assert (=> b!18671 (= res!7884 (not (isEmpty!285 (right!670 xs!604))))))

(assert (= (and d!12215 (not res!7882)) b!18670))

(assert (= (and b!18670 res!7885) b!18671))

(assert (= (and b!18671 res!7884) b!18672))

(assert (= (and b!18672 res!7883) b!18673))

(declare-fun m!21351 () Bool)

(assert (=> b!18672 m!21351))

(declare-fun m!21353 () Bool)

(assert (=> b!18670 m!21353))

(declare-fun m!21355 () Bool)

(assert (=> b!18673 m!21355))

(declare-fun m!21357 () Bool)

(assert (=> b!18671 m!21357))

(assert (=> start!3294 d!12215))

(declare-fun d!12217 () Bool)

(assert (=> d!12217 (= (isEmpty!285 ys!115) (= ys!115 Empty!33))))

(assert (=> b!18642 d!12217))

(declare-fun b!18704 () Bool)

(declare-fun e!9971 () Bool)

(declare-fun lt!2790 () Conc!23)

(assert (=> b!18704 (= e!9971 (balanced!22 lt!2790))))

(declare-fun e!9974 () Bool)

(declare-fun b!18705 () Bool)

(declare-datatypes () ((List!331 (Cons!325 (h!239 T!1737) (t!4326 List!331)) (Nil!326))))

(declare-fun toList!91 (Conc!23) List!331)

(declare-fun insertAtIndex!4 (List!331 Int T!1737) List!331)

(assert (=> b!18705 (= e!9974 (= (toList!91 lt!2790) (insertAtIndex!4 (toList!91 (left!667 xs!604)) i!298 y!824)))))

(declare-fun b!18706 () Bool)

(declare-fun res!7913 () Bool)

(assert (=> b!18706 (=> (not res!7913) (not e!9974))))

(declare-fun insertAppendAxiomInst!6 (Conc!23 Int T!1737) Bool)

(assert (=> b!18706 (= res!7913 (insertAppendAxiomInst!6 (left!667 xs!604) i!298 y!824))))

(declare-fun b!18707 () Bool)

(declare-fun e!9975 () Bool)

(assert (=> b!18707 (= e!9975 (balanced!22 (left!667 xs!604)))))

(declare-fun b!18708 () Bool)

(declare-fun e!9973 () Conc!23)

(declare-fun concatNonEmpty!5 (Conc!23 Conc!23) Conc!23)

(assert (=> b!18708 (= e!9973 (concatNonEmpty!5 (insert!14 (left!667 (left!667 xs!604)) i!298 y!824) (right!670 (left!667 xs!604))))))

(declare-fun b!18709 () Bool)

(declare-fun e!9977 () Conc!23)

(assert (=> b!18709 (= e!9977 (ite (= i!298 0) (CC!22 (Single!22 y!824) (left!667 xs!604)) (CC!22 (left!667 xs!604) (Single!22 y!824))))))

(declare-fun b!18710 () Bool)

(declare-fun res!7911 () Bool)

(declare-fun e!9976 () Bool)

(assert (=> b!18710 (=> (not res!7911) (not e!9976))))

(assert (=> b!18710 (= res!7911 (>= i!298 0))))

(declare-fun b!18711 () Bool)

(assert (=> b!18711 (= e!9973 (concatNonEmpty!5 (left!667 (left!667 xs!604)) (insert!14 (right!670 (left!667 xs!604)) (- i!298 (size!210 (left!667 (left!667 xs!604)))) y!824)))))

(declare-fun b!18712 () Bool)

(assert (=> b!18712 (= e!9976 (<= i!298 (size!210 (left!667 xs!604))))))

(declare-fun b!18713 () Bool)

(declare-fun e!9972 () Conc!23)

(assert (=> b!18713 (= e!9972 (Single!22 y!824))))

(declare-fun d!12219 () Bool)

(assert (=> d!12219 e!9974))

(declare-fun res!7905 () Bool)

(assert (=> d!12219 (=> (not res!7905) (not e!9974))))

(assert (=> d!12219 (= res!7905 e!9971)))

(declare-fun res!7909 () Bool)

(assert (=> d!12219 (=> (not res!7909) (not e!9971))))

(assert (=> d!12219 (= res!7909 (concInv!21 lt!2790))))

(assert (=> d!12219 (= lt!2790 e!9972)))

(declare-fun c!4645 () Bool)

(assert (=> d!12219 (= c!4645 (is-Empty!33 (left!667 xs!604)))))

(assert (=> d!12219 e!9976))

(declare-fun res!7907 () Bool)

(assert (=> d!12219 (=> (not res!7907) (not e!9976))))

(assert (=> d!12219 (= res!7907 e!9975)))

(declare-fun res!7906 () Bool)

(assert (=> d!12219 (=> (not res!7906) (not e!9975))))

(assert (=> d!12219 (= res!7906 (concInv!21 (left!667 xs!604)))))

(assert (=> d!12219 (= (insert!14 (left!667 xs!604) i!298 y!824) lt!2790)))

(declare-fun b!18714 () Bool)

(assert (=> b!18714 (= e!9972 e!9977)))

(declare-fun c!4644 () Bool)

(assert (=> b!18714 (= c!4644 (is-Single!22 (left!667 xs!604)))))

(declare-fun b!18715 () Bool)

(declare-fun res!7912 () Bool)

(assert (=> b!18715 (=> (not res!7912) (not e!9974))))

(assert (=> b!18715 (= res!7912 (<= (- (level!20 lt!2790) (level!20 (left!667 xs!604))) 1))))

(declare-fun b!18716 () Bool)

(declare-fun res!7910 () Bool)

(assert (=> b!18716 (=> (not res!7910) (not e!9974))))

(assert (=> b!18716 (= res!7910 (>= (level!20 lt!2790) (level!20 (left!667 xs!604))))))

(declare-fun b!18717 () Bool)

(assert (=> b!18717 (= e!9977 e!9973)))

(declare-fun c!4643 () Bool)

(assert (=> b!18717 (= c!4643 (< i!298 (size!210 (left!667 (left!667 xs!604)))))))

(declare-fun b!18718 () Bool)

(declare-fun res!7908 () Bool)

(assert (=> b!18718 (=> (not res!7908) (not e!9974))))

(assert (=> b!18718 (= res!7908 (not (isEmpty!285 lt!2790)))))

(assert (= (and d!12219 res!7906) b!18707))

(assert (= (and d!12219 res!7907) b!18710))

(assert (= (and b!18710 res!7911) b!18712))

(assert (= (and b!18717 c!4643) b!18708))

(assert (= (and b!18717 (not c!4643)) b!18711))

(assert (= (and b!18714 c!4644) b!18709))

(assert (= (and b!18714 (not c!4644)) b!18717))

(assert (= (and d!12219 c!4645) b!18713))

(assert (= (and d!12219 (not c!4645)) b!18714))

(assert (= (and d!12219 res!7909) b!18704))

(assert (= (and d!12219 res!7905) b!18715))

(assert (= (and b!18715 res!7912) b!18716))

(assert (= (and b!18716 res!7910) b!18718))

(assert (= (and b!18718 res!7908) b!18706))

(assert (= (and b!18706 res!7913) b!18705))

(declare-fun m!21359 () Bool)

(assert (=> b!18715 m!21359))

(assert (=> b!18715 m!21339))

(declare-fun m!21361 () Bool)

(assert (=> b!18711 m!21361))

(declare-fun m!21363 () Bool)

(assert (=> b!18711 m!21363))

(assert (=> b!18711 m!21363))

(declare-fun m!21365 () Bool)

(assert (=> b!18711 m!21365))

(declare-fun m!21367 () Bool)

(assert (=> b!18704 m!21367))

(declare-fun m!21369 () Bool)

(assert (=> b!18706 m!21369))

(declare-fun m!21371 () Bool)

(assert (=> b!18708 m!21371))

(assert (=> b!18708 m!21371))

(declare-fun m!21373 () Bool)

(assert (=> b!18708 m!21373))

(assert (=> b!18717 m!21361))

(declare-fun m!21375 () Bool)

(assert (=> b!18705 m!21375))

(declare-fun m!21377 () Bool)

(assert (=> b!18705 m!21377))

(assert (=> b!18705 m!21377))

(declare-fun m!21379 () Bool)

(assert (=> b!18705 m!21379))

(assert (=> b!18716 m!21359))

(assert (=> b!18716 m!21339))

(assert (=> b!18712 m!21321))

(declare-fun m!21381 () Bool)

(assert (=> d!12219 m!21381))

(assert (=> d!12219 m!21351))

(assert (=> b!18707 m!21335))

(declare-fun m!21383 () Bool)

(assert (=> b!18718 m!21383))

(assert (=> b!18637 d!12219))

(declare-fun b!18728 () Bool)

(declare-fun e!9983 () Int)

(declare-fun e!9982 () Int)

(assert (=> b!18728 (= e!9983 e!9982)))

(declare-fun c!4651 () Bool)

(assert (=> b!18728 (= c!4651 (is-Single!22 (left!667 xs!604)))))

(declare-fun b!18729 () Bool)

(assert (=> b!18729 (= e!9982 1)))

(declare-fun b!18730 () Bool)

(assert (=> b!18730 (= e!9982 (+ (size!210 (left!667 (left!667 xs!604))) (size!210 (right!670 (left!667 xs!604)))))))

(declare-fun d!12221 () Bool)

(declare-fun lt!2793 () Int)

(assert (=> d!12221 (>= lt!2793 0)))

(assert (=> d!12221 (= lt!2793 e!9983)))

(declare-fun c!4650 () Bool)

(assert (=> d!12221 (= c!4650 (is-Empty!33 (left!667 xs!604)))))

(assert (=> d!12221 (= (size!210 (left!667 xs!604)) lt!2793)))

(declare-fun b!18727 () Bool)

(assert (=> b!18727 (= e!9983 0)))

(assert (= (and b!18728 c!4651) b!18729))

(assert (= (and b!18728 (not c!4651)) b!18730))

(assert (= (and d!12221 c!4650) b!18727))

(assert (= (and d!12221 (not c!4650)) b!18728))

(assert (=> b!18730 m!21361))

(declare-fun m!21385 () Bool)

(assert (=> b!18730 m!21385))

(assert (=> b!18639 d!12221))

(declare-fun b!18733 () Bool)

(declare-fun res!7917 () Bool)

(declare-fun e!9985 () Bool)

(assert (=> b!18733 (=> (not res!7917) (not e!9985))))

(assert (=> b!18733 (= res!7917 (balanced!22 (left!667 xs!611)))))

(declare-fun b!18734 () Bool)

(assert (=> b!18734 (= e!9985 (balanced!22 (right!670 xs!611)))))

(declare-fun b!18732 () Bool)

(declare-fun res!7914 () Bool)

(assert (=> b!18732 (=> (not res!7914) (not e!9985))))

(assert (=> b!18732 (= res!7914 (<= (- (level!20 (left!667 xs!611)) (level!20 (right!670 xs!611))) 1))))

(declare-fun b!18731 () Bool)

(declare-fun e!9984 () Bool)

(assert (=> b!18731 (= e!9984 e!9985)))

(declare-fun res!7915 () Bool)

(assert (=> b!18731 (=> (not res!7915) (not e!9985))))

(assert (=> b!18731 (= res!7915 (>= (- (level!20 (left!667 xs!611)) (level!20 (right!670 xs!611))) (- 1)))))

(declare-fun d!12223 () Bool)

(declare-fun res!7916 () Bool)

(assert (=> d!12223 (=> res!7916 e!9984)))

(assert (=> d!12223 (= res!7916 (not (is-CC!22 xs!611)))))

(assert (=> d!12223 (= (balanced!22 xs!611) e!9984)))

(assert (= (and d!12223 (not res!7916)) b!18731))

(assert (= (and b!18731 res!7915) b!18732))

(assert (= (and b!18732 res!7914) b!18733))

(assert (= (and b!18733 res!7917) b!18734))

(declare-fun m!21387 () Bool)

(assert (=> b!18733 m!21387))

(declare-fun m!21389 () Bool)

(assert (=> b!18734 m!21389))

(declare-fun m!21391 () Bool)

(assert (=> b!18732 m!21391))

(declare-fun m!21393 () Bool)

(assert (=> b!18732 m!21393))

(assert (=> b!18731 m!21391))

(assert (=> b!18731 m!21393))

(assert (=> b!18636 d!12223))

(declare-fun b!18737 () Bool)

(declare-fun res!7919 () Bool)

(declare-fun e!9987 () Bool)

(assert (=> b!18737 (=> (not res!7919) (not e!9987))))

(assert (=> b!18737 (= res!7919 (concInv!21 (left!667 xs!611)))))

(declare-fun b!18735 () Bool)

(declare-fun e!9986 () Bool)

(assert (=> b!18735 (= e!9986 e!9987)))

(declare-fun res!7921 () Bool)

(assert (=> b!18735 (=> (not res!7921) (not e!9987))))

(assert (=> b!18735 (= res!7921 (not (isEmpty!285 (left!667 xs!611))))))

(declare-fun d!12225 () Bool)

(declare-fun res!7918 () Bool)

(assert (=> d!12225 (=> res!7918 e!9986)))

(assert (=> d!12225 (= res!7918 (not (is-CC!22 xs!611)))))

(assert (=> d!12225 (= (concInv!21 xs!611) e!9986)))

(declare-fun b!18738 () Bool)

(assert (=> b!18738 (= e!9987 (concInv!21 (right!670 xs!611)))))

(declare-fun b!18736 () Bool)

(declare-fun res!7920 () Bool)

(assert (=> b!18736 (=> (not res!7920) (not e!9987))))

(assert (=> b!18736 (= res!7920 (not (isEmpty!285 (right!670 xs!611))))))

(assert (= (and d!12225 (not res!7918)) b!18735))

(assert (= (and b!18735 res!7921) b!18736))

(assert (= (and b!18736 res!7920) b!18737))

(assert (= (and b!18737 res!7919) b!18738))

(declare-fun m!21395 () Bool)

(assert (=> b!18737 m!21395))

(declare-fun m!21397 () Bool)

(assert (=> b!18735 m!21397))

(declare-fun m!21399 () Bool)

(assert (=> b!18738 m!21399))

(declare-fun m!21401 () Bool)

(assert (=> b!18736 m!21401))

(assert (=> b!18632 d!12225))

(declare-fun b!18740 () Bool)

(declare-fun e!9989 () Int)

(declare-fun e!9988 () Int)

(assert (=> b!18740 (= e!9989 e!9988)))

(declare-fun c!4653 () Bool)

(assert (=> b!18740 (= c!4653 (is-Single!22 xs!604))))

(declare-fun b!18741 () Bool)

(assert (=> b!18741 (= e!9988 1)))

(declare-fun b!18742 () Bool)

(assert (=> b!18742 (= e!9988 (+ (size!210 (left!667 xs!604)) (size!210 (right!670 xs!604))))))

(declare-fun d!12227 () Bool)

(declare-fun lt!2794 () Int)

(assert (=> d!12227 (>= lt!2794 0)))

(assert (=> d!12227 (= lt!2794 e!9989)))

(declare-fun c!4652 () Bool)

(assert (=> d!12227 (= c!4652 (is-Empty!33 xs!604))))

(assert (=> d!12227 (= (size!210 xs!604) lt!2794)))

(declare-fun b!18739 () Bool)

(assert (=> b!18739 (= e!9989 0)))

(assert (= (and b!18740 c!4653) b!18741))

(assert (= (and b!18740 (not c!4653)) b!18742))

(assert (= (and d!12227 c!4652) b!18739))

(assert (= (and d!12227 (not c!4652)) b!18740))

(assert (=> b!18742 m!21321))

(declare-fun m!21403 () Bool)

(assert (=> b!18742 m!21403))

(assert (=> b!18629 d!12227))

(declare-fun b!18745 () Bool)

(declare-fun res!7925 () Bool)

(declare-fun e!9991 () Bool)

(assert (=> b!18745 (=> (not res!7925) (not e!9991))))

(assert (=> b!18745 (= res!7925 (balanced!22 (left!667 ys!115)))))

(declare-fun b!18746 () Bool)

(assert (=> b!18746 (= e!9991 (balanced!22 (right!670 ys!115)))))

(declare-fun b!18744 () Bool)

(declare-fun res!7922 () Bool)

(assert (=> b!18744 (=> (not res!7922) (not e!9991))))

(assert (=> b!18744 (= res!7922 (<= (- (level!20 (left!667 ys!115)) (level!20 (right!670 ys!115))) 1))))

(declare-fun b!18743 () Bool)

(declare-fun e!9990 () Bool)

(assert (=> b!18743 (= e!9990 e!9991)))

(declare-fun res!7923 () Bool)

(assert (=> b!18743 (=> (not res!7923) (not e!9991))))

(assert (=> b!18743 (= res!7923 (>= (- (level!20 (left!667 ys!115)) (level!20 (right!670 ys!115))) (- 1)))))

(declare-fun d!12229 () Bool)

(declare-fun res!7924 () Bool)

(assert (=> d!12229 (=> res!7924 e!9990)))

(assert (=> d!12229 (= res!7924 (not (is-CC!22 ys!115)))))

(assert (=> d!12229 (= (balanced!22 ys!115) e!9990)))

(assert (= (and d!12229 (not res!7924)) b!18743))

(assert (= (and b!18743 res!7923) b!18744))

(assert (= (and b!18744 res!7922) b!18745))

(assert (= (and b!18745 res!7925) b!18746))

(declare-fun m!21405 () Bool)

(assert (=> b!18745 m!21405))

(declare-fun m!21407 () Bool)

(assert (=> b!18746 m!21407))

(declare-fun m!21409 () Bool)

(assert (=> b!18744 m!21409))

(declare-fun m!21411 () Bool)

(assert (=> b!18744 m!21411))

(assert (=> b!18743 m!21409))

(assert (=> b!18743 m!21411))

(assert (=> b!18633 d!12229))

(declare-fun d!12231 () Bool)

(assert (=> d!12231 (= (isEmpty!285 xs!611) (= xs!611 Empty!33))))

(assert (=> b!18631 d!12231))

(declare-fun b!18753 () Bool)

(declare-fun e!9994 () Bool)

(declare-fun tp!4385 () Bool)

(declare-fun tp!4386 () Bool)

(assert (=> b!18753 (= e!9994 (and tp!4385 tp!4386))))

(declare-fun b!18754 () Bool)

(assert (=> b!18754 (= e!9994 tp_is_empty!81)))

(assert (=> b!18627 (= tp!4380 e!9994)))

(assert (= (and b!18627 (is-CC!22 (left!667 xs!604))) b!18753))

(assert (= (and b!18627 (is-Single!22 (left!667 xs!604))) b!18754))

(declare-fun b!18755 () Bool)

(declare-fun e!9995 () Bool)

(declare-fun tp!4387 () Bool)

(declare-fun tp!4388 () Bool)

(assert (=> b!18755 (= e!9995 (and tp!4387 tp!4388))))

(declare-fun b!18756 () Bool)

(assert (=> b!18756 (= e!9995 tp_is_empty!81)))

(assert (=> b!18627 (= tp!4375 e!9995)))

(assert (= (and b!18627 (is-CC!22 (right!670 xs!604))) b!18755))

(assert (= (and b!18627 (is-Single!22 (right!670 xs!604))) b!18756))

(declare-fun b!18757 () Bool)

(declare-fun e!9996 () Bool)

(declare-fun tp!4389 () Bool)

(declare-fun tp!4390 () Bool)

(assert (=> b!18757 (= e!9996 (and tp!4389 tp!4390))))

(declare-fun b!18758 () Bool)

(assert (=> b!18758 (= e!9996 tp_is_empty!81)))

(assert (=> b!18641 (= tp!4376 e!9996)))

(assert (= (and b!18641 (is-CC!22 (left!667 ys!115))) b!18757))

(assert (= (and b!18641 (is-Single!22 (left!667 ys!115))) b!18758))

(declare-fun b!18759 () Bool)

(declare-fun e!9997 () Bool)

(declare-fun tp!4391 () Bool)

(declare-fun tp!4392 () Bool)

(assert (=> b!18759 (= e!9997 (and tp!4391 tp!4392))))

(declare-fun b!18760 () Bool)

(assert (=> b!18760 (= e!9997 tp_is_empty!81)))

(assert (=> b!18641 (= tp!4379 e!9997)))

(assert (= (and b!18641 (is-CC!22 (right!670 ys!115))) b!18759))

(assert (= (and b!18641 (is-Single!22 (right!670 ys!115))) b!18760))

(declare-fun b!18761 () Bool)

(declare-fun e!9998 () Bool)

(declare-fun tp!4393 () Bool)

(declare-fun tp!4394 () Bool)

(assert (=> b!18761 (= e!9998 (and tp!4393 tp!4394))))

(declare-fun b!18762 () Bool)

(assert (=> b!18762 (= e!9998 tp_is_empty!81)))

(assert (=> b!18643 (= tp!4377 e!9998)))

(assert (= (and b!18643 (is-CC!22 (left!667 xs!611))) b!18761))

(assert (= (and b!18643 (is-Single!22 (left!667 xs!611))) b!18762))

(declare-fun b!18763 () Bool)

(declare-fun e!9999 () Bool)

(declare-fun tp!4395 () Bool)

(declare-fun tp!4396 () Bool)

(assert (=> b!18763 (= e!9999 (and tp!4395 tp!4396))))

(declare-fun b!18764 () Bool)

(assert (=> b!18764 (= e!9999 tp_is_empty!81)))

(assert (=> b!18643 (= tp!4378 e!9999)))

(assert (= (and b!18643 (is-CC!22 (right!670 xs!611))) b!18763))

(assert (= (and b!18643 (is-Single!22 (right!670 xs!611))) b!18764))

(push 1)

(assert (not d!12219))

(assert (not b!18669))

(assert (not b!18654))

(assert (not b!18708))

(assert (not b!18712))

(assert (not b!18716))

(assert (not b!18731))

(assert (not b!18704))

(assert (not b!18707))

(assert (not b!18745))

(assert (not b!18738))

(assert (not b!18734))

(assert (not b!18737))

(assert (not b!18733))

(assert (not b!18705))

(assert (not b!18763))

(assert (not b!18655))

(assert (not b!18673))

(assert (not b!18753))

(assert (not b!18715))

(assert (not b!18735))

(assert (not b!18757))

(assert (not b!18744))

(assert (not b!18656))

(assert (not b!18730))

(assert (not b!18666))

(assert (not b!18657))

(assert (not b!18746))

(assert (not b!18706))

(assert (not b!18743))

(assert (not b!18671))

(assert tp_is_empty!81)

(assert (not b!18742))

(assert (not b!18672))

(assert (not b!18711))

(assert (not b!18755))

(assert (not b!18736))

(assert (not b!18732))

(assert (not b!18759))

(assert (not b!18670))

(assert (not b!18718))

(assert (not b!18667))

(assert (not b!18761))

(assert (not b!18717))

(assert (not b!18668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

