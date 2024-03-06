; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12634 () Bool)

(assert start!12634)

(declare-datatypes () ((List!801 (Cons!743 (head!1175 (_ BitVec 32)) (tail!1171 List!801)) (Nil!745))))

(declare-fun l1!535 () List!801)

(declare-fun e!50642 () (_ BitVec 32))

(declare-fun l2!527 () List!801)

(declare-fun append!27 (List!801 List!801) List!801)

(declare-fun reverse!7 (List!801) List!801)

(declare-fun reverse0!3 (List!801 List!801) List!801)

(assert (=> start!12634 (not (= (append!27 (reverse!7 l1!535) (Cons!743 e!50642 l2!527)) (reverse0!3 l1!535 l2!527)))))

(assert (=> start!12634 true))

(declare-fun bs!41984 () Bool)

(assert (= bs!41984 start!12634))

(declare-fun m!88588 () Bool)

(assert (=> bs!41984 m!88588))

(assert (=> bs!41984 m!88588))

(declare-fun m!88590 () Bool)

(assert (=> bs!41984 m!88590))

(declare-fun m!88592 () Bool)

(assert (=> bs!41984 m!88592))

(push 1)

(assert (not start!12634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60768 () Bool)

(declare-fun lt!21089 () List!801)

(declare-fun content!31 (List!801) (Set (_ BitVec 32)))

(assert (=> d!60768 (= (content!31 lt!21089) (union (content!31 (reverse!7 l1!535)) (content!31 (Cons!743 e!50642 l2!527))))))

(declare-fun e!50868 () List!801)

(assert (=> d!60768 (= lt!21089 e!50868)))

(declare-fun c!22734 () Bool)

(assert (=> d!60768 (= c!22734 (is-Nil!745 (reverse!7 l1!535)))))

(assert (=> d!60768 (= (append!27 (reverse!7 l1!535) (Cons!743 e!50642 l2!527)) lt!21089)))

(declare-fun b!92996 () Bool)

(assert (=> b!92996 (= e!50868 (Cons!743 e!50642 l2!527))))

(declare-fun b!92997 () Bool)

(assert (=> b!92997 (= e!50868 (Cons!743 (head!1175 (reverse!7 l1!535)) (append!27 (tail!1171 (reverse!7 l1!535)) (Cons!743 e!50642 l2!527))))))

(assert (= (and d!60768 c!22734) b!92996))

(assert (= (and d!60768 (not c!22734)) b!92997))

(declare-fun m!88594 () Bool)

(assert (=> d!60768 m!88594))

(assert (=> d!60768 m!88588))

(declare-fun m!88596 () Bool)

(assert (=> d!60768 m!88596))

(declare-fun m!88598 () Bool)

(assert (=> d!60768 m!88598))

(declare-fun m!88600 () Bool)

(assert (=> b!92997 m!88600))

(assert (=> start!12634 d!60768))

(declare-fun d!60770 () Bool)

(declare-fun lt!21092 () List!801)

(assert (=> d!60770 (= (content!31 lt!21092) (content!31 l1!535))))

(assert (=> d!60770 (= lt!21092 (reverse0!3 l1!535 Nil!745))))

(assert (=> d!60770 (= (reverse!7 l1!535) lt!21092)))

(declare-fun bs!41985 () Bool)

(assert (= bs!41985 d!60770))

(declare-fun m!88602 () Bool)

(assert (=> bs!41985 m!88602))

(declare-fun m!88604 () Bool)

(assert (=> bs!41985 m!88604))

(declare-fun m!88606 () Bool)

(assert (=> bs!41985 m!88606))

(assert (=> start!12634 d!60770))

(declare-fun d!60772 () Bool)

(declare-fun lt!21095 () List!801)

(assert (=> d!60772 (= (content!31 lt!21095) (union (content!31 l1!535) (content!31 l2!527)))))

(declare-fun e!50871 () List!801)

(assert (=> d!60772 (= lt!21095 e!50871)))

(declare-fun c!22737 () Bool)

(assert (=> d!60772 (= c!22737 (is-Nil!745 l1!535))))

(assert (=> d!60772 (= (reverse0!3 l1!535 l2!527) lt!21095)))

(declare-fun b!93002 () Bool)

(assert (=> b!93002 (= e!50871 l2!527)))

(declare-fun b!93003 () Bool)

(assert (=> b!93003 (= e!50871 (reverse0!3 (tail!1171 l1!535) (Cons!743 (head!1175 l1!535) l2!527)))))

(assert (= (and d!60772 c!22737) b!93002))

(assert (= (and d!60772 (not c!22737)) b!93003))

(declare-fun m!88608 () Bool)

(assert (=> d!60772 m!88608))

(assert (=> d!60772 m!88604))

(declare-fun m!88610 () Bool)

(assert (=> d!60772 m!88610))

(declare-fun m!88612 () Bool)

(assert (=> b!93003 m!88612))

(assert (=> start!12634 d!60772))

(push 1)

(assert (not b!93003))

(assert (not d!60772))

(assert (not d!60768))

(assert (not d!60770))

(assert (not b!92997))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60774 () Bool)

