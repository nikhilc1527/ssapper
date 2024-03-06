; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4374 () Bool)

(assert start!4374)

(declare-fun b!34690 () Bool)

(declare-fun b_free!2087 () Bool)

(declare-fun b_next!4941 () Bool)

(assert (=> b!34690 (= b_free!2087 (not b_next!4941))))

(declare-fun tp!7193 () Bool)

(declare-fun b_and!7493 () Bool)

(assert (=> b!34690 (= tp!7193 b_and!7493)))

(declare-fun b_free!2089 () Bool)

(declare-fun b_next!4943 () Bool)

(assert (=> b!34690 (= b_free!2089 (not b_next!4943))))

(declare-fun tp!7183 () Bool)

(declare-fun b_and!7495 () Bool)

(assert (=> b!34690 (= tp!7183 b_and!7495)))

(declare-fun b_free!2091 () Bool)

(declare-fun b_next!4945 () Bool)

(assert (=> b!34690 (= b_free!2091 (not b_next!4945))))

(declare-fun tp!7188 () Bool)

(declare-fun b_and!7497 () Bool)

(assert (=> b!34690 (= tp!7188 b_and!7497)))

(declare-fun b!34689 () Bool)

(declare-fun b_free!2093 () Bool)

(declare-fun b_next!4947 () Bool)

(assert (=> b!34689 (= b_free!2093 (not b_next!4947))))

(declare-fun tp!7191 () Bool)

(declare-fun b_and!7499 () Bool)

(assert (=> b!34689 (= tp!7191 b_and!7499)))

(declare-fun b_free!2095 () Bool)

(declare-fun b_next!4949 () Bool)

(assert (=> b!34689 (= b_free!2095 (not b_next!4949))))

(declare-fun tp!7192 () Bool)

(declare-fun b_and!7501 () Bool)

(assert (=> b!34689 (= tp!7192 b_and!7501)))

(declare-fun b_free!2097 () Bool)

(declare-fun b_next!4951 () Bool)

(assert (=> b!34689 (= b_free!2097 (not b_next!4951))))

(declare-fun tp!7189 () Bool)

(declare-fun b_and!7503 () Bool)

(assert (=> b!34689 (= tp!7189 b_and!7503)))

(declare-fun b!34686 () Bool)

(declare-fun b_free!2099 () Bool)

(declare-fun b_next!4953 () Bool)

(assert (=> b!34686 (= b_free!2099 (not b_next!4953))))

(declare-fun tp!7181 () Bool)

(declare-fun b_and!7505 () Bool)

(assert (=> b!34686 (= tp!7181 b_and!7505)))

(declare-fun b_free!2101 () Bool)

(declare-fun b_next!4955 () Bool)

(assert (=> b!34686 (= b_free!2101 (not b_next!4955))))

(declare-fun tp!7185 () Bool)

(declare-fun b_and!7507 () Bool)

(assert (=> b!34686 (= tp!7185 b_and!7507)))

(declare-fun b_free!2103 () Bool)

(declare-fun b_next!4957 () Bool)

(assert (=> b!34686 (= b_free!2103 (not b_next!4957))))

(declare-fun tp!7190 () Bool)

(declare-fun b_and!7509 () Bool)

(assert (=> b!34686 (= tp!7190 b_and!7509)))

(declare-fun b!34684 () Bool)

(declare-fun b_free!2105 () Bool)

(declare-fun b_next!4959 () Bool)

(assert (=> b!34684 (= b_free!2105 (not b_next!4959))))

(declare-fun tp!7179 () Bool)

(declare-fun b_and!7511 () Bool)

(assert (=> b!34684 (= tp!7179 b_and!7511)))

(declare-fun b_free!2107 () Bool)

(declare-fun b_next!4961 () Bool)

(assert (=> b!34684 (= b_free!2107 (not b_next!4961))))

(declare-fun tp!7184 () Bool)

(declare-fun b_and!7513 () Bool)

(assert (=> b!34684 (= tp!7184 b_and!7513)))

(declare-fun b_free!2109 () Bool)

(declare-fun b_next!4963 () Bool)

(assert (=> b!34684 (= b_free!2109 (not b_next!4963))))

(declare-fun tp!7186 () Bool)

(declare-fun b_and!7515 () Bool)

(assert (=> b!34684 (= tp!7186 b_and!7515)))

(declare-fun b!34692 () Bool)

(declare-fun b_free!2111 () Bool)

(declare-fun b_next!4965 () Bool)

(assert (=> b!34692 (= b_free!2111 (not b_next!4965))))

(declare-fun tp!7182 () Bool)

(declare-fun b_and!7517 () Bool)

(assert (=> b!34692 (= tp!7182 b_and!7517)))

(declare-fun b_free!2113 () Bool)

(declare-fun b_next!4967 () Bool)

(assert (=> b!34692 (= b_free!2113 (not b_next!4967))))

(declare-fun tp!7187 () Bool)

(declare-fun b_and!7519 () Bool)

(assert (=> b!34692 (= tp!7187 b_and!7519)))

(declare-fun b_free!2115 () Bool)

(declare-fun b_next!4969 () Bool)

(assert (=> b!34692 (= b_free!2115 (not b_next!4969))))

(declare-fun tp!7180 () Bool)

(declare-fun b_and!7521 () Bool)

(assert (=> b!34692 (= tp!7180 b_and!7521)))

(assert (=> start!4374 true))

(declare-fun lambda!4089 () Int)

(declare-datatypes () ((Unit!216 (Unit!217))))

(declare-datatypes () ((RAEqEvidence!4 (RAEqEvidence!5 (x!11068 Int) (y!1107 Int) (evidence!231 Int)))))

(declare-fun x$2!209 () RAEqEvidence!4)

(declare-fun dynLambda!630 (Int) Int)

(assert (=> (and b!34692 start!4374 (= (dynLambda!630 lambda!4089) (dynLambda!630 (y!1107 x$2!209)))) (= lambda!4089 (y!1107 x$2!209))))

(declare-fun x$3!99 () RAEqEvidence!4)

(assert (=> (and b!34690 start!4374 (= (dynLambda!630 lambda!4089) (dynLambda!630 (y!1107 x$3!99)))) (= lambda!4089 (y!1107 x$3!99))))

