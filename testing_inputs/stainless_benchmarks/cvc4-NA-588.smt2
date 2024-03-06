; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4376 () Bool)

(assert start!4376)

(declare-fun b!34721 () Bool)

(declare-fun b_free!2117 () Bool)

(declare-fun b_next!5091 () Bool)

(assert (=> b!34721 (= b_free!2117 (not b_next!5091))))

(declare-fun tp!7224 () Bool)

(declare-fun b_and!7573 () Bool)

(assert (=> b!34721 (= tp!7224 b_and!7573)))

(declare-fun b_free!2119 () Bool)

(declare-fun b_next!5093 () Bool)

(assert (=> b!34721 (= b_free!2119 (not b_next!5093))))

(declare-fun tp!7220 () Bool)

(declare-fun b_and!7575 () Bool)

(assert (=> b!34721 (= tp!7220 b_and!7575)))

(declare-fun b_free!2121 () Bool)

(declare-fun b_next!5095 () Bool)

(assert (=> b!34721 (= b_free!2121 (not b_next!5095))))

(declare-fun tp!7218 () Bool)

(declare-fun b_and!7577 () Bool)

(assert (=> b!34721 (= tp!7218 b_and!7577)))

(declare-fun b!34720 () Bool)

(declare-fun b_free!2123 () Bool)

(declare-fun b_next!5097 () Bool)

(assert (=> b!34720 (= b_free!2123 (not b_next!5097))))

(declare-fun tp!7226 () Bool)

(declare-fun b_and!7579 () Bool)

(assert (=> b!34720 (= tp!7226 b_and!7579)))

(declare-fun b_free!2125 () Bool)

(declare-fun b_next!5099 () Bool)

(assert (=> b!34720 (= b_free!2125 (not b_next!5099))))

(declare-fun tp!7229 () Bool)

(declare-fun b_and!7581 () Bool)

(assert (=> b!34720 (= tp!7229 b_and!7581)))

(declare-fun b_free!2127 () Bool)

(declare-fun b_next!5101 () Bool)

(assert (=> b!34720 (= b_free!2127 (not b_next!5101))))

(declare-fun tp!7225 () Bool)

(declare-fun b_and!7583 () Bool)

(assert (=> b!34720 (= tp!7225 b_and!7583)))

(declare-fun b!34718 () Bool)

(declare-fun b_free!2129 () Bool)

(declare-fun b_next!5103 () Bool)

(assert (=> b!34718 (= b_free!2129 (not b_next!5103))))

(declare-fun tp!7228 () Bool)

(declare-fun b_and!7585 () Bool)

(assert (=> b!34718 (= tp!7228 b_and!7585)))

(declare-fun b_free!2131 () Bool)

(declare-fun b_next!5105 () Bool)

(assert (=> b!34718 (= b_free!2131 (not b_next!5105))))

(declare-fun tp!7227 () Bool)

(declare-fun b_and!7587 () Bool)

(assert (=> b!34718 (= tp!7227 b_and!7587)))

(declare-fun b_free!2133 () Bool)

(declare-fun b_next!5107 () Bool)

(assert (=> b!34718 (= b_free!2133 (not b_next!5107))))

(declare-fun tp!7219 () Bool)

(declare-fun b_and!7589 () Bool)

(assert (=> b!34718 (= tp!7219 b_and!7589)))

(declare-fun b!34724 () Bool)

(declare-fun b_free!2135 () Bool)

(declare-fun b_next!5109 () Bool)

(assert (=> b!34724 (= b_free!2135 (not b_next!5109))))

(declare-fun tp!7223 () Bool)

(declare-fun b_and!7591 () Bool)

(assert (=> b!34724 (= tp!7223 b_and!7591)))

(declare-fun b_free!2137 () Bool)

(declare-fun b_next!5111 () Bool)

(assert (=> b!34724 (= b_free!2137 (not b_next!5111))))

(declare-fun tp!7222 () Bool)

(declare-fun b_and!7593 () Bool)

(assert (=> b!34724 (= tp!7222 b_and!7593)))

(declare-fun b_free!2139 () Bool)

(declare-fun b_next!5113 () Bool)

(assert (=> b!34724 (= b_free!2139 (not b_next!5113))))

(declare-fun tp!7221 () Bool)

(declare-fun b_and!7595 () Bool)

(assert (=> b!34724 (= tp!7221 b_and!7595)))

(assert (=> start!4376 true))

(declare-fun lambda!4115 () Int)

(declare-datatypes () ((Unit!218 (Unit!219))))

(declare-datatypes () ((RAEqEvidence!6 (RAEqEvidence!7 (x!11085 Int) (y!1108 Int) (evidence!232 Int)))))

(declare-fun thiss!3936 () RAEqEvidence!6)

(declare-fun dynLambda!632 (Int) Int)

(assert (=> (and b!34720 start!4376 (= (dynLambda!632 lambda!4115) (dynLambda!632 (y!1108 thiss!3936)))) (= lambda!4115 (y!1108 thiss!3936))))

(declare-fun x$3!99 () RAEqEvidence!6)

(assert (=> (and b!34721 start!4376 (= (dynLambda!632 lambda!4115) (dynLambda!632 (y!1108 x$3!99)))) (= lambda!4115 (y!1108 x$3!99))))

(declare-fun prev!17 () RAEqEvidence!6)

(assert (=> (and b!34718 start!4376 (= (dynLambda!632 lambda!4115) (dynLambda!632 (y!1108 prev!17)))) (= lambda!4115 (y!1108 prev!17))))

(assert (=> (and b!34718 start!4376 (= (dynLambda!632 lambda!4115) (dynLambda!632 (x!11085 prev!17)))) (= lambda!4115 (x!11085 prev!17))))

(assert (=> (and b!34720 start!4376 (= (dynLambda!632 lambda!4115) (dynLambda!632 (x!11085 thiss!3936)))) (= lambda!4115 (x!11085 thiss!3936))))

(declare-fun x$4!78 () RAEqEvidence!6)

(assert (=> (and b!34724 start!4376 (= (dynLambda!632 lambda!4115) (dynLambda!632 (y!1108 x$4!78)))) (= lambda!4115 (y!1108 x$4!78))))

(assert (=> (and b!34721 start!4376 (= (dynLambda!632 lambda!4115) (dynLambda!632 (x!11085 x$3!99)))) (= lambda!4115 (x!11085 x$3!99))))

(assert (=> (and b!34724 start!4376 (= (dynLambda!632 lambda!4115) (dynLambda!632 (x!11085 x$4!78)))) (= lambda!4115 (x!11085 x$4!78))))

(declare-fun b_next!5115 () Bool)

(assert (=> b!34720 (= b_next!5099 (or (and start!4376 (= lambda!4115 (y!1108 thiss!3936))) b_next!5115))))

(declare-fun b_next!5117 () Bool)

(assert (=> b!34721 (= b_next!5093 (or (and start!4376 (= lambda!4115 (y!1108 x$3!99))) b_next!5117))))

(declare-fun b_next!5119 () Bool)

(assert (=> b!34718 (= b_next!5105 (or (and start!4376 (= lambda!4115 (y!1108 prev!17))) b_next!5119))))

(declare-fun b_next!5121 () Bool)

(assert (=> b!34718 (= b_next!5103 (or (and start!4376 (= lambda!4115 (x!11085 prev!17))) b_next!5121))))

(declare-fun b_next!5123 () Bool)

(assert (=> b!34720 (= b_next!5097 (or (and start!4376 (= lambda!4115 (x!11085 thiss!3936))) b_next!5123))))

(declare-fun b_next!5125 () Bool)

(assert (=> b!34724 (= b_next!5111 (or (and start!4376 (= lambda!4115 (y!1108 x$4!78))) b_next!5125))))

(declare-fun b_next!5127 () Bool)

(assert (=> b!34721 (= b_next!5091 (or (and start!4376 (= lambda!4115 (x!11085 x$3!99))) b_next!5127))))

(declare-fun b_next!5129 () Bool)

(assert (=> b!34724 (= b_next!5109 (or (and start!4376 (= lambda!4115 (x!11085 x$4!78))) b_next!5129))))

(assert (=> start!4376 true))

(assert (=> start!4376 true))

(declare-fun lambda!4116 () Int)

(declare-fun b_next!5131 () Bool)

(assert (=> b!34721 (= b_next!5095 (or (and start!4376 (= lambda!4116 (evidence!232 x$3!99))) b_next!5131))))

(declare-fun b_next!5133 () Bool)

(assert (=> b!34720 (= b_next!5101 (or (and start!4376 (= lambda!4116 (evidence!232 thiss!3936))) b_next!5133))))

(declare-fun b_next!5135 () Bool)

(assert (=> b!34718 (= b_next!5107 (or (and start!4376 (= lambda!4116 (evidence!232 prev!17))) b_next!5135))))

(declare-fun b_next!5137 () Bool)

(assert (=> b!34724 (= b_next!5113 (or (and start!4376 (= lambda!4116 (evidence!232 x$4!78))) b_next!5137))))

(declare-fun bs!11131 () Bool)

(declare-fun b!34717 () Bool)

(assert (= bs!11131 (and b!34717 start!4376)))

(declare-fun x!11018 () Int)

(declare-fun lambda!4117 () Int)

(declare-fun y!1090 () Int)

(assert (=> bs!11131 (= (= y!1090 x!11018) (= lambda!4117 lambda!4115))))

(assert (=> b!34717 true))

(assert (=> (and b!34720 b!34717 (= (dynLambda!632 lambda!4117) (dynLambda!632 (y!1108 thiss!3936)))) (= lambda!4117 (y!1108 thiss!3936))))

(assert (=> (and b!34721 b!34717 (= (dynLambda!632 lambda!4117) (dynLambda!632 (y!1108 x$3!99)))) (= lambda!4117 (y!1108 x$3!99))))

(assert (=> (and b!34718 b!34717 (= (dynLambda!632 lambda!4117) (dynLambda!632 (y!1108 prev!17)))) (= lambda!4117 (y!1108 prev!17))))

(assert (=> (and b!34718 b!34717 (= (dynLambda!632 lambda!4117) (dynLambda!632 (x!11085 prev!17)))) (= lambda!4117 (x!11085 prev!17))))

(assert (=> (and b!34720 b!34717 (= (dynLambda!632 lambda!4117) (dynLambda!632 (x!11085 thiss!3936)))) (= lambda!4117 (x!11085 thiss!3936))))

(assert (=> (and b!34724 b!34717 (= (dynLambda!632 lambda!4117) (dynLambda!632 (y!1108 x$4!78)))) (= lambda!4117 (y!1108 x$4!78))))

(assert (=> (and b!34721 b!34717 (= (dynLambda!632 lambda!4117) (dynLambda!632 (x!11085 x$3!99)))) (= lambda!4117 (x!11085 x$3!99))))

(assert (=> (and b!34724 b!34717 (= (dynLambda!632 lambda!4117) (dynLambda!632 (x!11085 x$4!78)))) (= lambda!4117 (x!11085 x$4!78))))

(declare-fun b_next!5139 () Bool)

(assert (=> b!34720 (= b_next!5115 (or (and b!34717 (= lambda!4117 (y!1108 thiss!3936))) b_next!5139))))

(declare-fun b_next!5141 () Bool)

(assert (=> b!34721 (= b_next!5117 (or (and b!34717 (= lambda!4117 (y!1108 x$3!99))) b_next!5141))))

(declare-fun b_next!5143 () Bool)

(assert (=> b!34718 (= b_next!5119 (or (and b!34717 (= lambda!4117 (y!1108 prev!17))) b_next!5143))))

(declare-fun b_next!5145 () Bool)

(assert (=> b!34718 (= b_next!5121 (or (and b!34717 (= lambda!4117 (x!11085 prev!17))) b_next!5145))))

(declare-fun b_next!5147 () Bool)

(assert (=> b!34720 (= b_next!5123 (or (and b!34717 (= lambda!4117 (x!11085 thiss!3936))) b_next!5147))))

(declare-fun b_next!5149 () Bool)

