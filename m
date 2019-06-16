Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBEC47761
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Jun 2019 01:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72EA5gp9o4iL8p3xxd6Jb+yLdyWj/uuE5Jpey9UcG1c=; b=XIzih+UjRAzcED
	h/MmFDW2fgr/YsDy/90qqffcJt6MdmGQ/Pd341I5YMi6Mht1hu7k3Ca+rOcnsFpDBrzFKWApn/sQ7
	0qJ5ubv9yEdy/VMfZhzeXHhH8ZzGh0peVrOuULMGiQ5rSGC5c45BfcZ8zWnP4H5SqEdGA7dePDm9/
	XaPrMfnNuVMmZKigkbAFkY52YtZ1l1FZDiK+GsLTXufViRgi1zq5trB6aIoqQhd9/rZyFCANKd8kW
	nwE1mFKRodtSkuqdI54YDdYkwghPYnXiFLzS28JaKLiedvguzbAo+7azBgwJunOm6OQ8TWyrXZWmi
	6iDla+X2fyMt4sZkxY2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcenH-0002Aa-AR; Sun, 16 Jun 2019 23:42:39 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcen8-0002A7-M4
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 23:42:32 +0000
Received: by mail-lj1-x243.google.com with SMTP id i21so7511612ljj.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 16 Jun 2019 16:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uxnL1FNkRAv569lCbtg1IInSbticKJbeA0XS7j+v+1Q=;
 b=hOJLoXT9rPkKk5XgMfXYlLR3ay3myoZXPyx8FxdJZgiZdIrHXM//+42nrwtiaJafOX
 XRcRL4OnzXAaSXEt0vHNOW0XdGgHJlSy6fYcpvcRFrLVh/9REmHHAD/BUR4bH4oU5lvW
 NNv6ajJ3WbMxl88NdO39Zt+O+W8swyqSXbKc7bfS395YnHA+idp/RWn4rcJwXqlp+kc7
 mvejllyH8JgcvNDqnvi6w/P8ey7e2LEzoxMUmRVw61jRkeEiqQNaEQEPKsxxLrdjEas7
 eojsw+SMHtp649roelEbjLq6mWcT7asz2jcAS+kvFsrpI6EK0NfVELjr1VMhR3x7WlxY
 ToTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uxnL1FNkRAv569lCbtg1IInSbticKJbeA0XS7j+v+1Q=;
 b=q7sipplCo8tj5+LDN7EaWsfN8qmgXjppp5VsJuQn1zFLdsevh4glO9qHOPFUAfXmDl
 m1XWm4VpC3t6YKzS/BgR5MtX++8JPTP7xLO/voUEqPhh3FPGnqcFGBGS2PiQc3CWloqZ
 BtD74nMBuqioHqeTz8BUpSyS0yuXqCyZ/sX4AfNfIcplTQU/67qsE2MChzUZL8pWgEuS
 axC8pZ+klSJ5hgCcDL/yLR9ilbu5dXAnhMyvLI3fFnXkRgUcFSdwEW3Sdhc4K54hyoWH
 c58HIr2IgVHh2eXMGYoFB4fAjz5V6eQcqqhPwOp08JypystrJccZrkGKw0VlYDmNDZkD
 wPcA==
X-Gm-Message-State: APjAAAWN1aGmNpKxH7Gfkdj1xbnvyW+aFPKyERH/GQMK8W1YP7h7jMCI
 6e40bMx+1CyzSp7yKgzKfEbOcE35g5v4Nm4OItZXwA==
X-Google-Smtp-Source: APXvYqzPx2L6Sb7ul1Y9gWkq/UmoiSex2vpatEW/OpcFOtlkheSq/WgO1viW1cH+h8cmTnWdG+KZTG0CUujS6JaCasI=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr30123486ljs.54.1560728548872; 
 Sun, 16 Jun 2019 16:42:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190613210036.30922-1-mail@david-bauer.net>
 <7513956.bV6BmdoukA@debian64>
 <CACRpkdYbd2qY4=L1rrDnvnaPqMcKjfqdNB1kWg1+AJBKoZnjcA@mail.gmail.com>
 <c30d2d95-7d2b-ca8b-9e15-c0ffdd016ba9@david-bauer.net>
In-Reply-To: <c30d2d95-7d2b-ca8b-9e15-c0ffdd016ba9@david-bauer.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 17 Jun 2019 01:42:17 +0200
Message-ID: <CACRpkdauGYJ3LU6Zhepczp80QKSch6Foz0EqOx_qu_ERLM23bQ@mail.gmail.com>
To: David Bauer <mail@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_164230_752399_532830D6 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Jun 16, 2019 at 4:31 PM David Bauer <mail@david-bauer.net> wrote:

> It seems the input is indeed not stable after setting the GPIO
> direction. With the following patch applied, i get zero ghost presses
> and the buttons work as expected. However I'm not sure if this approach
> is the right one to fix the underlying issue.

It shows what the problem is for sure. delays are forbidden in
irqchip callback functions since they are all called from
IRQ context with IRQs disabled though.

> @@ -96,6 +97,12 @@ static void ath79_gpio_irq_enable(struct irq_data *data)

>         u32 mask = BIT(irqd_to_hwirq(data));
>         unsigned long flags;
>
> +       /*
> +        * The input can be unstable after configuring GPIO direction.
> +        * Wait a bit to assert the input is stable.
> +        */
> +       msleep(25);
> +
>         raw_spin_lock_irqsave(&ctrl->lock, flags);
>         ath79_gpio_update_bits(ctrl, AR71XX_GPIO_REG_INT_ENABLE, mask, mask);
>         ath79_gpio_update_bits(ctrl, AR71XX_GPIO_REG_INT_MASK, mask, mask);

After this and before the raw_spin_unlock() try to read the status
register until it
eads zero for the requested IRQ:

while (ath79_gpio_read(ctrl, AR71XX_GPIO_REG_INT_PENDING) & mask) {}

This way we wait for the status to go low before we allow any IRQs to
fire after enableing.

Maybe not so good since we may want to turn on IRQs that are asserted
at some point, but worth a try.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
