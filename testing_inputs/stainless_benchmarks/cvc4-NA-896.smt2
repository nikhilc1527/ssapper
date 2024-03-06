; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6842 () Bool)

(assert start!6842)

(declare-fun b!50778 () Bool)

(declare-fun b_free!7143 () Bool)

(declare-fun b_next!38259 () Bool)

(assert (=> b!50778 (= b_free!7143 (not b_next!38259))))

(declare-fun tp!14812 () Bool)

(declare-fun b_and!57649 () Bool)

(assert (=> b!50778 (= tp!14812 b_and!57649)))

(declare-fun b_free!7145 () Bool)

(declare-fun b_next!38261 () Bool)

(assert (=> b!50778 (= b_free!7145 (not b_next!38261))))

(declare-fun tp!14805 () Bool)

(declare-fun b_and!57651 () Bool)

(assert (=> b!50778 (= tp!14805 b_and!57651)))

(declare-fun b_free!7147 () Bool)

(declare-fun b_next!38263 () Bool)

(assert (=> b!50778 (= b_free!7147 (not b_next!38263))))

(declare-fun tp!14811 () Bool)

(declare-fun b_and!57653 () Bool)

(assert (=> b!50778 (= tp!14811 b_and!57653)))

(declare-fun b!50776 () Bool)

(declare-fun b_free!7149 () Bool)

(declare-fun b_next!38265 () Bool)

(assert (=> b!50776 (= b_free!7149 (not b_next!38265))))

(declare-fun tp!14798 () Bool)

(declare-fun b_and!57655 () Bool)

(assert (=> b!50776 (= tp!14798 b_and!57655)))

(declare-fun b_free!7151 () Bool)

(declare-fun b_next!38267 () Bool)

(assert (=> b!50776 (= b_free!7151 (not b_next!38267))))

(declare-fun tp!14808 () Bool)

(declare-fun b_and!57657 () Bool)

(assert (=> b!50776 (= tp!14808 b_and!57657)))

(declare-fun b_free!7153 () Bool)

(declare-fun b_next!38269 () Bool)

(assert (=> b!50776 (= b_free!7153 (not b_next!38269))))

(declare-fun tp!14802 () Bool)

(declare-fun b_and!57659 () Bool)

(assert (=> b!50776 (= tp!14802 b_and!57659)))

(declare-fun b!50771 () Bool)

(declare-fun b_free!7155 () Bool)

(declare-fun b_next!38271 () Bool)

(assert (=> b!50771 (= b_free!7155 (not b_next!38271))))

(declare-fun tp!14806 () Bool)

(declare-fun b_and!57661 () Bool)

(assert (=> b!50771 (= tp!14806 b_and!57661)))

(declare-fun b_free!7157 () Bool)

(declare-fun b_next!38273 () Bool)

(assert (=> b!50771 (= b_free!7157 (not b_next!38273))))

(declare-fun tp!14799 () Bool)

(declare-fun b_and!57663 () Bool)

(assert (=> b!50771 (= tp!14799 b_and!57663)))

(declare-fun b_free!7159 () Bool)

(declare-fun b_next!38275 () Bool)

(assert (=> b!50771 (= b_free!7159 (not b_next!38275))))

(declare-fun tp!14807 () Bool)

(declare-fun b_and!57665 () Bool)

(assert (=> b!50771 (= tp!14807 b_and!57665)))

(declare-fun b!50773 () Bool)

(declare-fun b_free!7161 () Bool)

(declare-fun b_next!38277 () Bool)

(assert (=> b!50773 (= b_free!7161 (not b_next!38277))))

(declare-fun tp!14810 () Bool)

(declare-fun b_and!57667 () Bool)

(assert (=> b!50773 (= tp!14810 b_and!57667)))

(declare-fun b_free!7163 () Bool)

(declare-fun b_next!38279 () Bool)

(assert (=> b!50773 (= b_free!7163 (not b_next!38279))))

(declare-fun tp!14809 () Bool)

(declare-fun b_and!57669 () Bool)

(assert (=> b!50773 (= tp!14809 b_and!57669)))

(declare-fun b_free!7165 () Bool)

(declare-fun b_next!38281 () Bool)

(assert (=> b!50773 (= b_free!7165 (not b_next!38281))))

(declare-fun tp!14803 () Bool)

(declare-fun b_and!57671 () Bool)

(assert (=> b!50773 (= tp!14803 b_and!57671)))

(declare-fun b!50775 () Bool)

(declare-fun b_free!7167 () Bool)

(declare-fun b_next!38283 () Bool)

(assert (=> b!50775 (= b_free!7167 (not b_next!38283))))

(declare-fun tp!14801 () Bool)

(declare-fun b_and!57673 () Bool)

(assert (=> b!50775 (= tp!14801 b_and!57673)))

(declare-fun b_free!7169 () Bool)

(declare-fun b_next!38285 () Bool)

(assert (=> b!50775 (= b_free!7169 (not b_next!38285))))

(declare-fun tp!14804 () Bool)

(declare-fun b_and!57675 () Bool)

(assert (=> b!50775 (= tp!14804 b_and!57675)))

(declare-fun b_free!7171 () Bool)

(declare-fun b_next!38287 () Bool)

(assert (=> b!50775 (= b_free!7171 (not b_next!38287))))

(declare-fun tp!14800 () Bool)

(declare-fun b_and!57677 () Bool)

(assert (=> b!50775 (= tp!14800 b_and!57677)))

(declare-fun b!50774 () Bool)

(assert (=> b!50774 true))

(assert (=> b!50774 true))

(declare-fun lambda!8501 () Int)

(declare-datatypes () ((Nat!257 (Zero!241) (Succ!238 (n!1395 Nat!257)))))

(declare-datatypes () ((RAEqEvidence!468 (RAEqEvidence!469 (x!19689 Int) (y!1573 Int) (evidence!686 Int)))))

(declare-fun x$11!41 () RAEqEvidence!468)

(declare-fun b_next!38289 () Bool)

(assert (=> b!50771 (= b_next!38271 (or (and b!50774 (= lambda!8501 (x!19689 x$11!41))) b_next!38289))))

(declare-fun b_next!38291 () Bool)

(declare-fun x$12!40 () RAEqEvidence!468)

(assert (=> b!50775 (= b_next!38285 (or (and b!50774 (= lambda!8501 (y!1573 x$12!40))) b_next!38291))))

(declare-fun b_next!38293 () Bool)

(declare-datatypes () ((Unit!816 (Unit!817))))

(declare-datatypes () ((RAEqEvidence!470 (RAEqEvidence!471 (x!19690 Int) (y!1574 Int) (evidence!687 Int)))))

(declare-fun thiss!5602 () RAEqEvidence!470)

(assert (=> b!50778 (= b_next!38259 (or (and b!50774 (= lambda!8501 (x!19690 thiss!5602))) b_next!38293))))

(declare-fun prev!556 () RAEqEvidence!470)

(declare-fun b_next!38295 () Bool)

(assert (=> b!50776 (= b_next!38265 (or (and b!50774 (= lambda!8501 (x!19690 prev!556))) b_next!38295))))

(declare-fun b_next!38297 () Bool)

(assert (=> b!50771 (= b_next!38273 (or (and b!50774 (= lambda!8501 (y!1573 x$11!41))) b_next!38297))))

(declare-fun b_next!38299 () Bool)

(assert (=> b!50778 (= b_next!38261 (or (and b!50774 (= lambda!8501 (y!1574 thiss!5602))) b_next!38299))))

(declare-fun x$10!19 () RAEqEvidence!470)

(declare-fun b_next!38301 () Bool)

(assert (=> b!50773 (= b_next!38277 (or (and b!50774 (= lambda!8501 (x!19690 x$10!19))) b_next!38301))))

(declare-fun b_next!38303 () Bool)

(assert (=> b!50773 (= b_next!38279 (or (and b!50774 (= lambda!8501 (y!1574 x$10!19))) b_next!38303))))

(declare-fun b_next!38305 () Bool)

(assert (=> b!50775 (= b_next!38283 (or (and b!50774 (= lambda!8501 (x!19689 x$12!40))) b_next!38305))))

(declare-fun b_next!38307 () Bool)

(assert (=> b!50776 (= b_next!38267 (or (and b!50774 (= lambda!8501 (y!1574 prev!556))) b_next!38307))))

(declare-fun m!54343 () Bool)

(assert (=> b!50774 m!54343))

(declare-fun lambda!8502 () Int)

(declare-fun dynLambda!878 (Int) Bool)

(assert (=> (and b!50771 b!50774 (= (dynLambda!878 lambda!8502) (dynLambda!878 (evidence!686 x$11!41)))) (= lambda!8502 (evidence!686 x$11!41))))

(assert (=> (and b!50775 b!50774 (= (dynLambda!878 lambda!8502) (dynLambda!878 (evidence!686 x$12!40)))) (= lambda!8502 (evidence!686 x$12!40))))

(declare-fun b_next!38309 () Bool)

(assert (=> b!50771 (= b_next!38275 (or (and b!50774 (= lambda!8502 (evidence!686 x$11!41))) b_next!38309))))

(declare-fun b_next!38311 () Bool)

(assert (=> b!50775 (= b_next!38287 (or (and b!50774 (= lambda!8502 (evidence!686 x$12!40))) b_next!38311))))

(declare-fun bs!23615 () Bool)

(declare-fun b!50779 () Bool)

(assert (= bs!23615 (and b!50779 b!50774)))

(declare-fun lambda!8503 () Int)

(assert (=> bs!23615 (not (= lambda!8503 lambda!8501))))

(assert (=> b!50779 true))

(assert (=> b!50779 true))

(declare-fun b_next!38313 () Bool)

(assert (=> b!50771 (= b_next!38289 (or (and b!50779 (= lambda!8503 (x!19689 x$11!41))) b_next!38313))))

(declare-fun b_next!38315 () Bool)

(assert (=> b!50775 (= b_next!38291 (or (and b!50779 (= lambda!8503 (y!1573 x$12!40))) b_next!38315))))

(declare-fun b_next!38317 () Bool)

(assert (=> b!50778 (= b_next!38293 (or (and b!50779 (= lambda!8503 (x!19690 thiss!5602))) b_next!38317))))

(declare-fun b_next!38319 () Bool)

(assert (=> b!50776 (= b_next!38295 (or (and b!50779 (= lambda!8503 (x!19690 prev!556))) b_next!38319))))

(declare-fun b_next!38321 () Bool)

(assert (=> b!50771 (= b_next!38297 (or (and b!50779 (= lambda!8503 (y!1573 x$11!41))) b_next!38321))))

(declare-fun b_next!38323 () Bool)

(assert (=> b!50778 (= b_next!38299 (or (and b!50779 (= lambda!8503 (y!1574 thiss!5602))) b_next!38323))))

(declare-fun b_next!38325 () Bool)

(assert (=> b!50773 (= b_next!38301 (or (and b!50779 (= lambda!8503 (x!19690 x$10!19))) b_next!38325))))

(declare-fun b_next!38327 () Bool)

(assert (=> b!50773 (= b_next!38303 (or (and b!50779 (= lambda!8503 (y!1574 x$10!19))) b_next!38327))))

(declare-fun b_next!38329 () Bool)

(assert (=> b!50775 (= b_next!38305 (or (and b!50779 (= lambda!8503 (x!19689 x$12!40))) b_next!38329))))

(declare-fun b_next!38331 () Bool)

(assert (=> b!50776 (= b_next!38307 (or (and b!50779 (= lambda!8503 (y!1574 prev!556))) b_next!38331))))

(assert (=> b!50779 true))

(assert (=> b!50779 true))

(declare-fun lambda!8504 () Int)

(declare-fun b_next!38333 () Bool)

(assert (=> b!50778 (= b_next!38263 (or (and b!50779 (= lambda!8504 (evidence!687 thiss!5602))) b_next!38333))))

(declare-fun b_next!38335 () Bool)

(assert (=> b!50776 (= b_next!38269 (or (and b!50779 (= lambda!8504 (evidence!687 prev!556))) b_next!38335))))

(declare-fun b_next!38337 () Bool)

(assert (=> b!50773 (= b_next!38281 (or (and b!50779 (= lambda!8504 (evidence!687 x$10!19))) b_next!38337))))

(declare-fun bs!23616 () Bool)

(declare-fun b!50777 () Bool)

(assert (= bs!23616 (and b!50777 b!50774)))

(declare-fun lambda!8505 () Int)

(assert (=> bs!23616 (not (= lambda!8505 lambda!8501))))

(declare-fun bs!23617 () Bool)

(assert (= bs!23617 (and b!50777 b!50779)))

(declare-fun n1!178 () Nat!257)

(declare-fun n2!189 () Nat!257)

(assert (=> bs!23617 (= (and (= n2!189 (n!1395 n1!178)) (= (n!1395 n1!178) n2!189)) (= lambda!8505 lambda!8503))))

(assert (=> b!50777 true))

(assert (=> b!50777 true))

(declare-fun b_next!38339 () Bool)

(assert (=> b!50771 (= b_next!38313 (or (and b!50777 (= lambda!8505 (x!19689 x$11!41))) b_next!38339))))

(declare-fun b_next!38341 () Bool)

(assert (=> b!50775 (= b_next!38315 (or (and b!50777 (= lambda!8505 (y!1573 x$12!40))) b_next!38341))))

(declare-fun b_next!38343 () Bool)

(assert (=> b!50778 (= b_next!38317 (or (and b!50777 (= lambda!8505 (x!19690 thiss!5602))) b_next!38343))))

(declare-fun b_next!38345 () Bool)

(assert (=> b!50776 (= b_next!38319 (or (and b!50777 (= lambda!8505 (x!19690 prev!556))) b_next!38345))))

(declare-fun b_next!38347 () Bool)

(assert (=> b!50771 (= b_next!38321 (or (and b!50777 (= lambda!8505 (y!1573 x$11!41))) b_next!38347))))

(declare-fun b_next!38349 () Bool)

(assert (=> b!50778 (= b_next!38323 (or (and b!50777 (= lambda!8505 (y!1574 thiss!5602))) b_next!38349))))

(declare-fun b_next!38351 () Bool)

(assert (=> b!50773 (= b_next!38325 (or (and b!50777 (= lambda!8505 (x!19690 x$10!19))) b_next!38351))))

(declare-fun b_next!38353 () Bool)

(assert (=> b!50773 (= b_next!38327 (or (and b!50777 (= lambda!8505 (y!1574 x$10!19))) b_next!38353))))

(declare-fun b_next!38355 () Bool)

(assert (=> b!50775 (= b_next!38329 (or (and b!50777 (= lambda!8505 (x!19689 x$12!40))) b_next!38355))))

(declare-fun b_next!38357 () Bool)

(assert (=> b!50776 (= b_next!38331 (or (and b!50777 (= lambda!8505 (y!1574 prev!556))) b_next!38357))))

(declare-fun lambda!8506 () Int)

(assert (=> bs!23616 (= (and (= n2!189 n1!178) (= n1!178 n2!189)) (= lambda!8506 lambda!8501))))

(assert (=> bs!23617 (not (= lambda!8506 lambda!8503))))

(assert (=> b!50777 (not (= lambda!8506 lambda!8505))))

(assert (=> b!50777 true))

(assert (=> b!50777 true))

(declare-fun b_next!38359 () Bool)

(assert (=> b!50771 (= b_next!38339 (or (and b!50777 (= lambda!8506 (x!19689 x$11!41))) b_next!38359))))

(declare-fun b_next!38361 () Bool)

(assert (=> b!50775 (= b_next!38341 (or (and b!50777 (= lambda!8506 (y!1573 x$12!40))) b_next!38361))))

(declare-fun b_next!38363 () Bool)

(assert (=> b!50778 (= b_next!38343 (or (and b!50777 (= lambda!8506 (x!19690 thiss!5602))) b_next!38363))))

(declare-fun b_next!38365 () Bool)

(assert (=> b!50776 (= b_next!38345 (or (and b!50777 (= lambda!8506 (x!19690 prev!556))) b_next!38365))))

(declare-fun b_next!38367 () Bool)

(assert (=> b!50771 (= b_next!38347 (or (and b!50777 (= lambda!8506 (y!1573 x$11!41))) b_next!38367))))

