Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 103D8E9BE3
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 13:57:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kMK/DMr4G4AWIqPEp+Zr2Zl1As534Fuck+fk0AgWEYM=; b=aFKZGEr/O7YXN8TOmD+/2p3cQ
	iD3iSv6UT4bcByzctWL3dY8IEX24sCYHinnUoopD+1XGP0beK3hwvp+Vl95blcW3KJuStzTHUElQJ
	o6qQp2VVbQ8PNeOibjZx1gx6Qt1HLEpSVllcVa5s11W+zkUDo/WiuXEJ01YpJPdAhlj48aIN5+O8t
	/kTRmEL4rtspjiF5LZGzCm+5G2enVVutNO//mrWHa8QNZ76hj53WumefEi+Sunp0VifjoiMZ3xBWu
	3A7ueU6rtg1+QmKUL7crllyKzWqp2YcodIXkDL+k1HogiNicP9I0ZhbL6eFmOoQuydDslZObPIPmU
	dUKlVFmOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPnX1-0004JI-3O; Wed, 30 Oct 2019 12:56:59 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPnWo-0004Il-R7
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 12:56:48 +0000
Received: by mail-lf1-x142.google.com with SMTP id u16so1480161lfq.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 30 Oct 2019 05:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:cc:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wtNSensYdVLwPoFQhWsr1AW1lgmX0PooXHtHNi4QMmE=;
 b=vap7S+N9SBgyF7rCQKA8uo0cQr/C81U6mC5BMsrJiSKBDmUNxnHoNkgmb9niQRJihc
 w3nHgTys9GpQReObdLZDuJKQPm5/HEs/1z3u3Q6kl6M04dyfMOiM2HXu7wSIMwE9k320
 8zjkx1Ix4JNhclt9S005HfKkTUCoFrGp4vtf+0gsx1j1WUpyLUk9C1TVyr8t1tTbH9zv
 HzKjfqnwq+BElPRBL4voqmRhiLImVuzqXfXeg7iY29FRsF3JTU2tPzlVt+VJtainBMka
 0W9XBZw9Hk+odcnQAZCDR3jdFvGP0HTZSZl+6bi0SNZH7WpdsxVaDvpfu2amPw/jue5y
 8tnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:cc:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wtNSensYdVLwPoFQhWsr1AW1lgmX0PooXHtHNi4QMmE=;
 b=hG0Q0g32tT+ziwpevK4wHHWXFhnWEJ2YbczrPH0P7BkumDIOB7IpzMjBlJE7EPlyRJ
 KtUA8j3+Zr0U+TBCJdaCRRXdzVoNBpE1Mp4gjQ4nJtSmPyl7cjulOIy5HOZLqTfzoPlY
 yrIWKwtFGm7QkAFj/gK2i/ngaPbnKscfsyA85gxfgTZDYKocxu4C8AC7NIJ9nWznQIXh
 KFNW6gMEwxuS28YiQKkLdCVy9r+iVvxvnsLVsXTU1C/PKxn22pqqfI04Fl1nQkXzYVfB
 MRaBXdAtSS2hXZhroOdkfmwDEmpzFHJ3Eq0kL2E6Bx7DSZCaGMVTNHGy89jDHjUnn6JT
 5Cww==
X-Gm-Message-State: APjAAAVEzFLHg5bKiXarlXkD/ZOjfjuZWIjRisBU0n0zu59MkDBacKfL
 jR5mgK6aXJCKu8RguxaLk0k=
X-Google-Smtp-Source: APXvYqylmDG3uzEgU/lGSrVcfnXiKx2RNbVmNhMkvJnUQuRg03Jo4YDv2uB0CcMijAwHm99sLU36rA==
X-Received: by 2002:a19:750:: with SMTP id 77mr6047118lfh.81.1572440204824;
 Wed, 30 Oct 2019 05:56:44 -0700 (PDT)
Received: from [31.11.183.129] (031011183129.warszawa.vectranet.pl.
 [31.11.183.129])
 by smtp.gmail.com with ESMTPSA id b2sm973610ljk.64.2019.10.30.05.56.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Oct 2019 05:56:43 -0700 (PDT)
To: Daniel Danzberger <daniel@dd-wrt.com>, openwrt-devel@lists.openwrt.org
References: <20191030112726.13106-1-daniel@dd-wrt.com>
 <20191030112726.13106-3-daniel@dd-wrt.com>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <16badd28-d5a6-4c0e-8aba-be7fbee35681@gmail.com>
Date: Wed, 30 Oct 2019 13:56:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191030112726.13106-3-daniel@dd-wrt.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_055646_903788_88556071 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] ipq40xx: mtd m25p80: fix hang on
 device shutdown
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
Cc: mail@adrianschmutzler.de, robimarko@gmail.com,
 Mathias Kresin <dev@kresin.me>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Daniel,

On 30.10.2019 12:27, Daniel Danzberger wrote:
> Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
> ---
>   .../401-mtd-m25p80-fix-shutdown-hang.patch    | 21 +++++++++++++++++++
>   1 file changed, 21 insertions(+)
>   create mode 100644 target/linux/ipq40xx/patches-4.19/401-mtd-m25p80-fix-shutdown-hang.patch
> 
> diff --git a/target/linux/ipq40xx/patches-4.19/401-mtd-m25p80-fix-shutdown-hang.patch b/target/linux/ipq40xx/patches-4.19/401-mtd-m25p80-fix-shutdown-hang.patch
> new file mode 100644
> index 0000000000..779f7ec4af
> --- /dev/null
> +++ b/target/linux/ipq40xx/patches-4.19/401-mtd-m25p80-fix-shutdown-hang.patch
> @@ -0,0 +1,21 @@
> +diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
> +index 270d3c95..39f90436 100644
> +--- a/drivers/mtd/devices/m25p80.c
> ++++ b/drivers/mtd/devices/m25p80.c
> +@@ -256,9 +256,16 @@ static int m25p_remove(struct spi_mem *spimem)
> + static void m25p_shutdown(struct spi_mem *spimem)
> + {
> + 	struct m25p *flash = spi_mem_get_drvdata(spimem);
> ++	u8 command[1];
> ++
> ++	command[0] = 0x66;
> ++	spi_write(spimem->spi, command, 1);
> ++	command[0] = 0x99;
> ++	spi_write(spimem->spi, command, 1);

This is not the correct way to solve 'broken' hardware designs (I assume 
your board has incorrect bootstrap configuration and boots from 32M SPI 
NOR in default 3-byte addressing mode instead of 4-byte or the flash IC 
isn't reset during SOC reset).

I remember discussing this topic at least several times during reviews 
of some MediaTek based boards back in 2018, please see great explanation 
from Mathias here: [0].

Since kernel 4.19 we have an official 'solution' for that, look for 
'broken-flash-reset' property description in [1] documentation and 
deeper explanation in [2].

[0] https://github.com/lede-project/source/pull/620#issuecomment-295401936

[1] 
https://www.kernel.org/doc/Documentation/devicetree/bindings/mtd/jedec%2Cspi-nor.txt

[2] 
https://github.com/torvalds/linux/commit/bb276262e88dae52cc717bb636b7468f66bb234e

-- 
Cheers,
Piotr

> +
> + 	spi_nor_restore(&flash->spi_nor);
> + }
> ++
> + /*
> +  * Do NOT add to this array without reading the following:
> +  *
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
