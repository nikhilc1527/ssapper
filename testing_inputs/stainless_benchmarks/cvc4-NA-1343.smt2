; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9430 () Bool)

(assert start!9430)

(declare-fun b!68583 () Bool)

(declare-fun e!37118 () Bool)

(declare-datatypes () ((Formula!44 (And!49 (lhs!935 Formula!44) (rhs!935 Formula!44)) (Literal!43 (id!4824 Int)) (Implies!49 (lhs!936 Formula!44) (rhs!936 Formula!44)) (Or!49 (lhs!937 Formula!44) (rhs!937 Formula!44)) (Not!49 (f!4189 Formula!44)))))

(declare-fun f!3683 () Formula!44)

(declare-fun simplify!1 (Formula!44) Formula!44)

(assert (=> b!68583 (= e!37118 (not (= (simplify!1 f!3683) f!3683)))))

(declare-fun b!68581 () Bool)

(declare-fun res!33175 () Bool)

(assert (=> b!68581 (=> (not res!33175) (not e!37118))))

(declare-fun inductVal!228 () Bool)

(declare-fun simplifyIsStable!1 (Formula!44) Bool)

(assert (=> b!68581 (= res!33175 (= inductVal!228 (simplifyIsStable!1 (rhs!937 f!3683))))))

(declare-fun res!33174 () Bool)

(assert (=> start!9430 (=> (not res!33174) (not e!37118))))

(declare-fun isSimplified!1 (Formula!44) Bool)

(assert (=> start!9430 (= res!33174 (isSimplified!1 f!3683))))

(assert (=> start!9430 e!37118))

(assert (=> start!9430 true))

(declare-fun b!68582 () Bool)

(declare-fun res!33176 () Bool)

(assert (=> b!68582 (=> (not res!33176) (not e!37118))))

(declare-fun inductVal!236 () Bool)

(assert (=> b!68582 (= res!33176 (= inductVal!236 (simplifyIsStable!1 (lhs!937 f!3683))))))

(declare-fun b!68580 () Bool)

(declare-fun res!33173 () Bool)

(assert (=> b!68580 (=> (not res!33173) (not e!37118))))

(assert (=> b!68580 (= res!33173 (and (not (is-And!49 f!3683)) (not (is-Literal!43 f!3683)) (not (is-Implies!49 f!3683)) (is-Or!49 f!3683)))))

(assert (= (and start!9430 res!33174) b!68580))

(assert (= (and b!68580 res!33173) b!68581))

(assert (= (and b!68581 res!33175) b!68582))

(assert (= (and b!68582 res!33176) b!68583))

(declare-fun m!70271 () Bool)

(assert (=> b!68583 m!70271))

(declare-fun m!70273 () Bool)

(assert (=> b!68581 m!70273))

(declare-fun m!70275 () Bool)

(assert (=> start!9430 m!70275))

(declare-fun m!70277 () Bool)

(assert (=> b!68582 m!70277))

(push 1)

(assert (not b!68581))

(assert (not start!9430))

(assert (not b!68583))

(assert (not b!68582))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!68608 () Bool)

(declare-fun e!37135 () Bool)

(assert (=> b!68608 (= e!37135 (= (simplify!1 (rhs!937 f!3683)) (rhs!937 f!3683)))))

(declare-fun d!53572 () Bool)

(declare-fun e!37134 () Bool)

(assert (=> d!53572 e!37134))

(declare-fun c!15989 () Bool)

(declare-fun lt!14005 () Bool)

(assert (=> d!53572 (= c!15989 (or lt!14005 (is-Literal!43 (rhs!937 f!3683))))))

(declare-fun lt!14006 () Formula!44)

(declare-fun e!37136 () Formula!44)

(assert (=> d!53572 (= lt!14006 e!37136)))

(declare-fun c!15991 () Bool)

(assert (=> d!53572 (= c!15991 (or lt!14005 (is-Literal!43 (rhs!937 f!3683))))))

(declare-fun lt!14007 () Bool)

(declare-fun e!37133 () Bool)

