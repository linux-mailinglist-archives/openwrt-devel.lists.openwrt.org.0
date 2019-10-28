Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61ECCE7701
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 17:49:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u82JqIkd/GIC/euhjaWYE6NFMI6nyzOLsM5L0+EMD98=; b=Pv9DQaLX1doiNq
	9VlI3t/Vf37ViMedJibXYzKfQ+eGKjQhbS8kovTe+ZH+kkMb9CrWaSn8EQSKv0Ry4eMZjlJr1AF15
	NwbGOUKxzV7ejdxgmbnL/vaiQF8NChQOeP90VnXWQPsiw30vTS3gB3aMEqBtRNyfHPvE88uwKQk4p
	MrNDjwarxYdGhai5vbyCmVxwvpdTdsn7tSWD3qVQqPEkVpA3hygZQhTTqnmFmPtrnxW2SmHRb6tdR
	2ipSSJwTdmmZaxHPdh9sQrgJ+kn4v9NCapEv83BOrLIf8QpMELXEp9uHCYO8skq2tkQLjTPYFXqEf
	wNJH1rnlWdUyapzgy/AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8Ct-0004SY-Fg; Mon, 28 Oct 2019 16:49:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8Cm-0004RT-Bw
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 16:49:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id 22so9769266wms.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 28 Oct 2019 09:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=duhEznkONQKcEWbyTyHwjMqXjISkbP40RfEILH+XUxo=;
 b=ZQRAimnlHDSDU7PO2TltCQ0QTDd2EyPpN6yF9RvfhBFOJh6n193kvRE/zwQqN21iqp
 QkCQiunWXqUCycRQIakg4pZfl542ooxYtcIDZcIlt/TsAnS6SyLxyrbSOfxWU5gEK+G/
 pHFtRc2Ha9gbPi/fO7lIhXrVzmTSkZqd6UqhVN8Owk/ZNfIykAAQDUaxyDtsbLL2MAym
 ilffIuc0Nx3lopD/9QRd8k4qHw3fKMr+T3VMN9WaXc4Qjea2CWOYoI56gfiF8oBVm+kr
 2PtfiHDBHQu/UP4kMATEmJBdFGqtvS04GnfFdE8zHSPJ8s5MhSIeFhFiGnbTl+ywLQ7G
 mKxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=duhEznkONQKcEWbyTyHwjMqXjISkbP40RfEILH+XUxo=;
 b=tbJ4hlGDJ3ZxtZt7ewmKROL5xbe8QPt4yDkIEUvAx5R7QnSyrghPoO236tcTyDfadW
 6b1wBdnX4QxY9wgsHsCYEsBos1FbTyhNoLd2AMaeg2xaQDaS2ywTWR812YmunOPG6vg3
 oLS7/NtK7O0EUudsMfiYGLDDGh29ZCddfbbCGW41mbegozaaDEgFiRepIVB8rPSKW3fg
 EmNmOitpk9bn/ZUaKvuXss2dT2SELiRDNyfGHm2nPl8+vl4hxcA3tfZpEjfm3bN7SWbA
 G3nPoUfdPrQJI0urUswrud3nKHT97vdEmsW3iXVDstfWRgJ8FyIxaM6Ad49D4wJj3Q72
 K8vw==
X-Gm-Message-State: APjAAAVVqxrkOPZtYZCvjWDLofadnXurvQpj+jQobp+Tvy/xMF9h0Fx4
 b62URSQV9sokUJFBrSH6Heq16VAxSis3Jy7fZ9Z83gS7
X-Google-Smtp-Source: APXvYqyazI5AhsJv19az+25DuetygNmrwWX4gkZ1hHlj5QVpX7/+O7F6/ut8/0zAqosSBajrewdEx/kQ08e3psZbR8s=
X-Received: by 2002:a1c:bc89:: with SMTP id m131mr254591wmf.14.1572281357973; 
 Mon, 28 Oct 2019 09:49:17 -0700 (PDT)
MIME-Version: 1.0
References: <1572038851-4029-1-git-send-email-tharvey@gateworks.com>
 <855ee1da-8d63-347e-0694-6cc25c7d5e1f@hauke-m.de>
In-Reply-To: <855ee1da-8d63-347e-0694-6cc25c7d5e1f@hauke-m.de>
From: Tim Harvey <tharvey@gateworks.com>
Date: Mon, 28 Oct 2019 09:49:07 -0700
Message-ID: <CAJ+vNU0Dr77rFsnKmf7mqwD8iZLawFSubbGYH-jK4MoKzskdwQ@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_094920_434436_0F19258B 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] octeontx: fix thunderx BGX underflow
 irq name
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

On Sun, Oct 27, 2019 at 6:33 AM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> On 10/25/19 11:27 PM, Tim Harvey wrote:
> > request_irq requires irq names to be static/allocated and not on the stack
>
> It would be nice if this patch could also go to the mainline Linux
> kernel, so we do not have to maintain it any more.
>
> John already applied it to OpenWrt.

Hauke,

Agreed - it's on my list along with the other patch for octeontx.

>
> <snip>
> > @@ -58,9 +65,9 @@ Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> >  +            dev_err(dev, "Req for #%d msix vectors failed\n", num_vec);
> >  +            return 1;
> >  +    }
> > -+    sprintf(irq_name, "BGX%d", bgx->bgx_id);
> > ++    sprintf(bgx->irq_name, "BGX%d", bgx->bgx_id);
>
> I would prefer a snprintf here, it should not overflow as long as gx_id
> is less than 1000, but just to be safe.
>

Agreed - I'll make a note of that.

Thanks,

Tim

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