(declare-fun x$4!78 () RAEqEvidence!4)

(assert (=> (and b!34689 start!4374 (= (dynLambda!630 lambda!4089) (dynLambda!630 (x!11068 x$4!78)))) (= lambda!4089 (x!11068 x$4!78))))

(declare-fun thiss!3938 () RAEqEvidence!4)

(assert (=> (and b!34684 start!4374 (= (dynLambda!630 lambda!4089) (dynLambda!630 (x!11068 thiss!3938)))) (= lambda!4089 (x!11068 thiss!3938))))

(assert (=> (and b!34684 start!4374 (= (dynLambda!630 lambda!4089) (dynLambda!630 (y!1107 thiss!3938)))) (= lambda!4089 (y!1107 thiss!3938))))

(assert (=> (and b!34690 start!4374 (= (dynLambda!630 lambda!4089) (dynLambda!630 (x!11068 x$3!99)))) (= lambda!4089 (x!11068 x$3!99))))

(declare-fun prev!16 () RAEqEvidence!4)

(assert (=> (and b!34686 start!4374 (= (dynLambda!630 lambda!4089) (dynLambda!630 (x!11068 prev!16)))) (= lambda!4089 (x!11068 prev!16))))

(assert (=> (and b!34686 start!4374 (= (dynLambda!630 lambda!4089) (dynLambda!630 (y!1107 prev!16)))) (= lambda!4089 (y!1107 prev!16))))

(assert (=> (and b!34689 start!4374 (= (dynLambda!630 lambda!4089) (dynLambda!630 (y!1107 x$4!78)))) (= lambda!4089 (y!1107 x$4!78))))

(assert (=> (and b!34692 start!4374 (= (dynLambda!630 lambda!4089) (dynLambda!630 (x!11068 x$2!209)))) (= lambda!4089 (x!11068 x$2!209))))

(declare-fun b_next!4971 () Bool)

(assert (=> b!34692 (= b_next!4967 (or (and start!4374 (= lambda!4089 (y!1107 x$2!209))) b_next!4971))))

(declare-fun b_next!4973 () Bool)

(assert (=> b!34690 (= b_next!4943 (or (and start!4374 (= lambda!4089 (y!1107 x$3!99))) b_next!4973))))

(declare-fun b_next!4975 () Bool)

(assert (=> b!34689 (= b_next!4947 (or (and start!4374 (= lambda!4089 (x!11068 x$4!78))) b_next!4975))))

(declare-fun b_next!4977 () Bool)

(assert (=> b!34684 (= b_next!4959 (or (and start!4374 (= lambda!4089 (x!11068 thiss!3938))) b_next!4977))))

(declare-fun b_next!4979 () Bool)

(assert (=> b!34684 (= b_next!4961 (or (and start!4374 (= lambda!4089 (y!1107 thiss!3938))) b_next!4979))))

(declare-fun b_next!4981 () Bool)

(assert (=> b!34690 (= b_next!4941 (or (and start!4374 (= lambda!4089 (x!11068 x$3!99))) b_next!4981))))

(declare-fun b_next!4983 () Bool)

(assert (=> b!34686 (= b_next!4953 (or (and start!4374 (= lambda!4089 (x!11068 prev!16))) b_next!4983))))

(declare-fun b_next!4985 () Bool)

(assert (=> b!34686 (= b_next!4955 (or (and start!4374 (= lambda!4089 (y!1107 prev!16))) b_next!4985))))

(declare-fun b_next!4987 () Bool)

(assert (=> b!34689 (= b_next!4949 (or (and start!4374 (= lambda!4089 (y!1107 x$4!78))) b_next!4987))))

(declare-fun b_next!4989 () Bool)

(assert (=> b!34692 (= b_next!4965 (or (and start!4374 (= lambda!4089 (x!11068 x$2!209))) b_next!4989))))

(assert (=> start!4374 true))

(assert (=> start!4374 true))

(declare-fun lambda!4090 () Int)

(declare-fun b_next!4991 () Bool)

(assert (=> b!34689 (= b_next!4951 (or (and start!4374 (= lambda!4090 (evidence!231 x$4!78))) b_next!4991))))

(declare-fun b_next!4993 () Bool)

(assert (=> b!34690 (= b_next!4945 (or (and start!4374 (= lambda!4090 (evidence!231 x$3!99))) b_next!4993))))

(declare-fun b_next!4995 () Bool)

(assert (=> b!34686 (= b_next!4957 (or (and start!4374 (= lambda!4090 (evidence!231 prev!16))) b_next!4995))))

(declare-fun b_next!4997 () Bool)

(assert (=> b!34692 (= b_next!4969 (or (and start!4374 (= lambda!4090 (evidence!231 x$2!209))) b_next!4997))))

(declare-fun b_next!4999 () Bool)

(assert (=> b!34684 (= b_next!4963 (or (and start!4374 (= lambda!4090 (evidence!231 thiss!3938))) b_next!4999))))

(declare-fun bs!11124 () Bool)

(declare-fun b!34691 () Bool)

(assert (= bs!11124 (and b!34691 start!4374)))

(declare-fun lambda!4091 () Int)

(declare-fun x!11018 () Int)

(declare-fun y!1090 () Int)

(assert (=> bs!11124 (= (= y!1090 x!11018) (= lambda!4091 lambda!4089))))

(assert (=> b!34691 true))

(assert (=> (and b!34692 b!34691 (= (dynLambda!630 lambda!4091) (dynLambda!630 (y!1107 x$2!209)))) (= lambda!4091 (y!1107 x$2!209))))

(assert (=> (and b!34690 b!34691 (= (dynLambda!630 lambda!4091) (dynLambda!630 (y!1107 x$3!99)))) (= lambda!4091 (y!1107 x$3!99))))

(assert (=> (and b!34689 b!34691 (= (dynLambda!630 lambda!4091) (dynLambda!630 (x!11068 x$4!78)))) (= lambda!4091 (x!11068 x$4!78))))

(assert (=> (and b!34684 b!34691 (= (dynLambda!630 lambda!4091) (dynLambda!630 (x!11068 thiss!3938)))) (= lambda!4091 (x!11068 thiss!3938))))