(assert (=> d!53572 (= lt!14007 e!37133)))

(declare-fun c!15992 () Bool)

(assert (=> d!53572 (= c!15992 (or lt!14005 (and (not (is-Literal!43 (rhs!937 f!3683))) (or (is-Implies!49 (rhs!937 f!3683)) (is-Or!49 (rhs!937 f!3683))))))))

(declare-fun lt!14008 () Bool)

(declare-fun e!37132 () Bool)

(assert (=> d!53572 (= lt!14008 e!37132)))

(declare-fun c!15988 () Bool)

(assert (=> d!53572 (= c!15988 (or lt!14005 (not (is-Literal!43 (rhs!937 f!3683)))))))

(assert (=> d!53572 (= lt!14005 (is-And!49 (rhs!937 f!3683)))))

(assert (=> d!53572 (isSimplified!1 (rhs!937 f!3683))))

(assert (=> d!53572 (= (simplifyIsStable!1 (rhs!937 f!3683)) true)))

(declare-fun b!68609 () Bool)

(assert (=> b!68609 (= e!37134 e!37135)))

(declare-fun c!15987 () Bool)

(declare-fun lt!14009 () Bool)

(assert (=> b!68609 (= c!15987 (or lt!14009 (is-Or!49 (rhs!937 f!3683))))))

(declare-fun lt!14004 () Formula!44)

(declare-fun e!37131 () Formula!44)

(assert (=> b!68609 (= lt!14004 e!37131)))

(declare-fun c!15990 () Bool)

(assert (=> b!68609 (= c!15990 (or lt!14009 (is-Or!49 (rhs!937 f!3683))))))

(assert (=> b!68609 (= lt!14009 (is-Implies!49 (rhs!937 f!3683)))))

(declare-fun b!68610 () Bool)

(declare-fun res!33209 () Formula!44)

(assert (=> b!68610 (= e!37136 res!33209)))

(assert (=> b!68610 true))

(declare-fun b!68611 () Bool)

(declare-fun res!33208 () Formula!44)

(assert (=> b!68611 (= e!37131 res!33208)))

(assert (=> b!68611 true))

(assert (=> b!68611 true))

(declare-fun b!68612 () Bool)

(assert (=> b!68612 (= e!37131 (simplify!1 (rhs!937 f!3683)))))

(declare-fun b!68613 () Bool)

(assert (=> b!68613 (= e!37132 (simplifyIsStable!1 (ite lt!14005 (rhs!935 (rhs!937 f!3683)) (ite (is-Implies!49 (rhs!937 f!3683)) (rhs!936 (rhs!937 f!3683)) (ite (is-Or!49 (rhs!937 f!3683)) (rhs!937 (rhs!937 f!3683)) (f!4189 (rhs!937 f!3683)))))))))

(declare-fun b!68614 () Bool)

(assert (=> b!68614 (= e!37134 (= lt!14006 (rhs!937 f!3683)))))

(declare-fun b!68615 () Bool)

(declare-fun res!33206 () Bool)

(assert (=> b!68615 (= e!37133 res!33206)))

(assert (=> b!68615 true))

(declare-fun b!68616 () Bool)

(assert (=> b!68616 (= e!37135 (= lt!14004 (rhs!937 f!3683)))))

(declare-fun b!68617 () Bool)

(declare-fun res!33207 () Bool)

(assert (=> b!68617 (= e!37132 res!33207)))

(assert (=> b!68617 true))

(declare-fun b!68618 () Bool)

(assert (=> b!68618 (= e!37133 (simplifyIsStable!1 (ite lt!14005 (lhs!935 (rhs!937 f!3683)) (ite (is-Implies!49 (rhs!937 f!3683)) (lhs!936 (rhs!937 f!3683)) (lhs!937 (rhs!937 f!3683))))))))

(declare-fun b!68619 () Bool)

(assert (=> b!68619 (= e!37136 (simplify!1 (rhs!937 f!3683)))))

(assert (= (and d!53572 c!15988) b!68613))

