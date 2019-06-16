Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B8447607
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 19:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NtDIQ1REVpGoQmBHiSpaXwDXUQp9OgiJshat+7zeAdw=; b=TmDCeYpvatkDPurCkqSkg8H1y
	MZ4Nr650+jbNXbSwMP0o1YDRMPjTSiL66mWdaR5/8iUbkUIVXRQyCTGxPtm1B9frtEWbwlxYjBSZz
	PLqXziCle4zs93bwM4KLLTcG0vH2dgQ+ohgDjQ3H6TJhF15KL08LBJtNJL3RWOr87PsRuhOlUR7LQ
	jhF3/sfU1W4LkEhizDivNLB3sLvs5rw3tbFnXHqxqfx4PTEVBPrBDE2xySk09rKveNRR3GsS/1MWi
	zT1Fc3Z4+pCcqO3nUnptb904ETc6bkZWOGqAnPoH0n1CYfoCnvVI2nJMopdFe3AUyr5Hu4YbVEeCa
	94kmGEjuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcYe4-0003OV-5H; Sun, 16 Jun 2019 17:08:44 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcYds-0003NW-55
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 17:08:33 +0000
Received: by mail-lf1-x141.google.com with SMTP id b11so4834748lfa.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 16 Jun 2019 10:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=iMYd9bhbB01b+v+gkQrn4riQ6EDtj0plfkixNwxpMWE=;
 b=LiYZaXQVNQT+7BY/kXqEX1GKiuOtX3t4AkkMS6rcFAchtCkOYLGk3wLE1xl24GGoWZ
 43/Uq+YNGgNdP6dQzWrp6sO8sqnxzNCFEkCj3ER2lj5QvMqi5RD/fRBXedNtLBj5nmAB
 g8+dBSdjNVVNEfV7PJlSIl3QPmdEpHPepNAFw/NRW2VoJjHEPiRwGZDQR6hmIVKjHqaJ
 7IuH5mJ5im1vwzMszpsVpP7gVbH+vG1AjMVX/y9sTw/sHnPg2VnA6PDOerwRN3S4sT9H
 FkR/s3ECzF1cxUqbasx83Ao4IpdPkZik71bgywXbj1o7u6NaA+3aDd9ZsnpSnGvqiV+7
 HZXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iMYd9bhbB01b+v+gkQrn4riQ6EDtj0plfkixNwxpMWE=;
 b=T2dbLmgOoPK9XupiZBSX6/br0Go/PZS3LOFWAG7IcQ8hAa6k6/ugA4O2W1Uqe2hW4K
 AXQfBuNTB+4adRNnqpyOooTF5WRiu90bHc4txloJwg4b7RyJY62EIiYlhvRzdILvFbM3
 1bP5Me6ZzKOV7GxUvykZOrPiXT5EVQIWSGBqBFi9SXVm/WNhHvFsUUhrDeqPTWr8Mllk
 lncD3yqP+Bf0kMif1eYsiJSCu6xIY4eYkcj3M2rbXk7UwUKpgg2uZfwk7kF5PeA4IUwq
 YKf5/c91u5lDcUH31kLN1MMpQb6T2u6891L6ewKsN2t06iYuYSERHZKpav31PII/QjCG
 C2lw==
X-Gm-Message-State: APjAAAXvokCZKjQdKhsBEgymhdDIb7Bz4VYPhWXG012tMTeaC/YZmb2S
 z+s8OYv8zqM78A1SZcDvIhg=
X-Google-Smtp-Source: APXvYqwQ3uTXfl91MvW9AYq00J50WTQW804TaMk2QUtjInh/aNXbQt1hwdiiD1caId6SbLZo1JwN8A==
X-Received: by 2002:ac2:5a01:: with SMTP id q1mr39163769lfn.46.1560704909252; 
 Sun, 16 Jun 2019 10:08:29 -0700 (PDT)