(declare-fun b_next!38369 () Bool)

(assert (=> b!50778 (= b_next!38349 (or (and b!50777 (= lambda!8506 (y!1574 thiss!5602))) b_next!38369))))

(declare-fun b_next!38371 () Bool)

(assert (=> b!50773 (= b_next!38351 (or (and b!50777 (= lambda!8506 (x!19690 x$10!19))) b_next!38371))))

(declare-fun b_next!38373 () Bool)

(assert (=> b!50773 (= b_next!38353 (or (and b!50777 (= lambda!8506 (y!1574 x$10!19))) b_next!38373))))

(declare-fun b_next!38375 () Bool)

(assert (=> b!50775 (= b_next!38355 (or (and b!50777 (= lambda!8506 (x!19689 x$12!40))) b_next!38375))))

(declare-fun b_next!38377 () Bool)

(assert (=> b!50776 (= b_next!38357 (or (and b!50777 (= lambda!8506 (y!1574 prev!556))) b_next!38377))))

(declare-fun lambda!8507 () Int)

(assert (=> bs!23617 (not (= lambda!8507 lambda!8504))))

(assert (=> b!50777 true))

(assert (=> b!50777 true))

(declare-fun b_next!38379 () Bool)

(assert (=> b!50778 (= b_next!38333 (or (and b!50777 (= lambda!8507 (evidence!687 thiss!5602))) b_next!38379))))

(declare-fun b_next!38381 () Bool)

(assert (=> b!50776 (= b_next!38335 (or (and b!50777 (= lambda!8507 (evidence!687 prev!556))) b_next!38381))))

(declare-fun b_next!38383 () Bool)

(assert (=> b!50773 (= b_next!38337 (or (and b!50777 (= lambda!8507 (evidence!687 x$10!19))) b_next!38383))))

(declare-fun b!50768 () Bool)

(declare-fun res!23301 () Bool)

(declare-fun e!26351 () Bool)

(assert (=> b!50768 (=> (not res!23301) (not e!26351))))

(declare-fun keepEvidence!72 (Unit!816) Bool)

(declare-fun dynLambda!879 (Int) Unit!816)

(assert (=> b!50768 (= res!23301 (keepEvidence!72 (dynLambda!879 (evidence!687 prev!556))))))

(declare-fun b!50769 () Bool)

(declare-fun res!23304 () Bool)

(assert (=> b!50769 (=> (not res!23304) (not e!26351))))

(assert (=> b!50769 (= res!23304 (= prev!556 x$10!19))))

(declare-fun b!50770 () Bool)

(declare-fun dynLambda!880 (Int) Nat!257)

(assert (=> b!50770 (= e!26351 (not (= (dynLambda!880 (y!1574 prev!556)) (dynLambda!880 (x!19690 thiss!5602)))))))

(declare-fun e!26348 () Bool)

(assert (=> b!50771 (= e!26348 (and tp!14806 tp!14799 tp!14807))))

(declare-fun b!50772 () Bool)

(declare-fun res!23300 () Bool)

(assert (=> b!50772 (=> (not res!23300) (not e!26351))))

(assert (=> b!50772 (= res!23300 (= x$11!41 (RAEqEvidence!469 lambda!8501 lambda!8501 lambda!8502)))))

(declare-fun e!26349 () Bool)

(assert (=> b!50773 (= e!26349 (and tp!14810 tp!14809 tp!14803))))

(declare-fun res!23306 () Bool)

(assert (=> b!50774 (=> (not res!23306) (not e!26351))))

(assert (=> b!50774 (= res!23306 (= x$12!40 (RAEqEvidence!469 lambda!8501 lambda!8501 lambda!8502)))))

(declare-fun e!26350 () Bool)

(assert (=> b!50775 (= e!26350 (and tp!14801 tp!14804 tp!14800))))

(declare-fun e!26347 () Bool)

(assert (=> b!50776 (= e!26347 (and tp!14798 tp!14808 tp!14802))))

(declare-fun res!23303 () Bool)

(assert (=> start!6842 (=> (not res!23303) (not e!26351))))

(assert (=> start!6842 (= res!23303 (not (is-Zero!241 n1!178)))))

(assert (=> start!6842 e!26351))

(declare-fun inv!883 (RAEqEvidence!470) Bool)

(assert (=> start!6842 (and (inv!883 x$10!19) e!26349)))

(assert (=> start!6842 (and (inv!883 prev!556) e!26347)))

(declare-fun inv!884 (RAEqEvidence!468) Bool)

(assert (=> start!6842 (and (inv!884 x$11!41) e!26348)))

(assert (=> start!6842 (and (inv!884 x$12!40) e!26350)))

(declare-fun e!26352 () Bool)

(assert (=> start!6842 (and (inv!883 thiss!5602) e!26352)))

(assert (=> start!6842 true))

(declare-fun res!23305 () Bool)

(assert (=> b!50777 (=> (not res!23305) (not e!26351))))

(assert (=> b!50777 (= res!23305 (= thiss!5602 (RAEqEvidence!471 lambda!8505 lambda!8506 lambda!8507)))))

(assert (=> b!50778 (= e!26352 (and tp!14812 tp!14805 tp!14811))))

(declare-fun res!23302 () Bool)

(assert (=> b!50779 (=> (not res!23302) (not e!26351))))

(assert (=> b!50779 (= res!23302 (= x$10!19 (RAEqEvidence!471 lambda!8503 lambda!8503 lambda!8504)))))

(assert (= (and start!6842 res!23303) b!50774))

(assert (= (and b!50774 res!23306) b!50772))

(assert (= (and b!50772 res!23300) b!50779))

(assert (= (and b!50779 res!23302) b!50777))

(assert (= (and b!50777 res!23305) b!50769))

(assert (= (and b!50769 res!23304) b!50768))

(assert (= (and b!50768 res!23301) b!50770))

(assert (= start!6842 b!50773))

(assert (= start!6842 b!50776))

(assert (= start!6842 b!50771))

(assert (= start!6842 b!50775))

(assert (= start!6842 b!50778))

(declare-fun b_lambda!14423 () Bool)

(assert (=> (not b_lambda!14423) (not b!50768)))

(declare-fun tb!45389 () Bool)

(declare-fun t!46211 () Bool)

(assert (=> (and b!50778 (= (evidence!687 thiss!5602) (evidence!687 prev!556)) t!46211) tb!45389))

(declare-fun result!45665 () Bool)

(assert (=> tb!45389 (= result!45665 true)))

(assert (=> b!50768 t!46211))

(declare-fun b_and!57679 () Bool)

(assert (= b_and!57653 (and (=> t!46211 result!45665) b_and!57679)))

(declare-fun t!46213 () Bool)

(declare-fun tb!45391 () Bool)

(assert (=> (and b!50776 (= (evidence!687 prev!556) (evidence!687 prev!556)) t!46213) tb!45391))

(declare-fun result!45667 () Bool)

(assert (=> tb!45391 (= result!45667 true)))

(assert (=> b!50768 t!46213))

(declare-fun b_and!57681 () Bool)

(assert (= b_and!57659 (and (=> t!46213 result!45667) b_and!57681)))

(declare-fun t!46215 () Bool)

(declare-fun tb!45393 () Bool)

(assert (=> (and b!50773 (= (evidence!687 x$10!19) (evidence!687 prev!556)) t!46215) tb!45393))

(declare-fun result!45669 () Bool)

(assert (=> tb!45393 (= result!45669 true)))

(assert (=> b!50768 t!46215))

(declare-fun b_and!57683 () Bool)

(assert (= b_and!57671 (and (=> t!46215 result!45669) b_and!57683)))

(declare-fun b_lambda!14425 () Bool)

(assert (=> (not b_lambda!14425) (not b!50770)))

(declare-fun tb!45395 () Bool)

(declare-fun t!46217 () Bool)

(assert (=> (and b!50775 (= (y!1573 x$12!40) (y!1574 prev!556)) t!46217) tb!45395))

(declare-fun result!45671 () Bool)

(assert (=> tb!45395 (= result!45671 true)))

(assert (=> b!50770 t!46217))

(declare-fun b_and!57685 () Bool)

(assert (= b_and!57675 (and (=> t!46217 result!45671) b_and!57685)))

(declare-fun t!46219 () Bool)

(declare-fun tb!45397 () Bool)

(assert (=> (and b!50778 (= (y!1574 thiss!5602) (y!1574 prev!556)) t!46219) tb!45397))

(declare-fun result!45673 () Bool)

(assert (=> tb!45397 (= result!45673 true)))

(assert (=> b!50770 t!46219))

(declare-fun b_and!57687 () Bool)

(assert (= b_and!57651 (and (=> t!46219 result!45673) b_and!57687)))

(declare-fun t!46221 () Bool)

(declare-fun tb!45399 () Bool)

(assert (=> (and b!50771 (= (y!1573 x$11!41) (y!1574 prev!556)) t!46221) tb!45399))

(declare-fun result!45675 () Bool)

(assert (=> tb!45399 (= result!45675 true)))

(assert (=> b!50770 t!46221))

(declare-fun b_and!57689 () Bool)

(assert (= b_and!57663 (and (=> t!46221 result!45675) b_and!57689)))

(declare-fun t!46223 () Bool)

(declare-fun tb!45401 () Bool)

(assert (=> (and b!50776 (= (x!19690 prev!556) (y!1574 prev!556)) t!46223) tb!45401))

(declare-fun result!45677 () Bool)

(assert (=> tb!45401 (= result!45677 true)))

(assert (=> b!50770 t!46223))

(declare-fun b_and!57691 () Bool)

(assert (= b_and!57655 (and (=> t!46223 result!45677) b_and!57691)))

(declare-fun t!46225 () Bool)

(declare-fun tb!45403 () Bool)

(assert (=> (and b!50773 (= (x!19690 x$10!19) (y!1574 prev!556)) t!46225) tb!45403))

(declare-fun result!45679 () Bool)

(assert (=> tb!45403 (= result!45679 true)))

(assert (=> b!50770 t!46225))

(declare-fun b_and!57693 () Bool)

(assert (= b_and!57667 (and (=> t!46225 result!45679) b_and!57693)))

(declare-fun t!46227 () Bool)

(declare-fun tb!45405 () Bool)

(assert (=> (and b!50773 (= (y!1574 x$10!19) (y!1574 prev!556)) t!46227) tb!45405))

(declare-fun result!45681 () Bool)

(assert (=> tb!45405 (= result!45681 true)))

(assert (=> b!50770 t!46227))

(declare-fun b_and!57695 () Bool)

(assert (= b_and!57669 (and (=> t!46227 result!45681) b_and!57695)))

(declare-fun t!46229 () Bool)

(declare-fun tb!45407 () Bool)

(assert (=> (and b!50776 (= (y!1574 prev!556) (y!1574 prev!556)) t!46229) tb!45407))

(declare-fun result!45683 () Bool)

(assert (=> tb!45407 (= result!45683 true)))

(assert (=> b!50770 t!46229))

(declare-fun b_and!57697 () Bool)

(assert (= b_and!57657 (and (=> t!46229 result!45683) b_and!57697)))

(declare-fun tb!45409 () Bool)

(declare-fun t!46231 () Bool)

(assert (=> (and b!50771 (= (x!19689 x$11!41) (y!1574 prev!556)) t!46231) tb!45409))

(declare-fun result!45685 () Bool)

(assert (=> tb!45409 (= result!45685 true)))

(assert (=> b!50770 t!46231))

(declare-fun b_and!57699 () Bool)

(assert (= b_and!57661 (and (=> t!46231 result!45685) b_and!57699)))

(declare-fun tb!45411 () Bool)

(declare-fun t!46233 () Bool)

(assert (=> (and b!50775 (= (x!19689 x$12!40) (y!1574 prev!556)) t!46233) tb!45411))

(declare-fun result!45687 () Bool)

(assert (=> tb!45411 (= result!45687 true)))

(assert (=> b!50770 t!46233))

(declare-fun b_and!57701 () Bool)

(assert (= b_and!57673 (and (=> t!46233 result!45687) b_and!57701)))

(declare-fun tb!45413 () Bool)

(declare-fun t!46235 () Bool)

(assert (=> (and b!50778 (= (x!19690 thiss!5602) (y!1574 prev!556)) t!46235) tb!45413))

(declare-fun result!45689 () Bool)

(assert (=> tb!45413 (= result!45689 true)))

(assert (=> b!50770 t!46235))

(declare-fun b_and!57703 () Bool)

(assert (= b_and!57649 (and (=> t!46235 result!45689) b_and!57703)))

(declare-fun b_lambda!14427 () Bool)

(assert (=> (not b_lambda!14427) (not b!50770)))

(declare-fun t!46237 () Bool)

(declare-fun tb!45415 () Bool)

(assert (=> (and b!50776 (= (x!19690 prev!556) (x!19690 thiss!5602)) t!46237) tb!45415))

(declare-fun result!45691 () Bool)

(assert (=> tb!45415 (= result!45691 true)))

(assert (=> b!50770 t!46237))

(declare-fun b_and!57705 () Bool)

(assert (= b_and!57691 (and (=> t!46237 result!45691) b_and!57705)))

(declare-fun t!46239 () Bool)

(declare-fun tb!45417 () Bool)

(assert (=> (and b!50771 (= (y!1573 x$11!41) (x!19690 thiss!5602)) t!46239) tb!45417))

(declare-fun result!45693 () Bool)

(assert (=> tb!45417 (= result!45693 true)))

(assert (=> b!50770 t!46239))

(declare-fun b_and!57707 () Bool)

(assert (= b_and!57689 (and (=> t!46239 result!45693) b_and!57707)))

(declare-fun t!46241 () Bool)

(declare-fun tb!45419 () Bool)

(assert (=> (and b!50773 (= (x!19690 x$10!19) (x!19690 thiss!5602)) t!46241) tb!45419))

(declare-fun result!45695 () Bool)

(assert (=> tb!45419 (= result!45695 true)))

(assert (=> b!50770 t!46241))

(declare-fun b_and!57709 () Bool)

(assert (= b_and!57693 (and (=> t!46241 result!45695) b_and!57709)))

(declare-fun tb!45421 () Bool)

(declare-fun t!46243 () Bool)

(assert (=> (and b!50776 (= (y!1574 prev!556) (x!19690 thiss!5602)) t!46243) tb!45421))

(declare-fun result!45697 () Bool)

(assert (=> tb!45421 (= result!45697 true)))

(assert (=> b!50770 t!46243))

(declare-fun b_and!57711 () Bool)

(assert (= b_and!57697 (and (=> t!46243 result!45697) b_and!57711)))

(declare-fun t!46245 () Bool)

(declare-fun tb!45423 () Bool)

(assert (=> (and b!50778 (= (x!19690 thiss!5602) (x!19690 thiss!5602)) t!46245) tb!45423))

(declare-fun result!45699 () Bool)

(assert (=> tb!45423 (= result!45699 true)))

(assert (=> b!50770 t!46245))

(declare-fun b_and!57713 () Bool)

(assert (= b_and!57703 (and (=> t!46245 result!45699) b_and!57713)))

(declare-fun tb!45425 () Bool)

(declare-fun t!46247 () Bool)

(assert (=> (and b!50771 (= (x!19689 x$11!41) (x!19690 thiss!5602)) t!46247) tb!45425))

(declare-fun result!45701 () Bool)

(assert (=> tb!45425 (= result!45701 true)))

(assert (=> b!50770 t!46247))

(declare-fun b_and!57715 () Bool)

(assert (= b_and!57699 (and (=> t!46247 result!45701) b_and!57715)))

(declare-fun t!46249 () Bool)

(declare-fun tb!45427 () Bool)

(assert (=> (and b!50773 (= (y!1574 x$10!19) (x!19690 thiss!5602)) t!46249) tb!45427))

(declare-fun result!45703 () Bool)

(assert (=> tb!45427 (= result!45703 true)))

(assert (=> b!50770 t!46249))

(declare-fun b_and!57717 () Bool)

(assert (= b_and!57695 (and (=> t!46249 result!45703) b_and!57717)))

(declare-fun t!46251 () Bool)

(declare-fun tb!45429 () Bool)

