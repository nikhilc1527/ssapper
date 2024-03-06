; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2204 () Bool)

(assert start!2204)

(declare-fun b_free!1457 () Bool)

(declare-fun b_next!3521 () Bool)

(assert (=> start!2204 (= b_free!1457 (not b_next!3521))))

(declare-fun tp!2344 () Bool)

(declare-fun b_and!5065 () Bool)

(assert (=> start!2204 (= tp!2344 b_and!5065)))

(declare-fun b_free!1459 () Bool)

(declare-fun b_next!3523 () Bool)

(assert (=> start!2204 (= b_free!1459 (not b_next!3523))))

(declare-fun tp!2343 () Bool)

(declare-fun b_and!5067 () Bool)

(assert (=> start!2204 (= tp!2343 b_and!5067)))

(declare-fun f!539 () Int)

(declare-fun b!10947 () Bool)

(declare-fun b_next!3525 () Bool)

(declare-fun lambda!2898 () Int)

(assert (=> start!2204 (= b_next!3521 (or (and b!10947 (= lambda!2898 f!539)) b_next!3525))))

(declare-fun f!560 () Int)

(declare-fun b_next!3527 () Bool)

(assert (=> start!2204 (= b_next!3523 (or (and b!10947 (= lambda!2898 f!560)) b_next!3527))))

(declare-fun b!10944 () Bool)

(declare-fun res!3925 () Bool)

(declare-fun e!6285 () Bool)

(assert (=> b!10944 (=> (not res!3925) (not e!6285))))

(declare-datatypes () ((Balance!287 (Balance!288 (extraOpen!184 Int) (extraClose!184 Int)))))

(declare-datatypes () ((List!263 (Nil!261) (Cons!260 (head!478 Balance!287) (tail!490 List!263)))))

(declare-fun ys!54 () List!263)

(declare-fun isEmpty!191 (List!263) Bool)

(assert (=> b!10944 (= res!3925 (not (isEmpty!191 ys!54)))))

(declare-fun b!10945 () Bool)

(declare-fun res!3926 () Bool)

(assert (=> b!10945 (=> (not res!3926) (not e!6285))))

(declare-fun thiss!751 () List!263)

(declare-fun xs!292 () List!263)

(assert (=> b!10945 (= res!3926 (and (or (not (is-Cons!260 xs!292)) (not (is-Nil!261 (tail!490 xs!292)))) (= thiss!751 ys!54) (= f!560 f!539)))))

(declare-fun res!3928 () Bool)

(assert (=> start!2204 (=> (not res!3928) (not e!6285))))

(assert (=> start!2204 (= res!3928 (not (isEmpty!191 xs!292)))))

(assert (=> start!2204 e!6285))

(assert (=> start!2204 true))

(assert (=> start!2204 tp!2344))

(assert (=> start!2204 tp!2343))

(declare-fun b!10946 () Bool)

(declare-fun res!3929 () Bool)

(assert (=> b!10946 (=> (not res!3929) (not e!6285))))

(declare-datatypes () ((ProofOps!226 (ProofOps!227 (prop!246 Bool)))))

(declare-fun thiss!710 () ProofOps!226)

(declare-fun dynLambda!373 (Int Balance!287 Balance!287) Balance!287)

(declare-fun foldRight1!93 (List!263 Int) Balance!287)

(declare-fun append!112 (List!263 List!263) List!263)

(assert (=> b!10946 (= res!3929 (= thiss!710 (ProofOps!227 (= (dynLambda!373 f!539 (foldRight1!93 xs!292 f!539) (foldRight1!93 ys!54 f!539)) (foldRight1!93 (append!112 xs!292 ys!54) f!539)))))))

(declare-fun res!3927 () Bool)

(assert (=> b!10947 (=> (not res!3927) (not e!6285))))

(assert (=> b!10947 (= res!3927 (= f!539 lambda!2898))))

(declare-fun b!10948 () Bool)

(assert (=> b!10948 (= e!6285 (isEmpty!191 thiss!751))))

(assert (= (and start!2204 res!3928) b!10944))

(assert (= (and b!10944 res!3925) b!10947))

(assert (= (and b!10947 res!3927) b!10946))

(assert (= (and b!10946 res!3929) b!10945))

(assert (= (and b!10945 res!3926) b!10948))

(declare-fun b_lambda!5657 () Bool)

(assert (=> (not b_lambda!5657) (not b!10946)))

(declare-fun t!3021 () Bool)

(declare-fun tb!2681 () Bool)

(assert (=> (and start!2204 (= f!539 f!539) t!3021) tb!2681))

(declare-fun result!2733 () Bool)

(assert (=> tb!2681 (= result!2733 true)))

(assert (=> b!10946 t!3021))

(declare-fun b_and!5069 () Bool)

(assert (= b_and!5065 (and (=> t!3021 result!2733) b_and!5069)))

(declare-fun tb!2683 () Bool)

(declare-fun t!3023 () Bool)

(assert (=> (and start!2204 (= f!560 f!539) t!3023) tb!2683))

(declare-fun result!2735 () Bool)

(assert (=> tb!2683 (= result!2735 true)))

(assert (=> b!10946 t!3023))

(declare-fun b_and!5071 () Bool)

(assert (= b_and!5067 (and (=> t!3023 result!2735) b_and!5071)))

(declare-fun m!13921 () Bool)

(assert (=> b!10944 m!13921))

(declare-fun m!13923 () Bool)

(assert (=> start!2204 m!13923))

(declare-fun m!13925 () Bool)

(assert (=> b!10946 m!13925))

(declare-fun m!13927 () Bool)

(assert (=> b!10946 m!13927))

(declare-fun m!13929 () Bool)

(assert (=> b!10946 m!13929))

(assert (=> b!10946 m!13927))

(assert (=> b!10946 m!13929))

(declare-fun m!13931 () Bool)

(assert (=> b!10946 m!13931))

(assert (=> b!10946 m!13925))

(declare-fun m!13933 () Bool)

(assert (=> b!10946 m!13933))

(declare-fun m!13935 () Bool)

(assert (=> b!10948 m!13935))

(push 1)

(assert (not b!10946))

(assert (not b_next!3527))

(assert b_and!5069)

(assert (not b_lambda!5657))

(assert (not start!2204))

(assert (not b!10948))

(assert (not b!10944))

(assert b_and!5071)

(assert (not b_next!3525))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5069)

(assert b_and!5071)

(assert (not b_next!3525))

(assert (not b_next!3527))

(check-sat)

(pop 1)

