Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4166419A07B
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Mar 2020 23:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	To:From:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=y7ObOLWotP0FQErYwnzcLuGZ+S/g2YXWhmYrfhESUnM=; b=WDxlcxx8Iah0lF
	+MGQ+ZiHudqi2VKUKqLKZQ5xIKyaPieDeE27TwVsrzmkIRAuBgr+OSmu5TD2hbjMsPUxYTIml6EiF
	E/Epx2tA7jxoJ0e3nfW7efSiPw81PymIj9V/tGg/rFFjAnwoI/PRHFwYeRlDNU/XmXplPCZzahQyL
	6fXHKDz/sRTyG3lK8xooYWZRGLvAORWVK4h4MfhkbauIckAU1vQnT9yu3pyUoL7+q9ScR0S1ZcTzv
	vLL5dxOd0UylM6KVaoUn+/Out7wUz7jeDrGMaz1hcYYDS0LYw/rFxQVgXXUx0hWc/fagit3y24hRj
	j7WIpgi9SeA8tKJTqXuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJO9X-0004KO-VN; Tue, 31 Mar 2020 21:10:31 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJO9P-0004JL-OJ
 for openwrt-devel@lists.openwrt.org; Tue, 31 Mar 2020 21:10:25 +0000
Received: from localhost (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 380FB200007;
 Tue, 31 Mar 2020 21:10:12 +0000 (UTC)
In-Reply-To: <20200331092158.5787-1-ynezz@true.cz>
Date: Tue, 31 Mar 2020 09:43:31 -1000
From: "Paul Spooren" <mail@aparcar.org>
To: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 <openwrt-devel@lists.openwrt.org>
Message-Id: <C1P9ZYPKKTA6.IZ2MX6JTNMBY@tb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_141023_922805_238569A7 
X-CRM114-Status: UNSURE (   2.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu,
 tegra: make CPU subtype default to vfp3-d16
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
Cc: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 Tomasz Maciej Nowak <tomek_n@o2.pl>, Christian Lamparter <chunkeey@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Tested on mvebu and fixes opkg issue the issue for me, thanks!

Best,
Paul

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
