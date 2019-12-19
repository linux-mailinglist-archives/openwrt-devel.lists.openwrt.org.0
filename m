Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA5D127053
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:06:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7/IqisIoYxOA3DlsgZpmf46qut/D52gS2FlSIBuCRg=; b=Sz10dn2TFmijlv
	GwPieVZVBOyE4vchzznoDk0dpxi9MjyVyWUr8CZPpixR3MNC2ufqcqmPk15Cuj6iN0/nZenEPAP4K
	CAOdJeCnSKnjakz+dBCSjgX33lcSeAhHvHr/FkobPMHKhLkrtOmhDcaridv+LCeAFtPrwIkqRdtqm
	BRyst1im27pErnWMuOe8j6/XOzYEv5SB4/isxw2uT3x+8vg/7VlAFsGqCHXluWC5EtRbSVH1G/YNC
	tT+Un4tUe/BlYOynJK3z/t/xbuT1WvTdJIL/CQfn27ngsJf+eUGj/79WboQUUXWTuOvbrzdFiv6eN
	xHJfyTDJD4e5Rb9EYd4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3w8-0008H6-6a; Thu, 19 Dec 2019 22:06:24 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3uL-0003gZ-DT
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:04:40 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8A15D4B94;
 Thu, 19 Dec 2019 23:04:29 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 88b9da3a;
 Thu, 19 Dec 2019 23:04:20 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:04:17 +0100
Message-Id: <20191219220421.22206-6-ynezz@true.cz>
In-Reply-To: <20191219220421.22206-1-ynezz@true.cz>
References: <20191219220421.22206-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_140433_797660_A6B03431 
X-CRM114-Status: UNSURE (   6.75  )
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
Subject: [OpenWrt-Devel] [PATCH ucert 5/9] cmake: split usign bits into
 static library
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

U28gaXQgY291bGQgYmUgcmV1c2VkIGVhc2lseSBpbiB1bml0IHRlc3RzIGZvciBleGFtcGxlLgoK
U2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBDTWFrZUxp
c3RzLnR4dCB8IDggKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvQ01ha2VMaXN0cy50eHQgYi9DTWFrZUxpc3RzLnR4
dAppbmRleCA3ODk3MGQyNjMyYjUuLjQ0M2Q3OWJkNGU4YiAxMDA2NDQKLS0tIGEvQ01ha2VMaXN0
cy50eHQKKysrIGIvQ01ha2VMaXN0cy50eHQKQEAgLTI4LDEzICsyOCwxNSBAQCBJRihVU0VfUlBB
VEgpCiAJU0VUKENNQUtFX01BQ09TWF9SUEFUSCAxKQogRU5ESUYoKQogCi1BRERfRVhFQ1VUQUJM
RSh1Y2VydCB1Y2VydC5jIHVzaWduLWV4ZWMuYykKK0FERF9MSUJSQVJZKHVjZXJ0X2xpYiBTVEFU
SUMgdXNpZ24tZXhlYy5jKQorQUREX0VYRUNVVEFCTEUodWNlcnQgdWNlcnQuYykKKwogSUYoVUNF
UlRfRlVMTCkKIAlBRERfREVGSU5JVElPTlMoLURVQ0VSVF9GVUxMKQotCVRBUkdFVF9MSU5LX0xJ
QlJBUklFUyh1Y2VydCAke3Vib3h9ICR7YmxvYm1zZ19qc29ufSAke2pzb259KQorCVRBUkdFVF9M
SU5LX0xJQlJBUklFUyh1Y2VydCB1Y2VydF9saWIgJHt1Ym94fSAke2Jsb2Jtc2dfanNvbn0gJHtq
c29ufSkKIEVMU0UoKQogCUFERF9ERUZJTklUSU9OUygtRFVDRVJUX1NUUklQX01FU1NBR0VTKQot
CVRBUkdFVF9MSU5LX0xJQlJBUklFUyh1Y2VydCAke3Vib3h9KQorCVRBUkdFVF9MSU5LX0xJQlJB
UklFUyh1Y2VydCB1Y2VydF9saWIgJHt1Ym94fSkKIEVORElGKCkKIAogSU5TVEFMTChUQVJHRVRT
IHVjZXJ0IFJVTlRJTUUgREVTVElOQVRJT04gYmluKQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
