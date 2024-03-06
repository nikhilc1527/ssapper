; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12208 () Bool)

(assert start!12208)

(declare-fun res!47838 () Bool)

(declare-fun e!49830 () Bool)

(assert (=> start!12208 (=> (not res!47838) (not e!49830))))

(declare-datatypes () ((List!782 (Cons!729 (h!1163 (_ BitVec 32)) (t!49096 List!782)) (Nil!731))))

(declare-fun nats!3 () List!782)

(declare-fun lambda!11130 () Int)

(declare-fun forall!64 (List!782 Int) Bool)

(assert (=> start!12208 (= res!47838 (forall!64 nats!3 lambda!11130))))

(assert (=> start!12208 e!49830))

(assert (=> start!12208 true))

(declare-fun b!91143 () Bool)

(declare-fun res!47839 () Bool)

(assert (=> b!91143 (=> (not res!47839) (not e!49830))))

(declare-fun x$3!230 () (_ BitVec 32))

(declare-fun lambda!11131 () Int)

(declare-fun foldLeft!8 (List!782 (_ BitVec 32) Int) (_ BitVec 32))

(assert (=> b!91143 (= res!47839 (= x$3!230 (foldLeft!8 nats!3 #b00000000000000000000000000000000 lambda!11131)))))

(declare-fun b!91144 () Bool)

(assert (=> b!91144 (= e!49830 (bvslt x$3!230 #b00000000000000000000000000000000))))

(assert (= (and start!12208 res!47838) b!91143))

(assert (= (and b!91143 res!47839) b!91144))

(declare-fun m!86876 () Bool)

(assert (=> start!12208 m!86876))

(declare-fun m!86878 () Bool)

(assert (=> b!91143 m!86878))

(push 1)

(assert (not b!91143))

(assert (not start!12208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59816 () Bool)

(declare-fun c!22183 () Bool)

(assert (=> d!59816 (= c!22183 (is-Nil!731 nats!3))))

(declare-fun e!49833 () (_ BitVec 32))

(assert (=> d!59816 (= (foldLeft!8 nats!3 #b00000000000000000000000000000000 lambda!11131) e!49833)))

(declare-fun b!91149 () Bool)

(assert (=> b!91149 (= e!49833 #b00000000000000000000000000000000)))

(declare-fun b!91150 () Bool)

(declare-fun dynLambda!1130 (Int (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!91150 (= e!49833 (foldLeft!8 (t!49096 nats!3) (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) lambda!11131))))

(assert (= (and d!59816 c!22183) b!91149))

(assert (= (and d!59816 (not c!22183)) b!91150))

(declare-fun b_lambda!18603 () Bool)

(assert (=> (not b_lambda!18603) (not b!91150)))

(declare-fun m!86880 () Bool)

(assert (=> b!91150 m!86880))

(assert (=> b!91150 m!86880))

(declare-fun m!86882 () Bool)

(assert (=> b!91150 m!86882))

(assert (=> b!91143 d!59816))

(declare-fun d!59818 () Bool)

(declare-fun res!47844 () Bool)

(declare-fun e!49838 () Bool)

(assert (=> d!59818 (=> res!47844 e!49838)))

(assert (=> d!59818 (= res!47844 (is-Nil!731 nats!3))))

(assert (=> d!59818 (= (forall!64 nats!3 lambda!11130) e!49838)))

(declare-fun b!91155 () Bool)

(declare-fun e!49839 () Bool)

(assert (=> b!91155 (= e!49838 e!49839)))

(declare-fun res!47845 () Bool)

(assert (=> b!91155 (=> (not res!47845) (not e!49839))))

(declare-fun dynLambda!1131 (Int (_ BitVec 32)) Bool)

(assert (=> b!91155 (= res!47845 (dynLambda!1131 lambda!11130 (h!1163 nats!3)))))

(declare-fun b!91156 () Bool)

(assert (=> b!91156 (= e!49839 (forall!64 (t!49096 nats!3) lambda!11130))))

(assert (= (and d!59818 (not res!47844)) b!91155))

(assert (= (and b!91155 res!47845) b!91156))

(declare-fun b_lambda!18605 () Bool)

(assert (=> (not b_lambda!18605) (not b!91155)))

(declare-fun m!86884 () Bool)

(assert (=> b!91155 m!86884))

(declare-fun m!86886 () Bool)

(assert (=> b!91156 m!86886))

(assert (=> start!12208 d!59818))

(declare-fun b_lambda!18607 () Bool)

(assert (= b_lambda!18603 (or b!91143 b_lambda!18607)))

(declare-fun bs!41784 () Bool)

(declare-fun d!59820 () Bool)

(assert (= bs!41784 (and d!59820 b!91143)))

(assert (=> bs!41784 (= (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (bvadd #b00000000000000000000000000000000 (h!1163 nats!3)))))

(assert (=> b!91150 d!59820))

(declare-fun b_lambda!18609 () Bool)

(assert (= b_lambda!18605 (or start!12208 b_lambda!18609)))

(declare-fun bs!41785 () Bool)

(declare-fun d!59822 () Bool)

(assert (= bs!41785 (and d!59822 start!12208)))

(assert (=> bs!41785 (= (dynLambda!1131 lambda!11130 (h!1163 nats!3)) (and (bvsge (h!1163 nats!3) #b00000000000000000000000000000000) (bvslt (h!1163 nats!3) #b00000101111101011110000100000000)))))

(assert (=> b!91155 d!59822))

(push 1)

(assert (not b!91156))

(assert (not b!91150))

(assert (not b_lambda!18607))

(assert (not b_lambda!18609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59824 () Bool)

(declare-fun res!47846 () Bool)

(declare-fun e!49840 () Bool)

(assert (=> d!59824 (=> res!47846 e!49840)))

(assert (=> d!59824 (= res!47846 (is-Nil!731 (t!49096 nats!3)))))

(assert (=> d!59824 (= (forall!64 (t!49096 nats!3) lambda!11130) e!49840)))

(declare-fun b!91157 () Bool)

(declare-fun e!49841 () Bool)

(assert (=> b!91157 (= e!49840 e!49841)))

(declare-fun res!47847 () Bool)

(assert (=> b!91157 (=> (not res!47847) (not e!49841))))

(assert (=> b!91157 (= res!47847 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 nats!3))))))

(declare-fun b!91158 () Bool)

(assert (=> b!91158 (= e!49841 (forall!64 (t!49096 (t!49096 nats!3)) lambda!11130))))

(assert (= (and d!59824 (not res!47846)) b!91157))

(assert (= (and b!91157 res!47847) b!91158))

(declare-fun b_lambda!18611 () Bool)

(assert (=> (not b_lambda!18611) (not b!91157)))

(declare-fun m!86888 () Bool)

(assert (=> b!91157 m!86888))

(declare-fun m!86890 () Bool)

(assert (=> b!91158 m!86890))

(assert (=> b!91156 d!59824))

(declare-fun d!59826 () Bool)

(declare-fun c!22184 () Bool)

(assert (=> d!59826 (= c!22184 (is-Nil!731 (t!49096 nats!3)))))

(declare-fun e!49842 () (_ BitVec 32))

(assert (=> d!59826 (= (foldLeft!8 (t!49096 nats!3) (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) lambda!11131) e!49842)))

(declare-fun b!91159 () Bool)

(assert (=> b!91159 (= e!49842 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)))))

(declare-fun b!91160 () Bool)

(assert (=> b!91160 (= e!49842 (foldLeft!8 (t!49096 (t!49096 nats!3)) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) lambda!11131))))

(assert (= (and d!59826 c!22184) b!91159))

(assert (= (and d!59826 (not c!22184)) b!91160))

(declare-fun b_lambda!18613 () Bool)

(assert (=> (not b_lambda!18613) (not b!91160)))

(assert (=> b!91160 m!86880))

(declare-fun m!86892 () Bool)

(assert (=> b!91160 m!86892))

(assert (=> b!91160 m!86892))

(declare-fun m!86894 () Bool)

(assert (=> b!91160 m!86894))

(assert (=> b!91150 d!59826))

(declare-fun b_lambda!18615 () Bool)

(assert (= b_lambda!18611 (or start!12208 b_lambda!18615)))

(declare-fun bs!41786 () Bool)

(declare-fun d!59828 () Bool)

(assert (= bs!41786 (and d!59828 start!12208)))

(assert (=> bs!41786 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 nats!3))) (and (bvsge (h!1163 (t!49096 nats!3)) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 nats!3)) #b00000101111101011110000100000000)))))

(assert (=> b!91157 d!59828))

(declare-fun b_lambda!18617 () Bool)

(assert (= b_lambda!18613 (or b!91143 b_lambda!18617)))

(declare-fun bs!41787 () Bool)

(declare-fun d!59830 () Bool)

(assert (= bs!41787 (and d!59830 b!91143)))

(assert (=> bs!41787 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (bvadd (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))))))

(assert (=> b!91160 d!59830))

(push 1)

(assert (not b!91158))

(assert (not b!91160))

(assert (not b_lambda!18615))

(assert (not b_lambda!18617))

(assert (not b_lambda!18607))

(assert (not b_lambda!18609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59832 () Bool)

(declare-fun c!22185 () Bool)

(assert (=> d!59832 (= c!22185 (is-Nil!731 (t!49096 (t!49096 nats!3))))))

(declare-fun e!49843 () (_ BitVec 32))

(assert (=> d!59832 (= (foldLeft!8 (t!49096 (t!49096 nats!3)) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) lambda!11131) e!49843)))

(declare-fun b!91161 () Bool)

(assert (=> b!91161 (= e!49843 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))))))

(declare-fun b!91162 () Bool)

(assert (=> b!91162 (= e!49843 (foldLeft!8 (t!49096 (t!49096 (t!49096 nats!3))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) lambda!11131))))

(assert (= (and d!59832 c!22185) b!91161))

(assert (= (and d!59832 (not c!22185)) b!91162))

(declare-fun b_lambda!18619 () Bool)

(assert (=> (not b_lambda!18619) (not b!91162)))

(assert (=> b!91162 m!86892))

(declare-fun m!86896 () Bool)

(assert (=> b!91162 m!86896))

(assert (=> b!91162 m!86896))

(declare-fun m!86898 () Bool)

(assert (=> b!91162 m!86898))

(assert (=> b!91160 d!59832))

(declare-fun d!59834 () Bool)

(declare-fun res!47848 () Bool)

(declare-fun e!49844 () Bool)

(assert (=> d!59834 (=> res!47848 e!49844)))

(assert (=> d!59834 (= res!47848 (is-Nil!731 (t!49096 (t!49096 nats!3))))))

(assert (=> d!59834 (= (forall!64 (t!49096 (t!49096 nats!3)) lambda!11130) e!49844)))

(declare-fun b!91163 () Bool)

(declare-fun e!49845 () Bool)

(assert (=> b!91163 (= e!49844 e!49845)))

(declare-fun res!47849 () Bool)

(assert (=> b!91163 (=> (not res!47849) (not e!49845))))

(assert (=> b!91163 (= res!47849 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 nats!3)))))))

(declare-fun b!91164 () Bool)

(assert (=> b!91164 (= e!49845 (forall!64 (t!49096 (t!49096 (t!49096 nats!3))) lambda!11130))))

(assert (= (and d!59834 (not res!47848)) b!91163))

(assert (= (and b!91163 res!47849) b!91164))

(declare-fun b_lambda!18621 () Bool)

(assert (=> (not b_lambda!18621) (not b!91163)))

(declare-fun m!86900 () Bool)

(assert (=> b!91163 m!86900))

(declare-fun m!86902 () Bool)

(assert (=> b!91164 m!86902))

(assert (=> b!91158 d!59834))

(declare-fun b_lambda!18623 () Bool)

(assert (= b_lambda!18621 (or start!12208 b_lambda!18623)))

(declare-fun bs!41788 () Bool)

(declare-fun d!59836 () Bool)

(assert (= bs!41788 (and d!59836 start!12208)))

(assert (=> bs!41788 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 nats!3)))) (and (bvsge (h!1163 (t!49096 (t!49096 nats!3))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 nats!3))) #b00000101111101011110000100000000)))))

(assert (=> b!91163 d!59836))

(declare-fun b_lambda!18625 () Bool)

(assert (= b_lambda!18619 (or b!91143 b_lambda!18625)))

(declare-fun bs!41789 () Bool)

(declare-fun d!59838 () Bool)

(assert (= bs!41789 (and d!59838 b!91143)))

(assert (=> bs!41789 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))))))

(assert (=> b!91162 d!59838))

(push 1)

(assert (not b!91164))

(assert (not b_lambda!18615))

(assert (not b_lambda!18617))

(assert (not b_lambda!18625))

(assert (not b_lambda!18607))

(assert (not b!91162))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59840 () Bool)

(declare-fun res!47850 () Bool)

(declare-fun e!49846 () Bool)

(assert (=> d!59840 (=> res!47850 e!49846)))

(assert (=> d!59840 (= res!47850 (is-Nil!731 (t!49096 (t!49096 (t!49096 nats!3)))))))

(assert (=> d!59840 (= (forall!64 (t!49096 (t!49096 (t!49096 nats!3))) lambda!11130) e!49846)))

(declare-fun b!91165 () Bool)

(declare-fun e!49847 () Bool)

(assert (=> b!91165 (= e!49846 e!49847)))

(declare-fun res!47851 () Bool)

(assert (=> b!91165 (=> (not res!47851) (not e!49847))))

(assert (=> b!91165 (= res!47851 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))))))

(declare-fun b!91166 () Bool)

(assert (=> b!91166 (= e!49847 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))) lambda!11130))))

