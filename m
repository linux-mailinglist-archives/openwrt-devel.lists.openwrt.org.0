Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3740F127036
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:03:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zomRN85PaNdIXmPa+4El1p0tgDtgmz7gWQjkeLh6zec=; b=LGd28blRKRNdp/
	8ZGu24bzRIBUMIXuLhQHxKm3VCNFzj8F6LYNOSHtf+cYzhfOaqqLFUkZU0efPXj2RulBz8v39i/m+
	Kh9DMpRxQuRXadU6kBu7ekPuih+5Vj6fZNqCzpDDuK9gThqe/pvvl5B79Ho5e+03p2noMTgc7vuPq
	7Uac3npjnewZSvk8x1uABE4x5Au71UaOfOmdOZSlw8k6izO/U92ro7jVhlKaSYKhIVwJaP9QuQ8xJ
	DyoQXI40rhvB3xXCUZ7eYW5tNZuUIrgXzzGqnpnMUiLjX9gvsLmD1rMu4+yNMz5EWu82iKGfF0NQT
	8fxy+LRsx+9/Pta8+HEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3sv-0000o7-0w; Thu, 19 Dec 2019 22:03:05 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3ot-0000xa-WD
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:59:01 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9E3474B57;
 Thu, 19 Dec 2019 22:58:52 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f9054405;
 Thu, 19 Dec 2019 22:58:39 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:33 +0100
Message-Id: <20191219215836.21773-18-ynezz@true.cz>
In-Reply-To: <20191219215836.21773-1-ynezz@true.cz>
References: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135856_364508_92EF6FF3 
X-CRM114-Status: UNSURE (   8.95  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 17/20] Replace use of
 blobmsg_check_attr by blobmsg_check_attr_len
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
 Tobias Schramm <tobleminer@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogVG9iaWFzIFNjaHJhbW0gPHRvYmxlbWluZXJAZ21haWwuY29tPgoKYmxvYm1zZ19jaGVj