(assert (=> (and b!34684 b!34691 (= (dynLambda!630 lambda!4091) (dynLambda!630 (y!1107 thiss!3938)))) (= lambda!4091 (y!1107 thiss!3938))))

(assert (=> (and b!34690 b!34691 (= (dynLambda!630 lambda!4091) (dynLambda!630 (x!11068 x$3!99)))) (= lambda!4091 (x!11068 x$3!99))))

(assert (=> (and b!34686 b!34691 (= (dynLambda!630 lambda!4091) (dynLambda!630 (x!11068 prev!16)))) (= lambda!4091 (x!11068 prev!16))))

(assert (=> (and b!34686 b!34691 (= (dynLambda!630 lambda!4091) (dynLambda!630 (y!1107 prev!16)))) (= lambda!4091 (y!1107 prev!16))))

(assert (=> (and b!34689 b!34691 (= (dynLambda!630 lambda!4091) (dynLambda!630 (y!1107 x$4!78)))) (= lambda!4091 (y!1107 x$4!78))))

(assert (=> (and b!34692 b!34691 (= (dynLambda!630 lambda!4091) (dynLambda!630 (x!11068 x$2!209)))) (= lambda!4091 (x!11068 x$2!209))))

(declare-fun b_next!5001 () Bool)

(assert (=> b!34692 (= b_next!4971 (or (and b!34691 (= lambda!4091 (y!1107 x$2!209))) b_next!5001))))

(declare-fun b_next!5003 () Bool)

(assert (=> b!34690 (= b_next!4973 (or (and b!34691 (= lambda!4091 (y!1107 x$3!99))) b_next!5003))))

(declare-fun b_next!5005 () Bool)

(assert (=> b!34689 (= b_next!4975 (or (and b!34691 (= lambda!4091 (x!11068 x$4!78))) b_next!5005))))

(declare-fun b_next!5007 () Bool)

(assert (=> b!34684 (= b_next!4977 (or (and b!34691 (= lambda!4091 (x!11068 thiss!3938))) b_next!5007))))

(declare-fun b_next!5009 () Bool)

(assert (=> b!34684 (= b_next!4979 (or (and b!34691 (= lambda!4091 (y!1107 thiss!3938))) b_next!5009))))

(declare-fun b_next!5011 () Bool)

(assert (=> b!34690 (= b_next!4981 (or (and b!34691 (= lambda!4091 (x!11068 x$3!99))) b_next!5011))))

(declare-fun b_next!5013 () Bool)

(assert (=> b!34686 (= b_next!4983 (or (and b!34691 (= lambda!4091 (x!11068 prev!16))) b_next!5013))))

(declare-fun b_next!5015 () Bool)

(assert (=> b!34686 (= b_next!4985 (or (and b!34691 (= lambda!4091 (y!1107 prev!16))) b_next!5015))))

(declare-fun b_next!5017 () Bool)

(assert (=> b!34689 (= b_next!4987 (or (and b!34691 (= lambda!4091 (y!1107 x$4!78))) b_next!5017))))

(declare-fun b_next!5019 () Bool)

(assert (=> b!34692 (= b_next!4989 (or (and b!34691 (= lambda!4091 (x!11068 x$2!209))) b_next!5019))))

(declare-fun z!194 () Int)

(declare-fun lambda!4092 () Int)

(assert (=> bs!11124 (= (and (= y!1090 x!11018) (= z!194 y!1090)) (= lambda!4092 lambda!4090))))

(assert (=> b!34691 true))

(assert (=> b!34691 true))

(declare-fun b_next!5021 () Bool)

(assert (=> b!34689 (= b_next!4991 (or (and b!34691 (= lambda!4092 (evidence!231 x$4!78))) b_next!5021))))

(declare-fun b_next!5023 () Bool)

(assert (=> b!34690 (= b_next!4993 (or (and b!34691 (= lambda!4092 (evidence!231 x$3!99))) b_next!5023))))

(declare-fun b_next!5025 () Bool)

(assert (=> b!34686 (= b_next!4995 (or (and b!34691 (= lambda!4092 (evidence!231 prev!16))) b_next!5025))))

(declare-fun b_next!5027 () Bool)

(assert (=> b!34692 (= b_next!4997 (or (and b!34691 (= lambda!4092 (evidence!231 x$2!209))) b_next!5027))))

(declare-fun b_next!5029 () Bool)

(assert (=> b!34684 (= b_next!4999 (or (and b!34691 (= lambda!4092 (evidence!231 thiss!3938))) b_next!5029))))

(declare-fun bs!11125 () Bool)

(declare-fun b!34683 () Bool)

(assert (= bs!11125 (and b!34683 start!4374)))

(declare-fun lambda!4093 () Int)

(assert (=> bs!11125 (= (= z!194 x!11018) (= lambda!4093 lambda!4089))))

(declare-fun bs!11126 () Bool)

(assert (= bs!11126 (and b!34683 b!34691)))

(assert (=> bs!11126 (= (= z!194 y!1090) (= lambda!4093 lambda!4091))))

(assert (=> b!34683 true))

(assert (=> (and b!34692 b!34683 (= (dynLambda!630 lambda!4093) (dynLambda!630 (y!1107 x$2!209)))) (= lambda!4093 (y!1107 x$2!209))))

(assert (=> (and b!34690 b!34683 (= (dynLambda!630 lambda!4093) (dynLambda!630 (y!1107 x$3!99)))) (= lambda!4093 (y!1107 x$3!99))))

(assert (=> (and b!34689 b!34683 (= (dynLambda!630 lambda!4093) (dynLambda!630 (x!11068 x$4!78)))) (= lambda!4093 (x!11068 x$4!78))))

(assert (=> (and b!34684 b!34683 (= (dynLambda!630 lambda!4093) (dynLambda!630 (x!11068 thiss!3938)))) (= lambda!4093 (x!11068 thiss!3938))))

(assert (=> (and b!34684 b!34683 (= (dynLambda!630 lambda!4093) (dynLambda!630 (y!1107 thiss!3938)))) (= lambda!4093 (y!1107 thiss!3938))))

