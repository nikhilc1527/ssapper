; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6764 () Bool)

(assert start!6764)

(declare-fun b!50386 () Bool)

(declare-fun b_free!6987 () Bool)

(declare-fun b_next!37595 () Bool)

(assert (=> b!50386 (= b_free!6987 (not b_next!37595))))

(declare-fun tp!14569 () Bool)

(declare-fun b_and!56565 () Bool)

(assert (=> b!50386 (= tp!14569 b_and!56565)))

(declare-fun b_free!6989 () Bool)

(declare-fun b_next!37597 () Bool)

(assert (=> b!50386 (= b_free!6989 (not b_next!37597))))

(declare-fun tp!14566 () Bool)

(declare-fun b_and!56567 () Bool)

(assert (=> b!50386 (= tp!14566 b_and!56567)))

(declare-fun b_free!6991 () Bool)

(declare-fun b_next!37599 () Bool)

(assert (=> b!50386 (= b_free!6991 (not b_next!37599))))

(declare-fun tp!14570 () Bool)

(declare-fun b_and!56569 () Bool)

(assert (=> b!50386 (= tp!14570 b_and!56569)))

(declare-fun b!50387 () Bool)

(declare-fun b_free!6993 () Bool)

(declare-fun b_next!37601 () Bool)

(assert (=> b!50387 (= b_free!6993 (not b_next!37601))))

(declare-fun tp!14565 () Bool)

(declare-fun b_and!56571 () Bool)

(assert (=> b!50387 (= tp!14565 b_and!56571)))

(declare-fun b_free!6995 () Bool)

(declare-fun b_next!37603 () Bool)

(assert (=> b!50387 (= b_free!6995 (not b_next!37603))))

(declare-fun tp!14577 () Bool)

(declare-fun b_and!56573 () Bool)

(assert (=> b!50387 (= tp!14577 b_and!56573)))

(declare-fun b_free!6997 () Bool)

(declare-fun b_next!37605 () Bool)

(assert (=> b!50387 (= b_free!6997 (not b_next!37605))))

(declare-fun tp!14573 () Bool)

(declare-fun b_and!56575 () Bool)

(assert (=> b!50387 (= tp!14573 b_and!56575)))

(declare-fun b!50383 () Bool)

(declare-fun b_free!6999 () Bool)

(declare-fun b_next!37607 () Bool)

(assert (=> b!50383 (= b_free!6999 (not b_next!37607))))

(declare-fun tp!14576 () Bool)

(declare-fun b_and!56577 () Bool)

(assert (=> b!50383 (= tp!14576 b_and!56577)))

(declare-fun b_free!7001 () Bool)

(declare-fun b_next!37609 () Bool)

(assert (=> b!50383 (= b_free!7001 (not b_next!37609))))

(declare-fun tp!14567 () Bool)

(declare-fun b_and!56579 () Bool)

(assert (=> b!50383 (= tp!14567 b_and!56579)))

(declare-fun b_free!7003 () Bool)

(declare-fun b_next!37611 () Bool)

(assert (=> b!50383 (= b_free!7003 (not b_next!37611))))

(declare-fun tp!14564 () Bool)

(declare-fun b_and!56581 () Bool)

(assert (=> b!50383 (= tp!14564 b_and!56581)))

(declare-fun b!50380 () Bool)

(declare-fun b_free!7005 () Bool)

(declare-fun b_next!37613 () Bool)

(assert (=> b!50380 (= b_free!7005 (not b_next!37613))))

(declare-fun tp!14574 () Bool)

(declare-fun b_and!56583 () Bool)

(assert (=> b!50380 (= tp!14574 b_and!56583)))

(declare-fun b_free!7007 () Bool)

(declare-fun b_next!37615 () Bool)

(assert (=> b!50380 (= b_free!7007 (not b_next!37615))))

(declare-fun tp!14572 () Bool)

(declare-fun b_and!56585 () Bool)

(assert (=> b!50380 (= tp!14572 b_and!56585)))

(declare-fun b_free!7009 () Bool)

(declare-fun b_next!37617 () Bool)

(assert (=> b!50380 (= b_free!7009 (not b_next!37617))))

(declare-fun tp!14575 () Bool)

(declare-fun b_and!56587 () Bool)

(assert (=> b!50380 (= tp!14575 b_and!56587)))

(declare-fun b!50382 () Bool)

(declare-fun b_free!7011 () Bool)

(declare-fun b_next!37619 () Bool)

(assert (=> b!50382 (= b_free!7011 (not b_next!37619))))

(declare-fun tp!14571 () Bool)

(declare-fun b_and!56589 () Bool)

(assert (=> b!50382 (= tp!14571 b_and!56589)))

(declare-fun b_free!7013 () Bool)

(declare-fun b_next!37621 () Bool)

(assert (=> b!50382 (= b_free!7013 (not b_next!37621))))

(declare-fun tp!14568 () Bool)

(declare-fun b_and!56591 () Bool)

(assert (=> b!50382 (= tp!14568 b_and!56591)))

(declare-fun b_free!7015 () Bool)

(declare-fun b_next!37623 () Bool)

(assert (=> b!50382 (= b_free!7015 (not b_next!37623))))

(declare-fun tp!14578 () Bool)

(declare-fun b_and!56593 () Bool)

(assert (=> b!50382 (= tp!14578 b_and!56593)))

(declare-fun b!50379 () Bool)

(assert (=> b!50379 true))

(assert (=> b!50379 true))

(assert (=> b!50379 true))

(declare-fun lambda!8336 () Int)

(declare-datatypes () ((Nat!248 (Zero!232) (Succ!229 (n!1385 Nat!248)))))

(declare-datatypes () ((Unit!785 (Unit!786))))

(declare-datatypes () ((RAEqEvidence!446 (RAEqEvidence!447 (x!19508 Int) (y!1562 Int) (evidence!675 Int)))))

(declare-fun x$20!42 () RAEqEvidence!446)

(declare-fun b_next!37625 () Bool)

(assert (=> b!50383 (= b_next!37607 (or (and b!50379 (= lambda!8336 (x!19508 x$20!42))) b_next!37625))))

(declare-fun b_next!37627 () Bool)

(assert (=> b!50383 (= b_next!37609 (or (and b!50379 (= lambda!8336 (y!1562 x$20!42))) b_next!37627))))

(declare-fun b_next!37629 () Bool)

(declare-fun thiss!4933 () RAEqEvidence!446)

(assert (=> b!50386 (= b_next!37595 (or (and b!50379 (= lambda!8336 (x!19508 thiss!4933))) b_next!37629))))

(declare-fun b_next!37631 () Bool)

(declare-fun prev!407 () RAEqEvidence!446)

(assert (=> b!50380 (= b_next!37613 (or (and b!50379 (= lambda!8336 (x!19508 prev!407))) b_next!37631))))

(declare-fun b_next!37633 () Bool)

(assert (=> b!50386 (= b_next!37597 (or (and b!50379 (= lambda!8336 (y!1562 thiss!4933))) b_next!37633))))

(declare-datatypes () ((RAEqEvidence!448 (RAEqEvidence!449 (x!19509 Int) (y!1563 Int) (evidence!676 Int)))))

(declare-fun x$21!39 () RAEqEvidence!448)

(declare-fun b_next!37635 () Bool)

(assert (=> b!50382 (= b_next!37619 (or (and b!50379 (= lambda!8336 (x!19509 x$21!39))) b_next!37635))))

(declare-fun x$19!350 () RAEqEvidence!446)

(declare-fun b_next!37637 () Bool)

(assert (=> b!50387 (= b_next!37603 (or (and b!50379 (= lambda!8336 (y!1562 x$19!350))) b_next!37637))))

(declare-fun b_next!37639 () Bool)

(assert (=> b!50380 (= b_next!37615 (or (and b!50379 (= lambda!8336 (y!1562 prev!407))) b_next!37639))))

(declare-fun b_next!37641 () Bool)

(assert (=> b!50387 (= b_next!37601 (or (and b!50379 (= lambda!8336 (x!19508 x$19!350))) b_next!37641))))

(declare-fun b_next!37643 () Bool)

(assert (=> b!50382 (= b_next!37621 (or (and b!50379 (= lambda!8336 (y!1563 x$21!39))) b_next!37643))))

(declare-fun m!53937 () Bool)

(assert (=> b!50379 m!53937))

(declare-fun lambda!8337 () Int)

(declare-fun dynLambda!862 (Int) Bool)

(assert (=> (and b!50382 b!50379 (= (dynLambda!862 lambda!8337) (dynLambda!862 (evidence!676 x$21!39)))) (= lambda!8337 (evidence!676 x$21!39))))

(declare-fun b_next!37645 () Bool)

(assert (=> b!50382 (= b_next!37623 (or (and b!50379 (= lambda!8337 (evidence!676 x$21!39))) b_next!37645))))

(declare-fun bs!23418 () Bool)

(declare-fun b!50384 () Bool)

(assert (= bs!23418 (and b!50384 b!50379)))

(declare-fun lambda!8338 () Int)

(assert (=> bs!23418 (not (= lambda!8338 lambda!8336))))

(assert (=> b!50384 true))

(assert (=> b!50384 true))

(assert (=> b!50384 true))

(declare-fun b_next!37647 () Bool)

(assert (=> b!50383 (= b_next!37625 (or (and b!50384 (= lambda!8338 (x!19508 x$20!42))) b_next!37647))))

(declare-fun b_next!37649 () Bool)

(assert (=> b!50383 (= b_next!37627 (or (and b!50384 (= lambda!8338 (y!1562 x$20!42))) b_next!37649))))

(declare-fun b_next!37651 () Bool)

(assert (=> b!50386 (= b_next!37629 (or (and b!50384 (= lambda!8338 (x!19508 thiss!4933))) b_next!37651))))

(declare-fun b_next!37653 () Bool)

(assert (=> b!50380 (= b_next!37631 (or (and b!50384 (= lambda!8338 (x!19508 prev!407))) b_next!37653))))

(declare-fun b_next!37655 () Bool)

(assert (=> b!50386 (= b_next!37633 (or (and b!50384 (= lambda!8338 (y!1562 thiss!4933))) b_next!37655))))

(declare-fun b_next!37657 () Bool)

(assert (=> b!50382 (= b_next!37635 (or (and b!50384 (= lambda!8338 (x!19509 x$21!39))) b_next!37657))))

(declare-fun b_next!37659 () Bool)

(assert (=> b!50387 (= b_next!37637 (or (and b!50384 (= lambda!8338 (y!1562 x$19!350))) b_next!37659))))

(declare-fun b_next!37661 () Bool)

(assert (=> b!50380 (= b_next!37639 (or (and b!50384 (= lambda!8338 (y!1562 prev!407))) b_next!37661))))

(declare-fun b_next!37663 () Bool)

(assert (=> b!50387 (= b_next!37641 (or (and b!50384 (= lambda!8338 (x!19508 x$19!350))) b_next!37663))))

(declare-fun b_next!37665 () Bool)

(assert (=> b!50382 (= b_next!37643 (or (and b!50384 (= lambda!8338 (y!1563 x$21!39))) b_next!37665))))

(assert (=> b!50384 true))

(assert (=> b!50384 true))

(assert (=> b!50384 true))

(declare-fun lambda!8339 () Int)

(declare-fun b_next!37667 () Bool)

(assert (=> b!50386 (= b_next!37599 (or (and b!50384 (= lambda!8339 (evidence!675 thiss!4933))) b_next!37667))))

(declare-fun b_next!37669 () Bool)

(assert (=> b!50387 (= b_next!37605 (or (and b!50384 (= lambda!8339 (evidence!675 x$19!350))) b_next!37669))))

(declare-fun b_next!37671 () Bool)

(assert (=> b!50383 (= b_next!37611 (or (and b!50384 (= lambda!8339 (evidence!675 x$20!42))) b_next!37671))))

(declare-fun b_next!37673 () Bool)

(assert (=> b!50380 (= b_next!37617 (or (and b!50384 (= lambda!8339 (evidence!675 prev!407))) b_next!37673))))

(declare-fun bs!23419 () Bool)

(declare-fun b!50385 () Bool)

(assert (= bs!23419 (and b!50385 b!50379)))

(declare-fun lambda!8340 () Int)

(assert (=> bs!23419 (not (= lambda!8340 lambda!8336))))

(declare-fun bs!23420 () Bool)

(assert (= bs!23420 (and b!50385 b!50384)))

(assert (=> bs!23420 (not (= lambda!8340 lambda!8338))))

(assert (=> b!50385 true))

(assert (=> b!50385 true))

(assert (=> b!50385 true))

(declare-fun b_next!37675 () Bool)

(assert (=> b!50383 (= b_next!37647 (or (and b!50385 (= lambda!8340 (x!19508 x$20!42))) b_next!37675))))

(declare-fun b_next!37677 () Bool)

(assert (=> b!50383 (= b_next!37649 (or (and b!50385 (= lambda!8340 (y!1562 x$20!42))) b_next!37677))))

(declare-fun b_next!37679 () Bool)

(assert (=> b!50386 (= b_next!37651 (or (and b!50385 (= lambda!8340 (x!19508 thiss!4933))) b_next!37679))))

(declare-fun b_next!37681 () Bool)

(assert (=> b!50380 (= b_next!37653 (or (and b!50385 (= lambda!8340 (x!19508 prev!407))) b_next!37681))))

(declare-fun b_next!37683 () Bool)

(assert (=> b!50386 (= b_next!37655 (or (and b!50385 (= lambda!8340 (y!1562 thiss!4933))) b_next!37683))))

(declare-fun b_next!37685 () Bool)

(assert (=> b!50382 (= b_next!37657 (or (and b!50385 (= lambda!8340 (x!19509 x$21!39))) b_next!37685))))

(declare-fun b_next!37687 () Bool)

(assert (=> b!50387 (= b_next!37659 (or (and b!50385 (= lambda!8340 (y!1562 x$19!350))) b_next!37687))))

(declare-fun b_next!37689 () Bool)

(assert (=> b!50380 (= b_next!37661 (or (and b!50385 (= lambda!8340 (y!1562 prev!407))) b_next!37689))))

(declare-fun b_next!37691 () Bool)

(assert (=> b!50387 (= b_next!37663 (or (and b!50385 (= lambda!8340 (x!19508 x$19!350))) b_next!37691))))

(declare-fun b_next!37693 () Bool)

(assert (=> b!50382 (= b_next!37665 (or (and b!50385 (= lambda!8340 (y!1563 x$21!39))) b_next!37693))))

(declare-fun lambda!8341 () Int)

(assert (=> bs!23420 (not (= lambda!8341 lambda!8339))))

(assert (=> b!50385 true))

(assert (=> b!50385 true))

(assert (=> b!50385 true))

(declare-fun b_next!37695 () Bool)

(assert (=> b!50386 (= b_next!37667 (or (and b!50385 (= lambda!8341 (evidence!675 thiss!4933))) b_next!37695))))

(declare-fun b_next!37697 () Bool)

(assert (=> b!50387 (= b_next!37669 (or (and b!50385 (= lambda!8341 (evidence!675 x$19!350))) b_next!37697))))

(declare-fun b_next!37699 () Bool)

(assert (=> b!50383 (= b_next!37671 (or (and b!50385 (= lambda!8341 (evidence!675 x$20!42))) b_next!37699))))

(declare-fun b_next!37701 () Bool)

(assert (=> b!50380 (= b_next!37673 (or (and b!50385 (= lambda!8341 (evidence!675 prev!407))) b_next!37701))))

(declare-fun bs!23421 () Bool)

(declare-fun b!50381 () Bool)

(assert (= bs!23421 (and b!50381 b!50379)))

(declare-fun lambda!8342 () Int)

(assert (=> bs!23421 (not (= lambda!8342 lambda!8336))))

(declare-fun bs!23422 () Bool)

(assert (= bs!23422 (and b!50381 b!50384)))

(assert (=> bs!23422 (not (= lambda!8342 lambda!8338))))

(declare-fun bs!23423 () Bool)

(assert (= bs!23423 (and b!50381 b!50385)))

(assert (=> bs!23423 (not (= lambda!8342 lambda!8340))))

(assert (=> b!50381 true))

(assert (=> b!50381 true))

(assert (=> b!50381 true))

(declare-fun b_next!37703 () Bool)

(assert (=> b!50383 (= b_next!37675 (or (and b!50381 (= lambda!8342 (x!19508 x$20!42))) b_next!37703))))

(declare-fun b_next!37705 () Bool)

(assert (=> b!50383 (= b_next!37677 (or (and b!50381 (= lambda!8342 (y!1562 x$20!42))) b_next!37705))))

(declare-fun b_next!37707 () Bool)

(assert (=> b!50386 (= b_next!37679 (or (and b!50381 (= lambda!8342 (x!19508 thiss!4933))) b_next!37707))))

(declare-fun b_next!37709 () Bool)

(assert (=> b!50380 (= b_next!37681 (or (and b!50381 (= lambda!8342 (x!19508 prev!407))) b_next!37709))))

(declare-fun b_next!37711 () Bool)

(assert (=> b!50386 (= b_next!37683 (or (and b!50381 (= lambda!8342 (y!1562 thiss!4933))) b_next!37711))))

(declare-fun b_next!37713 () Bool)

(assert (=> b!50382 (= b_next!37685 (or (and b!50381 (= lambda!8342 (x!19509 x$21!39))) b_next!37713))))

(declare-fun b_next!37715 () Bool)

(assert (=> b!50387 (= b_next!37687 (or (and b!50381 (= lambda!8342 (y!1562 x$19!350))) b_next!37715))))

(declare-fun b_next!37717 () Bool)

(assert (=> b!50380 (= b_next!37689 (or (and b!50381 (= lambda!8342 (y!1562 prev!407))) b_next!37717))))

(declare-fun b_next!37719 () Bool)

(assert (=> b!50387 (= b_next!37691 (or (and b!50381 (= lambda!8342 (x!19508 x$19!350))) b_next!37719))))

(declare-fun b_next!37721 () Bool)

(assert (=> b!50382 (= b_next!37693 (or (and b!50381 (= lambda!8342 (y!1563 x$21!39))) b_next!37721))))

(declare-fun lambda!8343 () Int)

(assert (=> bs!23421 (not (= lambda!8343 lambda!8336))))

(assert (=> bs!23422 (not (= lambda!8343 lambda!8338))))

(assert (=> bs!23423 (not (= lambda!8343 lambda!8340))))

(assert (=> b!50381 (not (= lambda!8343 lambda!8342))))

(assert (=> b!50381 true))

(assert (=> b!50381 true))

(assert (=> b!50381 true))

(declare-fun b_next!37723 () Bool)

(assert (=> b!50383 (= b_next!37703 (or (and b!50381 (= lambda!8343 (x!19508 x$20!42))) b_next!37723))))

(declare-fun b_next!37725 () Bool)

(assert (=> b!50383 (= b_next!37705 (or (and b!50381 (= lambda!8343 (y!1562 x$20!42))) b_next!37725))))

(declare-fun b_next!37727 () Bool)

(assert (=> b!50386 (= b_next!37707 (or (and b!50381 (= lambda!8343 (x!19508 thiss!4933))) b_next!37727))))

(declare-fun b_next!37729 () Bool)

(assert (=> b!50380 (= b_next!37709 (or (and b!50381 (= lambda!8343 (x!19508 prev!407))) b_next!37729))))

(declare-fun b_next!37731 () Bool)

(assert (=> b!50386 (= b_next!37711 (or (and b!50381 (= lambda!8343 (y!1562 thiss!4933))) b_next!37731))))

(declare-fun b_next!37733 () Bool)

(assert (=> b!50382 (= b_next!37713 (or (and b!50381 (= lambda!8343 (x!19509 x$21!39))) b_next!37733))))

(declare-fun b_next!37735 () Bool)

(assert (=> b!50387 (= b_next!37715 (or (and b!50381 (= lambda!8343 (y!1562 x$19!350))) b_next!37735))))

(declare-fun b_next!37737 () Bool)

(assert (=> b!50380 (= b_next!37717 (or (and b!50381 (= lambda!8343 (y!1562 prev!407))) b_next!37737))))

(declare-fun b_next!37739 () Bool)

(assert (=> b!50387 (= b_next!37719 (or (and b!50381 (= lambda!8343 (x!19508 x$19!350))) b_next!37739))))

