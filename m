Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D53D723CF6
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 May 2019 18:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdvJ9hqOVFG24bN15WGJNexbjao9e8gHu+Tm4vxJx7I=; b=UVuwdLos3uhz5a
	WhoCxH63F6S+REJWAxCuxDYaTdW3VpvC7gzwH2asH9uZ/fjcxurPRmtK4/EFiGiNQHqf4bjH34W49
	Z3UUROr9zCQSghoBFldjwBqt77tnPt48gmSiI4iiyeZqieDd7qrcAJIw/LVvwPIXwL2p0YoRMGUs7
	d8TFm5kbHoV0buO8x4z6kJdIUAQJRiTN/AlqTgyF/5PrR35JNPBJdUAXIJlpuwjfMmwHyijQ62anK
	VkHn4D3xKu2+yMZwRF3aEgHosLq3Ghf5YDeq3DOD+/QNIukidEips+U73UOqCw9OVU+9188nb4q0S
	NvRuwKlTyOZfXIoXZakg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkvQ-0004Ge-37; Mon, 20 May 2019 16:14:08 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkv7-00048q-Vz
 for openwrt-devel@lists.openwrt.org; Mon, 20 May 2019 16:13:52 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3D1514B2F;
 Mon, 20 May 2019 18:13:45 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id d69730e2;
 Mon, 20 May 2019 18:13:44 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 May 2019 18:13:21 +0200
Message-Id: <1558368805-19484-2-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558368805-19484-1-git-send-email-ynezz@true.cz>
References: <1558368805-19484-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_091350_336018_9D84EE38 
X-CRM114-Status: UNSURE (   9.03  )
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
Subject: [OpenWrt-Devel] [PATCH RFC 1/5] urng: add micro non-physical true
 RNG based on timing jitter
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

