Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5F012BF49
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 22:01:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fpcIGUFo+zNYgcL7zzCzwXKI2l2GGijXcEow8Cv4FLc=; b=jkmkQS1UG8t01ZubApkRbPFjDE
	h9ZtAXjy1nSyfuOpGBtNvqGQRNLmeUyOBC2dDgpFKZ+zFdlynWLPHqilXTcjy2qtIO4lp47IlPjEk
	ar1KbtPh8K/Cht8CR00DN+eHU4LCq4d9/SZRKqNL1CdkTcgTDFy5e1Oy3P8U8jSKBRXKcUmq/G7lC
	n+Oc67p6i3sG6Irp4ns/3aVoWbJ6emcUdiwfeAcxpwRHdo/O2kh41HRv+sny0R06yaBduRNKKyJqf
	Oj3+gVq48Q/sDwHZTS8OmDFKLhi60nBHqpp3yKyu1vYGwg2dBZZ49iWYVx/kmUF8tOkfPDgPfyTeS
	NDqqFNeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilJDK-00085g-HQ; Sat, 28 Dec 2019 21:01:34 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilJDA-00084q-BN
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 21:01:26 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 44645338C;
 Sat, 28 Dec 2019 22:01:21 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 8d6e5574;
 Sat, 28 Dec 2019 22:01:10 +0100 (CET)
Date: Sat, 28 Dec 2019 22:01:10 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <20191228210110.GG70184@meh.true.cz>
References: <6cb3b640-8590-d083-e5c2-63df74c7e86b@welho.com>
 <20191226225936.GB70184@meh.true.cz>
 <fa84e9a6-5b08-c680-b3ed-0ad1b3f00359@iki.fi>
 <20191227122541.GC70184@meh.true.cz>
 <20191227140400.GD70184@meh.true.cz>
 <4befe9c3-419b-5903-9db5-bc0518634234@iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4befe9c3-419b-5903-9db5-bc0518634234@iki.fi>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_130124_539607_E6AA6798 
X-CRM114-Status: UNSURE (   3.02  )
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
Subject: Re: [OpenWrt-Devel] ubus and/or libubox upgrades today cause
 problems: some services do not start, logread hangs
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hannu Nyman <hannu.nyman@iki.fi> [2019-12-28 12:53:27]:

Hi,

> For me, at least collectd and nlbwmon do not start.

I've just pushed fix[1], thanks for the report.

1. https://git.openwrt.org/e3e939d8e624290d14471d913154f4febf3a160b

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
