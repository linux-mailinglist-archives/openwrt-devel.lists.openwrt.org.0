Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F3C903F3
	for <lists+openwrt-devel@lfdr.de>; Fri, 16 Aug 2019 16:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O1i9nHLD1w5obh3gKFhDIyCaoUKL2iw/4dPFtJt1gwM=; b=PWT41s4rc84bbx
	1BMpfHRP68Kb8MS7bqWpwqwbj6qzx3CD3MxRaMJQWqp6heXTsFgboASCqz1a0a3tARnBUWm5pcjbC
	iMmq2PKTQvBtyJQ/ouBbkZq3c83D/4p9jtq7WzDwQacn/siPMRJJjDrUoZRrbFzM0dPVtzmuS2EmH
	gixpbY/Xzw11I6RroQqxHHU01uuIZ/EWBRE5fPCZPkxQcb1z4eGIGc+76VH+BQhVvRNKYVZK6Xsoc
	eRfhSMd4vhkPQjrnhGmvZQUJUyeeYZHniX8C40kv3eNkBcxz04m4s42/u9BZfoLft00bEfujZIpH8
	7YXIXbX0udCbvJbm1bSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hydEL-00052W-GU; Fri, 16 Aug 2019 14:29:25 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hydE5-000527-BO
 for openwrt-devel@lists.openwrt.org; Fri, 16 Aug 2019 14:29:10 +0000
Received: by mail-lf1-x141.google.com with SMTP id p197so4203721lfa.2
 for <openwrt-devel@lists.openwrt.org>; Fri, 16 Aug 2019 07:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nUBV0N53Viims39O+HuGT6Ke2WTunntr4caihGOenWA=;
 b=e0+UCGPv6aSQ7mRQl/eEE7omdTcbPLWpOqgCCYyqCz4EjSb/XtGe1mwCw8WZzEAYhG
 qR2gltCDPmvU+LjejARwGAd0J667YTLgnBrLHVBC6/dif8Mh7LI4brQV2Zr9pDiz7af3
 yl8Tv+XMiZHU97rYdn9e36DgxN0yMNQse0sXgrxozAQm0+bUUxioeWhUCo51CfwTOvJa
 kMzRb/IhbmdkYa1H4HbxUC5NcoQ2Dx7jNRcGAzzaJYTqMTiHKZCo0XNioQoR6mQtjJx9
 yw/jbgvdg4fALxyZDFGxXINfSDjan0hgA0xKFkY+EVtWhd0+zTS5G2M/eT+JSNOMltM/
 2StQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nUBV0N53Viims39O+HuGT6Ke2WTunntr4caihGOenWA=;
 b=eyjjJ2OMD0tWdtCjYQCIwZz3S/BH/OeaiyMst6z5D63kJfwEkRLGaS7ZsUeZI9Xlj/
 PuDH2DKXtv21EzwbEmY+CdHiJMTkspbDqrZEIr/x0idejmrFPosFl9+b3uMTJydx+ug6
 tyF6VzBPu6ChqEcjRs9SQ1eN9Pb3AARn+mTSR9gj2S474P2Qofk9a1QdIJYGM7VwlpPY
 uGmy8jRaUCNwcSXLf+Zmp80+USKssfJBe+jz/Np29QtcDnkqwZ3XrPYaXBLYCj5IwhiR
 NY8q2OjuDAapSEtxENKIq6wAf1nsiZs5hOQRBrW72MaxF6IRbZ4Ty7emwvYKlHj3WsKO
 xq3Q==
X-Gm-Message-State: APjAAAXbm0RVgQ9lGioDtg1AHy+h3gr8Of1DTnf+Pcl/perO2MkfZ1Yb
 6WW+w1OwHiJ/Q5/oHH/xgLmOpfM7
X-Google-Smtp-Source: APXvYqwNePJk1BsBDv4gnUBQVtOVSW/uDii00WR9z+M75bRzsZ+1IgkzCMTXtmw3ieCrqgqh0m7zcQ==
X-Received: by 2002:ac2:550c:: with SMTP id j12mr5293355lfk.171.1565965745121; 
 Fri, 16 Aug 2019 07:29:05 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id 2sm953976lfr.76.2019.08.16.07.29.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Aug 2019 07:29:04 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 16 Aug 2019 16:28:48 +0200
Message-Id: <20190816142848.14412-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_072909_428335_A11C6D63 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH procd] system: support passing "options" to
 the "sysupgrade" ubus method
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
 Jo-Philipp Wich <jo@mein.io>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKT2JqZWN0IHBhc3NlZCBh
