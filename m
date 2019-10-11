Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A982DD3B6D
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 10:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ua8PhZkqMBvu7eKkUK19cCiJb8OZYDLToI7UYJG1AMw=; b=cpXcLjiS3aUuxg
	OEsNc8v8kcp14uK6YtUikR738WD1G5LH/HpbB44pUus349LpoJoiQtjoyusHuAV6y1NJwe3fjIOWa
	xBjr3AQpSTZvfYCuDY6DEj386pCjYQTSeGyn94xIOMTyo8VruVYJvAzGK8zlXdpKui3+Hd2Gabeqg
	0dwUBKjsktIpd4HEnd66JDII25gkQJjt/y0gtDyUbRgJu408zz+574L+x7/d67irKlHzuDRk3HcKe
	unDw9kmhPVlLHTpoMo7wdESk/bsvUIyM/cYLAZE5epgumIsNT/KUcC5VQ9iUTazNlH/eOURBJwsXj
	bzyX6C475ro4pkn8yTZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqVZ-0003rS-QO; Fri, 11 Oct 2019 08:42:45 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqVA-0003fO-78
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 08:42:22 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8469C3FED;
 Fri, 11 Oct 2019 10:42:17 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id dc462be0;
 Fri, 11 Oct 2019 10:42:08 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 11 Oct 2019 10:42:03 +0200
Message-Id: <20191011084204.19790-4-ynezz@true.cz>
In-Reply-To: <20191011084204.19790-1-ynezz@true.cz>
References: <20191011084204.19790-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_014220_416573_0331FF2B 
X-CRM114-Status: UNSURE (   7.83  )
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
Subject: [OpenWrt-Devel] [PATCH urngd 3/4] jitterentropy-rngd: update to
 version v1.1.0 + clang compile fix
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

ICogYXZlcnQgY3Jhc2ggZHVyaW5nIHNodXRkb3duIHdoZW4gdGhlIGtlcm5lbCBzZW5kcyBhIFNJ
R0FMUk0gd2hpbGUgdGhlCiAgIEppdHRlciBSTkcgaXMgZGVhbGxvY2F0ZWQKICogRml4OiB1bnNh
ZmUgc2lnbmFsIGhhbmRsaW5nIGJ5IEdlcmFsZCBMbGVkbwogKiBpbXBvcnQgaml0dGVyZW50cm9w
eSBsaWJyYXJ5IDIuMi4wIHRvIG1ha2Ugcm5nZCBmdWxseSBTUDgwMC05MEIgY29tcGxpYW50CiAq
IGluY2x1ZGUgY2xhbmcgY29tcGlsZSBmaXggaW4gb3JkZXIgdG8gdXNlIHNjYW4tYnVpbGQgc3Rh
dGljIGNoZWNrZXIKICAgdXNlZCBpbiBHaXRMYWIgQ0kgcGlwZWxpbmUKClNpZ25lZC1vZmYtYnk6
IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogM3JkcGFydHkvaml0dGVyZW50cm9w
eS1ybmdkIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvM3JkcGFydHkvaml0dGVyZW50cm9weS1ybmdkIGIvM3JkcGFydHkv
aml0dGVyZW50cm9weS1ybmdkCmluZGV4IGFkNGQ2MzY0Mjc5Zi4uY2IxM2E4YjEzNmFmIDE2MDAw
MAotLS0gYS8zcmRwYXJ0eS9qaXR0ZXJlbnRyb3B5LXJuZ2QKKysrIGIvM3JkcGFydHkvaml0dGVy
ZW50cm9weS1ybmdkCkBAIC0xICsxIEBACi1TdWJwcm9qZWN0IGNvbW1pdCBhZDRkNjM2NDI3OWZh
NDM3YTQzM2JiYzQ5ZDg1MWUzNWI4ZGM0NjdkCitTdWJwcm9qZWN0IGNvbW1pdCBjYjEzYThiMTM2
YWZlOWUxZWExNDI0ZTllM2ZiNTBjODdhNmJlNzI5CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
