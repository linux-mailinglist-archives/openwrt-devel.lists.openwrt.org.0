Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DD2329C0
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Jun 2019 09:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zTcYTLt/l+apXebGjArYTI1GceIETetWCXcv5Wpg7oQ=; b=DU9FgRCKndHsFBsV85mV0vmpag
	8CtnB9hbLSdf4Xr2bgXUHhbod8Ni2NLiXyrEAQ6sAn1/W3WkWaNGO9EHGqbgsbT6kvVHqvrDk7k4q
	wrrtP5cYzHiZIikInH65T9qledExTsRmViE/wjSXlFEdhilQl9Z8mdoxr3p7mrDb3Fm4EvsAc+AjX
	qoLurA4DMXitp4rXZD+JpYBWUhv0K0Cj0WF2T3MatH2NQlmCywGm/YSbQAZE6x8satFAl+YDY/Rn8
	BG94N+95k1f+Kde2z2lIdkggs1wySvz6/arspVG00f+fA7SfcrUjM3R05Gmc7C8x364tpeE+6x04s
	7M60YbKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhXM-0005c0-JS; Mon, 03 Jun 2019 07:37:44 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhX9-0005bT-MY
 for openwrt-devel@lists.openwrt.org; Mon, 03 Jun 2019 07:37:33 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7F3E445D5;
 Mon,  3 Jun 2019 09:37:28 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id e5d805ff;
 Mon, 3 Jun 2019 09:37:25 +0200 (CEST)
Date: Mon, 3 Jun 2019 09:37:25 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: "W. Michael Petullo" <mike@flyn.org>
Message-ID: <20190603073725.GI13432@meh.true.cz>
References: <20190602215628.GA22193@imp.flyn.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190602215628.GA22193@imp.flyn.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_003731_903775_E65E1EFF 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [OpenWrt-Devel] Running Raspberry Pi 3 OpenWrt in QEMU
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

W. Michael Petullo <mike@flyn.org> [2019-06-02 17:56:28]:

Hi,

> I am interested in running the Raspberry Pi 3 OpenWrt image (built from
> commit a1210f88) in QEMU. 

any reason why you can't use armvirt 32/64 images?

>  I am close to accomplishing this, but the kernel panics soon after booting.

You've probably hit some unhandled corner case in the dwc driver.

[...]

> The kernel call stack at the time of the crash appears to be:
> 
> DWC_READ_REG32
> dwc_otg_driver_probe
> platform_drv_probe
> driver_probe_device
> __driver_attach
> bus_for_each_dev
> driver_attach
> bus_add_driver
> driver_register
> __platform_driver_register
> dwc_otg_driver_init
> do_one_initcall
> kernel_init_freeable
> kernel_init
> ret_from_fork
> 
> Has anyone had more luck with this?

Can you please create a ticket on bugs.openwrt.org with a complete kernel
crash report? You should provide complete kernel crash, copy&paste it from the
log, this stripped down version doesn't help much. Thanks.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
