Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E413309BC
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 May 2019 09:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5kAwZ7jDSQG0Sg9U+oaVfn9aPRdV5yZde45yOw4ufj4=; b=JOiEHsFWAs3GeUAGWXc/1IDkzL
	xALYMTGTEKbyLYfDhhECZkesuFm2FMRD+4WZpgr1xdFt6tIibv9FIlvi/uN1KujczsrOD47bqS87+
	Prw9OuRSNvAIIMgUJE/x4B1KVHojECu3Yhn+0IYo9MH517OdfCnJissAp9P/D9j8sycr+M6kgjOA9
	qMW8i7lLnFK4OjrSCKLeL+mKV8RUqiTGg9tD4Fv3hm5Ke52n8miAbyvINcxymonnJx6nd9Z5E4fcz
	Ier7O051kzTTFtP3ldyA11UFXoz+dyNqYQrt5EsoqOYYfkyUAkuR2tOTKrLBpGz1vU76aCg7O7h+X
	cLRRxYFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcPi-0004mw-Gq; Fri, 31 May 2019 07:57:22 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcPZ-0004kQ-Cp
 for openwrt-devel@lists.openwrt.org; Fri, 31 May 2019 07:57:15 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 567743506;
 Fri, 31 May 2019 09:57:10 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 36f76036;
 Fri, 31 May 2019 09:57:08 +0200 (CEST)
Date: Fri, 31 May 2019 09:57:08 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Kristian Evensen <kristian.evensen@gmail.com>
Message-ID: <20190531075708.GG13432@meh.true.cz>
References: <20190520180732.8846-1-kristian.evensen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520180732.8846-1-kristian.evensen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_005713_583812_C19F0514 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add support for ZBT-WD323
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Kristian Evensen <kristian.evensen@gmail.com> [2019-05-20 20:07:32]:

Hi,

> +zbtlink,zbt-wd323)
> +	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wifi" "phy0tpt"
> +	;;
>  esac

Please add this trigger to the DTS.

> +#include "ar9344.dtsi"
> +	compatible = "zbtlink,zbt-wd323", "qca,ar9334";

Is it really ar9334 ?

> +	aliases {
> +		serial0 = &uart;
> +	};

Why do you need this alias? Does it work without it? ar9344 has ns16550a UART
which doesn't need this alias.

> +	keys {
> +		compatible = "gpio-keys-polled";

Does it work for you with "gpio-keys" compatible? It's interrupt driven, so
should be preferred.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