cyAib3B0aW9ucyIgZ2V0cyB0cmFuc2xhdGVkIGludG8gZW52aXJvbm1lbnQgdmFyaWFibGVzClVQ
R1JBREVfT1BUXyouIEUuZy4KIm9wdGlvbnMiOiB7ICJmb28iOiA1IH0Kd2lsbCByZXN1bHQgaW4g
c2V0dGluZyBVUEdSQURFX09QVF9GT089NS4KClRoaXMgYWxsb3dzIHN0YWdlMiBzeXN1cGdyYWRl
IHRvIGdldCBvcHRpb25zIGV4cGxpY2l0bHkuIFNvIGZhciBpdCB3YXMKZ3Vlc3Npbmcgd2hhdCB0
byBkbyBieSBjaGVja2luZyBmb3IgZXhpc3RlbmNlIG9mIHNvbWUgZmlsZXMgKGUuZy4Kc3lzdXBn
cmFkZS50Z3opLgoKU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tp
LnBsPgotLS0KIGluaXRkL3ByZWluaXQuYyB8ICAyICstCiBzeXN0ZW0uYyAgICAgICAgfCAgNSAr
KysrLQogc3lzdXBncmFkZS5jICAgIHwgNDYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrLQogc3lzdXBncmFkZS5oICAgIHwgIDQgKysrLQogNCBmaWxlcyBjaGFu
Z2VkLCA1MyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2luaXRk
L3ByZWluaXQuYyBiL2luaXRkL3ByZWluaXQuYwppbmRleCBmYmIzNmRmLi4yYjRkZjRiIDEwMDY0
NAotLS0gYS9pbml0ZC9wcmVpbml0LmMKKysrIGIvaW5pdGQvcHJlaW5pdC5jCkBAIC03NSw3ICs3
NSw3IEBAIGNoZWNrX3N5c3VwZ3JhZGUodm9pZCkKIAogCWZjbG9zZShzeXN1cGdyYWRlKTsKIAot
CXN5c3VwZ3JhZGVfZXhlY191cGdyYWRlZChwcmVmaXgsIHBhdGgsIGNvbW1hbmQpOworCXN5c3Vw
Z3JhZGVfZXhlY191cGdyYWRlZChwcmVmaXgsIHBhdGgsIGNvbW1hbmQsIE5VTEwpOwogCiAJd2hp
bGUgKHRydWUpCiAJCXNsZWVwKDEpOwpkaWZmIC0tZ2l0IGEvc3lzdGVtLmMgYi9zeXN0ZW0uYwpp
bmRleCA4ZWQzZjkzLi43MzhmMzI3IDEwMDY0NAotLS0gYS9zeXN0ZW0uYworKysgYi9zeXN0ZW0u
YwpAQCAtMzgwLDYgKzM4MCw3IEBAIGVudW0gewogCVNZU1VQR1JBREVfUEFUSCwKIAlTWVNVUEdS
QURFX1BSRUZJWCwKIAlTWVNVUEdSQURFX0NPTU1BTkQsCisJU1lTVVBHUkFERV9PUFRJT05TLAog
CV9fU1lTVVBHUkFERV9NQVgKIH07CiAKQEAgLTM4Nyw2ICszODgsNyBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IGJsb2Jtc2dfcG9saWN5IHN5c3VwZ3JhZGVfcG9saWN5W19fU1lTVVBHUkFERV9NQVhd
ID0gewogCVtTWVNVUEdSQURFX1BBVEhdID0geyAubmFtZSA9ICJwYXRoIiwgLnR5cGUgPSBCTE9C
TVNHX1RZUEVfU1RSSU5HIH0sCiAJW1NZU1VQR1JBREVfUFJFRklYXSA9IHsgLm5hbWUgPSAicHJl
Zml4IiwgLnR5cGUgPSBCTE9CTVNHX1RZUEVfU1RSSU5HIH0sCiAJW1NZU1VQR1JBREVfQ09NTUFO
RF0gPSB7IC5uYW1lID0gImNvbW1hbmQiLCAudHlwZSA9IEJMT0JNU0dfVFlQRV9TVFJJTkcgfSwK
KwlbU1lTVVBHUkFERV9PUFRJT05TXSA9IHsgLm5hbWUgPSAib3B0aW9ucyIsIC50eXBlID0gQkxP
Qk1TR19UWVBFX1RBQkxFIH0sCiB9OwogCiBzdGF0aWMgaW50IHN5c3VwZ3JhZGUoc3RydWN0IHVi
dXNfY29udGV4dCAqY3R4LCBzdHJ1Y3QgdWJ1c19vYmplY3QgKm9iaiwKQEAgLTQwNCw3ICs0MDYs
OCBAQCBzdGF0aWMgaW50IHN5c3VwZ3JhZGUoc3RydWN0IHVidXNfY29udGV4dCAqY3R4LCBzdHJ1
Y3QgdWJ1c19vYmplY3QgKm9iaiwKIAogCXN5c3VwZ3JhZGVfZXhlY191cGdyYWRlZChibG9ibXNn
X2dldF9zdHJpbmcodGJbU1lTVVBHUkFERV9QUkVGSVhdKSwKIAkJCQkgYmxvYm1zZ19nZXRfc3Ry
aW5nKHRiW1NZU1VQR1JBREVfUEFUSF0pLAotCQkJCSB0YltTWVNVUEdSQURFX0NPTU1BTkRdID8g
YmxvYm1zZ19nZXRfc3RyaW5nKHRiW1NZU1VQR1JBREVfQ09NTUFORF0pIDogTlVMTCk7CisJCQkJ
IHRiW1NZU1VQR1JBREVfQ09NTUFORF0gPyBibG9ibXNnX2dldF9zdHJpbmcodGJbU1lTVVBHUkFE
RV9DT01NQU5EXSkgOiBOVUxMLAorCQkJCSB0YltTWVNVUEdSQURFX09QVElPTlNdKTsKIAogCS8q
IHN5c3VwZ3JhZGVfZXhlY191cGdyYWRlZCgpIHdpbGwgbmV2ZXIgcmV0dXJuIHVubGVzcyBzb21l
dGhpbmcgaGFzIGdvbmUgd3JvbmcgKi8KIAlyZXR1cm4gVUJVU19TVEFUVVNfVU5LTk9XTl9FUlJP
UjsKZGlmZiAtLWdpdCBhL3N5c3VwZ3JhZGUuYyBiL3N5c3VwZ3JhZGUuYwppbmRleCAwN2UzM2Y3
Li45OWEwOThlIDEwMDY0NAotLS0gYS9zeXN1cGdyYWRlLmMKKysrIGIvc3lzdXBncmFkZS5jCkBA
IC0xNywxNSArMTcsMjAgQEAKICNpbmNsdWRlICJ3YXRjaGRvZy5oIgogI2luY2x1ZGUgInN5c3Vw
Z3JhZGUuaCIKIAorI2luY2x1ZGUgPGN0eXBlLmg+CiAjaW5jbHVkZSA8c3RkaW8uaD4KICNpbmNs
dWRlIDxzdGRsaWIuaD4KICNpbmNsdWRlIDx1bmlzdGQuaD4KIAorI2luY2x1ZGUgPGxpYnVib3gv
YmxvYm1zZy5oPgogCi12b2lkIHN5c3VwZ3JhZGVfZXhlY191cGdyYWRlZChjb25zdCBjaGFyICpw
cmVmaXgsIGNoYXIgKnBhdGgsIGNoYXIgKmNvbW1hbmQpCit2b2lkIHN5c3VwZ3JhZGVfZXhlY191
cGdyYWRlZChjb25zdCBjaGFyICpwcmVmaXgsIGNoYXIgKnBhdGgsIGNoYXIgKmNvbW1hbmQsCisJ
CQkgICAgICBzdHJ1Y3QgYmxvYl9hdHRyICpvcHRpb25zKQogewogCWNoYXIgKndkdF9mZCA9IHdh
dGNoZG9nX2ZkKCk7CiAJY2hhciAqYXJndltdID0geyAiL3NiaW4vdXBncmFkZWQiLCBOVUxMLCBO
VUxMLCBOVUxMfTsKKwlzdHJ1Y3QgYmxvYl9hdHRyICpvcHRpb247CisJaW50IHJlbTsKIAlpbnQg
cmV0OwogCiAJcmV0ID0gY2hyb290KHByZWZpeCk7CkBAIC00MSw2ICs0Niw0NSBAQCB2b2lkIHN5
c3VwZ3JhZGVfZXhlY191cGdyYWRlZChjb25zdCBjaGFyICpwcmVmaXgsIGNoYXIgKnBhdGgsIGNo
YXIgKmNvbW1hbmQpCiAJCXdhdGNoZG9nX3NldF9jbG9leGVjKGZhbHNlKTsKIAkJc2V0ZW52KCJX
RFRGRCIsIHdkdF9mZCwgMSk7CiAJfQorCisJYmxvYm1zZ19mb3JfZWFjaF9hdHRyKG9wdGlvbiwg
b3B0aW9ucywgcmVtKSB7CisJCWNvbnN0IGNoYXIgKnByZWZpeCA9ICJVUEdSQURFX09QVF8iOwor
CQljaGFyICpuYW1lID0gbWFsbG9jKHN0cmxlbihwcmVmaXgpICsgc3RybGVuKGJsb2Jtc2dfbmFt
ZShvcHRpb24pKSk7CisJCWNoYXIgdmFsdWVbMTFdOworCQljaGFyICpjOworCQlpbnQgdG1wOwor
CisJCWlmICghbmFtZSkgeworCQkJY29udGludWU7CisJCX0KKwkJc3ByaW50ZihuYW1lLCAiJXMl
cyIsIHByZWZpeCwgYmxvYm1zZ19uYW1lKG9wdGlvbikpOworCQlmb3IgKGMgPSBuYW1lICsgc3Ry
bGVuKHByZWZpeCk7ICpjOyBjKyspIHsKKwkJCSpjID0gdG91cHBlcigqYyk7CisJCX0KKworCQlz
d2l0Y2ggKGJsb2Jtc2dfdHlwZShvcHRpb24pKSB7CisJCWNhc2UgQkxPQk1TR19UWVBFX0lOVDMy
OgorCQkJdG1wID0gYmxvYm1zZ19nZXRfdTMyKG9wdGlvbik7CisJCQlicmVhazsKKwkJY2FzZSBC
TE9CTVNHX1RZUEVfSU5UMTY6CisJCQl0bXAgPSBibG9ibXNnX2dldF91MTYob3B0aW9uKTsKKwkJ
CWJyZWFrOworCQljYXNlIEJMT0JNU0dfVFlQRV9JTlQ4OgorCQkJdG1wID0gYmxvYm1zZ19nZXRf
dTgob3B0aW9uKTsKKwkJCWJyZWFrOworCQlkZWZhdWx0OgorCQkJZnByaW50ZihzdGRlcnIsICJP
cHRpb24gXCIlc1wiIGhhcyB1bnN1cHBvcnRlZCB0eXBlOiAlZFxuIiwKKwkJCQlibG9ibXNnX25h
bWUob3B0aW9uKSwgYmxvYm1zZ190eXBlKG9wdGlvbikpOworCQkJZnJlZShuYW1lKTsKKwkJCWNv
bnRpbnVlOworCQl9CisJCXNucHJpbnRmKHZhbHVlLCBzaXplb2YodmFsdWUpLCAiJXUiLCB0bXAp
OworCisJCXNldGVudihuYW1lLCB2YWx1ZSwgMSk7CisKKwkJZnJlZShuYW1lKTsKKwl9CisKIAll
eGVjdnAoYXJndlswXSwgYXJndik7CiAKIAkvKiBDbGVhbnVwIG9uIGZhaWx1cmUgKi8KZGlmZiAt
LWdpdCBhL3N5c3VwZ3JhZGUuaCBiL3N5c3VwZ3JhZGUuaAppbmRleCA4YzA5ZmM5Li5jODRlNDk0
IDEwMDY0NAotLS0gYS9zeXN1cGdyYWRlLmgKKysrIGIvc3lzdXBncmFkZS5oCkBAIC0xNCw4ICsx
NCwxMCBAQAogI2lmbmRlZiBfX1BST0NEX1NZU1VQR1JBREVfSAogI2RlZmluZSBfX1BST0NEX1NZ
U1VQR1JBREVfSAogCitzdHJ1Y3QgYmxvYl9hdHRyOwogCi12b2lkIHN5c3VwZ3JhZGVfZXhlY191
cGdyYWRlZChjb25zdCBjaGFyICpwcmVmaXgsIGNoYXIgKnBhdGgsIGNoYXIgKmNvbW1hbmQpOwor
dm9pZCBzeXN1cGdyYWRlX2V4ZWNfdXBncmFkZWQoY29uc3QgY2hhciAqcHJlZml4LCBjaGFyICpw
YXRoLCBjaGFyICpjb21tYW5kLAorCQkJICAgICAgc3RydWN0IGJsb2JfYXR0ciAqb3B0aW9ucyk7
CiAKIAogI2VuZGlmCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
