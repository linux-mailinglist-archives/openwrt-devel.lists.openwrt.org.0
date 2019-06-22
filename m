Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12B24F61A
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 16:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ON5+Ne0Id4KwsmlX+WUiiAuRAK+kmcOx7iSgf1gD7mI=; b=WxktAxlnNI4oE0hCasELKZUpI
	d3qeGlea+uUeuP8zE1KFPLgQjY1hYLA7ozLQiJ8xialmI9RLDp/WsLRehDP1Xx/WbY2HZ1MiXey3K
	EmrQwFR+/fSE15prnboVIH6FlqwzN03WxFkvY5wXjUmRiyW1zi7xJo3eucEJC9jAtCJQw1nWpy/VS
	sTDdgmN6hbY4hOWeTEsl3J35XcXiGA1dUC0wLjzt8DZ9kPH5O7gKjeWvWwa/WF9yfvTw7Iim4eGsN
	A+e5aqDueI3uvSnqscphESWD5Dj+hlCYjOZY1Lq+9OretyKkybLWbDRn9Ld5RKVNfCmQipA71krjB
	DGzdbXI5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hegdF-0002CB-60; Sat, 22 Jun 2019 14:04:41 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hegd6-0002BU-Ri
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 14:04:34 +0000
Received: by mail-lf1-x143.google.com with SMTP id 136so6978477lfa.8
 for <openwrt-devel@lists.openwrt.org>; Sat, 22 Jun 2019 07:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=+A4GJgRWSu1ohpnPPTZ0ZM9Se/YVDdtamBP7v23fA8E=;
 b=HKreDljoJ24WtpJeHPtlmb5cP5UOHJWXIODIVu2+qfYEl5HCGp9hkn1CTDBAQs1Gnq
 kFJidrGbTNJ8az4SASaRB6aQvLOBP/+jZrZNstvTWBHhlmq1YUXE/O0iVVRq8vu4SBaX
 kKh391ZQeU6WUpb7lduER4Khv5/pk1uEOKauPY1kc/Sximhm8Zs4WpVyO1lUxutsLyzq
 x5IVIv52nc8o2fJX4Stj6XMkMw9iH93ujjDEn/JOq1HSuBjjGyu5NjABYqNHmG8wYGTP
 xHukNLtWYVKrN2LQI0+jwZVKahwjkkQ09VpeDSHOIh2Sgiu6k3s0SzG27PDhWDWYnOnj
 KvqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+A4GJgRWSu1ohpnPPTZ0ZM9Se/YVDdtamBP7v23fA8E=;
 b=rYB1oFLLrq+p7nXJzt1KEKuBSnCm9L9KabU1K3sHuYpDZAohgQLgxukQ8pU2Xuq+oJ
 VgaJ+29WUV5JJCdEeZt9eKeym3kSXPO6f4K342zUH0nM/R1MHtbkqzJfF6TbGa/GI67l
 QMdLiPrTEBVmauuOJWjiuLkmIxdC4A3qOFx3GWFn+wxisGqiM3+f0bYehYWO9sU/+Knw
 wsym5QhalD/ZVcW55Qdz2psiSsCwkVzNzhVyi1B8py+8aOt8rIr4qLeDVBNwj8m9WifG
 kg7sO2iNpghw+lHxsaKelQBarZidza/9Zo4flvB5/bi7H+nERv1T+Gcmunw2HVmhgUsp
 kEsw==
X-Gm-Message-State: APjAAAVit1lo26VnTlLDQfLOx6s6dE2YlsL+KiYbj9sD7pOyYwV6O996
 xQasAIXP5cn/ytP2qsUB0t+LDNrs
X-Google-Smtp-Source: APXvYqw277U6KF6LyXcblHvPXMITLDqrQHICp2oUkpympSpluZqAas5++1QEk3XaBX5tBw1+ErU5xQ==
X-Received: by 2002:a19:6519:: with SMTP id z25mr70935616lfb.73.1561212269205; 
 Sat, 22 Jun 2019 07:04:29 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id b25sm806936lfq.11.2019.06.22.07.04.28
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sat, 22 Jun 2019 07:04:28 -0700 (PDT)
To: Daniel Danzberger <daniel@dd-wrt.com>, openwrt-devel@lists.openwrt.org
References: <20190621155023.16220-1-daniel@dd-wrt.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <f2245980-6fa6-141a-c789-ab396331d14d@gmail.com>
Date: Sat, 22 Jun 2019 16:04:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <20190621155023.16220-1-daniel@dd-wrt.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_070432_924674_D3D6D5F9 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: Add new device AsiaRF
 AP7621-001
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

On 21.06.2019 17:50, Daniel Danzberger wrote:
> diff --git a/target/linux/ramips/dts/AP7621-001.dts b/target/linux/ramips/dts/AP7621-001.dts
> new file mode 100644
> index 0000000000..587c26457e
> --- /dev/null
> +++ b/target/linux/ramips/dts/AP7621-001.dts
> @@ -0,0 +1,157 @@
> +/dts-v1/;

Please include licensing info for your DTS file, see
https://openwrt.org/submitting-patches#dts_checklist
e.g. a line like:
`// SPDX-License-Identifier: GPL-2.0-or-later OR MIT`
above the `/dts-v1/;`


> +        m25p80@0 {
> +                #address-cells = <1>;
> +                #size-cells = <1>;
> +                compatible = "jedec,spi-nor";
> +                reg = <0>;
> +                spi-max-frequency = <10000000>;
> +                m25p,chunked-io = <32>;
> +
> +                partition@0 {
> +                        label = "u-boot";
> +                        reg = <0x0 0x30000>;
> +                        read-only;
> +                };

Use "partitions" subnode for storing all partition nodes.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