(assert (=> (and b!50778 (= (y!1574 thiss!5602) (x!19690 thiss!5602)) t!46251) tb!45429))

(declare-fun result!45705 () Bool)

(assert (=> tb!45429 (= result!45705 true)))

(assert (=> b!50770 t!46251))

(declare-fun b_and!57719 () Bool)

(assert (= b_and!57687 (and (=> t!46251 result!45705) b_and!57719)))

(declare-fun t!46253 () Bool)

(declare-fun tb!45431 () Bool)

(assert (=> (and b!50775 (= (y!1573 x$12!40) (x!19690 thiss!5602)) t!46253) tb!45431))

(declare-fun result!45707 () Bool)

(assert (=> tb!45431 (= result!45707 true)))

(assert (=> b!50770 t!46253))

(declare-fun b_and!57721 () Bool)

(assert (= b_and!57685 (and (=> t!46253 result!45707) b_and!57721)))

(declare-fun t!46255 () Bool)

(declare-fun tb!45433 () Bool)

(assert (=> (and b!50775 (= (x!19689 x$12!40) (x!19690 thiss!5602)) t!46255) tb!45433))

(declare-fun result!45709 () Bool)

(assert (=> tb!45433 (= result!45709 true)))

(assert (=> b!50770 t!46255))

(declare-fun b_and!57723 () Bool)

(assert (= b_and!57701 (and (=> t!46255 result!45709) b_and!57723)))

(declare-fun m!54345 () Bool)

(assert (=> b!50768 m!54345))

(assert (=> b!50768 m!54345))

(declare-fun m!54347 () Bool)

(assert (=> b!50768 m!54347))

(declare-fun m!54349 () Bool)

(assert (=> b!50770 m!54349))

(declare-fun m!54351 () Bool)

(assert (=> b!50770 m!54351))

(declare-fun m!54353 () Bool)

(assert (=> start!6842 m!54353))

(declare-fun m!54355 () Bool)

(assert (=> start!6842 m!54355))

(declare-fun m!54357 () Bool)

(assert (=> start!6842 m!54357))

(declare-fun m!54359 () Bool)

(assert (=> start!6842 m!54359))

(declare-fun m!54361 () Bool)

(assert (=> start!6842 m!54361))

(push 1)

(assert b_and!57665)

(assert b_and!57677)

(assert b_and!57713)

(assert (not b_next!38379))

(assert (not b_next!38383))

(assert (not b_lambda!14423))

(assert b_and!57717)

(assert b_and!57715)

(assert (not b!50768))

(assert (not b_next!38359))

(assert (not b_next!38371))

(assert (not b_next!38311))

(assert (not b_next!38381))

(assert (not b_next!38369))

(assert (not b_next!38361))

(assert (not start!6842))

(assert b_and!57705)

(assert (not b_next!38377))

(assert (not b_next!38367))

(assert b_and!57711)

(assert (not b_next!38363))

(assert (not b_next!38373))

(assert (not b!50772))

(assert b_and!57709)

(assert (not b!50774))

(assert b_and!57723)

(assert (not b_lambda!14427))

(assert b_and!57707)

(assert (not b_next!38365))

(assert b_and!57683)

(assert (not b_lambda!14425))

(assert (not b_next!38309))

(assert b_and!57679)

(assert b_and!57721)

(assert b_and!57681)

(assert b_and!57719)

(assert (not b_next!38375))

(check-sat)

(pop 1)

(push 1)

(assert b_and!57665)

(assert b_and!57677)

(assert b_and!57713)

(assert (not b_next!38379))

(assert (not b_next!38383))

(assert b_and!57717)

(assert b_and!57715)

(assert (not b_next!38359))

(assert (not b_next!38371))

(assert (not b_next!38311))

(assert (not b_next!38381))

(assert (not b_next!38369))

(assert (not b_next!38361))

(assert b_and!57705)

(assert (not b_next!38377))

(assert (not b_next!38367))

(assert b_and!57711)

(assert (not b_next!38363))

(assert (not b_next!38373))

(assert b_and!57709)

(assert b_and!57723)

(assert b_and!57707)

(assert (not b_next!38365))

(assert b_and!57683)

(assert (not b_next!38309))

(assert b_and!57679)

(assert b_and!57721)

(assert b_and!57681)

(assert b_and!57719)

(assert (not b_next!38375))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!14429 () Bool)

(assert (= b_lambda!14423 (or (and b!50773 b_free!7165 (= (evidence!687 x$10!19) (evidence!687 prev!556))) (and b!50777 (= lambda!8507 (evidence!687 prev!556))) (and b!50776 b_free!7153) (and b!50779 (= lambda!8504 (evidence!687 prev!556))) (and b!50778 b_free!7147 (= (evidence!687 thiss!5602) (evidence!687 prev!556))) b_lambda!14429)))

(declare-fun bs!23618 () Bool)

(declare-fun d!43272 () Bool)

(assert (= bs!23618 (and d!43272 b!50779)))

(declare-fun commutative_plus!0 (Nat!257 Nat!257) Unit!816)

(assert (=> bs!23618 (= (dynLambda!879 lambda!8504) (commutative_plus!0 (n!1395 n1!178) n2!189))))

(declare-fun m!54363 () Bool)

(assert (=> bs!23618 m!54363))

(assert (=> (and b!50779 (= lambda!8504 (evidence!687 prev!556)) b!50768) d!43272))

(declare-fun bs!23619 () Bool)

(declare-fun d!43274 () Bool)

(assert (= bs!23619 (and d!43274 b!50777)))

(declare-fun plus_succ!0 (Nat!257 Nat!257) Unit!816)

(assert (=> bs!23619 (= (dynLambda!879 lambda!8507) (plus_succ!0 n2!189 (n!1395 n1!178)))))

(declare-fun m!54365 () Bool)

(assert (=> bs!23619 m!54365))

(assert (=> (and b!50777 (= lambda!8507 (evidence!687 prev!556)) b!50768) d!43274))

(declare-fun b_lambda!14431 () Bool)

(assert (= b_lambda!14427 (or (and b!50777 (= lambda!8506 (x!19690 thiss!5602))) (and b!50773 b_free!7163 (= (y!1574 x$10!19) (x!19690 thiss!5602))) (and b!50773 b_free!7161 (= (x!19690 x$10!19) (x!19690 thiss!5602))) (and b!50776 b_free!7151 (= (y!1574 prev!556) (x!19690 thiss!5602))) (and b!50778 b_free!7143) (and b!50771 b_free!7157 (= (y!1573 x$11!41) (x!19690 thiss!5602))) (and b!50775 b_free!7169 (= (y!1573 x$12!40) (x!19690 thiss!5602))) (and b!50771 b_free!7155 (= (x!19689 x$11!41) (x!19690 thiss!5602))) (and b!50777 (= lambda!8505 (x!19690 thiss!5602))) (and b!50779 (= lambda!8503 (x!19690 thiss!5602))) (and b!50774 (= lambda!8501 (x!19690 thiss!5602))) (and b!50778 b_free!7145 (= (y!1574 thiss!5602) (x!19690 thiss!5602))) (and b!50776 b_free!7149 (= (x!19690 prev!556) (x!19690 thiss!5602))) (and b!50775 b_free!7167 (= (x!19689 x$12!40) (x!19690 thiss!5602))) b_lambda!14431)))

(declare-fun bs!23620 () Bool)

(declare-fun d!43276 () Bool)

(assert (= bs!23620 (and d!43276 b!50774)))

(declare-fun +!5 (Nat!257 Nat!257) Nat!257)

(assert (=> bs!23620 (= (dynLambda!880 lambda!8501) (+!5 n1!178 n2!189))))

(declare-fun m!54367 () Bool)

(assert (=> bs!23620 m!54367))

(assert (=> (and b!50774 (= lambda!8501 (x!19690 thiss!5602)) b!50770) d!43276))

(declare-fun bs!23621 () Bool)

(declare-fun d!43278 () Bool)

(assert (= bs!23621 (and d!43278 b!50777)))

(assert (=> bs!23621 (= (dynLambda!880 lambda!8505) (Succ!238 (+!5 n2!189 (n!1395 n1!178))))))

(declare-fun m!54369 () Bool)

(assert (=> bs!23621 m!54369))

(assert (=> (and b!50777 (= lambda!8505 (x!19690 thiss!5602)) b!50770) d!43278))

(declare-fun bs!23622 () Bool)

(declare-fun d!43280 () Bool)

(assert (= bs!23622 (and d!43280 b!50777)))

(assert (=> bs!23622 (= (dynLambda!880 lambda!8506) (+!5 n2!189 n1!178))))

(declare-fun m!54371 () Bool)

(assert (=> bs!23622 m!54371))

(assert (=> (and b!50777 (= lambda!8506 (x!19690 thiss!5602)) b!50770) d!43280))

(declare-fun bs!23623 () Bool)

(declare-fun d!43282 () Bool)

(assert (= bs!23623 (and d!43282 b!50779)))

(assert (=> bs!23623 (= (dynLambda!880 lambda!8503) (Succ!238 (+!5 (n!1395 n1!178) n2!189)))))

(declare-fun m!54373 () Bool)

(assert (=> bs!23623 m!54373))

(assert (=> (and b!50779 (= lambda!8503 (x!19690 thiss!5602)) b!50770) d!43282))

(declare-fun b_lambda!14433 () Bool)

(assert (= b_lambda!14425 (or (and b!50775 b_free!7167 (= (x!19689 x$12!40) (y!1574 prev!556))) (and b!50776 b_free!7151) (and b!50777 (= lambda!8506 (y!1574 prev!556))) (and b!50778 b_free!7143 (= (x!19690 thiss!5602) (y!1574 prev!556))) (and b!50771 b_free!7155 (= (x!19689 x$11!41) (y!1574 prev!556))) (and b!50771 b_free!7157 (= (y!1573 x$11!41) (y!1574 prev!556))) (and b!50776 b_free!7149 (= (x!19690 prev!556) (y!1574 prev!556))) (and b!50779 (= lambda!8503 (y!1574 prev!556))) (and b!50777 (= lambda!8505 (y!1574 prev!556))) (and b!50773 b_free!7163 (= (y!1574 x$10!19) (y!1574 prev!556))) (and b!50774 (= lambda!8501 (y!1574 prev!556))) (and b!50778 b_free!7145 (= (y!1574 thiss!5602) (y!1574 prev!556))) (and b!50773 b_free!7161 (= (x!19690 x$10!19) (y!1574 prev!556))) (and b!50775 b_free!7169 (= (y!1573 x$12!40) (y!1574 prev!556))) b_lambda!14433)))

(declare-fun bs!23624 () Bool)

(declare-fun d!43284 () Bool)

(assert (= bs!23624 (and d!43284 b!50777)))

(assert (=> bs!23624 (= (dynLambda!880 lambda!8505) (Succ!238 (+!5 n2!189 (n!1395 n1!178))))))

(assert (=> bs!23624 m!54369))

(assert (=> (and b!50777 (= lambda!8505 (y!1574 prev!556)) b!50770) d!43284))

(declare-fun bs!23625 () Bool)

(declare-fun d!43286 () Bool)

(assert (= bs!23625 (and d!43286 b!50777)))

(assert (=> bs!23625 (= (dynLambda!880 lambda!8506) (+!5 n2!189 n1!178))))

(assert (=> bs!23625 m!54371))

(assert (=> (and b!50777 (= lambda!8506 (y!1574 prev!556)) b!50770) d!43286))

(declare-fun bs!23626 () Bool)

(declare-fun d!43288 () Bool)

(assert (= bs!23626 (and d!43288 b!50779)))

(assert (=> bs!23626 (= (dynLambda!880 lambda!8503) (Succ!238 (+!5 (n!1395 n1!178) n2!189)))))

(assert (=> bs!23626 m!54373))

(assert (=> (and b!50779 (= lambda!8503 (y!1574 prev!556)) b!50770) d!43288))

(declare-fun bs!23627 () Bool)

(declare-fun d!43290 () Bool)

(assert (= bs!23627 (and d!43290 b!50774)))

(assert (=> bs!23627 (= (dynLambda!880 lambda!8501) (+!5 n1!178 n2!189))))

(assert (=> bs!23627 m!54367))

(assert (=> (and b!50774 (= lambda!8501 (y!1574 prev!556)) b!50770) d!43290))

(push 1)

(assert b_and!57665)

(assert b_and!57677)

(assert b_and!57713)

(assert (not b_next!38379))

(assert (not b_next!38383))

(assert b_and!57717)

(assert b_and!57715)

(assert (not bs!23626))

(assert (not b!50768))

(assert (not b_next!38359))

(assert (not b_next!38371))

(assert (not b_next!38311))

(assert (not b_next!38381))

(assert (not bs!23627))

(assert (not bs!23623))

(assert (not bs!23622))

(assert (not b_lambda!14431))

(assert (not b_next!38369))

(assert (not b_next!38361))

(assert (not start!6842))

(assert b_and!57705)

(assert (not b_next!38377))

(assert (not bs!23621))

(assert (not b_next!38367))

(assert b_and!57711)

(assert (not b_next!38363))

(assert (not b_next!38373))

(assert (not b!50772))

(assert b_and!57709)

(assert (not b!50774))

(assert b_and!57723)

(assert (not bs!23625))

(assert (not bs!23619))

(assert b_and!57707)

(assert (not b_lambda!14433))

(assert (not b_next!38365))

(assert (not bs!23624))

(assert b_and!57683)

(assert (not bs!23620))

(assert (not b_next!38309))

(assert b_and!57679)

(assert b_and!57721)

(assert b_and!57681)

(assert (not bs!23618))

(assert b_and!57719)

(assert (not b_next!38375))

(assert (not b_lambda!14429))

(check-sat)

(pop 1)

(push 1)

(assert b_and!57665)

(assert b_and!57677)

(assert b_and!57713)

(assert (not b_next!38379))

(assert (not b_next!38383))

(assert b_and!57717)

(assert b_and!57715)

(assert (not b_next!38359))

(assert (not b_next!38371))

(assert (not b_next!38311))

(assert (not b_next!38381))

(assert (not b_next!38369))

(assert (not b_next!38361))

(assert b_and!57705)

(assert (not b_next!38377))

(assert (not b_next!38367))

(assert b_and!57711)

(assert (not b_next!38363))

(assert (not b_next!38373))

(assert b_and!57709)

(assert b_and!57723)

(assert b_and!57707)

(assert (not b_next!38365))

(assert b_and!57683)

(assert (not b_next!38309))

(assert b_and!57679)

(assert b_and!57721)

(assert b_and!57681)

(assert b_and!57719)

(assert (not b_next!38375))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43292 () Bool)

(declare-fun c!10740 () Bool)

(assert (=> d!43292 (= c!10740 (is-Zero!241 n2!189))))

(declare-fun e!26355 () Nat!257)

(assert (=> d!43292 (= (+!5 n2!189 (n!1395 n1!178)) e!26355)))

(declare-fun b!50788 () Bool)

(assert (=> b!50788 (= e!26355 (n!1395 n1!178))))

(declare-fun b!50789 () Bool)

(assert (=> b!50789 (= e!26355 (Succ!238 (+!5 (n!1395 n2!189) (n!1395 n1!178))))))

(assert (= (and d!43292 c!10740) b!50788))

(assert (= (and d!43292 (not c!10740)) b!50789))

(declare-fun m!54375 () Bool)

(assert (=> b!50789 m!54375))

(assert (=> bs!23621 d!43292))

(declare-fun d!43294 () Bool)

(declare-fun c!10741 () Bool)

(assert (=> d!43294 (= c!10741 (is-Zero!241 (n!1395 n1!178)))))

(declare-fun e!26356 () Nat!257)

(assert (=> d!43294 (= (+!5 (n!1395 n1!178) n2!189) e!26356)))

(declare-fun b!50790 () Bool)

(assert (=> b!50790 (= e!26356 n2!189)))

(declare-fun b!50791 () Bool)

(assert (=> b!50791 (= e!26356 (Succ!238 (+!5 (n!1395 (n!1395 n1!178)) n2!189)))))

(assert (= (and d!43294 c!10741) b!50790))

(assert (= (and d!43294 (not c!10741)) b!50791))

(declare-fun m!54377 () Bool)

(assert (=> b!50791 m!54377))

