; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6166 () Bool)

(assert start!6166)

(declare-fun b!45759 () Bool)

(declare-fun b_free!4971 () Bool)

(declare-fun b_next!23245 () Bool)

(assert (=> b!45759 (= b_free!4971 (not b_next!23245))))

(declare-fun tp!11542 () Bool)

(declare-fun b_and!34567 () Bool)

(assert (=> b!45759 (= tp!11542 b_and!34567)))

(declare-fun b_free!4973 () Bool)

(declare-fun b_next!23247 () Bool)

(assert (=> b!45759 (= b_free!4973 (not b_next!23247))))

(declare-fun tp!11552 () Bool)

(declare-fun b_and!34569 () Bool)

(assert (=> b!45759 (= tp!11552 b_and!34569)))

(declare-fun b_free!4975 () Bool)

(declare-fun b_next!23249 () Bool)

(assert (=> b!45759 (= b_free!4975 (not b_next!23249))))

(declare-fun tp!11551 () Bool)

(declare-fun b_and!34571 () Bool)

(assert (=> b!45759 (= tp!11551 b_and!34571)))

(declare-fun b!45752 () Bool)

(declare-fun b_free!4977 () Bool)

(declare-fun b_next!23251 () Bool)

(assert (=> b!45752 (= b_free!4977 (not b_next!23251))))

(declare-fun tp!11548 () Bool)

(declare-fun b_and!34573 () Bool)

(assert (=> b!45752 (= tp!11548 b_and!34573)))

(declare-fun b_free!4979 () Bool)

(declare-fun b_next!23253 () Bool)

(assert (=> b!45752 (= b_free!4979 (not b_next!23253))))

(declare-fun tp!11546 () Bool)

(declare-fun b_and!34575 () Bool)

(assert (=> b!45752 (= tp!11546 b_and!34575)))

(declare-fun b_free!4981 () Bool)

(declare-fun b_next!23255 () Bool)

(assert (=> b!45752 (= b_free!4981 (not b_next!23255))))

(declare-fun tp!11545 () Bool)

(declare-fun b_and!34577 () Bool)

(assert (=> b!45752 (= tp!11545 b_and!34577)))

(declare-fun b!45761 () Bool)

(declare-fun b_free!4983 () Bool)

(declare-fun b_next!23257 () Bool)

(assert (=> b!45761 (= b_free!4983 (not b_next!23257))))

(declare-fun tp!11550 () Bool)

(declare-fun b_and!34579 () Bool)

(assert (=> b!45761 (= tp!11550 b_and!34579)))

(declare-fun b_free!4985 () Bool)

(declare-fun b_next!23259 () Bool)

(assert (=> b!45761 (= b_free!4985 (not b_next!23259))))

(declare-fun tp!11554 () Bool)

(declare-fun b_and!34581 () Bool)

(assert (=> b!45761 (= tp!11554 b_and!34581)))

(declare-fun b_free!4987 () Bool)

(declare-fun b_next!23261 () Bool)

(assert (=> b!45761 (= b_free!4987 (not b_next!23261))))

(declare-fun tp!11543 () Bool)

(declare-fun b_and!34583 () Bool)

(assert (=> b!45761 (= tp!11543 b_and!34583)))

(declare-fun b!45763 () Bool)

(declare-fun b_free!4989 () Bool)

(declare-fun b_next!23263 () Bool)

(assert (=> b!45763 (= b_free!4989 (not b_next!23263))))

(declare-fun tp!11541 () Bool)

(declare-fun b_and!34585 () Bool)

(assert (=> b!45763 (= tp!11541 b_and!34585)))

(declare-fun b_free!4991 () Bool)

(declare-fun b_next!23265 () Bool)

(assert (=> b!45763 (= b_free!4991 (not b_next!23265))))

(declare-fun tp!11547 () Bool)

(declare-fun b_and!34587 () Bool)

(assert (=> b!45763 (= tp!11547 b_and!34587)))

(declare-fun b_free!4993 () Bool)

(declare-fun b_next!23267 () Bool)

(assert (=> b!45763 (= b_free!4993 (not b_next!23267))))

(declare-fun tp!11549 () Bool)

(declare-fun b_and!34589 () Bool)

(assert (=> b!45763 (= tp!11549 b_and!34589)))

(declare-fun b!45753 () Bool)

(declare-fun b_free!4995 () Bool)

(declare-fun b_next!23269 () Bool)

(assert (=> b!45753 (= b_free!4995 (not b_next!23269))))

(declare-fun tp!11553 () Bool)

(declare-fun b_and!34591 () Bool)

(assert (=> b!45753 (= tp!11553 b_and!34591)))

(declare-fun b_free!4997 () Bool)

(declare-fun b_next!23271 () Bool)

(assert (=> b!45753 (= b_free!4997 (not b_next!23271))))

(declare-fun tp!11544 () Bool)

(declare-fun b_and!34593 () Bool)

(assert (=> b!45753 (= tp!11544 b_and!34593)))

(declare-fun b_free!4999 () Bool)

(declare-fun b_next!23273 () Bool)

(assert (=> b!45753 (= b_free!4999 (not b_next!23273))))

(declare-fun tp!11540 () Bool)

(declare-fun b_and!34595 () Bool)

(assert (=> b!45753 (= tp!11540 b_and!34595)))

(declare-fun b!45755 () Bool)

(assert (=> b!45755 true))

(declare-datatypes () ((Unit!560 (Unit!561))))

(declare-datatypes () ((RAEqEvidence!274 (RAEqEvidence!275 (x!16936 Int) (y!1476 Int) (evidence!589 Int)))))

(declare-fun prev!598 () RAEqEvidence!274)

(declare-fun b_next!23275 () Bool)

(declare-fun lambda!6501 () Int)

(assert (=> b!45752 (= b_next!23253 (or (and b!45755 (= lambda!6501 (y!1476 prev!598))) b_next!23275))))

(declare-fun thiss!5697 () RAEqEvidence!274)

(declare-fun b_next!23277 () Bool)

(assert (=> b!45761 (= b_next!23259 (or (and b!45755 (= lambda!6501 (y!1476 thiss!5697))) b_next!23277))))