(assert (= (and d!53572 (not c!15988)) b!68617))

(assert (= (and d!53572 c!15992) b!68618))

(assert (= (and d!53572 (not c!15992)) b!68615))

(assert (= (and d!53572 c!15991) b!68619))

(assert (= (and d!53572 (not c!15991)) b!68610))

(assert (= (and b!68609 c!15990) b!68612))

(assert (= (and b!68609 (not c!15990)) b!68611))

(assert (= (and b!68609 c!15987) b!68616))

(assert (= (and b!68609 (not c!15987)) b!68608))

(assert (= (and d!53572 c!15989) b!68614))

(assert (= (and d!53572 (not c!15989)) b!68609))

(declare-fun m!70279 () Bool)

(assert (=> b!68613 m!70279))

(declare-fun m!70281 () Bool)

(assert (=> d!53572 m!70281))

(declare-fun m!70283 () Bool)

(assert (=> b!68612 m!70283))

(declare-fun m!70285 () Bool)

(assert (=> b!68618 m!70285))

(assert (=> b!68619 m!70283))

(assert (=> b!68608 m!70283))

(assert (=> b!68581 d!53572))

(declare-fun b!68646 () Bool)

(declare-fun e!37156 () Bool)

(declare-fun e!37154 () Bool)

(assert (=> b!68646 (= e!37156 e!37154)))

(declare-fun res!33235 () Bool)

(assert (=> b!68646 (=> (not res!33235) (not e!37154))))

(declare-fun lt!14028 () Bool)

(assert (=> b!68646 (= res!33235 (not lt!14028))))

(declare-fun b!68647 () Bool)

(declare-fun e!37158 () Bool)

(declare-fun res!33239 () Bool)

(assert (=> b!68647 (= e!37158 res!33239)))

(assert (=> b!68647 true))

(assert (=> b!68647 true))

(declare-fun b!68648 () Bool)

(declare-fun e!37157 () Bool)

(declare-fun lt!14024 () Bool)

(assert (=> b!68648 (= e!37157 (isSimplified!1 (ite lt!14024 (rhs!935 f!3683) (rhs!937 f!3683))))))

(declare-fun b!68649 () Bool)

(declare-fun e!37153 () Bool)

(declare-fun lt!14025 () Bool)

(declare-fun lt!14026 () Bool)

(assert (=> b!68649 (= e!37153 (and lt!14025 lt!14026))))

(declare-fun b!68650 () Bool)

(declare-fun res!33237 () Bool)

(assert (=> b!68650 (= e!37157 res!33237)))

(assert (=> b!68650 true))

(declare-fun b!68651 () Bool)

(declare-fun e!37160 () Bool)

(declare-fun res!33240 () Bool)

(assert (=> b!68651 (= e!37160 res!33240)))

(assert (=> b!68651 true))

(declare-fun b!68652 () Bool)

(assert (=> b!68652 (= e!37160 lt!14025)))

(declare-fun b!68653 () Bool)

(declare-fun e!37159 () Bool)

(declare-fun res!33241 () Bool)

(assert (=> b!68653 (= e!37159 res!33241)))

(assert (=> b!68653 true))

(declare-fun b!68654 () Bool)

(assert (=> b!68654 (= e!37158 lt!14025)))

(declare-fun b!68655 () Bool)

(declare-fun lt!14029 () Bool)

(declare-fun lt!14027 () Bool)

(assert (=> b!68655 (= e!37153 (ite lt!14027 (and lt!14029 lt!14026) (and (not (is-Implies!49 f!3683)) (or (not (is-Not!49 f!3683)) lt!14029))))))

(assert (=> b!68655 (= lt!14029 e!37158)))

(declare-fun c!16004 () Bool)

(assert (=> b!68655 (= c!16004 (or lt!14027 (and (not (is-Implies!49 f!3683)) (is-Not!49 f!3683))))))

(assert (=> b!68655 (= lt!14027 (is-Or!49 f!3683))))

(declare-fun b!68656 () Bool)

(declare-fun e!37155 () Bool)