(assert (=> (and b!34690 b!34683 (= (dynLambda!630 lambda!4093) (dynLambda!630 (x!11068 x$3!99)))) (= lambda!4093 (x!11068 x$3!99))))

(assert (=> (and b!34686 b!34683 (= (dynLambda!630 lambda!4093) (dynLambda!630 (x!11068 prev!16)))) (= lambda!4093 (x!11068 prev!16))))

(assert (=> (and b!34686 b!34683 (= (dynLambda!630 lambda!4093) (dynLambda!630 (y!1107 prev!16)))) (= lambda!4093 (y!1107 prev!16))))

(assert (=> (and b!34689 b!34683 (= (dynLambda!630 lambda!4093) (dynLambda!630 (y!1107 x$4!78)))) (= lambda!4093 (y!1107 x$4!78))))

(assert (=> (and b!34692 b!34683 (= (dynLambda!630 lambda!4093) (dynLambda!630 (x!11068 x$2!209)))) (= lambda!4093 (x!11068 x$2!209))))

(declare-fun b_next!5031 () Bool)

(assert (=> b!34692 (= b_next!5001 (or (and b!34683 (= lambda!4093 (y!1107 x$2!209))) b_next!5031))))

(declare-fun b_next!5033 () Bool)

(assert (=> b!34690 (= b_next!5003 (or (and b!34683 (= lambda!4093 (y!1107 x$3!99))) b_next!5033))))

(declare-fun b_next!5035 () Bool)

(assert (=> b!34689 (= b_next!5005 (or (and b!34683 (= lambda!4093 (x!11068 x$4!78))) b_next!5035))))

(declare-fun b_next!5037 () Bool)

(assert (=> b!34684 (= b_next!5007 (or (and b!34683 (= lambda!4093 (x!11068 thiss!3938))) b_next!5037))))

(declare-fun b_next!5039 () Bool)

(assert (=> b!34684 (= b_next!5009 (or (and b!34683 (= lambda!4093 (y!1107 thiss!3938))) b_next!5039))))

(declare-fun b_next!5041 () Bool)

(assert (=> b!34690 (= b_next!5011 (or (and b!34683 (= lambda!4093 (x!11068 x$3!99))) b_next!5041))))

(declare-fun b_next!5043 () Bool)

(assert (=> b!34686 (= b_next!5013 (or (and b!34683 (= lambda!4093 (x!11068 prev!16))) b_next!5043))))

(declare-fun b_next!5045 () Bool)

(assert (=> b!34686 (= b_next!5015 (or (and b!34683 (= lambda!4093 (y!1107 prev!16))) b_next!5045))))

(declare-fun b_next!5047 () Bool)

(assert (=> b!34689 (= b_next!5017 (or (and b!34683 (= lambda!4093 (y!1107 x$4!78))) b_next!5047))))

(declare-fun b_next!5049 () Bool)

(assert (=> b!34692 (= b_next!5019 (or (and b!34683 (= lambda!4093 (x!11068 x$2!209))) b_next!5049))))

(declare-fun lambda!4094 () Int)

(declare-fun t!4682 () Int)

(assert (=> bs!11125 (= (and (= z!194 x!11018) (= t!4682 y!1090)) (= lambda!4094 lambda!4090))))

(assert (=> bs!11126 (= (and (= z!194 y!1090) (= t!4682 z!194)) (= lambda!4094 lambda!4092))))

(assert (=> b!34683 true))

(assert (=> b!34683 true))

(declare-fun b_next!5051 () Bool)

(assert (=> b!34689 (= b_next!5021 (or (and b!34683 (= lambda!4094 (evidence!231 x$4!78))) b_next!5051))))

(declare-fun b_next!5053 () Bool)

(assert (=> b!34690 (= b_next!5023 (or (and b!34683 (= lambda!4094 (evidence!231 x$3!99))) b_next!5053))))

(declare-fun b_next!5055 () Bool)

(assert (=> b!34686 (= b_next!5025 (or (and b!34683 (= lambda!4094 (evidence!231 prev!16))) b_next!5055))))

(declare-fun b_next!5057 () Bool)

(assert (=> b!34692 (= b_next!5027 (or (and b!34683 (= lambda!4094 (evidence!231 x$2!209))) b_next!5057))))

(declare-fun b_next!5059 () Bool)

(assert (=> b!34684 (= b_next!5029 (or (and b!34683 (= lambda!4094 (evidence!231 thiss!3938))) b_next!5059))))

(declare-fun bs!11127 () Bool)

(declare-fun b!34693 () Bool)

(assert (= bs!11127 (and b!34693 start!4374)))

(declare-fun lambda!4095 () Int)

(assert (=> bs!11127 (= (= t!4682 x!11018) (= lambda!4095 lambda!4089))))

(declare-fun bs!11128 () Bool)

(assert (= bs!11128 (and b!34693 b!34691)))

(assert (=> bs!11128 (= (= t!4682 y!1090) (= lambda!4095 lambda!4091))))

(declare-fun bs!11129 () Bool)

(assert (= bs!11129 (and b!34693 b!34683)))

(assert (=> bs!11129 (= (= t!4682 z!194) (= lambda!4095 lambda!4093))))

(assert (=> b!34693 true))

(assert (=> (and b!34692 b!34693 (= (dynLambda!630 lambda!4095) (dynLambda!630 (y!1107 x$2!209)))) (= lambda!4095 (y!1107 x$2!209))))

(assert (=> (and b!34690 b!34693 (= (dynLambda!630 lambda!4095) (dynLambda!630 (y!1107 x$3!99)))) (= lambda!4095 (y!1107 x$3!99))))

(assert (=> (and b!34689 b!34693 (= (dynLambda!630 lambda!4095) (dynLambda!630 (x!11068 x$4!78)))) (= lambda!4095 (x!11068 x$4!78))))

(assert (=> (and b!34684 b!34693 (= (dynLambda!630 lambda!4095) (dynLambda!630 (x!11068 thiss!3938)))) (= lambda!4095 (x!11068 thiss!3938))))

(assert (=> (and b!34684 b!34693 (= (dynLambda!630 lambda!4095) (dynLambda!630 (y!1107 thiss!3938)))) (= lambda!4095 (y!1107 thiss!3938))))

