Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D02A22A448
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 May 2019 13:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v6rpJV0PiyXRjdTk5M4XmavaQX1X+8eDB6IpqO3d8kU=; b=UcRJN3drH9eiSQ
	K4r1tkFQ7Pj090jcdtYwQYDHsB/QSTwd2gaYUawNgT21hXvi+3f9+1eN0eNkmEhAWsm/e7sRGkYij
	jcItkcoawhQhi8kO4WUcvdn6a6jc/z0Tfpxi/WYoSh2PIejhjy5rAPZgXGyl/hquVyMEa881gEMIv
	ZaVlfMm8Kn6teKIqdbs+G45pnGk4malR9LiVfdoSXxb8dfRnY1CVnt1aXeCX11LjVZmWY5eGgsUq7
	V1jh4/GL8KAhK8XymE8HDZUKpQDlphhIWuuTtF5DAHOAPi7lK3RZIgh83nRraaASdSgKGVj7stMjt
	UaUN1X/DcuJpf+OAgZCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUVKW-00037t-Rt; Sat, 25 May 2019 11:59:16 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUVKF-0002y1-ST
 for openwrt-devel@lists.openwrt.org; Sat, 25 May 2019 11:59:01 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3DD8A3A30;
 Sat, 25 May 2019 13:58:56 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 349f044b;
 Sat, 25 May 2019 13:58:54 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 25 May 2019 13:58:35 +0200
Message-Id: <1558785521-31779-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_045900_066576_082B53C4 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/6] ar71xx, ath79,
 ramips: ethtool fixes and cleanup (FS#1982)
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

SGksCgp0aGlzIHBhdGNoIHNlcmllcyBmaXhlcyBjdXJyZW50bHkgYnJva2VuIGV0aHRvb2wgb24g
YXI3MXh4L2F0aDc5IGFzIHJlcG9ydGVkCmJ5IHNldmVyYWwgcGVvcGxlIGluIEZTIzE5ODIuCgpl
dGh0b29sIGRvZXNuJ3Qgd29yayBjdXJyZW50bHkgYXMgcGh5X2V0aHRvb2xfaW9jdGwgZXhwZWN0
cyB1c2VyIHNwYWNlCnBvaW50ZXIsIGJ1dCBpdCdzIGJlaW5nIHBhc3NlZCBrZXJuZWwgb25lLiBG
aXhpbmcgaXQgZG9lc24ndCBtYWtlIHNlbnNlIGFzCntzLGd9ZXRfc2V0dGluZ3Mgd2VyZSBkZXBy
ZWNhdGVkIGFueXdheS4gIFNvIGxldCdzIHJhdGhlciByZW1vdmUKcGh5X2V0aHRvb2xfaW9jdGwg
YW5kIHVzZSBuZXcge3MsZ31ldF9saW5rX2tzZXR0aW5ncyBpbnN0ZWFkLgoKUmVmOiBodHRwczov
L2J1Z3Mub3BlbndydC5vcmcvaW5kZXgucGhwP2RvPWRldGFpbHMmdGFza19pZD0xOTgyCgpQZXRy
IMWgdGV0aWFyICg2KToKICBrZXJuZWw6IGdlbmVyaWM6IHJlbW92ZSBicm9rZW4gYW5kIG9ic29s
ZXRlIHBoeV9ldGh0b29sX2lvY3RsCiAgcmFtaXBzOiBldGhlcm5ldDogcmVtb3ZlIHVudXNlZCBT
SU9DRVRIVE9PTCBpb2N0bCBoYW5kbGluZwogIGF0aDc5OiBhZzcxeHg6IHJlbW92ZSB1bnVzZWQg
U0lPQ0VUSFRPT0wgaW9jdGwgaGFuZGxpbmcKICBhcjcxeHg6IGFnNzF4eDogcmVtb3ZlIHVudXNl
ZCBTSU9DRVRIVE9PTCBpb2N0bCBoYW5kbGluZwogIGF0aDc5OiBhZzcxeHg6IHVwZGF0ZSBldGh0
b29sIHN1cHBvcnQKICBhcjcxeHg6IGFnNzF4eDogdXBkYXRlIGV0aHRvb2wgc3VwcG9ydAoKIC4u
Li9uZXQvZXRoZXJuZXQvYXRoZXJvcy9hZzcxeHgvYWc3MXh4X2V0aHRvb2wuYyAgIHwgNDggKysr
Ky0tLS0tLS0KIC4uLi9uZXQvZXRoZXJuZXQvYXRoZXJvcy9hZzcxeHgvYWc3MXh4X21haW4uYyAg
ICAgIHwgMTAgLS0tCiAuLi4vbmV0L2V0aGVybmV0L2F0aGVyb3MvYWc3MXh4L2FnNzF4eF9ldGh0
b29sLmMgICB8IDQwICsrKystLS0tLQogLi4uL25ldC9ldGhlcm5ldC9hdGhlcm9zL2FnNzF4eC9h
ZzcxeHhfbWFpbi5jICAgICAgfCAxMSArLS0KIC4uLi9nZW5lcmljL3BlbmRpbmctNC4xNC83MDEt
cGh5X2V4dGVuc2lvbi5wYXRjaCAgIHwgOTUgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogLi4uL2dl
bmVyaWMvcGVuZGluZy00LjE5LzcwMS1waHlfZXh0ZW5zaW9uLnBhdGNoICAgfCA5NSAtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCiAuLi4vZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0
aF9zb2MuYyAgICB8IDEzICstLQogNyBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAy
ODIgZGVsZXRpb25zKC0pCiBkZWxldGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L2dlbmVyaWMv
cGVuZGluZy00LjE0LzcwMS1waHlfZXh0ZW5zaW9uLnBhdGNoCiBkZWxldGUgbW9kZSAxMDA2NDQg
dGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE5LzcwMS1waHlfZXh0ZW5zaW9uLnBhdGNo
CgotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