(assert (=> b!34724 (= b_next!5125 (or (and b!34717 (= lambda!4117 (y!1108 x$4!78))) b_next!5149))))

(declare-fun b_next!5151 () Bool)

(assert (=> b!34721 (= b_next!5127 (or (and b!34717 (= lambda!4117 (x!11085 x$3!99))) b_next!5151))))

(declare-fun b_next!5153 () Bool)

(assert (=> b!34724 (= b_next!5129 (or (and b!34717 (= lambda!4117 (x!11085 x$4!78))) b_next!5153))))

(declare-fun lambda!4118 () Int)

(declare-fun z!194 () Int)

(assert (=> bs!11131 (= (and (= y!1090 x!11018) (= z!194 y!1090)) (= lambda!4118 lambda!4116))))

(assert (=> b!34717 true))

(assert (=> b!34717 true))

(declare-fun b_next!5155 () Bool)

(assert (=> b!34721 (= b_next!5131 (or (and b!34717 (= lambda!4118 (evidence!232 x$3!99))) b_next!5155))))

(declare-fun b_next!5157 () Bool)

(assert (=> b!34720 (= b_next!5133 (or (and b!34717 (= lambda!4118 (evidence!232 thiss!3936))) b_next!5157))))

(declare-fun b_next!5159 () Bool)

(assert (=> b!34718 (= b_next!5135 (or (and b!34717 (= lambda!4118 (evidence!232 prev!17))) b_next!5159))))

(declare-fun b_next!5161 () Bool)

(assert (=> b!34724 (= b_next!5137 (or (and b!34717 (= lambda!4118 (evidence!232 x$4!78))) b_next!5161))))

(declare-fun bs!11132 () Bool)

(declare-fun b!34719 () Bool)

(assert (= bs!11132 (and b!34719 start!4376)))

(declare-fun lambda!4119 () Int)

(assert (=> bs!11132 (= (= z!194 x!11018) (= lambda!4119 lambda!4115))))

(declare-fun bs!11133 () Bool)

(assert (= bs!11133 (and b!34719 b!34717)))

(assert (=> bs!11133 (= (= z!194 y!1090) (= lambda!4119 lambda!4117))))

(assert (=> b!34719 true))

(assert (=> (and b!34720 b!34719 (= (dynLambda!632 lambda!4119) (dynLambda!632 (y!1108 thiss!3936)))) (= lambda!4119 (y!1108 thiss!3936))))

(assert (=> (and b!34721 b!34719 (= (dynLambda!632 lambda!4119) (dynLambda!632 (y!1108 x$3!99)))) (= lambda!4119 (y!1108 x$3!99))))

(assert (=> (and b!34718 b!34719 (= (dynLambda!632 lambda!4119) (dynLambda!632 (y!1108 prev!17)))) (= lambda!4119 (y!1108 prev!17))))

(assert (=> (and b!34718 b!34719 (= (dynLambda!632 lambda!4119) (dynLambda!632 (x!11085 prev!17)))) (= lambda!4119 (x!11085 prev!17))))

(assert (=> (and b!34720 b!34719 (= (dynLambda!632 lambda!4119) (dynLambda!632 (x!11085 thiss!3936)))) (= lambda!4119 (x!11085 thiss!3936))))

(assert (=> (and b!34724 b!34719 (= (dynLambda!632 lambda!4119) (dynLambda!632 (y!1108 x$4!78)))) (= lambda!4119 (y!1108 x$4!78))))

(assert (=> (and b!34721 b!34719 (= (dynLambda!632 lambda!4119) (dynLambda!632 (x!11085 x$3!99)))) (= lambda!4119 (x!11085 x$3!99))))

(assert (=> (and b!34724 b!34719 (= (dynLambda!632 lambda!4119) (dynLambda!632 (x!11085 x$4!78)))) (= lambda!4119 (x!11085 x$4!78))))

(declare-fun b_next!5163 () Bool)

(assert (=> b!34720 (= b_next!5139 (or (and b!34719 (= lambda!4119 (y!1108 thiss!3936))) b_next!5163))))

(declare-fun b_next!5165 () Bool)

(assert (=> b!34721 (= b_next!5141 (or (and b!34719 (= lambda!4119 (y!1108 x$3!99))) b_next!5165))))

(declare-fun b_next!5167 () Bool)

(assert (=> b!34718 (= b_next!5143 (or (and b!34719 (= lambda!4119 (y!1108 prev!17))) b_next!5167))))

(declare-fun b_next!5169 () Bool)

(assert (=> b!34718 (= b_next!5145 (or (and b!34719 (= lambda!4119 (x!11085 prev!17))) b_next!5169))))

(declare-fun b_next!5171 () Bool)

(assert (=> b!34720 (= b_next!5147 (or (and b!34719 (= lambda!4119 (x!11085 thiss!3936))) b_next!5171))))

(declare-fun b_next!5173 () Bool)

(assert (=> b!34724 (= b_next!5149 (or (and b!34719 (= lambda!4119 (y!1108 x$4!78))) b_next!5173))))

(declare-fun b_next!5175 () Bool)

(assert (=> b!34721 (= b_next!5151 (or (and b!34719 (= lambda!4119 (x!11085 x$3!99))) b_next!5175))))

(declare-fun b_next!5177 () Bool)

(assert (=> b!34724 (= b_next!5153 (or (and b!34719 (= lambda!4119 (x!11085 x$4!78))) b_next!5177))))

(declare-fun lambda!4120 () Int)

(declare-fun t!4682 () Int)

(assert (=> bs!11132 (= (= t!4682 x!11018) (= lambda!4120 lambda!4115))))

(assert (=> bs!11133 (= (= t!4682 y!1090) (= lambda!4120 lambda!4117))))

(assert (=> b!34719 (= (= t!4682 z!194) (= lambda!4120 lambda!4119))))

(assert (=> b!34719 true))

(assert (=> (and b!34720 b!34719 (= (dynLambda!632 lambda!4120) (dynLambda!632 (y!1108 thiss!3936)))) (= lambda!4120 (y!1108 thiss!3936))))

(assert (=> (and b!34721 b!34719 (= (dynLambda!632 lambda!4120) (dynLambda!632 (y!1108 x$3!99)))) (= lambda!4120 (y!1108 x$3!99))))

(assert (=> (and b!34718 b!34719 (= (dynLambda!632 lambda!4120) (dynLambda!632 (y!1108 prev!17)))) (= lambda!4120 (y!1108 prev!17))))

(assert (=> (and b!34718 b!34719 (= (dynLambda!632 lambda!4120) (dynLambda!632 (x!11085 prev!17)))) (= lambda!4120 (x!11085 prev!17))))

(assert (=> (and b!34720 b!34719 (= (dynLambda!632 lambda!4120) (dynLambda!632 (x!11085 thiss!3936)))) (= lambda!4120 (x!11085 thiss!3936))))

(assert (=> (and b!34724 b!34719 (= (dynLambda!632 lambda!4120) (dynLambda!632 (y!1108 x$4!78)))) (= lambda!4120 (y!1108 x$4!78))))

(assert (=> (and b!34721 b!34719 (= (dynLambda!632 lambda!4120) (dynLambda!632 (x!11085 x$3!99)))) (= lambda!4120 (x!11085 x$3!99))))

(assert (=> (and b!34724 b!34719 (= (dynLambda!632 lambda!4120) (dynLambda!632 (x!11085 x$4!78)))) (= lambda!4120 (x!11085 x$4!78))))

(declare-fun b_next!5179 () Bool)

(assert (=> b!34720 (= b_next!5163 (or (and b!34719 (= lambda!4120 (y!1108 thiss!3936))) b_next!5179))))

(declare-fun b_next!5181 () Bool)

(assert (=> b!34721 (= b_next!5165 (or (and b!34719 (= lambda!4120 (y!1108 x$3!99))) b_next!5181))))

(declare-fun b_next!5183 () Bool)

(assert (=> b!34718 (= b_next!5167 (or (and b!34719 (= lambda!4120 (y!1108 prev!17))) b_next!5183))))

(declare-fun b_next!5185 () Bool)

(assert (=> b!34718 (= b_next!5169 (or (and b!34719 (= lambda!4120 (x!11085 prev!17))) b_next!5185))))

(declare-fun b_next!5187 () Bool)

(assert (=> b!34720 (= b_next!5171 (or (and b!34719 (= lambda!4120 (x!11085 thiss!3936))) b_next!5187))))

(declare-fun b_next!5189 () Bool)

(assert (=> b!34724 (= b_next!5173 (or (and b!34719 (= lambda!4120 (y!1108 x$4!78))) b_next!5189))))

(declare-fun b_next!5191 () Bool)

(assert (=> b!34721 (= b_next!5175 (or (and b!34719 (= lambda!4120 (x!11085 x$3!99))) b_next!5191))))

(declare-fun b_next!5193 () Bool)

(assert (=> b!34724 (= b_next!5177 (or (and b!34719 (= lambda!4120 (x!11085 x$4!78))) b_next!5193))))

(declare-fun lambda!4121 () Int)

(assert (=> bs!11132 (= (and (= z!194 x!11018) (= t!4682 y!1090)) (= lambda!4121 lambda!4116))))

(assert (=> bs!11133 (= (and (= z!194 y!1090) (= t!4682 z!194)) (= lambda!4121 lambda!4118))))

(assert (=> b!34719 true))

(assert (=> b!34719 true))

(declare-fun b_next!5195 () Bool)

(assert (=> b!34721 (= b_next!5155 (or (and b!34719 (= lambda!4121 (evidence!232 x$3!99))) b_next!5195))))

(declare-fun b_next!5197 () Bool)

(assert (=> b!34720 (= b_next!5157 (or (and b!34719 (= lambda!4121 (evidence!232 thiss!3936))) b_next!5197))))

(declare-fun b_next!5199 () Bool)

(assert (=> b!34718 (= b_next!5159 (or (and b!34719 (= lambda!4121 (evidence!232 prev!17))) b_next!5199))))

(declare-fun b_next!5201 () Bool)

(assert (=> b!34724 (= b_next!5161 (or (and b!34719 (= lambda!4121 (evidence!232 x$4!78))) b_next!5201))))

(declare-fun b!34716 () Bool)

(declare-fun e!17540 () Bool)

(assert (=> b!34716 (= e!17540 (not (= (dynLambda!632 (y!1108 prev!17)) (dynLambda!632 (x!11085 thiss!3936)))))))

(declare-fun res!15922 () Bool)

(assert (=> b!34717 (=> (not res!15922) (not e!17540))))

(assert (=> b!34717 (= res!15922 (= x$3!99 (RAEqEvidence!7 lambda!4117 lambda!4117 lambda!4118)))))

(declare-fun e!17541 () Bool)

(assert (=> b!34718 (= e!17541 (and tp!7228 tp!7227 tp!7219))))

(declare-fun res!15923 () Bool)

(assert (=> b!34719 (=> (not res!15923) (not e!17540))))

(assert (=> b!34719 (= res!15923 (= thiss!3936 (RAEqEvidence!7 lambda!4119 lambda!4120 lambda!4121)))))

(declare-fun res!15920 () Bool)

(assert (=> start!4376 (=> (not res!15920) (not e!17540))))

(assert (=> start!4376 (= res!15920 (= x$4!78 (RAEqEvidence!7 lambda!4115 lambda!4115 lambda!4116)))))

(assert (=> start!4376 e!17540))

(assert (=> start!4376 true))

(declare-fun e!17538 () Bool)

(declare-fun inv!565 (RAEqEvidence!6) Bool)

(assert (=> start!4376 (and (inv!565 x$3!99) e!17538)))

(declare-fun e!17542 () Bool)

(assert (=> start!4376 (and (inv!565 thiss!3936) e!17542)))

(assert (=> start!4376 (and (inv!565 prev!17) e!17541)))

(declare-fun e!17539 () Bool)

(assert (=> start!4376 (and (inv!565 x$4!78) e!17539)))

(assert (=> b!34720 (= e!17542 (and tp!7226 tp!7229 tp!7225))))

(assert (=> b!34721 (= e!17538 (and tp!7224 tp!7220 tp!7218))))