(declare-fun b_next!37741 () Bool)

(assert (=> b!50382 (= b_next!37721 (or (and b!50381 (= lambda!8343 (y!1563 x$21!39))) b_next!37741))))

(declare-fun lambda!8344 () Int)

(assert (=> bs!23422 (not (= lambda!8344 lambda!8339))))

(assert (=> bs!23423 (not (= lambda!8344 lambda!8341))))

(assert (=> b!50381 true))

(assert (=> b!50381 true))

(assert (=> b!50381 true))

(declare-fun b_next!37743 () Bool)

(assert (=> b!50386 (= b_next!37695 (or (and b!50381 (= lambda!8344 (evidence!675 thiss!4933))) b_next!37743))))

(declare-fun b_next!37745 () Bool)

(assert (=> b!50387 (= b_next!37697 (or (and b!50381 (= lambda!8344 (evidence!675 x$19!350))) b_next!37745))))

(declare-fun b_next!37747 () Bool)

(assert (=> b!50383 (= b_next!37699 (or (and b!50381 (= lambda!8344 (evidence!675 x$20!42))) b_next!37747))))

(declare-fun b_next!37749 () Bool)

(assert (=> b!50380 (= b_next!37701 (or (and b!50381 (= lambda!8344 (evidence!675 prev!407))) b_next!37749))))

(declare-fun b!50377 () Bool)

(declare-fun res!23165 () Bool)

(declare-fun e!26169 () Bool)

(assert (=> b!50377 (=> (not res!23165) (not e!26169))))

(assert (=> b!50377 (= res!23165 (= prev!407 x$19!350))))

(declare-fun res!23166 () Bool)

(assert (=> start!6764 (=> (not res!23166) (not e!26169))))

(declare-fun n1!77 () Nat!248)

(assert (=> start!6764 (= res!23166 (not (is-Zero!232 n1!77)))))

(assert (=> start!6764 e!26169))

(declare-fun e!26168 () Bool)

(declare-fun inv!872 (RAEqEvidence!448) Bool)

(assert (=> start!6764 (and (inv!872 x$21!39) e!26168)))

(declare-fun e!26164 () Bool)

(declare-fun inv!873 (RAEqEvidence!446) Bool)

(assert (=> start!6764 (and (inv!873 x$20!42) e!26164)))

(assert (=> start!6764 true))

(declare-fun e!26165 () Bool)

(assert (=> start!6764 (and (inv!873 x$19!350) e!26165)))

(declare-fun e!26166 () Bool)

(assert (=> start!6764 (and (inv!873 thiss!4933) e!26166)))

(declare-fun e!26167 () Bool)

(assert (=> start!6764 (and (inv!873 prev!407) e!26167)))

(declare-fun b!50378 () Bool)

(declare-fun res!23168 () Bool)

(assert (=> b!50378 (=> (not res!23168) (not e!26169))))

(declare-fun keepEvidence!67 (Unit!785) Bool)

(declare-fun dynLambda!863 (Int) Unit!785)

(assert (=> b!50378 (= res!23168 (keepEvidence!67 (dynLambda!863 (evidence!675 prev!407))))))

(declare-fun res!23169 () Bool)

(assert (=> b!50379 (=> (not res!23169) (not e!26169))))

(assert (=> b!50379 (= res!23169 (= x$21!39 (RAEqEvidence!449 lambda!8336 lambda!8336 lambda!8337)))))

(assert (=> b!50380 (= e!26167 (and tp!14574 tp!14572 tp!14575))))

(declare-fun res!23171 () Bool)

(assert (=> b!50381 (=> (not res!23171) (not e!26169))))

(assert (=> b!50381 (= res!23171 (= thiss!4933 (RAEqEvidence!447 lambda!8342 lambda!8343 lambda!8344)))))

(assert (=> b!50382 (= e!26168 (and tp!14571 tp!14568 tp!14578))))

(assert (=> b!50383 (= e!26164 (and tp!14576 tp!14567 tp!14564))))

(declare-fun res!23170 () Bool)

(assert (=> b!50384 (=> (not res!23170) (not e!26169))))

(assert (=> b!50384 (= res!23170 (= x$20!42 (RAEqEvidence!447 lambda!8338 lambda!8338 lambda!8339)))))

(declare-fun res!23167 () Bool)

(assert (=> b!50385 (=> (not res!23167) (not e!26169))))

(assert (=> b!50385 (= res!23167 (= x$19!350 (RAEqEvidence!447 lambda!8340 lambda!8340 lambda!8341)))))

(assert (=> b!50386 (= e!26166 (and tp!14569 tp!14566 tp!14570))))

(assert (=> b!50387 (= e!26165 (and tp!14565 tp!14577 tp!14573))))

(declare-fun b!50388 () Bool)

(declare-fun dynLambda!864 (Int) Nat!248)

(assert (=> b!50388 (= e!26169 (not (= (dynLambda!864 (y!1562 prev!407)) (dynLambda!864 (x!19508 thiss!4933)))))))

(assert (= (and start!6764 res!23166) b!50379))

(assert (= (and b!50379 res!23169) b!50384))

(assert (= (and b!50384 res!23170) b!50385))

(assert (= (and b!50385 res!23167) b!50381))

(assert (= (and b!50381 res!23171) b!50377))

(assert (= (and b!50377 res!23165) b!50378))

(assert (= (and b!50378 res!23168) b!50388))

(assert (= start!6764 b!50382))

(assert (= start!6764 b!50383))

(assert (= start!6764 b!50387))

(assert (= start!6764 b!50386))

(assert (= start!6764 b!50380))

(declare-fun b_lambda!14217 () Bool)

(assert (=> (not b_lambda!14217) (not b!50378)))

(declare-fun t!45427 () Bool)

(declare-fun tb!44605 () Bool)

(assert (=> (and b!50386 (= (evidence!675 thiss!4933) (evidence!675 prev!407)) t!45427) tb!44605))

(declare-fun result!44881 () Bool)

(assert (=> tb!44605 (= result!44881 true)))

(assert (=> b!50378 t!45427))

(declare-fun b_and!56595 () Bool)

(assert (= b_and!56569 (and (=> t!45427 result!44881) b_and!56595)))

(declare-fun t!45429 () Bool)

(declare-fun tb!44607 () Bool)

(assert (=> (and b!50387 (= (evidence!675 x$19!350) (evidence!675 prev!407)) t!45429) tb!44607))

(declare-fun result!44883 () Bool)

(assert (=> tb!44607 (= result!44883 true)))

(assert (=> b!50378 t!45429))

(declare-fun b_and!56597 () Bool)

(assert (= b_and!56575 (and (=> t!45429 result!44883) b_and!56597)))

(declare-fun t!45431 () Bool)

(declare-fun tb!44609 () Bool)

(assert (=> (and b!50383 (= (evidence!675 x$20!42) (evidence!675 prev!407)) t!45431) tb!44609))

(declare-fun result!44885 () Bool)

(assert (=> tb!44609 (= result!44885 true)))

(assert (=> b!50378 t!45431))

(declare-fun b_and!56599 () Bool)

(assert (= b_and!56581 (and (=> t!45431 result!44885) b_and!56599)))

(declare-fun t!45433 () Bool)

(declare-fun tb!44611 () Bool)

(assert (=> (and b!50380 (= (evidence!675 prev!407) (evidence!675 prev!407)) t!45433) tb!44611))

(declare-fun result!44887 () Bool)

(assert (=> tb!44611 (= result!44887 true)))

(assert (=> b!50378 t!45433))

(declare-fun b_and!56601 () Bool)

(assert (= b_and!56587 (and (=> t!45433 result!44887) b_and!56601)))

(declare-fun b_lambda!14219 () Bool)

(assert (=> (not b_lambda!14219) (not b!50388)))

(declare-fun tb!44613 () Bool)

(declare-fun t!45435 () Bool)

(assert (=> (and b!50386 (= (y!1562 thiss!4933) (y!1562 prev!407)) t!45435) tb!44613))

(declare-fun result!44889 () Bool)

(assert (=> tb!44613 (= result!44889 true)))

(assert (=> b!50388 t!45435))

(declare-fun b_and!56603 () Bool)

(assert (= b_and!56567 (and (=> t!45435 result!44889) b_and!56603)))

(declare-fun tb!44615 () Bool)

(declare-fun t!45437 () Bool)

(assert (=> (and b!50382 (= (x!19509 x$21!39) (y!1562 prev!407)) t!45437) tb!44615))

(declare-fun result!44891 () Bool)

(assert (=> tb!44615 (= result!44891 true)))

(assert (=> b!50388 t!45437))

(declare-fun b_and!56605 () Bool)

(assert (= b_and!56589 (and (=> t!45437 result!44891) b_and!56605)))

(declare-fun tb!44617 () Bool)

(declare-fun t!45439 () Bool)

(assert (=> (and b!50386 (= (x!19508 thiss!4933) (y!1562 prev!407)) t!45439) tb!44617))

(declare-fun result!44893 () Bool)

(assert (=> tb!44617 (= result!44893 true)))

(assert (=> b!50388 t!45439))

(declare-fun b_and!56607 () Bool)

(assert (= b_and!56565 (and (=> t!45439 result!44893) b_and!56607)))

(declare-fun t!45441 () Bool)

(declare-fun tb!44619 () Bool)

(assert (=> (and b!50387 (= (y!1562 x$19!350) (y!1562 prev!407)) t!45441) tb!44619))

(declare-fun result!44895 () Bool)

(assert (=> tb!44619 (= result!44895 true)))

(assert (=> b!50388 t!45441))

(declare-fun b_and!56609 () Bool)

(assert (= b_and!56573 (and (=> t!45441 result!44895) b_and!56609)))

(declare-fun t!45443 () Bool)

(declare-fun tb!44621 () Bool)

(assert (=> (and b!50380 (= (x!19508 prev!407) (y!1562 prev!407)) t!45443) tb!44621))

(declare-fun result!44897 () Bool)

(assert (=> tb!44621 (= result!44897 true)))

(assert (=> b!50388 t!45443))

(declare-fun b_and!56611 () Bool)

(assert (= b_and!56583 (and (=> t!45443 result!44897) b_and!56611)))

(declare-fun t!45445 () Bool)

(declare-fun tb!44623 () Bool)

(assert (=> (and b!50380 (= (y!1562 prev!407) (y!1562 prev!407)) t!45445) tb!44623))

(declare-fun result!44899 () Bool)

(assert (=> tb!44623 (= result!44899 true)))

(assert (=> b!50388 t!45445))

(declare-fun b_and!56613 () Bool)

(assert (= b_and!56585 (and (=> t!45445 result!44899) b_and!56613)))

(declare-fun tb!44625 () Bool)

(declare-fun t!45447 () Bool)

(assert (=> (and b!50383 (= (y!1562 x$20!42) (y!1562 prev!407)) t!45447) tb!44625))

(declare-fun result!44901 () Bool)

(assert (=> tb!44625 (= result!44901 true)))

(assert (=> b!50388 t!45447))

(declare-fun b_and!56615 () Bool)

(assert (= b_and!56579 (and (=> t!45447 result!44901) b_and!56615)))

(declare-fun t!45449 () Bool)

(declare-fun tb!44627 () Bool)

(assert (=> (and b!50387 (= (x!19508 x$19!350) (y!1562 prev!407)) t!45449) tb!44627))

(declare-fun result!44903 () Bool)

(assert (=> tb!44627 (= result!44903 true)))

(assert (=> b!50388 t!45449))

(declare-fun b_and!56617 () Bool)

(assert (= b_and!56571 (and (=> t!45449 result!44903) b_and!56617)))

(declare-fun tb!44629 () Bool)

(declare-fun t!45451 () Bool)

(assert (=> (and b!50383 (= (x!19508 x$20!42) (y!1562 prev!407)) t!45451) tb!44629))

(declare-fun result!44905 () Bool)

(assert (=> tb!44629 (= result!44905 true)))

(assert (=> b!50388 t!45451))

(declare-fun b_and!56619 () Bool)

(assert (= b_and!56577 (and (=> t!45451 result!44905) b_and!56619)))

(declare-fun tb!44631 () Bool)

(declare-fun t!45453 () Bool)

(assert (=> (and b!50382 (= (y!1563 x$21!39) (y!1562 prev!407)) t!45453) tb!44631))

(declare-fun result!44907 () Bool)

(assert (=> tb!44631 (= result!44907 true)))

(assert (=> b!50388 t!45453))

(declare-fun b_and!56621 () Bool)

(assert (= b_and!56591 (and (=> t!45453 result!44907) b_and!56621)))

(declare-fun b_lambda!14221 () Bool)

(assert (=> (not b_lambda!14221) (not b!50388)))

(declare-fun t!45455 () Bool)

(declare-fun tb!44633 () Bool)

(assert (=> (and b!50387 (= (y!1562 x$19!350) (x!19508 thiss!4933)) t!45455) tb!44633))

(declare-fun result!44909 () Bool)

(assert (=> tb!44633 (= result!44909 true)))

(assert (=> b!50388 t!45455))

(declare-fun b_and!56623 () Bool)

(assert (= b_and!56609 (and (=> t!45455 result!44909) b_and!56623)))

(declare-fun t!45457 () Bool)

(declare-fun tb!44635 () Bool)

(assert (=> (and b!50382 (= (y!1563 x$21!39) (x!19508 thiss!4933)) t!45457) tb!44635))

(declare-fun result!44911 () Bool)

(assert (=> tb!44635 (= result!44911 true)))

(assert (=> b!50388 t!45457))

(declare-fun b_and!56625 () Bool)

(assert (= b_and!56621 (and (=> t!45457 result!44911) b_and!56625)))

(declare-fun t!45459 () Bool)

(declare-fun tb!44637 () Bool)

(assert (=> (and b!50380 (= (y!1562 prev!407) (x!19508 thiss!4933)) t!45459) tb!44637))

(declare-fun result!44913 () Bool)

(assert (=> tb!44637 (= result!44913 true)))

(assert (=> b!50388 t!45459))

(declare-fun b_and!56627 () Bool)

(assert (= b_and!56613 (and (=> t!45459 result!44913) b_and!56627)))

(declare-fun tb!44639 () Bool)

(declare-fun t!45461 () Bool)

(assert (=> (and b!50380 (= (x!19508 prev!407) (x!19508 thiss!4933)) t!45461) tb!44639))

(declare-fun result!44915 () Bool)

(assert (=> tb!44639 (= result!44915 true)))

(assert (=> b!50388 t!45461))

(declare-fun b_and!56629 () Bool)

(assert (= b_and!56611 (and (=> t!45461 result!44915) b_and!56629)))

(declare-fun t!45463 () Bool)

(declare-fun tb!44641 () Bool)

(assert (=> (and b!50382 (= (x!19509 x$21!39) (x!19508 thiss!4933)) t!45463) tb!44641))

(declare-fun result!44917 () Bool)

(assert (=> tb!44641 (= result!44917 true)))

(assert (=> b!50388 t!45463))

(declare-fun b_and!56631 () Bool)

(assert (= b_and!56605 (and (=> t!45463 result!44917) b_and!56631)))

(declare-fun t!45465 () Bool)

(declare-fun tb!44643 () Bool)

(assert (=> (and b!50386 (= (x!19508 thiss!4933) (x!19508 thiss!4933)) t!45465) tb!44643))

(declare-fun result!44919 () Bool)

(assert (=> tb!44643 (= result!44919 true)))

(assert (=> b!50388 t!45465))

(declare-fun b_and!56633 () Bool)

(assert (= b_and!56607 (and (=> t!45465 result!44919) b_and!56633)))

(declare-fun tb!44645 () Bool)

(declare-fun t!45467 () Bool)

(assert (=> (and b!50383 (= (y!1562 x$20!42) (x!19508 thiss!4933)) t!45467) tb!44645))

(declare-fun result!44921 () Bool)

(assert (=> tb!44645 (= result!44921 true)))

(assert (=> b!50388 t!45467))

(declare-fun b_and!56635 () Bool)

(assert (= b_and!56615 (and (=> t!45467 result!44921) b_and!56635)))

(declare-fun t!45469 () Bool)

(declare-fun tb!44647 () Bool)

(assert (=> (and b!50386 (= (y!1562 thiss!4933) (x!19508 thiss!4933)) t!45469) tb!44647))

(declare-fun result!44923 () Bool)

(assert (=> tb!44647 (= result!44923 true)))

(assert (=> b!50388 t!45469))

(declare-fun b_and!56637 () Bool)

(assert (= b_and!56603 (and (=> t!45469 result!44923) b_and!56637)))

(declare-fun tb!44649 () Bool)

(declare-fun t!45471 () Bool)

(assert (=> (and b!50383 (= (x!19508 x$20!42) (x!19508 thiss!4933)) t!45471) tb!44649))

(declare-fun result!44925 () Bool)

(assert (=> tb!44649 (= result!44925 true)))

(assert (=> b!50388 t!45471))

(declare-fun b_and!56639 () Bool)

(assert (= b_and!56619 (and (=> t!45471 result!44925) b_and!56639)))

(declare-fun tb!44651 () Bool)

(declare-fun t!45473 () Bool)

(assert (=> (and b!50387 (= (x!19508 x$19!350) (x!19508 thiss!4933)) t!45473) tb!44651))

(declare-fun result!44927 () Bool)

(assert (=> tb!44651 (= result!44927 true)))

(assert (=> b!50388 t!45473))

(declare-fun b_and!56641 () Bool)

(assert (= b_and!56617 (and (=> t!45473 result!44927) b_and!56641)))

(declare-fun m!53939 () Bool)

(assert (=> start!6764 m!53939))

(declare-fun m!53941 () Bool)

(assert (=> start!6764 m!53941))

(declare-fun m!53943 () Bool)

(assert (=> start!6764 m!53943))

(declare-fun m!53945 () Bool)

(assert (=> start!6764 m!53945))

(declare-fun m!53947 () Bool)

(assert (=> start!6764 m!53947))

(declare-fun m!53949 () Bool)

(assert (=> b!50378 m!53949))

(assert (=> b!50378 m!53949))

(declare-fun m!53951 () Bool)

(assert (=> b!50378 m!53951))

(declare-fun m!53953 () Bool)

(assert (=> b!50388 m!53953))

(declare-fun m!53955 () Bool)

(assert (=> b!50388 m!53955))

(push 1)

(assert (not start!6764))

(assert b_and!56599)

(assert b_and!56637)

(assert (not b_next!37749))

(assert b_and!56631)

(assert b_and!56641)

(assert (not b!50378))

(assert b_and!56593)

(assert (not b_next!37731))

(assert (not b_lambda!14217))

(assert b_and!56625)

(assert b_and!56639)

(assert b_and!56633)

(assert b_and!56629)

(assert (not b_next!37737))

(assert (not b_next!37745))

(assert b_and!56595)

(assert b_and!56623)

(assert b_and!56601)

(assert (not b_next!37645))

(assert b_and!56627)

(assert (not b_next!37739))

(assert b_and!56635)

(assert (not b_next!37727))

(assert (not b_lambda!14221))

(assert (not b_next!37725))

(assert (not b_next!37723))

(assert (not b_next!37729))

(assert (not b_lambda!14219))

(assert (not b_next!37733))

(assert (not b!50379))

(assert (not b_next!37741))

(assert (not b_next!37747))

(assert b_and!56597)

(assert (not b_next!37743))

(assert (not b_next!37735))

(check-sat)

(pop 1)

(push 1)

(assert b_and!56599)

(assert b_and!56637)

(assert (not b_next!37749))

(assert b_and!56631)

(assert b_and!56641)

(assert b_and!56593)

(assert (not b_next!37731))

(assert b_and!56625)

(assert b_and!56639)

(assert b_and!56633)

(assert b_and!56629)

(assert (not b_next!37737))

(assert (not b_next!37745))

(assert b_and!56595)

(assert b_and!56623)

(assert b_and!56601)

(assert (not b_next!37645))

(assert b_and!56627)

(assert (not b_next!37739))

(assert b_and!56635)

(assert (not b_next!37727))

(assert (not b_next!37725))

(assert (not b_next!37723))

(assert (not b_next!37729))

(assert (not b_next!37733))

(assert (not b_next!37741))

(assert (not b_next!37747))

(assert b_and!56597)

(assert (not b_next!37743))

(assert (not b_next!37735))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!14223 () Bool)

