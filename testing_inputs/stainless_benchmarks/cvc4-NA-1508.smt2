; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10236 () Bool)

(assert start!10236)

(declare-fun res!36849 () Bool)

(declare-fun e!40353 () Bool)

(assert (=> start!10236 (=> (not res!36849) (not e!40353))))

(declare-datatypes () ((Formula!77 (Implies!81 (lhs!1344 Formula!77) (rhs!1344 Formula!77)) (And!81 (lhs!1345 Formula!77) (rhs!1345 Formula!77)) (Or!81 (lhs!1346 Formula!77) (rhs!1346 Formula!77)) (Literal!75 (id!4938 (_ BitVec 32))) (Not!81 (f!4682 Formula!77)))))

(declare-fun f!4611 () Formula!77)

(declare-fun isNNF!0 (Formula!77) Bool)

(assert (=> start!10236 (= res!36849 (isNNF!0 f!4611))))

(assert (=> start!10236 e!40353))

(assert (=> start!10236 true))

(declare-fun b!74682 () Bool)

(declare-fun res!36850 () Bool)

(assert (=> b!74682 (=> (not res!36850) (not e!40353))))

(assert (=> b!74682 (= res!36850 (and (not (is-Implies!81 f!4611)) (not (is-And!81 f!4611)) (not (is-Or!81 f!4611)) (is-Literal!75 f!4611)))))

(declare-fun b!74683 () Bool)

(declare-fun nnf!0 (Formula!77) Formula!77)

(assert (=> b!74683 (= e!40353 (not (= (nnf!0 f!4611) f!4611)))))

(assert (= (and start!10236 res!36849) b!74682))

(assert (= (and b!74682 res!36850) b!74683))

(declare-fun m!72986 () Bool)

(assert (=> start!10236 m!72986))

(declare-fun m!72988 () Bool)

(assert (=> b!74683 m!72988))

(push 1)

(assert (not b!74683))

