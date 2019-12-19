Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EED127033
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:02:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOiUJTbnt2qtdjejQgLB1D42mvlA6hIFdO58tRHca5c=; b=hhjc/h/Uz4FU7+
	YEJB6u2ex873M02q2m8ozss3HF64oatgheNZpBgxhEG3TKtqr5EY9cnN6QfW6NYUYvz39m8w+MX1t
	IM48XgbkIJs9VSWENGU9JluvwfajaGJ3uom5ubU1GnhhQsfJdQmLeUz2j2cnN801Ooj+psyrLNTP4
	vOpHzrKRtpZKUXh7+CRfS0TbFbkIKoGDZipw+JtMjvxACyAIUSPBuzfEvQfTuVg+LLNe5kugYg/1R
	RrDUr+yy4Iz1pvOT6sPBzMk9Uf+Iq/Q6O0i9O8xxKfiBEssOOrVIIqXmN+H6M8HfTo4glFIfH6jpG
	/KC6geNdZQZ/1KrxTCBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3sJ-00085y-Eq; Thu, 19 Dec 2019 22:02:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3or-0000vA-Ou
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:58:59 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0DF444B53;
 Thu, 19 Dec 2019 22:58:48 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id c5682223;
 Thu, 19 Dec 2019 22:58:38 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:30 +0100
Message-Id: <20191219215836.21773-15-ynezz@true.cz>
In-Reply-To: <20191219215836.21773-1-ynezz@true.cz>
References: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135854_013765_0FC2CC3A 
X-CRM114-Status: UNSURE (   8.78  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 14/20] blobmsg: make blobmsg_len and
 blobmsg_data_len return unsigned value
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

T25lIHVzdWFsbHkgZG9lc24ndCBndWFyZCBhZ2FpbnN0IG5lZ2F0aXZlIGxlbmd0aCB2YWx1ZXMg
aW4gdGhlIGNvZGUuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6
PgotLS0KIGJsb2Jtc2cuYyB8IDMgKystCiBibG9ibXNnLmggfCA0ICsrLS0KIDIgZmlsZXMgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Jsb2Jt
c2cuYyBiL2Jsb2Jtc2cuYwppbmRleCA5N2UwYzIwNTc1ZmYuLjFhOGI3ODNlOWJhOSAxMDA2NDQK
LS0tIGEvYmxvYm1zZy5jCisrKyBiL2Jsb2Jtc2cuYwpAQCAtMzUsNyArMzUsOCBAQCBib29sIGJs
b2Jtc2dfY2hlY2tfYXR0cihjb25zdCBzdHJ1Y3QgYmxvYl9hdHRyICphdHRyLCBib29sIG5hbWUp
CiB7CiAJY29uc3Qgc3RydWN0IGJsb2Jtc2dfaGRyICpoZHI7CiAJY29uc3QgY2hhciAqZGF0YTsK
LQlpbnQgaWQsIGxlbjsKKwlzaXplX3QgbGVuOworCWludCBpZDsKIAogCWlmIChibG9iX2xlbihh
dHRyKSA8IHNpemVvZihzdHJ1Y3QgYmxvYm1zZ19oZHIpKQogCQlyZXR1cm4gZmFsc2U7CmRpZmYg
LS1naXQgYS9ibG9ibXNnLmggYi9ibG9ibXNnLmgKaW5kZXggYjA2ZWY1OTdkOGM2Li4wYWYwODc4
OTAwMDAgMTAwNjQ0Ci0tLSBhL2Jsb2Jtc2cuaAorKysgYi9ibG9ibXNnLmgKQEAgLTg2LDcgKzg2
LDcgQEAgc3RhdGljIGlubGluZSB2b2lkICpibG9ibXNnX2RhdGEoY29uc3Qgc3RydWN0IGJsb2Jf
YXR0ciAqYXR0cikKIAlyZXR1cm4gZGF0YTsKIH0KIAotc3RhdGljIGlubGluZSBpbnQgYmxvYm1z
Z19kYXRhX2xlbihjb25zdCBzdHJ1Y3QgYmxvYl9hdHRyICphdHRyKQorc3RhdGljIGlubGluZSBz
aXplX3QgYmxvYm1zZ19kYXRhX2xlbihjb25zdCBzdHJ1Y3QgYmxvYl9hdHRyICphdHRyKQogewog
CXVpbnQ4X3QgKnN0YXJ0LCAqZW5kOwogCkBAIC05OSw3ICs5OSw3IEBAIHN0YXRpYyBpbmxpbmUg
aW50IGJsb2Jtc2dfZGF0YV9sZW4oY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAqYXR0cikKIAlyZXR1
cm4gYmxvYl9sZW4oYXR0cikgLSAoZW5kIC0gc3RhcnQpOwogfQogCi1zdGF0aWMgaW5saW5lIGlu
dCBibG9ibXNnX2xlbihjb25zdCBzdHJ1Y3QgYmxvYl9hdHRyICphdHRyKQorc3RhdGljIGlubGlu
ZSBzaXplX3QgYmxvYm1zZ19sZW4oY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAqYXR0cikKIHsKIAly
ZXR1cm4gYmxvYm1zZ19kYXRhX2xlbihhdHRyKTsKIH0KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
