Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C043212707A
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:14:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ArOWCP0U2XF5kZarQWnDDxU/HW42NEmJyyGo+jnN70=; b=C8U6v8vCGTUpE4
	i9stm9kU9QXtibae5rYLnxqbe8V0IKcpo1uXJ8ekLts+Viz2mfBK+5gybODVbIwrNfHbDg1MzYlpx
	lcWJrjF75Pq2lUm38xrVLdWOOjJi9x3mAfKUKONxP3tqq9qJ8fdtCaaG0oN/SAMoNi8ElqxZ5omek
	HnQjRtNkhzMSTFVjtmY6OCP/IR1L1XJp1bv9+j+CEn2kCCmph5VP/0v/I7NcEaLKEUkPqigACh9cz
	Gd4TEyfXzww9EP/gX59unTJNuG98ISuKU7azZ+H4Ory1j8pPVI+pTQFgjNKqrwx5ZNPfwKw6Its6l
	M/W7aOqiiqaCPlyqOD0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii43w-0000q7-MQ; Thu, 19 Dec 2019 22:14:28 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii41N-00056b-42
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:11:51 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 978C54BD3;
 Thu, 19 Dec 2019 23:11:47 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 86e41df0;
 Thu, 19 Dec 2019 23:11:37 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:11:23 +0100
Message-Id: <20191219221125.22646-15-ynezz@true.cz>
In-Reply-To: <20191219221125.22646-1-ynezz@true.cz>
References: <20191219221125.22646-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_141149_376966_F55B165B 
X-CRM114-Status: UNSURE (   9.20  )
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
Subject: [OpenWrt-Devel] [PATCH ubus 14/16] ubusd_monitor: fix possible null
 pointer dereference
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