(declare-fun b!34722 () Bool)

(declare-fun res!15921 () Bool)

(assert (=> b!34722 (=> (not res!15921) (not e!17540))))

(declare-fun keepEvidence!3 (Unit!218) Bool)

(declare-fun dynLambda!633 (Int) Unit!218)

(assert (=> b!34722 (= res!15921 (keepEvidence!3 (dynLambda!633 (evidence!232 prev!17))))))

(declare-fun b!34723 () Bool)

(declare-fun res!15919 () Bool)

(assert (=> b!34723 (=> (not res!15919) (not e!17540))))

(assert (=> b!34723 (= res!15919 (= prev!17 x$3!99))))

(assert (=> b!34724 (= e!17539 (and tp!7223 tp!7222 tp!7221))))

(assert (= (and start!4376 res!15920) b!34717))

(assert (= (and b!34717 res!15922) b!34719))

(assert (= (and b!34719 res!15923) b!34723))

(assert (= (and b!34723 res!15919) b!34722))

(assert (= (and b!34722 res!15921) b!34716))

(assert (= start!4376 b!34721))

(assert (= start!4376 b!34720))

(assert (= start!4376 b!34718))

(assert (= start!4376 b!34724))

(declare-fun b_lambda!9431 () Bool)

(assert (=> (not b_lambda!9431) (not b!34716)))

(declare-fun t!4734 () Bool)

(declare-fun tb!4061 () Bool)

(assert (=> (and b!34721 (= (x!11085 x$3!99) (y!1108 prev!17)) t!4734) tb!4061))

(declare-fun result!4317 () Bool)

(assert (=> tb!4061 (= result!4317 true)))

(assert (=> b!34716 t!4734))

(declare-fun b_and!7597 () Bool)

(assert (= b_and!7573 (and (=> t!4734 result!4317) b_and!7597)))

(declare-fun t!4736 () Bool)

(declare-fun tb!4063 () Bool)

(assert (=> (and b!34718 (= (x!11085 prev!17) (y!1108 prev!17)) t!4736) tb!4063))

(declare-fun result!4319 () Bool)

(assert (=> tb!4063 (= result!4319 true)))

(assert (=> b!34716 t!4736))

(declare-fun b_and!7599 () Bool)

(assert (= b_and!7585 (and (=> t!4736 result!4319) b_and!7599)))

(declare-fun tb!4065 () Bool)

(declare-fun t!4738 () Bool)

(assert (=> (and b!34724 (= (y!1108 x$4!78) (y!1108 prev!17)) t!4738) tb!4065))

(declare-fun result!4321 () Bool)

(assert (=> tb!4065 (= result!4321 true)))

(assert (=> b!34716 t!4738))

(declare-fun b_and!7601 () Bool)

(assert (= b_and!7593 (and (=> t!4738 result!4321) b_and!7601)))

(declare-fun t!4740 () Bool)

(declare-fun tb!4067 () Bool)

(assert (=> (and b!34720 (= (x!11085 thiss!3936) (y!1108 prev!17)) t!4740) tb!4067))

(declare-fun result!4323 () Bool)

(assert (=> tb!4067 (= result!4323 true)))

(assert (=> b!34716 t!4740))

(declare-fun b_and!7603 () Bool)

(assert (= b_and!7579 (and (=> t!4740 result!4323) b_and!7603)))

(declare-fun tb!4069 () Bool)

(declare-fun t!4742 () Bool)

(assert (=> (and b!34720 (= (y!1108 thiss!3936) (y!1108 prev!17)) t!4742) tb!4069))

(declare-fun result!4325 () Bool)

(assert (=> tb!4069 (= result!4325 true)))

(assert (=> b!34716 t!4742))

(declare-fun b_and!7605 () Bool)

(assert (= b_and!7581 (and (=> t!4742 result!4325) b_and!7605)))

(declare-fun tb!4071 () Bool)

(declare-fun t!4744 () Bool)

(assert (=> (and b!34724 (= (x!11085 x$4!78) (y!1108 prev!17)) t!4744) tb!4071))

(declare-fun result!4327 () Bool)

(assert (=> tb!4071 (= result!4327 true)))

(assert (=> b!34716 t!4744))

(declare-fun b_and!7607 () Bool)

(assert (= b_and!7591 (and (=> t!4744 result!4327) b_and!7607)))

(declare-fun tb!4073 () Bool)

(declare-fun t!4746 () Bool)

(assert (=> (and b!34721 (= (y!1108 x$3!99) (y!1108 prev!17)) t!4746) tb!4073))

(declare-fun result!4329 () Bool)

(assert (=> tb!4073 (= result!4329 true)))

(assert (=> b!34716 t!4746))

(declare-fun b_and!7609 () Bool)

(assert (= b_and!7575 (and (=> t!4746 result!4329) b_and!7609)))

(declare-fun t!4748 () Bool)

(declare-fun tb!4075 () Bool)

(assert (=> (and b!34718 (= (y!1108 prev!17) (y!1108 prev!17)) t!4748) tb!4075))

(declare-fun result!4331 () Bool)

(assert (=> tb!4075 (= result!4331 true)))

(assert (=> b!34716 t!4748))

(declare-fun b_and!7611 () Bool)

(assert (= b_and!7587 (and (=> t!4748 result!4331) b_and!7611)))

(declare-fun b_lambda!9433 () Bool)

(assert (=> (not b_lambda!9433) (not b!34716)))

(declare-fun t!4750 () Bool)

(declare-fun tb!4077 () Bool)

(assert (=> (and b!34724 (= (y!1108 x$4!78) (x!11085 thiss!3936)) t!4750) tb!4077))

(declare-fun result!4333 () Bool)

(assert (=> tb!4077 (= result!4333 true)))

(assert (=> b!34716 t!4750))

(declare-fun b_and!7613 () Bool)

(assert (= b_and!7601 (and (=> t!4750 result!4333) b_and!7613)))

(declare-fun tb!4079 () Bool)

(declare-fun t!4752 () Bool)

(assert (=> (and b!34721 (= (y!1108 x$3!99) (x!11085 thiss!3936)) t!4752) tb!4079))

(declare-fun result!4335 () Bool)

(assert (=> tb!4079 (= result!4335 true)))

(assert (=> b!34716 t!4752))

(declare-fun b_and!7615 () Bool)

(assert (= b_and!7609 (and (=> t!4752 result!4335) b_and!7615)))

(declare-fun t!4754 () Bool)

(declare-fun tb!4081 () Bool)

(assert (=> (and b!34718 (= (x!11085 prev!17) (x!11085 thiss!3936)) t!4754) tb!4081))

(declare-fun result!4337 () Bool)

(assert (=> tb!4081 (= result!4337 true)))

(assert (=> b!34716 t!4754))

(declare-fun b_and!7617 () Bool)

(assert (= b_and!7599 (and (=> t!4754 result!4337) b_and!7617)))

(declare-fun tb!4083 () Bool)

(declare-fun t!4756 () Bool)

(assert (=> (and b!34721 (= (x!11085 x$3!99) (x!11085 thiss!3936)) t!4756) tb!4083))

(declare-fun result!4339 () Bool)

(assert (=> tb!4083 (= result!4339 true)))

(assert (=> b!34716 t!4756))

(declare-fun b_and!7619 () Bool)

(assert (= b_and!7597 (and (=> t!4756 result!4339) b_and!7619)))

(declare-fun t!4758 () Bool)

(declare-fun tb!4085 () Bool)

(assert (=> (and b!34720 (= (x!11085 thiss!3936) (x!11085 thiss!3936)) t!4758) tb!4085))

(declare-fun result!4341 () Bool)

(assert (=> tb!4085 (= result!4341 true)))

(assert (=> b!34716 t!4758))

(declare-fun b_and!7621 () Bool)

(assert (= b_and!7603 (and (=> t!4758 result!4341) b_and!7621)))

(declare-fun tb!4087 () Bool)

(declare-fun t!4760 () Bool)

(assert (=> (and b!34718 (= (y!1108 prev!17) (x!11085 thiss!3936)) t!4760) tb!4087))

(declare-fun result!4343 () Bool)

(assert (=> tb!4087 (= result!4343 true)))

(assert (=> b!34716 t!4760))

(declare-fun b_and!7623 () Bool)

(assert (= b_and!7611 (and (=> t!4760 result!4343) b_and!7623)))

(declare-fun t!4762 () Bool)

(declare-fun tb!4089 () Bool)

(assert (=> (and b!34720 (= (y!1108 thiss!3936) (x!11085 thiss!3936)) t!4762) tb!4089))

(declare-fun result!4345 () Bool)

(assert (=> tb!4089 (= result!4345 true)))

(assert (=> b!34716 t!4762))

(declare-fun b_and!7625 () Bool)

(assert (= b_and!7605 (and (=> t!4762 result!4345) b_and!7625)))

(declare-fun tb!4091 () Bool)

(declare-fun t!4764 () Bool)

(assert (=> (and b!34724 (= (x!11085 x$4!78) (x!11085 thiss!3936)) t!4764) tb!4091))

(declare-fun result!4347 () Bool)

(assert (=> tb!4091 (= result!4347 true)))

(assert (=> b!34716 t!4764))

(declare-fun b_and!7627 () Bool)

(assert (= b_and!7607 (and (=> t!4764 result!4347) b_and!7627)))

(declare-fun b_lambda!9435 () Bool)

(assert (=> (not b_lambda!9435) (not b!34722)))

(declare-fun tb!4093 () Bool)

(declare-fun t!4766 () Bool)

(assert (=> (and b!34721 (= (evidence!232 x$3!99) (evidence!232 prev!17)) t!4766) tb!4093))

(declare-fun result!4349 () Bool)

(assert (=> tb!4093 (= result!4349 true)))

(assert (=> b!34722 t!4766))

(declare-fun b_and!7629 () Bool)

(assert (= b_and!7577 (and (=> t!4766 result!4349) b_and!7629)))

(declare-fun tb!4095 () Bool)

(declare-fun t!4768 () Bool)

(assert (=> (and b!34720 (= (evidence!232 thiss!3936) (evidence!232 prev!17)) t!4768) tb!4095))

(declare-fun result!4351 () Bool)

(assert (=> tb!4095 (= result!4351 true)))

(assert (=> b!34722 t!4768))

(declare-fun b_and!7631 () Bool)

(assert (= b_and!7583 (and (=> t!4768 result!4351) b_and!7631)))

(declare-fun t!4770 () Bool)

(declare-fun tb!4097 () Bool)

(assert (=> (and b!34718 (= (evidence!232 prev!17) (evidence!232 prev!17)) t!4770) tb!4097))

(declare-fun result!4353 () Bool)

(assert (=> tb!4097 (= result!4353 true)))

(assert (=> b!34722 t!4770))

(declare-fun b_and!7633 () Bool)

(assert (= b_and!7589 (and (=> t!4770 result!4353) b_and!7633)))

(declare-fun tb!4099 () Bool)

(declare-fun t!4772 () Bool)

(assert (=> (and b!34724 (= (evidence!232 x$4!78) (evidence!232 prev!17)) t!4772) tb!4099))

(declare-fun result!4355 () Bool)

(assert (=> tb!4099 (= result!4355 true)))

(assert (=> b!34722 t!4772))

(declare-fun b_and!7635 () Bool)

(assert (= b_and!7595 (and (=> t!4772 result!4355) b_and!7635)))

(declare-fun m!37283 () Bool)

(assert (=> b!34716 m!37283))

(declare-fun m!37285 () Bool)

(assert (=> b!34716 m!37285))

(declare-fun m!37287 () Bool)

(assert (=> start!4376 m!37287))

(declare-fun m!37289 () Bool)

(assert (=> start!4376 m!37289))

(declare-fun m!37291 () Bool)

(assert (=> start!4376 m!37291))

(declare-fun m!37293 () Bool)

(assert (=> start!4376 m!37293))

(declare-fun m!37295 () Bool)

(assert (=> b!34722 m!37295))

(assert (=> b!34722 m!37295))

(declare-fun m!37297 () Bool)

