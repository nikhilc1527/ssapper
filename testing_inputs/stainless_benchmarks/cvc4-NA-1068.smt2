; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7806 () Bool)

(assert start!7806)

(declare-fun b_free!7259 () Bool)

(declare-fun b_next!38621 () Bool)

(assert (=> start!7806 (= b_free!7259 (not b_next!38621))))

(declare-fun tp!15671 () Bool)

(declare-fun b_and!58355 () Bool)

(assert (=> start!7806 (= tp!15671 b_and!58355)))

(declare-fun b_next!38623 () Bool)

(declare-fun lambda!8686 () Int)

(declare-fun b!55586 () Bool)

(declare-fun A!2049 () Int)

(assert (=> start!7806 (= b_next!38621 (or (and b!55586 (= lambda!8686 A!2049)) b_next!38623))))

(declare-fun bs!27671 () Bool)

(declare-fun b!55583 () Bool)

(assert (= bs!27671 (and b!55583 b!55586)))

(declare-fun lambda!8687 () Int)

(assert (=> bs!27671 (= lambda!8687 lambda!8686)))

(declare-fun b_next!38625 () Bool)

(assert (=> start!7806 (= b_next!38623 (or (and b!55583 (= lambda!8687 A!2049)) b_next!38625))))

(declare-fun bs!27672 () Bool)

(declare-fun b!55581 () Bool)

(assert (= bs!27672 (and b!55581 b!55586)))

(declare-fun lambda!8688 () Int)

(assert (=> bs!27672 (= lambda!8688 lambda!8686)))

(declare-fun bs!27673 () Bool)

(assert (= bs!27673 (and b!55581 b!55583)))

(assert (=> bs!27673 (= lambda!8688 lambda!8687)))

(declare-fun b_next!38627 () Bool)

(assert (=> start!7806 (= b_next!38625 (or (and b!55581 (= lambda!8688 A!2049)) b_next!38627))))

(declare-datatypes () ((Option!297 (Some!293 (v!2040 Object!256)) (None!294)) (Object!256 (BigIntStructure!4) (StructureExt!4 (__x!134 Int)) (OptionStructure!4 (ev!14 Object!256)) (Option!298 (value!4072 Option!297)) (Integer!245 (value!4073 Int)) (Open!256 (value!4074 Int)))))

(declare-fun lt!9916 () Object!256)

(declare-fun tp!15676 () Bool)

(declare-fun e!29300 () Bool)

(declare-fun isStructure!0 (Object!256 Int) Bool)

(assert (=> b!55581 (= e!29300 (and tp!15676 (isStructure!0 lt!9916 lambda!8688)))))

(declare-fun b!55352 () Object!256)

(assert (=> b!55581 (= lt!9916 (ev!14 b!55352))))

(declare-fun b!55582 () Bool)

(declare-fun e!29297 () Bool)

(assert (=> b!55582 (= e!29300 e!29297)))

(declare-fun res!25710 () Bool)

(declare-fun e!29302 () Bool)

(assert (=> start!7806 (=> (not res!25710) (not e!29302))))

(declare-fun s!1791 () Object!256)

(assert (=> start!7806 (= res!25710 (isStructure!0 s!1791 A!2049))))

(assert (=> start!7806 e!29302))

(declare-fun lt!9918 () Object!256)

(assert (=> start!7806 (= lt!9918 s!1791)))

(declare-fun e!29303 () Bool)

(assert (=> start!7806 (and e!29303 (isStructure!0 lt!9918 A!2049))))

(assert (=> start!7806 tp!15671))

(declare-fun lt!9919 () Object!256)

(declare-fun a!665 () Object!256)

(assert (=> start!7806 (= lt!9919 a!665)))

(declare-fun e!29301 () Bool)

(declare-fun dynLambda!905 (Int Object!256) Bool)

(assert (=> start!7806 (and e!29301 (dynLambda!905 A!2049 lt!9919))))

(declare-fun lt!9920 () Object!256)

(assert (=> start!7806 (= lt!9920 b!55352)))

(assert (=> start!7806 (and e!29300 (dynLambda!905 A!2049 lt!9920))))

(declare-fun tp!15673 () Bool)

(declare-fun lt!9915 () Object!256)

(assert (=> b!55583 (= e!29301 (and tp!15673 (isStructure!0 lt!9915 lambda!8687)))))

(assert (=> b!55583 (= lt!9915 (ev!14 a!665))))

(declare-fun b!55584 () Bool)

(declare-fun someLaw!0 (Int Object!256 Object!256 Object!256) Bool)

(assert (=> b!55584 (= e!29302 (not (someLaw!0 A!2049 s!1791 a!665 b!55352)))))

(declare-fun b!55585 () Bool)

(declare-fun e!29298 () Bool)

(declare-fun tp!15672 () Bool)

(assert (=> b!55585 (= e!29298 tp!15672)))

(declare-fun tp!15674 () Bool)

(declare-fun lt!9917 () Object!256)

(assert (=> b!55586 (= e!29303 (and tp!15674 (isStructure!0 lt!9917 lambda!8686)))))

(assert (=> b!55586 (= lt!9917 (ev!14 s!1791))))

(declare-fun b!55587 () Bool)

(declare-fun e!29299 () Bool)

(assert (=> b!55587 (= e!29303 e!29299)))

(declare-fun b!55588 () Bool)

(declare-fun res!25709 () Bool)

(assert (=> b!55588 (=> (not res!25709) (not e!29302))))

(assert (=> b!55588 (= res!25709 (dynLambda!905 A!2049 a!665))))

(declare-fun b!55589 () Bool)

(declare-fun tp!15675 () Bool)

(assert (=> b!55589 (= e!29297 tp!15675)))

(declare-fun b!55590 () Bool)

(declare-fun tp!15677 () Bool)

(assert (=> b!55590 (= e!29299 tp!15677)))

(declare-fun b!55591 () Bool)

(assert (=> b!55591 (= e!29301 e!29298)))

(declare-fun b!55592 () Bool)

(declare-fun res!25708 () Bool)

(assert (=> b!55592 (=> (not res!25708) (not e!29302))))

(assert (=> b!55592 (= res!25708 (dynLambda!905 A!2049 b!55352))))

(assert (= (and start!7806 res!25710) b!55588))

