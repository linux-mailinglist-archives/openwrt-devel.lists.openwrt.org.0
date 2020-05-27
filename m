Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7823D1E43CE
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 May 2020 15:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VkHF3v0XZF6EFp7fZcooKGCBYICYMTmM1HapzrQ/ofM=; b=rVSuIWhkhEmH65xzZqQwLAz2W
	BgiKzE0zvzsJCFpaHm6P8HCqpxPgC7CkxviEfRo/nuZtqiKY2bZ8E3UJfMIMJWvxtmG7T+ZAPmiyb
	iChTZmRyG3UxWMM0zr+OcwFJwM2ur3TdiVqsrk5raat3PIAxc3NcuBynhCJIiqP8lcnVSolw/M8lg
	bvy0BzU3J+e0hWISc6cPpj9U+UIvoEhUbM/LAZ7k2mw87EFYxlFYa/ybox2jX7eUnf5oA9pdLM3fg
	RLX+ioGXPYfe5EbnevUmjPGGe8CX0OUo0VtKH2eSNubm0HVvqeTl3d9OfhHGP0rCxJY2IyxH1XJdn
	sMTPnGGng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwBw-000662-Q5; Wed, 27 May 2020 13:33:56 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwBb-0005wA-MY
 for openwrt-devel@lists.openwrt.org; Wed, 27 May 2020 13:33:37 +0000
Received: by mail-ej1-x629.google.com with SMTP id k11so2914397ejr.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 May 2020 06:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=U1I95PvOPq+D501QkfcSJIhXKZuW/KdcueWch22UNZA=;
 b=FCMmyS+JDd/G1iFHEvL00VNjfqf2APGbBke4KESAQzHrC0qQgU+QEciqswZZLyFJUm
 eSY5TY5Q8fe4GDKHbmGmFOxNhyXaibHIAHqoszdY6P8vGB5zQblh4SHF/rfwHri+xHpF
 U0oOP78qkaBaFbJh3d0bfV+P0JlpQYBubXbPetAeAbR9YjJcJSZSxWGe63hfXLGBNf4U
 VaXyJoygQPjKKl0Lose5Bcss5dVq5iXyc2YwhKbCwbf8hkp3zjQK4+7BLfKGO09tf3mi
 4TqRSjaQJYxY7CiRh48tQh5+IsnI3kTkqFEzgCklkIeiie+QbsV4oTzn+FrUDp7x0XLy
 zzow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=U1I95PvOPq+D501QkfcSJIhXKZuW/KdcueWch22UNZA=;
 b=E8yMF9PNEu2HJPgFj0yuWGodOv33wTyB3UhoYknmAoi3xj01/N7srZvNSRaWMvvCwK
 25rNo4O7RJwDjMVlv6kzSxdUhClwOz0KkeHqutOlhKZL77rg2LuE4IlDRCmJCWLAZAj/
 gSMTY7fex2CGvvbIvXxZiXn6HatKVZ6CF5f9BBem+e/xhUtiKXVfY+EhMvpEDqubmfdj
 9hIeU0Le7Y+lZkw/sdJcK6k7KfRmGKhHiwBHuHc+vFKEjVsX8M2EJPbypVcLt2xDgOfL
 qqSXbQxPmuJjf9LkdS4x6E/hSYBaQbBXB+IJnv7fmiBjYlOZ9UzjBq/NyxznpqkX1YxW
 fmFA==
X-Gm-Message-State: AOAM532wdJ9GBddVAKlDBRctiv0i7kqK9x19L5rBLOqdZUjhACC8bcUk
 bA5konDXpKDzGHPxVa0LdaSNlmlbRz8=
X-Google-Smtp-Source: ABdhPJxes6Yh5LR1Gb3lT8zHvhgoud3h59jA4DxlBmSo6aQer2AykPLUm4NanBZ75DK9GSS7JKEBHQ==
X-Received: by 2002:a17:906:f6d6:: with SMTP id
 jo22mr2813008ejb.310.1590586408352; 
 Wed, 27 May 2020 06:33:28 -0700 (PDT)
Received: from [10.202.0.7] ([31.31.140.89])
 by smtp.gmail.com with ESMTPSA id n25sm2374791edo.56.2020.05.27.06.33.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 06:33:27 -0700 (PDT)
To: Luochongjun <luochongjun@gl-inet.com>, openwrt-devel@lists.openwrt.org
References: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <332ee2d2-3a6d-3607-a472-7a7667bb3e5c@ncentric.com>
Date: Wed, 27 May 2020 15:33:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_063335_810350_362536BC 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:629 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-e750
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 07.05.20 13:46, Luochongjun wrote:
> The gl-e750 is a portable travel router that gives you safe access to
> the internet while traveling.
>
> Specifications:
> - SoC: Qualcomm Atheros AR9531 (650MHz)
> - RAM: 128 MB DDR2
> - Flash: 16 MB SPI NOR (W25Q128FVSG) + 128 MB SPI NAND (GD5F1GQ4UFYIG)
> - Ethernet: 10/100: 1xLAN
> - Wireless: QCA9531 2.4GHz (bgn) + QCA9887 5GHz (ac)
> - USB: 1x USB 2.0 port
> - Switch: 1x switch
> - Button: 1x reset button
> - OLED Screen: 128*64 px
>
> Flash instruction:
> Support for sysupgrade directive upgrades, as well as luci upgrades.

Hi,

I retested this patch just to be sure I didn't miss anything before.


Did you test this patch on actual hardware before sending this?

I've got 2x e750-Mudi devices which:

- I first flashed to the latest Gl.inet firmware (18.06 based) (works fine)

- Tried sysupgrade --> results in platform_check failure

- Tried forced sysupgrade --> does not boot afterwards

- Tried uboot recovery (both sysupgrade and factory images) --> does not 
boot


Using gl.inet official img, the uboot recovery mode works fine.

Thanks,

Koen



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
