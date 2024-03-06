; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6450 () Bool)

(assert start!6450)

(declare-fun b!47827 () Bool)

(declare-fun b_free!5811 () Bool)

(declare-fun b_next!26231 () Bool)

(assert (=> b!47827 (= b_free!5811 (not b_next!26231))))

(declare-fun tp!12807 () Bool)

(declare-fun b_and!37827 () Bool)

(assert (=> b!47827 (= tp!12807 b_and!37827)))

(declare-fun b_free!5813 () Bool)

(declare-fun b_next!26233 () Bool)

(assert (=> b!47827 (= b_free!5813 (not b_next!26233))))

(declare-fun tp!12810 () Bool)

(declare-fun b_and!37829 () Bool)

(assert (=> b!47827 (= tp!12810 b_and!37829)))

(declare-fun b_free!5815 () Bool)

(declare-fun b_next!26235 () Bool)

(assert (=> b!47827 (= b_free!5815 (not b_next!26235))))

(declare-fun tp!12809 () Bool)

(declare-fun b_and!37831 () Bool)

(assert (=> b!47827 (= tp!12809 b_and!37831)))

(declare-fun b!47820 () Bool)

(declare-fun b_free!5817 () Bool)

(declare-fun b_next!26237 () Bool)

(assert (=> b!47820 (= b_free!5817 (not b_next!26237))))

(declare-fun tp!12811 () Bool)

(declare-fun b_and!37833 () Bool)

(assert (=> b!47820 (= tp!12811 b_and!37833)))

(declare-fun b_free!5819 () Bool)

(declare-fun b_next!26239 () Bool)

(assert (=> b!47820 (= b_free!5819 (not b_next!26239))))

(declare-fun tp!12812 () Bool)

(declare-fun b_and!37835 () Bool)

(assert (=> b!47820 (= tp!12812 b_and!37835)))

(declare-fun b_free!5821 () Bool)

(declare-fun b_next!26241 () Bool)

(assert (=> b!47820 (= b_free!5821 (not b_next!26241))))

(declare-fun tp!12801 () Bool)

(declare-fun b_and!37837 () Bool)

(assert (=> b!47820 (= tp!12801 b_and!37837)))

(declare-fun b!47818 () Bool)

(declare-fun b_free!5823 () Bool)

(declare-fun b_next!26243 () Bool)

(assert (=> b!47818 (= b_free!5823 (not b_next!26243))))

(declare-fun tp!12814 () Bool)

(declare-fun b_and!37839 () Bool)

(assert (=> b!47818 (= tp!12814 b_and!37839)))

(declare-fun b_free!5825 () Bool)

(declare-fun b_next!26245 () Bool)

(assert (=> b!47818 (= b_free!5825 (not b_next!26245))))

(declare-fun tp!12800 () Bool)

(declare-fun b_and!37841 () Bool)

(assert (=> b!47818 (= tp!12800 b_and!37841)))

(declare-fun b_free!5827 () Bool)

(declare-fun b_next!26247 () Bool)

(assert (=> b!47818 (= b_free!5827 (not b_next!26247))))

(declare-fun tp!12805 () Bool)

(declare-fun b_and!37843 () Bool)

(assert (=> b!47818 (= tp!12805 b_and!37843)))

(declare-fun b!47817 () Bool)

(declare-fun b_free!5829 () Bool)

(declare-fun b_next!26249 () Bool)

(assert (=> b!47817 (= b_free!5829 (not b_next!26249))))

(declare-fun tp!12803 () Bool)

(declare-fun b_and!37845 () Bool)

(assert (=> b!47817 (= tp!12803 b_and!37845)))

(declare-fun b_free!5831 () Bool)

(declare-fun b_next!26251 () Bool)

(assert (=> b!47817 (= b_free!5831 (not b_next!26251))))

(declare-fun tp!12808 () Bool)

(declare-fun b_and!37847 () Bool)

(assert (=> b!47817 (= tp!12808 b_and!37847)))

(declare-fun b_free!5833 () Bool)

(declare-fun b_next!26253 () Bool)

(assert (=> b!47817 (= b_free!5833 (not b_next!26253))))

(declare-fun tp!12802 () Bool)

(declare-fun b_and!37849 () Bool)

(assert (=> b!47817 (= tp!12802 b_and!37849)))

(declare-fun b!47822 () Bool)

(declare-fun b_free!5835 () Bool)

(declare-fun b_next!26255 () Bool)

(assert (=> b!47822 (= b_free!5835 (not b_next!26255))))

(declare-fun tp!12813 () Bool)

(declare-fun b_and!37851 () Bool)

(assert (=> b!47822 (= tp!12813 b_and!37851)))

(declare-fun b_free!5837 () Bool)

(declare-fun b_next!26257 () Bool)

(assert (=> b!47822 (= b_free!5837 (not b_next!26257))))

(declare-fun tp!12806 () Bool)

(declare-fun b_and!37853 () Bool)

(assert (=> b!47822 (= tp!12806 b_and!37853)))

(declare-fun b_free!5839 () Bool)

(declare-fun b_next!26259 () Bool)

(assert (=> b!47822 (= b_free!5839 (not b_next!26259))))

(declare-fun tp!12804 () Bool)

(declare-fun b_and!37855 () Bool)

(assert (=> b!47822 (= tp!12804 b_and!37855)))

(declare-fun b!47825 () Bool)

(assert (=> b!47825 true))

(assert (=> b!47825 true))

(assert (=> b!47825 true))

(declare-fun b_next!26261 () Bool)

(declare-fun lambda!6997 () Int)

(declare-datatypes () ((Nat!223 (Zero!207) (Succ!204 (n!1360 Nat!223)))))

(declare-datatypes () ((Unit!654 (Unit!655))))

(declare-datatypes () ((RAEqEvidence!368 (RAEqEvidence!369 (x!17628 Int) (y!1523 Int) (evidence!636 Int)))))

(declare-fun prev!760 () RAEqEvidence!368)

(assert (=> b!47820 (= b_next!26237 (or (and b!47825 (= lambda!6997 (x!17628 prev!760))) b_next!26261))))

(declare-fun b_next!26263 () Bool)

(declare-fun x$40!15 () RAEqEvidence!368)

(assert (=> b!47817 (= b_next!26251 (or (and b!47825 (= lambda!6997 (y!1523 x$40!15))) b_next!26263))))

(declare-fun b_next!26265 () Bool)

(assert (=> b!47817 (= b_next!26249 (or (and b!47825 (= lambda!6997 (x!17628 x$40!15))) b_next!26265))))

(declare-fun thiss!6377 () RAEqEvidence!368)

(declare-fun b_next!26267 () Bool)

(assert (=> b!47822 (= b_next!26257 (or (and b!47825 (= lambda!6997 (y!1523 thiss!6377))) b_next!26267))))

(declare-fun b_next!26269 () Bool)

(assert (=> b!47820 (= b_next!26239 (or (and b!47825 (= lambda!6997 (y!1523 prev!760))) b_next!26269))))

(declare-fun b_next!26271 () Bool)

(declare-datatypes () ((RAEqEvidence!370 (RAEqEvidence!371 (x!17629 Int) (y!1524 Int) (evidence!637 Int)))))

(declare-fun x$41!67 () RAEqEvidence!370)

(assert (=> b!47827 (= b_next!26233 (or (and b!47825 (= lambda!6997 (y!1524 x$41!67))) b_next!26271))))

(declare-fun b_next!26273 () Bool)

(assert (=> b!47827 (= b_next!26231 (or (and b!47825 (= lambda!6997 (x!17629 x$41!67))) b_next!26273))))

(declare-fun b_next!26275 () Bool)

(assert (=> b!47822 (= b_next!26255 (or (and b!47825 (= lambda!6997 (x!17628 thiss!6377))) b_next!26275))))

(declare-fun b_next!26277 () Bool)

(declare-fun x$39!40 () RAEqEvidence!368)

(assert (=> b!47818 (= b_next!26245 (or (and b!47825 (= lambda!6997 (y!1523 x$39!40))) b_next!26277))))

(declare-fun b_next!26279 () Bool)

(assert (=> b!47818 (= b_next!26243 (or (and b!47825 (= lambda!6997 (x!17628 x$39!40))) b_next!26279))))

(declare-fun m!50715 () Bool)

(assert (=> b!47825 m!50715))

(declare-fun lambda!6998 () Int)

(declare-fun dynLambda!807 (Int) Bool)

(assert (=> (and b!47827 b!47825 (= (dynLambda!807 lambda!6998) (dynLambda!807 (evidence!637 x$41!67)))) (= lambda!6998 (evidence!637 x$41!67))))

(declare-fun b_next!26281 () Bool)

(assert (=> b!47827 (= b_next!26235 (or (and b!47825 (= lambda!6998 (evidence!637 x$41!67))) b_next!26281))))

(declare-fun bs!18731 () Bool)

(declare-fun b!47821 () Bool)

(assert (= bs!18731 (and b!47821 b!47825)))

(declare-fun lambda!6999 () Int)

(assert (=> bs!18731 (not (= lambda!6999 lambda!6997))))

(assert (=> b!47821 true))

(assert (=> b!47821 true))

(assert (=> b!47821 true))

(declare-fun b_next!26283 () Bool)

(assert (=> b!47820 (= b_next!26261 (or (and b!47821 (= lambda!6999 (x!17628 prev!760))) b_next!26283))))

(declare-fun b_next!26285 () Bool)

(assert (=> b!47817 (= b_next!26263 (or (and b!47821 (= lambda!6999 (y!1523 x$40!15))) b_next!26285))))

(declare-fun b_next!26287 () Bool)

(assert (=> b!47817 (= b_next!26265 (or (and b!47821 (= lambda!6999 (x!17628 x$40!15))) b_next!26287))))

(declare-fun b_next!26289 () Bool)

(assert (=> b!47822 (= b_next!26267 (or (and b!47821 (= lambda!6999 (y!1523 thiss!6377))) b_next!26289))))

(declare-fun b_next!26291 () Bool)

(assert (=> b!47820 (= b_next!26269 (or (and b!47821 (= lambda!6999 (y!1523 prev!760))) b_next!26291))))

(declare-fun b_next!26293 () Bool)

(assert (=> b!47827 (= b_next!26271 (or (and b!47821 (= lambda!6999 (y!1524 x$41!67))) b_next!26293))))

(declare-fun b_next!26295 () Bool)

(assert (=> b!47827 (= b_next!26273 (or (and b!47821 (= lambda!6999 (x!17629 x$41!67))) b_next!26295))))

(declare-fun b_next!26297 () Bool)

(assert (=> b!47822 (= b_next!26275 (or (and b!47821 (= lambda!6999 (x!17628 thiss!6377))) b_next!26297))))

(declare-fun b_next!26299 () Bool)

(assert (=> b!47818 (= b_next!26277 (or (and b!47821 (= lambda!6999 (y!1523 x$39!40))) b_next!26299))))

(declare-fun b_next!26301 () Bool)

(assert (=> b!47818 (= b_next!26279 (or (and b!47821 (= lambda!6999 (x!17628 x$39!40))) b_next!26301))))

(assert (=> b!47821 true))

(assert (=> b!47821 true))

(assert (=> b!47821 true))

(declare-fun b_next!26303 () Bool)

(declare-fun lambda!7000 () Int)

(assert (=> b!47820 (= b_next!26241 (or (and b!47821 (= lambda!7000 (evidence!636 prev!760))) b_next!26303))))

(declare-fun b_next!26305 () Bool)

(assert (=> b!47818 (= b_next!26247 (or (and b!47821 (= lambda!7000 (evidence!636 x$39!40))) b_next!26305))))

(declare-fun b_next!26307 () Bool)

(assert (=> b!47817 (= b_next!26253 (or (and b!47821 (= lambda!7000 (evidence!636 x$40!15))) b_next!26307))))

(declare-fun b_next!26309 () Bool)

(assert (=> b!47822 (= b_next!26259 (or (and b!47821 (= lambda!7000 (evidence!636 thiss!6377))) b_next!26309))))

(declare-fun bs!18732 () Bool)

(declare-fun b!47824 () Bool)

(assert (= bs!18732 (and b!47824 b!47825)))

(declare-fun lambda!7001 () Int)

(assert (=> bs!18732 (not (= lambda!7001 lambda!6997))))

(declare-fun bs!18733 () Bool)

(assert (= bs!18733 (and b!47824 b!47821)))

(assert (=> bs!18733 (not (= lambda!7001 lambda!6999))))

(assert (=> b!47824 true))

(assert (=> b!47824 true))

(assert (=> b!47824 true))

(declare-fun b_next!26311 () Bool)

(assert (=> b!47820 (= b_next!26283 (or (and b!47824 (= lambda!7001 (x!17628 prev!760))) b_next!26311))))

(declare-fun b_next!26313 () Bool)

(assert (=> b!47817 (= b_next!26285 (or (and b!47824 (= lambda!7001 (y!1523 x$40!15))) b_next!26313))))

(declare-fun b_next!26315 () Bool)

(assert (=> b!47817 (= b_next!26287 (or (and b!47824 (= lambda!7001 (x!17628 x$40!15))) b_next!26315))))

(declare-fun b_next!26317 () Bool)

(assert (=> b!47822 (= b_next!26289 (or (and b!47824 (= lambda!7001 (y!1523 thiss!6377))) b_next!26317))))

(declare-fun b_next!26319 () Bool)

(assert (=> b!47820 (= b_next!26291 (or (and b!47824 (= lambda!7001 (y!1523 prev!760))) b_next!26319))))

(declare-fun b_next!26321 () Bool)

(assert (=> b!47827 (= b_next!26293 (or (and b!47824 (= lambda!7001 (y!1524 x$41!67))) b_next!26321))))

(declare-fun b_next!26323 () Bool)

(assert (=> b!47827 (= b_next!26295 (or (and b!47824 (= lambda!7001 (x!17629 x$41!67))) b_next!26323))))

(declare-fun b_next!26325 () Bool)

(assert (=> b!47822 (= b_next!26297 (or (and b!47824 (= lambda!7001 (x!17628 thiss!6377))) b_next!26325))))

(declare-fun b_next!26327 () Bool)

(assert (=> b!47818 (= b_next!26299 (or (and b!47824 (= lambda!7001 (y!1523 x$39!40))) b_next!26327))))

(declare-fun b_next!26329 () Bool)

(assert (=> b!47818 (= b_next!26301 (or (and b!47824 (= lambda!7001 (x!17628 x$39!40))) b_next!26329))))

(declare-fun lambda!7002 () Int)

(assert (=> bs!18733 (not (= lambda!7002 lambda!7000))))

(assert (=> b!47824 true))

(assert (=> b!47824 true))

(assert (=> b!47824 true))

(declare-fun b_next!26331 () Bool)

(assert (=> b!47820 (= b_next!26303 (or (and b!47824 (= lambda!7002 (evidence!636 prev!760))) b_next!26331))))

(declare-fun b_next!26333 () Bool)

(assert (=> b!47818 (= b_next!26305 (or (and b!47824 (= lambda!7002 (evidence!636 x$39!40))) b_next!26333))))

(declare-fun b_next!26335 () Bool)

(assert (=> b!47817 (= b_next!26307 (or (and b!47824 (= lambda!7002 (evidence!636 x$40!15))) b_next!26335))))

(declare-fun b_next!26337 () Bool)

(assert (=> b!47822 (= b_next!26309 (or (and b!47824 (= lambda!7002 (evidence!636 thiss!6377))) b_next!26337))))

(declare-fun bs!18734 () Bool)

(declare-fun b!47819 () Bool)

(assert (= bs!18734 (and b!47819 b!47825)))

(declare-fun lambda!7003 () Int)

(assert (=> bs!18734 (not (= lambda!7003 lambda!6997))))

(declare-fun bs!18735 () Bool)

(assert (= bs!18735 (and b!47819 b!47821)))

(assert (=> bs!18735 (not (= lambda!7003 lambda!6999))))

(declare-fun bs!18736 () Bool)

(assert (= bs!18736 (and b!47819 b!47824)))

(assert (=> bs!18736 (not (= lambda!7003 lambda!7001))))

(assert (=> b!47819 true))

(assert (=> b!47819 true))

(assert (=> b!47819 true))

(declare-fun b_next!26339 () Bool)

(assert (=> b!47820 (= b_next!26311 (or (and b!47819 (= lambda!7003 (x!17628 prev!760))) b_next!26339))))

(declare-fun b_next!26341 () Bool)

(assert (=> b!47817 (= b_next!26313 (or (and b!47819 (= lambda!7003 (y!1523 x$40!15))) b_next!26341))))

(declare-fun b_next!26343 () Bool)

(assert (=> b!47817 (= b_next!26315 (or (and b!47819 (= lambda!7003 (x!17628 x$40!15))) b_next!26343))))

(declare-fun b_next!26345 () Bool)

(assert (=> b!47822 (= b_next!26317 (or (and b!47819 (= lambda!7003 (y!1523 thiss!6377))) b_next!26345))))

(declare-fun b_next!26347 () Bool)

(assert (=> b!47820 (= b_next!26319 (or (and b!47819 (= lambda!7003 (y!1523 prev!760))) b_next!26347))))

(declare-fun b_next!26349 () Bool)

(assert (=> b!47827 (= b_next!26321 (or (and b!47819 (= lambda!7003 (y!1524 x$41!67))) b_next!26349))))

(declare-fun b_next!26351 () Bool)

(assert (=> b!47827 (= b_next!26323 (or (and b!47819 (= lambda!7003 (x!17629 x$41!67))) b_next!26351))))

(declare-fun b_next!26353 () Bool)

(assert (=> b!47822 (= b_next!26325 (or (and b!47819 (= lambda!7003 (x!17628 thiss!6377))) b_next!26353))))

(declare-fun b_next!26355 () Bool)

(assert (=> b!47818 (= b_next!26327 (or (and b!47819 (= lambda!7003 (y!1523 x$39!40))) b_next!26355))))

(declare-fun b_next!26357 () Bool)

(assert (=> b!47818 (= b_next!26329 (or (and b!47819 (= lambda!7003 (x!17628 x$39!40))) b_next!26357))))

(declare-fun lambda!7004 () Int)

(assert (=> bs!18734 (not (= lambda!7004 lambda!6997))))

(assert (=> bs!18735 (not (= lambda!7004 lambda!6999))))

(assert (=> bs!18736 (not (= lambda!7004 lambda!7001))))

(assert (=> b!47819 (not (= lambda!7004 lambda!7003))))

(assert (=> b!47819 true))

(assert (=> b!47819 true))

(assert (=> b!47819 true))

(declare-fun b_next!26359 () Bool)

(assert (=> b!47820 (= b_next!26339 (or (and b!47819 (= lambda!7004 (x!17628 prev!760))) b_next!26359))))

(declare-fun b_next!26361 () Bool)

(assert (=> b!47817 (= b_next!26341 (or (and b!47819 (= lambda!7004 (y!1523 x$40!15))) b_next!26361))))

(declare-fun b_next!26363 () Bool)

(assert (=> b!47817 (= b_next!26343 (or (and b!47819 (= lambda!7004 (x!17628 x$40!15))) b_next!26363))))

(declare-fun b_next!26365 () Bool)

(assert (=> b!47822 (= b_next!26345 (or (and b!47819 (= lambda!7004 (y!1523 thiss!6377))) b_next!26365))))

(declare-fun b_next!26367 () Bool)

