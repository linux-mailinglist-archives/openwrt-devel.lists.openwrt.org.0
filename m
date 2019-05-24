Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5722A039
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 May 2019 23:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lkw6uVv+t+wELbDw3gPJO3ukeiBrnW1mN69hek3KAEg=; b=aanktLhWfhXCPc
	XHQRKOw5JD5odnxvlMbPfdG99qLr8CONE+IR3qBDHlyTM2y+qo3Ho8SKO5XPZFEK+6zoKRSmWktEM
	516eAyjwiM8gRg5tCYp5mSl7kdnA2j6o22ju8r2cB/j8qC3qBokzn6agjQ9nvOcOfSZPe8zGNTk+X
	ZiSCYZfi06iYWWRT32+8kTh6eBr3An7wq7mUApokiKwBEiTc7wOk1z3aiwQRbizaklGYMrInNZDI6
	r+MjW1miPL+DWMYcG3xxSilmbqDQ+GO9/PF1phje0nGG+o1QZNFYFpB4gCgbNSvf9rn0rIcaBHIs3
	X7IMrcG/1EDjqaxS0mKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUHRw-0003MT-Ej; Fri, 24 May 2019 21:10:00 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUHRq-0003M6-6L
 for openwrt-devel@lists.openwrt.org; Fri, 24 May 2019 21:09:55 +0000
Received: by mail-lf1-x144.google.com with SMTP id b11so1688189lfa.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 May 2019 14:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uA+B7eCwFVLx4ZyJ+qkakuJZPWogfu1K2ToQPMfQzFg=;
 b=Ij5xBKLLLzOAnOP7bQATNTOYMCjt4XZuBivT9uCjBdBC7LEE4C6pDutuNq6en7w8hF
 /k8qicFVl/7Rjn09SmE6FPoejfYG6S9pHKLtvsCqLpztLuL0HWN/IKMT2s7bCv0AuohY
 2HGS3Kba5btpa5rjpRfaTUDiqOTLlRZZ20oWorQ21YkY6WzkeypgGIE+JEcKsBIc8XFn
 8r92NhS0p79OiWElaDNomEGIvnyodj8DxMu9/aSK19ZTNd5gJKZxZbRmL3Ry6kvxc8eQ
 GRQ+f7HtTlidf9D8q+uZZqtZWQu4eQRyGU7oO67qhs0ai8IoU7+ati3pib/1QtxwKxBV
 3cnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uA+B7eCwFVLx4ZyJ+qkakuJZPWogfu1K2ToQPMfQzFg=;
 b=i/EkxgAIMC0Zlsiy3Da+6XB/TsKI6DotOCfhdCYLnXJn9agEyO8yMct0FX9VTTxwU4
 xDdTtT18i5jZMbgF1/Tr8pXng0lVlc0l4OS3nXduEY2TWotTL64rMREtlPViNCWcvZXx
 FO0+8zGuHHeQYgvHnM52ThBjUM9lE0I4ec2ECKldHQpPo/naQWE0RK5aOnZ2fpfrQCbt
 osow3Iah50qyJInswh5EVuWAnLvsXu57oRARsIUy2ORirramho9fvSoJiVEvTHev1huM
 avSJ/6qQFkNIzb3SnYOSdyopQsH21gos8VxW4k3BiHjjHj5SYtuR1Jl6dR6+JRuvxs5U
 kcXA==
X-Gm-Message-State: APjAAAWUwmtU60So+patFE1PqSf6IfXfJCmJ90dekUmdtYUDS2jbwOt0
 EAMHe2SLFlnuX/L0O7Tx4mmS1S9x8J+XW1yzNm8N0w==
X-Google-Smtp-Source: APXvYqxUoDlHzA7k7qID3jHvD5Pj3otaHBKc2jeb7lyYQe2Sc+JKbWsDUoQ8SpBxnDbhjbT/mfwyBB/j7zVaazIEPZs=
X-Received: by 2002:a19:cdcf:: with SMTP id
 d198mr13196789lfg.115.1558732190859; 
 Fri, 24 May 2019 14:09:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190512173151.27388-1-hauke@hauke-m.de>
In-Reply-To: <20190512173151.27388-1-hauke@hauke-m.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 May 2019 23:09:38 +0200
Message-ID: <CACRpkdYjbOihH4G1ND807JhbXjx7YnhGcnVmSqmakOagGVK62w@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_140954_295389_D0493BE1 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: Move some DSA config options to
 generic config
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Hi Hauke,

this patch regresses my Gemini systems because I really need these switches
to come up and this patch:

On Sun, May 12, 2019 at 7:32 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:

> diff --git a/target/linux/gemini/config-4.19 b/target/linux/gemini/config-4.19

>  CONFIG_NET_DSA=y
> -# CONFIG_NET_DSA_LEGACY is not set
> -CONFIG_NET_DSA_REALTEK_SMI=y
> -CONFIG_NET_DSA_VITESSE_VSC73XX=y

Deletes my selected DSA switches and:

> +# CONFIG_NET_DSA_REALTEK_SMI is not set
>  # CONFIG_NET_DSA_SMSC_LAN9303_I2C is not set
>  # CONFIG_NET_DSA_SMSC_LAN9303_MDIO is not set
>  # CONFIG_NET_DSA_TAG_DSA is not set
>  # CONFIG_NET_DSA_TAG_EDSA is not set
> +# CONFIG_NET_DSA_VITESSE_VSC73XX is not set

Adds them to the generic config as "not set" (disabled).

It seems this needs to be partially reverted for Gemini to work,
but not completely.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
