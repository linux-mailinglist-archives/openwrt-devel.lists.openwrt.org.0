Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497F7E99FD
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 11:28:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K6VFqpd1K2eeg7BSZbM2TW+GkPQMOdeAGHNNWi8VCws=; b=matoxBGf9Mu6mhmfZwvLScXivb
	qAGErXxSbFy56xSKDBvMGWY8L/kcN4o44ynHEbYyZ4RbeUadKpc4hHXGX1ZyV8AFGcidK6HuOGwtO
	6ekZmWqwUtlJGbkwMoF/jqkh3I+Q6XILXkB/N37aOyPbM1vQsX/bHxZrbp1hmA1hu3RnXgyVMp7sa
	NB7GPeAtjGUTsoSLqXPoNRLe1Ge5V4A8cNGMu14BJBLDJ/BoLv0U4XvCU784SiX69yP73gMLhQ9uC
	VdzwLNLJKctJQE36V2PiuWLg+JBpxgDBchSRzy0XV7D/rzsfC0pRkIeinTaPnkNaTr14aSih8XmR1
	ymeVGy0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPlCz-0000PD-6g; Wed, 30 Oct 2019 10:28:09 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPlCn-0000Ob-8K
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 10:27:59 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id AF20442CF;
 Wed, 30 Oct 2019 11:27:53 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 5012acba;
 Wed, 30 Oct 2019 11:27:43 +0100 (CET)
Date: Wed, 30 Oct 2019 11:27:43 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20191030102743.GH22393@meh.true.cz>
References: <CAKR_QVKpKpbDdhQTF9=H63JaxoAwjOq0qJN7RK2G1UjjKapASw@mail.gmail.com>
 <4b8917b6-5e11-bb71-3b97-5eb450daa4e2@phrozen.org>
 <20191028115743.GD22393@meh.true.cz>
 <025101d58d89$ae223110$0a669330$@adrianschmutzler.de>
 <20191028135923.GE22393@meh.true.cz>
 <004e01d58e53$f2a70700$d7f51500$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <004e01d58e53$f2a70700$d7f51500$@adrianschmutzler.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_032757_599588_8FB86451 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] improved handling of contributions [Was: Re:
 patches from 2018]
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Tom Psyborg' <pozega.tomislav@gmail.com>, 'John Crispin' <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Adrian Schmutzler <mail@adrianschmutzler.de> [2019-10-29 13:25:27]:

Hi,

> the main difference is just that I prefer some manual interference, where
> you are looking for more automation:

1. DRY
2. Avoiding manual mistakes (and introduce automated ones)
3. Time spent on the tasks which could be automated could be used in other
   parts of the project

> (situation might be answered differently for bug reports).

That's exactly my point 3. above. If you wouldn't need to spend your precious
time on the repeating tasks which could be automated, then you could for
example help with bug reports, code, CI, forums, wiki or whatever part you
enjoy doing the most.

> (Despite, with PRs being autoclosed, I wouldn't be surprised if we get lots
> of duplicate PRs instead of old ones reopened, which would also increase
> maintenance efforts.)

We can take a look at this if/when this happens. I think, that actually
opening new PR (or resending patches) is desired as its more likely to bring
the necessary attention.

> >  2. change patch status from 'Needs Review / ACK' to 'Under Review' and
> >  assign it randomly (to predefined set of volunteer commiters) after 60
> >  days of inactivity
> > 
> >     - on GH label=`awaiting review`
> 
> In principle, yes. However, the volunteers will need to deal with anything
> that comes on the desk.

You can always ping someone on IRC/GH and ask for another pair of eyes.

> I'd personally make that dependant on whether there are volunteers or not.

I'm 100% sure, that there are, otherwise I wouldn't propose that.

> >  3. change patch status from 'Under Review' to 'Needs Review / ACK' after 90 days
> >     of inactivity
> > 
> >     - on GH label=`stale` and remove the randomly assigned reviewer
> 
> That's the same as after 30 days? (Chosen because there is no "stale" equivalent on PW?)

Yes, exactly.

> >  4. change patch status from 'Needs Review / ACK' to 'Rejected' after 120 days
> >     of inactivity, sending out some meaningful mail with a link to
> >     exaplanation of the currently failed merging process on the wiki
> > 
> >     - on GH close the PR
> 
> As introduced earlier, I would require to do this manually, so at least
> someone has to have a brief look at the thing. 

It's already handled in 3. and if even volunteer is not interested even to
ping someone on IRC or GitHub to take over that PR, then simply there is no
interest and you can't do much about it.

You can always merge/reject it by yourself during those ~90 days, right? :-)
The automation is just a last resort to make something happen in short time
span, avoiding us to talk in 2020 about contributions from 2018...

> Despite, if one automates, one of the crucial points will be how to measure "activity".

That's just implementation "detail". PW, Git{Lab,Hub} offer nice APIs, so I
believe, that there's always some way.

> And how to deal with bug reports? In contrast to feature requests, a bug
> report cannot just be closed because nobody is interested in addressing it?

And why not?

After Y days of inactivity, we could update the issue with something like following:

 "It seems like the issue is stale, please consider reading
  https://openwrt.org/bugs again and adjust your bug report accrodingly.

  Consider reproducing this bug on latest https://openwrt.org/releases/snapshot 
  in order to increase your chances... No activity in the next 14 days will make
  this bug report closed with 'No response' reason."

And then close it 2 weeks later. I mean, I'm sometimes doing the same
manually, closing the old issue straight away with "ask for reopen if you can
reproduce it on latest snapshot".

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