(assert (=> (and b!34690 b!34693 (= (dynLambda!630 lambda!4095) (dynLambda!630 (x!11068 x$3!99)))) (= lambda!4095 (x!11068 x$3!99))))

(assert (=> (and b!34686 b!34693 (= (dynLambda!630 lambda!4095) (dynLambda!630 (x!11068 prev!16)))) (= lambda!4095 (x!11068 prev!16))))

(assert (=> (and b!34686 b!34693 (= (dynLambda!630 lambda!4095) (dynLambda!630 (y!1107 prev!16)))) (= lambda!4095 (y!1107 prev!16))))

(assert (=> (and b!34689 b!34693 (= (dynLambda!630 lambda!4095) (dynLambda!630 (y!1107 x$4!78)))) (= lambda!4095 (y!1107 x$4!78))))

(assert (=> (and b!34692 b!34693 (= (dynLambda!630 lambda!4095) (dynLambda!630 (x!11068 x$2!209)))) (= lambda!4095 (x!11068 x$2!209))))

(declare-fun b_next!5061 () Bool)

(assert (=> b!34692 (= b_next!5031 (or (and b!34693 (= lambda!4095 (y!1107 x$2!209))) b_next!5061))))

(declare-fun b_next!5063 () Bool)

(assert (=> b!34690 (= b_next!5033 (or (and b!34693 (= lambda!4095 (y!1107 x$3!99))) b_next!5063))))

(declare-fun b_next!5065 () Bool)

(assert (=> b!34689 (= b_next!5035 (or (and b!34693 (= lambda!4095 (x!11068 x$4!78))) b_next!5065))))

(declare-fun b_next!5067 () Bool)

(assert (=> b!34684 (= b_next!5037 (or (and b!34693 (= lambda!4095 (x!11068 thiss!3938))) b_next!5067))))

(declare-fun b_next!5069 () Bool)

(assert (=> b!34684 (= b_next!5039 (or (and b!34693 (= lambda!4095 (y!1107 thiss!3938))) b_next!5069))))

(declare-fun b_next!5071 () Bool)

(assert (=> b!34690 (= b_next!5041 (or (and b!34693 (= lambda!4095 (x!11068 x$3!99))) b_next!5071))))

(declare-fun b_next!5073 () Bool)

(assert (=> b!34686 (= b_next!5043 (or (and b!34693 (= lambda!4095 (x!11068 prev!16))) b_next!5073))))

(declare-fun b_next!5075 () Bool)

(assert (=> b!34686 (= b_next!5045 (or (and b!34693 (= lambda!4095 (y!1107 prev!16))) b_next!5075))))

(declare-fun b_next!5077 () Bool)

(assert (=> b!34689 (= b_next!5047 (or (and b!34693 (= lambda!4095 (y!1107 x$4!78))) b_next!5077))))

(declare-fun b_next!5079 () Bool)

(assert (=> b!34692 (= b_next!5049 (or (and b!34693 (= lambda!4095 (x!11068 x$2!209))) b_next!5079))))

(declare-fun lambda!4096 () Int)

(assert (=> bs!11127 (not (= lambda!4096 lambda!4090))))

(assert (=> bs!11128 (not (= lambda!4096 lambda!4092))))

(assert (=> bs!11129 (not (= lambda!4096 lambda!4094))))

(declare-fun dynLambda!631 (Int) Unit!216)

(assert (=> (and b!34689 b!34693 (= (dynLambda!631 lambda!4096) (dynLambda!631 (evidence!231 x$4!78)))) (= lambda!4096 (evidence!231 x$4!78))))

(assert (=> (and b!34690 b!34693 (= (dynLambda!631 lambda!4096) (dynLambda!631 (evidence!231 x$3!99)))) (= lambda!4096 (evidence!231 x$3!99))))

(assert (=> (and b!34686 b!34693 (= (dynLambda!631 lambda!4096) (dynLambda!631 (evidence!231 prev!16)))) (= lambda!4096 (evidence!231 prev!16))))

(assert (=> (and b!34692 b!34693 (= (dynLambda!631 lambda!4096) (dynLambda!631 (evidence!231 x$2!209)))) (= lambda!4096 (evidence!231 x$2!209))))

(assert (=> (and b!34684 b!34693 (= (dynLambda!631 lambda!4096) (dynLambda!631 (evidence!231 thiss!3938)))) (= lambda!4096 (evidence!231 thiss!3938))))

(declare-fun b_next!5081 () Bool)

(assert (=> b!34689 (= b_next!5051 (or (and b!34693 (= lambda!4096 (evidence!231 x$4!78))) b_next!5081))))

(declare-fun b_next!5083 () Bool)

(assert (=> b!34690 (= b_next!5053 (or (and b!34693 (= lambda!4096 (evidence!231 x$3!99))) b_next!5083))))

(declare-fun b_next!5085 () Bool)

(assert (=> b!34686 (= b_next!5055 (or (and b!34693 (= lambda!4096 (evidence!231 prev!16))) b_next!5085))))

(declare-fun b_next!5087 () Bool)

(assert (=> b!34692 (= b_next!5057 (or (and b!34693 (= lambda!4096 (evidence!231 x$2!209))) b_next!5087))))

(declare-fun b_next!5089 () Bool)

(assert (=> b!34684 (= b_next!5059 (or (and b!34693 (= lambda!4096 (evidence!231 thiss!3938))) b_next!5089))))

(declare-fun res!15908 () Bool)

(declare-fun e!17526 () Bool)

(assert (=> b!34683 (=> (not res!15908) (not e!17526))))

(assert (=> b!34683 (= res!15908 (= x$2!209 (RAEqEvidence!5 lambda!4093 lambda!4093 lambda!4094)))))

(declare-fun e!17525 () Bool)

(assert (=> b!34684 (= e!17525 (and tp!7179 tp!7184 tp!7186))))

(declare-fun b!34685 () Bool)

(declare-fun res!15905 () Bool)

(assert (=> b!34685 (=> (not res!15905) (not e!17526))))

(declare-fun keepEvidence!2 (Unit!216) Bool)

(assert (=> b!34685 (= res!15905 (keepEvidence!2 (dynLambda!631 (evidence!231 prev!16))))))

