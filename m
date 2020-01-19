Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7938B141E65
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Jan 2020 15:05:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X/WWaipmk1F+MipVcNmFmInxxrGHkMtyVG6j78M4R+8=; b=Npw1NFtQZgY+kpunK6p8KC1Ni
	vrsU1vwi5Gv4Cr3SaiXK1OZV8GkepcjGpJ6tMxmCjvHZ839JuhZq8gwFyuAUliGIwjBgxsFshufzf
	WybKUT7XHcZf4Mr9vEhok+iN8wHeYR1AQEv7+mOjP27Z7AxZVo0fmqc7H9AKWBO1o7BrysbzTySxy
	Y5TJ12ANvBFUwYXkSR9DkO+YrmoZps1SH16QnhsIpJbM2ZFnD9PYjlDdHnOUw8jduS+ItCfTex2Uh
	2YOMdp4sXJLuFH7FIK0kjEG0NzjL1qOBWbTEOkeTBaAjbW7pRwOwj4ZzMte9l97ymEI9uIwyYzR0p
	GdltXIJSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itBCl-0001pZ-Ag; Sun, 19 Jan 2020 14:05:31 +0000
Received: from welho-filter3.welho.com ([83.102.41.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itBCc-0001ou-N4
 for openwrt-devel@lists.openwrt.org; Sun, 19 Jan 2020 14:05:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter3.welho.com (Postfix) with ESMTP id C2594C12B;
 Sun, 19 Jan 2020 16:05:15 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp3.welho.com ([IPv6:::ffff:83.102.41.86])
 by localhost (welho-filter3.welho.com [::ffff:83.102.41.25]) (amavisd-new,
 port 10024)
 with ESMTP id ig-KYK5qaTTO; Sun, 19 Jan 2020 16:05:13 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp3.welho.com (Postfix) with ESMTPS id 560972308;
 Sun, 19 Jan 2020 16:05:11 +0200 (EET)
To: openwrt-devel@lists.openwrt.org, michal.cieslakiewicz@wp.pl
References: <20200119120816.44406149@kosmio.komorska>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <ed20fdff-e7f7-9423-1680-9a2caee7b740@iki.fi>
Date: Sun, 19 Jan 2020 16:05:11 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101
 Thunderbird/73.0
MIME-Version: 1.0
In-Reply-To: <20200119120816.44406149@kosmio.komorska>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_060522_918674_01BA2303 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.25 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 0/2] ath79: update device naming for
 Netgear WNDR3700v2
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

Michal Cieslakiewicz wrote on Sun Jan 19 03:08:16 PST 2020:

 > This patchset changes device string to 'wndr3700-v2' (adds dash before 
variant) making it compatible with naming convention for ath79 target. Then 
board, under its new name, is added to uboot-envtools.


What is the motivation for this?

The router was originally marketed as "WNDR3700v2" and that is both in the 
packaging and also in the printed label in the router itself. The "v2" is not 
a typical separate version number like many 6.1, 3.21 type of revisions next 
to the serial number, but it has been part of the device name.

Clear image of my WNDR3700v2 here:

https://forum.openwrt.org/t/wndr3700-or-wndr3800-or-what-did-i-just-buy/8166/9


To my knowledge the current naming enables pretty smooth 
upgrading/downgrading between 19.07 and master, as well as with ar71xx and 
ath79. Changing the name in one place might cause bumps to those sysupgrade 
paths.



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
