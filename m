Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD2DF680C
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 Nov 2019 10:05:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qt+iibQF96aNfwF8fe3rHznzs6eHzxZjtJ5HreD3xBU=; b=O3hn0E/twliHCm
	zjb7yneXt4hhuQwvH4T6lGjyWrDDUol9Unbg1+3l5TEuYUTFFLs9LN5o2cs66XhzjRCi6T95Ot4Bi
	7QECFV9hxWeANE5rRWFZLi0Osdi3L27KYo++vnexOXsfU2bqaDFnre248rpwgbaN+y3Xv1NvgT3Gp
	WmjK5Wq5GHIbHis0E53r7F2uCL5oSMkB9IGbgKqBElxxLVGzlkOW+k1WGF83ZfqZUoenKW0WF9nhK
	z7S2vQ7EB+/CAitBdy9V5F6nZECW5ClL+ua+vnPYk6KNDDMOKgvvcZ/jHyiYgPFwfP/040znKHMm0
	Fbv2VCqyVx/dCpThxfNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTj9l-0005pM-5f; Sun, 10 Nov 2019 09:05:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTj9U-0005oo-Sq
 for openwrt-devel@lists.openwrt.org; Sun, 10 Nov 2019 09:04:58 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7D8D255A9;
 Sun, 10 Nov 2019 10:04:55 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 088e0631;
 Sun, 10 Nov 2019 10:04:45 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 10 Nov 2019 10:04:47 +0100
Message-Id: <20191110090447.16563-1-ynezz@true.cz>
In-Reply-To: <CAOiHx=kDmjTAqgMW1W58-RUStCHvnHOwgM3s92Ooee3CZGSZGg@mail.gmail.com>
References: <CAOiHx=kDmjTAqgMW1W58-RUStCHvnHOwgM3s92Ooee3CZGSZGg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_010457_083243_80FEE7EE 
X-CRM114-Status: UNSURE (   7.56  )
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
Subject: [OpenWrt-Devel] [PATCH v2 maintainer-tools] patchwork-apply.sh: try
 to fix DMARC mangled patches
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

SW4gb3JkZXIgdG8gYXZvaWQgRE1BUkMgcGxhZ3VlIGluIHRoZSBjb21taXQgbWVzc2FnZXM6Cgog
ODdmOTI5MjMwMGNmIGhvc3RhcGQ6IGFkZCBJRUVFIDgwMi4xMWsgc3VwcG9ydAogNDUwZDQ0YThl
YWQyIG9wZW5zc2w6IGNoYW5nZSBkZWZhdWx0czogRU5HSU5FOm9uLCBOUE46b2ZmLCBtaXNjCiBl
YWJjMWRkYzQ1NDEgYnVpbGQ6IEhvbm91ciBOT19DT0xPUiBpbiBpbmNsdWRlL3NjYW4ubWsKIDNm
YjQ1NTc2YWMxNiBjcnlwdG9kZXYtbGludXg6IG1vdmUgZnJvbSBwYWNrYWdlcyBmZWVkCiBhNzMy
ODNkYzEwZjcga2VybmVsOiBuZi1uYXRoZWxwZXItZXh0cmEgZGVwZW5kcyBvbiBpcHQtcmF3CiAw
MzE3ZmMzNjU4ZWIgbGlicGNhcDogcGF0Y2ggdG8gYWRkIGxpbWl0cy5oIHRvIHBjYXAtdXNiLWxp
bnV4LmMKIDI2ZGJmNzlmNDkwNSBsaWJldmVudDI6IERvbid0IGJ1aWxkIHRlc3RzIGFuZCBzYW1w
bGVzCiBkNTkxMjYwNDA3MDEgYnJjbTYzeHg6IGluaXRpYWwgc3VwcG9ydCBmb3IgU2t5IFNSMTAy
IHJvdXRlcgogMDk0ZDQ5Y2RkZjkzIGtlcm5lbDogYnVtcCA0LjE0IHRvIDQuMTQuNTEKIDI0NzA1
NWNiZmJmMSBpZ21wcHJveHk6IGJ1bXAgdG8gMC4yLjEKIGM0NTE0MzRiOTYzZCBjYWtlOiBidW1w
IHRvIDIwMTgwNTA0IGJha2UKIDA4MGZiN2EzZmJiNiBpcHJvdXRlMjogaW1wb3J0IGxhdGVzdCBj
YWtlCiBhZDVhZjM3Y2E3OTMgaXByb3V0ZTI6IGJhY2twb3J0IGpzb25fcHJpbnQtZml4LWhpZGRl
bi02NC1iaXQtdHlwZS1wcm9tb3Rpb24KIDc4ZjQzMDU5MzNiOSBpZnRvcDogYnVtcCB0byBsYXRl
c3QKIDc3ODNmMzEzNTljYiBiYXNlLWZpbGVzOiBuYW5kOiB1c2UgQ0lfS0VSTlBBUlQgd2hlbmV2
ZXIgdGhlIGtlcm5lbCB2b2x1bWUgaXMgbmVlZGVkCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0
aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHBhdGNod29yay1hcHBseS5zaCB8IDcgKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3BhdGNod29yay1h
cHBseS5zaCBiL3BhdGNod29yay1hcHBseS5zaAppbmRleCA1NTA2YWRiZmU0NTEuLjE1NDNjN2Zk
YWNlYiAxMDA3NTUKLS0tIGEvcGF0Y2h3b3JrLWFwcGx5LnNoCisrKyBiL3BhdGNod29yay1hcHBs
eS5zaApAQCAtMTQwLDYgKzE0MCwxMyBAQCBlY2hvICIkMSIgfCBncmVwIC1zcUUgJ15bMC05XSsk
JyB8fCB7CiAJfQogfQogCitncmVwIC0tY29sb3IgLS1jb250ZXh0PTMgIkRNQVJDIFJlamVjdC9R
dWFyYW50aW5lIiAiJDEucGF0Y2giICYmIHsKKwlpZiAhIHllc25vICJETUFSQyBtYW5sZWQgcGF0
Y2ggZGV0ZWN0ZWQsIGF0dGVtcHQgdG8gZml4IGl0PyIgInkiOyB0aGVuCisJCWV4aXQgNAorCWZp
CisJc2VkIC1pICcvVGhlIHNlbmRlciBkb21haW4gaGFzIGEgRE1BUkMvLC9hdXRvbWF0aWNhbGx5
IGJ5IHRoZSBtYWlsaW5nIGxpc3Qgc29mdHdhcmUuL2QnICIkMS5wYXRjaCIKK30KKwogZ2l0IGFt
ICIkMS5wYXRjaCIgfHwgewogCWVjaG8gIkZhaWxlZCB0byBhcHBseSBwYXRjaCAkMSIgPiYyCiAJ
Z2l0IGFtIC0tYWJvcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
