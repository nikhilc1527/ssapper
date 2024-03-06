; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3910 () Bool)

(assert start!3910)

(declare-fun b!27847 () Bool)

(declare-fun res!12738 () Bool)

(declare-fun e!14245 () Bool)

(assert (=> b!27847 (=> (not res!12738) (not e!14245))))

(declare-datatypes () ((T!1829 (T!1830 (val!87 Int)))))

(declare-datatypes () ((Conc!64 (CC!63 (left!708 Conc!64) (right!711 Conc!64)) (Single!63 (x!8933 T!1829)) (Empty!74))))

(declare-fun xs!533 () Conc!64)

(declare-fun balanced!59 (Conc!64) Bool)

(assert (=> b!27847 (= res!12738 (balanced!59 xs!533))))

(declare-fun b!27848 () Bool)

(declare-fun res!12725 () Bool)

(assert (=> b!27848 (=> (not res!12725) (not e!14245))))

(declare-fun res!5536 () Conc!64)

(declare-fun nrr!4 () Conc!64)

(assert (=> b!27848 (= res!12725 (= res!5536 (CC!63 (CC!63 (left!708 xs!533) (left!708 (right!711 xs!533))) nrr!4)))))

(declare-fun b!27849 () Bool)

(declare-fun e!14243 () Bool)

(declare-fun ys!77 () Conc!64)

(declare-fun concatCorrectness!13 (Conc!64 Conc!64 Conc!64) Bool)

(assert (=> b!27849 (= e!14243 (concatCorrectness!13 res!5536 xs!533 ys!77))))

(declare-fun b!27850 () Bool)

(declare-fun e!14247 () Bool)

(declare-fun tp_is_empty!173 () Bool)

(assert (=> b!27850 (= e!14247 tp_is_empty!173)))

(declare-fun b!27851 () Bool)

(declare-fun e!14242 () Bool)

(assert (=> b!27851 (= e!14242 tp_is_empty!173)))

(declare-fun b!27852 () Bool)

(declare-fun res!12729 () Bool)

(assert (=> b!27852 (=> (not res!12729) (not e!14245))))

(declare-fun concInv!58 (Conc!64) Bool)

(assert (=> b!27852 (= res!12729 (concInv!58 ys!77))))

(declare-fun b!27853 () Bool)

(declare-fun res!12724 () Bool)

(assert (=> b!27853 (=> (not res!12724) (not e!14245))))

(declare-fun level!52 (Conc!64) Int)

(assert (=> b!27853 (= res!12724 (< (level!52 (left!708 xs!533)) (level!52 (right!711 xs!533))))))

(declare-fun b!27854 () Bool)

(declare-fun res!12722 () Bool)

(assert (=> b!27854 (=> (not res!12722) (not e!14243))))

(declare-fun appendAssocInst!13 (Conc!64 Conc!64) Bool)

(assert (=> b!27854 (= res!12722 (appendAssocInst!13 xs!533 ys!77))))

(declare-fun b!27855 () Bool)

(declare-fun res!12735 () Bool)

(assert (=> b!27855 (=> (not res!12735) (not e!14243))))

(assert (=> b!27855 (= res!12735 (concInv!58 res!5536))))

(declare-fun b!27856 () Bool)

(declare-fun res!12732 () Bool)

(assert (=> b!27856 (=> (not res!12732) (not e!14243))))

(assert (=> b!27856 (= res!12732 (balanced!59 res!5536))))

(declare-fun b!27857 () Bool)

(assert (=> b!27857 (= e!14245 (not e!14243))))

(declare-fun res!12726 () Bool)

(assert (=> b!27857 (=> (not res!12726) (not e!14243))))

(declare-fun lt!4743 () Int)

(declare-fun lt!4741 () Int)

(declare-fun lt!4739 () Int)

(assert (=> b!27857 (= res!12726 (<= lt!4739 (+ (ite (>= lt!4743 lt!4741) lt!4743 lt!4741) 1)))))

(assert (=> b!27857 (= lt!4741 (level!52 ys!77))))

(assert (=> b!27857 (= lt!4743 (level!52 xs!533))))

(assert (=> b!27857 (= lt!4739 (level!52 res!5536))))

(assert (=> b!27857 (is-CC!63 res!5536)))

(declare-fun b!27858 () Bool)

(declare-fun tp!6000 () Bool)

(declare-fun tp!6002 () Bool)

(assert (=> b!27858 (= e!14247 (and tp!6000 tp!6002))))

(declare-fun b!27859 () Bool)

(declare-fun res!12736 () Bool)

(assert (=> b!27859 (=> (not res!12736) (not e!14245))))

(declare-fun isEmpty!320 (Conc!64) Bool)

(assert (=> b!27859 (= res!12736 (not (isEmpty!320 ys!77)))))

(declare-fun b!27860 () Bool)

(declare-fun res!12737 () Bool)

(assert (=> b!27860 (=> (not res!12737) (not e!14243))))

(declare-fun lt!4744 () Int)

(declare-fun lt!4742 () Int)

(declare-fun lt!4740 () Int)

(assert (=> b!27860 (= res!12737 (>= lt!4744 (ite (>= lt!4740 lt!4742) lt!4740 lt!4742)))))

(assert (=> b!27860 (= lt!4742 (level!52 ys!77))))

(assert (=> b!27860 (= lt!4740 (level!52 xs!533))))

(assert (=> b!27860 (= lt!4744 (level!52 res!5536))))

(declare-fun b!27861 () Bool)

(declare-fun e!14244 () Bool)

(declare-fun tp!6003 () Bool)

(declare-fun tp!5997 () Bool)

(assert (=> b!27861 (= e!14244 (and tp!6003 tp!5997))))

(declare-fun b!27862 () Bool)

(declare-fun tp!5998 () Bool)

(declare-fun tp!5996 () Bool)

(assert (=> b!27862 (= e!14242 (and tp!5998 tp!5996))))

(declare-fun b!27863 () Bool)

(declare-fun res!12730 () Bool)

(assert (=> b!27863 (=> (not res!12730) (not e!14245))))

(declare-fun diff!6 () Int)

(assert (=> b!27863 (= res!12730 (and (or (< diff!6 (- 1)) (> diff!6 1)) (< diff!6 (- 1))))))

(declare-fun b!27864 () Bool)

(assert (=> b!27864 (= e!14244 tp_is_empty!173)))

(declare-fun res!12723 () Bool)

(assert (=> start!3910 (=> (not res!12723) (not e!14245))))

(assert (=> start!3910 (= res!12723 (concInv!58 xs!533))))

(assert (=> start!3910 e!14245))

(assert (=> start!3910 true))

(assert (=> start!3910 e!14247))

(declare-fun e!14246 () Bool)

(assert (=> start!3910 e!14246))

(assert (=> start!3910 e!14242))

(assert (=> start!3910 e!14244))

(declare-fun b!27865 () Bool)

(declare-fun tp!6001 () Bool)

(declare-fun tp!5999 () Bool)

(assert (=> b!27865 (= e!14246 (and tp!6001 tp!5999))))

(declare-fun b!27866 () Bool)

(declare-fun res!12731 () Bool)

(assert (=> b!27866 (=> (not res!12731) (not e!14245))))

(assert (=> b!27866 (= res!12731 (= diff!6 (- (level!52 ys!77) (level!52 xs!533))))))

(declare-fun b!27867 () Bool)

(declare-fun res!12733 () Bool)

(assert (=> b!27867 (=> (not res!12733) (not e!14245))))

(assert (=> b!27867 (= res!12733 (not (= (level!52 nrr!4) (- (level!52 xs!533) 3))))))

(declare-fun b!27868 () Bool)

(declare-fun res!12734 () Bool)

(assert (=> b!27868 (=> (not res!12734) (not e!14245))))

(assert (=> b!27868 (= res!12734 (not (isEmpty!320 xs!533)))))

(declare-fun b!27869 () Bool)

(declare-fun res!12728 () Bool)

(assert (=> b!27869 (=> (not res!12728) (not e!14245))))

(assert (=> b!27869 (= res!12728 (balanced!59 ys!77))))

(declare-fun b!27870 () Bool)

(assert (=> b!27870 (= e!14246 tp_is_empty!173)))

(declare-fun b!27871 () Bool)

(declare-fun res!12727 () Bool)

(assert (=> b!27871 (=> (not res!12727) (not e!14245))))

(declare-fun concatNonEmpty!16 (Conc!64 Conc!64) Conc!64)

(assert (=> b!27871 (= res!12727 (= nrr!4 (concatNonEmpty!16 (right!711 (right!711 xs!533)) ys!77)))))

(assert (= (and start!3910 res!12723) b!27847))

(assert (= (and b!27847 res!12738) b!27852))

(assert (= (and b!27852 res!12729) b!27869))

(assert (= (and b!27869 res!12728) b!27868))

(assert (= (and b!27868 res!12734) b!27859))

(assert (= (and b!27859 res!12736) b!27866))

(assert (= (and b!27866 res!12731) b!27863))

(assert (= (and b!27863 res!12730) b!27853))

(assert (= (and b!27853 res!12724) b!27871))

(assert (= (and b!27871 res!12727) b!27867))

(assert (= (and b!27867 res!12733) b!27848))

(assert (= (and b!27848 res!12725) b!27857))

(assert (= (and b!27857 res!12726) b!27860))

(assert (= (and b!27860 res!12737) b!27855))

(assert (= (and b!27855 res!12735) b!27856))

(assert (= (and b!27856 res!12732) b!27854))

(assert (= (and b!27854 res!12722) b!27849))

(assert (= (and start!3910 (is-CC!63 res!5536)) b!27858))

(assert (= (and start!3910 (is-Single!63 res!5536)) b!27850))

(assert (= (and start!3910 (is-CC!63 nrr!4)) b!27865))

(assert (= (and start!3910 (is-Single!63 nrr!4)) b!27870))

(assert (= (and start!3910 (is-CC!63 ys!77)) b!27862))

(assert (= (and start!3910 (is-Single!63 ys!77)) b!27851))

(assert (= (and start!3910 (is-CC!63 xs!533)) b!27861))

(assert (= (and start!3910 (is-Single!63 xs!533)) b!27864))

(declare-fun m!29297 () Bool)

(assert (=> b!27852 m!29297))

(declare-fun m!29299 () Bool)

(assert (=> b!27859 m!29299))

(declare-fun m!29301 () Bool)

(assert (=> b!27871 m!29301))

(declare-fun m!29303 () Bool)

(assert (=> b!27867 m!29303))

(declare-fun m!29305 () Bool)

(assert (=> b!27867 m!29305))

(declare-fun m!29307 () Bool)

(assert (=> b!27854 m!29307))

(declare-fun m!29309 () Bool)

(assert (=> b!27868 m!29309))

(declare-fun m!29311 () Bool)

(assert (=> b!27849 m!29311))

(declare-fun m!29313 () Bool)

(assert (=> b!27855 m!29313))

(declare-fun m!29315 () Bool)

(assert (=> start!3910 m!29315))

(declare-fun m!29317 () Bool)

(assert (=> b!27856 m!29317))

(declare-fun m!29319 () Bool)

(assert (=> b!27869 m!29319))

(declare-fun m!29321 () Bool)

(assert (=> b!27860 m!29321))

(assert (=> b!27860 m!29305))

(declare-fun m!29323 () Bool)

(assert (=> b!27860 m!29323))

(declare-fun m!29325 () Bool)

(assert (=> b!27847 m!29325))

(assert (=> b!27866 m!29321))

(assert (=> b!27866 m!29305))

(declare-fun m!29327 () Bool)

(assert (=> b!27853 m!29327))

(declare-fun m!29329 () Bool)

(assert (=> b!27853 m!29329))

(assert (=> b!27857 m!29321))

(assert (=> b!27857 m!29305))

(assert (=> b!27857 m!29323))

(push 1)

(assert (not b!27866))

(assert (not b!27869))

(assert (not b!27867))

(assert (not b!27854))

(assert (not b!27853))

(assert (not b!27861))

(assert (not b!27860))

(assert (not b!27849))

(assert tp_is_empty!173)

(assert (not b!27856))

(assert (not b!27852))

(assert (not b!27865))

(assert (not b!27868))

(assert (not b!27871))

(assert (not b!27857))

(assert (not b!27858))

(assert (not b!27862))

(assert (not b!27847))

(assert (not b!27859))

(assert (not b!27855))

(assert (not start!3910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!27877 () Bool)

(declare-fun e!14250 () Int)

(declare-fun lt!4751 () Int)

(declare-fun lt!4753 () Int)

(assert (=> b!27877 (= e!14250 (+ 1 (ite (>= lt!4751 lt!4753) lt!4751 lt!4753)))))

(assert (=> b!27877 (= lt!4753 (level!52 (right!711 ys!77)))))

(assert (=> b!27877 (= lt!4751 (level!52 (left!708 ys!77)))))

(declare-fun d!14751 () Bool)

(declare-fun lt!4752 () Int)

(assert (=> d!14751 (>= lt!4752 0)))

(assert (=> d!14751 (= lt!4752 e!14250)))

(declare-fun c!6127 () Bool)

(assert (=> d!14751 (= c!6127 (or (is-Empty!74 ys!77) (is-Single!63 ys!77)))))

(assert (=> d!14751 (= (level!52 ys!77) lt!4752)))

(declare-fun b!27876 () Bool)

(assert (=> b!27876 (= e!14250 0)))

(assert (= (and d!14751 c!6127) b!27876))

(assert (= (and d!14751 (not c!6127)) b!27877))

(declare-fun m!29331 () Bool)

(assert (=> b!27877 m!29331))

(declare-fun m!29333 () Bool)

(assert (=> b!27877 m!29333))

(assert (=> b!27866 d!14751))

(declare-fun b!27879 () Bool)

(declare-fun e!14251 () Int)

(declare-fun lt!4754 () Int)

(declare-fun lt!4756 () Int)

(assert (=> b!27879 (= e!14251 (+ 1 (ite (>= lt!4754 lt!4756) lt!4754 lt!4756)))))

(assert (=> b!27879 (= lt!4756 (level!52 (right!711 xs!533)))))

(assert (=> b!27879 (= lt!4754 (level!52 (left!708 xs!533)))))

(declare-fun d!14753 () Bool)

(declare-fun lt!4755 () Int)

(assert (=> d!14753 (>= lt!4755 0)))

(assert (=> d!14753 (= lt!4755 e!14251)))

(declare-fun c!6128 () Bool)

(assert (=> d!14753 (= c!6128 (or (is-Empty!74 xs!533) (is-Single!63 xs!533)))))

(assert (=> d!14753 (= (level!52 xs!533) lt!4755)))

(declare-fun b!27878 () Bool)

(assert (=> b!27878 (= e!14251 0)))

(assert (= (and d!14753 c!6128) b!27878))

(assert (= (and d!14753 (not c!6128)) b!27879))

(assert (=> b!27879 m!29329))

(assert (=> b!27879 m!29327))

(assert (=> b!27866 d!14753))

(declare-fun b!27881 () Bool)

(declare-fun e!14252 () Int)

(declare-fun lt!4757 () Int)

(declare-fun lt!4759 () Int)

(assert (=> b!27881 (= e!14252 (+ 1 (ite (>= lt!4757 lt!4759) lt!4757 lt!4759)))))

(assert (=> b!27881 (= lt!4759 (level!52 (right!711 nrr!4)))))

(assert (=> b!27881 (= lt!4757 (level!52 (left!708 nrr!4)))))

(declare-fun d!14755 () Bool)

(declare-fun lt!4758 () Int)

(assert (=> d!14755 (>= lt!4758 0)))

(assert (=> d!14755 (= lt!4758 e!14252)))

(declare-fun c!6129 () Bool)

(assert (=> d!14755 (= c!6129 (or (is-Empty!74 nrr!4) (is-Single!63 nrr!4)))))

(assert (=> d!14755 (= (level!52 nrr!4) lt!4758)))

(declare-fun b!27880 () Bool)

(assert (=> b!27880 (= e!14252 0)))

(assert (= (and d!14755 c!6129) b!27880))

(assert (= (and d!14755 (not c!6129)) b!27881))

(declare-fun m!29335 () Bool)

(assert (=> b!27881 m!29335))

(declare-fun m!29337 () Bool)

(assert (=> b!27881 m!29337))

(assert (=> b!27867 d!14755))

(assert (=> b!27867 d!14753))

(declare-fun b!27883 () Bool)

(declare-fun e!14253 () Int)

(declare-fun lt!4760 () Int)

(declare-fun lt!4762 () Int)

(assert (=> b!27883 (= e!14253 (+ 1 (ite (>= lt!4760 lt!4762) lt!4760 lt!4762)))))

(assert (=> b!27883 (= lt!4762 (level!52 (right!711 (left!708 xs!533))))))

(assert (=> b!27883 (= lt!4760 (level!52 (left!708 (left!708 xs!533))))))

(declare-fun d!14757 () Bool)

(declare-fun lt!4761 () Int)

(assert (=> d!14757 (>= lt!4761 0)))

(assert (=> d!14757 (= lt!4761 e!14253)))

(declare-fun c!6130 () Bool)

(assert (=> d!14757 (= c!6130 (or (is-Empty!74 (left!708 xs!533)) (is-Single!63 (left!708 xs!533))))))

(assert (=> d!14757 (= (level!52 (left!708 xs!533)) lt!4761)))

(declare-fun b!27882 () Bool)

(assert (=> b!27882 (= e!14253 0)))

(assert (= (and d!14757 c!6130) b!27882))

(assert (= (and d!14757 (not c!6130)) b!27883))

(declare-fun m!29339 () Bool)

(assert (=> b!27883 m!29339))

(declare-fun m!29341 () Bool)

(assert (=> b!27883 m!29341))

(assert (=> b!27853 d!14757))

(declare-fun b!27885 () Bool)

(declare-fun e!14254 () Int)

(declare-fun lt!4763 () Int)

(declare-fun lt!4765 () Int)

(assert (=> b!27885 (= e!14254 (+ 1 (ite (>= lt!4763 lt!4765) lt!4763 lt!4765)))))

(assert (=> b!27885 (= lt!4765 (level!52 (right!711 (right!711 xs!533))))))

(assert (=> b!27885 (= lt!4763 (level!52 (left!708 (right!711 xs!533))))))

(declare-fun d!14759 () Bool)

(declare-fun lt!4764 () Int)

(assert (=> d!14759 (>= lt!4764 0)))

(assert (=> d!14759 (= lt!4764 e!14254)))

(declare-fun c!6131 () Bool)

(assert (=> d!14759 (= c!6131 (or (is-Empty!74 (right!711 xs!533)) (is-Single!63 (right!711 xs!533))))))

(assert (=> d!14759 (= (level!52 (right!711 xs!533)) lt!4764)))

(declare-fun b!27884 () Bool)

(assert (=> b!27884 (= e!14254 0)))

(assert (= (and d!14759 c!6131) b!27884))

(assert (= (and d!14759 (not c!6131)) b!27885))

(declare-fun m!29343 () Bool)

(assert (=> b!27885 m!29343))

(declare-fun m!29345 () Bool)

(assert (=> b!27885 m!29345))

(assert (=> b!27853 d!14759))

(declare-fun d!14761 () Bool)

(declare-fun res!12748 () Bool)

(declare-fun e!14259 () Bool)

(assert (=> d!14761 (=> res!12748 e!14259)))

(assert (=> d!14761 (= res!12748 (not (is-CC!63 res!5536)))))

(assert (=> d!14761 (= (balanced!59 res!5536) e!14259)))

(declare-fun b!27896 () Bool)

(declare-fun res!12750 () Bool)

(declare-fun e!14260 () Bool)

(assert (=> b!27896 (=> (not res!12750) (not e!14260))))

(assert (=> b!27896 (= res!12750 (balanced!59 (left!708 res!5536)))))

(declare-fun b!27894 () Bool)

(assert (=> b!27894 (= e!14259 e!14260)))

(declare-fun res!12747 () Bool)

(assert (=> b!27894 (=> (not res!12747) (not e!14260))))

(assert (=> b!27894 (= res!12747 (>= (- (level!52 (left!708 res!5536)) (level!52 (right!711 res!5536))) (- 1)))))

(declare-fun b!27897 () Bool)

(assert (=> b!27897 (= e!14260 (balanced!59 (right!711 res!5536)))))

(declare-fun b!27895 () Bool)

(declare-fun res!12749 () Bool)

(assert (=> b!27895 (=> (not res!12749) (not e!14260))))

(assert (=> b!27895 (= res!12749 (<= (- (level!52 (left!708 res!5536)) (level!52 (right!711 res!5536))) 1))))

(assert (= (and d!14761 (not res!12748)) b!27894))

(assert (= (and b!27894 res!12747) b!27895))

(assert (= (and b!27895 res!12749) b!27896))

(assert (= (and b!27896 res!12750) b!27897))

(declare-fun m!29347 () Bool)

(assert (=> b!27896 m!29347))

(declare-fun m!29349 () Bool)

(assert (=> b!27894 m!29349))

(declare-fun m!29351 () Bool)

(assert (=> b!27894 m!29351))

(declare-fun m!29353 () Bool)

(assert (=> b!27897 m!29353))

(assert (=> b!27895 m!29349))

(assert (=> b!27895 m!29351))

(assert (=> b!27856 d!14761))

(declare-fun d!14763 () Bool)

(assert (=> d!14763 (= (isEmpty!320 ys!77) (= ys!77 Empty!74))))

(assert (=> b!27859 d!14763))

(declare-fun b!27908 () Bool)

(declare-fun res!12759 () Bool)

(declare-fun e!14266 () Bool)

(assert (=> b!27908 (=> (not res!12759) (not e!14266))))

(assert (=> b!27908 (= res!12759 (concInv!58 (left!708 ys!77)))))

(declare-fun b!27906 () Bool)

(declare-fun e!14265 () Bool)

(assert (=> b!27906 (= e!14265 e!14266)))

(declare-fun res!12762 () Bool)

(assert (=> b!27906 (=> (not res!12762) (not e!14266))))

(assert (=> b!27906 (= res!12762 (not (isEmpty!320 (left!708 ys!77))))))

(declare-fun b!27909 () Bool)

(assert (=> b!27909 (= e!14266 (concInv!58 (right!711 ys!77)))))

(declare-fun d!14765 () Bool)

(declare-fun res!12760 () Bool)

(assert (=> d!14765 (=> res!12760 e!14265)))

(assert (=> d!14765 (= res!12760 (not (is-CC!63 ys!77)))))

(assert (=> d!14765 (= (concInv!58 ys!77) e!14265)))

(declare-fun b!27907 () Bool)

(declare-fun res!12761 () Bool)

(assert (=> b!27907 (=> (not res!12761) (not e!14266))))

(assert (=> b!27907 (= res!12761 (not (isEmpty!320 (right!711 ys!77))))))

(assert (= (and d!14765 (not res!12760)) b!27906))

(assert (= (and b!27906 res!12762) b!27907))

(assert (= (and b!27907 res!12761) b!27908))

(assert (= (and b!27908 res!12759) b!27909))

(declare-fun m!29355 () Bool)

(assert (=> b!27908 m!29355))

(declare-fun m!29357 () Bool)

(assert (=> b!27906 m!29357))

(declare-fun m!29359 () Bool)

(assert (=> b!27909 m!29359))

(declare-fun m!29361 () Bool)

(assert (=> b!27907 m!29361))

(assert (=> b!27852 d!14765))

(declare-fun d!14767 () Bool)

(assert (=> d!14767 (= (isEmpty!320 xs!533) (= xs!533 Empty!74))))

(assert (=> b!27868 d!14767))

(declare-fun d!14769 () Bool)

(declare-datatypes () ((List!361 (Cons!355 (h!272 T!1829) (t!4375 List!361)) (Nil!356))))

(declare-fun toList!116 (Conc!64) List!361)

(declare-fun ++!41 (List!361 List!361) List!361)

(assert (=> d!14769 (= (concatCorrectness!13 res!5536 xs!533 ys!77) (= (toList!116 res!5536) (++!41 (toList!116 xs!533) (toList!116 ys!77))))))

(declare-fun bs!5096 () Bool)

(assert (= bs!5096 d!14769))

(declare-fun m!29363 () Bool)

(assert (=> bs!5096 m!29363))

(declare-fun m!29365 () Bool)

(assert (=> bs!5096 m!29365))

(declare-fun m!29367 () Bool)

(assert (=> bs!5096 m!29367))

(declare-fun m!29369 () Bool)

(assert (=> bs!5096 m!29369))

(assert (=> bs!5096 m!29365))

(assert (=> bs!5096 m!29363))

(assert (=> b!27849 d!14769))

(declare-fun d!14771 () Bool)

(declare-fun res!12765 () Bool)

(declare-fun e!14267 () Bool)

(assert (=> d!14771 (=> res!12765 e!14267)))

(assert (=> d!14771 (= res!12765 (not (is-CC!63 xs!533)))))

(assert (=> d!14771 (= (balanced!59 xs!533) e!14267)))

(declare-fun b!27912 () Bool)

(declare-fun res!12767 () Bool)

(declare-fun e!14268 () Bool)

(assert (=> b!27912 (=> (not res!12767) (not e!14268))))

(assert (=> b!27912 (= res!12767 (balanced!59 (left!708 xs!533)))))

(declare-fun b!27910 () Bool)

(assert (=> b!27910 (= e!14267 e!14268)))

(declare-fun res!12764 () Bool)

(assert (=> b!27910 (=> (not res!12764) (not e!14268))))

(assert (=> b!27910 (= res!12764 (>= (- (level!52 (left!708 xs!533)) (level!52 (right!711 xs!533))) (- 1)))))

(declare-fun b!27913 () Bool)

(assert (=> b!27913 (= e!14268 (balanced!59 (right!711 xs!533)))))

(declare-fun b!27911 () Bool)

(declare-fun res!12766 () Bool)

(assert (=> b!27911 (=> (not res!12766) (not e!14268))))

(assert (=> b!27911 (= res!12766 (<= (- (level!52 (left!708 xs!533)) (level!52 (right!711 xs!533))) 1))))

(assert (= (and d!14771 (not res!12765)) b!27910))

(assert (= (and b!27910 res!12764) b!27911))

(assert (= (and b!27911 res!12766) b!27912))

(assert (= (and b!27912 res!12767) b!27913))

(declare-fun m!29371 () Bool)

(assert (=> b!27912 m!29371))

(assert (=> b!27910 m!29327))

(assert (=> b!27910 m!29329))

(declare-fun m!29373 () Bool)

(assert (=> b!27913 m!29373))

(assert (=> b!27911 m!29327))

(assert (=> b!27911 m!29329))

(assert (=> b!27847 d!14771))

(assert (=> b!27860 d!14751))

(assert (=> b!27860 d!14753))

(declare-fun b!27915 () Bool)

(declare-fun e!14269 () Int)

(declare-fun lt!4766 () Int)

(declare-fun lt!4768 () Int)

(assert (=> b!27915 (= e!14269 (+ 1 (ite (>= lt!4766 lt!4768) lt!4766 lt!4768)))))

(assert (=> b!27915 (= lt!4768 (level!52 (right!711 res!5536)))))

(assert (=> b!27915 (= lt!4766 (level!52 (left!708 res!5536)))))

(declare-fun d!14773 () Bool)

(declare-fun lt!4767 () Int)

(assert (=> d!14773 (>= lt!4767 0)))

(assert (=> d!14773 (= lt!4767 e!14269)))

(declare-fun c!6132 () Bool)

(assert (=> d!14773 (= c!6132 (or (is-Empty!74 res!5536) (is-Single!63 res!5536)))))

(assert (=> d!14773 (= (level!52 res!5536) lt!4767)))

(declare-fun b!27914 () Bool)

(assert (=> b!27914 (= e!14269 0)))

(assert (= (and d!14773 c!6132) b!27914))

(assert (= (and d!14773 (not c!6132)) b!27915))

(assert (=> b!27915 m!29351))

(assert (=> b!27915 m!29349))

(assert (=> b!27860 d!14773))

(declare-fun b!27934 () Bool)

(declare-fun e!14292 () Bool)

(declare-fun e!14295 () Bool)

(assert (=> b!27934 (= e!14292 e!14295)))

(declare-fun res!12788 () Bool)

(assert (=> b!27934 (=> (not res!12788) (not e!14295))))

(declare-fun appendAssoc!9 (List!361 List!361 List!361) Bool)

(assert (=> b!27934 (= res!12788 (appendAssoc!9 (toList!116 (left!708 (right!711 xs!533))) (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)))))

(declare-fun b!27935 () Bool)

(declare-fun e!14294 () Bool)

(declare-fun e!14296 () Bool)

(assert (=> b!27935 (= e!14294 e!14296)))

(declare-fun res!12794 () Bool)

(assert (=> b!27935 (=> (not res!12794) (not e!14296))))

(assert (=> b!27935 (= res!12794 (appendAssoc!9 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))))))

(declare-fun b!27936 () Bool)

(declare-fun e!14293 () Bool)

(assert (=> b!27936 (= e!14293 e!14294)))

(declare-fun res!12791 () Bool)

(assert (=> b!27936 (=> res!12791 e!14294)))

(assert (=> b!27936 (= res!12791 (not (is-CC!63 (left!708 ys!77))))))

(declare-fun d!14775 () Bool)

(declare-fun e!14291 () Bool)

(assert (=> d!14775 e!14291))

(declare-fun res!12789 () Bool)

(assert (=> d!14775 (=> (not res!12789) (not e!14291))))

(declare-fun e!14288 () Bool)

(assert (=> d!14775 (= res!12789 e!14288)))

(declare-fun res!12787 () Bool)

(assert (=> d!14775 (=> res!12787 e!14288)))

(assert (=> d!14775 (= res!12787 (not (is-CC!63 xs!533)))))

(assert (=> d!14775 (= (appendAssocInst!13 xs!533 ys!77) true)))

(declare-fun b!27937 () Bool)

(assert (=> b!27937 (= e!14295 (appendAssoc!9 (toList!116 (left!708 xs!533)) (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))))))

(declare-fun b!27938 () Bool)

(declare-fun e!14289 () Bool)

(assert (=> b!27938 (= e!14289 e!14292)))

(declare-fun res!12793 () Bool)

(assert (=> b!27938 (=> res!12793 e!14292)))

(assert (=> b!27938 (= res!12793 (not (is-CC!63 (right!711 xs!533))))))

(declare-fun b!27939 () Bool)

(assert (=> b!27939 (= e!14288 e!14289)))

(declare-fun res!12790 () Bool)

(assert (=> b!27939 (=> (not res!12790) (not e!14289))))

(assert (=> b!27939 (= res!12790 (appendAssoc!9 (toList!116 (left!708 xs!533)) (toList!116 (right!711 xs!533)) (toList!116 ys!77)))))

(declare-fun b!27940 () Bool)

(declare-fun e!14290 () Bool)

(assert (=> b!27940 (= e!14290 e!14293)))

(declare-fun res!12792 () Bool)

(assert (=> b!27940 (=> (not res!12792) (not e!14293))))

(assert (=> b!27940 (= res!12792 (appendAssoc!9 (toList!116 xs!533) (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))))))

(declare-fun b!27941 () Bool)

(assert (=> b!27941 (= e!14296 (appendAssoc!9 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))))))

(declare-fun b!27942 () Bool)

(assert (=> b!27942 (= e!14291 e!14290)))

(declare-fun res!12786 () Bool)

(assert (=> b!27942 (=> res!12786 e!14290)))

(assert (=> b!27942 (= res!12786 (not (is-CC!63 ys!77)))))

(assert (= (and d!14775 (not res!12787)) b!27939))

(assert (= (and b!27939 res!12790) b!27938))

(assert (= (and b!27938 (not res!12793)) b!27934))

(assert (= (and b!27934 res!12788) b!27937))

(assert (= (and d!14775 res!12789) b!27942))

(assert (= (and b!27942 (not res!12786)) b!27940))

(assert (= (and b!27940 res!12792) b!27936))

(assert (= (and b!27936 (not res!12791)) b!27935))

(assert (= (and b!27935 res!12794) b!27941))

(assert (=> b!27940 m!29363))

(declare-fun m!29375 () Bool)

(assert (=> b!27940 m!29375))

(declare-fun m!29377 () Bool)

(assert (=> b!27940 m!29377))

(assert (=> b!27940 m!29363))

(assert (=> b!27940 m!29375))

(assert (=> b!27940 m!29377))

(declare-fun m!29379 () Bool)

(assert (=> b!27940 m!29379))

(assert (=> b!27935 m!29363))

(declare-fun m!29381 () Bool)

(assert (=> b!27935 m!29381))

(declare-fun m!29383 () Bool)

(assert (=> b!27935 m!29383))

(assert (=> b!27935 m!29363))

(assert (=> b!27935 m!29381))

(assert (=> b!27935 m!29383))

(declare-fun m!29385 () Bool)

(assert (=> b!27935 m!29385))

(declare-fun m!29387 () Bool)

(assert (=> b!27939 m!29387))

(declare-fun m!29389 () Bool)

(assert (=> b!27939 m!29389))

(assert (=> b!27939 m!29365))

(assert (=> b!27939 m!29387))

(assert (=> b!27939 m!29389))

(assert (=> b!27939 m!29365))

(declare-fun m!29391 () Bool)

(assert (=> b!27939 m!29391))

(assert (=> b!27941 m!29383))

(declare-fun m!29393 () Bool)

(assert (=> b!27941 m!29393))

(assert (=> b!27941 m!29383))

(assert (=> b!27941 m!29377))

(declare-fun m!29395 () Bool)

(assert (=> b!27941 m!29395))

(assert (=> b!27941 m!29363))

(assert (=> b!27941 m!29381))

(assert (=> b!27941 m!29393))

(assert (=> b!27941 m!29381))

(assert (=> b!27941 m!29377))

(assert (=> b!27941 m!29363))

(declare-fun m!29397 () Bool)

(assert (=> b!27934 m!29397))

(declare-fun m!29399 () Bool)

(assert (=> b!27934 m!29399))

(assert (=> b!27934 m!29365))

(assert (=> b!27934 m!29397))

(assert (=> b!27934 m!29399))

(assert (=> b!27934 m!29365))

(declare-fun m!29401 () Bool)

(assert (=> b!27934 m!29401))

(assert (=> b!27937 m!29399))

(assert (=> b!27937 m!29365))

(declare-fun m!29403 () Bool)

(assert (=> b!27937 m!29403))

(assert (=> b!27937 m!29387))

(assert (=> b!27937 m!29397))

(assert (=> b!27937 m!29403))

(declare-fun m!29405 () Bool)

(assert (=> b!27937 m!29405))

(assert (=> b!27937 m!29399))

(assert (=> b!27937 m!29397))

(assert (=> b!27937 m!29387))

(assert (=> b!27937 m!29365))

(assert (=> b!27854 d!14775))

(assert (=> b!27857 d!14751))

(assert (=> b!27857 d!14753))

(assert (=> b!27857 d!14773))

(declare-fun b!27945 () Bool)

(declare-fun res!12795 () Bool)

(declare-fun e!14298 () Bool)

(assert (=> b!27945 (=> (not res!12795) (not e!14298))))

(assert (=> b!27945 (= res!12795 (concInv!58 (left!708 res!5536)))))

(declare-fun b!27943 () Bool)

(declare-fun e!14297 () Bool)

(assert (=> b!27943 (= e!14297 e!14298)))

(declare-fun res!12798 () Bool)

(assert (=> b!27943 (=> (not res!12798) (not e!14298))))

(assert (=> b!27943 (= res!12798 (not (isEmpty!320 (left!708 res!5536))))))

(declare-fun b!27946 () Bool)

(assert (=> b!27946 (= e!14298 (concInv!58 (right!711 res!5536)))))

(declare-fun d!14777 () Bool)

(declare-fun res!12796 () Bool)

(assert (=> d!14777 (=> res!12796 e!14297)))

(assert (=> d!14777 (= res!12796 (not (is-CC!63 res!5536)))))

(assert (=> d!14777 (= (concInv!58 res!5536) e!14297)))

(declare-fun b!27944 () Bool)

(declare-fun res!12797 () Bool)

(assert (=> b!27944 (=> (not res!12797) (not e!14298))))

(assert (=> b!27944 (= res!12797 (not (isEmpty!320 (right!711 res!5536))))))

(assert (= (and d!14777 (not res!12796)) b!27943))

(assert (= (and b!27943 res!12798) b!27944))

(assert (= (and b!27944 res!12797) b!27945))

(assert (= (and b!27945 res!12795) b!27946))

(declare-fun m!29407 () Bool)

(assert (=> b!27945 m!29407))

(declare-fun m!29409 () Bool)

(assert (=> b!27943 m!29409))

(declare-fun m!29411 () Bool)

(assert (=> b!27946 m!29411))

(declare-fun m!29413 () Bool)

(assert (=> b!27944 m!29413))

(assert (=> b!27855 d!14777))

(declare-fun b!27949 () Bool)

(declare-fun res!12799 () Bool)

(declare-fun e!14300 () Bool)

(assert (=> b!27949 (=> (not res!12799) (not e!14300))))

(assert (=> b!27949 (= res!12799 (concInv!58 (left!708 xs!533)))))

(declare-fun b!27947 () Bool)

(declare-fun e!14299 () Bool)

(assert (=> b!27947 (= e!14299 e!14300)))

(declare-fun res!12802 () Bool)

(assert (=> b!27947 (=> (not res!12802) (not e!14300))))

(assert (=> b!27947 (= res!12802 (not (isEmpty!320 (left!708 xs!533))))))

(declare-fun b!27950 () Bool)

(assert (=> b!27950 (= e!14300 (concInv!58 (right!711 xs!533)))))

(declare-fun d!14779 () Bool)

(declare-fun res!12800 () Bool)

(assert (=> d!14779 (=> res!12800 e!14299)))

(assert (=> d!14779 (= res!12800 (not (is-CC!63 xs!533)))))

(assert (=> d!14779 (= (concInv!58 xs!533) e!14299)))

(declare-fun b!27948 () Bool)

(declare-fun res!12801 () Bool)

(assert (=> b!27948 (=> (not res!12801) (not e!14300))))

(assert (=> b!27948 (= res!12801 (not (isEmpty!320 (right!711 xs!533))))))

(assert (= (and d!14779 (not res!12800)) b!27947))

(assert (= (and b!27947 res!12802) b!27948))

(assert (= (and b!27948 res!12801) b!27949))

(assert (= (and b!27949 res!12799) b!27950))

(declare-fun m!29415 () Bool)

(assert (=> b!27949 m!29415))

(declare-fun m!29417 () Bool)

(assert (=> b!27947 m!29417))

(declare-fun m!29419 () Bool)

(assert (=> b!27950 m!29419))

(declare-fun m!29421 () Bool)

(assert (=> b!27948 m!29421))

(assert (=> start!3910 d!14779))

(declare-fun d!14781 () Bool)

(declare-fun res!12804 () Bool)

(declare-fun e!14301 () Bool)

(assert (=> d!14781 (=> res!12804 e!14301)))

(assert (=> d!14781 (= res!12804 (not (is-CC!63 ys!77)))))

(assert (=> d!14781 (= (balanced!59 ys!77) e!14301)))

(declare-fun b!27953 () Bool)

(declare-fun res!12806 () Bool)

(declare-fun e!14302 () Bool)

(assert (=> b!27953 (=> (not res!12806) (not e!14302))))

(assert (=> b!27953 (= res!12806 (balanced!59 (left!708 ys!77)))))

(declare-fun b!27951 () Bool)

(assert (=> b!27951 (= e!14301 e!14302)))

(declare-fun res!12803 () Bool)

(assert (=> b!27951 (=> (not res!12803) (not e!14302))))

(assert (=> b!27951 (= res!12803 (>= (- (level!52 (left!708 ys!77)) (level!52 (right!711 ys!77))) (- 1)))))

(declare-fun b!27954 () Bool)

(assert (=> b!27954 (= e!14302 (balanced!59 (right!711 ys!77)))))

(declare-fun b!27952 () Bool)

(declare-fun res!12805 () Bool)

(assert (=> b!27952 (=> (not res!12805) (not e!14302))))

(assert (=> b!27952 (= res!12805 (<= (- (level!52 (left!708 ys!77)) (level!52 (right!711 ys!77))) 1))))

(assert (= (and d!14781 (not res!12804)) b!27951))

(assert (= (and b!27951 res!12803) b!27952))

(assert (= (and b!27952 res!12805) b!27953))

(assert (= (and b!27953 res!12806) b!27954))

(declare-fun m!29423 () Bool)

(assert (=> b!27953 m!29423))

(assert (=> b!27951 m!29333))

(assert (=> b!27951 m!29331))

(declare-fun m!29425 () Bool)

(assert (=> b!27954 m!29425))

(assert (=> b!27952 m!29333))

(assert (=> b!27952 m!29331))

(assert (=> b!27869 d!14781))

(declare-fun b!27997 () Bool)

(declare-fun res!12874 () Bool)

(declare-fun e!14328 () Bool)

(assert (=> b!27997 (=> (not res!12874) (not e!14328))))

(declare-fun lt!4807 () Conc!64)

(assert (=> b!27997 (= res!12874 (concInv!58 lt!4807))))

(declare-fun b!27998 () Bool)

(declare-fun e!14327 () Conc!64)

(declare-fun res!12862 () Conc!64)

(assert (=> b!27998 (= e!14327 res!12862)))

(assert (=> b!27998 true))

(declare-fun e!14324 () Bool)

(assert (=> b!27998 e!14324))

(declare-fun b!27999 () Bool)

(declare-fun res!12866 () Bool)

(declare-fun e!14326 () Bool)

(assert (=> b!27999 (=> (not res!12866) (not e!14326))))

(assert (=> b!27999 (= res!12866 (balanced!59 ys!77))))

(declare-fun b!28000 () Bool)

(declare-fun e!14329 () Int)

(declare-fun lt!4812 () Conc!64)

(assert (=> b!28000 (= e!14329 (level!52 lt!4812))))

(declare-fun b!28001 () Bool)

(declare-fun e!14325 () Bool)

(assert (=> b!28001 (= e!14325 (balanced!59 (right!711 (right!711 xs!533))))))

(declare-fun b!28002 () Bool)

(declare-fun res!12867 () Bool)

(assert (=> b!28002 (=> (not res!12867) (not e!14328))))

(assert (=> b!28002 (= res!12867 (appendAssocInst!13 (right!711 (right!711 xs!533)) ys!77))))

(declare-fun e!14322 () Int)

(declare-fun lt!4802 () Bool)

(declare-fun b!28003 () Bool)

(assert (=> b!28003 (= e!14322 (level!52 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77)))))

(declare-fun lt!4811 () Int)

(declare-fun lt!4813 () Int)

(declare-fun b!28004 () Bool)

(declare-fun e!14321 () Conc!64)

(declare-fun lt!4801 () Bool)

(declare-fun lt!4808 () Int)

(declare-fun lt!4805 () Int)

(assert (=> b!28004 (= e!14321 (ite lt!4801 (let ((res!12810 lt!4812)) (ite (>= lt!4808 lt!4813) (CC!63 (left!708 (right!711 (right!711 xs!533))) res!12810) (ite (= lt!4811 (- lt!4805 3)) (CC!63 (left!708 (right!711 (right!711 xs!533))) (CC!63 (left!708 (right!711 (right!711 (right!711 xs!533)))) res!12810)) (CC!63 (CC!63 (left!708 (right!711 (right!711 xs!533))) (left!708 (right!711 (right!711 (right!711 xs!533))))) res!12810)))) (let ((res!12813 lt!4812)) (ite (>= lt!4808 lt!4813) (CC!63 res!12813 (right!711 ys!77)) (ite (= lt!4811 (- lt!4805 3)) (CC!63 (CC!63 res!12813 (right!711 (left!708 ys!77))) (right!711 ys!77)) (CC!63 res!12813 (CC!63 (right!711 (left!708 ys!77)) (right!711 ys!77))))))))))

(assert (=> b!28004 (= lt!4805 e!14322)))

(declare-fun c!6143 () Bool)

(assert (=> b!28004 (= c!6143 (or lt!4802 (and (not lt!4801) (not (>= lt!4808 lt!4813)))))))

(assert (=> b!28004 (= lt!4802 (and lt!4801 (not (>= lt!4808 lt!4813))))))

(assert (=> b!28004 (= lt!4811 e!14329)))

(declare-fun c!6142 () Bool)

(assert (=> b!28004 (= c!6142 (or (and lt!4801 (not (>= lt!4808 lt!4813))) (and (not lt!4801) (not (>= lt!4808 lt!4813)))))))

(assert (=> b!28004 (= lt!4812 e!14327)))

(declare-fun c!6141 () Bool)

(declare-fun lt!4816 () Bool)

(assert (=> b!28004 (= c!6141 (or lt!4816 (not lt!4801)))))

(assert (=> b!28004 (= lt!4816 lt!4801)))

(assert (=> b!28004 (= lt!4813 (level!52 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77))))))

(assert (=> b!28004 (= lt!4808 (level!52 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77))))))

(declare-fun lt!4814 () Int)

(assert (=> b!28004 (= lt!4801 (< lt!4814 (- 1)))))

(declare-fun b!28005 () Bool)

(declare-fun tp!6008 () Bool)

(declare-fun tp!6009 () Bool)

(assert (=> b!28005 (= e!14324 (and tp!6008 tp!6009))))

(declare-fun b!28006 () Bool)

(declare-fun e!14323 () Bool)

(assert (=> b!28006 (= e!14323 e!14328)))

(declare-fun res!12864 () Bool)

(assert (=> b!28006 (=> (not res!12864) (not e!14328))))

(declare-fun lt!4809 () Int)

(declare-fun lt!4806 () Int)

(declare-fun lt!4810 () Int)

(assert (=> b!28006 (= res!12864 (<= lt!4806 (+ (ite (>= lt!4809 lt!4810) lt!4809 lt!4810) 1)))))

(assert (=> b!28006 (= lt!4810 (level!52 ys!77))))

(assert (=> b!28006 (= lt!4809 (level!52 (right!711 (right!711 xs!533))))))

(assert (=> b!28006 (= lt!4806 (level!52 lt!4807))))

(declare-fun b!28007 () Bool)

(assert (=> b!28007 (= e!14326 (not (isEmpty!320 ys!77)))))

(declare-fun b!28008 () Bool)

(assert (=> b!28008 (= e!14324 tp_is_empty!173)))

(declare-fun b!28009 () Bool)

(declare-fun res!12861 () Int)

(assert (=> b!28009 (= e!14322 res!12861)))

(assert (=> b!28009 true))

(assert (=> b!28009 true))

(declare-fun d!14783 () Bool)

(assert (=> d!14783 e!14323))

(declare-fun res!12871 () Bool)

(assert (=> d!14783 (=> (not res!12871) (not e!14323))))

(assert (=> d!14783 (= res!12871 (is-CC!63 lt!4807))))

(assert (=> d!14783 (= lt!4807 e!14321)))

(declare-fun c!6144 () Bool)

(assert (=> d!14783 (= c!6144 (and (>= lt!4814 (- 1)) (<= lt!4814 1)))))

(assert (=> d!14783 (= lt!4814 (- (level!52 ys!77) (level!52 (right!711 (right!711 xs!533)))))))

(assert (=> d!14783 e!14326))

(declare-fun res!12869 () Bool)

(assert (=> d!14783 (=> (not res!12869) (not e!14326))))

(assert (=> d!14783 (= res!12869 e!14325)))

(declare-fun res!12873 () Bool)

(assert (=> d!14783 (=> (not res!12873) (not e!14325))))

(assert (=> d!14783 (= res!12873 (concInv!58 (right!711 (right!711 xs!533))))))

(assert (=> d!14783 (= (concatNonEmpty!16 (right!711 (right!711 xs!533)) ys!77) lt!4807)))

(declare-fun b!28010 () Bool)

(declare-fun res!12872 () Bool)

(assert (=> b!28010 (=> (not res!12872) (not e!14328))))

(assert (=> b!28010 (= res!12872 (balanced!59 lt!4807))))

(declare-fun b!28011 () Bool)

(declare-fun res!12868 () Bool)

(assert (=> b!28011 (=> (not res!12868) (not e!14326))))

(assert (=> b!28011 (= res!12868 (not (isEmpty!320 (right!711 (right!711 xs!533)))))))

(declare-fun b!28012 () Bool)

(declare-fun res!12865 () Bool)

(assert (=> b!28012 (=> (not res!12865) (not e!14328))))

(declare-fun lt!4815 () Int)

(declare-fun lt!4804 () Int)

(declare-fun lt!4803 () Int)

(assert (=> b!28012 (= res!12865 (>= lt!4815 (ite (>= lt!4803 lt!4804) lt!4803 lt!4804)))))

(assert (=> b!28012 (= lt!4804 (level!52 ys!77))))

(assert (=> b!28012 (= lt!4803 (level!52 (right!711 (right!711 xs!533))))))

(assert (=> b!28012 (= lt!4815 (level!52 lt!4807))))

(declare-fun b!28013 () Bool)

(assert (=> b!28013 (= e!14327 (concatNonEmpty!16 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))) (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))

(declare-fun b!28014 () Bool)

(assert (=> b!28014 (= e!14321 (CC!63 (right!711 (right!711 xs!533)) ys!77))))

(declare-fun b!28015 () Bool)

(declare-fun res!12863 () Int)

(assert (=> b!28015 (= e!14329 res!12863)))

(assert (=> b!28015 true))

(declare-fun b!28016 () Bool)

(assert (=> b!28016 (= e!14328 (concatCorrectness!13 lt!4807 (right!711 (right!711 xs!533)) ys!77))))

(declare-fun b!28017 () Bool)

(declare-fun res!12870 () Bool)

(assert (=> b!28017 (=> (not res!12870) (not e!14326))))

(assert (=> b!28017 (= res!12870 (concInv!58 ys!77))))

(assert (= (and d!14783 res!12873) b!28001))

(assert (= (and d!14783 res!12869) b!28017))

(assert (= (and b!28017 res!12870) b!27999))

(assert (= (and b!27999 res!12866) b!28011))

(assert (= (and b!28011 res!12868) b!28007))

(assert (= (and b!27998 (is-CC!63 res!12862)) b!28005))

(assert (= (and b!27998 (is-Single!63 res!12862)) b!28008))

(assert (= (and b!28004 c!6141) b!28013))

(assert (= (and b!28004 (not c!6141)) b!27998))

(assert (= (and b!28004 c!6142) b!28000))

(assert (= (and b!28004 (not c!6142)) b!28015))

(assert (= (and b!28004 c!6143) b!28003))

(assert (= (and b!28004 (not c!6143)) b!28009))

(assert (= (and d!14783 c!6144) b!28014))

(assert (= (and d!14783 (not c!6144)) b!28004))

(assert (= (and d!14783 res!12871) b!28006))

(assert (= (and b!28006 res!12864) b!28012))

(assert (= (and b!28012 res!12865) b!27997))

(assert (= (and b!27997 res!12874) b!28010))

(assert (= (and b!28010 res!12872) b!28002))

(assert (= (and b!28002 res!12867) b!28016))

(assert (=> d!14783 m!29321))

(assert (=> d!14783 m!29343))

(declare-fun m!29427 () Bool)

(assert (=> d!14783 m!29427))

(assert (=> b!28012 m!29321))

(assert (=> b!28012 m!29343))

(declare-fun m!29429 () Bool)

(assert (=> b!28012 m!29429))

(declare-fun m!29431 () Bool)

(assert (=> b!28003 m!29431))

(declare-fun m!29433 () Bool)

(assert (=> b!27997 m!29433))

(declare-fun m!29435 () Bool)

(assert (=> b!28016 m!29435))

(declare-fun m!29437 () Bool)

(assert (=> b!28004 m!29437))

(declare-fun m!29439 () Bool)

(assert (=> b!28004 m!29439))

(assert (=> b!27999 m!29319))

(declare-fun m!29441 () Bool)

(assert (=> b!28010 m!29441))

(declare-fun m!29443 () Bool)

(assert (=> b!28001 m!29443))

(assert (=> b!28007 m!29299))

(declare-fun m!29445 () Bool)

(assert (=> b!28002 m!29445))

(assert (=> b!28006 m!29321))

(assert (=> b!28006 m!29343))

(assert (=> b!28006 m!29429))

(assert (=> b!28017 m!29297))

(declare-fun m!29447 () Bool)

(assert (=> b!28013 m!29447))

(declare-fun m!29449 () Bool)

(assert (=> b!28000 m!29449))

(declare-fun m!29451 () Bool)

(assert (=> b!28011 m!29451))

(assert (=> b!27871 d!14783))

(declare-fun b!28024 () Bool)

(declare-fun e!14332 () Bool)

(declare-fun tp!6014 () Bool)

(declare-fun tp!6015 () Bool)

(assert (=> b!28024 (= e!14332 (and tp!6014 tp!6015))))

(declare-fun b!28025 () Bool)

(assert (=> b!28025 (= e!14332 tp_is_empty!173)))

(assert (=> b!27858 (= tp!6000 e!14332)))

(assert (= (and b!27858 (is-CC!63 (left!708 res!5536))) b!28024))

(assert (= (and b!27858 (is-Single!63 (left!708 res!5536))) b!28025))

(declare-fun b!28026 () Bool)

(declare-fun e!14333 () Bool)

(declare-fun tp!6016 () Bool)

(declare-fun tp!6017 () Bool)

(assert (=> b!28026 (= e!14333 (and tp!6016 tp!6017))))

(declare-fun b!28027 () Bool)

(assert (=> b!28027 (= e!14333 tp_is_empty!173)))

(assert (=> b!27858 (= tp!6002 e!14333)))

(assert (= (and b!27858 (is-CC!63 (right!711 res!5536))) b!28026))

(assert (= (and b!27858 (is-Single!63 (right!711 res!5536))) b!28027))

(declare-fun b!28028 () Bool)

(declare-fun e!14334 () Bool)

(declare-fun tp!6018 () Bool)

(declare-fun tp!6019 () Bool)

(assert (=> b!28028 (= e!14334 (and tp!6018 tp!6019))))

(declare-fun b!28029 () Bool)

(assert (=> b!28029 (= e!14334 tp_is_empty!173)))

(assert (=> b!27865 (= tp!6001 e!14334)))

(assert (= (and b!27865 (is-CC!63 (left!708 nrr!4))) b!28028))

(assert (= (and b!27865 (is-Single!63 (left!708 nrr!4))) b!28029))

(declare-fun b!28030 () Bool)

(declare-fun e!14335 () Bool)

(declare-fun tp!6020 () Bool)

(declare-fun tp!6021 () Bool)

(assert (=> b!28030 (= e!14335 (and tp!6020 tp!6021))))

(declare-fun b!28031 () Bool)

(assert (=> b!28031 (= e!14335 tp_is_empty!173)))

(assert (=> b!27865 (= tp!5999 e!14335)))

(assert (= (and b!27865 (is-CC!63 (right!711 nrr!4))) b!28030))

(assert (= (and b!27865 (is-Single!63 (right!711 nrr!4))) b!28031))

(declare-fun b!28032 () Bool)

(declare-fun e!14336 () Bool)

(declare-fun tp!6022 () Bool)

(declare-fun tp!6023 () Bool)

(assert (=> b!28032 (= e!14336 (and tp!6022 tp!6023))))

(declare-fun b!28033 () Bool)

(assert (=> b!28033 (= e!14336 tp_is_empty!173)))

(assert (=> b!27862 (= tp!5998 e!14336)))

(assert (= (and b!27862 (is-CC!63 (left!708 ys!77))) b!28032))

(assert (= (and b!27862 (is-Single!63 (left!708 ys!77))) b!28033))

(declare-fun b!28034 () Bool)

(declare-fun e!14337 () Bool)

(declare-fun tp!6024 () Bool)

(declare-fun tp!6025 () Bool)

(assert (=> b!28034 (= e!14337 (and tp!6024 tp!6025))))

(declare-fun b!28035 () Bool)

(assert (=> b!28035 (= e!14337 tp_is_empty!173)))

(assert (=> b!27862 (= tp!5996 e!14337)))

(assert (= (and b!27862 (is-CC!63 (right!711 ys!77))) b!28034))

(assert (= (and b!27862 (is-Single!63 (right!711 ys!77))) b!28035))

(declare-fun b!28036 () Bool)

(declare-fun e!14338 () Bool)

(declare-fun tp!6026 () Bool)

(declare-fun tp!6027 () Bool)

(assert (=> b!28036 (= e!14338 (and tp!6026 tp!6027))))

(declare-fun b!28037 () Bool)

(assert (=> b!28037 (= e!14338 tp_is_empty!173)))

(assert (=> b!27861 (= tp!6003 e!14338)))

(assert (= (and b!27861 (is-CC!63 (left!708 xs!533))) b!28036))

(assert (= (and b!27861 (is-Single!63 (left!708 xs!533))) b!28037))

(declare-fun b!28038 () Bool)

(declare-fun e!14339 () Bool)

(declare-fun tp!6028 () Bool)

(declare-fun tp!6029 () Bool)

(assert (=> b!28038 (= e!14339 (and tp!6028 tp!6029))))

(declare-fun b!28039 () Bool)

(assert (=> b!28039 (= e!14339 tp_is_empty!173)))

(assert (=> b!27861 (= tp!5997 e!14339)))

(assert (= (and b!27861 (is-CC!63 (right!711 xs!533))) b!28038))

(assert (= (and b!27861 (is-Single!63 (right!711 xs!533))) b!28039))

(push 1)

(assert (not b!27915))

(assert (not b!27883))

(assert (not b!27879))

(assert (not b!27951))

(assert (not b!27881))

(assert (not b!27948))

(assert (not b!27997))

(assert (not b!28024))

(assert (not b!27896))

(assert (not b!27949))

(assert (not b!28001))

(assert (not d!14769))

(assert (not b!27945))

(assert (not b!27999))

(assert (not b!28000))

(assert tp_is_empty!173)

(assert (not b!27894))

(assert (not b!28002))

(assert (not b!27937))

(assert (not b!27907))

(assert (not b!27906))

(assert (not b!27954))

(assert (not b!28032))

(assert (not b!28017))

(assert (not b!27940))

(assert (not b!27934))

(assert (not b!28010))

(assert (not b!27877))

(assert (not b!28004))

(assert (not b!28038))

(assert (not b!28011))

(assert (not b!27895))

(assert (not b!27946))

(assert (not b!27911))

(assert (not b!28013))

(assert (not b!28007))

(assert (not b!28005))

(assert (not b!27885))

(assert (not b!27910))

(assert (not b!28036))

(assert (not b!27939))

(assert (not b!27952))

(assert (not b!28003))

(assert (not b!27950))

(assert (not b!27935))

(assert (not b!28006))

(assert (not b!27912))

(assert (not b!28016))

(assert (not b!27909))

(assert (not b!28034))

(assert (not b!27897))

(assert (not d!14783))

(assert (not b!27947))

(assert (not b!28028))

(assert (not b!28026))

(assert (not b!27953))

(assert (not b!27913))

(assert (not b!27908))

(assert (not b!28012))

(assert (not b!27944))

(assert (not b!28030))

(assert (not b!27941))

(assert (not b!27943))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!28041 () Bool)

(declare-fun e!14340 () Int)

(declare-fun lt!4817 () Int)

(declare-fun lt!4819 () Int)

(assert (=> b!28041 (= e!14340 (+ 1 (ite (>= lt!4817 lt!4819) lt!4817 lt!4819)))))

(assert (=> b!28041 (= lt!4819 (level!52 (right!711 (right!711 (right!711 xs!533)))))))

(assert (=> b!28041 (= lt!4817 (level!52 (left!708 (right!711 (right!711 xs!533)))))))

(declare-fun d!14785 () Bool)

(declare-fun lt!4818 () Int)

(assert (=> d!14785 (>= lt!4818 0)))

(assert (=> d!14785 (= lt!4818 e!14340)))

(declare-fun c!6145 () Bool)

(assert (=> d!14785 (= c!6145 (or (is-Empty!74 (right!711 (right!711 xs!533))) (is-Single!63 (right!711 (right!711 xs!533)))))))

(assert (=> d!14785 (= (level!52 (right!711 (right!711 xs!533))) lt!4818)))

(declare-fun b!28040 () Bool)

(assert (=> b!28040 (= e!14340 0)))

(assert (= (and d!14785 c!6145) b!28040))

(assert (= (and d!14785 (not c!6145)) b!28041))

(declare-fun m!29453 () Bool)

(assert (=> b!28041 m!29453))

(declare-fun m!29455 () Bool)

(assert (=> b!28041 m!29455))

(assert (=> b!27885 d!14785))

(declare-fun b!28043 () Bool)

(declare-fun e!14341 () Int)

(declare-fun lt!4820 () Int)

(declare-fun lt!4822 () Int)

(assert (=> b!28043 (= e!14341 (+ 1 (ite (>= lt!4820 lt!4822) lt!4820 lt!4822)))))

(assert (=> b!28043 (= lt!4822 (level!52 (right!711 (left!708 (right!711 xs!533)))))))

(assert (=> b!28043 (= lt!4820 (level!52 (left!708 (left!708 (right!711 xs!533)))))))

(declare-fun d!14787 () Bool)

(declare-fun lt!4821 () Int)

(assert (=> d!14787 (>= lt!4821 0)))

(assert (=> d!14787 (= lt!4821 e!14341)))

(declare-fun c!6146 () Bool)

(assert (=> d!14787 (= c!6146 (or (is-Empty!74 (left!708 (right!711 xs!533))) (is-Single!63 (left!708 (right!711 xs!533)))))))

(assert (=> d!14787 (= (level!52 (left!708 (right!711 xs!533))) lt!4821)))

(declare-fun b!28042 () Bool)

(assert (=> b!28042 (= e!14341 0)))

(assert (= (and d!14787 c!6146) b!28042))

(assert (= (and d!14787 (not c!6146)) b!28043))

(declare-fun m!29457 () Bool)

(assert (=> b!28043 m!29457))

(declare-fun m!29459 () Bool)

(assert (=> b!28043 m!29459))

(assert (=> b!27885 d!14787))

(declare-fun b!28044 () Bool)

(declare-fun res!12888 () Bool)

(declare-fun e!14349 () Bool)

(assert (=> b!28044 (=> (not res!12888) (not e!14349))))

(declare-fun lt!4829 () Conc!64)

(assert (=> b!28044 (= res!12888 (concInv!58 lt!4829))))

(declare-fun b!28045 () Bool)

(declare-fun e!14348 () Conc!64)

(declare-fun res!12876 () Conc!64)

(assert (=> b!28045 (= e!14348 res!12876)))

(assert (=> b!28045 true))

(declare-fun e!14345 () Bool)

(assert (=> b!28045 e!14345))

(declare-fun b!28046 () Bool)

(declare-fun res!12880 () Bool)

(declare-fun e!14347 () Bool)

(assert (=> b!28046 (=> (not res!12880) (not e!14347))))

(assert (=> b!28046 (= res!12880 (balanced!59 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))

(declare-fun b!28047 () Bool)

(declare-fun e!14350 () Int)

(declare-fun lt!4834 () Conc!64)

(assert (=> b!28047 (= e!14350 (level!52 lt!4834))))

(declare-fun b!28048 () Bool)

(declare-fun e!14346 () Bool)

(assert (=> b!28048 (= e!14346 (balanced!59 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))))

(declare-fun b!28049 () Bool)

(declare-fun res!12881 () Bool)

(assert (=> b!28049 (=> (not res!12881) (not e!14349))))

(assert (=> b!28049 (= res!12881 (appendAssocInst!13 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))) (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))

(declare-fun b!28050 () Bool)

(declare-fun lt!4824 () Bool)

(declare-fun e!14343 () Int)

(assert (=> b!28050 (= e!14343 (level!52 (ite lt!4824 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))) (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))

(declare-fun lt!4835 () Int)

(declare-fun lt!4827 () Int)

(declare-fun b!28051 () Bool)

(declare-fun lt!4830 () Int)

(declare-fun lt!4823 () Bool)

(declare-fun e!14342 () Conc!64)

(declare-fun lt!4833 () Int)

(assert (=> b!28051 (= e!14342 (ite lt!4823 (let ((res!12810 lt!4834)) (ite (>= lt!4830 lt!4835) (CC!63 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) res!12810) (ite (= lt!4833 (- lt!4827 3)) (CC!63 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (CC!63 (left!708 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))) res!12810)) (CC!63 (CC!63 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (left!708 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) res!12810)))) (let ((res!12813 lt!4834)) (ite (>= lt!4830 lt!4835) (CC!63 res!12813 (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))) (ite (= lt!4833 (- lt!4827 3)) (CC!63 (CC!63 res!12813 (right!711 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))) (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))) (CC!63 res!12813 (CC!63 (right!711 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))) (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))))))

(assert (=> b!28051 (= lt!4827 e!14343)))

(declare-fun c!6149 () Bool)

(assert (=> b!28051 (= c!6149 (or lt!4824 (and (not lt!4823) (not (>= lt!4830 lt!4835)))))))

(assert (=> b!28051 (= lt!4824 (and lt!4823 (not (>= lt!4830 lt!4835))))))

(assert (=> b!28051 (= lt!4833 e!14350)))

(declare-fun c!6148 () Bool)

(assert (=> b!28051 (= c!6148 (or (and lt!4823 (not (>= lt!4830 lt!4835))) (and (not lt!4823) (not (>= lt!4830 lt!4835)))))))

(assert (=> b!28051 (= lt!4834 e!14348)))

(declare-fun c!6147 () Bool)

(declare-fun lt!4838 () Bool)

(assert (=> b!28051 (= c!6147 (or lt!4838 (not lt!4823)))))

(assert (=> b!28051 (= lt!4838 lt!4823)))

(assert (=> b!28051 (= lt!4835 (level!52 (ite lt!4823 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))

(assert (=> b!28051 (= lt!4830 (level!52 (ite lt!4823 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))

(declare-fun lt!4836 () Int)

(assert (=> b!28051 (= lt!4823 (< lt!4836 (- 1)))))

(declare-fun b!28052 () Bool)

(declare-fun tp!6030 () Bool)

(declare-fun tp!6031 () Bool)

(assert (=> b!28052 (= e!14345 (and tp!6030 tp!6031))))

(declare-fun b!28053 () Bool)

(declare-fun e!14344 () Bool)

(assert (=> b!28053 (= e!14344 e!14349)))

(declare-fun res!12878 () Bool)

(assert (=> b!28053 (=> (not res!12878) (not e!14349))))

(declare-fun lt!4828 () Int)

(declare-fun lt!4831 () Int)

(declare-fun lt!4832 () Int)

(assert (=> b!28053 (= res!12878 (<= lt!4828 (+ (ite (>= lt!4831 lt!4832) lt!4831 lt!4832) 1)))))

(assert (=> b!28053 (= lt!4832 (level!52 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))

(assert (=> b!28053 (= lt!4831 (level!52 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))))

(assert (=> b!28053 (= lt!4828 (level!52 lt!4829))))

(declare-fun b!28054 () Bool)

(assert (=> b!28054 (= e!14347 (not (isEmpty!320 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))

(declare-fun b!28055 () Bool)

(assert (=> b!28055 (= e!14345 tp_is_empty!173)))

(declare-fun b!28056 () Bool)

(declare-fun res!12875 () Int)

(assert (=> b!28056 (= e!14343 res!12875)))

(assert (=> b!28056 true))

(assert (=> b!28056 true))

(declare-fun d!14789 () Bool)

(assert (=> d!14789 e!14344))

(declare-fun res!12885 () Bool)

(assert (=> d!14789 (=> (not res!12885) (not e!14344))))

(assert (=> d!14789 (= res!12885 (is-CC!63 lt!4829))))

(assert (=> d!14789 (= lt!4829 e!14342)))

(declare-fun c!6150 () Bool)

(assert (=> d!14789 (= c!6150 (and (>= lt!4836 (- 1)) (<= lt!4836 1)))))

(assert (=> d!14789 (= lt!4836 (- (level!52 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (level!52 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(assert (=> d!14789 e!14347))

(declare-fun res!12883 () Bool)

(assert (=> d!14789 (=> (not res!12883) (not e!14347))))

(assert (=> d!14789 (= res!12883 e!14346)))

(declare-fun res!12887 () Bool)

(assert (=> d!14789 (=> (not res!12887) (not e!14346))))

(assert (=> d!14789 (= res!12887 (concInv!58 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))))

(assert (=> d!14789 (= (concatNonEmpty!16 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))) (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) lt!4829)))

(declare-fun b!28057 () Bool)

(declare-fun res!12886 () Bool)

(assert (=> b!28057 (=> (not res!12886) (not e!14349))))

(assert (=> b!28057 (= res!12886 (balanced!59 lt!4829))))

(declare-fun b!28058 () Bool)

(declare-fun res!12882 () Bool)

(assert (=> b!28058 (=> (not res!12882) (not e!14347))))

(assert (=> b!28058 (= res!12882 (not (isEmpty!320 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(declare-fun b!28059 () Bool)

(declare-fun res!12879 () Bool)

(assert (=> b!28059 (=> (not res!12879) (not e!14349))))

(declare-fun lt!4825 () Int)

(declare-fun lt!4826 () Int)

(declare-fun lt!4837 () Int)

(assert (=> b!28059 (= res!12879 (>= lt!4837 (ite (>= lt!4825 lt!4826) lt!4825 lt!4826)))))

(assert (=> b!28059 (= lt!4826 (level!52 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))

(assert (=> b!28059 (= lt!4825 (level!52 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))))

(assert (=> b!28059 (= lt!4837 (level!52 lt!4829))))

(declare-fun b!28060 () Bool)

(assert (=> b!28060 (= e!14348 (concatNonEmpty!16 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))))

(declare-fun b!28061 () Bool)

(assert (=> b!28061 (= e!14342 (CC!63 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))) (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))

(declare-fun b!28062 () Bool)

(declare-fun res!12877 () Int)

(assert (=> b!28062 (= e!14350 res!12877)))

(assert (=> b!28062 true))

(declare-fun b!28063 () Bool)

(assert (=> b!28063 (= e!14349 (concatCorrectness!13 lt!4829 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))) (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))

(declare-fun b!28064 () Bool)

(declare-fun res!12884 () Bool)

(assert (=> b!28064 (=> (not res!12884) (not e!14347))))

(assert (=> b!28064 (= res!12884 (concInv!58 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))

(assert (= (and d!14789 res!12887) b!28048))

(assert (= (and d!14789 res!12883) b!28064))

(assert (= (and b!28064 res!12884) b!28046))

(assert (= (and b!28046 res!12880) b!28058))

(assert (= (and b!28058 res!12882) b!28054))

(assert (= (and b!28045 (is-CC!63 res!12876)) b!28052))

(assert (= (and b!28045 (is-Single!63 res!12876)) b!28055))

(assert (= (and b!28051 c!6147) b!28060))

(assert (= (and b!28051 (not c!6147)) b!28045))

(assert (= (and b!28051 c!6148) b!28047))

(assert (= (and b!28051 (not c!6148)) b!28062))

(assert (= (and b!28051 c!6149) b!28050))

(assert (= (and b!28051 (not c!6149)) b!28056))

(assert (= (and d!14789 c!6150) b!28061))

(assert (= (and d!14789 (not c!6150)) b!28051))

(assert (= (and d!14789 res!12885) b!28053))

(assert (= (and b!28053 res!12878) b!28059))

(assert (= (and b!28059 res!12879) b!28044))

(assert (= (and b!28044 res!12888) b!28057))

(assert (= (and b!28057 res!12886) b!28049))

(assert (= (and b!28049 res!12881) b!28063))

(declare-fun m!29461 () Bool)

(assert (=> d!14789 m!29461))

(declare-fun m!29463 () Bool)

(assert (=> d!14789 m!29463))

(declare-fun m!29465 () Bool)

(assert (=> d!14789 m!29465))

(assert (=> b!28059 m!29461))

(assert (=> b!28059 m!29463))

(declare-fun m!29467 () Bool)

(assert (=> b!28059 m!29467))

(declare-fun m!29469 () Bool)

(assert (=> b!28050 m!29469))

(declare-fun m!29471 () Bool)

(assert (=> b!28044 m!29471))

(declare-fun m!29473 () Bool)

(assert (=> b!28063 m!29473))

(declare-fun m!29475 () Bool)

(assert (=> b!28051 m!29475))

(declare-fun m!29477 () Bool)

(assert (=> b!28051 m!29477))

(declare-fun m!29479 () Bool)

(assert (=> b!28046 m!29479))

(declare-fun m!29481 () Bool)

(assert (=> b!28057 m!29481))

(declare-fun m!29483 () Bool)

(assert (=> b!28048 m!29483))

(declare-fun m!29485 () Bool)

(assert (=> b!28054 m!29485))

(declare-fun m!29487 () Bool)

(assert (=> b!28049 m!29487))

(assert (=> b!28053 m!29461))

(assert (=> b!28053 m!29463))

(assert (=> b!28053 m!29467))

(declare-fun m!29489 () Bool)

(assert (=> b!28064 m!29489))

(declare-fun m!29491 () Bool)

(assert (=> b!28060 m!29491))

(declare-fun m!29493 () Bool)

(assert (=> b!28047 m!29493))

(declare-fun m!29495 () Bool)

(assert (=> b!28058 m!29495))

(assert (=> b!28013 d!14789))

(declare-fun b!28066 () Bool)

(declare-fun e!14351 () Int)

(declare-fun lt!4839 () Int)

(declare-fun lt!4841 () Int)

(assert (=> b!28066 (= e!14351 (+ 1 (ite (>= lt!4839 lt!4841) lt!4839 lt!4841)))))

(assert (=> b!28066 (= lt!4841 (level!52 (right!711 (right!711 (left!708 xs!533)))))))

(assert (=> b!28066 (= lt!4839 (level!52 (left!708 (right!711 (left!708 xs!533)))))))

(declare-fun d!14791 () Bool)

(declare-fun lt!4840 () Int)

(assert (=> d!14791 (>= lt!4840 0)))

(assert (=> d!14791 (= lt!4840 e!14351)))

(declare-fun c!6151 () Bool)

(assert (=> d!14791 (= c!6151 (or (is-Empty!74 (right!711 (left!708 xs!533))) (is-Single!63 (right!711 (left!708 xs!533)))))))

(assert (=> d!14791 (= (level!52 (right!711 (left!708 xs!533))) lt!4840)))

(declare-fun b!28065 () Bool)

(assert (=> b!28065 (= e!14351 0)))

(assert (= (and d!14791 c!6151) b!28065))

(assert (= (and d!14791 (not c!6151)) b!28066))

(declare-fun m!29497 () Bool)

(assert (=> b!28066 m!29497))

(declare-fun m!29499 () Bool)

(assert (=> b!28066 m!29499))

(assert (=> b!27883 d!14791))

(declare-fun b!28068 () Bool)

(declare-fun e!14352 () Int)

(declare-fun lt!4842 () Int)

(declare-fun lt!4844 () Int)

(assert (=> b!28068 (= e!14352 (+ 1 (ite (>= lt!4842 lt!4844) lt!4842 lt!4844)))))

(assert (=> b!28068 (= lt!4844 (level!52 (right!711 (left!708 (left!708 xs!533)))))))

(assert (=> b!28068 (= lt!4842 (level!52 (left!708 (left!708 (left!708 xs!533)))))))

(declare-fun d!14793 () Bool)

(declare-fun lt!4843 () Int)

(assert (=> d!14793 (>= lt!4843 0)))

(assert (=> d!14793 (= lt!4843 e!14352)))

(declare-fun c!6152 () Bool)

(assert (=> d!14793 (= c!6152 (or (is-Empty!74 (left!708 (left!708 xs!533))) (is-Single!63 (left!708 (left!708 xs!533)))))))

(assert (=> d!14793 (= (level!52 (left!708 (left!708 xs!533))) lt!4843)))

(declare-fun b!28067 () Bool)

(assert (=> b!28067 (= e!14352 0)))

(assert (= (and d!14793 c!6152) b!28067))

(assert (= (and d!14793 (not c!6152)) b!28068))

(declare-fun m!29501 () Bool)

(assert (=> b!28068 m!29501))

(declare-fun m!29503 () Bool)

(assert (=> b!28068 m!29503))

(assert (=> b!27883 d!14793))

(declare-fun d!14795 () Bool)

(assert (=> d!14795 (= (isEmpty!320 (left!708 xs!533)) (= (left!708 xs!533) Empty!74))))

(assert (=> b!27947 d!14795))

(declare-fun b!28073 () Bool)

(declare-fun e!14355 () Bool)

(assert (=> b!28073 (= e!14355 (= (++!41 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (right!711 xs!533))) (toList!116 ys!77)) (++!41 (toList!116 (left!708 xs!533)) (++!41 (toList!116 (right!711 xs!533)) (toList!116 ys!77)))))))

(declare-fun lt!4847 () Bool)

(assert (=> b!28073 (= lt!4847 (appendAssoc!9 (t!4375 (toList!116 (left!708 xs!533))) (toList!116 (right!711 xs!533)) (toList!116 ys!77)))))

(declare-fun d!14797 () Bool)

(assert (=> d!14797 e!14355))

(declare-fun c!6155 () Bool)

(assert (=> d!14797 (= c!6155 (is-Cons!355 (toList!116 (left!708 xs!533))))))

(assert (=> d!14797 (= (appendAssoc!9 (toList!116 (left!708 xs!533)) (toList!116 (right!711 xs!533)) (toList!116 ys!77)) true)))

(declare-fun b!28074 () Bool)

(assert (=> b!28074 (= e!14355 (= (++!41 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (right!711 xs!533))) (toList!116 ys!77)) (++!41 (toList!116 (left!708 xs!533)) (++!41 (toList!116 (right!711 xs!533)) (toList!116 ys!77)))))))

(assert (= (and d!14797 c!6155) b!28073))

(assert (= (and d!14797 (not c!6155)) b!28074))

(assert (=> b!28073 m!29389))

(assert (=> b!28073 m!29365))

(declare-fun m!29505 () Bool)

(assert (=> b!28073 m!29505))

(assert (=> b!28073 m!29387))

(assert (=> b!28073 m!29389))

(declare-fun m!29507 () Bool)

(assert (=> b!28073 m!29507))

(assert (=> b!28073 m!29387))

(declare-fun m!29509 () Bool)

(assert (=> b!28073 m!29509))

(declare-fun m!29511 () Bool)

(assert (=> b!28073 m!29511))

(assert (=> b!28073 m!29389))

(assert (=> b!28073 m!29365))

(assert (=> b!28073 m!29509))

(assert (=> b!28073 m!29507))

(assert (=> b!28073 m!29365))

(declare-fun m!29513 () Bool)

(assert (=> b!28073 m!29513))

(assert (=> b!28074 m!29387))

(assert (=> b!28074 m!29389))

(assert (=> b!28074 m!29507))

(assert (=> b!28074 m!29507))

(assert (=> b!28074 m!29365))

(assert (=> b!28074 m!29513))

(assert (=> b!28074 m!29389))

(assert (=> b!28074 m!29365))

(assert (=> b!28074 m!29509))

(assert (=> b!28074 m!29387))

(assert (=> b!28074 m!29509))

(assert (=> b!28074 m!29511))

(assert (=> b!27939 d!14797))

(declare-fun b!28085 () Bool)

(declare-fun e!14361 () List!361)

(assert (=> b!28085 (= e!14361 (Cons!355 (x!8933 (left!708 xs!533)) Nil!356))))

(declare-fun b!28086 () Bool)

(assert (=> b!28086 (= e!14361 (++!41 (toList!116 (left!708 (left!708 xs!533))) (toList!116 (right!711 (left!708 xs!533)))))))

(declare-fun b!28083 () Bool)

(declare-fun e!14360 () List!361)

(assert (=> b!28083 (= e!14360 Nil!356)))

(declare-fun d!14799 () Bool)

(declare-fun lt!4850 () List!361)

(declare-fun size!271 (List!361) Int)

(declare-fun size!272 (Conc!64) Int)

(assert (=> d!14799 (= (size!271 lt!4850) (size!272 (left!708 xs!533)))))

(assert (=> d!14799 (= lt!4850 e!14360)))

(declare-fun c!6161 () Bool)

(assert (=> d!14799 (= c!6161 (is-Empty!74 (left!708 xs!533)))))

(assert (=> d!14799 (= (toList!116 (left!708 xs!533)) lt!4850)))

(declare-fun b!28084 () Bool)

(assert (=> b!28084 (= e!14360 e!14361)))

(declare-fun c!6160 () Bool)

(assert (=> b!28084 (= c!6160 (is-Single!63 (left!708 xs!533)))))

(assert (= (and b!28084 c!6160) b!28085))

(assert (= (and b!28084 (not c!6160)) b!28086))

(assert (= (and d!14799 c!6161) b!28083))

(assert (= (and d!14799 (not c!6161)) b!28084))

(declare-fun m!29515 () Bool)

(assert (=> b!28086 m!29515))

(declare-fun m!29517 () Bool)

(assert (=> b!28086 m!29517))

(assert (=> b!28086 m!29515))

(assert (=> b!28086 m!29517))

(declare-fun m!29519 () Bool)

(assert (=> b!28086 m!29519))

(declare-fun m!29521 () Bool)

(assert (=> d!14799 m!29521))

(declare-fun m!29523 () Bool)

(assert (=> d!14799 m!29523))

(assert (=> b!27939 d!14799))

(declare-fun b!28089 () Bool)

(declare-fun e!14363 () List!361)

(assert (=> b!28089 (= e!14363 (Cons!355 (x!8933 (right!711 xs!533)) Nil!356))))

(declare-fun b!28090 () Bool)

(assert (=> b!28090 (= e!14363 (++!41 (toList!116 (left!708 (right!711 xs!533))) (toList!116 (right!711 (right!711 xs!533)))))))

(declare-fun b!28087 () Bool)

(declare-fun e!14362 () List!361)

(assert (=> b!28087 (= e!14362 Nil!356)))

(declare-fun d!14801 () Bool)

(declare-fun lt!4851 () List!361)

(assert (=> d!14801 (= (size!271 lt!4851) (size!272 (right!711 xs!533)))))

(assert (=> d!14801 (= lt!4851 e!14362)))

(declare-fun c!6163 () Bool)

(assert (=> d!14801 (= c!6163 (is-Empty!74 (right!711 xs!533)))))

(assert (=> d!14801 (= (toList!116 (right!711 xs!533)) lt!4851)))

(declare-fun b!28088 () Bool)

(assert (=> b!28088 (= e!14362 e!14363)))

(declare-fun c!6162 () Bool)

(assert (=> b!28088 (= c!6162 (is-Single!63 (right!711 xs!533)))))

(assert (= (and b!28088 c!6162) b!28089))

(assert (= (and b!28088 (not c!6162)) b!28090))

(assert (= (and d!14801 c!6163) b!28087))

(assert (= (and d!14801 (not c!6163)) b!28088))

(assert (=> b!28090 m!29397))

(assert (=> b!28090 m!29399))

(assert (=> b!28090 m!29397))

(assert (=> b!28090 m!29399))

(declare-fun m!29525 () Bool)

(assert (=> b!28090 m!29525))

(declare-fun m!29527 () Bool)

(assert (=> d!14801 m!29527))

(declare-fun m!29529 () Bool)

(assert (=> d!14801 m!29529))

(assert (=> b!27939 d!14801))

(declare-fun b!28093 () Bool)

(declare-fun e!14365 () List!361)

(assert (=> b!28093 (= e!14365 (Cons!355 (x!8933 ys!77) Nil!356))))

(declare-fun b!28094 () Bool)

(assert (=> b!28094 (= e!14365 (++!41 (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))))))

(declare-fun b!28091 () Bool)

(declare-fun e!14364 () List!361)

(assert (=> b!28091 (= e!14364 Nil!356)))

(declare-fun d!14803 () Bool)

(declare-fun lt!4852 () List!361)

(assert (=> d!14803 (= (size!271 lt!4852) (size!272 ys!77))))

(assert (=> d!14803 (= lt!4852 e!14364)))

(declare-fun c!6165 () Bool)

(assert (=> d!14803 (= c!6165 (is-Empty!74 ys!77))))

(assert (=> d!14803 (= (toList!116 ys!77) lt!4852)))

(declare-fun b!28092 () Bool)

(assert (=> b!28092 (= e!14364 e!14365)))

(declare-fun c!6164 () Bool)

(assert (=> b!28092 (= c!6164 (is-Single!63 ys!77))))

(assert (= (and b!28092 c!6164) b!28093))

(assert (= (and b!28092 (not c!6164)) b!28094))

(assert (= (and d!14803 c!6165) b!28091))

(assert (= (and d!14803 (not c!6165)) b!28092))

(assert (=> b!28094 m!29375))

(assert (=> b!28094 m!29377))

(assert (=> b!28094 m!29375))

(assert (=> b!28094 m!29377))

(declare-fun m!29531 () Bool)

(assert (=> b!28094 m!29531))

(declare-fun m!29533 () Bool)

(assert (=> d!14803 m!29533))

(declare-fun m!29535 () Bool)

(assert (=> d!14803 m!29535))

(assert (=> b!27939 d!14803))

(declare-fun b!28095 () Bool)

(declare-fun e!14366 () Bool)

(assert (=> b!28095 (= e!14366 (= (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 ys!77))) (toList!116 (right!711 ys!77))) (++!41 (toList!116 xs!533) (++!41 (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))))))))

(declare-fun lt!4853 () Bool)

(assert (=> b!28095 (= lt!4853 (appendAssoc!9 (t!4375 (toList!116 xs!533)) (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))))))

(declare-fun d!14805 () Bool)

(assert (=> d!14805 e!14366))

(declare-fun c!6166 () Bool)

(assert (=> d!14805 (= c!6166 (is-Cons!355 (toList!116 xs!533)))))

(assert (=> d!14805 (= (appendAssoc!9 (toList!116 xs!533) (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))) true)))

(declare-fun b!28096 () Bool)

(assert (=> b!28096 (= e!14366 (= (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 ys!77))) (toList!116 (right!711 ys!77))) (++!41 (toList!116 xs!533) (++!41 (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))))))))

(assert (= (and d!14805 c!6166) b!28095))

(assert (= (and d!14805 (not c!6166)) b!28096))

(assert (=> b!28095 m!29375))

(assert (=> b!28095 m!29377))

(declare-fun m!29537 () Bool)

(assert (=> b!28095 m!29537))

(assert (=> b!28095 m!29363))

(assert (=> b!28095 m!29375))

(declare-fun m!29539 () Bool)

(assert (=> b!28095 m!29539))

(assert (=> b!28095 m!29363))

(assert (=> b!28095 m!29531))

(declare-fun m!29541 () Bool)

(assert (=> b!28095 m!29541))

(assert (=> b!28095 m!29375))

(assert (=> b!28095 m!29377))

(assert (=> b!28095 m!29531))

(assert (=> b!28095 m!29539))

(assert (=> b!28095 m!29377))

(declare-fun m!29543 () Bool)

(assert (=> b!28095 m!29543))

(assert (=> b!28096 m!29363))

(assert (=> b!28096 m!29375))

(assert (=> b!28096 m!29539))

(assert (=> b!28096 m!29539))

(assert (=> b!28096 m!29377))

(assert (=> b!28096 m!29543))

(assert (=> b!28096 m!29375))

(assert (=> b!28096 m!29377))

(assert (=> b!28096 m!29531))

(assert (=> b!28096 m!29363))

(assert (=> b!28096 m!29531))

(assert (=> b!28096 m!29541))

(assert (=> b!27940 d!14805))

(declare-fun b!28099 () Bool)

(declare-fun e!14368 () List!361)

(assert (=> b!28099 (= e!14368 (Cons!355 (x!8933 xs!533) Nil!356))))

(declare-fun b!28100 () Bool)

(assert (=> b!28100 (= e!14368 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (right!711 xs!533))))))

(declare-fun b!28097 () Bool)

(declare-fun e!14367 () List!361)

(assert (=> b!28097 (= e!14367 Nil!356)))

(declare-fun d!14807 () Bool)

(declare-fun lt!4854 () List!361)

(assert (=> d!14807 (= (size!271 lt!4854) (size!272 xs!533))))

(assert (=> d!14807 (= lt!4854 e!14367)))

(declare-fun c!6168 () Bool)

(assert (=> d!14807 (= c!6168 (is-Empty!74 xs!533))))

(assert (=> d!14807 (= (toList!116 xs!533) lt!4854)))

(declare-fun b!28098 () Bool)

(assert (=> b!28098 (= e!14367 e!14368)))

(declare-fun c!6167 () Bool)

(assert (=> b!28098 (= c!6167 (is-Single!63 xs!533))))

(assert (= (and b!28098 c!6167) b!28099))

(assert (= (and b!28098 (not c!6167)) b!28100))

(assert (= (and d!14807 c!6168) b!28097))

(assert (= (and d!14807 (not c!6168)) b!28098))

(assert (=> b!28100 m!29387))

(assert (=> b!28100 m!29389))

(assert (=> b!28100 m!29387))

(assert (=> b!28100 m!29389))

(assert (=> b!28100 m!29507))

(declare-fun m!29545 () Bool)

(assert (=> d!14807 m!29545))

(declare-fun m!29547 () Bool)

(assert (=> d!14807 m!29547))

(assert (=> b!27940 d!14807))

(declare-fun b!28103 () Bool)

(declare-fun e!14370 () List!361)

(assert (=> b!28103 (= e!14370 (Cons!355 (x!8933 (left!708 ys!77)) Nil!356))))

(declare-fun b!28104 () Bool)

(assert (=> b!28104 (= e!14370 (++!41 (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))))))

(declare-fun b!28101 () Bool)

(declare-fun e!14369 () List!361)

(assert (=> b!28101 (= e!14369 Nil!356)))

(declare-fun d!14809 () Bool)

(declare-fun lt!4855 () List!361)

(assert (=> d!14809 (= (size!271 lt!4855) (size!272 (left!708 ys!77)))))

(assert (=> d!14809 (= lt!4855 e!14369)))

(declare-fun c!6170 () Bool)

(assert (=> d!14809 (= c!6170 (is-Empty!74 (left!708 ys!77)))))

(assert (=> d!14809 (= (toList!116 (left!708 ys!77)) lt!4855)))

(declare-fun b!28102 () Bool)

(assert (=> b!28102 (= e!14369 e!14370)))

(declare-fun c!6169 () Bool)

(assert (=> b!28102 (= c!6169 (is-Single!63 (left!708 ys!77)))))

(assert (= (and b!28102 c!6169) b!28103))

(assert (= (and b!28102 (not c!6169)) b!28104))

(assert (= (and d!14809 c!6170) b!28101))

(assert (= (and d!14809 (not c!6170)) b!28102))

(assert (=> b!28104 m!29381))

(assert (=> b!28104 m!29383))

(assert (=> b!28104 m!29381))

(assert (=> b!28104 m!29383))

(declare-fun m!29549 () Bool)

(assert (=> b!28104 m!29549))

(declare-fun m!29551 () Bool)

(assert (=> d!14809 m!29551))

(declare-fun m!29553 () Bool)

(assert (=> d!14809 m!29553))

(assert (=> b!27940 d!14809))

(declare-fun b!28107 () Bool)

(declare-fun e!14372 () List!361)

(assert (=> b!28107 (= e!14372 (Cons!355 (x!8933 (right!711 ys!77)) Nil!356))))

(declare-fun b!28108 () Bool)

(assert (=> b!28108 (= e!14372 (++!41 (toList!116 (left!708 (right!711 ys!77))) (toList!116 (right!711 (right!711 ys!77)))))))

(declare-fun b!28105 () Bool)

(declare-fun e!14371 () List!361)

(assert (=> b!28105 (= e!14371 Nil!356)))

(declare-fun d!14811 () Bool)

(declare-fun lt!4856 () List!361)

(assert (=> d!14811 (= (size!271 lt!4856) (size!272 (right!711 ys!77)))))

(assert (=> d!14811 (= lt!4856 e!14371)))

(declare-fun c!6172 () Bool)

(assert (=> d!14811 (= c!6172 (is-Empty!74 (right!711 ys!77)))))

(assert (=> d!14811 (= (toList!116 (right!711 ys!77)) lt!4856)))

(declare-fun b!28106 () Bool)

(assert (=> b!28106 (= e!14371 e!14372)))

(declare-fun c!6171 () Bool)

(assert (=> b!28106 (= c!6171 (is-Single!63 (right!711 ys!77)))))

(assert (= (and b!28106 c!6171) b!28107))

(assert (= (and b!28106 (not c!6171)) b!28108))

(assert (= (and d!14811 c!6172) b!28105))

(assert (= (and d!14811 (not c!6172)) b!28106))

(declare-fun m!29555 () Bool)

(assert (=> b!28108 m!29555))

(declare-fun m!29557 () Bool)

(assert (=> b!28108 m!29557))

(assert (=> b!28108 m!29555))

(assert (=> b!28108 m!29557))

(declare-fun m!29559 () Bool)

(assert (=> b!28108 m!29559))

(declare-fun m!29561 () Bool)

(assert (=> d!14811 m!29561))

(declare-fun m!29563 () Bool)

(assert (=> d!14811 m!29563))

(assert (=> b!27940 d!14811))

(declare-fun b!28111 () Bool)

(declare-fun res!12890 () Bool)

(declare-fun e!14374 () Bool)

(assert (=> b!28111 (=> (not res!12890) (not e!14374))))

(assert (=> b!28111 (= res!12890 (concInv!58 (left!708 (right!711 xs!533))))))

(declare-fun b!28109 () Bool)

(declare-fun e!14373 () Bool)

(assert (=> b!28109 (= e!14373 e!14374)))

(declare-fun res!12893 () Bool)

(assert (=> b!28109 (=> (not res!12893) (not e!14374))))

(assert (=> b!28109 (= res!12893 (not (isEmpty!320 (left!708 (right!711 xs!533)))))))

(declare-fun b!28112 () Bool)

(assert (=> b!28112 (= e!14374 (concInv!58 (right!711 (right!711 xs!533))))))

(declare-fun d!14813 () Bool)

(declare-fun res!12891 () Bool)

(assert (=> d!14813 (=> res!12891 e!14373)))

(assert (=> d!14813 (= res!12891 (not (is-CC!63 (right!711 xs!533))))))

(assert (=> d!14813 (= (concInv!58 (right!711 xs!533)) e!14373)))

(declare-fun b!28110 () Bool)

(declare-fun res!12892 () Bool)

(assert (=> b!28110 (=> (not res!12892) (not e!14374))))

(assert (=> b!28110 (= res!12892 (not (isEmpty!320 (right!711 (right!711 xs!533)))))))

(assert (= (and d!14813 (not res!12891)) b!28109))

(assert (= (and b!28109 res!12893) b!28110))

(assert (= (and b!28110 res!12892) b!28111))

(assert (= (and b!28111 res!12890) b!28112))

(declare-fun m!29565 () Bool)

(assert (=> b!28111 m!29565))

(declare-fun m!29567 () Bool)

(assert (=> b!28109 m!29567))

(assert (=> b!28112 m!29427))

(assert (=> b!28110 m!29451))

(assert (=> b!27950 d!14813))

(declare-fun b!28114 () Bool)

(declare-fun e!14375 () Int)

(declare-fun lt!4857 () Int)

(declare-fun lt!4859 () Int)

(assert (=> b!28114 (= e!14375 (+ 1 (ite (>= lt!4857 lt!4859) lt!4857 lt!4859)))))

(assert (=> b!28114 (= lt!4859 (level!52 (right!711 (right!711 ys!77))))))

(assert (=> b!28114 (= lt!4857 (level!52 (left!708 (right!711 ys!77))))))

(declare-fun d!14815 () Bool)

(declare-fun lt!4858 () Int)

(assert (=> d!14815 (>= lt!4858 0)))

(assert (=> d!14815 (= lt!4858 e!14375)))

(declare-fun c!6173 () Bool)

(assert (=> d!14815 (= c!6173 (or (is-Empty!74 (right!711 ys!77)) (is-Single!63 (right!711 ys!77))))))

(assert (=> d!14815 (= (level!52 (right!711 ys!77)) lt!4858)))

(declare-fun b!28113 () Bool)

(assert (=> b!28113 (= e!14375 0)))

(assert (= (and d!14815 c!6173) b!28113))

(assert (= (and d!14815 (not c!6173)) b!28114))

(declare-fun m!29569 () Bool)

(assert (=> b!28114 m!29569))

(declare-fun m!29571 () Bool)

(assert (=> b!28114 m!29571))

(assert (=> b!27877 d!14815))

(declare-fun b!28116 () Bool)

(declare-fun e!14376 () Int)

(declare-fun lt!4860 () Int)

(declare-fun lt!4862 () Int)

(assert (=> b!28116 (= e!14376 (+ 1 (ite (>= lt!4860 lt!4862) lt!4860 lt!4862)))))

(assert (=> b!28116 (= lt!4862 (level!52 (right!711 (left!708 ys!77))))))

(assert (=> b!28116 (= lt!4860 (level!52 (left!708 (left!708 ys!77))))))

(declare-fun d!14817 () Bool)

(declare-fun lt!4861 () Int)

(assert (=> d!14817 (>= lt!4861 0)))

(assert (=> d!14817 (= lt!4861 e!14376)))

(declare-fun c!6174 () Bool)

(assert (=> d!14817 (= c!6174 (or (is-Empty!74 (left!708 ys!77)) (is-Single!63 (left!708 ys!77))))))

(assert (=> d!14817 (= (level!52 (left!708 ys!77)) lt!4861)))

(declare-fun b!28115 () Bool)

(assert (=> b!28115 (= e!14376 0)))

(assert (= (and d!14817 c!6174) b!28115))

(assert (= (and d!14817 (not c!6174)) b!28116))

(declare-fun m!29573 () Bool)

(assert (=> b!28116 m!29573))

(declare-fun m!29575 () Bool)

(assert (=> b!28116 m!29575))

(assert (=> b!27877 d!14817))

(declare-fun b!28119 () Bool)

(declare-fun res!12894 () Bool)

(declare-fun e!14378 () Bool)

(assert (=> b!28119 (=> (not res!12894) (not e!14378))))

(assert (=> b!28119 (= res!12894 (concInv!58 (left!708 (left!708 res!5536))))))

(declare-fun b!28117 () Bool)

(declare-fun e!14377 () Bool)

(assert (=> b!28117 (= e!14377 e!14378)))

(declare-fun res!12897 () Bool)

(assert (=> b!28117 (=> (not res!12897) (not e!14378))))

(assert (=> b!28117 (= res!12897 (not (isEmpty!320 (left!708 (left!708 res!5536)))))))

(declare-fun b!28120 () Bool)

(assert (=> b!28120 (= e!14378 (concInv!58 (right!711 (left!708 res!5536))))))

(declare-fun d!14819 () Bool)

(declare-fun res!12895 () Bool)

(assert (=> d!14819 (=> res!12895 e!14377)))

(assert (=> d!14819 (= res!12895 (not (is-CC!63 (left!708 res!5536))))))

(assert (=> d!14819 (= (concInv!58 (left!708 res!5536)) e!14377)))

(declare-fun b!28118 () Bool)

(declare-fun res!12896 () Bool)

(assert (=> b!28118 (=> (not res!12896) (not e!14378))))

(assert (=> b!28118 (= res!12896 (not (isEmpty!320 (right!711 (left!708 res!5536)))))))

(assert (= (and d!14819 (not res!12895)) b!28117))

(assert (= (and b!28117 res!12897) b!28118))

(assert (= (and b!28118 res!12896) b!28119))

(assert (= (and b!28119 res!12894) b!28120))

(declare-fun m!29577 () Bool)

(assert (=> b!28119 m!29577))

(declare-fun m!29579 () Bool)

(assert (=> b!28117 m!29579))

(declare-fun m!29581 () Bool)

(assert (=> b!28120 m!29581))

(declare-fun m!29583 () Bool)

(assert (=> b!28118 m!29583))

(assert (=> b!27945 d!14819))

(assert (=> b!27911 d!14757))

(assert (=> b!27911 d!14759))

(assert (=> b!28017 d!14765))

(declare-fun d!14821 () Bool)

(assert (=> d!14821 (= (isEmpty!320 (left!708 res!5536)) (= (left!708 res!5536) Empty!74))))

(assert (=> b!27943 d!14821))

(declare-fun d!14823 () Bool)

(declare-fun res!12899 () Bool)

(declare-fun e!14379 () Bool)

(assert (=> d!14823 (=> res!12899 e!14379)))

(assert (=> d!14823 (= res!12899 (not (is-CC!63 lt!4807)))))

(assert (=> d!14823 (= (balanced!59 lt!4807) e!14379)))

(declare-fun b!28123 () Bool)

(declare-fun res!12901 () Bool)

(declare-fun e!14380 () Bool)

(assert (=> b!28123 (=> (not res!12901) (not e!14380))))

(assert (=> b!28123 (= res!12901 (balanced!59 (left!708 lt!4807)))))

(declare-fun b!28121 () Bool)

(assert (=> b!28121 (= e!14379 e!14380)))

(declare-fun res!12898 () Bool)

(assert (=> b!28121 (=> (not res!12898) (not e!14380))))

(assert (=> b!28121 (= res!12898 (>= (- (level!52 (left!708 lt!4807)) (level!52 (right!711 lt!4807))) (- 1)))))

(declare-fun b!28124 () Bool)

(assert (=> b!28124 (= e!14380 (balanced!59 (right!711 lt!4807)))))

(declare-fun b!28122 () Bool)

(declare-fun res!12900 () Bool)

(assert (=> b!28122 (=> (not res!12900) (not e!14380))))

(assert (=> b!28122 (= res!12900 (<= (- (level!52 (left!708 lt!4807)) (level!52 (right!711 lt!4807))) 1))))

(assert (= (and d!14823 (not res!12899)) b!28121))

(assert (= (and b!28121 res!12898) b!28122))

(assert (= (and b!28122 res!12900) b!28123))

(assert (= (and b!28123 res!12901) b!28124))

(declare-fun m!29585 () Bool)

(assert (=> b!28123 m!29585))

(declare-fun m!29587 () Bool)

(assert (=> b!28121 m!29587))

(declare-fun m!29589 () Bool)

(assert (=> b!28121 m!29589))

(declare-fun m!29591 () Bool)

(assert (=> b!28124 m!29591))

(assert (=> b!28122 m!29587))

(assert (=> b!28122 m!29589))

(assert (=> b!28010 d!14823))

(declare-fun d!14825 () Bool)

(declare-fun res!12903 () Bool)

(declare-fun e!14381 () Bool)

(assert (=> d!14825 (=> res!12903 e!14381)))

(assert (=> d!14825 (= res!12903 (not (is-CC!63 (right!711 res!5536))))))

(assert (=> d!14825 (= (balanced!59 (right!711 res!5536)) e!14381)))

(declare-fun b!28127 () Bool)

(declare-fun res!12905 () Bool)

(declare-fun e!14382 () Bool)

(assert (=> b!28127 (=> (not res!12905) (not e!14382))))

(assert (=> b!28127 (= res!12905 (balanced!59 (left!708 (right!711 res!5536))))))

(declare-fun b!28125 () Bool)

(assert (=> b!28125 (= e!14381 e!14382)))

(declare-fun res!12902 () Bool)

(assert (=> b!28125 (=> (not res!12902) (not e!14382))))

(assert (=> b!28125 (= res!12902 (>= (- (level!52 (left!708 (right!711 res!5536))) (level!52 (right!711 (right!711 res!5536)))) (- 1)))))

(declare-fun b!28128 () Bool)

(assert (=> b!28128 (= e!14382 (balanced!59 (right!711 (right!711 res!5536))))))

(declare-fun b!28126 () Bool)

(declare-fun res!12904 () Bool)

(assert (=> b!28126 (=> (not res!12904) (not e!14382))))

(assert (=> b!28126 (= res!12904 (<= (- (level!52 (left!708 (right!711 res!5536))) (level!52 (right!711 (right!711 res!5536)))) 1))))

(assert (= (and d!14825 (not res!12903)) b!28125))

(assert (= (and b!28125 res!12902) b!28126))

(assert (= (and b!28126 res!12904) b!28127))

(assert (= (and b!28127 res!12905) b!28128))

(declare-fun m!29593 () Bool)

(assert (=> b!28127 m!29593))

(declare-fun m!29595 () Bool)

(assert (=> b!28125 m!29595))

(declare-fun m!29597 () Bool)

(assert (=> b!28125 m!29597))

(declare-fun m!29599 () Bool)

(assert (=> b!28128 m!29599))

(assert (=> b!28126 m!29595))

(assert (=> b!28126 m!29597))

(assert (=> b!27897 d!14825))

(declare-fun b!28130 () Bool)

(declare-fun e!14383 () Int)

(declare-fun lt!4863 () Int)

(declare-fun lt!4865 () Int)

(assert (=> b!28130 (= e!14383 (+ 1 (ite (>= lt!4863 lt!4865) lt!4863 lt!4865)))))

(assert (=> b!28130 (= lt!4865 (level!52 (right!711 (right!711 nrr!4))))))

(assert (=> b!28130 (= lt!4863 (level!52 (left!708 (right!711 nrr!4))))))

(declare-fun d!14827 () Bool)

(declare-fun lt!4864 () Int)

(assert (=> d!14827 (>= lt!4864 0)))

(assert (=> d!14827 (= lt!4864 e!14383)))

(declare-fun c!6175 () Bool)

(assert (=> d!14827 (= c!6175 (or (is-Empty!74 (right!711 nrr!4)) (is-Single!63 (right!711 nrr!4))))))

(assert (=> d!14827 (= (level!52 (right!711 nrr!4)) lt!4864)))

(declare-fun b!28129 () Bool)

(assert (=> b!28129 (= e!14383 0)))

(assert (= (and d!14827 c!6175) b!28129))

(assert (= (and d!14827 (not c!6175)) b!28130))

(declare-fun m!29601 () Bool)

(assert (=> b!28130 m!29601))

(declare-fun m!29603 () Bool)

(assert (=> b!28130 m!29603))

(assert (=> b!27881 d!14827))

(declare-fun b!28132 () Bool)

(declare-fun e!14384 () Int)

(declare-fun lt!4866 () Int)

(declare-fun lt!4868 () Int)

(assert (=> b!28132 (= e!14384 (+ 1 (ite (>= lt!4866 lt!4868) lt!4866 lt!4868)))))

(assert (=> b!28132 (= lt!4868 (level!52 (right!711 (left!708 nrr!4))))))

(assert (=> b!28132 (= lt!4866 (level!52 (left!708 (left!708 nrr!4))))))

(declare-fun d!14829 () Bool)

(declare-fun lt!4867 () Int)

(assert (=> d!14829 (>= lt!4867 0)))

(assert (=> d!14829 (= lt!4867 e!14384)))

(declare-fun c!6176 () Bool)

(assert (=> d!14829 (= c!6176 (or (is-Empty!74 (left!708 nrr!4)) (is-Single!63 (left!708 nrr!4))))))

(assert (=> d!14829 (= (level!52 (left!708 nrr!4)) lt!4867)))

(declare-fun b!28131 () Bool)

(assert (=> b!28131 (= e!14384 0)))

(assert (= (and d!14829 c!6176) b!28131))

(assert (= (and d!14829 (not c!6176)) b!28132))

(declare-fun m!29605 () Bool)

(assert (=> b!28132 m!29605))

(declare-fun m!29607 () Bool)

(assert (=> b!28132 m!29607))

(assert (=> b!27881 d!14829))

(declare-fun b!28135 () Bool)

(declare-fun res!12906 () Bool)

(declare-fun e!14386 () Bool)

(assert (=> b!28135 (=> (not res!12906) (not e!14386))))

(assert (=> b!28135 (= res!12906 (concInv!58 (left!708 (left!708 ys!77))))))

(declare-fun b!28133 () Bool)

(declare-fun e!14385 () Bool)

(assert (=> b!28133 (= e!14385 e!14386)))

(declare-fun res!12909 () Bool)

(assert (=> b!28133 (=> (not res!12909) (not e!14386))))

(assert (=> b!28133 (= res!12909 (not (isEmpty!320 (left!708 (left!708 ys!77)))))))

(declare-fun b!28136 () Bool)

(assert (=> b!28136 (= e!14386 (concInv!58 (right!711 (left!708 ys!77))))))

(declare-fun d!14831 () Bool)

(declare-fun res!12907 () Bool)

(assert (=> d!14831 (=> res!12907 e!14385)))

(assert (=> d!14831 (= res!12907 (not (is-CC!63 (left!708 ys!77))))))

(assert (=> d!14831 (= (concInv!58 (left!708 ys!77)) e!14385)))

(declare-fun b!28134 () Bool)

(declare-fun res!12908 () Bool)

(assert (=> b!28134 (=> (not res!12908) (not e!14386))))

(assert (=> b!28134 (= res!12908 (not (isEmpty!320 (right!711 (left!708 ys!77)))))))

(assert (= (and d!14831 (not res!12907)) b!28133))

(assert (= (and b!28133 res!12909) b!28134))

(assert (= (and b!28134 res!12908) b!28135))

(assert (= (and b!28135 res!12906) b!28136))

(declare-fun m!29609 () Bool)

(assert (=> b!28135 m!29609))

(declare-fun m!29611 () Bool)

(assert (=> b!28133 m!29611))

(declare-fun m!29613 () Bool)

(assert (=> b!28136 m!29613))

(declare-fun m!29615 () Bool)

(assert (=> b!28134 m!29615))

(assert (=> b!27908 d!14831))

(declare-fun d!14833 () Bool)

(assert (=> d!14833 (= (isEmpty!320 (right!711 xs!533)) (= (right!711 xs!533) Empty!74))))

(assert (=> b!27948 d!14833))

(declare-fun b!28137 () Bool)

(declare-fun e!14387 () Bool)

(assert (=> b!28137 (= e!14387 (= (++!41 (++!41 (toList!116 (left!708 (right!711 xs!533))) (toList!116 (right!711 (right!711 xs!533)))) (toList!116 ys!77)) (++!41 (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)))))))

(declare-fun lt!4869 () Bool)

(assert (=> b!28137 (= lt!4869 (appendAssoc!9 (t!4375 (toList!116 (left!708 (right!711 xs!533)))) (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)))))

(declare-fun d!14835 () Bool)

(assert (=> d!14835 e!14387))

(declare-fun c!6177 () Bool)

(assert (=> d!14835 (= c!6177 (is-Cons!355 (toList!116 (left!708 (right!711 xs!533)))))))

(assert (=> d!14835 (= (appendAssoc!9 (toList!116 (left!708 (right!711 xs!533))) (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)) true)))

(declare-fun b!28138 () Bool)

(assert (=> b!28138 (= e!14387 (= (++!41 (++!41 (toList!116 (left!708 (right!711 xs!533))) (toList!116 (right!711 (right!711 xs!533)))) (toList!116 ys!77)) (++!41 (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)))))))

(assert (= (and d!14835 c!6177) b!28137))

(assert (= (and d!14835 (not c!6177)) b!28138))

(assert (=> b!28137 m!29399))

(assert (=> b!28137 m!29365))

(declare-fun m!29617 () Bool)

(assert (=> b!28137 m!29617))

(assert (=> b!28137 m!29397))

(assert (=> b!28137 m!29399))

(assert (=> b!28137 m!29525))

(assert (=> b!28137 m!29397))

(assert (=> b!28137 m!29403))

(declare-fun m!29619 () Bool)

(assert (=> b!28137 m!29619))

(assert (=> b!28137 m!29399))

(assert (=> b!28137 m!29365))

(assert (=> b!28137 m!29403))

(assert (=> b!28137 m!29525))

(assert (=> b!28137 m!29365))

(declare-fun m!29621 () Bool)

(assert (=> b!28137 m!29621))

(assert (=> b!28138 m!29397))

(assert (=> b!28138 m!29399))

(assert (=> b!28138 m!29525))

(assert (=> b!28138 m!29525))

(assert (=> b!28138 m!29365))

(assert (=> b!28138 m!29621))

(assert (=> b!28138 m!29399))

(assert (=> b!28138 m!29365))

(assert (=> b!28138 m!29403))

(assert (=> b!28138 m!29397))

(assert (=> b!28138 m!29403))

(assert (=> b!28138 m!29619))

(assert (=> b!27934 d!14835))

(declare-fun b!28141 () Bool)

(declare-fun e!14389 () List!361)

(assert (=> b!28141 (= e!14389 (Cons!355 (x!8933 (left!708 (right!711 xs!533))) Nil!356))))

(declare-fun b!28142 () Bool)

(assert (=> b!28142 (= e!14389 (++!41 (toList!116 (left!708 (left!708 (right!711 xs!533)))) (toList!116 (right!711 (left!708 (right!711 xs!533))))))))

(declare-fun b!28139 () Bool)

(declare-fun e!14388 () List!361)

(assert (=> b!28139 (= e!14388 Nil!356)))

(declare-fun d!14837 () Bool)

(declare-fun lt!4870 () List!361)

(assert (=> d!14837 (= (size!271 lt!4870) (size!272 (left!708 (right!711 xs!533))))))

(assert (=> d!14837 (= lt!4870 e!14388)))

(declare-fun c!6179 () Bool)

(assert (=> d!14837 (= c!6179 (is-Empty!74 (left!708 (right!711 xs!533))))))

(assert (=> d!14837 (= (toList!116 (left!708 (right!711 xs!533))) lt!4870)))

(declare-fun b!28140 () Bool)

(assert (=> b!28140 (= e!14388 e!14389)))

(declare-fun c!6178 () Bool)

(assert (=> b!28140 (= c!6178 (is-Single!63 (left!708 (right!711 xs!533))))))

(assert (= (and b!28140 c!6178) b!28141))

(assert (= (and b!28140 (not c!6178)) b!28142))

(assert (= (and d!14837 c!6179) b!28139))

(assert (= (and d!14837 (not c!6179)) b!28140))

(declare-fun m!29623 () Bool)

(assert (=> b!28142 m!29623))

(declare-fun m!29625 () Bool)

(assert (=> b!28142 m!29625))

(assert (=> b!28142 m!29623))

(assert (=> b!28142 m!29625))

(declare-fun m!29627 () Bool)

(assert (=> b!28142 m!29627))

(declare-fun m!29629 () Bool)

(assert (=> d!14837 m!29629))

(declare-fun m!29631 () Bool)

(assert (=> d!14837 m!29631))

(assert (=> b!27934 d!14837))

(declare-fun b!28145 () Bool)

(declare-fun e!14391 () List!361)

(assert (=> b!28145 (= e!14391 (Cons!355 (x!8933 (right!711 (right!711 xs!533))) Nil!356))))

(declare-fun b!28146 () Bool)

(assert (=> b!28146 (= e!14391 (++!41 (toList!116 (left!708 (right!711 (right!711 xs!533)))) (toList!116 (right!711 (right!711 (right!711 xs!533))))))))

(declare-fun b!28143 () Bool)

(declare-fun e!14390 () List!361)

(assert (=> b!28143 (= e!14390 Nil!356)))

(declare-fun d!14839 () Bool)

(declare-fun lt!4871 () List!361)

(assert (=> d!14839 (= (size!271 lt!4871) (size!272 (right!711 (right!711 xs!533))))))

(assert (=> d!14839 (= lt!4871 e!14390)))

(declare-fun c!6181 () Bool)

(assert (=> d!14839 (= c!6181 (is-Empty!74 (right!711 (right!711 xs!533))))))

(assert (=> d!14839 (= (toList!116 (right!711 (right!711 xs!533))) lt!4871)))

(declare-fun b!28144 () Bool)

(assert (=> b!28144 (= e!14390 e!14391)))

(declare-fun c!6180 () Bool)

(assert (=> b!28144 (= c!6180 (is-Single!63 (right!711 (right!711 xs!533))))))

(assert (= (and b!28144 c!6180) b!28145))

(assert (= (and b!28144 (not c!6180)) b!28146))

(assert (= (and d!14839 c!6181) b!28143))

(assert (= (and d!14839 (not c!6181)) b!28144))

(declare-fun m!29633 () Bool)

(assert (=> b!28146 m!29633))

(declare-fun m!29635 () Bool)

(assert (=> b!28146 m!29635))

(assert (=> b!28146 m!29633))

(assert (=> b!28146 m!29635))

(declare-fun m!29637 () Bool)

(assert (=> b!28146 m!29637))

(declare-fun m!29639 () Bool)

(assert (=> d!14839 m!29639))

(declare-fun m!29641 () Bool)

(assert (=> d!14839 m!29641))

(assert (=> b!27934 d!14839))

(assert (=> b!27934 d!14803))

(declare-fun b!28147 () Bool)

(declare-fun e!14396 () Bool)

(declare-fun e!14399 () Bool)

(assert (=> b!28147 (= e!14396 e!14399)))

(declare-fun res!12912 () Bool)

(assert (=> b!28147 (=> (not res!12912) (not e!14399))))

(assert (=> b!28147 (= res!12912 (appendAssoc!9 (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533))))) (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77)))))

(declare-fun b!28148 () Bool)

(declare-fun e!14398 () Bool)

(declare-fun e!14400 () Bool)

(assert (=> b!28148 (= e!14398 e!14400)))

(declare-fun res!12918 () Bool)

(assert (=> b!28148 (=> (not res!12918) (not e!14400))))

(assert (=> b!28148 (= res!12918 (appendAssoc!9 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))))))

(declare-fun b!28149 () Bool)

(declare-fun e!14397 () Bool)

(assert (=> b!28149 (= e!14397 e!14398)))

(declare-fun res!12915 () Bool)

(assert (=> b!28149 (=> res!12915 e!14398)))

(assert (=> b!28149 (= res!12915 (not (is-CC!63 (left!708 ys!77))))))

(declare-fun d!14841 () Bool)

(declare-fun e!14395 () Bool)

(assert (=> d!14841 e!14395))

(declare-fun res!12913 () Bool)

(assert (=> d!14841 (=> (not res!12913) (not e!14395))))

(declare-fun e!14392 () Bool)

(assert (=> d!14841 (= res!12913 e!14392)))

(declare-fun res!12911 () Bool)

(assert (=> d!14841 (=> res!12911 e!14392)))

(assert (=> d!14841 (= res!12911 (not (is-CC!63 (right!711 (right!711 xs!533)))))))

(assert (=> d!14841 (= (appendAssocInst!13 (right!711 (right!711 xs!533)) ys!77) true)))

(declare-fun b!28150 () Bool)

(assert (=> b!28150 (= e!14399 (appendAssoc!9 (toList!116 (left!708 (right!711 (right!711 xs!533)))) (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533))))) (++!41 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77))))))

(declare-fun b!28151 () Bool)

(declare-fun e!14393 () Bool)

(assert (=> b!28151 (= e!14393 e!14396)))

(declare-fun res!12917 () Bool)

(assert (=> b!28151 (=> res!12917 e!14396)))

(assert (=> b!28151 (= res!12917 (not (is-CC!63 (right!711 (right!711 (right!711 xs!533))))))))

(declare-fun b!28152 () Bool)

(assert (=> b!28152 (= e!14392 e!14393)))

(declare-fun res!12914 () Bool)

(assert (=> b!28152 (=> (not res!12914) (not e!14393))))

(assert (=> b!28152 (= res!12914 (appendAssoc!9 (toList!116 (left!708 (right!711 (right!711 xs!533)))) (toList!116 (right!711 (right!711 (right!711 xs!533)))) (toList!116 ys!77)))))

(declare-fun b!28153 () Bool)

(declare-fun e!14394 () Bool)

(assert (=> b!28153 (= e!14394 e!14397)))

(declare-fun res!12916 () Bool)

(assert (=> b!28153 (=> (not res!12916) (not e!14397))))

(assert (=> b!28153 (= res!12916 (appendAssoc!9 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))))))

(declare-fun b!28154 () Bool)

(assert (=> b!28154 (= e!14400 (appendAssoc!9 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))))))

(declare-fun b!28155 () Bool)

(assert (=> b!28155 (= e!14395 e!14394)))

(declare-fun res!12910 () Bool)

(assert (=> b!28155 (=> res!12910 e!14394)))

(assert (=> b!28155 (= res!12910 (not (is-CC!63 ys!77)))))

(assert (= (and d!14841 (not res!12911)) b!28152))

(assert (= (and b!28152 res!12914) b!28151))

(assert (= (and b!28151 (not res!12917)) b!28147))

(assert (= (and b!28147 res!12912) b!28150))

(assert (= (and d!14841 res!12913) b!28155))

(assert (= (and b!28155 (not res!12910)) b!28153))

(assert (= (and b!28153 res!12916) b!28149))

(assert (= (and b!28149 (not res!12915)) b!28148))

(assert (= (and b!28148 res!12918) b!28154))

(assert (=> b!28153 m!29399))

(assert (=> b!28153 m!29375))

(assert (=> b!28153 m!29377))

(assert (=> b!28153 m!29399))

(assert (=> b!28153 m!29375))

(assert (=> b!28153 m!29377))

(declare-fun m!29643 () Bool)

(assert (=> b!28153 m!29643))

(assert (=> b!28148 m!29399))

(assert (=> b!28148 m!29381))

(assert (=> b!28148 m!29383))

(assert (=> b!28148 m!29399))

(assert (=> b!28148 m!29381))

(assert (=> b!28148 m!29383))

(declare-fun m!29645 () Bool)

(assert (=> b!28148 m!29645))

(assert (=> b!28152 m!29633))

(assert (=> b!28152 m!29635))

(assert (=> b!28152 m!29365))

(assert (=> b!28152 m!29633))

(assert (=> b!28152 m!29635))

(assert (=> b!28152 m!29365))

(declare-fun m!29647 () Bool)

(assert (=> b!28152 m!29647))

(assert (=> b!28154 m!29383))

(declare-fun m!29649 () Bool)

(assert (=> b!28154 m!29649))

(assert (=> b!28154 m!29383))

(assert (=> b!28154 m!29377))

(declare-fun m!29651 () Bool)

(assert (=> b!28154 m!29651))

(assert (=> b!28154 m!29399))

(assert (=> b!28154 m!29381))

(assert (=> b!28154 m!29649))

(assert (=> b!28154 m!29381))

(assert (=> b!28154 m!29377))

(assert (=> b!28154 m!29399))

(declare-fun m!29653 () Bool)

(assert (=> b!28147 m!29653))

(declare-fun m!29655 () Bool)

(assert (=> b!28147 m!29655))

(assert (=> b!28147 m!29365))

(assert (=> b!28147 m!29653))

(assert (=> b!28147 m!29655))

(assert (=> b!28147 m!29365))

(declare-fun m!29657 () Bool)

(assert (=> b!28147 m!29657))

(assert (=> b!28150 m!29655))

(assert (=> b!28150 m!29365))

(declare-fun m!29659 () Bool)

(assert (=> b!28150 m!29659))

(assert (=> b!28150 m!29633))

(assert (=> b!28150 m!29653))

(assert (=> b!28150 m!29659))

(declare-fun m!29661 () Bool)

(assert (=> b!28150 m!29661))

(assert (=> b!28150 m!29655))

(assert (=> b!28150 m!29653))

(assert (=> b!28150 m!29633))

(assert (=> b!28150 m!29365))

(assert (=> b!28002 d!14841))

(declare-fun b!28158 () Bool)

(declare-fun res!12919 () Bool)

(declare-fun e!14402 () Bool)

(assert (=> b!28158 (=> (not res!12919) (not e!14402))))

(assert (=> b!28158 (= res!12919 (concInv!58 (left!708 (left!708 xs!533))))))

(declare-fun b!28156 () Bool)

(declare-fun e!14401 () Bool)

(assert (=> b!28156 (= e!14401 e!14402)))

(declare-fun res!12922 () Bool)

(assert (=> b!28156 (=> (not res!12922) (not e!14402))))

(assert (=> b!28156 (= res!12922 (not (isEmpty!320 (left!708 (left!708 xs!533)))))))

(declare-fun b!28159 () Bool)

(assert (=> b!28159 (= e!14402 (concInv!58 (right!711 (left!708 xs!533))))))

(declare-fun d!14843 () Bool)

(declare-fun res!12920 () Bool)

(assert (=> d!14843 (=> res!12920 e!14401)))

(assert (=> d!14843 (= res!12920 (not (is-CC!63 (left!708 xs!533))))))

(assert (=> d!14843 (= (concInv!58 (left!708 xs!533)) e!14401)))

(declare-fun b!28157 () Bool)

(declare-fun res!12921 () Bool)

(assert (=> b!28157 (=> (not res!12921) (not e!14402))))

(assert (=> b!28157 (= res!12921 (not (isEmpty!320 (right!711 (left!708 xs!533)))))))

(assert (= (and d!14843 (not res!12920)) b!28156))

(assert (= (and b!28156 res!12922) b!28157))

(assert (= (and b!28157 res!12921) b!28158))

(assert (= (and b!28158 res!12919) b!28159))

(declare-fun m!29663 () Bool)

(assert (=> b!28158 m!29663))

(declare-fun m!29665 () Bool)

(assert (=> b!28156 m!29665))

(declare-fun m!29667 () Bool)

(assert (=> b!28159 m!29667))

(declare-fun m!29669 () Bool)

(assert (=> b!28157 m!29669))

(assert (=> b!27949 d!14843))

(declare-fun b!28161 () Bool)

(declare-fun e!14403 () Int)

(declare-fun lt!4872 () Int)

(declare-fun lt!4874 () Int)

(assert (=> b!28161 (= e!14403 (+ 1 (ite (>= lt!4872 lt!4874) lt!4872 lt!4874)))))

(assert (=> b!28161 (= lt!4874 (level!52 (right!711 (right!711 res!5536))))))

(assert (=> b!28161 (= lt!4872 (level!52 (left!708 (right!711 res!5536))))))

(declare-fun d!14845 () Bool)

(declare-fun lt!4873 () Int)

(assert (=> d!14845 (>= lt!4873 0)))

(assert (=> d!14845 (= lt!4873 e!14403)))

(declare-fun c!6182 () Bool)

(assert (=> d!14845 (= c!6182 (or (is-Empty!74 (right!711 res!5536)) (is-Single!63 (right!711 res!5536))))))

(assert (=> d!14845 (= (level!52 (right!711 res!5536)) lt!4873)))

(declare-fun b!28160 () Bool)

(assert (=> b!28160 (= e!14403 0)))

(assert (= (and d!14845 c!6182) b!28160))

(assert (= (and d!14845 (not c!6182)) b!28161))

(assert (=> b!28161 m!29597))

(assert (=> b!28161 m!29595))

(assert (=> b!27915 d!14845))

(declare-fun b!28163 () Bool)

(declare-fun e!14404 () Int)

(declare-fun lt!4875 () Int)

(declare-fun lt!4877 () Int)

(assert (=> b!28163 (= e!14404 (+ 1 (ite (>= lt!4875 lt!4877) lt!4875 lt!4877)))))

(assert (=> b!28163 (= lt!4877 (level!52 (right!711 (left!708 res!5536))))))

(assert (=> b!28163 (= lt!4875 (level!52 (left!708 (left!708 res!5536))))))

(declare-fun d!14847 () Bool)

(declare-fun lt!4876 () Int)

(assert (=> d!14847 (>= lt!4876 0)))

(assert (=> d!14847 (= lt!4876 e!14404)))

(declare-fun c!6183 () Bool)

(assert (=> d!14847 (= c!6183 (or (is-Empty!74 (left!708 res!5536)) (is-Single!63 (left!708 res!5536))))))

(assert (=> d!14847 (= (level!52 (left!708 res!5536)) lt!4876)))

(declare-fun b!28162 () Bool)

(assert (=> b!28162 (= e!14404 0)))

(assert (= (and d!14847 c!6183) b!28162))

(assert (= (and d!14847 (not c!6183)) b!28163))

(declare-fun m!29671 () Bool)

(assert (=> b!28163 m!29671))

(declare-fun m!29673 () Bool)

(assert (=> b!28163 m!29673))

(assert (=> b!27915 d!14847))

(declare-fun d!14849 () Bool)

(declare-fun res!12924 () Bool)

(declare-fun e!14405 () Bool)

(assert (=> d!14849 (=> res!12924 e!14405)))

(assert (=> d!14849 (= res!12924 (not (is-CC!63 (right!711 ys!77))))))

(assert (=> d!14849 (= (balanced!59 (right!711 ys!77)) e!14405)))

(declare-fun b!28166 () Bool)

(declare-fun res!12926 () Bool)

(declare-fun e!14406 () Bool)

(assert (=> b!28166 (=> (not res!12926) (not e!14406))))

(assert (=> b!28166 (= res!12926 (balanced!59 (left!708 (right!711 ys!77))))))

(declare-fun b!28164 () Bool)

(assert (=> b!28164 (= e!14405 e!14406)))

(declare-fun res!12923 () Bool)

(assert (=> b!28164 (=> (not res!12923) (not e!14406))))

(assert (=> b!28164 (= res!12923 (>= (- (level!52 (left!708 (right!711 ys!77))) (level!52 (right!711 (right!711 ys!77)))) (- 1)))))

(declare-fun b!28167 () Bool)

(assert (=> b!28167 (= e!14406 (balanced!59 (right!711 (right!711 ys!77))))))

(declare-fun b!28165 () Bool)

(declare-fun res!12925 () Bool)

(assert (=> b!28165 (=> (not res!12925) (not e!14406))))

(assert (=> b!28165 (= res!12925 (<= (- (level!52 (left!708 (right!711 ys!77))) (level!52 (right!711 (right!711 ys!77)))) 1))))

(assert (= (and d!14849 (not res!12924)) b!28164))

(assert (= (and b!28164 res!12923) b!28165))

(assert (= (and b!28165 res!12925) b!28166))

(assert (= (and b!28166 res!12926) b!28167))

(declare-fun m!29675 () Bool)

(assert (=> b!28166 m!29675))

(assert (=> b!28164 m!29571))

(assert (=> b!28164 m!29569))

(declare-fun m!29677 () Bool)

(assert (=> b!28167 m!29677))

(assert (=> b!28165 m!29571))

(assert (=> b!28165 m!29569))

(assert (=> b!27954 d!14849))

(assert (=> b!27910 d!14757))

(assert (=> b!27910 d!14759))

(assert (=> b!28007 d!14763))

(declare-fun d!14851 () Bool)

(assert (=> d!14851 (= (isEmpty!320 (right!711 res!5536)) (= (right!711 res!5536) Empty!74))))

(assert (=> b!27944 d!14851))

(declare-fun d!14853 () Bool)

(declare-fun res!12928 () Bool)

(declare-fun e!14407 () Bool)

(assert (=> d!14853 (=> res!12928 e!14407)))

(assert (=> d!14853 (= res!12928 (not (is-CC!63 (left!708 ys!77))))))

(assert (=> d!14853 (= (balanced!59 (left!708 ys!77)) e!14407)))

(declare-fun b!28170 () Bool)

(declare-fun res!12930 () Bool)

(declare-fun e!14408 () Bool)

(assert (=> b!28170 (=> (not res!12930) (not e!14408))))

(assert (=> b!28170 (= res!12930 (balanced!59 (left!708 (left!708 ys!77))))))

(declare-fun b!28168 () Bool)

(assert (=> b!28168 (= e!14407 e!14408)))

(declare-fun res!12927 () Bool)

(assert (=> b!28168 (=> (not res!12927) (not e!14408))))

(assert (=> b!28168 (= res!12927 (>= (- (level!52 (left!708 (left!708 ys!77))) (level!52 (right!711 (left!708 ys!77)))) (- 1)))))

(declare-fun b!28171 () Bool)

(assert (=> b!28171 (= e!14408 (balanced!59 (right!711 (left!708 ys!77))))))

(declare-fun b!28169 () Bool)

(declare-fun res!12929 () Bool)

(assert (=> b!28169 (=> (not res!12929) (not e!14408))))

(assert (=> b!28169 (= res!12929 (<= (- (level!52 (left!708 (left!708 ys!77))) (level!52 (right!711 (left!708 ys!77)))) 1))))

(assert (= (and d!14853 (not res!12928)) b!28168))

(assert (= (and b!28168 res!12927) b!28169))

(assert (= (and b!28169 res!12929) b!28170))

(assert (= (and b!28170 res!12930) b!28171))

(declare-fun m!29679 () Bool)

(assert (=> b!28170 m!29679))

(assert (=> b!28168 m!29575))

(assert (=> b!28168 m!29573))

(declare-fun m!29681 () Bool)

(assert (=> b!28171 m!29681))

(assert (=> b!28169 m!29575))

(assert (=> b!28169 m!29573))

(assert (=> b!27953 d!14853))

(assert (=> b!27895 d!14847))

(assert (=> b!27895 d!14845))

(assert (=> b!27894 d!14847))

(assert (=> b!27894 d!14845))

(declare-fun b!28173 () Bool)

(declare-fun e!14409 () Int)

(declare-fun lt!4878 () Int)

(declare-fun lt!4880 () Int)

(assert (=> b!28173 (= e!14409 (+ 1 (ite (>= lt!4878 lt!4880) lt!4878 lt!4880)))))

(assert (=> b!28173 (= lt!4880 (level!52 (right!711 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77)))))))

(assert (=> b!28173 (= lt!4878 (level!52 (left!708 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77)))))))

(declare-fun d!14855 () Bool)

(declare-fun lt!4879 () Int)

(assert (=> d!14855 (>= lt!4879 0)))

(assert (=> d!14855 (= lt!4879 e!14409)))

(declare-fun c!6184 () Bool)

(assert (=> d!14855 (= c!6184 (or (is-Empty!74 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77))) (is-Single!63 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77)))))))

(assert (=> d!14855 (= (level!52 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77))) lt!4879)))

(declare-fun b!28172 () Bool)

(assert (=> b!28172 (= e!14409 0)))

(assert (= (and d!14855 c!6184) b!28172))

(assert (= (and d!14855 (not c!6184)) b!28173))

(declare-fun m!29683 () Bool)

(assert (=> b!28173 m!29683))

(declare-fun m!29685 () Bool)

(assert (=> b!28173 m!29685))

(assert (=> b!28004 d!14855))

(declare-fun b!28175 () Bool)

(declare-fun e!14410 () Int)

(declare-fun lt!4881 () Int)

(declare-fun lt!4883 () Int)

(assert (=> b!28175 (= e!14410 (+ 1 (ite (>= lt!4881 lt!4883) lt!4881 lt!4883)))))

(assert (=> b!28175 (= lt!4883 (level!52 (right!711 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77)))))))

(assert (=> b!28175 (= lt!4881 (level!52 (left!708 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77)))))))

(declare-fun d!14857 () Bool)

(declare-fun lt!4882 () Int)

(assert (=> d!14857 (>= lt!4882 0)))

(assert (=> d!14857 (= lt!4882 e!14410)))

(declare-fun c!6185 () Bool)

(assert (=> d!14857 (= c!6185 (or (is-Empty!74 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77))) (is-Single!63 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77)))))))

(assert (=> d!14857 (= (level!52 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77))) lt!4882)))

(declare-fun b!28174 () Bool)

(assert (=> b!28174 (= e!14410 0)))

(assert (= (and d!14857 c!6185) b!28174))

(assert (= (and d!14857 (not c!6185)) b!28175))

(declare-fun m!29687 () Bool)

(assert (=> b!28175 m!29687))

(declare-fun m!29689 () Bool)

(assert (=> b!28175 m!29689))

(assert (=> b!28004 d!14857))

(declare-fun b!28178 () Bool)

(declare-fun e!14412 () List!361)

(assert (=> b!28178 (= e!14412 (Cons!355 (x!8933 (left!708 (left!708 ys!77))) Nil!356))))

(declare-fun b!28179 () Bool)

(assert (=> b!28179 (= e!14412 (++!41 (toList!116 (left!708 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 (left!708 ys!77))))))))

(declare-fun b!28176 () Bool)

(declare-fun e!14411 () List!361)

(assert (=> b!28176 (= e!14411 Nil!356)))

(declare-fun d!14859 () Bool)

(declare-fun lt!4884 () List!361)

(assert (=> d!14859 (= (size!271 lt!4884) (size!272 (left!708 (left!708 ys!77))))))

(assert (=> d!14859 (= lt!4884 e!14411)))

(declare-fun c!6187 () Bool)

(assert (=> d!14859 (= c!6187 (is-Empty!74 (left!708 (left!708 ys!77))))))

(assert (=> d!14859 (= (toList!116 (left!708 (left!708 ys!77))) lt!4884)))

(declare-fun b!28177 () Bool)

(assert (=> b!28177 (= e!14411 e!14412)))

(declare-fun c!6186 () Bool)

(assert (=> b!28177 (= c!6186 (is-Single!63 (left!708 (left!708 ys!77))))))

(assert (= (and b!28177 c!6186) b!28178))

(assert (= (and b!28177 (not c!6186)) b!28179))

(assert (= (and d!14859 c!6187) b!28176))

(assert (= (and d!14859 (not c!6187)) b!28177))

(declare-fun m!29691 () Bool)

(assert (=> b!28179 m!29691))

(declare-fun m!29693 () Bool)

(assert (=> b!28179 m!29693))

(assert (=> b!28179 m!29691))

(assert (=> b!28179 m!29693))

(declare-fun m!29695 () Bool)

(assert (=> b!28179 m!29695))

(declare-fun m!29697 () Bool)

(assert (=> d!14859 m!29697))

(declare-fun m!29699 () Bool)

(assert (=> d!14859 m!29699))

(assert (=> b!27941 d!14859))

(assert (=> b!27941 d!14811))

(declare-fun b!28182 () Bool)

(declare-fun e!14414 () List!361)

(assert (=> b!28182 (= e!14414 (Cons!355 (x!8933 (right!711 (left!708 ys!77))) Nil!356))))

(declare-fun b!28183 () Bool)

(assert (=> b!28183 (= e!14414 (++!41 (toList!116 (left!708 (right!711 (left!708 ys!77)))) (toList!116 (right!711 (right!711 (left!708 ys!77))))))))

(declare-fun b!28180 () Bool)

(declare-fun e!14413 () List!361)

(assert (=> b!28180 (= e!14413 Nil!356)))

(declare-fun d!14861 () Bool)

(declare-fun lt!4885 () List!361)

(assert (=> d!14861 (= (size!271 lt!4885) (size!272 (right!711 (left!708 ys!77))))))

(assert (=> d!14861 (= lt!4885 e!14413)))

(declare-fun c!6189 () Bool)

(assert (=> d!14861 (= c!6189 (is-Empty!74 (right!711 (left!708 ys!77))))))

(assert (=> d!14861 (= (toList!116 (right!711 (left!708 ys!77))) lt!4885)))

(declare-fun b!28181 () Bool)

(assert (=> b!28181 (= e!14413 e!14414)))

(declare-fun c!6188 () Bool)

(assert (=> b!28181 (= c!6188 (is-Single!63 (right!711 (left!708 ys!77))))))

(assert (= (and b!28181 c!6188) b!28182))

(assert (= (and b!28181 (not c!6188)) b!28183))

(assert (= (and d!14861 c!6189) b!28180))

(assert (= (and d!14861 (not c!6189)) b!28181))

(declare-fun m!29701 () Bool)

(assert (=> b!28183 m!29701))

(declare-fun m!29703 () Bool)

(assert (=> b!28183 m!29703))

(assert (=> b!28183 m!29701))

(assert (=> b!28183 m!29703))

(declare-fun m!29705 () Bool)

(assert (=> b!28183 m!29705))

(declare-fun m!29707 () Bool)

(assert (=> d!14861 m!29707))

(declare-fun m!29709 () Bool)

(assert (=> d!14861 m!29709))

(assert (=> b!27941 d!14861))

(assert (=> b!27941 d!14807))

(declare-fun lt!4888 () List!361)

(declare-fun b!28195 () Bool)

(declare-fun e!14420 () Bool)

(assert (=> b!28195 (= e!14420 (or (not (= (toList!116 (left!708 (left!708 ys!77))) Nil!356)) (= lt!4888 (toList!116 xs!533))))))

(declare-fun b!28192 () Bool)

(declare-fun e!14419 () List!361)

(assert (=> b!28192 (= e!14419 (toList!116 (left!708 (left!708 ys!77))))))

(declare-fun d!14863 () Bool)

(assert (=> d!14863 e!14420))

(declare-fun res!12937 () Bool)

(assert (=> d!14863 (=> (not res!12937) (not e!14420))))

(declare-fun content!71 (List!361) (Set T!1829))

(assert (=> d!14863 (= res!12937 (= (content!71 lt!4888) (union (content!71 (toList!116 xs!533)) (content!71 (toList!116 (left!708 (left!708 ys!77)))))))))

(assert (=> d!14863 (= lt!4888 e!14419)))

(declare-fun c!6192 () Bool)

(assert (=> d!14863 (= c!6192 (is-Nil!356 (toList!116 xs!533)))))

(assert (=> d!14863 (= (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) lt!4888)))

(declare-fun b!28193 () Bool)

(assert (=> b!28193 (= e!14419 (Cons!355 (h!272 (toList!116 xs!533)) (++!41 (t!4375 (toList!116 xs!533)) (toList!116 (left!708 (left!708 ys!77))))))))

(declare-fun b!28194 () Bool)

(declare-fun res!12936 () Bool)

(assert (=> b!28194 (=> (not res!12936) (not e!14420))))

(assert (=> b!28194 (= res!12936 (= (size!271 lt!4888) (+ (size!271 (toList!116 xs!533)) (size!271 (toList!116 (left!708 (left!708 ys!77)))))))))

(assert (= (and d!14863 c!6192) b!28192))

(assert (= (and d!14863 (not c!6192)) b!28193))

(assert (= (and d!14863 res!12937) b!28194))

(assert (= (and b!28194 res!12936) b!28195))

(declare-fun m!29711 () Bool)

(assert (=> d!14863 m!29711))

(assert (=> d!14863 m!29363))

(declare-fun m!29713 () Bool)

(assert (=> d!14863 m!29713))

(assert (=> d!14863 m!29381))

(declare-fun m!29715 () Bool)

(assert (=> d!14863 m!29715))

(assert (=> b!28193 m!29381))

(declare-fun m!29717 () Bool)

(assert (=> b!28193 m!29717))

(declare-fun m!29719 () Bool)

(assert (=> b!28194 m!29719))

(assert (=> b!28194 m!29363))

(declare-fun m!29721 () Bool)

(assert (=> b!28194 m!29721))

(assert (=> b!28194 m!29381))

(declare-fun m!29723 () Bool)

(assert (=> b!28194 m!29723))

(assert (=> b!27941 d!14863))

(declare-fun b!28196 () Bool)

(declare-fun e!14421 () Bool)

(assert (=> b!28196 (= e!14421 (= (++!41 (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77)))) (toList!116 (right!711 ys!77))) (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (++!41 (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))))))))

(declare-fun lt!4889 () Bool)

(assert (=> b!28196 (= lt!4889 (appendAssoc!9 (t!4375 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))) (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))))))

(declare-fun d!14865 () Bool)

(assert (=> d!14865 e!14421))

(declare-fun c!6193 () Bool)

(assert (=> d!14865 (= c!6193 (is-Cons!355 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))))))

(assert (=> d!14865 (= (appendAssoc!9 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))) true)))

(declare-fun b!28197 () Bool)

(assert (=> b!28197 (= e!14421 (= (++!41 (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77)))) (toList!116 (right!711 ys!77))) (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (++!41 (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))))))))

(assert (= (and d!14865 c!6193) b!28196))

(assert (= (and d!14865 (not c!6193)) b!28197))

(assert (=> b!28196 m!29383))

(assert (=> b!28196 m!29377))

(declare-fun m!29725 () Bool)

(assert (=> b!28196 m!29725))

(assert (=> b!28196 m!29393))

(assert (=> b!28196 m!29383))

(declare-fun m!29727 () Bool)

(assert (=> b!28196 m!29727))

(assert (=> b!28196 m!29393))

(declare-fun m!29729 () Bool)

(assert (=> b!28196 m!29729))

(declare-fun m!29731 () Bool)

(assert (=> b!28196 m!29731))

(assert (=> b!28196 m!29383))

(assert (=> b!28196 m!29377))

(assert (=> b!28196 m!29729))

(assert (=> b!28196 m!29727))

(assert (=> b!28196 m!29377))

(declare-fun m!29733 () Bool)

(assert (=> b!28196 m!29733))

(assert (=> b!28197 m!29393))

(assert (=> b!28197 m!29383))

(assert (=> b!28197 m!29727))

(assert (=> b!28197 m!29727))

(assert (=> b!28197 m!29377))

(assert (=> b!28197 m!29733))

(assert (=> b!28197 m!29383))

(assert (=> b!28197 m!29377))

(assert (=> b!28197 m!29729))

(assert (=> b!28197 m!29393))

(assert (=> b!28197 m!29729))

(assert (=> b!28197 m!29731))

(assert (=> b!27941 d!14865))

(declare-fun d!14867 () Bool)

(assert (=> d!14867 (= (concatCorrectness!13 lt!4807 (right!711 (right!711 xs!533)) ys!77) (= (toList!116 lt!4807) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))))))

(declare-fun bs!5097 () Bool)

(assert (= bs!5097 d!14867))

(assert (=> bs!5097 m!29399))

(assert (=> bs!5097 m!29365))

(assert (=> bs!5097 m!29403))

(declare-fun m!29735 () Bool)

(assert (=> bs!5097 m!29735))

(assert (=> bs!5097 m!29365))

(assert (=> bs!5097 m!29399))

(assert (=> b!28016 d!14867))

(declare-fun d!14869 () Bool)

(assert (=> d!14869 (= (isEmpty!320 (left!708 ys!77)) (= (left!708 ys!77) Empty!74))))

(assert (=> b!27906 d!14869))

(declare-fun b!28200 () Bool)

(declare-fun e!14423 () List!361)

(assert (=> b!28200 (= e!14423 (Cons!355 (x!8933 res!5536) Nil!356))))

(declare-fun b!28201 () Bool)

(assert (=> b!28201 (= e!14423 (++!41 (toList!116 (left!708 res!5536)) (toList!116 (right!711 res!5536))))))

(declare-fun b!28198 () Bool)

(declare-fun e!14422 () List!361)

(assert (=> b!28198 (= e!14422 Nil!356)))

(declare-fun d!14871 () Bool)

(declare-fun lt!4890 () List!361)

(assert (=> d!14871 (= (size!271 lt!4890) (size!272 res!5536))))

(assert (=> d!14871 (= lt!4890 e!14422)))

(declare-fun c!6195 () Bool)

(assert (=> d!14871 (= c!6195 (is-Empty!74 res!5536))))

(assert (=> d!14871 (= (toList!116 res!5536) lt!4890)))

(declare-fun b!28199 () Bool)

(assert (=> b!28199 (= e!14422 e!14423)))

(declare-fun c!6194 () Bool)

(assert (=> b!28199 (= c!6194 (is-Single!63 res!5536))))

(assert (= (and b!28199 c!6194) b!28200))

(assert (= (and b!28199 (not c!6194)) b!28201))

(assert (= (and d!14871 c!6195) b!28198))

(assert (= (and d!14871 (not c!6195)) b!28199))

(declare-fun m!29737 () Bool)

(assert (=> b!28201 m!29737))

(declare-fun m!29739 () Bool)

(assert (=> b!28201 m!29739))

(assert (=> b!28201 m!29737))

(assert (=> b!28201 m!29739))

(declare-fun m!29741 () Bool)

(assert (=> b!28201 m!29741))

(declare-fun m!29743 () Bool)

(assert (=> d!14871 m!29743))

(declare-fun m!29745 () Bool)

(assert (=> d!14871 m!29745))

(assert (=> d!14769 d!14871))

(declare-fun b!28205 () Bool)

(declare-fun lt!4891 () List!361)

(declare-fun e!14425 () Bool)

(assert (=> b!28205 (= e!14425 (or (not (= (toList!116 ys!77) Nil!356)) (= lt!4891 (toList!116 xs!533))))))

(declare-fun b!28202 () Bool)

(declare-fun e!14424 () List!361)

(assert (=> b!28202 (= e!14424 (toList!116 ys!77))))

(declare-fun d!14873 () Bool)

(assert (=> d!14873 e!14425))

(declare-fun res!12939 () Bool)

(assert (=> d!14873 (=> (not res!12939) (not e!14425))))

(assert (=> d!14873 (= res!12939 (= (content!71 lt!4891) (union (content!71 (toList!116 xs!533)) (content!71 (toList!116 ys!77)))))))

(assert (=> d!14873 (= lt!4891 e!14424)))

(declare-fun c!6196 () Bool)

(assert (=> d!14873 (= c!6196 (is-Nil!356 (toList!116 xs!533)))))

(assert (=> d!14873 (= (++!41 (toList!116 xs!533) (toList!116 ys!77)) lt!4891)))

(declare-fun b!28203 () Bool)

(assert (=> b!28203 (= e!14424 (Cons!355 (h!272 (toList!116 xs!533)) (++!41 (t!4375 (toList!116 xs!533)) (toList!116 ys!77))))))

(declare-fun b!28204 () Bool)

(declare-fun res!12938 () Bool)

(assert (=> b!28204 (=> (not res!12938) (not e!14425))))

(assert (=> b!28204 (= res!12938 (= (size!271 lt!4891) (+ (size!271 (toList!116 xs!533)) (size!271 (toList!116 ys!77)))))))

(assert (= (and d!14873 c!6196) b!28202))

(assert (= (and d!14873 (not c!6196)) b!28203))

(assert (= (and d!14873 res!12939) b!28204))

(assert (= (and b!28204 res!12938) b!28205))

(declare-fun m!29747 () Bool)

(assert (=> d!14873 m!29747))

(assert (=> d!14873 m!29363))

(assert (=> d!14873 m!29713))

(assert (=> d!14873 m!29365))

(declare-fun m!29749 () Bool)

(assert (=> d!14873 m!29749))

(assert (=> b!28203 m!29365))

(declare-fun m!29751 () Bool)

(assert (=> b!28203 m!29751))

(declare-fun m!29753 () Bool)

(assert (=> b!28204 m!29753))

(assert (=> b!28204 m!29363))

(assert (=> b!28204 m!29721))

(assert (=> b!28204 m!29365))

(declare-fun m!29755 () Bool)

(assert (=> b!28204 m!29755))

(assert (=> d!14769 d!14873))

(assert (=> d!14769 d!14803))

(assert (=> d!14769 d!14807))

(assert (=> b!27951 d!14817))

(assert (=> b!27951 d!14815))

(declare-fun d!14875 () Bool)

(assert (=> d!14875 (= (isEmpty!320 (right!711 (right!711 xs!533))) (= (right!711 (right!711 xs!533)) Empty!74))))

(assert (=> b!28011 d!14875))

(assert (=> b!27999 d!14781))

(assert (=> b!28012 d!14751))

(assert (=> b!28012 d!14785))

(declare-fun b!28207 () Bool)

(declare-fun e!14426 () Int)

(declare-fun lt!4892 () Int)

(declare-fun lt!4894 () Int)

(assert (=> b!28207 (= e!14426 (+ 1 (ite (>= lt!4892 lt!4894) lt!4892 lt!4894)))))

(assert (=> b!28207 (= lt!4894 (level!52 (right!711 lt!4807)))))

(assert (=> b!28207 (= lt!4892 (level!52 (left!708 lt!4807)))))

(declare-fun d!14877 () Bool)

(declare-fun lt!4893 () Int)

(assert (=> d!14877 (>= lt!4893 0)))

(assert (=> d!14877 (= lt!4893 e!14426)))

(declare-fun c!6197 () Bool)

(assert (=> d!14877 (= c!6197 (or (is-Empty!74 lt!4807) (is-Single!63 lt!4807)))))

(assert (=> d!14877 (= (level!52 lt!4807) lt!4893)))

(declare-fun b!28206 () Bool)

(assert (=> b!28206 (= e!14426 0)))

(assert (= (and d!14877 c!6197) b!28206))

(assert (= (and d!14877 (not c!6197)) b!28207))

(assert (=> b!28207 m!29589))

(assert (=> b!28207 m!29587))

(assert (=> b!28012 d!14877))

(declare-fun d!14879 () Bool)

(declare-fun res!12941 () Bool)

(declare-fun e!14427 () Bool)

(assert (=> d!14879 (=> res!12941 e!14427)))

(assert (=> d!14879 (= res!12941 (not (is-CC!63 (left!708 res!5536))))))

(assert (=> d!14879 (= (balanced!59 (left!708 res!5536)) e!14427)))

(declare-fun b!28210 () Bool)

(declare-fun res!12943 () Bool)

(declare-fun e!14428 () Bool)

(assert (=> b!28210 (=> (not res!12943) (not e!14428))))

(assert (=> b!28210 (= res!12943 (balanced!59 (left!708 (left!708 res!5536))))))

(declare-fun b!28208 () Bool)

(assert (=> b!28208 (= e!14427 e!14428)))

(declare-fun res!12940 () Bool)

(assert (=> b!28208 (=> (not res!12940) (not e!14428))))

(assert (=> b!28208 (= res!12940 (>= (- (level!52 (left!708 (left!708 res!5536))) (level!52 (right!711 (left!708 res!5536)))) (- 1)))))

(declare-fun b!28211 () Bool)

(assert (=> b!28211 (= e!14428 (balanced!59 (right!711 (left!708 res!5536))))))

(declare-fun b!28209 () Bool)

(declare-fun res!12942 () Bool)

(assert (=> b!28209 (=> (not res!12942) (not e!14428))))

(assert (=> b!28209 (= res!12942 (<= (- (level!52 (left!708 (left!708 res!5536))) (level!52 (right!711 (left!708 res!5536)))) 1))))

(assert (= (and d!14879 (not res!12941)) b!28208))

(assert (= (and b!28208 res!12940) b!28209))

(assert (= (and b!28209 res!12942) b!28210))

(assert (= (and b!28210 res!12943) b!28211))

(declare-fun m!29757 () Bool)

(assert (=> b!28210 m!29757))

(assert (=> b!28208 m!29673))

(assert (=> b!28208 m!29671))

(declare-fun m!29759 () Bool)

(assert (=> b!28211 m!29759))

(assert (=> b!28209 m!29673))

(assert (=> b!28209 m!29671))

(assert (=> b!27896 d!14879))

(declare-fun d!14881 () Bool)

(declare-fun res!12945 () Bool)

(declare-fun e!14429 () Bool)

(assert (=> d!14881 (=> res!12945 e!14429)))

(assert (=> d!14881 (= res!12945 (not (is-CC!63 (right!711 xs!533))))))

(assert (=> d!14881 (= (balanced!59 (right!711 xs!533)) e!14429)))

(declare-fun b!28214 () Bool)

(declare-fun res!12947 () Bool)

(declare-fun e!14430 () Bool)

(assert (=> b!28214 (=> (not res!12947) (not e!14430))))

(assert (=> b!28214 (= res!12947 (balanced!59 (left!708 (right!711 xs!533))))))

(declare-fun b!28212 () Bool)

(assert (=> b!28212 (= e!14429 e!14430)))

(declare-fun res!12944 () Bool)

(assert (=> b!28212 (=> (not res!12944) (not e!14430))))

(assert (=> b!28212 (= res!12944 (>= (- (level!52 (left!708 (right!711 xs!533))) (level!52 (right!711 (right!711 xs!533)))) (- 1)))))

(declare-fun b!28215 () Bool)

(assert (=> b!28215 (= e!14430 (balanced!59 (right!711 (right!711 xs!533))))))

(declare-fun b!28213 () Bool)

(declare-fun res!12946 () Bool)

(assert (=> b!28213 (=> (not res!12946) (not e!14430))))

(assert (=> b!28213 (= res!12946 (<= (- (level!52 (left!708 (right!711 xs!533))) (level!52 (right!711 (right!711 xs!533)))) 1))))

(assert (= (and d!14881 (not res!12945)) b!28212))

(assert (= (and b!28212 res!12944) b!28213))

(assert (= (and b!28213 res!12946) b!28214))

(assert (= (and b!28214 res!12947) b!28215))

(declare-fun m!29761 () Bool)

(assert (=> b!28214 m!29761))

(assert (=> b!28212 m!29345))

(assert (=> b!28212 m!29343))

(assert (=> b!28215 m!29443))

(assert (=> b!28213 m!29345))

(assert (=> b!28213 m!29343))

(assert (=> b!27913 d!14881))

(declare-fun d!14883 () Bool)

(assert (=> d!14883 (= (isEmpty!320 (right!711 ys!77)) (= (right!711 ys!77) Empty!74))))

(assert (=> b!27907 d!14883))

(assert (=> b!27937 d!14803))

(assert (=> b!27937 d!14839))

(assert (=> b!27937 d!14837))

(declare-fun b!28219 () Bool)

(declare-fun lt!4895 () List!361)

(declare-fun e!14432 () Bool)

(assert (=> b!28219 (= e!14432 (or (not (= (toList!116 ys!77) Nil!356)) (= lt!4895 (toList!116 (right!711 (right!711 xs!533))))))))

(declare-fun b!28216 () Bool)

(declare-fun e!14431 () List!361)

(assert (=> b!28216 (= e!14431 (toList!116 ys!77))))

(declare-fun d!14885 () Bool)

(assert (=> d!14885 e!14432))

(declare-fun res!12949 () Bool)

(assert (=> d!14885 (=> (not res!12949) (not e!14432))))

(assert (=> d!14885 (= res!12949 (= (content!71 lt!4895) (union (content!71 (toList!116 (right!711 (right!711 xs!533)))) (content!71 (toList!116 ys!77)))))))

(assert (=> d!14885 (= lt!4895 e!14431)))

(declare-fun c!6198 () Bool)

(assert (=> d!14885 (= c!6198 (is-Nil!356 (toList!116 (right!711 (right!711 xs!533)))))))

(assert (=> d!14885 (= (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)) lt!4895)))

(declare-fun b!28217 () Bool)

(assert (=> b!28217 (= e!14431 (Cons!355 (h!272 (toList!116 (right!711 (right!711 xs!533)))) (++!41 (t!4375 (toList!116 (right!711 (right!711 xs!533)))) (toList!116 ys!77))))))

(declare-fun b!28218 () Bool)

(declare-fun res!12948 () Bool)

(assert (=> b!28218 (=> (not res!12948) (not e!14432))))

(assert (=> b!28218 (= res!12948 (= (size!271 lt!4895) (+ (size!271 (toList!116 (right!711 (right!711 xs!533)))) (size!271 (toList!116 ys!77)))))))

(assert (= (and d!14885 c!6198) b!28216))

(assert (= (and d!14885 (not c!6198)) b!28217))

(assert (= (and d!14885 res!12949) b!28218))

(assert (= (and b!28218 res!12948) b!28219))

(declare-fun m!29763 () Bool)

(assert (=> d!14885 m!29763))

(assert (=> d!14885 m!29399))

(declare-fun m!29765 () Bool)

(assert (=> d!14885 m!29765))

(assert (=> d!14885 m!29365))

(assert (=> d!14885 m!29749))

(assert (=> b!28217 m!29365))

(declare-fun m!29767 () Bool)

(assert (=> b!28217 m!29767))

(declare-fun m!29769 () Bool)

(assert (=> b!28218 m!29769))

(assert (=> b!28218 m!29399))

(declare-fun m!29771 () Bool)

(assert (=> b!28218 m!29771))

(assert (=> b!28218 m!29365))

(assert (=> b!28218 m!29755))

(assert (=> b!27937 d!14885))

(declare-fun b!28220 () Bool)

(declare-fun e!14433 () Bool)

(assert (=> b!28220 (= e!14433 (= (++!41 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (left!708 (right!711 xs!533)))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))) (++!41 (toList!116 (left!708 xs!533)) (++!41 (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))))))))

(declare-fun lt!4896 () Bool)

(assert (=> b!28220 (= lt!4896 (appendAssoc!9 (t!4375 (toList!116 (left!708 xs!533))) (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))))))

(declare-fun d!14887 () Bool)

(assert (=> d!14887 e!14433))

(declare-fun c!6199 () Bool)

(assert (=> d!14887 (= c!6199 (is-Cons!355 (toList!116 (left!708 xs!533))))))

(assert (=> d!14887 (= (appendAssoc!9 (toList!116 (left!708 xs!533)) (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))) true)))

(declare-fun b!28221 () Bool)

(assert (=> b!28221 (= e!14433 (= (++!41 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (left!708 (right!711 xs!533)))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))) (++!41 (toList!116 (left!708 xs!533)) (++!41 (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))))))))

(assert (= (and d!14887 c!6199) b!28220))

(assert (= (and d!14887 (not c!6199)) b!28221))

(assert (=> b!28220 m!29397))

(assert (=> b!28220 m!29403))

(declare-fun m!29773 () Bool)

(assert (=> b!28220 m!29773))

(assert (=> b!28220 m!29387))

(assert (=> b!28220 m!29397))

(declare-fun m!29775 () Bool)

(assert (=> b!28220 m!29775))

(assert (=> b!28220 m!29387))

(assert (=> b!28220 m!29619))

(declare-fun m!29777 () Bool)

(assert (=> b!28220 m!29777))

(assert (=> b!28220 m!29397))

(assert (=> b!28220 m!29403))

(assert (=> b!28220 m!29619))

(assert (=> b!28220 m!29775))

(assert (=> b!28220 m!29403))

(declare-fun m!29779 () Bool)

(assert (=> b!28220 m!29779))

(assert (=> b!28221 m!29387))

(assert (=> b!28221 m!29397))

(assert (=> b!28221 m!29775))

(assert (=> b!28221 m!29775))

(assert (=> b!28221 m!29403))

(assert (=> b!28221 m!29779))

(assert (=> b!28221 m!29397))

(assert (=> b!28221 m!29403))

(assert (=> b!28221 m!29619))

(assert (=> b!28221 m!29387))

(assert (=> b!28221 m!29619))

(assert (=> b!28221 m!29777))

(assert (=> b!27937 d!14887))

(assert (=> b!27937 d!14799))

(declare-fun d!14889 () Bool)

(declare-fun res!12951 () Bool)

(declare-fun e!14434 () Bool)

(assert (=> d!14889 (=> res!12951 e!14434)))

(assert (=> d!14889 (= res!12951 (not (is-CC!63 (right!711 (right!711 xs!533)))))))

(assert (=> d!14889 (= (balanced!59 (right!711 (right!711 xs!533))) e!14434)))

(declare-fun b!28224 () Bool)

(declare-fun res!12953 () Bool)

(declare-fun e!14435 () Bool)

(assert (=> b!28224 (=> (not res!12953) (not e!14435))))

(assert (=> b!28224 (= res!12953 (balanced!59 (left!708 (right!711 (right!711 xs!533)))))))

(declare-fun b!28222 () Bool)

(assert (=> b!28222 (= e!14434 e!14435)))

(declare-fun res!12950 () Bool)

(assert (=> b!28222 (=> (not res!12950) (not e!14435))))

(assert (=> b!28222 (= res!12950 (>= (- (level!52 (left!708 (right!711 (right!711 xs!533)))) (level!52 (right!711 (right!711 (right!711 xs!533))))) (- 1)))))

(declare-fun b!28225 () Bool)

(assert (=> b!28225 (= e!14435 (balanced!59 (right!711 (right!711 (right!711 xs!533)))))))

(declare-fun b!28223 () Bool)

(declare-fun res!12952 () Bool)

(assert (=> b!28223 (=> (not res!12952) (not e!14435))))

(assert (=> b!28223 (= res!12952 (<= (- (level!52 (left!708 (right!711 (right!711 xs!533)))) (level!52 (right!711 (right!711 (right!711 xs!533))))) 1))))

(assert (= (and d!14889 (not res!12951)) b!28222))

(assert (= (and b!28222 res!12950) b!28223))

(assert (= (and b!28223 res!12952) b!28224))

(assert (= (and b!28224 res!12953) b!28225))

(declare-fun m!29781 () Bool)

(assert (=> b!28224 m!29781))

(assert (=> b!28222 m!29455))

(assert (=> b!28222 m!29453))

(declare-fun m!29783 () Bool)

(assert (=> b!28225 m!29783))

(assert (=> b!28223 m!29455))

(assert (=> b!28223 m!29453))

(assert (=> b!28001 d!14889))

(assert (=> b!27952 d!14817))

(assert (=> b!27952 d!14815))

(declare-fun b!28228 () Bool)

(declare-fun res!12954 () Bool)

(declare-fun e!14437 () Bool)

(assert (=> b!28228 (=> (not res!12954) (not e!14437))))

(assert (=> b!28228 (= res!12954 (concInv!58 (left!708 (right!711 ys!77))))))

(declare-fun b!28226 () Bool)

(declare-fun e!14436 () Bool)

(assert (=> b!28226 (= e!14436 e!14437)))

(declare-fun res!12957 () Bool)

(assert (=> b!28226 (=> (not res!12957) (not e!14437))))

(assert (=> b!28226 (= res!12957 (not (isEmpty!320 (left!708 (right!711 ys!77)))))))

(declare-fun b!28229 () Bool)

(assert (=> b!28229 (= e!14437 (concInv!58 (right!711 (right!711 ys!77))))))

(declare-fun d!14891 () Bool)

(declare-fun res!12955 () Bool)

(assert (=> d!14891 (=> res!12955 e!14436)))

(assert (=> d!14891 (= res!12955 (not (is-CC!63 (right!711 ys!77))))))

(assert (=> d!14891 (= (concInv!58 (right!711 ys!77)) e!14436)))

(declare-fun b!28227 () Bool)

(declare-fun res!12956 () Bool)

(assert (=> b!28227 (=> (not res!12956) (not e!14437))))

(assert (=> b!28227 (= res!12956 (not (isEmpty!320 (right!711 (right!711 ys!77)))))))

(assert (= (and d!14891 (not res!12955)) b!28226))

(assert (= (and b!28226 res!12957) b!28227))

(assert (= (and b!28227 res!12956) b!28228))

(assert (= (and b!28228 res!12954) b!28229))

(declare-fun m!29785 () Bool)

(assert (=> b!28228 m!29785))

(declare-fun m!29787 () Bool)

(assert (=> b!28226 m!29787))

(declare-fun m!29789 () Bool)

(assert (=> b!28229 m!29789))

(declare-fun m!29791 () Bool)

(assert (=> b!28227 m!29791))

(assert (=> b!27909 d!14891))

(declare-fun d!14893 () Bool)

(declare-fun res!12959 () Bool)

(declare-fun e!14438 () Bool)

(assert (=> d!14893 (=> res!12959 e!14438)))

(assert (=> d!14893 (= res!12959 (not (is-CC!63 (left!708 xs!533))))))

(assert (=> d!14893 (= (balanced!59 (left!708 xs!533)) e!14438)))

(declare-fun b!28232 () Bool)

(declare-fun res!12961 () Bool)

(declare-fun e!14439 () Bool)

(assert (=> b!28232 (=> (not res!12961) (not e!14439))))

(assert (=> b!28232 (= res!12961 (balanced!59 (left!708 (left!708 xs!533))))))

(declare-fun b!28230 () Bool)

(assert (=> b!28230 (= e!14438 e!14439)))

(declare-fun res!12958 () Bool)

(assert (=> b!28230 (=> (not res!12958) (not e!14439))))

(assert (=> b!28230 (= res!12958 (>= (- (level!52 (left!708 (left!708 xs!533))) (level!52 (right!711 (left!708 xs!533)))) (- 1)))))

(declare-fun b!28233 () Bool)

(assert (=> b!28233 (= e!14439 (balanced!59 (right!711 (left!708 xs!533))))))

(declare-fun b!28231 () Bool)

(declare-fun res!12960 () Bool)

(assert (=> b!28231 (=> (not res!12960) (not e!14439))))

(assert (=> b!28231 (= res!12960 (<= (- (level!52 (left!708 (left!708 xs!533))) (level!52 (right!711 (left!708 xs!533)))) 1))))

(assert (= (and d!14893 (not res!12959)) b!28230))

(assert (= (and b!28230 res!12958) b!28231))

(assert (= (and b!28231 res!12960) b!28232))

(assert (= (and b!28232 res!12961) b!28233))

(declare-fun m!29793 () Bool)

(assert (=> b!28232 m!29793))

(assert (=> b!28230 m!29341))

(assert (=> b!28230 m!29339))

(declare-fun m!29795 () Bool)

(assert (=> b!28233 m!29795))

(assert (=> b!28231 m!29341))

(assert (=> b!28231 m!29339))

(assert (=> b!27912 d!14893))

(assert (=> b!28006 d!14751))

(assert (=> b!28006 d!14785))

(assert (=> b!28006 d!14877))

(declare-fun b!28234 () Bool)

(declare-fun e!14440 () Bool)

(assert (=> b!28234 (= e!14440 (= (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77)))) (++!41 (toList!116 xs!533) (++!41 (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))))))))

(declare-fun lt!4897 () Bool)

(assert (=> b!28234 (= lt!4897 (appendAssoc!9 (t!4375 (toList!116 xs!533)) (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))))))

(declare-fun d!14895 () Bool)

(assert (=> d!14895 e!14440))

(declare-fun c!6200 () Bool)

(assert (=> d!14895 (= c!6200 (is-Cons!355 (toList!116 xs!533)))))

(assert (=> d!14895 (= (appendAssoc!9 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))) true)))

(declare-fun b!28235 () Bool)

(assert (=> b!28235 (= e!14440 (= (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77)))) (++!41 (toList!116 xs!533) (++!41 (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))))))))

(assert (= (and d!14895 c!6200) b!28234))

(assert (= (and d!14895 (not c!6200)) b!28235))

(assert (=> b!28234 m!29381))

(assert (=> b!28234 m!29383))

(declare-fun m!29797 () Bool)

(assert (=> b!28234 m!29797))

(assert (=> b!28234 m!29363))

(assert (=> b!28234 m!29381))

(assert (=> b!28234 m!29393))

(assert (=> b!28234 m!29363))

(assert (=> b!28234 m!29549))

(declare-fun m!29799 () Bool)

(assert (=> b!28234 m!29799))

(assert (=> b!28234 m!29381))

(assert (=> b!28234 m!29383))

(assert (=> b!28234 m!29549))

(assert (=> b!28234 m!29393))

(assert (=> b!28234 m!29383))

(assert (=> b!28234 m!29727))

(assert (=> b!28235 m!29363))

(assert (=> b!28235 m!29381))

(assert (=> b!28235 m!29393))

(assert (=> b!28235 m!29393))

(assert (=> b!28235 m!29383))

(assert (=> b!28235 m!29727))

(assert (=> b!28235 m!29381))

(assert (=> b!28235 m!29383))

(assert (=> b!28235 m!29549))

(assert (=> b!28235 m!29363))

(assert (=> b!28235 m!29549))

(assert (=> b!28235 m!29799))

(assert (=> b!27935 d!14895))

(assert (=> b!27935 d!14807))

(assert (=> b!27935 d!14859))

(assert (=> b!27935 d!14861))

(assert (=> b!27879 d!14759))

(assert (=> b!27879 d!14757))

(assert (=> d!14783 d!14751))

(assert (=> d!14783 d!14785))

(declare-fun b!28238 () Bool)

(declare-fun res!12962 () Bool)

(declare-fun e!14442 () Bool)

(assert (=> b!28238 (=> (not res!12962) (not e!14442))))

(assert (=> b!28238 (= res!12962 (concInv!58 (left!708 (right!711 (right!711 xs!533)))))))

(declare-fun b!28236 () Bool)

(declare-fun e!14441 () Bool)

(assert (=> b!28236 (= e!14441 e!14442)))

(declare-fun res!12965 () Bool)

(assert (=> b!28236 (=> (not res!12965) (not e!14442))))

(assert (=> b!28236 (= res!12965 (not (isEmpty!320 (left!708 (right!711 (right!711 xs!533))))))))

(declare-fun b!28239 () Bool)

(assert (=> b!28239 (= e!14442 (concInv!58 (right!711 (right!711 (right!711 xs!533)))))))

(declare-fun d!14897 () Bool)

(declare-fun res!12963 () Bool)

(assert (=> d!14897 (=> res!12963 e!14441)))

(assert (=> d!14897 (= res!12963 (not (is-CC!63 (right!711 (right!711 xs!533)))))))

(assert (=> d!14897 (= (concInv!58 (right!711 (right!711 xs!533))) e!14441)))

(declare-fun b!28237 () Bool)

(declare-fun res!12964 () Bool)

(assert (=> b!28237 (=> (not res!12964) (not e!14442))))

(assert (=> b!28237 (= res!12964 (not (isEmpty!320 (right!711 (right!711 (right!711 xs!533))))))))

(assert (= (and d!14897 (not res!12963)) b!28236))

(assert (= (and b!28236 res!12965) b!28237))

(assert (= (and b!28237 res!12964) b!28238))

(assert (= (and b!28238 res!12962) b!28239))

(declare-fun m!29801 () Bool)

(assert (=> b!28238 m!29801))

(declare-fun m!29803 () Bool)

(assert (=> b!28236 m!29803))

(declare-fun m!29805 () Bool)

(assert (=> b!28239 m!29805))

(declare-fun m!29807 () Bool)

(assert (=> b!28237 m!29807))

(assert (=> d!14783 d!14897))

(declare-fun b!28241 () Bool)

(declare-fun e!14443 () Int)

(declare-fun lt!4898 () Int)

(declare-fun lt!4900 () Int)

(assert (=> b!28241 (= e!14443 (+ 1 (ite (>= lt!4898 lt!4900) lt!4898 lt!4900)))))

(assert (=> b!28241 (= lt!4900 (level!52 (right!711 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77))))))

(assert (=> b!28241 (= lt!4898 (level!52 (left!708 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77))))))

(declare-fun d!14899 () Bool)

(declare-fun lt!4899 () Int)

(assert (=> d!14899 (>= lt!4899 0)))

(assert (=> d!14899 (= lt!4899 e!14443)))

(declare-fun c!6201 () Bool)

(assert (=> d!14899 (= c!6201 (or (is-Empty!74 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77)) (is-Single!63 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77))))))

(assert (=> d!14899 (= (level!52 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77)) lt!4899)))

(declare-fun b!28240 () Bool)

(assert (=> b!28240 (= e!14443 0)))

(assert (= (and d!14899 c!6201) b!28240))

(assert (= (and d!14899 (not c!6201)) b!28241))

(declare-fun m!29809 () Bool)

(assert (=> b!28241 m!29809))

(declare-fun m!29811 () Bool)

(assert (=> b!28241 m!29811))

(assert (=> b!28003 d!14899))

(declare-fun b!28244 () Bool)

(declare-fun res!12966 () Bool)

(declare-fun e!14445 () Bool)

(assert (=> b!28244 (=> (not res!12966) (not e!14445))))

(assert (=> b!28244 (= res!12966 (concInv!58 (left!708 lt!4807)))))

(declare-fun b!28242 () Bool)

(declare-fun e!14444 () Bool)

(assert (=> b!28242 (= e!14444 e!14445)))

(declare-fun res!12969 () Bool)

(assert (=> b!28242 (=> (not res!12969) (not e!14445))))

(assert (=> b!28242 (= res!12969 (not (isEmpty!320 (left!708 lt!4807))))))

(declare-fun b!28245 () Bool)

(assert (=> b!28245 (= e!14445 (concInv!58 (right!711 lt!4807)))))

(declare-fun d!14901 () Bool)

(declare-fun res!12967 () Bool)

(assert (=> d!14901 (=> res!12967 e!14444)))

(assert (=> d!14901 (= res!12967 (not (is-CC!63 lt!4807)))))

(assert (=> d!14901 (= (concInv!58 lt!4807) e!14444)))

(declare-fun b!28243 () Bool)

(declare-fun res!12968 () Bool)

(assert (=> b!28243 (=> (not res!12968) (not e!14445))))

(assert (=> b!28243 (= res!12968 (not (isEmpty!320 (right!711 lt!4807))))))

(assert (= (and d!14901 (not res!12967)) b!28242))

(assert (= (and b!28242 res!12969) b!28243))

(assert (= (and b!28243 res!12968) b!28244))

(assert (= (and b!28244 res!12966) b!28245))

(declare-fun m!29813 () Bool)

(assert (=> b!28244 m!29813))

(declare-fun m!29815 () Bool)

(assert (=> b!28242 m!29815))

(declare-fun m!29817 () Bool)

(assert (=> b!28245 m!29817))

(declare-fun m!29819 () Bool)

(assert (=> b!28243 m!29819))

(assert (=> b!27997 d!14901))

(declare-fun b!28248 () Bool)

(declare-fun res!12970 () Bool)

(declare-fun e!14447 () Bool)

(assert (=> b!28248 (=> (not res!12970) (not e!14447))))

(assert (=> b!28248 (= res!12970 (concInv!58 (left!708 (right!711 res!5536))))))

(declare-fun b!28246 () Bool)

(declare-fun e!14446 () Bool)

(assert (=> b!28246 (= e!14446 e!14447)))

(declare-fun res!12973 () Bool)

(assert (=> b!28246 (=> (not res!12973) (not e!14447))))

(assert (=> b!28246 (= res!12973 (not (isEmpty!320 (left!708 (right!711 res!5536)))))))

(declare-fun b!28249 () Bool)

(assert (=> b!28249 (= e!14447 (concInv!58 (right!711 (right!711 res!5536))))))

(declare-fun d!14903 () Bool)

(declare-fun res!12971 () Bool)

(assert (=> d!14903 (=> res!12971 e!14446)))

(assert (=> d!14903 (= res!12971 (not (is-CC!63 (right!711 res!5536))))))

(assert (=> d!14903 (= (concInv!58 (right!711 res!5536)) e!14446)))

(declare-fun b!28247 () Bool)

(declare-fun res!12972 () Bool)

(assert (=> b!28247 (=> (not res!12972) (not e!14447))))

(assert (=> b!28247 (= res!12972 (not (isEmpty!320 (right!711 (right!711 res!5536)))))))

(assert (= (and d!14903 (not res!12971)) b!28246))

(assert (= (and b!28246 res!12973) b!28247))

(assert (= (and b!28247 res!12972) b!28248))

(assert (= (and b!28248 res!12970) b!28249))

(declare-fun m!29821 () Bool)

(assert (=> b!28248 m!29821))

(declare-fun m!29823 () Bool)

(assert (=> b!28246 m!29823))

(declare-fun m!29825 () Bool)

(assert (=> b!28249 m!29825))

(declare-fun m!29827 () Bool)

(assert (=> b!28247 m!29827))

(assert (=> b!27946 d!14903))

(declare-fun b!28251 () Bool)

(declare-fun e!14448 () Int)

(declare-fun lt!4901 () Int)

(declare-fun lt!4903 () Int)

(assert (=> b!28251 (= e!14448 (+ 1 (ite (>= lt!4901 lt!4903) lt!4901 lt!4903)))))

(assert (=> b!28251 (= lt!4903 (level!52 (right!711 lt!4812)))))

(assert (=> b!28251 (= lt!4901 (level!52 (left!708 lt!4812)))))

(declare-fun d!14905 () Bool)

(declare-fun lt!4902 () Int)

(assert (=> d!14905 (>= lt!4902 0)))

(assert (=> d!14905 (= lt!4902 e!14448)))

(declare-fun c!6202 () Bool)

(assert (=> d!14905 (= c!6202 (or (is-Empty!74 lt!4812) (is-Single!63 lt!4812)))))

(assert (=> d!14905 (= (level!52 lt!4812) lt!4902)))

(declare-fun b!28250 () Bool)

(assert (=> b!28250 (= e!14448 0)))

(assert (= (and d!14905 c!6202) b!28250))

(assert (= (and d!14905 (not c!6202)) b!28251))

(declare-fun m!29829 () Bool)

(assert (=> b!28251 m!29829))

(declare-fun m!29831 () Bool)

(assert (=> b!28251 m!29831))

(assert (=> b!28000 d!14905))

(declare-fun b!28252 () Bool)

(declare-fun e!14449 () Bool)

(declare-fun tp!6032 () Bool)

(declare-fun tp!6033 () Bool)

(assert (=> b!28252 (= e!14449 (and tp!6032 tp!6033))))

(declare-fun b!28253 () Bool)

(assert (=> b!28253 (= e!14449 tp_is_empty!173)))

(assert (=> b!28005 (= tp!6008 e!14449)))

(assert (= (and b!28005 (is-CC!63 (left!708 res!12862))) b!28252))

(assert (= (and b!28005 (is-Single!63 (left!708 res!12862))) b!28253))

(declare-fun b!28254 () Bool)

(declare-fun e!14450 () Bool)

(declare-fun tp!6034 () Bool)

(declare-fun tp!6035 () Bool)

(assert (=> b!28254 (= e!14450 (and tp!6034 tp!6035))))

(declare-fun b!28255 () Bool)

(assert (=> b!28255 (= e!14450 tp_is_empty!173)))

(assert (=> b!28005 (= tp!6009 e!14450)))

(assert (= (and b!28005 (is-CC!63 (right!711 res!12862))) b!28254))

(assert (= (and b!28005 (is-Single!63 (right!711 res!12862))) b!28255))

(declare-fun b!28256 () Bool)

(declare-fun e!14451 () Bool)

(declare-fun tp!6036 () Bool)

(declare-fun tp!6037 () Bool)

(assert (=> b!28256 (= e!14451 (and tp!6036 tp!6037))))

(declare-fun b!28257 () Bool)

(assert (=> b!28257 (= e!14451 tp_is_empty!173)))

(assert (=> b!28034 (= tp!6024 e!14451)))

(assert (= (and b!28034 (is-CC!63 (left!708 (right!711 ys!77)))) b!28256))

(assert (= (and b!28034 (is-Single!63 (left!708 (right!711 ys!77)))) b!28257))

(declare-fun b!28258 () Bool)

(declare-fun e!14452 () Bool)

(declare-fun tp!6038 () Bool)

(declare-fun tp!6039 () Bool)

(assert (=> b!28258 (= e!14452 (and tp!6038 tp!6039))))

(declare-fun b!28259 () Bool)

(assert (=> b!28259 (= e!14452 tp_is_empty!173)))

(assert (=> b!28034 (= tp!6025 e!14452)))

(assert (= (and b!28034 (is-CC!63 (right!711 (right!711 ys!77)))) b!28258))

(assert (= (and b!28034 (is-Single!63 (right!711 (right!711 ys!77)))) b!28259))

(declare-fun b!28260 () Bool)

(declare-fun e!14453 () Bool)

(declare-fun tp!6040 () Bool)

(declare-fun tp!6041 () Bool)

(assert (=> b!28260 (= e!14453 (and tp!6040 tp!6041))))

(declare-fun b!28261 () Bool)

(assert (=> b!28261 (= e!14453 tp_is_empty!173)))

(assert (=> b!28032 (= tp!6022 e!14453)))

(assert (= (and b!28032 (is-CC!63 (left!708 (left!708 ys!77)))) b!28260))

(assert (= (and b!28032 (is-Single!63 (left!708 (left!708 ys!77)))) b!28261))

(declare-fun b!28262 () Bool)

(declare-fun e!14454 () Bool)

(declare-fun tp!6042 () Bool)

(declare-fun tp!6043 () Bool)

(assert (=> b!28262 (= e!14454 (and tp!6042 tp!6043))))

(declare-fun b!28263 () Bool)

(assert (=> b!28263 (= e!14454 tp_is_empty!173)))

(assert (=> b!28032 (= tp!6023 e!14454)))

(assert (= (and b!28032 (is-CC!63 (right!711 (left!708 ys!77)))) b!28262))

(assert (= (and b!28032 (is-Single!63 (right!711 (left!708 ys!77)))) b!28263))

(declare-fun b!28264 () Bool)

(declare-fun e!14455 () Bool)

(declare-fun tp!6044 () Bool)

(declare-fun tp!6045 () Bool)

(assert (=> b!28264 (= e!14455 (and tp!6044 tp!6045))))

(declare-fun b!28265 () Bool)

(assert (=> b!28265 (= e!14455 tp_is_empty!173)))

(assert (=> b!28024 (= tp!6014 e!14455)))

(assert (= (and b!28024 (is-CC!63 (left!708 (left!708 res!5536)))) b!28264))

(assert (= (and b!28024 (is-Single!63 (left!708 (left!708 res!5536)))) b!28265))

(declare-fun b!28266 () Bool)

(declare-fun e!14456 () Bool)

(declare-fun tp!6046 () Bool)

(declare-fun tp!6047 () Bool)

(assert (=> b!28266 (= e!14456 (and tp!6046 tp!6047))))

(declare-fun b!28267 () Bool)

(assert (=> b!28267 (= e!14456 tp_is_empty!173)))

(assert (=> b!28024 (= tp!6015 e!14456)))

(assert (= (and b!28024 (is-CC!63 (right!711 (left!708 res!5536)))) b!28266))

(assert (= (and b!28024 (is-Single!63 (right!711 (left!708 res!5536)))) b!28267))

(declare-fun b!28268 () Bool)

(declare-fun e!14457 () Bool)

(declare-fun tp!6048 () Bool)

(declare-fun tp!6049 () Bool)

(assert (=> b!28268 (= e!14457 (and tp!6048 tp!6049))))

(declare-fun b!28269 () Bool)

(assert (=> b!28269 (= e!14457 tp_is_empty!173)))

(assert (=> b!28026 (= tp!6016 e!14457)))

(assert (= (and b!28026 (is-CC!63 (left!708 (right!711 res!5536)))) b!28268))

(assert (= (and b!28026 (is-Single!63 (left!708 (right!711 res!5536)))) b!28269))

(declare-fun b!28270 () Bool)

(declare-fun e!14458 () Bool)

(declare-fun tp!6050 () Bool)

(declare-fun tp!6051 () Bool)

(assert (=> b!28270 (= e!14458 (and tp!6050 tp!6051))))

(declare-fun b!28271 () Bool)

(assert (=> b!28271 (= e!14458 tp_is_empty!173)))

(assert (=> b!28026 (= tp!6017 e!14458)))

(assert (= (and b!28026 (is-CC!63 (right!711 (right!711 res!5536)))) b!28270))

(assert (= (and b!28026 (is-Single!63 (right!711 (right!711 res!5536)))) b!28271))

(declare-fun b!28272 () Bool)

(declare-fun e!14459 () Bool)

(declare-fun tp!6052 () Bool)

(declare-fun tp!6053 () Bool)

(assert (=> b!28272 (= e!14459 (and tp!6052 tp!6053))))

(declare-fun b!28273 () Bool)

(assert (=> b!28273 (= e!14459 tp_is_empty!173)))

(assert (=> b!28028 (= tp!6018 e!14459)))

(assert (= (and b!28028 (is-CC!63 (left!708 (left!708 nrr!4)))) b!28272))

(assert (= (and b!28028 (is-Single!63 (left!708 (left!708 nrr!4)))) b!28273))

(declare-fun b!28274 () Bool)

(declare-fun e!14460 () Bool)

(declare-fun tp!6054 () Bool)

(declare-fun tp!6055 () Bool)

(assert (=> b!28274 (= e!14460 (and tp!6054 tp!6055))))

(declare-fun b!28275 () Bool)

(assert (=> b!28275 (= e!14460 tp_is_empty!173)))

(assert (=> b!28028 (= tp!6019 e!14460)))

(assert (= (and b!28028 (is-CC!63 (right!711 (left!708 nrr!4)))) b!28274))

(assert (= (and b!28028 (is-Single!63 (right!711 (left!708 nrr!4)))) b!28275))

(declare-fun b!28276 () Bool)

(declare-fun e!14461 () Bool)

(declare-fun tp!6056 () Bool)

(declare-fun tp!6057 () Bool)

(assert (=> b!28276 (= e!14461 (and tp!6056 tp!6057))))

(declare-fun b!28277 () Bool)

(assert (=> b!28277 (= e!14461 tp_is_empty!173)))

(assert (=> b!28038 (= tp!6028 e!14461)))

(assert (= (and b!28038 (is-CC!63 (left!708 (right!711 xs!533)))) b!28276))

(assert (= (and b!28038 (is-Single!63 (left!708 (right!711 xs!533)))) b!28277))

(declare-fun b!28278 () Bool)

(declare-fun e!14462 () Bool)

(declare-fun tp!6058 () Bool)

(declare-fun tp!6059 () Bool)

(assert (=> b!28278 (= e!14462 (and tp!6058 tp!6059))))

(declare-fun b!28279 () Bool)

(assert (=> b!28279 (= e!14462 tp_is_empty!173)))

(assert (=> b!28038 (= tp!6029 e!14462)))

(assert (= (and b!28038 (is-CC!63 (right!711 (right!711 xs!533)))) b!28278))

(assert (= (and b!28038 (is-Single!63 (right!711 (right!711 xs!533)))) b!28279))

(declare-fun b!28280 () Bool)

(declare-fun e!14463 () Bool)

(declare-fun tp!6060 () Bool)

(declare-fun tp!6061 () Bool)

(assert (=> b!28280 (= e!14463 (and tp!6060 tp!6061))))

(declare-fun b!28281 () Bool)

(assert (=> b!28281 (= e!14463 tp_is_empty!173)))

(assert (=> b!28036 (= tp!6026 e!14463)))

(assert (= (and b!28036 (is-CC!63 (left!708 (left!708 xs!533)))) b!28280))

(assert (= (and b!28036 (is-Single!63 (left!708 (left!708 xs!533)))) b!28281))

(declare-fun b!28282 () Bool)

(declare-fun e!14464 () Bool)

(declare-fun tp!6062 () Bool)

(declare-fun tp!6063 () Bool)

(assert (=> b!28282 (= e!14464 (and tp!6062 tp!6063))))

(declare-fun b!28283 () Bool)

(assert (=> b!28283 (= e!14464 tp_is_empty!173)))

(assert (=> b!28036 (= tp!6027 e!14464)))

(assert (= (and b!28036 (is-CC!63 (right!711 (left!708 xs!533)))) b!28282))

(assert (= (and b!28036 (is-Single!63 (right!711 (left!708 xs!533)))) b!28283))

(declare-fun b!28284 () Bool)

(declare-fun e!14465 () Bool)

(declare-fun tp!6064 () Bool)

(declare-fun tp!6065 () Bool)

(assert (=> b!28284 (= e!14465 (and tp!6064 tp!6065))))

(declare-fun b!28285 () Bool)

(assert (=> b!28285 (= e!14465 tp_is_empty!173)))

(assert (=> b!28030 (= tp!6020 e!14465)))

(assert (= (and b!28030 (is-CC!63 (left!708 (right!711 nrr!4)))) b!28284))

(assert (= (and b!28030 (is-Single!63 (left!708 (right!711 nrr!4)))) b!28285))

(declare-fun b!28286 () Bool)

(declare-fun e!14466 () Bool)

(declare-fun tp!6066 () Bool)

(declare-fun tp!6067 () Bool)

(assert (=> b!28286 (= e!14466 (and tp!6066 tp!6067))))

(declare-fun b!28287 () Bool)

(assert (=> b!28287 (= e!14466 tp_is_empty!173)))

(assert (=> b!28030 (= tp!6021 e!14466)))

(assert (= (and b!28030 (is-CC!63 (right!711 (right!711 nrr!4)))) b!28286))

(assert (= (and b!28030 (is-Single!63 (right!711 (right!711 nrr!4)))) b!28287))

(push 1)

(assert (not b!28153))

(assert (not d!14799))

(assert (not b!28060))

(assert (not b!28231))

(assert (not b!28117))

(assert (not b!28053))

(assert (not b!28193))

(assert (not d!14801))

(assert (not b!28183))

(assert (not b!28049))

(assert (not b!28280))

(assert (not b!28116))

(assert (not b!28125))

(assert (not b!28121))

(assert (not b!28284))

(assert (not b!28051))

(assert (not b!28041))

(assert (not b!28124))

(assert (not b!28136))

(assert (not b!28235))

(assert (not b!28118))

(assert (not b!28123))

(assert (not b!28044))

(assert (not b!28211))

(assert (not b!28234))

(assert (not b!28237))

(assert (not b!28111))

(assert (not b!28248))

(assert (not b!28126))

(assert (not b!28203))

(assert (not b!28134))

(assert (not b!28278))

(assert (not b!28179))

(assert (not b!28137))

(assert (not b!28058))

(assert (not b!28268))

(assert (not b!28074))

(assert (not b!28165))

(assert (not d!14861))

(assert (not b!28170))

(assert (not b!28209))

(assert (not b!28260))

(assert (not b!28066))

(assert (not b!28169))

(assert (not d!14873))

(assert (not b!28247))

(assert (not d!14839))

(assert (not b!28207))

(assert (not b!28221))

(assert (not b!28046))

(assert tp_is_empty!173)

(assert (not b!28286))

(assert (not b!28146))

(assert (not b!28120))

(assert (not b!28142))

(assert (not b!28217))

(assert (not b!28150))

(assert (not b!28208))

(assert (not b!28135))

(assert (not b!28201))

(assert (not b!28168))

(assert (not b!28114))

(assert (not d!14867))

(assert (not b!28173))

(assert (not b!28119))

(assert (not b!28108))

(assert (not d!14809))

(assert (not b!28215))

(assert (not b!28059))

(assert (not b!28249))

(assert (not b!28196))

(assert (not b!28171))

(assert (not b!28112))

(assert (not b!28232))

(assert (not b!28227))

(assert (not b!28244))

(assert (not b!28161))

(assert (not d!14859))

(assert (not b!28229))

(assert (not b!28127))

(assert (not b!28224))

(assert (not b!28100))

(assert (not b!28242))

(assert (not b!28048))

(assert (not b!28204))

(assert (not b!28272))

(assert (not b!28239))

(assert (not d!14811))

(assert (not b!28251))

(assert (not b!28233))

(assert (not b!28094))

(assert (not b!28086))

(assert (not b!28096))

(assert (not b!28050))

(assert (not b!28252))

(assert (not b!28262))

(assert (not b!28258))

(assert (not b!28063))

(assert (not b!28054))

(assert (not d!14863))

(assert (not b!28197))

(assert (not b!28167))

(assert (not b!28218))

(assert (not b!28148))

(assert (not b!28245))

(assert (not b!28222))

(assert (not b!28043))

(assert (not d!14789))

(assert (not b!28236))

(assert (not b!28194))

(assert (not d!14807))

(assert (not b!28282))

(assert (not b!28064))

(assert (not b!28156))

(assert (not b!28213))

(assert (not b!28154))

(assert (not b!28276))

(assert (not b!28254))

(assert (not b!28110))

(assert (not b!28109))

(assert (not b!28214))

(assert (not b!28274))

(assert (not d!14837))

(assert (not b!28157))

(assert (not b!28138))

(assert (not b!28270))

(assert (not b!28052))

(assert (not b!28163))

(assert (not b!28166))

(assert (not b!28175))

(assert (not b!28210))

(assert (not b!28057))

(assert (not b!28243))

(assert (not b!28228))

(assert (not b!28147))

(assert (not b!28068))

(assert (not d!14871))

(assert (not b!28230))

(assert (not b!28122))

(assert (not b!28256))

(assert (not b!28264))

(assert (not b!28238))

(assert (not b!28047))

(assert (not b!28073))

(assert (not b!28241))

(assert (not b!28212))

(assert (not b!28220))

(assert (not b!28266))

(assert (not b!28246))

(assert (not b!28152))

(assert (not b!28133))

(assert (not b!28132))

(assert (not d!14803))

(assert (not b!28226))

(assert (not b!28223))

(assert (not b!28104))

(assert (not b!28225))

(assert (not b!28158))

(assert (not b!28130))

(assert (not b!28128))

(assert (not b!28090))

(assert (not b!28095))

(assert (not b!28164))

(assert (not b!28159))

(assert (not d!14885))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!14907 () Bool)

(declare-fun res!12975 () Bool)

(declare-fun e!14467 () Bool)

(assert (=> d!14907 (=> res!12975 e!14467)))

(assert (=> d!14907 (= res!12975 (not (is-CC!63 (right!711 (right!711 (right!711 xs!533))))))))

(assert (=> d!14907 (= (balanced!59 (right!711 (right!711 (right!711 xs!533)))) e!14467)))

(declare-fun b!28290 () Bool)

(declare-fun res!12977 () Bool)

(declare-fun e!14468 () Bool)

(assert (=> b!28290 (=> (not res!12977) (not e!14468))))

(assert (=> b!28290 (= res!12977 (balanced!59 (left!708 (right!711 (right!711 (right!711 xs!533))))))))

(declare-fun b!28288 () Bool)

(assert (=> b!28288 (= e!14467 e!14468)))

(declare-fun res!12974 () Bool)

(assert (=> b!28288 (=> (not res!12974) (not e!14468))))

(assert (=> b!28288 (= res!12974 (>= (- (level!52 (left!708 (right!711 (right!711 (right!711 xs!533))))) (level!52 (right!711 (right!711 (right!711 (right!711 xs!533)))))) (- 1)))))

(declare-fun b!28291 () Bool)

(assert (=> b!28291 (= e!14468 (balanced!59 (right!711 (right!711 (right!711 (right!711 xs!533))))))))

(declare-fun b!28289 () Bool)

(declare-fun res!12976 () Bool)

(assert (=> b!28289 (=> (not res!12976) (not e!14468))))

(assert (=> b!28289 (= res!12976 (<= (- (level!52 (left!708 (right!711 (right!711 (right!711 xs!533))))) (level!52 (right!711 (right!711 (right!711 (right!711 xs!533)))))) 1))))

(assert (= (and d!14907 (not res!12975)) b!28288))

(assert (= (and b!28288 res!12974) b!28289))

(assert (= (and b!28289 res!12976) b!28290))

(assert (= (and b!28290 res!12977) b!28291))

(declare-fun m!29833 () Bool)

(assert (=> b!28290 m!29833))

(declare-fun m!29835 () Bool)

(assert (=> b!28288 m!29835))

(declare-fun m!29837 () Bool)

(assert (=> b!28288 m!29837))

(declare-fun m!29839 () Bool)

(assert (=> b!28291 m!29839))

(assert (=> b!28289 m!29835))

(assert (=> b!28289 m!29837))

(assert (=> b!28225 d!14907))

(declare-fun d!14909 () Bool)

(declare-fun lt!4906 () Int)

(assert (=> d!14909 (>= lt!4906 0)))

(declare-fun e!14471 () Int)

(assert (=> d!14909 (= lt!4906 e!14471)))

(declare-fun c!6205 () Bool)

(assert (=> d!14909 (= c!6205 (is-Nil!356 lt!4856))))

(assert (=> d!14909 (= (size!271 lt!4856) lt!4906)))

(declare-fun b!28296 () Bool)

(assert (=> b!28296 (= e!14471 0)))

(declare-fun b!28297 () Bool)

(assert (=> b!28297 (= e!14471 (+ 1 (size!271 (t!4375 lt!4856))))))

(assert (= (and d!14909 c!6205) b!28296))

(assert (= (and d!14909 (not c!6205)) b!28297))

(declare-fun m!29841 () Bool)

(assert (=> b!28297 m!29841))

(assert (=> d!14811 d!14909))

(declare-fun b!28306 () Bool)

(declare-fun e!14476 () Int)

(assert (=> b!28306 (= e!14476 0)))

(declare-fun b!28309 () Bool)

(declare-fun e!14477 () Int)

(assert (=> b!28309 (= e!14477 (+ (size!272 (left!708 (right!711 ys!77))) (size!272 (right!711 (right!711 ys!77)))))))

(declare-fun b!28308 () Bool)

(assert (=> b!28308 (= e!14477 1)))

(declare-fun d!14911 () Bool)

(declare-fun lt!4909 () Int)

(assert (=> d!14911 (>= lt!4909 0)))

(assert (=> d!14911 (= lt!4909 e!14476)))

(declare-fun c!6210 () Bool)

(assert (=> d!14911 (= c!6210 (is-Empty!74 (right!711 ys!77)))))

(assert (=> d!14911 (= (size!272 (right!711 ys!77)) lt!4909)))

(declare-fun b!28307 () Bool)

(assert (=> b!28307 (= e!14476 e!14477)))

(declare-fun c!6211 () Bool)

(assert (=> b!28307 (= c!6211 (is-Single!63 (right!711 ys!77)))))

(assert (= (and b!28307 c!6211) b!28308))

(assert (= (and b!28307 (not c!6211)) b!28309))

(assert (= (and d!14911 c!6210) b!28306))

(assert (= (and d!14911 (not c!6210)) b!28307))

(declare-fun m!29843 () Bool)

(assert (=> b!28309 m!29843))

(declare-fun m!29845 () Bool)

(assert (=> b!28309 m!29845))

(assert (=> d!14811 d!14911))

(declare-fun d!14913 () Bool)

(declare-fun res!12979 () Bool)

(declare-fun e!14478 () Bool)

(assert (=> d!14913 (=> res!12979 e!14478)))

(assert (=> d!14913 (= res!12979 (not (is-CC!63 (right!711 (left!708 xs!533)))))))

(assert (=> d!14913 (= (balanced!59 (right!711 (left!708 xs!533))) e!14478)))

(declare-fun b!28312 () Bool)

(declare-fun res!12981 () Bool)

(declare-fun e!14479 () Bool)

(assert (=> b!28312 (=> (not res!12981) (not e!14479))))

(assert (=> b!28312 (= res!12981 (balanced!59 (left!708 (right!711 (left!708 xs!533)))))))

(declare-fun b!28310 () Bool)

(assert (=> b!28310 (= e!14478 e!14479)))

(declare-fun res!12978 () Bool)

(assert (=> b!28310 (=> (not res!12978) (not e!14479))))

(assert (=> b!28310 (= res!12978 (>= (- (level!52 (left!708 (right!711 (left!708 xs!533)))) (level!52 (right!711 (right!711 (left!708 xs!533))))) (- 1)))))

(declare-fun b!28313 () Bool)

(assert (=> b!28313 (= e!14479 (balanced!59 (right!711 (right!711 (left!708 xs!533)))))))

(declare-fun b!28311 () Bool)

(declare-fun res!12980 () Bool)

(assert (=> b!28311 (=> (not res!12980) (not e!14479))))

(assert (=> b!28311 (= res!12980 (<= (- (level!52 (left!708 (right!711 (left!708 xs!533)))) (level!52 (right!711 (right!711 (left!708 xs!533))))) 1))))

(assert (= (and d!14913 (not res!12979)) b!28310))

(assert (= (and b!28310 res!12978) b!28311))

(assert (= (and b!28311 res!12980) b!28312))

(assert (= (and b!28312 res!12981) b!28313))

(declare-fun m!29847 () Bool)

(assert (=> b!28312 m!29847))

(assert (=> b!28310 m!29499))

(assert (=> b!28310 m!29497))

(declare-fun m!29849 () Bool)

(assert (=> b!28313 m!29849))

(assert (=> b!28311 m!29499))

(assert (=> b!28311 m!29497))

(assert (=> b!28233 d!14913))

(declare-fun d!14915 () Bool)

(declare-fun lt!4910 () Int)

(assert (=> d!14915 (>= lt!4910 0)))

(declare-fun e!14480 () Int)

(assert (=> d!14915 (= lt!4910 e!14480)))

(declare-fun c!6212 () Bool)

(assert (=> d!14915 (= c!6212 (is-Nil!356 lt!4895))))

(assert (=> d!14915 (= (size!271 lt!4895) lt!4910)))

(declare-fun b!28314 () Bool)

(assert (=> b!28314 (= e!14480 0)))

(declare-fun b!28315 () Bool)

(assert (=> b!28315 (= e!14480 (+ 1 (size!271 (t!4375 lt!4895))))))

(assert (= (and d!14915 c!6212) b!28314))

(assert (= (and d!14915 (not c!6212)) b!28315))

(declare-fun m!29851 () Bool)

(assert (=> b!28315 m!29851))

(assert (=> b!28218 d!14915))

(declare-fun d!14917 () Bool)

(declare-fun lt!4911 () Int)

(assert (=> d!14917 (>= lt!4911 0)))

(declare-fun e!14481 () Int)

(assert (=> d!14917 (= lt!4911 e!14481)))

(declare-fun c!6213 () Bool)

(assert (=> d!14917 (= c!6213 (is-Nil!356 (toList!116 (right!711 (right!711 xs!533)))))))

(assert (=> d!14917 (= (size!271 (toList!116 (right!711 (right!711 xs!533)))) lt!4911)))

(declare-fun b!28316 () Bool)

(assert (=> b!28316 (= e!14481 0)))

(declare-fun b!28317 () Bool)

(assert (=> b!28317 (= e!14481 (+ 1 (size!271 (t!4375 (toList!116 (right!711 (right!711 xs!533)))))))))

(assert (= (and d!14917 c!6213) b!28316))

(assert (= (and d!14917 (not c!6213)) b!28317))

(declare-fun m!29853 () Bool)

(assert (=> b!28317 m!29853))

(assert (=> b!28218 d!14917))

(declare-fun d!14919 () Bool)

(declare-fun lt!4912 () Int)

(assert (=> d!14919 (>= lt!4912 0)))

(declare-fun e!14482 () Int)

(assert (=> d!14919 (= lt!4912 e!14482)))

(declare-fun c!6214 () Bool)

(assert (=> d!14919 (= c!6214 (is-Nil!356 (toList!116 ys!77)))))

(assert (=> d!14919 (= (size!271 (toList!116 ys!77)) lt!4912)))

(declare-fun b!28318 () Bool)

(assert (=> b!28318 (= e!14482 0)))

(declare-fun b!28319 () Bool)

(assert (=> b!28319 (= e!14482 (+ 1 (size!271 (t!4375 (toList!116 ys!77)))))))

(assert (= (and d!14919 c!6214) b!28318))

(assert (= (and d!14919 (not c!6214)) b!28319))

(declare-fun m!29855 () Bool)

(assert (=> b!28319 m!29855))

(assert (=> b!28218 d!14919))

(declare-fun b!28321 () Bool)

(declare-fun e!14483 () Int)

(declare-fun lt!4913 () Int)

(declare-fun lt!4915 () Int)

(assert (=> b!28321 (= e!14483 (+ 1 (ite (>= lt!4913 lt!4915) lt!4913 lt!4915)))))

(assert (=> b!28321 (= lt!4915 (level!52 (right!711 (left!708 lt!4807))))))

(assert (=> b!28321 (= lt!4913 (level!52 (left!708 (left!708 lt!4807))))))

(declare-fun d!14921 () Bool)

(declare-fun lt!4914 () Int)

(assert (=> d!14921 (>= lt!4914 0)))

(assert (=> d!14921 (= lt!4914 e!14483)))

(declare-fun c!6215 () Bool)

(assert (=> d!14921 (= c!6215 (or (is-Empty!74 (left!708 lt!4807)) (is-Single!63 (left!708 lt!4807))))))

(assert (=> d!14921 (= (level!52 (left!708 lt!4807)) lt!4914)))

(declare-fun b!28320 () Bool)

(assert (=> b!28320 (= e!14483 0)))

(assert (= (and d!14921 c!6215) b!28320))

(assert (= (and d!14921 (not c!6215)) b!28321))

(declare-fun m!29857 () Bool)

(assert (=> b!28321 m!29857))

(declare-fun m!29859 () Bool)

(assert (=> b!28321 m!29859))

(assert (=> b!28122 d!14921))

(declare-fun b!28323 () Bool)

(declare-fun e!14484 () Int)

(declare-fun lt!4916 () Int)

(declare-fun lt!4918 () Int)

(assert (=> b!28323 (= e!14484 (+ 1 (ite (>= lt!4916 lt!4918) lt!4916 lt!4918)))))

(assert (=> b!28323 (= lt!4918 (level!52 (right!711 (right!711 lt!4807))))))

(assert (=> b!28323 (= lt!4916 (level!52 (left!708 (right!711 lt!4807))))))

(declare-fun d!14923 () Bool)

(declare-fun lt!4917 () Int)

(assert (=> d!14923 (>= lt!4917 0)))

(assert (=> d!14923 (= lt!4917 e!14484)))

(declare-fun c!6216 () Bool)

(assert (=> d!14923 (= c!6216 (or (is-Empty!74 (right!711 lt!4807)) (is-Single!63 (right!711 lt!4807))))))

(assert (=> d!14923 (= (level!52 (right!711 lt!4807)) lt!4917)))

(declare-fun b!28322 () Bool)

(assert (=> b!28322 (= e!14484 0)))

(assert (= (and d!14923 c!6216) b!28322))

(assert (= (and d!14923 (not c!6216)) b!28323))

(declare-fun m!29861 () Bool)

(assert (=> b!28323 m!29861))

(declare-fun m!29863 () Bool)

(assert (=> b!28323 m!29863))

(assert (=> b!28122 d!14923))

(declare-fun d!14925 () Bool)

(declare-fun c!6219 () Bool)

(assert (=> d!14925 (= c!6219 (is-Nil!356 lt!4888))))

(declare-fun e!14487 () (Set T!1829))

(assert (=> d!14925 (= (content!71 lt!4888) e!14487)))

(declare-fun b!28328 () Bool)

(assert (=> b!28328 (= e!14487 (as emptyset (Set T!1829)))))

(declare-fun b!28329 () Bool)

(assert (=> b!28329 (= e!14487 (union (insert (h!272 lt!4888) (as emptyset (Set T!1829))) (content!71 (t!4375 lt!4888))))))

(assert (= (and d!14925 c!6219) b!28328))

(assert (= (and d!14925 (not c!6219)) b!28329))

(declare-fun m!29865 () Bool)

(assert (=> b!28329 m!29865))

(declare-fun m!29867 () Bool)

(assert (=> b!28329 m!29867))

(assert (=> d!14863 d!14925))

(declare-fun d!14927 () Bool)

(declare-fun c!6220 () Bool)

(assert (=> d!14927 (= c!6220 (is-Nil!356 (toList!116 xs!533)))))

(declare-fun e!14488 () (Set T!1829))

(assert (=> d!14927 (= (content!71 (toList!116 xs!533)) e!14488)))

(declare-fun b!28330 () Bool)

(assert (=> b!28330 (= e!14488 (as emptyset (Set T!1829)))))

(declare-fun b!28331 () Bool)

(assert (=> b!28331 (= e!14488 (union (insert (h!272 (toList!116 xs!533)) (as emptyset (Set T!1829))) (content!71 (t!4375 (toList!116 xs!533)))))))

(assert (= (and d!14927 c!6220) b!28330))

(assert (= (and d!14927 (not c!6220)) b!28331))

(declare-fun m!29869 () Bool)

(assert (=> b!28331 m!29869))

(declare-fun m!29871 () Bool)

(assert (=> b!28331 m!29871))

(assert (=> d!14863 d!14927))

(declare-fun d!14929 () Bool)

(declare-fun c!6221 () Bool)

(assert (=> d!14929 (= c!6221 (is-Nil!356 (toList!116 (left!708 (left!708 ys!77)))))))

(declare-fun e!14489 () (Set T!1829))

(assert (=> d!14929 (= (content!71 (toList!116 (left!708 (left!708 ys!77)))) e!14489)))

(declare-fun b!28332 () Bool)

(assert (=> b!28332 (= e!14489 (as emptyset (Set T!1829)))))

(declare-fun b!28333 () Bool)

(assert (=> b!28333 (= e!14489 (union (insert (h!272 (toList!116 (left!708 (left!708 ys!77)))) (as emptyset (Set T!1829))) (content!71 (t!4375 (toList!116 (left!708 (left!708 ys!77)))))))))

(assert (= (and d!14929 c!6221) b!28332))

(assert (= (and d!14929 (not c!6221)) b!28333))

(declare-fun m!29873 () Bool)

(assert (=> b!28333 m!29873))

(declare-fun m!29875 () Bool)

(assert (=> b!28333 m!29875))

(assert (=> d!14863 d!14929))

(declare-fun d!14931 () Bool)

(declare-fun lt!4919 () Int)

(assert (=> d!14931 (>= lt!4919 0)))

(declare-fun e!14490 () Int)

(assert (=> d!14931 (= lt!4919 e!14490)))

(declare-fun c!6222 () Bool)

(assert (=> d!14931 (= c!6222 (is-Nil!356 lt!4870))))

(assert (=> d!14931 (= (size!271 lt!4870) lt!4919)))

(declare-fun b!28334 () Bool)

(assert (=> b!28334 (= e!14490 0)))

(declare-fun b!28335 () Bool)

(assert (=> b!28335 (= e!14490 (+ 1 (size!271 (t!4375 lt!4870))))))

(assert (= (and d!14931 c!6222) b!28334))

(assert (= (and d!14931 (not c!6222)) b!28335))

(declare-fun m!29877 () Bool)

(assert (=> b!28335 m!29877))

(assert (=> d!14837 d!14931))

(declare-fun b!28336 () Bool)

(declare-fun e!14491 () Int)

(assert (=> b!28336 (= e!14491 0)))

(declare-fun b!28339 () Bool)

(declare-fun e!14492 () Int)

(assert (=> b!28339 (= e!14492 (+ (size!272 (left!708 (left!708 (right!711 xs!533)))) (size!272 (right!711 (left!708 (right!711 xs!533))))))))

(declare-fun b!28338 () Bool)

(assert (=> b!28338 (= e!14492 1)))

(declare-fun d!14933 () Bool)

(declare-fun lt!4920 () Int)

(assert (=> d!14933 (>= lt!4920 0)))

(assert (=> d!14933 (= lt!4920 e!14491)))

(declare-fun c!6223 () Bool)

(assert (=> d!14933 (= c!6223 (is-Empty!74 (left!708 (right!711 xs!533))))))

(assert (=> d!14933 (= (size!272 (left!708 (right!711 xs!533))) lt!4920)))

(declare-fun b!28337 () Bool)

(assert (=> b!28337 (= e!14491 e!14492)))

(declare-fun c!6224 () Bool)

(assert (=> b!28337 (= c!6224 (is-Single!63 (left!708 (right!711 xs!533))))))

(assert (= (and b!28337 c!6224) b!28338))

(assert (= (and b!28337 (not c!6224)) b!28339))

(assert (= (and d!14933 c!6223) b!28336))

(assert (= (and d!14933 (not c!6223)) b!28337))

(declare-fun m!29879 () Bool)

(assert (=> b!28339 m!29879))

(declare-fun m!29881 () Bool)

(assert (=> b!28339 m!29881))

(assert (=> d!14837 d!14933))

(assert (=> b!28110 d!14875))

(declare-fun b!28340 () Bool)

(declare-fun res!12995 () Bool)

(declare-fun e!14500 () Bool)

(assert (=> b!28340 (=> (not res!12995) (not e!14500))))

(declare-fun lt!4927 () Conc!64)

(assert (=> b!28340 (= res!12995 (concInv!58 lt!4927))))

(declare-fun b!28341 () Bool)

(declare-fun e!14499 () Conc!64)

(declare-fun res!12983 () Conc!64)

(assert (=> b!28341 (= e!14499 res!12983)))

(assert (=> b!28341 true))

(declare-fun e!14496 () Bool)

(assert (=> b!28341 e!14496))

(declare-fun b!28342 () Bool)

(declare-fun res!12987 () Bool)

(declare-fun e!14498 () Bool)

(assert (=> b!28342 (=> (not res!12987) (not e!14498))))

(assert (=> b!28342 (= res!12987 (balanced!59 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))))

(declare-fun b!28343 () Bool)

(declare-fun e!14501 () Int)

(declare-fun lt!4932 () Conc!64)

(assert (=> b!28343 (= e!14501 (level!52 lt!4932))))

(declare-fun e!14497 () Bool)

(declare-fun b!28344 () Bool)

(assert (=> b!28344 (= e!14497 (balanced!59 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(declare-fun b!28345 () Bool)

(declare-fun res!12988 () Bool)

(assert (=> b!28345 (=> (not res!12988) (not e!14500))))

(assert (=> b!28345 (= res!12988 (appendAssocInst!13 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))))

(declare-fun b!28346 () Bool)

(declare-fun lt!4922 () Bool)

(declare-fun e!14494 () Int)

(assert (=> b!28346 (= e!14494 (level!52 (ite lt!4922 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))))))

(declare-fun e!14493 () Conc!64)

(declare-fun lt!4921 () Bool)

(declare-fun b!28347 () Bool)

(declare-fun lt!4933 () Int)

(declare-fun lt!4925 () Int)

(declare-fun lt!4928 () Int)

(declare-fun lt!4931 () Int)

(assert (=> b!28347 (= e!14493 (ite lt!4921 (let ((res!12810 lt!4932)) (ite (>= lt!4928 lt!4933) (CC!63 (left!708 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))) res!12810) (ite (= lt!4931 (- lt!4925 3)) (CC!63 (left!708 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))) (CC!63 (left!708 (right!711 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) res!12810)) (CC!63 (CC!63 (left!708 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))) (left!708 (right!711 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))) res!12810)))) (let ((res!12813 lt!4932)) (ite (>= lt!4928 lt!4933) (CC!63 res!12813 (right!711 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))) (ite (= lt!4931 (- lt!4925 3)) (CC!63 (CC!63 res!12813 (right!711 (left!708 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))) (right!711 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))) (CC!63 res!12813 (CC!63 (right!711 (left!708 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))) (right!711 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))))))))))

(assert (=> b!28347 (= lt!4925 e!14494)))

(declare-fun c!6227 () Bool)

(assert (=> b!28347 (= c!6227 (or lt!4922 (and (not lt!4921) (not (>= lt!4928 lt!4933)))))))

(assert (=> b!28347 (= lt!4922 (and lt!4921 (not (>= lt!4928 lt!4933))))))

(assert (=> b!28347 (= lt!4931 e!14501)))

(declare-fun c!6226 () Bool)

(assert (=> b!28347 (= c!6226 (or (and lt!4921 (not (>= lt!4928 lt!4933))) (and (not lt!4921) (not (>= lt!4928 lt!4933)))))))

(assert (=> b!28347 (= lt!4932 e!14499)))

(declare-fun c!6225 () Bool)

(declare-fun lt!4936 () Bool)

(assert (=> b!28347 (= c!6225 (or lt!4936 (not lt!4921)))))

(assert (=> b!28347 (= lt!4936 lt!4921)))

(assert (=> b!28347 (= lt!4933 (level!52 (ite lt!4921 (right!711 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))) (left!708 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))))))

(assert (=> b!28347 (= lt!4928 (level!52 (ite lt!4921 (left!708 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))) (right!711 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))))))

(declare-fun lt!4934 () Int)

(assert (=> b!28347 (= lt!4921 (< lt!4934 (- 1)))))

(declare-fun b!28348 () Bool)

(declare-fun tp!6068 () Bool)

(declare-fun tp!6069 () Bool)

(assert (=> b!28348 (= e!14496 (and tp!6068 tp!6069))))

(declare-fun b!28349 () Bool)

(declare-fun e!14495 () Bool)

(assert (=> b!28349 (= e!14495 e!14500)))

(declare-fun res!12985 () Bool)

(assert (=> b!28349 (=> (not res!12985) (not e!14500))))

(declare-fun lt!4930 () Int)

(declare-fun lt!4929 () Int)

(declare-fun lt!4926 () Int)

(assert (=> b!28349 (= res!12985 (<= lt!4926 (+ (ite (>= lt!4929 lt!4930) lt!4929 lt!4930) 1)))))

(assert (=> b!28349 (= lt!4930 (level!52 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))))

(assert (=> b!28349 (= lt!4929 (level!52 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(assert (=> b!28349 (= lt!4926 (level!52 lt!4927))))

(declare-fun b!28350 () Bool)

(assert (=> b!28350 (= e!14498 (not (isEmpty!320 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))))))

(declare-fun b!28351 () Bool)

(assert (=> b!28351 (= e!14496 tp_is_empty!173)))

(declare-fun b!28352 () Bool)

(declare-fun res!12982 () Int)

(assert (=> b!28352 (= e!14494 res!12982)))

(assert (=> b!28352 true))

(assert (=> b!28352 true))

(declare-fun d!14935 () Bool)

(assert (=> d!14935 e!14495))

(declare-fun res!12992 () Bool)

(assert (=> d!14935 (=> (not res!12992) (not e!14495))))

(assert (=> d!14935 (= res!12992 (is-CC!63 lt!4927))))

(assert (=> d!14935 (= lt!4927 e!14493)))

(declare-fun c!6228 () Bool)

(assert (=> d!14935 (= c!6228 (and (>= lt!4934 (- 1)) (<= lt!4934 1)))))

(assert (=> d!14935 (= lt!4934 (- (level!52 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))) (level!52 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))))))

(assert (=> d!14935 e!14498))

(declare-fun res!12990 () Bool)

(assert (=> d!14935 (=> (not res!12990) (not e!14498))))

(assert (=> d!14935 (= res!12990 e!14497)))

(declare-fun res!12994 () Bool)

(assert (=> d!14935 (=> (not res!12994) (not e!14497))))

(assert (=> d!14935 (= res!12994 (concInv!58 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(assert (=> d!14935 (= (concatNonEmpty!16 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))) lt!4927)))

(declare-fun b!28353 () Bool)

(declare-fun res!12993 () Bool)

(assert (=> b!28353 (=> (not res!12993) (not e!14500))))

(assert (=> b!28353 (= res!12993 (balanced!59 lt!4927))))

(declare-fun b!28354 () Bool)

(declare-fun res!12989 () Bool)

(assert (=> b!28354 (=> (not res!12989) (not e!14498))))

(assert (=> b!28354 (= res!12989 (not (isEmpty!320 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))))))

(declare-fun b!28355 () Bool)

(declare-fun res!12986 () Bool)

(assert (=> b!28355 (=> (not res!12986) (not e!14500))))

(declare-fun lt!4923 () Int)

(declare-fun lt!4935 () Int)

(declare-fun lt!4924 () Int)

(assert (=> b!28355 (= res!12986 (>= lt!4935 (ite (>= lt!4923 lt!4924) lt!4923 lt!4924)))))

(assert (=> b!28355 (= lt!4924 (level!52 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))))

(assert (=> b!28355 (= lt!4923 (level!52 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(assert (=> b!28355 (= lt!4935 (level!52 lt!4927))))

(declare-fun b!28356 () Bool)

(assert (=> b!28356 (= e!14499 (concatNonEmpty!16 (ite lt!4936 (ite (>= lt!4928 lt!4933) (right!711 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))) (right!711 (right!711 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))) (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))) (ite lt!4936 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))) (ite (>= lt!4928 lt!4933) (left!708 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))) (left!708 (left!708 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))))))))

(declare-fun b!28357 () Bool)

(assert (=> b!28357 (= e!14493 (CC!63 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))))

(declare-fun b!28358 () Bool)

(declare-fun res!12984 () Int)

(assert (=> b!28358 (= e!14501 res!12984)))

(assert (=> b!28358 true))

(declare-fun b!28359 () Bool)

(assert (=> b!28359 (= e!14500 (concatCorrectness!13 lt!4927 (ite lt!4838 (ite (>= lt!4830 lt!4835) (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))))

(declare-fun b!28360 () Bool)

(declare-fun res!12991 () Bool)

(assert (=> b!28360 (=> (not res!12991) (not e!14498))))

(assert (=> b!28360 (= res!12991 (concInv!58 (ite lt!4838 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) (ite (>= lt!4830 lt!4835) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))))

(assert (= (and d!14935 res!12994) b!28344))

(assert (= (and d!14935 res!12990) b!28360))

(assert (= (and b!28360 res!12991) b!28342))

(assert (= (and b!28342 res!12987) b!28354))

(assert (= (and b!28354 res!12989) b!28350))

(assert (= (and b!28341 (is-CC!63 res!12983)) b!28348))

(assert (= (and b!28341 (is-Single!63 res!12983)) b!28351))

(assert (= (and b!28347 c!6225) b!28356))

(assert (= (and b!28347 (not c!6225)) b!28341))

(assert (= (and b!28347 c!6226) b!28343))

(assert (= (and b!28347 (not c!6226)) b!28358))

(assert (= (and b!28347 c!6227) b!28346))

(assert (= (and b!28347 (not c!6227)) b!28352))

(assert (= (and d!14935 c!6228) b!28357))

(assert (= (and d!14935 (not c!6228)) b!28347))

(assert (= (and d!14935 res!12992) b!28349))

(assert (= (and b!28349 res!12985) b!28355))

(assert (= (and b!28355 res!12986) b!28340))

(assert (= (and b!28340 res!12995) b!28353))

(assert (= (and b!28353 res!12993) b!28345))

(assert (= (and b!28345 res!12988) b!28359))

(declare-fun m!29883 () Bool)

(assert (=> d!14935 m!29883))

(declare-fun m!29885 () Bool)

(assert (=> d!14935 m!29885))

(declare-fun m!29887 () Bool)

(assert (=> d!14935 m!29887))

(assert (=> b!28355 m!29883))

(assert (=> b!28355 m!29885))

(declare-fun m!29889 () Bool)

(assert (=> b!28355 m!29889))

(declare-fun m!29891 () Bool)

(assert (=> b!28346 m!29891))

(declare-fun m!29893 () Bool)

(assert (=> b!28340 m!29893))

(declare-fun m!29895 () Bool)

(assert (=> b!28359 m!29895))

(declare-fun m!29897 () Bool)

(assert (=> b!28347 m!29897))

(declare-fun m!29899 () Bool)

(assert (=> b!28347 m!29899))

(declare-fun m!29901 () Bool)

(assert (=> b!28342 m!29901))

(declare-fun m!29903 () Bool)

(assert (=> b!28353 m!29903))

(declare-fun m!29905 () Bool)

(assert (=> b!28344 m!29905))

(declare-fun m!29907 () Bool)

(assert (=> b!28350 m!29907))

(declare-fun m!29909 () Bool)

(assert (=> b!28345 m!29909))

(assert (=> b!28349 m!29883))

(assert (=> b!28349 m!29885))

(assert (=> b!28349 m!29889))

(declare-fun m!29911 () Bool)

(assert (=> b!28360 m!29911))

(declare-fun m!29913 () Bool)

(assert (=> b!28356 m!29913))

(declare-fun m!29915 () Bool)

(assert (=> b!28343 m!29915))

(declare-fun m!29917 () Bool)

(assert (=> b!28354 m!29917))

(assert (=> b!28060 d!14935))

(declare-fun d!14937 () Bool)

(declare-fun lt!4937 () Int)

(assert (=> d!14937 (>= lt!4937 0)))

(declare-fun e!14502 () Int)

(assert (=> d!14937 (= lt!4937 e!14502)))

(declare-fun c!6229 () Bool)

(assert (=> d!14937 (= c!6229 (is-Nil!356 lt!4891))))

(assert (=> d!14937 (= (size!271 lt!4891) lt!4937)))

(declare-fun b!28361 () Bool)

(assert (=> b!28361 (= e!14502 0)))

(declare-fun b!28362 () Bool)

(assert (=> b!28362 (= e!14502 (+ 1 (size!271 (t!4375 lt!4891))))))

(assert (= (and d!14937 c!6229) b!28361))

(assert (= (and d!14937 (not c!6229)) b!28362))

(declare-fun m!29919 () Bool)

(assert (=> b!28362 m!29919))

(assert (=> b!28204 d!14937))

(declare-fun d!14939 () Bool)

(declare-fun lt!4938 () Int)

(assert (=> d!14939 (>= lt!4938 0)))

(declare-fun e!14503 () Int)

(assert (=> d!14939 (= lt!4938 e!14503)))

(declare-fun c!6230 () Bool)

(assert (=> d!14939 (= c!6230 (is-Nil!356 (toList!116 xs!533)))))

(assert (=> d!14939 (= (size!271 (toList!116 xs!533)) lt!4938)))

(declare-fun b!28363 () Bool)

(assert (=> b!28363 (= e!14503 0)))

(declare-fun b!28364 () Bool)

(assert (=> b!28364 (= e!14503 (+ 1 (size!271 (t!4375 (toList!116 xs!533)))))))

(assert (= (and d!14939 c!6230) b!28363))

(assert (= (and d!14939 (not c!6230)) b!28364))

(declare-fun m!29921 () Bool)

(assert (=> b!28364 m!29921))

(assert (=> b!28204 d!14939))

(assert (=> b!28204 d!14919))

(declare-fun d!14941 () Bool)

(declare-fun res!12997 () Bool)

(declare-fun e!14504 () Bool)

(assert (=> d!14941 (=> res!12997 e!14504)))

(assert (=> d!14941 (= res!12997 (not (is-CC!63 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(assert (=> d!14941 (= (balanced!59 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) e!14504)))

(declare-fun b!28367 () Bool)

(declare-fun res!12999 () Bool)

(declare-fun e!14505 () Bool)

(assert (=> b!28367 (=> (not res!12999) (not e!14505))))

(assert (=> b!28367 (= res!12999 (balanced!59 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(declare-fun b!28365 () Bool)

(assert (=> b!28365 (= e!14504 e!14505)))

(declare-fun res!12996 () Bool)

(assert (=> b!28365 (=> (not res!12996) (not e!14505))))

(assert (=> b!28365 (= res!12996 (>= (- (level!52 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))) (level!52 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (- 1)))))

(declare-fun b!28368 () Bool)

(assert (=> b!28368 (= e!14505 (balanced!59 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(declare-fun b!28366 () Bool)

(declare-fun res!12998 () Bool)

(assert (=> b!28366 (=> (not res!12998) (not e!14505))))

(assert (=> b!28366 (= res!12998 (<= (- (level!52 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))) (level!52 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) 1))))

(assert (= (and d!14941 (not res!12997)) b!28365))

(assert (= (and b!28365 res!12996) b!28366))

(assert (= (and b!28366 res!12998) b!28367))

(assert (= (and b!28367 res!12999) b!28368))

(declare-fun m!29923 () Bool)

(assert (=> b!28367 m!29923))

(declare-fun m!29925 () Bool)

(assert (=> b!28365 m!29925))

(declare-fun m!29927 () Bool)

(assert (=> b!28365 m!29927))

(declare-fun m!29929 () Bool)

(assert (=> b!28368 m!29929))

(assert (=> b!28366 m!29925))

(assert (=> b!28366 m!29927))

(assert (=> b!28048 d!14941))

(declare-fun b!28369 () Bool)

(declare-fun e!14506 () Bool)

(assert (=> b!28369 (= e!14506 (= (++!41 (++!41 (t!4375 (toList!116 xs!533)) (toList!116 (left!708 ys!77))) (toList!116 (right!711 ys!77))) (++!41 (t!4375 (toList!116 xs!533)) (++!41 (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))))))))

(declare-fun lt!4939 () Bool)

(assert (=> b!28369 (= lt!4939 (appendAssoc!9 (t!4375 (t!4375 (toList!116 xs!533))) (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))))))

(declare-fun d!14943 () Bool)

(assert (=> d!14943 e!14506))

(declare-fun c!6231 () Bool)

(assert (=> d!14943 (= c!6231 (is-Cons!355 (t!4375 (toList!116 xs!533))))))

(assert (=> d!14943 (= (appendAssoc!9 (t!4375 (toList!116 xs!533)) (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))) true)))

(declare-fun b!28370 () Bool)

(assert (=> b!28370 (= e!14506 (= (++!41 (++!41 (t!4375 (toList!116 xs!533)) (toList!116 (left!708 ys!77))) (toList!116 (right!711 ys!77))) (++!41 (t!4375 (toList!116 xs!533)) (++!41 (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))))))))

(assert (= (and d!14943 c!6231) b!28369))

(assert (= (and d!14943 (not c!6231)) b!28370))

(assert (=> b!28369 m!29375))

(assert (=> b!28369 m!29377))

(declare-fun m!29931 () Bool)

(assert (=> b!28369 m!29931))

(assert (=> b!28369 m!29375))

(declare-fun m!29933 () Bool)

(assert (=> b!28369 m!29933))

(assert (=> b!28369 m!29531))

(declare-fun m!29935 () Bool)

(assert (=> b!28369 m!29935))

(assert (=> b!28369 m!29375))

(assert (=> b!28369 m!29377))

(assert (=> b!28369 m!29531))

(assert (=> b!28369 m!29933))

(assert (=> b!28369 m!29377))

(declare-fun m!29937 () Bool)

(assert (=> b!28369 m!29937))

(assert (=> b!28370 m!29375))

(assert (=> b!28370 m!29933))

(assert (=> b!28370 m!29933))

(assert (=> b!28370 m!29377))

(assert (=> b!28370 m!29937))

(assert (=> b!28370 m!29375))

(assert (=> b!28370 m!29377))

(assert (=> b!28370 m!29531))

(assert (=> b!28370 m!29531))

(assert (=> b!28370 m!29935))

(assert (=> b!28095 d!14943))

(declare-fun b!28374 () Bool)

(declare-fun e!14508 () Bool)

(declare-fun lt!4940 () List!361)

(assert (=> b!28374 (= e!14508 (or (not (= (toList!116 (right!711 ys!77)) Nil!356)) (= lt!4940 (toList!116 (left!708 ys!77)))))))

(declare-fun b!28371 () Bool)

(declare-fun e!14507 () List!361)

(assert (=> b!28371 (= e!14507 (toList!116 (right!711 ys!77)))))

(declare-fun d!14945 () Bool)

(assert (=> d!14945 e!14508))

(declare-fun res!13001 () Bool)

(assert (=> d!14945 (=> (not res!13001) (not e!14508))))

(assert (=> d!14945 (= res!13001 (= (content!71 lt!4940) (union (content!71 (toList!116 (left!708 ys!77))) (content!71 (toList!116 (right!711 ys!77))))))))

(assert (=> d!14945 (= lt!4940 e!14507)))

(declare-fun c!6232 () Bool)

(assert (=> d!14945 (= c!6232 (is-Nil!356 (toList!116 (left!708 ys!77))))))

(assert (=> d!14945 (= (++!41 (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))) lt!4940)))

(declare-fun b!28372 () Bool)

(assert (=> b!28372 (= e!14507 (Cons!355 (h!272 (toList!116 (left!708 ys!77))) (++!41 (t!4375 (toList!116 (left!708 ys!77))) (toList!116 (right!711 ys!77)))))))

(declare-fun b!28373 () Bool)

(declare-fun res!13000 () Bool)

(assert (=> b!28373 (=> (not res!13000) (not e!14508))))

(assert (=> b!28373 (= res!13000 (= (size!271 lt!4940) (+ (size!271 (toList!116 (left!708 ys!77))) (size!271 (toList!116 (right!711 ys!77))))))))

(assert (= (and d!14945 c!6232) b!28371))

(assert (= (and d!14945 (not c!6232)) b!28372))

(assert (= (and d!14945 res!13001) b!28373))

(assert (= (and b!28373 res!13000) b!28374))

(declare-fun m!29939 () Bool)

(assert (=> d!14945 m!29939))

(assert (=> d!14945 m!29375))

(declare-fun m!29941 () Bool)

(assert (=> d!14945 m!29941))

(assert (=> d!14945 m!29377))

(declare-fun m!29943 () Bool)

(assert (=> d!14945 m!29943))

(assert (=> b!28372 m!29377))

(declare-fun m!29945 () Bool)

(assert (=> b!28372 m!29945))

(declare-fun m!29947 () Bool)

(assert (=> b!28373 m!29947))

(assert (=> b!28373 m!29375))

(declare-fun m!29949 () Bool)

(assert (=> b!28373 m!29949))

(assert (=> b!28373 m!29377))

(declare-fun m!29951 () Bool)

(assert (=> b!28373 m!29951))

(assert (=> b!28095 d!14945))

(declare-fun e!14510 () Bool)

(declare-fun lt!4941 () List!361)

(declare-fun b!28378 () Bool)

(assert (=> b!28378 (= e!14510 (or (not (= (toList!116 (right!711 ys!77)) Nil!356)) (= lt!4941 (++!41 (toList!116 xs!533) (toList!116 (left!708 ys!77))))))))

(declare-fun b!28375 () Bool)

(declare-fun e!14509 () List!361)

(assert (=> b!28375 (= e!14509 (toList!116 (right!711 ys!77)))))

(declare-fun d!14947 () Bool)

(assert (=> d!14947 e!14510))

(declare-fun res!13003 () Bool)

(assert (=> d!14947 (=> (not res!13003) (not e!14510))))

(assert (=> d!14947 (= res!13003 (= (content!71 lt!4941) (union (content!71 (++!41 (toList!116 xs!533) (toList!116 (left!708 ys!77)))) (content!71 (toList!116 (right!711 ys!77))))))))

(assert (=> d!14947 (= lt!4941 e!14509)))

(declare-fun c!6233 () Bool)

(assert (=> d!14947 (= c!6233 (is-Nil!356 (++!41 (toList!116 xs!533) (toList!116 (left!708 ys!77)))))))

(assert (=> d!14947 (= (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 ys!77))) (toList!116 (right!711 ys!77))) lt!4941)))

(declare-fun b!28376 () Bool)

(assert (=> b!28376 (= e!14509 (Cons!355 (h!272 (++!41 (toList!116 xs!533) (toList!116 (left!708 ys!77)))) (++!41 (t!4375 (++!41 (toList!116 xs!533) (toList!116 (left!708 ys!77)))) (toList!116 (right!711 ys!77)))))))

(declare-fun b!28377 () Bool)

(declare-fun res!13002 () Bool)

(assert (=> b!28377 (=> (not res!13002) (not e!14510))))

(assert (=> b!28377 (= res!13002 (= (size!271 lt!4941) (+ (size!271 (++!41 (toList!116 xs!533) (toList!116 (left!708 ys!77)))) (size!271 (toList!116 (right!711 ys!77))))))))

(assert (= (and d!14947 c!6233) b!28375))

(assert (= (and d!14947 (not c!6233)) b!28376))

(assert (= (and d!14947 res!13003) b!28377))

(assert (= (and b!28377 res!13002) b!28378))

(declare-fun m!29953 () Bool)

(assert (=> d!14947 m!29953))

(assert (=> d!14947 m!29539))

(declare-fun m!29955 () Bool)

(assert (=> d!14947 m!29955))

(assert (=> d!14947 m!29377))

(assert (=> d!14947 m!29943))

(assert (=> b!28376 m!29377))

(declare-fun m!29957 () Bool)

(assert (=> b!28376 m!29957))

(declare-fun m!29959 () Bool)

(assert (=> b!28377 m!29959))

(assert (=> b!28377 m!29539))

(declare-fun m!29961 () Bool)

(assert (=> b!28377 m!29961))

(assert (=> b!28377 m!29377))

(assert (=> b!28377 m!29951))

(assert (=> b!28095 d!14947))

(declare-fun b!28382 () Bool)

(declare-fun lt!4942 () List!361)

(declare-fun e!14512 () Bool)

(assert (=> b!28382 (= e!14512 (or (not (= (++!41 (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))) Nil!356)) (= lt!4942 (toList!116 xs!533))))))

(declare-fun b!28379 () Bool)

(declare-fun e!14511 () List!361)

(assert (=> b!28379 (= e!14511 (++!41 (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))))))

(declare-fun d!14949 () Bool)

(assert (=> d!14949 e!14512))

(declare-fun res!13005 () Bool)

(assert (=> d!14949 (=> (not res!13005) (not e!14512))))

(assert (=> d!14949 (= res!13005 (= (content!71 lt!4942) (union (content!71 (toList!116 xs!533)) (content!71 (++!41 (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77)))))))))

(assert (=> d!14949 (= lt!4942 e!14511)))

(declare-fun c!6234 () Bool)

(assert (=> d!14949 (= c!6234 (is-Nil!356 (toList!116 xs!533)))))

(assert (=> d!14949 (= (++!41 (toList!116 xs!533) (++!41 (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77)))) lt!4942)))

(declare-fun b!28380 () Bool)

(assert (=> b!28380 (= e!14511 (Cons!355 (h!272 (toList!116 xs!533)) (++!41 (t!4375 (toList!116 xs!533)) (++!41 (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))))))))

(declare-fun b!28381 () Bool)

(declare-fun res!13004 () Bool)

(assert (=> b!28381 (=> (not res!13004) (not e!14512))))

(assert (=> b!28381 (= res!13004 (= (size!271 lt!4942) (+ (size!271 (toList!116 xs!533)) (size!271 (++!41 (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77)))))))))

(assert (= (and d!14949 c!6234) b!28379))

(assert (= (and d!14949 (not c!6234)) b!28380))

(assert (= (and d!14949 res!13005) b!28381))

(assert (= (and b!28381 res!13004) b!28382))

(declare-fun m!29963 () Bool)

(assert (=> d!14949 m!29963))

(assert (=> d!14949 m!29363))

(assert (=> d!14949 m!29713))

(assert (=> d!14949 m!29531))

(declare-fun m!29965 () Bool)

(assert (=> d!14949 m!29965))

(assert (=> b!28380 m!29531))

(assert (=> b!28380 m!29935))

(declare-fun m!29967 () Bool)

(assert (=> b!28381 m!29967))

(assert (=> b!28381 m!29363))

(assert (=> b!28381 m!29721))

(assert (=> b!28381 m!29531))

(declare-fun m!29969 () Bool)

(assert (=> b!28381 m!29969))

(assert (=> b!28095 d!14949))

(declare-fun lt!4943 () List!361)

(declare-fun b!28386 () Bool)

(declare-fun e!14514 () Bool)

(assert (=> b!28386 (= e!14514 (or (not (= (toList!116 (left!708 ys!77)) Nil!356)) (= lt!4943 (toList!116 xs!533))))))

(declare-fun b!28383 () Bool)

(declare-fun e!14513 () List!361)

(assert (=> b!28383 (= e!14513 (toList!116 (left!708 ys!77)))))

(declare-fun d!14951 () Bool)

(assert (=> d!14951 e!14514))

(declare-fun res!13007 () Bool)

(assert (=> d!14951 (=> (not res!13007) (not e!14514))))

(assert (=> d!14951 (= res!13007 (= (content!71 lt!4943) (union (content!71 (toList!116 xs!533)) (content!71 (toList!116 (left!708 ys!77))))))))

(assert (=> d!14951 (= lt!4943 e!14513)))

(declare-fun c!6235 () Bool)

(assert (=> d!14951 (= c!6235 (is-Nil!356 (toList!116 xs!533)))))

(assert (=> d!14951 (= (++!41 (toList!116 xs!533) (toList!116 (left!708 ys!77))) lt!4943)))

(declare-fun b!28384 () Bool)

(assert (=> b!28384 (= e!14513 (Cons!355 (h!272 (toList!116 xs!533)) (++!41 (t!4375 (toList!116 xs!533)) (toList!116 (left!708 ys!77)))))))

(declare-fun b!28385 () Bool)

(declare-fun res!13006 () Bool)

(assert (=> b!28385 (=> (not res!13006) (not e!14514))))

(assert (=> b!28385 (= res!13006 (= (size!271 lt!4943) (+ (size!271 (toList!116 xs!533)) (size!271 (toList!116 (left!708 ys!77))))))))

(assert (= (and d!14951 c!6235) b!28383))

(assert (= (and d!14951 (not c!6235)) b!28384))

(assert (= (and d!14951 res!13007) b!28385))

(assert (= (and b!28385 res!13006) b!28386))

(declare-fun m!29971 () Bool)

(assert (=> d!14951 m!29971))

(assert (=> d!14951 m!29363))

(assert (=> d!14951 m!29713))

(assert (=> d!14951 m!29375))

(assert (=> d!14951 m!29941))

(assert (=> b!28384 m!29375))

(assert (=> b!28384 m!29933))

(declare-fun m!29973 () Bool)

(assert (=> b!28385 m!29973))

(assert (=> b!28385 m!29363))

(assert (=> b!28385 m!29721))

(assert (=> b!28385 m!29375))

(assert (=> b!28385 m!29949))

(assert (=> b!28095 d!14951))

(declare-fun b!28388 () Bool)

(declare-fun e!14515 () Int)

(declare-fun lt!4944 () Int)

(declare-fun lt!4946 () Int)

(assert (=> b!28388 (= e!14515 (+ 1 (ite (>= lt!4944 lt!4946) lt!4944 lt!4946)))))

(assert (=> b!28388 (= lt!4946 (level!52 (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))

(assert (=> b!28388 (= lt!4944 (level!52 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))

(declare-fun d!14953 () Bool)

(declare-fun lt!4945 () Int)

(assert (=> d!14953 (>= lt!4945 0)))

(assert (=> d!14953 (= lt!4945 e!14515)))

(declare-fun c!6236 () Bool)

(assert (=> d!14953 (= c!6236 (or (is-Empty!74 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (is-Single!63 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))

(assert (=> d!14953 (= (level!52 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) lt!4945)))

(declare-fun b!28387 () Bool)

(assert (=> b!28387 (= e!14515 0)))

(assert (= (and d!14953 c!6236) b!28387))

(assert (= (and d!14953 (not c!6236)) b!28388))

(declare-fun m!29975 () Bool)

(assert (=> b!28388 m!29975))

(declare-fun m!29977 () Bool)

(assert (=> b!28388 m!29977))

(assert (=> b!28059 d!14953))

(declare-fun b!28390 () Bool)

(declare-fun e!14516 () Int)

(declare-fun lt!4947 () Int)

(declare-fun lt!4949 () Int)

(assert (=> b!28390 (= e!14516 (+ 1 (ite (>= lt!4947 lt!4949) lt!4947 lt!4949)))))

(assert (=> b!28390 (= lt!4949 (level!52 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(assert (=> b!28390 (= lt!4947 (level!52 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(declare-fun d!14955 () Bool)

(declare-fun lt!4948 () Int)

(assert (=> d!14955 (>= lt!4948 0)))

(assert (=> d!14955 (= lt!4948 e!14516)))

(declare-fun c!6237 () Bool)

(assert (=> d!14955 (= c!6237 (or (is-Empty!74 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (is-Single!63 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(assert (=> d!14955 (= (level!52 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) lt!4948)))

(declare-fun b!28389 () Bool)

(assert (=> b!28389 (= e!14516 0)))

(assert (= (and d!14955 c!6237) b!28389))

(assert (= (and d!14955 (not c!6237)) b!28390))

(assert (=> b!28390 m!29927))

(assert (=> b!28390 m!29925))

(assert (=> b!28059 d!14955))

(declare-fun b!28392 () Bool)

(declare-fun e!14517 () Int)

(declare-fun lt!4950 () Int)

(declare-fun lt!4952 () Int)

(assert (=> b!28392 (= e!14517 (+ 1 (ite (>= lt!4950 lt!4952) lt!4950 lt!4952)))))

(assert (=> b!28392 (= lt!4952 (level!52 (right!711 lt!4829)))))

(assert (=> b!28392 (= lt!4950 (level!52 (left!708 lt!4829)))))

(declare-fun d!14957 () Bool)

(declare-fun lt!4951 () Int)

(assert (=> d!14957 (>= lt!4951 0)))

(assert (=> d!14957 (= lt!4951 e!14517)))

(declare-fun c!6238 () Bool)

(assert (=> d!14957 (= c!6238 (or (is-Empty!74 lt!4829) (is-Single!63 lt!4829)))))

(assert (=> d!14957 (= (level!52 lt!4829) lt!4951)))

(declare-fun b!28391 () Bool)

(assert (=> b!28391 (= e!14517 0)))

(assert (= (and d!14957 c!6238) b!28391))

(assert (= (and d!14957 (not c!6238)) b!28392))

(declare-fun m!29979 () Bool)

(assert (=> b!28392 m!29979))

(declare-fun m!29981 () Bool)

(assert (=> b!28392 m!29981))

(assert (=> b!28059 d!14957))

(assert (=> b!28230 d!14793))

(assert (=> b!28230 d!14791))

(declare-fun e!14519 () Bool)

(declare-fun lt!4953 () List!361)

(declare-fun b!28396 () Bool)

(assert (=> b!28396 (= e!14519 (or (not (= (toList!116 (right!711 (left!708 ys!77))) Nil!356)) (= lt!4953 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))))))))

(declare-fun b!28393 () Bool)

(declare-fun e!14518 () List!361)

(assert (=> b!28393 (= e!14518 (toList!116 (right!711 (left!708 ys!77))))))

(declare-fun d!14959 () Bool)

(assert (=> d!14959 e!14519))

(declare-fun res!13009 () Bool)

(assert (=> d!14959 (=> (not res!13009) (not e!14519))))

(assert (=> d!14959 (= res!13009 (= (content!71 lt!4953) (union (content!71 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))) (content!71 (toList!116 (right!711 (left!708 ys!77)))))))))

(assert (=> d!14959 (= lt!4953 e!14518)))

(declare-fun c!6239 () Bool)

(assert (=> d!14959 (= c!6239 (is-Nil!356 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))))))

(assert (=> d!14959 (= (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77)))) lt!4953)))

(declare-fun b!28394 () Bool)

(assert (=> b!28394 (= e!14518 (Cons!355 (h!272 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))) (++!41 (t!4375 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))) (toList!116 (right!711 (left!708 ys!77))))))))

(declare-fun b!28395 () Bool)

(declare-fun res!13008 () Bool)

(assert (=> b!28395 (=> (not res!13008) (not e!14519))))

(assert (=> b!28395 (= res!13008 (= (size!271 lt!4953) (+ (size!271 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))) (size!271 (toList!116 (right!711 (left!708 ys!77)))))))))

(assert (= (and d!14959 c!6239) b!28393))

(assert (= (and d!14959 (not c!6239)) b!28394))

(assert (= (and d!14959 res!13009) b!28395))

(assert (= (and b!28395 res!13008) b!28396))

(declare-fun m!29983 () Bool)

(assert (=> d!14959 m!29983))

(assert (=> d!14959 m!29393))

(declare-fun m!29985 () Bool)

(assert (=> d!14959 m!29985))

(assert (=> d!14959 m!29383))

(declare-fun m!29987 () Bool)

(assert (=> d!14959 m!29987))

(assert (=> b!28394 m!29383))

(declare-fun m!29989 () Bool)

(assert (=> b!28394 m!29989))

(declare-fun m!29991 () Bool)

(assert (=> b!28395 m!29991))

(assert (=> b!28395 m!29393))

(declare-fun m!29993 () Bool)

(assert (=> b!28395 m!29993))

(assert (=> b!28395 m!29383))

(declare-fun m!29995 () Bool)

(assert (=> b!28395 m!29995))

(assert (=> b!28235 d!14959))

(assert (=> b!28235 d!14863))

(declare-fun lt!4954 () List!361)

(declare-fun b!28400 () Bool)

(declare-fun e!14521 () Bool)

(assert (=> b!28400 (= e!14521 (or (not (= (++!41 (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))) Nil!356)) (= lt!4954 (toList!116 xs!533))))))

(declare-fun b!28397 () Bool)

(declare-fun e!14520 () List!361)

(assert (=> b!28397 (= e!14520 (++!41 (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))))))

(declare-fun d!14961 () Bool)

(assert (=> d!14961 e!14521))

(declare-fun res!13011 () Bool)

(assert (=> d!14961 (=> (not res!13011) (not e!14521))))

(assert (=> d!14961 (= res!13011 (= (content!71 lt!4954) (union (content!71 (toList!116 xs!533)) (content!71 (++!41 (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77))))))))))

(assert (=> d!14961 (= lt!4954 e!14520)))

(declare-fun c!6240 () Bool)

(assert (=> d!14961 (= c!6240 (is-Nil!356 (toList!116 xs!533)))))

(assert (=> d!14961 (= (++!41 (toList!116 xs!533) (++!41 (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77))))) lt!4954)))

(declare-fun b!28398 () Bool)

(assert (=> b!28398 (= e!14520 (Cons!355 (h!272 (toList!116 xs!533)) (++!41 (t!4375 (toList!116 xs!533)) (++!41 (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))))))))

(declare-fun b!28399 () Bool)

(declare-fun res!13010 () Bool)

(assert (=> b!28399 (=> (not res!13010) (not e!14521))))

(assert (=> b!28399 (= res!13010 (= (size!271 lt!4954) (+ (size!271 (toList!116 xs!533)) (size!271 (++!41 (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77))))))))))

(assert (= (and d!14961 c!6240) b!28397))

(assert (= (and d!14961 (not c!6240)) b!28398))

(assert (= (and d!14961 res!13011) b!28399))

(assert (= (and b!28399 res!13010) b!28400))

(declare-fun m!29997 () Bool)

(assert (=> d!14961 m!29997))

(assert (=> d!14961 m!29363))

(assert (=> d!14961 m!29713))

(assert (=> d!14961 m!29549))

(declare-fun m!29999 () Bool)

(assert (=> d!14961 m!29999))

(assert (=> b!28398 m!29549))

(declare-fun m!30001 () Bool)

(assert (=> b!28398 m!30001))

(declare-fun m!30003 () Bool)

(assert (=> b!28399 m!30003))

(assert (=> b!28399 m!29363))

(assert (=> b!28399 m!29721))

(assert (=> b!28399 m!29549))

(declare-fun m!30005 () Bool)

(assert (=> b!28399 m!30005))

(assert (=> b!28235 d!14961))

(declare-fun b!28404 () Bool)

(declare-fun e!14523 () Bool)

(declare-fun lt!4955 () List!361)

(assert (=> b!28404 (= e!14523 (or (not (= (toList!116 (right!711 (left!708 ys!77))) Nil!356)) (= lt!4955 (toList!116 (left!708 (left!708 ys!77))))))))

(declare-fun b!28401 () Bool)

(declare-fun e!14522 () List!361)

(assert (=> b!28401 (= e!14522 (toList!116 (right!711 (left!708 ys!77))))))

(declare-fun d!14963 () Bool)

(assert (=> d!14963 e!14523))

(declare-fun res!13013 () Bool)

(assert (=> d!14963 (=> (not res!13013) (not e!14523))))

(assert (=> d!14963 (= res!13013 (= (content!71 lt!4955) (union (content!71 (toList!116 (left!708 (left!708 ys!77)))) (content!71 (toList!116 (right!711 (left!708 ys!77)))))))))

(assert (=> d!14963 (= lt!4955 e!14522)))

(declare-fun c!6241 () Bool)

(assert (=> d!14963 (= c!6241 (is-Nil!356 (toList!116 (left!708 (left!708 ys!77)))))))

(assert (=> d!14963 (= (++!41 (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))) lt!4955)))

(declare-fun b!28402 () Bool)

(assert (=> b!28402 (= e!14522 (Cons!355 (h!272 (toList!116 (left!708 (left!708 ys!77)))) (++!41 (t!4375 (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77))))))))

(declare-fun b!28403 () Bool)

(declare-fun res!13012 () Bool)

(assert (=> b!28403 (=> (not res!13012) (not e!14523))))

(assert (=> b!28403 (= res!13012 (= (size!271 lt!4955) (+ (size!271 (toList!116 (left!708 (left!708 ys!77)))) (size!271 (toList!116 (right!711 (left!708 ys!77)))))))))

(assert (= (and d!14963 c!6241) b!28401))

(assert (= (and d!14963 (not c!6241)) b!28402))

(assert (= (and d!14963 res!13013) b!28403))

(assert (= (and b!28403 res!13012) b!28404))

(declare-fun m!30007 () Bool)

(assert (=> d!14963 m!30007))

(assert (=> d!14963 m!29381))

(assert (=> d!14963 m!29715))

(assert (=> d!14963 m!29383))

(assert (=> d!14963 m!29987))

(assert (=> b!28402 m!29383))

(declare-fun m!30009 () Bool)

(assert (=> b!28402 m!30009))

(declare-fun m!30011 () Bool)

(assert (=> b!28403 m!30011))

(assert (=> b!28403 m!29381))

(assert (=> b!28403 m!29723))

(assert (=> b!28403 m!29383))

(assert (=> b!28403 m!29995))

(assert (=> b!28235 d!14963))

(declare-fun d!14965 () Bool)

(assert (=> d!14965 (= (isEmpty!320 (right!711 (right!711 res!5536))) (= (right!711 (right!711 res!5536)) Empty!74))))

(assert (=> b!28247 d!14965))

(declare-fun b!28406 () Bool)

(declare-fun e!14524 () Int)

(declare-fun lt!4956 () Int)

(declare-fun lt!4958 () Int)

(assert (=> b!28406 (= e!14524 (+ 1 (ite (>= lt!4956 lt!4958) lt!4956 lt!4958)))))

(assert (=> b!28406 (= lt!4958 (level!52 (right!711 (left!708 (right!711 res!5536)))))))

(assert (=> b!28406 (= lt!4956 (level!52 (left!708 (left!708 (right!711 res!5536)))))))

(declare-fun d!14967 () Bool)

(declare-fun lt!4957 () Int)

(assert (=> d!14967 (>= lt!4957 0)))

(assert (=> d!14967 (= lt!4957 e!14524)))

(declare-fun c!6242 () Bool)

(assert (=> d!14967 (= c!6242 (or (is-Empty!74 (left!708 (right!711 res!5536))) (is-Single!63 (left!708 (right!711 res!5536)))))))

(assert (=> d!14967 (= (level!52 (left!708 (right!711 res!5536))) lt!4957)))

(declare-fun b!28405 () Bool)

(assert (=> b!28405 (= e!14524 0)))

(assert (= (and d!14967 c!6242) b!28405))

(assert (= (and d!14967 (not c!6242)) b!28406))

(declare-fun m!30013 () Bool)

(assert (=> b!28406 m!30013))

(declare-fun m!30015 () Bool)

(assert (=> b!28406 m!30015))

(assert (=> b!28125 d!14967))

(declare-fun b!28408 () Bool)

(declare-fun e!14525 () Int)

(declare-fun lt!4959 () Int)

(declare-fun lt!4961 () Int)

(assert (=> b!28408 (= e!14525 (+ 1 (ite (>= lt!4959 lt!4961) lt!4959 lt!4961)))))

(assert (=> b!28408 (= lt!4961 (level!52 (right!711 (right!711 (right!711 res!5536)))))))

(assert (=> b!28408 (= lt!4959 (level!52 (left!708 (right!711 (right!711 res!5536)))))))

(declare-fun d!14969 () Bool)

(declare-fun lt!4960 () Int)

(assert (=> d!14969 (>= lt!4960 0)))

(assert (=> d!14969 (= lt!4960 e!14525)))

(declare-fun c!6243 () Bool)

(assert (=> d!14969 (= c!6243 (or (is-Empty!74 (right!711 (right!711 res!5536))) (is-Single!63 (right!711 (right!711 res!5536)))))))

(assert (=> d!14969 (= (level!52 (right!711 (right!711 res!5536))) lt!4960)))

(declare-fun b!28407 () Bool)

(assert (=> b!28407 (= e!14525 0)))

(assert (= (and d!14969 c!6243) b!28407))

(assert (= (and d!14969 (not c!6243)) b!28408))

(declare-fun m!30017 () Bool)

(assert (=> b!28408 m!30017))

(declare-fun m!30019 () Bool)

(assert (=> b!28408 m!30019))

(assert (=> b!28125 d!14969))

(declare-fun d!14971 () Bool)

(declare-fun res!13015 () Bool)

(declare-fun e!14526 () Bool)

(assert (=> d!14971 (=> res!13015 e!14526)))

(assert (=> d!14971 (= res!13015 (not (is-CC!63 (right!711 (right!711 ys!77)))))))

(assert (=> d!14971 (= (balanced!59 (right!711 (right!711 ys!77))) e!14526)))

(declare-fun b!28411 () Bool)

(declare-fun res!13017 () Bool)

(declare-fun e!14527 () Bool)

(assert (=> b!28411 (=> (not res!13017) (not e!14527))))

(assert (=> b!28411 (= res!13017 (balanced!59 (left!708 (right!711 (right!711 ys!77)))))))

(declare-fun b!28409 () Bool)

(assert (=> b!28409 (= e!14526 e!14527)))

(declare-fun res!13014 () Bool)

(assert (=> b!28409 (=> (not res!13014) (not e!14527))))

(assert (=> b!28409 (= res!13014 (>= (- (level!52 (left!708 (right!711 (right!711 ys!77)))) (level!52 (right!711 (right!711 (right!711 ys!77))))) (- 1)))))

(declare-fun b!28412 () Bool)

(assert (=> b!28412 (= e!14527 (balanced!59 (right!711 (right!711 (right!711 ys!77)))))))

(declare-fun b!28410 () Bool)

(declare-fun res!13016 () Bool)

(assert (=> b!28410 (=> (not res!13016) (not e!14527))))

(assert (=> b!28410 (= res!13016 (<= (- (level!52 (left!708 (right!711 (right!711 ys!77)))) (level!52 (right!711 (right!711 (right!711 ys!77))))) 1))))

(assert (= (and d!14971 (not res!13015)) b!28409))

(assert (= (and b!28409 res!13014) b!28410))

(assert (= (and b!28410 res!13016) b!28411))

(assert (= (and b!28411 res!13017) b!28412))

(declare-fun m!30021 () Bool)

(assert (=> b!28411 m!30021))

(declare-fun m!30023 () Bool)

(assert (=> b!28409 m!30023))

(declare-fun m!30025 () Bool)

(assert (=> b!28409 m!30025))

(declare-fun m!30027 () Bool)

(assert (=> b!28412 m!30027))

(assert (=> b!28410 m!30023))

(assert (=> b!28410 m!30025))

(assert (=> b!28167 d!14971))

(declare-fun b!28414 () Bool)

(declare-fun e!14528 () Int)

(declare-fun lt!4962 () Int)

(declare-fun lt!4964 () Int)

(assert (=> b!28414 (= e!14528 (+ 1 (ite (>= lt!4962 lt!4964) lt!4962 lt!4964)))))

(assert (=> b!28414 (= lt!4964 (level!52 (right!711 (right!711 (left!708 (left!708 xs!533))))))))

(assert (=> b!28414 (= lt!4962 (level!52 (left!708 (right!711 (left!708 (left!708 xs!533))))))))

(declare-fun d!14973 () Bool)

(declare-fun lt!4963 () Int)

(assert (=> d!14973 (>= lt!4963 0)))

(assert (=> d!14973 (= lt!4963 e!14528)))

(declare-fun c!6244 () Bool)

(assert (=> d!14973 (= c!6244 (or (is-Empty!74 (right!711 (left!708 (left!708 xs!533)))) (is-Single!63 (right!711 (left!708 (left!708 xs!533))))))))

(assert (=> d!14973 (= (level!52 (right!711 (left!708 (left!708 xs!533)))) lt!4963)))

(declare-fun b!28413 () Bool)

(assert (=> b!28413 (= e!14528 0)))

(assert (= (and d!14973 c!6244) b!28413))

(assert (= (and d!14973 (not c!6244)) b!28414))

(declare-fun m!30029 () Bool)

(assert (=> b!28414 m!30029))

(declare-fun m!30031 () Bool)

(assert (=> b!28414 m!30031))

(assert (=> b!28068 d!14973))

(declare-fun b!28416 () Bool)

(declare-fun e!14529 () Int)

(declare-fun lt!4965 () Int)

(declare-fun lt!4967 () Int)

(assert (=> b!28416 (= e!14529 (+ 1 (ite (>= lt!4965 lt!4967) lt!4965 lt!4967)))))

(assert (=> b!28416 (= lt!4967 (level!52 (right!711 (left!708 (left!708 (left!708 xs!533))))))))

(assert (=> b!28416 (= lt!4965 (level!52 (left!708 (left!708 (left!708 (left!708 xs!533))))))))

(declare-fun d!14975 () Bool)

(declare-fun lt!4966 () Int)

(assert (=> d!14975 (>= lt!4966 0)))

(assert (=> d!14975 (= lt!4966 e!14529)))

(declare-fun c!6245 () Bool)

(assert (=> d!14975 (= c!6245 (or (is-Empty!74 (left!708 (left!708 (left!708 xs!533)))) (is-Single!63 (left!708 (left!708 (left!708 xs!533))))))))

(assert (=> d!14975 (= (level!52 (left!708 (left!708 (left!708 xs!533)))) lt!4966)))

(declare-fun b!28415 () Bool)

(assert (=> b!28415 (= e!14529 0)))

(assert (= (and d!14975 c!6245) b!28415))

(assert (= (and d!14975 (not c!6245)) b!28416))

(declare-fun m!30033 () Bool)

(assert (=> b!28416 m!30033))

(declare-fun m!30035 () Bool)

(assert (=> b!28416 m!30035))

(assert (=> b!28068 d!14975))

(declare-fun b!28420 () Bool)

(declare-fun e!14531 () Bool)

(declare-fun lt!4968 () List!361)

(assert (=> b!28420 (= e!14531 (or (not (= (toList!116 (right!711 (left!708 (right!711 xs!533)))) Nil!356)) (= lt!4968 (toList!116 (left!708 (left!708 (right!711 xs!533)))))))))

(declare-fun b!28417 () Bool)

(declare-fun e!14530 () List!361)

(assert (=> b!28417 (= e!14530 (toList!116 (right!711 (left!708 (right!711 xs!533)))))))

(declare-fun d!14977 () Bool)

(assert (=> d!14977 e!14531))

(declare-fun res!13019 () Bool)

(assert (=> d!14977 (=> (not res!13019) (not e!14531))))

(assert (=> d!14977 (= res!13019 (= (content!71 lt!4968) (union (content!71 (toList!116 (left!708 (left!708 (right!711 xs!533))))) (content!71 (toList!116 (right!711 (left!708 (right!711 xs!533))))))))))

(assert (=> d!14977 (= lt!4968 e!14530)))

(declare-fun c!6246 () Bool)

(assert (=> d!14977 (= c!6246 (is-Nil!356 (toList!116 (left!708 (left!708 (right!711 xs!533))))))))

(assert (=> d!14977 (= (++!41 (toList!116 (left!708 (left!708 (right!711 xs!533)))) (toList!116 (right!711 (left!708 (right!711 xs!533))))) lt!4968)))

(declare-fun b!28418 () Bool)

(assert (=> b!28418 (= e!14530 (Cons!355 (h!272 (toList!116 (left!708 (left!708 (right!711 xs!533))))) (++!41 (t!4375 (toList!116 (left!708 (left!708 (right!711 xs!533))))) (toList!116 (right!711 (left!708 (right!711 xs!533)))))))))

(declare-fun b!28419 () Bool)

(declare-fun res!13018 () Bool)

(assert (=> b!28419 (=> (not res!13018) (not e!14531))))

(assert (=> b!28419 (= res!13018 (= (size!271 lt!4968) (+ (size!271 (toList!116 (left!708 (left!708 (right!711 xs!533))))) (size!271 (toList!116 (right!711 (left!708 (right!711 xs!533))))))))))

(assert (= (and d!14977 c!6246) b!28417))

(assert (= (and d!14977 (not c!6246)) b!28418))

(assert (= (and d!14977 res!13019) b!28419))

(assert (= (and b!28419 res!13018) b!28420))

(declare-fun m!30037 () Bool)

(assert (=> d!14977 m!30037))

(assert (=> d!14977 m!29623))

(declare-fun m!30039 () Bool)

(assert (=> d!14977 m!30039))

(assert (=> d!14977 m!29625))

(declare-fun m!30041 () Bool)

(assert (=> d!14977 m!30041))

(assert (=> b!28418 m!29625))

(declare-fun m!30043 () Bool)

(assert (=> b!28418 m!30043))

(declare-fun m!30045 () Bool)

(assert (=> b!28419 m!30045))

(assert (=> b!28419 m!29623))

(declare-fun m!30047 () Bool)

(assert (=> b!28419 m!30047))

(assert (=> b!28419 m!29625))

(declare-fun m!30049 () Bool)

(assert (=> b!28419 m!30049))

(assert (=> b!28142 d!14977))

(declare-fun b!28423 () Bool)

(declare-fun e!14533 () List!361)

(assert (=> b!28423 (= e!14533 (Cons!355 (x!8933 (left!708 (left!708 (right!711 xs!533)))) Nil!356))))

(declare-fun b!28424 () Bool)

(assert (=> b!28424 (= e!14533 (++!41 (toList!116 (left!708 (left!708 (left!708 (right!711 xs!533))))) (toList!116 (right!711 (left!708 (left!708 (right!711 xs!533)))))))))

(declare-fun b!28421 () Bool)

(declare-fun e!14532 () List!361)

(assert (=> b!28421 (= e!14532 Nil!356)))

(declare-fun d!14979 () Bool)

(declare-fun lt!4969 () List!361)

(assert (=> d!14979 (= (size!271 lt!4969) (size!272 (left!708 (left!708 (right!711 xs!533)))))))

(assert (=> d!14979 (= lt!4969 e!14532)))

(declare-fun c!6248 () Bool)

(assert (=> d!14979 (= c!6248 (is-Empty!74 (left!708 (left!708 (right!711 xs!533)))))))

(assert (=> d!14979 (= (toList!116 (left!708 (left!708 (right!711 xs!533)))) lt!4969)))

(declare-fun b!28422 () Bool)

(assert (=> b!28422 (= e!14532 e!14533)))

(declare-fun c!6247 () Bool)

(assert (=> b!28422 (= c!6247 (is-Single!63 (left!708 (left!708 (right!711 xs!533)))))))

(assert (= (and b!28422 c!6247) b!28423))

(assert (= (and b!28422 (not c!6247)) b!28424))

(assert (= (and d!14979 c!6248) b!28421))

(assert (= (and d!14979 (not c!6248)) b!28422))

(declare-fun m!30051 () Bool)

(assert (=> b!28424 m!30051))

(declare-fun m!30053 () Bool)

(assert (=> b!28424 m!30053))

(assert (=> b!28424 m!30051))

(assert (=> b!28424 m!30053))

(declare-fun m!30055 () Bool)

(assert (=> b!28424 m!30055))

(declare-fun m!30057 () Bool)

(assert (=> d!14979 m!30057))

(assert (=> d!14979 m!29879))

(assert (=> b!28142 d!14979))

(declare-fun b!28427 () Bool)

(declare-fun e!14535 () List!361)

(assert (=> b!28427 (= e!14535 (Cons!355 (x!8933 (right!711 (left!708 (right!711 xs!533)))) Nil!356))))

(declare-fun b!28428 () Bool)

(assert (=> b!28428 (= e!14535 (++!41 (toList!116 (left!708 (right!711 (left!708 (right!711 xs!533))))) (toList!116 (right!711 (right!711 (left!708 (right!711 xs!533)))))))))

(declare-fun b!28425 () Bool)

(declare-fun e!14534 () List!361)

(assert (=> b!28425 (= e!14534 Nil!356)))

(declare-fun d!14981 () Bool)

(declare-fun lt!4970 () List!361)

(assert (=> d!14981 (= (size!271 lt!4970) (size!272 (right!711 (left!708 (right!711 xs!533)))))))

(assert (=> d!14981 (= lt!4970 e!14534)))

(declare-fun c!6250 () Bool)

(assert (=> d!14981 (= c!6250 (is-Empty!74 (right!711 (left!708 (right!711 xs!533)))))))

(assert (=> d!14981 (= (toList!116 (right!711 (left!708 (right!711 xs!533)))) lt!4970)))

(declare-fun b!28426 () Bool)

(assert (=> b!28426 (= e!14534 e!14535)))

(declare-fun c!6249 () Bool)

(assert (=> b!28426 (= c!6249 (is-Single!63 (right!711 (left!708 (right!711 xs!533)))))))

(assert (= (and b!28426 c!6249) b!28427))

(assert (= (and b!28426 (not c!6249)) b!28428))

(assert (= (and d!14981 c!6250) b!28425))

(assert (= (and d!14981 (not c!6250)) b!28426))

(declare-fun m!30059 () Bool)

(assert (=> b!28428 m!30059))

(declare-fun m!30061 () Bool)

(assert (=> b!28428 m!30061))

(assert (=> b!28428 m!30059))

(assert (=> b!28428 m!30061))

(declare-fun m!30063 () Bool)

(assert (=> b!28428 m!30063))

(declare-fun m!30065 () Bool)

(assert (=> d!14981 m!30065))

(assert (=> d!14981 m!29881))

(assert (=> b!28142 d!14981))

(declare-fun d!14983 () Bool)

(declare-fun lt!4971 () Int)

(assert (=> d!14983 (>= lt!4971 0)))

(declare-fun e!14536 () Int)

(assert (=> d!14983 (= lt!4971 e!14536)))

(declare-fun c!6251 () Bool)

(assert (=> d!14983 (= c!6251 (is-Nil!356 lt!4890))))

(assert (=> d!14983 (= (size!271 lt!4890) lt!4971)))

(declare-fun b!28429 () Bool)

(assert (=> b!28429 (= e!14536 0)))

(declare-fun b!28430 () Bool)

(assert (=> b!28430 (= e!14536 (+ 1 (size!271 (t!4375 lt!4890))))))

(assert (= (and d!14983 c!6251) b!28429))

(assert (= (and d!14983 (not c!6251)) b!28430))

(declare-fun m!30067 () Bool)

(assert (=> b!28430 m!30067))

(assert (=> d!14871 d!14983))

(declare-fun b!28431 () Bool)

(declare-fun e!14537 () Int)

(assert (=> b!28431 (= e!14537 0)))

(declare-fun b!28434 () Bool)

(declare-fun e!14538 () Int)

(assert (=> b!28434 (= e!14538 (+ (size!272 (left!708 res!5536)) (size!272 (right!711 res!5536))))))

(declare-fun b!28433 () Bool)

(assert (=> b!28433 (= e!14538 1)))

(declare-fun d!14985 () Bool)

(declare-fun lt!4972 () Int)

(assert (=> d!14985 (>= lt!4972 0)))

(assert (=> d!14985 (= lt!4972 e!14537)))

(declare-fun c!6252 () Bool)

(assert (=> d!14985 (= c!6252 (is-Empty!74 res!5536))))

(assert (=> d!14985 (= (size!272 res!5536) lt!4972)))

(declare-fun b!28432 () Bool)

(assert (=> b!28432 (= e!14537 e!14538)))

(declare-fun c!6253 () Bool)

(assert (=> b!28432 (= c!6253 (is-Single!63 res!5536))))

(assert (= (and b!28432 c!6253) b!28433))

(assert (= (and b!28432 (not c!6253)) b!28434))

(assert (= (and d!14985 c!6252) b!28431))

(assert (= (and d!14985 (not c!6252)) b!28432))

(declare-fun m!30069 () Bool)

(assert (=> b!28434 m!30069))

(declare-fun m!30071 () Bool)

(assert (=> b!28434 m!30071))

(assert (=> d!14871 d!14985))

(declare-fun d!14987 () Bool)

(assert (=> d!14987 (= (isEmpty!320 (left!708 (right!711 xs!533))) (= (left!708 (right!711 xs!533)) Empty!74))))

(assert (=> b!28109 d!14987))

(declare-fun b!28437 () Bool)

(declare-fun res!13020 () Bool)

(declare-fun e!14540 () Bool)

(assert (=> b!28437 (=> (not res!13020) (not e!14540))))

(assert (=> b!28437 (= res!13020 (concInv!58 (left!708 (right!711 lt!4807))))))

(declare-fun b!28435 () Bool)

(declare-fun e!14539 () Bool)

(assert (=> b!28435 (= e!14539 e!14540)))

(declare-fun res!13023 () Bool)

(assert (=> b!28435 (=> (not res!13023) (not e!14540))))

(assert (=> b!28435 (= res!13023 (not (isEmpty!320 (left!708 (right!711 lt!4807)))))))

(declare-fun b!28438 () Bool)

(assert (=> b!28438 (= e!14540 (concInv!58 (right!711 (right!711 lt!4807))))))

(declare-fun d!14989 () Bool)

(declare-fun res!13021 () Bool)

(assert (=> d!14989 (=> res!13021 e!14539)))

(assert (=> d!14989 (= res!13021 (not (is-CC!63 (right!711 lt!4807))))))

(assert (=> d!14989 (= (concInv!58 (right!711 lt!4807)) e!14539)))

(declare-fun b!28436 () Bool)

(declare-fun res!13022 () Bool)

(assert (=> b!28436 (=> (not res!13022) (not e!14540))))

(assert (=> b!28436 (= res!13022 (not (isEmpty!320 (right!711 (right!711 lt!4807)))))))

(assert (= (and d!14989 (not res!13021)) b!28435))

(assert (= (and b!28435 res!13023) b!28436))

(assert (= (and b!28436 res!13022) b!28437))

(assert (= (and b!28437 res!13020) b!28438))

(declare-fun m!30073 () Bool)

(assert (=> b!28437 m!30073))

(declare-fun m!30075 () Bool)

(assert (=> b!28435 m!30075))

(declare-fun m!30077 () Bool)

(assert (=> b!28438 m!30077))

(declare-fun m!30079 () Bool)

(assert (=> b!28436 m!30079))

(assert (=> b!28245 d!14989))

(declare-fun b!28441 () Bool)

(declare-fun res!13024 () Bool)

(declare-fun e!14542 () Bool)

(assert (=> b!28441 (=> (not res!13024) (not e!14542))))

(assert (=> b!28441 (= res!13024 (concInv!58 (left!708 (left!708 (right!711 res!5536)))))))

(declare-fun b!28439 () Bool)

(declare-fun e!14541 () Bool)

(assert (=> b!28439 (= e!14541 e!14542)))

(declare-fun res!13027 () Bool)

(assert (=> b!28439 (=> (not res!13027) (not e!14542))))

(assert (=> b!28439 (= res!13027 (not (isEmpty!320 (left!708 (left!708 (right!711 res!5536))))))))

(declare-fun b!28442 () Bool)

(assert (=> b!28442 (= e!14542 (concInv!58 (right!711 (left!708 (right!711 res!5536)))))))

(declare-fun d!14991 () Bool)

(declare-fun res!13025 () Bool)

(assert (=> d!14991 (=> res!13025 e!14541)))

(assert (=> d!14991 (= res!13025 (not (is-CC!63 (left!708 (right!711 res!5536)))))))

(assert (=> d!14991 (= (concInv!58 (left!708 (right!711 res!5536))) e!14541)))

(declare-fun b!28440 () Bool)

(declare-fun res!13026 () Bool)

(assert (=> b!28440 (=> (not res!13026) (not e!14542))))

(assert (=> b!28440 (= res!13026 (not (isEmpty!320 (right!711 (left!708 (right!711 res!5536))))))))

(assert (= (and d!14991 (not res!13025)) b!28439))

(assert (= (and b!28439 res!13027) b!28440))

(assert (= (and b!28440 res!13026) b!28441))

(assert (= (and b!28441 res!13024) b!28442))

(declare-fun m!30081 () Bool)

(assert (=> b!28441 m!30081))

(declare-fun m!30083 () Bool)

(assert (=> b!28439 m!30083))

(declare-fun m!30085 () Bool)

(assert (=> b!28442 m!30085))

(declare-fun m!30087 () Bool)

(assert (=> b!28440 m!30087))

(assert (=> b!28248 d!14991))

(declare-fun d!14993 () Bool)

(declare-fun lt!4973 () Int)

(assert (=> d!14993 (>= lt!4973 0)))

(declare-fun e!14543 () Int)

(assert (=> d!14993 (= lt!4973 e!14543)))

(declare-fun c!6254 () Bool)

(assert (=> d!14993 (= c!6254 (is-Nil!356 lt!4888))))

(assert (=> d!14993 (= (size!271 lt!4888) lt!4973)))

(declare-fun b!28443 () Bool)

(assert (=> b!28443 (= e!14543 0)))

(declare-fun b!28444 () Bool)

(assert (=> b!28444 (= e!14543 (+ 1 (size!271 (t!4375 lt!4888))))))

(assert (= (and d!14993 c!6254) b!28443))

(assert (= (and d!14993 (not c!6254)) b!28444))

(declare-fun m!30089 () Bool)

(assert (=> b!28444 m!30089))

(assert (=> b!28194 d!14993))

(assert (=> b!28194 d!14939))

(declare-fun d!14995 () Bool)

(declare-fun lt!4974 () Int)

(assert (=> d!14995 (>= lt!4974 0)))

(declare-fun e!14544 () Int)

(assert (=> d!14995 (= lt!4974 e!14544)))

(declare-fun c!6255 () Bool)

(assert (=> d!14995 (= c!6255 (is-Nil!356 (toList!116 (left!708 (left!708 ys!77)))))))

(assert (=> d!14995 (= (size!271 (toList!116 (left!708 (left!708 ys!77)))) lt!4974)))

(declare-fun b!28445 () Bool)

(assert (=> b!28445 (= e!14544 0)))

(declare-fun b!28446 () Bool)

(assert (=> b!28446 (= e!14544 (+ 1 (size!271 (t!4375 (toList!116 (left!708 (left!708 ys!77)))))))))

(assert (= (and d!14995 c!6255) b!28445))

(assert (= (and d!14995 (not c!6255)) b!28446))

(declare-fun m!30091 () Bool)

(assert (=> b!28446 m!30091))

(assert (=> b!28194 d!14995))

(declare-fun d!14997 () Bool)

(declare-fun res!13029 () Bool)

(declare-fun e!14545 () Bool)

(assert (=> d!14997 (=> res!13029 e!14545)))

(assert (=> d!14997 (= res!13029 (not (is-CC!63 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))

(assert (=> d!14997 (= (balanced!59 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) e!14545)))

(declare-fun b!28449 () Bool)

(declare-fun res!13031 () Bool)

(declare-fun e!14546 () Bool)

(assert (=> b!28449 (=> (not res!13031) (not e!14546))))

(assert (=> b!28449 (= res!13031 (balanced!59 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))

(declare-fun b!28447 () Bool)

(assert (=> b!28447 (= e!14545 e!14546)))

(declare-fun res!13028 () Bool)

(assert (=> b!28447 (=> (not res!13028) (not e!14546))))

(assert (=> b!28447 (= res!13028 (>= (- (level!52 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))) (level!52 (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))) (- 1)))))

(declare-fun b!28450 () Bool)

(assert (=> b!28450 (= e!14546 (balanced!59 (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))

(declare-fun b!28448 () Bool)

(declare-fun res!13030 () Bool)

(assert (=> b!28448 (=> (not res!13030) (not e!14546))))

(assert (=> b!28448 (= res!13030 (<= (- (level!52 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))) (level!52 (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))) 1))))

(assert (= (and d!14997 (not res!13029)) b!28447))

(assert (= (and b!28447 res!13028) b!28448))

(assert (= (and b!28448 res!13030) b!28449))

(assert (= (and b!28449 res!13031) b!28450))

(declare-fun m!30093 () Bool)

(assert (=> b!28449 m!30093))

(assert (=> b!28447 m!29977))

(assert (=> b!28447 m!29975))

(declare-fun m!30095 () Bool)

(assert (=> b!28450 m!30095))

(assert (=> b!28448 m!29977))

(assert (=> b!28448 m!29975))

(assert (=> b!28046 d!14997))

(declare-fun d!14999 () Bool)

(assert (=> d!14999 (= (isEmpty!320 (left!708 (left!708 xs!533))) (= (left!708 (left!708 xs!533)) Empty!74))))

(assert (=> b!28156 d!14999))

(assert (=> b!28154 d!14859))

(declare-fun b!28451 () Bool)

(declare-fun e!14547 () Bool)

(assert (=> b!28451 (= e!14547 (= (++!41 (++!41 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77)))) (toList!116 (right!711 ys!77))) (++!41 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 (left!708 ys!77)))) (++!41 (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))))))))

(declare-fun lt!4975 () Bool)

(assert (=> b!28451 (= lt!4975 (appendAssoc!9 (t!4375 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 (left!708 ys!77))))) (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))))))

(declare-fun d!15001 () Bool)

(assert (=> d!15001 e!14547))

(declare-fun c!6256 () Bool)

(assert (=> d!15001 (= c!6256 (is-Cons!355 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 (left!708 ys!77))))))))

(assert (=> d!15001 (= (appendAssoc!9 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))) true)))

(declare-fun b!28452 () Bool)

(assert (=> b!28452 (= e!14547 (= (++!41 (++!41 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77)))) (toList!116 (right!711 ys!77))) (++!41 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 (left!708 ys!77)))) (++!41 (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))))))))

(assert (= (and d!15001 c!6256) b!28451))

(assert (= (and d!15001 (not c!6256)) b!28452))

(assert (=> b!28451 m!29383))

(assert (=> b!28451 m!29377))

(declare-fun m!30097 () Bool)

(assert (=> b!28451 m!30097))

(assert (=> b!28451 m!29649))

(assert (=> b!28451 m!29383))

(declare-fun m!30099 () Bool)

(assert (=> b!28451 m!30099))

(assert (=> b!28451 m!29649))

(assert (=> b!28451 m!29729))

(declare-fun m!30101 () Bool)

(assert (=> b!28451 m!30101))

(assert (=> b!28451 m!29383))

(assert (=> b!28451 m!29377))

(assert (=> b!28451 m!29729))

(assert (=> b!28451 m!30099))

(assert (=> b!28451 m!29377))

(declare-fun m!30103 () Bool)

(assert (=> b!28451 m!30103))

(assert (=> b!28452 m!29649))

(assert (=> b!28452 m!29383))

(assert (=> b!28452 m!30099))

(assert (=> b!28452 m!30099))

(assert (=> b!28452 m!29377))

(assert (=> b!28452 m!30103))

(assert (=> b!28452 m!29383))

(assert (=> b!28452 m!29377))

(assert (=> b!28452 m!29729))

(assert (=> b!28452 m!29649))

(assert (=> b!28452 m!29729))

(assert (=> b!28452 m!30101))

(assert (=> b!28154 d!15001))

(assert (=> b!28154 d!14839))

(assert (=> b!28154 d!14811))

(declare-fun e!14549 () Bool)

(declare-fun lt!4976 () List!361)

(declare-fun b!28456 () Bool)

(assert (=> b!28456 (= e!14549 (or (not (= (toList!116 (left!708 (left!708 ys!77))) Nil!356)) (= lt!4976 (toList!116 (right!711 (right!711 xs!533))))))))

(declare-fun b!28453 () Bool)

(declare-fun e!14548 () List!361)

(assert (=> b!28453 (= e!14548 (toList!116 (left!708 (left!708 ys!77))))))

(declare-fun d!15003 () Bool)

(assert (=> d!15003 e!14549))

(declare-fun res!13033 () Bool)

(assert (=> d!15003 (=> (not res!13033) (not e!14549))))

(assert (=> d!15003 (= res!13033 (= (content!71 lt!4976) (union (content!71 (toList!116 (right!711 (right!711 xs!533)))) (content!71 (toList!116 (left!708 (left!708 ys!77)))))))))

(assert (=> d!15003 (= lt!4976 e!14548)))

(declare-fun c!6257 () Bool)

(assert (=> d!15003 (= c!6257 (is-Nil!356 (toList!116 (right!711 (right!711 xs!533)))))))

(assert (=> d!15003 (= (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 (left!708 ys!77)))) lt!4976)))

(declare-fun b!28454 () Bool)

(assert (=> b!28454 (= e!14548 (Cons!355 (h!272 (toList!116 (right!711 (right!711 xs!533)))) (++!41 (t!4375 (toList!116 (right!711 (right!711 xs!533)))) (toList!116 (left!708 (left!708 ys!77))))))))

(declare-fun b!28455 () Bool)

(declare-fun res!13032 () Bool)

(assert (=> b!28455 (=> (not res!13032) (not e!14549))))

(assert (=> b!28455 (= res!13032 (= (size!271 lt!4976) (+ (size!271 (toList!116 (right!711 (right!711 xs!533)))) (size!271 (toList!116 (left!708 (left!708 ys!77)))))))))

(assert (= (and d!15003 c!6257) b!28453))

(assert (= (and d!15003 (not c!6257)) b!28454))

(assert (= (and d!15003 res!13033) b!28455))

(assert (= (and b!28455 res!13032) b!28456))

(declare-fun m!30105 () Bool)

(assert (=> d!15003 m!30105))

(assert (=> d!15003 m!29399))

(assert (=> d!15003 m!29765))

(assert (=> d!15003 m!29381))

(assert (=> d!15003 m!29715))

(assert (=> b!28454 m!29381))

(declare-fun m!30107 () Bool)

(assert (=> b!28454 m!30107))

(declare-fun m!30109 () Bool)

(assert (=> b!28455 m!30109))

(assert (=> b!28455 m!29399))

(assert (=> b!28455 m!29771))

(assert (=> b!28455 m!29381))

(assert (=> b!28455 m!29723))

(assert (=> b!28154 d!15003))

(assert (=> b!28154 d!14861))

(declare-fun d!15005 () Bool)

(declare-fun lt!4977 () Int)

(assert (=> d!15005 (>= lt!4977 0)))

(declare-fun e!14550 () Int)

(assert (=> d!15005 (= lt!4977 e!14550)))

(declare-fun c!6258 () Bool)

(assert (=> d!15005 (= c!6258 (is-Nil!356 lt!4854))))

(assert (=> d!15005 (= (size!271 lt!4854) lt!4977)))

(declare-fun b!28457 () Bool)

(assert (=> b!28457 (= e!14550 0)))

(declare-fun b!28458 () Bool)

(assert (=> b!28458 (= e!14550 (+ 1 (size!271 (t!4375 lt!4854))))))

(assert (= (and d!15005 c!6258) b!28457))

(assert (= (and d!15005 (not c!6258)) b!28458))

(declare-fun m!30111 () Bool)

(assert (=> b!28458 m!30111))

(assert (=> d!14807 d!15005))

(declare-fun b!28459 () Bool)

(declare-fun e!14551 () Int)

(assert (=> b!28459 (= e!14551 0)))

(declare-fun b!28462 () Bool)

(declare-fun e!14552 () Int)

(assert (=> b!28462 (= e!14552 (+ (size!272 (left!708 xs!533)) (size!272 (right!711 xs!533))))))

(declare-fun b!28461 () Bool)

(assert (=> b!28461 (= e!14552 1)))

(declare-fun d!15007 () Bool)

(declare-fun lt!4978 () Int)

(assert (=> d!15007 (>= lt!4978 0)))

(assert (=> d!15007 (= lt!4978 e!14551)))

(declare-fun c!6259 () Bool)

(assert (=> d!15007 (= c!6259 (is-Empty!74 xs!533))))

(assert (=> d!15007 (= (size!272 xs!533) lt!4978)))

(declare-fun b!28460 () Bool)

(assert (=> b!28460 (= e!14551 e!14552)))

(declare-fun c!6260 () Bool)

(assert (=> b!28460 (= c!6260 (is-Single!63 xs!533))))

(assert (= (and b!28460 c!6260) b!28461))

(assert (= (and b!28460 (not c!6260)) b!28462))

(assert (= (and d!15007 c!6259) b!28459))

(assert (= (and d!15007 (not c!6259)) b!28460))

(assert (=> b!28462 m!29523))

(assert (=> b!28462 m!29529))

(assert (=> d!14807 d!15007))

(declare-fun d!15009 () Bool)

(declare-fun res!13035 () Bool)

(declare-fun e!14553 () Bool)

(assert (=> d!15009 (=> res!13035 e!14553)))

(assert (=> d!15009 (= res!13035 (not (is-CC!63 (right!711 (right!711 res!5536)))))))

(assert (=> d!15009 (= (balanced!59 (right!711 (right!711 res!5536))) e!14553)))

(declare-fun b!28465 () Bool)

(declare-fun res!13037 () Bool)

(declare-fun e!14554 () Bool)

(assert (=> b!28465 (=> (not res!13037) (not e!14554))))

(assert (=> b!28465 (= res!13037 (balanced!59 (left!708 (right!711 (right!711 res!5536)))))))

(declare-fun b!28463 () Bool)

(assert (=> b!28463 (= e!14553 e!14554)))

(declare-fun res!13034 () Bool)

(assert (=> b!28463 (=> (not res!13034) (not e!14554))))

(assert (=> b!28463 (= res!13034 (>= (- (level!52 (left!708 (right!711 (right!711 res!5536)))) (level!52 (right!711 (right!711 (right!711 res!5536))))) (- 1)))))

(declare-fun b!28466 () Bool)

(assert (=> b!28466 (= e!14554 (balanced!59 (right!711 (right!711 (right!711 res!5536)))))))

(declare-fun b!28464 () Bool)

(declare-fun res!13036 () Bool)

(assert (=> b!28464 (=> (not res!13036) (not e!14554))))

(assert (=> b!28464 (= res!13036 (<= (- (level!52 (left!708 (right!711 (right!711 res!5536)))) (level!52 (right!711 (right!711 (right!711 res!5536))))) 1))))

(assert (= (and d!15009 (not res!13035)) b!28463))

(assert (= (and b!28463 res!13034) b!28464))

(assert (= (and b!28464 res!13036) b!28465))

(assert (= (and b!28465 res!13037) b!28466))

(declare-fun m!30113 () Bool)

(assert (=> b!28465 m!30113))

(assert (=> b!28463 m!30019))

(assert (=> b!28463 m!30017))

(declare-fun m!30115 () Bool)

(assert (=> b!28466 m!30115))

(assert (=> b!28464 m!30019))

(assert (=> b!28464 m!30017))

(assert (=> b!28128 d!15009))

(declare-fun b!28468 () Bool)

(declare-fun e!14555 () Int)

(declare-fun lt!4979 () Int)

(declare-fun lt!4981 () Int)

(assert (=> b!28468 (= e!14555 (+ 1 (ite (>= lt!4979 lt!4981) lt!4979 lt!4981)))))

(assert (=> b!28468 (= lt!4981 (level!52 (right!711 (ite lt!4823 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))))

(assert (=> b!28468 (= lt!4979 (level!52 (left!708 (ite lt!4823 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))))

(declare-fun d!15011 () Bool)

(declare-fun lt!4980 () Int)

(assert (=> d!15011 (>= lt!4980 0)))

(assert (=> d!15011 (= lt!4980 e!14555)))

(declare-fun c!6261 () Bool)

(assert (=> d!15011 (= c!6261 (or (is-Empty!74 (ite lt!4823 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))) (is-Single!63 (ite lt!4823 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))))

(assert (=> d!15011 (= (level!52 (ite lt!4823 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))) lt!4980)))

(declare-fun b!28467 () Bool)

(assert (=> b!28467 (= e!14555 0)))

(assert (= (and d!15011 c!6261) b!28467))

(assert (= (and d!15011 (not c!6261)) b!28468))

(declare-fun m!30117 () Bool)

(assert (=> b!28468 m!30117))

(declare-fun m!30119 () Bool)

(assert (=> b!28468 m!30119))

(assert (=> b!28051 d!15011))

(declare-fun b!28470 () Bool)

(declare-fun e!14556 () Int)

(declare-fun lt!4982 () Int)

(declare-fun lt!4984 () Int)

(assert (=> b!28470 (= e!14556 (+ 1 (ite (>= lt!4982 lt!4984) lt!4982 lt!4984)))))

(assert (=> b!28470 (= lt!4984 (level!52 (right!711 (ite lt!4823 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))))

(assert (=> b!28470 (= lt!4982 (level!52 (left!708 (ite lt!4823 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))))

(declare-fun d!15013 () Bool)

(declare-fun lt!4983 () Int)

(assert (=> d!15013 (>= lt!4983 0)))

(assert (=> d!15013 (= lt!4983 e!14556)))

(declare-fun c!6262 () Bool)

(assert (=> d!15013 (= c!6262 (or (is-Empty!74 (ite lt!4823 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))) (is-Single!63 (ite lt!4823 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))))

(assert (=> d!15013 (= (level!52 (ite lt!4823 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))) lt!4983)))

(declare-fun b!28469 () Bool)

(assert (=> b!28469 (= e!14556 0)))

(assert (= (and d!15013 c!6262) b!28469))

(assert (= (and d!15013 (not c!6262)) b!28470))

(declare-fun m!30121 () Bool)

(assert (=> b!28470 m!30121))

(declare-fun m!30123 () Bool)

(assert (=> b!28470 m!30123))

(assert (=> b!28051 d!15013))

(assert (=> b!28161 d!14969))

(assert (=> b!28161 d!14967))

(declare-fun d!15015 () Bool)

(assert (=> d!15015 (= (isEmpty!320 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (= (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))) Empty!74))))

(assert (=> b!28058 d!15015))

(declare-fun b!28472 () Bool)

(declare-fun e!14557 () Int)

(declare-fun lt!4985 () Int)

(declare-fun lt!4987 () Int)

(assert (=> b!28472 (= e!14557 (+ 1 (ite (>= lt!4985 lt!4987) lt!4985 lt!4987)))))

(assert (=> b!28472 (= lt!4987 (level!52 (right!711 (right!711 (left!708 (right!711 xs!533))))))))

(assert (=> b!28472 (= lt!4985 (level!52 (left!708 (right!711 (left!708 (right!711 xs!533))))))))

(declare-fun d!15017 () Bool)

(declare-fun lt!4986 () Int)

(assert (=> d!15017 (>= lt!4986 0)))

(assert (=> d!15017 (= lt!4986 e!14557)))

(declare-fun c!6263 () Bool)

(assert (=> d!15017 (= c!6263 (or (is-Empty!74 (right!711 (left!708 (right!711 xs!533)))) (is-Single!63 (right!711 (left!708 (right!711 xs!533))))))))

(assert (=> d!15017 (= (level!52 (right!711 (left!708 (right!711 xs!533)))) lt!4986)))

(declare-fun b!28471 () Bool)

(assert (=> b!28471 (= e!14557 0)))

(assert (= (and d!15017 c!6263) b!28471))

(assert (= (and d!15017 (not c!6263)) b!28472))

(declare-fun m!30125 () Bool)

(assert (=> b!28472 m!30125))

(declare-fun m!30127 () Bool)

(assert (=> b!28472 m!30127))

(assert (=> b!28043 d!15017))

(declare-fun b!28474 () Bool)

(declare-fun e!14558 () Int)

(declare-fun lt!4988 () Int)

(declare-fun lt!4990 () Int)

(assert (=> b!28474 (= e!14558 (+ 1 (ite (>= lt!4988 lt!4990) lt!4988 lt!4990)))))

(assert (=> b!28474 (= lt!4990 (level!52 (right!711 (left!708 (left!708 (right!711 xs!533))))))))

(assert (=> b!28474 (= lt!4988 (level!52 (left!708 (left!708 (left!708 (right!711 xs!533))))))))

(declare-fun d!15019 () Bool)

(declare-fun lt!4989 () Int)

(assert (=> d!15019 (>= lt!4989 0)))

(assert (=> d!15019 (= lt!4989 e!14558)))

(declare-fun c!6264 () Bool)

(assert (=> d!15019 (= c!6264 (or (is-Empty!74 (left!708 (left!708 (right!711 xs!533)))) (is-Single!63 (left!708 (left!708 (right!711 xs!533))))))))

(assert (=> d!15019 (= (level!52 (left!708 (left!708 (right!711 xs!533)))) lt!4989)))

(declare-fun b!28473 () Bool)

(assert (=> b!28473 (= e!14558 0)))

(assert (= (and d!15019 c!6264) b!28473))

(assert (= (and d!15019 (not c!6264)) b!28474))

(declare-fun m!30129 () Bool)

(assert (=> b!28474 m!30129))

(declare-fun m!30131 () Bool)

(assert (=> b!28474 m!30131))

(assert (=> b!28043 d!15019))

(assert (=> b!28207 d!14923))

(assert (=> b!28207 d!14921))

(declare-fun d!15021 () Bool)

(declare-fun lt!4991 () Int)

(assert (=> d!15021 (>= lt!4991 0)))

(declare-fun e!14559 () Int)

(assert (=> d!15021 (= lt!4991 e!14559)))

(declare-fun c!6265 () Bool)

(assert (=> d!15021 (= c!6265 (is-Nil!356 lt!4851))))

(assert (=> d!15021 (= (size!271 lt!4851) lt!4991)))

(declare-fun b!28475 () Bool)

(assert (=> b!28475 (= e!14559 0)))

(declare-fun b!28476 () Bool)

(assert (=> b!28476 (= e!14559 (+ 1 (size!271 (t!4375 lt!4851))))))

(assert (= (and d!15021 c!6265) b!28475))

(assert (= (and d!15021 (not c!6265)) b!28476))

(declare-fun m!30133 () Bool)

(assert (=> b!28476 m!30133))

(assert (=> d!14801 d!15021))

(declare-fun b!28477 () Bool)

(declare-fun e!14560 () Int)

(assert (=> b!28477 (= e!14560 0)))

(declare-fun b!28480 () Bool)

(declare-fun e!14561 () Int)

(assert (=> b!28480 (= e!14561 (+ (size!272 (left!708 (right!711 xs!533))) (size!272 (right!711 (right!711 xs!533)))))))

(declare-fun b!28479 () Bool)

(assert (=> b!28479 (= e!14561 1)))

(declare-fun d!15023 () Bool)

(declare-fun lt!4992 () Int)

(assert (=> d!15023 (>= lt!4992 0)))

(assert (=> d!15023 (= lt!4992 e!14560)))

(declare-fun c!6266 () Bool)

(assert (=> d!15023 (= c!6266 (is-Empty!74 (right!711 xs!533)))))

(assert (=> d!15023 (= (size!272 (right!711 xs!533)) lt!4992)))

(declare-fun b!28478 () Bool)

(assert (=> b!28478 (= e!14560 e!14561)))

(declare-fun c!6267 () Bool)

(assert (=> b!28478 (= c!6267 (is-Single!63 (right!711 xs!533)))))

(assert (= (and b!28478 c!6267) b!28479))

(assert (= (and b!28478 (not c!6267)) b!28480))

(assert (= (and d!15023 c!6266) b!28477))

(assert (= (and d!15023 (not c!6266)) b!28478))

(assert (=> b!28480 m!29631))

(assert (=> b!28480 m!29641))

(assert (=> d!14801 d!15023))

(declare-fun b!28484 () Bool)

(declare-fun e!14563 () Bool)

(declare-fun lt!4993 () List!361)

(assert (=> b!28484 (= e!14563 (or (not (= (toList!116 ys!77) Nil!356)) (= lt!4993 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (right!711 xs!533))))))))

(declare-fun b!28481 () Bool)

(declare-fun e!14562 () List!361)

(assert (=> b!28481 (= e!14562 (toList!116 ys!77))))

(declare-fun d!15025 () Bool)

(assert (=> d!15025 e!14563))

(declare-fun res!13039 () Bool)

(assert (=> d!15025 (=> (not res!13039) (not e!14563))))

(assert (=> d!15025 (= res!13039 (= (content!71 lt!4993) (union (content!71 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (right!711 xs!533)))) (content!71 (toList!116 ys!77)))))))

(assert (=> d!15025 (= lt!4993 e!14562)))

(declare-fun c!6268 () Bool)

(assert (=> d!15025 (= c!6268 (is-Nil!356 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (right!711 xs!533)))))))

(assert (=> d!15025 (= (++!41 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (right!711 xs!533))) (toList!116 ys!77)) lt!4993)))

(declare-fun b!28482 () Bool)

(assert (=> b!28482 (= e!14562 (Cons!355 (h!272 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (right!711 xs!533)))) (++!41 (t!4375 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (right!711 xs!533)))) (toList!116 ys!77))))))

(declare-fun b!28483 () Bool)

(declare-fun res!13038 () Bool)

(assert (=> b!28483 (=> (not res!13038) (not e!14563))))

(assert (=> b!28483 (= res!13038 (= (size!271 lt!4993) (+ (size!271 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (right!711 xs!533)))) (size!271 (toList!116 ys!77)))))))

(assert (= (and d!15025 c!6268) b!28481))

(assert (= (and d!15025 (not c!6268)) b!28482))

(assert (= (and d!15025 res!13039) b!28483))

(assert (= (and b!28483 res!13038) b!28484))

(declare-fun m!30135 () Bool)

(assert (=> d!15025 m!30135))

(assert (=> d!15025 m!29507))

(declare-fun m!30137 () Bool)

(assert (=> d!15025 m!30137))

(assert (=> d!15025 m!29365))

(assert (=> d!15025 m!29749))

(assert (=> b!28482 m!29365))

(declare-fun m!30139 () Bool)

(assert (=> b!28482 m!30139))

(declare-fun m!30141 () Bool)

(assert (=> b!28483 m!30141))

(assert (=> b!28483 m!29507))

(declare-fun m!30143 () Bool)

(assert (=> b!28483 m!30143))

(assert (=> b!28483 m!29365))

(assert (=> b!28483 m!29755))

(assert (=> b!28074 d!15025))

(declare-fun b!28488 () Bool)

(declare-fun e!14565 () Bool)

(declare-fun lt!4994 () List!361)

(assert (=> b!28488 (= e!14565 (or (not (= (toList!116 (right!711 xs!533)) Nil!356)) (= lt!4994 (toList!116 (left!708 xs!533)))))))

(declare-fun b!28485 () Bool)

(declare-fun e!14564 () List!361)

(assert (=> b!28485 (= e!14564 (toList!116 (right!711 xs!533)))))

(declare-fun d!15027 () Bool)

(assert (=> d!15027 e!14565))

(declare-fun res!13041 () Bool)

(assert (=> d!15027 (=> (not res!13041) (not e!14565))))

(assert (=> d!15027 (= res!13041 (= (content!71 lt!4994) (union (content!71 (toList!116 (left!708 xs!533))) (content!71 (toList!116 (right!711 xs!533))))))))

(assert (=> d!15027 (= lt!4994 e!14564)))

(declare-fun c!6269 () Bool)

(assert (=> d!15027 (= c!6269 (is-Nil!356 (toList!116 (left!708 xs!533))))))

(assert (=> d!15027 (= (++!41 (toList!116 (left!708 xs!533)) (toList!116 (right!711 xs!533))) lt!4994)))

(declare-fun b!28486 () Bool)

(assert (=> b!28486 (= e!14564 (Cons!355 (h!272 (toList!116 (left!708 xs!533))) (++!41 (t!4375 (toList!116 (left!708 xs!533))) (toList!116 (right!711 xs!533)))))))

(declare-fun b!28487 () Bool)

(declare-fun res!13040 () Bool)

(assert (=> b!28487 (=> (not res!13040) (not e!14565))))

(assert (=> b!28487 (= res!13040 (= (size!271 lt!4994) (+ (size!271 (toList!116 (left!708 xs!533))) (size!271 (toList!116 (right!711 xs!533))))))))

(assert (= (and d!15027 c!6269) b!28485))

(assert (= (and d!15027 (not c!6269)) b!28486))

(assert (= (and d!15027 res!13041) b!28487))

(assert (= (and b!28487 res!13040) b!28488))

(declare-fun m!30145 () Bool)

(assert (=> d!15027 m!30145))

(assert (=> d!15027 m!29387))

(declare-fun m!30147 () Bool)

(assert (=> d!15027 m!30147))

(assert (=> d!15027 m!29389))

(declare-fun m!30149 () Bool)

(assert (=> d!15027 m!30149))

(assert (=> b!28486 m!29389))

(declare-fun m!30151 () Bool)

(assert (=> b!28486 m!30151))

(declare-fun m!30153 () Bool)

(assert (=> b!28487 m!30153))

(assert (=> b!28487 m!29387))

(declare-fun m!30155 () Bool)

(assert (=> b!28487 m!30155))

(assert (=> b!28487 m!29389))

(declare-fun m!30157 () Bool)

(assert (=> b!28487 m!30157))

(assert (=> b!28074 d!15027))

(declare-fun e!14567 () Bool)

(declare-fun b!28492 () Bool)

(declare-fun lt!4995 () List!361)

(assert (=> b!28492 (= e!14567 (or (not (= (++!41 (toList!116 (right!711 xs!533)) (toList!116 ys!77)) Nil!356)) (= lt!4995 (toList!116 (left!708 xs!533)))))))

(declare-fun b!28489 () Bool)

(declare-fun e!14566 () List!361)

(assert (=> b!28489 (= e!14566 (++!41 (toList!116 (right!711 xs!533)) (toList!116 ys!77)))))

(declare-fun d!15029 () Bool)

(assert (=> d!15029 e!14567))

(declare-fun res!13043 () Bool)

(assert (=> d!15029 (=> (not res!13043) (not e!14567))))

(assert (=> d!15029 (= res!13043 (= (content!71 lt!4995) (union (content!71 (toList!116 (left!708 xs!533))) (content!71 (++!41 (toList!116 (right!711 xs!533)) (toList!116 ys!77))))))))

(assert (=> d!15029 (= lt!4995 e!14566)))

(declare-fun c!6270 () Bool)

(assert (=> d!15029 (= c!6270 (is-Nil!356 (toList!116 (left!708 xs!533))))))

(assert (=> d!15029 (= (++!41 (toList!116 (left!708 xs!533)) (++!41 (toList!116 (right!711 xs!533)) (toList!116 ys!77))) lt!4995)))

(declare-fun b!28490 () Bool)

(assert (=> b!28490 (= e!14566 (Cons!355 (h!272 (toList!116 (left!708 xs!533))) (++!41 (t!4375 (toList!116 (left!708 xs!533))) (++!41 (toList!116 (right!711 xs!533)) (toList!116 ys!77)))))))

(declare-fun b!28491 () Bool)

(declare-fun res!13042 () Bool)

(assert (=> b!28491 (=> (not res!13042) (not e!14567))))

(assert (=> b!28491 (= res!13042 (= (size!271 lt!4995) (+ (size!271 (toList!116 (left!708 xs!533))) (size!271 (++!41 (toList!116 (right!711 xs!533)) (toList!116 ys!77))))))))

(assert (= (and d!15029 c!6270) b!28489))

(assert (= (and d!15029 (not c!6270)) b!28490))

(assert (= (and d!15029 res!13043) b!28491))

(assert (= (and b!28491 res!13042) b!28492))

(declare-fun m!30159 () Bool)

(assert (=> d!15029 m!30159))

(assert (=> d!15029 m!29387))

(assert (=> d!15029 m!30147))

(assert (=> d!15029 m!29509))

(declare-fun m!30161 () Bool)

(assert (=> d!15029 m!30161))

(assert (=> b!28490 m!29509))

(declare-fun m!30163 () Bool)

(assert (=> b!28490 m!30163))

(declare-fun m!30165 () Bool)

(assert (=> b!28491 m!30165))

(assert (=> b!28491 m!29387))

(assert (=> b!28491 m!30155))

(assert (=> b!28491 m!29509))

(declare-fun m!30167 () Bool)

(assert (=> b!28491 m!30167))

(assert (=> b!28074 d!15029))

(declare-fun lt!4996 () List!361)

(declare-fun e!14569 () Bool)

(declare-fun b!28496 () Bool)

(assert (=> b!28496 (= e!14569 (or (not (= (toList!116 ys!77) Nil!356)) (= lt!4996 (toList!116 (right!711 xs!533)))))))

(declare-fun b!28493 () Bool)

(declare-fun e!14568 () List!361)

(assert (=> b!28493 (= e!14568 (toList!116 ys!77))))

(declare-fun d!15031 () Bool)

(assert (=> d!15031 e!14569))

(declare-fun res!13045 () Bool)

(assert (=> d!15031 (=> (not res!13045) (not e!14569))))

(assert (=> d!15031 (= res!13045 (= (content!71 lt!4996) (union (content!71 (toList!116 (right!711 xs!533))) (content!71 (toList!116 ys!77)))))))

(assert (=> d!15031 (= lt!4996 e!14568)))

(declare-fun c!6271 () Bool)

(assert (=> d!15031 (= c!6271 (is-Nil!356 (toList!116 (right!711 xs!533))))))

(assert (=> d!15031 (= (++!41 (toList!116 (right!711 xs!533)) (toList!116 ys!77)) lt!4996)))

(declare-fun b!28494 () Bool)

(assert (=> b!28494 (= e!14568 (Cons!355 (h!272 (toList!116 (right!711 xs!533))) (++!41 (t!4375 (toList!116 (right!711 xs!533))) (toList!116 ys!77))))))

(declare-fun b!28495 () Bool)

(declare-fun res!13044 () Bool)

(assert (=> b!28495 (=> (not res!13044) (not e!14569))))

(assert (=> b!28495 (= res!13044 (= (size!271 lt!4996) (+ (size!271 (toList!116 (right!711 xs!533))) (size!271 (toList!116 ys!77)))))))

(assert (= (and d!15031 c!6271) b!28493))

(assert (= (and d!15031 (not c!6271)) b!28494))

(assert (= (and d!15031 res!13045) b!28495))

(assert (= (and b!28495 res!13044) b!28496))

(declare-fun m!30169 () Bool)

(assert (=> d!15031 m!30169))

(assert (=> d!15031 m!29389))

(assert (=> d!15031 m!30149))

(assert (=> d!15031 m!29365))

(assert (=> d!15031 m!29749))

(assert (=> b!28494 m!29365))

(declare-fun m!30171 () Bool)

(assert (=> b!28494 m!30171))

(declare-fun m!30173 () Bool)

(assert (=> b!28495 m!30173))

(assert (=> b!28495 m!29389))

(assert (=> b!28495 m!30157))

(assert (=> b!28495 m!29365))

(assert (=> b!28495 m!29755))

(assert (=> b!28074 d!15031))

(declare-fun d!15033 () Bool)

(declare-fun res!13047 () Bool)

(declare-fun e!14570 () Bool)

(assert (=> d!15033 (=> res!13047 e!14570)))

(assert (=> d!15033 (= res!13047 (not (is-CC!63 (left!708 (left!708 ys!77)))))))

(assert (=> d!15033 (= (balanced!59 (left!708 (left!708 ys!77))) e!14570)))

(declare-fun b!28499 () Bool)

(declare-fun res!13049 () Bool)

(declare-fun e!14571 () Bool)

(assert (=> b!28499 (=> (not res!13049) (not e!14571))))

(assert (=> b!28499 (= res!13049 (balanced!59 (left!708 (left!708 (left!708 ys!77)))))))

(declare-fun b!28497 () Bool)

(assert (=> b!28497 (= e!14570 e!14571)))

(declare-fun res!13046 () Bool)

(assert (=> b!28497 (=> (not res!13046) (not e!14571))))

(assert (=> b!28497 (= res!13046 (>= (- (level!52 (left!708 (left!708 (left!708 ys!77)))) (level!52 (right!711 (left!708 (left!708 ys!77))))) (- 1)))))

(declare-fun b!28500 () Bool)

(assert (=> b!28500 (= e!14571 (balanced!59 (right!711 (left!708 (left!708 ys!77)))))))

(declare-fun b!28498 () Bool)

(declare-fun res!13048 () Bool)

(assert (=> b!28498 (=> (not res!13048) (not e!14571))))

(assert (=> b!28498 (= res!13048 (<= (- (level!52 (left!708 (left!708 (left!708 ys!77)))) (level!52 (right!711 (left!708 (left!708 ys!77))))) 1))))

(assert (= (and d!15033 (not res!13047)) b!28497))

(assert (= (and b!28497 res!13046) b!28498))

(assert (= (and b!28498 res!13048) b!28499))

(assert (= (and b!28499 res!13049) b!28500))

(declare-fun m!30175 () Bool)

(assert (=> b!28499 m!30175))

(declare-fun m!30177 () Bool)

(assert (=> b!28497 m!30177))

(declare-fun m!30179 () Bool)

(assert (=> b!28497 m!30179))

(declare-fun m!30181 () Bool)

(assert (=> b!28500 m!30181))

(assert (=> b!28498 m!30177))

(assert (=> b!28498 m!30179))

(assert (=> b!28170 d!15033))

(assert (=> b!28213 d!14787))

(assert (=> b!28213 d!14785))

(declare-fun lt!4997 () List!361)

(declare-fun e!14573 () Bool)

(declare-fun b!28504 () Bool)

(assert (=> b!28504 (= e!14573 (or (not (= (toList!116 ys!77) Nil!356)) (= lt!4997 (t!4375 (toList!116 xs!533)))))))

(declare-fun b!28501 () Bool)

(declare-fun e!14572 () List!361)

(assert (=> b!28501 (= e!14572 (toList!116 ys!77))))

(declare-fun d!15035 () Bool)

(assert (=> d!15035 e!14573))

(declare-fun res!13051 () Bool)

(assert (=> d!15035 (=> (not res!13051) (not e!14573))))

(assert (=> d!15035 (= res!13051 (= (content!71 lt!4997) (union (content!71 (t!4375 (toList!116 xs!533))) (content!71 (toList!116 ys!77)))))))

(assert (=> d!15035 (= lt!4997 e!14572)))

(declare-fun c!6272 () Bool)

(assert (=> d!15035 (= c!6272 (is-Nil!356 (t!4375 (toList!116 xs!533))))))

(assert (=> d!15035 (= (++!41 (t!4375 (toList!116 xs!533)) (toList!116 ys!77)) lt!4997)))

(declare-fun b!28502 () Bool)

(assert (=> b!28502 (= e!14572 (Cons!355 (h!272 (t!4375 (toList!116 xs!533))) (++!41 (t!4375 (t!4375 (toList!116 xs!533))) (toList!116 ys!77))))))

(declare-fun b!28503 () Bool)

(declare-fun res!13050 () Bool)

(assert (=> b!28503 (=> (not res!13050) (not e!14573))))

(assert (=> b!28503 (= res!13050 (= (size!271 lt!4997) (+ (size!271 (t!4375 (toList!116 xs!533))) (size!271 (toList!116 ys!77)))))))

(assert (= (and d!15035 c!6272) b!28501))

(assert (= (and d!15035 (not c!6272)) b!28502))

(assert (= (and d!15035 res!13051) b!28503))

(assert (= (and b!28503 res!13050) b!28504))

(declare-fun m!30183 () Bool)

(assert (=> d!15035 m!30183))

(assert (=> d!15035 m!29871))

(assert (=> d!15035 m!29365))

(assert (=> d!15035 m!29749))

(assert (=> b!28502 m!29365))

(declare-fun m!30185 () Bool)

(assert (=> b!28502 m!30185))

(declare-fun m!30187 () Bool)

(assert (=> b!28503 m!30187))

(assert (=> b!28503 m!29921))

(assert (=> b!28503 m!29365))

(assert (=> b!28503 m!29755))

(assert (=> b!28203 d!15035))

(declare-fun b!28508 () Bool)

(declare-fun e!14575 () Bool)

(declare-fun lt!4998 () List!361)

(assert (=> b!28508 (= e!14575 (or (not (= (toList!116 (right!711 res!5536)) Nil!356)) (= lt!4998 (toList!116 (left!708 res!5536)))))))

(declare-fun b!28505 () Bool)

(declare-fun e!14574 () List!361)

(assert (=> b!28505 (= e!14574 (toList!116 (right!711 res!5536)))))

(declare-fun d!15037 () Bool)

(assert (=> d!15037 e!14575))

(declare-fun res!13053 () Bool)

(assert (=> d!15037 (=> (not res!13053) (not e!14575))))

(assert (=> d!15037 (= res!13053 (= (content!71 lt!4998) (union (content!71 (toList!116 (left!708 res!5536))) (content!71 (toList!116 (right!711 res!5536))))))))

(assert (=> d!15037 (= lt!4998 e!14574)))

(declare-fun c!6273 () Bool)

(assert (=> d!15037 (= c!6273 (is-Nil!356 (toList!116 (left!708 res!5536))))))

(assert (=> d!15037 (= (++!41 (toList!116 (left!708 res!5536)) (toList!116 (right!711 res!5536))) lt!4998)))

(declare-fun b!28506 () Bool)

(assert (=> b!28506 (= e!14574 (Cons!355 (h!272 (toList!116 (left!708 res!5536))) (++!41 (t!4375 (toList!116 (left!708 res!5536))) (toList!116 (right!711 res!5536)))))))

(declare-fun b!28507 () Bool)

(declare-fun res!13052 () Bool)

(assert (=> b!28507 (=> (not res!13052) (not e!14575))))

(assert (=> b!28507 (= res!13052 (= (size!271 lt!4998) (+ (size!271 (toList!116 (left!708 res!5536))) (size!271 (toList!116 (right!711 res!5536))))))))

(assert (= (and d!15037 c!6273) b!28505))

(assert (= (and d!15037 (not c!6273)) b!28506))

(assert (= (and d!15037 res!13053) b!28507))

(assert (= (and b!28507 res!13052) b!28508))

(declare-fun m!30189 () Bool)

(assert (=> d!15037 m!30189))

(assert (=> d!15037 m!29737))

(declare-fun m!30191 () Bool)

(assert (=> d!15037 m!30191))

(assert (=> d!15037 m!29739))

(declare-fun m!30193 () Bool)

(assert (=> d!15037 m!30193))

(assert (=> b!28506 m!29739))

(declare-fun m!30195 () Bool)

(assert (=> b!28506 m!30195))

(declare-fun m!30197 () Bool)

(assert (=> b!28507 m!30197))

(assert (=> b!28507 m!29737))

(declare-fun m!30199 () Bool)

(assert (=> b!28507 m!30199))

(assert (=> b!28507 m!29739))

(declare-fun m!30201 () Bool)

(assert (=> b!28507 m!30201))

(assert (=> b!28201 d!15037))

(declare-fun b!28511 () Bool)

(declare-fun e!14577 () List!361)

(assert (=> b!28511 (= e!14577 (Cons!355 (x!8933 (left!708 res!5536)) Nil!356))))

(declare-fun b!28512 () Bool)

(assert (=> b!28512 (= e!14577 (++!41 (toList!116 (left!708 (left!708 res!5536))) (toList!116 (right!711 (left!708 res!5536)))))))

(declare-fun b!28509 () Bool)

(declare-fun e!14576 () List!361)

(assert (=> b!28509 (= e!14576 Nil!356)))

(declare-fun d!15039 () Bool)

(declare-fun lt!4999 () List!361)

(assert (=> d!15039 (= (size!271 lt!4999) (size!272 (left!708 res!5536)))))

(assert (=> d!15039 (= lt!4999 e!14576)))

(declare-fun c!6275 () Bool)

(assert (=> d!15039 (= c!6275 (is-Empty!74 (left!708 res!5536)))))

(assert (=> d!15039 (= (toList!116 (left!708 res!5536)) lt!4999)))

(declare-fun b!28510 () Bool)

(assert (=> b!28510 (= e!14576 e!14577)))

(declare-fun c!6274 () Bool)

(assert (=> b!28510 (= c!6274 (is-Single!63 (left!708 res!5536)))))

(assert (= (and b!28510 c!6274) b!28511))

(assert (= (and b!28510 (not c!6274)) b!28512))

(assert (= (and d!15039 c!6275) b!28509))

(assert (= (and d!15039 (not c!6275)) b!28510))

(declare-fun m!30203 () Bool)

(assert (=> b!28512 m!30203))

(declare-fun m!30205 () Bool)

(assert (=> b!28512 m!30205))

(assert (=> b!28512 m!30203))

(assert (=> b!28512 m!30205))

(declare-fun m!30207 () Bool)

(assert (=> b!28512 m!30207))

(declare-fun m!30209 () Bool)

(assert (=> d!15039 m!30209))

(assert (=> d!15039 m!30069))

(assert (=> b!28201 d!15039))

(declare-fun b!28515 () Bool)

(declare-fun e!14579 () List!361)

(assert (=> b!28515 (= e!14579 (Cons!355 (x!8933 (right!711 res!5536)) Nil!356))))

(declare-fun b!28516 () Bool)

(assert (=> b!28516 (= e!14579 (++!41 (toList!116 (left!708 (right!711 res!5536))) (toList!116 (right!711 (right!711 res!5536)))))))

(declare-fun b!28513 () Bool)

(declare-fun e!14578 () List!361)

(assert (=> b!28513 (= e!14578 Nil!356)))

(declare-fun d!15041 () Bool)

(declare-fun lt!5000 () List!361)

(assert (=> d!15041 (= (size!271 lt!5000) (size!272 (right!711 res!5536)))))

(assert (=> d!15041 (= lt!5000 e!14578)))

(declare-fun c!6277 () Bool)

(assert (=> d!15041 (= c!6277 (is-Empty!74 (right!711 res!5536)))))

(assert (=> d!15041 (= (toList!116 (right!711 res!5536)) lt!5000)))

(declare-fun b!28514 () Bool)

(assert (=> b!28514 (= e!14578 e!14579)))

(declare-fun c!6276 () Bool)

(assert (=> b!28514 (= c!6276 (is-Single!63 (right!711 res!5536)))))

(assert (= (and b!28514 c!6276) b!28515))

(assert (= (and b!28514 (not c!6276)) b!28516))

(assert (= (and d!15041 c!6277) b!28513))

(assert (= (and d!15041 (not c!6277)) b!28514))

(declare-fun m!30211 () Bool)

(assert (=> b!28516 m!30211))

(declare-fun m!30213 () Bool)

(assert (=> b!28516 m!30213))

(assert (=> b!28516 m!30211))

(assert (=> b!28516 m!30213))

(declare-fun m!30215 () Bool)

(assert (=> b!28516 m!30215))

(declare-fun m!30217 () Bool)

(assert (=> d!15041 m!30217))

(assert (=> d!15041 m!30071))

(assert (=> b!28201 d!15041))

(assert (=> b!28094 d!14945))

(assert (=> b!28094 d!14809))

(assert (=> b!28094 d!14811))

(declare-fun d!15043 () Bool)

(assert (=> d!15043 (= (isEmpty!320 (right!711 (left!708 xs!533))) (= (right!711 (left!708 xs!533)) Empty!74))))

(assert (=> b!28157 d!15043))

(declare-fun d!15045 () Bool)

(declare-fun res!13055 () Bool)

(declare-fun e!14580 () Bool)

(assert (=> d!15045 (=> res!13055 e!14580)))

(assert (=> d!15045 (= res!13055 (not (is-CC!63 (left!708 (left!708 xs!533)))))))

(assert (=> d!15045 (= (balanced!59 (left!708 (left!708 xs!533))) e!14580)))

(declare-fun b!28519 () Bool)

(declare-fun res!13057 () Bool)

(declare-fun e!14581 () Bool)

(assert (=> b!28519 (=> (not res!13057) (not e!14581))))

(assert (=> b!28519 (= res!13057 (balanced!59 (left!708 (left!708 (left!708 xs!533)))))))

(declare-fun b!28517 () Bool)

(assert (=> b!28517 (= e!14580 e!14581)))

(declare-fun res!13054 () Bool)

(assert (=> b!28517 (=> (not res!13054) (not e!14581))))

(assert (=> b!28517 (= res!13054 (>= (- (level!52 (left!708 (left!708 (left!708 xs!533)))) (level!52 (right!711 (left!708 (left!708 xs!533))))) (- 1)))))

(declare-fun b!28520 () Bool)

(assert (=> b!28520 (= e!14581 (balanced!59 (right!711 (left!708 (left!708 xs!533)))))))

(declare-fun b!28518 () Bool)

(declare-fun res!13056 () Bool)

(assert (=> b!28518 (=> (not res!13056) (not e!14581))))

(assert (=> b!28518 (= res!13056 (<= (- (level!52 (left!708 (left!708 (left!708 xs!533)))) (level!52 (right!711 (left!708 (left!708 xs!533))))) 1))))

(assert (= (and d!15045 (not res!13055)) b!28517))

(assert (= (and b!28517 res!13054) b!28518))

(assert (= (and b!28518 res!13056) b!28519))

(assert (= (and b!28519 res!13057) b!28520))

(declare-fun m!30219 () Bool)

(assert (=> b!28519 m!30219))

(assert (=> b!28517 m!29503))

(assert (=> b!28517 m!29501))

(declare-fun m!30221 () Bool)

(assert (=> b!28520 m!30221))

(assert (=> b!28518 m!29503))

(assert (=> b!28518 m!29501))

(assert (=> b!28232 d!15045))

(assert (=> b!28112 d!14897))

(declare-fun d!15047 () Bool)

(declare-fun lt!5001 () Int)

(assert (=> d!15047 (>= lt!5001 0)))

(declare-fun e!14582 () Int)

(assert (=> d!15047 (= lt!5001 e!14582)))

(declare-fun c!6278 () Bool)

(assert (=> d!15047 (= c!6278 (is-Nil!356 lt!4852))))

(assert (=> d!15047 (= (size!271 lt!4852) lt!5001)))

(declare-fun b!28521 () Bool)

(assert (=> b!28521 (= e!14582 0)))

(declare-fun b!28522 () Bool)

(assert (=> b!28522 (= e!14582 (+ 1 (size!271 (t!4375 lt!4852))))))

(assert (= (and d!15047 c!6278) b!28521))

(assert (= (and d!15047 (not c!6278)) b!28522))

(declare-fun m!30223 () Bool)

(assert (=> b!28522 m!30223))

(assert (=> d!14803 d!15047))

(declare-fun b!28523 () Bool)

(declare-fun e!14583 () Int)

(assert (=> b!28523 (= e!14583 0)))

(declare-fun b!28526 () Bool)

(declare-fun e!14584 () Int)

(assert (=> b!28526 (= e!14584 (+ (size!272 (left!708 ys!77)) (size!272 (right!711 ys!77))))))

(declare-fun b!28525 () Bool)

(assert (=> b!28525 (= e!14584 1)))

(declare-fun d!15049 () Bool)

(declare-fun lt!5002 () Int)

(assert (=> d!15049 (>= lt!5002 0)))

(assert (=> d!15049 (= lt!5002 e!14583)))

(declare-fun c!6279 () Bool)

(assert (=> d!15049 (= c!6279 (is-Empty!74 ys!77))))

(assert (=> d!15049 (= (size!272 ys!77) lt!5002)))

(declare-fun b!28524 () Bool)

(assert (=> b!28524 (= e!14583 e!14584)))

(declare-fun c!6280 () Bool)

(assert (=> b!28524 (= c!6280 (is-Single!63 ys!77))))

(assert (= (and b!28524 c!6280) b!28525))

(assert (= (and b!28524 (not c!6280)) b!28526))

(assert (= (and d!15049 c!6279) b!28523))

(assert (= (and d!15049 (not c!6279)) b!28524))

(assert (=> b!28526 m!29553))

(assert (=> b!28526 m!29563))

(assert (=> d!14803 d!15049))

(declare-fun b!28528 () Bool)

(declare-fun e!14585 () Int)

(declare-fun lt!5003 () Int)

(declare-fun lt!5005 () Int)

(assert (=> b!28528 (= e!14585 (+ 1 (ite (>= lt!5003 lt!5005) lt!5003 lt!5005)))))

(assert (=> b!28528 (= lt!5005 (level!52 (right!711 (ite lt!4824 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))) (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))

(assert (=> b!28528 (= lt!5003 (level!52 (left!708 (ite lt!4824 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))) (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))

(declare-fun d!15051 () Bool)

(declare-fun lt!5004 () Int)

(assert (=> d!15051 (>= lt!5004 0)))

(assert (=> d!15051 (= lt!5004 e!14585)))

(declare-fun c!6281 () Bool)

(assert (=> d!15051 (= c!6281 (or (is-Empty!74 (ite lt!4824 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))) (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))) (is-Single!63 (ite lt!4824 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))) (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))

(assert (=> d!15051 (= (level!52 (ite lt!4824 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))) (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))) lt!5004)))

(declare-fun b!28527 () Bool)

(assert (=> b!28527 (= e!14585 0)))

(assert (= (and d!15051 c!6281) b!28527))

(assert (= (and d!15051 (not c!6281)) b!28528))

(declare-fun m!30225 () Bool)

(assert (=> b!28528 m!30225))

(declare-fun m!30227 () Bool)

(assert (=> b!28528 m!30227))

(assert (=> b!28050 d!15051))

(declare-fun b!28530 () Bool)

(declare-fun e!14586 () Int)

(declare-fun lt!5006 () Int)

(declare-fun lt!5008 () Int)

(assert (=> b!28530 (= e!14586 (+ 1 (ite (>= lt!5006 lt!5008) lt!5006 lt!5008)))))

(assert (=> b!28530 (= lt!5008 (level!52 (right!711 (right!711 (left!708 res!5536)))))))

(assert (=> b!28530 (= lt!5006 (level!52 (left!708 (right!711 (left!708 res!5536)))))))

(declare-fun d!15053 () Bool)

(declare-fun lt!5007 () Int)

(assert (=> d!15053 (>= lt!5007 0)))

(assert (=> d!15053 (= lt!5007 e!14586)))

(declare-fun c!6282 () Bool)

(assert (=> d!15053 (= c!6282 (or (is-Empty!74 (right!711 (left!708 res!5536))) (is-Single!63 (right!711 (left!708 res!5536)))))))

(assert (=> d!15053 (= (level!52 (right!711 (left!708 res!5536))) lt!5007)))

(declare-fun b!28529 () Bool)

(assert (=> b!28529 (= e!14586 0)))

(assert (= (and d!15053 c!6282) b!28529))

(assert (= (and d!15053 (not c!6282)) b!28530))

(declare-fun m!30229 () Bool)

(assert (=> b!28530 m!30229))

(declare-fun m!30231 () Bool)

(assert (=> b!28530 m!30231))

(assert (=> b!28163 d!15053))

(declare-fun b!28532 () Bool)

(declare-fun e!14587 () Int)

(declare-fun lt!5009 () Int)

(declare-fun lt!5011 () Int)

(assert (=> b!28532 (= e!14587 (+ 1 (ite (>= lt!5009 lt!5011) lt!5009 lt!5011)))))

(assert (=> b!28532 (= lt!5011 (level!52 (right!711 (left!708 (left!708 res!5536)))))))

(assert (=> b!28532 (= lt!5009 (level!52 (left!708 (left!708 (left!708 res!5536)))))))

(declare-fun d!15055 () Bool)

(declare-fun lt!5010 () Int)

(assert (=> d!15055 (>= lt!5010 0)))

(assert (=> d!15055 (= lt!5010 e!14587)))

(declare-fun c!6283 () Bool)

(assert (=> d!15055 (= c!6283 (or (is-Empty!74 (left!708 (left!708 res!5536))) (is-Single!63 (left!708 (left!708 res!5536)))))))

(assert (=> d!15055 (= (level!52 (left!708 (left!708 res!5536))) lt!5010)))

(declare-fun b!28531 () Bool)

(assert (=> b!28531 (= e!14587 0)))

(assert (= (and d!15055 c!6283) b!28531))

(assert (= (and d!15055 (not c!6283)) b!28532))

(declare-fun m!30233 () Bool)

(assert (=> b!28532 m!30233))

(declare-fun m!30235 () Bool)

(assert (=> b!28532 m!30235))

(assert (=> b!28163 d!15055))

(declare-fun d!15057 () Bool)

(declare-fun res!13059 () Bool)

(declare-fun e!14588 () Bool)

(assert (=> d!15057 (=> res!13059 e!14588)))

(assert (=> d!15057 (= res!13059 (not (is-CC!63 (left!708 (right!711 res!5536)))))))

(assert (=> d!15057 (= (balanced!59 (left!708 (right!711 res!5536))) e!14588)))

(declare-fun b!28535 () Bool)

(declare-fun res!13061 () Bool)

(declare-fun e!14589 () Bool)

(assert (=> b!28535 (=> (not res!13061) (not e!14589))))

(assert (=> b!28535 (= res!13061 (balanced!59 (left!708 (left!708 (right!711 res!5536)))))))

(declare-fun b!28533 () Bool)

(assert (=> b!28533 (= e!14588 e!14589)))

(declare-fun res!13058 () Bool)

(assert (=> b!28533 (=> (not res!13058) (not e!14589))))

(assert (=> b!28533 (= res!13058 (>= (- (level!52 (left!708 (left!708 (right!711 res!5536)))) (level!52 (right!711 (left!708 (right!711 res!5536))))) (- 1)))))

(declare-fun b!28536 () Bool)

(assert (=> b!28536 (= e!14589 (balanced!59 (right!711 (left!708 (right!711 res!5536)))))))

(declare-fun b!28534 () Bool)

(declare-fun res!13060 () Bool)

(assert (=> b!28534 (=> (not res!13060) (not e!14589))))

(assert (=> b!28534 (= res!13060 (<= (- (level!52 (left!708 (left!708 (right!711 res!5536)))) (level!52 (right!711 (left!708 (right!711 res!5536))))) 1))))

(assert (= (and d!15057 (not res!13059)) b!28533))

(assert (= (and b!28533 res!13058) b!28534))

(assert (= (and b!28534 res!13060) b!28535))

(assert (= (and b!28535 res!13061) b!28536))

(declare-fun m!30237 () Bool)

(assert (=> b!28535 m!30237))

(assert (=> b!28533 m!30015))

(assert (=> b!28533 m!30013))

(declare-fun m!30239 () Bool)

(assert (=> b!28536 m!30239))

(assert (=> b!28534 m!30015))

(assert (=> b!28534 m!30013))

(assert (=> b!28127 d!15057))

(declare-fun b!28538 () Bool)

(declare-fun e!14590 () Int)

(declare-fun lt!5012 () Int)

(declare-fun lt!5014 () Int)

(assert (=> b!28538 (= e!14590 (+ 1 (ite (>= lt!5012 lt!5014) lt!5012 lt!5014)))))

(assert (=> b!28538 (= lt!5014 (level!52 (right!711 (right!711 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77)))))))

(assert (=> b!28538 (= lt!5012 (level!52 (left!708 (right!711 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77)))))))

(declare-fun d!15059 () Bool)

(declare-fun lt!5013 () Int)

(assert (=> d!15059 (>= lt!5013 0)))

(assert (=> d!15059 (= lt!5013 e!14590)))

(declare-fun c!6284 () Bool)

(assert (=> d!15059 (= c!6284 (or (is-Empty!74 (right!711 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77))) (is-Single!63 (right!711 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77)))))))

(assert (=> d!15059 (= (level!52 (right!711 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77))) lt!5013)))

(declare-fun b!28537 () Bool)

(assert (=> b!28537 (= e!14590 0)))

(assert (= (and d!15059 c!6284) b!28537))

(assert (= (and d!15059 (not c!6284)) b!28538))

(declare-fun m!30241 () Bool)

(assert (=> b!28538 m!30241))

(declare-fun m!30243 () Bool)

(assert (=> b!28538 m!30243))

(assert (=> b!28241 d!15059))

(declare-fun b!28540 () Bool)

(declare-fun e!14591 () Int)

(declare-fun lt!5015 () Int)

(declare-fun lt!5017 () Int)

(assert (=> b!28540 (= e!14591 (+ 1 (ite (>= lt!5015 lt!5017) lt!5015 lt!5017)))))

(assert (=> b!28540 (= lt!5017 (level!52 (right!711 (left!708 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77)))))))

(assert (=> b!28540 (= lt!5015 (level!52 (left!708 (left!708 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77)))))))

(declare-fun d!15061 () Bool)

(declare-fun lt!5016 () Int)

(assert (=> d!15061 (>= lt!5016 0)))

(assert (=> d!15061 (= lt!5016 e!14591)))

(declare-fun c!6285 () Bool)

(assert (=> d!15061 (= c!6285 (or (is-Empty!74 (left!708 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77))) (is-Single!63 (left!708 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77)))))))

(assert (=> d!15061 (= (level!52 (left!708 (ite lt!4802 (right!711 (right!711 xs!533)) ys!77))) lt!5016)))

(declare-fun b!28539 () Bool)

(assert (=> b!28539 (= e!14591 0)))

(assert (= (and d!15061 c!6285) b!28539))

(assert (= (and d!15061 (not c!6285)) b!28540))

(declare-fun m!30245 () Bool)

(assert (=> b!28540 m!30245))

(declare-fun m!30247 () Bool)

(assert (=> b!28540 m!30247))

(assert (=> b!28241 d!15061))

(declare-fun b!28542 () Bool)

(declare-fun e!14592 () Int)

(declare-fun lt!5018 () Int)

(declare-fun lt!5020 () Int)

(assert (=> b!28542 (= e!14592 (+ 1 (ite (>= lt!5018 lt!5020) lt!5018 lt!5020)))))

(assert (=> b!28542 (= lt!5020 (level!52 (right!711 (left!708 (left!708 ys!77)))))))

(assert (=> b!28542 (= lt!5018 (level!52 (left!708 (left!708 (left!708 ys!77)))))))

(declare-fun d!15063 () Bool)

(declare-fun lt!5019 () Int)

(assert (=> d!15063 (>= lt!5019 0)))

(assert (=> d!15063 (= lt!5019 e!14592)))

(declare-fun c!6286 () Bool)

(assert (=> d!15063 (= c!6286 (or (is-Empty!74 (left!708 (left!708 ys!77))) (is-Single!63 (left!708 (left!708 ys!77)))))))

(assert (=> d!15063 (= (level!52 (left!708 (left!708 ys!77))) lt!5019)))

(declare-fun b!28541 () Bool)

(assert (=> b!28541 (= e!14592 0)))

(assert (= (and d!15063 c!6286) b!28541))

(assert (= (and d!15063 (not c!6286)) b!28542))

(assert (=> b!28542 m!30179))

(assert (=> b!28542 m!30177))

(assert (=> b!28169 d!15063))

(declare-fun b!28544 () Bool)

(declare-fun e!14593 () Int)

(declare-fun lt!5021 () Int)

(declare-fun lt!5023 () Int)

(assert (=> b!28544 (= e!14593 (+ 1 (ite (>= lt!5021 lt!5023) lt!5021 lt!5023)))))

(assert (=> b!28544 (= lt!5023 (level!52 (right!711 (right!711 (left!708 ys!77)))))))

(assert (=> b!28544 (= lt!5021 (level!52 (left!708 (right!711 (left!708 ys!77)))))))

(declare-fun d!15065 () Bool)

(declare-fun lt!5022 () Int)

(assert (=> d!15065 (>= lt!5022 0)))

(assert (=> d!15065 (= lt!5022 e!14593)))

(declare-fun c!6287 () Bool)

(assert (=> d!15065 (= c!6287 (or (is-Empty!74 (right!711 (left!708 ys!77))) (is-Single!63 (right!711 (left!708 ys!77)))))))

(assert (=> d!15065 (= (level!52 (right!711 (left!708 ys!77))) lt!5022)))

(declare-fun b!28543 () Bool)

(assert (=> b!28543 (= e!14593 0)))

(assert (= (and d!15065 c!6287) b!28543))

(assert (= (and d!15065 (not c!6287)) b!28544))

(declare-fun m!30249 () Bool)

(assert (=> b!28544 m!30249))

(declare-fun m!30251 () Bool)

(assert (=> b!28544 m!30251))

(assert (=> b!28169 d!15065))

(declare-fun b!28545 () Bool)

(declare-fun e!14594 () Bool)

(assert (=> b!28545 (= e!14594 (= (++!41 (++!41 (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533))))) (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533)))))) (toList!116 ys!77)) (++!41 (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533))))) (++!41 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77)))))))

(declare-fun lt!5024 () Bool)

(assert (=> b!28545 (= lt!5024 (appendAssoc!9 (t!4375 (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533)))))) (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77)))))

(declare-fun d!15067 () Bool)

(assert (=> d!15067 e!14594))

(declare-fun c!6288 () Bool)

(assert (=> d!15067 (= c!6288 (is-Cons!355 (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533)))))))))

(assert (=> d!15067 (= (appendAssoc!9 (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533))))) (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77)) true)))

(declare-fun b!28546 () Bool)

(assert (=> b!28546 (= e!14594 (= (++!41 (++!41 (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533))))) (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533)))))) (toList!116 ys!77)) (++!41 (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533))))) (++!41 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77)))))))

(assert (= (and d!15067 c!6288) b!28545))

(assert (= (and d!15067 (not c!6288)) b!28546))

(assert (=> b!28545 m!29655))

(assert (=> b!28545 m!29365))

(declare-fun m!30253 () Bool)

(assert (=> b!28545 m!30253))

(assert (=> b!28545 m!29653))

(assert (=> b!28545 m!29655))

(declare-fun m!30255 () Bool)

(assert (=> b!28545 m!30255))

(assert (=> b!28545 m!29653))

(assert (=> b!28545 m!29659))

(declare-fun m!30257 () Bool)

(assert (=> b!28545 m!30257))

(assert (=> b!28545 m!29655))

(assert (=> b!28545 m!29365))

(assert (=> b!28545 m!29659))

(assert (=> b!28545 m!30255))

(assert (=> b!28545 m!29365))

(declare-fun m!30259 () Bool)

(assert (=> b!28545 m!30259))

(assert (=> b!28546 m!29653))

(assert (=> b!28546 m!29655))

(assert (=> b!28546 m!30255))

(assert (=> b!28546 m!30255))

(assert (=> b!28546 m!29365))

(assert (=> b!28546 m!30259))

(assert (=> b!28546 m!29655))

(assert (=> b!28546 m!29365))

(assert (=> b!28546 m!29659))

(assert (=> b!28546 m!29653))

(assert (=> b!28546 m!29659))

(assert (=> b!28546 m!30257))

(assert (=> b!28147 d!15067))

(declare-fun b!28549 () Bool)

(declare-fun e!14596 () List!361)

(assert (=> b!28549 (= e!14596 (Cons!355 (x!8933 (left!708 (right!711 (right!711 (right!711 xs!533))))) Nil!356))))

(declare-fun b!28550 () Bool)

(assert (=> b!28550 (= e!14596 (++!41 (toList!116 (left!708 (left!708 (right!711 (right!711 (right!711 xs!533)))))) (toList!116 (right!711 (left!708 (right!711 (right!711 (right!711 xs!533))))))))))

(declare-fun b!28547 () Bool)

(declare-fun e!14595 () List!361)

(assert (=> b!28547 (= e!14595 Nil!356)))

(declare-fun d!15069 () Bool)

(declare-fun lt!5025 () List!361)

(assert (=> d!15069 (= (size!271 lt!5025) (size!272 (left!708 (right!711 (right!711 (right!711 xs!533))))))))

(assert (=> d!15069 (= lt!5025 e!14595)))

(declare-fun c!6290 () Bool)

(assert (=> d!15069 (= c!6290 (is-Empty!74 (left!708 (right!711 (right!711 (right!711 xs!533))))))))

(assert (=> d!15069 (= (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533))))) lt!5025)))

(declare-fun b!28548 () Bool)

(assert (=> b!28548 (= e!14595 e!14596)))

(declare-fun c!6289 () Bool)

(assert (=> b!28548 (= c!6289 (is-Single!63 (left!708 (right!711 (right!711 (right!711 xs!533))))))))

(assert (= (and b!28548 c!6289) b!28549))

(assert (= (and b!28548 (not c!6289)) b!28550))

(assert (= (and d!15069 c!6290) b!28547))

(assert (= (and d!15069 (not c!6290)) b!28548))

(declare-fun m!30261 () Bool)

(assert (=> b!28550 m!30261))

(declare-fun m!30263 () Bool)

(assert (=> b!28550 m!30263))

(assert (=> b!28550 m!30261))

(assert (=> b!28550 m!30263))

(declare-fun m!30265 () Bool)

(assert (=> b!28550 m!30265))

(declare-fun m!30267 () Bool)

(assert (=> d!15069 m!30267))

(declare-fun m!30269 () Bool)

(assert (=> d!15069 m!30269))

(assert (=> b!28147 d!15069))

(declare-fun b!28553 () Bool)

(declare-fun e!14598 () List!361)

(assert (=> b!28553 (= e!14598 (Cons!355 (x!8933 (right!711 (right!711 (right!711 (right!711 xs!533))))) Nil!356))))

(declare-fun b!28554 () Bool)

(assert (=> b!28554 (= e!14598 (++!41 (toList!116 (left!708 (right!711 (right!711 (right!711 (right!711 xs!533)))))) (toList!116 (right!711 (right!711 (right!711 (right!711 (right!711 xs!533))))))))))

(declare-fun b!28551 () Bool)

(declare-fun e!14597 () List!361)

(assert (=> b!28551 (= e!14597 Nil!356)))

(declare-fun d!15071 () Bool)

(declare-fun lt!5026 () List!361)

(assert (=> d!15071 (= (size!271 lt!5026) (size!272 (right!711 (right!711 (right!711 (right!711 xs!533))))))))

(assert (=> d!15071 (= lt!5026 e!14597)))

(declare-fun c!6292 () Bool)

(assert (=> d!15071 (= c!6292 (is-Empty!74 (right!711 (right!711 (right!711 (right!711 xs!533))))))))

(assert (=> d!15071 (= (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))) lt!5026)))

(declare-fun b!28552 () Bool)

(assert (=> b!28552 (= e!14597 e!14598)))

(declare-fun c!6291 () Bool)

(assert (=> b!28552 (= c!6291 (is-Single!63 (right!711 (right!711 (right!711 (right!711 xs!533))))))))

(assert (= (and b!28552 c!6291) b!28553))

(assert (= (and b!28552 (not c!6291)) b!28554))

(assert (= (and d!15071 c!6292) b!28551))

(assert (= (and d!15071 (not c!6292)) b!28552))

(declare-fun m!30271 () Bool)

(assert (=> b!28554 m!30271))

(declare-fun m!30273 () Bool)

(assert (=> b!28554 m!30273))

(assert (=> b!28554 m!30271))

(assert (=> b!28554 m!30273))

(declare-fun m!30275 () Bool)

(assert (=> b!28554 m!30275))

(declare-fun m!30277 () Bool)

(assert (=> d!15071 m!30277))

(declare-fun m!30279 () Bool)

(assert (=> d!15071 m!30279))

(assert (=> b!28147 d!15071))

(assert (=> b!28147 d!14803))

(declare-fun b!28556 () Bool)

(declare-fun e!14599 () Int)

(declare-fun lt!5027 () Int)

(declare-fun lt!5029 () Int)

(assert (=> b!28556 (= e!14599 (+ 1 (ite (>= lt!5027 lt!5029) lt!5027 lt!5029)))))

(assert (=> b!28556 (= lt!5029 (level!52 (right!711 (right!711 lt!4812))))))

(assert (=> b!28556 (= lt!5027 (level!52 (left!708 (right!711 lt!4812))))))

(declare-fun d!15073 () Bool)

(declare-fun lt!5028 () Int)

(assert (=> d!15073 (>= lt!5028 0)))

(assert (=> d!15073 (= lt!5028 e!14599)))

(declare-fun c!6293 () Bool)

(assert (=> d!15073 (= c!6293 (or (is-Empty!74 (right!711 lt!4812)) (is-Single!63 (right!711 lt!4812))))))

(assert (=> d!15073 (= (level!52 (right!711 lt!4812)) lt!5028)))

(declare-fun b!28555 () Bool)

(assert (=> b!28555 (= e!14599 0)))

(assert (= (and d!15073 c!6293) b!28555))

(assert (= (and d!15073 (not c!6293)) b!28556))

(declare-fun m!30281 () Bool)

(assert (=> b!28556 m!30281))

(declare-fun m!30283 () Bool)

(assert (=> b!28556 m!30283))

(assert (=> b!28251 d!15073))

(declare-fun b!28558 () Bool)

(declare-fun e!14600 () Int)

(declare-fun lt!5030 () Int)

(declare-fun lt!5032 () Int)

(assert (=> b!28558 (= e!14600 (+ 1 (ite (>= lt!5030 lt!5032) lt!5030 lt!5032)))))

(assert (=> b!28558 (= lt!5032 (level!52 (right!711 (left!708 lt!4812))))))

(assert (=> b!28558 (= lt!5030 (level!52 (left!708 (left!708 lt!4812))))))

(declare-fun d!15075 () Bool)

(declare-fun lt!5031 () Int)

(assert (=> d!15075 (>= lt!5031 0)))

(assert (=> d!15075 (= lt!5031 e!14600)))

(declare-fun c!6294 () Bool)

(assert (=> d!15075 (= c!6294 (or (is-Empty!74 (left!708 lt!4812)) (is-Single!63 (left!708 lt!4812))))))

(assert (=> d!15075 (= (level!52 (left!708 lt!4812)) lt!5031)))

(declare-fun b!28557 () Bool)

(assert (=> b!28557 (= e!14600 0)))

(assert (= (and d!15075 c!6294) b!28557))

(assert (= (and d!15075 (not c!6294)) b!28558))

(declare-fun m!30285 () Bool)

(assert (=> b!28558 m!30285))

(declare-fun m!30287 () Bool)

(assert (=> b!28558 m!30287))

(assert (=> b!28251 d!15075))

(declare-fun b!28559 () Bool)

(declare-fun e!14605 () Bool)

(declare-fun e!14608 () Bool)

(assert (=> b!28559 (= e!14605 e!14608)))

(declare-fun res!13064 () Bool)

(assert (=> b!28559 (=> (not res!13064) (not e!14608))))

(assert (=> b!28559 (= res!13064 (appendAssoc!9 (toList!116 (left!708 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (toList!116 (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (toList!116 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))

(declare-fun b!28560 () Bool)

(declare-fun e!14607 () Bool)

(declare-fun e!14609 () Bool)

(assert (=> b!28560 (= e!14607 e!14609)))

(declare-fun res!13070 () Bool)

(assert (=> b!28560 (=> (not res!13070) (not e!14609))))

(assert (=> b!28560 (= res!13070 (appendAssoc!9 (toList!116 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (toList!116 (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))) (toList!116 (right!711 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))))

(declare-fun b!28561 () Bool)

(declare-fun e!14606 () Bool)

(assert (=> b!28561 (= e!14606 e!14607)))

(declare-fun res!13067 () Bool)

(assert (=> b!28561 (=> res!13067 e!14607)))

(assert (=> b!28561 (= res!13067 (not (is-CC!63 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))

(declare-fun d!15077 () Bool)

(declare-fun e!14604 () Bool)

(assert (=> d!15077 e!14604))

(declare-fun res!13065 () Bool)

(assert (=> d!15077 (=> (not res!13065) (not e!14604))))

(declare-fun e!14601 () Bool)

(assert (=> d!15077 (= res!13065 e!14601)))

(declare-fun res!13063 () Bool)

(assert (=> d!15077 (=> res!13063 e!14601)))

(assert (=> d!15077 (= res!13063 (not (is-CC!63 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(assert (=> d!15077 (= (appendAssocInst!13 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))) (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) true)))

(declare-fun b!28562 () Bool)

(assert (=> b!28562 (= e!14608 (appendAssoc!9 (toList!116 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))) (toList!116 (left!708 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (++!41 (toList!116 (right!711 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))) (toList!116 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))

(declare-fun b!28563 () Bool)

(declare-fun e!14602 () Bool)

(assert (=> b!28563 (= e!14602 e!14605)))

(declare-fun res!13069 () Bool)

(assert (=> b!28563 (=> res!13069 e!14605)))

(assert (=> b!28563 (= res!13069 (not (is-CC!63 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))))))

(declare-fun b!28564 () Bool)

(assert (=> b!28564 (= e!14601 e!14602)))

(declare-fun res!13066 () Bool)

(assert (=> b!28564 (=> (not res!13066) (not e!14602))))

(assert (=> b!28564 (= res!13066 (appendAssoc!9 (toList!116 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))) (toList!116 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))) (toList!116 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))

(declare-fun b!28565 () Bool)

(declare-fun e!14603 () Bool)

(assert (=> b!28565 (= e!14603 e!14606)))

(declare-fun res!13068 () Bool)

(assert (=> b!28565 (=> (not res!13068) (not e!14606))))

(assert (=> b!28565 (= res!13068 (appendAssoc!9 (toList!116 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (toList!116 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))) (toList!116 (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))

(declare-fun b!28566 () Bool)

(assert (=> b!28566 (= e!14609 (appendAssoc!9 (++!41 (toList!116 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (toList!116 (left!708 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))) (toList!116 (right!711 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))) (toList!116 (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))

(declare-fun b!28567 () Bool)

(assert (=> b!28567 (= e!14604 e!14603)))

(declare-fun res!13062 () Bool)

(assert (=> b!28567 (=> res!13062 e!14603)))

(assert (=> b!28567 (= res!13062 (not (is-CC!63 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))

(assert (= (and d!15077 (not res!13063)) b!28564))

(assert (= (and b!28564 res!13066) b!28563))

(assert (= (and b!28563 (not res!13069)) b!28559))

(assert (= (and b!28559 res!13064) b!28562))

(assert (= (and d!15077 res!13065) b!28567))

(assert (= (and b!28567 (not res!13062)) b!28565))

(assert (= (and b!28565 res!13068) b!28561))

(assert (= (and b!28561 (not res!13067)) b!28560))

(assert (= (and b!28560 res!13070) b!28566))

(declare-fun m!30289 () Bool)

(assert (=> b!28565 m!30289))

(declare-fun m!30291 () Bool)

(assert (=> b!28565 m!30291))

(declare-fun m!30293 () Bool)

(assert (=> b!28565 m!30293))

(assert (=> b!28565 m!30289))

(assert (=> b!28565 m!30291))

(assert (=> b!28565 m!30293))

(declare-fun m!30295 () Bool)

(assert (=> b!28565 m!30295))

(assert (=> b!28560 m!30289))

(declare-fun m!30297 () Bool)

(assert (=> b!28560 m!30297))

(declare-fun m!30299 () Bool)

(assert (=> b!28560 m!30299))

(assert (=> b!28560 m!30289))

(assert (=> b!28560 m!30297))

(assert (=> b!28560 m!30299))

(declare-fun m!30301 () Bool)

(assert (=> b!28560 m!30301))

(declare-fun m!30303 () Bool)

(assert (=> b!28564 m!30303))

(declare-fun m!30305 () Bool)

(assert (=> b!28564 m!30305))

(declare-fun m!30307 () Bool)

(assert (=> b!28564 m!30307))

(assert (=> b!28564 m!30303))

(assert (=> b!28564 m!30305))

(assert (=> b!28564 m!30307))

(declare-fun m!30309 () Bool)

(assert (=> b!28564 m!30309))

(assert (=> b!28566 m!30299))

(declare-fun m!30311 () Bool)

(assert (=> b!28566 m!30311))

(assert (=> b!28566 m!30299))

(assert (=> b!28566 m!30293))

(declare-fun m!30313 () Bool)

(assert (=> b!28566 m!30313))

(assert (=> b!28566 m!30289))

(assert (=> b!28566 m!30297))

(assert (=> b!28566 m!30311))

(assert (=> b!28566 m!30297))

(assert (=> b!28566 m!30293))

(assert (=> b!28566 m!30289))

(declare-fun m!30315 () Bool)

(assert (=> b!28559 m!30315))

(declare-fun m!30317 () Bool)

(assert (=> b!28559 m!30317))

(assert (=> b!28559 m!30307))

(assert (=> b!28559 m!30315))

(assert (=> b!28559 m!30317))

(assert (=> b!28559 m!30307))

(declare-fun m!30319 () Bool)

(assert (=> b!28559 m!30319))

(assert (=> b!28562 m!30317))

(assert (=> b!28562 m!30307))

(declare-fun m!30321 () Bool)

(assert (=> b!28562 m!30321))

(assert (=> b!28562 m!30303))

(assert (=> b!28562 m!30315))

(assert (=> b!28562 m!30321))

(declare-fun m!30323 () Bool)

(assert (=> b!28562 m!30323))

(assert (=> b!28562 m!30317))

(assert (=> b!28562 m!30315))

(assert (=> b!28562 m!30303))

(assert (=> b!28562 m!30307))

(assert (=> b!28049 d!15077))

(declare-fun b!28571 () Bool)

(declare-fun e!14611 () Bool)

(declare-fun lt!5033 () List!361)

(assert (=> b!28571 (= e!14611 (or (not (= (toList!116 (right!711 (right!711 xs!533))) Nil!356)) (= lt!5033 (toList!116 (left!708 (right!711 xs!533))))))))

(declare-fun b!28568 () Bool)

(declare-fun e!14610 () List!361)

(assert (=> b!28568 (= e!14610 (toList!116 (right!711 (right!711 xs!533))))))

(declare-fun d!15079 () Bool)

(assert (=> d!15079 e!14611))

(declare-fun res!13072 () Bool)

(assert (=> d!15079 (=> (not res!13072) (not e!14611))))

(assert (=> d!15079 (= res!13072 (= (content!71 lt!5033) (union (content!71 (toList!116 (left!708 (right!711 xs!533)))) (content!71 (toList!116 (right!711 (right!711 xs!533)))))))))

(assert (=> d!15079 (= lt!5033 e!14610)))

(declare-fun c!6295 () Bool)

(assert (=> d!15079 (= c!6295 (is-Nil!356 (toList!116 (left!708 (right!711 xs!533)))))))

(assert (=> d!15079 (= (++!41 (toList!116 (left!708 (right!711 xs!533))) (toList!116 (right!711 (right!711 xs!533)))) lt!5033)))

(declare-fun b!28569 () Bool)

(assert (=> b!28569 (= e!14610 (Cons!355 (h!272 (toList!116 (left!708 (right!711 xs!533)))) (++!41 (t!4375 (toList!116 (left!708 (right!711 xs!533)))) (toList!116 (right!711 (right!711 xs!533))))))))

(declare-fun b!28570 () Bool)

(declare-fun res!13071 () Bool)

(assert (=> b!28570 (=> (not res!13071) (not e!14611))))

(assert (=> b!28570 (= res!13071 (= (size!271 lt!5033) (+ (size!271 (toList!116 (left!708 (right!711 xs!533)))) (size!271 (toList!116 (right!711 (right!711 xs!533)))))))))

(assert (= (and d!15079 c!6295) b!28568))

(assert (= (and d!15079 (not c!6295)) b!28569))

(assert (= (and d!15079 res!13072) b!28570))

(assert (= (and b!28570 res!13071) b!28571))

(declare-fun m!30325 () Bool)

(assert (=> d!15079 m!30325))

(assert (=> d!15079 m!29397))

(declare-fun m!30327 () Bool)

(assert (=> d!15079 m!30327))

(assert (=> d!15079 m!29399))

(assert (=> d!15079 m!29765))

(assert (=> b!28569 m!29399))

(declare-fun m!30329 () Bool)

(assert (=> b!28569 m!30329))

(declare-fun m!30331 () Bool)

(assert (=> b!28570 m!30331))

(assert (=> b!28570 m!29397))

(declare-fun m!30333 () Bool)

(assert (=> b!28570 m!30333))

(assert (=> b!28570 m!29399))

(assert (=> b!28570 m!29771))

(assert (=> b!28137 d!15079))

(declare-fun e!14613 () Bool)

(declare-fun lt!5034 () List!361)

(declare-fun b!28575 () Bool)

(assert (=> b!28575 (= e!14613 (or (not (= (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)) Nil!356)) (= lt!5034 (toList!116 (left!708 (right!711 xs!533))))))))

(declare-fun b!28572 () Bool)

(declare-fun e!14612 () List!361)

(assert (=> b!28572 (= e!14612 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)))))

(declare-fun d!15081 () Bool)

(assert (=> d!15081 e!14613))

(declare-fun res!13074 () Bool)

(assert (=> d!15081 (=> (not res!13074) (not e!14613))))

(assert (=> d!15081 (= res!13074 (= (content!71 lt!5034) (union (content!71 (toList!116 (left!708 (right!711 xs!533)))) (content!71 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))))))))

(assert (=> d!15081 (= lt!5034 e!14612)))

(declare-fun c!6296 () Bool)

(assert (=> d!15081 (= c!6296 (is-Nil!356 (toList!116 (left!708 (right!711 xs!533)))))))

(assert (=> d!15081 (= (++!41 (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))) lt!5034)))

(declare-fun b!28573 () Bool)

(assert (=> b!28573 (= e!14612 (Cons!355 (h!272 (toList!116 (left!708 (right!711 xs!533)))) (++!41 (t!4375 (toList!116 (left!708 (right!711 xs!533)))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)))))))

(declare-fun b!28574 () Bool)

(declare-fun res!13073 () Bool)

(assert (=> b!28574 (=> (not res!13073) (not e!14613))))

(assert (=> b!28574 (= res!13073 (= (size!271 lt!5034) (+ (size!271 (toList!116 (left!708 (right!711 xs!533)))) (size!271 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))))))))

(assert (= (and d!15081 c!6296) b!28572))

(assert (= (and d!15081 (not c!6296)) b!28573))

(assert (= (and d!15081 res!13074) b!28574))

(assert (= (and b!28574 res!13073) b!28575))

(declare-fun m!30335 () Bool)

(assert (=> d!15081 m!30335))

(assert (=> d!15081 m!29397))

(assert (=> d!15081 m!30327))

(assert (=> d!15081 m!29403))

(declare-fun m!30337 () Bool)

(assert (=> d!15081 m!30337))

(assert (=> b!28573 m!29403))

(declare-fun m!30339 () Bool)

(assert (=> b!28573 m!30339))

(declare-fun m!30341 () Bool)

(assert (=> b!28574 m!30341))

(assert (=> b!28574 m!29397))

(assert (=> b!28574 m!30333))

(assert (=> b!28574 m!29403))

(declare-fun m!30343 () Bool)

(assert (=> b!28574 m!30343))

(assert (=> b!28137 d!15081))

(declare-fun b!28576 () Bool)

(declare-fun e!14614 () Bool)

(assert (=> b!28576 (= e!14614 (= (++!41 (++!41 (t!4375 (toList!116 (left!708 (right!711 xs!533)))) (toList!116 (right!711 (right!711 xs!533)))) (toList!116 ys!77)) (++!41 (t!4375 (toList!116 (left!708 (right!711 xs!533)))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)))))))

(declare-fun lt!5035 () Bool)

(assert (=> b!28576 (= lt!5035 (appendAssoc!9 (t!4375 (t!4375 (toList!116 (left!708 (right!711 xs!533))))) (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)))))

(declare-fun d!15083 () Bool)

(assert (=> d!15083 e!14614))

(declare-fun c!6297 () Bool)

(assert (=> d!15083 (= c!6297 (is-Cons!355 (t!4375 (toList!116 (left!708 (right!711 xs!533))))))))

(assert (=> d!15083 (= (appendAssoc!9 (t!4375 (toList!116 (left!708 (right!711 xs!533)))) (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)) true)))

(declare-fun b!28577 () Bool)

(assert (=> b!28577 (= e!14614 (= (++!41 (++!41 (t!4375 (toList!116 (left!708 (right!711 xs!533)))) (toList!116 (right!711 (right!711 xs!533)))) (toList!116 ys!77)) (++!41 (t!4375 (toList!116 (left!708 (right!711 xs!533)))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)))))))

(assert (= (and d!15083 c!6297) b!28576))

(assert (= (and d!15083 (not c!6297)) b!28577))

(assert (=> b!28576 m!29399))

(assert (=> b!28576 m!29365))

(declare-fun m!30345 () Bool)

(assert (=> b!28576 m!30345))

(assert (=> b!28576 m!29399))

(assert (=> b!28576 m!30329))

(assert (=> b!28576 m!29403))

(assert (=> b!28576 m!30339))

(assert (=> b!28576 m!29399))

(assert (=> b!28576 m!29365))

(assert (=> b!28576 m!29403))

(assert (=> b!28576 m!30329))

(assert (=> b!28576 m!29365))

(declare-fun m!30347 () Bool)

(assert (=> b!28576 m!30347))

(assert (=> b!28577 m!29399))

(assert (=> b!28577 m!30329))

(assert (=> b!28577 m!30329))

(assert (=> b!28577 m!29365))

(assert (=> b!28577 m!30347))

(assert (=> b!28577 m!29399))

(assert (=> b!28577 m!29365))

(assert (=> b!28577 m!29403))

(assert (=> b!28577 m!29403))

(assert (=> b!28577 m!30339))

(assert (=> b!28137 d!15083))

(declare-fun e!14616 () Bool)

(declare-fun lt!5036 () List!361)

(declare-fun b!28581 () Bool)

(assert (=> b!28581 (= e!14616 (or (not (= (toList!116 ys!77) Nil!356)) (= lt!5036 (++!41 (toList!116 (left!708 (right!711 xs!533))) (toList!116 (right!711 (right!711 xs!533)))))))))

(declare-fun b!28578 () Bool)

(declare-fun e!14615 () List!361)

(assert (=> b!28578 (= e!14615 (toList!116 ys!77))))

(declare-fun d!15085 () Bool)

(assert (=> d!15085 e!14616))

(declare-fun res!13076 () Bool)

(assert (=> d!15085 (=> (not res!13076) (not e!14616))))

(assert (=> d!15085 (= res!13076 (= (content!71 lt!5036) (union (content!71 (++!41 (toList!116 (left!708 (right!711 xs!533))) (toList!116 (right!711 (right!711 xs!533))))) (content!71 (toList!116 ys!77)))))))

(assert (=> d!15085 (= lt!5036 e!14615)))

(declare-fun c!6298 () Bool)

(assert (=> d!15085 (= c!6298 (is-Nil!356 (++!41 (toList!116 (left!708 (right!711 xs!533))) (toList!116 (right!711 (right!711 xs!533))))))))

(assert (=> d!15085 (= (++!41 (++!41 (toList!116 (left!708 (right!711 xs!533))) (toList!116 (right!711 (right!711 xs!533)))) (toList!116 ys!77)) lt!5036)))

(declare-fun b!28579 () Bool)

(assert (=> b!28579 (= e!14615 (Cons!355 (h!272 (++!41 (toList!116 (left!708 (right!711 xs!533))) (toList!116 (right!711 (right!711 xs!533))))) (++!41 (t!4375 (++!41 (toList!116 (left!708 (right!711 xs!533))) (toList!116 (right!711 (right!711 xs!533))))) (toList!116 ys!77))))))

(declare-fun b!28580 () Bool)

(declare-fun res!13075 () Bool)

(assert (=> b!28580 (=> (not res!13075) (not e!14616))))

(assert (=> b!28580 (= res!13075 (= (size!271 lt!5036) (+ (size!271 (++!41 (toList!116 (left!708 (right!711 xs!533))) (toList!116 (right!711 (right!711 xs!533))))) (size!271 (toList!116 ys!77)))))))

(assert (= (and d!15085 c!6298) b!28578))

(assert (= (and d!15085 (not c!6298)) b!28579))

(assert (= (and d!15085 res!13076) b!28580))

(assert (= (and b!28580 res!13075) b!28581))

(declare-fun m!30349 () Bool)

(assert (=> d!15085 m!30349))

(assert (=> d!15085 m!29525))

(declare-fun m!30351 () Bool)

(assert (=> d!15085 m!30351))

(assert (=> d!15085 m!29365))

(assert (=> d!15085 m!29749))

(assert (=> b!28579 m!29365))

(declare-fun m!30353 () Bool)

(assert (=> b!28579 m!30353))

(declare-fun m!30355 () Bool)

(assert (=> b!28580 m!30355))

(assert (=> b!28580 m!29525))

(declare-fun m!30357 () Bool)

(assert (=> b!28580 m!30357))

(assert (=> b!28580 m!29365))

(assert (=> b!28580 m!29755))

(assert (=> b!28137 d!15085))

(assert (=> b!28137 d!14885))

(assert (=> b!28126 d!14967))

(assert (=> b!28126 d!14969))

(declare-fun d!15087 () Bool)

(declare-fun res!13078 () Bool)

(declare-fun e!14617 () Bool)

(assert (=> d!15087 (=> res!13078 e!14617)))

(assert (=> d!15087 (= res!13078 (not (is-CC!63 (left!708 (right!711 ys!77)))))))

(assert (=> d!15087 (= (balanced!59 (left!708 (right!711 ys!77))) e!14617)))

(declare-fun b!28584 () Bool)

(declare-fun res!13080 () Bool)

(declare-fun e!14618 () Bool)

(assert (=> b!28584 (=> (not res!13080) (not e!14618))))

(assert (=> b!28584 (= res!13080 (balanced!59 (left!708 (left!708 (right!711 ys!77)))))))

(declare-fun b!28582 () Bool)

(assert (=> b!28582 (= e!14617 e!14618)))

(declare-fun res!13077 () Bool)

(assert (=> b!28582 (=> (not res!13077) (not e!14618))))

(assert (=> b!28582 (= res!13077 (>= (- (level!52 (left!708 (left!708 (right!711 ys!77)))) (level!52 (right!711 (left!708 (right!711 ys!77))))) (- 1)))))

(declare-fun b!28585 () Bool)

(assert (=> b!28585 (= e!14618 (balanced!59 (right!711 (left!708 (right!711 ys!77)))))))

(declare-fun b!28583 () Bool)

(declare-fun res!13079 () Bool)

(assert (=> b!28583 (=> (not res!13079) (not e!14618))))

(assert (=> b!28583 (= res!13079 (<= (- (level!52 (left!708 (left!708 (right!711 ys!77)))) (level!52 (right!711 (left!708 (right!711 ys!77))))) 1))))

(assert (= (and d!15087 (not res!13078)) b!28582))

(assert (= (and b!28582 res!13077) b!28583))

(assert (= (and b!28583 res!13079) b!28584))

(assert (= (and b!28584 res!13080) b!28585))

(declare-fun m!30359 () Bool)

(assert (=> b!28584 m!30359))

(declare-fun m!30361 () Bool)

(assert (=> b!28582 m!30361))

(declare-fun m!30363 () Bool)

(assert (=> b!28582 m!30363))

(declare-fun m!30365 () Bool)

(assert (=> b!28585 m!30365))

(assert (=> b!28583 m!30361))

(assert (=> b!28583 m!30363))

(assert (=> b!28166 d!15087))

(assert (=> b!28208 d!15055))

(assert (=> b!28208 d!15053))

(assert (=> b!28090 d!15079))

(assert (=> b!28090 d!14837))

(assert (=> b!28090 d!14839))

(declare-fun b!28587 () Bool)

(declare-fun e!14619 () Int)

(declare-fun lt!5037 () Int)

(declare-fun lt!5039 () Int)

(assert (=> b!28587 (= e!14619 (+ 1 (ite (>= lt!5037 lt!5039) lt!5037 lt!5039)))))

(assert (=> b!28587 (= lt!5039 (level!52 (right!711 (right!711 (left!708 nrr!4)))))))

(assert (=> b!28587 (= lt!5037 (level!52 (left!708 (right!711 (left!708 nrr!4)))))))

(declare-fun d!15089 () Bool)

(declare-fun lt!5038 () Int)

(assert (=> d!15089 (>= lt!5038 0)))

(assert (=> d!15089 (= lt!5038 e!14619)))

(declare-fun c!6299 () Bool)

(assert (=> d!15089 (= c!6299 (or (is-Empty!74 (right!711 (left!708 nrr!4))) (is-Single!63 (right!711 (left!708 nrr!4)))))))

(assert (=> d!15089 (= (level!52 (right!711 (left!708 nrr!4))) lt!5038)))

(declare-fun b!28586 () Bool)

(assert (=> b!28586 (= e!14619 0)))

(assert (= (and d!15089 c!6299) b!28586))

(assert (= (and d!15089 (not c!6299)) b!28587))

(declare-fun m!30367 () Bool)

(assert (=> b!28587 m!30367))

(declare-fun m!30369 () Bool)

(assert (=> b!28587 m!30369))

(assert (=> b!28132 d!15089))

(declare-fun b!28589 () Bool)

(declare-fun e!14620 () Int)

(declare-fun lt!5040 () Int)

(declare-fun lt!5042 () Int)

(assert (=> b!28589 (= e!14620 (+ 1 (ite (>= lt!5040 lt!5042) lt!5040 lt!5042)))))

(assert (=> b!28589 (= lt!5042 (level!52 (right!711 (left!708 (left!708 nrr!4)))))))

(assert (=> b!28589 (= lt!5040 (level!52 (left!708 (left!708 (left!708 nrr!4)))))))

(declare-fun d!15091 () Bool)

(declare-fun lt!5041 () Int)

(assert (=> d!15091 (>= lt!5041 0)))

(assert (=> d!15091 (= lt!5041 e!14620)))

(declare-fun c!6300 () Bool)

(assert (=> d!15091 (= c!6300 (or (is-Empty!74 (left!708 (left!708 nrr!4))) (is-Single!63 (left!708 (left!708 nrr!4)))))))

(assert (=> d!15091 (= (level!52 (left!708 (left!708 nrr!4))) lt!5041)))

(declare-fun b!28588 () Bool)

(assert (=> b!28588 (= e!14620 0)))

(assert (= (and d!15091 c!6300) b!28588))

(assert (= (and d!15091 (not c!6300)) b!28589))

(declare-fun m!30371 () Bool)

(assert (=> b!28589 m!30371))

(declare-fun m!30373 () Bool)

(assert (=> b!28589 m!30373))

(assert (=> b!28132 d!15091))

(declare-fun b!28591 () Bool)

(declare-fun e!14621 () Int)

(declare-fun lt!5043 () Int)

(declare-fun lt!5045 () Int)

(assert (=> b!28591 (= e!14621 (+ 1 (ite (>= lt!5043 lt!5045) lt!5043 lt!5045)))))

(assert (=> b!28591 (= lt!5045 (level!52 (right!711 (right!711 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77))))))))

(assert (=> b!28591 (= lt!5043 (level!52 (left!708 (right!711 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77))))))))

(declare-fun d!15093 () Bool)

(declare-fun lt!5044 () Int)

(assert (=> d!15093 (>= lt!5044 0)))

(assert (=> d!15093 (= lt!5044 e!14621)))

(declare-fun c!6301 () Bool)

(assert (=> d!15093 (= c!6301 (or (is-Empty!74 (right!711 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77)))) (is-Single!63 (right!711 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77))))))))

(assert (=> d!15093 (= (level!52 (right!711 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77)))) lt!5044)))

(declare-fun b!28590 () Bool)

(assert (=> b!28590 (= e!14621 0)))

(assert (= (and d!15093 c!6301) b!28590))

(assert (= (and d!15093 (not c!6301)) b!28591))

(declare-fun m!30375 () Bool)

(assert (=> b!28591 m!30375))

(declare-fun m!30377 () Bool)

(assert (=> b!28591 m!30377))

(assert (=> b!28175 d!15093))

(declare-fun b!28593 () Bool)

(declare-fun e!14622 () Int)

(declare-fun lt!5046 () Int)

(declare-fun lt!5048 () Int)

(assert (=> b!28593 (= e!14622 (+ 1 (ite (>= lt!5046 lt!5048) lt!5046 lt!5048)))))

(assert (=> b!28593 (= lt!5048 (level!52 (right!711 (left!708 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77))))))))

(assert (=> b!28593 (= lt!5046 (level!52 (left!708 (left!708 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77))))))))

(declare-fun d!15095 () Bool)

(declare-fun lt!5047 () Int)

(assert (=> d!15095 (>= lt!5047 0)))

(assert (=> d!15095 (= lt!5047 e!14622)))

(declare-fun c!6302 () Bool)

(assert (=> d!15095 (= c!6302 (or (is-Empty!74 (left!708 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77)))) (is-Single!63 (left!708 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77))))))))

(assert (=> d!15095 (= (level!52 (left!708 (ite lt!4801 (left!708 (right!711 (right!711 xs!533))) (right!711 ys!77)))) lt!5047)))

(declare-fun b!28592 () Bool)

(assert (=> b!28592 (= e!14622 0)))

(assert (= (and d!15095 c!6302) b!28592))

(assert (= (and d!15095 (not c!6302)) b!28593))

(declare-fun m!30379 () Bool)

(assert (=> b!28593 m!30379))

(declare-fun m!30381 () Bool)

(assert (=> b!28593 m!30381))

(assert (=> b!28175 d!15095))

(declare-fun d!15097 () Bool)

(declare-fun res!13082 () Bool)

(declare-fun e!14623 () Bool)

(assert (=> d!15097 (=> res!13082 e!14623)))

(assert (=> d!15097 (= res!13082 (not (is-CC!63 (right!711 (left!708 res!5536)))))))

(assert (=> d!15097 (= (balanced!59 (right!711 (left!708 res!5536))) e!14623)))

(declare-fun b!28596 () Bool)

(declare-fun res!13084 () Bool)

(declare-fun e!14624 () Bool)

(assert (=> b!28596 (=> (not res!13084) (not e!14624))))

(assert (=> b!28596 (= res!13084 (balanced!59 (left!708 (right!711 (left!708 res!5536)))))))

(declare-fun b!28594 () Bool)

(assert (=> b!28594 (= e!14623 e!14624)))

(declare-fun res!13081 () Bool)

(assert (=> b!28594 (=> (not res!13081) (not e!14624))))

(assert (=> b!28594 (= res!13081 (>= (- (level!52 (left!708 (right!711 (left!708 res!5536)))) (level!52 (right!711 (right!711 (left!708 res!5536))))) (- 1)))))

(declare-fun b!28597 () Bool)

(assert (=> b!28597 (= e!14624 (balanced!59 (right!711 (right!711 (left!708 res!5536)))))))

(declare-fun b!28595 () Bool)

(declare-fun res!13083 () Bool)

(assert (=> b!28595 (=> (not res!13083) (not e!14624))))

(assert (=> b!28595 (= res!13083 (<= (- (level!52 (left!708 (right!711 (left!708 res!5536)))) (level!52 (right!711 (right!711 (left!708 res!5536))))) 1))))

(assert (= (and d!15097 (not res!13082)) b!28594))

(assert (= (and b!28594 res!13081) b!28595))

(assert (= (and b!28595 res!13083) b!28596))

(assert (= (and b!28596 res!13084) b!28597))

(declare-fun m!30383 () Bool)

(assert (=> b!28596 m!30383))

(assert (=> b!28594 m!30231))

(assert (=> b!28594 m!30229))

(declare-fun m!30385 () Bool)

(assert (=> b!28597 m!30385))

(assert (=> b!28595 m!30231))

(assert (=> b!28595 m!30229))

(assert (=> b!28211 d!15097))

(declare-fun d!15099 () Bool)

(assert (=> d!15099 (= (isEmpty!320 (left!708 lt!4807)) (= (left!708 lt!4807) Empty!74))))

(assert (=> b!28242 d!15099))

(declare-fun d!15101 () Bool)

(declare-fun c!6303 () Bool)

(assert (=> d!15101 (= c!6303 (is-Nil!356 lt!4895))))

(declare-fun e!14625 () (Set T!1829))

(assert (=> d!15101 (= (content!71 lt!4895) e!14625)))

(declare-fun b!28598 () Bool)

(assert (=> b!28598 (= e!14625 (as emptyset (Set T!1829)))))

(declare-fun b!28599 () Bool)

(assert (=> b!28599 (= e!14625 (union (insert (h!272 lt!4895) (as emptyset (Set T!1829))) (content!71 (t!4375 lt!4895))))))

(assert (= (and d!15101 c!6303) b!28598))

(assert (= (and d!15101 (not c!6303)) b!28599))

(declare-fun m!30387 () Bool)

(assert (=> b!28599 m!30387))

(declare-fun m!30389 () Bool)

(assert (=> b!28599 m!30389))

(assert (=> d!14885 d!15101))

(declare-fun d!15103 () Bool)

(declare-fun c!6304 () Bool)

(assert (=> d!15103 (= c!6304 (is-Nil!356 (toList!116 (right!711 (right!711 xs!533)))))))

(declare-fun e!14626 () (Set T!1829))

(assert (=> d!15103 (= (content!71 (toList!116 (right!711 (right!711 xs!533)))) e!14626)))

(declare-fun b!28600 () Bool)

(assert (=> b!28600 (= e!14626 (as emptyset (Set T!1829)))))

(declare-fun b!28601 () Bool)

(assert (=> b!28601 (= e!14626 (union (insert (h!272 (toList!116 (right!711 (right!711 xs!533)))) (as emptyset (Set T!1829))) (content!71 (t!4375 (toList!116 (right!711 (right!711 xs!533)))))))))

(assert (= (and d!15103 c!6304) b!28600))

(assert (= (and d!15103 (not c!6304)) b!28601))

(declare-fun m!30391 () Bool)

(assert (=> b!28601 m!30391))

(declare-fun m!30393 () Bool)

(assert (=> b!28601 m!30393))

(assert (=> d!14885 d!15103))

(declare-fun d!15105 () Bool)

(declare-fun c!6305 () Bool)

(assert (=> d!15105 (= c!6305 (is-Nil!356 (toList!116 ys!77)))))

(declare-fun e!14627 () (Set T!1829))

(assert (=> d!15105 (= (content!71 (toList!116 ys!77)) e!14627)))

(declare-fun b!28602 () Bool)

(assert (=> b!28602 (= e!14627 (as emptyset (Set T!1829)))))

(declare-fun b!28603 () Bool)

(assert (=> b!28603 (= e!14627 (union (insert (h!272 (toList!116 ys!77)) (as emptyset (Set T!1829))) (content!71 (t!4375 (toList!116 ys!77)))))))

(assert (= (and d!15105 c!6305) b!28602))

(assert (= (and d!15105 (not c!6305)) b!28603))

(declare-fun m!30395 () Bool)

(assert (=> b!28603 m!30395))

(declare-fun m!30397 () Bool)

(assert (=> b!28603 m!30397))

(assert (=> d!14885 d!15105))

(declare-fun b!28606 () Bool)

(declare-fun res!13085 () Bool)

(declare-fun e!14629 () Bool)

(assert (=> b!28606 (=> (not res!13085) (not e!14629))))

(assert (=> b!28606 (= res!13085 (concInv!58 (left!708 (right!711 (right!711 ys!77)))))))

(declare-fun b!28604 () Bool)

(declare-fun e!14628 () Bool)

(assert (=> b!28604 (= e!14628 e!14629)))

(declare-fun res!13088 () Bool)

(assert (=> b!28604 (=> (not res!13088) (not e!14629))))

(assert (=> b!28604 (= res!13088 (not (isEmpty!320 (left!708 (right!711 (right!711 ys!77))))))))

(declare-fun b!28607 () Bool)

(assert (=> b!28607 (= e!14629 (concInv!58 (right!711 (right!711 (right!711 ys!77)))))))

(declare-fun d!15107 () Bool)

(declare-fun res!13086 () Bool)

(assert (=> d!15107 (=> res!13086 e!14628)))

(assert (=> d!15107 (= res!13086 (not (is-CC!63 (right!711 (right!711 ys!77)))))))

(assert (=> d!15107 (= (concInv!58 (right!711 (right!711 ys!77))) e!14628)))

(declare-fun b!28605 () Bool)

(declare-fun res!13087 () Bool)

(assert (=> b!28605 (=> (not res!13087) (not e!14629))))

(assert (=> b!28605 (= res!13087 (not (isEmpty!320 (right!711 (right!711 (right!711 ys!77))))))))

(assert (= (and d!15107 (not res!13086)) b!28604))

(assert (= (and b!28604 res!13088) b!28605))

(assert (= (and b!28605 res!13087) b!28606))

(assert (= (and b!28606 res!13085) b!28607))

(declare-fun m!30399 () Bool)

(assert (=> b!28606 m!30399))

(declare-fun m!30401 () Bool)

(assert (=> b!28604 m!30401))

(declare-fun m!30403 () Bool)

(assert (=> b!28607 m!30403))

(declare-fun m!30405 () Bool)

(assert (=> b!28605 m!30405))

(assert (=> b!28229 d!15107))

(declare-fun d!15109 () Bool)

(declare-fun res!13090 () Bool)

(declare-fun e!14630 () Bool)

(assert (=> d!15109 (=> res!13090 e!14630)))

(assert (=> d!15109 (= res!13090 (not (is-CC!63 lt!4829)))))

(assert (=> d!15109 (= (balanced!59 lt!4829) e!14630)))

(declare-fun b!28610 () Bool)

(declare-fun res!13092 () Bool)

(declare-fun e!14631 () Bool)

(assert (=> b!28610 (=> (not res!13092) (not e!14631))))

(assert (=> b!28610 (= res!13092 (balanced!59 (left!708 lt!4829)))))

(declare-fun b!28608 () Bool)

(assert (=> b!28608 (= e!14630 e!14631)))

(declare-fun res!13089 () Bool)

(assert (=> b!28608 (=> (not res!13089) (not e!14631))))

(assert (=> b!28608 (= res!13089 (>= (- (level!52 (left!708 lt!4829)) (level!52 (right!711 lt!4829))) (- 1)))))

(declare-fun b!28611 () Bool)

(assert (=> b!28611 (= e!14631 (balanced!59 (right!711 lt!4829)))))

(declare-fun b!28609 () Bool)

(declare-fun res!13091 () Bool)

(assert (=> b!28609 (=> (not res!13091) (not e!14631))))

(assert (=> b!28609 (= res!13091 (<= (- (level!52 (left!708 lt!4829)) (level!52 (right!711 lt!4829))) 1))))

(assert (= (and d!15109 (not res!13090)) b!28608))

(assert (= (and b!28608 res!13089) b!28609))

(assert (= (and b!28609 res!13091) b!28610))

(assert (= (and b!28610 res!13092) b!28611))

(declare-fun m!30407 () Bool)

(assert (=> b!28610 m!30407))

(assert (=> b!28608 m!29981))

(assert (=> b!28608 m!29979))

(declare-fun m!30409 () Bool)

(assert (=> b!28611 m!30409))

(assert (=> b!28609 m!29981))

(assert (=> b!28609 m!29979))

(assert (=> b!28057 d!15109))

(assert (=> b!28116 d!15065))

(assert (=> b!28116 d!15063))

(declare-fun d!15111 () Bool)

(assert (=> d!15111 (= (isEmpty!320 (right!711 (left!708 res!5536))) (= (right!711 (left!708 res!5536)) Empty!74))))

(assert (=> b!28118 d!15111))

(assert (=> b!28121 d!14921))

(assert (=> b!28121 d!14923))

(assert (=> b!28231 d!14793))

(assert (=> b!28231 d!14791))

(declare-fun b!28613 () Bool)

(declare-fun e!14632 () Int)

(declare-fun lt!5049 () Int)

(declare-fun lt!5051 () Int)

(assert (=> b!28613 (= e!14632 (+ 1 (ite (>= lt!5049 lt!5051) lt!5049 lt!5051)))))

(assert (=> b!28613 (= lt!5051 (level!52 (right!711 (right!711 (right!711 ys!77)))))))

(assert (=> b!28613 (= lt!5049 (level!52 (left!708 (right!711 (right!711 ys!77)))))))

(declare-fun d!15113 () Bool)

(declare-fun lt!5050 () Int)

(assert (=> d!15113 (>= lt!5050 0)))

(assert (=> d!15113 (= lt!5050 e!14632)))

(declare-fun c!6306 () Bool)

(assert (=> d!15113 (= c!6306 (or (is-Empty!74 (right!711 (right!711 ys!77))) (is-Single!63 (right!711 (right!711 ys!77)))))))

(assert (=> d!15113 (= (level!52 (right!711 (right!711 ys!77))) lt!5050)))

(declare-fun b!28612 () Bool)

(assert (=> b!28612 (= e!14632 0)))

(assert (= (and d!15113 c!6306) b!28612))

(assert (= (and d!15113 (not c!6306)) b!28613))

(assert (=> b!28613 m!30025))

(assert (=> b!28613 m!30023))

(assert (=> b!28114 d!15113))

(declare-fun b!28615 () Bool)

(declare-fun e!14633 () Int)

(declare-fun lt!5052 () Int)

(declare-fun lt!5054 () Int)

(assert (=> b!28615 (= e!14633 (+ 1 (ite (>= lt!5052 lt!5054) lt!5052 lt!5054)))))

(assert (=> b!28615 (= lt!5054 (level!52 (right!711 (left!708 (right!711 ys!77)))))))

(assert (=> b!28615 (= lt!5052 (level!52 (left!708 (left!708 (right!711 ys!77)))))))

(declare-fun d!15115 () Bool)

(declare-fun lt!5053 () Int)

(assert (=> d!15115 (>= lt!5053 0)))

(assert (=> d!15115 (= lt!5053 e!14633)))

(declare-fun c!6307 () Bool)

(assert (=> d!15115 (= c!6307 (or (is-Empty!74 (left!708 (right!711 ys!77))) (is-Single!63 (left!708 (right!711 ys!77)))))))

(assert (=> d!15115 (= (level!52 (left!708 (right!711 ys!77))) lt!5053)))

(declare-fun b!28614 () Bool)

(assert (=> b!28614 (= e!14633 0)))

(assert (= (and d!15115 c!6307) b!28614))

(assert (= (and d!15115 (not c!6307)) b!28615))

(assert (=> b!28615 m!30363))

(assert (=> b!28615 m!30361))

(assert (=> b!28114 d!15115))

(declare-fun b!28619 () Bool)

(declare-fun e!14635 () Bool)

(declare-fun lt!5055 () List!361)

(assert (=> b!28619 (= e!14635 (or (not (= (toList!116 (right!711 (left!708 xs!533))) Nil!356)) (= lt!5055 (toList!116 (left!708 (left!708 xs!533))))))))

(declare-fun b!28616 () Bool)

(declare-fun e!14634 () List!361)

(assert (=> b!28616 (= e!14634 (toList!116 (right!711 (left!708 xs!533))))))

(declare-fun d!15117 () Bool)

(assert (=> d!15117 e!14635))

(declare-fun res!13094 () Bool)

(assert (=> d!15117 (=> (not res!13094) (not e!14635))))

(assert (=> d!15117 (= res!13094 (= (content!71 lt!5055) (union (content!71 (toList!116 (left!708 (left!708 xs!533)))) (content!71 (toList!116 (right!711 (left!708 xs!533)))))))))

(assert (=> d!15117 (= lt!5055 e!14634)))

(declare-fun c!6308 () Bool)

(assert (=> d!15117 (= c!6308 (is-Nil!356 (toList!116 (left!708 (left!708 xs!533)))))))

(assert (=> d!15117 (= (++!41 (toList!116 (left!708 (left!708 xs!533))) (toList!116 (right!711 (left!708 xs!533)))) lt!5055)))

(declare-fun b!28617 () Bool)

(assert (=> b!28617 (= e!14634 (Cons!355 (h!272 (toList!116 (left!708 (left!708 xs!533)))) (++!41 (t!4375 (toList!116 (left!708 (left!708 xs!533)))) (toList!116 (right!711 (left!708 xs!533))))))))

(declare-fun b!28618 () Bool)

(declare-fun res!13093 () Bool)

(assert (=> b!28618 (=> (not res!13093) (not e!14635))))

(assert (=> b!28618 (= res!13093 (= (size!271 lt!5055) (+ (size!271 (toList!116 (left!708 (left!708 xs!533)))) (size!271 (toList!116 (right!711 (left!708 xs!533)))))))))

(assert (= (and d!15117 c!6308) b!28616))

(assert (= (and d!15117 (not c!6308)) b!28617))

(assert (= (and d!15117 res!13094) b!28618))

(assert (= (and b!28618 res!13093) b!28619))

(declare-fun m!30411 () Bool)

(assert (=> d!15117 m!30411))

(assert (=> d!15117 m!29515))

(declare-fun m!30413 () Bool)

(assert (=> d!15117 m!30413))

(assert (=> d!15117 m!29517))

(declare-fun m!30415 () Bool)

(assert (=> d!15117 m!30415))

(assert (=> b!28617 m!29517))

(declare-fun m!30417 () Bool)

(assert (=> b!28617 m!30417))

(declare-fun m!30419 () Bool)

(assert (=> b!28618 m!30419))

(assert (=> b!28618 m!29515))

(declare-fun m!30421 () Bool)

(assert (=> b!28618 m!30421))

(assert (=> b!28618 m!29517))

(declare-fun m!30423 () Bool)

(assert (=> b!28618 m!30423))

(assert (=> b!28086 d!15117))

(declare-fun b!28622 () Bool)

(declare-fun e!14637 () List!361)

(assert (=> b!28622 (= e!14637 (Cons!355 (x!8933 (left!708 (left!708 xs!533))) Nil!356))))

(declare-fun b!28623 () Bool)

(assert (=> b!28623 (= e!14637 (++!41 (toList!116 (left!708 (left!708 (left!708 xs!533)))) (toList!116 (right!711 (left!708 (left!708 xs!533))))))))

(declare-fun b!28620 () Bool)

(declare-fun e!14636 () List!361)

(assert (=> b!28620 (= e!14636 Nil!356)))

(declare-fun d!15119 () Bool)

(declare-fun lt!5056 () List!361)

(assert (=> d!15119 (= (size!271 lt!5056) (size!272 (left!708 (left!708 xs!533))))))

(assert (=> d!15119 (= lt!5056 e!14636)))

(declare-fun c!6310 () Bool)

(assert (=> d!15119 (= c!6310 (is-Empty!74 (left!708 (left!708 xs!533))))))

(assert (=> d!15119 (= (toList!116 (left!708 (left!708 xs!533))) lt!5056)))

(declare-fun b!28621 () Bool)

(assert (=> b!28621 (= e!14636 e!14637)))

(declare-fun c!6309 () Bool)

(assert (=> b!28621 (= c!6309 (is-Single!63 (left!708 (left!708 xs!533))))))

(assert (= (and b!28621 c!6309) b!28622))

(assert (= (and b!28621 (not c!6309)) b!28623))

(assert (= (and d!15119 c!6310) b!28620))

(assert (= (and d!15119 (not c!6310)) b!28621))

(declare-fun m!30425 () Bool)

(assert (=> b!28623 m!30425))

(declare-fun m!30427 () Bool)

(assert (=> b!28623 m!30427))

(assert (=> b!28623 m!30425))

(assert (=> b!28623 m!30427))

(declare-fun m!30429 () Bool)

(assert (=> b!28623 m!30429))

(declare-fun m!30431 () Bool)

(assert (=> d!15119 m!30431))

(declare-fun m!30433 () Bool)

(assert (=> d!15119 m!30433))

(assert (=> b!28086 d!15119))

(declare-fun b!28626 () Bool)

(declare-fun e!14639 () List!361)

(assert (=> b!28626 (= e!14639 (Cons!355 (x!8933 (right!711 (left!708 xs!533))) Nil!356))))

(declare-fun b!28627 () Bool)

(assert (=> b!28627 (= e!14639 (++!41 (toList!116 (left!708 (right!711 (left!708 xs!533)))) (toList!116 (right!711 (right!711 (left!708 xs!533))))))))

(declare-fun b!28624 () Bool)

(declare-fun e!14638 () List!361)

(assert (=> b!28624 (= e!14638 Nil!356)))

(declare-fun d!15121 () Bool)

(declare-fun lt!5057 () List!361)

(assert (=> d!15121 (= (size!271 lt!5057) (size!272 (right!711 (left!708 xs!533))))))

(assert (=> d!15121 (= lt!5057 e!14638)))

(declare-fun c!6312 () Bool)

(assert (=> d!15121 (= c!6312 (is-Empty!74 (right!711 (left!708 xs!533))))))

(assert (=> d!15121 (= (toList!116 (right!711 (left!708 xs!533))) lt!5057)))

(declare-fun b!28625 () Bool)

(assert (=> b!28625 (= e!14638 e!14639)))

(declare-fun c!6311 () Bool)

(assert (=> b!28625 (= c!6311 (is-Single!63 (right!711 (left!708 xs!533))))))

(assert (= (and b!28625 c!6311) b!28626))

(assert (= (and b!28625 (not c!6311)) b!28627))

(assert (= (and d!15121 c!6312) b!28624))

(assert (= (and d!15121 (not c!6312)) b!28625))

(declare-fun m!30435 () Bool)

(assert (=> b!28627 m!30435))

(declare-fun m!30437 () Bool)

(assert (=> b!28627 m!30437))

(assert (=> b!28627 m!30435))

(assert (=> b!28627 m!30437))

(declare-fun m!30439 () Bool)

(assert (=> b!28627 m!30439))

(declare-fun m!30441 () Bool)

(assert (=> d!15121 m!30441))

(declare-fun m!30443 () Bool)

(assert (=> d!15121 m!30443))

(assert (=> b!28086 d!15121))

(declare-fun b!28631 () Bool)

(declare-fun e!14641 () Bool)

(declare-fun lt!5058 () List!361)

(assert (=> b!28631 (= e!14641 (or (not (= (toList!116 (right!711 (right!711 (right!711 xs!533)))) Nil!356)) (= lt!5058 (toList!116 (left!708 (right!711 (right!711 xs!533)))))))))

(declare-fun b!28628 () Bool)

(declare-fun e!14640 () List!361)

(assert (=> b!28628 (= e!14640 (toList!116 (right!711 (right!711 (right!711 xs!533)))))))

(declare-fun d!15123 () Bool)

(assert (=> d!15123 e!14641))

(declare-fun res!13096 () Bool)

(assert (=> d!15123 (=> (not res!13096) (not e!14641))))

(assert (=> d!15123 (= res!13096 (= (content!71 lt!5058) (union (content!71 (toList!116 (left!708 (right!711 (right!711 xs!533))))) (content!71 (toList!116 (right!711 (right!711 (right!711 xs!533))))))))))

(assert (=> d!15123 (= lt!5058 e!14640)))

(declare-fun c!6313 () Bool)

(assert (=> d!15123 (= c!6313 (is-Nil!356 (toList!116 (left!708 (right!711 (right!711 xs!533))))))))

(assert (=> d!15123 (= (++!41 (toList!116 (left!708 (right!711 (right!711 xs!533)))) (toList!116 (right!711 (right!711 (right!711 xs!533))))) lt!5058)))

(declare-fun b!28629 () Bool)

(assert (=> b!28629 (= e!14640 (Cons!355 (h!272 (toList!116 (left!708 (right!711 (right!711 xs!533))))) (++!41 (t!4375 (toList!116 (left!708 (right!711 (right!711 xs!533))))) (toList!116 (right!711 (right!711 (right!711 xs!533)))))))))

(declare-fun b!28630 () Bool)

(declare-fun res!13095 () Bool)

(assert (=> b!28630 (=> (not res!13095) (not e!14641))))

(assert (=> b!28630 (= res!13095 (= (size!271 lt!5058) (+ (size!271 (toList!116 (left!708 (right!711 (right!711 xs!533))))) (size!271 (toList!116 (right!711 (right!711 (right!711 xs!533))))))))))

(assert (= (and d!15123 c!6313) b!28628))

(assert (= (and d!15123 (not c!6313)) b!28629))

(assert (= (and d!15123 res!13096) b!28630))

(assert (= (and b!28630 res!13095) b!28631))

(declare-fun m!30445 () Bool)

(assert (=> d!15123 m!30445))

(assert (=> d!15123 m!29633))

(declare-fun m!30447 () Bool)

(assert (=> d!15123 m!30447))

(assert (=> d!15123 m!29635))

(declare-fun m!30449 () Bool)

(assert (=> d!15123 m!30449))

(assert (=> b!28629 m!29635))

(declare-fun m!30451 () Bool)

(assert (=> b!28629 m!30451))

(declare-fun m!30453 () Bool)

(assert (=> b!28630 m!30453))

(assert (=> b!28630 m!29633))

(declare-fun m!30455 () Bool)

(assert (=> b!28630 m!30455))

(assert (=> b!28630 m!29635))

(declare-fun m!30457 () Bool)

(assert (=> b!28630 m!30457))

(assert (=> b!28146 d!15123))

(declare-fun b!28634 () Bool)

(declare-fun e!14643 () List!361)

(assert (=> b!28634 (= e!14643 (Cons!355 (x!8933 (left!708 (right!711 (right!711 xs!533)))) Nil!356))))

(declare-fun b!28635 () Bool)

(assert (=> b!28635 (= e!14643 (++!41 (toList!116 (left!708 (left!708 (right!711 (right!711 xs!533))))) (toList!116 (right!711 (left!708 (right!711 (right!711 xs!533)))))))))

(declare-fun b!28632 () Bool)

(declare-fun e!14642 () List!361)

(assert (=> b!28632 (= e!14642 Nil!356)))

(declare-fun d!15125 () Bool)

(declare-fun lt!5059 () List!361)

(assert (=> d!15125 (= (size!271 lt!5059) (size!272 (left!708 (right!711 (right!711 xs!533)))))))

(assert (=> d!15125 (= lt!5059 e!14642)))

(declare-fun c!6315 () Bool)

(assert (=> d!15125 (= c!6315 (is-Empty!74 (left!708 (right!711 (right!711 xs!533)))))))

(assert (=> d!15125 (= (toList!116 (left!708 (right!711 (right!711 xs!533)))) lt!5059)))

(declare-fun b!28633 () Bool)

(assert (=> b!28633 (= e!14642 e!14643)))

(declare-fun c!6314 () Bool)

(assert (=> b!28633 (= c!6314 (is-Single!63 (left!708 (right!711 (right!711 xs!533)))))))

(assert (= (and b!28633 c!6314) b!28634))

(assert (= (and b!28633 (not c!6314)) b!28635))

(assert (= (and d!15125 c!6315) b!28632))

(assert (= (and d!15125 (not c!6315)) b!28633))

(declare-fun m!30459 () Bool)

(assert (=> b!28635 m!30459))

(declare-fun m!30461 () Bool)

(assert (=> b!28635 m!30461))

(assert (=> b!28635 m!30459))

(assert (=> b!28635 m!30461))

(declare-fun m!30463 () Bool)

(assert (=> b!28635 m!30463))

(declare-fun m!30465 () Bool)

(assert (=> d!15125 m!30465))

(declare-fun m!30467 () Bool)

(assert (=> d!15125 m!30467))

(assert (=> b!28146 d!15125))

(declare-fun b!28638 () Bool)

(declare-fun e!14645 () List!361)

(assert (=> b!28638 (= e!14645 (Cons!355 (x!8933 (right!711 (right!711 (right!711 xs!533)))) Nil!356))))

(declare-fun b!28639 () Bool)

(assert (=> b!28639 (= e!14645 (++!41 (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533))))) (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533)))))))))

(declare-fun b!28636 () Bool)

(declare-fun e!14644 () List!361)

(assert (=> b!28636 (= e!14644 Nil!356)))

(declare-fun d!15127 () Bool)

(declare-fun lt!5060 () List!361)

(assert (=> d!15127 (= (size!271 lt!5060) (size!272 (right!711 (right!711 (right!711 xs!533)))))))

(assert (=> d!15127 (= lt!5060 e!14644)))

(declare-fun c!6317 () Bool)

(assert (=> d!15127 (= c!6317 (is-Empty!74 (right!711 (right!711 (right!711 xs!533)))))))

(assert (=> d!15127 (= (toList!116 (right!711 (right!711 (right!711 xs!533)))) lt!5060)))

(declare-fun b!28637 () Bool)

(assert (=> b!28637 (= e!14644 e!14645)))

(declare-fun c!6316 () Bool)

(assert (=> b!28637 (= c!6316 (is-Single!63 (right!711 (right!711 (right!711 xs!533)))))))

(assert (= (and b!28637 c!6316) b!28638))

(assert (= (and b!28637 (not c!6316)) b!28639))

(assert (= (and d!15127 c!6317) b!28636))

(assert (= (and d!15127 (not c!6317)) b!28637))

(assert (=> b!28639 m!29653))

(assert (=> b!28639 m!29655))

(assert (=> b!28639 m!29653))

(assert (=> b!28639 m!29655))

(assert (=> b!28639 m!30255))

(declare-fun m!30469 () Bool)

(assert (=> d!15127 m!30469))

(declare-fun m!30471 () Bool)

(assert (=> d!15127 m!30471))

(assert (=> b!28146 d!15127))

(declare-fun b!28640 () Bool)

(declare-fun e!14646 () Bool)

(assert (=> b!28640 (= e!14646 (= (++!41 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 ys!77))) (toList!116 (right!711 ys!77))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (++!41 (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))))))))

(declare-fun lt!5061 () Bool)

(assert (=> b!28640 (= lt!5061 (appendAssoc!9 (t!4375 (toList!116 (right!711 (right!711 xs!533)))) (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))))))

(declare-fun d!15129 () Bool)

(assert (=> d!15129 e!14646))

(declare-fun c!6318 () Bool)

(assert (=> d!15129 (= c!6318 (is-Cons!355 (toList!116 (right!711 (right!711 xs!533)))))))

(assert (=> d!15129 (= (appendAssoc!9 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))) true)))

(declare-fun b!28641 () Bool)

(assert (=> b!28641 (= e!14646 (= (++!41 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 ys!77))) (toList!116 (right!711 ys!77))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (++!41 (toList!116 (left!708 ys!77)) (toList!116 (right!711 ys!77))))))))

(assert (= (and d!15129 c!6318) b!28640))

(assert (= (and d!15129 (not c!6318)) b!28641))

(assert (=> b!28640 m!29375))

(assert (=> b!28640 m!29377))

(declare-fun m!30473 () Bool)

(assert (=> b!28640 m!30473))

(assert (=> b!28640 m!29399))

(assert (=> b!28640 m!29375))

(declare-fun m!30475 () Bool)

(assert (=> b!28640 m!30475))

(assert (=> b!28640 m!29399))

(assert (=> b!28640 m!29531))

(declare-fun m!30477 () Bool)

(assert (=> b!28640 m!30477))

(assert (=> b!28640 m!29375))

(assert (=> b!28640 m!29377))

(assert (=> b!28640 m!29531))

(assert (=> b!28640 m!30475))

(assert (=> b!28640 m!29377))

(declare-fun m!30479 () Bool)

(assert (=> b!28640 m!30479))

(assert (=> b!28641 m!29399))

(assert (=> b!28641 m!29375))

(assert (=> b!28641 m!30475))

(assert (=> b!28641 m!30475))

(assert (=> b!28641 m!29377))

(assert (=> b!28641 m!30479))

(assert (=> b!28641 m!29375))

(assert (=> b!28641 m!29377))

(assert (=> b!28641 m!29531))

(assert (=> b!28641 m!29399))

(assert (=> b!28641 m!29531))

(assert (=> b!28641 m!30477))

(assert (=> b!28153 d!15129))

(assert (=> b!28153 d!14839))

(assert (=> b!28153 d!14809))

(assert (=> b!28153 d!14811))

(assert (=> b!28100 d!15027))

(assert (=> b!28100 d!14799))

(assert (=> b!28100 d!14801))

(declare-fun b!28645 () Bool)

(declare-fun e!14648 () Bool)

(declare-fun lt!5062 () List!361)

(assert (=> b!28645 (= e!14648 (or (not (= (toList!116 (right!711 (right!711 (left!708 ys!77)))) Nil!356)) (= lt!5062 (toList!116 (left!708 (right!711 (left!708 ys!77)))))))))

(declare-fun b!28642 () Bool)

(declare-fun e!14647 () List!361)

(assert (=> b!28642 (= e!14647 (toList!116 (right!711 (right!711 (left!708 ys!77)))))))

(declare-fun d!15131 () Bool)

(assert (=> d!15131 e!14648))

(declare-fun res!13098 () Bool)

(assert (=> d!15131 (=> (not res!13098) (not e!14648))))

(assert (=> d!15131 (= res!13098 (= (content!71 lt!5062) (union (content!71 (toList!116 (left!708 (right!711 (left!708 ys!77))))) (content!71 (toList!116 (right!711 (right!711 (left!708 ys!77))))))))))

(assert (=> d!15131 (= lt!5062 e!14647)))

(declare-fun c!6319 () Bool)

(assert (=> d!15131 (= c!6319 (is-Nil!356 (toList!116 (left!708 (right!711 (left!708 ys!77))))))))

(assert (=> d!15131 (= (++!41 (toList!116 (left!708 (right!711 (left!708 ys!77)))) (toList!116 (right!711 (right!711 (left!708 ys!77))))) lt!5062)))

(declare-fun b!28643 () Bool)

(assert (=> b!28643 (= e!14647 (Cons!355 (h!272 (toList!116 (left!708 (right!711 (left!708 ys!77))))) (++!41 (t!4375 (toList!116 (left!708 (right!711 (left!708 ys!77))))) (toList!116 (right!711 (right!711 (left!708 ys!77)))))))))

(declare-fun b!28644 () Bool)

(declare-fun res!13097 () Bool)

(assert (=> b!28644 (=> (not res!13097) (not e!14648))))

(assert (=> b!28644 (= res!13097 (= (size!271 lt!5062) (+ (size!271 (toList!116 (left!708 (right!711 (left!708 ys!77))))) (size!271 (toList!116 (right!711 (right!711 (left!708 ys!77))))))))))

(assert (= (and d!15131 c!6319) b!28642))

(assert (= (and d!15131 (not c!6319)) b!28643))

(assert (= (and d!15131 res!13098) b!28644))

(assert (= (and b!28644 res!13097) b!28645))

(declare-fun m!30481 () Bool)

(assert (=> d!15131 m!30481))

(assert (=> d!15131 m!29701))

(declare-fun m!30483 () Bool)

(assert (=> d!15131 m!30483))

(assert (=> d!15131 m!29703))

(declare-fun m!30485 () Bool)

(assert (=> d!15131 m!30485))

(assert (=> b!28643 m!29703))

(declare-fun m!30487 () Bool)

(assert (=> b!28643 m!30487))

(declare-fun m!30489 () Bool)

(assert (=> b!28644 m!30489))

(assert (=> b!28644 m!29701))

(declare-fun m!30491 () Bool)

(assert (=> b!28644 m!30491))

(assert (=> b!28644 m!29703))

(declare-fun m!30493 () Bool)

(assert (=> b!28644 m!30493))

(assert (=> b!28183 d!15131))

(declare-fun b!28648 () Bool)

(declare-fun e!14650 () List!361)

(assert (=> b!28648 (= e!14650 (Cons!355 (x!8933 (left!708 (right!711 (left!708 ys!77)))) Nil!356))))

(declare-fun b!28649 () Bool)

(assert (=> b!28649 (= e!14650 (++!41 (toList!116 (left!708 (left!708 (right!711 (left!708 ys!77))))) (toList!116 (right!711 (left!708 (right!711 (left!708 ys!77)))))))))

(declare-fun b!28646 () Bool)

(declare-fun e!14649 () List!361)

(assert (=> b!28646 (= e!14649 Nil!356)))

(declare-fun d!15133 () Bool)

(declare-fun lt!5063 () List!361)

(assert (=> d!15133 (= (size!271 lt!5063) (size!272 (left!708 (right!711 (left!708 ys!77)))))))

(assert (=> d!15133 (= lt!5063 e!14649)))

(declare-fun c!6321 () Bool)

(assert (=> d!15133 (= c!6321 (is-Empty!74 (left!708 (right!711 (left!708 ys!77)))))))

(assert (=> d!15133 (= (toList!116 (left!708 (right!711 (left!708 ys!77)))) lt!5063)))

(declare-fun b!28647 () Bool)

(assert (=> b!28647 (= e!14649 e!14650)))

(declare-fun c!6320 () Bool)

(assert (=> b!28647 (= c!6320 (is-Single!63 (left!708 (right!711 (left!708 ys!77)))))))

(assert (= (and b!28647 c!6320) b!28648))

(assert (= (and b!28647 (not c!6320)) b!28649))

(assert (= (and d!15133 c!6321) b!28646))

(assert (= (and d!15133 (not c!6321)) b!28647))

(declare-fun m!30495 () Bool)

(assert (=> b!28649 m!30495))

(declare-fun m!30497 () Bool)

(assert (=> b!28649 m!30497))

(assert (=> b!28649 m!30495))

(assert (=> b!28649 m!30497))

(declare-fun m!30499 () Bool)

(assert (=> b!28649 m!30499))

(declare-fun m!30501 () Bool)

(assert (=> d!15133 m!30501))

(declare-fun m!30503 () Bool)

(assert (=> d!15133 m!30503))

(assert (=> b!28183 d!15133))

(declare-fun b!28652 () Bool)

(declare-fun e!14652 () List!361)

(assert (=> b!28652 (= e!14652 (Cons!355 (x!8933 (right!711 (right!711 (left!708 ys!77)))) Nil!356))))

(declare-fun b!28653 () Bool)

(assert (=> b!28653 (= e!14652 (++!41 (toList!116 (left!708 (right!711 (right!711 (left!708 ys!77))))) (toList!116 (right!711 (right!711 (right!711 (left!708 ys!77)))))))))

(declare-fun b!28650 () Bool)

(declare-fun e!14651 () List!361)

(assert (=> b!28650 (= e!14651 Nil!356)))

(declare-fun d!15135 () Bool)

(declare-fun lt!5064 () List!361)

(assert (=> d!15135 (= (size!271 lt!5064) (size!272 (right!711 (right!711 (left!708 ys!77)))))))

(assert (=> d!15135 (= lt!5064 e!14651)))

(declare-fun c!6323 () Bool)

(assert (=> d!15135 (= c!6323 (is-Empty!74 (right!711 (right!711 (left!708 ys!77)))))))

(assert (=> d!15135 (= (toList!116 (right!711 (right!711 (left!708 ys!77)))) lt!5064)))

(declare-fun b!28651 () Bool)

(assert (=> b!28651 (= e!14651 e!14652)))

(declare-fun c!6322 () Bool)

(assert (=> b!28651 (= c!6322 (is-Single!63 (right!711 (right!711 (left!708 ys!77)))))))

(assert (= (and b!28651 c!6322) b!28652))

(assert (= (and b!28651 (not c!6322)) b!28653))

(assert (= (and d!15135 c!6323) b!28650))

(assert (= (and d!15135 (not c!6323)) b!28651))

(declare-fun m!30505 () Bool)

(assert (=> b!28653 m!30505))

(declare-fun m!30507 () Bool)

(assert (=> b!28653 m!30507))

(assert (=> b!28653 m!30505))

(assert (=> b!28653 m!30507))

(declare-fun m!30509 () Bool)

(assert (=> b!28653 m!30509))

(declare-fun m!30511 () Bool)

(assert (=> d!15135 m!30511))

(declare-fun m!30513 () Bool)

(assert (=> d!15135 m!30513))

(assert (=> b!28183 d!15135))

(declare-fun d!15137 () Bool)

(declare-fun lt!5065 () Int)

(assert (=> d!15137 (>= lt!5065 0)))

(declare-fun e!14653 () Int)

(assert (=> d!15137 (= lt!5065 e!14653)))

(declare-fun c!6324 () Bool)

(assert (=> d!15137 (= c!6324 (is-Nil!356 lt!4871))))

(assert (=> d!15137 (= (size!271 lt!4871) lt!5065)))

(declare-fun b!28654 () Bool)

(assert (=> b!28654 (= e!14653 0)))

(declare-fun b!28655 () Bool)

(assert (=> b!28655 (= e!14653 (+ 1 (size!271 (t!4375 lt!4871))))))

(assert (= (and d!15137 c!6324) b!28654))

(assert (= (and d!15137 (not c!6324)) b!28655))

(declare-fun m!30515 () Bool)

(assert (=> b!28655 m!30515))

(assert (=> d!14839 d!15137))

(declare-fun b!28656 () Bool)

(declare-fun e!14654 () Int)

(assert (=> b!28656 (= e!14654 0)))

(declare-fun b!28659 () Bool)

(declare-fun e!14655 () Int)

(assert (=> b!28659 (= e!14655 (+ (size!272 (left!708 (right!711 (right!711 xs!533)))) (size!272 (right!711 (right!711 (right!711 xs!533))))))))

(declare-fun b!28658 () Bool)

(assert (=> b!28658 (= e!14655 1)))

(declare-fun d!15139 () Bool)

(declare-fun lt!5066 () Int)

(assert (=> d!15139 (>= lt!5066 0)))

(assert (=> d!15139 (= lt!5066 e!14654)))

(declare-fun c!6325 () Bool)

(assert (=> d!15139 (= c!6325 (is-Empty!74 (right!711 (right!711 xs!533))))))

(assert (=> d!15139 (= (size!272 (right!711 (right!711 xs!533))) lt!5066)))

(declare-fun b!28657 () Bool)

(assert (=> b!28657 (= e!14654 e!14655)))

(declare-fun c!6326 () Bool)

(assert (=> b!28657 (= c!6326 (is-Single!63 (right!711 (right!711 xs!533))))))

(assert (= (and b!28657 c!6326) b!28658))

(assert (= (and b!28657 (not c!6326)) b!28659))

(assert (= (and d!15139 c!6325) b!28656))

(assert (= (and d!15139 (not c!6325)) b!28657))

(assert (=> b!28659 m!30467))

(assert (=> b!28659 m!30471))

(assert (=> d!14839 d!15139))

(declare-fun b!28662 () Bool)

(declare-fun res!13099 () Bool)

(declare-fun e!14657 () Bool)

(assert (=> b!28662 (=> (not res!13099) (not e!14657))))

(assert (=> b!28662 (= res!13099 (concInv!58 (left!708 lt!4829)))))

(declare-fun b!28660 () Bool)

(declare-fun e!14656 () Bool)

(assert (=> b!28660 (= e!14656 e!14657)))

(declare-fun res!13102 () Bool)

(assert (=> b!28660 (=> (not res!13102) (not e!14657))))

(assert (=> b!28660 (= res!13102 (not (isEmpty!320 (left!708 lt!4829))))))

(declare-fun b!28663 () Bool)

(assert (=> b!28663 (= e!14657 (concInv!58 (right!711 lt!4829)))))

(declare-fun d!15141 () Bool)

(declare-fun res!13100 () Bool)

(assert (=> d!15141 (=> res!13100 e!14656)))

(assert (=> d!15141 (= res!13100 (not (is-CC!63 lt!4829)))))

(assert (=> d!15141 (= (concInv!58 lt!4829) e!14656)))

(declare-fun b!28661 () Bool)

(declare-fun res!13101 () Bool)

(assert (=> b!28661 (=> (not res!13101) (not e!14657))))

(assert (=> b!28661 (= res!13101 (not (isEmpty!320 (right!711 lt!4829))))))

(assert (= (and d!15141 (not res!13100)) b!28660))

(assert (= (and b!28660 res!13102) b!28661))

(assert (= (and b!28661 res!13101) b!28662))

(assert (= (and b!28662 res!13099) b!28663))

(declare-fun m!30517 () Bool)

(assert (=> b!28662 m!30517))

(declare-fun m!30519 () Bool)

(assert (=> b!28660 m!30519))

(declare-fun m!30521 () Bool)

(assert (=> b!28663 m!30521))

(declare-fun m!30523 () Bool)

(assert (=> b!28661 m!30523))

(assert (=> b!28044 d!15141))

(declare-fun d!15143 () Bool)

(assert (=> d!15143 (= (isEmpty!320 (left!708 (left!708 res!5536))) (= (left!708 (left!708 res!5536)) Empty!74))))

(assert (=> b!28117 d!15143))

(assert (=> b!28053 d!14953))

(assert (=> b!28053 d!14955))

(assert (=> b!28053 d!14957))

(declare-fun d!15145 () Bool)

(assert (=> d!15145 (= (isEmpty!320 (right!711 (left!708 ys!77))) (= (right!711 (left!708 ys!77)) Empty!74))))

(assert (=> b!28134 d!15145))

(declare-fun b!28665 () Bool)

(declare-fun e!14658 () Int)

(declare-fun lt!5067 () Int)

(declare-fun lt!5069 () Int)

(assert (=> b!28665 (= e!14658 (+ 1 (ite (>= lt!5067 lt!5069) lt!5067 lt!5069)))))

(assert (=> b!28665 (= lt!5069 (level!52 (right!711 (right!711 (right!711 (right!711 xs!533))))))))

(assert (=> b!28665 (= lt!5067 (level!52 (left!708 (right!711 (right!711 (right!711 xs!533))))))))

(declare-fun d!15147 () Bool)

(declare-fun lt!5068 () Int)

(assert (=> d!15147 (>= lt!5068 0)))

(assert (=> d!15147 (= lt!5068 e!14658)))

(declare-fun c!6327 () Bool)

(assert (=> d!15147 (= c!6327 (or (is-Empty!74 (right!711 (right!711 (right!711 xs!533)))) (is-Single!63 (right!711 (right!711 (right!711 xs!533))))))))

(assert (=> d!15147 (= (level!52 (right!711 (right!711 (right!711 xs!533)))) lt!5068)))

(declare-fun b!28664 () Bool)

(assert (=> b!28664 (= e!14658 0)))

(assert (= (and d!15147 c!6327) b!28664))

(assert (= (and d!15147 (not c!6327)) b!28665))

(assert (=> b!28665 m!29837))

(assert (=> b!28665 m!29835))

(assert (=> b!28041 d!15147))

(declare-fun b!28667 () Bool)

(declare-fun e!14659 () Int)

(declare-fun lt!5070 () Int)

(declare-fun lt!5072 () Int)

(assert (=> b!28667 (= e!14659 (+ 1 (ite (>= lt!5070 lt!5072) lt!5070 lt!5072)))))

(assert (=> b!28667 (= lt!5072 (level!52 (right!711 (left!708 (right!711 (right!711 xs!533))))))))

(assert (=> b!28667 (= lt!5070 (level!52 (left!708 (left!708 (right!711 (right!711 xs!533))))))))

(declare-fun d!15149 () Bool)

(declare-fun lt!5071 () Int)

(assert (=> d!15149 (>= lt!5071 0)))

(assert (=> d!15149 (= lt!5071 e!14659)))

(declare-fun c!6328 () Bool)

(assert (=> d!15149 (= c!6328 (or (is-Empty!74 (left!708 (right!711 (right!711 xs!533)))) (is-Single!63 (left!708 (right!711 (right!711 xs!533))))))))

(assert (=> d!15149 (= (level!52 (left!708 (right!711 (right!711 xs!533)))) lt!5071)))

(declare-fun b!28666 () Bool)

(assert (=> b!28666 (= e!14659 0)))

(assert (= (and d!15149 c!6328) b!28666))

(assert (= (and d!15149 (not c!6328)) b!28667))

(declare-fun m!30525 () Bool)

(assert (=> b!28667 m!30525))

(declare-fun m!30527 () Bool)

(assert (=> b!28667 m!30527))

(assert (=> b!28041 d!15149))

(declare-fun b!28670 () Bool)

(declare-fun res!13103 () Bool)

(declare-fun e!14661 () Bool)

(assert (=> b!28670 (=> (not res!13103) (not e!14661))))

(assert (=> b!28670 (= res!13103 (concInv!58 (left!708 (left!708 lt!4807))))))

(declare-fun b!28668 () Bool)

(declare-fun e!14660 () Bool)

(assert (=> b!28668 (= e!14660 e!14661)))

(declare-fun res!13106 () Bool)

(assert (=> b!28668 (=> (not res!13106) (not e!14661))))

(assert (=> b!28668 (= res!13106 (not (isEmpty!320 (left!708 (left!708 lt!4807)))))))

(declare-fun b!28671 () Bool)

(assert (=> b!28671 (= e!14661 (concInv!58 (right!711 (left!708 lt!4807))))))

(declare-fun d!15151 () Bool)

(declare-fun res!13104 () Bool)

(assert (=> d!15151 (=> res!13104 e!14660)))

(assert (=> d!15151 (= res!13104 (not (is-CC!63 (left!708 lt!4807))))))

(assert (=> d!15151 (= (concInv!58 (left!708 lt!4807)) e!14660)))

(declare-fun b!28669 () Bool)

(declare-fun res!13105 () Bool)

(assert (=> b!28669 (=> (not res!13105) (not e!14661))))

(assert (=> b!28669 (= res!13105 (not (isEmpty!320 (right!711 (left!708 lt!4807)))))))

(assert (= (and d!15151 (not res!13104)) b!28668))

(assert (= (and b!28668 res!13106) b!28669))

(assert (= (and b!28669 res!13105) b!28670))

(assert (= (and b!28670 res!13103) b!28671))

(declare-fun m!30529 () Bool)

(assert (=> b!28670 m!30529))

(declare-fun m!30531 () Bool)

(assert (=> b!28668 m!30531))

(declare-fun m!30533 () Bool)

(assert (=> b!28671 m!30533))

(declare-fun m!30535 () Bool)

(assert (=> b!28669 m!30535))

(assert (=> b!28244 d!15151))

(declare-fun d!15153 () Bool)

(declare-fun lt!5073 () Int)

(assert (=> d!15153 (>= lt!5073 0)))

(declare-fun e!14662 () Int)

(assert (=> d!15153 (= lt!5073 e!14662)))

(declare-fun c!6329 () Bool)

(assert (=> d!15153 (= c!6329 (is-Nil!356 lt!4885))))

(assert (=> d!15153 (= (size!271 lt!4885) lt!5073)))

(declare-fun b!28672 () Bool)

(assert (=> b!28672 (= e!14662 0)))

(declare-fun b!28673 () Bool)

(assert (=> b!28673 (= e!14662 (+ 1 (size!271 (t!4375 lt!4885))))))

(assert (= (and d!15153 c!6329) b!28672))

(assert (= (and d!15153 (not c!6329)) b!28673))

(declare-fun m!30537 () Bool)

(assert (=> b!28673 m!30537))

(assert (=> d!14861 d!15153))

(declare-fun b!28674 () Bool)

(declare-fun e!14663 () Int)

(assert (=> b!28674 (= e!14663 0)))

(declare-fun b!28677 () Bool)

(declare-fun e!14664 () Int)

(assert (=> b!28677 (= e!14664 (+ (size!272 (left!708 (right!711 (left!708 ys!77)))) (size!272 (right!711 (right!711 (left!708 ys!77))))))))

(declare-fun b!28676 () Bool)

(assert (=> b!28676 (= e!14664 1)))

(declare-fun d!15155 () Bool)

(declare-fun lt!5074 () Int)

(assert (=> d!15155 (>= lt!5074 0)))

(assert (=> d!15155 (= lt!5074 e!14663)))

(declare-fun c!6330 () Bool)

(assert (=> d!15155 (= c!6330 (is-Empty!74 (right!711 (left!708 ys!77))))))

(assert (=> d!15155 (= (size!272 (right!711 (left!708 ys!77))) lt!5074)))

(declare-fun b!28675 () Bool)

(assert (=> b!28675 (= e!14663 e!14664)))

(declare-fun c!6331 () Bool)

(assert (=> b!28675 (= c!6331 (is-Single!63 (right!711 (left!708 ys!77))))))

(assert (= (and b!28675 c!6331) b!28676))

(assert (= (and b!28675 (not c!6331)) b!28677))

(assert (= (and d!15155 c!6330) b!28674))

(assert (= (and d!15155 (not c!6330)) b!28675))

(assert (=> b!28677 m!30503))

(assert (=> b!28677 m!30513))

(assert (=> d!14861 d!15155))

(declare-fun b!28681 () Bool)

(declare-fun e!14666 () Bool)

(declare-fun lt!5075 () List!361)

(assert (=> b!28681 (= e!14666 (or (not (= (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)) Nil!356)) (= lt!5075 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (left!708 (right!711 xs!533)))))))))

(declare-fun b!28678 () Bool)

(declare-fun e!14665 () List!361)

(assert (=> b!28678 (= e!14665 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)))))

(declare-fun d!15157 () Bool)

(assert (=> d!15157 e!14666))

(declare-fun res!13108 () Bool)

(assert (=> d!15157 (=> (not res!13108) (not e!14666))))

(assert (=> d!15157 (= res!13108 (= (content!71 lt!5075) (union (content!71 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (left!708 (right!711 xs!533))))) (content!71 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))))))))

(assert (=> d!15157 (= lt!5075 e!14665)))

(declare-fun c!6332 () Bool)

(assert (=> d!15157 (= c!6332 (is-Nil!356 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (left!708 (right!711 xs!533))))))))

(assert (=> d!15157 (= (++!41 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (left!708 (right!711 xs!533)))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))) lt!5075)))

(declare-fun b!28679 () Bool)

(assert (=> b!28679 (= e!14665 (Cons!355 (h!272 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (left!708 (right!711 xs!533))))) (++!41 (t!4375 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (left!708 (right!711 xs!533))))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)))))))

(declare-fun b!28680 () Bool)

(declare-fun res!13107 () Bool)

(assert (=> b!28680 (=> (not res!13107) (not e!14666))))

(assert (=> b!28680 (= res!13107 (= (size!271 lt!5075) (+ (size!271 (++!41 (toList!116 (left!708 xs!533)) (toList!116 (left!708 (right!711 xs!533))))) (size!271 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))))))))

(assert (= (and d!15157 c!6332) b!28678))

(assert (= (and d!15157 (not c!6332)) b!28679))

(assert (= (and d!15157 res!13108) b!28680))

(assert (= (and b!28680 res!13107) b!28681))

(declare-fun m!30539 () Bool)

(assert (=> d!15157 m!30539))

(assert (=> d!15157 m!29775))

(declare-fun m!30541 () Bool)

(assert (=> d!15157 m!30541))

(assert (=> d!15157 m!29403))

(assert (=> d!15157 m!30337))

(assert (=> b!28679 m!29403))

(declare-fun m!30543 () Bool)

(assert (=> b!28679 m!30543))

(declare-fun m!30545 () Bool)

(assert (=> b!28680 m!30545))

(assert (=> b!28680 m!29775))

(declare-fun m!30547 () Bool)

(assert (=> b!28680 m!30547))

(assert (=> b!28680 m!29403))

(assert (=> b!28680 m!30343))

(assert (=> b!28221 d!15157))

(declare-fun b!28685 () Bool)

(declare-fun e!14668 () Bool)

(declare-fun lt!5076 () List!361)

(assert (=> b!28685 (= e!14668 (or (not (= (toList!116 (left!708 (right!711 xs!533))) Nil!356)) (= lt!5076 (toList!116 (left!708 xs!533)))))))

(declare-fun b!28682 () Bool)

(declare-fun e!14667 () List!361)

(assert (=> b!28682 (= e!14667 (toList!116 (left!708 (right!711 xs!533))))))

(declare-fun d!15159 () Bool)

(assert (=> d!15159 e!14668))

(declare-fun res!13110 () Bool)

(assert (=> d!15159 (=> (not res!13110) (not e!14668))))

(assert (=> d!15159 (= res!13110 (= (content!71 lt!5076) (union (content!71 (toList!116 (left!708 xs!533))) (content!71 (toList!116 (left!708 (right!711 xs!533)))))))))

(assert (=> d!15159 (= lt!5076 e!14667)))

(declare-fun c!6333 () Bool)

(assert (=> d!15159 (= c!6333 (is-Nil!356 (toList!116 (left!708 xs!533))))))

(assert (=> d!15159 (= (++!41 (toList!116 (left!708 xs!533)) (toList!116 (left!708 (right!711 xs!533)))) lt!5076)))

(declare-fun b!28683 () Bool)

(assert (=> b!28683 (= e!14667 (Cons!355 (h!272 (toList!116 (left!708 xs!533))) (++!41 (t!4375 (toList!116 (left!708 xs!533))) (toList!116 (left!708 (right!711 xs!533))))))))

(declare-fun b!28684 () Bool)

(declare-fun res!13109 () Bool)

(assert (=> b!28684 (=> (not res!13109) (not e!14668))))

(assert (=> b!28684 (= res!13109 (= (size!271 lt!5076) (+ (size!271 (toList!116 (left!708 xs!533))) (size!271 (toList!116 (left!708 (right!711 xs!533)))))))))

(assert (= (and d!15159 c!6333) b!28682))

(assert (= (and d!15159 (not c!6333)) b!28683))

(assert (= (and d!15159 res!13110) b!28684))

(assert (= (and b!28684 res!13109) b!28685))

(declare-fun m!30549 () Bool)

(assert (=> d!15159 m!30549))

(assert (=> d!15159 m!29387))

(assert (=> d!15159 m!30147))

(assert (=> d!15159 m!29397))

(assert (=> d!15159 m!30327))

(assert (=> b!28683 m!29397))

(declare-fun m!30551 () Bool)

(assert (=> b!28683 m!30551))

(declare-fun m!30553 () Bool)

(assert (=> b!28684 m!30553))

(assert (=> b!28684 m!29387))

(assert (=> b!28684 m!30155))

(assert (=> b!28684 m!29397))

(assert (=> b!28684 m!30333))

(assert (=> b!28221 d!15159))

(declare-fun lt!5077 () List!361)

(declare-fun b!28689 () Bool)

(declare-fun e!14670 () Bool)

(assert (=> b!28689 (= e!14670 (or (not (= (++!41 (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))) Nil!356)) (= lt!5077 (toList!116 (left!708 xs!533)))))))

(declare-fun b!28686 () Bool)

(declare-fun e!14669 () List!361)

(assert (=> b!28686 (= e!14669 (++!41 (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))))))

(declare-fun d!15161 () Bool)

(assert (=> d!15161 e!14670))

(declare-fun res!13112 () Bool)

(assert (=> d!15161 (=> (not res!13112) (not e!14670))))

(assert (=> d!15161 (= res!13112 (= (content!71 lt!5077) (union (content!71 (toList!116 (left!708 xs!533))) (content!71 (++!41 (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)))))))))

(assert (=> d!15161 (= lt!5077 e!14669)))

(declare-fun c!6334 () Bool)

(assert (=> d!15161 (= c!6334 (is-Nil!356 (toList!116 (left!708 xs!533))))))

(assert (=> d!15161 (= (++!41 (toList!116 (left!708 xs!533)) (++!41 (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)))) lt!5077)))

(declare-fun b!28687 () Bool)

(assert (=> b!28687 (= e!14669 (Cons!355 (h!272 (toList!116 (left!708 xs!533))) (++!41 (t!4375 (toList!116 (left!708 xs!533))) (++!41 (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))))))))

(declare-fun b!28688 () Bool)

(declare-fun res!13111 () Bool)

(assert (=> b!28688 (=> (not res!13111) (not e!14670))))

(assert (=> b!28688 (= res!13111 (= (size!271 lt!5077) (+ (size!271 (toList!116 (left!708 xs!533))) (size!271 (++!41 (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77)))))))))

(assert (= (and d!15161 c!6334) b!28686))

(assert (= (and d!15161 (not c!6334)) b!28687))

(assert (= (and d!15161 res!13112) b!28688))

(assert (= (and b!28688 res!13111) b!28689))

(declare-fun m!30555 () Bool)

(assert (=> d!15161 m!30555))

(assert (=> d!15161 m!29387))

(assert (=> d!15161 m!30147))

(assert (=> d!15161 m!29619))

(declare-fun m!30557 () Bool)

(assert (=> d!15161 m!30557))

(assert (=> b!28687 m!29619))

(declare-fun m!30559 () Bool)

(assert (=> b!28687 m!30559))

(declare-fun m!30561 () Bool)

(assert (=> b!28688 m!30561))

(assert (=> b!28688 m!29387))

(assert (=> b!28688 m!30155))

(assert (=> b!28688 m!29619))

(declare-fun m!30563 () Bool)

(assert (=> b!28688 m!30563))

(assert (=> b!28221 d!15161))

(assert (=> b!28221 d!15081))

(declare-fun b!28692 () Bool)

(declare-fun res!13113 () Bool)

(declare-fun e!14672 () Bool)

(assert (=> b!28692 (=> (not res!13113) (not e!14672))))

(assert (=> b!28692 (= res!13113 (concInv!58 (left!708 (left!708 (right!711 ys!77)))))))

(declare-fun b!28690 () Bool)

(declare-fun e!14671 () Bool)

(assert (=> b!28690 (= e!14671 e!14672)))

(declare-fun res!13116 () Bool)

(assert (=> b!28690 (=> (not res!13116) (not e!14672))))

(assert (=> b!28690 (= res!13116 (not (isEmpty!320 (left!708 (left!708 (right!711 ys!77))))))))

(declare-fun b!28693 () Bool)

(assert (=> b!28693 (= e!14672 (concInv!58 (right!711 (left!708 (right!711 ys!77)))))))

(declare-fun d!15163 () Bool)

(declare-fun res!13114 () Bool)

(assert (=> d!15163 (=> res!13114 e!14671)))

(assert (=> d!15163 (= res!13114 (not (is-CC!63 (left!708 (right!711 ys!77)))))))

(assert (=> d!15163 (= (concInv!58 (left!708 (right!711 ys!77))) e!14671)))

(declare-fun b!28691 () Bool)

(declare-fun res!13115 () Bool)

(assert (=> b!28691 (=> (not res!13115) (not e!14672))))

(assert (=> b!28691 (= res!13115 (not (isEmpty!320 (right!711 (left!708 (right!711 ys!77))))))))

(assert (= (and d!15163 (not res!13114)) b!28690))

(assert (= (and b!28690 res!13116) b!28691))

(assert (= (and b!28691 res!13115) b!28692))

(assert (= (and b!28692 res!13113) b!28693))

(declare-fun m!30565 () Bool)

(assert (=> b!28692 m!30565))

(declare-fun m!30567 () Bool)

(assert (=> b!28690 m!30567))

(declare-fun m!30569 () Bool)

(assert (=> b!28693 m!30569))

(declare-fun m!30571 () Bool)

(assert (=> b!28691 m!30571))

(assert (=> b!28228 d!15163))

(declare-fun d!15165 () Bool)

(declare-fun res!13118 () Bool)

(declare-fun e!14673 () Bool)

(assert (=> d!15165 (=> res!13118 e!14673)))

(assert (=> d!15165 (= res!13118 (not (is-CC!63 (left!708 (left!708 res!5536)))))))

(assert (=> d!15165 (= (balanced!59 (left!708 (left!708 res!5536))) e!14673)))

(declare-fun b!28696 () Bool)

(declare-fun res!13120 () Bool)

(declare-fun e!14674 () Bool)

(assert (=> b!28696 (=> (not res!13120) (not e!14674))))

(assert (=> b!28696 (= res!13120 (balanced!59 (left!708 (left!708 (left!708 res!5536)))))))

(declare-fun b!28694 () Bool)

(assert (=> b!28694 (= e!14673 e!14674)))

(declare-fun res!13117 () Bool)

(assert (=> b!28694 (=> (not res!13117) (not e!14674))))

(assert (=> b!28694 (= res!13117 (>= (- (level!52 (left!708 (left!708 (left!708 res!5536)))) (level!52 (right!711 (left!708 (left!708 res!5536))))) (- 1)))))

(declare-fun b!28697 () Bool)

(assert (=> b!28697 (= e!14674 (balanced!59 (right!711 (left!708 (left!708 res!5536)))))))

(declare-fun b!28695 () Bool)

(declare-fun res!13119 () Bool)

(assert (=> b!28695 (=> (not res!13119) (not e!14674))))

(assert (=> b!28695 (= res!13119 (<= (- (level!52 (left!708 (left!708 (left!708 res!5536)))) (level!52 (right!711 (left!708 (left!708 res!5536))))) 1))))

(assert (= (and d!15165 (not res!13118)) b!28694))

(assert (= (and b!28694 res!13117) b!28695))

(assert (= (and b!28695 res!13119) b!28696))

(assert (= (and b!28696 res!13120) b!28697))

(declare-fun m!30573 () Bool)

(assert (=> b!28696 m!30573))

(assert (=> b!28694 m!30235))

(assert (=> b!28694 m!30233))

(declare-fun m!30575 () Bool)

(assert (=> b!28697 m!30575))

(assert (=> b!28695 m!30235))

(assert (=> b!28695 m!30233))

(assert (=> b!28210 d!15165))

(declare-fun d!15167 () Bool)

(declare-fun lt!5078 () Int)

(assert (=> d!15167 (>= lt!5078 0)))

(declare-fun e!14675 () Int)

(assert (=> d!15167 (= lt!5078 e!14675)))

(declare-fun c!6335 () Bool)

(assert (=> d!15167 (= c!6335 (is-Nil!356 lt!4850))))

(assert (=> d!15167 (= (size!271 lt!4850) lt!5078)))

(declare-fun b!28698 () Bool)

(assert (=> b!28698 (= e!14675 0)))

(declare-fun b!28699 () Bool)

(assert (=> b!28699 (= e!14675 (+ 1 (size!271 (t!4375 lt!4850))))))

(assert (= (and d!15167 c!6335) b!28698))

(assert (= (and d!15167 (not c!6335)) b!28699))

(declare-fun m!30577 () Bool)

(assert (=> b!28699 m!30577))

(assert (=> d!14799 d!15167))

(declare-fun b!28700 () Bool)

(declare-fun e!14676 () Int)

(assert (=> b!28700 (= e!14676 0)))

(declare-fun b!28703 () Bool)

(declare-fun e!14677 () Int)

(assert (=> b!28703 (= e!14677 (+ (size!272 (left!708 (left!708 xs!533))) (size!272 (right!711 (left!708 xs!533)))))))

(declare-fun b!28702 () Bool)

(assert (=> b!28702 (= e!14677 1)))

(declare-fun d!15169 () Bool)

(declare-fun lt!5079 () Int)

(assert (=> d!15169 (>= lt!5079 0)))

(assert (=> d!15169 (= lt!5079 e!14676)))

(declare-fun c!6336 () Bool)

(assert (=> d!15169 (= c!6336 (is-Empty!74 (left!708 xs!533)))))

(assert (=> d!15169 (= (size!272 (left!708 xs!533)) lt!5079)))

(declare-fun b!28701 () Bool)

(assert (=> b!28701 (= e!14676 e!14677)))

(declare-fun c!6337 () Bool)

(assert (=> b!28701 (= c!6337 (is-Single!63 (left!708 xs!533)))))

(assert (= (and b!28701 c!6337) b!28702))

(assert (= (and b!28701 (not c!6337)) b!28703))

(assert (= (and d!15169 c!6336) b!28700))

(assert (= (and d!15169 (not c!6336)) b!28701))

(assert (=> b!28703 m!30433))

(assert (=> b!28703 m!30443))

(assert (=> d!14799 d!15169))

(declare-fun b!28705 () Bool)

(declare-fun e!14678 () Int)

(declare-fun lt!5080 () Int)

(declare-fun lt!5082 () Int)

(assert (=> b!28705 (= e!14678 (+ 1 (ite (>= lt!5080 lt!5082) lt!5080 lt!5082)))))

(assert (=> b!28705 (= lt!5082 (level!52 (right!711 (right!711 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77))))))))

(assert (=> b!28705 (= lt!5080 (level!52 (left!708 (right!711 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77))))))))

(declare-fun d!15171 () Bool)

(declare-fun lt!5081 () Int)

(assert (=> d!15171 (>= lt!5081 0)))

(assert (=> d!15171 (= lt!5081 e!14678)))

(declare-fun c!6338 () Bool)

(assert (=> d!15171 (= c!6338 (or (is-Empty!74 (right!711 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77)))) (is-Single!63 (right!711 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77))))))))

(assert (=> d!15171 (= (level!52 (right!711 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77)))) lt!5081)))

(declare-fun b!28704 () Bool)

(assert (=> b!28704 (= e!14678 0)))

(assert (= (and d!15171 c!6338) b!28704))

(assert (= (and d!15171 (not c!6338)) b!28705))

(declare-fun m!30579 () Bool)

(assert (=> b!28705 m!30579))

(declare-fun m!30581 () Bool)

(assert (=> b!28705 m!30581))

(assert (=> b!28173 d!15171))

(declare-fun b!28707 () Bool)

(declare-fun e!14679 () Int)

(declare-fun lt!5083 () Int)

(declare-fun lt!5085 () Int)

(assert (=> b!28707 (= e!14679 (+ 1 (ite (>= lt!5083 lt!5085) lt!5083 lt!5085)))))

(assert (=> b!28707 (= lt!5085 (level!52 (right!711 (left!708 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77))))))))

(assert (=> b!28707 (= lt!5083 (level!52 (left!708 (left!708 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77))))))))

(declare-fun d!15173 () Bool)

(declare-fun lt!5084 () Int)

(assert (=> d!15173 (>= lt!5084 0)))

(assert (=> d!15173 (= lt!5084 e!14679)))

(declare-fun c!6339 () Bool)

(assert (=> d!15173 (= c!6339 (or (is-Empty!74 (left!708 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77)))) (is-Single!63 (left!708 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77))))))))

(assert (=> d!15173 (= (level!52 (left!708 (ite lt!4801 (right!711 (right!711 (right!711 xs!533))) (left!708 ys!77)))) lt!5084)))

(declare-fun b!28706 () Bool)

(assert (=> b!28706 (= e!14679 0)))

(assert (= (and d!15173 c!6339) b!28706))

(assert (= (and d!15173 (not c!6339)) b!28707))

(declare-fun m!30583 () Bool)

(assert (=> b!28707 m!30583))

(declare-fun m!30585 () Bool)

(assert (=> b!28707 m!30585))

(assert (=> b!28173 d!15173))

(assert (=> b!28164 d!15115))

(assert (=> b!28164 d!15113))

(declare-fun d!15175 () Bool)

(declare-fun res!13122 () Bool)

(declare-fun e!14680 () Bool)

(assert (=> d!15175 (=> res!13122 e!14680)))

(assert (=> d!15175 (= res!13122 (not (is-CC!63 (left!708 (right!711 (right!711 xs!533))))))))

(assert (=> d!15175 (= (balanced!59 (left!708 (right!711 (right!711 xs!533)))) e!14680)))

(declare-fun b!28710 () Bool)

(declare-fun res!13124 () Bool)

(declare-fun e!14681 () Bool)

(assert (=> b!28710 (=> (not res!13124) (not e!14681))))

(assert (=> b!28710 (= res!13124 (balanced!59 (left!708 (left!708 (right!711 (right!711 xs!533))))))))

(declare-fun b!28708 () Bool)

(assert (=> b!28708 (= e!14680 e!14681)))

(declare-fun res!13121 () Bool)

(assert (=> b!28708 (=> (not res!13121) (not e!14681))))

(assert (=> b!28708 (= res!13121 (>= (- (level!52 (left!708 (left!708 (right!711 (right!711 xs!533))))) (level!52 (right!711 (left!708 (right!711 (right!711 xs!533)))))) (- 1)))))

(declare-fun b!28711 () Bool)

(assert (=> b!28711 (= e!14681 (balanced!59 (right!711 (left!708 (right!711 (right!711 xs!533))))))))

(declare-fun b!28709 () Bool)

(declare-fun res!13123 () Bool)

(assert (=> b!28709 (=> (not res!13123) (not e!14681))))

(assert (=> b!28709 (= res!13123 (<= (- (level!52 (left!708 (left!708 (right!711 (right!711 xs!533))))) (level!52 (right!711 (left!708 (right!711 (right!711 xs!533)))))) 1))))

(assert (= (and d!15175 (not res!13122)) b!28708))

(assert (= (and b!28708 res!13121) b!28709))

(assert (= (and b!28709 res!13123) b!28710))

(assert (= (and b!28710 res!13124) b!28711))

(declare-fun m!30587 () Bool)

(assert (=> b!28710 m!30587))

(assert (=> b!28708 m!30527))

(assert (=> b!28708 m!30525))

(declare-fun m!30589 () Bool)

(assert (=> b!28711 m!30589))

(assert (=> b!28709 m!30527))

(assert (=> b!28709 m!30525))

(assert (=> b!28224 d!15175))

(assert (=> b!28096 d!14947))

(assert (=> b!28096 d!14951))

(assert (=> b!28096 d!14949))

(assert (=> b!28096 d!14945))

(declare-fun b!28714 () Bool)

(declare-fun res!13125 () Bool)

(declare-fun e!14683 () Bool)

(assert (=> b!28714 (=> (not res!13125) (not e!14683))))

(assert (=> b!28714 (= res!13125 (concInv!58 (left!708 (left!708 (left!708 ys!77)))))))

(declare-fun b!28712 () Bool)

(declare-fun e!14682 () Bool)

(assert (=> b!28712 (= e!14682 e!14683)))

(declare-fun res!13128 () Bool)

(assert (=> b!28712 (=> (not res!13128) (not e!14683))))

(assert (=> b!28712 (= res!13128 (not (isEmpty!320 (left!708 (left!708 (left!708 ys!77))))))))

(declare-fun b!28715 () Bool)

(assert (=> b!28715 (= e!14683 (concInv!58 (right!711 (left!708 (left!708 ys!77)))))))

(declare-fun d!15177 () Bool)

(declare-fun res!13126 () Bool)

(assert (=> d!15177 (=> res!13126 e!14682)))

(assert (=> d!15177 (= res!13126 (not (is-CC!63 (left!708 (left!708 ys!77)))))))

(assert (=> d!15177 (= (concInv!58 (left!708 (left!708 ys!77))) e!14682)))

(declare-fun b!28713 () Bool)

(declare-fun res!13127 () Bool)

(assert (=> b!28713 (=> (not res!13127) (not e!14683))))

(assert (=> b!28713 (= res!13127 (not (isEmpty!320 (right!711 (left!708 (left!708 ys!77))))))))

(assert (= (and d!15177 (not res!13126)) b!28712))

(assert (= (and b!28712 res!13128) b!28713))

(assert (= (and b!28713 res!13127) b!28714))

(assert (= (and b!28714 res!13125) b!28715))

(declare-fun m!30591 () Bool)

(assert (=> b!28714 m!30591))

(declare-fun m!30593 () Bool)

(assert (=> b!28712 m!30593))

(declare-fun m!30595 () Bool)

(assert (=> b!28715 m!30595))

(declare-fun m!30597 () Bool)

(assert (=> b!28713 m!30597))

(assert (=> b!28135 d!15177))

(declare-fun b!28716 () Bool)

(declare-fun e!14684 () Bool)

(assert (=> b!28716 (= e!14684 (= (++!41 (++!41 (t!4375 (toList!116 xs!533)) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77)))) (++!41 (t!4375 (toList!116 xs!533)) (++!41 (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))))))))

(declare-fun lt!5086 () Bool)

(assert (=> b!28716 (= lt!5086 (appendAssoc!9 (t!4375 (t!4375 (toList!116 xs!533))) (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))))))

(declare-fun d!15179 () Bool)

(assert (=> d!15179 e!14684))

(declare-fun c!6340 () Bool)

(assert (=> d!15179 (= c!6340 (is-Cons!355 (t!4375 (toList!116 xs!533))))))

(assert (=> d!15179 (= (appendAssoc!9 (t!4375 (toList!116 xs!533)) (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))) true)))

(declare-fun b!28717 () Bool)

(assert (=> b!28717 (= e!14684 (= (++!41 (++!41 (t!4375 (toList!116 xs!533)) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77)))) (++!41 (t!4375 (toList!116 xs!533)) (++!41 (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))))))))

(assert (= (and d!15179 c!6340) b!28716))

(assert (= (and d!15179 (not c!6340)) b!28717))

(assert (=> b!28716 m!29381))

(assert (=> b!28716 m!29383))

(declare-fun m!30599 () Bool)

(assert (=> b!28716 m!30599))

(assert (=> b!28716 m!29381))

(assert (=> b!28716 m!29717))

(assert (=> b!28716 m!29549))

(assert (=> b!28716 m!30001))

(assert (=> b!28716 m!29381))

(assert (=> b!28716 m!29383))

(assert (=> b!28716 m!29549))

(assert (=> b!28716 m!29717))

(assert (=> b!28716 m!29383))

(declare-fun m!30601 () Bool)

(assert (=> b!28716 m!30601))

(assert (=> b!28717 m!29381))

(assert (=> b!28717 m!29717))

(assert (=> b!28717 m!29717))

(assert (=> b!28717 m!29383))

(assert (=> b!28717 m!30601))

(assert (=> b!28717 m!29381))

(assert (=> b!28717 m!29383))

(assert (=> b!28717 m!29549))

(assert (=> b!28717 m!29549))

(assert (=> b!28717 m!30001))

(assert (=> b!28234 d!15179))

(assert (=> b!28234 d!14959))

(assert (=> b!28234 d!14963))

(assert (=> b!28234 d!14961))

(assert (=> b!28234 d!14863))

(declare-fun d!15181 () Bool)

(declare-fun res!13130 () Bool)

(declare-fun e!14685 () Bool)

(assert (=> d!15181 (=> res!13130 e!14685)))

(assert (=> d!15181 (= res!13130 (not (is-CC!63 (right!711 (left!708 ys!77)))))))

(assert (=> d!15181 (= (balanced!59 (right!711 (left!708 ys!77))) e!14685)))

(declare-fun b!28720 () Bool)

(declare-fun res!13132 () Bool)

(declare-fun e!14686 () Bool)

(assert (=> b!28720 (=> (not res!13132) (not e!14686))))

(assert (=> b!28720 (= res!13132 (balanced!59 (left!708 (right!711 (left!708 ys!77)))))))

(declare-fun b!28718 () Bool)

(assert (=> b!28718 (= e!14685 e!14686)))

(declare-fun res!13129 () Bool)

(assert (=> b!28718 (=> (not res!13129) (not e!14686))))

(assert (=> b!28718 (= res!13129 (>= (- (level!52 (left!708 (right!711 (left!708 ys!77)))) (level!52 (right!711 (right!711 (left!708 ys!77))))) (- 1)))))

(declare-fun b!28721 () Bool)

(assert (=> b!28721 (= e!14686 (balanced!59 (right!711 (right!711 (left!708 ys!77)))))))

(declare-fun b!28719 () Bool)

(declare-fun res!13131 () Bool)

(assert (=> b!28719 (=> (not res!13131) (not e!14686))))

(assert (=> b!28719 (= res!13131 (<= (- (level!52 (left!708 (right!711 (left!708 ys!77)))) (level!52 (right!711 (right!711 (left!708 ys!77))))) 1))))

(assert (= (and d!15181 (not res!13130)) b!28718))

(assert (= (and b!28718 res!13129) b!28719))

(assert (= (and b!28719 res!13131) b!28720))

(assert (= (and b!28720 res!13132) b!28721))

(declare-fun m!30603 () Bool)

(assert (=> b!28720 m!30603))

(assert (=> b!28718 m!30251))

(assert (=> b!28718 m!30249))

(declare-fun m!30605 () Bool)

(assert (=> b!28721 m!30605))

(assert (=> b!28719 m!30251))

(assert (=> b!28719 m!30249))

(assert (=> b!28171 d!15181))

(assert (=> b!28073 d!15027))

(assert (=> b!28073 d!15031))

(assert (=> b!28073 d!15025))

(declare-fun b!28722 () Bool)

(declare-fun e!14687 () Bool)

(assert (=> b!28722 (= e!14687 (= (++!41 (++!41 (t!4375 (toList!116 (left!708 xs!533))) (toList!116 (right!711 xs!533))) (toList!116 ys!77)) (++!41 (t!4375 (toList!116 (left!708 xs!533))) (++!41 (toList!116 (right!711 xs!533)) (toList!116 ys!77)))))))

(declare-fun lt!5087 () Bool)

(assert (=> b!28722 (= lt!5087 (appendAssoc!9 (t!4375 (t!4375 (toList!116 (left!708 xs!533)))) (toList!116 (right!711 xs!533)) (toList!116 ys!77)))))

(declare-fun d!15183 () Bool)

(assert (=> d!15183 e!14687))

(declare-fun c!6341 () Bool)

(assert (=> d!15183 (= c!6341 (is-Cons!355 (t!4375 (toList!116 (left!708 xs!533)))))))

(assert (=> d!15183 (= (appendAssoc!9 (t!4375 (toList!116 (left!708 xs!533))) (toList!116 (right!711 xs!533)) (toList!116 ys!77)) true)))

(declare-fun b!28723 () Bool)

(assert (=> b!28723 (= e!14687 (= (++!41 (++!41 (t!4375 (toList!116 (left!708 xs!533))) (toList!116 (right!711 xs!533))) (toList!116 ys!77)) (++!41 (t!4375 (toList!116 (left!708 xs!533))) (++!41 (toList!116 (right!711 xs!533)) (toList!116 ys!77)))))))

(assert (= (and d!15183 c!6341) b!28722))

(assert (= (and d!15183 (not c!6341)) b!28723))

(assert (=> b!28722 m!29389))

(assert (=> b!28722 m!29365))

(declare-fun m!30607 () Bool)

(assert (=> b!28722 m!30607))

(assert (=> b!28722 m!29389))

(assert (=> b!28722 m!30151))

(assert (=> b!28722 m!29509))

(assert (=> b!28722 m!30163))

(assert (=> b!28722 m!29389))

(assert (=> b!28722 m!29365))

(assert (=> b!28722 m!29509))

(assert (=> b!28722 m!30151))

(assert (=> b!28722 m!29365))

(declare-fun m!30609 () Bool)

(assert (=> b!28722 m!30609))

(assert (=> b!28723 m!29389))

(assert (=> b!28723 m!30151))

(assert (=> b!28723 m!30151))

(assert (=> b!28723 m!29365))

(assert (=> b!28723 m!30609))

(assert (=> b!28723 m!29389))

(assert (=> b!28723 m!29365))

(assert (=> b!28723 m!29509))

(assert (=> b!28723 m!29509))

(assert (=> b!28723 m!30163))

(assert (=> b!28073 d!15183))

(assert (=> b!28073 d!15029))

(declare-fun b!28726 () Bool)

(declare-fun res!13133 () Bool)

(declare-fun e!14689 () Bool)

(assert (=> b!28726 (=> (not res!13133) (not e!14689))))

(assert (=> b!28726 (= res!13133 (concInv!58 (left!708 (left!708 (left!708 res!5536)))))))

(declare-fun b!28724 () Bool)

(declare-fun e!14688 () Bool)

(assert (=> b!28724 (= e!14688 e!14689)))

(declare-fun res!13136 () Bool)

(assert (=> b!28724 (=> (not res!13136) (not e!14689))))

(assert (=> b!28724 (= res!13136 (not (isEmpty!320 (left!708 (left!708 (left!708 res!5536))))))))

(declare-fun b!28727 () Bool)

(assert (=> b!28727 (= e!14689 (concInv!58 (right!711 (left!708 (left!708 res!5536)))))))

(declare-fun d!15185 () Bool)

(declare-fun res!13134 () Bool)

(assert (=> d!15185 (=> res!13134 e!14688)))

(assert (=> d!15185 (= res!13134 (not (is-CC!63 (left!708 (left!708 res!5536)))))))

(assert (=> d!15185 (= (concInv!58 (left!708 (left!708 res!5536))) e!14688)))

(declare-fun b!28725 () Bool)

(declare-fun res!13135 () Bool)

(assert (=> b!28725 (=> (not res!13135) (not e!14689))))

(assert (=> b!28725 (= res!13135 (not (isEmpty!320 (right!711 (left!708 (left!708 res!5536))))))))

(assert (= (and d!15185 (not res!13134)) b!28724))

(assert (= (and b!28724 res!13136) b!28725))

(assert (= (and b!28725 res!13135) b!28726))

(assert (= (and b!28726 res!13133) b!28727))

(declare-fun m!30611 () Bool)

(assert (=> b!28726 m!30611))

(declare-fun m!30613 () Bool)

(assert (=> b!28724 m!30613))

(declare-fun m!30615 () Bool)

(assert (=> b!28727 m!30615))

(declare-fun m!30617 () Bool)

(assert (=> b!28725 m!30617))

(assert (=> b!28119 d!15185))

(declare-fun b!28731 () Bool)

(declare-fun e!14691 () Bool)

(declare-fun lt!5088 () List!361)

(assert (=> b!28731 (= e!14691 (or (not (= (toList!116 (right!711 (right!711 ys!77))) Nil!356)) (= lt!5088 (toList!116 (left!708 (right!711 ys!77))))))))

(declare-fun b!28728 () Bool)

(declare-fun e!14690 () List!361)

(assert (=> b!28728 (= e!14690 (toList!116 (right!711 (right!711 ys!77))))))

(declare-fun d!15187 () Bool)

(assert (=> d!15187 e!14691))

(declare-fun res!13138 () Bool)

(assert (=> d!15187 (=> (not res!13138) (not e!14691))))

(assert (=> d!15187 (= res!13138 (= (content!71 lt!5088) (union (content!71 (toList!116 (left!708 (right!711 ys!77)))) (content!71 (toList!116 (right!711 (right!711 ys!77)))))))))

(assert (=> d!15187 (= lt!5088 e!14690)))

(declare-fun c!6342 () Bool)

(assert (=> d!15187 (= c!6342 (is-Nil!356 (toList!116 (left!708 (right!711 ys!77)))))))

(assert (=> d!15187 (= (++!41 (toList!116 (left!708 (right!711 ys!77))) (toList!116 (right!711 (right!711 ys!77)))) lt!5088)))

(declare-fun b!28729 () Bool)

(assert (=> b!28729 (= e!14690 (Cons!355 (h!272 (toList!116 (left!708 (right!711 ys!77)))) (++!41 (t!4375 (toList!116 (left!708 (right!711 ys!77)))) (toList!116 (right!711 (right!711 ys!77))))))))

(declare-fun b!28730 () Bool)

(declare-fun res!13137 () Bool)

(assert (=> b!28730 (=> (not res!13137) (not e!14691))))

(assert (=> b!28730 (= res!13137 (= (size!271 lt!5088) (+ (size!271 (toList!116 (left!708 (right!711 ys!77)))) (size!271 (toList!116 (right!711 (right!711 ys!77)))))))))

(assert (= (and d!15187 c!6342) b!28728))

(assert (= (and d!15187 (not c!6342)) b!28729))

(assert (= (and d!15187 res!13138) b!28730))

(assert (= (and b!28730 res!13137) b!28731))

(declare-fun m!30619 () Bool)

(assert (=> d!15187 m!30619))

(assert (=> d!15187 m!29555))

(declare-fun m!30621 () Bool)

(assert (=> d!15187 m!30621))

(assert (=> d!15187 m!29557))

(declare-fun m!30623 () Bool)

(assert (=> d!15187 m!30623))

(assert (=> b!28729 m!29557))

(declare-fun m!30625 () Bool)

(assert (=> b!28729 m!30625))

(declare-fun m!30627 () Bool)

(assert (=> b!28730 m!30627))

(assert (=> b!28730 m!29555))

(declare-fun m!30629 () Bool)

(assert (=> b!28730 m!30629))

(assert (=> b!28730 m!29557))

(declare-fun m!30631 () Bool)

(assert (=> b!28730 m!30631))

(assert (=> b!28108 d!15187))

(declare-fun b!28734 () Bool)

(declare-fun e!14693 () List!361)

(assert (=> b!28734 (= e!14693 (Cons!355 (x!8933 (left!708 (right!711 ys!77))) Nil!356))))

(declare-fun b!28735 () Bool)

(assert (=> b!28735 (= e!14693 (++!41 (toList!116 (left!708 (left!708 (right!711 ys!77)))) (toList!116 (right!711 (left!708 (right!711 ys!77))))))))

(declare-fun b!28732 () Bool)

(declare-fun e!14692 () List!361)

(assert (=> b!28732 (= e!14692 Nil!356)))

(declare-fun d!15189 () Bool)

(declare-fun lt!5089 () List!361)

(assert (=> d!15189 (= (size!271 lt!5089) (size!272 (left!708 (right!711 ys!77))))))

(assert (=> d!15189 (= lt!5089 e!14692)))

(declare-fun c!6344 () Bool)

(assert (=> d!15189 (= c!6344 (is-Empty!74 (left!708 (right!711 ys!77))))))

(assert (=> d!15189 (= (toList!116 (left!708 (right!711 ys!77))) lt!5089)))

(declare-fun b!28733 () Bool)

(assert (=> b!28733 (= e!14692 e!14693)))

(declare-fun c!6343 () Bool)

(assert (=> b!28733 (= c!6343 (is-Single!63 (left!708 (right!711 ys!77))))))

(assert (= (and b!28733 c!6343) b!28734))

(assert (= (and b!28733 (not c!6343)) b!28735))

(assert (= (and d!15189 c!6344) b!28732))

(assert (= (and d!15189 (not c!6344)) b!28733))

(declare-fun m!30633 () Bool)

(assert (=> b!28735 m!30633))

(declare-fun m!30635 () Bool)

(assert (=> b!28735 m!30635))

(assert (=> b!28735 m!30633))

(assert (=> b!28735 m!30635))

(declare-fun m!30637 () Bool)

(assert (=> b!28735 m!30637))

(declare-fun m!30639 () Bool)

(assert (=> d!15189 m!30639))

(assert (=> d!15189 m!29843))

(assert (=> b!28108 d!15189))

(declare-fun b!28738 () Bool)

(declare-fun e!14695 () List!361)

(assert (=> b!28738 (= e!14695 (Cons!355 (x!8933 (right!711 (right!711 ys!77))) Nil!356))))

(declare-fun b!28739 () Bool)

(assert (=> b!28739 (= e!14695 (++!41 (toList!116 (left!708 (right!711 (right!711 ys!77)))) (toList!116 (right!711 (right!711 (right!711 ys!77))))))))

(declare-fun b!28736 () Bool)

(declare-fun e!14694 () List!361)

(assert (=> b!28736 (= e!14694 Nil!356)))

(declare-fun d!15191 () Bool)

(declare-fun lt!5090 () List!361)

(assert (=> d!15191 (= (size!271 lt!5090) (size!272 (right!711 (right!711 ys!77))))))

(assert (=> d!15191 (= lt!5090 e!14694)))

(declare-fun c!6346 () Bool)

(assert (=> d!15191 (= c!6346 (is-Empty!74 (right!711 (right!711 ys!77))))))

(assert (=> d!15191 (= (toList!116 (right!711 (right!711 ys!77))) lt!5090)))

(declare-fun b!28737 () Bool)

(assert (=> b!28737 (= e!14694 e!14695)))

(declare-fun c!6345 () Bool)

(assert (=> b!28737 (= c!6345 (is-Single!63 (right!711 (right!711 ys!77))))))

(assert (= (and b!28737 c!6345) b!28738))

(assert (= (and b!28737 (not c!6345)) b!28739))

(assert (= (and d!15191 c!6346) b!28736))

(assert (= (and d!15191 (not c!6346)) b!28737))

(declare-fun m!30641 () Bool)

(assert (=> b!28739 m!30641))

(declare-fun m!30643 () Bool)

(assert (=> b!28739 m!30643))

(assert (=> b!28739 m!30641))

(assert (=> b!28739 m!30643))

(declare-fun m!30645 () Bool)

(assert (=> b!28739 m!30645))

(declare-fun m!30647 () Bool)

(assert (=> d!15191 m!30647))

(assert (=> d!15191 m!29845))

(assert (=> b!28108 d!15191))

(assert (=> b!28168 d!15063))

(assert (=> b!28168 d!15065))

(declare-fun b!28742 () Bool)

(declare-fun res!13139 () Bool)

(declare-fun e!14697 () Bool)

(assert (=> b!28742 (=> (not res!13139) (not e!14697))))

(assert (=> b!28742 (= res!13139 (concInv!58 (left!708 (right!711 (left!708 res!5536)))))))

(declare-fun b!28740 () Bool)

(declare-fun e!14696 () Bool)

(assert (=> b!28740 (= e!14696 e!14697)))

(declare-fun res!13142 () Bool)

(assert (=> b!28740 (=> (not res!13142) (not e!14697))))

(assert (=> b!28740 (= res!13142 (not (isEmpty!320 (left!708 (right!711 (left!708 res!5536))))))))

(declare-fun b!28743 () Bool)

(assert (=> b!28743 (= e!14697 (concInv!58 (right!711 (right!711 (left!708 res!5536)))))))

(declare-fun d!15193 () Bool)

(declare-fun res!13140 () Bool)

(assert (=> d!15193 (=> res!13140 e!14696)))

(assert (=> d!15193 (= res!13140 (not (is-CC!63 (right!711 (left!708 res!5536)))))))

(assert (=> d!15193 (= (concInv!58 (right!711 (left!708 res!5536))) e!14696)))

(declare-fun b!28741 () Bool)

(declare-fun res!13141 () Bool)

(assert (=> b!28741 (=> (not res!13141) (not e!14697))))

(assert (=> b!28741 (= res!13141 (not (isEmpty!320 (right!711 (right!711 (left!708 res!5536))))))))

(assert (= (and d!15193 (not res!13140)) b!28740))

(assert (= (and b!28740 res!13142) b!28741))

(assert (= (and b!28741 res!13141) b!28742))

(assert (= (and b!28742 res!13139) b!28743))

(declare-fun m!30649 () Bool)

(assert (=> b!28742 m!30649))

(declare-fun m!30651 () Bool)

(assert (=> b!28740 m!30651))

(declare-fun m!30653 () Bool)

(assert (=> b!28743 m!30653))

(declare-fun m!30655 () Bool)

(assert (=> b!28741 m!30655))

(assert (=> b!28120 d!15193))

(declare-fun b!28744 () Bool)

(declare-fun e!14698 () Bool)

(assert (=> b!28744 (= e!14698 (= (++!41 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77)))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (++!41 (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))))))))

(declare-fun lt!5091 () Bool)

(assert (=> b!28744 (= lt!5091 (appendAssoc!9 (t!4375 (toList!116 (right!711 (right!711 xs!533)))) (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))))))

(declare-fun d!15195 () Bool)

(assert (=> d!15195 e!14698))

(declare-fun c!6347 () Bool)

(assert (=> d!15195 (= c!6347 (is-Cons!355 (toList!116 (right!711 (right!711 xs!533)))))))

(assert (=> d!15195 (= (appendAssoc!9 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))) true)))

(declare-fun b!28745 () Bool)

(assert (=> b!28745 (= e!14698 (= (++!41 (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77)))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (++!41 (toList!116 (left!708 (left!708 ys!77))) (toList!116 (right!711 (left!708 ys!77)))))))))

(assert (= (and d!15195 c!6347) b!28744))

(assert (= (and d!15195 (not c!6347)) b!28745))

(assert (=> b!28744 m!29381))

(assert (=> b!28744 m!29383))

(declare-fun m!30657 () Bool)

(assert (=> b!28744 m!30657))

(assert (=> b!28744 m!29399))

(assert (=> b!28744 m!29381))

(assert (=> b!28744 m!29649))

(assert (=> b!28744 m!29399))

(assert (=> b!28744 m!29549))

(declare-fun m!30659 () Bool)

(assert (=> b!28744 m!30659))

(assert (=> b!28744 m!29381))

(assert (=> b!28744 m!29383))

(assert (=> b!28744 m!29549))

(assert (=> b!28744 m!29649))

(assert (=> b!28744 m!29383))

(assert (=> b!28744 m!30099))

(assert (=> b!28745 m!29399))

(assert (=> b!28745 m!29381))

(assert (=> b!28745 m!29649))

(assert (=> b!28745 m!29649))

(assert (=> b!28745 m!29383))

(assert (=> b!28745 m!30099))

(assert (=> b!28745 m!29381))

(assert (=> b!28745 m!29383))

(assert (=> b!28745 m!29549))

(assert (=> b!28745 m!29399))

(assert (=> b!28745 m!29549))

(assert (=> b!28745 m!30659))

(assert (=> b!28148 d!15195))

(assert (=> b!28148 d!14839))

(assert (=> b!28148 d!14859))

(assert (=> b!28148 d!14861))

(declare-fun d!15197 () Bool)

(assert (=> d!15197 (= (isEmpty!320 (right!711 (right!711 ys!77))) (= (right!711 (right!711 ys!77)) Empty!74))))

(assert (=> b!28227 d!15197))

(declare-fun b!28746 () Bool)

(declare-fun e!14699 () Bool)

(assert (=> b!28746 (= e!14699 (= (++!41 (++!41 (toList!116 (left!708 (right!711 (right!711 xs!533)))) (toList!116 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77)) (++!41 (toList!116 (left!708 (right!711 (right!711 xs!533)))) (++!41 (toList!116 (right!711 (right!711 (right!711 xs!533)))) (toList!116 ys!77)))))))

(declare-fun lt!5092 () Bool)

(assert (=> b!28746 (= lt!5092 (appendAssoc!9 (t!4375 (toList!116 (left!708 (right!711 (right!711 xs!533))))) (toList!116 (right!711 (right!711 (right!711 xs!533)))) (toList!116 ys!77)))))

(declare-fun d!15199 () Bool)

(assert (=> d!15199 e!14699))

(declare-fun c!6348 () Bool)

(assert (=> d!15199 (= c!6348 (is-Cons!355 (toList!116 (left!708 (right!711 (right!711 xs!533))))))))

(assert (=> d!15199 (= (appendAssoc!9 (toList!116 (left!708 (right!711 (right!711 xs!533)))) (toList!116 (right!711 (right!711 (right!711 xs!533)))) (toList!116 ys!77)) true)))

(declare-fun b!28747 () Bool)

(assert (=> b!28747 (= e!14699 (= (++!41 (++!41 (toList!116 (left!708 (right!711 (right!711 xs!533)))) (toList!116 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77)) (++!41 (toList!116 (left!708 (right!711 (right!711 xs!533)))) (++!41 (toList!116 (right!711 (right!711 (right!711 xs!533)))) (toList!116 ys!77)))))))

(assert (= (and d!15199 c!6348) b!28746))

(assert (= (and d!15199 (not c!6348)) b!28747))

(assert (=> b!28746 m!29635))

(assert (=> b!28746 m!29365))

(declare-fun m!30661 () Bool)

(assert (=> b!28746 m!30661))

(assert (=> b!28746 m!29633))

(assert (=> b!28746 m!29635))

(assert (=> b!28746 m!29637))

(assert (=> b!28746 m!29633))

(declare-fun m!30663 () Bool)

(assert (=> b!28746 m!30663))

(declare-fun m!30665 () Bool)

(assert (=> b!28746 m!30665))

(assert (=> b!28746 m!29635))

(assert (=> b!28746 m!29365))

(assert (=> b!28746 m!30663))

(assert (=> b!28746 m!29637))

(assert (=> b!28746 m!29365))

(declare-fun m!30667 () Bool)

(assert (=> b!28746 m!30667))

(assert (=> b!28747 m!29633))

(assert (=> b!28747 m!29635))

(assert (=> b!28747 m!29637))

(assert (=> b!28747 m!29637))

(assert (=> b!28747 m!29365))

(assert (=> b!28747 m!30667))

(assert (=> b!28747 m!29635))

(assert (=> b!28747 m!29365))

(assert (=> b!28747 m!30663))

(assert (=> b!28747 m!29633))

(assert (=> b!28747 m!30663))

(assert (=> b!28747 m!30665))

(assert (=> b!28152 d!15199))

(assert (=> b!28152 d!15125))

(assert (=> b!28152 d!15127))

(assert (=> b!28152 d!14803))

(declare-fun d!15201 () Bool)

(declare-fun lt!5093 () Int)

(assert (=> d!15201 (>= lt!5093 0)))

(declare-fun e!14700 () Int)

(assert (=> d!15201 (= lt!5093 e!14700)))

(declare-fun c!6349 () Bool)

(assert (=> d!15201 (= c!6349 (is-Nil!356 lt!4855))))

(assert (=> d!15201 (= (size!271 lt!4855) lt!5093)))

(declare-fun b!28748 () Bool)

(assert (=> b!28748 (= e!14700 0)))

(declare-fun b!28749 () Bool)

(assert (=> b!28749 (= e!14700 (+ 1 (size!271 (t!4375 lt!4855))))))

(assert (= (and d!15201 c!6349) b!28748))

(assert (= (and d!15201 (not c!6349)) b!28749))

(declare-fun m!30669 () Bool)

(assert (=> b!28749 m!30669))

(assert (=> d!14809 d!15201))

(declare-fun b!28750 () Bool)

(declare-fun e!14701 () Int)

(assert (=> b!28750 (= e!14701 0)))

(declare-fun b!28753 () Bool)

(declare-fun e!14702 () Int)

(assert (=> b!28753 (= e!14702 (+ (size!272 (left!708 (left!708 ys!77))) (size!272 (right!711 (left!708 ys!77)))))))

(declare-fun b!28752 () Bool)

(assert (=> b!28752 (= e!14702 1)))

(declare-fun d!15203 () Bool)

(declare-fun lt!5094 () Int)

(assert (=> d!15203 (>= lt!5094 0)))

(assert (=> d!15203 (= lt!5094 e!14701)))

(declare-fun c!6350 () Bool)

(assert (=> d!15203 (= c!6350 (is-Empty!74 (left!708 ys!77)))))

(assert (=> d!15203 (= (size!272 (left!708 ys!77)) lt!5094)))

(declare-fun b!28751 () Bool)

(assert (=> b!28751 (= e!14701 e!14702)))

(declare-fun c!6351 () Bool)

(assert (=> b!28751 (= c!6351 (is-Single!63 (left!708 ys!77)))))

(assert (= (and b!28751 c!6351) b!28752))

(assert (= (and b!28751 (not c!6351)) b!28753))

(assert (= (and d!15203 c!6350) b!28750))

(assert (= (and d!15203 (not c!6350)) b!28751))

(assert (=> b!28753 m!29699))

(assert (=> b!28753 m!29709))

(assert (=> d!14809 d!15203))

(declare-fun b!28756 () Bool)

(declare-fun res!13143 () Bool)

(declare-fun e!14704 () Bool)

(assert (=> b!28756 (=> (not res!13143) (not e!14704))))

(assert (=> b!28756 (= res!13143 (concInv!58 (left!708 (right!711 (right!711 (right!711 xs!533))))))))

(declare-fun b!28754 () Bool)

(declare-fun e!14703 () Bool)

(assert (=> b!28754 (= e!14703 e!14704)))

(declare-fun res!13146 () Bool)

(assert (=> b!28754 (=> (not res!13146) (not e!14704))))

(assert (=> b!28754 (= res!13146 (not (isEmpty!320 (left!708 (right!711 (right!711 (right!711 xs!533)))))))))

(declare-fun b!28757 () Bool)

(assert (=> b!28757 (= e!14704 (concInv!58 (right!711 (right!711 (right!711 (right!711 xs!533))))))))

(declare-fun d!15205 () Bool)

(declare-fun res!13144 () Bool)

(assert (=> d!15205 (=> res!13144 e!14703)))

(assert (=> d!15205 (= res!13144 (not (is-CC!63 (right!711 (right!711 (right!711 xs!533))))))))

(assert (=> d!15205 (= (concInv!58 (right!711 (right!711 (right!711 xs!533)))) e!14703)))

(declare-fun b!28755 () Bool)

(declare-fun res!13145 () Bool)

(assert (=> b!28755 (=> (not res!13145) (not e!14704))))

(assert (=> b!28755 (= res!13145 (not (isEmpty!320 (right!711 (right!711 (right!711 (right!711 xs!533)))))))))

(assert (= (and d!15205 (not res!13144)) b!28754))

(assert (= (and b!28754 res!13146) b!28755))

(assert (= (and b!28755 res!13145) b!28756))

(assert (= (and b!28756 res!13143) b!28757))

(declare-fun m!30671 () Bool)

(assert (=> b!28756 m!30671))

(declare-fun m!30673 () Bool)

(assert (=> b!28754 m!30673))

(declare-fun m!30675 () Bool)

(assert (=> b!28757 m!30675))

(declare-fun m!30677 () Bool)

(assert (=> b!28755 m!30677))

(assert (=> b!28239 d!15205))

(declare-fun d!15207 () Bool)

(declare-fun res!13148 () Bool)

(declare-fun e!14705 () Bool)

(assert (=> d!15207 (=> res!13148 e!14705)))

(assert (=> d!15207 (= res!13148 (not (is-CC!63 (left!708 lt!4807))))))

(assert (=> d!15207 (= (balanced!59 (left!708 lt!4807)) e!14705)))

(declare-fun b!28760 () Bool)

(declare-fun res!13150 () Bool)

(declare-fun e!14706 () Bool)

(assert (=> b!28760 (=> (not res!13150) (not e!14706))))

(assert (=> b!28760 (= res!13150 (balanced!59 (left!708 (left!708 lt!4807))))))

(declare-fun b!28758 () Bool)

(assert (=> b!28758 (= e!14705 e!14706)))

(declare-fun res!13147 () Bool)

(assert (=> b!28758 (=> (not res!13147) (not e!14706))))

(assert (=> b!28758 (= res!13147 (>= (- (level!52 (left!708 (left!708 lt!4807))) (level!52 (right!711 (left!708 lt!4807)))) (- 1)))))

(declare-fun b!28761 () Bool)

(assert (=> b!28761 (= e!14706 (balanced!59 (right!711 (left!708 lt!4807))))))

(declare-fun b!28759 () Bool)

(declare-fun res!13149 () Bool)

(assert (=> b!28759 (=> (not res!13149) (not e!14706))))

(assert (=> b!28759 (= res!13149 (<= (- (level!52 (left!708 (left!708 lt!4807))) (level!52 (right!711 (left!708 lt!4807)))) 1))))

(assert (= (and d!15207 (not res!13148)) b!28758))

(assert (= (and b!28758 res!13147) b!28759))

(assert (= (and b!28759 res!13149) b!28760))

(assert (= (and b!28760 res!13150) b!28761))

(declare-fun m!30679 () Bool)

(assert (=> b!28760 m!30679))

(assert (=> b!28758 m!29859))

(assert (=> b!28758 m!29857))

(declare-fun m!30681 () Bool)

(assert (=> b!28761 m!30681))

(assert (=> b!28759 m!29859))

(assert (=> b!28759 m!29857))

(assert (=> b!28123 d!15207))

(declare-fun b!28764 () Bool)

(declare-fun e!14708 () List!361)

(assert (=> b!28764 (= e!14708 (Cons!355 (x!8933 lt!4807) Nil!356))))

(declare-fun b!28765 () Bool)

(assert (=> b!28765 (= e!14708 (++!41 (toList!116 (left!708 lt!4807)) (toList!116 (right!711 lt!4807))))))

(declare-fun b!28762 () Bool)

(declare-fun e!14707 () List!361)

(assert (=> b!28762 (= e!14707 Nil!356)))

(declare-fun d!15209 () Bool)

(declare-fun lt!5095 () List!361)

(assert (=> d!15209 (= (size!271 lt!5095) (size!272 lt!4807))))

(assert (=> d!15209 (= lt!5095 e!14707)))

(declare-fun c!6353 () Bool)

(assert (=> d!15209 (= c!6353 (is-Empty!74 lt!4807))))

(assert (=> d!15209 (= (toList!116 lt!4807) lt!5095)))

(declare-fun b!28763 () Bool)

(assert (=> b!28763 (= e!14707 e!14708)))

(declare-fun c!6352 () Bool)

(assert (=> b!28763 (= c!6352 (is-Single!63 lt!4807))))

(assert (= (and b!28763 c!6352) b!28764))

(assert (= (and b!28763 (not c!6352)) b!28765))

(assert (= (and d!15209 c!6353) b!28762))

(assert (= (and d!15209 (not c!6353)) b!28763))

(declare-fun m!30683 () Bool)

(assert (=> b!28765 m!30683))

(declare-fun m!30685 () Bool)

(assert (=> b!28765 m!30685))

(assert (=> b!28765 m!30683))

(assert (=> b!28765 m!30685))

(declare-fun m!30687 () Bool)

(assert (=> b!28765 m!30687))

(declare-fun m!30689 () Bool)

(assert (=> d!15209 m!30689))

(declare-fun m!30691 () Bool)

(assert (=> d!15209 m!30691))

(assert (=> d!14867 d!15209))

(assert (=> d!14867 d!14885))

(assert (=> d!14867 d!14803))

(assert (=> d!14867 d!14839))

(assert (=> b!28222 d!15149))

(assert (=> b!28222 d!15147))

(assert (=> b!28104 d!14963))

(assert (=> b!28104 d!14859))

(assert (=> b!28104 d!14861))

(declare-fun d!15211 () Bool)

(assert (=> d!15211 (= (isEmpty!320 (right!711 (right!711 (right!711 xs!533)))) (= (right!711 (right!711 (right!711 xs!533))) Empty!74))))

(assert (=> b!28237 d!15211))

(declare-fun b!28767 () Bool)

(declare-fun e!14709 () Int)

(declare-fun lt!5096 () Int)

(declare-fun lt!5098 () Int)

(assert (=> b!28767 (= e!14709 (+ 1 (ite (>= lt!5096 lt!5098) lt!5096 lt!5098)))))

(assert (=> b!28767 (= lt!5098 (level!52 (right!711 lt!4834)))))

(assert (=> b!28767 (= lt!5096 (level!52 (left!708 lt!4834)))))

(declare-fun d!15213 () Bool)

(declare-fun lt!5097 () Int)

(assert (=> d!15213 (>= lt!5097 0)))

(assert (=> d!15213 (= lt!5097 e!14709)))

(declare-fun c!6354 () Bool)

(assert (=> d!15213 (= c!6354 (or (is-Empty!74 lt!4834) (is-Single!63 lt!4834)))))

(assert (=> d!15213 (= (level!52 lt!4834) lt!5097)))

(declare-fun b!28766 () Bool)

(assert (=> b!28766 (= e!14709 0)))

(assert (= (and d!15213 c!6354) b!28766))

(assert (= (and d!15213 (not c!6354)) b!28767))

(declare-fun m!30693 () Bool)

(assert (=> b!28767 m!30693))

(declare-fun m!30695 () Bool)

(assert (=> b!28767 m!30695))

(assert (=> b!28047 d!15213))

(assert (=> b!28215 d!14889))

(declare-fun b!28770 () Bool)

(declare-fun res!13151 () Bool)

(declare-fun e!14711 () Bool)

(assert (=> b!28770 (=> (not res!13151) (not e!14711))))

(assert (=> b!28770 (= res!13151 (concInv!58 (left!708 (right!711 (right!711 res!5536)))))))

(declare-fun b!28768 () Bool)

(declare-fun e!14710 () Bool)

(assert (=> b!28768 (= e!14710 e!14711)))

(declare-fun res!13154 () Bool)

(assert (=> b!28768 (=> (not res!13154) (not e!14711))))

(assert (=> b!28768 (= res!13154 (not (isEmpty!320 (left!708 (right!711 (right!711 res!5536))))))))

(declare-fun b!28771 () Bool)

(assert (=> b!28771 (= e!14711 (concInv!58 (right!711 (right!711 (right!711 res!5536)))))))

(declare-fun d!15215 () Bool)

(declare-fun res!13152 () Bool)

(assert (=> d!15215 (=> res!13152 e!14710)))

(assert (=> d!15215 (= res!13152 (not (is-CC!63 (right!711 (right!711 res!5536)))))))

(assert (=> d!15215 (= (concInv!58 (right!711 (right!711 res!5536))) e!14710)))

(declare-fun b!28769 () Bool)

(declare-fun res!13153 () Bool)

(assert (=> b!28769 (=> (not res!13153) (not e!14711))))

(assert (=> b!28769 (= res!13153 (not (isEmpty!320 (right!711 (right!711 (right!711 res!5536))))))))

(assert (= (and d!15215 (not res!13152)) b!28768))

(assert (= (and b!28768 res!13154) b!28769))

(assert (= (and b!28769 res!13153) b!28770))

(assert (= (and b!28770 res!13151) b!28771))

(declare-fun m!30697 () Bool)

(assert (=> b!28770 m!30697))

(declare-fun m!30699 () Bool)

(assert (=> b!28768 m!30699))

(declare-fun m!30701 () Bool)

(assert (=> b!28771 m!30701))

(declare-fun m!30703 () Bool)

(assert (=> b!28769 m!30703))

(assert (=> b!28249 d!15215))

(declare-fun b!28773 () Bool)

(declare-fun e!14712 () Int)

(declare-fun lt!5099 () Int)

(declare-fun lt!5101 () Int)

(assert (=> b!28773 (= e!14712 (+ 1 (ite (>= lt!5099 lt!5101) lt!5099 lt!5101)))))

(assert (=> b!28773 (= lt!5101 (level!52 (right!711 (right!711 (right!711 (left!708 xs!533))))))))

(assert (=> b!28773 (= lt!5099 (level!52 (left!708 (right!711 (right!711 (left!708 xs!533))))))))

(declare-fun d!15217 () Bool)

(declare-fun lt!5100 () Int)

(assert (=> d!15217 (>= lt!5100 0)))

(assert (=> d!15217 (= lt!5100 e!14712)))

(declare-fun c!6355 () Bool)

(assert (=> d!15217 (= c!6355 (or (is-Empty!74 (right!711 (right!711 (left!708 xs!533)))) (is-Single!63 (right!711 (right!711 (left!708 xs!533))))))))

(assert (=> d!15217 (= (level!52 (right!711 (right!711 (left!708 xs!533)))) lt!5100)))

(declare-fun b!28772 () Bool)

(assert (=> b!28772 (= e!14712 0)))

(assert (= (and d!15217 c!6355) b!28772))

(assert (= (and d!15217 (not c!6355)) b!28773))

(declare-fun m!30705 () Bool)

(assert (=> b!28773 m!30705))

(declare-fun m!30707 () Bool)

(assert (=> b!28773 m!30707))

(assert (=> b!28066 d!15217))

(declare-fun b!28775 () Bool)

(declare-fun e!14713 () Int)

(declare-fun lt!5102 () Int)

(declare-fun lt!5104 () Int)

(assert (=> b!28775 (= e!14713 (+ 1 (ite (>= lt!5102 lt!5104) lt!5102 lt!5104)))))

(assert (=> b!28775 (= lt!5104 (level!52 (right!711 (left!708 (right!711 (left!708 xs!533))))))))

(assert (=> b!28775 (= lt!5102 (level!52 (left!708 (left!708 (right!711 (left!708 xs!533))))))))

(declare-fun d!15219 () Bool)

(declare-fun lt!5103 () Int)

(assert (=> d!15219 (>= lt!5103 0)))

(assert (=> d!15219 (= lt!5103 e!14713)))

(declare-fun c!6356 () Bool)

(assert (=> d!15219 (= c!6356 (or (is-Empty!74 (left!708 (right!711 (left!708 xs!533)))) (is-Single!63 (left!708 (right!711 (left!708 xs!533))))))))

(assert (=> d!15219 (= (level!52 (left!708 (right!711 (left!708 xs!533)))) lt!5103)))

(declare-fun b!28774 () Bool)

(assert (=> b!28774 (= e!14713 0)))

(assert (= (and d!15219 c!6356) b!28774))

(assert (= (and d!15219 (not c!6356)) b!28775))

(declare-fun m!30709 () Bool)

(assert (=> b!28775 m!30709))

(declare-fun m!30711 () Bool)

(assert (=> b!28775 m!30711))

(assert (=> b!28066 d!15219))

(declare-fun b!28778 () Bool)

(declare-fun res!13155 () Bool)

(declare-fun e!14715 () Bool)

(assert (=> b!28778 (=> (not res!13155) (not e!14715))))

(assert (=> b!28778 (= res!13155 (concInv!58 (left!708 (left!708 (right!711 (right!711 xs!533))))))))

(declare-fun b!28776 () Bool)

(declare-fun e!14714 () Bool)

(assert (=> b!28776 (= e!14714 e!14715)))

(declare-fun res!13158 () Bool)

(assert (=> b!28776 (=> (not res!13158) (not e!14715))))

(assert (=> b!28776 (= res!13158 (not (isEmpty!320 (left!708 (left!708 (right!711 (right!711 xs!533)))))))))

(declare-fun b!28779 () Bool)

(assert (=> b!28779 (= e!14715 (concInv!58 (right!711 (left!708 (right!711 (right!711 xs!533))))))))

(declare-fun d!15221 () Bool)

(declare-fun res!13156 () Bool)

(assert (=> d!15221 (=> res!13156 e!14714)))

(assert (=> d!15221 (= res!13156 (not (is-CC!63 (left!708 (right!711 (right!711 xs!533))))))))

(assert (=> d!15221 (= (concInv!58 (left!708 (right!711 (right!711 xs!533)))) e!14714)))

(declare-fun b!28777 () Bool)

(declare-fun res!13157 () Bool)

(assert (=> b!28777 (=> (not res!13157) (not e!14715))))

(assert (=> b!28777 (= res!13157 (not (isEmpty!320 (right!711 (left!708 (right!711 (right!711 xs!533)))))))))

(assert (= (and d!15221 (not res!13156)) b!28776))

(assert (= (and b!28776 res!13158) b!28777))

(assert (= (and b!28777 res!13157) b!28778))

(assert (= (and b!28778 res!13155) b!28779))

(declare-fun m!30713 () Bool)

(assert (=> b!28778 m!30713))

(declare-fun m!30715 () Bool)

(assert (=> b!28776 m!30715))

(declare-fun m!30717 () Bool)

(assert (=> b!28779 m!30717))

(declare-fun m!30719 () Bool)

(assert (=> b!28777 m!30719))

(assert (=> b!28238 d!15221))

(declare-fun d!15223 () Bool)

(assert (=> d!15223 (= (isEmpty!320 (left!708 (left!708 ys!77))) (= (left!708 (left!708 ys!77)) Empty!74))))

(assert (=> b!28133 d!15223))

(declare-fun b!28782 () Bool)

(declare-fun res!13159 () Bool)

(declare-fun e!14717 () Bool)

(assert (=> b!28782 (=> (not res!13159) (not e!14717))))

(assert (=> b!28782 (= res!13159 (concInv!58 (left!708 (left!708 (right!711 xs!533)))))))

(declare-fun b!28780 () Bool)

(declare-fun e!14716 () Bool)

(assert (=> b!28780 (= e!14716 e!14717)))

(declare-fun res!13162 () Bool)

(assert (=> b!28780 (=> (not res!13162) (not e!14717))))

(assert (=> b!28780 (= res!13162 (not (isEmpty!320 (left!708 (left!708 (right!711 xs!533))))))))

(declare-fun b!28783 () Bool)

(assert (=> b!28783 (= e!14717 (concInv!58 (right!711 (left!708 (right!711 xs!533)))))))

(declare-fun d!15225 () Bool)

(declare-fun res!13160 () Bool)

(assert (=> d!15225 (=> res!13160 e!14716)))

(assert (=> d!15225 (= res!13160 (not (is-CC!63 (left!708 (right!711 xs!533)))))))

(assert (=> d!15225 (= (concInv!58 (left!708 (right!711 xs!533))) e!14716)))

(declare-fun b!28781 () Bool)

(declare-fun res!13161 () Bool)

(assert (=> b!28781 (=> (not res!13161) (not e!14717))))

(assert (=> b!28781 (= res!13161 (not (isEmpty!320 (right!711 (left!708 (right!711 xs!533))))))))

(assert (= (and d!15225 (not res!13160)) b!28780))

(assert (= (and b!28780 res!13162) b!28781))

(assert (= (and b!28781 res!13161) b!28782))

(assert (= (and b!28782 res!13159) b!28783))

(declare-fun m!30721 () Bool)

(assert (=> b!28782 m!30721))

(declare-fun m!30723 () Bool)

(assert (=> b!28780 m!30723))

(declare-fun m!30725 () Bool)

(assert (=> b!28783 m!30725))

(declare-fun m!30727 () Bool)

(assert (=> b!28781 m!30727))

(assert (=> b!28111 d!15225))

(assert (=> b!28138 d!15085))

(assert (=> b!28138 d!15079))

(assert (=> b!28138 d!15081))

(assert (=> b!28138 d!14885))

(declare-fun b!28786 () Bool)

(declare-fun res!13163 () Bool)

(declare-fun e!14719 () Bool)

(assert (=> b!28786 (=> (not res!13163) (not e!14719))))

(assert (=> b!28786 (= res!13163 (concInv!58 (left!708 (left!708 (left!708 xs!533)))))))

(declare-fun b!28784 () Bool)

(declare-fun e!14718 () Bool)

(assert (=> b!28784 (= e!14718 e!14719)))

(declare-fun res!13166 () Bool)

(assert (=> b!28784 (=> (not res!13166) (not e!14719))))

(assert (=> b!28784 (= res!13166 (not (isEmpty!320 (left!708 (left!708 (left!708 xs!533))))))))

(declare-fun b!28787 () Bool)

(assert (=> b!28787 (= e!14719 (concInv!58 (right!711 (left!708 (left!708 xs!533)))))))

(declare-fun d!15227 () Bool)

(declare-fun res!13164 () Bool)

(assert (=> d!15227 (=> res!13164 e!14718)))

(assert (=> d!15227 (= res!13164 (not (is-CC!63 (left!708 (left!708 xs!533)))))))

(assert (=> d!15227 (= (concInv!58 (left!708 (left!708 xs!533))) e!14718)))

(declare-fun b!28785 () Bool)

(declare-fun res!13165 () Bool)

(assert (=> b!28785 (=> (not res!13165) (not e!14719))))

(assert (=> b!28785 (= res!13165 (not (isEmpty!320 (right!711 (left!708 (left!708 xs!533))))))))

(assert (= (and d!15227 (not res!13164)) b!28784))

(assert (= (and b!28784 res!13166) b!28785))

(assert (= (and b!28785 res!13165) b!28786))

(assert (= (and b!28786 res!13163) b!28787))

(declare-fun m!30729 () Bool)

(assert (=> b!28786 m!30729))

(declare-fun m!30731 () Bool)

(assert (=> b!28784 m!30731))

(declare-fun m!30733 () Bool)

(assert (=> b!28787 m!30733))

(declare-fun m!30735 () Bool)

(assert (=> b!28785 m!30735))

(assert (=> b!28158 d!15227))

(declare-fun d!15229 () Bool)

(assert (=> d!15229 (= (isEmpty!320 (right!711 lt!4807)) (= (right!711 lt!4807) Empty!74))))

(assert (=> b!28243 d!15229))

(declare-fun b!28791 () Bool)

(declare-fun lt!5105 () List!361)

(declare-fun e!14721 () Bool)

(assert (=> b!28791 (= e!14721 (or (not (= (toList!116 (left!708 (left!708 ys!77))) Nil!356)) (= lt!5105 (t!4375 (toList!116 xs!533)))))))

(declare-fun b!28788 () Bool)

(declare-fun e!14720 () List!361)

(assert (=> b!28788 (= e!14720 (toList!116 (left!708 (left!708 ys!77))))))

(declare-fun d!15231 () Bool)

(assert (=> d!15231 e!14721))

(declare-fun res!13168 () Bool)

(assert (=> d!15231 (=> (not res!13168) (not e!14721))))

(assert (=> d!15231 (= res!13168 (= (content!71 lt!5105) (union (content!71 (t!4375 (toList!116 xs!533))) (content!71 (toList!116 (left!708 (left!708 ys!77)))))))))

(assert (=> d!15231 (= lt!5105 e!14720)))

(declare-fun c!6357 () Bool)

(assert (=> d!15231 (= c!6357 (is-Nil!356 (t!4375 (toList!116 xs!533))))))

(assert (=> d!15231 (= (++!41 (t!4375 (toList!116 xs!533)) (toList!116 (left!708 (left!708 ys!77)))) lt!5105)))

(declare-fun b!28789 () Bool)

(assert (=> b!28789 (= e!14720 (Cons!355 (h!272 (t!4375 (toList!116 xs!533))) (++!41 (t!4375 (t!4375 (toList!116 xs!533))) (toList!116 (left!708 (left!708 ys!77))))))))

(declare-fun b!28790 () Bool)

(declare-fun res!13167 () Bool)

(assert (=> b!28790 (=> (not res!13167) (not e!14721))))

(assert (=> b!28790 (= res!13167 (= (size!271 lt!5105) (+ (size!271 (t!4375 (toList!116 xs!533))) (size!271 (toList!116 (left!708 (left!708 ys!77)))))))))

(assert (= (and d!15231 c!6357) b!28788))

(assert (= (and d!15231 (not c!6357)) b!28789))

(assert (= (and d!15231 res!13168) b!28790))

(assert (= (and b!28790 res!13167) b!28791))

(declare-fun m!30737 () Bool)

(assert (=> d!15231 m!30737))

(assert (=> d!15231 m!29871))

(assert (=> d!15231 m!29381))

(assert (=> d!15231 m!29715))

(assert (=> b!28789 m!29381))

(declare-fun m!30739 () Bool)

(assert (=> b!28789 m!30739))

(declare-fun m!30741 () Bool)

(assert (=> b!28790 m!30741))

(assert (=> b!28790 m!29921))

(assert (=> b!28790 m!29381))

(assert (=> b!28790 m!29723))

(assert (=> b!28193 d!15231))

(declare-fun d!15233 () Bool)

(declare-fun lt!5106 () Int)

(assert (=> d!15233 (>= lt!5106 0)))

(declare-fun e!14722 () Int)

(assert (=> d!15233 (= lt!5106 e!14722)))

(declare-fun c!6358 () Bool)

(assert (=> d!15233 (= c!6358 (is-Nil!356 lt!4884))))

(assert (=> d!15233 (= (size!271 lt!4884) lt!5106)))

(declare-fun b!28792 () Bool)

(assert (=> b!28792 (= e!14722 0)))

(declare-fun b!28793 () Bool)

(assert (=> b!28793 (= e!14722 (+ 1 (size!271 (t!4375 lt!4884))))))

(assert (= (and d!15233 c!6358) b!28792))

(assert (= (and d!15233 (not c!6358)) b!28793))

(declare-fun m!30743 () Bool)

(assert (=> b!28793 m!30743))

(assert (=> d!14859 d!15233))

(declare-fun b!28794 () Bool)

(declare-fun e!14723 () Int)

(assert (=> b!28794 (= e!14723 0)))

(declare-fun b!28797 () Bool)

(declare-fun e!14724 () Int)

(assert (=> b!28797 (= e!14724 (+ (size!272 (left!708 (left!708 (left!708 ys!77)))) (size!272 (right!711 (left!708 (left!708 ys!77))))))))

(declare-fun b!28796 () Bool)

(assert (=> b!28796 (= e!14724 1)))

(declare-fun d!15235 () Bool)

(declare-fun lt!5107 () Int)

(assert (=> d!15235 (>= lt!5107 0)))

(assert (=> d!15235 (= lt!5107 e!14723)))

(declare-fun c!6359 () Bool)

(assert (=> d!15235 (= c!6359 (is-Empty!74 (left!708 (left!708 ys!77))))))

(assert (=> d!15235 (= (size!272 (left!708 (left!708 ys!77))) lt!5107)))

(declare-fun b!28795 () Bool)

(assert (=> b!28795 (= e!14723 e!14724)))

(declare-fun c!6360 () Bool)

(assert (=> b!28795 (= c!6360 (is-Single!63 (left!708 (left!708 ys!77))))))

(assert (= (and b!28795 c!6360) b!28796))

(assert (= (and b!28795 (not c!6360)) b!28797))

(assert (= (and d!15235 c!6359) b!28794))

(assert (= (and d!15235 (not c!6359)) b!28795))

(declare-fun m!30745 () Bool)

(assert (=> b!28797 m!30745))

(declare-fun m!30747 () Bool)

(assert (=> b!28797 m!30747))

(assert (=> d!14859 d!15235))

(declare-fun b!28798 () Bool)

(declare-fun e!14725 () Bool)

(assert (=> b!28798 (= e!14725 (= (++!41 (++!41 (t!4375 (toList!116 (left!708 xs!533))) (toList!116 (left!708 (right!711 xs!533)))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))) (++!41 (t!4375 (toList!116 (left!708 xs!533))) (++!41 (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))))))))

(declare-fun lt!5108 () Bool)

(assert (=> b!28798 (= lt!5108 (appendAssoc!9 (t!4375 (t!4375 (toList!116 (left!708 xs!533)))) (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))))))

(declare-fun d!15237 () Bool)

(assert (=> d!15237 e!14725))

(declare-fun c!6361 () Bool)

(assert (=> d!15237 (= c!6361 (is-Cons!355 (t!4375 (toList!116 (left!708 xs!533)))))))

(assert (=> d!15237 (= (appendAssoc!9 (t!4375 (toList!116 (left!708 xs!533))) (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))) true)))

(declare-fun b!28799 () Bool)

(assert (=> b!28799 (= e!14725 (= (++!41 (++!41 (t!4375 (toList!116 (left!708 xs!533))) (toList!116 (left!708 (right!711 xs!533)))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))) (++!41 (t!4375 (toList!116 (left!708 xs!533))) (++!41 (toList!116 (left!708 (right!711 xs!533))) (++!41 (toList!116 (right!711 (right!711 xs!533))) (toList!116 ys!77))))))))

(assert (= (and d!15237 c!6361) b!28798))

(assert (= (and d!15237 (not c!6361)) b!28799))

(assert (=> b!28798 m!29397))

(assert (=> b!28798 m!29403))

(declare-fun m!30749 () Bool)

(assert (=> b!28798 m!30749))

(assert (=> b!28798 m!29397))

(assert (=> b!28798 m!30551))

(assert (=> b!28798 m!29619))

(assert (=> b!28798 m!30559))

(assert (=> b!28798 m!29397))

(assert (=> b!28798 m!29403))

(assert (=> b!28798 m!29619))

(assert (=> b!28798 m!30551))

(assert (=> b!28798 m!29403))

(declare-fun m!30751 () Bool)

(assert (=> b!28798 m!30751))

(assert (=> b!28799 m!29397))

(assert (=> b!28799 m!30551))

(assert (=> b!28799 m!30551))

(assert (=> b!28799 m!29403))

(assert (=> b!28799 m!30751))

(assert (=> b!28799 m!29397))

(assert (=> b!28799 m!29403))

(assert (=> b!28799 m!29619))

(assert (=> b!28799 m!29619))

(assert (=> b!28799 m!30559))

(assert (=> b!28220 d!15237))

(assert (=> b!28220 d!15081))

(assert (=> b!28220 d!15157))

(assert (=> b!28220 d!15159))

(assert (=> b!28220 d!15161))

(declare-fun b!28803 () Bool)

(declare-fun e!14727 () Bool)

(declare-fun lt!5109 () List!361)

(assert (=> b!28803 (= e!14727 (or (not (= (toList!116 ys!77) Nil!356)) (= lt!5109 (t!4375 (toList!116 (right!711 (right!711 xs!533)))))))))

(declare-fun b!28800 () Bool)

(declare-fun e!14726 () List!361)

(assert (=> b!28800 (= e!14726 (toList!116 ys!77))))

(declare-fun d!15239 () Bool)

(assert (=> d!15239 e!14727))

(declare-fun res!13170 () Bool)

(assert (=> d!15239 (=> (not res!13170) (not e!14727))))

(assert (=> d!15239 (= res!13170 (= (content!71 lt!5109) (union (content!71 (t!4375 (toList!116 (right!711 (right!711 xs!533))))) (content!71 (toList!116 ys!77)))))))

(assert (=> d!15239 (= lt!5109 e!14726)))

(declare-fun c!6362 () Bool)

(assert (=> d!15239 (= c!6362 (is-Nil!356 (t!4375 (toList!116 (right!711 (right!711 xs!533))))))))

(assert (=> d!15239 (= (++!41 (t!4375 (toList!116 (right!711 (right!711 xs!533)))) (toList!116 ys!77)) lt!5109)))

(declare-fun b!28801 () Bool)

(assert (=> b!28801 (= e!14726 (Cons!355 (h!272 (t!4375 (toList!116 (right!711 (right!711 xs!533))))) (++!41 (t!4375 (t!4375 (toList!116 (right!711 (right!711 xs!533))))) (toList!116 ys!77))))))

(declare-fun b!28802 () Bool)

(declare-fun res!13169 () Bool)

(assert (=> b!28802 (=> (not res!13169) (not e!14727))))

(assert (=> b!28802 (= res!13169 (= (size!271 lt!5109) (+ (size!271 (t!4375 (toList!116 (right!711 (right!711 xs!533))))) (size!271 (toList!116 ys!77)))))))

(assert (= (and d!15239 c!6362) b!28800))

(assert (= (and d!15239 (not c!6362)) b!28801))

(assert (= (and d!15239 res!13170) b!28802))

(assert (= (and b!28802 res!13169) b!28803))

(declare-fun m!30753 () Bool)

(assert (=> d!15239 m!30753))

(assert (=> d!15239 m!30393))

(assert (=> d!15239 m!29365))

(assert (=> d!15239 m!29749))

(assert (=> b!28801 m!29365))

(declare-fun m!30755 () Bool)

(assert (=> b!28801 m!30755))

(declare-fun m!30757 () Bool)

(assert (=> b!28802 m!30757))

(assert (=> b!28802 m!29853))

(assert (=> b!28802 m!29365))

(assert (=> b!28802 m!29755))

(assert (=> b!28217 d!15239))

(assert (=> b!28212 d!14787))

(assert (=> b!28212 d!14785))

(declare-fun d!15241 () Bool)

(assert (=> d!15241 (= (isEmpty!320 (left!708 (right!711 (right!711 xs!533)))) (= (left!708 (right!711 (right!711 xs!533))) Empty!74))))

(assert (=> b!28236 d!15241))

(declare-fun b!28806 () Bool)

(declare-fun res!13171 () Bool)

(declare-fun e!14729 () Bool)

(assert (=> b!28806 (=> (not res!13171) (not e!14729))))

(assert (=> b!28806 (= res!13171 (concInv!58 (left!708 (right!711 (left!708 ys!77)))))))

(declare-fun b!28804 () Bool)

(declare-fun e!14728 () Bool)

(assert (=> b!28804 (= e!14728 e!14729)))

(declare-fun res!13174 () Bool)

(assert (=> b!28804 (=> (not res!13174) (not e!14729))))

(assert (=> b!28804 (= res!13174 (not (isEmpty!320 (left!708 (right!711 (left!708 ys!77))))))))

(declare-fun b!28807 () Bool)

(assert (=> b!28807 (= e!14729 (concInv!58 (right!711 (right!711 (left!708 ys!77)))))))

(declare-fun d!15243 () Bool)

(declare-fun res!13172 () Bool)

(assert (=> d!15243 (=> res!13172 e!14728)))

(assert (=> d!15243 (= res!13172 (not (is-CC!63 (right!711 (left!708 ys!77)))))))

(assert (=> d!15243 (= (concInv!58 (right!711 (left!708 ys!77))) e!14728)))

(declare-fun b!28805 () Bool)

(declare-fun res!13173 () Bool)

(assert (=> b!28805 (=> (not res!13173) (not e!14729))))

(assert (=> b!28805 (= res!13173 (not (isEmpty!320 (right!711 (right!711 (left!708 ys!77))))))))

(assert (= (and d!15243 (not res!13172)) b!28804))

(assert (= (and b!28804 res!13174) b!28805))

(assert (= (and b!28805 res!13173) b!28806))

(assert (= (and b!28806 res!13171) b!28807))

(declare-fun m!30759 () Bool)

(assert (=> b!28806 m!30759))

(declare-fun m!30761 () Bool)

(assert (=> b!28804 m!30761))

(declare-fun m!30763 () Bool)

(assert (=> b!28807 m!30763))

(declare-fun m!30765 () Bool)

(assert (=> b!28805 m!30765))

(assert (=> b!28136 d!15243))

(declare-fun b!28810 () Bool)

(declare-fun res!13175 () Bool)

(declare-fun e!14731 () Bool)

(assert (=> b!28810 (=> (not res!13175) (not e!14731))))

(assert (=> b!28810 (= res!13175 (concInv!58 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))

(declare-fun b!28808 () Bool)

(declare-fun e!14730 () Bool)

(assert (=> b!28808 (= e!14730 e!14731)))

(declare-fun res!13178 () Bool)

(assert (=> b!28808 (=> (not res!13178) (not e!14731))))

(assert (=> b!28808 (= res!13178 (not (isEmpty!320 (left!708 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))

(declare-fun b!28811 () Bool)

(assert (=> b!28811 (= e!14731 (concInv!58 (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))

(declare-fun d!15245 () Bool)

(declare-fun res!13176 () Bool)

(assert (=> d!15245 (=> res!13176 e!14730)))

(assert (=> d!15245 (= res!13176 (not (is-CC!63 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))))))))

(assert (=> d!15245 (= (concInv!58 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) e!14730)))

(declare-fun b!28809 () Bool)

(declare-fun res!13177 () Bool)

(assert (=> b!28809 (=> (not res!13177) (not e!14731))))

(assert (=> b!28809 (= res!13177 (not (isEmpty!320 (right!711 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))

(assert (= (and d!15245 (not res!13176)) b!28808))

(assert (= (and b!28808 res!13178) b!28809))

(assert (= (and b!28809 res!13177) b!28810))

(assert (= (and b!28810 res!13175) b!28811))

(declare-fun m!30767 () Bool)

(assert (=> b!28810 m!30767))

(declare-fun m!30769 () Bool)

(assert (=> b!28808 m!30769))

(declare-fun m!30771 () Bool)

(assert (=> b!28811 m!30771))

(declare-fun m!30773 () Bool)

(assert (=> b!28809 m!30773))

(assert (=> b!28064 d!15245))

(declare-fun d!15247 () Bool)

(declare-fun res!13180 () Bool)

(declare-fun e!14732 () Bool)

(assert (=> d!15247 (=> res!13180 e!14732)))

(assert (=> d!15247 (= res!13180 (not (is-CC!63 (right!711 lt!4807))))))

(assert (=> d!15247 (= (balanced!59 (right!711 lt!4807)) e!14732)))

(declare-fun b!28814 () Bool)

(declare-fun res!13182 () Bool)

(declare-fun e!14733 () Bool)

(assert (=> b!28814 (=> (not res!13182) (not e!14733))))

(assert (=> b!28814 (= res!13182 (balanced!59 (left!708 (right!711 lt!4807))))))

(declare-fun b!28812 () Bool)

(assert (=> b!28812 (= e!14732 e!14733)))

(declare-fun res!13179 () Bool)

(assert (=> b!28812 (=> (not res!13179) (not e!14733))))

(assert (=> b!28812 (= res!13179 (>= (- (level!52 (left!708 (right!711 lt!4807))) (level!52 (right!711 (right!711 lt!4807)))) (- 1)))))

(declare-fun b!28815 () Bool)

(assert (=> b!28815 (= e!14733 (balanced!59 (right!711 (right!711 lt!4807))))))

(declare-fun b!28813 () Bool)

(declare-fun res!13181 () Bool)

(assert (=> b!28813 (=> (not res!13181) (not e!14733))))

(assert (=> b!28813 (= res!13181 (<= (- (level!52 (left!708 (right!711 lt!4807))) (level!52 (right!711 (right!711 lt!4807)))) 1))))

(assert (= (and d!15247 (not res!13180)) b!28812))

(assert (= (and b!28812 res!13179) b!28813))

(assert (= (and b!28813 res!13181) b!28814))

(assert (= (and b!28814 res!13182) b!28815))

(declare-fun m!30775 () Bool)

(assert (=> b!28814 m!30775))

(assert (=> b!28812 m!29863))

(assert (=> b!28812 m!29861))

(declare-fun m!30777 () Bool)

(assert (=> b!28815 m!30777))

(assert (=> b!28813 m!29863))

(assert (=> b!28813 m!29861))

(assert (=> b!28124 d!15247))

(declare-fun b!28817 () Bool)

(declare-fun e!14734 () Int)

(declare-fun lt!5110 () Int)

(declare-fun lt!5112 () Int)

(assert (=> b!28817 (= e!14734 (+ 1 (ite (>= lt!5110 lt!5112) lt!5110 lt!5112)))))

(assert (=> b!28817 (= lt!5112 (level!52 (right!711 (right!711 (right!711 nrr!4)))))))

(assert (=> b!28817 (= lt!5110 (level!52 (left!708 (right!711 (right!711 nrr!4)))))))

(declare-fun d!15249 () Bool)

(declare-fun lt!5111 () Int)

(assert (=> d!15249 (>= lt!5111 0)))

(assert (=> d!15249 (= lt!5111 e!14734)))

(declare-fun c!6363 () Bool)

(assert (=> d!15249 (= c!6363 (or (is-Empty!74 (right!711 (right!711 nrr!4))) (is-Single!63 (right!711 (right!711 nrr!4)))))))

(assert (=> d!15249 (= (level!52 (right!711 (right!711 nrr!4))) lt!5111)))

(declare-fun b!28816 () Bool)

(assert (=> b!28816 (= e!14734 0)))

(assert (= (and d!15249 c!6363) b!28816))

(assert (= (and d!15249 (not c!6363)) b!28817))

(declare-fun m!30779 () Bool)

(assert (=> b!28817 m!30779))

(declare-fun m!30781 () Bool)

(assert (=> b!28817 m!30781))

(assert (=> b!28130 d!15249))

(declare-fun b!28819 () Bool)

(declare-fun e!14735 () Int)

(declare-fun lt!5113 () Int)

(declare-fun lt!5115 () Int)

(assert (=> b!28819 (= e!14735 (+ 1 (ite (>= lt!5113 lt!5115) lt!5113 lt!5115)))))

(assert (=> b!28819 (= lt!5115 (level!52 (right!711 (left!708 (right!711 nrr!4)))))))

(assert (=> b!28819 (= lt!5113 (level!52 (left!708 (left!708 (right!711 nrr!4)))))))

(declare-fun d!15251 () Bool)

(declare-fun lt!5114 () Int)

(assert (=> d!15251 (>= lt!5114 0)))

(assert (=> d!15251 (= lt!5114 e!14735)))

(declare-fun c!6364 () Bool)

(assert (=> d!15251 (= c!6364 (or (is-Empty!74 (left!708 (right!711 nrr!4))) (is-Single!63 (left!708 (right!711 nrr!4)))))))

(assert (=> d!15251 (= (level!52 (left!708 (right!711 nrr!4))) lt!5114)))

(declare-fun b!28818 () Bool)

(assert (=> b!28818 (= e!14735 0)))

(assert (= (and d!15251 c!6364) b!28818))

(assert (= (and d!15251 (not c!6364)) b!28819))

(declare-fun m!30783 () Bool)

(assert (=> b!28819 m!30783))

(declare-fun m!30785 () Bool)

(assert (=> b!28819 m!30785))

(assert (=> b!28130 d!15251))

(declare-fun e!14737 () Bool)

(declare-fun b!28823 () Bool)

(declare-fun lt!5116 () List!361)

(assert (=> b!28823 (= e!14737 (or (not (= (toList!116 (right!711 ys!77)) Nil!356)) (= lt!5116 (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77)))))))))

(declare-fun b!28820 () Bool)

(declare-fun e!14736 () List!361)

(assert (=> b!28820 (= e!14736 (toList!116 (right!711 ys!77)))))

(declare-fun d!15253 () Bool)

(assert (=> d!15253 e!14737))

(declare-fun res!13184 () Bool)

(assert (=> d!15253 (=> (not res!13184) (not e!14737))))

(assert (=> d!15253 (= res!13184 (= (content!71 lt!5116) (union (content!71 (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77))))) (content!71 (toList!116 (right!711 ys!77))))))))

(assert (=> d!15253 (= lt!5116 e!14736)))

(declare-fun c!6365 () Bool)

(assert (=> d!15253 (= c!6365 (is-Nil!356 (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77))))))))

(assert (=> d!15253 (= (++!41 (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77)))) (toList!116 (right!711 ys!77))) lt!5116)))

(declare-fun b!28821 () Bool)

(assert (=> b!28821 (= e!14736 (Cons!355 (h!272 (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77))))) (++!41 (t!4375 (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77))))) (toList!116 (right!711 ys!77)))))))

(declare-fun b!28822 () Bool)

(declare-fun res!13183 () Bool)

(assert (=> b!28822 (=> (not res!13183) (not e!14737))))

(assert (=> b!28822 (= res!13183 (= (size!271 lt!5116) (+ (size!271 (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 ys!77))))) (size!271 (toList!116 (right!711 ys!77))))))))

(assert (= (and d!15253 c!6365) b!28820))

(assert (= (and d!15253 (not c!6365)) b!28821))

(assert (= (and d!15253 res!13184) b!28822))

(assert (= (and b!28822 res!13183) b!28823))

(declare-fun m!30787 () Bool)

(assert (=> d!15253 m!30787))

(assert (=> d!15253 m!29727))

(declare-fun m!30789 () Bool)

(assert (=> d!15253 m!30789))

(assert (=> d!15253 m!29377))

(assert (=> d!15253 m!29943))

(assert (=> b!28821 m!29377))

(declare-fun m!30791 () Bool)

(assert (=> b!28821 m!30791))

(declare-fun m!30793 () Bool)

(assert (=> b!28822 m!30793))

(assert (=> b!28822 m!29727))

(declare-fun m!30795 () Bool)

(assert (=> b!28822 m!30795))

(assert (=> b!28822 m!29377))

(assert (=> b!28822 m!29951))

(assert (=> b!28197 d!15253))

(assert (=> b!28197 d!14959))

(declare-fun b!28827 () Bool)

(declare-fun e!14739 () Bool)

(declare-fun lt!5117 () List!361)

(assert (=> b!28827 (= e!14739 (or (not (= (++!41 (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))) Nil!356)) (= lt!5117 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))))))))

(declare-fun b!28824 () Bool)

(declare-fun e!14738 () List!361)

(assert (=> b!28824 (= e!14738 (++!41 (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))))))

(declare-fun d!15255 () Bool)

(assert (=> d!15255 e!14739))

(declare-fun res!13186 () Bool)

(assert (=> d!15255 (=> (not res!13186) (not e!14739))))

(assert (=> d!15255 (= res!13186 (= (content!71 lt!5117) (union (content!71 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))) (content!71 (++!41 (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77)))))))))

(assert (=> d!15255 (= lt!5117 e!14738)))

(declare-fun c!6366 () Bool)

(assert (=> d!15255 (= c!6366 (is-Nil!356 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))))))

(assert (=> d!15255 (= (++!41 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))) (++!41 (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77)))) lt!5117)))

(declare-fun b!28825 () Bool)

(assert (=> b!28825 (= e!14738 (Cons!355 (h!272 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))) (++!41 (t!4375 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))) (++!41 (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))))))))

(declare-fun b!28826 () Bool)

(declare-fun res!13185 () Bool)

(assert (=> b!28826 (=> (not res!13185) (not e!14739))))

(assert (=> b!28826 (= res!13185 (= (size!271 lt!5117) (+ (size!271 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))) (size!271 (++!41 (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77)))))))))

(assert (= (and d!15255 c!6366) b!28824))

(assert (= (and d!15255 (not c!6366)) b!28825))

(assert (= (and d!15255 res!13186) b!28826))

(assert (= (and b!28826 res!13185) b!28827))

(declare-fun m!30797 () Bool)

(assert (=> d!15255 m!30797))

(assert (=> d!15255 m!29393))

(assert (=> d!15255 m!29985))

(assert (=> d!15255 m!29729))

(declare-fun m!30799 () Bool)

(assert (=> d!15255 m!30799))

(assert (=> b!28825 m!29729))

(declare-fun m!30801 () Bool)

(assert (=> b!28825 m!30801))

(declare-fun m!30803 () Bool)

(assert (=> b!28826 m!30803))

(assert (=> b!28826 m!29393))

(assert (=> b!28826 m!29993))

(assert (=> b!28826 m!29729))

(declare-fun m!30805 () Bool)

(assert (=> b!28826 m!30805))

(assert (=> b!28197 d!15255))

(declare-fun b!28831 () Bool)

(declare-fun e!14741 () Bool)

(declare-fun lt!5118 () List!361)

(assert (=> b!28831 (= e!14741 (or (not (= (toList!116 (right!711 ys!77)) Nil!356)) (= lt!5118 (toList!116 (right!711 (left!708 ys!77))))))))

(declare-fun b!28828 () Bool)

(declare-fun e!14740 () List!361)

(assert (=> b!28828 (= e!14740 (toList!116 (right!711 ys!77)))))

(declare-fun d!15257 () Bool)

(assert (=> d!15257 e!14741))

(declare-fun res!13188 () Bool)

(assert (=> d!15257 (=> (not res!13188) (not e!14741))))

(assert (=> d!15257 (= res!13188 (= (content!71 lt!5118) (union (content!71 (toList!116 (right!711 (left!708 ys!77)))) (content!71 (toList!116 (right!711 ys!77))))))))

(assert (=> d!15257 (= lt!5118 e!14740)))

(declare-fun c!6367 () Bool)

(assert (=> d!15257 (= c!6367 (is-Nil!356 (toList!116 (right!711 (left!708 ys!77)))))))

(assert (=> d!15257 (= (++!41 (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))) lt!5118)))

(declare-fun b!28829 () Bool)

(assert (=> b!28829 (= e!14740 (Cons!355 (h!272 (toList!116 (right!711 (left!708 ys!77)))) (++!41 (t!4375 (toList!116 (right!711 (left!708 ys!77)))) (toList!116 (right!711 ys!77)))))))

(declare-fun b!28830 () Bool)

(declare-fun res!13187 () Bool)

(assert (=> b!28830 (=> (not res!13187) (not e!14741))))

(assert (=> b!28830 (= res!13187 (= (size!271 lt!5118) (+ (size!271 (toList!116 (right!711 (left!708 ys!77)))) (size!271 (toList!116 (right!711 ys!77))))))))

(assert (= (and d!15257 c!6367) b!28828))

(assert (= (and d!15257 (not c!6367)) b!28829))

(assert (= (and d!15257 res!13188) b!28830))

(assert (= (and b!28830 res!13187) b!28831))

(declare-fun m!30807 () Bool)

(assert (=> d!15257 m!30807))

(assert (=> d!15257 m!29383))

(assert (=> d!15257 m!29987))

(assert (=> d!15257 m!29377))

(assert (=> d!15257 m!29943))

(assert (=> b!28829 m!29377))

(declare-fun m!30809 () Bool)

(assert (=> b!28829 m!30809))

(declare-fun m!30811 () Bool)

(assert (=> b!28830 m!30811))

(assert (=> b!28830 m!29383))

(assert (=> b!28830 m!29995))

(assert (=> b!28830 m!29377))

(assert (=> b!28830 m!29951))

(assert (=> b!28197 d!15257))

(declare-fun d!15259 () Bool)

(declare-fun c!6368 () Bool)

(assert (=> d!15259 (= c!6368 (is-Nil!356 lt!4891))))

(declare-fun e!14742 () (Set T!1829))

(assert (=> d!15259 (= (content!71 lt!4891) e!14742)))

(declare-fun b!28832 () Bool)

(assert (=> b!28832 (= e!14742 (as emptyset (Set T!1829)))))

(declare-fun b!28833 () Bool)

(assert (=> b!28833 (= e!14742 (union (insert (h!272 lt!4891) (as emptyset (Set T!1829))) (content!71 (t!4375 lt!4891))))))

(assert (= (and d!15259 c!6368) b!28832))

(assert (= (and d!15259 (not c!6368)) b!28833))

(declare-fun m!30813 () Bool)

(assert (=> b!28833 m!30813))

(declare-fun m!30815 () Bool)

(assert (=> b!28833 m!30815))

(assert (=> d!14873 d!15259))

(assert (=> d!14873 d!14927))

(assert (=> d!14873 d!15105))

(assert (=> b!28209 d!15055))

(assert (=> b!28209 d!15053))

(declare-fun d!15261 () Bool)

(assert (=> d!15261 (= (isEmpty!320 (left!708 (right!711 ys!77))) (= (left!708 (right!711 ys!77)) Empty!74))))

(assert (=> b!28226 d!15261))

(declare-fun b!28836 () Bool)

(declare-fun res!13189 () Bool)

(declare-fun e!14744 () Bool)

(assert (=> b!28836 (=> (not res!13189) (not e!14744))))

(assert (=> b!28836 (= res!13189 (concInv!58 (left!708 (right!711 (left!708 xs!533)))))))

(declare-fun b!28834 () Bool)

(declare-fun e!14743 () Bool)

(assert (=> b!28834 (= e!14743 e!14744)))

(declare-fun res!13192 () Bool)

(assert (=> b!28834 (=> (not res!13192) (not e!14744))))

(assert (=> b!28834 (= res!13192 (not (isEmpty!320 (left!708 (right!711 (left!708 xs!533))))))))

(declare-fun b!28837 () Bool)

(assert (=> b!28837 (= e!14744 (concInv!58 (right!711 (right!711 (left!708 xs!533)))))))

(declare-fun d!15263 () Bool)

(declare-fun res!13190 () Bool)

(assert (=> d!15263 (=> res!13190 e!14743)))

(assert (=> d!15263 (= res!13190 (not (is-CC!63 (right!711 (left!708 xs!533)))))))

(assert (=> d!15263 (= (concInv!58 (right!711 (left!708 xs!533))) e!14743)))

(declare-fun b!28835 () Bool)

(declare-fun res!13191 () Bool)

(assert (=> b!28835 (=> (not res!13191) (not e!14744))))

(assert (=> b!28835 (= res!13191 (not (isEmpty!320 (right!711 (right!711 (left!708 xs!533))))))))

(assert (= (and d!15263 (not res!13190)) b!28834))

(assert (= (and b!28834 res!13192) b!28835))

(assert (= (and b!28835 res!13191) b!28836))

(assert (= (and b!28836 res!13189) b!28837))

(declare-fun m!30817 () Bool)

(assert (=> b!28836 m!30817))

(declare-fun m!30819 () Bool)

(assert (=> b!28834 m!30819))

(declare-fun m!30821 () Bool)

(assert (=> b!28837 m!30821))

(declare-fun m!30823 () Bool)

(assert (=> b!28835 m!30823))

(assert (=> b!28159 d!15263))

(assert (=> b!28165 d!15115))

(assert (=> b!28165 d!15113))

(assert (=> d!14789 d!14953))

(assert (=> d!14789 d!14955))

(declare-fun b!28840 () Bool)

(declare-fun res!13193 () Bool)

(declare-fun e!14746 () Bool)

(assert (=> b!28840 (=> (not res!13193) (not e!14746))))

(assert (=> b!28840 (= res!13193 (concInv!58 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(declare-fun b!28838 () Bool)

(declare-fun e!14745 () Bool)

(assert (=> b!28838 (= e!14745 e!14746)))

(declare-fun res!13196 () Bool)

(assert (=> b!28838 (=> (not res!13196) (not e!14746))))

(assert (=> b!28838 (= res!13196 (not (isEmpty!320 (left!708 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))))))

(declare-fun b!28841 () Bool)

(assert (=> b!28841 (= e!14746 (concInv!58 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(declare-fun d!15265 () Bool)

(declare-fun res!13194 () Bool)

(assert (=> d!15265 (=> res!13194 e!14745)))

(assert (=> d!15265 (= res!13194 (not (is-CC!63 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))))))))

(assert (=> d!15265 (= (concInv!58 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) e!14745)))

(declare-fun b!28839 () Bool)

(declare-fun res!13195 () Bool)

(assert (=> b!28839 (=> (not res!13195) (not e!14746))))

(assert (=> b!28839 (= res!13195 (not (isEmpty!320 (right!711 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))))))))

(assert (= (and d!15265 (not res!13194)) b!28838))

(assert (= (and b!28838 res!13196) b!28839))

(assert (= (and b!28839 res!13195) b!28840))

(assert (= (and b!28840 res!13193) b!28841))

(declare-fun m!30825 () Bool)

(assert (=> b!28840 m!30825))

(declare-fun m!30827 () Bool)

(assert (=> b!28838 m!30827))

(declare-fun m!30829 () Bool)

(assert (=> b!28841 m!30829))

(declare-fun m!30831 () Bool)

(assert (=> b!28839 m!30831))

(assert (=> d!14789 d!15265))

(declare-fun d!15267 () Bool)

(assert (=> d!15267 (= (isEmpty!320 (left!708 (right!711 res!5536))) (= (left!708 (right!711 res!5536)) Empty!74))))

(assert (=> b!28246 d!15267))

(declare-fun d!15269 () Bool)

(assert (=> d!15269 (= (concatCorrectness!13 lt!4829 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533))) (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (= (toList!116 lt!4829) (++!41 (toList!116 (ite lt!4816 (ite (>= lt!4808 lt!4813) (right!711 (right!711 (right!711 xs!533))) (right!711 (right!711 (right!711 (right!711 xs!533))))) (right!711 (right!711 xs!533)))) (toList!116 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))))))))

(declare-fun bs!5098 () Bool)

(assert (= bs!5098 d!15269))

(assert (=> bs!5098 m!30289))

(assert (=> bs!5098 m!30307))

(declare-fun m!30833 () Bool)

(assert (=> bs!5098 m!30833))

(declare-fun m!30835 () Bool)

(assert (=> bs!5098 m!30835))

(assert (=> bs!5098 m!30307))

(assert (=> bs!5098 m!30289))

(assert (=> b!28063 d!15269))

(declare-fun d!15271 () Bool)

(declare-fun res!13198 () Bool)

(declare-fun e!14747 () Bool)

(assert (=> d!15271 (=> res!13198 e!14747)))

(assert (=> d!15271 (= res!13198 (not (is-CC!63 (left!708 (right!711 xs!533)))))))

(assert (=> d!15271 (= (balanced!59 (left!708 (right!711 xs!533))) e!14747)))

(declare-fun b!28844 () Bool)

(declare-fun res!13200 () Bool)

(declare-fun e!14748 () Bool)

(assert (=> b!28844 (=> (not res!13200) (not e!14748))))

(assert (=> b!28844 (= res!13200 (balanced!59 (left!708 (left!708 (right!711 xs!533)))))))

(declare-fun b!28842 () Bool)

(assert (=> b!28842 (= e!14747 e!14748)))

(declare-fun res!13197 () Bool)

(assert (=> b!28842 (=> (not res!13197) (not e!14748))))

(assert (=> b!28842 (= res!13197 (>= (- (level!52 (left!708 (left!708 (right!711 xs!533)))) (level!52 (right!711 (left!708 (right!711 xs!533))))) (- 1)))))

(declare-fun b!28845 () Bool)

(assert (=> b!28845 (= e!14748 (balanced!59 (right!711 (left!708 (right!711 xs!533)))))))

(declare-fun b!28843 () Bool)

(declare-fun res!13199 () Bool)

(assert (=> b!28843 (=> (not res!13199) (not e!14748))))

(assert (=> b!28843 (= res!13199 (<= (- (level!52 (left!708 (left!708 (right!711 xs!533)))) (level!52 (right!711 (left!708 (right!711 xs!533))))) 1))))

(assert (= (and d!15271 (not res!13198)) b!28842))

(assert (= (and b!28842 res!13197) b!28843))

(assert (= (and b!28843 res!13199) b!28844))

(assert (= (and b!28844 res!13200) b!28845))

(declare-fun m!30837 () Bool)

(assert (=> b!28844 m!30837))

(assert (=> b!28842 m!29459))

(assert (=> b!28842 m!29457))

(declare-fun m!30839 () Bool)

(assert (=> b!28845 m!30839))

(assert (=> b!28843 m!29459))

(assert (=> b!28843 m!29457))

(assert (=> b!28214 d!15271))

(declare-fun b!28849 () Bool)

(declare-fun e!14750 () Bool)

(declare-fun lt!5119 () List!361)

(assert (=> b!28849 (= e!14750 (or (not (= (toList!116 (right!711 (left!708 (left!708 ys!77)))) Nil!356)) (= lt!5119 (toList!116 (left!708 (left!708 (left!708 ys!77)))))))))

(declare-fun b!28846 () Bool)

(declare-fun e!14749 () List!361)

(assert (=> b!28846 (= e!14749 (toList!116 (right!711 (left!708 (left!708 ys!77)))))))

(declare-fun d!15273 () Bool)

(assert (=> d!15273 e!14750))

(declare-fun res!13202 () Bool)

(assert (=> d!15273 (=> (not res!13202) (not e!14750))))

(assert (=> d!15273 (= res!13202 (= (content!71 lt!5119) (union (content!71 (toList!116 (left!708 (left!708 (left!708 ys!77))))) (content!71 (toList!116 (right!711 (left!708 (left!708 ys!77))))))))))

(assert (=> d!15273 (= lt!5119 e!14749)))

(declare-fun c!6369 () Bool)

(assert (=> d!15273 (= c!6369 (is-Nil!356 (toList!116 (left!708 (left!708 (left!708 ys!77))))))))

(assert (=> d!15273 (= (++!41 (toList!116 (left!708 (left!708 (left!708 ys!77)))) (toList!116 (right!711 (left!708 (left!708 ys!77))))) lt!5119)))

(declare-fun b!28847 () Bool)

(assert (=> b!28847 (= e!14749 (Cons!355 (h!272 (toList!116 (left!708 (left!708 (left!708 ys!77))))) (++!41 (t!4375 (toList!116 (left!708 (left!708 (left!708 ys!77))))) (toList!116 (right!711 (left!708 (left!708 ys!77)))))))))

(declare-fun b!28848 () Bool)

(declare-fun res!13201 () Bool)

(assert (=> b!28848 (=> (not res!13201) (not e!14750))))

(assert (=> b!28848 (= res!13201 (= (size!271 lt!5119) (+ (size!271 (toList!116 (left!708 (left!708 (left!708 ys!77))))) (size!271 (toList!116 (right!711 (left!708 (left!708 ys!77))))))))))

(assert (= (and d!15273 c!6369) b!28846))

(assert (= (and d!15273 (not c!6369)) b!28847))

(assert (= (and d!15273 res!13202) b!28848))

(assert (= (and b!28848 res!13201) b!28849))

(declare-fun m!30841 () Bool)

(assert (=> d!15273 m!30841))

(assert (=> d!15273 m!29691))

(declare-fun m!30843 () Bool)

(assert (=> d!15273 m!30843))

(assert (=> d!15273 m!29693))

(declare-fun m!30845 () Bool)

(assert (=> d!15273 m!30845))

(assert (=> b!28847 m!29693))

(declare-fun m!30847 () Bool)

(assert (=> b!28847 m!30847))

(declare-fun m!30849 () Bool)

(assert (=> b!28848 m!30849))

(assert (=> b!28848 m!29691))

(declare-fun m!30851 () Bool)

(assert (=> b!28848 m!30851))

(assert (=> b!28848 m!29693))

(declare-fun m!30853 () Bool)

(assert (=> b!28848 m!30853))

(assert (=> b!28179 d!15273))

(declare-fun b!28852 () Bool)

(declare-fun e!14752 () List!361)

(assert (=> b!28852 (= e!14752 (Cons!355 (x!8933 (left!708 (left!708 (left!708 ys!77)))) Nil!356))))

(declare-fun b!28853 () Bool)

(assert (=> b!28853 (= e!14752 (++!41 (toList!116 (left!708 (left!708 (left!708 (left!708 ys!77))))) (toList!116 (right!711 (left!708 (left!708 (left!708 ys!77)))))))))

(declare-fun b!28850 () Bool)

(declare-fun e!14751 () List!361)

(assert (=> b!28850 (= e!14751 Nil!356)))

(declare-fun d!15275 () Bool)

(declare-fun lt!5120 () List!361)

(assert (=> d!15275 (= (size!271 lt!5120) (size!272 (left!708 (left!708 (left!708 ys!77)))))))

(assert (=> d!15275 (= lt!5120 e!14751)))

(declare-fun c!6371 () Bool)

(assert (=> d!15275 (= c!6371 (is-Empty!74 (left!708 (left!708 (left!708 ys!77)))))))

(assert (=> d!15275 (= (toList!116 (left!708 (left!708 (left!708 ys!77)))) lt!5120)))

(declare-fun b!28851 () Bool)

(assert (=> b!28851 (= e!14751 e!14752)))

(declare-fun c!6370 () Bool)

(assert (=> b!28851 (= c!6370 (is-Single!63 (left!708 (left!708 (left!708 ys!77)))))))

(assert (= (and b!28851 c!6370) b!28852))

(assert (= (and b!28851 (not c!6370)) b!28853))

(assert (= (and d!15275 c!6371) b!28850))

(assert (= (and d!15275 (not c!6371)) b!28851))

(declare-fun m!30855 () Bool)

(assert (=> b!28853 m!30855))

(declare-fun m!30857 () Bool)

(assert (=> b!28853 m!30857))

(assert (=> b!28853 m!30855))

(assert (=> b!28853 m!30857))

(declare-fun m!30859 () Bool)

(assert (=> b!28853 m!30859))

(declare-fun m!30861 () Bool)

(assert (=> d!15275 m!30861))

(assert (=> d!15275 m!30745))

(assert (=> b!28179 d!15275))

(declare-fun b!28856 () Bool)

(declare-fun e!14754 () List!361)

(assert (=> b!28856 (= e!14754 (Cons!355 (x!8933 (right!711 (left!708 (left!708 ys!77)))) Nil!356))))

(declare-fun b!28857 () Bool)

(assert (=> b!28857 (= e!14754 (++!41 (toList!116 (left!708 (right!711 (left!708 (left!708 ys!77))))) (toList!116 (right!711 (right!711 (left!708 (left!708 ys!77)))))))))

(declare-fun b!28854 () Bool)

(declare-fun e!14753 () List!361)

(assert (=> b!28854 (= e!14753 Nil!356)))

(declare-fun d!15277 () Bool)

(declare-fun lt!5121 () List!361)

(assert (=> d!15277 (= (size!271 lt!5121) (size!272 (right!711 (left!708 (left!708 ys!77)))))))

(assert (=> d!15277 (= lt!5121 e!14753)))

(declare-fun c!6373 () Bool)

(assert (=> d!15277 (= c!6373 (is-Empty!74 (right!711 (left!708 (left!708 ys!77)))))))

(assert (=> d!15277 (= (toList!116 (right!711 (left!708 (left!708 ys!77)))) lt!5121)))

(declare-fun b!28855 () Bool)

(assert (=> b!28855 (= e!14753 e!14754)))

(declare-fun c!6372 () Bool)

(assert (=> b!28855 (= c!6372 (is-Single!63 (right!711 (left!708 (left!708 ys!77)))))))

(assert (= (and b!28855 c!6372) b!28856))

(assert (= (and b!28855 (not c!6372)) b!28857))

(assert (= (and d!15277 c!6373) b!28854))

(assert (= (and d!15277 (not c!6373)) b!28855))

(declare-fun m!30863 () Bool)

(assert (=> b!28857 m!30863))

(declare-fun m!30865 () Bool)

(assert (=> b!28857 m!30865))

(assert (=> b!28857 m!30863))

(assert (=> b!28857 m!30865))

(declare-fun m!30867 () Bool)

(assert (=> b!28857 m!30867))

(declare-fun m!30869 () Bool)

(assert (=> d!15277 m!30869))

(assert (=> d!15277 m!30747))

(assert (=> b!28179 d!15277))

(declare-fun d!15279 () Bool)

(assert (=> d!15279 (= (isEmpty!320 (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77))))) (= (ite lt!4816 ys!77 (ite (>= lt!4808 lt!4813) (left!708 ys!77) (left!708 (left!708 ys!77)))) Empty!74))))

(assert (=> b!28054 d!15279))

(assert (=> b!28223 d!15149))

(assert (=> b!28223 d!15147))

(declare-fun b!28858 () Bool)

(declare-fun e!14755 () Bool)

(assert (=> b!28858 (= e!14755 (= (++!41 (++!41 (t!4375 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))) (toList!116 (right!711 (left!708 ys!77)))) (toList!116 (right!711 ys!77))) (++!41 (t!4375 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))) (++!41 (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))))))))

(declare-fun lt!5122 () Bool)

(assert (=> b!28858 (= lt!5122 (appendAssoc!9 (t!4375 (t!4375 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))))) (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))))))

(declare-fun d!15281 () Bool)

(assert (=> d!15281 e!14755))

(declare-fun c!6374 () Bool)

(assert (=> d!15281 (= c!6374 (is-Cons!355 (t!4375 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77)))))))))

(assert (=> d!15281 (= (appendAssoc!9 (t!4375 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))) (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))) true)))

(declare-fun b!28859 () Bool)

(assert (=> b!28859 (= e!14755 (= (++!41 (++!41 (t!4375 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))) (toList!116 (right!711 (left!708 ys!77)))) (toList!116 (right!711 ys!77))) (++!41 (t!4375 (++!41 (toList!116 xs!533) (toList!116 (left!708 (left!708 ys!77))))) (++!41 (toList!116 (right!711 (left!708 ys!77))) (toList!116 (right!711 ys!77))))))))

(assert (= (and d!15281 c!6374) b!28858))

(assert (= (and d!15281 (not c!6374)) b!28859))

(assert (=> b!28858 m!29383))

(assert (=> b!28858 m!29377))

(declare-fun m!30871 () Bool)

(assert (=> b!28858 m!30871))

(assert (=> b!28858 m!29383))

(assert (=> b!28858 m!29989))

(assert (=> b!28858 m!29729))

(assert (=> b!28858 m!30801))

(assert (=> b!28858 m!29383))

(assert (=> b!28858 m!29377))

(assert (=> b!28858 m!29729))

(assert (=> b!28858 m!29989))

(assert (=> b!28858 m!29377))

(declare-fun m!30873 () Bool)

(assert (=> b!28858 m!30873))

(assert (=> b!28859 m!29383))

(assert (=> b!28859 m!29989))

(assert (=> b!28859 m!29989))

(assert (=> b!28859 m!29377))

(assert (=> b!28859 m!30873))

(assert (=> b!28859 m!29383))

(assert (=> b!28859 m!29377))

(assert (=> b!28859 m!29729))

(assert (=> b!28859 m!29729))

(assert (=> b!28859 m!30801))

(assert (=> b!28196 d!15281))

(assert (=> b!28196 d!15257))

(assert (=> b!28196 d!14959))

(assert (=> b!28196 d!15253))

(assert (=> b!28196 d!15255))

(assert (=> b!28150 d!14803))

(declare-fun b!28860 () Bool)

(declare-fun e!14756 () Bool)

(assert (=> b!28860 (= e!14756 (= (++!41 (++!41 (toList!116 (left!708 (right!711 (right!711 xs!533)))) (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533)))))) (++!41 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77))) (++!41 (toList!116 (left!708 (right!711 (right!711 xs!533)))) (++!41 (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533))))) (++!41 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77))))))))

(declare-fun lt!5123 () Bool)

(assert (=> b!28860 (= lt!5123 (appendAssoc!9 (t!4375 (toList!116 (left!708 (right!711 (right!711 xs!533))))) (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533))))) (++!41 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77))))))

(declare-fun d!15283 () Bool)

(assert (=> d!15283 e!14756))

(declare-fun c!6375 () Bool)

(assert (=> d!15283 (= c!6375 (is-Cons!355 (toList!116 (left!708 (right!711 (right!711 xs!533))))))))

(assert (=> d!15283 (= (appendAssoc!9 (toList!116 (left!708 (right!711 (right!711 xs!533)))) (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533))))) (++!41 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77))) true)))

(declare-fun b!28861 () Bool)

(assert (=> b!28861 (= e!14756 (= (++!41 (++!41 (toList!116 (left!708 (right!711 (right!711 xs!533)))) (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533)))))) (++!41 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77))) (++!41 (toList!116 (left!708 (right!711 (right!711 xs!533)))) (++!41 (toList!116 (left!708 (right!711 (right!711 (right!711 xs!533))))) (++!41 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77))))))))

(assert (= (and d!15283 c!6375) b!28860))

(assert (= (and d!15283 (not c!6375)) b!28861))

(assert (=> b!28860 m!29653))

(assert (=> b!28860 m!29659))

(declare-fun m!30875 () Bool)

(assert (=> b!28860 m!30875))

(assert (=> b!28860 m!29633))

(assert (=> b!28860 m!29653))

(declare-fun m!30877 () Bool)

(assert (=> b!28860 m!30877))

(assert (=> b!28860 m!29633))

(assert (=> b!28860 m!30257))

(declare-fun m!30879 () Bool)

(assert (=> b!28860 m!30879))

(assert (=> b!28860 m!29653))

(assert (=> b!28860 m!29659))

(assert (=> b!28860 m!30257))

(assert (=> b!28860 m!30877))

(assert (=> b!28860 m!29659))

(declare-fun m!30881 () Bool)

(assert (=> b!28860 m!30881))

(assert (=> b!28861 m!29633))

(assert (=> b!28861 m!29653))

(assert (=> b!28861 m!30877))

(assert (=> b!28861 m!30877))

(assert (=> b!28861 m!29659))

(assert (=> b!28861 m!30881))

(assert (=> b!28861 m!29653))

(assert (=> b!28861 m!29659))

(assert (=> b!28861 m!30257))

(assert (=> b!28861 m!29633))

(assert (=> b!28861 m!30257))

(assert (=> b!28861 m!30879))

(assert (=> b!28150 d!15283))

(assert (=> b!28150 d!15069))

(assert (=> b!28150 d!15071))

(declare-fun lt!5124 () List!361)

(declare-fun b!28865 () Bool)

(declare-fun e!14758 () Bool)

(assert (=> b!28865 (= e!14758 (or (not (= (toList!116 ys!77) Nil!356)) (= lt!5124 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))))))))

(declare-fun b!28862 () Bool)

(declare-fun e!14757 () List!361)

(assert (=> b!28862 (= e!14757 (toList!116 ys!77))))

(declare-fun d!15285 () Bool)

(assert (=> d!15285 e!14758))

(declare-fun res!13204 () Bool)

(assert (=> d!15285 (=> (not res!13204) (not e!14758))))

(assert (=> d!15285 (= res!13204 (= (content!71 lt!5124) (union (content!71 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533)))))) (content!71 (toList!116 ys!77)))))))

(assert (=> d!15285 (= lt!5124 e!14757)))

(declare-fun c!6376 () Bool)

(assert (=> d!15285 (= c!6376 (is-Nil!356 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533)))))))))

(assert (=> d!15285 (= (++!41 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533))))) (toList!116 ys!77)) lt!5124)))

(declare-fun b!28863 () Bool)

(assert (=> b!28863 (= e!14757 (Cons!355 (h!272 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533)))))) (++!41 (t!4375 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533)))))) (toList!116 ys!77))))))

(declare-fun b!28864 () Bool)

(declare-fun res!13203 () Bool)

(assert (=> b!28864 (=> (not res!13203) (not e!14758))))

(assert (=> b!28864 (= res!13203 (= (size!271 lt!5124) (+ (size!271 (toList!116 (right!711 (right!711 (right!711 (right!711 xs!533)))))) (size!271 (toList!116 ys!77)))))))

(assert (= (and d!15285 c!6376) b!28862))

(assert (= (and d!15285 (not c!6376)) b!28863))

(assert (= (and d!15285 res!13204) b!28864))

(assert (= (and b!28864 res!13203) b!28865))

(declare-fun m!30883 () Bool)

(assert (=> d!15285 m!30883))

(assert (=> d!15285 m!29655))

(declare-fun m!30885 () Bool)

(assert (=> d!15285 m!30885))

(assert (=> d!15285 m!29365))

(assert (=> d!15285 m!29749))

(assert (=> b!28863 m!29365))

(declare-fun m!30887 () Bool)

(assert (=> b!28863 m!30887))

(declare-fun m!30889 () Bool)

(assert (=> b!28864 m!30889))

(assert (=> b!28864 m!29655))

(declare-fun m!30891 () Bool)

(assert (=> b!28864 m!30891))

(assert (=> b!28864 m!29365))

(assert (=> b!28864 m!29755))

(assert (=> b!28150 d!15285))

(assert (=> b!28150 d!15125))

(declare-fun b!28866 () Bool)

(declare-fun e!14759 () Bool)

(declare-fun tp!6070 () Bool)

(declare-fun tp!6071 () Bool)

(assert (=> b!28866 (= e!14759 (and tp!6070 tp!6071))))

(declare-fun b!28867 () Bool)

(assert (=> b!28867 (= e!14759 tp_is_empty!173)))

(assert (=> b!28284 (= tp!6064 e!14759)))

(assert (= (and b!28284 (is-CC!63 (left!708 (left!708 (right!711 nrr!4))))) b!28866))

(assert (= (and b!28284 (is-Single!63 (left!708 (left!708 (right!711 nrr!4))))) b!28867))

(declare-fun b!28868 () Bool)

(declare-fun e!14760 () Bool)

(declare-fun tp!6072 () Bool)

(declare-fun tp!6073 () Bool)

(assert (=> b!28868 (= e!14760 (and tp!6072 tp!6073))))

(declare-fun b!28869 () Bool)

(assert (=> b!28869 (= e!14760 tp_is_empty!173)))

(assert (=> b!28284 (= tp!6065 e!14760)))

(assert (= (and b!28284 (is-CC!63 (right!711 (left!708 (right!711 nrr!4))))) b!28868))

(assert (= (and b!28284 (is-Single!63 (right!711 (left!708 (right!711 nrr!4))))) b!28869))

(declare-fun b!28870 () Bool)

(declare-fun e!14761 () Bool)

(declare-fun tp!6074 () Bool)

(declare-fun tp!6075 () Bool)

(assert (=> b!28870 (= e!14761 (and tp!6074 tp!6075))))

(declare-fun b!28871 () Bool)

(assert (=> b!28871 (= e!14761 tp_is_empty!173)))

(assert (=> b!28254 (= tp!6034 e!14761)))

(assert (= (and b!28254 (is-CC!63 (left!708 (right!711 res!12862)))) b!28870))

(assert (= (and b!28254 (is-Single!63 (left!708 (right!711 res!12862)))) b!28871))

(declare-fun b!28872 () Bool)

(declare-fun e!14762 () Bool)

(declare-fun tp!6076 () Bool)

(declare-fun tp!6077 () Bool)

(assert (=> b!28872 (= e!14762 (and tp!6076 tp!6077))))

(declare-fun b!28873 () Bool)

(assert (=> b!28873 (= e!14762 tp_is_empty!173)))

(assert (=> b!28254 (= tp!6035 e!14762)))

(assert (= (and b!28254 (is-CC!63 (right!711 (right!711 res!12862)))) b!28872))

(assert (= (and b!28254 (is-Single!63 (right!711 (right!711 res!12862)))) b!28873))

(declare-fun b!28874 () Bool)

(declare-fun e!14763 () Bool)

(declare-fun tp!6078 () Bool)

(declare-fun tp!6079 () Bool)

(assert (=> b!28874 (= e!14763 (and tp!6078 tp!6079))))

(declare-fun b!28875 () Bool)

(assert (=> b!28875 (= e!14763 tp_is_empty!173)))

(assert (=> b!28276 (= tp!6056 e!14763)))

(assert (= (and b!28276 (is-CC!63 (left!708 (left!708 (right!711 xs!533))))) b!28874))

(assert (= (and b!28276 (is-Single!63 (left!708 (left!708 (right!711 xs!533))))) b!28875))

(declare-fun b!28876 () Bool)

(declare-fun e!14764 () Bool)

(declare-fun tp!6080 () Bool)

(declare-fun tp!6081 () Bool)

(assert (=> b!28876 (= e!14764 (and tp!6080 tp!6081))))

(declare-fun b!28877 () Bool)

(assert (=> b!28877 (= e!14764 tp_is_empty!173)))

(assert (=> b!28276 (= tp!6057 e!14764)))

(assert (= (and b!28276 (is-CC!63 (right!711 (left!708 (right!711 xs!533))))) b!28876))

(assert (= (and b!28276 (is-Single!63 (right!711 (left!708 (right!711 xs!533))))) b!28877))

(declare-fun b!28878 () Bool)

(declare-fun e!14765 () Bool)

(declare-fun tp!6082 () Bool)

(declare-fun tp!6083 () Bool)

(assert (=> b!28878 (= e!14765 (and tp!6082 tp!6083))))

(declare-fun b!28879 () Bool)

(assert (=> b!28879 (= e!14765 tp_is_empty!173)))

(assert (=> b!28266 (= tp!6046 e!14765)))

(assert (= (and b!28266 (is-CC!63 (left!708 (right!711 (left!708 res!5536))))) b!28878))

(assert (= (and b!28266 (is-Single!63 (left!708 (right!711 (left!708 res!5536))))) b!28879))

(declare-fun b!28880 () Bool)

(declare-fun e!14766 () Bool)

(declare-fun tp!6084 () Bool)

(declare-fun tp!6085 () Bool)

(assert (=> b!28880 (= e!14766 (and tp!6084 tp!6085))))

(declare-fun b!28881 () Bool)

(assert (=> b!28881 (= e!14766 tp_is_empty!173)))

(assert (=> b!28266 (= tp!6047 e!14766)))

(assert (= (and b!28266 (is-CC!63 (right!711 (right!711 (left!708 res!5536))))) b!28880))

(assert (= (and b!28266 (is-Single!63 (right!711 (right!711 (left!708 res!5536))))) b!28881))

(declare-fun b!28882 () Bool)

(declare-fun e!14767 () Bool)

(declare-fun tp!6086 () Bool)

(declare-fun tp!6087 () Bool)

(assert (=> b!28882 (= e!14767 (and tp!6086 tp!6087))))

(declare-fun b!28883 () Bool)

(assert (=> b!28883 (= e!14767 tp_is_empty!173)))

(assert (=> b!28274 (= tp!6054 e!14767)))

(assert (= (and b!28274 (is-CC!63 (left!708 (right!711 (left!708 nrr!4))))) b!28882))

(assert (= (and b!28274 (is-Single!63 (left!708 (right!711 (left!708 nrr!4))))) b!28883))

(declare-fun b!28884 () Bool)

(declare-fun e!14768 () Bool)

(declare-fun tp!6088 () Bool)

(declare-fun tp!6089 () Bool)

(assert (=> b!28884 (= e!14768 (and tp!6088 tp!6089))))

(declare-fun b!28885 () Bool)

(assert (=> b!28885 (= e!14768 tp_is_empty!173)))

(assert (=> b!28274 (= tp!6055 e!14768)))

(assert (= (and b!28274 (is-CC!63 (right!711 (right!711 (left!708 nrr!4))))) b!28884))

(assert (= (and b!28274 (is-Single!63 (right!711 (right!711 (left!708 nrr!4))))) b!28885))

(declare-fun b!28886 () Bool)

(declare-fun e!14769 () Bool)

(declare-fun tp!6090 () Bool)

(declare-fun tp!6091 () Bool)

(assert (=> b!28886 (= e!14769 (and tp!6090 tp!6091))))

(declare-fun b!28887 () Bool)

(assert (=> b!28887 (= e!14769 tp_is_empty!173)))

(assert (=> b!28272 (= tp!6052 e!14769)))

(assert (= (and b!28272 (is-CC!63 (left!708 (left!708 (left!708 nrr!4))))) b!28886))

(assert (= (and b!28272 (is-Single!63 (left!708 (left!708 (left!708 nrr!4))))) b!28887))

(declare-fun b!28888 () Bool)

(declare-fun e!14770 () Bool)

(declare-fun tp!6092 () Bool)

(declare-fun tp!6093 () Bool)

(assert (=> b!28888 (= e!14770 (and tp!6092 tp!6093))))

(declare-fun b!28889 () Bool)

(assert (=> b!28889 (= e!14770 tp_is_empty!173)))

(assert (=> b!28272 (= tp!6053 e!14770)))

(assert (= (and b!28272 (is-CC!63 (right!711 (left!708 (left!708 nrr!4))))) b!28888))

(assert (= (and b!28272 (is-Single!63 (right!711 (left!708 (left!708 nrr!4))))) b!28889))

(declare-fun b!28890 () Bool)

(declare-fun e!14771 () Bool)

(declare-fun tp!6094 () Bool)

(declare-fun tp!6095 () Bool)

(assert (=> b!28890 (= e!14771 (and tp!6094 tp!6095))))

(declare-fun b!28891 () Bool)

(assert (=> b!28891 (= e!14771 tp_is_empty!173)))

(assert (=> b!28052 (= tp!6030 e!14771)))

(assert (= (and b!28052 (is-CC!63 (left!708 res!12876))) b!28890))

(assert (= (and b!28052 (is-Single!63 (left!708 res!12876))) b!28891))

(declare-fun b!28892 () Bool)

(declare-fun e!14772 () Bool)

(declare-fun tp!6096 () Bool)

(declare-fun tp!6097 () Bool)

(assert (=> b!28892 (= e!14772 (and tp!6096 tp!6097))))

(declare-fun b!28893 () Bool)

(assert (=> b!28893 (= e!14772 tp_is_empty!173)))

(assert (=> b!28052 (= tp!6031 e!14772)))

(assert (= (and b!28052 (is-CC!63 (right!711 res!12876))) b!28892))

(assert (= (and b!28052 (is-Single!63 (right!711 res!12876))) b!28893))

(declare-fun b!28894 () Bool)

(declare-fun e!14773 () Bool)

(declare-fun tp!6098 () Bool)

(declare-fun tp!6099 () Bool)

(assert (=> b!28894 (= e!14773 (and tp!6098 tp!6099))))

(declare-fun b!28895 () Bool)

(assert (=> b!28895 (= e!14773 tp_is_empty!173)))

(assert (=> b!28252 (= tp!6032 e!14773)))

(assert (= (and b!28252 (is-CC!63 (left!708 (left!708 res!12862)))) b!28894))

(assert (= (and b!28252 (is-Single!63 (left!708 (left!708 res!12862)))) b!28895))

(declare-fun b!28896 () Bool)

(declare-fun e!14774 () Bool)

(declare-fun tp!6100 () Bool)

(declare-fun tp!6101 () Bool)

(assert (=> b!28896 (= e!14774 (and tp!6100 tp!6101))))

(declare-fun b!28897 () Bool)

(assert (=> b!28897 (= e!14774 tp_is_empty!173)))

(assert (=> b!28252 (= tp!6033 e!14774)))

(assert (= (and b!28252 (is-CC!63 (right!711 (left!708 res!12862)))) b!28896))

(assert (= (and b!28252 (is-Single!63 (right!711 (left!708 res!12862)))) b!28897))

(declare-fun b!28898 () Bool)

(declare-fun e!14775 () Bool)

(declare-fun tp!6102 () Bool)

(declare-fun tp!6103 () Bool)

(assert (=> b!28898 (= e!14775 (and tp!6102 tp!6103))))

(declare-fun b!28899 () Bool)

(assert (=> b!28899 (= e!14775 tp_is_empty!173)))

(assert (=> b!28260 (= tp!6040 e!14775)))

(assert (= (and b!28260 (is-CC!63 (left!708 (left!708 (left!708 ys!77))))) b!28898))

(assert (= (and b!28260 (is-Single!63 (left!708 (left!708 (left!708 ys!77))))) b!28899))

(declare-fun b!28900 () Bool)

(declare-fun e!14776 () Bool)

(declare-fun tp!6104 () Bool)

(declare-fun tp!6105 () Bool)

(assert (=> b!28900 (= e!14776 (and tp!6104 tp!6105))))

(declare-fun b!28901 () Bool)

(assert (=> b!28901 (= e!14776 tp_is_empty!173)))

(assert (=> b!28260 (= tp!6041 e!14776)))

(assert (= (and b!28260 (is-CC!63 (right!711 (left!708 (left!708 ys!77))))) b!28900))

(assert (= (and b!28260 (is-Single!63 (right!711 (left!708 (left!708 ys!77))))) b!28901))

(declare-fun b!28902 () Bool)

(declare-fun e!14777 () Bool)

(declare-fun tp!6106 () Bool)

(declare-fun tp!6107 () Bool)

(assert (=> b!28902 (= e!14777 (and tp!6106 tp!6107))))

(declare-fun b!28903 () Bool)

(assert (=> b!28903 (= e!14777 tp_is_empty!173)))

(assert (=> b!28256 (= tp!6036 e!14777)))

(assert (= (and b!28256 (is-CC!63 (left!708 (left!708 (right!711 ys!77))))) b!28902))

(assert (= (and b!28256 (is-Single!63 (left!708 (left!708 (right!711 ys!77))))) b!28903))

(declare-fun b!28904 () Bool)

(declare-fun e!14778 () Bool)

(declare-fun tp!6108 () Bool)

(declare-fun tp!6109 () Bool)

(assert (=> b!28904 (= e!14778 (and tp!6108 tp!6109))))

(declare-fun b!28905 () Bool)

(assert (=> b!28905 (= e!14778 tp_is_empty!173)))

(assert (=> b!28256 (= tp!6037 e!14778)))

(assert (= (and b!28256 (is-CC!63 (right!711 (left!708 (right!711 ys!77))))) b!28904))

(assert (= (and b!28256 (is-Single!63 (right!711 (left!708 (right!711 ys!77))))) b!28905))

(declare-fun b!28906 () Bool)

(declare-fun e!14779 () Bool)

(declare-fun tp!6110 () Bool)

(declare-fun tp!6111 () Bool)

(assert (=> b!28906 (= e!14779 (and tp!6110 tp!6111))))

(declare-fun b!28907 () Bool)

(assert (=> b!28907 (= e!14779 tp_is_empty!173)))

(assert (=> b!28278 (= tp!6058 e!14779)))

(assert (= (and b!28278 (is-CC!63 (left!708 (right!711 (right!711 xs!533))))) b!28906))

(assert (= (and b!28278 (is-Single!63 (left!708 (right!711 (right!711 xs!533))))) b!28907))

(declare-fun b!28908 () Bool)

(declare-fun e!14780 () Bool)

(declare-fun tp!6112 () Bool)

(declare-fun tp!6113 () Bool)

(assert (=> b!28908 (= e!14780 (and tp!6112 tp!6113))))

(declare-fun b!28909 () Bool)

(assert (=> b!28909 (= e!14780 tp_is_empty!173)))

(assert (=> b!28278 (= tp!6059 e!14780)))

(assert (= (and b!28278 (is-CC!63 (right!711 (right!711 (right!711 xs!533))))) b!28908))

(assert (= (and b!28278 (is-Single!63 (right!711 (right!711 (right!711 xs!533))))) b!28909))

(declare-fun b!28910 () Bool)

(declare-fun e!14781 () Bool)

(declare-fun tp!6114 () Bool)

(declare-fun tp!6115 () Bool)

(assert (=> b!28910 (= e!14781 (and tp!6114 tp!6115))))

(declare-fun b!28911 () Bool)

(assert (=> b!28911 (= e!14781 tp_is_empty!173)))

(assert (=> b!28268 (= tp!6048 e!14781)))

(assert (= (and b!28268 (is-CC!63 (left!708 (left!708 (right!711 res!5536))))) b!28910))

(assert (= (and b!28268 (is-Single!63 (left!708 (left!708 (right!711 res!5536))))) b!28911))

(declare-fun b!28912 () Bool)

(declare-fun e!14782 () Bool)

(declare-fun tp!6116 () Bool)

(declare-fun tp!6117 () Bool)

(assert (=> b!28912 (= e!14782 (and tp!6116 tp!6117))))

(declare-fun b!28913 () Bool)

(assert (=> b!28913 (= e!14782 tp_is_empty!173)))

(assert (=> b!28268 (= tp!6049 e!14782)))

(assert (= (and b!28268 (is-CC!63 (right!711 (left!708 (right!711 res!5536))))) b!28912))

(assert (= (and b!28268 (is-Single!63 (right!711 (left!708 (right!711 res!5536))))) b!28913))

(declare-fun b!28914 () Bool)

(declare-fun e!14783 () Bool)

(declare-fun tp!6118 () Bool)

(declare-fun tp!6119 () Bool)

(assert (=> b!28914 (= e!14783 (and tp!6118 tp!6119))))

(declare-fun b!28915 () Bool)

(assert (=> b!28915 (= e!14783 tp_is_empty!173)))

(assert (=> b!28258 (= tp!6038 e!14783)))

(assert (= (and b!28258 (is-CC!63 (left!708 (right!711 (right!711 ys!77))))) b!28914))

(assert (= (and b!28258 (is-Single!63 (left!708 (right!711 (right!711 ys!77))))) b!28915))

(declare-fun b!28916 () Bool)

(declare-fun e!14784 () Bool)

(declare-fun tp!6120 () Bool)

(declare-fun tp!6121 () Bool)

(assert (=> b!28916 (= e!14784 (and tp!6120 tp!6121))))

(declare-fun b!28917 () Bool)

(assert (=> b!28917 (= e!14784 tp_is_empty!173)))

(assert (=> b!28258 (= tp!6039 e!14784)))

(assert (= (and b!28258 (is-CC!63 (right!711 (right!711 (right!711 ys!77))))) b!28916))

(assert (= (and b!28258 (is-Single!63 (right!711 (right!711 (right!711 ys!77))))) b!28917))

(declare-fun b!28918 () Bool)

(declare-fun e!14785 () Bool)

(declare-fun tp!6122 () Bool)

(declare-fun tp!6123 () Bool)

(assert (=> b!28918 (= e!14785 (and tp!6122 tp!6123))))

(declare-fun b!28919 () Bool)

(assert (=> b!28919 (= e!14785 tp_is_empty!173)))

(assert (=> b!28264 (= tp!6044 e!14785)))

(assert (= (and b!28264 (is-CC!63 (left!708 (left!708 (left!708 res!5536))))) b!28918))

(assert (= (and b!28264 (is-Single!63 (left!708 (left!708 (left!708 res!5536))))) b!28919))

(declare-fun b!28920 () Bool)

(declare-fun e!14786 () Bool)

(declare-fun tp!6124 () Bool)

(declare-fun tp!6125 () Bool)

(assert (=> b!28920 (= e!14786 (and tp!6124 tp!6125))))

(declare-fun b!28921 () Bool)

(assert (=> b!28921 (= e!14786 tp_is_empty!173)))

(assert (=> b!28264 (= tp!6045 e!14786)))

(assert (= (and b!28264 (is-CC!63 (right!711 (left!708 (left!708 res!5536))))) b!28920))

(assert (= (and b!28264 (is-Single!63 (right!711 (left!708 (left!708 res!5536))))) b!28921))

(declare-fun b!28922 () Bool)

(declare-fun e!14787 () Bool)

(declare-fun tp!6126 () Bool)

(declare-fun tp!6127 () Bool)

(assert (=> b!28922 (= e!14787 (and tp!6126 tp!6127))))

(declare-fun b!28923 () Bool)

(assert (=> b!28923 (= e!14787 tp_is_empty!173)))

(assert (=> b!28270 (= tp!6050 e!14787)))

(assert (= (and b!28270 (is-CC!63 (left!708 (right!711 (right!711 res!5536))))) b!28922))

(assert (= (and b!28270 (is-Single!63 (left!708 (right!711 (right!711 res!5536))))) b!28923))

(declare-fun b!28924 () Bool)

(declare-fun e!14788 () Bool)

(declare-fun tp!6128 () Bool)

(declare-fun tp!6129 () Bool)

(assert (=> b!28924 (= e!14788 (and tp!6128 tp!6129))))

(declare-fun b!28925 () Bool)

(assert (=> b!28925 (= e!14788 tp_is_empty!173)))

(assert (=> b!28270 (= tp!6051 e!14788)))

(assert (= (and b!28270 (is-CC!63 (right!711 (right!711 (right!711 res!5536))))) b!28924))

(assert (= (and b!28270 (is-Single!63 (right!711 (right!711 (right!711 res!5536))))) b!28925))

(declare-fun b!28926 () Bool)

(declare-fun e!14789 () Bool)

(declare-fun tp!6130 () Bool)

(declare-fun tp!6131 () Bool)

(assert (=> b!28926 (= e!14789 (and tp!6130 tp!6131))))

(declare-fun b!28927 () Bool)

(assert (=> b!28927 (= e!14789 tp_is_empty!173)))

(assert (=> b!28262 (= tp!6042 e!14789)))

(assert (= (and b!28262 (is-CC!63 (left!708 (right!711 (left!708 ys!77))))) b!28926))

(assert (= (and b!28262 (is-Single!63 (left!708 (right!711 (left!708 ys!77))))) b!28927))

(declare-fun b!28928 () Bool)

(declare-fun e!14790 () Bool)

(declare-fun tp!6132 () Bool)

(declare-fun tp!6133 () Bool)

(assert (=> b!28928 (= e!14790 (and tp!6132 tp!6133))))

(declare-fun b!28929 () Bool)

(assert (=> b!28929 (= e!14790 tp_is_empty!173)))

(assert (=> b!28262 (= tp!6043 e!14790)))

(assert (= (and b!28262 (is-CC!63 (right!711 (right!711 (left!708 ys!77))))) b!28928))

(assert (= (and b!28262 (is-Single!63 (right!711 (right!711 (left!708 ys!77))))) b!28929))

(declare-fun b!28930 () Bool)

(declare-fun e!14791 () Bool)

(declare-fun tp!6134 () Bool)

(declare-fun tp!6135 () Bool)

(assert (=> b!28930 (= e!14791 (and tp!6134 tp!6135))))

(declare-fun b!28931 () Bool)

(assert (=> b!28931 (= e!14791 tp_is_empty!173)))

(assert (=> b!28280 (= tp!6060 e!14791)))

(assert (= (and b!28280 (is-CC!63 (left!708 (left!708 (left!708 xs!533))))) b!28930))

(assert (= (and b!28280 (is-Single!63 (left!708 (left!708 (left!708 xs!533))))) b!28931))

(declare-fun b!28932 () Bool)

(declare-fun e!14792 () Bool)

(declare-fun tp!6136 () Bool)

(declare-fun tp!6137 () Bool)

(assert (=> b!28932 (= e!14792 (and tp!6136 tp!6137))))

(declare-fun b!28933 () Bool)

(assert (=> b!28933 (= e!14792 tp_is_empty!173)))

(assert (=> b!28280 (= tp!6061 e!14792)))

(assert (= (and b!28280 (is-CC!63 (right!711 (left!708 (left!708 xs!533))))) b!28932))

(assert (= (and b!28280 (is-Single!63 (right!711 (left!708 (left!708 xs!533))))) b!28933))

(declare-fun b!28934 () Bool)

(declare-fun e!14793 () Bool)

(declare-fun tp!6138 () Bool)

(declare-fun tp!6139 () Bool)

(assert (=> b!28934 (= e!14793 (and tp!6138 tp!6139))))

(declare-fun b!28935 () Bool)

(assert (=> b!28935 (= e!14793 tp_is_empty!173)))

(assert (=> b!28286 (= tp!6066 e!14793)))

(assert (= (and b!28286 (is-CC!63 (left!708 (right!711 (right!711 nrr!4))))) b!28934))

(assert (= (and b!28286 (is-Single!63 (left!708 (right!711 (right!711 nrr!4))))) b!28935))

(declare-fun b!28936 () Bool)

(declare-fun e!14794 () Bool)

(declare-fun tp!6140 () Bool)

(declare-fun tp!6141 () Bool)

(assert (=> b!28936 (= e!14794 (and tp!6140 tp!6141))))

(declare-fun b!28937 () Bool)

(assert (=> b!28937 (= e!14794 tp_is_empty!173)))

(assert (=> b!28286 (= tp!6067 e!14794)))

(assert (= (and b!28286 (is-CC!63 (right!711 (right!711 (right!711 nrr!4))))) b!28936))

(assert (= (and b!28286 (is-Single!63 (right!711 (right!711 (right!711 nrr!4))))) b!28937))

(declare-fun b!28938 () Bool)

(declare-fun e!14795 () Bool)

(declare-fun tp!6142 () Bool)

(declare-fun tp!6143 () Bool)

(assert (=> b!28938 (= e!14795 (and tp!6142 tp!6143))))

(declare-fun b!28939 () Bool)

(assert (=> b!28939 (= e!14795 tp_is_empty!173)))

(assert (=> b!28282 (= tp!6062 e!14795)))

(assert (= (and b!28282 (is-CC!63 (left!708 (right!711 (left!708 xs!533))))) b!28938))

(assert (= (and b!28282 (is-Single!63 (left!708 (right!711 (left!708 xs!533))))) b!28939))

(declare-fun b!28940 () Bool)

(declare-fun e!14796 () Bool)

(declare-fun tp!6144 () Bool)

(declare-fun tp!6145 () Bool)

(assert (=> b!28940 (= e!14796 (and tp!6144 tp!6145))))

(declare-fun b!28941 () Bool)

(assert (=> b!28941 (= e!14796 tp_is_empty!173)))

(assert (=> b!28282 (= tp!6063 e!14796)))

(assert (= (and b!28282 (is-CC!63 (right!711 (right!711 (left!708 xs!533))))) b!28940))

(assert (= (and b!28282 (is-Single!63 (right!711 (right!711 (left!708 xs!533))))) b!28941))

(push 1)

(assert (not d!15125))

(assert (not d!14979))

(assert (not b!28414))

(assert (not b!28874))

(assert (not b!28679))

(assert (not b!28790))

(assert (not b!28860))

(assert (not b!28830))

(assert (not b!28876))

(assert (not b!28480))

(assert (not b!28878))

(assert (not b!28599))

(assert (not b!28474))

(assert (not b!28922))

(assert (not b!28721))

(assert (not b!28920))

(assert (not b!28540))

(assert (not d!15031))

(assert (not b!28799))

(assert (not b!28538))

(assert (not b!28416))

(assert (not b!28826))

(assert (not b!28783))

(assert (not b!28365))

(assert (not b!28472))

(assert (not b!28861))

(assert (not b!28345))

(assert (not b!28409))

(assert (not b!28520))

(assert (not b!28743))

(assert (not b!28801))

(assert (not b!28655))

(assert (not b!28582))

(assert (not d!15135))

(assert (not b!28784))

(assert (not b!28498))

(assert (not b!28564))

(assert (not b!28928))

(assert (not b!28870))

(assert (not b!28660))

(assert (not b!28435))

(assert (not d!15189))

(assert (not b!28707))

(assert (not b!28912))

(assert (not b!28577))

(assert (not b!28367))

(assert (not b!28810))

(assert (not b!28500))

(assert (not b!28722))

(assert (not b!28691))

(assert (not d!15133))

(assert (not d!15071))

(assert (not b!28684))

(assert (not b!28377))

(assert (not b!28372))

(assert (not b!28900))

(assert (not b!28910))

(assert (not d!15269))

(assert (not b!28362))

(assert (not b!28863))

(assert (not d!15127))

(assert (not b!28364))

(assert (not b!28703))

(assert (not b!28532))

(assert (not b!28705))

(assert (not b!28542))

(assert (not b!28771))

(assert (not d!15209))

(assert (not b!28697))

(assert (not b!28454))

(assert (not b!28370))

(assert (not b!28781))

(assert (not b!28797))

(assert (not b!28659))

(assert (not b!28904))

(assert (not d!15257))

(assert (not b!28680))

(assert (not b!28757))

(assert (not b!28412))

(assert (not b!28490))

(assert (not b!28388))

(assert (not b!28319))

(assert (not b!28793))

(assert (not d!15035))

(assert (not b!28761))

(assert (not b!28710))

(assert (not b!28297))

(assert (not b!28321))

(assert (not d!14935))

(assert (not d!15273))

(assert (not d!14981))

(assert (not b!28558))

(assert (not b!28746))

(assert (not b!28424))

(assert (not b!28683))

(assert (not b!28673))

(assert (not b!28317))

(assert (not d!15277))

(assert (not b!28290))

(assert (not b!28476))

(assert (not b!28753))

(assert (not b!28787))

(assert (not b!28533))

(assert (not b!28617))

(assert (not b!28844))

(assert (not b!28661))

(assert (not b!28639))

(assert (not b!28518))

(assert (not b!28723))

(assert (not b!28644))

(assert (not b!28430))

(assert (not b!28835))

(assert (not b!28605))

(assert (not b!28554))

(assert (not b!28347))

(assert (not b!28798))

(assert (not b!28906))

(assert (not b!28546))

(assert (not b!28670))

(assert (not b!28884))

(assert (not d!15157))

(assert (not b!28350))

(assert (not b!28589))

(assert (not b!28848))

(assert (not b!28323))

(assert (not b!28465))

(assert (not b!28487))

(assert (not b!28559))

(assert (not d!14963))

(assert (not b!28629))

(assert (not b!28727))

(assert (not b!28615))

(assert (not b!28643))

(assert (not b!28866))

(assert (not b!28399))

(assert (not d!15029))

(assert (not b!28779))

(assert (not b!28434))

(assert (not b!28789))

(assert (not b!28641))

(assert tp_is_empty!173)

(assert (not d!15085))

(assert (not b!28486))

(assert (not b!28499))

(assert (not b!28693))

(assert (not b!28591))

(assert (not b!28696))

(assert (not b!28506))

(assert (not d!15159))

(assert (not b!28395))

(assert (not b!28291))

(assert (not b!28777))

(assert (not b!28773))

(assert (not b!28623))

(assert (not b!28313))

(assert (not b!28805))

(assert (not b!28516))

(assert (not b!28392))

(assert (not d!15253))

(assert (not b!28503))

(assert (not b!28630))

(assert (not b!28802))

(assert (not b!28776))

(assert (not b!28595))

(assert (not b!28483))

(assert (not b!28934))

(assert (not b!28356))

(assert (not b!28550))

(assert (not b!28936))

(assert (not b!28360))

(assert (not b!28872))

(assert (not b!28759))

(assert (not b!28607))

(assert (not b!28289))

(assert (not b!28940))

(assert (not b!28859))

(assert (not b!28470))

(assert (not b!28821))

(assert (not b!28833))

(assert (not b!28441))

(assert (not b!28609))

(assert (not b!28333))

(assert (not b!28894))

(assert (not b!28886))

(assert (not b!28926))

(assert (not b!28694))

(assert (not b!28742))

(assert (not b!28604))

(assert (not b!28354))

(assert (not b!28767))

(assert (not b!28739))

(assert (not b!28381))

(assert (not b!28808))

(assert (not b!28669))

(assert (not b!28914))

(assert (not b!28544))

(assert (not b!28369))

(assert (not b!28665))

(assert (not b!28775))

(assert (not d!14977))

(assert (not b!28606))

(assert (not b!28574))

(assert (not d!15285))

(assert (not b!28845))

(assert (not b!28491))

(assert (not b!28627))

(assert (not b!28376))

(assert (not b!28741))

(assert (not b!28311))

(assert (not b!28463))

(assert (not b!28366))

(assert (not b!28769))

(assert (not b!28451))

(assert (not b!28373))

(assert (not b!28583))

(assert (not b!28507))

(assert (not b!28359))

(assert (not b!28406))

(assert (not b!28494))

(assert (not b!28725))

(assert (not b!28545))

(assert (not b!28932))

(assert (not b!28687))

(assert (not b!28455))

(assert (not b!28671))

(assert (not b!28829))

(assert (not d!15255))

(assert (not b!28288))

(assert (not b!28663))

(assert (not b!28343))

(assert (not b!28608))

(assert (not b!28390))

(assert (not b!28699))

(assert (not b!28452))

(assert (not b!28534))

(assert (not b!28720))

(assert (not b!28640))

(assert (not b!28713))

(assert (not b!28780))

(assert (not d!15003))

(assert (not b!28335))

(assert (not d!15117))

(assert (not b!28346))

(assert (not d!14961))

(assert (not b!28339))

(assert (not b!28368))

(assert (not b!28464))

(assert (not b!28667))

(assert (not b!28349))

(assert (not d!15239))

(assert (not b!28809))

(assert (not b!28938))

(assert (not b!28892))

(assert (not b!28735))

(assert (not b!28562))

(assert (not d!14949))

(assert (not b!28601))

(assert (not b!28596))

(assert (not b!28677))

(assert (not b!28610))

(assert (not b!28711))

(assert (not b!28635))

(assert (not b!28442))

(assert (not b!28380))

(assert (not d!15025))

(assert (not b!28570))

(assert (not d!14945))

(assert (not b!28916))

(assert (not b!28714))

(assert (not b!28419))

(assert (not b!28692))

(assert (not b!28585))

(assert (not b!28408))

(assert (not b!28517))

(assert (not b!28924))

(assert (not b!28462))

(assert (not d!15069))

(assert (not b!28708))

(assert (not b!28597))

(assert (not b!28348))

(assert (not b!28768))

(assert (not d!15079))

(assert (not b!28603))

(assert (not b!28745))

(assert (not b!28466))

(assert (not b!28446))

(assert (not b!28807))

(assert (not b!28690))

(assert (not b!28918))

(assert (not b!28709))

(assert (not b!28819))

(assert (not b!28440))

(assert (not b!28812))

(assert (not b!28843))

(assert (not b!28785))

(assert (not b!28482))

(assert (not b!28668))

(assert (not b!28813))

(assert (not b!28315))

(assert (not d!14947))

(assert (not b!28438))

(assert (not b!28331))

(assert (not b!28437))

(assert (not b!28890))

(assert (not b!28468))

(assert (not b!28804))

(assert (not b!28834))

(assert (not b!28864))

(assert (not b!28384))

(assert (not d!14951))

(assert (not b!28882))

(assert (not b!28618))

(assert (not b!28579))

(assert (not b!28576))

(assert (not b!28838))

(assert (not d!15161))

(assert (not b!28522))

(assert (not b!28695))

(assert (not b!28880))

(assert (not b!28758))

(assert (not b!28718))

(assert (not b!28653))

(assert (not b!28587))

(assert (not b!28497))

(assert (not b!28756))

(assert (not b!28447))

(assert (not b!28749))

(assert (not b!28458))

(assert (not b!28402))

(assert (not d!15123))

(assert (not b!28908))

(assert (not b!28649))

(assert (not b!28841))

(assert (not b!28815))

(assert (not b!28444))

(assert (not d!14959))

(assert (not b!28847))

(assert (not b!28688))

(assert (not d!15121))

(assert (not b!28502))

(assert (not b!28385))

(assert (not b!28930))

(assert (not b!28712))

(assert (not b!28344))

(assert (not b!28394))

(assert (not b!28902))

(assert (not b!28782))

(assert (not b!28526))

(assert (not d!15041))

(assert (not b!28573))

(assert (not b!28716))

(assert (not b!28754))

(assert (not b!28837))

(assert (not b!28342))

(assert (not b!28747))

(assert (not b!28840))

(assert (not b!28740))

(assert (not b!28858))

(assert (not b!28729))

(assert (not b!28806))

(assert (not d!15187))

(assert (not b!28535))

(assert (not b!28811))

(assert (not b!28755))

(assert (not d!15039))

(assert (not b!28536))

(assert (not b!28312))

(assert (not b!28410))

(assert (not b!28594))

(assert (not b!28715))

(assert (not b!28580))

(assert (not b!28853))

(assert (not b!28449))

(assert (not b!28512))

(assert (not d!15119))

(assert (not b!28593))

(assert (not b!28560))

(assert (not b!28724))

(assert (not b!28744))

(assert (not b!28814))

(assert (not b!28760))

(assert (not d!15191))

(assert (not b!28530))

(assert (not d!15037))

(assert (not b!28528))

(assert (not b!28309))

(assert (not b!28817))

(assert (not b!28662))

(assert (not b!28868))

(assert (not b!28495))

(assert (not b!28730))

(assert (not b!28565))

(assert (not b!28428))

(assert (not b!28403))

(assert (not b!28836))

(assert (not b!28896))

(assert (not b!28839))

(assert (not b!28329))

(assert (not b!28611))

(assert (not b!28898))

(assert (not b!28584))

(assert (not b!28888))

(assert (not d!15275))

(assert (not b!28448))

(assert (not b!28340))

(assert (not b!28842))

(assert (not b!28519))

(assert (not b!28398))

(assert (not b!28778))

(assert (not b!28719))

(assert (not b!28355))

(assert (not b!28786))

(assert (not d!15081))

(assert (not b!28566))

(assert (not b!28825))

(assert (not d!15231))

(assert (not b!28450))

(assert (not b!28556))

(assert (not b!28569))

(assert (not d!15131))

(assert (not b!28717))

(assert (not b!28436))

(assert (not b!28418))

(assert (not b!28310))

(assert (not b!28439))

(assert (not b!28765))

(assert (not b!28770))

(assert (not b!28822))

(assert (not b!28726))

(assert (not b!28857))

(assert (not b!28353))

(assert (not b!28411))

(assert (not b!28613))

(assert (not d!15027))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