(declare-datatypes () ((RAEqEvidence!276 (RAEqEvidence!277 (x!16937 Int) (y!1477 Int) (evidence!590 Int)))))

(declare-fun x$71!28 () RAEqEvidence!276)

(declare-fun b_next!23279 () Bool)

(assert (=> b!45753 (= b_next!23271 (or (and b!45755 (= lambda!6501 (y!1477 x$71!28))) b_next!23279))))

(declare-fun b_next!23281 () Bool)

(assert (=> b!45761 (= b_next!23257 (or (and b!45755 (= lambda!6501 (x!16936 thiss!5697))) b_next!23281))))

(declare-fun b_next!23283 () Bool)

(assert (=> b!45753 (= b_next!23269 (or (and b!45755 (= lambda!6501 (x!16937 x$71!28))) b_next!23283))))

(declare-fun b_next!23285 () Bool)

(assert (=> b!45752 (= b_next!23251 (or (and b!45755 (= lambda!6501 (x!16936 prev!598))) b_next!23285))))

(declare-fun b_next!23287 () Bool)

(assert (=> b!45753 (= b_next!23273 (or (and b!45755 (= lambda!6501 (evidence!590 x$71!28))) b_next!23287))))

(declare-fun x$70!29 () RAEqEvidence!274)

(declare-fun b_next!23289 () Bool)

(assert (=> b!45759 (= b_next!23245 (or (and b!45755 (= lambda!6501 (x!16936 x$70!29))) b_next!23289))))

(declare-fun b_next!23291 () Bool)

(assert (=> b!45759 (= b_next!23247 (or (and b!45755 (= lambda!6501 (y!1476 x$70!29))) b_next!23291))))

(declare-fun b_next!23293 () Bool)

(declare-fun x$72!18 () RAEqEvidence!274)

(assert (=> b!45763 (= b_next!23263 (or (and b!45755 (= lambda!6501 (x!16936 x$72!18))) b_next!23293))))

(declare-fun b_next!23295 () Bool)

(assert (=> b!45763 (= b_next!23265 (or (and b!45755 (= lambda!6501 (y!1476 x$72!18))) b_next!23295))))

(assert (=> b!45755 true))

(declare-fun lambda!6502 () Int)

(declare-fun b_next!23297 () Bool)

(assert (=> b!45759 (= b_next!23249 (or (and b!45755 (= lambda!6502 (evidence!589 x$70!29))) b_next!23297))))

(declare-fun b_next!23299 () Bool)

(assert (=> b!45752 (= b_next!23255 (or (and b!45755 (= lambda!6502 (evidence!589 prev!598))) b_next!23299))))

(declare-fun b_next!23301 () Bool)

(assert (=> b!45761 (= b_next!23261 (or (and b!45755 (= lambda!6502 (evidence!589 thiss!5697))) b_next!23301))))

(declare-fun b_next!23303 () Bool)

(assert (=> b!45763 (= b_next!23267 (or (and b!45755 (= lambda!6502 (evidence!589 x$72!18))) b_next!23303))))

(declare-fun bs!18080 () Bool)

(declare-fun b!45756 () Bool)

(assert (= bs!18080 (and b!45756 b!45755)))

(declare-datatypes () ((Nat!177 (Zero!161) (Succ!158 (n!1310 Nat!177)))))

(declare-fun n!723 () Nat!177)

(declare-fun lambda!6503 () Int)

(assert (=> bs!18080 (= (and (= n!723 (Succ!158 (Succ!158 Zero!161))) (= (Succ!158 (Succ!158 Zero!161)) n!723)) (= lambda!6503 lambda!6501))))

(assert (=> b!45756 true))

(declare-fun b_next!23305 () Bool)

(assert (=> b!45752 (= b_next!23275 (or (and b!45756 (= lambda!6503 (y!1476 prev!598))) b_next!23305))))

(declare-fun b_next!23307 () Bool)

(assert (=> b!45761 (= b_next!23277 (or (and b!45756 (= lambda!6503 (y!1476 thiss!5697))) b_next!23307))))

(declare-fun b_next!23309 () Bool)

(assert (=> b!45753 (= b_next!23279 (or (and b!45756 (= lambda!6503 (y!1477 x$71!28))) b_next!23309))))

(declare-fun b_next!23311 () Bool)

(assert (=> b!45761 (= b_next!23281 (or (and b!45756 (= lambda!6503 (x!16936 thiss!5697))) b_next!23311))))

(declare-fun b_next!23313 () Bool)

(assert (=> b!45753 (= b_next!23283 (or (and b!45756 (= lambda!6503 (x!16937 x$71!28))) b_next!23313))))

(declare-fun b_next!23315 () Bool)

(assert (=> b!45752 (= b_next!23285 (or (and b!45756 (= lambda!6503 (x!16936 prev!598))) b_next!23315))))

(declare-fun b_next!23317 () Bool)

(assert (=> b!45753 (= b_next!23287 (or (and b!45756 (= lambda!6503 (evidence!590 x$71!28))) b_next!23317))))

(declare-fun b_next!23319 () Bool)

(assert (=> b!45759 (= b_next!23289 (or (and b!45756 (= lambda!6503 (x!16936 x$70!29))) b_next!23319))))

(declare-fun b_next!23321 () Bool)

(assert (=> b!45759 (= b_next!23291 (or (and b!45756 (= lambda!6503 (y!1476 x$70!29))) b_next!23321))))

(declare-fun b_next!23323 () Bool)

(assert (=> b!45763 (= b_next!23293 (or (and b!45756 (= lambda!6503 (x!16936 x$72!18))) b_next!23323))))

(declare-fun b_next!23325 () Bool)

(assert (=> b!45763 (= b_next!23295 (or (and b!45756 (= lambda!6503 (y!1476 x$72!18))) b_next!23325))))

(declare-fun m!48695 () Bool)

(assert (=> b!45756 m!48695))

(declare-fun lambda!6504 () Int)

(assert (=> bs!18080 (not (= lambda!6504 lambda!6501))))

(assert (=> b!45756 (not (= lambda!6504 lambda!6503))))

(declare-fun dynLambda!774 (Int) Bool)

(assert (=> (and b!45752 b!45756 (= (dynLambda!774 lambda!6504) (dynLambda!774 (y!1476 prev!598)))) (= lambda!6504 (y!1476 prev!598))))