(assert (= (and d!59840 (not res!47850)) b!91165))

(assert (= (and b!91165 res!47851) b!91166))

(declare-fun b_lambda!18627 () Bool)

(assert (=> (not b_lambda!18627) (not b!91165)))

(declare-fun m!86904 () Bool)

(assert (=> b!91165 m!86904))

(declare-fun m!86906 () Bool)

(assert (=> b!91166 m!86906))

(assert (=> b!91164 d!59840))

(declare-fun d!59842 () Bool)

(declare-fun c!22186 () Bool)

(assert (=> d!59842 (= c!22186 (is-Nil!731 (t!49096 (t!49096 (t!49096 nats!3)))))))

(declare-fun e!49848 () (_ BitVec 32))

(assert (=> d!59842 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 nats!3))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) lambda!11131) e!49848)))

(declare-fun b!91167 () Bool)

(assert (=> b!91167 (= e!49848 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))))))

(declare-fun b!91168 () Bool)

(assert (=> b!91168 (= e!49848 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) lambda!11131))))

(assert (= (and d!59842 c!22186) b!91167))

(assert (= (and d!59842 (not c!22186)) b!91168))

(declare-fun b_lambda!18629 () Bool)

(assert (=> (not b_lambda!18629) (not b!91168)))

(assert (=> b!91168 m!86896))

(declare-fun m!86908 () Bool)

(assert (=> b!91168 m!86908))

(assert (=> b!91168 m!86908))

(declare-fun m!86910 () Bool)

(assert (=> b!91168 m!86910))

(assert (=> b!91162 d!59842))

(declare-fun b_lambda!18631 () Bool)

(assert (= b_lambda!18629 (or b!91143 b_lambda!18631)))

(declare-fun bs!41790 () Bool)

(declare-fun d!59844 () Bool)

(assert (= bs!41790 (and d!59844 b!91143)))

(assert (=> bs!41790 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))))))

(assert (=> b!91168 d!59844))

(declare-fun b_lambda!18633 () Bool)

(assert (= b_lambda!18627 (or start!12208 b_lambda!18633)))

(declare-fun bs!41791 () Bool)

(declare-fun d!59846 () Bool)

(assert (= bs!41791 (and d!59846 start!12208)))

(assert (=> bs!41791 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 nats!3)))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 nats!3)))) #b00000101111101011110000100000000)))))

(assert (=> b!91165 d!59846))

(push 1)

(assert (not b!91168))

(assert (not b_lambda!18615))

(assert (not b_lambda!18617))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b!91166))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59848 () Bool)

(declare-fun res!47852 () Bool)

(declare-fun e!49849 () Bool)

(assert (=> d!59848 (=> res!47852 e!49849)))

(assert (=> d!59848 (= res!47852 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))

(assert (=> d!59848 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))) lambda!11130) e!49849)))

(declare-fun b!91169 () Bool)

(declare-fun e!49850 () Bool)

(assert (=> b!91169 (= e!49849 e!49850)))

(declare-fun res!47853 () Bool)

(assert (=> b!91169 (=> (not res!47853) (not e!49850))))

(assert (=> b!91169 (= res!47853 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))

(declare-fun b!91170 () Bool)

(assert (=> b!91170 (= e!49850 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))) lambda!11130))))

(assert (= (and d!59848 (not res!47852)) b!91169))

(assert (= (and b!91169 res!47853) b!91170))

(declare-fun b_lambda!18635 () Bool)

(assert (=> (not b_lambda!18635) (not b!91169)))

(declare-fun m!86912 () Bool)

(assert (=> b!91169 m!86912))

(declare-fun m!86914 () Bool)

(assert (=> b!91170 m!86914))

(assert (=> b!91166 d!59848))

(declare-fun d!59850 () Bool)

(declare-fun c!22187 () Bool)

(assert (=> d!59850 (= c!22187 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))

(declare-fun e!49851 () (_ BitVec 32))

(assert (=> d!59850 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) lambda!11131) e!49851)))

(declare-fun b!91171 () Bool)

(assert (=> b!91171 (= e!49851 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))))))

(declare-fun b!91172 () Bool)

(assert (=> b!91172 (= e!49851 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) lambda!11131))))

(assert (= (and d!59850 c!22187) b!91171))

(assert (= (and d!59850 (not c!22187)) b!91172))

(declare-fun b_lambda!18637 () Bool)

(assert (=> (not b_lambda!18637) (not b!91172)))

(assert (=> b!91172 m!86908))

(declare-fun m!86916 () Bool)

(assert (=> b!91172 m!86916))

(assert (=> b!91172 m!86916))

(declare-fun m!86918 () Bool)

(assert (=> b!91172 m!86918))

(assert (=> b!91168 d!59850))

(declare-fun b_lambda!18639 () Bool)

(assert (= b_lambda!18637 (or b!91143 b_lambda!18639)))

(declare-fun bs!41792 () Bool)

(declare-fun d!59852 () Bool)

(assert (= bs!41792 (and d!59852 b!91143)))

(assert (=> bs!41792 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))

(assert (=> b!91172 d!59852))

(declare-fun b_lambda!18641 () Bool)

(assert (= b_lambda!18635 (or start!12208 b_lambda!18641)))

(declare-fun bs!41793 () Bool)

(declare-fun d!59854 () Bool)

(assert (= bs!41793 (and d!59854 start!12208)))

(assert (=> bs!41793 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))) #b00000101111101011110000100000000)))))

(assert (=> b!91169 d!59854))

(push 1)

(assert (not b_lambda!18615))

(assert (not b_lambda!18617))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b!91172))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b_lambda!18639))

(assert (not b_lambda!18641))

(assert (not b!91170))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59856 () Bool)

(declare-fun c!22188 () Bool)

(assert (=> d!59856 (= c!22188 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))

(declare-fun e!49852 () (_ BitVec 32))

(assert (=> d!59856 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) lambda!11131) e!49852)))

(declare-fun b!91173 () Bool)

(assert (=> b!91173 (= e!49852 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))

(declare-fun b!91174 () Bool)

(assert (=> b!91174 (= e!49852 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) lambda!11131))))

(assert (= (and d!59856 c!22188) b!91173))

(assert (= (and d!59856 (not c!22188)) b!91174))

(declare-fun b_lambda!18643 () Bool)

(assert (=> (not b_lambda!18643) (not b!91174)))

(assert (=> b!91174 m!86916))

(declare-fun m!86920 () Bool)

(assert (=> b!91174 m!86920))

(assert (=> b!91174 m!86920))

(declare-fun m!86922 () Bool)

(assert (=> b!91174 m!86922))

(assert (=> b!91172 d!59856))

(declare-fun d!59858 () Bool)

(declare-fun res!47854 () Bool)

(declare-fun e!49853 () Bool)

(assert (=> d!59858 (=> res!47854 e!49853)))

(assert (=> d!59858 (= res!47854 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))

(assert (=> d!59858 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))) lambda!11130) e!49853)))

(declare-fun b!91175 () Bool)

(declare-fun e!49854 () Bool)

(assert (=> b!91175 (= e!49853 e!49854)))

(declare-fun res!47855 () Bool)

(assert (=> b!91175 (=> (not res!47855) (not e!49854))))

(assert (=> b!91175 (= res!47855 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))

(declare-fun b!91176 () Bool)

(assert (=> b!91176 (= e!49854 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) lambda!11130))))

(assert (= (and d!59858 (not res!47854)) b!91175))

(assert (= (and b!91175 res!47855) b!91176))

(declare-fun b_lambda!18645 () Bool)

