Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EA72BBC1
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 23:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDchkV9fGK1XnJWTR3moV1F4Hky1zXi9LcPL48+gcAI=; b=jcYKs86eP5gIJ2
	ukW0fakUGF6m/k/MCNY3l3sl9e4hbL/S/lolNykNatzisOqS4yCh8yzBLdCt0+jKn6gBgZipQW4o9
	agMl2IEkXhecKKLZ0ygrrw0vquvihy4n4h6Pg7Sr3c9rHRvJ+mKGNJXCI9tWzfxihdSaAgFoa3TFL
	/Bf4DOGJvV4S03Q2TPGqMN0HVlbuVYC3I6TK3kVCrf1HiFS86kuZmT45Lqk1QA1Aqo4Tqqwgmsd8n
	xv3Vknc0OBTaWFIzo3ZVplC7DDUw2SlUPisZbHO97cTdBwWC1QSP/fxCYdmBpOOPhboT6TXqCeMNH
	GHAIf5Na2a4NHx5uRqBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVNCR-0007rQ-Q0; Mon, 27 May 2019 21:30:31 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVNBv-0006BM-FT
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 21:30:02 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A5A1A4FA7;
 Mon, 27 May 2019 23:29:56 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 9161dbbc;
 Mon, 27 May 2019 23:29:55 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 27 May 2019 23:29:41 +0200
