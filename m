Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8C3490FD
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Jun 2019 22:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzLXLZ708oQRE00RaYA5xC7BidMavxEEhI3155VQE38=; b=B7p743gmBbNDz7
	mDOb2Oe86g8ByznwsTuES2Vv2QaiDknUdfgJ8iaxPSqRDDLsU4Z/UaVKb4h3RcJiumIlTRqZfPEDf
	01YB3XjSHRiRauizIhNs4+OP60kSyn2DYnD2/L8O89xZS6+NxA5X4wpsLpb14HV0jN8EHpjz8i3II
	+arYuyZR/czW9cYxH1FcibY3TI5orUgOvTKyEgr9pkOWhotPSHX3TbW4IdN2ubJNz/MY8Lu90sZ3J
	Rld0cNQXUtGi31YxTH9hyZNdV5vBdmso6LyAnpZnk8ADx76/eRKQqmU/x7++cW/Q3+mMSak188DNg
	DgHj4mz7Bh/eTt14KiMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxxl-0000d2-PO; Mon, 17 Jun 2019 20:10:45 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxwE-0006Iv-Dg
 for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 20:09:12 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C4D5E4FB7;
 Mon, 17 Jun 2019 22:09:06 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id d9ec8b98;
 Mon, 17 Jun 2019 22:09:04 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 17 Jun 2019 22:08:55 +0200