(assert (=> (not b_lambda!18645) (not b!91175)))

(declare-fun m!86924 () Bool)

(assert (=> b!91175 m!86924))

(declare-fun m!86926 () Bool)

(assert (=> b!91176 m!86926))

(assert (=> b!91170 d!59858))

(declare-fun b_lambda!18647 () Bool)

(assert (= b_lambda!18643 (or b!91143 b_lambda!18647)))

(declare-fun bs!41794 () Bool)

(declare-fun d!59860 () Bool)

(assert (= bs!41794 (and d!59860 b!91143)))

(assert (=> bs!41794 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))

(assert (=> b!91174 d!59860))

(declare-fun b_lambda!18649 () Bool)

(assert (= b_lambda!18645 (or start!12208 b_lambda!18649)))

(declare-fun bs!41795 () Bool)

(declare-fun d!59862 () Bool)

(assert (= bs!41795 (and d!59862 start!12208)))

(assert (=> bs!41795 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) #b00000101111101011110000100000000)))))

(assert (=> b!91175 d!59862))

(push 1)

(assert (not b_lambda!18615))

(assert (not b_lambda!18647))

(assert (not b_lambda!18617))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b!91174))

(assert (not b_lambda!18639))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18609))

(assert (not b!91176))

(assert (not b_lambda!18623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59864 () Bool)

(declare-fun c!22189 () Bool)

(assert (=> d!59864 (= c!22189 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))

(declare-fun e!49855 () (_ BitVec 32))

(assert (=> d!59864 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) lambda!11131) e!49855)))

(declare-fun b!91177 () Bool)

(assert (=> b!91177 (= e!49855 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))

(declare-fun b!91178 () Bool)

(assert (=> b!91178 (= e!49855 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) lambda!11131))))

(assert (= (and d!59864 c!22189) b!91177))

(assert (= (and d!59864 (not c!22189)) b!91178))

(declare-fun b_lambda!18651 () Bool)

(assert (=> (not b_lambda!18651) (not b!91178)))

(assert (=> b!91178 m!86920))

(declare-fun m!86928 () Bool)

(assert (=> b!91178 m!86928))

(assert (=> b!91178 m!86928))

(declare-fun m!86930 () Bool)

(assert (=> b!91178 m!86930))

(assert (=> b!91174 d!59864))

(declare-fun d!59866 () Bool)

(declare-fun res!47856 () Bool)

(declare-fun e!49856 () Bool)

(assert (=> d!59866 (=> res!47856 e!49856)))

(assert (=> d!59866 (= res!47856 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))

(assert (=> d!59866 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) lambda!11130) e!49856)))

(declare-fun b!91179 () Bool)

(declare-fun e!49857 () Bool)

(assert (=> b!91179 (= e!49856 e!49857)))

(declare-fun res!47857 () Bool)

(assert (=> b!91179 (=> (not res!47857) (not e!49857))))

(assert (=> b!91179 (= res!47857 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))

(declare-fun b!91180 () Bool)

(assert (=> b!91180 (= e!49857 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) lambda!11130))))

(assert (= (and d!59866 (not res!47856)) b!91179))

(assert (= (and b!91179 res!47857) b!91180))

(declare-fun b_lambda!18653 () Bool)

(assert (=> (not b_lambda!18653) (not b!91179)))

(declare-fun m!86932 () Bool)

(assert (=> b!91179 m!86932))

(declare-fun m!86934 () Bool)

(assert (=> b!91180 m!86934))

(assert (=> b!91176 d!59866))

(declare-fun b_lambda!18655 () Bool)

(assert (= b_lambda!18653 (or start!12208 b_lambda!18655)))

(declare-fun bs!41796 () Bool)

(declare-fun d!59868 () Bool)

(assert (= bs!41796 (and d!59868 start!12208)))

(assert (=> bs!41796 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91179 d!59868))

(declare-fun b_lambda!18657 () Bool)

(assert (= b_lambda!18651 (or b!91143 b_lambda!18657)))

(declare-fun bs!41797 () Bool)

(declare-fun d!59870 () Bool)

(assert (= bs!41797 (and d!59870 b!91143)))

(assert (=> bs!41797 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))

(assert (=> b!91178 d!59870))

(push 1)

(assert (not b!91178))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18647))

(assert (not b_lambda!18617))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b!91180))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b_lambda!18639))

(assert (not b_lambda!18655))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59872 () Bool)

(declare-fun c!22190 () Bool)

(assert (=> d!59872 (= c!22190 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))

(declare-fun e!49858 () (_ BitVec 32))

(assert (=> d!59872 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) lambda!11131) e!49858)))

(declare-fun b!91181 () Bool)

(assert (=> b!91181 (= e!49858 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))

(declare-fun b!91182 () Bool)

(assert (=> b!91182 (= e!49858 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) lambda!11131))))

(assert (= (and d!59872 c!22190) b!91181))

(assert (= (and d!59872 (not c!22190)) b!91182))

(declare-fun b_lambda!18659 () Bool)

(assert (=> (not b_lambda!18659) (not b!91182)))

(assert (=> b!91182 m!86928))

(declare-fun m!86936 () Bool)

(assert (=> b!91182 m!86936))

(assert (=> b!91182 m!86936))

(declare-fun m!86938 () Bool)

(assert (=> b!91182 m!86938))

(assert (=> b!91178 d!59872))

(declare-fun d!59874 () Bool)

(declare-fun res!47858 () Bool)

(declare-fun e!49859 () Bool)

(assert (=> d!59874 (=> res!47858 e!49859)))

(assert (=> d!59874 (= res!47858 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))

(assert (=> d!59874 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) lambda!11130) e!49859)))

(declare-fun b!91183 () Bool)

(declare-fun e!49860 () Bool)

(assert (=> b!91183 (= e!49859 e!49860)))

(declare-fun res!47859 () Bool)

(assert (=> b!91183 (=> (not res!47859) (not e!49860))))

(assert (=> b!91183 (= res!47859 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))

(declare-fun b!91184 () Bool)

(assert (=> b!91184 (= e!49860 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) lambda!11130))))

(assert (= (and d!59874 (not res!47858)) b!91183))

(assert (= (and b!91183 res!47859) b!91184))

(declare-fun b_lambda!18661 () Bool)

(assert (=> (not b_lambda!18661) (not b!91183)))

(declare-fun m!86940 () Bool)

(assert (=> b!91183 m!86940))

(declare-fun m!86942 () Bool)

(assert (=> b!91184 m!86942))

(assert (=> b!91180 d!59874))

(declare-fun b_lambda!18663 () Bool)

(assert (= b_lambda!18659 (or b!91143 b_lambda!18663)))

(declare-fun bs!41798 () Bool)

(declare-fun d!59876 () Bool)

(assert (= bs!41798 (and d!59876 b!91143)))

(assert (=> bs!41798 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))

(assert (=> b!91182 d!59876))

(declare-fun b_lambda!18665 () Bool)

(assert (= b_lambda!18661 (or start!12208 b_lambda!18665)))

(declare-fun bs!41799 () Bool)

(declare-fun d!59878 () Bool)

(assert (= bs!41799 (and d!59878 start!12208)))

(assert (=> bs!41799 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91183 d!59878))

(push 1)

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18647))

(assert (not b_lambda!18617))

(assert (not b_lambda!18663))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b!91182))

(assert (not b_lambda!18665))

(assert (not b_lambda!18639))

(assert (not b_lambda!18655))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(assert (not b!91184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59880 () Bool)

(declare-fun c!22191 () Bool)

(assert (=> d!59880 (= c!22191 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))

(declare-fun e!49861 () (_ BitVec 32))

(assert (=> d!59880 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) lambda!11131) e!49861)))

(declare-fun b!91185 () Bool)

(assert (=> b!91185 (= e!49861 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))

(declare-fun b!91186 () Bool)

(assert (=> b!91186 (= e!49861 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) lambda!11131))))

(assert (= (and d!59880 c!22191) b!91185))

(assert (= (and d!59880 (not c!22191)) b!91186))

(declare-fun b_lambda!18667 () Bool)

(assert (=> (not b_lambda!18667) (not b!91186)))

(assert (=> b!91186 m!86936))

(declare-fun m!86944 () Bool)

(assert (=> b!91186 m!86944))

(assert (=> b!91186 m!86944))

(declare-fun m!86946 () Bool)

(assert (=> b!91186 m!86946))

(assert (=> b!91182 d!59880))

(declare-fun d!59882 () Bool)

(declare-fun res!47860 () Bool)

(declare-fun e!49862 () Bool)

(assert (=> d!59882 (=> res!47860 e!49862)))

(assert (=> d!59882 (= res!47860 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))

(assert (=> d!59882 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) lambda!11130) e!49862)))

(declare-fun b!91187 () Bool)

(declare-fun e!49863 () Bool)

(assert (=> b!91187 (= e!49862 e!49863)))

(declare-fun res!47861 () Bool)

(assert (=> b!91187 (=> (not res!47861) (not e!49863))))

(assert (=> b!91187 (= res!47861 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))

(declare-fun b!91188 () Bool)

(assert (=> b!91188 (= e!49863 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) lambda!11130))))

(assert (= (and d!59882 (not res!47860)) b!91187))

(assert (= (and b!91187 res!47861) b!91188))

(declare-fun b_lambda!18669 () Bool)

(assert (=> (not b_lambda!18669) (not b!91187)))

(declare-fun m!86948 () Bool)

(assert (=> b!91187 m!86948))

(declare-fun m!86950 () Bool)

(assert (=> b!91188 m!86950))

(assert (=> b!91184 d!59882))

(declare-fun b_lambda!18671 () Bool)

(assert (= b_lambda!18667 (or b!91143 b_lambda!18671)))

(declare-fun bs!41800 () Bool)

(declare-fun d!59884 () Bool)

(assert (= bs!41800 (and d!59884 b!91143)))

(assert (=> bs!41800 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))

(assert (=> b!91186 d!59884))

(declare-fun b_lambda!18673 () Bool)

(assert (= b_lambda!18669 (or start!12208 b_lambda!18673)))

(declare-fun bs!41801 () Bool)

(declare-fun d!59886 () Bool)

(assert (= bs!41801 (and d!59886 start!12208)))

(assert (=> bs!41801 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91187 d!59886))

(push 1)

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18647))

(assert (not b_lambda!18617))

(assert (not b_lambda!18663))

(assert (not b!91186))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b_lambda!18665))

(assert (not b_lambda!18639))

(assert (not b_lambda!18655))

(assert (not b_lambda!18641))

(assert (not b!91188))

(assert (not b_lambda!18649))

