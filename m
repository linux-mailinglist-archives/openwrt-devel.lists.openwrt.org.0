Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F2A44C98
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 21:51:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WtN4/+pOhaDN01SJYFclixla9W5q9vliSCDZQH1/7xw=; b=KcDI9uIR0lTP1us96rM7qBGfWK
	XToe2BkRLQDLFEoolEqHxjOfblhL79+ByQqbnFUonx9r1RCOX3s3lNVn5riUO/2qx84mSTZJ1rJO3
	xMjPh0Zjd2A+gclrBhgsdyh7AJkriBSbzecRKIqEmKHEPlU9N4Ig1qxKdnG+PaGXDBmZzhWL59Slz
	T5yYcOMj/QRfSBZg8nzxBzUQEFKh0iAzotvdAJKaWBncMEjozvwqxWTSAIpyOgrYsOLyTKx73+PCL
	BqaLIkk2odwW+qsdpuUVnaJR8nWxiUsZeTOzrWjn761T2reOZ7Lbub4e7qJ9xHiqnKCbFRS+TU0y2
	SIXvo21g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbVkQ-00027e-Cy; Thu, 13 Jun 2019 19:50:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbVkI-00027F-Uq
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 19:50:52 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A33404CE1;
 Thu, 13 Jun 2019 21:50:44 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 6dbeb2a2;
 Thu, 13 Jun 2019 21:50:42 +0200 (CEST)
Date: Thu, 13 Jun 2019 21:50:42 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: David Bauer <mail@david-bauer.net>
Message-ID: <20190613195042.GD39806@meh.true.cz>
References: <1559653541-26682-1-git-send-email-ynezz@true.cz>
 <CAAd0S9CEPJqQXJ6OhW9_597ig92Typb7s0L5HwpLm-CU=ska6g@mail.gmail.com>
 <1eaf3583-d246-8598-eecd-6d27e16b914e@david-bauer.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1eaf3583-d246-8598-eecd-6d27e16b914e@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_125051_142010_94380C0F 
X-CRM114-Status: UNSURE (   6.18  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: gpio-keys: fix
 always missing first event
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

David Bauer <mail@david-bauer.net> [2019-06-11 23:52:46]:

Hi,

> I ran into problems booting multiple QCA9558 boards, namely the OCEDO
> Koala and the devolo WiFi pro 1200e with the current master. Both
> devices always go into failsafe mode when powering on.

ar71xx or ath79? Can you test if it happens also with the interrupt based
`gpio-keys` variant?

> I haven't dug deeper into this issue, but reverting 6c5bfaac84 leads
> into both boards booting normally.

could you please compile kernel with `CONFIG_KERNEL_DYNAMIC_DEBUG=y` and then
add to the kernel cmdline `gpio_button_hotplug.dyndbg='file gpio-button* +p'`
(or to modprobe args) and provide the output?

Thanks.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
