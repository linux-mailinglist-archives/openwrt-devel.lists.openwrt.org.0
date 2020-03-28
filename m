Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D781966AC
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 15:21:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8ZzT+ud7wMPCnzYwdTV/CeowCoszTPZV4xI87U6Prk=; b=gjGMTDwQucLVF3
	ZvbylIw6M/QGbehB2Zq6RF39han0tvfj30fIezYRu1D4diwp1pECbhkol2XLiLjb0g8WXIyfTm3hX
	tnfp7lGRtzJe7E43AYycbQoWsH7QVjO+mVIf+nRK7+ZTBbQCFWJnPfcts+jfH2jD/vzZt4mCp+mGQ
	BHodzU53duDAQwKr4WV6BLHk6CXcMArl9h3Y+DvuRICGB/WagJt0cdRu7Yez0bpBCTAwN8P7m/B+G
	K4UXupx/viHehcu1zKzZMJZjdXq4mycvyOfxu0x8WQE0s2cD+Pzx4BapqaFAyjVqqUU9Znbmg2n7k
	RkPDtFL0ewj/U/VgoX7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jICL7-00086f-Ei; Sat, 28 Mar 2020 14:21:33 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jICKb-0007gU-Bt
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 14:21:02 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id DB4DE606F2;
 Sat, 28 Mar 2020 15:20:56 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org DB4DE606F2
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org DB4DE606F2
Received: by supercopter (sSMTP sendmail emulation);
 Sat, 28 Mar 2020 15:20:56 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 15:20:23 +0100
Message-Id: <20200328142032.37734-3-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200328142032.37734-1-hacks@slashdirt.org>
References: <20200328142032.37734-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_072101_566846_E769E160 
X-CRM114-Status: GOOD (  11.39  )
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
Subject: [OpenWrt-Devel] [PATCH 02/11] generic: routerboot partition build
 bits (4.19)
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
IC4uLi80MzUtbXRkLWFkZC1yb3V0ZXJib290cGFydC1wYXJzZXItY29uZmlnLnBhdGNoIHwgMjUg
KysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKykK
IGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvZ2VuZXJpYy9wZW5kaW5nLTQuMTkvNDM1
LW10ZC1hZGQtcm91dGVyYm9vdHBhcnQtcGFyc2VyLWNvbmZpZy5wYXRjaAoKZGlmZiAtLWdpdCBh
L3RhcmdldC9saW51eC9nZW5lcmljL3BlbmRpbmctNC4xOS80MzUtbXRkLWFkZC1yb3V0ZXJib290
cGFydC1wYXJzZXItY29uZmlnLnBhdGNoIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00
LjE5LzQzNS1tdGQtYWRkLXJvdXRlcmJvb3RwYXJ0LXBhcnNlci1jb25maWcucGF0Y2gKbmV3IGZp
bGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMC4uMmNjOTExNzliMQotLS0gL2Rldi9udWxs
CisrKyBiL3RhcmdldC9saW51eC9nZW5lcmljL3BlbmRpbmctNC4xOS80MzUtbXRkLWFkZC1yb3V0
ZXJib290cGFydC1wYXJzZXItY29uZmlnLnBhdGNoCkBAIC0wLDAgKzEsMjUgQEAKK2RpZmYgLS1n
aXQgYS9kcml2ZXJzL210ZC9wYXJzZXJzL0tjb25maWcgYi9kcml2ZXJzL210ZC9wYXJzZXJzL0tj
b25maWcKK2luZGV4IGRlNmY1ZjguLjBhZmE4OWMgMTAwNjQ0CistLS0gYS9kcml2ZXJzL210ZC9w
YXJzZXJzL0tjb25maWcKKysrKyBiL2RyaXZlcnMvbXRkL3BhcnNlcnMvS2NvbmZpZworQEAgLTIy
LDMgKzIyLDEyIEBAIGNvbmZpZyBNVERfU0hBUlBTTF9QQVJUUworIAkgIFRoaXMgcHJvdmlkZXMg
dGhlIHJlYWQtb25seSBGVEwgbG9naWMgbmVjZXNzYXJ5IHRvIHJlYWQgdGhlIHBhcnRpdGlvbgor
IAkgIHRhYmxlIGZyb20gdGhlIE5BTkQgZmxhc2ggb2YgU2hhcnAgU0wgU2VyaWVzIChaYXVydXMp
IGFuZCB0aGUgTVRECisgCSAgcGFydGl0aW9uIHBhcnNlciB1c2luZyB0aGlzIGNvZGUuCisrCisr
Y29uZmlnIE1URF9ST1VURVJCT09UX1BBUlRTCisrCXRyaXN0YXRlICJSb3V0ZXJCb290IGZsYXNo
IHBhcnRpdGlvbiBwYXJzZXIiCisrCWRlcGVuZHMgb24gTVREICYmIE9GCisrCWhlbHAKKysJICBN
aWtyb1RpayBSb3V0ZXJCb290IGlzIGltcGxlbWVudGVkIGFzIGEgbXVsdGkgc2VnbWVudCBzeXN0
ZW0gb24gdGhlCisrCSAgZmxhc2gsIHNvbWUgb2Ygd2hpY2ggYXJlIGZpeGVkIGFuZCBzb21lIG9m
IHdoaWNoIGFyZSBsb2NhdGVkIGF0CisrCSAgdmFyaWFibGUgb2Zmc2V0cy4gVGhpcyBwYXJzZXIg
aGFuZGxlcyBib3RoIGNhc2VzIHZpYSBwcm9wZXJseQorKwkgIGZvcm1hdHRlZCBEVFMuCitkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tdGQvcGFyc2Vycy9NYWtlZmlsZSBiL2RyaXZlcnMvbXRkL3BhcnNl
cnMvTWFrZWZpbGUKK2luZGV4IDQ0ZmYzNDIuLjA1NDMzNjIgMTAwNjQ0CistLS0gYS9kcml2ZXJz
L210ZC9wYXJzZXJzL01ha2VmaWxlCisrKysgYi9kcml2ZXJzL210ZC9wYXJzZXJzL01ha2VmaWxl
CitAQCAtMSwyICsxLDMgQEAKKyBvYmotJChDT05GSUdfTVREX1BBUlNFUl9UUlgpCQkrPSBwYXJz
ZXJfdHJ4Lm8KKyBvYmotJChDT05GSUdfTVREX1NIQVJQU0xfUEFSVFMpCQkrPSBzaGFycHNscGFy
dC5vCisrb2JqLSQoQ09ORklHX01URF9ST1VURVJCT09UX1BBUlRTKQkJKz0gcm91dGVyYm9vdHBh
cnQubwotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
