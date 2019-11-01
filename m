Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DFAECA2A
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 22:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btdguWvbVvQt2dF44azzU/SF9L8ILk9J5omllwqmzUw=; b=sfQ9MI/+1goe1T
	CnfrjaNt33hjkVF2nrJz5rcO8YXhtlBtsKolpnZxW2BofNiAhi/V1P0pyck9CQdA92nlpmoYoL/Tq
	qDdKbEvRPXAvMwkZ+ObADk18P6vSrewcdYcz9iCuuG4rFYLABjqa1mjMEkA2wshU/TYOomCCSK+fK
	I0xp8m5hnt5To+x1zRswgs3xjvNRR3zaHiyRiWqdnyoX35UCsP867Bki4O05Ec/dMYXHyyKeV/foY
	uXrC8UmGBm+tYDCOF1kSB4lkPpzVu/ayWe4KaA5voA1IdmQZpTn3ditTTRMLUxEdHjiYLfGkN9Ig6
	SY69oxe1bYwerBoKyPSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQeE7-0003uJ-BX; Fri, 01 Nov 2019 21:12:59 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQeDy-0003to-MC
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 21:12:52 +0000
Received: by mail-oi1-x242.google.com with SMTP id r27so9326825oij.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 Nov 2019 14:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SLVdPji3OvIliCIukNUmj/zprLsnQ7Q9qtzbNsUesJA=;
 b=BFHetmyKP2PHoud/XbTdRoLW8EHvxQjOwJOy+NVk1SAhzgNT+jpV5LlX3AzPp7s6cj
 Z7qLH0SifoCf30/Q2LKrPFp8ZKdT5MKaNYiNjCo8fqVQ2OTJBkJk3/dErBw8Ur6hX7Vc
 IUAa3plkIvVWoFjSCRD/3EKZLifq8L/FbVBIzzZqSl1Nvz5ZzraWoU+xN/NMMuRe44ix
 ZOGKtLTyF51POElLh9jSqaaXYQv0SY+2gcxrUkhwtZnHcmBdwFhVeV5ds+WQlNEOcYUf
 h/JjS7Kxlvn/2hVEyEItYlHVhSeNVlmdZB8SrfNPtKdg1TaOIGrXo22EasAH2PoeV9ng
 Qwvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SLVdPji3OvIliCIukNUmj/zprLsnQ7Q9qtzbNsUesJA=;
 b=KQ5pKtfrxpotCS3DmXKbV6ld8OSoe/Lykfgrlv76ulebph7HL8cyj4KygKwg5zOKTQ
 GtdqOVlMXsRsYWpB5Flah5BsvAaADkXgJ1pfk7OhAoV/sUcqOu0ouXxLuxzQzCyL+VZw
 mx1QAIHl4UC5FeaQ6wo3rH4WYYaAZVA0Nwk2oSzjCGaB069P+aAqDv/0AyzYVJKQGWOq
 QDO7f0iMZAFOC3OAalQpj+4R9zwvBVA8tugMQttxb4rpSJVPOqi4PQRBdK/meacxJ6YO
 NuxlkJ5k9qJ0AS2r8xY8SRQdYgnzlvzkE6tIGpCfd8zjFkTFppwC1a19LRIAMxxj8fuN
 IGBg==
X-Gm-Message-State: APjAAAXy2S6ts3sPCLA7lcW9IdqGZ9TbPCdCI8fdeWGYteNCVKfnPOIN
 TVWHFGFL8ROUtRZOsHOuzumz69QyrymaFcTCyL0AQx2K
X-Google-Smtp-Source: APXvYqzLB1z3cc5fIJsbyiNEdWwbdVq78L8bplzmPdfOT3TcN+7oDPgJKPy+OuiC+DCw4pHAyYAbVeX3ZC31/xn6Zuw=
X-Received: by 2002:a54:4601:: with SMTP id p1mr6618284oip.113.1572642769531; 
 Fri, 01 Nov 2019 14:12:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191101205416.17599-1-hauke@hauke-m.de>
 <20191101205416.17599-2-hauke@hauke-m.de>
In-Reply-To: <20191101205416.17599-2-hauke@hauke-m.de>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 1 Nov 2019 14:12:37 -0700
Message-ID: <CAKxU2N-EHMvoj9mcWYQu4fa0yUpepkxLV3_TiGKHTSXn_OJ2aA@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_141250_729082_23C72F8D 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] mtd: Activate LTO compile option
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

On Fri, Nov 1, 2019 at 1:55 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> This decreases the size of the mtd application by 25% on MIPS BE.
>
> old:
> 20,597 /sbin/mtd
>
> new:
> 16,421 /sbin/mtd
>
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
>  package/system/mtd/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/package/system/mtd/Makefile b/package/system/mtd/Makefile
> index 2347b8b723..166bb33281 100644
> --- a/package/system/mtd/Makefile
> +++ b/package/system/mtd/Makefile
> @@ -36,7 +36,8 @@ endef
>  target=$(firstword $(subst -, ,$(BOARD)))
>
>  MAKE_FLAGS += TARGET="$(target)"
> -TARGET_CFLAGS := $(TARGET_CFLAGS) -Dtarget_$(target)=1 -Wall
> +TARGET_CFLAGS += -Dtarget_$(target)=1 -Wall -flto
I don't think Wall is necessary here.
> +TARGET_LDFLAGS += -flto=jobserver
>
>  ifdef CONFIG_MTD_REDBOOT_PARTS
>    MAKE_FLAGS += FIS_SUPPORT=1
> --
> 2.20.1
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