zrxybmdkIGlzIE9wZW5XcnQncyBtaWNybyBub24tcGh5c2ljYWwgdHJ1ZSByYW5kb20gbnVtYmVy
IGdlbmVyYXRvciBiYXNlZApvbiB0aW1pbmcgaml0dGVyLgoKVXNpbmcgdGhlIEppdHRlciBSTkcg
Y29yZSwgdGhlIHJuZ2QgcHJvdmlkZXMgYW4gZW50cm9weSBzb3VyY2UgdGhhdApmZWVkcyBpbnRv
IHRoZSBMaW51eCAvZGV2L3JhbmRvbSBkZXZpY2UgaWYgaXRzIGVudHJvcHkgcnVucyBsb3cuIEl0
CnVwZGF0ZXMgdGhlIC9kZXYvcmFuZG9tIGVudHJvcHkgZXN0aW1hdG9yIHN1Y2ggdGhhdCB0aGUg
bmV3bHkgcHJvdmlkZWQKZW50cm9weSB1bmJsb2NrcyAvZGV2L3JhbmRvbS4KClRoZSBzZWVkaW5n
IG9mIC9kZXYvcmFuZG9tIGFsc28gZW5zdXJlcyB0aGF0IC9kZXYvdXJhbmRvbSBiZW5lZml0cyBm
cm9tCmVudHJvcHkuIEVzcGVjaWFsbHkgZHVyaW5nIGJvb3QgdGltZSwgd2hlbiB0aGUgZW50cm9w
eSBvZiBMaW51eCBpcyBsb3csCnRoZSBKaXR0ZXIgUk5HZCBwcm92aWRlcyBhIHNvdXJjZSBvZiBz
dWZmaWNpZW50IGVudHJvcHkuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0
cnVlLmN6PgotLS0KIHBhY2thZ2Uvc3lzdGVtL3VybmdkL01ha2VmaWxlICAgICAgICAgfCA0OCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogcGFja2FnZS9zeXN0ZW0vdXJuZ2Qv
ZmlsZXMvdXJuZ2QuaW5pdCB8IDIxICsrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA2
OSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgcGFja2FnZS9zeXN0ZW0vdXJuZ2Qv
TWFrZWZpbGUKIGNyZWF0ZSBtb2RlIDEwMDc1NSBwYWNrYWdlL3N5c3RlbS91cm5nZC9maWxlcy91
cm5nZC5pbml0CgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9zeXN0ZW0vdXJuZ2QvTWFrZWZpbGUgYi9w
YWNrYWdlL3N5c3RlbS91cm5nZC9NYWtlZmlsZQpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAw
MDAwMDAwMDAwMDAuLjk1NjQ3NDg3Y2JiZgotLS0gL2Rldi9udWxsCisrKyBiL3BhY2thZ2Uvc3lz
dGVtL3VybmdkL01ha2VmaWxlCkBAIC0wLDAgKzEsNDggQEAKK2luY2x1ZGUgJChUT1BESVIpL3J1
bGVzLm1rCisKK1BLR19OQU1FOj11cm5nZAorUEtHX1JFTEVBU0U6PTEKKworUEtHX1NPVVJDRV9Q
Uk9UTzo9Z2l0CitQS0dfU09VUkNFX1VSTD1odHRwczovL2dpdGh1Yi5jb20veW5lenovb3Blbndy
dC11cm5nZAorUEtHX1NPVVJDRV9EQVRFOj0yMDE5LTA1LTIwCitQS0dfU09VUkNFX1ZFUlNJT046
PTcxNDZmMGMzM2M0ZjY4ODgzZTYwMTY5MDY2YTRhODYzYWUzODhmYzUKK1BLR19NSVJST1JfSEFT
SDo9ODM5YjFiMjMxNjNiYzkwNzYyNWVkNmM2MTIyZmFlYzk0MDRjYjcyZDg1ODdlY2U3OTZhOWNl
YzE0MjJiNjA3NworCitQS0dfTElDRU5TRTo9R1BMLTIuMCBCU0QtMy1DbGF1c2UKK1BLR19MSUNF
TlNFX0ZJTEVTOj0KKworUEtHX0JVSUxEX1BBUkFMTEVMOj0xCisKK2luY2x1ZGUgJChJTkNMVURF
X0RJUikvcGFja2FnZS5taworaW5jbHVkZSAkKElOQ0xVREVfRElSKS9jbWFrZS5taworCitkZWZp
bmUgUGFja2FnZS8kKFBLR19OQU1FKQorICBTRUNUSU9OOj11dGlscworICBDQVRFR09SWTo9QmFz
ZSBzeXN0ZW0KKyAgVElUTEU6PU9wZW5XcnQgbm9uLXBoeXNpY2FsIHRydWUgcmFuZG9tIG51bWJl
ciBnZW5lcmF0b3IgYmFzZWQgb24gdGltaW5nIGppdHRlcgorICBERVBFTkRTOj0rbGlidWJveAor
ZW5kZWYKKworZGVmaW5lIFBhY2thZ2UvJChQS0dfTkFNRSkvZGVzY3JpcHRpb24KKyAgzrxybmdk
IGlzIE9wZW5XcnQncyBtaWNybyBub24tcGh5c2ljYWwgdHJ1ZSByYW5kb20gbnVtYmVyIGdlbmVy
YXRvciBiYXNlZCBvbgorICB0aW1pbmcgaml0dGVyLgorCisgIFVzaW5nIHRoZSBKaXR0ZXIgUk5H
IGNvcmUsIHRoZSBybmdkIHByb3ZpZGVzIGFuIGVudHJvcHkgc291cmNlIHRoYXQgZmVlZHMgaW50
bworICB0aGUgTGludXggL2Rldi9yYW5kb20gZGV2aWNlIGlmIGl0cyBlbnRyb3B5IHJ1bnMgbG93
LiBJdCB1cGRhdGVzIHRoZQorICAvZGV2L3JhbmRvbSBlbnRyb3B5IGVzdGltYXRvciBzdWNoIHRo
YXQgdGhlIG5ld2x5IHByb3ZpZGVkIGVudHJvcHkgdW5ibG9ja3MKKyAgL2Rldi9yYW5kb20uCisK
KyAgVGhlIHNlZWRpbmcgb2YgL2Rldi9yYW5kb20gYWxzbyBlbnN1cmVzIHRoYXQgL2Rldi91cmFu
ZG9tIGJlbmVmaXRzIGZyb20KKyAgZW50cm9weS4gRXNwZWNpYWxseSBkdXJpbmcgYm9vdCB0aW1l
LCB3aGVuIHRoZSBlbnRyb3B5IG9mIExpbnV4IGlzIGxvdywgdGhlCisgIEppdHRlciBSTkdkIHBy
b3ZpZGVzIGEgc291cmNlIG9mIHN1ZmZpY2llbnQgZW50cm9weS4KK2VuZGVmCisKK2RlZmluZSBQ
YWNrYWdlLyQoUEtHX05BTUUpL2luc3RhbGwKKwkkKElOU1RBTExfRElSKSAkKDEpL2V0Yy9pbml0
LmQKKwkkKElOU1RBTExfQklOKSAuL2ZpbGVzLyQoUEtHX05BTUUpLmluaXQgJCgxKS9ldGMvaW5p
dC5kLyQoUEtHX05BTUUpCisJJChJTlNUQUxMX0RJUikgJCgxKS9zYmluCisJJChJTlNUQUxMX0JJ
TikgJChQS0dfQlVJTERfRElSKS8kKFBLR19OQU1FKSAkKDEpL3NiaW4vJChQS0dfTkFNRSkKK2Vu
ZGVmCisKKyQoZXZhbCAkKGNhbGwgQnVpbGRQYWNrYWdlLCQoUEtHX05BTUUpKSkKZGlmZiAtLWdp
dCBhL3BhY2thZ2Uvc3lzdGVtL3VybmdkL2ZpbGVzL3VybmdkLmluaXQgYi9wYWNrYWdlL3N5c3Rl
bS91cm5nZC9maWxlcy91cm5nZC5pbml0Cm5ldyBmaWxlIG1vZGUgMTAwNzU1CmluZGV4IDAwMDAw
MDAwMDAwMC4uYWIxZDVjZjlkNDZhCi0tLSAvZGV2L251bGwKKysrIGIvcGFja2FnZS9zeXN0ZW0v
dXJuZ2QvZmlsZXMvdXJuZ2QuaW5pdApAQCAtMCwwICsxLDIxIEBACisjIS9iaW4vc2ggL2V0Yy9y
Yy5jb21tb24KKworU1RBUlQ9MDAKKworVVNFX1BST0NEPTEKK05BTUU9dXJuZ2QKK1BST0c9L3Ni
aW4vdXJuZ2QKKworc3RhcnRfc2VydmljZSgpIHsKKwlwcm9jZF9vcGVuX2luc3RhbmNlCisJcHJv
Y2Rfc2V0X3BhcmFtIGNvbW1hbmQgIiRQUk9HIgorCXByb2NkX2Nsb3NlX2luc3RhbmNlCit9CisK
K3N0b3AoKSB7CisJc2VydmljZV9zdG9wICRQUk9HCit9CisKK3JlbG9hZCgpIHsKKwlzZXJ2aWNl
X3JlbG9hZCAkUFJPRworfQotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
