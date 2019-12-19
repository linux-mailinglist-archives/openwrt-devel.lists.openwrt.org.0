Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A475127022
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 22:59:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zz1bZZgq2a6Q8o0Xva7diz4xNdfp9XPwOqhuCXwCvY=; b=TGycDuIPf46wFB
	0NKY0BtLefRNTKTxRD8IotlPeQi6IYIMWjhRmIrQh6WFHH/DuA4X1pauIGC8WLLzqRpHth8VcI1Sp
	abZxlh5UC76QYqgdNUsuit2L9YnE0N+OUlh1FJccBzQ3UIcl8tFKjT+l/gI4CZuQyUvcEypWrC224
	lRa5pJecrqkCjUwBulO0CaGiNmVOxquUnZRfr3ypWzxuF5F5L5AVlQJ2VHd/uSmlDRpLvuoyF5Srg
	6R68o5d53Mlk58YGwfcjKeVUD1PqYZBE7IoX4QqY1PDE0pytPEXQTQaI/ZnvLM5rObxrTXpnD9OFS
	s45V7QYo4DQxKAwGQzPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3ph-0001lZ-5P; Thu, 19 Dec 2019 21:59:45 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3om-0000r0-KH
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:58:51 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 766F04B43;
 Thu, 19 Dec 2019 22:58:46 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id abf7970f;
 Thu, 19 Dec 2019 22:58:32 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:18 +0100
