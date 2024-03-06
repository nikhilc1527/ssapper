; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3008 () Bool)

(assert start!3008)

(declare-fun b_free!2031 () Bool)

(declare-fun b_next!4737 () Bool)

(assert (=> start!3008 (= b_free!2031 (not b_next!4737))))

(declare-fun tp!3408 () Bool)

(declare-fun b_and!7113 () Bool)

(assert (=> start!3008 (= tp!3408 b_and!7113)))

(declare-fun b_free!2033 () Bool)

(declare-fun b_next!4739 () Bool)

(assert (=> start!3008 (= b_free!2033 (not b_next!4739))))

(declare-fun tp!3407 () Bool)

(declare-fun b_and!7115 () Bool)

(assert (=> start!3008 (= tp!3407 b_and!7115)))

(declare-fun b_free!2035 () Bool)

(declare-fun b_next!4741 () Bool)

(assert (=> start!3008 (= b_free!2035 (not b_next!4741))))

(declare-fun tp!3406 () Bool)

(declare-fun b_and!7117 () Bool)

(assert (=> start!3008 (= tp!3406 b_and!7117)))

(declare-fun b_next!4743 () Bool)

(declare-fun lambda!3515 () Int)

(declare-fun s1!23 () Int)

(assert (=> start!3008 (= b_next!4737 (or (and start!3008 (= lambda!3515 s1!23)) b_next!4743))))

(declare-fun s2!22 () Int)

(declare-fun b_next!4745 () Bool)

(assert (=> start!3008 (= b_next!4739 (or (and start!3008 (= lambda!3515 s2!22)) b_next!4745))))

(declare-fun b_next!4747 () Bool)

(declare-fun s3!1 () Int)

(assert (=> start!3008 (= b_next!4741 (or (and start!3008 (= lambda!3515 s3!1)) b_next!4747))))

(declare-fun lambda!3516 () Int)

