Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A9B13D780
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 11:05:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wICN6aRw5MJZK7vdTrR1QGEJ3Bi8pkCm77YX/xGJDtk=; b=TaomAQ2aChnWyVP6+ssTGhKmm2
	JCfEYJsTCzF2QIgxl1NgkVNclVHvN6Mywlmc8keJ3bR8d6zS8yAbOXjsyq4stAbjMhPw3Utm6K9hU
	3BhH9qGFGaunFD7tuTKajSU5fjqYHNipZOYDdoPYxRGhArLZboiM4cNpKLBW2EH+5MWUCuX0Vaj2U
	HPUdCG9SdDO8MpAP78/GLIC0bbGwkk3WBf+NRtfqkF0hM6e8GOagU15+2JB1U9QhXTWRTlP7BkBiB
	CIlzz1QSs/so8lPVtMqGg9I83cvu8AGMy1jK0ApkzxfC/hbPi/DPuRgG7POlfQT4SzP1LEZ2nzLKy
	ovIU+Phw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is22B-0000oJ-6K; Thu, 16 Jan 2020 10:05:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is21o-0000je-GI
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 10:05:33 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 30997537D;
 Thu, 16 Jan 2020 11:05:25 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 2a0d0069;
 Thu, 16 Jan 2020 11:05:14 +0100 (CET)
Date: Thu, 16 Jan 2020 11:05:14 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20200116100514.GB84286@meh.true.cz>
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_020528_838609_E7A85E68 
X-CRM114-Status: GOOD (  19.65  )
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
Subject: Re: [OpenWrt-Devel] OpenWrt 20.X release plans
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hauke Mehrtens <hauke@hauke-m.de> [2020-01-16 00:00:33]:

Hi,

> My preferred timeline would the the following:
> * Beginning of February: freeze master for big changes (adding new
> boards is no problem)
> * Beginning of March: branch off 20.3 release branch
> * 1 week after the branch was created: tag and build 20.3-rc1
> * 3 weeks later tag and build 20.3-rc2
> * 3 weeks later tag and build 20.3 final

Amazing!

Is this fixed or relaxed timeline? :-) I mean, are those steps going to happen
as they're defined or they can slip by some days/weeks/months?

Looking at the recent past, and I think, that we should learn from that
experience, it would be nice to define who/what can delay this proposed
timeline, release blockers so to speak. 

Thinking about it, just this two points came to my mind:

 - unfixed security issues we're aware of
 - unfixed bug which could lead to:

   * bricked device
   * preventing access to the device over SSH or LuCI

   Those issues needs to be properly reported at respective bug tracking
   system and confirmed/reproducible by at least one more person.

From my point of view anything else shouldn't delay .0 release, as the other
issues could be fixed in subsequent .1 even a week later if needed to be.

Any delay in this timeline should be properly communicated to the development
mailing list at the time we discover such release blocker.

BTW it's still master + 2 stable releases which will receive the support? Once
the 20.y is out, the 18.06 is EOL?

> I am fine with kernel 4.19 or 5.4, but we should decide and not stay in
> a limbo for log, so we can work io the right direction.

There is going to be a vote about this topic soon, probably tomorrow, see
bellow.

> It would be nice to have jails activated by default, but there are still
> problems when using an initramfs, I will probably not have the time to
> investigate into this problem in the next 4 weeks.

I would like to have jails as well, but it should be probably first enabled in
master for some time. Is this[1] the issue you're having?

> Should wpad-openssl or better wpad-wolfssl (after it works with WPA3) be
> added as default wpad version now? If we do this we can also activate
> https support for luci by default https support should not cost much
> space when we already have an ssl library.

I agree.

Is there anything we can do in LuCI UI to make the errors caused by
self-signed certs in the browsers less stressful? Perhaps adding one more step
(until there's password set or just for the first time) while redirecting from
80 to 443, some kind of special page, where we could entertain the user about
the next possible browser certificate error (show the certificate
details/fingerprint for additional verification) ?

Simply something which could improve the UX. I know, it's very hard.

> Are there any other bigger changes planned you would like to get into
> the next release?

Sysupgrade image signature validation enabled by default.

> Should we do a vote on the kernel version and release plan in the end?

We've somehow agreed about the kernel voting on IRC. If we can formalize the
release plan/rules/timeline soon, lets add it to the next combined vote as
well (it doesn't matter if it's 4in1 or 5in1 voting, we're saving time), so
far it looks like:

 - 4.19 Vs 5.4 for next release (Jow is preparing the text)
 - new project logo/colors (ynezz)
 - openwrt-announce mailing list (ynezz if needed be)
 - GitHub Vs self-hosted GitLab Vs whatever else (ynezz if needed be)
 - release timeline/rules definition (Hauke/Baptiste?)

Does anyone else see any other topic which should be included in this combined
vote? If so, let us know ASAP and ideally prepare the text/voting options as
well.

1. https://patchwork.ozlabs.org/patch/1179527/

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
