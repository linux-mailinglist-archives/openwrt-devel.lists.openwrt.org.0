Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A32AA12705A
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:06:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JJQmr6hVZRBBglRzm7KK/rzlRUjhPp7zI8UoGqCgmU=; b=Oo8VBY8KowBg3U
	6D4hoCq32d3fK0rTJE1gr1bzXBE4ZYRNcMYtKTUj3VyoIbX2CRgpJ3Sl0O5W0nWcQRW3PEBuaMOtq
	+uB86o//fFLPnEC6aiY1XpNLZfeK4+FUle3fzc6zkYpSDwGHROZ5DFhEEmoTcMBsGCVqwxgeVRIAF
	dvRca8m6NDBhZo7vpeVBGKbfJr5qjrhHimWVmG88PYVXxnzhEBmnrq90KK4lY4o3uuB7I4785EEWB
	l9t5Gj3BjRH18jYusemx8qHMYqBis3sY27eg0Oxc9+PuZLzDzpZxiTtz6i202Loqkwc/QAwoKj+3P
	/IxyV/7ld027tXDFpQxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3wM-0000HZ-Is; Thu, 19 Dec 2019 22:06:38 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3uL-0003gj-Gg
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:04:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 035574B97;
 Thu, 19 Dec 2019 23:04:30 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 75dda45c;
 Thu, 19 Dec 2019 23:04:21 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:04:19 +0100
Message-Id: <20191219220421.22206-8-ynezz@true.cz>
In-Reply-To: <20191219220421.22206-1-ynezz@true.cz>
References: <20191219220421.22206-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_140433_879554_2BAE4E63 
X-CRM114-Status: UNSURE (   8.97  )
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
Subject: [OpenWrt-Devel] [PATCH ucert 7/9] fix possibly garbage value
 returned in cert_process_revoker
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

Rml4ZXMgZm9sbG93aW5nIHdhcm5pbmcgcmVwb3J0ZWQgYnkgY2xhbmctOSBzY2FuLWJ1aWxkIGFu
YWx5emVyOgoKIHVjZXJ0LmM6NTg1OjI6IHdhcm5pbmc6IFVuZGVmaW5lZCBvciBnYXJiYWdlIHZh
bHVlIHJldHVybmVkIHRvIGNhbGxlcgogICAgICAgIHJldHVybiByZXQ7CiAgICAgICAgXn5+fn5+
fn5+fgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB1
Y2VydC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvdWNlcnQuYyBiL3VjZXJ0LmMKaW5kZXggODUwM2VlYjI2Y2Q4Li5i
OWM1Yzg4OWRkZmEgMTAwNjQ0Ci0tLSBhL3VjZXJ0LmMKKysrIGIvdWNlcnQuYwpAQCAtNTA4LDcg
KzUwOCw3IEBAIHN0YXRpYyBpbnQgY2VydF9wcm9jZXNzX3Jldm9rZXIoY29uc3QgY2hhciAqY2Vy
dGZpbGUsIGNvbnN0IGNoYXIgKnB1YmtleWRpcikgewogCWNoYXIgKmZpbmdlcnByaW50OwogCWNo
YXIgcmZuYW1lWzUxMl07CiAKLQlpbnQgcmV0OworCWludCByZXQgPSAtMTsKIAogCWlmIChjZXJ0
X2xvYWQoY2VydGZpbGUsICZjZXJ0Y2hhaW4pKSB7CiAJCURQUklOVEYoImNhbm5vdCBwYXJzZSBj
ZXJ0XG4iKTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
