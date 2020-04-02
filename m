Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5239E19C6E3
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 18:17:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWq2U6OKnrjMk/lENijBSaflCotTeU/Wy/U/0W31obI=; b=he40XjkgbEUA5J
	0uEWg5H7wB7BTvquqaOYhxVkXPNCKizkb33qT8S4oYzUwxJ+FdXR0DQcgSXLxzLemtf2w3oIoWCm6
	DjynjvxCkBoQsnKjLtw4wANGRmGP4jINd9m2m9AUJhUIeEiap93YHWPRdbJGlZHkIqywDKgaQM/EL
	rdAHaCtdn+Dc8jRbzX35qaMLS6SIyxeKF9X5dEi4PjdQyKrKNpLeOn4mAaHjxfk1FvRcqHePbPwaH
	9WkIXqXyecn5Fbj7V8p69+tflw3WFKK2YjL2hChCGJwHRKCgyDRGWmrGwC9gWYSVbVVoVyxD3v0XL
	CA1vL5z/hbB/UPDc0kdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK2X5-00027V-Ih; Thu, 02 Apr 2020 16:17:31 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK2Wz-00026v-6x
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 16:17:26 +0000
Received: by mail-yb1-xb29.google.com with SMTP id g6so2423765ybh.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 02 Apr 2020 09:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YQ8qNWSgU1KEahxtxfREFtAz8uAvEs9kT85Faq7PSVE=;
 b=XdzcZt8ZPVeid+XaF/KaZM4bPTO63sAUfqL0XP+JNxRxMWru6IO0vdFgzzK7yaSB5a
 /LFkOIaPIf0kAijPcoFwwSqc+2Vw0tLI6da37yLU6QjWbgVt8mC9pPG6wGIYZIrp7NOb
 Tf2YeZeP4YtE4OYvpYJwbx3nBJay1bBPGqQtxT8kdSxXDvj8hAG/duRfVdmMw+bsriUH
 BiG3UvSm3/CNL4GYpoCToBCDscAWZnwxb+cW/AqHAVWU/RvVpkNw2P+4zk3/3M4iD7EB
 84cXIPP6mGd/OaDiOShxgLn1yJ2HDEehaDI9Pi6n+hRSS9r2OWKxACIiwQt40U++nyDd
 E+fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YQ8qNWSgU1KEahxtxfREFtAz8uAvEs9kT85Faq7PSVE=;
 b=AzrD/b62P/7aOG7OCpdD1lWeHXQaGgngE6u92xMxVMwkHzVRVoClsPcG6c7R5ZGed2
 2eHpUKbX4lvnuKEueO7Dm2D/5yPZhV9C2LSZ/S+1SOptDdemh8e5xQp9+Zs3PAOl78s1
 gDiF7n3zwsmmn2TCwBVCus3JQSE+ktTdxr31uCcS1Kk5H3Cw6veJCEuebs7woHeKCyL/
 hRDsHt/QkuSFUM/nd7yucYrZVe2AEgmBFu1sAkXFRESWKLkFrcH6xceYTBKOnOwbMCWK
 GO3/XnaLqTDRa0Z//veN6EWjOtA86/QclQb6DGOrTz1rF2/BeQbxdIE1iddRtGpIhw80
 n2hw==
X-Gm-Message-State: AGi0PubN+Am4GlN4bijTV709JvxrSKF14vkt+V5IBPgUUiQwyB1zN66f
 mfDW76HcGYvfYhlefackHW1fShQrFBrqLOcr5P0=
X-Google-Smtp-Source: APiQypIxZcpYm1f75nHvE6Kwqh+1upAg9HpIPp477R3qGgdeYXxYMKgfu0vE1b/p8WCGr4Q8+PfPdj1pvTuL5ppB5jo=
X-Received: by 2002:a25:3f41:: with SMTP id m62mr6449266yba.455.1585844241131; 
 Thu, 02 Apr 2020 09:17:21 -0700 (PDT)
MIME-Version: 1.0
References: <015b01d60901$ffa72650$fef572f0$@adrianschmutzler.de>
 <017601d60907$b5ceac50$216c04f0$@adrianschmutzler.de>
In-Reply-To: <017601d60907$b5ceac50$216c04f0$@adrianschmutzler.de>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 2 Apr 2020 18:17:09 +0200
Message-ID: <CACna6rzCZZkXhP664oQsbW1O4rLwK1zFP+eLKvusTL_Cj_pEGA@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_091725_249567_5FFCAD50 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b29 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] broadcom-wl @ bcm63xx fails on kernel 4.19
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
 =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, 2 Apr 2020 at 17:59, <mail@adrianschmutzler.de> wrote:
> it looks like the problem is only the broadcom-wl package, which is pulled via DEVICE_PACKAGES on the following devices:
> actiontec_r1000h
> tecom_gw6000
> tecom_gw6200
>
> If the package is removed, target seems to build fine on 4.19.
>
> So, how to proceed here?

Please provide a patch for wl_linux.c to make it work with recent kernels.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