(assert (= (and b!55588 res!25709) b!55592))

(assert (= (and b!55592 res!25708) b!55584))

(assert (= (and start!7806 (is-OptionStructure!4 s!1791)) b!55586))

(assert (= (and b!55587 (is-Some!293 (value!4072 s!1791))) b!55590))

(assert (= (and start!7806 (is-Option!298 s!1791)) b!55587))

(assert (= (and start!7806 (is-OptionStructure!4 a!665)) b!55583))

(assert (= (and b!55591 (is-Some!293 (value!4072 a!665))) b!55585))

(assert (= (and start!7806 (is-Option!298 a!665)) b!55591))

(assert (= (and start!7806 (is-OptionStructure!4 b!55352)) b!55581))

(assert (= (and b!55582 (is-Some!293 (value!4072 b!55352))) b!55589))

(assert (= (and start!7806 (is-Option!298 b!55352)) b!55582))

(declare-fun b_lambda!14685 () Bool)

(assert (=> (not b_lambda!14685) (not start!7806)))

(declare-fun t!46908 () Bool)

(declare-fun tb!45907 () Bool)

(assert (=> (and start!7806 (= A!2049 A!2049) t!46908) tb!45907))

(declare-fun result!46245 () Bool)

(assert (=> tb!45907 (= result!46245 true)))

(assert (=> start!7806 t!46908))

(declare-fun b_and!58357 () Bool)

(assert (= b_and!58355 (and (=> t!46908 result!46245) b_and!58357)))

(declare-fun b_lambda!14687 () Bool)

(assert (=> (not b_lambda!14687) (not start!7806)))

(declare-fun t!46910 () Bool)

(declare-fun tb!45909 () Bool)

(assert (=> (and start!7806 (= A!2049 A!2049) t!46910) tb!45909))

(declare-fun result!46247 () Bool)

(assert (=> tb!45909 (= result!46247 true)))

(assert (=> start!7806 t!46910))

(declare-fun b_and!58359 () Bool)

(assert (= b_and!58357 (and (=> t!46910 result!46247) b_and!58359)))

(declare-fun b_lambda!14689 () Bool)

(assert (=> (not b_lambda!14689) (not b!55588)))

(declare-fun t!46912 () Bool)

(declare-fun tb!45911 () Bool)

(assert (=> (and start!7806 (= A!2049 A!2049) t!46912) tb!45911))

(declare-fun result!46249 () Bool)

(assert (=> tb!45911 (= result!46249 true)))

(assert (=> b!55588 t!46912))

(declare-fun b_and!58361 () Bool)

(assert (= b_and!58359 (and (=> t!46912 result!46249) b_and!58361)))

(declare-fun b_lambda!14691 () Bool)

(assert (=> (not b_lambda!14691) (not b!55592)))

(declare-fun t!46914 () Bool)

(declare-fun tb!45913 () Bool)

(assert (=> (and start!7806 (= A!2049 A!2049) t!46914) tb!45913))

(declare-fun result!46251 () Bool)

(assert (=> tb!45913 (= result!46251 true)))

(assert (=> b!55592 t!46914))

(declare-fun b_and!58363 () Bool)

(assert (= b_and!58361 (and (=> t!46914 result!46251) b_and!58363)))

(declare-fun m!60276 () Bool)

(assert (=> b!55581 m!60276))

(declare-fun m!60278 () Bool)

(assert (=> b!55583 m!60278))

(declare-fun m!60280 () Bool)

(assert (=> b!55588 m!60280))

(declare-fun m!60282 () Bool)

(assert (=> b!55586 m!60282))

(declare-fun m!60284 () Bool)

(assert (=> b!55584 m!60284))

(declare-fun m!60286 () Bool)

(assert (=> start!7806 m!60286))

(declare-fun m!60288 () Bool)

(assert (=> start!7806 m!60288))

(declare-fun m!60290 () Bool)

(assert (=> start!7806 m!60290))

(declare-fun m!60292 () Bool)

(assert (=> start!7806 m!60292))

(declare-fun m!60294 () Bool)

(assert (=> b!55592 m!60294))

(push 1)

(assert (not b_lambda!14689))

(assert (not b_next!38627))

(assert (not b_lambda!14685))

(assert (not b!55585))

(assert (not b_lambda!14687))

(assert (not b_lambda!14691))

(assert (not b!55589))

(assert (not b!55584))

(assert (not start!7806))

(assert (not b!55581))

(assert b_and!58363)

(assert (not b!55590))

(assert (not b!55583))

(assert (not b!55586))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58363)

(assert (not b_next!38627))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!14693 () Bool)

(assert (= b_lambda!14691 (or (and b!55586 (= lambda!8686 A!2049)) (and b!55583 (= lambda!8687 A!2049)) (and b!55581 (= lambda!8688 A!2049)) (and start!7806 b_free!7259) b_lambda!14693)))

(declare-fun bs!27674 () Bool)

(declare-fun d!45366 () Bool)

(assert (= bs!27674 (and d!45366 b!55586)))

(assert (=> bs!27674 (= (dynLambda!905 lambda!8686 b!55352) true)))

(assert (=> (and b!55586 (= lambda!8686 A!2049) b!55592) d!45366))

(declare-fun bs!27675 () Bool)

(declare-fun d!45368 () Bool)

(assert (= bs!27675 (and d!45368 b!55583)))

(assert (=> bs!27675 (= (dynLambda!905 lambda!8687 b!55352) true)))

(assert (=> (and b!55583 (= lambda!8687 A!2049) b!55592) d!45368))

(declare-fun bs!27676 () Bool)

(declare-fun d!45370 () Bool)

(assert (= bs!27676 (and d!45370 b!55581)))

(assert (=> bs!27676 (= (dynLambda!905 lambda!8688 b!55352) true)))

(assert (=> (and b!55581 (= lambda!8688 A!2049) b!55592) d!45370))

(declare-fun b_lambda!14695 () Bool)

(assert (= b_lambda!14685 (or (and b!55586 (= lambda!8686 A!2049)) (and b!55583 (= lambda!8687 A!2049)) (and b!55581 (= lambda!8688 A!2049)) (and start!7806 b_free!7259) b_lambda!14695)))

(declare-fun bs!27677 () Bool)

(declare-fun d!45372 () Bool)