(declare-fun lt!21096 () List!801)

(assert (=> d!60774 (= (content!31 lt!21096) (union (content!31 (tail!1171 (reverse!7 l1!535))) (content!31 (Cons!743 e!50642 l2!527))))))

(declare-fun e!50872 () List!801)

(assert (=> d!60774 (= lt!21096 e!50872)))

(declare-fun c!22738 () Bool)

(assert (=> d!60774 (= c!22738 (is-Nil!745 (tail!1171 (reverse!7 l1!535))))))

(assert (=> d!60774 (= (append!27 (tail!1171 (reverse!7 l1!535)) (Cons!743 e!50642 l2!527)) lt!21096)))

(declare-fun b!93004 () Bool)

(assert (=> b!93004 (= e!50872 (Cons!743 e!50642 l2!527))))

(declare-fun b!93005 () Bool)

(assert (=> b!93005 (= e!50872 (Cons!743 (head!1175 (tail!1171 (reverse!7 l1!535))) (append!27 (tail!1171 (tail!1171 (reverse!7 l1!535))) (Cons!743 e!50642 l2!527))))))

(assert (= (and d!60774 c!22738) b!93004))

(assert (= (and d!60774 (not c!22738)) b!93005))

(declare-fun m!88614 () Bool)

(assert (=> d!60774 m!88614))

(declare-fun m!88616 () Bool)

(assert (=> d!60774 m!88616))

(assert (=> d!60774 m!88598))

(declare-fun m!88618 () Bool)

(assert (=> b!93005 m!88618))

(assert (=> b!92997 d!60774))

(declare-fun d!60776 () Bool)

(declare-fun c!22741 () Bool)

(assert (=> d!60776 (= c!22741 (is-Nil!745 lt!21092))))

(declare-fun e!50875 () (Set (_ BitVec 32)))

(assert (=> d!60776 (= (content!31 lt!21092) e!50875)))

(declare-fun b!93010 () Bool)

