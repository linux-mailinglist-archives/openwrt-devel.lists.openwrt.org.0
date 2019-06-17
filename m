Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DD349153
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Jun 2019 22:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSa69VH/lAExaJvHOCn76SgfRoCTfur6PNKlC9Yjlwc=; b=UQ+hPxgYhoYTBG
	aFGpQQPzR/1C2t0/9wRNnE7uS1J45Bw4570AgcMCkyUlTOqYPIxkjKgpa41PjZVAc5WLNwXkVnxHC
	8vtnTBKiuJz2z5WdDM9WA9ik7s1FweZUWc25PlpwiueHFyOzh/6LfVUN5XOiCsNpE4U+JHmWs1PDW
	KM0JpdbzYOMWgXLW/ytCmjP7wTUTDZA/wccHGaHzMqPORUIHPNdt6Lgka+rt3lTqeuXtsdyjNNEeJ
	wEN3USOo/bSqH4jaB77n29dGqkpTTZSojDG5Ara6rkFmMNbm47yB7kLnhki8cw1QQ/LTfjHzpmmUZ
	oNl5tFzQ1Tjs6yv8gZ2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcyDM-00077e-15; Mon, 17 Jun 2019 20:26:52 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcyDD-00077E-B2
 for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 20:26:44 +0000
Received: by mail-lj1-x243.google.com with SMTP id v18so10654636ljh.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 17 Jun 2019 13:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o2sL2BbYl6Bwk4O5/fowU0gBxg7sZM/s4JuNN/+EYzQ=;
 b=FrVhAAqncVGJWeWozqzmV5XeMIVrYd6g2Q7VB6JeBED9IQzVzAiTzhU0onlmyaWB/i
 ZbFeOHTni6BPzF6MJSPLqd9iT+Hj7WW+P/+85VkyJg8T4L8bXqKeAJVN0UfO9L+rT/V9
 vIoiQ5QwyQMwLz3FinWtWKUIGh4LX4w5We5hTQ+A5wjYxZYhPhA4sXUz0TkbxLQsvs1L
 ivbeqNv0KXdQdWdU52d12GuX3IJB22JECZsPkjjh59vi2WEIgETu3y/tdzPg4kp1zexf
 zX20e+vMEmDHE+P0sK8h0FrcF6efMMPb8rSDKzrdNkxhaL3b957Vq2B44yAQYz+Gj755
 vk4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o2sL2BbYl6Bwk4O5/fowU0gBxg7sZM/s4JuNN/+EYzQ=;
 b=pbAIbXlB1gx+8l1wma//q67Pi7/ymF+3E8IL9tr7vxmQ19L8q1KOrVmJUBKLKmno22
 cEKqdiB2NbRwmwt6zuxty0STRDvIrEvhQMfCHCO8iGia5B8watDRspWP15ekSVqHmOHI
 NNL6jwgjlulIlq2ZiUjmZC+TAh1dU/+UYMlxBDFT1dtJd09w73JhQrUvtfQtUAEBiC5c
 eqkplEpOGY2wV7VnE3475JjZFnWbQhCKw3j8APVV1SJnE4p4m6VMvVJAZ1sF7XQURv9l
 MJdyMUw8VaV91CeebDp5IvhxXCXiIkhDp0slgnCxGTS5JEic1lAfZO4PnzmU4rmUNmTO
 a0nA==
X-Gm-Message-State: APjAAAVBa9minWhUFUZGjQuLwkGDS8Cg6NDRubBatNZl2Uq/Bf+eMsJq
 yFAlMZQImw2wRtl7HdQxSnwipkfmoIljOZmEHO7ALA==
X-Google-Smtp-Source: APXvYqyO1ops0m2NjU8KwjPcAD8sBJb82SYmJeAe3QG9zbk6bUdb+TQgzOc+blt3L8rH0dnv9oZaXdQqFgFx3YOaRps=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr33085736ljs.54.1560803201838; 
 Mon, 17 Jun 2019 13:26:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190613210036.30922-1-mail@david-bauer.net>
 <7513956.bV6BmdoukA@debian64>
 <CACRpkdYbd2qY4=L1rrDnvnaPqMcKjfqdNB1kWg1+AJBKoZnjcA@mail.gmail.com>
 <c30d2d95-7d2b-ca8b-9e15-c0ffdd016ba9@david-bauer.net>
 <CACRpkdauGYJ3LU6Zhepczp80QKSch6Foz0EqOx_qu_ERLM23bQ@mail.gmail.com>
 <1ac0e1cc-dee9-1ab1-6362-b41c8c52b208@david-bauer.net>
In-Reply-To: <1ac0e1cc-dee9-1ab1-6362-b41c8c52b208@david-bauer.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 17 Jun 2019 22:26:30 +0200
Message-ID: <CACRpkdZ1TGXKj922yRhPRyHzdMDCcovw+1xT2dF2v_v+Qk6R6A@mail.gmail.com>
To: David Bauer <mail@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_132643_393622_50D897E4 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Jun 17, 2019 at 7:56 PM David Bauer <mail@david-bauer.net> wrote:

> Thanks for your suggestion. However, with your suggestion i still see the ghost press on bootup :(
> Just to clarify - I do not see multiple ghost presses, just one. The button is active low.
>
> After configuring the GPIO direction to input, the value of the GPIO reads 0 (pressed).
> After ~10ms, this changes to 1 (not pressed). I suppose your proposed solution does not work
> as interrupts are only registered after configuring the GPIO line as input and the GPIO line
> changes after registering the interrupt. So we are reading the interrupt state too early.

Hm this sounds like something that would be solved by debouncing.
It might even be a bounce effect of sorts, it can be a capacitance
or something in the mechanics causing this.

If you look in:
drivers/input/keyboard/gpio_keys.c
you will see that GPIO keys in the input subsystem has debouncing
support. I guess something like this needs to be copied over to
the OpenWrt netlink thingie.

If the GPIO driver supports debounce (some do, it doesn't look like
the ath79 does) that can be utilized. If someone can double-check
the ath79 datasheet to check if it can do debounce that'd be great
because it would solve this in hardware.

> If delays are allowed there, we could add a 20ms delay when configuring the GPIO line
> direction as input. This way we could also assure the line is stable for "normal" value
> reads. We would need to override the direction_input method provided by gpio-mmio for this.

That's like an initial debounce.

> Second:
> We could store the kernel uptime together with the GPIO line and for how long interrupts
> should be ignored within the driver. This could be checked when an interrupt is fired.

The third alternative is common software debounce. I.e. wait for any
value to stabilize before reporting keys. Some extra interrupts more
or less doesn't matter, we just frame it with some timer.

> I do not really like the second idea as dropping interrupts without feedback is probably not
> what we want.

I think it makes a lot of sense on mechanical pushbuttons to
implement generic debounce.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
