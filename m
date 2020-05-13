Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9A41D1B1F
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 18:35:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ont2EPlbpK6dcWkg8eQPUcE7TQjBBF4fOg7ULP0wdVc=; b=LMEZBTo1J8wTTq
	PZ7S7vYfw4MydtDKzGDufKu97LrYz27s8nSzf+3RWzpsVo1l7K+IdT+6hMhpEXQpOLZr+Q+e+ZScY
	VyGPb4GL4z4yx03bTsRnX2ZsfoRnYtv9kHTpV57HUowznSAwq49w+y93T0LyKmBUPpzxcFJO+UWsj
	qcCi4WzqH2ft3MhD/Cso/ExOzBLPtcUlDW+mywGWo0PlrvQ9xgpEvzvWA7gjN3oEelURct5D8+Uly
	DBXdUAiCsIG/YMe1Cg/7K/8bgQdvlprHTU5lH+TRzT1UXpkdBAF4ivjHeQjfuWln/p0A8syGb2W6X
	KlaB9jv/3o2aEH9Eq+5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYuLO-0007mt-6k; Wed, 13 May 2020 16:34:54 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYuLB-0007ls-TS
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 16:34:45 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jYuL6-0007c6-IN; Wed, 13 May 2020 18:34:38 +0200
Date: Wed, 13 May 2020 17:34:31 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Jouni Malinen <j@w1.fi>
Message-ID: <20200513163431.GE20764@makrotopia.org>
References: <20200512214612.GF1636@makrotopia.org>
 <20200513083817.GA5236@w1.fi>
 <20200513104603.GB20764@makrotopia.org>
 <20200513130103.GA2679@w1.fi>
 <20200513141932.GC20764@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513141932.GC20764@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_093443_980458_9A9A4078 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] hostap commit 6c9543fcb breaks MESH-SAE with
 wolfssl
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
Cc: hostap@lists.infradead.org, openwrt-devel@lists.openwrt.org,
 Antonio Quartulli <a@unstable.cc>, ringelrobbe <ringelrobbe@riseup.net>,
 Sean Parkinson <sean@wolfssl.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, May 13, 2020 at 03:19:32PM +0100, Daniel Golle wrote:
> On Wed, May 13, 2020 at 04:01:03PM +0300, Jouni Malinen wrote:
> > On Wed, May 13, 2020 at 11:46:03AM +0100, Daniel Golle wrote:
> > > The build environment is currently on an otherwise unused system wired
> > > up to the two QCA devices for testing. We could arrange remote access
> > > remote access via SSH or you can tell me to build/test whatever you'd
> > > like me to and I'll report back.
> > > If you'd like to reproduce this locally or even include in your CI,
> > > I guess that building Linux and wpa_supplicant for MIPS Malta (BE) and
> > > running that in qemu-system-mips will show similar results as my
> > > testing on real hardware.
> > 
> > I guess it would be nice to get a big endian setup added for automated
> > testing eventually, but setting that up with qemu sounds like something
> > that is going to take significant amount of effort..

I've just built OpenWrt for MIPS malta (BE) with mac80211-hwsim and
hereby confirm the problem shows up there in exactly the same way.
Also on MIPS malta with mac80211-hwsim, mesh with SAE works with
WolfSSL up to and including hostapd git revision 2b84ca4dd work fine,
starting from revision 6c9543fcb7 don't.

As OpenWrt might not be what you want for QA, I've been following
https://markuta.com/how-to-build-a-mips-qemu-image-on-debian/
and ended up with a functional Debian install inside QEMU about 20
minutes later. (I had to replace kernel image vmlinux-4.9.0-6-4kc-malta
mentioned in that guide with vmlinux-4.19.0-9-4kc-malta which is the
current version and exists on Debian's download server)
This would allow to run the whole test-suite as-is on MIPS32 BE, maybe
even with buildbot.w1.fi...

If there is anything else I can do to help debugging this, let me know.

Thank you!

Best regards

Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
