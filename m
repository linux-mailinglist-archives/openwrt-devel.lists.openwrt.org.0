Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C37F31C3AE7
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 15:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48xe8XIU6efkQUQfY0ovRHVdOyHN2EVwn5xaOnmKvPY=; b=Nt9SRO+cFhKd4s
	VPmXWB89UkDJ7291Bi7Tx42qm+98+qX+r+Qu7rO0tWjgg6Aol8j4Bp4Pm7kE6abotSIC763ro/9ZL
	eXBvkNF/mDDRL+wpRBdOO8u5VOaqEuDnxSPOXcjJtBJqpBahaAnPLT7Ju/iaEXbBwlbVKSR+1yCdY
	LuRP53zxbXloRzvvTn8Hd4so+CR88JEgO5f4SKerz/qE4nUfPcrHN/bjQRSg2D6kZg3n6lGprkhSR
	Fir5lz9k2OrvUEUvnsX67fNE54aDwuVNKZnAU7xxjh40azMY5bgmaNadlq5y66gbb0tVsGSW+G5lx
	mswCBnbbBfueUgE0rF1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVapU-0002XY-Ga; Mon, 04 May 2020 13:08:16 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVapM-0002X3-Bj
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 13:08:10 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 55C653C39;
 Mon,  4 May 2020 15:08:05 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 82aff052;
 Mon, 4 May 2020 15:07:51 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  4 May 2020 15:07:57 +0200
Message-Id: <20200504130757.12736-2-ynezz@true.cz>
In-Reply-To: <20200504130757.12736-1-ynezz@true.cz>
References: <20200504130757.12736-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_060808_549080_357622A6 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] hostapd: disable support for Wired
 Equivalent Privacy by default
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

