Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A79B23CF8
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 May 2019 18:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bxM/w+DdI/nCwfxCZcWQ8q8bb1CP6RnJhklz8t+jKS4=; b=Y3LvdmPmxeKEL6
	stmIacYAQg5mXxXMtkvD5nixLGGvrQqMgkhDCOrt0OO0F/h5+FvtiMXlBg8ZCxSTj8wjdo+EJFXaZ
	K8zMfmr5btWT9sFYcY7tRmbmGIU6AzhryVPfxSEHl/fFvl8S2eSQVyYPj7EAmOq+i/2VdvHkdM58k
	JXkuPTCrWJNEForbf9Y1rzW0pvK6nToc20jAOfNg28i3esSe6LanflMANKnqxK2MTj00LPrt4YmKY
	Bo/RqHicKpwSxyELYpw58UUb1SdcW7tiwJ/rwxs3yrEfYQ2BnhCA+zL4r9JeTvrBU7aZKWDEGAe76
	2VSF2hTHmbhnNVmtD8xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkvG-0004A9-0G; Mon, 20 May 2019 16:13:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkv7-00048o-W0
 for openwrt-devel@lists.openwrt.org; Mon, 20 May 2019 16:13:52 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id DEF8A4B2E;
 Mon, 20 May 2019 18:13:43 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 314122f6;
 Mon, 20 May 2019 18:13:42 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 May 2019 18:13:20 +0200
