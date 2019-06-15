Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 523EE46EFB
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Jun 2019 10:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6L9BWHsM4hHV2ilLXK5J9oNuLQy4yiG+DM4aSWkQAd4=; b=H6MyR9j9kq53rF
	72PXX8T1WsiP1DiJjO6b2BLfShCeAztxLHTVMaUTE0zcCw0szk7LX9Us93ExiN9Tn3hmXz48wzL2l
	Eza0TzqFJTP4kSGXI1C4AXpsFSxbQBq5yFSXYa8jwS7TsZFpUtz4xhetcw1GV+uTPY0wQEosvKRbZ
	8ERxUWw9L5Ot21NF1rlwAhJwsngu2DaKSg7wSoA23tQ59qwYhtfLRaKaYnwTYYfvW+adbcm7pis+I
	FcuuDtOOS+vDs1cxQtwDIWfNPCSxb/BG20oDhGojXX8g7Q8uL9Lhf6BIM1oglPwInAGxcrKs6JdTe
	mnh3pTD5krJ7L6QjtJPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc422-0007DL-TM; Sat, 15 Jun 2019 08:27:27 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc41k-0007D2-Qk
 for openwrt-devel@lists.openwrt.org; Sat, 15 Jun 2019 08:27:10 +0000
Received: by mail-lf1-x142.google.com with SMTP id a25so3262490lfg.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 15 Jun 2019 01:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ALP1b1YDYxl6ie3tqdkPo5BOns450eirza90XtSagW8=;
 b=wj1b1hUn7fU7By2ZbtfP5RU8R/CKA3CJb0LXQIgrgFTiEGFXuc8f6/vEuU8xw3vbI+
 QCxgGCu8iJCj9i6/4wi7HXNGlV9CiSzphjx3sQVhZOntGkmZYTgM6Lww8Brl+Gwq0qVs
 aJrEnnHEpbyj2IarTErDjQ7m5ZUb5Weqa9WztA7FvSSrl70mpfeFljdw8rgfPz2WyQfR
 8gCllkYSq3w9kuJA450OPdx/NIygTd9uQ42rFNb6M+g9akGpJGYwLlgscZ+qxGRfk88T
 g/NZUMl/eYHM90+Xwva0oGuQT4Jovb2F4j7XaalissscZ8pmQzDB1uB5JEUcuiQXB0ZY
 5oog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ALP1b1YDYxl6ie3tqdkPo5BOns450eirza90XtSagW8=;
 b=i4gM9k9DtSKaXdRaB36CEMbUsIbpvcwUhR0vAAMZIftTl/4X629cYjaxtvTWDn0BbS
 lcXj1Lx6Gn5/ZQs6DjOmqjbMhRDAkTkBeBau56n/zIThZnwED5WzC5Ms8QIl37ib7LQS
 q3jIQLJamTTzZ5QBIc5xq/0pPT/rsoN5jPoGETfCBXEy6mKE5kcQd/eu3ltQfRb9KzMb
 KcvPm3nkDiVPnX2WLhFC2AdVH96mlDmgvQhSw5qEQ2n4rDnk7Wj8MgCuyUtU2qKVopei
 an4SmIc5dBKpazor1q4JaNnuLaO6Kmb9VOY2EBpc7Kg6XJVnKyo7mRFCVLR8tnqzcwsp
 gaxQ==
X-Gm-Message-State: APjAAAVh6PRBLfwSHb7t+/6eUvNY8beIGwRc31pXysDGpeJQay58/i4r
 3SHMSLMVudfdLvy8p4uZw8TL0kIMIoQmbJYklhTrPw==
X-Google-Smtp-Source: APXvYqwhESMxv2gjVoiKrwZ1mNKR8tv6ZCREHoIOkqDFNaKpejzhLDfFVUjNb0Rf3hdTDeNOOqKwmKegMaRksHnVjd8=
X-Received: by 2002:ac2:4891:: with SMTP id x17mr14864385lfc.60.1560587226718; 
 Sat, 15 Jun 2019 01:27:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190613210036.30922-1-mail@david-bauer.net>
 <7513956.bV6BmdoukA@debian64>
