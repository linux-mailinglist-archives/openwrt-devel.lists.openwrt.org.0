Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F294B8C79
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 10:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1f11PbfLfHEPqRWlV3OZ1FQRCzQGGQhebdQAgv8bD5o=; b=XXWQbU8Kd+8AfuDnE1Z4weXWqG
	CL7q6KfZ3L6trSmnCQoDRfjCiJb1lGiWPMUGPaOIJiTAZZAAweSNgAGVaTwRipYSDRMbGpTfG87JR
	Qu0jw2sXsUMWgUBG0ZlmFj32wutUSA+267gVtckFC4tlLkoJHVkQgWb4onHdhpslaBVcsyTe9MU8e
	BMvOeqanfta7uHqIyLkRurPcjaratKSUdFIdHXufCRYc5t3zklGBj5nqDcal3yEFknzQov4T6Hcpj
	CG5rS9ocnFYXLnRp8v9Bs7VyNDaiZAykjduU5iG/GlbSzhuEAs+Htv+CWP0XSDbqcTsVVvozz7uQb
	ucw+iXMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBE8F-00014a-1N; Fri, 20 Sep 2019 08:19:11 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBE85-000148-2L
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 08:19:02 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id F0BFE4C73;
 Fri, 20 Sep 2019 10:18:58 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4bff7733;
 Fri, 20 Sep 2019 10:18:51 +0200 (CEST)
Date: Fri, 20 Sep 2019 10:18:51 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Kristian Evensen <kristian.evensen@gmail.com>
Message-ID: <20190920081851.GA48097@meh.true.cz>
References: <20190623092448.27880-1-kristian.evensen@gmail.com>
 <20190623092448.27880-2-kristian.evensen@gmail.com>
 <20190920075558.GA21104@meh.true.cz>
 <CAKfDRXig69o3Jad-KPBizY9_U41=tMjpS7+G-QCAOp7pCm5usQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKfDRXig69o3Jad-KPBizY9_U41=tMjpS7+G-QCAOp7pCm5usQ@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_011901_261702_957E9DAF 
X-CRM114-Status: UNSURE (   4.30  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ramips: Update ZBT WE1026 DTS-files
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

S3Jpc3RpYW4gRXZlbnNlbiA8a3Jpc3RpYW4uZXZlbnNlbkBnbWFpbC5jb20+IFsyMDE5LTA5LTIw
IDEwOjEzOjMxXToKCj4gSSB3aWxsIGRvIGl0IGR1cmluZyBvciByaWdodCBvdmVyIHRoZSB3ZWVr
ZW5kLiBCdHcsIGNhbiBJIGNvbnNpZGVyCj4gdGhpcyB5b3VyIEFDSyBvZiB0aGUgbGljZW5zaW5n
IGNoYW5nZSBhcyB3ZWxsPwoKQWNrZWQtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
