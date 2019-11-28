Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 062BE10C856
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 13:05:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R6qeHgTgu5lxxYjt4Q4rrxsioR0h5Qub//JxTEHaI6E=; b=gOsfOEr5MU6x8w1zuv4Hj7XRis
	Li1HmfPeih2Tr9oNLn4OomUae95CWQ32ecuBKaUweLxgujQ3sKlkGZHkjii3aogC+015F+uLBPO5H
	Bdq8K7ZomwD7BxJ0gLDtLmKAWdgScwHNv4un60CmBKPn5EV7CIfH2kvY5ab02Y20atO7rp/M/dbbt
	hSpsAJ3rd4+w9AnFQZxGGuU5JwcAj4D3/xSPJQYPWA7IaqMFnXVORikSvyIXc3kcTRLss0Aj48vL3
	FQ1agWgoCGi5xto3XsKZ8H5gg614TMOKAODVxyJ0N6TqdICih1r2CwnhRid/OkHOkkQQo7fEmcO1B
	MRmRIdhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaIXy-0004PY-QH; Thu, 28 Nov 2019 12:05:22 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaIXo-0004Oq-Vh
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 12:05:14 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id DD81E441D;
 Thu, 28 Nov 2019 13:05:09 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 62f0acf2;
 Thu, 28 Nov 2019 13:04:59 +0100 (CET)
Date: Thu, 28 Nov 2019 13:04:59 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20191128120459.GC61235@meh.true.cz>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_040513_326156_234072C1 
X-CRM114-Status: GOOD (  14.79  )
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
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hauke Mehrtens <hauke@hauke-m.de> [2019-11-28 00:42:53]:

Hi,

> planned to do the next release in January 2020 which is soon. This 20.x
> release is planned to use kernel 4.19 only.

that's my understanding as well.

> Based on these numbers it could be already hard to get everything to
> 4.19 till beginning of January, at least we should start switching the
> default to kernel 4.19 for every target very soon to get the needed testing.

Is the project somehow obliged to get everything to the next kernel? I'm
afraid, that you'll write the same in a few months, just replacing 4.19 with
5.4. The targets people care about would be converted, the rest would be in
the similar state like 4.19 is today.

> I would suggest to leave kernel 4.19 out and directly go to kernel 5.4.

Like make a release without 4.19? This doesn't seem right to me. Why should
anyone care about 5.4 if it might be skipped as well?

> Then we would target April for the release and hopefully get it in
> Summer. ;-) 

To me it seems, that we should probably discuss releases, again :-) From
Hamburg:

 * future releases now every 6 months, at least a RC

So after 19.07 that's 20.01, right?

Ok, it was decission made by a certain group of people attending that meeting,
but I didn't registered any negative feedback about this topic.

I think, that with 6 month release cycle we shouldn't delay release just
because it's missing feature Y (important to certain circles) or having
unfixed bug Z (important to other circles).  The only show stopper should be a
security issue.

Perhaps 6 months is too ambitious release cadence, considering the resources
on hand and higher release quality bar? On the other hand 12 months release
cycle makes backports painful. So maybe something in between, 9 months would
work better?

> Should I start a vote on this topic?

I think, that it would make more sense to make a releasing process clear, make
it predictable. So perhaps rather start voting about that? So we could came to
some conclusion, release rules? That way we don't need to argue about this
anymore, it would be set in the stone, unless changed by another voting in the
future if we find out, that it doesn't work well.

So this is my view for the start:

 * new release is branched automatically, 1st day of month, Y months after the
   previous release
 * release.0-rc1 images are being built immediately, automatically
 * release.0-rc2 images + 14 days since branch, automatically
 * release.0-rc3 images + 30 days since branch, automatically
 * final release.0 images + 45 days since branch, automatically
 * point release every 45 days, automatically
 * point release immediately in case of serious issues like bricked
   device, security fixes etc.

 + claim official support only for one previous release, any other option
   would need some kind of funding in order to have dedicated resources for that
   level of support, otherwise we steal this resources from other parts of the
   project (one of still unresolved topics from Hamburg)

Yes, I prefer predictability even if that would mean, that release.0 has some
rough edges for certain circles. I mean, I'm not able to use kernel 5.4 on my
laptop as trackpad doesnt work, it's noticeably slower then 5.3.13, but I'm
fine with that, because I expect it with every fresh release.0. It's
impossible to please everyone :-)

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