(assert (= bs!27677 (and d!45372 b!55586)))

(assert (=> bs!27677 (= (dynLambda!905 lambda!8686 lt!9919) true)))

(assert (=> (and b!55586 (= lambda!8686 A!2049) start!7806) d!45372))

(declare-fun bs!27678 () Bool)

(declare-fun d!45374 () Bool)

(assert (= bs!27678 (and d!45374 b!55583)))

(assert (=> bs!27678 (= (dynLambda!905 lambda!8687 lt!9919) true)))

(assert (=> (and b!55583 (= lambda!8687 A!2049) start!7806) d!45374))

(declare-fun bs!27679 () Bool)

(declare-fun d!45376 () Bool)

(assert (= bs!27679 (and d!45376 b!55581)))

(assert (=> bs!27679 (= (dynLambda!905 lambda!8688 lt!9919) true)))

(assert (=> (and b!55581 (= lambda!8688 A!2049) start!7806) d!45376))

(declare-fun b_lambda!14697 () Bool)

(assert (= b_lambda!14687 (or (and b!55586 (= lambda!8686 A!2049)) (and b!55583 (= lambda!8687 A!2049)) (and b!55581 (= lambda!8688 A!2049)) (and start!7806 b_free!7259) b_lambda!14697)))

(declare-fun bs!27680 () Bool)

(declare-fun d!45378 () Bool)

(assert (= bs!27680 (and d!45378 b!55586)))

(assert (=> bs!27680 (= (dynLambda!905 lambda!8686 lt!9920) true)))

(assert (=> (and b!55586 (= lambda!8686 A!2049) start!7806) d!45378))

(declare-fun bs!27681 () Bool)

(declare-fun d!45380 () Bool)

(assert (= bs!27681 (and d!45380 b!55583)))

(assert (=> bs!27681 (= (dynLambda!905 lambda!8687 lt!9920) true)))

(assert (=> (and b!55583 (= lambda!8687 A!2049) start!7806) d!45380))

(declare-fun bs!27682 () Bool)

(declare-fun d!45382 () Bool)

(assert (= bs!27682 (and d!45382 b!55581)))

(assert (=> bs!27682 (= (dynLambda!905 lambda!8688 lt!9920) true)))

(assert (=> (and b!55581 (= lambda!8688 A!2049) start!7806) d!45382))

(declare-fun b_lambda!14699 () Bool)

(assert (= b_lambda!14689 (or (and b!55586 (= lambda!8686 A!2049)) (and b!55583 (= lambda!8687 A!2049)) (and b!55581 (= lambda!8688 A!2049)) (and start!7806 b_free!7259) b_lambda!14699)))

(declare-fun bs!27683 () Bool)

(declare-fun d!45384 () Bool)

(assert (= bs!27683 (and d!45384 b!55586)))

(assert (=> bs!27683 (= (dynLambda!905 lambda!8686 a!665) true)))

(assert (=> (and b!55586 (= lambda!8686 A!2049) b!55588) d!45384))

(declare-fun bs!27684 () Bool)

(declare-fun d!45386 () Bool)

(assert (= bs!27684 (and d!45386 b!55583)))

(assert (=> bs!27684 (= (dynLambda!905 lambda!8687 a!665) true)))

(assert (=> (and b!55583 (= lambda!8687 A!2049) b!55588) d!45386))

(declare-fun bs!27685 () Bool)

(declare-fun d!45388 () Bool)

(assert (= bs!27685 (and d!45388 b!55581)))

(assert (=> bs!27685 (= (dynLambda!905 lambda!8688 a!665) true)))

(assert (=> (and b!55581 (= lambda!8688 A!2049) b!55588) d!45388))

(push 1)

(assert (not b_lambda!14699))

(assert (not b_next!38627))

(assert (not b_lambda!14693))

(assert (not b!55585))

(assert (not b!55589))

(assert (not b!55584))

(assert (not start!7806))

(assert (not b_lambda!14695))

(assert (not b!55581))

(assert b_and!58363)

(assert (not b_lambda!14697))

(assert (not b!55590))

(assert (not b!55583))

(assert (not b!55586))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58363)

(assert (not b_next!38627))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!27686 () Bool)

(declare-fun b!55598 () Bool)

(assert (= bs!27686 (and b!55598 b!55586)))

(declare-fun lambda!8691 () Int)

(assert (=> bs!27686 (= lambda!8691 lambda!8686)))

(declare-fun bs!27687 () Bool)

(assert (= bs!27687 (and b!55598 b!55583)))

(assert (=> bs!27687 (= lambda!8691 lambda!8687)))

(declare-fun bs!27688 () Bool)

(assert (= bs!27688 (and b!55598 b!55581)))

(assert (=> bs!27688 (= lambda!8691 lambda!8688)))

(declare-fun b_next!38629 () Bool)

(assert (=> start!7806 (= b_next!38627 (or (and b!55598 (= lambda!8691 A!2049)) b_next!38629))))

(declare-fun d!45390 () Bool)

(declare-fun res!25715 () Bool)

(declare-fun e!29306 () Bool)

(assert (=> d!45390 (=> res!25715 e!29306)))

(declare-fun isBigIntStructure!0 (Object!256) Bool)

(assert (=> d!45390 (= res!25715 (isBigIntStructure!0 lt!9916))))

(assert (=> d!45390 (= (isStructure!0 lt!9916 lambda!8688) e!29306)))

(declare-fun b!55597 () Bool)

(declare-fun res!25716 () Bool)

(assert (=> b!55597 (=> res!25716 e!29306)))

(declare-fun isStructureExt!0 (Object!256 Int) Bool)

(assert (=> b!55597 (= res!25716 (isStructureExt!0 lt!9916 lambda!8688))))

(declare-fun isOptionStructure!0 (Object!256 Int) Bool)

(assert (=> b!55598 (= e!29306 (isOptionStructure!0 lt!9916 lambda!8691))))

(assert (= (and d!45390 (not res!25715)) b!55597))

(assert (= (and b!55597 (not res!25716)) b!55598))

(declare-fun m!60296 () Bool)

(assert (=> d!45390 m!60296))

(declare-fun m!60298 () Bool)

(assert (=> b!55597 m!60298))

(declare-fun m!60300 () Bool)

(assert (=> b!55598 m!60300))

