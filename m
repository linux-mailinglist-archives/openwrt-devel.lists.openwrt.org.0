Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAB0B2BCD
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 17:17:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m75tYY2QgzYT0rTT/pUfKtWfGMP4fZ/tkp23XRkqIEs=; b=BwIBV4TMg2fv308NFBDLBD81B
	T0pHyLkt0nlIGfWKSqQb1TBJsioJgmhmmYLTziRSnQWd4oWxw+nx5KJQE/SN8omCDpc20m7x6wZcu
	m3ir5rmzLET7aLeLbd08JWwEoK3cgjVsMfouYdezAlDOAmCvIlwD/mVc4OY75IMoAPnPkgqoWDfVN
	heZtvJS7xZbI0r1OFXjwXCrNvZQDuVN9Ubihg6f+TJWIZ5Fxnpf17IcXGUyDrxAUkLugOZtCOOQ14
	KQGzPS21i/ZQbgCEH//3qpQR11stGJj2MxFD7d3msWFuHUEK0nx81vPuONqmDjGUh5jC7Y5dDpcZW
	2qovtDeJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i99nl-0007MW-WB; Sat, 14 Sep 2019 15:17:30 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i99nd-0007MD-MX
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 15:17:23 +0000
Received: by mail-ed1-x532.google.com with SMTP id f24so11854514edv.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 08:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=mf8PwtJGPgVGW5mujg56O/terAKXdMOBYlcPMZpYMs8=;
 b=wuH5KNacOkMELWRkvTIpxtVnyVZ9CzA9zRz7H0d4UZGstiC3urTeLLus3CT19Lv8KJ
 kbEOamEnIuU5KkWCFLYwAYQ0OxUaebrkhERlEwNI9E4ZUrB4ZjeTvV9od2fUwuvTNlr+
 slm/BN1vW8Yt+cPcUQwJTxeSYN4CYiHC876d8Wh11Dwbc+zr1ru2hITHmS4v9RBPHN+0
 fD0WFYyxycxw6GrGANUctWBrjKLgzXWKHY6ABKNARgqoo3vXn013akp7dhduoOkjTv+H
 vGB/aZyNB+GNyupK4/RgoTeuKBufLB2/W3Oi21jRBDXmkaGjKVJNDzpT+SxdXjaMJWtH
 J84w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=mf8PwtJGPgVGW5mujg56O/terAKXdMOBYlcPMZpYMs8=;
 b=UAk5qYw2FRLmb6/CuLgUBgkfDHcFKfVGbXGLsxempUUCiN+fRpF1g1hdhhBVIcfyex
 dMjPrtKlcXDuEskzLh3DvdcZD2icpuZM5vLprQteBrEd8ZwVVNHJUickR2IRSpk06dXr
 NYszDYexf/TOJdKXQkIMSmEs7AfK0aFD38RTJQueja9zoy0n/JEXLN82w4roKCWg8uWL
 zapFpWszpDfNLcTZHhQbVgg2iEBr10Y+hPgRO+YyqQRCvDcWAOBfFR6gHtBxAjh6m1+N
 Xidiyqcxl+jg48CfoqXeA9YF9jXUfkUtU3oFrLoH8iIi2CO4+DD9Kbj/pnG+iqcHl2iI
 A20w==
X-Gm-Message-State: APjAAAVZTfpf00+5lZgCbpalSv2A77twaqT6h7o6/OgCaJmsEd2pgj1N
 X46mFptGRzVMe6aue3qY9xQjTpNrrpc=
X-Google-Smtp-Source: APXvYqx5jo0VIk3HipJvmwqAnU0ZRIHIw6ovSkulhX8RVzezc4MGCT6RVtWiTXDJMIArp26dr6LSdQ==
X-Received: by 2002:a17:907:2102:: with SMTP id
 qn2mr44702518ejb.266.1568474239208; 
 Sat, 14 Sep 2019 08:17:19 -0700 (PDT)
Received: from [10.33.34.5] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id gh12sm3529052ejb.6.2019.09.14.08.17.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Sep 2019 08:17:18 -0700 (PDT)
To: Dmitry Tunin <hanipouspilot@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <CANoib0HNz7cFvq_6OtSPWR-ZTyARkMspxe4eawO1t9G=SW_pLg@mail.gmail.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <6ad6e005-f29d-1b4c-70af-55b5023b3855@ncentric.com>
Date: Sat, 14 Sep 2019 17:17:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CANoib0HNz7cFvq_6OtSPWR-ZTyARkMspxe4eawO1t9G=SW_pLg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_081721_794167_2223ED17 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ath79 on 19.07 doesn't build on 4.14.143 kernel
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


On 14-09-19 11:59, Dmitry Tunin wrote:
> Patch target/linux/ath79/patches-4.14/0027-MIPS-ath79-drop-legacy-IRQ-code.patch
> doesn't apply
>
>
> Applying /home/pilot6/LEDE/openwrt/target/linux/ath79/patches-4.14/0027-MIPS-ath79-drop-legacy-IRQ-code.patch
> using plaintext:
> patching file arch/mips/ath79/Makefile
> patching file arch/mips/ath79/irq.c
> Hunk #1 FAILED at 1.
> Not deleting file arch/mips/ath79/irq.c as content differs from patch
> 1 out of 1 hunk FAILED -- saving rejects to file arch/mips/ath79/irq.c.rej
> patching file arch/mips/ath79/setup.c
> patching file arch/mips/include/asm/mach-ath79/ath79.h
> Patch failed!  Please fix
> /home/pilot6/LEDE/openwrt/target/linux/ath79/patches-4.14/0027-MIPS-ath79-drop-legacy-IRQ-code.patch!
> Makefile:19: recipe for target
> '/home/pilot6/LEDE/openwrt/build_dir/target-mips_24kc_musl/linux-ath79_generic/linux-4.14.143/.prepared_bdda8d3146b44452afe9accda800aa5d'
> failed
should be fixed.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
