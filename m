Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC0277723
	for <lists+openwrt-devel@lfdr.de>; Sat, 27 Jul 2019 08:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AYketE5MJ3ZWjdAVsq3SMZnDUa4uFPCcNy18vjqpZuA=; b=pQ/Nqq4T6dwwol
	/RcOc17AsZWpCqFWTkjdviw3RcUM3/5OS58cJmhqCFupYyC6GE/5ohcYX8xWbaNkFTMN2KuPtR/v8
	X4yxAQF3h4/kIUeo5okhOAN8GcfIyMUiP8yMzqIPmXg8Zq5jNoqrVcvWof26h4HVcMtbNEJZ36sEE
	s57gvMNsonTeNih5yNLugxliLeGvGUFL+VqKbiG5uV/nTGx+hBrCFP2DpLfWhqi3Ke0AuxQi+uaW4
	9xlU6zNIf8Wh9+OhKEBCmgl8yaP6iAEf5QpDhcNBqZik4yJTRE3ksykMOxy9A1BDubQnRkj6vDmw6
	DKSOOKzQk9rQERobwOhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrFn4-000681-St; Sat, 27 Jul 2019 06:02:48 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrFmu-00067I-2w
 for openwrt-devel@lists.openwrt.org; Sat, 27 Jul 2019 06:02:37 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B66134136;
 Sat, 27 Jul 2019 08:02:25 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 7f9a6fbd;
 Sat, 27 Jul 2019 08:02:18 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 27 Jul 2019 08:02:21 +0200
Message-Id: <20190727060221.17084-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_230236_282193_9B386B99 
X-CRM114-Status: UNSURE (   6.24  )
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
Subject: [OpenWrt-Devel] [PATCH] scripts/ubinize-image.sh: fix buildbot
 breakage
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

TmV3IERvY2tlciBiYXNlZCBidWlsZHNsYXZlcyBpbnN0YWxsIGp1c3QgYmFyZSBtaW5pbXVtIG9m
IHBhY2thZ2VzLCB0aHVzCm5vdCBoYXZpbmcgYnNkbWFpbnV0aWxzIHBhY2thZ2UgaW5zdGFsbGVk
IHdoaWNoIHByb3ZpZGVzIGBoZXhkdW1wYAp1dGlsaXR5LCBsZWFkaW5nIHRvIHRoZSBmb2xsb3dp
bmcgYnVpbGQgYnJlYWthZ2Ugb24gYnVpbGRib3RzOgoKIHViaW5pemUtaW1hZ2Uuc2g6IDEyOiAv
YnVpbGRlci9zY3JpcHRzL3ViaW5pemUtaW1hZ2Uuc2g6IGhleGR1bXA6IG5vdCBmb3VuZAoKU28g
dGhpcyBwYXRjaCBzaW1wbHkgcmVwbGFjZXMgYGhleGR1bXBgIHdpdGggYG9kYCB1dGlsaXR5IHBy
b3ZpZGVkIGJ5CmNvcmV1dGlscyBwYWNrYWdlLCB3aGljaCBzaG91bGQgYmUgbGlrZWx5IGF2YWls
YWJsZS4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQog
c2NyaXB0cy91YmluaXplLWltYWdlLnNoIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2NyaXB0cy91YmluaXplLWltYWdl
LnNoIGIvc2NyaXB0cy91YmluaXplLWltYWdlLnNoCmluZGV4IDA5YTAwYjE4OThjZS4uNzk5MzVi
YWQxZGIyIDEwMDc1NQotLS0gYS9zY3JpcHRzL3ViaW5pemUtaW1hZ2Uuc2gKKysrIGIvc2NyaXB0
cy91YmluaXplLWltYWdlLnNoCkBAIC05LDcgKzksNyBAQCBvdXRmaWxlPSIiCiBlcnI9IiIKIAog
Z2V0X21hZ2ljX3dvcmQoKSB7Ci0JZGQgaWY9JDEgYnM9MiBjb3VudD0xIDI+L2Rldi9udWxsIHwg
aGV4ZHVtcCAtdiAtbiAyIC1lICcxLzEgIiUwMngiJworCWRkIGlmPSQxIGJzPTIgY291bnQ9MSAy
Pi9kZXYvbnVsbCB8IG9kIC14IHwgaGVhZCAtMSB8IGN1dCAtZCAnICcgLWYyCiB9CiAKIGlzX3Vi
aWZzKCkgewoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