(assert (= b_lambda!14221 (or (and b!50387 b_free!6995 (= (y!1562 x$19!350) (x!19508 thiss!4933))) (and b!50386 b_free!6989 (= (y!1562 thiss!4933) (x!19508 thiss!4933))) (and b!50380 b_free!7005 (= (x!19508 prev!407) (x!19508 thiss!4933))) (and b!50382 b_free!7013 (= (y!1563 x$21!39) (x!19508 thiss!4933))) (and b!50386 b_free!6987) (and b!50383 b_free!6999 (= (x!19508 x$20!42) (x!19508 thiss!4933))) (and b!50387 b_free!6993 (= (x!19508 x$19!350) (x!19508 thiss!4933))) (and b!50381 (= lambda!8342 (x!19508 thiss!4933))) (and b!50382 b_free!7011 (= (x!19509 x$21!39) (x!19508 thiss!4933))) (and b!50381 (= lambda!8343 (x!19508 thiss!4933))) (and b!50380 b_free!7007 (= (y!1562 prev!407) (x!19508 thiss!4933))) (and b!50385 (= lambda!8340 (x!19508 thiss!4933))) (and b!50379 (= lambda!8336 (x!19508 thiss!4933))) (and b!50383 b_free!7001 (= (y!1562 x$20!42) (x!19508 thiss!4933))) (and b!50384 (= lambda!8338 (x!19508 thiss!4933))) b_lambda!14223)))

(declare-fun bs!23424 () Bool)

(declare-fun d!42792 () Bool)

(assert (= bs!23424 (and d!42792 b!50381)))

(declare-fun n2!88 () Nat!248)

(declare-fun n3!17 () Nat!248)

(declare-fun +!5 (Nat!248 Nat!248) Nat!248)

(declare-fun *!4 (Nat!248 Nat!248) Nat!248)

(assert (=> bs!23424 (= (dynLambda!864 lambda!8342) (+!5 (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88) n3!17))))

(declare-fun m!53957 () Bool)

(assert (=> bs!23424 m!53957))

(declare-fun m!53959 () Bool)

(assert (=> bs!23424 m!53959))

(declare-fun m!53961 () Bool)

(assert (=> bs!23424 m!53961))

(declare-fun m!53963 () Bool)

(assert (=> bs!23424 m!53963))

(assert (=> bs!23424 m!53957))

(assert (=> bs!23424 m!53963))

(assert (=> bs!23424 m!53959))

(declare-fun m!53965 () Bool)

(assert (=> bs!23424 m!53965))

(assert (=> bs!23424 m!53961))

(assert (=> (and b!50381 (= lambda!8342 (x!19508 thiss!4933)) b!50388) d!42792))

(declare-fun bs!23425 () Bool)

(declare-fun d!42794 () Bool)

(assert (= bs!23425 (and d!42794 b!50381)))