a19hdHRyX2xlbiBhZGRzIGEgbGVuZ3RoIGxpbWl0IHNwZWNpZnlpbmcgdGhlIG1heCBvZmZzZXQK
ZnJvbSBhdHRyIHRoYXQgY2FuIGJlIHJlYWQgc2FmZWx5LgoKU2lnbmVkLW9mZi1ieTogVG9iaWFz
IFNjaHJhbW0gPHRvYmxlbWluZXJAZ21haWwuY29tPgpbcmViYXNlZCBhbmQgcmV3b3JrZWQsIGxp
bmUgd3JhcHBlZCBjb21taXQgbWVzc2FnZSwgX3NhZmUgLT4gX2xlbl0KU2lnbmVkLW9mZi1ieTog
UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBibG9ibXNnLmMgfCA2MCArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tCiBibG9ibXNn
LmggfCAgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA0OCBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9ibG9ibXNnLmMgYi9ibG9ibXNnLmMKaW5kZXggNzFkNGEzNmE2
NDdjLi5mYmM2ZDJkZTkxMzUgMTAwNjQ0Ci0tLSBhL2Jsb2Jtc2cuYworKysgYi9ibG9ibXNnLmMK
QEAgLTMzLDM4ICszMyw3MCBAQCBibG9ibXNnX25hbWVsZW4oY29uc3Qgc3RydWN0IGJsb2Jtc2df
aGRyICpoZHIpCiAKIGJvb2wgYmxvYm1zZ19jaGVja19hdHRyKGNvbnN0IHN0cnVjdCBibG9iX2F0
dHIgKmF0dHIsIGJvb2wgbmFtZSkKIHsKKwlyZXR1cm4gYmxvYm1zZ19jaGVja19hdHRyX2xlbihh
dHRyLCBuYW1lLCBibG9iX3Jhd19sZW4oYXR0cikpOworfQorCitzdGF0aWMgYm9vbCBibG9ibXNn
X2NoZWNrX25hbWUoY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAqYXR0ciwgc2l6ZV90IGxlbiwgYm9v
bCBuYW1lKQoreworCWNoYXIgKmxpbWl0ID0gKGNoYXIgKikgYXR0ciArIGxlbjsKIAljb25zdCBz
dHJ1Y3QgYmxvYm1zZ19oZHIgKmhkcjsKLQljb25zdCBjaGFyICpkYXRhOwotCXNpemVfdCBsZW47
Ci0JaW50IGlkOwogCi0JaWYgKGJsb2JfbGVuKGF0dHIpIDwgc2l6ZW9mKHN0cnVjdCBibG9ibXNn
X2hkcikpCisJaGRyID0gYmxvYl9kYXRhKGF0dHIpOworCWlmIChuYW1lICYmICFoZHItPm5hbWVs
ZW4pCiAJCXJldHVybiBmYWxzZTsKIAotCWhkciA9ICh2b2lkICopIGF0dHItPmRhdGE7Ci0JaWYg
KCFoZHItPm5hbWVsZW4gJiYgbmFtZSkKKwlpZiAoKGNoYXIgKikgaGRyLT5uYW1lICsgYmxvYm1z
Z19uYW1lbGVuKGhkcikgPiBsaW1pdCkKIAkJcmV0dXJuIGZhbHNlOwogCi0JaWYgKGJsb2Jtc2df
bmFtZWxlbihoZHIpID4gYmxvYl9sZW4oYXR0cikgLSBzaXplb2Yoc3RydWN0IGJsb2Jtc2dfaGRy
KSkKKwlpZiAoYmxvYm1zZ19uYW1lbGVuKGhkcikgPiAoYmxvYl9sZW4oYXR0cikgLSBzaXplb2Yo
c3RydWN0IGJsb2Jtc2dfaGRyKSkpCiAJCXJldHVybiBmYWxzZTsKIAogCWlmIChoZHItPm5hbWVb
YmxvYm1zZ19uYW1lbGVuKGhkcildICE9IDApCiAJCXJldHVybiBmYWxzZTsKIAotCWlkID0gYmxv
Yl9pZChhdHRyKTsKLQlsZW4gPSBibG9ibXNnX2RhdGFfbGVuKGF0dHIpOwotCWlmIChsZW4gPiBi
bG9iX3Jhd19sZW4oYXR0cikpCi0JCXJldHVybiBmYWxzZTsKKwlyZXR1cm4gdHJ1ZTsKK30KKwor
c3RhdGljIGNvbnN0IGNoYXIqIGJsb2Jtc2dfY2hlY2tfZGF0YShjb25zdCBzdHJ1Y3QgYmxvYl9h
dHRyICphdHRyLCBzaXplX3QgbGVuLCBzaXplX3QgKmRhdGFfbGVuKQoreworCWNoYXIgKmxpbWl0
ID0gKGNoYXIgKikgYXR0ciArIGxlbjsKKwljb25zdCBjaGFyICpkYXRhOworCisJKmRhdGFfbGVu
ID0gYmxvYm1zZ19kYXRhX2xlbihhdHRyKTsKKwlpZiAoKmRhdGFfbGVuID4gYmxvYl9yYXdfbGVu
KGF0dHIpKQorCQlyZXR1cm4gTlVMTDsKIAogCWRhdGEgPSBibG9ibXNnX2RhdGEoYXR0cik7CisJ
aWYgKGRhdGEgKyAqZGF0YV9sZW4gPiBsaW1pdCkKKwkJcmV0dXJuIE5VTEw7CisKKwlyZXR1cm4g
ZGF0YTsKK30KKworYm9vbCBibG9ibXNnX2NoZWNrX2F0dHJfbGVuKGNvbnN0IHN0cnVjdCBibG9i
X2F0dHIgKmF0dHIsIGJvb2wgbmFtZSwgc2l6ZV90IGxlbikKK3sKKwljb25zdCBjaGFyICpkYXRh
OworCXNpemVfdCBkYXRhX2xlbjsKKwlpbnQgaWQ7CiAKKwlpZiAobGVuIDwgc2l6ZW9mKHN0cnVj
dCBibG9iX2F0dHIpKQorCQlyZXR1cm4gZmFsc2U7CisKKwlpZiAoIWJsb2Jtc2dfY2hlY2tfbmFt
ZShhdHRyLCBsZW4sIG5hbWUpKQorCQlyZXR1cm4gZmFsc2U7CisKKwlpZCA9IGJsb2JfaWQoYXR0
cik7CiAJaWYgKGlkID4gQkxPQk1TR19UWVBFX0xBU1QpCiAJCXJldHVybiBmYWxzZTsKIAogCWlm
ICghYmxvYl90eXBlW2lkXSkKIAkJcmV0dXJuIHRydWU7CiAKLQlyZXR1cm4gYmxvYl9jaGVja190
eXBlKGRhdGEsIGxlbiwgYmxvYl90eXBlW2lkXSk7CisJZGF0YSA9IGJsb2Jtc2dfY2hlY2tfZGF0
YShhdHRyLCBsZW4sICZkYXRhX2xlbik7CisJaWYgKCFkYXRhKQorCQlyZXR1cm4gZmFsc2U7CisK
KwlyZXR1cm4gYmxvYl9jaGVja190eXBlKGRhdGEsIGRhdGFfbGVuLCBibG9iX3R5cGVbaWRdKTsK
IH0KIAogaW50IGJsb2Jtc2dfY2hlY2tfYXJyYXkoY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAqYXR0
ciwgaW50IHR5cGUpCkBAIC0xMTUsNyArMTQ3LDcgQEAgaW50IGJsb2Jtc2dfcGFyc2VfYXJyYXko
Y29uc3Qgc3RydWN0IGJsb2Jtc2dfcG9saWN5ICpwb2xpY3ksIGludCBwb2xpY3lfbGVuLAogCQkg
ICAgYmxvYl9pZChhdHRyKSAhPSBwb2xpY3lbaV0udHlwZSkKIAkJCWNvbnRpbnVlOwogCi0JCWlm
ICghYmxvYm1zZ19jaGVja19hdHRyKGF0dHIsIGZhbHNlKSkKKwkJaWYgKCFibG9ibXNnX2NoZWNr
X2F0dHJfbGVuKGF0dHIsIGZhbHNlLCBsZW4pKQogCQkJcmV0dXJuIC0xOwogCiAJCWlmICh0Yltp
XSkKQEAgLTE2Miw3ICsxOTQsNyBAQCBpbnQgYmxvYm1zZ19wYXJzZShjb25zdCBzdHJ1Y3QgYmxv
Ym1zZ19wb2xpY3kgKnBvbGljeSwgaW50IHBvbGljeV9sZW4sCiAJCQlpZiAoYmxvYm1zZ19uYW1l
bGVuKGhkcikgIT0gcHNsZW5baV0pCiAJCQkJY29udGludWU7CiAKLQkJCWlmICghYmxvYm1zZ19j
aGVja19hdHRyKGF0dHIsIHRydWUpKQorCQkJaWYgKCFibG9ibXNnX2NoZWNrX2F0dHJfbGVuKGF0
dHIsIHRydWUsIGxlbikpCiAJCQkJcmV0dXJuIC0xOwogCiAJCQlpZiAodGJbaV0pCmRpZmYgLS1n
aXQgYS9ibG9ibXNnLmggYi9ibG9ibXNnLmgKaW5kZXggMDBlMGZkYzFkNWM2Li5jNDQwMTU5NDJh
MzcgMTAwNjQ0Ci0tLSBhL2Jsb2Jtc2cuaAorKysgYi9ibG9ibXNnLmgKQEAgLTEwNyw2ICsxMDcs
OCBAQCBzdGF0aWMgaW5saW5lIHNpemVfdCBibG9ibXNnX2xlbihjb25zdCBzdHJ1Y3QgYmxvYl9h
dHRyICphdHRyKQogYm9vbCBibG9ibXNnX2NoZWNrX2F0dHIoY29uc3Qgc3RydWN0IGJsb2JfYXR0
ciAqYXR0ciwgYm9vbCBuYW1lKTsKIGJvb2wgYmxvYm1zZ19jaGVja19hdHRyX2xpc3QoY29uc3Qg
c3RydWN0IGJsb2JfYXR0ciAqYXR0ciwgaW50IHR5cGUpOwogCitib29sIGJsb2Jtc2dfY2hlY2tf
YXR0cl9sZW4oY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAqYXR0ciwgYm9vbCBuYW1lLCBzaXplX3Qg
bGVuKTsKKwogLyoKICAqIGJsb2Jtc2dfY2hlY2tfYXJyYXk6IHZhbGlkYXRlIGFycmF5L3RhYmxl
IGFuZCByZXR1cm4gc2l6ZQogICoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
