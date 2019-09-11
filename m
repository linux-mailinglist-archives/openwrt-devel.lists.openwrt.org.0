Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5222CAF8CB
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 11:22:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5iWDhNAWeldnFTUx3FmwgMB3hC++vcEGrlVX6DOOUWA=; b=PghjeXiuVt+9vr
	CEPMC8tED6OiMnWkq2yz8+PnSyHPj+6xHu7i/BrsfqRDWpMi8gy4mJnohJpljG7u12GOZdOg/EVBu
	XgTgakc/HL3hdbvd9+/c+attl/o6qBG4ZcdqKWWU4c0INcDECMawGzWMTm/5PVDGQtYtw0AtgiPt0
	zsLu5g7U/ZvBJ4jtqAVp/7aBI2C2z93LcWCbr32cLtAutv6Gf+xfIhbch1C/s1ZM67sJgzQNFM7rw
	6qlzjLj+JgdO5KYvLCqOPbfoJVuPUXqOTsmnMSrEe1j2xoE49PA3DQ01B/z/LDxVGeiy9gxPKmbAz
	s2kWO7lMbUW4MBRWD0DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ypi-00020c-Bt; Wed, 11 Sep 2019 09:22:38 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ypP-00020H-3a
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 09:22:20 +0000
Received: by mail-lj1-x241.google.com with SMTP id q22so14702145ljj.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Sep 2019 02:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=T0bE743lTpmK+k+K+4JbE3jOU1YMuaLljxOHBaWLmGo=;
 b=oFPiIAkHUNPKxEDB1i06SOpMbabFFbB1/wf5hC4tS3wxLv105BTgK6Z2aO6BuSNqSR
 x86g3y/3+e3XGmeoKNYaTc+UvXHBobf3jLVr6Qf0L+SNPijF0SNhhH5VKRzAnLsERSni
 kkR8qDsha61qXl68dJv+WWfHZyv9+6dS1rwF7iO7DgQ4Xd6hZRe799998ODgVtnTnFsh
 dLZ1xjEVEBQiYzVaE1ht0gaGnxQ8dmFaFXMtOcx3eU8s5vmkmEl46imcNBeO1+aOz3nz
 mFpwJGTewiF986nx/IXL979zcVQysoYRru0TYws91wdtmF9SzwVL/IafsAOynMe4Hm7L
 uAnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=T0bE743lTpmK+k+K+4JbE3jOU1YMuaLljxOHBaWLmGo=;
 b=KSkFSjm4+VF5nzL436PeLCDyuOZNOGDyxYHau4CfLh7FPpHms7jLAL3Ukeds6A8B9k
 /z+FLfK8GdXapt4FF8vcV5X5s1QilwnoyrZ1CU3rzZwzltX7vd12fUk57xFyTZ1e0K9h
 7bHbbk1WrkolbgBal91bKSqec4t/xpN+144jT88Ahph5NrjonHbYm2iPWpDLK//im8GK
 gJBicowLAZtSOCES+dBG3BMoHR1vTUgNqGuZGfzxsJ1cnwMU5s17gSuWCr7L4p/rW06+
 WQIgJcdK0Rhtix49aGQqIt2Q4pO+z9sqlKGwJ2BPNtcH6Ijmv4UGcILMXXP4ZO1xJ7ag
 aTRQ==
X-Gm-Message-State: APjAAAU0y8R61uUM23TxTHf3A2O8/wlmih4nE53X2aXg/keYh4g9F/C/
 xyenYomF4jUWBjJzF2d0jbhRvTwS
X-Google-Smtp-Source: APXvYqw1Naws99HbV6eb+NO6cwgYOEe0zyKQZJaAkAODOcFbDma5WQzuejJ6EeGYYIykbLNgTatZUw==
X-Received: by 2002:a2e:5bdd:: with SMTP id m90mr22136224lje.193.1568193736696; 
 Wed, 11 Sep 2019 02:22:16 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id h7sm1713162ljc.39.2019.09.11.02.22.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 02:22:16 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 11 Sep 2019 11:21:59 +0200