(assert (=> (and b!45761 b!45756 (= (dynLambda!774 lambda!6504) (dynLambda!774 (y!1476 thiss!5697)))) (= lambda!6504 (y!1476 thiss!5697))))

(assert (=> (and b!45753 b!45756 (= (dynLambda!774 lambda!6504) (dynLambda!774 (y!1477 x$71!28)))) (= lambda!6504 (y!1477 x$71!28))))

(assert (=> (and b!45761 b!45756 (= (dynLambda!774 lambda!6504) (dynLambda!774 (x!16936 thiss!5697)))) (= lambda!6504 (x!16936 thiss!5697))))

(assert (=> (and b!45753 b!45756 (= (dynLambda!774 lambda!6504) (dynLambda!774 (x!16937 x$71!28)))) (= lambda!6504 (x!16937 x$71!28))))

(assert (=> (and b!45752 b!45756 (= (dynLambda!774 lambda!6504) (dynLambda!774 (x!16936 prev!598)))) (= lambda!6504 (x!16936 prev!598))))

(assert (=> (and b!45753 b!45756 (= (dynLambda!774 lambda!6504) (dynLambda!774 (evidence!590 x$71!28)))) (= lambda!6504 (evidence!590 x$71!28))))

(assert (=> (and b!45759 b!45756 (= (dynLambda!774 lambda!6504) (dynLambda!774 (x!16936 x$70!29)))) (= lambda!6504 (x!16936 x$70!29))))

(assert (=> (and b!45759 b!45756 (= (dynLambda!774 lambda!6504) (dynLambda!774 (y!1476 x$70!29)))) (= lambda!6504 (y!1476 x$70!29))))

(assert (=> (and b!45763 b!45756 (= (dynLambda!774 lambda!6504) (dynLambda!774 (x!16936 x$72!18)))) (= lambda!6504 (x!16936 x$72!18))))

(assert (=> (and b!45763 b!45756 (= (dynLambda!774 lambda!6504) (dynLambda!774 (y!1476 x$72!18)))) (= lambda!6504 (y!1476 x$72!18))))

(declare-fun b_next!23327 () Bool)

(assert (=> b!45752 (= b_next!23305 (or (and b!45756 (= lambda!6504 (y!1476 prev!598))) b_next!23327))))

(declare-fun b_next!23329 () Bool)

(assert (=> b!45761 (= b_next!23307 (or (and b!45756 (= lambda!6504 (y!1476 thiss!5697))) b_next!23329))))

(declare-fun b_next!23331 () Bool)

(assert (=> b!45753 (= b_next!23309 (or (and b!45756 (= lambda!6504 (y!1477 x$71!28))) b_next!23331))))

(declare-fun b_next!23333 () Bool)

(assert (=> b!45761 (= b_next!23311 (or (and b!45756 (= lambda!6504 (x!16936 thiss!5697))) b_next!23333))))

(declare-fun b_next!23335 () Bool)

(assert (=> b!45753 (= b_next!23313 (or (and b!45756 (= lambda!6504 (x!16937 x$71!28))) b_next!23335))))

(declare-fun b_next!23337 () Bool)

(assert (=> b!45752 (= b_next!23315 (or (and b!45756 (= lambda!6504 (x!16936 prev!598))) b_next!23337))))

(declare-fun b_next!23339 () Bool)

(assert (=> b!45753 (= b_next!23317 (or (and b!45756 (= lambda!6504 (evidence!590 x$71!28))) b_next!23339))))

(declare-fun b_next!23341 () Bool)

(assert (=> b!45759 (= b_next!23319 (or (and b!45756 (= lambda!6504 (x!16936 x$70!29))) b_next!23341))))

(declare-fun b_next!23343 () Bool)

(assert (=> b!45759 (= b_next!23321 (or (and b!45756 (= lambda!6504 (y!1476 x$70!29))) b_next!23343))))

(declare-fun b_next!23345 () Bool)

(assert (=> b!45763 (= b_next!23323 (or (and b!45756 (= lambda!6504 (x!16936 x$72!18))) b_next!23345))))

(declare-fun b_next!23347 () Bool)

(assert (=> b!45763 (= b_next!23325 (or (and b!45756 (= lambda!6504 (y!1476 x$72!18))) b_next!23347))))

(declare-fun bs!18081 () Bool)

(declare-fun b!45760 () Bool)

(assert (= bs!18081 (and b!45760 b!45755)))

(declare-fun lambda!6505 () Int)

(assert (=> bs!18081 (not (= lambda!6505 lambda!6501))))

(declare-fun bs!18082 () Bool)

(assert (= bs!18082 (and b!45760 b!45756)))

(assert (=> bs!18082 (not (= lambda!6505 lambda!6503))))

(assert (=> bs!18082 (not (= lambda!6505 lambda!6504))))

(assert (=> b!45760 true))

(declare-fun b_next!23349 () Bool)

(assert (=> b!45752 (= b_next!23327 (or (and b!45760 (= lambda!6505 (y!1476 prev!598))) b_next!23349))))

(declare-fun b_next!23351 () Bool)

(assert (=> b!45761 (= b_next!23329 (or (and b!45760 (= lambda!6505 (y!1476 thiss!5697))) b_next!23351))))

(declare-fun b_next!23353 () Bool)

(assert (=> b!45753 (= b_next!23331 (or (and b!45760 (= lambda!6505 (y!1477 x$71!28))) b_next!23353))))

(declare-fun b_next!23355 () Bool)

(assert (=> b!45761 (= b_next!23333 (or (and b!45760 (= lambda!6505 (x!16936 thiss!5697))) b_next!23355))))

(declare-fun b_next!23357 () Bool)

(assert (=> b!45753 (= b_next!23335 (or (and b!45760 (= lambda!6505 (x!16937 x$71!28))) b_next!23357))))

(declare-fun b_next!23359 () Bool)

(assert (=> b!45752 (= b_next!23337 (or (and b!45760 (= lambda!6505 (x!16936 prev!598))) b_next!23359))))

(declare-fun b_next!23361 () Bool)

(assert (=> b!45753 (= b_next!23339 (or (and b!45760 (= lambda!6505 (evidence!590 x$71!28))) b_next!23361))))

