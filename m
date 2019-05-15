Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C201F841
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 18:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Nhj2LpJCHmN1RvMtuvFGDUXoR/jRKsh+VSrD0XLBRY=; b=lI47ABtH4H2X+1
	kjf6KIxNAENSiH/Za2PW3NXhH3TBGd8hKuhgQ9rRuMLVtYtxdREQO33fGI4vUVUY+T9weaQK3F41S
	wyq+HAFIU/2AwGYkCOYxS3wBO7e9priwtOi5pHsC+RqRooEuw62zdibTflQp2SbOMlJ7BHm9L+uZy
	0mYvPgpcLkd82kQw8rvg76fz7+Ru41RdcJa012Vukbn3eaLV+BN/29XVQ4qf1JKQFeI4nAmOiyj3f
	GonUlGYHZLhlMX4ZkVlHgpuPmiWmIeO6NBozA2OjwExg1m3QZvi0NXimJw9R9Ql6P1aEBd2eQYUkp
	dqVjOA1yAch7fs0Dk/ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQwV4-0004Fs-21; Wed, 15 May 2019 16:11:26 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwUw-0004FP-B5
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 16:11:20 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FGBC1v047466
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 18:11:12 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C35FC37D2;
 Wed, 15 May 2019 18:11:09 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id fd20bcf2;
 Wed, 15 May 2019 18:11:08 +0200 (CEST)
Date: Wed, 15 May 2019 18:11:08 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Pavel Kubelun <be.dissent@gmail.com>
Message-ID: <20190515161108.GA17661@meh.true.cz>
References: <20190514134220.3626-1-be.dissent@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514134220.3626-1-be.dissent@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_091118_700310_DBA166FF 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 1/4] ipq40xx: directly define voltage
 per opp
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

Pavel Kubelun <be.dissent@gmail.com> [2019-05-14 16:42:17]:

> diff --git a/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch b/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch
> index d72e3d3c36..ac128ab9e1 100644
> --- a/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch
> +++ b/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch
> @@ -22,7 +22,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
>  
>  --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
>  +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> -@@ -262,7 +262,7 @@
> +@@ -266,7 +266,7 @@
>   
>                   saw0: regulator@b089000 {
>                           compatible = "qcom,saw2";

Some leftover?

> diff --git a/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devicetree-nodes.patch b/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
> index 44c07f8f45..be413188a7 100644
> --- a/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
> +++ b/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
> @@ -41,7 +41,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
>   };
>  --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
>  +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> -@@ -410,5 +410,79 @@
> +@@ -414,5 +414,79 @@
>   					  "legacy";
>   			status = "disabled";
>   		};

Ditto.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
