Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FF817AF16
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 20:42:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4BXal4X7cgu6vIeubp+DhO8zOa6urbC3wAx/y9mAwiU=; b=u47aRJ4v3Z13os
	0c5beRQtLubc4QfUt7PLLKjVffLKWPSRk02h6S8TMTC8ohqBGNQ3FhrhK7nJCECTdeuJ+IASPjRdR
	Vb+txyCRLgcGg7uQlm8pFrwzYiZa7KO2PrBNGUGYrrxHJOVB0DrO1ELoHh8vAzjmsNHEFNe7+4fAK
	gn4k7T6ydxtvES7ccuOBq+ojcLSmcgOAjRaVE1v8wcpa//QGhUgMNzczXg7xV6L9oPBJBFRw0Pixa
	SWjSmmlSxsZ97Y2DDvT4X7V12jIQ8BQW9xewQju+6nIcEmx0LJVCbjr6wTu/M4+Gt6UVTXKP9pluE
	vv7XyakkLo5/qa/6i9Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9wNa-0007PF-Oj; Thu, 05 Mar 2020 19:41:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9wNQ-0007Ol-J2
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 19:41:51 +0000
Received: from [127.0.0.1] (oi.rfid.io [198.211.125.99])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 5F4D3544B;
 Thu,  5 Mar 2020 20:41:45 +0100 (CET)
Date: Thu, 5 Mar 2020 19:41:43 +0000 (UTC)
From: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
To: Michael Jones <mike@meshplusplus.com>
Message-ID: <f23ab0c2-c208-4354-b6cd-b4f6d1821818@localhost>
In-Reply-To: <CAJQUmm4Jp1jWkR7OMdUvn4KEo9CQM0UuWxZqYyhjQ=X-ZzQ0jQ@mail.gmail.com>
References: <20200305084912.14659-1-ynezz@true.cz>
 <px9v7VGUzQWVsQG8LA985yU7sHqErVFNEMj8VRtq23cb@mailpile>
 <20200305113526.GB86312@meh.true.cz>
 <CAJQUmm4Jp1jWkR7OMdUvn4KEo9CQM0UuWxZqYyhjQ=X-ZzQ0jQ@mail.gmail.com>
MIME-Version: 1.0
X-Correlation-ID: <f23ab0c2-c208-4354-b6cd-b4f6d1821818@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_114149_593227_7646B1AE 
X-CRM114-Status: UNSURE (   4.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] rpcd: fix respawn settings
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>, Jo-Philip Wich <jow@mein.io>,
 Karl Palsson <karlp@tweak.net.au>, Florian Eckert <fe@dev.tdt.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



Mar 5, 2020 19:54:49 Michael Jones :

> The flip side here is that rpcd likes to crash a lot.

0 (zero) bugs found https://bugs.openwrt.org/index.php?string=rpcd

> By preventing automatic restarts, you're all but ensuring that users will experience denial-of-service, even in the absence of malicious traffic.

Default respawn retry value was 5, now is infinite and this patch restores it back to 5 respawns.

> Is rpcd subject to fuzz testing, to discover potential security issues

Not yet, it's planed. It's just one of the methods, you'll never be 100% sure anyway.

> that makes limiting the restarts attractive?

"Any remote service which crashes is potentially exploitable; we have to assume so, until we see the specific way it fails." -- Theo, OpenBSD

Recent real-world example from 36c3 in my previous email http://lists.infradead.org/pipermail/openwrt-devel/2020-March/022014.html



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
