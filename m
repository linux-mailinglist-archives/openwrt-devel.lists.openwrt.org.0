Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8C0490EB
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Jun 2019 22:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TQEwrYfG9+5smUqSy4zzjK8RCOl6pnFEIG+tc/nYThA=; b=fSNIHsZS/lJmsA
	JMuhzii2BGPJ4FynUaA8L311KJeAAERawVIOeOHo2DopMbfVDylMu0Y5dSOGQ2o0j1wBxWMUGp9fx
	4Hs0QLasAHJnW8559q2mbosBnGgGrPyofCNAnzykr3T1Q6TND/fzsTpxJRl+NFin7Qtun8/NZmpJN
	jziBGE+hyPuOgsW2HJjcYH+YEBlBU/HQU1/6R/2sdezkQOU3Bgu9Y/elDLs8gA0ETnp1Eu5CjPcxq
	SOLEVXwop6dS92sgWGl1SJLUnH0CSTINbUzd4JO+i+TD/nBF+DZ5FbWgY10pJXoZKd07pLxM4zqTu
	95u1BEUQNbrFw6C4bHAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxwd-0006VP-7q; Mon, 17 Jun 2019 20:09:35 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxwB-0006Hb-9v
 for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 20:09:09 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B8A4E4FB1;
 Mon, 17 Jun 2019 22:09:04 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 1dcd973e;
 Mon, 17 Jun 2019 22:09:02 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 17 Jun 2019 22:08:50 +0200
Message-Id: <1560802136-4157-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_130907_509775_266EC653 
X-CRM114-Status: UNSURE (   7.12  )
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
Subject: [OpenWrt-Devel] [PATCH 0/6] build: switch to Python 3
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

SGksCgp0aGlzIHBhdGNoIHNlcmllcyBzd2l0Y2hlcyBQeXRob24gdXNlZCBpbiBidWlsZHJvb3Qg
dG8gUHl0aG9uIDMgYXMgUHl0aG9uIDIueApzZXJpZXMgaXMgZ29pbmcgdG8gYmUgRU9MIHJlbGF0
aXZlbHkgc29vblsxXS4KCiAiQmVpbmcgdGhlIGxhc3Qgb2YgdGhlIFB5dGhvbiAyLnggc2VyaWVz
LCAyLjcgd2lsbCBoYXZlIGFuIGV4dGVuZGVkCiAgcGVyaW9kIG9mIG1haW50ZW5hbmNlLiBTcGVj
aWZpY2FsbHksIDIuNyB3aWxsIHJlY2VpdmUgYnVnZml4IHN1cHBvcnQKICB1bnRpbCBKYW51YXJ5
IDEsIDIwMjAuIEFmdGVyIHRoZSBsYXN0IHJlbGVhc2UsIDIuNyB3aWxsIHJlY2VpdmUgbm8KICBz
dXBwb3J0LiIKCkl0IHNlZW1zIGxpa2UgUHl0aG9uIDMgaXMgZ29pbmcgdG8gYmUgbmVlZGVkIGlu
IG9yZGVyIHRvIHN1cHBvcnQgTWVzb24KYnVpbGQgc3lzdGVtIHdoaWNoIGhhcyBnYWluZWQgc29t
ZSB0cmFjdGlvbiByZWNlbnRseS4KCkJ1aWxkIHRlc3RlZCBvbiBmb2xsb3dpbmcgdGFyZ2V0czoK
CiBhdGg3OS9nZW5lcmljCiBpbXg2L2dlbmVyaWMKIGlwcTQweHgvZ2VuZXJpYwogbGFudGlxL3h3
YXkKIGxheWVyc2NhcGUvYXJtdjcgKGJyb2tlbikKIGxheWVyc2NhcGUvYXJtdjhfMzJiIChicm9r
ZW4pCiBsYXllcnNjYXBlL2FybXY4XzY0YiAoYnJva2VuKQogbXZlYnUvY29ydGV4YTcyCiByYW1p
cHMvbXQ3NjIxCiByYW1pcHMvbXQ3NjIwCiBzdW54aS9jb3J0ZXhhNwogeDg2LzY0CgpMYXllcnNj
YXBlIHRhcmdldHMgYXJlIHVuZm9ydHVuYXRlbHkgbGVmdCBicm9rZW4gYXMgdGhlaXIgbHMtcmN3
CmZpcm13YXJlIHBhY2thZ2UgdXNlcyBQeXRob24gMiBhbmQgY29udmVydGluZyBpdCB0byBQeXRo
b24gMyB3b3VsZCB0YWtlCm1vcmUgdGhlbiByZWFzb2FuYmxlIGFtb3VudCBvZiB0aW1lIChJJ3Zl
IHRyaWVkIHRvIGZpeCBpdCBhbHJlYWR5KSBhbmQKd291bGQgYmUgYmV0dGVyIGZpeGVkIGJ5IHNv
bWVvbmUgd2hvIGNhbiBldmVuIHJ1biB0ZXN0IGl0LgoKUnVuIHRlc3RlZCBvbiBhdGg3OSAoQXJj
aGVyIEM3IHY1KSwgaXBxNDB4eCAobmJnNjYxNykgYW5kIHg4Nl82NCAoUUVNVQphbmQgYXB1Miku
CgoxLiBodHRwczovL3d3dy5weXRob24ub3JnL2Rldi9wZXBzL3BlcC0wMzczLwoKUmVmOiBQUiMx
OTM3ClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+CgpQZXRyIMWg
dGV0aWFyICg2KToKICB0b29scy9iNDMtdG9vbHMvYjQzLWZ3c3F1YXNoOiBjb252ZXJ0IHRvIFB5
dGhvbiAzIHdpdGggMi10by0zCiAgc2NyaXB0cy9kbF9naXRodWJfYXJjaGl2ZS5weTogY29udmVy
dCB0byBQeXRob24gMyB3aXRoIDItdG8tMwogIHNjcmlwdHMvanVuZ28taW1hZ2U6IGNvbnZlcnQg
dG8gUHl0aG9uIDMgd2l0aCAyLXRvLTMKICB0b29scy9zY29uczogc3dpdGNoIHRvIFB5dGhvbiAz
CiAgYnVpbGQ6IHN3aXRjaCB0byBQeXRob24gMwogIGJ1aWxkOiBjbGVhbnVwIHBvc3NpYmx5IGRh
bmdsaW5nIFB5dGhvbiAyIGhvc3Qgc3ltbGluawoKIFJFQURNRSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgMiArLQogaW5jbHVkZS9wcmVyZXEtYnVpbGQubWsgICAgICAgICAgICAg
ICB8IDE3ICsrKysrKysrKy0tLQogaW5jbHVkZS9wcmVyZXEubWsgICAgICAgICAgICAgICAgICAg
ICB8IDExICsrKysrKysrCiBzY3JpcHRzL2RsX2dpdGh1Yl9hcmNoaXZlLnB5ICAgICAgICAgIHwg
MTAgKysrLS0tLQogc2NyaXB0cy9mbGFzaGluZy9qdW5nby1pbWFnZS5weSAgICAgICB8IDUyICsr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tCiB0b29scy9iNDMtdG9vbHMvZmlsZXMv
YjQzLWZ3c3F1YXNoLnB5IHwgMTYgKysrKystLS0tLS0KIHRvb2xzL3Njb25zL2ZpbGVzL3B5d3Jh
cC5zaCAgICAgICAgICAgfCAgNiArKy0tCiA3IGZpbGVzIGNoYW5nZWQsIDY3IGluc2VydGlvbnMo
KyksIDQ3IGRlbGV0aW9ucygtKQoKLS0gCjEuOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
