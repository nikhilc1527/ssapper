; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9726 () Bool)

(assert start!9726)

(declare-fun b!71151 () Bool)

(declare-fun e!38504 () Bool)

(declare-fun tp_is_empty!353 () Bool)

(declare-fun tp!16813 () Bool)

(assert (=> b!71151 (= e!38504 (and tp_is_empty!353 tp!16813))))

(declare-fun b!71152 () Bool)

(declare-fun e!38501 () Bool)

(declare-fun tp!16812 () Bool)

(assert (=> b!71152 (= e!38501 (and tp_is_empty!353 tp!16812))))

(declare-datatypes () ((A!3042 (A!3043 (val!178 Int)))))

(declare-datatypes () ((List!585 (Cons!545 (h!800 A!3042) (t!47435 List!585)) (Nil!546))))

(declare-fun i!564 () List!585)

(declare-datatypes () ((C!83 (C!84 (val!179 Int)))))

(declare-datatypes () ((List!586 (Cons!546 (h!801 C!83) (t!47436 List!586)) (Nil!547))))

(declare-fun l!1348 () List!586)

(declare-fun e!38500 () Bool)

(declare-fun l!1350 () List!586)

(declare-fun thiss!9407 () List!586)

(declare-fun b!71153 () Bool)

(declare-fun i!566 () List!585)

(assert (=> b!71153 (= e!38500 (and (= i!566 i!564) (= l!1350 l!1348) (= thiss!9407 l!1348) (= thiss!9407 Nil!547)))))

(declare-fun b!71154 () Bool)

(declare-fun e!38499 () Bool)

(declare-fun tp_is_empty!351 () Bool)

(declare-fun tp!16810 () Bool)

(assert (=> b!71154 (= e!38499 (and tp_is_empty!351 tp!16810))))

(declare-fun b!71155 () Bool)

(declare-fun res!34800 () Bool)

(assert (=> b!71155 (=> (not res!34800) (not e!38500))))

(declare-fun nonEmpty!9 (List!586) Bool)

(assert (=> b!71155 (= res!34800 (nonEmpty!9 l!1348))))

(declare-fun res!34801 () Bool)

(assert (=> start!9726 (=> (not res!34801) (not e!38500))))

(declare-fun n!1652 () List!585)

(assert (=> start!9726 (= res!34801 (= n!1652 i!564))))

(assert (=> start!9726 e!38500))

(declare-fun e!38502 () Bool)

(assert (=> start!9726 e!38502))

(assert (=> start!9726 e!38504))

(declare-fun e!38498 () Bool)

(assert (=> start!9726 e!38498))

(assert (=> start!9726 e!38501))

(declare-fun e!38503 () Bool)

(assert (=> start!9726 e!38503))

(assert (=> start!9726 e!38499))

(declare-fun b!71156 () Bool)

(declare-fun tp!16814 () Bool)

(assert (=> b!71156 (= e!38503 (and tp_is_empty!353 tp!16814))))

(declare-fun b!71157 () Bool)

(declare-fun tp!16811 () Bool)

(assert (=> b!71157 (= e!38498 (and tp_is_empty!351 tp!16811))))

(declare-fun b!71158 () Bool)

(declare-fun tp!16809 () Bool)

(assert (=> b!71158 (= e!38502 (and tp_is_empty!351 tp!16809))))

(assert (= (and start!9726 res!34801) b!71155))

(assert (= (and b!71155 res!34800) b!71153))

(assert (= (and start!9726 (is-Cons!545 i!564)) b!71158))

(assert (= (and start!9726 (is-Cons!546 l!1348)) b!71151))

(assert (= (and start!9726 (is-Cons!545 n!1652)) b!71157))

(assert (= (and start!9726 (is-Cons!546 l!1350)) b!71152))

(assert (= (and start!9726 (is-Cons!546 thiss!9407)) b!71156))

(assert (= (and start!9726 (is-Cons!545 i!566)) b!71154))

(declare-fun m!71084 () Bool)

(assert (=> b!71155 m!71084))

(push 1)

(assert (not b!71151))

(assert (not b!71156))

(assert tp_is_empty!351)

(assert (not b!71158))

(assert (not b!71154))

(assert tp_is_empty!353)

(assert (not b!71152))

(assert (not b!71155))

(assert (not b!71157))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53950 () Bool)

(declare-fun isEmpty!593 (List!586) Bool)

(assert (=> d!53950 (= (nonEmpty!9 l!1348) (not (isEmpty!593 l!1348)))))

(declare-fun bs!37684 () Bool)

(assert (= bs!37684 d!53950))

(declare-fun m!71086 () Bool)

(assert (=> bs!37684 m!71086))

(assert (=> b!71155 d!53950))

(declare-fun b!71163 () Bool)

(declare-fun e!38507 () Bool)

(declare-fun tp!16817 () Bool)

(assert (=> b!71163 (= e!38507 (and tp_is_empty!353 tp!16817))))

(assert (=> b!71152 (= tp!16812 e!38507)))

(assert (= (and b!71152 (is-Cons!546 (t!47436 l!1350))) b!71163))