(assert (=> b!68656 (= e!37155 e!37160)))

(declare-fun c!16006 () Bool)

(declare-fun lt!14030 () Bool)

(assert (=> b!68656 (= c!16006 (or lt!14030 (and (not (is-Implies!49 f!3683)) (is-Not!49 f!3683))))))

(declare-fun b!68657 () Bool)

(assert (=> b!68657 (= e!37154 e!37155)))

(declare-fun res!33236 () Bool)

(assert (=> b!68657 (=> (not res!33236) (not e!37155))))

(assert (=> b!68657 (= res!33236 lt!14030)))

(assert (=> b!68657 (= lt!14030 (is-Or!49 f!3683))))

(declare-fun b!68658 () Bool)

(assert (=> b!68658 (= e!37159 (isSimplified!1 (ite lt!14028 (lhs!935 f!3683) (ite (is-Or!49 f!3683) (lhs!937 f!3683) (f!4189 f!3683)))))))

(declare-fun d!53574 () Bool)

(declare-fun c!16005 () Bool)

(assert (=> d!53574 (= c!16005 lt!14028)))

(assert (=> d!53574 (= lt!14026 e!37157)))

(declare-fun c!16003 () Bool)

(assert (=> d!53574 (= c!16003 e!37156)))

(declare-fun res!33238 () Bool)

(assert (=> d!53574 (=> res!33238 e!37156)))

(assert (=> d!53574 (= res!33238 lt!14024)))

(assert (=> d!53574 (= lt!14024 (and lt!14028 lt!14025))))

(assert (=> d!53574 (= lt!14025 e!37159)))

(declare-fun c!16007 () Bool)

(assert (=> d!53574 (= c!16007 (or lt!14028 (is-Or!49 f!3683) (and (not (is-Implies!49 f!3683)) (is-Not!49 f!3683))))))

(assert (=> d!53574 (= lt!14028 (is-And!49 f!3683))))

(assert (=> d!53574 (= (isSimplified!1 f!3683) e!37153)))

(assert (= (and d!53574 c!16007) b!68658))

(assert (= (and d!53574 (not c!16007)) b!68653))

(assert (= (and d!53574 (not res!33238)) b!68646))

(assert (= (and b!68646 res!33235) b!68657))

(assert (= (and b!68657 res!33236) b!68656))

(assert (= (and b!68656 c!16006) b!68652))

(assert (= (and b!68656 (not c!16006)) b!68651))

(assert (= (and d!53574 c!16003) b!68648))

(assert (= (and d!53574 (not c!16003)) b!68650))

(assert (= (and b!68655 c!16004) b!68654))

(assert (= (and b!68655 (not c!16004)) b!68647))

(assert (= (and d!53574 c!16005) b!68649))

(assert (= (and d!53574 (not c!16005)) b!68655))

(declare-fun m!70287 () Bool)

(assert (=> b!68648 m!70287))

(declare-fun m!70289 () Bool)

(assert (=> b!68658 m!70289))

(assert (=> start!9430 d!53574))

(declare-fun b!68687 () Bool)

(declare-fun e!37178 () Formula!44)

(declare-fun lt!14052 () Formula!44)

(assert (=> b!68687 (= e!37178 lt!14052)))

(declare-fun b!68688 () Bool)

(declare-fun e!37175 () Formula!44)

(declare-fun lt!14054 () Bool)

(assert (=> b!68688 (= e!37175 (simplify!1 (ite lt!14054 (lhs!935 f!3683) (ite (is-Or!49 f!3683) (lhs!937 f!3683) (ite (is-Implies!49 f!3683) (lhs!936 f!3683) (f!4189 f!3683))))))))

(declare-fun b!68689 () Bool)

(declare-fun e!37181 () Formula!44)

(declare-fun lt!14053 () Formula!44)

(assert (=> b!68689 (= e!37181 lt!14053)))

(declare-fun b!68690 () Bool)

(declare-fun e!37176 () Formula!44)

(declare-fun res!33270 () Formula!44)

