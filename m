Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC2F1AFBBD
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 17:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5mdC/cRNMgco6CST14bzNyQU243mhE2Q5mX0LiRC1A=; b=NmJS6x+HNQmRf+
	iHOQzu3Y2ZjmctgCK9oB0s9IpJLxBYUNUd7puyktOSaB8UV/rdPi/5Mz/h5FtfxdXQMdIVjEajNRC
	PffnJHhpyY/T5hjbPP5mHvwn6S/YzSg6qFVJIJLWngCOXaz2h/w486oPxTDVa4N/RLDbquEsyIupS
	g9MgxEJU81eo4v5w60rw1q7DxQovQO8J5Gi1Iya2z6JeiO4MGqQ8VJggT9Mu59PTLQgrUuo2UVO2L
	lGlD4DdjplpTbwZDQrNV4GCaHX7HxqcJFAvnt+Kgx9PskLB5o/tTkNCSEs4T+0rpQbZ2lcBBjrhha
	9qu9KrPvhAUirwAHncxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQC5u-0006wW-BM; Sun, 19 Apr 2020 15:42:54 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQC5l-0006vi-64
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 15:42:49 +0000
Received: by mail-oi1-x242.google.com with SMTP id 8so6638695oiy.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 19 Apr 2020 08:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OeMKrT4yuAN4zpK/kKYnOiAFhp+e0du0Pq2rw/pXTUA=;
 b=Qr6BPDSEaCGEZnRn4N8ChJPSk0Av8AdpZOcfZG2yL1gsk+W64iLoyaYF2ItetPND1h
 0d0a3Ftwzv5uKP96leHiSxFS4KZKE8PMZYvy1qzdVsh4R7sQ8A/Oio4bYOnQiGj7jcvB
 eukpLUpnLKuIDD7LryOOd7+2BNOWokxi3afPKUJSMhsmkAeb0UbCpIFjQYX1VXZ7SJJP
 zqTOnHFyKSBQwC23CyINVKLF2cKa0sb8vDqpKkuGG1/wE1xk6ot+rngO3WuR2kldIIQz
 0oeIyatqnaZixqxXE4svdGHpqViEKAwCM3R7BSR/NeuyXQbFvSX1QgGSPE+m5Bn9WzZD
 LbrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OeMKrT4yuAN4zpK/kKYnOiAFhp+e0du0Pq2rw/pXTUA=;
 b=twyUzC2eER6ERT91tYyz9DAd477e4KkfrS8B4+TuJ/OhxJNdBIEB9EmMXYJuA4nnbt
 BCoUDP3HuiPhZFpLUBG194MclRPBLJtDsFAcbzlgpYG8gnP/nY/J7Bqkok1OrdG+GKO1
 Hqle+iEpMPvqGzp6DilRkvQRvqr0dng3bP2fIE72i3LB7otqWp+oFvBt9vEB37egxBf7
 3Bv39uTPdw6OFxLLTYH+TB9VtoWzta5rayKa4un8hJYdYdI6WNIbGDwqGsM2ri/npy9T
 hx9FAkBtnztIuFsYGg2YQbeLjXs5+OaXRVaQRhyO96a+GJHzmjRY5fh6PaRbZblZ74Yt
 4eIw==
X-Gm-Message-State: AGi0PuYEIL4gomvtjhV0ReQQrtFKxNW2fMCJ4hZsamehTyax5HRxvxaV
 +JSPLqJwOPIj2xrM3Svp1PXrJoDJ0GhT1RTniso=
X-Google-Smtp-Source: APiQypK6le6rfac+TYIbVmv0sQYvxa+V4rlm0bjyOtSXyHBnuUpqp4u9FJexfhxTsKdFLXS+knZTJHLfwnZhus35JVM=
X-Received: by 2002:aca:5614:: with SMTP id k20mr7990602oib.30.1587310964008; 
 Sun, 19 Apr 2020 08:42:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200416153146.4377-1-szab.hu@gmail.com>
 <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419003715.26284-3-szab.hu@gmail.com>
In-Reply-To: <20200419003715.26284-3-szab.hu@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sun, 19 Apr 2020 23:42:33 +0800
Message-ID: <CAJsYDVLn4mxcSnm9uURVeXtom64mOunOKCfYVew0ynDuDahB7w@mail.gmail.com>
To: Szabolcs Hubai <szab.hu@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_084245_248786_D90B79D1 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ramips: mt7621: use lzma-loader for
 D-Link DIR-860L
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Sun, Apr 19, 2020 at 8:38 AM Szabolcs Hubai <szab.hu@gmail.com> wrote:
>
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

My original thought on this device is to use a different loader. The first
4MB of SPI-NOR flash on mt7621 is mapped to 0x1fc00000 and lzma
loader can read compressed kernel directly from flash. If the kernel
can be put at a fixed offset in flash, we could compress lzma loader
separately and let u-boot decompress only the loader.
You could take a look at the tp-link-nolzma recipe in:
target/linux/ath79/image/common-tp-link.mk
and see if you could implement a similar solution for mt7621.
Note: You need to fix AR71XX_FLASH_START defined in:
target/linux/ramips/image/lzma-loader/src/loader.c
to 0x1fc00000 for this method to work.

If you can't implement it, I'm fine with your current solution too.
but I prefer to drop patch 1/2 and write the complete kernel
recipe for dir-860l only. It's a bit confusing to use "KERNEL +="

-- 
Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