(assert (not start!10236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!74748 () Bool)

(declare-fun e!40401 () Formula!77)

(declare-fun res!36908 () Formula!77)

(assert (=> b!74748 (= e!40401 res!36908)))

(assert (=> b!74748 true))

(declare-fun b!74749 () Bool)

(declare-fun e!40397 () Formula!77)

(declare-fun res!36909 () Formula!77)

(assert (=> b!74749 (= e!40397 res!36909)))

(assert (=> b!74749 true))

(declare-fun b!74750 () Bool)

(declare-fun e!40400 () Formula!77)

(declare-fun lt!16146 () Formula!77)

(assert (=> b!74750 (= e!40400 lt!16146)))

(declare-fun b!74751 () Bool)

(declare-fun e!40395 () Formula!77)

(declare-fun res!36914 () Formula!77)

(assert (=> b!74751 (= e!40395 res!36914)))

(assert (=> b!74751 true))

(declare-fun b!74752 () Bool)

(declare-fun e!40396 () Formula!77)

(declare-fun e!40389 () Formula!77)

(assert (=> b!74752 (= e!40396 e!40389)))

(declare-fun c!18286 () Bool)

(declare-fun lt!16152 () Bool)

(assert (=> b!74752 (= c!18286 lt!16152)))

(declare-fun lt!16151 () Formula!77)

(declare-fun e!40399 () Formula!77)

(assert (=> b!74752 (= lt!16151 e!40399)))

(declare-fun c!18277 () Bool)

(assert (=> b!74752 (= c!18277 (or lt!16152 (is-Implies!81 f!4611) (and (is-Not!81 f!4611) (is-And!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Or!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Implies!81 (f!4682 f!4611)))))))

(declare-fun lt!16161 () Formula!77)

(assert (=> b!74752 (= lt!16161 e!40397)))

(declare-fun c!18275 () Bool)

(assert (=> b!74752 (= c!18275 (or lt!16152 (is-Implies!81 f!4611) (and (is-Not!81 f!4611) (is-And!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Or!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Implies!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Not!81 (f!4682 f!4611)))))))

(assert (=> b!74752 (= lt!16152 (is-Or!81 f!4611))))

(declare-fun b!74753 () Bool)

(declare-fun e!40386 () Formula!77)

(declare-fun e!40392 () Formula!77)

(assert (=> b!74753 (= e!40386 e!40392)))

(declare-fun c!18282 () Bool)

(declare-fun lt!16147 () Bool)

(assert (=> b!74753 (= c!18282 lt!16147)))

(declare-fun lt!16149 () Formula!77)

(declare-fun e!40391 () Formula!77)

(assert (=> b!74753 (= lt!16149 e!40391)))

(declare-fun c!18276 () Bool)

(assert (=> b!74753 (= c!18276 (or lt!16147 (and (is-Not!81 f!4611) (is-Or!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Implies!81 (f!4682 f!4611)))))))

(declare-fun lt!16150 () Formula!77)

(declare-fun e!40390 () Formula!77)

(assert (=> b!74753 (= lt!16150 e!40390)))

(declare-fun c!18280 () Bool)

(assert (=> b!74753 (= c!18280 (or lt!16147 (and (is-Not!81 f!4611) (is-Or!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Implies!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Not!81 (f!4682 f!4611)))))))

(assert (=> b!74753 (= lt!16147 (and (is-Not!81 f!4611) (is-And!81 (f!4682 f!4611))))))

(declare-fun b!74754 () Bool)

(declare-fun e!40393 () Formula!77)

(assert (=> b!74754 (= e!40393 lt!16151)))

(declare-fun b!74755 () Bool)

(declare-fun res!36906 () Formula!77)

(assert (=> b!74755 (= e!40393 res!36906)))

(assert (=> b!74755 true))

(declare-fun b!74756 () Bool)

(declare-fun e!40398 () Formula!77)

(declare-fun res!36910 () Formula!77)

(assert (=> b!74756 (= e!40398 res!36910)))

(assert (=> b!74756 true))

(declare-fun b!74757 () Bool)

(declare-fun res!36913 () Formula!77)

(assert (=> b!74757 (= e!40391 res!36913)))

(assert (=> b!74757 true))

(declare-fun b!74758 () Bool)

(declare-fun lt!16157 () Formula!77)

(declare-fun lt!16160 () Formula!77)

(assert (=> b!74758 (= e!40386 (Implies!81 lt!16157 lt!16160))))

(declare-fun b!74759 () Bool)

(assert (=> b!74759 (= e!40395 lt!16150)))

(declare-fun b!74760 () Bool)

(declare-fun e!40387 () Formula!77)

(assert (=> b!74760 (= e!40392 e!40387)))

(declare-fun c!18273 () Bool)

(declare-fun lt!16158 () Bool)

(assert (=> b!74760 (= c!18273 lt!16158)))

(declare-fun lt!16159 () Formula!77)

(declare-fun e!40394 () Formula!77)

(assert (=> b!74760 (= lt!16159 e!40394)))

(declare-fun c!18283 () Bool)

(assert (=> b!74760 (= c!18283 (or lt!16158 (and (is-Not!81 f!4611) (is-Implies!81 (f!4682 f!4611)))))))

(assert (=> b!74760 (= lt!16146 e!40395)))

(declare-fun c!18287 () Bool)

(assert (=> b!74760 (= c!18287 (or lt!16158 (and (is-Not!81 f!4611) (is-Implies!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Not!81 (f!4682 f!4611)))))))

(assert (=> b!74760 (= lt!16158 (and (is-Not!81 f!4611) (is-Or!81 (f!4682 f!4611))))))

(declare-fun b!74761 () Bool)

(declare-fun res!36916 () Formula!77)

(assert (=> b!74761 (= e!40390 res!36916)))

(assert (=> b!74761 true))

(declare-fun b!74762 () Bool)

(declare-fun lt!16155 () Formula!77)

(assert (=> b!74762 (= e!40397 lt!16155)))

(declare-fun b!74763 () Bool)

(declare-fun res!36907 () Formula!77)

(assert (=> b!74763 (= e!40400 res!36907)))

(assert (=> b!74763 true))

(assert (=> b!74763 true))

(declare-fun b!74764 () Bool)

(declare-fun lt!16153 () Formula!77)

(assert (=> b!74764 (= e!40399 lt!16153)))

(declare-fun b!74765 () Bool)

(declare-fun res!36915 () Formula!77)

(assert (=> b!74765 (= e!40394 res!36915)))

(assert (=> b!74765 true))

(declare-fun b!74766 () Bool)

(assert (=> b!74766 (= e!40391 lt!16160)))

(declare-fun b!74767 () Bool)

(declare-fun res!36911 () Formula!77)

(assert (=> b!74767 (= e!40399 res!36911)))

(assert (=> b!74767 true))

(declare-fun b!74768 () Bool)

(assert (=> b!74768 (= e!40392 (Or!81 lt!16150 lt!16149))))

(declare-fun b!74769 () Bool)

(assert (=> b!74769 (= e!40401 lt!16161)))

(declare-fun b!74770 () Bool)

(assert (=> b!74770 (= e!40396 (And!81 lt!16155 lt!16153))))

(declare-fun d!54815 () Bool)

(declare-fun lt!16144 () Formula!77)

(assert (=> d!54815 (isNNF!0 lt!16144)))

(assert (=> d!54815 (= lt!16144 e!40396)))

(declare-fun c!18285 () Bool)

(declare-fun lt!16148 () Bool)

(assert (=> d!54815 (= c!18285 lt!16148)))

(assert (=> d!54815 (= lt!16153 e!40398)))

(declare-fun c!18272 () Bool)

(assert (=> d!54815 (= c!18272 (or lt!16148 (is-Or!81 f!4611) (is-Implies!81 f!4611) (and (is-Not!81 f!4611) (is-And!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Or!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Implies!81 (f!4682 f!4611)))))))

(declare-fun e!40388 () Formula!77)

(assert (=> d!54815 (= lt!16155 e!40388)))

(declare-fun c!18274 () Bool)

(assert (=> d!54815 (= c!18274 (or lt!16148 (is-Or!81 f!4611) (is-Implies!81 f!4611) (and (is-Not!81 f!4611) (is-And!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Or!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Implies!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Not!81 (f!4682 f!4611)))))))

(assert (=> d!54815 (= lt!16148 (is-And!81 f!4611))))

(assert (=> d!54815 (= (nnf!0 f!4611) lt!16144)))

(declare-fun b!74771 () Bool)

(assert (=> b!74771 (= e!40388 (nnf!0 (ite lt!16148 (lhs!1345 f!4611) (ite (is-Or!81 f!4611) (lhs!1346 f!4611) (ite (is-Implies!81 f!4611) (lhs!1344 f!4611) (ite (and (is-Not!81 f!4611) (is-And!81 (f!4682 f!4611))) (Not!81 (lhs!1345 (f!4682 f!4611))) (ite (and (is-Not!81 f!4611) (is-Or!81 (f!4682 f!4611))) (Not!81 (lhs!1346 (f!4682 f!4611))) (ite (and (is-Not!81 f!4611) (is-Implies!81 (f!4682 f!4611))) (lhs!1344 (f!4682 f!4611)) (f!4682 (f!4682 f!4611))))))))))))

(declare-fun b!74772 () Bool)

(declare-fun res!36912 () Formula!77)

(assert (=> b!74772 (= e!40388 res!36912)))

(assert (=> b!74772 true))

(declare-fun b!74773 () Bool)

(assert (=> b!74773 (= e!40398 (nnf!0 (ite lt!16148 (rhs!1345 f!4611) (ite (is-Or!81 f!4611) (rhs!1346 f!4611) (ite (is-Implies!81 f!4611) (rhs!1344 f!4611) (ite (and (is-Not!81 f!4611) (is-And!81 (f!4682 f!4611))) (Not!81 (rhs!1345 (f!4682 f!4611))) (ite (and (is-Not!81 f!4611) (is-Or!81 (f!4682 f!4611))) (Not!81 (rhs!1346 (f!4682 f!4611))) (Not!81 (rhs!1344 (f!4682 f!4611))))))))))))

(declare-fun b!74774 () Bool)

(assert (=> b!74774 (= e!40394 lt!16149)))

(declare-fun b!74775 () Bool)

(assert (=> b!74775 (= e!40387 (And!81 lt!16146 lt!16159))))

(declare-fun b!74776 () Bool)

(assert (=> b!74776 (= e!40389 e!40386)))

(declare-fun c!18284 () Bool)

(declare-fun lt!16145 () Bool)

(assert (=> b!74776 (= c!18284 lt!16145)))

(assert (=> b!74776 (= lt!16160 e!40393)))

(declare-fun c!18279 () Bool)

(assert (=> b!74776 (= c!18279 (or lt!16145 (and (is-Not!81 f!4611) (is-And!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Or!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Implies!81 (f!4682 f!4611)))))))

(assert (=> b!74776 (= lt!16157 e!40401)))

(declare-fun c!18281 () Bool)

(assert (=> b!74776 (= c!18281 (or lt!16145 (and (is-Not!81 f!4611) (is-And!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Or!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Implies!81 (f!4682 f!4611))) (and (is-Not!81 f!4611) (is-Not!81 (f!4682 f!4611)))))))

(assert (=> b!74776 (= lt!16145 (is-Implies!81 f!4611))))

(declare-fun b!74777 () Bool)

(assert (=> b!74777 (= e!40390 lt!16157)))

(declare-fun b!74778 () Bool)

(declare-fun lt!16156 () Formula!77)

(declare-fun lt!16154 () Bool)

(assert (=> b!74778 (= e!40387 (ite lt!16154 (And!81 lt!16156 lt!16159) (ite (and (is-Not!81 f!4611) (is-Not!81 (f!4682 f!4611))) lt!16156 f!4611)))))

(assert (=> b!74778 (= lt!16156 e!40400)))

(declare-fun c!18278 () Bool)

(assert (=> b!74778 (= c!18278 (or lt!16154 (and (is-Not!81 f!4611) (is-Not!81 (f!4682 f!4611)))))))

(assert (=> b!74778 (= lt!16154 (and (is-Not!81 f!4611) (is-Implies!81 (f!4682 f!4611))))))

(declare-fun b!74779 () Bool)

(assert (=> b!74779 (= e!40389 (Or!81 lt!16161 lt!16151))))

(assert (= (and d!54815 c!18274) b!74771))

(assert (= (and d!54815 (not c!18274)) b!74772))

(assert (= (and d!54815 c!18272) b!74773))

(assert (= (and d!54815 (not c!18272)) b!74756))

(assert (= (and b!74752 c!18275) b!74762))

(assert (= (and b!74752 (not c!18275)) b!74749))

(assert (= (and b!74752 c!18277) b!74764))

(assert (= (and b!74752 (not c!18277)) b!74767))

(assert (= (and b!74776 c!18281) b!74769))

(assert (= (and b!74776 (not c!18281)) b!74748))

(assert (= (and b!74776 c!18279) b!74754))

(assert (= (and b!74776 (not c!18279)) b!74755))

(assert (= (and b!74753 c!18280) b!74777))

(assert (= (and b!74753 (not c!18280)) b!74761))

(assert (= (and b!74753 c!18276) b!74766))

(assert (= (and b!74753 (not c!18276)) b!74757))

(assert (= (and b!74760 c!18287) b!74759))

(assert (= (and b!74760 (not c!18287)) b!74751))

(assert (= (and b!74760 c!18283) b!74774))

(assert (= (and b!74760 (not c!18283)) b!74765))

(assert (= (and b!74778 c!18278) b!74750))

(assert (= (and b!74778 (not c!18278)) b!74763))

(assert (= (and b!74760 c!18273) b!74775))

(assert (= (and b!74760 (not c!18273)) b!74778))

(assert (= (and b!74753 c!18282) b!74768))

(assert (= (and b!74753 (not c!18282)) b!74760))

(assert (= (and b!74776 c!18284) b!74758))

(assert (= (and b!74776 (not c!18284)) b!74753))

(assert (= (and b!74752 c!18286) b!74779))

(assert (= (and b!74752 (not c!18286)) b!74776))

(assert (= (and d!54815 c!18285) b!74770))

(assert (= (and d!54815 (not c!18285)) b!74752))

(declare-fun m!72990 () Bool)

(assert (=> d!54815 m!72990))

(declare-fun m!72992 () Bool)

(assert (=> b!74771 m!72992))

(declare-fun m!72994 () Bool)

(assert (=> b!74773 m!72994))

(assert (=> b!74683 d!54815))

(declare-fun b!74828 () Bool)

(declare-fun e!40435 () Bool)

(declare-fun res!36957 () Bool)

(assert (=> b!74828 (= e!40435 res!36957)))

(assert (=> b!74828 true))

(declare-fun b!74829 () Bool)

(declare-fun e!40432 () Bool)

(declare-fun e!40443 () Formula!77)

(assert (=> b!74829 (= e!40432 (isNNF!0 e!40443))))

(declare-fun c!18311 () Bool)

(declare-fun lt!16184 () Bool)

(assert (=> b!74829 (= c!18311 lt!16184)))

(declare-fun b!74830 () Bool)

(declare-fun res!36952 () Bool)

(assert (=> b!74830 (= e!40432 res!36952)))

(assert (=> b!74830 true))

(declare-fun b!74831 () Bool)

(declare-fun e!40442 () Bool)

(declare-fun lt!16182 () Bool)

(assert (=> b!74831 (= e!40442 lt!16182)))

(declare-fun b!74832 () Bool)

(declare-fun e!40437 () Bool)

(declare-fun e!40433 () Bool)

(assert (=> b!74832 (= e!40437 e!40433)))

(declare-fun c!18317 () Bool)

(declare-fun lt!16181 () Bool)

(assert (=> b!74832 (= c!18317 (or lt!16181 (is-Implies!81 f!4611)))))

(declare-fun lt!16180 () Bool)

(declare-fun e!40430 () Bool)

(assert (=> b!74832 (= lt!16180 e!40430)))

(declare-fun c!18313 () Bool)

(assert (=> b!74832 (= c!18313 (or lt!16181 (is-Implies!81 f!4611)))))

(assert (=> b!74832 (= lt!16181 (is-Or!81 f!4611))))

(declare-fun b!74833 () Bool)

(declare-fun e!40436 () Formula!77)

(assert (=> b!74833 (= e!40436 (rhs!1344 f!4611))))

(declare-fun b!74834 () Bool)

(declare-fun e!40439 () Bool)

(declare-fun lt!16183 () Bool)

(assert (=> b!74834 (= e!40439 lt!16183)))

(declare-fun b!74835 () Bool)

(assert (=> b!74835 (= e!40433 (or (and (is-Not!81 f!4611) (is-Literal!75 (f!4682 f!4611))) (not (is-Not!81 f!4611))))))

(declare-fun b!74836 () Bool)

(assert (=> b!74836 (= e!40437 (and lt!16183 lt!16182))))

(declare-fun b!74837 () Bool)

(assert (=> b!74837 (= e!40443 (rhs!1345 f!4611))))

(declare-fun e!40438 () Bool)

(declare-fun lt!16187 () Bool)

(declare-fun lt!16186 () Bool)

(declare-fun b!74838 () Bool)

(assert (=> b!74838 (= e!40438 (or (and lt!16187 lt!16186) (and (not lt!16187) (is-Implies!81 f!4611) lt!16186)))))

(assert (=> b!74838 (= lt!16186 e!40439)))

(declare-fun c!18308 () Bool)

(assert (=> b!74838 (= c!18308 (or lt!16187 (is-Implies!81 f!4611)))))

(assert (=> b!74838 (= lt!16187 (is-Or!81 f!4611))))

(declare-fun b!74839 () Bool)

(assert (=> b!74839 (= e!40443 e!40436)))

(declare-fun c!18316 () Bool)

(declare-fun e!40434 () Bool)

(assert (=> b!74839 (= c!18316 e!40434)))

(declare-fun res!36956 () Bool)

(assert (=> b!74839 (=> (not res!36956) (not e!40434))))

(declare-fun lt!16188 () Bool)

(assert (=> b!74839 (= res!36956 lt!16188)))

(assert (=> b!74839 (= lt!16188 (is-Or!81 f!4611))))

(declare-fun b!74840 () Bool)

(declare-fun e!40440 () Bool)

(declare-fun res!36955 () Bool)

(assert (=> b!74840 (= e!40440 res!36955)))

(assert (=> b!74840 true))

(declare-fun b!74841 () Bool)

(assert (=> b!74841 (= e!40436 (rhs!1346 f!4611))))

(declare-fun b!74842 () Bool)

(assert (=> b!74842 (= e!40430 lt!16183)))

(declare-fun b!74843 () Bool)

(assert (=> b!74843 (= e!40440 lt!16183)))

(declare-fun b!74844 () Bool)

(declare-fun e!40441 () Bool)

(assert (=> b!74844 (= e!40433 e!40441)))

(declare-fun res!36954 () Bool)

(assert (=> b!74844 (=> (not res!36954) (not e!40441))))

(assert (=> b!74844 (= res!36954 lt!16180)))

(declare-fun b!74845 () Bool)

(declare-fun res!36958 () Bool)

(assert (=> b!74845 (= e!40439 res!36958)))

(assert (=> b!74845 true))

(declare-fun b!74846 () Bool)

(declare-fun res!36953 () Bool)

(assert (=> b!74846 (= e!40430 res!36953)))

(assert (=> b!74846 true))

(declare-fun d!54817 () Bool)

(declare-fun c!18312 () Bool)

(declare-fun lt!16185 () Bool)

(assert (=> d!54817 (= c!18312 lt!16185)))

(assert (=> d!54817 (= lt!16182 e!40432)))

(declare-fun c!18314 () Bool)

(declare-fun e!40431 () Bool)

(assert (=> d!54817 (= c!18314 e!40431)))

(declare-fun res!36960 () Bool)

(assert (=> d!54817 (=> res!36960 e!40431)))

(assert (=> d!54817 (= res!36960 lt!16184)))

(assert (=> d!54817 (= lt!16184 (and lt!16185 lt!16183))))

(assert (=> d!54817 (= lt!16183 e!40435)))

(declare-fun c!18310 () Bool)

(assert (=> d!54817 (= c!18310 (or lt!16185 (is-Or!81 f!4611) (is-Implies!81 f!4611)))))

(assert (=> d!54817 (= lt!16185 (is-And!81 f!4611))))

(assert (=> d!54817 (= (isNNF!0 f!4611) e!40437)))

(declare-fun b!74847 () Bool)

(assert (=> b!74847 (= e!40431 e!40438)))

(declare-fun res!36951 () Bool)

(assert (=> b!74847 (=> (not res!36951) (not e!40438))))

(assert (=> b!74847 (= res!36951 (not lt!16185))))

(declare-fun b!74848 () Bool)

(assert (=> b!74848 (= e!40441 e!40442)))

(declare-fun c!18315 () Bool)

(assert (=> b!74848 (= c!18315 (or (and lt!16181 lt!16180) (and (not lt!16181) (is-Implies!81 f!4611) lt!16180)))))

(declare-fun b!74849 () Bool)

(assert (=> b!74849 (= e!40435 (isNNF!0 (ite lt!16185 (lhs!1345 f!4611) (ite (is-Or!81 f!4611) (lhs!1346 f!4611) (lhs!1344 f!4611)))))))

(declare-fun b!74850 () Bool)

(assert (=> b!74850 (= e!40434 e!40440)))

(declare-fun c!18309 () Bool)

(assert (=> b!74850 (= c!18309 (or lt!16188 (is-Implies!81 f!4611)))))

(declare-fun b!74851 () Bool)

(declare-fun res!36959 () Bool)

(assert (=> b!74851 (= e!40442 res!36959)))

(assert (=> b!74851 true))

(assert (=> b!74851 true))

(assert (= (and d!54817 c!18310) b!74849))

(assert (= (and d!54817 (not c!18310)) b!74828))

(assert (= (and d!54817 (not res!36960)) b!74847))

(assert (= (and b!74847 res!36951) b!74838))

(assert (= (and b!74838 c!18308) b!74834))

(assert (= (and b!74838 (not c!18308)) b!74845))

(assert (= (and b!74839 res!36956) b!74850))

(assert (= (and b!74850 c!18309) b!74843))

(assert (= (and b!74850 (not c!18309)) b!74840))

(assert (= (and b!74839 c!18316) b!74841))

(assert (= (and b!74839 (not c!18316)) b!74833))

(assert (= (and b!74829 c!18311) b!74837))

(assert (= (and b!74829 (not c!18311)) b!74839))

(assert (= (and d!54817 c!18314) b!74829))

(assert (= (and d!54817 (not c!18314)) b!74830))

(assert (= (and b!74832 c!18313) b!74842))

(assert (= (and b!74832 (not c!18313)) b!74846))

(assert (= (and b!74844 res!36954) b!74848))

(assert (= (and b!74848 c!18315) b!74831))

(assert (= (and b!74848 (not c!18315)) b!74851))

(assert (= (and b!74832 c!18317) b!74844))

(assert (= (and b!74832 (not c!18317)) b!74835))

(assert (= (and d!54817 c!18312) b!74836))

(assert (= (and d!54817 (not c!18312)) b!74832))

(declare-fun m!72996 () Bool)

(assert (=> b!74829 m!72996))

(declare-fun m!72998 () Bool)

(assert (=> b!74849 m!72998))

(assert (=> start!10236 d!54817))

(push 1)

(assert (not b!74849))

(assert (not b!74771))

(assert (not b!74829))

(assert (not d!54815))

(assert (not b!74773))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