(declare-fun e!17524 () Bool)

(assert (=> b!34686 (= e!17524 (and tp!7181 tp!7185 tp!7190))))

(declare-fun b!34687 () Bool)

(declare-fun res!15903 () Bool)

(assert (=> b!34687 (=> (not res!15903) (not e!17526))))

(assert (=> b!34687 (= res!15903 (= prev!16 x$2!209))))

(declare-fun b!34688 () Bool)

(assert (=> b!34688 (= e!17526 (not (= (dynLambda!630 (y!1107 prev!16)) (dynLambda!630 (x!11068 thiss!3938)))))))

(declare-fun e!17523 () Bool)

(assert (=> b!34689 (= e!17523 (and tp!7191 tp!7192 tp!7189))))

(declare-fun e!17527 () Bool)

(assert (=> b!34690 (= e!17527 (and tp!7193 tp!7183 tp!7188))))

(declare-fun res!15907 () Bool)

(assert (=> b!34691 (=> (not res!15907) (not e!17526))))

(assert (=> b!34691 (= res!15907 (= x$3!99 (RAEqEvidence!5 lambda!4091 lambda!4091 lambda!4092)))))

(declare-fun e!17522 () Bool)

(assert (=> b!34692 (= e!17522 (and tp!7182 tp!7187 tp!7180))))

(declare-fun res!15906 () Bool)

(assert (=> start!4374 (=> (not res!15906) (not e!17526))))

(assert (=> start!4374 (= res!15906 (= x$4!78 (RAEqEvidence!5 lambda!4089 lambda!4089 lambda!4090)))))

(assert (=> start!4374 e!17526))

(declare-fun inv!564 (RAEqEvidence!4) Bool)

(assert (=> start!4374 (and (inv!564 prev!16) e!17524)))

(assert (=> start!4374 (and (inv!564 x$2!209) e!17522)))

(assert (=> start!4374 true))

(assert (=> start!4374 (and (inv!564 x$3!99) e!17527)))

(assert (=> start!4374 (and (inv!564 x$4!78) e!17523)))

(assert (=> start!4374 (and (inv!564 thiss!3938) e!17525)))

(declare-fun res!15904 () Bool)

(assert (=> b!34693 (=> (not res!15904) (not e!17526))))

(assert (=> b!34693 (= res!15904 (= thiss!3938 (RAEqEvidence!5 lambda!4095 lambda!4095 lambda!4096)))))

(assert (= (and start!4374 res!15906) b!34691))

(assert (= (and b!34691 res!15907) b!34683))

(assert (= (and b!34683 res!15908) b!34693))

(assert (= (and b!34693 res!15904) b!34687))

(assert (= (and b!34687 res!15903) b!34685))

(assert (= (and b!34685 res!15905) b!34688))

(assert (= start!4374 b!34686))

(assert (= start!4374 b!34692))

(assert (= start!4374 b!34690))

(assert (= start!4374 b!34689))

(assert (= start!4374 b!34684))

(declare-fun b_lambda!9425 () Bool)

(assert (=> (not b_lambda!9425) (not b!34685)))

(declare-fun t!4684 () Bool)

(declare-fun tb!4011 () Bool)

(assert (=> (and b!34690 (= (evidence!231 x$3!99) (evidence!231 prev!16)) t!4684) tb!4011))

(declare-fun result!4267 () Bool)

(assert (=> tb!4011 (= result!4267 true)))

(assert (=> b!34685 t!4684))

(declare-fun b_and!7523 () Bool)

(assert (= b_and!7497 (and (=> t!4684 result!4267) b_and!7523)))

(declare-fun tb!4013 () Bool)

(declare-fun t!4686 () Bool)

(assert (=> (and b!34692 (= (evidence!231 x$2!209) (evidence!231 prev!16)) t!4686) tb!4013))

(declare-fun result!4269 () Bool)

(assert (=> tb!4013 (= result!4269 true)))

(assert (=> b!34685 t!4686))

(declare-fun b_and!7525 () Bool)

(assert (= b_and!7521 (and (=> t!4686 result!4269) b_and!7525)))

(declare-fun tb!4015 () Bool)

(declare-fun t!4688 () Bool)

(assert (=> (and b!34684 (= (evidence!231 thiss!3938) (evidence!231 prev!16)) t!4688) tb!4015))

(declare-fun result!4271 () Bool)

(assert (=> tb!4015 (= result!4271 true)))

(assert (=> b!34685 t!4688))

(declare-fun b_and!7527 () Bool)

(assert (= b_and!7515 (and (=> t!4688 result!4271) b_and!7527)))

(declare-fun t!4690 () Bool)

(declare-fun tb!4017 () Bool)

(assert (=> (and b!34686 (= (evidence!231 prev!16) (evidence!231 prev!16)) t!4690) tb!4017))

(declare-fun result!4273 () Bool)

(assert (=> tb!4017 (= result!4273 true)))

(assert (=> b!34685 t!4690))

(declare-fun b_and!7529 () Bool)

(assert (= b_and!7509 (and (=> t!4690 result!4273) b_and!7529)))

(declare-fun tb!4019 () Bool)

(declare-fun t!4692 () Bool)

(assert (=> (and b!34689 (= (evidence!231 x$4!78) (evidence!231 prev!16)) t!4692) tb!4019))

(declare-fun result!4275 () Bool)

(assert (=> tb!4019 (= result!4275 true)))

(assert (=> b!34685 t!4692))

(declare-fun b_and!7531 () Bool)

(assert (= b_and!7503 (and (=> t!4692 result!4275) b_and!7531)))

(declare-fun b_lambda!9427 () Bool)

(assert (=> (not b_lambda!9427) (not b!34688)))

(declare-fun t!4694 () Bool)

(declare-fun tb!4021 () Bool)

(assert (=> (and b!34686 (= (y!1107 prev!16) (y!1107 prev!16)) t!4694) tb!4021))

(declare-fun result!4277 () Bool)

(assert (=> tb!4021 (= result!4277 true)))

(assert (=> b!34688 t!4694))

(declare-fun b_and!7533 () Bool)

(assert (= b_and!7507 (and (=> t!4694 result!4277) b_and!7533)))

