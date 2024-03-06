; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12644 () Bool)

(assert start!12644)

(declare-fun res!48894 () Bool)

(declare-fun e!50900 () Bool)

(assert (=> start!12644 (=> (not res!48894) (not e!50900))))

(declare-datatypes () ((List!803 (Nil!746) (Cons!744 (head!1183 (_ BitVec 32)) (tail!1179 List!803)) (ListExt!5 (__x!378 Int)))))

(declare-fun list!1090 () List!803)

(assert (=> start!12644 (= res!48894 (is-Nil!746 list!1090))))

(assert (=> start!12644 e!50900))

(assert (=> start!12644 true))

(declare-fun b!93058 () Bool)

(declare-fun positive_lemma!2 (List!803) Bool)

(assert (=> b!93058 (= e!50900 (not (positive_lemma!2 list!1090)))))

(assert (= (and start!12644 res!48894) b!93058))

(declare-fun m!88718 () Bool)

(assert (=> b!93058 m!88718))

(push 1)

(assert (not b!93058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60826 () Bool)

(declare-fun lambda!11149 () Int)

(declare-fun positive!7 (List!803) Bool)

(declare-fun forall!65 (List!803 Int) Bool)

(assert (=> d!60826 (= (positive_lemma!2 list!1090) (= (positive!7 list!1090) (forall!65 list!1090 lambda!11149)))))

(declare-fun bs!41987 () Bool)

(assert (= bs!41987 d!60826))

(declare-fun m!88720 () Bool)

(assert (=> bs!41987 m!88720))

(declare-fun m!88722 () Bool)

(assert (=> bs!41987 m!88722))

(assert (=> b!93058 d!60826))

(push 1)

(assert (not d!60826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60828 () Bool)

(declare-fun res!48899 () Bool)

(declare-fun e!50905 () Bool)

(assert (=> d!60828 (=> res!48899 e!50905)))

(assert (=> d!60828 (= res!48899 (not (is-Cons!744 list!1090)))))

(assert (=> d!60828 (= (positive!7 list!1090) e!50905)))

(declare-fun b!93063 () Bool)

(declare-fun e!50906 () Bool)

(assert (=> b!93063 (= e!50905 e!50906)))

(declare-fun res!48900 () Bool)

(assert (=> b!93063 (=> (not res!48900) (not e!50906))))

(assert (=> b!93063 (= res!48900 (not (bvslt (head!1183 list!1090) #b00000000000000000000000000000000)))))

(declare-fun b!93064 () Bool)

(assert (=> b!93064 (= e!50906 (positive!7 (tail!1179 list!1090)))))

(assert (= (and d!60828 (not res!48899)) b!93063))

(assert (= (and b!93063 res!48900) b!93064))

(declare-fun m!88724 () Bool)

(assert (=> b!93064 m!88724))

(assert (=> d!60826 d!60828))

(declare-fun d!60830 () Bool)

(declare-fun res!48905 () Bool)

(declare-fun e!50911 () Bool)

(assert (=> d!60830 (=> res!48905 e!50911)))

(assert (=> d!60830 (= res!48905 (not (is-Cons!744 list!1090)))))

(assert (=> d!60830 (= (forall!65 list!1090 lambda!11149) e!50911)))

(declare-fun b!93069 () Bool)

(declare-fun e!50912 () Bool)

(assert (=> b!93069 (= e!50911 e!50912)))

(declare-fun res!48906 () Bool)

(assert (=> b!93069 (=> (not res!48906) (not e!50912))))

(declare-fun dynLambda!1135 (Int (_ BitVec 32)) Bool)

(assert (=> b!93069 (= res!48906 (dynLambda!1135 lambda!11149 (head!1183 list!1090)))))

(declare-fun b!93070 () Bool)

(assert (=> b!93070 (= e!50912 (forall!65 (tail!1179 list!1090) lambda!11149))))

(assert (= (and d!60830 (not res!48905)) b!93069))

(assert (= (and b!93069 res!48906) b!93070))

(declare-fun b_lambda!18887 () Bool)

(assert (=> (not b_lambda!18887) (not b!93069)))

(declare-fun m!88726 () Bool)

(assert (=> b!93069 m!88726))

(declare-fun m!88728 () Bool)

(assert (=> b!93070 m!88728))

(assert (=> d!60826 d!60830))

(declare-fun b_lambda!18889 () Bool)

(assert (= b_lambda!18887 (or d!60826 b_lambda!18889)))

(declare-fun bs!41988 () Bool)

(declare-fun d!60832 () Bool)

(assert (= bs!41988 (and d!60832 d!60826)))

(assert (=> bs!41988 (= (dynLambda!1135 lambda!11149 (head!1183 list!1090)) (bvsgt (head!1183 list!1090) #b00000000000000000000000000000000))))

(assert (=> b!93069 d!60832))

(push 1)

(assert (not b!93070))

(assert (not b!93064))

(assert (not b_lambda!18889))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

