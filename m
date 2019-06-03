Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F58233B1E
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Jun 2019 00:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xfDAdrIAiWgqRM+aNV+NENZyKtWZlcIvSAZhbJtqT3s=; b=EDA71+n/aM1DpJ
	TNWU9jfPgMLjRcnsAlL/mdtHlvPDuiEtEakAZFxC6YkQJiL1ox7fRVwVzocSyMZbNWbczw+pkXRwe
	n+Xyf3jQbSfZQIP3np5z+JPjvI6PPgZgJK8S1YoSihlWp968EfPeoXAytxv6Sj9zcsTjAdKbfAjij
	MtZukVAynQEV79/CwuQ9WE9YipLHWh1skmJpXcbPGnJ5ZwDRlmkG058tb9vFxeeLHBHRCic/WsmGr
	trTIR7vi/dmD2WGbv2FzHorIvWveVKTTgxvbJ3820H3WFXYFWkRXaAMh+uV0dJ+aeZLMlwuFni1aR
	8JOxs70yrf6oSJo8IyaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvMp-0001jr-6k; Mon, 03 Jun 2019 22:23:47 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvMh-0001jA-OI
 for openwrt-devel@lists.openwrt.org; Mon, 03 Jun 2019 22:23:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6856F4930;
 Tue,  4 Jun 2019 00:23:38 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id b1aec61a;
 Tue, 4 Jun 2019 00:23:36 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  4 Jun 2019 00:23:28 +0200
Message-Id: <1559600609-12539-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_152339_940660_9D61E09C 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] gpio-button-hotplug: use pr_debug and
 pr_err
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

