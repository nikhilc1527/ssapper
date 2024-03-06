; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4384 () Bool)

(assert start!4384)

(declare-fun b!34746 () Bool)

(declare-fun b_free!2141 () Bool)

(declare-fun b_next!5203 () Bool)

(assert (=> b!34746 (= b_free!2141 (not b_next!5203))))

(declare-fun tp!7254 () Bool)

(declare-fun b_and!7765 () Bool)

(assert (=> b!34746 (= tp!7254 b_and!7765)))

(declare-fun b_free!2143 () Bool)

(declare-fun b_next!5205 () Bool)

(assert (=> b!34746 (= b_free!2143 (not b_next!5205))))

(declare-fun tp!7251 () Bool)

(declare-fun b_and!7767 () Bool)

(assert (=> b!34746 (= tp!7251 b_and!7767)))

(declare-fun b_free!2145 () Bool)

(declare-fun b_next!5207 () Bool)

(assert (=> b!34746 (= b_free!2145 (not b_next!5207))))

(declare-fun tp!7248 () Bool)

(declare-fun b_and!7769 () Bool)

(assert (=> b!34746 (= tp!7248 b_and!7769)))

(declare-fun b!34745 () Bool)

(declare-fun b_free!2147 () Bool)

(declare-fun b_next!5209 () Bool)

(assert (=> b!34745 (= b_free!2147 (not b_next!5209))))

(declare-fun tp!7256 () Bool)

(declare-fun b_and!7771 () Bool)

(assert (=> b!34745 (= tp!7256 b_and!7771)))

(declare-fun b_free!2149 () Bool)

(declare-fun b_next!5211 () Bool)

(assert (=> b!34745 (= b_free!2149 (not b_next!5211))))

(declare-fun tp!7253 () Bool)

(declare-fun b_and!7773 () Bool)

(assert (=> b!34745 (= tp!7253 b_and!7773)))

(declare-fun b_free!2151 () Bool)

(declare-fun b_next!5213 () Bool)

(assert (=> b!34745 (= b_free!2151 (not b_next!5213))))

(declare-fun tp!7249 () Bool)

(declare-fun b_and!7775 () Bool)

(assert (=> b!34745 (= tp!7249 b_and!7775)))

(declare-fun b!34743 () Bool)

(declare-fun b_free!2153 () Bool)

(declare-fun b_next!5215 () Bool)

(assert (=> b!34743 (= b_free!2153 (not b_next!5215))))

(declare-fun tp!7250 () Bool)

(declare-fun b_and!7777 () Bool)

(assert (=> b!34743 (= tp!7250 b_and!7777)))

(declare-fun b_free!2155 () Bool)

(declare-fun b_next!5217 () Bool)

(assert (=> b!34743 (= b_free!2155 (not b_next!5217))))

(declare-fun tp!7252 () Bool)

(declare-fun b_and!7779 () Bool)

(assert (=> b!34743 (= tp!7252 b_and!7779)))

(declare-fun b_free!2157 () Bool)

(declare-fun b_next!5219 () Bool)

(assert (=> b!34743 (= b_free!2157 (not b_next!5219))))

(declare-fun tp!7255 () Bool)

(declare-fun b_and!7781 () Bool)

(assert (=> b!34743 (= tp!7255 b_and!7781)))

(assert (=> start!4384 true))

(declare-fun lambda!4134 () Int)

(declare-datatypes () ((Unit!220 (Unit!221))))

(declare-datatypes () ((RAEqEvidence!8 (RAEqEvidence!9 (x!11100 Int) (y!1110 Int) (evidence!233 Int)))))

(declare-fun thiss!3934 () RAEqEvidence!8)

(declare-fun dynLambda!634 (Int) Int)

(assert (=> (and b!34743 start!4384 (= (dynLambda!634 lambda!4134) (dynLambda!634 (x!11100 thiss!3934)))) (= lambda!4134 (x!11100 thiss!3934))))

(assert (=> (and b!34743 start!4384 (= (dynLambda!634 lambda!4134) (dynLambda!634 (y!1110 thiss!3934)))) (= lambda!4134 (y!1110 thiss!3934))))

(declare-fun prev!18 () RAEqEvidence!8)

(assert (=> (and b!34746 start!4384 (= (dynLambda!634 lambda!4134) (dynLambda!634 (x!11100 prev!18)))) (= lambda!4134 (x!11100 prev!18))))

(declare-fun x$4!78 () RAEqEvidence!8)

(assert (=> (and b!34745 start!4384 (= (dynLambda!634 lambda!4134) (dynLambda!634 (x!11100 x$4!78)))) (= lambda!4134 (x!11100 x$4!78))))

(assert (=> (and b!34746 start!4384 (= (dynLambda!634 lambda!4134) (dynLambda!634 (y!1110 prev!18)))) (= lambda!4134 (y!1110 prev!18))))

(assert (=> (and b!34745 start!4384 (= (dynLambda!634 lambda!4134) (dynLambda!634 (y!1110 x$4!78)))) (= lambda!4134 (y!1110 x$4!78))))

(declare-fun b_next!5221 () Bool)

(assert (=> b!34743 (= b_next!5215 (or (and start!4384 (= lambda!4134 (x!11100 thiss!3934))) b_next!5221))))

(declare-fun b_next!5223 () Bool)

(assert (=> b!34743 (= b_next!5217 (or (and start!4384 (= lambda!4134 (y!1110 thiss!3934))) b_next!5223))))

(declare-fun b_next!5225 () Bool)

(assert (=> b!34746 (= b_next!5203 (or (and start!4384 (= lambda!4134 (x!11100 prev!18))) b_next!5225))))

(declare-fun b_next!5227 () Bool)

(assert (=> b!34745 (= b_next!5209 (or (and start!4384 (= lambda!4134 (x!11100 x$4!78))) b_next!5227))))

(declare-fun b_next!5229 () Bool)

(assert (=> b!34746 (= b_next!5205 (or (and start!4384 (= lambda!4134 (y!1110 prev!18))) b_next!5229))))

(declare-fun b_next!5231 () Bool)

(assert (=> b!34745 (= b_next!5211 (or (and start!4384 (= lambda!4134 (y!1110 x$4!78))) b_next!5231))))

(assert (=> start!4384 true))

(assert (=> start!4384 true))

(declare-fun b_next!5233 () Bool)

(declare-fun lambda!4135 () Int)

(assert (=> b!34746 (= b_next!5207 (or (and start!4384 (= lambda!4135 (evidence!233 prev!18))) b_next!5233))))

(declare-fun b_next!5235 () Bool)

(assert (=> b!34745 (= b_next!5213 (or (and start!4384 (= lambda!4135 (evidence!233 x$4!78))) b_next!5235))))

(declare-fun b_next!5237 () Bool)

(assert (=> b!34743 (= b_next!5219 (or (and start!4384 (= lambda!4135 (evidence!233 thiss!3934))) b_next!5237))))

(declare-fun bs!11170 () Bool)

(declare-fun b!34747 () Bool)

(assert (= bs!11170 (and b!34747 start!4384)))

(declare-fun lambda!4136 () Int)

(declare-fun x!11018 () Int)

(declare-fun y!1090 () Int)

(assert (=> bs!11170 (= (= y!1090 x!11018) (= lambda!4136 lambda!4134))))

(assert (=> b!34747 true))

(assert (=> (and b!34743 b!34747 (= (dynLambda!634 lambda!4136) (dynLambda!634 (x!11100 thiss!3934)))) (= lambda!4136 (x!11100 thiss!3934))))

