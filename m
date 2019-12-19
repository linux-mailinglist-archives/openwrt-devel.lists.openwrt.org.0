Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B621C12703A
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+llgwOtC05TTNe3pzfI+bfOgkxlRYPhCWX2xbdcwjI0=; b=goQmHb58LL+Kza
	I8OIB75D2aNX9Er9scfryakw0oSm64hxahoSxQWn8P5l7MhlyJY+CHyH6mB2Hmtr071LuvvhzPMBN
	ZbpEfoXV8ebOmssStY+AKcTSbJCYSDtV/gKf6C59O/5F6syMxuCloQ3lZQTLtPvKltlkkpakyvguP
	z69fMAV3iLic/CK5izpYc5y4k2duGJyzlTQeMOHi5JGSJiSW19fj0IJAy15LWC42oUo0wh/3kMaqD
	Vv9n2VAcGw5l9dexEOZbk00yZ50DxuMpWRrlYkR7YeRSpBjKWx/EBv4LhLXO804e69Z9VoNiOnJ7r
	dOGJhWdlvGSxoSapMZNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3tQ-0001a7-9C; Thu, 19 Dec 2019 22:03:36 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3ou-0000xn-GV
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:59:02 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 34E214B59;
 Thu, 19 Dec 2019 22:58:53 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 913341ed;
 Thu, 19 Dec 2019 22:58:40 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:35 +0100
Message-Id: <20191219215836.21773-20-ynezz@true.cz>
In-Reply-To: <20191219215836.21773-1-ynezz@true.cz>
References: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135856_755036_BD0F5128 
X-CRM114-Status: UNSURE (   7.64  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 19/20] tests: fuzz: fuzz _len
 variants of checking methods
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

SW4gb3JkZXIgdG8gaW5jcmVhc2UgdGVzdCBjb3ZlcmFnZS4KClNpZ25lZC1vZmYtYnk6IFBldHIg
xaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogdGVzdHMvZnV6ei90ZXN0LWZ1enouYyB8IDI0
ICsrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS90ZXN0cy9mdXp6L3Rlc3QtZnV6ei5jIGIvdGVzdHMvZnV6ei90ZXN0
LWZ1enouYwppbmRleCA1MmYyYmJjZTg3OGYuLjRkYzEzYThkOGEzYiAxMDA2NDQKLS0tIGEvdGVz
dHMvZnV6ei90ZXN0LWZ1enouYworKysgYi90ZXN0cy9mdXp6L3Rlc3QtZnV6ei5jCkBAIC0xLDEw
ICsxLDEzIEBACiAjaW5jbHVkZSA8c3RkaW8uaD4KICNpbmNsdWRlIDxzdGRpbnQuaD4KICNpbmNs
dWRlIDxzdGRkZWYuaD4KKyNpbmNsdWRlIDxsaW1pdHMuaD4KIAogI2luY2x1ZGUgImJsb2IuaCIK
ICNpbmNsdWRlICJibG9ibXNnLmgiCiAKKyNkZWZpbmUgQkxPQk1TR19UWVBFX1RST1VCTEUgSU5U
X01BWAorCiBzdGF0aWMgdm9pZCBmdXp6X2Jsb2Jtc2dfcGFyc2UoY29uc3QgdWludDhfdCAqZGF0
YSwgc2l6ZV90IHNpemUpCiB7CiAJZW51bSB7CkBAIC0xNCw2ICsxNywxOSBAQCBzdGF0aWMgdm9p
ZCBmdXp6X2Jsb2Jtc2dfcGFyc2UoY29uc3QgdWludDhfdCAqZGF0YSwgc2l6ZV90IHNpemUpCiAJ
CV9fRk9PX01BWAogCX07CiAKKwlzdGF0aWMgY29uc3QgaW50IGJsb2Jtc2dfdHlwZVtdID0gewor
CQlCTE9CTVNHX1RZUEVfVU5TUEVDLAorCQlCTE9CTVNHX1RZUEVfQVJSQVksCisJCUJMT0JNU0df
VFlQRV9UQUJMRSwKKwkJQkxPQk1TR19UWVBFX1NUUklORywKKwkJQkxPQk1TR19UWVBFX0lOVDY0
LAorCQlCTE9CTVNHX1RZUEVfSU5UMzIsCisJCUJMT0JNU0dfVFlQRV9JTlQxNiwKKwkJQkxPQk1T
R19UWVBFX0lOVDgsCisJCUJMT0JNU0dfVFlQRV9ET1VCTEUsCisJCUJMT0JNU0dfVFlQRV9UUk9V
QkxFLAorCX07CisKIAlzdGF0aWMgY29uc3Qgc3RydWN0IGJsb2Jtc2dfcG9saWN5IGZvb19wb2xp
Y3lbXSA9IHsKIAkJW0ZPT19NRVNTQUdFXSA9IHsKIAkJCS5uYW1lID0gIm1lc3NhZ2UiLApAQCAt
MzMsNiArNDksMTQgQEAgc3RhdGljIHZvaWQgZnV6el9ibG9ibXNnX3BhcnNlKGNvbnN0IHVpbnQ4
X3QgKmRhdGEsIHNpemVfdCBzaXplKQogCiAJYmxvYm1zZ19wYXJzZShmb29fcG9saWN5LCBfX0ZP
T19NQVgsIHRiLCAodWludDhfdCAqKWRhdGEsIHNpemUpOwogCWJsb2Jtc2dfcGFyc2VfYXJyYXko
Zm9vX3BvbGljeSwgX19GT09fTUFYLCB0YiwgKHVpbnQ4X3QgKilkYXRhLCBzaXplKTsKKworCWJs
b2Jtc2dfY2hlY2tfYXR0cl9sZW4oKHN0cnVjdCBibG9iX2F0dHIgKilkYXRhLCBmYWxzZSwgc2l6
ZSk7CisJYmxvYm1zZ19jaGVja19hdHRyX2xlbigoc3RydWN0IGJsb2JfYXR0ciAqKWRhdGEsIHRy
dWUsIHNpemUpOworCisJZm9yIChzaXplX3QgaT0wOyBpIDwgQVJSQVlfU0laRShibG9ibXNnX3R5
cGUpOyBpKyspIHsKKwkJYmxvYm1zZ19jaGVja19hcnJheV9sZW4oKHN0cnVjdCBibG9iX2F0dHIg
KilkYXRhLCBibG9ibXNnX3R5cGVbaV0sIHNpemUpOworCQlibG9ibXNnX2NoZWNrX2F0dHJfbGlz
dF9sZW4oKHN0cnVjdCBibG9iX2F0dHIgKilkYXRhLCBibG9ibXNnX3R5cGVbaV0sIHNpemUpOwor
CX0KIH0KIAogc3RhdGljIHZvaWQgZnV6el9ibG9iX3BhcnNlKGNvbnN0IHVpbnQ4X3QgKmRhdGEs
IHNpemVfdCBzaXplKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