cHJfZGVidWcgY2FuIGJlIHVzZWQgd2l0aCBkeW5hbWljIGRlYnVnZ2luZy4KClNpZ25lZC1vZmYt
Ynk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogLi4uL2dwaW8tYnV0dG9uLWhv
dHBsdWcvc3JjL2dwaW8tYnV0dG9uLWhvdHBsdWcuYyAgfCAyMyArKysrKystLS0tLS0tLS0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9wYWNrYWdlL2tlcm5lbC9ncGlvLWJ1dHRvbi1ob3RwbHVnL3NyYy9ncGlvLWJ1
dHRvbi1ob3RwbHVnLmMgYi9wYWNrYWdlL2tlcm5lbC9ncGlvLWJ1dHRvbi1ob3RwbHVnL3NyYy9n
cGlvLWJ1dHRvbi1ob3RwbHVnLmMKaW5kZXggMTFjOTE0ZDRlZjNjLi5kODE4OThmOTMyYTEgMTAw
NjQ0Ci0tLSBhL3BhY2thZ2Uva2VybmVsL2dwaW8tYnV0dG9uLWhvdHBsdWcvc3JjL2dwaW8tYnV0
dG9uLWhvdHBsdWcuYworKysgYi9wYWNrYWdlL2tlcm5lbC9ncGlvLWJ1dHRvbi1ob3RwbHVnL3Ny
Yy9ncGlvLWJ1dHRvbi1ob3RwbHVnLmMKQEAgLTI5LDIyICsyOSwxMSBAQAogI2luY2x1ZGUgPGxp
bnV4L29mX2lycS5oPgogI2luY2x1ZGUgPGxpbnV4L2dwaW9fa2V5cy5oPgogCi0jZGVmaW5lIERS
Vl9OQU1FCSJncGlvLWtleXMiCi0KICNkZWZpbmUgQkhfU0tCX1NJWkUJMjA0OAogCisjZGVmaW5l
IERSVl9OQU1FCSJncGlvLWtleXMiCiAjZGVmaW5lIFBGWAlEUlZfTkFNRSAiOiAiCiAKLSN1bmRl
ZiBCSF9ERUJVRwotCi0jaWZkZWYgQkhfREVCVUcKLSNkZWZpbmUgQkhfREJHKGZtdCwgYXJncy4u
LikgcHJpbnRrKEtFUk5fREVCVUcgIiVzOiAiIGZtdCwgRFJWX05BTUUsICMjYXJncyApCi0jZWxz
ZQotI2RlZmluZSBCSF9EQkcoZm10LCBhcmdzLi4uKSBkbyB7fSB3aGlsZSAoMCkKLSNlbmRpZgot
Ci0jZGVmaW5lIEJIX0VSUihmbXQsIGFyZ3MuLi4pIHByaW50ayhLRVJOX0VSUiAiJXM6ICIgZm10
LCBEUlZfTkFNRSwgIyNhcmdzICkKLQogc3RydWN0IGJoX3ByaXYgewogCXVuc2lnbmVkIGxvbmcJ
CXNlZW47CiB9OwpAQCAtMTM4LDcgKzEyNyw3IEBAIGludCBiaF9ldmVudF9hZGRfdmFyKHN0cnVj
dCBiaF9ldmVudCAqZXZlbnQsIGludCBhcmd2LCBjb25zdCBjaGFyICpmb3JtYXQsIC4uLikKIAlz
ID0gc2tiX3B1dChldmVudC0+c2tiLCBsZW4gKyAxKTsKIAlzdHJjcHkocywgYnVmKTsKIAotCUJI
X0RCRygiYWRkZWQgdmFyaWFibGUgJyVzJ1xuIiwgcyk7CisJcHJfZGVidWcoUEZYICJhZGRlZCB2
YXJpYWJsZSAnJXMnXG4iLCBzKTsKIAogCXJldHVybiAwOwogfQpAQCAtMjA1LDcgKzE5NCw3IEBA
IHN0YXRpYyB2b2lkIGJ1dHRvbl9ob3RwbHVnX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3Jr
KQogCiAgb3V0X2ZyZWVfc2tiOgogCWlmIChyZXQpIHsKLQkJQkhfRVJSKCJ3b3JrIGVycm9yICVk
XG4iLCByZXQpOworCQlwcl9lcnIoUEZYICJ3b3JrIGVycm9yICVkXG4iLCByZXQpOwogCQlrZnJl
ZV9za2IoZXZlbnQtPnNrYik7CiAJfQogIG91dF9mcmVlX2V2ZW50OgpAQCAtMjE3LDggKzIwNiw4
IEBAIHN0YXRpYyBpbnQgYnV0dG9uX2hvdHBsdWdfY3JlYXRlX2V2ZW50KGNvbnN0IGNoYXIgKm5h
bWUsIHVuc2lnbmVkIGludCB0eXBlLAogewogCXN0cnVjdCBiaF9ldmVudCAqZXZlbnQ7CiAKLQlC
SF9EQkcoImNyZWF0ZSBldmVudCwgbmFtZT0lcywgc2Vlbj0lbHUsIHByZXNzZWQ9JWRcbiIsCi0J
CW5hbWUsIHNlZW4sIHByZXNzZWQpOworCXByX2RlYnVnKFBGWCAiY3JlYXRlIGV2ZW50LCBuYW1l
PSVzLCBzZWVuPSVsdSwgcHJlc3NlZD0lZFxuIiwKKwkJIG5hbWUsIHNlZW4sIHByZXNzZWQpOwog
CiAJZXZlbnQgPSBremFsbG9jKHNpemVvZigqZXZlbnQpLCBHRlBfS0VSTkVMKTsKIAlpZiAoIWV2
ZW50KQpAQCAtMjU1LDcgKzI0NCw3IEBAIHN0YXRpYyB2b2lkIGJ1dHRvbl9ob3RwbHVnX2V2ZW50
KHN0cnVjdCBncGlvX2tleXNfYnV0dG9uX2RhdGEgKmRhdGEsCiAJdW5zaWduZWQgbG9uZyBzZWVu
ID0gamlmZmllczsKIAlpbnQgYnRuOwogCi0JQkhfREJHKCJldmVudCB0eXBlPSV1LCBjb2RlPSV1
LCB2YWx1ZT0lZFxuIiwgdHlwZSwgZGF0YS0+Yi0+Y29kZSwgdmFsdWUpOworCXByX2RlYnVnKFBG
WCAiZXZlbnQgdHlwZT0ldSwgY29kZT0ldSwgdmFsdWU9JWRcbiIsIHR5cGUsIGRhdGEtPmItPmNv
ZGUsIHZhbHVlKTsKIAogCWlmICgodHlwZSAhPSBFVl9LRVkpICYmICh0eXBlICE9IEVWX1NXKSkK
IAkJcmV0dXJuOwotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
