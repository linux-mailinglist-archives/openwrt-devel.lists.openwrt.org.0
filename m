Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A074F2E876
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 May 2019 00:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mI0n9+G6Nj6h0OV0RgTOKTFtlrCzBzcsV4nt5N+xF6E=; b=hNKKHwgY/4RmOj
	l55+g5ZXWuxxDVPojGuJ5aqy3gkj6OyP/tBEUT4maxLh6ajPYWjc+ZLfWfvWdw2awyZ58lX9Kot7P
	HcKvBhETwXGJZ17uleeqnmc+OboRcbXvq8foOc5wspiDEJ7jQLdB6IV6Ct8PgnTJTmxB4X9Mj4t5B
	kPTs1fBtoJRiSJHNIGUX61JZynAWiUUKLryFBzd6oseOtUAJGyo1UIL7zDU69yNwPBhvm/058BBcW
	hKKDRVtMvw5buEpmiYo8rDZWDoGFWUuquBCBF01s/0/896qPquzBkoxheanI3mXRcW5cPuwbExn3G
	z9IuGICzKE6JpkuCEB0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW7Mo-0007jQ-6X; Wed, 29 May 2019 22:48:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW7Mg-0007iU-Cr
 for openwrt-devel@lists.openwrt.org; Wed, 29 May 2019 22:48:11 +0000
Received: by mail-wr1-x444.google.com with SMTP id t4so2841712wrx.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 May 2019 15:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PGprvlPfb/DXn2ePH8hmyQUoM0vw/6oHYCeXvZh93cg=;
 b=qRiRe7TBc6CculMyn+dU2E18viDaVh3mezx/VewcqjY4MHl77brTccMeHJg3GqYYCR
 YmEmO9vK7crJ1TYWj2Eh+OvAHHfUFbq6qS/wj/O+fU1WakGmrRC/Qp6+RnK4xcNA6ndB
 rn4ik+Joreo01x++UrFy3q9/yFhYUh4HrnntG0RfNNJxDNQQS2aGBfj9Z9Jls1CZljor
 cxFCAdRGgIfAaR5y3ll0Rt0/UXiDuoMZaqw2y5tM9jD69z2Pug7nHCjJcm3ADghRiJnX
 aVeppVq98TVmlU1H2n2XAmQnKjyPoB6RLVc6lY1zfCkGRUq7C3uDwkHUPbFouj2b4AFG
 NupQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PGprvlPfb/DXn2ePH8hmyQUoM0vw/6oHYCeXvZh93cg=;
 b=JszM1Jw1sWSZWs/K0KOtVEOKJolaVF2qRR26U5yzNATyMZCRRWvt5noASNyyrnbu/b
 rzWplG8Qk51t+rES3z0uzyeiFFb0LZrBUK2M6wyhAD2yJb7njzobzxSjdbQcCvEuV/en
 fCNSE0s1LbpcP3xSF/JAv2vGwduK87GcfmTf4lQ8U8WKl5Pds5C5NpmyL+ryT5nM6iK5
 fefUlYESPhX6mA55xY6mbWPZWdKowkWYdP9eXAcE0Tq2YIzZsniVxRV2AeuSQ0eRA2+7
 GJGUGNBZ0z9se/tSvHskEJ3M73AgI0WQHOVdP6jbHFikXQ3AQnHryX6bGFo0Tah0scPm
 e2vg==
X-Gm-Message-State: APjAAAWKYnwuEgHHBpnAtllr3s4J/L/+7f7Bai4sq44LK++9pwm5rvGF
 Z0L20MXFfrcFlzKBrk0SoYQ=
X-Google-Smtp-Source: APXvYqx3Cmgfs8ZrNX+dXmK9QgsrBX8gAkmK/mKLcdyxqv7zGSukmFOslkdmvExzBG1WdwLHSgIqFw==
X-Received: by 2002:a5d:4148:: with SMTP id c8mr202309wrq.5.1559170088195;
 Wed, 29 May 2019 15:48:08 -0700 (PDT)
Received: from debian64.daheim (pD9E29593.dip0.t-ipconnect.de.
 [217.226.149.147])
 by smtp.gmail.com with ESMTPSA id c14sm664897wrt.45.2019.05.29.15.48.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 15:48:07 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hW7Mc-00010C-Tg; Thu, 30 May 2019 00:48:06 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 30 May 2019 00:48:06 +0200
Message-ID: <2783949.jM1f73g667@debian64>
In-Reply-To: <20190524212719.30694-2-linus.walleij@linaro.org>
References: <20190524212719.30694-1-linus.walleij@linaro.org>
 <20190524212719.30694-2-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_154810_442586_3D8D36AC 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] gemini: Fix possible hexdump error
 on MAC assignment
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Friday, May 24, 2019 11:27:18 PM CEST Linus Walleij wrote:
> If a MAC address is for example 00:50:c2:11:11:11 using
> hexdump to extract this from raw bytes in the flash will
> yield "00:50:c2:11*" with the asterisk indicating "more
> of the same".
> 
> This will inhibit the MAC address from being assigned
> correctly, so fix it by passing -v to hexdump.

I think with the get_mac_binary will handle this already...
Question is, should this be backported to openwrt-18.06?
If so, can you please make a patch against it?

Thanks.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
> index ebd3ae0f55c5..6072e828c678 100644
> --- a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
> +++ b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
> @@ -12,7 +12,7 @@ set_ether_mac() {
>  		if [ ! -z $CONFIG_PARTITION ] ; then
>  			DEVID="$(dd if=/dev/mtdblock0 bs=1 skip=119508 count=7 2>/dev/null)"
>  			if [ "x$DEVID" = "xdns-313" ] ; then
> -				MAC1="$(dd if=/dev/mtdblock0 bs=1 skip=119540 count=6 2>/dev/null | hexdump -n6 -e '/1 ":%02X"' | sed s/^://g)"
> +				MAC1="$(dd if=/dev/mtdblock0 bs=1 skip=119540 count=6 2>/dev/null | hexdump -n6 -v -e '/1 ":%02X"' | sed s/^://g)"
>  				ifconfig eth0 hw ether $MAC1 2>/dev/null
>  				return 0
>  			fi
> 





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
