Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EA91966B3
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 15:22:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2a/O9Km3xAk4AHR63uUHP5t7ERyajXQg0dP3WMtwAW8=; b=aqM2b0nI5ifV9l
	pnbFjIgynA/OShsXolP5cfBwGs8paDLEMERfxj8AKq2MNUicCQub5ZXnZWOvO2PG3C1mv576QCzoB
	RMlx01q7aAK3/ACoiIW1vUQ/rxpghyDQdmIybBlu/OVIWTjq1FfG1c1129QERq9GcmZQPDPhVN4fp
	hL8Obaef8T/XWxP1E9/wbhZiJbfXRO++LEZTBz89075wTolUyAfQmvZc4BwLs68TvOXrFk88I/6Nn
	B9vl3VNJXRqNUwGvbmbnnSh6SIoMxHZbilKjvFzoZC2pyUIoY8Z4oD3ah3cQ7/bEcp5dOfcHjIPj0
	LiWREZJFolvcxdXlKMeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jICM1-0000u2-I9; Sat, 28 Mar 2020 14:22:29 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jICKt-0007xX-M0
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 14:21:21 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 42AEB600A7;
 Sat, 28 Mar 2020 15:21:15 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 42AEB600A7
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 42AEB600A7
Received: by supercopter (sSMTP sendmail emulation);
 Sat, 28 Mar 2020 15:21:14 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 15:20:28 +0100
Message-Id: <20200328142032.37734-8-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200328142032.37734-1-hacks@slashdirt.org>
References: <20200328142032.37734-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_072119_894425_23F9C1E1 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
Subject: [OpenWrt-Devel] [PATCH 07/11] generic: routerboot partition build
 bits (4.14)
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

U2lnbmVkLW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgotLS0K
IC4uLi80MzUtbXRkLWFkZC1yb3V0ZXJib290cGFydC1wYXJzZXItY29uZmlnLnBhdGNoIHwgNDEg
KysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKykK
IGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvZ2VuZXJpYy9wZW5kaW5nLTQuMTQvNDM1
LW10ZC1hZGQtcm91dGVyYm9vdHBhcnQtcGFyc2VyLWNvbmZpZy5wYXRjaAoKZGlmZiAtLWdpdCBh
L3RhcmdldC9saW51eC9nZW5lcmljL3BlbmRpbmctNC4xNC80MzUtbXRkLWFkZC1yb3V0ZXJib290
cGFydC1wYXJzZXItY29uZmlnLnBhdGNoIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00
LjE0LzQzNS1tdGQtYWRkLXJvdXRlcmJvb3RwYXJ0LXBhcnNlci1jb25maWcucGF0Y2gKbmV3IGZp
bGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMC4uNzlhYTg5ZGNiMwotLS0gL2Rldi9udWxs
CisrKyBiL3RhcmdldC9saW51eC9nZW5lcmljL3BlbmRpbmctNC4xNC80MzUtbXRkLWFkZC1yb3V0
ZXJib290cGFydC1wYXJzZXItY29uZmlnLnBhdGNoCkBAIC0wLDAgKzEsNDEgQEAKK0Zyb20gNDQz
N2UwMWZiNmJjYTYzZmNjZGJhNWQ2YzQ0ODg4YjA5MzU4ODVjMiBNb24gU2VwIDE3IDAwOjAwOjAw
IDIwMDEKK0Zyb206ID0/VVRGLTg/cT9UaGliYXV0PTIwVkFSPUMzPTg4TkU/PSA8aGFja3NAc2xh
c2hkaXJ0Lm9yZz4KK0RhdGU6IFR1ZSwgMjQgTWFyIDIwMjAgMTE6NDU6MDcgKzAxMDAKK1N1Ympl
Y3Q6IFtQQVRDSF0gZ2VuZXJpYzogcm91dGVyYm9vdCBwYXJ0aXRpb24gYnVpbGQgYml0cyAoNC4x
NCkKK01JTUUtVmVyc2lvbjogMS4wCitDb250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9
VVRGLTgKK0NvbnRlbnQtVHJhbnNmZXItRW5jb2Rpbmc6IDhiaXQKKworU2lnbmVkLW9mZi1ieTog
VGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgorLS0tCisgZHJpdmVycy9tdGQv
cGFyc2Vycy9LY29uZmlnICB8IDkgKysrKysrKysrCisgZHJpdmVycy9tdGQvcGFyc2Vycy9NYWtl
ZmlsZSB8IDEgKworIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQorCitkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tdGQvcGFyc2Vycy9LY29uZmlnIGIvZHJpdmVycy9tdGQvcGFyc2Vycy9L
Y29uZmlnCitpbmRleCBkMjA2YjNjLi41OGNiZGQ2IDEwMDY0NAorLS0tIGEvZHJpdmVycy9tdGQv
cGFyc2Vycy9LY29uZmlnCisrKysgYi9kcml2ZXJzL210ZC9wYXJzZXJzL0tjb25maWcKK0BAIC02
LDMgKzYsMTIgQEAgY29uZmlnIE1URF9QQVJTRVJfVFJYCisgCSAgbWF5IGNvbnRhaW4gdXAgdG8g
My80IHBhcnRpdGlvbnMgKGRlcGVuZGluZyBvbiB0aGUgdmVyc2lvbikuCisgCSAgVGhpcyBkcml2
ZXIgd2lsbCBwYXJzZSBUUlggaGVhZGVyIGFuZCByZXBvcnQgYXQgbGVhc3QgdHdvIHBhcnRpdGlv
bnM6CisgCSAga2VybmVsIGFuZCByb290ZnMuCisrCisrY29uZmlnIE1URF9ST1VURVJCT09UX1BB
UlRTCisrCXRyaXN0YXRlICJSb3V0ZXJCb290IGZsYXNoIHBhcnRpdGlvbiBwYXJzZXIiCisrCWRl
cGVuZHMgb24gTVREICYmIE9GCisrCWhlbHAKKysJICBNaWtyb1RpayBSb3V0ZXJCb290IGlzIGlt
cGxlbWVudGVkIGFzIGEgbXVsdGkgc2VnbWVudCBzeXN0ZW0gb24gdGhlCisrCSAgZmxhc2gsIHNv
bWUgb2Ygd2hpY2ggYXJlIGZpeGVkIGFuZCBzb21lIG9mIHdoaWNoIGFyZSBsb2NhdGVkIGF0Cisr
CSAgdmFyaWFibGUgb2Zmc2V0cy4gVGhpcyBwYXJzZXIgaGFuZGxlcyBib3RoIGNhc2VzIHZpYSBw
cm9wZXJseQorKwkgIGZvcm1hdHRlZCBEVFMuCitkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvcGFy
c2Vycy9NYWtlZmlsZSBiL2RyaXZlcnMvbXRkL3BhcnNlcnMvTWFrZWZpbGUKK2luZGV4IDRkOTAy
NGUuLjQxZDM2M2EgMTAwNjQ0CistLS0gYS9kcml2ZXJzL210ZC9wYXJzZXJzL01ha2VmaWxlCisr
KysgYi9kcml2ZXJzL210ZC9wYXJzZXJzL01ha2VmaWxlCitAQCAtMSArMSwyIEBACisgb2JqLSQo
Q09ORklHX01URF9QQVJTRVJfVFJYKQkJKz0gcGFyc2VyX3RyeC5vCisrb2JqLSQoQ09ORklHX01U
RF9ST1VURVJCT09UX1BBUlRTKQkrPSByb3V0ZXJib290cGFydC5vCistLSAKKzIuMTEuMAorCi0t
IAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