Message-Id: <1558368805-19484-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_091350_334491_EDB926CA 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH RFC 0/5] ath79: add micro non-physical true
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
Cc: Stephan Mueller <smueller@chronox.de>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Dustin Lundquist <d.lundquist@temperednetworks.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgp0aGlzIHBhdGNoIHNlcmllcyBpcyBhbiBSRkMgd2hpY2ggYXR0ZW1wdHMgdG8gZml4IHNv
bWUgb2YgdGhlIGN1cnJlbnQKdXJhbmRvbS1zZWVkIGJhc2VkIGZsYXdzLgoKRmlyc3QsIHNpbXBs
eSB3cml0aW5nIHRvIC9kZXYvdXJhbmRvbSBkb2VzIG5vdCBpbmNyZWFzZSB0aGUga2VybmVsJ3MK
ZW50cm9weSBjb3VudCwgdGhpcyBjYXN1c2VzIHByb2Nlc3NlcyBvYnRhaW5pbmcgcmFuZG9tbmVz
cyB0byBibG9jay4KUGFydGljdWxhcmx5IHByb2Nlc3NlcyB1c2luZyBPcGVuU1NMJ3MgUkFORF9i
eXRlcygpIHdpbGwgYmxvY2sgdW50aWwgdGhlCmtlcm5lbCBlbWl0cyAncmFuZG9tOiBjcm5nIGlu
aXQgZG9uZScuIFRoaXMgY2FuIHRha2UgdXB3YXJkcyBvZiB0d2VudHkKbWludXRlcy4KCkFjY29y
ZGluZyB0byByYW5kb20oNCkgdGhlIGVudHJvcHkgY291bnQgaXMgb25seSBpbmNyZWFzZWQgd2hl
biB1c2luZyB0aGUKUk5EQURERU5UUk9QWSBpb2N0bCwgd2hpY2ggdXJhbmRvbS1zZWVkIGN1cnJl
bnRseSBkb2Vzbid0IHVzZSB3aGVuIGZlZWRpbmcgdGhlCmtlcm5lbCBSTkcuCgpTZWNvbmQsIHVy
YW5kb20tc2VlZCBpcyB1c2luZyAvZXRjL3VyYW5kb20uc2VlZCBmaWxlIHRvIHNlZWQgdGhlIGtl
cm5lbCdzIFJORwptYWNoaW5lcnkgdXBvbiBldmVyeSBib290LiBUaGUgcHJvYmxlbSBpcywgdGhh
dCB0aGlzIGZpbGUgaXMgY3JlYXRlZCBvbmx5IG9uY2UKZHVyaW5nIGZpcnN0LWJvb3QgYW5kIHRo
ZW4gcmV1c2VkIG9uIGV2ZXJ5IGNvbnNlY3V0aXZlIGJvb3QsIHNvIHByZXR0eSBtdWNoCnN0YXRp
Yy4KClNvIHRoaXMgcGF0Y2ggc2VyaWVzIHJlbW92ZXMgdXJhbmRvbS1zZWVkIHBhY2thZ2UgaW4g
ZmF2b3Igb2YgdXJuZ2QsIHdoaWNoIGlzCm5ldyBtaWNybyBub24tcGh5c2ljYWwgdHJ1ZSByYW5k
b20gbnVtYmVyIGdlbmVyYXRvciAoc3lzdGVtIHNlcnZpY2UpIGJhc2VkIG9uCnRpbWluZyBqaXR0
ZXIuCgpVc2luZyB0aGUgSml0dGVyIFJORyBjb3JlLCB0aGUgdXJuZ2QgcHJvdmlkZXMgYW4gZW50
cm9weSBzb3VyY2UgdGhhdApmZWVkcyBpbnRvIHRoZSBMaW51eCAvZGV2L3JhbmRvbSBkZXZpY2Ug
aWYgaXRzIGVudHJvcHkgcnVucyBsb3cuIEl0CnVwZGF0ZXMgdGhlIC9kZXYvcmFuZG9tIGVudHJv
cHkgZXN0aW1hdG9yIHN1Y2ggdGhhdCB0aGUgbmV3bHkgcHJvdmlkZWQKZW50cm9weSB1bmJsb2Nr
cyAvZGV2L3JhbmRvbS4KClRoZSBzZWVkaW5nIG9mIC9kZXYvcmFuZG9tIGFsc28gZW5zdXJlcyB0
aGF0IC9kZXYvdXJhbmRvbSBiZW5lZml0cyBmcm9tCmVudHJvcHkuIEVzcGVjaWFsbHkgZHVyaW5n
IGJvb3QgdGltZSwgd2hlbiB0aGUgZW50cm9weSBvZiBMaW51eCBpcyBsb3csCnRoZSBKaXR0ZXIg
Uk5HZCBwcm92aWRlcyBhIHNvdXJjZSBvZiBzdWZmaWNpZW50IGVudHJvcHkuCgpTb21lIFJORyBp
bml0IHRpbWUgbnVtYmVycyBmcm9tIHFjYTk1NjMgKFRQLUxpbmsgQXJjaGVyIEM3IHY1KToKCiBb
ICAgMTIuMDQ1NjkzXSByYW5kb206IGNybmcgaW5pdCBkb25lICAgICAgICAodXJuZ2QpCiBbICAx
MjAuMDQzMTMyXSByYW5kb206IGNybmcgaW5pdCBkb25lICAgICAgICAodXJhbmRvbS1zZWVkKQoK
Rmxhc2ggc3BhY2UgZGV0YWlsczoKCiB1cm5nZDogICAgICAgICsgNDU3OSBiCiBnZXRyYW5kb206
ICAgIC0gMTYzNSBiCiB1cmFuZG9tLXNlZWQ6IC0gIDg0MSBiCiAtLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCiBkaWZmICAgICAgICAgICsgMjEwMyBiCgpDYzogU3RlcGhhbiBNdWVsbGVyIDxzbXVlbGxl
ckBjaHJvbm94LmRlPgpDYzogRHVzdGluIEx1bmRxdWlzdCA8ZC5sdW5kcXVpc3RAdGVtcGVyZWRu
ZXR3b3Jrcy5jb20+CgpQZXRyIMWgdGV0aWFyICg1KToKICB1cm5nOiBhZGQgbWljcm8gbm9uLXBo
eXNpY2FsIHRydWUgUk5HIGJhc2VkIG9uIHRpbWluZyBqaXR0ZXIKICB1Ym94OiBtb3ZlIGdldHJh
bmRvbSBpbnRvIHNlcGFyYXRlIGdldHJhbmRvbSBwYWNrYWdlCiAgYmFzZS1maWxlczogbW92ZSB1
cmFuZG9tIHNlZWQgYml0cyBpbnRvIHNlcGFyYXRlIHBhY2thZ2UKICBidWlsZDogYWRkIHVyYW5k
b20tc2VlZCB0byB0aGUgZGVmYXVsdCBwYWNrYWdlcyBzZXQKICBhdGg3OTogbWFrZSB1cm5nZCBk
ZWZhdWx0IFJORyBzZWVkIHNvdXJjZQoKIGluY2x1ZGUvdGFyZ2V0Lm1rICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIHBhY2thZ2UvYmFzZS1maWxlcy9NYWtlZmlsZSAg
ICAgICAgICAgICAgICAgICAgICAgIHwgMTEgKysrKy0KIHBhY2thZ2UvYmFzZS1maWxlcy9maWxl
cy9ldGMvaW5pdC5kL3VyYW5kb21fc2VlZCAgIHwgMTIgLS0tLS0tCiAuLi4vYmFzZS1maWxlcy9m
aWxlcy9saWIvcHJlaW5pdC84MV91cmFuZG9tX3NlZWQgICB8IDI0IC0tLS0tLS0tLS0tCiBwYWNr
YWdlL2Jhc2UtZmlsZXMvZmlsZXMvc2Jpbi91cmFuZG9tX3NlZWQgICAgICAgICB8IDIwIC0tLS0t
LS0tLQogcGFja2FnZS9zeXN0ZW0vdWJveC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAg
fCAxNyArKysrKystLQogcGFja2FnZS9zeXN0ZW0vdXJhbmRvbS1zZWVkL01ha2VmaWxlICAgICAg
ICAgICAgICAgfCAzMiArKysrKysrKysrKysrKysKIC4uLi91cmFuZG9tLXNlZWQvZmlsZXMvZXRj
L2luaXQuZC91cmFuZG9tX3NlZWQgICAgIHwgMTIgKysrKysrCiAuLi4vdXJhbmRvbS1zZWVkL2Zp
bGVzL2xpYi9wcmVpbml0LzgxX3VyYW5kb21fc2VlZCB8IDI0ICsrKysrKysrKysrCiAuLi4vc3lz
dGVtL3VyYW5kb20tc2VlZC9maWxlcy9zYmluL3VyYW5kb21fc2VlZCAgICB8IDIwICsrKysrKysr
KwogcGFja2FnZS9zeXN0ZW0vdXJuZ2QvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgfCA0
OCArKysrKysrKysrKysrKysrKysrKysrCiBwYWNrYWdlL3N5c3RlbS91cm5nZC9maWxlcy91cm5n
ZC5pbml0ICAgICAgICAgICAgICB8IDIxICsrKysrKysrKysKIHRhcmdldC9saW51eC9hdGg3OS9N
YWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgIHwgIDMgKy0KIDEzIGZpbGVzIGNoYW5nZWQs
IDE4NCBpbnNlcnRpb25zKCspLCA2MiBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDc1NSBw
YWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvZXRjL2luaXQuZC91cmFuZG9tX3NlZWQKIGRlbGV0ZSBt
b2RlIDEwMDY0NCBwYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL3ByZWluaXQvODFfdXJhbmRv
bV9zZWVkCiBkZWxldGUgbW9kZSAxMDA3NTUgcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4v
dXJhbmRvbV9zZWVkCiBjcmVhdGUgbW9kZSAxMDA2NDQgcGFja2FnZS9zeXN0ZW0vdXJhbmRvbS1z
ZWVkL01ha2VmaWxlCiBjcmVhdGUgbW9kZSAxMDA3NTUgcGFja2FnZS9zeXN0ZW0vdXJhbmRvbS1z
ZWVkL2ZpbGVzL2V0Yy9pbml0LmQvdXJhbmRvbV9zZWVkCiBjcmVhdGUgbW9kZSAxMDA2NDQgcGFj
a2FnZS9zeXN0ZW0vdXJhbmRvbS1zZWVkL2ZpbGVzL2xpYi9wcmVpbml0LzgxX3VyYW5kb21fc2Vl
ZAogY3JlYXRlIG1vZGUgMTAwNzU1IHBhY2thZ2Uvc3lzdGVtL3VyYW5kb20tc2VlZC9maWxlcy9z
YmluL3VyYW5kb21fc2VlZAogY3JlYXRlIG1vZGUgMTAwNjQ0IHBhY2thZ2Uvc3lzdGVtL3Vybmdk
L01ha2VmaWxlCiBjcmVhdGUgbW9kZSAxMDA3NTUgcGFja2FnZS9zeXN0ZW0vdXJuZ2QvZmlsZXMv
dXJuZ2QuaW5pdAoKLS0gCjEuOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
