; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4038 () Bool)

(assert start!4038)

(declare-fun b!31912 () Bool)

(declare-fun e!16274 () Bool)

(declare-fun e!16273 () Bool)

(assert (=> b!31912 (= e!16274 e!16273)))

(declare-fun res!14652 () Bool)

(assert (=> b!31912 (=> (not res!14652) (not e!16273))))

(declare-datatypes () ((T!1843 (T!1844 (val!94 Int)))))

(declare-datatypes () ((Conc!71 (CC!70 (left!715 Conc!71) (right!718 Conc!71)) (Single!70 (x!8972 T!1843)) (Empty!81))))

(declare-fun ys!128 () Conc!71)

(assert (=> b!31912 (= res!14652 (is-CC!70 ys!128))))

(declare-fun b!31913 () Bool)

(declare-fun e!16268 () Bool)

(declare-fun tp_is_empty!187 () Bool)

(assert (=> b!31913 (= e!16268 tp_is_empty!187)))

(declare-fun b!31914 () Bool)

(declare-fun e!16272 () Bool)

(assert (=> b!31914 (= e!16273 e!16272)))

(declare-fun res!14653 () Bool)

(assert (=> b!31914 (=> res!14653 e!16272)))

(declare-fun xs!634 () Conc!71)

(declare-datatypes () ((List!366 (Cons!360 (h!277 T!1843) (t!4380 List!366)) (Nil!361))))

(declare-fun appendAssoc!14 (List!366 List!366 List!366) Bool)

(declare-fun toList!121 (Conc!71) List!366)

(assert (=> b!31914 (= res!14653 (not (appendAssoc!14 (toList!121 xs!634) (toList!121 (left!715 ys!128)) (toList!121 (right!718 ys!128)))))))

(declare-fun b!31915 () Bool)

(declare-fun e!16267 () Bool)

(declare-fun e!16269 () Bool)

(assert (=> b!31915 (= e!16267 e!16269)))

(declare-fun res!14656 () Bool)

(assert (=> b!31915 (=> res!14656 e!16269)))

(assert (=> b!31915 (= res!14656 (not (appendAssoc!14 (toList!121 (left!715 xs!634)) (toList!121 (right!718 xs!634)) (toList!121 ys!128))))))

(declare-fun b!31916 () Bool)

(declare-fun e!16270 () Bool)

(declare-fun ++!46 (List!366 List!366) List!366)

(assert (=> b!31916 (= e!16270 (not (appendAssoc!14 (toList!121 (left!715 xs!634)) (toList!121 (left!715 (right!718 xs!634))) (++!46 (toList!121 (right!718 (right!718 xs!634))) (toList!121 ys!128)))))))

(declare-fun b!31917 () Bool)

(declare-fun e!16266 () Bool)

(declare-fun e!16275 () Bool)

(assert (=> b!31917 (= e!16266 e!16275)))

(declare-fun res!14658 () Bool)

(assert (=> b!31917 (=> res!14658 e!16275)))

(assert (=> b!31917 (= res!14658 (not (appendAssoc!14 (toList!121 xs!634) (toList!121 (left!715 (left!715 ys!128))) (toList!121 (right!718 (left!715 ys!128))))))))

(declare-fun b!31918 () Bool)

(declare-fun e!16265 () Bool)

(assert (=> b!31918 (= e!16265 e!16270)))

(declare-fun res!14654 () Bool)

(assert (=> b!31918 (=> res!14654 e!16270)))

(assert (=> b!31918 (= res!14654 (not (appendAssoc!14 (toList!121 (left!715 (right!718 xs!634))) (toList!121 (right!718 (right!718 xs!634))) (toList!121 ys!128))))))

(declare-fun res!14651 () Bool)

(assert (=> start!4038 (=> res!14651 e!16274)))

(assert (=> start!4038 (= res!14651 e!16267)))

(declare-fun res!14650 () Bool)

(assert (=> start!4038 (=> (not res!14650) (not e!16267))))

(assert (=> start!4038 (= res!14650 (is-CC!70 xs!634))))

(assert (=> start!4038 e!16274))

(declare-fun e!16271 () Bool)

(assert (=> start!4038 e!16271))

(assert (=> start!4038 e!16268))

(declare-fun b!31919 () Bool)

(assert (=> b!31919 (= e!16269 e!16265)))

(declare-fun res!14655 () Bool)

(assert (=> b!31919 (=> (not res!14655) (not e!16265))))

(assert (=> b!31919 (= res!14655 (is-CC!70 (right!718 xs!634)))))

(declare-fun b!31920 () Bool)

(assert (=> b!31920 (= e!16271 tp_is_empty!187)))

(declare-fun b!31921 () Bool)

(declare-fun tp!6617 () Bool)

(declare-fun tp!6619 () Bool)

(assert (=> b!31921 (= e!16271 (and tp!6617 tp!6619))))

(declare-fun b!31922 () Bool)

(assert (=> b!31922 (= e!16275 (not (appendAssoc!14 (++!46 (toList!121 xs!634) (toList!121 (left!715 (left!715 ys!128)))) (toList!121 (right!718 (left!715 ys!128))) (toList!121 (right!718 ys!128)))))))

(declare-fun b!31923 () Bool)

(declare-fun tp!6618 () Bool)

(declare-fun tp!6616 () Bool)

(assert (=> b!31923 (= e!16268 (and tp!6618 tp!6616))))

(declare-fun b!31924 () Bool)

(assert (=> b!31924 (= e!16272 e!16266)))

(declare-fun res!14657 () Bool)

(assert (=> b!31924 (=> (not res!14657) (not e!16266))))

(assert (=> b!31924 (= res!14657 (is-CC!70 (left!715 ys!128)))))

(assert (= (and start!4038 res!14650) b!31915))

(assert (= (and b!31915 (not res!14656)) b!31919))

(assert (= (and b!31919 res!14655) b!31918))

(assert (= (and b!31918 (not res!14654)) b!31916))

(assert (= (and start!4038 (not res!14651)) b!31912))

(assert (= (and b!31912 res!14652) b!31914))

(assert (= (and b!31914 (not res!14653)) b!31924))

(assert (= (and b!31924 res!14657) b!31917))

(assert (= (and b!31917 (not res!14658)) b!31922))

(assert (= (and start!4038 (is-CC!70 xs!634)) b!31921))

(assert (= (and start!4038 (is-Single!70 xs!634)) b!31920))

(assert (= (and start!4038 (is-CC!70 ys!128)) b!31923))

(assert (= (and start!4038 (is-Single!70 ys!128)) b!31913))

(declare-fun m!34703 () Bool)

(assert (=> b!31918 m!34703))

(declare-fun m!34705 () Bool)

(assert (=> b!31918 m!34705))

(declare-fun m!34707 () Bool)

(assert (=> b!31918 m!34707))

(assert (=> b!31918 m!34703))

(assert (=> b!31918 m!34705))

(assert (=> b!31918 m!34707))

(declare-fun m!34709 () Bool)

(assert (=> b!31918 m!34709))

(declare-fun m!34711 () Bool)

(assert (=> b!31915 m!34711))

(declare-fun m!34713 () Bool)

(assert (=> b!31915 m!34713))

(assert (=> b!31915 m!34707))

(assert (=> b!31915 m!34711))

(assert (=> b!31915 m!34713))

(assert (=> b!31915 m!34707))

(declare-fun m!34715 () Bool)

(assert (=> b!31915 m!34715))

(declare-fun m!34717 () Bool)