(assert (=> b!34722 m!37297))

(push 1)

(assert (not start!4376))

(assert b_and!7621)

(assert (not b_lambda!9431))

(assert (not b_next!5193))

(assert b_and!7629)

(assert (not b_next!5181))

(assert b_and!7625)

(assert (not b_next!5179))

(assert (not b_lambda!9435))

(assert (not b_next!5191))

(assert (not b_next!5187))

(assert (not b_next!5189))

(assert (not b_next!5185))

(assert b_and!7613)

(assert (not b_next!5197))

(assert (not b_lambda!9433))

(assert (not b_next!5195))

(assert (not b!34722))

(assert b_and!7617)

(assert b_and!7635)

(assert b_and!7619)

(assert b_and!7623)

(assert (not b_next!5183))

(assert b_and!7631)

(assert (not b_next!5201))

(assert b_and!7615)

(assert b_and!7627)

(assert b_and!7633)

(assert (not b_next!5199))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7621)

(assert (not b_next!5193))

(assert b_and!7629)

(assert (not b_next!5181))

(assert b_and!7625)

(assert (not b_next!5179))

(assert (not b_next!5191))

(assert (not b_next!5187))

(assert (not b_next!5189))

(assert (not b_next!5185))

(assert b_and!7613)

(assert (not b_next!5197))

(assert (not b_next!5195))

(assert b_and!7617)

(assert b_and!7635)

(assert b_and!7619)

(assert b_and!7623)

(assert (not b_next!5183))

(assert b_and!7631)

(assert (not b_next!5201))

(assert b_and!7615)

(assert b_and!7627)

(assert b_and!7633)

(assert (not b_next!5199))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9437 () Bool)

(assert (= b_lambda!9433 (or (and b!34718 b_free!2129 (= (x!11085 prev!17) (x!11085 thiss!3936))) (and b!34717 (= lambda!4117 (x!11085 thiss!3936))) (and b!34724 b_free!2137 (= (y!1108 x$4!78) (x!11085 thiss!3936))) (and b!34724 b_free!2135 (= (x!11085 x$4!78) (x!11085 thiss!3936))) (and b!34721 b_free!2117 (= (x!11085 x$3!99) (x!11085 thiss!3936))) (and b!34720 b_free!2123) (and start!4376 (= lambda!4115 (x!11085 thiss!3936))) (and b!34718 b_free!2131 (= (y!1108 prev!17) (x!11085 thiss!3936))) (and b!34719 (= lambda!4119 (x!11085 thiss!3936))) (and b!34719 (= lambda!4120 (x!11085 thiss!3936))) (and b!34720 b_free!2125 (= (y!1108 thiss!3936) (x!11085 thiss!3936))) (and b!34721 b_free!2119 (= (y!1108 x$3!99) (x!11085 thiss!3936))) b_lambda!9437)))

(declare-fun bs!11134 () Bool)

(declare-fun d!18104 () Bool)

(assert (= bs!11134 (and d!18104 start!4376)))

(assert (=> bs!11134 (= (dynLambda!632 lambda!4115) x!11018)))

(assert (=> (and start!4376 (= lambda!4115 (x!11085 thiss!3936)) b!34716) d!18104))

(declare-fun bs!11135 () Bool)

(declare-fun d!18106 () Bool)

(assert (= bs!11135 (and d!18106 b!34719)))

(assert (=> bs!11135 (= (dynLambda!632 lambda!4119) z!194)))

(assert (=> (and b!34719 (= lambda!4119 (x!11085 thiss!3936)) b!34716) d!18106))

(declare-fun bs!11136 () Bool)

(declare-fun d!18108 () Bool)

(assert (= bs!11136 (and d!18108 b!34717)))

(assert (=> bs!11136 (= (dynLambda!632 lambda!4117) y!1090)))

(assert (=> (and b!34717 (= lambda!4117 (x!11085 thiss!3936)) b!34716) d!18108))

(declare-fun bs!11137 () Bool)

(declare-fun d!18110 () Bool)

(assert (= bs!11137 (and d!18110 b!34719)))

(assert (=> bs!11137 (= (dynLambda!632 lambda!4120) t!4682)))

(assert (=> (and b!34719 (= lambda!4120 (x!11085 thiss!3936)) b!34716) d!18110))

(declare-fun b_lambda!9439 () Bool)

(assert (= b_lambda!9435 (or (and start!4376 (= lambda!4116 (evidence!232 prev!17))) (and b!34718 b_free!2133) (and b!34724 b_free!2139 (= (evidence!232 x$4!78) (evidence!232 prev!17))) (and b!34717 (= lambda!4118 (evidence!232 prev!17))) (and b!34721 b_free!2121 (= (evidence!232 x$3!99) (evidence!232 prev!17))) (and b!34719 (= lambda!4121 (evidence!232 prev!17))) (and b!34720 b_free!2127 (= (evidence!232 thiss!3936) (evidence!232 prev!17))) b_lambda!9439)))

(declare-fun bs!11138 () Bool)

(declare-fun d!18112 () Bool)

(assert (= bs!11138 (and d!18112 b!34719)))

(declare-fun makeEqual!0 (Int Int) Unit!218)

(assert (=> bs!11138 (= (dynLambda!633 lambda!4121) (makeEqual!0 z!194 t!4682))))

(declare-fun m!37299 () Bool)

(assert (=> bs!11138 m!37299))

(assert (=> (and b!34719 (= lambda!4121 (evidence!232 prev!17)) b!34722) d!18112))

(declare-fun bs!11139 () Bool)

(declare-fun d!18114 () Bool)

(assert (= bs!11139 (and d!18114 start!4376)))

(assert (=> bs!11139 (= (dynLambda!633 lambda!4116) (makeEqual!0 x!11018 y!1090))))

(declare-fun m!37301 () Bool)

(assert (=> bs!11139 m!37301))

(assert (=> (and start!4376 (= lambda!4116 (evidence!232 prev!17)) b!34722) d!18114))

(declare-fun bs!11140 () Bool)

(declare-fun d!18116 () Bool)

(assert (= bs!11140 (and d!18116 b!34717)))

(assert (=> bs!11140 (= (dynLambda!633 lambda!4118) (makeEqual!0 y!1090 z!194))))

(declare-fun m!37303 () Bool)

(assert (=> bs!11140 m!37303))

(assert (=> (and b!34717 (= lambda!4118 (evidence!232 prev!17)) b!34722) d!18116))

(declare-fun b_lambda!9441 () Bool)

(assert (= b_lambda!9431 (or (and start!4376 (= lambda!4115 (y!1108 prev!17))) (and b!34724 b_free!2135 (= (x!11085 x$4!78) (y!1108 prev!17))) (and b!34718 b_free!2129 (= (x!11085 prev!17) (y!1108 prev!17))) (and b!34720 b_free!2125 (= (y!1108 thiss!3936) (y!1108 prev!17))) (and b!34718 b_free!2131) (and b!34719 (= lambda!4119 (y!1108 prev!17))) (and b!34720 b_free!2123 (= (x!11085 thiss!3936) (y!1108 prev!17))) (and b!34719 (= lambda!4120 (y!1108 prev!17))) (and b!34717 (= lambda!4117 (y!1108 prev!17))) (and b!34721 b_free!2117 (= (x!11085 x$3!99) (y!1108 prev!17))) (and b!34721 b_free!2119 (= (y!1108 x$3!99) (y!1108 prev!17))) (and b!34724 b_free!2137 (= (y!1108 x$4!78) (y!1108 prev!17))) b_lambda!9441)))

(declare-fun bs!11141 () Bool)

(declare-fun d!18118 () Bool)

(assert (= bs!11141 (and d!18118 start!4376)))

(assert (=> bs!11141 (= (dynLambda!632 lambda!4115) x!11018)))

(assert (=> (and start!4376 (= lambda!4115 (y!1108 prev!17)) b!34716) d!18118))

(declare-fun bs!11142 () Bool)

(declare-fun d!18120 () Bool)

(assert (= bs!11142 (and d!18120 b!34717)))

(assert (=> bs!11142 (= (dynLambda!632 lambda!4117) y!1090)))

(assert (=> (and b!34717 (= lambda!4117 (y!1108 prev!17)) b!34716) d!18120))

(declare-fun bs!11143 () Bool)

(declare-fun d!18122 () Bool)

(assert (= bs!11143 (and d!18122 b!34719)))

(assert (=> bs!11143 (= (dynLambda!632 lambda!4120) t!4682)))

(assert (=> (and b!34719 (= lambda!4120 (y!1108 prev!17)) b!34716) d!18122))

(declare-fun bs!11144 () Bool)

(declare-fun d!18124 () Bool)

(assert (= bs!11144 (and d!18124 b!34719)))

(assert (=> bs!11144 (= (dynLambda!632 lambda!4119) z!194)))

(assert (=> (and b!34719 (= lambda!4119 (y!1108 prev!17)) b!34716) d!18124))

(push 1)

(assert (not start!4376))

(assert b_and!7621)

(assert (not b_next!5193))

(assert b_and!7629)

(assert (not bs!11138))

(assert (not b_next!5181))

(assert b_and!7625)

(assert (not b_next!5179))

(assert (not bs!11140))

(assert (not b_lambda!9439))

(assert (not b_next!5191))

(assert (not b_next!5187))

(assert (not b_next!5189))

(assert (not b_next!5185))

(assert b_and!7613)

(assert (not b_next!5197))

(assert (not b_next!5195))

(assert (not bs!11139))

(assert (not b!34722))

(assert b_and!7617)

(assert b_and!7635)

(assert b_and!7619)

(assert b_and!7623)

(assert (not b_next!5183))

(assert (not b_lambda!9441))

(assert b_and!7631)

(assert (not b_next!5201))

(assert b_and!7615)

(assert b_and!7627)

(assert (not b_lambda!9437))

(assert b_and!7633)

(assert (not b_next!5199))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7621)

(assert (not b_next!5193))

(assert b_and!7629)

(assert (not b_next!5181))

(assert b_and!7625)

(assert (not b_next!5179))

(assert (not b_next!5191))

(assert (not b_next!5187))

(assert (not b_next!5189))

(assert (not b_next!5185))

(assert b_and!7613)

(assert (not b_next!5197))

(assert (not b_next!5195))

(assert b_and!7617)

(assert b_and!7635)

(assert b_and!7619)

(assert b_and!7623)

(assert (not b_next!5183))

(assert b_and!7631)

(assert (not b_next!5201))

(assert b_and!7615)

(assert b_and!7627)

(assert b_and!7633)

(assert (not b_next!5199))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18126 () Bool)

(assert (=> d!18126 (= z!194 t!4682)))

(assert (=> d!18126 true))

(declare-fun x$1!524 () Unit!218)

(assert (=> d!18126 (= (makeEqual!0 z!194 t!4682) x$1!524)))

(assert (=> bs!11138 d!18126))

(declare-fun d!18128 () Bool)

(assert (=> d!18128 (= y!1090 z!194)))

(assert (=> d!18128 true))

(declare-fun x$1!525 () Unit!218)

(assert (=> d!18128 (= (makeEqual!0 y!1090 z!194) x$1!525)))

(assert (=> bs!11140 d!18128))

(declare-fun d!18130 () Bool)

(assert (=> d!18130 (= (keepEvidence!3 (dynLambda!633 (evidence!232 prev!17))) true)))

(assert (=> b!34722 d!18130))

(declare-fun d!18132 () Bool)

(assert (=> d!18132 (= x!11018 y!1090)))

(assert (=> d!18132 true))

(declare-fun x$1!526 () Unit!218)

(assert (=> d!18132 (= (makeEqual!0 x!11018 y!1090) x$1!526)))

(assert (=> bs!11139 d!18132))

(declare-fun d!18134 () Bool)

(assert (=> d!18134 (= (inv!565 x$3!99) (= (dynLambda!632 (x!11085 x$3!99)) (dynLambda!632 (y!1108 x$3!99))))))

(declare-fun b_lambda!9443 () Bool)

(assert (=> (not b_lambda!9443) (not d!18134)))

(declare-fun t!4774 () Bool)

