Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F36DFE1643
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 11:35:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kgEZ3y+EElbEndA2y+P41lsHtImELLnHaJfh6TL1Qq0=; b=gkpooWeyHeZZ9g
	FaIPRUQ2K52ckpTyoBuF7o0FTNXJJyaUdZO0oVTx/HgKPwhMI8GGaq04nxydK8pPh5/XxD5vmeaUe
	5uvtIpoH1Ai46DeHbyiJ17nw/MF4GiGxfl/NXQBcMD90+j+GEs9/AUk9T5jE0jOIF0Gr8N2gqTDBH
	AwSSVG3/n4ixRP77yRUiNlgkcDrIu9s5u1GXf8QgNvlFjjHJr3UjV0PjC2AAtkrXlWkTpp1MgDW/Y
	QbdWKJvu0wEEwpmDdPSYAA/u56DBLdgB3RuD6BIMtCgcUcIDYAeUH2OokFWgtWB+d0r/eWLlH8vPN
	oHNpIfO4Yx46fHYzLNdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iND3M-0005IJ-5c; Wed, 23 Oct 2019 09:35:40 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNCyT-0001YZ-N4
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 09:30:43 +0000
Received: from [192.168.180.1] (port=43708 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>) id 1iNCyP-0002Ch-1z
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 11:30:33 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id 4849228021C;
 Wed, 23 Oct 2019 11:30:33 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 11:30:27 +0200
Message-Id: <20191023093030.18611-1-avalentin@marcant.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_023038_101864_8F12E547 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 0/3] ZyXEL NBG6716 update ar71xx, add ath79,
 extend mkrasimage
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
Cc: avalentin@marcant.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW5kcsOpIFZhbGVudGluICgzKToKICB0b29scy9ta3Jhc2ltYWdlOiBBZGQgc3VwcG9ydCBmb3Ig
MTI4ayBoZWFkZXIgc2l6ZQogIGFyNzF4eDogZml4IGJ1ZyBpbiBOQkc2NzE2IGtlcm5lbHBhY2tp
bmcsIGFkZCBmaXJtd2FyZSBwYXJ0aXRpb24KICBhdGg3OTogYWRkIHN1cHBvcnQgZm9yIFp5WEVM
IE5CRzY3MTYKCiB0YXJnZXQvbGludXgvYXI3MXh4L2ltYWdlL2xlZ2FjeS5tayAgICAgICAgICAg
fCAgIDUgKy0KIC4uLi9hdGg3OS9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsgICB8
ICAgOCArCiAuLi4vZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8xMC1hdGg5ay1lZXByb20gICAgfCAg
IDQgKwogLi4uL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTEtYXRoMTBrLWNhbGRhdGEgIHwgICA0
ICsKIC4uLi9ldGMvaG90cGx1Zy5kL2llZWU4MDIxMS8wMC13aWZpLW1pZ3JhdGlvbiB8ICAgMyAr
LQogLi4uL2F0aDc5L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggIHwgICAzICsK
IHRhcmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTU1Ny5kdHNpICAgICAgICAgICB8ICAxOCArKwog
Li4uL2xpbnV4L2F0aDc5L2R0cy9xY2E5NTU4X3p5eGVsX25iZzY3MTYuZHRzIHwgMjk5ICsrKysr
KysrKysrKysrKysrKwogdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL25hbmQubWsgICAgICAgICAg
ICAgIHwgIDQ5ICsrKwogdG9vbHMvZmlybXdhcmUtdXRpbHMvc3JjL21rcmFzaW1hZ2UuYyAgICAg
ICAgIHwgIDExICstCiAxMCBmaWxlcyBjaGFuZ2VkLCAzOTggaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1
NThfenl4ZWxfbmJnNjcxNi5kdHMKCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