(assert (=> bs!23626 d!43294))

(declare-fun d!43296 () Bool)

(assert (=> d!43296 (= (keepEvidence!72 (dynLambda!879 (evidence!687 prev!556))) true)))

(assert (=> b!50768 d!43296))

(declare-fun d!43298 () Bool)

(declare-fun c!10742 () Bool)

(assert (=> d!43298 (= c!10742 (is-Zero!241 n1!178))))

(declare-fun e!26357 () Nat!257)

(assert (=> d!43298 (= (+!5 n1!178 n2!189) e!26357)))

(declare-fun b!50792 () Bool)

(assert (=> b!50792 (= e!26357 n2!189)))

(declare-fun b!50793 () Bool)

(assert (=> b!50793 (= e!26357 (Succ!238 (+!5 (n!1395 n1!178) n2!189)))))

(assert (= (and d!43298 c!10742) b!50792))

(assert (= (and d!43298 (not c!10742)) b!50793))

(assert (=> b!50793 m!54373))

(assert (=> bs!23620 d!43298))

(declare-fun d!43300 () Bool)

(declare-fun c!10743 () Bool)

(assert (=> d!43300 (= c!10743 (is-Zero!241 n2!189))))

(declare-fun e!26358 () Nat!257)

(assert (=> d!43300 (= (+!5 n2!189 n1!178) e!26358)))

(declare-fun b!50794 () Bool)

(assert (=> b!50794 (= e!26358 n1!178)))

(declare-fun b!50795 () Bool)

(assert (=> b!50795 (= e!26358 (Succ!238 (+!5 (n!1395 n2!189) n1!178)))))

(assert (= (and d!43300 c!10743) b!50794))

(assert (= (and d!43300 (not c!10743)) b!50795))

(declare-fun m!54379 () Bool)

(assert (=> b!50795 m!54379))

(assert (=> bs!23622 d!43300))

(declare-fun d!43302 () Bool)

(assert (=> d!43302 (= (+!5 (n!1395 n1!178) n2!189) (+!5 n2!189 (n!1395 n1!178)))))

(assert (=> d!43302 true))

(declare-fun x$13!181 () Unit!816)

(assert (=> d!43302 (= (commutative_plus!0 (n!1395 n1!178) n2!189) x$13!181)))

(declare-fun bs!23628 () Bool)

(assert (= bs!23628 d!43302))

(assert (=> bs!23628 m!54373))

(assert (=> bs!23628 m!54369))

(assert (=> bs!23618 d!43302))

(declare-fun d!43304 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!43304 (= trivial!1 true)))

(assert (=> b!50772 d!43304))

(assert (=> bs!23625 d!43300))

(assert (=> bs!23623 d!43294))

(assert (=> bs!23624 d!43292))

(declare-fun d!43306 () Bool)

(assert (=> d!43306 (= (+!5 n2!189 (Succ!238 (n!1395 n1!178))) (Succ!238 (+!5 n2!189 (n!1395 n1!178))))))

(assert (=> d!43306 true))

(declare-fun x$7!82 () Unit!816)

(assert (=> d!43306 (= (plus_succ!0 n2!189 (n!1395 n1!178)) x$7!82)))

(declare-fun bs!23629 () Bool)

(assert (= bs!23629 d!43306))

(declare-fun m!54381 () Bool)

(assert (=> bs!23629 m!54381))

(assert (=> bs!23629 m!54369))

(assert (=> bs!23619 d!43306))

(assert (=> b!50774 d!43304))

(declare-fun d!43308 () Bool)

(assert (=> d!43308 (= (inv!884 x$11!41) (= (dynLambda!880 (x!19689 x$11!41)) (dynLambda!880 (y!1573 x$11!41))))))

(declare-fun b_lambda!14435 () Bool)

(assert (=> (not b_lambda!14435) (not d!43308)))

(declare-fun t!46257 () Bool)

(declare-fun tb!45435 () Bool)

(assert (=> (and b!50775 (= (y!1573 x$12!40) (x!19689 x$11!41)) t!46257) tb!45435))

(declare-fun result!45711 () Bool)

(assert (=> tb!45435 (= result!45711 true)))

(assert (=> d!43308 t!46257))

(declare-fun b_and!57725 () Bool)

(assert (= b_and!57721 (and (=> t!46257 result!45711) b_and!57725)))

(declare-fun t!46259 () Bool)

(declare-fun tb!45437 () Bool)

(assert (=> (and b!50773 (= (y!1574 x$10!19) (x!19689 x$11!41)) t!46259) tb!45437))

(declare-fun result!45713 () Bool)

(assert (=> tb!45437 (= result!45713 true)))

(assert (=> d!43308 t!46259))

(declare-fun b_and!57727 () Bool)

(assert (= b_and!57717 (and (=> t!46259 result!45713) b_and!57727)))

(declare-fun t!46261 () Bool)

(declare-fun tb!45439 () Bool)

(assert (=> (and b!50776 (= (x!19690 prev!556) (x!19689 x$11!41)) t!46261) tb!45439))

(declare-fun result!45715 () Bool)

(assert (=> tb!45439 (= result!45715 true)))

(assert (=> d!43308 t!46261))

(declare-fun b_and!57729 () Bool)

(assert (= b_and!57705 (and (=> t!46261 result!45715) b_and!57729)))

(declare-fun t!46263 () Bool)

(declare-fun tb!45441 () Bool)

(assert (=> (and b!50775 (= (x!19689 x$12!40) (x!19689 x$11!41)) t!46263) tb!45441))

(declare-fun result!45717 () Bool)

(assert (=> tb!45441 (= result!45717 true)))

(assert (=> d!43308 t!46263))

(declare-fun b_and!57731 () Bool)

(assert (= b_and!57723 (and (=> t!46263 result!45717) b_and!57731)))

(declare-fun t!46265 () Bool)

(declare-fun tb!45443 () Bool)

(assert (=> (and b!50773 (= (x!19690 x$10!19) (x!19689 x$11!41)) t!46265) tb!45443))

(declare-fun result!45719 () Bool)

(assert (=> tb!45443 (= result!45719 true)))

(assert (=> d!43308 t!46265))

(declare-fun b_and!57733 () Bool)

(assert (= b_and!57709 (and (=> t!46265 result!45719) b_and!57733)))

(declare-fun t!46267 () Bool)

(declare-fun tb!45445 () Bool)

(assert (=> (and b!50778 (= (y!1574 thiss!5602) (x!19689 x$11!41)) t!46267) tb!45445))

(declare-fun result!45721 () Bool)

(assert (=> tb!45445 (= result!45721 true)))

(assert (=> d!43308 t!46267))

(declare-fun b_and!57735 () Bool)

(assert (= b_and!57719 (and (=> t!46267 result!45721) b_and!57735)))

(declare-fun t!46269 () Bool)

(declare-fun tb!45447 () Bool)

(assert (=> (and b!50771 (= (y!1573 x$11!41) (x!19689 x$11!41)) t!46269) tb!45447))

(declare-fun result!45723 () Bool)

(assert (=> tb!45447 (= result!45723 true)))

(assert (=> d!43308 t!46269))

(declare-fun b_and!57737 () Bool)

(assert (= b_and!57707 (and (=> t!46269 result!45723) b_and!57737)))

(declare-fun tb!45449 () Bool)

(declare-fun t!46271 () Bool)

(assert (=> (and b!50776 (= (y!1574 prev!556) (x!19689 x$11!41)) t!46271) tb!45449))

(declare-fun result!45725 () Bool)

(assert (=> tb!45449 (= result!45725 true)))

(assert (=> d!43308 t!46271))

(declare-fun b_and!57739 () Bool)

(assert (= b_and!57711 (and (=> t!46271 result!45725) b_and!57739)))

(declare-fun t!46273 () Bool)

(declare-fun tb!45451 () Bool)

(assert (=> (and b!50771 (= (x!19689 x$11!41) (x!19689 x$11!41)) t!46273) tb!45451))

(declare-fun result!45727 () Bool)

(assert (=> tb!45451 (= result!45727 true)))

(assert (=> d!43308 t!46273))

(declare-fun b_and!57741 () Bool)

(assert (= b_and!57715 (and (=> t!46273 result!45727) b_and!57741)))

(declare-fun tb!45453 () Bool)

(declare-fun t!46275 () Bool)

(assert (=> (and b!50778 (= (x!19690 thiss!5602) (x!19689 x$11!41)) t!46275) tb!45453))

(declare-fun result!45729 () Bool)

(assert (=> tb!45453 (= result!45729 true)))

(assert (=> d!43308 t!46275))

(declare-fun b_and!57743 () Bool)

(assert (= b_and!57713 (and (=> t!46275 result!45729) b_and!57743)))

(declare-fun b_lambda!14437 () Bool)

(assert (=> (not b_lambda!14437) (not d!43308)))

(declare-fun tb!45455 () Bool)

(declare-fun t!46277 () Bool)

(assert (=> (and b!50773 (= (y!1574 x$10!19) (y!1573 x$11!41)) t!46277) tb!45455))

(declare-fun result!45731 () Bool)

(assert (=> tb!45455 (= result!45731 true)))

(assert (=> d!43308 t!46277))

(declare-fun b_and!57745 () Bool)

(assert (= b_and!57727 (and (=> t!46277 result!45731) b_and!57745)))

(declare-fun t!46279 () Bool)

(declare-fun tb!45457 () Bool)

(assert (=> (and b!50771 (= (x!19689 x$11!41) (y!1573 x$11!41)) t!46279) tb!45457))

(declare-fun result!45733 () Bool)

(assert (=> tb!45457 (= result!45733 true)))

(assert (=> d!43308 t!46279))

(declare-fun b_and!57747 () Bool)

(assert (= b_and!57741 (and (=> t!46279 result!45733) b_and!57747)))

(declare-fun t!46281 () Bool)

(declare-fun tb!45459 () Bool)

(assert (=> (and b!50778 (= (x!19690 thiss!5602) (y!1573 x$11!41)) t!46281) tb!45459))

(declare-fun result!45735 () Bool)

(assert (=> tb!45459 (= result!45735 true)))

(assert (=> d!43308 t!46281))

(declare-fun b_and!57749 () Bool)

(assert (= b_and!57743 (and (=> t!46281 result!45735) b_and!57749)))

(declare-fun t!46283 () Bool)

(declare-fun tb!45461 () Bool)

(assert (=> (and b!50771 (= (y!1573 x$11!41) (y!1573 x$11!41)) t!46283) tb!45461))

(declare-fun result!45737 () Bool)

(assert (=> tb!45461 (= result!45737 true)))

(assert (=> d!43308 t!46283))

(declare-fun b_and!57751 () Bool)

(assert (= b_and!57737 (and (=> t!46283 result!45737) b_and!57751)))

(declare-fun tb!45463 () Bool)

(declare-fun t!46285 () Bool)

(assert (=> (and b!50775 (= (y!1573 x$12!40) (y!1573 x$11!41)) t!46285) tb!45463))

(declare-fun result!45739 () Bool)

(assert (=> tb!45463 (= result!45739 true)))

(assert (=> d!43308 t!46285))

(declare-fun b_and!57753 () Bool)

(assert (= b_and!57725 (and (=> t!46285 result!45739) b_and!57753)))

(declare-fun tb!45465 () Bool)

(declare-fun t!46287 () Bool)

(assert (=> (and b!50778 (= (y!1574 thiss!5602) (y!1573 x$11!41)) t!46287) tb!45465))

(declare-fun result!45741 () Bool)

(assert (=> tb!45465 (= result!45741 true)))

(assert (=> d!43308 t!46287))

(declare-fun b_and!57755 () Bool)

(assert (= b_and!57735 (and (=> t!46287 result!45741) b_and!57755)))

(declare-fun tb!45467 () Bool)

(declare-fun t!46289 () Bool)

(assert (=> (and b!50776 (= (x!19690 prev!556) (y!1573 x$11!41)) t!46289) tb!45467))

(declare-fun result!45743 () Bool)

(assert (=> tb!45467 (= result!45743 true)))

(assert (=> d!43308 t!46289))

(declare-fun b_and!57757 () Bool)

(assert (= b_and!57729 (and (=> t!46289 result!45743) b_and!57757)))

(declare-fun tb!45469 () Bool)

(declare-fun t!46291 () Bool)

(assert (=> (and b!50776 (= (y!1574 prev!556) (y!1573 x$11!41)) t!46291) tb!45469))

(declare-fun result!45745 () Bool)

(assert (=> tb!45469 (= result!45745 true)))

(assert (=> d!43308 t!46291))

(declare-fun b_and!57759 () Bool)

(assert (= b_and!57739 (and (=> t!46291 result!45745) b_and!57759)))

(declare-fun tb!45471 () Bool)

(declare-fun t!46293 () Bool)

(assert (=> (and b!50775 (= (x!19689 x$12!40) (y!1573 x$11!41)) t!46293) tb!45471))

(declare-fun result!45747 () Bool)

(assert (=> tb!45471 (= result!45747 true)))

(assert (=> d!43308 t!46293))

(declare-fun b_and!57761 () Bool)

(assert (= b_and!57731 (and (=> t!46293 result!45747) b_and!57761)))

(declare-fun t!46295 () Bool)

(declare-fun tb!45473 () Bool)

(assert (=> (and b!50773 (= (x!19690 x$10!19) (y!1573 x$11!41)) t!46295) tb!45473))

(declare-fun result!45749 () Bool)

(assert (=> tb!45473 (= result!45749 true)))

(assert (=> d!43308 t!46295))

(declare-fun b_and!57763 () Bool)

(assert (= b_and!57733 (and (=> t!46295 result!45749) b_and!57763)))

(declare-fun m!54383 () Bool)

(assert (=> d!43308 m!54383))

(declare-fun m!54385 () Bool)

(assert (=> d!43308 m!54385))

(assert (=> start!6842 d!43308))

(declare-fun d!43310 () Bool)

(assert (=> d!43310 (= (inv!883 x$10!19) (= (dynLambda!880 (x!19690 x$10!19)) (dynLambda!880 (y!1574 x$10!19))))))

(declare-fun b_lambda!14439 () Bool)

(assert (=> (not b_lambda!14439) (not d!43310)))

(declare-fun t!46297 () Bool)

(declare-fun tb!45475 () Bool)

(assert (=> (and b!50778 (= (y!1574 thiss!5602) (x!19690 x$10!19)) t!46297) tb!45475))

(declare-fun result!45751 () Bool)

(assert (=> tb!45475 (= result!45751 true)))

(assert (=> d!43310 t!46297))

(declare-fun b_and!57765 () Bool)

(assert (= b_and!57755 (and (=> t!46297 result!45751) b_and!57765)))

(declare-fun t!46299 () Bool)

(declare-fun tb!45477 () Bool)

(assert (=> (and b!50776 (= (y!1574 prev!556) (x!19690 x$10!19)) t!46299) tb!45477))

(declare-fun result!45753 () Bool)

(assert (=> tb!45477 (= result!45753 true)))

(assert (=> d!43310 t!46299))

(declare-fun b_and!57767 () Bool)

(assert (= b_and!57759 (and (=> t!46299 result!45753) b_and!57767)))

(declare-fun t!46301 () Bool)

(declare-fun tb!45479 () Bool)

(assert (=> (and b!50775 (= (y!1573 x$12!40) (x!19690 x$10!19)) t!46301) tb!45479))

(declare-fun result!45755 () Bool)

(assert (=> tb!45479 (= result!45755 true)))

(assert (=> d!43310 t!46301))

(declare-fun b_and!57769 () Bool)

(assert (= b_and!57753 (and (=> t!46301 result!45755) b_and!57769)))

(declare-fun t!46303 () Bool)

(declare-fun tb!45481 () Bool)

(assert (=> (and b!50773 (= (y!1574 x$10!19) (x!19690 x$10!19)) t!46303) tb!45481))

(declare-fun result!45757 () Bool)

(assert (=> tb!45481 (= result!45757 true)))

(assert (=> d!43310 t!46303))

(declare-fun b_and!57771 () Bool)

(assert (= b_and!57745 (and (=> t!46303 result!45757) b_and!57771)))

(declare-fun t!46305 () Bool)

(declare-fun tb!45483 () Bool)