(assert (=> (and b!34743 b!34747 (= (dynLambda!634 lambda!4136) (dynLambda!634 (y!1110 thiss!3934)))) (= lambda!4136 (y!1110 thiss!3934))))

(assert (=> (and b!34746 b!34747 (= (dynLambda!634 lambda!4136) (dynLambda!634 (x!11100 prev!18)))) (= lambda!4136 (x!11100 prev!18))))

(assert (=> (and b!34745 b!34747 (= (dynLambda!634 lambda!4136) (dynLambda!634 (x!11100 x$4!78)))) (= lambda!4136 (x!11100 x$4!78))))

(assert (=> (and b!34746 b!34747 (= (dynLambda!634 lambda!4136) (dynLambda!634 (y!1110 prev!18)))) (= lambda!4136 (y!1110 prev!18))))

(assert (=> (and b!34745 b!34747 (= (dynLambda!634 lambda!4136) (dynLambda!634 (y!1110 x$4!78)))) (= lambda!4136 (y!1110 x$4!78))))

(declare-fun b_next!5239 () Bool)

(assert (=> b!34743 (= b_next!5221 (or (and b!34747 (= lambda!4136 (x!11100 thiss!3934))) b_next!5239))))

(declare-fun b_next!5241 () Bool)

(assert (=> b!34743 (= b_next!5223 (or (and b!34747 (= lambda!4136 (y!1110 thiss!3934))) b_next!5241))))

(declare-fun b_next!5243 () Bool)

(assert (=> b!34746 (= b_next!5225 (or (and b!34747 (= lambda!4136 (x!11100 prev!18))) b_next!5243))))

(declare-fun b_next!5245 () Bool)

(assert (=> b!34745 (= b_next!5227 (or (and b!34747 (= lambda!4136 (x!11100 x$4!78))) b_next!5245))))

(declare-fun b_next!5247 () Bool)

(assert (=> b!34746 (= b_next!5229 (or (and b!34747 (= lambda!4136 (y!1110 prev!18))) b_next!5247))))

(declare-fun b_next!5249 () Bool)

(assert (=> b!34745 (= b_next!5231 (or (and b!34747 (= lambda!4136 (y!1110 x$4!78))) b_next!5249))))

(declare-fun lambda!4137 () Int)

(declare-fun t!4682 () Int)

(assert (=> bs!11170 (= (= t!4682 x!11018) (= lambda!4137 lambda!4134))))

(assert (=> b!34747 (= (= t!4682 y!1090) (= lambda!4137 lambda!4136))))

(assert (=> b!34747 true))

(assert (=> (and b!34743 b!34747 (= (dynLambda!634 lambda!4137) (dynLambda!634 (x!11100 thiss!3934)))) (= lambda!4137 (x!11100 thiss!3934))))

(assert (=> (and b!34743 b!34747 (= (dynLambda!634 lambda!4137) (dynLambda!634 (y!1110 thiss!3934)))) (= lambda!4137 (y!1110 thiss!3934))))

(assert (=> (and b!34746 b!34747 (= (dynLambda!634 lambda!4137) (dynLambda!634 (x!11100 prev!18)))) (= lambda!4137 (x!11100 prev!18))))

(assert (=> (and b!34745 b!34747 (= (dynLambda!634 lambda!4137) (dynLambda!634 (x!11100 x$4!78)))) (= lambda!4137 (x!11100 x$4!78))))

(assert (=> (and b!34746 b!34747 (= (dynLambda!634 lambda!4137) (dynLambda!634 (y!1110 prev!18)))) (= lambda!4137 (y!1110 prev!18))))

(assert (=> (and b!34745 b!34747 (= (dynLambda!634 lambda!4137) (dynLambda!634 (y!1110 x$4!78)))) (= lambda!4137 (y!1110 x$4!78))))

(declare-fun b_next!5251 () Bool)

(assert (=> b!34743 (= b_next!5239 (or (and b!34747 (= lambda!4137 (x!11100 thiss!3934))) b_next!5251))))

(declare-fun b_next!5253 () Bool)

(assert (=> b!34743 (= b_next!5241 (or (and b!34747 (= lambda!4137 (y!1110 thiss!3934))) b_next!5253))))

(declare-fun b_next!5255 () Bool)

(assert (=> b!34746 (= b_next!5243 (or (and b!34747 (= lambda!4137 (x!11100 prev!18))) b_next!5255))))

(declare-fun b_next!5257 () Bool)

(assert (=> b!34745 (= b_next!5245 (or (and b!34747 (= lambda!4137 (x!11100 x$4!78))) b_next!5257))))

(declare-fun b_next!5259 () Bool)

(assert (=> b!34746 (= b_next!5247 (or (and b!34747 (= lambda!4137 (y!1110 prev!18))) b_next!5259))))

(declare-fun b_next!5261 () Bool)

(assert (=> b!34745 (= b_next!5249 (or (and b!34747 (= lambda!4137 (y!1110 x$4!78))) b_next!5261))))

(declare-fun z!194 () Int)

(declare-fun lambda!4138 () Int)

(assert (=> bs!11170 (= (and (= y!1090 x!11018) (= z!194 y!1090)) (= lambda!4138 lambda!4135))))

(assert (=> b!34747 true))

(assert (=> b!34747 true))

(declare-fun b_next!5263 () Bool)

(assert (=> b!34746 (= b_next!5233 (or (and b!34747 (= lambda!4138 (evidence!233 prev!18))) b_next!5263))))

(declare-fun b_next!5265 () Bool)

(assert (=> b!34745 (= b_next!5235 (or (and b!34747 (= lambda!4138 (evidence!233 x$4!78))) b_next!5265))))

(declare-fun b_next!5267 () Bool)

(assert (=> b!34743 (= b_next!5237 (or (and b!34747 (= lambda!4138 (evidence!233 thiss!3934))) b_next!5267))))

(declare-fun e!17553 () Bool)

(assert (=> b!34743 (= e!17553 (and tp!7250 tp!7252 tp!7255))))

(declare-fun b!34744 () Bool)

(declare-fun e!17551 () Bool)

(assert (=> b!34744 (= e!17551 (not (= (dynLambda!634 (y!1110 prev!18)) (dynLambda!634 (x!11100 thiss!3934)))))))

(declare-fun e!17552 () Bool)

(assert (=> b!34745 (= e!17552 (and tp!7256 tp!7253 tp!7249))))

(declare-fun e!17554 () Bool)

(assert (=> b!34746 (= e!17554 (and tp!7254 tp!7251 tp!7248))))

(declare-fun res!15932 () Bool)

(assert (=> b!34747 (=> (not res!15932) (not e!17551))))

(assert (=> b!34747 (= res!15932 (= thiss!3934 (RAEqEvidence!9 lambda!4136 lambda!4137 lambda!4138)))))

(declare-fun res!15935 () Bool)

(assert (=> start!4384 (=> (not res!15935) (not e!17551))))

(assert (=> start!4384 (= res!15935 (= x$4!78 (RAEqEvidence!9 lambda!4134 lambda!4134 lambda!4135)))))

(assert (=> start!4384 e!17551))

(declare-fun inv!566 (RAEqEvidence!8) Bool)

(assert (=> start!4384 (and (inv!566 prev!18) e!17554)))

(assert (=> start!4384 true))

(assert (=> start!4384 (and (inv!566 x$4!78) e!17552)))

(assert (=> start!4384 (and (inv!566 thiss!3934) e!17553)))

(declare-fun b!34748 () Bool)

(declare-fun res!15933 () Bool)