(declare-fun b_next!23363 () Bool)

(assert (=> b!45759 (= b_next!23341 (or (and b!45760 (= lambda!6505 (x!16936 x$70!29))) b_next!23363))))

(declare-fun b_next!23365 () Bool)

(assert (=> b!45759 (= b_next!23343 (or (and b!45760 (= lambda!6505 (y!1476 x$70!29))) b_next!23365))))

(declare-fun b_next!23367 () Bool)

(assert (=> b!45763 (= b_next!23345 (or (and b!45760 (= lambda!6505 (x!16936 x$72!18))) b_next!23367))))

(declare-fun b_next!23369 () Bool)

(assert (=> b!45763 (= b_next!23347 (or (and b!45760 (= lambda!6505 (y!1476 x$72!18))) b_next!23369))))

(declare-fun lambda!6506 () Int)

(assert (=> bs!18081 (not (= lambda!6506 lambda!6502))))

(assert (=> b!45760 true))

(declare-fun b_next!23371 () Bool)

(assert (=> b!45759 (= b_next!23297 (or (and b!45760 (= lambda!6506 (evidence!589 x$70!29))) b_next!23371))))

(declare-fun b_next!23373 () Bool)

(assert (=> b!45752 (= b_next!23299 (or (and b!45760 (= lambda!6506 (evidence!589 prev!598))) b_next!23373))))

(declare-fun b_next!23375 () Bool)

(assert (=> b!45761 (= b_next!23301 (or (and b!45760 (= lambda!6506 (evidence!589 thiss!5697))) b_next!23375))))

(declare-fun b_next!23377 () Bool)

(assert (=> b!45763 (= b_next!23303 (or (and b!45760 (= lambda!6506 (evidence!589 x$72!18))) b_next!23377))))

(declare-fun bs!18083 () Bool)

(declare-fun b!45762 () Bool)

(assert (= bs!18083 (and b!45762 b!45755)))

(declare-fun lambda!6507 () Int)

(assert (=> bs!18083 (= (and (= (n!1310 n!723) (Succ!158 (Succ!158 Zero!161))) (= (Succ!158 (Succ!158 Zero!161)) n!723)) (= lambda!6507 lambda!6501))))

(declare-fun bs!18084 () Bool)

(assert (= bs!18084 (and b!45762 b!45756)))

(assert (=> bs!18084 (= (= (n!1310 n!723) n!723) (= lambda!6507 lambda!6503))))

(assert (=> bs!18084 (not (= lambda!6507 lambda!6504))))

(declare-fun bs!18085 () Bool)

(assert (= bs!18085 (and b!45762 b!45760)))

(assert (=> bs!18085 (not (= lambda!6507 lambda!6505))))

(assert (=> b!45762 true))

(declare-fun b_next!23379 () Bool)

(assert (=> b!45752 (= b_next!23349 (or (and b!45762 (= lambda!6507 (y!1476 prev!598))) b_next!23379))))

(declare-fun b_next!23381 () Bool)

(assert (=> b!45761 (= b_next!23351 (or (and b!45762 (= lambda!6507 (y!1476 thiss!5697))) b_next!23381))))

(declare-fun b_next!23383 () Bool)

(assert (=> b!45753 (= b_next!23353 (or (and b!45762 (= lambda!6507 (y!1477 x$71!28))) b_next!23383))))

(declare-fun b_next!23385 () Bool)

(assert (=> b!45761 (= b_next!23355 (or (and b!45762 (= lambda!6507 (x!16936 thiss!5697))) b_next!23385))))

(declare-fun b_next!23387 () Bool)

(assert (=> b!45753 (= b_next!23357 (or (and b!45762 (= lambda!6507 (x!16937 x$71!28))) b_next!23387))))

(declare-fun b_next!23389 () Bool)

(assert (=> b!45752 (= b_next!23359 (or (and b!45762 (= lambda!6507 (x!16936 prev!598))) b_next!23389))))

(declare-fun b_next!23391 () Bool)

(assert (=> b!45753 (= b_next!23361 (or (and b!45762 (= lambda!6507 (evidence!590 x$71!28))) b_next!23391))))

(declare-fun b_next!23393 () Bool)

(assert (=> b!45759 (= b_next!23363 (or (and b!45762 (= lambda!6507 (x!16936 x$70!29))) b_next!23393))))

(declare-fun b_next!23395 () Bool)

(assert (=> b!45759 (= b_next!23365 (or (and b!45762 (= lambda!6507 (y!1476 x$70!29))) b_next!23395))))

(declare-fun b_next!23397 () Bool)

(assert (=> b!45763 (= b_next!23367 (or (and b!45762 (= lambda!6507 (x!16936 x$72!18))) b_next!23397))))

(declare-fun b_next!23399 () Bool)

(assert (=> b!45763 (= b_next!23369 (or (and b!45762 (= lambda!6507 (y!1476 x$72!18))) b_next!23399))))

(declare-fun lambda!6508 () Int)

(assert (=> bs!18085 (not (= lambda!6508 lambda!6505))))

(declare-fun trivial!1 () Bool)

(assert (=> bs!18084 (= (= true trivial!1) (= lambda!6508 lambda!6504))))

(assert (=> bs!18084 (not (= lambda!6508 lambda!6503))))

(assert (=> b!45762 (not (= lambda!6508 lambda!6507))))

(assert (=> bs!18083 (not (= lambda!6508 lambda!6501))))

(assert (=> (and b!45752 b!45762 (= (dynLambda!774 lambda!6508) (dynLambda!774 (y!1476 prev!598)))) (= lambda!6508 (y!1476 prev!598))))

(assert (=> (and b!45761 b!45762 (= (dynLambda!774 lambda!6508) (dynLambda!774 (y!1476 thiss!5697)))) (= lambda!6508 (y!1476 thiss!5697))))

(assert (=> (and b!45753 b!45762 (= (dynLambda!774 lambda!6508) (dynLambda!774 (y!1477 x$71!28)))) (= lambda!6508 (y!1477 x$71!28))))

(assert (=> (and b!45761 b!45762 (= (dynLambda!774 lambda!6508) (dynLambda!774 (x!16936 thiss!5697)))) (= lambda!6508 (x!16936 thiss!5697))))

