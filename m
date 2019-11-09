Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99426F5F31
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 13:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/zqqt+lvyXO+RrVxPBmP3voIsZcLOu6kA4aSTMFPsO8=; b=j/MVHixItsu38D
	R6z/uaj0CX42Uqv31DwE9o7i+yv1LdVK1Pn2sO0ar9riUrvLx8nXtiQtFXFUPDC1xI39mSdQKlMH6
	YuJTr4pLAP2ZIaxwcmI+AlMP4Gbb5tBVnKX1n4EcOZQOLa/RwNMwzOGu9t8jfkb+GRTMxF3sinpuj
	u33uELWxT7yL89aUNILXMkWqJOkz0vdb9eQ41ebRc51L1HeuoyKhfW+/ifdCHtTVnOcr9lXF1x3Mz
	xKuI/XJHGyqvVsWFUI8nY0jPbBDijexB94R6XZAbNSq18M3bdBu3vtX1wVSy5xChT7Lt9p8Y1IpK9
	at1ilLaDNTy90LnIPLqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTQHH-0003E7-KU; Sat, 09 Nov 2019 12:55:43 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTQH8-0003Da-WE
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 12:55:37 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id CB5195ECE;
 Sat,  9 Nov 2019 13:55:30 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id d9fb5e1e;
 Sat, 9 Nov 2019 13:55:20 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  9 Nov 2019 13:55:21 +0100
Message-Id: <20191109125521.11981-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_045535_186236_57ED9A44 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
Subject: [OpenWrt-Devel] [PATCH maintainer-tools] patchwork-apply.sh: help
 spotting DMARC mangled patches
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

QXZvaWQgRE1BUkMgcGxhZ3VlIGluIHRoZSBjb21taXQgbWVzc2FnZXM6CgogODdmOTI5MjMwMGNm
IGhvc3RhcGQ6IGFkZCBJRUVFIDgwMi4xMWsgc3VwcG9ydAogNDUwZDQ0YThlYWQyIG9wZW5zc2w6
IGNoYW5nZSBkZWZhdWx0czogRU5HSU5FOm9uLCBOUE46b2ZmLCBtaXNjCiBlYWJjMWRkYzQ1NDEg
YnVpbGQ6IEhvbm91ciBOT19DT0xPUiBpbiBpbmNsdWRlL3NjYW4ubWsKIDNmYjQ1NTc2YWMxNiBj
cnlwdG9kZXYtbGludXg6IG1vdmUgZnJvbSBwYWNrYWdlcyBmZWVkCiBhNzMyODNkYzEwZjcga2Vy
bmVsOiBuZi1uYXRoZWxwZXItZXh0cmEgZGVwZW5kcyBvbiBpcHQtcmF3CiAwMzE3ZmMzNjU4ZWIg
bGlicGNhcDogcGF0Y2ggdG8gYWRkIGxpbWl0cy5oIHRvIHBjYXAtdXNiLWxpbnV4LmMKIDI2ZGJm
NzlmNDkwNSBsaWJldmVudDI6IERvbid0IGJ1aWxkIHRlc3RzIGFuZCBzYW1wbGVzCiBkNTkxMjYw
NDA3MDEgYnJjbTYzeHg6IGluaXRpYWwgc3VwcG9ydCBmb3IgU2t5IFNSMTAyIHJvdXRlcgogMDk0
ZDQ5Y2RkZjkzIGtlcm5lbDogYnVtcCA0LjE0IHRvIDQuMTQuNTEKIDI0NzA1NWNiZmJmMSBpZ21w
cHJveHk6IGJ1bXAgdG8gMC4yLjEKIGM0NTE0MzRiOTYzZCBjYWtlOiBidW1wIHRvIDIwMTgwNTA0
IGJha2UKIDA4MGZiN2EzZmJiNiBpcHJvdXRlMjogaW1wb3J0IGxhdGVzdCBjYWtlCiBhZDVhZjM3
Y2E3OTMgaXByb3V0ZTI6IGJhY2twb3J0IGpzb25fcHJpbnQtZml4LWhpZGRlbi02NC1iaXQtdHlw
ZS1wcm9tb3Rpb24KIDc4ZjQzMDU5MzNiOSBpZnRvcDogYnVtcCB0byBsYXRlc3QKIDc3ODNmMzEz
NTljYiBiYXNlLWZpbGVzOiBuYW5kOiB1c2UgQ0lfS0VSTlBBUlQgd2hlbmV2ZXIgdGhlIGtlcm5l
bCB2b2x1bWUgaXMgbmVlZGVkCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0
cnVlLmN6PgotLS0KIHBhdGNod29yay1hcHBseS5zaCB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvcGF0Y2h3b3JrLWFwcGx5LnNoIGIvcGF0
Y2h3b3JrLWFwcGx5LnNoCmluZGV4IDU1MDZhZGJmZTQ1MS4uNTA2YTA5ZmQ0ZmQ1IDEwMDc1NQot
LS0gYS9wYXRjaHdvcmstYXBwbHkuc2gKKysrIGIvcGF0Y2h3b3JrLWFwcGx5LnNoCkBAIC0xNDAs
NiArMTQwLDEyIEBAIGVjaG8gIiQxIiB8IGdyZXAgLXNxRSAnXlswLTldKyQnIHx8IHsKIAl9CiB9
CiAKK2dyZXAgLS1jb2xvciAtLWNvbnRleHQ9MyAiRE1BUkMgUmVqZWN0L1F1YXJhbnRpbmUiICIk
MS5wYXRjaCIgJiYgeworCWlmIHllc25vICJCZXdhcmUgRE1BUkMgdGV4dCBkZXRlY3RlZCEgU2V0
IHRvICdDaGFuZ2VzIFJlcXVlc3RlZCc/IiAieSI7IHRoZW4KKwkJcHdjbGllbnQgdXBkYXRlIC1z
ICJDaGFuZ2VzIFJlcXVlc3RlZCIgIiQxIgorCWZpCit9CisKIGdpdCBhbSAiJDEucGF0Y2giIHx8
IHsKIAllY2hvICJGYWlsZWQgdG8gYXBwbHkgcGF0Y2ggJDEiID4mMgogCWdpdCBhbSAtLWFib3J0
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