(assert (=> b!34748 (=> (not res!15933) (not e!17551))))

(declare-fun keepEvidence!4 (Unit!220) Bool)

(declare-fun dynLambda!635 (Int) Unit!220)

(assert (=> b!34748 (= res!15933 (keepEvidence!4 (dynLambda!635 (evidence!233 prev!18))))))

(declare-fun b!34749 () Bool)

(declare-fun res!15934 () Bool)

(assert (=> b!34749 (=> (not res!15934) (not e!17551))))

(assert (=> b!34749 (= res!15934 (= prev!18 x$4!78))))

(assert (= (and start!4384 res!15935) b!34747))

(assert (= (and b!34747 res!15932) b!34749))

(assert (= (and b!34749 res!15934) b!34748))

(assert (= (and b!34748 res!15933) b!34744))

(assert (= start!4384 b!34746))

(assert (= start!4384 b!34745))

(assert (= start!4384 b!34743))

(declare-fun b_lambda!9475 () Bool)

(assert (=> (not b_lambda!9475) (not b!34744)))

(declare-fun t!4870 () Bool)

(declare-fun tb!4197 () Bool)

(assert (=> (and b!34743 (= (x!11100 thiss!3934) (y!1110 prev!18)) t!4870) tb!4197))

(declare-fun result!4453 () Bool)

(assert (=> tb!4197 (= result!4453 true)))

(assert (=> b!34744 t!4870))

(declare-fun b_and!7783 () Bool)

(assert (= b_and!7777 (and (=> t!4870 result!4453) b_and!7783)))

(declare-fun t!4872 () Bool)

(declare-fun tb!4199 () Bool)

(assert (=> (and b!34745 (= (y!1110 x$4!78) (y!1110 prev!18)) t!4872) tb!4199))

(declare-fun result!4455 () Bool)

(assert (=> tb!4199 (= result!4455 true)))

(assert (=> b!34744 t!4872))

(declare-fun b_and!7785 () Bool)

(assert (= b_and!7773 (and (=> t!4872 result!4455) b_and!7785)))

(declare-fun t!4874 () Bool)

(declare-fun tb!4201 () Bool)

(assert (=> (and b!34746 (= (x!11100 prev!18) (y!1110 prev!18)) t!4874) tb!4201))

(declare-fun result!4457 () Bool)

(assert (=> tb!4201 (= result!4457 true)))

(assert (=> b!34744 t!4874))

(declare-fun b_and!7787 () Bool)

(assert (= b_and!7765 (and (=> t!4874 result!4457) b_and!7787)))

(declare-fun t!4876 () Bool)

(declare-fun tb!4203 () Bool)

(assert (=> (and b!34746 (= (y!1110 prev!18) (y!1110 prev!18)) t!4876) tb!4203))

(declare-fun result!4459 () Bool)

(assert (=> tb!4203 (= result!4459 true)))

(assert (=> b!34744 t!4876))

(declare-fun b_and!7789 () Bool)

(assert (= b_and!7767 (and (=> t!4876 result!4459) b_and!7789)))

(declare-fun t!4878 () Bool)

(declare-fun tb!4205 () Bool)

(assert (=> (and b!34743 (= (y!1110 thiss!3934) (y!1110 prev!18)) t!4878) tb!4205))

(declare-fun result!4461 () Bool)

(assert (=> tb!4205 (= result!4461 true)))

(assert (=> b!34744 t!4878))

(declare-fun b_and!7791 () Bool)

(assert (= b_and!7779 (and (=> t!4878 result!4461) b_and!7791)))

(declare-fun t!4880 () Bool)

(declare-fun tb!4207 () Bool)

(assert (=> (and b!34745 (= (x!11100 x$4!78) (y!1110 prev!18)) t!4880) tb!4207))

(declare-fun result!4463 () Bool)

(assert (=> tb!4207 (= result!4463 true)))

(assert (=> b!34744 t!4880))

(declare-fun b_and!7793 () Bool)

(assert (= b_and!7771 (and (=> t!4880 result!4463) b_and!7793)))

(declare-fun b_lambda!9477 () Bool)

(assert (=> (not b_lambda!9477) (not b!34744)))

(declare-fun t!4882 () Bool)

(declare-fun tb!4209 () Bool)

(assert (=> (and b!34743 (= (x!11100 thiss!3934) (x!11100 thiss!3934)) t!4882) tb!4209))

(declare-fun result!4465 () Bool)

(assert (=> tb!4209 (= result!4465 true)))

(assert (=> b!34744 t!4882))

(declare-fun b_and!7795 () Bool)

(assert (= b_and!7783 (and (=> t!4882 result!4465) b_and!7795)))

(declare-fun tb!4211 () Bool)

(declare-fun t!4884 () Bool)

(assert (=> (and b!34746 (= (x!11100 prev!18) (x!11100 thiss!3934)) t!4884) tb!4211))

(declare-fun result!4467 () Bool)

(assert (=> tb!4211 (= result!4467 true)))

(assert (=> b!34744 t!4884))

(declare-fun b_and!7797 () Bool)

(assert (= b_and!7787 (and (=> t!4884 result!4467) b_and!7797)))

(declare-fun t!4886 () Bool)

(declare-fun tb!4213 () Bool)

(assert (=> (and b!34743 (= (y!1110 thiss!3934) (x!11100 thiss!3934)) t!4886) tb!4213))

(declare-fun result!4469 () Bool)

(assert (=> tb!4213 (= result!4469 true)))

(assert (=> b!34744 t!4886))

(declare-fun b_and!7799 () Bool)

(assert (= b_and!7791 (and (=> t!4886 result!4469) b_and!7799)))

(declare-fun tb!4215 () Bool)

(declare-fun t!4888 () Bool)

(assert (=> (and b!34746 (= (y!1110 prev!18) (x!11100 thiss!3934)) t!4888) tb!4215))

(declare-fun result!4471 () Bool)

(assert (=> tb!4215 (= result!4471 true)))

(assert (=> b!34744 t!4888))

(declare-fun b_and!7801 () Bool)

(assert (= b_and!7789 (and (=> t!4888 result!4471) b_and!7801)))

(declare-fun t!4890 () Bool)

(declare-fun tb!4217 () Bool)

(assert (=> (and b!34745 (= (x!11100 x$4!78) (x!11100 thiss!3934)) t!4890) tb!4217))

(declare-fun result!4473 () Bool)

(assert (=> tb!4217 (= result!4473 true)))

(assert (=> b!34744 t!4890))

(declare-fun b_and!7803 () Bool)

(assert (= b_and!7793 (and (=> t!4890 result!4473) b_and!7803)))

(declare-fun t!4892 () Bool)

(declare-fun tb!4219 () Bool)

(assert (=> (and b!34745 (= (y!1110 x$4!78) (x!11100 thiss!3934)) t!4892) tb!4219))

(declare-fun result!4475 () Bool)

(assert (=> tb!4219 (= result!4475 true)))

(assert (=> b!34744 t!4892))

(declare-fun b_and!7805 () Bool)

(assert (= b_and!7785 (and (=> t!4892 result!4475) b_and!7805)))

(declare-fun b_lambda!9479 () Bool)

(assert (=> (not b_lambda!9479) (not b!34748)))

(declare-fun t!4894 () Bool)

(declare-fun tb!4221 () Bool)

(assert (=> (and b!34746 (= (evidence!233 prev!18) (evidence!233 prev!18)) t!4894) tb!4221))

(declare-fun result!4477 () Bool)

(assert (=> tb!4221 (= result!4477 true)))

(assert (=> b!34748 t!4894))