(declare-fun tb!4101 () Bool)

(assert (=> (and b!34721 (= (y!1108 x$3!99) (x!11085 x$3!99)) t!4774) tb!4101))

(declare-fun result!4357 () Bool)

(assert (=> tb!4101 (= result!4357 true)))

(assert (=> d!18134 t!4774))

(declare-fun b_and!7637 () Bool)

(assert (= b_and!7615 (and (=> t!4774 result!4357) b_and!7637)))

(declare-fun tb!4103 () Bool)

(declare-fun t!4776 () Bool)

(assert (=> (and b!34720 (= (y!1108 thiss!3936) (x!11085 x$3!99)) t!4776) tb!4103))

(declare-fun result!4359 () Bool)

(assert (=> tb!4103 (= result!4359 true)))

(assert (=> d!18134 t!4776))

(declare-fun b_and!7639 () Bool)

(assert (= b_and!7625 (and (=> t!4776 result!4359) b_and!7639)))

(declare-fun tb!4105 () Bool)

(declare-fun t!4778 () Bool)

(assert (=> (and b!34724 (= (x!11085 x$4!78) (x!11085 x$3!99)) t!4778) tb!4105))

(declare-fun result!4361 () Bool)

(assert (=> tb!4105 (= result!4361 true)))

(assert (=> d!18134 t!4778))

(declare-fun b_and!7641 () Bool)

(assert (= b_and!7627 (and (=> t!4778 result!4361) b_and!7641)))

(declare-fun t!4780 () Bool)

(declare-fun tb!4107 () Bool)

(assert (=> (and b!34718 (= (y!1108 prev!17) (x!11085 x$3!99)) t!4780) tb!4107))

(declare-fun result!4363 () Bool)

(assert (=> tb!4107 (= result!4363 true)))

(assert (=> d!18134 t!4780))

(declare-fun b_and!7643 () Bool)

(assert (= b_and!7623 (and (=> t!4780 result!4363) b_and!7643)))

(declare-fun t!4782 () Bool)

(declare-fun tb!4109 () Bool)

(assert (=> (and b!34724 (= (y!1108 x$4!78) (x!11085 x$3!99)) t!4782) tb!4109))

(declare-fun result!4365 () Bool)

(assert (=> tb!4109 (= result!4365 true)))

(assert (=> d!18134 t!4782))

(declare-fun b_and!7645 () Bool)

(assert (= b_and!7613 (and (=> t!4782 result!4365) b_and!7645)))

(declare-fun tb!4111 () Bool)

(declare-fun t!4784 () Bool)

(assert (=> (and b!34718 (= (x!11085 prev!17) (x!11085 x$3!99)) t!4784) tb!4111))

(declare-fun result!4367 () Bool)

(assert (=> tb!4111 (= result!4367 true)))

(assert (=> d!18134 t!4784))

(declare-fun b_and!7647 () Bool)

(assert (= b_and!7617 (and (=> t!4784 result!4367) b_and!7647)))

(declare-fun tb!4113 () Bool)

(declare-fun t!4786 () Bool)

(assert (=> (and b!34720 (= (x!11085 thiss!3936) (x!11085 x$3!99)) t!4786) tb!4113))

(declare-fun result!4369 () Bool)

(assert (=> tb!4113 (= result!4369 true)))

(assert (=> d!18134 t!4786))

(declare-fun b_and!7649 () Bool)

(assert (= b_and!7621 (and (=> t!4786 result!4369) b_and!7649)))

(declare-fun t!4788 () Bool)

(declare-fun tb!4115 () Bool)

(assert (=> (and b!34721 (= (x!11085 x$3!99) (x!11085 x$3!99)) t!4788) tb!4115))

(declare-fun result!4371 () Bool)

(assert (=> tb!4115 (= result!4371 true)))

(assert (=> d!18134 t!4788))

(declare-fun b_and!7651 () Bool)

(assert (= b_and!7619 (and (=> t!4788 result!4371) b_and!7651)))

(declare-fun b_lambda!9445 () Bool)

(assert (=> (not b_lambda!9445) (not d!18134)))

(declare-fun t!4790 () Bool)

(declare-fun tb!4117 () Bool)

(assert (=> (and b!34724 (= (x!11085 x$4!78) (y!1108 x$3!99)) t!4790) tb!4117))

(declare-fun result!4373 () Bool)

(assert (=> tb!4117 (= result!4373 true)))

(assert (=> d!18134 t!4790))

(declare-fun b_and!7653 () Bool)

(assert (= b_and!7641 (and (=> t!4790 result!4373) b_and!7653)))

(declare-fun t!4792 () Bool)

(declare-fun tb!4119 () Bool)

(assert (=> (and b!34724 (= (y!1108 x$4!78) (y!1108 x$3!99)) t!4792) tb!4119))

(declare-fun result!4375 () Bool)

(assert (=> tb!4119 (= result!4375 true)))

(assert (=> d!18134 t!4792))

(declare-fun b_and!7655 () Bool)

(assert (= b_and!7645 (and (=> t!4792 result!4375) b_and!7655)))

(declare-fun t!4794 () Bool)

(declare-fun tb!4121 () Bool)

(assert (=> (and b!34720 (= (y!1108 thiss!3936) (y!1108 x$3!99)) t!4794) tb!4121))

(declare-fun result!4377 () Bool)

(assert (=> tb!4121 (= result!4377 true)))

(assert (=> d!18134 t!4794))

(declare-fun b_and!7657 () Bool)

(assert (= b_and!7639 (and (=> t!4794 result!4377) b_and!7657)))

(declare-fun t!4796 () Bool)

(declare-fun tb!4123 () Bool)

(assert (=> (and b!34718 (= (x!11085 prev!17) (y!1108 x$3!99)) t!4796) tb!4123))

(declare-fun result!4379 () Bool)

(assert (=> tb!4123 (= result!4379 true)))

(assert (=> d!18134 t!4796))

(declare-fun b_and!7659 () Bool)

(assert (= b_and!7647 (and (=> t!4796 result!4379) b_and!7659)))

(declare-fun t!4798 () Bool)

(declare-fun tb!4125 () Bool)

(assert (=> (and b!34721 (= (y!1108 x$3!99) (y!1108 x$3!99)) t!4798) tb!4125))

(declare-fun result!4381 () Bool)

(assert (=> tb!4125 (= result!4381 true)))

(assert (=> d!18134 t!4798))

(declare-fun b_and!7661 () Bool)

(assert (= b_and!7637 (and (=> t!4798 result!4381) b_and!7661)))

(declare-fun t!4800 () Bool)

(declare-fun tb!4127 () Bool)

(assert (=> (and b!34720 (= (x!11085 thiss!3936) (y!1108 x$3!99)) t!4800) tb!4127))

(declare-fun result!4383 () Bool)

(assert (=> tb!4127 (= result!4383 true)))

(assert (=> d!18134 t!4800))

(declare-fun b_and!7663 () Bool)

(assert (= b_and!7649 (and (=> t!4800 result!4383) b_and!7663)))

(declare-fun t!4802 () Bool)

(declare-fun tb!4129 () Bool)

(assert (=> (and b!34721 (= (x!11085 x$3!99) (y!1108 x$3!99)) t!4802) tb!4129))

(declare-fun result!4385 () Bool)

(assert (=> tb!4129 (= result!4385 true)))

(assert (=> d!18134 t!4802))

(declare-fun b_and!7665 () Bool)

(assert (= b_and!7651 (and (=> t!4802 result!4385) b_and!7665)))

(declare-fun t!4804 () Bool)

(declare-fun tb!4131 () Bool)

(assert (=> (and b!34718 (= (y!1108 prev!17) (y!1108 x$3!99)) t!4804) tb!4131))

(declare-fun result!4387 () Bool)

(assert (=> tb!4131 (= result!4387 true)))

(assert (=> d!18134 t!4804))

(declare-fun b_and!7667 () Bool)

(assert (= b_and!7643 (and (=> t!4804 result!4387) b_and!7667)))

(declare-fun m!37305 () Bool)

(assert (=> d!18134 m!37305))

(declare-fun m!37307 () Bool)

(assert (=> d!18134 m!37307))

(assert (=> start!4376 d!18134))

(declare-fun d!18136 () Bool)

(assert (=> d!18136 (= (inv!565 thiss!3936) (= (dynLambda!632 (x!11085 thiss!3936)) (dynLambda!632 (y!1108 thiss!3936))))))

(declare-fun b_lambda!9447 () Bool)

(assert (=> (not b_lambda!9447) (not d!18136)))

(assert (=> d!18136 t!4758))

(declare-fun b_and!7669 () Bool)

(assert (= b_and!7663 (and (=> t!4758 result!4341) b_and!7669)))

(assert (=> d!18136 t!4760))

(declare-fun b_and!7671 () Bool)

(assert (= b_and!7667 (and (=> t!4760 result!4343) b_and!7671)))

(assert (=> d!18136 t!4764))

(declare-fun b_and!7673 () Bool)

(assert (= b_and!7653 (and (=> t!4764 result!4347) b_and!7673)))

(assert (=> d!18136 t!4752))

(declare-fun b_and!7675 () Bool)

(assert (= b_and!7661 (and (=> t!4752 result!4335) b_and!7675)))

(assert (=> d!18136 t!4762))

(declare-fun b_and!7677 () Bool)

(assert (= b_and!7657 (and (=> t!4762 result!4345) b_and!7677)))

(assert (=> d!18136 t!4750))

(declare-fun b_and!7679 () Bool)

(assert (= b_and!7655 (and (=> t!4750 result!4333) b_and!7679)))

(assert (=> d!18136 t!4756))

(declare-fun b_and!7681 () Bool)

(assert (= b_and!7665 (and (=> t!4756 result!4339) b_and!7681)))

(assert (=> d!18136 t!4754))

(declare-fun b_and!7683 () Bool)

(assert (= b_and!7659 (and (=> t!4754 result!4337) b_and!7683)))

(declare-fun b_lambda!9449 () Bool)

(assert (=> (not b_lambda!9449) (not d!18136)))

(declare-fun t!4806 () Bool)

(declare-fun tb!4133 () Bool)

(assert (=> (and b!34720 (= (x!11085 thiss!3936) (y!1108 thiss!3936)) t!4806) tb!4133))

(declare-fun result!4389 () Bool)

(assert (=> tb!4133 (= result!4389 true)))

(assert (=> d!18136 t!4806))

(declare-fun b_and!7685 () Bool)

(assert (= b_and!7669 (and (=> t!4806 result!4389) b_and!7685)))

(declare-fun tb!4135 () Bool)

(declare-fun t!4808 () Bool)

(assert (=> (and b!34721 (= (y!1108 x$3!99) (y!1108 thiss!3936)) t!4808) tb!4135))

(declare-fun result!4391 () Bool)

(assert (=> tb!4135 (= result!4391 true)))

(assert (=> d!18136 t!4808))

(declare-fun b_and!7687 () Bool)

(assert (= b_and!7675 (and (=> t!4808 result!4391) b_and!7687)))

(declare-fun t!4810 () Bool)

(declare-fun tb!4137 () Bool)

(assert (=> (and b!34720 (= (y!1108 thiss!3936) (y!1108 thiss!3936)) t!4810) tb!4137))

(declare-fun result!4393 () Bool)

(assert (=> tb!4137 (= result!4393 true)))

(assert (=> d!18136 t!4810))

(declare-fun b_and!7689 () Bool)

(assert (= b_and!7677 (and (=> t!4810 result!4393) b_and!7689)))

(declare-fun tb!4139 () Bool)

(declare-fun t!4812 () Bool)

(assert (=> (and b!34724 (= (y!1108 x$4!78) (y!1108 thiss!3936)) t!4812) tb!4139))

(declare-fun result!4395 () Bool)

(assert (=> tb!4139 (= result!4395 true)))

(assert (=> d!18136 t!4812))

(declare-fun b_and!7691 () Bool)

(assert (= b_and!7679 (and (=> t!4812 result!4395) b_and!7691)))

(declare-fun tb!4141 () Bool)

(declare-fun t!4814 () Bool)