VXBzdHJlYW0gaW4gY29tbWl0IDIwMGM3NjkzYzlhMSAoIk1ha2UgV0VQIGZ1bmN0aW9uYWxpdHkg
YW4gb3B0aW9uYWwKYnVpbGQgcGFyYW1ldGVyIikgaGFzIG1hZGUgV0VQIGZ1bmN0aW9uYWxpdHkg
YW4gb3B0aW9uYWwgYnVpbGQgcGFyYW1ldGVyCmRpc2FibGVkIGFzIGRlZmF1bHQsIGJlY2F1c2Ug
V0VQIHNob3VsZCBub3QgYmUgdXNlZCBmb3IgYW55dGhpbmcKYW55bW9yZS4gQXMgYSBzdGVwIHRv
d2FyZHMgcmVtb3ZpbmcgaXQgY29tcGxldGVseSwgdGhleSBtb3ZlZCBhbGwgV0VQCnJlbGF0ZWQg
ZnVuY3Rpb25hbGl0eSBiZWhpbmQgQ09ORklHX1dFUCBibG9ja3MgYW5kIGRpc2FibGVkIGl0IGJ5
CmRlZmF1bHQuCgpUaGlzIGZ1bmN0aW9uYWxpdHkgaXMgc3ViamVjdCB0byBiZSBjb21wbGV0ZWx5
IHJlbW92ZWQgaW4gYSBmdXR1cmUKcmVsZWFzZS4KClNvIGZvbGxvdyB0aGlzIGdvb2Qgc2VjdXJp
dHkgYWR2aWNlLCBkZXByZWNhdGlvbiBub3RpY2UgYW5kIGRpc2FibGUgV0VQCmJ5IGRlZmF1bHQs
IGJ1dCBzdGlsbCBhbGxvdyBjdXN0b20gYnVpbGRzIHdpdGggV0VQIHN1cHBvcnQgdmlhCkNPTkZJ
R19XUEFfRU5BQkxFX1dFUCBjb25maWcgb3B0aW9uIHRpbGwgdXBzdHJlYW0gcmVtb3ZlcyBzdXBw
b3J0IGZvcgpXRVAgY29tcGxldGVseS4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHlu
ZXp6QHRydWUuY3o+Ci0tLQogcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL2hvc3RhcGQvQ29uZmln
LmluIHwgOSArKysrKysrKysKIHBhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9ob3N0YXBkL01ha2Vm
aWxlICB8IDUgKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9ob3N0YXBkL0NvbmZpZy5pbiBiL3BhY2th
Z2UvbmV0d29yay9zZXJ2aWNlcy9ob3N0YXBkL0NvbmZpZy5pbgppbmRleCA5ZGZhNDRlMzEzMmQu
LjJjZGQxZWQ5NzAxYiAxMDA2NDQKLS0tIGEvcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL2hvc3Rh
cGQvQ29uZmlnLmluCisrKyBiL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9ob3N0YXBkL0NvbmZp
Zy5pbgpAQCAtNzMsMyArNzMsMTIgQEAgY29uZmlnIERSSVZFUl8xMUFDX1NVUFBPUlQKIGNvbmZp
ZyBEUklWRVJfMTFXX1NVUFBPUlQKIAlib29sCiAJZGVmYXVsdCBuCisKK2NvbmZpZyBXUEFfRU5B
QkxFX1dFUAorCWJvb2wgIkVuYWJsZSBzdXBwb3J0IGZvciB1bnNlY3VyZSBhbmQgb2Jzb2xldGUg
V0VQIgorCWhlbHAKKwkgIFdpcmVkIGVxdWl2YWxlbnQgcHJpdmFjeSAoV0VQKSBpcyBhbiBvYnNv
bGV0ZSBjcnlwdG9ncmFwaGljIGRhdGEKKwkgIGNvbmZpZGVudGlhbGl0eSBhbGdvcml0aG0gdGhh
dCBpcyBub3QgY29uc2lkZXJlZCBzZWN1cmUuIEl0IHNob3VsZCBub3QgYmUgdXNlZAorCSAgZm9y
IGFueXRoaW5nIGFueW1vcmUuIFRoZSBmdW5jdGlvbmFsaXR5IG5lZWRlZCB0byB1c2UgV0VQIGlz
IGF2YWlsYWJsZSBpbiB0aGUKKwkgIGN1cnJlbnQgaG9zdGFwZCByZWxlYXNlIHVuZGVyIHRoaXMg
b3B0aW9uYWwgYnVpbGQgcGFyYW1ldGVyIGFuZCBjb21wbGV0ZWx5CisJICByZW1vdmVkIGluIGEg
ZnV0dXJlIHJlbGVhc2UuCmRpZmYgLS1naXQgYS9wYWNrYWdlL25ldHdvcmsvc2VydmljZXMvaG9z
dGFwZC9NYWtlZmlsZSBiL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9ob3N0YXBkL01ha2VmaWxl
CmluZGV4IDA0Y2U3YTJiOWU3OS4uMDQyOWFmYmY5OGJmIDEwMDY0NAotLS0gYS9wYWNrYWdlL25l
dHdvcmsvc2VydmljZXMvaG9zdGFwZC9NYWtlZmlsZQorKysgYi9wYWNrYWdlL25ldHdvcmsvc2Vy
dmljZXMvaG9zdGFwZC9NYWtlZmlsZQpAQCAtMzIsNiArMzIsNyBAQCBQS0dfQ09ORklHX0RFUEVO
RFM6PSBcCiAJQ09ORklHX0RSSVZFUl9XRVhUX1NVUFBPUlQgXAogCUNPTkZJR19EUklWRVJfMTFO
X1NVUFBPUlQgXAogCUNPTkZJR19EUklWRVJfMTFBQ19TVVBQT1JUIFwKKwlDT05GSUdfV1BBX0VO
QUJMRV9XRVAKIAogRUFQT0xfVEVTVF9QUk9WSURFUlM6PWVhcG9sLXRlc3QgZWFwb2wtdGVzdC1v
cGVuc3NsIGVhcG9sLXRlc3Qtd29sZnNzbAogCkBAIC00NDUsNiArNDQ2LDEwIEBAIGlmZGVmIENP
TkZJR19QQUNLQUdFX2ttb2QtY2ZnODAyMTEKICAgVEFSR0VUX0xERkxBR1MgKz0gLWxtIC1sbmwt
dGlueQogZW5kaWYKIAoraWZkZWYgQ09ORklHX1dQQV9FTkFCTEVfV0VQCisgICAgRFJJVkVSX01B
S0VPUFRTICs9IENPTkZJR19XRVA9eQorZW5kaWYKKwogZGVmaW5lIEJ1aWxkL1J1bk1ha2UKIAlD
RkxBR1M9IiQoVEFSR0VUX0NQUEZMQUdTKSAkKFRBUkdFVF9DRkxBR1MpIiBcCiAJJChNQUtFKSAk
KFBLR19KT0JTKSAtQyAkKFBLR19CVUlMRF9ESVIpLyQoMSkgXAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