(declare-fun b_and!7807 () Bool)

(assert (= b_and!7769 (and (=> t!4894 result!4477) b_and!7807)))

(declare-fun tb!4223 () Bool)

(declare-fun t!4896 () Bool)

(assert (=> (and b!34745 (= (evidence!233 x$4!78) (evidence!233 prev!18)) t!4896) tb!4223))

(declare-fun result!4479 () Bool)

(assert (=> tb!4223 (= result!4479 true)))

(assert (=> b!34748 t!4896))

(declare-fun b_and!7809 () Bool)

(assert (= b_and!7775 (and (=> t!4896 result!4479) b_and!7809)))

(declare-fun t!4898 () Bool)

(declare-fun tb!4225 () Bool)

(assert (=> (and b!34743 (= (evidence!233 thiss!3934) (evidence!233 prev!18)) t!4898) tb!4225))

(declare-fun result!4481 () Bool)

(assert (=> tb!4225 (= result!4481 true)))

(assert (=> b!34748 t!4898))

(declare-fun b_and!7811 () Bool)

(assert (= b_and!7781 (and (=> t!4898 result!4481) b_and!7811)))

(declare-fun m!37317 () Bool)

(assert (=> b!34744 m!37317))

(declare-fun m!37319 () Bool)

(assert (=> b!34744 m!37319))

(declare-fun m!37321 () Bool)

(assert (=> start!4384 m!37321))

(declare-fun m!37323 () Bool)

(assert (=> start!4384 m!37323))

(declare-fun m!37325 () Bool)

(assert (=> start!4384 m!37325))

(declare-fun m!37327 () Bool)

(assert (=> b!34748 m!37327))

(assert (=> b!34748 m!37327))

(declare-fun m!37329 () Bool)

(assert (=> b!34748 m!37329))

(push 1)

(assert (not b_next!5267))

(assert (not b!34748))

(assert (not b_next!5259))

(assert (not b_next!5253))

(assert (not b_lambda!9477))

(assert b_and!7809)

(assert (not b_next!5265))

(assert b_and!7805)

(assert (not b_next!5261))

(assert (not b_next!5257))

(assert b_and!7797)

(assert b_and!7807)

(assert b_and!7803)

(assert b_and!7799)

(assert (not b_next!5255))

(assert (not b_lambda!9475))

(assert (not b_next!5251))

(assert (not b_lambda!9479))

(assert (not start!4384))

(assert b_and!7795)

(assert (not b_next!5263))

(assert b_and!7811)

(assert b_and!7801)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5267))

(assert (not b_next!5259))

(assert (not b_next!5253))

(assert b_and!7809)

(assert (not b_next!5265))

(assert b_and!7805)

(assert (not b_next!5261))

(assert (not b_next!5257))

(assert b_and!7797)

(assert b_and!7807)

(assert b_and!7803)

(assert b_and!7799)

(assert (not b_next!5255))

(assert (not b_next!5251))

(assert b_and!7795)

(assert (not b_next!5263))

(assert b_and!7811)

(assert b_and!7801)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9481 () Bool)

(assert (= b_lambda!9477 (or (and b!34746 b_free!2143 (= (y!1110 prev!18) (x!11100 thiss!3934))) (and b!34746 b_free!2141 (= (x!11100 prev!18) (x!11100 thiss!3934))) (and b!34745 b_free!2147 (= (x!11100 x$4!78) (x!11100 thiss!3934))) (and b!34745 b_free!2149 (= (y!1110 x$4!78) (x!11100 thiss!3934))) (and b!34743 b_free!2155 (= (y!1110 thiss!3934) (x!11100 thiss!3934))) (and start!4384 (= lambda!4134 (x!11100 thiss!3934))) (and b!34747 (= lambda!4136 (x!11100 thiss!3934))) (and b!34743 b_free!2153) (and b!34747 (= lambda!4137 (x!11100 thiss!3934))) b_lambda!9481)))

(declare-fun bs!11171 () Bool)

(declare-fun d!18190 () Bool)

(assert (= bs!11171 (and d!18190 start!4384)))

(assert (=> bs!11171 (= (dynLambda!634 lambda!4134) x!11018)))

(assert (=> (and start!4384 (= lambda!4134 (x!11100 thiss!3934)) b!34744) d!18190))

(declare-fun bs!11172 () Bool)

(declare-fun d!18192 () Bool)

(assert (= bs!11172 (and d!18192 b!34747)))

(assert (=> bs!11172 (= (dynLambda!634 lambda!4136) y!1090)))

(assert (=> (and b!34747 (= lambda!4136 (x!11100 thiss!3934)) b!34744) d!18192))

(declare-fun bs!11173 () Bool)

(declare-fun d!18194 () Bool)

(assert (= bs!11173 (and d!18194 b!34747)))

(assert (=> bs!11173 (= (dynLambda!634 lambda!4137) t!4682)))

(assert (=> (and b!34747 (= lambda!4137 (x!11100 thiss!3934)) b!34744) d!18194))

(declare-fun b_lambda!9483 () Bool)

(assert (= b_lambda!9479 (or (and b!34745 b_free!2151 (= (evidence!233 x$4!78) (evidence!233 prev!18))) (and start!4384 (= lambda!4135 (evidence!233 prev!18))) (and b!34743 b_free!2157 (= (evidence!233 thiss!3934) (evidence!233 prev!18))) (and b!34747 (= lambda!4138 (evidence!233 prev!18))) (and b!34746 b_free!2145) b_lambda!9483)))

(declare-fun bs!11174 () Bool)

(declare-fun d!18196 () Bool)

(assert (= bs!11174 (and d!18196 start!4384)))

(declare-fun makeEqual!0 (Int Int) Unit!220)

(assert (=> bs!11174 (= (dynLambda!635 lambda!4135) (makeEqual!0 x!11018 y!1090))))

(declare-fun m!37331 () Bool)

(assert (=> bs!11174 m!37331))

(assert (=> (and start!4384 (= lambda!4135 (evidence!233 prev!18)) b!34748) d!18196))

(declare-fun bs!11175 () Bool)

(declare-fun d!18198 () Bool)

(assert (= bs!11175 (and d!18198 b!34747)))

(assert (=> bs!11175 (= (dynLambda!635 lambda!4138) (makeEqual!0 y!1090 z!194))))

(declare-fun m!37333 () Bool)

(assert (=> bs!11175 m!37333))

(assert (=> (and b!34747 (= lambda!4138 (evidence!233 prev!18)) b!34748) d!18198))

(declare-fun b_lambda!9485 () Bool)

(assert (= b_lambda!9475 (or (and b!34743 b_free!2155 (= (y!1110 thiss!3934) (y!1110 prev!18))) (and b!34747 (= lambda!4136 (y!1110 prev!18))) (and b!34746 b_free!2143) (and b!34745 b_free!2149 (= (y!1110 x$4!78) (y!1110 prev!18))) (and b!34746 b_free!2141 (= (x!11100 prev!18) (y!1110 prev!18))) (and b!34747 (= lambda!4137 (y!1110 prev!18))) (and start!4384 (= lambda!4134 (y!1110 prev!18))) (and b!34745 b_free!2147 (= (x!11100 x$4!78) (y!1110 prev!18))) (and b!34743 b_free!2153 (= (x!11100 thiss!3934) (y!1110 prev!18))) b_lambda!9485)))

(declare-fun bs!11176 () Bool)

(declare-fun d!18200 () Bool)

(assert (= bs!11176 (and d!18200 start!4384)))