(declare-fun t!4696 () Bool)

(declare-fun tb!4023 () Bool)

(assert (=> (and b!34684 (= (x!11068 thiss!3938) (y!1107 prev!16)) t!4696) tb!4023))

(declare-fun result!4279 () Bool)

(assert (=> tb!4023 (= result!4279 true)))

(assert (=> b!34688 t!4696))

(declare-fun b_and!7535 () Bool)

(assert (= b_and!7511 (and (=> t!4696 result!4279) b_and!7535)))

(declare-fun tb!4025 () Bool)

(declare-fun t!4698 () Bool)

(assert (=> (and b!34690 (= (y!1107 x$3!99) (y!1107 prev!16)) t!4698) tb!4025))

(declare-fun result!4281 () Bool)

(assert (=> tb!4025 (= result!4281 true)))

(assert (=> b!34688 t!4698))

(declare-fun b_and!7537 () Bool)

(assert (= b_and!7495 (and (=> t!4698 result!4281) b_and!7537)))

(declare-fun t!4700 () Bool)

(declare-fun tb!4027 () Bool)

(assert (=> (and b!34689 (= (x!11068 x$4!78) (y!1107 prev!16)) t!4700) tb!4027))

(declare-fun result!4283 () Bool)

(assert (=> tb!4027 (= result!4283 true)))

(assert (=> b!34688 t!4700))

(declare-fun b_and!7539 () Bool)

(assert (= b_and!7499 (and (=> t!4700 result!4283) b_and!7539)))

(declare-fun t!4702 () Bool)

(declare-fun tb!4029 () Bool)

(assert (=> (and b!34690 (= (x!11068 x$3!99) (y!1107 prev!16)) t!4702) tb!4029))

(declare-fun result!4285 () Bool)

(assert (=> tb!4029 (= result!4285 true)))

(assert (=> b!34688 t!4702))

(declare-fun b_and!7541 () Bool)

(assert (= b_and!7493 (and (=> t!4702 result!4285) b_and!7541)))

(declare-fun t!4704 () Bool)

(declare-fun tb!4031 () Bool)

(assert (=> (and b!34689 (= (y!1107 x$4!78) (y!1107 prev!16)) t!4704) tb!4031))

(declare-fun result!4287 () Bool)

(assert (=> tb!4031 (= result!4287 true)))

(assert (=> b!34688 t!4704))

(declare-fun b_and!7543 () Bool)

(assert (= b_and!7501 (and (=> t!4704 result!4287) b_and!7543)))

(declare-fun t!4706 () Bool)

(declare-fun tb!4033 () Bool)

(assert (=> (and b!34684 (= (y!1107 thiss!3938) (y!1107 prev!16)) t!4706) tb!4033))

(declare-fun result!4289 () Bool)

(assert (=> tb!4033 (= result!4289 true)))

(assert (=> b!34688 t!4706))

(declare-fun b_and!7545 () Bool)

(assert (= b_and!7513 (and (=> t!4706 result!4289) b_and!7545)))

(declare-fun t!4708 () Bool)

(declare-fun tb!4035 () Bool)

(assert (=> (and b!34686 (= (x!11068 prev!16) (y!1107 prev!16)) t!4708) tb!4035))

(declare-fun result!4291 () Bool)

(assert (=> tb!4035 (= result!4291 true)))

(assert (=> b!34688 t!4708))

(declare-fun b_and!7547 () Bool)

(assert (= b_and!7505 (and (=> t!4708 result!4291) b_and!7547)))

(declare-fun t!4710 () Bool)

(declare-fun tb!4037 () Bool)

(assert (=> (and b!34692 (= (y!1107 x$2!209) (y!1107 prev!16)) t!4710) tb!4037))

(declare-fun result!4293 () Bool)

(assert (=> tb!4037 (= result!4293 true)))

(assert (=> b!34688 t!4710))

(declare-fun b_and!7549 () Bool)

(assert (= b_and!7519 (and (=> t!4710 result!4293) b_and!7549)))

(declare-fun t!4712 () Bool)

(declare-fun tb!4039 () Bool)

(assert (=> (and b!34692 (= (x!11068 x$2!209) (y!1107 prev!16)) t!4712) tb!4039))

(declare-fun result!4295 () Bool)

(assert (=> tb!4039 (= result!4295 true)))

(assert (=> b!34688 t!4712))

(declare-fun b_and!7551 () Bool)

(assert (= b_and!7517 (and (=> t!4712 result!4295) b_and!7551)))

(declare-fun b_lambda!9429 () Bool)

(assert (=> (not b_lambda!9429) (not b!34688)))

(declare-fun tb!4041 () Bool)

(declare-fun t!4714 () Bool)

(assert (=> (and b!34692 (= (y!1107 x$2!209) (x!11068 thiss!3938)) t!4714) tb!4041))

(declare-fun result!4297 () Bool)

(assert (=> tb!4041 (= result!4297 true)))

(assert (=> b!34688 t!4714))

(declare-fun b_and!7553 () Bool)

(assert (= b_and!7549 (and (=> t!4714 result!4297) b_and!7553)))

(declare-fun tb!4043 () Bool)

(declare-fun t!4716 () Bool)

(assert (=> (and b!34690 (= (y!1107 x$3!99) (x!11068 thiss!3938)) t!4716) tb!4043))

(declare-fun result!4299 () Bool)

(assert (=> tb!4043 (= result!4299 true)))

(assert (=> b!34688 t!4716))

(declare-fun b_and!7555 () Bool)

(assert (= b_and!7537 (and (=> t!4716 result!4299) b_and!7555)))

(declare-fun t!4718 () Bool)

(declare-fun tb!4045 () Bool)

(assert (=> (and b!34689 (= (x!11068 x$4!78) (x!11068 thiss!3938)) t!4718) tb!4045))

(declare-fun result!4301 () Bool)

(assert (=> tb!4045 (= result!4301 true)))

(assert (=> b!34688 t!4718))

(declare-fun b_and!7557 () Bool)

(assert (= b_and!7539 (and (=> t!4718 result!4301) b_and!7557)))

(declare-fun t!4720 () Bool)

(declare-fun tb!4047 () Bool)

