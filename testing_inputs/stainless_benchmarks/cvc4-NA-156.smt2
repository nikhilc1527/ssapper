; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1014 () Bool)

(assert start!1014)

(declare-fun b!6276 () Bool)

(declare-fun b_free!167 () Bool)

(declare-fun b_next!331 () Bool)

(assert (=> b!6276 (= b_free!167 (not b_next!331))))

(declare-fun tp!382 () Bool)

(declare-fun b_and!1239 () Bool)

(assert (=> b!6276 (= tp!382 b_and!1239)))

(declare-fun b_free!169 () Bool)

(declare-fun b_next!333 () Bool)

(assert (=> b!6276 (= b_free!169 (not b_next!333))))

(declare-fun tp!381 () Bool)

(declare-fun b_and!1241 () Bool)

(assert (=> b!6276 (= tp!381 b_and!1241)))

(declare-fun b_free!171 () Bool)

(declare-fun b_next!335 () Bool)

(assert (=> b!6276 (= b_free!171 (not b_next!335))))

(declare-fun tp!385 () Bool)

(declare-fun b_and!1243 () Bool)

(assert (=> b!6276 (= tp!385 b_and!1243)))

(declare-fun b!6275 () Bool)

(declare-fun b_free!173 () Bool)

(declare-fun b_next!337 () Bool)

(assert (=> b!6275 (= b_free!173 (not b_next!337))))

(declare-fun tp!383 () Bool)

(declare-fun b_and!1245 () Bool)

(assert (=> b!6275 (= tp!383 b_and!1245)))

(declare-fun b_free!175 () Bool)

(declare-fun b_next!339 () Bool)

(assert (=> b!6275 (= b_free!175 (not b_next!339))))

(declare-fun tp!384 () Bool)

(declare-fun b_and!1247 () Bool)

(assert (=> b!6275 (= tp!384 b_and!1247)))

(declare-fun b!6274 () Bool)

(assert (=> b!6274 true))

(declare-datatypes () ((Balance!31 (Balance!32 (extraOpen!56 Int) (extraClose!56 Int)))))

(declare-datatypes () ((EqEvidence!22 (EqEvidence!23 (x!3294 Int) (y!427 Int) (evidence!78 Int)))))

(declare-fun thiss!1204 () EqEvidence!22)

(declare-fun lambda!482 () Int)

(declare-fun b_next!341 () Bool)

(assert (=> b!6276 (= b_next!331 (or (and b!6274 (= lambda!482 (x!3294 thiss!1204))) b_next!341))))

(declare-fun b_next!343 () Bool)

(assert (=> b!6276 (= b_next!333 (or (and b!6274 (= lambda!482 (y!427 thiss!1204))) b_next!343))))

(declare-fun b_next!345 () Bool)

(declare-datatypes () ((EqProof!14 (EqProof!15 (x!3295 Int) (y!428 Int)))))

(declare-fun thiss!1228 () EqProof!14)

(assert (=> b!6275 (= b_next!337 (or (and b!6274 (= lambda!482 (x!3295 thiss!1228))) b_next!345))))

(declare-fun b_next!347 () Bool)

(assert (=> b!6275 (= b_next!339 (or (and b!6274 (= lambda!482 (y!428 thiss!1228))) b_next!347))))

(declare-fun lambda!486 () Int)

(assert (=> b!6274 (not (= lambda!486 lambda!482))))

(assert (=> b!6274 true))

(declare-fun b_next!349 () Bool)

(assert (=> b!6276 (= b_next!341 (or (and b!6274 (= lambda!486 (x!3294 thiss!1204))) b_next!349))))

(declare-fun b_next!351 () Bool)

(assert (=> b!6276 (= b_next!343 (or (and b!6274 (= lambda!486 (y!427 thiss!1204))) b_next!351))))

(declare-fun b_next!353 () Bool)

(assert (=> b!6275 (= b_next!345 (or (and b!6274 (= lambda!486 (x!3295 thiss!1228))) b_next!353))))

(declare-fun b_next!355 () Bool)

(assert (=> b!6275 (= b_next!347 (or (and b!6274 (= lambda!486 (y!428 thiss!1228))) b_next!355))))

(assert (=> b!6274 true))

(declare-fun lambda!487 () Int)

(declare-fun b_next!357 () Bool)

(assert (=> b!6276 (= b_next!335 (or (and b!6274 (= lambda!487 (evidence!78 thiss!1204))) b_next!357))))

(declare-fun bs!1296 () Bool)

(declare-fun b!6272 () Bool)

(assert (= bs!1296 (and b!6272 b!6274)))

(declare-fun lambda!488 () Int)

(assert (=> bs!1296 (not (= lambda!488 lambda!482))))

(assert (=> bs!1296 (not (= lambda!488 lambda!486))))

(assert (=> b!6272 true))

(declare-fun b_next!359 () Bool)

(assert (=> b!6276 (= b_next!349 (or (and b!6272 (= lambda!488 (x!3294 thiss!1204))) b_next!359))))

