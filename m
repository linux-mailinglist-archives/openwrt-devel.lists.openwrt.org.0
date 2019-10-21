Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEACDE83C
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 11:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AO3wADK1n4sP2Zx86i8LsasYC2k9+NUNTRTmqYGsv+A=; b=a+PZu9W7seUm7k
	Nf5aiFvURnbbZaJCeykrd1BtJ4oQS2zMCT8tv6A+cGc7/zaf4d6bxh4ArOvT7cxQZReRJfGTzZREc
	xuJNCC5ku17rvbRYwPy+swnp7sp4HzPr1GJrj6qPrbMjNpe+Eu35AYEOlMXxtIT0noPOzVAFmOcPU
	Yr/HRhFikc6mtAxXty6WU3BkIU25OHCI8MJxMuMq/b1cUJ8I/pI7R97eIT9OAQV88c9at7RKIXWZd
	dOYRNAhCYMcLDDdRO9krOCKHNzWpN5Kbx852GIHzajUqjfueEPUQYGbeT+++ZPMJh+9MxCkde6G7p
	vZpPPh1H+t5381avjQIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMU81-0006Py-8f; Mon, 21 Oct 2019 09:37:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMU7O-0005tQ-Qi
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 09:36:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 94BFD35DE;
 Mon, 21 Oct 2019 11:36:46 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id b3579eee;
 Mon, 21 Oct 2019 11:36:36 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 11:36:42 +0200
Message-Id: <20191021093642.3118-5-ynezz@true.cz>
In-Reply-To: <20191021093642.3118-1-ynezz@true.cz>
References: <20191021093642.3118-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_023651_056873_23CC73F2 
X-CRM114-Status: UNSURE (   7.86  )
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
Subject: [OpenWrt-Devel] [PATCH libnl-tiny 5/5] add initial GitLab CI support
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

VXNlcyBjdXJyZW50bHkgcHJvb2Ytb2YtY29uY2VwdCBvcGVud3J0LWNpWzFdIGluIG9yZGVyIHRv
OgoKICogaW1wcm92ZSB0aGUgcXVhbGl0eSBvZiB0aGUgY29kZWJhc2UgaW4gdmFyaW91cyBhcmVh
cwogKiBkZWNyZWFzZSBjb2RlIHJldmlldyB0aW1lIGFuZCBoZWxwIG1lcmdpbmcgY29udHJpYnV0
aW9ucyBmYXN0ZXIKICogZ2V0IGF1dG9tYWdpYyBmZWVkYmFjayBsb29wIG9uIHZhcmlvdXMgcGxh
dGZvcm1zIGFuZCB0b29scwogICAtIG91dCBvZiB0cmVlIGJ1aWxkIHdpdGggT3BlbldydCBTREsg
b24gZm9sbG93aW5nIHRhcmdldHM6CiAgICAgKiBhdGg3OS1nZW5lcmljCiAgICAgKiBpbXg2LWdl
bmVyaWMKICAgICAqIG1hbHRhLWJlCiAgICAgKiBtdmVidS1jb3J0ZXhhNTMKICAgLSBvdXQgb2Yg
dHJlZSBuYXRpdmUgYnVpbGQgb24geDg2LzY0IHdpdGggR0NDICh2ZXJzaW9ucyA3LCA4LCA5KSBh
bmQgQ2xhbmcgOQogICAtIG91dCBvZiB0cmVlIG5hdGl2ZSB4ODYvNjQgc3RhdGljIGNvZGUgYW5h
bHlzaXMgd2l0aCBjcHBjaGVjayBhbmQKICAgICBzY2FuLWJ1aWxkIGZyb20gQ2xhbmcgOQoKMS4g
aHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29wZW53cnQtY2kvCgpTaWduZWQtb2ZmLWJ5OiBQZXRy
IMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIC5naXRsYWItY2kueW1sIHwgMyArKysKIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCAuZ2l0bGFi
LWNpLnltbAoKZGlmZiAtLWdpdCBhLy5naXRsYWItY2kueW1sIGIvLmdpdGxhYi1jaS55bWwKbmV3
IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi41NjE4MGNlM2M5MTUKLS0tIC9k
ZXYvbnVsbAorKysgYi8uZ2l0bGFiLWNpLnltbApAQCAtMCwwICsxLDMgQEAKK2luY2x1ZGU6Cisg
IC0gcmVtb3RlOiBodHRwczovL2dpdGxhYi5jb20veW5lenovb3BlbndydC1jaS9yYXcvbWFzdGVy
L29wZW53cnQtY2kvZ2l0bGFiL21haW4ueW1sCisgIC0gcmVtb3RlOiBodHRwczovL2dpdGxhYi5j
b20veW5lenovb3BlbndydC1jaS9yYXcvbWFzdGVyL29wZW53cnQtY2kvZ2l0bGFiL3BpcGVsaW5l
LnltbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
