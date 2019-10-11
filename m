Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F409D3B74
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 10:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0xUwu5oAHyDetUvIm8Rmyy9y5ELb1bule9Oqnm5b54=; b=WFt2YevFciHnlJ
	xrf1DirbHiz9QOERHCw9vm+aqNTci/0FGitxZxAnVif99lnWXS/+kX1roj1ToZKDJH0DuAbmCLEQz
	DXwmHJmVImcfbCc3A53eATxP8ncFm7AWwddEHJie/JxOQoYiNHeNJMNqgR8xXzTGraia5Ed0tezqA
	RVMi+XyCk3kt5VS3q+syX1/kb/9OU8kZ0hC3BJlQeyScmBsxYwyynrUSaLjAtENLU14qGeFNfxLqF
	zaxYpkx9mQeBax2a9ZOxHz0+qcwR5Oaata0yELyQmRgRLgdgVKe7Jzca0JdDEVQ1HcfRnOGS70pRC
	dZZnRQPxZXuDLvNA8R8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqWE-0004dF-DP; Fri, 11 Oct 2019 08:43:26 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqVA-0003fN-79
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 08:42:22 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 5B95B3FEC;
 Fri, 11 Oct 2019 10:42:17 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 2e57c4ff;
 Fri, 11 Oct 2019 10:42:08 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 11 Oct 2019 10:42:02 +0200
Message-Id: <20191011084204.19790-3-ynezz@true.cz>
In-Reply-To: <20191011084204.19790-1-ynezz@true.cz>
References: <20191011084204.19790-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_014220_422004_C66DA528 
X-CRM114-Status: UNSURE (   7.46  )
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
Subject: [OpenWrt-Devel] [PATCH urngd 2/4] Fix wrong types in format strings
 used in debug build
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

R0NDIDkuMi4xIG9uIHg4Ni82NCBjb21wbGFpbnMgYWJvdXQgZm9sbG93aW5nIGZvcm1hdCBzdHJp
bmcgaXNzdWVzOgoKIHVybmdkLmM6OTQ6MTI6IGVycm9yOiBmb3JtYXQg4oCYJXXigJkgZXhwZWN0
cyBhcmd1bWVudCBvZiB0eXBlIOKAmHVuc2lnbmVkIGludOKAmSwgYnV0IGFyZ3VtZW50IDMgaGFz
IHR5cGUg4oCYc2l6ZV904oCZIHtha2Eg4oCYbG9uZyB1bnNpZ25lZCBpbnTigJl9IFstV2Vycm9y
PWZvcm1hdD1dCiB1cm5nZC5jOjk0OjEyOiBlcnJvcjogZm9ybWF0IOKAmCV14oCZIGV4cGVjdHMg
YXJndW1lbnQgb2YgdHlwZSDigJh1bnNpZ25lZCBpbnTigJksIGJ1dCBhcmd1bWVudCA0IGhhcyB0
eXBlIOKAmHNpemVfdOKAmSB7YWthIOKAmGxvbmcgdW5zaWduZWQgaW504oCZfSBbLVdlcnJvcj1m
b3JtYXQ9XQoKR0NDIDcuNC4wIG9uIGkubXg2IGNvbXBsYWlucyBhYm91dCBmb2xsb3dpbmcgZm9y
bWF0IHN0cmluZyBpc3N1ZXM6CgogdXJuZ2QuYzo1NToyMDogZXJyb3I6IGZvcm1hdCAnJWx1JyBl
eHBlY3RzIGFyZ3VtZW50IG9mIHR5cGUgJ2xvbmcgdW5zaWduZWQgaW50JywgYnV0IGFyZ3VtZW50
IDMgaGFzIHR5cGUgJ3NpemVfdCB7YWthIHVuc2lnbmVkIGludH0nIFstV2Vycm9yPWZvcm1hdD1d
CgpSZWY6IGh0dHBzOi8vZ2l0bGFiLmNvbS95bmV6ei9vcGVud3J0LXVybmdkLy0vam9icy8zMDY0
MDQwNTkKUmVmOiBodHRwczovL2dpdGxhYi5jb20veW5lenovb3BlbndydC11cm5nZC8tL2pvYnMv
MzA5MTg3NjMxClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0t
LQogdXJuZ2QuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS91cm5nZC5jIGIvdXJuZ2QuYwppbmRleCAzMDY0MjBh
Mzk3ZGMuLmQ4ZWQxNTkxNDFlMCAxMDA2NDQKLS0tIGEvdXJuZ2QuYworKysgYi91cm5nZC5jCkBA
IC05MSw3ICs5MSw3IEBAIHN0YXRpYyBzaXplX3Qgd3JpdGVfZW50cm9weShzdHJ1Y3QgdXJuZ2Qg
KnUsIGNoYXIgKmJ1Ziwgc2l6ZV90IGxlbiwKIAlpZiAoMCA+IHJldCkgewogCQlFUlJPUigiZXJy
b3IgaW5qZWN0aW5nIGVudHJvcHk6ICVzXG4iLCBzdHJlcnJvcihlcnJubykpOwogCX0gZWxzZSB7
Ci0JCURFQlVHKDEsICJpbmplY3RlZCAldWIgKCV1YiBvZiBlbnRyb3B5KVxuIiwgbGVuLCBlbnRy
b3B5X2J5dGVzKTsKKwkJREVCVUcoMSwgImluamVjdGVkICV6dWIgKCV6dWIgb2YgZW50cm9weSlc
biIsIGxlbiwgZW50cm9weV9ieXRlcyk7CiAJCXdyaXR0ZW4gPSBsZW47CiAJfQogCkBAIC0xMjEs
NyArMTIxLDcgQEAgc3RhdGljIHNpemVfdCBnYXRoZXJfZW50cm9weShzdHJ1Y3QgdXJuZ2QgKnUp
CiAJfQogCiAJbWVtc2V0X3NlY3VyZShidWYsIDAsIHNpemVvZihidWYpKTsKLQlERUJVRygyLCBE
RVZfUkFORE9NICIgZmVkIHdpdGggJWx1YiBvZiBlbnRyb3B5XG4iLCByZXQpOworCURFQlVHKDIs
IERFVl9SQU5ET00gIiBmZWQgd2l0aCAlenViIG9mIGVudHJvcHlcbiIsIHJldCk7CiAKIAlyZXR1
cm4gcmV0OwogfQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