(assert (=> (and b!34724 (= (x!11085 x$4!78) (y!1108 thiss!3936)) t!4814) tb!4141))

(declare-fun result!4397 () Bool)

(assert (=> tb!4141 (= result!4397 true)))

(assert (=> d!18136 t!4814))

(declare-fun b_and!7693 () Bool)

(assert (= b_and!7673 (and (=> t!4814 result!4397) b_and!7693)))

(declare-fun t!4816 () Bool)

(declare-fun tb!4143 () Bool)

(assert (=> (and b!34718 (= (x!11085 prev!17) (y!1108 thiss!3936)) t!4816) tb!4143))

(declare-fun result!4399 () Bool)

(assert (=> tb!4143 (= result!4399 true)))

(assert (=> d!18136 t!4816))

(declare-fun b_and!7695 () Bool)

(assert (= b_and!7683 (and (=> t!4816 result!4399) b_and!7695)))

(declare-fun tb!4145 () Bool)

(declare-fun t!4818 () Bool)

(assert (=> (and b!34718 (= (y!1108 prev!17) (y!1108 thiss!3936)) t!4818) tb!4145))

(declare-fun result!4401 () Bool)

(assert (=> tb!4145 (= result!4401 true)))

(assert (=> d!18136 t!4818))

(declare-fun b_and!7697 () Bool)

(assert (= b_and!7671 (and (=> t!4818 result!4401) b_and!7697)))

(declare-fun tb!4147 () Bool)

(declare-fun t!4820 () Bool)

(assert (=> (and b!34721 (= (x!11085 x$3!99) (y!1108 thiss!3936)) t!4820) tb!4147))

(declare-fun result!4403 () Bool)

(assert (=> tb!4147 (= result!4403 true)))

(assert (=> d!18136 t!4820))

(declare-fun b_and!7699 () Bool)

(assert (= b_and!7681 (and (=> t!4820 result!4403) b_and!7699)))

(assert (=> d!18136 m!37285))

(declare-fun m!37309 () Bool)

(assert (=> d!18136 m!37309))

(assert (=> start!4376 d!18136))

(declare-fun d!18138 () Bool)

(assert (=> d!18138 (= (inv!565 prev!17) (= (dynLambda!632 (x!11085 prev!17)) (dynLambda!632 (y!1108 prev!17))))))

(declare-fun b_lambda!9451 () Bool)

(assert (=> (not b_lambda!9451) (not d!18138)))

(declare-fun t!4822 () Bool)

(declare-fun tb!4149 () Bool)

(assert (=> (and b!34718 (= (x!11085 prev!17) (x!11085 prev!17)) t!4822) tb!4149))

(declare-fun result!4405 () Bool)

(assert (=> tb!4149 (= result!4405 true)))

(assert (=> d!18138 t!4822))

(declare-fun b_and!7701 () Bool)

(assert (= b_and!7695 (and (=> t!4822 result!4405) b_and!7701)))

(declare-fun tb!4151 () Bool)

(declare-fun t!4824 () Bool)

(assert (=> (and b!34720 (= (x!11085 thiss!3936) (x!11085 prev!17)) t!4824) tb!4151))

(declare-fun result!4407 () Bool)

(assert (=> tb!4151 (= result!4407 true)))

(assert (=> d!18138 t!4824))

(declare-fun b_and!7703 () Bool)

(assert (= b_and!7685 (and (=> t!4824 result!4407) b_and!7703)))

(declare-fun t!4826 () Bool)

(declare-fun tb!4153 () Bool)

(assert (=> (and b!34721 (= (x!11085 x$3!99) (x!11085 prev!17)) t!4826) tb!4153))

(declare-fun result!4409 () Bool)

(assert (=> tb!4153 (= result!4409 true)))

(assert (=> d!18138 t!4826))

(declare-fun b_and!7705 () Bool)

(assert (= b_and!7699 (and (=> t!4826 result!4409) b_and!7705)))

(declare-fun tb!4155 () Bool)

(declare-fun t!4828 () Bool)

(assert (=> (and b!34724 (= (x!11085 x$4!78) (x!11085 prev!17)) t!4828) tb!4155))

(declare-fun result!4411 () Bool)

(assert (=> tb!4155 (= result!4411 true)))

(assert (=> d!18138 t!4828))

(declare-fun b_and!7707 () Bool)

(assert (= b_and!7693 (and (=> t!4828 result!4411) b_and!7707)))

(declare-fun t!4830 () Bool)

(declare-fun tb!4157 () Bool)

(assert (=> (and b!34720 (= (y!1108 thiss!3936) (x!11085 prev!17)) t!4830) tb!4157))

(declare-fun result!4413 () Bool)

(assert (=> tb!4157 (= result!4413 true)))

(assert (=> d!18138 t!4830))

(declare-fun b_and!7709 () Bool)

(assert (= b_and!7689 (and (=> t!4830 result!4413) b_and!7709)))

(declare-fun tb!4159 () Bool)

(declare-fun t!4832 () Bool)

(assert (=> (and b!34724 (= (y!1108 x$4!78) (x!11085 prev!17)) t!4832) tb!4159))

(declare-fun result!4415 () Bool)

(assert (=> tb!4159 (= result!4415 true)))

(assert (=> d!18138 t!4832))

(declare-fun b_and!7711 () Bool)

(assert (= b_and!7691 (and (=> t!4832 result!4415) b_and!7711)))

(declare-fun t!4834 () Bool)

(declare-fun tb!4161 () Bool)

(assert (=> (and b!34718 (= (y!1108 prev!17) (x!11085 prev!17)) t!4834) tb!4161))

(declare-fun result!4417 () Bool)

(assert (=> tb!4161 (= result!4417 true)))

(assert (=> d!18138 t!4834))

(declare-fun b_and!7713 () Bool)

(assert (= b_and!7697 (and (=> t!4834 result!4417) b_and!7713)))

(declare-fun tb!4163 () Bool)

(declare-fun t!4836 () Bool)

(assert (=> (and b!34721 (= (y!1108 x$3!99) (x!11085 prev!17)) t!4836) tb!4163))

(declare-fun result!4419 () Bool)

(assert (=> tb!4163 (= result!4419 true)))

(assert (=> d!18138 t!4836))

(declare-fun b_and!7715 () Bool)

(assert (= b_and!7687 (and (=> t!4836 result!4419) b_and!7715)))

(declare-fun b_lambda!9453 () Bool)

(assert (=> (not b_lambda!9453) (not d!18138)))

(assert (=> d!18138 t!4736))

(declare-fun b_and!7717 () Bool)

(assert (= b_and!7701 (and (=> t!4736 result!4319) b_and!7717)))

(assert (=> d!18138 t!4744))

(declare-fun b_and!7719 () Bool)

(assert (= b_and!7707 (and (=> t!4744 result!4327) b_and!7719)))

(assert (=> d!18138 t!4746))

(declare-fun b_and!7721 () Bool)

(assert (= b_and!7715 (and (=> t!4746 result!4329) b_and!7721)))

(assert (=> d!18138 t!4740))

(declare-fun b_and!7723 () Bool)

(assert (= b_and!7703 (and (=> t!4740 result!4323) b_and!7723)))

(assert (=> d!18138 t!4748))

(declare-fun b_and!7725 () Bool)

(assert (= b_and!7713 (and (=> t!4748 result!4331) b_and!7725)))

(assert (=> d!18138 t!4738))

(declare-fun b_and!7727 () Bool)

(assert (= b_and!7711 (and (=> t!4738 result!4321) b_and!7727)))

(assert (=> d!18138 t!4734))

(declare-fun b_and!7729 () Bool)

(assert (= b_and!7705 (and (=> t!4734 result!4317) b_and!7729)))

(assert (=> d!18138 t!4742))

(declare-fun b_and!7731 () Bool)

(assert (= b_and!7709 (and (=> t!4742 result!4325) b_and!7731)))

(declare-fun m!37311 () Bool)

(assert (=> d!18138 m!37311))

(assert (=> d!18138 m!37283))

(assert (=> start!4376 d!18138))

(declare-fun d!18140 () Bool)

(assert (=> d!18140 (= (inv!565 x$4!78) (= (dynLambda!632 (x!11085 x$4!78)) (dynLambda!632 (y!1108 x$4!78))))))

(declare-fun b_lambda!9455 () Bool)

(assert (=> (not b_lambda!9455) (not d!18140)))

(declare-fun t!4838 () Bool)

(declare-fun tb!4165 () Bool)

(assert (=> (and b!34724 (= (x!11085 x$4!78) (x!11085 x$4!78)) t!4838) tb!4165))

(declare-fun result!4421 () Bool)

(assert (=> tb!4165 (= result!4421 true)))

(assert (=> d!18140 t!4838))

(declare-fun b_and!7733 () Bool)

(assert (= b_and!7719 (and (=> t!4838 result!4421) b_and!7733)))

(declare-fun tb!4167 () Bool)

(declare-fun t!4840 () Bool)

(assert (=> (and b!34721 (= (y!1108 x$3!99) (x!11085 x$4!78)) t!4840) tb!4167))

(declare-fun result!4423 () Bool)

(assert (=> tb!4167 (= result!4423 true)))

(assert (=> d!18140 t!4840))

(declare-fun b_and!7735 () Bool)

(assert (= b_and!7721 (and (=> t!4840 result!4423) b_and!7735)))

(declare-fun t!4842 () Bool)

(declare-fun tb!4169 () Bool)

(assert (=> (and b!34720 (= (x!11085 thiss!3936) (x!11085 x$4!78)) t!4842) tb!4169))

(declare-fun result!4425 () Bool)

(assert (=> tb!4169 (= result!4425 true)))

(assert (=> d!18140 t!4842))

(declare-fun b_and!7737 () Bool)

(assert (= b_and!7723 (and (=> t!4842 result!4425) b_and!7737)))

(declare-fun t!4844 () Bool)

(declare-fun tb!4171 () Bool)

(assert (=> (and b!34718 (= (y!1108 prev!17) (x!11085 x$4!78)) t!4844) tb!4171))

(declare-fun result!4427 () Bool)

(assert (=> tb!4171 (= result!4427 true)))

(assert (=> d!18140 t!4844))

(declare-fun b_and!7739 () Bool)

(assert (= b_and!7725 (and (=> t!4844 result!4427) b_and!7739)))

(declare-fun t!4846 () Bool)

(declare-fun tb!4173 () Bool)

(assert (=> (and b!34724 (= (y!1108 x$4!78) (x!11085 x$4!78)) t!4846) tb!4173))

(declare-fun result!4429 () Bool)

(assert (=> tb!4173 (= result!4429 true)))

(assert (=> d!18140 t!4846))

(declare-fun b_and!7741 () Bool)

(assert (= b_and!7727 (and (=> t!4846 result!4429) b_and!7741)))

(declare-fun t!4848 () Bool)

(declare-fun tb!4175 () Bool)

(assert (=> (and b!34718 (= (x!11085 prev!17) (x!11085 x$4!78)) t!4848) tb!4175))

(declare-fun result!4431 () Bool)

(assert (=> tb!4175 (= result!4431 true)))

(assert (=> d!18140 t!4848))

(declare-fun b_and!7743 () Bool)

(assert (= b_and!7717 (and (=> t!4848 result!4431) b_and!7743)))

(declare-fun t!4850 () Bool)

(declare-fun tb!4177 () Bool)

(assert (=> (and b!34720 (= (y!1108 thiss!3936) (x!11085 x$4!78)) t!4850) tb!4177))

(declare-fun result!4433 () Bool)

(assert (=> tb!4177 (= result!4433 true)))

(assert (=> d!18140 t!4850))

(declare-fun b_and!7745 () Bool)

(assert (= b_and!7731 (and (=> t!4850 result!4433) b_and!7745)))

(declare-fun tb!4179 () Bool)

(declare-fun t!4852 () Bool)

(assert (=> (and b!34721 (= (x!11085 x$3!99) (x!11085 x$4!78)) t!4852) tb!4179))

(declare-fun result!4435 () Bool)

(assert (=> tb!4179 (= result!4435 true)))