(assert (=> (and b!50773 (= (x!19690 x$10!19) (x!19690 x$10!19)) t!46305) tb!45483))

(declare-fun result!45759 () Bool)

(assert (=> tb!45483 (= result!45759 true)))

(assert (=> d!43310 t!46305))

(declare-fun b_and!57773 () Bool)

(assert (= b_and!57763 (and (=> t!46305 result!45759) b_and!57773)))

(declare-fun t!46307 () Bool)

(declare-fun tb!45485 () Bool)

(assert (=> (and b!50775 (= (x!19689 x$12!40) (x!19690 x$10!19)) t!46307) tb!45485))

(declare-fun result!45761 () Bool)

(assert (=> tb!45485 (= result!45761 true)))

(assert (=> d!43310 t!46307))

(declare-fun b_and!57775 () Bool)

(assert (= b_and!57761 (and (=> t!46307 result!45761) b_and!57775)))

(declare-fun tb!45487 () Bool)

(declare-fun t!46309 () Bool)

(assert (=> (and b!50771 (= (x!19689 x$11!41) (x!19690 x$10!19)) t!46309) tb!45487))

(declare-fun result!45763 () Bool)

(assert (=> tb!45487 (= result!45763 true)))

(assert (=> d!43310 t!46309))

(declare-fun b_and!57777 () Bool)

(assert (= b_and!57747 (and (=> t!46309 result!45763) b_and!57777)))

(declare-fun t!46311 () Bool)

(declare-fun tb!45489 () Bool)

(assert (=> (and b!50776 (= (x!19690 prev!556) (x!19690 x$10!19)) t!46311) tb!45489))

(declare-fun result!45765 () Bool)

(assert (=> tb!45489 (= result!45765 true)))

(assert (=> d!43310 t!46311))

(declare-fun b_and!57779 () Bool)

(assert (= b_and!57757 (and (=> t!46311 result!45765) b_and!57779)))

(declare-fun t!46313 () Bool)

(declare-fun tb!45491 () Bool)

(assert (=> (and b!50771 (= (y!1573 x$11!41) (x!19690 x$10!19)) t!46313) tb!45491))

(declare-fun result!45767 () Bool)

(assert (=> tb!45491 (= result!45767 true)))

(assert (=> d!43310 t!46313))

(declare-fun b_and!57781 () Bool)

(assert (= b_and!57751 (and (=> t!46313 result!45767) b_and!57781)))

(declare-fun t!46315 () Bool)

(declare-fun tb!45493 () Bool)

(assert (=> (and b!50778 (= (x!19690 thiss!5602) (x!19690 x$10!19)) t!46315) tb!45493))

(declare-fun result!45769 () Bool)

(assert (=> tb!45493 (= result!45769 true)))

(assert (=> d!43310 t!46315))

(declare-fun b_and!57783 () Bool)

(assert (= b_and!57749 (and (=> t!46315 result!45769) b_and!57783)))

(declare-fun b_lambda!14441 () Bool)

(assert (=> (not b_lambda!14441) (not d!43310)))

(declare-fun t!46317 () Bool)

(declare-fun tb!45495 () Bool)

(assert (=> (and b!50776 (= (x!19690 prev!556) (y!1574 x$10!19)) t!46317) tb!45495))

(declare-fun result!45771 () Bool)

(assert (=> tb!45495 (= result!45771 true)))

(assert (=> d!43310 t!46317))

(declare-fun b_and!57785 () Bool)

(assert (= b_and!57779 (and (=> t!46317 result!45771) b_and!57785)))

(declare-fun tb!45497 () Bool)

(declare-fun t!46319 () Bool)

(assert (=> (and b!50771 (= (y!1573 x$11!41) (y!1574 x$10!19)) t!46319) tb!45497))

(declare-fun result!45773 () Bool)

(assert (=> tb!45497 (= result!45773 true)))

(assert (=> d!43310 t!46319))

(declare-fun b_and!57787 () Bool)

(assert (= b_and!57781 (and (=> t!46319 result!45773) b_and!57787)))

(declare-fun t!46321 () Bool)

(declare-fun tb!45499 () Bool)

(assert (=> (and b!50773 (= (y!1574 x$10!19) (y!1574 x$10!19)) t!46321) tb!45499))

(declare-fun result!45775 () Bool)

(assert (=> tb!45499 (= result!45775 true)))

(assert (=> d!43310 t!46321))

(declare-fun b_and!57789 () Bool)

(assert (= b_and!57771 (and (=> t!46321 result!45775) b_and!57789)))

(declare-fun tb!45501 () Bool)

(declare-fun t!46323 () Bool)

(assert (=> (and b!50775 (= (x!19689 x$12!40) (y!1574 x$10!19)) t!46323) tb!45501))

(declare-fun result!45777 () Bool)

(assert (=> tb!45501 (= result!45777 true)))

(assert (=> d!43310 t!46323))

(declare-fun b_and!57791 () Bool)

(assert (= b_and!57775 (and (=> t!46323 result!45777) b_and!57791)))

(declare-fun t!46325 () Bool)

(declare-fun tb!45503 () Bool)

(assert (=> (and b!50775 (= (y!1573 x$12!40) (y!1574 x$10!19)) t!46325) tb!45503))

(declare-fun result!45779 () Bool)

(assert (=> tb!45503 (= result!45779 true)))

(assert (=> d!43310 t!46325))

(declare-fun b_and!57793 () Bool)

(assert (= b_and!57769 (and (=> t!46325 result!45779) b_and!57793)))

(declare-fun tb!45505 () Bool)

(declare-fun t!46327 () Bool)

(assert (=> (and b!50778 (= (y!1574 thiss!5602) (y!1574 x$10!19)) t!46327) tb!45505))

(declare-fun result!45781 () Bool)

(assert (=> tb!45505 (= result!45781 true)))

(assert (=> d!43310 t!46327))

(declare-fun b_and!57795 () Bool)

(assert (= b_and!57765 (and (=> t!46327 result!45781) b_and!57795)))

(declare-fun tb!45507 () Bool)

(declare-fun t!46329 () Bool)

(assert (=> (and b!50771 (= (x!19689 x$11!41) (y!1574 x$10!19)) t!46329) tb!45507))

(declare-fun result!45783 () Bool)

(assert (=> tb!45507 (= result!45783 true)))

(assert (=> d!43310 t!46329))

(declare-fun b_and!57797 () Bool)

(assert (= b_and!57777 (and (=> t!46329 result!45783) b_and!57797)))

(declare-fun t!46331 () Bool)

(declare-fun tb!45509 () Bool)

(assert (=> (and b!50778 (= (x!19690 thiss!5602) (y!1574 x$10!19)) t!46331) tb!45509))

(declare-fun result!45785 () Bool)

(assert (=> tb!45509 (= result!45785 true)))

(assert (=> d!43310 t!46331))

(declare-fun b_and!57799 () Bool)

(assert (= b_and!57783 (and (=> t!46331 result!45785) b_and!57799)))

(declare-fun t!46333 () Bool)

(declare-fun tb!45511 () Bool)

(assert (=> (and b!50773 (= (x!19690 x$10!19) (y!1574 x$10!19)) t!46333) tb!45511))

(declare-fun result!45787 () Bool)

(assert (=> tb!45511 (= result!45787 true)))

(assert (=> d!43310 t!46333))

(declare-fun b_and!57801 () Bool)

(assert (= b_and!57773 (and (=> t!46333 result!45787) b_and!57801)))

(declare-fun tb!45513 () Bool)

(declare-fun t!46335 () Bool)

(assert (=> (and b!50776 (= (y!1574 prev!556) (y!1574 x$10!19)) t!46335) tb!45513))

(declare-fun result!45789 () Bool)

(assert (=> tb!45513 (= result!45789 true)))

(assert (=> d!43310 t!46335))

(declare-fun b_and!57803 () Bool)

(assert (= b_and!57767 (and (=> t!46335 result!45789) b_and!57803)))

(declare-fun m!54387 () Bool)

(assert (=> d!43310 m!54387))

(declare-fun m!54389 () Bool)

(assert (=> d!43310 m!54389))

(assert (=> start!6842 d!43310))

(declare-fun d!43312 () Bool)

(assert (=> d!43312 (= (inv!884 x$12!40) (= (dynLambda!880 (x!19689 x$12!40)) (dynLambda!880 (y!1573 x$12!40))))))

(declare-fun b_lambda!14443 () Bool)

(assert (=> (not b_lambda!14443) (not d!43312)))

(declare-fun tb!45515 () Bool)

(declare-fun t!46337 () Bool)

(assert (=> (and b!50773 (= (x!19690 x$10!19) (x!19689 x$12!40)) t!46337) tb!45515))

(declare-fun result!45791 () Bool)

(assert (=> tb!45515 (= result!45791 true)))

(assert (=> d!43312 t!46337))

(declare-fun b_and!57805 () Bool)

(assert (= b_and!57801 (and (=> t!46337 result!45791) b_and!57805)))

(declare-fun tb!45517 () Bool)

(declare-fun t!46339 () Bool)

(assert (=> (and b!50771 (= (x!19689 x$11!41) (x!19689 x$12!40)) t!46339) tb!45517))

(declare-fun result!45793 () Bool)

(assert (=> tb!45517 (= result!45793 true)))

(assert (=> d!43312 t!46339))

(declare-fun b_and!57807 () Bool)

(assert (= b_and!57797 (and (=> t!46339 result!45793) b_and!57807)))

(declare-fun t!46341 () Bool)

(declare-fun tb!45519 () Bool)

(assert (=> (and b!50775 (= (x!19689 x$12!40) (x!19689 x$12!40)) t!46341) tb!45519))

(declare-fun result!45795 () Bool)

(assert (=> tb!45519 (= result!45795 true)))

(assert (=> d!43312 t!46341))

(declare-fun b_and!57809 () Bool)

(assert (= b_and!57791 (and (=> t!46341 result!45795) b_and!57809)))

(declare-fun tb!45521 () Bool)

(declare-fun t!46343 () Bool)

(assert (=> (and b!50773 (= (y!1574 x$10!19) (x!19689 x$12!40)) t!46343) tb!45521))

(declare-fun result!45797 () Bool)

(assert (=> tb!45521 (= result!45797 true)))

(assert (=> d!43312 t!46343))

(declare-fun b_and!57811 () Bool)

(assert (= b_and!57789 (and (=> t!46343 result!45797) b_and!57811)))

(declare-fun t!46345 () Bool)

(declare-fun tb!45523 () Bool)

(assert (=> (and b!50771 (= (y!1573 x$11!41) (x!19689 x$12!40)) t!46345) tb!45523))

(declare-fun result!45799 () Bool)

(assert (=> tb!45523 (= result!45799 true)))

(assert (=> d!43312 t!46345))

(declare-fun b_and!57813 () Bool)

(assert (= b_and!57787 (and (=> t!46345 result!45799) b_and!57813)))

(declare-fun tb!45525 () Bool)

(declare-fun t!46347 () Bool)

(assert (=> (and b!50776 (= (x!19690 prev!556) (x!19689 x$12!40)) t!46347) tb!45525))

(declare-fun result!45801 () Bool)

(assert (=> tb!45525 (= result!45801 true)))

(assert (=> d!43312 t!46347))

(declare-fun b_and!57815 () Bool)

(assert (= b_and!57785 (and (=> t!46347 result!45801) b_and!57815)))

(declare-fun t!46349 () Bool)

(declare-fun tb!45527 () Bool)

(assert (=> (and b!50775 (= (y!1573 x$12!40) (x!19689 x$12!40)) t!46349) tb!45527))

(declare-fun result!45803 () Bool)

(assert (=> tb!45527 (= result!45803 true)))

(assert (=> d!43312 t!46349))

(declare-fun b_and!57817 () Bool)

(assert (= b_and!57793 (and (=> t!46349 result!45803) b_and!57817)))

(declare-fun t!46351 () Bool)

(declare-fun tb!45529 () Bool)

(assert (=> (and b!50778 (= (x!19690 thiss!5602) (x!19689 x$12!40)) t!46351) tb!45529))

(declare-fun result!45805 () Bool)

(assert (=> tb!45529 (= result!45805 true)))

(assert (=> d!43312 t!46351))

(declare-fun b_and!57819 () Bool)

(assert (= b_and!57799 (and (=> t!46351 result!45805) b_and!57819)))

(declare-fun tb!45531 () Bool)

(declare-fun t!46353 () Bool)

(assert (=> (and b!50778 (= (y!1574 thiss!5602) (x!19689 x$12!40)) t!46353) tb!45531))

(declare-fun result!45807 () Bool)

(assert (=> tb!45531 (= result!45807 true)))

(assert (=> d!43312 t!46353))

(declare-fun b_and!57821 () Bool)

(assert (= b_and!57795 (and (=> t!46353 result!45807) b_and!57821)))

(declare-fun tb!45533 () Bool)

(declare-fun t!46355 () Bool)

(assert (=> (and b!50776 (= (y!1574 prev!556) (x!19689 x$12!40)) t!46355) tb!45533))

(declare-fun result!45809 () Bool)

(assert (=> tb!45533 (= result!45809 true)))

(assert (=> d!43312 t!46355))

(declare-fun b_and!57823 () Bool)

(assert (= b_and!57803 (and (=> t!46355 result!45809) b_and!57823)))

(declare-fun b_lambda!14445 () Bool)

(assert (=> (not b_lambda!14445) (not d!43312)))

(declare-fun t!46357 () Bool)

(declare-fun tb!45535 () Bool)

(assert (=> (and b!50778 (= (y!1574 thiss!5602) (y!1573 x$12!40)) t!46357) tb!45535))

(declare-fun result!45811 () Bool)

(assert (=> tb!45535 (= result!45811 true)))

(assert (=> d!43312 t!46357))

(declare-fun b_and!57825 () Bool)

(assert (= b_and!57821 (and (=> t!46357 result!45811) b_and!57825)))

(declare-fun tb!45537 () Bool)

(declare-fun t!46359 () Bool)

(assert (=> (and b!50776 (= (x!19690 prev!556) (y!1573 x$12!40)) t!46359) tb!45537))

(declare-fun result!45813 () Bool)

(assert (=> tb!45537 (= result!45813 true)))

(assert (=> d!43312 t!46359))

(declare-fun b_and!57827 () Bool)

(assert (= b_and!57815 (and (=> t!46359 result!45813) b_and!57827)))

(declare-fun t!46361 () Bool)

(declare-fun tb!45539 () Bool)

(assert (=> (and b!50771 (= (x!19689 x$11!41) (y!1573 x$12!40)) t!46361) tb!45539))

(declare-fun result!45815 () Bool)

(assert (=> tb!45539 (= result!45815 true)))

(assert (=> d!43312 t!46361))

(declare-fun b_and!57829 () Bool)

(assert (= b_and!57807 (and (=> t!46361 result!45815) b_and!57829)))

(declare-fun t!46363 () Bool)

(declare-fun tb!45541 () Bool)

(assert (=> (and b!50778 (= (x!19690 thiss!5602) (y!1573 x$12!40)) t!46363) tb!45541))

(declare-fun result!45817 () Bool)

(assert (=> tb!45541 (= result!45817 true)))

(assert (=> d!43312 t!46363))

(declare-fun b_and!57831 () Bool)

(assert (= b_and!57819 (and (=> t!46363 result!45817) b_and!57831)))

(declare-fun tb!45543 () Bool)

(declare-fun t!46365 () Bool)

(assert (=> (and b!50773 (= (x!19690 x$10!19) (y!1573 x$12!40)) t!46365) tb!45543))

(declare-fun result!45819 () Bool)

(assert (=> tb!45543 (= result!45819 true)))

(assert (=> d!43312 t!46365))

(declare-fun b_and!57833 () Bool)

(assert (= b_and!57805 (and (=> t!46365 result!45819) b_and!57833)))

(declare-fun t!46367 () Bool)

(declare-fun tb!45545 () Bool)

(assert (=> (and b!50773 (= (y!1574 x$10!19) (y!1573 x$12!40)) t!46367) tb!45545))

(declare-fun result!45821 () Bool)

(assert (=> tb!45545 (= result!45821 true)))

(assert (=> d!43312 t!46367))