(assert (=> b!93010 (= e!50875 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93011 () Bool)

(assert (=> b!93011 (= e!50875 (union (insert (head!1175 lt!21092) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 lt!21092))))))

(assert (= (and d!60776 c!22741) b!93010))

(assert (= (and d!60776 (not c!22741)) b!93011))

(declare-fun m!88620 () Bool)

(assert (=> b!93011 m!88620))

(declare-fun m!88622 () Bool)

(assert (=> b!93011 m!88622))

(assert (=> d!60770 d!60776))

(declare-fun d!60778 () Bool)

(declare-fun c!22742 () Bool)

(assert (=> d!60778 (= c!22742 (is-Nil!745 l1!535))))

(declare-fun e!50876 () (Set (_ BitVec 32)))

(assert (=> d!60778 (= (content!31 l1!535) e!50876)))

(declare-fun b!93012 () Bool)

(assert (=> b!93012 (= e!50876 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93013 () Bool)

(assert (=> b!93013 (= e!50876 (union (insert (head!1175 l1!535) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 l1!535))))))

(assert (= (and d!60778 c!22742) b!93012))

(assert (= (and d!60778 (not c!22742)) b!93013))

(declare-fun m!88624 () Bool)

(assert (=> b!93013 m!88624))

(declare-fun m!88626 () Bool)

(assert (=> b!93013 m!88626))

(assert (=> d!60770 d!60778))

(declare-fun d!60780 () Bool)

(declare-fun lt!21097 () List!801)

(assert (=> d!60780 (= (content!31 lt!21097) (union (content!31 l1!535) (content!31 Nil!745)))))

(declare-fun e!50877 () List!801)

(assert (=> d!60780 (= lt!21097 e!50877)))

(declare-fun c!22743 () Bool)

(assert (=> d!60780 (= c!22743 (is-Nil!745 l1!535))))

(assert (=> d!60780 (= (reverse0!3 l1!535 Nil!745) lt!21097)))

(declare-fun b!93014 () Bool)

(assert (=> b!93014 (= e!50877 Nil!745)))

(declare-fun b!93015 () Bool)

(assert (=> b!93015 (= e!50877 (reverse0!3 (tail!1171 l1!535) (Cons!743 (head!1175 l1!535) Nil!745)))))

(assert (= (and d!60780 c!22743) b!93014))

(assert (= (and d!60780 (not c!22743)) b!93015))

(declare-fun m!88628 () Bool)

(assert (=> d!60780 m!88628))

(assert (=> d!60780 m!88604))

(declare-fun m!88630 () Bool)

(assert (=> d!60780 m!88630))

(declare-fun m!88632 () Bool)

(assert (=> b!93015 m!88632))

(assert (=> d!60770 d!60780))

(declare-fun d!60782 () Bool)

(declare-fun c!22744 () Bool)

(assert (=> d!60782 (= c!22744 (is-Nil!745 lt!21095))))

(declare-fun e!50878 () (Set (_ BitVec 32)))

(assert (=> d!60782 (= (content!31 lt!21095) e!50878)))

(declare-fun b!93016 () Bool)

(assert (=> b!93016 (= e!50878 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93017 () Bool)

(assert (=> b!93017 (= e!50878 (union (insert (head!1175 lt!21095) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 lt!21095))))))

(assert (= (and d!60782 c!22744) b!93016))

(assert (= (and d!60782 (not c!22744)) b!93017))

(declare-fun m!88634 () Bool)

(assert (=> b!93017 m!88634))

(declare-fun m!88636 () Bool)

(assert (=> b!93017 m!88636))

(assert (=> d!60772 d!60782))

(assert (=> d!60772 d!60778))

(declare-fun d!60784 () Bool)

(declare-fun c!22745 () Bool)

(assert (=> d!60784 (= c!22745 (is-Nil!745 l2!527))))

(declare-fun e!50879 () (Set (_ BitVec 32)))

(assert (=> d!60784 (= (content!31 l2!527) e!50879)))

(declare-fun b!93018 () Bool)

(assert (=> b!93018 (= e!50879 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93019 () Bool)

(assert (=> b!93019 (= e!50879 (union (insert (head!1175 l2!527) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 l2!527))))))

(assert (= (and d!60784 c!22745) b!93018))

(assert (= (and d!60784 (not c!22745)) b!93019))

(declare-fun m!88638 () Bool)

(assert (=> b!93019 m!88638))

(declare-fun m!88640 () Bool)

(assert (=> b!93019 m!88640))

(assert (=> d!60772 d!60784))

(declare-fun d!60786 () Bool)

(declare-fun c!22746 () Bool)

(assert (=> d!60786 (= c!22746 (is-Nil!745 lt!21089))))

(declare-fun e!50880 () (Set (_ BitVec 32)))

(assert (=> d!60786 (= (content!31 lt!21089) e!50880)))

(declare-fun b!93020 () Bool)

(assert (=> b!93020 (= e!50880 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93021 () Bool)

(assert (=> b!93021 (= e!50880 (union (insert (head!1175 lt!21089) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 lt!21089))))))

(assert (= (and d!60786 c!22746) b!93020))

(assert (= (and d!60786 (not c!22746)) b!93021))

(declare-fun m!88642 () Bool)

(assert (=> b!93021 m!88642))

(declare-fun m!88644 () Bool)

(assert (=> b!93021 m!88644))

(assert (=> d!60768 d!60786))

(declare-fun d!60788 () Bool)

(declare-fun c!22747 () Bool)

(assert (=> d!60788 (= c!22747 (is-Nil!745 (reverse!7 l1!535)))))

(declare-fun e!50881 () (Set (_ BitVec 32)))

(assert (=> d!60788 (= (content!31 (reverse!7 l1!535)) e!50881)))

(declare-fun b!93022 () Bool)

(assert (=> b!93022 (= e!50881 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93023 () Bool)

(assert (=> b!93023 (= e!50881 (union (insert (head!1175 (reverse!7 l1!535)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 (reverse!7 l1!535)))))))

(assert (= (and d!60788 c!22747) b!93022))

(assert (= (and d!60788 (not c!22747)) b!93023))

(declare-fun m!88646 () Bool)

(assert (=> b!93023 m!88646))

(assert (=> b!93023 m!88616))

(assert (=> d!60768 d!60788))

(declare-fun d!60790 () Bool)

(declare-fun c!22748 () Bool)

(assert (=> d!60790 (= c!22748 (is-Nil!745 (Cons!743 e!50642 l2!527)))))

(declare-fun e!50882 () (Set (_ BitVec 32)))

(assert (=> d!60790 (= (content!31 (Cons!743 e!50642 l2!527)) e!50882)))

(declare-fun b!93024 () Bool)

(assert (=> b!93024 (= e!50882 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93025 () Bool)

(assert (=> b!93025 (= e!50882 (union (insert (head!1175 (Cons!743 e!50642 l2!527)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 (Cons!743 e!50642 l2!527)))))))

(assert (= (and d!60790 c!22748) b!93024))

(assert (= (and d!60790 (not c!22748)) b!93025))

(declare-fun m!88648 () Bool)

(assert (=> b!93025 m!88648))

(declare-fun m!88650 () Bool)

(assert (=> b!93025 m!88650))

(assert (=> d!60768 d!60790))

(declare-fun d!60792 () Bool)

(declare-fun lt!21098 () List!801)

(assert (=> d!60792 (= (content!31 lt!21098) (union (content!31 (tail!1171 l1!535)) (content!31 (Cons!743 (head!1175 l1!535) l2!527))))))

(declare-fun e!50883 () List!801)

(assert (=> d!60792 (= lt!21098 e!50883)))

(declare-fun c!22749 () Bool)

(assert (=> d!60792 (= c!22749 (is-Nil!745 (tail!1171 l1!535)))))

(assert (=> d!60792 (= (reverse0!3 (tail!1171 l1!535) (Cons!743 (head!1175 l1!535) l2!527)) lt!21098)))

(declare-fun b!93026 () Bool)

(assert (=> b!93026 (= e!50883 (Cons!743 (head!1175 l1!535) l2!527))))

(declare-fun b!93027 () Bool)

(assert (=> b!93027 (= e!50883 (reverse0!3 (tail!1171 (tail!1171 l1!535)) (Cons!743 (head!1175 (tail!1171 l1!535)) (Cons!743 (head!1175 l1!535) l2!527))))))

(assert (= (and d!60792 c!22749) b!93026))

(assert (= (and d!60792 (not c!22749)) b!93027))

(declare-fun m!88652 () Bool)

(assert (=> d!60792 m!88652))

(assert (=> d!60792 m!88626))

(declare-fun m!88654 () Bool)

(assert (=> d!60792 m!88654))

(declare-fun m!88656 () Bool)

(assert (=> b!93027 m!88656))

(assert (=> b!93003 d!60792))

(push 1)

(assert (not b!93019))

(assert (not b!93017))

(assert (not b!93021))

(assert (not d!60780))

(assert (not b!93015))

(assert (not b!93005))

(assert (not d!60774))

(assert (not b!93023))

(assert (not b!93027))

(assert (not b!93013))

(assert (not b!93011))

(assert (not b!93025))

(assert (not d!60792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60794 () Bool)

(declare-fun c!22750 () Bool)

(assert (=> d!60794 (= c!22750 (is-Nil!745 (tail!1171 lt!21089)))))

(declare-fun e!50884 () (Set (_ BitVec 32)))

(assert (=> d!60794 (= (content!31 (tail!1171 lt!21089)) e!50884)))

(declare-fun b!93028 () Bool)

(assert (=> b!93028 (= e!50884 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93029 () Bool)

(assert (=> b!93029 (= e!50884 (union (insert (head!1175 (tail!1171 lt!21089)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 (tail!1171 lt!21089)))))))

(assert (= (and d!60794 c!22750) b!93028))

(assert (= (and d!60794 (not c!22750)) b!93029))

(declare-fun m!88658 () Bool)

(assert (=> b!93029 m!88658))

(declare-fun m!88660 () Bool)

(assert (=> b!93029 m!88660))

(assert (=> b!93021 d!60794))

(declare-fun lt!21099 () List!801)

(declare-fun d!60796 () Bool)

(assert (=> d!60796 (= (content!31 lt!21099) (union (content!31 (tail!1171 (tail!1171 (reverse!7 l1!535)))) (content!31 (Cons!743 e!50642 l2!527))))))

(declare-fun e!50885 () List!801)

(assert (=> d!60796 (= lt!21099 e!50885)))

(declare-fun c!22751 () Bool)

(assert (=> d!60796 (= c!22751 (is-Nil!745 (tail!1171 (tail!1171 (reverse!7 l1!535)))))))

(assert (=> d!60796 (= (append!27 (tail!1171 (tail!1171 (reverse!7 l1!535))) (Cons!743 e!50642 l2!527)) lt!21099)))

(declare-fun b!93030 () Bool)

(assert (=> b!93030 (= e!50885 (Cons!743 e!50642 l2!527))))

(declare-fun b!93031 () Bool)

(assert (=> b!93031 (= e!50885 (Cons!743 (head!1175 (tail!1171 (tail!1171 (reverse!7 l1!535)))) (append!27 (tail!1171 (tail!1171 (tail!1171 (reverse!7 l1!535)))) (Cons!743 e!50642 l2!527))))))

(assert (= (and d!60796 c!22751) b!93030))

(assert (= (and d!60796 (not c!22751)) b!93031))

(declare-fun m!88662 () Bool)

(assert (=> d!60796 m!88662))

(declare-fun m!88664 () Bool)

(assert (=> d!60796 m!88664))

(assert (=> d!60796 m!88598))

(declare-fun m!88666 () Bool)

(assert (=> b!93031 m!88666))

(assert (=> b!93005 d!60796))

(declare-fun d!60798 () Bool)

(declare-fun c!22752 () Bool)

(assert (=> d!60798 (= c!22752 (is-Nil!745 lt!21096))))

(declare-fun e!50886 () (Set (_ BitVec 32)))

(assert (=> d!60798 (= (content!31 lt!21096) e!50886)))

(declare-fun b!93032 () Bool)

(assert (=> b!93032 (= e!50886 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93033 () Bool)

(assert (=> b!93033 (= e!50886 (union (insert (head!1175 lt!21096) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 lt!21096))))))

(assert (= (and d!60798 c!22752) b!93032))

(assert (= (and d!60798 (not c!22752)) b!93033))

(declare-fun m!88668 () Bool)

(assert (=> b!93033 m!88668))

(declare-fun m!88670 () Bool)

(assert (=> b!93033 m!88670))

(assert (=> d!60774 d!60798))

(declare-fun d!60800 () Bool)

(declare-fun c!22753 () Bool)

(assert (=> d!60800 (= c!22753 (is-Nil!745 (tail!1171 (reverse!7 l1!535))))))

(declare-fun e!50887 () (Set (_ BitVec 32)))

(assert (=> d!60800 (= (content!31 (tail!1171 (reverse!7 l1!535))) e!50887)))

(declare-fun b!93034 () Bool)

(assert (=> b!93034 (= e!50887 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93035 () Bool)

(assert (=> b!93035 (= e!50887 (union (insert (head!1175 (tail!1171 (reverse!7 l1!535))) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 (tail!1171 (reverse!7 l1!535))))))))

(assert (= (and d!60800 c!22753) b!93034))

(assert (= (and d!60800 (not c!22753)) b!93035))

(declare-fun m!88672 () Bool)

(assert (=> b!93035 m!88672))

(assert (=> b!93035 m!88664))

(assert (=> d!60774 d!60800))

(assert (=> d!60774 d!60790))

(declare-fun d!60802 () Bool)

(declare-fun c!22754 () Bool)

(assert (=> d!60802 (= c!22754 (is-Nil!745 (tail!1171 (Cons!743 e!50642 l2!527))))))

(declare-fun e!50888 () (Set (_ BitVec 32)))

(assert (=> d!60802 (= (content!31 (tail!1171 (Cons!743 e!50642 l2!527))) e!50888)))

(declare-fun b!93036 () Bool)

(assert (=> b!93036 (= e!50888 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93037 () Bool)

(assert (=> b!93037 (= e!50888 (union (insert (head!1175 (tail!1171 (Cons!743 e!50642 l2!527))) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 (tail!1171 (Cons!743 e!50642 l2!527))))))))

(assert (= (and d!60802 c!22754) b!93036))

(assert (= (and d!60802 (not c!22754)) b!93037))

(declare-fun m!88674 () Bool)

(assert (=> b!93037 m!88674))

(declare-fun m!88676 () Bool)

(assert (=> b!93037 m!88676))

(assert (=> b!93025 d!60802))

(declare-fun d!60804 () Bool)

(declare-fun c!22755 () Bool)

(assert (=> d!60804 (= c!22755 (is-Nil!745 (tail!1171 l1!535)))))

(declare-fun e!50889 () (Set (_ BitVec 32)))

(assert (=> d!60804 (= (content!31 (tail!1171 l1!535)) e!50889)))

(declare-fun b!93038 () Bool)

(assert (=> b!93038 (= e!50889 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93039 () Bool)

(assert (=> b!93039 (= e!50889 (union (insert (head!1175 (tail!1171 l1!535)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 (tail!1171 l1!535)))))))

(assert (= (and d!60804 c!22755) b!93038))

(assert (= (and d!60804 (not c!22755)) b!93039))

(declare-fun m!88678 () Bool)

(assert (=> b!93039 m!88678))

(declare-fun m!88680 () Bool)

(assert (=> b!93039 m!88680))

(assert (=> b!93013 d!60804))

(declare-fun d!60806 () Bool)

(declare-fun c!22756 () Bool)

(assert (=> d!60806 (= c!22756 (is-Nil!745 lt!21097))))

(declare-fun e!50890 () (Set (_ BitVec 32)))

(assert (=> d!60806 (= (content!31 lt!21097) e!50890)))

(declare-fun b!93040 () Bool)

(assert (=> b!93040 (= e!50890 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93041 () Bool)

(assert (=> b!93041 (= e!50890 (union (insert (head!1175 lt!21097) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 lt!21097))))))

(assert (= (and d!60806 c!22756) b!93040))

(assert (= (and d!60806 (not c!22756)) b!93041))

(declare-fun m!88682 () Bool)

(assert (=> b!93041 m!88682))

(declare-fun m!88684 () Bool)

(assert (=> b!93041 m!88684))

(assert (=> d!60780 d!60806))

(assert (=> d!60780 d!60778))

(declare-fun d!60808 () Bool)

(assert (=> d!60808 (= (content!31 Nil!745) (as emptyset (Set (_ BitVec 32))))))

(assert (=> d!60780 d!60808))

(assert (=> b!93023 d!60800))

(declare-fun d!60810 () Bool)

(declare-fun c!22757 () Bool)

(assert (=> d!60810 (= c!22757 (is-Nil!745 (tail!1171 lt!21092)))))

(declare-fun e!50891 () (Set (_ BitVec 32)))

(assert (=> d!60810 (= (content!31 (tail!1171 lt!21092)) e!50891)))

(declare-fun b!93042 () Bool)

(assert (=> b!93042 (= e!50891 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93043 () Bool)

(assert (=> b!93043 (= e!50891 (union (insert (head!1175 (tail!1171 lt!21092)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 (tail!1171 lt!21092)))))))

(assert (= (and d!60810 c!22757) b!93042))

(assert (= (and d!60810 (not c!22757)) b!93043))

(declare-fun m!88686 () Bool)

(assert (=> b!93043 m!88686))

(declare-fun m!88688 () Bool)

(assert (=> b!93043 m!88688))

(assert (=> b!93011 d!60810))

(declare-fun d!60812 () Bool)

(declare-fun c!22758 () Bool)

(assert (=> d!60812 (= c!22758 (is-Nil!745 lt!21098))))

(declare-fun e!50892 () (Set (_ BitVec 32)))

(assert (=> d!60812 (= (content!31 lt!21098) e!50892)))

(declare-fun b!93044 () Bool)

(assert (=> b!93044 (= e!50892 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93045 () Bool)

(assert (=> b!93045 (= e!50892 (union (insert (head!1175 lt!21098) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 lt!21098))))))

(assert (= (and d!60812 c!22758) b!93044))

(assert (= (and d!60812 (not c!22758)) b!93045))

(declare-fun m!88690 () Bool)

(assert (=> b!93045 m!88690))

(declare-fun m!88692 () Bool)

(assert (=> b!93045 m!88692))

(assert (=> d!60792 d!60812))

(assert (=> d!60792 d!60804))

(declare-fun d!60814 () Bool)

(declare-fun c!22759 () Bool)

(assert (=> d!60814 (= c!22759 (is-Nil!745 (Cons!743 (head!1175 l1!535) l2!527)))))

(declare-fun e!50893 () (Set (_ BitVec 32)))

(assert (=> d!60814 (= (content!31 (Cons!743 (head!1175 l1!535) l2!527)) e!50893)))

(declare-fun b!93046 () Bool)

(assert (=> b!93046 (= e!50893 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93047 () Bool)

(assert (=> b!93047 (= e!50893 (union (insert (head!1175 (Cons!743 (head!1175 l1!535) l2!527)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 (Cons!743 (head!1175 l1!535) l2!527)))))))

(assert (= (and d!60814 c!22759) b!93046))

(assert (= (and d!60814 (not c!22759)) b!93047))

(declare-fun m!88694 () Bool)

(assert (=> b!93047 m!88694))

(declare-fun m!88696 () Bool)

(assert (=> b!93047 m!88696))

(assert (=> d!60792 d!60814))

(declare-fun d!60816 () Bool)

(declare-fun c!22760 () Bool)

(assert (=> d!60816 (= c!22760 (is-Nil!745 (tail!1171 l2!527)))))

(declare-fun e!50894 () (Set (_ BitVec 32)))

(assert (=> d!60816 (= (content!31 (tail!1171 l2!527)) e!50894)))

(declare-fun b!93048 () Bool)

(assert (=> b!93048 (= e!50894 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93049 () Bool)

(assert (=> b!93049 (= e!50894 (union (insert (head!1175 (tail!1171 l2!527)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 (tail!1171 l2!527)))))))

(assert (= (and d!60816 c!22760) b!93048))

(assert (= (and d!60816 (not c!22760)) b!93049))

(declare-fun m!88698 () Bool)

(assert (=> b!93049 m!88698))

(declare-fun m!88700 () Bool)

(assert (=> b!93049 m!88700))

(assert (=> b!93019 d!60816))

(declare-fun d!60818 () Bool)

(declare-fun c!22761 () Bool)

(assert (=> d!60818 (= c!22761 (is-Nil!745 (tail!1171 lt!21095)))))

(declare-fun e!50895 () (Set (_ BitVec 32)))

(assert (=> d!60818 (= (content!31 (tail!1171 lt!21095)) e!50895)))

(declare-fun b!93050 () Bool)

(assert (=> b!93050 (= e!50895 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93051 () Bool)

(assert (=> b!93051 (= e!50895 (union (insert (head!1175 (tail!1171 lt!21095)) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1171 (tail!1171 lt!21095)))))))

(assert (= (and d!60818 c!22761) b!93050))

(assert (= (and d!60818 (not c!22761)) b!93051))

(declare-fun m!88702 () Bool)

(assert (=> b!93051 m!88702))

(declare-fun m!88704 () Bool)

(assert (=> b!93051 m!88704))

(assert (=> b!93017 d!60818))

(declare-fun d!60820 () Bool)

(declare-fun lt!21100 () List!801)

(assert (=> d!60820 (= (content!31 lt!21100) (union (content!31 (tail!1171 l1!535)) (content!31 (Cons!743 (head!1175 l1!535) Nil!745))))))

(declare-fun e!50896 () List!801)

(assert (=> d!60820 (= lt!21100 e!50896)))

(declare-fun c!22762 () Bool)

(assert (=> d!60820 (= c!22762 (is-Nil!745 (tail!1171 l1!535)))))

(assert (=> d!60820 (= (reverse0!3 (tail!1171 l1!535) (Cons!743 (head!1175 l1!535) Nil!745)) lt!21100)))

(declare-fun b!93052 () Bool)

(assert (=> b!93052 (= e!50896 (Cons!743 (head!1175 l1!535) Nil!745))))

(declare-fun b!93053 () Bool)

(assert (=> b!93053 (= e!50896 (reverse0!3 (tail!1171 (tail!1171 l1!535)) (Cons!743 (head!1175 (tail!1171 l1!535)) (Cons!743 (head!1175 l1!535) Nil!745))))))

(assert (= (and d!60820 c!22762) b!93052))

(assert (= (and d!60820 (not c!22762)) b!93053))

(declare-fun m!88706 () Bool)

(assert (=> d!60820 m!88706))

(assert (=> d!60820 m!88626))

(declare-fun m!88708 () Bool)

(assert (=> d!60820 m!88708))

(declare-fun m!88710 () Bool)

(assert (=> b!93053 m!88710))

(assert (=> b!93015 d!60820))

(declare-fun d!60822 () Bool)

(declare-fun lt!21101 () List!801)

(assert (=> d!60822 (= (content!31 lt!21101) (union (content!31 (tail!1171 (tail!1171 l1!535))) (content!31 (Cons!743 (head!1175 (tail!1171 l1!535)) (Cons!743 (head!1175 l1!535) l2!527)))))))

(declare-fun e!50897 () List!801)

(assert (=> d!60822 (= lt!21101 e!50897)))

(declare-fun c!22763 () Bool)

(assert (=> d!60822 (= c!22763 (is-Nil!745 (tail!1171 (tail!1171 l1!535))))))

(assert (=> d!60822 (= (reverse0!3 (tail!1171 (tail!1171 l1!535)) (Cons!743 (head!1175 (tail!1171 l1!535)) (Cons!743 (head!1175 l1!535) l2!527))) lt!21101)))

(declare-fun b!93054 () Bool)

(assert (=> b!93054 (= e!50897 (Cons!743 (head!1175 (tail!1171 l1!535)) (Cons!743 (head!1175 l1!535) l2!527)))))

(declare-fun b!93055 () Bool)

(assert (=> b!93055 (= e!50897 (reverse0!3 (tail!1171 (tail!1171 (tail!1171 l1!535))) (Cons!743 (head!1175 (tail!1171 (tail!1171 l1!535))) (Cons!743 (head!1175 (tail!1171 l1!535)) (Cons!743 (head!1175 l1!535) l2!527)))))))

(assert (= (and d!60822 c!22763) b!93054))

(assert (= (and d!60822 (not c!22763)) b!93055))

(declare-fun m!88712 () Bool)

(assert (=> d!60822 m!88712))

(assert (=> d!60822 m!88680))

(declare-fun m!88714 () Bool)

(assert (=> d!60822 m!88714))

(declare-fun m!88716 () Bool)

(assert (=> b!93055 m!88716))

(assert (=> b!93027 d!60822))

(push 1)

(assert (not b!93035))

(assert (not b!93037))

(assert (not b!93045))

(assert (not b!93033))

(assert (not b!93039))

(assert (not b!93055))

(assert (not d!60820))

(assert (not b!93049))

(assert (not b!93043))

(assert (not b!93029))

(assert (not d!60796))

(assert (not b!93053))

(assert (not d!60822))

(assert (not b!93031))

(assert (not b!93047))

(assert (not b!93051))

(assert (not b!93041))

(check-sat)

(get-model)

(pop 1)

