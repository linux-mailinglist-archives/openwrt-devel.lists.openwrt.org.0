Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C8519DDD8
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 20:22:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWnzkPt2Jed6i5DtQjIeS0N6CbQ7uqstANIWyHHyApc=; b=T/FZ2bd4ZUlsko
	y5g6XyqVNVeqs3kTKXZR20Ijo/hNGCxJiM2rDoVKGmQFCi6v+ByZnlQ4kO5RqKEBCRIrcyLoDp8yH
	iJLKsOhFcQHEiM+EpQ1zto5qtPozGTo2bN5bFrYZbxljlfnZu6SPucJ0ECIHZgag206xfncmw9ljt
	6WA5qLz3/4gBUoIs21s2DcIvuxXIlE4zV9w9XUSNoyi4uxs+XMpnzKEez9gJ/BEdl4N2ZrVoTMFXa
	ufVJErXGYqo1Lb7BKBYA1VaotDJN/SFjeUos51sFQ2Dcj8c+da2cjvpWa7d25VFsuMXYyBLDnwCsb
	5M2cXERMf3A35jKuvXbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKQxI-0001o4-Dd; Fri, 03 Apr 2020 18:22:12 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKQwl-0001Mc-Hh
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 18:21:40 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 8F2CB6055C;
 Fri,  3 Apr 2020 20:21:20 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 8F2CB6055C
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 8F2CB6055C
Received: by supercopter (sSMTP sendmail emulation);
 Fri, 03 Apr 2020 20:21:20 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Apr 2020 20:20:50 +0200
Message-Id: <20200403182056.43730-3-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200403182056.43730-1-hacks@slashdirt.org>
References: <20200403182056.43730-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_112139_744188_16D585D6 
X-CRM114-Status: GOOD (  11.66  )
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
Subject: [OpenWrt-Devel] [PATCH 2/8] generic: mikrotik platform build bits
 (4.14)
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
IC4uLi8yNzAtcGxhdGZvcm0tbWlrcm90aWstYnVpbGQtYml0cy5wYXRjaCAgICAgICAgIHwgMzYg
KysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKykK
IGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvZ2VuZXJpYy9wZW5kaW5nLTQuMTQvMjcw
LXBsYXRmb3JtLW1pa3JvdGlrLWJ1aWxkLWJpdHMucGF0Y2gKCmRpZmYgLS1naXQgYS90YXJnZXQv
bGludXgvZ2VuZXJpYy9wZW5kaW5nLTQuMTQvMjcwLXBsYXRmb3JtLW1pa3JvdGlrLWJ1aWxkLWJp
dHMucGF0Y2ggYi90YXJnZXQvbGludXgvZ2VuZXJpYy9wZW5kaW5nLTQuMTQvMjcwLXBsYXRmb3Jt
LW1pa3JvdGlrLWJ1aWxkLWJpdHMucGF0Y2gKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAw
MDAwMDAwMC4uMDI2NDc2YzE1ZQotLS0gL2Rldi9udWxsCisrKyBiL3RhcmdldC9saW51eC9nZW5l
cmljL3BlbmRpbmctNC4xNC8yNzAtcGxhdGZvcm0tbWlrcm90aWstYnVpbGQtYml0cy5wYXRjaApA
QCAtMCwwICsxLDM2IEBACitGcm9tIGMyZGViNWVmMDFhMGVmMDkwODg4MzI3NDRjYmFjZTllMjM5
YTZlZTAgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCitGcm9tOiA9P1VURi04P3E/VGhpYmF1dD0y
MFZBUj1DMz04OE5FPz0gPGhhY2tzQHNsYXNoZGlydC5vcmc+CitEYXRlOiBUdWUsIDI0IE1hciAy
MDIwIDIyOjExOjUwICswMTAwCitTdWJqZWN0OiBbUEFUQ0hdIGdlbmVyaWM6IHBsYXRmb3JtL21p
a3JvdGlrIGJ1aWxkIGJpdHMgKDQuMTQpCitNSU1FLVZlcnNpb246IDEuMAorQ29udGVudC1UeXBl
OiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04CitDb250ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA4
Yml0CisKK1NpZ25lZC1vZmYtYnk6IFRoaWJhdXQgVkFSw4hORSA8aGFja3NAc2xhc2hkaXJ0Lm9y
Zz4KKy0tLQorIGRyaXZlcnMvcGxhdGZvcm0vS2NvbmZpZyAgfCAyICsrCisgZHJpdmVycy9wbGF0
Zm9ybS9NYWtlZmlsZSB8IDEgKworIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCisK
K2RpZmYgLS1naXQgYS9kcml2ZXJzL3BsYXRmb3JtL0tjb25maWcgYi9kcml2ZXJzL3BsYXRmb3Jt
L0tjb25maWcKK2luZGV4IGMxMWRiOGIuLjAyODNmMGIgMTAwNjQ0CistLS0gYS9kcml2ZXJzL3Bs
YXRmb3JtL0tjb25maWcKKysrKyBiL2RyaXZlcnMvcGxhdGZvcm0vS2NvbmZpZworQEAgLTgsMyAr
OCw1IEBAIGVuZGlmCisgc291cmNlICJkcml2ZXJzL3BsYXRmb3JtL2dvbGRmaXNoL0tjb25maWci
CisgCisgc291cmNlICJkcml2ZXJzL3BsYXRmb3JtL2Nocm9tZS9LY29uZmlnIgorKworK3NvdXJj
ZSAiZHJpdmVycy9wbGF0Zm9ybS9taWtyb3Rpay9LY29uZmlnIgorZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGxhdGZvcm0vTWFrZWZpbGUgYi9kcml2ZXJzL3BsYXRmb3JtL01ha2VmaWxlCitpbmRleCBk
M2E2NjMwLi5hZDI5MGMzIDEwMDY0NAorLS0tIGEvZHJpdmVycy9wbGF0Zm9ybS9NYWtlZmlsZQor
KysrIGIvZHJpdmVycy9wbGF0Zm9ybS9NYWtlZmlsZQorQEAgLTgsMyArOCw0IEBAIG9iai0kKENP
TkZJR19NSVBTKQkJKz0gbWlwcy8KKyBvYmotJChDT05GSUdfT0xQQykJCSs9IG9scGMvCisgb2Jq
LSQoQ09ORklHX0dPTERGSVNIKQkJKz0gZ29sZGZpc2gvCisgb2JqLSQoQ09ORklHX0NIUk9NRV9Q
TEFURk9STVMpCSs9IGNocm9tZS8KKytvYmotJChDT05GSUdfTUlLUk9USUspCQkrPSBtaWtyb3Rp
ay8KKy0tIAorMi4xMS4wCisKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