(declare-fun b!71164 () Bool)

(declare-fun e!38508 () Bool)

(declare-fun tp!16818 () Bool)

(assert (=> b!71164 (= e!38508 (and tp_is_empty!353 tp!16818))))

(assert (=> b!71156 (= tp!16814 e!38508)))

(assert (= (and b!71156 (is-Cons!546 (t!47436 thiss!9407))) b!71164))

(declare-fun b!71169 () Bool)

(declare-fun e!38511 () Bool)

(declare-fun tp!16821 () Bool)

(assert (=> b!71169 (= e!38511 (and tp_is_empty!351 tp!16821))))

(assert (=> b!71154 (= tp!16810 e!38511)))

(assert (= (and b!71154 (is-Cons!545 (t!47435 i!566))) b!71169))

(declare-fun b!71170 () Bool)

(declare-fun e!38512 () Bool)

(declare-fun tp!16822 () Bool)

(assert (=> b!71170 (= e!38512 (and tp_is_empty!351 tp!16822))))

(assert (=> b!71157 (= tp!16811 e!38512)))

(assert (= (and b!71157 (is-Cons!545 (t!47435 n!1652))) b!71170))

(declare-fun b!71171 () Bool)

(declare-fun e!38513 () Bool)

(declare-fun tp!16823 () Bool)

(assert (=> b!71171 (= e!38513 (and tp_is_empty!353 tp!16823))))

(assert (=> b!71151 (= tp!16813 e!38513)))

(assert (= (and b!71151 (is-Cons!546 (t!47436 l!1348))) b!71171))

(declare-fun b!71172 () Bool)

(declare-fun e!38514 () Bool)

(declare-fun tp!16824 () Bool)

(assert (=> b!71172 (= e!38514 (and tp_is_empty!351 tp!16824))))

(assert (=> b!71158 (= tp!16809 e!38514)))

(assert (= (and b!71158 (is-Cons!545 (t!47435 i!564))) b!71172))

(push 1)

(assert tp_is_empty!351)

(assert (not b!71164))

(assert (not b!71163))

(assert tp_is_empty!353)

(assert (not b!71171))

(assert (not d!53950))

(assert (not b!71169))

(assert (not b!71172))

(assert (not b!71170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53952 () Bool)

(assert (=> d!53952 (= (isEmpty!593 l!1348) (is-Nil!547 l!1348))))

(assert (=> d!53950 d!53952))

(declare-fun b!71173 () Bool)

(declare-fun e!38515 () Bool)

(declare-fun tp!16825 () Bool)

(assert (=> b!71173 (= e!38515 (and tp_is_empty!351 tp!16825))))

(assert (=> b!71169 (= tp!16821 e!38515)))

(assert (= (and b!71169 (is-Cons!545 (t!47435 (t!47435 i!566)))) b!71173))

(declare-fun b!71174 () Bool)

(declare-fun e!38516 () Bool)

(declare-fun tp!16826 () Bool)

(assert (=> b!71174 (= e!38516 (and tp_is_empty!353 tp!16826))))

(assert (=> b!71163 (= tp!16817 e!38516)))

(assert (= (and b!71163 (is-Cons!546 (t!47436 (t!47436 l!1350)))) b!71174))

(declare-fun b!71175 () Bool)

(declare-fun e!38517 () Bool)

(declare-fun tp!16827 () Bool)

(assert (=> b!71175 (= e!38517 (and tp_is_empty!351 tp!16827))))

(assert (=> b!71172 (= tp!16824 e!38517)))

(assert (= (and b!71172 (is-Cons!545 (t!47435 (t!47435 i!564)))) b!71175))

(declare-fun b!71176 () Bool)

(declare-fun e!38518 () Bool)

(declare-fun tp!16828 () Bool)

(assert (=> b!71176 (= e!38518 (and tp_is_empty!353 tp!16828))))

(assert (=> b!71171 (= tp!16823 e!38518)))

(assert (= (and b!71171 (is-Cons!546 (t!47436 (t!47436 l!1348)))) b!71176))

(declare-fun b!71177 () Bool)

(declare-fun e!38519 () Bool)

(declare-fun tp!16829 () Bool)

(assert (=> b!71177 (= e!38519 (and tp_is_empty!351 tp!16829))))

(assert (=> b!71170 (= tp!16822 e!38519)))

(assert (= (and b!71170 (is-Cons!545 (t!47435 (t!47435 n!1652)))) b!71177))

(declare-fun b!71178 () Bool)

(declare-fun e!38520 () Bool)

(declare-fun tp!16830 () Bool)

(assert (=> b!71178 (= e!38520 (and tp_is_empty!353 tp!16830))))

(assert (=> b!71164 (= tp!16818 e!38520)))

(assert (= (and b!71164 (is-Cons!546 (t!47436 (t!47436 thiss!9407)))) b!71178))

(push 1)

(assert (not b!71173))

(assert (not b!71178))

(assert tp_is_empty!351)

(assert (not b!71177))

(assert (not b!71176))

(assert tp_is_empty!353)

(assert (not b!71175))

(assert (not b!71174))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