(declare-fun b_and!57835 () Bool)

(assert (= b_and!57811 (and (=> t!46367 result!45821) b_and!57835)))

(declare-fun t!46369 () Bool)

(declare-fun tb!45547 () Bool)

(assert (=> (and b!50775 (= (y!1573 x$12!40) (y!1573 x$12!40)) t!46369) tb!45547))

(declare-fun result!45823 () Bool)

(assert (=> tb!45547 (= result!45823 true)))

(assert (=> d!43312 t!46369))

(declare-fun b_and!57837 () Bool)

(assert (= b_and!57817 (and (=> t!46369 result!45823) b_and!57837)))

(declare-fun tb!45549 () Bool)

(declare-fun t!46371 () Bool)

(assert (=> (and b!50776 (= (y!1574 prev!556) (y!1573 x$12!40)) t!46371) tb!45549))

(declare-fun result!45825 () Bool)

(assert (=> tb!45549 (= result!45825 true)))

(assert (=> d!43312 t!46371))

(declare-fun b_and!57839 () Bool)

(assert (= b_and!57823 (and (=> t!46371 result!45825) b_and!57839)))

(declare-fun t!46373 () Bool)

(declare-fun tb!45551 () Bool)

(assert (=> (and b!50775 (= (x!19689 x$12!40) (y!1573 x$12!40)) t!46373) tb!45551))

(declare-fun result!45827 () Bool)

(assert (=> tb!45551 (= result!45827 true)))

(assert (=> d!43312 t!46373))

(declare-fun b_and!57841 () Bool)

(assert (= b_and!57809 (and (=> t!46373 result!45827) b_and!57841)))

(declare-fun tb!45553 () Bool)

(declare-fun t!46375 () Bool)

(assert (=> (and b!50771 (= (y!1573 x$11!41) (y!1573 x$12!40)) t!46375) tb!45553))

(declare-fun result!45829 () Bool)

(assert (=> tb!45553 (= result!45829 true)))

(assert (=> d!43312 t!46375))

(declare-fun b_and!57843 () Bool)

(assert (= b_and!57813 (and (=> t!46375 result!45829) b_and!57843)))

(declare-fun m!54391 () Bool)

(assert (=> d!43312 m!54391))

(declare-fun m!54393 () Bool)

(assert (=> d!43312 m!54393))

(assert (=> start!6842 d!43312))

(declare-fun d!43314 () Bool)

(assert (=> d!43314 (= (inv!883 prev!556) (= (dynLambda!880 (x!19690 prev!556)) (dynLambda!880 (y!1574 prev!556))))))

(declare-fun b_lambda!14447 () Bool)

(assert (=> (not b_lambda!14447) (not d!43314)))

(declare-fun tb!45555 () Bool)

(declare-fun t!46377 () Bool)

(assert (=> (and b!50771 (= (y!1573 x$11!41) (x!19690 prev!556)) t!46377) tb!45555))

(declare-fun result!45831 () Bool)

(assert (=> tb!45555 (= result!45831 true)))

(assert (=> d!43314 t!46377))

(declare-fun b_and!57845 () Bool)

(assert (= b_and!57843 (and (=> t!46377 result!45831) b_and!57845)))

(declare-fun t!46379 () Bool)

(declare-fun tb!45557 () Bool)

(assert (=> (and b!50775 (= (y!1573 x$12!40) (x!19690 prev!556)) t!46379) tb!45557))

(declare-fun result!45833 () Bool)

(assert (=> tb!45557 (= result!45833 true)))

(assert (=> d!43314 t!46379))

(declare-fun b_and!57847 () Bool)

(assert (= b_and!57837 (and (=> t!46379 result!45833) b_and!57847)))

(declare-fun t!46381 () Bool)

(declare-fun tb!45559 () Bool)

(assert (=> (and b!50778 (= (x!19690 thiss!5602) (x!19690 prev!556)) t!46381) tb!45559))

(declare-fun result!45835 () Bool)

(assert (=> tb!45559 (= result!45835 true)))

(assert (=> d!43314 t!46381))

(declare-fun b_and!57849 () Bool)

(assert (= b_and!57831 (and (=> t!46381 result!45835) b_and!57849)))

(declare-fun t!46383 () Bool)

(declare-fun tb!45561 () Bool)

(assert (=> (and b!50776 (= (y!1574 prev!556) (x!19690 prev!556)) t!46383) tb!45561))

(declare-fun result!45837 () Bool)

(assert (=> tb!45561 (= result!45837 true)))

(assert (=> d!43314 t!46383))

(declare-fun b_and!57851 () Bool)

(assert (= b_and!57839 (and (=> t!46383 result!45837) b_and!57851)))

(declare-fun tb!45563 () Bool)

(declare-fun t!46385 () Bool)

(assert (=> (and b!50773 (= (y!1574 x$10!19) (x!19690 prev!556)) t!46385) tb!45563))

(declare-fun result!45839 () Bool)

(assert (=> tb!45563 (= result!45839 true)))

(assert (=> d!43314 t!46385))

(declare-fun b_and!57853 () Bool)

(assert (= b_and!57835 (and (=> t!46385 result!45839) b_and!57853)))

(declare-fun t!46387 () Bool)

(declare-fun tb!45565 () Bool)

(assert (=> (and b!50776 (= (x!19690 prev!556) (x!19690 prev!556)) t!46387) tb!45565))

(declare-fun result!45841 () Bool)

(assert (=> tb!45565 (= result!45841 true)))

(assert (=> d!43314 t!46387))

(declare-fun b_and!57855 () Bool)

(assert (= b_and!57827 (and (=> t!46387 result!45841) b_and!57855)))

(declare-fun tb!45567 () Bool)

(declare-fun t!46389 () Bool)

(assert (=> (and b!50773 (= (x!19690 x$10!19) (x!19690 prev!556)) t!46389) tb!45567))

(declare-fun result!45843 () Bool)

(assert (=> tb!45567 (= result!45843 true)))

(assert (=> d!43314 t!46389))

(declare-fun b_and!57857 () Bool)

(assert (= b_and!57833 (and (=> t!46389 result!45843) b_and!57857)))

(declare-fun tb!45569 () Bool)

(declare-fun t!46391 () Bool)

(assert (=> (and b!50775 (= (x!19689 x$12!40) (x!19690 prev!556)) t!46391) tb!45569))

(declare-fun result!45845 () Bool)

(assert (=> tb!45569 (= result!45845 true)))

(assert (=> d!43314 t!46391))

(declare-fun b_and!57859 () Bool)

(assert (= b_and!57841 (and (=> t!46391 result!45845) b_and!57859)))

(declare-fun tb!45571 () Bool)

(declare-fun t!46393 () Bool)

(assert (=> (and b!50778 (= (y!1574 thiss!5602) (x!19690 prev!556)) t!46393) tb!45571))

(declare-fun result!45847 () Bool)

(assert (=> tb!45571 (= result!45847 true)))

(assert (=> d!43314 t!46393))

(declare-fun b_and!57861 () Bool)

(assert (= b_and!57825 (and (=> t!46393 result!45847) b_and!57861)))

(declare-fun tb!45573 () Bool)

(declare-fun t!46395 () Bool)

(assert (=> (and b!50771 (= (x!19689 x$11!41) (x!19690 prev!556)) t!46395) tb!45573))

(declare-fun result!45849 () Bool)

(assert (=> tb!45573 (= result!45849 true)))

(assert (=> d!43314 t!46395))

(declare-fun b_and!57863 () Bool)

(assert (= b_and!57829 (and (=> t!46395 result!45849) b_and!57863)))

(declare-fun b_lambda!14449 () Bool)

(assert (=> (not b_lambda!14449) (not d!43314)))

(assert (=> d!43314 t!46231))

(declare-fun b_and!57865 () Bool)

(assert (= b_and!57863 (and (=> t!46231 result!45685) b_and!57865)))

(assert (=> d!43314 t!46219))

(declare-fun b_and!57867 () Bool)

(assert (= b_and!57861 (and (=> t!46219 result!45673) b_and!57867)))

(assert (=> d!43314 t!46217))

(declare-fun b_and!57869 () Bool)

(assert (= b_and!57847 (and (=> t!46217 result!45671) b_and!57869)))

(assert (=> d!43314 t!46221))

(declare-fun b_and!57871 () Bool)

(assert (= b_and!57845 (and (=> t!46221 result!45675) b_and!57871)))

(assert (=> d!43314 t!46233))

(declare-fun b_and!57873 () Bool)

(assert (= b_and!57859 (and (=> t!46233 result!45687) b_and!57873)))

(assert (=> d!43314 t!46229))

(declare-fun b_and!57875 () Bool)

(assert (= b_and!57851 (and (=> t!46229 result!45683) b_and!57875)))

(assert (=> d!43314 t!46225))

(declare-fun b_and!57877 () Bool)

(assert (= b_and!57857 (and (=> t!46225 result!45679) b_and!57877)))

(assert (=> d!43314 t!46223))

(declare-fun b_and!57879 () Bool)

(assert (= b_and!57855 (and (=> t!46223 result!45677) b_and!57879)))

(assert (=> d!43314 t!46227))

(declare-fun b_and!57881 () Bool)

(assert (= b_and!57853 (and (=> t!46227 result!45681) b_and!57881)))

(assert (=> d!43314 t!46235))

(declare-fun b_and!57883 () Bool)

(assert (= b_and!57849 (and (=> t!46235 result!45689) b_and!57883)))

(declare-fun m!54395 () Bool)

(assert (=> d!43314 m!54395))

(assert (=> d!43314 m!54349))

(assert (=> start!6842 d!43314))

(declare-fun d!43316 () Bool)

(assert (=> d!43316 (= (inv!883 thiss!5602) (= (dynLambda!880 (x!19690 thiss!5602)) (dynLambda!880 (y!1574 thiss!5602))))))

(declare-fun b_lambda!14451 () Bool)

(assert (=> (not b_lambda!14451) (not d!43316)))

(assert (=> d!43316 t!46255))

(declare-fun b_and!57885 () Bool)

(assert (= b_and!57873 (and (=> t!46255 result!45709) b_and!57885)))

(assert (=> d!43316 t!46241))

(declare-fun b_and!57887 () Bool)

(assert (= b_and!57877 (and (=> t!46241 result!45695) b_and!57887)))

(assert (=> d!43316 t!46249))

(declare-fun b_and!57889 () Bool)

(assert (= b_and!57881 (and (=> t!46249 result!45703) b_and!57889)))

(assert (=> d!43316 t!46239))

(declare-fun b_and!57891 () Bool)

(assert (= b_and!57871 (and (=> t!46239 result!45693) b_and!57891)))

(assert (=> d!43316 t!46245))

(declare-fun b_and!57893 () Bool)

(assert (= b_and!57883 (and (=> t!46245 result!45699) b_and!57893)))

(assert (=> d!43316 t!46237))

(declare-fun b_and!57895 () Bool)

(assert (= b_and!57879 (and (=> t!46237 result!45691) b_and!57895)))

(assert (=> d!43316 t!46253))

(declare-fun b_and!57897 () Bool)

(assert (= b_and!57869 (and (=> t!46253 result!45707) b_and!57897)))

(assert (=> d!43316 t!46247))

(declare-fun b_and!57899 () Bool)

(assert (= b_and!57865 (and (=> t!46247 result!45701) b_and!57899)))

(assert (=> d!43316 t!46243))

(declare-fun b_and!57901 () Bool)

(assert (= b_and!57875 (and (=> t!46243 result!45697) b_and!57901)))

(assert (=> d!43316 t!46251))

(declare-fun b_and!57903 () Bool)

(assert (= b_and!57867 (and (=> t!46251 result!45705) b_and!57903)))

(declare-fun b_lambda!14453 () Bool)

(assert (=> (not b_lambda!14453) (not d!43316)))

(declare-fun t!46397 () Bool)

(declare-fun tb!45575 () Bool)

(assert (=> (and b!50778 (= (y!1574 thiss!5602) (y!1574 thiss!5602)) t!46397) tb!45575))

(declare-fun result!45851 () Bool)

(assert (=> tb!45575 (= result!45851 true)))

(assert (=> d!43316 t!46397))

(declare-fun b_and!57905 () Bool)

(assert (= b_and!57903 (and (=> t!46397 result!45851) b_and!57905)))

(declare-fun t!46399 () Bool)

(declare-fun tb!45577 () Bool)

(assert (=> (and b!50778 (= (x!19690 thiss!5602) (y!1574 thiss!5602)) t!46399) tb!45577))

(declare-fun result!45853 () Bool)

(assert (=> tb!45577 (= result!45853 true)))

(assert (=> d!43316 t!46399))

(declare-fun b_and!57907 () Bool)

(assert (= b_and!57893 (and (=> t!46399 result!45853) b_and!57907)))

(declare-fun tb!45579 () Bool)

(declare-fun t!46401 () Bool)

(assert (=> (and b!50775 (= (y!1573 x$12!40) (y!1574 thiss!5602)) t!46401) tb!45579))

(declare-fun result!45855 () Bool)

(assert (=> tb!45579 (= result!45855 true)))

(assert (=> d!43316 t!46401))

(declare-fun b_and!57909 () Bool)

(assert (= b_and!57897 (and (=> t!46401 result!45855) b_and!57909)))

(declare-fun t!46403 () Bool)

(declare-fun tb!45581 () Bool)

(assert (=> (and b!50773 (= (y!1574 x$10!19) (y!1574 thiss!5602)) t!46403) tb!45581))

(declare-fun result!45857 () Bool)

(assert (=> tb!45581 (= result!45857 true)))

(assert (=> d!43316 t!46403))

(declare-fun b_and!57911 () Bool)

(assert (= b_and!57889 (and (=> t!46403 result!45857) b_and!57911)))

(declare-fun tb!45583 () Bool)

(declare-fun t!46405 () Bool)

(assert (=> (and b!50776 (= (x!19690 prev!556) (y!1574 thiss!5602)) t!46405) tb!45583))

(declare-fun result!45859 () Bool)

(assert (=> tb!45583 (= result!45859 true)))

(assert (=> d!43316 t!46405))

(declare-fun b_and!57913 () Bool)

(assert (= b_and!57895 (and (=> t!46405 result!45859) b_and!57913)))

(declare-fun tb!45585 () Bool)

(declare-fun t!46407 () Bool)

(assert (=> (and b!50776 (= (y!1574 prev!556) (y!1574 thiss!5602)) t!46407) tb!45585))

(declare-fun result!45861 () Bool)

(assert (=> tb!45585 (= result!45861 true)))

(assert (=> d!43316 t!46407))

(declare-fun b_and!57915 () Bool)

(assert (= b_and!57901 (and (=> t!46407 result!45861) b_and!57915)))

(declare-fun tb!45587 () Bool)

(declare-fun t!46409 () Bool)

(assert (=> (and b!50771 (= (y!1573 x$11!41) (y!1574 thiss!5602)) t!46409) tb!45587))

(declare-fun result!45863 () Bool)

(assert (=> tb!45587 (= result!45863 true)))

(assert (=> d!43316 t!46409))

(declare-fun b_and!57917 () Bool)

(assert (= b_and!57891 (and (=> t!46409 result!45863) b_and!57917)))

(declare-fun t!46411 () Bool)

(declare-fun tb!45589 () Bool)

(assert (=> (and b!50773 (= (x!19690 x$10!19) (y!1574 thiss!5602)) t!46411) tb!45589))

(declare-fun result!45865 () Bool)

(assert (=> tb!45589 (= result!45865 true)))

(assert (=> d!43316 t!46411))

(declare-fun b_and!57919 () Bool)

(assert (= b_and!57887 (and (=> t!46411 result!45865) b_and!57919)))

(declare-fun t!46413 () Bool)

(declare-fun tb!45591 () Bool)

(assert (=> (and b!50775 (= (x!19689 x$12!40) (y!1574 thiss!5602)) t!46413) tb!45591))

(declare-fun result!45867 () Bool)

(assert (=> tb!45591 (= result!45867 true)))

(assert (=> d!43316 t!46413))

(declare-fun b_and!57921 () Bool)

(assert (= b_and!57885 (and (=> t!46413 result!45867) b_and!57921)))

(declare-fun t!46415 () Bool)