(assert (=> bs!11176 (= (dynLambda!634 lambda!4134) x!11018)))

(assert (=> (and start!4384 (= lambda!4134 (y!1110 prev!18)) b!34744) d!18200))

(declare-fun bs!11177 () Bool)

(declare-fun d!18202 () Bool)

(assert (= bs!11177 (and d!18202 b!34747)))

(assert (=> bs!11177 (= (dynLambda!634 lambda!4137) t!4682)))

(assert (=> (and b!34747 (= lambda!4137 (y!1110 prev!18)) b!34744) d!18202))

(declare-fun bs!11178 () Bool)

(declare-fun d!18204 () Bool)

(assert (= bs!11178 (and d!18204 b!34747)))

(assert (=> bs!11178 (= (dynLambda!634 lambda!4136) y!1090)))

(assert (=> (and b!34747 (= lambda!4136 (y!1110 prev!18)) b!34744) d!18204))

(push 1)

(assert (not b_next!5267))

(assert (not b!34748))

(assert (not b_lambda!9481))

(assert (not b_next!5259))

(assert (not b_lambda!9485))

(assert (not b_next!5253))

(assert b_and!7809)

(assert (not b_next!5265))

(assert b_and!7805)

(assert (not b_next!5261))

(assert (not b_next!5257))

(assert b_and!7797)

(assert b_and!7807)

(assert b_and!7803)

(assert b_and!7799)

(assert (not b_next!5255))

(assert (not b_lambda!9483))

(assert (not b_next!5251))

(assert (not start!4384))

(assert b_and!7795)

(assert (not b_next!5263))

(assert (not bs!11175))

(assert b_and!7811)

(assert b_and!7801)

(assert (not bs!11174))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5267))

(assert (not b_next!5259))

(assert (not b_next!5253))

(assert b_and!7809)

(assert (not b_next!5265))

(assert b_and!7805)

(assert (not b_next!5261))

(assert (not b_next!5257))

(assert b_and!7797)

(assert b_and!7807)

(assert b_and!7803)

(assert b_and!7799)

(assert (not b_next!5255))

(assert (not b_next!5251))

(assert b_and!7795)

(assert (not b_next!5263))

(assert b_and!7811)

(assert b_and!7801)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18206 () Bool)

(assert (=> d!18206 (= (keepEvidence!4 (dynLambda!635 (evidence!233 prev!18))) true)))

(assert (=> b!34748 d!18206))

(declare-fun d!18208 () Bool)

(assert (=> d!18208 (= (inv!566 prev!18) (= (dynLambda!634 (x!11100 prev!18)) (dynLambda!634 (y!1110 prev!18))))))

(declare-fun b_lambda!9487 () Bool)

(assert (=> (not b_lambda!9487) (not d!18208)))

(declare-fun tb!4227 () Bool)

(declare-fun t!4900 () Bool)

(assert (=> (and b!34743 (= (y!1110 thiss!3934) (x!11100 prev!18)) t!4900) tb!4227))

(declare-fun result!4483 () Bool)

(assert (=> tb!4227 (= result!4483 true)))

(assert (=> d!18208 t!4900))

(declare-fun b_and!7813 () Bool)

(assert (= b_and!7799 (and (=> t!4900 result!4483) b_and!7813)))

(declare-fun t!4902 () Bool)

(declare-fun tb!4229 () Bool)

(assert (=> (and b!34746 (= (x!11100 prev!18) (x!11100 prev!18)) t!4902) tb!4229))

(declare-fun result!4485 () Bool)

(assert (=> tb!4229 (= result!4485 true)))

(assert (=> d!18208 t!4902))

(declare-fun b_and!7815 () Bool)

(assert (= b_and!7797 (and (=> t!4902 result!4485) b_and!7815)))

(declare-fun t!4904 () Bool)

(declare-fun tb!4231 () Bool)

(assert (=> (and b!34743 (= (x!11100 thiss!3934) (x!11100 prev!18)) t!4904) tb!4231))

(declare-fun result!4487 () Bool)

(assert (=> tb!4231 (= result!4487 true)))

(assert (=> d!18208 t!4904))

(declare-fun b_and!7817 () Bool)

(assert (= b_and!7795 (and (=> t!4904 result!4487) b_and!7817)))

(declare-fun tb!4233 () Bool)

(declare-fun t!4906 () Bool)

(assert (=> (and b!34745 (= (y!1110 x$4!78) (x!11100 prev!18)) t!4906) tb!4233))

(declare-fun result!4489 () Bool)

(assert (=> tb!4233 (= result!4489 true)))

(assert (=> d!18208 t!4906))

(declare-fun b_and!7819 () Bool)

(assert (= b_and!7805 (and (=> t!4906 result!4489) b_and!7819)))

(declare-fun t!4908 () Bool)

(declare-fun tb!4235 () Bool)

(assert (=> (and b!34746 (= (y!1110 prev!18) (x!11100 prev!18)) t!4908) tb!4235))

(declare-fun result!4491 () Bool)

(assert (=> tb!4235 (= result!4491 true)))

(assert (=> d!18208 t!4908))

(declare-fun b_and!7821 () Bool)

(assert (= b_and!7801 (and (=> t!4908 result!4491) b_and!7821)))

(declare-fun tb!4237 () Bool)

(declare-fun t!4910 () Bool)

(assert (=> (and b!34745 (= (x!11100 x$4!78) (x!11100 prev!18)) t!4910) tb!4237))

(declare-fun result!4493 () Bool)

(assert (=> tb!4237 (= result!4493 true)))

(assert (=> d!18208 t!4910))

(declare-fun b_and!7823 () Bool)

(assert (= b_and!7803 (and (=> t!4910 result!4493) b_and!7823)))

(declare-fun b_lambda!9489 () Bool)

(assert (=> (not b_lambda!9489) (not d!18208)))

(assert (=> d!18208 t!4880))

(declare-fun b_and!7825 () Bool)

(assert (= b_and!7823 (and (=> t!4880 result!4463) b_and!7825)))

(assert (=> d!18208 t!4870))

(declare-fun b_and!7827 () Bool)

(assert (= b_and!7817 (and (=> t!4870 result!4453) b_and!7827)))

(assert (=> d!18208 t!4878))

(declare-fun b_and!7829 () Bool)

(assert (= b_and!7813 (and (=> t!4878 result!4461) b_and!7829)))

(assert (=> d!18208 t!4872))

(declare-fun b_and!7831 () Bool)

(assert (= b_and!7819 (and (=> t!4872 result!4455) b_and!7831)))

(assert (=> d!18208 t!4874))

(declare-fun b_and!7833 () Bool)

(assert (= b_and!7815 (and (=> t!4874 result!4457) b_and!7833)))

(assert (=> d!18208 t!4876))

(declare-fun b_and!7835 () Bool)

(assert (= b_and!7821 (and (=> t!4876 result!4459) b_and!7835)))

(declare-fun m!37335 () Bool)

(assert (=> d!18208 m!37335))

(assert (=> d!18208 m!37317))

(assert (=> start!4384 d!18208))

(declare-fun d!18210 () Bool)

(assert (=> d!18210 (= (inv!566 x$4!78) (= (dynLambda!634 (x!11100 x$4!78)) (dynLambda!634 (y!1110 x$4!78))))))

(declare-fun b_lambda!9491 () Bool)

(assert (=> (not b_lambda!9491) (not d!18210)))

(declare-fun tb!4239 () Bool)

(declare-fun t!4912 () Bool)

(assert (=> (and b!34743 (= (y!1110 thiss!3934) (x!11100 x$4!78)) t!4912) tb!4239))

