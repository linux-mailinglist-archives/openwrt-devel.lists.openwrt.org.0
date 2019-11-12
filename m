Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8822FF90E1
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 14:43:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J5q3ZNjgAlqezywvcflshuOiwK+MCLkGnKuKeSsUYmA=; b=LA1if68SQWWDdug28xSxgY2VF
	RST5NJP/Akl8PzEGDZ4+AQGHzrAqT3KmkxQE19cBLy2tlzuRk+fDspf7nIJPsQEhyTpbelmd5tI6P
	Id+cDCtvzHJMl57gToSzoIehX+qFeiBWEME6UrQgECLhO0cKtyaTNFA18FECOl6Bb5VmIJB5g6Jmw
	he4SwjFsJGoRAIhMPSEJ2sBUT3fSQv6Go5J29KBsF6Oido87fcbLdNYCkkFTWq7Fc51BRNmKXmQor
	4I2GFMkN8jQhtsqKuZS+T1Zqt6gwQGDiWa7xE0gCFX4xgbzbCfGE2z0KXl0bN6Hiilu178gRcJ8Uw
	NwhN4E15g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWSB-0002x9-4G; Tue, 12 Nov 2019 13:43:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWS4-0002wl-Lj
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 13:43:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id r10so18605249wrx.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 Nov 2019 05:43:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=08zw0rDax807uxBnYBtBYEf4CqrEq8z4yV3ubKTFUPw=;
 b=GisoA8Ew7c+uQuWzPphouOnX03FLulEJsBysWt7pgwsV5JHeQhpwkIDDMmUnWivGbS
 YrqntIxVVNOK/9AEjJiFJi3w+lTBlNc1ak+TY80fTwpWI4eGcl1G0pW0V6/5ftIdNX2t
 Ot6Z4kLAJe8wIm5pnHAi1Q9RB98yLdkVrz23CBpG/sHXuEVy9C0gsSWlBlBH8K+oSruT
 RPcW6hnk53zbOslVAPNZmDooFnGU9E+1UaO0n+ZMwSe5k548G9g8q8QC3R0VqEjlKsU5
 wdpAVYYC7UjvxxWAw61XmkUHZnDuETbi/pRTKp739g8dsjuopoRrdGCBOsb8FT3l+ciN
 VQYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=08zw0rDax807uxBnYBtBYEf4CqrEq8z4yV3ubKTFUPw=;
 b=APB1lPeaoiQuu8QQS1N47cEPgUrEUkjTRpiOA0PukZdQ64eKvPLUHuyp88ajacUYmh
 dvzesS+KODRANx6fkzwcbEZJ/anEUu7hlhZVw0lOi/l8u74s8N4pkuFouTHHmDcCUid5
 vg58sNtjP41XvLx5CPGu9vcleyTbvZ8a4aUvEAr4LrmjKU8inyteZNY7KXeAQpk+uT42
 mXmr6gfYn1vcATDHCga3nU3q6lZRSaUkOPKZHuiFLwgbBi7fg3YcKpG/Q3nHsfXXRYkz
 TNqDxKSFtrUA1rEHR22ZXNF0DCYZ2Tb02tnB68pe2FfYWBy7BXfjzvwSMRg7OLhswLmo
 tdsA==
X-Gm-Message-State: APjAAAWYtH2aFHg4TX8IHNbht92RwwCK9VLG3UhAllGma0I9wSkyNgfp
 o6UJR/9evOB3CntGwkzPeq0=
X-Google-Smtp-Source: APXvYqzW8U9hVNfVklSd4GHfapEt26rr+9uZLmqRu7i6SqZUOHaRpoomZnyN+yj6M9JhRSPuJQVZfg==
X-Received: by 2002:adf:e2cc:: with SMTP id d12mr24179605wrj.168.1573566202317; 
 Tue, 12 Nov 2019 05:43:22 -0800 (PST)
Received: from mStation (host120-32-dynamic.15-87-r.retail.telecomitalia.it.
 [87.15.32.120])
 by smtp.gmail.com with ESMTPSA id q5sm2837381wmc.27.2019.11.12.05.43.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 05:43:21 -0800 (PST)
Date: Tue, 12 Nov 2019 14:43:20 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
In-Reply-To: <20191112140214.59f2971f@kosmio.komorska>
Message-ID: <alpine.LNX.2.21.99999.353.1911121442560.800915@mStation.localdomain>
References: <20191112140214.59f2971f@kosmio.komorska>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_054324_712357_75F1FDE5 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.4 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: enable all space on Netgear
 ar9344-based WNDR routers
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Wow!! This is applicable also to Netgear R6220!


On Tue, 12 Nov 2019, Michal Cieslakiewicz wrote:

> Date: Tue, 12 Nov 2019 14:02:14
> From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
> To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
> Subject: [OpenWrt-Devel] [PATCH] ath79: enable all space on Netgear
>     ar9344-based WNDR routers
> 
> Netgear WNDR routers (AR9344 models) like WNDR4300 have 128 MiB of flash
> memory but only first 32 MiB are used now - both by vendor's firmware and
> OpenWrt. This patch concatenates two regions of flash memory: ubi part
> of firmware partition and reserved (unused) space beyond 'caldata_backup'
> while preserving ART backup. No data is wiped or moved away.
> This increases area for OS ubi volumes from 23 to 119 Megabytes.
>
> Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
> ---
> .../linux/ath79/dts/ar9344_netgear_wndr.dtsi  | 25 +++++++++++++++----
> 1 file changed, 20 insertions(+), 5 deletions(-)
>
> diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
> index 16a4e3f6e8..d5a699e774 100644
> --- a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
> +++ b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
> @@ -97,6 +97,22 @@
> 			linux,default-trigger = "usbport";
> 		};
> 	};
> +
> +	ubi-concat {
> +		compatible = "mtd-concat";
> +		devices = <&ubipart0 &ubipart1>;
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			ubi@8c0000 {
> +				label = "ubi";
> +				reg = <0x0 0x7700000>;
> +			};
> +		};
> +	};
> };
>
> &pinmux {
> @@ -155,8 +171,8 @@
> 			reg = <0x6c0000 0x200000>;
> 		};
>
> -		ubi@8c0000 {
> -			label = "ubi";
> +		ubipart0: partition@8c0000 {
> +			label = "ubipart0";
> 			reg = <0x8c0000 0x1700000>;
> 		};
>
> @@ -172,10 +188,9 @@
> 			read-only;
> 		};
>
> -		partition@2000000 {
> -			label = "reserved";
> +		ubipart1: partition@2000000 {
> +			label = "ubipart1";
> 			reg = <0x2000000 0x6000000>;
> -			read-only;
> 		};
> 	};
> };
> -- 
> 2.24.0
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
