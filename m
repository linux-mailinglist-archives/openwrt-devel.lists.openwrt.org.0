Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1EF1F812
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 17:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdlvMtK7ZIk8fWrmpfjIKuc8yCiIZSF6mpl02cmnFsQ=; b=Ou1HHwhmKYka8L
	L/oGJrQPOAnEOWneqWGmu7Ge4mQm9qjXzMu13R/ZJjGpwbNoId6m/Ww2G9JW3yJYuYZq8ry0w+UFF
	mXaBsJRZbroXEdsEV0Simq0tj/8halM1kQ0F6H8dYnVSIyxxrK2WB0scYr3MPaL0v/NfYlNMJ9758
	BnhceA0VdJfaodOS0dDieKNABxk3UOpAVlEX+1ZtiyTebVw4YWBrpER9/31I49QFF8ujjtRsXUX9t
	A/AV9TN1eIvBqHcItknfG1DQHf35O3sU96M1G9MWsvirmB3pLfnlXg8udnWb9FFtzop8jtHTmIqQA
	zzp+9D1emViVt1KIRUGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQwJu-0007wM-Up; Wed, 15 May 2019 15:59:54 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwJn-0007vh-9w
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 15:59:49 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FFxdwv046930
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 17:59:39 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C5F653790;
 Wed, 15 May 2019 17:59:36 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 0ef42aa5;
 Wed, 15 May 2019 17:59:35 +0200 (CEST)
Date: Wed, 15 May 2019 17:59:35 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Pavel Kubelun <be.dissent@gmail.com>
Message-ID: <20190515155935.GB4938@meh.true.cz>
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <20190514134220.3626-3-be.dissent@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514134220.3626-3-be.dissent@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_085947_992171_7805BD51 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 3/4] ipq40xx: fix high resolution timer
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
Cc: openwrt-devel@lists.openwrt.org, chunkeey@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Pavel Kubelun <be.dissent@gmail.com> [2019-05-14 16:42:19]:

> diff --git a/target/linux/ipq40xx/patches-4.14/090-ipq40xx-fix-high-resolution-timer.patch b/target/linux/ipq40xx/patches-4.14/090-ipq40xx-fix-high-resolution-timer.patch
> new file mode 100644
> index 0000000000..0fc50ec533
> --- /dev/null
> +++ b/target/linux/ipq40xx/patches-4.14/090-ipq40xx-fix-high-resolution-timer.patch
> @@ -0,0 +1,30 @@
> +From 09f145f417a5d64d6b8d4476699dfb0eccc6c784 Mon Sep 17 00:00:00 2001
> +From: Pavel Kubelun <be.dissent@gmail.com>
> +Date: Tue, 7 May 2019 10:14:05 +0300
> +Subject: [PATCH] ipq40xx: fix high resolution timer
> +
> +Cherry-picked from CAF QSDK repo.

You should preserve the authorship of the changes if you do so. It looks now,
like you're author of this work.

> +The kernel is failing in switching the timer for high resolution
> +mode and clock source operates in 10ms resolution. The always-on
> +property needs to be given for timer device tree node to make
> +clock source working in 1ns resolution.

Shouldn't this go through upstream as well?

> + 	soc {
> diff --git a/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch b/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch
> index 0e1bb87368..b7e241058c 100644
> --- a/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch
> +++ b/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch
> @@ -15,7 +15,7 @@ so the info might change.
>  
>  --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
>  +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> -@@ -566,6 +566,34 @@
> +@@ -567,6 +567,34 @@
>   			status = "disabled";
>   		};

Probably some leftover?

> diff --git a/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.patch b/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.patch
> index 03da6c863a..cc56a60ea3 100644
> --- a/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.patch
> +++ b/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.patch
> @@ -14,7 +14,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
>  
>  --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
>  +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> -@@ -594,6 +594,29 @@
> +@@ -595,6 +595,29 @@
>   			};
>   		};

Ditto.

> diff --git a/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-node.patch b/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-node.patch
> index 7302d237bc..80b16a8211 100644
> --- a/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-node.patch
> +++ b/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-node.patch
> @@ -25,7 +25,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
>   	};
>   
>   	cpus {
> -@@ -617,6 +619,64 @@
> +@@ -618,6 +620,64 @@
>   			status = "disabled";
>   		};

Ditto.

> diff --git a/target/linux/ipq40xx/patches-4.19/086-ipq40xx-fix-high-resolution-timer.patch b/target/linux/ipq40xx/patches-4.19/086-ipq40xx-fix-high-resolution-timer.patch
> new file mode 100644
> index 0000000000..9d277fa8e0
> --- /dev/null
> +++ b/target/linux/ipq40xx/patches-4.19/086-ipq40xx-fix-high-resolution-timer.patch
> @@ -0,0 +1,30 @@
> +From 09f145f417a5d64d6b8d4476699dfb0eccc6c784 Mon Sep 17 00:00:00 2001
> +From: Pavel Kubelun <be.dissent@gmail.com>
> +Date: Tue, 7 May 2019 10:14:05 +0300
> +Subject: [PATCH] ipq40xx: fix high resolution timer
> +
> +Cherry-picked from CAF QSDK repo.
> +Original commit message:
> +The kernel is failing in switching the timer for high resolution
> +mode and clock source operates in 10ms resolution. The always-on
> +property needs to be given for timer device tree node to make
> +clock source working in 1ns resolution.

Same as above.

> diff --git a/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch b/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch
> index e5936a0c93..0298644d22 100644
> --- a/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch
> +++ b/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch
> @@ -15,7 +15,7 @@ so the info might change.
>  
>  --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
>  +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> -@@ -570,6 +570,34 @@
> +@@ -571,6 +571,34 @@
>   			status = "disabled";
>   		};

Ditto.

> diff --git a/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.patch b/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.patch
> index 7c5d1ec2bb..df95699294 100644
> --- a/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.patch
> +++ b/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.patch
> @@ -14,7 +14,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
>  
>  --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
>  +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> -@@ -598,6 +598,29 @@
> +@@ -599,6 +599,29 @@
>   			};
>   		};

Ditto.

> diff --git a/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-node.patch b/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-node.patch
> index 51cf411143..8f7627b048 100644
> --- a/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-node.patch
> +++ b/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-node.patch
> @@ -25,7 +25,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
>   	};
>   
>   	cpus {
> -@@ -621,6 +623,64 @@
> +@@ -622,6 +624,64 @@
>   			status = "disabled";
>   		};

Ditto.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
