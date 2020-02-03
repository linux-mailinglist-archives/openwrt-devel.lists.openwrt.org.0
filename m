Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E93150450
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 11:33:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0+ejbHj7ZcEmlFaczI2uXo9uEjAlsU1S9Sh1a1YxVo=; b=njSeEL65m248ZT
	ehZy/c3JuhsfsqTjUrEHTR0Q8DWR8hPL4fj50blr/5nt++MN3DOzkXoM0yM+l7a/8ZkSCtnRE4iet
	l2r486NM3v1rfryTrdK4bii6ciBqLs9KzW6UHpA2nqxPBiSAxi332yE/q5B/L5b4xEYN8zsUs4ZgD
	mDsYyMiCVThodfAa5a8KF0CtvD9nOYV5jCAAAZm7TuDc5qoQLu01wxI0bt8Fnhqo1d3DDjxoBqeml
	jgAcC9ukvKXwuRMe1GHef4xCOuD8yt79PJWbCaFv8GwP9wwdVUI8WHlEKbSdZsYp8g7uIn2PrJ0dK
	oFVA0X81dSFqaVlBj+ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZ2e-0006fe-83; Mon, 03 Feb 2020 10:33:20 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZ2U-0006f7-Cb
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 10:33:12 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N9Mh8-1jana42ngK-015Gct; Mon, 03
 Feb 2020 11:33:08 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20200120211811.22199957@kosmio.komorska>
 <20200120212009.32569366@kosmio.komorska>
In-Reply-To: <20200120212009.32569366@kosmio.komorska>
Date: Mon, 3 Feb 2020 11:33:08 +0100
Message-ID: <01d001d5da7d$53a61c60$faf25520$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIubI8M5ymnK4beDv5+ZHTahfzPXQKoBnaxp0Lg4KA=
Content-Language: de
X-Provags-ID: V03:K1:yZPw+RJ84vKqeAvJmbLH36SgasR4yFhbKDb6QFreoQ4QMYJRs/J
 9i+H5MbeD1ao4XezKLlt0RuvQ/O51B5a/p2/LQIHBhyMkiLE4Zo36FSiRmPevJhofBvilU1
 HLLQuZg0wQh+TNXj0XroEfqwGKAI5X1NweLz8SsPThdCOE/pKk3gxiobquc05OnMDBz5WlT
 E90q2Aadlypo9vqIEOG4A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JSnSPoHXZiQ=:41rR8w8CtKhDPsSaaeatAG
 2Cc+hrX69E+UbM6yLCIcNDoSYDkXr0nROHY1zqTH/gCoV4ta4vpLvSBb/6zxeFQ7TTXbD6YtG
 080o1SZNySbveXpcrsX85xm0vqMyfgu4oMcNxiEMEjKMSvWRKocSDqElFiA5taF6enJ15aCeu
 li0UJp7X56kqPfvDxQGg6cLG1SyVsobDY2LPOvR1Ew1gJnq+5BnOI/MNWVuJzBY9RrA1jjsEJ
 wKbE9BdJadk0OMA3bm57mE5HGWBFJpH5OE6kDo7yXEzqqj6JXI0p/hMNnSoSkuBRpFHog7qDp
 oa87Zt9LXFGjZwG1JXi+c/NSszvq+Tswe/BPDsXrAPCH8YNrYjcfItOAm2Rm9xH0sNzTFuqmL
 uwbOoLRz7aTcZfmTvfC6qunjNEUmaIYtpQiLOS6JJjNWeK8IR6rVdBqE7qw8Fo71NgRYWhG7n
 kZu01x5fOzZx08JPE+1bFtTupR4C/c9PyiWPyJcgfyYkAQxqGpaKVNx/wLNSyYbbS5BMyXfl6
 LNOCCd3SNPKjgio/sZhDGtBU0xK446WvXVif7QPZ52QtfySgvwIfFzTu58XJoiqgacyF89pPL
 CIOq1/rEM8JwdOjSCeZ36JhSaujPWjXiXuph3W51WqKaWIJbaq+3MeVE6KFGNQFmCHTzaIR7W
 eErUCmZ+gs0jwUI16o6+BHDQsBKL4BxsqG+KMryFikE+UV5SH8j0mLGKmdCe6/TOwXuAwlWKp
 csrSPcOqpUtvYUSO6hHNlmfO51uXGEOi/APIaaxQp9zrojR1EGNfrqi8UicTIOfsbQBX3lXos
 Z0RNlmP8flDGJ/6LQizkdQUGWuoEKuuhXOM92+0iLmS2PAtWaqF9E9CEhrGpE/4bLaN69mC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_023310_718992_0ECB1987 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

I've just merged 1/2, but when looking at this patch I found that u-boot-env
partition is read-only for both v1/v2?

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Michal Cieslakiewicz
> Sent: Montag, 20. Januar 2020 21:20
> To: openwrt-devel@lists.openwrt.org
> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
> Subject: [OpenWrt-Devel] [PATCH v2 2/2] ath79: uboot-envtools: add Netgear
> WNDR3700v2
> 
> Add Netgear WNDR3700v2 to the list of supported boards.
> 
> Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
> ---
>  package/boot/uboot-envtools/files/ath79 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-
> envtools/files/ath79
> index aafced98db..66f7dc6a64 100644
> --- a/package/boot/uboot-envtools/files/ath79
> +++ b/package/boot/uboot-envtools/files/ath79
> @@ -44,7 +44,8 @@ yuncore,xd4200)
>  buffalo,wzr-hp-ag300h)
>  	ubootenv_add_uci_config "/dev/mtd3" "0x0" "0x10000" "0x10000"
>  	;;
> -netgear,wndr3700)
> +netgear,wndr3700|\
> +netgear,wndr3700-v2)
>  	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x10000"
>  	;;
>  netgear,wndr3700-v4|\
> --
> 2.25.0
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
