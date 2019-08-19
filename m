Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A789791F3D
	for <lists+openwrt-devel@lfdr.de>; Mon, 19 Aug 2019 10:44:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HDyMGYP+zyir94fIrdxYBuzyw+3Zp/npe77NZIN1tow=; b=dBT3IazhBa6pTj
	TSHMDgDUof0ONvKCcgdZFkN8w7sniAV9fKIE+1KJfeSzjfraBNkU18EtboUsySlE8NANMkxvBbTRo
	1mgQUiuPelX1xIG1coadA3IsKrGhmdJkjDliEC1StTz0RNrj1WUeTC0Jn5zcUOkyzvKqVaHaOShTX
	+XlERHdJJmdzu8PwU5EUFK7mVgf4vqWfQ+KZo/p/FGuLWpiyo5cu4CkJjLsIfCq+oLqbR+LVTe0HZ
	McMuRovdWzYK0k2eAJniH/nI/GDSIpnEGaTGrMyEWdDBjGXMeKBwz0X+A4Z+uYw6nweCxmt2ROOKJ
	umO+lyVdWjFQB16Il+Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdGn-0004qT-BL; Mon, 19 Aug 2019 08:44:05 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdFo-0004El-Ll
 for openwrt-devel@lists.openwrt.org; Mon, 19 Aug 2019 08:43:06 +0000
Received: by mail-lj1-x243.google.com with SMTP id x18so969818ljh.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 19 Aug 2019 01:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xXoVWCL3ZqaQ4FlfmIB9ZW+JRkt1a3+Y/F/qFyvFB3o=;
 b=S9x/f88o3GYZTvQa4u7aSfej1k/VGIieIHh/wynCINntMUg91PbVaD0vZG03VvXeiR
 SpZ4Mhu5jwShqgABdk0oV2Z95zDHvkb5jRkTxd53Qj6qyvlMRr4ZehLu66YLafeqS5XY
 jYs0hRNYAoq24fjzBS9qD9u/mil5SrAhr8K0PiQsbXwFa4g5aOgsHHQFUqO4zawigb7Y
 GGmP/o5EgcyTbOIdsLeLGDQu39r+uj44dzxjcB2PMfWscIvUEWP4165tVi/+LqL+y8aR
 9ZROGTsxEIvNKFFXZ+iSf1BgAT5VoA9NLRhNSOycf8n0P+Ot6PFpeQItcJ0scamxP7qr
 +9fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xXoVWCL3ZqaQ4FlfmIB9ZW+JRkt1a3+Y/F/qFyvFB3o=;
 b=bauIOAMivsG6p8Bq+bQO8M5NktpDzLYoeoeOXitJNqf1vL1etnKlBUIjSHyWATr+0t
 89sVyDdh1CzpGrWjAqCEW9+uSjGCazL+ANKuq4Az9V+xNDp8ukb/dc7+BLLnMI9H/P5Y
 Xr57laBdsXWi6zk7ltyC83dFlHzJ4U0RpYpr9xr3FBnVCQcDvERnT94nWoCQyDM/NABi
 nSwOhwU7KLr68sa//3tkwvgwJLFVY7+RO2QQQu/hCDvxmXAEKHfq6MEn2KQWWO5P2nwZ
 qLSnI2CVLbnV3ShvFbnOjeLq+NLNNU6EXPIpeLnfchx6tYHZ+joLvrX27qSugqV0M//j
 5qfg==
X-Gm-Message-State: APjAAAU1MTkepCK4/XCrHULI735TTXotJQxS7swlsGri4Q0MCp41Kb2n
 zjjmXDgw0w0kGe/U3k8ahRFradER
X-Google-Smtp-Source: APXvYqzbiAH5b+oRTNOz5x8b17Jc4UgLdpcv64hnOIko1sXDpz2Cq5rIkv4pTcOaLkRYSELtYcj6dw==
X-Received: by 2002:a2e:969a:: with SMTP id q26mr10282274lji.227.1566204181241; 
 Mon, 19 Aug 2019 01:43:01 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id n24sm2110060ljj.87.2019.08.19.01.43.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 01:43:00 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 19 Aug 2019 10:40:40 +0200