Received: from [192.168.55.103] (095160109150.warszawa.vectranet.pl.
 [95.160.109.150])
 by smtp.gmail.com with ESMTPSA id m24sm1366183lfl.41.2019.06.16.10.08.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Jun 2019 10:08:28 -0700 (PDT)
To: Christian Lamparter <chunkeey@gmail.com>
References: <20190616115605.6992-1-chunkeey@gmail.com>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <83436d3e-5ddc-e8da-9f05-86f6e7829ccf@gmail.com>
Date: Sun, 16 Jun 2019 19:08:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190616115605.6992-1-chunkeey@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_100832_225221_E0E86B5F 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] phytool: add phytool utility
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
Cc: openwrt-devel@lists.openwrt.org, Alexander Couzens <lynxis@fe80.eu>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Christian,

On 16.06.2019 13:56, Christian Lamparter wrote:
>  From the README.md:
> 
> phytool is a Linux MDIO register access utility.

Is there any reason to keep it inside the main code base rather than in 
packages feed?

-- 
Cheers,
Piotr

> 
> Usage:
> 
> phytool read  IFACE/ADDR/REG
> phytool write IFACE/ADDR/REG <0-0xffff>
> phytool print IFACE/ADDR[/REG]
> 
> where
> 
> ADDR := C22 | C45
> C22  := <0-0x1f>
> C45  := <0-0x1f>:<0-0x1f>
> REG  := <0-0x1f>
> 
> Note: Not all MDIO drivers support the port:device
>        Clause 45 address format.
> 
> The read and write commands are simple register level accessors.
> The print command will pretty-print a register. When using the
> print command, the register is optional. If left out, the most
> common registers will be shown.
> 
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> ---
>   package/network/utils/phytool/Makefile | 46 ++++++++++++++++++++++++++
>   1 file changed, 46 insertions(+)
>   create mode 100644 package/network/utils/phytool/Makefile
> 
> diff --git a/package/network/utils/phytool/Makefile b/package/network/utils/phytool/Makefile
> new file mode 100644
> index 0000000000..b971c1ad13
> --- /dev/null
> +++ b/package/network/utils/phytool/Makefile
> @@ -0,0 +1,46 @@
> +include $(TOPDIR)/rules.mk
> +
> +PKG_NAME:=phytool
> +PKG_VERSION:=2
> +PKG_RELEASE:=1
> +
> +PKG_RELEASE=$(PKG_SOURCE_VERSION)
> +
> +PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
> +PKG_SOURCE_URL:=https://github.com/wkz/phytool/releases/download/v$(PKG_VERSION)
> +PKG_HASH:=9901a14e8c6af02b7333c60b21ff81f50620e8326d54827185e5617ff9b11d21
> +
> +PKG_LICENSE:=GPL-2.0+
> +PKG_LICENSE_FILES:=LICENSE
> +
> +PKG_MAINTAINER:=Christian Lamparter <chunkeey@gmail.com>
> +
> +include $(INCLUDE_DIR)/package.mk
> +
> +define Package/phytool
> +  SECTION:=net
> +  CATEGORY:=Utilities
> +  TITLE:=phytool Linux MDIO register access
> +  URL:=https://github.com/wkz/phytool.git
> +endef
> +
> +define Package/phytool/description
> +   Linux MDIO register access
> +endef
> +
> +define Build/Configure
> +endef
> +
> +define Build/Compile
> +	$(MAKE) -C $(PKG_BUILD_DIR) \
> +		CC="$(TARGET_CC)" \
> +		CFLAGS="$(TARGET_CFLAGS) -Wall" \
> +		LDFLAGS="$(TARGET_LDFLAGS)"
> +endef
> +
> +define Package/phytool/install
> +	$(INSTALL_DIR) $(1)/usr/bin
> +	$(INSTALL_BIN) $(PKG_BUILD_DIR)/phytool $(1)/usr/bin/
> +endef
> +
> +$(eval $(call BuildPackage,phytool))
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