(assert (=> d!18140 t!4852))

(declare-fun b_and!7747 () Bool)

(assert (= b_and!7729 (and (=> t!4852 result!4435) b_and!7747)))

(declare-fun b_lambda!9457 () Bool)

(assert (=> (not b_lambda!9457) (not d!18140)))

(declare-fun t!4854 () Bool)

(declare-fun tb!4181 () Bool)

(assert (=> (and b!34718 (= (y!1108 prev!17) (y!1108 x$4!78)) t!4854) tb!4181))

(declare-fun result!4437 () Bool)

(assert (=> tb!4181 (= result!4437 true)))

(assert (=> d!18140 t!4854))

(declare-fun b_and!7749 () Bool)

(assert (= b_and!7739 (and (=> t!4854 result!4437) b_and!7749)))

(declare-fun tb!4183 () Bool)

(declare-fun t!4856 () Bool)

(assert (=> (and b!34720 (= (y!1108 thiss!3936) (y!1108 x$4!78)) t!4856) tb!4183))

(declare-fun result!4439 () Bool)

(assert (=> tb!4183 (= result!4439 true)))

(assert (=> d!18140 t!4856))

(declare-fun b_and!7751 () Bool)

(assert (= b_and!7745 (and (=> t!4856 result!4439) b_and!7751)))

(declare-fun tb!4185 () Bool)

(declare-fun t!4858 () Bool)

(assert (=> (and b!34718 (= (x!11085 prev!17) (y!1108 x$4!78)) t!4858) tb!4185))

(declare-fun result!4441 () Bool)

(assert (=> tb!4185 (= result!4441 true)))

(assert (=> d!18140 t!4858))

(declare-fun b_and!7753 () Bool)

(assert (= b_and!7743 (and (=> t!4858 result!4441) b_and!7753)))

(declare-fun t!4860 () Bool)

(declare-fun tb!4187 () Bool)

(assert (=> (and b!34721 (= (x!11085 x$3!99) (y!1108 x$4!78)) t!4860) tb!4187))

(declare-fun result!4443 () Bool)

(assert (=> tb!4187 (= result!4443 true)))

(assert (=> d!18140 t!4860))

(declare-fun b_and!7755 () Bool)

(assert (= b_and!7747 (and (=> t!4860 result!4443) b_and!7755)))

(declare-fun t!4862 () Bool)

(declare-fun tb!4189 () Bool)

(assert (=> (and b!34721 (= (y!1108 x$3!99) (y!1108 x$4!78)) t!4862) tb!4189))

(declare-fun result!4445 () Bool)

(assert (=> tb!4189 (= result!4445 true)))

(assert (=> d!18140 t!4862))

(declare-fun b_and!7757 () Bool)

(assert (= b_and!7735 (and (=> t!4862 result!4445) b_and!7757)))

(declare-fun t!4864 () Bool)

(declare-fun tb!4191 () Bool)

(assert (=> (and b!34720 (= (x!11085 thiss!3936) (y!1108 x$4!78)) t!4864) tb!4191))

(declare-fun result!4447 () Bool)

(assert (=> tb!4191 (= result!4447 true)))

(assert (=> d!18140 t!4864))

(declare-fun b_and!7759 () Bool)

(assert (= b_and!7737 (and (=> t!4864 result!4447) b_and!7759)))

(declare-fun t!4866 () Bool)

(declare-fun tb!4193 () Bool)

(assert (=> (and b!34724 (= (y!1108 x$4!78) (y!1108 x$4!78)) t!4866) tb!4193))

(declare-fun result!4449 () Bool)

(assert (=> tb!4193 (= result!4449 true)))

(assert (=> d!18140 t!4866))

(declare-fun b_and!7761 () Bool)

(assert (= b_and!7741 (and (=> t!4866 result!4449) b_and!7761)))

(declare-fun t!4868 () Bool)

(declare-fun tb!4195 () Bool)

(assert (=> (and b!34724 (= (x!11085 x$4!78) (y!1108 x$4!78)) t!4868) tb!4195))

(declare-fun result!4451 () Bool)

(assert (=> tb!4195 (= result!4451 true)))

(assert (=> d!18140 t!4868))

(declare-fun b_and!7763 () Bool)

(assert (= b_and!7733 (and (=> t!4868 result!4451) b_and!7763)))

(declare-fun m!37313 () Bool)

(assert (=> d!18140 m!37313))

(declare-fun m!37315 () Bool)

(assert (=> d!18140 m!37315))

(assert (=> start!4376 d!18140))

(declare-fun b_lambda!9459 () Bool)

(assert (= b_lambda!9457 (or (and b!34721 b_free!2117 (= (x!11085 x$3!99) (y!1108 x$4!78))) (and b!34724 b_free!2137) (and b!34721 b_free!2119 (= (y!1108 x$3!99) (y!1108 x$4!78))) (and b!34717 (= lambda!4117 (y!1108 x$4!78))) (and b!34718 b_free!2129 (= (x!11085 prev!17) (y!1108 x$4!78))) (and b!34720 b_free!2125 (= (y!1108 thiss!3936) (y!1108 x$4!78))) (and b!34718 b_free!2131 (= (y!1108 prev!17) (y!1108 x$4!78))) (and b!34720 b_free!2123 (= (x!11085 thiss!3936) (y!1108 x$4!78))) (and b!34719 (= lambda!4119 (y!1108 x$4!78))) (and b!34724 b_free!2135 (= (x!11085 x$4!78) (y!1108 x$4!78))) (and start!4376 (= lambda!4115 (y!1108 x$4!78))) (and b!34719 (= lambda!4120 (y!1108 x$4!78))) b_lambda!9459)))

(declare-fun bs!11145 () Bool)

(declare-fun d!18142 () Bool)

(assert (= bs!11145 (and d!18142 b!34719)))

(assert (=> bs!11145 (= (dynLambda!632 lambda!4119) z!194)))

(assert (=> (and b!34719 (= lambda!4119 (y!1108 x$4!78)) d!18140) d!18142))

(declare-fun bs!11146 () Bool)

(declare-fun d!18144 () Bool)

(assert (= bs!11146 (and d!18144 b!34717)))

(assert (=> bs!11146 (= (dynLambda!632 lambda!4117) y!1090)))

(assert (=> (and b!34717 (= lambda!4117 (y!1108 x$4!78)) d!18140) d!18144))

(declare-fun bs!11147 () Bool)

(declare-fun d!18146 () Bool)

(assert (= bs!11147 (and d!18146 b!34719)))

(assert (=> bs!11147 (= (dynLambda!632 lambda!4120) t!4682)))

(assert (=> (and b!34719 (= lambda!4120 (y!1108 x$4!78)) d!18140) d!18146))

(declare-fun bs!11148 () Bool)

(declare-fun d!18148 () Bool)

(assert (= bs!11148 (and d!18148 start!4376)))

(assert (=> bs!11148 (= (dynLambda!632 lambda!4115) x!11018)))

(assert (=> (and start!4376 (= lambda!4115 (y!1108 x$4!78)) d!18140) d!18148))

(declare-fun b_lambda!9461 () Bool)

(assert (= b_lambda!9455 (or (and b!34718 b_free!2129 (= (x!11085 prev!17) (x!11085 x$4!78))) (and b!34717 (= lambda!4117 (x!11085 x$4!78))) (and b!34718 b_free!2131 (= (y!1108 prev!17) (x!11085 x$4!78))) (and b!34720 b_free!2123 (= (x!11085 thiss!3936) (x!11085 x$4!78))) (and b!34720 b_free!2125 (= (y!1108 thiss!3936) (x!11085 x$4!78))) (and b!34719 (= lambda!4119 (x!11085 x$4!78))) (and b!34724 b_free!2137 (= (y!1108 x$4!78) (x!11085 x$4!78))) (and b!34719 (= lambda!4120 (x!11085 x$4!78))) (and b!34721 b_free!2117 (= (x!11085 x$3!99) (x!11085 x$4!78))) (and b!34724 b_free!2135) (and start!4376 (= lambda!4115 (x!11085 x$4!78))) (and b!34721 b_free!2119 (= (y!1108 x$3!99) (x!11085 x$4!78))) b_lambda!9461)))

(declare-fun bs!11149 () Bool)

(declare-fun d!18150 () Bool)

(assert (= bs!11149 (and d!18150 start!4376)))

(assert (=> bs!11149 (= (dynLambda!632 lambda!4115) x!11018)))

(assert (=> (and start!4376 (= lambda!4115 (x!11085 x$4!78)) d!18140) d!18150))

(declare-fun bs!11150 () Bool)

(declare-fun d!18152 () Bool)

(assert (= bs!11150 (and d!18152 b!34719)))

(assert (=> bs!11150 (= (dynLambda!632 lambda!4119) z!194)))

(assert (=> (and b!34719 (= lambda!4119 (x!11085 x$4!78)) d!18140) d!18152))

(declare-fun bs!11151 () Bool)

(declare-fun d!18154 () Bool)

(assert (= bs!11151 (and d!18154 b!34719)))

(assert (=> bs!11151 (= (dynLambda!632 lambda!4120) t!4682)))

(assert (=> (and b!34719 (= lambda!4120 (x!11085 x$4!78)) d!18140) d!18154))

(declare-fun bs!11152 () Bool)

(declare-fun d!18156 () Bool)

(assert (= bs!11152 (and d!18156 b!34717)))

(assert (=> bs!11152 (= (dynLambda!632 lambda!4117) y!1090)))

(assert (=> (and b!34717 (= lambda!4117 (x!11085 x$4!78)) d!18140) d!18156))

(declare-fun b_lambda!9463 () Bool)

(assert (= b_lambda!9453 (or (and start!4376 (= lambda!4115 (y!1108 prev!17))) (and b!34724 b_free!2135 (= (x!11085 x$4!78) (y!1108 prev!17))) (and b!34718 b_free!2129 (= (x!11085 prev!17) (y!1108 prev!17))) (and b!34720 b_free!2125 (= (y!1108 thiss!3936) (y!1108 prev!17))) (and b!34718 b_free!2131) (and b!34719 (= lambda!4119 (y!1108 prev!17))) (and b!34720 b_free!2123 (= (x!11085 thiss!3936) (y!1108 prev!17))) (and b!34719 (= lambda!4120 (y!1108 prev!17))) (and b!34717 (= lambda!4117 (y!1108 prev!17))) (and b!34721 b_free!2117 (= (x!11085 x$3!99) (y!1108 prev!17))) (and b!34721 b_free!2119 (= (y!1108 x$3!99) (y!1108 prev!17))) (and b!34724 b_free!2137 (= (y!1108 x$4!78) (y!1108 prev!17))) b_lambda!9463)))

(assert (=> (and start!4376 (= lambda!4115 (y!1108 prev!17)) d!18138) d!18118))

(assert (=> (and b!34717 (= lambda!4117 (y!1108 prev!17)) d!18138) d!18120))

(assert (=> (and b!34719 (= lambda!4120 (y!1108 prev!17)) d!18138) d!18122))

(assert (=> (and b!34719 (= lambda!4119 (y!1108 prev!17)) d!18138) d!18124))

(declare-fun b_lambda!9465 () Bool)

(assert (= b_lambda!9449 (or (and b!34719 (= lambda!4120 (y!1108 thiss!3936))) (and b!34720 b_free!2125) (and b!34721 b_free!2117 (= (x!11085 x$3!99) (y!1108 thiss!3936))) (and b!34717 (= lambda!4117 (y!1108 thiss!3936))) (and b!34720 b_free!2123 (= (x!11085 thiss!3936) (y!1108 thiss!3936))) (and b!34718 b_free!2131 (= (y!1108 prev!17) (y!1108 thiss!3936))) (and b!34721 b_free!2119 (= (y!1108 x$3!99) (y!1108 thiss!3936))) (and b!34718 b_free!2129 (= (x!11085 prev!17) (y!1108 thiss!3936))) (and start!4376 (= lambda!4115 (y!1108 thiss!3936))) (and b!34724 b_free!2137 (= (y!1108 x$4!78) (y!1108 thiss!3936))) (and b!34719 (= lambda!4119 (y!1108 thiss!3936))) (and b!34724 b_free!2135 (= (x!11085 x$4!78) (y!1108 thiss!3936))) b_lambda!9465)))

