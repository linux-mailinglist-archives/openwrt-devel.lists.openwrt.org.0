Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EA21D75E4
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 May 2020 13:07:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=12XpgTplz72wkMy5LDwJjBpTdyBp9ZOSvG0GZSqXh2k=; b=OYprQM9tuAUZjp
	4GSPsd8nBdLH9bcquD3zQpwOihA78OZ4Yhw6Zr3StQhhmEQjawG2SbrownaXQ2hWAk/fdk1Du/Fln
	vEAY9ORYazNf7BTYCzTq+BTWxntLGAdynH1+U7kvKRnmC1uMPuMhCJZemnrUo96QMZ/EmekEqe89B
	wjbfT7ekAKmixv7rotIZQulFbqj8v6OZ2tnYfgVI/Oo4MVOr2TYZZv84D/q/Y2tUErhwagUKGFi95
	ShIjzo0pcefGOhORkL6KdVKifbvy8XjNXzt8xyMB8KdDK/oBsRmna8x02/04OkcMn2DAgf7G5FLw/
	yxx2Lh2gqyt8n/087+pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jadcL-0005aG-9h; Mon, 18 May 2020 11:07:33 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jadcE-0005ZS-Pz
 for openwrt-devel@lists.openwrt.org; Mon, 18 May 2020 11:07:28 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 20465600A8;
 Mon, 18 May 2020 13:07:20 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 20465600A8
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 20465600A8
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1589800041; bh=stj5+Nc3+jxEplOWmsN6RbitJEFFcCkqZq6MxYULVsQ=;
 h=From:To:Cc:Subject:Date:From;
 b=DIb3kNWm2Aa6e1V5/zVDWYoLQrvIa+88Yf/aocWYwL3Jlx0Uhi5naTZqMk+OZeT+A
 agePptXkNyxjjWk6RTcJuhnYXXNXmfegqNjZjXfI2P1OaSJP6/gh1n13vyVXIKOWE2
 mGcMLos025J+yT2XBnOav40wxfOaL08b5ke+pO1I=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 18 May 2020 13:07:19 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 18 May 2020 13:07:11 +0200
Message-Id: <20200518110712.47238-1-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY,UNWANTED_LANGUAGE_BODY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_040727_010022_70480CAE 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/2] generic: routerbootpart.c: disambiguate
 SPDX-License-Identifier
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SSBtZWFudCBpdCB0byBiZSBHUEwtMi4wLW9ubHksIGFzIGV2aWRlbmNlZCBieSB0aGUgYm9pbGVy
cGxhdGUuCgpTaWduZWQtb2ZmLWJ5OiBUaGliYXV0IFZBUsOITkUgPGhhY2tzQHNsYXNoZGlydC5v
cmc+Ci0tLQogdGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJpdmVycy9tdGQvcGFyc2Vycy9y
b3V0ZXJib290cGFydC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJp
dmVycy9tdGQvcGFyc2Vycy9yb3V0ZXJib290cGFydC5jIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMv
ZmlsZXMvZHJpdmVycy9tdGQvcGFyc2Vycy9yb3V0ZXJib290cGFydC5jCmluZGV4IGUwMTkwOTQw
NTguLmY5YmJhMGYzYmEgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9nZW5lcmljL2ZpbGVzL2Ry
aXZlcnMvbXRkL3BhcnNlcnMvcm91dGVyYm9vdHBhcnQuYworKysgYi90YXJnZXQvbGludXgvZ2Vu
ZXJpYy9maWxlcy9kcml2ZXJzL210ZC9wYXJzZXJzL3JvdXRlcmJvb3RwYXJ0LmMKQEAgLTEsNCAr
MSw0IEBACi0vLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAorLy8gU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQogLyoKICAqIFBhcnNlciBmb3IgTWlrcm9UaWsg
Um91dGVyQm9vdCBwYXJ0aXRpb25zLgogICoKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