(assert (=> b!55581 d!45390))

(declare-fun bs!27689 () Bool)

(declare-fun b!55600 () Bool)

(assert (= bs!27689 (and b!55600 b!55586)))

(declare-fun lambda!8692 () Int)

(assert (=> bs!27689 (= lambda!8692 lambda!8686)))

(declare-fun bs!27690 () Bool)

(assert (= bs!27690 (and b!55600 b!55583)))

(assert (=> bs!27690 (= lambda!8692 lambda!8687)))

(declare-fun bs!27691 () Bool)

(assert (= bs!27691 (and b!55600 b!55581)))

(assert (=> bs!27691 (= lambda!8692 lambda!8688)))

(declare-fun bs!27692 () Bool)

(assert (= bs!27692 (and b!55600 b!55598)))

(assert (=> bs!27692 (= lambda!8692 lambda!8691)))

(declare-fun b_next!38631 () Bool)

(assert (=> start!7806 (= b_next!38629 (or (and b!55600 (= lambda!8692 A!2049)) b_next!38631))))

(declare-fun d!45392 () Bool)

(declare-fun res!25717 () Bool)

(declare-fun e!29307 () Bool)

(assert (=> d!45392 (=> res!25717 e!29307)))

(assert (=> d!45392 (= res!25717 (isBigIntStructure!0 lt!9915))))

(assert (=> d!45392 (= (isStructure!0 lt!9915 lambda!8687) e!29307)))

(declare-fun b!55599 () Bool)

(declare-fun res!25718 () Bool)

(assert (=> b!55599 (=> res!25718 e!29307)))

(assert (=> b!55599 (= res!25718 (isStructureExt!0 lt!9915 lambda!8687))))

(assert (=> b!55600 (= e!29307 (isOptionStructure!0 lt!9915 lambda!8692))))

(assert (= (and d!45392 (not res!25717)) b!55599))

(assert (= (and b!55599 (not res!25718)) b!55600))

(declare-fun m!60302 () Bool)

(assert (=> d!45392 m!60302))

(declare-fun m!60304 () Bool)

(assert (=> b!55599 m!60304))

(declare-fun m!60306 () Bool)

(assert (=> b!55600 m!60306))

(assert (=> b!55583 d!45392))

(declare-fun bs!27693 () Bool)

(declare-fun b!55602 () Bool)

(assert (= bs!27693 (and b!55602 b!55600)))

(declare-fun lambda!8693 () Int)

(assert (=> bs!27693 (= lambda!8693 lambda!8692)))

(declare-fun bs!27694 () Bool)

(assert (= bs!27694 (and b!55602 b!55583)))

(assert (=> bs!27694 (= lambda!8693 lambda!8687)))

(declare-fun bs!27695 () Bool)

(assert (= bs!27695 (and b!55602 b!55598)))

(assert (=> bs!27695 (= lambda!8693 lambda!8691)))

(declare-fun bs!27696 () Bool)

(assert (= bs!27696 (and b!55602 b!55586)))

(assert (=> bs!27696 (= lambda!8693 lambda!8686)))

(declare-fun bs!27697 () Bool)

(assert (= bs!27697 (and b!55602 b!55581)))

(assert (=> bs!27697 (= lambda!8693 lambda!8688)))

(declare-fun b_next!38633 () Bool)

(assert (=> start!7806 (= b_next!38631 (or (and b!55602 (= lambda!8693 A!2049)) b_next!38633))))

(declare-fun d!45394 () Bool)

(declare-fun res!25719 () Bool)

(declare-fun e!29308 () Bool)

(assert (=> d!45394 (=> res!25719 e!29308)))

(assert (=> d!45394 (= res!25719 (isBigIntStructure!0 lt!9917))))

(assert (=> d!45394 (= (isStructure!0 lt!9917 lambda!8686) e!29308)))

(declare-fun b!55601 () Bool)

(declare-fun res!25720 () Bool)

(assert (=> b!55601 (=> res!25720 e!29308)))

(assert (=> b!55601 (= res!25720 (isStructureExt!0 lt!9917 lambda!8686))))

(assert (=> b!55602 (= e!29308 (isOptionStructure!0 lt!9917 lambda!8693))))

(assert (= (and d!45394 (not res!25719)) b!55601))

(assert (= (and b!55601 (not res!25720)) b!55602))

(declare-fun m!60308 () Bool)

(assert (=> d!45394 m!60308))

(declare-fun m!60310 () Bool)

(assert (=> b!55601 m!60310))

(declare-fun m!60312 () Bool)

(assert (=> b!55602 m!60312))

(assert (=> b!55586 d!45394))

(declare-fun bs!27698 () Bool)

(declare-fun b!55604 () Bool)

(assert (= bs!27698 (and b!55604 b!55600)))

(declare-fun lambda!8694 () Int)

(assert (=> bs!27698 (= lambda!8694 lambda!8692)))

(declare-fun bs!27699 () Bool)

(assert (= bs!27699 (and b!55604 b!55583)))

(assert (=> bs!27699 (= lambda!8694 lambda!8687)))

(declare-fun bs!27700 () Bool)

(assert (= bs!27700 (and b!55604 b!55598)))

(assert (=> bs!27700 (= lambda!8694 lambda!8691)))

(declare-fun bs!27701 () Bool)

(assert (= bs!27701 (and b!55604 b!55602)))

(assert (=> bs!27701 (= lambda!8694 lambda!8693)))

(declare-fun bs!27702 () Bool)

(assert (= bs!27702 (and b!55604 b!55586)))

(assert (=> bs!27702 (= lambda!8694 lambda!8686)))

(declare-fun bs!27703 () Bool)

(assert (= bs!27703 (and b!55604 b!55581)))

(assert (=> bs!27703 (= lambda!8694 lambda!8688)))

(declare-fun b_next!38635 () Bool)

(assert (=> start!7806 (= b_next!38633 (or (and b!55604 (= lambda!8694 A!2049)) b_next!38635))))

(declare-fun d!45396 () Bool)

(declare-fun res!25721 () Bool)

(declare-fun e!29309 () Bool)

(assert (=> d!45396 (=> res!25721 e!29309)))

(assert (=> d!45396 (= res!25721 (isBigIntStructure!0 s!1791))))