In-Reply-To: <7513956.bV6BmdoukA@debian64>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 15 Jun 2019 10:26:54 +0200
Message-ID: <CACRpkdYbd2qY4=L1rrDnvnaPqMcKjfqdNB1kWg1+AJBKoZnjcA@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_012708_937654_BC5E7ACC 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: gpio-keys: read
 initial state
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, Jun 14, 2019 at 9:28 PM Christian Lamparter <chunkeey@gmail.com> wrote:

> Maybe he can point to a specifc reason why the interrupt gets triggered
> when the module is loaded and how to handle it. Because this behavior
> seems to be common between different platforms now and the upstream
> gpio-keys (which does work differently!) seems to handle it just fine.
>
> @Linus: Do you have any inside knowledge about the issue? That when
> gpio-keys is loaded (in OpenWrt it's a module due to kernel size
> constraint on various routers) the associated interrupt fires and
> this results in a ghost key event.

Without any detailed knowledge I'd say the most common cause
is the underlying GPIO chip implementation. There are often transient
line events when the system is powered up and initialized and it
is often necessary for the gpio_chip driver to clear any interrupt
flags in hardware before setting up the gpio chip, especially the
irqchip portions of it.

I tried to half-guess what gpio chip this is using and since it
is WiFi pro 1200e I guess ths gpio driver is
drivers/gpio-ath79.c which does indeed initialize an
irqchip without clearing the interrupts first.

Can you try this patch, if this solves the problem I will commit
it upstream as well:

From ce4b6db51658e0954f97837095393c5fd1416db2 Mon Sep 17 00:00:00 2001
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 15 Jun 2019 10:18:48 +0200
Subject: [PATCH] gpio: ath79: Clear pending IRQs

The ath79 gpio driver may emit "ghost interrupts" because
pending IRQs are sitting in the latches when we probe the
driver. It appears this GPIO block clears interrupts by
reading the status register, so read that and toss the
result before adding the gpio irqchip.

Reported-by: David Bauer <mail@david-bauer.net>
Reported-by: Christian Lamparter <chunkeey@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpio/gpio-ath79.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpio/gpio-ath79.c b/drivers/gpio/gpio-ath79.c
index 0a553d676042..39ccb48c03d5 100644
--- a/drivers/gpio/gpio-ath79.c
+++ b/drivers/gpio/gpio-ath79.c
@@ -290,6 +290,8 @@ static int ath79_gpio_probe(struct platform_device *pdev)
     if (np && !of_property_read_bool(np, "interrupt-controller"))
         return 0;

+    /* Clear any pending IRQs so we have a clean slate */
+    ath79_gpio_read(ctrl, AR71XX_GPIO_REG_INT_PENDING);
     err = gpiochip_irqchip_add(&ctrl->gc, &ath79_gpio_irqchip, 0,
                 handle_simple_irq, IRQ_TYPE_NONE);
     if (err) {
-- 
2.21.0

> I have to add that OpenWrt's
> gpio-button-hotplug.c (which registers the gpio-keys and
> gpio-keys-polled) is a special, out-of-tree module that sends broadcast
> events (netlink) rather than using the input-subsystem (again due
> to space issues).

This seems like a valid usecase. I guess it may be hard to drive
that solution home upstream but at some point it should at least
be discussed with Dmitry (the input maintainer) so he can give
his view on how resource constrained systems should handle
this.

I suspect the root cause is the "footprint problem" that hits IOT
devices like OpenWrt and I know Nicolas Pitre tried to drive
a few approaches upstream to get footprint down, but the
experience was somewhat discouraging.

I think it's a worthy cause though! Small memory systems
should be able to run Linux proper IMO, we just lack the
manpower to make it happen.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