(assert (not b_lambda!18671))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59888 () Bool)

(declare-fun c!22192 () Bool)

(assert (=> d!59888 (= c!22192 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))

(declare-fun e!49864 () (_ BitVec 32))

(assert (=> d!59888 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) lambda!11131) e!49864)))

(declare-fun b!91189 () Bool)

(assert (=> b!91189 (= e!49864 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))

(declare-fun b!91190 () Bool)

(assert (=> b!91190 (= e!49864 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) lambda!11131))))

(assert (= (and d!59888 c!22192) b!91189))

(assert (= (and d!59888 (not c!22192)) b!91190))

(declare-fun b_lambda!18675 () Bool)

(assert (=> (not b_lambda!18675) (not b!91190)))

(assert (=> b!91190 m!86944))

(declare-fun m!86952 () Bool)

(assert (=> b!91190 m!86952))

(assert (=> b!91190 m!86952))

(declare-fun m!86954 () Bool)

(assert (=> b!91190 m!86954))

(assert (=> b!91186 d!59888))

(declare-fun d!59890 () Bool)

(declare-fun res!47862 () Bool)

(declare-fun e!49865 () Bool)

(assert (=> d!59890 (=> res!47862 e!49865)))

(assert (=> d!59890 (= res!47862 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))

(assert (=> d!59890 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) lambda!11130) e!49865)))

(declare-fun b!91191 () Bool)

(declare-fun e!49866 () Bool)

(assert (=> b!91191 (= e!49865 e!49866)))

(declare-fun res!47863 () Bool)

(assert (=> b!91191 (=> (not res!47863) (not e!49866))))

(assert (=> b!91191 (= res!47863 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))

(declare-fun b!91192 () Bool)

(assert (=> b!91192 (= e!49866 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) lambda!11130))))

(assert (= (and d!59890 (not res!47862)) b!91191))

(assert (= (and b!91191 res!47863) b!91192))

(declare-fun b_lambda!18677 () Bool)

(assert (=> (not b_lambda!18677) (not b!91191)))

(declare-fun m!86956 () Bool)

(assert (=> b!91191 m!86956))

(declare-fun m!86958 () Bool)

(assert (=> b!91192 m!86958))

(assert (=> b!91188 d!59890))

(declare-fun b_lambda!18679 () Bool)

(assert (= b_lambda!18675 (or b!91143 b_lambda!18679)))

(declare-fun bs!41802 () Bool)

(declare-fun d!59892 () Bool)

(assert (= bs!41802 (and d!59892 b!91143)))

(assert (=> bs!41802 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))

(assert (=> b!91190 d!59892))

(declare-fun b_lambda!18681 () Bool)

(assert (= b_lambda!18677 (or start!12208 b_lambda!18681)))

(declare-fun bs!41803 () Bool)

(declare-fun d!59894 () Bool)

(assert (= bs!41803 (and d!59894 start!12208)))

(assert (=> bs!41803 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91191 d!59894))

(push 1)

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18647))

(assert (not b_lambda!18617))

(assert (not b_lambda!18681))

(assert (not b_lambda!18663))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b!91190))

(assert (not b_lambda!18631))

(assert (not b_lambda!18679))

(assert (not b_lambda!18665))

(assert (not b_lambda!18639))

(assert (not b_lambda!18655))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18671))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(assert (not b!91192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59896 () Bool)

(declare-fun res!47864 () Bool)

(declare-fun e!49867 () Bool)

(assert (=> d!59896 (=> res!47864 e!49867)))

(assert (=> d!59896 (= res!47864 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))

(assert (=> d!59896 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) lambda!11130) e!49867)))

(declare-fun b!91193 () Bool)

(declare-fun e!49868 () Bool)

(assert (=> b!91193 (= e!49867 e!49868)))

(declare-fun res!47865 () Bool)

(assert (=> b!91193 (=> (not res!47865) (not e!49868))))

(assert (=> b!91193 (= res!47865 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))

(declare-fun b!91194 () Bool)

(assert (=> b!91194 (= e!49868 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) lambda!11130))))

(assert (= (and d!59896 (not res!47864)) b!91193))

(assert (= (and b!91193 res!47865) b!91194))

(declare-fun b_lambda!18683 () Bool)

(assert (=> (not b_lambda!18683) (not b!91193)))

(declare-fun m!86960 () Bool)

(assert (=> b!91193 m!86960))

(declare-fun m!86962 () Bool)

(assert (=> b!91194 m!86962))

(assert (=> b!91192 d!59896))

(declare-fun d!59898 () Bool)

(declare-fun c!22193 () Bool)

(assert (=> d!59898 (= c!22193 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))

(declare-fun e!49869 () (_ BitVec 32))

(assert (=> d!59898 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) lambda!11131) e!49869)))

(declare-fun b!91195 () Bool)

(assert (=> b!91195 (= e!49869 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))

(declare-fun b!91196 () Bool)

(assert (=> b!91196 (= e!49869 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) lambda!11131))))

(assert (= (and d!59898 c!22193) b!91195))

(assert (= (and d!59898 (not c!22193)) b!91196))

(declare-fun b_lambda!18685 () Bool)

(assert (=> (not b_lambda!18685) (not b!91196)))

(assert (=> b!91196 m!86952))

(declare-fun m!86964 () Bool)

(assert (=> b!91196 m!86964))

(assert (=> b!91196 m!86964))

(declare-fun m!86966 () Bool)

(assert (=> b!91196 m!86966))

(assert (=> b!91190 d!59898))

(declare-fun b_lambda!18687 () Bool)

(assert (= b_lambda!18685 (or b!91143 b_lambda!18687)))

(declare-fun bs!41804 () Bool)

(declare-fun d!59900 () Bool)

(assert (= bs!41804 (and d!59900 b!91143)))

(assert (=> bs!41804 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))

(assert (=> b!91196 d!59900))

(declare-fun b_lambda!18689 () Bool)

(assert (= b_lambda!18683 (or start!12208 b_lambda!18689)))

(declare-fun bs!41805 () Bool)

(declare-fun d!59902 () Bool)

(assert (= bs!41805 (and d!59902 start!12208)))

(assert (=> bs!41805 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91193 d!59902))

(push 1)

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18689))

(assert (not b_lambda!18647))

(assert (not b_lambda!18617))

(assert (not b_lambda!18681))

(assert (not b!91194))

(assert (not b_lambda!18663))

(assert (not b_lambda!18687))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b_lambda!18679))

(assert (not b_lambda!18665))

(assert (not b_lambda!18639))

(assert (not b_lambda!18655))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18671))

(assert (not b_lambda!18609))

(assert (not b!91196))

(assert (not b_lambda!18623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59904 () Bool)

(declare-fun c!22194 () Bool)

(assert (=> d!59904 (= c!22194 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))

(declare-fun e!49870 () (_ BitVec 32))

(assert (=> d!59904 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) lambda!11131) e!49870)))

(declare-fun b!91197 () Bool)

(assert (=> b!91197 (= e!49870 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))

(declare-fun b!91198 () Bool)

(assert (=> b!91198 (= e!49870 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) lambda!11131))))

(assert (= (and d!59904 c!22194) b!91197))

(assert (= (and d!59904 (not c!22194)) b!91198))

(declare-fun b_lambda!18691 () Bool)

(assert (=> (not b_lambda!18691) (not b!91198)))

(assert (=> b!91198 m!86964))

(declare-fun m!86968 () Bool)

(assert (=> b!91198 m!86968))

(assert (=> b!91198 m!86968))

(declare-fun m!86970 () Bool)

(assert (=> b!91198 m!86970))

(assert (=> b!91196 d!59904))

(declare-fun d!59906 () Bool)

(declare-fun res!47866 () Bool)

(declare-fun e!49871 () Bool)

(assert (=> d!59906 (=> res!47866 e!49871)))

(assert (=> d!59906 (= res!47866 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))

(assert (=> d!59906 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) lambda!11130) e!49871)))

(declare-fun b!91199 () Bool)

(declare-fun e!49872 () Bool)

(assert (=> b!91199 (= e!49871 e!49872)))

(declare-fun res!47867 () Bool)

(assert (=> b!91199 (=> (not res!47867) (not e!49872))))

(assert (=> b!91199 (= res!47867 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))

(declare-fun b!91200 () Bool)

(assert (=> b!91200 (= e!49872 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) lambda!11130))))

(assert (= (and d!59906 (not res!47866)) b!91199))

(assert (= (and b!91199 res!47867) b!91200))

(declare-fun b_lambda!18693 () Bool)

(assert (=> (not b_lambda!18693) (not b!91199)))

(declare-fun m!86972 () Bool)

(assert (=> b!91199 m!86972))

(declare-fun m!86974 () Bool)

(assert (=> b!91200 m!86974))

(assert (=> b!91194 d!59906))

(declare-fun b_lambda!18695 () Bool)

(assert (= b_lambda!18691 (or b!91143 b_lambda!18695)))

(declare-fun bs!41806 () Bool)

(declare-fun d!59908 () Bool)

(assert (= bs!41806 (and d!59908 b!91143)))

(assert (=> bs!41806 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))

(assert (=> b!91198 d!59908))

(declare-fun b_lambda!18697 () Bool)

(assert (= b_lambda!18693 (or start!12208 b_lambda!18697)))

(declare-fun bs!41807 () Bool)

(declare-fun d!59910 () Bool)

(assert (= bs!41807 (and d!59910 start!12208)))

(assert (=> bs!41807 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91199 d!59910))

(push 1)

(assert (not b!91200))

(assert (not b_lambda!18695))

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18689))

(assert (not b_lambda!18647))

(assert (not b_lambda!18617))

(assert (not b_lambda!18681))

(assert (not b_lambda!18663))

(assert (not b_lambda!18687))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b!91198))

(assert (not b_lambda!18679))

(assert (not b_lambda!18665))

(assert (not b_lambda!18639))

(assert (not b_lambda!18655))

(assert (not b_lambda!18697))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18671))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59912 () Bool)

(declare-fun c!22195 () Bool)

(assert (=> d!59912 (= c!22195 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))

(declare-fun e!49873 () (_ BitVec 32))

(assert (=> d!59912 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) lambda!11131) e!49873)))

(declare-fun b!91201 () Bool)

(assert (=> b!91201 (= e!49873 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))

(declare-fun b!91202 () Bool)

(assert (=> b!91202 (= e!49873 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) lambda!11131))))

(assert (= (and d!59912 c!22195) b!91201))

(assert (= (and d!59912 (not c!22195)) b!91202))

(declare-fun b_lambda!18699 () Bool)

(assert (=> (not b_lambda!18699) (not b!91202)))