(assert (=> d!45396 (= (isStructure!0 s!1791 A!2049) e!29309)))

(declare-fun b!55603 () Bool)

(declare-fun res!25722 () Bool)

(assert (=> b!55603 (=> res!25722 e!29309)))

(assert (=> b!55603 (= res!25722 (isStructureExt!0 s!1791 A!2049))))

(assert (=> b!55604 (= e!29309 (isOptionStructure!0 s!1791 lambda!8694))))

(assert (= (and d!45396 (not res!25721)) b!55603))

(assert (= (and b!55603 (not res!25722)) b!55604))

(declare-fun m!60314 () Bool)

(assert (=> d!45396 m!60314))

(declare-fun m!60316 () Bool)

(assert (=> b!55603 m!60316))

(declare-fun m!60318 () Bool)

(assert (=> b!55604 m!60318))

(assert (=> start!7806 d!45396))

(declare-fun bs!27704 () Bool)

(declare-fun b!55606 () Bool)

(assert (= bs!27704 (and b!55606 b!55600)))

(declare-fun lambda!8695 () Int)

(assert (=> bs!27704 (= lambda!8695 lambda!8692)))

(declare-fun bs!27705 () Bool)

(assert (= bs!27705 (and b!55606 b!55583)))

(assert (=> bs!27705 (= lambda!8695 lambda!8687)))

(declare-fun bs!27706 () Bool)

(assert (= bs!27706 (and b!55606 b!55604)))

(assert (=> bs!27706 (= lambda!8695 lambda!8694)))

(declare-fun bs!27707 () Bool)

(assert (= bs!27707 (and b!55606 b!55598)))

(assert (=> bs!27707 (= lambda!8695 lambda!8691)))

(declare-fun bs!27708 () Bool)

(assert (= bs!27708 (and b!55606 b!55602)))

(assert (=> bs!27708 (= lambda!8695 lambda!8693)))

(declare-fun bs!27709 () Bool)

(assert (= bs!27709 (and b!55606 b!55586)))

(assert (=> bs!27709 (= lambda!8695 lambda!8686)))

(declare-fun bs!27710 () Bool)

(assert (= bs!27710 (and b!55606 b!55581)))

(assert (=> bs!27710 (= lambda!8695 lambda!8688)))

(declare-fun b_next!38637 () Bool)

(assert (=> start!7806 (= b_next!38635 (or (and b!55606 (= lambda!8695 A!2049)) b_next!38637))))

(declare-fun d!45398 () Bool)

(declare-fun res!25723 () Bool)

(declare-fun e!29310 () Bool)

(assert (=> d!45398 (=> res!25723 e!29310)))

(assert (=> d!45398 (= res!25723 (isBigIntStructure!0 lt!9918))))

(assert (=> d!45398 (= (isStructure!0 lt!9918 A!2049) e!29310)))

(declare-fun b!55605 () Bool)

(declare-fun res!25724 () Bool)

(assert (=> b!55605 (=> res!25724 e!29310)))

(assert (=> b!55605 (= res!25724 (isStructureExt!0 lt!9918 A!2049))))

(assert (=> b!55606 (= e!29310 (isOptionStructure!0 lt!9918 lambda!8695))))

(assert (= (and d!45398 (not res!25723)) b!55605))

(assert (= (and b!55605 (not res!25724)) b!55606))

(declare-fun m!60320 () Bool)

(assert (=> d!45398 m!60320))

(declare-fun m!60322 () Bool)

(assert (=> b!55605 m!60322))

(declare-fun m!60324 () Bool)

(assert (=> b!55606 m!60324))

(assert (=> start!7806 d!45398))

(declare-fun bs!27711 () Bool)

(declare-fun b!55627 () Bool)

(assert (= bs!27711 (and b!55627 b!55600)))

(declare-fun lambda!8702 () Int)

(assert (=> bs!27711 (= lambda!8702 lambda!8692)))

(declare-fun bs!27712 () Bool)

(assert (= bs!27712 (and b!55627 b!55583)))

(assert (=> bs!27712 (= lambda!8702 lambda!8687)))

(declare-fun bs!27713 () Bool)

(assert (= bs!27713 (and b!55627 b!55604)))

(assert (=> bs!27713 (= lambda!8702 lambda!8694)))

(declare-fun bs!27714 () Bool)

(assert (= bs!27714 (and b!55627 b!55598)))

(assert (=> bs!27714 (= lambda!8702 lambda!8691)))

(declare-fun bs!27715 () Bool)

(assert (= bs!27715 (and b!55627 b!55602)))

(assert (=> bs!27715 (= lambda!8702 lambda!8693)))

(declare-fun bs!27716 () Bool)

(assert (= bs!27716 (and b!55627 b!55586)))

(assert (=> bs!27716 (= lambda!8702 lambda!8686)))

(declare-fun bs!27717 () Bool)

(assert (= bs!27717 (and b!55627 b!55581)))

(assert (=> bs!27717 (= lambda!8702 lambda!8688)))

(declare-fun bs!27718 () Bool)

(assert (= bs!27718 (and b!55627 b!55606)))

(assert (=> bs!27718 (= lambda!8702 lambda!8695)))

(declare-fun b_next!38639 () Bool)

(assert (=> start!7806 (= b_next!38637 (or (and b!55627 (= lambda!8702 A!2049)) b_next!38639))))

(declare-fun b!55623 () Bool)

(declare-fun e!29323 () Bool)

(declare-fun someLaw!4 (Int Object!256 Object!256 Object!256) Bool)

(assert (=> b!55623 (= e!29323 (someLaw!4 A!2049 s!1791 a!665 b!55352))))

(declare-fun b!55624 () Bool)

(declare-fun res!25737 () Bool)

(declare-fun e!29322 () Bool)

(assert (=> b!55624 (=> (not res!25737) (not e!29322))))

(declare-fun lt!9925 () Bool)

(assert (=> b!55624 (= res!25737 lt!9925)))

(declare-fun someLaw!7 (Object!256 Object!256 Object!256) Bool)

(assert (=> b!55624 (= lt!9925 (someLaw!7 s!1791 a!665 b!55352))))

(declare-fun doSomething!1 (Int Object!256 Object!256 Object!256) Object!256)