Message-Id: <1560802136-4157-6-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560802136-4157-1-git-send-email-ynezz@true.cz>
References: <1560802136-4157-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_130910_769839_A079F72F 
X-CRM114-Status: UNSURE (   8.64  )
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
Subject: [OpenWrt-Devel] [PATCH 5/6] build: switch to Python 3
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Mathew McBride <matt@traverse.com.au>, Yangbo Lu <yangbo.lu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBwYXRjaCBzd2l0Y2hlcyBQeXRob24gdXNlZCBpbiBidWlsZHJvb3QgdG8gUHl0aG9uIDMg
YXMgUHl0aG9uIDIueApzZXJpZXMgaXMgZ29pbmcgdG8gYmUgRU9MIHJlbGF0aXZlbHkgc29vblsx
XS4KCiAiQmVpbmcgdGhlIGxhc3Qgb2YgdGhlIFB5dGhvbiAyLnggc2VyaWVzLCAyLjcgd2lsbCBo
YXZlIGFuIGV4dGVuZGVkCiAgcGVyaW9kIG9mIG1haW50ZW5hbmNlLiBTcGVjaWZpY2FsbHksIDIu
NyB3aWxsIHJlY2VpdmUgYnVnZml4IHN1cHBvcnQKICB1bnRpbCBKYW51YXJ5IDEsIDIwMjAuIEFm
dGVyIHRoZSBsYXN0IHJlbGVhc2UsIDIuNyB3aWxsIHJlY2VpdmUgbm8KICBzdXBwb3J0LiIKCkl0
IHNlZW1zIGxpa2UgUHl0aG9uIDMgaXMgZ29pbmcgdG8gYmUgbmVlZGVkIGluIG9yZGVyIHRvIHN1
cHBvcnQgTWVzb24KYnVpbGQgc3lzdGVtIHdoaWNoIGhhcyBnYWluZWQgc29tZSB0cmFjdGlvbiBy
ZWNlbnRseS4KCkJ1aWxkIHRlc3RlZCBvbiBmb2xsb3dpbmcgdGFyZ2V0czoKCiBhdGg3OS9nZW5l
cmljCiBpbXg2L2dlbmVyaWMKIGlwcTQweHgvZ2VuZXJpYwogbGFudGlxL3h3YXkKIGxheWVyc2Nh
cGUvYXJtdjcgKGJyb2tlbikKIGxheWVyc2NhcGUvYXJtdjhfMzJiIChicm9rZW4pCiBsYXllcnNj
YXBlL2FybXY4XzY0YiAoYnJva2VuKQogbXZlYnUvY29ydGV4YTcyCiByYW1pcHMvbXQ3NjIxCiBy
YW1pcHMvbXQ3NjIwCiBzdW54aS9jb3J0ZXhhNwogeDg2LzY0CgpMYXllcnNjYXBlIHRhcmdldHMg
YXJlIHVuZm9ydHVuYXRlbHkgbGVmdCBicm9rZW4gYXMgdGhlaXIgbHMtcmN3CmZpcm13YXJlIHBh
Y2thZ2UgdXNlcyBQeXRob24gMiBhbmQgY29udmVydGluZyBpdCB0byBQeXRob24gMyB3b3VsZCB0
YWtlCm1vcmUgdGhlbiByZWFzb2FuYmxlIGFtb3VudCBvZiB0aW1lIChJJ3ZlIHRyaWVkIHRvIGZp
eCBpdCBhbHJlYWR5KSBhbmQKd291bGQgYmUgYmV0dGVyIGZpeGVkIGJ5IHNvbWVvbmUgd2hvIGNh
biBldmVuIHJ1biB0ZXN0IGl0LgoKUnVuIHRlc3RlZCBvbiBhdGg3OSAoQXJjaGVyIEM3IHY1KSwg
aXBxNDB4eCAobmJnNjYxNykgYW5kIHg4Nl82NCAoUUVNVQphbmQgYXB1MikuCgoxLiBodHRwczov
L3d3dy5weXRob24ub3JnL2Rldi9wZXBzL3BlcC0wMzczLwoKUmVmOiBQUiMxOTM3CkNjOiBZYW5n
Ym8gTHUgPHlhbmdiby5sdUBueHAuY29tPgpDYzogTWF0aGV3IE1jQnJpZGUgPG1hdHRAdHJhdmVy
c2UuY29tLmF1PgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgot
LS0KIFJFQURNRSAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIGluY2x1ZGUvcHJlcmVxLWJ1aWxk
Lm1rIHwgMTUgKysrKysrKysrKystLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvUkVBRE1FIGIvUkVBRE1FCmluZGV4IDU1
Y2E5MmFmNjVmOC4uYzg2N2MxZmE0ZGE4IDEwMDY0NAotLS0gYS9SRUFETUUKKysrIGIvUkVBRE1F
CkBAIC0xMSw3ICsxMSw3IEBAIFRvIGJ1aWxkIHlvdXIgb3duIGZpcm13YXJlIHlvdSBuZWVkIGEg
TGludXgsIEJTRCBvciBNYWNPU1ggc3lzdGVtIChjYXNlCiBzZW5zaXRpdmUgZmlsZXN5c3RlbSBy
ZXF1aXJlZCkuIEN5Z3dpbiBpcyB1bnN1cHBvcnRlZCBiZWNhdXNlIG9mIHRoZSBsYWNrCiBvZiBh
IGNhc2Ugc2Vuc2l0aXZlIGZpbGUgc3lzdGVtLgogCi1Zb3UgbmVlZCBnY2MsIGJpbnV0aWxzLCBi
emlwMiwgZmxleCwgcHl0aG9uLCBwZXJsLCBtYWtlLCBmaW5kLCBncmVwLCBkaWZmLAorWW91IG5l
ZWQgZ2NjLCBiaW51dGlscywgYnppcDIsIGZsZXgsIHB5dGhvbjMuNSssIHBlcmwsIG1ha2UsIGZp
bmQsIGdyZXAsIGRpZmYsCiB1bnppcCwgZ2F3aywgZ2V0b3B0LCBzdWJ2ZXJzaW9uLCBsaWJ6LWRl
diBhbmQgbGliYyBoZWFkZXJzIGluc3RhbGxlZC4KIAogMS4gUnVuICIuL3NjcmlwdHMvZmVlZHMg
dXBkYXRlIC1hIiB0byBvYnRhaW4gYWxsIHRoZSBsYXRlc3QgcGFja2FnZSBkZWZpbml0aW9ucwpk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9wcmVyZXEtYnVpbGQubWsgYi9pbmNsdWRlL3ByZXJlcS1idWls
ZC5tawppbmRleCBmN2RhOTE2ZjY0OGMuLmM1MmNhNzE5MDg3YyAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS9wcmVyZXEtYnVpbGQubWsKKysrIGIvaW5jbHVkZS9wcmVyZXEtYnVpbGQubWsKQEAgLTE0MSwx
MCArMTQxLDE3IEBAICQoZXZhbCAkKGNhbGwgU2V0dXBIb3N0Q29tbWFuZCx3Z2V0LFBsZWFzZSBp
bnN0YWxsIEdOVSAnd2dldCcsIFwKICQoZXZhbCAkKGNhbGwgU2V0dXBIb3N0Q29tbWFuZCxwZXJs
LFBsZWFzZSBpbnN0YWxsIFBlcmwgNS54LCBcCiAJcGVybCAtLXZlcnNpb24gfCBncmVwICJwZXJs
Lip2NSIpKQogCi0kKGV2YWwgJChjYWxsIFNldHVwSG9zdENvbW1hbmQscHl0aG9uLFBsZWFzZSBp
bnN0YWxsIFB5dGhvbiAyLngsIFwKLQlweXRob24yLjcgLVYgMj4mMSB8IGdyZXAgUHl0aG9uLCBc
Ci0JcHl0aG9uMiAtViAyPiYxIHwgZ3JlcCBQeXRob24sIFwKLQlweXRob24gLVYgMj4mMSB8IGdy
ZXAgUHl0aG9uKSkKKyQoZXZhbCAkKGNhbGwgU2V0dXBIb3N0Q29tbWFuZCxweXRob24sUGxlYXNl
IGluc3RhbGwgUHl0aG9uID49IDMuNSwgXAorCXB5dGhvbjMuNyAtViAyPiYxIHwgZ3JlcCAtRSAn
UHl0aG9uIDNcLls1LTldXC4/JywgXAorCXB5dGhvbjMuNiAtViAyPiYxIHwgZ3JlcCAtRSAnUHl0
aG9uIDNcLls1LTldXC4/JywgXAorCXB5dGhvbjMuNSAtViAyPiYxIHwgZ3JlcCAtRSAnUHl0aG9u
IDNcLls1LTldXC4/JywgXAorCXB5dGhvbjMgLVYgMj4mMSB8IGdyZXAgLUUgJ1B5dGhvbiAzXC5b
NS05XVwuPycpKQorCiskKGV2YWwgJChjYWxsIFNldHVwSG9zdENvbW1hbmQscHl0aG9uMyxQbGVh
c2UgaW5zdGFsbCBQeXRob24gPj0gMy41LCBcCisJcHl0aG9uMy43IC1WIDI+JjEgfCBncmVwIC1F
ICdQeXRob24gM1wuWzUtOV1cLj8nLCBcCisJcHl0aG9uMy42IC1WIDI+JjEgfCBncmVwIC1FICdQ
eXRob24gM1wuWzUtOV1cLj8nLCBcCisJcHl0aG9uMy41IC1WIDI+JjEgfCBncmVwIC1FICdQeXRo
b24gM1wuWzUtOV1cLj8nLCBcCisJcHl0aG9uMyAtViAyPiYxIHwgZ3JlcCAtRSAnUHl0aG9uIDNc
Lls1LTldXC4/JykpCiAKICQoZXZhbCAkKGNhbGwgU2V0dXBIb3N0Q29tbWFuZCxnaXQsUGxlYXNl
IGluc3RhbGwgR2l0IChnaXQtY29yZSkgPj0gMS43LjEyLjIsIFwKIAlnaXQgLS1leGVjLXBhdGgg
fCB4YXJncyAtSSAlIC0tIGdyZXAgLXEgLS0gLS1yZWN1cnNpdmUgJS9naXQtc3VibW9kdWxlKSkK
LS0gCjEuOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