(assert (=> b!91202 m!86968))

(declare-fun m!86976 () Bool)

(assert (=> b!91202 m!86976))

(assert (=> b!91202 m!86976))

(declare-fun m!86978 () Bool)

(assert (=> b!91202 m!86978))

(assert (=> b!91198 d!59912))

(declare-fun d!59914 () Bool)

(declare-fun res!47868 () Bool)

(declare-fun e!49874 () Bool)

(assert (=> d!59914 (=> res!47868 e!49874)))

(assert (=> d!59914 (= res!47868 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))

(assert (=> d!59914 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) lambda!11130) e!49874)))

(declare-fun b!91203 () Bool)

(declare-fun e!49875 () Bool)

(assert (=> b!91203 (= e!49874 e!49875)))

(declare-fun res!47869 () Bool)

(assert (=> b!91203 (=> (not res!47869) (not e!49875))))

(assert (=> b!91203 (= res!47869 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))

(declare-fun b!91204 () Bool)

(assert (=> b!91204 (= e!49875 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) lambda!11130))))

(assert (= (and d!59914 (not res!47868)) b!91203))

(assert (= (and b!91203 res!47869) b!91204))

(declare-fun b_lambda!18701 () Bool)

(assert (=> (not b_lambda!18701) (not b!91203)))

(declare-fun m!86980 () Bool)

(assert (=> b!91203 m!86980))

(declare-fun m!86982 () Bool)

(assert (=> b!91204 m!86982))

(assert (=> b!91200 d!59914))

(declare-fun b_lambda!18703 () Bool)

(assert (= b_lambda!18699 (or b!91143 b_lambda!18703)))

(declare-fun bs!41808 () Bool)

(declare-fun d!59916 () Bool)

(assert (= bs!41808 (and d!59916 b!91143)))

(assert (=> bs!41808 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))

(assert (=> b!91202 d!59916))

(declare-fun b_lambda!18705 () Bool)

(assert (= b_lambda!18701 (or start!12208 b_lambda!18705)))

(declare-fun bs!41809 () Bool)

(declare-fun d!59918 () Bool)

(assert (= bs!41809 (and d!59918 start!12208)))

(assert (=> bs!41809 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91203 d!59918))

(push 1)

(assert (not b_lambda!18695))

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18689))

(assert (not b_lambda!18647))

(assert (not b_lambda!18617))

(assert (not b_lambda!18681))

(assert (not b_lambda!18663))

(assert (not b_lambda!18687))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b!91204))

(assert (not b_lambda!18679))

(assert (not b_lambda!18665))

(assert (not b_lambda!18705))

(assert (not b_lambda!18639))

(assert (not b_lambda!18655))

(assert (not b_lambda!18697))

(assert (not b!91202))

(assert (not b_lambda!18703))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18671))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59920 () Bool)

(declare-fun res!47870 () Bool)

(declare-fun e!49876 () Bool)

(assert (=> d!59920 (=> res!47870 e!49876)))

(assert (=> d!59920 (= res!47870 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))

(assert (=> d!59920 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) lambda!11130) e!49876)))

(declare-fun b!91205 () Bool)

(declare-fun e!49877 () Bool)

(assert (=> b!91205 (= e!49876 e!49877)))

(declare-fun res!47871 () Bool)

(assert (=> b!91205 (=> (not res!47871) (not e!49877))))

(assert (=> b!91205 (= res!47871 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))

(declare-fun b!91206 () Bool)

(assert (=> b!91206 (= e!49877 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) lambda!11130))))

(assert (= (and d!59920 (not res!47870)) b!91205))

(assert (= (and b!91205 res!47871) b!91206))

(declare-fun b_lambda!18707 () Bool)

(assert (=> (not b_lambda!18707) (not b!91205)))

(declare-fun m!86984 () Bool)

(assert (=> b!91205 m!86984))

(declare-fun m!86986 () Bool)

(assert (=> b!91206 m!86986))

(assert (=> b!91204 d!59920))

(declare-fun d!59922 () Bool)

(declare-fun c!22196 () Bool)

(assert (=> d!59922 (= c!22196 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))

(declare-fun e!49878 () (_ BitVec 32))

(assert (=> d!59922 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) lambda!11131) e!49878)))

(declare-fun b!91207 () Bool)

(assert (=> b!91207 (= e!49878 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))

(declare-fun b!91208 () Bool)

(assert (=> b!91208 (= e!49878 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) lambda!11131))))

(assert (= (and d!59922 c!22196) b!91207))

(assert (= (and d!59922 (not c!22196)) b!91208))

(declare-fun b_lambda!18709 () Bool)

(assert (=> (not b_lambda!18709) (not b!91208)))

(assert (=> b!91208 m!86976))

(declare-fun m!86988 () Bool)

(assert (=> b!91208 m!86988))

(assert (=> b!91208 m!86988))

(declare-fun m!86990 () Bool)

(assert (=> b!91208 m!86990))

(assert (=> b!91202 d!59922))

(declare-fun b_lambda!18711 () Bool)

(assert (= b_lambda!18709 (or b!91143 b_lambda!18711)))

(declare-fun bs!41810 () Bool)

(declare-fun d!59924 () Bool)

(assert (= bs!41810 (and d!59924 b!91143)))

(assert (=> bs!41810 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))

(assert (=> b!91208 d!59924))

(declare-fun b_lambda!18713 () Bool)

(assert (= b_lambda!18707 (or start!12208 b_lambda!18713)))

(declare-fun bs!41811 () Bool)

(declare-fun d!59926 () Bool)

(assert (= bs!41811 (and d!59926 start!12208)))

(assert (=> bs!41811 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91205 d!59926))

(push 1)

(assert (not b_lambda!18695))

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18689))

(assert (not b_lambda!18647))

(assert (not b!91208))

(assert (not b_lambda!18617))

(assert (not b_lambda!18681))

(assert (not b_lambda!18713))

(assert (not b_lambda!18663))

(assert (not b_lambda!18711))

(assert (not b_lambda!18687))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b_lambda!18679))

(assert (not b_lambda!18665))

(assert (not b_lambda!18705))

(assert (not b_lambda!18639))

(assert (not b_lambda!18655))

(assert (not b_lambda!18697))

(assert (not b_lambda!18703))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18671))

(assert (not b_lambda!18609))

(assert (not b!91206))

(assert (not b_lambda!18623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59928 () Bool)

(declare-fun res!47872 () Bool)

(declare-fun e!49879 () Bool)

(assert (=> d!59928 (=> res!47872 e!49879)))

(assert (=> d!59928 (= res!47872 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))

(assert (=> d!59928 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) lambda!11130) e!49879)))

(declare-fun b!91209 () Bool)

(declare-fun e!49880 () Bool)

(assert (=> b!91209 (= e!49879 e!49880)))

(declare-fun res!47873 () Bool)

(assert (=> b!91209 (=> (not res!47873) (not e!49880))))

(assert (=> b!91209 (= res!47873 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))

(declare-fun b!91210 () Bool)

(assert (=> b!91210 (= e!49880 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) lambda!11130))))

(assert (= (and d!59928 (not res!47872)) b!91209))

(assert (= (and b!91209 res!47873) b!91210))

(declare-fun b_lambda!18715 () Bool)

(assert (=> (not b_lambda!18715) (not b!91209)))

(declare-fun m!86992 () Bool)

(assert (=> b!91209 m!86992))

(declare-fun m!86994 () Bool)

(assert (=> b!91210 m!86994))

(assert (=> b!91206 d!59928))

(declare-fun d!59930 () Bool)

(declare-fun c!22197 () Bool)

(assert (=> d!59930 (= c!22197 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))

(declare-fun e!49881 () (_ BitVec 32))

(assert (=> d!59930 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) lambda!11131) e!49881)))

(declare-fun b!91211 () Bool)

(assert (=> b!91211 (= e!49881 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))

(declare-fun b!91212 () Bool)

(assert (=> b!91212 (= e!49881 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) lambda!11131))))

(assert (= (and d!59930 c!22197) b!91211))

(assert (= (and d!59930 (not c!22197)) b!91212))

(declare-fun b_lambda!18717 () Bool)

(assert (=> (not b_lambda!18717) (not b!91212)))

(assert (=> b!91212 m!86988))

(declare-fun m!86996 () Bool)

(assert (=> b!91212 m!86996))

(assert (=> b!91212 m!86996))

(declare-fun m!86998 () Bool)

(assert (=> b!91212 m!86998))

(assert (=> b!91208 d!59930))

(declare-fun b_lambda!18719 () Bool)

(assert (= b_lambda!18715 (or start!12208 b_lambda!18719)))

(declare-fun bs!41812 () Bool)

(declare-fun d!59932 () Bool)

(assert (= bs!41812 (and d!59932 start!12208)))

(assert (=> bs!41812 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91209 d!59932))

(declare-fun b_lambda!18721 () Bool)

(assert (= b_lambda!18717 (or b!91143 b_lambda!18721)))

(declare-fun bs!41813 () Bool)

(declare-fun d!59934 () Bool)

(assert (= bs!41813 (and d!59934 b!91143)))

(assert (=> bs!41813 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))

(assert (=> b!91212 d!59934))

(push 1)

(assert (not b_lambda!18695))

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18689))

(assert (not b_lambda!18647))

(assert (not b_lambda!18617))

(assert (not b_lambda!18681))

(assert (not b_lambda!18713))

(assert (not b_lambda!18719))

(assert (not b_lambda!18721))

(assert (not b_lambda!18663))

(assert (not b_lambda!18711))

(assert (not b_lambda!18687))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b_lambda!18679))

(assert (not b_lambda!18665))

(assert (not b_lambda!18705))

(assert (not b_lambda!18639))

(assert (not b_lambda!18655))

(assert (not b!91210))

(assert (not b_lambda!18697))

(assert (not b_lambda!18703))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18671))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(assert (not b!91212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59936 () Bool)

(declare-fun res!47874 () Bool)

(declare-fun e!49882 () Bool)

(assert (=> d!59936 (=> res!47874 e!49882)))

(assert (=> d!59936 (= res!47874 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))

(assert (=> d!59936 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) lambda!11130) e!49882)))

(declare-fun b!91213 () Bool)

(declare-fun e!49883 () Bool)

(assert (=> b!91213 (= e!49882 e!49883)))

(declare-fun res!47875 () Bool)

(assert (=> b!91213 (=> (not res!47875) (not e!49883))))

(assert (=> b!91213 (= res!47875 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))

(declare-fun b!91214 () Bool)

(assert (=> b!91214 (= e!49883 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) lambda!11130))))

