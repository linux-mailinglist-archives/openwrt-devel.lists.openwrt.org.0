Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6542127035
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:02:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHZFJvRwSKtzJHSRzDG1jCN1cKJvgTBRRb5lo3hE9vE=; b=h3h5v0189kwuZb
	g0OyEGfSX/+OeqfXbhIMXZt311DRamE2ONxRY9QLcB8AX369vaRwROJQLKh/g4KXz9eMU/GrTrZYl
	3mMXw+gq+nO4mPdVWs2cYXbpGP7LdjJPuAYAB/fVZoPKSG7KwgaAzqhioclcw/8P7YgA2ZYESBTlj
	9Gi6cdk1eqVZebKLbkq+9d4YyzCvLMq1FiCgb+kmtWBLfPZi2jQxZiIKuLyPp9wnEOR+uItfOe+/J
	2cgcJq6cY4LMR4cVnw50tnnxUux1tnFnGrrFt28iKzWPT+0f3wP5SOLWiXWFHZ+3GZS2zxJrRObsx
	NvIvUH0WM/jTaekeTxCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3sg-0000T2-7m; Thu, 19 Dec 2019 22:02:50 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3ot-0000x4-DW
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:59:00 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 32F634B54;
 Thu, 19 Dec 2019 22:58:48 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 070eb51a;
 Thu, 19 Dec 2019 22:58:38 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:31 +0100
Message-Id: <20191219215836.21773-16-ynezz@true.cz>
In-Reply-To: <20191219215836.21773-1-ynezz@true.cz>
References: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135855_634518_DAEC4CE9 
X-CRM114-Status: UNSURE (   7.40  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 15/20] blobmsg: fix heap buffer
 overflow in blobmsg_parse
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

Rml4ZXMgZm9sbG93aW5nIGVycm9yIGZvdW5kIGJ5IHRoZSBmdXp6ZXI6CgogPT0yOTc3ND09RVJS
T1I6IEFkZHJlc3NTYW5pdGl6ZXI6IGhlYXAtYnVmZmVyLW92ZXJmbG93CiBSRUFEIG9mIHNpemUg
MSBhdCAweDYwMjAwMDRmMWM1NiB0aHJlYWQgVDAKICAgICAjMCBzdHJjbXAgc2FuaXRpemVyX2Nv
bW1vbl9pbnRlcmNlcHRvcnMuaW5jOjQ0MjozCiAgICAgIzEgYmxvYm1zZ19wYXJzZSBibG9ibXNn
LmM6MTY4OjgKClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0t
LQogYmxvYm1zZy5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9ibG9ibXNnLmMgYi9ibG9ibXNnLmMKaW5kZXggMWE4Yjc4M2U5YmE5Li43MWQ0
YTM2YTY0N2MgMTAwNjQ0Ci0tLSBhL2Jsb2Jtc2cuYworKysgYi9ibG9ibXNnLmMKQEAgLTUzLDYg
KzUzLDkgQEAgYm9vbCBibG9ibXNnX2NoZWNrX2F0dHIoY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAq
YXR0ciwgYm9vbCBuYW1lKQogCiAJaWQgPSBibG9iX2lkKGF0dHIpOwogCWxlbiA9IGJsb2Jtc2df
ZGF0YV9sZW4oYXR0cik7CisJaWYgKGxlbiA+IGJsb2JfcmF3X2xlbihhdHRyKSkKKwkJcmV0dXJu
IGZhbHNlOworCiAJZGF0YSA9IGJsb2Jtc2dfZGF0YShhdHRyKTsKIAogCWlmIChpZCA+IEJMT0JN
U0dfVFlQRV9MQVNUKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
