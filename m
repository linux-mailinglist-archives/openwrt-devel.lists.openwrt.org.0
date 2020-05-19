Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FA21D98B2
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 May 2020 15:58:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FER23OmYZ4KKRXha4wFc7zIOXD3r+N+ocabcSZ7rdFg=; b=H73qxWZnx+aawT
	JiAP4nORSxNqiY6wKik5EqkT46Ys/udJXmU7Kn1/5WEGZB4k8dJFl2TXHEO7Af1kmrTQTrWP7NfJ0
	1BKb9VqVpFQJF1jTFawDdas6g4kgPfQTSFNYfwpg0y2DZsov183SDmUffIo9F2lR2KGvi6vYllLKM
	zGM5UlBFAPARRXwpMqd9pg7RV7TvHvlNfBHCvu/1v2StW0pddkYuQlao66luOM48oGHsQy9yY48J3
	UP1uHBnFPWF9w/b/U8usg8uh9mPzEfqjqDhJXoYJvGREDGyfgmVbvun4mIMBrMFcSck7+asxHSDDP
	u6eobiGlcThyyHulogQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2lF-0002SD-BL; Tue, 19 May 2020 13:58:25 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2l4-0002Rr-5O
 for openwrt-devel@lists.openwrt.org; Tue, 19 May 2020 13:58:15 +0000
Received: by mail-wr1-x443.google.com with SMTP id i15so15980364wrx.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 May 2020 06:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cLMrimpXskOCR75KEmxZ/Ujrpho2BbH32aTqUYiYxPM=;
 b=XtIayLuLzyxwQ+javOsN+zlHzNHTWupHWMXAhTu8zv0XfsxF2elJDIy8YjVSkiObr2
 0pJn5Zw7GoFyBmDRAjrmKBXMKV+ED3QJWwyovX+sotiR2Xn/Bt0i+MTv3bkh2GfiSK0O
 lHEcIQKI2dRJysIg13sUsjTyRxMvYAYQJ/0/6hzSqWVtEWqn4ke9fFKrMq6qesZTLOoR
 9DmD/7V517f0eOkwVMrPR49ydPWMq8S9vfy4rTe+C+T9rtVIBAzWjQbbFQh5Gn3C26X3
 6Ys1Y1ydc3ds1ekJ8b9wUw9MD5UL7iCZxnhw1AwONGG52njCbEJrGa0Oe7ZT+LgBf2d7
 qtmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cLMrimpXskOCR75KEmxZ/Ujrpho2BbH32aTqUYiYxPM=;
 b=PjO5BVwDDzz374XVIKnyc531Y3m2XVyO69DOtLZPoRJDOiNpBHkfke+dXYmt0gOogb
 U19BoRVl39aoZZkoWmyMMYQLXJahQ9zDQgr3tTHxdmjMWmgPq9zGOfxg6YbRxAoPyTbK
 f/Ge91HxQla7Q5jewGs+I+7lfG2oFg/eNxqIXoht1ej+YO3ejBjEAXaDalhtoNvDtOjM
 kiEp6hwJFlho3j+7TnQQZoHJQcPUTAQBhTpp3uhxKh54iXs8NNDwXJwYBpww28FA8aW1
 1U5Iz/MqfF45J690l9v+G+4IrC+U944LBowkDWesVaiCDSyEFdZp4i8z7CPfg4AtT00X
 Kkzg==
X-Gm-Message-State: AOAM530UcBMsMVoI0YSeum8N3PoU9QgjH2dDfn+LWlIT0Nl/jmnjR/zg
 8qT4nQedPjT2OUk1oL0Cq7hdv2ccU6Q=
X-Google-Smtp-Source: ABdhPJymvZJQHJJlgDGsyMYDR2RifPPpHLLItFvZdQI23XBFYfzs2yJJgTr9TOD/KhMQG+pPOWozSA==
X-Received: by 2002:a5d:68c7:: with SMTP id p7mr27786915wrw.29.1589896691924; 
 Tue, 19 May 2020 06:58:11 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id m82sm4272257wmf.3.2020.05.19.06.58.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 06:58:11 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 19 May 2020 15:56:29 +0200