(declare-fun bs!11153 () Bool)

(declare-fun d!18158 () Bool)

(assert (= bs!11153 (and d!18158 start!4376)))

(assert (=> bs!11153 (= (dynLambda!632 lambda!4115) x!11018)))

(assert (=> (and start!4376 (= lambda!4115 (y!1108 thiss!3936)) d!18136) d!18158))

(declare-fun bs!11154 () Bool)

(declare-fun d!18160 () Bool)

(assert (= bs!11154 (and d!18160 b!34719)))

(assert (=> bs!11154 (= (dynLambda!632 lambda!4120) t!4682)))

(assert (=> (and b!34719 (= lambda!4120 (y!1108 thiss!3936)) d!18136) d!18160))

(declare-fun bs!11155 () Bool)

(declare-fun d!18162 () Bool)

(assert (= bs!11155 (and d!18162 b!34717)))

(assert (=> bs!11155 (= (dynLambda!632 lambda!4117) y!1090)))

(assert (=> (and b!34717 (= lambda!4117 (y!1108 thiss!3936)) d!18136) d!18162))

(declare-fun bs!11156 () Bool)

(declare-fun d!18164 () Bool)

(assert (= bs!11156 (and d!18164 b!34719)))

(assert (=> bs!11156 (= (dynLambda!632 lambda!4119) z!194)))

(assert (=> (and b!34719 (= lambda!4119 (y!1108 thiss!3936)) d!18136) d!18164))

(declare-fun b_lambda!9467 () Bool)

(assert (= b_lambda!9451 (or (and b!34719 (= lambda!4120 (x!11085 prev!17))) (and b!34718 b_free!2129) (and b!34717 (= lambda!4117 (x!11085 prev!17))) (and b!34720 b_free!2125 (= (y!1108 thiss!3936) (x!11085 prev!17))) (and b!34719 (= lambda!4119 (x!11085 prev!17))) (and start!4376 (= lambda!4115 (x!11085 prev!17))) (and b!34724 b_free!2137 (= (y!1108 x$4!78) (x!11085 prev!17))) (and b!34724 b_free!2135 (= (x!11085 x$4!78) (x!11085 prev!17))) (and b!34721 b_free!2119 (= (y!1108 x$3!99) (x!11085 prev!17))) (and b!34720 b_free!2123 (= (x!11085 thiss!3936) (x!11085 prev!17))) (and b!34721 b_free!2117 (= (x!11085 x$3!99) (x!11085 prev!17))) (and b!34718 b_free!2131 (= (y!1108 prev!17) (x!11085 prev!17))) b_lambda!9467)))

(declare-fun bs!11157 () Bool)

(declare-fun d!18166 () Bool)

(assert (= bs!11157 (and d!18166 b!34719)))

(assert (=> bs!11157 (= (dynLambda!632 lambda!4120) t!4682)))

(assert (=> (and b!34719 (= lambda!4120 (x!11085 prev!17)) d!18138) d!18166))

(declare-fun bs!11158 () Bool)

(declare-fun d!18168 () Bool)

(assert (= bs!11158 (and d!18168 b!34719)))

(assert (=> bs!11158 (= (dynLambda!632 lambda!4119) z!194)))

(assert (=> (and b!34719 (= lambda!4119 (x!11085 prev!17)) d!18138) d!18168))

(declare-fun bs!11159 () Bool)

(declare-fun d!18170 () Bool)

(assert (= bs!11159 (and d!18170 b!34717)))

(assert (=> bs!11159 (= (dynLambda!632 lambda!4117) y!1090)))

(assert (=> (and b!34717 (= lambda!4117 (x!11085 prev!17)) d!18138) d!18170))

(declare-fun bs!11160 () Bool)

(declare-fun d!18172 () Bool)

(assert (= bs!11160 (and d!18172 start!4376)))

(assert (=> bs!11160 (= (dynLambda!632 lambda!4115) x!11018)))

(assert (=> (and start!4376 (= lambda!4115 (x!11085 prev!17)) d!18138) d!18172))

(declare-fun b_lambda!9469 () Bool)

(assert (= b_lambda!9447 (or (and b!34718 b_free!2129 (= (x!11085 prev!17) (x!11085 thiss!3936))) (and b!34717 (= lambda!4117 (x!11085 thiss!3936))) (and b!34724 b_free!2137 (= (y!1108 x$4!78) (x!11085 thiss!3936))) (and b!34724 b_free!2135 (= (x!11085 x$4!78) (x!11085 thiss!3936))) (and b!34721 b_free!2117 (= (x!11085 x$3!99) (x!11085 thiss!3936))) (and b!34720 b_free!2123) (and start!4376 (= lambda!4115 (x!11085 thiss!3936))) (and b!34718 b_free!2131 (= (y!1108 prev!17) (x!11085 thiss!3936))) (and b!34719 (= lambda!4119 (x!11085 thiss!3936))) (and b!34719 (= lambda!4120 (x!11085 thiss!3936))) (and b!34720 b_free!2125 (= (y!1108 thiss!3936) (x!11085 thiss!3936))) (and b!34721 b_free!2119 (= (y!1108 x$3!99) (x!11085 thiss!3936))) b_lambda!9469)))

(assert (=> (and start!4376 (= lambda!4115 (x!11085 thiss!3936)) d!18136) d!18104))

(assert (=> (and b!34719 (= lambda!4119 (x!11085 thiss!3936)) d!18136) d!18106))

(assert (=> (and b!34717 (= lambda!4117 (x!11085 thiss!3936)) d!18136) d!18108))

(assert (=> (and b!34719 (= lambda!4120 (x!11085 thiss!3936)) d!18136) d!18110))

(declare-fun b_lambda!9471 () Bool)

(assert (= b_lambda!9445 (or (and start!4376 (= lambda!4115 (y!1108 x$3!99))) (and b!34718 b_free!2131 (= (y!1108 prev!17) (y!1108 x$3!99))) (and b!34721 b_free!2119) (and b!34719 (= lambda!4119 (y!1108 x$3!99))) (and b!34717 (= lambda!4117 (y!1108 x$3!99))) (and b!34719 (= lambda!4120 (y!1108 x$3!99))) (and b!34720 b_free!2125 (= (y!1108 thiss!3936) (y!1108 x$3!99))) (and b!34721 b_free!2117 (= (x!11085 x$3!99) (y!1108 x$3!99))) (and b!34724 b_free!2135 (= (x!11085 x$4!78) (y!1108 x$3!99))) (and b!34724 b_free!2137 (= (y!1108 x$4!78) (y!1108 x$3!99))) (and b!34718 b_free!2129 (= (x!11085 prev!17) (y!1108 x$3!99))) (and b!34720 b_free!2123 (= (x!11085 thiss!3936) (y!1108 x$3!99))) b_lambda!9471)))

(declare-fun bs!11161 () Bool)

(declare-fun d!18174 () Bool)

(assert (= bs!11161 (and d!18174 b!34717)))

(assert (=> bs!11161 (= (dynLambda!632 lambda!4117) y!1090)))

(assert (=> (and b!34717 (= lambda!4117 (y!1108 x$3!99)) d!18134) d!18174))

(declare-fun bs!11162 () Bool)

(declare-fun d!18176 () Bool)

(assert (= bs!11162 (and d!18176 start!4376)))

(assert (=> bs!11162 (= (dynLambda!632 lambda!4115) x!11018)))

(assert (=> (and start!4376 (= lambda!4115 (y!1108 x$3!99)) d!18134) d!18176))

(declare-fun bs!11163 () Bool)

(declare-fun d!18178 () Bool)

(assert (= bs!11163 (and d!18178 b!34719)))

(assert (=> bs!11163 (= (dynLambda!632 lambda!4120) t!4682)))

(assert (=> (and b!34719 (= lambda!4120 (y!1108 x$3!99)) d!18134) d!18178))

(declare-fun bs!11164 () Bool)

(declare-fun d!18180 () Bool)

(assert (= bs!11164 (and d!18180 b!34719)))

(assert (=> bs!11164 (= (dynLambda!632 lambda!4119) z!194)))

(assert (=> (and b!34719 (= lambda!4119 (y!1108 x$3!99)) d!18134) d!18180))

(declare-fun b_lambda!9473 () Bool)

(assert (= b_lambda!9443 (or (and b!34721 b_free!2117) (and b!34719 (= lambda!4120 (x!11085 x$3!99))) (and b!34719 (= lambda!4119 (x!11085 x$3!99))) (and b!34717 (= lambda!4117 (x!11085 x$3!99))) (and b!34720 b_free!2123 (= (x!11085 thiss!3936) (x!11085 x$3!99))) (and b!34718 b_free!2131 (= (y!1108 prev!17) (x!11085 x$3!99))) (and b!34720 b_free!2125 (= (y!1108 thiss!3936) (x!11085 x$3!99))) (and b!34718 b_free!2129 (= (x!11085 prev!17) (x!11085 x$3!99))) (and start!4376 (= lambda!4115 (x!11085 x$3!99))) (and b!34721 b_free!2119 (= (y!1108 x$3!99) (x!11085 x$3!99))) (and b!34724 b_free!2135 (= (x!11085 x$4!78) (x!11085 x$3!99))) (and b!34724 b_free!2137 (= (y!1108 x$4!78) (x!11085 x$3!99))) b_lambda!9473)))

(declare-fun bs!11165 () Bool)

(declare-fun d!18182 () Bool)

(assert (= bs!11165 (and d!18182 start!4376)))

(assert (=> bs!11165 (= (dynLambda!632 lambda!4115) x!11018)))

(assert (=> (and start!4376 (= lambda!4115 (x!11085 x$3!99)) d!18134) d!18182))

(declare-fun bs!11166 () Bool)

(declare-fun d!18184 () Bool)

(assert (= bs!11166 (and d!18184 b!34717)))

(assert (=> bs!11166 (= (dynLambda!632 lambda!4117) y!1090)))

(assert (=> (and b!34717 (= lambda!4117 (x!11085 x$3!99)) d!18134) d!18184))

(declare-fun bs!11167 () Bool)

(declare-fun d!18186 () Bool)

(assert (= bs!11167 (and d!18186 b!34719)))

(assert (=> bs!11167 (= (dynLambda!632 lambda!4119) z!194)))

(assert (=> (and b!34719 (= lambda!4119 (x!11085 x$3!99)) d!18134) d!18186))

(declare-fun bs!11168 () Bool)

(declare-fun d!18188 () Bool)

(assert (= bs!11168 (and d!18188 b!34719)))

(assert (=> bs!11168 (= (dynLambda!632 lambda!4120) t!4682)))

(assert (=> (and b!34719 (= lambda!4120 (x!11085 x$3!99)) d!18134) d!18188))

(push 1)

(assert (not b_next!5193))

(assert b_and!7629)

(assert (not b_next!5181))

(assert (not b_lambda!9473))

(assert (not b_next!5179))

(assert (not b_lambda!9439))

(assert (not b_next!5191))

(assert (not b_lambda!9471))

(assert (not b_next!5187))

(assert (not b_next!5189))

(assert (not b_next!5185))

(assert (not b_lambda!9463))

(assert (not b_lambda!9465))

(assert b_and!7759)

(assert (not b_next!5197))

(assert (not b_lambda!9469))

(assert b_and!7757)

(assert (not b_next!5195))

(assert b_and!7635)

(assert b_and!7753)

(assert b_and!7755)

(assert (not b_next!5183))

(assert b_and!7761)

(assert b_and!7763)

(assert (not b_lambda!9441))

(assert b_and!7631)

(assert (not b_next!5201))

(assert b_and!7749)

(assert (not b_lambda!9461))

(assert (not b_lambda!9437))

(assert (not b_lambda!9467))

(assert (not b_lambda!9459))

(assert b_and!7633)

(assert (not b_next!5199))

(assert b_and!7751)

(check-sat)

(pop 1)