Message-Id: <20191219215836.21773-3-ynezz@true.cz>
In-Reply-To: <20191219215836.21773-1-ynezz@true.cz>
References: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135848_831623_29A8BE34 
X-CRM114-Status: UNSURE (   6.83  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 02/20] blobmsg/ulog: fix format
 string compiler warnings
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rml4ZXMgZm9sbG93aW5nIGNvbXBpbGVyIHdhcm5pbmdzOgoKIGJsb2Jtc2cuYzoyNDI6Mzk6IGVy
cm9yOiBmb3JtYXQgc3RyaW5nIGlzIG5vdCBhIHN0cmluZyBsaXRlcmFsIFstV2Vycm9yLC1XZm9y
bWF0LW5vbmxpdGVyYWxdCiBibG9ibXNnLmM6MjQ4OjIzOiBlcnJvcjogZm9ybWF0IHN0cmluZyBp
cyBub3QgYSBzdHJpbmcgbGl0ZXJhbCBbLVdlcnJvciwtV2Zvcm1hdC1ub25saXRlcmFsXQogdWxv
Zy5jOjEwMDoxODogZXJyb3I6IGZvcm1hdCBzdHJpbmcgaXMgbm90IGEgc3RyaW5nIGxpdGVyYWwg
Wy1XZXJyb3IsLVdmb3JtYXQtbm9ubGl0ZXJhbF0KIHVsb2cuYzoxMTI6MTY6IGVycm9yOiBmb3Jt
YXQgc3RyaW5nIGlzIG5vdCBhIHN0cmluZyBsaXRlcmFsIFstV2Vycm9yLC1XZm9ybWF0LW5vbmxp
dGVyYWxdCiB1bG9nLmM6MTE3OjIwOiBlcnJvcjogZm9ybWF0IHN0cmluZyBpcyBub3QgYSBzdHJp
bmcgbGl0ZXJhbCBbLVdlcnJvciwtV2Zvcm1hdC1ub25saXRlcmFsXQoKU2lnbmVkLW9mZi1ieTog
UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBibG9ibXNnLmMgfCA4ICsrKystLS0t
CiB1bG9nLmMgICAgfCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYmxvYm1zZy5jIGIvYmxvYm1zZy5jCmluZGV4IGE4
NjA0ODNiZmE3ZS4uOTdlMGMyMDU3NWZmIDEwMDY0NAotLS0gYS9ibG9ibXNnLmMKKysrIGIvYmxv
Ym1zZy5jCkBAIC0yMzAsOCArMjMwLDggQEAgYmxvYm1zZ19vcGVuX25lc3RlZChzdHJ1Y3QgYmxv
Yl9idWYgKmJ1ZiwgY29uc3QgY2hhciAqbmFtZSwgYm9vbCBhcnJheSkKIAlyZXR1cm4gKHZvaWQg
KilvZmZzZXQ7CiB9CiAKLWludAotYmxvYm1zZ192cHJpbnRmKHN0cnVjdCBibG9iX2J1ZiAqYnVm
LCBjb25zdCBjaGFyICpuYW1lLCBjb25zdCBjaGFyICpmb3JtYXQsIHZhX2xpc3QgYXJnKQorX19h
dHRyaWJ1dGVfXygoZm9ybWF0KHByaW50ZiwgMywgMCkpKQoraW50IGJsb2Jtc2dfdnByaW50Zihz
dHJ1Y3QgYmxvYl9idWYgKmJ1ZiwgY29uc3QgY2hhciAqbmFtZSwgY29uc3QgY2hhciAqZm9ybWF0
LCB2YV9saXN0IGFyZykKIHsKIAl2YV9saXN0IGFyZzI7CiAJY2hhciBjYnVmOwpAQCAtMjUxLDgg
KzI1MSw4IEBAIGJsb2Jtc2dfdnByaW50ZihzdHJ1Y3QgYmxvYl9idWYgKmJ1ZiwgY29uc3QgY2hh
ciAqbmFtZSwgY29uc3QgY2hhciAqZm9ybWF0LCB2YV9sCiAJcmV0dXJuIHJldDsKIH0KIAotaW50
Ci1ibG9ibXNnX3ByaW50ZihzdHJ1Y3QgYmxvYl9idWYgKmJ1ZiwgY29uc3QgY2hhciAqbmFtZSwg
Y29uc3QgY2hhciAqZm9ybWF0LCAuLi4pCitfX2F0dHJpYnV0ZV9fKChmb3JtYXQocHJpbnRmLCAz
LCA0KSkpCitpbnQgYmxvYm1zZ19wcmludGYoc3RydWN0IGJsb2JfYnVmICpidWYsIGNvbnN0IGNo
YXIgKm5hbWUsIGNvbnN0IGNoYXIgKmZvcm1hdCwgLi4uKQogewogCXZhX2xpc3QgYXA7CiAJaW50
IHJldDsKZGlmZiAtLWdpdCBhL3Vsb2cuYyBiL3Vsb2cuYwppbmRleCBiNzMwMGU3MjBkMjEuLjA1
OTQ2YTBjMzUyMSAxMDA2NDQKLS0tIGEvdWxvZy5jCisrKyBiL3Vsb2cuYwpAQCAtODcsNiArODcs
NyBAQCBzdGF0aWMgdm9pZCB1bG9nX2RlZmF1bHRzKHZvaWQpCiAJX3Vsb2dfaW5pdGlhbGl6ZWQg
PSAxOwogfQogCitfX2F0dHJpYnV0ZV9fKChmb3JtYXQocHJpbnRmLCAyLCAwKSkpCiBzdGF0aWMg
dm9pZCB1bG9nX2ttc2coaW50IHByaW9yaXR5LCBjb25zdCBjaGFyICpmbXQsIHZhX2xpc3QgYXAp
CiB7CiAJRklMRSAqa21zZzsKQEAgLTEwMiw2ICsxMDMsNyBAQCBzdGF0aWMgdm9pZCB1bG9nX2tt
c2coaW50IHByaW9yaXR5LCBjb25zdCBjaGFyICpmbXQsIHZhX2xpc3QgYXApCiAJfQogfQogCitf
X2F0dHJpYnV0ZV9fKChmb3JtYXQocHJpbnRmLCAyLCAwKSkpCiBzdGF0aWMgdm9pZCB1bG9nX3N0
ZGlvKGludCBwcmlvcml0eSwgY29uc3QgY2hhciAqZm10LCB2YV9saXN0IGFwKQogewogCUZJTEUg
Km91dCA9IHN0ZGVycjsKQEAgLTExMiw2ICsxMTQsNyBAQCBzdGF0aWMgdm9pZCB1bG9nX3N0ZGlv
KGludCBwcmlvcml0eSwgY29uc3QgY2hhciAqZm10LCB2YV9saXN0IGFwKQogCXZmcHJpbnRmKG91
dCwgZm10LCBhcCk7CiB9CiAKK19fYXR0cmlidXRlX18oKGZvcm1hdChwcmludGYsIDIsIDApKSkK
IHN0YXRpYyB2b2lkIHVsb2dfc3lzbG9nKGludCBwcmlvcml0eSwgY29uc3QgY2hhciAqZm10LCB2
YV9saXN0IGFwKQogewogCXZzeXNsb2cocHJpb3JpdHksIGZtdCwgYXApOwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
