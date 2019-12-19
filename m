Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB7D127071
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uSCqAA8+cMNuHMlFp6ieSITmxnenGkmM4f3kaYdcrBs=; b=nbWSdtgVjUHFq1
	9WZM4NiY61yyporbhuWOrRQHUe4y91hxHqU667c/QTGuOQSLZDhex2ZLvH6dcA54XDxyV01ES3NAy
	lAY4rs4IJc3mgtiAuL8kkcuVVkv0+JzliY1xq+3CF3lXH8gIZmYeclS38Hgpx+XHPWlGicRCA2rvg
	4+7mdHBiKDEQWj89pcT4uwySF/3G5pzBI6uRHkCfqFI5JLbxbkIT2W7hWDpDxQRap5bxhzE8BFN3b
	rBqreHleV9wU3l9Psgc+VyLI91HWb/xuAehrNY967hn/qbUX3GMbqgJcu02LxC5wCDgmxFSI+X5yP
	ja7geeAUAbPIws+yGggw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii42j-0006zy-0e; Thu, 19 Dec 2019 22:13:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii41J-000542-NT
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:11:47 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BFD9C4BC0;
 Thu, 19 Dec 2019 23:11:43 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 6e2e93fe;
 Thu, 19 Dec 2019 23:11:33 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:11:14 +0100
Message-Id: <20191219221125.22646-6-ynezz@true.cz>
In-Reply-To: <20191219221125.22646-1-ynezz@true.cz>
References: <20191219221125.22646-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_141145_936135_2E643108 
X-CRM114-Status: UNSURE (   8.07  )
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
Subject: [OpenWrt-Devel] [PATCH ubus 05/16] libubus: fix incompatible
 pointer types assigment
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

Rml4ZXMgZm9sbG93aW5nIGVycm9yIHJlcG9ydGVkIGJ5IGNsYW5nLTkgYW5hbHl6ZXI6CgogbGli
dWJ1cy5jOjI4NjoxOTogZXJyb3I6IGluY29tcGF0aWJsZSBwb2ludGVyIHR5cGVzIGFzc2lnbmlu
ZyB0byAnc3RydWN0IGJsb2JfYXR0ciAqJyBmcm9tICdjaGFyIConIFstV2Vycm9yLC1XaW5jb21w
YXRpYmxlLXBvaW50ZXItdHlwZXNdCiAgICAgICAgIGN0eC0+bXNnYnVmLmRhdGEgPSAoY2hhciAq
KSBjYWxsb2MoVUJVU19NU0dfQ0hVTktfU0laRSwgc2l6ZW9mKGNoYXIpKTsKClJlc3VsdCBvZiAn
Y2FsbG9jJyBpcyBjb252ZXJ0ZWQgdG8gYSBwb2ludGVyIG9mIHR5cGUgJ3N0cnVjdCBibG9iX2F0
dHInLAp3aGljaCBpcyBpbmNvbXBhdGlibGUgd2l0aCBzaXplb2Ygb3BlcmFuZCB0eXBlICdjaGFy
Jy4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogbGli
dWJ1cy5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvbGlidWJ1cy5jIGIvbGlidWJ1cy5jCmluZGV4IDI2MGU0MGYyZjQ0
Yi4uODQ2YWU4M2JjYzEyIDEwMDY0NAotLS0gYS9saWJ1YnVzLmMKKysrIGIvbGlidWJ1cy5jCkBA
IC0yODMsNyArMjgzLDcgQEAgaW50IHVidXNfY29ubmVjdF9jdHgoc3RydWN0IHVidXNfY29udGV4
dCAqY3R4LCBjb25zdCBjaGFyICpwYXRoKQogCWN0eC0+Y29ubmVjdGlvbl9sb3N0ID0gdWJ1c19k
ZWZhdWx0X2Nvbm5lY3Rpb25fbG9zdDsKIAljdHgtPnBlbmRpbmdfdGltZXIuY2IgPSB1YnVzX3By
b2Nlc3NfcGVuZGluZ19tc2c7CiAKLQljdHgtPm1zZ2J1Zi5kYXRhID0gY2FsbG9jKFVCVVNfTVNH
X0NIVU5LX1NJWkUsIHNpemVvZihjaGFyKSk7CisJY3R4LT5tc2didWYuZGF0YSA9IGNhbGxvYygx
LCBVQlVTX01TR19DSFVOS19TSVpFKTsKIAlpZiAoIWN0eC0+bXNnYnVmLmRhdGEpCiAJCXJldHVy
biAtMTsKIAljdHgtPm1zZ2J1Zl9kYXRhX2xlbiA9IFVCVVNfTVNHX0NIVU5LX1NJWkU7CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
