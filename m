Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6E614C31C
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Jan 2020 23:44:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bDPn0E+Jx2i0unN5mvPZPvqRwB0NxiHX31045VncTN4=; b=aY7rV+ASp72x0q/pdlGdrWjkS
	u8sdXAu4Jjx2h9ZRqNdPqLHyWxCBTeFdCKk2wXVvIx4R2/pVU3BNCMhFz7z1YMI9IxGN5wys+jqQy
	MHfBB54ElwsFXhVoie6Q+LZbaJK7hF3LuQbVU2DJb1a1a0ppye5l6x6g/CubCpMx/yaak9FkzSHE1
	p6/T4HqdsuQ4v4Q3Q6pTpoodpI2EqLsQ9iuVHbiGrz6uO/pNvTjBXPa/SQpqixqX6atlZyI51gYwL
	oHjIvY2d9wxG5Sw1yyFJjMjxm3rPjLdv9ycwT2joawjZusFMhfBZfu/J1HlpQFRqelPRr53Zs3i/A
	P+ZwITU2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwZag-0004dw-FL; Tue, 28 Jan 2020 22:44:14 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwZaW-0004dO-7I
 for openwrt-devel@lists.openwrt.org; Tue, 28 Jan 2020 22:44:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id q10so17989393wrm.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Jan 2020 14:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=5PqM0O3CvmpANr+drjsIrbJIUivb+2gPWQY8QQ2gtBI=;
 b=bk+aFWxMmecGw4qSBkGg/jOCgKqWDvYwG+10ybVTlleVka087o89XLKjGBSp8uAVzQ
 qlrgMdppXLoIIBmnqb79tyrwxWZAl8k5LLymtvRLAuKQO1PdRoQCq3sWvyvuhY/eu2ry
 eT2Z3QSgY+824WKfQ/HD3INKzQb4W4QcAOhezoB/s+PMZc8vDuyYF0jfVmorl7Eem0AM
 lkYvOwIRMFyB+K/ADzPE6vZerJ6Y9v8MMbwSuHK08Kv7eYZjS7XTHMaOe4hJkM1RqWAO
 NXOZWCwT2kla48PnAbvwpAPLUIKsghQCyI63HI8zbR6yKgrfnpFh4Xbnq6HoUb7yeNvp
 4VTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5PqM0O3CvmpANr+drjsIrbJIUivb+2gPWQY8QQ2gtBI=;
 b=FbAZRSzHkVPJV3i10+Azpa80Dw8XlTAEZTCG56fhTFUUxW2ioigSeEJjQ423QVVoD2
 m3CWGGctsfCYcyJzfzyD8iuMpWLd59aIq8JOkliLx3L5/QJlDqRQu476pXLHYmrzNZxw
 qgeg4nbOF9T+MPAFfd4nncU5voFVphC5XgeMM2KwZeKMlPs62h7oMyTA1tdmyUYr6tKi
 QOPfPDGw0gZWnPjQXErJTpGAlNUGE4+84CqX9BP+et7wEsEZxai2nu04InER6Bs75cw8
 hA5baMpc5VelFVylkEd588bQLH9F7UeSgf4EhdKawj0wimMo4LyaW5tAVBU6ZRKbhhBj
 TJRg==
X-Gm-Message-State: APjAAAVSLtk7y3NYIx2IOua9tcykfNI5hEwzi5pMFDa9Ex9BuL5VDLB+
 6uoixBb5xsqXywp+CnZHgQNAGztShf0=
X-Google-Smtp-Source: APXvYqxYulHHt0tWicT3ajmim5O58iAECrw4JEKeP7LyipqLzZXBJi9xq+SuWbnlATP3Y8uTJyx4dA==
X-Received: by 2002:adf:ebd0:: with SMTP id v16mr29383083wrn.146.1580251438902; 
 Tue, 28 Jan 2020 14:43:58 -0800 (PST)
Received: from ?IPv6:2003:ec:2f28:d300:3da9:f265:df61:9174?
 (p200300EC2F28D3003DA9F265DF619174.dip0.t-ipconnect.de.
 [2003:ec:2f28:d300:3da9:f265:df61:9174])
 by smtp.gmail.com with ESMTPSA id a16sm200425wrt.37.2020.01.28.14.43.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Jan 2020 14:43:58 -0800 (PST)
To: David Bauer <mail@david-bauer.net>, openwrt-devel@lists.openwrt.org
References: <20200128212143.278955-1-mail@david-bauer.net>
From: Mathias Kresin <dev@kresin.me>
Message-ID: <9828d330-44ac-6b46-da5a-169b432d888d@kresin.me>
Date: Tue, 28 Jan 2020 23:43:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200128212143.278955-1-mail@david-bauer.net>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_144404_292223_E12814D6 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: fix NETGEAR R6260 EEPROM offset
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

28/01/2020 22:21, David Bauer:
> The EEPROM offset for the NETGEAR R6260 is incorrect, thus no valid
> calibration data is used.
> 
> Fix this only for the NETGEAR R6260, as it's currently unknown whether
> or not other boards are affected.
> 
> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---
>   target/linux/ramips/dts/mt7621_netgear_r6260.dts        | 8 ++++++++
>   target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi | 4 ++--
>   2 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/target/linux/ramips/dts/mt7621_netgear_r6260.dts b/target/linux/ramips/dts/mt7621_netgear_r6260.dts
> index 8251fe595c..2f2dbb05f8 100644
> --- a/target/linux/ramips/dts/mt7621_netgear_r6260.dts
> +++ b/target/linux/ramips/dts/mt7621_netgear_r6260.dts
> @@ -23,3 +23,11 @@
>   &led_wifi {
>   	label = "r6260:green:wifi";
>   };
> +
> +&wifi2 {
> +	mediatek,mtd-eeprom = <&factory 0x20000>;
> +};
> +
> +&wifi5 {
> +	mediatek,mtd-eeprom = <&factory 0x28000>;
> +};
> diff --git a/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi b/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
> index 52af14723e..7626973121 100644
> --- a/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
> +++ b/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
> @@ -78,7 +78,7 @@
>   };
>   
>   &pcie0 {
> -	wifi@0,0 {
> +	wifi5: wifi@0,0 {
>   		compatible = "mediatek,mt76";
>   		reg = <0x0 0 0 0 0>;
>   		mediatek,mtd-eeprom = <&factory 0x8000>;
> @@ -87,7 +87,7 @@
>   };
>   
>   &pcie1 {
> -	wifi@0,0 {
> +	wifi2: wifi@0,0 {
>   		compatible = "mediatek,mt76";
>   		reg = <0x0 0 0 0 0>;
>   		mediatek,mtd-eeprom = <&factory 0x0>;
> 

Hey David,

if a property defined in a dtsi doesn't match for all cases, it should 
be moved to the dts files, instead of being overwritten in some cases.

This way it's way more readable as one doesn't have to check if a 
property is overwritten/redfined in a later device tree source file.

Regards
Mathias

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
