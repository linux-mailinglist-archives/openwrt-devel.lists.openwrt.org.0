Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C24EC13D65C
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 10:04:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTxCq0p7XODBjd9KSkgMViLCQ6nrku9vUTQAF/g4eXo=; b=oVYmug1AyJ3FdP
	jPMSR2298ygL/KFbiEC0K557VhDC9k9fZPSzV9TATmaJiveL2jFd0Jv96W1KiKHic/zaLZ9WknPms
	/MD7a49yt773oG5QEwVs0yDRYtS9l7n5uoRuz8ULbjj+Bi4hk8FTmW++T6njj5PSAPrAuB0uAnPKX
	pSyVQdmPPWMc6wSDIjyvNwkh9eTvYu4tTl2rkuM07N10JzxTwBt792FMfSLnbMwlEO8CnxIOw+3Ze
	4xtBTtv1QHE8oHY3vrnT7VepJPJVxqq8wFpgtww5ftzy4W/0wb3u8W6lvRZKExu8fjrTerqnTD8sz
	grBo3Qner2Q7nGjjNJXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is14u-0004eM-8U; Thu, 16 Jan 2020 09:04:36 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is14j-0004de-To
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 09:04:30 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1is14g-0003A0-Am; Thu, 16 Jan 2020 10:04:24 +0100
Date: Thu, 16 Jan 2020 11:04:04 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Nick <vincent@systemli.org>
Message-ID: <20200116090404.GA1404@makrotopia.org>
References: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
 <627b0350-dd09-018f-bfed-60c895c75ae2@systemli.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <627b0350-dd09-018f-bfed-60c895c75ae2@systemli.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_010425_961875_C5CEAA8A 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 0/5] Add 802.11ad support
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Nick,

On Thu, Jan 16, 2020 at 09:08:01AM +0100, Nick wrote:
> Why are this patches not merged upstream?

Probably because nobody suitable hardware at hand could review and test
the patches. Probably it'd be better to first add the basic device
bring-up and then add 11ad support.

> You always have to rebase and solve merge conflicts if you work on 60
> GHz. :/

I'd also love to see this getting merged!

> 
> I would really appreciate it if this is merged. And if there is a reason
> why this stuff is not getting upstream, I volunteer to work on it.

Please resend the patches rebased on master and add your Tested-by:
tag and I will merge them.
Imho review doesn't need to be done by core developers, but without
any public review/testing nobody will dare to blindly merge.
Maybe we should establish more of a culture to encourage also people
without commit rights to reply to patches adding Acked-by and Tested-by
tags...


Cheers


Daniel



> 
> Best,
> Nick
> 
> On 08.11.19 19:14, Adrian Schmutzler wrote:
> > Cc: Robert Marko <robimarko@gmail.com>
> >
> > This is a pick of commits from device support PR #2417:
> > https://github.com/openwrt/openwrt/pull/2417
> >
> > There has been a request to merge those particular commits,
> > as they are required for any 60 GHz capable device, so
> > merging them will obviously make things easier for other
> > developers.
> >
> > The credit for writing them goes to robimarko, I'm just
> > bringing them to the list to speed things up a little.
> >
> > I'd be happy to receive comments, Acked-by or Reviewed-by
> > feedback, as I cannot properly review them on my own.
> >
> > Robert Marko (5):
> >   linux-firmware: add wil6210 firmware
> >   mac80211: add wil6210 driver
> >   mac80211: add 802.11ad support
> >   base-files: wifi: add 802.11ad support
> >   hostapd: wpa_supplicant: enable proper GCMP cipher support
> >
> >  package/base-files/files/sbin/wifi             |  1 +
> >  package/firmware/linux-firmware/qca.mk         |  8 ++++++++
> >  package/kernel/mac80211/ath.mk                 | 18 +++++++++++++++---
> >  .../kernel/mac80211/files/lib/wifi/mac80211.sh | 18 +++++++++++-------
> >  .../network/services/hostapd/files/hostapd.sh  |  7 +++++++
> >  5 files changed, 42 insertions(+), 10 deletions(-)
> >
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
