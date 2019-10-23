Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F189CE1855
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 12:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Fvw48V1eIEozYikY7y+t9ikGhcjhmm3wydoLsfOMC0=; b=g6DrxJelY/PGup
	rIPBBpuUjEMFfM6KCgntGlGtc61y8FPd1MjtKY+nOHWwgLxXD+E82Eup57exatHifGQ0tvsFzXFqU
	poob9qqBRbXY11szjuywFawoGhQvJpEqY9a3KrtdM6RH4/QqgP6tyX7GIhufxfkA0G4+9h0Y8kSd2
	KWENnPyE7ugVNy568aT/YE0MVodUBOKkNmI/DwhUaZjAzWunFdWzDujm36XCBsOw1F2tqBC0SxidV
	a4mU+3ZY4RYDZzkzI3N6/oeRLHfwG3uVCOSGXrdvFXGLNw1p4CedFTVgZSc+i4wBZH+rwzfegKe0p
	mH6Eqzwe1GLexOsd82MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNEHm-0001we-78; Wed, 23 Oct 2019 10:54:38 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNEH2-0000zL-4N
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 10:53:55 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D5DFC523E;
 Wed, 23 Oct 2019 12:53:45 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id e495fe76;
 Wed, 23 Oct 2019 12:53:35 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 12:53:34 +0200
Message-Id: <20191023105339.16326-4-ynezz@true.cz>
In-Reply-To: <20191023105339.16326-1-ynezz@true.cz>
References: <20191023105339.16326-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_035352_345396_298FAC31 
X-CRM114-Status: UNSURE (   7.84  )
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
Subject: [OpenWrt-Devel] [PATCH fwtool 3/8] iron out extra compiler warnings
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

IGZ3dG9vbC5jOjIxNjozOiBlcnJvcjogaWdub3JpbmcgcmV0dXJuIHZhbHVlIG9mIOKAmGZ0cnVu
Y2F0ZeKAmSwgZGVjbGFyZWQgd2l0aCBhdHRyaWJ1dGUgd2Fybl91bnVzZWRfcmVzdWx0IFstV2Vy
cm9yPXVudXNlZC1yZXN1bHRdCiBmd3Rvb2wuYzozNzY6MzogZXJyb3I6IGlnbm9yaW5nIHJldHVy
biB2YWx1ZSBvZiDigJhmdHJ1bmNhdGXigJksIGRlY2xhcmVkIHdpdGggYXR0cmlidXRlIHdhcm5f
dW51c2VkX3Jlc3VsdCBbLVdlcnJvcj11bnVzZWQtcmVzdWx0XQoKU2lnbmVkLW9mZi1ieTogUGV0
ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBmd3Rvb2wuYyB8IDEzICsrKysrKysrKyst
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2Z3dG9vbC5jIGIvZnd0b29sLmMKaW5kZXggODllODk1MTRhZDM1Li5jMDU5MzMx
YWQyMzEgMTAwNjQ0Ci0tLSBhL2Z3dG9vbC5jCisrKyBiL2Z3dG9vbC5jCkBAIC0yMTMsNyArMjEz
LDkgQEAgYWRkX2RhdGEoY29uc3QgY2hhciAqbmFtZSkKIAogCWlmIChyZXQpIHsKIAkJZmZsdXNo
KGZpcm13YXJlX2ZpbGUpOwotCQlmdHJ1bmNhdGUoZmlsZW5vKGZpcm13YXJlX2ZpbGUpLCBmaWxl
X2xlbik7CisJCXJldCA9IGZ0cnVuY2F0ZShmaWxlbm8oZmlybXdhcmVfZmlsZSksIGZpbGVfbGVu
KTsKKwkJaWYgKHJldCA8IDApCisJCQltc2coIkVycm9yIGR1cmluZyBmdHJ1bmNhdGU6ICVtXG4i
KTsKIAl9CiAKIAlyZXR1cm4gcmV0OwpAQCAtMzc0LDggKzM3NiwxMyBAQCBleHRyYWN0X2RhdGEo
Y29uc3QgY2hhciAqbmFtZSkKIAkJfQogCX0KIAotCWlmICghcmV0ICYmIHRydW5jYXRlX2ZpbGUp
Ci0JCWZ0cnVuY2F0ZShmaWxlbm8oZmlybXdhcmVfZmlsZSksIGRidWYuZmlsZV9sZW4pOworCWlm
ICghcmV0ICYmIHRydW5jYXRlX2ZpbGUpIHsKKwkJcmV0ID0gZnRydW5jYXRlKGZpbGVubyhmaXJt
d2FyZV9maWxlKSwgZGJ1Zi5maWxlX2xlbik7CisJCWlmIChyZXQgPCAwKSB7CisJCQltc2coIkVy
cm9yIGR1cmluZyBmdHJ1bmNhdGU6ICVtXG4iKTsKKwkJCWdvdG8gb3V0OworCQl9CisJfQogCiAJ
aWYgKHdyaXRlX3RydW5jYXRlZCkgewogCQlpZiAoZGJ1Zi5wcmV2KQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
