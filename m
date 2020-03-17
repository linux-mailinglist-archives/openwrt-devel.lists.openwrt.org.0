Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E14F187820
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Mar 2020 04:23:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cx+XBUnwHuOmdwxQ2Rr2ehdWJsQHeL6p9eeuOJBslDU=; b=Zb+ppEA5ZEQbmn
	tthReENqn6W2zizMVxDvWoVBDkISmXwZx8UJVZ74sAtBEeDSfsq9OWtZcc5W4BOVXgRBnQ06UMt1y
	4QIRTwkGgZLdGkvJdAwwU9OSzFS17OMMU5Dxg4DrydQtuTGvKxm/koY/U/JYOhjTPyxkXtCaBH78z
	pb7pbSGUmrkVVK8GZQ94bwU0ZL4wxGx0375437Uf7/apSwD/RZfo7YtiSkXSrVm5Bmkj2bqLqfmu5
	1rv0KrU7fbrP361ncvV+dvEncqYzkduh9UsXLT2tFsz2a/fWglyJu/ST1qTIew0COhHmNq9h/bi69
	k0YvLNcLNaL5XkNIdSLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE2ok-0004S6-8R; Tue, 17 Mar 2020 03:22:58 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE2of-0004Rc-9F
 for openwrt-devel@lists.openwrt.org; Tue, 17 Mar 2020 03:22:54 +0000
Received: by mail-oi1-x243.google.com with SMTP id k18so20280525oib.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Mar 2020 20:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wd6E4QwEKX+N/FMPBuxkySJrElJgcPmz+W92x3qTOoA=;
 b=DDXmAIz8xcHjyKltzy26KioF4Q05nAZ6cd/YXH4jkdImRCXM/r55aLsCn+h+yWKw93
 UY0wnrl5DHszqEVLaoaNLbvNTdiHUc4sw9keK/gZdamVrnyt8dc/vdsIzUKCk3knt34u
 K2yv/HoZyBxpA7Hbr+wxe/mVuKHcOMQ8SvbYwQp9lYwmTFmUNO0Z8hbuGwa6aHpbs7BV
 AO73S0XTK4zH51EI7rMo9dBhOmzNFzuZUW6qb3ECey/TToDloYzHwcI5BWj40+kz9XRZ
 +Lo+gURuzYBeXdEdaGW/5/JW6IlsxH55qQhMJtYGqVll2TZW3VwGz66zuKViHb7M8Tp8
 qIAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wd6E4QwEKX+N/FMPBuxkySJrElJgcPmz+W92x3qTOoA=;
 b=p3yKIkJMcSwWNMUTmP8jOOe2oRfqCqZTHRQ/boeTjUvKHu57zvA3gp1PpAxuzEel/a
 bkSToTG+irwhw2Y1MjvZUEVrjkEBFWbPb8iRuMDNkRbKaecbCWJftCEhju62Xu5oW4jH
 OJlUFzRDKLg/vsIcbuN+nODBymBmTae7Rnl2nEYpotU8G2GFibIoep3+K/ySLVNgYDf/
 Oilcv7RKE0CfwM5SMegEub1zai1l3scWTWspQd0El1jbh6c7/0Ij14y47hOAjkF6EyXs
 7NrdyPUm38IC93TH0/uRmqzG93P5evcB88PyD3o1e4a6pURedibG4sz9d4IvtTRZweRd
 GI6Q==
X-Gm-Message-State: ANhLgQ3+hb7VY2gd5MuvnUICKkzFta9zrVPPfuf8rDHOFHrHFBiNm708
 wJ643vVeimxhK3u719aeIs3Asv6I67EHBWCz5QBeR/2tdz0=
X-Google-Smtp-Source: ADFU+vuiLViyFkupRSPEpsnr7f+dX8VBYW9TVrDFVQ7YPc2ZncBkDS1pso8z6muIhvTnm+BE48friOXXjIdx0FOb/3w=
X-Received: by 2002:a54:4396:: with SMTP id u22mr2056537oiv.128.1584415370241; 
 Mon, 16 Mar 2020 20:22:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200316103654.545284-1-gch981213@gmail.com>
 <20200316103654.545284-2-gch981213@gmail.com>
In-Reply-To: <20200316103654.545284-2-gch981213@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Tue, 17 Mar 2020 11:22:39 +0800
Message-ID: <CAJsYDVKkeM+WaGJmYK4ra9j6N043V6R2y9eVyCuHFoCR6fSkyA@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_202253_327500_EBFF0703 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] kernel: rtl8367b: add configuration
 for extif2
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
Cc: Serge Vasilugin <vasilugin@yandex.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Mar 16, 2020 at 6:37 PM Chuanhong Guo <gch981213@gmail.com> wrote:
> +#define   RTL8367B_DIS2_RGMII_SHIFT            0
> +#define   RTL8367B_DIS2_RGMII_MASK             0xf
> +
> +#define RTL8367B_EXT_RGMXF_REG(_x)             \
> +         ((_x) == 2 ? 0x13c5 : 0x1306 + (_x))
>  #define   RTL8367B_EXT_RGMXF_DUMMY0_SHIFT      5
>  #define   RTL8367B_EXT_RGMXF_DUMMY0_MASK       0x7ff
>  #define   RTL8367B_EXT_RGMXF_TXDELAY_SHIFT     3

A change here is missing during my manual patch application:
--- a/target/linux/generic/files/drivers/net/phy/rtl8367b.c
+++ b/target/linux/generic/files/drivers/net/phy/rtl8367b.c
@@ -176,7 +176,8 @@
 #define   RTL8367B_EXT_RGMXF_TXDELAY_MASK      1
 #define   RTL8367B_EXT_RGMXF_RXDELAY_MASK      0x7

-#define RTL8367B_DI_FORCE_REG(_x)              (0x1310 + (_x))
+#define RTL8367B_DI_FORCE_REG(_x)              \
+         ((_x) == 2 ? 0x13c4 : 0x1310 + (_x))
 #define   RTL8367B_DI_FORCE_MODE               BIT(12)
 #define   RTL8367B_DI_FORCE_NWAY               BIT(7)
 #define   RTL8367B_DI_FORCE_TXPAUSE            BIT(6)

I've fixed this one in my staging tree.

-- 
Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