(assert (=> (and b!34686 (= (y!1107 prev!16) (x!11068 thiss!3938)) t!4720) tb!4047))

(declare-fun result!4303 () Bool)

(assert (=> tb!4047 (= result!4303 true)))

(assert (=> b!34688 t!4720))

(declare-fun b_and!7559 () Bool)

(assert (= b_and!7533 (and (=> t!4720 result!4303) b_and!7559)))

(declare-fun t!4722 () Bool)

(declare-fun tb!4049 () Bool)

(assert (=> (and b!34689 (= (y!1107 x$4!78) (x!11068 thiss!3938)) t!4722) tb!4049))

(declare-fun result!4305 () Bool)

(assert (=> tb!4049 (= result!4305 true)))

(assert (=> b!34688 t!4722))

(declare-fun b_and!7561 () Bool)

(assert (= b_and!7543 (and (=> t!4722 result!4305) b_and!7561)))

(declare-fun tb!4051 () Bool)

(declare-fun t!4724 () Bool)

(assert (=> (and b!34686 (= (x!11068 prev!16) (x!11068 thiss!3938)) t!4724) tb!4051))

(declare-fun result!4307 () Bool)

(assert (=> tb!4051 (= result!4307 true)))

(assert (=> b!34688 t!4724))

(declare-fun b_and!7563 () Bool)

(assert (= b_and!7547 (and (=> t!4724 result!4307) b_and!7563)))

(declare-fun t!4726 () Bool)

(declare-fun tb!4053 () Bool)

(assert (=> (and b!34692 (= (x!11068 x$2!209) (x!11068 thiss!3938)) t!4726) tb!4053))

(declare-fun result!4309 () Bool)

(assert (=> tb!4053 (= result!4309 true)))

(assert (=> b!34688 t!4726))

(declare-fun b_and!7565 () Bool)

(assert (= b_and!7551 (and (=> t!4726 result!4309) b_and!7565)))

(declare-fun t!4728 () Bool)

(declare-fun tb!4055 () Bool)

(assert (=> (and b!34684 (= (x!11068 thiss!3938) (x!11068 thiss!3938)) t!4728) tb!4055))

(declare-fun result!4311 () Bool)

(assert (=> tb!4055 (= result!4311 true)))

(assert (=> b!34688 t!4728))

(declare-fun b_and!7567 () Bool)

(assert (= b_and!7535 (and (=> t!4728 result!4311) b_and!7567)))

(declare-fun tb!4057 () Bool)

(declare-fun t!4730 () Bool)

(assert (=> (and b!34690 (= (x!11068 x$3!99) (x!11068 thiss!3938)) t!4730) tb!4057))

(declare-fun result!4313 () Bool)

(assert (=> tb!4057 (= result!4313 true)))

(assert (=> b!34688 t!4730))

(declare-fun b_and!7569 () Bool)

(assert (= b_and!7541 (and (=> t!4730 result!4313) b_and!7569)))

(declare-fun t!4732 () Bool)

(declare-fun tb!4059 () Bool)

(assert (=> (and b!34684 (= (y!1107 thiss!3938) (x!11068 thiss!3938)) t!4732) tb!4059))

(declare-fun result!4315 () Bool)

(assert (=> tb!4059 (= result!4315 true)))

(assert (=> b!34688 t!4732))

(declare-fun b_and!7571 () Bool)

(assert (= b_and!7545 (and (=> t!4732 result!4315) b_and!7571)))

(declare-fun m!37265 () Bool)

(assert (=> b!34685 m!37265))

(assert (=> b!34685 m!37265))

(declare-fun m!37267 () Bool)

(assert (=> b!34685 m!37267))

(declare-fun m!37269 () Bool)

(assert (=> b!34688 m!37269))

(declare-fun m!37271 () Bool)

(assert (=> b!34688 m!37271))

(declare-fun m!37273 () Bool)

(assert (=> start!4374 m!37273))

(declare-fun m!37275 () Bool)

(assert (=> start!4374 m!37275))

(declare-fun m!37277 () Bool)

(assert (=> start!4374 m!37277))

(declare-fun m!37279 () Bool)

(assert (=> start!4374 m!37279))

(declare-fun m!37281 () Bool)

(assert (=> start!4374 m!37281))

(push 1)

(assert (not b_next!5067))

(assert (not b_lambda!9425))

(assert b_and!7523)

(assert (not b_next!5081))

(assert (not b_next!5083))

(assert (not b_next!5085))

(assert b_and!7561)

(assert b_and!7531)

(assert (not b_next!5089))

(assert b_and!7553)

(assert (not b_next!5063))

(assert (not b_next!5087))

(assert b_and!7567)

(assert (not b_lambda!9427))

(assert b_and!7569)

(assert b_and!7559)

(assert b_and!7563)

(assert b_and!7525)

(assert (not b_next!5075))

(assert b_and!7529)

(assert b_and!7557)

(assert (not b_lambda!9429))

(assert (not b_next!5061))

(assert (not b_next!5071))

(assert (not b!34685))

(assert b_and!7555)

(assert (not b_next!5077))

(assert (not b_next!5073))

(assert (not b_next!5069))

(assert (not start!4374))

(assert (not b_next!5065))

(assert b_and!7571)

(assert (not b_next!5079))

(assert b_and!7565)

(assert b_and!7527)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5067))

(assert b_and!7523)

(assert (not b_next!5081))

(assert (not b_next!5083))

(assert (not b_next!5085))

(assert b_and!7561)

(assert b_and!7531)

(assert (not b_next!5089))

(assert b_and!7553)

(assert (not b_next!5063))

(assert (not b_next!5087))

(assert b_and!7567)

(assert b_and!7569)

(assert b_and!7559)

(assert b_and!7563)

(assert b_and!7525)

(assert (not b_next!5075))

(assert b_and!7529)

(assert b_and!7557)

(assert (not b_next!5061))

(assert (not b_next!5071))

(assert b_and!7555)

(assert (not b_next!5077))

(assert (not b_next!5073))

(assert (not b_next!5069))

(assert (not b_next!5065))

(assert b_and!7571)

(assert (not b_next!5079))

(assert b_and!7565)

(assert b_and!7527)

(check-sat)

(pop 1)

