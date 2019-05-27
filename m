Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D01F2BBC2
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 23:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WzDBJUENfKs41XEjvng48F0pecqENzKi/np4VVbIZIY=; b=b1Q9s5OEUAI+lm
	q9t/FbBUzp9YSBgeEuyHD0+4j22dPeZT5mGEw2R+G1rsj6PvDUtjCNzCdWCEZZUFYoE3DfZpMh6Ih
	3gOooLKLDYxEMD59hx0dhtjIAly4l4kDQKMZjsW7q1OuM8KgnrYBeR1bfOBKOcsZbp2ARSIuQk13J
	J+v0+0cdvuySRqos6+kOV5ZxPXtiaUDkKXDjYO5cjjZQdMdH5kLWoDCFJKUU57IV4pYmR+LqXcdcm
	dy7Szy4pc+gTymFTtFWL6YPleBwciADX6EzgKeEHCI8yXZ+JzvscTiud5fVSlNMX3oAZNtPbQZlX7
	cLOh2sOqTEuj2XU8LaZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVNCc-00088n-Bc; Mon, 27 May 2019 21:30:42 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVNBv-0006BP-TC
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 21:30:02 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 922334FAC;
 Mon, 27 May 2019 23:29:58 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 8bb5889e;
 Mon, 27 May 2019 23:29:56 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 27 May 2019 23:29:44 +0200
Message-Id: <1558992584-11997-5-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558992584-11997-1-git-send-email-ynezz@true.cz>
References: <1558992584-11997-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_143000_089525_78B771DE 
X-CRM114-Status: UNSURE (   9.04  )
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
Subject: [OpenWrt-Devel] [PATCH 4/4] build: add urandom-seed and urngd to
 default packages set
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

dXJhbmRvbS1zZWVkIGNvbnRlbnQgd2FzIHNwbGl0IGZyb20gYmFzZS1maWxlcyBpbnRvIHNlcGFy
YXRlIHBhY2thZ2Ugc28KaW4gb3JkZXIgdG8gcHJlc2VydmUgdGhlIGN1cnJlbnQgZnVuY3Rpb25h
bGl0eSBhbmQgdG8gcHJvdmlkZSBzb21lCmZhbGxiYWNrIG1lY2hhbmlzbSBpbiBjYXNlIGplbnQt
cm5nIGluaXRpYWxpemF0aW9uIGZhaWxzIGluIHVybmdkIHdlCm5lZWQgdG8gYWRkIGl0IGJhY2su
Cgp1cm5nZCBpcyBPcGVuV3J0J3MgbWljcm8gbm9uLXBoeXNpY2FsIHRydWUgcmFuZG9tIG51bWJl
ciBnZW5lcmF0b3IgYmFzZWQKb24gdGltaW5nIGppdHRlci4KClNpZ25lZC1vZmYtYnk6IFBldHIg
xaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogaW5jbHVkZS90YXJnZXQubWsgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9pbmNsdWRlL3RhcmdldC5tayBiL2luY2x1ZGUvdGFyZ2V0Lm1rCmluZGV4IDRmM2JkNDNlNmNi
Ni4uYTgxM2JhMmQyZDg3IDEwMDY0NAotLS0gYS9pbmNsdWRlL3RhcmdldC5taworKysgYi9pbmNs
dWRlL3RhcmdldC5tawpAQCAtMTMsNyArMTMsNyBAQCBfX3RhcmdldF9pbmM9MQogREVWSUNFX1RZ
UEU/PXJvdXRlcgogCiAjIERlZmF1bHQgcGFja2FnZXMgLSB0aGUgcmVhbGx5IGJhc2ljIHNldAot
REVGQVVMVF9QQUNLQUdFUzo9YmFzZS1maWxlcyBsaWJjIGxpYmdjYyBidXN5Ym94IGRyb3BiZWFy
IG10ZCB1Y2kgb3BrZyBuZXRpZmQgZnN0b29scyB1Y2xpZW50LWZldGNoIGxvZ2QKK0RFRkFVTFRf
UEFDS0FHRVM6PWJhc2UtZmlsZXMgbGliYyBsaWJnY2MgYnVzeWJveCBkcm9wYmVhciBtdGQgdWNp
IG9wa2cgbmV0aWZkIGZzdG9vbHMgdWNsaWVudC1mZXRjaCBsb2dkIHVyYW5kb20tc2VlZCB1cm5n
ZAogIyBGb3IgbmFzIHRhcmdldHMKIERFRkFVTFRfUEFDS0FHRVMubmFzOj1ibG9jay1tb3VudCBm
ZGlzayBsc2JsayBtZGFkbQogIyBGb3Igcm91dGVyIHRhcmdldHMKLS0gCjEuOS4xCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
