Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 355861A2A32
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 22:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=42WuDo+XQRGUp0Iyp/25SV7vCJRepzR2nkFDbX4n6FI=; b=Kj5OOejO2xvD0b
	+Lcg8HRJn2Qbif8wXNbEnNYTre6xehasx3/1n/tKecD5+J6bNq9L2gmp0dm2pKk9IvkSZkeeiMOsy
	Gv2dleTW7eZt9GKqu14Fn9xISWvbgK146zlDxtsqGx922xEF6mFbgAozKNGNUbBae4ekPV/U9aWHX
	SvxPWVpFhS2qQwBHBzt3U8dyJcvBg3BzPkSFeDXvFTnwMCo8yptQPEXWwzaC3J1JSntxtqd6yWxRl
	++wSib3uMN1dSZOsO4oxU7EDUnAV/foe++dyt/7FkVeNDJYX+ilo2k6/PZcOeXXVJQChsvScZr1le
	0jRJK3rbcPhUGeuP6LpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMH8a-0000Vh-T4; Wed, 08 Apr 2020 20:17:28 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMH8T-0000VC-0D
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 20:17:22 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 74BD1240007;
 Wed,  8 Apr 2020 20:17:15 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  8 Apr 2020 10:17:01 -1000
Message-Id: <20200408201701.477905-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_131721_180310_8EF39AE0 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] scripts: JSON merge don't crash if no JSON
 found
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

VGhlIEpTT04gYFdPUktfRElSYCAoJChLRElSKS9qc29uX2luZm9fZmlsZXMpIGlzIG9ubHkgY3Jl
YXRlZCBpZiB0aGUgbmV3CmltYWdlIGdlbmVyYXRpb24gbWV0aG9kcyBmcm9tIGBpbWFnZS5ta2Ag
YXJlIHVzZWQuIEhvd2V2ZXIgc29tZSB0YXJnZXRzCmxpa2UgYGFybXZpcnRgIGRvIG5vdCB1c2Ug
aXQgeWV0LCBzbyB0aGUgZm9sZGVyIGlzIG5ldmVyIGNyZWF0ZWQuCgpUaGUgYGpzb25fb3ZlcnZp
ZXdfaW1hZ2VfaW5mby5weWAgc2NyaXB0IHVzZWQgdG8gcmFpc2UgYW4gZXJyb3IgaWYgdGhlCmdp
dmVuIGBXT1JLX0RJUmAgaXNuJ3QgYSBmb2xkZXIsIGhvd2V2ZXIgaXQgc2hvdWxkIGp1c3Qgbm90
aWZ5IGFib3V0Cm1pc3NpbmcgSlNPTiBmaWxlcy4KClRoaXMgcGF0Y2ggcmVtb3ZlcyB0aGUgUHl0
aG9uIGFzc2VydCBhbmQgZXhpc3RzIHdpdGggY29kZSAwIGV2ZW4gaWYgbm8KSlNPTiBmaWxlcyB3
ZXJlIGZvdW5kLCBhcyB0aGlzIGlzIG5vdCBuZWNlc3NhcmlseSBhbiBlcnJvciBidXQgc2ltcGx5
Cm5vdCB5ZXQgaW1wbGVtZW50ZWQuIFVzaW5nIGBnbG9iYCBvbiBhbiBub3QgZXhpc3RpbmcgYFBh
dGhgIHJlc3VsdHMgaW4KYW4gZW1wdHkgbGlzdCwgdGhlcmVmb3JlIHRoZSBmb3IgbG9vcCB3b24n
dCBydW4uCgpTaWduZWQtb2ZmLWJ5OiBQYXVsIFNwb29yZW4gPG1haWxAYXBhcmNhci5vcmc+CkND
OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHNjcmlwdHMvanNvbl9vdmVydmll
d19pbWFnZV9pbmZvLnB5IHwgMiAtLQogMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvc2NyaXB0cy9qc29uX292ZXJ2aWV3X2ltYWdlX2luZm8ucHkgYi9zY3JpcHRz
L2pzb25fb3ZlcnZpZXdfaW1hZ2VfaW5mby5weQppbmRleCA1ZWQ4MjkyNDliLi5hMTQxOGUzNjZk
IDEwMDc1NQotLS0gYS9zY3JpcHRzL2pzb25fb3ZlcnZpZXdfaW1hZ2VfaW5mby5weQorKysgYi9z
Y3JpcHRzL2pzb25fb3ZlcnZpZXdfaW1hZ2VfaW5mby5weQpAQCAtMTUsOCArMTUsNiBAQCBhc3Nl
cnQgZ2V0ZW52KCJXT1JLX0RJUiIpLCAiJFdPUktfRElSIHJlcXVpcmVkIgogCiB3b3JrX2RpciA9
IFBhdGgoZ2V0ZW52KCJXT1JLX0RJUiIpKQogCi1hc3NlcnQgd29ya19kaXIuaXNfZGlyKCksICIk
V09SS19ESVIgbm90IGEgZGlyZWN0b3J5IgotCiBvdXRwdXQgPSB7fQogCiBmb3IganNvbl9maWxl
IGluIHdvcmtfZGlyLmdsb2IoIiouanNvbiIpOgotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