(declare-fun result!4495 () Bool)

(assert (=> tb!4239 (= result!4495 true)))

(assert (=> d!18210 t!4912))

(declare-fun b_and!7837 () Bool)

(assert (= b_and!7829 (and (=> t!4912 result!4495) b_and!7837)))

(declare-fun t!4914 () Bool)

(declare-fun tb!4241 () Bool)

(assert (=> (and b!34746 (= (x!11100 prev!18) (x!11100 x$4!78)) t!4914) tb!4241))

(declare-fun result!4497 () Bool)

(assert (=> tb!4241 (= result!4497 true)))

(assert (=> d!18210 t!4914))

(declare-fun b_and!7839 () Bool)

(assert (= b_and!7833 (and (=> t!4914 result!4497) b_and!7839)))

(declare-fun t!4916 () Bool)

(declare-fun tb!4243 () Bool)

(assert (=> (and b!34743 (= (x!11100 thiss!3934) (x!11100 x$4!78)) t!4916) tb!4243))

(declare-fun result!4499 () Bool)

(assert (=> tb!4243 (= result!4499 true)))

(assert (=> d!18210 t!4916))

(declare-fun b_and!7841 () Bool)

(assert (= b_and!7827 (and (=> t!4916 result!4499) b_and!7841)))

(declare-fun t!4918 () Bool)

(declare-fun tb!4245 () Bool)

(assert (=> (and b!34746 (= (y!1110 prev!18) (x!11100 x$4!78)) t!4918) tb!4245))

(declare-fun result!4501 () Bool)

(assert (=> tb!4245 (= result!4501 true)))

(assert (=> d!18210 t!4918))

(declare-fun b_and!7843 () Bool)

(assert (= b_and!7835 (and (=> t!4918 result!4501) b_and!7843)))

(declare-fun t!4920 () Bool)

(declare-fun tb!4247 () Bool)

(assert (=> (and b!34745 (= (y!1110 x$4!78) (x!11100 x$4!78)) t!4920) tb!4247))

(declare-fun result!4503 () Bool)

(assert (=> tb!4247 (= result!4503 true)))

(assert (=> d!18210 t!4920))

(declare-fun b_and!7845 () Bool)

(assert (= b_and!7831 (and (=> t!4920 result!4503) b_and!7845)))

(declare-fun t!4922 () Bool)

(declare-fun tb!4249 () Bool)

(assert (=> (and b!34745 (= (x!11100 x$4!78) (x!11100 x$4!78)) t!4922) tb!4249))

(declare-fun result!4505 () Bool)

(assert (=> tb!4249 (= result!4505 true)))

(assert (=> d!18210 t!4922))

(declare-fun b_and!7847 () Bool)

(assert (= b_and!7825 (and (=> t!4922 result!4505) b_and!7847)))

(declare-fun b_lambda!9493 () Bool)

(assert (=> (not b_lambda!9493) (not d!18210)))

(declare-fun tb!4251 () Bool)

(declare-fun t!4924 () Bool)

(assert (=> (and b!34746 (= (y!1110 prev!18) (y!1110 x$4!78)) t!4924) tb!4251))

(declare-fun result!4507 () Bool)

(assert (=> tb!4251 (= result!4507 true)))

(assert (=> d!18210 t!4924))

(declare-fun b_and!7849 () Bool)

(assert (= b_and!7843 (and (=> t!4924 result!4507) b_and!7849)))

(declare-fun tb!4253 () Bool)

(declare-fun t!4926 () Bool)

(assert (=> (and b!34743 (= (x!11100 thiss!3934) (y!1110 x$4!78)) t!4926) tb!4253))

(declare-fun result!4509 () Bool)

(assert (=> tb!4253 (= result!4509 true)))

(assert (=> d!18210 t!4926))

(declare-fun b_and!7851 () Bool)

(assert (= b_and!7841 (and (=> t!4926 result!4509) b_and!7851)))

(declare-fun t!4928 () Bool)

(declare-fun tb!4255 () Bool)

(assert (=> (and b!34745 (= (x!11100 x$4!78) (y!1110 x$4!78)) t!4928) tb!4255))

(declare-fun result!4511 () Bool)

(assert (=> tb!4255 (= result!4511 true)))

(assert (=> d!18210 t!4928))

(declare-fun b_and!7853 () Bool)

(assert (= b_and!7847 (and (=> t!4928 result!4511) b_and!7853)))

(declare-fun t!4930 () Bool)

(declare-fun tb!4257 () Bool)

(assert (=> (and b!34745 (= (y!1110 x$4!78) (y!1110 x$4!78)) t!4930) tb!4257))

(declare-fun result!4513 () Bool)

(assert (=> tb!4257 (= result!4513 true)))

(assert (=> d!18210 t!4930))

(declare-fun b_and!7855 () Bool)

(assert (= b_and!7845 (and (=> t!4930 result!4513) b_and!7855)))

(declare-fun tb!4259 () Bool)

(declare-fun t!4932 () Bool)

(assert (=> (and b!34743 (= (y!1110 thiss!3934) (y!1110 x$4!78)) t!4932) tb!4259))

(declare-fun result!4515 () Bool)

(assert (=> tb!4259 (= result!4515 true)))

(assert (=> d!18210 t!4932))

(declare-fun b_and!7857 () Bool)

(assert (= b_and!7837 (and (=> t!4932 result!4515) b_and!7857)))

(declare-fun tb!4261 () Bool)

(declare-fun t!4934 () Bool)

(assert (=> (and b!34746 (= (x!11100 prev!18) (y!1110 x$4!78)) t!4934) tb!4261))

(declare-fun result!4517 () Bool)

(assert (=> tb!4261 (= result!4517 true)))

(assert (=> d!18210 t!4934))

(declare-fun b_and!7859 () Bool)

(assert (= b_and!7839 (and (=> t!4934 result!4517) b_and!7859)))

(declare-fun m!37337 () Bool)

(assert (=> d!18210 m!37337))

(declare-fun m!37339 () Bool)

(assert (=> d!18210 m!37339))

(assert (=> start!4384 d!18210))

(declare-fun d!18212 () Bool)

(assert (=> d!18212 (= (inv!566 thiss!3934) (= (dynLambda!634 (x!11100 thiss!3934)) (dynLambda!634 (y!1110 thiss!3934))))))

(declare-fun b_lambda!9495 () Bool)

(assert (=> (not b_lambda!9495) (not d!18212)))

(assert (=> d!18212 t!4890))

(declare-fun b_and!7861 () Bool)

(assert (= b_and!7853 (and (=> t!4890 result!4473) b_and!7861)))

(assert (=> d!18212 t!4882))

(declare-fun b_and!7863 () Bool)

(assert (= b_and!7851 (and (=> t!4882 result!4465) b_and!7863)))

(assert (=> d!18212 t!4886))

(declare-fun b_and!7865 () Bool)

(assert (= b_and!7857 (and (=> t!4886 result!4469) b_and!7865)))

(assert (=> d!18212 t!4884))

(declare-fun b_and!7867 () Bool)

(assert (= b_and!7859 (and (=> t!4884 result!4467) b_and!7867)))

(assert (=> d!18212 t!4888))

(declare-fun b_and!7869 () Bool)

(assert (= b_and!7849 (and (=> t!4888 result!4471) b_and!7869)))

(assert (=> d!18212 t!4892))

(declare-fun b_and!7871 () Bool)

(assert (= b_and!7855 (and (=> t!4892 result!4475) b_and!7871)))