(assert (=> (and b!45753 b!45762 (= (dynLambda!774 lambda!6508) (dynLambda!774 (x!16937 x$71!28)))) (= lambda!6508 (x!16937 x$71!28))))

(assert (=> (and b!45752 b!45762 (= (dynLambda!774 lambda!6508) (dynLambda!774 (x!16936 prev!598)))) (= lambda!6508 (x!16936 prev!598))))

(assert (=> (and b!45753 b!45762 (= (dynLambda!774 lambda!6508) (dynLambda!774 (evidence!590 x$71!28)))) (= lambda!6508 (evidence!590 x$71!28))))

(assert (=> (and b!45759 b!45762 (= (dynLambda!774 lambda!6508) (dynLambda!774 (x!16936 x$70!29)))) (= lambda!6508 (x!16936 x$70!29))))

(assert (=> (and b!45759 b!45762 (= (dynLambda!774 lambda!6508) (dynLambda!774 (y!1476 x$70!29)))) (= lambda!6508 (y!1476 x$70!29))))

(assert (=> (and b!45763 b!45762 (= (dynLambda!774 lambda!6508) (dynLambda!774 (x!16936 x$72!18)))) (= lambda!6508 (x!16936 x$72!18))))

(assert (=> (and b!45763 b!45762 (= (dynLambda!774 lambda!6508) (dynLambda!774 (y!1476 x$72!18)))) (= lambda!6508 (y!1476 x$72!18))))

(declare-fun b_next!23401 () Bool)

(assert (=> b!45752 (= b_next!23379 (or (and b!45762 (= lambda!6508 (y!1476 prev!598))) b_next!23401))))

(declare-fun b_next!23403 () Bool)

(assert (=> b!45761 (= b_next!23381 (or (and b!45762 (= lambda!6508 (y!1476 thiss!5697))) b_next!23403))))

(declare-fun b_next!23405 () Bool)

(assert (=> b!45753 (= b_next!23383 (or (and b!45762 (= lambda!6508 (y!1477 x$71!28))) b_next!23405))))

(declare-fun b_next!23407 () Bool)

(assert (=> b!45761 (= b_next!23385 (or (and b!45762 (= lambda!6508 (x!16936 thiss!5697))) b_next!23407))))

(declare-fun b_next!23409 () Bool)

(assert (=> b!45753 (= b_next!23387 (or (and b!45762 (= lambda!6508 (x!16937 x$71!28))) b_next!23409))))

(declare-fun b_next!23411 () Bool)

(assert (=> b!45752 (= b_next!23389 (or (and b!45762 (= lambda!6508 (x!16936 prev!598))) b_next!23411))))

(declare-fun b_next!23413 () Bool)

(assert (=> b!45753 (= b_next!23391 (or (and b!45762 (= lambda!6508 (evidence!590 x$71!28))) b_next!23413))))

(declare-fun b_next!23415 () Bool)

(assert (=> b!45759 (= b_next!23393 (or (and b!45762 (= lambda!6508 (x!16936 x$70!29))) b_next!23415))))

(declare-fun b_next!23417 () Bool)

(assert (=> b!45759 (= b_next!23395 (or (and b!45762 (= lambda!6508 (y!1476 x$70!29))) b_next!23417))))

(declare-fun b_next!23419 () Bool)

(assert (=> b!45763 (= b_next!23397 (or (and b!45762 (= lambda!6508 (x!16936 x$72!18))) b_next!23419))))

(declare-fun b_next!23421 () Bool)

(assert (=> b!45763 (= b_next!23399 (or (and b!45762 (= lambda!6508 (y!1476 x$72!18))) b_next!23421))))

(declare-fun lambda!6509 () Int)

(assert (=> bs!18083 (= (= (n!1310 n!723) n!723) (= lambda!6509 lambda!6502))))

(assert (=> bs!18085 (not (= lambda!6509 lambda!6506))))

(assert (=> b!45762 true))

(declare-fun b_next!23423 () Bool)

(assert (=> b!45759 (= b_next!23371 (or (and b!45762 (= lambda!6509 (evidence!589 x$70!29))) b_next!23423))))

(declare-fun b_next!23425 () Bool)

(assert (=> b!45752 (= b_next!23373 (or (and b!45762 (= lambda!6509 (evidence!589 prev!598))) b_next!23425))))

(declare-fun b_next!23427 () Bool)

(assert (=> b!45761 (= b_next!23375 (or (and b!45762 (= lambda!6509 (evidence!589 thiss!5697))) b_next!23427))))

(declare-fun b_next!23429 () Bool)

(assert (=> b!45763 (= b_next!23377 (or (and b!45762 (= lambda!6509 (evidence!589 x$72!18))) b_next!23429))))

(declare-fun e!23748 () Bool)

(assert (=> b!45752 (= e!23748 (and tp!11548 tp!11546 tp!11545))))

(declare-fun e!23747 () Bool)

(assert (=> b!45753 (= e!23747 (and tp!11553 tp!11544 tp!11540))))

(declare-fun b!45754 () Bool)

(declare-fun e!23750 () Bool)

(assert (=> b!45754 (= e!23750 (not (= (dynLambda!774 (y!1476 prev!598)) (dynLambda!774 (x!16936 thiss!5697)))))))

(declare-fun res!21613 () Bool)

(assert (=> b!45755 (=> (not res!21613) (not e!23750))))

(assert (=> b!45755 (= res!21613 (= x$72!18 (RAEqEvidence!275 lambda!6501 lambda!6501 lambda!6502)))))

(declare-fun res!21614 () Bool)

(assert (=> b!45756 (=> (not res!21614) (not e!23750))))

(assert (=> b!45756 (= res!21614 (= x$71!28 (RAEqEvidence!277 lambda!6503 lambda!6503 lambda!6504)))))

(declare-fun b!45757 () Bool)

(declare-fun res!21609 () Bool)

(assert (=> b!45757 (=> (not res!21609) (not e!23750))))

(assert (=> b!45757 (= res!21609 (= prev!598 x$70!29))))

(declare-fun b!45758 () Bool)

(declare-fun res!21611 () Bool)

(assert (=> b!45758 (=> (not res!21611) (not e!23750))))

(declare-fun keepEvidence!36 (Unit!560) Bool)

