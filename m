Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AC4F1B79
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 17:41:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bw94eXrn0LCpk7U2Ik6nk02csJ+gh8bRf5ukEvAW3Oc=; b=mWVz1hlXpKxDoU
	YZbxihI/U7nyDqBFc3ZtLaa8zj/Wjd0WYj+7Qx/TKj7Fg2ZMS2oMiCPPS7RABEcp2xwRHVc2ABoC1
	mPA82YbSDr3PA0nADjtAmXPyvDm8njb7OVosVPkBplv1pVGRgzQ+0GQVaaPCpBA77ueqe4NGDJNSh
	j/zE8ZSts3pNqfbID1qWjNC2IIj/wN8Iftkwc9ljP2r6QfAUyvyEEvRf+viPWhjCqQqlACAN0q/ad
	w0CJwhE2x4/sHPYf0FUTD0WYFnutSwtTy93btpQeUnTGam4Ufe2ejpx0miWVQzTr9Glf/jdjAhkmW
	yH2HYXJkNbHwiTI9byUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSONR-0003D3-B1; Wed, 06 Nov 2019 16:41:49 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSON7-00031k-7R
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 16:41:30 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E4D344E60;
 Wed,  6 Nov 2019 17:41:26 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id e42caf7b;
 Wed, 6 Nov 2019 17:41:17 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 17:41:19 +0100
Message-Id: <20191106164120.5329-2-ynezz@true.cz>
In-Reply-To: <20191106164120.5329-1-ynezz@true.cz>
References: <20191106164120.5329-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_084129_422792_BB720C9E 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH libnl-tiny 2/3] silence use after the free
 clang analyzer warning
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

c2Nhbi1idWlsZCBmcm9tIGNsYW5nIHZlcnNpb24gOSBjb21wbGFpbnMgYWJvdXQgZm9sbG93aW5n
OgoKIG5sLmM6NTA3Ojk6IHdhcm5pbmc6IFVzZSBvZiBtZW1vcnkgYWZ0ZXIgaXQgaXMgZnJlZWQK
ICAgICAgICB3aGlsZSAobmxtc2dfb2soaGRyLCBuKSkgewogICAgICAgICAgICAgICBefn5+fn5+
fn5+fn5+fn5+Cgp3aGljaCBzZWVtcyB0byBiZSBpbXBvc3NpYmxlIGNvZGVwYXRoIGFzIGNsYW5n
IGFuYWx5emVyIGRvZXNuJ3Qgc29tZWhvdwphY2NvdW50IHByb3Blcmx5IG5sX3N5c2VycjJubGVy
cihlcnJubykgcmV0dXJuIHZhbHVlOgoKIH0gZWxzZSB7CiAgICBmcmVlKG1zZy5tc2dfY29udHJv
bCk7CiAgICBmcmVlKCpidWYpOwogICAgcmV0dXJuIC1ubF9zeXNlcnIybmxlcnIoZXJybm8pOwog
fQoKd2hpY2ggc2hvdWxkIGJlIGFsd2F5cyA8IDAsIGJ1dCBhbmFseXplciBpcyBzdGlsbCBjaGVj
a2luZyBmb3IgPiAwIGNvZGUKcGF0aCBhcyB3ZWxsIGZvciBzb21lIHJlYXNvbi4gU28gaW4gb3Jk
ZXIgdG8gbWFrZSB0aGUgYW5hbHl6ZXIgaGFwcHksCnNldCB0aGUgYnVmIHBvaW50ZXIgdG8gTlVM
TCBleHBsaWNpdGx5IGFuZCBhZGQgYXNzZXJ0IHRvIG1ha2UgaXQgY2xlYXIsCnRoYXQgdGhpcyBj
b2RlcGF0aCBzaG91bGQgbmV2ZXIgaGFwcGVuLgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlh
ciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBubC5jIHwgMTAgKysrKysrKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL25sLmMgYi9u
bC5jCmluZGV4IDI2NDk0NzBmNTQyZi4uNTA1OTY1ZmQxNmFhIDEwMDY0NAotLS0gYS9ubC5jCisr
KyBiL25sLmMKQEAgLTQwMCw3ICs0MDAsOSBAQCBpbnQgbmxfcmVjdihzdHJ1Y3Qgbmxfc29jayAq
c2ssIHN0cnVjdCBzb2NrYWRkcl9ubCAqbmxhLAogCQlwYWdlX3NpemUgPSBnZXRwYWdlc2l6ZSgp
ICogNDsKIAogCWlvdi5pb3ZfbGVuID0gcGFnZV9zaXplOwotCWlvdi5pb3ZfYmFzZSA9ICpidWYg
PSBtYWxsb2MoaW92Lmlvdl9sZW4pOworCWlvdi5pb3ZfYmFzZSA9ICpidWYgPSBjYWxsb2MoMSwg
aW92Lmlvdl9sZW4pOworCWlmICghKmJ1ZikKKwkJcmV0dXJuIC1ubF9zeXNlcnIybmxlcnIoZXJy
bm8pOwogCiAJaWYgKHNrLT5zX2ZsYWdzICYgTkxfU09DS19QQVNTQ1JFRCkgewogCQltc2cubXNn
X2NvbnRyb2xsZW4gPSBDTVNHX1NQQUNFKHNpemVvZihzdHJ1Y3QgdWNyZWQpKTsKQEAgLTQyMSw2
ICs0MjMsNyBAQCByZXRyeToKIAkJfSBlbHNlIHsKIAkJCWZyZWUobXNnLm1zZ19jb250cm9sKTsK
IAkJCWZyZWUoKmJ1Zik7CisJCQkqYnVmID0gTlVMTDsKIAkJCXJldHVybiAtbmxfc3lzZXJyMm5s
ZXJyKGVycm5vKTsKIAkJfQogCX0KQEAgLTQ0NSw2ICs0NDgsNyBAQCByZXRyeToKIAlpZiAobXNn
Lm1zZ19uYW1lbGVuICE9IHNpemVvZihzdHJ1Y3Qgc29ja2FkZHJfbmwpKSB7CiAJCWZyZWUobXNn
Lm1zZ19jb250cm9sKTsKIAkJZnJlZSgqYnVmKTsKKwkJKmJ1ZiA9IE5VTEw7CiAJCXJldHVybiAt
TkxFX05PQUREUjsKIAl9CiAKQEAgLTQ2Myw2ICs0NjcsNyBAQCByZXRyeToKIGFib3J0OgogCWZy
ZWUobXNnLm1zZ19jb250cm9sKTsKIAlmcmVlKCpidWYpOworCSpidWYgPSBOVUxMOwogCXJldHVy
biAwOwogfQogCkBAIC01MDEsNiArNTA2LDkgQEAgY29udGludWVfcmVhZGluZzoKIAlpZiAobiA8
PSAwKQogCQlyZXR1cm4gbjsKIAorCS8qIG1ha2UgY2xhbmcgYW5hbHl6ZXIgaGFwcHkgKi8KKwlh
c3NlcnQobiA+IDAgJiYgYnVmKTsKKwogCU5MX0RCRygzLCAicmVjdm1zZ3MoJXApOiBSZWFkICVk
IGJ5dGVzXG4iLCBzaywgbik7CiAKIAloZHIgPSAoc3RydWN0IG5sbXNnaGRyICopIGJ1ZjsKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
