Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280702F9EC
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 May 2019 12:00:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8ov+O/tkb3g1x8BC9ere3wMU3Wqbm+lrvBT/FMFo8q8=; b=Ng02aoeWmkEki26jr4EjaUNGb2
	wUm5cBHvS/Y5pb6NWiamZ3SvLAMKKQeuPStESJ/eBh8g1tUfWbtVLXtoa2Uo416XH0wqTPEnjxa13
	K7hBVRpucHqki2cm0Ag4/CVrbYPHYBVA47bQ5atfC0jP0OPpnMts5KrV4fN+M0zGtuVqURh9gf1Re
	7Q/kH8c5kawaVrwbvwP+Exx+m86fuMc0L1j01xV3C3XRGK0Mm7Ve6A533Ud5JR98+JTbFIkUnBOVL
	yMK6tbtw5Mx9lPU1V1ftcHPZTvQ+T6PxdisVIzuaj5T6vchothveVLR1TcDBqvG+Tuu671D5MxaHf
	CdMqyuew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWHrT-0000Vq-QC; Thu, 30 May 2019 10:00:39 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWHrN-0000VN-4m
 for openwrt-devel@lists.openwrt.org; Thu, 30 May 2019 10:00:34 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 037564F27;
 Thu, 30 May 2019 12:00:28 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id f95b7945;
 Thu, 30 May 2019 12:00:27 +0200 (CEST)
Date: Thu, 30 May 2019 12:00:27 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Christian Lamparter <chunkeey@gmail.com>
Message-ID: <20190530100027.GE13432@meh.true.cz>
References: <a3db69d2fc4b460dcb2e58e2608f7fdd8640c5c8.1559159872.git.chunkeey@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a3db69d2fc4b460dcb2e58e2608f7fdd8640c5c8.1559159872.git.chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_030033_337148_B5058619 
X-CRM114-Status: UNSURE (   4.15  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] gpio-button-hotplug: support
 interrupt properties
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q2hyaXN0aWFuIExhbXBhcnRlciA8Y2h1bmtlZXlAZ21haWwuY29tPiBbMjAxOS0wNS0yOSAyMTo1
ODoyOV06CgpIaSwKCj4gVXBzdHJlYW0gTGludXgncyBpbnB1dCBncGlvLWtleXMgZHJpdmVyIHN1
cHBvcnRzCj4gc3BlY2lmeWluZyBhIGV4dGVybmFsIGludGVycnVwdCBmb3IgYSBncGlvIHZpYSB0
aGUKPiAnaW50ZXJydXB0cycgcHJvcGVydGllcyBhcyB3ZWxsIGFzIGhhdmluZyBzdXBwb3J0Cj4g
Zm9yIHNvZnR3YXJlIGRlYm91bmNlLgoKWy4uLl0KCkkndmUganVzdCBjaGVja2VkIHRoaXMgb24g
YXRoNzkgKGFyY2hlci1jNy12NSkgYW5kIG9uIHJhbWlwcy9tdDc2MjAKKGJkY29tLHdhcDIxMDAt
c2spIHdpdGggV1BTIGJ1dHRvbnMuCgpBY2tlZC1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