(assert (=> b!68690 (= e!37176 res!33270)))

(assert (=> b!68690 true))

(declare-fun b!68691 () Bool)

(declare-fun e!37179 () Formula!44)

(declare-fun res!33268 () Formula!44)

(assert (=> b!68691 (= e!37179 res!33268)))

(assert (=> b!68691 true))

(declare-fun b!68692 () Bool)

(declare-fun e!37180 () Formula!44)

(declare-fun lt!14055 () Formula!44)

(assert (=> b!68692 (= e!37180 (And!49 lt!14055 lt!14053))))

(declare-fun b!68693 () Bool)

(declare-fun res!33269 () Formula!44)

(assert (=> b!68693 (= e!37175 res!33269)))

(assert (=> b!68693 true))

(declare-fun b!68694 () Bool)

(declare-fun e!37177 () Formula!44)

(assert (=> b!68694 (= e!37180 e!37177)))

(declare-fun c!16026 () Bool)

(declare-fun lt!14049 () Bool)

(assert (=> b!68694 (= c!16026 lt!14049)))

(declare-fun lt!14057 () Formula!44)

(assert (=> b!68694 (= lt!14057 e!37181)))

(declare-fun c!16027 () Bool)

(assert (=> b!68694 (= c!16027 (or lt!14049 (is-Implies!49 f!3683)))))

(assert (=> b!68694 (= lt!14052 e!37179)))

(declare-fun c!16024 () Bool)

(assert (=> b!68694 (= c!16024 (or lt!14049 (is-Implies!49 f!3683) (is-Not!49 f!3683)))))

(assert (=> b!68694 (= lt!14049 (is-Or!49 f!3683))))

(declare-fun b!68695 () Bool)

(assert (=> b!68695 (= e!37176 (simplify!1 (ite lt!14054 (rhs!935 f!3683) (ite (is-Or!49 f!3683) (rhs!937 f!3683) (rhs!936 f!3683)))))))

(declare-fun lt!14051 () Bool)

(declare-fun lt!14056 () Formula!44)

(declare-fun b!68696 () Bool)

(assert (=> b!68696 (= e!37177 (ite lt!14051 (Or!49 (Not!49 lt!14056) lt!14057) (ite (is-Not!49 f!3683) (Not!49 lt!14056) f!3683)))))

(assert (=> b!68696 (= lt!14056 e!37178)))

(declare-fun c!16022 () Bool)

(assert (=> b!68696 (= c!16022 (or lt!14051 (is-Not!49 f!3683)))))

(assert (=> b!68696 (= lt!14051 (is-Implies!49 f!3683))))

(declare-fun b!68697 () Bool)

(declare-fun res!33271 () Formula!44)

(assert (=> b!68697 (= e!37181 res!33271)))

(assert (=> b!68697 true))

(declare-fun b!68698 () Bool)

(assert (=> b!68698 (= e!37177 (Or!49 lt!14052 lt!14057))))

(declare-fun b!68699 () Bool)

(assert (=> b!68699 (= e!37179 lt!14055)))

(declare-fun d!53576 () Bool)

(declare-fun lt!14050 () Formula!44)

(assert (=> d!53576 (isSimplified!1 lt!14050)))

(assert (=> d!53576 (= lt!14050 e!37180)))

(declare-fun c!16023 () Bool)

(assert (=> d!53576 (= c!16023 lt!14054)))

(assert (=> d!53576 (= lt!14053 e!37176)))

(declare-fun c!16028 () Bool)

(assert (=> d!53576 (= c!16028 (or lt!14054 (is-Or!49 f!3683) (is-Implies!49 f!3683)))))

(assert (=> d!53576 (= lt!14055 e!37175)))

(declare-fun c!16025 () Bool)

(assert (=> d!53576 (= c!16025 (or lt!14054 (is-Or!49 f!3683) (is-Implies!49 f!3683) (is-Not!49 f!3683)))))

(assert (=> d!53576 (= lt!14054 (is-And!49 f!3683))))

(assert (=> d!53576 (= (simplify!1 f!3683) lt!14050)))