(assert (=> bs!23425 (= (dynLambda!864 lambda!8343) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(declare-fun m!53967 () Bool)

(assert (=> bs!23425 m!53967))

(declare-fun m!53969 () Bool)

(assert (=> bs!23425 m!53969))

(assert (=> bs!23425 m!53967))

(assert (=> bs!23425 m!53969))

(declare-fun m!53971 () Bool)

(assert (=> bs!23425 m!53971))

(assert (=> (and b!50381 (= lambda!8343 (x!19508 thiss!4933)) b!50388) d!42794))

(declare-fun bs!23426 () Bool)

(declare-fun d!42796 () Bool)

(assert (= bs!23426 (and d!42796 b!50385)))

(assert (=> bs!23426 (= (dynLambda!864 lambda!8340) (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23426 m!53961))

(assert (=> bs!23426 m!53963))

(assert (=> bs!23426 m!53957))

(assert (=> bs!23426 m!53957))

(declare-fun m!53973 () Bool)

(assert (=> bs!23426 m!53973))

(declare-fun m!53975 () Bool)

(assert (=> bs!23426 m!53975))

(assert (=> bs!23426 m!53963))

(assert (=> bs!23426 m!53973))

(assert (=> bs!23426 m!53961))

(assert (=> (and b!50385 (= lambda!8340 (x!19508 thiss!4933)) b!50388) d!42796))

(declare-fun bs!23427 () Bool)

(declare-fun d!42798 () Bool)

(assert (= bs!23427 (and d!42798 b!50384)))

(assert (=> bs!23427 (= (dynLambda!864 lambda!8338) (+!5 (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23427 m!53973))

(declare-fun m!53977 () Bool)

(assert (=> bs!23427 m!53977))

(assert (=> bs!23427 m!53973))

(declare-fun m!53979 () Bool)

(assert (=> bs!23427 m!53979))

(assert (=> bs!23427 m!53973))

(assert (=> bs!23427 m!53977))

(assert (=> (and b!50384 (= lambda!8338 (x!19508 thiss!4933)) b!50388) d!42798))

(declare-fun bs!23428 () Bool)

(declare-fun d!42800 () Bool)

(assert (= bs!23428 (and d!42800 b!50379)))

(assert (=> bs!23428 (= (dynLambda!864 lambda!8336) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23428 m!53973))

(assert (=> bs!23428 m!53973))

(declare-fun m!53981 () Bool)

(assert (=> bs!23428 m!53981))

(assert (=> (and b!50379 (= lambda!8336 (x!19508 thiss!4933)) b!50388) d!42800))

(declare-fun b_lambda!14225 () Bool)

(assert (= b_lambda!14217 (or (and b!50380 b_free!7009) (and b!50385 (= lambda!8341 (evidence!675 prev!407))) (and b!50387 b_free!6997 (= (evidence!675 x$19!350) (evidence!675 prev!407))) (and b!50381 (= lambda!8344 (evidence!675 prev!407))) (and b!50384 (= lambda!8339 (evidence!675 prev!407))) (and b!50383 b_free!7003 (= (evidence!675 x$20!42) (evidence!675 prev!407))) (and b!50386 b_free!6991 (= (evidence!675 thiss!4933) (evidence!675 prev!407))) b_lambda!14225)))

(declare-fun bs!23429 () Bool)

(declare-fun d!42802 () Bool)

(assert (= bs!23429 (and d!42802 b!50385)))

(declare-fun associative_plus!0 (Nat!248 Nat!248 Nat!248) Unit!785)

(assert (=> bs!23429 (= (dynLambda!863 lambda!8341) (associative_plus!0 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88 n3!17))))

(assert (=> bs!23429 m!53961))

(assert (=> bs!23429 m!53963))

(assert (=> bs!23429 m!53957))

(assert (=> bs!23429 m!53957))

(declare-fun m!53983 () Bool)

(assert (=> bs!23429 m!53983))

(assert (=> bs!23429 m!53963))

(assert (=> bs!23429 m!53961))

(assert (=> (and b!50385 (= lambda!8341 (evidence!675 prev!407)) b!50378) d!42802))

(declare-fun bs!23430 () Bool)

(declare-fun d!42804 () Bool)

(assert (= bs!23430 (and d!42804 b!50381)))

(assert (=> bs!23430 (= (dynLambda!863 lambda!8344) (associative_plus!0 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17) n2!88))))

(assert (=> bs!23430 m!53961))

(assert (=> bs!23430 m!53963))

(assert (=> bs!23430 m!53961))

(assert (=> bs!23430 m!53963))

(declare-fun m!53985 () Bool)

(assert (=> bs!23430 m!53985))

(assert (=> (and b!50381 (= lambda!8344 (evidence!675 prev!407)) b!50378) d!42804))

(declare-fun bs!23431 () Bool)

(declare-fun d!42806 () Bool)

(assert (= bs!23431 (and d!42806 b!50384)))

(declare-fun distributive_times!0 (Nat!248 Nat!248 Nat!248) Unit!785)

(assert (=> bs!23431 (= (dynLambda!863 lambda!8339) (distributive_times!0 (n!1385 n1!77) n2!88 n3!17))))

(declare-fun m!53987 () Bool)

(assert (=> bs!23431 m!53987))

(assert (=> (and b!50384 (= lambda!8339 (evidence!675 prev!407)) b!50378) d!42806))

(declare-fun b_lambda!14227 () Bool)

(assert (= b_lambda!14219 (or (and b!50387 b_free!6995 (= (y!1562 x$19!350) (y!1562 prev!407))) (and b!50385 (= lambda!8340 (y!1562 prev!407))) (and b!50381 (= lambda!8342 (y!1562 prev!407))) (and b!50379 (= lambda!8336 (y!1562 prev!407))) (and b!50383 b_free!6999 (= (x!19508 x$20!42) (y!1562 prev!407))) (and b!50386 b_free!6987 (= (x!19508 thiss!4933) (y!1562 prev!407))) (and b!50380 b_free!7005 (= (x!19508 prev!407) (y!1562 prev!407))) (and b!50380 b_free!7007) (and b!50381 (= lambda!8343 (y!1562 prev!407))) (and b!50382 b_free!7013 (= (y!1563 x$21!39) (y!1562 prev!407))) (and b!50382 b_free!7011 (= (x!19509 x$21!39) (y!1562 prev!407))) (and b!50383 b_free!7001 (= (y!1562 x$20!42) (y!1562 prev!407))) (and b!50387 b_free!6993 (= (x!19508 x$19!350) (y!1562 prev!407))) (and b!50386 b_free!6989 (= (y!1562 thiss!4933) (y!1562 prev!407))) (and b!50384 (= lambda!8338 (y!1562 prev!407))) b_lambda!14227)))

(declare-fun bs!23432 () Bool)

(declare-fun d!42808 () Bool)

(assert (= bs!23432 (and d!42808 b!50381)))

(assert (=> bs!23432 (= (dynLambda!864 lambda!8343) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23432 m!53967))

(assert (=> bs!23432 m!53969))

(assert (=> bs!23432 m!53967))

(assert (=> bs!23432 m!53969))

(assert (=> bs!23432 m!53971))

(assert (=> (and b!50381 (= lambda!8343 (y!1562 prev!407)) b!50388) d!42808))

(declare-fun bs!23433 () Bool)

(declare-fun d!42810 () Bool)

(assert (= bs!23433 (and d!42810 b!50384)))

(assert (=> bs!23433 (= (dynLambda!864 lambda!8338) (+!5 (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23433 m!53973))

(assert (=> bs!23433 m!53977))

(assert (=> bs!23433 m!53973))

(assert (=> bs!23433 m!53979))

(assert (=> bs!23433 m!53973))

(assert (=> bs!23433 m!53977))

(assert (=> (and b!50384 (= lambda!8338 (y!1562 prev!407)) b!50388) d!42810))

(declare-fun bs!23434 () Bool)

(declare-fun d!42812 () Bool)

(assert (= bs!23434 (and d!42812 b!50381)))

(assert (=> bs!23434 (= (dynLambda!864 lambda!8342) (+!5 (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88) n3!17))))

(assert (=> bs!23434 m!53957))

(assert (=> bs!23434 m!53959))

(assert (=> bs!23434 m!53961))

(assert (=> bs!23434 m!53963))

(assert (=> bs!23434 m!53957))

(assert (=> bs!23434 m!53963))

(assert (=> bs!23434 m!53959))

(assert (=> bs!23434 m!53965))

(assert (=> bs!23434 m!53961))

(assert (=> (and b!50381 (= lambda!8342 (y!1562 prev!407)) b!50388) d!42812))

(declare-fun bs!23435 () Bool)

(declare-fun d!42814 () Bool)

(assert (= bs!23435 (and d!42814 b!50379)))

(assert (=> bs!23435 (= (dynLambda!864 lambda!8336) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23435 m!53973))

(assert (=> bs!23435 m!53973))

(assert (=> bs!23435 m!53981))

(assert (=> (and b!50379 (= lambda!8336 (y!1562 prev!407)) b!50388) d!42814))

(declare-fun bs!23436 () Bool)

(declare-fun d!42816 () Bool)

(assert (= bs!23436 (and d!42816 b!50385)))

(assert (=> bs!23436 (= (dynLambda!864 lambda!8340) (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23436 m!53961))

(assert (=> bs!23436 m!53963))

(assert (=> bs!23436 m!53957))

(assert (=> bs!23436 m!53957))

(assert (=> bs!23436 m!53973))

(assert (=> bs!23436 m!53975))

(assert (=> bs!23436 m!53963))

(assert (=> bs!23436 m!53973))

(assert (=> bs!23436 m!53961))

(assert (=> (and b!50385 (= lambda!8340 (y!1562 prev!407)) b!50388) d!42816))

(push 1)

(assert (not start!6764))

(assert b_and!56599)

(assert b_and!56637)

(assert (not b_next!37749))

(assert b_and!56631)

(assert b_and!56641)

(assert (not b!50378))

(assert b_and!56593)

(assert (not b_next!37731))

(assert (not bs!23427))

(assert b_and!56625)

(assert b_and!56639)

(assert b_and!56633)

(assert (not bs!23425))

(assert b_and!56629)

(assert (not bs!23430))

(assert (not b_next!37737))

(assert (not b_next!37745))

(assert b_and!56595)

(assert b_and!56623)

(assert b_and!56601)

(assert (not bs!23433))

(assert (not b_next!37645))

(assert b_and!56627)

(assert (not b_next!37739))

(assert (not bs!23428))

(assert (not b_lambda!14225))

(assert (not bs!23434))

(assert b_and!56635)

(assert (not bs!23426))

(assert (not bs!23424))

(assert (not b_next!37727))

(assert (not bs!23432))

(assert (not b_next!37725))

(assert (not b_next!37723))

(assert (not b_next!37729))

(assert (not b_lambda!14223))

(assert (not bs!23431))

(assert (not b_next!37733))

(assert (not bs!23429))

(assert (not b!50379))

(assert (not bs!23435))

(assert (not b_next!37741))

(assert (not b_next!37747))

(assert b_and!56597)

(assert (not b_lambda!14227))

(assert (not bs!23436))

(assert (not b_next!37743))

(assert (not b_next!37735))

(check-sat)

(pop 1)

(push 1)

(assert b_and!56599)

(assert b_and!56637)

(assert (not b_next!37749))

(assert b_and!56631)

(assert b_and!56641)

(assert b_and!56593)

(assert (not b_next!37731))

(assert b_and!56625)

(assert b_and!56639)

(assert b_and!56633)

(assert b_and!56629)

(assert (not b_next!37737))

(assert (not b_next!37745))

(assert b_and!56595)

(assert b_and!56623)

(assert b_and!56601)

(assert (not b_next!37645))

(assert b_and!56627)

(assert (not b_next!37739))

(assert b_and!56635)

(assert (not b_next!37727))

(assert (not b_next!37725))

(assert (not b_next!37723))

(assert (not b_next!37729))

(assert (not b_next!37733))

(assert (not b_next!37741))

(assert (not b_next!37747))

(assert b_and!56597)

(assert (not b_next!37743))

(assert (not b_next!37735))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!42818 () Bool)

(declare-fun c!10662 () Bool)

(assert (=> d!42818 (= c!10662 (is-Zero!232 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17))))))

(declare-fun e!26172 () Nat!248)

(assert (=> d!42818 (= (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88) e!26172)))

(declare-fun b!50397 () Bool)

(assert (=> b!50397 (= e!26172 n2!88)))

(declare-fun b!50398 () Bool)

(assert (=> b!50398 (= e!26172 (Succ!229 (+!5 (n!1385 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17))) n2!88)))))

(assert (= (and d!42818 c!10662) b!50397))

(assert (= (and d!42818 (not c!10662)) b!50398))

(declare-fun m!53989 () Bool)

(assert (=> b!50398 m!53989))

(assert (=> bs!23434 d!42818))

(declare-fun d!42820 () Bool)

(declare-fun c!10665 () Bool)

(assert (=> d!42820 (= c!10665 (is-Zero!232 (n!1385 n1!77)))))

(declare-fun e!26175 () Nat!248)

(assert (=> d!42820 (= (*!4 (n!1385 n1!77) n2!88) e!26175)))

(declare-fun b!50403 () Bool)

(assert (=> b!50403 (= e!26175 Zero!232)))

(declare-fun b!50404 () Bool)

(assert (=> b!50404 (= e!26175 (+!5 (*!4 (n!1385 (n!1385 n1!77)) n2!88) n2!88))))

(assert (= (and d!42820 c!10665) b!50403))

(assert (= (and d!42820 (not c!10665)) b!50404))

(declare-fun m!53991 () Bool)

(assert (=> b!50404 m!53991))

(assert (=> b!50404 m!53991))

(declare-fun m!53993 () Bool)

(assert (=> b!50404 m!53993))

(assert (=> bs!23434 d!42820))

(declare-fun d!42822 () Bool)

(declare-fun c!10666 () Bool)

(assert (=> d!42822 (= c!10666 (is-Zero!232 (*!4 (n!1385 n1!77) n2!88)))))

(declare-fun e!26176 () Nat!248)

(assert (=> d!42822 (= (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) e!26176)))

(declare-fun b!50405 () Bool)

(assert (=> b!50405 (= e!26176 (*!4 (n!1385 n1!77) n3!17))))

(declare-fun b!50406 () Bool)

(assert (=> b!50406 (= e!26176 (Succ!229 (+!5 (n!1385 (*!4 (n!1385 n1!77) n2!88)) (*!4 (n!1385 n1!77) n3!17))))))

(assert (= (and d!42822 c!10666) b!50405))

(assert (= (and d!42822 (not c!10666)) b!50406))

(assert (=> b!50406 m!53963))

(declare-fun m!53995 () Bool)

(assert (=> b!50406 m!53995))

(assert (=> bs!23434 d!42822))

(declare-fun d!42824 () Bool)

(declare-fun c!10667 () Bool)

(assert (=> d!42824 (= c!10667 (is-Zero!232 (n!1385 n1!77)))))

(declare-fun e!26177 () Nat!248)

(assert (=> d!42824 (= (*!4 (n!1385 n1!77) n3!17) e!26177)))

(declare-fun b!50407 () Bool)

(assert (=> b!50407 (= e!26177 Zero!232)))

(declare-fun b!50408 () Bool)

(assert (=> b!50408 (= e!26177 (+!5 (*!4 (n!1385 (n!1385 n1!77)) n3!17) n3!17))))

(assert (= (and d!42824 c!10667) b!50407))

(assert (= (and d!42824 (not c!10667)) b!50408))

(declare-fun m!53997 () Bool)

(assert (=> b!50408 m!53997))

(assert (=> b!50408 m!53997))

(declare-fun m!53999 () Bool)

(assert (=> b!50408 m!53999))

(assert (=> bs!23434 d!42824))

(declare-fun c!10668 () Bool)

(declare-fun d!42826 () Bool)

(assert (=> d!42826 (= c!10668 (is-Zero!232 (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88)))))

(declare-fun e!26178 () Nat!248)

(assert (=> d!42826 (= (+!5 (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88) n3!17) e!26178)))

(declare-fun b!50409 () Bool)

(assert (=> b!50409 (= e!26178 n3!17)))

(declare-fun b!50410 () Bool)

(assert (=> b!50410 (= e!26178 (Succ!229 (+!5 (n!1385 (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88)) n3!17)))))

(assert (= (and d!42826 c!10668) b!50409))

(assert (= (and d!42826 (not c!10668)) b!50410))

(declare-fun m!54001 () Bool)

(assert (=> b!50410 m!54001))

(assert (=> bs!23434 d!42826))

(declare-fun d!42828 () Bool)

(declare-fun c!10669 () Bool)

(assert (=> d!42828 (= c!10669 (is-Zero!232 n1!77))))

(declare-fun e!26179 () Nat!248)

(assert (=> d!42828 (= (*!4 n1!77 (+!5 n2!88 n3!17)) e!26179)))

(declare-fun b!50411 () Bool)

(assert (=> b!50411 (= e!26179 Zero!232)))

(declare-fun b!50412 () Bool)

(assert (=> b!50412 (= e!26179 (+!5 (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (= (and d!42828 c!10669) b!50411))

(assert (= (and d!42828 (not c!10669)) b!50412))

(assert (=> b!50412 m!53973))

(assert (=> b!50412 m!53977))

(assert (=> b!50412 m!53977))

(assert (=> b!50412 m!53973))

(assert (=> b!50412 m!53979))

(assert (=> bs!23428 d!42828))

(declare-fun d!42830 () Bool)

(declare-fun c!10670 () Bool)

(assert (=> d!42830 (= c!10670 (is-Zero!232 n2!88))))

(declare-fun e!26180 () Nat!248)

(assert (=> d!42830 (= (+!5 n2!88 n3!17) e!26180)))

(declare-fun b!50413 () Bool)

(assert (=> b!50413 (= e!26180 n3!17)))

(declare-fun b!50414 () Bool)

(assert (=> b!50414 (= e!26180 (Succ!229 (+!5 (n!1385 n2!88) n3!17)))))

(assert (= (and d!42830 c!10670) b!50413))

(assert (= (and d!42830 (not c!10670)) b!50414))

(declare-fun m!54003 () Bool)

(assert (=> b!50414 m!54003))

(assert (=> bs!23428 d!42830))

(declare-fun c!10671 () Bool)

(declare-fun d!42832 () Bool)

(assert (=> d!42832 (= c!10671 (is-Zero!232 (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17))))))

(declare-fun e!26181 () Nat!248)

(assert (=> d!42832 (= (+!5 (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)) e!26181)))

(declare-fun b!50415 () Bool)

(assert (=> b!50415 (= e!26181 (+!5 n2!88 n3!17))))

(declare-fun b!50416 () Bool)

(assert (=> b!50416 (= e!26181 (Succ!229 (+!5 (n!1385 (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17))) (+!5 n2!88 n3!17))))))

(assert (= (and d!42832 c!10671) b!50415))

(assert (= (and d!42832 (not c!10671)) b!50416))

(assert (=> b!50416 m!53973))

(declare-fun m!54005 () Bool)

(assert (=> b!50416 m!54005))

(assert (=> bs!23427 d!42832))

(declare-fun d!42834 () Bool)

(declare-fun c!10672 () Bool)

(assert (=> d!42834 (= c!10672 (is-Zero!232 (n!1385 n1!77)))))

(declare-fun e!26182 () Nat!248)

(assert (=> d!42834 (= (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17)) e!26182)))

(declare-fun b!50417 () Bool)

(assert (=> b!50417 (= e!26182 Zero!232)))

(declare-fun b!50418 () Bool)

(assert (=> b!50418 (= e!26182 (+!5 (*!4 (n!1385 (n!1385 n1!77)) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (= (and d!42834 c!10672) b!50417))

(assert (= (and d!42834 (not c!10672)) b!50418))

(assert (=> b!50418 m!53973))

(declare-fun m!54007 () Bool)

(assert (=> b!50418 m!54007))

(assert (=> b!50418 m!54007))

(assert (=> b!50418 m!53973))

(declare-fun m!54009 () Bool)

(assert (=> b!50418 m!54009))

(assert (=> bs!23427 d!42834))

(assert (=> bs!23427 d!42830))

(declare-fun d!42836 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!42836 (= trivial!1 true)))

(assert (=> b!50379 d!42836))

(declare-fun b!50424 () Bool)

(declare-fun e!26185 () Unit!785)

(declare-fun Unit!787 () Unit!785)

(assert (=> b!50424 (= e!26185 Unit!787)))

(declare-fun lt!8845 () Unit!785)

(assert (=> b!50424 (= lt!8845 (associative_plus!0 (n!1385 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17))) n2!88 n3!17))))

(declare-fun d!42838 () Bool)

(assert (=> d!42838 (= (+!5 (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88) n3!17) (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(declare-fun lt!8844 () Unit!785)

(assert (=> d!42838 (= lt!8844 e!26185)))

(declare-fun c!10675 () Bool)

(assert (=> d!42838 (= c!10675 (is-Zero!232 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17))))))

(assert (=> d!42838 (= (associative_plus!0 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88 n3!17) lt!8844)))

(declare-fun b!50423 () Bool)

(declare-fun Unit!788 () Unit!785)

(assert (=> b!50423 (= e!26185 Unit!788)))

(assert (= (and d!42838 c!10675) b!50423))

(assert (= (and d!42838 (not c!10675)) b!50424))

(declare-fun m!54011 () Bool)

(assert (=> b!50424 m!54011))

(assert (=> d!42838 m!53957))

(assert (=> d!42838 m!53959))

(assert (=> d!42838 m!53959))

(assert (=> d!42838 m!53965))

(assert (=> d!42838 m!53973))

(assert (=> d!42838 m!53957))

(assert (=> d!42838 m!53973))

(assert (=> d!42838 m!53975))

(assert (=> bs!23429 d!42838))

(assert (=> bs!23429 d!42822))

(assert (=> bs!23429 d!42820))

(assert (=> bs!23429 d!42824))

(assert (=> bs!23424 d!42818))

(assert (=> bs!23424 d!42820))

(assert (=> bs!23424 d!42822))

(assert (=> bs!23424 d!42824))

(assert (=> bs!23424 d!42826))

(declare-fun d!42840 () Bool)

(assert (=> d!42840 (= (inv!872 x$21!39) (= (dynLambda!864 (x!19509 x$21!39)) (dynLambda!864 (y!1563 x$21!39))))))

(declare-fun b_lambda!14229 () Bool)

(assert (=> (not b_lambda!14229) (not d!42840)))

(declare-fun tb!44653 () Bool)

(declare-fun t!45475 () Bool)

(assert (=> (and b!50383 (= (x!19508 x$20!42) (x!19509 x$21!39)) t!45475) tb!44653))

(declare-fun result!44929 () Bool)

(assert (=> tb!44653 (= result!44929 true)))

(assert (=> d!42840 t!45475))

(declare-fun b_and!56643 () Bool)

(assert (= b_and!56639 (and (=> t!45475 result!44929) b_and!56643)))

(declare-fun tb!44655 () Bool)

(declare-fun t!45477 () Bool)

(assert (=> (and b!50380 (= (y!1562 prev!407) (x!19509 x$21!39)) t!45477) tb!44655))

(declare-fun result!44931 () Bool)

(assert (=> tb!44655 (= result!44931 true)))

(assert (=> d!42840 t!45477))

(declare-fun b_and!56645 () Bool)

(assert (= b_and!56627 (and (=> t!45477 result!44931) b_and!56645)))

(declare-fun t!45479 () Bool)

(declare-fun tb!44657 () Bool)

(assert (=> (and b!50382 (= (x!19509 x$21!39) (x!19509 x$21!39)) t!45479) tb!44657))

(declare-fun result!44933 () Bool)

(assert (=> tb!44657 (= result!44933 true)))

(assert (=> d!42840 t!45479))

(declare-fun b_and!56647 () Bool)

(assert (= b_and!56631 (and (=> t!45479 result!44933) b_and!56647)))

(declare-fun tb!44659 () Bool)

(declare-fun t!45481 () Bool)

(assert (=> (and b!50387 (= (x!19508 x$19!350) (x!19509 x$21!39)) t!45481) tb!44659))

(declare-fun result!44935 () Bool)

(assert (=> tb!44659 (= result!44935 true)))

(assert (=> d!42840 t!45481))

(declare-fun b_and!56649 () Bool)

(assert (= b_and!56641 (and (=> t!45481 result!44935) b_and!56649)))

(declare-fun tb!44661 () Bool)

(declare-fun t!45483 () Bool)

(assert (=> (and b!50387 (= (y!1562 x$19!350) (x!19509 x$21!39)) t!45483) tb!44661))

(declare-fun result!44937 () Bool)

(assert (=> tb!44661 (= result!44937 true)))

(assert (=> d!42840 t!45483))

(declare-fun b_and!56651 () Bool)

(assert (= b_and!56623 (and (=> t!45483 result!44937) b_and!56651)))

(declare-fun t!45485 () Bool)

(declare-fun tb!44663 () Bool)

(assert (=> (and b!50380 (= (x!19508 prev!407) (x!19509 x$21!39)) t!45485) tb!44663))

(declare-fun result!44939 () Bool)

(assert (=> tb!44663 (= result!44939 true)))

(assert (=> d!42840 t!45485))

(declare-fun b_and!56653 () Bool)

(assert (= b_and!56629 (and (=> t!45485 result!44939) b_and!56653)))

(declare-fun t!45487 () Bool)

(declare-fun tb!44665 () Bool)

(assert (=> (and b!50386 (= (x!19508 thiss!4933) (x!19509 x$21!39)) t!45487) tb!44665))

(declare-fun result!44941 () Bool)

(assert (=> tb!44665 (= result!44941 true)))

(assert (=> d!42840 t!45487))

(declare-fun b_and!56655 () Bool)

(assert (= b_and!56633 (and (=> t!45487 result!44941) b_and!56655)))

(declare-fun t!45489 () Bool)

(declare-fun tb!44667 () Bool)

(assert (=> (and b!50386 (= (y!1562 thiss!4933) (x!19509 x$21!39)) t!45489) tb!44667))

(declare-fun result!44943 () Bool)

(assert (=> tb!44667 (= result!44943 true)))

(assert (=> d!42840 t!45489))

(declare-fun b_and!56657 () Bool)

(assert (= b_and!56637 (and (=> t!45489 result!44943) b_and!56657)))

(declare-fun t!45491 () Bool)

(declare-fun tb!44669 () Bool)

(assert (=> (and b!50383 (= (y!1562 x$20!42) (x!19509 x$21!39)) t!45491) tb!44669))

(declare-fun result!44945 () Bool)

(assert (=> tb!44669 (= result!44945 true)))

(assert (=> d!42840 t!45491))

(declare-fun b_and!56659 () Bool)

(assert (= b_and!56635 (and (=> t!45491 result!44945) b_and!56659)))

(declare-fun t!45493 () Bool)

(declare-fun tb!44671 () Bool)

(assert (=> (and b!50382 (= (y!1563 x$21!39) (x!19509 x$21!39)) t!45493) tb!44671))

(declare-fun result!44947 () Bool)

(assert (=> tb!44671 (= result!44947 true)))

(assert (=> d!42840 t!45493))

(declare-fun b_and!56661 () Bool)

(assert (= b_and!56625 (and (=> t!45493 result!44947) b_and!56661)))

(declare-fun b_lambda!14231 () Bool)

(assert (=> (not b_lambda!14231) (not d!42840)))

(declare-fun tb!44673 () Bool)

(declare-fun t!45495 () Bool)

(assert (=> (and b!50380 (= (y!1562 prev!407) (y!1563 x$21!39)) t!45495) tb!44673))

(declare-fun result!44949 () Bool)

(assert (=> tb!44673 (= result!44949 true)))

(assert (=> d!42840 t!45495))

(declare-fun b_and!56663 () Bool)

(assert (= b_and!56645 (and (=> t!45495 result!44949) b_and!56663)))

(declare-fun t!45497 () Bool)

(declare-fun tb!44675 () Bool)

(assert (=> (and b!50386 (= (y!1562 thiss!4933) (y!1563 x$21!39)) t!45497) tb!44675))

(declare-fun result!44951 () Bool)

(assert (=> tb!44675 (= result!44951 true)))

(assert (=> d!42840 t!45497))

(declare-fun b_and!56665 () Bool)

(assert (= b_and!56657 (and (=> t!45497 result!44951) b_and!56665)))

(declare-fun t!45499 () Bool)

(declare-fun tb!44677 () Bool)

(assert (=> (and b!50386 (= (x!19508 thiss!4933) (y!1563 x$21!39)) t!45499) tb!44677))

(declare-fun result!44953 () Bool)

(assert (=> tb!44677 (= result!44953 true)))

(assert (=> d!42840 t!45499))

(declare-fun b_and!56667 () Bool)

(assert (= b_and!56655 (and (=> t!45499 result!44953) b_and!56667)))

(declare-fun t!45501 () Bool)

(declare-fun tb!44679 () Bool)

(assert (=> (and b!50382 (= (y!1563 x$21!39) (y!1563 x$21!39)) t!45501) tb!44679))

(declare-fun result!44955 () Bool)

(assert (=> tb!44679 (= result!44955 true)))

(assert (=> d!42840 t!45501))

(declare-fun b_and!56669 () Bool)

(assert (= b_and!56661 (and (=> t!45501 result!44955) b_and!56669)))

(declare-fun tb!44681 () Bool)

(declare-fun t!45503 () Bool)

(assert (=> (and b!50387 (= (x!19508 x$19!350) (y!1563 x$21!39)) t!45503) tb!44681))

(declare-fun result!44957 () Bool)

(assert (=> tb!44681 (= result!44957 true)))

(assert (=> d!42840 t!45503))

(declare-fun b_and!56671 () Bool)

(assert (= b_and!56649 (and (=> t!45503 result!44957) b_and!56671)))

(declare-fun t!45505 () Bool)

(declare-fun tb!44683 () Bool)

(assert (=> (and b!50387 (= (y!1562 x$19!350) (y!1563 x$21!39)) t!45505) tb!44683))

(declare-fun result!44959 () Bool)

(assert (=> tb!44683 (= result!44959 true)))

(assert (=> d!42840 t!45505))

(declare-fun b_and!56673 () Bool)

(assert (= b_and!56651 (and (=> t!45505 result!44959) b_and!56673)))

(declare-fun t!45507 () Bool)

(declare-fun tb!44685 () Bool)

(assert (=> (and b!50383 (= (x!19508 x$20!42) (y!1563 x$21!39)) t!45507) tb!44685))

(declare-fun result!44961 () Bool)

(assert (=> tb!44685 (= result!44961 true)))

(assert (=> d!42840 t!45507))

(declare-fun b_and!56675 () Bool)

(assert (= b_and!56643 (and (=> t!45507 result!44961) b_and!56675)))

(declare-fun t!45509 () Bool)

(declare-fun tb!44687 () Bool)

(assert (=> (and b!50382 (= (x!19509 x$21!39) (y!1563 x$21!39)) t!45509) tb!44687))

(declare-fun result!44963 () Bool)

(assert (=> tb!44687 (= result!44963 true)))

(assert (=> d!42840 t!45509))

(declare-fun b_and!56677 () Bool)

(assert (= b_and!56647 (and (=> t!45509 result!44963) b_and!56677)))

(declare-fun tb!44689 () Bool)

(declare-fun t!45511 () Bool)

(assert (=> (and b!50383 (= (y!1562 x$20!42) (y!1563 x$21!39)) t!45511) tb!44689))

(declare-fun result!44965 () Bool)

(assert (=> tb!44689 (= result!44965 true)))

(assert (=> d!42840 t!45511))

(declare-fun b_and!56679 () Bool)

(assert (= b_and!56659 (and (=> t!45511 result!44965) b_and!56679)))

(declare-fun tb!44691 () Bool)

(declare-fun t!45513 () Bool)

(assert (=> (and b!50380 (= (x!19508 prev!407) (y!1563 x$21!39)) t!45513) tb!44691))

(declare-fun result!44967 () Bool)

(assert (=> tb!44691 (= result!44967 true)))

(assert (=> d!42840 t!45513))

(declare-fun b_and!56681 () Bool)

(assert (= b_and!56653 (and (=> t!45513 result!44967) b_and!56681)))

(declare-fun m!54013 () Bool)

(assert (=> d!42840 m!54013))

(declare-fun m!54015 () Bool)

(assert (=> d!42840 m!54015))

(assert (=> start!6764 d!42840))

(declare-fun d!42842 () Bool)

(assert (=> d!42842 (= (inv!873 prev!407) (= (dynLambda!864 (x!19508 prev!407)) (dynLambda!864 (y!1562 prev!407))))))

(declare-fun b_lambda!14233 () Bool)

(assert (=> (not b_lambda!14233) (not d!42842)))

(declare-fun t!45515 () Bool)

(declare-fun tb!44693 () Bool)

(assert (=> (and b!50380 (= (y!1562 prev!407) (x!19508 prev!407)) t!45515) tb!44693))

(declare-fun result!44969 () Bool)

(assert (=> tb!44693 (= result!44969 true)))

(assert (=> d!42842 t!45515))

(declare-fun b_and!56683 () Bool)

(assert (= b_and!56663 (and (=> t!45515 result!44969) b_and!56683)))

(declare-fun t!45517 () Bool)

(declare-fun tb!44695 () Bool)

(assert (=> (and b!50380 (= (x!19508 prev!407) (x!19508 prev!407)) t!45517) tb!44695))

(declare-fun result!44971 () Bool)

(assert (=> tb!44695 (= result!44971 true)))

(assert (=> d!42842 t!45517))

(declare-fun b_and!56685 () Bool)

(assert (= b_and!56681 (and (=> t!45517 result!44971) b_and!56685)))

(declare-fun t!45519 () Bool)

(declare-fun tb!44697 () Bool)

(assert (=> (and b!50387 (= (x!19508 x$19!350) (x!19508 prev!407)) t!45519) tb!44697))

(declare-fun result!44973 () Bool)

(assert (=> tb!44697 (= result!44973 true)))

(assert (=> d!42842 t!45519))

(declare-fun b_and!56687 () Bool)

(assert (= b_and!56671 (and (=> t!45519 result!44973) b_and!56687)))

(declare-fun t!45521 () Bool)

(declare-fun tb!44699 () Bool)

(assert (=> (and b!50386 (= (x!19508 thiss!4933) (x!19508 prev!407)) t!45521) tb!44699))

(declare-fun result!44975 () Bool)

(assert (=> tb!44699 (= result!44975 true)))

(assert (=> d!42842 t!45521))

(declare-fun b_and!56689 () Bool)

(assert (= b_and!56667 (and (=> t!45521 result!44975) b_and!56689)))

(declare-fun tb!44701 () Bool)

(declare-fun t!45523 () Bool)

(assert (=> (and b!50386 (= (y!1562 thiss!4933) (x!19508 prev!407)) t!45523) tb!44701))

(declare-fun result!44977 () Bool)

(assert (=> tb!44701 (= result!44977 true)))

(assert (=> d!42842 t!45523))

(declare-fun b_and!56691 () Bool)

(assert (= b_and!56665 (and (=> t!45523 result!44977) b_and!56691)))

(declare-fun t!45525 () Bool)

(declare-fun tb!44703 () Bool)

(assert (=> (and b!50383 (= (x!19508 x$20!42) (x!19508 prev!407)) t!45525) tb!44703))

(declare-fun result!44979 () Bool)

(assert (=> tb!44703 (= result!44979 true)))

(assert (=> d!42842 t!45525))

(declare-fun b_and!56693 () Bool)

(assert (= b_and!56675 (and (=> t!45525 result!44979) b_and!56693)))

(declare-fun t!45527 () Bool)

(declare-fun tb!44705 () Bool)

(assert (=> (and b!50383 (= (y!1562 x$20!42) (x!19508 prev!407)) t!45527) tb!44705))

(declare-fun result!44981 () Bool)

(assert (=> tb!44705 (= result!44981 true)))

(assert (=> d!42842 t!45527))

(declare-fun b_and!56695 () Bool)

(assert (= b_and!56679 (and (=> t!45527 result!44981) b_and!56695)))

(declare-fun t!45529 () Bool)

(declare-fun tb!44707 () Bool)

(assert (=> (and b!50387 (= (y!1562 x$19!350) (x!19508 prev!407)) t!45529) tb!44707))

(declare-fun result!44983 () Bool)

(assert (=> tb!44707 (= result!44983 true)))

(assert (=> d!42842 t!45529))

(declare-fun b_and!56697 () Bool)

(assert (= b_and!56673 (and (=> t!45529 result!44983) b_and!56697)))

(declare-fun tb!44709 () Bool)

(declare-fun t!45531 () Bool)

(assert (=> (and b!50382 (= (x!19509 x$21!39) (x!19508 prev!407)) t!45531) tb!44709))

(declare-fun result!44985 () Bool)

(assert (=> tb!44709 (= result!44985 true)))

(assert (=> d!42842 t!45531))

(declare-fun b_and!56699 () Bool)

(assert (= b_and!56677 (and (=> t!45531 result!44985) b_and!56699)))

(declare-fun t!45533 () Bool)

(declare-fun tb!44711 () Bool)

(assert (=> (and b!50382 (= (y!1563 x$21!39) (x!19508 prev!407)) t!45533) tb!44711))

(declare-fun result!44987 () Bool)

(assert (=> tb!44711 (= result!44987 true)))

(assert (=> d!42842 t!45533))

(declare-fun b_and!56701 () Bool)

(assert (= b_and!56669 (and (=> t!45533 result!44987) b_and!56701)))

(declare-fun b_lambda!14235 () Bool)

(assert (=> (not b_lambda!14235) (not d!42842)))

(assert (=> d!42842 t!45441))

(declare-fun b_and!56703 () Bool)

(assert (= b_and!56697 (and (=> t!45441 result!44895) b_and!56703)))

(assert (=> d!42842 t!45449))

(declare-fun b_and!56705 () Bool)

(assert (= b_and!56687 (and (=> t!45449 result!44903) b_and!56705)))

(assert (=> d!42842 t!45437))

(declare-fun b_and!56707 () Bool)

(assert (= b_and!56699 (and (=> t!45437 result!44891) b_and!56707)))

(assert (=> d!42842 t!45453))

(declare-fun b_and!56709 () Bool)

(assert (= b_and!56701 (and (=> t!45453 result!44907) b_and!56709)))

(assert (=> d!42842 t!45443))

(declare-fun b_and!56711 () Bool)

(assert (= b_and!56685 (and (=> t!45443 result!44897) b_and!56711)))

(assert (=> d!42842 t!45447))

(declare-fun b_and!56713 () Bool)

(assert (= b_and!56695 (and (=> t!45447 result!44901) b_and!56713)))

(assert (=> d!42842 t!45451))

(declare-fun b_and!56715 () Bool)

(assert (= b_and!56693 (and (=> t!45451 result!44905) b_and!56715)))

(assert (=> d!42842 t!45445))

(declare-fun b_and!56717 () Bool)

(assert (= b_and!56683 (and (=> t!45445 result!44899) b_and!56717)))

(assert (=> d!42842 t!45439))

(declare-fun b_and!56719 () Bool)

(assert (= b_and!56689 (and (=> t!45439 result!44893) b_and!56719)))

(assert (=> d!42842 t!45435))

(declare-fun b_and!56721 () Bool)

(assert (= b_and!56691 (and (=> t!45435 result!44889) b_and!56721)))

(declare-fun m!54017 () Bool)

(assert (=> d!42842 m!54017))

(assert (=> d!42842 m!53953))

(assert (=> start!6764 d!42842))

(declare-fun d!42844 () Bool)

(assert (=> d!42844 (= (inv!873 x$20!42) (= (dynLambda!864 (x!19508 x$20!42)) (dynLambda!864 (y!1562 x$20!42))))))

(declare-fun b_lambda!14237 () Bool)

(assert (=> (not b_lambda!14237) (not d!42844)))

(declare-fun tb!44713 () Bool)

(declare-fun t!45535 () Bool)

(assert (=> (and b!50380 (= (y!1562 prev!407) (x!19508 x$20!42)) t!45535) tb!44713))

(declare-fun result!44989 () Bool)

(assert (=> tb!44713 (= result!44989 true)))

(assert (=> d!42844 t!45535))

(declare-fun b_and!56723 () Bool)

(assert (= b_and!56717 (and (=> t!45535 result!44989) b_and!56723)))

(declare-fun tb!44715 () Bool)

(declare-fun t!45537 () Bool)

(assert (=> (and b!50382 (= (x!19509 x$21!39) (x!19508 x$20!42)) t!45537) tb!44715))

(declare-fun result!44991 () Bool)

(assert (=> tb!44715 (= result!44991 true)))

(assert (=> d!42844 t!45537))

(declare-fun b_and!56725 () Bool)

(assert (= b_and!56707 (and (=> t!45537 result!44991) b_and!56725)))

(declare-fun tb!44717 () Bool)

(declare-fun t!45539 () Bool)

(assert (=> (and b!50386 (= (x!19508 thiss!4933) (x!19508 x$20!42)) t!45539) tb!44717))

(declare-fun result!44993 () Bool)

(assert (=> tb!44717 (= result!44993 true)))

(assert (=> d!42844 t!45539))

(declare-fun b_and!56727 () Bool)

(assert (= b_and!56719 (and (=> t!45539 result!44993) b_and!56727)))

(declare-fun tb!44719 () Bool)

(declare-fun t!45541 () Bool)

(assert (=> (and b!50387 (= (y!1562 x$19!350) (x!19508 x$20!42)) t!45541) tb!44719))

(declare-fun result!44995 () Bool)

(assert (=> tb!44719 (= result!44995 true)))

(assert (=> d!42844 t!45541))

(declare-fun b_and!56729 () Bool)

(assert (= b_and!56703 (and (=> t!45541 result!44995) b_and!56729)))

(declare-fun t!45543 () Bool)

(declare-fun tb!44721 () Bool)

(assert (=> (and b!50383 (= (x!19508 x$20!42) (x!19508 x$20!42)) t!45543) tb!44721))

(declare-fun result!44997 () Bool)

(assert (=> tb!44721 (= result!44997 true)))

(assert (=> d!42844 t!45543))

(declare-fun b_and!56731 () Bool)

(assert (= b_and!56715 (and (=> t!45543 result!44997) b_and!56731)))

(declare-fun tb!44723 () Bool)

(declare-fun t!45545 () Bool)

(assert (=> (and b!50380 (= (x!19508 prev!407) (x!19508 x$20!42)) t!45545) tb!44723))

(declare-fun result!44999 () Bool)

(assert (=> tb!44723 (= result!44999 true)))

(assert (=> d!42844 t!45545))

(declare-fun b_and!56733 () Bool)

(assert (= b_and!56711 (and (=> t!45545 result!44999) b_and!56733)))

(declare-fun tb!44725 () Bool)

(declare-fun t!45547 () Bool)

(assert (=> (and b!50386 (= (y!1562 thiss!4933) (x!19508 x$20!42)) t!45547) tb!44725))

(declare-fun result!45001 () Bool)

(assert (=> tb!44725 (= result!45001 true)))

(assert (=> d!42844 t!45547))

(declare-fun b_and!56735 () Bool)

(assert (= b_and!56721 (and (=> t!45547 result!45001) b_and!56735)))

(declare-fun tb!44727 () Bool)

(declare-fun t!45549 () Bool)

(assert (=> (and b!50382 (= (y!1563 x$21!39) (x!19508 x$20!42)) t!45549) tb!44727))

(declare-fun result!45003 () Bool)

(assert (=> tb!44727 (= result!45003 true)))

(assert (=> d!42844 t!45549))

(declare-fun b_and!56737 () Bool)

(assert (= b_and!56709 (and (=> t!45549 result!45003) b_and!56737)))

(declare-fun t!45551 () Bool)

(declare-fun tb!44729 () Bool)

(assert (=> (and b!50383 (= (y!1562 x$20!42) (x!19508 x$20!42)) t!45551) tb!44729))

(declare-fun result!45005 () Bool)

(assert (=> tb!44729 (= result!45005 true)))

(assert (=> d!42844 t!45551))

(declare-fun b_and!56739 () Bool)

(assert (= b_and!56713 (and (=> t!45551 result!45005) b_and!56739)))

(declare-fun t!45553 () Bool)

(declare-fun tb!44731 () Bool)

(assert (=> (and b!50387 (= (x!19508 x$19!350) (x!19508 x$20!42)) t!45553) tb!44731))

(declare-fun result!45007 () Bool)

(assert (=> tb!44731 (= result!45007 true)))

(assert (=> d!42844 t!45553))

(declare-fun b_and!56741 () Bool)

(assert (= b_and!56705 (and (=> t!45553 result!45007) b_and!56741)))

(declare-fun b_lambda!14239 () Bool)

(assert (=> (not b_lambda!14239) (not d!42844)))

(declare-fun tb!44733 () Bool)

(declare-fun t!45555 () Bool)

(assert (=> (and b!50382 (= (x!19509 x$21!39) (y!1562 x$20!42)) t!45555) tb!44733))

(declare-fun result!45009 () Bool)

(assert (=> tb!44733 (= result!45009 true)))

(assert (=> d!42844 t!45555))

(declare-fun b_and!56743 () Bool)

(assert (= b_and!56725 (and (=> t!45555 result!45009) b_and!56743)))

(declare-fun t!45557 () Bool)

(declare-fun tb!44735 () Bool)

(assert (=> (and b!50383 (= (y!1562 x$20!42) (y!1562 x$20!42)) t!45557) tb!44735))

(declare-fun result!45011 () Bool)

(assert (=> tb!44735 (= result!45011 true)))

(assert (=> d!42844 t!45557))

(declare-fun b_and!56745 () Bool)

(assert (= b_and!56739 (and (=> t!45557 result!45011) b_and!56745)))

(declare-fun t!45559 () Bool)

(declare-fun tb!44737 () Bool)

(assert (=> (and b!50386 (= (x!19508 thiss!4933) (y!1562 x$20!42)) t!45559) tb!44737))

(declare-fun result!45013 () Bool)

(assert (=> tb!44737 (= result!45013 true)))

(assert (=> d!42844 t!45559))

(declare-fun b_and!56747 () Bool)

(assert (= b_and!56727 (and (=> t!45559 result!45013) b_and!56747)))

(declare-fun t!45561 () Bool)

(declare-fun tb!44739 () Bool)

(assert (=> (and b!50386 (= (y!1562 thiss!4933) (y!1562 x$20!42)) t!45561) tb!44739))

(declare-fun result!45015 () Bool)

(assert (=> tb!44739 (= result!45015 true)))

(assert (=> d!42844 t!45561))

(declare-fun b_and!56749 () Bool)

(assert (= b_and!56735 (and (=> t!45561 result!45015) b_and!56749)))

(declare-fun tb!44741 () Bool)

(declare-fun t!45563 () Bool)

(assert (=> (and b!50382 (= (y!1563 x$21!39) (y!1562 x$20!42)) t!45563) tb!44741))

(declare-fun result!45017 () Bool)

(assert (=> tb!44741 (= result!45017 true)))

(assert (=> d!42844 t!45563))

(declare-fun b_and!56751 () Bool)

(assert (= b_and!56737 (and (=> t!45563 result!45017) b_and!56751)))

(declare-fun tb!44743 () Bool)

(declare-fun t!45565 () Bool)

(assert (=> (and b!50387 (= (x!19508 x$19!350) (y!1562 x$20!42)) t!45565) tb!44743))

(declare-fun result!45019 () Bool)

(assert (=> tb!44743 (= result!45019 true)))

(assert (=> d!42844 t!45565))

(declare-fun b_and!56753 () Bool)

(assert (= b_and!56741 (and (=> t!45565 result!45019) b_and!56753)))

(declare-fun t!45567 () Bool)

(declare-fun tb!44745 () Bool)

(assert (=> (and b!50380 (= (y!1562 prev!407) (y!1562 x$20!42)) t!45567) tb!44745))

(declare-fun result!45021 () Bool)

(assert (=> tb!44745 (= result!45021 true)))

(assert (=> d!42844 t!45567))

(declare-fun b_and!56755 () Bool)

(assert (= b_and!56723 (and (=> t!45567 result!45021) b_and!56755)))

(declare-fun t!45569 () Bool)

(declare-fun tb!44747 () Bool)

(assert (=> (and b!50383 (= (x!19508 x$20!42) (y!1562 x$20!42)) t!45569) tb!44747))

(declare-fun result!45023 () Bool)

(assert (=> tb!44747 (= result!45023 true)))

(assert (=> d!42844 t!45569))

(declare-fun b_and!56757 () Bool)

(assert (= b_and!56731 (and (=> t!45569 result!45023) b_and!56757)))

(declare-fun t!45571 () Bool)

(declare-fun tb!44749 () Bool)

(assert (=> (and b!50387 (= (y!1562 x$19!350) (y!1562 x$20!42)) t!45571) tb!44749))

(declare-fun result!45025 () Bool)

(assert (=> tb!44749 (= result!45025 true)))

(assert (=> d!42844 t!45571))

(declare-fun b_and!56759 () Bool)

(assert (= b_and!56729 (and (=> t!45571 result!45025) b_and!56759)))

(declare-fun t!45573 () Bool)

(declare-fun tb!44751 () Bool)

(assert (=> (and b!50380 (= (x!19508 prev!407) (y!1562 x$20!42)) t!45573) tb!44751))

(declare-fun result!45027 () Bool)

(assert (=> tb!44751 (= result!45027 true)))

(assert (=> d!42844 t!45573))

(declare-fun b_and!56761 () Bool)

(assert (= b_and!56733 (and (=> t!45573 result!45027) b_and!56761)))

(declare-fun m!54019 () Bool)

(assert (=> d!42844 m!54019))

(declare-fun m!54021 () Bool)

(assert (=> d!42844 m!54021))

(assert (=> start!6764 d!42844))

(declare-fun d!42846 () Bool)

(assert (=> d!42846 (= (inv!873 x$19!350) (= (dynLambda!864 (x!19508 x$19!350)) (dynLambda!864 (y!1562 x$19!350))))))

(declare-fun b_lambda!14241 () Bool)

(assert (=> (not b_lambda!14241) (not d!42846)))

(declare-fun tb!44753 () Bool)

(declare-fun t!45575 () Bool)

(assert (=> (and b!50383 (= (y!1562 x$20!42) (x!19508 x$19!350)) t!45575) tb!44753))

(declare-fun result!45029 () Bool)

(assert (=> tb!44753 (= result!45029 true)))

(assert (=> d!42846 t!45575))

(declare-fun b_and!56763 () Bool)

(assert (= b_and!56745 (and (=> t!45575 result!45029) b_and!56763)))

(declare-fun t!45577 () Bool)

(declare-fun tb!44755 () Bool)

(assert (=> (and b!50386 (= (y!1562 thiss!4933) (x!19508 x$19!350)) t!45577) tb!44755))

(declare-fun result!45031 () Bool)

(assert (=> tb!44755 (= result!45031 true)))

(assert (=> d!42846 t!45577))

(declare-fun b_and!56765 () Bool)

(assert (= b_and!56749 (and (=> t!45577 result!45031) b_and!56765)))

(declare-fun tb!44757 () Bool)

(declare-fun t!45579 () Bool)

(assert (=> (and b!50380 (= (x!19508 prev!407) (x!19508 x$19!350)) t!45579) tb!44757))

(declare-fun result!45033 () Bool)

(assert (=> tb!44757 (= result!45033 true)))

(assert (=> d!42846 t!45579))

(declare-fun b_and!56767 () Bool)

(assert (= b_and!56761 (and (=> t!45579 result!45033) b_and!56767)))

(declare-fun t!45581 () Bool)

(declare-fun tb!44759 () Bool)

(assert (=> (and b!50386 (= (x!19508 thiss!4933) (x!19508 x$19!350)) t!45581) tb!44759))

(declare-fun result!45035 () Bool)

(assert (=> tb!44759 (= result!45035 true)))

(assert (=> d!42846 t!45581))

(declare-fun b_and!56769 () Bool)

(assert (= b_and!56747 (and (=> t!45581 result!45035) b_and!56769)))

(declare-fun tb!44761 () Bool)

(declare-fun t!45583 () Bool)

(assert (=> (and b!50382 (= (y!1563 x$21!39) (x!19508 x$19!350)) t!45583) tb!44761))

(declare-fun result!45037 () Bool)

(assert (=> tb!44761 (= result!45037 true)))

(assert (=> d!42846 t!45583))

(declare-fun b_and!56771 () Bool)

(assert (= b_and!56751 (and (=> t!45583 result!45037) b_and!56771)))

(declare-fun t!45585 () Bool)

(declare-fun tb!44763 () Bool)

(assert (=> (and b!50387 (= (y!1562 x$19!350) (x!19508 x$19!350)) t!45585) tb!44763))

(declare-fun result!45039 () Bool)

(assert (=> tb!44763 (= result!45039 true)))

(assert (=> d!42846 t!45585))

(declare-fun b_and!56773 () Bool)

(assert (= b_and!56759 (and (=> t!45585 result!45039) b_and!56773)))

(declare-fun t!45587 () Bool)

(declare-fun tb!44765 () Bool)

(assert (=> (and b!50383 (= (x!19508 x$20!42) (x!19508 x$19!350)) t!45587) tb!44765))

(declare-fun result!45041 () Bool)

(assert (=> tb!44765 (= result!45041 true)))

(assert (=> d!42846 t!45587))

(declare-fun b_and!56775 () Bool)

(assert (= b_and!56757 (and (=> t!45587 result!45041) b_and!56775)))

(declare-fun tb!44767 () Bool)

(declare-fun t!45589 () Bool)

(assert (=> (and b!50382 (= (x!19509 x$21!39) (x!19508 x$19!350)) t!45589) tb!44767))

(declare-fun result!45043 () Bool)

(assert (=> tb!44767 (= result!45043 true)))

(assert (=> d!42846 t!45589))

(declare-fun b_and!56777 () Bool)

(assert (= b_and!56743 (and (=> t!45589 result!45043) b_and!56777)))

(declare-fun tb!44769 () Bool)

(declare-fun t!45591 () Bool)

(assert (=> (and b!50380 (= (y!1562 prev!407) (x!19508 x$19!350)) t!45591) tb!44769))

(declare-fun result!45045 () Bool)

(assert (=> tb!44769 (= result!45045 true)))

(assert (=> d!42846 t!45591))

(declare-fun b_and!56779 () Bool)

(assert (= b_and!56755 (and (=> t!45591 result!45045) b_and!56779)))

(declare-fun t!45593 () Bool)

(declare-fun tb!44771 () Bool)

(assert (=> (and b!50387 (= (x!19508 x$19!350) (x!19508 x$19!350)) t!45593) tb!44771))

(declare-fun result!45047 () Bool)

(assert (=> tb!44771 (= result!45047 true)))

(assert (=> d!42846 t!45593))

(declare-fun b_and!56781 () Bool)

(assert (= b_and!56753 (and (=> t!45593 result!45047) b_and!56781)))

(declare-fun b_lambda!14243 () Bool)

(assert (=> (not b_lambda!14243) (not d!42846)))

(declare-fun tb!44773 () Bool)

(declare-fun t!45595 () Bool)

(assert (=> (and b!50380 (= (y!1562 prev!407) (y!1562 x$19!350)) t!45595) tb!44773))

(declare-fun result!45049 () Bool)

(assert (=> tb!44773 (= result!45049 true)))

(assert (=> d!42846 t!45595))

(declare-fun b_and!56783 () Bool)

(assert (= b_and!56779 (and (=> t!45595 result!45049) b_and!56783)))

(declare-fun t!45597 () Bool)

(declare-fun tb!44775 () Bool)

(assert (=> (and b!50387 (= (y!1562 x$19!350) (y!1562 x$19!350)) t!45597) tb!44775))

(declare-fun result!45051 () Bool)

(assert (=> tb!44775 (= result!45051 true)))

(assert (=> d!42846 t!45597))

(declare-fun b_and!56785 () Bool)

(assert (= b_and!56773 (and (=> t!45597 result!45051) b_and!56785)))

(declare-fun t!45599 () Bool)

(declare-fun tb!44777 () Bool)

(assert (=> (and b!50382 (= (x!19509 x$21!39) (y!1562 x$19!350)) t!45599) tb!44777))

(declare-fun result!45053 () Bool)

(assert (=> tb!44777 (= result!45053 true)))

(assert (=> d!42846 t!45599))

(declare-fun b_and!56787 () Bool)

(assert (= b_and!56777 (and (=> t!45599 result!45053) b_and!56787)))

(declare-fun t!45601 () Bool)

(declare-fun tb!44779 () Bool)

(assert (=> (and b!50382 (= (y!1563 x$21!39) (y!1562 x$19!350)) t!45601) tb!44779))

(declare-fun result!45055 () Bool)

(assert (=> tb!44779 (= result!45055 true)))

(assert (=> d!42846 t!45601))

(declare-fun b_and!56789 () Bool)

(assert (= b_and!56771 (and (=> t!45601 result!45055) b_and!56789)))

(declare-fun t!45603 () Bool)

(declare-fun tb!44781 () Bool)

(assert (=> (and b!50387 (= (x!19508 x$19!350) (y!1562 x$19!350)) t!45603) tb!44781))

(declare-fun result!45057 () Bool)

(assert (=> tb!44781 (= result!45057 true)))

(assert (=> d!42846 t!45603))

(declare-fun b_and!56791 () Bool)

(assert (= b_and!56781 (and (=> t!45603 result!45057) b_and!56791)))

(declare-fun tb!44783 () Bool)

(declare-fun t!45605 () Bool)

(assert (=> (and b!50380 (= (x!19508 prev!407) (y!1562 x$19!350)) t!45605) tb!44783))

(declare-fun result!45059 () Bool)

(assert (=> tb!44783 (= result!45059 true)))

(assert (=> d!42846 t!45605))

(declare-fun b_and!56793 () Bool)

(assert (= b_and!56767 (and (=> t!45605 result!45059) b_and!56793)))

(declare-fun t!45607 () Bool)

(declare-fun tb!44785 () Bool)

(assert (=> (and b!50383 (= (y!1562 x$20!42) (y!1562 x$19!350)) t!45607) tb!44785))

(declare-fun result!45061 () Bool)

(assert (=> tb!44785 (= result!45061 true)))

(assert (=> d!42846 t!45607))

(declare-fun b_and!56795 () Bool)

(assert (= b_and!56763 (and (=> t!45607 result!45061) b_and!56795)))

(declare-fun tb!44787 () Bool)

(declare-fun t!45609 () Bool)

(assert (=> (and b!50386 (= (x!19508 thiss!4933) (y!1562 x$19!350)) t!45609) tb!44787))

(declare-fun result!45063 () Bool)

(assert (=> tb!44787 (= result!45063 true)))

(assert (=> d!42846 t!45609))

(declare-fun b_and!56797 () Bool)

(assert (= b_and!56769 (and (=> t!45609 result!45063) b_and!56797)))

(declare-fun tb!44789 () Bool)

(declare-fun t!45611 () Bool)

(assert (=> (and b!50386 (= (y!1562 thiss!4933) (y!1562 x$19!350)) t!45611) tb!44789))

(declare-fun result!45065 () Bool)

(assert (=> tb!44789 (= result!45065 true)))

(assert (=> d!42846 t!45611))

(declare-fun b_and!56799 () Bool)

(assert (= b_and!56765 (and (=> t!45611 result!45065) b_and!56799)))

(declare-fun tb!44791 () Bool)

(declare-fun t!45613 () Bool)

(assert (=> (and b!50383 (= (x!19508 x$20!42) (y!1562 x$19!350)) t!45613) tb!44791))

(declare-fun result!45067 () Bool)

(assert (=> tb!44791 (= result!45067 true)))

(assert (=> d!42846 t!45613))

(declare-fun b_and!56801 () Bool)

(assert (= b_and!56775 (and (=> t!45613 result!45067) b_and!56801)))

(declare-fun m!54023 () Bool)

(assert (=> d!42846 m!54023))

(declare-fun m!54025 () Bool)

(assert (=> d!42846 m!54025))

(assert (=> start!6764 d!42846))

(declare-fun d!42848 () Bool)

(assert (=> d!42848 (= (inv!873 thiss!4933) (= (dynLambda!864 (x!19508 thiss!4933)) (dynLambda!864 (y!1562 thiss!4933))))))

(declare-fun b_lambda!14245 () Bool)

(assert (=> (not b_lambda!14245) (not d!42848)))

(assert (=> d!42848 t!45457))

(declare-fun b_and!56803 () Bool)

(assert (= b_and!56789 (and (=> t!45457 result!44911) b_and!56803)))

(assert (=> d!42848 t!45467))

(declare-fun b_and!56805 () Bool)

(assert (= b_and!56795 (and (=> t!45467 result!44921) b_and!56805)))

(assert (=> d!42848 t!45455))

(declare-fun b_and!56807 () Bool)

(assert (= b_and!56785 (and (=> t!45455 result!44909) b_and!56807)))

(assert (=> d!42848 t!45461))

(declare-fun b_and!56809 () Bool)

(assert (= b_and!56793 (and (=> t!45461 result!44915) b_and!56809)))

(assert (=> d!42848 t!45459))

(declare-fun b_and!56811 () Bool)

(assert (= b_and!56783 (and (=> t!45459 result!44913) b_and!56811)))

(assert (=> d!42848 t!45471))

(declare-fun b_and!56813 () Bool)

(assert (= b_and!56801 (and (=> t!45471 result!44925) b_and!56813)))

(assert (=> d!42848 t!45463))

(declare-fun b_and!56815 () Bool)

(assert (= b_and!56787 (and (=> t!45463 result!44917) b_and!56815)))

(assert (=> d!42848 t!45465))

(declare-fun b_and!56817 () Bool)

(assert (= b_and!56797 (and (=> t!45465 result!44919) b_and!56817)))

(assert (=> d!42848 t!45473))

(declare-fun b_and!56819 () Bool)

(assert (= b_and!56791 (and (=> t!45473 result!44927) b_and!56819)))

(assert (=> d!42848 t!45469))

(declare-fun b_and!56821 () Bool)

(assert (= b_and!56799 (and (=> t!45469 result!44923) b_and!56821)))

(declare-fun b_lambda!14247 () Bool)

(assert (=> (not b_lambda!14247) (not d!42848)))

(declare-fun tb!44793 () Bool)

(declare-fun t!45615 () Bool)

(assert (=> (and b!50382 (= (y!1563 x$21!39) (y!1562 thiss!4933)) t!45615) tb!44793))

(declare-fun result!45069 () Bool)

(assert (=> tb!44793 (= result!45069 true)))

(assert (=> d!42848 t!45615))

(declare-fun b_and!56823 () Bool)

(assert (= b_and!56803 (and (=> t!45615 result!45069) b_and!56823)))

(declare-fun t!45617 () Bool)

(declare-fun tb!44795 () Bool)

(assert (=> (and b!50383 (= (y!1562 x$20!42) (y!1562 thiss!4933)) t!45617) tb!44795))

(declare-fun result!45071 () Bool)

(assert (=> tb!44795 (= result!45071 true)))

(assert (=> d!42848 t!45617))

(declare-fun b_and!56825 () Bool)

(assert (= b_and!56805 (and (=> t!45617 result!45071) b_and!56825)))

(declare-fun tb!44797 () Bool)

(declare-fun t!45619 () Bool)

(assert (=> (and b!50382 (= (x!19509 x$21!39) (y!1562 thiss!4933)) t!45619) tb!44797))

(declare-fun result!45073 () Bool)

(assert (=> tb!44797 (= result!45073 true)))

(assert (=> d!42848 t!45619))

(declare-fun b_and!56827 () Bool)

(assert (= b_and!56815 (and (=> t!45619 result!45073) b_and!56827)))

(declare-fun t!45621 () Bool)

(declare-fun tb!44799 () Bool)

(assert (=> (and b!50386 (= (y!1562 thiss!4933) (y!1562 thiss!4933)) t!45621) tb!44799))

(declare-fun result!45075 () Bool)

(assert (=> tb!44799 (= result!45075 true)))

(assert (=> d!42848 t!45621))

(declare-fun b_and!56829 () Bool)

(assert (= b_and!56821 (and (=> t!45621 result!45075) b_and!56829)))

(declare-fun tb!44801 () Bool)

(declare-fun t!45623 () Bool)

(assert (=> (and b!50380 (= (x!19508 prev!407) (y!1562 thiss!4933)) t!45623) tb!44801))

(declare-fun result!45077 () Bool)

(assert (=> tb!44801 (= result!45077 true)))

(assert (=> d!42848 t!45623))

(declare-fun b_and!56831 () Bool)

(assert (= b_and!56809 (and (=> t!45623 result!45077) b_and!56831)))

(declare-fun t!45625 () Bool)

(declare-fun tb!44803 () Bool)

(assert (=> (and b!50386 (= (x!19508 thiss!4933) (y!1562 thiss!4933)) t!45625) tb!44803))

(declare-fun result!45079 () Bool)

(assert (=> tb!44803 (= result!45079 true)))

(assert (=> d!42848 t!45625))

(declare-fun b_and!56833 () Bool)

(assert (= b_and!56817 (and (=> t!45625 result!45079) b_and!56833)))

(declare-fun t!45627 () Bool)

(declare-fun tb!44805 () Bool)

(assert (=> (and b!50387 (= (x!19508 x$19!350) (y!1562 thiss!4933)) t!45627) tb!44805))

(declare-fun result!45081 () Bool)

(assert (=> tb!44805 (= result!45081 true)))

(assert (=> d!42848 t!45627))

(declare-fun b_and!56835 () Bool)

(assert (= b_and!56819 (and (=> t!45627 result!45081) b_and!56835)))

(declare-fun t!45629 () Bool)

(declare-fun tb!44807 () Bool)

(assert (=> (and b!50387 (= (y!1562 x$19!350) (y!1562 thiss!4933)) t!45629) tb!44807))

(declare-fun result!45083 () Bool)

(assert (=> tb!44807 (= result!45083 true)))

(assert (=> d!42848 t!45629))

(declare-fun b_and!56837 () Bool)

(assert (= b_and!56807 (and (=> t!45629 result!45083) b_and!56837)))

(declare-fun tb!44809 () Bool)

(declare-fun t!45631 () Bool)

(assert (=> (and b!50383 (= (x!19508 x$20!42) (y!1562 thiss!4933)) t!45631) tb!44809))

(declare-fun result!45085 () Bool)

(assert (=> tb!44809 (= result!45085 true)))

(assert (=> d!42848 t!45631))

(declare-fun b_and!56839 () Bool)

(assert (= b_and!56813 (and (=> t!45631 result!45085) b_and!56839)))

(declare-fun tb!44811 () Bool)

(declare-fun t!45633 () Bool)

(assert (=> (and b!50380 (= (y!1562 prev!407) (y!1562 thiss!4933)) t!45633) tb!44811))

(declare-fun result!45087 () Bool)

(assert (=> tb!44811 (= result!45087 true)))

(assert (=> d!42848 t!45633))

(declare-fun b_and!56841 () Bool)

(assert (= b_and!56811 (and (=> t!45633 result!45087) b_and!56841)))

(assert (=> d!42848 m!53955))

(declare-fun m!54027 () Bool)

(assert (=> d!42848 m!54027))

(assert (=> start!6764 d!42848))

(assert (=> bs!23436 d!42820))

(assert (=> bs!23436 d!42822))

(declare-fun d!42850 () Bool)

(declare-fun c!10676 () Bool)

(assert (=> d!42850 (= c!10676 (is-Zero!232 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17))))))

(declare-fun e!26186 () Nat!248)

(assert (=> d!42850 (= (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) (+!5 n2!88 n3!17)) e!26186)))

(declare-fun b!50425 () Bool)

(assert (=> b!50425 (= e!26186 (+!5 n2!88 n3!17))))

(declare-fun b!50426 () Bool)

(assert (=> b!50426 (= e!26186 (Succ!229 (+!5 (n!1385 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17))) (+!5 n2!88 n3!17))))))

(assert (= (and d!42850 c!10676) b!50425))

(assert (= (and d!42850 (not c!10676)) b!50426))

(assert (=> b!50426 m!53973))

(declare-fun m!54029 () Bool)

(assert (=> b!50426 m!54029))

(assert (=> bs!23436 d!42850))

(assert (=> bs!23436 d!42824))

(assert (=> bs!23436 d!42830))

(assert (=> bs!23433 d!42832))

(assert (=> bs!23433 d!42834))

(assert (=> bs!23433 d!42830))

(assert (=> bs!23426 d!42820))

(assert (=> bs!23426 d!42822))

(assert (=> bs!23426 d!42850))

(assert (=> bs!23426 d!42824))

(assert (=> bs!23426 d!42830))

(declare-fun b!50428 () Bool)

(declare-fun e!26187 () Unit!785)

(declare-fun Unit!789 () Unit!785)

(assert (=> b!50428 (= e!26187 Unit!789)))

(declare-fun lt!8847 () Unit!785)

(assert (=> b!50428 (= lt!8847 (associative_plus!0 (n!1385 (*!4 (n!1385 n1!77) n2!88)) (*!4 (n!1385 n1!77) n3!17) n2!88))))

(declare-fun d!42852 () Bool)

(assert (=> d!42852 (= (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88) (+!5 (*!4 (n!1385 n1!77) n2!88) (+!5 (*!4 (n!1385 n1!77) n3!17) n2!88)))))

(declare-fun lt!8846 () Unit!785)

(assert (=> d!42852 (= lt!8846 e!26187)))

(declare-fun c!10677 () Bool)

(assert (=> d!42852 (= c!10677 (is-Zero!232 (*!4 (n!1385 n1!77) n2!88)))))

(assert (=> d!42852 (= (associative_plus!0 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17) n2!88) lt!8846)))

(declare-fun b!50427 () Bool)

(declare-fun Unit!790 () Unit!785)

(assert (=> b!50427 (= e!26187 Unit!790)))

(assert (= (and d!42852 c!10677) b!50427))

(assert (= (and d!42852 (not c!10677)) b!50428))

(assert (=> b!50428 m!53963))

(declare-fun m!54031 () Bool)

(assert (=> b!50428 m!54031))

(assert (=> d!42852 m!53961))

(assert (=> d!42852 m!53963))

(assert (=> d!42852 m!53957))

(assert (=> d!42852 m!53957))

(assert (=> d!42852 m!53959))

(assert (=> d!42852 m!53963))

(declare-fun m!54033 () Bool)

(assert (=> d!42852 m!54033))

(assert (=> d!42852 m!53961))

(assert (=> d!42852 m!54033))

(declare-fun m!54035 () Bool)

(assert (=> d!42852 m!54035))

(assert (=> bs!23430 d!42852))

(assert (=> bs!23430 d!42820))

(assert (=> bs!23430 d!42824))

(declare-fun d!42854 () Bool)

(declare-fun c!10678 () Bool)

(assert (=> d!42854 (= c!10678 (is-Zero!232 (*!4 n1!77 n2!88)))))

(declare-fun e!26188 () Nat!248)

(assert (=> d!42854 (= (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)) e!26188)))

(declare-fun b!50429 () Bool)

(assert (=> b!50429 (= e!26188 (*!4 n1!77 n3!17))))

(declare-fun b!50430 () Bool)

(assert (=> b!50430 (= e!26188 (Succ!229 (+!5 (n!1385 (*!4 n1!77 n2!88)) (*!4 n1!77 n3!17))))))

(assert (= (and d!42854 c!10678) b!50429))

(assert (= (and d!42854 (not c!10678)) b!50430))

(assert (=> b!50430 m!53969))

(declare-fun m!54037 () Bool)

(assert (=> b!50430 m!54037))

(assert (=> bs!23432 d!42854))

(declare-fun d!42856 () Bool)

(declare-fun c!10679 () Bool)

(assert (=> d!42856 (= c!10679 (is-Zero!232 n1!77))))

(declare-fun e!26189 () Nat!248)

(assert (=> d!42856 (= (*!4 n1!77 n2!88) e!26189)))

(declare-fun b!50431 () Bool)

(assert (=> b!50431 (= e!26189 Zero!232)))

(declare-fun b!50432 () Bool)

(assert (=> b!50432 (= e!26189 (+!5 (*!4 (n!1385 n1!77) n2!88) n2!88))))

(assert (= (and d!42856 c!10679) b!50431))

(assert (= (and d!42856 (not c!10679)) b!50432))

(assert (=> b!50432 m!53961))

(assert (=> b!50432 m!53961))

(declare-fun m!54039 () Bool)

(assert (=> b!50432 m!54039))

(assert (=> bs!23432 d!42856))

(declare-fun d!42858 () Bool)

(declare-fun c!10680 () Bool)

(assert (=> d!42858 (= c!10680 (is-Zero!232 n1!77))))

(declare-fun e!26190 () Nat!248)

(assert (=> d!42858 (= (*!4 n1!77 n3!17) e!26190)))

(declare-fun b!50433 () Bool)

(assert (=> b!50433 (= e!26190 Zero!232)))

(declare-fun b!50434 () Bool)

(assert (=> b!50434 (= e!26190 (+!5 (*!4 (n!1385 n1!77) n3!17) n3!17))))

(assert (= (and d!42858 c!10680) b!50433))

(assert (= (and d!42858 (not c!10680)) b!50434))

(assert (=> b!50434 m!53963))

(assert (=> b!50434 m!53963))

(declare-fun m!54041 () Bool)

(assert (=> b!50434 m!54041))

(assert (=> bs!23432 d!42858))

(declare-fun d!42860 () Bool)

(assert (=> d!42860 (= (keepEvidence!67 (dynLambda!863 (evidence!675 prev!407))) true)))

(assert (=> b!50378 d!42860))

(declare-fun d!42862 () Bool)

(assert (=> d!42862 (= (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17)) (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)))))

(assert (=> d!42862 true))

(declare-fun x$22!59 () Unit!785)

(assert (=> d!42862 (= (distributive_times!0 (n!1385 n1!77) n2!88 n3!17) x$22!59)))

(declare-fun bs!23437 () Bool)

(assert (= bs!23437 d!42862))

(assert (=> bs!23437 m!53961))

(assert (=> bs!23437 m!53963))

(assert (=> bs!23437 m!53957))

(assert (=> bs!23437 m!53973))

(assert (=> bs!23437 m!53977))

(assert (=> bs!23437 m!53963))

(assert (=> bs!23437 m!53973))

(assert (=> bs!23437 m!53961))

(assert (=> bs!23431 d!42862))

(assert (=> bs!23435 d!42828))

(assert (=> bs!23435 d!42830))

(assert (=> bs!23425 d!42854))

(assert (=> bs!23425 d!42856))

(assert (=> bs!23425 d!42858))

(declare-fun b_lambda!14249 () Bool)

(assert (= b_lambda!14243 (or (and b!50386 b_free!6987 (= (x!19508 thiss!4933) (y!1562 x$19!350))) (and b!50385 (= lambda!8340 (y!1562 x$19!350))) (and b!50383 b_free!7001 (= (y!1562 x$20!42) (y!1562 x$19!350))) (and b!50381 (= lambda!8343 (y!1562 x$19!350))) (and b!50379 (= lambda!8336 (y!1562 x$19!350))) (and b!50380 b_free!7007 (= (y!1562 prev!407) (y!1562 x$19!350))) (and b!50384 (= lambda!8338 (y!1562 x$19!350))) (and b!50383 b_free!6999 (= (x!19508 x$20!42) (y!1562 x$19!350))) (and b!50382 b_free!7013 (= (y!1563 x$21!39) (y!1562 x$19!350))) (and b!50382 b_free!7011 (= (x!19509 x$21!39) (y!1562 x$19!350))) (and b!50387 b_free!6995) (and b!50381 (= lambda!8342 (y!1562 x$19!350))) (and b!50387 b_free!6993 (= (x!19508 x$19!350) (y!1562 x$19!350))) (and b!50386 b_free!6989 (= (y!1562 thiss!4933) (y!1562 x$19!350))) (and b!50380 b_free!7005 (= (x!19508 prev!407) (y!1562 x$19!350))) b_lambda!14249)))

(declare-fun bs!23438 () Bool)

(declare-fun d!42864 () Bool)

(assert (= bs!23438 (and d!42864 b!50385)))

(assert (=> bs!23438 (= (dynLambda!864 lambda!8340) (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23438 m!53961))

(assert (=> bs!23438 m!53963))

(assert (=> bs!23438 m!53957))

(assert (=> bs!23438 m!53957))

(assert (=> bs!23438 m!53973))

(assert (=> bs!23438 m!53975))

(assert (=> bs!23438 m!53963))

(assert (=> bs!23438 m!53973))

(assert (=> bs!23438 m!53961))

(assert (=> (and b!50385 (= lambda!8340 (y!1562 x$19!350)) d!42846) d!42864))

(declare-fun bs!23439 () Bool)

(declare-fun d!42866 () Bool)

(assert (= bs!23439 (and d!42866 b!50381)))

(assert (=> bs!23439 (= (dynLambda!864 lambda!8343) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23439 m!53967))

(assert (=> bs!23439 m!53969))

(assert (=> bs!23439 m!53967))

(assert (=> bs!23439 m!53969))

(assert (=> bs!23439 m!53971))

(assert (=> (and b!50381 (= lambda!8343 (y!1562 x$19!350)) d!42846) d!42866))

(declare-fun bs!23440 () Bool)

(declare-fun d!42868 () Bool)

(assert (= bs!23440 (and d!42868 b!50384)))

(assert (=> bs!23440 (= (dynLambda!864 lambda!8338) (+!5 (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23440 m!53973))

(assert (=> bs!23440 m!53977))

(assert (=> bs!23440 m!53973))

(assert (=> bs!23440 m!53979))

(assert (=> bs!23440 m!53973))

(assert (=> bs!23440 m!53977))

(assert (=> (and b!50384 (= lambda!8338 (y!1562 x$19!350)) d!42846) d!42868))

(declare-fun bs!23441 () Bool)

(declare-fun d!42870 () Bool)

(assert (= bs!23441 (and d!42870 b!50379)))

(assert (=> bs!23441 (= (dynLambda!864 lambda!8336) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23441 m!53973))

(assert (=> bs!23441 m!53973))

(assert (=> bs!23441 m!53981))

(assert (=> (and b!50379 (= lambda!8336 (y!1562 x$19!350)) d!42846) d!42870))

(declare-fun bs!23442 () Bool)

(declare-fun d!42872 () Bool)

(assert (= bs!23442 (and d!42872 b!50381)))

(assert (=> bs!23442 (= (dynLambda!864 lambda!8342) (+!5 (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88) n3!17))))

(assert (=> bs!23442 m!53957))

(assert (=> bs!23442 m!53959))

(assert (=> bs!23442 m!53961))

(assert (=> bs!23442 m!53963))

(assert (=> bs!23442 m!53957))

(assert (=> bs!23442 m!53963))

(assert (=> bs!23442 m!53959))

(assert (=> bs!23442 m!53965))

(assert (=> bs!23442 m!53961))

(assert (=> (and b!50381 (= lambda!8342 (y!1562 x$19!350)) d!42846) d!42872))

(declare-fun b_lambda!14251 () Bool)

(assert (= b_lambda!14237 (or (and b!50385 (= lambda!8340 (x!19508 x$20!42))) (and b!50381 (= lambda!8342 (x!19508 x$20!42))) (and b!50381 (= lambda!8343 (x!19508 x$20!42))) (and b!50380 b_free!7005 (= (x!19508 prev!407) (x!19508 x$20!42))) (and b!50383 b_free!7001 (= (y!1562 x$20!42) (x!19508 x$20!42))) (and b!50382 b_free!7013 (= (y!1563 x$21!39) (x!19508 x$20!42))) (and b!50384 (= lambda!8338 (x!19508 x$20!42))) (and b!50382 b_free!7011 (= (x!19509 x$21!39) (x!19508 x$20!42))) (and b!50386 b_free!6989 (= (y!1562 thiss!4933) (x!19508 x$20!42))) (and b!50379 (= lambda!8336 (x!19508 x$20!42))) (and b!50380 b_free!7007 (= (y!1562 prev!407) (x!19508 x$20!42))) (and b!50387 b_free!6993 (= (x!19508 x$19!350) (x!19508 x$20!42))) (and b!50383 b_free!6999) (and b!50387 b_free!6995 (= (y!1562 x$19!350) (x!19508 x$20!42))) (and b!50386 b_free!6987 (= (x!19508 thiss!4933) (x!19508 x$20!42))) b_lambda!14251)))

(declare-fun bs!23443 () Bool)

(declare-fun d!42874 () Bool)

(assert (= bs!23443 (and d!42874 b!50384)))

(assert (=> bs!23443 (= (dynLambda!864 lambda!8338) (+!5 (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23443 m!53973))

(assert (=> bs!23443 m!53977))

(assert (=> bs!23443 m!53973))

(assert (=> bs!23443 m!53979))

(assert (=> bs!23443 m!53973))

(assert (=> bs!23443 m!53977))

(assert (=> (and b!50384 (= lambda!8338 (x!19508 x$20!42)) d!42844) d!42874))

(declare-fun bs!23444 () Bool)

(declare-fun d!42876 () Bool)

(assert (= bs!23444 (and d!42876 b!50381)))

(assert (=> bs!23444 (= (dynLambda!864 lambda!8342) (+!5 (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88) n3!17))))

(assert (=> bs!23444 m!53957))

(assert (=> bs!23444 m!53959))

(assert (=> bs!23444 m!53961))

(assert (=> bs!23444 m!53963))

(assert (=> bs!23444 m!53957))

(assert (=> bs!23444 m!53963))

(assert (=> bs!23444 m!53959))

(assert (=> bs!23444 m!53965))

(assert (=> bs!23444 m!53961))

(assert (=> (and b!50381 (= lambda!8342 (x!19508 x$20!42)) d!42844) d!42876))

(declare-fun bs!23445 () Bool)

(declare-fun d!42878 () Bool)

(assert (= bs!23445 (and d!42878 b!50379)))

(assert (=> bs!23445 (= (dynLambda!864 lambda!8336) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23445 m!53973))

(assert (=> bs!23445 m!53973))

(assert (=> bs!23445 m!53981))

(assert (=> (and b!50379 (= lambda!8336 (x!19508 x$20!42)) d!42844) d!42878))

(declare-fun bs!23446 () Bool)

(declare-fun d!42880 () Bool)

(assert (= bs!23446 (and d!42880 b!50381)))

(assert (=> bs!23446 (= (dynLambda!864 lambda!8343) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23446 m!53967))

(assert (=> bs!23446 m!53969))

(assert (=> bs!23446 m!53967))

(assert (=> bs!23446 m!53969))

(assert (=> bs!23446 m!53971))

(assert (=> (and b!50381 (= lambda!8343 (x!19508 x$20!42)) d!42844) d!42880))

(declare-fun bs!23447 () Bool)

(declare-fun d!42882 () Bool)

(assert (= bs!23447 (and d!42882 b!50385)))

(assert (=> bs!23447 (= (dynLambda!864 lambda!8340) (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23447 m!53961))

(assert (=> bs!23447 m!53963))

(assert (=> bs!23447 m!53957))

(assert (=> bs!23447 m!53957))

(assert (=> bs!23447 m!53973))

(assert (=> bs!23447 m!53975))

(assert (=> bs!23447 m!53963))

(assert (=> bs!23447 m!53973))

(assert (=> bs!23447 m!53961))

(assert (=> (and b!50385 (= lambda!8340 (x!19508 x$20!42)) d!42844) d!42882))

(declare-fun b_lambda!14253 () Bool)

(assert (= b_lambda!14233 (or (and b!50383 b_free!6999 (= (x!19508 x$20!42) (x!19508 prev!407))) (and b!50384 (= lambda!8338 (x!19508 prev!407))) (and b!50383 b_free!7001 (= (y!1562 x$20!42) (x!19508 prev!407))) (and b!50380 b_free!7007 (= (y!1562 prev!407) (x!19508 prev!407))) (and b!50380 b_free!7005) (and b!50387 b_free!6993 (= (x!19508 x$19!350) (x!19508 prev!407))) (and b!50386 b_free!6989 (= (y!1562 thiss!4933) (x!19508 prev!407))) (and b!50382 b_free!7011 (= (x!19509 x$21!39) (x!19508 prev!407))) (and b!50379 (= lambda!8336 (x!19508 prev!407))) (and b!50387 b_free!6995 (= (y!1562 x$19!350) (x!19508 prev!407))) (and b!50382 b_free!7013 (= (y!1563 x$21!39) (x!19508 prev!407))) (and b!50385 (= lambda!8340 (x!19508 prev!407))) (and b!50381 (= lambda!8343 (x!19508 prev!407))) (and b!50386 b_free!6987 (= (x!19508 thiss!4933) (x!19508 prev!407))) (and b!50381 (= lambda!8342 (x!19508 prev!407))) b_lambda!14253)))

(declare-fun bs!23448 () Bool)

(declare-fun d!42884 () Bool)

(assert (= bs!23448 (and d!42884 b!50379)))

(assert (=> bs!23448 (= (dynLambda!864 lambda!8336) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23448 m!53973))

(assert (=> bs!23448 m!53973))

(assert (=> bs!23448 m!53981))

(assert (=> (and b!50379 (= lambda!8336 (x!19508 prev!407)) d!42842) d!42884))

(declare-fun bs!23449 () Bool)

(declare-fun d!42886 () Bool)

(assert (= bs!23449 (and d!42886 b!50381)))

(assert (=> bs!23449 (= (dynLambda!864 lambda!8342) (+!5 (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88) n3!17))))

(assert (=> bs!23449 m!53957))

(assert (=> bs!23449 m!53959))

(assert (=> bs!23449 m!53961))

(assert (=> bs!23449 m!53963))

(assert (=> bs!23449 m!53957))

(assert (=> bs!23449 m!53963))

(assert (=> bs!23449 m!53959))

(assert (=> bs!23449 m!53965))

(assert (=> bs!23449 m!53961))

(assert (=> (and b!50381 (= lambda!8342 (x!19508 prev!407)) d!42842) d!42886))

(declare-fun bs!23450 () Bool)

(declare-fun d!42888 () Bool)

(assert (= bs!23450 (and d!42888 b!50384)))

(assert (=> bs!23450 (= (dynLambda!864 lambda!8338) (+!5 (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23450 m!53973))

(assert (=> bs!23450 m!53977))

(assert (=> bs!23450 m!53973))

(assert (=> bs!23450 m!53979))

(assert (=> bs!23450 m!53973))

(assert (=> bs!23450 m!53977))

(assert (=> (and b!50384 (= lambda!8338 (x!19508 prev!407)) d!42842) d!42888))

(declare-fun bs!23451 () Bool)

(declare-fun d!42890 () Bool)

(assert (= bs!23451 (and d!42890 b!50385)))

(assert (=> bs!23451 (= (dynLambda!864 lambda!8340) (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23451 m!53961))

(assert (=> bs!23451 m!53963))

(assert (=> bs!23451 m!53957))

(assert (=> bs!23451 m!53957))

(assert (=> bs!23451 m!53973))

(assert (=> bs!23451 m!53975))

(assert (=> bs!23451 m!53963))

(assert (=> bs!23451 m!53973))

(assert (=> bs!23451 m!53961))

(assert (=> (and b!50385 (= lambda!8340 (x!19508 prev!407)) d!42842) d!42890))

(declare-fun bs!23452 () Bool)

(declare-fun d!42892 () Bool)

(assert (= bs!23452 (and d!42892 b!50381)))

(assert (=> bs!23452 (= (dynLambda!864 lambda!8343) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23452 m!53967))

(assert (=> bs!23452 m!53969))

(assert (=> bs!23452 m!53967))

(assert (=> bs!23452 m!53969))

(assert (=> bs!23452 m!53971))

(assert (=> (and b!50381 (= lambda!8343 (x!19508 prev!407)) d!42842) d!42892))

(declare-fun b_lambda!14255 () Bool)

(assert (= b_lambda!14235 (or (and b!50387 b_free!6995 (= (y!1562 x$19!350) (y!1562 prev!407))) (and b!50385 (= lambda!8340 (y!1562 prev!407))) (and b!50381 (= lambda!8342 (y!1562 prev!407))) (and b!50379 (= lambda!8336 (y!1562 prev!407))) (and b!50383 b_free!6999 (= (x!19508 x$20!42) (y!1562 prev!407))) (and b!50386 b_free!6987 (= (x!19508 thiss!4933) (y!1562 prev!407))) (and b!50380 b_free!7005 (= (x!19508 prev!407) (y!1562 prev!407))) (and b!50380 b_free!7007) (and b!50381 (= lambda!8343 (y!1562 prev!407))) (and b!50382 b_free!7013 (= (y!1563 x$21!39) (y!1562 prev!407))) (and b!50382 b_free!7011 (= (x!19509 x$21!39) (y!1562 prev!407))) (and b!50383 b_free!7001 (= (y!1562 x$20!42) (y!1562 prev!407))) (and b!50387 b_free!6993 (= (x!19508 x$19!350) (y!1562 prev!407))) (and b!50386 b_free!6989 (= (y!1562 thiss!4933) (y!1562 prev!407))) (and b!50384 (= lambda!8338 (y!1562 prev!407))) b_lambda!14255)))

(assert (=> (and b!50381 (= lambda!8343 (y!1562 prev!407)) d!42842) d!42808))

(assert (=> (and b!50384 (= lambda!8338 (y!1562 prev!407)) d!42842) d!42810))

(assert (=> (and b!50381 (= lambda!8342 (y!1562 prev!407)) d!42842) d!42812))

(assert (=> (and b!50379 (= lambda!8336 (y!1562 prev!407)) d!42842) d!42814))

(assert (=> (and b!50385 (= lambda!8340 (y!1562 prev!407)) d!42842) d!42816))

(declare-fun b_lambda!14257 () Bool)

(assert (= b_lambda!14231 (or (and b!50387 b_free!6995 (= (y!1562 x$19!350) (y!1563 x$21!39))) (and b!50384 (= lambda!8338 (y!1563 x$21!39))) (and b!50386 b_free!6987 (= (x!19508 thiss!4933) (y!1563 x$21!39))) (and b!50381 (= lambda!8343 (y!1563 x$21!39))) (and b!50380 b_free!7005 (= (x!19508 prev!407) (y!1563 x$21!39))) (and b!50380 b_free!7007 (= (y!1562 prev!407) (y!1563 x$21!39))) (and b!50386 b_free!6989 (= (y!1562 thiss!4933) (y!1563 x$21!39))) (and b!50379 (= lambda!8336 (y!1563 x$21!39))) (and b!50381 (= lambda!8342 (y!1563 x$21!39))) (and b!50387 b_free!6993 (= (x!19508 x$19!350) (y!1563 x$21!39))) (and b!50383 b_free!7001 (= (y!1562 x$20!42) (y!1563 x$21!39))) (and b!50382 b_free!7011 (= (x!19509 x$21!39) (y!1563 x$21!39))) (and b!50383 b_free!6999 (= (x!19508 x$20!42) (y!1563 x$21!39))) (and b!50385 (= lambda!8340 (y!1563 x$21!39))) (and b!50382 b_free!7013) b_lambda!14257)))

(declare-fun bs!23453 () Bool)

(declare-fun d!42894 () Bool)

(assert (= bs!23453 (and d!42894 b!50379)))

(assert (=> bs!23453 (= (dynLambda!864 lambda!8336) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23453 m!53973))

(assert (=> bs!23453 m!53973))

(assert (=> bs!23453 m!53981))

(assert (=> (and b!50379 (= lambda!8336 (y!1563 x$21!39)) d!42840) d!42894))

(declare-fun bs!23454 () Bool)

(declare-fun d!42896 () Bool)

(assert (= bs!23454 (and d!42896 b!50381)))

(assert (=> bs!23454 (= (dynLambda!864 lambda!8343) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23454 m!53967))

(assert (=> bs!23454 m!53969))

(assert (=> bs!23454 m!53967))

(assert (=> bs!23454 m!53969))

(assert (=> bs!23454 m!53971))

(assert (=> (and b!50381 (= lambda!8343 (y!1563 x$21!39)) d!42840) d!42896))

(declare-fun bs!23455 () Bool)

(declare-fun d!42898 () Bool)

(assert (= bs!23455 (and d!42898 b!50381)))

(assert (=> bs!23455 (= (dynLambda!864 lambda!8342) (+!5 (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88) n3!17))))

(assert (=> bs!23455 m!53957))

(assert (=> bs!23455 m!53959))

(assert (=> bs!23455 m!53961))

(assert (=> bs!23455 m!53963))

(assert (=> bs!23455 m!53957))

(assert (=> bs!23455 m!53963))

(assert (=> bs!23455 m!53959))

(assert (=> bs!23455 m!53965))

(assert (=> bs!23455 m!53961))

(assert (=> (and b!50381 (= lambda!8342 (y!1563 x$21!39)) d!42840) d!42898))

(declare-fun bs!23456 () Bool)

(declare-fun d!42900 () Bool)

(assert (= bs!23456 (and d!42900 b!50384)))

(assert (=> bs!23456 (= (dynLambda!864 lambda!8338) (+!5 (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23456 m!53973))

(assert (=> bs!23456 m!53977))

(assert (=> bs!23456 m!53973))

(assert (=> bs!23456 m!53979))

(assert (=> bs!23456 m!53973))

(assert (=> bs!23456 m!53977))

(assert (=> (and b!50384 (= lambda!8338 (y!1563 x$21!39)) d!42840) d!42900))

(declare-fun bs!23457 () Bool)

(declare-fun d!42902 () Bool)

(assert (= bs!23457 (and d!42902 b!50385)))

(assert (=> bs!23457 (= (dynLambda!864 lambda!8340) (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23457 m!53961))

(assert (=> bs!23457 m!53963))

(assert (=> bs!23457 m!53957))

(assert (=> bs!23457 m!53957))

(assert (=> bs!23457 m!53973))

(assert (=> bs!23457 m!53975))

(assert (=> bs!23457 m!53963))

(assert (=> bs!23457 m!53973))

(assert (=> bs!23457 m!53961))

(assert (=> (and b!50385 (= lambda!8340 (y!1563 x$21!39)) d!42840) d!42902))

(declare-fun b_lambda!14259 () Bool)

(assert (= b_lambda!14229 (or (and b!50383 b_free!6999 (= (x!19508 x$20!42) (x!19509 x$21!39))) (and b!50386 b_free!6989 (= (y!1562 thiss!4933) (x!19509 x$21!39))) (and b!50385 (= lambda!8340 (x!19509 x$21!39))) (and b!50381 (= lambda!8343 (x!19509 x$21!39))) (and b!50380 b_free!7005 (= (x!19508 prev!407) (x!19509 x$21!39))) (and b!50383 b_free!7001 (= (y!1562 x$20!42) (x!19509 x$21!39))) (and b!50382 b_free!7013 (= (y!1563 x$21!39) (x!19509 x$21!39))) (and b!50386 b_free!6987 (= (x!19508 thiss!4933) (x!19509 x$21!39))) (and b!50381 (= lambda!8342 (x!19509 x$21!39))) (and b!50380 b_free!7007 (= (y!1562 prev!407) (x!19509 x$21!39))) (and b!50379 (= lambda!8336 (x!19509 x$21!39))) (and b!50387 b_free!6995 (= (y!1562 x$19!350) (x!19509 x$21!39))) (and b!50387 b_free!6993 (= (x!19508 x$19!350) (x!19509 x$21!39))) (and b!50384 (= lambda!8338 (x!19509 x$21!39))) (and b!50382 b_free!7011) b_lambda!14259)))

(declare-fun bs!23458 () Bool)

(declare-fun d!42904 () Bool)

(assert (= bs!23458 (and d!42904 b!50384)))

(assert (=> bs!23458 (= (dynLambda!864 lambda!8338) (+!5 (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23458 m!53973))

(assert (=> bs!23458 m!53977))

(assert (=> bs!23458 m!53973))

(assert (=> bs!23458 m!53979))

(assert (=> bs!23458 m!53973))

(assert (=> bs!23458 m!53977))

(assert (=> (and b!50384 (= lambda!8338 (x!19509 x$21!39)) d!42840) d!42904))

(declare-fun bs!23459 () Bool)

(declare-fun d!42906 () Bool)

(assert (= bs!23459 (and d!42906 b!50381)))

(assert (=> bs!23459 (= (dynLambda!864 lambda!8342) (+!5 (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88) n3!17))))

(assert (=> bs!23459 m!53957))

(assert (=> bs!23459 m!53959))

(assert (=> bs!23459 m!53961))

(assert (=> bs!23459 m!53963))

(assert (=> bs!23459 m!53957))

(assert (=> bs!23459 m!53963))

(assert (=> bs!23459 m!53959))

(assert (=> bs!23459 m!53965))

(assert (=> bs!23459 m!53961))

(assert (=> (and b!50381 (= lambda!8342 (x!19509 x$21!39)) d!42840) d!42906))

(declare-fun bs!23460 () Bool)

(declare-fun d!42908 () Bool)

(assert (= bs!23460 (and d!42908 b!50381)))

(assert (=> bs!23460 (= (dynLambda!864 lambda!8343) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23460 m!53967))

(assert (=> bs!23460 m!53969))

(assert (=> bs!23460 m!53967))

(assert (=> bs!23460 m!53969))

(assert (=> bs!23460 m!53971))

(assert (=> (and b!50381 (= lambda!8343 (x!19509 x$21!39)) d!42840) d!42908))

(declare-fun bs!23461 () Bool)

(declare-fun d!42910 () Bool)

(assert (= bs!23461 (and d!42910 b!50379)))

(assert (=> bs!23461 (= (dynLambda!864 lambda!8336) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23461 m!53973))

(assert (=> bs!23461 m!53973))

(assert (=> bs!23461 m!53981))

(assert (=> (and b!50379 (= lambda!8336 (x!19509 x$21!39)) d!42840) d!42910))

(declare-fun bs!23462 () Bool)

(declare-fun d!42912 () Bool)

(assert (= bs!23462 (and d!42912 b!50385)))

(assert (=> bs!23462 (= (dynLambda!864 lambda!8340) (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23462 m!53961))

(assert (=> bs!23462 m!53963))

(assert (=> bs!23462 m!53957))

(assert (=> bs!23462 m!53957))

(assert (=> bs!23462 m!53973))

(assert (=> bs!23462 m!53975))

(assert (=> bs!23462 m!53963))

(assert (=> bs!23462 m!53973))

(assert (=> bs!23462 m!53961))

(assert (=> (and b!50385 (= lambda!8340 (x!19509 x$21!39)) d!42840) d!42912))

(declare-fun b_lambda!14261 () Bool)

(assert (= b_lambda!14247 (or (and b!50382 b_free!7011 (= (x!19509 x$21!39) (y!1562 thiss!4933))) (and b!50380 b_free!7005 (= (x!19508 prev!407) (y!1562 thiss!4933))) (and b!50387 b_free!6993 (= (x!19508 x$19!350) (y!1562 thiss!4933))) (and b!50381 (= lambda!8342 (y!1562 thiss!4933))) (and b!50379 (= lambda!8336 (y!1562 thiss!4933))) (and b!50380 b_free!7007 (= (y!1562 prev!407) (y!1562 thiss!4933))) (and b!50383 b_free!7001 (= (y!1562 x$20!42) (y!1562 thiss!4933))) (and b!50383 b_free!6999 (= (x!19508 x$20!42) (y!1562 thiss!4933))) (and b!50386 b_free!6987 (= (x!19508 thiss!4933) (y!1562 thiss!4933))) (and b!50387 b_free!6995 (= (y!1562 x$19!350) (y!1562 thiss!4933))) (and b!50384 (= lambda!8338 (y!1562 thiss!4933))) (and b!50385 (= lambda!8340 (y!1562 thiss!4933))) (and b!50381 (= lambda!8343 (y!1562 thiss!4933))) (and b!50386 b_free!6989) (and b!50382 b_free!7013 (= (y!1563 x$21!39) (y!1562 thiss!4933))) b_lambda!14261)))

(declare-fun bs!23463 () Bool)

(declare-fun d!42914 () Bool)

(assert (= bs!23463 (and d!42914 b!50379)))

(assert (=> bs!23463 (= (dynLambda!864 lambda!8336) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23463 m!53973))

(assert (=> bs!23463 m!53973))

(assert (=> bs!23463 m!53981))

(assert (=> (and b!50379 (= lambda!8336 (y!1562 thiss!4933)) d!42848) d!42914))

(declare-fun bs!23464 () Bool)

(declare-fun d!42916 () Bool)

(assert (= bs!23464 (and d!42916 b!50381)))

(assert (=> bs!23464 (= (dynLambda!864 lambda!8343) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23464 m!53967))

(assert (=> bs!23464 m!53969))

(assert (=> bs!23464 m!53967))

(assert (=> bs!23464 m!53969))

(assert (=> bs!23464 m!53971))

(assert (=> (and b!50381 (= lambda!8343 (y!1562 thiss!4933)) d!42848) d!42916))

(declare-fun bs!23465 () Bool)

(declare-fun d!42918 () Bool)

(assert (= bs!23465 (and d!42918 b!50385)))

(assert (=> bs!23465 (= (dynLambda!864 lambda!8340) (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23465 m!53961))

(assert (=> bs!23465 m!53963))

(assert (=> bs!23465 m!53957))

(assert (=> bs!23465 m!53957))

(assert (=> bs!23465 m!53973))

(assert (=> bs!23465 m!53975))

(assert (=> bs!23465 m!53963))

(assert (=> bs!23465 m!53973))

(assert (=> bs!23465 m!53961))

(assert (=> (and b!50385 (= lambda!8340 (y!1562 thiss!4933)) d!42848) d!42918))

(declare-fun bs!23466 () Bool)

(declare-fun d!42920 () Bool)

(assert (= bs!23466 (and d!42920 b!50381)))

(assert (=> bs!23466 (= (dynLambda!864 lambda!8342) (+!5 (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88) n3!17))))

(assert (=> bs!23466 m!53957))

(assert (=> bs!23466 m!53959))

(assert (=> bs!23466 m!53961))

(assert (=> bs!23466 m!53963))

(assert (=> bs!23466 m!53957))

(assert (=> bs!23466 m!53963))

(assert (=> bs!23466 m!53959))

(assert (=> bs!23466 m!53965))

(assert (=> bs!23466 m!53961))

(assert (=> (and b!50381 (= lambda!8342 (y!1562 thiss!4933)) d!42848) d!42920))

(declare-fun bs!23467 () Bool)

(declare-fun d!42922 () Bool)

(assert (= bs!23467 (and d!42922 b!50384)))

(assert (=> bs!23467 (= (dynLambda!864 lambda!8338) (+!5 (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23467 m!53973))

(assert (=> bs!23467 m!53977))

(assert (=> bs!23467 m!53973))

(assert (=> bs!23467 m!53979))

(assert (=> bs!23467 m!53973))

(assert (=> bs!23467 m!53977))

(assert (=> (and b!50384 (= lambda!8338 (y!1562 thiss!4933)) d!42848) d!42922))

(declare-fun b_lambda!14263 () Bool)

(assert (= b_lambda!14241 (or (and b!50382 b_free!7013 (= (y!1563 x$21!39) (x!19508 x$19!350))) (and b!50387 b_free!6995 (= (y!1562 x$19!350) (x!19508 x$19!350))) (and b!50384 (= lambda!8338 (x!19508 x$19!350))) (and b!50380 b_free!7007 (= (y!1562 prev!407) (x!19508 x$19!350))) (and b!50385 (= lambda!8340 (x!19508 x$19!350))) (and b!50382 b_free!7011 (= (x!19509 x$21!39) (x!19508 x$19!350))) (and b!50386 b_free!6987 (= (x!19508 thiss!4933) (x!19508 x$19!350))) (and b!50380 b_free!7005 (= (x!19508 prev!407) (x!19508 x$19!350))) (and b!50381 (= lambda!8342 (x!19508 x$19!350))) (and b!50386 b_free!6989 (= (y!1562 thiss!4933) (x!19508 x$19!350))) (and b!50379 (= lambda!8336 (x!19508 x$19!350))) (and b!50387 b_free!6993) (and b!50383 b_free!7001 (= (y!1562 x$20!42) (x!19508 x$19!350))) (and b!50383 b_free!6999 (= (x!19508 x$20!42) (x!19508 x$19!350))) (and b!50381 (= lambda!8343 (x!19508 x$19!350))) b_lambda!14263)))

(declare-fun bs!23468 () Bool)

(declare-fun d!42924 () Bool)

(assert (= bs!23468 (and d!42924 b!50381)))

(assert (=> bs!23468 (= (dynLambda!864 lambda!8342) (+!5 (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88) n3!17))))

(assert (=> bs!23468 m!53957))

(assert (=> bs!23468 m!53959))

(assert (=> bs!23468 m!53961))

(assert (=> bs!23468 m!53963))

(assert (=> bs!23468 m!53957))

(assert (=> bs!23468 m!53963))

(assert (=> bs!23468 m!53959))

(assert (=> bs!23468 m!53965))

(assert (=> bs!23468 m!53961))

(assert (=> (and b!50381 (= lambda!8342 (x!19508 x$19!350)) d!42846) d!42924))

(declare-fun bs!23469 () Bool)

(declare-fun d!42926 () Bool)

(assert (= bs!23469 (and d!42926 b!50385)))

(assert (=> bs!23469 (= (dynLambda!864 lambda!8340) (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23469 m!53961))

(assert (=> bs!23469 m!53963))

(assert (=> bs!23469 m!53957))

(assert (=> bs!23469 m!53957))

(assert (=> bs!23469 m!53973))

(assert (=> bs!23469 m!53975))

(assert (=> bs!23469 m!53963))

(assert (=> bs!23469 m!53973))

(assert (=> bs!23469 m!53961))

(assert (=> (and b!50385 (= lambda!8340 (x!19508 x$19!350)) d!42846) d!42926))

(declare-fun bs!23470 () Bool)

(declare-fun d!42928 () Bool)

(assert (= bs!23470 (and d!42928 b!50381)))

(assert (=> bs!23470 (= (dynLambda!864 lambda!8343) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23470 m!53967))

(assert (=> bs!23470 m!53969))

(assert (=> bs!23470 m!53967))

(assert (=> bs!23470 m!53969))

(assert (=> bs!23470 m!53971))

(assert (=> (and b!50381 (= lambda!8343 (x!19508 x$19!350)) d!42846) d!42928))

(declare-fun bs!23471 () Bool)

(declare-fun d!42930 () Bool)

(assert (= bs!23471 (and d!42930 b!50384)))

(assert (=> bs!23471 (= (dynLambda!864 lambda!8338) (+!5 (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23471 m!53973))

(assert (=> bs!23471 m!53977))

(assert (=> bs!23471 m!53973))

(assert (=> bs!23471 m!53979))

(assert (=> bs!23471 m!53973))

(assert (=> bs!23471 m!53977))

(assert (=> (and b!50384 (= lambda!8338 (x!19508 x$19!350)) d!42846) d!42930))

(declare-fun bs!23472 () Bool)

(declare-fun d!42932 () Bool)

(assert (= bs!23472 (and d!42932 b!50379)))

(assert (=> bs!23472 (= (dynLambda!864 lambda!8336) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23472 m!53973))

(assert (=> bs!23472 m!53973))

(assert (=> bs!23472 m!53981))

(assert (=> (and b!50379 (= lambda!8336 (x!19508 x$19!350)) d!42846) d!42932))

(declare-fun b_lambda!14265 () Bool)

(assert (= b_lambda!14245 (or (and b!50387 b_free!6995 (= (y!1562 x$19!350) (x!19508 thiss!4933))) (and b!50386 b_free!6989 (= (y!1562 thiss!4933) (x!19508 thiss!4933))) (and b!50380 b_free!7005 (= (x!19508 prev!407) (x!19508 thiss!4933))) (and b!50382 b_free!7013 (= (y!1563 x$21!39) (x!19508 thiss!4933))) (and b!50386 b_free!6987) (and b!50383 b_free!6999 (= (x!19508 x$20!42) (x!19508 thiss!4933))) (and b!50387 b_free!6993 (= (x!19508 x$19!350) (x!19508 thiss!4933))) (and b!50381 (= lambda!8342 (x!19508 thiss!4933))) (and b!50382 b_free!7011 (= (x!19509 x$21!39) (x!19508 thiss!4933))) (and b!50381 (= lambda!8343 (x!19508 thiss!4933))) (and b!50380 b_free!7007 (= (y!1562 prev!407) (x!19508 thiss!4933))) (and b!50385 (= lambda!8340 (x!19508 thiss!4933))) (and b!50379 (= lambda!8336 (x!19508 thiss!4933))) (and b!50383 b_free!7001 (= (y!1562 x$20!42) (x!19508 thiss!4933))) (and b!50384 (= lambda!8338 (x!19508 thiss!4933))) b_lambda!14265)))

(assert (=> (and b!50381 (= lambda!8342 (x!19508 thiss!4933)) d!42848) d!42792))

(assert (=> (and b!50381 (= lambda!8343 (x!19508 thiss!4933)) d!42848) d!42794))

(assert (=> (and b!50385 (= lambda!8340 (x!19508 thiss!4933)) d!42848) d!42796))

(assert (=> (and b!50384 (= lambda!8338 (x!19508 thiss!4933)) d!42848) d!42798))

(assert (=> (and b!50379 (= lambda!8336 (x!19508 thiss!4933)) d!42848) d!42800))

(declare-fun b_lambda!14267 () Bool)

(assert (= b_lambda!14239 (or (and b!50380 b_free!7005 (= (x!19508 prev!407) (y!1562 x$20!42))) (and b!50387 b_free!6993 (= (x!19508 x$19!350) (y!1562 x$20!42))) (and b!50381 (= lambda!8342 (y!1562 x$20!42))) (and b!50380 b_free!7007 (= (y!1562 prev!407) (y!1562 x$20!42))) (and b!50381 (= lambda!8343 (y!1562 x$20!42))) (and b!50386 b_free!6987 (= (x!19508 thiss!4933) (y!1562 x$20!42))) (and b!50382 b_free!7011 (= (x!19509 x$21!39) (y!1562 x$20!42))) (and b!50386 b_free!6989 (= (y!1562 thiss!4933) (y!1562 x$20!42))) (and b!50382 b_free!7013 (= (y!1563 x$21!39) (y!1562 x$20!42))) (and b!50383 b_free!6999 (= (x!19508 x$20!42) (y!1562 x$20!42))) (and b!50387 b_free!6995 (= (y!1562 x$19!350) (y!1562 x$20!42))) (and b!50385 (= lambda!8340 (y!1562 x$20!42))) (and b!50383 b_free!7001) (and b!50384 (= lambda!8338 (y!1562 x$20!42))) (and b!50379 (= lambda!8336 (y!1562 x$20!42))) b_lambda!14267)))

(declare-fun bs!23473 () Bool)

(declare-fun d!42934 () Bool)

(assert (= bs!23473 (and d!42934 b!50385)))

(assert (=> bs!23473 (= (dynLambda!864 lambda!8340) (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23473 m!53961))

(assert (=> bs!23473 m!53963))

(assert (=> bs!23473 m!53957))

(assert (=> bs!23473 m!53957))

(assert (=> bs!23473 m!53973))

(assert (=> bs!23473 m!53975))

(assert (=> bs!23473 m!53963))

(assert (=> bs!23473 m!53973))

(assert (=> bs!23473 m!53961))

(assert (=> (and b!50385 (= lambda!8340 (y!1562 x$20!42)) d!42844) d!42934))

(declare-fun bs!23474 () Bool)

(declare-fun d!42936 () Bool)

(assert (= bs!23474 (and d!42936 b!50381)))

(assert (=> bs!23474 (= (dynLambda!864 lambda!8343) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23474 m!53967))

(assert (=> bs!23474 m!53969))

(assert (=> bs!23474 m!53967))

(assert (=> bs!23474 m!53969))

(assert (=> bs!23474 m!53971))

(assert (=> (and b!50381 (= lambda!8343 (y!1562 x$20!42)) d!42844) d!42936))

(declare-fun bs!23475 () Bool)

(declare-fun d!42938 () Bool)

(assert (= bs!23475 (and d!42938 b!50381)))

(assert (=> bs!23475 (= (dynLambda!864 lambda!8342) (+!5 (+!5 (+!5 (*!4 (n!1385 n1!77) n2!88) (*!4 (n!1385 n1!77) n3!17)) n2!88) n3!17))))

(assert (=> bs!23475 m!53957))

(assert (=> bs!23475 m!53959))

(assert (=> bs!23475 m!53961))

(assert (=> bs!23475 m!53963))

(assert (=> bs!23475 m!53957))

(assert (=> bs!23475 m!53963))

(assert (=> bs!23475 m!53959))

(assert (=> bs!23475 m!53965))

(assert (=> bs!23475 m!53961))

(assert (=> (and b!50381 (= lambda!8342 (y!1562 x$20!42)) d!42844) d!42938))

(declare-fun bs!23476 () Bool)

(declare-fun d!42940 () Bool)

(assert (= bs!23476 (and d!42940 b!50379)))

(assert (=> bs!23476 (= (dynLambda!864 lambda!8336) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23476 m!53973))

(assert (=> bs!23476 m!53973))

(assert (=> bs!23476 m!53981))

(assert (=> (and b!50379 (= lambda!8336 (y!1562 x$20!42)) d!42844) d!42940))

(declare-fun bs!23477 () Bool)

(declare-fun d!42942 () Bool)

(assert (= bs!23477 (and d!42942 b!50384)))

(assert (=> bs!23477 (= (dynLambda!864 lambda!8338) (+!5 (*!4 (n!1385 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23477 m!53973))

(assert (=> bs!23477 m!53977))

(assert (=> bs!23477 m!53973))

(assert (=> bs!23477 m!53979))

(assert (=> bs!23477 m!53973))

(assert (=> bs!23477 m!53977))

(assert (=> (and b!50384 (= lambda!8338 (y!1562 x$20!42)) d!42844) d!42942))

(push 1)

(assert (not bs!23459))

(assert (not b_lambda!14259))

(assert (not b!50408))

(assert b_and!56599)

(assert (not b!50428))

(assert (not b!50412))

(assert (not d!42852))

(assert (not b!50404))

(assert (not b_next!37749))

(assert (not b!50432))

(assert (not b!50410))

(assert b_and!56833)

(assert (not bs!23450))

(assert b_and!56593)

(assert b_and!56841)

(assert (not b!50430))

(assert (not b_next!37731))

(assert (not bs!23472))

(assert (not bs!23466))

(assert (not bs!23453))

(assert (not b_lambda!14265))

(assert (not b_lambda!14255))

(assert (not bs!23477))

(assert (not b!50426))

(assert (not bs!23440))

(assert (not bs!23449))

(assert (not b_next!37737))

(assert (not b_next!37745))

(assert (not bs!23467))

(assert b_and!56595)

(assert (not bs!23439))

(assert (not bs!23445))

(assert b_and!56839)

(assert b_and!56601)

(assert (not bs!23455))

(assert (not bs!23441))

(assert b_and!56837)

(assert (not bs!23451))

(assert (not b_next!37645))

(assert (not b_next!37739))

(assert (not bs!23468))

(assert (not b_lambda!14225))

(assert (not bs!23457))

(assert b_and!56831)

(assert (not b_next!37727))

(assert b_and!56823)

(assert (not b_next!37725))

(assert (not b_lambda!14249))

(assert (not bs!23471))

(assert (not bs!23443))

(assert (not bs!23463))

(assert (not b_next!37723))

(assert (not b_next!37729))

(assert (not b!50434))

(assert (not b_lambda!14223))

(assert (not bs!23452))

(assert (not b_lambda!14263))

(assert (not b!50416))

(assert (not d!42838))

(assert (not bs!23465))

(assert (not b!50418))

(assert (not bs!23464))

(assert (not bs!23470))

(assert (not bs!23442))

(assert (not b!50424))

(assert (not bs!23447))

(assert (not b!50414))

(assert (not bs!23462))

(assert (not bs!23454))

(assert (not bs!23474))

(assert b_and!56829)

(assert (not b_next!37733))

(assert b_and!56835)

(assert (not bs!23461))

(assert (not bs!23476))

(assert (not b_lambda!14253))

(assert (not bs!23446))

(assert (not b_next!37741))

(assert (not bs!23438))

(assert (not b_next!37747))

(assert (not bs!23444))

(assert (not bs!23456))

(assert b_and!56597)

(assert b_and!56825)

(assert (not b!50406))

(assert (not b!50398))

(assert b_and!56827)

(assert (not bs!23460))

(assert (not b_lambda!14227))

(assert (not bs!23475))

(assert (not b_lambda!14257))

(assert (not b_lambda!14261))

(assert (not bs!23458))

(assert (not bs!23469))

(assert (not bs!23473))

(assert (not b_lambda!14251))

(assert (not b_next!37743))

(assert (not bs!23448))

(assert (not b_next!37735))

(assert (not d!42862))

(assert (not b_lambda!14267))

(check-sat)

(pop 1)

(push 1)

(assert b_and!56599)

(assert (not b_next!37749))

(assert b_and!56833)

(assert b_and!56593)

(assert b_and!56841)

(assert (not b_next!37731))

(assert (not b_next!37737))

(assert (not b_next!37745))

(assert b_and!56595)

(assert b_and!56839)

(assert b_and!56601)

(assert b_and!56837)

(assert (not b_next!37645))

(assert (not b_next!37739))

(assert b_and!56831)

(assert (not b_next!37727))

(assert b_and!56823)

(assert (not b_next!37725))

(assert (not b_next!37723))

(assert (not b_next!37729))

(assert b_and!56829)

(assert (not b_next!37733))

(assert b_and!56835)

(assert (not b_next!37741))

(assert (not b_next!37747))

(assert b_and!56597)

(assert b_and!56825)

(assert b_and!56827)

(assert (not b_next!37743))

(assert (not b_next!37735))

(check-sat)

(pop 1)