(declare-fun dynLambda!775 (Int) Unit!560)

(assert (=> b!45758 (= res!21611 (keepEvidence!36 (dynLambda!775 (evidence!589 prev!598))))))

(declare-fun e!23746 () Bool)

(assert (=> b!45759 (= e!23746 (and tp!11542 tp!11552 tp!11551))))

(declare-fun res!21610 () Bool)

(assert (=> b!45760 (=> (not res!21610) (not e!23750))))

(assert (=> b!45760 (= res!21610 (= x$70!29 (RAEqEvidence!275 lambda!6505 lambda!6505 lambda!6506)))))

(declare-fun e!23745 () Bool)

(assert (=> b!45761 (= e!23745 (and tp!11550 tp!11554 tp!11543))))

(declare-fun res!21612 () Bool)

(assert (=> b!45762 (=> (not res!21612) (not e!23750))))

(assert (=> b!45762 (= res!21612 (= thiss!5697 (RAEqEvidence!275 lambda!6507 lambda!6508 lambda!6509)))))

(declare-fun e!23749 () Bool)

(assert (=> b!45763 (= e!23749 (and tp!11541 tp!11547 tp!11549))))

(declare-fun res!21608 () Bool)

(assert (=> start!6166 (=> (not res!21608) (not e!23750))))

(assert (=> start!6166 (= res!21608 (not (is-Zero!161 n!723)))))

(assert (=> start!6166 e!23750))

(declare-fun inv!786 (RAEqEvidence!276) Bool)

(assert (=> start!6166 (and (inv!786 x$71!28) e!23747)))

(declare-fun inv!787 (RAEqEvidence!274) Bool)

(assert (=> start!6166 (and (inv!787 prev!598) e!23748)))

(assert (=> start!6166 (and (inv!787 x$70!29) e!23746)))

(assert (=> start!6166 (and (inv!787 thiss!5697) e!23745)))

(assert (=> start!6166 true))

(assert (=> start!6166 (and (inv!787 x$72!18) e!23749)))

(assert (= (and start!6166 res!21608) b!45755))

(assert (= (and b!45755 res!21613) b!45756))

(assert (= (and b!45756 res!21614) b!45760))

(assert (= (and b!45760 res!21610) b!45762))

(assert (= (and b!45762 res!21612) b!45757))

(assert (= (and b!45757 res!21609) b!45758))

(assert (= (and b!45758 res!21611) b!45754))

(assert (= start!6166 b!45753))

(assert (= start!6166 b!45752))

(assert (= start!6166 b!45759))

(assert (= start!6166 b!45761))

(assert (= start!6166 b!45763))

(declare-fun b_lambda!12187 () Bool)

(assert (=> (not b_lambda!12187) (not b!45754)))

(declare-fun tb!26303 () Bool)

(declare-fun t!27125 () Bool)

(assert (=> (and b!45763 (= (x!16936 x$72!18) (y!1476 prev!598)) t!27125) tb!26303))

(declare-fun result!26579 () Bool)

(assert (=> tb!26303 (= result!26579 true)))

(assert (=> b!45754 t!27125))

(declare-fun b_and!34597 () Bool)

(assert (= b_and!34585 (and (=> t!27125 result!26579) b_and!34597)))

(declare-fun tb!26305 () Bool)

(declare-fun t!27127 () Bool)

(assert (=> (and b!45753 (= (x!16937 x$71!28) (y!1476 prev!598)) t!27127) tb!26305))

(declare-fun result!26581 () Bool)

(assert (=> tb!26305 (= result!26581 true)))

(assert (=> b!45754 t!27127))

(declare-fun b_and!34599 () Bool)

(assert (= b_and!34591 (and (=> t!27127 result!26581) b_and!34599)))

(declare-fun t!27129 () Bool)

(declare-fun tb!26307 () Bool)

(assert (=> (and b!45759 (= (y!1476 x$70!29) (y!1476 prev!598)) t!27129) tb!26307))

(declare-fun result!26583 () Bool)

(assert (=> tb!26307 (= result!26583 true)))

(assert (=> b!45754 t!27129))

(declare-fun b_and!34601 () Bool)

(assert (= b_and!34569 (and (=> t!27129 result!26583) b_and!34601)))

(declare-fun tb!26309 () Bool)

(declare-fun t!27131 () Bool)

(assert (=> (and b!45763 (= (y!1476 x$72!18) (y!1476 prev!598)) t!27131) tb!26309))

(declare-fun result!26585 () Bool)

(assert (=> tb!26309 (= result!26585 true)))

(assert (=> b!45754 t!27131))

(declare-fun b_and!34603 () Bool)

(assert (= b_and!34587 (and (=> t!27131 result!26585) b_and!34603)))

(declare-fun tb!26311 () Bool)

(declare-fun t!27133 () Bool)

(assert (=> (and b!45753 (= (evidence!590 x$71!28) (y!1476 prev!598)) t!27133) tb!26311))

(declare-fun result!26587 () Bool)

(assert (=> tb!26311 (= result!26587 true)))

(assert (=> b!45754 t!27133))

(declare-fun b_and!34605 () Bool)

(assert (= b_and!34595 (and (=> t!27133 result!26587) b_and!34605)))

(declare-fun tb!26313 () Bool)

(declare-fun t!27135 () Bool)

(assert (=> (and b!45753 (= (y!1477 x$71!28) (y!1476 prev!598)) t!27135) tb!26313))

(declare-fun result!26589 () Bool)

(assert (=> tb!26313 (= result!26589 true)))

(assert (=> b!45754 t!27135))

(declare-fun b_and!34607 () Bool)

(assert (= b_and!34593 (and (=> t!27135 result!26589) b_and!34607)))

(declare-fun t!27137 () Bool)

(declare-fun tb!26315 () Bool)

(assert (=> (and b!45752 (= (y!1476 prev!598) (y!1476 prev!598)) t!27137) tb!26315))

(declare-fun result!26591 () Bool)

(assert (=> tb!26315 (= result!26591 true)))

(assert (=> b!45754 t!27137))

(declare-fun b_and!34609 () Bool)

(assert (= b_and!34575 (and (=> t!27137 result!26591) b_and!34609)))

(declare-fun t!27139 () Bool)

(declare-fun tb!26317 () Bool)