(declare-fun b!68700 () Bool)

(declare-fun res!33267 () Formula!44)

(assert (=> b!68700 (= e!37178 res!33267)))

(assert (=> b!68700 true))

(assert (=> b!68700 true))

(assert (= (and d!53576 c!16025) b!68688))

(assert (= (and d!53576 (not c!16025)) b!68693))

(assert (= (and d!53576 c!16028) b!68695))

(assert (= (and d!53576 (not c!16028)) b!68690))

(assert (= (and b!68694 c!16024) b!68699))

(assert (= (and b!68694 (not c!16024)) b!68691))

(assert (= (and b!68694 c!16027) b!68689))

(assert (= (and b!68694 (not c!16027)) b!68697))

(assert (= (and b!68696 c!16022) b!68687))

(assert (= (and b!68696 (not c!16022)) b!68700))

(assert (= (and b!68694 c!16026) b!68698))

(assert (= (and b!68694 (not c!16026)) b!68696))

(assert (= (and d!53576 c!16023) b!68692))

(assert (= (and d!53576 (not c!16023)) b!68694))

(declare-fun m!70291 () Bool)

(assert (=> b!68688 m!70291))

(declare-fun m!70293 () Bool)

(assert (=> b!68695 m!70293))

(declare-fun m!70295 () Bool)

(assert (=> d!53576 m!70295))

(assert (=> b!68583 d!53576))

(declare-fun b!68701 () Bool)

(declare-fun e!37186 () Bool)

(assert (=> b!68701 (= e!37186 (= (simplify!1 (lhs!937 f!3683)) (lhs!937 f!3683)))))

(declare-fun d!53578 () Bool)

(declare-fun e!37185 () Bool)

(assert (=> d!53578 e!37185))

(declare-fun c!16031 () Bool)

(declare-fun lt!14059 () Bool)

(assert (=> d!53578 (= c!16031 (or lt!14059 (is-Literal!43 (lhs!937 f!3683))))))

(declare-fun lt!14060 () Formula!44)

(declare-fun e!37187 () Formula!44)

(assert (=> d!53578 (= lt!14060 e!37187)))

(declare-fun c!16033 () Bool)

(assert (=> d!53578 (= c!16033 (or lt!14059 (is-Literal!43 (lhs!937 f!3683))))))

(declare-fun lt!14061 () Bool)

(declare-fun e!37184 () Bool)

(assert (=> d!53578 (= lt!14061 e!37184)))

(declare-fun c!16034 () Bool)

(assert (=> d!53578 (= c!16034 (or lt!14059 (and (not (is-Literal!43 (lhs!937 f!3683))) (or (is-Implies!49 (lhs!937 f!3683)) (is-Or!49 (lhs!937 f!3683))))))))

(declare-fun lt!14062 () Bool)

(declare-fun e!37183 () Bool)

(assert (=> d!53578 (= lt!14062 e!37183)))

(declare-fun c!16030 () Bool)

(assert (=> d!53578 (= c!16030 (or lt!14059 (not (is-Literal!43 (lhs!937 f!3683)))))))

(assert (=> d!53578 (= lt!14059 (is-And!49 (lhs!937 f!3683)))))

(assert (=> d!53578 (isSimplified!1 (lhs!937 f!3683))))

(assert (=> d!53578 (= (simplifyIsStable!1 (lhs!937 f!3683)) true)))

(declare-fun b!68702 () Bool)

(assert (=> b!68702 (= e!37185 e!37186)))

(declare-fun c!16029 () Bool)

(declare-fun lt!14063 () Bool)

(assert (=> b!68702 (= c!16029 (or lt!14063 (is-Or!49 (lhs!937 f!3683))))))

(declare-fun lt!14058 () Formula!44)

(declare-fun e!37182 () Formula!44)

(assert (=> b!68702 (= lt!14058 e!37182)))

(declare-fun c!16032 () Bool)

(assert (=> b!68702 (= c!16032 (or lt!14063 (is-Or!49 (lhs!937 f!3683))))))