Message-Id: <20190819084040.9377-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_014304_758949_5850B372 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH RFC] base-files: add /sbin/check_image
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBuZXcgZXhlY3V0
YWJsZSBhbGxvd3MgdmFsaWRhdGluZyBmaXJtd2FyZSBmaWxlLiBJdHMgbWFpbiBhZHZhbnRhZ2UK
aXMgSlNPTiBvdXRwdXQgd2hpY2ggc2hvdWxkIGFsbG93IGFsbCBraW5kIG9mIFVJcyB0byBwcm92
aWRlIGEKbWVhbmluZ2Z1bCBmZWVkYmFjayBvbiBwb3NzaWJsZSB2YWxpZGF0aW9uIGlzc3Vlcy4g
VXNlZCBkZXNpZ24gYWxsb3dzCmNoZWNraW5nIGZ1bmN0aW9ucyB0byBtYXJrIGZpcm13YXJlIGFz
IHRvdGFsbHkgdW5zdXBwb3J0ZWQgKEZPUkNFQUJMRT0wKQphbmQgcHJldmVudCB1c2VyIGZyb20g
Zm9yY2luZyBpdHMgaW5zdGFsbGF0aW9uLgoKVGhpcyBjb21taXQgdXBkYXRlcyAvc2Jpbi9zeXN1
cGdyYWRlIHRvIHVzZSB0aGF0IG5ldyB2YWxpZGF0aW9uIG1ldGhvZApzbyBubyBjb2RlIGlzIGR1
cGxpY2F0ZWQuIEZ1cnRoZXIgcGxhbnMgZm9yIHRoaXMgZmVhdHVyZSBhcmU6CjEpIEFkZCB1YnVz
IG1ldGhvZCBjYWxsaW5nIC9zYmluL2NoZWNrX2ltYWdlCjIpIEludHJvZHVjZSBwbGF0Zm9ybSBj
aGVja3MgZXh0ZW5kaW5nIG91dHB1dCBKU09OCjMpIEV4dGVuZCAic3lzdXBncmFkZSIgdWJ1cyBt
ZXRob2QgdG8gdXNlIGNoZWNrX2ltYWdlIHNvIGl0J3MgcG9zc2libGUKICAgYW5kIHNhZmUgdG8g
dXBncmFkZSB3aXRob3V0IHVzaW5nIC9zYmluL3N5c3VwZ3JhZGUKCk91dHB1dCBleGFtcGxlOgp7
CiAgICAgICAgInRlc3RzIjogewogICAgICAgICAgICAgICAgImZ3dG9vbF9zaWduYXR1cmUiOiB0
cnVlLAogICAgICAgICAgICAgICAgImZ3dG9vbF9kZXZpY2VfbWF0Y2giOiB0cnVlCiAgICAgICAg
fSwKICAgICAgICAidmFsaWQiOiB0cnVlLAogICAgICAgICJmb3JjZWFibGUiOiB0cnVlCn0KClNp
Z25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCkknbSBu
b3Qgc3VyZSBob3cgdG8gaW1wbGVtZW50IHBsYXRmb3JtIGNoZWNrcyB0aGF0IG1heSBzZXQgZXh0
cmEgSlNPTgpvYmplY3QgZmllbGRzLiBJJ2QgZS5nLiBCcm9hZGNvbSB0YXJnZXRzIHRvIGFsbG93
IHNvbWV0aGluZyBsaWtlOgoidGVzdHMiOiB7CgkidHJ4X2NoZWNrc3VtIjogdHJ1ZSwKCSJwbGF0
Zm9ybV9kZXZpY2VfbWF0Y2giOiB0cnVlLAoJImZ3dG9vbF9zaWduYXR1cmUiOiB0cnVlLAoJImZ3
dG9vbF9kZXZpY2VfbWF0Y2giOiB0cnVlCn0KCkFueSBpZGVhcz8KLS0tCiBwYWNrYWdlL2Jhc2Ut
ZmlsZXMvZmlsZXMvc2Jpbi9jaGVja19pbWFnZSB8IDM1ICsrKysrKysrKysrKysrKysrKysrKysr
CiBwYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvc2Jpbi9zeXN1cGdyYWRlICB8IDI0ICsrKysrKysr
KystLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMo
LSkKIGNyZWF0ZSBtb2RlIDEwMDc1NSBwYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvc2Jpbi9jaGVj
a19pbWFnZQoKZGlmZiAtLWdpdCBhL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9zYmluL2NoZWNr
X2ltYWdlIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vY2hlY2tfaW1hZ2UKbmV3IGZp
bGUgbW9kZSAxMDA3NTUKaW5kZXggMDAwMDAwMDAwMC4uODFjM2U1NjYxZgotLS0gL2Rldi9udWxs
CisrKyBiL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9zYmluL2NoZWNrX2ltYWdlCkBAIC0wLDAg
KzEsMzUgQEAKKyMhL2Jpbi9zaAorCisuIC9saWIvZnVuY3Rpb25zLnNoCisuIC9saWIvZnVuY3Rp
b25zL3N5c3RlbS5zaAorLiAvdXNyL3NoYXJlL2xpYnVib3gvanNobi5zaAorCitpbmNsdWRlIC9s
aWIvdXBncmFkZQorCitWQUxJRD0xCitGT1JDRUFCTEU9MQorCitlcnJfdG9fYm9vbCgpIHsKKwlb
ICIkMSIgLW5lIDAgXSAmJiBlY2hvIDAgfHwgZWNobyAxCit9CisKK2Z3dG9vbF9jaGVja19zaWdu
YXR1cmUgIiQxIiA+JjIKK0ZXVE9PTF9TSUdOQVRVUkU9JD8KK1sgIiRGV1RPT0xfU0lHTkFUVVJF
IiAtbmUgMCBdICYmIFZBTElEPTAKKworZnd0b29sX2NoZWNrX2ltYWdlICIkMSIgPiYyCitGV1RP
T0xfREVWSUNFX01BVENIPSQ/CitbICIkRldUT09MX0RFVklDRV9NQVRDSCIgLW5lIDAgXSAmJiBW
QUxJRD0wCisKK3BsYXRmb3JtX2NoZWNrX2ltYWdlICIkMSIgPiYyCitQTEFURk9STV9DSEVDSz0k
PworWyAiJFBMQVRGT1JNX0NIRUNLIiAtbmUgMCBdICYmIFZBTElEPTAKKworanNvbl9pbml0CisJ
anNvbl9hZGRfb2JqZWN0ICJ0ZXN0cyIKKwkJanNvbl9hZGRfYm9vbGVhbiBmd3Rvb2xfc2lnbmF0
dXJlICIkKGVycl90b19ib29sICRGV1RPT0xfU0lHTkFUVVJFKSIKKwkJanNvbl9hZGRfYm9vbGVh
biBmd3Rvb2xfZGV2aWNlX21hdGNoICIkKGVycl90b19ib29sICRGV1RPT0xfREVWSUNFX01BVENI
KSIKKwlqc29uX2Nsb3NlX29iamVjdAorCWpzb25fYWRkX2Jvb2xlYW4gdmFsaWQgIiRWQUxJRCIK
Kwlqc29uX2FkZF9ib29sZWFuIGZvcmNlYWJsZSAiJEZPUkNFQUJMRSIKK2pzb25fZHVtcCAtaQpk
aWZmIC0tZ2l0IGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vc3lzdXBncmFkZSBiL3Bh
Y2thZ2UvYmFzZS1maWxlcy9maWxlcy9zYmluL3N5c3VwZ3JhZGUKaW5kZXggYzI3YzFmYmM0Ny4u
ZTIyODRhNDUwOSAxMDA3NTUKLS0tIGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vc3lz
dXBncmFkZQorKysgYi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvc2Jpbi9zeXN1cGdyYWRlCkBA
IC0yLDYgKzIsNyBAQAogCiAuIC9saWIvZnVuY3Rpb25zLnNoCiAuIC9saWIvZnVuY3Rpb25zL3N5
c3RlbS5zaAorLiAvdXNyL3NoYXJlL2xpYnVib3gvanNobi5zaAogCiAjIGluaXRpYWxpemUgZGVm
YXVsdHMKIGV4cG9ydCBNVERfQVJHUz0iIgpAQCAtMTkxLDkgKzE5Miw2IEBAIGFkZF9vdmVybGF5
ZmlsZXMoKSB7CiAJcmV0dXJuIDAKIH0KIAotIyBob29rcwotc3lzdXBncmFkZV9pbWFnZV9jaGVj
az0iZnd0b29sX2NoZWNrX3NpZ25hdHVyZSBmd3Rvb2xfY2hlY2tfaW1hZ2UgcGxhdGZvcm1fY2hl
Y2tfaW1hZ2UiCi0KIGlmIFsgJFNBVkVfT1ZFUkxBWSA9IDEgXTsgdGhlbgogCVsgISAtZCAvb3Zl
cmxheS91cHBlci9ldGMgXSAmJiB7CiAJCWVjaG8gIkNhbm5vdCBmaW5kICcvb3ZlcmxheS91cHBl
ci9ldGMnLCByZXF1aXJlZCBmb3IgJy1jJyIgPiYyCkBAIC0zMTYsMTcgKzMxNCwyNSBAQCBjYXNl
ICIkSU1BR0UiIGluCiAJCTs7CiBlc2FjCiAKLWZvciBjaGVjayBpbiAkc3lzdXBncmFkZV9pbWFn
ZV9jaGVjazsgZG8KLQkoICRjaGVjayAiJElNQUdFIiApIHx8IHsKK2pzb25fbG9hZCAiJCgvc2Jp
bi9jaGVja19pbWFnZSAiJElNQUdFIikiIHx8IHsKKwllY2hvICJGYWlsZWQgdG8gY2hlY2sgaW1h
Z2UiCisJZXhpdCAxCit9Citqc29uX2dldF92YXIgdmFsaWQgInZhbGlkIgoranNvbl9nZXRfdmFy
IGZvcmNlYWJsZSAiZm9yY2VhYmxlIgorWyAiJHZhbGlkIiAtZXEgMCBdICYmIHsKKwlbICIkZm9y
Y2VhYmxlIiAtZXEgMSBdICYmIHsKIAkJaWYgWyAkRk9SQ0UgLWVxIDEgXTsgdGhlbgotCQkJZWNo
byAiSW1hZ2UgY2hlY2sgJyRjaGVjaycgZmFpbGVkIGJ1dCAtLWZvcmNlIGdpdmVuIC0gd2lsbCB1
cGRhdGUgYW55d2F5ISIgPiYyCi0JCQlicmVhaworCQkJZWNobyAiSW1hZ2UgY2hlY2sgZmFpbGVk
IGJ1dCAtLWZvcmNlIGdpdmVuIC0gd2lsbCB1cGRhdGUgYW55d2F5ISIgPiYyCiAJCWVsc2UKLQkJ
CWVjaG8gIkltYWdlIGNoZWNrICckY2hlY2snIGZhaWxlZC4iID4mMgorCQkJZWNobyAiSW1hZ2Ug
Y2hlY2sgZmFpbGVkLiBVc2UgLS1mb3JjZSBpZiBuZWVkZWQuIiA+JjIKIAkJCWV4aXQgMQogCQlm
aQorCX0gfHwgeworCQllY2hvICJJbWFnZSBjaGVjayBmYWlsZWQuIFRoaXMgZmlybXdhcmUgY2Fu
J3QgYmUgaW5zdGFsbGVkLiIgPiYyCisJCWV4aXQgMQogCX0KLWRvbmUKK30KIAogaWYgWyAtbiAi
JENPTkZfSU1BR0UiIF07IHRoZW4KIAljYXNlICIkKGdldF9tYWdpY193b3JkICRDT05GX0lNQUdF
IGNhdCkiIGluCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