(assert (=> (and b!45761 (= (y!1476 thiss!5697) (y!1476 prev!598)) t!27139) tb!26317))

(declare-fun result!26593 () Bool)

(assert (=> tb!26317 (= result!26593 true)))

(assert (=> b!45754 t!27139))

(declare-fun b_and!34611 () Bool)

(assert (= b_and!34581 (and (=> t!27139 result!26593) b_and!34611)))

(declare-fun t!27141 () Bool)

(declare-fun tb!26319 () Bool)

(assert (=> (and b!45752 (= (x!16936 prev!598) (y!1476 prev!598)) t!27141) tb!26319))

(declare-fun result!26595 () Bool)

(assert (=> tb!26319 (= result!26595 true)))

(assert (=> b!45754 t!27141))

(declare-fun b_and!34613 () Bool)

(assert (= b_and!34573 (and (=> t!27141 result!26595) b_and!34613)))

(declare-fun tb!26321 () Bool)

(declare-fun t!27143 () Bool)

(assert (=> (and b!45759 (= (x!16936 x$70!29) (y!1476 prev!598)) t!27143) tb!26321))

(declare-fun result!26597 () Bool)

(assert (=> tb!26321 (= result!26597 true)))

(assert (=> b!45754 t!27143))

(declare-fun b_and!34615 () Bool)

(assert (= b_and!34567 (and (=> t!27143 result!26597) b_and!34615)))

(declare-fun t!27145 () Bool)

(declare-fun tb!26323 () Bool)

(assert (=> (and b!45761 (= (x!16936 thiss!5697) (y!1476 prev!598)) t!27145) tb!26323))

(declare-fun result!26599 () Bool)

(assert (=> tb!26323 (= result!26599 true)))

(assert (=> b!45754 t!27145))

(declare-fun b_and!34617 () Bool)

(assert (= b_and!34579 (and (=> t!27145 result!26599) b_and!34617)))

(declare-fun b_lambda!12189 () Bool)

(assert (=> (not b_lambda!12189) (not b!45754)))

(declare-fun t!27147 () Bool)

(declare-fun tb!26325 () Bool)

(assert (=> (and b!45761 (= (y!1476 thiss!5697) (x!16936 thiss!5697)) t!27147) tb!26325))

(declare-fun result!26601 () Bool)

(assert (=> tb!26325 (= result!26601 true)))

(assert (=> b!45754 t!27147))

(declare-fun b_and!34619 () Bool)

(assert (= b_and!34611 (and (=> t!27147 result!26601) b_and!34619)))

(declare-fun tb!26327 () Bool)

(declare-fun t!27149 () Bool)

(assert (=> (and b!45759 (= (y!1476 x$70!29) (x!16936 thiss!5697)) t!27149) tb!26327))

(declare-fun result!26603 () Bool)

(assert (=> tb!26327 (= result!26603 true)))

(assert (=> b!45754 t!27149))

(declare-fun b_and!34621 () Bool)

(assert (= b_and!34601 (and (=> t!27149 result!26603) b_and!34621)))

(declare-fun tb!26329 () Bool)

(declare-fun t!27151 () Bool)

(assert (=> (and b!45752 (= (y!1476 prev!598) (x!16936 thiss!5697)) t!27151) tb!26329))

(declare-fun result!26605 () Bool)

(assert (=> tb!26329 (= result!26605 true)))

(assert (=> b!45754 t!27151))

(declare-fun b_and!34623 () Bool)

(assert (= b_and!34609 (and (=> t!27151 result!26605) b_and!34623)))

(declare-fun tb!26331 () Bool)

(declare-fun t!27153 () Bool)

(assert (=> (and b!45752 (= (x!16936 prev!598) (x!16936 thiss!5697)) t!27153) tb!26331))

(declare-fun result!26607 () Bool)

(assert (=> tb!26331 (= result!26607 true)))

(assert (=> b!45754 t!27153))

(declare-fun b_and!34625 () Bool)

(assert (= b_and!34613 (and (=> t!27153 result!26607) b_and!34625)))

(declare-fun tb!26333 () Bool)

(declare-fun t!27155 () Bool)

(assert (=> (and b!45753 (= (evidence!590 x$71!28) (x!16936 thiss!5697)) t!27155) tb!26333))

(declare-fun result!26609 () Bool)

(assert (=> tb!26333 (= result!26609 true)))

(assert (=> b!45754 t!27155))

(declare-fun b_and!34627 () Bool)

(assert (= b_and!34605 (and (=> t!27155 result!26609) b_and!34627)))

(declare-fun t!27157 () Bool)

(declare-fun tb!26335 () Bool)

(assert (=> (and b!45763 (= (x!16936 x$72!18) (x!16936 thiss!5697)) t!27157) tb!26335))

(declare-fun result!26611 () Bool)

(assert (=> tb!26335 (= result!26611 true)))

(assert (=> b!45754 t!27157))

(declare-fun b_and!34629 () Bool)

(assert (= b_and!34597 (and (=> t!27157 result!26611) b_and!34629)))

(declare-fun t!27159 () Bool)

(declare-fun tb!26337 () Bool)

(assert (=> (and b!45761 (= (x!16936 thiss!5697) (x!16936 thiss!5697)) t!27159) tb!26337))

(declare-fun result!26613 () Bool)

(assert (=> tb!26337 (= result!26613 true)))

(assert (=> b!45754 t!27159))

(declare-fun b_and!34631 () Bool)

(assert (= b_and!34617 (and (=> t!27159 result!26613) b_and!34631)))

(declare-fun t!27161 () Bool)

(declare-fun tb!26339 () Bool)

(assert (=> (and b!45753 (= (x!16937 x$71!28) (x!16936 thiss!5697)) t!27161) tb!26339))

(declare-fun result!26615 () Bool)

(assert (=> tb!26339 (= result!26615 true)))

(assert (=> b!45754 t!27161))

(declare-fun b_and!34633 () Bool)

(assert (= b_and!34599 (and (=> t!27161 result!26615) b_and!34633)))

(declare-fun t!27163 () Bool)

(declare-fun tb!26341 () Bool)

(assert (=> (and b!45759 (= (x!16936 x$70!29) (x!16936 thiss!5697)) t!27163) tb!26341))