(assert (=> b!47820 (= b_next!26347 (or (and b!47819 (= lambda!7004 (y!1523 prev!760))) b_next!26367))))

(declare-fun b_next!26369 () Bool)

(assert (=> b!47827 (= b_next!26349 (or (and b!47819 (= lambda!7004 (y!1524 x$41!67))) b_next!26369))))

(declare-fun b_next!26371 () Bool)

(assert (=> b!47827 (= b_next!26351 (or (and b!47819 (= lambda!7004 (x!17629 x$41!67))) b_next!26371))))

(declare-fun b_next!26373 () Bool)

(assert (=> b!47822 (= b_next!26353 (or (and b!47819 (= lambda!7004 (x!17628 thiss!6377))) b_next!26373))))

(declare-fun b_next!26375 () Bool)

(assert (=> b!47818 (= b_next!26355 (or (and b!47819 (= lambda!7004 (y!1523 x$39!40))) b_next!26375))))

(declare-fun b_next!26377 () Bool)

(assert (=> b!47818 (= b_next!26357 (or (and b!47819 (= lambda!7004 (x!17628 x$39!40))) b_next!26377))))

(declare-fun lambda!7005 () Int)

(assert (=> bs!18735 (not (= lambda!7005 lambda!7000))))

(assert (=> bs!18736 (not (= lambda!7005 lambda!7002))))

(assert (=> b!47819 true))

(assert (=> b!47819 true))

(assert (=> b!47819 true))

(declare-fun b_next!26379 () Bool)

(assert (=> b!47820 (= b_next!26331 (or (and b!47819 (= lambda!7005 (evidence!636 prev!760))) b_next!26379))))

(declare-fun b_next!26381 () Bool)

(assert (=> b!47818 (= b_next!26333 (or (and b!47819 (= lambda!7005 (evidence!636 x$39!40))) b_next!26381))))

(declare-fun b_next!26383 () Bool)

(assert (=> b!47817 (= b_next!26335 (or (and b!47819 (= lambda!7005 (evidence!636 x$40!15))) b_next!26383))))

(declare-fun b_next!26385 () Bool)

(assert (=> b!47822 (= b_next!26337 (or (and b!47819 (= lambda!7005 (evidence!636 thiss!6377))) b_next!26385))))

(declare-fun b!47816 () Bool)

(declare-fun res!22427 () Bool)

(declare-fun e!24931 () Bool)

(assert (=> b!47816 (=> (not res!22427) (not e!24931))))

(declare-fun keepEvidence!48 (Unit!654) Bool)

(declare-fun dynLambda!808 (Int) Unit!654)

(assert (=> b!47816 (= res!22427 (keepEvidence!48 (dynLambda!808 (evidence!636 prev!760))))))

(declare-fun e!24927 () Bool)

(assert (=> b!47817 (= e!24927 (and tp!12803 tp!12808 tp!12802))))

(declare-fun res!22429 () Bool)

(assert (=> start!6450 (=> (not res!22429) (not e!24931))))

(declare-fun n1!336 () Nat!223)

(assert (=> start!6450 (= res!22429 (not (is-Zero!207 n1!336)))))

(assert (=> start!6450 e!24931))

(assert (=> start!6450 true))

(declare-fun e!24928 () Bool)

(declare-fun inv!833 (RAEqEvidence!368) Bool)

(assert (=> start!6450 (and (inv!833 x$39!40) e!24928)))

(declare-fun e!24932 () Bool)

(assert (=> start!6450 (and (inv!833 thiss!6377) e!24932)))

(declare-fun e!24929 () Bool)

(declare-fun inv!834 (RAEqEvidence!370) Bool)

(assert (=> start!6450 (and (inv!834 x$41!67) e!24929)))

(assert (=> start!6450 (and (inv!833 x$40!15) e!24927)))

(declare-fun e!24930 () Bool)

(assert (=> start!6450 (and (inv!833 prev!760) e!24930)))

(assert (=> b!47818 (= e!24928 (and tp!12814 tp!12800 tp!12805))))

(declare-fun res!22424 () Bool)

(assert (=> b!47819 (=> (not res!22424) (not e!24931))))

(assert (=> b!47819 (= res!22424 (= thiss!6377 (RAEqEvidence!369 lambda!7003 lambda!7004 lambda!7005)))))

(assert (=> b!47820 (= e!24930 (and tp!12811 tp!12812 tp!12801))))

(declare-fun res!22426 () Bool)

(assert (=> b!47821 (=> (not res!22426) (not e!24931))))

(assert (=> b!47821 (= res!22426 (= x$40!15 (RAEqEvidence!369 lambda!6999 lambda!6999 lambda!7000)))))

(assert (=> b!47822 (= e!24932 (and tp!12813 tp!12806 tp!12804))))

(declare-fun b!47823 () Bool)

(declare-fun dynLambda!809 (Int) Nat!223)

(assert (=> b!47823 (= e!24931 (not (= (dynLambda!809 (y!1523 prev!760)) (dynLambda!809 (x!17628 thiss!6377)))))))

(declare-fun res!22425 () Bool)

(assert (=> b!47824 (=> (not res!22425) (not e!24931))))

(assert (=> b!47824 (= res!22425 (= x$39!40 (RAEqEvidence!369 lambda!7001 lambda!7001 lambda!7002)))))

(declare-fun res!22428 () Bool)

(assert (=> b!47825 (=> (not res!22428) (not e!24931))))

(assert (=> b!47825 (= res!22428 (= x$41!67 (RAEqEvidence!371 lambda!6997 lambda!6997 lambda!6998)))))

(declare-fun b!47826 () Bool)

(declare-fun res!22430 () Bool)

(assert (=> b!47826 (=> (not res!22430) (not e!24931))))

(assert (=> b!47826 (= res!22430 (= prev!760 x$39!40))))

(assert (=> b!47827 (= e!24929 (and tp!12807 tp!12810 tp!12809))))

(assert (= (and start!6450 res!22429) b!47825))

(assert (= (and b!47825 res!22428) b!47821))

(assert (= (and b!47821 res!22426) b!47824))

(assert (= (and b!47824 res!22425) b!47819))

(assert (= (and b!47819 res!22424) b!47826))

(assert (= (and b!47826 res!22430) b!47816))

(assert (= (and b!47816 res!22427) b!47823))

(assert (= start!6450 b!47818))

(assert (= start!6450 b!47822))

(assert (= start!6450 b!47827))

(assert (= start!6450 b!47817))

(assert (= start!6450 b!47820))

(declare-fun b_lambda!12617 () Bool)

(assert (=> (not b_lambda!12617) (not b!47816)))

(declare-fun t!29241 () Bool)

(declare-fun tb!28419 () Bool)

(assert (=> (and b!47820 (= (evidence!636 prev!760) (evidence!636 prev!760)) t!29241) tb!28419))

(declare-fun result!28695 () Bool)

(assert (=> tb!28419 (= result!28695 true)))

(assert (=> b!47816 t!29241))

(declare-fun b_and!37857 () Bool)

(assert (= b_and!37837 (and (=> t!29241 result!28695) b_and!37857)))

(declare-fun tb!28421 () Bool)

(declare-fun t!29243 () Bool)

(assert (=> (and b!47818 (= (evidence!636 x$39!40) (evidence!636 prev!760)) t!29243) tb!28421))

(declare-fun result!28697 () Bool)

(assert (=> tb!28421 (= result!28697 true)))

(assert (=> b!47816 t!29243))

(declare-fun b_and!37859 () Bool)

(assert (= b_and!37843 (and (=> t!29243 result!28697) b_and!37859)))

(declare-fun t!29245 () Bool)

(declare-fun tb!28423 () Bool)

(assert (=> (and b!47817 (= (evidence!636 x$40!15) (evidence!636 prev!760)) t!29245) tb!28423))

(declare-fun result!28699 () Bool)

(assert (=> tb!28423 (= result!28699 true)))

(assert (=> b!47816 t!29245))

(declare-fun b_and!37861 () Bool)

(assert (= b_and!37849 (and (=> t!29245 result!28699) b_and!37861)))

(declare-fun tb!28425 () Bool)

(declare-fun t!29247 () Bool)

(assert (=> (and b!47822 (= (evidence!636 thiss!6377) (evidence!636 prev!760)) t!29247) tb!28425))

(declare-fun result!28701 () Bool)

(assert (=> tb!28425 (= result!28701 true)))

(assert (=> b!47816 t!29247))

(declare-fun b_and!37863 () Bool)

(assert (= b_and!37855 (and (=> t!29247 result!28701) b_and!37863)))

(declare-fun b_lambda!12619 () Bool)

(assert (=> (not b_lambda!12619) (not b!47823)))

(declare-fun tb!28427 () Bool)

(declare-fun t!29249 () Bool)

(assert (=> (and b!47827 (= (x!17629 x$41!67) (y!1523 prev!760)) t!29249) tb!28427))

(declare-fun result!28703 () Bool)

(assert (=> tb!28427 (= result!28703 true)))

(assert (=> b!47823 t!29249))

(declare-fun b_and!37865 () Bool)

(assert (= b_and!37827 (and (=> t!29249 result!28703) b_and!37865)))

(declare-fun tb!28429 () Bool)

(declare-fun t!29251 () Bool)

(assert (=> (and b!47822 (= (x!17628 thiss!6377) (y!1523 prev!760)) t!29251) tb!28429))

(declare-fun result!28705 () Bool)

(assert (=> tb!28429 (= result!28705 true)))

(assert (=> b!47823 t!29251))

(declare-fun b_and!37867 () Bool)

(assert (= b_and!37851 (and (=> t!29251 result!28705) b_and!37867)))

(declare-fun t!29253 () Bool)

(declare-fun tb!28431 () Bool)

(assert (=> (and b!47818 (= (y!1523 x$39!40) (y!1523 prev!760)) t!29253) tb!28431))

(declare-fun result!28707 () Bool)

(assert (=> tb!28431 (= result!28707 true)))

(assert (=> b!47823 t!29253))

(declare-fun b_and!37869 () Bool)

(assert (= b_and!37841 (and (=> t!29253 result!28707) b_and!37869)))

(declare-fun tb!28433 () Bool)

(declare-fun t!29255 () Bool)

(assert (=> (and b!47822 (= (y!1523 thiss!6377) (y!1523 prev!760)) t!29255) tb!28433))

(declare-fun result!28709 () Bool)

(assert (=> tb!28433 (= result!28709 true)))

(assert (=> b!47823 t!29255))

(declare-fun b_and!37871 () Bool)

(assert (= b_and!37853 (and (=> t!29255 result!28709) b_and!37871)))

(declare-fun tb!28435 () Bool)

(declare-fun t!29257 () Bool)

(assert (=> (and b!47818 (= (x!17628 x$39!40) (y!1523 prev!760)) t!29257) tb!28435))

(declare-fun result!28711 () Bool)

(assert (=> tb!28435 (= result!28711 true)))

(assert (=> b!47823 t!29257))

(declare-fun b_and!37873 () Bool)

(assert (= b_and!37839 (and (=> t!29257 result!28711) b_and!37873)))

(declare-fun tb!28437 () Bool)

(declare-fun t!29259 () Bool)

(assert (=> (and b!47817 (= (y!1523 x$40!15) (y!1523 prev!760)) t!29259) tb!28437))

(declare-fun result!28713 () Bool)

(assert (=> tb!28437 (= result!28713 true)))

(assert (=> b!47823 t!29259))

(declare-fun b_and!37875 () Bool)

(assert (= b_and!37847 (and (=> t!29259 result!28713) b_and!37875)))

(declare-fun t!29261 () Bool)

(declare-fun tb!28439 () Bool)

(assert (=> (and b!47820 (= (x!17628 prev!760) (y!1523 prev!760)) t!29261) tb!28439))

(declare-fun result!28715 () Bool)

(assert (=> tb!28439 (= result!28715 true)))

(assert (=> b!47823 t!29261))

(declare-fun b_and!37877 () Bool)

(assert (= b_and!37833 (and (=> t!29261 result!28715) b_and!37877)))

(declare-fun tb!28441 () Bool)

(declare-fun t!29263 () Bool)

(assert (=> (and b!47817 (= (x!17628 x$40!15) (y!1523 prev!760)) t!29263) tb!28441))

(declare-fun result!28717 () Bool)

(assert (=> tb!28441 (= result!28717 true)))

(assert (=> b!47823 t!29263))

(declare-fun b_and!37879 () Bool)

(assert (= b_and!37845 (and (=> t!29263 result!28717) b_and!37879)))

(declare-fun t!29265 () Bool)

(declare-fun tb!28443 () Bool)

(assert (=> (and b!47820 (= (y!1523 prev!760) (y!1523 prev!760)) t!29265) tb!28443))

(declare-fun result!28719 () Bool)

(assert (=> tb!28443 (= result!28719 true)))

(assert (=> b!47823 t!29265))

(declare-fun b_and!37881 () Bool)

(assert (= b_and!37835 (and (=> t!29265 result!28719) b_and!37881)))

(declare-fun tb!28445 () Bool)

(declare-fun t!29267 () Bool)

(assert (=> (and b!47827 (= (y!1524 x$41!67) (y!1523 prev!760)) t!29267) tb!28445))

(declare-fun result!28721 () Bool)

(assert (=> tb!28445 (= result!28721 true)))

(assert (=> b!47823 t!29267))

(declare-fun b_and!37883 () Bool)

(assert (= b_and!37829 (and (=> t!29267 result!28721) b_and!37883)))

(declare-fun b_lambda!12621 () Bool)

(assert (=> (not b_lambda!12621) (not b!47823)))

(declare-fun tb!28447 () Bool)

(declare-fun t!29269 () Bool)

(assert (=> (and b!47827 (= (y!1524 x$41!67) (x!17628 thiss!6377)) t!29269) tb!28447))

(declare-fun result!28723 () Bool)

(assert (=> tb!28447 (= result!28723 true)))

(assert (=> b!47823 t!29269))

(declare-fun b_and!37885 () Bool)

(assert (= b_and!37883 (and (=> t!29269 result!28723) b_and!37885)))

(declare-fun t!29271 () Bool)

(declare-fun tb!28449 () Bool)

(assert (=> (and b!47817 (= (x!17628 x$40!15) (x!17628 thiss!6377)) t!29271) tb!28449))

(declare-fun result!28725 () Bool)

(assert (=> tb!28449 (= result!28725 true)))

(assert (=> b!47823 t!29271))

(declare-fun b_and!37887 () Bool)

(assert (= b_and!37879 (and (=> t!29271 result!28725) b_and!37887)))

(declare-fun t!29273 () Bool)

(declare-fun tb!28451 () Bool)

(assert (=> (and b!47818 (= (y!1523 x$39!40) (x!17628 thiss!6377)) t!29273) tb!28451))

(declare-fun result!28727 () Bool)

(assert (=> tb!28451 (= result!28727 true)))

(assert (=> b!47823 t!29273))

(declare-fun b_and!37889 () Bool)

(assert (= b_and!37869 (and (=> t!29273 result!28727) b_and!37889)))

(declare-fun t!29275 () Bool)

(declare-fun tb!28453 () Bool)

(assert (=> (and b!47820 (= (y!1523 prev!760) (x!17628 thiss!6377)) t!29275) tb!28453))

(declare-fun result!28729 () Bool)

(assert (=> tb!28453 (= result!28729 true)))

(assert (=> b!47823 t!29275))

(declare-fun b_and!37891 () Bool)

(assert (= b_and!37881 (and (=> t!29275 result!28729) b_and!37891)))

(declare-fun t!29277 () Bool)

(declare-fun tb!28455 () Bool)

(assert (=> (and b!47820 (= (x!17628 prev!760) (x!17628 thiss!6377)) t!29277) tb!28455))

(declare-fun result!28731 () Bool)

(assert (=> tb!28455 (= result!28731 true)))

(assert (=> b!47823 t!29277))

(declare-fun b_and!37893 () Bool)

(assert (= b_and!37877 (and (=> t!29277 result!28731) b_and!37893)))

(declare-fun tb!28457 () Bool)

(declare-fun t!29279 () Bool)

(assert (=> (and b!47818 (= (x!17628 x$39!40) (x!17628 thiss!6377)) t!29279) tb!28457))

(declare-fun result!28733 () Bool)

(assert (=> tb!28457 (= result!28733 true)))

(assert (=> b!47823 t!29279))

(declare-fun b_and!37895 () Bool)

(assert (= b_and!37873 (and (=> t!29279 result!28733) b_and!37895)))

(declare-fun t!29281 () Bool)

(declare-fun tb!28459 () Bool)

(assert (=> (and b!47817 (= (y!1523 x$40!15) (x!17628 thiss!6377)) t!29281) tb!28459))

(declare-fun result!28735 () Bool)

(assert (=> tb!28459 (= result!28735 true)))

(assert (=> b!47823 t!29281))

(declare-fun b_and!37897 () Bool)

(assert (= b_and!37875 (and (=> t!29281 result!28735) b_and!37897)))

(declare-fun tb!28461 () Bool)

(declare-fun t!29283 () Bool)

(assert (=> (and b!47827 (= (x!17629 x$41!67) (x!17628 thiss!6377)) t!29283) tb!28461))

(declare-fun result!28737 () Bool)

(assert (=> tb!28461 (= result!28737 true)))

(assert (=> b!47823 t!29283))

(declare-fun b_and!37899 () Bool)

(assert (= b_and!37865 (and (=> t!29283 result!28737) b_and!37899)))

(declare-fun t!29285 () Bool)

(declare-fun tb!28463 () Bool)

(assert (=> (and b!47822 (= (x!17628 thiss!6377) (x!17628 thiss!6377)) t!29285) tb!28463))

(declare-fun result!28739 () Bool)

(assert (=> tb!28463 (= result!28739 true)))

(assert (=> b!47823 t!29285))

(declare-fun b_and!37901 () Bool)

(assert (= b_and!37867 (and (=> t!29285 result!28739) b_and!37901)))

(declare-fun t!29287 () Bool)

(declare-fun tb!28465 () Bool)

(assert (=> (and b!47822 (= (y!1523 thiss!6377) (x!17628 thiss!6377)) t!29287) tb!28465))

(declare-fun result!28741 () Bool)

(assert (=> tb!28465 (= result!28741 true)))

(assert (=> b!47823 t!29287))

(declare-fun b_and!37903 () Bool)

(assert (= b_and!37871 (and (=> t!29287 result!28741) b_and!37903)))

(declare-fun m!50717 () Bool)

(assert (=> b!47816 m!50717))

(assert (=> b!47816 m!50717))

(declare-fun m!50719 () Bool)

(assert (=> b!47816 m!50719))

(declare-fun m!50721 () Bool)

(assert (=> start!6450 m!50721))

(declare-fun m!50723 () Bool)

(assert (=> start!6450 m!50723))

(declare-fun m!50725 () Bool)

(assert (=> start!6450 m!50725))

(declare-fun m!50727 () Bool)

(assert (=> start!6450 m!50727))

(declare-fun m!50729 () Bool)

(assert (=> start!6450 m!50729))

(declare-fun m!50731 () Bool)

(assert (=> b!47823 m!50731))

(declare-fun m!50733 () Bool)

(assert (=> b!47823 m!50733))

(push 1)

(assert b_and!37899)

(assert (not b_next!26383))

(assert b_and!37889)

(assert (not b_next!26367))

(assert b_and!37887)

(assert (not b_next!26377))

(assert (not b_next!26379))

(assert (not b_next!26369))

(assert b_and!37891)

(assert b_and!37893)

(assert b_and!37901)

