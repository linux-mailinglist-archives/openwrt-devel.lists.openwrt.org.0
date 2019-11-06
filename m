Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DEFF1B78
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 17:41:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=09CEQzYOoTMTzCgX7MBtNbixaBe8ZqUnsGoal779Mqc=; b=bdpeIIVHQYENQy
	mdI4aKWzd/At8ry0zJVtChgORFTSzlFmYlsKir3GNna1OjUTx5bibP96UMXrGXFq7fLXfN3149DQA
	LUMVY3vBvzPHxqaFaHJ8wewHdMoqHdDm6tXE64s7yshkGfohKnwgHLjzL3pMC42btpO/jvcEHYvgy
	nWwEPZu/VaXUiKUWN0Q/NhxZcbaJtcR1+uhqDFrjwDgkrUGO7X9IowsioT3fn7emOgUg/Pb3dtzz6
	PPtvgc0/kKNJTlWXNYl76jUeE+l70Ogolx6H+ZDWbyXZG0vv+wYR6v3PkOE49PzrLsQMuaoaDaZex
	r8N1GDuJXHqSMuQu1yQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSONF-00032z-K1; Wed, 06 Nov 2019 16:41:37 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSON7-00031l-7S
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 16:41:30 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3ABCD4E61;
 Wed,  6 Nov 2019 17:41:27 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id b650e0aa;
 Wed, 6 Nov 2019 17:41:17 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 17:41:20 +0100
Message-Id: <20191106164120.5329-3-ynezz@true.cz>
In-Reply-To: <20191106164120.5329-1-ynezz@true.cz>
References: <20191106164120.5329-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_084129_422666_C323EF6A 
X-CRM114-Status: UNSURE (   6.55  )
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
Subject: [OpenWrt-Devel] [PATCH libnl-tiny 3/3] remove never used err
 variable assignment disliked by scan-build
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

c2Nhbi1idWlsZCBmcm9tIGNsYW5nIHZlcnNpb24gOSBjb21wbGFpbnMgYWJvdXQgZm9sbG93aW5n
OgoKIG5sLmM6NjQ4OjM6IHdhcm5pbmc6IFZhbHVlIHN0b3JlZCB0byAnZXJyJyBpcyBuZXZlciBy
ZWFkCiAgICAgICAgICAgICAgICBlcnIgPSAwOwogICAgICAgICAgICAgICAgXiAgICAgfgoKU2ln
bmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBubC5jIHwgMSAt
CiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL25sLmMgYi9ubC5j
CmluZGV4IDUwNTk2NWZkMTZhYS4uYzg3NTU3M2JiMDVjIDEwMDY0NAotLS0gYS9ubC5jCisrKyBi
L25sLmMKQEAgLTY0NSw3ICs2NDUsNiBAQCBjb250aW51ZV9yZWFkaW5nOgogCQkJCU5MX0NCX0NB
TEwoY2IsIE5MX0NCX1ZBTElELCBtc2cpOwogCQl9CiBza2lwOgotCQllcnIgPSAwOwogCQloZHIg
PSBubG1zZ19uZXh0KGhkciwgJm4pOwogCX0KIAkKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
