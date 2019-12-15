Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B606311F74E
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Dec 2019 12:01:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIFb/iglYVuSUaBLCrpbRVbDvysKaBqraTqAHbue4kI=; b=q+hH8yoKPRuVaF
	oPbwtWrq7uzT/U8lDdA9bjrU0e7c6s+wFlfUF/ui7N+34DHsC0eImgEiWrcckHj4q5JhAlshIqxC6
	Sahvus2hykP0xYAUBz5t/4S0GGcBGGnFauUyKhjXj9NtaFXxLFb8ulSreAv16yPY+BVPPgUaBV9p8
	DDFR6z8xQhmpF6oeluK4qb07Pcfb0ofjTO1Btv04KDfbVsldcrWHRCckb1WpVRcXdsFjfobTHzPaR
	ZWCdXTp2j9J3MOacGIXDgSOuRcA3Xl15rBlGTz3rFlVa1fVFDXDoKjHqqtjo6N8yBVuA58kLacaTx
	NKPh9vJlhG3CLp55Oaeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igRe2-0007Sw-7l; Sun, 15 Dec 2019 11:01:02 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igRdu-0007Re-Aj
 for openwrt-devel@lists.openwrt.org; Sun, 15 Dec 2019 11:00:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id z3so3680730wru.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 15 Dec 2019 03:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9L0kLesc7926H26NjssDoFyb4ofTaoMrLxoSHmJSO/4=;
 b=J03jCtkFYiWJJ6MTk/g2hCB1/KYvKuq4l0i9eq7yEy3ogGhN5BV4ZcfOMJFIZJXYnw
 tz4Ojo7v3OCL54eoW8XWxw0PICqsULGW6l3O+L3xf+mIWTxCT/DDEFI7kg6bIumijEtq
 jzn5l3RcMEF76UGqAg1whE363kH0DrnHJYizhVJwAMIPhzElYEvcZ/7DSiReJYH97Yjw
 ypg/iFdj8pBV9s8457pDMS0O//Uu47QK3RE4R1VMwPwgjcL5VG07lSXSqaJVqfNDJrpp
 D3CL/+aFr3p+5T+/09Jlal4rOE3sxKH3n0eCGNvn7ngau2aWToIoBJNerPuWd/jdKqVe
 Xe4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9L0kLesc7926H26NjssDoFyb4ofTaoMrLxoSHmJSO/4=;
 b=Xm5AMQmFmLBgn97DQjLlPSbUx7aAqzsOtMiVYodq4IbpRdjBRcZFo916F+Ys6Ei04g
 uHj9Low4T5JEIgvx1MLkb0PecE0k4/Gvfv25AVfPhTLMokG3wryY3FF+q+70l6b6K7S0
 6b7l9e8tzO8BLQXWjUGiGoCL58xigTOqSPkgTYfjdDXOidJVrdbIDEYpXpLr2nG9wepG
 ChlFVWmGUHfC2nv3Tl0rHWEaa6P+yOe1N+2UDpSBaqQQFE95f7f2Pjvtgv3UL5qc+wV3
 ZJSp4th03i0XNZ+GqSlaYiydmW8GDn2CklYNuwusN1BjfCES7hENYXVgNsvQ+uarpdL4
 0tlw==
X-Gm-Message-State: APjAAAX6kyIoJx5bj61d0C7oOa2kVSVGMlEBoss8b1jP2F0bZ0cHsz4U
 bJWZJjsrgaOB6rv2BXzV/Sk=
X-Google-Smtp-Source: APXvYqw1Q8JVZOmsnziCWzEp54+y2BeNq86orPYXb8Zrc0KSL58hvQdOXqi2rSDQ/UZXbcjxzFzvmQ==
X-Received: by 2002:adf:ef49:: with SMTP id c9mr23811269wrp.292.1576407650194; 
 Sun, 15 Dec 2019 03:00:50 -0800 (PST)
Received: from debian64.daheim (pD9E29F10.dip0.t-ipconnect.de.
 [217.226.159.16])
 by smtp.gmail.com with ESMTPSA id o16sm2596217wmc.18.2019.12.15.03.00.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 03:00:49 -0800 (PST)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.93)
 (envelope-from <chunkeey@gmail.com>)
 id 1igRdo-00021g-9a; Sun, 15 Dec 2019 12:00:48 +0100
From: Christian Lamparter <chunkeey@gmail.com>
To: Paul Fertser <fercerpav@gmail.com>
Date: Sun, 15 Dec 2019 12:00:48 +0100
Message-ID: <5675304.dXXkMWVoIb@debian64>
In-Reply-To: <20191211191652.GU11070@home.paul.comp>
References: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
 <d938b7ab-80b0-c78a-5a84-435243dff86d@candelatech.com>
 <20191211191652.GU11070@home.paul.comp>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_030054_400884_6B2CA975 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: ath10k-ct: provide a build
 variant for small RAM devices
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Ben Greear <greearb@candelatech.com>,
 openwrt-devel@lists.openwrt.org, Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wednesday, 11 December 2019 20:16:52 CET Paul Fertser wrote:
> Hey Ben,
> 
> On Wed, Dec 11, 2019 at 10:06:26AM -0800, Ben Greear wrote:
> > On 12/11/19 6:44 AM, Paul Fertser wrote:
> > > According to many bugreports [0][1][2] the default ath10k-ct kernel
> ...
> > And also if you want to just have the makefile pass a -DBUILD_ATH10K_SMALL or something
> > like that and #ifdef code in the ath10k-ct driver, then I'd apply that patch to ath10k-ct
> > so that you don't need the patches.
> 
> I am offering my patch to the OpenWrt maintainers as kind of a
> stop-gap measure to get ath10k-ct working for the release (or in any
> way they think is appropriate). Another approach they can choose is to
> select the upstream ath10k for those devices. Otherwise some
> previously supported boards will require manual intervention to get
> WiFi working after an upgrade.
> 
> Regarding your fwcfg idea, I am not sure it will work as it seems the
> PCI initialisation is happening before fwcfg is parsed and applied.
> 
> Adding a Kconfig option is another possibility.
> 
> But what do you think about an additional module parameter, wouldn't
> it be the cleanest solution in the long run?
> 
> BTW, according to the git logs the patches were initially added by
> Christian Lamparter, so I hope he can clarify the situation a
> bit. Probably there were some performance tests executed back than to
> measure the impact.
> 
Heh no. These patches come up in discussions time and time again. And I
would rather see them being removed alltogether. What I can tell you is
that the Idea of limiting ath10k memory thirst came from Qualcomm itself.

If you look on the ML you can find the old posts like:
<https://www.mail-archive.com/lede-dev@lists.infradead.org/msg04738.html>

And for reference: Here's a independent bootlog (from pepe2k/Piotr Dymacz
no less) with the "Low Memory System" messages for the RT-AC58U:
<https://gist.github.com/pepe2k/eba2766f05ccf4e089347c531c49848b>

From what I remember Sven Eckelmann also measured the impact from the
patches on the performance and posted his results to the OpenWrt ML
(google will find them).

I think for this to have any chance of moving forward you'll need to
pressure your ODMs and if that doesn't work: Go with a different WIFI
chip vendor that supports low memory devices, or add more RAM.
From what I can tell, Qualcomm nowadays gets what they want "for free"
and for the past four-five years, they certainly didn't feel pressured
to add "low memory" support to ath10k.

Cheers,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