VGhpcyBkZXJlZmVyZW5jZSBjb3VsZCBwb3NzaWJseSBoYXBwZW4gaWYgdGhlIGNhbGxvYyBjYWxs
IGZhaWxzIGFzIHRoZQpyZXR1cm4gdmFsdWUgaXMgdW5jaGVja2VkLiBXaGlsZSBhdCBpdCByZWZh
Y3RvciB0aGUgY29kZSBsaXR0bGUgYml0IHRvCm1ha2UgaXQgZWFzaWVyIHRvIGZvbGxvdywgdXNl
IHNhZmUgbGlzdCBpdGVyYXRvciBhbmQgcHJvdmlkZSByZXR1cm4KdmFsdWUgZm9yIHVidXNkX21v
bml0b3JfY29ubmVjdC4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUu
Y3o+Ci0tLQogdWJ1c2RfbW9uaXRvci5jIHwgNDAgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDEwIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL3VidXNkX21vbml0b3IuYyBiL3VidXNkX21vbml0b3IuYwpp
bmRleCBmY2JjNmE0YjEwYzAuLjUwMWUwNmQwNzE2YyAxMDA2NDQKLS0tIGEvdWJ1c2RfbW9uaXRv
ci5jCisrKyBiL3VidXNkX21vbml0b3IuYwpAQCAtMjksNyArMjksNyBAQCB1YnVzZF9tb25pdG9y
X2ZyZWUoc3RydWN0IHVidXNfbW9uaXRvciAqbSkKIAlmcmVlKG0pOwogfQogCi1zdGF0aWMgdm9p
ZAorc3RhdGljIGJvb2wKIHVidXNkX21vbml0b3JfY29ubmVjdChzdHJ1Y3QgdWJ1c19jbGllbnQg
KmNsLCBzdHJ1Y3QgdWJ1c19tc2dfYnVmICp1YikKIHsKIAlzdHJ1Y3QgdWJ1c19tb25pdG9yICpt
OwpAQCAtMzcsMjIgKzM3LDQwIEBAIHVidXNkX21vbml0b3JfY29ubmVjdChzdHJ1Y3QgdWJ1c19j
bGllbnQgKmNsLCBzdHJ1Y3QgdWJ1c19tc2dfYnVmICp1YikKIAl1YnVzZF9tb25pdG9yX2Rpc2Nv
bm5lY3QoY2wpOwogCiAJbSA9IGNhbGxvYygxLCBzaXplb2YoKm0pKTsKKwlpZiAoIW0pCisJCXJl
dHVybiBmYWxzZTsKKwogCW0tPmNsID0gY2w7CiAJbGlzdF9hZGQoJm0tPmxpc3QsICZtb25pdG9y
cyk7CisKKwlyZXR1cm4gdHJ1ZTsKIH0KIAotdm9pZAotdWJ1c2RfbW9uaXRvcl9kaXNjb25uZWN0
KHN0cnVjdCB1YnVzX2NsaWVudCAqY2wpCitzdGF0aWMgc3RydWN0IHVidXNfbW9uaXRvcioKK3Vi
dXNkX21vbml0b3JfZmluZChzdHJ1Y3QgdWJ1c19jbGllbnQgKmNsKQogewotCXN0cnVjdCB1YnVz
X21vbml0b3IgKm07CisJc3RydWN0IHVidXNfbW9uaXRvciAqbSwgKnRtcDsKIAotCWxpc3RfZm9y
X2VhY2hfZW50cnkobSwgJm1vbml0b3JzLCBsaXN0KSB7CisJbGlzdF9mb3JfZWFjaF9lbnRyeV9z
YWZlKG0sIHRtcCwgJm1vbml0b3JzLCBsaXN0KSB7CiAJCWlmIChtLT5jbCAhPSBjbCkKIAkJCWNv
bnRpbnVlOwogCi0JCXVidXNkX21vbml0b3JfZnJlZShtKTsKLQkJcmV0dXJuOworCQlyZXR1cm4g
bTsKIAl9CisKKwlyZXR1cm4gTlVMTDsKK30KKwordm9pZAordWJ1c2RfbW9uaXRvcl9kaXNjb25u
ZWN0KHN0cnVjdCB1YnVzX2NsaWVudCAqY2wpCit7CisJc3RydWN0IHVidXNfbW9uaXRvciAqbTsK
KworCW0gPSB1YnVzZF9tb25pdG9yX2ZpbmQoY2wpOworCWlmICghbSkKKwkJcmV0dXJuOworCisJ
dWJ1c2RfbW9uaXRvcl9mcmVlKG0pOwogfQogCiB2b2lkCkBAIC05MiwxMyArMTEwLDE1IEBAIHVi
dXNkX21vbml0b3JfcmVjdihzdHJ1Y3QgdWJ1c19jbGllbnQgKmNsLCBzdHJ1Y3QgdWJ1c19tc2df
YnVmICp1YiwKIAkJcmV0dXJuIFVCVVNfU1RBVFVTX1BFUk1JU1NJT05fREVOSUVEOwogCiAJaWYg
KCFzdHJjbXAobWV0aG9kLCAiYWRkIikpIHsKLQkJdWJ1c2RfbW9uaXRvcl9jb25uZWN0KGNsLCB1
Yik7Ci0JCXJldHVybiAwOworCQlpZiAoIXVidXNkX21vbml0b3JfY29ubmVjdChjbCwgdWIpKQor
CQkJcmV0dXJuIFVCVVNfU1RBVFVTX1VOS05PV05fRVJST1I7CisKKwkJcmV0dXJuIFVCVVNfU1RB
VFVTX09LOwogCX0KIAogCWlmICghc3RyY21wKG1ldGhvZCwgInJlbW92ZSIpKSB7CiAJCXVidXNk
X21vbml0b3JfZGlzY29ubmVjdChjbCk7Ci0JCXJldHVybiAwOworCQlyZXR1cm4gVUJVU19TVEFU
VVNfT0s7CiAJfQogCiAJcmV0dXJuIFVCVVNfU1RBVFVTX01FVEhPRF9OT1RfRk9VTkQ7CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