(assert (= (and d!59936 (not res!47874)) b!91213))

(assert (= (and b!91213 res!47875) b!91214))

(declare-fun b_lambda!18723 () Bool)

(assert (=> (not b_lambda!18723) (not b!91213)))

(declare-fun m!87000 () Bool)

(assert (=> b!91213 m!87000))

(declare-fun m!87002 () Bool)

(assert (=> b!91214 m!87002))

(assert (=> b!91210 d!59936))

(declare-fun d!59938 () Bool)

(declare-fun c!22198 () Bool)

(assert (=> d!59938 (= c!22198 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))

(declare-fun e!49884 () (_ BitVec 32))

(assert (=> d!59938 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) lambda!11131) e!49884)))

(declare-fun b!91215 () Bool)

(assert (=> b!91215 (= e!49884 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))

(declare-fun b!91216 () Bool)

(assert (=> b!91216 (= e!49884 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) lambda!11131))))

(assert (= (and d!59938 c!22198) b!91215))

(assert (= (and d!59938 (not c!22198)) b!91216))

(declare-fun b_lambda!18725 () Bool)

(assert (=> (not b_lambda!18725) (not b!91216)))

(assert (=> b!91216 m!86996))

(declare-fun m!87004 () Bool)

(assert (=> b!91216 m!87004))

(assert (=> b!91216 m!87004))

(declare-fun m!87006 () Bool)

(assert (=> b!91216 m!87006))

(assert (=> b!91212 d!59938))

(declare-fun b_lambda!18727 () Bool)

(assert (= b_lambda!18725 (or b!91143 b_lambda!18727)))

(declare-fun bs!41814 () Bool)

(declare-fun d!59940 () Bool)

(assert (= bs!41814 (and d!59940 b!91143)))

(assert (=> bs!41814 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))

(assert (=> b!91216 d!59940))

(declare-fun b_lambda!18729 () Bool)

(assert (= b_lambda!18723 (or start!12208 b_lambda!18729)))

(declare-fun bs!41815 () Bool)

(declare-fun d!59942 () Bool)

(assert (= bs!41815 (and d!59942 start!12208)))

(assert (=> bs!41815 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91213 d!59942))

(push 1)

(assert (not b!91216))

(assert (not b_lambda!18695))

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18689))

(assert (not b_lambda!18647))

(assert (not b_lambda!18729))

(assert (not b_lambda!18617))

(assert (not b_lambda!18681))

(assert (not b_lambda!18713))

(assert (not b_lambda!18719))

(assert (not b_lambda!18721))

(assert (not b_lambda!18663))

(assert (not b_lambda!18711))

(assert (not b_lambda!18687))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b_lambda!18679))

(assert (not b_lambda!18665))

(assert (not b_lambda!18705))

(assert (not b_lambda!18639))

(assert (not b_lambda!18655))

(assert (not b_lambda!18697))

(assert (not b!91214))

(assert (not b_lambda!18703))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18671))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(assert (not b_lambda!18727))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59944 () Bool)

(declare-fun res!47876 () Bool)

(declare-fun e!49885 () Bool)

(assert (=> d!59944 (=> res!47876 e!49885)))

(assert (=> d!59944 (= res!47876 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))

(assert (=> d!59944 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) lambda!11130) e!49885)))

(declare-fun b!91217 () Bool)

(declare-fun e!49886 () Bool)

(assert (=> b!91217 (= e!49885 e!49886)))

(declare-fun res!47877 () Bool)

(assert (=> b!91217 (=> (not res!47877) (not e!49886))))

(assert (=> b!91217 (= res!47877 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))

(declare-fun b!91218 () Bool)

(assert (=> b!91218 (= e!49886 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) lambda!11130))))

(assert (= (and d!59944 (not res!47876)) b!91217))

(assert (= (and b!91217 res!47877) b!91218))

(declare-fun b_lambda!18731 () Bool)

(assert (=> (not b_lambda!18731) (not b!91217)))

(declare-fun m!87008 () Bool)

(assert (=> b!91217 m!87008))

(declare-fun m!87010 () Bool)

(assert (=> b!91218 m!87010))

(assert (=> b!91214 d!59944))

(declare-fun d!59946 () Bool)

(declare-fun c!22199 () Bool)

(assert (=> d!59946 (= c!22199 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))

(declare-fun e!49887 () (_ BitVec 32))

(assert (=> d!59946 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) lambda!11131) e!49887)))

(declare-fun b!91219 () Bool)

(assert (=> b!91219 (= e!49887 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))

(declare-fun b!91220 () Bool)

(assert (=> b!91220 (= e!49887 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) lambda!11131))))

(assert (= (and d!59946 c!22199) b!91219))

(assert (= (and d!59946 (not c!22199)) b!91220))

(declare-fun b_lambda!18733 () Bool)

(assert (=> (not b_lambda!18733) (not b!91220)))

(assert (=> b!91220 m!87004))

(declare-fun m!87012 () Bool)

(assert (=> b!91220 m!87012))

(assert (=> b!91220 m!87012))

(declare-fun m!87014 () Bool)

(assert (=> b!91220 m!87014))

(assert (=> b!91216 d!59946))

(declare-fun b_lambda!18735 () Bool)

(assert (= b_lambda!18731 (or start!12208 b_lambda!18735)))

(declare-fun bs!41816 () Bool)

(declare-fun d!59948 () Bool)

(assert (= bs!41816 (and d!59948 start!12208)))

(assert (=> bs!41816 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91217 d!59948))

(declare-fun b_lambda!18737 () Bool)

(assert (= b_lambda!18733 (or b!91143 b_lambda!18737)))

(declare-fun bs!41817 () Bool)

(declare-fun d!59950 () Bool)

(assert (= bs!41817 (and d!59950 b!91143)))

(assert (=> bs!41817 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))

(assert (=> b!91220 d!59950))

(push 1)

(assert (not b!91220))

(assert (not b_lambda!18737))

(assert (not b_lambda!18695))

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18689))

(assert (not b_lambda!18647))

(assert (not b_lambda!18729))

(assert (not b_lambda!18617))

(assert (not b_lambda!18681))

(assert (not b_lambda!18713))

(assert (not b_lambda!18719))

(assert (not b_lambda!18721))

(assert (not b_lambda!18663))

(assert (not b_lambda!18711))

(assert (not b_lambda!18687))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b_lambda!18679))

(assert (not b_lambda!18665))

(assert (not b_lambda!18705))

(assert (not b!91218))

(assert (not b_lambda!18639))

(assert (not b_lambda!18735))

(assert (not b_lambda!18655))

(assert (not b_lambda!18697))

(assert (not b_lambda!18703))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18671))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(assert (not b_lambda!18727))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59952 () Bool)

(declare-fun c!22200 () Bool)

(assert (=> d!59952 (= c!22200 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))

(declare-fun e!49888 () (_ BitVec 32))

(assert (=> d!59952 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) lambda!11131) e!49888)))

(declare-fun b!91221 () Bool)

(assert (=> b!91221 (= e!49888 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))

(declare-fun b!91222 () Bool)

(assert (=> b!91222 (= e!49888 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) lambda!11131))))

(assert (= (and d!59952 c!22200) b!91221))

(assert (= (and d!59952 (not c!22200)) b!91222))

(declare-fun b_lambda!18739 () Bool)

(assert (=> (not b_lambda!18739) (not b!91222)))

(assert (=> b!91222 m!87012))

(declare-fun m!87016 () Bool)

(assert (=> b!91222 m!87016))

(assert (=> b!91222 m!87016))

(declare-fun m!87018 () Bool)

(assert (=> b!91222 m!87018))

(assert (=> b!91220 d!59952))

(declare-fun d!59954 () Bool)

(declare-fun res!47878 () Bool)

(declare-fun e!49889 () Bool)

(assert (=> d!59954 (=> res!47878 e!49889)))

(assert (=> d!59954 (= res!47878 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))

(assert (=> d!59954 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) lambda!11130) e!49889)))

(declare-fun b!91223 () Bool)

(declare-fun e!49890 () Bool)

(assert (=> b!91223 (= e!49889 e!49890)))

(declare-fun res!47879 () Bool)

(assert (=> b!91223 (=> (not res!47879) (not e!49890))))

(assert (=> b!91223 (= res!47879 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))

(declare-fun b!91224 () Bool)

(assert (=> b!91224 (= e!49890 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) lambda!11130))))

(assert (= (and d!59954 (not res!47878)) b!91223))

(assert (= (and b!91223 res!47879) b!91224))

(declare-fun b_lambda!18741 () Bool)

(assert (=> (not b_lambda!18741) (not b!91223)))

(declare-fun m!87020 () Bool)

(assert (=> b!91223 m!87020))

(declare-fun m!87022 () Bool)

(assert (=> b!91224 m!87022))

(assert (=> b!91218 d!59954))

(declare-fun b_lambda!18743 () Bool)

(assert (= b_lambda!18739 (or b!91143 b_lambda!18743)))

(declare-fun bs!41818 () Bool)

(declare-fun d!59956 () Bool)

(assert (= bs!41818 (and d!59956 b!91143)))

(assert (=> bs!41818 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))

(assert (=> b!91222 d!59956))

(declare-fun b_lambda!18745 () Bool)

(assert (= b_lambda!18741 (or start!12208 b_lambda!18745)))

(declare-fun bs!41819 () Bool)

(declare-fun d!59958 () Bool)

(assert (= bs!41819 (and d!59958 start!12208)))

(assert (=> bs!41819 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91223 d!59958))

(push 1)

(assert (not b!91224))

(assert (not b_lambda!18745))

(assert (not b_lambda!18737))

(assert (not b_lambda!18695))

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18689))

(assert (not b_lambda!18647))

(assert (not b_lambda!18729))

(assert (not b_lambda!18617))

(assert (not b_lambda!18681))

(assert (not b_lambda!18713))

(assert (not b_lambda!18719))

(assert (not b_lambda!18721))

(assert (not b_lambda!18663))

(assert (not b_lambda!18711))

(assert (not b_lambda!18687))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b_lambda!18679))

(assert (not b_lambda!18665))

(assert (not b_lambda!18705))

(assert (not b_lambda!18639))

(assert (not b_lambda!18735))

(assert (not b_lambda!18655))

(assert (not b!91222))

(assert (not b_lambda!18697))

(assert (not b_lambda!18703))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18743))

(assert (not b_lambda!18671))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(assert (not b_lambda!18727))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59960 () Bool)

(declare-fun c!22201 () Bool)

(assert (=> d!59960 (= c!22201 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))

(declare-fun e!49891 () (_ BitVec 32))

(assert (=> d!59960 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) lambda!11131) e!49891)))