(declare-fun tb!45593 () Bool)

(assert (=> (and b!50771 (= (x!19689 x$11!41) (y!1574 thiss!5602)) t!46415) tb!45593))

(declare-fun result!45869 () Bool)

(assert (=> tb!45593 (= result!45869 true)))

(assert (=> d!43316 t!46415))

(declare-fun b_and!57923 () Bool)

(assert (= b_and!57899 (and (=> t!46415 result!45869) b_and!57923)))

(assert (=> d!43316 m!54351))

(declare-fun m!54397 () Bool)

(assert (=> d!43316 m!54397))

(assert (=> start!6842 d!43316))

(assert (=> bs!23627 d!43298))

(declare-fun b_lambda!14455 () Bool)

(assert (= b_lambda!14449 (or (and b!50775 b_free!7167 (= (x!19689 x$12!40) (y!1574 prev!556))) (and b!50776 b_free!7151) (and b!50777 (= lambda!8506 (y!1574 prev!556))) (and b!50778 b_free!7143 (= (x!19690 thiss!5602) (y!1574 prev!556))) (and b!50771 b_free!7155 (= (x!19689 x$11!41) (y!1574 prev!556))) (and b!50771 b_free!7157 (= (y!1573 x$11!41) (y!1574 prev!556))) (and b!50776 b_free!7149 (= (x!19690 prev!556) (y!1574 prev!556))) (and b!50779 (= lambda!8503 (y!1574 prev!556))) (and b!50777 (= lambda!8505 (y!1574 prev!556))) (and b!50773 b_free!7163 (= (y!1574 x$10!19) (y!1574 prev!556))) (and b!50774 (= lambda!8501 (y!1574 prev!556))) (and b!50778 b_free!7145 (= (y!1574 thiss!5602) (y!1574 prev!556))) (and b!50773 b_free!7161 (= (x!19690 x$10!19) (y!1574 prev!556))) (and b!50775 b_free!7169 (= (y!1573 x$12!40) (y!1574 prev!556))) b_lambda!14455)))

(assert (=> (and b!50777 (= lambda!8505 (y!1574 prev!556)) d!43314) d!43284))

(assert (=> (and b!50777 (= lambda!8506 (y!1574 prev!556)) d!43314) d!43286))

(assert (=> (and b!50779 (= lambda!8503 (y!1574 prev!556)) d!43314) d!43288))

(assert (=> (and b!50774 (= lambda!8501 (y!1574 prev!556)) d!43314) d!43290))

(declare-fun b_lambda!14457 () Bool)

(assert (= b_lambda!14451 (or (and b!50777 (= lambda!8506 (x!19690 thiss!5602))) (and b!50773 b_free!7163 (= (y!1574 x$10!19) (x!19690 thiss!5602))) (and b!50773 b_free!7161 (= (x!19690 x$10!19) (x!19690 thiss!5602))) (and b!50776 b_free!7151 (= (y!1574 prev!556) (x!19690 thiss!5602))) (and b!50778 b_free!7143) (and b!50771 b_free!7157 (= (y!1573 x$11!41) (x!19690 thiss!5602))) (and b!50775 b_free!7169 (= (y!1573 x$12!40) (x!19690 thiss!5602))) (and b!50771 b_free!7155 (= (x!19689 x$11!41) (x!19690 thiss!5602))) (and b!50777 (= lambda!8505 (x!19690 thiss!5602))) (and b!50779 (= lambda!8503 (x!19690 thiss!5602))) (and b!50774 (= lambda!8501 (x!19690 thiss!5602))) (and b!50778 b_free!7145 (= (y!1574 thiss!5602) (x!19690 thiss!5602))) (and b!50776 b_free!7149 (= (x!19690 prev!556) (x!19690 thiss!5602))) (and b!50775 b_free!7167 (= (x!19689 x$12!40) (x!19690 thiss!5602))) b_lambda!14457)))

(assert (=> (and b!50774 (= lambda!8501 (x!19690 thiss!5602)) d!43316) d!43276))

(assert (=> (and b!50777 (= lambda!8505 (x!19690 thiss!5602)) d!43316) d!43278))

(assert (=> (and b!50777 (= lambda!8506 (x!19690 thiss!5602)) d!43316) d!43280))

(assert (=> (and b!50779 (= lambda!8503 (x!19690 thiss!5602)) d!43316) d!43282))

(declare-fun b_lambda!14459 () Bool)

(assert (= b_lambda!14439 (or (and b!50778 b_free!7145 (= (y!1574 thiss!5602) (x!19690 x$10!19))) (and b!50774 (= lambda!8501 (x!19690 x$10!19))) (and b!50777 (= lambda!8506 (x!19690 x$10!19))) (and b!50771 b_free!7157 (= (y!1573 x$11!41) (x!19690 x$10!19))) (and b!50771 b_free!7155 (= (x!19689 x$11!41) (x!19690 x$10!19))) (and b!50776 b_free!7151 (= (y!1574 prev!556) (x!19690 x$10!19))) (and b!50773 b_free!7161) (and b!50773 b_free!7163 (= (y!1574 x$10!19) (x!19690 x$10!19))) (and b!50778 b_free!7143 (= (x!19690 thiss!5602) (x!19690 x$10!19))) (and b!50775 b_free!7167 (= (x!19689 x$12!40) (x!19690 x$10!19))) (and b!50777 (= lambda!8505 (x!19690 x$10!19))) (and b!50776 b_free!7149 (= (x!19690 prev!556) (x!19690 x$10!19))) (and b!50779 (= lambda!8503 (x!19690 x$10!19))) (and b!50775 b_free!7169 (= (y!1573 x$12!40) (x!19690 x$10!19))) b_lambda!14459)))

(declare-fun bs!23630 () Bool)

(declare-fun d!43318 () Bool)

(assert (= bs!23630 (and d!43318 b!50774)))

(assert (=> bs!23630 (= (dynLambda!880 lambda!8501) (+!5 n1!178 n2!189))))

(assert (=> bs!23630 m!54367))

(assert (=> (and b!50774 (= lambda!8501 (x!19690 x$10!19)) d!43310) d!43318))

(declare-fun bs!23631 () Bool)

(declare-fun d!43320 () Bool)

(assert (= bs!23631 (and d!43320 b!50779)))

(assert (=> bs!23631 (= (dynLambda!880 lambda!8503) (Succ!238 (+!5 (n!1395 n1!178) n2!189)))))

(assert (=> bs!23631 m!54373))

(assert (=> (and b!50779 (= lambda!8503 (x!19690 x$10!19)) d!43310) d!43320))

(declare-fun bs!23632 () Bool)

(declare-fun d!43322 () Bool)

(assert (= bs!23632 (and d!43322 b!50777)))

(assert (=> bs!23632 (= (dynLambda!880 lambda!8505) (Succ!238 (+!5 n2!189 (n!1395 n1!178))))))

(assert (=> bs!23632 m!54369))

(assert (=> (and b!50777 (= lambda!8505 (x!19690 x$10!19)) d!43310) d!43322))

(declare-fun bs!23633 () Bool)

(declare-fun d!43324 () Bool)

(assert (= bs!23633 (and d!43324 b!50777)))

(assert (=> bs!23633 (= (dynLambda!880 lambda!8506) (+!5 n2!189 n1!178))))

(assert (=> bs!23633 m!54371))

(assert (=> (and b!50777 (= lambda!8506 (x!19690 x$10!19)) d!43310) d!43324))

(declare-fun b_lambda!14461 () Bool)

(assert (= b_lambda!14453 (or (and b!50777 (= lambda!8505 (y!1574 thiss!5602))) (and b!50774 (= lambda!8501 (y!1574 thiss!5602))) (and b!50773 b_free!7163 (= (y!1574 x$10!19) (y!1574 thiss!5602))) (and b!50771 b_free!7155 (= (x!19689 x$11!41) (y!1574 thiss!5602))) (and b!50779 (= lambda!8503 (y!1574 thiss!5602))) (and b!50775 b_free!7167 (= (x!19689 x$12!40) (y!1574 thiss!5602))) (and b!50778 b_free!7143 (= (x!19690 thiss!5602) (y!1574 thiss!5602))) (and b!50776 b_free!7151 (= (y!1574 prev!556) (y!1574 thiss!5602))) (and b!50773 b_free!7161 (= (x!19690 x$10!19) (y!1574 thiss!5602))) (and b!50775 b_free!7169 (= (y!1573 x$12!40) (y!1574 thiss!5602))) (and b!50771 b_free!7157 (= (y!1573 x$11!41) (y!1574 thiss!5602))) (and b!50778 b_free!7145) (and b!50776 b_free!7149 (= (x!19690 prev!556) (y!1574 thiss!5602))) (and b!50777 (= lambda!8506 (y!1574 thiss!5602))) b_lambda!14461)))

(declare-fun bs!23634 () Bool)

(declare-fun d!43326 () Bool)

(assert (= bs!23634 (and d!43326 b!50779)))

(assert (=> bs!23634 (= (dynLambda!880 lambda!8503) (Succ!238 (+!5 (n!1395 n1!178) n2!189)))))

(assert (=> bs!23634 m!54373))

(assert (=> (and b!50779 (= lambda!8503 (y!1574 thiss!5602)) d!43316) d!43326))

(declare-fun bs!23635 () Bool)

(declare-fun d!43328 () Bool)

(assert (= bs!23635 (and d!43328 b!50777)))

(assert (=> bs!23635 (= (dynLambda!880 lambda!8506) (+!5 n2!189 n1!178))))

(assert (=> bs!23635 m!54371))

(assert (=> (and b!50777 (= lambda!8506 (y!1574 thiss!5602)) d!43316) d!43328))

(declare-fun bs!23636 () Bool)

(declare-fun d!43330 () Bool)

(assert (= bs!23636 (and d!43330 b!50777)))

(assert (=> bs!23636 (= (dynLambda!880 lambda!8505) (Succ!238 (+!5 n2!189 (n!1395 n1!178))))))

(assert (=> bs!23636 m!54369))

(assert (=> (and b!50777 (= lambda!8505 (y!1574 thiss!5602)) d!43316) d!43330))

(declare-fun bs!23637 () Bool)

(declare-fun d!43332 () Bool)

(assert (= bs!23637 (and d!43332 b!50774)))

(assert (=> bs!23637 (= (dynLambda!880 lambda!8501) (+!5 n1!178 n2!189))))

(assert (=> bs!23637 m!54367))

(assert (=> (and b!50774 (= lambda!8501 (y!1574 thiss!5602)) d!43316) d!43332))

(declare-fun b_lambda!14463 () Bool)

(assert (= b_lambda!14445 (or (and b!50779 (= lambda!8503 (y!1573 x$12!40))) (and b!50774 (= lambda!8501 (y!1573 x$12!40))) (and b!50778 b_free!7145 (= (y!1574 thiss!5602) (y!1573 x$12!40))) (and b!50777 (= lambda!8506 (y!1573 x$12!40))) (and b!50771 b_free!7155 (= (x!19689 x$11!41) (y!1573 x$12!40))) (and b!50775 b_free!7167 (= (x!19689 x$12!40) (y!1573 x$12!40))) (and b!50775 b_free!7169) (and b!50777 (= lambda!8505 (y!1573 x$12!40))) (and b!50778 b_free!7143 (= (x!19690 thiss!5602) (y!1573 x$12!40))) (and b!50776 b_free!7149 (= (x!19690 prev!556) (y!1573 x$12!40))) (and b!50773 b_free!7163 (= (y!1574 x$10!19) (y!1573 x$12!40))) (and b!50773 b_free!7161 (= (x!19690 x$10!19) (y!1573 x$12!40))) (and b!50771 b_free!7157 (= (y!1573 x$11!41) (y!1573 x$12!40))) (and b!50776 b_free!7151 (= (y!1574 prev!556) (y!1573 x$12!40))) b_lambda!14463)))

(declare-fun bs!23638 () Bool)

(declare-fun d!43334 () Bool)

(assert (= bs!23638 (and d!43334 b!50777)))

(assert (=> bs!23638 (= (dynLambda!880 lambda!8506) (+!5 n2!189 n1!178))))

(assert (=> bs!23638 m!54371))

(assert (=> (and b!50777 (= lambda!8506 (y!1573 x$12!40)) d!43312) d!43334))

(declare-fun bs!23639 () Bool)

(declare-fun d!43336 () Bool)

(assert (= bs!23639 (and d!43336 b!50779)))

(assert (=> bs!23639 (= (dynLambda!880 lambda!8503) (Succ!238 (+!5 (n!1395 n1!178) n2!189)))))

(assert (=> bs!23639 m!54373))

(assert (=> (and b!50779 (= lambda!8503 (y!1573 x$12!40)) d!43312) d!43336))

(declare-fun bs!23640 () Bool)

(declare-fun d!43338 () Bool)

(assert (= bs!23640 (and d!43338 b!50774)))

(assert (=> bs!23640 (= (dynLambda!880 lambda!8501) (+!5 n1!178 n2!189))))

(assert (=> bs!23640 m!54367))

(assert (=> (and b!50774 (= lambda!8501 (y!1573 x$12!40)) d!43312) d!43338))

(declare-fun bs!23641 () Bool)

(declare-fun d!43340 () Bool)

(assert (= bs!23641 (and d!43340 b!50777)))

(assert (=> bs!23641 (= (dynLambda!880 lambda!8505) (Succ!238 (+!5 n2!189 (n!1395 n1!178))))))

(assert (=> bs!23641 m!54369))

(assert (=> (and b!50777 (= lambda!8505 (y!1573 x$12!40)) d!43312) d!43340))

(declare-fun b_lambda!14465 () Bool)

(assert (= b_lambda!14443 (or (and b!50777 (= lambda!8505 (x!19689 x$12!40))) (and b!50771 b_free!7155 (= (x!19689 x$11!41) (x!19689 x$12!40))) (and b!50779 (= lambda!8503 (x!19689 x$12!40))) (and b!50774 (= lambda!8501 (x!19689 x$12!40))) (and b!50775 b_free!7167) (and b!50775 b_free!7169 (= (y!1573 x$12!40) (x!19689 x$12!40))) (and b!50773 b_free!7163 (= (y!1574 x$10!19) (x!19689 x$12!40))) (and b!50776 b_free!7151 (= (y!1574 prev!556) (x!19689 x$12!40))) (and b!50773 b_free!7161 (= (x!19690 x$10!19) (x!19689 x$12!40))) (and b!50778 b_free!7143 (= (x!19690 thiss!5602) (x!19689 x$12!40))) (and b!50771 b_free!7157 (= (y!1573 x$11!41) (x!19689 x$12!40))) (and b!50777 (= lambda!8506 (x!19689 x$12!40))) (and b!50776 b_free!7149 (= (x!19690 prev!556) (x!19689 x$12!40))) (and b!50778 b_free!7145 (= (y!1574 thiss!5602) (x!19689 x$12!40))) b_lambda!14465)))

(declare-fun bs!23642 () Bool)

(declare-fun d!43342 () Bool)

(assert (= bs!23642 (and d!43342 b!50777)))

(assert (=> bs!23642 (= (dynLambda!880 lambda!8505) (Succ!238 (+!5 n2!189 (n!1395 n1!178))))))

(assert (=> bs!23642 m!54369))

(assert (=> (and b!50777 (= lambda!8505 (x!19689 x$12!40)) d!43312) d!43342))

(declare-fun bs!23643 () Bool)

(declare-fun d!43344 () Bool)

(assert (= bs!23643 (and d!43344 b!50774)))

(assert (=> bs!23643 (= (dynLambda!880 lambda!8501) (+!5 n1!178 n2!189))))

(assert (=> bs!23643 m!54367))

(assert (=> (and b!50774 (= lambda!8501 (x!19689 x$12!40)) d!43312) d!43344))

(declare-fun bs!23644 () Bool)

(declare-fun d!43346 () Bool)

(assert (= bs!23644 (and d!43346 b!50777)))

(assert (=> bs!23644 (= (dynLambda!880 lambda!8506) (+!5 n2!189 n1!178))))

(assert (=> bs!23644 m!54371))

(assert (=> (and b!50777 (= lambda!8506 (x!19689 x$12!40)) d!43312) d!43346))

