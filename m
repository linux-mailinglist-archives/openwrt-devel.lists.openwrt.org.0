Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA32E0128
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 11:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GpMCwDVjrJ4u6qbfceC40tycEPk4+M3xsB05giGYMcY=; b=ipVtmIxrA0dHqm
	aJVoDKDP4z1d1LYL3CwEwk9AdIGl7j6eJxoHM7I+04X2Rzl5l6g95j0DpvbrJhiq9YUqAAUMnDwTg
	qjCxWQeaGAQb7iDrrsLr5knEPmgDH/un0AJvfc/UJD8icULZCpQt0pGSbTnahxEm/ZkuoXzKJwFjC
	yoyZ7ymDxQ7O0VDtdz/2ze1NrRjSX3f01OgBmkk+DTg7UV3cdtsvjzgXysD3hM7XQLM6iN1cJL6Cq
	eQkeuA7qPYsdsqMuh9P3BGTvcqHzsjdKWEe5hLXSyN6s5J9Vb2oinBbbGVs3vYqDdoLGkk95dCVe+
	sM3CoMoffi2BcOuxD2xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMqpp-0000eE-BJ; Tue, 22 Oct 2019 09:52:13 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMqpf-0000cW-Mk
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 09:52:05 +0000
Received: from [192.168.180.1] (port=34204 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>) id 1iMqpU-0008VS-2W
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 11:51:52 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id 88DD228033C;
 Tue, 22 Oct 2019 11:51:52 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 22 Oct 2019 11:51:46 +0200
Message-Id: <20191022095149.2385-1-avalentin@marcant.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_025203_894608_32673DF8 
X-CRM114-Status: UNSURE (   7.61  )
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
 add mtd mac parser
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

VGhpcyBwYXRjaHNldCBkb2VzIHRoZSBmb2xsb3dpbmc6Ci1GaXggaW1hZ2UgZ2VuZXJhdGlvbiBm
b3Igb2xkIGFyNzF4eCBpbWFnZXMKLUFkZCBhIGZpcm13YXJlIHBhcnRpdGlvbiB0aGUgdGhlIG9s
ZCBhcjcxeHggaW1hZ2VzIChhbGxvd2luZyBtaWdyYXRpb24pCi1BZGQgYXRoNzkgc3VwcG9ydCBm
b3IgTkJHNjcxNgoKQW5kcsOpIFZhbGVudGluICgzKToKICB0b29scy9ta3Jhc2ltYWdlOiBBZGQg
c3VwcG9ydCBmb3IgMTI4ayBoZWFkZXIgc2l6ZQogIGFyNzF4eDogZml4IGJ1ZyBpbiBOQkc2NzE2
IGtlcm5lbHBhY2tpbmcsIGFkZCBmaXJtd2FyZSBwYXJ0aXRpb24KICBhdGg3OTogYWRkIHN1cHBv
cnQgZm9yIFp5WEVMIE5CRzY3MTYKCiB0YXJnZXQvbGludXgvYXI3MXh4L2ltYWdlL2xlZ2FjeS5t
ayAgICAgICAgICAgfCAgIDUgKy0KIC4uLi9hdGg3OS9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAy
X25ldHdvcmsgICB8ICAgOCArCiAuLi4vZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8xMC1hdGg5ay1l
ZXByb20gICAgfCAgIDQgKwogLi4uL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTEtYXRoMTBrLWNh
bGRhdGEgIHwgICA0ICsKIC4uLi9ldGMvaG90cGx1Zy5kL2llZWU4MDIxMS8wMC13aWZpLW1pZ3Jh
dGlvbiB8ICAgMyArLQogLi4uL2F0aDc5L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0u
c2ggIHwgICAzICsKIHRhcmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTU1Ny5kdHNpICAgICAgICAg
ICB8ICAxOCArKwogLi4uL2xpbnV4L2F0aDc5L2R0cy9xY2E5NTU4X3p5eGVsX25iZzY3MTYuZHRz
IHwgMjk2ICsrKysrKysrKysrKysrKysrKwogdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL01ha2Vm
aWxlICAgICAgICAgICAgIHwgICAxICsKIHRhcmdldC9saW51eC9hdGg3OS9pbWFnZS9jb21tb24t
enl4ZWwubWsgICAgICB8ICAyOSArKwogdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL25hbmQtenl4
ZWwubWsgICAgICAgIHwgIDIxICsrCiB0b29scy9maXJtd2FyZS11dGlscy9zcmMvbWtyYXNpbWFn
ZS5jICAgICAgICAgfCAgMTEgKy0KIDEyIGZpbGVzIGNoYW5nZWQsIDM5NyBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9saW51eC9hdGg3OS9k
dHMvcWNhOTU1OF96eXhlbF9uYmc2NzE2LmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9s
aW51eC9hdGg3OS9pbWFnZS9jb21tb24tenl4ZWwubWsKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJn
ZXQvbGludXgvYXRoNzkvaW1hZ2UvbmFuZC16eXhlbC5tawoKLS0gCjIuMjAuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