(assert (=> b!68702 (= lt!14063 (is-Implies!49 (lhs!937 f!3683)))))

(declare-fun b!68703 () Bool)

(declare-fun res!33275 () Formula!44)

(assert (=> b!68703 (= e!37187 res!33275)))

(assert (=> b!68703 true))

(declare-fun b!68704 () Bool)

(declare-fun res!33274 () Formula!44)

(assert (=> b!68704 (= e!37182 res!33274)))

(assert (=> b!68704 true))

(assert (=> b!68704 true))

(declare-fun b!68705 () Bool)

(assert (=> b!68705 (= e!37182 (simplify!1 (lhs!937 f!3683)))))

(declare-fun b!68706 () Bool)

(assert (=> b!68706 (= e!37183 (simplifyIsStable!1 (ite lt!14059 (rhs!935 (lhs!937 f!3683)) (ite (is-Implies!49 (lhs!937 f!3683)) (rhs!936 (lhs!937 f!3683)) (ite (is-Or!49 (lhs!937 f!3683)) (rhs!937 (lhs!937 f!3683)) (f!4189 (lhs!937 f!3683)))))))))

(declare-fun b!68707 () Bool)

(assert (=> b!68707 (= e!37185 (= lt!14060 (lhs!937 f!3683)))))

(declare-fun b!68708 () Bool)

(declare-fun res!33272 () Bool)

(assert (=> b!68708 (= e!37184 res!33272)))

(assert (=> b!68708 true))

(declare-fun b!68709 () Bool)

(assert (=> b!68709 (= e!37186 (= lt!14058 (lhs!937 f!3683)))))

(declare-fun b!68710 () Bool)

(declare-fun res!33273 () Bool)

(assert (=> b!68710 (= e!37183 res!33273)))

(assert (=> b!68710 true))

(declare-fun b!68711 () Bool)

(assert (=> b!68711 (= e!37184 (simplifyIsStable!1 (ite lt!14059 (lhs!935 (lhs!937 f!3683)) (ite (is-Implies!49 (lhs!937 f!3683)) (lhs!936 (lhs!937 f!3683)) (lhs!937 (lhs!937 f!3683))))))))

(declare-fun b!68712 () Bool)

(assert (=> b!68712 (= e!37187 (simplify!1 (lhs!937 f!3683)))))

(assert (= (and d!53578 c!16030) b!68706))

(assert (= (and d!53578 (not c!16030)) b!68710))

(assert (= (and d!53578 c!16034) b!68711))

(assert (= (and d!53578 (not c!16034)) b!68708))

(assert (= (and d!53578 c!16033) b!68712))

(assert (= (and d!53578 (not c!16033)) b!68703))

(assert (= (and b!68702 c!16032) b!68705))

(assert (= (and b!68702 (not c!16032)) b!68704))

(assert (= (and b!68702 c!16029) b!68709))

(assert (= (and b!68702 (not c!16029)) b!68701))

(assert (= (and d!53578 c!16031) b!68707))

(assert (= (and d!53578 (not c!16031)) b!68702))

(declare-fun m!70297 () Bool)

(assert (=> b!68706 m!70297))

(declare-fun m!70299 () Bool)

(assert (=> d!53578 m!70299))

(declare-fun m!70301 () Bool)

(assert (=> b!68705 m!70301))

(declare-fun m!70303 () Bool)

(assert (=> b!68711 m!70303))

(assert (=> b!68712 m!70301))

(assert (=> b!68701 m!70301))

(assert (=> b!68582 d!53578))

(push 1)

(assert (not b!68688))

(assert (not b!68619))

(assert (not b!68706))

(assert (not b!68612))

(assert (not b!68695))

(assert (not b!68711))

(assert (not b!68712))

(assert (not d!53572))

(assert (not b!68658))

(assert (not b!68613))

(assert (not b!68648))

(assert (not d!53578))

(assert (not b!68705))

(assert (not d!53576))

(assert (not b!68618))

(assert (not b!68701))

(assert (not b!68608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