(assert (not b_next!26359))

(assert b_and!37895)

(assert (not b_next!26375))

(assert (not b_lambda!12621))

(assert b_and!37831)

(assert (not b_next!26381))

(assert (not b_next!26371))

(assert (not b!47816))

(assert b_and!37897)

(assert (not b!47825))

(assert b_and!37903)

(assert (not b_next!26385))

(assert (not b_next!26281))

(assert (not b_lambda!12619))

(assert (not b_next!26361))

(assert (not b_next!26365))

(assert (not b_next!26373))

(assert b_and!37863)

(assert (not start!6450))

(assert (not b_next!26363))

(assert b_and!37885)

(assert (not b_lambda!12617))

(assert b_and!37857)

(assert b_and!37859)

(assert b_and!37861)

(check-sat)

(pop 1)

(push 1)

(assert b_and!37899)

(assert (not b_next!26383))

(assert b_and!37889)

(assert (not b_next!26367))

(assert b_and!37887)

(assert (not b_next!26377))

(assert (not b_next!26379))

(assert (not b_next!26369))

(assert b_and!37891)

(assert b_and!37893)

(assert b_and!37901)

(assert (not b_next!26359))

(assert b_and!37895)

(assert (not b_next!26375))

(assert b_and!37831)

(assert (not b_next!26381))

(assert (not b_next!26371))

(assert b_and!37897)

(assert b_and!37903)

(assert (not b_next!26385))

(assert (not b_next!26281))

(assert (not b_next!26361))

(assert (not b_next!26365))

(assert (not b_next!26373))

(assert b_and!37863)

(assert (not b_next!26363))

(assert b_and!37885)

(assert b_and!37857)

(assert b_and!37859)

(assert b_and!37861)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!12623 () Bool)

(assert (= b_lambda!12621 (or (and b!47817 b_free!5831 (= (y!1523 x$40!15) (x!17628 thiss!6377))) (and b!47820 b_free!5819 (= (y!1523 prev!760) (x!17628 thiss!6377))) (and b!47822 b_free!5837 (= (y!1523 thiss!6377) (x!17628 thiss!6377))) (and b!47820 b_free!5817 (= (x!17628 prev!760) (x!17628 thiss!6377))) (and b!47824 (= lambda!7001 (x!17628 thiss!6377))) (and b!47825 (= lambda!6997 (x!17628 thiss!6377))) (and b!47818 b_free!5825 (= (y!1523 x$39!40) (x!17628 thiss!6377))) (and b!47827 b_free!5811 (= (x!17629 x$41!67) (x!17628 thiss!6377))) (and b!47827 b_free!5813 (= (y!1524 x$41!67) (x!17628 thiss!6377))) (and b!47819 (= lambda!7003 (x!17628 thiss!6377))) (and b!47818 b_free!5823 (= (x!17628 x$39!40) (x!17628 thiss!6377))) (and b!47817 b_free!5829 (= (x!17628 x$40!15) (x!17628 thiss!6377))) (and b!47819 (= lambda!7004 (x!17628 thiss!6377))) (and b!47821 (= lambda!6999 (x!17628 thiss!6377))) (and b!47822 b_free!5835) b_lambda!12623)))

(declare-fun bs!18737 () Bool)

(declare-fun d!33810 () Bool)

(assert (= bs!18737 (and d!33810 b!47819)))

(declare-fun n2!352 () Nat!223)

(declare-fun n3!59 () Nat!223)

(declare-fun +!5 (Nat!223 Nat!223) Nat!223)

(declare-fun *!4 (Nat!223 Nat!223) Nat!223)

(assert (=> bs!18737 (= (dynLambda!809 lambda!7003) (+!5 (*!4 n2!352 n3!59) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)))))

(declare-fun m!50735 () Bool)

(assert (=> bs!18737 m!50735))

(declare-fun m!50737 () Bool)

(assert (=> bs!18737 m!50737))

(declare-fun m!50739 () Bool)

(assert (=> bs!18737 m!50739))

(declare-fun m!50741 () Bool)

(assert (=> bs!18737 m!50741))

(assert (=> bs!18737 m!50735))

(assert (=> bs!18737 m!50739))

(assert (=> bs!18737 m!50737))

(assert (=> (and b!47819 (= lambda!7003 (x!17628 thiss!6377)) b!47823) d!33810))

(declare-fun bs!18738 () Bool)

(declare-fun d!33812 () Bool)

(assert (= bs!18738 (and d!33812 b!47825)))

