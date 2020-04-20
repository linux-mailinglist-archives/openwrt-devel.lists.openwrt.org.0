Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2081B0309
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 09:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DGSkhmBhZ3cLWVbU8PIMJuHYQ6lbCaRC/IRz9G4ZoSs=; b=TN6+OUfh0B3hhymFOIUtZ29DU
	JOX2ZzRRpVaN+PDzS0hGj7oxUA84HJdUKy6stOrTd3eIkgtkPTpzrZx09pOIIBc2QacjltFdZ9cWO
	6P8IGapw7NcORUcUb1Y902io0SDMjgIyM6AIEOazmMVaNrIItkIa8csBv6VAFGxwbIJxhz9a2Q4fm
	3Pxj4kksXEDoJ2IBhQagS0wNeeB8O2etgi+WivmfnfYOudJ00YmIeiAAD7RNpCrEkd5kLYT+EGlfz
	jCKl+bzDr9a6ZcChbUBfERT//QMMJcNBDk6n8hCirW/Vmzdi7jKWY0ZI5viQ8oyNWd3E9OZPMg5RE
	x5aIr1o1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQvF-0003zy-Ah; Mon, 20 Apr 2020 07:32:53 +0000
Received: from [2001:41d0:305:2100::8f39] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQv3-0003yT-4r
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 07:32:42 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id A9301FBFC9; Mon, 20 Apr 2020 09:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1587367554;
 bh=orj3z2vmvieP8l1DkIATL1EFTaUNjhnXMELAJauYp/U=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=ZqMFmhgRseZr1W2vfVjzaRLtUiHFSP09hiHf1a15euLVT0Uue2PcoCwM77HzNPwlq
 MuTmaP3XF10XiFX+HGXQip5sbHSynCTSWhtz+MS4Cw++viGGiu3s5CoyRlsBOnqdMc
 GDkpF4j9uZ+bQt65Y+YIigcZ5zZ6LKDXoapvrd5o=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from [10.0.0.5] (213.219.166.32.adsl.dyn.edpnet.net [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id D3B3DFBFC7;
 Mon, 20 Apr 2020 09:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1587367553;
 bh=orj3z2vmvieP8l1DkIATL1EFTaUNjhnXMELAJauYp/U=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=QdF40rLUFMX2goi7ZyKt70X4BI2ekrn/6KlsnoJqWBuTJLExum93WxG4hhgHj+fzS
 fAxKEiXIv9fZkFw1BlQeMaTCkzcMUULU2VECA4X7JQYnH/ZyS/3uq67VbwcndrLvJb
 SlvUr1wSGA/hqMswJTPj/9YCA2WrfkC5xs30UKkI=
Date: Mon, 20 Apr 2020 09:25:47 +0200
From: Stijn Segers <foss@volatilesystems.org>
To: Szabolcs Hubai <szab.hu@gmail.com>
Message-Id: <ZMS29Q.4V5BN6QIEH3P@volatilesystems.org>
In-Reply-To: <20200419184911.5249-2-szab.hu@gmail.com>
References: <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419184911.5249-1-szab.hu@gmail.com>
 <20200419184911.5249-2-szab.hu@gmail.com>
X-Mailer: geary/3.36.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_003241_335331_C69A762C 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: use lzma-loader for
 D-Link DIR-860L B1
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Szabolcs,

Op zondag 19 april 2020 om 20u49 schreef Szabolcs Hubai 
<szab.hu@gmail.com>:
> This device has trouble extracting big kernel from flash,
> and supports LZMA compressed kernels only.
> 
> Using OpenWrt kernel loader saves us 64 KB compared to the dictionary
> size limiting workaround.
> 
> Factory image sizes (commit: 5f126c541a74) with "CONFIG_ALL_KMODS=y":
> - original ("-d23", default): 4784188 bytes, LZMA ERROR 1
> - with "-d19": 4915260, LZMA ERROR 1
> - with "-d18": 4915260, diff to original: +128 KB
> - with "-d17": 4980796, diff to original: +192 KB
> - with this patch: 4849724, diff to original: +64 KB
> 
> To save some CPU cycle, use minimal compression ("-a0") for the LZMA
> compressed uImage.
> 
> The most robust solution would use a different loader,
> which reads the compressed kernel directly from the flash.
> See the thread at [0] for more details!

Thanks for giving the DIR-860L some love. I'd like to test (in fact I 
already
did with your previous patches) and hook up serial, because first boot 
will
work but any reboot (whether I change settings or not) will just give 
me a
blinking orange LED. Like clockwork.

Would you happen to have any pointers (or pictures) on how to open the 
case?
I have unscrewed the bottom but there seem to be latches on the inside 
(judging
from the FCC pictures) and I am unable to pry it open.

Thanks and sorry for the topic hijack :-).

Stijn


> 
> [0] 
> http://lists.infradead.org/pipermail/openwrt-devel/2020-April/022926.html
> 
> Signed-off-by: Szabolcs Hubai <szab.hu@gmail.com>
> ---
>  target/linux/ramips/image/mt7621.mk | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/target/linux/ramips/image/mt7621.mk 
> b/target/linux/ramips/image/mt7621.mk
> index aa6836d50a..e954f730da 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -218,7 +218,9 @@ define Device/dlink_dir-860l-b1
>    $(Device/seama)
>    BLOCKSIZE := 64k
>    SEAMA_SIGNATURE := wrgac13_dlink.2013gui_dir860lb
> -  KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma | 
> uImage lzma
> +  LOADER_TYPE := bin
> +  KERNEL := kernel-bin | append-dtb | lzma | loader-kernel | \
> +  relocate-kernel | lzma -a0 | uImage lzma
>    IMAGE_SIZE := 16064k
>    DEVICE_VENDOR := D-Link
>    DEVICE_MODEL := DIR-860L
> --
> 2.17.1
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