(declare-fun b_next!361 () Bool)

(assert (=> b!6276 (= b_next!351 (or (and b!6272 (= lambda!488 (y!427 thiss!1204))) b_next!361))))

(declare-fun b_next!363 () Bool)

(assert (=> b!6275 (= b_next!353 (or (and b!6272 (= lambda!488 (x!3295 thiss!1228))) b_next!363))))

(declare-fun b_next!365 () Bool)

(assert (=> b!6275 (= b_next!355 (or (and b!6272 (= lambda!488 (y!428 thiss!1228))) b_next!365))))

(declare-fun res!1690 () Bool)

(declare-fun e!3746 () Bool)

(assert (=> b!6272 (=> (not res!1690) (not e!3746))))

(assert (=> b!6272 (= res!1690 (= thiss!1228 (EqProof!15 lambda!488 lambda!488)))))

(declare-fun b!6273 () Bool)

(declare-fun res!1691 () Bool)

(assert (=> b!6273 (=> (not res!1691) (not e!3746))))

(declare-datatypes () ((Parenthesis!18 (CloseParenthesis!17) (OpenParenthesis!17))))

(declare-datatypes () ((List!120 (Nil!118) (Cons!117 (head!335 Parenthesis!18) (tail!347 List!120)))))

(declare-fun xs!414 () List!120)

(declare-fun xs!395 () List!120)

(assert (=> b!6273 (= res!1691 (= xs!414 xs!395))))

(declare-fun res!1692 () Bool)

(assert (=> b!6274 (=> (not res!1692) (not e!3746))))

(assert (=> b!6274 (= res!1692 (= thiss!1204 (EqEvidence!23 lambda!482 lambda!486 lambda!487)))))

(declare-fun e!3748 () Bool)

(assert (=> b!6275 (= e!3748 (and tp!383 tp!384))))

(declare-fun e!3747 () Bool)

(assert (=> b!6276 (= e!3747 (and tp!382 tp!381 tp!385))))

(declare-fun b!6277 () Bool)

(declare-fun isEmpty!110 (List!120) Bool)

(assert (=> b!6277 (= e!3746 (isEmpty!110 xs!414))))

(declare-fun b!6278 () Bool)

(declare-fun res!1693 () Bool)

(assert (=> b!6278 (=> (not res!1693) (not e!3746))))

(declare-datatypes () ((ProofOps!26 (ProofOps!27 (prop!120 Bool)))))

(declare-fun thiss!1201 () ProofOps!26)

(declare-fun isMatchedSequential!0 (List!120) Bool)

(declare-fun isMatchedHybid!0 (List!120) Bool)

(assert (=> b!6278 (= res!1693 (= thiss!1201 (ProofOps!27 (= (isMatchedSequential!0 xs!395) (isMatchedHybid!0 xs!395)))))))

(declare-fun res!1694 () Bool)

(assert (=> start!1014 (=> (not res!1694) (not e!3746))))

(assert (=> start!1014 (= res!1694 (not (isEmpty!110 xs!395)))))

(assert (=> start!1014 e!3746))

(assert (=> start!1014 true))

(declare-fun inv!222 (EqEvidence!22) Bool)

(assert (=> start!1014 (and (inv!222 thiss!1204) e!3747)))

(declare-fun inv!223 (EqProof!14) Bool)

(assert (=> start!1014 (and (inv!223 thiss!1228) e!3748)))

(assert (= (and start!1014 res!1694) b!6278))

(assert (= (and b!6278 res!1693) b!6274))

(assert (= (and b!6274 res!1692) b!6272))

(assert (= (and b!6272 res!1690) b!6273))

(assert (= (and b!6273 res!1691) b!6277))

(assert (= start!1014 b!6276))

(assert (= start!1014 b!6275))

(declare-fun m!9021 () Bool)

(assert (=> b!6277 m!9021))

(declare-fun m!9023 () Bool)

(assert (=> b!6278 m!9023))

(declare-fun m!9025 () Bool)

(assert (=> b!6278 m!9025))

(declare-fun m!9027 () Bool)

(assert (=> start!1014 m!9027))

(declare-fun m!9029 () Bool)

(assert (=> start!1014 m!9029))

(declare-fun m!9031 () Bool)

(assert (=> start!1014 m!9031))

(push 1)

(assert (not b_next!359))

(assert b_and!1247)

(assert (not b_next!363))

(assert (not b!6278))

(assert (not b_next!361))

(assert b_and!1245)

(assert b_and!1241)

(assert (not b!6277))

(assert (not start!1014))

(assert (not b_next!357))

(assert b_and!1239)

(assert b_and!1243)

(assert (not b_next!365))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!359))

(assert b_and!1247)

(assert (not b_next!363))

(assert (not b_next!361))

(assert b_and!1245)

(assert b_and!1241)

(assert (not b_next!357))

(assert b_and!1239)

(assert b_and!1243)

(assert (not b_next!365))

(check-sat)

(pop 1)

