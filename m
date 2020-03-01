Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20746174D58
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 13:35:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=95szy+d0XR9GVruTjCehAND8NZGtAoycSoPGoCj37ok=; b=XnK9Gnil7CuN/vDWH2todftge0
	YkkJCkUbI6EmPYXDo1cCmJVsvPa7C9DjFpoQ5VFTk1FxzFvqdCe2id9UWmI9OWtWh3lzbKZpPWP3A
	UBGZpfisQD2szW1wp4IXkQr7krzkLjq+L7SYr3v2xUhnuzRazm7D0BypCOHq+yQ3ERbRbtUwYjln4
	BLE7eVx8OCOr2qR1rw+d5jZiPzmY2DAkGK6Ma5lJfmhtFc3f7dWsOEh66TwiP5xRpH14UyV29aS92
	OQQ+FT+5T5pz/gzBjbl8vXIuuFLn34FmzAdTYarSMc6E/r53c6FCsUEPuu36kKU6Av2/JZVckAQtx
	He0fluZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8No7-0003TF-I2; Sun, 01 Mar 2020 12:34:55 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8No0-0003SH-Hl
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 12:34:50 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 95DE94F50;
 Sun,  1 Mar 2020 13:34:46 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 87b5d911;
 Sun, 1 Mar 2020 13:34:33 +0100 (CET)
Date: Sun, 1 Mar 2020 13:34:33 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20200301123433.GD33354@meh.true.cz>
References: <20200301024850.1528027-1-mail@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301024850.1528027-1-mail@aparcar.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_043448_740153_6B98D6D3 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: refactor JSON info files to
 `profiles.json`
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Paul Spooren <mail@aparcar.org> [2020-02-29 16:48:50]:

FYI:

 $ grep JSON .config
 CONFIG_JSON_OVERVIEW_IMAGE_INFO=y

 $ cat bin/targets/imx6/generic/profiles.json 
 {}

> diff --git a/config/Config-build.in b/config/Config-build.in
> index 6a6fb2882c..57428399ab 100644
> --- a/config/Config-build.in
> +++ b/config/Config-build.in
> @@ -7,12 +7,14 @@
>  
>  menu "Global build settings"
>  
> -	config JSON_ADD_IMAGE_INFO
> -		bool "Create JSON info files per build image"
> +	config JSON_OVERVIEW_IMAGE_INFO
> +		bool "Create JSON info file overview per target"
>  		default BUILDBOT
> +		select JSON_CREATE_IMAGE_INFO

This is probably some leftover.

> diff --git a/include/image.mk b/include/image.mk
> index fd04d4020b..933d844e8e 100644
> --- a/include/image.mk
> +++ b/include/image.mk
> @@ -568,9 +568,9 @@ define Device/Build/image
>  
>    $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2)): $(KDIR)/tmp/$(call IMAGE_NAME,$(1),$(2))
>  	cp $$^ $$@
> -	$(if $(CONFIG_JSON_ADD_IMAGE_INFO), \
> +	$(if $(CONFIG_JSON_OVERVIEW_IMAGE_INFO), \
>  		DEVICE_ID="$(DEVICE_NAME)" \
> -		BIN_DIR="$(BIN_DIR)" \
> +		BIN_DIR="$(KDIR)/tmp" \
>  		IMAGE_NAME="$(IMAGE_NAME)" \
>  		IMAGE_TYPE=$(word 1,$(subst ., ,$(2))) \
>  		IMAGE_PREFIX="$(IMAGE_PREFIX)" \

Unhandled remark from v1, this part still needs some work, when that Python
script fails, the build should fail. Reproducer:

 echo borken > scripts/json_add_image_info.py; make

> +output_json = {}
> +
> +assert target_dir, "Target directory required"
> +
> +for json_file in input_dir.glob("*.json"):
> +    profile_info = json.loads(json_file.read_text())
> +    if not output_json:
> +        output_json = {
> +            "metadata_version": 1,
> +            "target": profile_info["target"],
> +            "version_commit": profile_info["version_commit"],
> +            "version_number": profile_info["version_number"],
> +            "profiles": {},
> +        }

I'm not a Pythonista, but perhaps you want to init the output_json dict just a
few lines above and get rid of that unnecesary if.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
