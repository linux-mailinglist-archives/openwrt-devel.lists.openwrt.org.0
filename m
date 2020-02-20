Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E42166598
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 18:58:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sbQl2Z30wfSvl5Z1pqz2vl+0VaEmSrR573O1sOug9H0=; b=hQe9YpwQmgweOBVxMlGgnt/s4
	z75R53Z8IMEYn1jDz8NbxwkTWWgznUg/jHWOwoQhZ5urjijyxUYmR7iL6tdnvrldXmYhs+PYsPoxG
	82ipQBr6R/NaNVzL6H/ZUkbIhLFdPudCMLGsPHpV7z4DX4+F0ujsfOKB003IR+wtvyl1x+atw2QNk
	fs0/shOpInlm3rCq6z46dpHVDYfRJJDzOmUr6I1spp/OEvwUBJdVOzhSGSKuTYZMThJPBIWubgYsR
	NHQl2vPKz+iNG2VJLL5l+cgIw0xQ7TZ44dNfrEwMk5G0WXvlJ3G3M1YhYrSKdiuntS/nJrn3Ei/wo
	oU+dBRDqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4q5M-0008L5-VU; Thu, 20 Feb 2020 17:58:05 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4q4z-0008Dg-U2
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 17:57:43 +0000
Received: by mail-lj1-x244.google.com with SMTP id q8so5138390ljj.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Feb 2020 09:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=zK/LJBu6fwg8me+aRKrzsRBbR8SdC9vfkVq+PQ/y3+s=;
 b=bp7XQ8LksxufdL4vRFkfAX91Z0/OT+yi5HApCWVEsGYt6VY94DoTgRSDO/qGua5XlN
 hFqsZi/aS/5eWM5LIGy/cgyqW+T9I8zxOD0CG6fL1WDJv/8Nv3Xkseg9bkrIkoRwPKjD
 RkwkWlwTX9rWH1ypaBa/JGy90+j1TdJC56Cim142Qg11SXy40AoMqLsujliivAlA/LnK
 D1xZ73hg9oUHluhoBF/JJrUuyVjJbLfFwj4li7GFhVUg+r1KK2qRwwwKFjRk3DZPD5U5
 BaDWsq+feA7Xx/2pr6yTbHQ2/LXGQiv6zuPejDeIZumY6aqXhDpF+HTlIE8A/Ml5SaGq
 IjIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zK/LJBu6fwg8me+aRKrzsRBbR8SdC9vfkVq+PQ/y3+s=;
 b=WtQNixIXjUpzdJOPIRkcRdZeoQqyPZ8d/5tVw4BsgDlmCzD/Os6sEWS7ct6KIl4yU+
 VhCqJjNlT8gKy8gzBULQZRiVVRDqCDcfM2/B1rxaEB048D/i+Hn0j3+YkCCc6RSmAWg9
 VI0s7AQWqb262AVPX07vIFw7yQdChx1mKk5NNU+XAUyvwFfasIZ+IcrV2bfgaoWSSl/W
 GiV0tOx/Zj9I3B5ELce024kApexQAksPQcyM/X26vqmbaF/wGLOE4Trhqa8UZdDX+eVI
 KgK8QE3OLkUKeBmGRdqLuiSkGpcIC7EArZJ46APSSBKcL39Dw7t0rM+bXkdXKniHUeBq
 hh6w==
X-Gm-Message-State: APjAAAUyhuEj2w633f9oeCuiiIHOAStSAYV5SJ0mEuJGYXhf4ryc05Nm
 aYUMoZHVhlnowOPSmk5xdbcbXkbq
X-Google-Smtp-Source: APXvYqzpNmoushz755wuVmwHvKMketoocv9WMihJVSN+RPI5Xv7qikYM63f+A3Z9R3CnAMiS4FIABQ==
X-Received: by 2002:a05:651c:1072:: with SMTP id
 y18mr19991892ljm.243.1582221457602; 
 Thu, 20 Feb 2020 09:57:37 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id d11sm150512lfj.3.2020.02.20.09.57.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 09:57:36 -0800 (PST)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200220175218.33593-1-freifunk@adrianschmutzler.de>
 <20200220175218.33593-2-freifunk@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <02dacc16-3bf9-26d5-e1c7-48ed1a57ff63@gmail.com>
Date: Thu, 20 Feb 2020 18:57:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200220175218.33593-2-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_095742_023134_30A4855E 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] rssileds: restrict package to
 targets where it is used
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

Hi Adrian,

On 20.02.2020 18:52, Adrian Schmutzler wrote:
> It does not seem very sensible to provide the rssileds package
> on targets without corresponding LEDs, so restrict it to the
> targets where it is used at the moment.

This package isn't hardware related and shouldn't be limited to targets 
where only officially supported devices make use of it.

Thus, NAK from me for this one.

-- 
Cheers,
Piotr

> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>   package/network/utils/rssileds/Makefile | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/package/network/utils/rssileds/Makefile b/package/network/utils/rssileds/Makefile
> index 7a59314693..c8e8f39de9 100644
> --- a/package/network/utils/rssileds/Makefile
> +++ b/package/network/utils/rssileds/Makefile
> @@ -18,7 +18,7 @@ define Package/rssileds
>     SECTION:=net
>     CATEGORY:=Network
>     TITLE:=RSSI real-time LED indicator
> -  DEPENDS:=+libiwinfo +libnl-tiny +libubox +libuci
> +  DEPENDS:=@(TARGET_ar71xx||TARGET_ath79||TARGET_ramips) +libiwinfo +libnl-tiny +libubox +libuci
>     MAINTAINER:=Daniel Golle <dgolle@allnet.de>
>   endef
>   
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
