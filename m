Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1225CF30E0
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 Nov 2019 15:09:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzIfvFfdtRKIvwst/NlPkCwUaQqvff7pltz1ZdqVVd4=; b=DLqFiY2Vapj4Si
	fyq/PBApBJkBOyT1O2JSbTUr+eVB5cjlEqEb6oY4uHrBmQdWd+f7OA0HcuP2uZeytOgRRAwAmlWSF
	USiZNCaGKYTPPuGwSScLQYG1Ohmc3lXIWjwdueHsGccXqyXO2ZPTFAgKjpvXpnWSpEPMIMNfFBwsM
	joISGTc3XvAOpvaJR7+kCE3YXQyut5Y/BnJDT1JuxufKA0i+ucND7sb4VkYATsQgOD9Ww2DL1XsrG
	0WBlsOPAj9ez2xAY+0UTvf4e2b1K704KxIxejyMFWruHBNogAINnmfyyIXcMkg1WP1RDqIvs84RO6
	uH2B9WoKovTgpMqPIs7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSiTf-0005Fu-Rb; Thu, 07 Nov 2019 14:09:35 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSiTM-00052b-3D
 for openwrt-devel@lists.openwrt.org; Thu, 07 Nov 2019 14:09:18 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 239745077;
 Thu,  7 Nov 2019 15:09:13 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 9e7af13a;
 Thu, 7 Nov 2019 15:09:01 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  7 Nov 2019 15:09:03 +0100
Message-Id: <20191107140903.21731-2-ynezz@true.cz>
In-Reply-To: <20191107140903.21731-1-ynezz@true.cz>
References: <20191107140903.21731-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_060916_440267_D05BA0C4 
X-CRM114-Status: UNSURE (   7.31  )
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
Subject: [OpenWrt-Devel] [PATCH 2/2] x86, tegra,
 mvebu: image: use common reproducible IMG_PART_SIGNATURE
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

RnJvbTogUGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPgoKVGhlc2UgdGFyZ2V0cyBhcmUg
Y3VycmVudGx5IHVzaW5nIG1vcmUgb3IgbGVzcyBzYW1lIFNJR05BVFVSRSB2YXJpYWJsZQp3aGlj
aCBwcm92aWRlcyB1bmlxdWUgcGFydGl0aW9uIElEL3NpZ25hdHVyZSwgc28gaXQgbWFrZXMgc2Vu
c2UgdG8KcmVmYWN0b3IgaXQgb3V0IGludG8gY29tbW9uIElNR19QQVJUX1NJR05BVFVSRSB2YXJp
YWJsZSB3aGljaCBjb3VsZCBiZQpyZXVzZWQgYnkgYWxsIHRhcmdldHMuCgpUaGlzIGlzIGFub3Ro
ZXIgc3RlcCBpbiB0aGUgZGlyZWN0aW9uIG9mIHJlcHJvZHVjaWJsZSBPcGVuV3J0IGltYWdlcy4K
ClNpZ25lZC1vZmYtYnk6IFBhdWwgU3Bvb3JlbiA8bWFpbEBhcGFyY2FyLm9yZz4KW3NwbGl0IGlu
dG8gc2VwYXJhdGUgY29tbWl0LCByZW5hbWVkIHRvIElNR19QQVJUX1NJR05BVFVSRV0KU2lnbmVk
LW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB0YXJnZXQvbGludXgv
bXZlYnUvaW1hZ2UvTWFrZWZpbGUgfCA4ICsrKy0tLS0tCiB0YXJnZXQvbGludXgvdGVncmEvaW1h
Z2UvTWFrZWZpbGUgfCA2ICsrLS0tLQogdGFyZ2V0L2xpbnV4L3g4Ni9pbWFnZS9NYWtlZmlsZSAg
IHwgNSArKy0tLQogMyBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9NYWtlZmlsZSBiL3Rh
cmdldC9saW51eC9tdmVidS9pbWFnZS9NYWtlZmlsZQppbmRleCA5NjdhMWU0ZWUxNTIuLmNlMTM0
NGE1NDcwZSAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL01ha2VmaWxlCisr
KyBiL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9NYWtlZmlsZQpAQCAtMTMsMTIgKzEzLDEwIEBA
IGluY2x1ZGUgJChJTkNMVURFX0RJUikvaW1hZ2UubWsKIAogS0VSTkVMX0xPQURBRERSIDo9IDB4
MDAwMDgwMDAKIAotU0lHTkFUVVJFOj0kKHNoZWxsIHByaW50ZiAiJS44cyIgJChTT1VSQ0VfREFU
RV9FUE9DSCkpCi0KIGRlZmluZSBCdWlsZC9ib290LXNjcgogCXJtIC1mICRALWJvb3Quc2NyCiAJ
c2VkIFwKLQkJLWUgJ3MjQFJPT1RAIyQoU0lHTkFUVVJFKSNnJyBcCisJCS1lICdzI0BST09UQCMk
KElNR19QQVJUX1NJR05BVFVSRSkjZycgXAogCQktZSAncyNARFRCQCMkKGZpcnN0d29yZCAkKERF
VklDRV9EVFMpKSNnJyBcCiAJCSQoQk9PVF9TQ1JJUFQpLmJvb3RzY3JpcHQgPiAkQC1uZXcuYm9v
dHNjcmlwdAogCW1raW1hZ2UgLUEgYXJtIC1PIGxpbnV4IC1UIHNjcmlwdCAtQyBub25lIC1hIDAg
LWUgMCAtZCAkQC1uZXcuYm9vdHNjcmlwdCAkQC1ib290LnNjcgpAQCAtNDIsNyArNDAsNyBAQCBk
ZWZpbmUgQnVpbGQvYm9vdC1pbWctZXh0NAogZW5kZWYKIAogZGVmaW5lIEJ1aWxkL3NkY2FyZC1p
bWcKLQlTSUdOQVRVUkU9IiQoU0lHTkFUVVJFKSIgXAorCVNJR05BVFVSRT0iJChJTUdfUEFSVF9T
SUdOQVRVUkUpIiBcCiAJLi9nZW5fbXZlYnVfc2RjYXJkX2ltZy5zaCAkQCBcCiAJCSQoaWYgJChV
Qk9PVCksJChTVEFHSU5HX0RJUl9JTUFHRSkvJChVQk9PVCkpIFwKIAkJYyAkKENPTkZJR19UQVJH
RVRfS0VSTkVMX1BBUlRTSVpFKSAkQC5ib290IFwKQEAgLTUwLDcgKzQ4LDcgQEAgZGVmaW5lIEJ1
aWxkL3NkY2FyZC1pbWcKIGVuZGVmCiAKIGRlZmluZSBCdWlsZC9zZGNhcmQtaW1nLWV4dDQKLQlT
SUdOQVRVUkU9IiQoU0lHTkFUVVJFKSIgXAorCVNJR05BVFVSRT0iJChJTUdfUEFSVF9TSUdOQVRV
UkUpIiBcCiAJLi9nZW5fbXZlYnVfc2RjYXJkX2ltZy5zaCAkQCBcCiAJCSQoaWYgJChVQk9PVCks
JChTVEFHSU5HX0RJUl9JTUFHRSkvJChVQk9PVCkpIFwKIAkJODMgJChDT05GSUdfVEFSR0VUX0tF
Uk5FTF9QQVJUU0laRSkgJEAuYm9vdGltZyBcCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvdGVn
cmEvaW1hZ2UvTWFrZWZpbGUgYi90YXJnZXQvbGludXgvdGVncmEvaW1hZ2UvTWFrZWZpbGUKaW5k
ZXggMmNlODY1OTk5NTRjLi4xMGJhZGE5YzM4YjEgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC90
ZWdyYS9pbWFnZS9NYWtlZmlsZQorKysgYi90YXJnZXQvbGludXgvdGVncmEvaW1hZ2UvTWFrZWZp
bGUKQEAgLTcsOCArNyw2IEBACiBpbmNsdWRlICQoVE9QRElSKS9ydWxlcy5tawogaW5jbHVkZSAk
KElOQ0xVREVfRElSKS9pbWFnZS5tawogCi1TSUdOQVRVUkU6PSQoc2hlbGwgcHJpbnRmICIlLjhz
IiAkKFNPVVJDRV9EQVRFX0VQT0NIKSkKLQogZGVmaW5lIEJ1aWxkL3RlZ3JhLXNkY2FyZAogCXJt
IC1mUiAkQC5ib290CiAJbWtkaXIgLXAgJEAuYm9vdApAQCAtMTcsNyArMTUsNyBAQCBkZWZpbmUg
QnVpbGQvdGVncmEtc2RjYXJkCiAJCSQoZm9yZWFjaCBkdGIsJChERVZJQ0VfRFRTKSwkKENQKSAk
KERUU19ESVIpLyQoZHRiKS5kdGIgJEAuYm9vdCksIFwKIAkJJChDUCkgJChEVFNfRElSKS8qLmR0
YiAkQC5ib290KQogCXNlZCBcCi0JCS1lICdzI0BST09UQCMkKFNJR05BVFVSRSkjZycgXAorCQkt
ZSAncyNAUk9PVEAjJChJTUdfUEFSVF9TSUdOQVRVUkUpI2cnIFwKIAkJLWUgJ3MjQEtFUk5FTEAj
JChLRVJORUxfTkFNRSkjZycgXAogCQkkKEJPT1RfU0NSSVBUKSA+ICRALWJvb3Quc2NyCiAJbWtp
bWFnZSAtQSBhcm0gLU8gbGludXggLVQgc2NyaXB0IC1DIG5vbmUgLWEgMCAtZSAwIFwKQEAgLTI1
LDcgKzIzLDcgQEAgZGVmaW5lIEJ1aWxkL3RlZ3JhLXNkY2FyZAogCQktZCAkQC1ib290LnNjciBc
CiAJCSRALmJvb3QvYm9vdC5zY3IKIAotCVNJR05BVFVSRT0iJChTSUdOQVRVUkUpIiBcCisJU0lH
TkFUVVJFPSIkKElNR19QQVJUX1NJR05BVFVSRSkiIFwKIAkkKFNDUklQVF9ESVIpL2dlbl9pbWFn
ZV9nZW5lcmljLnNoIFwKIAkJJEAgXAogCQkkKENPTkZJR19UQVJHRVRfS0VSTkVMX1BBUlRTSVpF
KSAkQC5ib290IFwKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC94ODYvaW1hZ2UvTWFrZWZpbGUg
Yi90YXJnZXQvbGludXgveDg2L2ltYWdlL01ha2VmaWxlCmluZGV4IGFjNzBlNzcxYzg2Zi4uNDM4
M2JjZGNiMmIxIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgveDg2L2ltYWdlL01ha2VmaWxlCisr
KyBiL3RhcmdldC9saW51eC94ODYvaW1hZ2UvTWFrZWZpbGUKQEAgLTQwLDkgKzQwLDggQEAgaWZu
ZXEgKCQoR1JVQl9URVJNSU5BTFMpLCkKICAgR1JVQl9URVJNSU5BTF9DT05GSUcgOj0gdGVybWlu
YWxfaW5wdXQgJChHUlVCX1RFUk1JTkFMUyk7IHRlcm1pbmFsX291dHB1dCAkKEdSVUJfVEVSTUlO
QUxTKQogZW5kaWYKIAotU0lHTkFUVVJFOj0kKHNoZWxsIHBlcmwgLWUgJ3ByaW50ZigiJTA4eCIs
IHJhbmQoMHhGRkZGRkZGRikpJykKIFJPT1RQQVJUOj0kKGNhbGwgcXN0cmlwLCQoQ09ORklHX1RB
UkdFVF9ST09URlNfUEFSVE5BTUUpKQotUk9PVFBBUlQ6PSQoaWYgJChST09UUEFSVCksJChST09U
UEFSVCksUEFSVFVVSUQ9JChTSUdOQVRVUkUpLTAyKQorUk9PVFBBUlQ6PSQoaWYgJChST09UUEFS
VCksJChST09UUEFSVCksUEFSVFVVSUQ9JChJTUdfUEFSVF9TSUdOQVRVUkUpLTAyKQogCiBHUlVC
X1RJTUVPVVQ6PSQoY2FsbCBxc3RyaXAsJChDT05GSUdfR1JVQl9USU1FT1VUKSkKIEdSVUJfVElU
TEU6PSQoY2FsbCBxc3RyaXAsJChDT05GSUdfR1JVQl9USVRMRSkpCkBAIC04MCw3ICs3OSw3IEBA
IGlmbmVxICgkKENPTkZJR19HUlVCX0lNQUdFUyksKQogCQktZSAncyNAVElUTEVAIyQoR1JVQl9U
SVRMRSkjZycgXAogCQkuL2dydWIuY2ZnID4gJChLRElSKS9yb290LmdydWIvYm9vdC9ncnViL2dy
dWIuY2ZnCiAJLSQoQ1ApICQoU1RBR0lOR19ESVJfUk9PVCkvYm9vdC8uICQoS0RJUikvcm9vdC5n
cnViL2Jvb3QvCi0JUEFERElORz0iMSIgU0lHTkFUVVJFPSIkKFNJR05BVFVSRSkiIFBBVEg9IiQo
VEFSR0VUX1BBVEgpIiAkKFNDUklQVF9ESVIpL2dlbl9pbWFnZV9nZW5lcmljLnNoIFwKKwlQQURE
SU5HPSIxIiBTSUdOQVRVUkU9IiQoSU1HX1BBUlRfU0lHTkFUVVJFKSIgUEFUSD0iJChUQVJHRVRf
UEFUSCkiICQoU0NSSVBUX0RJUikvZ2VuX2ltYWdlX2dlbmVyaWMuc2ggXAogCQkkKEJJTl9ESVIp
LyQoSU1HX0NPTUJJTkVEKS0kKDEpLmltZyBcCiAJCSQoQ09ORklHX1RBUkdFVF9LRVJORUxfUEFS
VFNJWkUpICQoS0RJUikvcm9vdC5ncnViIFwKIAkJJChDT05GSUdfVEFSR0VUX1JPT1RGU19QQVJU
U0laRSkgJChLRElSKS9yb290LiQoMSkgXAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=
