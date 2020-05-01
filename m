Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05391C2110
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 May 2020 01:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AisDl9xryOTHzxO+DSB22gb6AhuYlYYBeSJ2ddRZj1A=; b=s3MiUY+UGqbd1x
	mZuxEM4MtHjx//hhrb2oHNvZviCYi9b5exieEfKbSgSiTQVvnBQJQkeWVzvK8E+zeMzXWVBrR/2B/
	asfMK91S+1o0nOivAu/Zlcwe1r1qbVv+aZcbEAHRoz1UoebOxGPXB/tF9pu+WRFnNOflnLQAF6HSN
	bKNFkJ7q2zNTGX7iSyOowEi+3CpMCcIk7tKOIvg1G2shGVHL1m3ZvtKFlRHpdRBzaJRg4e1uZv3Ob
	ja6apiFIijz/iiKFl0tDcDhsOcP6qTQL6m2CddMXHBx9/acv1XnXse/EYCYyOF2ccE5V1/tNprXiZ
	4WF6uhJf4RMm/MIDhy+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUef0-0007aH-9K; Fri, 01 May 2020 23:01:34 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUeet-0007Wp-5M
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 23:01:29 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1jUeea-0005wd-1F; Sat, 02 May 2020 01:01:09 +0200
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>)
 id 1jUeeZ-00057X-L1; Sat, 02 May 2020 01:01:07 +0200
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 02 May 2020 01:01:05 +0200
Message-ID: <1904769.W1ASfLT6dp@strike>
In-Reply-To: <CA+U=Dsru6ZmGXNGiK+VwReQ1OBMbS+UZ9Qx_mDK0=HKox82EjQ@mail.gmail.com>
References: <27522.1588348994@localhost>
 <CA+U=Dsru6ZmGXNGiK+VwReQ1OBMbS+UZ9Qx_mDK0=HKox82EjQ@mail.gmail.com>
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  Am Freitag, 1. Mai 2020,
 20:20:05 CEST schrieb Alexandru Ardelean:
 > On Fri, May 1, 2020 at 7:04 PM Michael Richardson <mcr@sandelman.ca> wrote:
 > > hi, > > python packages include ../python3-package. [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_160127_349906_57AD6473 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] building python3 packages outside of
 lang/python3
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
Cc: Alexandru Ardelean <ardeleanalex@gmail.com>,
 Michael Richardson <mcr@sandelman.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Am Freitag, 1. Mai 2020, 20:20:05 CEST schrieb Alexandru Ardelean:
> On Fri, May 1, 2020 at 7:04 PM Michael Richardson <mcr@sandelman.ca> wrote:
> > hi,
> > python packages include ../python3-package.mk, and pypi.mk
> > 
> > But I can't do that from my own feed directory.
> > I don't want to copy the file!!
> > 
> > Is there a relative path that would get me to feeds/packages/lang/python3?
> 
> long-story-short: no
> 
> you'll have to settle for some sort of absolute path if you need those
> files from the packages feed in some other feed
> if you take a look at
> https://github.com/openwrt/packages/blob/master/lang/python/README.md
> there's a suggestion:
> PYTHON3_PACKAGE_MK:=$(wildcard
> $(TOPDIR)/feeds/*/lang/python/python3-package.mk) [ similar can be done for
> pypi.mk ]
> 

We do quite the same in our feed to solve such issue. In addition we have a 
check that only one match will be returned by $(wildcard).

https://github.com/freifunk-berlin/firmware-packages/blob/master/freifunk-berlin-generic.mk

LUCIMKFILE:=$(wildcard $(TOPDIR)/feeds/*/luci.mk)

# verify that there is only one single file returned
ifneq (1,$(words $(LUCIMKFILE)))
ifeq (0,$(words $(LUCIMKFILE)))
$(error did not find luci.mk in any feed)
else
$(error found multiple luci.mk files in the feeds)
endif
endif


> reason for the wildcard, is in case the "packages" feed is not named
> literally 'packages', it picks up the first feed where that mk file is
> found;
> if there's only one, all is fine; if there's more than one, then
> [anyone doing this] it's asking for trouble anyway;
> 
> now, i've thought [and maybe Jeffery as well] about maybe doing a
> helper that makes a short-hand to the python3-package.mk path somehow
> [into the 'packages' feed], but there isn't a good reason to do it;
> you still need to know exactly in which feed the 'python3-package.mk'
> is found; and that helper needs to be done in OpenWrt core; and core
> always needs good reasons to be modified;
> so, some people do 'include
> $(TOPDIR)/feeds/packages/lang/python/python3-package.mk' directly;
> [1]
> 
> maybe if [one day] these 2 files move into OpenWrt core, things will
> be a bit simpler; but I don't think it's very soon, and I don't feel
> it's a big problem [anyway], but that's my opinion;
> 
> > I tried the whole thing, but that didn't work.
> > 
> > I settled on:
> > include $(INCLUDE_DIR)/../feeds/packages/lang/python/python3-package.mk
> > 
> > which I found ugly, but it worked.
> 
> yes & no;
> you can choose to do a direct include like [1]
> 

Sven



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
