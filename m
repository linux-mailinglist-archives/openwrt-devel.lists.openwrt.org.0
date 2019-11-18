Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1605E100788
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 15:37:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1jzDiC4Xcp0scnXn/V+ytPWseNYXXlSquiC4PPF1u8=; b=BaADxVe61xAmBP
	2vsmECxK+Cxo2XoboRd8kJCqmXiu/RiUI/OaS3CaUs1rWOAjJWmjosXPDiQjI7XLFMcc01FvWJicF
	2ZvciGI4Ih2j9Wm+IDlcjdQY47Ogy9ZdPCA31g1u3OnAceXCTLW+a3v0pJ1X/F++5mY5958FTdQ8L
	RcIUruVR7y4EN+nmP2EKSCzdEUo3xxxzR3CuY8C0qPLOeSIODZkBuwx72hGyD+xrU3vRVz+Xc6Fmm
	MDXPa7Xod90bhSelfgckIPBG1y2bdzJ4RQhKYHM9q79PUBS/n5dkLeg8deMWD2zd2q0fjZmWUUCI7
	pG5o1hRZbPZm8crQfd9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWiA2-0007Or-OM; Mon, 18 Nov 2019 14:37:50 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWi9h-0007EU-Dg
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 14:37:30 +0000
Received: by mail-io1-xd41.google.com with SMTP id s3so19004489ioe.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 18 Nov 2019 06:37:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hhp2E+tHH2qC5W6/XcUc9Zm4TByWw9EaM/Zc0YY9iBA=;
 b=SMm04sROu/RkIB+l2lLQDpKRqMyadrAHdLeQ3zKaON9Du72pNwLdLp+mScUviVlLep
 kGsaf14a6aZPfSkXx0UD5nRSlCXGEFKZ66+2/HScu1onqTLTaf8MkAgjvSMctIwYbmKK
 ztEsP2GyUBjVEjNIRoNrbjbtVprZqRUzjjE6jT9Rm8fhaiDC+JSiGKhlVEdm33BXjjZM
 yK7UgpxojCsvIRzG4Q6CLbZJtRHQWKJvfX8KhHXGKd2CBapnqKYjfDEtbKJy2TQQc316
 m2ZEm3S6gWUz7nn1I7FOMIRXSzmJd5lgQmA8VKJi8fxBk532T9QipjgAibDVCtf9cVET
 9DDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hhp2E+tHH2qC5W6/XcUc9Zm4TByWw9EaM/Zc0YY9iBA=;
 b=B5hmrsOKvvyEHv8cAopN04C3EfuasJUSbJI3WuKxEKijfh1GczrUwJ3P87XKNBLo72
 SfxrvOpWN5iqTDjRLGqkY4VZcYZBx5IGgKV+V4ty7qj/Rr2KNf9XalfkBO1FsiIdoPCB
 Q2EdHDmyyiVTVxmoliq80JQf9I1Wwigk2bx878NcTc9DH+Z4UNbSd2NzwpmOQjQ2MogH
 sQiqSjQ5EsGdanJzHaAvgw3lvCMFzTVvPgkIBAG66nVKGagsVU/blajRAQ0y2c3RfHO6
 SM1IE+/J9hFyTsSh11vSVVa2w1KBntOH0HkElWqC+wXLNga3JK6a3OzZE0CKz0mTD8tf
 oxFA==
X-Gm-Message-State: APjAAAUPV7OC0HSHEJ18AMNAf7blrHWE0j+zVQ8yhgG1J0qTriM17E+M
 Wb7qBmFiV2zfwwm0peY6avNvmR8vCeqfeYmjKDDstw==
X-Google-Smtp-Source: APXvYqyd4aJ7R0XHn2u5GNxqqJjeL+swIM+TE0OTFgNTy8bunudWqwdBw2Q9riJwjblJe1xnXN6TewyEEr82PdH3tAU=
X-Received: by 2002:a5d:8896:: with SMTP id d22mr13399856ioo.121.1574087845461; 
 Mon, 18 Nov 2019 06:37:25 -0800 (PST)
MIME-Version: 1.0
References: <CAALvt2OQ-LCg=C86GkcgZkw4V-deTbxVYGsxte9iyO9E3BX_cg@mail.gmail.com>
 <20191118110716.GB19872@meh.true.cz>
In-Reply-To: <20191118110716.GB19872@meh.true.cz>
From: Joe Ayers <joe@ayerscasa.com>
Date: Mon, 18 Nov 2019 06:37:14 -0800
Message-ID: <CAALvt2N2Op+dbfGaMYnCCWdRAEqrKkwo601dmbeqqK-RKry2FQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_063729_605002_4A716C32 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] nanostation-m-xw ath79 missing wlan sysfs pci
 entries
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
Cc: Andrew Cameron <apcameron@softhome.net>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> > On nanostation-m-xw ath79 target in master and 19.07,
> > "/sys/devices/pci0000:00"  does not exist.  Unable to access vendor
> > and device IDs, and no longer reported in "iwinfo <dev> info"
> >
> > This is working on ath79 for 'nanostation-m'.   I'm guessing the pcie
> > entry in dts needs more definition on the nanostation-m-xw?
>
> I don't own the device, so you either need to `git bisect` the problem down or
> at least start reverting kernel/mac80211 and find out which commit broke it.
> Ot at least provide last working Git hash for you.
>
> It would be better to create a bug report on bugs.openwrt.org, attach your
> .config (if you've custom image) and full dmesg as well.
>
> -- ynezz

I will endeavor to find a good commit, but I suspect the
nanostation-m-xw never showed through these PCI ID attributes with
ath79 target.  I'm looking to obtain the subsystem_device (Ubiquiti
boardid) and subsystem_vendor, to subsequently know the power offset,
etc. ref:  /usr/share/libiwinfo/hardware.txt.

Joe AE6XE

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