(assert (=> b!31922 m!34717))

(declare-fun m!34719 () Bool)

(assert (=> b!31922 m!34719))

(declare-fun m!34721 () Bool)

(assert (=> b!31922 m!34721))

(declare-fun m!34723 () Bool)

(assert (=> b!31922 m!34723))

(assert (=> b!31922 m!34721))

(assert (=> b!31922 m!34717))

(declare-fun m!34725 () Bool)

(assert (=> b!31922 m!34725))

(assert (=> b!31922 m!34725))

(assert (=> b!31922 m!34723))

(assert (=> b!31922 m!34719))

(declare-fun m!34727 () Bool)

(assert (=> b!31922 m!34727))

(assert (=> b!31914 m!34721))

(declare-fun m!34729 () Bool)

(assert (=> b!31914 m!34729))

(assert (=> b!31914 m!34719))

(assert (=> b!31914 m!34721))

(assert (=> b!31914 m!34729))

(assert (=> b!31914 m!34719))

(declare-fun m!34731 () Bool)

(assert (=> b!31914 m!34731))

(assert (=> b!31916 m!34711))

(assert (=> b!31916 m!34705))

(assert (=> b!31916 m!34707))

(declare-fun m!34733 () Bool)

(assert (=> b!31916 m!34733))

(assert (=> b!31916 m!34703))

(assert (=> b!31916 m!34707))

(assert (=> b!31916 m!34711))

(assert (=> b!31916 m!34703))

(assert (=> b!31916 m!34733))

(declare-fun m!34735 () Bool)

(assert (=> b!31916 m!34735))

(assert (=> b!31916 m!34705))

(assert (=> b!31917 m!34721))

(assert (=> b!31917 m!34717))

(assert (=> b!31917 m!34723))

(assert (=> b!31917 m!34721))

(assert (=> b!31917 m!34717))

(assert (=> b!31917 m!34723))

(declare-fun m!34737 () Bool)

(assert (=> b!31917 m!34737))

(push 1)

(assert tp_is_empty!187)

(assert (not b!31917))

(assert (not b!31918))

(assert (not b!31915))

(assert (not b!31923))

(assert (not b!31914))

(assert (not b!31916))

(assert (not b!31922))

