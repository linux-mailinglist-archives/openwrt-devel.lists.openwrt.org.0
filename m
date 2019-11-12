Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0ABCF910E
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 14:51:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V5WxB55GtR5OiakPlxLOLZpH4AvcHgb5zworEoVC5XQ=; b=dHDfiwglaiP0+0ftF5UBeR37b
	6041FWXSNrEfwoIodzi9MV+Bnmr155BawnhZQIjBr1j1fpHd6F846y1JU7S/Yr0ey1pZEM0q8DtfS
	Q6dW74KCfemHX7i0/rMvdZ3K+gXfESF+mQg2nMUC+eWtC3TWj5rHiEc3SFZe6o0T9Pi8Zfh6i/Br+
	oe+oYAir2AmAxsdWuia/FvIYf7AjXlmzfWF7At/LLv/nUnkqOBCmT+A48KNXABcyWz/z0JB5Vp78K
	N4ElXl7AbM2hw4cRY+2wwoAP2O/B+hzyRKYfdm12j0GOd9+ItgbA0KDdyw/JbIss71eWFjLu/DsFe
	nwrLkVkag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWZe-0007YF-Ka; Tue, 12 Nov 2019 13:51:14 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWZX-0007Xu-6A
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 13:51:08 +0000
Received: by mail-lf1-x142.google.com with SMTP id z188so5694021lfa.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 Nov 2019 05:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rb+XUxzGWrEwNgwaDslGrhBXOUyFIt0/1U6U1nTOslk=;
 b=bb9rQOek+SAOB68/1UKYpdMD6wlOFnXSfui0rNBH2Lt5iVz+YpsLPS8gWM+hcjGmG3
 1oGWJhG3iG1uriZkXMt18xVIXuWb2wYe5liq2WrXE0ugOl7/EJeEi1uesXzf8x24TsWM
 OemvzjzBoVm1j0GEwmzZWoBeSsgLOnZFYfFPq7URrj8YQjngglQZzKZrLVT751Nb1WRW
 pkPuaeswEMbIu/sXRUK82Hpy4n4my052gCLGrcdGquxJ8h6nHp9o2ybAPfkHvMQGrmok
 BH0+FxCBH/Rg1rlOfoXrBthJyvCqHV6dAX0unAwjhmk7K/OwqE5uiqXNVvGTZI5Duh+r
 pcxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rb+XUxzGWrEwNgwaDslGrhBXOUyFIt0/1U6U1nTOslk=;
 b=esotiNX77Xewcn2AK5/WZQm/KzqlaCfPpLjZu6p3p1E6IPs6Sas0QnUOj4+raLbuxz
 Geyjv5HXqZe2hRsBmhrwzzi9VeiD3I5qv2O/4jnr5xPJpcmjYiWvYbf9r6fR9WK3kx69
 1UK0PKav80sco0GDrwBaLxtlsP6xbDyGCrjBsZxbQ1RyS01tIj1PWGdFib43Fndw7H8t
 tkY7Nw5xtXNcMP4FSGkn6Mn17JIgOvkvtQEaWf0A6sFvML/PgBZPssw9vrNGy1w92/vD
 2lseq0bQR3yfWr1Fov2iu8NrfUtO6gxDPTu9eIz3eplIPSDF9cEDFvwFSm/SFRzqzjrq
 c5YQ==
X-Gm-Message-State: APjAAAWV9yNka3m/sySa2SOwAFSc4OFlN+QG9vmf4qJ7KbQSP8sjlAPX
 hzQEzEBjhOp9pYMsJP1ieCk=
X-Google-Smtp-Source: APXvYqxxj/w6ErnFvM242z+OT5wf1yPuRDRLYm/fWWwEQ1jaexi4hpjdRQ7TuRxEDJ7+xwXseffw7w==
X-Received: by 2002:a19:8114:: with SMTP id c20mr4972575lfd.22.1573566665582; 
 Tue, 12 Nov 2019 05:51:05 -0800 (PST)
Received: from [192.168.55.98] (095160109150.warszawa.vectranet.pl.
 [95.160.109.150])
 by smtp.gmail.com with ESMTPSA id f20sm899875lfc.75.2019.11.12.05.51.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 05:51:04 -0800 (PST)
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
References: <20191112140214.59f2971f@kosmio.komorska>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <8b724ec0-978f-284d-c7e2-edc71375b42f@gmail.com>
Date: Tue, 12 Nov 2019 14:51:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191112140214.59f2971f@kosmio.komorska>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_055107_248181_836F18CE 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Michal,

On 12.11.2019 14:02, Michal Cieslakiewicz wrote:
> Netgear WNDR routers (AR9344 models) like WNDR4300 have 128 MiB of flash
> memory but only first 32 MiB are used now - both by vendor's firmware and
> OpenWrt. This patch concatenates two regions of flash memory: ubi part
> of firmware partition and reserved (unused) space beyond 'caldata_backup'
> while preserving ART backup. No data is wiped or moved away.
> This increases area for OS ubi volumes from 23 to 119 Megabytes.

Is revert to vendor firmware still possible with this change, e.g. using 
Netgear TFTP recovery mode?

-- 
Cheers,
Piotr

> 
> Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
> ---
>   .../linux/ath79/dts/ar9344_netgear_wndr.dtsi  | 25 +++++++++++++++----
>   1 file changed, 20 insertions(+), 5 deletions(-)
> 
> diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
> index 16a4e3f6e8..d5a699e774 100644
> --- a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
> +++ b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
> @@ -97,6 +97,22 @@
>   			linux,default-trigger = "usbport";
>   		};
>   	};
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
>   };
>   
>   &pinmux {
> @@ -155,8 +171,8 @@
>   			reg = <0x6c0000 0x200000>;
>   		};
>   
> -		ubi@8c0000 {
> -			label = "ubi";
> +		ubipart0: partition@8c0000 {
> +			label = "ubipart0";
>   			reg = <0x8c0000 0x1700000>;
>   		};
>   
> @@ -172,10 +188,9 @@
>   			read-only;
>   		};
>   
> -		partition@2000000 {
> -			label = "reserved";
> +		ubipart1: partition@2000000 {
> +			label = "ubipart1";
>   			reg = <0x2000000 0x6000000>;
> -			read-only;
>   		};
>   	};
>   };
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
