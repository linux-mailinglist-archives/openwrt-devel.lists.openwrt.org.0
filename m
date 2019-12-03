Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C77CA110656
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 22:13:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PFM5uFFLYLU0x9++/JVj8IGQePF5Dh8bmRMg7oC9eDc=; b=ETgPE19AZGeUih4FYeMOtbR0ho
	G25gvW9XJ/V7zwmkGqK08LccZl/buwue8xoTSknhyXZpGNtR1w9BPSVXt7EcoWfduFHQ0S6MsVjMx
	gjNfsTy+IKUsTlFXNTStVy1sjKH5dlhPPh2e1StXKDgtGeHMeRsDiMSe+cy8u/l/7PgAgpyjhz3pQ
	6wfz1JvQmkbPuHtvL6vdbfvcEPOufv81W4MueM0vMy/w83Ku1ATzh7sMo9U2qRldcZ9/kQ5auBpqK
	kgRDfJIjxzT8I08iigWvfNIgB0kdfXzLFpcc4eYD7uRV+HhN+TyEHU70EAmY8swG3ent5bH8ZYL/R
	8xeinrTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icFU4-0006gt-Dd; Tue, 03 Dec 2019 21:13:24 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icFTs-0006gQ-A3
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 21:13:14 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B95484B5F;
 Tue,  3 Dec 2019 22:13:09 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b064221d;
 Tue, 3 Dec 2019 22:12:59 +0100 (CET)
Date: Tue, 3 Dec 2019 22:12:59 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Moritz Warning <moritzwarning@web.de>
Message-ID: <20191203211259.GA31638@meh.true.cz>
References: <20191203210232.29432-1-moritzwarning@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203210232.29432-1-moritzwarning@web.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_131312_500892_EAC60DEE 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: fix inverted reset led for
 ravpower wd03
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

Moritz Warning <moritzwarning@web.de> [2019-12-03 22:02:32]:

Missing commit description, led -> button in the commit subject.

> Signed-off-by: Moritz Warning <moritzwarning@web.de>
> ---
>  target/linux/ramips/dts/mt7620n_ravpower_wd03.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts b/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> index 7dcff46917..bcc1e2c27b 100644
> --- a/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> +++ b/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> @@ -32,7 +32,7 @@
> 
>  		reset {
>  			label = "reset";
> -			gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
> +			gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
>  			linux,code = <KEY_RESTART>;
>  		};
>  	};
> --
> 2.23.0

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