(assert (not b!31921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!31929 () Bool)

(declare-fun e!16278 () Bool)

(assert (=> b!31929 (= e!16278 (= (++!46 (++!46 (toList!121 (left!715 (right!718 xs!634))) (toList!121 (right!718 (right!718 xs!634)))) (toList!121 ys!128)) (++!46 (toList!121 (left!715 (right!718 xs!634))) (++!46 (toList!121 (right!718 (right!718 xs!634))) (toList!121 ys!128)))))))

(declare-fun lt!6115 () Bool)

(assert (=> b!31929 (= lt!6115 (appendAssoc!14 (t!4380 (toList!121 (left!715 (right!718 xs!634)))) (toList!121 (right!718 (right!718 xs!634))) (toList!121 ys!128)))))

(declare-fun d!16535 () Bool)

(assert (=> d!16535 e!16278))

(declare-fun c!6966 () Bool)

(assert (=> d!16535 (= c!6966 (is-Cons!360 (toList!121 (left!715 (right!718 xs!634)))))))

(assert (=> d!16535 (= (appendAssoc!14 (toList!121 (left!715 (right!718 xs!634))) (toList!121 (right!718 (right!718 xs!634))) (toList!121 ys!128)) true)))

(declare-fun b!31930 () Bool)

(assert (=> b!31930 (= e!16278 (= (++!46 (++!46 (toList!121 (left!715 (right!718 xs!634))) (toList!121 (right!718 (right!718 xs!634)))) (toList!121 ys!128)) (++!46 (toList!121 (left!715 (right!718 xs!634))) (++!46 (toList!121 (right!718 (right!718 xs!634))) (toList!121 ys!128)))))))

(assert (= (and d!16535 c!6966) b!31929))

(assert (= (and d!16535 (not c!6966)) b!31930))

(assert (=> b!31929 m!34703))

(assert (=> b!31929 m!34733))

(declare-fun m!34739 () Bool)

(assert (=> b!31929 m!34739))

(assert (=> b!31929 m!34703))

(assert (=> b!31929 m!34705))

(declare-fun m!34741 () Bool)

(assert (=> b!31929 m!34741))

(assert (=> b!31929 m!34705))

(assert (=> b!31929 m!34707))

(assert (=> b!31929 m!34733))

(assert (=> b!31929 m!34705))

(assert (=> b!31929 m!34707))

(declare-fun m!34743 () Bool)

(assert (=> b!31929 m!34743))

(assert (=> b!31929 m!34741))

(assert (=> b!31929 m!34707))

(declare-fun m!34745 () Bool)

(assert (=> b!31929 m!34745))

(assert (=> b!31930 m!34703))

(assert (=> b!31930 m!34705))

(assert (=> b!31930 m!34741))

(assert (=> b!31930 m!34741))

(assert (=> b!31930 m!34707))

(assert (=> b!31930 m!34745))

(assert (=> b!31930 m!34705))

(assert (=> b!31930 m!34707))

(assert (=> b!31930 m!34733))

(assert (=> b!31930 m!34703))

(assert (=> b!31930 m!34733))

(assert (=> b!31930 m!34739))

(assert (=> b!31918 d!16535))

(declare-fun b!31940 () Bool)

(declare-fun e!16283 () List!366)

(declare-fun e!16284 () List!366)

(assert (=> b!31940 (= e!16283 e!16284)))

(declare-fun c!6971 () Bool)

(assert (=> b!31940 (= c!6971 (is-Single!70 (left!715 (right!718 xs!634))))))

(declare-fun b!31942 () Bool)

(assert (=> b!31942 (= e!16284 (++!46 (toList!121 (left!715 (left!715 (right!718 xs!634)))) (toList!121 (right!718 (left!715 (right!718 xs!634))))))))

(declare-fun b!31939 () Bool)

(assert (=> b!31939 (= e!16283 Nil!361)))

(declare-fun d!16537 () Bool)

(declare-fun lt!6118 () List!366)

(declare-fun size!279 (List!366) Int)

(declare-fun size!280 (Conc!71) Int)

(assert (=> d!16537 (= (size!279 lt!6118) (size!280 (left!715 (right!718 xs!634))))))

(assert (=> d!16537 (= lt!6118 e!16283)))

(declare-fun c!6972 () Bool)

(assert (=> d!16537 (= c!6972 (is-Empty!81 (left!715 (right!718 xs!634))))))

(assert (=> d!16537 (= (toList!121 (left!715 (right!718 xs!634))) lt!6118)))

(declare-fun b!31941 () Bool)

(assert (=> b!31941 (= e!16284 (Cons!360 (x!8972 (left!715 (right!718 xs!634))) Nil!361))))

(assert (= (and b!31940 c!6971) b!31941))

(assert (= (and b!31940 (not c!6971)) b!31942))

(assert (= (and d!16537 c!6972) b!31939))

(assert (= (and d!16537 (not c!6972)) b!31940))

(declare-fun m!34747 () Bool)

(assert (=> b!31942 m!34747))

(declare-fun m!34749 () Bool)

(assert (=> b!31942 m!34749))

(assert (=> b!31942 m!34747))

(assert (=> b!31942 m!34749))

(declare-fun m!34751 () Bool)

(assert (=> b!31942 m!34751))

(declare-fun m!34753 () Bool)

(assert (=> d!16537 m!34753))

(declare-fun m!34755 () Bool)

(assert (=> d!16537 m!34755))

(assert (=> b!31918 d!16537))

(declare-fun b!31944 () Bool)

(declare-fun e!16285 () List!366)

(declare-fun e!16286 () List!366)

(assert (=> b!31944 (= e!16285 e!16286)))

(declare-fun c!6973 () Bool)

(assert (=> b!31944 (= c!6973 (is-Single!70 (right!718 (right!718 xs!634))))))

(declare-fun b!31946 () Bool)

(assert (=> b!31946 (= e!16286 (++!46 (toList!121 (left!715 (right!718 (right!718 xs!634)))) (toList!121 (right!718 (right!718 (right!718 xs!634))))))))

(declare-fun b!31943 () Bool)

(assert (=> b!31943 (= e!16285 Nil!361)))

(declare-fun d!16539 () Bool)

(declare-fun lt!6119 () List!366)

(assert (=> d!16539 (= (size!279 lt!6119) (size!280 (right!718 (right!718 xs!634))))))

(assert (=> d!16539 (= lt!6119 e!16285)))

(declare-fun c!6974 () Bool)

(assert (=> d!16539 (= c!6974 (is-Empty!81 (right!718 (right!718 xs!634))))))

(assert (=> d!16539 (= (toList!121 (right!718 (right!718 xs!634))) lt!6119)))

(declare-fun b!31945 () Bool)

(assert (=> b!31945 (= e!16286 (Cons!360 (x!8972 (right!718 (right!718 xs!634))) Nil!361))))

(assert (= (and b!31944 c!6973) b!31945))

(assert (= (and b!31944 (not c!6973)) b!31946))

(assert (= (and d!16539 c!6974) b!31943))

(assert (= (and d!16539 (not c!6974)) b!31944))

(declare-fun m!34757 () Bool)

(assert (=> b!31946 m!34757))

(declare-fun m!34759 () Bool)

(assert (=> b!31946 m!34759))

(assert (=> b!31946 m!34757))

(assert (=> b!31946 m!34759))

(declare-fun m!34761 () Bool)

(assert (=> b!31946 m!34761))

(declare-fun m!34763 () Bool)

(assert (=> d!16539 m!34763))

(declare-fun m!34765 () Bool)

(assert (=> d!16539 m!34765))

(assert (=> b!31918 d!16539))

(declare-fun b!31948 () Bool)

(declare-fun e!16287 () List!366)

(declare-fun e!16288 () List!366)

(assert (=> b!31948 (= e!16287 e!16288)))

(declare-fun c!6975 () Bool)

(assert (=> b!31948 (= c!6975 (is-Single!70 ys!128))))

(declare-fun b!31950 () Bool)

(assert (=> b!31950 (= e!16288 (++!46 (toList!121 (left!715 ys!128)) (toList!121 (right!718 ys!128))))))

(declare-fun b!31947 () Bool)

(assert (=> b!31947 (= e!16287 Nil!361)))

(declare-fun d!16541 () Bool)

(declare-fun lt!6120 () List!366)

(assert (=> d!16541 (= (size!279 lt!6120) (size!280 ys!128))))

(assert (=> d!16541 (= lt!6120 e!16287)))

(declare-fun c!6976 () Bool)

(assert (=> d!16541 (= c!6976 (is-Empty!81 ys!128))))

(assert (=> d!16541 (= (toList!121 ys!128) lt!6120)))

(declare-fun b!31949 () Bool)

(assert (=> b!31949 (= e!16288 (Cons!360 (x!8972 ys!128) Nil!361))))

(assert (= (and b!31948 c!6975) b!31949))

(assert (= (and b!31948 (not c!6975)) b!31950))

(assert (= (and d!16541 c!6976) b!31947))

(assert (= (and d!16541 (not c!6976)) b!31948))

(assert (=> b!31950 m!34729))

(assert (=> b!31950 m!34719))

(assert (=> b!31950 m!34729))

(assert (=> b!31950 m!34719))

(declare-fun m!34767 () Bool)

(assert (=> b!31950 m!34767))

(declare-fun m!34769 () Bool)

(assert (=> d!16541 m!34769))

(declare-fun m!34771 () Bool)

(assert (=> d!16541 m!34771))

(assert (=> b!31918 d!16541))

(declare-fun b!31952 () Bool)

(declare-fun e!16289 () List!366)

(declare-fun e!16290 () List!366)

(assert (=> b!31952 (= e!16289 e!16290)))

(declare-fun c!6977 () Bool)

(assert (=> b!31952 (= c!6977 (is-Single!70 (right!718 ys!128)))))

(declare-fun b!31954 () Bool)

(assert (=> b!31954 (= e!16290 (++!46 (toList!121 (left!715 (right!718 ys!128))) (toList!121 (right!718 (right!718 ys!128)))))))

(declare-fun b!31951 () Bool)

(assert (=> b!31951 (= e!16289 Nil!361)))

(declare-fun d!16543 () Bool)

(declare-fun lt!6121 () List!366)

(assert (=> d!16543 (= (size!279 lt!6121) (size!280 (right!718 ys!128)))))

(assert (=> d!16543 (= lt!6121 e!16289)))

(declare-fun c!6978 () Bool)

(assert (=> d!16543 (= c!6978 (is-Empty!81 (right!718 ys!128)))))

(assert (=> d!16543 (= (toList!121 (right!718 ys!128)) lt!6121)))

(declare-fun b!31953 () Bool)

(assert (=> b!31953 (= e!16290 (Cons!360 (x!8972 (right!718 ys!128)) Nil!361))))

(assert (= (and b!31952 c!6977) b!31953))

(assert (= (and b!31952 (not c!6977)) b!31954))

(assert (= (and d!16543 c!6978) b!31951))

(assert (= (and d!16543 (not c!6978)) b!31952))

(declare-fun m!34773 () Bool)

(assert (=> b!31954 m!34773))

(declare-fun m!34775 () Bool)

(assert (=> b!31954 m!34775))

(assert (=> b!31954 m!34773))

(assert (=> b!31954 m!34775))

(declare-fun m!34777 () Bool)

(assert (=> b!31954 m!34777))

(declare-fun m!34779 () Bool)

(assert (=> d!16543 m!34779))

(declare-fun m!34781 () Bool)

(assert (=> d!16543 m!34781))

(assert (=> b!31922 d!16543))

(declare-fun b!31956 () Bool)

(declare-fun e!16291 () List!366)

(declare-fun e!16292 () List!366)

(assert (=> b!31956 (= e!16291 e!16292)))

(declare-fun c!6979 () Bool)

(assert (=> b!31956 (= c!6979 (is-Single!70 (left!715 (left!715 ys!128))))))

(declare-fun b!31958 () Bool)

(assert (=> b!31958 (= e!16292 (++!46 (toList!121 (left!715 (left!715 (left!715 ys!128)))) (toList!121 (right!718 (left!715 (left!715 ys!128))))))))

(declare-fun b!31955 () Bool)

(assert (=> b!31955 (= e!16291 Nil!361)))

(declare-fun d!16545 () Bool)

(declare-fun lt!6122 () List!366)

(assert (=> d!16545 (= (size!279 lt!6122) (size!280 (left!715 (left!715 ys!128))))))

(assert (=> d!16545 (= lt!6122 e!16291)))

(declare-fun c!6980 () Bool)

(assert (=> d!16545 (= c!6980 (is-Empty!81 (left!715 (left!715 ys!128))))))

(assert (=> d!16545 (= (toList!121 (left!715 (left!715 ys!128))) lt!6122)))

(declare-fun b!31957 () Bool)

(assert (=> b!31957 (= e!16292 (Cons!360 (x!8972 (left!715 (left!715 ys!128))) Nil!361))))

(assert (= (and b!31956 c!6979) b!31957))

(assert (= (and b!31956 (not c!6979)) b!31958))

(assert (= (and d!16545 c!6980) b!31955))

(assert (= (and d!16545 (not c!6980)) b!31956))

(declare-fun m!34783 () Bool)

(assert (=> b!31958 m!34783))

(declare-fun m!34785 () Bool)

(assert (=> b!31958 m!34785))

(assert (=> b!31958 m!34783))

(assert (=> b!31958 m!34785))

(declare-fun m!34787 () Bool)

(assert (=> b!31958 m!34787))

(declare-fun m!34789 () Bool)

(assert (=> d!16545 m!34789))

(declare-fun m!34791 () Bool)

(assert (=> d!16545 m!34791))

(assert (=> b!31922 d!16545))

(declare-fun b!31960 () Bool)

(declare-fun e!16293 () List!366)

(declare-fun e!16294 () List!366)

(assert (=> b!31960 (= e!16293 e!16294)))

(declare-fun c!6981 () Bool)

(assert (=> b!31960 (= c!6981 (is-Single!70 (right!718 (left!715 ys!128))))))

(declare-fun b!31962 () Bool)

(assert (=> b!31962 (= e!16294 (++!46 (toList!121 (left!715 (right!718 (left!715 ys!128)))) (toList!121 (right!718 (right!718 (left!715 ys!128))))))))

(declare-fun b!31959 () Bool)

(assert (=> b!31959 (= e!16293 Nil!361)))

(declare-fun d!16547 () Bool)

(declare-fun lt!6123 () List!366)

(assert (=> d!16547 (= (size!279 lt!6123) (size!280 (right!718 (left!715 ys!128))))))

(assert (=> d!16547 (= lt!6123 e!16293)))

(declare-fun c!6982 () Bool)

(assert (=> d!16547 (= c!6982 (is-Empty!81 (right!718 (left!715 ys!128))))))

(assert (=> d!16547 (= (toList!121 (right!718 (left!715 ys!128))) lt!6123)))

(declare-fun b!31961 () Bool)

(assert (=> b!31961 (= e!16294 (Cons!360 (x!8972 (right!718 (left!715 ys!128))) Nil!361))))

(assert (= (and b!31960 c!6981) b!31961))

(assert (= (and b!31960 (not c!6981)) b!31962))

(assert (= (and d!16547 c!6982) b!31959))

(assert (= (and d!16547 (not c!6982)) b!31960))

(declare-fun m!34793 () Bool)

(assert (=> b!31962 m!34793))

(declare-fun m!34795 () Bool)

(assert (=> b!31962 m!34795))

(assert (=> b!31962 m!34793))

(assert (=> b!31962 m!34795))

(declare-fun m!34797 () Bool)

(assert (=> b!31962 m!34797))

(declare-fun m!34799 () Bool)

(assert (=> d!16547 m!34799))

(declare-fun m!34801 () Bool)

(assert (=> d!16547 m!34801))

(assert (=> b!31922 d!16547))

(declare-fun d!16549 () Bool)

(declare-fun e!16300 () Bool)

(assert (=> d!16549 e!16300))

(declare-fun res!14666 () Bool)

(assert (=> d!16549 (=> (not res!14666) (not e!16300))))

(declare-fun lt!6126 () List!366)

(declare-fun content!75 (List!366) (Set T!1843))

(assert (=> d!16549 (= res!14666 (= (content!75 lt!6126) (union (content!75 (toList!121 xs!634)) (content!75 (toList!121 (left!715 (left!715 ys!128)))))))))

(declare-fun e!16299 () List!366)

(assert (=> d!16549 (= lt!6126 e!16299)))

(declare-fun c!6985 () Bool)

(assert (=> d!16549 (= c!6985 (is-Nil!361 (toList!121 xs!634)))))

(assert (=> d!16549 (= (++!46 (toList!121 xs!634) (toList!121 (left!715 (left!715 ys!128)))) lt!6126)))

(declare-fun b!31972 () Bool)

(assert (=> b!31972 (= e!16299 (Cons!360 (h!277 (toList!121 xs!634)) (++!46 (t!4380 (toList!121 xs!634)) (toList!121 (left!715 (left!715 ys!128))))))))

(declare-fun b!31971 () Bool)

(assert (=> b!31971 (= e!16299 (toList!121 (left!715 (left!715 ys!128))))))

(declare-fun b!31973 () Bool)

(declare-fun res!14665 () Bool)

(assert (=> b!31973 (=> (not res!14665) (not e!16300))))

(assert (=> b!31973 (= res!14665 (= (size!279 lt!6126) (+ (size!279 (toList!121 xs!634)) (size!279 (toList!121 (left!715 (left!715 ys!128)))))))))

(declare-fun b!31974 () Bool)

(assert (=> b!31974 (= e!16300 (or (not (= (toList!121 (left!715 (left!715 ys!128))) Nil!361)) (= lt!6126 (toList!121 xs!634))))))

(assert (= (and d!16549 c!6985) b!31971))

(assert (= (and d!16549 (not c!6985)) b!31972))

(assert (= (and d!16549 res!14666) b!31973))

(assert (= (and b!31973 res!14665) b!31974))

(declare-fun m!34803 () Bool)

(assert (=> d!16549 m!34803))

(assert (=> d!16549 m!34721))

(declare-fun m!34805 () Bool)

(assert (=> d!16549 m!34805))

(assert (=> d!16549 m!34717))

(declare-fun m!34807 () Bool)

(assert (=> d!16549 m!34807))

(assert (=> b!31972 m!34717))

(declare-fun m!34809 () Bool)

(assert (=> b!31972 m!34809))

(declare-fun m!34811 () Bool)

(assert (=> b!31973 m!34811))

(assert (=> b!31973 m!34721))

(declare-fun m!34813 () Bool)

(assert (=> b!31973 m!34813))

(assert (=> b!31973 m!34717))

(declare-fun m!34815 () Bool)

(assert (=> b!31973 m!34815))

(assert (=> b!31922 d!16549))

(declare-fun b!31975 () Bool)

(declare-fun e!16301 () Bool)

(assert (=> b!31975 (= e!16301 (= (++!46 (++!46 (++!46 (toList!121 xs!634) (toList!121 (left!715 (left!715 ys!128)))) (toList!121 (right!718 (left!715 ys!128)))) (toList!121 (right!718 ys!128))) (++!46 (++!46 (toList!121 xs!634) (toList!121 (left!715 (left!715 ys!128)))) (++!46 (toList!121 (right!718 (left!715 ys!128))) (toList!121 (right!718 ys!128))))))))

(declare-fun lt!6127 () Bool)

(assert (=> b!31975 (= lt!6127 (appendAssoc!14 (t!4380 (++!46 (toList!121 xs!634) (toList!121 (left!715 (left!715 ys!128))))) (toList!121 (right!718 (left!715 ys!128))) (toList!121 (right!718 ys!128))))))

(declare-fun d!16551 () Bool)

(assert (=> d!16551 e!16301))

(declare-fun c!6986 () Bool)

(assert (=> d!16551 (= c!6986 (is-Cons!360 (++!46 (toList!121 xs!634) (toList!121 (left!715 (left!715 ys!128))))))))

(assert (=> d!16551 (= (appendAssoc!14 (++!46 (toList!121 xs!634) (toList!121 (left!715 (left!715 ys!128)))) (toList!121 (right!718 (left!715 ys!128))) (toList!121 (right!718 ys!128))) true)))

(declare-fun b!31976 () Bool)

(assert (=> b!31976 (= e!16301 (= (++!46 (++!46 (++!46 (toList!121 xs!634) (toList!121 (left!715 (left!715 ys!128)))) (toList!121 (right!718 (left!715 ys!128)))) (toList!121 (right!718 ys!128))) (++!46 (++!46 (toList!121 xs!634) (toList!121 (left!715 (left!715 ys!128)))) (++!46 (toList!121 (right!718 (left!715 ys!128))) (toList!121 (right!718 ys!128))))))))

(assert (= (and d!16551 c!6986) b!31975))

(assert (= (and d!16551 (not c!6986)) b!31976))

(assert (=> b!31975 m!34725))

(declare-fun m!34817 () Bool)

(assert (=> b!31975 m!34817))

(declare-fun m!34819 () Bool)

(assert (=> b!31975 m!34819))

(assert (=> b!31975 m!34725))

(assert (=> b!31975 m!34723))

(declare-fun m!34821 () Bool)

(assert (=> b!31975 m!34821))

(assert (=> b!31975 m!34723))

(assert (=> b!31975 m!34719))

(assert (=> b!31975 m!34817))

(assert (=> b!31975 m!34723))

(assert (=> b!31975 m!34719))

(declare-fun m!34823 () Bool)

(assert (=> b!31975 m!34823))

(assert (=> b!31975 m!34821))

(assert (=> b!31975 m!34719))

(declare-fun m!34825 () Bool)

(assert (=> b!31975 m!34825))

(assert (=> b!31976 m!34725))

(assert (=> b!31976 m!34723))

(assert (=> b!31976 m!34821))

(assert (=> b!31976 m!34821))

(assert (=> b!31976 m!34719))

(assert (=> b!31976 m!34825))

(assert (=> b!31976 m!34723))

(assert (=> b!31976 m!34719))

(assert (=> b!31976 m!34817))

(assert (=> b!31976 m!34725))

(assert (=> b!31976 m!34817))

(assert (=> b!31976 m!34819))

(assert (=> b!31922 d!16551))

(declare-fun b!31978 () Bool)

(declare-fun e!16302 () List!366)

(declare-fun e!16303 () List!366)

(assert (=> b!31978 (= e!16302 e!16303)))

(declare-fun c!6987 () Bool)

(assert (=> b!31978 (= c!6987 (is-Single!70 xs!634))))

(declare-fun b!31980 () Bool)

(assert (=> b!31980 (= e!16303 (++!46 (toList!121 (left!715 xs!634)) (toList!121 (right!718 xs!634))))))

(declare-fun b!31977 () Bool)

(assert (=> b!31977 (= e!16302 Nil!361)))

(declare-fun d!16553 () Bool)

(declare-fun lt!6128 () List!366)

(assert (=> d!16553 (= (size!279 lt!6128) (size!280 xs!634))))

(assert (=> d!16553 (= lt!6128 e!16302)))

(declare-fun c!6988 () Bool)

(assert (=> d!16553 (= c!6988 (is-Empty!81 xs!634))))

(assert (=> d!16553 (= (toList!121 xs!634) lt!6128)))

(declare-fun b!31979 () Bool)

(assert (=> b!31979 (= e!16303 (Cons!360 (x!8972 xs!634) Nil!361))))

(assert (= (and b!31978 c!6987) b!31979))

(assert (= (and b!31978 (not c!6987)) b!31980))

(assert (= (and d!16553 c!6988) b!31977))

(assert (= (and d!16553 (not c!6988)) b!31978))

(assert (=> b!31980 m!34711))

(assert (=> b!31980 m!34713))

(assert (=> b!31980 m!34711))

(assert (=> b!31980 m!34713))

(declare-fun m!34827 () Bool)

(assert (=> b!31980 m!34827))

(declare-fun m!34829 () Bool)

(assert (=> d!16553 m!34829))

(declare-fun m!34831 () Bool)

(assert (=> d!16553 m!34831))

(assert (=> b!31922 d!16553))

(declare-fun b!31981 () Bool)

(declare-fun e!16304 () Bool)

(assert (=> b!31981 (= e!16304 (= (++!46 (++!46 (toList!121 xs!634) (toList!121 (left!715 (left!715 ys!128)))) (toList!121 (right!718 (left!715 ys!128)))) (++!46 (toList!121 xs!634) (++!46 (toList!121 (left!715 (left!715 ys!128))) (toList!121 (right!718 (left!715 ys!128)))))))))

(declare-fun lt!6129 () Bool)

(assert (=> b!31981 (= lt!6129 (appendAssoc!14 (t!4380 (toList!121 xs!634)) (toList!121 (left!715 (left!715 ys!128))) (toList!121 (right!718 (left!715 ys!128)))))))

(declare-fun d!16555 () Bool)

(assert (=> d!16555 e!16304))

(declare-fun c!6989 () Bool)

(assert (=> d!16555 (= c!6989 (is-Cons!360 (toList!121 xs!634)))))

(assert (=> d!16555 (= (appendAssoc!14 (toList!121 xs!634) (toList!121 (left!715 (left!715 ys!128))) (toList!121 (right!718 (left!715 ys!128)))) true)))

(declare-fun b!31982 () Bool)

(assert (=> b!31982 (= e!16304 (= (++!46 (++!46 (toList!121 xs!634) (toList!121 (left!715 (left!715 ys!128)))) (toList!121 (right!718 (left!715 ys!128)))) (++!46 (toList!121 xs!634) (++!46 (toList!121 (left!715 (left!715 ys!128))) (toList!121 (right!718 (left!715 ys!128)))))))))

(assert (= (and d!16555 c!6989) b!31981))

(assert (= (and d!16555 (not c!6989)) b!31982))

(assert (=> b!31981 m!34721))

(declare-fun m!34833 () Bool)

(assert (=> b!31981 m!34833))

(declare-fun m!34835 () Bool)

(assert (=> b!31981 m!34835))

(assert (=> b!31981 m!34721))

(assert (=> b!31981 m!34717))

(assert (=> b!31981 m!34725))

(assert (=> b!31981 m!34717))

(assert (=> b!31981 m!34723))

(assert (=> b!31981 m!34833))

(assert (=> b!31981 m!34717))

(assert (=> b!31981 m!34723))

(declare-fun m!34837 () Bool)

(assert (=> b!31981 m!34837))

(assert (=> b!31981 m!34725))

(assert (=> b!31981 m!34723))

(assert (=> b!31981 m!34821))

(assert (=> b!31982 m!34721))

(assert (=> b!31982 m!34717))

(assert (=> b!31982 m!34725))

(assert (=> b!31982 m!34725))

(assert (=> b!31982 m!34723))

(assert (=> b!31982 m!34821))

(assert (=> b!31982 m!34717))

(assert (=> b!31982 m!34723))

(assert (=> b!31982 m!34833))

(assert (=> b!31982 m!34721))

(assert (=> b!31982 m!34833))

(assert (=> b!31982 m!34835))

(assert (=> b!31917 d!16555))

(assert (=> b!31917 d!16553))

(assert (=> b!31917 d!16545))

(assert (=> b!31917 d!16547))

(assert (=> b!31916 d!16539))

(declare-fun b!31983 () Bool)

(declare-fun e!16305 () Bool)

(assert (=> b!31983 (= e!16305 (= (++!46 (++!46 (toList!121 (left!715 xs!634)) (toList!121 (left!715 (right!718 xs!634)))) (++!46 (toList!121 (right!718 (right!718 xs!634))) (toList!121 ys!128))) (++!46 (toList!121 (left!715 xs!634)) (++!46 (toList!121 (left!715 (right!718 xs!634))) (++!46 (toList!121 (right!718 (right!718 xs!634))) (toList!121 ys!128))))))))

(declare-fun lt!6130 () Bool)

(assert (=> b!31983 (= lt!6130 (appendAssoc!14 (t!4380 (toList!121 (left!715 xs!634))) (toList!121 (left!715 (right!718 xs!634))) (++!46 (toList!121 (right!718 (right!718 xs!634))) (toList!121 ys!128))))))

(declare-fun d!16557 () Bool)

(assert (=> d!16557 e!16305))

(declare-fun c!6990 () Bool)

(assert (=> d!16557 (= c!6990 (is-Cons!360 (toList!121 (left!715 xs!634))))))

(assert (=> d!16557 (= (appendAssoc!14 (toList!121 (left!715 xs!634)) (toList!121 (left!715 (right!718 xs!634))) (++!46 (toList!121 (right!718 (right!718 xs!634))) (toList!121 ys!128))) true)))

(declare-fun b!31984 () Bool)

(assert (=> b!31984 (= e!16305 (= (++!46 (++!46 (toList!121 (left!715 xs!634)) (toList!121 (left!715 (right!718 xs!634)))) (++!46 (toList!121 (right!718 (right!718 xs!634))) (toList!121 ys!128))) (++!46 (toList!121 (left!715 xs!634)) (++!46 (toList!121 (left!715 (right!718 xs!634))) (++!46 (toList!121 (right!718 (right!718 xs!634))) (toList!121 ys!128))))))))

(assert (= (and d!16557 c!6990) b!31983))

(assert (= (and d!16557 (not c!6990)) b!31984))

(assert (=> b!31983 m!34711))

(assert (=> b!31983 m!34739))

(declare-fun m!34839 () Bool)

(assert (=> b!31983 m!34839))

(assert (=> b!31983 m!34711))

(assert (=> b!31983 m!34703))

(declare-fun m!34841 () Bool)

(assert (=> b!31983 m!34841))

(assert (=> b!31983 m!34703))

(assert (=> b!31983 m!34733))

(assert (=> b!31983 m!34739))

(assert (=> b!31983 m!34703))

(assert (=> b!31983 m!34733))

(declare-fun m!34843 () Bool)

(assert (=> b!31983 m!34843))

(assert (=> b!31983 m!34841))

(assert (=> b!31983 m!34733))

(declare-fun m!34845 () Bool)

(assert (=> b!31983 m!34845))

(assert (=> b!31984 m!34711))

(assert (=> b!31984 m!34703))

(assert (=> b!31984 m!34841))

(assert (=> b!31984 m!34841))

(assert (=> b!31984 m!34733))

(assert (=> b!31984 m!34845))

(assert (=> b!31984 m!34703))

(assert (=> b!31984 m!34733))

(assert (=> b!31984 m!34739))

(assert (=> b!31984 m!34711))

(assert (=> b!31984 m!34739))

(assert (=> b!31984 m!34839))

(assert (=> b!31916 d!16557))

(declare-fun d!16559 () Bool)

(declare-fun e!16307 () Bool)

(assert (=> d!16559 e!16307))

(declare-fun res!14668 () Bool)

(assert (=> d!16559 (=> (not res!14668) (not e!16307))))

(declare-fun lt!6131 () List!366)

(assert (=> d!16559 (= res!14668 (= (content!75 lt!6131) (union (content!75 (toList!121 (right!718 (right!718 xs!634)))) (content!75 (toList!121 ys!128)))))))

(declare-fun e!16306 () List!366)

(assert (=> d!16559 (= lt!6131 e!16306)))

(declare-fun c!6991 () Bool)

(assert (=> d!16559 (= c!6991 (is-Nil!361 (toList!121 (right!718 (right!718 xs!634)))))))

(assert (=> d!16559 (= (++!46 (toList!121 (right!718 (right!718 xs!634))) (toList!121 ys!128)) lt!6131)))

(declare-fun b!31986 () Bool)

(assert (=> b!31986 (= e!16306 (Cons!360 (h!277 (toList!121 (right!718 (right!718 xs!634)))) (++!46 (t!4380 (toList!121 (right!718 (right!718 xs!634)))) (toList!121 ys!128))))))

(declare-fun b!31985 () Bool)

(assert (=> b!31985 (= e!16306 (toList!121 ys!128))))

(declare-fun b!31987 () Bool)

(declare-fun res!14667 () Bool)

(assert (=> b!31987 (=> (not res!14667) (not e!16307))))

(assert (=> b!31987 (= res!14667 (= (size!279 lt!6131) (+ (size!279 (toList!121 (right!718 (right!718 xs!634)))) (size!279 (toList!121 ys!128)))))))

(declare-fun b!31988 () Bool)

(assert (=> b!31988 (= e!16307 (or (not (= (toList!121 ys!128) Nil!361)) (= lt!6131 (toList!121 (right!718 (right!718 xs!634))))))))

(assert (= (and d!16559 c!6991) b!31985))

(assert (= (and d!16559 (not c!6991)) b!31986))

(assert (= (and d!16559 res!14668) b!31987))

(assert (= (and b!31987 res!14667) b!31988))

(declare-fun m!34847 () Bool)

(assert (=> d!16559 m!34847))

(assert (=> d!16559 m!34705))

(declare-fun m!34849 () Bool)

(assert (=> d!16559 m!34849))

(assert (=> d!16559 m!34707))

(declare-fun m!34851 () Bool)

(assert (=> d!16559 m!34851))

(assert (=> b!31986 m!34707))

(declare-fun m!34853 () Bool)

(assert (=> b!31986 m!34853))

(declare-fun m!34855 () Bool)

(assert (=> b!31987 m!34855))

(assert (=> b!31987 m!34705))

(declare-fun m!34857 () Bool)

(assert (=> b!31987 m!34857))

(assert (=> b!31987 m!34707))

(declare-fun m!34859 () Bool)

(assert (=> b!31987 m!34859))

(assert (=> b!31916 d!16559))

(assert (=> b!31916 d!16537))

(assert (=> b!31916 d!16541))

(declare-fun b!31990 () Bool)

(declare-fun e!16308 () List!366)

(declare-fun e!16309 () List!366)

(assert (=> b!31990 (= e!16308 e!16309)))

(declare-fun c!6992 () Bool)

(assert (=> b!31990 (= c!6992 (is-Single!70 (left!715 xs!634)))))

(declare-fun b!31992 () Bool)

(assert (=> b!31992 (= e!16309 (++!46 (toList!121 (left!715 (left!715 xs!634))) (toList!121 (right!718 (left!715 xs!634)))))))

(declare-fun b!31989 () Bool)

(assert (=> b!31989 (= e!16308 Nil!361)))

(declare-fun d!16561 () Bool)

(declare-fun lt!6132 () List!366)

(assert (=> d!16561 (= (size!279 lt!6132) (size!280 (left!715 xs!634)))))

(assert (=> d!16561 (= lt!6132 e!16308)))

(declare-fun c!6993 () Bool)

(assert (=> d!16561 (= c!6993 (is-Empty!81 (left!715 xs!634)))))

(assert (=> d!16561 (= (toList!121 (left!715 xs!634)) lt!6132)))

(declare-fun b!31991 () Bool)

(assert (=> b!31991 (= e!16309 (Cons!360 (x!8972 (left!715 xs!634)) Nil!361))))

(assert (= (and b!31990 c!6992) b!31991))

(assert (= (and b!31990 (not c!6992)) b!31992))

(assert (= (and d!16561 c!6993) b!31989))

(assert (= (and d!16561 (not c!6993)) b!31990))

(declare-fun m!34861 () Bool)

(assert (=> b!31992 m!34861))

(declare-fun m!34863 () Bool)

(assert (=> b!31992 m!34863))

(assert (=> b!31992 m!34861))

(assert (=> b!31992 m!34863))

(declare-fun m!34865 () Bool)

(assert (=> b!31992 m!34865))

(declare-fun m!34867 () Bool)

(assert (=> d!16561 m!34867))

(declare-fun m!34869 () Bool)

(assert (=> d!16561 m!34869))

(assert (=> b!31916 d!16561))

(declare-fun b!31993 () Bool)

(declare-fun e!16310 () Bool)

(assert (=> b!31993 (= e!16310 (= (++!46 (++!46 (toList!121 (left!715 xs!634)) (toList!121 (right!718 xs!634))) (toList!121 ys!128)) (++!46 (toList!121 (left!715 xs!634)) (++!46 (toList!121 (right!718 xs!634)) (toList!121 ys!128)))))))

(declare-fun lt!6133 () Bool)

(assert (=> b!31993 (= lt!6133 (appendAssoc!14 (t!4380 (toList!121 (left!715 xs!634))) (toList!121 (right!718 xs!634)) (toList!121 ys!128)))))

(declare-fun d!16563 () Bool)

(assert (=> d!16563 e!16310))

(declare-fun c!6994 () Bool)

(assert (=> d!16563 (= c!6994 (is-Cons!360 (toList!121 (left!715 xs!634))))))

(assert (=> d!16563 (= (appendAssoc!14 (toList!121 (left!715 xs!634)) (toList!121 (right!718 xs!634)) (toList!121 ys!128)) true)))

(declare-fun b!31994 () Bool)

(assert (=> b!31994 (= e!16310 (= (++!46 (++!46 (toList!121 (left!715 xs!634)) (toList!121 (right!718 xs!634))) (toList!121 ys!128)) (++!46 (toList!121 (left!715 xs!634)) (++!46 (toList!121 (right!718 xs!634)) (toList!121 ys!128)))))))

(assert (= (and d!16563 c!6994) b!31993))

(assert (= (and d!16563 (not c!6994)) b!31994))

(assert (=> b!31993 m!34711))

(declare-fun m!34871 () Bool)

(assert (=> b!31993 m!34871))

(declare-fun m!34873 () Bool)

(assert (=> b!31993 m!34873))

(assert (=> b!31993 m!34711))

(assert (=> b!31993 m!34713))

(assert (=> b!31993 m!34827))

(assert (=> b!31993 m!34713))

(assert (=> b!31993 m!34707))

(assert (=> b!31993 m!34871))

(assert (=> b!31993 m!34713))

(assert (=> b!31993 m!34707))

(declare-fun m!34875 () Bool)

(assert (=> b!31993 m!34875))

(assert (=> b!31993 m!34827))

(assert (=> b!31993 m!34707))

(declare-fun m!34877 () Bool)

(assert (=> b!31993 m!34877))

(assert (=> b!31994 m!34711))

(assert (=> b!31994 m!34713))

(assert (=> b!31994 m!34827))

(assert (=> b!31994 m!34827))

(assert (=> b!31994 m!34707))

(assert (=> b!31994 m!34877))

(assert (=> b!31994 m!34713))

(assert (=> b!31994 m!34707))

(assert (=> b!31994 m!34871))

(assert (=> b!31994 m!34711))

(assert (=> b!31994 m!34871))

(assert (=> b!31994 m!34873))

(assert (=> b!31915 d!16563))

(assert (=> b!31915 d!16561))

(declare-fun b!31996 () Bool)

(declare-fun e!16311 () List!366)

(declare-fun e!16312 () List!366)

(assert (=> b!31996 (= e!16311 e!16312)))

(declare-fun c!6995 () Bool)

(assert (=> b!31996 (= c!6995 (is-Single!70 (right!718 xs!634)))))

(declare-fun b!31998 () Bool)

(assert (=> b!31998 (= e!16312 (++!46 (toList!121 (left!715 (right!718 xs!634))) (toList!121 (right!718 (right!718 xs!634)))))))

(declare-fun b!31995 () Bool)

(assert (=> b!31995 (= e!16311 Nil!361)))

(declare-fun d!16565 () Bool)

(declare-fun lt!6134 () List!366)

(assert (=> d!16565 (= (size!279 lt!6134) (size!280 (right!718 xs!634)))))

(assert (=> d!16565 (= lt!6134 e!16311)))

(declare-fun c!6996 () Bool)

(assert (=> d!16565 (= c!6996 (is-Empty!81 (right!718 xs!634)))))

(assert (=> d!16565 (= (toList!121 (right!718 xs!634)) lt!6134)))

(declare-fun b!31997 () Bool)

(assert (=> b!31997 (= e!16312 (Cons!360 (x!8972 (right!718 xs!634)) Nil!361))))

(assert (= (and b!31996 c!6995) b!31997))

(assert (= (and b!31996 (not c!6995)) b!31998))

(assert (= (and d!16565 c!6996) b!31995))

(assert (= (and d!16565 (not c!6996)) b!31996))

(assert (=> b!31998 m!34703))

(assert (=> b!31998 m!34705))

(assert (=> b!31998 m!34703))

(assert (=> b!31998 m!34705))

(assert (=> b!31998 m!34741))

(declare-fun m!34879 () Bool)

(assert (=> d!16565 m!34879))

(declare-fun m!34881 () Bool)

(assert (=> d!16565 m!34881))

(assert (=> b!31915 d!16565))

(assert (=> b!31915 d!16541))

(declare-fun b!31999 () Bool)

(declare-fun e!16313 () Bool)

(assert (=> b!31999 (= e!16313 (= (++!46 (++!46 (toList!121 xs!634) (toList!121 (left!715 ys!128))) (toList!121 (right!718 ys!128))) (++!46 (toList!121 xs!634) (++!46 (toList!121 (left!715 ys!128)) (toList!121 (right!718 ys!128))))))))

(declare-fun lt!6135 () Bool)

(assert (=> b!31999 (= lt!6135 (appendAssoc!14 (t!4380 (toList!121 xs!634)) (toList!121 (left!715 ys!128)) (toList!121 (right!718 ys!128))))))

(declare-fun d!16567 () Bool)

(assert (=> d!16567 e!16313))

(declare-fun c!6997 () Bool)

(assert (=> d!16567 (= c!6997 (is-Cons!360 (toList!121 xs!634)))))

(assert (=> d!16567 (= (appendAssoc!14 (toList!121 xs!634) (toList!121 (left!715 ys!128)) (toList!121 (right!718 ys!128))) true)))

(declare-fun b!32000 () Bool)

(assert (=> b!32000 (= e!16313 (= (++!46 (++!46 (toList!121 xs!634) (toList!121 (left!715 ys!128))) (toList!121 (right!718 ys!128))) (++!46 (toList!121 xs!634) (++!46 (toList!121 (left!715 ys!128)) (toList!121 (right!718 ys!128))))))))

(assert (= (and d!16567 c!6997) b!31999))

(assert (= (and d!16567 (not c!6997)) b!32000))

(assert (=> b!31999 m!34721))

(assert (=> b!31999 m!34767))

(declare-fun m!34883 () Bool)

(assert (=> b!31999 m!34883))

(assert (=> b!31999 m!34721))

(assert (=> b!31999 m!34729))

(declare-fun m!34885 () Bool)

(assert (=> b!31999 m!34885))

(assert (=> b!31999 m!34729))

(assert (=> b!31999 m!34719))

(assert (=> b!31999 m!34767))

(assert (=> b!31999 m!34729))

(assert (=> b!31999 m!34719))

(declare-fun m!34887 () Bool)

(assert (=> b!31999 m!34887))

(assert (=> b!31999 m!34885))

(assert (=> b!31999 m!34719))

(declare-fun m!34889 () Bool)

(assert (=> b!31999 m!34889))

(assert (=> b!32000 m!34721))

(assert (=> b!32000 m!34729))

(assert (=> b!32000 m!34885))

(assert (=> b!32000 m!34885))

(assert (=> b!32000 m!34719))

(assert (=> b!32000 m!34889))

(assert (=> b!32000 m!34729))

(assert (=> b!32000 m!34719))

(assert (=> b!32000 m!34767))

(assert (=> b!32000 m!34721))

(assert (=> b!32000 m!34767))

(assert (=> b!32000 m!34883))

(assert (=> b!31914 d!16567))

(assert (=> b!31914 d!16553))

(declare-fun b!32002 () Bool)

(declare-fun e!16314 () List!366)

(declare-fun e!16315 () List!366)

(assert (=> b!32002 (= e!16314 e!16315)))

(declare-fun c!6998 () Bool)

(assert (=> b!32002 (= c!6998 (is-Single!70 (left!715 ys!128)))))

(declare-fun b!32004 () Bool)

(assert (=> b!32004 (= e!16315 (++!46 (toList!121 (left!715 (left!715 ys!128))) (toList!121 (right!718 (left!715 ys!128)))))))

(declare-fun b!32001 () Bool)

(assert (=> b!32001 (= e!16314 Nil!361)))

(declare-fun d!16569 () Bool)

(declare-fun lt!6136 () List!366)

(assert (=> d!16569 (= (size!279 lt!6136) (size!280 (left!715 ys!128)))))

(assert (=> d!16569 (= lt!6136 e!16314)))

(declare-fun c!6999 () Bool)

(assert (=> d!16569 (= c!6999 (is-Empty!81 (left!715 ys!128)))))

(assert (=> d!16569 (= (toList!121 (left!715 ys!128)) lt!6136)))

(declare-fun b!32003 () Bool)

(assert (=> b!32003 (= e!16315 (Cons!360 (x!8972 (left!715 ys!128)) Nil!361))))

(assert (= (and b!32002 c!6998) b!32003))

(assert (= (and b!32002 (not c!6998)) b!32004))

(assert (= (and d!16569 c!6999) b!32001))

(assert (= (and d!16569 (not c!6999)) b!32002))

(assert (=> b!32004 m!34717))

(assert (=> b!32004 m!34723))

(assert (=> b!32004 m!34717))

(assert (=> b!32004 m!34723))

(assert (=> b!32004 m!34833))

(declare-fun m!34891 () Bool)

(assert (=> d!16569 m!34891))

(declare-fun m!34893 () Bool)

(assert (=> d!16569 m!34893))

(assert (=> b!31914 d!16569))

(assert (=> b!31914 d!16543))

(declare-fun b!32011 () Bool)

(declare-fun e!16318 () Bool)

(declare-fun tp!6624 () Bool)

(declare-fun tp!6625 () Bool)

(assert (=> b!32011 (= e!16318 (and tp!6624 tp!6625))))

(declare-fun b!32012 () Bool)

(assert (=> b!32012 (= e!16318 tp_is_empty!187)))

(assert (=> b!31923 (= tp!6618 e!16318)))

(assert (= (and b!31923 (is-CC!70 (left!715 ys!128))) b!32011))

(assert (= (and b!31923 (is-Single!70 (left!715 ys!128))) b!32012))

(declare-fun b!32013 () Bool)

(declare-fun e!16319 () Bool)

(declare-fun tp!6626 () Bool)

(declare-fun tp!6627 () Bool)

(assert (=> b!32013 (= e!16319 (and tp!6626 tp!6627))))

(declare-fun b!32014 () Bool)

(assert (=> b!32014 (= e!16319 tp_is_empty!187)))

(assert (=> b!31923 (= tp!6616 e!16319)))

(assert (= (and b!31923 (is-CC!70 (right!718 ys!128))) b!32013))

(assert (= (and b!31923 (is-Single!70 (right!718 ys!128))) b!32014))

(declare-fun b!32015 () Bool)

(declare-fun e!16320 () Bool)

(declare-fun tp!6628 () Bool)

(declare-fun tp!6629 () Bool)

(assert (=> b!32015 (= e!16320 (and tp!6628 tp!6629))))

(declare-fun b!32016 () Bool)

(assert (=> b!32016 (= e!16320 tp_is_empty!187)))

(assert (=> b!31921 (= tp!6617 e!16320)))

(assert (= (and b!31921 (is-CC!70 (left!715 xs!634))) b!32015))

(assert (= (and b!31921 (is-Single!70 (left!715 xs!634))) b!32016))

(declare-fun b!32017 () Bool)

(declare-fun e!16321 () Bool)

(declare-fun tp!6630 () Bool)

(declare-fun tp!6631 () Bool)

(assert (=> b!32017 (= e!16321 (and tp!6630 tp!6631))))

(declare-fun b!32018 () Bool)

(assert (=> b!32018 (= e!16321 tp_is_empty!187)))

(assert (=> b!31921 (= tp!6619 e!16321)))

(assert (= (and b!31921 (is-CC!70 (right!718 xs!634))) b!32017))

(assert (= (and b!31921 (is-Single!70 (right!718 xs!634))) b!32018))

(push 1)

(assert (not d!16537))

(assert (not d!16559))

(assert (not b!31994))

(assert tp_is_empty!187)

(assert (not b!31929))

(assert (not b!31998))

(assert (not b!32017))

(assert (not b!31981))

(assert (not b!32013))

(assert (not d!16541))

(assert (not d!16543))

(assert (not d!16561))

(assert (not b!31930))

(assert (not d!16547))

(assert (not b!32000))

(assert (not b!32015))

(assert (not b!31972))

(assert (not b!31973))

(assert (not b!31950))

(assert (not b!31992))

(assert (not b!31946))

(assert (not b!31954))

(assert (not b!31982))

(assert (not d!16569))

(assert (not b!31983))

(assert (not b!31962))

(assert (not d!16565))

(assert (not b!31987))

(assert (not b!31976))

(assert (not b!31980))

(assert (not b!32011))

(assert (not b!31993))

(assert (not b!31999))

(assert (not d!16545))

(assert (not b!31975))

(assert (not b!31984))

(assert (not b!31942))

(assert (not d!16539))

(assert (not b!32004))

(assert (not b!31958))

(assert (not b!31986))

(assert (not d!16553))

(assert (not d!16549))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