(declare-fun b!91225 () Bool)

(assert (=> b!91225 (= e!49891 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))

(declare-fun b!91226 () Bool)

(assert (=> b!91226 (= e!49891 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) lambda!11131))))

(assert (= (and d!59960 c!22201) b!91225))

(assert (= (and d!59960 (not c!22201)) b!91226))

(declare-fun b_lambda!18747 () Bool)

(assert (=> (not b_lambda!18747) (not b!91226)))

(assert (=> b!91226 m!87016))

(declare-fun m!87024 () Bool)

(assert (=> b!91226 m!87024))

(assert (=> b!91226 m!87024))

(declare-fun m!87026 () Bool)

(assert (=> b!91226 m!87026))

(assert (=> b!91222 d!59960))

(declare-fun d!59962 () Bool)

(declare-fun res!47880 () Bool)

(declare-fun e!49892 () Bool)

(assert (=> d!59962 (=> res!47880 e!49892)))

(assert (=> d!59962 (= res!47880 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))

(assert (=> d!59962 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) lambda!11130) e!49892)))

(declare-fun b!91227 () Bool)

(declare-fun e!49893 () Bool)

(assert (=> b!91227 (= e!49892 e!49893)))

(declare-fun res!47881 () Bool)

(assert (=> b!91227 (=> (not res!47881) (not e!49893))))

(assert (=> b!91227 (= res!47881 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))

(declare-fun b!91228 () Bool)

(assert (=> b!91228 (= e!49893 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) lambda!11130))))

(assert (= (and d!59962 (not res!47880)) b!91227))

(assert (= (and b!91227 res!47881) b!91228))

(declare-fun b_lambda!18749 () Bool)

(assert (=> (not b_lambda!18749) (not b!91227)))

(declare-fun m!87028 () Bool)

(assert (=> b!91227 m!87028))

(declare-fun m!87030 () Bool)

(assert (=> b!91228 m!87030))

(assert (=> b!91224 d!59962))

(declare-fun b_lambda!18751 () Bool)

(assert (= b_lambda!18747 (or b!91143 b_lambda!18751)))

(declare-fun bs!41820 () Bool)

(declare-fun d!59964 () Bool)

(assert (= bs!41820 (and d!59964 b!91143)))

(assert (=> bs!41820 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))

(assert (=> b!91226 d!59964))

(declare-fun b_lambda!18753 () Bool)

(assert (= b_lambda!18749 (or start!12208 b_lambda!18753)))

(declare-fun bs!41821 () Bool)

(declare-fun d!59966 () Bool)

(assert (= bs!41821 (and d!59966 start!12208)))

(assert (=> bs!41821 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91227 d!59966))

(push 1)

(assert (not b!91226))

(assert (not b_lambda!18745))

(assert (not b_lambda!18737))

(assert (not b!91228))

(assert (not b_lambda!18695))

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18689))

(assert (not b_lambda!18647))

(assert (not b_lambda!18729))

(assert (not b_lambda!18753))

(assert (not b_lambda!18617))

(assert (not b_lambda!18681))

(assert (not b_lambda!18713))

(assert (not b_lambda!18719))

(assert (not b_lambda!18721))

(assert (not b_lambda!18663))

(assert (not b_lambda!18711))

(assert (not b_lambda!18687))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b_lambda!18679))

(assert (not b_lambda!18665))

(assert (not b_lambda!18705))

(assert (not b_lambda!18639))

(assert (not b_lambda!18735))

(assert (not b_lambda!18655))

(assert (not b_lambda!18697))

(assert (not b_lambda!18703))

(assert (not b_lambda!18751))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18743))

(assert (not b_lambda!18671))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(assert (not b_lambda!18727))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59968 () Bool)

(declare-fun c!22202 () Bool)

(assert (=> d!59968 (= c!22202 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))

(declare-fun e!49894 () (_ BitVec 32))

(assert (=> d!59968 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) lambda!11131) e!49894)))

(declare-fun b!91229 () Bool)

(assert (=> b!91229 (= e!49894 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))

(declare-fun b!91230 () Bool)

(assert (=> b!91230 (= e!49894 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) lambda!11131))))

(assert (= (and d!59968 c!22202) b!91229))

(assert (= (and d!59968 (not c!22202)) b!91230))

(declare-fun b_lambda!18755 () Bool)

(assert (=> (not b_lambda!18755) (not b!91230)))

(assert (=> b!91230 m!87024))

(declare-fun m!87032 () Bool)

(assert (=> b!91230 m!87032))

(assert (=> b!91230 m!87032))

(declare-fun m!87034 () Bool)

(assert (=> b!91230 m!87034))

(assert (=> b!91226 d!59968))

(declare-fun d!59970 () Bool)

(declare-fun res!47882 () Bool)

(declare-fun e!49895 () Bool)

(assert (=> d!59970 (=> res!47882 e!49895)))

(assert (=> d!59970 (= res!47882 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))

(assert (=> d!59970 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) lambda!11130) e!49895)))

(declare-fun b!91231 () Bool)

(declare-fun e!49896 () Bool)

(assert (=> b!91231 (= e!49895 e!49896)))

(declare-fun res!47883 () Bool)

(assert (=> b!91231 (=> (not res!47883) (not e!49896))))

(assert (=> b!91231 (= res!47883 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))))

(declare-fun b!91232 () Bool)

(assert (=> b!91232 (= e!49896 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) lambda!11130))))

(assert (= (and d!59970 (not res!47882)) b!91231))

(assert (= (and b!91231 res!47883) b!91232))

(declare-fun b_lambda!18757 () Bool)

(assert (=> (not b_lambda!18757) (not b!91231)))

(declare-fun m!87036 () Bool)

(assert (=> b!91231 m!87036))

(declare-fun m!87038 () Bool)

(assert (=> b!91232 m!87038))

(assert (=> b!91228 d!59970))

(declare-fun b_lambda!18759 () Bool)

(assert (= b_lambda!18757 (or start!12208 b_lambda!18759)))

(declare-fun bs!41822 () Bool)

(declare-fun d!59972 () Bool)

(assert (= bs!41822 (and d!59972 start!12208)))

(assert (=> bs!41822 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91231 d!59972))

(declare-fun b_lambda!18761 () Bool)

(assert (= b_lambda!18755 (or b!91143 b_lambda!18761)))

(declare-fun bs!41823 () Bool)

(declare-fun d!59974 () Bool)

(assert (= bs!41823 (and d!59974 b!91143)))

(assert (=> bs!41823 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))))

(assert (=> b!91230 d!59974))

(push 1)

(assert (not b_lambda!18759))

(assert (not b_lambda!18745))

(assert (not b_lambda!18737))

(assert (not b_lambda!18695))

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18689))

(assert (not b!91230))

(assert (not b_lambda!18647))

(assert (not b_lambda!18729))

(assert (not b_lambda!18753))

(assert (not b_lambda!18617))

(assert (not b_lambda!18681))

(assert (not b_lambda!18713))

(assert (not b_lambda!18719))

(assert (not b_lambda!18721))

(assert (not b_lambda!18663))

(assert (not b_lambda!18711))

(assert (not b_lambda!18687))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b_lambda!18679))

(assert (not b_lambda!18665))

(assert (not b!91232))

(assert (not b_lambda!18705))

(assert (not b_lambda!18639))

(assert (not b_lambda!18735))

(assert (not b_lambda!18655))

(assert (not b_lambda!18761))

(assert (not b_lambda!18697))

(assert (not b_lambda!18703))

(assert (not b_lambda!18751))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18743))

(assert (not b_lambda!18671))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(assert (not b_lambda!18727))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59976 () Bool)

(declare-fun c!22203 () Bool)

(assert (=> d!59976 (= c!22203 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))))

(declare-fun e!49897 () (_ BitVec 32))

(assert (=> d!59976 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) lambda!11131) e!49897)))

(declare-fun b!91233 () Bool)

(assert (=> b!91233 (= e!49897 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))))

(declare-fun b!91234 () Bool)

(assert (=> b!91234 (= e!49897 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) lambda!11131))))

(assert (= (and d!59976 c!22203) b!91233))

(assert (= (and d!59976 (not c!22203)) b!91234))

(declare-fun b_lambda!18763 () Bool)

(assert (=> (not b_lambda!18763) (not b!91234)))

(assert (=> b!91234 m!87032))

(declare-fun m!87040 () Bool)

(assert (=> b!91234 m!87040))

(assert (=> b!91234 m!87040))

(declare-fun m!87042 () Bool)

(assert (=> b!91234 m!87042))

(assert (=> b!91230 d!59976))

(declare-fun d!59978 () Bool)

(declare-fun res!47884 () Bool)

(declare-fun e!49898 () Bool)

(assert (=> d!59978 (=> res!47884 e!49898)))

(assert (=> d!59978 (= res!47884 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))))

(assert (=> d!59978 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) lambda!11130) e!49898)))

(declare-fun b!91235 () Bool)

(declare-fun e!49899 () Bool)

(assert (=> b!91235 (= e!49898 e!49899)))

(declare-fun res!47885 () Bool)

(assert (=> b!91235 (=> (not res!47885) (not e!49899))))

(assert (=> b!91235 (= res!47885 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))))

(declare-fun b!91236 () Bool)

(assert (=> b!91236 (= e!49899 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) lambda!11130))))

(assert (= (and d!59978 (not res!47884)) b!91235))

(assert (= (and b!91235 res!47885) b!91236))

(declare-fun b_lambda!18765 () Bool)

(assert (=> (not b_lambda!18765) (not b!91235)))

(declare-fun m!87044 () Bool)

(assert (=> b!91235 m!87044))

(declare-fun m!87046 () Bool)

(assert (=> b!91236 m!87046))

(assert (=> b!91232 d!59978))

(declare-fun b_lambda!18767 () Bool)

(assert (= b_lambda!18765 (or start!12208 b_lambda!18767)))

(declare-fun bs!41824 () Bool)

(declare-fun d!59980 () Bool)

(assert (= bs!41824 (and d!59980 start!12208)))

(assert (=> bs!41824 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91235 d!59980))

(declare-fun b_lambda!18769 () Bool)

(assert (= b_lambda!18763 (or b!91143 b_lambda!18769)))

(declare-fun bs!41825 () Bool)

(declare-fun d!59982 () Bool)

(assert (= bs!41825 (and d!59982 b!91143)))

(assert (=> bs!41825 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))))

(assert (=> b!91234 d!59982))

(push 1)

(assert (not b_lambda!18759))

(assert (not b_lambda!18745))

(assert (not b!91234))