(declare-fun b_lambda!9497 () Bool)

(assert (=> (not b_lambda!9497) (not d!18212)))

(declare-fun t!4936 () Bool)

(declare-fun tb!4263 () Bool)

(assert (=> (and b!34743 (= (x!11100 thiss!3934) (y!1110 thiss!3934)) t!4936) tb!4263))

(declare-fun result!4519 () Bool)

(assert (=> tb!4263 (= result!4519 true)))

(assert (=> d!18212 t!4936))

(declare-fun b_and!7873 () Bool)

(assert (= b_and!7863 (and (=> t!4936 result!4519) b_and!7873)))

(declare-fun tb!4265 () Bool)

(declare-fun t!4938 () Bool)

(assert (=> (and b!34746 (= (x!11100 prev!18) (y!1110 thiss!3934)) t!4938) tb!4265))

(declare-fun result!4521 () Bool)

(assert (=> tb!4265 (= result!4521 true)))

(assert (=> d!18212 t!4938))

(declare-fun b_and!7875 () Bool)

(assert (= b_and!7867 (and (=> t!4938 result!4521) b_and!7875)))

(declare-fun tb!4267 () Bool)

(declare-fun t!4940 () Bool)

(assert (=> (and b!34745 (= (y!1110 x$4!78) (y!1110 thiss!3934)) t!4940) tb!4267))

(declare-fun result!4523 () Bool)

(assert (=> tb!4267 (= result!4523 true)))

(assert (=> d!18212 t!4940))

(declare-fun b_and!7877 () Bool)

(assert (= b_and!7871 (and (=> t!4940 result!4523) b_and!7877)))

(declare-fun t!4942 () Bool)

(declare-fun tb!4269 () Bool)

(assert (=> (and b!34743 (= (y!1110 thiss!3934) (y!1110 thiss!3934)) t!4942) tb!4269))

(declare-fun result!4525 () Bool)

(assert (=> tb!4269 (= result!4525 true)))

(assert (=> d!18212 t!4942))

(declare-fun b_and!7879 () Bool)

(assert (= b_and!7865 (and (=> t!4942 result!4525) b_and!7879)))

(declare-fun t!4944 () Bool)

(declare-fun tb!4271 () Bool)

(assert (=> (and b!34746 (= (y!1110 prev!18) (y!1110 thiss!3934)) t!4944) tb!4271))

(declare-fun result!4527 () Bool)

(assert (=> tb!4271 (= result!4527 true)))

(assert (=> d!18212 t!4944))

(declare-fun b_and!7881 () Bool)

(assert (= b_and!7869 (and (=> t!4944 result!4527) b_and!7881)))

(declare-fun t!4946 () Bool)

(declare-fun tb!4273 () Bool)

(assert (=> (and b!34745 (= (x!11100 x$4!78) (y!1110 thiss!3934)) t!4946) tb!4273))

(declare-fun result!4529 () Bool)

(assert (=> tb!4273 (= result!4529 true)))

(assert (=> d!18212 t!4946))

(declare-fun b_and!7883 () Bool)

(assert (= b_and!7861 (and (=> t!4946 result!4529) b_and!7883)))

(assert (=> d!18212 m!37319))

(declare-fun m!37341 () Bool)

(assert (=> d!18212 m!37341))

(assert (=> start!4384 d!18212))

(declare-fun d!18214 () Bool)

(assert (=> d!18214 (= y!1090 z!194)))

(assert (=> d!18214 true))

(declare-fun x$1!529 () Unit!220)

(assert (=> d!18214 (= (makeEqual!0 y!1090 z!194) x$1!529)))

(assert (=> bs!11175 d!18214))

(declare-fun d!18216 () Bool)

(assert (=> d!18216 (= x!11018 y!1090)))

(assert (=> d!18216 true))

(declare-fun x$1!530 () Unit!220)

(assert (=> d!18216 (= (makeEqual!0 x!11018 y!1090) x$1!530)))

(assert (=> bs!11174 d!18216))

(declare-fun b_lambda!9499 () Bool)

(assert (= b_lambda!9489 (or (and b!34743 b_free!2155 (= (y!1110 thiss!3934) (y!1110 prev!18))) (and b!34747 (= lambda!4136 (y!1110 prev!18))) (and b!34746 b_free!2143) (and b!34745 b_free!2149 (= (y!1110 x$4!78) (y!1110 prev!18))) (and b!34746 b_free!2141 (= (x!11100 prev!18) (y!1110 prev!18))) (and b!34747 (= lambda!4137 (y!1110 prev!18))) (and start!4384 (= lambda!4134 (y!1110 prev!18))) (and b!34745 b_free!2147 (= (x!11100 x$4!78) (y!1110 prev!18))) (and b!34743 b_free!2153 (= (x!11100 thiss!3934) (y!1110 prev!18))) b_lambda!9499)))

(assert (=> (and start!4384 (= lambda!4134 (y!1110 prev!18)) d!18208) d!18200))

(assert (=> (and b!34747 (= lambda!4137 (y!1110 prev!18)) d!18208) d!18202))

(assert (=> (and b!34747 (= lambda!4136 (y!1110 prev!18)) d!18208) d!18204))

(declare-fun b_lambda!9501 () Bool)

(assert (= b_lambda!9487 (or (and b!34745 b_free!2147 (= (x!11100 x$4!78) (x!11100 prev!18))) (and b!34747 (= lambda!4136 (x!11100 prev!18))) (and b!34743 b_free!2153 (= (x!11100 thiss!3934) (x!11100 prev!18))) (and b!34747 (= lambda!4137 (x!11100 prev!18))) (and b!34746 b_free!2143 (= (y!1110 prev!18) (x!11100 prev!18))) (and b!34746 b_free!2141) (and b!34745 b_free!2149 (= (y!1110 x$4!78) (x!11100 prev!18))) (and b!34743 b_free!2155 (= (y!1110 thiss!3934) (x!11100 prev!18))) (and start!4384 (= lambda!4134 (x!11100 prev!18))) b_lambda!9501)))

(declare-fun bs!11179 () Bool)

(declare-fun d!18218 () Bool)

(assert (= bs!11179 (and d!18218 b!34747)))

(assert (=> bs!11179 (= (dynLambda!634 lambda!4136) y!1090)))

(assert (=> (and b!34747 (= lambda!4136 (x!11100 prev!18)) d!18208) d!18218))

(declare-fun bs!11180 () Bool)

(declare-fun d!18220 () Bool)

(assert (= bs!11180 (and d!18220 b!34747)))

(assert (=> bs!11180 (= (dynLambda!634 lambda!4137) t!4682)))

(assert (=> (and b!34747 (= lambda!4137 (x!11100 prev!18)) d!18208) d!18220))

(declare-fun bs!11181 () Bool)

(declare-fun d!18222 () Bool)

(assert (= bs!11181 (and d!18222 start!4384)))

(assert (=> bs!11181 (= (dynLambda!634 lambda!4134) x!11018)))

(assert (=> (and start!4384 (= lambda!4134 (x!11100 prev!18)) d!18208) d!18222))

(declare-fun b_lambda!9503 () Bool)

(assert (= b_lambda!9493 (or (and b!34747 (= lambda!4136 (y!1110 x$4!78))) (and b!34745 b_free!2147 (= (x!11100 x$4!78) (y!1110 x$4!78))) (and b!34745 b_free!2149) (and b!34746 b_free!2143 (= (y!1110 prev!18) (y!1110 x$4!78))) (and b!34743 b_free!2155 (= (y!1110 thiss!3934) (y!1110 x$4!78))) (and start!4384 (= lambda!4134 (y!1110 x$4!78))) (and b!34746 b_free!2141 (= (x!11100 prev!18) (y!1110 x$4!78))) (and b!34743 b_free!2153 (= (x!11100 thiss!3934) (y!1110 x$4!78))) (and b!34747 (= lambda!4137 (y!1110 x$4!78))) b_lambda!9503)))

