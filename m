Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48902AB1F0
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 07:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8bTcT5SSHUVHqVNe6U9tpFpbL72Lhh/M8PHQEqxlr4=; b=nge+7DEKUI0wnm
	8EdJBKgovcaNSI6+bRPqmNRqvumjQ/5g0l51lv1imdy1YHpfUaK4mtYIbFLqvhM+ndjPzsZt1EytI
	aHg/l0BxGy22Ec4imVHG78X3taM7uO3gxjwMl9cM8GQmCF1y+qoe4R+O1efdVqFZ92vzqkfK0NEre
	gg1PqUnw9qiHrnJeiaClLKyUm8/xYOPIc0tdI0q4NwWqbedZhs59lfIPRKiKOK1u8HSS5R+Xj4PuA
	qmZe0Ua8LEadly0WMiBLddBJ7XukwnNubKczAIaAJRI7B5B6bpwHIiKWWQkaJHsTnwIaAUIHisiaw
	KLh4yy8WKqEhRx2pAohw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i66XS-0007Qa-TT; Fri, 06 Sep 2019 05:12:02 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i66X1-00070m-4c
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 05:11:38 +0000
Received: by mail-lj1-x244.google.com with SMTP id x18so4800262ljh.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Sep 2019 22:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wSa0NRg7QRWipZ5NC1+A2+sn+Y0boJVHCD0NTdGyZks=;
 b=AYE2bbvDzIK6VUA7TdkSQKVPlEdME4L7NdiZy96t+vDbserMRMBtnfsrdvW446gDTR
 a0Gmh9FzIIDPojqY8pLZPKcS9K2zePF+SD2Gj/6E81PpFlao2wyHRZWT22YgM94/mDfF
 ahRWHbhuiMOxOYTR2avBTqbnljJ50oYIxpViH2v3kwRvGRkAXEfqhoAO4rkrQ4GU0ZG5
 nWZG/X3DE7zAQRPKI+TxA3uLLVomImYon8eRyqp3frUvz6WPEeBOrKvUtaAvJFkUyU7p
 LnzMdFMxAK/u8p84sQ28u+B/qprmVuBOkjHFcSi+80T2jUvFORB69NHgqYCd6X8bxk7a
 hqyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wSa0NRg7QRWipZ5NC1+A2+sn+Y0boJVHCD0NTdGyZks=;
 b=PS1a69VIsvki86F5oX9VfmuZ59k4tqkQ/x8y2ogr/kLrCFD4/f6Euwlgh4DjwLNSFG
 z/2yNdTwjChHDuzYTZSXzxm+A1/jZ4iJWAjTcSV3HXeC1DQT3pXNAWFKMN/uHttZ+4BO
 OwgDcwTtaoASBZAPYLcOtcKXsQDLwDPxKKCQu5MhZM2MjKOKo3Bj2xec43AkAUkmLoBW
 6K8UhtCYNMD7Pa/j5l0yHs8Yuc7lniy0yqKiA5asVt2hc9NKtUAtZD1EH33UKvo/caGa
 i4omK52WW/6gbB3AGuH4EGumjaGZjGsvUI1V0VR+b7gyyE1xfCtr0bK/dBjqgKLzQOzx
 3aTA==
X-Gm-Message-State: APjAAAX2T4D116/ODEBgnKIA/UIPctbBUkoB97w66vUgjElTlDungheC
 lxYcjnxPd8ZgFLZQ+AE4lol0I71j
X-Google-Smtp-Source: APXvYqyq1SvGyR4WTpoxjn2v3jvzKf0fPD0kouNUmCBrGaNfAoYfQDj7zVZKEsIRKnIPVg8YsxJqJQ==
X-Received: by 2002:a2e:89da:: with SMTP id c26mr4408950ljk.214.1567746691367; 
 Thu, 05 Sep 2019 22:11:31 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id m10sm869405lfo.69.2019.09.05.22.11.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 22:11:30 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 07:10:53 +0200
