Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB863E1852
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 12:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ci0IGxHsCbVJjIQOwomLy4ttw5yYko/F/yN89rX0IEk=; b=gi0zqcgH4hnUzk
	3QjWevBGqaj2j+j0rRD/8G/4FUf+MxJgeD40wvrq9fdMHwBez0IQ5G+/JzprGhJEIEdsYVQI88ZNq
	ZRPpubtJW90PklcGgycpfxAP2bcYmgBEOXQHmmC7R//D0U0lXTRMGuY5a2pNfW/3aPje2Ynd0aVg9
	HlHR2sKhlVqgOcDDF/NUS4FXbQfJDsKCycd/YvJB9kpxkAxpYyk+uFEx8Xz5TXHCS4/LGifuePaUB
	xX7Sp6xvwZ2njLVBb3q6ta8l88i/+xe90huhqQHIYuhmsB/bC4WZISHqTo7M2byZ11vHbPtLVZqTy
	CDQHcD325m8yGgFyGveQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNEHc-0001PK-8K; Wed, 23 Oct 2019 10:54:28 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNEH2-0000zK-4S
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 10:53:55 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 95258523D;
 Wed, 23 Oct 2019 12:53:45 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 544a2cdf;
 Wed, 23 Oct 2019 12:53:35 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 12:53:33 +0200
Message-Id: <20191023105339.16326-3-ynezz@true.cz>
In-Reply-To: <20191023105339.16326-1-ynezz@true.cz>
References: <20191023105339.16326-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_035352_340617_8C841781 
X-CRM114-Status: UNSURE (   6.59  )
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
Subject: [OpenWrt-Devel] [PATCH fwtool 2/8] convert into CMake project
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

QWxpZ25pbmcgaXQgd2l0aCBvdGhlciBDIGJhc2VkIHByb2plY3RzLgoKU2lnbmVkLW9mZi1ieTog
UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBDTWFrZUxpc3RzLnR4dCB8IDggKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBDTWFrZUxpc3RzLnR4dAoKZGlmZiAtLWdpdCBhL0NNYWtlTGlzdHMudHh0IGIvQ01ha2VMaXN0
cy50eHQKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5hNzNjZTY5Zjc0
YzAKLS0tIC9kZXYvbnVsbAorKysgYi9DTWFrZUxpc3RzLnR4dApAQCAtMCwwICsxLDggQEAKK0NN
QUtFX01JTklNVU1fUkVRVUlSRUQoVkVSU0lPTiAzLjApCisKK1BST0pFQ1QoZnd0b29sIEMpCitJ
TkNMVURFKEdOVUluc3RhbGxEaXJzKQorCitBRERfREVGSU5JVElPTlMoLVdhbGwgLVdlcnJvciAt
V2V4dHJhIC1Xbm8tdW51c2VkLXBhcmFtZXRlcikKK0FERF9FWEVDVVRBQkxFKGZ3dG9vbCBmd3Rv
b2wuYykKK0lOU1RBTEwoVEFSR0VUUyBmd3Rvb2wgUlVOVElNRSBERVNUSU5BVElPTiAke0NNQUtF
X0lOU1RBTExfU0JJTkRJUn0pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
