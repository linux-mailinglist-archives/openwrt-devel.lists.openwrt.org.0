Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FFC1EFB88
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 16:38:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tUvbJf0nTSTGIRJ0Ob2JXSjEVD5jsHLwZ/SV6jxnRMQ=; b=Gmj818a1DhZRWk
	hxsNxHSaN0J71cS0i7r6ag8GXBN14Le0CcQVYftBSXj9oSRIXWn85Q2rI05oVcWl4ENMMvWVyv/am
	gDxom5ky4LlYMYq0sHUDmVjMn/sRnjH6aGjTWBQjOE3eBmVWGLWlBxLDlCsr5PsVS2JZI5RmS4pVV
	cNscKvtep3CBiLBFsJl9LQzu+fr0iwvZaYdH+gl0ano2jMaQS9wDvujIa1i4lOaMWUwdfxGjvYkFx
	48LWGmyaet0LGuNWv7c5230fhcfeCUIeYOsxJZ0KgqhioeCs2UMZbBwld3LsEylRWkKjoggFz28Ap
	7ubZpAyXW9Z6G1ZTE3TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhDTu-0008Cf-AB; Fri, 05 Jun 2020 14:38:02 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhDTn-0008BW-6p
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 14:37:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6AE9218EDF;
 Fri,  5 Jun 2020 16:37:51 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 998350b3;
 Fri, 5 Jun 2020 16:37:35 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  5 Jun 2020 16:37:48 +0200
Message-Id: <20200605143748.28826-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_073755_411462_4482A9F0 
X-CRM114-Status: UNSURE (   6.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: mt7621: edgerouter-x: fix missing
 wan interface
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
Cc: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>,
 Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q29tbWl0IDVhY2QxZWQwYmUwZCAoInJhbWlwczogbXQ3NjIxOiBmaXggVWJpcXVpdGkgRVItWCBw
b3J0cyBuYW1lcyBhbmQKTUFDIGFkZHJlc3NlcyIpIGRpZG4ndCBvbmx5IGNoYW5nZWQgbmFtaW5n
LCBidXQgYWxzbyByZW1vdmVkIFdBTgpmdW5jdGlvbmFsaXR5IGZyb20gZXRoMCBwb3J0LCB3aGlj
aCBpcyBub3QgZGVzaXJlZCwgc28gbGV0cyBhZGQgaXQgYmFjay4KCkNjOiBDaHVhbmhvbmcgR3Vv
IDxnY2g5ODEyMTNAZ21haWwuY29tPgpDYzogQWRyaWFuIFNjaG11dHpsZXIgPGZyZWlmdW5rQGFk
cmlhbnNjaG11dHpsZXIuZGU+CkNjOiBERU5HIFFpbmdmYW5nIDxkZW5ncWY2QG1haWwyLnN5c3Uu
ZWR1LmNuPgpGaXhlczogNWFjZDFlZDBiZTBkICgicmFtaXBzOiBtdDc2MjE6IGZpeCBVYmlxdWl0
aSBFUi1YIHBvcnRzIG5hbWVzIGFuZCBNQUMgYWRkcmVzc2VzIikKU2lnbmVkLW9mZi1ieTogUGV0
ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCgpBcyBpbiBodHRwczovL29wZW53cnQub3Jn
L3RvaC91YmlxdWl0aS91YmlxdWl0aV9lZGdlcm91dGVyX3hfZXIteF9rYSNzd2l0Y2hfcG9ydHNf
Zm9yX3ZsYW5zCgogdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvYmFzZS1maWxlcy9ldGMvYm9h
cmQuZC8wMl9uZXR3b3JrIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvYmFz
ZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2
MjEvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCmluZGV4IGJhOWY3ZmI3YjYxMy4u
NWIwZjdmZjJjZGVmIDEwMDc1NQotLS0gYS90YXJnZXQvbGludXgvcmFtaXBzL210NzYyMS9iYXNl
LWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsKKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9t
dDc2MjEvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCkBAIC00NCw3ICs0NCw3IEBA
IHJhbWlwc19zZXR1cF9pbnRlcmZhY2VzKCkKIAkJdWNpZGVmX3NldF9pbnRlcmZhY2VzX2xhbl93
YW4gImxhbjIgbGFuMyBsYW40IGxhbjUiICJ3YW4iCiAJCTs7CiAJdWJudCxlZGdlcm91dGVyLXgp
Ci0JCXVjaWRlZl9zZXRfaW50ZXJmYWNlX2xhbiAiZXRoMCBldGgxIGV0aDIgZXRoMyBldGg0Igor
CQl1Y2lkZWZfc2V0X2ludGVyZmFjZV9sYW5fd2FuICJldGgxIGV0aDIgZXRoMyBldGg0IiAiZXRo
MCIKIAkJOzsKIAl1Ym50LGVkZ2Vyb3V0ZXIteC1zZnApCiAJCXVjaWRlZl9zZXRfaW50ZXJmYWNl
X2xhbiAiZXRoMCBldGgxIGV0aDIgZXRoMyBldGg0IGV0aDUiCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