(declare-fun bs!11182 () Bool)

(declare-fun d!18224 () Bool)

(assert (= bs!11182 (and d!18224 start!4384)))

(assert (=> bs!11182 (= (dynLambda!634 lambda!4134) x!11018)))

(assert (=> (and start!4384 (= lambda!4134 (y!1110 x$4!78)) d!18210) d!18224))

(declare-fun bs!11183 () Bool)

(declare-fun d!18226 () Bool)

(assert (= bs!11183 (and d!18226 b!34747)))

(assert (=> bs!11183 (= (dynLambda!634 lambda!4137) t!4682)))

(assert (=> (and b!34747 (= lambda!4137 (y!1110 x$4!78)) d!18210) d!18226))

(declare-fun bs!11184 () Bool)

(declare-fun d!18228 () Bool)

(assert (= bs!11184 (and d!18228 b!34747)))

(assert (=> bs!11184 (= (dynLambda!634 lambda!4136) y!1090)))

(assert (=> (and b!34747 (= lambda!4136 (y!1110 x$4!78)) d!18210) d!18228))

(declare-fun b_lambda!9505 () Bool)

(assert (= b_lambda!9491 (or (and b!34746 b_free!2143 (= (y!1110 prev!18) (x!11100 x$4!78))) (and b!34746 b_free!2141 (= (x!11100 prev!18) (x!11100 x$4!78))) (and b!34747 (= lambda!4136 (x!11100 x$4!78))) (and b!34743 b_free!2155 (= (y!1110 thiss!3934) (x!11100 x$4!78))) (and b!34743 b_free!2153 (= (x!11100 thiss!3934) (x!11100 x$4!78))) (and b!34747 (= lambda!4137 (x!11100 x$4!78))) (and b!34745 b_free!2147) (and b!34745 b_free!2149 (= (y!1110 x$4!78) (x!11100 x$4!78))) (and start!4384 (= lambda!4134 (x!11100 x$4!78))) b_lambda!9505)))

(declare-fun bs!11185 () Bool)

(declare-fun d!18230 () Bool)

(assert (= bs!11185 (and d!18230 b!34747)))

(assert (=> bs!11185 (= (dynLambda!634 lambda!4137) t!4682)))

(assert (=> (and b!34747 (= lambda!4137 (x!11100 x$4!78)) d!18210) d!18230))

(declare-fun bs!11186 () Bool)

(declare-fun d!18232 () Bool)

(assert (= bs!11186 (and d!18232 b!34747)))

(assert (=> bs!11186 (= (dynLambda!634 lambda!4136) y!1090)))

(assert (=> (and b!34747 (= lambda!4136 (x!11100 x$4!78)) d!18210) d!18232))

(declare-fun bs!11187 () Bool)

(declare-fun d!18234 () Bool)

(assert (= bs!11187 (and d!18234 start!4384)))

(assert (=> bs!11187 (= (dynLambda!634 lambda!4134) x!11018)))

(assert (=> (and start!4384 (= lambda!4134 (x!11100 x$4!78)) d!18210) d!18234))

(declare-fun b_lambda!9507 () Bool)

(assert (= b_lambda!9495 (or (and b!34746 b_free!2143 (= (y!1110 prev!18) (x!11100 thiss!3934))) (and b!34746 b_free!2141 (= (x!11100 prev!18) (x!11100 thiss!3934))) (and b!34745 b_free!2147 (= (x!11100 x$4!78) (x!11100 thiss!3934))) (and b!34745 b_free!2149 (= (y!1110 x$4!78) (x!11100 thiss!3934))) (and b!34743 b_free!2155 (= (y!1110 thiss!3934) (x!11100 thiss!3934))) (and start!4384 (= lambda!4134 (x!11100 thiss!3934))) (and b!34747 (= lambda!4136 (x!11100 thiss!3934))) (and b!34743 b_free!2153) (and b!34747 (= lambda!4137 (x!11100 thiss!3934))) b_lambda!9507)))

(assert (=> (and start!4384 (= lambda!4134 (x!11100 thiss!3934)) d!18212) d!18190))

(assert (=> (and b!34747 (= lambda!4136 (x!11100 thiss!3934)) d!18212) d!18192))

(assert (=> (and b!34747 (= lambda!4137 (x!11100 thiss!3934)) d!18212) d!18194))

(declare-fun b_lambda!9509 () Bool)

(assert (= b_lambda!9497 (or (and start!4384 (= lambda!4134 (y!1110 thiss!3934))) (and b!34745 b_free!2147 (= (x!11100 x$4!78) (y!1110 thiss!3934))) (and b!34743 b_free!2153 (= (x!11100 thiss!3934) (y!1110 thiss!3934))) (and b!34745 b_free!2149 (= (y!1110 x$4!78) (y!1110 thiss!3934))) (and b!34746 b_free!2141 (= (x!11100 prev!18) (y!1110 thiss!3934))) (and b!34746 b_free!2143 (= (y!1110 prev!18) (y!1110 thiss!3934))) (and b!34743 b_free!2155) (and b!34747 (= lambda!4136 (y!1110 thiss!3934))) (and b!34747 (= lambda!4137 (y!1110 thiss!3934))) b_lambda!9509)))

(declare-fun bs!11188 () Bool)

(declare-fun d!18236 () Bool)

(assert (= bs!11188 (and d!18236 start!4384)))

(assert (=> bs!11188 (= (dynLambda!634 lambda!4134) x!11018)))

(assert (=> (and start!4384 (= lambda!4134 (y!1110 thiss!3934)) d!18212) d!18236))

(declare-fun bs!11189 () Bool)

(declare-fun d!18238 () Bool)

(assert (= bs!11189 (and d!18238 b!34747)))

(assert (=> bs!11189 (= (dynLambda!634 lambda!4136) y!1090)))

(assert (=> (and b!34747 (= lambda!4136 (y!1110 thiss!3934)) d!18212) d!18238))

(declare-fun bs!11190 () Bool)

(declare-fun d!18240 () Bool)

(assert (= bs!11190 (and d!18240 b!34747)))

(assert (=> bs!11190 (= (dynLambda!634 lambda!4137) t!4682)))

(assert (=> (and b!34747 (= lambda!4137 (y!1110 thiss!3934)) d!18212) d!18240))

(push 1)

(assert (not b_next!5267))

(assert (not b_lambda!9481))

(assert b_and!7873)

(assert (not b_lambda!9499))

(assert b_and!7883)

(assert (not b_lambda!9501))

(assert b_and!7881)

(assert (not b_next!5259))

(assert (not b_lambda!9485))

(assert (not b_lambda!9503))

(assert (not b_next!5253))

(assert b_and!7809)

(assert (not b_next!5265))

(assert (not b_lambda!9509))

(assert (not b_next!5261))

(assert (not b_next!5257))

(assert b_and!7807)

(assert (not b_next!5255))

(assert (not b_lambda!9483))

(assert (not b_lambda!9505))

(assert (not b_next!5251))

(assert (not b_next!5263))

(assert b_and!7875)

(assert b_and!7811)

(assert b_and!7879)

(assert (not b_lambda!9507))

(assert b_and!7877)

(check-sat)

(pop 1)