Message-ID: <4504793.NA6h3OzpFv@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_065814_219840_A187C00F 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] bcm63xx: pinctrl: fix BCM6348 groups
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
Cc: noltari@gmail.com, jonas.gorski@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlIGN1cnJlbnQgZHJpdmVyIGhhcyBzb21lIHRyb3VibGVzOgogLSBTb21lIGdyb3VwaW5ncyBh
cmUgd3JvbmcuCiAtIFRoZSBwaW5jdHJsIGdyb3VwMCBvd25zIHBpbnMgbmV2ZXIgdXNlZCAoYXQg
bGVhc3QgaW4gT3BlbndydCkgZm9yIGFueQogICBwaW5tdXguIFRoZSBkcml2ZXIgaGlqYWNrcyBh
bGwgdGhlIHBpbnMgb24gdGhlIGdyb3VwIGF2b2lkaW5nIGFueSBvdGhlcgogICB1c2UsIHNwaXRl
IHRoZXkncmUgZnJlZS4gSS5lLiBmb3IgYnV0dG9ucywgY2F1c2luZyB0aGlzIGtlcm5lbCBlcnJv
cjoKICAgWyAgNC43MzU5MjhdIGdwaW8ta2V5cy1wb2xsZWQga2V5czogdW5hYmxlIHRvIGNsYWlt
IGdwaW8gNDc5LCBlcnI9LTIyCiAgIFsgIDQuNzQyNjQyXSBncGlvLWtleXMtcG9sbGVkOiBwcm9i
ZSBvZiBrZXlzIGZhaWxlZCB3aXRoIGVycm9yIC0yMgogLSBNaW5vciBlcnJvcnMgYWJvdXQgZ3Jv
dXBpbmdzIG9uIHRoZSBkb2N1bWVudGF0aW9uCiAtIE1pc3NpbmcgImRpYWciIGdyb3VwaW5nIGlu
IGR0c2kKIC0gV3JvbmcgZ3JvdXBpbmdzIGluIGR0c2kKCkZpeCBpdCBieSBzZXR0aW5nIHRoZSBj
b3JyZWN0IGdyb3Vwcy4KQW5kIHJlbGF4IHRoZSBwaW4gY2FwdHVyaW5nLCBsZXR0aW5nIHRoZSBn
cGlvcyBiZWxvbmdpbmcgdG8gYW55IGdyb3VwIHRvCmJlIHVzZWQgZm9yIG90aGVyIHB1cnBvc2Vz
IGxpa2UgYnV0dG9ucy4gVGhpcyB3YXMgdGhlIGJlaGF2aW9yIHdpdGggc3RvY2sKZmlybXdhcmVz
IGFuZCBvbGQgT3BlbldydCB2ZXJzaW9ucyB3aGljaCBuZXZlciBjYXVzZWQgYW55IHRyb3VibGUu
CgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgR29uesOhbGV6IENhYmFuZWxhcyA8ZGdjYnVldUBnbWFp
bC5jb20+Ci0tLQpjaGFuZ2VzIGluIHYyOgogLSBVc2UgYSBkaWZmZXJlbnQgYXBwcm9hY2ggc2lu
Y2UgdGhlIGdyb3VwMCBtaWdodCBvd24gcGlucyBmb3IgdGhlIGRpYWcKICAgZnVuY3Rpb24gKHNw
aXRlIHRoaXMgaXMgbmV2ZXIgdXNlZCkuIEp1c3QgZG9uJ3QgaGlqYWNrIGFsbCB0aGUgcGlucyBi
eQogICB0aGUgcGluY3RybCBkcml2ZXIgKHRoZXkgYXJlbid0IDggbWVtYmVycyBncm91cCBwZXJm
ZWN0KS4KIC0gRml4IGJhZCBwaW4gZ3JvdXBpbmdzIGluIHNldmVyYWwgZHJpdmVyIHJlbGF0ZWQg
ZmlsZXMuCgogdGFyZ2V0L2xpbnV4L2JjbTYzeHgvZHRzL2JjbTYzNDguZHRzaSAgICAgICAgIHwg
IDkgKysrKy0tCiAuLi5kLUJDTTYzNDgtcGluY29udHJvbGxlci1iaW5kaW5nLWRvY3UucGF0Y2gg
fCAgNiArKy0tCiAuLi4tYWRkLWEtcGluY29udHJvbC1kcml2ZXItZm9yLUJDTTYzNDgucGF0Y2gg
fCAyOSArKystLS0tLS0tLS0tLS0tLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMo
KyksIDMwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9iY202M3h4L2R0
cy9iY202MzQ4LmR0c2kgYi90YXJnZXQvbGludXgvYmNtNjN4eC9kdHMvYmNtNjM0OC5kdHNpCmlu
ZGV4IGYzZTE3YmU1MzMuLjk1MWEzZmM0ZGYgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9iY202
M3h4L2R0cy9iY202MzQ4LmR0c2kKKysrIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvZHRzL2JjbTYz
NDguZHRzaQpAQCAtOTIsNyArOTIsNyBAQAogCQkJfTsKIAogCQkJcGluY3RybF9taWlfc25vb3A6
IG1paV9zbm9vcCB7Ci0JCQkJZnVuY3Rpb24gPSAiZXh0X2VwaHkiOworCQkJCWZ1bmN0aW9uID0g
Im1paV9zbm9vcCI7CiAJCQkJZ3JvdXBzID0gImdyb3VwMSIsICJncm91cDQiOwogCQkJfTsKIApA
QCAtMTIzLDcgKzEyMywxMiBAQAogCiAJCQlwaW5jdHJsX3V0b3BpYTogdXRvcGlhIHsKIAkJCQlm
dW5jdGlvbiA9ICJ1dG9waWEiOwotCQkJCWdyb3VwcyA9ICJncm91cDAiLCAiZ3JvdXAxIiwgImdy
b3VwMyI7CisJCQkJZ3JvdXBzID0gImdyb3VwMSIsICJncm91cDMiLCAiZ3JvdXA0IjsKKwkJCX07
CisKKwkJCXBpbmN0cmxfZGlhZzogZGlhZyB7CisJCQkJZnVuY3Rpb24gPSAiZGlhZyI7CisJCQkJ
Z3JvdXBzID0gImdyb3VwMCIsICJncm91cDEiLCAiZ3JvdXAyIiwgImdyb3VwMyIsICJncm91cDQi
OwogCQkJfTsKIAkJfTsKIApkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvcGF0Y2hl
cy01LjQvMTMzLURvY3VtZW50YXRpb24tYWRkLUJDTTYzNDgtcGluY29udHJvbGxlci1iaW5kaW5n
LWRvY3UucGF0Y2ggYi90YXJnZXQvbGludXgvYmNtNjN4eC9wYXRjaGVzLTUuNC8xMzMtRG9jdW1l
bnRhdGlvbi1hZGQtQkNNNjM0OC1waW5jb250cm9sbGVyLWJpbmRpbmctZG9jdS5wYXRjaAppbmRl
eCA2YmFjOTAzNzNjLi44MDBmMDU0MGNjIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvYmNtNjN4
eC9wYXRjaGVzLTUuNC8xMzMtRG9jdW1lbnRhdGlvbi1hZGQtQkNNNjM0OC1waW5jb250cm9sbGVy
LWJpbmRpbmctZG9jdS5wYXRjaAorKysgYi90YXJnZXQvbGludXgvYmNtNjN4eC9wYXRjaGVzLTUu
NC8xMzMtRG9jdW1lbnRhdGlvbi1hZGQtQkNNNjM0OC1waW5jb250cm9sbGVyLWJpbmRpbmctZG9j
dS5wYXRjaApAQCAtNDEsOSArNDEsOSBAQCBTaWduZWQtb2ZmLWJ5OiBKb25hcyBHb3Jza2kgPGpv
bmFzLmdvcnNraUBnbWFpbC5jb20+CiArCiArbmFtZQkJcGlucwlmdW5jdGlvbnMKICstLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQotK2dy
b3VwMAkJMzItMzYJZXh0X21paSwgdXRvcGlhLCBkaWFnCisrZ3JvdXAwCQkzMi0zNglleHRfbWlp
LCBkaWFnCiArZ3JvdXAxCQkyMi0zMQlleHRfZXBoeSwgbWlpX3Nub29wLCBtaWlfcGNjYXJkLAog
KwkJCXNwaV9tYXN0ZXJfdWFydCwgdXRvcGlhLCBkaWFnCiArZ3JvdXAyCQkxNi0yMQlwY2ksIGRp
YWcKLStncm91cDMJCTgtMTUJZXh0X21paSwgdXRvcGlhCi0rZ3JvdXA0CQkwLTcJZXh0X2VwaHks
IG1paV9zbm9vcCwgbGVnYWN5X2xlZCwgZGlhZworK2dyb3VwMwkJOC0xNQlleHRfbWlpLCB1dG9w
aWEsIGRpYWcKKytncm91cDQJCTAtNwlleHRfZXBoeSwgbWlpX3Nub29wLCBsZWdhY3lfbGVkLCB1
dG9waWEsIGRpYWcKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9iY202M3h4L3BhdGNoZXMtNS40
LzEzNC1waW5jdHJsLWFkZC1hLXBpbmNvbnRyb2wtZHJpdmVyLWZvci1CQ002MzQ4LnBhdGNoIGIv
dGFyZ2V0L2xpbnV4L2JjbTYzeHgvcGF0Y2hlcy01LjQvMTM0LXBpbmN0cmwtYWRkLWEtcGluY29u
dHJvbC1kcml2ZXItZm9yLUJDTTYzNDgucGF0Y2gKaW5kZXggYjQ4NzIzYzFiMy4uM2I2MTNmZGNh
NSAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvcGF0Y2hlcy01LjQvMTM0LXBpbmN0
cmwtYWRkLWEtcGluY29udHJvbC1kcml2ZXItZm9yLUJDTTYzNDgucGF0Y2gKKysrIGIvdGFyZ2V0
L2xpbnV4L2JjbTYzeHgvcGF0Y2hlcy01LjQvMTM0LXBpbmN0cmwtYWRkLWEtcGluY29udHJvbC1k
cml2ZXItZm9yLUJDTTYzNDgucGF0Y2gKQEAgLTM3LDcgKzM3LDcgQEAgU2lnbmVkLW9mZi1ieTog
Sm9uYXMgR29yc2tpIDxqb25hcy5nb3Jza2lAZ21haWwuY29tPgogK29iai0kKENPTkZJR19QSU5D
VFJMX0JDTTYzNDgpCSs9IHBpbmN0cmwtYmNtNjM0OC5vCiAtLS0gL2Rldi9udWxsCiArKysgYi9k
cml2ZXJzL3BpbmN0cmwvYmNtNjN4eC9waW5jdHJsLWJjbTYzNDguYwotQEAgLTAsMCArMSwzOTEg
QEAKK0BAIC0wLDAgKzEsMzcwIEBACiArLyoKICsgKiBUaGlzIGZpbGUgaXMgc3ViamVjdCB0byB0
aGUgdGVybXMgYW5kIGNvbmRpdGlvbnMgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYwogKyAqIExp
Y2Vuc2UuICBTZWUgdGhlIGZpbGUgIkNPUFlJTkciIGluIHRoZSBtYWluIGRpcmVjdG9yeSBvZiB0
aGlzIGFyY2hpdmUKQEAgLTIyNSwxNSArMjI1LDE2IEBAIFNpZ25lZC1vZmYtYnk6IEpvbmFzIEdv
cnNraSA8am9uYXMuZ29yc2tpQGdtYWlsLmNvbT4KICt9OwogKwogK3N0YXRpYyBjb25zdCBjaGFy
ICogY29uc3QgdXRvcGlhX2dyb3Vwc1tdID0gewotKwkiZ3JvdXAwIiwKICsJImdyb3VwMSIsCiAr
CSJncm91cDMiLAorKwkiZ3JvdXA0IiwKICt9OwogKwogK3N0YXRpYyBjb25zdCBjaGFyICogY29u
c3QgZGlhZ19ncm91cHNbXSA9IHsKICsJImdyb3VwMCIsCiArCSJncm91cDEiLAogKwkiZ3JvdXAy
IiwKKysJImdyb3VwMyIsCiArCSJncm91cDQiLAogK307CiArCkBAIC0zMzUsMjcgKzMzNiw2IEBA
IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEdvcnNraSA8am9uYXMuZ29yc2tpQGdtYWlsLmNvbT4KICsJ
cmV0dXJuIDA7CiArfQogKwotK3N0YXRpYyBpbnQgYmNtNjM0OF9ncGlvX3JlcXVlc3RfZW5hYmxl
KHN0cnVjdCBwaW5jdHJsX2RldiAqcGN0bGRldiwKLSsJCQkJICAgICAgIHN0cnVjdCBwaW5jdHJs
X2dwaW9fcmFuZ2UgKnJhbmdlLAotKwkJCQkgICAgICAgdW5zaWduZWQgb2Zmc2V0KQotK3sKLSsJ
c3RydWN0IGJjbTYzNDhfcGluY3RybCAqcGN0bCA9IHBpbmN0cmxfZGV2X2dldF9kcnZkYXRhKHBj
dGxkZXYpOwotKwlzdHJ1Y3QgcGluX2Rlc2MgKmRlc2M7Ci0rCXUzMiBtYXNrOwotKwotKwkvKiBk
b24ndCByZWNvbmZpZ3VyZSBpZiBhbHJlYWR5IG11eGVkICovCi0rCWRlc2MgPSBwaW5fZGVzY19n
ZXQocGN0bGRldiwgb2Zmc2V0KTsKLSsJaWYgKGRlc2MtPm11eF91c2Vjb3VudCkKLSsJCXJldHVy
biAwOwotKwotKwltYXNrID0gR1JPVVBfTUFTSyhvZmZzZXQpOwotKwotKwkvKiBkaXNhYmxlIGFs
bCBmdW5jdGlvbnMgdXNpbmcgdGhpcyBwaW4gKi8KLSsJYmNtNjM0OF9ybXdfbXV4KHBjdGwsIG1h
c2ssIDApOwotKwotKwlyZXR1cm4gMDsKLSt9Ci0rCiArc3RhdGljIHN0cnVjdCBwaW5jdHJsX29w
cyBiY202MzQ4X3BjdGxfb3BzID0gewogKwkuZ2V0X2dyb3Vwc19jb3VudAk9IGJjbTYzNDhfcGlu
Y3RybF9nZXRfZ3JvdXBfY291bnQsCiArCS5nZXRfZ3JvdXBfbmFtZQkJPSBiY202MzQ4X3BpbmN0
cmxfZ2V0X2dyb3VwX25hbWUsCkBAIC0zNzEsOCArMzUxLDcgQEAgU2lnbmVkLW9mZi1ieTogSm9u
YXMgR29yc2tpIDxqb25hcy5nb3Jza2lAZ21haWwuY29tPgogKwkuZ2V0X2Z1bmN0aW9uX25hbWUJ
PSBiY202MzQ4X3BpbmN0cmxfZ2V0X2Z1bmNfbmFtZSwKICsJLmdldF9mdW5jdGlvbl9ncm91cHMJ
PSBiY202MzQ4X3BpbmN0cmxfZ2V0X2dyb3VwcywKICsJLnNldF9tdXgJCT0gYmNtNjM0OF9waW5j
dHJsX3NldF9tdXgsCi0rCS5ncGlvX3JlcXVlc3RfZW5hYmxlCT0gYmNtNjM0OF9ncGlvX3JlcXVl
c3RfZW5hYmxlLAotKwkuc3RyaWN0CQkJPSB0cnVlLAorKwkuc3RyaWN0CQkJPSBmYWxzZSwKICt9
OwogKwogK3N0YXRpYyBpbnQgYmNtNjM0OF9waW5jdHJsX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCi0tIAoyLjI2LjIKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
