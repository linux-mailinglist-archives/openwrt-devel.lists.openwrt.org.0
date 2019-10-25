Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9426E504D
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 17:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1SiuI3ETC5A2JofyMfTmWDMsAa0s1GxB1b045tayMYI=; b=RNzbydZbUObCrAy0n67KFF8ln
	lj2IGgtwkX8EYeFhrjcJcgY2ngIAgFW5uE6wJG2Qe0i305ChH04sSz2y5fkErE8WYSAMxu7poJGb/
	Q8hN1U4f0imrdyyJrYlj38Hyr6sL/wns6/KcUh6SXfOXnyR7BxkDWoRW3THsCv9hNs4LVpDXiCUYr
	++pH7bEg2nsWkktCj3YV8W+7A2aJCIgpo3iYoDcjKYjWzsy+RCpsylu2J5t01uotr4C4Ae7FjCWZ3
	rfiQ/QPbvsuf3jIqlqN2qKYBBtIyVoemPDcNLEOjlcUJbwZVpgQ10x4us3nmmuVZBSAdHXTAGmaus
	5EneYxzPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO1gg-0005hP-So; Fri, 25 Oct 2019 15:39:38 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO1ga-0005h1-QL
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 15:39:34 +0000
Received: from JKLETSKY-MBP15.local (portal.bevandjeff.com [206.189.65.121])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 5101C59F55;
 Fri, 25 Oct 2019 08:39:30 -0700 (PDT)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20191025113837.2844-1-freifunk@adrianschmutzler.de>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <df315895-08f7-642c-7f14-d5d2736d19fa@allycomm.com>
Date: Fri, 25 Oct 2019 08:39:30 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191025113837.2844-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_083932_857374_BFE2233F 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: remove redundant mtd-mac-address
 for wmac
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

On 10/25/19 4:38 AM, Adrian Schmutzler wrote:

> For several devices, wmac MAC address is set from art 0x1002
> explicitly by using mtd-mac-address although mtd-cal-data is
> pulled from art 0x1000.
>
> With the MAC address in 0x1002, the driver should automatically
> use it when reading caldata from 0x1000. Thus, remove the
> redundant mtd-mac-address for those devices.
>
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Tested-by: Jeff Kletsky <git-commits@allycomm.com> GL-AR300M-NAND
>
> ---
>
> Not tested on the devices affected by this patch, but obviously
> tested quite often with other device support PRs prior to merge.
> ---
>   target/linux/ath79/dts/ar9331_8dev_carambola2.dts        | 1 -
>   target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts | 1 -
>   target/linux/ath79/dts/ar9331_etactica_eg200.dts         | 1 -
>   target/linux/ath79/dts/ar9341_pcs_cr3000.dts             | 1 -
>   target/linux/ath79/dts/ar9344_pcs_cr5000.dts             | 1 -
>   target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts      | 1 -
>   target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi     | 1 -
>   target/linux/ath79/dts/qca9531_glinet_gl-x750.dts        | 1 -
>   target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts      | 1 -
>   9 files changed, 9 deletions(-)
>
> diff --git a/target/linux/ath79/dts/ar9331_8dev_carambola2.dts b/target/linux/ath79/dts/ar9331_8dev_carambola2.dts
> index 8af378ef92..cc0320d652 100644
> --- a/target/linux/ath79/dts/ar9331_8dev_carambola2.dts
> +++ b/target/linux/ath79/dts/ar9331_8dev_carambola2.dts
> @@ -132,5 +132,4 @@
>   &wmac {
>   	status = "okay";
>   	mtd-cal-data = <&art 0x1000>;
> -	mtd-mac-address = <&art 0x1002>;
>   };
> diff --git a/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts b/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
> index 311a506b5d..639c6523d6 100644
> --- a/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
> +++ b/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
> @@ -116,5 +116,4 @@
>   &wmac {
>   	status = "okay";
>   	mtd-cal-data = <&art 0x1000>;
> -	mtd-mac-address = <&art 0x1002>;
>   };
> diff --git a/target/linux/ath79/dts/ar9331_etactica_eg200.dts b/target/linux/ath79/dts/ar9331_etactica_eg200.dts
> index 5b9dbede97..079cc88767 100644
> --- a/target/linux/ath79/dts/ar9331_etactica_eg200.dts
> +++ b/target/linux/ath79/dts/ar9331_etactica_eg200.dts
> @@ -127,5 +127,4 @@
>   &wmac {
>   	status = "okay";
>   	mtd-cal-data = <&art 0x1000>;
> -	mtd-mac-address = <&art 0x1002>;
>   };
> diff --git a/target/linux/ath79/dts/ar9341_pcs_cr3000.dts b/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
> index 79611a687d..a6348d4cba 100644
> --- a/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
> +++ b/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
> @@ -139,7 +139,6 @@
>   	status = "okay";
>   
>   	mtd-cal-data = <&art 0x1000>;
> -	mtd-mac-address = <&art 0x1002>;
>   };
>   
>   &eth0 {
> diff --git a/target/linux/ath79/dts/ar9344_pcs_cr5000.dts b/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
> index 8f8ae4afcf..6589101099 100644
> --- a/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
> +++ b/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
> @@ -220,5 +220,4 @@
>   	status = "okay";
>   
>   	mtd-cal-data = <&art 0x1000>;
> -	mtd-mac-address = <&art 0x1002>;
>   };
> diff --git a/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts b/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts
> index d98cbe566d..57312f6ff4 100644
> --- a/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts
> +++ b/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts
> @@ -143,7 +143,6 @@
>   &wmac {
>   	status = "okay";
>   	mtd-cal-data = <&art 0x1000>;
> -	mtd-mac-address = <&art 0x1002>;
>   };
>   
>   &pinmux {
> diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
> index b72aa65522..67a3331ab3 100644
> --- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
> +++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
> @@ -141,5 +141,4 @@
>   &wmac {
>   	status = "okay";
>   	mtd-cal-data = <&art 0x1000>;
> -	mtd-mac-address = <&art 0x1002>;
>   };
> diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
> index de28f6c3f0..ae4553a207 100644
> --- a/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
> +++ b/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
> @@ -133,5 +133,4 @@
>   &wmac {
>   	status = "okay";
>   	mtd-cal-data = <&art 0x1000>;
> -	mtd-mac-address = <&art 0x1002>;
>   };
> diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
> index 4f65b2d2e2..dc3ea24ae6 100644
> --- a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
> +++ b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
> @@ -173,5 +173,4 @@
>   &wmac {
>   	status = "okay";
>   	mtd-cal-data = <&art 0x1000>;
> -	mtd-mac-address = <&art 0x1002>;
>   };

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