(assert (=> b!55624 (= lt!9925 (= (doSomething!1 A!2049 s!1791 a!665 b!55352) (doSomething!1 A!2049 s!1791 b!55352 a!665)))))

(declare-fun b!55625 () Bool)

(declare-fun e!29325 () Bool)

(assert (=> b!55625 (= e!29325 e!29323)))

(declare-fun c!12065 () Bool)

(assert (=> b!55625 (= c!12065 (isStructureExt!0 s!1791 A!2049))))

(declare-fun d!45400 () Bool)

(assert (=> d!45400 e!29322))

(declare-fun res!25735 () Bool)

(assert (=> d!45400 (=> (not res!25735) (not e!29322))))

(declare-fun lt!9926 () Bool)

(assert (=> d!45400 (= res!25735 lt!9926)))

(assert (=> d!45400 (= lt!9926 e!29325)))

(declare-fun c!12064 () Bool)

(assert (=> d!45400 (= c!12064 (isBigIntStructure!0 s!1791))))

(assert (=> d!45400 (= (someLaw!0 A!2049 s!1791 a!665 b!55352) lt!9926)))

(declare-fun b!55626 () Bool)

(declare-fun someLaw!1 (Object!256 Int Int) Bool)

(assert (=> b!55626 (= e!29325 (someLaw!1 s!1791 (value!4073 a!665) (value!4073 b!55352)))))

(assert (=> b!55626 (is-Integer!245 b!55352)))

(assert (=> b!55626 (is-Integer!245 a!665)))

(declare-fun someLaw!2 (Int Object!256 Option!297 Option!297) Bool)

(assert (=> b!55627 (= e!29323 (someLaw!2 lambda!8702 s!1791 (value!4072 a!665) (value!4072 b!55352)))))

(declare-fun e!29321 () Bool)

(assert (=> b!55627 e!29321))

(declare-fun res!25738 () Bool)

(assert (=> b!55627 (=> (not res!25738) (not e!29321))))

(assert (=> b!55627 (= res!25738 (is-Option!298 b!55352))))

(declare-fun e!29324 () Bool)

(assert (=> b!55627 e!29324))

(declare-fun res!25736 () Bool)

(assert (=> b!55627 (=> (not res!25736) (not e!29324))))

(assert (=> b!55627 (= res!25736 (is-Option!298 a!665))))

(declare-fun b!55628 () Bool)

(declare-fun someLaw!8 (Object!256 Object!256 Object!256) Bool)

(assert (=> b!55628 (= e!29322 (= true (someLaw!8 s!1791 a!665 b!55352)))))

(declare-fun b!55629 () Bool)

(declare-fun isOption!13 (Option!297 Int) Bool)

(assert (=> b!55629 (= e!29321 (isOption!13 (value!4072 b!55352) lambda!8702))))

(declare-fun b!55630 () Bool)

(assert (=> b!55630 (= e!29324 (isOption!13 (value!4072 a!665) lambda!8702))))

(assert (= (and b!55627 res!25736) b!55630))

(assert (= (and b!55627 res!25738) b!55629))

(assert (= (and b!55625 c!12065) b!55623))

(assert (= (and b!55625 (not c!12065)) b!55627))

(assert (= (and d!45400 c!12064) b!55626))

(assert (= (and d!45400 (not c!12064)) b!55625))

(assert (= (and d!45400 res!25735) b!55624))

(assert (= (and b!55624 res!25737) b!55628))

(declare-fun m!60326 () Bool)

(assert (=> b!55628 m!60326))

(declare-fun m!60328 () Bool)

(assert (=> b!55623 m!60328))

(assert (=> d!45400 m!60314))

(declare-fun m!60330 () Bool)

(assert (=> b!55627 m!60330))

(assert (=> b!55625 m!60316))

(declare-fun m!60332 () Bool)

(assert (=> b!55624 m!60332))

(declare-fun m!60334 () Bool)

(assert (=> b!55624 m!60334))

(declare-fun m!60336 () Bool)

(assert (=> b!55624 m!60336))

(declare-fun m!60338 () Bool)

(assert (=> b!55629 m!60338))

(declare-fun m!60340 () Bool)

(assert (=> b!55630 m!60340))

(declare-fun m!60342 () Bool)

(assert (=> b!55626 m!60342))

(assert (=> b!55584 d!45400))

(declare-fun b!55639 () Bool)

(declare-fun e!29330 () Bool)

(declare-fun lt!9929 () Object!256)

(declare-fun tp!15683 () Bool)

(assert (=> b!55639 (= e!29330 (and tp!15683 (isStructure!0 lt!9929 lambda!8688)))))

(assert (=> b!55639 (= lt!9929 (ev!14 (ev!14 b!55352)))))

(declare-fun b!55641 () Bool)

(declare-fun e!29331 () Bool)

(declare-fun tp!15682 () Bool)

(assert (=> b!55641 (= e!29331 tp!15682)))

(declare-fun b!55640 () Bool)

(assert (=> b!55640 (= e!29330 e!29331)))

(assert (=> b!55581 (= tp!15676 e!29330)))

(assert (= (and b!55581 (is-OptionStructure!4 (ev!14 b!55352))) b!55639))

(assert (= (and b!55640 (is-Some!293 (value!4072 (ev!14 b!55352)))) b!55641))

(assert (= (and b!55581 (is-Option!298 (ev!14 b!55352))) b!55640))

(declare-fun m!60344 () Bool)

(assert (=> b!55639 m!60344))

(declare-fun e!29332 () Bool)

(declare-fun tp!15685 () Bool)

(declare-fun b!55642 () Bool)

(declare-fun lt!9930 () Object!256)

(assert (=> b!55642 (= e!29332 (and tp!15685 (isStructure!0 lt!9930 lambda!8687)))))

(assert (=> b!55642 (= lt!9930 (ev!14 (ev!14 a!665)))))

(declare-fun b!55644 () Bool)

(declare-fun e!29333 () Bool)

(declare-fun tp!15684 () Bool)

(assert (=> b!55644 (= e!29333 tp!15684)))

(declare-fun b!55643 () Bool)

(assert (=> b!55643 (= e!29332 e!29333)))

(assert (=> b!55583 (= tp!15673 e!29332)))

(assert (= (and b!55583 (is-OptionStructure!4 (ev!14 a!665))) b!55642))