(assert (not b_lambda!18737))

(assert (not b_lambda!18695))

(assert (not b_lambda!18767))

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18689))

(assert (not b_lambda!18647))

(assert (not b_lambda!18729))

(assert (not b_lambda!18753))

(assert (not b_lambda!18617))

(assert (not b_lambda!18681))

(assert (not b_lambda!18713))

(assert (not b_lambda!18719))

(assert (not b_lambda!18721))

(assert (not b_lambda!18663))

(assert (not b_lambda!18711))

(assert (not b_lambda!18687))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b_lambda!18679))

(assert (not b_lambda!18665))

(assert (not b_lambda!18705))

(assert (not b_lambda!18639))

(assert (not b_lambda!18735))

(assert (not b_lambda!18655))

(assert (not b_lambda!18761))

(assert (not b_lambda!18697))

(assert (not b_lambda!18703))

(assert (not b_lambda!18751))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18743))

(assert (not b_lambda!18671))

(assert (not b_lambda!18769))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(assert (not b_lambda!18727))

(assert (not b!91236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59984 () Bool)

(declare-fun c!22204 () Bool)

(assert (=> d!59984 (= c!22204 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))))

(declare-fun e!49900 () (_ BitVec 32))

(assert (=> d!59984 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) lambda!11131) e!49900)))

(declare-fun b!91237 () Bool)

(assert (=> b!91237 (= e!49900 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))))

(declare-fun b!91238 () Bool)

(assert (=> b!91238 (= e!49900 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))) lambda!11131))))

(assert (= (and d!59984 c!22204) b!91237))

(assert (= (and d!59984 (not c!22204)) b!91238))

(declare-fun b_lambda!18771 () Bool)

(assert (=> (not b_lambda!18771) (not b!91238)))

(assert (=> b!91238 m!87040))

(declare-fun m!87048 () Bool)

(assert (=> b!91238 m!87048))

(assert (=> b!91238 m!87048))

(declare-fun m!87050 () Bool)

(assert (=> b!91238 m!87050))

(assert (=> b!91234 d!59984))

(declare-fun d!59986 () Bool)

(declare-fun res!47886 () Bool)

(declare-fun e!49901 () Bool)

(assert (=> d!59986 (=> res!47886 e!49901)))

(assert (=> d!59986 (= res!47886 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))))

(assert (=> d!59986 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) lambda!11130) e!49901)))

(declare-fun b!91239 () Bool)

(declare-fun e!49902 () Bool)

(assert (=> b!91239 (= e!49901 e!49902)))

(declare-fun res!47887 () Bool)

(assert (=> b!91239 (=> (not res!47887) (not e!49902))))

(assert (=> b!91239 (= res!47887 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))))))

(declare-fun b!91240 () Bool)

(assert (=> b!91240 (= e!49902 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) lambda!11130))))

(assert (= (and d!59986 (not res!47886)) b!91239))

(assert (= (and b!91239 res!47887) b!91240))

(declare-fun b_lambda!18773 () Bool)

(assert (=> (not b_lambda!18773) (not b!91239)))

(declare-fun m!87052 () Bool)

(assert (=> b!91239 m!87052))

(declare-fun m!87054 () Bool)

(assert (=> b!91240 m!87054))

(assert (=> b!91236 d!59986))

(declare-fun b_lambda!18775 () Bool)

(assert (= b_lambda!18771 (or b!91143 b_lambda!18775)))

(declare-fun bs!41826 () Bool)

(declare-fun d!59988 () Bool)

(assert (= bs!41826 (and d!59988 b!91143)))

(assert (=> bs!41826 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))))))

(assert (=> b!91238 d!59988))

(declare-fun b_lambda!18777 () Bool)

(assert (= b_lambda!18773 (or start!12208 b_lambda!18777)))

(declare-fun bs!41827 () Bool)

(declare-fun d!59990 () Bool)

(assert (= bs!41827 (and d!59990 start!12208)))

(assert (=> bs!41827 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91239 d!59990))

(push 1)

(assert (not b_lambda!18759))

(assert (not b!91240))

(assert (not b_lambda!18745))

(assert (not b_lambda!18737))

(assert (not b_lambda!18695))

(assert (not b_lambda!18767))

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18689))

(assert (not b_lambda!18647))

(assert (not b_lambda!18729))

(assert (not b_lambda!18753))

(assert (not b_lambda!18617))

(assert (not b_lambda!18681))

(assert (not b_lambda!18713))

(assert (not b_lambda!18719))

(assert (not b_lambda!18721))

(assert (not b_lambda!18663))

(assert (not b_lambda!18711))

(assert (not b_lambda!18777))

(assert (not b_lambda!18687))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b!91238))

(assert (not b_lambda!18631))

(assert (not b_lambda!18679))

(assert (not b_lambda!18665))

(assert (not b_lambda!18705))

(assert (not b_lambda!18639))

(assert (not b_lambda!18735))

(assert (not b_lambda!18655))

(assert (not b_lambda!18775))

(assert (not b_lambda!18761))

(assert (not b_lambda!18697))

(assert (not b_lambda!18703))

(assert (not b_lambda!18751))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18743))

(assert (not b_lambda!18671))

(assert (not b_lambda!18769))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(assert (not b_lambda!18727))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59992 () Bool)

(declare-fun res!47888 () Bool)

(declare-fun e!49903 () Bool)

(assert (=> d!59992 (=> res!47888 e!49903)))

(assert (=> d!59992 (= res!47888 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))))))

(assert (=> d!59992 (= (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) lambda!11130) e!49903)))

(declare-fun b!91241 () Bool)

(declare-fun e!49904 () Bool)

(assert (=> b!91241 (= e!49903 e!49904)))

(declare-fun res!47889 () Bool)

(assert (=> b!91241 (=> (not res!47889) (not e!49904))))

(assert (=> b!91241 (= res!47889 (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))))))

(declare-fun b!91242 () Bool)

(assert (=> b!91242 (= e!49904 (forall!64 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))) lambda!11130))))

(assert (= (and d!59992 (not res!47888)) b!91241))

(assert (= (and b!91241 res!47889) b!91242))

(declare-fun b_lambda!18779 () Bool)

(assert (=> (not b_lambda!18779) (not b!91241)))

(declare-fun m!87056 () Bool)

(assert (=> b!91241 m!87056))

(declare-fun m!87058 () Bool)

(assert (=> b!91242 m!87058))

(assert (=> b!91240 d!59992))

(declare-fun d!59994 () Bool)

(declare-fun c!22205 () Bool)

(assert (=> d!59994 (= c!22205 (is-Nil!731 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))))))

(declare-fun e!49905 () (_ BitVec 32))

(assert (=> d!59994 (= (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))) lambda!11131) e!49905)))

(declare-fun b!91243 () Bool)

(assert (=> b!91243 (= e!49905 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))))))

(declare-fun b!91244 () Bool)

(assert (=> b!91244 (= e!49905 (foldLeft!8 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))) (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))) lambda!11131))))

(assert (= (and d!59994 c!22205) b!91243))

(assert (= (and d!59994 (not c!22205)) b!91244))

(declare-fun b_lambda!18781 () Bool)

(assert (=> (not b_lambda!18781) (not b!91244)))

(assert (=> b!91244 m!87048))

(declare-fun m!87060 () Bool)

(assert (=> b!91244 m!87060))

(assert (=> b!91244 m!87060))

(declare-fun m!87062 () Bool)

(assert (=> b!91244 m!87062))

(assert (=> b!91238 d!59994))

(declare-fun b_lambda!18783 () Bool)

(assert (= b_lambda!18781 (or b!91143 b_lambda!18783)))

(declare-fun bs!41828 () Bool)

(declare-fun d!59996 () Bool)

(assert (= bs!41828 (and d!59996 b!91143)))

(assert (=> bs!41828 (= (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))) (bvadd (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 (dynLambda!1130 lambda!11131 #b00000000000000000000000000000000 (h!1163 nats!3)) (h!1163 (t!49096 nats!3))) (h!1163 (t!49096 (t!49096 nats!3)))) (h!1163 (t!49096 (t!49096 (t!49096 nats!3))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))) (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))))))

(assert (=> b!91244 d!59996))

(declare-fun b_lambda!18785 () Bool)

(assert (= b_lambda!18779 (or start!12208 b_lambda!18785)))

(declare-fun bs!41829 () Bool)

(declare-fun d!59998 () Bool)

(assert (= bs!41829 (and d!59998 start!12208)))

(assert (=> bs!41829 (= (dynLambda!1131 lambda!11130 (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3)))))))))))))))))))))))) (and (bvsge (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))) #b00000000000000000000000000000000) (bvslt (h!1163 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 (t!49096 nats!3))))))))))))))))))))))) #b00000101111101011110000100000000)))))

(assert (=> b!91241 d!59998))

(push 1)

(assert (not b_lambda!18759))

(assert (not b_lambda!18745))

(assert (not b_lambda!18737))

(assert (not b_lambda!18695))

(assert (not b!91244))

(assert (not b_lambda!18767))

(assert (not b_lambda!18673))

(assert (not b_lambda!18615))

(assert (not b_lambda!18657))

(assert (not b_lambda!18689))

(assert (not b_lambda!18647))

(assert (not b_lambda!18785))

(assert (not b_lambda!18729))

(assert (not b_lambda!18753))

(assert (not b_lambda!18617))

(assert (not b_lambda!18681))

(assert (not b_lambda!18713))

(assert (not b_lambda!18719))

(assert (not b_lambda!18721))

(assert (not b_lambda!18663))

(assert (not b_lambda!18711))

(assert (not b_lambda!18777))

(assert (not b_lambda!18687))

(assert (not b_lambda!18783))

(assert (not b_lambda!18625))

(assert (not b_lambda!18633))

(assert (not b_lambda!18607))

(assert (not b_lambda!18631))

(assert (not b_lambda!18679))

(assert (not b_lambda!18665))

(assert (not b_lambda!18705))

(assert (not b!91242))

(assert (not b_lambda!18639))

(assert (not b_lambda!18735))

(assert (not b_lambda!18655))

(assert (not b_lambda!18775))

(assert (not b_lambda!18761))

(assert (not b_lambda!18697))

(assert (not b_lambda!18703))

(assert (not b_lambda!18751))

(assert (not b_lambda!18641))

(assert (not b_lambda!18649))

(assert (not b_lambda!18743))

(assert (not b_lambda!18671))

(assert (not b_lambda!18769))

(assert (not b_lambda!18609))

(assert (not b_lambda!18623))

(assert (not b_lambda!18727))

(check-sat)

(get-model)

(pop 1)

