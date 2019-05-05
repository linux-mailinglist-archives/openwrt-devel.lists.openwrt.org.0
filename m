Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A63714244
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 22:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxmrhxTu2gIHM7VLVJ+N7dcLRNfQOTkuvPTCrKZN79A=; b=XSZpJLjQ4T2sgA
	AiY0ZN4u9p2KK1Qmyju6YD5fGIaWweM77/9/Cw2hn3IhgoIG3UJZvTp8Da5RCAJeaIaBXe2NhJGXk
	XUm7sTVb2ByIbTzfa8W4bXVYOBx0RnxtbXZzgXMbnsciOiyj0D5j8MqhKPH6wJZAzfFQu0IPMt8ez
	WM3aJc9WUVI5PryATywuevjci76n8gW+5dvZqiOLvR7ZJiqpEGA920apwKKxoc8Ux/VyOGlpVOHEH
	UB57QLjxbWazAvOgK25ov9xn7LEObC0kpocu94soBd0f0wVCe+rH2M0bvjTU2tZEELmHTa4ZOb4lH
	otBhReq7njR/y8uN4DfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNNWv-0002zJ-2J; Sun, 05 May 2019 20:14:37 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNNWo-0002yO-2D
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 20:14:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4BA443EE8;
 Sun,  5 May 2019 22:14:27 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id b3ca59dc;
 Sun, 5 May 2019 22:14:25 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 May 2019 22:14:20 +0200
Message-Id: <1557087260-32680-3-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557087260-32680-1-git-send-email-ynezz@true.cz>
References: <1557087260-32680-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_131430_260312_B3679057 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 2/2] lantiq: image: build initramfs only for
 FRITZ7362SL
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

Q29tbWl0ICJsYW50aXEveHJ4MjAwOiBlbmFibGUgaW5pdHJhbWZzIGltYWdlcyIgZW5hYmxlZCBj
cmVhdGlvbiBvZgppbml0cmFtZnMgaW1hZ2VzIGZvciBhbGwgZGV2aWNlcyBpbiBsYW50aXEncyB4
cngyMDAgc3VidGFyZ2V0LCBqdXN0CmJlY2F1c2UgRlJJVFo3MzYyU0wgbmVlZHMgaW5pdHJhbWZz
IGR1cmluZyBPcGVuV3J0IGluc3RhbGF0aW9uLgoKU28gdGhpcyBjb21taXRzIHVzZXMgc2VsZWN0
aXZlLXJhbWRpc2sgZmVhdHVyZSBhbmQgYWRkcwpORUVEU19JTklUUkFNRlM9MSB0byBGUklUWjcz
NjJTTCBvbmx5LgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4K
LS0tCiB0YXJnZXQvbGludXgvbGFudGlxL2ltYWdlL01ha2VmaWxlICAgfCAxICsKIHRhcmdldC9s
aW51eC9sYW50aXEveHJ4MjAwL3RhcmdldC5tayB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2xh
bnRpcS9pbWFnZS9NYWtlZmlsZSBiL3RhcmdldC9saW51eC9sYW50aXEvaW1hZ2UvTWFrZWZpbGUK
aW5kZXggZmNhM2ZjZS4uNjgwODMzNyAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2xhbnRpcS9p
bWFnZS9NYWtlZmlsZQorKysgYi90YXJnZXQvbGludXgvbGFudGlxL2ltYWdlL01ha2VmaWxlCkBA
IC02ODUsNiArNjg1LDcgQEAgZGVmaW5lIERldmljZS9hdm1fZnJpdHo3MzYyc2wKICAgREVWSUNF
X0RUUyA6PSBGUklUWjczNjJTTAogICBERVZJQ0VfVElUTEUgOj0gQVZNIEZSSVRaIUJveCA3MzYy
IFNMCiAgIERFVklDRV9QQUNLQUdFUyA6PSBrbW9kLWF0aDlrIGttb2Qtb3dsLWxvYWRlciB3cGFk
LWJhc2ljIGttb2QtdXNiLWR3YzIgZnJpdHotdGZmcworICBORUVEU19JTklUUkFNRlMgOj0gMQog
ZW5kZWYKIFRBUkdFVF9ERVZJQ0VTICs9IGF2bV9mcml0ejczNjJzbAogCmRpZmYgLS1naXQgYS90
YXJnZXQvbGludXgvbGFudGlxL3hyeDIwMC90YXJnZXQubWsgYi90YXJnZXQvbGludXgvbGFudGlx
L3hyeDIwMC90YXJnZXQubWsKaW5kZXggNGQ5MmIyNS4uODc0MDc5NCAxMDA2NDQKLS0tIGEvdGFy
Z2V0L2xpbnV4L2xhbnRpcS94cngyMDAvdGFyZ2V0Lm1rCisrKyBiL3RhcmdldC9saW51eC9sYW50
aXEveHJ4MjAwL3RhcmdldC5tawpAQCAtMSw3ICsxLDcgQEAKIEFSQ0g6PW1pcHMKIFNVQlRBUkdF
VDo9eHJ4MjAwCiBCT0FSRE5BTUU6PVhSWDIwMAotRkVBVFVSRVM6PXNxdWFzaGZzIGF0bSBuYW5k
IHJhbWRpc2sKK0ZFQVRVUkVTOj1zcXVhc2hmcyBhdG0gbmFuZCBzZWxlY3RpdmUtcmFtZGlzawog
Q1BVX1RZUEU6PTI0a2MKIAogREVGQVVMVF9QQUNLQUdFUys9a21vZC1sZWRzLWdwaW8gXAotLSAK
MS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
