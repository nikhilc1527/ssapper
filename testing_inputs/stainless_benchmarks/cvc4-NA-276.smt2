; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2134 () Bool)

(assert start!2134)

(declare-fun b_free!1387 () Bool)

(declare-fun b_next!3381 () Bool)

(assert (=> start!2134 (= b_free!1387 (not b_next!3381))))

(declare-fun tp!2221 () Bool)

(declare-fun b_and!4885 () Bool)

(assert (=> start!2134 (= tp!2221 b_and!4885)))

(declare-fun b_free!1389 () Bool)

(declare-fun b_next!3383 () Bool)

(assert (=> start!2134 (= b_free!1389 (not b_next!3383))))

(declare-fun tp!2222 () Bool)

(declare-fun b_and!4887 () Bool)

(assert (=> start!2134 (= tp!2222 b_and!4887)))

(declare-fun b!10579 () Bool)

(declare-fun res!3728 () Bool)

(declare-fun e!6158 () Bool)

(assert (=> b!10579 (=> (not res!3728) (not e!6158))))

(declare-datatypes () ((A!928 (A!929 (val!15 Int)))))

(declare-fun z!121 () A!928)

(declare-datatypes () ((List!250 (Nil!248) (Cons!247 (head!465 A!928) (tail!477 List!250)))))

(declare-fun xs!433 () List!250)

(declare-fun f!759 () Int)

(declare-fun inductVal!35 () Bool)

(declare-fun foldRight_accumulator_equivalence!6 (List!250 A!928 Int) Bool)

(assert (=> b!10579 (= res!3728 (= inductVal!35 (foldRight_accumulator_equivalence!6 (tail!477 xs!433) z!121 f!759)))))

(declare-fun b!10580 () Bool)

(declare-fun e!6160 () Bool)

(declare-fun tp_is_empty!29 () Bool)

(declare-fun tp!2220 () Bool)

(assert (=> b!10580 (= e!6160 (and tp_is_empty!29 tp!2220))))

(declare-fun b!10581 () Bool)

(declare-fun thiss!1316 () List!250)

(declare-fun isEmpty!180 (List!250) Bool)

(assert (=> b!10581 (= e!6158 (isEmpty!180 thiss!1316))))

(declare-fun b!10582 () Bool)

(declare-fun e!6159 () Bool)

(declare-fun tp!2219 () Bool)

(assert (=> b!10582 (= e!6159 (and tp_is_empty!29 tp!2219))))

(declare-fun b!10583 () Bool)

(declare-fun res!3726 () Bool)

(assert (=> b!10583 (=> (not res!3726) (not e!6158))))

(declare-fun append!101 (List!250 List!250) List!250)

(assert (=> b!10583 (= res!3726 (= thiss!1316 (append!101 xs!433 (Cons!247 z!121 Nil!248))))))

(declare-fun b!10584 () Bool)

(declare-fun res!3725 () Bool)

(assert (=> b!10584 (=> (not res!3725) (not e!6158))))

(declare-fun f!768 () Int)

(assert (=> b!10584 (= res!3725 (= f!768 f!759))))

(declare-fun res!3727 () Bool)

(assert (=> start!2134 (=> (not res!3727) (not e!6158))))

(assert (=> start!2134 (= res!3727 (not (is-Nil!248 xs!433)))))

(assert (=> start!2134 e!6158))

(assert (=> start!2134 tp_is_empty!29))

(assert (=> start!2134 e!6160))

(assert (=> start!2134 e!6159))

(assert (=> start!2134 tp!2221))

(assert (=> start!2134 true))

(assert (=> start!2134 tp!2222))

(assert (= (and start!2134 res!3727) b!10579))

(assert (= (and b!10579 res!3728) b!10583))

(assert (= (and b!10583 res!3726) b!10584))

(assert (= (and b!10584 res!3725) b!10581))

(assert (= (and start!2134 (is-Cons!247 xs!433)) b!10580))

(assert (= (and start!2134 (is-Cons!247 thiss!1316)) b!10582))

(declare-fun m!13643 () Bool)

(assert (=> b!10579 m!13643))

(declare-fun m!13645 () Bool)

(assert (=> b!10581 m!13645))

(declare-fun m!13647 () Bool)

(assert (=> b!10583 m!13647))

(push 1)

(assert (not b!10582))

(assert b_and!4887)

(assert (not b!10579))

(assert (not b_next!3381))

(assert (not b!10581))

(assert b_and!4885)

(assert (not b!10580))

(assert (not b!10583))

(assert (not b_next!3383))

(assert tp_is_empty!29)

(check-sat)

