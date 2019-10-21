Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8787DEC49
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 14:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E20XZDN/7yA0XRUx8TqfSAfyi1hAWXXDpptUUB/qzRE=; b=I85E6hEJJPUUu1
	TUdmf8RMZbCwELPviapYcrAP509HR6JsRTcSgGgRMNlOtADhIlH8uKrVRiOdLZWIMMFvxII1LXdCp
	vGNWY7CQfWjrRnneRk3vyEu4utJ0fWFAsBkiuIG4aOnLBhrByYW+jj/CkUiBqhXHfwdl7A1Dab2Ii
	qQrZiOrU+znDmwaGXeWOQEjPnrdpUACH4FGdt5cKUg+yRn8WM4D5nyftJCCDcHLJH3724/nQA2ZuY
	yXqmEG/s5yFvH6McaG+36WVLqKbuMxIa2W2hImG/RRo+bb9HIz/Wqt05xn5uJRiQ4isWCfF4Hencm
	Lgo0gPV41WkWtlTCA8dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWrZ-0005mt-19; Mon, 21 Oct 2019 12:32:41 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWrN-0005kt-Rw
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 12:32:32 +0000
Received: from [192.168.180.1] (port=54454 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>) id 1iMWrE-00081B-1g
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 14:32:20 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id 43B6328021C;
 Mon, 21 Oct 2019 14:32:20 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 14:32:09 +0200
Message-Id: <20191021123214.2252-1-avalentin@marcant.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_053230_055706_D6DBA850 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/5] ZyXEL NBG6716 update ar71xx, add ath79,
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
b3IgTkJHNjcxNgotQWRkIGEgTUFDIHBhcnNlciBmb3IgRFRTIGFsbG93aW5nIHUtYm9vdC1lbnYg
YXMgTUFDIHNvdXJjZQoKQW5kcsOpIFZhbGVudGluICg1KToKICB0b29scy9ta3Jhc2ltYWdlOiBB
ZGQgc3VwcG9ydCBmb3IgMTI4ayBoZWFkZXIgc2l6ZQogIGFyNzF4eDogZml4IGJ1ZyBpbiBOQkc2
NzE2IGtlcm5lbHBhY2tpbmcsIGFkZCBmaXJtd2FyZSBwYXJ0aXRpb24KICAgIGFsbG93aW5nIGF0
aDc5IHVwZGF0ZQogIGF0aDc5OiBhZGQgc3VwcG9ydCBmb3IgWnlYRUwgTkJHNjcxNgogIHRhcmdl
dC9nZW5lcmljOiBhZGQgYXNjaWkgc2VhcmNoIG9wdGlvbiB0byBtdGQtbWFjLWFkZHJlc3MgaGVs
cGVyCiAgYXRoNzkvenl4ZWxfbmJnNjcxNjogYWRkIG1hY3MgZnJvbSB1Ym9vdC1lbnYgcGFydGl0
aW9uCgogdGFyZ2V0L2xpbnV4L2FyNzF4eC9pbWFnZS9sZWdhY3kubWsgICAgICAgICAgIHwgICA2
ICstCiAuLi4vYXRoNzkvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrICAgfCAgIDgg
KwogLi4uL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTAtYXRoOWstZWVwcm9tICAgIHwgICA0ICsK
IC4uLi9ldGMvaG90cGx1Zy5kL2Zpcm13YXJlLzExLWF0aDEway1jYWxkYXRhICB8ICAgNCArCiAu
Li4vZXRjL2hvdHBsdWcuZC9pZWVlODAyMTEvMDAtd2lmaS1taWdyYXRpb24gfCAgIDEgKwogLi4u
L2F0aDc5L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggIHwgICAzICsKIHRhcmdl
dC9saW51eC9hdGg3OS9kdHMvcWNhOTU1Ny5kdHNpICAgICAgICAgICB8ICAxOCArCiAuLi4vbGlu
dXgvYXRoNzkvZHRzL3FjYTk1NThfenl4ZWxfbmJnNjcxNi5kdHMgfCAzMDkgKysrKysrKysrKysr
KysrKysrCiB0YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvTWFrZWZpbGUgICAgICAgICAgICAgfCAg
IDIgKwogdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL2NvbW1vbi16eXhlbC5tayAgICAgIHwgIDI4
ICsrCiB0YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvbmFuZC16eXhlbC5tayAgICAgICAgfCAgMjAg
KysKIC4uLkVULWFkZC1vZl9nZXRfbWFjX2FkZHJlc3NfbXRkX3NlYXJjaC5wYXRjaCB8ICA5NiAr
KysrKysKIC4uLkVULWFkZC1vZl9nZXRfbWFjX2FkZHJlc3NfbXRkX3NlYXJjaC5wYXRjaCB8ICA5
NiArKysrKysKIHRvb2xzL2Zpcm13YXJlLXV0aWxzL3NyYy9ta3Jhc2ltYWdlLmMgICAgICAgICB8
ICAxMiArLQogMTQgZmlsZXMgY2hhbmdlZCwgNjAxIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25z
KC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTU4X3p5
eGVsX25iZzY3MTYuZHRzCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L2F0aDc5L2lt
YWdlL2NvbW1vbi16eXhlbC5tawogY3JlYXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9saW51eC9hdGg3
OS9pbWFnZS9uYW5kLXp5eGVsLm1rCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L2dl
bmVyaWMvaGFjay00LjE0LzY4MC1ORVQtYWRkLW9mX2dldF9tYWNfYWRkcmVzc19tdGRfc2VhcmNo
LnBhdGNoCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L2dlbmVyaWMvaGFjay00LjE5
LzY4MC1ORVQtYWRkLW9mX2dldF9tYWNfYWRkcmVzc19tdGRfc2VhcmNoLnBhdGNoCgotLSAKMi4y
MC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