(assert (=> bs!18738 (= (dynLambda!809 lambda!6997) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18738 m!50737))

(assert (=> bs!18738 m!50737))

(declare-fun m!50743 () Bool)

(assert (=> bs!18738 m!50743))

(assert (=> (and b!47825 (= lambda!6997 (x!17628 thiss!6377)) b!47823) d!33812))

(declare-fun bs!18739 () Bool)

(declare-fun d!33814 () Bool)

(assert (= bs!18739 (and d!33814 b!47821)))

(assert (=> bs!18739 (= (dynLambda!809 lambda!6999) (+!5 (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(declare-fun m!50745 () Bool)

(assert (=> bs!18739 m!50745))

(assert (=> bs!18739 m!50737))

(declare-fun m!50747 () Bool)

(assert (=> bs!18739 m!50747))

(assert (=> bs!18739 m!50737))

(assert (=> bs!18739 m!50745))

(assert (=> bs!18739 m!50737))

(assert (=> (and b!47821 (= lambda!6999 (x!17628 thiss!6377)) b!47823) d!33814))

(declare-fun bs!18740 () Bool)

(declare-fun d!33816 () Bool)

(assert (= bs!18740 (and d!33816 b!47824)))

(assert (=> bs!18740 (= (dynLambda!809 lambda!7001) (+!5 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18740 m!50735))

(assert (=> bs!18740 m!50735))

(assert (=> bs!18740 m!50739))

(assert (=> bs!18740 m!50739))

(assert (=> bs!18740 m!50737))

(declare-fun m!50749 () Bool)

(assert (=> bs!18740 m!50749))

(assert (=> bs!18740 m!50737))

(assert (=> (and b!47824 (= lambda!7001 (x!17628 thiss!6377)) b!47823) d!33816))

(declare-fun bs!18741 () Bool)

(declare-fun d!33818 () Bool)

(assert (= bs!18741 (and d!33818 b!47819)))

(assert (=> bs!18741 (= (dynLambda!809 lambda!7004) (*!4 (*!4 n1!336 n2!352) n3!59))))

(declare-fun m!50751 () Bool)

(assert (=> bs!18741 m!50751))

(assert (=> bs!18741 m!50751))

(declare-fun m!50753 () Bool)

(assert (=> bs!18741 m!50753))

(assert (=> (and b!47819 (= lambda!7004 (x!17628 thiss!6377)) b!47823) d!33818))

(declare-fun b_lambda!12625 () Bool)

(assert (= b_lambda!12619 (or (and b!47824 (= lambda!7001 (y!1523 prev!760))) (and b!47819 (= lambda!7003 (y!1523 prev!760))) (and b!47822 b_free!5835 (= (x!17628 thiss!6377) (y!1523 prev!760))) (and b!47820 b_free!5817 (= (x!17628 prev!760) (y!1523 prev!760))) (and b!47819 (= lambda!7004 (y!1523 prev!760))) (and b!47817 b_free!5829 (= (x!17628 x$40!15) (y!1523 prev!760))) (and b!47822 b_free!5837 (= (y!1523 thiss!6377) (y!1523 prev!760))) (and b!47817 b_free!5831 (= (y!1523 x$40!15) (y!1523 prev!760))) (and b!47827 b_free!5811 (= (x!17629 x$41!67) (y!1523 prev!760))) (and b!47818 b_free!5825 (= (y!1523 x$39!40) (y!1523 prev!760))) (and b!47820 b_free!5819) (and b!47825 (= lambda!6997 (y!1523 prev!760))) (and b!47818 b_free!5823 (= (x!17628 x$39!40) (y!1523 prev!760))) (and b!47821 (= lambda!6999 (y!1523 prev!760))) (and b!47827 b_free!5813 (= (y!1524 x$41!67) (y!1523 prev!760))) b_lambda!12625)))

(declare-fun bs!18742 () Bool)

(declare-fun d!33820 () Bool)

(assert (= bs!18742 (and d!33820 b!47819)))

(assert (=> bs!18742 (= (dynLambda!809 lambda!7004) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18742 m!50751))

(assert (=> bs!18742 m!50751))

(assert (=> bs!18742 m!50753))

(assert (=> (and b!47819 (= lambda!7004 (y!1523 prev!760)) b!47823) d!33820))

(declare-fun bs!18743 () Bool)

(declare-fun d!33822 () Bool)

(assert (= bs!18743 (and d!33822 b!47821)))

(assert (=> bs!18743 (= (dynLambda!809 lambda!6999) (+!5 (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18743 m!50745))

(assert (=> bs!18743 m!50737))

(assert (=> bs!18743 m!50747))

(assert (=> bs!18743 m!50737))

(assert (=> bs!18743 m!50745))

(assert (=> bs!18743 m!50737))

(assert (=> (and b!47821 (= lambda!6999 (y!1523 prev!760)) b!47823) d!33822))

(declare-fun bs!18744 () Bool)

(declare-fun d!33824 () Bool)

(assert (= bs!18744 (and d!33824 b!47819)))

(assert (=> bs!18744 (= (dynLambda!809 lambda!7003) (+!5 (*!4 n2!352 n3!59) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)))))

(assert (=> bs!18744 m!50735))

(assert (=> bs!18744 m!50737))

(assert (=> bs!18744 m!50739))

(assert (=> bs!18744 m!50741))

(assert (=> bs!18744 m!50735))

(assert (=> bs!18744 m!50739))

(assert (=> bs!18744 m!50737))

(assert (=> (and b!47819 (= lambda!7003 (y!1523 prev!760)) b!47823) d!33824))

(declare-fun bs!18745 () Bool)

(declare-fun d!33826 () Bool)

(assert (= bs!18745 (and d!33826 b!47825)))

(assert (=> bs!18745 (= (dynLambda!809 lambda!6997) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18745 m!50737))

(assert (=> bs!18745 m!50737))

(assert (=> bs!18745 m!50743))

(assert (=> (and b!47825 (= lambda!6997 (y!1523 prev!760)) b!47823) d!33826))

(declare-fun bs!18746 () Bool)

(declare-fun d!33828 () Bool)

(assert (= bs!18746 (and d!33828 b!47824)))

(assert (=> bs!18746 (= (dynLambda!809 lambda!7001) (+!5 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18746 m!50735))

(assert (=> bs!18746 m!50735))

(assert (=> bs!18746 m!50739))

(assert (=> bs!18746 m!50739))

(assert (=> bs!18746 m!50737))

(assert (=> bs!18746 m!50749))

(assert (=> bs!18746 m!50737))

(assert (=> (and b!47824 (= lambda!7001 (y!1523 prev!760)) b!47823) d!33828))

(declare-fun b_lambda!12627 () Bool)

(assert (= b_lambda!12617 (or (and b!47817 b_free!5833 (= (evidence!636 x$40!15) (evidence!636 prev!760))) (and b!47824 (= lambda!7002 (evidence!636 prev!760))) (and b!47819 (= lambda!7005 (evidence!636 prev!760))) (and b!47820 b_free!5821) (and b!47818 b_free!5827 (= (evidence!636 x$39!40) (evidence!636 prev!760))) (and b!47821 (= lambda!7000 (evidence!636 prev!760))) (and b!47822 b_free!5839 (= (evidence!636 thiss!6377) (evidence!636 prev!760))) b_lambda!12627)))

(declare-fun bs!18747 () Bool)

(declare-fun d!33830 () Bool)

(assert (= bs!18747 (and d!33830 b!47819)))

(declare-fun distributive_times2!0 (Nat!223 Nat!223 Nat!223) Unit!654)

(assert (=> bs!18747 (= (dynLambda!808 lambda!7005) (distributive_times2!0 n2!352 (*!4 (n!1360 n1!336) n2!352) n3!59))))

(assert (=> bs!18747 m!50735))

(assert (=> bs!18747 m!50735))

(declare-fun m!50755 () Bool)

(assert (=> bs!18747 m!50755))

(assert (=> (and b!47819 (= lambda!7005 (evidence!636 prev!760)) b!47816) d!33830))

(declare-fun bs!18748 () Bool)

(declare-fun d!33832 () Bool)

(assert (= bs!18748 (and d!33832 b!47821)))

(declare-fun associative_times!0 (Nat!223 Nat!223 Nat!223) Unit!654)

(assert (=> bs!18748 (= (dynLambda!808 lambda!7000) (associative_times!0 (n!1360 n1!336) n2!352 n3!59))))

(declare-fun m!50757 () Bool)

(assert (=> bs!18748 m!50757))

(assert (=> (and b!47821 (= lambda!7000 (evidence!636 prev!760)) b!47816) d!33832))

(declare-fun bs!18749 () Bool)

(declare-fun d!33834 () Bool)

(assert (= bs!18749 (and d!33834 b!47824)))

(declare-fun commutative_plus!0 (Nat!223 Nat!223) Unit!654)

(assert (=> bs!18749 (= (dynLambda!808 lambda!7002) (commutative_plus!0 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18749 m!50735))

(assert (=> bs!18749 m!50735))

(assert (=> bs!18749 m!50739))

(assert (=> bs!18749 m!50739))

(assert (=> bs!18749 m!50737))

(declare-fun m!50759 () Bool)

(assert (=> bs!18749 m!50759))

(assert (=> bs!18749 m!50737))

(assert (=> (and b!47824 (= lambda!7002 (evidence!636 prev!760)) b!47816) d!33834))

(push 1)

(assert b_and!37899)

(assert (not b_next!26383))

(assert (not bs!18741))

(assert b_and!37889)

(assert (not b_next!26367))

(assert b_and!37887)

(assert (not bs!18745))

(assert (not b_next!26377))

(assert (not bs!18749))

(assert (not b_next!26379))

(assert (not b_next!26369))

(assert (not bs!18740))

(assert b_and!37891)

(assert b_and!37893)

(assert (not b_lambda!12627))

(assert b_and!37901)

(assert (not b_next!26359))

(assert (not bs!18739))

(assert b_and!37895)

(assert (not bs!18738))

(assert (not b_lambda!12623))

(assert (not b_next!26375))

(assert b_and!37831)

(assert (not bs!18744))

(assert (not b_next!26381))

(assert (not bs!18737))

(assert (not b_next!26371))

(assert (not b!47816))

(assert (not bs!18746))

(assert b_and!37897)

(assert (not b!47825))

(assert (not bs!18743))

(assert (not bs!18748))

(assert b_and!37903)

(assert (not b_next!26385))

(assert (not b_next!26281))

(assert (not b_next!26361))

(assert (not b_next!26365))

(assert (not b_next!26373))

(assert b_and!37863)

(assert (not bs!18742))

(assert (not b_lambda!12625))

(assert (not start!6450))

(assert (not b_next!26363))

(assert b_and!37885)

(assert b_and!37857)

(assert b_and!37859)

(assert b_and!37861)

(assert (not bs!18747))

(check-sat)

(pop 1)

(push 1)

(assert b_and!37899)

(assert (not b_next!26383))

(assert b_and!37889)

(assert (not b_next!26367))

(assert b_and!37887)

(assert (not b_next!26377))

(assert (not b_next!26379))

(assert (not b_next!26369))

(assert b_and!37891)

(assert b_and!37893)

(assert b_and!37901)

(assert (not b_next!26359))

(assert b_and!37895)

(assert (not b_next!26375))

(assert b_and!37831)

(assert (not b_next!26381))

(assert (not b_next!26371))

(assert b_and!37897)

(assert b_and!37903)

(assert (not b_next!26385))

(assert (not b_next!26281))

(assert (not b_next!26361))

(assert (not b_next!26365))

(assert (not b_next!26373))

(assert b_and!37863)

(assert (not b_next!26363))

(assert b_and!37885)

(assert b_and!37857)

(assert b_and!37859)

(assert b_and!37861)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33836 () Bool)

(declare-fun c!10082 () Bool)

(assert (=> d!33836 (= c!10082 (is-Zero!207 (*!4 n2!352 n3!59)))))

(declare-fun e!24935 () Nat!223)

(assert (=> d!33836 (= (+!5 (*!4 n2!352 n3!59) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)) e!24935)))

(declare-fun b!47836 () Bool)

(assert (=> b!47836 (= e!24935 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59))))

(declare-fun b!47837 () Bool)

(assert (=> b!47837 (= e!24935 (Succ!204 (+!5 (n!1360 (*!4 n2!352 n3!59)) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59))))))

(assert (= (and d!33836 c!10082) b!47836))

(assert (= (and d!33836 (not c!10082)) b!47837))

(assert (=> b!47837 m!50739))

(declare-fun m!50761 () Bool)

(assert (=> b!47837 m!50761))

(assert (=> bs!18744 d!33836))

(declare-fun d!33838 () Bool)

(declare-fun c!10085 () Bool)

(assert (=> d!33838 (= c!10085 (is-Zero!207 n2!352))))

(declare-fun e!24938 () Nat!223)

(assert (=> d!33838 (= (*!4 n2!352 n3!59) e!24938)))

(declare-fun b!47842 () Bool)

(assert (=> b!47842 (= e!24938 Zero!207)))

(declare-fun b!47843 () Bool)

(assert (=> b!47843 (= e!24938 (+!5 (*!4 (n!1360 n2!352) n3!59) n3!59))))

(assert (= (and d!33838 c!10085) b!47842))

(assert (= (and d!33838 (not c!10085)) b!47843))

(declare-fun m!50763 () Bool)

(assert (=> b!47843 m!50763))

(assert (=> b!47843 m!50763))

(declare-fun m!50765 () Bool)

(assert (=> b!47843 m!50765))

(assert (=> bs!18744 d!33838))

(declare-fun d!33840 () Bool)

(declare-fun c!10086 () Bool)

(assert (=> d!33840 (= c!10086 (is-Zero!207 (*!4 (n!1360 n1!336) n2!352)))))

(declare-fun e!24939 () Nat!223)

(assert (=> d!33840 (= (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) e!24939)))

(declare-fun b!47844 () Bool)

(assert (=> b!47844 (= e!24939 Zero!207)))

(declare-fun b!47845 () Bool)

(assert (=> b!47845 (= e!24939 (+!5 (*!4 (n!1360 (*!4 (n!1360 n1!336) n2!352)) n3!59) n3!59))))

(assert (= (and d!33840 c!10086) b!47844))

(assert (= (and d!33840 (not c!10086)) b!47845))

(declare-fun m!50767 () Bool)

(assert (=> b!47845 m!50767))

(assert (=> b!47845 m!50767))

(declare-fun m!50769 () Bool)

(assert (=> b!47845 m!50769))

(assert (=> bs!18744 d!33840))

(declare-fun d!33842 () Bool)

(declare-fun c!10087 () Bool)

(assert (=> d!33842 (= c!10087 (is-Zero!207 (n!1360 n1!336)))))

(declare-fun e!24940 () Nat!223)

(assert (=> d!33842 (= (*!4 (n!1360 n1!336) n2!352) e!24940)))

(declare-fun b!47846 () Bool)

(assert (=> b!47846 (= e!24940 Zero!207)))

(declare-fun b!47847 () Bool)

(assert (=> b!47847 (= e!24940 (+!5 (*!4 (n!1360 (n!1360 n1!336)) n2!352) n2!352))))

(assert (= (and d!33842 c!10087) b!47846))

(assert (= (and d!33842 (not c!10087)) b!47847))

(declare-fun m!50771 () Bool)

(assert (=> b!47847 m!50771))

(assert (=> b!47847 m!50771))

(declare-fun m!50773 () Bool)

(assert (=> b!47847 m!50773))

(assert (=> bs!18744 d!33842))

(declare-fun d!33844 () Bool)

(assert (=> d!33844 (= (keepEvidence!48 (dynLambda!808 (evidence!636 prev!760))) true)))

(assert (=> b!47816 d!33844))

(declare-fun d!33846 () Bool)

(declare-fun c!10088 () Bool)

(assert (=> d!33846 (= c!10088 (is-Zero!207 (*!4 n1!336 n2!352)))))

(declare-fun e!24941 () Nat!223)

(assert (=> d!33846 (= (*!4 (*!4 n1!336 n2!352) n3!59) e!24941)))

(declare-fun b!47848 () Bool)

(assert (=> b!47848 (= e!24941 Zero!207)))

(declare-fun b!47849 () Bool)

(assert (=> b!47849 (= e!24941 (+!5 (*!4 (n!1360 (*!4 n1!336 n2!352)) n3!59) n3!59))))

(assert (= (and d!33846 c!10088) b!47848))

(assert (= (and d!33846 (not c!10088)) b!47849))

(declare-fun m!50775 () Bool)

(assert (=> b!47849 m!50775))

(assert (=> b!47849 m!50775))

(declare-fun m!50777 () Bool)

(assert (=> b!47849 m!50777))

(assert (=> bs!18742 d!33846))

(declare-fun d!33848 () Bool)

(declare-fun c!10089 () Bool)

(assert (=> d!33848 (= c!10089 (is-Zero!207 n1!336))))

(declare-fun e!24942 () Nat!223)

(assert (=> d!33848 (= (*!4 n1!336 n2!352) e!24942)))

(declare-fun b!47850 () Bool)

(assert (=> b!47850 (= e!24942 Zero!207)))

(declare-fun b!47851 () Bool)

(assert (=> b!47851 (= e!24942 (+!5 (*!4 (n!1360 n1!336) n2!352) n2!352))))

(assert (= (and d!33848 c!10089) b!47850))

(assert (= (and d!33848 (not c!10089)) b!47851))

(assert (=> b!47851 m!50735))

(assert (=> b!47851 m!50735))

(declare-fun m!50779 () Bool)

(assert (=> b!47851 m!50779))

(assert (=> bs!18742 d!33848))

(declare-fun d!33850 () Bool)

(assert (=> d!33850 (= (*!4 (+!5 n2!352 (*!4 (n!1360 n1!336) n2!352)) n3!59) (+!5 (*!4 n2!352 n3!59) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)))))

(assert (=> d!33850 true))

(declare-fun x$35!54 () Unit!654)

(assert (=> d!33850 (= (distributive_times2!0 n2!352 (*!4 (n!1360 n1!336) n2!352) n3!59) x$35!54)))

(declare-fun bs!18750 () Bool)

(assert (= bs!18750 d!33850))

(assert (=> bs!18750 m!50737))

(assert (=> bs!18750 m!50739))

(assert (=> bs!18750 m!50741))

(assert (=> bs!18750 m!50735))

(assert (=> bs!18750 m!50739))

(assert (=> bs!18750 m!50735))

(declare-fun m!50781 () Bool)

(assert (=> bs!18750 m!50781))

(assert (=> bs!18750 m!50737))

(assert (=> bs!18750 m!50781))

(declare-fun m!50783 () Bool)

(assert (=> bs!18750 m!50783))

(assert (=> bs!18747 d!33850))

(assert (=> bs!18747 d!33842))

(declare-fun d!33852 () Bool)

(assert (=> d!33852 (= (+!5 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)) (+!5 (*!4 n2!352 n3!59) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)))))

(assert (=> d!33852 true))

(declare-fun x$13!132 () Unit!654)

(assert (=> d!33852 (= (commutative_plus!0 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)) x$13!132)))

(declare-fun bs!18751 () Bool)

(assert (= bs!18751 d!33852))

(assert (=> bs!18751 m!50739))

(assert (=> bs!18751 m!50737))

(assert (=> bs!18751 m!50749))

(assert (=> bs!18751 m!50737))

(assert (=> bs!18751 m!50739))

(assert (=> bs!18751 m!50741))

(assert (=> bs!18749 d!33852))

(assert (=> bs!18749 d!33840))

(assert (=> bs!18749 d!33842))

(assert (=> bs!18749 d!33838))

(declare-fun d!33854 () Bool)

(declare-fun c!10090 () Bool)

(assert (=> d!33854 (= c!10090 (is-Zero!207 n1!336))))

(declare-fun e!24943 () Nat!223)

(assert (=> d!33854 (= (*!4 n1!336 (*!4 n2!352 n3!59)) e!24943)))

(declare-fun b!47852 () Bool)

(assert (=> b!47852 (= e!24943 Zero!207)))

(declare-fun b!47853 () Bool)

(assert (=> b!47853 (= e!24943 (+!5 (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (= (and d!33854 c!10090) b!47852))

(assert (= (and d!33854 (not c!10090)) b!47853))

(assert (=> b!47853 m!50737))

(assert (=> b!47853 m!50745))

(assert (=> b!47853 m!50745))

(assert (=> b!47853 m!50737))

(assert (=> b!47853 m!50747))

(assert (=> bs!18738 d!33854))

(assert (=> bs!18738 d!33838))

(declare-fun d!33856 () Bool)

(declare-fun c!10091 () Bool)

(assert (=> d!33856 (= c!10091 (is-Zero!207 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)))))

(declare-fun e!24944 () Nat!223)

(assert (=> d!33856 (= (+!5 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)) e!24944)))

(declare-fun b!47854 () Bool)

(assert (=> b!47854 (= e!24944 (*!4 n2!352 n3!59))))

(declare-fun b!47855 () Bool)

(assert (=> b!47855 (= e!24944 (Succ!204 (+!5 (n!1360 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)) (*!4 n2!352 n3!59))))))

(assert (= (and d!33856 c!10091) b!47854))

(assert (= (and d!33856 (not c!10091)) b!47855))

(assert (=> b!47855 m!50737))

(declare-fun m!50785 () Bool)

(assert (=> b!47855 m!50785))

(assert (=> bs!18746 d!33856))

(assert (=> bs!18746 d!33840))

(assert (=> bs!18746 d!33842))

(assert (=> bs!18746 d!33838))

(assert (=> bs!18741 d!33846))

(assert (=> bs!18741 d!33848))

(declare-fun d!33858 () Bool)

(assert (=> d!33858 (= (inv!833 x$40!15) (= (dynLambda!809 (x!17628 x$40!15)) (dynLambda!809 (y!1523 x$40!15))))))

(declare-fun b_lambda!12629 () Bool)

(assert (=> (not b_lambda!12629) (not d!33858)))

(declare-fun t!29289 () Bool)

(declare-fun tb!28467 () Bool)

(assert (=> (and b!47818 (= (x!17628 x$39!40) (x!17628 x$40!15)) t!29289) tb!28467))

(declare-fun result!28743 () Bool)

(assert (=> tb!28467 (= result!28743 true)))

(assert (=> d!33858 t!29289))

(declare-fun b_and!37905 () Bool)

(assert (= b_and!37895 (and (=> t!29289 result!28743) b_and!37905)))

(declare-fun t!29291 () Bool)

(declare-fun tb!28469 () Bool)

(assert (=> (and b!47820 (= (y!1523 prev!760) (x!17628 x$40!15)) t!29291) tb!28469))

(declare-fun result!28745 () Bool)

(assert (=> tb!28469 (= result!28745 true)))

(assert (=> d!33858 t!29291))

(declare-fun b_and!37907 () Bool)

(assert (= b_and!37891 (and (=> t!29291 result!28745) b_and!37907)))

(declare-fun tb!28471 () Bool)

(declare-fun t!29293 () Bool)

(assert (=> (and b!47827 (= (y!1524 x$41!67) (x!17628 x$40!15)) t!29293) tb!28471))

(declare-fun result!28747 () Bool)

(assert (=> tb!28471 (= result!28747 true)))

(assert (=> d!33858 t!29293))

(declare-fun b_and!37909 () Bool)

(assert (= b_and!37885 (and (=> t!29293 result!28747) b_and!37909)))

(declare-fun t!29295 () Bool)

(declare-fun tb!28473 () Bool)

(assert (=> (and b!47818 (= (y!1523 x$39!40) (x!17628 x$40!15)) t!29295) tb!28473))

(declare-fun result!28749 () Bool)

(assert (=> tb!28473 (= result!28749 true)))

(assert (=> d!33858 t!29295))

(declare-fun b_and!37911 () Bool)

(assert (= b_and!37889 (and (=> t!29295 result!28749) b_and!37911)))

(declare-fun t!29297 () Bool)

(declare-fun tb!28475 () Bool)

(assert (=> (and b!47817 (= (x!17628 x$40!15) (x!17628 x$40!15)) t!29297) tb!28475))

(declare-fun result!28751 () Bool)

(assert (=> tb!28475 (= result!28751 true)))

(assert (=> d!33858 t!29297))

(declare-fun b_and!37913 () Bool)

(assert (= b_and!37887 (and (=> t!29297 result!28751) b_and!37913)))

(declare-fun tb!28477 () Bool)

(declare-fun t!29299 () Bool)

(assert (=> (and b!47820 (= (x!17628 prev!760) (x!17628 x$40!15)) t!29299) tb!28477))

(declare-fun result!28753 () Bool)

(assert (=> tb!28477 (= result!28753 true)))

(assert (=> d!33858 t!29299))

(declare-fun b_and!37915 () Bool)

(assert (= b_and!37893 (and (=> t!29299 result!28753) b_and!37915)))

(declare-fun tb!28479 () Bool)

(declare-fun t!29301 () Bool)

(assert (=> (and b!47822 (= (y!1523 thiss!6377) (x!17628 x$40!15)) t!29301) tb!28479))

(declare-fun result!28755 () Bool)

(assert (=> tb!28479 (= result!28755 true)))

(assert (=> d!33858 t!29301))

(declare-fun b_and!37917 () Bool)

(assert (= b_and!37903 (and (=> t!29301 result!28755) b_and!37917)))

(declare-fun t!29303 () Bool)

(declare-fun tb!28481 () Bool)

(assert (=> (and b!47817 (= (y!1523 x$40!15) (x!17628 x$40!15)) t!29303) tb!28481))

(declare-fun result!28757 () Bool)

(assert (=> tb!28481 (= result!28757 true)))

(assert (=> d!33858 t!29303))

(declare-fun b_and!37919 () Bool)

(assert (= b_and!37897 (and (=> t!29303 result!28757) b_and!37919)))

(declare-fun t!29305 () Bool)

(declare-fun tb!28483 () Bool)

(assert (=> (and b!47822 (= (x!17628 thiss!6377) (x!17628 x$40!15)) t!29305) tb!28483))

(declare-fun result!28759 () Bool)

(assert (=> tb!28483 (= result!28759 true)))

(assert (=> d!33858 t!29305))

(declare-fun b_and!37921 () Bool)

(assert (= b_and!37901 (and (=> t!29305 result!28759) b_and!37921)))

(declare-fun tb!28485 () Bool)

(declare-fun t!29307 () Bool)

(assert (=> (and b!47827 (= (x!17629 x$41!67) (x!17628 x$40!15)) t!29307) tb!28485))

(declare-fun result!28761 () Bool)

(assert (=> tb!28485 (= result!28761 true)))

(assert (=> d!33858 t!29307))

(declare-fun b_and!37923 () Bool)

(assert (= b_and!37899 (and (=> t!29307 result!28761) b_and!37923)))

(declare-fun b_lambda!12631 () Bool)

(assert (=> (not b_lambda!12631) (not d!33858)))

(declare-fun tb!28487 () Bool)

(declare-fun t!29309 () Bool)

(assert (=> (and b!47820 (= (y!1523 prev!760) (y!1523 x$40!15)) t!29309) tb!28487))

(declare-fun result!28763 () Bool)

(assert (=> tb!28487 (= result!28763 true)))

(assert (=> d!33858 t!29309))

(declare-fun b_and!37925 () Bool)

(assert (= b_and!37907 (and (=> t!29309 result!28763) b_and!37925)))

(declare-fun tb!28489 () Bool)

(declare-fun t!29311 () Bool)

(assert (=> (and b!47827 (= (x!17629 x$41!67) (y!1523 x$40!15)) t!29311) tb!28489))

(declare-fun result!28765 () Bool)

(assert (=> tb!28489 (= result!28765 true)))

(assert (=> d!33858 t!29311))

(declare-fun b_and!37927 () Bool)

(assert (= b_and!37923 (and (=> t!29311 result!28765) b_and!37927)))

(declare-fun t!29313 () Bool)

(declare-fun tb!28491 () Bool)

(assert (=> (and b!47817 (= (y!1523 x$40!15) (y!1523 x$40!15)) t!29313) tb!28491))

(declare-fun result!28767 () Bool)

(assert (=> tb!28491 (= result!28767 true)))

(assert (=> d!33858 t!29313))

(declare-fun b_and!37929 () Bool)

(assert (= b_and!37919 (and (=> t!29313 result!28767) b_and!37929)))

(declare-fun t!29315 () Bool)

(declare-fun tb!28493 () Bool)

(assert (=> (and b!47818 (= (x!17628 x$39!40) (y!1523 x$40!15)) t!29315) tb!28493))

(declare-fun result!28769 () Bool)

(assert (=> tb!28493 (= result!28769 true)))

(assert (=> d!33858 t!29315))

(declare-fun b_and!37931 () Bool)

(assert (= b_and!37905 (and (=> t!29315 result!28769) b_and!37931)))

(declare-fun t!29317 () Bool)

(declare-fun tb!28495 () Bool)

(assert (=> (and b!47820 (= (x!17628 prev!760) (y!1523 x$40!15)) t!29317) tb!28495))

(declare-fun result!28771 () Bool)

(assert (=> tb!28495 (= result!28771 true)))

(assert (=> d!33858 t!29317))

(declare-fun b_and!37933 () Bool)

(assert (= b_and!37915 (and (=> t!29317 result!28771) b_and!37933)))

(declare-fun t!29319 () Bool)

(declare-fun tb!28497 () Bool)

(assert (=> (and b!47822 (= (y!1523 thiss!6377) (y!1523 x$40!15)) t!29319) tb!28497))

(declare-fun result!28773 () Bool)

(assert (=> tb!28497 (= result!28773 true)))

(assert (=> d!33858 t!29319))

(declare-fun b_and!37935 () Bool)

(assert (= b_and!37917 (and (=> t!29319 result!28773) b_and!37935)))

(declare-fun t!29321 () Bool)

(declare-fun tb!28499 () Bool)

(assert (=> (and b!47817 (= (x!17628 x$40!15) (y!1523 x$40!15)) t!29321) tb!28499))

(declare-fun result!28775 () Bool)

(assert (=> tb!28499 (= result!28775 true)))

(assert (=> d!33858 t!29321))

(declare-fun b_and!37937 () Bool)

(assert (= b_and!37913 (and (=> t!29321 result!28775) b_and!37937)))

(declare-fun t!29323 () Bool)

(declare-fun tb!28501 () Bool)

(assert (=> (and b!47827 (= (y!1524 x$41!67) (y!1523 x$40!15)) t!29323) tb!28501))

(declare-fun result!28777 () Bool)

(assert (=> tb!28501 (= result!28777 true)))

(assert (=> d!33858 t!29323))

(declare-fun b_and!37939 () Bool)

(assert (= b_and!37909 (and (=> t!29323 result!28777) b_and!37939)))

(declare-fun tb!28503 () Bool)

(declare-fun t!29325 () Bool)

(assert (=> (and b!47818 (= (y!1523 x$39!40) (y!1523 x$40!15)) t!29325) tb!28503))

(declare-fun result!28779 () Bool)

(assert (=> tb!28503 (= result!28779 true)))

(assert (=> d!33858 t!29325))

(declare-fun b_and!37941 () Bool)

(assert (= b_and!37911 (and (=> t!29325 result!28779) b_and!37941)))

(declare-fun tb!28505 () Bool)

(declare-fun t!29327 () Bool)

(assert (=> (and b!47822 (= (x!17628 thiss!6377) (y!1523 x$40!15)) t!29327) tb!28505))

(declare-fun result!28781 () Bool)

(assert (=> tb!28505 (= result!28781 true)))

(assert (=> d!33858 t!29327))

(declare-fun b_and!37943 () Bool)

(assert (= b_and!37921 (and (=> t!29327 result!28781) b_and!37943)))

(declare-fun m!50787 () Bool)

(assert (=> d!33858 m!50787))

(declare-fun m!50789 () Bool)

(assert (=> d!33858 m!50789))

(assert (=> start!6450 d!33858))

(declare-fun d!33860 () Bool)

(assert (=> d!33860 (= (inv!833 thiss!6377) (= (dynLambda!809 (x!17628 thiss!6377)) (dynLambda!809 (y!1523 thiss!6377))))))

(declare-fun b_lambda!12633 () Bool)

(assert (=> (not b_lambda!12633) (not d!33860)))

(assert (=> d!33860 t!29275))

(declare-fun b_and!37945 () Bool)

(assert (= b_and!37925 (and (=> t!29275 result!28729) b_and!37945)))

(assert (=> d!33860 t!29283))

(declare-fun b_and!37947 () Bool)

(assert (= b_and!37927 (and (=> t!29283 result!28737) b_and!37947)))

(assert (=> d!33860 t!29273))

(declare-fun b_and!37949 () Bool)

(assert (= b_and!37941 (and (=> t!29273 result!28727) b_and!37949)))

(assert (=> d!33860 t!29271))

(declare-fun b_and!37951 () Bool)

(assert (= b_and!37937 (and (=> t!29271 result!28725) b_and!37951)))

(assert (=> d!33860 t!29279))

(declare-fun b_and!37953 () Bool)

(assert (= b_and!37931 (and (=> t!29279 result!28733) b_and!37953)))

(assert (=> d!33860 t!29277))

(declare-fun b_and!37955 () Bool)

(assert (= b_and!37933 (and (=> t!29277 result!28731) b_and!37955)))

(assert (=> d!33860 t!29281))

(declare-fun b_and!37957 () Bool)

(assert (= b_and!37929 (and (=> t!29281 result!28735) b_and!37957)))

(assert (=> d!33860 t!29269))

(declare-fun b_and!37959 () Bool)

(assert (= b_and!37939 (and (=> t!29269 result!28723) b_and!37959)))

(assert (=> d!33860 t!29285))

(declare-fun b_and!37961 () Bool)

(assert (= b_and!37943 (and (=> t!29285 result!28739) b_and!37961)))

(assert (=> d!33860 t!29287))

(declare-fun b_and!37963 () Bool)

(assert (= b_and!37935 (and (=> t!29287 result!28741) b_and!37963)))

(declare-fun b_lambda!12635 () Bool)

(assert (=> (not b_lambda!12635) (not d!33860)))

(declare-fun t!29329 () Bool)

(declare-fun tb!28507 () Bool)

(assert (=> (and b!47822 (= (x!17628 thiss!6377) (y!1523 thiss!6377)) t!29329) tb!28507))

(declare-fun result!28783 () Bool)

(assert (=> tb!28507 (= result!28783 true)))

(assert (=> d!33860 t!29329))

(declare-fun b_and!37965 () Bool)

(assert (= b_and!37961 (and (=> t!29329 result!28783) b_and!37965)))

(declare-fun tb!28509 () Bool)

(declare-fun t!29331 () Bool)

(assert (=> (and b!47818 (= (y!1523 x$39!40) (y!1523 thiss!6377)) t!29331) tb!28509))

(declare-fun result!28785 () Bool)

(assert (=> tb!28509 (= result!28785 true)))

(assert (=> d!33860 t!29331))

(declare-fun b_and!37967 () Bool)

(assert (= b_and!37949 (and (=> t!29331 result!28785) b_and!37967)))

(declare-fun tb!28511 () Bool)

(declare-fun t!29333 () Bool)

(assert (=> (and b!47820 (= (y!1523 prev!760) (y!1523 thiss!6377)) t!29333) tb!28511))

(declare-fun result!28787 () Bool)

(assert (=> tb!28511 (= result!28787 true)))

(assert (=> d!33860 t!29333))

(declare-fun b_and!37969 () Bool)

(assert (= b_and!37945 (and (=> t!29333 result!28787) b_and!37969)))

(declare-fun t!29335 () Bool)

(declare-fun tb!28513 () Bool)

(assert (=> (and b!47817 (= (y!1523 x$40!15) (y!1523 thiss!6377)) t!29335) tb!28513))

(declare-fun result!28789 () Bool)

(assert (=> tb!28513 (= result!28789 true)))

(assert (=> d!33860 t!29335))

(declare-fun b_and!37971 () Bool)

(assert (= b_and!37957 (and (=> t!29335 result!28789) b_and!37971)))

(declare-fun t!29337 () Bool)

(declare-fun tb!28515 () Bool)

(assert (=> (and b!47827 (= (y!1524 x$41!67) (y!1523 thiss!6377)) t!29337) tb!28515))

(declare-fun result!28791 () Bool)

(assert (=> tb!28515 (= result!28791 true)))

(assert (=> d!33860 t!29337))

(declare-fun b_and!37973 () Bool)

(assert (= b_and!37959 (and (=> t!29337 result!28791) b_and!37973)))

(declare-fun t!29339 () Bool)

(declare-fun tb!28517 () Bool)

(assert (=> (and b!47817 (= (x!17628 x$40!15) (y!1523 thiss!6377)) t!29339) tb!28517))

(declare-fun result!28793 () Bool)

(assert (=> tb!28517 (= result!28793 true)))

(assert (=> d!33860 t!29339))

(declare-fun b_and!37975 () Bool)

(assert (= b_and!37951 (and (=> t!29339 result!28793) b_and!37975)))

(declare-fun t!29341 () Bool)

(declare-fun tb!28519 () Bool)

(assert (=> (and b!47818 (= (x!17628 x$39!40) (y!1523 thiss!6377)) t!29341) tb!28519))

(declare-fun result!28795 () Bool)

(assert (=> tb!28519 (= result!28795 true)))

(assert (=> d!33860 t!29341))

(declare-fun b_and!37977 () Bool)

(assert (= b_and!37953 (and (=> t!29341 result!28795) b_and!37977)))

(declare-fun t!29343 () Bool)

(declare-fun tb!28521 () Bool)

(assert (=> (and b!47822 (= (y!1523 thiss!6377) (y!1523 thiss!6377)) t!29343) tb!28521))

(declare-fun result!28797 () Bool)

(assert (=> tb!28521 (= result!28797 true)))

(assert (=> d!33860 t!29343))

(declare-fun b_and!37979 () Bool)

(assert (= b_and!37963 (and (=> t!29343 result!28797) b_and!37979)))

(declare-fun t!29345 () Bool)

(declare-fun tb!28523 () Bool)

(assert (=> (and b!47820 (= (x!17628 prev!760) (y!1523 thiss!6377)) t!29345) tb!28523))

(declare-fun result!28799 () Bool)

(assert (=> tb!28523 (= result!28799 true)))

(assert (=> d!33860 t!29345))

(declare-fun b_and!37981 () Bool)

(assert (= b_and!37955 (and (=> t!29345 result!28799) b_and!37981)))

(declare-fun t!29347 () Bool)

(declare-fun tb!28525 () Bool)

(assert (=> (and b!47827 (= (x!17629 x$41!67) (y!1523 thiss!6377)) t!29347) tb!28525))

(declare-fun result!28801 () Bool)

(assert (=> tb!28525 (= result!28801 true)))

(assert (=> d!33860 t!29347))

(declare-fun b_and!37983 () Bool)

(assert (= b_and!37947 (and (=> t!29347 result!28801) b_and!37983)))

(assert (=> d!33860 m!50733))

(declare-fun m!50791 () Bool)

(assert (=> d!33860 m!50791))

(assert (=> start!6450 d!33860))

(declare-fun d!33862 () Bool)

(assert (=> d!33862 (= (inv!833 x$39!40) (= (dynLambda!809 (x!17628 x$39!40)) (dynLambda!809 (y!1523 x$39!40))))))

(declare-fun b_lambda!12637 () Bool)

(assert (=> (not b_lambda!12637) (not d!33862)))

(declare-fun t!29349 () Bool)

(declare-fun tb!28527 () Bool)

(assert (=> (and b!47820 (= (y!1523 prev!760) (x!17628 x$39!40)) t!29349) tb!28527))

(declare-fun result!28803 () Bool)

(assert (=> tb!28527 (= result!28803 true)))

(assert (=> d!33862 t!29349))

(declare-fun b_and!37985 () Bool)

(assert (= b_and!37969 (and (=> t!29349 result!28803) b_and!37985)))

(declare-fun tb!28529 () Bool)

(declare-fun t!29351 () Bool)

(assert (=> (and b!47822 (= (x!17628 thiss!6377) (x!17628 x$39!40)) t!29351) tb!28529))

(declare-fun result!28805 () Bool)

(assert (=> tb!28529 (= result!28805 true)))

(assert (=> d!33862 t!29351))

(declare-fun b_and!37987 () Bool)

(assert (= b_and!37965 (and (=> t!29351 result!28805) b_and!37987)))

(declare-fun tb!28531 () Bool)

(declare-fun t!29353 () Bool)

(assert (=> (and b!47820 (= (x!17628 prev!760) (x!17628 x$39!40)) t!29353) tb!28531))

(declare-fun result!28807 () Bool)

(assert (=> tb!28531 (= result!28807 true)))

(assert (=> d!33862 t!29353))

(declare-fun b_and!37989 () Bool)

(assert (= b_and!37981 (and (=> t!29353 result!28807) b_and!37989)))

(declare-fun t!29355 () Bool)

(declare-fun tb!28533 () Bool)

(assert (=> (and b!47818 (= (x!17628 x$39!40) (x!17628 x$39!40)) t!29355) tb!28533))

(declare-fun result!28809 () Bool)

(assert (=> tb!28533 (= result!28809 true)))

(assert (=> d!33862 t!29355))

(declare-fun b_and!37991 () Bool)

(assert (= b_and!37977 (and (=> t!29355 result!28809) b_and!37991)))

(declare-fun tb!28535 () Bool)

(declare-fun t!29357 () Bool)

(assert (=> (and b!47822 (= (y!1523 thiss!6377) (x!17628 x$39!40)) t!29357) tb!28535))

(declare-fun result!28811 () Bool)

(assert (=> tb!28535 (= result!28811 true)))

(assert (=> d!33862 t!29357))

(declare-fun b_and!37993 () Bool)

(assert (= b_and!37979 (and (=> t!29357 result!28811) b_and!37993)))

(declare-fun t!29359 () Bool)

(declare-fun tb!28537 () Bool)

(assert (=> (and b!47827 (= (y!1524 x$41!67) (x!17628 x$39!40)) t!29359) tb!28537))

(declare-fun result!28813 () Bool)

(assert (=> tb!28537 (= result!28813 true)))

(assert (=> d!33862 t!29359))

(declare-fun b_and!37995 () Bool)

(assert (= b_and!37973 (and (=> t!29359 result!28813) b_and!37995)))

(declare-fun t!29361 () Bool)

(declare-fun tb!28539 () Bool)

(assert (=> (and b!47827 (= (x!17629 x$41!67) (x!17628 x$39!40)) t!29361) tb!28539))

(declare-fun result!28815 () Bool)

(assert (=> tb!28539 (= result!28815 true)))

(assert (=> d!33862 t!29361))

(declare-fun b_and!37997 () Bool)

(assert (= b_and!37983 (and (=> t!29361 result!28815) b_and!37997)))

(declare-fun t!29363 () Bool)

(declare-fun tb!28541 () Bool)

(assert (=> (and b!47817 (= (x!17628 x$40!15) (x!17628 x$39!40)) t!29363) tb!28541))

(declare-fun result!28817 () Bool)

(assert (=> tb!28541 (= result!28817 true)))

(assert (=> d!33862 t!29363))

(declare-fun b_and!37999 () Bool)

(assert (= b_and!37975 (and (=> t!29363 result!28817) b_and!37999)))

(declare-fun tb!28543 () Bool)

(declare-fun t!29365 () Bool)

(assert (=> (and b!47817 (= (y!1523 x$40!15) (x!17628 x$39!40)) t!29365) tb!28543))

(declare-fun result!28819 () Bool)

(assert (=> tb!28543 (= result!28819 true)))

(assert (=> d!33862 t!29365))

(declare-fun b_and!38001 () Bool)

(assert (= b_and!37971 (and (=> t!29365 result!28819) b_and!38001)))

(declare-fun t!29367 () Bool)

(declare-fun tb!28545 () Bool)

(assert (=> (and b!47818 (= (y!1523 x$39!40) (x!17628 x$39!40)) t!29367) tb!28545))

(declare-fun result!28821 () Bool)

(assert (=> tb!28545 (= result!28821 true)))

(assert (=> d!33862 t!29367))

(declare-fun b_and!38003 () Bool)

(assert (= b_and!37967 (and (=> t!29367 result!28821) b_and!38003)))

(declare-fun b_lambda!12639 () Bool)

(assert (=> (not b_lambda!12639) (not d!33862)))

(declare-fun tb!28547 () Bool)

(declare-fun t!29369 () Bool)

(assert (=> (and b!47827 (= (x!17629 x$41!67) (y!1523 x$39!40)) t!29369) tb!28547))

(declare-fun result!28823 () Bool)

(assert (=> tb!28547 (= result!28823 true)))

(assert (=> d!33862 t!29369))

(declare-fun b_and!38005 () Bool)

(assert (= b_and!37997 (and (=> t!29369 result!28823) b_and!38005)))

(declare-fun tb!28549 () Bool)

(declare-fun t!29371 () Bool)

(assert (=> (and b!47820 (= (x!17628 prev!760) (y!1523 x$39!40)) t!29371) tb!28549))

(declare-fun result!28825 () Bool)

(assert (=> tb!28549 (= result!28825 true)))

(assert (=> d!33862 t!29371))

(declare-fun b_and!38007 () Bool)

(assert (= b_and!37989 (and (=> t!29371 result!28825) b_and!38007)))

(declare-fun tb!28551 () Bool)

(declare-fun t!29373 () Bool)

(assert (=> (and b!47817 (= (y!1523 x$40!15) (y!1523 x$39!40)) t!29373) tb!28551))

(declare-fun result!28827 () Bool)

(assert (=> tb!28551 (= result!28827 true)))

(assert (=> d!33862 t!29373))

(declare-fun b_and!38009 () Bool)

(assert (= b_and!38001 (and (=> t!29373 result!28827) b_and!38009)))

(declare-fun t!29375 () Bool)

(declare-fun tb!28553 () Bool)

(assert (=> (and b!47818 (= (y!1523 x$39!40) (y!1523 x$39!40)) t!29375) tb!28553))

(declare-fun result!28829 () Bool)

(assert (=> tb!28553 (= result!28829 true)))

(assert (=> d!33862 t!29375))

(declare-fun b_and!38011 () Bool)

(assert (= b_and!38003 (and (=> t!29375 result!28829) b_and!38011)))

(declare-fun t!29377 () Bool)

(declare-fun tb!28555 () Bool)

(assert (=> (and b!47822 (= (x!17628 thiss!6377) (y!1523 x$39!40)) t!29377) tb!28555))

(declare-fun result!28831 () Bool)

(assert (=> tb!28555 (= result!28831 true)))

(assert (=> d!33862 t!29377))

(declare-fun b_and!38013 () Bool)

(assert (= b_and!37987 (and (=> t!29377 result!28831) b_and!38013)))

(declare-fun tb!28557 () Bool)

(declare-fun t!29379 () Bool)

(assert (=> (and b!47827 (= (y!1524 x$41!67) (y!1523 x$39!40)) t!29379) tb!28557))

(declare-fun result!28833 () Bool)

(assert (=> tb!28557 (= result!28833 true)))

(assert (=> d!33862 t!29379))

(declare-fun b_and!38015 () Bool)

(assert (= b_and!37995 (and (=> t!29379 result!28833) b_and!38015)))

(declare-fun t!29381 () Bool)

(declare-fun tb!28559 () Bool)

(assert (=> (and b!47818 (= (x!17628 x$39!40) (y!1523 x$39!40)) t!29381) tb!28559))

(declare-fun result!28835 () Bool)

(assert (=> tb!28559 (= result!28835 true)))

(assert (=> d!33862 t!29381))

(declare-fun b_and!38017 () Bool)

(assert (= b_and!37991 (and (=> t!29381 result!28835) b_and!38017)))

(declare-fun t!29383 () Bool)

(declare-fun tb!28561 () Bool)

(assert (=> (and b!47822 (= (y!1523 thiss!6377) (y!1523 x$39!40)) t!29383) tb!28561))

(declare-fun result!28837 () Bool)

(assert (=> tb!28561 (= result!28837 true)))

(assert (=> d!33862 t!29383))

(declare-fun b_and!38019 () Bool)

(assert (= b_and!37993 (and (=> t!29383 result!28837) b_and!38019)))

(declare-fun tb!28563 () Bool)

(declare-fun t!29385 () Bool)

(assert (=> (and b!47817 (= (x!17628 x$40!15) (y!1523 x$39!40)) t!29385) tb!28563))

(declare-fun result!28839 () Bool)

(assert (=> tb!28563 (= result!28839 true)))

(assert (=> d!33862 t!29385))

(declare-fun b_and!38021 () Bool)

(assert (= b_and!37999 (and (=> t!29385 result!28839) b_and!38021)))

(declare-fun t!29387 () Bool)

(declare-fun tb!28565 () Bool)

(assert (=> (and b!47820 (= (y!1523 prev!760) (y!1523 x$39!40)) t!29387) tb!28565))

(declare-fun result!28841 () Bool)

(assert (=> tb!28565 (= result!28841 true)))

(assert (=> d!33862 t!29387))

(declare-fun b_and!38023 () Bool)

(assert (= b_and!37985 (and (=> t!29387 result!28841) b_and!38023)))

(declare-fun m!50793 () Bool)

(assert (=> d!33862 m!50793))

(declare-fun m!50795 () Bool)

(assert (=> d!33862 m!50795))

(assert (=> start!6450 d!33862))

(declare-fun d!33864 () Bool)

(assert (=> d!33864 (= (inv!834 x$41!67) (= (dynLambda!809 (x!17629 x$41!67)) (dynLambda!809 (y!1524 x$41!67))))))

(declare-fun b_lambda!12641 () Bool)

(assert (=> (not b_lambda!12641) (not d!33864)))

(declare-fun t!29389 () Bool)

(declare-fun tb!28567 () Bool)

(assert (=> (and b!47817 (= (x!17628 x$40!15) (x!17629 x$41!67)) t!29389) tb!28567))

(declare-fun result!28843 () Bool)

(assert (=> tb!28567 (= result!28843 true)))

(assert (=> d!33864 t!29389))

(declare-fun b_and!38025 () Bool)

(assert (= b_and!38021 (and (=> t!29389 result!28843) b_and!38025)))

(declare-fun tb!28569 () Bool)

(declare-fun t!29391 () Bool)

(assert (=> (and b!47822 (= (y!1523 thiss!6377) (x!17629 x$41!67)) t!29391) tb!28569))

(declare-fun result!28845 () Bool)

(assert (=> tb!28569 (= result!28845 true)))

(assert (=> d!33864 t!29391))

(declare-fun b_and!38027 () Bool)

(assert (= b_and!38019 (and (=> t!29391 result!28845) b_and!38027)))

(declare-fun tb!28571 () Bool)

(declare-fun t!29393 () Bool)

(assert (=> (and b!47820 (= (x!17628 prev!760) (x!17629 x$41!67)) t!29393) tb!28571))

(declare-fun result!28847 () Bool)

(assert (=> tb!28571 (= result!28847 true)))

(assert (=> d!33864 t!29393))

(declare-fun b_and!38029 () Bool)

(assert (= b_and!38007 (and (=> t!29393 result!28847) b_and!38029)))

(declare-fun tb!28573 () Bool)

(declare-fun t!29395 () Bool)

(assert (=> (and b!47822 (= (x!17628 thiss!6377) (x!17629 x$41!67)) t!29395) tb!28573))

(declare-fun result!28849 () Bool)

(assert (=> tb!28573 (= result!28849 true)))

(assert (=> d!33864 t!29395))

(declare-fun b_and!38031 () Bool)

(assert (= b_and!38013 (and (=> t!29395 result!28849) b_and!38031)))

(declare-fun t!29397 () Bool)

(declare-fun tb!28575 () Bool)

(assert (=> (and b!47827 (= (y!1524 x$41!67) (x!17629 x$41!67)) t!29397) tb!28575))

(declare-fun result!28851 () Bool)

(assert (=> tb!28575 (= result!28851 true)))

(assert (=> d!33864 t!29397))

(declare-fun b_and!38033 () Bool)

(assert (= b_and!38015 (and (=> t!29397 result!28851) b_and!38033)))

(declare-fun t!29399 () Bool)

(declare-fun tb!28577 () Bool)

(assert (=> (and b!47818 (= (y!1523 x$39!40) (x!17629 x$41!67)) t!29399) tb!28577))

(declare-fun result!28853 () Bool)

(assert (=> tb!28577 (= result!28853 true)))

(assert (=> d!33864 t!29399))

(declare-fun b_and!38035 () Bool)

(assert (= b_and!38011 (and (=> t!29399 result!28853) b_and!38035)))

(declare-fun t!29401 () Bool)

(declare-fun tb!28579 () Bool)

(assert (=> (and b!47817 (= (y!1523 x$40!15) (x!17629 x$41!67)) t!29401) tb!28579))

(declare-fun result!28855 () Bool)

(assert (=> tb!28579 (= result!28855 true)))

(assert (=> d!33864 t!29401))

(declare-fun b_and!38037 () Bool)

(assert (= b_and!38009 (and (=> t!29401 result!28855) b_and!38037)))

(declare-fun t!29403 () Bool)

(declare-fun tb!28581 () Bool)

(assert (=> (and b!47820 (= (y!1523 prev!760) (x!17629 x$41!67)) t!29403) tb!28581))

(declare-fun result!28857 () Bool)

(assert (=> tb!28581 (= result!28857 true)))

(assert (=> d!33864 t!29403))

(declare-fun b_and!38039 () Bool)

(assert (= b_and!38023 (and (=> t!29403 result!28857) b_and!38039)))

(declare-fun t!29405 () Bool)

(declare-fun tb!28583 () Bool)

(assert (=> (and b!47827 (= (x!17629 x$41!67) (x!17629 x$41!67)) t!29405) tb!28583))

(declare-fun result!28859 () Bool)

(assert (=> tb!28583 (= result!28859 true)))

(assert (=> d!33864 t!29405))

(declare-fun b_and!38041 () Bool)

(assert (= b_and!38005 (and (=> t!29405 result!28859) b_and!38041)))

(declare-fun t!29407 () Bool)

(declare-fun tb!28585 () Bool)

(assert (=> (and b!47818 (= (x!17628 x$39!40) (x!17629 x$41!67)) t!29407) tb!28585))

(declare-fun result!28861 () Bool)

(assert (=> tb!28585 (= result!28861 true)))

(assert (=> d!33864 t!29407))

(declare-fun b_and!38043 () Bool)

(assert (= b_and!38017 (and (=> t!29407 result!28861) b_and!38043)))

(declare-fun b_lambda!12643 () Bool)

(assert (=> (not b_lambda!12643) (not d!33864)))

(declare-fun t!29409 () Bool)

(declare-fun tb!28587 () Bool)

(assert (=> (and b!47827 (= (x!17629 x$41!67) (y!1524 x$41!67)) t!29409) tb!28587))

(declare-fun result!28863 () Bool)

(assert (=> tb!28587 (= result!28863 true)))

(assert (=> d!33864 t!29409))

(declare-fun b_and!38045 () Bool)

(assert (= b_and!38041 (and (=> t!29409 result!28863) b_and!38045)))

(declare-fun t!29411 () Bool)

(declare-fun tb!28589 () Bool)

(assert (=> (and b!47822 (= (x!17628 thiss!6377) (y!1524 x$41!67)) t!29411) tb!28589))

(declare-fun result!28865 () Bool)

(assert (=> tb!28589 (= result!28865 true)))

(assert (=> d!33864 t!29411))

(declare-fun b_and!38047 () Bool)

(assert (= b_and!38031 (and (=> t!29411 result!28865) b_and!38047)))

(declare-fun t!29413 () Bool)

(declare-fun tb!28591 () Bool)

(assert (=> (and b!47817 (= (y!1523 x$40!15) (y!1524 x$41!67)) t!29413) tb!28591))

(declare-fun result!28867 () Bool)

(assert (=> tb!28591 (= result!28867 true)))

(assert (=> d!33864 t!29413))

(declare-fun b_and!38049 () Bool)

(assert (= b_and!38037 (and (=> t!29413 result!28867) b_and!38049)))

(declare-fun t!29415 () Bool)

(declare-fun tb!28593 () Bool)

(assert (=> (and b!47818 (= (x!17628 x$39!40) (y!1524 x$41!67)) t!29415) tb!28593))

(declare-fun result!28869 () Bool)

(assert (=> tb!28593 (= result!28869 true)))

(assert (=> d!33864 t!29415))

(declare-fun b_and!38051 () Bool)

(assert (= b_and!38043 (and (=> t!29415 result!28869) b_and!38051)))

(declare-fun tb!28595 () Bool)

(declare-fun t!29417 () Bool)

(assert (=> (and b!47820 (= (y!1523 prev!760) (y!1524 x$41!67)) t!29417) tb!28595))

(declare-fun result!28871 () Bool)

(assert (=> tb!28595 (= result!28871 true)))

(assert (=> d!33864 t!29417))

(declare-fun b_and!38053 () Bool)

(assert (= b_and!38039 (and (=> t!29417 result!28871) b_and!38053)))

(declare-fun tb!28597 () Bool)

(declare-fun t!29419 () Bool)

(assert (=> (and b!47822 (= (y!1523 thiss!6377) (y!1524 x$41!67)) t!29419) tb!28597))

(declare-fun result!28873 () Bool)

(assert (=> tb!28597 (= result!28873 true)))

(assert (=> d!33864 t!29419))

(declare-fun b_and!38055 () Bool)

(assert (= b_and!38027 (and (=> t!29419 result!28873) b_and!38055)))

(declare-fun t!29421 () Bool)

(declare-fun tb!28599 () Bool)

(assert (=> (and b!47817 (= (x!17628 x$40!15) (y!1524 x$41!67)) t!29421) tb!28599))

(declare-fun result!28875 () Bool)

(assert (=> tb!28599 (= result!28875 true)))

(assert (=> d!33864 t!29421))

(declare-fun b_and!38057 () Bool)

(assert (= b_and!38025 (and (=> t!29421 result!28875) b_and!38057)))

(declare-fun t!29423 () Bool)

(declare-fun tb!28601 () Bool)

(assert (=> (and b!47827 (= (y!1524 x$41!67) (y!1524 x$41!67)) t!29423) tb!28601))

(declare-fun result!28877 () Bool)

(assert (=> tb!28601 (= result!28877 true)))

(assert (=> d!33864 t!29423))

(declare-fun b_and!38059 () Bool)

(assert (= b_and!38033 (and (=> t!29423 result!28877) b_and!38059)))

(declare-fun t!29425 () Bool)

(declare-fun tb!28603 () Bool)

(assert (=> (and b!47820 (= (x!17628 prev!760) (y!1524 x$41!67)) t!29425) tb!28603))

(declare-fun result!28879 () Bool)

(assert (=> tb!28603 (= result!28879 true)))

(assert (=> d!33864 t!29425))

(declare-fun b_and!38061 () Bool)

(assert (= b_and!38029 (and (=> t!29425 result!28879) b_and!38061)))

(declare-fun tb!28605 () Bool)

(declare-fun t!29427 () Bool)

(assert (=> (and b!47818 (= (y!1523 x$39!40) (y!1524 x$41!67)) t!29427) tb!28605))

(declare-fun result!28881 () Bool)

(assert (=> tb!28605 (= result!28881 true)))

(assert (=> d!33864 t!29427))

(declare-fun b_and!38063 () Bool)

(assert (= b_and!38035 (and (=> t!29427 result!28881) b_and!38063)))

(declare-fun m!50797 () Bool)

(assert (=> d!33864 m!50797))

(declare-fun m!50799 () Bool)

(assert (=> d!33864 m!50799))

(assert (=> start!6450 d!33864))

(declare-fun d!33866 () Bool)

(assert (=> d!33866 (= (inv!833 prev!760) (= (dynLambda!809 (x!17628 prev!760)) (dynLambda!809 (y!1523 prev!760))))))

(declare-fun b_lambda!12645 () Bool)

(assert (=> (not b_lambda!12645) (not d!33866)))

(declare-fun tb!28607 () Bool)

(declare-fun t!29429 () Bool)

(assert (=> (and b!47818 (= (y!1523 x$39!40) (x!17628 prev!760)) t!29429) tb!28607))

(declare-fun result!28883 () Bool)

(assert (=> tb!28607 (= result!28883 true)))

(assert (=> d!33866 t!29429))

(declare-fun b_and!38065 () Bool)

(assert (= b_and!38063 (and (=> t!29429 result!28883) b_and!38065)))

(declare-fun t!29431 () Bool)

(declare-fun tb!28609 () Bool)

(assert (=> (and b!47820 (= (x!17628 prev!760) (x!17628 prev!760)) t!29431) tb!28609))

(declare-fun result!28885 () Bool)

(assert (=> tb!28609 (= result!28885 true)))

(assert (=> d!33866 t!29431))

(declare-fun b_and!38067 () Bool)

(assert (= b_and!38061 (and (=> t!29431 result!28885) b_and!38067)))

(declare-fun t!29433 () Bool)

(declare-fun tb!28611 () Bool)

(assert (=> (and b!47820 (= (y!1523 prev!760) (x!17628 prev!760)) t!29433) tb!28611))

(declare-fun result!28887 () Bool)

(assert (=> tb!28611 (= result!28887 true)))

(assert (=> d!33866 t!29433))

(declare-fun b_and!38069 () Bool)

(assert (= b_and!38053 (and (=> t!29433 result!28887) b_and!38069)))

(declare-fun t!29435 () Bool)

(declare-fun tb!28613 () Bool)

(assert (=> (and b!47817 (= (x!17628 x$40!15) (x!17628 prev!760)) t!29435) tb!28613))

(declare-fun result!28889 () Bool)

(assert (=> tb!28613 (= result!28889 true)))

(assert (=> d!33866 t!29435))

(declare-fun b_and!38071 () Bool)

(assert (= b_and!38057 (and (=> t!29435 result!28889) b_and!38071)))

(declare-fun t!29437 () Bool)

(declare-fun tb!28615 () Bool)

(assert (=> (and b!47822 (= (x!17628 thiss!6377) (x!17628 prev!760)) t!29437) tb!28615))

(declare-fun result!28891 () Bool)

(assert (=> tb!28615 (= result!28891 true)))

(assert (=> d!33866 t!29437))

(declare-fun b_and!38073 () Bool)

(assert (= b_and!38047 (and (=> t!29437 result!28891) b_and!38073)))

(declare-fun t!29439 () Bool)

(declare-fun tb!28617 () Bool)

(assert (=> (and b!47827 (= (x!17629 x$41!67) (x!17628 prev!760)) t!29439) tb!28617))

(declare-fun result!28893 () Bool)

(assert (=> tb!28617 (= result!28893 true)))

(assert (=> d!33866 t!29439))

(declare-fun b_and!38075 () Bool)

(assert (= b_and!38045 (and (=> t!29439 result!28893) b_and!38075)))

(declare-fun tb!28619 () Bool)

(declare-fun t!29441 () Bool)

(assert (=> (and b!47827 (= (y!1524 x$41!67) (x!17628 prev!760)) t!29441) tb!28619))

(declare-fun result!28895 () Bool)

(assert (=> tb!28619 (= result!28895 true)))

(assert (=> d!33866 t!29441))

(declare-fun b_and!38077 () Bool)

(assert (= b_and!38059 (and (=> t!29441 result!28895) b_and!38077)))

(declare-fun tb!28621 () Bool)

(declare-fun t!29443 () Bool)

(assert (=> (and b!47817 (= (y!1523 x$40!15) (x!17628 prev!760)) t!29443) tb!28621))

(declare-fun result!28897 () Bool)

(assert (=> tb!28621 (= result!28897 true)))

(assert (=> d!33866 t!29443))

(declare-fun b_and!38079 () Bool)

(assert (= b_and!38049 (and (=> t!29443 result!28897) b_and!38079)))

(declare-fun tb!28623 () Bool)

(declare-fun t!29445 () Bool)

(assert (=> (and b!47818 (= (x!17628 x$39!40) (x!17628 prev!760)) t!29445) tb!28623))

(declare-fun result!28899 () Bool)

(assert (=> tb!28623 (= result!28899 true)))

(assert (=> d!33866 t!29445))

(declare-fun b_and!38081 () Bool)

(assert (= b_and!38051 (and (=> t!29445 result!28899) b_and!38081)))

(declare-fun tb!28625 () Bool)

(declare-fun t!29447 () Bool)

(assert (=> (and b!47822 (= (y!1523 thiss!6377) (x!17628 prev!760)) t!29447) tb!28625))

(declare-fun result!28901 () Bool)

(assert (=> tb!28625 (= result!28901 true)))

(assert (=> d!33866 t!29447))

(declare-fun b_and!38083 () Bool)

(assert (= b_and!38055 (and (=> t!29447 result!28901) b_and!38083)))

(declare-fun b_lambda!12647 () Bool)

(assert (=> (not b_lambda!12647) (not d!33866)))

(assert (=> d!33866 t!29257))

(declare-fun b_and!38085 () Bool)

(assert (= b_and!38081 (and (=> t!29257 result!28711) b_and!38085)))

(assert (=> d!33866 t!29249))

(declare-fun b_and!38087 () Bool)

(assert (= b_and!38075 (and (=> t!29249 result!28703) b_and!38087)))

(assert (=> d!33866 t!29255))

(declare-fun b_and!38089 () Bool)

(assert (= b_and!38083 (and (=> t!29255 result!28709) b_and!38089)))

(assert (=> d!33866 t!29261))

(declare-fun b_and!38091 () Bool)

(assert (= b_and!38067 (and (=> t!29261 result!28715) b_and!38091)))

(assert (=> d!33866 t!29263))

(declare-fun b_and!38093 () Bool)

(assert (= b_and!38071 (and (=> t!29263 result!28717) b_and!38093)))

(assert (=> d!33866 t!29265))

(declare-fun b_and!38095 () Bool)

(assert (= b_and!38069 (and (=> t!29265 result!28719) b_and!38095)))

(assert (=> d!33866 t!29251))

(declare-fun b_and!38097 () Bool)

(assert (= b_and!38073 (and (=> t!29251 result!28705) b_and!38097)))

(assert (=> d!33866 t!29259))

(declare-fun b_and!38099 () Bool)

(assert (= b_and!38079 (and (=> t!29259 result!28713) b_and!38099)))

(assert (=> d!33866 t!29267))

(declare-fun b_and!38101 () Bool)

(assert (= b_and!38077 (and (=> t!29267 result!28721) b_and!38101)))

(assert (=> d!33866 t!29253))

(declare-fun b_and!38103 () Bool)

(assert (= b_and!38065 (and (=> t!29253 result!28707) b_and!38103)))

(declare-fun m!50801 () Bool)

(assert (=> d!33866 m!50801))

(assert (=> d!33866 m!50731))

(assert (=> start!6450 d!33866))

(assert (=> bs!18745 d!33854))

(assert (=> bs!18745 d!33838))

(assert (=> bs!18740 d!33856))

(assert (=> bs!18740 d!33840))

(assert (=> bs!18740 d!33842))

(assert (=> bs!18740 d!33838))

(declare-fun c!10092 () Bool)

(declare-fun d!33868 () Bool)

(assert (=> d!33868 (= c!10092 (is-Zero!207 (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59))))))

(declare-fun e!24945 () Nat!223)

(assert (=> d!33868 (= (+!5 (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)) e!24945)))

(declare-fun b!47856 () Bool)

(assert (=> b!47856 (= e!24945 (*!4 n2!352 n3!59))))

(declare-fun b!47857 () Bool)

(assert (=> b!47857 (= e!24945 (Succ!204 (+!5 (n!1360 (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59))) (*!4 n2!352 n3!59))))))

(assert (= (and d!33868 c!10092) b!47856))

(assert (= (and d!33868 (not c!10092)) b!47857))

(assert (=> b!47857 m!50737))

(declare-fun m!50803 () Bool)

(assert (=> b!47857 m!50803))

(assert (=> bs!18739 d!33868))

(declare-fun d!33870 () Bool)

(declare-fun c!10093 () Bool)

(assert (=> d!33870 (= c!10093 (is-Zero!207 (n!1360 n1!336)))))

(declare-fun e!24946 () Nat!223)

(assert (=> d!33870 (= (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59)) e!24946)))

(declare-fun b!47858 () Bool)

(assert (=> b!47858 (= e!24946 Zero!207)))

(declare-fun b!47859 () Bool)

(assert (=> b!47859 (= e!24946 (+!5 (*!4 (n!1360 (n!1360 n1!336)) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (= (and d!33870 c!10093) b!47858))

(assert (= (and d!33870 (not c!10093)) b!47859))

(assert (=> b!47859 m!50737))

(declare-fun m!50805 () Bool)

(assert (=> b!47859 m!50805))

(assert (=> b!47859 m!50805))

(assert (=> b!47859 m!50737))

(declare-fun m!50807 () Bool)

(assert (=> b!47859 m!50807))

(assert (=> bs!18739 d!33870))

(assert (=> bs!18739 d!33838))

(assert (=> bs!18743 d!33868))

(assert (=> bs!18743 d!33870))

(assert (=> bs!18743 d!33838))

(declare-fun d!33872 () Bool)

(assert (=> d!33872 (= (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59)) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59))))

(assert (=> d!33872 true))

(declare-fun x$42!98 () Unit!654)

(assert (=> d!33872 (= (associative_times!0 (n!1360 n1!336) n2!352 n3!59) x$42!98)))

(declare-fun bs!18752 () Bool)

(assert (= bs!18752 d!33872))

(assert (=> bs!18752 m!50737))

(assert (=> bs!18752 m!50737))

(assert (=> bs!18752 m!50745))

(assert (=> bs!18752 m!50735))

(assert (=> bs!18752 m!50735))

(assert (=> bs!18752 m!50739))

(assert (=> bs!18748 d!33872))

(declare-fun d!33874 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!33874 (= trivial!1 true)))

(assert (=> b!47825 d!33874))

(assert (=> bs!18737 d!33836))

(assert (=> bs!18737 d!33838))

(assert (=> bs!18737 d!33840))

(assert (=> bs!18737 d!33842))

(declare-fun b_lambda!12649 () Bool)

(assert (= b_lambda!12633 (or (and b!47817 b_free!5831 (= (y!1523 x$40!15) (x!17628 thiss!6377))) (and b!47820 b_free!5819 (= (y!1523 prev!760) (x!17628 thiss!6377))) (and b!47822 b_free!5837 (= (y!1523 thiss!6377) (x!17628 thiss!6377))) (and b!47820 b_free!5817 (= (x!17628 prev!760) (x!17628 thiss!6377))) (and b!47824 (= lambda!7001 (x!17628 thiss!6377))) (and b!47825 (= lambda!6997 (x!17628 thiss!6377))) (and b!47818 b_free!5825 (= (y!1523 x$39!40) (x!17628 thiss!6377))) (and b!47827 b_free!5811 (= (x!17629 x$41!67) (x!17628 thiss!6377))) (and b!47827 b_free!5813 (= (y!1524 x$41!67) (x!17628 thiss!6377))) (and b!47819 (= lambda!7003 (x!17628 thiss!6377))) (and b!47818 b_free!5823 (= (x!17628 x$39!40) (x!17628 thiss!6377))) (and b!47817 b_free!5829 (= (x!17628 x$40!15) (x!17628 thiss!6377))) (and b!47819 (= lambda!7004 (x!17628 thiss!6377))) (and b!47821 (= lambda!6999 (x!17628 thiss!6377))) (and b!47822 b_free!5835) b_lambda!12649)))

(assert (=> (and b!47819 (= lambda!7003 (x!17628 thiss!6377)) d!33860) d!33810))

(assert (=> (and b!47825 (= lambda!6997 (x!17628 thiss!6377)) d!33860) d!33812))

(assert (=> (and b!47821 (= lambda!6999 (x!17628 thiss!6377)) d!33860) d!33814))

(assert (=> (and b!47824 (= lambda!7001 (x!17628 thiss!6377)) d!33860) d!33816))

(assert (=> (and b!47819 (= lambda!7004 (x!17628 thiss!6377)) d!33860) d!33818))

(declare-fun b_lambda!12651 () Bool)

(assert (= b_lambda!12643 (or (and b!47824 (= lambda!7001 (y!1524 x$41!67))) (and b!47827 b_free!5813) (and b!47817 b_free!5831 (= (y!1523 x$40!15) (y!1524 x$41!67))) (and b!47820 b_free!5817 (= (x!17628 prev!760) (y!1524 x$41!67))) (and b!47818 b_free!5825 (= (y!1523 x$39!40) (y!1524 x$41!67))) (and b!47822 b_free!5835 (= (x!17628 thiss!6377) (y!1524 x$41!67))) (and b!47819 (= lambda!7004 (y!1524 x$41!67))) (and b!47825 (= lambda!6997 (y!1524 x$41!67))) (and b!47827 b_free!5811 (= (x!17629 x$41!67) (y!1524 x$41!67))) (and b!47820 b_free!5819 (= (y!1523 prev!760) (y!1524 x$41!67))) (and b!47818 b_free!5823 (= (x!17628 x$39!40) (y!1524 x$41!67))) (and b!47821 (= lambda!6999 (y!1524 x$41!67))) (and b!47822 b_free!5837 (= (y!1523 thiss!6377) (y!1524 x$41!67))) (and b!47817 b_free!5829 (= (x!17628 x$40!15) (y!1524 x$41!67))) (and b!47819 (= lambda!7003 (y!1524 x$41!67))) b_lambda!12651)))

(declare-fun bs!18753 () Bool)

(declare-fun d!33876 () Bool)

(assert (= bs!18753 (and d!33876 b!47824)))

(assert (=> bs!18753 (= (dynLambda!809 lambda!7001) (+!5 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18753 m!50735))

(assert (=> bs!18753 m!50735))

(assert (=> bs!18753 m!50739))

(assert (=> bs!18753 m!50739))

(assert (=> bs!18753 m!50737))

(assert (=> bs!18753 m!50749))

(assert (=> bs!18753 m!50737))

(assert (=> (and b!47824 (= lambda!7001 (y!1524 x$41!67)) d!33864) d!33876))

(declare-fun bs!18754 () Bool)

(declare-fun d!33878 () Bool)

(assert (= bs!18754 (and d!33878 b!47819)))

(assert (=> bs!18754 (= (dynLambda!809 lambda!7004) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18754 m!50751))

(assert (=> bs!18754 m!50751))

(assert (=> bs!18754 m!50753))

(assert (=> (and b!47819 (= lambda!7004 (y!1524 x$41!67)) d!33864) d!33878))

(declare-fun bs!18755 () Bool)

(declare-fun d!33880 () Bool)

(assert (= bs!18755 (and d!33880 b!47825)))

(assert (=> bs!18755 (= (dynLambda!809 lambda!6997) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18755 m!50737))

(assert (=> bs!18755 m!50737))

(assert (=> bs!18755 m!50743))

(assert (=> (and b!47825 (= lambda!6997 (y!1524 x$41!67)) d!33864) d!33880))

(declare-fun bs!18756 () Bool)

(declare-fun d!33882 () Bool)

(assert (= bs!18756 (and d!33882 b!47819)))

(assert (=> bs!18756 (= (dynLambda!809 lambda!7003) (+!5 (*!4 n2!352 n3!59) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)))))

(assert (=> bs!18756 m!50735))

(assert (=> bs!18756 m!50737))

(assert (=> bs!18756 m!50739))

(assert (=> bs!18756 m!50741))

(assert (=> bs!18756 m!50735))

(assert (=> bs!18756 m!50739))

(assert (=> bs!18756 m!50737))

(assert (=> (and b!47819 (= lambda!7003 (y!1524 x$41!67)) d!33864) d!33882))

(declare-fun bs!18757 () Bool)

(declare-fun d!33884 () Bool)

(assert (= bs!18757 (and d!33884 b!47821)))

(assert (=> bs!18757 (= (dynLambda!809 lambda!6999) (+!5 (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18757 m!50745))

(assert (=> bs!18757 m!50737))

(assert (=> bs!18757 m!50747))

(assert (=> bs!18757 m!50737))

(assert (=> bs!18757 m!50745))

(assert (=> bs!18757 m!50737))

(assert (=> (and b!47821 (= lambda!6999 (y!1524 x$41!67)) d!33864) d!33884))

(declare-fun b_lambda!12653 () Bool)

(assert (= b_lambda!12647 (or (and b!47824 (= lambda!7001 (y!1523 prev!760))) (and b!47819 (= lambda!7003 (y!1523 prev!760))) (and b!47822 b_free!5835 (= (x!17628 thiss!6377) (y!1523 prev!760))) (and b!47820 b_free!5817 (= (x!17628 prev!760) (y!1523 prev!760))) (and b!47819 (= lambda!7004 (y!1523 prev!760))) (and b!47817 b_free!5829 (= (x!17628 x$40!15) (y!1523 prev!760))) (and b!47822 b_free!5837 (= (y!1523 thiss!6377) (y!1523 prev!760))) (and b!47817 b_free!5831 (= (y!1523 x$40!15) (y!1523 prev!760))) (and b!47827 b_free!5811 (= (x!17629 x$41!67) (y!1523 prev!760))) (and b!47818 b_free!5825 (= (y!1523 x$39!40) (y!1523 prev!760))) (and b!47820 b_free!5819) (and b!47825 (= lambda!6997 (y!1523 prev!760))) (and b!47818 b_free!5823 (= (x!17628 x$39!40) (y!1523 prev!760))) (and b!47821 (= lambda!6999 (y!1523 prev!760))) (and b!47827 b_free!5813 (= (y!1524 x$41!67) (y!1523 prev!760))) b_lambda!12653)))

(assert (=> (and b!47819 (= lambda!7004 (y!1523 prev!760)) d!33866) d!33820))

(assert (=> (and b!47821 (= lambda!6999 (y!1523 prev!760)) d!33866) d!33822))

(assert (=> (and b!47819 (= lambda!7003 (y!1523 prev!760)) d!33866) d!33824))

(assert (=> (and b!47825 (= lambda!6997 (y!1523 prev!760)) d!33866) d!33826))

(assert (=> (and b!47824 (= lambda!7001 (y!1523 prev!760)) d!33866) d!33828))

(declare-fun b_lambda!12655 () Bool)

(assert (= b_lambda!12639 (or (and b!47820 b_free!5819 (= (y!1523 prev!760) (y!1523 x$39!40))) (and b!47820 b_free!5817 (= (x!17628 prev!760) (y!1523 x$39!40))) (and b!47822 b_free!5837 (= (y!1523 thiss!6377) (y!1523 x$39!40))) (and b!47825 (= lambda!6997 (y!1523 x$39!40))) (and b!47817 b_free!5831 (= (y!1523 x$40!15) (y!1523 x$39!40))) (and b!47819 (= lambda!7003 (y!1523 x$39!40))) (and b!47821 (= lambda!6999 (y!1523 x$39!40))) (and b!47827 b_free!5811 (= (x!17629 x$41!67) (y!1523 x$39!40))) (and b!47822 b_free!5835 (= (x!17628 thiss!6377) (y!1523 x$39!40))) (and b!47818 b_free!5823 (= (x!17628 x$39!40) (y!1523 x$39!40))) (and b!47818 b_free!5825) (and b!47827 b_free!5813 (= (y!1524 x$41!67) (y!1523 x$39!40))) (and b!47824 (= lambda!7001 (y!1523 x$39!40))) (and b!47819 (= lambda!7004 (y!1523 x$39!40))) (and b!47817 b_free!5829 (= (x!17628 x$40!15) (y!1523 x$39!40))) b_lambda!12655)))

(declare-fun bs!18758 () Bool)

(declare-fun d!33886 () Bool)

(assert (= bs!18758 (and d!33886 b!47824)))

(assert (=> bs!18758 (= (dynLambda!809 lambda!7001) (+!5 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18758 m!50735))

(assert (=> bs!18758 m!50735))

(assert (=> bs!18758 m!50739))

(assert (=> bs!18758 m!50739))

(assert (=> bs!18758 m!50737))

(assert (=> bs!18758 m!50749))

(assert (=> bs!18758 m!50737))

(assert (=> (and b!47824 (= lambda!7001 (y!1523 x$39!40)) d!33862) d!33886))

(declare-fun bs!18759 () Bool)

(declare-fun d!33888 () Bool)

(assert (= bs!18759 (and d!33888 b!47819)))

(assert (=> bs!18759 (= (dynLambda!809 lambda!7004) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18759 m!50751))

(assert (=> bs!18759 m!50751))

(assert (=> bs!18759 m!50753))

(assert (=> (and b!47819 (= lambda!7004 (y!1523 x$39!40)) d!33862) d!33888))

(declare-fun bs!18760 () Bool)

(declare-fun d!33890 () Bool)

(assert (= bs!18760 (and d!33890 b!47821)))

(assert (=> bs!18760 (= (dynLambda!809 lambda!6999) (+!5 (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18760 m!50745))

(assert (=> bs!18760 m!50737))

(assert (=> bs!18760 m!50747))

(assert (=> bs!18760 m!50737))

(assert (=> bs!18760 m!50745))

(assert (=> bs!18760 m!50737))

(assert (=> (and b!47821 (= lambda!6999 (y!1523 x$39!40)) d!33862) d!33890))

(declare-fun bs!18761 () Bool)

(declare-fun d!33892 () Bool)

(assert (= bs!18761 (and d!33892 b!47825)))

(assert (=> bs!18761 (= (dynLambda!809 lambda!6997) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18761 m!50737))

(assert (=> bs!18761 m!50737))

(assert (=> bs!18761 m!50743))

(assert (=> (and b!47825 (= lambda!6997 (y!1523 x$39!40)) d!33862) d!33892))

(declare-fun bs!18762 () Bool)

(declare-fun d!33894 () Bool)

(assert (= bs!18762 (and d!33894 b!47819)))

(assert (=> bs!18762 (= (dynLambda!809 lambda!7003) (+!5 (*!4 n2!352 n3!59) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)))))

(assert (=> bs!18762 m!50735))

(assert (=> bs!18762 m!50737))

(assert (=> bs!18762 m!50739))

(assert (=> bs!18762 m!50741))

(assert (=> bs!18762 m!50735))

(assert (=> bs!18762 m!50739))

(assert (=> bs!18762 m!50737))

(assert (=> (and b!47819 (= lambda!7003 (y!1523 x$39!40)) d!33862) d!33894))

(declare-fun b_lambda!12657 () Bool)

(assert (= b_lambda!12641 (or (and b!47817 b_free!5831 (= (y!1523 x$40!15) (x!17629 x$41!67))) (and b!47825 (= lambda!6997 (x!17629 x$41!67))) (and b!47820 b_free!5817 (= (x!17628 prev!760) (x!17629 x$41!67))) (and b!47817 b_free!5829 (= (x!17628 x$40!15) (x!17629 x$41!67))) (and b!47820 b_free!5819 (= (y!1523 prev!760) (x!17629 x$41!67))) (and b!47822 b_free!5835 (= (x!17628 thiss!6377) (x!17629 x$41!67))) (and b!47821 (= lambda!6999 (x!17629 x$41!67))) (and b!47827 b_free!5811) (and b!47818 b_free!5825 (= (y!1523 x$39!40) (x!17629 x$41!67))) (and b!47824 (= lambda!7001 (x!17629 x$41!67))) (and b!47822 b_free!5837 (= (y!1523 thiss!6377) (x!17629 x$41!67))) (and b!47818 b_free!5823 (= (x!17628 x$39!40) (x!17629 x$41!67))) (and b!47827 b_free!5813 (= (y!1524 x$41!67) (x!17629 x$41!67))) (and b!47819 (= lambda!7004 (x!17629 x$41!67))) (and b!47819 (= lambda!7003 (x!17629 x$41!67))) b_lambda!12657)))

(declare-fun bs!18763 () Bool)

(declare-fun d!33896 () Bool)

(assert (= bs!18763 (and d!33896 b!47825)))

(assert (=> bs!18763 (= (dynLambda!809 lambda!6997) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18763 m!50737))

(assert (=> bs!18763 m!50737))

(assert (=> bs!18763 m!50743))

(assert (=> (and b!47825 (= lambda!6997 (x!17629 x$41!67)) d!33864) d!33896))

(declare-fun bs!18764 () Bool)

(declare-fun d!33898 () Bool)

(assert (= bs!18764 (and d!33898 b!47819)))

(assert (=> bs!18764 (= (dynLambda!809 lambda!7004) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18764 m!50751))

(assert (=> bs!18764 m!50751))

(assert (=> bs!18764 m!50753))

(assert (=> (and b!47819 (= lambda!7004 (x!17629 x$41!67)) d!33864) d!33898))

(declare-fun bs!18765 () Bool)

(declare-fun d!33900 () Bool)

(assert (= bs!18765 (and d!33900 b!47821)))

(assert (=> bs!18765 (= (dynLambda!809 lambda!6999) (+!5 (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18765 m!50745))

(assert (=> bs!18765 m!50737))

(assert (=> bs!18765 m!50747))

(assert (=> bs!18765 m!50737))

(assert (=> bs!18765 m!50745))

(assert (=> bs!18765 m!50737))

(assert (=> (and b!47821 (= lambda!6999 (x!17629 x$41!67)) d!33864) d!33900))

(declare-fun bs!18766 () Bool)

(declare-fun d!33902 () Bool)

(assert (= bs!18766 (and d!33902 b!47824)))

(assert (=> bs!18766 (= (dynLambda!809 lambda!7001) (+!5 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18766 m!50735))

(assert (=> bs!18766 m!50735))

(assert (=> bs!18766 m!50739))

(assert (=> bs!18766 m!50739))

(assert (=> bs!18766 m!50737))

(assert (=> bs!18766 m!50749))

(assert (=> bs!18766 m!50737))

(assert (=> (and b!47824 (= lambda!7001 (x!17629 x$41!67)) d!33864) d!33902))

(declare-fun bs!18767 () Bool)

(declare-fun d!33904 () Bool)

(assert (= bs!18767 (and d!33904 b!47819)))

(assert (=> bs!18767 (= (dynLambda!809 lambda!7003) (+!5 (*!4 n2!352 n3!59) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)))))

(assert (=> bs!18767 m!50735))

(assert (=> bs!18767 m!50737))

(assert (=> bs!18767 m!50739))

(assert (=> bs!18767 m!50741))

(assert (=> bs!18767 m!50735))

(assert (=> bs!18767 m!50739))

(assert (=> bs!18767 m!50737))

(assert (=> (and b!47819 (= lambda!7003 (x!17629 x$41!67)) d!33864) d!33904))

(declare-fun b_lambda!12659 () Bool)

(assert (= b_lambda!12635 (or (and b!47820 b_free!5819 (= (y!1523 prev!760) (y!1523 thiss!6377))) (and b!47819 (= lambda!7004 (y!1523 thiss!6377))) (and b!47818 b_free!5823 (= (x!17628 x$39!40) (y!1523 thiss!6377))) (and b!47818 b_free!5825 (= (y!1523 x$39!40) (y!1523 thiss!6377))) (and b!47822 b_free!5837) (and b!47827 b_free!5811 (= (x!17629 x$41!67) (y!1523 thiss!6377))) (and b!47819 (= lambda!7003 (y!1523 thiss!6377))) (and b!47827 b_free!5813 (= (y!1524 x$41!67) (y!1523 thiss!6377))) (and b!47825 (= lambda!6997 (y!1523 thiss!6377))) (and b!47824 (= lambda!7001 (y!1523 thiss!6377))) (and b!47820 b_free!5817 (= (x!17628 prev!760) (y!1523 thiss!6377))) (and b!47817 b_free!5829 (= (x!17628 x$40!15) (y!1523 thiss!6377))) (and b!47817 b_free!5831 (= (y!1523 x$40!15) (y!1523 thiss!6377))) (and b!47822 b_free!5835 (= (x!17628 thiss!6377) (y!1523 thiss!6377))) (and b!47821 (= lambda!6999 (y!1523 thiss!6377))) b_lambda!12659)))

(declare-fun bs!18768 () Bool)

(declare-fun d!33906 () Bool)

(assert (= bs!18768 (and d!33906 b!47821)))

(assert (=> bs!18768 (= (dynLambda!809 lambda!6999) (+!5 (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18768 m!50745))

(assert (=> bs!18768 m!50737))

(assert (=> bs!18768 m!50747))

(assert (=> bs!18768 m!50737))

(assert (=> bs!18768 m!50745))

(assert (=> bs!18768 m!50737))

(assert (=> (and b!47821 (= lambda!6999 (y!1523 thiss!6377)) d!33860) d!33906))

(declare-fun bs!18769 () Bool)

(declare-fun d!33908 () Bool)

(assert (= bs!18769 (and d!33908 b!47825)))

(assert (=> bs!18769 (= (dynLambda!809 lambda!6997) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18769 m!50737))

(assert (=> bs!18769 m!50737))

(assert (=> bs!18769 m!50743))

(assert (=> (and b!47825 (= lambda!6997 (y!1523 thiss!6377)) d!33860) d!33908))

(declare-fun bs!18770 () Bool)

(declare-fun d!33910 () Bool)

(assert (= bs!18770 (and d!33910 b!47819)))

(assert (=> bs!18770 (= (dynLambda!809 lambda!7004) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18770 m!50751))

(assert (=> bs!18770 m!50751))

(assert (=> bs!18770 m!50753))

(assert (=> (and b!47819 (= lambda!7004 (y!1523 thiss!6377)) d!33860) d!33910))

(declare-fun bs!18771 () Bool)

(declare-fun d!33912 () Bool)

(assert (= bs!18771 (and d!33912 b!47824)))

(assert (=> bs!18771 (= (dynLambda!809 lambda!7001) (+!5 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18771 m!50735))

(assert (=> bs!18771 m!50735))

(assert (=> bs!18771 m!50739))

(assert (=> bs!18771 m!50739))

(assert (=> bs!18771 m!50737))

(assert (=> bs!18771 m!50749))

(assert (=> bs!18771 m!50737))

(assert (=> (and b!47824 (= lambda!7001 (y!1523 thiss!6377)) d!33860) d!33912))

(declare-fun bs!18772 () Bool)

(declare-fun d!33914 () Bool)

(assert (= bs!18772 (and d!33914 b!47819)))

(assert (=> bs!18772 (= (dynLambda!809 lambda!7003) (+!5 (*!4 n2!352 n3!59) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)))))

(assert (=> bs!18772 m!50735))

(assert (=> bs!18772 m!50737))

(assert (=> bs!18772 m!50739))

(assert (=> bs!18772 m!50741))

(assert (=> bs!18772 m!50735))

(assert (=> bs!18772 m!50739))

(assert (=> bs!18772 m!50737))

(assert (=> (and b!47819 (= lambda!7003 (y!1523 thiss!6377)) d!33860) d!33914))

(declare-fun b_lambda!12661 () Bool)

(assert (= b_lambda!12629 (or (and b!47827 b_free!5811 (= (x!17629 x$41!67) (x!17628 x$40!15))) (and b!47825 (= lambda!6997 (x!17628 x$40!15))) (and b!47824 (= lambda!7001 (x!17628 x$40!15))) (and b!47819 (= lambda!7003 (x!17628 x$40!15))) (and b!47827 b_free!5813 (= (y!1524 x$41!67) (x!17628 x$40!15))) (and b!47822 b_free!5835 (= (x!17628 thiss!6377) (x!17628 x$40!15))) (and b!47819 (= lambda!7004 (x!17628 x$40!15))) (and b!47817 b_free!5831 (= (y!1523 x$40!15) (x!17628 x$40!15))) (and b!47820 b_free!5817 (= (x!17628 prev!760) (x!17628 x$40!15))) (and b!47820 b_free!5819 (= (y!1523 prev!760) (x!17628 x$40!15))) (and b!47818 b_free!5825 (= (y!1523 x$39!40) (x!17628 x$40!15))) (and b!47822 b_free!5837 (= (y!1523 thiss!6377) (x!17628 x$40!15))) (and b!47821 (= lambda!6999 (x!17628 x$40!15))) (and b!47818 b_free!5823 (= (x!17628 x$39!40) (x!17628 x$40!15))) (and b!47817 b_free!5829) b_lambda!12661)))

(declare-fun bs!18773 () Bool)

(declare-fun d!33916 () Bool)

(assert (= bs!18773 (and d!33916 b!47824)))

(assert (=> bs!18773 (= (dynLambda!809 lambda!7001) (+!5 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18773 m!50735))

(assert (=> bs!18773 m!50735))

(assert (=> bs!18773 m!50739))

(assert (=> bs!18773 m!50739))

(assert (=> bs!18773 m!50737))

(assert (=> bs!18773 m!50749))

(assert (=> bs!18773 m!50737))

(assert (=> (and b!47824 (= lambda!7001 (x!17628 x$40!15)) d!33858) d!33916))

(declare-fun bs!18774 () Bool)

(declare-fun d!33918 () Bool)

(assert (= bs!18774 (and d!33918 b!47825)))

(assert (=> bs!18774 (= (dynLambda!809 lambda!6997) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18774 m!50737))

(assert (=> bs!18774 m!50737))

(assert (=> bs!18774 m!50743))

(assert (=> (and b!47825 (= lambda!6997 (x!17628 x$40!15)) d!33858) d!33918))

(declare-fun bs!18775 () Bool)

(declare-fun d!33920 () Bool)

(assert (= bs!18775 (and d!33920 b!47821)))

(assert (=> bs!18775 (= (dynLambda!809 lambda!6999) (+!5 (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18775 m!50745))

(assert (=> bs!18775 m!50737))

(assert (=> bs!18775 m!50747))

(assert (=> bs!18775 m!50737))

(assert (=> bs!18775 m!50745))

(assert (=> bs!18775 m!50737))

(assert (=> (and b!47821 (= lambda!6999 (x!17628 x$40!15)) d!33858) d!33920))

(declare-fun bs!18776 () Bool)

(declare-fun d!33922 () Bool)

(assert (= bs!18776 (and d!33922 b!47819)))

(assert (=> bs!18776 (= (dynLambda!809 lambda!7004) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18776 m!50751))

(assert (=> bs!18776 m!50751))

(assert (=> bs!18776 m!50753))

(assert (=> (and b!47819 (= lambda!7004 (x!17628 x$40!15)) d!33858) d!33922))

(declare-fun bs!18777 () Bool)

(declare-fun d!33924 () Bool)

(assert (= bs!18777 (and d!33924 b!47819)))

(assert (=> bs!18777 (= (dynLambda!809 lambda!7003) (+!5 (*!4 n2!352 n3!59) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)))))

(assert (=> bs!18777 m!50735))

(assert (=> bs!18777 m!50737))

(assert (=> bs!18777 m!50739))

(assert (=> bs!18777 m!50741))

(assert (=> bs!18777 m!50735))

(assert (=> bs!18777 m!50739))

(assert (=> bs!18777 m!50737))

(assert (=> (and b!47819 (= lambda!7003 (x!17628 x$40!15)) d!33858) d!33924))

(declare-fun b_lambda!12663 () Bool)

(assert (= b_lambda!12645 (or (and b!47822 b_free!5835 (= (x!17628 thiss!6377) (x!17628 prev!760))) (and b!47827 b_free!5813 (= (y!1524 x$41!67) (x!17628 prev!760))) (and b!47817 b_free!5831 (= (y!1523 x$40!15) (x!17628 prev!760))) (and b!47818 b_free!5825 (= (y!1523 x$39!40) (x!17628 prev!760))) (and b!47822 b_free!5837 (= (y!1523 thiss!6377) (x!17628 prev!760))) (and b!47824 (= lambda!7001 (x!17628 prev!760))) (and b!47819 (= lambda!7004 (x!17628 prev!760))) (and b!47821 (= lambda!6999 (x!17628 prev!760))) (and b!47819 (= lambda!7003 (x!17628 prev!760))) (and b!47817 b_free!5829 (= (x!17628 x$40!15) (x!17628 prev!760))) (and b!47820 b_free!5817) (and b!47825 (= lambda!6997 (x!17628 prev!760))) (and b!47820 b_free!5819 (= (y!1523 prev!760) (x!17628 prev!760))) (and b!47827 b_free!5811 (= (x!17629 x$41!67) (x!17628 prev!760))) (and b!47818 b_free!5823 (= (x!17628 x$39!40) (x!17628 prev!760))) b_lambda!12663)))

(declare-fun bs!18778 () Bool)

(declare-fun d!33926 () Bool)

(assert (= bs!18778 (and d!33926 b!47824)))

(assert (=> bs!18778 (= (dynLambda!809 lambda!7001) (+!5 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18778 m!50735))

(assert (=> bs!18778 m!50735))

(assert (=> bs!18778 m!50739))

(assert (=> bs!18778 m!50739))

(assert (=> bs!18778 m!50737))

(assert (=> bs!18778 m!50749))

(assert (=> bs!18778 m!50737))

(assert (=> (and b!47824 (= lambda!7001 (x!17628 prev!760)) d!33866) d!33926))

(declare-fun bs!18779 () Bool)

(declare-fun d!33928 () Bool)

(assert (= bs!18779 (and d!33928 b!47825)))

(assert (=> bs!18779 (= (dynLambda!809 lambda!6997) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18779 m!50737))

(assert (=> bs!18779 m!50737))

(assert (=> bs!18779 m!50743))

(assert (=> (and b!47825 (= lambda!6997 (x!17628 prev!760)) d!33866) d!33928))

(declare-fun bs!18780 () Bool)

(declare-fun d!33930 () Bool)

(assert (= bs!18780 (and d!33930 b!47819)))

(assert (=> bs!18780 (= (dynLambda!809 lambda!7004) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18780 m!50751))

(assert (=> bs!18780 m!50751))

(assert (=> bs!18780 m!50753))

(assert (=> (and b!47819 (= lambda!7004 (x!17628 prev!760)) d!33866) d!33930))

(declare-fun bs!18781 () Bool)

(declare-fun d!33932 () Bool)

(assert (= bs!18781 (and d!33932 b!47821)))

(assert (=> bs!18781 (= (dynLambda!809 lambda!6999) (+!5 (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18781 m!50745))

(assert (=> bs!18781 m!50737))

(assert (=> bs!18781 m!50747))

(assert (=> bs!18781 m!50737))

(assert (=> bs!18781 m!50745))

(assert (=> bs!18781 m!50737))

(assert (=> (and b!47821 (= lambda!6999 (x!17628 prev!760)) d!33866) d!33932))

(declare-fun bs!18782 () Bool)

(declare-fun d!33934 () Bool)

(assert (= bs!18782 (and d!33934 b!47819)))

(assert (=> bs!18782 (= (dynLambda!809 lambda!7003) (+!5 (*!4 n2!352 n3!59) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)))))

(assert (=> bs!18782 m!50735))

(assert (=> bs!18782 m!50737))

(assert (=> bs!18782 m!50739))

(assert (=> bs!18782 m!50741))

(assert (=> bs!18782 m!50735))

(assert (=> bs!18782 m!50739))

(assert (=> bs!18782 m!50737))

(assert (=> (and b!47819 (= lambda!7003 (x!17628 prev!760)) d!33866) d!33934))

(declare-fun b_lambda!12665 () Bool)

(assert (= b_lambda!12637 (or (and b!47818 b_free!5823) (and b!47817 b_free!5829 (= (x!17628 x$40!15) (x!17628 x$39!40))) (and b!47827 b_free!5811 (= (x!17629 x$41!67) (x!17628 x$39!40))) (and b!47822 b_free!5837 (= (y!1523 thiss!6377) (x!17628 x$39!40))) (and b!47821 (= lambda!6999 (x!17628 x$39!40))) (and b!47825 (= lambda!6997 (x!17628 x$39!40))) (and b!47820 b_free!5817 (= (x!17628 prev!760) (x!17628 x$39!40))) (and b!47824 (= lambda!7001 (x!17628 x$39!40))) (and b!47820 b_free!5819 (= (y!1523 prev!760) (x!17628 x$39!40))) (and b!47818 b_free!5825 (= (y!1523 x$39!40) (x!17628 x$39!40))) (and b!47819 (= lambda!7004 (x!17628 x$39!40))) (and b!47822 b_free!5835 (= (x!17628 thiss!6377) (x!17628 x$39!40))) (and b!47817 b_free!5831 (= (y!1523 x$40!15) (x!17628 x$39!40))) (and b!47819 (= lambda!7003 (x!17628 x$39!40))) (and b!47827 b_free!5813 (= (y!1524 x$41!67) (x!17628 x$39!40))) b_lambda!12665)))

(declare-fun bs!18783 () Bool)

(declare-fun d!33936 () Bool)

(assert (= bs!18783 (and d!33936 b!47821)))

(assert (=> bs!18783 (= (dynLambda!809 lambda!6999) (+!5 (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18783 m!50745))

(assert (=> bs!18783 m!50737))

(assert (=> bs!18783 m!50747))

(assert (=> bs!18783 m!50737))

(assert (=> bs!18783 m!50745))

(assert (=> bs!18783 m!50737))

(assert (=> (and b!47821 (= lambda!6999 (x!17628 x$39!40)) d!33862) d!33936))

(declare-fun bs!18784 () Bool)

(declare-fun d!33938 () Bool)

(assert (= bs!18784 (and d!33938 b!47825)))

(assert (=> bs!18784 (= (dynLambda!809 lambda!6997) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18784 m!50737))

(assert (=> bs!18784 m!50737))

(assert (=> bs!18784 m!50743))

(assert (=> (and b!47825 (= lambda!6997 (x!17628 x$39!40)) d!33862) d!33938))

(declare-fun bs!18785 () Bool)

(declare-fun d!33940 () Bool)

(assert (= bs!18785 (and d!33940 b!47819)))

(assert (=> bs!18785 (= (dynLambda!809 lambda!7004) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18785 m!50751))

(assert (=> bs!18785 m!50751))

(assert (=> bs!18785 m!50753))

(assert (=> (and b!47819 (= lambda!7004 (x!17628 x$39!40)) d!33862) d!33940))

(declare-fun bs!18786 () Bool)

(declare-fun d!33942 () Bool)

(assert (= bs!18786 (and d!33942 b!47819)))

(assert (=> bs!18786 (= (dynLambda!809 lambda!7003) (+!5 (*!4 n2!352 n3!59) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)))))

(assert (=> bs!18786 m!50735))

(assert (=> bs!18786 m!50737))

(assert (=> bs!18786 m!50739))

(assert (=> bs!18786 m!50741))

(assert (=> bs!18786 m!50735))

(assert (=> bs!18786 m!50739))

(assert (=> bs!18786 m!50737))

(assert (=> (and b!47819 (= lambda!7003 (x!17628 x$39!40)) d!33862) d!33942))

(declare-fun bs!18787 () Bool)

(declare-fun d!33944 () Bool)

(assert (= bs!18787 (and d!33944 b!47824)))

(assert (=> bs!18787 (= (dynLambda!809 lambda!7001) (+!5 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18787 m!50735))

(assert (=> bs!18787 m!50735))

(assert (=> bs!18787 m!50739))

(assert (=> bs!18787 m!50739))

(assert (=> bs!18787 m!50737))

(assert (=> bs!18787 m!50749))

(assert (=> bs!18787 m!50737))

(assert (=> (and b!47824 (= lambda!7001 (x!17628 x$39!40)) d!33862) d!33944))

(declare-fun b_lambda!12667 () Bool)

(assert (= b_lambda!12631 (or (and b!47820 b_free!5817 (= (x!17628 prev!760) (y!1523 x$40!15))) (and b!47825 (= lambda!6997 (y!1523 x$40!15))) (and b!47819 (= lambda!7003 (y!1523 x$40!15))) (and b!47818 b_free!5823 (= (x!17628 x$39!40) (y!1523 x$40!15))) (and b!47824 (= lambda!7001 (y!1523 x$40!15))) (and b!47827 b_free!5811 (= (x!17629 x$41!67) (y!1523 x$40!15))) (and b!47817 b_free!5829 (= (x!17628 x$40!15) (y!1523 x$40!15))) (and b!47820 b_free!5819 (= (y!1523 prev!760) (y!1523 x$40!15))) (and b!47822 b_free!5837 (= (y!1523 thiss!6377) (y!1523 x$40!15))) (and b!47822 b_free!5835 (= (x!17628 thiss!6377) (y!1523 x$40!15))) (and b!47819 (= lambda!7004 (y!1523 x$40!15))) (and b!47821 (= lambda!6999 (y!1523 x$40!15))) (and b!47817 b_free!5831) (and b!47818 b_free!5825 (= (y!1523 x$39!40) (y!1523 x$40!15))) (and b!47827 b_free!5813 (= (y!1524 x$41!67) (y!1523 x$40!15))) b_lambda!12667)))

(declare-fun bs!18788 () Bool)

(declare-fun d!33946 () Bool)

(assert (= bs!18788 (and d!33946 b!47824)))

(assert (=> bs!18788 (= (dynLambda!809 lambda!7001) (+!5 (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18788 m!50735))

(assert (=> bs!18788 m!50735))

(assert (=> bs!18788 m!50739))

(assert (=> bs!18788 m!50739))

(assert (=> bs!18788 m!50737))

(assert (=> bs!18788 m!50749))

(assert (=> bs!18788 m!50737))

(assert (=> (and b!47824 (= lambda!7001 (y!1523 x$40!15)) d!33858) d!33946))

(declare-fun bs!18789 () Bool)

(declare-fun d!33948 () Bool)

(assert (= bs!18789 (and d!33948 b!47819)))

(assert (=> bs!18789 (= (dynLambda!809 lambda!7004) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18789 m!50751))

(assert (=> bs!18789 m!50751))

(assert (=> bs!18789 m!50753))

(assert (=> (and b!47819 (= lambda!7004 (y!1523 x$40!15)) d!33858) d!33948))

(declare-fun bs!18790 () Bool)

(declare-fun d!33950 () Bool)

(assert (= bs!18790 (and d!33950 b!47825)))

(assert (=> bs!18790 (= (dynLambda!809 lambda!6997) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18790 m!50737))

(assert (=> bs!18790 m!50737))

(assert (=> bs!18790 m!50743))

(assert (=> (and b!47825 (= lambda!6997 (y!1523 x$40!15)) d!33858) d!33950))

(declare-fun bs!18791 () Bool)

(declare-fun d!33952 () Bool)

(assert (= bs!18791 (and d!33952 b!47821)))

(assert (=> bs!18791 (= (dynLambda!809 lambda!6999) (+!5 (*!4 (n!1360 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18791 m!50745))

(assert (=> bs!18791 m!50737))

(assert (=> bs!18791 m!50747))

(assert (=> bs!18791 m!50737))

(assert (=> bs!18791 m!50745))

(assert (=> bs!18791 m!50737))

(assert (=> (and b!47821 (= lambda!6999 (y!1523 x$40!15)) d!33858) d!33952))

(declare-fun bs!18792 () Bool)

(declare-fun d!33954 () Bool)

(assert (= bs!18792 (and d!33954 b!47819)))

(assert (=> bs!18792 (= (dynLambda!809 lambda!7003) (+!5 (*!4 n2!352 n3!59) (*!4 (*!4 (n!1360 n1!336) n2!352) n3!59)))))

(assert (=> bs!18792 m!50735))

(assert (=> bs!18792 m!50737))

(assert (=> bs!18792 m!50739))

(assert (=> bs!18792 m!50741))

(assert (=> bs!18792 m!50735))

(assert (=> bs!18792 m!50739))

(assert (=> bs!18792 m!50737))

(assert (=> (and b!47819 (= lambda!7003 (y!1523 x$40!15)) d!33858) d!33954))

(push 1)

(assert (not b!47849))

(assert (not bs!18764))

(assert b_and!38087)

(assert (not b_next!26383))

(assert (not bs!18781))

(assert (not b_next!26367))

(assert (not b_lambda!12665))

(assert (not b_lambda!12653))

(assert (not b_next!26377))

(assert (not bs!18787))

(assert (not b_next!26379))

(assert (not bs!18761))

(assert (not b_next!26369))

(assert (not b_lambda!12655))

(assert (not bs!18771))

(assert (not bs!18772))

(assert (not bs!18774))

(assert (not bs!18760))

(assert (not b_lambda!12661))

(assert (not d!33850))

(assert b_and!38093)

(assert (not b!47845))

(assert (not bs!18763))

(assert (not bs!18789))

(assert (not bs!18784))

(assert (not bs!18768))

(assert (not b_lambda!12667))

(assert b_and!38095)

(assert (not b_lambda!12627))

(assert (not b_next!26359))

(assert (not b_lambda!12657))

(assert (not bs!18767))

(assert (not b!47855))

(assert b_and!38101)

(assert (not bs!18762))

(assert (not b_lambda!12659))

(assert (not bs!18756))

(assert (not b_lambda!12623))

(assert (not bs!18779))

(assert (not b_next!26375))

(assert (not bs!18770))

(assert b_and!37831)

(assert (not bs!18778))

(assert (not b_next!26381))

(assert b_and!38097)

(assert (not bs!18791))

(assert (not bs!18776))

(assert (not b_next!26371))

(assert (not b!47837))

(assert (not b!47847))

(assert (not bs!18788))

(assert (not bs!18777))

(assert (not b!47853))

(assert (not bs!18754))

(assert b_and!38091)

(assert b_and!38085)

(assert (not bs!18792))

(assert (not bs!18786))

(assert (not b_lambda!12663))

(assert (not d!33852))

(assert (not bs!18759))

(assert (not bs!18783))

(assert (not b_next!26385))

(assert (not bs!18780))

(assert (not bs!18757))

(assert (not b_lambda!12651))

(assert (not b!47851))

(assert (not b_next!26281))

(assert (not bs!18790))

(assert (not b_next!26361))

(assert (not b_next!26365))

(assert (not bs!18758))

(assert (not bs!18753))

(assert (not bs!18785))

(assert (not bs!18782))

(assert (not b_next!26373))

(assert b_and!37863)

(assert (not b_lambda!12649))

(assert (not d!33872))

(assert (not b!47843))

(assert (not bs!18765))

(assert b_and!38099)

(assert (not b_lambda!12625))

(assert (not bs!18769))

(assert (not bs!18775))

(assert (not bs!18773))

(assert (not bs!18755))

(assert (not b_next!26363))

(assert (not b!47857))

(assert b_and!38089)

(assert b_and!37857)

(assert (not bs!18766))

(assert (not b!47859))

(assert b_and!37859)

(assert b_and!38103)

(assert b_and!37861)

(check-sat)

(pop 1)

(push 1)

(assert b_and!38087)

(assert (not b_next!26383))

(assert (not b_next!26367))

(assert (not b_next!26377))

(assert (not b_next!26379))

(assert (not b_next!26369))

(assert b_and!38093)

(assert b_and!38095)

(assert (not b_next!26359))

(assert b_and!38101)

(assert (not b_next!26375))

(assert b_and!37831)

(assert (not b_next!26381))

(assert b_and!38097)

(assert (not b_next!26371))

(assert b_and!38091)

(assert b_and!38085)

(assert (not b_next!26385))

(assert (not b_next!26281))

(assert (not b_next!26361))

(assert (not b_next!26365))

(assert (not b_next!26373))

(assert b_and!37863)

(assert b_and!38099)

(assert (not b_next!26363))

(assert b_and!38089)

(assert b_and!37857)

(assert b_and!37859)

(assert b_and!38103)

(assert b_and!37861)

(check-sat)

(pop 1)