(pop 1)

(push 1)

(assert b_and!4885)

(assert b_and!4887)

(assert (not b_next!3383))

(assert (not b_next!3381))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!10590 () Bool)

(declare-fun e!6163 () Bool)

(declare-fun foldRight!67 (List!250 A!928 Int) A!928)

(declare-fun foldRight1!83 (List!250 Int) A!928)

(assert (=> b!10590 (= e!6163 (= (foldRight!67 (tail!477 xs!433) z!121 f!759) (foldRight1!83 (append!101 (tail!477 xs!433) (Cons!247 z!121 Nil!248)) f!759)))))

(declare-fun lt!1735 () Bool)

(assert (=> b!10590 (= lt!1735 (foldRight_accumulator_equivalence!6 (tail!477 (tail!477 xs!433)) z!121 f!759))))

(declare-fun d!8477 () Bool)

(assert (=> d!8477 e!6163))

(declare-fun c!3282 () Bool)

(assert (=> d!8477 (= c!3282 (is-Nil!248 (tail!477 xs!433)))))

(assert (=> d!8477 (= (foldRight_accumulator_equivalence!6 (tail!477 xs!433) z!121 f!759) true)))

(declare-fun b!10589 () Bool)

(assert (=> b!10589 (= e!6163 (= (foldRight!67 (tail!477 xs!433) z!121 f!759) (foldRight1!83 (append!101 (tail!477 xs!433) (Cons!247 z!121 Nil!248)) f!759)))))

(assert (= (and d!8477 c!3282) b!10589))

(assert (= (and d!8477 (not c!3282)) b!10590))

(declare-fun m!13649 () Bool)

(assert (=> b!10590 m!13649))

(declare-fun m!13651 () Bool)

(assert (=> b!10590 m!13651))

(assert (=> b!10590 m!13651))

(declare-fun m!13653 () Bool)

(assert (=> b!10590 m!13653))

(declare-fun m!13655 () Bool)

(assert (=> b!10590 m!13655))

(assert (=> b!10589 m!13649))

(assert (=> b!10589 m!13651))

(assert (=> b!10589 m!13651))

(assert (=> b!10589 m!13653))

(assert (=> b!10579 d!8477))

(declare-fun d!8479 () Bool)

(assert (=> d!8479 (= (isEmpty!180 thiss!1316) (is-Nil!248 thiss!1316))))

(assert (=> b!10581 d!8479))

(declare-fun d!8481 () Bool)

(declare-fun c!3285 () Bool)

(assert (=> d!8481 (= c!3285 (is-Nil!248 xs!433))))

(declare-fun e!6166 () List!250)

(assert (=> d!8481 (= (append!101 xs!433 (Cons!247 z!121 Nil!248)) e!6166)))

(declare-fun b!10595 () Bool)

(assert (=> b!10595 (= e!6166 (Cons!247 z!121 Nil!248))))

(declare-fun b!10596 () Bool)

(assert (=> b!10596 (= e!6166 (Cons!247 (head!465 xs!433) (append!101 (tail!477 xs!433) (Cons!247 z!121 Nil!248))))))

(assert (= (and d!8481 c!3285) b!10595))

(assert (= (and d!8481 (not c!3285)) b!10596))

(assert (=> b!10596 m!13651))

(assert (=> b!10583 d!8481))

(declare-fun b!10601 () Bool)

(declare-fun e!6169 () Bool)

(declare-fun tp!2225 () Bool)

(assert (=> b!10601 (= e!6169 (and tp_is_empty!29 tp!2225))))

(assert (=> b!10580 (= tp!2220 e!6169)))

(assert (= (and b!10580 (is-Cons!247 (tail!477 xs!433))) b!10601))

(declare-fun b!10602 () Bool)

(declare-fun e!6170 () Bool)

(declare-fun tp!2226 () Bool)

(assert (=> b!10602 (= e!6170 (and tp_is_empty!29 tp!2226))))

(assert (=> b!10582 (= tp!2219 e!6170)))

(assert (= (and b!10582 (is-Cons!247 (tail!477 thiss!1316))) b!10602))

(push 1)

(assert b_and!4887)

(assert (not b!10596))

(assert (not b!10602))

(assert (not b!10590))

(assert (not b_next!3381))

(assert (not b!10589))

(assert b_and!4885)

(assert (not b!10601))

(assert (not b_next!3383))

(assert tp_is_empty!29)

(check-sat)

(pop 1)

(push 1)

(assert b_and!4885)

(assert b_and!4887)

(assert (not b_next!3383))

(assert (not b_next!3381))

(check-sat)

(pop 1)

