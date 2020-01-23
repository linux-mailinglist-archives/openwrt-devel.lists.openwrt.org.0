Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB13114693D
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 14:37:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9NZPvDN9IbjwZb8KqtZLA7CqicDmopDYR1NK3ZEOgV4=; b=umQovOhU/ZRv3y
	7iYzftJb4y0swIRfQKe+BTM2CIHly51tc8UQ6KdSM9RJXm5IOR0HguDGg5FS1f6n0Rbv517zXIGqk
	NNPTZNp9Bc9N6GFODP7/yOFKJYOApmKZTZkDAnGJ3oKw4hH4R36Lj/B3K8vfirT2nycs+Ep7z0EsS
	XK7Q1YPo+ig3f52U4K7j+aKrX/NYIAIPRY3RGgqJ5YExWCdXAOZTdJl/1DL/lkFwDw9Ql/TbbPWEK
	CwC6Tq5kNc72HYG5TaWSc9+5iWf20jUTDBSSOQUxPf0IPyKIM28pBBtoQL4O+yg2trU5IV6++8cFg
	WlBh8N7JPnHitCkPQS4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucfY-0003PQ-Ia; Thu, 23 Jan 2020 13:37:12 +0000
Received: from max.feld.cvut.cz ([147.32.192.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucfP-0003P8-Ll
 for openwrt-devel@lists.openwrt.org; Thu, 23 Jan 2020 13:37:05 +0000
Received: from localhost (unknown [192.168.200.7])
 by max.feld.cvut.cz (Postfix) with ESMTP id B087019F44B5;
 Thu, 23 Jan 2020 14:37:01 +0100 (CET)
X-Virus-Scanned: IMAP STYX AMAVIS
Received: from max.feld.cvut.cz ([192.168.200.1])
 by localhost (styx.feld.cvut.cz [192.168.200.7]) (amavisd-new, port 10044)
 with ESMTP id azcGekIvRoH0; Thu, 23 Jan 2020 14:36:59 +0100 (CET)
Received: from localhost.localdomain (labsitronics.feld.cvut.cz
 [147.32.211.25])
 by max.feld.cvut.cz (Postfix) with ESMTP id 45FB419F44BC;
 Thu, 23 Jan 2020 14:36:59 +0100 (CET)
From: ondrej.votava@cvut.cz
To: openwrt-devel@lists.openwrt.org
Date: Thu, 23 Jan 2020 14:36:50 +0100
Message-Id: <20200123133650.23139-1-ondrej.votava@cvut.cz>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
In-Reply-To: <20200123131527.23003-1-ondrej.votava@cvut.cz>
References: <20200123131527.23003-1-ondrej.votava@cvut.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_053703_865281_3EAFCEEF 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.32.192.36 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [147.32.192.36 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH 2/2] procd: show process's exit code
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
Cc: =?UTF-8?q?Ond=C5=99ej=20Votava?= <ondrej.votava@cvut.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogT25kxZllaiBWb3RhdmEgPG9uZHJlai52b3RhdmFAY3Z1dC5jej4KCkFkZHMgZmVhdHVy
ZSB0byBzaG93IGV4aXQgY29kZSBvZiBwcm9jZXNzZXMgbGF1bmNoZWQgYnkgcHJvY2QuClRoZSBl
eGl0IGNvZGUgaXMgc2hvd24gZm9yIGZpbmlzaGVkIHByb2Nlc3Mgd2hlbiB1YnVzJ3MKc2Vydmlj
ZSBsaXN0IG1ldGhvZCBpcyBjYWxsZWQuCgpUaGUgZXhpdCBjb2RlIHZhbHVlIGlzIGNvbXB1dGVk
IGFjY29yZGluZyB0byB3YWl0cGlkKDIpCmFuZCBodHRwOi8vdGxkcC5vcmcvTERQL2Ficy9odG1s
L2V4aXRjb2Rlcy5odG1sCgpTaWduZWQtb2ZmLWJ5OiBPbmTFmWVqIFZvdGF2YSA8b25kcmVqLnZv
dGF2YUBjdnV0LmN6PgotLS0KIHNlcnZpY2UvaW5zdGFuY2UuYyB8IDcgKysrLS0tLQogc2Vydmlj
ZS9pbnN0YW5jZS5oIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2aWNlL2luc3RhbmNlLmMgYi9zZXJ2aWNlL2lu
c3RhbmNlLmMKaW5kZXggMTNlN2QwYS4uMzQyODg4YSAxMDA2NDQKLS0tIGEvc2VydmljZS9pbnN0
YW5jZS5jCisrKyBiL3NlcnZpY2UvaW5zdGFuY2UuYwpAQCAtNTYzLDExICs1NjMsMTAgQEAgaW5z
dGFuY2VfZGVsZXRlKHN0cnVjdCBzZXJ2aWNlX2luc3RhbmNlICppbikKIHN0YXRpYyBpbnQKIGlu
c3RhbmNlX2V4aXRfY29kZShpbnQgcmV0KQogewotCWlmKFdJRkVYSVRFRChyZXQpKSB7CisJaWYg
KFdJRkVYSVRFRChyZXQpKSB7CiAJCXJldHVybiBXRVhJVFNUQVRVUyhyZXQpOwotCX0KLQllbHNl
IGlmIChXSUZTSUdOQUxFRChyZXQpKSB7Ci0JCXJldHVybiAxMjggKyBXVEVSTVNJRyhyZXQpOwor
CX0gZWxzZSBpZiAoV0lGU0lHTkFMRUQocmV0KSkgeworCQlyZXR1cm4gU0lHTkFMTEVEX09GRlNF
VCArIFdURVJNU0lHKHJldCk7CiAJfQogCXJldHVybiAxOwogfQpkaWZmIC0tZ2l0IGEvc2Vydmlj
ZS9pbnN0YW5jZS5oIGIvc2VydmljZS9pbnN0YW5jZS5oCmluZGV4IDA1YTJmYzMuLmQ3YjQzMTkg
MTAwNjQ0Ci0tLSBhL3NlcnZpY2UvaW5zdGFuY2UuaAorKysgYi9zZXJ2aWNlL2luc3RhbmNlLmgK
QEAgLTIxLDYgKzIxLDcgQEAKICNpbmNsdWRlICIuLi91dGlscy91dGlscy5oIgogCiAjZGVmaW5l
IFJFU1BBV05fRVJST1IJKDUgKiA2MCkKKyNkZWZpbmUgU0lHTkFMTEVEX09GRlNFVCAxMjgKIAog
c3RydWN0IGphaWwgewogCWJvb2wgcHJvY2ZzOwotLSAKMi4yMS4wIChBcHBsZSBHaXQtMTIyLjIp
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