(declare-fun bs!23645 () Bool)

(declare-fun d!43348 () Bool)

(assert (= bs!23645 (and d!43348 b!50779)))

(assert (=> bs!23645 (= (dynLambda!880 lambda!8503) (Succ!238 (+!5 (n!1395 n1!178) n2!189)))))

(assert (=> bs!23645 m!54373))

(assert (=> (and b!50779 (= lambda!8503 (x!19689 x$12!40)) d!43312) d!43348))

(declare-fun b_lambda!14467 () Bool)

(assert (= b_lambda!14441 (or (and b!50777 (= lambda!8505 (y!1574 x$10!19))) (and b!50776 b_free!7151 (= (y!1574 prev!556) (y!1574 x$10!19))) (and b!50778 b_free!7143 (= (x!19690 thiss!5602) (y!1574 x$10!19))) (and b!50775 b_free!7167 (= (x!19689 x$12!40) (y!1574 x$10!19))) (and b!50771 b_free!7157 (= (y!1573 x$11!41) (y!1574 x$10!19))) (and b!50775 b_free!7169 (= (y!1573 x$12!40) (y!1574 x$10!19))) (and b!50778 b_free!7145 (= (y!1574 thiss!5602) (y!1574 x$10!19))) (and b!50773 b_free!7161 (= (x!19690 x$10!19) (y!1574 x$10!19))) (and b!50779 (= lambda!8503 (y!1574 x$10!19))) (and b!50774 (= lambda!8501 (y!1574 x$10!19))) (and b!50776 b_free!7149 (= (x!19690 prev!556) (y!1574 x$10!19))) (and b!50777 (= lambda!8506 (y!1574 x$10!19))) (and b!50773 b_free!7163) (and b!50771 b_free!7155 (= (x!19689 x$11!41) (y!1574 x$10!19))) b_lambda!14467)))

(declare-fun bs!23646 () Bool)

(declare-fun d!43350 () Bool)

(assert (= bs!23646 (and d!43350 b!50777)))

(assert (=> bs!23646 (= (dynLambda!880 lambda!8506) (+!5 n2!189 n1!178))))

(assert (=> bs!23646 m!54371))

(assert (=> (and b!50777 (= lambda!8506 (y!1574 x$10!19)) d!43310) d!43350))

(declare-fun bs!23647 () Bool)

(declare-fun d!43352 () Bool)

(assert (= bs!23647 (and d!43352 b!50774)))

(assert (=> bs!23647 (= (dynLambda!880 lambda!8501) (+!5 n1!178 n2!189))))

(assert (=> bs!23647 m!54367))

(assert (=> (and b!50774 (= lambda!8501 (y!1574 x$10!19)) d!43310) d!43352))

(declare-fun bs!23648 () Bool)

(declare-fun d!43354 () Bool)

(assert (= bs!23648 (and d!43354 b!50779)))

(assert (=> bs!23648 (= (dynLambda!880 lambda!8503) (Succ!238 (+!5 (n!1395 n1!178) n2!189)))))

(assert (=> bs!23648 m!54373))

(assert (=> (and b!50779 (= lambda!8503 (y!1574 x$10!19)) d!43310) d!43354))

(declare-fun bs!23649 () Bool)

(declare-fun d!43356 () Bool)

(assert (= bs!23649 (and d!43356 b!50777)))

(assert (=> bs!23649 (= (dynLambda!880 lambda!8505) (Succ!238 (+!5 n2!189 (n!1395 n1!178))))))

(assert (=> bs!23649 m!54369))

(assert (=> (and b!50777 (= lambda!8505 (y!1574 x$10!19)) d!43310) d!43356))

(declare-fun b_lambda!14469 () Bool)

(assert (= b_lambda!14435 (or (and b!50775 b_free!7167 (= (x!19689 x$12!40) (x!19689 x$11!41))) (and b!50778 b_free!7145 (= (y!1574 thiss!5602) (x!19689 x$11!41))) (and b!50777 (= lambda!8505 (x!19689 x$11!41))) (and b!50779 (= lambda!8503 (x!19689 x$11!41))) (and b!50771 b_free!7155) (and b!50776 b_free!7151 (= (y!1574 prev!556) (x!19689 x$11!41))) (and b!50776 b_free!7149 (= (x!19690 prev!556) (x!19689 x$11!41))) (and b!50778 b_free!7143 (= (x!19690 thiss!5602) (x!19689 x$11!41))) (and b!50774 (= lambda!8501 (x!19689 x$11!41))) (and b!50771 b_free!7157 (= (y!1573 x$11!41) (x!19689 x$11!41))) (and b!50773 b_free!7163 (= (y!1574 x$10!19) (x!19689 x$11!41))) (and b!50777 (= lambda!8506 (x!19689 x$11!41))) (and b!50775 b_free!7169 (= (y!1573 x$12!40) (x!19689 x$11!41))) (and b!50773 b_free!7161 (= (x!19690 x$10!19) (x!19689 x$11!41))) b_lambda!14469)))

(declare-fun bs!23650 () Bool)

(declare-fun d!43358 () Bool)

(assert (= bs!23650 (and d!43358 b!50774)))

(assert (=> bs!23650 (= (dynLambda!880 lambda!8501) (+!5 n1!178 n2!189))))

(assert (=> bs!23650 m!54367))

(assert (=> (and b!50774 (= lambda!8501 (x!19689 x$11!41)) d!43308) d!43358))

(declare-fun bs!23651 () Bool)

(declare-fun d!43360 () Bool)

(assert (= bs!23651 (and d!43360 b!50777)))

(assert (=> bs!23651 (= (dynLambda!880 lambda!8505) (Succ!238 (+!5 n2!189 (n!1395 n1!178))))))

(assert (=> bs!23651 m!54369))

(assert (=> (and b!50777 (= lambda!8505 (x!19689 x$11!41)) d!43308) d!43360))

(declare-fun bs!23652 () Bool)

(declare-fun d!43362 () Bool)

(assert (= bs!23652 (and d!43362 b!50777)))

(assert (=> bs!23652 (= (dynLambda!880 lambda!8506) (+!5 n2!189 n1!178))))

(assert (=> bs!23652 m!54371))

(assert (=> (and b!50777 (= lambda!8506 (x!19689 x$11!41)) d!43308) d!43362))

(declare-fun bs!23653 () Bool)

(declare-fun d!43364 () Bool)

(assert (= bs!23653 (and d!43364 b!50779)))

(assert (=> bs!23653 (= (dynLambda!880 lambda!8503) (Succ!238 (+!5 (n!1395 n1!178) n2!189)))))

(assert (=> bs!23653 m!54373))

(assert (=> (and b!50779 (= lambda!8503 (x!19689 x$11!41)) d!43308) d!43364))

(declare-fun b_lambda!14471 () Bool)

(assert (= b_lambda!14447 (or (and b!50778 b_free!7143 (= (x!19690 thiss!5602) (x!19690 prev!556))) (and b!50771 b_free!7157 (= (y!1573 x$11!41) (x!19690 prev!556))) (and b!50778 b_free!7145 (= (y!1574 thiss!5602) (x!19690 prev!556))) (and b!50776 b_free!7151 (= (y!1574 prev!556) (x!19690 prev!556))) (and b!50779 (= lambda!8503 (x!19690 prev!556))) (and b!50773 b_free!7161 (= (x!19690 x$10!19) (x!19690 prev!556))) (and b!50776 b_free!7149) (and b!50773 b_free!7163 (= (y!1574 x$10!19) (x!19690 prev!556))) (and b!50771 b_free!7155 (= (x!19689 x$11!41) (x!19690 prev!556))) (and b!50775 b_free!7169 (= (y!1573 x$12!40) (x!19690 prev!556))) (and b!50775 b_free!7167 (= (x!19689 x$12!40) (x!19690 prev!556))) (and b!50777 (= lambda!8506 (x!19690 prev!556))) (and b!50777 (= lambda!8505 (x!19690 prev!556))) (and b!50774 (= lambda!8501 (x!19690 prev!556))) b_lambda!14471)))

(declare-fun bs!23654 () Bool)

(declare-fun d!43366 () Bool)

(assert (= bs!23654 (and d!43366 b!50777)))

(assert (=> bs!23654 (= (dynLambda!880 lambda!8505) (Succ!238 (+!5 n2!189 (n!1395 n1!178))))))

(assert (=> bs!23654 m!54369))

(assert (=> (and b!50777 (= lambda!8505 (x!19690 prev!556)) d!43314) d!43366))

(declare-fun bs!23655 () Bool)

(declare-fun d!43368 () Bool)

(assert (= bs!23655 (and d!43368 b!50774)))

(assert (=> bs!23655 (= (dynLambda!880 lambda!8501) (+!5 n1!178 n2!189))))

(assert (=> bs!23655 m!54367))

(assert (=> (and b!50774 (= lambda!8501 (x!19690 prev!556)) d!43314) d!43368))

(declare-fun bs!23656 () Bool)

(declare-fun d!43370 () Bool)

(assert (= bs!23656 (and d!43370 b!50777)))

(assert (=> bs!23656 (= (dynLambda!880 lambda!8506) (+!5 n2!189 n1!178))))

(assert (=> bs!23656 m!54371))

(assert (=> (and b!50777 (= lambda!8506 (x!19690 prev!556)) d!43314) d!43370))

(declare-fun bs!23657 () Bool)

(declare-fun d!43372 () Bool)

(assert (= bs!23657 (and d!43372 b!50779)))

(assert (=> bs!23657 (= (dynLambda!880 lambda!8503) (Succ!238 (+!5 (n!1395 n1!178) n2!189)))))

(assert (=> bs!23657 m!54373))

(assert (=> (and b!50779 (= lambda!8503 (x!19690 prev!556)) d!43314) d!43372))

(declare-fun b_lambda!14473 () Bool)

(assert (= b_lambda!14437 (or (and b!50771 b_free!7155 (= (x!19689 x$11!41) (y!1573 x$11!41))) (and b!50779 (= lambda!8503 (y!1573 x$11!41))) (and b!50771 b_free!7157) (and b!50775 b_free!7169 (= (y!1573 x$12!40) (y!1573 x$11!41))) (and b!50778 b_free!7145 (= (y!1574 thiss!5602) (y!1573 x$11!41))) (and b!50775 b_free!7167 (= (x!19689 x$12!40) (y!1573 x$11!41))) (and b!50778 b_free!7143 (= (x!19690 thiss!5602) (y!1573 x$11!41))) (and b!50773 b_free!7163 (= (y!1574 x$10!19) (y!1573 x$11!41))) (and b!50777 (= lambda!8505 (y!1573 x$11!41))) (and b!50776 b_free!7149 (= (x!19690 prev!556) (y!1573 x$11!41))) (and b!50773 b_free!7161 (= (x!19690 x$10!19) (y!1573 x$11!41))) (and b!50776 b_free!7151 (= (y!1574 prev!556) (y!1573 x$11!41))) (and b!50774 (= lambda!8501 (y!1573 x$11!41))) (and b!50777 (= lambda!8506 (y!1573 x$11!41))) b_lambda!14473)))

(declare-fun bs!23658 () Bool)

(declare-fun d!43374 () Bool)

(assert (= bs!23658 (and d!43374 b!50774)))

(assert (=> bs!23658 (= (dynLambda!880 lambda!8501) (+!5 n1!178 n2!189))))

(assert (=> bs!23658 m!54367))

(assert (=> (and b!50774 (= lambda!8501 (y!1573 x$11!41)) d!43308) d!43374))

(declare-fun bs!23659 () Bool)

(declare-fun d!43376 () Bool)

(assert (= bs!23659 (and d!43376 b!50779)))

(assert (=> bs!23659 (= (dynLambda!880 lambda!8503) (Succ!238 (+!5 (n!1395 n1!178) n2!189)))))

(assert (=> bs!23659 m!54373))

(assert (=> (and b!50779 (= lambda!8503 (y!1573 x$11!41)) d!43308) d!43376))

(declare-fun bs!23660 () Bool)

(declare-fun d!43378 () Bool)

(assert (= bs!23660 (and d!43378 b!50777)))

(assert (=> bs!23660 (= (dynLambda!880 lambda!8506) (+!5 n2!189 n1!178))))

(assert (=> bs!23660 m!54371))

(assert (=> (and b!50777 (= lambda!8506 (y!1573 x$11!41)) d!43308) d!43378))

(declare-fun bs!23661 () Bool)

(declare-fun d!43380 () Bool)

(assert (= bs!23661 (and d!43380 b!50777)))

(assert (=> bs!23661 (= (dynLambda!880 lambda!8505) (Succ!238 (+!5 n2!189 (n!1395 n1!178))))))

(assert (=> bs!23661 m!54369))

(assert (=> (and b!50777 (= lambda!8505 (y!1573 x$11!41)) d!43308) d!43380))

(push 1)

(assert b_and!57665)

(assert b_and!57677)

(assert (not bs!23651))

(assert (not bs!23631))

(assert (not b_next!38379))

(assert (not bs!23659))

(assert (not b_lambda!14463))

(assert b_and!57915)

(assert (not b_next!38383))

(assert (not bs!23657))

(assert (not bs!23635))

(assert (not b_lambda!14469))

(assert (not bs!23647))

(assert (not b_lambda!14457))

(assert (not b_lambda!14465))

(assert (not bs!23660))

(assert (not bs!23655))

(assert (not b_next!38359))

(assert (not bs!23641))

(assert (not bs!23645))

(assert (not b_next!38371))

(assert (not b_next!38311))

(assert (not bs!23650))

(assert (not b_next!38381))

(assert (not bs!23646))

(assert (not bs!23643))

(assert (not b!50795))

(assert (not b!50793))

(assert (not d!43302))

(assert (not b_lambda!14431))

(assert (not b_next!38369))

(assert (not bs!23652))

(assert b_and!57917)

(assert b_and!57905)

(assert (not bs!23640))

(assert (not b_next!38361))

(assert (not d!43306))

(assert (not b_next!38377))

(assert (not bs!23644))

(assert (not bs!23648))

(assert (not bs!23649))

(assert (not b!50791))

(assert (not bs!23654))

(assert (not bs!23632))

(assert b_and!57919)

(assert b_and!57907)

(assert (not b_next!38367))

(assert (not bs!23634))

(assert b_and!57913)

(assert (not b_lambda!14473))

(assert b_and!57921)

(assert (not b_next!38363))

(assert b_and!57909)

(assert (not bs!23638))

(assert (not b_next!38373))

(assert (not bs!23658))

(assert (not bs!23637))

(assert (not bs!23630))

(assert b_and!57923)

(assert (not b!50789))

(assert (not bs!23642))

(assert (not b_lambda!14433))

(assert (not b_next!38365))

(assert (not bs!23653))

(assert (not b_lambda!14471))

(assert b_and!57683)

(assert b_and!57911)

(assert (not bs!23661))

(assert (not b_lambda!14459))

(assert (not b_lambda!14467))

(assert (not bs!23639))

(assert (not bs!23636))

(assert (not b_lambda!14455))

(assert (not b_next!38309))

(assert (not bs!23633))

(assert (not b_lambda!14461))

(assert b_and!57679)

(assert b_and!57681)

(assert (not bs!23656))

(assert (not b_next!38375))

(assert (not b_lambda!14429))

(check-sat)

(pop 1)

(push 1)

(assert b_and!57665)

(assert b_and!57677)

(assert (not b_next!38379))

(assert b_and!57915)

(assert (not b_next!38383))

(assert (not b_next!38359))

(assert (not b_next!38371))

(assert (not b_next!38311))

(assert (not b_next!38381))

(assert (not b_next!38369))

(assert b_and!57917)

(assert b_and!57905)

(assert (not b_next!38361))

(assert (not b_next!38377))

(assert b_and!57919)

(assert b_and!57907)

(assert (not b_next!38367))

(assert b_and!57913)

(assert b_and!57921)

(assert (not b_next!38363))

(assert b_and!57909)

(assert (not b_next!38373))

(assert b_and!57923)

(assert (not b_next!38365))

(assert b_and!57683)

(assert b_and!57911)

(assert (not b_next!38309))

(assert b_and!57679)

(assert b_and!57681)

(assert (not b_next!38375))

(check-sat)

(pop 1)