(declare-fun result!26617 () Bool)

(assert (=> tb!26341 (= result!26617 true)))

(assert (=> b!45754 t!27163))

(declare-fun b_and!34635 () Bool)

(assert (= b_and!34615 (and (=> t!27163 result!26617) b_and!34635)))

(declare-fun t!27165 () Bool)

(declare-fun tb!26343 () Bool)

(assert (=> (and b!45763 (= (y!1476 x$72!18) (x!16936 thiss!5697)) t!27165) tb!26343))

(declare-fun result!26619 () Bool)

(assert (=> tb!26343 (= result!26619 true)))

(assert (=> b!45754 t!27165))

(declare-fun b_and!34637 () Bool)

(assert (= b_and!34603 (and (=> t!27165 result!26619) b_and!34637)))

(declare-fun t!27167 () Bool)

(declare-fun tb!26345 () Bool)

(assert (=> (and b!45753 (= (y!1477 x$71!28) (x!16936 thiss!5697)) t!27167) tb!26345))

(declare-fun result!26621 () Bool)

(assert (=> tb!26345 (= result!26621 true)))

(assert (=> b!45754 t!27167))

(declare-fun b_and!34639 () Bool)

(assert (= b_and!34607 (and (=> t!27167 result!26621) b_and!34639)))

(declare-fun b_lambda!12191 () Bool)

(assert (=> (not b_lambda!12191) (not b!45758)))

(declare-fun tb!26347 () Bool)

(declare-fun t!27169 () Bool)

(assert (=> (and b!45759 (= (evidence!589 x$70!29) (evidence!589 prev!598)) t!27169) tb!26347))

(declare-fun result!26623 () Bool)

(assert (=> tb!26347 (= result!26623 true)))

(assert (=> b!45758 t!27169))

(declare-fun b_and!34641 () Bool)

(assert (= b_and!34571 (and (=> t!27169 result!26623) b_and!34641)))

(declare-fun t!27171 () Bool)

(declare-fun tb!26349 () Bool)

(assert (=> (and b!45752 (= (evidence!589 prev!598) (evidence!589 prev!598)) t!27171) tb!26349))

(declare-fun result!26625 () Bool)

(assert (=> tb!26349 (= result!26625 true)))

(assert (=> b!45758 t!27171))

(declare-fun b_and!34643 () Bool)

(assert (= b_and!34577 (and (=> t!27171 result!26625) b_and!34643)))

(declare-fun tb!26351 () Bool)

(declare-fun t!27173 () Bool)

(assert (=> (and b!45761 (= (evidence!589 thiss!5697) (evidence!589 prev!598)) t!27173) tb!26351))

(declare-fun result!26627 () Bool)

(assert (=> tb!26351 (= result!26627 true)))

(assert (=> b!45758 t!27173))

(declare-fun b_and!34645 () Bool)

(assert (= b_and!34583 (and (=> t!27173 result!26627) b_and!34645)))

(declare-fun tb!26353 () Bool)

(declare-fun t!27175 () Bool)

(assert (=> (and b!45763 (= (evidence!589 x$72!18) (evidence!589 prev!598)) t!27175) tb!26353))

(declare-fun result!26629 () Bool)

(assert (=> tb!26353 (= result!26629 true)))

(assert (=> b!45758 t!27175))

(declare-fun b_and!34647 () Bool)

(assert (= b_and!34589 (and (=> t!27175 result!26629) b_and!34647)))

(declare-fun m!48697 () Bool)

(assert (=> b!45754 m!48697))

(declare-fun m!48699 () Bool)

(assert (=> b!45754 m!48699))

(declare-fun m!48701 () Bool)

(assert (=> b!45758 m!48701))

(assert (=> b!45758 m!48701))

(declare-fun m!48703 () Bool)

(assert (=> b!45758 m!48703))

(declare-fun m!48705 () Bool)

(assert (=> start!6166 m!48705))

(declare-fun m!48707 () Bool)

(assert (=> start!6166 m!48707))

(declare-fun m!48709 () Bool)

(assert (=> start!6166 m!48709))

(declare-fun m!48711 () Bool)

(assert (=> start!6166 m!48711))

(declare-fun m!48713 () Bool)

(assert (=> start!6166 m!48713))

(push 1)

(assert (not b_next!23423))

(assert b_and!34639)

(assert b_and!34631)

(assert b_and!34623)

(assert (not b_next!23411))

(assert b_and!34643)

(assert (not b_next!23427))

(assert (not b_next!23407))

(assert b_and!34627)

(assert b_and!34633)

(assert (not b_lambda!12189))

(assert b_and!34625)

(assert (not b_next!23421))

(assert b_and!34619)

(assert (not b!45758))

(assert b_and!34637)

(assert (not b_next!23403))

(assert (not b_next!23417))

(assert (not b_next!23425))

(assert (not b_lambda!12191))

(assert (not b!45756))

(assert b_and!34629)

(assert b_and!34641)

(assert b_and!34635)

(assert (not start!6166))

(assert (not b_next!23429))

(assert (not b_next!23405))

(assert b_and!34647)

(assert (not b_lambda!12187))

(assert b_and!34645)

(assert (not b_next!23413))

(assert (not b_next!23419))

(assert b_and!34621)

(assert (not b_next!23401))

(assert (not b_next!23409))

(assert (not b_next!23415))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!23423))

(assert b_and!34639)

(assert b_and!34631)

(assert b_and!34623)

(assert (not b_next!23411))

(assert b_and!34643)

(assert (not b_next!23427))

(assert (not b_next!23407))

(assert b_and!34627)

(assert b_and!34633)

(assert b_and!34625)

(assert (not b_next!23421))

(assert b_and!34619)

(assert b_and!34637)

(assert (not b_next!23403))

(assert (not b_next!23417))

(assert (not b_next!23425))

(assert b_and!34629)

(assert b_and!34641)

(assert b_and!34635)

(assert (not b_next!23429))

(assert (not b_next!23405))

(assert b_and!34647)

(assert b_and!34645)

(assert (not b_next!23413))

(assert (not b_next!23419))

(assert b_and!34621)

(assert (not b_next!23401))

(assert (not b_next!23409))

(assert (not b_next!23415))

(check-sat)

(pop 1)