Message-Id: <1558992584-11997-2-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558992584-11997-1-git-send-email-ynezz@true.cz>
References: <1558992584-11997-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_142959_824345_E47CFE6B 
X-CRM114-Status: UNSURE (   9.16  )
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
Subject: [OpenWrt-Devel] [PATCH 1/4] urng: add micro non-physical true RNG
 based on timing jitter
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
Cc: =?UTF-8?q?Stephan=20M=C3=BCller?= <smueller@chronox.de>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
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
TWFrZWZpbGUKIGNyZWF0ZSBtb2RlIDEwMDY0NCBwYWNrYWdlL3N5c3RlbS91cm5nZC9maWxlcy91
cm5nZC5pbml0CgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9zeXN0ZW0vdXJuZ2QvTWFrZWZpbGUgYi9w
YWNrYWdlL3N5c3RlbS91cm5nZC9NYWtlZmlsZQpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAw
MDAwMDAwMDAwMDAuLmU1N2E1ZDYwZjc0OAotLS0gL2Rldi9udWxsCisrKyBiL3BhY2thZ2Uvc3lz
dGVtL3VybmdkL01ha2VmaWxlCkBAIC0wLDAgKzEsNDggQEAKK2luY2x1ZGUgJChUT1BESVIpL3J1
bGVzLm1rCisKK1BLR19OQU1FOj11cm5nZAorUEtHX1JFTEVBU0U6PTEKKworUEtHX1NPVVJDRV9Q
Uk9UTzo9Z2l0CitQS0dfU09VUkNFX1VSTD1odHRwczovL2dpdGh1Yi5jb20veW5lenovb3Blbndy
dC11cm5nZAorUEtHX1NPVVJDRV9EQVRFOj0yMDE5LTA1LTI3CitQS0dfU09VUkNFX1ZFUlNJT046
PTQxZTQxNjNiMmU3ZjRjMWMxZjUxY2RmYTQ4N2Q2MDUyZmY4NTljZjIKK1BLR19NSVJST1JfSEFT
SDo9ODM5YjFiMjMxNjNiYzkwNzYyNWVkNmM2MTIyZmFlYzk0MDRjYjcyZDg1ODdlY2U3OTZhOWNl
YzE0MjJiNjA3NworCitQS0dfTElDRU5TRTo9R1BMLTIuMCBCU0QtMy1DbGF1c2UKK1BLR19MSUNF
TlNFX0ZJTEVTOj0KKworUEtHX0JVSUxEX1BBUkFMTEVMOj0xCisKK2luY2x1ZGUgJChJTkNMVURF
X0RJUikvcGFja2FnZS5taworaW5jbHVkZSAkKElOQ0xVREVfRElSKS9jbWFrZS5taworCitkZWZp
bmUgUGFja2FnZS8kKFBLR19OQU1FKQorICBTRUNUSU9OOj11dGlscworICBDQVRFR09SWTo9QmFz
ZSBzeXN0ZW0KKyAgVElUTEU6PU9wZW5XcnQgbm9uLXBoeXNpY2FsIHRydWUgcmFuZG9tIG51bWJl
ciBnZW5lcmF0b3IgYmFzZWQgb24gdGltaW5nIGppdHRlcgorICBERVBFTkRTOj0rbGlidWJveAor
ZW5kZWYKKworZGVmaW5lIFBhY2thZ2UvJChQS0dfTkFNRSkvZGVzY3JpcHRpb24KKyAgdXJuZ2Qg
aXMgT3BlbldydCdzIG1pY3JvIG5vbi1waHlzaWNhbCB0cnVlIHJhbmRvbSBudW1iZXIgZ2VuZXJh
dG9yIGJhc2VkIG9uCisgIHRpbWluZyBqaXR0ZXIuCisKKyAgVXNpbmcgdGhlIEppdHRlciBSTkcg
Y29yZSwgdGhlIHJuZ2QgcHJvdmlkZXMgYW4gZW50cm9weSBzb3VyY2UgdGhhdCBmZWVkcyBpbnRv
CisgIHRoZSBMaW51eCAvZGV2L3JhbmRvbSBkZXZpY2UgaWYgaXRzIGVudHJvcHkgcnVucyBsb3cu
IEl0IHVwZGF0ZXMgdGhlCisgIC9kZXYvcmFuZG9tIGVudHJvcHkgZXN0aW1hdG9yIHN1Y2ggdGhh
dCB0aGUgbmV3bHkgcHJvdmlkZWQgZW50cm9weSB1bmJsb2NrcworICAvZGV2L3JhbmRvbS4KKwor
ICBUaGUgc2VlZGluZyBvZiAvZGV2L3JhbmRvbSBhbHNvIGVuc3VyZXMgdGhhdCAvZGV2L3VyYW5k
b20gYmVuZWZpdHMgZnJvbQorICBlbnRyb3B5LiBFc3BlY2lhbGx5IGR1cmluZyBib290IHRpbWUs
IHdoZW4gdGhlIGVudHJvcHkgb2YgTGludXggaXMgbG93LCB0aGUKKyAgSml0dGVyIFJOR2QgcHJv
dmlkZXMgYSBzb3VyY2Ugb2Ygc3VmZmljaWVudCBlbnRyb3B5LgorZW5kZWYKKworZGVmaW5lIFBh
Y2thZ2UvJChQS0dfTkFNRSkvaW5zdGFsbAorCSQoSU5TVEFMTF9ESVIpICQoMSkvZXRjL2luaXQu
ZAorCSQoSU5TVEFMTF9CSU4pIC4vZmlsZXMvJChQS0dfTkFNRSkuaW5pdCAkKDEpL2V0Yy9pbml0
LmQvJChQS0dfTkFNRSkKKwkkKElOU1RBTExfRElSKSAkKDEpL3NiaW4KKwkkKElOU1RBTExfQklO
KSAkKFBLR19CVUlMRF9ESVIpLyQoUEtHX05BTUUpICQoMSkvc2Jpbi8kKFBLR19OQU1FKQorZW5k
ZWYKKworJChldmFsICQoY2FsbCBCdWlsZFBhY2thZ2UsJChQS0dfTkFNRSkpKQpkaWZmIC0tZ2l0
IGEvcGFja2FnZS9zeXN0ZW0vdXJuZ2QvZmlsZXMvdXJuZ2QuaW5pdCBiL3BhY2thZ2Uvc3lzdGVt
L3VybmdkL2ZpbGVzL3VybmdkLmluaXQKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAw
MDAwMDAwLi5hYjFkNWNmOWQ0NmEKLS0tIC9kZXYvbnVsbAorKysgYi9wYWNrYWdlL3N5c3RlbS91
cm5nZC9maWxlcy91cm5nZC5pbml0CkBAIC0wLDAgKzEsMjEgQEAKKyMhL2Jpbi9zaCAvZXRjL3Jj
LmNvbW1vbgorCitTVEFSVD0wMAorCitVU0VfUFJPQ0Q9MQorTkFNRT11cm5nZAorUFJPRz0vc2Jp
bi91cm5nZAorCitzdGFydF9zZXJ2aWNlKCkgeworCXByb2NkX29wZW5faW5zdGFuY2UKKwlwcm9j
ZF9zZXRfcGFyYW0gY29tbWFuZCAiJFBST0ciCisJcHJvY2RfY2xvc2VfaW5zdGFuY2UKK30KKwor
c3RvcCgpIHsKKwlzZXJ2aWNlX3N0b3AgJFBST0cKK30KKworcmVsb2FkKCkgeworCXNlcnZpY2Vf
cmVsb2FkICRQUk9HCit9Ci0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
