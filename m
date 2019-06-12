Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1538420C8
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Jun 2019 11:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbofKP9YHzQ0SF72Tij5LfS9YGSmgrc1xwWazKamxTM=; b=VhoYQoJibYq/GR
	cCm7L+1QstSHwghPS6YebeubFEsUenDOIB19RQJO+vRxpZMS2Vz8m+JE8RHabZ8pJ48TuqYJYSDKR
	ma9a1DH7wgBFw/g8+irXvIzkj8bojcM9p4x+W4jVm53uyyHNVsMF2VYKz82fVevl9RI3Dhs+lErGK
	WVwhG9vKV9gSdcsBYNvFkmep/qfPfztJtEET2iCJ9jhkFbYHLdYAkrTIGqA9gETwZNhKq1StGAHTd
	7DHy0Yexy2riVMz/dNSvG6tg5rlyoIIaQpoXY6ZN/xAXepBPr/2f85hTwSIN+34An6CzoEEduUKbo
	XAxQCl5Zs+Dm1lEUdEOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haza8-0001D1-Dx; Wed, 12 Jun 2019 09:30:12 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hazZr-0001CX-J5
 for openwrt-devel@lists.openwrt.org; Wed, 12 Jun 2019 09:29:56 +0000
Received: by mail-oi1-x22b.google.com with SMTP id v186so11175197oie.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Jun 2019 02:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/XOv5iv99L8s7bkGg6dYMYU74hpurSK0+l4fMQH4ENs=;
 b=oPV/gYS/RSn3JfXMMu95940964ALLJD51Uaw9Xst7IwdgUxPzIBA3EG/xote5CTSvM
 ssAo4klcQEpSsT47IR7ffjBTQVbfl5p+CPkG9wQnOVnHbEEWIHef8NpOqiWK5FC5PfF9
 Mh+Nq54Uei4APhf/F2ySDmTRi1R4WTnU6ebqeCAIppR6u9cr/LWpAnZsQC3gO4hK0PDL
 Aikq+6PXItKtAmAsqr415IyLAHk3yElrR+yx7s0tYo33+2UDaoCXcT1sFy2WRKG1rJ6L
 ZUN6nTRRQh9+0WAEnDh8CY+V9Upb2xhvD9J3Nr0O/BYuTN3JYqO8a+Zo7G81wrSFNoYp
 LAmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/XOv5iv99L8s7bkGg6dYMYU74hpurSK0+l4fMQH4ENs=;
 b=d+thqNSS+viSbOMd/Mpr+bzVtjZTVG/hRGWDqM0mxJwb5K0XnM1sENmRvab40b5dNM
 FkRaTHxgOxGcnb6mkuy6nAG6gnTfAzulcVRHmuLXf/rQZms43rAyp+by4L2dJrJZJT9y
 08l1htbG0764TTbwP667mnod9izZd8G73grR7puNZCWP8cq+mAAaGlVmg5HTZrNFMEn9
 ztKvvme/Nw3rBuIxfk+T2cyhonRGZc/zPPtoSVv8ziXPUcoTtd7RqCO0Ia8jzrZjcjpO
 r62dg1oz+fzCQXl4zlQArDyWnbIabWn6BSNP2FoS6d/8PVfRzvMOeaGoLcBzumgYU32A
 2gzg==
X-Gm-Message-State: APjAAAW0tuuxPLY5u/64p64BPUSgxmIoiQodaheBGeZAc6N0e3oEiIYm
 /k9u0StLtGGSwS5cCgkP2kFb653c/5hyz6Ve7RJg08pH
X-Google-Smtp-Source: APXvYqzQv4pF7FveUJugG0QzCFu/dzebm/6ZBMIn0t16UTQpkzUuQx3LJBsD9WQ0DIZlW1Qy2Z5BtzQcj2pLnFBo7cs=
X-Received: by 2002:aca:dcd7:: with SMTP id t206mr19036944oig.30.1560331792726; 
 Wed, 12 Jun 2019 02:29:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190612004208.26914-1-lede@allycomm.com>
In-Reply-To: <20190612004208.26914-1-lede@allycomm.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Wed, 12 Jun 2019 17:29:41 +0800
Message-ID: <CAJsYDVJN3KaWHj-_XC1MfyCREMOYzxAAC1wTZoETCaQ5_fvSfg@mail.gmail.com>
To: Jeff Kletsky <lede@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_022955_657972_8BA0C55A 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [RFC] sysupgrade: Cross-flashing NOR/NAND proof
 of concept
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Wed, Jun 12, 2019 at 8:42 AM Jeff Kletsky <lede@allycomm.com> wrote:
>
> From: Jeff Kletsky <git-commits@allycomm.com>
>   * The kernel and software for both the NOR- and NAND-resident
>     variants need to be able to read/write raw MTD as well as UBI.
>
>   * The existing sysupgrade paths already prevent flashing of a
>     NOR-intended image onto a NAND-based device, as well as the other
>     way around. As such, even if a approach like this is accepted
>     after these board names are "in the wild", sysupgrade will be
>     "safe" on "old" builds against future additions to SUPPORTED_DEVICES.

Why would someone do such a cross-flashing at the first place?
If you want to recover the firmware in SPI NAND with a firmware in SPI
NOR, You could just flash a initramfs image of the NAND variant into
NOR flash. (And vice versa)

>
>   * The MTD partitioning for both variants need to define both NOR and
>     NAND partitioning

GL-AR300M has an NOR-only variant and by adding SPI NAND node into the
NOR variant you'll add some unnecessary error messages into kernel
log.

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