Message-Id: <20190906051054.18311-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190906051054.18311-1-zajec5@gmail.com>
References: <20190906051054.18311-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_221135_191593_60055056 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH procd 2/3] sysupgrade: support "backup"
 attribute
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Jonas Gorski <jonas.gorski@gmail.com>, Jo-Philipp Wich <jo@mein.io>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBuZXcgYXR0cmli
dXRlIGFsbG93cyBwYXNzaW5nIHBhdGggb2YgdGhlIGJhY2t1cCBhcmNoaXZlLiBJdApwcm92aWRl
cyBtdWNoIG1vcmUgZmxleGliaWxpdHkgdGhhbiBoYXJkY29kaW5nIC90bXAvc3lzdXBncmFkZS50
Z3ouIEl0Cm1heSBoZWxwIGF2b2lkaW5nIHNvbWUgY3AvbXYgZm9yIHVzZXItcHJvdmlkZWQgYmFj
a3VwIGFyY2hpdmUuCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVj
a2kucGw+Ci0tLQogaW5pdGQvcHJlaW5pdC5jIHwgMiArLQogc3lzdGVtLmMgICAgICAgIHwgMyAr
KysKIHN5c3VwZ3JhZGUuYyAgICB8IDYgKysrKy0tCiBzeXN1cGdyYWRlLmggICAgfCAzICsrLQog
NCBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2luaXRkL3ByZWluaXQuYyBiL2luaXRkL3ByZWluaXQuYwppbmRleCAyYjRkZjRiLi44
NGU2MmIwIDEwMDY0NAotLS0gYS9pbml0ZC9wcmVpbml0LmMKKysrIGIvaW5pdGQvcHJlaW5pdC5j
CkBAIC03NSw3ICs3NSw3IEBAIGNoZWNrX3N5c3VwZ3JhZGUodm9pZCkKIAogCWZjbG9zZShzeXN1
cGdyYWRlKTsKIAotCXN5c3VwZ3JhZGVfZXhlY191cGdyYWRlZChwcmVmaXgsIHBhdGgsIGNvbW1h
bmQsIE5VTEwpOworCXN5c3VwZ3JhZGVfZXhlY191cGdyYWRlZChwcmVmaXgsIHBhdGgsIE5VTEws
IGNvbW1hbmQsIE5VTEwpOwogCiAJd2hpbGUgKHRydWUpCiAJCXNsZWVwKDEpOwpkaWZmIC0tZ2l0
IGEvc3lzdGVtLmMgYi9zeXN0ZW0uYwppbmRleCBhZDI0YTMwLi45OGZjYjY2IDEwMDY0NAotLS0g
YS9zeXN0ZW0uYworKysgYi9zeXN0ZW0uYwpAQCAtNDkyLDYgKzQ5Miw3IEBAIHN0YXRpYyBpbnQg
dmFsaWRhdGVfZmlybXdhcmVfaW1hZ2Uoc3RydWN0IHVidXNfY29udGV4dCAqY3R4LAogZW51bSB7
CiAJU1lTVVBHUkFERV9QQVRILAogCVNZU1VQR1JBREVfRk9SQ0UsCisJU1lTVVBHUkFERV9CQUNL
VVAsCiAJU1lTVVBHUkFERV9QUkVGSVgsCiAJU1lTVVBHUkFERV9DT01NQU5ELAogCVNZU1VQR1JB
REVfT1BUSU9OUywKQEAgLTUwMSw2ICs1MDIsNyBAQCBlbnVtIHsKIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgYmxvYm1zZ19wb2xpY3kgc3lzdXBncmFkZV9wb2xpY3lbX19TWVNVUEdSQURFX01BWF0gPSB7
CiAJW1NZU1VQR1JBREVfUEFUSF0gPSB7IC5uYW1lID0gInBhdGgiLCAudHlwZSA9IEJMT0JNU0df
VFlQRV9TVFJJTkcgfSwKIAlbU1lTVVBHUkFERV9GT1JDRV0gPSB7IC5uYW1lID0gImZvcmNlIiwg
LnR5cGUgPSBCTE9CTVNHX1RZUEVfQk9PTCB9LAorCVtTWVNVUEdSQURFX0JBQ0tVUF0gPSB7IC5u
YW1lID0gImJhY2t1cCIsIC50eXBlID0gQkxPQk1TR19UWVBFX1NUUklORyB9LAogCVtTWVNVUEdS
QURFX1BSRUZJWF0gPSB7IC5uYW1lID0gInByZWZpeCIsIC50eXBlID0gQkxPQk1TR19UWVBFX1NU
UklORyB9LAogCVtTWVNVUEdSQURFX0NPTU1BTkRdID0geyAubmFtZSA9ICJjb21tYW5kIiwgLnR5
cGUgPSBCTE9CTVNHX1RZUEVfU1RSSU5HIH0sCiAJW1NZU1VQR1JBREVfT1BUSU9OU10gPSB7IC5u
YW1lID0gIm9wdGlvbnMiLCAudHlwZSA9IEJMT0JNU0dfVFlQRV9UQUJMRSB9LApAQCAtNTUwLDYg
KzU1Miw3IEBAIHN0YXRpYyBpbnQgc3lzdXBncmFkZShzdHJ1Y3QgdWJ1c19jb250ZXh0ICpjdHgs
IHN0cnVjdCB1YnVzX29iamVjdCAqb2JqLAogCiAJc3lzdXBncmFkZV9leGVjX3VwZ3JhZGVkKGJs
b2Jtc2dfZ2V0X3N0cmluZyh0YltTWVNVUEdSQURFX1BSRUZJWF0pLAogCQkJCSBibG9ibXNnX2dl
dF9zdHJpbmcodGJbU1lTVVBHUkFERV9QQVRIXSksCisJCQkJIHRiW1NZU1VQR1JBREVfQkFDS1VQ
XSA/IGJsb2Jtc2dfZ2V0X3N0cmluZyh0YltTWVNVUEdSQURFX0JBQ0tVUF0pIDogTlVMTCwKIAkJ
CQkgdGJbU1lTVVBHUkFERV9DT01NQU5EXSA/IGJsb2Jtc2dfZ2V0X3N0cmluZyh0YltTWVNVUEdS
QURFX0NPTU1BTkRdKSA6IE5VTEwsCiAJCQkJIHRiW1NZU1VQR1JBREVfT1BUSU9OU10pOwogCmRp
ZmYgLS1naXQgYS9zeXN1cGdyYWRlLmMgYi9zeXN1cGdyYWRlLmMKaW5kZXggMTlmYjA1NC4uZmM1
ODhiMCAxMDA2NDQKLS0tIGEvc3lzdXBncmFkZS5jCisrKyBiL3N5c3VwZ3JhZGUuYwpAQCAtMjUs
NyArMjUsOCBAQAogCiAjaW5jbHVkZSA8bGlidWJveC9ibG9ibXNnLmg+CiAKLXZvaWQgc3lzdXBn
cmFkZV9leGVjX3VwZ3JhZGVkKGNvbnN0IGNoYXIgKnByZWZpeCwgY2hhciAqcGF0aCwgY2hhciAq
Y29tbWFuZCwKK3ZvaWQgc3lzdXBncmFkZV9leGVjX3VwZ3JhZGVkKGNvbnN0IGNoYXIgKnByZWZp
eCwgY2hhciAqcGF0aCwKKwkJCSAgICAgIGNvbnN0IGNoYXIgKmJhY2t1cCwgY2hhciAqY29tbWFu
ZCwKIAkJCSAgICAgIHN0cnVjdCBibG9iX2F0dHIgKm9wdGlvbnMpCiB7CiAJY2hhciAqd2R0X2Zk
ID0gd2F0Y2hkb2dfZmQoKTsKQEAgLTQ4LDcgKzQ5LDggQEAgdm9pZCBzeXN1cGdyYWRlX2V4ZWNf
dXBncmFkZWQoY29uc3QgY2hhciAqcHJlZml4LCBjaGFyICpwYXRoLCBjaGFyICpjb21tYW5kLAog
CQlzZXRlbnYoIldEVEZEIiwgd2R0X2ZkLCAxKTsKIAl9CiAKLQlzZXRlbnYoIlVQR1JBREVfQkFD
S1VQIiwgIi90bXAvc3lzdXBncmFkZS50Z3oiLCAxKTsKKwlpZiAoYmFja3VwKQorCQlzZXRlbnYo
IlVQR1JBREVfQkFDS1VQIiwgYmFja3VwLCAxKTsKIAogCWJsb2Jtc2dfZm9yX2VhY2hfYXR0cihv
cHRpb24sIG9wdGlvbnMsIHJlbSkgewogCQljb25zdCBjaGFyICpwcmVmaXggPSAiVVBHUkFERV9P
UFRfIjsKZGlmZiAtLWdpdCBhL3N5c3VwZ3JhZGUuaCBiL3N5c3VwZ3JhZGUuaAppbmRleCBjODRl
NDk0Li4yNjhlMmZkIDEwMDY0NAotLS0gYS9zeXN1cGdyYWRlLmgKKysrIGIvc3lzdXBncmFkZS5o
CkBAIC0xNiw3ICsxNiw4IEBACiAKIHN0cnVjdCBibG9iX2F0dHI7CiAKLXZvaWQgc3lzdXBncmFk
ZV9leGVjX3VwZ3JhZGVkKGNvbnN0IGNoYXIgKnByZWZpeCwgY2hhciAqcGF0aCwgY2hhciAqY29t
bWFuZCwKK3ZvaWQgc3lzdXBncmFkZV9leGVjX3VwZ3JhZGVkKGNvbnN0IGNoYXIgKnByZWZpeCwg
Y2hhciAqcGF0aCwKKwkJCSAgICAgIGNvbnN0IGNoYXIgKmJhY2t1cCwgY2hhciAqY29tbWFuZCwK
IAkJCSAgICAgIHN0cnVjdCBibG9iX2F0dHIgKm9wdGlvbnMpOwogCiAKLS0gCjIuMjEuMAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