(assert (= (and b!55643 (is-Some!293 (value!4072 (ev!14 a!665)))) b!55644))

(assert (= (and b!55583 (is-Option!298 (ev!14 a!665))) b!55643))

(declare-fun m!60346 () Bool)

(assert (=> b!55642 m!60346))

(declare-fun bs!27719 () Bool)

(declare-fun b!55645 () Bool)

(assert (= bs!27719 (and b!55645 b!55600)))

(declare-fun lambda!8705 () Int)

(assert (=> bs!27719 (= lambda!8705 lambda!8692)))

(declare-fun bs!27720 () Bool)

(assert (= bs!27720 (and b!55645 b!55583)))

(assert (=> bs!27720 (= lambda!8705 lambda!8687)))

(declare-fun bs!27721 () Bool)

(assert (= bs!27721 (and b!55645 b!55627)))

(assert (=> bs!27721 (= lambda!8705 lambda!8702)))

(declare-fun bs!27722 () Bool)

(assert (= bs!27722 (and b!55645 b!55604)))

(assert (=> bs!27722 (= lambda!8705 lambda!8694)))

(declare-fun bs!27723 () Bool)

(assert (= bs!27723 (and b!55645 b!55598)))

(assert (=> bs!27723 (= lambda!8705 lambda!8691)))

(declare-fun bs!27724 () Bool)

(assert (= bs!27724 (and b!55645 b!55602)))

(assert (=> bs!27724 (= lambda!8705 lambda!8693)))

(declare-fun bs!27725 () Bool)

(assert (= bs!27725 (and b!55645 b!55586)))

(assert (=> bs!27725 (= lambda!8705 lambda!8686)))

(declare-fun bs!27726 () Bool)

(assert (= bs!27726 (and b!55645 b!55581)))

(assert (=> bs!27726 (= lambda!8705 lambda!8688)))

(declare-fun bs!27727 () Bool)

(assert (= bs!27727 (and b!55645 b!55606)))

(assert (=> bs!27727 (= lambda!8705 lambda!8695)))

(declare-fun b_next!38641 () Bool)

(assert (=> start!7806 (= b_next!38639 (or (and b!55645 (= lambda!8705 A!2049)) b_next!38641))))

(declare-fun e!29334 () Bool)

(declare-fun lt!9931 () Object!256)

(declare-fun tp!15687 () Bool)

(assert (=> b!55645 (= e!29334 (and tp!15687 (isStructure!0 lt!9931 lambda!8705)))))

(assert (=> b!55645 (= lt!9931 (ev!14 (v!2040 (value!4072 s!1791))))))

(declare-fun b!55647 () Bool)

(declare-fun e!29335 () Bool)

(declare-fun tp!15686 () Bool)

(assert (=> b!55647 (= e!29335 tp!15686)))

(declare-fun b!55646 () Bool)

(assert (=> b!55646 (= e!29334 e!29335)))

(assert (=> b!55590 (= tp!15677 e!29334)))

(assert (= (and b!55590 (is-OptionStructure!4 (v!2040 (value!4072 s!1791)))) b!55645))

(assert (= (and b!55646 (is-Some!293 (value!4072 (v!2040 (value!4072 s!1791))))) b!55647))

(assert (= (and b!55590 (is-Option!298 (v!2040 (value!4072 s!1791)))) b!55646))

(declare-fun m!60348 () Bool)

(assert (=> b!55645 m!60348))

(declare-fun e!29336 () Bool)

(declare-fun tp!15689 () Bool)

(declare-fun b!55648 () Bool)

(declare-fun lt!9932 () Object!256)

(assert (=> b!55648 (= e!29336 (and tp!15689 (isStructure!0 lt!9932 lambda!8686)))))

(assert (=> b!55648 (= lt!9932 (ev!14 (ev!14 s!1791)))))

(declare-fun b!55650 () Bool)

(declare-fun e!29337 () Bool)

(declare-fun tp!15688 () Bool)

(assert (=> b!55650 (= e!29337 tp!15688)))

(declare-fun b!55649 () Bool)

(assert (=> b!55649 (= e!29336 e!29337)))

(assert (=> b!55586 (= tp!15674 e!29336)))

(assert (= (and b!55586 (is-OptionStructure!4 (ev!14 s!1791))) b!55648))

(assert (= (and b!55649 (is-Some!293 (value!4072 (ev!14 s!1791)))) b!55650))

(assert (= (and b!55586 (is-Option!298 (ev!14 s!1791))) b!55649))

(declare-fun m!60350 () Bool)

(assert (=> b!55648 m!60350))

(declare-fun bs!27728 () Bool)

(declare-fun b!55651 () Bool)

(assert (= bs!27728 (and b!55651 b!55600)))

(declare-fun lambda!8706 () Int)

(assert (=> bs!27728 (= lambda!8706 lambda!8692)))

(declare-fun bs!27729 () Bool)

(assert (= bs!27729 (and b!55651 b!55645)))

(assert (=> bs!27729 (= lambda!8706 lambda!8705)))

(declare-fun bs!27730 () Bool)

(assert (= bs!27730 (and b!55651 b!55583)))

(assert (=> bs!27730 (= lambda!8706 lambda!8687)))

(declare-fun bs!27731 () Bool)

(assert (= bs!27731 (and b!55651 b!55627)))

(assert (=> bs!27731 (= lambda!8706 lambda!8702)))

(declare-fun bs!27732 () Bool)

(assert (= bs!27732 (and b!55651 b!55604)))

(assert (=> bs!27732 (= lambda!8706 lambda!8694)))

(declare-fun bs!27733 () Bool)

(assert (= bs!27733 (and b!55651 b!55598)))

(assert (=> bs!27733 (= lambda!8706 lambda!8691)))

(declare-fun bs!27734 () Bool)

(assert (= bs!27734 (and b!55651 b!55602)))

(assert (=> bs!27734 (= lambda!8706 lambda!8693)))

(declare-fun bs!27735 () Bool)

(assert (= bs!27735 (and b!55651 b!55586)))

(assert (=> bs!27735 (= lambda!8706 lambda!8686)))

(declare-fun bs!27736 () Bool)

(assert (= bs!27736 (and b!55651 b!55581)))

(assert (=> bs!27736 (= lambda!8706 lambda!8688)))