Message-Id: <20190911092159.29837-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_022219_146804_CCB8D976 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH procd] system: sysupgrade: send reply on
 error
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBwcm92aWRlcyBz
b21lIG1lYW5pbmdmdWwgaW5mbyBvbiB3aHkgc3lzdXBncmFkZSBoYXMgZmFpbGVkLgoKU2lnbmVk
LW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgotLS0KIHN5c3RlbS5j
IHwgMjUgKysrKysrKysrKysrKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIxIGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3lzdGVtLmMgYi9zeXN0ZW0u
YwppbmRleCAyYTVkNWJjLi40MDY4ZTY0IDEwMDY0NAotLS0gYS9zeXN0ZW0uYworKysgYi9zeXN0
ZW0uYwpAQCAtNTA4LDYgKzUwOCwyMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGJsb2Jtc2dfcG9s
aWN5IHN5c3VwZ3JhZGVfcG9saWN5W19fU1lTVVBHUkFERV9NQVhdID0gewogCVtTWVNVUEdSQURF
X09QVElPTlNdID0geyAubmFtZSA9ICJvcHRpb25zIiwgLnR5cGUgPSBCTE9CTVNHX1RZUEVfVEFC
TEUgfSwKIH07CiAKK3N0YXRpYyB2b2lkIHN5c3VwZ3JhZGVfZXJyb3Ioc3RydWN0IHVidXNfY29u
dGV4dCAqY3R4LAorCQkJICAgICBzdHJ1Y3QgdWJ1c19yZXF1ZXN0X2RhdGEgKnJlcSwKKwkJCSAg
ICAgY29uc3QgY2hhciAqbWVzc2FnZSkKK3sKKwl2b2lkICpjOworCisJYmxvYl9idWZfaW5pdCgm
YiwgMCk7CisKKwljID0gYmxvYm1zZ19vcGVuX3RhYmxlKCZiLCAiZXJyb3IiKTsKKwlibG9ibXNn
X2FkZF9zdHJpbmcoJmIsICJtZXNzYWdlIiwgbWVzc2FnZSk7CisJYmxvYm1zZ19jbG9zZV90YWJs
ZSgmYiwgYyk7CisKKwl1YnVzX3NlbmRfcmVwbHkoY3R4LCByZXEsIGIuaGVhZCk7Cit9CisKIHN0
YXRpYyBpbnQgc3lzdXBncmFkZShzdHJ1Y3QgdWJ1c19jb250ZXh0ICpjdHgsIHN0cnVjdCB1YnVz
X29iamVjdCAqb2JqLAogCQkgICAgICBzdHJ1Y3QgdWJ1c19yZXF1ZXN0X2RhdGEgKnJlcSwgY29u
c3QgY2hhciAqbWV0aG9kLAogCQkgICAgICBzdHJ1Y3QgYmxvYl9hdHRyICptc2cpCkBAIC01MzQs
OCArNTQ5LDEwIEBAIHN0YXRpYyBpbnQgc3lzdXBncmFkZShzdHJ1Y3QgdWJ1c19jb250ZXh0ICpj
dHgsIHN0cnVjdCB1YnVzX29iamVjdCAqb2JqLAogCWlmICghdGJbU1lTVVBHUkFERV9QQVRIXSB8
fCAhdGJbU1lTVVBHUkFERV9QUkVGSVhdKQogCQlyZXR1cm4gVUJVU19TVEFUVVNfSU5WQUxJRF9B
UkdVTUVOVDsKIAotCWlmICh2YWxpZGF0ZV9maXJtd2FyZV9pbWFnZV9jYWxsKGJsb2Jtc2dfZ2V0
X3N0cmluZyh0YltTWVNVUEdSQURFX1BBVEhdKSkpCisJaWYgKHZhbGlkYXRlX2Zpcm13YXJlX2lt
YWdlX2NhbGwoYmxvYm1zZ19nZXRfc3RyaW5nKHRiW1NZU1VQR1JBREVfUEFUSF0pKSkgeworCQlz
eXN1cGdyYWRlX2Vycm9yKGN0eCwgcmVxLCAiRmlybXdhcmUgaW1hZ2UgY291bGRuJ3QgYmUgdmFs
aWRhdGVkIik7CiAJCXJldHVybiBVQlVTX1NUQVRVU19VTktOT1dOX0VSUk9SOworCX0KIAogCWJs
b2Jtc2dfcGFyc2UodmFsaWRhdGlvbl9wb2xpY3ksIF9fVkFMSURBVElPTl9NQVgsIHZhbGlkYXRp
b24sIGJsb2JfZGF0YShiLmhlYWQpLCBibG9iX2xlbihiLmhlYWQpKTsKIApAQCAtNTQ1LDE0ICs1
NjIsMTQgQEAgc3RhdGljIGludCBzeXN1cGdyYWRlKHN0cnVjdCB1YnVzX2NvbnRleHQgKmN0eCwg
c3RydWN0IHVidXNfb2JqZWN0ICpvYmosCiAKIAlpZiAoIXZhbGlkKSB7CiAJCWlmICghZm9yY2Vh
YmxlKSB7Ci0JCQlmcHJpbnRmKHN0ZGVyciwgIkZpcm13YXJlIGltYWdlIGlzIGJyb2tlbiBhbmQg
Y2Fubm90IGJlIGluc3RhbGxlZFxuIik7CisJCQlzeXN1cGdyYWRlX2Vycm9yKGN0eCwgcmVxLCAi
RmlybXdhcmUgaW1hZ2UgaXMgYnJva2VuIGFuZCBjYW5ub3QgYmUgaW5zdGFsbGVkIik7CiAJCQly
ZXR1cm4gVUJVU19TVEFUVVNfTk9UX1NVUFBPUlRFRDsKIAkJfSBlbHNlIGlmICghdGJbU1lTVVBH
UkFERV9GT1JDRV0gfHwgIWJsb2Jtc2dfZ2V0X2Jvb2wodGJbU1lTVVBHUkFERV9GT1JDRV0pKSB7
Ci0JCQlmcHJpbnRmKHN0ZGVyciwgIkZpcm13YXJlIGltYWdlIGlzIGludmFsaWRcbiIpOworCQkJ
c3lzdXBncmFkZV9lcnJvcihjdHgsIHJlcSwgIkZpcm13YXJlIGltYWdlIGlzIGludmFsaWQiKTsK
IAkJCXJldHVybiBVQlVTX1NUQVRVU19OT1RfU1VQUE9SVEVEOwogCQl9CiAJfSBlbHNlIGlmICgh
YWxsb3dfYmFja3VwICYmIHRiW1NZU1VQR1JBREVfQkFDS1VQXSkgewotCQlmcHJpbnRmKHN0ZGVy
ciwgIkZpcm13YXJlIGltYWdlIGRvZXNuJ3QgYWxsb3cgcHJlc2VydmluZyBhIGJhY2t1cFxuIik7
CisJCXN5c3VwZ3JhZGVfZXJyb3IoY3R4LCByZXEsICJGaXJtd2FyZSBpbWFnZSBkb2Vzbid0IGFs
bG93IHByZXNlcnZpbmcgYSBiYWNrdXAiKTsKIAkJcmV0dXJuIFVCVVNfU1RBVFVTX05PVF9TVVBQ
T1JURUQ7CiAJfQogCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
