Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7AD1B275A
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 15:16:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OyPFQ8Eny2qOtkZw5huVBVHTY2IA+rm4R366XmB9nRQ=; b=E81uK16hMu/oBkEO7jZji0kIK
	j1KVJ/rrgyaHiY5tOe3dh1O8p6umWh4TzIc5AbCb6GRIn/Y5BecMjC94938BSOEBixUa9nHIsOdF2
	Ba9QRwZzijYU47qhxkqAl/YdrG+LMPq5IkLQqGa4H2kdUth/TQfO+bvBg+h92UpI4Zxzzf5LngtUA
	9utBqHlFS4LLlL5IiMQN0Af3roEF8LlZqcuMspK5oMlTSLuhUUrvjVMaqAkrMIva3yZ0RmAEr2dGA
	ArQkNpj+hGU+vFzlhucEqHX7yU4bqnkqg0USspNdg1uZkwbvB0iFz25rq7YYxePVKRHVWaP0o/74T
	SasMZf7Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQslT-0003q2-SM; Tue, 21 Apr 2020 13:16:39 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQslM-0003o7-BE
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 13:16:33 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 8D623FC00B; Tue, 21 Apr 2020 15:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1587474987;
 bh=JbDTBytalFwC/tsH6SDM9KucFm9v/wK9Q7ioV2TXnqg=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=Ycb3lWwFSFUtNVSqRY9JD23+X+6g+bpry4ZroPBRbLhJKCAWOKrZYuEAI4cajVetZ
 vwUqf16N29PUOS2s8nIz49AWvQCIfk89aBqFXKzdhEsi98UiVV4opqjGmcStSLmGSq
 oaiTcldYGxQHEnuXsyCM091vtFGLrtskWkYB2KnA=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=unavailable
 autolearn_force=no version=3.4.2
Received: from [10.0.0.10] (213.219.166.32.adsl.dyn.edpnet.net
 [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id 7A200FC008;
 Tue, 21 Apr 2020 15:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1587474985;
 bh=JbDTBytalFwC/tsH6SDM9KucFm9v/wK9Q7ioV2TXnqg=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=U2ARgchDvgOX+vrvIqToQGw8zFug125z3v/y9qT1XgMpBbuqQvQtQSDgXplg0m0Tb
 9/IntLh+vgHwX1tOxx1lsx8WvQWmdO5ObXuvxUN0sq2pp/MJBK+/bG5oDfnsBhtRx9
 b9O2BCQNpeofF5Be+PS4DBaEUvqcoo7y7futpAQY=
Date: Tue, 21 Apr 2020 15:16:24 +0200
From: Stijn Segers <foss@volatilesystems.org>
To: Szabolcs Hubai <szab.hu@gmail.com>
Message-Id: <1587474984.1760.1@mail.volatilesystems.org>
In-Reply-To: <20200419184911.5249-2-szab.hu@gmail.com>
References: <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419184911.5249-1-szab.hu@gmail.com>
 <20200419184911.5249-2-szab.hu@gmail.com>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_061632_523724_0AE6DBED 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Works fine for me.

Op zondag 19 april 2020 om 20:49 schreef Szabolcs Hubai 
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
> 
> [0] 
> http://lists.infradead.org/pipermail/openwrt-devel/2020-April/022926.html
> 
> Signed-off-by: Szabolcs Hubai <szab.hu@gmail.com>

Tested-by: Stijn Segers <foss@volatilesystems.org>
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
