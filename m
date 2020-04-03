Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7096519DDD7
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 20:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53vqy4wPs6DF8m/UowBscqvcCj5Z+QOk2KqvK5kcSlg=; b=n2w+4KRT118TNS
	BIAEBXtwvwv6+iaHVWCdGQtRKnn2jU3AmVfNJKN9X6X1u33PgeI+kQxOl0c4zvA3LVBVeoh5q5UeZ
	jtCJPSoyTfDBRFjX/hFxQzD8qLBdjbuvGWxDGENquCzfNvskUtdxKU7P2k7yAuamDm9wlEpSaerVJ
	hx6T61i1SSlRSyWzthSN+OagaAWx3D6LXn1YPTaU5JLrlfVqu9F6/+jnyFa8o/JLeKFa2c6gN9ntR
	aOs1moNOdccRclCVE43RS0xvLJa+9/6gpHK4mLaHmWMcHHqRlKMdZ09a7mc9gCfg9OJtFO1Ht/EFi
	dxfFYOabaM9i1bx6B7sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKQx4-0001ZE-Ex; Fri, 03 Apr 2020 18:21:58 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKQwl-0001NQ-7H
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 18:21:40 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 15C3160D03;
 Fri,  3 Apr 2020 20:21:27 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 15C3160D03
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 15C3160D03
Received: by supercopter (sSMTP sendmail emulation);
 Fri, 03 Apr 2020 20:21:26 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Apr 2020 20:20:51 +0200
Message-Id: <20200403182056.43730-4-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200403182056.43730-1-hacks@slashdirt.org>
References: <20200403182056.43730-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_112139_419211_468BE463 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/8] generic: mikrotik platform build bits
 (4.19)
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

VU5URVNURUQKClNpZ25lZC1vZmYtYnk6IFRoaWJhdXQgVkFSw4hORSA8aGFja3NAc2xhc2hkaXJ0
Lm9yZz4KLS0tCiAuLi4vMjcwLXBsYXRmb3JtLW1pa3JvdGlrLWJ1aWxkLWJpdHMucGF0Y2ggICAg
ICAgICB8IDM2ICsrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAzNiBpbnNl
cnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGlu
Zy00LjE5LzI3MC1wbGF0Zm9ybS1taWtyb3Rpay1idWlsZC1iaXRzLnBhdGNoCgpkaWZmIC0tZ2l0
IGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE5LzI3MC1wbGF0Zm9ybS1taWtyb3Rp
ay1idWlsZC1iaXRzLnBhdGNoIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE5LzI3
MC1wbGF0Zm9ybS1taWtyb3Rpay1idWlsZC1iaXRzLnBhdGNoCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAwMDAuLjRjNWU5MmUwZTMKLS0tIC9kZXYvbnVsbAorKysgYi90YXJnZXQv
bGludXgvZ2VuZXJpYy9wZW5kaW5nLTQuMTkvMjcwLXBsYXRmb3JtLW1pa3JvdGlrLWJ1aWxkLWJp
dHMucGF0Y2gKQEAgLTAsMCArMSwzNiBAQAorRnJvbSBjMmRlYjVlZjAxYTBlZjA5MDg4ODMyNzQ0
Y2JhY2U5ZTIzOWE2ZWUwIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQorRnJvbTogPT9VVEYtOD9x
P1RoaWJhdXQ9MjBWQVI9QzM9ODhORT89IDxoYWNrc0BzbGFzaGRpcnQub3JnPgorRGF0ZTogU2F0
LCAyOCBNYXIgMjAyMCAxMjoxMTo1MCArMDEwMAorU3ViamVjdDogW1BBVENIXSBnZW5lcmljOiBw
bGF0Zm9ybS9taWtyb3RpayBidWlsZCBiaXRzICg0LjE0KQorTUlNRS1WZXJzaW9uOiAxLjAKK0Nv
bnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOAorQ29udGVudC1UcmFuc2Zlci1F
bmNvZGluZzogOGJpdAorCitTaWduZWQtb2ZmLWJ5OiBUaGliYXV0IFZBUsOITkUgPGhhY2tzQHNs
YXNoZGlydC5vcmc+CistLS0KKyBkcml2ZXJzL3BsYXRmb3JtL0tjb25maWcgIHwgMiArKworIGRy
aXZlcnMvcGxhdGZvcm0vTWFrZWZpbGUgfCAxICsKKyAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKQorCitkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbGF0Zm9ybS9LY29uZmlnIGIvZHJpdmVy
cy9wbGF0Zm9ybS9LY29uZmlnCitpbmRleCBjMTFkYjhiLi4wMjgzZjBiIDEwMDY0NAorLS0tIGEv
ZHJpdmVycy9wbGF0Zm9ybS9LY29uZmlnCisrKysgYi9kcml2ZXJzL3BsYXRmb3JtL0tjb25maWcK
K0BAIC0xMCwzICsxMCw1IEBACisgc291cmNlICJkcml2ZXJzL3BsYXRmb3JtL2Nocm9tZS9LY29u
ZmlnIgorCisgc291cmNlICJkcml2ZXJzL3BsYXRmb3JtL21lbGxhbm94L0tjb25maWciCisrCisr
c291cmNlICJkcml2ZXJzL3BsYXRmb3JtL21pa3JvdGlrL0tjb25maWciCitkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wbGF0Zm9ybS9NYWtlZmlsZSBiL2RyaXZlcnMvcGxhdGZvcm0vTWFrZWZpbGUKK2lu
ZGV4IGQzYTY2MzAuLmFkMjkwYzMgMTAwNjQ0CistLS0gYS9kcml2ZXJzL3BsYXRmb3JtL01ha2Vm
aWxlCisrKysgYi9kcml2ZXJzL3BsYXRmb3JtL01ha2VmaWxlCitAQCAtOSwzICs5LDQgQEAKKyBv
YmotJChDT05GSUdfT0xQQykJCSs9IG9scGMvCisgb2JqLSQoQ09ORklHX0dPTERGSVNIKQkJKz0g
Z29sZGZpc2gvCisgb2JqLSQoQ09ORklHX0NIUk9NRV9QTEFURk9STVMpCSs9IGNocm9tZS8KKytv
YmotJChDT05GSUdfTUlLUk9USUspCQkrPSBtaWtyb3Rpay8KKy0tIAorMi4xMS4wCisKLS0gCjIu
MTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
