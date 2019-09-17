Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C86B4C0A
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 12:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TAFiWKsYffuXnSWSag18eMIBiEUB5iB3g6xjytqdr8=; b=ApRMuONLm4TJzl
	0AIPzOdnYMf1bIwQXbDzcOsUt8dyYYqyQwhpuUaws1nP8QMUM/r0UEtiT7HtMS7/brKkxtwH73L/0
	LXzkzcgDb3RGtJ3VVVrqHLBy8cemJBE2JtUl7qMDttACn+1UzZZsliQiS+OXPmW1B6GuwGzvS7ucj
	3SiadzBJZOI3GaKRQa/cAlQnXFp2JBEO9REdAjhmqMQsn8ocVXJRhEq0moC5Oioe7Vy9LDpu+RBym
	yH4/z17r3pnE6QuAognkUb7AhQWwcpAxMXSPFywC56XvLu/XX7podChVIlyYHuuKC8SRfHrRKsP2p
	TOhuodKgh94upaI7ffvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAAot-0003T4-Pq; Tue, 17 Sep 2019 10:34:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAAoW-0003Sg-VP; Tue, 17 Sep 2019 10:34:30 +0000
Received: by mail-wr1-x441.google.com with SMTP id o18so2514564wrv.13;
 Tue, 17 Sep 2019 03:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t0ldOVG6me/z2y2PU+oZCI7fDkE50Ge2xwt/h2YQkhE=;
 b=V3q2YT9f4AISt5ihidfN/6m3uUgi4pLac4VEqXOqskaTTuIGpbGaDipCF8n/cmi4f+
 lvu9zB7OdYtpLK70UDXahl7qZUvl+PWthyUBMHcR1OiG3fiIOEd8r7A42oe5uWkQJMby
 wSIFn6QoNjZhE5wvmDgsZsv5B26U6vF1+ea5orErkesySMLJrff7vodZ8LtY29JfNQGr
 FTDLge//f+9SMlc1CofKfo95QPmilfHDzUIFVF7PeGMREaXavcvt82swrfDFen9Jmor4
 cunVpPNxi2uDHRgMG+WLlMTZGREFqbMZ5zucmZTHrsZWbrxtqEv+kuHFtbmt97SrNF3F
 rtjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t0ldOVG6me/z2y2PU+oZCI7fDkE50Ge2xwt/h2YQkhE=;
 b=iUWRIFwPOSn/j8/40Ia6F+5Xz7kRe4hGZlOU4YRnFEFA53jMx5e271iSTrWC7qoenG
 6VxZphc8J2xiMSFCdKJQ+e83x37V3vPB67Q7wMQhulFnHM/Z//rckYK6xR4+SUqna4sL
 j49Fy72OPCwDsELyXqOsGe8McrkEmaTNqxmLlfTnMWH4AebPfhE1enGNBQAHnSIeIoT2
 HMPPwljy86RB0LcZ1i9lnJlCCfl11aMlLz6v1uSTdy1SMdPQB/aW784p3BK1VgLCQsad
 n1F0/V3vtw2E+D8Z7fTT5h3mfbK0q0aGWu96f5UUPw93rxw9pP7PrB7317uyWdEwSe8u
 B+FA==
X-Gm-Message-State: APjAAAVRC2QKkemOsKje3QqRG05RGHGuBifn/FzPml/0B4kaPpLMG7sz
 aWzRxjTAac+G1LSjKEypVNQ5fUUmwQpai0BSfSM=
X-Google-Smtp-Source: APXvYqy6SULBLPiog7NZh6LDntvdquKpwzfDe4WY7xMVmL7ryfHWE+AE9UD2VRd8/zzeOWi4Fn9sRvbBTTFVCMFFNjc=
X-Received: by 2002:a5d:4647:: with SMTP id j7mr2344219wrs.106.1568716467199; 
 Tue, 17 Sep 2019 03:34:27 -0700 (PDT)
MIME-Version: 1.0
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <250c8e36-3f42-d9c0-25ce-607f0e62ddac@mein.io>
 <87tv9psnyv.fsf@miraculix.mork.no>
 <d3b729a9-21a6-5e20-2150-7b138df0680b@ironai.com>
 <CAKR_QV+7GNkU+z4XsfPj8gbtT+tUqE8uYEwGqDedLZ4sH2X=wQ@mail.gmail.com>
In-Reply-To: <CAKR_QV+7GNkU+z4XsfPj8gbtT+tUqE8uYEwGqDedLZ4sH2X=wQ@mail.gmail.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Tue, 17 Sep 2019 12:34:19 +0200
Message-ID: <CAOiHx=n23C7kFaW61htKei3EZq1JjAZmkS-Qt37_BxgP5dFPSA@mail.gmail.com>
To: Tom Psyborg <pozega.tomislav@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_033429_037612_D1EBDB29 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
Cc: Vincent Wiemann <vincent.wiemann@ironai.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, 8 Sep 2019 at 21:19, Tom Psyborg <pozega.tomislav@gmail.com> wrote:
> there seem to exist at least a dozen of critical bugs that one would
> not like to have as a part of final release, to name a few:
>
> Mainline ath10k causes crahes in ipq806x / R7800 ->
> https://bugs.openwrt.org/index.php?do=details&task_id=2480

We ship ath10k-ct by default, so issues with ath10 shouldn't be a
(rc-)release blocker. It should be fixed for final though.

> TP-Link CPE210v3 wifi not working ->
> https://bugs.openwrt.org/index.php?do=details&task_id=2478 (there are
> multiple reports for CPE v2 too)
>
> eth0 doesn't work on ath79 and AR7240 Rev 2 for ubnt-bullet-m ->
> https://bugs.openwrt.org/index.php?do=details&task_id=2442

These seem to be ath79 issues, since 19.07 still has ar71xx (which I
assume still works fine for those) just not providing ath79 images for
these devices would be fine IMHO.

> TD-W8980: Kernel panic - not syncing: Fatal exception in interrupt ->
> https://bugs.openwrt.org/index.php?do=details&task_id=2410

This should be ideally investigated and fixed by final, but guessing
from the lack of additional reports it seems it doesn't affect many
users.

> ath79: sysupgrade will brick devices with RedBoot bootloader ->
> https://bugs.openwrt.org/index.php?do=details&task_id=2428
>
> Flow offload regression with 4.19 kernel ->
> https://bugs.openwrt.org/index.php?do=details&task_id=2389

19.07 uses 4.14, not 4.19, so neither is an issue for the branch/release.


Regards

Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
