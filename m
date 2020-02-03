Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E23C6150E50
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 18:06:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+US4WnKF6D6Uld5Y39FvvqYdL5g9fGssfwaPZo8WsI=; b=GOQFzXrosZAbeu
	488Mb8ePxPC+wcZeKquqZ9ewXrBQxEjFBO3mwBU/ROJNgxqwFKA6yM+2hyNLFzypLlY0hfHYt40yw
	rECvwu4U/2vZou1EYR540eieUHEY27wNjbyjsnl9IiW6WzJbR+Vcq/UQ33LPpDAhK4VXds84AgWY+
	7MBqvopxO56JCwPP8wzW13xZTgP1LHplCSM5muTQbtgwbwdBxItj9GnFrqeTonWeTIkEGxVqjlqh6
	klZgUF7K2/w9fXUAeCLoN6eZRW5H+ko50/aGaz+MeN7m0A+7eEJKBFHRiaSg8b1vPOpVNXVG0tygu
	FfLRG95/JklFZWA70mOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyfAe-0006da-1w; Mon, 03 Feb 2020 17:06:00 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyfAV-0006cr-PQ
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 17:05:53 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MeCd5-1jZvSc1m3L-00bNjX; Mon, 03
 Feb 2020 18:05:49 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>
References: <20200120211811.22199957@kosmio.komorska>	<20200120212009.32569366@kosmio.komorska>	<01d001d5da7d$53a61c60$faf25520$@adrianschmutzler.de>
 <20200203180349.498b6cbf@kosmio.komorska>
In-Reply-To: <20200203180349.498b6cbf@kosmio.komorska>
Date: Mon, 3 Feb 2020 18:05:48 +0100
Message-ID: <02e601d5dab4$2ef87160$8ce95420$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIubI8M5ymnK4beDv5+ZHTahfzPXQKoBnaxAQR6OR0B5PAM/qcsA1WQ
Content-Language: de
X-Provags-ID: V03:K1:8ArLzxPVUfl6w1Algl0N9EcmnnUmBAKx7rMf176srktVwZxcuFB
 Qoq5X3ci/kWUzAOV/FAk2ga7uvk9LCcWrqjpURrxM4ybrM+OCs9Dbj+RZKy64dAbln/LcQZ
 yqGcMXMOeiOJ+9+Aks3lCd4dDnqdQssYNXVGzyq4ZVtNBOlT/jKrq9qAcR8EpmtbbZBLCR8
 q5cWZT9poplDlBdUMhaLQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QC0Xk8x+82o=:Bi5DXOFg5qnTyysRkM2OSJ
 NFvQh8qxKhhQ1Cs1bG31HZ2ModnnLo4sUzIp5Rqx00AuRQl0IsqgIJVDntwIwc1/Rkzp+zooV
 xX5Gzm6L+dl0EcUNCMSyLNB0pbx6xOsfukSJ7DGugiMPA5JmLoCdDeENo01vAvgWf0yIbVOop
 HCiSPW9ce2d6siweZlFtx6eNXB9iXnNSZU+Jw+EJVwSM1nmD1CiFgHWh2CLv4DhnA9qbnGIFX
 Q+fJOvqsMCBp82c5Zo9GCWL1emKYQKWmfRRV/6cR5+h/TEpCtghbqmoXwWPv16M+IU4XpylEz
 U/xMlnEB1b4aySYPjRBMotk2nshHycKzSfTEANzCn3DxPqgqp9F8q7HUwecFc7mGKdMGzl2PU
 wrKLKQirykqH98ArUvewM5YoPtW5CwXJvwmMkZ1qQbM43MfSfXzsoRIGcg3VTimzcaUen6Nue
 O3OKgOPUYp33AeEjT1y9y2L7U96itdQBQWPQJOPvvb4Arr/5iksPSziGQu3HQzRoodPSkEnyH
 pxtLHV9kw+ZbeMsGWVOz/vmUpKi40iDItP3XhprR8nYNLVDd/r8ZI8KhgBY3hF4Dic1jRZHSU
 /GCMZUK3TZwo4u/rdMQ2gpU360/vFIlC6ElFoNuBWytuqKN9EJAyWR+9vSZ2SC+ZUwqP6CwwW
 aSOPCEnZw4jI3Oh04mmVJjNj0sONKt2n0/n24lnac1Qir0HycBmxxOn1mfjY+3tn7XGHqbkl0
 PU7z51QXHvbnpLW8VghVIJtSznQ9/0AQG4TeO8Rl19+PlX+mnT84mVRjGESpO1fTl6uVdux/i
 NJ/i1kpd1StL+G8DgrvtSw4FETuWQw6dkMSt6FKaRi8VhpHcusulPAYLJcBptULB6UllCXC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_090552_119867_178107B3 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] ath79: uboot-envtools: add
 Netgear WNDR3700v2
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

> -----Original Message-----
> From: Michal Cieslakiewicz [mailto:michal.cieslakiewicz@wp.pl]
> Sent: Montag, 3. Februar 2020 18:04
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] ath79: uboot-envtools: add
> Netgear WNDR3700v2
> 
> On Mon, 3 Feb 2020 11:33:08 +0100
> "Adrian Schmutzler" <mail@adrianschmutzler.de> wrote:
> 
> > Hi,
> >
> > I've just merged 1/2, but when looking at this patch I found that
> > u-boot-env partition is read-only for both v1/v2?
> >
> > Best
> >
> > Adrian
> >
> 
> Hi Adrian,
> 
> Thanks for spotting that,  didn't noticed that env is marked as
> read-only it dts.
> But maybe it will be better to issue a separate patch to make uboot-env
> for both 3700v1 and v2 writable? 3700v1 is write-protected despite
> being already recognized by uboot-envtools...

Yes, please do it separately (since uboot-envtools is a separate package
anyway).

I'd merge the DTS patch before the uboot-envtools patch then.

Best

Adrian

> 
> Regards
> Michal


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