(assert (=> start!3008 (= (= #b00000000000000000000000000000010 #b00000000000000000000000000000001) (= lambda!3516 lambda!3515))))

(declare-fun b_next!4749 () Bool)

(assert (=> start!3008 (= b_next!4743 (or (and start!3008 (= lambda!3516 s1!23)) b_next!4749))))

(declare-fun b_next!4751 () Bool)

(assert (=> start!3008 (= b_next!4745 (or (and start!3008 (= lambda!3516 s2!22)) b_next!4751))))

(declare-fun b_next!4753 () Bool)

(assert (=> start!3008 (= b_next!4747 (or (and start!3008 (= lambda!3516 s3!1)) b_next!4753))))

(declare-fun lambda!3517 () Int)

(assert (=> start!3008 (= (= #b00000000000000000000000000000011 #b00000000000000000000000000000001) (= lambda!3517 lambda!3515))))

(assert (=> start!3008 (= (= #b00000000000000000000000000000011 #b00000000000000000000000000000010) (= lambda!3517 lambda!3516))))

(declare-fun b_next!4755 () Bool)

(assert (=> start!3008 (= b_next!4749 (or (and start!3008 (= lambda!3517 s1!23)) b_next!4755))))

(declare-fun b_next!4757 () Bool)

(assert (=> start!3008 (= b_next!4751 (or (and start!3008 (= lambda!3517 s2!22)) b_next!4757))))

(declare-fun b_next!4759 () Bool)

(assert (=> start!3008 (= b_next!4753 (or (and start!3008 (= lambda!3517 s3!1)) b_next!4759))))

(declare-fun lambda!3518 () Int)

(assert (=> start!3008 (not (= lambda!3518 lambda!3515))))

(assert (=> start!3008 (not (= lambda!3518 lambda!3516))))

(assert (=> start!3008 (not (= lambda!3518 lambda!3517))))

(declare-fun b_next!4761 () Bool)

(assert (=> start!3008 (= b_next!4755 (or (and start!3008 (= lambda!3518 s1!23)) b_next!4761))))

(declare-fun b_next!4763 () Bool)

(assert (=> start!3008 (= b_next!4757 (or (and start!3008 (= lambda!3518 s2!22)) b_next!4763))))

(declare-fun b_next!4765 () Bool)

(assert (=> start!3008 (= b_next!4759 (or (and start!3008 (= lambda!3518 s3!1)) b_next!4765))))

(declare-fun lambda!3514 () Int)

(assert (=> start!3008 (not (= lambda!3514 lambda!3515))))

(assert (=> start!3008 (not (= lambda!3514 lambda!3516))))

(assert (=> start!3008 (not (= lambda!3514 lambda!3517))))

(assert (=> start!3008 (= (and (= lambda!3515 lambda!3516) (= lambda!3518 lambda!3517)) (= lambda!3514 lambda!3518))))

(declare-fun b_next!4767 () Bool)

(assert (=> start!3008 (= b_next!4761 (or (and start!3008 (= lambda!3514 s1!23)) b_next!4767))))

(declare-fun b_next!4769 () Bool)

(assert (=> start!3008 (= b_next!4763 (or (and start!3008 (= lambda!3514 s2!22)) b_next!4769))))

(declare-fun b_next!4771 () Bool)

(assert (=> start!3008 (= b_next!4765 (or (and start!3008 (= lambda!3514 s3!1)) b_next!4771))))

(declare-fun b!14134 () Bool)

(declare-fun e!7807 () Bool)

(declare-fun dynLambda!558 (Int (_ BitVec 32)) Bool)

(assert (=> b!14134 (= e!7807 (not (dynLambda!558 s3!1 #b00000000000000000000000000000011)))))

(declare-fun res!5415 () Bool)

(declare-fun e!7808 () Bool)

(assert (=> start!3008 (=> (not res!5415) (not e!7808))))

(assert (=> start!3008 (= res!5415 (= s1!23 lambda!3514))))

(assert (=> start!3008 e!7808))

(assert (=> start!3008 tp!3408))

(assert (=> start!3008 tp!3407))

(assert (=> start!3008 tp!3406))

(declare-fun b!14135 () Bool)

(assert (=> b!14135 (= e!7808 e!7807)))

(declare-fun res!5418 () Bool)

(assert (=> b!14135 (=> res!5418 e!7807)))

(assert (=> b!14135 (= res!5418 (not (dynLambda!558 s3!1 #b00000000000000000000000000000001)))))

(declare-fun b!14136 () Bool)

(declare-fun res!5417 () Bool)

(assert (=> b!14136 (=> (not res!5417) (not e!7808))))

(declare-fun union!2 (Int Int) Int)

(assert (=> b!14136 (= res!5417 (= s3!1 (union!2 s1!23 s2!22)))))

(declare-fun b!14137 () Bool)

(declare-fun res!5419 () Bool)

(assert (=> b!14137 (=> (not res!5419) (not e!7808))))

(assert (=> b!14137 (= res!5419 (= s2!22 lambda!3514))))

(declare-fun b!14138 () Bool)

(declare-fun res!5416 () Bool)

(assert (=> b!14138 (=> res!5416 e!7807)))

(assert (=> b!14138 (= res!5416 (not (dynLambda!558 s3!1 #b00000000000000000000000000000010)))))

(assert (= (and start!3008 res!5415) b!14137))

(assert (= (and b!14137 res!5419) b!14136))

(assert (= (and b!14136 res!5417) b!14135))

(assert (= (and b!14135 (not res!5418)) b!14138))

(assert (= (and b!14138 (not res!5416)) b!14134))

(declare-fun b_lambda!7377 () Bool)

(assert (=> (not b_lambda!7377) (not b!14134)))

(declare-fun t!4095 () Bool)

(declare-fun tb!3713 () Bool)

(assert (=> (and start!3008 (= s1!23 s3!1) t!4095) tb!3713))

(declare-fun result!3785 () Bool)

(assert (=> tb!3713 (= result!3785 true)))

(assert (=> b!14134 t!4095))

(declare-fun b_and!7119 () Bool)

(assert (= b_and!7113 (and (=> t!4095 result!3785) b_and!7119)))

(declare-fun t!4097 () Bool)

(declare-fun tb!3715 () Bool)

(assert (=> (and start!3008 (= s2!22 s3!1) t!4097) tb!3715))

(declare-fun result!3787 () Bool)

(assert (=> tb!3715 (= result!3787 true)))

(assert (=> b!14134 t!4097))

(declare-fun b_and!7121 () Bool)

(assert (= b_and!7115 (and (=> t!4097 result!3787) b_and!7121)))

(declare-fun t!4099 () Bool)

(declare-fun tb!3717 () Bool)

(assert (=> (and start!3008 (= s3!1 s3!1) t!4099) tb!3717))

(declare-fun result!3789 () Bool)

(assert (=> tb!3717 (= result!3789 true)))

(assert (=> b!14134 t!4099))

(declare-fun b_and!7123 () Bool)

(assert (= b_and!7117 (and (=> t!4099 result!3789) b_and!7123)))

(declare-fun b_lambda!7379 () Bool)

(assert (=> (not b_lambda!7379) (not b!14135)))

(declare-fun tb!3719 () Bool)

(declare-fun t!4101 () Bool)

(assert (=> (and start!3008 (= s1!23 s3!1) t!4101) tb!3719))

(declare-fun result!3791 () Bool)

(assert (=> tb!3719 (= result!3791 true)))

(assert (=> b!14135 t!4101))

(declare-fun b_and!7125 () Bool)

(assert (= b_and!7119 (and (=> t!4101 result!3791) b_and!7125)))

(declare-fun tb!3721 () Bool)

(declare-fun t!4103 () Bool)

(assert (=> (and start!3008 (= s2!22 s3!1) t!4103) tb!3721))

(declare-fun result!3793 () Bool)

(assert (=> tb!3721 (= result!3793 true)))

(assert (=> b!14135 t!4103))

(declare-fun b_and!7127 () Bool)

(assert (= b_and!7121 (and (=> t!4103 result!3793) b_and!7127)))

(declare-fun t!4105 () Bool)

(declare-fun tb!3723 () Bool)

(assert (=> (and start!3008 (= s3!1 s3!1) t!4105) tb!3723))

(declare-fun result!3795 () Bool)

(assert (=> tb!3723 (= result!3795 true)))

(assert (=> b!14135 t!4105))

(declare-fun b_and!7129 () Bool)

(assert (= b_and!7123 (and (=> t!4105 result!3795) b_and!7129)))

(declare-fun b_lambda!7381 () Bool)

(assert (=> (not b_lambda!7381) (not b!14138)))

(declare-fun tb!3725 () Bool)

(declare-fun t!4107 () Bool)

(assert (=> (and start!3008 (= s1!23 s3!1) t!4107) tb!3725))

(declare-fun result!3797 () Bool)

(assert (=> tb!3725 (= result!3797 true)))

(assert (=> b!14138 t!4107))

(declare-fun b_and!7131 () Bool)

(assert (= b_and!7125 (and (=> t!4107 result!3797) b_and!7131)))

(declare-fun tb!3727 () Bool)

(declare-fun t!4109 () Bool)

(assert (=> (and start!3008 (= s2!22 s3!1) t!4109) tb!3727))

(declare-fun result!3799 () Bool)

(assert (=> tb!3727 (= result!3799 true)))

(assert (=> b!14138 t!4109))

(declare-fun b_and!7133 () Bool)

(assert (= b_and!7127 (and (=> t!4109 result!3799) b_and!7133)))

(declare-fun t!4111 () Bool)

(declare-fun tb!3729 () Bool)

(assert (=> (and start!3008 (= s3!1 s3!1) t!4111) tb!3729))

(declare-fun result!3801 () Bool)

(assert (=> tb!3729 (= result!3801 true)))

(assert (=> b!14138 t!4111))

(declare-fun b_and!7135 () Bool)

(assert (= b_and!7129 (and (=> t!4111 result!3801) b_and!7135)))

(declare-fun m!17997 () Bool)

(assert (=> b!14134 m!17997))

(declare-fun m!17999 () Bool)

(assert (=> b!14135 m!17999))

(declare-fun m!18001 () Bool)

(assert (=> b!14136 m!18001))

(declare-fun m!18003 () Bool)

(assert (=> b!14138 m!18003))

(push 1)

(assert (not b_lambda!7379))

(assert (not b_lambda!7381))

(assert (not b_next!4769))

(assert (not b_next!4767))

(assert b_and!7135)

(assert (not b!14136))

(assert (not b_next!4771))

(assert b_and!7133)

(assert b_and!7131)

(assert (not b_lambda!7377))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4769))

(assert (not b_next!4767))

(assert b_and!7135)

(assert (not b_next!4771))

(assert b_and!7133)

(assert b_and!7131)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7383 () Bool)

(assert (= b_lambda!7377 (or (and start!3008 b_free!2033 (= s2!22 s3!1)) (and start!3008 (= lambda!3515 s3!1)) (and start!3008 b_free!2035) (and start!3008 (= lambda!3516 s3!1)) (and start!3008 (= lambda!3517 s3!1)) (and start!3008 (= lambda!3514 s3!1)) (and start!3008 (= lambda!3518 s3!1)) (and start!3008 b_free!2031 (= s1!23 s3!1)) b_lambda!7383)))

(declare-fun bs!4874 () Bool)

(declare-fun d!10999 () Bool)

(assert (= bs!4874 (and d!10999 start!3008)))

(declare-fun res!5420 () Bool)

(declare-fun e!7809 () Bool)

(assert (=> bs!4874 (=> res!5420 e!7809)))

(assert (=> bs!4874 (= res!5420 (dynLambda!558 lambda!3515 #b00000000000000000000000000000011))))

(assert (=> bs!4874 (= (dynLambda!558 lambda!3514 #b00000000000000000000000000000011) e!7809)))

(declare-fun b!14139 () Bool)

(assert (=> b!14139 (= e!7809 (dynLambda!558 lambda!3518 #b00000000000000000000000000000011))))

(assert (= (and bs!4874 (not res!5420)) b!14139))

(declare-fun b_lambda!7389 () Bool)

(assert (=> (not b_lambda!7389) (not bs!4874)))

(declare-fun b_lambda!7391 () Bool)

(assert (=> (not b_lambda!7391) (not b!14139)))

(declare-fun m!18005 () Bool)

(assert (=> bs!4874 m!18005))

(declare-fun m!18007 () Bool)

(assert (=> b!14139 m!18007))

(assert (=> (and start!3008 (= lambda!3514 s3!1) b!14134) d!10999))

(declare-fun bs!4875 () Bool)

(declare-fun d!11001 () Bool)

(assert (= bs!4875 (and d!11001 start!3008)))

(assert (=> bs!4875 (= (dynLambda!558 lambda!3517 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000011))))

(assert (=> (and start!3008 (= lambda!3517 s3!1) b!14134) d!11001))

(declare-fun bs!4876 () Bool)

(declare-fun d!11003 () Bool)

(assert (= bs!4876 (and d!11003 start!3008)))

(declare-fun res!5421 () Bool)

(declare-fun e!7810 () Bool)

(assert (=> bs!4876 (=> res!5421 e!7810)))

(assert (=> bs!4876 (= res!5421 (dynLambda!558 lambda!3516 #b00000000000000000000000000000011))))

(assert (=> bs!4876 (= (dynLambda!558 lambda!3518 #b00000000000000000000000000000011) e!7810)))

(declare-fun b!14140 () Bool)

(assert (=> b!14140 (= e!7810 (dynLambda!558 lambda!3517 #b00000000000000000000000000000011))))

(assert (= (and bs!4876 (not res!5421)) b!14140))

(declare-fun b_lambda!7393 () Bool)

(assert (=> (not b_lambda!7393) (not bs!4876)))

(declare-fun b_lambda!7395 () Bool)

(assert (=> (not b_lambda!7395) (not b!14140)))

(declare-fun m!18009 () Bool)

(assert (=> bs!4876 m!18009))

(declare-fun m!18011 () Bool)

(assert (=> b!14140 m!18011))

(assert (=> (and start!3008 (= lambda!3518 s3!1) b!14134) d!11003))

(declare-fun bs!4877 () Bool)

(declare-fun d!11005 () Bool)

(assert (= bs!4877 (and d!11005 start!3008)))

(assert (=> bs!4877 (= (dynLambda!558 lambda!3515 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000001))))

(assert (=> (and start!3008 (= lambda!3515 s3!1) b!14134) d!11005))

(declare-fun bs!4878 () Bool)

(declare-fun d!11007 () Bool)

(assert (= bs!4878 (and d!11007 start!3008)))

(assert (=> bs!4878 (= (dynLambda!558 lambda!3516 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000010))))

(assert (=> (and start!3008 (= lambda!3516 s3!1) b!14134) d!11007))

(declare-fun b_lambda!7385 () Bool)

(assert (= b_lambda!7379 (or (and start!3008 b_free!2033 (= s2!22 s3!1)) (and start!3008 (= lambda!3515 s3!1)) (and start!3008 b_free!2035) (and start!3008 (= lambda!3516 s3!1)) (and start!3008 (= lambda!3517 s3!1)) (and start!3008 (= lambda!3514 s3!1)) (and start!3008 (= lambda!3518 s3!1)) (and start!3008 b_free!2031 (= s1!23 s3!1)) b_lambda!7385)))

(declare-fun bs!4879 () Bool)

(declare-fun d!11009 () Bool)

(assert (= bs!4879 (and d!11009 start!3008)))

(assert (=> bs!4879 (= (dynLambda!558 lambda!3515 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000001))))

(assert (=> (and start!3008 (= lambda!3515 s3!1) b!14135) d!11009))

(declare-fun bs!4880 () Bool)

(declare-fun d!11011 () Bool)

(assert (= bs!4880 (and d!11011 start!3008)))

(declare-fun res!5422 () Bool)

(declare-fun e!7811 () Bool)

(assert (=> bs!4880 (=> res!5422 e!7811)))

(assert (=> bs!4880 (= res!5422 (dynLambda!558 lambda!3516 #b00000000000000000000000000000001))))

(assert (=> bs!4880 (= (dynLambda!558 lambda!3518 #b00000000000000000000000000000001) e!7811)))

(declare-fun b!14141 () Bool)

(assert (=> b!14141 (= e!7811 (dynLambda!558 lambda!3517 #b00000000000000000000000000000001))))

(assert (= (and bs!4880 (not res!5422)) b!14141))

(declare-fun b_lambda!7397 () Bool)

(assert (=> (not b_lambda!7397) (not bs!4880)))

(declare-fun b_lambda!7399 () Bool)

(assert (=> (not b_lambda!7399) (not b!14141)))

(declare-fun m!18013 () Bool)

(assert (=> bs!4880 m!18013))

(declare-fun m!18015 () Bool)

(assert (=> b!14141 m!18015))

(assert (=> (and start!3008 (= lambda!3518 s3!1) b!14135) d!11011))

(declare-fun bs!4881 () Bool)

(declare-fun d!11013 () Bool)

(assert (= bs!4881 (and d!11013 start!3008)))

(declare-fun res!5423 () Bool)

(declare-fun e!7812 () Bool)

(assert (=> bs!4881 (=> res!5423 e!7812)))

(assert (=> bs!4881 (= res!5423 (dynLambda!558 lambda!3515 #b00000000000000000000000000000001))))

(assert (=> bs!4881 (= (dynLambda!558 lambda!3514 #b00000000000000000000000000000001) e!7812)))

(declare-fun b!14142 () Bool)

(assert (=> b!14142 (= e!7812 (dynLambda!558 lambda!3518 #b00000000000000000000000000000001))))

(assert (= (and bs!4881 (not res!5423)) b!14142))

(declare-fun b_lambda!7401 () Bool)

(assert (=> (not b_lambda!7401) (not bs!4881)))

(declare-fun b_lambda!7403 () Bool)

(assert (=> (not b_lambda!7403) (not b!14142)))

(declare-fun m!18017 () Bool)

(assert (=> bs!4881 m!18017))

(declare-fun m!18019 () Bool)

(assert (=> b!14142 m!18019))

(assert (=> (and start!3008 (= lambda!3514 s3!1) b!14135) d!11013))

(declare-fun bs!4882 () Bool)

(declare-fun d!11015 () Bool)

(assert (= bs!4882 (and d!11015 start!3008)))

(assert (=> bs!4882 (= (dynLambda!558 lambda!3517 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000011))))

(assert (=> (and start!3008 (= lambda!3517 s3!1) b!14135) d!11015))

(declare-fun bs!4883 () Bool)

(declare-fun d!11017 () Bool)

(assert (= bs!4883 (and d!11017 start!3008)))

(assert (=> bs!4883 (= (dynLambda!558 lambda!3516 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000010))))

(assert (=> (and start!3008 (= lambda!3516 s3!1) b!14135) d!11017))

(declare-fun b_lambda!7387 () Bool)

(assert (= b_lambda!7381 (or (and start!3008 b_free!2033 (= s2!22 s3!1)) (and start!3008 (= lambda!3515 s3!1)) (and start!3008 b_free!2035) (and start!3008 (= lambda!3516 s3!1)) (and start!3008 (= lambda!3517 s3!1)) (and start!3008 (= lambda!3514 s3!1)) (and start!3008 (= lambda!3518 s3!1)) (and start!3008 b_free!2031 (= s1!23 s3!1)) b_lambda!7387)))

(declare-fun bs!4884 () Bool)

(declare-fun d!11019 () Bool)

(assert (= bs!4884 (and d!11019 start!3008)))

(declare-fun res!5424 () Bool)

(declare-fun e!7813 () Bool)

(assert (=> bs!4884 (=> res!5424 e!7813)))

(assert (=> bs!4884 (= res!5424 (dynLambda!558 lambda!3516 #b00000000000000000000000000000010))))

(assert (=> bs!4884 (= (dynLambda!558 lambda!3518 #b00000000000000000000000000000010) e!7813)))

(declare-fun b!14143 () Bool)

(assert (=> b!14143 (= e!7813 (dynLambda!558 lambda!3517 #b00000000000000000000000000000010))))

(assert (= (and bs!4884 (not res!5424)) b!14143))

(declare-fun b_lambda!7405 () Bool)

(assert (=> (not b_lambda!7405) (not bs!4884)))

(declare-fun b_lambda!7407 () Bool)

(assert (=> (not b_lambda!7407) (not b!14143)))

(declare-fun m!18021 () Bool)

(assert (=> bs!4884 m!18021))

(declare-fun m!18023 () Bool)

(assert (=> b!14143 m!18023))

(assert (=> (and start!3008 (= lambda!3518 s3!1) b!14138) d!11019))

(declare-fun bs!4885 () Bool)

(declare-fun d!11021 () Bool)

(assert (= bs!4885 (and d!11021 start!3008)))

(assert (=> bs!4885 (= (dynLambda!558 lambda!3517 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000011))))

(assert (=> (and start!3008 (= lambda!3517 s3!1) b!14138) d!11021))

(declare-fun bs!4886 () Bool)

(declare-fun d!11023 () Bool)

(assert (= bs!4886 (and d!11023 start!3008)))

(assert (=> bs!4886 (= (dynLambda!558 lambda!3516 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000010))))

(assert (=> (and start!3008 (= lambda!3516 s3!1) b!14138) d!11023))

(declare-fun bs!4887 () Bool)

(declare-fun d!11025 () Bool)

(assert (= bs!4887 (and d!11025 start!3008)))

(declare-fun res!5425 () Bool)

(declare-fun e!7814 () Bool)

(assert (=> bs!4887 (=> res!5425 e!7814)))

(assert (=> bs!4887 (= res!5425 (dynLambda!558 lambda!3515 #b00000000000000000000000000000010))))

(assert (=> bs!4887 (= (dynLambda!558 lambda!3514 #b00000000000000000000000000000010) e!7814)))

(declare-fun b!14144 () Bool)

(assert (=> b!14144 (= e!7814 (dynLambda!558 lambda!3518 #b00000000000000000000000000000010))))

(assert (= (and bs!4887 (not res!5425)) b!14144))

(declare-fun b_lambda!7409 () Bool)

(assert (=> (not b_lambda!7409) (not bs!4887)))

(declare-fun b_lambda!7411 () Bool)

(assert (=> (not b_lambda!7411) (not b!14144)))

(declare-fun m!18025 () Bool)

(assert (=> bs!4887 m!18025))

(declare-fun m!18027 () Bool)

(assert (=> b!14144 m!18027))

(assert (=> (and start!3008 (= lambda!3514 s3!1) b!14138) d!11025))

(declare-fun bs!4888 () Bool)

(declare-fun d!11027 () Bool)

(assert (= bs!4888 (and d!11027 start!3008)))

(assert (=> bs!4888 (= (dynLambda!558 lambda!3515 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000001))))

(assert (=> (and start!3008 (= lambda!3515 s3!1) b!14138) d!11027))

(push 1)

(assert (not b_lambda!7383))

(assert (not b_lambda!7389))

(assert (not b_next!4769))

(assert (not b_lambda!7405))

(assert (not b_next!4767))

(assert (not b_lambda!7395))

(assert (not b_lambda!7399))

(assert b_and!7135)

(assert (not b_lambda!7393))

(assert (not b!14136))

(assert (not b_next!4771))

(assert (not b_lambda!7409))

(assert (not b_lambda!7411))

(assert (not b_lambda!7385))

(assert (not b_lambda!7387))

(assert (not b_lambda!7401))

(assert b_and!7133)

(assert b_and!7131)

(assert (not b_lambda!7403))

(assert (not b_lambda!7397))

(assert (not b_lambda!7391))

(assert (not b_lambda!7407))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4769))

(assert (not b_next!4767))

(assert b_and!7135)

(assert (not b_next!4771))

(assert b_and!7133)

(assert b_and!7131)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7413 () Bool)

(assert (= b_lambda!7393 (or start!3008 b_lambda!7413)))

(declare-fun bs!4889 () Bool)

(declare-fun d!11029 () Bool)

(assert (= bs!4889 (and d!11029 start!3008)))

(assert (=> bs!4889 (= (dynLambda!558 lambda!3516 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000010))))

(assert (=> bs!4876 d!11029))

(declare-fun b_lambda!7415 () Bool)

(assert (= b_lambda!7407 (or start!3008 b_lambda!7415)))

(declare-fun bs!4890 () Bool)

(declare-fun d!11031 () Bool)

(assert (= bs!4890 (and d!11031 start!3008)))

(assert (=> bs!4890 (= (dynLambda!558 lambda!3517 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000011))))

(assert (=> b!14143 d!11031))

(declare-fun b_lambda!7417 () Bool)

(assert (= b_lambda!7403 (or start!3008 b_lambda!7417)))

(declare-fun bs!4891 () Bool)

(declare-fun d!11033 () Bool)

(assert (= bs!4891 (and d!11033 start!3008)))

(declare-fun res!5426 () Bool)

(declare-fun e!7815 () Bool)

(assert (=> bs!4891 (=> res!5426 e!7815)))

(assert (=> bs!4891 (= res!5426 (dynLambda!558 lambda!3516 #b00000000000000000000000000000001))))

(assert (=> bs!4891 (= (dynLambda!558 lambda!3518 #b00000000000000000000000000000001) e!7815)))

(declare-fun b!14145 () Bool)

(assert (=> b!14145 (= e!7815 (dynLambda!558 lambda!3517 #b00000000000000000000000000000001))))

(assert (= (and bs!4891 (not res!5426)) b!14145))

(declare-fun b_lambda!7437 () Bool)

(assert (=> (not b_lambda!7437) (not bs!4891)))

(declare-fun b_lambda!7439 () Bool)

(assert (=> (not b_lambda!7439) (not b!14145)))

(assert (=> bs!4891 m!18013))

(assert (=> b!14145 m!18015))

(assert (=> b!14142 d!11033))

(declare-fun b_lambda!7419 () Bool)

(assert (= b_lambda!7389 (or start!3008 b_lambda!7419)))

(declare-fun bs!4892 () Bool)

(declare-fun d!11035 () Bool)

(assert (= bs!4892 (and d!11035 start!3008)))

(assert (=> bs!4892 (= (dynLambda!558 lambda!3515 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000001))))

(assert (=> bs!4874 d!11035))

(declare-fun b_lambda!7421 () Bool)

(assert (= b_lambda!7409 (or start!3008 b_lambda!7421)))

(declare-fun bs!4893 () Bool)

(declare-fun d!11037 () Bool)

(assert (= bs!4893 (and d!11037 start!3008)))

(assert (=> bs!4893 (= (dynLambda!558 lambda!3515 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000001))))

(assert (=> bs!4887 d!11037))

(declare-fun b_lambda!7423 () Bool)

(assert (= b_lambda!7399 (or start!3008 b_lambda!7423)))

(declare-fun bs!4894 () Bool)

(declare-fun d!11039 () Bool)

(assert (= bs!4894 (and d!11039 start!3008)))

(assert (=> bs!4894 (= (dynLambda!558 lambda!3517 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000011))))

(assert (=> b!14141 d!11039))

(declare-fun b_lambda!7425 () Bool)

(assert (= b_lambda!7411 (or start!3008 b_lambda!7425)))

(declare-fun bs!4895 () Bool)

(declare-fun d!11041 () Bool)

(assert (= bs!4895 (and d!11041 start!3008)))

(declare-fun res!5427 () Bool)

(declare-fun e!7816 () Bool)

(assert (=> bs!4895 (=> res!5427 e!7816)))

(assert (=> bs!4895 (= res!5427 (dynLambda!558 lambda!3516 #b00000000000000000000000000000010))))

(assert (=> bs!4895 (= (dynLambda!558 lambda!3518 #b00000000000000000000000000000010) e!7816)))

(declare-fun b!14146 () Bool)

(assert (=> b!14146 (= e!7816 (dynLambda!558 lambda!3517 #b00000000000000000000000000000010))))

(assert (= (and bs!4895 (not res!5427)) b!14146))

(declare-fun b_lambda!7441 () Bool)

(assert (=> (not b_lambda!7441) (not bs!4895)))

(declare-fun b_lambda!7443 () Bool)

(assert (=> (not b_lambda!7443) (not b!14146)))

(assert (=> bs!4895 m!18021))

(assert (=> b!14146 m!18023))

(assert (=> b!14144 d!11041))

(declare-fun b_lambda!7427 () Bool)

(assert (= b_lambda!7391 (or start!3008 b_lambda!7427)))

(declare-fun bs!4896 () Bool)

(declare-fun d!11043 () Bool)

(assert (= bs!4896 (and d!11043 start!3008)))

(declare-fun res!5428 () Bool)

(declare-fun e!7817 () Bool)

(assert (=> bs!4896 (=> res!5428 e!7817)))

(assert (=> bs!4896 (= res!5428 (dynLambda!558 lambda!3516 #b00000000000000000000000000000011))))

(assert (=> bs!4896 (= (dynLambda!558 lambda!3518 #b00000000000000000000000000000011) e!7817)))

(declare-fun b!14147 () Bool)

(assert (=> b!14147 (= e!7817 (dynLambda!558 lambda!3517 #b00000000000000000000000000000011))))

(assert (= (and bs!4896 (not res!5428)) b!14147))

(declare-fun b_lambda!7445 () Bool)

(assert (=> (not b_lambda!7445) (not bs!4896)))

(declare-fun b_lambda!7447 () Bool)

(assert (=> (not b_lambda!7447) (not b!14147)))

(assert (=> bs!4896 m!18009))

(assert (=> b!14147 m!18011))

(assert (=> b!14139 d!11043))

(declare-fun b_lambda!7429 () Bool)

(assert (= b_lambda!7401 (or start!3008 b_lambda!7429)))

(declare-fun bs!4897 () Bool)

(declare-fun d!11045 () Bool)

(assert (= bs!4897 (and d!11045 start!3008)))

(assert (=> bs!4897 (= (dynLambda!558 lambda!3515 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000001))))

(assert (=> bs!4881 d!11045))

(declare-fun b_lambda!7431 () Bool)

(assert (= b_lambda!7405 (or start!3008 b_lambda!7431)))

(declare-fun bs!4898 () Bool)

(declare-fun d!11047 () Bool)

(assert (= bs!4898 (and d!11047 start!3008)))

(assert (=> bs!4898 (= (dynLambda!558 lambda!3516 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000010))))

(assert (=> bs!4884 d!11047))

(declare-fun b_lambda!7433 () Bool)

(assert (= b_lambda!7397 (or start!3008 b_lambda!7433)))

(declare-fun bs!4899 () Bool)

(declare-fun d!11049 () Bool)

(assert (= bs!4899 (and d!11049 start!3008)))

(assert (=> bs!4899 (= (dynLambda!558 lambda!3516 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000010))))

(assert (=> bs!4880 d!11049))

(declare-fun b_lambda!7435 () Bool)

(assert (= b_lambda!7395 (or start!3008 b_lambda!7435)))

(declare-fun bs!4900 () Bool)

(declare-fun d!11051 () Bool)

(assert (= bs!4900 (and d!11051 start!3008)))

(assert (=> bs!4900 (= (dynLambda!558 lambda!3517 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000011))))

(assert (=> b!14140 d!11051))

(push 1)

(assert (not b_lambda!7439))

(assert (not b_lambda!7437))

(assert (not b_lambda!7383))

(assert (not b_lambda!7419))

(assert (not b_lambda!7421))

(assert (not b_lambda!7413))

(assert (not b_lambda!7425))

(assert (not b_lambda!7423))

(assert (not b_next!4769))

(assert (not b_lambda!7435))

(assert (not b_lambda!7415))

(assert (not b_lambda!7445))

(assert (not b_next!4767))

(assert (not b_lambda!7429))

(assert (not b_lambda!7443))

(assert b_and!7135)

(assert (not b!14136))

(assert (not b_next!4771))

(assert (not b_lambda!7441))

(assert (not b_lambda!7433))

(assert (not b_lambda!7385))

(assert (not b_lambda!7387))

(assert (not b_lambda!7427))

(assert (not b_lambda!7431))

(assert b_and!7133)

(assert b_and!7131)

(assert (not b_lambda!7447))

(assert (not b_lambda!7417))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4769))

(assert (not b_next!4767))

(assert b_and!7135)

(assert (not b_next!4771))

(assert b_and!7133)

(assert b_and!7131)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!4901 () Bool)

(declare-fun d!11053 () Bool)

(assert (= bs!4901 (and d!11053 start!3008)))

(declare-fun lambda!3521 () Int)

(assert (=> bs!4901 (= (and (= s1!23 lambda!3516) (= s2!22 lambda!3517)) (= lambda!3521 lambda!3518))))

(assert (=> bs!4901 (not (= lambda!3521 lambda!3515))))

(assert (=> bs!4901 (not (= lambda!3521 lambda!3516))))

(assert (=> bs!4901 (not (= lambda!3521 lambda!3517))))

(assert (=> bs!4901 (= (and (= s1!23 lambda!3515) (= s2!22 lambda!3518)) (= lambda!3521 lambda!3514))))

(assert (=> d!11053 true))

(declare-fun order!345 () Int)

(declare-fun dynLambda!559 (Int Int) Int)

(assert (=> d!11053 (< (dynLambda!559 order!345 s1!23) (dynLambda!559 order!345 lambda!3521))))

(assert (=> d!11053 true))

(assert (=> d!11053 (< (dynLambda!559 order!345 s2!22) (dynLambda!559 order!345 lambda!3521))))

(declare-fun b_next!4773 () Bool)

(assert (=> start!3008 (= b_next!4771 (or (and d!11053 (= lambda!3521 s3!1)) b_next!4773))))

(assert (=> d!11053 (= (union!2 s1!23 s2!22) lambda!3521)))

(assert (=> b!14136 d!11053))

(declare-fun b_lambda!7449 () Bool)

(assert (= b_lambda!7447 (or start!3008 b_lambda!7449)))

(assert (=> b!14147 d!11051))

(declare-fun b_lambda!7451 () Bool)

(assert (= b_lambda!7441 (or start!3008 b_lambda!7451)))

(assert (=> bs!4895 d!11047))

(declare-fun b_lambda!7453 () Bool)

(assert (= b_lambda!7445 (or start!3008 b_lambda!7453)))

(assert (=> bs!4896 d!11029))

(declare-fun b_lambda!7455 () Bool)

(assert (= b_lambda!7437 (or start!3008 b_lambda!7455)))

(assert (=> bs!4891 d!11049))

(declare-fun b_lambda!7457 () Bool)

(assert (= b_lambda!7439 (or start!3008 b_lambda!7457)))

(assert (=> b!14145 d!11039))

(declare-fun b_lambda!7459 () Bool)

(assert (= b_lambda!7443 (or start!3008 b_lambda!7459)))

(assert (=> b!14146 d!11031))

(push 1)

(assert (not b_lambda!7451))

(assert (not b_lambda!7383))

(assert (not b_lambda!7419))

(assert (not b_lambda!7421))

(assert (not b_lambda!7413))

(assert (not b_lambda!7425))

(assert (not b_lambda!7423))

(assert (not b_next!4769))

(assert (not b_lambda!7435))

(assert (not b_lambda!7459))

(assert (not b_lambda!7415))

(assert (not b_next!4767))

(assert (not b_next!4773))

(assert (not b_lambda!7429))

(assert b_and!7135)

(assert (not b_lambda!7457))

(assert (not b_lambda!7433))

(assert (not b_lambda!7385))

(assert (not b_lambda!7453))

(assert (not b_lambda!7387))

(assert (not b_lambda!7427))

(assert (not b_lambda!7431))

(assert b_and!7133)

(assert b_and!7131)

(assert (not b_lambda!7449))

(assert (not b_lambda!7417))

(assert (not b_lambda!7455))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4769))

(assert (not b_next!4767))

(assert (not b_next!4773))

(assert b_and!7135)

(assert b_and!7133)

(assert b_and!7131)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7461 () Bool)

(assert (= b_lambda!7383 (or (and d!11053 (= lambda!3521 s3!1)) b_lambda!7461)))

(declare-fun bs!4902 () Bool)

(declare-fun d!11055 () Bool)

(assert (= bs!4902 (and d!11055 d!11053)))

(declare-fun res!5431 () Bool)

(declare-fun e!7820 () Bool)

(assert (=> bs!4902 (=> res!5431 e!7820)))

(assert (=> bs!4902 (= res!5431 (dynLambda!558 s1!23 #b00000000000000000000000000000011))))

(assert (=> bs!4902 (= (dynLambda!558 lambda!3521 #b00000000000000000000000000000011) e!7820)))

(declare-fun b!14152 () Bool)

(assert (=> b!14152 (= e!7820 (dynLambda!558 s2!22 #b00000000000000000000000000000011))))

(assert (= (and bs!4902 (not res!5431)) b!14152))

(declare-fun b_lambda!7467 () Bool)

(assert (=> (not b_lambda!7467) (not bs!4902)))

(declare-fun t!4113 () Bool)

(declare-fun tb!3731 () Bool)

(assert (=> (and start!3008 (= s1!23 s1!23) t!4113) tb!3731))

(declare-fun result!3803 () Bool)

(assert (=> tb!3731 (= result!3803 true)))

(assert (=> bs!4902 t!4113))

(declare-fun b_and!7137 () Bool)

(assert (= b_and!7131 (and (=> t!4113 result!3803) b_and!7137)))

(declare-fun t!4115 () Bool)

(declare-fun tb!3733 () Bool)

(assert (=> (and start!3008 (= s2!22 s1!23) t!4115) tb!3733))

(declare-fun result!3805 () Bool)

(assert (=> tb!3733 (= result!3805 true)))

(assert (=> bs!4902 t!4115))

(declare-fun b_and!7139 () Bool)

(assert (= b_and!7133 (and (=> t!4115 result!3805) b_and!7139)))

(declare-fun tb!3735 () Bool)

(declare-fun t!4117 () Bool)

(assert (=> (and start!3008 (= s3!1 s1!23) t!4117) tb!3735))

(declare-fun result!3807 () Bool)

(assert (=> tb!3735 (= result!3807 true)))

(assert (=> bs!4902 t!4117))

(declare-fun b_and!7141 () Bool)

(assert (= b_and!7135 (and (=> t!4117 result!3807) b_and!7141)))

(declare-fun b_lambda!7469 () Bool)

(assert (=> (not b_lambda!7469) (not b!14152)))

(declare-fun t!4119 () Bool)

(declare-fun tb!3737 () Bool)

(assert (=> (and start!3008 (= s1!23 s2!22) t!4119) tb!3737))

(declare-fun result!3809 () Bool)

(assert (=> tb!3737 (= result!3809 true)))

(assert (=> b!14152 t!4119))

(declare-fun b_and!7143 () Bool)

(assert (= b_and!7137 (and (=> t!4119 result!3809) b_and!7143)))

(declare-fun t!4121 () Bool)

(declare-fun tb!3739 () Bool)

(assert (=> (and start!3008 (= s2!22 s2!22) t!4121) tb!3739))

(declare-fun result!3811 () Bool)

(assert (=> tb!3739 (= result!3811 true)))

(assert (=> b!14152 t!4121))

(declare-fun b_and!7145 () Bool)

(assert (= b_and!7139 (and (=> t!4121 result!3811) b_and!7145)))

(declare-fun t!4123 () Bool)

(declare-fun tb!3741 () Bool)

(assert (=> (and start!3008 (= s3!1 s2!22) t!4123) tb!3741))

(declare-fun result!3813 () Bool)

(assert (=> tb!3741 (= result!3813 true)))

(assert (=> b!14152 t!4123))

(declare-fun b_and!7147 () Bool)

(assert (= b_and!7141 (and (=> t!4123 result!3813) b_and!7147)))

(declare-fun m!18029 () Bool)

(assert (=> bs!4902 m!18029))

(declare-fun m!18031 () Bool)

(assert (=> b!14152 m!18031))

(assert (=> (and d!11053 (= lambda!3521 s3!1) b!14134) d!11055))

(declare-fun b_lambda!7463 () Bool)

(assert (= b_lambda!7385 (or (and d!11053 (= lambda!3521 s3!1)) b_lambda!7463)))

(declare-fun bs!4903 () Bool)

(declare-fun d!11057 () Bool)

(assert (= bs!4903 (and d!11057 d!11053)))

(declare-fun res!5432 () Bool)

(declare-fun e!7821 () Bool)

(assert (=> bs!4903 (=> res!5432 e!7821)))

(assert (=> bs!4903 (= res!5432 (dynLambda!558 s1!23 #b00000000000000000000000000000001))))

(assert (=> bs!4903 (= (dynLambda!558 lambda!3521 #b00000000000000000000000000000001) e!7821)))

(declare-fun b!14153 () Bool)

(assert (=> b!14153 (= e!7821 (dynLambda!558 s2!22 #b00000000000000000000000000000001))))

(assert (= (and bs!4903 (not res!5432)) b!14153))

(declare-fun b_lambda!7471 () Bool)

(assert (=> (not b_lambda!7471) (not bs!4903)))

(declare-fun t!4125 () Bool)

(declare-fun tb!3743 () Bool)

(assert (=> (and start!3008 (= s1!23 s1!23) t!4125) tb!3743))

(declare-fun result!3815 () Bool)

(assert (=> tb!3743 (= result!3815 true)))

(assert (=> bs!4903 t!4125))

(declare-fun b_and!7149 () Bool)

(assert (= b_and!7143 (and (=> t!4125 result!3815) b_and!7149)))

(declare-fun tb!3745 () Bool)

(declare-fun t!4127 () Bool)

(assert (=> (and start!3008 (= s2!22 s1!23) t!4127) tb!3745))

(declare-fun result!3817 () Bool)

(assert (=> tb!3745 (= result!3817 true)))

(assert (=> bs!4903 t!4127))

(declare-fun b_and!7151 () Bool)

(assert (= b_and!7145 (and (=> t!4127 result!3817) b_and!7151)))

(declare-fun tb!3747 () Bool)

(declare-fun t!4129 () Bool)

(assert (=> (and start!3008 (= s3!1 s1!23) t!4129) tb!3747))

(declare-fun result!3819 () Bool)

(assert (=> tb!3747 (= result!3819 true)))

(assert (=> bs!4903 t!4129))

(declare-fun b_and!7153 () Bool)

(assert (= b_and!7147 (and (=> t!4129 result!3819) b_and!7153)))

(declare-fun b_lambda!7473 () Bool)

(assert (=> (not b_lambda!7473) (not b!14153)))

(declare-fun tb!3749 () Bool)

(declare-fun t!4131 () Bool)

(assert (=> (and start!3008 (= s1!23 s2!22) t!4131) tb!3749))

(declare-fun result!3821 () Bool)

(assert (=> tb!3749 (= result!3821 true)))

(assert (=> b!14153 t!4131))

(declare-fun b_and!7155 () Bool)

(assert (= b_and!7149 (and (=> t!4131 result!3821) b_and!7155)))

(declare-fun t!4133 () Bool)

(declare-fun tb!3751 () Bool)

(assert (=> (and start!3008 (= s2!22 s2!22) t!4133) tb!3751))

(declare-fun result!3823 () Bool)

(assert (=> tb!3751 (= result!3823 true)))

(assert (=> b!14153 t!4133))

(declare-fun b_and!7157 () Bool)

(assert (= b_and!7151 (and (=> t!4133 result!3823) b_and!7157)))

(declare-fun tb!3753 () Bool)

(declare-fun t!4135 () Bool)

(assert (=> (and start!3008 (= s3!1 s2!22) t!4135) tb!3753))

(declare-fun result!3825 () Bool)

(assert (=> tb!3753 (= result!3825 true)))

(assert (=> b!14153 t!4135))

(declare-fun b_and!7159 () Bool)

(assert (= b_and!7153 (and (=> t!4135 result!3825) b_and!7159)))

(declare-fun m!18033 () Bool)

(assert (=> bs!4903 m!18033))

(declare-fun m!18035 () Bool)

(assert (=> b!14153 m!18035))

(assert (=> (and d!11053 (= lambda!3521 s3!1) b!14135) d!11057))

(declare-fun b_lambda!7465 () Bool)

(assert (= b_lambda!7387 (or (and d!11053 (= lambda!3521 s3!1)) b_lambda!7465)))

(declare-fun bs!4904 () Bool)

(declare-fun d!11059 () Bool)

(assert (= bs!4904 (and d!11059 d!11053)))

(declare-fun res!5433 () Bool)

(declare-fun e!7822 () Bool)

(assert (=> bs!4904 (=> res!5433 e!7822)))

(assert (=> bs!4904 (= res!5433 (dynLambda!558 s1!23 #b00000000000000000000000000000010))))

(assert (=> bs!4904 (= (dynLambda!558 lambda!3521 #b00000000000000000000000000000010) e!7822)))

(declare-fun b!14154 () Bool)

(assert (=> b!14154 (= e!7822 (dynLambda!558 s2!22 #b00000000000000000000000000000010))))

(assert (= (and bs!4904 (not res!5433)) b!14154))

(declare-fun b_lambda!7475 () Bool)

(assert (=> (not b_lambda!7475) (not bs!4904)))

(declare-fun t!4137 () Bool)

(declare-fun tb!3755 () Bool)

(assert (=> (and start!3008 (= s1!23 s1!23) t!4137) tb!3755))

(declare-fun result!3827 () Bool)

(assert (=> tb!3755 (= result!3827 true)))

(assert (=> bs!4904 t!4137))

(declare-fun b_and!7161 () Bool)

(assert (= b_and!7155 (and (=> t!4137 result!3827) b_and!7161)))

(declare-fun t!4139 () Bool)

(declare-fun tb!3757 () Bool)

(assert (=> (and start!3008 (= s2!22 s1!23) t!4139) tb!3757))

(declare-fun result!3829 () Bool)

(assert (=> tb!3757 (= result!3829 true)))

(assert (=> bs!4904 t!4139))

(declare-fun b_and!7163 () Bool)

(assert (= b_and!7157 (and (=> t!4139 result!3829) b_and!7163)))

(declare-fun t!4141 () Bool)

(declare-fun tb!3759 () Bool)

(assert (=> (and start!3008 (= s3!1 s1!23) t!4141) tb!3759))

(declare-fun result!3831 () Bool)

(assert (=> tb!3759 (= result!3831 true)))

(assert (=> bs!4904 t!4141))

(declare-fun b_and!7165 () Bool)

(assert (= b_and!7159 (and (=> t!4141 result!3831) b_and!7165)))

(declare-fun b_lambda!7477 () Bool)

(assert (=> (not b_lambda!7477) (not b!14154)))

(declare-fun t!4143 () Bool)

(declare-fun tb!3761 () Bool)

(assert (=> (and start!3008 (= s1!23 s2!22) t!4143) tb!3761))

(declare-fun result!3833 () Bool)

(assert (=> tb!3761 (= result!3833 true)))

(assert (=> b!14154 t!4143))

(declare-fun b_and!7167 () Bool)

(assert (= b_and!7161 (and (=> t!4143 result!3833) b_and!7167)))

(declare-fun t!4145 () Bool)

(declare-fun tb!3763 () Bool)

(assert (=> (and start!3008 (= s2!22 s2!22) t!4145) tb!3763))

(declare-fun result!3835 () Bool)

(assert (=> tb!3763 (= result!3835 true)))

(assert (=> b!14154 t!4145))

(declare-fun b_and!7169 () Bool)

(assert (= b_and!7163 (and (=> t!4145 result!3835) b_and!7169)))

(declare-fun t!4147 () Bool)

(declare-fun tb!3765 () Bool)

(assert (=> (and start!3008 (= s3!1 s2!22) t!4147) tb!3765))

(declare-fun result!3837 () Bool)

(assert (=> tb!3765 (= result!3837 true)))

(assert (=> b!14154 t!4147))

(declare-fun b_and!7171 () Bool)

(assert (= b_and!7165 (and (=> t!4147 result!3837) b_and!7171)))

(declare-fun m!18037 () Bool)

(assert (=> bs!4904 m!18037))

(declare-fun m!18039 () Bool)

(assert (=> b!14154 m!18039))

(assert (=> (and d!11053 (= lambda!3521 s3!1) b!14138) d!11059))

(push 1)

(assert (not b_lambda!7451))

(assert (not b_lambda!7473))

(assert b_and!7171)

(assert (not b_lambda!7469))

(assert (not b_lambda!7419))

(assert (not b_lambda!7421))

(assert (not b_lambda!7413))

(assert (not b_lambda!7425))

(assert (not b_lambda!7423))

(assert (not b_next!4769))

(assert (not b_lambda!7465))

(assert (not b_lambda!7435))

(assert (not b_lambda!7459))

(assert (not b_lambda!7415))

(assert b_and!7169)

(assert (not b_next!4767))

(assert (not b_next!4773))

(assert (not b_lambda!7429))

(assert (not b_lambda!7475))

(assert (not b_lambda!7457))

(assert (not b_lambda!7461))

(assert (not b_lambda!7433))

(assert (not b_lambda!7467))

(assert (not b_lambda!7453))

(assert (not b_lambda!7427))

(assert (not b_lambda!7431))

(assert (not b_lambda!7449))

(assert (not b_lambda!7471))

(assert b_and!7167)

(assert (not b_lambda!7417))

(assert (not b_lambda!7463))

(assert (not b_lambda!7455))

(assert (not b_lambda!7477))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7171)

(assert (not b_next!4769))

(assert b_and!7169)

(assert (not b_next!4767))

(assert (not b_next!4773))

(assert b_and!7167)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7479 () Bool)

(assert (= b_lambda!7477 (or (and start!3008 b_free!2035 (= s3!1 s2!22)) (and start!3008 b_free!2033) (and start!3008 (= lambda!3514 s2!22)) (and start!3008 (= lambda!3518 s2!22)) (and start!3008 (= lambda!3515 s2!22)) (and start!3008 (= lambda!3517 s2!22)) (and start!3008 b_free!2031 (= s1!23 s2!22)) (and start!3008 (= lambda!3516 s2!22)) b_lambda!7479)))

(declare-fun bs!4905 () Bool)

(declare-fun d!11061 () Bool)

(assert (= bs!4905 (and d!11061 start!3008)))

(declare-fun res!5434 () Bool)

(declare-fun e!7823 () Bool)

(assert (=> bs!4905 (=> res!5434 e!7823)))

(assert (=> bs!4905 (= res!5434 (dynLambda!558 lambda!3516 #b00000000000000000000000000000010))))

(assert (=> bs!4905 (= (dynLambda!558 lambda!3518 #b00000000000000000000000000000010) e!7823)))

(declare-fun b!14155 () Bool)

(assert (=> b!14155 (= e!7823 (dynLambda!558 lambda!3517 #b00000000000000000000000000000010))))

(assert (= (and bs!4905 (not res!5434)) b!14155))

(declare-fun b_lambda!7491 () Bool)

(assert (=> (not b_lambda!7491) (not bs!4905)))

(declare-fun b_lambda!7493 () Bool)

(assert (=> (not b_lambda!7493) (not b!14155)))

(assert (=> bs!4905 m!18021))

(assert (=> b!14155 m!18023))

(assert (=> (and start!3008 (= lambda!3518 s2!22) b!14154) d!11061))

(declare-fun bs!4906 () Bool)

(declare-fun d!11063 () Bool)

(assert (= bs!4906 (and d!11063 start!3008)))

(assert (=> bs!4906 (= (dynLambda!558 lambda!3516 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000010))))

(assert (=> (and start!3008 (= lambda!3516 s2!22) b!14154) d!11063))

(declare-fun bs!4907 () Bool)

(declare-fun d!11065 () Bool)

(assert (= bs!4907 (and d!11065 start!3008)))

(declare-fun res!5435 () Bool)

(declare-fun e!7824 () Bool)

(assert (=> bs!4907 (=> res!5435 e!7824)))

(assert (=> bs!4907 (= res!5435 (dynLambda!558 lambda!3515 #b00000000000000000000000000000010))))

(assert (=> bs!4907 (= (dynLambda!558 lambda!3514 #b00000000000000000000000000000010) e!7824)))

(declare-fun b!14156 () Bool)

(assert (=> b!14156 (= e!7824 (dynLambda!558 lambda!3518 #b00000000000000000000000000000010))))

(assert (= (and bs!4907 (not res!5435)) b!14156))

(declare-fun b_lambda!7495 () Bool)

(assert (=> (not b_lambda!7495) (not bs!4907)))

(declare-fun b_lambda!7497 () Bool)

(assert (=> (not b_lambda!7497) (not b!14156)))

(assert (=> bs!4907 m!18025))

(assert (=> b!14156 m!18027))

(assert (=> (and start!3008 (= lambda!3514 s2!22) b!14154) d!11065))

(declare-fun bs!4908 () Bool)

(declare-fun d!11067 () Bool)

(assert (= bs!4908 (and d!11067 start!3008)))

(assert (=> bs!4908 (= (dynLambda!558 lambda!3515 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000001))))

(assert (=> (and start!3008 (= lambda!3515 s2!22) b!14154) d!11067))

(declare-fun bs!4909 () Bool)

(declare-fun d!11069 () Bool)

(assert (= bs!4909 (and d!11069 start!3008)))

(assert (=> bs!4909 (= (dynLambda!558 lambda!3517 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000011))))

(assert (=> (and start!3008 (= lambda!3517 s2!22) b!14154) d!11069))

(declare-fun b_lambda!7481 () Bool)

(assert (= b_lambda!7467 (or (and start!3008 b_free!2033 (= s2!22 s1!23)) (and start!3008 (= lambda!3516 s1!23)) (and start!3008 (= lambda!3518 s1!23)) (and start!3008 (= lambda!3517 s1!23)) (and start!3008 (= lambda!3514 s1!23)) (and start!3008 b_free!2031) (and start!3008 b_free!2035 (= s3!1 s1!23)) (and start!3008 (= lambda!3515 s1!23)) b_lambda!7481)))

(declare-fun bs!4910 () Bool)

(declare-fun d!11071 () Bool)

(assert (= bs!4910 (and d!11071 start!3008)))

(declare-fun res!5436 () Bool)

(declare-fun e!7825 () Bool)

(assert (=> bs!4910 (=> res!5436 e!7825)))

(assert (=> bs!4910 (= res!5436 (dynLambda!558 lambda!3516 #b00000000000000000000000000000011))))

(assert (=> bs!4910 (= (dynLambda!558 lambda!3518 #b00000000000000000000000000000011) e!7825)))

(declare-fun b!14157 () Bool)

(assert (=> b!14157 (= e!7825 (dynLambda!558 lambda!3517 #b00000000000000000000000000000011))))

(assert (= (and bs!4910 (not res!5436)) b!14157))

(declare-fun b_lambda!7499 () Bool)

(assert (=> (not b_lambda!7499) (not bs!4910)))

(declare-fun b_lambda!7501 () Bool)

(assert (=> (not b_lambda!7501) (not b!14157)))

(assert (=> bs!4910 m!18009))

(assert (=> b!14157 m!18011))

(assert (=> (and start!3008 (= lambda!3518 s1!23) bs!4902) d!11071))

(declare-fun bs!4911 () Bool)

(declare-fun d!11073 () Bool)

(assert (= bs!4911 (and d!11073 start!3008)))

(assert (=> bs!4911 (= (dynLambda!558 lambda!3515 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000001))))

(assert (=> (and start!3008 (= lambda!3515 s1!23) bs!4902) d!11073))

(declare-fun bs!4912 () Bool)

(declare-fun d!11075 () Bool)

(assert (= bs!4912 (and d!11075 start!3008)))

(declare-fun res!5437 () Bool)

(declare-fun e!7826 () Bool)

(assert (=> bs!4912 (=> res!5437 e!7826)))

(assert (=> bs!4912 (= res!5437 (dynLambda!558 lambda!3515 #b00000000000000000000000000000011))))

(assert (=> bs!4912 (= (dynLambda!558 lambda!3514 #b00000000000000000000000000000011) e!7826)))

(declare-fun b!14158 () Bool)

(assert (=> b!14158 (= e!7826 (dynLambda!558 lambda!3518 #b00000000000000000000000000000011))))

(assert (= (and bs!4912 (not res!5437)) b!14158))

(declare-fun b_lambda!7503 () Bool)

(assert (=> (not b_lambda!7503) (not bs!4912)))

(declare-fun b_lambda!7505 () Bool)

(assert (=> (not b_lambda!7505) (not b!14158)))

(assert (=> bs!4912 m!18005))

(assert (=> b!14158 m!18007))

(assert (=> (and start!3008 (= lambda!3514 s1!23) bs!4902) d!11075))

(declare-fun bs!4913 () Bool)

(declare-fun d!11077 () Bool)

(assert (= bs!4913 (and d!11077 start!3008)))

(assert (=> bs!4913 (= (dynLambda!558 lambda!3516 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000010))))

(assert (=> (and start!3008 (= lambda!3516 s1!23) bs!4902) d!11077))

(declare-fun bs!4914 () Bool)

(declare-fun d!11079 () Bool)

(assert (= bs!4914 (and d!11079 start!3008)))

(assert (=> bs!4914 (= (dynLambda!558 lambda!3517 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000011))))

(assert (=> (and start!3008 (= lambda!3517 s1!23) bs!4902) d!11079))

(declare-fun b_lambda!7483 () Bool)

(assert (= b_lambda!7475 (or (and start!3008 b_free!2033 (= s2!22 s1!23)) (and start!3008 (= lambda!3516 s1!23)) (and start!3008 (= lambda!3518 s1!23)) (and start!3008 (= lambda!3517 s1!23)) (and start!3008 (= lambda!3514 s1!23)) (and start!3008 b_free!2031) (and start!3008 b_free!2035 (= s3!1 s1!23)) (and start!3008 (= lambda!3515 s1!23)) b_lambda!7483)))

(declare-fun bs!4915 () Bool)

(declare-fun d!11081 () Bool)

(assert (= bs!4915 (and d!11081 start!3008)))

(assert (=> bs!4915 (= (dynLambda!558 lambda!3516 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000010))))

(assert (=> (and start!3008 (= lambda!3516 s1!23) bs!4904) d!11081))

(declare-fun bs!4916 () Bool)

(declare-fun d!11083 () Bool)

(assert (= bs!4916 (and d!11083 start!3008)))

(assert (=> bs!4916 (= (dynLambda!558 lambda!3517 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000011))))

(assert (=> (and start!3008 (= lambda!3517 s1!23) bs!4904) d!11083))

(declare-fun bs!4917 () Bool)

(declare-fun d!11085 () Bool)

(assert (= bs!4917 (and d!11085 start!3008)))

(declare-fun res!5438 () Bool)

(declare-fun e!7827 () Bool)

(assert (=> bs!4917 (=> res!5438 e!7827)))

(assert (=> bs!4917 (= res!5438 (dynLambda!558 lambda!3515 #b00000000000000000000000000000010))))

(assert (=> bs!4917 (= (dynLambda!558 lambda!3514 #b00000000000000000000000000000010) e!7827)))

(declare-fun b!14159 () Bool)

(assert (=> b!14159 (= e!7827 (dynLambda!558 lambda!3518 #b00000000000000000000000000000010))))

(assert (= (and bs!4917 (not res!5438)) b!14159))

(declare-fun b_lambda!7507 () Bool)

(assert (=> (not b_lambda!7507) (not bs!4917)))

(declare-fun b_lambda!7509 () Bool)

(assert (=> (not b_lambda!7509) (not b!14159)))

(assert (=> bs!4917 m!18025))

(assert (=> b!14159 m!18027))

(assert (=> (and start!3008 (= lambda!3514 s1!23) bs!4904) d!11085))

(declare-fun bs!4918 () Bool)

(declare-fun d!11087 () Bool)

(assert (= bs!4918 (and d!11087 start!3008)))

(assert (=> bs!4918 (= (dynLambda!558 lambda!3515 #b00000000000000000000000000000010) (= #b00000000000000000000000000000010 #b00000000000000000000000000000001))))

(assert (=> (and start!3008 (= lambda!3515 s1!23) bs!4904) d!11087))

(declare-fun bs!4919 () Bool)

(declare-fun d!11089 () Bool)

(assert (= bs!4919 (and d!11089 start!3008)))

(declare-fun res!5439 () Bool)

(declare-fun e!7828 () Bool)

(assert (=> bs!4919 (=> res!5439 e!7828)))

(assert (=> bs!4919 (= res!5439 (dynLambda!558 lambda!3516 #b00000000000000000000000000000010))))

(assert (=> bs!4919 (= (dynLambda!558 lambda!3518 #b00000000000000000000000000000010) e!7828)))

(declare-fun b!14160 () Bool)

(assert (=> b!14160 (= e!7828 (dynLambda!558 lambda!3517 #b00000000000000000000000000000010))))

(assert (= (and bs!4919 (not res!5439)) b!14160))

(declare-fun b_lambda!7511 () Bool)

(assert (=> (not b_lambda!7511) (not bs!4919)))

(declare-fun b_lambda!7513 () Bool)

(assert (=> (not b_lambda!7513) (not b!14160)))

(assert (=> bs!4919 m!18021))

(assert (=> b!14160 m!18023))

(assert (=> (and start!3008 (= lambda!3518 s1!23) bs!4904) d!11089))

(declare-fun b_lambda!7485 () Bool)

(assert (= b_lambda!7473 (or (and start!3008 b_free!2035 (= s3!1 s2!22)) (and start!3008 b_free!2033) (and start!3008 (= lambda!3514 s2!22)) (and start!3008 (= lambda!3518 s2!22)) (and start!3008 (= lambda!3515 s2!22)) (and start!3008 (= lambda!3517 s2!22)) (and start!3008 b_free!2031 (= s1!23 s2!22)) (and start!3008 (= lambda!3516 s2!22)) b_lambda!7485)))

(declare-fun bs!4920 () Bool)

(declare-fun d!11091 () Bool)

(assert (= bs!4920 (and d!11091 start!3008)))

(declare-fun res!5440 () Bool)

(declare-fun e!7829 () Bool)

(assert (=> bs!4920 (=> res!5440 e!7829)))

(assert (=> bs!4920 (= res!5440 (dynLambda!558 lambda!3516 #b00000000000000000000000000000001))))

(assert (=> bs!4920 (= (dynLambda!558 lambda!3518 #b00000000000000000000000000000001) e!7829)))

(declare-fun b!14161 () Bool)

(assert (=> b!14161 (= e!7829 (dynLambda!558 lambda!3517 #b00000000000000000000000000000001))))

(assert (= (and bs!4920 (not res!5440)) b!14161))

(declare-fun b_lambda!7515 () Bool)

(assert (=> (not b_lambda!7515) (not bs!4920)))

(declare-fun b_lambda!7517 () Bool)

(assert (=> (not b_lambda!7517) (not b!14161)))

(assert (=> bs!4920 m!18013))

(assert (=> b!14161 m!18015))

(assert (=> (and start!3008 (= lambda!3518 s2!22) b!14153) d!11091))

(declare-fun bs!4921 () Bool)

(declare-fun d!11093 () Bool)

(assert (= bs!4921 (and d!11093 start!3008)))

(assert (=> bs!4921 (= (dynLambda!558 lambda!3515 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000001))))

(assert (=> (and start!3008 (= lambda!3515 s2!22) b!14153) d!11093))

(declare-fun bs!4922 () Bool)

(declare-fun d!11095 () Bool)

(assert (= bs!4922 (and d!11095 start!3008)))

(declare-fun res!5441 () Bool)

(declare-fun e!7830 () Bool)

(assert (=> bs!4922 (=> res!5441 e!7830)))

(assert (=> bs!4922 (= res!5441 (dynLambda!558 lambda!3515 #b00000000000000000000000000000001))))

(assert (=> bs!4922 (= (dynLambda!558 lambda!3514 #b00000000000000000000000000000001) e!7830)))

(declare-fun b!14162 () Bool)

(assert (=> b!14162 (= e!7830 (dynLambda!558 lambda!3518 #b00000000000000000000000000000001))))

(assert (= (and bs!4922 (not res!5441)) b!14162))

(declare-fun b_lambda!7519 () Bool)

(assert (=> (not b_lambda!7519) (not bs!4922)))

(declare-fun b_lambda!7521 () Bool)

(assert (=> (not b_lambda!7521) (not b!14162)))

(assert (=> bs!4922 m!18017))

(assert (=> b!14162 m!18019))

(assert (=> (and start!3008 (= lambda!3514 s2!22) b!14153) d!11095))

(declare-fun bs!4923 () Bool)

(declare-fun d!11097 () Bool)

(assert (= bs!4923 (and d!11097 start!3008)))

(assert (=> bs!4923 (= (dynLambda!558 lambda!3517 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000011))))

(assert (=> (and start!3008 (= lambda!3517 s2!22) b!14153) d!11097))

(declare-fun bs!4924 () Bool)

(declare-fun d!11099 () Bool)

(assert (= bs!4924 (and d!11099 start!3008)))

(assert (=> bs!4924 (= (dynLambda!558 lambda!3516 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000010))))

(assert (=> (and start!3008 (= lambda!3516 s2!22) b!14153) d!11099))

(declare-fun b_lambda!7487 () Bool)

(assert (= b_lambda!7471 (or (and start!3008 b_free!2033 (= s2!22 s1!23)) (and start!3008 (= lambda!3516 s1!23)) (and start!3008 (= lambda!3518 s1!23)) (and start!3008 (= lambda!3517 s1!23)) (and start!3008 (= lambda!3514 s1!23)) (and start!3008 b_free!2031) (and start!3008 b_free!2035 (= s3!1 s1!23)) (and start!3008 (= lambda!3515 s1!23)) b_lambda!7487)))

(declare-fun bs!4925 () Bool)

(declare-fun d!11101 () Bool)

(assert (= bs!4925 (and d!11101 start!3008)))

(declare-fun res!5442 () Bool)

(declare-fun e!7831 () Bool)

(assert (=> bs!4925 (=> res!5442 e!7831)))

(assert (=> bs!4925 (= res!5442 (dynLambda!558 lambda!3516 #b00000000000000000000000000000001))))

(assert (=> bs!4925 (= (dynLambda!558 lambda!3518 #b00000000000000000000000000000001) e!7831)))

(declare-fun b!14163 () Bool)

(assert (=> b!14163 (= e!7831 (dynLambda!558 lambda!3517 #b00000000000000000000000000000001))))

(assert (= (and bs!4925 (not res!5442)) b!14163))

(declare-fun b_lambda!7523 () Bool)

(assert (=> (not b_lambda!7523) (not bs!4925)))

(declare-fun b_lambda!7525 () Bool)

(assert (=> (not b_lambda!7525) (not b!14163)))

(assert (=> bs!4925 m!18013))

(assert (=> b!14163 m!18015))

(assert (=> (and start!3008 (= lambda!3518 s1!23) bs!4903) d!11101))

(declare-fun bs!4926 () Bool)

(declare-fun d!11103 () Bool)

(assert (= bs!4926 (and d!11103 start!3008)))

(declare-fun res!5443 () Bool)

(declare-fun e!7832 () Bool)

(assert (=> bs!4926 (=> res!5443 e!7832)))

(assert (=> bs!4926 (= res!5443 (dynLambda!558 lambda!3515 #b00000000000000000000000000000001))))

(assert (=> bs!4926 (= (dynLambda!558 lambda!3514 #b00000000000000000000000000000001) e!7832)))

(declare-fun b!14164 () Bool)

(assert (=> b!14164 (= e!7832 (dynLambda!558 lambda!3518 #b00000000000000000000000000000001))))

(assert (= (and bs!4926 (not res!5443)) b!14164))

(declare-fun b_lambda!7527 () Bool)

(assert (=> (not b_lambda!7527) (not bs!4926)))

(declare-fun b_lambda!7529 () Bool)

(assert (=> (not b_lambda!7529) (not b!14164)))

(assert (=> bs!4926 m!18017))

(assert (=> b!14164 m!18019))

(assert (=> (and start!3008 (= lambda!3514 s1!23) bs!4903) d!11103))

(declare-fun bs!4927 () Bool)

(declare-fun d!11105 () Bool)

(assert (= bs!4927 (and d!11105 start!3008)))

(assert (=> bs!4927 (= (dynLambda!558 lambda!3515 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000001))))

(assert (=> (and start!3008 (= lambda!3515 s1!23) bs!4903) d!11105))

(declare-fun bs!4928 () Bool)

(declare-fun d!11107 () Bool)

(assert (= bs!4928 (and d!11107 start!3008)))

(assert (=> bs!4928 (= (dynLambda!558 lambda!3516 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000010))))

(assert (=> (and start!3008 (= lambda!3516 s1!23) bs!4903) d!11107))

(declare-fun bs!4929 () Bool)

(declare-fun d!11109 () Bool)

(assert (= bs!4929 (and d!11109 start!3008)))

(assert (=> bs!4929 (= (dynLambda!558 lambda!3517 #b00000000000000000000000000000001) (= #b00000000000000000000000000000001 #b00000000000000000000000000000011))))

(assert (=> (and start!3008 (= lambda!3517 s1!23) bs!4903) d!11109))

(declare-fun b_lambda!7489 () Bool)

(assert (= b_lambda!7469 (or (and start!3008 b_free!2035 (= s3!1 s2!22)) (and start!3008 b_free!2033) (and start!3008 (= lambda!3514 s2!22)) (and start!3008 (= lambda!3518 s2!22)) (and start!3008 (= lambda!3515 s2!22)) (and start!3008 (= lambda!3517 s2!22)) (and start!3008 b_free!2031 (= s1!23 s2!22)) (and start!3008 (= lambda!3516 s2!22)) b_lambda!7489)))

(declare-fun bs!4930 () Bool)

(declare-fun d!11111 () Bool)

(assert (= bs!4930 (and d!11111 start!3008)))

(assert (=> bs!4930 (= (dynLambda!558 lambda!3516 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000010))))

(assert (=> (and start!3008 (= lambda!3516 s2!22) b!14152) d!11111))

(declare-fun bs!4931 () Bool)

(declare-fun d!11113 () Bool)

(assert (= bs!4931 (and d!11113 start!3008)))

(assert (=> bs!4931 (= (dynLambda!558 lambda!3515 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000001))))

(assert (=> (and start!3008 (= lambda!3515 s2!22) b!14152) d!11113))

(declare-fun bs!4932 () Bool)

(declare-fun d!11115 () Bool)

(assert (= bs!4932 (and d!11115 start!3008)))

(declare-fun res!5444 () Bool)

(declare-fun e!7833 () Bool)

(assert (=> bs!4932 (=> res!5444 e!7833)))

(assert (=> bs!4932 (= res!5444 (dynLambda!558 lambda!3516 #b00000000000000000000000000000011))))

(assert (=> bs!4932 (= (dynLambda!558 lambda!3518 #b00000000000000000000000000000011) e!7833)))

(declare-fun b!14165 () Bool)

(assert (=> b!14165 (= e!7833 (dynLambda!558 lambda!3517 #b00000000000000000000000000000011))))

(assert (= (and bs!4932 (not res!5444)) b!14165))

(declare-fun b_lambda!7531 () Bool)

(assert (=> (not b_lambda!7531) (not bs!4932)))

(declare-fun b_lambda!7533 () Bool)

(assert (=> (not b_lambda!7533) (not b!14165)))

(assert (=> bs!4932 m!18009))

(assert (=> b!14165 m!18011))

(assert (=> (and start!3008 (= lambda!3518 s2!22) b!14152) d!11115))

(declare-fun bs!4933 () Bool)

(declare-fun d!11117 () Bool)

(assert (= bs!4933 (and d!11117 start!3008)))

(declare-fun res!5445 () Bool)

(declare-fun e!7834 () Bool)

(assert (=> bs!4933 (=> res!5445 e!7834)))

(assert (=> bs!4933 (= res!5445 (dynLambda!558 lambda!3515 #b00000000000000000000000000000011))))

(assert (=> bs!4933 (= (dynLambda!558 lambda!3514 #b00000000000000000000000000000011) e!7834)))

(declare-fun b!14166 () Bool)

(assert (=> b!14166 (= e!7834 (dynLambda!558 lambda!3518 #b00000000000000000000000000000011))))

(assert (= (and bs!4933 (not res!5445)) b!14166))

(declare-fun b_lambda!7535 () Bool)

(assert (=> (not b_lambda!7535) (not bs!4933)))

(declare-fun b_lambda!7537 () Bool)

(assert (=> (not b_lambda!7537) (not b!14166)))

(assert (=> bs!4933 m!18005))

(assert (=> b!14166 m!18007))

(assert (=> (and start!3008 (= lambda!3514 s2!22) b!14152) d!11117))

(declare-fun bs!4934 () Bool)

(declare-fun d!11119 () Bool)

(assert (= bs!4934 (and d!11119 start!3008)))

(assert (=> bs!4934 (= (dynLambda!558 lambda!3517 #b00000000000000000000000000000011) (= #b00000000000000000000000000000011 #b00000000000000000000000000000011))))

(assert (=> (and start!3008 (= lambda!3517 s2!22) b!14152) d!11119))

(push 1)

(assert (not b_lambda!7505))

(assert (not b_lambda!7451))

(assert (not b_lambda!7509))

(assert (not b_lambda!7487))

(assert b_and!7171)

(assert (not b_lambda!7527))

(assert (not b_lambda!7497))

(assert (not b_lambda!7491))

(assert (not b_lambda!7419))

(assert (not b_lambda!7483))

(assert (not b_lambda!7421))

(assert (not b_lambda!7413))

(assert (not b_lambda!7425))

(assert (not b_lambda!7423))

(assert (not b_lambda!7493))

(assert (not b_lambda!7501))

(assert (not b_next!4769))

(assert (not b_lambda!7535))

(assert (not b_lambda!7519))

(assert (not b_lambda!7507))

(assert (not b_lambda!7465))

(assert (not b_lambda!7435))

(assert (not b_lambda!7459))

(assert (not b_lambda!7415))

(assert b_and!7169)

(assert (not b_lambda!7499))

(assert (not b_next!4767))

(assert (not b_next!4773))

(assert (not b_lambda!7511))

(assert (not b_lambda!7515))

(assert (not b_lambda!7429))

(assert (not b_lambda!7495))

(assert (not b_lambda!7457))

(assert (not b_lambda!7503))

(assert (not b_lambda!7461))

(assert (not b_lambda!7433))

(assert (not b_lambda!7481))

(assert (not b_lambda!7531))

(assert (not b_lambda!7453))

(assert (not b_lambda!7427))

(assert (not b_lambda!7431))

(assert (not b_lambda!7525))

(assert (not b_lambda!7449))

(assert (not b_lambda!7523))

(assert (not b_lambda!7533))

(assert (not b_lambda!7513))

(assert (not b_lambda!7529))

(assert (not b_lambda!7521))

(assert (not b_lambda!7489))

(assert (not b_lambda!7479))

(assert b_and!7167)

(assert (not b_lambda!7417))

(assert (not b_lambda!7463))

(assert (not b_lambda!7517))

(assert (not b_lambda!7455))

(assert (not b_lambda!7537))

(assert (not b_lambda!7485))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7171)

(assert (not b_next!4769))

(assert b_and!7169)

(assert (not b_next!4767))

(assert (not b_next!4773))

(assert b_and!7167)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7539 () Bool)

(assert (= b_lambda!7537 (or start!3008 b_lambda!7539)))

(assert (=> b!14166 d!11043))

(declare-fun b_lambda!7541 () Bool)

(assert (= b_lambda!7523 (or start!3008 b_lambda!7541)))

(assert (=> bs!4925 d!11049))

(declare-fun b_lambda!7543 () Bool)

(assert (= b_lambda!7517 (or start!3008 b_lambda!7543)))

(assert (=> b!14161 d!11039))

(declare-fun b_lambda!7545 () Bool)

(assert (= b_lambda!7501 (or start!3008 b_lambda!7545)))

(assert (=> b!14157 d!11051))

(declare-fun b_lambda!7547 () Bool)

(assert (= b_lambda!7519 (or start!3008 b_lambda!7547)))

(assert (=> bs!4922 d!11045))

(declare-fun b_lambda!7549 () Bool)

(assert (= b_lambda!7495 (or start!3008 b_lambda!7549)))

(assert (=> bs!4907 d!11037))

(declare-fun b_lambda!7551 () Bool)

(assert (= b_lambda!7497 (or start!3008 b_lambda!7551)))

(assert (=> b!14156 d!11041))

(declare-fun b_lambda!7553 () Bool)

(assert (= b_lambda!7513 (or start!3008 b_lambda!7553)))

(assert (=> b!14160 d!11031))

(declare-fun b_lambda!7555 () Bool)

(assert (= b_lambda!7535 (or start!3008 b_lambda!7555)))

(assert (=> bs!4933 d!11035))

(declare-fun b_lambda!7557 () Bool)

(assert (= b_lambda!7515 (or start!3008 b_lambda!7557)))

(assert (=> bs!4920 d!11049))

(declare-fun b_lambda!7559 () Bool)

(assert (= b_lambda!7505 (or start!3008 b_lambda!7559)))

(assert (=> b!14158 d!11043))

(declare-fun b_lambda!7561 () Bool)

(assert (= b_lambda!7527 (or start!3008 b_lambda!7561)))

(assert (=> bs!4926 d!11045))

(declare-fun b_lambda!7563 () Bool)

(assert (= b_lambda!7503 (or start!3008 b_lambda!7563)))

(assert (=> bs!4912 d!11035))

(declare-fun b_lambda!7565 () Bool)

(assert (= b_lambda!7533 (or start!3008 b_lambda!7565)))

(assert (=> b!14165 d!11051))

(declare-fun b_lambda!7567 () Bool)

(assert (= b_lambda!7491 (or start!3008 b_lambda!7567)))

(assert (=> bs!4905 d!11047))

(declare-fun b_lambda!7569 () Bool)

(assert (= b_lambda!7511 (or start!3008 b_lambda!7569)))

(assert (=> bs!4919 d!11047))

(declare-fun b_lambda!7571 () Bool)

(assert (= b_lambda!7529 (or start!3008 b_lambda!7571)))

(assert (=> b!14164 d!11033))

(declare-fun b_lambda!7573 () Bool)

(assert (= b_lambda!7509 (or start!3008 b_lambda!7573)))

(assert (=> b!14159 d!11041))

(declare-fun b_lambda!7575 () Bool)

(assert (= b_lambda!7493 (or start!3008 b_lambda!7575)))

(assert (=> b!14155 d!11031))

(declare-fun b_lambda!7577 () Bool)

(assert (= b_lambda!7525 (or start!3008 b_lambda!7577)))

(assert (=> b!14163 d!11039))

(declare-fun b_lambda!7579 () Bool)

(assert (= b_lambda!7499 (or start!3008 b_lambda!7579)))

(assert (=> bs!4910 d!11029))

(declare-fun b_lambda!7581 () Bool)

(assert (= b_lambda!7521 (or start!3008 b_lambda!7581)))

(assert (=> b!14162 d!11033))

(declare-fun b_lambda!7583 () Bool)

(assert (= b_lambda!7531 (or start!3008 b_lambda!7583)))

(assert (=> bs!4932 d!11029))

(declare-fun b_lambda!7585 () Bool)

(assert (= b_lambda!7507 (or start!3008 b_lambda!7585)))

(assert (=> bs!4917 d!11037))

(push 1)

(assert (not b_lambda!7451))

(assert (not b_lambda!7581))

(assert (not b_lambda!7487))

(assert b_and!7171)

(assert (not b_lambda!7585))

(assert (not b_lambda!7559))

(assert (not b_lambda!7567))

(assert (not b_lambda!7553))

(assert (not b_lambda!7419))

(assert (not b_lambda!7575))

(assert (not b_lambda!7483))

(assert (not b_lambda!7421))

(assert (not b_lambda!7579))

(assert (not b_lambda!7413))

(assert (not b_lambda!7425))

(assert (not b_lambda!7569))

(assert (not b_lambda!7423))

(assert (not b_lambda!7583))

(assert (not b_next!4769))

(assert (not b_lambda!7465))

(assert (not b_lambda!7435))

(assert (not b_lambda!7555))

(assert (not b_lambda!7459))

(assert (not b_lambda!7415))

(assert b_and!7169)

(assert (not b_next!4767))

(assert (not b_next!4773))

(assert (not b_lambda!7541))

(assert (not b_lambda!7561))

(assert (not b_lambda!7571))

(assert (not b_lambda!7573))

(assert (not b_lambda!7429))

(assert (not b_lambda!7457))

(assert (not b_lambda!7461))

(assert (not b_lambda!7433))

(assert (not b_lambda!7549))

(assert (not b_lambda!7481))

(assert (not b_lambda!7565))

(assert (not b_lambda!7453))

(assert (not b_lambda!7427))

(assert (not b_lambda!7557))

(assert (not b_lambda!7431))

(assert (not b_lambda!7577))

(assert (not b_lambda!7449))

(assert (not b_lambda!7551))

(assert (not b_lambda!7547))

(assert (not b_lambda!7489))

(assert (not b_lambda!7479))

(assert (not b_lambda!7563))

(assert b_and!7167)

(assert (not b_lambda!7545))

(assert (not b_lambda!7417))

(assert (not b_lambda!7543))

(assert (not b_lambda!7463))

(assert (not b_lambda!7455))

(assert (not b_lambda!7539))

(assert (not b_lambda!7485))

(check-sat)

(pop 1)

