Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602141F08CA
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 22:35:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0Xy3uaRQM/nkRwh/m1p/ag8ayd1TIEo2jli8zG5ZZ8A=; b=Z8J6PNXl8hl0GPVJx5sr17c9b
	TFJT5ox63lvkdoBh/VHxFhegrJ01EbuLOFHnuNpId914WXrsmEteRKUrTTs4WicWgqeLsFu1N4Luz
	Xeibjtl4+lvO2JRfMb2dN4j0zWBrve8QQj01NhyYcMBCHT4g6j4sGq5XeDKKxKA6KF56N/8SE5nCC
	G80KY7W6CV9fnPVmOehuTiTncNb0uQ9kMOS/BmYoS0nItXXMMZJfLv8Yuf8ajKo5KSkmG84oKvXxK
	WYc1B3TAYiziFPHUWPho6u8SX6TjhXwcgmOPD47k7foF5VTLX+ZF0t4skiSVJ6PNMsDFFLYhFuM6T
	mBIn5O2ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhfXD-000764-2p; Sat, 06 Jun 2020 20:35:19 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhfX6-0006W5-GQ
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 20:35:14 +0000
Received: by mail-ej1-x642.google.com with SMTP id l12so10176458ejn.10
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jun 2020 13:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2n1++HqTvoH+grRL3p8QlqJFz4S0XN3/67Fxx6YFRy8=;
 b=YfIz35hOnNeHPR26l5Dh9T5rI8PHehN66fYf1dmekVTUEOYhmNDkQrIWORqen+jLGq
 3B4C0ueYxZs6bEkPos60aEgVT6eNNIYUoPYOGVzHIL9MBq+UkOe5zgLAGJsmMeiPUOke
 UDMEpBQlYBJzGOdYAlSbcjwk5JCFtHtjCBLDkW7oABRmXBKTikKJed4+zb8IMJMNGt0r
 gmOSevD99z72MXVm7IGMt7pwCkzoPKRF2xXJjIktc8KjXoTe0nB1CYfo2/1LeZL+rQpl
 7JKU1ICyRz9RWMmHVKHI2EWswvPn6ayaBnUsmqkg7qZnZrCZ7LXeKwH4gjuSQE1Bh52C
 m/wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2n1++HqTvoH+grRL3p8QlqJFz4S0XN3/67Fxx6YFRy8=;
 b=qaZcx/JuRrq4Y+hPBIg1jaxlAzU3hxHLdgjnzGaJOW/yWxgE/wHa/QJUqa03eVKvtO
 pOQdVKlrArMDrPfXE1xNlOhWLpUknn3ovcPrwH3PR+zOLZb7OII+0CO1GLQrUBmjLOH5
 zc6e8z+u+dYwsgI4eSAS2SD3C7jRVmaU2bruHKEM318T9rYKfTlzHUQHUMJWXki/K/tB
 4TiNAlwoiWov0O4S61ad99U7XqIms/Av7ntMn+ArTpcMCsDB8+SBFDOdvUQRcEXACwmK
 BFc8w1A+xZIU1NZeK4MpblOpCOoGX4wn73eO6tPukr/BDUvTeh0vAmdEuzI38YzIfg78
 2o8Q==
X-Gm-Message-State: AOAM5329Natmg/vCqBFbyG3AimzrqBwE08YV0bGIigQBCEchwZIM9hr0
 JMJRDKmZb9+2EFh1zUEqRvpAkmiTBOw=
X-Google-Smtp-Source: ABdhPJzZmUaKPicsn/y3YseNHJ5OIbl1oDniuIHKLp02/ZcVAippRhzMqmHMVrB/r99xoywBrXyRsg==
X-Received: by 2002:a17:906:2a41:: with SMTP id
 k1mr14485868eje.502.1591475709131; 
 Sat, 06 Jun 2020 13:35:09 -0700 (PDT)
Received: from ?IPv6:2003:ec:2f1a:7900:f14b:1a00:3d0f:7221?
 (p200300ec2f1a7900f14b1a003d0f7221.dip0.t-ipconnect.de.
 [2003:ec:2f1a:7900:f14b:1a00:3d0f:7221])
 by smtp.gmail.com with ESMTPSA id y26sm7993622edv.91.2020.06.06.13.35.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 06 Jun 2020 13:35:08 -0700 (PDT)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200603184222.14201-1-freifunk@adrianschmutzler.de>
From: Mathias Kresin <dev@kresin.me>
Message-ID: <167bdc08-5ec1-1187-def0-2d726d08a6dd@kresin.me>
Date: Sat, 6 Jun 2020 22:35:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200603184222.14201-1-freifunk@adrianschmutzler.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_133512_648718_DD215040 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: drop WiFi migration script
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
Cc: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

03/06/2020 20:42, Adrian Schmutzler:
> From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
> 
> This migration script is meant for migration between 17.01 and newer
> releases. Since 17.01 is EOL for quite some time already, let's just
> drop it.
> 
> Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
> [extend commit message]
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

NAK.

Why should we willing break the upgrade path from 17.01 to any future 
release?

EOL doesn't mean it isn't used by people. As long as it doesn't hurt, we 
shouldn't break the upgrade/migration from older releases.

Mathias


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