(declare-fun bs!27737 () Bool)

(assert (= bs!27737 (and b!55651 b!55606)))

(assert (=> bs!27737 (= lambda!8706 lambda!8695)))

(declare-fun b_next!38643 () Bool)

(assert (=> start!7806 (= b_next!38641 (or (and b!55651 (= lambda!8706 A!2049)) b_next!38643))))

(declare-fun tp!15691 () Bool)

(declare-fun e!29338 () Bool)

(declare-fun lt!9933 () Object!256)

(assert (=> b!55651 (= e!29338 (and tp!15691 (isStructure!0 lt!9933 lambda!8706)))))

(assert (=> b!55651 (= lt!9933 (ev!14 (v!2040 (value!4072 a!665))))))

(declare-fun b!55653 () Bool)

(declare-fun e!29339 () Bool)

(declare-fun tp!15690 () Bool)

(assert (=> b!55653 (= e!29339 tp!15690)))

(declare-fun b!55652 () Bool)

(assert (=> b!55652 (= e!29338 e!29339)))

(assert (=> b!55585 (= tp!15672 e!29338)))

(assert (= (and b!55585 (is-OptionStructure!4 (v!2040 (value!4072 a!665)))) b!55651))

(assert (= (and b!55652 (is-Some!293 (value!4072 (v!2040 (value!4072 a!665))))) b!55653))

(assert (= (and b!55585 (is-Option!298 (v!2040 (value!4072 a!665)))) b!55652))

(declare-fun m!60352 () Bool)

(assert (=> b!55651 m!60352))

(declare-fun bs!27738 () Bool)

(declare-fun b!55654 () Bool)

(assert (= bs!27738 (and b!55654 b!55600)))

(declare-fun lambda!8707 () Int)

(assert (=> bs!27738 (= lambda!8707 lambda!8692)))

(declare-fun bs!27739 () Bool)

(assert (= bs!27739 (and b!55654 b!55645)))

(assert (=> bs!27739 (= lambda!8707 lambda!8705)))

(declare-fun bs!27740 () Bool)

(assert (= bs!27740 (and b!55654 b!55583)))

(assert (=> bs!27740 (= lambda!8707 lambda!8687)))

(declare-fun bs!27741 () Bool)

(assert (= bs!27741 (and b!55654 b!55627)))

(assert (=> bs!27741 (= lambda!8707 lambda!8702)))

(declare-fun bs!27742 () Bool)

(assert (= bs!27742 (and b!55654 b!55604)))

(assert (=> bs!27742 (= lambda!8707 lambda!8694)))

(declare-fun bs!27743 () Bool)

(assert (= bs!27743 (and b!55654 b!55598)))

(assert (=> bs!27743 (= lambda!8707 lambda!8691)))

(declare-fun bs!27744 () Bool)

(assert (= bs!27744 (and b!55654 b!55651)))

(assert (=> bs!27744 (= lambda!8707 lambda!8706)))

(declare-fun bs!27745 () Bool)

(assert (= bs!27745 (and b!55654 b!55602)))

(assert (=> bs!27745 (= lambda!8707 lambda!8693)))

(declare-fun bs!27746 () Bool)

(assert (= bs!27746 (and b!55654 b!55586)))

(assert (=> bs!27746 (= lambda!8707 lambda!8686)))

(declare-fun bs!27747 () Bool)

(assert (= bs!27747 (and b!55654 b!55581)))

(assert (=> bs!27747 (= lambda!8707 lambda!8688)))

(declare-fun bs!27748 () Bool)

(assert (= bs!27748 (and b!55654 b!55606)))

(assert (=> bs!27748 (= lambda!8707 lambda!8695)))

(declare-fun b_next!38645 () Bool)

(assert (=> start!7806 (= b_next!38643 (or (and b!55654 (= lambda!8707 A!2049)) b_next!38645))))

(declare-fun e!29340 () Bool)

(declare-fun tp!15693 () Bool)

(declare-fun lt!9934 () Object!256)

(assert (=> b!55654 (= e!29340 (and tp!15693 (isStructure!0 lt!9934 lambda!8707)))))

(assert (=> b!55654 (= lt!9934 (ev!14 (v!2040 (value!4072 b!55352))))))

(declare-fun b!55656 () Bool)

(declare-fun e!29341 () Bool)

(declare-fun tp!15692 () Bool)

(assert (=> b!55656 (= e!29341 tp!15692)))

(declare-fun b!55655 () Bool)

(assert (=> b!55655 (= e!29340 e!29341)))

(assert (=> b!55589 (= tp!15675 e!29340)))

(assert (= (and b!55589 (is-OptionStructure!4 (v!2040 (value!4072 b!55352)))) b!55654))

(assert (= (and b!55655 (is-Some!293 (value!4072 (v!2040 (value!4072 b!55352))))) b!55656))

(assert (= (and b!55589 (is-Option!298 (v!2040 (value!4072 b!55352)))) b!55655))

(declare-fun m!60354 () Bool)

(assert (=> b!55654 m!60354))

(push 1)

(assert (not b!55597))

(assert (not b_lambda!14699))

(assert (not b!55602))

(assert (not b!55651))

(assert (not b!55650))

(assert (not b!55601))

(assert (not b_lambda!14693))

(assert (not d!45390))

(assert (not b!55603))

(assert (not b!55623))

(assert (not b_next!38645))

(assert (not b!55599))

(assert (not b!55641))

(assert (not b!55629))

(assert (not b!55627))

(assert (not b!55625))

(assert (not b!55605))

(assert (not d!45392))

(assert (not b!55598))

(assert (not d!45396))

(assert (not b!55600))

(assert (not d!45400))

(assert (not b!55656))

(assert (not b!55639))

(assert (not b!55653))

(assert (not b!55645))

(assert (not b!55604))

(assert (not d!45398))

(assert (not b!55626))

(assert (not b!55642))

(assert (not b!55628))

(assert (not b_lambda!14695))

(assert (not b!55606))

(assert b_and!58363)

(assert (not d!45394))

(assert (not b!55654))

(assert (not b!55648))

(assert (not b_lambda!14697))

(assert (not b!55624))

(assert (not b!55630))

(assert (not b!55644))

(assert (not b!55647))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58363)

(assert (not b_next!38645))

(check-sat)

(pop 1)

